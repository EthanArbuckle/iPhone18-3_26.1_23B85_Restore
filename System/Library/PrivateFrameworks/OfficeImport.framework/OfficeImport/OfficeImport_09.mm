void std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<TSU::UUIDData<TSP::UUIDData>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
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
      while (a2 != a3)
      {
        *(v8 + 1) = *(a2 + 1);
        v9 = *v8;
        v10 = v8[3] ^ v8[2];
        v8[1] = v10;
        inserted = std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__node_insert_multi_prepare(a1, v10, v8 + 2);
        std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__emplace_multi<TSU::UUIDData<TSP::UUIDData> const&>();
  }
}

void sub_25D3DAD78(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
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
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
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

    if (v19 == a2)
    {
      v21 = v16[2] == *a3 && v16[3] == a3[1];
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void *std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
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

void std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

uint64_t std::vector<TSU::UUIDData<TSP::UUIDData>>::__init_with_size[abi:ne200100]<TSU::UUIDData<TSP::UUIDData>*,TSU::UUIDData<TSP::UUIDData>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D3DB358(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TSU::UUIDData<TSP::UUIDData>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, a2);
  }

  std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
}

void *std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void sub_25D3DBD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D3DC874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25D3DCC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3DDB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3E0770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3E3DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25D3E41DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D3E45D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3E5650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a68, 8);
  _Unwind_Resume(a1);
}

uint64_t (*sfu_pbkdf2(uint64_t (*result)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, char *a8, unsigned int a9, char *a10))(uint64_t, uint64_t, char *, uint64_t, char *)
{
  v16 = result;
  v17 = a9 / a2;
  v24 = a9 % a2;
  v18 = &a10[a2];
  if (a2 <= a9)
  {
    v25 = a2;
    v19 = 1;
    do
    {
      v26 = a8;
      v23 = a8;
      v20 = a2;
      v21 = v18;
      v22 = v17;
      result = F(v16, a2, a3, a4, __src, __n, a7, v19, v23, v18);
      v17 = v22;
      v18 = v21;
      a2 = v20;
      a8 = &v26[v25];
      ++v19;
    }

    while (v19 <= v17);
  }

  else
  {
    v19 = 1;
  }

  if (v24)
  {
    F(v16, a2, a3, a4, __src, __n, a7, v19, a10, v18);

    return memcpy(a8, a10, v24);
  }

  return result;
}

void *F(uint64_t (*a1)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, int a8, void *a9, char *a10)
{
  v11 = __n;
  v16 = a2;
  v17 = a10;
  v18 = &a10[a2];
  memcpy(v18, __src, __n);
  v18[v11] = HIBYTE(a8);
  v18[v11 + 1] = BYTE2(a8);
  v18[v11 + 2] = BYTE1(a8);
  v18[v11 + 3] = a8;
  a1(a3, a4, v18, (v11 + 4), a10);
  v19 = v16;
  result = memcpy(a9, a10, v16);
  if (a7 >= 2)
  {
    v21 = 2;
    do
    {
      v22 = v18;
      result = a1(a3, a4, v17, a2, v18);
      if (a2)
      {
        v23 = v19;
        v24 = a9;
        v25 = v18;
        do
        {
          v26 = *v25++;
          *v24++ ^= v26;
          --v23;
        }

        while (v23);
      }

      ++v21;
      v18 = v17;
      v17 = v22;
    }

    while (v21 <= a7);
  }

  return result;
}

id p_currencyCodeStore()
{
  if (p_currencyCodeStore_onceToken != -1)
  {
    p_currencyCodeStore_cold_1();
  }

  v1 = sCurrencyCodeStore;

  return v1;
}

void __p_currencyCodeStore_block_invoke()
{
  v0 = objc_opt_new();
  v1 = sCurrencyCodeStore;
  sCurrencyCodeStore = v0;
}

id TSUCurrencyCodeForIndex(unsigned int a1)
{
  v2 = p_currencyCodeStore();
  v3 = [v2 stringForIndex:a1];

  return v3;
}

void sub_25D3E7E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25D3E9D98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25D3EACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D3ED01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D3EDCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D3EFA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 144), 8);
  _Block_object_dispose((v12 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL TSUEncodedBlockInfoAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 encodedLength];
  if (v5 == [v4 encodedLength])
  {
    v6 = [v3 decodedLength];
    v7 = v6 == [v4 decodedLength];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_25D3F4748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t TSUIOUtilsCGDataProviderGetBytes(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 readToBuffer:a2 size:a3];

  return v6;
}

uint64_t TSUIOUtilsCGDataProviderSkipForward(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 offset];
  [v3 seekToOffset:v4 + a2];
  v5 = [v3 offset] - v4;

  return v5;
}

void TSUIOUtilsCGDataProviderRewind(void *a1)
{
  v1 = a1;
  [v1 seekToOffset:0];
}

void TSUIOUtilsCGDataProviderReleaseInfo(void *a1)
{
  cf = a1;
  [cf close];
  CFRelease(cf);
}

void __TSUIOUtilsCGDataProviderGetBytes_block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __TSUIOUtilsCGDataProviderSkipForward_block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __TSUIOUtilsCGDataProviderRewind_block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __TSUIOUtilsCGDataProviderReleaseInfo_block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void sub_25D3F5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D3F6224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TSULocker::~TSULocker(va);
  _Unwind_Resume(a1);
}

void sub_25D3F62AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TSULocker::~TSULocker(va);
  _Unwind_Resume(a1);
}

void sub_25D3F643C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_25D3F664C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TSULocker::~TSULocker(va);

  _Unwind_Resume(a1);
}

void sub_25D3F693C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, ...)
{
  va_start(va, a8);

  TSULocker::~TSULocker(va);
  _Unwind_Resume(a1);
}

void sub_25D3F6A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TSULocker::~TSULocker(va);

  _Unwind_Resume(a1);
}

void sub_25D3F6B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);

  TSULocker::~TSULocker(va);
  _Unwind_Resume(a1);
}

void sub_25D3F6C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSULocker::TSULocker(TSULocker *this, NSLock *a2)
{
  v3 = a2;
  *this = v3;
  [(NSLock *)v3 lock];
}

void *std::vector<TSU::UUIDData<TSP::UUIDData>>::__assign_with_size[abi:ne200100]<TSU::UUIDData<TSP::UUIDData>*,TSU::UUIDData<TSP::UUIDData>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TSU::UUIDData<TSP::UUIDData>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

void sub_25D3F7B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D3F7CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3F7EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25D3F8FC4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_25D3F98DC(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_25D3F9A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TCBundleResourcePackageEntry;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t TCDumpReadUI8(FILE *__stream)
{
  __ptr = 0;
  if (fread(&__ptr, 1uLL, 1uLL, __stream) != 1)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"UInt8 TCDumpReadUI8(FILE *)"];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCDump.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v1 file:v2 lineNumber:132 isFatal:0 description:"Unexpected number of bytes read"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return __ptr;
}

uint64_t TCDumpReadLEUI32(FILE *a1)
{
  UI8 = TCDumpReadUI8(a1);
  v3 = UI8 | (TCDumpReadUI8(a1) << 8);
  v4 = TCDumpReadUI8(a1);
  return (v4 << 16) | (TCDumpReadUI8(a1) << 24) | v3;
}

void writeIntToXml(xmlNode *a1, uint64_t a2, int a3, int a4, void *a5, void *a6)
{
  v23 = a5;
  v11 = a6;
  if (v23)
  {
    v12 = [v23 typeName];

    if (v12)
    {
      v13 = [v23 typeName];
      sfaxmlSetNSStringNoNsProp(a1, "enumType", v13);
    }

    v14 = [v23 nameForValue:a2];
    if (v14)
    {
      sfaxmlSetNSStringNoNsProp(a1, "enumValue", v14);
    }
  }

  v15 = 117;
  if (a4)
  {
    v15 = 115;
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ci%d", v15, (8 * a3)];
  sfaxmlSetNSStringNoNsProp(a1, "type", v16);
  v17 = a2;
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a2];
  if ((a4 & 1) == 0)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v17];

    v18 = v19;
  }

  sfaxmlSetNSStringNoNsProp(a1, "dec", v18);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08lX", v17];
  v21 = [v20 substringFromIndex:8 - 2 * a3];

  sfaxmlSetNSStringNoNsProp(a1, "hex", v21);
  v22 = [MEMORY[0x277CCABB0] numberWithLong:v17];
  [v11 cacheValueforCurrentField:v22];
}

void writeRealToXml(xmlNode *a1, int a2, double a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"f%d", (8 * a2)];
  sfaxmlSetNSStringNoNsProp(a1, "type", v5);
  sfaxmlSetDoubleNoNsProp(a1, "real", a3);
}

id readIntegerFromBinaryToXml(TCDumpNumeric *a1, NSString *a2, __sFILE *a3, _xmlNode *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = xmlNewNode(0, [(NSString *)v8 UTF8String]);
  xmlAddChild(a4, v9);
  v10 = objc_alloc_init(TCDumpBinaryToXmlState);
  [(TCDumpBinaryToXmlState *)v10 setCurrentField:v8];
  [(TCDumpNumeric *)v7 fromBinary:a3 toXml:v9 state:v10];
  v11 = [(TCDumpBinaryToXmlState *)v10 valueForCurrentField];

  return v11;
}

BOOL CXOptionalStringAttribute(_xmlNode *a1, void *a2, xmlChar *a3, void *a4)
{
  v7 = a2;
  v8 = CXFindAttribute(a1, v7, a3);
  if (v8)
  {
    *a4 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:v8];
  }

  return v8 != 0;
}

void sub_25D3FE0B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

TCMessageEntry *createEntryForException(NSException *a1, ...)
{
  va_start(va, a1);
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TCMessageEntry *createEntryForException(NSException *__strong, ...)"}];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCMessageContext.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:437 isFatal:0 description:"All exceptions passed to TCMessageContext should be non-nil."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSException *)v1 getEntry];
  }

  else
  {
    v5 = TCUnknownProblemMessage;
    v6 = [(NSException *)v1 name];
    v7 = [v6 isEqualToString:*MEMORY[0x277CBE728]];

    if (v7)
    {
      v8 = TCOutOfMemoryMessage;

      v5 = v8;
    }

    v9 = [TCMessageEntry alloc];
    v10 = [v5 messageTag];
    v11 = [v5 messageText];
    v4 = [(TCMessageEntry *)v9 initWithTag:v10 affectedObject:0 text:v11 parameters:va];
  }

  return v4;
}

