unint64_t TRawSymbolOwnerData<Pointer32>::regions_in_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 160) == *(a1 + 168) || a3 > 0xFFFFFFFE)
  {
    return 0;
  }

  if ((a4 + a3) >> 32)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = (a4 + a3);
  }

  v11 = 0;
  v12 = 0;
  v6 = 0;
  if (find_lower_and_upper_bounds_of_range<Pointer64,CSCppSectionRange>(a3, v9, (a1 + 160), &v12, &v11))
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3);
    if (a5)
    {
      do
      {
        (*(a5 + 16))(a5, a2 | 4);
        v12 += 24;
      }

      while (v12 < v11);
    }
  }

  return v6;
}

uint64_t TRawSymbolOwnerData<Pointer32>::symbols(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (v3 >= *(a1 + 192))
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a1 + 184);
  do
  {
    if ((atomic_load_explicit((v8 + 20), memory_order_acquire) & 0x800) == 0 || atomic_load_explicit((v8 + 20), memory_order_acquire) == 2048)
    {
      if (a3)
      {
        (*(a3 + 16))(a3, a2 | 5, v3);
      }

      ++v7;
    }

    v8 += 96;
    v3 += 96;
  }

  while (v8 < *(a1 + 192));
  return v7;
}

uint64_t TRawSymbolOwnerData<Pointer32>::symbols_for_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  TRawSymbolOwnerData<Pointer32>::_initialize_demangled_names_hash_once(a1);

  return TRawSymbolOwnerData<Pointer32>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer32>>>(a1, a2, a3, a4, (a1 + 272), (a1 + 184), 1);
}

uint64_t TRawSymbolOwnerData<Pointer32>::symbols_for_mangled_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  TRawSymbolOwnerData<Pointer32>::_initialize_mangled_names_hash_once(a1);

  return TRawSymbolOwnerData<Pointer32>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer32>>>(a1, a2, a3, a4, (a1 + 312), (a1 + 184), 1);
}

uint64_t TRawSymbolOwnerData<Pointer32>::symbol_for_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  TRawSymbolOwnerData<Pointer32>::_initialize_demangled_names_hash_once(a1);

  return TRawSymbolOwnerData<Pointer32>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer32>>>(a1, a2, a3, a4, (a1 + 272), (a1 + 184), 0);
}

uint64_t TRawSymbolOwnerData<Pointer32>::symbol_for_mangled_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  TRawSymbolOwnerData<Pointer32>::_initialize_mangled_names_hash_once(a1);

  return TRawSymbolOwnerData<Pointer32>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer32>>>(a1, a2, a3, a4, (a1 + 312), (a1 + 184), 0);
}

uint64_t TRawSymbolOwnerData<Pointer32>::symbols_in_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 0xFFFFFFFE || *(a1 + 184) == *(a1 + 192))
  {
    return 0;
  }

  if ((a4 + a3) >> 32)
  {
    v7 = -1;
  }

  else
  {
    v7 = a4 + a3;
  }

  v12 = 0;
  v13 = 0;
  v8 = 0;
  if (find_lower_and_upper_bounds_of_range<Pointer32,TRawSymbol<Pointer32>>(a3, v7, (a1 + 184), &v13, &v12))
  {
    v8 = 0;
    v9 = v13;
    do
    {
      v10 = (v9 + 20);
      if ((atomic_load_explicit(v10, memory_order_acquire) & 0x800) == 0 || atomic_load_explicit(v10, memory_order_acquire) == 2048)
      {
        if (a5)
        {
          (*(a5 + 16))(a5, a2 | 5, v13);
        }

        ++v8;
      }

      v9 = v13 + 96;
      v13 = v9;
    }

    while (v9 < v12);
  }

  return v8;
}

uint64_t TRawSymbolOwnerData<Pointer32>::symbol_for_address(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__2;
  v12 = 0;
  v13 = 0;
  v11 = __Block_byref_object_dispose__2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN19TRawSymbolOwnerDataI9Pointer32E18symbol_for_addressEP16CSCppSymbolOwnery_block_invoke;
  v6[3] = &unk_1E8583558;
  v6[4] = &v7;
  (*(*a1 + 128))(a1, a2, a3, 1, v6);
  v3 = v8[5];
  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1D9713044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TRawSymbolOwnerData<Pointer32>::source_infos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v5 < v4)
    {
      v8 = *(a1 + 208);
      do
      {
        (*(a3 + 16))(a3, a2 | 6, v5);
        v8 += 32;
        v4 = *(a1 + 216);
        v5 += 32;
      }

      while (v8 < v4);
    }
  }

  else
  {
    v4 = *(a1 + 216);
  }

  return (v4 - *(a1 + 208)) >> 5;
}

int64_t TRawSymbolOwnerData<Pointer32>::source_infos_in_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 208) == *(a1 + 216) || a3 > 0xFFFFFFFE)
  {
    return 0;
  }

  if ((a4 + a3) >> 32)
  {
    v9 = -1;
  }

  else
  {
    v9 = a4 + a3;
  }

  v11 = 0;
  v12 = 0;
  v6 = 0;
  if (find_lower_and_upper_bounds_of_range<Pointer32,TRawSourceInfo<Pointer32>>(a3, v9, (a1 + 208), &v12, &v11))
  {
    v6 = (v11 - v12) >> 5;
    if (a5)
    {
      do
      {
        (*(a5 + 16))(a5, a2 | 6);
        v12 += 32;
      }

      while (v12 < v11);
    }
  }

  return v6;
}

uint64_t TRawSymbolOwnerData<Pointer32>::source_info_for_address(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[26];
  v4 = a1[27];
  if (a3 <= 0xFFFFFFFE && v5 != v4)
  {
    v7 = a3;
    v26[0] = a3;
    v26[1] = 1;
    v10 = a1[23];
    v9 = a1[24];
    if (v9 != v10)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 5);
      v9 = v10;
      do
      {
        v12 = v11 >> 1;
        v13 = &v9[96 * (v11 >> 1)];
        v15 = *v13;
        v14 = (v13 + 24);
        v11 += ~(v11 >> 1);
        if (v15 > a3)
        {
          v11 = v12;
        }

        else
        {
          v9 = v14;
        }
      }

      while (v11);
    }

    if (v9 != v10)
    {
      v17 = *(v9 - 24);
      v18 = *(v9 - 23);
      v16 = (v9 - 96);
      if (a3 - v17 < v18)
      {
        if (TRawSymbol<Pointer32>::find_enclosing_inlined_function(v16, v26))
        {
          v19 = 5;
          return v19 | a2;
        }

        v5 = a1[26];
        v4 = a1[27];
      }
    }

    if (v4 != v5)
    {
      v20 = (v4 - v5) >> 5;
      v4 = v5;
      do
      {
        v21 = v20 >> 1;
        v22 = &v4[32 * (v20 >> 1)];
        v24 = *v22;
        v23 = (v22 + 8);
        v20 += ~(v20 >> 1);
        if (v26[0] < v24)
        {
          v20 = v21;
        }

        else
        {
          v4 = v23;
        }
      }

      while (v20);
    }

    if (v4 != v5 && (v7 - *(v4 - 8)) < *(v4 - 7))
    {
      v19 = 6;
      return v19 | a2;
    }
  }

  return 0;
}

uint64_t TRawSymbolOwnerData<Pointer32>::for_each_stack_frame_at_address(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = (*(*a1 + 136))(a1);
  v10 = v9;
  if (CSIsNull(v8, v9))
  {
    return 0;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v29[0] = a3;
  v29[1] = 1;
  v13 = a1[26];
  v12 = a1[27];
  if (v12 != v13)
  {
    v14 = (v12 - v13) >> 5;
    v12 = a1[26];
    do
    {
      v15 = v14 >> 1;
      v16 = &v12[32 * (v14 >> 1)];
      v18 = *v16;
      v17 = (v16 + 8);
      v14 += ~(v14 >> 1);
      if (v18 > a3)
      {
        v14 = v15;
      }

      else
      {
        v12 = v17;
      }
    }

    while (v14);
  }

  if (v12 != v13)
  {
    v20 = *(v12 - 8);
    v21 = *(v12 - 7);
    v19 = v12 - 32;
    if (a3 - v20 >= v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19;
    }

    if (v11)
    {
      goto LABEL_13;
    }

    return 0;
  }

  v22 = 0;
  if (!v11)
  {
    return 0;
  }

LABEL_13:
  enclosing_inlined_function = TRawSymbol<Pointer32>::find_enclosing_inlined_function(v11, v29);
  if (enclosing_inlined_function)
  {
    v24 = enclosing_inlined_function;
    v25 = 1;
    do
    {
      if ((atomic_load_explicit(v24 + 5, memory_order_acquire) & 0x80000000) != 0 && *(v24 + 5))
      {
        (*(a4 + 16))(a4, a2 | 5, v11, a2 | 5, v24);
      }

      else
      {
        (*(a4 + 16))(a4, a2 | 5, v11, 0, 0);
      }

      v11 = v24;
      ++v25;
      v24 = TRawSymbol<Pointer32>::find_enclosing_inlined_function(v24, v29);
    }

    while (v24);
  }

  else
  {
    v25 = 1;
  }

  if (v22)
  {
    v26 = a2 | 6;
  }

  else
  {
    v26 = 0;
  }

  if (v22)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  (*(a4 + 16))(a4, a2 | 5, v11, v26, v27);
  return v25;
}

uint64_t TRawSymbolOwnerData<Pointer32>::for_each_inline_range_for_symbol_at_depth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v10 = *(a4 & 0xFFFFFFFFFFFFFFFCLL);
  v8[1] = a6;
  v9 = 0;
  v8[0] = &v9;
  v17[0] = &v14;
  v17[1] = &__p;
  v17[2] = a2;
  v17[3] = v8;
  v17[4] = &v10;
  v18 = a5;
  _ZZZN19TRawSymbolOwnerDataI9Pointer32E41for_each_inline_range_for_symbol_at_depthEP16CSCppSymbolOwner10_CSTypeRefiU13block_pointerFv8_CSRangePS4_S6_mEENKUlP10TRawSymbolIS0_EE_clESB_ENKUlSB_RT_E_clISF_EEvSB_SE_(v17, a4 & 0xFFFFFFFFFFFFFFFCLL, v17);
  v6 = v9;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return v6;
}

void sub_1D9713544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TRawSymbolOwnerData<Pointer32>::for_each_deduplicated_variant_for_symbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Range = CSSymbolGetRange(a3, a4);
  if (Range > 0xFFFFFFFE)
  {
    return 0;
  }

  v10 = *(a1 + 184);
  v11 = *(a1 + 192);
  v12 = (a1 + 184);
  if (v10 == v11)
  {
    return 0;
  }

  v13 = Range;
  v14 = v9 + Range;
  if ((v9 + Range) >> 32)
  {
    v15 = -1;
  }

  else
  {
    v15 = v9 + Range;
  }

  v21 = 0;
  v22 = 0;
  lower_and_upper_bounds_of = find_lower_and_upper_bounds_of_range<Pointer32,TRawSymbol<Pointer32>>(Range, v15, v12, &v22, &v21);
  v17 = 0;
  if (lower_and_upper_bounds_of)
  {
    v17 = 0;
    v18 = v22;
    do
    {
      v19 = *v18;
      if (v13 <= v19 && *(v18 + 1) + v19 <= v14 && (atomic_load_explicit(v18 + 5, memory_order_acquire) & 0x800) != 0 && atomic_load_explicit(v22 + 5, memory_order_acquire) != 2048)
      {
        if (a5)
        {
          (*(a5 + 16))(a5, a2 | 5, v22);
        }

        ++v17;
      }

      v18 = (v22 + 24);
      v22 = v18;
    }

    while (v18 < v21);
  }

  return v17;
}

uint64_t TRawSymbolOwnerData<Pointer32>::raw_bytes_for_range(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 232);
  v5 = a3 - v4;
  if (a3 >= v4 && a4 + a3 <= *(a1 + 236) + v4 && (v6 = *(a1 + 240)) != 0)
  {
    return v6 + v5;
  }

  else
  {
    return TRawSymbolOwnerData<Pointer32>::_raw_bytes_for_range_on_demand_fault(a1, a2, a3 | (a4 << 32));
  }
}

uint64_t TRawSymbolOwnerData<Pointer32>::optional_symbolicator_flags(uint64_t a1)
{
  if (*(a1 + 404))
  {
    return a1 + 400;
  }

  else
  {
    return 0;
  }
}

uint64_t TRawSymbolOwnerData<Pointer32>::relinked_subdylib_path_for_address(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 528);
  v4 = *(a1 + 536);
  v5 = *(a1 + 528);
  v6 = a3 > 0xFFFFFFFE || v5 == v4;
  if (v6)
  {
    return 0;
  }

  v7 = (v4 - v5) >> 4;
  v8 = *(a1 + 528);
  do
  {
    v9 = v7 >> 1;
    v10 = &v8[16 * (v7 >> 1)];
    v12 = *v10;
    v11 = (v10 + 4);
    v7 += ~(v7 >> 1);
    if (v12 > a3)
    {
      v7 = v9;
    }

    else
    {
      v8 = v11;
    }
  }

  while (v7);
  v6 = v8 == v5;
  v13 = -16;
  if (v6)
  {
    v13 = 0;
  }

  v14 = &v8[v13];
  if ((a3 - *v14) >= *(v14 + 1))
  {
    return 0;
  }

  else
  {
    return *(v14 + 1);
  }
}

const char *TRawSymbolOwnerData<Pointer32>::relinked_subdylib_name_for_address(uint64_t a1)
{
  result = (*(*a1 + 216))(a1);
  if (result)
  {

    return filename_from_path(result);
  }

  return result;
}

uint64_t TRawSymbolOwnerData<Pointer32>::unique_relinked_subdylib_count(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  v7 = 1065353216;
  v1 = *(a1 + 528);
  v2 = *(a1 + 536);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    do
    {
      std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::__emplace_unique_key_args<char const*,char const* const&>(&v5, (v1 + 8));
      v1 += 16;
    }

    while (v1 != v2);
    v3 = *(&v6 + 1);
  }

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&v5);
  return v3;
}

void TRawSymbolOwnerData<Pointer32>::get_description(std::string *a1@<X0>, std::string *a2@<X8>)
{
  CSCppSymbolOwnerData::get_description(a1, a2);
  v5 = a1[5].__r_.__value_.__r.__words[2];
  for (i = a1[6].__r_.__value_.__l.__data_; v5 != i; v5 += 8)
  {
    (*(**v5 + 48))(__p);
    if ((v9 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v7 = v9;
    }

    else
    {
      v7 = __p[1];
    }

    std::string::append(a2, v6, v7);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D97138F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void CSCppSymbolOwnerData::_perform_operation_under_text_section_dclp<TRawSymbolOwnerData<Pointer32>::_augment_data_to_include_text_section(CSCppSymbolOwner *)::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 12);
  if ((atomic_load_explicit((a1 + 12), memory_order_acquire) & 0x1000) == 0)
  {
    std::mutex::lock((a1 + 16));
    if ((atomic_load_explicit(v2, memory_order_acquire) & 0x1000) == 0)
    {
      TRawSymbolOwnerData<Pointer32>::_update_text_section_data_locked(a2);
    }

    std::mutex::unlock((a1 + 16));
  }
}

BOOL find_lower_and_upper_bounds_of_range<Pointer64,CSCppSectionRange>(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a3) >> 3);
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[3 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 3;
      v7 += ~(v7 >> 1);
      if (v11 > a1)
      {
        v7 = v8;
      }

      else
      {
        v5 = v10;
      }
    }

    while (v7);
    v6 = v5;
  }

  *a4 = v6;
  *a5 = v6;
  v12 = *a3;
  v13 = *a4;
  if (*a4 != *a3)
  {
    v14 = v13 - 3;
    v12 = *a4;
    if (a1 - *(v13 - 3) < *(v13 - 2))
    {
      v15 = v13 - 6;
      while (1)
      {
        v12 = v14;
        *a4 = v15 + 3;
        if (*a3 == v14)
        {
          break;
        }

        v14 = v15;
        v16 = *v15;
        v17 = v15[1];
        v15 -= 3;
        v18 = a1 - v16;
        v13 = v12;
        if (v18 >= v17)
        {
          goto LABEL_15;
        }
      }

      v13 = v14;
    }
  }

LABEL_15:
  if (a2 - 1 == a1)
  {
    v13 = *a5;
  }

  else
  {
    v19 = a3[1];
    if (v19 == v13)
    {
      v13 = a3[1];
    }

    else
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 - v13);
      do
      {
        v21 = v20 >> 1;
        v22 = &v13[3 * (v20 >> 1)];
        v24 = *v22;
        v23 = v22 + 3;
        v20 += ~(v20 >> 1);
        if (a2 - 1 < v24)
        {
          v20 = v21;
        }

        else
        {
          v13 = v23;
        }
      }

      while (v20);
    }

    *a5 = v13;
    v12 = *a4;
  }

  return v12 != v13;
}

void TRawSymbolOwnerData<Pointer32>::_initialize_demangled_names_hash_once(uint64_t a1)
{
  v2 = (a1 + 352);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer32>::_initialize_demangled_names_hash_once(void)::{lambda(void)#1} &&>>);
  }
}

uint64_t ***std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer32>::_initialize_demangled_names_hash_once(void)::{lambda(void)#1} &&>>(uint64_t ***result)
{
  v1 = ***result;
  v2 = *(v1 + 184);
  if (v2 != *(v1 + 192))
  {
    v3 = *(v1 + 184);
    do
    {
      if (atomic_load_explicit((v3 + 20), memory_order_acquire) == 2048 || (atomic_load_explicit((v3 + 20), memory_order_acquire) & 0x1C000) != 0)
      {
        TRawSymbol<Pointer32>::_resolve_name(v3);
        v4 = -1431655765 * ((v2 - *(v1 + 184)) >> 5);
        std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__emplace_multi<char const*,unsigned int>();
      }

      v3 += 96;
      v2 += 96;
    }

    while (v3 != *(v1 + 192));
  }

  return result;
}

void sub_1D9713C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *(a2 + 16), *(a2 + 24));
  *(a2 + 8) = v5;
  inserted = std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__node_insert_multi_prepare(a1, v5, v4);
  std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
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
  v19 = *a3;
  v18 = *(a3 + 8);
  do
  {
    v20 = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v21 = v16[1];
    if (v14 > 1)
    {
      v22 = v16[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v15)
    {
      break;
    }

    v23 = v21 == a2 && v16[3] == v18 && memcmp(v16[2], v19, v18) == 0;
    v24 = v23 != (v17 & 1);
    v25 = v17 & v24;
    v17 |= v24;
  }

  while (v25 != 1);
  return v20;
}

void std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

uint64_t TRawSymbolOwnerData<Pointer32>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer32>>>(int a1, uint64_t a2, char *__s, uint64_t a4, void *a5, void *a6, int a7)
{
  v19[0] = __s;
  v19[1] = strlen(__s);
  v12 = std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__equal_range_multi<std::string_view>(a5, v19);
  v14 = v12;
  v15 = v13;
  if (a7)
  {
    if (v12 != v13)
    {
      v16 = 0;
      do
      {
        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5, *a6 + 96 * *(v14 + 8));
        }

        ++v16;
        v14 = *v14;
      }

      while (v14 != v15);
      return v16;
    }

    return 0;
  }

  if (v12 == v13)
  {
    return 0;
  }

  v16 = 0;
  v18 = v12;
  do
  {
    ++v16;
    v18 = *v18;
  }

  while (v18 != v13);
  if (v16 == 1)
  {
    if (a4)
    {
      (*(a4 + 16))(a4, a2 | 5, *a6 + 96 * *(v12 + 8));
    }

    return 1;
  }

  return v16;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__equal_range_multi<std::string_view>(void *a1, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::find<std::string_view>(a1, a2);
  v4 = v3;
  if (v3)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = v3;
    do
    {
      v7 = *v7;
    }

    while (v7 && v7[3] == v5 && !memcmp(v7[2], v6, v5));
  }

  return v4;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::find<std::string_view>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void TRawSymbolOwnerData<Pointer32>::_initialize_mangled_names_hash_once(uint64_t a1)
{
  v2 = (a1 + 360);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer32>::_initialize_mangled_names_hash_once(void)::{lambda(void)#1} &&>>);
  }
}

