uint64_t MIL::Conversion::CopyTensorValue@<X0>(MIL::Conversion *this@<X0>, MIL::MILContext *a2@<X1>, const MIL::IRTensorValueType *a3@<X2>, void *a4@<X8>)
{
  if (!(*(*a3 + 80))(a3))
  {
    v11 = (*(*a2 + 88))(a2);
    if (v11 > 18)
    {
      if (v11 <= 20)
      {
        if (v11 != 19)
        {
          Data = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
          v16 = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
          v39 = 0;
          v40 = 0;
          v38 = 0;
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v38, Data, v16 + v17, v16 + v17 - Data);
          MIL::IRTensorValueType::MakeUInt4Value();
        }

        v27 = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
        v28 = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v38, v27, v28 + v29, v28 + v29 - v27);
        MIL::IRTensorValueType::MakeUInt2Value();
      }

      if (v11 == 23)
      {
        v33 = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
        v34 = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v38, v33, v34 + v35, v34 + v35 - v33);
        MIL::IRTensorValueType::MakeUInt6Value();
      }

      if (v11 == 21)
      {
        v21 = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
        v22 = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v38, v21, v22 + v23, v22 + v23 - v21);
        MIL::IRTensorValueType::MakeUInt1Value();
      }
    }

    else if (v11 > 8)
    {
      if (v11 == 9)
      {
        v30 = MIL::IRTensorValue::GetDataView<signed char>(a3);
        v31 = MIL::IRTensorValue::GetDataView<signed char>(a3);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v38, v30, v31 + v32, v31 + v32 - v30);
        MIL::IRTensorValueType::MakeInt8Value();
      }

      if (v11 == 14)
      {
        v18 = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
        v19 = MIL::IRTensorValue::GetDataView<unsigned char>(a3);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v38, v18, v19 + v20, v19 + v20 - v18);
        MIL::IRTensorValueType::MakeUInt8Value();
      }
    }

    else
    {
      if (v11 == 4)
      {
        v24 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(a3);
        v25 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(a3);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v38, v24, v25 + 2 * v26, (v25 + 2 * v26 - v24) >> 1);
        MIL::IRTensorValueType::MakeFloat16Value();
      }

      if (v11 == 5)
      {
        v12 = MIL::IRTensorValue::GetDataView<float>(a3);
        v13 = MIL::IRTensorValue::GetDataView<float>(a3);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v38, v12, v13 + 4 * v14, (v13 + 4 * v14 - v12) >> 2);
        MIL::IRTensorValueType::MakeFloat32Value();
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported type in CopyTensorValue.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v9 = (*(*a3 + 88))(a3);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v38, v9);
  MIL::IRTensorValueType::MakeValueFromFileProperties(a2, this, &v38);
  *a4 = v37;
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v38);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

void MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  *(a2 + 24) = 0;
  operator new();
}

void sub_217F7F9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  *(a2 + 24) = 0;
  operator new();
}

void sub_217F7FABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278235F70, MEMORY[0x277D825F0]);
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
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(a1, i + 2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>();
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

void sub_217F803C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(v2 + 16);
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

std::string *std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

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

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  return this;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F80A84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F80B60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F80BD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::Fp16>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F80CC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829DCEC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829DCEC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829DCEC0;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, uint64_t **a2, void *a3)
{
  v36[2] = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(&v26, a3);
  memset(v27, 0, sizeof(v27));
  Operator = MIL::Matching::MatchView::GetOperator(&v26);
  for (i = *((*(*Operator + 64))(Operator) + 16); i; i = *i)
  {
    v7 = (i + 2);
    v8 = *(i + 39);
    if (v8 < 0)
    {
      if (i[3] != 7)
      {
        goto LABEL_11;
      }

      v9 = *v7;
    }

    else
    {
      v9 = (i + 2);
      if (v8 != 7)
      {
        goto LABEL_11;
      }
    }

    v10 = *v9;
    v11 = *(v9 + 3);
    if (v10 != 1768189545 || v11 != 1936024425)
    {
LABEL_11:
      if (MIL::Matching::MatchView::GetArgumentCount(&v26, i + 2))
      {
        v13 = (i + 2);
        if (*(i + 39) < 0)
        {
          v13 = *v7;
        }

        MIL::Matching::MatchView::GetArgument(&v26, (i + 2), v33);
        p_p = v13;
        MIL::Matching::ArgumentView::ArgumentView(v29, v33);
        __p = p_p;
        MIL::Transform::ArgumentDescription::ArgumentDescription(v31, v29);
        std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::push_back[abi:ne200100](v27, &__p);
        MIL::Transform::ArgumentDescription::~ArgumentDescription(v31);
        MIL::Matching::ArgumentView::~ArgumentView(v29);
        MIL::Matching::ArgumentView::~ArgumentView(v33);
      }
    }
  }

  MIL::Transform::ArgumentDescription::ArgumentDescription(&p_p, 1);
  __p = "validate_indices";
  MIL::Transform::ArgumentDescription::ArgumentDescription(v31, &p_p);
  std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::push_back[abi:ne200100](v27, &__p);
  MIL::Transform::ArgumentDescription::~ArgumentDescription(v31);
  MIL::Transform::ArgumentDescription::~ArgumentDescription(&p_p);
  std::string::basic_string[abi:ne200100]<0>(&__p, "indices");
  MIL::Matching::MatchView::GetArgument(&v26, &__p, v36);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  v14 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v16 = *(a1 + 16);
    if (v16 == 6)
    {
      v19 = *(*v14 + 2);
      v20 = **v14 == 1752457575;
      v21 = 29285;
      goto LABEL_36;
    }

    if (v16 != 17)
    {
LABEL_40:
      std::string::basic_string[abi:ne200100]<0>(&__p, "data");
      MIL::Matching::MatchView::GetArgument(&v26, &__p, v35);
LABEL_41:
      if (v32 < 0)
      {
        operator delete(__p);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
      MIL::Matching::MatchView::GetArgument(&v26, &__p, v34);
      if (v32 < 0)
      {
        operator delete(__p);
      }

      Value = MIL::Matching::ArgumentView::TryGetValue(v34);
      v25 = (*(*Value + 40))(Value);
      MIL::IRValue::GetScalar<int>(v25);
      __p = "x";
      MIL::Transform::ArgumentDescription::ArgumentDescription(v31, v35);
      p_p = &__p;
      v29[0].n128_u64[0] = 1;
      MIL::Transform::MatchContext::AddOperation(a2, "ios17::shape", &p_p);
    }

    v15 = *v14;
  }

  else
  {
    if (*(a1 + 31) == 6)
    {
      if (*v14 != 1752457575 || *(a1 + 12) != 29285)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }

    v15 = (a1 + 8);
    if (*(a1 + 31) != 17)
    {
      goto LABEL_40;
    }
  }

  v17 = *v15;
  v18 = v15[1];
  v19 = *(v15 + 16);
  v20 = v17 == 0x615F726568746167 && v18 == 0x6978615F676E6F6CLL;
  v21 = 115;
LABEL_36:
  if (!v20 || v19 != v21)
  {
    goto LABEL_40;
  }

LABEL_34:
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  MIL::Matching::MatchView::GetArgument(&v26, &__p, v35);
  goto LABEL_41;
}

void sub_217F816AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, __int16 *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  MIL::Matching::ArgumentView::~ArgumentView((v45 - 104));
  a17 = &a12;
  std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__destroy_vector::operator()[abi:ne200100](&a17);
  MIL::Matching::MatchView::~MatchView(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::push_back[abi:ne200100](uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__emplace_back_slow_path<std::pair<char const*,MIL::Transform::ArgumentDescription>>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    MIL::Transform::ArgumentDescription::ArgumentDescription(v3 + 1, a2 + 1);
    result = (v3 + 5);
    a1[1] = (v3 + 5);
  }

  a1[1] = result;
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

void anonymous namespace::GetConstantIntTensor(uint64_t a1, const void **a2, MIL::IRConstantDimension *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = v9;
  std::string::basic_string[abi:ne200100](v9, v5 + 7);
  if (v10 < 0)
  {
    v6 = v9[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, "::const");
  v8[9] = 0;
  v8[10] = 0;
  v11 = 1;
  memset(v8, 0, 24);
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v8, &v11, v12, 1uLL);
  MIL::IRTensorValueType::Make(a3, 11, v8);
}

void sub_217F81D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a18);
  std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(v30 - 128);
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__emplace_back_slow_path<std::pair<char const*,MIL::Transform::ArgumentDescription>>(uint64_t *a1, void *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char const*,MIL::Transform::ArgumentDescription>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  v15 = 40 * v2;
  *v14 = *a2;
  MIL::Transform::ArgumentDescription::ArgumentDescription(40 * v2 + 8, a2 + 1);
  *&v15 = v15 + 40;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<char const*,MIL::Transform::ArgumentDescription>>,std::pair<char const*,MIL::Transform::ArgumentDescription>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::pair<char const*,MIL::Transform::ArgumentDescription>>::~__split_buffer(&v13);
  return v12;
}

void sub_217F81F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<char const*,MIL::Transform::ArgumentDescription>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char const*,MIL::Transform::ArgumentDescription>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<char const*,MIL::Transform::ArgumentDescription>>,std::pair<char const*,MIL::Transform::ArgumentDescription>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      *(a4 + v7) = *(v6 + v7);
      MIL::Transform::ArgumentDescription::ArgumentDescription((a4 + v7 + 8), (v6 + v7 + 8));
      v7 += 40;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      MIL::Transform::ArgumentDescription::~ArgumentDescription((v6 + 8));
      v6 += 40;
    }
  }
}

void sub_217F82028(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      MIL::Transform::ArgumentDescription::~ArgumentDescription(v5);
      v5 = (v6 - 40);
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<char const*,MIL::Transform::ArgumentDescription>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    MIL::Transform::ArgumentDescription::~ArgumentDescription((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
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

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F82188(_Unwind_Exception *exception_object)
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

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F82280(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<char const(&)[4],std::unique_ptr<MIL::IRTensorValue const>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v5 + 3, a3);
  return a1;
}

void sub_217F822D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<MIL::IRTensorValue const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IRTensorValue const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRTensorValue const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 40 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(a1, a2);
      a2 += 5;
      v5 -= 40;
    }

    while (v5);
  }

  return a1;
}

void std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        MIL::Transform::ArgumentDescription::~ArgumentDescription((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829DCFB0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829DCFB0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829DCFB0;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, MIL::Transform::MatchContext *a2, void *a3)
{
  v29[2] = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(&v20, a3);
  memset(v21, 0, sizeof(v21));
  Operator = MIL::Matching::MatchView::GetOperator(&v20);
  for (i = *((*(*Operator + 64))(Operator) + 16); i; i = *i)
  {
    v7 = (i + 2);
    v8 = *(i + 39);
    if (v8 < 0)
    {
      if (i[3] != 7)
      {
        goto LABEL_11;
      }

      v9 = *v7;
    }

    else
    {
      v9 = (i + 2);
      if (v8 != 7)
      {
        goto LABEL_11;
      }
    }

    v10 = *v9;
    v11 = *(v9 + 3);
    if (v10 != 1768189545 || v11 != 1936024425)
    {
LABEL_11:
      if (MIL::Matching::MatchView::GetArgumentCount(&v20, i + 2))
      {
        v13 = (i + 2);
        if (*(i + 39) < 0)
        {
          v13 = *v7;
        }

        MIL::Matching::MatchView::GetArgument(&v20, (i + 2), v27);
        v22 = v13;
        MIL::Matching::ArgumentView::ArgumentView(v23, v27);
        __p = v22;
        MIL::Transform::ArgumentDescription::ArgumentDescription(v25, v23);
        std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::push_back[abi:ne200100](v21, &__p);
        MIL::Transform::ArgumentDescription::~ArgumentDescription(v25);
        MIL::Matching::ArgumentView::~ArgumentView(v23);
        MIL::Matching::ArgumentView::~ArgumentView(v27);
      }
    }
  }

  MIL::Transform::ArgumentDescription::ArgumentDescription(&v22, 1);
  __p = "validate_indices";
  MIL::Transform::ArgumentDescription::ArgumentDescription(v25, &v22);
  std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::push_back[abi:ne200100](v21, &__p);
  MIL::Transform::ArgumentDescription::~ArgumentDescription(v25);
  MIL::Transform::ArgumentDescription::~ArgumentDescription(&v22);
  std::string::basic_string[abi:ne200100]<0>(&__p, "indices");
  MIL::Matching::MatchView::GetArgument(&v20, &__p, v29);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v14 = *(a1 + 31);
  if (v14 < 0)
  {
    if (*(a1 + 16) != 9)
    {
      goto LABEL_27;
    }

    v15 = *(a1 + 8);
  }

  else
  {
    v15 = (a1 + 8);
    if (v14 != 9)
    {
      goto LABEL_27;
    }
  }

  v16 = *v15;
  v17 = *(v15 + 8);
  if (v16 == 0x6E5F726568746167 && v17 == 100)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "x");
    MIL::Matching::MatchView::GetArgument(&v20, &__p, v28);
LABEL_28:
    if (v26 < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ios17");
    MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
  }

LABEL_27:
  std::string::basic_string[abi:ne200100]<0>(&__p, "data");
  MIL::Matching::MatchView::GetArgument(&v20, &__p, v28);
  goto LABEL_28;
}