void sub_25D3FE57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D3FE954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_25D3FEB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t TCVerifyInputMeetsCondition(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25D401074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D401284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D4017C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D402140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id TCInvalidXmlCharacterSet(void)
{
  if (TCInvalidXmlCharacterSet(void)::onceToken != -1)
  {
    TCInvalidXmlCharacterSet();
  }

  v1 = TCInvalidXmlCharacterSet(void)::invalidXmlCharacterSet;

  return v1;
}

void ___Z24TCInvalidXmlCharacterSetv_block_invoke()
{
  v3 = objc_opt_new();
  [v3 addCharactersInString:@"\t\r\n"];
  [v3 addCharactersInRange:{32, 55264}];
  [v3 addCharactersInRange:{57344, 8190}];
  [v3 addCharactersInRange:{0x10000, 0x100000}];
  v0 = [v3 invertedSet];
  v1 = [v0 copy];
  v2 = TCInvalidXmlCharacterSet(void)::invalidXmlCharacterSet;
  TCInvalidXmlCharacterSet(void)::invalidXmlCharacterSet = v1;
}

void sub_25D402C38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25D402CBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t anonymous namespace::TSWPNumberFromArabicString(_anonymous_namespace_ *this, NSString *a2)
{
  v2 = this;
  v3 = [MEMORY[0x277CCAC80] scannerWithString:v2];
  v14 = 0;
  if ([v3 scanInt:&v14] && ((v4 = objc_msgSend(v3, "isAtEnd"), v5 = v14, v14 >= 0) ? (v6 = v4) : (v6 = 0), v6 == 1))
  {
    v7 = v3;
  }

  else
  {
    v13 = 0.0;
    v7 = [MEMORY[0x277CCAC80] scannerWithString:v2];

    if ([v7 scanFloat:&v13])
    {
      v8 = [v7 isAtEnd];
      if (v13 >= 0.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 == 1;
      v11 = vcvtas_u32_f32(v13);
      if (v10)
      {
        v5 = v11;
      }

      else
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t anonymous namespace::TSWPNumberFromRomanUpperLabel(_anonymous_namespace_ *this, NSString *a2)
{
  v2 = this;
  v3 = [(_anonymous_namespace_ *)v2 UTF8String];
  LOBYTE(v4) = *v3;
  if (*v3)
  {
    v5 = 0;
    v6 = MEMORY[0x277D85DE0];
    while (1)
    {
      if ((v4 & 0x80) != 0)
      {
        v7 = __maskrune(v4, 0x100uLL);
      }

      else
      {
        v7 = *(v6 + 4 * v4 + 60) & 0x100;
      }

      if (!v7 || (v8 = (*v3 & 0xFFFFFFFFFFFFFFDFLL) - 65, ((0x34FE4F3uLL >> v8) & 1) != 0))
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_17;
      }

      if (!v3[1])
      {
        break;
      }

      if (v10 <= v9)
      {
        v4 = v3[1];
      }

      else
      {
        v9 = v10 - v9;
        v4 = v3[2];
        ++v3;
      }

      v5 += v9;
      ++v3;
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    v5 += v9;
  }

  else
  {
    v5 = 0;
  }

LABEL_17:

  return v5;
}

uint64_t anonymous namespace::TSWPNumberFromRomanLowerLabel(_anonymous_namespace_ *this, NSString *a2)
{
  v2 = [(_anonymous_namespace_ *)this uppercaseString];

  return v4;
}

uint64_t anonymous namespace::TSWPNumberFromAlphaUpperLabel(_anonymous_namespace_ *this, NSString *a2)
{
  v2 = this;
  v3 = [(_anonymous_namespace_ *)v2 length];
  v4 = [(_anonymous_namespace_ *)v2 UTF8String];
  v5 = *v4;
  if (v3)
  {
    v6 = 0;
    v7 = MEMORY[0x277D85DE0];
    while (v5 < 0 ? __maskrune(v5, 0x100uLL) : *(v7 + 4 * v5 + 60) & 0x100)
    {
      v5 = *v4;
      if (((v4[v6] ^ *v4) & 0xDF) != 0)
      {
        break;
      }

      if (v3 == ++v6)
      {
        goto LABEL_9;
      }
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_9:
    v9 = 26 * v3 + (v5 & 0xDF) - 90;
  }

  return v9;
}

uint64_t anonymous namespace::TSWPNumberFromAlphaLowerLabel(_anonymous_namespace_ *this, NSString *a2)
{
  v2 = [(_anonymous_namespace_ *)this uppercaseString];

  return v4;
}

uint64_t anonymous namespace::TSWPArabicLabelFromNumber(_anonymous_namespace_ *this)
{
  v1 = this;
  if (!this)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPArabicLabelFromNumber"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:425 isFatal:0 description:"Illegal value for arabic numeral topic label <= 0"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (v1 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v1;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v4];
}

id anonymous namespace::TSWPRomanUpperLabelFromNumber(_anonymous_namespace_ *this)
{
  v1 = this;
  {
    if (v1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!this)
  {
LABEL_3:
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPRomanUpperLabelFromNumber"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:528 isFatal:0 description:"Illegal value for roman numeral topic label <= 0"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

LABEL_4:
  if (v1 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v1;
  }

  v5 = [MEMORY[0x277CCAB68] string];
  v6 = 12;
  do
  {
    if (v4 >= *v7)
    {
      v8 = *(v7 + 1);
      do
      {
        [v5 appendString:v8];
        v4 -= *v7;
      }

      while (v4 >= *v7);
    }

    v10 = v6-- != 0;
  }

  while (v4 && v10);

  return v5;
}

id anonymous namespace::TSWPRomanLowerLabelFromNumber(_anonymous_namespace_ *this)
  v1 = {;
  v2 = [v1 lowercaseString];

  return v2;
}

id anonymous namespace::TSWPAlphaLowerLabelFromNumber(_anonymous_namespace_ *this)
  v1 = {;
  v2 = [v1 lowercaseString];

  return v2;
}

id anonymous namespace::TSWPFootnoteSymbolFromNumber(_anonymous_namespace_ *this)
{
  v1 = this;
  v2 = [MEMORY[0x277CCAB68] string];
  v4 = -1;
  do
  {
    [v2 appendFormat:@"%C", v3];
    ++v4;
  }

  while ((v1 - 1) >> 2 > v4);

  return v2;
}

id anonymous namespace::ideographicNumberStringForValue(uint64_t a1, unsigned int a2)
{
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = v4;
  v6 = a2;
  if (a1)
  {
    v9 = v4;
    v24 = v9;
    v25 = a2;
    v26 = 1;
    v11 = v27 = v8;
    [v9 appendString:v11];

    v23 = *v12;
    v13 = [MEMORY[0x277CCACA8] stringWithCharacters:&v23 length:1];
    if (a2 && a2 != 3)
    {
      v18 = MEMORY[0x277CBEB18];
      v19 = [v9 componentsSeparatedByString:v13];
      v14 = [v18 arrayWithArray:v19];

      [v14 removeObject:&stru_286EE1130];
      v20 = [v14 componentsJoinedByString:v13];
      v15 = [v20 mutableCopy];

      if ([v15 length] >= 2)
      {
        v21 = [v15 characterAtIndex:0];
        v22 = [v15 characterAtIndex:1];
        {
          [v15 deleteCharactersInRange:{0, 1}];
        }
      }
    }

    else
    {
      v14 = [v9 stringByReplacingOccurrencesOfString:v13 withString:&stru_286EE1130];
      v15 = [v14 mutableCopy];
    }

    v16 = v15;
  }

  else
  {
    v16 = v5;
  }

  return v16;
}

id anonymous namespace::TSWPCircledNumberLabelFromNumber(_anonymous_namespace_ *this)
{
  if (!this)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPCircledNumberLabelFromNumber"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:825 isFatal:0 description:"Illegal value for circled number numeral topic label <= 0"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v4 = 0;
  while (1)
  {
    {
      break;
    }

    if (++v4 == 3)
    {
      goto LABEL_7;
    }
  }

  v6 = [MEMORY[0x277CCACA8] stringWithCharacters:&v8 length:1];
  if (!v6)
  {
    v6 = LABEL_7:;
  }

  return v6;
}

id anonymous namespace::TSWPArabicLabelFromNumberAndLocale(_anonymous_namespace_ *this, void *a2, NSString *a3)
{
  v3 = this;
  v4 = a2;
  if (!v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *(anonymous namespace)::TSWPArabicLabelFromNumberAndLocale(unsigned int, NSString *__strong)"}];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:437 isFatal:0 description:"Illegal value for arabic numeral topic label <= 0"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (v3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3;
  }

  v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v9 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v4];
  [v8 setLocale:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v11 = [v8 stringFromNumber:v10];

  return v11;
}

id anonymous namespace::TSWPArabianAbjadLabelFromNumber(_anonymous_namespace_ *this, unsigned int a2, unsigned __int16 *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (this < 0xF4240)
  {
    v6 = this;
    if (this)
    {
      if (this >= 0x3E8)
      {
        v8 = this / 0x3E8;
        v7 = v9 + 1;
        *&__b[2 * v9] = 39;
        v6 = (v6 - 1000 * v8);
      }

      else
      {
        v7 = 0;
      }

      if (v10 >= 0xC)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPArabianAbjadLabelFromNumber(uint)"];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:778 isFatal:0 description:"string out of bounds"];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v5 = [MEMORY[0x277CCACA8] stringWithCharacters:__b length:v10];
    }

    else
      v5 = {;
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPArabianAbjadLabelFromNumber(uint)"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:754 isFatal:0 description:"number out of bounds for algorithm"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v5 = 0;
  }

  return v5;
}

id anonymous namespace::TSWPHebrewBiblicalLabelFromNumber(_anonymous_namespace_ *this, unsigned int a2, unsigned __int16 *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (this < 0xF4240)
  {
    v6 = this;
    if (this)
    {
      if (this >= 0x3E8)
      {
        v8 = this / 0x3E8;
        v7 = v9 + 1;
        *&__b[2 * v9] = 1523;
        v6 = (v6 - 1000 * v8);
      }

      else
      {
        v7 = 0;
      }

      if (v10 >= 0xE)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPHebrewBiblicalLabelFromNumber(uint)"];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:715 isFatal:0 description:"string out of bounds"];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v5 = [MEMORY[0x277CCACA8] stringWithCharacters:__b length:v10];
    }

    else
      v5 = {;
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPHebrewBiblicalLabelFromNumber(uint)"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:693 isFatal:0 description:"Hebrew number out of bounds for algorithm"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v5 = 0;
  }

  return v5;
}

id anonymous namespace::alphabeticLabelStringForValue(_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  v5 = this;
  v6 = [MEMORY[0x277CCAB68] string];
  if (v5)
  {
    v7 = (v5 - 1);
    v8 = *(a2 + 2 * (v7 % a3));
    if ((v7 / a3 + 1) < 100)
    {
      v9 = v7 / a3 + 1;
    }

    else
    {
      v9 = 100;
    }

    while (1)
    {
      v10 = __OFSUB__(v9--, 1);
      if (v9 < 0 != v10)
      {
        break;
      }

      [v6 tsu_appendCharacter:v8];
    }
  }

  return v6;
}

void anonymous namespace::appendIdeographicDigit(void *a1, unsigned int a2, int a3)
{
  v7 = a1;
  if (a2 >= 0xA)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void (anonymous namespace)::appendIdeographicDigit(NSMutableString *__strong, unsigned int, TSWPListIdeographicType)"}];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:198 isFatal:0 description:"inDigit is larger than single digit"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

uint64_t std::accumulate[abi:ne200100]<anonymous namespace::IdeographicNumber const*,unsigned int,anonymous namespace::BinderConvertIdeographicPowerOfTen<void (*)(NSMutableString *,unsigned int)>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v8 = *(a4 + 8);
      v9 = *(a4 + 12);
      v10 = *(a4 + 16);
      v11 = *a4;
      v12 = v11;
      v13 = *v7;
      v14 = a3 / *v7;
      if (a3 && (v14 != 1 || (v9 & 1) != 0 || v8 && v8 != 3))
      {
        v10(v11, a3 / v13);
      }

      if (v13 <= a3)
      {
        [v12 tsu_appendCharacter:*(v7 + 4)];
      }

      v15 = *v7;
      v7 += 8;
      a3 = a3 - v15 * v14;
    }

    while (v7 != a2);
  }

  return a3;
}

id anonymous namespace::ideographicNumberStringForSmallValue(uint64_t a1, unsigned int a2)
{
  if (a1 >> 4 >= 0x271)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSMutableString *(anonymous namespace)::ideographicNumberStringForSmallValue(unsigned int, TSWPListIdeographicType, BOOL)"}];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:311 isFatal:0 description:"inValue too large for ideographicNumberStringForSmallValue"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v6 = [MEMORY[0x277CCAB68] string];
  v8 = v6;
  v11 = v8;
  v12 = a2;
  v13 = 0;
  v14 = v7;
  if (v9)
  {
  }

  return v8;
}

void anonymous namespace::appendMultipleIdeographicDigitsJapanese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v3 = v4 = this;
  [(_anonymous_namespace_ *)v4 appendString:v3];
}

void anonymous namespace::appendMultipleIdeographicDigitsSimplifiedChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v3 = v4 = this;
  [(_anonymous_namespace_ *)v4 appendString:v3];
}

void anonymous namespace::appendMultipleIdeographicDigitsTraditionalChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v3 = v4 = this;
  [(_anonymous_namespace_ *)v4 appendString:v3];
}

void anonymous namespace::appendMultipleIdeographicDigitsFormalJapanese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v3 = v4 = this;
  [(_anonymous_namespace_ *)v4 appendString:v3];
}

void anonymous namespace::appendMultipleIdeographicDigitsFormalSimplifiedChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v3 = v4 = this;
  [(_anonymous_namespace_ *)v4 appendString:v3];
}

void anonymous namespace::appendMultipleIdeographicDigitsFormalTraditionalChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v3 = v4 = this;
  [(_anonymous_namespace_ *)v4 appendString:v3];
}

id anonymous namespace::cjkLabelStringForValue(_anonymous_namespace_ *this, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v7) = this;
  v8 = [MEMORY[0x277CCAB68] string];
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = (v7 - 1);
      if (a4)
      {
        v11 = *(a2 + 2 * (v10 % a3)) + 96;
      }

      else
      {
        v11 = *(a2 + 2 * (v10 % a3));
      }

      [v8 tsu_insertCharacter:v11 atIndex:0];
      v12 = v10 - (v10 % a3);
      if (v12 < a3)
      {
        break;
      }

      v7 = v12 / a3;
    }

    while (v9++ < 0x64);
  }

  return v8;
}

unint64_t anonymous namespace::toAbjadUnder1000(_anonymous_namespace_ *this, char *__b, unsigned __int16 *a3)
{
  v4 = this;
  if (this >= 0x190)
  {
    v5 = this / 0x190uLL;
    memset_pattern16(__b, &unk_25D6FB060, 2 * (v5 - 1) + 2);
  }

  else
  {
    v5 = 0;
  }

  if (v4 % 0x190 >= 0x64)
  {
    v5 = (v5 + 1);
  }

  v6 = v4 % 0x190 % 0x64;
  if (v6 - 15 > 1)
  {
    if (v6 >= 0xA)
    {
      v5 = (v5 + 1);
    }

    if (v4 % 0x190 % 0x64 % 0xA)
    {
      v5 = (v5 + 1);
    }
  }

  else
  {
    v7 = &__b[2 * v5];
    *v7 = 1610;
    v5 = (v5 + 2);
  }

  if (v5 >= 6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint (anonymous namespace)::toAbjadUnder1000(uint, unichar *)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:748 isFatal:0 description:"string out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return v5;
}

unint64_t anonymous namespace::toHebrewUnder1000(_anonymous_namespace_ *this, char *__b, unsigned __int16 *a3)
{
  v4 = this;
  if (this >= 0x190)
  {
    v5 = this / 0x190uLL;
    memset_pattern16(__b, &unk_25D6FB070, 2 * (v5 - 1) + 2);
  }

  else
  {
    v5 = 0;
  }

  if (v4 % 0x190 >= 0x64)
  {
    *&__b[2 * v5] = v4 % 0x190 / 0x64 + 1510;
    v5 = (v5 + 1);
  }

  v6 = v4 % 0x190 % 0x64;
  if (v6 - 15 <= 1)
  {
    v7 = &__b[2 * v5];
    *v7 = 1496;
    LODWORD(v5) = v5 + 2;
    *(v7 + 1) = v6 + 1478;
LABEL_13:
    v8 = v5;
    v9 = &__b[2 * v5];
    *v9 = *(v9 - 1);
    *(v9 - 1) = 1524;
    v5 = (v5 + 1);
    if (v8 >= 6)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint (anonymous namespace)::toHebrewUnder1000(uint, unichar *)"}];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:687 isFatal:0 description:"string out of range"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    return v5;
  }

  if (v4 % 0x190 % 0x64 >= 0xA)
  {
    v5 = (v5 + 1);
  }

  if (v4 % 0x190 % 0x64 % 0xA)
  {
    *&__b[2 * v5] = v4 % 0x190 % 0x64 % 0xA + 1487;
    v5 = (v5 + 1);
  }

  if (v5 >= 2)
  {
    goto LABEL_13;
  }

  return v5;
}

uint64_t pTCXmlCheckName(_xmlNode *a1, CXNamespace *a2, xmlChar *str2)
{
  if (!a1)
  {
    return [MEMORY[0x277CBEAD8] raise:@"TCXmlException" format:{@"Could not find node: %s", str2}];
  }

  if (!xmlStrEqual(a1->name, str2))
  {
    return [MEMORY[0x277CBEAD8] raise:@"TCXmlException" format:{@"Could not find node: %s", str2}];
  }

  result = [(CXNamespace *)a2 containsNode:a1];
  if ((result & 1) == 0)
  {
    return [MEMORY[0x277CBEAD8] raise:@"TCXmlException" format:{@"Could not find node: %s", str2}];
  }

  return result;
}

xmlNodePtr CXGetRootElement(const unsigned __int8 *a1, unsigned int a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithBytes:a1 length:a2 encoding:4];
  Doc = xmlReadDoc([v2 tc_xmlString], 0, 0, 97);

  return xmlDocGetRootElement(Doc);
}

_xmlNode *CXRequiredLongChild(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, int a4)
{
  result = pCXFindChild(a1, a2, a3);
  if (result)
  {
    Content = xmlNodeGetContent(result);
    v7 = CXLongValueFromString(Content, Content, a4);
    free(Content);
    return v7;
  }

  return result;
}

uint64_t CXLongValueFromString(int a1, char *__str, int a3)
{
  v9 = 0.0;
  v8 = 0;
  CXSplitValueAndUnitXML(__str, &v9, &v8);
  if (v8)
  {
    if (a3)
    {
      v5 = CXUnitToPoint(v8);
      return (v9 * (v5 / CXUnitToPoint(a3)));
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v10 = 0;
    if (__str)
    {
      sfaxmlXmlCharToLong(__str, &v10);
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t CXLongValue(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  if (!v3 || *(v3 + 48) || (*(v3 + 8) - 3) > 1)
  {
    String = xmlNodeListGetString(*(a1 + 64), v3, 1);
    v7 = CXLongValueFromString(String, String, a2);
    free(String);
    return v7;
  }

  else
  {
    v4 = *(v3 + 80);

    return CXLongValueFromString(a1, v4, a2);
  }
}

void CXSplitValueAndUnitXML(char *__str, double *a2, _DWORD *a3)
{
  *a2 = 0.0;
  *a3 = 0;
  v4 = *__str;
  if (*__str)
  {
    v6 = 1;
    while ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x400) != 0)
    {
      v4 = __str[v6++];
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithXmlString:__str];
    CXSplitValueAndUnit(v7, a2, a3);
  }

  else
  {
LABEL_5:
    *a2 = strtol(__str, 0, 10);
  }
}

uint64_t CXSplitValueAndUnit(void *a1, void *a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  result = [a1 length];
  v7 = result;
  if (!result)
  {
    return result;
  }

  result = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v8 = result;
  if (v7 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      result = [v8 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v9)}];
      if (!result)
      {
        break;
      }

      if ((v7 & 0x7FFFFFFF) == ++v9)
      {
        v10 = v7;
        goto LABEL_9;
      }
    }

    v10 = v9;
  }

LABEL_9:
  v11 = v7;
  v12 = v10;
  if (v10 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v10;
  }

  v14 = v7 + 1;
  while (v11 > v12)
  {
    result = [v8 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", --v11)}];
    --v14;
    if ((result & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v14 = v13;
LABEL_17:
  if (v14 == v12)
  {
    return result;
  }

  v23 = a3;
  v15 = 0;
  v16 = (v14 - v12);
  v17 = v14 - 1;
  v18 = MEMORY[0x277D85DE0];
  while (1)
  {
    v19 = [a1 characterAtIndex:v17];
    v20 = v19;
    if (v19 <= 0x7F)
    {
      break;
    }

    if (!__maskrune(v19, 0x100uLL))
    {
      goto LABEL_23;
    }

LABEL_25:
    ++v15;
    --v17;
    if (v16 == v15)
    {
      goto LABEL_26;
    }
  }

  if ((*(v18 + 4 * v19 + 60) & 0x100) != 0)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v20 == 37 || !v20)
  {
    goto LABEL_25;
  }

  LODWORD(v16) = v15;
LABEL_26:
  if (v12 || v14 != v7 || v16)
  {
    result = [objc_msgSend(a1 substringWithRange:{v12, v14 - (v12 + v16)), "doubleValue"}];
    *a2 = v21;
    if (v16)
    {
      result = CXUnitWithName([a1 substringWithRange:{v14 - v16, v16}]);
      *v23 = result;
    }
  }

  else
  {
    result = [a1 doubleValue];
    *a2 = v22;
  }

  return result;
}

double CXUnitToPoint(int a1)
{
  v7 = a1 - 6;
  if (a1 - 6) < 0xB && ((0x77Fu >> v7))
  {
    return dbl_25D6FB098[v7];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"double CXUnitToPoint(CXUnit)", v4, v3, v2, v1, v5, v6}];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCXmlUtilities.mm"], 973, 0, "Unhandled attribute value unit");
  +[OITSUAssertionHandler logBacktraceThrottled];
  return 1.0;
}

_xmlAttr *CXRequiredLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, int a4)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {

    return CXLongValue(result, a4);
  }

  return result;
}

BOOL CXOptionalLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t *a4, int a5)
{
  v7 = CXFindAttribute(a1, a2, a3);
  v8 = v7;
  if (v7)
  {
    *a4 = CXLongValue(v7, a5);
  }

  return v8 != 0;
}

uint64_t CXDefaultLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t a4, int a5)
{
  v7 = CXFindAttribute(a1, a2, a3);
  if (!v7)
  {
    return a4;
  }

  return CXLongValue(v7, a5);
}