uint64_t ***std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer32>::_initialize_mangled_names_hash_once(void)::{lambda(void)#1} &&>>(uint64_t ***result)
{
  v1 = ***result;
  v2 = *(v1 + 184);
  if (v2 != *(v1 + 192))
  {
    v3 = *(v1 + 184);
    do
    {
      if (atomic_load_explicit((v3 + 20), memory_order_acquire) == 2048 || (atomic_load_explicit((v3 + 20), memory_order_acquire) & 0x1C000) != 0)
      {
        TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(v3);
        v4 = -1431655765 * ((v2 - *(v1 + 184)) >> 5);
        std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__emplace_multi<char const*,unsigned int>();
      }

      v3 += 96;
      v2 += 96;
    }

    while (v3 != *(v1 + 192));
  }

  return result;
}

BOOL find_lower_and_upper_bounds_of_range<Pointer32,TRawSymbol<Pointer32>>(unsigned int a1, int a2, char **a3, char **a4, char **a5)
{
  v5 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a3) >> 5);
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[96 * (v7 >> 1)];
      v11 = *v9;
      v10 = (v9 + 24);
      v7 += ~(v7 >> 1);
      if (v11 > a1)
      {
        v7 = v8;
      }

      else
      {
        v5 = v10;
      }
    }

    while (v7);
    v6 = v5;
  }

  *a4 = v6;
  *a5 = v6;
  v12 = *a3;
  v13 = *a4;
  if (*a4 != *a3)
  {
    v14 = v13 - 96;
    v12 = *a4;
    if (a1 - *(v13 - 24) < *(v13 - 23))
    {
      v15 = v13 - 192;
      while (1)
      {
        v12 = v14;
        *a4 = v15 + 96;
        if (*a3 == v14)
        {
          break;
        }

        v14 = v15;
        v16 = *v15;
        v17 = *(v15 + 1);
        v15 -= 96;
        v18 = a1 - v16;
        v13 = v12;
        if (v18 >= v17)
        {
          goto LABEL_15;
        }
      }

      v13 = v14;
    }
  }

LABEL_15:
  if (a2 - 1 == a1)
  {
    v13 = *a5;
  }

  else
  {
    v19 = a3[1];
    if (v19 == v13)
    {
      v13 = a3[1];
    }

    else
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v13) >> 5);
      do
      {
        v21 = v20 >> 1;
        v22 = &v13[96 * (v20 >> 1)];
        v24 = *v22;
        v23 = (v22 + 24);
        v20 += ~(v20 >> 1);
        if (a2 - 1 < v24)
        {
          v20 = v21;
        }

        else
        {
          v13 = v23;
        }
      }

      while (v20);
    }

    *a5 = v13;
    v12 = *a4;
  }

  return v12 != v13;
}

uint64_t ___ZN19TRawSymbolOwnerDataI9Pointer32E18symbol_for_addressEP16CSCppSymbolOwnery_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(((a3 & 0xFFFFFFFFFFFFFFFCLL) + 20), memory_order_acquire) & 0x200) == 0)
  {
    v3 = *(*(result + 32) + 8);
    *(v3 + 40) = a2;
    *(v3 + 48) = a3;
  }

  return result;
}

BOOL find_lower_and_upper_bounds_of_range<Pointer32,TRawSourceInfo<Pointer32>>(unsigned int a1, int a2, char **a3, char **a4, char **a5)
{
  v5 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    v7 = (v6 - *a3) >> 5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[32 * (v7 >> 1)];
      v11 = *v9;
      v10 = (v9 + 8);
      v7 += ~(v7 >> 1);
      if (v11 > a1)
      {
        v7 = v8;
      }

      else
      {
        v5 = v10;
      }
    }

    while (v7);
    v6 = v5;
  }

  *a4 = v6;
  *a5 = v6;
  v12 = *a3;
  v13 = *a4;
  if (*a4 != *a3)
  {
    v14 = v13 - 32;
    v12 = *a4;
    if (a1 - *(v13 - 8) < *(v13 - 7))
    {
      v15 = v13 - 64;
      while (1)
      {
        v12 = v14;
        *a4 = v15 + 32;
        if (*a3 == v14)
        {
          break;
        }

        v14 = v15;
        v16 = *v15;
        v17 = *(v15 + 1);
        v15 -= 32;
        v18 = a1 - v16;
        v13 = v12;
        if (v18 >= v17)
        {
          goto LABEL_15;
        }
      }

      v13 = v14;
    }
  }

LABEL_15:
  if (a2 - 1 == a1)
  {
    v13 = *a5;
  }

  else
  {
    v19 = a3[1];
    if (v19 == v13)
    {
      v13 = a3[1];
    }

    else
    {
      v20 = (v19 - v13) >> 5;
      do
      {
        v21 = v20 >> 1;
        v22 = &v13[32 * (v20 >> 1)];
        v24 = *v22;
        v23 = (v22 + 8);
        v20 += ~(v20 >> 1);
        if (a2 - 1 < v24)
        {
          v20 = v21;
        }

        else
        {
          v13 = v23;
        }
      }

      while (v20);
    }

    *a5 = v13;
    v12 = *a4;
  }

  return v12 != v13;
}

char *TRawSymbol<Pointer32>::find_enclosing_inlined_function(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v3 != v2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5);
    v3 = *(a1 + 56);
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[96 * (v4 >> 1)];
      v8 = *v6;
      v7 = (v6 + 24);
      v4 += ~(v4 >> 1);
      if (*a2 < v8)
      {
        v4 = v5;
      }

      else
      {
        v3 = v7;
      }
    }

    while (v4);
  }

  if (v3 == v2)
  {
    return 0;
  }

  v9 = *(v3 - 24);
  if (*a2 < v9)
  {
    return 0;
  }

  if (a2[1] + *a2 <= *(v3 - 23) + v9)
  {
    return v3 - 96;
  }

  return 0;
}

void _ZZZN19TRawSymbolOwnerDataI9Pointer32E41for_each_inline_range_for_symbol_at_depthEP16CSCppSymbolOwner10_CSTypeRefiU13block_pointerFv8_CSRangePS4_S6_mEENKUlP10TRawSymbolIS0_EE_clESB_ENKUlSB_RT_E_clISF_EEvSB_SE_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == -1 && *a2 > **(a1 + 32))
  {
    v6 = *(a1 + 24);
    v7 = **(a1 + 8);
    v8 = (*(*a1 + 8) - **a1) >> 4;
    (*(*(v6 + 8) + 16))();
    ++**v6;
    **(a1 + 32) = *a2;
  }

  v9 = *a1;
  *&v28 = *(a1 + 16) | 5;
  *(&v28 + 1) = a2;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](v9, &v28);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((atomic_load_explicit((a2 + 20), memory_order_acquire) & 0x80000000) != 0)
  {
    v12 = 5;
    if (!*(a2 + 40))
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *&v28 = v12 | v11;
  *(&v28 + 1) = a2;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](v10, &v28);
  if (*(a1 + 40) + 1 == (*(*a1 + 8) - **a1) >> 4)
  {
    v13 = *(a1 + 24);
    CSSymbolGetRange(*(a1 + 16) | 5, a2);
    v14 = **(a1 + 8);
    v15 = (*(*a1 + 8) - **a1) >> 4;
    (*(*(v13 + 8) + 16))();
    ++**v13;
  }

  v16 = *(a2 + 56);
  v17 = *(a2 + 64);
  if (v16 == v17)
  {
    v18 = *a2;
    v19 = *(a2 + 4);
  }

  else
  {
    do
    {
      _ZZZN19TRawSymbolOwnerDataI9Pointer32E41for_each_inline_range_for_symbol_at_depthEP16CSCppSymbolOwner10_CSTypeRefiU13block_pointerFv8_CSRangePS4_S6_mEENKUlP10TRawSymbolIS0_EE_clESB_ENKUlSB_RT_E_clISF_EEvSB_SE_(a3, v16, a3);
      v16 += 96;
    }

    while (v16 != v17);
    v18 = *(v16 - 96);
    v19 = *(v16 - 92);
  }

  v20 = v19 + v18;
  if (*(a1 + 40) == -1)
  {
    v21 = **(a1 + 32);
    if (v20 <= v21 || (v22 = *(a1 + 24), v23 = **(a1 + 8), v24 = (*(*a1 + 8) - **a1) >> 4, (*(*(v22 + 8) + 16))(), ++**v22, **(a1 + 32) = v20, v21 = v20, *(a1 + 40) == -1))
    {
      if (*(a2 + 4) + *a2 > v21)
      {
        v25 = *(a1 + 24);
        v26 = **(a1 + 8);
        v27 = (*(*a1 + 8) - **a1) >> 4;
        (*(*(v25 + 8) + 16))();
        ++**v25;
        **(a1 + 32) = *(a2 + 4) + *a2;
      }
    }
  }

  *(*a1 + 8) -= 16;
  *(*(a1 + 8) + 8) -= 16;
}

void *std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::__emplace_unique_key_args<char const*,char const* const&>(void *a1, void *a2)
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

uint64_t std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(uint64_t a1)
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

uint64_t _do_sod_header_from_local_dyld_shared_cache<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>@<X0>(CSCppDyldSplitSharedCacheMemory *this@<X2>, uint64_t result@<X0>, void *a3@<X8>)
{
  v4 = atomic_load((*(result + 8) + 40));
  if ((v4 & 0x400000) == 0)
  {
    v5 = result;
    if ((*(result + 108) & 0x4200) == 0x200)
    {
      v7 = *(result + 32);
      v8 = *(result + 40);
      if (v7 != v8)
      {
        while (!*v7)
        {
          v7 += 4;
          if (v7 == v8)
          {
            goto LABEL_25;
          }
        }
      }

      if (v7 != v8)
      {
        v9 = *v7;
        v19 = this;
        v20 = v9;
        result = CSCppDyldSplitSharedCacheMemory::primary_shared_cache(this);
        v10 = *(this + 4);
        if (v10)
        {
          v11 = result;
          v12 = *(v10 + 32);
          if (v12 && result != 0)
          {
            v14 = CSCppDyldSharedCache::dsc_uuid(result);
            result = (*(**(*(v5 + 8) + 32) + 48))(*(*(v5 + 8) + 32));
            if (v14)
            {
              if (result)
              {
                if (*v14 == *result && v14[1] == *(result + 8))
                {
                  v16 = CSCppDyldSharedCache::text_segment_range(v11);
                  if ((*(v5 + 109) & 4) == 0)
                  {
                    v9 += v12 - v16;
                    v20 = v9;
                  }

                  result = CSCppDyldSplitSharedCacheMemory::contains_address(this, v9);
                  if (result)
                  {
                    result = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v19, v9, 1);
                    if (result)
                    {
                      v18 = *(v5 + 120);
                      v17 = *(v5 + 104);
                      std::make_unique[abi:ne200100]<TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>,CSCppDyldSplitSharedCacheMemory &,unsigned long &,TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>> const*&,char const*,unsigned int,int,0>();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_25:
  *a3 = 0;
  return result;
}

void sub_1D9714FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11)
  {
    _do_sod_header_from_local_dyld_shared_cache<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(a11);
  }

  _Unwind_Resume(exception_object);
}

__n128 _do_obtain_stripped_locals_data<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, CSCppDyldSplitSharedCacheMemory *a3@<X2>, uint64_t a4@<X4>, __n128 *a5@<X8>)
{
  if (a4 && uuid_match<SizeAndEndianness<Pointer32,LittleEndian>>(*a2, a1))
  {
    v8 = *(a3 + 4);
    if (v8)
    {
      v9 = *(v8 + 32);
    }

    v10 = *(*a2 + 16);
    v11 = CSCppDyldSplitSharedCacheMemory::local_symbols_shared_cache(a3);
    v12 = CSCppDyldSplitSharedCacheMemory::local_symbols_shared_cache_path(a3);
    if (v11 && v12)
    {
      verify_inmemory_and_ondisk_uuid(v11, v12);
    }
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *a5 = result;
  a5[1] = result;
  return result;
}

BOOL uuid_match<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (UUID::is_null((a2 + 16)))
    {
      v5 = *(a2 + 104);
      if (v5 && (v6 = *(a1 + 36)) != 0 && v6 != v5)
      {
        return 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::extract_segments_and_sections(a1, &v17, 0);
        v9 = v17;
        v11 = *(a2 + 32);
        v10 = *(a2 + 40);
        if (v18 - v17 == v10 - v11)
        {
          v12 = v17 + 2;
          while (1)
          {
            v13 = v12[1];
            if (!v13)
            {
              v13 = *v12;
            }

            v14 = *(v11 + 3);
            v15 = v14;
            if (!v14)
            {
              v15 = *(v11 + 2);
            }

            if (strncmp(v13, v15, 0x10uLL))
            {
              break;
            }

            if (*(v12 - 1) != *(v11 + 1))
            {
              if (!v14)
              {
                v14 = *(v11 + 2);
              }

              if (!is_relocation_skippable(v14))
              {
                break;
              }
            }

            v11 += 32;
            v12 += 4;
            if (v11 == v10)
            {
              v2 = 1;
              goto LABEL_28;
            }
          }
        }

        v2 = 0;
LABEL_28:
        if (v9)
        {
          v18 = v9;
          operator delete(v9);
        }
      }
    }

    else
    {
      v7 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uuid(*(a1 + 24));
      return *(a2 + 16) == *v7 && *(a2 + 24) == v7[1];
    }
  }

  return v2;
}

void sub_1D9715438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(void *a1, unsigned int a2, int a3)
{
  v5 = a2;
  v6 = 28;
  do
  {
    result = (*(**a1 + 32))(*a1, v5, v6);
    if (!result)
    {
      break;
    }

    if (*result != -17958194 || a3 == 0)
    {
      if (*result != -17958194)
      {
        return 0;
      }

      return result;
    }

    v6 = result[5] + 28;
  }

  while (v6 > v8);
  return result;
}

uint64_t TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::TExtendedMachOHeader(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, int a10)
{
  *a1 = &unk_1F5505288;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 36) = a6;
  *(a1 + 40) = a5;
  *(a1 + 48) = a7;
  *(a1 + 52) = 0;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  v11 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(a4, "__TEXT");
  if (v11)
  {
    v12 = v11;
    if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
    {
      *(a1 + 32) = *(a1 + 16) - *(v12 + 24);
    }

    else
    {
      *(a1 + 52) = *(v12 + 24) != 0;
    }
  }

  if (*(*(a1 + 24) + 12) == 10)
  {
    *(a1 + 48) |= extract_dsym_version<SizeAndEndianness<Pointer32,LittleEndian>>(a1);
  }

  return a1;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 20);
  v7 = *(a1 + 16);
  v8 = a1;
  v9 = a1 + 28 + v3;
  v10 = a1 + 28;
  do
  {
    v4 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v7);
    v5 = v4;
  }

  while (v4 && (*v4 != 1 || strncmp(a2, (v4 + 8), 0xFuLL)));
  return v5;
}

unint64_t extract_dsym_version<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1)
{
  result = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(*(a1 + 24), "__TEXT");
  if (result)
  {
    v2 = *(result + 48);
    if (v2)
    {
      v3 = (result + 92);
      while (1)
      {
        v4 = *v3;
        v3 += 17;
        if (v4)
        {
          break;
        }

        if (!--v2)
        {
          return 0x8000000;
        }
      }

      return 0x10000000;
    }

    else
    {
      return 0x8000000;
    }
  }

  return result;
}

unint64_t TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*a1)-- < 1)
  {
    result = 0;
  }

  else
  {
    result = *(a1 + 24);
    v4 = *(a1 + 16);
    v5 = v4 <= result || *(a1 + 8) > result;
    v6 = result + *(result + 4);
    if (v4 < v6 || (*(a1 + 8) >= v6 ? (v7 = 1) : (v7 = v5), v7 == 1))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 8);
        v10 = 134217984;
        v11 = v8;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Corrupt macho header at %#llx\n", &v10, 0xCu);
      }

      result = 0;
      *a1 = 0;
    }

    else
    {
      *(a1 + 24) = v6;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::extract_segments_and_sections(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = *(v6 + 20);
  v79 = *(v6 + 16);
  v80 = v6;
  v81 = v6 + 28 + v7;
  v82 = v6 + 28;
  v8 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v79);
  if (!v8)
  {
    return;
  }

  v9 = 0;
  v10 = 1;
  do
  {
    if (*v8 == 1 && v8[7])
    {
      ++v9;
      v10 += v8[12];
    }

    v8 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v79);
  }

  while (v8);
  if (!v9)
  {
    return;
  }

  if (a2)
  {
    std::vector<CSCppSegmentRange>::reserve(a2, v9);
  }

  v11 = *(*(a1 + 24) + 12);
  if (v11 == 9)
  {
    v14 = 2;
  }

  else if (v11 == 10)
  {
    v12 = *(a1 + 48);
    if ((v12 & 0x38000000) == 0x8000000)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if ((v12 & 0x38000000) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 4;
    }
  }

  else
  {
    v14 = 1;
  }

  v61 = v14;
  if (a3)
  {
    if (v14 == 1)
    {
      v18 = v10;
    }

    else
    {
      if (v14 != 2)
      {
        v16 = *(a3 + 8);
        v15 = *(a3 + 16);
        if (v16 >= v15)
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
          if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_87:
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
          v21 = 2 * v20;
          if (2 * v20 <= v19 + 1)
          {
            v21 = v19 + 1;
          }

          if (v20 >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](a3, v22);
          }

          v23 = 8 * ((v16 - *a3) >> 3);
          *v23 = xmmword_1D97E05B0;
          *(v23 + 16) = CSCppNamedRange::unique_macho_string("UNIVERSE", "SEGMENT", 0x10);
          v17 = v23 + 24;
          v24 = *(a3 + 8) - *a3;
          v25 = v23 - v24;
          memcpy((v23 - v24), *a3, v24);
          v26 = *a3;
          *a3 = v25;
          *(a3 + 8) = v23 + 24;
          *(a3 + 16) = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v16 = xmmword_1D97E05B0;
          *(v16 + 16) = CSCppNamedRange::unique_macho_string("UNIVERSE", "SEGMENT", 0x10);
          v17 = v16 + 24;
          *(a3 + 8) = v16 + 24;
        }

        *(a3 + 8) = v17;
        goto LABEL_39;
      }

      v18 = v9;
    }

    std::vector<CSCppSectionRange>::reserve(a3, v18);
  }

LABEL_39:
  v27 = *(a1 + 24);
  v28 = *(v27 + 20);
  v79 = *(v27 + 16);
  v80 = v27;
  v81 = v27 + 28 + v28;
  v82 = v27 + 28;
  v29 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v79);
  if (v29)
  {
    v31 = v29;
    do
    {
      if (*v31 == 1)
      {
        v32 = *(v31 + 28);
        if (v32)
        {
          if (strcmp((v31 + 8), "__LINKINFO") && strncmp((v31 + 8), "__PLK", 5uLL) && strncmp((v31 + 8), "__PRELINK", 9uLL))
          {
            v33 = *(a1 + 32);
            if (!strncmp((v31 + 8), "__PAGEZERO", 0xBuLL) || (*(*(a1 + 24) + 26) & 0x20) == 0 && !strncmp((v31 + 8), "__UNIXSTACK", 0xCuLL))
            {
              v33 = 0;
            }

            v34 = *(v31 + 24);
            v35 = (v34 + v33);
            if (a2)
            {
              v73 = (v34 + v33);
              v78 = v32;
              v77 = (v31 + 8);
              std::vector<CSCppSegmentRange>::emplace_back<unsigned long long,unsigned long long,char const*>(a2, &v73, &v78, &v77);
            }

            if (a3)
            {
              if (v61 == 2)
              {
                v40 = *(v31 + 28);
                v41 = (*(v31 + 24) + v33);
                v43 = *(a3 + 8);
                v42 = *(a3 + 16);
                if (v43 >= v42)
                {
                  v45 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a3) >> 3);
                  v46 = v45 + 1;
                  if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_87;
                  }

                  v47 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *a3) >> 3);
                  if (2 * v47 > v46)
                  {
                    v46 = 2 * v47;
                  }

                  if (v47 >= 0x555555555555555)
                  {
                    v48 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  v60 = a2;
                  if (v48)
                  {
                    std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](a3, v48);
                  }

                  v52 = 24 * v45;
                  *v52 = v41;
                  *(v52 + 8) = v40;
                  *(v52 + 16) = CSCppNamedRange::unique_macho_string((v31 + 8), "SEGMENT", 0x10);
                  v44 = 24 * v45 + 24;
                  v53 = *(a3 + 8) - *a3;
                  v54 = v52 - v53;
                  memcpy((v52 - v53), *a3, v53);
                  v55 = *a3;
                  *a3 = v54;
                  *(a3 + 8) = v44;
                  *(a3 + 16) = 0;
                  if (v55)
                  {
                    operator delete(v55);
                  }

                  a2 = v60;
                }

                else
                {
                  *v43 = v41;
                  v43[1] = v40;
                  v43[2] = CSCppNamedRange::unique_macho_string((v31 + 8), "SEGMENT", 0x10);
                  v44 = (v43 + 3);
                  *(a3 + 8) = v44;
                }

                *(a3 + 8) = v44;
              }

              else if (v61 == 1)
              {
                v59 = a2;
                v73 = 0;
                v74 = &v73;
                v75 = 0x2000000000;
                v76 = -1;
                v63[0] = MEMORY[0x1E69E9820];
                v63[1] = 0x40000000;
                v64 = ___ZNK20TExtendedMachOHeaderI17SizeAndEndiannessI9Pointer3212LittleEndianEE29extract_segments_and_sectionsEPNSt3__16vectorI17CSCppSegmentRangeNS5_9allocatorIS7_EEEEPNS6_I17CSCppSectionRangeNS8_ISC_EEEE_block_invoke;
                v65 = &unk_1E8583580;
                v66 = &v73;
                v67 = a1;
                v72 = v33;
                v68 = v35;
                v69 = v32;
                v70 = v31;
                v71 = a3;
                v36 = *(v31 + 48);
                LOBYTE(v78) = 0;
                if (v36)
                {
                  v37 = v31 + 56;
                  v38 = 1;
                  do
                  {
                    (v64)(v63, v37, &v78);
                    if (v78)
                    {
                      break;
                    }

                    v37 += 68;
                    v39 = v38++ >= v36;
                  }

                  while (!v39);
                }

                a2 = v59;
                if (!strcmp((v31 + 8), "__TEXT"))
                {
                  v49 = *(v74 + 6);
                  if (v49 != -1)
                  {
                    v50 = *(v31 + 24);
                    v39 = v49 >= v50;
                    v51 = v49 - v50;
                    if (v51 != 0 && v39)
                    {
                      LODWORD(v77) = v50 + v33;
                      v62 = v51;
                      v78 = 0;
                      std::vector<CSCppSectionRange>::emplace_back<unsigned int,unsigned int,char const(&)[12],decltype(nullptr)>(a3, &v77, &v62, "MACH_HEADER");
                    }
                  }
                }

                _Block_object_dispose(&v73, 8);
              }
            }
          }
        }
      }

      v31 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v79);
    }

    while (v31);
  }

  if (a3)
  {
    v56 = *(a3 + 8);
    v57 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v56 - *a3) >> 3));
    if (v56 == *a3)
    {
      v58 = 0;
    }

    else
    {
      v58 = v57;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(*a3, v56, &v73, v58, 1, v30);
  }
}