void sub_217F83048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  MIL::Matching::ArgumentView::~ArgumentView((v61 - 248));
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  MIL::Transform::NewOperationOutput::~NewOperationOutput((v61 - 184));
  MIL::Transform::NewOperationOutput::~NewOperationOutput((v61 - 152));
  MIL::Matching::ArgumentView::~ArgumentView((v61 - 120));
  MIL::Matching::ArgumentView::~ArgumentView((v61 - 104));
  a31 = &a16;
  std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__destroy_vector::operator()[abi:ne200100](&a31);
  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0,std::allocator<MIL::Conversion::MakeIos16ToIos17GatherScatterNdTransform(std::string const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MIL::Conversion::MakeIos17ToIos18LutToDenseTransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos17ToIos18LutToDenseTransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, MIL::Transform::MatchContext *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(v14, a3);
  memset(&v14[10], 0, 24);
  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  MIL::Matching::MatchView::GetAttribute(v14, __p, &v17);
  MIL::IRValue::AsTensor(v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lut");
  MIL::Matching::MatchView::GetAttribute(v14, __p, &v17);
  v4 = MIL::IRValue::AsTensor(v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  MIL::Matching::MatchView::GetAttribute(v14, __p, &v17);
  v5 = MIL::IRValue::AsTensor(v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = (*(*v4 + 32))(v4);
  v7 = (*(*v6 + 16))(v6);
  if (v7 <= 15)
  {
    if (v7 == 2)
    {
      v8 = 21;
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_25;
      }

      v8 = 19;
    }
  }

  else
  {
    switch(v7)
    {
      case 16:
        v8 = 20;
        break;
      case 64:
        v8 = 23;
        break;
      case 256:
        v8 = 14;
        break;
      default:
LABEL_25:
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Invalid lut size.");
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
  Data = MIL::IRTensorValue::GetDataView<unsigned int>(v5);
  v11 = MIL::IRTensorValue::GetDataView<unsigned int>(v5);
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__p, Data, v11 + 4 * v12, (v11 + 4 * v12 - Data) >> 2);
  MIL::IRTensorValueType::Make(MILContext, v8, __p);
}

void sub_217F83AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  a22 = &a19;
  std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__destroy_vector::operator()[abi:ne200100](&a22);
  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Conversion::MakeIos17ToIos18LutToDenseTransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos17ToIos18LutToDenseTransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F83E08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MIL::IRValue const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IRValue const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRValue const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[8],std::shared_ptr<MIL::IRValue const> &,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  v4 = a1 + 1;
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Transform::ArgumentDescription::ArgumentDescription(v4, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_217F83F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[4],std::shared_ptr<MIL::IRValue const> &,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  v4 = a1 + 1;
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Transform::ArgumentDescription::ArgumentDescription(v4, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_217F83FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<MIL::Conversion::MakeIos17ToIos18SparseToDenseTransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos17ToIos18SparseToDenseTransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, MIL::Transform::MatchContext *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(v9, a3);
  memset(&v9[10], 0, 24);
  std::string::basic_string[abi:ne200100]<0>(__p, "mask");
  MIL::Matching::MatchView::GetAttribute(v9, __p, &v12);
  MIL::IRValue::AsTensor(v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  MIL::Matching::MatchView::GetAttribute(v9, __p, &v12);
  v4 = MIL::IRValue::AsTensor(v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
  Data = MIL::IRTensorValue::GetDataView<unsigned int>(v4);
  v7 = MIL::IRTensorValue::GetDataView<unsigned int>(v4);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__p, Data, v7 + 4 * v8, (v7 + 4 * v8 - Data) >> 2);
  MIL::IRTensorValueType::Make(MILContext, 21, __p);
}

void sub_217F842E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  (*(*v30 + 8))(v30);
  a25 = &a22;
  std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__destroy_vector::operator()[abi:ne200100](&a25);
  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Conversion::MakeIos17ToIos18SparseToDenseTransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos17ToIos18SparseToDenseTransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[5],std::shared_ptr<MIL::IRValue const> &,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  v4 = a1 + 1;
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Transform::ArgumentDescription::ArgumentDescription(v4, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_217F844D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[13],std::shared_ptr<MIL::IRValue const>,0>(void *a1, uint64_t a2, __int128 *a3)
{
  *a1 = a2;
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  MIL::Transform::ArgumentDescription::ArgumentDescription(a1 + 1, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  return a1;
}

void sub_217F8453C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<MIL::Conversion::MakeIos17ToIos18ConstCastTransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos17ToIos18ConstCastTransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, uint64_t **a2, void *a3)
{
  v11[9] = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(&v4, a3);
  std::string::basic_string[abi:ne200100]<0>(v7, "source_val");
  MIL::Matching::MatchView::GetAttribute(&v4, v7, &v8);
  std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[11],std::shared_ptr<MIL::IRValue const>,0>(v10, "source_val", &v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "output_dtype");
  MIL::Matching::MatchView::GetAttribute(&v4, __p, &v6);
  std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[13],std::shared_ptr<MIL::IRValue const>,0>(v11, "output_dtype", &v6);
  v9[0] = v10;
  v9[1] = 2;
  MIL::Transform::MatchContext::AddOperation(a2, "ios18::constexpr_cast", v9);
}

void sub_217F84740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, char a28)
{
  v30 = (v28 + 48);
  v31 = -80;
  do
  {
    MIL::Transform::ArgumentDescription::~ArgumentDescription(v30);
    v30 = (v32 - 40);
    v31 += 40;
  }

  while (v31);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Conversion::MakeIos17ToIos18ConstCastTransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos17ToIos18ConstCastTransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[11],std::shared_ptr<MIL::IRValue const>,0>(void *a1, uint64_t a2, __int128 *a3)
{
  *a1 = a2;
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  MIL::Transform::ArgumentDescription::ArgumentDescription(a1 + 1, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  return a1;
}

void sub_217F848C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<MIL::Conversion::MakeIos17ToIos18ShiftScaleTransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos17ToIos18ShiftScaleTransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, MIL::Transform::MatchContext *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(&v18, a3);
  memset(&v19[3], 0, 24);
  std::string::basic_string[abi:ne200100]<0>(__p, "zero_point");
  MIL::Matching::MatchView::GetAttribute(&v18, __p, &v22);
  MIL::IRValue::AsTensor(v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  MIL::Matching::MatchView::GetAttribute(&v18, __p, &v22);
  v4 = MIL::IRValue::AsTensor(v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  MIL::Matching::MatchView::GetAttribute(&v18, __p, &v22);
  v5 = MIL::IRValue::AsTensor(v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "quantized_data");
  MIL::Matching::MatchView::GetAttribute(&v18, __p, &v22);
  v6 = MIL::IRValue::AsTensor(v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MIL::IRTensorValue::GetDataView<int>(v5);
  v8 = (*(*v6 + 32))(v6);
  v9 = MIL::IRTensorValueType::Rank(v8);
  memset(v19, 0, 24);
  if (v9 >= 1)
  {
    v10 = v7;
    do
    {
      if (v10 || (v11 = (*(*v4 + 32))(v4), (*(*v11 + 16))(v11) < 2))
      {
        __p[0] = 1;
        std::vector<unsigned long long>::push_back[abi:ne200100](v19, __p);
      }

      else
      {
        v12 = (*(*v6 + 32))(v6);
        v13 = (*(*v12 + 96))(v12);
        v14 = (*(**(*v13 + 8 * v7) + 16))(*(*v13 + 8 * v7));
        __p[0] = (*(*v14 + 48))(v14);
        std::vector<unsigned long long>::push_back[abi:ne200100](v19, __p);
      }

      --v10;
      --v9;
    }

    while (v9);
  }

  MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
  v16 = (*(*v4 + 32))(v4);
  v17 = (*(*v16 + 88))(v16);
  MIL::IRTensorValueType::Make(MILContext, v17, v19);
}

void sub_217F84F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  (*(*v35 + 8))(v35);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  a30 = &a27;
  std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__destroy_vector::operator()[abi:ne200100](&a30);
  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Conversion::MakeIos17ToIos18ShiftScaleTransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos17ToIos18ShiftScaleTransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[5],std::shared_ptr<MIL::IRValue const>,0>(void *a1, uint64_t a2, __int128 *a3)
{
  *a1 = a2;
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  MIL::Transform::ArgumentDescription::ArgumentDescription(a1 + 1, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  return a1;
}

void sub_217F85190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[6],std::shared_ptr<MIL::IRValue const> &,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  v4 = a1 + 1;
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Transform::ArgumentDescription::ArgumentDescription(v4, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_217F85204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const(&)[7],std::shared_ptr<MIL::IRValue const> &,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  v4 = a1 + 1;
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Transform::ArgumentDescription::ArgumentDescription(v4, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_217F85278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<MIL::Conversion::MakeIos18DecompositionSDPATransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos18DecompositionSDPATransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, uint64_t **a2, void *a3)
{
  v17[16] = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(&v5, a3);
  Attributes = MIL::Matching::MatchView::GetAttributes(&v5);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v6, Attributes);
  std::string::basic_string[abi:ne200100]<0>(&__p, "query");
  MIL::Matching::MatchView::GetArgument(&v5, &__p, v17);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "key");
  MIL::Matching::MatchView::GetArgument(&v5, &__p, v16);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "value");
  MIL::Matching::MatchView::GetArgument(&v5, &__p, &v15);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  __p = "x";
  MIL::Transform::ArgumentDescription::ArgumentDescription(&v9, v17);
  v11 = "y";
  MIL::Transform::ArgumentDescription::ArgumentDescription(v12, v16);
  v12[4] = "transpose_x";
  MIL::Transform::ArgumentDescription::ArgumentDescription(v13, 0);
  v13[4] = "transpose_y";
  MIL::Transform::ArgumentDescription::ArgumentDescription(&v14, 1);
  v7[0] = &__p;
  v7[1] = 4;
  MIL::Transform::MatchContext::AddOperation(a2, "ios18::matmul", v7);
}

void sub_217F863D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MIL::Transform::NewOperationOutput::~NewOperationOutput(&a35);
  v71 = &a55;
  v72 = -80;
  do
  {
    MIL::Transform::ArgumentDescription::~ArgumentDescription(v71);
    v71 = (v73 - 40);
    v72 += 40;
  }

  while (v72);
  MIL::Transform::NewOperationOutput::~NewOperationOutput((v69 - 160));
  MIL::Matching::ArgumentView::~ArgumentView((v69 - 208));
  MIL::Transform::NewOperationOutput::~NewOperationOutput((v69 - 128));
  MIL::Transform::NewOperationOutput::~NewOperationOutput(&a45);
  MIL::Transform::NewOperationOutput::~NewOperationOutput(&a69);
  MIL::Matching::ArgumentView::~ArgumentView((v69 - 256));
  MIL::Matching::ArgumentView::~ArgumentView((v69 - 240));
  MIL::Matching::ArgumentView::~ArgumentView((v69 - 224));
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a14);
  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Conversion::MakeIos18DecompositionSDPATransform(void)::$_0,std::allocator<MIL::Conversion::MakeIos18DecompositionSDPATransform(void)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(a1, v5 + 2);
      v5 = *v5;
    }

    while (v5 != a3);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>>();
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

void sub_217F86DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<MIL::Bf16 const*,MIL::Bf16 const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F86F20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Passes::FlattenBlockNamespace::FlattenBlockNamespace(MIL::Passes::FlattenBlockNamespace *this)
{
  result = MIL::Pass::Pass(this);
  *result = &unk_2829DD310;
  return result;
}

{
  result = MIL::Pass::Pass(this);
  *result = &unk_2829DD310;
  return result;
}

void MIL::Passes::FlattenBlockNamespace::~FlattenBlockNamespace(MIL::Passes::FlattenBlockNamespace *this)
{
  MIL::Pass::~Pass(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Passes::FlattenBlockNamespace::Run(MIL::Passes::FlattenBlockNamespace *this, const MIL::IRBlock *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  v2 = v5;
  operator new();
}

void sub_217F87164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__function::__value_func<std::unique_ptr<MIL::IRBlock> ()(MIL::IRBlock const&)>::~__value_func[abi:ne200100](v3 - 72);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

uint64_t **anonymous namespace::FindRedefinedValues(void *a1, void *a2, void *a3)
{
  for (i = *((*(a1[8] + 32))() + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2, i + 2);
    if ((v7 & 1) == 0)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, i + 2);
    }
  }

  result = (*(*a1 + 56))(a1);
  v9 = **result;
  v10 = (*result)[1];
  while (v9 != v10)
  {
    result = (*(**v9 + 208))();
    v11 = **result;
    v12 = (*result)[1];
    while (v11 != v12)
    {
      v13 = *v11;
      v11 += 2;
    }

    v9 += 16;
  }

  return result;
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

void sub_217F874EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217F875AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

__n128 std::__function::__func<MIL::Passes::FlattenBlockNamespace::Run(MIL::IRBlock const&)::$_0,std::allocator<MIL::Passes::FlattenBlockNamespace::Run(MIL::IRBlock const&)::$_0>,std::unique_ptr<MIL::IRBlock> ()(MIL::IRBlock const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DD360;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MIL::Passes::FlattenBlockNamespace::Run(MIL::IRBlock const&)::$_0,std::allocator<MIL::Passes::FlattenBlockNamespace::Run(MIL::IRBlock const&)::$_0>,std::unique_ptr<MIL::IRBlock> ()(MIL::IRBlock const&)>::operator()(void *a1, uint64_t a2)
{
  v77[2] = *MEMORY[0x277D85DE8];
  __src = 0;
  v73 = 0;
  v74 = 0;
  v3 = (*(*a2 + 56))(a2);
  v4 = **v3;
  for (i = (*v3)[1]; v4 != i; v4 += 2)
  {
    v5 = *v4;
    memset(&v76, 0, 24);
    v6 = (*(*v5 + 208))(v5);
    v7 = **v6;
    v8 = (*v6)[1];
    while (v7 != v8)
    {
      v9 = *(a1[1] + 24);
      if (!v9)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v9 + 48))(&v75);
      if (v75.__r_.__value_.__r.__words[0])
      {
        operator new();
      }

      v75.__r_.__value_.__r.__words[0] = 0;
      begin = v76.__begin_;
      if (v76.__begin_ >= v76.__end_)
      {
        first = v76.__first_;
        v12 = v76.__begin_ - v76.__first_;
        v13 = (v76.__begin_ - v76.__first_) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v76.__end_ - v76.__first_;
        if ((v76.__end_ - v76.__first_) >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
        v17 = 0xFFFFFFFFFFFFFFFLL;
        if (!v16)
        {
          v17 = v14;
        }

        *(&v66 + 1) = &v76;
        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(&v76, v17);
        }

        v18 = (v76.__begin_ - v76.__first_) >> 4;
        v19 = (16 * v13);
        *v19 = 0;
        v19[1] = 0;
        v20 = (16 * v13 - 16 * v18);
        memcpy(v20, first, v12);
        v21 = v76.__first_;
        end = v76.__end_;
        v76.__first_ = v20;
        *&v76.__begin_ = (16 * v13 + 16);
        v65.__r_.__value_.__r.__words[2] = v21;
        *&v66 = end;
        v65.__r_.__value_.__r.__words[0] = v21;
        v65.__r_.__value_.__l.__size_ = v21;
        std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&v65.__r_.__value_.__l.__data_);
        v23 = v75.__r_.__value_.__r.__words[0];
        v76.__begin_ = (16 * v13 + 16);
        v75.__r_.__value_.__r.__words[0] = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }

      else
      {
        v76.__begin_->first.__r_.__value_.__l.__data_ = 0;
        begin->first.__r_.__value_.__l.__size_ = 0;
        v76.__begin_ = &begin->first.__r_.__value_.__r.__words[2];
      }

      v7 += 16;
    }

    (*(*v5 + 40))(&v75, v5, &v76);
    if (v75.__r_.__value_.__r.__words[0])
    {
      operator new();
    }

    v75.__r_.__value_.__r.__words[0] = 0;
    v24 = v73;
    if (v73 >= v74)
    {
      v25 = __src;
      v26 = v73 - __src;
      v27 = (v73 - __src) >> 4;
      v28 = v27 + 1;
      if ((v27 + 1) >> 60)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v29 = v74 - __src;
      if ((v74 - __src) >> 3 > v28)
      {
        v28 = v29 >> 3;
      }

      v16 = v29 >= 0x7FFFFFFFFFFFFFF0;
      v30 = 0xFFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v30 = v28;
      }

      *(&v66 + 1) = &__src;
      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(&__src, v30);
      }

      v31 = (16 * v27);
      *v31 = 0;
      v31[1] = 0;
      memcpy(0, v25, v26);
      v32 = __src;
      v33 = v74;
      __src = 0;
      v73 = (16 * v27 + 16);
      v74 = 0;
      v65.__r_.__value_.__r.__words[2] = v32;
      *&v66 = v33;
      v65.__r_.__value_.__r.__words[0] = v32;
      v65.__r_.__value_.__l.__size_ = v32;
      std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&v65.__r_.__value_.__l.__data_);
      v34 = v75.__r_.__value_.__r.__words[0];
      v73 = (16 * v27 + 16);
      v75.__r_.__value_.__r.__words[0] = 0;
      if (v34)
      {
        (*(*v34 + 8))(v34);
      }
    }

    else
    {
      *v73 = 0;
      *(v24 + 1) = 0;
      v73 = v24 + 16;
    }

    v65.__r_.__value_.__r.__words[0] = &v76;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v65);
  }

  (*(*a2 + 112))(&v71);
  v69 = 0;
  v70 = 0;
  v68 = 0;
  for (j = *(a1[2] + 16); j; j = *j)
  {
    v36 = (*(v71[8] + 32))();
    if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v36, j + 2))
    {
      v37 = a1[3];
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(j + 2, 95, &v76);
      std::to_string(&v75, 0);
      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v75;
      }

      else
      {
        v38 = v75.__r_.__value_.__r.__words[0];
      }

      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v75.__r_.__value_.__l.__size_;
      }

      v40 = std::string::append(&v76, v38, size);
      v41 = *&v40->__r_.__value_.__l.__data_;
      __p[2] = v40->__r_.__value_.__r.__words[2];
      *__p = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__end_) < 0)
      {
        operator delete(v76.__first_);
      }

      if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*v37, __p))
      {
        v42 = 1;
        do
        {
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(j + 2, 95, &v76);
          std::to_string(&v75, v42);
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v75;
          }

          else
          {
            v43 = v75.__r_.__value_.__r.__words[0];
          }

          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = v75.__r_.__value_.__l.__size_;
          }

          v45 = std::string::append(&v76, v43, v44);
          v46 = v45->__r_.__value_.__r.__words[0];
          v77[0] = v45->__r_.__value_.__l.__size_;
          *(v77 + 7) = *(&v45->__r_.__value_.__r.__words[1] + 7);
          v47 = HIBYTE(v45->__r_.__value_.__r.__words[2]);
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          __p[0] = v46;
          __p[1] = v77[0];
          *(&__p[1] + 7) = *(v77 + 7);
          HIBYTE(__p[2]) = v47;
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v76.__end_) < 0)
          {
            operator delete(v76.__first_);
          }

          ++v42;
        }

        while (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*v37, __p));
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(*v37, __p);
      if (*(j + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v65, j[2], j[3]);
      }

      else
      {
        v65 = *(j + 2);
      }

      v66 = *__p;
      v67 = __p[2];
      memset(__p, 0, 24);
      v48 = v69;
      if (v69 >= v70)
      {
        v51 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 4);
        v52 = v51 + 1;
        if (v51 + 1 > 0x555555555555555)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v70 - v68) >> 4) > v52)
        {
          v52 = 0x5555555555555556 * ((v70 - v68) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v70 - v68) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v53 = 0x555555555555555;
        }

        else
        {
          v53 = v52;
        }

        v76.__end_cap_.__value_ = &v68;
        if (v53)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(&v68, v53);
        }

        v54 = 16 * ((v69 - v68) >> 4);
        v55 = *&v65.__r_.__value_.__l.__data_;
        *(v54 + 16) = *(&v65.__r_.__value_.__l + 2);
        *v54 = v55;
        memset(&v65, 0, sizeof(v65));
        v56 = v66;
        *(v54 + 40) = v67;
        *(v54 + 24) = v56;
        v67 = 0;
        v66 = 0uLL;
        v57 = 48 * v51 + 48;
        v58 = (48 * v51 - (v69 - v68));
        memcpy((v54 - (v69 - v68)), v68, v69 - v68);
        v59 = v68;
        v60 = v70;
        v68 = v58;
        v69 = v57;
        v70 = 0;
        v76.__end_ = v59;
        v76.__end_cap_.__value_ = v60;
        v76.__first_ = v59;
        v76.__begin_ = v59;
        std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v76);
        v69 = v57;
        if (SHIBYTE(v67) < 0)
        {
          operator delete(v66);
        }
      }

      else
      {
        v49 = *&v65.__r_.__value_.__l.__data_;
        *(v69 + 16) = *(&v65.__r_.__value_.__l + 2);
        *v48 = v49;
        memset(&v65, 0, sizeof(v65));
        v50 = v67;
        *(v48 + 24) = v66;
        *(v48 + 40) = v50;
        v67 = 0;
        v66 = 0uLL;
        v69 = v48 + 48;
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  (*(*v71 + 120))(v71, &v68);
  v65.__r_.__value_.__r.__words[0] = &v68;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v65);
  v61 = v71;
  v71 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v65.__r_.__value_.__r.__words[0] = &__src;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v65);
}