uint64_t CXOptionalUnsignedAttributeFromHex8X(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, unsigned int *a4)
{
  v7 = 0;
  result = CXOptionalStringAttribute(a1, a2, a3, &v7);
  if (result)
  {
    v6 = 0;
    result = [objc_msgSend(MEMORY[0x277CCAC80] scannerWithString:{v7), "scanHexInt:", &v6}];
    if (result)
    {
      *a4 = v6;
    }
  }

  return result;
}

double CXFraction(NSString *a1)
{
  v5 = 0.0;
  v4 = 0;
  CXSplitValueAndUnit(a1, &v5, &v4);
  if (v4 == 13)
  {
    v2 = v5;
    v3 = 100.0;
  }

  else
  {
    result = 0.0;
    if (v4)
    {
      return result;
    }

    v2 = v5;
    v3 = 100000.0;
  }

  return v2 / v3;
}

void CXRequiredFractionAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v3 = CXFindAttribute(a1, a2, a3);
  if (v3)
  {
    children = v3->children;
    if (!children || children->next || children->type != XML_TEXT_NODE || (content = children->content, *content != 48) || content[1])
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:v3];
      if (v6)
      {
        v7 = v6;
        CXFraction(v6);
      }
    }
  }
}

BOOL CXOptionalFractionAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, double *a4)
{
  v7 = 0;
  CXOptionalStringAttribute(a1, a2, a3, &v7);
  v5 = v7;
  if (v7)
  {
    *a4 = CXFraction(v7);
  }

  return v5 != 0;
}

double CXDefaultFractionAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, double a4)
{
  v7 = 0;
  CXOptionalStringAttribute(a1, a2, a3, &v7);
  v5 = v7;
  if (!v7)
  {
    return a4;
  }

  return CXFraction(v5);
}

double CXRequiredDoubleAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v3 = CXFindAttribute(a1, a2, a3);
  if (!v3)
  {
    return 0.0;
  }

  return CXDoubleValue(v3);
}

BOOL CXOptionalBoolAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, BOOL *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXBoolValue(v5);
  }

  return v6 != 0;
}

uint64_t CXDefaultBoolAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  return CXBoolValue(v5);
}

NSString *CXRequiredBase64DecodedDataAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXRequiredStringAttribute(a1, a2, a3);
  if (result)
  {

    return decodeBase64(result);
  }

  return result;
}

uint64_t decodeBase64(NSString *a1)
{
  if (([removeCRs(a1) length] & 3) == 0)
  {
    operator new[]();
  }

  return 0;
}

NSString *CXChildDefaultStringContent(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, NSString *a4)
{
  v5 = pCXFindChild(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  v6 = v5;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);

  return [v7 tc_initWithContentOfXmlNode:v6];
}

NSString *CXDefaultStringContent(_xmlNode *a1, NSString *a2)
{
  if (!a1)
  {
    return a2;
  }

  v3 = objc_alloc(MEMORY[0x277CCACA8]);

  return [v3 tc_initWithContentOfXmlNode:a1];
}

uint64_t CXDateForISO8601WithString(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)a1 hasSuffix:@"Z"])
  {
    v1 = [(NSString *)v1 substringToIndex:[(NSString *)v1 length]- 1];
  }

  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setTimeStyle:4];
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS"];
  result = [v2 dateFromString:v1];
  if (!result)
  {
    [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZ"];
    result = [v2 dateFromString:v1];
    if (!result)
    {
      [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss ZZZ"];
      result = [v2 dateFromString:v1];
      if (!result)
      {
        [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
        result = [v2 dateFromString:v1];
        if (!result)
        {
          [v2 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss z"];
          result = [v2 dateFromString:v1];
          if (!result)
          {
            [v2 setDateFormat:@"EEEE, dd-MMM-yy HH:mm:ss z"];
            result = [v2 dateFromString:v1];
            if (!result)
            {
              [v2 setDateFormat:@"EEE MMM d HH:mm:ss yyyy"];
              result = [v2 dateFromString:v1];
              if (!result)
              {
                [v2 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
                result = [v2 dateFromString:v1];
                if (!result)
                {
                  [v2 setDateFormat:&stru_286EE1130];

                  return [v2 dateFromString:v1];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t decodeBase64Char(int a1)
{
  v1 = a1 - 65;
  if (a1 == 47)
  {
    v2 = 63;
  }

  else
  {
    v2 = -1;
  }

  if (a1 == 61)
  {
    v3 = 64;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 43)
  {
    v4 = 62;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 - 48) <= 9)
  {
    v5 = a1 + 4;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 - 97) <= 0x19)
  {
    v6 = a1 - 71;
  }

  else
  {
    v6 = v5;
  }

  if (v1 > 0x19)
  {
    LOBYTE(v1) = v6;
  }

  return v1;
}

void *removeCRs(NSString *a1)
{
  v2 = [(NSString *)a1 length];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:v2];
  v4 = [(NSString *)a1 componentsSeparatedByString:@"\n"];
  v5 = [(NSArray *)v4 count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      [v3 appendString:{-[NSArray objectAtIndex:](v4, "objectAtIndex:", i)}];
    }
  }

  return v3;
}

uint64_t CXUnitWithName(NSString *a1)
{
  v2 = CXUnitWithName(NSString *)::unitNameToUnitMap;
  if (!CXUnitWithName(NSString *)::unitNameToUnitMap)
  {
    v18 = objc_alloc(MEMORY[0x277CBEAC0]);
    v17 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:3];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:5];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:4];
    v3 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:7];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:8];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:9];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:10];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:11];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:11];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:12];
    v2 = [v18 initWithObjectsAndKeys:{v17, @"f", v16, @"fd", v15, @"deg", v14, @"rad", v13, @"grad", v3, @"pt", v4, @"in", v5, @"cm", v6, @"mm", v7, @"px", v8, @"pc", v9, @"pi", v10, @"emu", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", 13), @"%", 0}];
    CXUnitWithName(NSString *)::unitNameToUnitMap = v2;
  }

  v11 = [v2 objectForKey:{-[NSString lowercaseString](a1, "lowercaseString")}];

  return [v11 intValue];
}

CXNamespace *CXXmlStrEqualToNsUriOrFallbackNsUri(const unsigned __int8 *a1, CXNamespace *a2)
{
  v2 = a2;
  for (i = a2; !xmlStrEqual(a1, [(CXNamespace *)i uri]); v2 = i)
  {
    result = [(CXNamespace *)v2 fallbackNamespace];
    if (!result)
    {
      return result;
    }

    i = [(CXNamespace *)v2 fallbackNamespace];
  }

  return 1;
}

xmlAttrPtr CXXmlHasNsPropWithFallbackNs(_xmlNode *a1, const unsigned __int8 *a2, CXNamespace *a3)
{
  v3 = a3;
  for (i = a3; ; v3 = i)
  {
    result = xmlHasNsProp(a1, a2, [(CXNamespace *)i uri]);
    if (result)
    {
      break;
    }

    result = [(CXNamespace *)v3 fallbackNamespace];
    if (!result)
    {
      break;
    }

    i = [(CXNamespace *)v3 fallbackNamespace];
  }

  return result;
}

xmlNsPtr CXXmlSearchNsByHrefWithFallbackNs(_xmlDoc *a1, _xmlNode *a2, CXNamespace *a3)
{
  v3 = a3;
  for (i = a3; ; v3 = i)
  {
    result = xmlSearchNsByHref(a1, a2, [(CXNamespace *)i uri]);
    if (result)
    {
      break;
    }

    result = [(CXNamespace *)v3 fallbackNamespace];
    if (!result)
    {
      break;
    }

    i = [(CXNamespace *)v3 fallbackNamespace];
  }

  return result;
}

__CFString *TCXmlStringForBool(int a1)
{
  if (a1)
  {
    return @"1";
  }

  else
  {
    return @"0";
  }
}

void sub_25D4093B8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_25D409620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

id sfaxmlDumpNodeToRetainedNSData(xmlNode *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (a1)
  {
    v3 = xmlKeepBlanksDefault(0);
    IO = xmlOutputBufferCreateIO(sfaxmlNSMutableDataWriteCallback, 0, v2, 0);
    xmlNodeDumpOutput(IO, a1->doc, a1, 0, 1, 0);
    xmlOutputBufferClose(IO);
    xmlKeepBlanksDefault(v3);
  }

  return v2;
}

__CFString *sfaxmlNodeDescription(xmlNode *a1)
{
  if (!a1)
  {
    return @"null node";
  }

  v1 = sfaxmlDumpNodeToRetainedNSData(a1);
  v4 = 0;
  [v1 appendBytes:&v4 length:1];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v1, "bytes")}];

  return v2;
}

uint64_t sfaPopZLibFileReadHandlers_libxml(int a1)
{
  result = xmlPopInputCallbacks();
  if (result != a1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void sfaPopZLibFileReadHandlers_libxml(int)"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/SFArchiving/SFArchivingUtils.mm"], 172, 0, "Unbalanced calls to Push/PopZLibFileReadHandlers_libxml");

    return +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return result;
}

dispatch_queue_t __sfaxmlSAXParseFile_block_invoke()
{
  if (sfaxmlInitMultiThreadedLibXMLUse::once != -1)
  {
    __sfaxmlSAXParseFile_block_invoke_cold_1();
  }

  result = dispatch_queue_create("SFArchivingUtils parsing queue", 0);
  sfaxmlSAXParseFile::parsingQueue = result;
  return result;
}

uint64_t __sfaxmlSAXParseFile_block_invoke_2(uint64_t a1)
{
  v2 = xmlSubstituteEntitiesDefault(*(a1 + 60));
  v3 = xmlRegisterInputCallbacks(sfagzfileMatch_libxml, sfagzfileOpen_libxml, sfagzfileRead_libxml, sfagzfileClose_libxml);
  *(*(*(a1 + 32) + 8) + 24) = xmlSAXParseFile(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  sfaPopZLibFileReadHandlers_libxml(v3);

  return xmlSubstituteEntitiesDefault(v2);
}

id TCStringEncodingToNSString(uint64_t a1)
{
  v2 = TCStringEncodingEnumMap();
  v3 = [v2 stringForValue:a1];

  return v3;
}

id TCMacLanguageEnumMap(void)
{
  v0 = TCMacLanguageEnumMap(void)::theEnumMap;
  if (!TCMacLanguageEnumMap(void)::theEnumMap)
  {
    {
      TCMacLanguageEnumMap();
    }

    v1 = [[TCEnumerationMap alloc] initWithStructs:&TCMacLanguageEnumMap(void)::theEnumStructs count:120 caseSensitive:1];
    v2 = TCMacLanguageEnumMap(void)::theEnumMap;
    TCMacLanguageEnumMap(void)::theEnumMap = v1;

    v0 = TCMacLanguageEnumMap(void)::theEnumMap;
  }

  return v0;
}

id TCFontStyling::equivalentDictionary(TCFontStyling *this)
{
  v2 = MEMORY[0x277CBEAC0];
  fontClass = this->fontClass;
  v4 = TCFontClassEnumMap();
  v5 = [v4 stringForValue:fontClass];

  v6 = TCStringEncodingToNSString(this->stringEncoding);
  v7 = [MEMORY[0x277CCABB0] numberWithChar:this->weight];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:this->italic];
  width = this->width;
  v10 = TCFontWidthEnumMap();
  v11 = [v10 stringForValue:width];

  v12 = [v2 dictionaryWithObjectsAndKeys:{v5, @"class", v6, @"string-encoding", v7, @"weight", v8, @"italic", v11, @"width", 0}];

  return v12;
}

unint64_t TCFontStyling::createWithDictionary(TCFontStyling *this, NSDictionary *a2)
{
  v2 = this;
  v13 = [(TCFontStyling *)v2 objectForKeyedSubscript:@"class"];
  v3 = TCFontClassEnumMap();
  v4 = [v3 valueForString:v13];

  v12 = [(TCFontStyling *)v2 objectForKeyedSubscript:@"string-encoding"];
  v5 = TCStringEncodingEnumMap();
  v6 = [v5 valueForString:v12];

  v7 = [(TCFontStyling *)v2 objectForKeyedSubscript:@"weight"];
  [v7 intValue];
  v8 = [(TCFontStyling *)v2 objectForKeyedSubscript:@"italic"];
  [v8 BOOLValue];
  v9 = [(TCFontStyling *)v2 objectForKeyedSubscript:@"width"];
  v10 = TCFontWidthEnumMap();
  [v10 valueForString:v9];

  return v4 | (v6 << 32);
}

void sub_25D40AB58(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25D40AC14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id TCFontMacLanguageIDToNSString(unsigned __int16 a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a1];
  v2 = [v1 stringValue];

  return v2;
}

uint64_t TCFontMacLanguageIDFromNSString(NSString *a1)
{
  v1 = a1;
  v2 = TCMacLanguageEnumMap();
  v3 = [v2 valueForString:v1];

  if (v3 == -130883970)
  {
    v3 = [(NSString *)v1 intValue];
  }

  return v3;
}

void sub_25D40C7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{

  _Unwind_Resume(a1);
}

void sub_25D40D9D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t TCFontFamilyIsPi(NSString *a1)
{
  v1 = a1;
  v2 = TCFontFamilyIsPi(NSString *)::piFontFamilies;
  if (!TCFontFamilyIsPi(NSString *)::piFontFamilies)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Bookshelf Symbol 7", @"Monotype Sorts", @"MS Outlook", @"MS Reference Specialty", @"MT Extra", @"Marlett", @"Webdings", @"Wingdings", @"Wingdings 2", @"Wingdings 3", 0}];
    v4 = TCFontFamilyIsPi(NSString *)::piFontFamilies;
    TCFontFamilyIsPi(NSString *)::piFontFamilies = v3;

    v2 = TCFontFamilyIsPi(NSString *)::piFontFamilies;
  }

  v5 = [v2 containsObject:v1];

  return v5;
}

uint64_t TCFontFamilyHasCodePointsInPiRange(NSString *a1)
{
  v1 = a1;
  v2 = TCFontFamilyHasCodePointsInPiRange(NSString *)::fontFamiliesWithCodePointsInPiRange;
  if (!TCFontFamilyHasCodePointsInPiRange(NSString *)::fontFamiliesWithCodePointsInPiRange)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Apple Chancery", @"Hoefler Text Ornaments", @"Type Embellishments One LET", 0}];
    v4 = TCFontFamilyHasCodePointsInPiRange(NSString *)::fontFamiliesWithCodePointsInPiRange;
    TCFontFamilyHasCodePointsInPiRange(NSString *)::fontFamiliesWithCodePointsInPiRange = v3;

    v2 = TCFontFamilyHasCodePointsInPiRange(NSString *)::fontFamiliesWithCodePointsInPiRange;
  }

  v5 = [v2 containsObject:v1];

  return v5;
}

uint64_t TCUnicodeCharForZapfDingbatsCodePoint(int a1)
{
  if ((a1 - 32) > 0xDE)
  {
    return 0;
  }

  else
  {
    return word_25D6FB0F0[(a1 - 32)];
  }
}

uint64_t TCUnicodeCharForWingdingsCodePoint(int a1)
{
  if ((a1 - 32) > 0xDE)
  {
    return 0;
  }

  else
  {
    return word_25D6FB2AE[(a1 - 32)];
  }
}

uint64_t TCUnicodeCharForWingdings2CodePoint(int a1)
{
  if ((a1 - 37) > 0xD4)
  {
    return 0;
  }

  else
  {
    return word_25D6FB46C[(a1 - 37)];
  }
}

uint64_t TCUnicodeCharForSymbolCodePoint(int a1)
{
  v1 = a1;
  if ((a1 - 32) >= 0xE0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"unichar TCUnicodeCharForSymbolCodePoint(UInt16)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCFontUtils.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:4958 isFatal:0 description:"Symbol code point out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v8 = v1;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:&v8 length:1 encoding:6 freeWhenDone:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 characterAtIndex:0];
  }

  else
  {
    NSLog(@"Could not encode byte 0x%02X as symbol character", v8);
    v6 = 0;
  }

  return v6;
}