void sub_1D9715DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::vector<CSCppSegmentRange>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::allocator<CSCppSegmentRange>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<CSCppSectionRange>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<CSCppSegmentRange>::emplace_back<unsigned long long,unsigned long long,char const*>(uint64_t a1, void *a2, uint64_t *a3, CSCppNamedRange **a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *a1) >> 5;
    if ((v9 + 1) >> 59)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 - *a1;
    v11 = v10 >> 4;
    if (v10 >> 4 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::allocator<CSCppSegmentRange>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (32 * v9);
    std::construct_at[abi:ne200100]<CSCppSegmentRange,unsigned long long,unsigned long long,char const*,CSCppSegmentRange*>(v13, a2, a3, a4);
    v8 = v13 + 4;
    v14 = *(a1 + 8) - *a1;
    v15 = v13 - v14;
    memcpy(v13 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13 + 4;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    std::construct_at[abi:ne200100]<CSCppSegmentRange,unsigned long long,unsigned long long,char const*,CSCppSegmentRange*>(*(a1 + 8), a2, a3, a4);
    v8 = (v7 + 32);
    *(a1 + 8) = v7 + 32;
  }

  *(a1 + 8) = v8;
  return v8 - 4;
}

void sub_1D97160B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK20TExtendedMachOHeaderI17SizeAndEndiannessI9Pointer3212LittleEndianEE29extract_segments_and_sectionsEPNSt3__16vectorI17CSCppSegmentRangeNS5_9allocatorIS7_EEEEPNS6_I17CSCppSectionRangeNS8_ISC_EEEE_block_invoke(uint64_t a1, char *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24) < v4)
  {
    v4 = *(v6 + 24);
  }

  *(v6 + 24) = v4;
  v7 = *(a2 + 9);
  v8 = (*(a1 + 80) + *(a2 + 8));
  v9 = *(a1 + 48);
  if (v9 <= v8 && v7 + v8 <= *(a1 + 56) + v9)
  {
    if (v7)
    {
      v15 = *(a1 + 72);
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 >= v16)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v15) >> 3);
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v15) >> 3);
        v21 = 2 * v20;
        if (2 * v20 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](v15, v22);
        }

        v23 = (8 * ((v17 - *v15) >> 3));
        *v23 = v8;
        v23[1] = v7;
        v23[2] = CSCppNamedRange::unique_macho_string((a2 + 16), a2, 0x10);
        v18 = v23 + 3;
        v24 = *(v15 + 8) - *v15;
        v25 = v23 - v24;
        memcpy(v23 - v24, *v15, v24);
        v26 = *v15;
        *v15 = v25;
        *(v15 + 8) = v23 + 3;
        *(v15 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = v8;
        v17[1] = v7;
        v17[2] = CSCppNamedRange::unique_macho_string((a2 + 16), a2, 0x10);
        v18 = v17 + 3;
        *(v15 + 8) = v18;
      }

      *(v15 + 8) = v18;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = *(v5 + 40);
      v11 = v7 + v8;
      v12 = *(a1 + 64) + 8;
      v13 = *(a1 + 56) + v9;
      *buf = 136317698;
      v28 = v10;
      v29 = 1040;
      v30 = 16;
      v31 = 2080;
      v32 = a2 + 16;
      v33 = 1040;
      v34 = 16;
      v35 = 2080;
      v36 = a2;
      v37 = 2048;
      v38 = v8;
      v39 = 2048;
      v40 = v11;
      v41 = 1040;
      v42 = 16;
      v43 = 2080;
      v44 = v12;
      v45 = 2048;
      v46 = v9;
      v47 = 2048;
      v48 = v13;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[header: %s] Ignoring '%.16s %.16s' section [%#llx-%#llx] not contained in '%.16s' segment range [%#llx-%#llx]\n", buf, 0x64u);
      v9 = *(a1 + 48);
    }

    else
    {
      v11 = v7 + v8;
    }

    fprintf(*MEMORY[0x1E69E9848], "[header: %s] Ignoring '%.16s %.16s' section [%#llx-%#llx] not contained in '%.16s' segment range [%#llx-%#llx]\n", *(v5 + 40), a2 + 16, a2, v8, v11, (*(a1 + 64) + 8), v9, *(a1 + 56) + v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t std::vector<CSCppSectionRange>::emplace_back<unsigned int,unsigned int,char const(&)[12],decltype(nullptr)>(uint64_t a1, unsigned int *a2, unsigned int *a3, CSCppNamedRange *this)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](a1, v13);
    }

    v14 = *a2;
    v15 = *a3;
    v16 = (8 * ((v7 - *a1) >> 3));
    *v16 = v14;
    v16[1] = v15;
    v16[2] = CSCppNamedRange::unique_macho_string(this, 0, 0x10);
    v9 = 24 * v10 + 24;
    v17 = *(a1 + 8) - *a1;
    v18 = (24 * v10 - v17);
    memcpy(v18, *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v8 = *a3;
    *v7 = *a2;
    v7[1] = v8;
    v7[2] = CSCppNamedRange::unique_macho_string(this, 0, 0x10);
    v9 = (v7 + 3);
    *(a1 + 8) = v7 + 3;
  }

  *(a1 + 8) = v9;
  return v9 - 24;
}

void *std::construct_at[abi:ne200100]<CSCppSegmentRange,unsigned long long,unsigned long long,char const*,CSCppSegmentRange*>(void *a1, void *a2, uint64_t *a3, CSCppNamedRange **a4)
{
  v5 = *a3;
  v6 = *a4;
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = CSCppNamedRange::unique_macho_string(v6, "SEGMENT", 0x10);
  a1[3] = CSCppNamedRange::unique_macho_string(v6, 0, 0x10);
  return a1;
}

uint64_t *TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uuid(uint64_t a1)
{
  v1 = *(a1 + 20);
  v4 = *(a1 + 16);
  v5 = a1;
  v6 = a1 + 28 + v1;
  v7 = a1 + 28;
  while (1)
  {
    v2 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
    if (!v2)
    {
      break;
    }

    if (*v2 == 27)
    {
      return (v2 + 2);
    }
  }

  return UUID::null_uuid(0);
}

void verify_inmemory_and_ondisk_uuid(const CSCppDyldSharedCache *a1, const char *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  CSCppDyldSharedCache::dsc_uuid(a1);
  operator new();
}

uint64_t *std::vector<std::unique_ptr<CSCppMemory>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
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
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](result, v13);
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
    result = std::__split_buffer<std::unique_ptr<CSCppMemory>>::~__split_buffer(v18);
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

void std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<CSCppMemory>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<CSCppMemory>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<CSCppMemory>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
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

_DWORD *_iterate_macho_header_sections<SizeAndEndianness<Pointer32,LittleEndian>,TSection<SizeAndEndianness<Pointer32,LittleEndian>> * extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer32,LittleEndian>,Pointer64>(TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer32,LittleEndian>::SIZE> &,TRange<Pointer64>)::{lambda(TSection*<SizeAndEndianness<Pointer32,LittleEndian>>,BOOL *)#1}>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 20);
  v8 = *(v3 + 16);
  v9 = v3;
  v10 = v3 + 28 + v4;
  v12 = 0;
  v13 = 0;
  v11 = v3 + 28;
  while (1)
  {
    result = TSectionIterator<SizeAndEndianness<Pointer32,LittleEndian>>::section(&v8);
    if (!result)
    {
      break;
    }

    v6 = result[9];
    if (v6)
    {
      v7 = (*(a2 + 48) + result[8]);
      if (*a2 >= v7 && *(a2 + 8) + *a2 <= v7 + v6)
      {
        **(a2 + 88) = result;
        return result;
      }
    }
  }

  return result;
}

uint64_t _update_symbol_owner_data_text_section_with_discovered_section<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(a2 + 232) = 0;
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  *(a2 + 232) = *(result + 32) + *(a3 + 32);
  *(a2 + 236) = *(a3 + 36);
  if ((*(a3 + 56) & 1) == 0)
  {
    if ((*(*v6 + 16))(v6))
    {
      v7 = *(a3 + 32);
      v8 = *(v5 + 32);
    }

    else
    {
      if ((*(v5 + 50) & 8) != 0)
      {
        v10 = *(v5 + 56);
        if ((*(v5 + 64) & 1) == 0)
        {
          v10 = 0;
        }

        v9 = *(a3 + 40) + *(v5 + 16) - v10;
        goto LABEL_13;
      }

      v7 = *(v5 + 16);
      v8 = *(a3 + 40);
    }

    v9 = v8 + v7;
LABEL_13:
    result = (*(*v6 + 32))(v6, v9, *(a2 + 236));
    goto LABEL_14;
  }

  result = 0;
LABEL_14:
  *(a2 + 240) = result;
  atomic_store(atomic_load_explicit((a2 + 12), memory_order_acquire) | 0x1000, (a2 + 12));
  return result;
}

_DWORD *TSectionIterator<SizeAndEndianness<Pointer32,LittleEndian>>::section(uint64_t a1)
{
  v2 = *(a1 + 32);
  for (i = *(a1 + 36); v2 >= i; i = *(a1 + 36))
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(a1);
    if (!result)
    {
      return result;
    }

    if (*result == 1)
    {
      if (result[7])
      {
        *(a1 + 40) = result + 14;
        *(a1 + 32) = 0;
        *(a1 + 36) = result[12];
      }
    }

    v2 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v2 + 1;
  return (v5 + 68 * v2);
}

const char *_iterate_macho_header_sections<SizeAndEndianness<Pointer32,LittleEndian>,TSection<SizeAndEndianness<Pointer32,LittleEndian>> * extract_default_text_section_data_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer32,LittleEndian>::SIZE> &,BOOL)::{lambda(TSection*<SizeAndEndianness<Pointer32,LittleEndian>>,BOOL *)#1}>(uint64_t a1, char a2, const char **a3)
{
  v5 = *(a1 + 24);
  v6 = *(v5 + 20);
  v12 = *(v5 + 16);
  v13 = v5;
  v14 = v5 + 28 + v6;
  v16 = 0;
  v17 = 0;
  v15 = v5 + 28;
  result = TSectionIterator<SizeAndEndianness<Pointer32,LittleEndian>>::section(&v12);
  if (result)
  {
    v8 = result;
    while (1)
    {
      if (*(v8 + 9))
      {
        v9 = strcmp(v8 + 16, "__TEXT") || strcmp(v8, "__text") != 0;
        result = strcmp(v8 + 16, "__TEXT_EXEC");
        if (result)
        {
          v10 = 1;
        }

        else
        {
          result = strcmp(v8, "__text");
          v10 = result != 0;
        }

        v11 = a2;
        if (*a3 == 0 && !v9)
        {
          *a3 = v8;
          if ((a2 & 1) == 0)
          {
            return result;
          }

          v11 = 1;
        }

        if (!v10 && (v11 & 1) != 0)
        {
          break;
        }
      }

      result = TSectionIterator<SizeAndEndianness<Pointer32,LittleEndian>>::section(&v12);
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    *a3 = v8;
  }

  return result;
}

uint64_t *std::vector<std::unique_ptr<CSCppMemory>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory>*>>,std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory>*>>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v16 = (v10 - a2);
      v17 = (v10 - a2) >> 3;
      if (v17 >= a5)
      {
        v24 = &v10[-8 * a5];
        v25 = a1[1];
        if (v24 < v10)
        {
          v26 = &v10[-8 * a5];
          v25 = a1[1];
          do
          {
            v27 = *v26;
            *v26 = 0;
            v26 += 8;
            *v25++ = v27;
          }

          while (v26 < v10);
        }

        a1[1] = v25;
        std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,0>(v5, v24, v10);
        v23 = &v7[a5];
      }

      else
      {
        v18 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::unique_ptr<CSCppMemory>>,std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory>*>>,std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory>*>>,std::unique_ptr<CSCppMemory>*>(a1, (a3 + v16), a4, a1[1]);
        a1[1] = v18;
        if (v17 < 1)
        {
          return v5;
        }

        v19 = &v18[-a5];
        v20 = v18;
        if (v19 < v10)
        {
          v21 = &v18[-a5];
          v20 = v18;
          do
          {
            v22 = *v21;
            *v21 = 0;
            v21 += 8;
            *v20++ = v22;
          }

          while (v21 < v10);
        }

        a1[1] = v20;
        std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,0>(v5, v19, v18);
        v23 = (v7 + v16);
      }

      std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory> *>>,std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory> *>>,std::unique_ptr<CSCppMemory> *,0>(v7, v23, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v40[4] = a1;
    if (v15)
    {
      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v28 = 8 * (v13 >> 3);
    v29 = 8 * a5;
    v30 = v28;
    v31 = (v28 + 8 * a5);
    do
    {
      v32 = *v7;
      *v7++ = 0;
      *v30++ = v32;
      v29 -= 8;
    }

    while (v29);
    memcpy(v31, v5, a1[1] - v5);
    v33 = *a1;
    v34 = &v31[a1[1] - v5];
    a1[1] = v5;
    v35 = v5 - v33;
    v36 = (v28 - (v5 - v33));
    memcpy(v36, v33, v35);
    v37 = *a1;
    *a1 = v36;
    a1[1] = v34;
    v38 = a1[2];
    a1[2] = 0;
    v40[2] = v37;
    v40[3] = v38;
    v40[0] = v37;
    v40[1] = v37;
    std::__split_buffer<std::unique_ptr<CSCppMemory>>::~__split_buffer(v40);
    return v28;
  }

  return v5;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::unique_ptr<CSCppMemory>>,std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory>*>>,std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory>*>>,std::unique_ptr<CSCppMemory>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  while (a2 != a3)
  {
    v5 = *a2;
    *a2++ = 0;
    *v4++ = v5;
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::unique_ptr<CSCppMemory>>,std::unique_ptr<CSCppMemory>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::unique_ptr<CSCppMemory>>,std::unique_ptr<CSCppMemory>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::unique_ptr<CSCppMemory>>,std::unique_ptr<CSCppMemory>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void **std::_AllocatorDestroyRangeReverse<std::allocator<std::unique_ptr<CSCppMemory>>,std::unique_ptr<CSCppMemory>*>::operator()[abi:ne200100](void **result)
{
  v1 = *result[2];
  v2 = *result[1];
  while (v1 != v2)
  {
    v3 = *--v1;
    result = v3;
    *v1 = 0;
    if (v3)
    {
      result = ((*result)[1])(result);
    }
  }

  return result;
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,0>(void *a1, void *a2, void *a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      v10 = *--a3;
      v9 = v10;
      *a3 = v7;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    while (v6 != a1);
  }

  return a2;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory> *>>,std::move_iterator<std::__wrap_iter<std::unique_ptr<CSCppMemory> *>>,std::unique_ptr<CSCppMemory> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v5;
      ++a3;
    }

    while (v5 != a2);
  }

  return a2;
}

CSCppDsymData *sod_header_from_debug_symbols<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>@<X0>(CSCppDsymData *result@<X0>, void ***a2@<X2>, CSCppDsymData **a3@<X3>, void *a4@<X8>)
{
  v5 = atomic_load((*(result + 1) + 40));
  if ((v5 & 0x10180000) != 0)
  {
    goto LABEL_11;
  }

  v6 = result;
  if ((*(result + 109) & 0x40) != 0)
  {
    goto LABEL_11;
  }

  result = *a3;
  if (!*a3)
  {
    v9 = dsym_data_for_symbol_owner(v6, 0, 0, 0, 0);
    std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](a2, v9);
    result = *a2;
    *a3 = *a2;
    if (!result)
    {
      goto LABEL_11;
    }
  }

  result = CSCppDsymData::binary_path(result);
  if (result && (v10 = CSCppDsymData::binary_path(*a3), (result = find_uuid_and_create_file_memory(v10, (v6 + 2), v6[14], 2)) != 0))
  {
    v11 = result;
    v16 = result;
    if (TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v16, 0, 1))
    {
      if (*(v11 + 87) < 0)
      {
        v12 = *(v11 + 8);
      }

      v13 = *(v11 + 14);
      v14 = *(v11 + 12);
      v15 = *(v11 + 4);
      operator new();
    }

    *a4 = 0;
    return (*(*v11 + 8))(v11);
  }

  else
  {
LABEL_11:
    *a4 = 0;
  }

  return result;
}

void sub_1D9717350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a11);
  }

  (*(*v11 + 8))(v11);
  _Unwind_Resume(a1);
}

void sod_header_from_colocated_dsym<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *a1@<X0>, void ***a2@<X2>, void ***a3@<X3>, void *a4@<X8>)
{
  v5 = atomic_load((*(a1 + 1) + 40));
  if ((v5 & 0x8180000) != 0 || (*(a1 + 109) & 0x40) != 0 || (v8 = *a3) == 0 && (v10 = dsym_data_for_symbol_owner(a1, 0, 0, 0, 0), std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](a2, v10), v8 = *a2, *a3 = *a2, !v8))
  {
    *a4 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, v8 + 72);
    std::string::basic_string[abi:ne200100]<0>(&v38, ".dSYM");
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v13 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v38;
    }

    else
    {
      v14 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v38.__r_.__value_.__l.__size_;
    }

    v15 = p_str + size;
    if (size && v13)
    {
      v18 = v14->__r_.__value_.__s.__data_[0];
      v16 = &v14->__r_.__value_.__s.__data_[1];
      v17 = v18;
      v19 = p_str;
      v20 = (p_str + size);
      do
      {
        v21 = &v19->__r_.__value_.__s.__data_[1];
        while (v19->__r_.__value_.__s.__data_[0] != v17)
        {
          v19 = (v19 + 1);
          ++v21;
          if (v19 == v15)
          {
            goto LABEL_34;
          }
        }

        v22 = v13 - 1;
        v23 = v16;
        while (v22)
        {
          if (v21 == v15)
          {
            goto LABEL_34;
          }

          v25 = *v21++;
          v24 = v25;
          v26 = *v23++;
          --v22;
          if (v24 != v26)
          {
            goto LABEL_29;
          }
        }

        v20 = v19;
LABEL_29:
        v19 = (v19 + 1);
      }

      while (v19 != v15);
    }

    else
    {
      v20 = (p_str + size);
    }

LABEL_34:
    v27 = v20 - p_str;
    if (v20 != v15 || v13 == 0)
    {
      v29 = v27;
    }

    else
    {
      v29 = -1;
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v29 == -1)
    {
      *a4 = 0;
    }

    else
    {
      std::string::basic_string(&v38, &__str, 0, v29, &v37);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v38;
      }

      else
      {
        v30 = v38.__r_.__value_.__r.__words[0];
      }

      file_memory = find_uuid_and_create_file_memory(v30, a1 + 16, *(a1 + 14), 2);
      v32 = file_memory;
      if (file_memory)
      {
        v37 = file_memory;
        if (TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v37, 0, 1))
        {
          if (*(v32 + 87) < 0)
          {
            v33 = *(v32 + 64);
          }

          v34 = *(v32 + 56);
          v35 = *(v32 + 48);
          v36 = *(v32 + 32);
          operator new();
        }

        *a4 = 0;
        (*(*v32 + 8))(v32);
      }

      else
      {
        *a4 = 0;
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1D9717760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a11)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a11);
  }

  (*(*v24 + 8))(v24);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sod_header_from_on_disk_binary<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = atomic_load((*(a1 + 8) + 40));
  if ((v3 & 0x100000) != 0 || (v5 = *(a1 + 108), get_symbol_owner_on_disk_memory<SizeAndEndianness<Pointer32,LittleEndian>>(a1, &v15), !v15))
  {
    *a2 = 0;
  }

  else
  {
    v14 = v15;
    if (TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v14, 0, 1))
    {
      if ((*(a1 + 109) & 0x40) != 0)
      {
        v13 = *(a1 + 120);
        v8 = (a1 + 104);
        v7 = v15;
      }

      else
      {
        if (!*(a1 + 128))
        {
          v6 = *(a1 + 120);
        }

        v7 = v15;
        v8 = (v15 + 56);
      }

      v9 = *v8;
      v10 = *(v7 + 48);
      v11 = *(v7 + 32);
      operator new();
    }

    *a2 = 0;
    v12 = v15;
    v15 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }
}