void sub_217F87FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  a20 = &a26;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a20);
  v39 = a29;
  a29 = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  a33 = &a30;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Passes::FlattenBlockNamespace::Run(MIL::IRBlock const&)::$_0,std::allocator<MIL::Passes::FlattenBlockNamespace::Run(MIL::IRBlock const&)::$_0>,std::unique_ptr<MIL::IRBlock> ()(MIL::IRBlock const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__shared_ptr_pointer<MIL::IRBlock  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IRBlock  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRBlock  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::IROperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IROperation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IROperation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<MIL::IRBlock>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<MIL::IRBlock>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(void *a1, const void **a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](this);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
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

uint64_t std::__function::__value_func<std::unique_ptr<MIL::IRBlock> ()(MIL::IRBlock const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *MIL::Pass::Pass(void *this)
{
  *this = &unk_2829DD4B0;
  return this;
}

{
  *this = &unk_2829DD4B0;
  return this;
}

uint64_t MIL::Pass::Run(MIL::Pass *this, const MIL::IRProgram *a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  for (i = *((*(*a2 + 72))(a2) + 16); i; i = *i)
  {
    v5 = (*(*i[5] + 48))(i[5]);
    (*(*this + 24))(&v11, this, v5);
    (*(*i[5] + 192))(&v10);
    v14 = (i + 2);
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v12, i + 2);
    std::shared_ptr<MIL::IRFunction>::operator=[abi:ne200100]<MIL::IRFunction,std::default_delete<MIL::IRFunction>,0>(v6 + 5, &v10);
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  (*(*a2 + 88))(a2, v12);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v12);
}

void sub_217F88AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::IRFunction>::operator=[abi:ne200100]<MIL::IRFunction,std::default_delete<MIL::IRFunction>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRFunction>::shared_ptr[abi:ne200100]<MIL::IRFunction,std::default_delete<MIL::IRFunction>,0>(&v6, a2);
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

void MIL::Pass::Run(MIL::Pass *this, const MIL::IRBlock *a2)
{
  __src = 0;
  v20 = 0;
  v21 = 0;
  v4 = (*(*a2 + 56))(a2);
  std::vector<std::shared_ptr<MIL::IROperation>>::reserve(&__src, (*(*v4 + 8) - **v4) >> 4);
  v5 = (*(*a2 + 56))(a2);
  v6 = **v5;
  for (i = (*v5)[1]; v6 != i; v6 += 2)
  {
    (*(*this + 32))(&v22, this, *v6);
    if (v22)
    {
      operator new();
    }

    v22 = 0;
    v8 = v20;
    if (v20 >= v21)
    {
      v9 = __src;
      v10 = v20 - __src;
      v11 = (v20 - __src) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v13 = v21 - __src;
      if ((v21 - __src) >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v23[4] = &__src;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(&__src, v14);
      }

      v15 = (16 * v11);
      *v15 = 0;
      v15[1] = 0;
      memcpy(0, v9, v10);
      v16 = __src;
      v17 = v21;
      __src = 0;
      v20 = (16 * v11 + 16);
      v21 = 0;
      v23[2] = v16;
      v23[3] = v17;
      v23[0] = v16;
      v23[1] = v16;
      std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v23);
      v18 = v22;
      v20 = (16 * v11 + 16);
      v22 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    else
    {
      *v20 = 0;
      *(v8 + 1) = 0;
      v20 = v8 + 16;
    }
  }

  (*(*a2 + 112))(a2, &__src);
  v23[0] = &__src;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v23);
}

void sub_217F88E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<MIL::IROperation>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_217F891C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<MIL::IRFunction>::shared_ptr[abi:ne200100]<MIL::IRFunction,std::default_delete<MIL::IRFunction>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<MIL::IRFunction  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IRFunction  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRFunction  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void PassManagerImpl::~PassManagerImpl(PassManagerImpl *this)
{
  v1 = (this + 8);
  std::vector<std::unique_ptr<MIL::Pass>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  v1 = (this + 8);
  std::vector<std::unique_ptr<MIL::Pass>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  v2 = (this + 8);
  std::vector<std::unique_ptr<MIL::Pass>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x21CEAFEA0](this, 0xA1C4030951706);
}

uint64_t PassManagerImpl::RegisterPass(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 16);
  v4 = *(result + 24);
  if (v5 >= v4)
  {
    v8 = result + 8;
    v9 = v3[1];
    v10 = v5 - v9;
    v11 = (v5 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v4 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
    v15 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    v22[4] = v3 + 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<MIL::Pass>>>(v8, v15);
    }

    v16 = v11;
    v17 = (8 * v11);
    v18 = *a2;
    *a2 = 0;
    v19 = &v17[-v16];
    *v17 = v18;
    v7 = v17 + 1;
    memcpy(v19, v9, v10);
    v20 = v3[1];
    v3[1] = v19;
    v3[2] = v7;
    v21 = v3[3];
    v3[3] = 0;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<MIL::Pass>>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[2] = v7;
  return result;
}

uint64_t PassManagerImpl::RunPasses@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(*a2 + 32))(a2);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v7 != v6)
  {
    (*(**v7 + 16))(&v9);
    v8 = v9;
    v9 = 0;
    result = *a3;
    *a3 = v8;
    if (result)
    {
      (*(*result + 8))(result);
      result = v9;
      v9 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    v7 += 8;
  }

  return result;
}