uint64_t (*TCCodePointMapperForFontFamilyName(NSString *a1))(int a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 caseInsensitiveCompare:@"Symbol"];
    v4 = TCUnicodeCharForSymbolCodePoint;
    if (v3 && (v5 = [(NSString *)v2 caseInsensitiveCompare:@"Zapf Dingbats"], v4 = TCUnicodeCharForZapfDingbatsCodePoint, v5) && (v6 = [(NSString *)v2 caseInsensitiveCompare:@"ZapfDingbats"], v4 = TCUnicodeCharForZapfDingbatsCodePoint, v6) && (v7 = [(NSString *)v2 caseInsensitiveCompare:@"Wingdings"], v4 = TCUnicodeCharForWingdingsCodePoint, v7) && (v8 = [(NSString *)v2 caseInsensitiveCompare:@"Wingdings 2"], v4 = TCUnicodeCharForWingdings2CodePoint, v8))
    {
      if ([(NSString *)v2 caseInsensitiveCompare:@"Wingdings2"])
      {
        v9 = 0;
      }

      else
      {
        v9 = TCUnicodeCharForWingdings2CodePoint;
      }
    }

    else
    {
      v9 = v4;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_25D40E488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id TCFontFamilyNames(void)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v0 = TCFontFamilyNames(void)::fontNames;
  if (!TCFontFamilyNames(void)::fontNames)
  {
    v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2 = TCFontFamilyNames(void)::fontNames;
    TCFontFamilyNames(void)::fontNames = v1;

    v20 = *MEMORY[0x277CC4848];
    v21[0] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v4 = CTFontCollectionCreateFromAvailableFonts(v3);
    v5 = v4;
    if (v4)
    {
      MatchingFontDescriptors = CTFontCollectionCreateMatchingFontDescriptors(v4);
      v7 = MatchingFontDescriptors;
      if (MatchingFontDescriptors)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = MatchingFontDescriptors;
        v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          v10 = *v16;
          v11 = *MEMORY[0x277CC48B8];
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v13 = CTFontDescriptorCopyAttribute(*(*(&v15 + 1) + 8 * v12), v11);
              if (v13)
              {
                [TCFontFamilyNames(void)::fontNames addObject:{v13, v15}];
              }

              ++v12;
            }

            while (v9 != v12);
            v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v9);
        }
      }

      CFRelease(v5);
    }

    [TCFontFamilyNames(void)::fontNames sortUsingSelector:{sel_compare_, v15}];

    v0 = TCFontFamilyNames(void)::fontNames;
  }

  return v0;
}

CTFontRef TCCreateFontWithFamilyName(NSString *a1, int a2, unsigned int a3, CGFloat a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = v7;
  if (a2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277CC48A8];
  v16[0] = *MEMORY[0x277CC48B8];
  v16[1] = v10;
  v17[0] = v7;
  v17[1] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = CTFontDescriptorCreateWithAttributes(v11);

  v13 = CTFontCreateWithFontDescriptorAndOptions(v12, a4, 0, 1uLL);
  CFRelease(v12);
  if ((CTFontGetSymbolicTraits(v13) & 3) == (v9 | a3))
  {
    goto LABEL_5;
  }

  if (!v13)
  {
    CopyWithSymbolicTraits = 0;
    goto LABEL_10;
  }

  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v13, a4, 0, v9 | a3, 3u);
  if (!CopyWithSymbolicTraits)
  {
LABEL_5:
    CopyWithSymbolicTraits = v13;
  }

  else
  {
    CFRelease(v13);
  }

LABEL_10:

  return CopyWithSymbolicTraits;
}

id TCStringEncodingEnumMap(void)
{
  v0 = TCStringEncodingEnumMap(void)::stringEncodingEnumMap;
  if (!TCStringEncodingEnumMap(void)::stringEncodingEnumMap)
  {
    {
      TCStringEncodingEnumMap();
    }

    v1 = [[TCEnumerationMap alloc] initWithStructs:&TCStringEncodingEnumMap(void)::stringEncodingEnumStructs count:142 caseSensitive:1];
    v2 = TCStringEncodingEnumMap(void)::stringEncodingEnumMap;
    TCStringEncodingEnumMap(void)::stringEncodingEnumMap = v1;

    v0 = TCStringEncodingEnumMap(void)::stringEncodingEnumMap;
  }

  return v0;
}

id TCFontClassEnumMap(void)
{
  v0 = TCFontClassEnumMap(void)::fontClassEnumMap;
  if (!TCFontClassEnumMap(void)::fontClassEnumMap)
  {
    {
      TCFontClassEnumMap();
    }

    v1 = [[TCEnumerationMap alloc] initWithStructs:&TCFontClassEnumMap(void)::fontClassEnumStructs count:7 caseSensitive:1];
    v2 = TCFontClassEnumMap(void)::fontClassEnumMap;
    TCFontClassEnumMap(void)::fontClassEnumMap = v1;

    v0 = TCFontClassEnumMap(void)::fontClassEnumMap;
  }

  return v0;
}

id TCFontWidthEnumMap(void)
{
  v0 = TCFontWidthEnumMap(void)::fontWidthEnumMap;
  if (!TCFontWidthEnumMap(void)::fontWidthEnumMap)
  {
    {
      TCFontWidthEnumMap();
    }

    v1 = [[TCEnumerationMap alloc] initWithStructs:&TCFontWidthEnumMap(void)::fontWidthEnumStructs count:3 caseSensitive:1];
    v2 = TCFontWidthEnumMap(void)::fontWidthEnumMap;
    TCFontWidthEnumMap(void)::fontWidthEnumMap = v1;

    v0 = TCFontWidthEnumMap(void)::fontWidthEnumMap;
  }

  return v0;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(v3, 0, a3);
}

void __cxx_global_array_dtor_1658()
{
  for (i = 0x8D8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_1785()
{
  for (i = 0x778u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_1821()
{
  for (i = 0x68u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_1828()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void sub_25D40F150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TCXmlPrefixStreamWriter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D40FBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TCXmlTextWriterProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D410280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TCXmlStreamWriter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D411520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TCImportFontCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t TCObjectEqual(objc_object *a1, objc_object *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [(objc_object *)v3 isEqual:v4];
    }
  }

  return v6;
}

id TCBundle()
{
  if (TCBundle::onceToken != -1)
  {
    TCBundle_cold_1();
  }

  v1 = TCBundle::sTCBundle;

  return v1;
}

void __TCBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = TCBundle::sTCBundle;
  TCBundle::sTCBundle = v0;
}

uint64_t TCRemoveFileSecurely(NSString *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [(NSString *)v1 length])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = 0;
    v4 = [v3 removeItemAtPath:v2 error:&v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *smalloc_typed(size_t a1, size_t a2, malloc_type_id_t a3)
{
  if (a1 && a2)
  {
    return malloc_type_calloc(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void getScaleFactorBetweenLengths(double a1, float a2)
{
  if (*&a1 == 0.0)
  {
    LODWORD(a1) = 1.0;
    if (a2 != 0.0)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"float getScaleFactorBetweenLengths(float, float)", a1}];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCAffineTransformUtils.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:30 isFatal:0 description:"Trying to map a zero-length segment onto a nonzero-length one"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }
}

double getScaleFactorsBetweenRects(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v11 = a5;
  Width = CGRectGetWidth(*&a1);
  v25.origin.x = v11;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  v16 = CGRectGetWidth(v25);
  v17 = v16;
  *&v16 = Width;
  getScaleFactorBetweenLengths(v16, v17);
  v19 = v18;
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  *&v11 = CGRectGetHeight(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  Height = CGRectGetHeight(v27);
  v21 = Height;
  LODWORD(Height) = LODWORD(v11);
  getScaleFactorBetweenLengths(Height, v21);
  return v19;
}

CGFloat mapSrcRectOntoDstRect@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  ScaleFactorsBetweenRects = getScaleFactorsBetweenRects(a2, a3, a4, a5, a6, a7, a8, a9);
  v31 = v18;
  v32 = ScaleFactorsBetweenRects;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v36.origin.x = a6;
  v36.origin.y = a7;
  v36.size.width = a8;
  v36.size.height = a9;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = a6;
  v37.origin.y = a7;
  v37.size.width = a8;
  v37.size.height = a9;
  MidY = CGRectGetMidY(v37);
  CGAffineTransformMakeTranslation(a1, MidX, MidY);
  v21 = *(a1 + 16);
  *&v34.a = *a1;
  *&v34.c = v21;
  *&v34.tx = *(a1 + 32);
  CGAffineTransformScale(&v35, &v34, v32, v31);
  v22 = *&v35.c;
  *a1 = *&v35.a;
  *(a1 + 16) = v22;
  *(a1 + 32) = *&v35.tx;
  v23 = *(a1 + 16);
  *&v34.a = *a1;
  *&v34.c = v23;
  *&v34.tx = *(a1 + 32);
  v24 = a2;
  *&v23 = a3;
  v25 = a4;
  v26 = a5;
  v27 = -CGRectGetMidX(*(&v23 - 8));
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  v28 = CGRectGetMidY(v38);
  CGAffineTransformTranslate(&v35, &v34, v27, -v28);
  v29 = *&v35.c;
  *a1 = *&v35.a;
  *(a1 + 16) = v29;
  result = v35.tx;
  *(a1 + 32) = *&v35.tx;
  return result;
}

double transformRect(double *a1, double a2, double a3)
{
  if (a1[1] != 0.0)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect transformRect(CGRect, CGAffineTransform)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCAffineTransformUtils.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:63 isFatal:0 description:""];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v8 = a1[2];
  if (v8 != 0.0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect transformRect(CGRect, CGAffineTransform)"}];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCAffineTransformUtils.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:64 isFatal:0 description:""];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v8 = a1[2];
  }

  return a1[4] + a3 * v8 + *a1 * a2;
}

uint64_t sfaxmlBoolToXmlChar(int a1, char *__str, size_t __size)
{
  v3 = "false";
  if (a1)
  {
    v3 = "true";
  }

  return snprintf(__str, __size, "%s", v3);
}

uint64_t sfaxmlDoubleToXmlChar(char *a1, size_t __n, double a3)
{
  if (fabs(a3) != INFINITY)
  {
    return snprintf(a1, __n, "%.*g", 17, a3);
  }

  if (a3 >= 0.0)
  {
    strncpy(a1, "INF", __n);
    return 3;
  }

  else
  {
    strncpy(a1, "-INF", __n);
    return 4;
  }
}

uint64_t xmlIgnoreExternalEntity(const char *a1, const char *a2, _xmlParserCtxt *a3)
{
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v7 = TCBundle();
  v8 = [v7 bundlePath];

  if ([v6 rangeOfString:v8])
  {
    v9 = 0;
  }

  else
  {
    v9 = pDefaultExternalEntityLoader(a1, a2, a3);
  }

  return v9;
}

BOOL sfaxmlSetBoolNoNsProp(xmlNode *a1, const xmlChar *a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = sfaxmlBoolToXmlChar(a3, value, 0x40uLL);
  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL sfaxmlSetBoolNoNsProp(xmlNodePtr, const xmlChar *, BOOL)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/SFArchiving/SFAPropertyFunctions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:81 isFatal:0 description:"snprintf printed zero characters? in sfaxmlSetBoolProp"];
    goto LABEL_5;
  }

  if (v5 >= 0x40)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL sfaxmlSetBoolNoNsProp(xmlNodePtr, const xmlChar *, BOOL)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/SFArchiving/SFAPropertyFunctions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:82 isFatal:0 description:"buffer to small for snprintf in sfaxmlSetBoolProp"];
LABEL_5:

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return xmlSetProp(a1, a2, value) != 0;
}

BOOL sfaxmlSetLongNoNsProp(xmlNode *a1, const xmlChar *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = sfaxmlLongToXmlChar(a3, value, 0x40uLL);
  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL sfaxmlSetLongNoNsProp(xmlNodePtr, const xmlChar *, long)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/SFArchiving/SFAPropertyFunctions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:333 isFatal:0 description:"snprintf printed zero characters? in sfaxmlSetLongProp"];
    goto LABEL_5;
  }

  if (v5 >= 0x40)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL sfaxmlSetLongNoNsProp(xmlNodePtr, const xmlChar *, long)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/SFArchiving/SFAPropertyFunctions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:334 isFatal:0 description:"buffer to small for snprintf in sfaxmlSetLongProp"];
LABEL_5:

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return xmlSetProp(a1, a2, value) != 0;
}

BOOL sfaxmlSetDoubleNoNsProp(xmlNode *a1, const xmlChar *a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = sfaxmlDoubleToXmlChar(value, 0x40uLL, a3);
  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL sfaxmlSetDoubleNoNsProp(xmlNodePtr, const xmlChar *, double)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/SFArchiving/SFAPropertyFunctions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1420 isFatal:0 description:"snprintf printed zero characters? in sfaxmlSetDoubleProp"];
    goto LABEL_5;
  }

  if (v5 >= 0x40)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL sfaxmlSetDoubleNoNsProp(xmlNodePtr, const xmlChar *, double)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/SFArchiving/SFAPropertyFunctions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1421 isFatal:0 description:"buffer to small for snprintf in sfaxmlSetDoubleProp"];
LABEL_5:

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return xmlSetProp(a1, a2, value) != 0;
}

BOOL sfaxmlSetNSStringNoNsProp(xmlNode *a1, const xmlChar *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  CUTF8Converter<64>::CUTF8Converter(v7, a3);
  v5 = xmlSetProp(a1, a2, value);
  if (v8)
  {
    free(v8);
  }

  return v5 != 0;
}

void sub_25D413698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CUTF8Converter<64>::CUTF8Converter(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v3)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
    *(a1 + 72) = CStringPtr;
    if (!CStringPtr)
    {
      Length = CFStringGetLength(v4);
      maxBufLen = 0;
      if (Length <= 14 && (v11.location = 0, v11.length = Length, CFStringGetBytes(v4, v11, 0x8000100u, 0, 0, a1, 63, &maxBufLen) == Length))
      {
        *(a1 + maxBufLen) = 0;
        *(a1 + 72) = a1;
      }

      else if (!*(a1 + 72))
      {
        maxBufLen = 0;
        v12.location = 0;
        v12.length = Length;
        if (CFStringGetBytes(v4, v12, 0x8000100u, 0, 0, 0, 2147483646, &maxBufLen) == Length)
        {
          v7 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
          *(a1 + 64) = v7;
          if (v7)
          {
            usedBufLen = 0;
            v13.location = 0;
            v13.length = Length;
            CFStringGetBytes(v4, v13, 0x8000100u, 0, 0, v7, maxBufLen, &usedBufLen);
            if (usedBufLen == maxBufLen)
            {
              *(*(a1 + 64) + usedBufLen) = 0;
              *(a1 + 72) = *(a1 + 64);
            }
          }
        }
      }
    }
  }

  return a1;
}

CGContext *TCBitmapContextCreate(double a1)
{
  v1 = TSUCeilSize(a1);
  v3 = v2;
  v4 = v1;
  v5 = v2;
  v6 = TSUDeviceRGBColorSpace();
  AlignedBytesPerRow = TSUBitmapGetAlignedBytesPerRow(4 * v4);
  v8 = CGBitmapContextCreate(0, v4, v5, 8uLL, AlignedBytesPerRow, v6, 0x2002u);
  CGContextTranslateCTM(v8, 0.0, v3);
  CGContextScaleCTM(v8, 1.0, -1.0);
  return v8;
}

void OAConvertCsException(unsigned int *a1)
{
  if (*a1 - 7000 < 0xA || *a1 - 7013 <= 1)
  {
    v2 = [TCMessageException exceptionWithMessage:TCInvalidFileFormatMessage];
    objc_exception_throw(v2);
  }

  OCConvertCsException(a1);
}