void sub_1D9717A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a12);
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sod_header_from_target_dyld_shared_cache<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = atomic_load((*(a1 + 8) + 40));
  if ((v3 & 0x20000000) == 0 && (*(a1 + 108) & 0x4200) == 0x200)
  {
    v5 = *((*(**(*(a1 + 8) + 32) + 16))(*(*(a1 + 8) + 32)) + 8);
    v6 = *(a1 + 112);
    v7 = *(a1 + 120);
    operator new();
  }

  *a2 = 0;
  return 0;
}

void sub_1D9717E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23)
{
  (*(*v23 + 8))(v23);
  v26 = *(v24 - 88);
  *(v24 - 88) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t CSCppTextSectionDataDescriptor::_compute_slide_between_symbol_owner_and_header<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 40);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *(v4 + 24) ? *(v4 + 24) : *(v4 + 16);
      if (strncmp(v6, "__PAGEZERO", 0xBuLL))
      {
        break;
      }

      v4 += 32;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::extract_segments_and_sections(a2, &v15, 0);
  v7 = v15;
  v8 = v16;
  v9 = v15;
  if (v15 != v16)
  {
    v10 = *(v4 + 24);
    v9 = v15;
    while (1)
    {
      v11 = v10;
      if (!v10)
      {
        v11 = *(v4 + 16);
      }

      v12 = (v9[3] ? v9[3] : v9[2]);
      if (!strncmp(v11, v12, 0x10uLL))
      {
        break;
      }

      v9 += 4;
      if (v9 == v8)
      {
        goto LABEL_23;
      }
    }
  }

  if (v9 != v8)
  {
    v13 = (*v4 - *v9);
    if (!v7)
    {
      return v13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = 0;
  if (v7)
  {
LABEL_24:
    v16 = v7;
    operator delete(v7);
  }

  return v13;
}

void sub_1D97180F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CSCppDsymData::~CSCppDsymData(result);

    JUMPOUT(0x1DA736760);
  }

  return result;
}

void CSCppDsymData::~CSCppDsymData(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
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

CSCppDsymData *dsym_data_for_symbol_owner(const CSCppSymbolOwner *a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (UUID::is_null((a1 + 1)) & 1) == 0 && (*(a1 + 109))
  {
    v11 = *(a1 + 15);
    if (v11)
    {
      make_dsym_data_from_path_and_uuid(v11, a1 + 1, &v17);
      if (v18 == 1)
      {
        operator new();
      }
    }
  }

  v6 = *(a1 + 15);
  v7 = utility_basename(v6);
  strlcpy(__dst, v6, 0x3FFuLL);
  v8 = strlen(__dst);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = &__dst[v8];
    do
    {
      strlcat(__dst, ".dSYM/Contents/Resources/DWARF/", 0x3FFuLL);
      strlcat(__dst, v7, 0x3FFuLL);
      if (!stat(__dst, &v14) && v14.st_mode < 0)
      {
        make_dsym_data_from_path_and_uuid(__dst, a1 + 1, &v17);
        if (v18 == 1)
        {
          operator new();
        }

        if (v18)
        {
          break;
        }
      }

      if (v9 > __dst)
      {
        while (*v9 != 47)
        {
          if (--v9 <= __dst)
          {
            v9 = __dst;
            break;
          }
        }
      }

      *v9 = 0;
    }

    while (v9 > __dst);
    v10 = v15;
  }

  free(v7);
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1D971852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  if (LOBYTE(STACK[0x8E8]) == 1)
  {
    CSCppDsymData::~CSCppDsymData(&STACK[0x4A0]);
  }

  std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](&a28, 0);
  _Unwind_Resume(a1);
}

uint64_t find_uuid_and_create_file_memory(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    FileOpener::FileOpener(&v26, a1);
    v8 = v26;
    if (v27 == 1 && v26 != 0)
    {
      while (1)
      {
        v11 = readdir(v8);
        if (!v11)
        {
          goto LABEL_21;
        }

        d_type = v11->d_type;
        if (d_type == 4)
        {
          if (v11->d_name[0] == 46 && (!v11->d_name[1] || v11->d_name[1] == 46 && !v11->d_name[2]))
          {
            goto LABEL_20;
          }

          snprintf(__str, 0x400uLL, "%s/%s", a1, v11->d_name);
          file_memory = find_uuid_and_create_file_memory(__str, a2, a3, a4);
        }

        else
        {
          if (d_type != 8)
          {
            goto LABEL_20;
          }

          snprintf(__str, 0x400uLL, "%s/%s", a1, v11->d_name);
          file_memory = new_file_memory_for_uuid_and_arch(__str, a2, a3, a4);
        }

        v10 = file_memory;
        if (file_memory)
        {
          goto LABEL_48;
        }

LABEL_20:
        v8 = v26;
      }
    }

    if (v28 == 1)
    {
      v10 = new_file_memory_for_uuid_and_arch(a1, a2, a3, a4);
    }

    else
    {
LABEL_21:
      std::string::basic_string[abi:ne200100]<0>(__str, a1);
      size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = __str;
      }

      else
      {
        v15 = __str[0].__r_.__value_.__r.__words[0];
      }

      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str[0].__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        goto LABEL_45;
      }

      v16 = &v15[-1].__r_.__value_.__r.__words[2] + 7;
      v17 = size;
      do
      {
        if (!v17)
        {
          v17 = -1;
          break;
        }

        v18 = v16[v17--];
      }

      while (v18 != 46);
      while (size)
      {
        v19 = v16[size--];
        if (v19 == 47)
        {
          goto LABEL_36;
        }
      }

      size = -1;
LABEL_36:
      if (v17 == -1)
      {
        goto LABEL_45;
      }

      v20 = __CFADD__(size, 1);
      v21 = size + 1;
      if (!v20 && v21 >= v17)
      {
        goto LABEL_45;
      }

      std::string::basic_string(&v25, __str, 0, v17, &v29);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v25;
      }

      else
      {
        v22 = v25.__r_.__value_.__r.__words[0];
      }

      v10 = find_uuid_and_create_file_memory(v22, a2, a3, a4);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (!v10)
      {
LABEL_45:
        v10 = 0;
      }

      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str[0].__r_.__value_.__l.__data_);
      }
    }

LABEL_48:
    FileOpener::~FileOpener(&v26);
  }

  else
  {
    v10 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1D97187EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, DIR *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  FileOpener::~FileOpener(&a18);
  _Unwind_Resume(a1);
}

uint64_t new_file_memory_for_uuid_and_arch(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3002000000;
  v12 = __Block_byref_object_copy__73;
  v13 = __Block_byref_object_dispose__74;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___Z33new_file_memory_for_uuid_and_archPKcRK4UUID17CSCppArchitecturej_block_invoke;
  v7[3] = &unk_1E85835A8;
  v7[6] = a2;
  v7[7] = a3;
  v7[4] = v15;
  v7[5] = &v9;
  v8 = a4;
  iterate_symbol_owners_from_memory(0, a1, 0, 0, 0, &v17, 0, 0, v7);
  v4 = v10[5];
  v10[5] = 0;
  _Block_object_dispose(&v9, 8);
  v5 = v14;
  v14 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Block_object_dispose(v15, 8);
  return v4;
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

void FileOpener::FileOpener(FileOpener *this, const char *a2)
{
  *this = 0;
  *(this + 4) = 0;
  if (!stat(a2, (this + 16)))
  {
    v4 = *(this + 10);
    *(this + 8) = (v4 & 0x4000) != 0;
    *(this + 9) = v4 >> 15;
    if ((v4 >> 14))
    {
      *this = opendir(a2);
    }
  }
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__74(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ___Z33new_file_memory_for_uuid_and_archPKcRK4UUID17CSCppArchitecturej_block_invoke(uint64_t result, uint64_t a2)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v3 = result;
    v4 = *(*a2 + 112);
    result = UUID::is_null((*a2 + 16));
    if (result)
    {
      result = (v3 + 7);
      if (v3[7] == v4)
      {
        *(*(v3[4] + 8) + 24) = 1;
        goto LABEL_14;
      }

      if (!*(*(v3[5] + 8) + 40))
      {
        result = CSCppArchitecture::matches(result, v4);
        if (result)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v5 = v3[6];
      v7 = *v5;
      v6 = v5[1];
      if (v7 == *(*a2 + 16) && v6 == *(*a2 + 24))
      {
        result = CSCppArchitecture::matches((v3 + 7), v4);
        *(*(v3[4] + 8) + 24) = result;
        if (result)
        {
LABEL_14:
          v9 = *(v3[5] + 8);
          v10 = *(v9 + 40);
          if (v10)
          {
            *(v9 + 40) = 0;
            (*(*v10 + 8))(v10);
          }

          v11 = *(*a2 + 152);
          v12 = *(*a2 + 160);
          v13 = *(*a2 + 120);
          operator new();
        }
      }

      else
      {
        *(*(v3[4] + 8) + 24) = 0;
      }
    }
  }

  return result;
}

void FileOpener::~FileOpener(DIR **this)
{
  v1 = *this;
  if (v1)
  {
    closedir(v1);
  }
}

void get_symbol_owner_on_disk_memory<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 108);
  *a2 = 0;
  if ((v4 & 0x4000) != 0)
  {
    v7 = *(a1 + 120);
    v8 = split_static_library_path(v7);
    v9 = v8;
    if (v8)
    {
      std::string::basic_string[abi:ne200100](__dst, v7, v8 - v7);
      v10 = strlen(v9);
      std::string::basic_string[abi:ne200100](__p, (v9 + 1), v10 - 2);
      if (*(a1 + 160))
      {
        v11 = *(a1 + 152);
        operator new();
      }

      if (v17 >= 0)
      {
        v12 = __dst;
      }

      else
      {
        v12 = __dst[0];
      }

      if (v15 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *a2 = new_memory_for_object_in_archive(v12, v13, *(a1 + 104), *(a1 + 112), 0, 2);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  else
  {
    v5 = *(a1 + 128);
    if (!v5)
    {
      v5 = *(a1 + 120);
    }

    if (*(a1 + 160))
    {
      v6 = *(a1 + 152);
      operator new();
    }

    *a2 = new_file_memory_for_uuid_and_arch(v5, a1 + 16, *(a1 + 112), 2);
  }
}

void sub_1D9718F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  *v20 = 0;
  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t sod_header_from_task_fault<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = atomic_load((*(result + 8) + 40));
  if ((v3 & 0x200000) == 0)
  {
    v4 = result;
    if ((*(result + 109) & 0x40) == 0)
    {
      result = (*(**(*(result + 8) + 32) + 32))(*(*(result + 8) + 32));
      if ((result & 1) != 0 || *(v4[1] + 144))
      {
        v5 = v4[4];
        v6 = v4[5];
        if (v5 != v6)
        {
          while (!*v5)
          {
            v5 += 4;
            if (v5 == v6)
            {
              goto LABEL_12;
            }
          }
        }

        if (v5 != v6)
        {
          v7 = *v5;
          v8 = v4[1];
          if (*(v8 + 144))
          {
            operator new();
          }

          v9 = (*(**(v8 + 32) + 16))(*(v8 + 32));
          CSCppMachTaskContainer::is_self_task(v9);
          operator new();
        }
      }
    }
  }

LABEL_12:
  *a2 = 0;
  return result;
}

void sub_1D971939C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a11);
  }

  (*(*v11 + 8))(v11);
  _Unwind_Resume(a1);
}

void sub_1D97196E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<std::unique_ptr<CSCppMemory>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v16 = a13;
  a13 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  (*(*v14 + 8))(v14);
  _Unwind_Resume(a1);
}

void sub_1D9719C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void **);
  if (LOBYTE(STACK[0x468]) == 1)
  {
    CSCppDsymData::~CSCppDsymData(va1);
  }

  std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](va, 0);
  (*(*v4 + 8))(v4);
  _Unwind_Resume(a1);
}

void sub_1D9719F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<std::unique_ptr<CSCppMemory>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v16 = a12;
  a12 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  (*(*v14 + 8))(v14);
  _Unwind_Resume(a1);
}

void sub_1D971A150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = &unk_1F55053E8;
  v6 = *(a1 + 40);
  v10 = *(a1 + 24);
  v11 = v6;
  v12[0] = *(a1 + 56);
  *(v12 + 9) = *(a1 + 65);
  v9 = *(a1 + 8);
  v13 = &v14;
  _iterate_macho_header_sections<SizeAndEndianness<Pointer64,LittleEndian>,TSection<SizeAndEndianness<Pointer64,LittleEndian>> * extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer64,LittleEndian>::SIZE> &,TRange<Pointer64>)::{lambda(TSection*<SizeAndEndianness<Pointer64,LittleEndian>>,BOOL *)#1}>(a1, v8);
  _update_symbol_owner_data_text_section_with_discovered_section<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a2, v14);
  return v14;
}

uint64_t TRawSymbolOwnerData<Pointer64>::footprint(void *a1)
{
  v2 = a1[17];
  v3 = a1[18];
  if (v2 == v3)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 += (*(*v5 + 40))(v5);
    }

    while (v2 != v3);
    v6 = v4;
  }

  return v6 + a1[21] + a1[24] + a1[27] - (a1[20] + a1[23] + a1[26]);
}

unint64_t TRawSymbolOwnerData<Pointer64>::regions_in_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 160) == *(a1 + 168) || a3 == -1)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  lower_and_upper_bounds_of = find_lower_and_upper_bounds_of_range<Pointer64,CSCppSectionRange>(a3, a4 + a3, (a1 + 160), &v12, &v11);
  v6 = 0;
  if (lower_and_upper_bounds_of)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3);
    if (a5)
    {
      do
      {
        (*(a5 + 16))(a5, a2 | 4);
        v12 += 24;
      }

      while (v12 < v11);
    }
  }

  return v6;
}

uint64_t TRawSymbolOwnerData<Pointer64>::symbols(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (v3 >= *(a1 + 192))
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a1 + 184);
  do
  {
    if ((atomic_load_explicit((v8 + 28), memory_order_acquire) & 0x800) == 0 || atomic_load_explicit((v8 + 28), memory_order_acquire) == 2048)
    {
      if (a3)
      {
        (*(a3 + 16))(a3, a2 | 5, v3);
      }

      ++v7;
    }

    v8 += 104;
    v3 += 104;
  }

  while (v8 < *(a1 + 192));
  return v7;
}

uint64_t TRawSymbolOwnerData<Pointer64>::symbols_for_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  TRawSymbolOwnerData<Pointer64>::_initialize_demangled_names_hash_once(a1);

  return TRawSymbolOwnerData<Pointer64>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer64>>>(a1, a2, a3, a4, (a1 + 280), (a1 + 184), 1);
}

uint64_t TRawSymbolOwnerData<Pointer64>::symbols_for_mangled_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  TRawSymbolOwnerData<Pointer64>::_initialize_mangled_names_hash_once(a1);

  return TRawSymbolOwnerData<Pointer64>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer64>>>(a1, a2, a3, a4, (a1 + 320), (a1 + 184), 1);
}

uint64_t TRawSymbolOwnerData<Pointer64>::symbol_for_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  TRawSymbolOwnerData<Pointer64>::_initialize_demangled_names_hash_once(a1);

  return TRawSymbolOwnerData<Pointer64>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer64>>>(a1, a2, a3, a4, (a1 + 280), (a1 + 184), 0);
}

uint64_t TRawSymbolOwnerData<Pointer64>::symbol_for_mangled_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  TRawSymbolOwnerData<Pointer64>::_initialize_mangled_names_hash_once(a1);

  return TRawSymbolOwnerData<Pointer64>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer64>>>(a1, a2, a3, a4, (a1 + 320), (a1 + 184), 0);
}

uint64_t TRawSymbolOwnerData<Pointer64>::symbols_in_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == -1 || *(a1 + 184) == *(a1 + 192))
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v7 = 0;
  if (find_lower_and_upper_bounds_of_range<Pointer64,TRawSymbol<Pointer64>>(a3, a4 + a3, (a1 + 184), &v12, &v11))
  {
    v7 = 0;
    v8 = v12;
    do
    {
      v9 = (v8 + 28);
      if ((atomic_load_explicit(v9, memory_order_acquire) & 0x800) == 0 || atomic_load_explicit(v9, memory_order_acquire) == 2048)
      {
        if (a5)
        {
          (*(a5 + 16))(a5, a2 | 5, v12);
        }

        ++v7;
      }

      v8 = v12 + 104;
      v12 = v8;
    }

    while (v8 < v11);
  }

  return v7;
}

uint64_t TRawSymbolOwnerData<Pointer64>::symbol_for_address(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__2;
  v12 = 0;
  v13 = 0;
  v11 = __Block_byref_object_dispose__2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN19TRawSymbolOwnerDataI9Pointer64E18symbol_for_addressEP16CSCppSymbolOwnery_block_invoke;
  v6[3] = &unk_1E85835D0;
  v6[4] = &v7;
  (*(*a1 + 128))(a1, a2, a3, 1, v6);
  v3 = v8[5];
  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1D971A858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t TRawSymbolOwnerData<Pointer64>::source_infos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v5 < v4)
    {
      v8 = *(a1 + 208);
      do
      {
        (*(a3 + 16))(a3, a2 | 6, v5);
        v8 += 40;
        v4 = *(a1 + 216);
        v5 += 40;
      }

      while (v8 < v4);
    }
  }

  else
  {
    v4 = *(a1 + 216);
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((v4 - *(a1 + 208)) >> 3);
}

unint64_t TRawSymbolOwnerData<Pointer64>::source_infos_in_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 208) == *(a1 + 216) || a3 == -1)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  lower_and_upper_bounds_of = find_lower_and_upper_bounds_of_range<Pointer64,TRawSourceInfo<Pointer64>>(a3, a4 + a3, (a1 + 208), &v12, &v11);
  v6 = 0;
  if (lower_and_upper_bounds_of)
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v12) >> 3);
    if (a5)
    {
      do
      {
        (*(a5 + 16))(a5, a2 | 6);
        v12 += 40;
      }

      while (v12 < v11);
    }
  }

  return v6;
}