void sub_217F89710(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MIL::Pass::Run(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<MIL::Pass>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<MIL::Pass>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<MIL::Pass>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<MIL::Pass>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::unique_ptr<MIL::Pass>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<MIL::Pass>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<MIL::Pass>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

std::runtime_error *MIL::MILError::MILError(std::runtime_error *a1, const std::string *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2829DD5E0;
  return result;
}

_BYTE *MIL::MILError::GetMessage@<X0>(MIL::MILError *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(*this + 16))(this);

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

__n128 MIL::MILErrorWithLocation::MILErrorWithLocation(std::runtime_error *a1, __n128 *a2, std::string *a3)
{
  v4 = std::runtime_error::runtime_error(a1, a3);
  v4->__vftable = &unk_2829DD628;
  result = *a2;
  v4[1] = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

{
  v4 = std::runtime_error::runtime_error(a1, a3);
  v4->__vftable = &unk_2829DD628;
  result = *a2;
  v4[1] = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void MIL::MILErrorWithLocation::GetMessageWithLocation(MIL::MILErrorWithLocation *this@<X0>, std::string *a2@<X8>)
{
  (*(**(this + 2) + 24))(&v11);
  v4 = std::string::append(&v11, ": ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(*this + 24))(__p, this);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v12, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_217F89B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
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

std::runtime_error *MIL::OutOfRangeError::OutOfRangeError(std::runtime_error *a1, std::runtime_error_vtbl **a2, std::string *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = std::runtime_error::runtime_error(a1, a3);
  result[1].__vftable = v4;
  result[1].__imp_.__imp_ = v3;
  result->__vftable = &unk_2829DD670;
  return result;
}

void sub_217F89BD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *MIL::OutOfRangeError::GetMessage@<X0>(MIL::OutOfRangeError *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(*this + 16))(this);

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

std::runtime_error *MIL::InvalidArgumentError::InvalidArgumentError(std::runtime_error *a1, std::runtime_error_vtbl **a2, std::string *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = std::runtime_error::runtime_error(a1, a3);
  result[1].__vftable = v4;
  result[1].__imp_.__imp_ = v3;
  result->__vftable = &unk_2829DD6B8;
  return result;
}

void sub_217F89C9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *MIL::InvalidArgumentError::GetMessage@<X0>(MIL::InvalidArgumentError *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(*this + 16))(this);

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

std::runtime_error *MIL::InvalidOperationError::InvalidOperationError(std::runtime_error *a1, std::runtime_error_vtbl **a2, std::string *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = std::runtime_error::runtime_error(a1, a3);
  result[1].__vftable = v4;
  result[1].__imp_.__imp_ = v3;
  result->__vftable = &unk_2829DD700;
  return result;
}

void sub_217F89D60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *MIL::InvalidOperationError::GetMessage@<X0>(MIL::InvalidOperationError *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(*this + 16))(this);

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

std::runtime_error *MIL::MILErrorWithResult::MILErrorWithResult(std::runtime_error *a1, const std::string *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2829DD748;
  return result;
}

uint64_t MIL::MILErrorWithResult::GetMessageWithLocation(MIL::MILErrorWithResult *this)
{
  v1 = *(*(*(*this + 56))(this) + 24);

  return v1();
}

uint64_t MIL::MILErrorWithResult::GetLocation(MIL::MILErrorWithResult *this)
{
  v1 = (*(*this + 56))(this);

  return MIL::MILResult::GetLocation(v1);
}

uint64_t MIL::MILErrorWithResult::GetLocationSharedPtr(MIL::MILErrorWithResult *this)
{
  v1 = (*(*this + 56))(this);

  return MIL::MILResult::GetLocationSharedPtr(v1);
}

void MIL::MILErrorWithLocation::~MILErrorWithLocation(std::runtime_error *this)
{
  this->__vftable = &unk_2829DD628;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_2829DD628;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::OutOfRangeError::~OutOfRangeError(std::runtime_error *this)
{
  this->__vftable = &unk_2829DD628;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_2829DD628;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::InvalidArgumentError::~InvalidArgumentError(std::runtime_error *this)
{
  this->__vftable = &unk_2829DD628;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_2829DD628;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::InvalidOperationError::~InvalidOperationError(std::runtime_error *this)
{
  this->__vftable = &unk_2829DD628;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_2829DD628;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Bf16::FromFloat(MIL::Bf16 *this, float a2)
{
  v2 = (LODWORD(a2) + 0x8000) >> 16;
  if ((LODWORD(a2) & 0x1FFFF) == 0x8000)
  {
    return HIWORD(LODWORD(a2));
  }

  return v2;
}

_WORD *MIL::Bf16::SetFloat(_WORD *this, float a2)
{
  v2 = (LODWORD(a2) + 0x8000) >> 16;
  if ((LODWORD(a2) & 0x1FFFF) == 0x8000)
  {
    v2 = HIWORD(LODWORD(a2));
  }

  *this = v2;
  return this;
}

float MIL::Fp8E5M2::GetFloat(MIL::Fp8E5M2 *this)
{
  v1 = *this;
  v2 = (v1 << 24) & 0x80000000;
  v3 = v1 & 0x7C;
  if (v3 == 124)
  {
    LODWORD(result) = v2 | v1 & 3 | 0x7F800000;
  }

  else
  {
    LODWORD(v5) = (((v1 & 3) << 21) & 0xF07FFFFF | (((v1 >> 2) & 0x1F) << 23)) + v2 + 939524096;
    if ((v1 & 0x7F) == 0)
    {
      LODWORD(v5) = (v1 << 24) & 0x80000000;
    }

    result = v5;
    v6 = v1 & 3;
    if (v3)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (!v7)
    {
      return COERCE_FLOAT((LODWORD(v5) + 0x800000) & 0x7F800000 | LODWORD(v5) & 0x807FFFFF) - COERCE_FLOAT((LODWORD(v5) + 0x800000) & 0x7F800000 | v2);
    }
  }

  return result;
}

float MIL::Fp8E4M3FN::GetFloat(MIL::Fp8E4M3FN *this)
{
  v1 = *this;
  v2 = (v1 << 24) & 0x80000000;
  if ((v1 & 0x7F) != 0)
  {
    if ((v1 & 0x7F) == 0x7F)
    {
      LODWORD(result) = v2 | 0x7F800007;
      return result;
    }

    v4 = (((v1 & 7) << 20) & 0xF87FFFFF | (((v1 >> 3) & 0xF) << 23)) + v2 + 1006632960;
  }

  else
  {
    v4 = (v1 << 24) & 0x80000000;
  }

  v5 = v1 & 0x78;
  v6 = v1 & 7;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    return *&v4;
  }

  else
  {
    return COERCE_FLOAT((v4 + 0x800000) & 0x7F800000 | v4 & 0x807FFFFF) - COERCE_FLOAT((v4 + 0x800000) & 0x7F800000 | v2);
  }
}

_BYTE *MIL::Fp8E5M2::SetFloat(_BYTE *this, float a2)
{
  v4 = a2;
  *this = HIBYTE(a2) & 0x80;
  if (fabsf(a2) == INFINITY)
  {
    *this = HIBYTE(a2) & 0x80 | 0x7C;
    return this;
  }

  if (a2 != 0.0)
  {
    v2 = (LODWORD(a2) >> 23);
    if (v2 >= 0x8F)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Fp8E5M2 SetFloat exponent overflow.");
    }

    else
    {
      if (v2 > 0x6E)
      {
        return HandleFp32ToFp8ExponentMantissa<MIL::Fp8E5M2,MIL::Fp8E5M2::Cast>(this, &v4);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Fp8E5M2 SetFloat exponent underflow.");
    }

    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return this;
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

_BYTE *HandleFp32ToFp8ExponentMantissa<MIL::Fp8E5M2,MIL::Fp8E5M2::Cast>(_BYTE *result, float *a2)
{
  v2 = *a2;
  if ((*a2 & 0x7F800000u) < 0x38000001)
  {
    *a2 = *&v2 + COERCE_FLOAT(v2 & 0x80000000 | 0x38800000);
    LOBYTE(v2) = *result & 0x83;
  }

  else
  {
    v2 = (*result & 0x83 | (4 * ((v2 >> 23) & 0x1F))) ^ 0x40;
  }

  *result = v2;
  if ((*a2 & 0x1FFFFF) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "FP8 SetFloat requires rounding for the given value.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *result = v2 & 0xFC | (*a2 >> 21) & 3;
  return result;
}

_BYTE *MIL::Fp8E4M3FN::SetFloat(_BYTE *this, float a2)
{
  v4 = a2;
  *this = HIBYTE(a2) & 0x80;
  if (fabsf(a2) == INFINITY)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "Fp8E4M3FN SetFloat infinity not supported.");
    goto LABEL_10;
  }

  if (a2 == 0.0)
  {
    return this;
  }

  v2 = (LODWORD(a2) >> 23);
  if (v2 >= 0x88)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "Fp8E4M3FN SetFloat exponent overflow.");
    goto LABEL_10;
  }

  if (v2 <= 0x75)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "Fp8E4M3FN SetFloat exponent underflow.");
LABEL_10:
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return HandleFp32ToFp8ExponentMantissa<MIL::Fp8E4M3FN,MIL::Fp8E4M3FN::Cast>(this, &v4);
}

_BYTE *HandleFp32ToFp8ExponentMantissa<MIL::Fp8E4M3FN,MIL::Fp8E4M3FN::Cast>(_BYTE *result, float *a2)
{
  v2 = *a2;
  if ((*a2 & 0x7F800000u) < 0x3C000001)
  {
    *a2 = *&v2 + COERCE_FLOAT(v2 & 0x80000000 | 0x3C800000);
    LOBYTE(v2) = *result & 0x87;
  }

  else
  {
    v2 = (*result & 0x87 | (8 * ((v2 >> 23) & 0xF))) ^ 0x40;
  }

  *result = v2;
  if ((*a2 & 0xFFFFF) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "FP8 SetFloat requires rounding for the given value.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *result = v2 & 0xF8 | (*a2 >> 20) & 7;
  return result;
}

uint64_t MIL::Fp8E5M2::FromFloat(MIL::Fp8E5M2 *this, float a2)
{
  v3 = 0;
  MIL::Fp8E5M2::SetFloat(&v3, a2);
  return v3;
}

uint64_t MIL::Fp8E4M3FN::FromFloat(MIL::Fp8E4M3FN *this, float a2)
{
  v3 = 0;
  MIL::Fp8E4M3FN::SetFloat(&v3, a2);
  return v3;
}

float MIL::Fp16::GetFloat(MIL::Fp16 *this)
{
  v1 = *this;
  v2 = COERCE_FLOAT(((v1 & 0x7FFF) << 13) | 0x70000000) * 1.9259e-34;
  if (((v1 >> 10) & 0x1F) == 0)
  {
    v2 = COERCE_FLOAT(v1 & 0x7FFF | 0x3F000000) + -0.5;
  }

  LODWORD(result) = v1 & 0x80000000 | LODWORD(v2);
  return result;
}

void MIL::IRArgument::Make()
{
  operator new();
}

{
  operator new();
}

uint64_t *std::unique_ptr<anonymous namespace::IRArgumentImpl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,std::shared_ptr<MIL::IRValue const>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 8);
    MEMORY[0x21CEAFEA0](v2, 0x10F3C4066A09554);
  }

  return a1;
}

uint64_t MIL::IRArgument::GetName(MIL::IRArgument *this)
{
  result = (*(*this + 32))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Argument is not a name");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t MIL::IRArgument::GetValue(MIL::IRArgument *this)
{
  result = (*(*this + 40))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Argument is not a value");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217F8ACE4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTypedArgument::~IRTypedArgument(MIL::IRTypedArgument *this)
{
  v1 = *(this + 1);
  *this = &unk_2829DD878;
  *(this + 1) = 0;
  if (v1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<MIL::IRValueType const*,std::shared_ptr<MIL::IRValue const>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
    MEMORY[0x21CEAFEA0](v1, 0x1062C40A0E616A4);
  }
}

{
  MIL::IRTypedArgument::~IRTypedArgument(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedArgument::IRTypedArgument(MIL::IRTypedArgument *this, const MIL::IRValueType *a2)
{
  *this = &unk_2829DD878;
  operator new();
}

{
  *this = &unk_2829DD878;
  operator new();
}

uint64_t MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValue(MIL::IRTypedArgument::IRTypedArgumentImpl *this)
{
  if (!this || *(this + 4) != 1)
  {
    return 0;
  }

  v2 = *this;
  v1 = *(this + 1);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

uint64_t MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValueType(MIL::IRTypedArgument::IRTypedArgumentImpl *this)
{
  if (this && !*(this + 4))
  {
    return *this;
  }

  v1 = *(*MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValue(this) + 32);

  return v1();
}

uint64_t MIL::IRTypedArgument::TryGetValueSharedPtr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
  if (v2 && *(v2 + 4) == 1)
  {
    v4 = *v2;
    v3 = v2[1];
    *a2 = v4;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

uint64_t MIL::IRTypedArgument::IRTypedArgumentImpl::Equals(MIL::IRTypedArgument::IRTypedArgumentImpl *this, const MIL::IRTypedArgument::IRTypedArgumentImpl *a2)
{
  v3 = *(a2 + 4);
  if (!*(this + 4))
  {
    if (!v3)
    {
      ValueType = MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValueType(this);
      return ValueType == MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValueType(a2);
    }

    return 0;
  }

  if (v3 != 1)
  {
    return 0;
  }

  Value = MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValue(this);
  if (*(a2 + 4) == 1)
  {
    v6 = *a2;
    v5 = *(a2 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(*Value + 16);

  return v8(Value, v6);
}

void sub_217F8B280(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x21CEAFEA0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t MIL::IRTypedArgument::GetValueType(MIL::IRTypedArgument::IRTypedArgumentImpl **this)
{
  result = MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValueType(this[1]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Argument is not a value type pointer");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t MIL::IRTypedArgument::GetValue(MIL::IRTypedArgument::IRTypedArgumentImpl **this)
{
  result = MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValue(this[1]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Argument is not a value");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t MIL::IRTypedArgument::IRTypedArgumentImpl::ToString(MIL::IRTypedArgument::IRTypedArgumentImpl *this)
{
  Value = MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValue(this);
  if (Value)
  {
    MIL::Text::SerializerOptions::Make(Value);
  }

  v3 = *(*MIL::IRTypedArgument::IRTypedArgumentImpl::TryGetValueType(this) + 56);

  return v3();
}

void sub_217F8B4B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::IRArgumentImpl::~IRArgumentImpl(_anonymous_namespace_::IRArgumentImpl *this)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,std::shared_ptr<MIL::IRValue const>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 8);
}

{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,std::shared_ptr<MIL::IRValue const>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 8);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t anonymous namespace::IRArgumentImpl::TryGetName(_anonymous_namespace_::IRArgumentImpl *this)
{
  if (!*(this + 8))
  {
    return this + 8;
  }

  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  result = (*(*v2 + 40))(v2);
  if (result)
  {
    v4 = *(*result + 136);

    return v4();
  }

  return result;
}

uint64_t anonymous namespace::IRArgumentImpl::TryGetValue(_anonymous_namespace_::IRArgumentImpl *this)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

uint64_t anonymous namespace::IRArgumentImpl::TryGetValueSharedPtr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 32) == 1)
  {
    v2 = *(this + 16);
    *a2 = *(this + 8);
    a2[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

uint64_t anonymous namespace::IRArgumentImpl::Equals(_anonymous_namespace_::IRArgumentImpl *this, const MIL::IRArgument *a2)
{
  v4 = *a2;
  if (*(this + 8))
  {
    result = (*(v4 + 24))(a2);
    if (result)
    {
      if (*(this + 8) == 1)
      {
        v7 = *(this + 1);
        v6 = *(this + 2);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }
      }

      else
      {
        v7 = 0;
      }

      v16 = (*(*a2 + 40))(a2);
      v17 = *(*v7 + 16);

      return v17(v7, v16);
    }
  }

  else
  {
    result = (*(v4 + 16))(a2);
    if (result)
    {
      v9 = (*(*a2 + 32))(a2);
      v10 = *(Name + 23);
      if (v10 >= 0)
      {
        v11 = *(Name + 23);
      }

      else
      {
        v11 = *(Name + 8);
      }

      v12 = *(v9 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v9 + 8);
      }

      if (v11 == v12)
      {
        if (v10 >= 0)
        {
          v14 = Name;
        }

        else
        {
          v14 = *Name;
        }

        if (v13 >= 0)
        {
          v15 = v9;
        }

        else
        {
          v15 = *v9;
        }

        return memcmp(v14, v15, v11) == 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,std::shared_ptr<MIL::IRValue const>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2829DD910[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_10shared_ptrIKN3MIL7IRValueEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSD_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_10shared_ptrIKN3MIL7IRValueEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSD_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<MIL::IRValueType const*,std::shared_ptr<MIL::IRValue const>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_2829DD920[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJPKN3MIL11IRValueTypeENS_10shared_ptrIKNS8_7IRValueEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSB_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void MIL::IRBlock::~IRBlock(MIL::IRBlock *this)
{
  MIL::IRCachedScope::~IRCachedScope((this + 64));

  MIL::IRObject::~IRObject(this);
}

void *MIL::IRBlock::IRBlock(void *a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::IRObject::IRObject(a1, &v5, a3);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  MIL::IRCachedScope::IRCachedScope((a1 + 8));
  *a1 = &unk_2829DD940;
  a1[8] = &unk_2829DD9D0;
  return a1;
}

void MIL::IRBlock::Make(__int128 *a1)
{
  v4 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  MIL::IRBlock::Make();
}

void sub_217F8BAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  v11 = *(v9 - 24);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void sub_217F8BB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x21CEAFEA0](v10, v11);
  _Unwind_Resume(a1);
}

_anonymous_namespace_::IRBlockImpl **std::unique_ptr<anonymous namespace::IRBlockImpl>::~unique_ptr[abi:ne200100](_anonymous_namespace_::IRBlockImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void sub_217F8BCD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v13 = *(v11 - 40);
  *(v11 - 40) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::IRBlockImpl::~IRBlockImpl(_anonymous_namespace_::IRBlockImpl *this)
{
  v2 = *(this + 30);
  *(this + 30) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x20C4093837F09);
  }

  v3 = (this + 216);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 192);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 168);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MIL::IRCachedScope::~IRCachedScope((this + 64));
  MIL::IRObject::~IRObject(this);
}

{

  JUMPOUT(0x21CEAFEA0);
}

void non-virtual thunk toanonymous namespace::IRBlockImpl::~IRBlockImpl(_anonymous_namespace_::IRBlockImpl *this)
{
}

{

  JUMPOUT(0x21CEAFEA0);
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

uint64_t anonymous namespace::IRBlockImpl::IRBlockImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  MIL::IRBlock::IRBlock(a1, &v11, a6);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  *a1 = &unk_2829DDA70;
  *(a1 + 64) = &unk_2829DDB08;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 168) = *a3;
  *(a1 + 184) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *a4;
  *(a1 + 208) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  return a1;
}

void sub_217F8BF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *(v4 + 30);
  *(v4 + 30) = 0;
  if (v7)
  {
    MEMORY[0x21CEAFEA0](v7, 0x20C4093837F09);
  }

  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](va);
  MIL::IRCachedScope::~IRCachedScope(v5);
  MIL::IRObject::~IRObject(v4);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRBlockImpl::SetOperations(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2829DDB88;
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = v3;
  MIL::IRCachedScope::InvalidateAndCall(a1 + 64, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
}

void sub_217F8C068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRBlockImpl::EqualsImpl(_anonymous_namespace_::IRBlockImpl *this, const MIL::IRObject *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(this + 21);
    v6 = *(this + 22);
    if (v6 - v5 != *(result + 176) - *(result + 168))
    {
      return 0;
    }

    if (v6 != v5)
    {
      v7 = 0;
      v8 = 0;
      while (MIL::IRNamedValueType::Equals(*(v5 + v7), *(v4[21] + v7)))
      {
        ++v8;
        v5 = *(this + 21);
        v7 += 16;
        if (v8 >= (*(this + 22) - v5) >> 4)
        {
          goto LABEL_7;
        }
      }

      return 0;
    }

LABEL_7:
    v10 = *(this + 24);
    v9 = *(this + 25);
    v11 = v4[24];
    if (v9 - v10 != v4[25] - v11)
    {
      return 0;
    }

    if (v9 != v10)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3) <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
      }

      do
      {
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = *(v10 + 8);
        }

        v15 = *(v11 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v11 + 8);
        }

        if (v14 != v15)
        {
          return 0;
        }

        v17 = v13 >= 0 ? v10 : *v10;
        v18 = v16 >= 0 ? v11 : *v11;
        if (memcmp(v17, v18, v14))
        {
          return 0;
        }

        v10 += 24;
        v11 += 24;
      }

      while (--v12);
    }

    v19 = *(this + 30);
    v20 = v4[30];
    v21 = **v19;
    v22 = (*v19)[1];
    if (v22 - v21 != *(*v20 + 8) - **v20)
    {
      return 0;
    }

    if (v22 == v21)
    {
      return 1;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      do
      {
        result = MIL::IRObject::Equals(*(v21 + v23), *(**v20 + v23));
        if ((result & 1) == 0)
        {
          break;
        }

        ++v24;
        v21 = **v19;
        v23 += 16;
      }

      while (v24 < ((*v19)[1] - v21) >> 4);
    }
  }

  return result;
}

void sub_217F8C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRBlockImpl::SetInputs(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2829DDC18;
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = v3;
  MIL::IRCachedScope::InvalidateAndCall(a1 + 64, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
}

void sub_217F8C38C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRBlockImpl::GetOperations(_anonymous_namespace_::IRBlockImpl *this)
{
  return *(this + 30);
}

{
  MIL::IRCachedScope::DisableCache((this + 64));
  return *(this + 30);
}

uint64_t anonymous namespace::IRBlockImpl::SetOutputs(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2829DDC98;
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = v3;
  MIL::IRCachedScope::InvalidateAndCall(a1 + 64, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
}

void sub_217F8C490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRBlockImpl::SetParent(_anonymous_namespace_::IRBlockImpl *this, const MIL::IRScope *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4[0] = &unk_2829DDD18;
  v4[1] = this;
  v4[2] = &v3;
  v4[3] = v4;
  MIL::IRCachedScope::InvalidateAndCall(this + 64, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_217F8C534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void anonymous namespace::IRBlockImpl::WithOperations(uint64_t *a1)
{
  MIL::IRObject::GetLocationPtr(a1);
  memset(v4, 0, sizeof(v4));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, a1[24], a1[25], 0xAAAAAAAAAAAAAAABLL * ((a1[25] - a1[24]) >> 3));
  Attributes = MIL::IRObject::GetAttributes(a1);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v3, Attributes);
  operator new();
}

void anonymous namespace::IRBlockImpl::WithRenames(uint64_t *a1, const void ***a2)
{
  v51 = 0;
  v52 = 0;
  v53 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v51, a1[24], a1[25], 0xAAAAAAAAAAAAAAABLL * ((a1[25] - a1[24]) >> 3));
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    v6 = v54[0];
    v7 = v54[1];
    while (v6 != v7)
    {
      Name = MIL::IRNamedValueType::GetName(*v6);
      v9 = *(Name + 23);
      if (v9 >= 0)
      {
        v10 = *(Name + 23);
      }

      else
      {
        v10 = Name[1];
      }

      v11 = *(v4 + 23);
      v12 = v11;
      if (v11 < 0)
      {
        v11 = v4[1];
      }

      if (v10 == v11)
      {
        if (v9 < 0)
        {
          Name = *Name;
        }

        if (v12 >= 0)
        {
          v13 = v4;
        }

        else
        {
          v13 = *v4;
        }

        if (!memcmp(Name, v13, v10))
        {
          v14 = *v6;
          if (*(v4 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v50, v4[3], v4[4]);
          }

          else
          {
            v50 = *(v4 + 1);
          }

          MIL::IRNamedValueType::SetName(v14, &v50);
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }
        }
      }

      v6 += 2;
    }

    v16 = v51;
    v15 = v52;
    while (v16 != v15)
    {
      v17 = *(v16 + 23);
      if (v17 >= 0)
      {
        v18 = *(v16 + 23);
      }

      else
      {
        v18 = *(v16 + 8);
      }

      v19 = *(v4 + 23);
      v20 = v19;
      if (v19 < 0)
      {
        v19 = v4[1];
      }

      if (v18 == v19)
      {
        v21 = v17 >= 0 ? v16 : *v16;
        v22 = v20 >= 0 ? v4 : *v4;
        if (!memcmp(v21, v22, v18))
        {
          std::string::operator=(v16, v4 + 1);
        }
      }

      v16 += 24;
    }

    v4 += 6;
  }

  v24 = v51;
  v23 = v52;
  while (v24 != v23)
  {
    v25 = *a2;
    v26 = a2[1];
    while (v25 != v26)
    {
      v27 = *(v24 + 23);
      if (v27 >= 0)
      {
        v28 = *(v24 + 23);
      }

      else
      {
        v28 = *(v24 + 8);
      }

      v29 = *(v25 + 23);
      v30 = v29;
      if (v29 < 0)
      {
        v29 = v25[1];
      }

      if (v28 == v29)
      {
        v31 = v27 >= 0 ? v24 : *v24;
        v32 = v30 >= 0 ? v25 : *v25;
        if (!memcmp(v31, v32, v28))
        {
          std::string::operator=(v24, v25 + 1);
        }
      }

      v25 += 6;
    }

    v24 += 24;
  }

  __src = 0;
  v48 = 0;
  v49 = 0;
  std::vector<std::shared_ptr<MIL::IROperation>>::reserve(&__src, (a1[28] - a1[27]) >> 4);
  v33 = a1[27];
  for (i = a1[28]; v33 != i; v33 += 16)
  {
    (*(**v33 + 48))(&v55);
    if (v55)
    {
      operator new();
    }

    v55 = 0;
    v35 = v48;
    if (v48 >= v49)
    {
      v36 = __src;
      v37 = v48 - __src;
      v38 = (v48 - __src) >> 4;
      v39 = v38 + 1;
      if ((v38 + 1) >> 60)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v40 = v49 - __src;
      if ((v49 - __src) >> 3 > v39)
      {
        v39 = v40 >> 3;
      }

      if (v40 >= 0x7FFFFFFFFFFFFFF0)
      {
        v41 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = v39;
      }

      v56[4] = &__src;
      if (v41)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(&__src, v41);
      }

      v42 = (16 * v38);
      *v42 = 0;
      v42[1] = 0;
      memcpy(0, v36, v37);
      v43 = __src;
      v44 = v49;
      __src = 0;
      v48 = (16 * v38 + 16);
      v49 = 0;
      v56[2] = v43;
      v56[3] = v44;
      v56[0] = v43;
      v56[1] = v43;
      std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v56);
      v45 = v55;
      v48 = (16 * v38 + 16);
      v55 = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }
    }

    else
    {
      *v48 = 0;
      *(v35 + 1) = 0;
      v48 = v35 + 16;
    }
  }

  MIL::IRObject::GetLocationPtr(a1);
  Attributes = MIL::IRObject::GetAttributes(a1);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v56, Attributes);
  operator new();
}

void sub_217F8CBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char **a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29)
{
  a29 = &a12;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a29);
  a12 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  a21 = &a24;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void anonymous namespace::IRBlockImpl::BuildScopeCache(_anonymous_namespace_::IRBlockImpl *this)
{
  memset(v60, 0, sizeof(v60));
  v61 = 1065353216;
  memset(v58, 0, sizeof(v58));
  v59 = 1065353216;
  v2 = *(this + 21);
  for (i = *(this + 22); v2 != i; v2 += 2)
  {
    Name = MIL::IRNamedValueType::GetName(*v2);
    v53.__r_.__value_.__r.__words[0] = MIL::IRNamedValueType::GetType(*v2);
    std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::string const&,MIL::IRValueType const* const&>(v60, Name);
    if ((v5 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      std::runtime_error::runtime_error(exception, &v56);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v6 = *(this + 20);
    if (v6)
    {
      (*(*v6 + 56))(&v56);
      if (v56.__r_.__value_.__r.__words[0])
      {
        v57.__r_.__value_.__r.__words[0] = Name;
        v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v58, Name);
        v8 = *&v56.__r_.__value_.__l.__data_;
        *&v56.__r_.__value_.__l.__data_ = 0uLL;
        v9 = v7[6];
        *(v7 + 5) = v8;
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }
    }

    else
    {
      *&v56.__r_.__value_.__l.__data_ = 0uLL;
    }

    if (v56.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v56.__r_.__value_.__l.__size_);
    }
  }

  v10 = **(this + 30);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 != v12)
  {
    do
    {
      v13 = *v11;
      v14 = (*(**v11 + 160))(*v11);
      v16 = v14 + 1;
      v15 = *v14;
      if (*v14 != v14 + 1)
      {
        do
        {
          v18 = v15[7];
          v17 = v15[8];
          while (v18 != v17)
          {
            if (((*(**v18 + 24))() & 1) == 0)
            {
              v19 = MIL::IRArgument::GetName(*v18);
              if (*(v19 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v57, *v19, *(v19 + 8));
              }

              else
              {
                v20 = *v19;
                v57.__r_.__value_.__r.__words[2] = *(v19 + 16);
                *&v57.__r_.__value_.__l.__data_ = v20;
              }

              if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v60, &v57.__r_.__value_.__l.__data_))
              {
                v21 = *(this + 20);
                if (v21)
                {
                  if (!(*(*v21 + 24))(v21, &v57, 1))
                  {
                    {
                      v38 = 303;
                    }

                    else
                    {
                      v38 = 305;
                    }

                    std::ostringstream::basic_ostringstream[abi:ne200100](&v56);
                    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "Input '", 7);
                    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v40 = &v57;
                    }

                    else
                    {
                      v40 = v57.__r_.__value_.__r.__words[0];
                    }

                    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = v57.__r_.__value_.__l.__size_;
                    }

                    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, size);
                    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "' for parameter '", 17);
                    v44 = *(v15 + 55);
                    if (v44 >= 0)
                    {
                      v45 = (v15 + 4);
                    }

                    else
                    {
                      v45 = v15[4];
                    }

                    if (v44 >= 0)
                    {
                      v46 = *(v15 + 55);
                    }

                    else
                    {
                      v46 = v15[5];
                    }

                    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "' does not resolve. Operations are expected to be topologically sorted.", 71);
                    v48 = __cxa_allocate_exception(0x48uLL);
                    LocationPtr = MIL::IRObject::GetLocationPtr(this);
                    v50 = LocationPtr[1];
                    *&v55 = *LocationPtr;
                    *(&v55 + 1) = v50;
                    if (v50)
                    {
                      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
                    }

                    std::stringbuf::str();
                    MIL::ValidationError::ValidationError(v48, &v55, v54, v38);
                  }
                }
              }

              if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v57.__r_.__value_.__l.__data_);
              }
            }

            v18 += 2;
          }

          v22 = v15[1];
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
              v23 = v15[2];
              v24 = *v23 == v15;
              v15 = v23;
            }

            while (!v24);
          }

          v15 = v23;
        }

        while (v23 != v16);
      }

      v25 = (*(*v13 + 72))(v13);
      v26 = v25;
      memset(&v56, 0, sizeof(v56));
      if (v25 && (*(*v25 + 104))(v25))
      {
        (*(*v26 + 248))(&v57, v26, v13);
        std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate(&v56);
        v56 = v57;
        memset(&v57, 0, sizeof(v57));
        v53.__r_.__value_.__r.__words[0] = &v57;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v53);
      }

      v27 = (*(*v13 + 176))(v13);
      memset(&v57, 0, sizeof(v57));
      std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(&v57, *v27, v27[1], (v27[1] - *v27) >> 4);
      v28 = v57.__r_.__value_.__r.__words[0];
      if (v57.__r_.__value_.__l.__size_ != v57.__r_.__value_.__r.__words[0])
      {
        v29 = 0;
        do
        {
          v30 = (v28 + 16 * v29);
          v31 = MIL::IRNamedValueType::GetName(*v30);
          v53.__r_.__value_.__r.__words[0] = MIL::IRNamedValueType::GetType(*v30);
          std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::string const&,MIL::IRValueType const*>(v60, v31);
          if ((v32 & 1) == 0)
          {
            v51 = __cxa_allocate_exception(0x10uLL);
            MIL::IRNamedValueType::GetName(*v30);
            std::operator+<char>();
            std::runtime_error::runtime_error(v51, &v53);
            __cxa_throw(v51, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v33 = v56.__r_.__value_.__r.__words[0];
          if (v56.__r_.__value_.__r.__words[0] != v56.__r_.__value_.__l.__size_)
          {
            v62 = MIL::IRNamedValueType::GetName(*v30);
            v34 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v58, v62);
            v35 = *(v33 + 16 * v29);
            v36 = *(v33 + 16 * v29 + 8);
            if (v36)
            {
              atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
            }

            v37 = v34[6];
            *(v34 + 5) = v35;
            if (v37)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v37);
            }
          }

          ++v29;
          v28 = v57.__r_.__value_.__r.__words[0];
        }

        while (v29 < (v57.__r_.__value_.__l.__size_ - v57.__r_.__value_.__r.__words[0]) >> 4);
      }

      v53.__r_.__value_.__r.__words[0] = &v57;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v53);
      v57.__r_.__value_.__r.__words[0] = &v56;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v57);
      v11 += 2;
    }

    while (v11 != v12);
  }

  MIL::IRMutableScope::Make();
}