void sub_25D414438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D415184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D4152E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D415430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D4155D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D4158C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D4160F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_25D416210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D41632C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D416458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_720()
{
  for (i = 0x1D8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_771()
{
  for (i = 0x108u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_1194()
{
  for (i = 0xBE8u; i != -8; i -= 16)
  {
  }
}

void sub_25D418AF0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(a1);
    v10 = objc_opt_class();
    v11 = TSUSpecificCast(v10, v9);
    v12 = v11;
    if (!v11 || ([v11 name], v13 = objc_claimAutoreleasedReturnValue(), v14 = *MEMORY[0x277CBE648], v13, v12, v13 != v14))
    {
      [TCMessageContext reportWarningException:v9];
    }

    objc_end_catch();
    JUMPOUT(0x25D418A30);
  }

  _Unwind_Resume(a1);
}

void sub_25D418F70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D419AE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D41AA40(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D41AFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D41BC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D41C254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_76()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_239()
{
  for (i = 0x358u; i != -8; i -= 16)
  {
  }
}

void sub_25D41DA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D41EB40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_784()
{
  for (i = 0x108u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_787()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_808()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void sub_25D420C8C(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_25D420E48(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___ZL30OAXDateTimeIdentityToFormatMapv_block_invoke()
{
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:14];
  v0 = 0;
  v1 = off_2799C7AE8;
  do
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInt:v0];
    v3 = [OAXTextFieldIdentity identityWithGuid:*(v1 - 1) type:*v1];
    [v6 setObject:v2 forKeyedSubscript:v3];

    ++v0;
    v1 += 2;
  }

  while (v0 != 14);
  v4 = [v6 copy];
  v5 = OAXDateTimeIdentityToFormatMap(void)::theMap;
  OAXDateTimeIdentityToFormatMap(void)::theMap = v4;
}

void sub_25D424054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_25D4242C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_265()
{
  for (i = 0x1A8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_293()
{
  for (i = 0x88u; i != -8; i -= 16)
  {
  }
}

void sub_25D424EBC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_25D4253D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D42586C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_79()
{
  for (i = 0xE8u; i != -8; i -= 16)
  {
  }
}

void sub_25D4265BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_73()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_85()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_88()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_124()
{
  for (i = 0xA8u; i != -8; i -= 16)
  {
  }
}

void sub_25D427C48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id numberBulletSchemeEnumMap(void)
{
  if (numberBulletSchemeEnumMap(void)::once != -1)
  {
    numberBulletSchemeEnumMap();
  }

  v1 = numberBulletSchemeEnumMap(void)::theEnumMap;

  return v1;
}

void ___ZL25numberBulletSchemeEnumMapv_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZL25numberBulletSchemeEnumMapvEUb_E14theEnumStructs, memory_order_acquire) & 1) == 0)
  {
    ___ZL25numberBulletSchemeEnumMapv_block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZL25numberBulletSchemeEnumMapvEUb_E14theEnumStructs count:41 caseSensitive:1];
  v1 = numberBulletSchemeEnumMap(void)::theEnumMap;
  numberBulletSchemeEnumMap(void)::theEnumMap = v0;
}

void ___ZL19tabStopAlignEnumMapv_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZL19tabStopAlignEnumMapvEUb0_E14theEnumStructs, memory_order_acquire) & 1) == 0)
  {
    ___ZL19tabStopAlignEnumMapv_block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZL19tabStopAlignEnumMapvEUb0_E14theEnumStructs count:4 caseSensitive:1];
  v1 = tabStopAlignEnumMap(void)::theEnumMap;
  tabStopAlignEnumMap(void)::theEnumMap = v0;
}

void ___ZL16textAlignEnumMapv_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZL16textAlignEnumMapvEUb1_E14theEnumStructs, memory_order_acquire) & 1) == 0)
  {
    ___ZL16textAlignEnumMapv_block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZL16textAlignEnumMapvEUb1_E14theEnumStructs count:7 caseSensitive:1];
  v1 = textAlignEnumMap(void)::theEnumMap;
  textAlignEnumMap(void)::theEnumMap = v0;
}

void ___ZL16fontAlignEnumMapv_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZL16fontAlignEnumMapvEUb2_E14theEnumStructs, memory_order_acquire) & 1) == 0)
  {
    ___ZL16fontAlignEnumMapv_block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZL16fontAlignEnumMapvEUb2_E14theEnumStructs count:5 caseSensitive:1];
  v1 = fontAlignEnumMap(void)::theEnumMap;
  fontAlignEnumMap(void)::theEnumMap = v0;
}

void __cxx_global_array_dtor_200()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_215()
{
  for (i = 0x68u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_233()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void sub_25D42E258(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x10B1C40AF934621);

  _Unwind_Resume(a1);
}

void sub_25D42FCDC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    if (a2 == 2)
    {

      objc_end_catch();
      JUMPOUT(0x25D42FCC4);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_25D431DB0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_25D43346C(void *exc_buf, int a2)
{
  if (a2 == 4)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x25D4332E0);
  }

  JUMPOUT(0x25D4333D8);
}

void sub_25D433660(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SsrwOORootStorage::~SsrwOORootStorage(&a9);
  objc_begin_catch(a1);
  if (!v9)
  {
    JUMPOUT(0x25D433618);
  }

  JUMPOUT(0x25D4335F0);
}

void sub_25D433920(void *exc_buf, int a2)
{
  if (a2 == 4)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x25D4338B4);
  }

  JUMPOUT(0x25D4339A0);
}

void sub_25D433988(void *a1, int a2)
{
  if (a2 != 3)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v3 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
    JUMPOUT(0x25D4338B8);
  }

  v4 = __cxa_begin_catch(a1);
  OCConvertCsException(v4);
}

void sub_25D4339B0(uint64_t a1, ...)
{
  va_start(va, a1);
  SsrwOORootStorage::~SsrwOORootStorage(va);
  JUMPOUT(0x25D4339C0);
}

void sub_25D433A18(void *exc_buf, int a2)
{
  if (a2 == 4)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x25D4338B8);
  }

  JUMPOUT(0x25D4339A0);
}

void sub_25D433D38(void *a1)
{
  objc_begin_catch(a1);
  if (!v1)
  {
    JUMPOUT(0x25D433C70);
  }

  JUMPOUT(0x25D433C68);
}

void sub_25D433D50(void *a1)
{
  objc_begin_catch(a1);
  if (!v1)
  {
    JUMPOUT(0x25D433C70);
  }

  JUMPOUT(0x25D433C68);
}

void sub_25D434D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_25D435A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v14 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_25D435A58(void *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);

    objc_end_catch();
    JUMPOUT(0x25D4359C4);
  }

  JUMPOUT(0x25D435A2CLL);
}

void *EshBasicTablePropVal<EshComputedValue>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return EshBasicTablePropVal<EshComputedValue>::operator==(a1, result);
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshComputedValue>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::reserve((a1 + 8), (*(a2 + 16) - *(a2 + 8)) >> 3);
  if (a1 != a2)
  {
    std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__assign_with_size[abi:ne200100]<EshComputedValue*,EshComputedValue*>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  return a1;
}

void *std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::reserve(void *result, unsigned int a2)
{
  if (((result[2] - *result) >> 3) < a2)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedValue>>(result, a2);
  }

  return result;
}

void sub_25D437354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedValue>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__assign_with_size[abi:ne200100]<EshComputedValue*,EshComputedValue*>(void *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v9 = v7 >> 3;
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFF)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedValue>>(a1, v11);
  }

  v12 = a1[1];
  v13 = (v12 - result) >> 3;
  if (v13 >= a4)
  {
    while (v5 != a3)
    {
      v20 = *v5++;
      *result++ = v20;
    }

    a1[1] = result;
  }

  else
  {
    v14 = &a2[v13];
    if (((v12 - result) >> 3))
    {
      v15 = 8 * ((v12 - result) >> 3);
      do
      {
        v16 = *v5++;
        *result++ = v16;
        v15 -= 8;
      }

      while (v15);
      v12 = a1[1];
    }

    v17 = v12;
    if (v14 != a3)
    {
      v17 = v12;
      v18 = v12;
      do
      {
        v19 = *v14++;
        *v18 = v19;
        v18 += 8;
        v17 += 8;
      }

      while (v14 != a3);
    }

    a1[1] = v17;
  }

  return result;
}

BOOL EshBasicTablePropVal<EshComputedValue>::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (((v2 - v3) >> 3) != ((*(a2 + 16) - v4) >> 3))
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = *v3 == *v4 && *(v3 + 1) == *(v4 + 1);
    v3 += 8;
    v4 += 8;
  }

  while (result && v3 != v2);
  return result;
}

void *EshTablePropVal<EshComputedPoint>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC4EA8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t EshBasicTablePropVal<EshComputedPoint>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(result + 8);
    if (((v4 - v5) >> 4) == ((*(result + 16) - v6) >> 4))
    {
      if (v5 == v4)
      {
        return 1;
      }

LABEL_4:
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = (v5 + 8 * v8);
        v10 = (v6 + 8 * v8);
        if (*v9 != *v10)
        {
          break;
        }

        v11 = *(v9 + 1);
        v12 = *(v10 + 1);
        v8 = 1;
        v13 = (v11 == v12) & ~v7;
        v7 = 1;
        if ((v13 & 1) == 0)
        {
          v5 += 16;
          v6 += 16;
          if (v11 != v12 || v5 == v4)
          {
            return v11 == v12;
          }

          goto LABEL_4;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshComputedPoint>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<EshComputedPoint,ChAllocator<EshComputedPoint>>::reserve((a1 + 8), (*(a2 + 16) - *(a2 + 8)) >> 4);
  if (a1 != a2)
  {
    std::vector<EshComputedPoint,ChAllocator<EshComputedPoint>>::__assign_with_size[abi:ne200100]<EshComputedPoint*,EshComputedPoint*>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 4);
  }

  return a1;
}

void *std::vector<EshComputedPoint,ChAllocator<EshComputedPoint>>::reserve(void *result, unsigned int a2)
{
  if (((result[2] - *result) >> 4) < a2)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedPoint>>(result, a2);
  }

  return result;
}

void sub_25D4378C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EshComputedPoint,ChAllocator<EshComputedPoint>>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = 0;
      *(v5 + 4) = 0;
      *(v5 + 8) = 0;
      *(v5 + 12) = 0;
      *v5 = *v2;
      *(v5 + 8) = v2[1];
      v2 += 2;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<EshComputedPoint,ChAllocator<EshComputedPoint>>::__assign_with_size[abi:ne200100]<EshComputedPoint*,EshComputedPoint*>(void *a1, void *a2, void *a3, unsigned int a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (((v7 - result) >> 4) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v9 = v7 >> 4;
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFF)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedPoint>>(a1, v11);
  }

  v12 = a1[1];
  v13 = (v12 - result) >> 4;
  if (v13 >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[1] = v5[1];
      v5 += 2;
      result += 2;
    }

    a1[1] = result;
  }

  else
  {
    v14 = &a2[2 * v13];
    if (((v12 - result) >> 4))
    {
      do
      {
        *result = *v5;
        result[1] = v5[1];
        v5 += 2;
        result += 2;
      }

      while (v5 != v14);
      v12 = a1[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        *v16 = 0;
        *(v16 + 4) = 0;
        *(v16 + 8) = 0;
        *(v16 + 12) = 0;
        *v16 = *v14;
        *(v16 + 8) = v14[1];
        v14 += 2;
        v16 += 16;
        v15 += 16;
      }

      while (v14 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t std::vector<EshComputedPoint,ChAllocator<EshComputedPoint>>::push_back[abi:ne200100](void *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<EshComputedPoint,ChAllocator<EshComputedPoint>>::__emplace_back_slow_path<EshComputedPoint const&>(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 4) = 0;
    *(v3 + 8) = 0;
    *(v3 + 12) = 0;
    *v3 = *a2;
    *(v3 + 8) = a2[1];
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<EshComputedPoint,ChAllocator<EshComputedPoint>>::__emplace_back_slow_path<EshComputedPoint const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 4;
  if (2 * v5 <= (v4 >> 4) + 1)
  {
    v6 = (v4 >> 4) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedPoint>>(a1, v7);
  }

  v8 = v4 & 0xFFFFFFFF0;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = 0;
  *(v8 + 4) = 0;
  *(v8 + 8) = 0;
  *(v8 + 12) = 0;
  *v8 = *a2;
  *(v8 + 8) = a2[1];
  v13 = (v4 & 0xFFFFFFFF0) + 16;
  std::vector<EshComputedPoint,ChAllocator<EshComputedPoint>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_25D437CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__emplace_back_slow_path<EshComputedValue const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedValue>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D437DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *EshTablePropVal<EshPathCommand>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC4F48;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *EshBasicTablePropVal<EshPathCommand>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return EshBasicTablePropVal<EshPathCommand>::operator==(a1, result);
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshPathCommand>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::reserve((a1 + 8), (*(a2 + 16) - *(a2 + 8)) >> 3);
  if (a1 != a2)
  {
    std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::__assign_with_size[abi:ne200100]<EshPathCommand*,EshPathCommand*>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  return a1;
}

void *std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::reserve(void *result, unsigned int a2)
{
  if (((result[2] - *result) >> 3) < a2)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshPathCommand>>(result, a2);
  }

  return result;
}

void sub_25D437FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<EshPathCommand>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::__assign_with_size[abi:ne200100]<EshPathCommand*,EshPathCommand*>(void *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v9 = v7 >> 3;
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFF)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshPathCommand>>(a1, v11);
  }

  v12 = a1[1];
  v13 = (v12 - result) >> 3;
  if (v13 >= a4)
  {
    while (v5 != a3)
    {
      v20 = *v5++;
      *result++ = v20;
    }

    a1[1] = result;
  }

  else
  {
    v14 = &a2[v13];
    if (((v12 - result) >> 3))
    {
      v15 = 8 * ((v12 - result) >> 3);
      do
      {
        v16 = *v5++;
        *result++ = v16;
        v15 -= 8;
      }

      while (v15);
      v12 = a1[1];
    }

    v17 = v12;
    if (v14 != a3)
    {
      v17 = v12;
      v18 = v12;
      do
      {
        v19 = *v14++;
        *v18 = v19;
        v18 += 8;
        v17 += 8;
      }

      while (v14 != a3);
    }

    a1[1] = v17;
  }

  return result;
}

BOOL EshBasicTablePropVal<EshPathCommand>::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (((v2 - v3) >> 3) != ((*(a2 + 16) - v4) >> 3))
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = *v3 == *v4 && *(v3 + 1) == *(v4 + 1);
    v3 += 4;
    v4 += 4;
  }

  while (result && v3 != v2);
  return result;
}

uint64_t std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::__emplace_back_slow_path<EshPathCommand const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshPathCommand>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D43830C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *EshTablePropVal<EshFormula>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC4FE8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *EshBasicTablePropVal<EshFormula>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return EshBasicTablePropVal<EshFormula>::operator==(a1, result);
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshFormula>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<EshFormula,ChAllocator<EshFormula>>::reserve((a1 + 8), -1227133513 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  if (a1 != a2)
  {
    std::vector<EshFormula,ChAllocator<EshFormula>>::__assign_with_size[abi:ne200100]<EshFormula*,EshFormula*>((a1 + 8), *(a2 + 8), *(a2 + 16), -1227133513 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  }

  return a1;
}

void *std::vector<EshFormula,ChAllocator<EshFormula>>::reserve(void *result, unsigned int a2)
{
  if (-1227133513 * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x24924925)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshFormula>>(result, a2);
    }

    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25D438594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::vector<EshFormula,ChAllocator<EshFormula>>::__swap_out_circular_buffer(_DWORD *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(result + 1);
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = (a2[1] + *result - v5);
    do
    {
      for (i = 0; i != 6; i += 2)
      {
        v9 = &v7[i];
        v9[1] = 0;
        *(v9 + 4) = 0;
      }

      result = EshFormula::operator=(v7, v4);
      v4 += 7;
      v7 += 7;
    }

    while (v4 != v5);
    v4 = *v3;
  }

  a2[1] = v6;
  *v3 = v6;
  *(v3 + 1) = v4;
  a2[1] = v4;
  v10 = *(v3 + 1);
  *(v3 + 1) = a2[2];
  a2[2] = v10;
  v11 = *(v3 + 2);
  *(v3 + 2) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<EshFormula>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_DWORD *std::vector<EshFormula,ChAllocator<EshFormula>>::__assign_with_size[abi:ne200100]<EshFormula*,EshFormula*>(_DWORD *result, _DWORD *a2, _DWORD *a3, unsigned int a4)
{
  v6 = a2;
  v7 = result;
  v8 = *(result + 2);
  v9 = *result;
  if (-1227133513 * ((v8 - *result) >> 2) < a4)
  {
    if (v9)
    {
      *(result + 1) = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 <= 0x24924924)
    {
      v10 = -1227133513 * (v8 >> 2);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x12492492)
      {
        v12 = 613566756;
      }

      else
      {
        v12 = v11;
      }

      std::vector<EshFormula,ChAllocator<EshFormula>>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  v13 = 0x6DB6DB6DB6DB6DB7 * ((*(result + 1) - v9) >> 2);
  if (v13 >= a4)
  {
    while (v6 != a3)
    {
      result = EshFormula::operator=(v9, v6);
      v6 += 7;
      v9 += 7;
    }

    *(v7 + 8) = v9;
  }

  else
  {
    v14 = &a2[7 * v13];
    if (v13)
    {
      v15 = 28 * v13;
      do
      {
        EshFormula::operator=(v9, v6);
        v6 += 7;
        v9 += 7;
        v15 -= 28;
      }

      while (v15);
    }

    return std::vector<EshFormula,ChAllocator<EshFormula>>::__construct_at_end<EshFormula*,EshFormula*>(v7, v14, a3);
  }

  return result;
}

_DWORD *std::vector<EshFormula,ChAllocator<EshFormula>>::__construct_at_end<EshFormula*,EshFormula*>(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  v3 = result;
  if (a2 == a3)
  {
    v6 = *(result + 1);
  }

  else
  {
    v5 = a2;
    v6 = *(result + 1);
    do
    {
      for (i = 0; i != 6; i += 2)
      {
        v8 = &v6[i];
        v8[1] = 0;
        *(v8 + 4) = 0;
      }

      result = EshFormula::operator=(v6, v5);
      v5 += 7;
      v6 += 7;
    }

    while (v5 != a3);
  }

  *(v3 + 1) = v6;
  return result;
}

void std::vector<EshFormula,ChAllocator<EshFormula>>::__vallocate[abi:ne200100](uint64_t a1, unsigned int a2)
{
  if (a2 < 0x24924925)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshFormula>>(a1, a2);
  }

  std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
}

BOOL EshBasicTablePropVal<EshFormula>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (-1227133513 * ((v3 - v2) >> 2) != -1227133513 * ((*(a2 + 16) - v4) >> 2))
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = EshFormula::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 28;
    v4 += 28;
  }

  while (v2 != v3);
  return result;
}