uint64_t TRawSymbolOwnerData<Pointer64>::source_info_for_address(void *a1, uint64_t a2, unint64_t a3)
{
  result = 0;
  if (a3 != -1)
  {
    v7 = a1[26];
    v6 = a1[27];
    if (v7 != v6)
    {
      v25[0] = a3;
      v25[1] = 1;
      v10 = a1[23];
      v9 = a1[24];
      if (v9 != v10)
      {
        v11 = 0x4EC4EC4EC4EC4EC5 * (v9 - v10);
        v9 = a1[23];
        do
        {
          v12 = v11 >> 1;
          v13 = &v9[13 * (v11 >> 1)];
          v15 = *v13;
          v14 = v13 + 13;
          v11 += ~(v11 >> 1);
          if (v15 > a3)
          {
            v11 = v12;
          }

          else
          {
            v9 = v14;
          }
        }

        while (v11);
      }

      if (v9 != v10)
      {
        v17 = *(v9 - 13);
        v18 = *(v9 - 12);
        v16 = (v9 - 13);
        if (a3 - v17 < v18)
        {
          if (TRawSymbol<Pointer64>::find_enclosing_inlined_function(v16, v25))
          {
            v19 = 5;
            return v19 | a2;
          }

          v7 = a1[26];
          v6 = a1[27];
        }
      }

      if (v6 != v7)
      {
        v20 = 0xCCCCCCCCCCCCCCCDLL * (v6 - v7);
        v6 = v7;
        do
        {
          v21 = v20 >> 1;
          v22 = &v6[5 * (v20 >> 1)];
          v24 = *v22;
          v23 = v22 + 5;
          v20 += ~(v20 >> 1);
          if (v25[0] < v24)
          {
            v20 = v21;
          }

          else
          {
            v6 = v23;
          }
        }

        while (v20);
      }

      if (v6 != v7 && a3 - *(v6 - 5) < *(v6 - 4))
      {
        v19 = 6;
        return v19 | a2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t TRawSymbolOwnerData<Pointer64>::for_each_stack_frame_at_address(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 136))(a1);
  v10 = v9;
  if (CSIsNull(v8, v9))
  {
    return 0;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v29[0] = a3;
  v29[1] = 1;
  v12 = a1[26];
  v13 = a1[27];
  if (v13 != v12)
  {
    v14 = 0xCCCCCCCCCCCCCCCDLL * (v13 - v12);
    v13 = a1[26];
    do
    {
      v15 = v14 >> 1;
      v16 = &v13[5 * (v14 >> 1)];
      v18 = *v16;
      v17 = v16 + 5;
      v14 += ~(v14 >> 1);
      if (v18 > a3)
      {
        v14 = v15;
      }

      else
      {
        v13 = v17;
      }
    }

    while (v14);
  }

  if (v13 != v12)
  {
    v19 = *(v13 - 5);
    v21 = *(v13 - 4);
    v20 = v13 - 5;
    if (a3 - v19 >= v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    if (v11)
    {
      goto LABEL_13;
    }

    return 0;
  }

  v22 = 0;
  if (!v11)
  {
    return 0;
  }

LABEL_13:
  enclosing_inlined_function = TRawSymbol<Pointer64>::find_enclosing_inlined_function(v11, v29);
  if (enclosing_inlined_function)
  {
    v24 = enclosing_inlined_function;
    v25 = 1;
    do
    {
      if ((atomic_load_explicit(v24 + 7, memory_order_acquire) & 0x80000000) != 0 && *(v24 + 6))
      {
        (*(a4 + 16))(a4, a2 | 5, v11, a2 | 5, v24);
      }

      else
      {
        (*(a4 + 16))(a4, a2 | 5, v11, 0, 0);
      }

      v11 = v24;
      ++v25;
      v24 = TRawSymbol<Pointer64>::find_enclosing_inlined_function(v24, v29);
    }

    while (v24);
  }

  else
  {
    v25 = 1;
  }

  if (v22)
  {
    v26 = a2 | 6;
  }

  else
  {
    v26 = 0;
  }

  if (v22)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  (*(a4 + 16))(a4, a2 | 5, v11, v26, v27);
  return v25;
}

uint64_t TRawSymbolOwnerData<Pointer64>::for_each_inline_range_for_symbol_at_depth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  v6 = *(a4 & 0xFFFFFFFFFFFFFFFCLL);
  v10 = 0;
  v11 = v6;
  v9[0] = &v10;
  v9[1] = a6;
  v18[0] = &v15;
  v18[1] = &__p;
  v18[2] = a2;
  v18[3] = v9;
  v18[4] = &v11;
  v19 = a5;
  _ZZZN19TRawSymbolOwnerDataI9Pointer64E41for_each_inline_range_for_symbol_at_depthEP16CSCppSymbolOwner10_CSTypeRefiU13block_pointerFv8_CSRangePS4_S6_mEENKUlP10TRawSymbolIS0_EE_clESB_ENKUlSB_RT_E_clISF_EEvSB_SE_(v18, a4 & 0xFFFFFFFFFFFFFFFCLL, v18);
  v7 = v10;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v7;
}

void sub_1D971AD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TRawSymbolOwnerData<Pointer64>::for_each_deduplicated_variant_for_symbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Range = CSSymbolGetRange(a3, a4);
  if (Range == -1)
  {
    return 0;
  }

  v10 = *(a1 + 184);
  v11 = *(a1 + 192);
  v12 = (a1 + 184);
  if (v10 == v11)
  {
    return 0;
  }

  v13 = Range;
  v14 = v9 + Range;
  v19 = 0;
  v20 = 0;
  lower_and_upper_bounds_of = find_lower_and_upper_bounds_of_range<Pointer64,TRawSymbol<Pointer64>>(Range, v9 + Range, v12, &v20, &v19);
  v16 = 0;
  if (lower_and_upper_bounds_of)
  {
    v16 = 0;
    v17 = v20;
    do
    {
      if (*v17 >= v13 && *(v17 + 8) + *v17 <= v14 && (atomic_load_explicit((v17 + 28), memory_order_acquire) & 0x800) != 0 && atomic_load_explicit((v20 + 28), memory_order_acquire) != 2048)
      {
        if (a5)
        {
          (*(a5 + 16))(a5, a2 | 5, v20);
        }

        ++v16;
      }

      v17 = v20 + 104;
      v20 = v17;
    }

    while (v17 < v19);
  }

  return v16;
}

unint64_t TRawSymbolOwnerData<Pointer64>::raw_bytes_for_range(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1[29];
  v5 = a3 - v4;
  if (a3 >= v4 && a4 + a3 <= a1[30] + v4 && (v6 = a1[31]) != 0)
  {
    return v6 + v5;
  }

  else
  {
    return TRawSymbolOwnerData<Pointer64>::_raw_bytes_for_range_on_demand_fault(a1, a2, a3, a4);
  }
}

uint64_t TRawSymbolOwnerData<Pointer64>::optional_symbolicator_flags(uint64_t a1)
{
  if (*(a1 + 412))
  {
    return a1 + 408;
  }

  else
  {
    return 0;
  }
}

uint64_t TRawSymbolOwnerData<Pointer64>::relinked_subdylib_path_for_address(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = 0;
  if (a3 != -1)
  {
    v5 = *(a1 + 536);
    v6 = *(a1 + 544);
    if (v5 != v6)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - v5);
      v8 = v5;
      do
      {
        v9 = v7 >> 1;
        v10 = &v8[3 * (v7 >> 1)];
        v12 = *v10;
        v11 = v10 + 3;
        v7 += ~(v7 >> 1);
        if (v12 > a3)
        {
          v7 = v9;
        }

        else
        {
          v8 = v11;
        }
      }

      while (v7);
      result = 0;
      v13 = v8 == v5;
      v14 = 0x1FFFFFFFFFFFFFFDLL;
      if (v13)
      {
        v14 = 0;
      }

      v15 = &v8[v14];
      if (a3 - *v15 < v15[1])
      {
        return v15[2];
      }
    }
  }

  return result;
}

const char *TRawSymbolOwnerData<Pointer64>::relinked_subdylib_name_for_address(uint64_t a1)
{
  result = (*(*a1 + 216))(a1);
  if (result)
  {

    return filename_from_path(result);
  }

  return result;
}

uint64_t TRawSymbolOwnerData<Pointer64>::unique_relinked_subdylib_count(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  v7 = 1065353216;
  v1 = *(a1 + 536);
  v2 = *(a1 + 544);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    do
    {
      std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::__emplace_unique_key_args<char const*,char const* const&>(&v5, (v1 + 16));
      v1 += 24;
    }

    while (v1 != v2);
    v3 = *(&v6 + 1);
  }

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&v5);
  return v3;
}

void TRawSymbolOwnerData<Pointer64>::get_description(std::string *a1@<X0>, std::string *a2@<X8>)
{
  CSCppSymbolOwnerData::get_description(a1, a2);
  v5 = a1[5].__r_.__value_.__r.__words[2];
  for (i = a1[6].__r_.__value_.__l.__data_; v5 != i; v5 += 8)
  {
    (*(**v5 + 48))(__p);
    if ((v9 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v7 = v9;
    }

    else
    {
      v7 = __p[1];
    }

    std::string::append(a2, v6, v7);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D971B144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void CSCppSymbolOwnerData::_perform_operation_under_text_section_dclp<TRawSymbolOwnerData<Pointer64>::_augment_data_to_include_text_section(CSCppSymbolOwner *)::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 12);
  if ((atomic_load_explicit((a1 + 12), memory_order_acquire) & 0x1000) == 0)
  {
    std::mutex::lock((a1 + 16));
    if ((atomic_load_explicit(v2, memory_order_acquire) & 0x1000) == 0)
    {
      TRawSymbolOwnerData<Pointer64>::_update_text_section_data_locked(a2);
    }

    std::mutex::unlock((a1 + 16));
  }
}

void TRawSymbolOwnerData<Pointer64>::_initialize_demangled_names_hash_once(uint64_t a1)
{
  v2 = (a1 + 360);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer64>::_initialize_demangled_names_hash_once(void)::{lambda(void)#1} &&>>);
  }
}

uint64_t ***std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer64>::_initialize_demangled_names_hash_once(void)::{lambda(void)#1} &&>>(uint64_t ***result)
{
  v1 = ***result;
  v2 = *(v1 + 184);
  if (v2 != *(v1 + 192))
  {
    v3 = *(v1 + 184);
    do
    {
      if (atomic_load_explicit((v3 + 28), memory_order_acquire) == 2048 || (atomic_load_explicit((v3 + 28), memory_order_acquire) & 0x1C000) != 0)
      {
        TRawSymbol<Pointer64>::_resolve_name(v3);
        v4 = -991146299 * ((v2 - *(v1 + 184)) >> 3);
        std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__emplace_multi<char const*,unsigned int>();
      }

      v3 += 104;
      v2 += 104;
    }

    while (v3 != *(v1 + 192));
  }

  return result;
}

uint64_t TRawSymbolOwnerData<Pointer64>::_invoke_callback_on_name_match<std::unordered_multimap<std::string_view,unsigned int>,std::vector<TRawSymbol<Pointer64>>>(int a1, uint64_t a2, char *__s, uint64_t a4, void *a5, void *a6, int a7)
{
  v19[0] = __s;
  v19[1] = strlen(__s);
  v12 = std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__equal_range_multi<std::string_view>(a5, v19);
  v14 = v12;
  v15 = v13;
  if (a7)
  {
    if (v12 != v13)
    {
      v16 = 0;
      do
      {
        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5, *a6 + 104 * *(v14 + 8));
        }

        ++v16;
        v14 = *v14;
      }

      while (v14 != v15);
      return v16;
    }

    return 0;
  }

  if (v12 == v13)
  {
    return 0;
  }

  v16 = 0;
  v18 = v12;
  do
  {
    ++v16;
    v18 = *v18;
  }

  while (v18 != v13);
  if (v16 == 1)
  {
    if (a4)
    {
      (*(a4 + 16))(a4, a2 | 5, *a6 + 104 * *(v12 + 8));
    }

    return 1;
  }

  return v16;
}

void TRawSymbolOwnerData<Pointer64>::_initialize_mangled_names_hash_once(uint64_t a1)
{
  v2 = (a1 + 368);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer64>::_initialize_mangled_names_hash_once(void)::{lambda(void)#1} &&>>);
  }
}

uint64_t ***std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer64>::_initialize_mangled_names_hash_once(void)::{lambda(void)#1} &&>>(uint64_t ***result)
{
  v1 = ***result;
  v2 = *(v1 + 184);
  if (v2 != *(v1 + 192))
  {
    v3 = *(v1 + 184);
    do
    {
      if (atomic_load_explicit((v3 + 28), memory_order_acquire) == 2048 || (atomic_load_explicit((v3 + 28), memory_order_acquire) & 0x1C000) != 0)
      {
        TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::PersistentMangledName>(v3);
        v4 = -991146299 * ((v2 - *(v1 + 184)) >> 3);
        std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__emplace_multi<char const*,unsigned int>();
      }

      v3 += 104;
      v2 += 104;
    }

    while (v3 != *(v1 + 192));
  }

  return result;
}

BOOL find_lower_and_upper_bounds_of_range<Pointer64,TRawSymbol<Pointer64>>(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    v7 = 0x4EC4EC4EC4EC4EC5 * ((v6 - *a3) >> 3);
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[13 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 13;
      v7 += ~(v7 >> 1);
      if (v11 > a1)
      {
        v7 = v8;
      }

      else
      {
        v5 = v10;
      }
    }

    while (v7);
    v6 = v5;
  }

  *a4 = v6;
  *a5 = v6;
  v12 = *a3;
  v13 = *a4;
  if (*a4 != *a3)
  {
    v14 = v13 - 13;
    v12 = *a4;
    if (a1 - *(v13 - 13) < *(v13 - 12))
    {
      v15 = v13 - 26;
      while (1)
      {
        v12 = v14;
        *a4 = v15 + 13;
        if (*a3 == v14)
        {
          break;
        }

        v14 = v15;
        v16 = *v15;
        v17 = v15[1];
        v15 -= 13;
        v18 = a1 - v16;
        v13 = v12;
        if (v18 >= v17)
        {
          goto LABEL_15;
        }
      }

      v13 = v14;
    }
  }

LABEL_15:
  if (a2 - 1 == a1)
  {
    v13 = *a5;
  }

  else
  {
    v19 = a3[1];
    if (v19 == v13)
    {
      v13 = a3[1];
    }

    else
    {
      v20 = 0x4EC4EC4EC4EC4EC5 * (v19 - v13);
      do
      {
        v21 = v20 >> 1;
        v22 = &v13[13 * (v20 >> 1)];
        v24 = *v22;
        v23 = v22 + 13;
        v20 += ~(v20 >> 1);
        if (a2 - 1 < v24)
        {
          v20 = v21;
        }

        else
        {
          v13 = v23;
        }
      }

      while (v20);
    }

    *a5 = v13;
    v12 = *a4;
  }

  return v12 != v13;
}

uint64_t ___ZN19TRawSymbolOwnerDataI9Pointer64E18symbol_for_addressEP16CSCppSymbolOwnery_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(((a3 & 0xFFFFFFFFFFFFFFFCLL) + 28), memory_order_acquire) & 0x200) == 0)
  {
    v3 = *(*(result + 32) + 8);
    *(v3 + 40) = a2;
    *(v3 + 48) = a3;
  }

  return result;
}

BOOL find_lower_and_upper_bounds_of_range<Pointer64,TRawSourceInfo<Pointer64>>(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a3) >> 3);
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[5 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 5;
      v7 += ~(v7 >> 1);
      if (v11 > a1)
      {
        v7 = v8;
      }

      else
      {
        v5 = v10;
      }
    }

    while (v7);
    v6 = v5;
  }

  *a4 = v6;
  *a5 = v6;
  v12 = *a3;
  v13 = *a4;
  if (*a4 != *a3)
  {
    v14 = v13 - 5;
    v12 = *a4;
    if (a1 - *(v13 - 5) < *(v13 - 4))
    {
      v15 = v13 - 10;
      while (1)
      {
        v12 = v14;
        *a4 = v15 + 5;
        if (*a3 == v14)
        {
          break;
        }

        v14 = v15;
        v16 = *v15;
        v17 = v15[1];
        v15 -= 5;
        v18 = a1 - v16;
        v13 = v12;
        if (v18 >= v17)
        {
          goto LABEL_15;
        }
      }

      v13 = v14;
    }
  }

LABEL_15:
  if (a2 - 1 == a1)
  {
    v13 = *a5;
  }

  else
  {
    v19 = a3[1];
    if (v19 == v13)
    {
      v13 = a3[1];
    }

    else
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v19 - v13);
      do
      {
        v21 = v20 >> 1;
        v22 = &v13[5 * (v20 >> 1)];
        v24 = *v22;
        v23 = v22 + 5;
        v20 += ~(v20 >> 1);
        if (a2 - 1 < v24)
        {
          v20 = v21;
        }

        else
        {
          v13 = v23;
        }
      }

      while (v20);
    }

    *a5 = v13;
    v12 = *a4;
  }

  return v12 != v13;
}

void *TRawSymbol<Pointer64>::find_enclosing_inlined_function(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (v3 != v2)
  {
    v4 = 0x4EC4EC4EC4EC4EC5 * (v3 - v2);
    v3 = *(a1 + 64);
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[13 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 13;
      v4 += ~(v4 >> 1);
      if (*a2 < v8)
      {
        v4 = v5;
      }

      else
      {
        v3 = v7;
      }
    }

    while (v4);
  }

  if (v3 == v2)
  {
    return 0;
  }

  v9 = *(v3 - 13);
  if (*a2 < v9)
  {
    return 0;
  }

  if (a2[1] + *a2 <= *(v3 - 12) + v9)
  {
    return v3 - 13;
  }

  return 0;
}

void _ZZZN19TRawSymbolOwnerDataI9Pointer64E41for_each_inline_range_for_symbol_at_depthEP16CSCppSymbolOwner10_CSTypeRefiU13block_pointerFv8_CSRangePS4_S6_mEENKUlP10TRawSymbolIS0_EE_clESB_ENKUlSB_RT_E_clISF_EEvSB_SE_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == -1 && *a2 > **(a1 + 32))
  {
    v6 = *(a1 + 24);
    v7 = **(a1 + 8);
    v8 = (*(*a1 + 8) - **a1) >> 4;
    (*(*(v6 + 8) + 16))();
    ++**v6;
    **(a1 + 32) = *a2;
  }

  v9 = *a1;
  *&v27 = *(a1 + 16) | 5;
  *(&v27 + 1) = a2;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](v9, &v27);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((atomic_load_explicit((a2 + 28), memory_order_acquire) & 0x80000000) != 0)
  {
    v12 = 5;
    if (!*(a2 + 48))
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *&v27 = v12 | v11;
  *(&v27 + 1) = a2;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](v10, &v27);
  if (*(a1 + 40) + 1 == (*(*a1 + 8) - **a1) >> 4)
  {
    v13 = *(a1 + 24);
    CSSymbolGetRange(*(a1 + 16) | 5, a2);
    v14 = **(a1 + 8);
    v15 = (*(*a1 + 8) - **a1) >> 4;
    (*(*(v13 + 8) + 16))();
    ++**v13;
  }

  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  if (v16 == v17)
  {
    v18 = *a2;
    v19 = *(a2 + 8);
  }

  else
  {
    do
    {
      _ZZZN19TRawSymbolOwnerDataI9Pointer64E41for_each_inline_range_for_symbol_at_depthEP16CSCppSymbolOwner10_CSTypeRefiU13block_pointerFv8_CSRangePS4_S6_mEENKUlP10TRawSymbolIS0_EE_clESB_ENKUlSB_RT_E_clISF_EEvSB_SE_(a3, v16, a3);
      v16 += 104;
    }

    while (v16 != v17);
    v18 = *(v16 - 104);
    v19 = *(v16 - 96);
  }

  v20 = v19 + v18;
  if (*(a1 + 40) == -1)
  {
    if (v20 <= **(a1 + 32))
    {
      v20 = **(a1 + 32);
    }

    else
    {
      v21 = *(a1 + 24);
      v22 = **(a1 + 8);
      v23 = (*(*a1 + 8) - **a1) >> 4;
      (*(*(v21 + 8) + 16))();
      ++**v21;
      **(a1 + 32) = v20;
      if (*(a1 + 40) != -1)
      {
        goto LABEL_15;
      }
    }

    if (*(a2 + 8) + *a2 > v20)
    {
      v24 = *(a1 + 24);
      v25 = **(a1 + 8);
      v26 = (*(*a1 + 8) - **a1) >> 4;
      (*(*(v24 + 8) + 16))();
      ++**v24;
      **(a1 + 32) = *(a2 + 8) + *a2;
    }
  }

LABEL_15:
  *(*a1 + 8) -= 16;
  *(*(a1 + 8) + 8) -= 16;
}