void sub_217F8D36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v30 - 192);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v30 - 144);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<anonymous namespace::IRBlockImpl::SetOperations(std::vector<std::shared_ptr<MIL::IROperation>> &&)::{lambda(void)#1},std::allocator<std::vector<std::shared_ptr<MIL::IROperation>> &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DDB88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<anonymous namespace::IRBlockImpl::SetOperations(std::vector<std::shared_ptr<MIL::IROperation>> &&)::{lambda(void)#1},std::allocator<std::vector<std::shared_ptr<MIL::IROperation>> &&>,void ()(void)>::operator()(uint64_t a1)
{
  v33 = (*(a1 + 8) + 216);
  std::vector<std::shared_ptr<MIL::IRBlock>>::clear[abi:ne200100](v33);
  memset(v39, 0, sizeof(v39));
  v40 = 1065353216;
  v2 = *(a1 + 16);
  v3 = *v2;
  v32 = v2[1];
  if (*v2 != v32)
  {
    v31 = a1;
    do
    {
      v4 = (*(**v3 + 160))();
      v6 = v4 + 1;
      v5 = *v4;
      if (*v4 != v4 + 1)
      {
        do
        {
          v8 = v5[7];
          v7 = v5[8];
          while (v8 != v7)
          {
            if ((*(**v8 + 16))())
            {
              Name = MIL::IRArgument::GetName(*v8);
              if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v39, Name))
              {
                v10 = (*(**v3 + 64))();
                if (MIL::Util::IsConstexprOpTakingInputs(v10, v11))
                {
                  v12 = *v3;
                  v13 = MIL::IRArgument::GetName(*v8);
                  v35 = MIL::IRArgument::GetName(*v8);
                  v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v39, v35);
                  v15 = v14[6];
                  v37 = v14[5];
                  v38 = v15;
                  if (v15)
                  {
                    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v12 + 248))(v12, v13, &v37);
                  if (v38)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
                  }
                }
              }
            }

            v8 += 2;
          }

          v16 = v5[1];
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
              v17 = v5[2];
              v18 = *v17 == v5;
              v5 = v17;
            }

            while (!v18);
          }

          v5 = v17;
        }

        while (v17 != v6);
      }

      v19 = (*(**v3 + 72))();
      v20 = v19;
      if (v19 && (*(*v19 + 104))(v19))
      {
        (*(*v20 + 248))(&v35, v20, *v3);
        if (v36 != v35)
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = (*(**v3 + 176))();
            v24 = MIL::IRNamedValueType::GetName(*(*v23 + v21));
            if (*(v24 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v34, *v24, *(v24 + 8));
            }

            else
            {
              v25 = *v24;
              v34.__r_.__value_.__r.__words[2] = *(v24 + 16);
              *&v34.__r_.__value_.__l.__data_ = v25;
            }

            v26 = v35;
            v41 = &v34;
            v27 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v39, &v34.__r_.__value_.__l.__data_);
            v28 = *&v26[2 * v22];
            v29 = v26[2 * v22 + 1];
            if (v29)
            {
              atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
            }

            v30 = v27[6];
            *(v27 + 5) = v28;
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            }

            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }

            ++v22;
            v21 += 16;
          }

          while (v22 < (v36 - v35) >> 4);
        }

        v34.__r_.__value_.__r.__words[0] = &v35;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v34);
      }

      std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](v33, v3++);
    }

    while (v3 != v32);
    v2 = *(v31 + 16);
  }

  std::vector<std::shared_ptr<MIL::IRBlock>>::clear[abi:ne200100](v2);
  operator new();
}