uint64_t std::vector<EshFormula,ChAllocator<EshFormula>>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<EshFormula,ChAllocator<EshFormula>>::__emplace_back_slow_path<EshFormula const&>(a1, a2);
  }

  else
  {
    std::vector<EshFormula,ChAllocator<EshFormula>>::__construct_one_at_end[abi:ne200100]<EshFormula const&>(a1, a2);
    result = v3 + 28;
  }

  *(a1 + 8) = result;
  return result;
}

_DWORD *std::vector<EshFormula,ChAllocator<EshFormula>>::__construct_one_at_end[abi:ne200100]<EshFormula const&>(uint64_t a1, _DWORD *a2)
{
  v3 = 0;
  v4 = *(a1 + 8);
  do
  {
    v5 = &v4[v3];
    v5[1] = 0;
    *(v5 + 4) = 0;
    v3 += 2;
  }

  while (v3 != 6);
  result = EshFormula::operator=(v4, a2);
  *(a1 + 8) = v4 + 7;
  return result;
}

uint64_t std::vector<EshFormula,ChAllocator<EshFormula>>::__emplace_back_slow_path<EshFormula const&>(uint64_t a1, _DWORD *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 2);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x24924924)
  {
    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  if (1840700270 * ((*(a1 + 16) - *a1) >> 2) > v3)
  {
    v3 = 1840700270 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (-1227133513 * ((*(a1 + 16) - *a1) >> 2) >= 0x12492492)
  {
    v6 = 613566756;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshFormula>>(a1, v6);
  }

  v7 = 28 * v2;
  __p = 0;
  v13 = v7;
  v14 = v7;
  v15 = 0;
  v8 = (v7 + 8);
  v9 = 24;
  do
  {
    *(v8 - 1) = 0;
    *v8 = 0;
    v8 += 4;
    v9 -= 8;
  }

  while (v9);
  EshFormula::operator=(v7, a2);
  v14 += 28;
  std::vector<EshFormula,ChAllocator<EshFormula>>::__swap_out_circular_buffer(a1, &__p);
  v10 = *(a1 + 8);
  if (v14 != v13)
  {
    v14 = (v14 - v13 - 28) % 0x1CuLL + v13;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_25D438CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *EshTablePropVal<EshComputedRect>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC5088;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t EshBasicTablePropVal<EshComputedRect>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(result + 8);
    if (((v4 - v5) >> 5) == ((*(result + 16) - v6) >> 5))
    {
      while (v5 != v4)
      {
        if (*v5 != *v6 || *(v5 + 1) != *(v6 + 1))
        {
          return 0;
        }

        v7 = 0;
        v8 = 0;
        while (v7 != 24)
        {
          v9 = v8;
          if (v5[v7 + 8] == v6[v7 + 8])
          {
            v10 = *&v5[v7 + 12];
            v11 = *&v6[v7 + 12];
            v7 += 8;
            ++v8;
            if (v10 == v11)
            {
              continue;
            }
          }

          if (v9 < 3)
          {
            return 0;
          }

          break;
        }

        v5 += 32;
        v6 += 32;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshComputedRect>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::reserve((a1 + 8), (*(a2 + 16) - *(a2 + 8)) >> 5);
  if (a1 != a2)
  {
    std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::__assign_with_size[abi:ne200100]<EshComputedRect*,EshComputedRect*>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 5);
  }

  return a1;
}

void *std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::reserve(void *result, unsigned int a2)
{
  if (((result[2] - *result) >> 5) < a2)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedRect>>(result, a2);
  }

  return result;
}

void sub_25D438F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        v7 = v5 + i;
        *v7 = 0;
        *(v7 + 4) = 0;
      }

      for (j = 0; j != 32; j += 8)
      {
        *(v5 + j) = *(v2 + j);
      }

      v2 += 32;
      v5 += 32;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::__assign_with_size[abi:ne200100]<EshComputedRect*,EshComputedRect*>(char **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (((v7 - result) >> 5) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v9 = v7 >> 5;
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFF)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedRect>>(a1, v11);
  }

  v12 = a1[1];
  if (((v12 - result) >> 5) >= a4)
  {
    while (v5 != a3)
    {
      for (i = 0; i != 32; i += 8)
      {
        *&result[i] = *(v5 + i);
      }

      v5 += 32;
      result += 32;
    }

    a1[1] = result;
  }

  else
  {
    v13 = a2 + 32 * ((v12 - result) >> 5);
    if (((v12 - result) >> 5))
    {
      do
      {
        for (j = 0; j != 32; j += 8)
        {
          *&result[j] = *(v5 + j);
        }

        v5 += 32;
        result += 32;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v13 != a3)
    {
      v15 = v12;
      do
      {
        for (k = 0; k != 32; k += 8)
        {
          v17 = &v15[k];
          *v17 = 0;
          *(v17 + 1) = 0;
        }

        for (m = 0; m != 32; m += 8)
        {
          *&v15[m] = *(v13 + m);
        }

        v13 += 32;
        v15 += 32;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::__emplace_back_slow_path<EshComputedRect const&>(a1, a2);
  }

  else
  {
    v4 = (v3 + 4);
    v5 = 32;
    do
    {
      *(v4 - 4) = 0;
      *v4 = 0;
      v4 += 2;
      v5 -= 8;
    }

    while (v5);
    for (i = 0; i != 32; i += 8)
    {
      *(v3 + i) = *(a2 + i);
    }

    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::__emplace_back_slow_path<EshComputedRect const&>(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 5;
  if (2 * v5 <= (v4 >> 5) + 1)
  {
    v6 = (v4 >> 5) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshComputedRect>>(a1, v7);
  }

  v8 = v4 & 0x1FFFFFFFE0;
  __p = 0;
  v15 = v4 & 0x1FFFFFFFE0;
  v17 = 0;
  v9 = ((v4 & 0x1FFFFFFFE0) + 4);
  v10 = 32;
  do
  {
    *(v9 - 4) = 0;
    *v9 = 0;
    v9 += 2;
    v10 -= 8;
  }

  while (v10);
  for (i = 0; i != 32; i += 8)
  {
    *(v8 + i) = *(a2 + i);
  }

  v16 = v8 + 32;
  std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::__swap_out_circular_buffer(a1, &__p);
  v12 = a1[1];
  if (v16 != v15)
  {
    v16 += (v15 - v16 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_25D4393C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D43A714(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {

    objc_end_catch();
    JUMPOUT(0x25D43A6E0);
  }

  objc_exception_rethrow();
}

void sub_25D43A740(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

uint64_t OABTable2DArray<OABTableCell>::~OABTable2DArray(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 - 24;
      v6 = 24 * v4;
      do
      {

        v6 -= 24;
      }

      while (v6);
    }

    MEMORY[0x25F896FE0](v3, 0x1080C80F1FA62F8);
  }

  return a1;
}

void sub_25D43C9AC(_Unwind_Exception *a1)
{
  v5 = *(v4 - 192);
  v6 = *(v4 - 184);
  *(v4 - 208) = v3;
  *(v4 - 200) = v2;
  *(v4 - 144) = v1;
  v7 = *(v4 - 176);

  _Unwind_Resume(a1);
}

void sub_25D43CEC0(_Unwind_Exception *a1)
{
  v4 = *(v3 - 208);
  v5 = *(v3 - 200);
  *(v3 - 224) = v2;
  *(v3 - 216) = v1;
  v6 = *(v3 - 104);

  _Unwind_Resume(a1);
}

void sub_25D441E14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D442D60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D4438D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id fontCollectionEnumMap(void)
{
  if (fontCollectionEnumMap(void)::once != -1)
  {
    fontCollectionEnumMap();
  }

  v1 = fontCollectionEnumMap(void)::theMap;

  return v1;
}

id baseFontEnumMap(void)
{
  if (baseFontEnumMap(void)::once != -1)
  {
    baseFontEnumMap();
  }

  v1 = baseFontEnumMap(void)::theMap;

  return v1;
}

unint64_t OADSchemeFontReference::schemeFontReferenceWithString(OADSchemeFontReference *this, NSString *a2)
{
  v2 = this;
  if ([(OADSchemeFontReference *)v2 length]== 6 && [(OADSchemeFontReference *)v2 characterAtIndex:0]== 43 && [(OADSchemeFontReference *)v2 characterAtIndex:3]== 45)
  {
    v3 = [(OADSchemeFontReference *)v2 substringWithRange:1, 2];
    v4 = fontCollectionEnumMap();
    v5 = [v4 valueForString:v3];

    v6 = [(OADSchemeFontReference *)v2 substringWithRange:4, 2];
    v7 = baseFontEnumMap();
    v8 = [v7 valueForString:v6];

    v9 = 0xFFFFFFFF00000000;
    v10 = 0xFFFFFFFFLL;
    if (v5 != -130883970 && v8 != -130883970)
    {
      v9 = v8 << 32;
      v10 = v5;
    }
  }

  else
  {
    v9 = 0xFFFFFFFF00000000;
    v10 = 0xFFFFFFFFLL;
  }

  return v10 | v9;
}

NSString *OADAbsoluteFontNameWithPossiblyRelativeFontNameAndFontScheme(NSString *a1, OADFontScheme *a2)
{
  v3 = a1;
  v5 = a2;
  if (!v5 || (v6 = OADSchemeFontReference::schemeFontReferenceWithString(v3, v4), v6 == -1) || (v7 = HIDWORD(v6), HIDWORD(v6) == 0xFFFFFFFF))
  {
    v9 = v3;
  }

  else
  {
    v8 = [(OADFontScheme *)v5 fontForId:?];
    v9 = [v8 baseFontForId:v7];
  }

  return v9;
}

void ___ZL21fontCollectionEnumMapv_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZL21fontCollectionEnumMapvEUb_E14theStructArray, memory_order_acquire) & 1) == 0)
  {
    ___ZL21fontCollectionEnumMapv_block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZL21fontCollectionEnumMapvEUb_E14theStructArray count:2 caseSensitive:1];
  v1 = fontCollectionEnumMap(void)::theMap;
  fontCollectionEnumMap(void)::theMap = v0;
}

void ___ZL15baseFontEnumMapv_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZL15baseFontEnumMapvEUb0_E14theStructArray, memory_order_acquire) & 1) == 0)
  {
    ___ZL15baseFontEnumMapv_block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZL15baseFontEnumMapvEUb0_E14theStructArray count:3 caseSensitive:1];
  v1 = baseFontEnumMap(void)::theMap;
  baseFontEnumMap(void)::theMap = v0;
}

void __cxx_global_array_dtor_100()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void sub_25D450FEC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_25D451D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D453380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D459390(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D45D760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D45EF60(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D45F044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_25D45F728(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t OADTFTemplateMatrix<OADTableCell * {__strong}>::operator[](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || *a1 <= a2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"E &OADTFTemplateMatrix<OADTableCell *>::operator[](OADTMatrixPos) [E = OADTableCell *]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADTableStyleFlattener.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:36 isFatal:0 description:"Row index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (a2 < 0 || (v6 = *(a1 + 4), v6 <= SHIDWORD(a2)))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"E &OADTFTemplateMatrix<OADTableCell *>::operator[](OADTMatrixPos) [E = OADTableCell *]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADTableStyleFlattener.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:37 isFatal:0 description:"Column index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v6 = *(a1 + 4);
  }

  return *(a1 + 8) + 8 * (HIDWORD(a2) + v6 * a2);
}

uint64_t OADTFTemplateMatrix<OADTablePartStyle * {__strong}>::operator[](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || *a1 <= a2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"E &OADTFTemplateMatrix<OADTablePartStyle *>::operator[](OADTMatrixPos) [E = OADTablePartStyle *]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADTableStyleFlattener.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:36 isFatal:0 description:"Row index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (a2 < 0 || (v6 = *(a1 + 4), v6 <= SHIDWORD(a2)))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"E &OADTFTemplateMatrix<OADTablePartStyle *>::operator[](OADTMatrixPos) [E = OADTablePartStyle *]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADTableStyleFlattener.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:37 isFatal:0 description:"Column index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v6 = *(a1 + 4);
  }

  return *(a1 + 8) + 8 * (HIDWORD(a2) + v6 * a2);
}

uint64_t OADTFTemplateMatrix<OADStroke * {__strong}>::operator[](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || *a1 <= a2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"E &OADTFTemplateMatrix<OADStroke *>::operator[](OADTMatrixPos) [E = OADStroke *]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADTableStyleFlattener.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:36 isFatal:0 description:"Row index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (a2 < 0 || (v6 = *(a1 + 4), v6 <= SHIDWORD(a2)))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"E &OADTFTemplateMatrix<OADStroke *>::operator[](OADTMatrixPos) [E = OADStroke *]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADTableStyleFlattener.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:37 isFatal:0 description:"Column index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v6 = *(a1 + 4);
  }

  return *(a1 + 8) + 8 * (HIDWORD(a2) + v6 * a2);
}

void sub_25D462FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v18 = v16;

  _Unwind_Resume(a1);
}

void sub_25D463320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D463E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

_DWORD *OADTMatrixPos::OADTMatrixPos(_DWORD *a1, int a2, int a3, unsigned int a4)
{
  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (a4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  *a1 = v5;
  a1[1] = v6;
  if (a4 >= 2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"OADTMatrixPos::OADTMatrixPos(SInt32, SInt32, OADTDir)"}];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADTable.h"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:190 isFatal:0 description:"Unexpected matrix direction"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return a1;
}

int *OADTFTemplateMatrix<OADTableCell * {__strong}>::OADTFTemplateMatrix(int *a1, int a2, int a3, void *a4)
{
  v8 = a4;
  *a1 = a2;
  a1[1] = a3;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  std::vector<OADTableCell * {__strong}>::resize(a1 + 1, a3 * a2);
  if (a1[1] * *a1 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      objc_storeStrong((*(a1 + 1) + v9), a4);
      ++v10;
      v9 += 8;
    }

    while (v10 < a1[1] * *a1);
  }

  return a1;
}

void sub_25D46423C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void std::vector<OADTableCell * {__strong}>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<OADTableCell * {__strong}>::__append(a1, v5);
  }
}

void std::vector<OADTableCell * {__strong}>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OADTableCell * {__strong}>>(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    std::vector<OADTableCell * {__strong}>::__swap_out_circular_buffer(a1, v11);
    std::__split_buffer<OADTableCell * {__strong}>::~__split_buffer(v11);
  }
}

void sub_25D4643CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<OADTableCell * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<OADTableCell * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<OADTableCell * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<OADTableCell * {__strong}>::~__split_buffer(uint64_t a1)
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

int *OADTFTemplateMatrix<OADTablePartStyle * {__strong}>::OADTFTemplateMatrix(int *a1, int a2, int a3, void *a4)
{
  v8 = a4;
  *a1 = a2;
  a1[1] = a3;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  std::vector<OADTablePartStyle * {__strong}>::resize(a1 + 1, a3 * a2);
  if (a1[1] * *a1 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      objc_storeStrong((*(a1 + 1) + v9), a4);
      ++v10;
      v9 += 8;
    }

    while (v10 < a1[1] * *a1);
  }

  return a1;
}

void sub_25D4645E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void std::vector<OADTablePartStyle * {__strong}>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<OADTablePartStyle * {__strong}>::__append(a1, v5);
  }
}

void std::vector<OADTablePartStyle * {__strong}>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OADTableCell * {__strong}>>(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    std::vector<OADTableCell * {__strong}>::__swap_out_circular_buffer(a1, v11);
    std::__split_buffer<OADTableCell * {__strong}>::~__split_buffer(v11);
  }
}

void sub_25D464770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<OADTableCell * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

int *OADTFTemplateMatrix<OADStroke * {__strong}>::OADTFTemplateMatrix(int *a1, int a2, int a3, void *a4)
{
  v8 = a4;
  *a1 = a2;
  a1[1] = a3;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  std::vector<OADStroke * {__strong}>::resize(a1 + 1, a3 * a2);
  if (a1[1] * *a1 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      objc_storeStrong((*(a1 + 1) + v9), a4);
      ++v10;
      v9 += 8;
    }

    while (v10 < a1[1] * *a1);
  }

  return a1;
}