uint64_t _do_sod_header_from_local_dyld_shared_cache<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>@<X0>(CSCppDyldSplitSharedCacheMemory *this@<X2>, uint64_t result@<X0>, void *a3@<X8>)
{
  v4 = atomic_load((*(result + 8) + 40));
  if ((v4 & 0x400000) == 0)
  {
    v5 = result;
    if ((*(result + 108) & 0x4200) == 0x200)
    {
      v7 = *(result + 32);
      v8 = *(result + 40);
      if (v7 != v8)
      {
        while (!*v7)
        {
          v7 += 4;
          if (v7 == v8)
          {
            goto LABEL_25;
          }
        }
      }

      if (v7 != v8)
      {
        v9 = *v7;
        v19 = this;
        v20 = v9;
        result = CSCppDyldSplitSharedCacheMemory::primary_shared_cache(this);
        v10 = *(this + 4);
        if (v10)
        {
          v11 = result;
          v12 = *(v10 + 32);
          if (v12 && result != 0)
          {
            v14 = CSCppDyldSharedCache::dsc_uuid(result);
            result = (*(**(*(v5 + 8) + 32) + 48))(*(*(v5 + 8) + 32));
            if (v14)
            {
              if (result)
              {
                if (*v14 == *result && v14[1] == *(result + 8))
                {
                  v16 = CSCppDyldSharedCache::text_segment_range(v11);
                  if ((*(v5 + 109) & 4) == 0)
                  {
                    v9 += v12 - v16;
                    v20 = v9;
                  }

                  result = CSCppDyldSplitSharedCacheMemory::contains_address(this, v9);
                  if (result)
                  {
                    result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v19, v9, 1);
                    if (result)
                    {
                      v18 = *(v5 + 120);
                      v17 = *(v5 + 104);
                      std::make_unique[abi:ne200100]<TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>,CSCppDyldSplitSharedCacheMemory &,unsigned long &,TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>> const*&,char const*,unsigned int,int,0>();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_25:
  *a3 = 0;
  return result;
}

void sub_1D971BD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11)
  {
    _do_sod_header_from_local_dyld_shared_cache<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(a11);
  }

  _Unwind_Resume(exception_object);
}

__n128 _do_obtain_stripped_locals_data<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, CSCppDyldSplitSharedCacheMemory *a3@<X2>, uint64_t a4@<X4>, __n128 *a5@<X8>)
{
  if (a4 && uuid_match<SizeAndEndianness<Pointer64,LittleEndian>>(*a2, a1))
  {
    v8 = *(a3 + 4);
    if (v8)
    {
      v9 = *(v8 + 32);
    }

    v10 = *(*a2 + 16);
    v11 = CSCppDyldSplitSharedCacheMemory::local_symbols_shared_cache(a3);
    v12 = CSCppDyldSplitSharedCacheMemory::local_symbols_shared_cache_path(a3);
    if (v11 && v12)
    {
      verify_inmemory_and_ondisk_uuid(v11, v12);
    }
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *a5 = result;
  a5[1] = result;
  return result;
}

BOOL uuid_match<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (UUID::is_null((a2 + 16)))
    {
      v5 = *(a2 + 104);
      if (v5 && (v6 = *(a1 + 40)) != 0 && v6 != v5)
      {
        return 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::extract_segments_and_sections(a1, &v17, 0);
        v9 = v17;
        v11 = *(a2 + 32);
        v10 = *(a2 + 40);
        if (v18 - v17 == v10 - v11)
        {
          v12 = v17 + 2;
          while (1)
          {
            v13 = v12[1];
            if (!v13)
            {
              v13 = *v12;
            }

            v14 = *(v11 + 3);
            v15 = v14;
            if (!v14)
            {
              v15 = *(v11 + 2);
            }

            if (strncmp(v13, v15, 0x10uLL))
            {
              break;
            }

            if (*(v12 - 1) != *(v11 + 1))
            {
              if (!v14)
              {
                v14 = *(v11 + 2);
              }

              if (!is_relocation_skippable(v14))
              {
                break;
              }
            }

            v11 += 32;
            v12 += 4;
            if (v11 == v10)
            {
              v2 = 1;
              goto LABEL_28;
            }
          }
        }

        v2 = 0;
LABEL_28:
        if (v9)
        {
          v18 = v9;
          operator delete(v9);
        }
      }
    }

    else
    {
      v7 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uuid(*(a1 + 24));
      return *(a2 + 16) == *v7 && *(a2 + 24) == v7[1];
    }
  }

  return v2;
}

void sub_1D971C1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(void *a1, uint64_t a2, int a3)
{
  v6 = 32;
  do
  {
    result = (*(**a1 + 32))(*a1, a2, v6);
    if (!result)
    {
      break;
    }

    if (*result != -17958193 || a3 == 0)
    {
      if (*result != -17958193)
      {
        return 0;
      }

      return result;
    }

    v6 = result[5] + 32;
  }

  while (v6 > v8);
  return result;
}

uint64_t TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::TExtendedMachOHeader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, __int128 *a8)
{
  *a1 = &unk_1F55053E8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = a6;
  *(a1 + 48) = a5;
  *(a1 + 56) = a7;
  *(a1 + 60) = 0;
  v9 = *a8;
  *(a1 + 80) = *(a8 + 2);
  *(a1 + 64) = v9;
  v10 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(a4, "__TEXT");
  if (v10)
  {
    v11 = v10;
    if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
    {
      *(a1 + 32) = *(a1 + 16) - *(v11 + 24);
    }

    else
    {
      *(a1 + 60) = *(v11 + 24) != 0;
    }
  }

  if (*(*(a1 + 24) + 12) == 10)
  {
    *(a1 + 56) |= extract_dsym_version<SizeAndEndianness<Pointer64,LittleEndian>>(a1);
  }

  return a1;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 20);
  v7 = *(a1 + 16);
  v8 = a1;
  v9 = a1 + 32 + v3;
  v10 = a1 + 32;
  do
  {
    v4 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v7);
    v5 = v4;
  }

  while (v4 && (*v4 != 25 || strncmp(a2, (v4 + 8), 0xFuLL)));
  return v5;
}

unint64_t extract_dsym_version<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1)
{
  result = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(*(a1 + 24), "__TEXT");
  if (result)
  {
    v2 = *(result + 64);
    if (v2)
    {
      v3 = (result + 112);
      while (1)
      {
        v4 = *v3;
        v3 += 10;
        if (v4)
        {
          break;
        }

        if (!--v2)
        {
          return 0x8000000;
        }
      }

      return 0x10000000;
    }

    else
    {
      return 0x8000000;
    }
  }

  return result;
}

void TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::extract_segments_and_sections(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = *(v6 + 20);
  v77 = *(v6 + 16);
  v78 = v6;
  v79 = v6 + 32 + v7;
  v80 = v6 + 32;
  v8 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v77);
  if (!v8)
  {
    return;
  }

  v9 = 0;
  v10 = 1;
  do
  {
    if (*v8 == 25 && *(v8 + 32))
    {
      ++v9;
      v10 += *(v8 + 64);
    }

    v8 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v77);
  }

  while (v8);
  if (!v9)
  {
    return;
  }

  if (a2)
  {
    std::vector<CSCppSegmentRange>::reserve(a2, v9);
  }

  v11 = *(*(a1 + 24) + 12);
  if (v11 == 9)
  {
    v14 = 2;
  }

  else if (v11 == 10)
  {
    v12 = *(a1 + 56);
    if ((v12 & 0x38000000) == 0x8000000)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if ((v12 & 0x38000000) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 4;
    }
  }

  else
  {
    v14 = 1;
  }

  v60 = v14;
  if (a3)
  {
    if (v14 == 1)
    {
      v18 = v10;
    }

    else
    {
      if (v14 != 2)
      {
        v16 = *(a3 + 8);
        v15 = *(a3 + 16);
        if (v16 >= v15)
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
          if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_86:
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
          v21 = 2 * v20;
          if (2 * v20 <= v19 + 1)
          {
            v21 = v19 + 1;
          }

          if (v20 >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](a3, v22);
          }

          v23 = 8 * ((v16 - *a3) >> 3);
          *v23 = xmmword_1D97E05C0;
          *(v23 + 16) = CSCppNamedRange::unique_macho_string("UNIVERSE", "SEGMENT", 0x10);
          v17 = v23 + 24;
          v24 = *(a3 + 8) - *a3;
          v25 = v23 - v24;
          memcpy((v23 - v24), *a3, v24);
          v26 = *a3;
          *a3 = v25;
          *(a3 + 8) = v23 + 24;
          *(a3 + 16) = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v16 = xmmword_1D97E05C0;
          *(v16 + 16) = CSCppNamedRange::unique_macho_string("UNIVERSE", "SEGMENT", 0x10);
          v17 = v16 + 24;
          *(a3 + 8) = v16 + 24;
        }

        *(a3 + 8) = v17;
        goto LABEL_39;
      }

      v18 = v9;
    }

    std::vector<CSCppSectionRange>::reserve(a3, v18);
  }

LABEL_39:
  v27 = *(a1 + 24);
  v28 = *(v27 + 20);
  v77 = *(v27 + 16);
  v78 = v27;
  v79 = v27 + 32 + v28;
  v80 = v27 + 32;
  v29 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v77);
  if (v29)
  {
    v31 = v29;
    do
    {
      if (*v31 == 25)
      {
        v32 = *(v31 + 32);
        if (v32)
        {
          if (strcmp((v31 + 8), "__LINKINFO") && strncmp((v31 + 8), "__PLK", 5uLL) && strncmp((v31 + 8), "__PRELINK", 9uLL))
          {
            v33 = *(a1 + 32);
            if (!strncmp((v31 + 8), "__PAGEZERO", 0xBuLL) || (*(*(a1 + 24) + 26) & 0x20) == 0 && !strncmp((v31 + 8), "__UNIXSTACK", 0xCuLL))
            {
              v33 = 0;
            }

            v34 = *(v31 + 24);
            v35 = v34 + v33;
            if (a2)
            {
              v71 = v34 + v33;
              v76 = v32;
              v75 = (v31 + 8);
              std::vector<CSCppSegmentRange>::emplace_back<unsigned long long,unsigned long long,char const*>(a2, &v71, &v76, &v75);
            }

            if (a3)
            {
              if (v60 == 2)
              {
                v40 = *(v31 + 32);
                v41 = *(v31 + 24) + v33;
                v43 = *(a3 + 8);
                v42 = *(a3 + 16);
                if (v43 >= v42)
                {
                  v45 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a3) >> 3);
                  v46 = v45 + 1;
                  if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_86;
                  }

                  v47 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *a3) >> 3);
                  if (2 * v47 > v46)
                  {
                    v46 = 2 * v47;
                  }

                  if (v47 >= 0x555555555555555)
                  {
                    v48 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  if (v48)
                  {
                    std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](a3, v48);
                  }

                  v53 = 24 * v45;
                  *v53 = v41;
                  *(v53 + 8) = v40;
                  *(v53 + 16) = CSCppNamedRange::unique_macho_string((v31 + 8), "SEGMENT", 0x10);
                  v44 = 24 * v45 + 24;
                  v54 = *(a3 + 8) - *a3;
                  v55 = (24 * v45 - v54);
                  memcpy(v55, *a3, v54);
                  v56 = *a3;
                  *a3 = v55;
                  *(a3 + 8) = v44;
                  *(a3 + 16) = 0;
                  if (v56)
                  {
                    operator delete(v56);
                  }
                }

                else
                {
                  *v43 = v41;
                  v43[1] = v40;
                  v43[2] = CSCppNamedRange::unique_macho_string((v31 + 8), "SEGMENT", 0x10);
                  v44 = (v43 + 3);
                  *(a3 + 8) = v43 + 3;
                }

                *(a3 + 8) = v44;
              }

              else if (v60 == 1)
              {
                v71 = 0;
                v72 = &v71;
                v73 = 0x2000000000;
                v74 = -1;
                v61[0] = MEMORY[0x1E69E9820];
                v61[1] = 0x40000000;
                v62 = ___ZNK20TExtendedMachOHeaderI17SizeAndEndiannessI9Pointer6412LittleEndianEE29extract_segments_and_sectionsEPNSt3__16vectorI17CSCppSegmentRangeNS5_9allocatorIS7_EEEEPNS6_I17CSCppSectionRangeNS8_ISC_EEEE_block_invoke;
                v63 = &unk_1E85835F8;
                v64 = &v71;
                v65 = a1;
                v66 = v33;
                v67 = v35;
                v68 = v32;
                v69 = v31;
                v70 = a3;
                v36 = *(v31 + 64);
                LOBYTE(v76) = 0;
                if (v36)
                {
                  v37 = v31 + 72;
                  v38 = 1;
                  do
                  {
                    (v62)(v61, v37, &v76);
                    if (v76)
                    {
                      break;
                    }

                    v37 += 80;
                  }

                  while (v38++ < v36);
                }

                if (!strcmp((v31 + 8), "__TEXT"))
                {
                  v49 = v72[3];
                  if (v49 != -1)
                  {
                    v50 = *(v31 + 24);
                    v51 = v49 > v50;
                    v52 = (v49 - v50);
                    if (v51)
                    {
                      v76 = v50 + v33;
                      v75 = v52;
                      std::vector<CSCppSectionRange>::emplace_back<unsigned long long,unsigned long long,char const(&)[12],decltype(nullptr)>(a3, &v76, &v75, "MACH_HEADER");
                    }
                  }
                }

                _Block_object_dispose(&v71, 8);
              }
            }
          }
        }
      }

      v31 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v77);
    }

    while (v31);
  }

  if (a3)
  {
    v57 = *(a3 + 8);
    v58 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v57 - *a3) >> 3));
    if (v57 == *a3)
    {
      v59 = 0;
    }

    else
    {
      v59 = v58;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(*a3, v57, &v71, v59, 1, v30);
  }
}

void sub_1D971CA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK20TExtendedMachOHeaderI17SizeAndEndiannessI9Pointer6412LittleEndianEE29extract_segments_and_sectionsEPNSt3__16vectorI17CSCppSegmentRangeNS5_9allocatorIS7_EEEEPNS6_I17CSCppSectionRangeNS8_ISC_EEEE_block_invoke(void *a1, char *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  v5 = a1[5];
  v6 = *(a1[4] + 8);
  if (*(v6 + 24) < v4)
  {
    v4 = *(v6 + 24);
  }

  *(v6 + 24) = v4;
  v7 = *(a2 + 5);
  v8 = a1[7];
  v9 = a1[6] + *(a2 + 4);
  if (v9 >= v8 && v7 + v9 <= a1[8] + v8)
  {
    if (v7)
    {
      v15 = a1[10];
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 >= v16)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v15) >> 3);
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v15) >> 3);
        v21 = 2 * v20;
        if (2 * v20 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](v15, v22);
        }

        v23 = (8 * ((v17 - *v15) >> 3));
        *v23 = v9;
        v23[1] = v7;
        v23[2] = CSCppNamedRange::unique_macho_string((a2 + 16), a2, 0x10);
        v18 = v23 + 3;
        v24 = *(v15 + 8) - *v15;
        v25 = v23 - v24;
        memcpy(v23 - v24, *v15, v24);
        v26 = *v15;
        *v15 = v25;
        *(v15 + 8) = v23 + 3;
        *(v15 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = v9;
        v17[1] = v7;
        v17[2] = CSCppNamedRange::unique_macho_string((a2 + 16), a2, 0x10);
        v18 = v17 + 3;
        *(v15 + 8) = v18;
      }

      *(v15 + 8) = v18;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = *(v5 + 48);
      v11 = v7 + v9;
      v12 = a1[9] + 8;
      v13 = a1[8] + v8;
      *buf = 136317698;
      v28 = v10;
      v29 = 1040;
      v30 = 16;
      v31 = 2080;
      v32 = a2 + 16;
      v33 = 1040;
      v34 = 16;
      v35 = 2080;
      v36 = a2;
      v37 = 2048;
      v38 = v9;
      v39 = 2048;
      v40 = v11;
      v41 = 1040;
      v42 = 16;
      v43 = 2080;
      v44 = v12;
      v45 = 2048;
      v46 = v8;
      v47 = 2048;
      v48 = v13;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[header: %s] Ignoring '%.16s %.16s' section [%#llx-%#llx] not contained in '%.16s' segment range [%#llx-%#llx]\n", buf, 0x64u);
      v8 = a1[7];
    }

    else
    {
      v11 = v7 + v9;
    }

    fprintf(*MEMORY[0x1E69E9848], "[header: %s] Ignoring '%.16s %.16s' section [%#llx-%#llx] not contained in '%.16s' segment range [%#llx-%#llx]\n", *(v5 + 48), a2 + 16, a2, v9, v11, (a1[9] + 8), v8, a1[8] + v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t std::vector<CSCppSectionRange>::emplace_back<unsigned long long,unsigned long long,char const(&)[12],decltype(nullptr)>(uint64_t a1, uint64_t *a2, uint64_t *a3, CSCppNamedRange *this)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](a1, v13);
    }

    v14 = *a2;
    v15 = *a3;
    v16 = (8 * ((v7 - *a1) >> 3));
    *v16 = v14;
    v16[1] = v15;
    v16[2] = CSCppNamedRange::unique_macho_string(this, 0, 0x10);
    v9 = 24 * v10 + 24;
    v17 = *(a1 + 8) - *a1;
    v18 = (24 * v10 - v17);
    memcpy(v18, *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v8 = *a3;
    *v7 = *a2;
    v7[1] = v8;
    v7[2] = CSCppNamedRange::unique_macho_string(this, 0, 0x10);
    v9 = (v7 + 3);
    *(a1 + 8) = v7 + 3;
  }

  *(a1 + 8) = v9;
  return v9 - 24;
}

uint64_t *TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uuid(uint64_t a1)
{
  v1 = *(a1 + 20);
  v4 = *(a1 + 16);
  v5 = a1;
  v6 = a1 + 32 + v1;
  v7 = a1 + 32;
  while (1)
  {
    v2 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
    if (!v2)
    {
      break;
    }

    if (*v2 == 27)
    {
      return (v2 + 2);
    }
  }

  return UUID::null_uuid(0);
}

unint64_t _iterate_macho_header_sections<SizeAndEndianness<Pointer64,LittleEndian>,TSection<SizeAndEndianness<Pointer64,LittleEndian>> * extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer64,LittleEndian>::SIZE> &,TRange<Pointer64>)::{lambda(TSection*<SizeAndEndianness<Pointer64,LittleEndian>>,BOOL *)#1}>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 20);
  v8 = *(v3 + 16);
  v9 = v3;
  v10 = v3 + 32 + v4;
  v12 = 0;
  v13 = 0;
  v11 = v3 + 32;
  while (1)
  {
    result = TSectionIterator<SizeAndEndianness<Pointer64,LittleEndian>>::section(&v8);
    if (!result)
    {
      break;
    }

    v6 = *(result + 40);
    if (v6)
    {
      v7 = *(a2 + 48) + *(result + 32);
      if (*a2 >= v7 && *(a2 + 8) + *a2 <= v7 + v6)
      {
        **(a2 + 104) = result;
        return result;
      }
    }
  }

  return result;
}

uint64_t _update_symbol_owner_data_text_section_with_discovered_section<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = *(result + 8);
    *(a2 + 232) = *(result + 32) + *(a3 + 32);
    *(a2 + 240) = *(a3 + 40);
    if (*(a3 + 64))
    {
      result = 0;
    }

    else
    {
      if ((*(*v6 + 16))(v6))
      {
        v7 = *(v5 + 32) + *(a3 + 32);
      }

      else if ((*(v5 + 58) & 8) != 0)
      {
        v8 = *(v5 + 64);
        if ((*(v5 + 80) & 1) == 0)
        {
          v8 = 0;
        }

        v7 = *(v5 + 16) - v8 + *(a3 + 48);
      }

      else
      {
        v7 = *(v5 + 16) + *(a3 + 48);
      }

      result = (*(*v6 + 32))(v6, v7, *(a2 + 240));
    }

    *(a2 + 248) = result;
    atomic_store(atomic_load_explicit((a2 + 12), memory_order_acquire) | 0x1000, (a2 + 12));
  }

  else
  {
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
  }

  return result;
}

unint64_t TSectionIterator<SizeAndEndianness<Pointer64,LittleEndian>>::section(uint64_t a1)
{
  v2 = *(a1 + 32);
  for (i = *(a1 + 36); v2 >= i; i = *(a1 + 36))
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(a1);
    if (!result)
    {
      return result;
    }

    if (*result == 25)
    {
      if (*(result + 32))
      {
        *(a1 + 40) = result + 72;
        *(a1 + 32) = 0;
        *(a1 + 36) = *(result + 64);
      }
    }

    v2 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v2 + 1;
  return v5 + 80 * v2;
}

unint64_t _iterate_macho_header_sections<SizeAndEndianness<Pointer64,LittleEndian>,TSection<SizeAndEndianness<Pointer64,LittleEndian>> * extract_default_text_section_data_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer64,LittleEndian>::SIZE> &,BOOL)::{lambda(TSection*<SizeAndEndianness<Pointer64,LittleEndian>>,BOOL *)#1}>(uint64_t a1, char a2, unint64_t *a3)
{
  v5 = *(a1 + 24);
  v6 = *(v5 + 20);
  v12 = *(v5 + 16);
  v13 = v5;
  v14 = v5 + 32 + v6;
  v16 = 0;
  v17 = 0;
  v15 = v5 + 32;
  result = TSectionIterator<SizeAndEndianness<Pointer64,LittleEndian>>::section(&v12);
  if (result)
  {
    v8 = result;
    while (1)
    {
      if (*(v8 + 40))
      {
        v9 = strcmp((v8 + 16), "__TEXT") || strcmp(v8, "__text") != 0;
        result = strcmp((v8 + 16), "__TEXT_EXEC");
        if (result)
        {
          v10 = 1;
        }

        else
        {
          result = strcmp(v8, "__text");
          v10 = result != 0;
        }

        v11 = a2;
        if (*a3 == 0 && !v9)
        {
          *a3 = v8;
          if ((a2 & 1) == 0)
          {
            return result;
          }

          v11 = 1;
        }

        if (!v10 && (v11 & 1) != 0)
        {
          break;
        }
      }

      result = TSectionIterator<SizeAndEndianness<Pointer64,LittleEndian>>::section(&v12);
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    *a3 = v8;
  }

  return result;
}

CSCppDsymData *sod_header_from_debug_symbols<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>@<X0>(CSCppDsymData *result@<X0>, void ***a2@<X2>, CSCppDsymData **a3@<X3>, void *a4@<X8>)
{
  v5 = atomic_load((*(result + 1) + 40));
  if ((v5 & 0x10180000) != 0)
  {
    goto LABEL_11;
  }

  v6 = result;
  if ((*(result + 109) & 0x40) != 0)
  {
    goto LABEL_11;
  }

  result = *a3;
  if (!*a3)
  {
    v9 = dsym_data_for_symbol_owner(v6, 0, 0, 0, 0);
    std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](a2, v9);
    result = *a2;
    *a3 = *a2;
    if (!result)
    {
      goto LABEL_11;
    }
  }

  result = CSCppDsymData::binary_path(result);
  if (result && (v10 = CSCppDsymData::binary_path(*a3), (result = find_uuid_and_create_file_memory(v10, (v6 + 2), v6[14], 2)) != 0))
  {
    v11 = result;
    v16 = result;
    if (TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v16, 0, 1))
    {
      if (*(v11 + 87) < 0)
      {
        v12 = *(v11 + 8);
      }

      v13 = *(v11 + 14);
      v14 = *(v11 + 6);
      v15 = *(v11 + 4);
      operator new();
    }

    *a4 = 0;
    return (*(*v11 + 8))(v11);
  }

  else
  {
LABEL_11:
    *a4 = 0;
  }

  return result;
}

void sub_1D971D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a10);
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