uint64_t std::__function::__func<anonymous namespace::IRBlockImpl::SetOperations(std::vector<std::shared_ptr<MIL::IROperation>> &&)::{lambda(void)#1},std::allocator<std::vector<std::shared_ptr<MIL::IROperation>> &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(void *a1, const void **a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_217F8DF4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
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

__n128 std::__function::__func<anonymous namespace::IRBlockImpl::SetInputs(std::vector<std::shared_ptr<MIL::IRNamedValueType>> &&)::{lambda(void)#1},std::allocator<std::vector<std::shared_ptr<MIL::IRNamedValueType>> &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DDC18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<anonymous namespace::IRBlockImpl::SetInputs(std::vector<std::shared_ptr<MIL::IRNamedValueType>> &&)::{lambda(void)#1},std::allocator<std::vector<std::shared_ptr<MIL::IRNamedValueType>> &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate((v1 + 168));
  result = *v2;
  *(v1 + 168) = *v2;
  *(v1 + 184) = v2[1].n128_u64[0];
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRBlockImpl::SetInputs(std::vector<std::shared_ptr<MIL::IRNamedValueType>> &&)::{lambda(void)#1},std::allocator<std::vector<std::shared_ptr<MIL::IRNamedValueType>> &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<MIL::IRBlock>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__n128 std::__function::__func<anonymous namespace::IRBlockImpl::SetOutputs(std::vector<std::string> &&)::{lambda(void)#1},std::allocator<std::vector<std::string> &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DDC98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<anonymous namespace::IRBlockImpl::SetOutputs(std::vector<std::string> &&)::{lambda(void)#1},std::allocator<std::vector<std::string> &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  std::vector<std::string>::__vdeallocate(v1 + 8);
  result = *v2;
  *&v1[8].__begin_ = *v2;
  v1[8].__end_cap_.__value_ = v2[1].n128_u64[0];
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRBlockImpl::SetOutputs(std::vector<std::string> &&)::{lambda(void)#1},std::allocator<std::vector<std::string> &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
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

__n128 std::__function::__func<anonymous namespace::IRBlockImpl::SetParent(MIL::IRScope const*)::{lambda(void)#1},std::allocator<anonymous namespace::IRBlockImpl::SetParent(MIL::IRScope const*)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DDD18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRBlockImpl::SetParent(MIL::IRScope const*)::{lambda(void)#1},std::allocator<anonymous namespace::IRBlockImpl::SetParent(MIL::IRScope const*)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *anonymous namespace::IRBlockImpl::CopyInputs@<X0>(_anonymous_namespace_::IRBlockImpl *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<std::shared_ptr<MIL::IROperation>>::reserve(a2, (*(this + 22) - *(this + 21)) >> 4);
  v4 = *(this + 21);
  if (v4 != *(this + 22))
  {
    Name = MIL::IRNamedValueType::GetName(*v4);
    if (*(Name + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *Name, *(Name + 8));
    }

    else
    {
      v6 = *Name;
      __p.__r_.__value_.__r.__words[2] = *(Name + 16);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    MIL::IRNamedValueType::GetType(*v4);
    MIL::IRNamedValueType::Make();
  }

  return result;
}

void ***std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IRNamedValueType::~IRNamedValueType(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<MIL::IRNamedValueType  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void **std::__shared_ptr_pointer<MIL::IRNamedValueType  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MIL::IRNamedValueType::~IRNamedValueType(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRNamedValueType  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F8E83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t anonymous namespace::IRBlockImpl::LinearSearchOutputsForIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 176))(a1);
  v4 = *v3;
  v5 = *(v3 + 8);
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    Name = MIL::IRNamedValueType::GetName(*v4);
    v7 = *(Name + 23);
    if (v7 >= 0)
    {
      v8 = *(Name + 23);
    }

    else
    {
      v8 = Name[1];
    }

    v9 = *(a2 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (v8 == v9)
    {
      if (v7 < 0)
      {
        Name = *Name;
      }

      v11 = v10 >= 0 ? a2 : *a2;
      if (!memcmp(Name, v11, v8))
      {
        break;
      }
    }

    v4 += 2;
  }

  return 1;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_217F8EC48(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](v1);
  _Unwind_Resume(a1);
}

void MIL::ValidationError::~ValidationError(std::runtime_error *this)
{
  this->__vftable = &unk_2829E9B08;
  MIL::ValidationResult::~ValidationResult(&this[1]);

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_2829E9B08;
  MIL::ValidationResult::~ValidationResult(&this[1]);
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x21CEAFEA0);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::string const&,MIL::IRValueType const* const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__construct_node_hash<std::string const&,MIL::IRValueType const* const&>();
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

void sub_217F8EF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217F8EFDC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x21CEAFD00](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_217F8F08C(_Unwind_Exception *a1)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x21CEAFAD0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
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

  MEMORY[0x21CEAFAE0](v13);
  return a1;
}

void sub_217F8F2FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x21CEAFAE0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x217F8F2DCLL);
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

void sub_217F8F530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F8F6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::string const&,MIL::IRValueType const*>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__construct_node_hash<std::string const&,MIL::IRValueType const*>();
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

void sub_217F8FA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217F8FB48(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

size_t MIL::IRDataTypeToString@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = 368;
  while (*v3 != a1)
  {
    v3 += 4;
    v4 -= 16;
    if (!v4)
    {
      break;
    }
  }

  v5 = *(v3 + 1);
  result = strlen(v5);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v5, result);
  }

  a2[v7] = 0;
  return result;
}