void sub_25D464838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void std::vector<OADStroke * {__strong}>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<OADStroke * {__strong}>::__append(a1, v5);
  }
}

void std::vector<OADStroke * {__strong}>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OADTableCell * {__strong}>>(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    std::vector<OADTableCell * {__strong}>::__swap_out_circular_buffer(a1, v11);
    std::__split_buffer<OADTableCell * {__strong}>::~__split_buffer(v11);
  }
}

void sub_25D4649C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<OADTableCell * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_25D468D50(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x25D468D34);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D469D40(void *a1, int a2)
{
  if (a2 != 3)
  {
    v5 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v5 raise];
      __cxa_end_catch();
      JUMPOUT(0x25D469D0CLL);
    }

    v7 = [TCMessageException exceptionWithMessage:TCUnknownProblemMessage];
    objc_exception_throw(v7);
  }

  v6 = __cxa_begin_catch(a1);
  OAConvertCsException(v6);
}

void sub_25D469DCC(void *a1, int a2)
{
  __cxa_end_catch();
  if (a2 == 4)
  {
    objc_begin_catch(a1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    objc_end_catch();
    JUMPOUT(0x25D469D24);
  }

  JUMPOUT(0x25D469D5CLL);
}

void sub_25D46A908(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25D46AAC4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D46C9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v17 = v14;

  _Unwind_Resume(a1);
}

void sub_25D46CB34(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_25D46D188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, void *a47, void *a48)
{
  v49 = *(v48 - 160);

  _Unwind_Resume(a1);
}

void sub_25D46D6A0(_Unwind_Exception *a1)
{
  *(v3 - 96) = v1;

  _Unwind_Resume(a1);
}

void sub_25D46E9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_25D46F8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_25D471B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_66()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_76_0()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_83()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_93()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_56()
{
  for (i = 0x98u; i != -8; i -= 16)
  {
  }
}

id OAVReadLengthArray(NSString *a1)
{
  v16 = a1;
  v1 = [MEMORY[0x277CBEB18] array];
  v2 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v16];
  if (!OAVReadLengthArray(NSString *)::startOfRealNumberCharSet)
  {
    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@".+-0123456789"];
    v4 = OAVReadLengthArray(NSString *)::startOfRealNumberCharSet;
    OAVReadLengthArray(NSString *)::startOfRealNumberCharSet = v3;
  }

  [v2 scanUpToCharactersFromSet:? intoString:?];
  while (([v2 isAtEnd] & 1) == 0)
  {
    v18 = 0.0;
    if (([v2 scanDouble:&v18] & 1) == 0)
    {
      break;
    }

    v17 = 0;
    [v2 scanUpToCharactersFromSet:OAVReadLengthArray(NSString *)::startOfRealNumberCharSet intoString:&v17];
    v5 = v17;
    for (i = 0; i < [(NSString *)v5 length]; ++i)
    {
      v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v8 = [v7 characterIsMember:{-[NSString characterAtIndex:](v5, "characterAtIndex:", i)}];

      if (!v8)
      {
        break;
      }
    }

    for (j = 0; i + j < [(NSString *)v5 length]; ++j)
    {
      v10 = [MEMORY[0x277CCA900] letterCharacterSet];
      v11 = [v10 characterIsMember:{-[NSString characterAtIndex:](v5, "characterAtIndex:", i + j)}];

      if (!v11)
      {
        break;
      }
    }

    if (j && (i + j < -[NSString length](v5, "length") || [v2 isAtEnd]))
    {
      v12 = [(NSString *)v5 substringWithRange:i, j];

      v13 = CXUnitWithName(v12);
      v18 = CXUnitToPoint(v13) * v18;
      v5 = v12;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    [v1 addObject:v14];
  }

  return v1;
}

void sub_25D473A40(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

double ODIRegularPolygonBounds(unint64_t a1, float a2, float a3)
{
  v4 = -a2;
  if (a1)
  {
    LODWORD(v6) = 0;
    v7 = 6.28318531 / a1;
    v8 = a2;
    v9 = a2;
    v10 = a3 * 3.14159265 / 180.0;
    v11 = -a2;
    do
    {
      v12 = v10 + v6 * v7;
      v13 = __sincosf_stret(v12);
      v14 = v13.__sinval * a2;
      if (v8 >= (v13.__cosval * a2))
      {
        v8 = v13.__cosval * a2;
      }

      if (v4 < (v13.__cosval * a2))
      {
        v4 = v13.__cosval * a2;
      }

      if (v9 >= v14)
      {
        v9 = v13.__sinval * a2;
      }

      if (v11 < v14)
      {
        v11 = v13.__sinval * a2;
      }

      v6 = (v6 + 1);
    }

    while (v6 < a1);
  }

  else
  {
    return a2;
  }

  return v8;
}

void sub_25D47AAB4(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_25D47BA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D47BB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D47BC7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D47E0C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D47E460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D47E64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_25D47EC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D47F704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D47F8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D480144(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *exc_buf, uint64_t a10)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {

    if (TSUDefaultCat_init_token != -1)
    {
      +[ODIDiagram mapDiagram:drawingTheme:];
    }

    objc_end_catch();
    JUMPOUT(0x25D4800ECLL);
  }

  objc_exception_rethrow();
}

void sub_25D4801B8(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_25D4807BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<ODIHRange>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D481DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<ODIHRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<ODIHRange>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D481F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<ODIHRange,ChAllocator<ODIHRange>>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = &__src[-*a1];
    v11 = &v6[-*a1] >> 3;
    v12 = (v7 - *a1) >> 3;
    if (2 * v12 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = 2 * v12;
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v22 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<ODIHRange>>(a1, v14);
    }

    __p = 0;
    v19 = v10 & 0x7FFFFFFF8;
    v20 = v10 & 0x7FFFFFFF8;
    v21 = 0;
    std::__split_buffer<ODIHRange,ChAllocator<ODIHRange> &>::emplace_back<ODIHRange const&>(&__p, a3);
    v4 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__swap_out_circular_buffer(a1, &__p, v4);
    if (v20 != v19)
    {
      v20 += (v19 - v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v15 = v9 <= a3 || v4 > a3;
    v16 = 8;
    if (v15)
    {
      v16 = 0;
    }

    *v4 = *&a3[v16];
  }

  return v4;
}

void sub_25D4820D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<ODIHRange,ChAllocator<ODIHRange> &>::emplace_back<ODIHRange const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (((&v4[-*result] >> 2) & 0xFFFFFFFE) != 0)
      {
        v11 = (&v4[-*result] >> 2) & 0xFFFFFFFE;
      }

      else
      {
        v11 = 1;
      }

      std::__allocate_at_least[abi:ne200100]<ChAllocator<ODIHRange>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::vector<ODIHRange,ChAllocator<ODIHRange>>::__swap_out_circular_buffer(uint64_t a1, void *a2, char *a3)
{
  v4 = *(a1 + 8);
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v10 = a2[1];
    v9 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      v8 = *v7++;
      *v6++ = v8;
    }

    while (v7 != v4);
    v9 = *(a1 + 8);
    v10 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v9 - a3;
  *(a1 + 8) = a3;
  v11 = *a1;
  v12 = (v10 + *a1 - a3);
  if (*a1 != a3)
  {
    v13 = v12;
    do
    {
      v14 = *v11++;
      *v13++ = v14;
    }

    while (v11 != a3);
    v11 = *a1;
  }

  a2[1] = v12;
  *a1 = v12;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v15 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v15;
  v16 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

void sub_25D48650C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_25D4867DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D487140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, void *a14)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

void sub_25D48753C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D487990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_25D487B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

OADPointTextSpacing *OADTextSpacingWithCachedSpacing(int a1)
{
  v1 = a1;
  if (a1 < 0)
  {
    v4 = [[OADPointTextSpacing alloc] initWithPoints:vcvts_n_f32_u32(-a1, 3uLL)];
  }

  else
  {
    v2 = [OADPercentTextSpacing alloc];
    *&v3 = v1;
    v4 = [(OADPercentTextSpacing *)v2 initWithPercent:v3];
  }

  return v4;
}

void EshAlignRule::EshAlignRule(EshAlignRule *this)
{
  EshAtom::EshAtom(this, 0xF013u, 0);
  *v1 = &unk_286EC5518;
  v1[7] = 0;
  v1[8] = 0;
  v1[6] = 0;
  *(v1 + 28) = 0;
  *(v1 + 33) = 0;
}

uint64_t EshAlignRule::accept(int a1, void *lpsrc)
{

  return v2();
}

void EshAlignRule::~EshAlignRule(EshAlignRule *this)
{
  *this = &unk_286EC5518;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286EC5518;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

void EshObject::getChildType(EshObject *this)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1005;
}

void EshObject::getChildVersion(EshObject *this)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1005;
}

void EshObject::getChildInstance(EshObject *this)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1005;
}

void EshBlipT<EshBitmapBlipInfo>::~EshBlipT(uint64_t a1)
{
  *a1 = &unk_286EC57E8;
  v2 = (a1 + 72);
  OcBinaryData::~OcBinaryData((a1 + 160));
  OcBinaryData::~OcBinaryData(v2);

  EshBlip::~EshBlip(a1);
}

{
  *a1 = &unk_286EC57E8;
  v2 = (a1 + 72);
  OcBinaryData::~OcBinaryData((a1 + 160));
  OcBinaryData::~OcBinaryData(v2);
  EshBlip::~EshBlip(a1);

  JUMPOUT(0x25F897000);
}

void EshClientDataModelVisitor::~EshClientDataModelVisitor(EshClientDataModelVisitor *this)
{
  *this = &unk_286EC5B18;
}

{
  *this = &unk_286EC5B18;
  JUMPOUT(0x25F897000);
}

uint64_t EshColor::RGB::create(uint64_t this, char a2, char a3, _BYTE *a4, RGB *a5)
{
  *a4 = this;
  a4[1] = a2;
  a4[2] = a3;
  return this;
}

uint64_t EshColorScheme::getHostSchemeColor(EshColorScheme *this)
{
  v2 = *this;
  if (!v2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7014;
  }

  v3 = *(*v2 + 16);

  return v3();
}

uint64_t EshColorScheme::getSystemSchemeColor(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7014;
  }

  v3 = *(*v2 + 16);

  return v3();
}

void EshContainer::insertChild(EshContainer *this, EshObject *a2)
{
  if (EshObject::isEscher(a2))
  {
    operator new();
  }

  operator new();
}

EshContainer *EshContainer::operator=(EshContainer *a1, uint64_t a2)
{
  EshContainer::removeChildren(a1);
  EshRecord::operator=(a1, a2);
  if ((*(*a2 + 40))(a2))
  {
    v4 = (*(*a2 + 104))(a2, 0);
    EshContainer::addChild(a1, v4);
  }

  return a1;
}

uint64_t std::vector<EshHeader *,ChAllocator<EshHeader *>>::__emplace_back_slow_path<EshHeader *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D48ABC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<EshHeader *,ChAllocator<EshHeader *>>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = &__src[-*a1];
    v11 = &v6[-*a1] >> 3;
    v12 = (v7 - *a1) >> 3;
    if (2 * v12 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = 2 * v12;
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v22 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v14);
    }

    __p = 0;
    v19 = v10 & 0x7FFFFFFF8;
    v20 = v10 & 0x7FFFFFFF8;
    v21 = 0;
    std::__split_buffer<EshHeader *,ChAllocator<EshHeader *> &>::emplace_back<EshHeader * const&>(&__p, a3);
    v4 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__swap_out_circular_buffer(a1, &__p, v4);
    if (v20 != v19)
    {
      v20 += (v19 - v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v15 = v9 <= a3 || v4 > a3;
    v16 = 8;
    if (v15)
    {
      v16 = 0;
    }

    *v4 = *&a3[v16];
  }

  return v4;
}

void sub_25D48ADB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<EshHeader *,ChAllocator<EshHeader *> &>::emplace_back<EshHeader * const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (((&v4[-*result] >> 2) & 0xFFFFFFFE) != 0)
      {
        v11 = (&v4[-*result] >> 2) & 0xFFFFFFFE;
      }

      else
      {
        v11 = 1;
      }

      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void EshDeletedPspl::EshDeletedPspl(EshDeletedPspl *this)
{
  EshAtom::EshAtom(this, 0xF11Du, 0);
  *v1 = &unk_286EC5E28;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
}

uint64_t EshDeletedPspl::accept(int a1, void *lpsrc)
{

  return v2();
}

void EshBlipT<EshDibBlipInfo>::~EshBlipT(EshBlip *a1)
{
  a1->var0 = &unk_286EC60E0;
  v2 = &a1[1];
  EshDibBlipInfo::~EshDibBlipInfo(&a1[5].var3.var0[4]);
  EshDibBlipInfo::~EshDibBlipInfo(v2);

  EshBlip::~EshBlip(a1);
}

{
  a1->var0 = &unk_286EC60E0;
  v2 = &a1[1];
  EshDibBlipInfo::~EshDibBlipInfo(&a1[5].var3.var0[4]);
  EshDibBlipInfo::~EshDibBlipInfo(v2);
  EshBlip::~EshBlip(a1);

  JUMPOUT(0x25F897000);
}

uint64_t EshGeometryProperties::setSimpleProperty(EshGeometryProperties *this, int a2, int a3)
{
  result = 0;
  if (a2 <= 326)
  {
    if (a2 <= 321)
    {
      if (a2 == 320)
      {
        *(this + 3) = a3;
        return 1;
      }

      if (a2 == 321)
      {
        *(this + 4) = a3;
        return 1;
      }
    }

    else
    {
      switch(a2)
      {
        case 322:
          *(this + 5) = a3;
          return 1;
        case 323:
          *(this + 6) = a3;
          return 1;
        case 324:
          *(this + 34) = a3;
          return 1;
      }
    }
  }

  else
  {
    if ((a2 - 327) < 0xA)
    {
      *(this + a2 - 315) = a3;
      return 1;
    }

    if (a2 == 339)
    {
      *(this + 32) = a3;
      return 1;
    }

    if (a2 == 340)
    {
      *(this + 33) = a3;
      return 1;
    }
  }

  return result;
}

uint64_t EshGeometryProperties::setComplexProperty(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  if (a2 <= 337)
  {
    switch(a2)
    {
      case 325:
        v4 = 32;
        goto LABEL_17;
      case 326:
        v4 = 40;
        goto LABEL_17;
      case 337:
        v4 = 88;
        goto LABEL_17;
    }
  }

  else if (a2 > 341)
  {
    if (a2 == 342)
    {
      v4 = 112;
      goto LABEL_17;
    }

    if (a2 == 343)
    {
      v4 = 120;
      goto LABEL_17;
    }
  }

  else
  {
    if (a2 == 338)
    {
      v4 = 96;
      goto LABEL_17;
    }

    if (a2 == 341)
    {
      v4 = 104;
LABEL_17:
      *(a1 + v4) = a3;
      return 1;
    }
  }

  return v3;
}

uint64_t EshGeometryProperties::setFlag(EshGeometryProperties *this, int a2, char a3)
{
  result = 0;
  if (a2 > 380)
  {
    switch(a2)
    {
      case 381:
        *(this + 143) = a3;
        break;
      case 382:
        *(this + 144) = a3;
        break;
      case 383:
        *(this + 145) = a3;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 378:
        *(this + 140) = a3;
        break;
      case 379:
        *(this + 141) = a3;
        break;
      case 380:
        *(this + 142) = a3;
        break;
      default:
        return result;
    }
  }

  return 1;
}

void std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::resize(void *a1, unsigned int a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 8 * a2;
  }
}

void std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::__append(void *a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 8 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 4) = 0;
        v3 += 8;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = v3 - *a1;
    v6 = (v5 >> 3) + a2;
    v7 = (v4 - *a1) >> 3;
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x7FFFFFFF)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    v15 = a1;
    if (v8)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshPathCommand>>(a1, v8);
    }

    v10 = v5 & 0x7FFFFFFF8;
    __p = 0;
    v12 = v5 & 0x7FFFFFFF8;
    v14 = 0;
    do
    {
      *v10 = 0;
      *(v10 + 4) = 0;
      v10 += 8;
    }

    while (v10 != (v5 & 0x7FFFFFFF8) + 8 * a2);
    v13 = (v5 & 0x7FFFFFFF8) + 8 * a2;
    std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_25D48B4F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL EshHandleValuePair::operator==(void *a1, void *a2)
{
  if (*a1 == *a2 && (v2 = a1[1], v3 = a2[1], v2 == v3))
  {
    return (v3 ^ v2) >> 32 == 0;
  }

  else
  {
    return 0;
  }
}