void sod_header_from_colocated_dsym<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *a1@<X0>, void ***a2@<X2>, void ***a3@<X3>, void *a4@<X8>)
{
  v5 = atomic_load((*(a1 + 1) + 40));
  if ((v5 & 0x8180000) != 0 || (*(a1 + 109) & 0x40) != 0 || (v8 = *a3) == 0 && (v10 = dsym_data_for_symbol_owner(a1, 0, 0, 0, 0), std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](a2, v10), v8 = *a2, *a3 = *a2, !v8))
  {
    *a4 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, v8 + 72);
    std::string::basic_string[abi:ne200100]<0>(v40, ".dSYM");
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v13 = v41;
    if ((v41 & 0x80u) == 0)
    {
      v14 = v40;
    }

    else
    {
      v14 = v40[0];
    }

    if ((v41 & 0x80u) != 0)
    {
      v13 = v40[1];
    }

    v15 = p_str + size;
    if (size && v13)
    {
      v18 = *v14;
      v16 = v14 + 1;
      v17 = v18;
      v19 = p_str;
      v20 = (p_str + size);
      do
      {
        v21 = &v19->__r_.__value_.__s.__data_[1];
        while (v19->__r_.__value_.__s.__data_[0] != v17)
        {
          v19 = (v19 + 1);
          ++v21;
          if (v19 == v15)
          {
            goto LABEL_34;
          }
        }

        v22 = (v13 - 1);
        v23 = v16;
        while (v22)
        {
          if (v21 == v15)
          {
            goto LABEL_34;
          }

          v25 = *v21++;
          v24 = v25;
          v26 = *v23++;
          --v22;
          if (v24 != v26)
          {
            goto LABEL_29;
          }
        }

        v20 = v19;
LABEL_29:
        v19 = (v19 + 1);
      }

      while (v19 != v15);
    }

    else
    {
      v20 = (p_str + size);
    }

LABEL_34:
    v27 = v20 - p_str;
    if (v20 != v15 || v13 == 0)
    {
      v29 = v27;
    }

    else
    {
      v29 = -1;
    }

    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    if (v29 == -1)
    {
      *a4 = 0;
    }

    else
    {
      std::string::basic_string(&v38, &__str, 0, v29, v40);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v38;
      }

      else
      {
        v30 = v38.__r_.__value_.__r.__words[0];
      }

      file_memory = find_uuid_and_create_file_memory(v30, a1 + 16, *(a1 + 14), 2);
      v32 = file_memory;
      if (file_memory)
      {
        v37 = file_memory;
        if (TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v37, 0, 1))
        {
          if (*(v32 + 87) < 0)
          {
            v33 = *(v32 + 64);
          }

          v34 = *(v32 + 56);
          v35 = *(v32 + 48);
          v36 = *(v32 + 32);
          operator new();
        }

        *a4 = 0;
        (*(*v32 + 8))(v32);
      }

      else
      {
        *a4 = 0;
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1D971D8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a10)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a10);
  }

  (*(*v23 + 8))(v23);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sod_header_from_on_disk_binary<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = atomic_load((*(a1 + 8) + 40));
  if ((v3 & 0x100000) != 0 || (v5 = *(a1 + 108), get_symbol_owner_on_disk_memory<SizeAndEndianness<Pointer64,LittleEndian>>(a1, &v15), !v15))
  {
    *a2 = 0;
  }

  else
  {
    v14 = v15;
    if (TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v14, 0, 1))
    {
      if ((*(a1 + 109) & 0x40) != 0)
      {
        v13 = *(a1 + 120);
        v8 = (a1 + 104);
        v7 = v15;
      }

      else
      {
        if (!*(a1 + 128))
        {
          v6 = *(a1 + 120);
        }

        v7 = v15;
        v8 = (v15 + 56);
      }

      v9 = *v8;
      v10 = *(v7 + 48);
      v11 = *(v7 + 32);
      operator new();
    }

    *a2 = 0;
    v12 = v15;
    v15 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }
}

void sub_1D971DBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  if (a11)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a11);
  }

  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sod_header_from_target_dyld_shared_cache<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = atomic_load((*(a1 + 8) + 40));
  if ((v3 & 0x20000000) == 0 && (*(a1 + 108) & 0x4200) == 0x200)
  {
    v5 = *((*(**(*(a1 + 8) + 32) + 16))(*(*(a1 + 8) + 32)) + 8);
    v6 = *(a1 + 112);
    v7 = *(a1 + 120);
    operator new();
  }

  *a2 = 0;
  return 0;
}

void sub_1D971E030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23)
{
  (*(*v23 + 8))(v23);
  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t CSCppTextSectionDataDescriptor::_compute_slide_between_symbol_owner_and_header<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 40);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = (v4[3] ? v4[3] : v4[2]);
      if (strncmp(v6, "__PAGEZERO", 0xBuLL))
      {
        break;
      }

      v4 += 4;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::extract_segments_and_sections(a2, &v15, 0);
  v7 = v15;
  v8 = v16;
  v9 = v15;
  if (v15 != v16)
  {
    v10 = v4[3];
    v9 = v15;
    while (1)
    {
      v11 = v10;
      if (!v10)
      {
        v11 = v4[2];
      }

      v12 = (v9[3] ? v9[3] : v9[2]);
      if (!strncmp(v11, v12, 0x10uLL))
      {
        break;
      }

      v9 += 4;
      if (v9 == v8)
      {
        goto LABEL_23;
      }
    }
  }

  if (v9 != v8)
  {
    v13 = *v4 - *v9;
    if (!v7)
    {
      return v13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = 0;
  if (v7)
  {
LABEL_24:
    v16 = v7;
    operator delete(v7);
  }

  return v13;
}

void sub_1D971E290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void get_symbol_owner_on_disk_memory<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 108);
  *a2 = 0;
  if ((v4 & 0x4000) != 0)
  {
    v7 = *(a1 + 120);
    v8 = split_static_library_path(v7);
    v9 = v8;
    if (v8)
    {
      std::string::basic_string[abi:ne200100](__dst, v7, v8 - v7);
      v10 = strlen(v9);
      std::string::basic_string[abi:ne200100](__p, (v9 + 1), v10 - 2);
      if (*(a1 + 160))
      {
        v11 = *(a1 + 152);
        operator new();
      }

      if (v17 >= 0)
      {
        v12 = __dst;
      }

      else
      {
        v12 = __dst[0];
      }

      if (v15 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *a2 = new_memory_for_object_in_archive(v12, v13, *(a1 + 104), *(a1 + 112), 0, 2);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  else
  {
    v5 = *(a1 + 128);
    if (!v5)
    {
      v5 = *(a1 + 120);
    }

    if (*(a1 + 160))
    {
      v6 = *(a1 + 152);
      operator new();
    }

    *a2 = new_file_memory_for_uuid_and_arch(v5, a1 + 16, *(a1 + 112), 2);
  }
}

void sub_1D971E450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  *v20 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sod_header_from_task_fault<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = atomic_load((*(result + 8) + 40));
  if ((v3 & 0x200000) == 0)
  {
    v4 = result;
    if ((*(result + 109) & 0x40) == 0)
    {
      result = (*(**(*(result + 8) + 32) + 32))(*(*(result + 8) + 32));
      if ((result & 1) != 0 || *(v4[1] + 144))
      {
        v5 = v4[4];
        v6 = v4[5];
        if (v5 != v6)
        {
          while (!*v5)
          {
            v5 += 4;
            if (v5 == v6)
            {
              goto LABEL_12;
            }
          }
        }

        if (v5 != v6)
        {
          v7 = *v5;
          v8 = v4[1];
          if (*(v8 + 144))
          {
            operator new();
          }

          v9 = (*(**(v8 + 32) + 16))(*(v8 + 32));
          CSCppMachTaskContainer::is_self_task(v9);
          operator new();
        }
      }
    }
  }

LABEL_12:
  *a2 = 0;
  return result;
}

void sub_1D971E7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a10);
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *std::__call_once_proxy[abi:ne200100]<std::tuple<TRangeValue<Pointer64,unsigned char *> CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(TRange<Pointer64>)::{lambda(void)#1} &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  result = std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,0>((*(*v1 + 88) + 8), *(*v1 + 96), *(*v1 + 88));
  v5 = v4;
  v6 = *(v2 + 96);
  if (v6 != v4)
  {
    do
    {
      v7 = *--v6;
      result = v7;
      *v6 = 0;
      if (v7)
      {
        result = (*(*result + 8))(result);
      }
    }

    while (v6 != v5);
  }

  *(v2 + 96) = v5;
  return result;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,std::unique_ptr<CSCppMemory> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *std::__tree<TRangeValue<Pointer64,unsigned char *>>::__emplace_unique_key_args<TRangeValue<Pointer64,unsigned char *>,TRangeValue<Pointer64,unsigned char *> const&>(uint64_t a1, unint64_t *a2)
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

void CSCppTextSectionDescriptorMap<Pointer64>::_store_section_descriptor_for_range(uint64_t a1, _OWORD *a2)
{
  v5 = a2;
  std::mutex::lock((a1 + 24));
  *v4 = *a2;
  std::__tree<std::__value_type<TRange<Pointer64>,CSCppTextSectionDataDescriptor *>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,CSCppTextSectionDataDescriptor *>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,CSCppTextSectionDataDescriptor *>>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64>&,CSCppTextSectionDataDescriptor *&>(a1, v4);
  std::mutex::unlock((a1 + 24));
}

uint64_t *std::unique_ptr<CSCppTextSectionDataDescriptor>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::mutex::~mutex((v2 + 144));
    v4 = (v2 + 88);
    std::vector<std::unique_ptr<CSCppMemory>>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    std::__tree<TRange<Pointer64>>::destroy(v2 + 24, *(v2 + 32));
    MEMORY[0x1DA736760](v2, 0x1032C40C9A27EF9);
  }

  return a1;
}

uint64_t CSCppTextSectionDataDescriptor::CSCppTextSectionDataDescriptor(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v4 = *(a2 + 108);
  *(a1 + 56) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 48) = (v4 & 0x200) != 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  LOBYTE(v4) = atomic_load((*(a2 + 8) + 40));
  *(a1 + 80) = (v4 & 4) == 0;
  *(a1 + 81) = (*(**(*(a2 + 8) + 32) + 24))(*(*(a2 + 8) + 32));
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = *(a2 + 152);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 850045863;
  *(a1 + 193) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  return a1;
}

void sub_1D971F044(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v4);
  }

  std::__tree<TRange<Pointer64>>::destroy(v2, *v3);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<TRange<Pointer64>,CSCppTextSectionDataDescriptor *>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,CSCppTextSectionDataDescriptor *>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,CSCppTextSectionDataDescriptor *>>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64>&,CSCppTextSectionDataDescriptor *&>(uint64_t a1, unint64_t *a2)
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