uint64_t MIL::StringToIRDataType(const void **a1, char a2)
{
  v4 = *(a1 + 23);
  v6 = *a1;
  v5 = a1[1];
  v7 = &off_278235F98;
  v8 = 368;
  do
  {
    v9 = strlen(*v7);
    v10 = v9;
    if ((v4 & 0x80) != 0)
    {
      if (v9 != v5)
      {
        goto LABEL_8;
      }

      v11 = v6;
      if (v5 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      v11 = a1;
      if (v10 != v4)
      {
        goto LABEL_8;
      }
    }

    if (!memcmp(v11, *v7, v10))
    {
      return *(v7 - 2);
    }

LABEL_8:
    v7 += 2;
    v8 -= 16;
  }

  while (v8);
  if ((a2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v14 = std::string::append(&v16, " does not map to a data value type.");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 18;
}

void sub_217F8FD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

BOOL MIL::IsFloat(int a1)
{
  v2 = 24;
  while (*v1 != a1)
  {
    ++v1;
    v2 -= 4;
    if (!v2)
    {
    }
  }
}

BOOL MIL::IsSignedInt(int a1)
{
  v2 = 20;
  while (*v1 != a1)
  {
    ++v1;
    v2 -= 4;
    if (!v2)
    {
    }
  }
}

BOOL MIL::IsUnsignedInt(int a1)
{
  v2 = 36;
  while (*v1 != a1)
  {
    ++v1;
    v2 -= 4;
    if (!v2)
    {
      v1 = "N3MIL10IRFunctionE";
      return v1 != "N3MIL10IRFunctionE";
    }
  }

  return v1 != "N3MIL10IRFunctionE";
}

void MIL::IRFunction::~IRFunction(MIL::IRFunction *this)
{
  MIL::IRCachedScope::~IRCachedScope((this + 64));

  MIL::IRObject::~IRObject(this);
}

void *MIL::IRFunction::IRFunction(void *a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::IRObject::IRObject(a1, &v5, a3);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  MIL::IRCachedScope::IRCachedScope((a1 + 8));
  *a1 = &unk_2829DDDF8;
  a1[8] = &unk_2829DDF00;
  return a1;
}

void MIL::IRFunction::Make(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  *__p = *a3;
  v8 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v4 = 0u;
  v5 = 0u;
  v6 = 1065353216;
  MIL::IRFunction::Make(&v9, a2, __p, a4);
}

void sub_217F900EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 24);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void MIL::IRFunction::Make(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a3, *(a3 + 8));
  }

  else
  {
    v13 = *a3;
  }

  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  *__p = *&v13.__r_.__value_.__l.__data_;
  v5 = *a4;
  *a4 = 0;
  v6 = v13.__r_.__value_.__r.__words[2];
  memset(&v13, 0, sizeof(v13));
  v9 = v6;
  v10 = v5;
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>(&v11, __p);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_217F9025C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(&a14, a15);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_217F903F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

_anonymous_namespace_::IRFunctionImpl **std::unique_ptr<anonymous namespace::IRFunctionImpl>::~unique_ptr[abi:ne200100](_anonymous_namespace_::IRFunctionImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void MIL::IRFunction::Make(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  *__p = *a3;
  v7 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v3 = 0u;
  v4 = 0u;
  v5 = 1065353216;
}

void sub_217F90514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 40);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void sub_217F906D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  v18 = *(v16 - 40);
  *(v16 - 40) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__construct_node<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
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

uint64_t *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>,0>(v2 + 32);
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

std::string *std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  this[1].__r_.__value_.__r.__words[0] = v5;
  return this;
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

void anonymous namespace::IRFunctionImpl::~IRFunctionImpl(_anonymous_namespace_::IRFunctionImpl *this)
{
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(this + 232, *(this + 30));
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(this + 184, *(this + 24));
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  MIL::IRCachedScope::~IRCachedScope((this + 64));

  MIL::IRObject::~IRObject(this);
}

{

  JUMPOUT(0x21CEAFEA0);
}

void non-virtual thunk toanonymous namespace::IRFunctionImpl::~IRFunctionImpl(_anonymous_namespace_::IRFunctionImpl *this)
{
}

{

  JUMPOUT(0x21CEAFEA0);
}

void std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t anonymous namespace::IRFunctionImpl::IRFunctionImpl(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, void *a5, uint64_t *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  MIL::IRFunction::IRFunction(a1, &v26, a6);
  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
  }

  *a1 = &unk_2829DDFA0;
  *(a1 + 64) = &unk_2829DE0B0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = *a3;
  v10 = a3 + 1;
  v11 = a3[1];
  *(a1 + 192) = v11;
  v12 = a1 + 192;
  v13 = a3[2];
  *(a1 + 200) = v13;
  if (v13)
  {
    *(v11 + 16) = v12;
    *a3 = v10;
    *v10 = 0;
    a3[2] = 0;
  }

  else
  {
    *(a1 + 184) = v12;
  }

  v14 = *a4;
  *(a1 + 224) = *(a4 + 2);
  *(a1 + 208) = v14;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(a1 + 232) = *a5;
  v15 = a5 + 1;
  v16 = a5[1];
  *(a1 + 240) = v16;
  v17 = a1 + 240;
  v18 = a5[2];
  *(a1 + 248) = v18;
  if (v18)
  {
    *(v16 + 16) = v17;
    *a5 = v15;
    *v15 = 0;
    a5[2] = 0;
  }

  else
  {
    *(a1 + 232) = v17;
  }

  v19 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 232, (a1 + 208));
  if (v17 == v19)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v23 = LocationPtr[1];
    *&v28 = *LocationPtr;
    *(&v28 + 1) = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v24 = std::string::append(&v27, "' not in blocks.");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v30 = v24->__r_.__value_.__r.__words[2];
    v29 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationError::ValidationError(exception, &v28, &v29, 203);
  }

  *(a1 + 256) = *(v19 + 56);
  *&v29 = &unk_2829DE130;
  *(&v29 + 1) = a1;
  v31 = &v29;
  MIL::IRCachedScope::InvalidateAndCall(a1 + 64, &v29);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v29);
  return a1;
}

void sub_217F91014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
    if ((v30 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v30)
  {
LABEL_10:
    std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(v28, *(v25 + 240));
    if (*(v25 + 231) < 0)
    {
      operator delete(*(v25 + 208));
    }

    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v27, *(v25 + 192));
    v32 = *(v25 + 168);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    MIL::IRCachedScope::~IRCachedScope(v26);
    MIL::IRObject::~IRObject(v25);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

void sub_217F910E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  JUMPOUT(0x217F910DCLL);
}

uint64_t anonymous namespace::IRFunctionImpl::EqualsImpl(_anonymous_namespace_::IRFunctionImpl *this, const MIL::IRObject *lpsrc)
{
  if (result)
  {
    v4 = result;
    if (*(this + 25) == *(result + 200))
    {
      v5 = *(this + 23);
      if (v5 == (this + 192))
      {
LABEL_13:
        v11 = *(this + 231);
        if (v11 >= 0)
        {
          v12 = *(this + 231);
        }

        else
        {
          v12 = *(this + 27);
        }

        v13 = *(v4 + 231);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v4 + 216);
        }

        if (v12 == v13)
        {
          v15 = v11 >= 0 ? (this + 208) : *(this + 26);
          v16 = v14 >= 0 ? (v4 + 208) : *(v4 + 208);
          if (!memcmp(v15, v16, v12) && *(this + 31) == *(v4 + 248))
          {
            v17 = *(this + 29);
            v18 = this + 240;
            if (v17 == v18)
            {
              return 1;
            }

            while (1)
            {
              v19 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v4 + 232, v17 + 4);
              if (v4 + 240 == v19)
              {
                break;
              }

              result = MIL::IRObject::Equals(v17[7], *(v19 + 56));
              if (result)
              {
                v20 = v17[1];
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
                    v21 = v17[2];
                    v10 = *v21 == v17;
                    v17 = v21;
                  }

                  while (!v10);
                }

                result = 1;
                v17 = v21;
                if (v21 != v18)
                {
                  continue;
                }
              }

              return result;
            }
          }
        }
      }

      else
      {
        v6 = result + 192;
        while (1)
        {
          v7 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v4 + 184, v5 + 4);
          if (v6 == v7 || *(v5 + 7) != *(v7 + 56))
          {
            break;
          }

          v8 = *(v5 + 1);
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
              v9 = *(v5 + 2);
              v10 = *v9 == v5;
              v5 = v9;
            }

            while (!v10);
          }

          v5 = v9;
          if (v9 == (this + 192))
          {
            goto LABEL_13;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t anonymous namespace::IRFunctionImpl::GetBlock(_anonymous_namespace_::IRFunctionImpl *this)
{
  return *(this + 32);
}

{
  MIL::IRCachedScope::DisableCache((this + 64));
  return *(this + 32);
}

void anonymous namespace::IRFunctionImpl::SpecializationNames(_anonymous_namespace_::IRFunctionImpl *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string const*>::reserve(a2, *(this + 31));
  v4 = *(this + 29);
  v5 = this + 240;
  if (v4 != this + 240)
  {
    v6 = a2[1];
    do
    {
      v7 = v4 + 32;
      v8 = a2[2];
      if (v6 >= v8)
      {
        v9 = (v6 - *a2) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v10 = v8 - *a2;
        v11 = v10 >> 2;
        if (v10 >> 2 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a2, v12);
        }

        v13 = (8 * v9);
        *v13 = v7;
        v6 = (8 * v9 + 8);
        v14 = a2[1] - *a2;
        v15 = v13 - v14;
        memcpy(v13 - v14, *a2, v14);
        v16 = *a2;
        *a2 = v15;
        a2[1] = v6;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v7;
        v6 += 8;
      }

      a2[1] = v6;
      v17 = *(v4 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v4 + 2);
          v19 = *v18 == v4;
          v4 = v18;
        }

        while (!v19);
      }

      v4 = v18;
    }

    while (v18 != v5);
  }
}

void sub_217F914A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::IRFunctionImpl::TrySpecializationForName(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 232, a2);
  if (a1 + 240 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

uint64_t anonymous namespace::IRFunctionImpl::CopySpecializationForName@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 232, a2);
  if (a1 + 240 == result)
  {
    *a3 = 0;
  }

  else
  {
    v6 = *(**(result + 56) + 32);

    return v6();
  }

  return result;
}

uint64_t anonymous namespace::IRFunctionImpl::SetBlock(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2829DE1B0;
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = v3;
  MIL::IRCachedScope::InvalidateAndCall(a1 + 64, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
}

void sub_217F9160C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void anonymous namespace::IRFunctionImpl::SetSpecialization(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  __p[0] = &unk_2829DE230;
  __p[1] = a3;
  v10 = a1;
  v11 = __p;
  MIL::IRCachedScope::InvalidateAndCall(a1 + 64, __p);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](__p);
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = *a3;
  *a3 = 0;
  v10 = v6;
  v11 = v7;
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>(a1 + 232, __p);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 1))(v8);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void *anonymous namespace::IRFunctionImpl::UseSpecialization(uint64_t a1, std::string *a2)
{
  std::string::operator=((a1 + 208), a2);
  result = std::map<std::string,std::unique_ptr<MIL::IRBlock>>::at(a1 + 232, &a2->__r_.__value_.__l.__data_);
  *(a1 + 256) = *result;
  return result;
}