void EshBlipT<EshMetafileBlipInfo>::~EshBlipT(uint64_t a1)
{
  *a1 = &unk_286EC62A0;
  v2 = (a1 + 72);
  OcBinaryData::~OcBinaryData((a1 + 192));
  OcBinaryData::~OcBinaryData(v2);

  EshBlip::~EshBlip(a1);
}

{
  *a1 = &unk_286EC62A0;
  v2 = (a1 + 72);
  OcBinaryData::~OcBinaryData((a1 + 192));
  OcBinaryData::~OcBinaryData(v2);
  EshBlip::~EshBlip(a1);

  JUMPOUT(0x25F897000);
}

EshOpt *EshOpt::operator=(EshOpt *a1, const EshOpt *a2)
{
  EshOpt::destroy(a1);
  EshOpt::copy(a1, a2);
  return a1;
}

uint64_t *EshOpt::copy(uint64_t *this, const EshOpt *a2)
{
  v2 = a2 + 32;
  v3 = *(a2 + 4);
  v4 = a2 + 40;
  if (v3 != a2 + 40)
  {
    v5 = this;
    do
    {
      v6 = v3;
      v7 = *(v3 + 1);
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = *(v8 + 2);
          v9 = *v3 == v8;
          v8 = v3;
        }

        while (!v9);
      }

      v10 = *(v6 + 8);
      if (v10 >= 0)
      {
        v11 = *(v6 + 8);
      }

      else
      {
        v11 = v10 + 63;
      }

      v12 = v10 - (v11 & 0xFFFFFFC0);
      if (v12 < 48)
      {
        v16 = v11 >> 6;
        if (v16 > 25 || (v17 = &EshOpt::getPropertyType(EshOpt::PID)::blocks + 2 * v16, v12 >= *(v17 + 4)))
        {
          v21 = v10;
          v22 = &v21;
          v14 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v21)[6];
LABEL_21:
          v15 = 0;
          goto LABEL_22;
        }

        v18 = *(*v17 + v12);
        v21 = v10;
        v22 = &v21;
        v19 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v21);
        v20 = v19[5];
        v14 = v19[6];
        if (v18 <= 9)
        {
          if (v18)
          {
            if (v18 == 9)
            {
              if (v20)
              {
                operator new();
              }

LABEL_32:
              v15 = 0;
              goto LABEL_22;
            }

LABEL_28:
            v15 = v19[5];
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        if (v18 != 10)
        {
          if (v18 == 11)
          {
            if (v20)
            {
              operator new();
            }

            goto LABEL_32;
          }

          goto LABEL_28;
        }

        if (!v20)
        {
          goto LABEL_32;
        }

        v15 = (*(*v20 + 16))(v19[5]);
      }

      else
      {
        v21 = v10;
        v22 = &v21;
        v13 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v21);
        v15 = v13[5];
        v14 = v13[6];
      }

LABEL_22:
      v21 = v10;
      v22 = &v21;
      this = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v5 + 4), &v21);
      this[5] = v15;
      this[6] = v14;
    }

    while (v3 != v4);
  }

  return this;
}

uint64_t EshOpt::deleteProperty(uint64_t *a1, int a2)
{
  EshOpt::deleteComplexPropertyValue(a1, a2);
  v5 = a2;
  return std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__erase_unique<unsigned int>((a1 + 4), &v5);
}

void *EshDataTablePropVal<unsigned char>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return EshDataTablePropVal<unsigned char>::operator==(a1, result);
  }

  return result;
}

BOOL EshDataTablePropVal<unsigned char>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = *EshDataTablePropVal<unsigned char>::operator[](a1, v5);
    v7 = *EshDataTablePropVal<unsigned char>::operator[](a2, v5);
    result = v6 == v7;
    if (v6 != v7)
    {
      break;
    }

    ++v5;
  }

  while (v5 < *(a1 + 16));
  return result;
}

uint64_t EshDataTablePropVal<unsigned char>::operator[](uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16) < a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return *(a1 + 8) + a2;
}

uint64_t *std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void EshAsciiPropVal::~EshAsciiPropVal(EshAsciiPropVal *this)
{
  *this = &unk_286EC6490;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  *(this + 4) = 0;
}

{
  *this = &unk_286EC6490;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  *(this + 4) = 0;

  JUMPOUT(0x25F897000);
}

uint64_t EshAsciiPropVal::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 24))(a2, a1);
  }

  else
  {
    return 1;
  }
}

void *EshDataTablePropVal<char>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return EshDataTablePropVal<unsigned char>::operator==(a1, result);
  }

  return result;
}

uint64_t EshDataTablePropVal<char>::init(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = a2;
  result = *(a1 + 8);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C4077774924);
  }

  *(a1 + 8) = 0;
  if (a2)
  {
    operator new[](a2);
  }

  return result;
}

void *EshTablePropVal<float>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC6580;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *EshBasicTablePropVal<float>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return EshBasicTablePropVal<float>::operator==(a1, result);
  }

  return result;
}

uint64_t EshBasicTablePropVal<float>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<float,ChAllocator<float>>::reserve((a1 + 8), (*(a2 + 16) - *(a2 + 8)) >> 2);
  if (a1 != a2)
  {
    std::vector<float,ChAllocator<float>>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void *std::vector<float,ChAllocator<float>>::reserve(void *result, unsigned int a2)
{
  if (((result[2] - *result) >> 2) < a2)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<float>>(result, a2);
  }

  return result;
}

void sub_25D48C30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int **std::vector<float,ChAllocator<float>>::__swap_out_circular_buffer(int **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<float,ChAllocator<float>>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unsigned int a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (((v7 - *result) >> 2) < a4)
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

    v9 = v7 >> 2;
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFF)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::__allocate_at_least[abi:ne200100]<ChAllocator<float>>(v6, v11);
  }

  v12 = result[1];
  v13 = (v12 - v8) >> 2;
  if (v13 >= a4)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v8[v19];
  }

  else
  {
    v14 = &__src[4 * v13];
    if (((v12 - v8) >> 2))
    {
      result = memmove(*result, __src, 4 * ((v12 - v8) >> 2));
      v12 = v6[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 4;
        *v16 = v17;
        v16 += 4;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v6[1] = v18;
  return result;
}

BOOL EshBasicTablePropVal<float>::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (((v2 - v3) >> 2) != ((*(a2 + 16) - v4) >> 2))
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 4;
  do
  {
    v6 = *v4++;
    result = *(v5 - 4) == v6;
    v8 = *(v5 - 4) != v6 || v5 == v2;
    v5 += 4;
  }

  while (!v8);
  return result;
}

void *EshTablePropVal<EshHandle>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC6620;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *EshBasicTablePropVal<EshHandle>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return EshBasicTablePropVal<EshHandle>::operator==(a1, result);
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshHandle>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<EshHandle,ChAllocator<EshHandle>>::reserve((a1 + 8), -252645135 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  if (a1 != a2)
  {
    std::vector<EshHandle,ChAllocator<EshHandle>>::__assign_with_size[abi:ne200100]<EshHandle*,EshHandle*>((a1 + 8), *(a2 + 8), *(a2 + 16), -252645135 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  }

  return a1;
}

void *std::vector<EshHandle,ChAllocator<EshHandle>>::reserve(void *result, unsigned int a2)
{
  if (-252645135 * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0xC3C3C3C4)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHandle>>(result, a2);
    }

    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25D48C87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EshHandle,ChAllocator<EshHandle>>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = 0;
      *v5 = *v2;
      do
      {
        v7 = &v5[v6];
        *(v7 + 3) = 0;
        *(v7 + 1) = 0;
        *(v7 + 1) = *&v2[v6 + 1];
        *(v7 + 3) = *&v2[v6 + 3];
        v6 += 4;
      }

      while (v6 != 16);
      v2 += 17;
      v5 += 17;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v8 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v8;
  v9 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHandle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x3C3C3C3C3C3C3C4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_DWORD *std::vector<EshHandle,ChAllocator<EshHandle>>::__assign_with_size[abi:ne200100]<EshHandle*,EshHandle*>(void *a1, _DWORD *a2, _DWORD *a3, unsigned int a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (-252645135 * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xC3C3C3C3)
    {
      v9 = -252645135 * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x61E1E1E1)
      {
        v11 = -1010580541;
      }

      else
      {
        v11 = v10;
      }

      std::vector<EshHandle,ChAllocator<EshHandle>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = 0xF0F0F0F0F0F0F0F1 * (v12 - result);
  if (v13 >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      for (i = 3; i != 19; i += 4)
      {
        v22 = &result[i];
        *(v22 - 1) = *&v5[i - 2];
        *v22 = *&v5[i];
      }

      v5 += 17;
      result += 17;
    }

    a1[1] = result;
  }

  else
  {
    v14 = v13;
    v15 = &a2[17 * v13];
    if (v14)
    {
      do
      {
        *result = *v5;
        for (j = 3; j != 19; j += 4)
        {
          v17 = &result[j];
          *(v17 - 1) = *&v5[j - 2];
          *v17 = *&v5[j];
        }

        v5 += 17;
        result += 17;
      }

      while (v5 != v15);
      v12 = a1[1];
    }

    v18 = v12;
    if (v15 != a3)
    {
      v18 = v12;
      do
      {
        v19 = 0;
        *v18 = *v15;
        do
        {
          v20 = &v18[v19];
          *(v20 + 3) = 0;
          *(v20 + 1) = 0;
          *(v20 + 1) = *&v15[v19 + 1];
          *(v20 + 3) = *&v15[v19 + 3];
          v19 += 4;
        }

        while (v19 != 16);
        v15 += 17;
        v18 += 17;
      }

      while (v15 != a3);
    }

    a1[1] = v18;
  }

  return result;
}

void std::vector<EshHandle,ChAllocator<EshHandle>>::__vallocate[abi:ne200100](uint64_t a1, unsigned int a2)
{
  if (a2 < 0xC3C3C3C4)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHandle>>(a1, a2);
  }

  std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
}

BOOL EshBasicTablePropVal<EshHandle>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (-252645135 * ((v3 - v2) >> 2) != -252645135 * ((*(a2 + 16) - v4) >> 2))
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = EshHandle::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 68;
    v4 += 68;
  }

  while (v2 != v3);
  return result;
}

BOOL EshHandle::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || !EshHandleValuePair::operator==(a1 + 4, a2 + 4) || !EshHandleValuePair::operator==(a1 + 20, a2 + 20) || !EshHandleValuePair::operator==(a1 + 36, a2 + 36))
  {
    return 0;
  }

  return EshHandleValuePair::operator==(a1 + 4, a2 + 4);
}

void *EshTablePropVal<EshGradientStop>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC66C0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t EshBasicTablePropVal<EshGradientStop>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v6 = a1 + 8;
    v4 = *(a1 + 8);
    v5 = *(v6 + 8);
    v7 = *(result + 8);
    if (-1431655765 * ((v5 - v4) >> 2) == -1431655765 * ((*(result + 16) - v7) >> 2))
    {
      if (v4 == v5)
      {
        return 1;
      }

      else
      {
        do
        {
          result = std::__equal_to::operator()[abi:ne200100]<EshGradientStop,EshGradientStop>(&v8, v4, v7);
          if (!result)
          {
            break;
          }

          v4 += 3;
          v7 += 3;
        }

        while (v4 != v5);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshGradientStop>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<EshGradientStop,ChAllocator<EshGradientStop>>::reserve((a1 + 8), -1431655765 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  if (a1 != a2)
  {
    std::vector<EshGradientStop,ChAllocator<EshGradientStop>>::__assign_with_size[abi:ne200100]<EshGradientStop*,EshGradientStop*>((a1 + 8), *(a2 + 8), *(a2 + 16), -1431655765 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  }

  return a1;
}

void *std::vector<EshGradientStop,ChAllocator<EshGradientStop>>::reserve(void *result, unsigned int a2)
{
  if (-1431655765 * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x55555556)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshGradientStop>>(result, a2);
    }

    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25D48D0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<EshGradientStop,ChAllocator<EshGradientStop>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 8) = *(v5 + 8);
      v5 += 12;
      v6 += 12;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<EshGradientStop>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_DWORD *std::vector<EshGradientStop,ChAllocator<EshGradientStop>>::__assign_with_size[abi:ne200100]<EshGradientStop*,EshGradientStop*>(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (-1431655765 * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x55555555)
    {
      v9 = -1431655765 * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAA)
      {
        v11 = 1431655765;
      }

      else
      {
        v11 = v10;
      }

      std::vector<EshGradientStop,ChAllocator<EshGradientStop>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2);
  if (v13 >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[2] = *(v5 + 8);
      v5 += 12;
      result += 3;
    }

    a1[1] = result;
  }

  else
  {
    v14 = v13;
    v15 = a2 + 12 * v13;
    if (v14)
    {
      do
      {
        *result = *v5;
        result[2] = *(v5 + 8);
        v5 += 12;
        result += 3;
      }

      while (v5 != v15);
    }

    if (v15 == a3)
    {
      v16 = v12;
    }

    else
    {
      v16 = v12;
      do
      {
        *v12 = *v15;
        *(v12 + 8) = *(v15 + 8);
        v15 += 12;
        v12 += 12;
        v16 += 12;
      }

      while (v15 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void std::vector<EshGradientStop,ChAllocator<EshGradientStop>>::__vallocate[abi:ne200100](uint64_t a1, unsigned int a2)
{
  if (a2 < 0x55555556)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshGradientStop>>(a1, a2);
  }

  std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
}

void *EshTablePropVal<int>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC6760;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *EshBasicTablePropVal<int>::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return EshBasicTablePropVal<int>::operator==(a1, result);
  }

  return result;
}

uint64_t EshBasicTablePropVal<int>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<int,ChAllocator<int>>::reserve((a1 + 8), (*(a2 + 16) - *(a2 + 8)) >> 2);
  if (a1 != a2)
  {
    std::vector<int,ChAllocator<int>>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void *std::vector<int,ChAllocator<int>>::reserve(void *result, unsigned int a2)
{
  if (((result[2] - *result) >> 2) < a2)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<float>>(result, a2);
  }

  return result;
}

void sub_25D48D688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int **std::vector<int,ChAllocator<int>>::__swap_out_circular_buffer(int **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void *std::vector<int,ChAllocator<int>>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unsigned int a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (((v7 - *result) >> 2) < a4)
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

    v9 = v7 >> 2;
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFF)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::__allocate_at_least[abi:ne200100]<ChAllocator<float>>(v6, v11);
  }

  v12 = result[1];
  v13 = (v12 - v8) >> 2;
  if (v13 >= a4)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v8[v19];
  }

  else
  {
    v14 = &__src[4 * v13];
    if (((v12 - v8) >> 2))
    {
      result = memmove(*result, __src, 4 * ((v12 - v8) >> 2));
      v12 = v6[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 4;
        *v16 = v17;
        v16 += 4;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v6[1] = v18;
  return result;
}

BOOL EshBasicTablePropVal<int>::operator==(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 8;
  v5 = *(a2 + 8);
  return (v4 >> 2) == ((*(v6 + 8) - v5) >> 2) && memcmp(v2, v5, v4) == 0;
}

void EshRawAtom::EshRawAtom(EshRawAtom *this, unsigned __int16 a2, unsigned __int8 a3)
{
  EshAtom::EshAtom(this, a2, a3);
  *v3 = &unk_286EC6798;
  OcBinaryData::OcBinaryData((v3 + 32));
}

uint64_t EshRawAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

void EshRawAtom::~EshRawAtom(EshRawAtom *this)
{
  *this = &unk_286EC6798;
  OcBinaryData::~OcBinaryData((this + 32));
}

{
  *this = &unk_286EC6798;
  OcBinaryData::~OcBinaryData((this + 32));

  JUMPOUT(0x25F897000);
}

uint64_t EshRecord::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    EshHeader::operator=(a1 + 12, a2 + 12);
  }

  return a1;
}

void EshRegroupItems::EshRegroupItems(EshRegroupItems *this)
{
  EshAtom::EshAtom(this, 0xF118u, 0);
  *v1 = &unk_286EC6970;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
}

uint64_t EshRegroupItems::accept(int a1, void *lpsrc)
{

  return v2();
}

void EshRegroupItems::~EshRegroupItems(EshRegroupItems *this)
{
  *this = &unk_286EC6970;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286EC6970;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

void EshSelection::EshSelection(EshSelection *this)
{
  EshAtom::EshAtom(this, 0xF119u, 0);
  *v1 = &unk_286EC6A18;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0;
}

uint64_t EshSelection::accept(int a1, void *lpsrc)
{

  return v2();
}

void EshSelection::~EshSelection(EshSelection *this)
{
  *this = &unk_286EC6A18;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286EC6A18;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}