unint64_t CSSymbolicatorGetArchitecture(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return atomic_load(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorForeachSymbolOwnerAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSCppSymbolicator::get_symbol_owners_at_time((a2 & 0xFFFFFFFFFFFFFFFCLL), a3, &__p);
  v5 = __p;
  if (a4)
  {
    v6 = v10;
    if (__p != v10)
    {
      do
      {
        (*(a4 + 16))(a4, 3, *v5++);
      }

      while (v5 != v6);
      v5 = __p;
    }
  }

  v7 = (v10 - v5) >> 3;
  if (v5)
  {
    v10 = v5;
    operator delete(v5);
  }

  return v7;
}

void sub_1D971F23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSCppSymbolicator::get_symbol_owners_at_time(CSCppSymbolicator *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  CSCppSymbolicator::access_timeline<std::integral_constant<BOOL,false>,CSCppSymbolicator::get_symbol_owners_at_time(unsigned long long)::{lambda(CSCppSymbolOwnerTimeline const&)#1}>(this, a3, a2);
}

void sub_1D971F28C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSSymbolicatorForeachSymbolOwnerWithNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v22[0] = &__p;
  v22[1] = a4;
  v22[2] = a3;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 80);
  if (v7)
  {
    v8.n128_f64[0] = CSCppSymbolicator::get_symbol_owners_at_time<CSSymbolicatorForeachSymbolOwnerWithNameAtTime::$_0>(unsigned long long,CSSymbolicatorForeachSymbolOwnerWithNameAtTime::$_0)::{lambda(CSCppSymbolOwnerTimeline const&)#1}::operator()(v22, v7);
  }

  else
  {
    add_explicit = atomic_fetch_add_explicit((v6 + 68), 1u, memory_order_relaxed);
    v11 = add_explicit & 0xF0000000;
    v12 = (add_explicit & 0xF0000000) == 0;
    if ((add_explicit & 0xFFFFFFF) != 0)
    {
      v12 = 1;
    }

    v13 = add_explicit >> 28;
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    v15 = v13 > 0xE && v12;
    if (v15 || v14)
    {
      os_unfair_lock_lock((v6 + 12));
      if (v14)
      {
        std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::erase(v6 + 96, *(v6 + 96), (*(v6 + 96) + 8 * v14));
        atomic_fetch_add((v6 + 68), -v11);
      }

      CSCppSymbolicator::get_symbol_owners_at_time<CSSymbolicatorForeachSymbolOwnerWithNameAtTime::$_0>(unsigned long long,CSSymbolicatorForeachSymbolOwnerWithNameAtTime::$_0)::{lambda(CSCppSymbolOwnerTimeline const&)#1}::operator()(v22, *(v6 + 88));
      os_unfair_lock_unlock((v6 + 12));
    }

    else
    {
      v8.n128_f64[0] = CSCppSymbolicator::get_symbol_owners_at_time<CSSymbolicatorForeachSymbolOwnerWithNameAtTime::$_0>(unsigned long long,CSSymbolicatorForeachSymbolOwnerWithNameAtTime::$_0)::{lambda(CSCppSymbolOwnerTimeline const&)#1}::operator()(v22, atomic_load_explicit((v6 + 88), memory_order_acquire));
    }

    atomic_fetch_add_explicit((v6 + 68), 0xFFFFFFFF, memory_order_relaxed);
  }

  v16 = __p;
  if (a5)
  {
    v17 = v20;
    if (__p != v20)
    {
      do
      {
        (*(a5 + 16))(a5, 3, *v16++, v8);
      }

      while (v16 != v17);
      v16 = __p;
    }
  }

  v9 = (v20 - v16) >> 3;
  if (v16)
  {
    v20 = v16;
    operator delete(v16);
  }

  return v9;
}

void sub_1D971F408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  os_unfair_lock_unlock(v10 + 3);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CSSymbolicatorForeachSymbolOwnerWithFlagsAtTime(char a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v8 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 80);
  if (v9)
  {
    if ((a4 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFDLL;
    }

    v41 = 0;
    v11 = 0uLL;
    v40 = 0u;
    v12 = *(v9 + 56);
    v13 = *(v9 + 64);
    if (v12 != v13)
    {
      do
      {
        if (a4 == 0x8000000000000001 || (unload_timestamp_range = CSCppSymbolOwner::load_unload_timestamp_range(*v12), v10 - unload_timestamp_range < v15))
        {
          if ((a3 & ~*(*v12 + 27)) == 0)
          {
            v42 = *v12;
            std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v40, &v42);
          }
        }

        v12 += 2;
      }

      while (v12 != v13);
      v11 = v40;
    }

    v39 = v11;
    if (!a5)
    {
      goto LABEL_54;
    }
  }

  else
  {
    add_explicit = atomic_fetch_add_explicit((v8 + 68), 1u, memory_order_relaxed);
    v18 = add_explicit & 0xF0000000;
    v19 = (add_explicit & 0xF0000000) == 0;
    if ((add_explicit & 0xFFFFFFF) != 0)
    {
      v19 = 1;
    }

    v20 = add_explicit >> 28;
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    v22 = v20 > 0xE && v19;
    if (v22 || v21)
    {
      os_unfair_lock_lock((v8 + 12));
      if (v21)
      {
        std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::erase(v8 + 96, *(v8 + 96), (*(v8 + 96) + 8 * v21));
        atomic_fetch_add((v8 + 68), -v18);
      }

      v30 = *(v8 + 88);
      if ((a4 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
      {
        v31 = a4;
      }

      else
      {
        v31 = 0x7FFFFFFFFFFFFFFDLL;
      }

      v41 = 0;
      v32 = 0uLL;
      v40 = 0u;
      v33 = *(v30 + 56);
      v34 = *(v30 + 64);
      if (v33 != v34)
      {
        do
        {
          if (a4 == 0x8000000000000001 || (v35 = CSCppSymbolOwner::load_unload_timestamp_range(*v33), v31 - v35 < v36))
          {
            if ((a3 & ~*(*v33 + 27)) == 0)
            {
              v42 = *v33;
              std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v40, &v42);
            }
          }

          v33 += 2;
        }

        while (v33 != v34);
        v32 = v40;
      }

      v39 = v32;
      os_unfair_lock_unlock((v8 + 12));
    }

    else
    {
      explicit = atomic_load_explicit((v8 + 88), memory_order_acquire);
      if ((a4 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
      {
        v24 = a4;
      }

      else
      {
        v24 = 0x7FFFFFFFFFFFFFFDLL;
      }

      v41 = 0;
      v25 = 0uLL;
      v40 = 0u;
      v26 = *(explicit + 56);
      v27 = *(explicit + 64);
      if (v26 != v27)
      {
        do
        {
          if (a4 == 0x8000000000000001 || (v28 = CSCppSymbolOwner::load_unload_timestamp_range(*v26), v24 - v28 < v29))
          {
            if ((a3 & ~*(*v26 + 27)) == 0)
            {
              v42 = *v26;
              std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v40, &v42);
            }
          }

          v26 += 2;
        }

        while (v26 != v27);
        v25 = v40;
      }

      v39 = v25;
    }

    atomic_fetch_add_explicit((v8 + 68), 0xFFFFFFFF, memory_order_relaxed);
    if (!a5)
    {
      goto LABEL_54;
    }
  }

  if (v39.i64[0] != v39.i64[1])
  {
    v37 = v39.i64[0];
    do
    {
      (*(a5 + 16))(a5, 3, *v37++);
    }

    while (v37 != v39.i64[1]);
  }

LABEL_54:
  v16 = vsubq_s64(vdupq_laneq_s64(v39, 1), v39).i64[0] >> 3;
  if (v39.i64[0])
  {
    operator delete(v39.i64[0]);
  }

  return v16;
}

uint64_t CSSymbolicatorForeachSymbolOwnerWithPathAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v22[0] = &__p;
  v22[1] = a4;
  v22[2] = a3;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 80);
  if (v7)
  {
    v8.n128_f64[0] = CSCppSymbolicator::get_symbol_owners_at_time<CSSymbolicatorForeachSymbolOwnerWithPathAtTime::$_0>(unsigned long long,CSSymbolicatorForeachSymbolOwnerWithPathAtTime::$_0)::{lambda(CSCppSymbolOwnerTimeline const&)#1}::operator()(v22, v7);
  }

  else
  {
    add_explicit = atomic_fetch_add_explicit((v6 + 68), 1u, memory_order_relaxed);
    v11 = add_explicit & 0xF0000000;
    v12 = (add_explicit & 0xF0000000) == 0;
    if ((add_explicit & 0xFFFFFFF) != 0)
    {
      v12 = 1;
    }

    v13 = add_explicit >> 28;
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    v15 = v13 > 0xE && v12;
    if (v15 || v14)
    {
      os_unfair_lock_lock((v6 + 12));
      if (v14)
      {
        std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::erase(v6 + 96, *(v6 + 96), (*(v6 + 96) + 8 * v14));
        atomic_fetch_add((v6 + 68), -v11);
      }

      CSCppSymbolicator::get_symbol_owners_at_time<CSSymbolicatorForeachSymbolOwnerWithPathAtTime::$_0>(unsigned long long,CSSymbolicatorForeachSymbolOwnerWithPathAtTime::$_0)::{lambda(CSCppSymbolOwnerTimeline const&)#1}::operator()(v22, *(v6 + 88));
      os_unfair_lock_unlock((v6 + 12));
    }

    else
    {
      v8.n128_f64[0] = CSCppSymbolicator::get_symbol_owners_at_time<CSSymbolicatorForeachSymbolOwnerWithPathAtTime::$_0>(unsigned long long,CSSymbolicatorForeachSymbolOwnerWithPathAtTime::$_0)::{lambda(CSCppSymbolOwnerTimeline const&)#1}::operator()(v22, atomic_load_explicit((v6 + 88), memory_order_acquire));
    }

    atomic_fetch_add_explicit((v6 + 68), 0xFFFFFFFF, memory_order_relaxed);
  }

  v16 = __p;
  if (a5)
  {
    v17 = v20;
    if (__p != v20)
    {
      do
      {
        (*(a5 + 16))(a5, 3, *v16++, v8);
      }

      while (v16 != v17);
      v16 = __p;
    }
  }

  v9 = (v20 - v16) >> 3;
  if (v16)
  {
    v20 = v16;
    operator delete(v16);
  }

  return v9;
}

void sub_1D971F8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  os_unfair_lock_unlock(v10 + 3);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CSSymbolicatorGetSymbolOwnerWithAddressAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v6 = 0;
  v5[0] = &v6;
  v5[1] = a4;
  v5[2] = a3;
  CSCppSymbolicator::access_timeline<std::integral_constant<BOOL,false>,CSCppSymbolicator::get_symbol_owner_with_address_at_time(unsigned long long,unsigned long long)::{lambda(CSCppSymbolOwnerTimeline const&)#1}>(a2 & 0xFFFFFFFFFFFFFFFCLL, v5);
  if (v6)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorGetSymbolOwnerWithNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3802000000;
  v11 = __Block_byref_object_copy__3;
  v13 = 0;
  v14 = 0;
  v12 = __Block_byref_object_dispose__3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __CSSymbolicatorGetSymbolOwnerWithNameAtTime_block_invoke;
  v7[3] = &unk_1E8583620;
  v7[4] = &v8;
  if (CSSymbolicatorForeachSymbolOwnerWithNameAtTime(a1, a2, a3, a4, v7) == 1)
  {
    v4 = v9[5];
    v5 = v9[6];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1D971FA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t __CSSymbolicatorGetSymbolOwnerWithNameAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolicatorGetAOutSymbolOwner(char a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3802000000;
  v9 = __Block_byref_object_copy__3;
  v11 = 0;
  v12 = 0;
  v10 = __Block_byref_object_dispose__3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __CSSymbolicatorGetAOutSymbolOwner_block_invoke;
  v5[3] = &unk_1E8583648;
  v5[4] = &v6;
  if (CSSymbolicatorForeachSymbolOwnerWithFlagsAtTime(a1, a2, 16, 0x8000000000000001, v5) == 1)
  {
    v2 = v7[5];
    v3 = v7[6];
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1D971FB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolicatorGetAOutSymbolOwner_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolicatorGetSymbolOwner(char a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3802000000;
  v9 = __Block_byref_object_copy__3;
  v11 = 0;
  v12 = 0;
  v10 = __Block_byref_object_dispose__3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __CSSymbolicatorGetSymbolOwner_block_invoke;
  v5[3] = &unk_1E8583670;
  v5[4] = &v6;
  if (CSSymbolicatorForeachSymbolOwnerAtTime(a1, a2, 0x8000000000000001, v5) == 1)
  {
    v2 = v7[5];
    v3 = v7[6];
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1D971FC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolicatorGetSymbolOwner_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolicatorForeachSegmentAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSCppSymbolicator::get_symbol_owners_at_time((a2 & 0xFFFFFFFFFFFFFFFCLL), a3, &__p);
  v5 = __p;
  v6 = v13;
  if (__p == v13)
  {
    v7 = 0;
    if (!__p)
    {
      return v7;
    }

LABEL_14:
    v13 = v5;
    operator delete(v5);
    return v7;
  }

  v7 = 0;
  do
  {
    v8 = *(*v5 + 32);
    v9 = *(*v5 + 40);
    if (v8 != v9)
    {
      v10 = *(*v5 + 32);
      do
      {
        if (a4)
        {
          (*(a4 + 16))(a4, *v5 | 7, v8);
        }

        ++v7;
        v10 += 32;
        v8 += 32;
      }

      while (v10 != v9);
    }

    v5 += 8;
  }

  while (v5 != v6);
  v5 = __p;
  if (__p)
  {
    goto LABEL_14;
  }

  return v7;
}

void sub_1D971FD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSSymbolicatorForeachSectionAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSCppSymbolicator::get_symbol_owners_at_time((a2 & 0xFFFFFFFFFFFFFFFCLL), a3, &__p);
  v5 = __p;
  v6 = v10;
  if (__p == v10)
  {
    v7 = 0;
    if (!__p)
    {
      return v7;
    }

LABEL_9:
    v10 = v5;
    operator delete(v5);
    return v7;
  }

  v7 = 0;
  do
  {
    v7 += CSCppSymbolOwner::sections_in_address_range(*v5++, 0, -1, a4);
  }

  while (v5 != v6);
  v5 = __p;
  if (__p)
  {
    goto LABEL_9;
  }

  return v7;
}

void sub_1D971FE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CSCppSymbolOwner *CSSymbolicatorGetSegmentWithAddressAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v6[2] = a3;
  v7 = 0;
  v6[0] = &v7;
  v6[1] = a4;
  CSCppSymbolicator::access_timeline<std::integral_constant<BOOL,false>,CSCppSymbolicator::get_symbol_owner_with_address_at_time(unsigned long long,unsigned long long)::{lambda(CSCppSymbolOwnerTimeline const&)#1}>(a2 & 0xFFFFFFFFFFFFFFFCLL, v6);
  result = v7;
  if (v7)
  {
    return CSCppSymbolOwner::segment_at_address(v7, a3);
  }

  return result;
}

uint64_t CSSymbolicatorGetSectionWithAddressAtTime(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  SymbolOwnerWithAddressAtTime = CSSymbolicatorGetSymbolOwnerWithAddressAtTime(a1, a2, a3, a4);

  return CSSymbolOwnerGetSectionWithAddress(SymbolOwnerWithAddressAtTime, v6, a3);
}

uint64_t CSSymbolicatorForeachSymbolAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSCppSymbolicator::get_symbol_owners_at_time((a2 & 0xFFFFFFFFFFFFFFFCLL), a3, &__p);
  v5 = __p;
  v6 = v11;
  if (__p == v11)
  {
    v7 = 0;
    if (!__p)
    {
      return v7;
    }

LABEL_9:
    v11 = v5;
    operator delete(v5);
    return v7;
  }

  v7 = 0;
  do
  {
    v8 = CSCppSymbolOwner::data(*v5);
    v7 += (*(*v8 + 88))(v8, *v5++, a4);
  }

  while (v5 != v6);
  v5 = __p;
  if (__p)
  {
    goto LABEL_9;
  }

  return v7;
}

void sub_1D9720000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSSymbolicatorForeachSymbolWithNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSCppSymbolicator::get_symbol_owners_at_time((a2 & 0xFFFFFFFFFFFFFFFCLL), a4, &__p);
  v7 = __p;
  v8 = v13;
  if (__p == v13)
  {
    v9 = 0;
    if (!__p)
    {
      return v9;
    }

LABEL_9:
    v13 = v7;
    operator delete(v7);
    return v9;
  }

  v9 = 0;
  do
  {
    v10 = CSCppSymbolOwner::data(*v7);
    v9 += (*(*v10 + 96))(v10, *v7++, a3, a5);
  }

  while (v7 != v8);
  v7 = __p;
  if (__p)
  {
    goto LABEL_9;
  }

  return v9;
}

void sub_1D97200F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSSymbolicatorForeachSymbolWithMangledNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSCppSymbolicator::get_symbol_owners_at_time((a2 & 0xFFFFFFFFFFFFFFFCLL), a4, &__p);
  v7 = __p;
  v8 = v13;
  if (__p == v13)
  {
    v9 = 0;
    if (!__p)
    {
      return v9;
    }

LABEL_9:
    v13 = v7;
    operator delete(v7);
    return v9;
  }

  v9 = 0;
  do
  {
    v10 = CSCppSymbolOwner::data(*v7);
    v9 += (*(*v10 + 104))(v10, *v7++, a3, a5);
  }

  while (v7 != v8);
  v7 = __p;
  if (__p)
  {
    goto LABEL_9;
  }

  return v9;
}

void sub_1D97201F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSSymbolicatorGetSymbolWithAddressAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v8[2] = a3;
  v9 = 0;
  v8[0] = &v9;
  v8[1] = a4;
  CSCppSymbolicator::access_timeline<std::integral_constant<BOOL,false>,CSCppSymbolicator::get_symbol_owner_with_address_at_time(unsigned long long,unsigned long long)::{lambda(CSCppSymbolOwnerTimeline const&)#1}>(a2 & 0xFFFFFFFFFFFFFFFCLL, v8);
  v5 = v9;
  if (!v9)
  {
    return 0;
  }

  v6 = CSCppSymbolOwner::data(v9);
  return (*(*v6 + 136))(v6, v5, a3);
}

uint64_t CSSymbolicatorGetSymbolWithNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3802000000;
  v20 = __Block_byref_object_copy__3;
  v22 = 0;
  v23 = 0;
  v21 = __Block_byref_object_dispose__3;
  CSCppSymbolicator::get_symbol_owners_at_time((a2 & 0xFFFFFFFFFFFFFFFCLL), a4, &__p);
  v5 = __p;
  v6 = v16;
  if (__p != v16)
  {
    v7 = 0;
    while (1)
    {
      v8 = CSCppSymbolOwner::data(*v5);
      v9 = *v5;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __CSSymbolicatorGetSymbolWithNameAtTime_block_invoke;
      v14[3] = &unk_1E8583698;
      v14[4] = &v17;
      v7 += (*(*v8 + 112))(v8, v9, a3, v14);
      if (v7 >= 2)
      {
        break;
      }

      if (++v5 == v6)
      {
        goto LABEL_9;
      }
    }

    v11 = v18;
    v18[5] = 0;
    v11[6] = 0;
  }

LABEL_9:
  v10 = v18[5];
  v12 = v18[6];
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t __CSSymbolicatorGetSymbolWithNameAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolicatorGetSymbolWithMangledNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3802000000;
  v20 = __Block_byref_object_copy__3;
  v22 = 0;
  v23 = 0;
  v21 = __Block_byref_object_dispose__3;
  CSCppSymbolicator::get_symbol_owners_at_time((a2 & 0xFFFFFFFFFFFFFFFCLL), a4, &__p);
  v5 = __p;
  v6 = v16;
  if (__p != v16)
  {
    v7 = 0;
    while (1)
    {
      v8 = CSCppSymbolOwner::data(*v5);
      v9 = *v5;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __CSSymbolicatorGetSymbolWithMangledNameAtTime_block_invoke;
      v14[3] = &unk_1E85836C0;
      v14[4] = &v17;
      v7 += (*(*v8 + 120))(v8, v9, a3, v14);
      if (v7 >= 2)
      {
        break;
      }

      if (++v5 == v6)
      {
        goto LABEL_9;
      }
    }

    v11 = v18;
    v18[5] = 0;
    v11[6] = 0;
  }

LABEL_9:
  v10 = v18[5];
  v12 = v18[6];
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t __CSSymbolicatorGetSymbolWithMangledNameAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3802000000;
  v12 = __Block_byref_object_copy__3;
  v14 = 0;
  v15 = 0;
  v13 = __Block_byref_object_dispose__3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime_block_invoke;
  v8[3] = &unk_1E85836E8;
  v8[4] = &v9;
  if (CSSymbolicatorForeachSymbolOwnerWithNameAtTime(a1, a2, a4, a5, v8) == 1)
  {
    SymbolWithName = CSSymbolOwnerGetSymbolWithName(v10[5], v10[6], a3);
  }

  else
  {
    SymbolWithName = 0;
  }

  _Block_object_dispose(&v9, 8);
  return SymbolWithName;
}

void sub_1D9720760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolicatorGetSymbolWithMangledNameFromSymbolOwnerWithNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3802000000;
  v12 = __Block_byref_object_copy__3;
  v14 = 0;
  v15 = 0;
  v13 = __Block_byref_object_dispose__3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __CSSymbolicatorGetSymbolWithMangledNameFromSymbolOwnerWithNameAtTime_block_invoke;
  v8[3] = &unk_1E8583710;
  v8[4] = &v9;
  if (CSSymbolicatorForeachSymbolOwnerWithNameAtTime(a1, a2, a4, a5, v8) == 1)
  {
    SymbolWithMangledName = CSSymbolOwnerGetSymbolWithMangledName(v10[5], v10[6], a3);
  }

  else
  {
    SymbolWithMangledName = 0;
  }

  _Block_object_dispose(&v9, 8);
  return SymbolWithMangledName;
}

void sub_1D972088C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolicatorGetSymbolWithMangledNameFromSymbolOwnerWithNameAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolicatorForeachSourceInfoAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSCppSymbolicator::get_symbol_owners_at_time((a2 & 0xFFFFFFFFFFFFFFFCLL), a3, &__p);
  v5 = __p;
  v6 = v11;
  if (__p == v11)
  {
    v7 = 0;
    if (!__p)
    {
      return v7;
    }

LABEL_9:
    v11 = v5;
    operator delete(v5);
    return v7;
  }

  v7 = 0;
  do
  {
    v8 = CSCppSymbolOwner::data(*v5);
    v7 += (*(*v8 + 144))(v8, *v5++, a4);
  }

  while (v5 != v6);
  v5 = __p;
  if (__p)
  {
    goto LABEL_9;
  }

  return v7;
}

void sub_1D9720988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSSymbolicatorGetSourceInfoWithAddressAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v8[2] = a3;
  v9 = 0;
  v8[0] = &v9;
  v8[1] = a4;
  CSCppSymbolicator::access_timeline<std::integral_constant<BOOL,false>,CSCppSymbolicator::get_symbol_owner_with_address_at_time(unsigned long long,unsigned long long)::{lambda(CSCppSymbolOwnerTimeline const&)#1}>(a2 & 0xFFFFFFFFFFFFFFFCLL, v8);
  v5 = v9;
  if (!v9)
  {
    return 0;
  }

  v6 = CSCppSymbolOwner::data(v9);
  return (*(*v6 + 160))(v6, v5, a3);
}

uint64_t CSSymbolicatorForeachRegionWithNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __CSSymbolicatorForeachRegionWithNameAtTime_block_invoke;
  v7[3] = &unk_1E8583738;
  v7[5] = &v8;
  v7[6] = a3;
  v7[4] = a5;
  CSSymbolicatorForeachSectionAtTime(a1, a2, a4, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __CSSymbolicatorForeachRegionWithNameAtTime_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  Name = CSRegionGetName(a2, a3);
  result = strcmp(v4, Name);
  if (!result)
  {
    result = (*(a1[4] + 16))();
    ++*(*(a1[5] + 8) + 24);
  }

  return result;
}

uint64_t CSSymbolicatorGetRegionWithAddressAtTime(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  SymbolOwnerWithAddressAtTime = CSSymbolicatorGetSymbolOwnerWithAddressAtTime(a1, a2, a3, a4);

  return CSSymbolOwnerGetSectionWithAddress(SymbolOwnerWithAddressAtTime, v6, a3);
}

uint64_t CSSymbolicatorGetRegionWithNameAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3802000000;
  v11 = __Block_byref_object_copy__3;
  v13 = 0;
  v14 = 0;
  v12 = __Block_byref_object_dispose__3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __CSSymbolicatorGetRegionWithNameAtTime_block_invoke;
  v7[3] = &unk_1E8583760;
  v7[4] = &v8;
  if (CSSymbolicatorForeachRegionWithNameAtTime(a1, a2, a3, a4, v7) == 1)
  {
    v4 = v9[5];
    v5 = v9[6];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1D9720CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolicatorGetRegionWithNameAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

void CSCppSymbolicator::access_timeline<std::integral_constant<BOOL,false>,CSCppSymbolicator::get_symbol_owners_at_time(unsigned long long)::{lambda(CSCppSymbolOwnerTimeline const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 80);
  if (v6)
  {
    CSCppSymbolOwnerTimeline::symbol_owners_at_time<decltype(nullptr)>(v6, a3, &v16);
    v7 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v7;
      operator delete(v7);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = v16;
    *(a2 + 16) = v17;
  }

  else
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 68), 1u, memory_order_relaxed);
    v9 = add_explicit & 0xF0000000;
    v10 = (add_explicit & 0xF0000000) == 0;
    if ((add_explicit & 0xFFFFFFF) != 0)
    {
      v10 = 1;
    }

    v11 = add_explicit >> 28;
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v13 = v11 > 0xE && v10;
    if (v13 || v12)
    {
      os_unfair_lock_lock((a1 + 12));
      if (v12)
      {
        std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::erase(a1 + 96, *(a1 + 96), (*(a1 + 96) + 8 * v12));
        atomic_fetch_add((a1 + 68), -v9);
      }

      CSCppSymbolOwnerTimeline::symbol_owners_at_time<decltype(nullptr)>(*(a1 + 88), a3, &v16);
      v15 = *a2;
      if (*a2)
      {
        *(a2 + 8) = v15;
        operator delete(v15);
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
      }

      *a2 = v16;
      *(a2 + 16) = v17;
      os_unfair_lock_unlock((a1 + 12));
    }

    else
    {
      CSCppSymbolOwnerTimeline::symbol_owners_at_time<decltype(nullptr)>(atomic_load_explicit((a1 + 88), memory_order_acquire), a3, &v16);
      v14 = *a2;
      if (*a2)
      {
        *(a2 + 8) = v14;
        operator delete(v14);
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
      }

      *a2 = v16;
      *(a2 + 16) = v17;
    }

    atomic_fetch_add_explicit((a1 + 68), 0xFFFFFFFF, memory_order_relaxed);
  }
}

void CSCppSymbolOwnerTimeline::symbol_owners_at_time<decltype(nullptr)>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFDLL;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<CSCppSymbolOwner *>::reserve(a3, (*(a1 + 64) - *(a1 + 56)) >> 4);
  v8 = *(a1 + 56);
  for (i = *(a1 + 64); v8 != i; v8 += 2)
  {
    if (a2 != 0x8000000000000001)
    {
      unload_timestamp_range = CSCppSymbolOwner::load_unload_timestamp_range(*v8);
      if (v6 - unload_timestamp_range >= v10)
      {
        continue;
      }
    }

    v11 = *v8;
    std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](a3, &v11);
  }
}

void sub_1D9720F48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CSCppSymbolOwner *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, v10);
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

void CSCppSymbolicator::access_timeline<std::integral_constant<BOOL,false>,CSCppSymbolicator::get_symbol_owner_with_address_at_time(unsigned long long,unsigned long long)::{lambda(CSCppSymbolOwnerTimeline const&)#1}>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    **a2 = CSCppSymbolOwnerTimeline::symbol_owner_with_address_at_time(v4, *(a2 + 16), *(a2 + 8));
  }

  else
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 68), 1u, memory_order_relaxed);
    v6 = add_explicit & 0xF0000000;
    v7 = (add_explicit & 0xF0000000) == 0;
    if ((add_explicit & 0xFFFFFFF) != 0)
    {
      v7 = 1;
    }

    v8 = add_explicit >> 28;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = v8 > 0xE && v7;
    if (v10 || v9)
    {
      os_unfair_lock_lock((a1 + 12));
      if (v9)
      {
        std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::erase(a1 + 96, *(a1 + 96), (*(a1 + 96) + 8 * v9));
        atomic_fetch_add((a1 + 68), -v6);
      }

      **a2 = CSCppSymbolOwnerTimeline::symbol_owner_with_address_at_time(*(a1 + 88), *(a2 + 16), *(a2 + 8));
      os_unfair_lock_unlock((a1 + 12));
    }

    else
    {
      **a2 = CSCppSymbolOwnerTimeline::symbol_owner_with_address_at_time(atomic_load_explicit((a1 + 88), memory_order_acquire), *(a2 + 16), *(a2 + 8));
    }

    atomic_fetch_add_explicit((a1 + 68), 0xFFFFFFFF, memory_order_relaxed);
  }
}

double CSCppSymbolicator::get_symbol_owners_at_time<CSSymbolicatorForeachSymbolOwnerWithNameAtTime::$_0>(unsigned long long,CSSymbolicatorForeachSymbolOwnerWithNameAtTime::$_0)::{lambda(CSCppSymbolOwnerTimeline const&)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if ((v4 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFDLL;
  }

  v15 = 0;
  v14 = 0uLL;
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  while (v6 != v7)
  {
    if (v4 == 0x8000000000000001 || (unload_timestamp_range = CSCppSymbolOwner::load_unload_timestamp_range(*v6), v5 - unload_timestamp_range < v9))
    {
      v10 = *v6;
      if (!strcmp(v3, *(*v6 + 17)))
      {
        v16 = v10;
        std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v14, &v16);
      }
    }

    v6 += 2;
  }

  v11 = *a1;
  v12 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v12;
    operator delete(v12);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
  }

  result = *&v14;
  *v11 = v14;
  *(v11 + 16) = v15;
  return result;
}

void sub_1D97212C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double CSCppSymbolicator::get_symbol_owners_at_time<CSSymbolicatorForeachSymbolOwnerWithPathAtTime::$_0>(unsigned long long,CSSymbolicatorForeachSymbolOwnerWithPathAtTime::$_0)::{lambda(CSCppSymbolOwnerTimeline const&)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if ((v4 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFDLL;
  }

  v15 = 0;
  v14 = 0uLL;
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  while (v6 != v7)
  {
    if (v4 == 0x8000000000000001 || (unload_timestamp_range = CSCppSymbolOwner::load_unload_timestamp_range(*v6), v5 - unload_timestamp_range < v9))
    {
      v10 = *v6;
      if (!strcmp(v3, *(*v6 + 15)))
      {
        v16 = v10;
        std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v14, &v16);
      }
    }

    v6 += 2;
  }

  v11 = *a1;
  v12 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v12;
    operator delete(v12);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
  }

  result = *&v14;
  *v11 = v14;
  *(v11 + 16) = v15;
  return result;
}

void sub_1D97213C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSSymbolOwnerGetArchitecture(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 112);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerGetPath(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerGetName(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 136);
  }

  else
  {
    return 0;
  }
}