uint64_t anonymous namespace::IRFunctionImpl::RemoveSpecialization(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = *(a1 + 231);
  if (v4 >= 0)
  {
    v5 = *(a1 + 231);
  }

  else
  {
    v5 = *(a1 + 216);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = a2[1];
  }

  if (v5 == v6)
  {
    if (v4 >= 0)
    {
      v8 = (a1 + 208);
    }

    else
    {
      v8 = *(a1 + 208);
    }

    if (v7 < 0)
    {
      a2 = *a2;
    }

    if (!memcmp(v8, a2, v5))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v11 = std::string::append(&v13, "').");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v14);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__erase_unique<std::string>((a1 + 232), v2);
}

void sub_217F918B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t anonymous namespace::IRFunctionImpl::GetSpecializations(_anonymous_namespace_::IRFunctionImpl *this)
{
  return this + 232;
}

{
  MIL::IRCachedScope::DisableCache((this + 64));
  return this + 232;
}

uint64_t anonymous namespace::IRFunctionImpl::SetInputs(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2829DE2B0;
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = v3;
  MIL::IRCachedScope::InvalidateAndCall(a1 + 64, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
}

void sub_217F919D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRFunctionImpl::TryGetInputType(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 184, a2);
  if (a1 + 192 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

void anonymous namespace::IRFunctionImpl::GetOutputTypes(_anonymous_namespace_::IRFunctionImpl *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(this + 32);
  v4 = (*(*v3 + 88))(v3);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = v3 + 64;
    do
    {
      v8 = (*(*v7 + 16))(v7, v5, 1);
      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      if (v10 >= v9)
      {
        v12 = (v10 - *a2) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - *a2;
        v14 = v13 >> 2;
        if (v13 >> 2 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a2, v15);
        }

        v16 = (8 * v12);
        *v16 = v8;
        v11 = 8 * v12 + 8;
        v17 = *(a2 + 8) - *a2;
        v18 = v16 - v17;
        memcpy(v16 - v17, *a2, v17);
        v19 = *a2;
        *a2 = v18;
        *(a2 + 8) = v11;
        *(a2 + 16) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 1);
      }

      *(a2 + 8) = v11;
      v5 += 24;
    }

    while (v5 != v6);
  }
}

void sub_217F91BB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::IRFunctionImpl::GetParentProgram(_anonymous_namespace_::IRFunctionImpl *this)
{
  result = *(this + 22);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot access non-existent parent of an IRFunction.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t anonymous namespace::IRFunctionImpl::SetParent(_anonymous_namespace_::IRFunctionImpl *this, const MIL::IRProgram *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4[0] = &unk_2829DE330;
  v4[1] = this;
  v4[2] = &v3;
  v4[3] = v4;
  MIL::IRCachedScope::InvalidateAndCall(this + 64, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_217F91CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void anonymous namespace::IRFunctionImpl::WithBlock(uint64_t a1, uint64_t *a2)
{
  v8[0] = a1 + 208;
  v4 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v10, (a1 + 208));
  v5 = *a2;
  *a2 = 0;
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  MIL::IRObject::GetLocationPtr(a1);
  std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](&v9, (a1 + 184));
  Attributes = MIL::IRObject::GetAttributes(a1);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v8, Attributes);
}

void sub_217F91E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a14, a15);
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(v15 - 56, *(v15 - 48));
  _Unwind_Resume(a1);
}

void anonymous namespace::IRFunctionImpl::UsingSpecialization(const void ***a1)
{
  MIL::IRObject::GetLocationPtr(a1);
  std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](&v5, a1 + 23);
  Attributes = MIL::IRObject::GetAttributes(a1);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v3, Attributes);
}

void sub_217F91F6C(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void anonymous namespace::IRFunctionImpl::WithNamedSpecialization(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = *a3;
  *a3 = 0;
  v11 = v6;
  v12 = v7;
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>(&v14, __p);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  MIL::IRObject::GetLocationPtr(a1);
  std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](&v13, (a1 + 184));
  Attributes = MIL::IRObject::GetAttributes(a1);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(__p, Attributes);
}

void sub_217F92118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(v9 - 56, *(v9 - 48));
  _Unwind_Resume(a1);
}

void anonymous namespace::IRFunctionImpl::WithRenames(uint64_t a1, const void ***a2)
{
  std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](&v21, (a1 + 184));
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(&v21, v4);
      if (&v22 != v6)
      {
        v7 = v6[7];
        v16.__r_.__value_.__r.__words[0] = (v4 + 3);
        *(std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v21, v4 + 3) + 56) = v7;
        std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__erase_unique<std::string>(&v21, v4);
      }

      v4 += 6;
    }

    while (v4 != v5);
  }

  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v8 = *(a1 + 232);
  if (v8 != (a1 + 240))
  {
    do
    {
      (*(*v8[7] + 120))(&v18);
      if (*(v8 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, v8[4], v8[5]);
      }

      else
      {
        v16 = *(v8 + 4);
      }

      v9 = v18;
      v18 = 0;
      v17 = v9;
      std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>(&v19, &v16.__r_.__value_.__l.__data_);
      v10 = v17;
      v17 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v11 = v18;
      v18 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v12 = v8[1];
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
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != (a1 + 240));
  }

  MIL::IRObject::GetLocationPtr(a1);
  Attributes = MIL::IRObject::GetAttributes(a1);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v16, Attributes);
}

void sub_217F92730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  __cxa_free_exception(v33);
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(v34 - 128, *(v34 - 120));
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v34 - 104, *(v34 - 96));
  _Unwind_Resume(a1);
}

void sub_217F92910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRFunctionImpl::AlignSpecialization(_anonymous_namespace_::IRFunctionImpl *this)
{
  v43 = 0u;
  v44 = 0u;
  v45 = 1065353216;
  MIL::IRCachedScope::DisableCache((this + 64));
  v37 = this;
  v36 = *(this + 32);
  v2 = (*(*v36 + 64))();
  v4 = **v2;
  v3 = (*v2)[1];
  if (v4 != v3)
  {
    v5 = (v37 + 208);
    do
    {
      v6 = *v4;
      if ((*(**v4 + 232))(*v4))
      {
        v7 = (*(*v6 + 232))(v6);
        v8 = (*(*v7 + 16))(v7);
        v10 = v9;
        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v9 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v9;
        if (v9)
        {
          memmove(&__dst, v8, v9);
        }

        __dst.__r_.__value_.__s.__data_[v10] = 0;
        p_dst = &__dst;
        if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(&v43, &__dst.__r_.__value_.__l.__data_))
        {
          v13 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v43, &__dst.__r_.__value_.__l.__data_);
          v14 = *(v13 + 10) + 1;
        }

        else
        {
          v13 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v43, &__dst.__r_.__value_.__l.__data_);
          v14 = 1;
        }

        *(v13 + 10) = v14;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(&v43, v5))
        {
          __dst.__r_.__value_.__r.__words[0] = v37 + 208;
          v11 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v43, v5);
          v12 = *(v11 + 10) + 1;
        }

        else
        {
          __dst.__r_.__value_.__r.__words[0] = v37 + 208;
          v11 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v43, v5);
          v12 = 1;
        }

        *(v11 + 10) = v12;
      }

      v4 += 2;
    }

    while (v4 != v3);
  }

  memset(&__dst, 0, sizeof(__dst));
  v15 = v44;
  if (v44)
  {
    v16 = -1;
    do
    {
      v17 = *(v15 + 10);
      if (v17 > v16)
      {
        std::string::operator=(&__dst, (v15 + 2));
        v16 = v17;
      }

      v15 = *v15;
    }

    while (v15);
    if (v16 > 0)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      v19 = *(v37 + 231);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v37 + 27);
      }

      if (size != v19 || ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v21 = &__dst) : (v21 = __dst.__r_.__value_.__r.__words[0]), v20 >= 0 ? (v22 = v37 + 208) : (v22 = *(v37 + 26)), memcmp(v21, v22, size)))
      {
        v23 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v37 + 232, v37 + 26);
        std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__remove_node_pointer(v37 + 29, v23);
        p_dst = v23;
        v41 = 1;
        std::string::operator=((v23 + 32), &__dst);
        std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__node_handle_insert_unique[abi:ne200100]<std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>,std::allocator<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>,std::__map_node_handle_specifics>,std::__insert_return_type<std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>*,long>>,std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>,std::allocator<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>,std::__map_node_handle_specifics>>>(v37 + 29, &p_dst, v38);
        v24 = v39;
        if (v39)
        {
          std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>,0>(v39 + 32);
          operator delete(v24);
          v39 = 0;
        }

        std::string::operator=((v37 + 208), &__dst);
        v25 = (*(*v36 + 64))(v36);
        v26 = **v25;
        for (i = (*v25)[1]; v26 != i; v26 += 2)
        {
          v28 = *v26;
          if ((*(**v26 + 232))(*v26))
          {
            v29 = (*(*v28 + 232))(v28);
            v30 = (*(*v29 + 16))(v29);
            v32 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
            if (v31 == v32)
            {
              v33 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
              if (!memcmp(v30, v33, v32))
              {
                (*(*v28 + 240))(v28);
              }
            }
          }
        }

        v34 = p_dst;
        if (p_dst)
        {
          std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>,0>(&p_dst[1].__r_.__value_.__l.__size_);
          operator delete(v34);
        }
      }
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v43);
}

void sub_217F92E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>,std::allocator<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>,std::__map_node_handle_specifics>::__destroy_node_pointer[abi:ne200100](&a16);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a24);
  _Unwind_Resume(a1);
}

void anonymous namespace::IRFunctionImpl::BuildScopeCache(_anonymous_namespace_::IRFunctionImpl *this)
{
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  v2 = *(this + 23);
  v3 = (this + 192);
  if (v2 != (this + 192))
  {
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::string const&,MIL::IRValueType const* const&>(v18, v2 + 4);
      if ((v4 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x48uLL);
        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v10 = LocationPtr[1];
        *&v17 = *LocationPtr;
        *(&v17 + 1) = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        std::operator+<char>();
        v11 = std::string::append(v13, "'");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v16 = v11->__r_.__value_.__r.__words[2];
        v15 = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationError::ValidationError(exception, &v17, &v15, 205);
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  MIL::IRMutableScope::Make();
}

void sub_217F93000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(uint64_t a1, const void **a2)
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

uint64_t std::__function::__func<anonymous namespace::IRFunctionImpl::IRFunctionImpl(std::shared_ptr<MIL::Location const>,std::map<std::string,MIL::IRValueType const*> &&,std::string,std::map<std::string,std::unique_ptr<MIL::IRBlock>> &&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> &&)::{lambda(void)#2},std::allocator<std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829DE130;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRFunctionImpl::IRFunctionImpl(std::shared_ptr<MIL::Location const>,std::map<std::string,MIL::IRValueType const*> &&,std::string,std::map<std::string,std::unique_ptr<MIL::IRBlock>> &&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> &&)::{lambda(void)#2},std::allocator<std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 232);
  if (v2 != (v1 + 240))
  {
    do
    {
      result = (*(*v2[7] + 104))(v2[7], v1 + 64);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (v1 + 240));
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRFunctionImpl::IRFunctionImpl(std::shared_ptr<MIL::Location const>,std::map<std::string,MIL::IRValueType const*> &&,std::string,std::map<std::string,std::unique_ptr<MIL::IRBlock>> &&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> &&)::{lambda(void)#2},std::allocator<std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<std::string const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__function::__func<anonymous namespace::IRFunctionImpl::SetBlock(std::unique_ptr<MIL::IRBlock>)::{lambda(void)#1},std::allocator<anonymous namespace::IRFunctionImpl::SetBlock(std::unique_ptr<MIL::IRBlock>)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DE1B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRFunctionImpl::SetBlock(std::unique_ptr<MIL::IRBlock>)::{lambda(void)#1},std::allocator<anonymous namespace::IRFunctionImpl::SetBlock(std::unique_ptr<MIL::IRBlock>)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(v1 + 256) = *v2;
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v1 + 232, (v1 + 208));
  v4 = *v2;
  *v2 = 0;
  v5 = *(v3 + 56);
  *(v3 + 56) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return (*(**(v1 + 256) + 104))(*(v1 + 256), v1 + 64);
}

uint64_t std::__function::__func<anonymous namespace::IRFunctionImpl::SetBlock(std::unique_ptr<MIL::IRBlock>)::{lambda(void)#1},std::allocator<anonymous namespace::IRFunctionImpl::SetBlock(std::unique_ptr<MIL::IRBlock>)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

__n128 std::__function::__func<anonymous namespace::IRFunctionImpl::SetSpecialization(std::string,std::unique_ptr<MIL::IRBlock> &&)::{lambda(void)#1},std::allocator<std::unique_ptr<MIL::IRBlock> &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DE230;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRFunctionImpl::SetSpecialization(std::string,std::unique_ptr<MIL::IRBlock> &&)::{lambda(void)#1},std::allocator<std::unique_ptr<MIL::IRBlock> &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::map<std::string,std::unique_ptr<MIL::IRBlock>>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}