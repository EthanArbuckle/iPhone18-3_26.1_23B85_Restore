void ___Z29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer3212LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRef_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CSCppSymbolOwner::data(*(a1 + 40));
  v6 = (*(*v5 + 24))(v5);
  if ((v6 - 1) < 2)
  {
    CSCppStringCache::intern(*(a1 + 48), *((a3 & 0xFFFFFFFFFFFFFFFCLL) + 8));
  }

  if (v6 != 5)
  {
    if (v6 == 4)
    {
      v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      v8 = *(CSCppSymbolOwner::data(*(a1 + 40)) + 88);
      v9 = *(a1 + 48);
      v10 = CSCppMMapSourceInfo::path(v7, v8 + 32 * v8[2] + 24 * v8[3] + (24 * v8[4]) + (4 * v8[4]) + (36 * v8[5]) + (20 * v8[6]) + v8[22] + v8[20] + 96);
      CSCppStringCache::intern(v9, v10);
    }

    return;
  }

  v11 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
  v12 = *(a3 & 0xFFFFFFFFFFFFFFFCLL);
  v13 = -v12;
  v14 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) - v12);
  if (*v14 >= 5u)
  {
    v15 = v14[2];
    if (v15)
    {
      CSCppStringCache::intern(*(a1 + 48), &v11[v15 + 4 + *&v11[v15]]);
    }
  }

  v16 = *(*(*(a1 + 32) + 8) + 24);
  v17 = &v11[v13];
  if (*v17 >= 0xDu && (v18 = *(v17 + 6)) != 0)
  {
    v19 = *&v11[v18];
    v20 = v19;
  }

  else
  {
    v20 = -1;
    LODWORD(v19) = -1;
  }

  v21 = v19 + slide_for_remote_address<Pointer32,unsigned int>((a1 + 56), v20);
  v22 = &v11[-*v11];
  v23 = *v22;
  if (v23 >= 0xF)
  {
    if (v22[7])
    {
      v24 = *&v11[v22[7]];
    }

    else
    {
      v24 = 0;
    }

LABEL_19:
    if (v22[4])
    {
      v25 = *&v11[v22[4]];
    }

    else
    {
      v25 = 0;
    }

    if (v23 >= 0xB && (v27 = v22[5]) != 0)
    {
      v26 = *&v11[v27];
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_26;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v23 >= 9)
  {
    goto LABEL_19;
  }

LABEL_26:
  v28 = v16[1];
  v29 = v16[2];
  if (v28 >= v29)
  {
    v31 = *v16;
    v32 = v28 - *v16;
    v33 = v32 >> 5;
    v34 = (v32 >> 5) + 1;
    if (v34 >> 59)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v35 = v29 - v31;
    if (v35 >> 4 > v34)
    {
      v34 = v35 >> 4;
    }

    if (v35 >= 0x7FFFFFFFFFFFFFE0)
    {
      v34 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      std::allocator<TRawSourceInfo<Pointer32>>::allocate_at_least[abi:ne200100](v16, v34);
    }

    v36 = 32 * v33;
    *v36 = v21;
    *(v36 + 4) = v24;
    *(v36 + 8) = "<Invalid file path>";
    *(v36 + 16) = v25;
    *(v36 + 20) = v26;
    *(v36 + 24) = 0;
    v30 = 32 * v33 + 32;
    memcpy(0, v31, v32);
    v37 = *v16;
    *v16 = 0;
    v16[1] = v30;
    v16[2] = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    *v28 = v21;
    *(v28 + 1) = v24;
    *(v28 + 1) = "<Invalid file path>";
    *(v28 + 4) = v25;
    *(v28 + 5) = v26;
    v30 = (v28 + 32);
    *(v28 + 6) = 0;
  }

  v16[1] = v30;
}

uint64_t slide_for_remote_address<Pointer32,unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 2);
    v2 = *a1;
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[3 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 3;
      v3 += ~(v3 >> 1);
      if (v7 > a2)
      {
        v3 = v4;
      }

      else
      {
        v2 = v6;
      }
    }

    while (v3);
  }

  if (v2 == *a1)
  {
    return 0;
  }

  v8 = *(v2 - 3);
  if (v8 > a2 || a2 + 1 > *(v2 - 2) + v8)
  {
    return 0;
  }

  else
  {
    return *(v2 - 1);
  }
}

uint64_t __copy_helper_block_e8_56c66_ZTSNSt3__16vectorI11TRangeValueI9Pointer32jENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<TRangeValue<Pointer32,unsigned int>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer32,unsigned int>*,TRangeValue<Pointer32,unsigned int>*>(v2, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 2));
}

void __destroy_helper_block_e8_56c66_ZTSNSt3__16vectorI11TRangeValueI9Pointer32jENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

__n128 std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1}>,void ()(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5507718;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1}>,void ()(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1}::operator()(int a1, uint64_t a2, int a3, CSCppStringCache *this)
{
  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *(a2 + 48);
    CSCppStringCache::intern(this, v6);
  }

  if (atomic_load_explicit((a2 + 20), memory_order_acquire) == 2048 || (atomic_load_explicit((a2 + 20), memory_order_acquire) & 0x1C000) != 0)
  {
    v8 = TRawSymbol<Pointer32>::_resolve_name(a2);
  }

  else
  {
    v8 = 0;
  }

  if (atomic_load_explicit((a2 + 20), memory_order_acquire) == 2048 || (atomic_load_explicit((a2 + 20), memory_order_acquire) & 0x1C000) != 0)
  {
    TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(a2);
  }

  atomic_load_explicit((a2 + 20), memory_order_acquire);
  intern_name_or_default(v8, *a2, this);
}

void sub_1D977F238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 - 88) = &a21;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  _Unwind_Resume(a1);
}

uint64_t ___ZZ29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer3212LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRefENKUlvE_clEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  return std::function<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator()(a1 + 32, a2);
}

void std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator=<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},void>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a2 + 2);
  operator new();
}

uint64_t ___ZZ29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer3212LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRefENKUlvE_clEv_block_invoke_491(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  return std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator()(a1 + 32, a2);
}

uint64_t std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}>,void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F55077F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}>,void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

size_t std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}::operator()(uint64_t a1, __int128 *a2, int a3, CSCppStringCache *this)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 11);
  v7 = v6 + 32 * v6[2] + 24 * v6[3] + (24 * v6[4]) + (4 * v6[4]) + (36 * v6[5]) + (20 * v6[6]) + v6[22] + v6[20] + 96;
  if ((*(a2 + 2) & 0x80000000) != 0)
  {
    v8 = *(a2 + 6);
    if (v7 + v8)
    {
      CSCppStringCache::intern(this, (v7 + v8));
    }
  }

  v17 = *a2;
  v18 = *(a2 + 2);
  v16 = 0;
  if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v5, v17, &v16))
  {
    v9 = DWORD2(v17) != 2048;
    v10 = (DWORD2(v17) & 0x1C000) == 0;
    if (v9 && v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = (v7 + v18);
    }

    if (v9 && v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = (v7 + HIDWORD(v17));
    }

    if (HIDWORD(v17))
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    intern_name_or_default(v13, v16, this);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remap archive address to real in debug maps inline enumeration", buf, 2u);
  }

  return fwrite("Could not remap archive address to real in debug maps inline enumeration", 0x48uLL, 1uLL, *MEMORY[0x1E69E9848]);
}

void sub_1D977F78C(_Unwind_Exception *a1)
{
  *(v2 - 96) = v1 + 56;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v2 - 96));
  _Unwind_Resume(a1);
}

uint64_t ___ZZZ29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer3212LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRefENKUlvE_clEvENKUlP22CSCppMMapInlinedSymbolRNS4_6vectorIS6_IS1_ENS4_9allocatorISK_EEEER16CSCppStringCacheE_clESI_SO_SQ__block_invoke(uint64_t *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = a1[6];
  return std::function<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator()(a1[4], a2);
}

__n128 std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}>,void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5507878;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}>,void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}::operator()(uint64_t a1, int *a2, int a3, CSCppStringCache *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v5 = (a2 - *a2);
  if (*v5 >= 0xDu)
  {
    v6 = v5[6];
    if (v6)
    {
      v7 = (a2 + v6 + *(a2 + v6));
      v8 = v7 + *(v7 - *v7 + 4);
      CSCppStringCache::intern(this, &v8[*v8 + 4]);
    }
  }

  v9 = *(a1 + 8);
  v10 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v25);
  v11 = FlatbufferSymbolOwnerData::convertVMAddressToSlidAddress(v9, v10);
  if (v12)
  {
    v13 = v11;
    if (!FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(&v25))
    {
      v14 = (v25 - *v25);
      if (*v14 >= 9u)
      {
        v15 = v14[4];
        if (v15)
        {
          v16 = v25 + v15 + *(v25 + v15) + 4;
        }
      }
    }

    if (FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(&v25) || (v21 = (v25 - *v25), *v21 < 0xBu) || (v22 = v21[5]) == 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = v25 + v22 + *(v25 + v22) + 4;
    }

    FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::flags(&v25);
    FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v25);
    intern_name_or_default(v23, v13, this);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v25);
    *buf = 134217984;
    v27 = v17;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to relocate address %#llx in flatbuffer SOD", buf, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9848];
  v19 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v25);
  result = fprintf(v18, "Failed to relocate address %#llx in flatbuffer SOD", v19);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D977FCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  a20 = &a28;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t ___ZZZ29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer3212LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRefENKUlvE_clEvENKUlPKN17FlatbufferSymbols12InlineSymbolERNS4_6vectorIS6_IS1_ENS4_9allocatorISM_EEEER16CSCppStringCacheE_clESK_SQ_SS__block_invoke(uint64_t *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = a1[6];
  return std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator()(a1[4], a2);
}

void *std::__function::__value_func<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
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

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D977FF58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL are_symbols_aliases<Pointer32>(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(a1);
  v6 = TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(a2);
  return strcmp(v5, v6) != 0;
}

uint64_t std::__copy_if[abi:ne200100]<std::__wrap_iter<CSUserSuppliedSymbolData *>,std::__wrap_iter<CSUserSuppliedSymbolData *>,std::back_insert_iterator<std::vector<CSUserSuppliedSymbolData>>,std::__identity,std::unique_ptr<TRawSymbolOwnerData<Pointer32>> _create_traw_symbol_owner_data_with_symbol_generator<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,std::vector<CSCppSectionRange>,BOOL,BOOL({block_pointer})(unsigned long,CSUserSuppliedSymbolData *))::{lambda(std::__wrap_iter<CSUserSuppliedSymbolData *>)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = a1;
  v10 = a3;
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  do
  {
    v7 = (*(***a4 + 136))(**a4, 0, *(v4 + 32));
    if (CSIsNull(v7, v8))
    {
      std::back_insert_iterator<std::vector<CSUserSuppliedSymbolData>>::operator=[abi:ne200100](&v10, v4);
    }

    v4 += 48;
  }

  while (v4 != v5);
  return v5;
}

uint64_t *std::back_insert_iterator<std::vector<CSUserSuppliedSymbolData>>::operator=[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<CSUserSuppliedSymbolData>::allocate_at_least[abi:ne200100](*a1, v13);
    }

    v14 = 48 * v10;
    v15 = *a2;
    v16 = a2[2];
    *(v14 + 16) = a2[1];
    *(v14 + 32) = v16;
    *v14 = v15;
    v9 = 48 * v10 + 48;
    v17 = *(v4 + 8) - *v4;
    v18 = v14 - v17;
    memcpy((v14 - v17), *v4, v17);
    v19 = *v4;
    *v4 = v18;
    *(v4 + 8) = v9;
    *(v4 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v7 = *a2;
    v8 = a2[2];
    v5[1] = a2[1];
    v5[2] = v8;
    *v5 = v7;
    v9 = (v5 + 3);
  }

  *(v4 + 8) = v9;
  return a1;
}

uint64_t std::vector<TRawSymbol<Pointer32>>::__emplace_back_slow_path<unsigned long long &,unsigned long long &,char const*&,char const*&,unsigned int &,decltype(nullptr)>(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int *a6)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v7 = v6 + 1;
  if (v6 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v7)
  {
    v7 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v10 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v7;
  }

  v25 = a1;
  if (v10)
  {
    std::allocator<TRawSymbol<Pointer32>>::allocate_at_least[abi:ne200100](a1, v10);
  }

  v11 = 96 * v6;
  v22 = 0;
  v23 = v11;
  *(&v24 + 1) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  *v11 = *a2;
  *(v11 + 4) = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = v13;
  *(v11 + 32) = v14;
  *(v11 + 88) = 0;
  *(v11 + 65) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 20) = v15;
  *&v24 = 96 * v6 + 96;
  v16 = a1[1];
  v17 = 96 * v6 + *a1 - v16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(&v22);
  return v21;
}

void sub_1D9780408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__less<void,void>>(int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (a2 - a1 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
    while (1)
    {
      v9 = operator new(96 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D9780510(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (*(a2 - 24) < *a1)
      {

        swap(a1, a2 - 24);
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, a2);
    }

    else
    {
      v12 = a4 >> 1;
      v13 = &a1[24 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v17[0] = a5;
        v17[1] = &v18;
        v18 = 0;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, &a1[24 * (a4 >> 1)], a3, a4 >> 1, a5);
        v18 = a4 >> 1;
        v15 = a4 - v12;
        v16 = (a5 + 96 * v12);
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(&a1[24 * (a4 >> 1)], a2, a3, v15, v16);
        v18 = a4;
        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,TRawSymbol<Pointer32> *,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a5, v16, v16, (a5 + 96 * a4), a1);
        std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v17);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, &a1[24 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v13, a2, a3, v14, a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, v13, a2, a3, v12, v14, a5, a6);
      }
    }
  }
}

void sub_1D9780720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(unsigned int *a1, unsigned int *a2)
{
  if (a1 != a2)
  {
    v17[9] = v2;
    v17[10] = v3;
    v6 = a1 + 24;
    if (a1 + 24 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = *v8;
        v8 = v6;
        if (*v6 < v9)
        {
          v16 = 0;
          memset(v13, 0, 24);
          v14 = 0u;
          memset(v15, 0, 25);
          TRawSymbol<Pointer32>::operator=(v13, v6);
          v10 = v7;
          while (1)
          {
            TRawSymbol<Pointer32>::operator=(a1 + v10 + 96, a1 + v10);
            if (!v10)
            {
              break;
            }

            v11 = *(a1 + v10 - 96);
            v10 -= 96;
            if (LODWORD(v13[0]) >= v11)
            {
              v12 = a1 + v10 + 96;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          TRawSymbol<Pointer32>::operator=(v12, v13);
          v17[0] = v15;
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v17);
        }

        v6 = v8 + 24;
        v7 += 96;
      }

      while (v8 + 24 != a2);
    }
  }
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(uint64_t *result, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v8 = result;
    if (a4 == 2)
    {
      v16[1] = &v17;
      v17 = 0;
      v10 = *(a2 - 24);
      v9 = a2 - 24;
      v11 = *result;
      *(a5 + 88) = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *a5 = 0;
      *(a5 + 40) = 0u;
      *(a5 + 56) = 0u;
      *(a5 + 65) = 0u;
      v12 = v10 >= v11;
      if (v10 >= v11)
      {
        v13 = result;
      }

      else
      {
        v13 = (a2 - 24);
      }

      if (v12)
      {
        v8 = v9;
      }

      TRawSymbol<Pointer32>::operator=(a5, v13);
      ++v17;
      *(a5 + 96) = 0;
      v14 = a5 + 96;
      *(v14 + 88) = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 40) = 0u;
      *(v14 + 56) = 0u;
      *(v14 + 65) = 0u;
      TRawSymbol<Pointer32>::operator=(v14, v8);
      v16[0] = 0;
      return std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v16);
    }

    else if (a4 == 1)
    {
      *(a5 + 88) = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *a5 = 0;
      *(a5 + 40) = 0u;
      *(a5 + 56) = 0u;
      *(a5 + 65) = 0u;

      return TRawSymbol<Pointer32>::operator=(a5, result);
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(result, &result[12 * (a4 >> 1)], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(&v8[24 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), a5 + 96 * (a4 >> 1), a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v8, &v8[24 * (a4 >> 1)], &v8[24 * (a4 >> 1)], a2, a5);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(result, a2, a5);
    }
  }

  return result;
}

uint64_t std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,TRawSymbol<Pointer32> *,std::__wrap_iter<TRawSymbol<Pointer32> *>>(uint64_t result, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  if (result == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      result = TRawSymbol<Pointer32>::operator=(a5, a3);
      a3 += 24;
      a5 += 96;
    }
  }

  else
  {
    v9 = result;
    while (a3 != a4)
    {
      if (*a3 >= *v9)
      {
        result = TRawSymbol<Pointer32>::operator=(a5, v9);
        v9 += 24;
      }

      else
      {
        result = TRawSymbol<Pointer32>::operator=(a5, a3);
        a3 += 24;
      }

      a5 += 96;
      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v9 != a2)
    {
      result = TRawSymbol<Pointer32>::operator=(a5, v9);
      v9 += 24;
      a5 += 96;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 56);
      do
      {
        v7 = v5;
        std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v7);
        ++v4;
        v5 += 12;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

double std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(uint64_t a1, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a6;
    while (v8 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v11 = 0;
      v12 = -a5;
      while (*a2 >= *(v11 + a1))
      {
        v11 += 24;
        if (__CFADD__(v12++, 1))
        {
          return result;
        }
      }

      v45 = v11 + a1;
      if (-v12 >= v8)
      {
        if (v12 == -1)
        {

          *&result = swap((v11 + a1), a2).n128_u64[0];
          return result;
        }

        v22 = -v12 / 2;
        v15 = a2;
        if (a2 != a3)
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 5);
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[24 * (v23 >> 1)];
            v27 = *v25;
            v26 = v25 + 24;
            v23 += ~(v23 >> 1);
            if (v27 < *(&v11[24 * v22] + a1))
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v15 - a2) >> 5);
        v16 = (&v11[24 * v22] + a1);
      }

      else
      {
        v14 = v8 / 2;
        v15 = &a2[24 * (v8 / 2)];
        v16 = a2;
        if ((a2 - a1) != v11)
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1 - v11) >> 5);
          v16 = (v11 + a1);
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[24 * (v17 >> 1)];
            v21 = *v19;
            v20 = v19 + 24;
            v17 += ~(v17 >> 1);
            if (*v15 < v21)
            {
              v17 = v18;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v17);
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - a1 - v11) >> 5);
      }

      v28 = v15;
      if (v16 != a2)
      {
        v28 = v16;
        if (a2 != v15)
        {
          v43 = v14;
          v44 = a3;
          v29 = a7;
          v30 = a4;
          v31 = a8;
          v32 = v22;
          v33 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v16, a2, v15);
          v14 = v43;
          a3 = v44;
          v22 = v32;
          a8 = v31;
          a4 = v30;
          a7 = v29;
          v28 = v33;
        }
      }

      a5 = -v12 - v22;
      v34 = v8 - v14;
      if (v22 + v14 >= v8 - (v22 + v14) - v12)
      {
        v37 = a4;
        v41 = v22;
        v42 = v14;
        v38 = a7;
        v39 = a8;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v28, v15, a3);
        v15 = v16;
        v34 = v42;
        a5 = v41;
        a3 = v28;
        a1 = v45;
      }

      else
      {
        v35 = v11 + a1;
        v36 = a3;
        v37 = a4;
        v38 = a7;
        v39 = a8;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v35, v16, v28);
        a3 = v36;
        a1 = v28;
      }

      v8 = v34;
      a2 = v15;
      a7 = v38;
      a4 = v37;
      a8 = v39;
      if (!v34)
      {
        return result;
      }
    }

    std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, a2, a3, a4, a5, v8, a7);
  }

  return result;
}

uint64_t *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v17[7] = v3;
    v17[8] = v4;
    v7 = result;
    v16[0] = a3;
    v16[1] = v17;
    v17[0] = 0;
    *(a3 + 88) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 65) = 0u;
    TRawSymbol<Pointer32>::operator=(a3, result);
    ++v17[0];
    v8 = v7 + 12;
    if (v8 != a2)
    {
      v9 = 0;
      v10 = a3;
      v11 = a3;
      do
      {
        v12 = *v8;
        *(v11 + 96) = 0;
        v11 += 96;
        v13 = *v10;
        *(v10 + 184) = 0;
        *(v10 + 104) = 0;
        *(v10 + 112) = 0;
        *(v10 + 136) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 161) = 0u;
        if (v12 >= v13)
        {
          TRawSymbol<Pointer32>::operator=(v11, v8);
          ++v17[0];
        }

        else
        {
          TRawSymbol<Pointer32>::operator=(v11, v10);
          ++v17[0];
          v14 = a3;
          if (v10 != a3)
          {
            v15 = v9;
            while (1)
            {
              v14 = a3 + v15;
              if (*v8 >= *(a3 + v15 - 96))
              {
                break;
              }

              TRawSymbol<Pointer32>::operator=(v14, a3 + v15 - 96);
              v15 -= 96;
              if (!v15)
              {
                v14 = a3;
                break;
              }
            }
          }

          TRawSymbol<Pointer32>::operator=(v14, v8);
        }

        v8 += 12;
        v9 += 96;
        v10 = v11;
      }

      while (v8 != a2);
    }

    v16[0] = 0;
    return std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v16);
  }

  return result;
}

uint64_t *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__wrap_iter<TRawSymbol<Pointer32> *>>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = a5;
  v13[0] = a5;
  v13[1] = &v14;
  v14 = 0;
  if (a1 == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      *(v5 + 88) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 0;
      *(v5 + 40) = 0u;
      *(v5 + 56) = 0u;
      *(v5 + 65) = 0u;
      TRawSymbol<Pointer32>::operator=(v5, a3);
      a3 += 24;
      v5 += 96;
      ++v14;
    }
  }

  else
  {
    v9 = a1;
    while (a3 != a4)
    {
      v10 = *a3;
      v11 = *v9;
      *(v5 + 88) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 0;
      *(v5 + 40) = 0u;
      *(v5 + 56) = 0u;
      *(v5 + 65) = 0u;
      if (v10 >= v11)
      {
        TRawSymbol<Pointer32>::operator=(v5, v9);
        v9 += 24;
      }

      else
      {
        TRawSymbol<Pointer32>::operator=(v5, a3);
        a3 += 24;
      }

      ++v14;
      v5 += 96;
      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v9 != a2)
    {
      *(v5 + 88) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 0;
      *(v5 + 40) = 0u;
      *(v5 + 56) = 0u;
      *(v5 + 65) = 0u;
      TRawSymbol<Pointer32>::operator=(v5, v9);
      v9 += 24;
      v5 += 96;
      ++v14;
    }
  }

  v13[0] = 0;
  return std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v13);
}

uint64_t *std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a7;
  v15[1] = &v16;
  v16 = 0;
  v11 = a7;
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v11 = a7;
      v13 = a1;
      do
      {
        *(v11 + 88) = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *v11 = 0;
        *(v11 + 40) = 0u;
        *(v11 + 56) = 0u;
        *(v11 + 65) = 0u;
        TRawSymbol<Pointer32>::operator=(v11, v13);
        ++v16;
        v13 += 96;
        v11 += 96;
      }

      while (v13 != a2);
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,TRawSymbol<Pointer32> *,std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a7, v11, a2, a3, a1);
  }

  else
  {
    if (a2 != a3)
    {
      v11 = a7;
      v12 = a2;
      do
      {
        *(v11 + 88) = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *v11 = 0;
        *(v11 + 40) = 0u;
        *(v11 + 56) = 0u;
        *(v11 + 65) = 0u;
        TRawSymbol<Pointer32>::operator=(v11, v12);
        ++v16;
        v12 += 96;
        v11 += 96;
      }

      while (v12 != a3);
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<TRawSymbol<Pointer32> *>,std::reverse_iterator<TRawSymbol<Pointer32> *>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>>(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  return std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v15);
}

void sub_1D97812A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,TRawSymbol<Pointer32> *,std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__wrap_iter<TRawSymbol<Pointer32> *>>(uint64_t result, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  if (result != a2)
  {
    v9 = result;
    while (a3 != a4)
    {
      if (*a3 >= *v9)
      {
        result = TRawSymbol<Pointer32>::operator=(a5, v9);
        v9 += 24;
      }

      else
      {
        result = TRawSymbol<Pointer32>::operator=(a5, a3);
        a3 += 24;
      }

      a5 += 96;
      if (v9 == a2)
      {
        return result;
      }
    }

    do
    {
      result = TRawSymbol<Pointer32>::operator=(a5, v9);
      v9 += 24;
      a5 += 96;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<TRawSymbol<Pointer32> *>,std::reverse_iterator<TRawSymbol<Pointer32> *>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    v13 = a2;
    v14 = a10 - 96;
    while (a6 != a8)
    {
      v15 = *(v13 - 96);
      v16 = *(a6 - 96);
      if (v15 >= v16)
      {
        v17 = v13 - 96;
      }

      else
      {
        v17 = a6 - 96;
      }

      if (v15 >= v16)
      {
        v13 -= 96;
      }

      else
      {
        a6 -= 96;
      }

      result = TRawSymbol<Pointer32>::operator=(v14, v17);
      v14 -= 96;
      if (v13 == a4)
      {
        return result;
      }
    }

    for (; v13 != a4; v14 -= 96)
    {
      v13 -= 96;
      result = TRawSymbol<Pointer32>::operator=(v14, v13);
    }
  }

  return result;
}

int *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSymbol<Pointer32> *>>(int *a1, int *a2, int *a3)
{
  v4 = a2;
  swap(a1, a2);
  v6 = a1 + 24;
  for (i = v4 + 24; i != a3; i += 24)
  {
    if (v6 == v4)
    {
      v4 = i;
    }

    swap(v6, i);
    v6 += 24;
  }

  if (v6 != v4)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      while (1)
      {
        swap(v8, v9);
        v8 += 24;
        v9 += 24;
        if (v9 == a3)
        {
          break;
        }

        if (v8 == v4)
        {
          v4 = v9;
        }
      }

      v9 = v4;
    }

    while (v8 != v4);
  }

  return v6;
}

void *std::__hash_table<TRawSymbol<Pointer32> *,std::hash<TRawSymbol<Pointer32> *>,std::equal_to<TRawSymbol<Pointer32> *>,std::allocator<TRawSymbol<Pointer32> *>>::__emplace_unique_key_args<TRawSymbol<Pointer32> *,TRawSymbol<Pointer32> *>(void *a1, void *a2)
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

void *std::__hash_table<TRawSymbol<Pointer32> *,std::hash<TRawSymbol<Pointer32> *>,std::equal_to<TRawSymbol<Pointer32> *>,std::allocator<TRawSymbol<Pointer32> *>>::find<TRawSymbol<Pointer32> *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

__int128 *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__equal_to &>(__int128 *a1, __int128 *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 - 2;
    while (v4 + 4 != a2)
    {
      v5 = *(v4 + 8);
      v6 = *(v4 + 9);
      v4 += 2;
      if (v5 == *(v4 + 8) && v6 == *(v4 + 9))
      {
        goto LABEL_11;
      }
    }

    v4 = a2;
LABEL_11:
    result = a2;
    if (v4 != a2)
    {
      for (i = v4 + 4; i != a2; i += 2)
      {
        if (*v4 != *i || *(v4 + 1) != *(i + 1))
        {
          v10 = *i;
          *(v4 + 44) = *(i + 12);
          v4[2] = v10;
          v4 += 2;
        }
      }

      return v4 + 2;
    }
  }

  return result;
}

void *std::__hash_table<TRawSourceInfo<Pointer32> *,std::hash<TRawSourceInfo<Pointer32> *>,std::equal_to<TRawSourceInfo<Pointer32> *>,std::allocator<TRawSourceInfo<Pointer32> *>>::__emplace_unique_key_args<TRawSourceInfo<Pointer32> *,TRawSourceInfo<Pointer32> *>(void *a1, void *a2)
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

uint64_t _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = a4;
  v24 = 0;
  v29[3] = 0;
  *&v27[0] = v29;
  std::function<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator=<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1},void>(v29, v27);
  v22 = a3 & 0xFFFFFFFFFFFFFFF8;
  v23 = &v25;
  create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppSegmentRange>(((a3 & 0xFFFFFFFFFFFFFFF8) + 32), (a1 + 32), 0, &v20);
  v9 = a2 + 96;
  v19[0] = &v22;
  v19[1] = &v23;
  v19[2] = &v24;
  v19[3] = a2 + 96;
  v19[4] = v29;
  v19[5] = &v20;
  v19[6] = &v25;
  _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator()(v19, v27);
  if (v27[0] == 0)
  {
    *a5 = 0;
    *(a5 + 104) = 0;
  }

  else
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2000000000;
    v18[3] = (a2 + 208);
    v10 = v25;
    v11 = v26;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1174405120;
    v14[2] = ___Z29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer6412LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRef_block_invoke;
    v14[3] = &unk_1F5507900;
    v14[4] = v18;
    v14[5] = v22;
    v14[6] = v9;
    __p = 0;
    v16 = 0;
    v17 = 0;
    std::vector<TRangeValue<Pointer64,unsigned long long>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer64,unsigned long long>*,TRangeValue<Pointer64,unsigned long long>*>(&__p, v20, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3));
    CSSymbolForeachSourceInfo(v10, v11, v14);
    *(a5 + 96) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 73) = 0u;
    TRawSymbol<Pointer64>::operator=(a5, v27);
    *(a5 + 104) = 1;
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(v18, 8);
  }

  v18[0] = &v28;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v18);
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  result = std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v29);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9781D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a20, 8);
  a20 = v32 - 144;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v32 - 104);
  _Unwind_Resume(a1);
}

void ___Z52_create_traw_symbol_owner_data_with_symbol_generatorI17SizeAndEndiannessI9Pointer6412LittleEndianES1_ENSt3__110unique_ptrI19TRawSymbolOwnerDataIT0_ENS4_14default_deleteIS8_EEEEP16CSCppSymbolOwnerNS4_6vectorI17CSCppSectionRangeNS4_9allocatorISF_EEEEbU13block_pointerFbmP24CSUserSuppliedSymbolDataE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 40, &v3);
}

void *std::function<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator=<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1},void>(void *a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F5507940;
  v6 = *a2;
  HIDWORD(v6) = 0;
  *(&v6 + 9) = 0;
  v7 = &v5;
  std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::swap[abi:ne200100](&v5, a1);
  std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](&v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

size_t _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = CSCppSymbolOwner::data(**a1);
  result = (*(*v4 + 24))(v4);
  if ((result - 1) < 2)
  {
    v7 = *(**(a1 + 8) + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *(v7 + 48);
    if (v8)
    {
      v9 = *(v7 + 56);
      CSCppStringCache::intern(*(a1 + 24), v8);
    }

    *buf = 0;
    v32 = 0;
    if (atomic_load_explicit((v7 + 28), memory_order_acquire) == 2048 || (atomic_load_explicit((v7 + 28), memory_order_acquire) & 0x1C000) != 0)
    {
      v22 = TRawSymbol<Pointer64>::_resolve_name(v7);
    }

    else
    {
      v22 = 0;
    }

    if (atomic_load_explicit((v7 + 28), memory_order_acquire) == 2048 || (atomic_load_explicit((v7 + 28), memory_order_acquire) & 0x1C000) != 0)
    {
      TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::PersistentMangledName>(v7);
    }

    atomic_load_explicit((v7 + 28), memory_order_acquire);
    if (atomic_load_explicit((v7 + 28), memory_order_acquire) == 2048)
    {
      atomic_load_explicit((v7 + 28), memory_order_acquire);
    }

    v23 = *(v7 + 8);
    intern_name_or_default(v22, *v7, *(a1 + 24));
  }

  if (result == 4)
  {
    v10 = CSCppSymbolOwner::data(**a1);
    v11 = (*(**(a1 + 8) + 8) & 0xFFFFFFFFFFFFFFFCLL);
    v27 = 0;
    if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v10, *v11, &v27))
    {
      v30 = 0;
      *buf = &unk_1F5507A20;
      v32 = &v28;
      v33 = v10;
      v34 = buf;
      std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::swap[abi:ne200100](buf, &v28);
      std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](buf);
      v12 = v11[2];
      if (v12 != 2048 && (v12 & 0x1C000) == 0)
      {
        v20 = 0;
        v21 = 0;
        LODWORD(v19) = v11[3];
      }

      else
      {
        v14 = *(v10 + 11);
        v15 = *(v14 + 16);
        v16.i64[0] = v15;
        v16.i64[1] = HIDWORD(v15);
        v17 = v16;
        v17.i32[1] = v16.i32[0];
        v17.i32[3] = *(v14 + 24);
        v18 = v14 + *(v14 + 80) + vaddlvq_u32(vmulq_s32(v17, xmmword_1D97E0550)) + (32 * *(v14 + 8)) + (24 * *(v14 + 12)) + *(v14 + 88) + 96;
        v19 = v11[3];
        v20 = (v18 + v11[4]);
        v21 = (v18 + v19);
      }

      if (v19)
      {
        v25 = v21;
      }

      else
      {
        v25 = v20;
      }

      v26 = v11[1];
      intern_name_or_default(v25, v27, *(a1 + 24));
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remap archive address to real in debug maps", buf, 2u);
    }

    result = fwrite("Could not remap archive address to real in debug maps", 0x35uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  else if (result == 5)
  {
    v6 = CSCppSymbolOwner::data(**a1);
    v34 = 0;
    *&v28 = buf;
    *(&v28 + 1) = v6;
    v29 = *a1;
    std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator=<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1},void>(buf, &v28);
  }

  *(a2 + 96) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 73) = 0u;
  *(a2 + 28) = 0;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void ___Z29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer6412LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRef_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CSCppSymbolOwner::data(*(a1 + 40));
  v6 = (*(*v5 + 24))(v5);
  if ((v6 - 1) < 2)
  {
    CSCppStringCache::intern(*(a1 + 48), *((a3 & 0xFFFFFFFFFFFFFFFCLL) + 16));
  }

  if (v6 != 5)
  {
    if (v6 == 4)
    {
      v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      v8 = *(CSCppSymbolOwner::data(*(a1 + 40)) + 88);
      v9 = *(a1 + 48);
      v10 = CSCppMMapSourceInfo::path(v7, v8 + 32 * v8[2] + 24 * v8[3] + (24 * v8[4]) + (4 * v8[4]) + (36 * v8[5]) + (20 * v8[6]) + v8[22] + v8[20] + 96);
      CSCppStringCache::intern(v9, v10);
    }

    return;
  }

  v11 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
  v12 = *(a3 & 0xFFFFFFFFFFFFFFFCLL);
  v13 = -v12;
  v14 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) - v12);
  if (*v14 >= 5u)
  {
    v15 = v14[2];
    if (v15)
    {
      CSCppStringCache::intern(*(a1 + 48), &v11[v15 + 4 + *&v11[v15]]);
    }
  }

  v16 = *(*(*(a1 + 32) + 8) + 24);
  v17 = &v11[v13];
  if (*v17 >= 0xDu && (v18 = *(v17 + 6)) != 0)
  {
    v19 = *&v11[v18];
  }

  else
  {
    v19 = -1;
  }

  v20 = slide_for_remote_address<Pointer64,unsigned long long>((a1 + 56), v19);
  v21 = &v11[-*v11];
  v22 = *v21;
  if (v22 >= 0xF)
  {
    if (v21[7])
    {
      v23 = *&v11[v21[7]];
    }

    else
    {
      v23 = 0;
    }

LABEL_19:
    if (v21[4])
    {
      v24 = *&v11[v21[4]];
    }

    else
    {
      v24 = 0;
    }

    if (v22 >= 0xB && (v26 = v21[5]) != 0)
    {
      v25 = *&v11[v26];
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_26;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v22 >= 9)
  {
    goto LABEL_19;
  }

LABEL_26:
  v27 = v20 + v19;
  v28 = v16[1];
  v29 = v16[2];
  if (v28 >= v29)
  {
    v31 = *v16;
    v32 = v28 - *v16;
    v33 = 0xCCCCCCCCCCCCCCCDLL * (v32 >> 3) + 1;
    if (v33 > 0x666666666666666)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v34 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v31) >> 3);
    if (2 * v34 > v33)
    {
      v33 = 2 * v34;
    }

    if (v34 >= 0x333333333333333)
    {
      v33 = 0x666666666666666;
    }

    if (v33)
    {
      std::allocator<TRawSourceInfo<Pointer64>>::allocate_at_least[abi:ne200100](v16, v33);
    }

    v35 = 8 * (v32 >> 3);
    *v35 = v27;
    *(v35 + 8) = v23;
    *(v35 + 16) = "<Invalid file path>";
    *(v35 + 24) = v24;
    *(v35 + 28) = v25;
    *(v35 + 32) = 0;
    v30 = v35 + 40;
    v36 = v35 - v32;
    memcpy((v35 - v32), v31, v32);
    v37 = *v16;
    *v16 = v36;
    v16[1] = v30;
    v16[2] = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    *v28 = v27;
    *(v28 + 1) = v23;
    *(v28 + 2) = "<Invalid file path>";
    *(v28 + 6) = v24;
    *(v28 + 7) = v25;
    *(v28 + 8) = 0;
    v30 = (v28 + 40);
  }

  v16[1] = v30;
}

uint64_t slide_for_remote_address<Pointer64,unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v2 = *a1;
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[3 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 3;
      v3 += ~(v3 >> 1);
      if (v7 > a2)
      {
        v3 = v4;
      }

      else
      {
        v2 = v6;
      }
    }

    while (v3);
  }

  if (v2 == *a1)
  {
    return 0;
  }

  v8 = *(v2 - 3);
  if (v8 > a2 || a2 + 1 > *(v2 - 2) + v8)
  {
    return 0;
  }

  else
  {
    return *(v2 - 1);
  }
}

uint64_t __copy_helper_block_e8_56c66_ZTSNSt3__16vectorI11TRangeValueI9Pointer64yENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<TRangeValue<Pointer64,unsigned long long>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer64,unsigned long long>*,TRangeValue<Pointer64,unsigned long long>*>(v2, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
}

void __destroy_helper_block_e8_56c66_ZTSNSt3__16vectorI11TRangeValueI9Pointer64yENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

__n128 std::__function::__func<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer64>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer64>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1}>,void ()(TRawSymbol&<Pointer64>,std::vector<TRawSymbol&> &,CSCppStringCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5507940;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer64>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer64>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1}>,void ()(TRawSymbol&<Pointer64>,std::vector<TRawSymbol&> &,CSCppStringCache &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer64>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1}::operator()(int a1, uint64_t a2, int a3, CSCppStringCache *this)
{
  v6 = *(a2 + 48);
  if (v6)
  {
    v9 = *(a2 + 56);
    CSCppStringCache::intern(this, v6);
  }

  if (atomic_load_explicit((a2 + 28), memory_order_acquire) == 2048 || (atomic_load_explicit((a2 + 28), memory_order_acquire) & 0x1C000) != 0)
  {
    v7 = TRawSymbol<Pointer64>::_resolve_name(a2);
  }

  else
  {
    v7 = 0;
  }

  if (atomic_load_explicit((a2 + 28), memory_order_acquire) == 2048 || (atomic_load_explicit((a2 + 28), memory_order_acquire) & 0x1C000) != 0)
  {
    TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::PersistentMangledName>(a2);
  }

  atomic_load_explicit((a2 + 28), memory_order_acquire);
  v8 = *(a2 + 8);
  intern_name_or_default(v7, *a2, this);
}

void sub_1D9782FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 - 88) = &a21;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  _Unwind_Resume(a1);
}

uint64_t ___ZZ29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer6412LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRefENKUlvE_clEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  return std::function<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator()(a1 + 32, a2);
}

void std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator=<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1},void>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a2 + 2);
  operator new();
}

uint64_t ___ZZ29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer6412LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRefENKUlvE_clEv_block_invoke_509(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  return std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator()(a1 + 32, a2);
}

uint64_t std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 std::__function::__func<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1}>,void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5507A20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1}>,void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

size_t std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1}::operator()(uint64_t a1, __int128 *a2, int a3, CSCppStringCache *this)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 11);
  v7 = v6 + 32 * v6[2] + 24 * v6[3] + (24 * v6[4]) + (4 * v6[4]) + (36 * v6[5]) + (20 * v6[6]) + v6[22] + v6[20] + 96;
  if ((*(a2 + 2) & 0x80000000) != 0)
  {
    v8 = *(a2 + 6);
    if (v7 + v8)
    {
      CSCppStringCache::intern(this, (v7 + v8));
    }
  }

  v17 = *a2;
  v18 = *(a2 + 2);
  v16 = 0;
  if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v5, v17, &v16))
  {
    v9 = DWORD2(v17) != 2048;
    v10 = (DWORD2(v17) & 0x1C000) == 0;
    if (v9 && v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = (v7 + v18);
    }

    if (v9 && v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = (v7 + HIDWORD(v17));
    }

    if (HIDWORD(v17))
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    intern_name_or_default(v13, v16, this);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remap archive address to real in debug maps inline enumeration", buf, 2u);
  }

  return fwrite("Could not remap archive address to real in debug maps inline enumeration", 0x48uLL, 1uLL, *MEMORY[0x1E69E9848]);
}

void sub_1D9783548(_Unwind_Exception *a1)
{
  *(v2 - 104) = v1 + 64;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v2 - 104));
  _Unwind_Resume(a1);
}

uint64_t ___ZZZ29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer6412LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRefENKUlvE_clEvENKUlP22CSCppMMapInlinedSymbolRNS4_6vectorIS6_IS1_ENS4_9allocatorISK_EEEER16CSCppStringCacheE_clESI_SO_SQ__block_invoke(uint64_t *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = a1[6];
  return std::function<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator()(a1[4], a2);
}

__n128 std::__function::__func<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1}>,void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5507AA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1}>,void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<TRawSymbol<Pointer64>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)#1}::operator()(uint64_t a1, int *a2, int a3, CSCppStringCache *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v5 = (a2 - *a2);
  if (*v5 >= 0xDu)
  {
    v6 = v5[6];
    if (v6)
    {
      v7 = (a2 + v6 + *(a2 + v6));
      v8 = v7 + *(v7 - *v7 + 4);
      CSCppStringCache::intern(this, &v8[*v8 + 4]);
    }
  }

  v9 = *(a1 + 8);
  v10 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v25);
  v11 = FlatbufferSymbolOwnerData::convertVMAddressToSlidAddress(v9, v10);
  if (v12)
  {
    v13 = v11;
    if (!FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(&v25))
    {
      v14 = (v25 - *v25);
      if (*v14 >= 9u)
      {
        v15 = v14[4];
        if (v15)
        {
          v16 = v25 + v15 + *(v25 + v15) + 4;
        }
      }
    }

    if (FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(&v25) || (v21 = (v25 - *v25), *v21 < 0xBu) || (v22 = v21[5]) == 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = v25 + v22 + *(v25 + v22) + 4;
    }

    FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::flags(&v25);
    FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v25);
    intern_name_or_default(v23, v13, this);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v25);
    buf = 134217984;
    *buf_4 = v17;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to relocate address %#llx in flatbuffer SOD", &buf, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9848];
  v19 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v25);
  result = fprintf(v18, "Failed to relocate address %#llx in flatbuffer SOD", v19);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9783A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a20 = &a29;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t ___ZZZ29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer6412LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRefENKUlvE_clEvENKUlPKN17FlatbufferSymbols12InlineSymbolERNS4_6vectorIS6_IS1_ENS4_9allocatorISM_EEEER16CSCppStringCacheE_clESK_SQ_SS__block_invoke(uint64_t *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = a1[6];
  return std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator()(a1[4], a2);
}

void *std::__function::__value_func<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
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

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9783D10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL are_symbols_aliases<Pointer64>(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::PersistentMangledName>(a1);
  v6 = TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::PersistentMangledName>(a2);
  return strcmp(v5, v6) != 0;
}

uint64_t std::vector<TRawSymbol<Pointer64>>::__emplace_back_slow_path<unsigned long long &,unsigned long long &,char const*&,char const*&,unsigned int &,decltype(nullptr)>(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int *a6)
{
  v6 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x276276276276276)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v10 = 0x276276276276276;
  }

  else
  {
    v10 = v7;
  }

  v25 = a1;
  if (v10)
  {
    std::allocator<TRawSymbol<Pointer64>>::allocate_at_least[abi:ne200100](a1, v10);
  }

  v11 = 104 * v6;
  v22 = 0;
  v23 = v11;
  *(&v24 + 1) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  *v11 = *a2;
  *(v11 + 8) = v12;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  *(v11 + 96) = 0;
  *(v11 + 73) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 28) = v15;
  *&v24 = 104 * v6 + 104;
  v16 = a1[1];
  v17 = 104 * v6 + *a1 - v16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(&v22);
  return v21;
}

void sub_1D9784010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSymbol<Pointer64> *>,std::__less<void,void>>(__n128 *a1, __n128 *a2, uint64_t a3)
{
  v6 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (a2 - a1 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
    while (1)
    {
      v9 = operator new(104 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D9784120(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (a2[-7].n128_u64[1] < a1->n128_u64[0])
      {

        swap(a1, (a2 - 104));
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(a1->n128_u64, a2->n128_u64);
    }

    else
    {
      v12 = a4 >> 1;
      v13 = (a1 + 104 * (a4 >> 1));
      if (a4 <= a6)
      {
        v17[0] = a5;
        v17[1] = &v18;
        v18 = 0;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(a1, &a1->n128_u64[13 * (a4 >> 1)], a3, a4 >> 1, a5);
        v18 = a4 >> 1;
        v15 = a4 - v12;
        v16 = (a5 + 104 * v12);
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(a1 + 13 * (a4 >> 1), a2->n128_u64, a3, v15, v16);
        v18 = a4;
        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,TRawSymbol<Pointer64> *,std::__wrap_iter<TRawSymbol<Pointer64> *>>(a5, v16, v16, (a5 + 104 * a4), a1);
        std::unique_ptr<TRawSymbol<Pointer64>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v17);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(a1, a1 + 104 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(v13, a2, a3, v14, a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(a1, v13, a2, a3, v12, v14, a5, a6);
      }
    }
  }
}

void sub_1D9784330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TRawSymbol<Pointer64>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v16[9] = v2;
    v16[10] = v3;
    v6 = a1 + 13;
    if (a1 + 13 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = *v8;
        v8 = v6;
        if (*v6 < v9)
        {
          v15 = 0;
          memset(v13, 0, 32);
          v13[3] = 0u;
          memset(v14, 0, 25);
          TRawSymbol<Pointer64>::operator=(v13, v6);
          v10 = v7;
          while (1)
          {
            TRawSymbol<Pointer64>::operator=(a1 + v10 + 104, a1 + v10);
            if (!v10)
            {
              break;
            }

            v11 = *(a1 + v10 - 104);
            v10 -= 104;
            if (*&v13[0] >= v11)
            {
              v12 = a1 + v10 + 104;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          TRawSymbol<Pointer64>::operator=(v12, v13);
          v16[0] = v14;
          std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v16);
        }

        v6 = v8 + 13;
        v7 += 104;
      }

      while (v8 + 13 != a2);
    }
  }
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(uint64_t *result, unint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v8 = result;
    if (a4 == 2)
    {
      v18 = 0;
      v10 = a2 - 13;
      v9 = *(a2 - 13);
      v17[1] = &v18;
      v11 = *result;
      *(a5 + 96) = 0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 48) = 0u;
      *(a5 + 64) = 0u;
      *(a5 + 73) = 0u;
      if (v9 >= v11)
      {
        v12 = result;
      }

      else
      {
        v12 = (a2 - 13);
      }

      if (v9 >= v11)
      {
        v8 = v10;
      }

      TRawSymbol<Pointer64>::operator=(a5, v12);
      v13 = v18 + 1;
      *(a5 + 104) = 0u;
      v14 = a5 + 104;
      v18 = v13;
      *(v14 + 96) = 0;
      *(v14 + 16) = 0u;
      *(v14 + 48) = 0u;
      *(v14 + 64) = 0u;
      *(v14 + 73) = 0u;
      TRawSymbol<Pointer64>::operator=(v14, v8);
      v17[0] = 0;
      return std::unique_ptr<TRawSymbol<Pointer64>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v17);
    }

    else if (a4 == 1)
    {
      *(a5 + 96) = 0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 48) = 0u;
      *(a5 + 64) = 0u;
      *(a5 + 73) = 0u;

      return TRawSymbol<Pointer64>::operator=(a5, result);
    }

    else if (a4 > 8)
    {
      v16 = 13 * (a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(result, &result[v16], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(&v8[v16], a2, a3, a4 - (a4 >> 1), a5 + v16 * 8, a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>,std::__wrap_iter<TRawSymbol<Pointer64> *>>(v8, &v8[v16], &v8[v16], a2, a5);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(result, a2, a5);
    }
  }

  return result;
}

uint64_t std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,TRawSymbol<Pointer64> *,std::__wrap_iter<TRawSymbol<Pointer64> *>>(uint64_t result, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (result == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      result = TRawSymbol<Pointer64>::operator=(a5, a3);
      a3 += 13;
      a5 += 104;
    }
  }

  else
  {
    v9 = result;
    while (a3 != a4)
    {
      if (*a3 >= *v9)
      {
        result = TRawSymbol<Pointer64>::operator=(a5, v9);
        v9 += 13;
      }

      else
      {
        result = TRawSymbol<Pointer64>::operator=(a5, a3);
        a3 += 13;
      }

      a5 += 104;
      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v9 != a2)
    {
      result = TRawSymbol<Pointer64>::operator=(a5, v9);
      v9 += 13;
      a5 += 104;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<TRawSymbol<Pointer64>,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 64);
      do
      {
        v7 = v5;
        std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v7);
        ++v4;
        v5 += 13;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

double std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(uint64_t a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a6;
    while (v8 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v11 = 0;
      v12 = -a5;
      while (a2->n128_u64[0] >= *(v11->n128_u64 + a1))
      {
        v11 = (v11 + 104);
        if (__CFADD__(v12++, 1))
        {
          return result;
        }
      }

      v45 = v11 + a1;
      if (-v12 >= v8)
      {
        if (v12 == -1)
        {

          *&result = swap((v11 + a1), a2).n128_u64[0];
          return result;
        }

        v22 = -v12 / 2;
        v15 = a2;
        if (a2 != a3)
        {
          v23 = 0x4EC4EC4EC4EC4EC5 * ((a3 - a2) >> 3);
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15->n128_u64[13 * (v23 >> 1)];
            v27 = *v25;
            v26 = (v25 + 13);
            v23 += ~(v23 >> 1);
            if (v27 < *(&v11->n128_u64[13 * v22] + a1))
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = 0x4EC4EC4EC4EC4EC5 * ((v15 - a2) >> 3);
        v16 = (v11 + 104 * v22 + a1);
      }

      else
      {
        v14 = v8 / 2;
        v15 = (a2 + 104 * (v8 / 2));
        v16 = a2;
        if ((a2 - a1) != v11)
        {
          v17 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1 - v11) >> 3);
          v16 = (v11 + a1);
          do
          {
            v18 = v17 >> 1;
            v19 = &v16->n128_u64[13 * (v17 >> 1)];
            v21 = *v19;
            v20 = (v19 + 13);
            v17 += ~(v17 >> 1);
            if (v15->n128_u64[0] < v21)
            {
              v17 = v18;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v17);
        }

        v22 = 0x4EC4EC4EC4EC4EC5 * ((v16 - a1 - v11) >> 3);
      }

      v28 = v15;
      if (v16 != a2)
      {
        v28 = v16;
        if (a2 != v15)
        {
          v43 = v14;
          v44 = a3;
          v29 = a7;
          v30 = a4;
          v31 = a8;
          v32 = v22;
          v33 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSymbol<Pointer64> *>>(v16, a2, v15);
          v14 = v43;
          a3 = v44;
          v22 = v32;
          a8 = v31;
          a4 = v30;
          a7 = v29;
          v28 = v33;
        }
      }

      a5 = -v12 - v22;
      v34 = v8 - v14;
      if (v22 + v14 >= v8 - (v22 + v14) - v12)
      {
        v37 = a4;
        v41 = v22;
        v42 = v14;
        v38 = a7;
        v39 = a8;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(v28, v15, a3);
        v15 = v16;
        v34 = v42;
        a5 = v41;
        a3 = v28;
        a1 = v45;
      }

      else
      {
        v35 = v11 + a1;
        v36 = a3;
        v37 = a4;
        v38 = a7;
        v39 = a8;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(v35, v16, v28);
        a3 = v36;
        a1 = v28;
      }

      v8 = v34;
      a2 = v15;
      a7 = v38;
      a4 = v37;
      a8 = v39;
      if (!v34)
      {
        return result;
      }
    }

    std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(a1, a2, a3, a4, a5, v8, a7);
  }

  return result;
}

uint64_t *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v17[7] = v3;
    v17[8] = v4;
    v7 = result;
    v16[0] = a3;
    v16[1] = v17;
    v17[0] = 0;
    *(a3 + 96) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 73) = 0u;
    TRawSymbol<Pointer64>::operator=(a3, result);
    ++v17[0];
    v8 = v7 + 13;
    if (v8 != a2)
    {
      v9 = 0;
      v10 = a3;
      v11 = a3;
      do
      {
        v12 = *v8;
        *(v11 + 104) = 0u;
        v11 += 104;
        v13 = *v10;
        *(v10 + 200) = 0;
        *(v10 + 120) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 168) = 0u;
        *(v10 + 177) = 0u;
        if (v12 >= v13)
        {
          TRawSymbol<Pointer64>::operator=(v11, v8);
          ++v17[0];
        }

        else
        {
          TRawSymbol<Pointer64>::operator=(v11, v10);
          ++v17[0];
          v14 = a3;
          if (v10 != a3)
          {
            v15 = v9;
            while (1)
            {
              v14 = a3 + v15;
              if (*v8 >= *(a3 + v15 - 104))
              {
                break;
              }

              TRawSymbol<Pointer64>::operator=(v14, a3 + v15 - 104);
              v15 -= 104;
              if (!v15)
              {
                v14 = a3;
                break;
              }
            }
          }

          TRawSymbol<Pointer64>::operator=(v14, v8);
        }

        v8 += 13;
        v9 += 104;
        v10 = v11;
      }

      while (v8 != a2);
    }

    v16[0] = 0;
    return std::unique_ptr<TRawSymbol<Pointer64>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v16);
  }

  return result;
}

uint64_t *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>,std::__wrap_iter<TRawSymbol<Pointer64> *>>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v5 = a5;
  v13[0] = a5;
  v13[1] = &v14;
  v14 = 0;
  if (a1 == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      *(v5 + 96) = 0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 73) = 0u;
      TRawSymbol<Pointer64>::operator=(v5, a3);
      a3 += 13;
      v5 += 104;
      ++v14;
    }
  }

  else
  {
    v9 = a1;
    while (a3 != a4)
    {
      v10 = *a3;
      v11 = *v9;
      *(v5 + 96) = 0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 73) = 0u;
      if (v10 >= v11)
      {
        TRawSymbol<Pointer64>::operator=(v5, v9);
        v9 += 13;
      }

      else
      {
        TRawSymbol<Pointer64>::operator=(v5, a3);
        a3 += 13;
      }

      ++v14;
      v5 += 104;
      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v9 != a2)
    {
      *(v5 + 96) = 0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 73) = 0u;
      TRawSymbol<Pointer64>::operator=(v5, v9);
      v9 += 13;
      v5 += 104;
      ++v14;
    }
  }

  v13[0] = 0;
  return std::unique_ptr<TRawSymbol<Pointer64>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v13);
}

uint64_t *std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer64> *>>(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a7;
  v15[1] = &v16;
  v16 = 0;
  v11 = a7;
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v11 = a7;
      v13 = a1;
      do
      {
        *(v11 + 96) = 0;
        *v11 = 0u;
        *(v11 + 16) = 0u;
        *(v11 + 48) = 0u;
        *(v11 + 64) = 0u;
        *(v11 + 73) = 0u;
        TRawSymbol<Pointer64>::operator=(v11, v13);
        ++v16;
        v13 += 104;
        v11 += 104;
      }

      while (v13 != a2);
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,TRawSymbol<Pointer64> *,std::__wrap_iter<TRawSymbol<Pointer64> *>,std::__wrap_iter<TRawSymbol<Pointer64> *>,std::__wrap_iter<TRawSymbol<Pointer64> *>>(a7, v11, a2, a3, a1);
  }

  else
  {
    if (a2 != a3)
    {
      v11 = a7;
      v12 = a2;
      do
      {
        *(v11 + 96) = 0;
        *v11 = 0u;
        *(v11 + 16) = 0u;
        *(v11 + 48) = 0u;
        *(v11 + 64) = 0u;
        *(v11 + 73) = 0u;
        TRawSymbol<Pointer64>::operator=(v11, v12);
        ++v16;
        v12 += 104;
        v11 += 104;
      }

      while (v12 != a3);
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<TRawSymbol<Pointer64> *>,std::reverse_iterator<TRawSymbol<Pointer64> *>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>>(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  return std::unique_ptr<TRawSymbol<Pointer64>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v15);
}

void sub_1D9784E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<TRawSymbol<Pointer64>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,TRawSymbol<Pointer64> *,std::__wrap_iter<TRawSymbol<Pointer64> *>,std::__wrap_iter<TRawSymbol<Pointer64> *>,std::__wrap_iter<TRawSymbol<Pointer64> *>>(uint64_t result, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v9 = result;
    while (a3 != a4)
    {
      if (*a3 >= *v9)
      {
        result = TRawSymbol<Pointer64>::operator=(a5, v9);
        v9 += 13;
      }

      else
      {
        result = TRawSymbol<Pointer64>::operator=(a5, a3);
        a3 += 13;
      }

      a5 += 104;
      if (v9 == a2)
      {
        return result;
      }
    }

    do
    {
      result = TRawSymbol<Pointer64>::operator=(a5, v9);
      v9 += 13;
      a5 += 104;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<TRawSymbol<Pointer64> *>,std::reverse_iterator<TRawSymbol<Pointer64> *>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::reverse_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    v13 = a2;
    v14 = a10 - 104;
    while (a6 != a8)
    {
      v15 = *(v13 - 104);
      v16 = *(a6 - 104);
      if (v15 >= v16)
      {
        v17 = v13 - 104;
      }

      else
      {
        v17 = a6 - 104;
      }

      if (v15 >= v16)
      {
        v13 -= 104;
      }

      else
      {
        a6 -= 104;
      }

      result = TRawSymbol<Pointer64>::operator=(v14, v17);
      v14 -= 104;
      if (v13 == a4)
      {
        return result;
      }
    }

    for (; v13 != a4; v14 -= 104)
    {
      v13 -= 104;
      result = TRawSymbol<Pointer64>::operator=(v14, v13);
    }
  }

  return result;
}

__n128 *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSymbol<Pointer64> *>>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  v4 = a2;
  swap(a1, a2);
  v6 = (a1 + 104);
  for (i = (v4 + 104); i != a3; i = (i + 104))
  {
    if (v6 == v4)
    {
      v4 = i;
    }

    swap(v6, i);
    v6 = (v6 + 104);
  }

  if (v6 != v4)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      while (1)
      {
        swap(v8, v9);
        v8 = (v8 + 104);
        v9 = (v9 + 104);
        if (v9 == a3)
        {
          break;
        }

        if (v8 == v4)
        {
          v4 = v9;
        }
      }

      v9 = v4;
    }

    while (v8 != v4);
  }

  return v6;
}

void *std::__hash_table<TRawSymbol<Pointer64> *,std::hash<TRawSymbol<Pointer64> *>,std::equal_to<TRawSymbol<Pointer64> *>,std::allocator<TRawSymbol<Pointer64> *>>::__emplace_unique_key_args<TRawSymbol<Pointer64> *,TRawSymbol<Pointer64> *>(void *a1, void *a2)
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

__int128 *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__equal_to &>(__int128 *a1, __int128 *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = (a1 - 40);
    while (v4 + 5 != a2)
    {
      v5 = *(v4 + 5);
      v6 = *(v4 + 6);
      v4 = (v4 + 40);
      if (v5 == *(v4 + 5) && v6 == *(v4 + 6))
      {
        goto LABEL_11;
      }
    }

    v4 = a2;
LABEL_11:
    result = a2;
    if (v4 != a2)
    {
      for (i = v4 + 5; i != a2; i = (i + 40))
      {
        if (*v4 != *i || *(v4 + 1) != *(i + 1))
        {
          v10 = *i;
          v11 = i[1];
          *(v4 + 18) = *(i + 8);
          *(v4 + 56) = v11;
          *(v4 + 40) = v10;
          v4 = (v4 + 40);
        }
      }

      return (v4 + 40);
    }
  }

  return result;
}

void *std::__hash_table<TRawSourceInfo<Pointer64> *,std::hash<TRawSourceInfo<Pointer64> *>,std::equal_to<TRawSourceInfo<Pointer64> *>,std::allocator<TRawSourceInfo<Pointer64> *>>::__emplace_unique_key_args<TRawSourceInfo<Pointer64> *,TRawSourceInfo<Pointer64> *>(void *a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::find<CSCppSymbolOwner>(void *a1, uint64_t a2)
{
  v4 = CSCppSymbolOwnerHashFunctor::operator()(a1, a2);
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
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (CSCppSymbolOwnerEqualsFunctor::operator()(a1, (v11 + 2), a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

unint64_t CSCppSymbolOwnerHashFunctor::operator()(uint64_t a1, uint64_t a2)
{
  if (!UUID::is_null((a2 + 16)))
  {
    return **(a2 + 32) + (*(a2 + 24) ^ *(a2 + 16));
  }

  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v3 >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7;
      v7 += 4;
      v9 = v8 << v6;
      if (v6 <= 15)
      {
        ++v6;
      }

      else
      {
        v6 = 0;
      }

      v10 = v9 * v5;
      v5 += v9;
      if (v6)
      {
        v5 = v10;
      }
    }

    while (v7 < v4);
  }

  return (v5 + ((v4 - v3) >> 5)) ^ (*(a2 + 104) << 32);
}

BOOL CSCppSymbolOwnerEqualsFunctor::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 108);
  if ((*(a2 + 108) & 0x80000000) != 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      return 0;
    }

    v6 = *(a2 + 144);
    if (!v6)
    {
      return 0;
    }

    return v6 == *(a3 + 144);
  }

  else
  {
    if (v5 < 0)
    {
      return 0;
    }

    if (UUID::is_null((a2 + 16)))
    {
      if (*(a2 + 104) != *(a3 + 104) || strcmp(*(a2 + 120), *(a3 + 120)) || *(a2 + 112) != *(a3 + 112))
      {
        return 0;
      }
    }

    else if (*(a2 + 16) != *(a3 + 16) || *(a2 + 24) != *(a3 + 24))
    {
      return 0;
    }

    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v12 = *(a3 + 32);
    if (v11 - v10 != *(a3 + 40) - v12 || *(a2 + 40) != std::__mismatch_loop[abi:ne200100]<CSCppSegmentRange const*,CSCppSegmentRange const*,CSCppSegmentRange const*,CSCppSymbolOwnerEqualsFunctor::operator()(CSCppSymbolOwner const&,CSCppSymbolOwner const&)::{lambda(CSCppSegmentRange,CSCppSegmentRange)#1},std::__identity,std::__identity>(v10, v11, v12))
    {
      return 0;
    }

    return *(a3 + 40) == v13;
  }
}

_OWORD *std::__mismatch_loop[abi:ne200100]<CSCppSegmentRange const*,CSCppSegmentRange const*,CSCppSegmentRange const*,CSCppSymbolOwnerEqualsFunctor::operator()(CSCppSymbolOwner const&,CSCppSymbolOwner const&)::{lambda(CSCppSegmentRange,CSCppSegmentRange)#1},std::__identity,std::__identity>(_OWORD *a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v6 = v4[1];
      v10[0] = *v4;
      v10[1] = v6;
      v7 = a3[1];
      v9[0] = *a3;
      v9[1] = v7;
      if (v10[0] != v9[0] && (!CSCppSegmentRange::is_skippable(v10) || !CSCppSegmentRange::is_skippable(v9)))
      {
        break;
      }

      v4 += 2;
      a3 += 2;
      if (v4 == a2)
      {
        return a2;
      }
    }
  }

  return v4;
}

void *std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::__emplace_unique_key_args<CSCppSymbolOwner,CSCppSymbolOwner const&,CSCppSymbolOwnerData *&>(void *a1, uint64_t a2)
{
  v4 = CSCppSymbolOwnerHashFunctor::operator()(a1, a2);
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
    std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::__construct_node_hash<CSCppSymbolOwner const&,CSCppSymbolOwnerData *&>();
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

  if (!CSCppSymbolOwnerEqualsFunctor::operator()(a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1D9785B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::__emplace_unique_key_args<CSCppSymbolOwner,std::piecewise_construct_t const&,std::tuple<CSCppSymbolOwner const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = CSCppSymbolOwnerHashFunctor::operator()(a1, a2);
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
    std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<CSCppSymbolOwner const&>,std::tuple<>>();
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

  if (!CSCppSymbolOwnerEqualsFunctor::operator()(a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1D9785E70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CSCppDsymData::CSCppDsymData(CSCppDsymData *this, const CSCppDsymData *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v4 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v4;
  }

  memcpy(this + 72, a2 + 72, 0x400uLL);
}

void sub_1D9785FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9786060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
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

__CFString *CSSymbolCopyDescriptionWithIndent(uint64_t a1, uint64_t a2, int a3)
{
  i = (a1 & 7 | (8 * (a2 & 3)));
  if (!i)
  {
    return i;
  }

  v7 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
  v8 = (*(*v7 + 24))(v7);
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v10 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
      v9 = CSCppMMapSymbol::description<TMMapSymbolOwnerData>((a2 & 0xFFFFFFFFFFFFFFFCLL), v10);
      goto LABEL_13;
    }

    if (v8 == 5)
    {
      v19 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
      if (i == 10)
      {
        v9 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::description(&v19);
      }

      else
      {
        v9 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::description(&v19);
      }

      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (v8 == 1)
  {
    v9 = TRawSymbol<Pointer32>::description((a2 & 0xFFFFFFFFFFFFFFFCLL));
    goto LABEL_13;
  }

  if (v8 != 2)
  {
LABEL_17:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Unhandled CSCppSymbolOwnerData type_id: ", 40);
    v14 = CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8));
    v15 = (*(*v14 + 24))(v14);
    MEMORY[0x1DA7365E0](v13, v15);
    std::stringbuf::str[abi:ne200100](&v20, &v18);
    Exception::Exception(v17, &v18);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v17);
  }

  v9 = TRawSymbol<Pointer64>::description(a2 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_13:
  v11 = v9;
  for (i = CFStringCreateMutable(0, 0); a3; --a3)
  {
    CFStringAppendCString(i, "\t", 0x8000100u);
  }

  CFStringAppendFormat(i, 0, @"<CSSymbol: %p> %s", a2 & 0xFFFFFFFFFFFFFFFCLL, v11);
  free(v11);
  return i;
}

void sub_1D9786348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::exception a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  Exception::~Exception(&a4);
  if (a13 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a14, MEMORY[0x1E69E54E8]);
  MEMORY[0x1DA7366F0](va);
  _Unwind_Resume(a1);
}

char *TRawSymbol<Pointer32>::description(int *a1)
{
  TRawSymbol<Pointer32>::is_objc_method(a1);
  explicit = atomic_load_explicit(a1 + 5, memory_order_acquire);
  v3 = TRawSymbol<Pointer32>::_resolve_name(a1);

  return TRawSymbol<Pointer32>::description(a1, explicit, v3);
}

char *TRawSymbol<Pointer32>::description(int *a1, int a2, const char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = convert_symbol_flags_to_symbolic_representation(__dst, 0x100uLL, a2);
  if (v5 >= 2)
  {
    __dst[v5 - 2] = 0;
  }

  v6 = *a1;
  v7 = a1[1] + *a1;
  v10 = 0;
  asprintf(&v10, "[0x%08x -> 0x%08x) %s [%s]", v6, v7, a3, __dst);
  result = v10;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

char *TRawSymbol<Pointer64>::description(uint64_t a1)
{
  TRawSymbol<Pointer64>::is_objc_method(a1);
  explicit = atomic_load_explicit((a1 + 28), memory_order_acquire);
  v3 = TRawSymbol<Pointer64>::_resolve_name(a1);

  return TRawSymbol<Pointer64>::description(a1, explicit, v3);
}

char *TRawSymbol<Pointer64>::description(uint64_t *a1, int a2, const char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = convert_symbol_flags_to_symbolic_representation(__dst, 0x100uLL, a2);
  if (v5 >= 2)
  {
    __dst[v5 - 2] = 0;
  }

  v6 = *a1;
  v7 = a1[1] + *a1;
  v10 = 0;
  asprintf(&v10, "[0x%016llx -> 0x%016llx) %s [%s]", v6, v7, a3, __dst);
  result = v10;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

char *CSCppMMapSymbol::description<TMMapSymbolOwnerData>(unsigned int *a1, TMMapSymbolOwnerData *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = convert_symbol_flags_to_symbolic_representation(__dst, 0x100uLL, a1[2]);
  if (v4 >= 2)
  {
    __dst[v4 - 2] = 0;
  }

  v11 = 0;
  v12 = 0;
  v5 = *(a2 + 11);
  v6 = v5 + 32 * v5[2] + 24 * v5[3] + (24 * v5[4]) + (4 * v5[4]) + (36 * v5[5]) + (20 * v5[6]) + v5[22] + v5[20] + a1[3] + 96;
  v7 = (*(*a2 + 72))(a2, v6);
  if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(a2, *a1, &v11))
  {
    v8 = "<Invalid symbol name>";
    if (v7)
    {
      v8 = v6;
    }

    asprintf(&v12, "[0x%016llx -> 0x%016llx) %s [%s]", v11, v11 + a1[1], v8, __dst);
    result = v12;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

char *FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::description(char **a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::flags(a1);
  v3 = convert_symbol_flags_to_symbolic_representation(__dst, 0x100uLL, v2);
  if (v3 >= 2)
  {
    __dst[v3 - 2] = 0;
  }

  v13 = 0;
  v4 = &(*a1)[-**a1];
  v5 = *v4;
  if (v5 < 0xB)
  {
    if (v5 < 9)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = *(v4 + 5);
  if (!*(v4 + 5))
  {
LABEL_7:
    v6 = *(v4 + 4);
    if (*(v4 + 4))
    {
      goto LABEL_8;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v7 = &(*a1)[v6 + 4 + *&(*a1)[v6]];
LABEL_10:
  v8 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(a1);
  v9 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(a1);
  asprintf(&v13, "[0x%016llx -> 0x%016llx) %s [%s]", v8, v10 + v9, v7, __dst);
  result = v13;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

char *FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::description(char **a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::flags(a1);
  v3 = convert_symbol_flags_to_symbolic_representation(__dst, 0x100uLL, v2);
  if (v3 >= 2)
  {
    __dst[v3 - 2] = 0;
  }

  v13 = 0;
  v4 = &(*a1)[-**a1];
  v5 = *v4;
  if (v5 < 0xB)
  {
    if (v5 < 9)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = *(v4 + 5);
  if (!*(v4 + 5))
  {
LABEL_7:
    v6 = *(v4 + 4);
    if (*(v4 + 4))
    {
      goto LABEL_8;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v7 = &(*a1)[v6 + 4 + *&(*a1)[v6]];
LABEL_10:
  v8 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(a1);
  v9 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(a1);
  asprintf(&v13, "[0x%016llx -> 0x%016llx) %s [%s]", v8, v10 + v9, v7, __dst);
  result = v13;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void Exception::Exception(Exception *this, const Exception *a2)
{
  *this = &unk_1F5504E80;
  v2 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v3 = *(a2 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

_BYTE *std::stringbuf::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5[0] = std::stringbuf::view[abi:ne200100](a1);
  v5[1] = v3;
  return std::string::basic_string<std::string_view,0>(a2, v5);
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

void CSSymbolicatorPrintTimeline(char a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    CSCppSymbolicator::get_symbol_owners((a2 & 0xFFFFFFFFFFFFFFFCLL), &v14);
    v3 = v14;
    for (i = v15; v3 != i; v3 += 2)
    {
      v4 = *v3;
      v5 = v3[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = printf("SYMBOL OWNER: %s\n", *(v4 + 136));
      MEMORY[0x1EEE9AC00](v6);
      CFUUIDBytesToString((v4 + 16), v10, 0x28uLL);
      printf("\tUUID: %s\n", v10);
      printf("\tPath: %s\n", *(v4 + 120));
      _printTimestamp("Load Timestamp", *(v4 + 88));
      _printTimestamp("Unload Timestamp", *(v4 + 96));
      puts("\tSegments:");
      v11 = 0;
      v12 = 0;
      v13 = 0;
      std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(&v11, *(v4 + 32), *(v4 + 40), (*(v4 + 40) - *(v4 + 32)) >> 5);
      v8 = v11;
      v7 = v12;
      if (v11 != v12)
      {
        do
        {
          printf("\t\t%s 0x%llx - 0x%llx\n", v8[2], *v8, *v8 + v8[1]);
          v8 += 4;
        }

        while (v8 != v7);
        v8 = v11;
      }

      if (v8)
      {
        v12 = v8;
        operator delete(v8);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }

    v11 = &v14;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t _printTimestamp(const char *a1, int64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2 || a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return printf("\t%s: %s (%llu)\n");
    }

    return printf("\t%s: %llu\n");
  }

  if (a2 > 0x8000000000000001)
  {
    return printf("\t%s: %llu\n");
  }

  return printf("\t%s: %s (%llu)\n");
}

void sub_1D9786E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CSSymbolicatorCreateWithTaskPidFlagsAndNotification_cold_1(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1D9786E38);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9787194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CSSymbolicatorCreateWithTaskPidFlagsAndNotification_cold_1(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1D9787178);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D97872AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CSSymbolicatorCreateWithTaskPidFlagsAndNotification_cold_1(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1D9787290);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSSymbolicatorSubscribeToTaskMainNotification(uint64_t result, uint64_t a2)
{
  if (result & 7 | (8 * (a2 & 3)))
  {
    return (*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 120))();
  }

  return result;
}

__CFData *CSSymbolicatorCreateSignature(char a1, uint64_t a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    return _CSSymbolicatorCreateFlatbufferSignatureWithProcessTimerange<__CFData const*>(a1, a2, a3, 0, 0);
  }

  else
  {
    return _CSSymbolicatorCreateSignatureElidingSomeSymbolOwners<__CFData const*>(a1, a2, a3, 0, 0);
  }
}

__CFData *CSSymbolicatorCreateSignatureWithProcessTimeRange(char a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5)
{
  if ((a3 & 8) != 0)
  {
    return _CSSymbolicatorCreateFlatbufferSignatureWithProcessTimerange<__CFData const*>(a1, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorForeachSymbolicatorWithURLFlagsAndNotification(const __CFURL *a1, int a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v12 = -1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __CSSymbolicatorForeachSymbolicatorWithURLFlagsAndNotification_block_invoke;
    v10[3] = &unk_1E8584188;
    v11 = a2;
    v10[5] = a4;
    v10[6] = &v13;
    v10[4] = a3;
    iterate_symbol_owners_from_path(buffer, (a2 & 0x20000000) == 0, 0, &v12, 0, v10);
  }

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1D9787670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (a10)
  {
    CSSymbolicatorCreateWithSymbolOwnersAndCSCppTask(a10);
  }

  a14 = &a11;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolicatorCreateWithURLArchitectureFlagsAndNotification(const __CFURL *a1, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    result = CSSymbolicatorCreateWithPathArchitectureFlagsAndNotification(buffer, a2, a3);
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

atomic_uint *CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification(char a1, uint64_t a2)
{
  SharedCacheUUID = CSSymbolicatorGetSharedCacheUUID(a1, a2);
  if (SharedCacheUUID)
  {
    v5 = CSSymbolicatorCreateWithSharedCacheUUID(SharedCacheUUID);
    v7 = v6;
    if (!CSIsNull(v5, v6))
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2000000000;
      v15 = 0;
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x2000000000;
      v11[3] = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification_block_invoke;
      v10[3] = &unk_1E85841D8;
      v10[6] = v5;
      v10[7] = v7;
      v10[4] = &v12;
      v10[5] = v11;
      CSSymbolicatorForeachSymbolOwnerAtTime(a1, a2, 0x8000000000000000, v10);
      if (v13[3])
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 0x40000000;
        v9[2] = __CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification_block_invoke_2;
        v9[3] = &unk_1E8584250;
        v9[5] = v5;
        v9[6] = v7;
        v9[4] = v11;
        if (CSSymbolicatorApplyMutableContextBlock(v5, v7, v9))
        {
LABEL_9:
          _Block_object_dispose(v11, 8);
          _Block_object_dispose(&v12, 8);
          return v5;
        }

        CSRelease(v5, v7);
      }

      else
      {
        CSRelease(v5, v7);
      }

      v5 = 0;
      goto LABEL_9;
    }
  }

  return 0;
}

void sub_1D9787908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolicatorCreateWithSharedCacheUUID(uint64_t a1)
{
  if (a1)
  {
    shared_cache_search_directories(&v4);
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x3802000000;
    v3[3] = __Block_byref_object_copy__8;
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = __Block_byref_object_dispose__8;
    if (v4 != v5)
    {
      v1 = *v4;
      operator new();
    }

    _Block_object_dispose(v3, 8);
    if (v4)
    {
      v5 = v4;
      operator delete(v4);
    }
  }

  return 0;
}

void sub_1D9787B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1[4] + 8) + 24) & 1) == 0 && CSSymbolOwnerIsDyldSharedCache(a2, a3))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3802000000;
    v15 = __Block_byref_object_copy__8;
    v17 = 0;
    v18 = 0;
    v16 = __Block_byref_object_dispose__8;
    CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes(a2, a3);
    v7 = a1[6];
    v8 = a1[7];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification_block_invoke_8;
    v11[3] = &unk_1E85841B0;
    v11[5] = a2;
    v11[6] = a3;
    v11[4] = &v12;
    _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(v7, v8, CFUUIDBytes, 0x8000000000000000, v11);
    if (!CSIsNull(v13[5], v13[6]))
    {
      BaseAddress = CSSymbolOwnerGetBaseAddress(a2, a3);
      v10 = CSSymbolOwnerGetBaseAddress(v13[5], v13[6]);
      *(*(a1[4] + 8) + 24) = 1;
      *(*(a1[5] + 8) + 24) = BaseAddress - v10;
    }

    _Block_object_dispose(&v12, 8);
  }
}

void sub_1D9787D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(char a1, uint64_t a2, void **a3, void **a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSCppSymbolicator::get_symbol_owners_at_time<unsigned long _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(_CSTypeRef,CFUUIDBytes const *,unsigned long long,void({block_pointer})(_CSTypeRef))::{lambda(CSCppSymbolOwner const&)#1}>(a2 & 0xFFFFFFFFFFFFFFFCLL, a4, a3, &v11);
  v6 = v11;
  v7 = v12;
  if (v11 == v12)
  {
    v8 = v11;
  }

  else
  {
    do
    {
      if (a5)
      {
        (*(a5 + 16))(a5, 3, *v6);
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = v11;
    v8 = v12;
  }

  v9 = v8 - v6;
  if (v6)
  {
    v12 = v6;
    operator delete(v6);
  }

  return v9;
}

void sub_1D9787DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification_block_invoke_8(void *a1, uint64_t a2, uint64_t a3)
{
  Name = CSSymbolOwnerGetName(a1[5], a1[6]);
  result = CSSymbolOwnerGetName(a2, a3);
  if (Name)
  {
    v8 = result == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    result = strcmp(Name, result);
    if (!result)
    {
      v9 = *(a1[4] + 8);
      *(v9 + 40) = a2;
      *(v9 + 48) = a3;
    }
  }

  return result;
}

uint64_t __CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification_block_invoke_2(void *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = a1[6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification_block_invoke_3;
  v5[3] = &unk_1E8584228;
  v5[4] = a1[4];
  v5[5] = a2;
  return CSSymbolicatorForeachSymbolOwnerAtTime(v2, v3, 0x8000000000000000, v5);
}

uint64_t __CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification_block_invoke_3(uint64_t a1, char a2, uint64_t a3)
{
  MutableInContext = CSSymbolOwnerMakeMutableInContext(a2, a3, *(a1 + 40));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __CSSymbolicatorCreateForTaskSharedCacheWithFlagsAndNotification_block_invoke_4;
  v7[3] = &unk_1E8584200;
  v7[4] = *(a1 + 32);
  return CSSymbolOwnerEditRelocations(MutableInContext, v5, v7);
}

uint64_t __CSSymbolicatorCreateWithSharedCacheUUID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void ****a4)
{
  result = _createSymbolicatorFromSharedCacheSymbolOwners(*(a1 + 40), 0, a2, a3, a4);
  v6 = *(*(a1 + 32) + 8);
  *(v6 + 40) = result;
  *(v6 + 48) = v7;
  return result;
}

uint64_t _createSymbolicatorFromSharedCacheSymbolOwners(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void ****a5)
{
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  memset(v19, 0, sizeof(v19));
  v6 = *a5;
  v5 = a5[1];
  if (v5 != *a5)
  {
    while (1)
    {
      v8 = *v6;
      v7 = v6[1];
      v17 = *v6;
      v18 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::__equal_range_multi<UUID>(v20, v8 + 2);
      v11 = v9;
      v12 = v10;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9 != v10)
      {
        do
        {
          v13 = v11[4];
          v14 = v11[5];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = check_if_segments_match(v17, v13);
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (v15)
          {
            goto LABEL_14;
          }

          v11 = *v11;
        }

        while (v11 != v12);
        v11 = v12;
      }

LABEL_14:
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (v11 == v12)
      {
        std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_multi<UUID const&,std::shared_ptr<CSCppSymbolOwner>&>();
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v6 += 2;
      if (v6 == v5)
      {
        operator new();
      }
    }
  }

  v17 = v19;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v17);
  std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::~__hash_table(v20);
  return 0;
}

void sub_1D97881E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  if (a6)
  {
    CSSymbolicatorCreateWithSymbolOwnersAndCSCppTask(a6);
  }

  va_copy(v7, va1);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::~__hash_table(va2);
  _Unwind_Resume(a1);
}

uint64_t CSSymbolicatorForeachSharedCacheSymbolicatorWithFlagsAndNotification()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2000000000;
  v5 = 0;
  iterate_symbol_owners_from_disk_dsc(0);
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

atomic_uint *__CSSymbolicatorForeachSharedCacheSymbolicatorWithFlagsAndNotification_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void ****a4)
{
  SymbolicatorFromSharedCacheSymbolOwners = _createSymbolicatorFromSharedCacheSymbolOwners(*(a1 + 56), *(a1 + 32), a2, a3, a4);
  v7 = v6;
  result = CSIsNull(SymbolicatorFromSharedCacheSymbolOwners, v6);
  if ((result & 1) == 0)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, SymbolicatorFromSharedCacheSymbolOwners, v7);
    }

    result = CSRelease(SymbolicatorFromSharedCacheSymbolOwners, v7);
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  return result;
}

uint64_t CSSymbolicatorGetAotSharedCacheAddress(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)) && (v2 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32), v2[16] == 1))
  {
    return (*(*v2 + 72))();
  }

  else
  {
    return 0;
  }
}

UUID *CSSymbolicatorGetAotSharedCacheUUID(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32);
  if (v2[16] != 1)
  {
    return 0;
  }

  v3 = (*(*v2 + 56))(v2);
  if (UUID::is_null(v3))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t _createSymbolicatorWithMachKernelExcludingSearchPathsFlagsAndNotification(uint64_t a1, uint64_t a2, int a3)
{
  v78[3] = *MEMORY[0x1E69E9840];
  memset(v47, 0, sizeof(v47));
  v48 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&__p, "xnu");
  v63.__r_.__value_.__r.__words[0] = &__p;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v47, &__p)[5] = 0;
  if (__p.d_name[2] < 0)
  {
    operator delete(__p.d_ino);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "sptm");
  v63.__r_.__value_.__r.__words[0] = &__p;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v47, &__p)[5] = 0;
  if (__p.d_name[2] < 0)
  {
    operator delete(__p.d_ino);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "txm");
  v63.__r_.__value_.__r.__words[0] = &__p;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v47, &__p)[5] = 0;
  if (__p.d_name[2] < 0)
  {
    operator delete(__p.d_ino);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  __str[0]._p = 0;
  *&buf = 8;
  if (kas_info())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(__p.d_ino) = 0;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "Unable to determine kernel slide.";
LABEL_77:
      _os_log_impl(&dword_1D96E9000, v8, OS_LOG_TYPE_INFO, v9, &__p, 2u);
      goto LABEL_125;
    }

    goto LABEL_125;
  }

  p = __str[0]._p;
  std::string::basic_string[abi:ne200100]<0>(&__p, "xnu");
  v63.__r_.__value_.__r.__words[0] = &__p;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v47, &__p)[5] = p;
  if (__p.d_name[2] < 0)
  {
    operator delete(__p.d_ino);
  }

  values = 0;
  *&v52 = 8;
  if (kas_info())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(__p.d_ino) = 0;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "Unable to determine a special slide 1.";
      goto LABEL_77;
    }

    goto LABEL_125;
  }

  v26 = values;
  std::string::basic_string[abi:ne200100]<0>(&__p, "sptm");
  v63.__r_.__value_.__r.__words[0] = &__p;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v47, &__p)[5] = v26;
  if (__p.d_name[2] < 0)
  {
    operator delete(__p.d_ino);
  }

  *&v55 = 0;
  *&v49 = 8;
  if (kas_info())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(__p.d_ino) = 0;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "Unable to determine special slide 2.";
      goto LABEL_77;
    }

    goto LABEL_125;
  }

  v27 = v55;
  std::string::basic_string[abi:ne200100]<0>(&__p, "txm");
  v63.__r_.__value_.__r.__words[0] = &__p;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v47, &__p)[5] = v27;
  if (__p.d_name[2] < 0)
  {
    operator delete(__p.d_ino);
  }

LABEL_9:
  Current = CSArchitectureGetCurrent();
  if (Current)
  {
    v46 = Current;
    *v61 = *UUID::null_uuid(Current);
    v63.__r_.__value_.__r.__words[0] = 48;
    if ((sysctlbyname("kern.uuid", &__p, &v63, 0, 0) || v63.__r_.__value_.__r.__words[0] > 0x2F || !CSUUIDStringToCFUUIDBytes(&__p, v61)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.d_ino) = 0;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not read UUID of running kernel\n", &__p, 2u);
    }

    *&v52 = 0;
    *(&v52 + 1) = &v52;
    v53 = 0x2000000000;
    v54 = 0;
    if (UUID::is_null(v61))
    {
      _Block_object_dispose(&v52, 8);
      v7 = "/mach_kernel";
LABEL_99:
      if ((UUID::is_null(v61) & 1) == 0)
      {
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 0x40000000;
        v58[2] = ___ZL73_createSymbolicatorWithMachKernelExcludingSearchPathsFlagsAndNotificationPPKcmjU13block_pointerFvj19_CSNotificationDataE_block_invoke;
        v58[3] = &__block_descriptor_tmp_57;
        v59 = *v61;
        iterate_symbol_owners_from_path(v7, 0, 0, &v46, 1, v58);
      }

      v52 = 0uLL;
      v53 = 0;
      pthread_mutex_lock(&kext_lock);
      std::unordered_map<std::string,unsigned long long>::unordered_map(v45, v47);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v75 = 0x4002000000;
      v76[0] = __Block_byref_object_copy__67;
      v76[1] = __Block_byref_object_dispose__68;
      v77 = 0;
      v78[0] = 0;
      v78[1] = 0;
      values = @"OSBundleLoadAddress";
      v69 = @"OSBundleMachOHeaders";
      v70 = @"OSBundleExecutablePath";
      v71 = @"OSBundlePath";
      v33 = *MEMORY[0x1E695E4F0];
      v72 = @"OSBundleUUID";
      v73 = v33;
      v34 = CFArrayCreate(0, &values, 6, MEMORY[0x1E695E9C0]);
      v35 = OSKextCopyLoadedKextInfo();
      v63.__r_.__value_.__r.__words[0] = 0;
      v63.__r_.__value_.__l.__size_ = &v63;
      v63.__r_.__value_.__r.__words[2] = 0x5002000000;
      v64 = __Block_byref_object_copy__84;
      v65 = __Block_byref_object_dispose__85;
      memset(v66, 0, sizeof(v66));
      v67 = 1065353216;
      __p.d_ino = MEMORY[0x1E69E9820];
      __p.d_seekoff = 1174405120;
      *&__p.d_reclen = ___ZL14fast_kext_info17CSCppArchitectureNSt3__113unordered_mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEyNS0_4hashIS7_EENS0_8equal_toIS7_EENS5_INS0_4pairIKS7_yEEEEEEjPKc_block_invoke;
      *&__p.d_name[3] = &unk_1F5507B28;
      std::unordered_map<std::string,unsigned long long>::unordered_map(&__p.d_name[27], v45);
      *&__p.d_name[67] = v7;
      *&__p.d_name[11] = &v63;
      *&__p.d_name[19] = &buf;
      if (v35)
      {
        CFDictionaryApplyFunction(v35, CFDictionaryBlockApplierCallback, &__p);
        CFRelease(v35);
      }

      CFRelease(v34);
      v56 = 0;
      v55 = 0uLL;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(&v55, *(*(&buf + 1) + 40), *(*(&buf + 1) + 48), (*(*(&buf + 1) + 48) - *(*(&buf + 1) + 40)) >> 4);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&__p.d_name[27]);
      _Block_object_dispose(&v63, 8);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v66);
      _Block_object_dispose(&buf, 8);
      v63.__r_.__value_.__r.__words[0] = &v77;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v63);
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__vdeallocate(&v52);
      v52 = v55;
      v53 = v56;
      v56 = 0;
      v55 = 0uLL;
      __p.d_ino = &v55;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v45);
      pthread_mutex_unlock(&kext_lock);
      v37 = *(&v52 + 1);
      v36 = v52;
      if (v52 != *(&v52 + 1))
      {
        do
        {
          v39 = *v36;
          v38 = v36[1];
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = *(v39 + 108);
          if ((v40 & 0x200) != 0)
          {
            v40 = v40 & 0xFEFFEDFF | 0x1000;
            *(v39 + 108) = v40;
          }

          if ((v40 & 0x3000) == 0x2000)
          {
            v41 = v40 | 0x1000000;
            *(v39 + 108) = v40 | 0x1000000;
            v42 = *(v39 + 136);
            if (!strstr(v42, "mach") && !strstr(v42, "kernel") && (strstr(v42, "sptm") || strstr(v42, "txm")))
            {
              v41 &= 0xFFFFEFEF;
              *(v39 + 108) = v41;
            }

            *(v39 + 108) = v41 & 0xFEFFEFFF | 0x1000;
          }

          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          v36 += 2;
        }

        while (v36 != v37);
        if (v52 != *(&v52 + 1))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            LOWORD(__p.d_ino) = 0;
            _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Succesfully created kext symbol owners.\n", &__p, 2u);
          }

          operator new();
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.d_ino) = 0;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to create any kext symbol owners.\n", &__p, 2u);
      }

      __p.d_ino = &v52;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&__p);
      goto LABEL_125;
    }

    v51 = 0;
    v10 = getwd(&v63);
    v57 = v10;
    std::string::basic_string[abi:ne200100]<0>(&buf, "/System/Library/Kernels");
    std::string::basic_string[abi:ne200100]<0>(v76, "/");
    v55 = 0uLL;
    v56 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v55, &buf, v78, 2uLL);
    for (i = 0; i != -6; i -= 3)
    {
      if (*(&v77 + i * 8 + 7) < 0)
      {
        operator delete(v76[i]);
      }
    }

    if (v10)
    {
      v12 = *(&v55 + 1);
      if (*(&v55 + 1) >= v56)
      {
        v13 = std::vector<std::string>::__emplace_back_slow_path<char const*&>(&v55, &v57);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(*(&v55 + 1), v10);
        v13 = v12 + 24;
      }

      *(&v55 + 1) = v13;
    }

    if (a1 && a2)
    {
      std::unordered_set<std::string>::unordered_set<char const**>(&buf, a1, a1 + 8 * a2);
      v49 = 0uLL;
      v50 = 0;
      v15 = *(&v55 + 1);
      for (j = v55; j != v15; j = (j + 24))
      {
        if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(&buf, j))
        {
          std::vector<std::string>::push_back[abi:ne200100](&v49, j);
        }
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&buf);
    }

    else
    {
      v49 = v55;
      v50 = v56;
      v56 = 0;
      v55 = 0uLL;
    }

    *&buf = &v55;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&buf);
    v18 = *(&v49 + 1);
    v17 = v49;
    if (v49 == *(&v49 + 1))
    {
      if ((*(*(&v52 + 1) + 24) & 1) == 0)
      {
LABEL_82:
        memset(&v63, 0, sizeof(v63));
        for (; v17 != v18; v17 += 24)
        {
          v28 = v17[23];
          if (v28 >= 0)
          {
            v29 = v17;
          }

          else
          {
            v29 = *v17;
          }

          if (v28 >= 0)
          {
            v30 = *(v17 + 23);
          }

          else
          {
            v30 = *(v17 + 1);
          }

          std::string::append(&v63, v29, v30);
          std::string::append(&v63, ", ", 2uLL);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v31 = &v63;
          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v31 = v63.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v31;
          _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to find matching kernels in %s\n", &buf, 0xCu);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

LABEL_96:
        v32 = *(*(&v52 + 1) + 24);
        v63.__r_.__value_.__r.__words[0] = &v49;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v63);
        _Block_object_dispose(&v52, 8);
        if (v32)
        {
          v7 = __str;
        }

        else
        {
          v7 = "/mach_kernel";
        }

        goto LABEL_99;
      }
    }

    else
    {
      v19 = 0;
      while (1)
      {
        v20 = v17;
        if (v17[23] < 0)
        {
          v20 = *v17;
        }

        v21 = opendir(v20);
        if (v21)
        {
          if ((*(*(&v52 + 1) + 24) & 1) == 0)
          {
            while (1)
            {
              v19 = readdir_r(v21, &__p, &v51);
              if (v19 || !v51)
              {
                break;
              }

              if (v51->d_type == 8)
              {
                if (*v20 == 47 && !v20[1])
                {
                  snprintf(__str, 0x400uLL, "/%s");
                }

                else
                {
                  snprintf(__str, 0x400uLL, "%s/%s");
                }

                if (CSFileIsSuitableForCS(__str))
                {
                  values = MEMORY[0x1E69E9820];
                  v69 = 0x40000000;
                  v70 = ___ZL23get_running_kernel_pathRK4UUIDRK17CSCppArchitecturePcmPPKcm_block_invoke;
                  v71 = &unk_1E8584308;
                  v72 = &v52;
                  v73 = v61;
                  iterate_symbol_owners_from_path(__str, 0, 0, &v46, 1, &values);
                }
              }

              if (*(*(&v52 + 1) + 24) == 1)
              {
                v19 = 0;
                break;
              }
            }
          }

          closedir(v21);
          if (*(*(&v52 + 1) + 24))
          {
            break;
          }
        }

        v17 += 24;
        if (v17 == v18)
        {
          if (*(*(&v52 + 1) + 24))
          {
            break;
          }

          if (!v19)
          {
            v18 = *(&v49 + 1);
            v17 = v49;
            goto LABEL_82;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_96;
          }

          v22 = strerror(v19);
          LODWORD(v63.__r_.__value_.__l.__data_) = 136315138;
          *(v63.__r_.__value_.__r.__words + 4) = v22;
          v23 = MEMORY[0x1E69E9C10];
          v24 = "Error reading kernels directory: %s\n";
          v25 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_71;
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LODWORD(v63.__r_.__value_.__l.__data_) = 136315138;
      *(v63.__r_.__value_.__r.__words + 4) = __str;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "Found matching kernel in %s\n";
      v25 = OS_LOG_TYPE_INFO;
LABEL_71:
      _os_log_impl(&dword_1D96E9000, v23, v25, v24, &v63, 0xCu);
    }

    goto LABEL_96;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(__p.d_ino) = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Unable to determine architecture of the kernel";
    goto LABEL_77;
  }

LABEL_125:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v47);
  v43 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1D97892D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  STACK[0x950] = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x950]);
  _Block_object_dispose(&a29, 8);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a19);
  _Unwind_Resume(a1);
}

void CSSymbolicatorResymbolicate(char a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    CSCppSymbolicator::get_symbol_owners((a2 & 0xFFFFFFFFFFFFFFFCLL), v10);
    CSCppSymbolOwnerCache::resymbolicate_symbol_owners(v10, a3, a4, a5, a6);
    v11 = v10;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }
}

void sub_1D978958C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CSSymbolicatorResymbolicateFail(char a1, uint64_t a2, const __CFArray *a3)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    CSCppSymbolicator::get_symbol_owners((a2 & 0xFFFFFFFFFFFFFFFCLL), v4);
    CSCppSymbolOwnerCache::resymbolicate_symbol_owners(v4, a3);
    v5 = v4;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void sub_1D9789600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CSSymbolicatorResymbolicateFromDebugSymbolsInfo(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    FlagsForNonFaultingBehavior = CSSymbolicatorGetFlagsForNonFaultingBehavior();
    v4 = atomic_load(((a2 & 0xFFFFFFFFFFFFFFFCLL) + 40));
    atomic_store(v4 & ~FlagsForNonFaultingBehavior, ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 40));
    CSCppSymbolicator::get_symbol_owners((a2 & 0xFFFFFFFFFFFFFFFCLL), v5);
    CSCppSymbolOwnerCache::resymbolicate_symbol_owners(v5);
    v6 = v5;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v6);
  }
}

void sub_1D9789690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFString *CSSymbolicatorCopyDescriptionWithIndent(char a1, uint64_t a2, int a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (a3)
  {
    v7 = a3;
    do
    {
      CFStringAppendCString(Mutable, "\t", 0x8000100u);
      --v7;
    }

    while (v7);
  }

  Architecture = CSSymbolicatorGetArchitecture(a1, a2);
  FamilyName = CSArchitectureGetFamilyName(Architecture);
  Pid = CSSymbolicatorGetPid(a1, a2);
  IsTaskValid = CSSymbolicatorIsTaskValid(a1, a2);
  v12 = "";
  if (IsTaskValid)
  {
    v12 = " LIVE";
  }

  CFStringAppendFormat(Mutable, 0, @"<CSSymbolicator: %p> %s (pid:%d%s) {\n", a2 & 0xFFFFFFFFFFFFFFFCLL, FamilyName, Pid, v12);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __CSSymbolicatorCopyDescriptionWithIndent_block_invoke;
  v14[3] = &__block_descriptor_tmp_27;
  v15 = a3;
  v14[4] = Mutable;
  CSSymbolicatorForeachSymbolOwnerAtTime(a1, a2, 0x8000000000000001, v14);
  for (; a3; --a3)
  {
    CFStringAppendCString(Mutable, "\t", 0x8000100u);
  }

  CFStringAppendCString(Mutable, "}", 0x8000100u);
  return Mutable;
}

void __CSSymbolicatorCopyDescriptionWithIndent_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CSCopyDescriptionWithIndent(a2, a3, (*(a1 + 40) + 1));
  CFStringAppendFormat(*(a1 + 32), 0, @"%@\n", v4);

  CFRelease(v4);
}

__n128 ___ZL73_createSymbolicatorWithMachKernelExcludingSearchPathsFlagsAndNotificationPPKcmjU13block_pointerFvj19_CSNotificationDataE_block_invoke(__n128 *a1, __n128 **a2)
{
  result = a1[2];
  (*a2)[1] = result;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

uint64_t ___ZL23get_running_kernel_pathRK4UUIDRK17CSCppArchitecturePcmPPKcm_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v4 = *v2;
  v3 = v2[1];
  if (v4 == *(*a2 + 16) && v3 == *(*a2 + 24))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const*&>(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

uint64_t std::unordered_set<std::string>::unordered_set<char const**>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_impl<char const*&>();
  }

  return result;
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
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, v6);
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

__n128 __Block_byref_object_copy__67(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void ___ZL14fast_kext_info17CSCppArchitectureNSt3__113unordered_mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEyNS0_4hashIS7_EENS0_8equal_toIS7_EENS5_INS0_4pairIKS7_yEEEEEEjPKc_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  v39 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"OSBundleLoadAddress");
  valuePtr = 0;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr) && valuePtr)
  {
    v6 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E4F0]);
    v7 = CFStringCompare(@"__kernel__", v6, 0);
    v8 = CFStringCompare(@"com.apple.sptm", v6, 0);
    v9 = CFStringCompare(@"com.apple.txm", v6, 0);
    if (v7)
    {
      if (v8)
      {
        if (v9)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "xnu");
          v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::find<std::string>((a1 + 48), __p);
          if (!v10)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "txm");
          v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::find<std::string>((a1 + 48), __p);
          if (!v10)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "sptm");
        v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::find<std::string>((a1 + 48), __p);
        if (!v10)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "xnu");
      v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::find<std::string>((a1 + 48), __p);
      if (!v10)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }
    }

    v11 = v10[5];
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = CFDictionaryGetValue(theDict, @"OSBundleUUID");
    v13 = CFDictionaryGetValue(theDict, @"OSBundleMachOHeaders");
    if (v13)
    {
      v14 = CFDictionaryGetValue(theDict, @"OSBundleExecutablePath");
      v15 = v14;
      if (v14)
      {
        if ((!CFStringGetCString(v14, __p, 1024, 0x8000100u) || access(__p, 4)) && CFStringGetCString(v15, __p, 1024, 0x8000100u) && *(*(*(a1 + 32) + 8) + 64))
        {
          bzero(buffer, 0x400uLL);
          bzero(__s, 0x400uLL);
          if (!CFStringGetCString(v6, buffer, 1024, 0x8000100u) || !CFStringGetCString(v15, __s, 1024, 0x8000100u))
          {
            goto LABEL_52;
          }

          std::string::basic_string[abi:ne200100]<0>(v32, buffer);
          std::string::basic_string[abi:ne200100]<0>(v30, __s);
          v16 = std::string::find[abi:ne200100](v30, "_development", 0);
          v17 = std::string::find[abi:ne200100](v30, "_kasan", 0);
          v18 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>((*(*(a1 + 32) + 8) + 40), v32);
          if (v18)
          {
            v19 = (v18 + 5);
            v20 = *(v18 + 63);
            if (v16 == -1)
            {
              if (v17 == -1)
              {
                if (v20 < 0)
                {
                  v19 = *v19;
                }

                strlcpy(__p, v19, 0x400uLL);
              }

              else
              {
                if (v20 < 0)
                {
                  v19 = *v19;
                }

                snprintf(__p, 0x400uLL, "%s%s", v19, "_kasan");
              }
            }

            else
            {
              if (v20 < 0)
              {
                v19 = *v19;
              }

              snprintf(__p, 0x400uLL, "%s%s", v19, "_development");
            }
          }

          if (v31 < 0)
          {
            operator delete(v30[0]);
          }

          if (v33 < 0)
          {
            operator delete(v32[0]);
          }
        }
      }

      else
      {
        v21 = CFDictionaryGetValue(theDict, @"OSBundlePath");
        if (v21)
        {
          v22 = CFURLCreateWithFileSystemPath(0, v21, kCFURLPOSIXPathStyle, 1u);
          if (v22)
          {
            v23 = CFBundleCreate(0, v22);
            v24 = v23;
            if (v23)
            {
              v25 = CFBundleCopyExecutableURL(v23);
              v26 = v25;
              if (v25)
              {
                CFURLGetFileSystemRepresentation(v25, 1u, __p, 1024);
                CFRelease(v26);
              }

              CFRelease(v24);
            }

            CFRelease(v22);
          }
        }
      }

      if (v7 == kCFCompareEqualTo)
      {
        v27 = *(a1 + 88);
        if (v27 && !access(v27, 4))
        {
          strlcpy(__p, *(a1 + 88), 0x400uLL);
        }

        else
        {
          strcpy(__p, "__kernel__");
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buffer = 0;
          _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Found running kernel dummy entry.\n", buffer, 2u);
        }
      }

      CSCppCFDataMemory::CSCppCFDataMemory(buffer, v13);
      *__s = -1;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 0x40000000;
      v29[2] = ___ZL14fast_kext_info17CSCppArchitectureNSt3__113unordered_mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEyNS0_4hashIS7_EENS0_8equal_toIS7_EENS5_INS0_4pairIKS7_yEEEEEEjPKc_block_invoke_99;
      v29[3] = &unk_1E8584330;
      v29[5] = v12;
      v29[6] = v11;
      v29[4] = *(a1 + 40);
      iterate_symbol_owners_from_memory(buffer, __p, 0, 0, 0, __s, 0, 1, v29);
      CSCppCFDataMemory::~CSCppCFDataMemory(buffer);
    }
  }

LABEL_52:
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1D978A4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

void **___ZL14fast_kext_info17CSCppArchitectureNSt3__113unordered_mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEyNS0_4hashIS7_EENS0_8equal_toIS7_EENS5_INS0_4pairIKS7_yEEEEEEjPKc_block_invoke_99(void *a1, __int128 *a2)
{
  result = a1[5];
  if (result)
  {
    v5 = *a2;
    result = CFDataGetBytePtr(result);
    if (*(v5 + 16) == *result && *(v5 + 24) == result[1])
    {
      v7 = *a2;
      v8 = *(*a2 + 32);
      v9 = *(*a2 + 40) - v8;
      if (v9)
      {
        v10 = v9 >> 5;
        if (v10 <= 1)
        {
          v10 = 1;
        }

        do
        {
          *v8 += a1[6];
          v8 += 4;
          --v10;
        }

        while (v10);
      }

      v12 = v7 + 56;
      v11 = *(v7 + 56);
      v13 = *(v12 + 8) - v11;
      if (v13)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        if (v14 <= 1)
        {
          v14 = 1;
        }

        do
        {
          *v11 += a1[6];
          v11 += 3;
          --v14;
        }

        while (v14);
      }

      v15 = (*(a1[4] + 8) + 40);

      return std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](v15, a2);
    }
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::find<std::string>(void *a1, const void **a2)
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

uint64_t std::unordered_map<std::string,unsigned long long>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned long long> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned long long> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__construct_node_hash<std::pair<std::string const,unsigned long long> const&>();
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

void sub_1D978AACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D978AB94(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CSCppSymbolicator::get_symbol_owners_at_time<unsigned long _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(_CSTypeRef,CFUUIDBytes const *,unsigned long long,void({block_pointer})(_CSTypeRef))::{lambda(CSCppSymbolOwner const&)#1}>(uint64_t a1@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v4[0] = a4;
  v4[1] = a2;
  v4[2] = a3;
  CSCppSymbolicator::access_timeline<std::integral_constant<BOOL,false>,std::vector<CSCppSymbolOwner*> CSCppSymbolicator::get_symbol_owners_at_time<unsigned long _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(_CSTypeRef,CFUUIDBytes const *,unsigned long long,void({block_pointer})(_CSTypeRef))::{lambda(CSCppSymbolOwner const&)#1}>(unsigned long long,CFUUIDBytes const)::{lambda(CSCppSymbolOwnerTimeline const&)#1}>(a1, v4);
}

void sub_1D978ABF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CSCppSymbolicator::access_timeline<std::integral_constant<BOOL,false>,std::vector<CSCppSymbolOwner*> CSCppSymbolicator::get_symbol_owners_at_time<unsigned long _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(_CSTypeRef,CFUUIDBytes const *,unsigned long long,void({block_pointer})(_CSTypeRef))::{lambda(CSCppSymbolOwner const&)#1}>(unsigned long long,CFUUIDBytes const)::{lambda(CSCppSymbolOwnerTimeline const&)#1}>(uint64_t a1, void ***a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    CSCppSymbolOwnerTimeline::symbol_owners_at_time<unsigned long _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(_CSTypeRef,CFUUIDBytes const *,unsigned long long,void({block_pointer})(_CSTypeRef))::{lambda(CSCppSymbolOwner const&)#1}>(v4, a2[1], a2[2], &v17);
    v5 = *a2;
    v6 = **a2;
    if (v6)
    {
      v5[1] = v6;
      operator delete(v6);
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    *v5 = v17;
    v5[2] = v18;
  }

  else
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 68), 1u, memory_order_relaxed);
    v8 = add_explicit & 0xF0000000;
    v9 = (add_explicit & 0xF0000000) == 0;
    if ((add_explicit & 0xFFFFFFF) != 0)
    {
      v9 = 1;
    }

    v10 = add_explicit >> 28;
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 > 0xE && v9;
    if (v12 || v11)
    {
      os_unfair_lock_lock((a1 + 12));
      if (v11)
      {
        std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::erase(a1 + 96, *(a1 + 96), (*(a1 + 96) + 8 * v11));
        atomic_fetch_add((a1 + 68), -v8);
      }

      CSCppSymbolOwnerTimeline::symbol_owners_at_time<unsigned long _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(_CSTypeRef,CFUUIDBytes const *,unsigned long long,void({block_pointer})(_CSTypeRef))::{lambda(CSCppSymbolOwner const&)#1}>(*(a1 + 88), a2[1], a2[2], &v17);
      v15 = *a2;
      v16 = *v15;
      if (*v15)
      {
        v15[1] = v16;
        operator delete(v16);
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
      }

      *v15 = v17;
      v15[2] = v18;
      os_unfair_lock_unlock((a1 + 12));
    }

    else
    {
      CSCppSymbolOwnerTimeline::symbol_owners_at_time<unsigned long _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(_CSTypeRef,CFUUIDBytes const *,unsigned long long,void({block_pointer})(_CSTypeRef))::{lambda(CSCppSymbolOwner const&)#1}>(atomic_load_explicit((a1 + 88), memory_order_acquire), a2[1], a2[2], &v17);
      v13 = *a2;
      v14 = *v13;
      if (*v13)
      {
        v13[1] = v14;
        operator delete(v14);
        *v13 = 0;
        v13[1] = 0;
        v13[2] = 0;
      }

      *v13 = v17;
      v13[2] = v18;
    }

    atomic_fetch_add_explicit((a1 + 68), 0xFFFFFFFF, memory_order_relaxed);
  }
}

void CSCppSymbolOwnerTimeline::symbol_owners_at_time<unsigned long _CSSymbolicatorForeachSymbolOwnerWithUUIDBytesAtTime<CFUUIDBytes const>(_CSTypeRef,CFUUIDBytes const *,unsigned long long,void({block_pointer})(_CSTypeRef))::{lambda(CSCppSymbolOwner const&)#1}>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFDLL;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v6 = *(a1 + 56);
  for (i = *(a1 + 64); v6 != i; v6 += 2)
  {
    if (a2 != 0x8000000000000001)
    {
      unload_timestamp_range = CSCppSymbolOwner::load_unload_timestamp_range(*v6);
      if (v5 - unload_timestamp_range >= v11)
      {
        continue;
      }
    }

    v12 = *v6;
    if (*a3 == *(*v6 + 2) && a3[1] == *(*v6 + 3))
    {
      v15 = *(a4 + 8);
      v14 = *(a4 + 16);
      if (v15 >= v14)
      {
        v17 = (v15 - *a4) >> 3;
        if ((v17 + 1) >> 61)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v18 = v14 - *a4;
        v19 = v18 >> 2;
        if (v18 >> 2 <= (v17 + 1))
        {
          v19 = v17 + 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a4, v20);
        }

        v21 = (8 * v17);
        *v21 = v12;
        v16 = 8 * v17 + 8;
        v22 = *(a4 + 8) - *a4;
        v23 = v21 - v22;
        memcpy(v21 - v22, *a4, v22);
        v24 = *a4;
        *a4 = v23;
        *(a4 + 8) = v16;
        *(a4 + 16) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v15 = v12;
        v16 = (v15 + 1);
      }

      *(a4 + 8) = v16;
    }
  }
}

void sub_1D978AEEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *find_core_file_dumped_region_containing_location(uint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == *a1)
  {
    return 0;
  }

  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  do
  {
    v5 = v4 >> 1;
    v6 = &v2[5 * (v4 >> 1)];
    v7 = v6[3] + *v6;
    v8 = v6 + 5;
    v4 += ~(v4 >> 1);
    if (v7 <= a2)
    {
      v2 = v8;
    }

    else
    {
      v4 = v5;
    }
  }

  while (v4);
  if (v2 == v3)
  {
    return 0;
  }

  if (a2 - *v2 >= v2[3])
  {
    return 0;
  }

  return v2;
}

void CSCppCoreFileMetadata::~CSCppCoreFileMetadata(CSCppCoreFileMetadata *this)
{
  *this = &unk_1F5507B68;
  close(*(this + 2));
  v2 = *(this + 6);
  if (v2 != (this + 56))
  {
    v3 = MEMORY[0x1E69E9A60];
    do
    {
      mach_port_deallocate(*v3, *(v2 + 8));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (this + 56));
  }

  if (*(this + 112) == 1)
  {
    v8 = (this + 88);
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(this + 48, *(this + 7));
  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }
}

uint64_t CSCppCoreFileMetadata::thread_get_state(CSCppCoreFileMetadata *this, unsigned int a2, int a3, unsigned int *a4, unsigned int *a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = *(this + 7);
  if (!v5)
  {
    goto LABEL_9;
  }

  v9 = this + 56;
  do
  {
    v10 = *(v5 + 8);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v5;
    }

    v5 = *&v5[8 * v12];
  }

  while (v5);
  if (v9 == this + 56 || *(v9 + 8) > a2)
  {
    goto LABEL_9;
  }

  v16 = *(this + 5);
  v19 = *(v9 + 7);
  v18 = (v9 + 56);
  v17 = v19;
  if (v19)
  {
    v20 = v18;
    do
    {
      if (v17[8] >= a3)
      {
        v20 = v17;
      }

      v17 = *&v17[2 * (v17[8] < a3)];
    }

    while (v17);
    if (v20 != v18 && v20[8] <= a3)
    {
      v51 = 0uLL;
      v52 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v51, *(v20 + 5), *(v20 + 6), *(v20 + 6) - *(v20 + 5));
      goto LABEL_61;
    }
  }

  if (!CSArchitectureIsArm64(*(this + 5)) && !CSArchitectureMatchesArchitecture(v16, 0x200000CuLL))
  {
    if (CSArchitectureIsX86_64(v16))
    {
      if (a3 == 7)
      {
        v38 = *v18;
        if (!*v18)
        {
          goto LABEL_9;
        }

        v39 = v18;
        do
        {
          if (v38[8] >= 4)
          {
            v39 = v38;
          }

          v38 = *&v38[2 * (v38[8] < 4)];
        }

        while (v38);
        if (v39 == v18)
        {
          goto LABEL_9;
        }

        if (v39[8] > 4)
        {
          goto LABEL_9;
        }

        v41 = v39 + 10;
        v40 = *(v39 + 5);
        if (v41[1] - v40 != 168)
        {
          goto LABEL_9;
        }

        v42 = 0;
        *v56 = 0x2A00000004;
        v43 = *v40;
        v44 = v40[1];
        *&v56[40] = v40[2];
        *&v56[24] = v44;
        *&v56[8] = v43;
        v45 = v40[3];
        v46 = v40[4];
        v47 = v40[5];
        *&v56[104] = v40[6];
        *&v56[88] = v47;
        *&v56[72] = v46;
        *&v56[56] = v45;
        v48 = v40[7];
        v49 = v40[8];
        v50 = v40[9];
        *&v56[168] = *(v40 + 20);
        *&v56[152] = v50;
        *&v56[136] = v49;
        *&v56[120] = v48;
        v54 = 0uLL;
        v55 = 0;
        do
        {
          std::vector<unsigned char>::push_back[abi:ne200100](&v54, &v56[v42++]);
        }

        while (v42 != 176);
        goto LABEL_44;
      }

      if (a3 == 4)
      {
        v31 = *v18;
        if (*v18)
        {
          v32 = v18;
          do
          {
            if (v31[8] >= 7)
            {
              v32 = v31;
            }

            v31 = *&v31[2 * (v31[8] < 7)];
          }

          while (v31);
          if (v32 != v18 && v32[8] <= 7)
          {
            v35 = v32 + 10;
            v34 = *(v32 + 5);
            v33 = v35[1];
            if (v33 - v34 == 176 && *v34 == 4 && v33 - (v34 + 2) == 168)
            {
              memset(v56, 0, 24);
              std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v56, (v34 + 2), v33, 168);
              goto LABEL_33;
            }
          }
        }
      }
    }

LABEL_9:
    v13 = 4;
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v27 = *v18;
    if (!*v18)
    {
      goto LABEL_9;
    }

    v28 = v18;
    do
    {
      if (v27[8] >= 6)
      {
        v28 = v27;
      }

      v27 = *&v27[2 * (v27[8] < 6)];
    }

    while (v27);
    if (v28 == v18)
    {
      goto LABEL_9;
    }

    if (v28[8] > 6)
    {
      goto LABEL_9;
    }

    v29 = *(v28 + 5);
    if (*(v28 + 6) - v29 != 272)
    {
      goto LABEL_9;
    }

    *v56 = 0x4400000006;
    memcpy(&v56[8], v29, 0x110uLL);
    v30 = 0;
    v54 = 0uLL;
    v55 = 0;
    do
    {
      std::vector<unsigned char>::push_back[abi:ne200100](&v54, &v56[v30++]);
    }

    while (v30 != 280);
LABEL_44:
    v51 = v54;
    v26 = v55;
    goto LABEL_45;
  }

  if (a3 != 6)
  {
    goto LABEL_9;
  }

  v21 = *v18;
  if (!*v18)
  {
    goto LABEL_9;
  }

  v22 = v18;
  do
  {
    if (v21[8] >= 1)
    {
      v22 = v21;
    }

    v21 = *&v21[2 * (v21[8] < 1)];
  }

  while (v21);
  if (v22 == v18)
  {
    goto LABEL_9;
  }

  if (v22[8] > 1)
  {
    goto LABEL_9;
  }

  v25 = v22 + 10;
  v24 = *(v22 + 5);
  v23 = v25[1];
  if (v23 - v24 != 280 || *v24 != 6 || v23 - (v24 + 2) != 272)
  {
    goto LABEL_9;
  }

  memset(v56, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v56, (v24 + 2), v23, 272);
LABEL_33:
  v51 = *v56;
  v26 = *&v56[16];
LABEL_45:
  v52 = v26;
LABEL_61:
  v53 = 1;
  v36 = v51;
  v37 = *(&v51 + 1) - v51;
  if (((*(&v51 + 1) - v51) & 3) != 0)
  {
    v13 = 5;
  }

  else if (v37 <= 4 * *a5)
  {
    memcpy(a4, v51, *(&v51 + 1) - v51);
    v13 = 0;
    *a5 = v37 >> 2;
  }

  else
  {
    v13 = 4;
  }

  if (v36)
  {
    *(&v51 + 1) = v36;
    operator delete(v36);
  }

LABEL_10:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1D978B4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppCoreFileMetadata::task_threads(CSCppCoreFileMetadata *this, unsigned int **a2, unsigned int *a3)
{
  v3 = *(this + 8);
  if (!v3)
  {
    return 4;
  }

  address = 0;
  v7 = MEMORY[0x1E69E9A60];
  v8 = mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, 4 * v3, 1);
  if (!v8)
  {
    v9 = address;
    v10 = *(this + 6);
    if (v10 != (this + 56))
    {
      do
      {
        v9[*(v10 + 10)] = *(v10 + 8);
        v11 = *(v10 + 1);
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
            v12 = *(v10 + 2);
            v13 = *v12 == v10;
            v10 = v12;
          }

          while (!v13);
        }

        v10 = v12;
      }

      while (v12 != (this + 56));
    }

    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = mach_port_mod_refs(*v7, v9[v14], 4u, 1);
      if (v16)
      {
        break;
      }

      v14 = ++v15;
      if (v3 <= v15)
      {
        v8 = 0;
        *a2 = v9;
        *a3 = v3;
        return v8;
      }
    }

    v8 = v16;
    if (v15)
    {
      v17 = v15;
      do
      {
        v18 = *v9++;
        mach_port_deallocate(*v7, v18);
        --v17;
      }

      while (v17);
    }

    mach_vm_deallocate(*v7, address, 4 * v3);
  }

  return v8;
}

void parse_task_crashinfo_note(char *a1@<X0>, const note_command *a2@<X1>, uint64_t a3@<X8>)
{
  size = a2->size;
  v7 = CSCppFileMemory::CSCppFileMemory(v113, a1, a2->offset);
  v8 = CSCppFileMemory::bytes_at(v7, a2->offset, a2->size);
  v10 = v8;
  if (!v8 || v9 <= 0x28B || *v8 != 2)
  {
    *a3 = 0;
    *(a3 + 440) = 0;
    goto LABEL_25;
  }

  LOBYTE(v110) = 0;
  v112 = 0;
  v11 = *(v8 + 44);
  if (v11 != -1)
  {
    CSCppFileMemory::CSCppFileMemory(&v69, a1, *(v8 + 44));
    read_path_from_offset_in_cpp_memory(&v69, v11, &__p);
    CSCppFileMemory::~CSCppFileMemory(&v69);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&v110, &__p);
    if (v109 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  v109 = 0;
  v12 = *(v10 + 52);
  if (v12 != -1)
  {
    CSCppFileMemory::CSCppFileMemory(&v69, a1, *(v10 + 52));
    read_path_from_offset_in_cpp_memory(&v69, v12, &v106);
    CSCppFileMemory::~CSCppFileMemory(&v69);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&__p, &v106);
    if (v107 == 1 && SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }
  }

  v106.__r_.__value_.__s.__data_[0] = 0;
  v107 = 0;
  v13 = *(v10 + 60);
  if (v13 != -1)
  {
    CSCppFileMemory::CSCppFileMemory(&v69, a1, *(v10 + 60));
    read_path_from_offset_in_cpp_memory(&v69, v13, &v104);
    CSCppFileMemory::~CSCppFileMemory(&v69);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&v106, &v104);
    if (v105 == 1 && SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }
  }

  v104.__r_.__value_.__s.__data_[0] = 0;
  v105 = 0;
  v14 = *(v10 + 68);
  if (v14 != -1)
  {
    CSCppFileMemory::CSCppFileMemory(&v69, a1, *(v10 + 68));
    read_path_from_offset_in_cpp_memory(&v69, v14, &__src);
    CSCppFileMemory::~CSCppFileMemory(&v69);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&v104, &__src);
    if (v103 == 1 && SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  __src.__r_.__value_.__s.__data_[0] = 0;
  v103 = 0;
  v15 = *(v10 + 196);
  if (!v15 || (v16 = *(v10 + 188), v16 == -1))
  {
LABEL_46:
    v99.n128_u8[0] = 0;
    v101 = 0;
    v32 = *(v10 + 212);
    if (v32)
    {
      v33 = *(v10 + 204);
      if (v33 != -1)
      {
        if (!is_mul_ok(v32, 0x38uLL))
        {
          *a3 = 0;
          *(a3 + 440) = 0;
LABEL_98:
          if (v101 == 1 && v99.n128_u64[0])
          {
            v99.n128_u64[1] = v99.n128_u64[0];
            operator delete(v99.n128_u64[0]);
          }

          if ((v103 & 1) != 0 && __src.__r_.__value_.__r.__words[0])
          {
            __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          goto LABEL_104;
        }

        v34 = 56 * v32;
        CSCppFileMemory::CSCppFileMemory(&v69, a1, *(v10 + 204), 56 * v32);
        v36 = CSCppFileMemory::bytes_at(&v69, v33, v34);
        if (v36 && v35 >= v34)
        {
          v97 = 0uLL;
          v98 = 0;
          std::optional<std::vector<unsigned long long>>::operator=[abi:ne200100]<std::vector<unsigned long long>,void>(&v99, &v97);
          if (v97.n128_u64[0])
          {
            v97.n128_u64[1] = v97.n128_u64[0];
            operator delete(v97.n128_u64[0]);
          }

          std::vector<CS_vm_object_query_data_t>::reserve(&v99, *(v10 + 212));
          v67 = a3;
          if (*(v10 + 212))
          {
            v37 = 0;
            v38 = v99.n128_u64[1];
            v39 = v36 + 24;
            v68 = v10;
            do
            {
              v41 = *(v39 - 24);
              v40 = *(v39 - 16);
              v42 = *(v39 - 8);
              v43 = *v39;
              v45 = *(v39 + 8);
              v44 = *(v39 + 16);
              v46 = *(v39 + 24) & 0x3F;
              if (v38 >= v100)
              {
                v47 = 0x6DB6DB6DB6DB6DB7 * ((v38 - v99.n128_u64[0]) >> 3);
                v48 = v47 + 1;
                if ((v47 + 1) > 0x492492492492492)
                {
                  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                }

                if (0xDB6DB6DB6DB6DB6ELL * ((v100 - v99.n128_u64[0]) >> 3) > v48)
                {
                  v48 = 0xDB6DB6DB6DB6DB6ELL * ((v100 - v99.n128_u64[0]) >> 3);
                }

                if ((0x6DB6DB6DB6DB6DB7 * ((v100 - v99.n128_u64[0]) >> 3)) >= 0x249249249249249)
                {
                  v49 = 0x492492492492492;
                }

                else
                {
                  v49 = v48;
                }

                if (v49)
                {
                  std::allocator<CS_vm_object_query_data_t>::allocate_at_least[abi:ne200100](&v99, v49);
                }

                v50 = 56 * v47;
                *v50 = v41;
                *(v50 + 8) = v40;
                *(v50 + 16) = v42;
                *(v50 + 24) = v43;
                *(v50 + 32) = v45;
                *(v50 + 40) = v44;
                *(v50 + 48) = v46;
                *(v50 + 49) = 0;
                *(v50 + 52) = 0;
                v38 = 56 * v47 + 56;
                v51 = (v50 - (v99.n128_u64[1] - v99.n128_u64[0]));
                memcpy(v51, v99.n128_u64[0], v99.n128_u64[1] - v99.n128_u64[0]);
                v52 = v99.n128_u64[0];
                v99.n128_u64[0] = v51;
                v99.n128_u64[1] = v38;
                v100 = 0;
                if (v52)
                {
                  operator delete(v52);
                }
              }

              else
              {
                *v38 = v41;
                *(v38 + 8) = v40;
                *(v38 + 16) = v42;
                *(v38 + 24) = v43;
                *(v38 + 32) = v45;
                *(v38 + 40) = v44;
                *(v38 + 48) = v46;
                *(v38 + 49) = 0;
                *(v38 + 52) = 0;
                v38 += 56;
              }

              v10 = v68;
              v39 += 56;
              v99.n128_u64[1] = v38;
              ++v37;
            }

            while (v37 < *(v68 + 212));
          }

          CSCppFileMemory::~CSCppFileMemory(&v69);
          a3 = v67;
        }

        else
        {
          CSCppFileMemory::~CSCppFileMemory(&v69);
        }
      }
    }

    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v69, &v110);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v71, &__p);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v73, &v106);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v75, &v104);
    LODWORD(v77) = *(v10 + 104);
    *(&v77 + 1) = *(v10 + 156);
    v78 = *(v10 + 172);
    *v79 = *(v10 + 12);
    *&v79[8] = *(v10 + 28);
    *&v79[24] = *(v10 + 84);
    *&v79[32] = *(v10 + 92);
    *&v79[40] = *(v10 + 100);
    std::__optional_copy_base<std::vector<unsigned long long>,false>::__optional_copy_base[abi:ne200100](v80, &__src);
    std::__optional_copy_base<std::vector<CS_vm_object_query_data_t>,false>::__optional_copy_base[abi:ne200100](&v83, &v99);
    v53 = *(v10 + 500);
    v86 = *(v10 + 484);
    v87 = v53;
    v54 = *(v10 + 532);
    v88 = *(v10 + 516);
    v89 = v54;
    v55 = *(v10 + 564);
    v90 = *(v10 + 548);
    v91 = v55;
    v56 = *(v10 + 596);
    v92 = *(v10 + 580);
    v93 = v56;
    v57 = *(v10 + 628);
    v94 = *(v10 + 612);
    v95 = v57;
    v96 = *(v10 + 644);
    *a3 = 0;
    *(a3 + 24) = 0;
    if (v70 == 1)
    {
      *a3 = v69;
      memset(&v69, 0, sizeof(v69));
      *(a3 + 24) = 1;
    }

    *(a3 + 32) = 0;
    *(a3 + 56) = 0;
    if (v72 == 1)
    {
      *(a3 + 32) = v71;
      memset(&v71, 0, sizeof(v71));
      *(a3 + 56) = 1;
    }

    *(a3 + 64) = 0;
    *(a3 + 88) = 0;
    if (v74 == 1)
    {
      *(a3 + 64) = v73;
      memset(&v73, 0, sizeof(v73));
      *(a3 + 88) = 1;
    }

    *(a3 + 96) = 0;
    *(a3 + 120) = 0;
    v58 = v76;
    if (v76 == 1)
    {
      *(a3 + 96) = v75;
      memset(&v75, 0, sizeof(v75));
      *(a3 + 120) = 1;
    }

    v59 = *&v79[16];
    *(a3 + 160) = *v79;
    *(a3 + 176) = v59;
    *(a3 + 188) = *&v79[28];
    v60 = v78;
    *(a3 + 128) = v77;
    *(a3 + 144) = v60;
    *(a3 + 208) = 0;
    *(a3 + 232) = 0;
    v61 = v82;
    if (v82 == 1)
    {
      *(a3 + 208) = *v80;
      *(a3 + 224) = v81;
      v80[1] = 0;
      v81 = 0;
      v80[0] = 0;
      *(a3 + 232) = 1;
    }

    *(a3 + 240) = 0;
    *(a3 + 264) = 0;
    if (v85 == 1)
    {
      *(a3 + 240) = v83;
      *(a3 + 256) = v84;
      v84 = 0;
      v83 = 0uLL;
      *(a3 + 264) = 1;
    }

    v62 = v95;
    *(a3 + 400) = v94;
    *(a3 + 416) = v62;
    *(a3 + 432) = v96;
    v63 = v91;
    *(a3 + 336) = v90;
    *(a3 + 352) = v63;
    v64 = v93;
    *(a3 + 368) = v92;
    *(a3 + 384) = v64;
    v65 = v87;
    *(a3 + 272) = v86;
    *(a3 + 288) = v65;
    v66 = v89;
    *(a3 + 304) = v88;
    *(a3 + 320) = v66;
    *(a3 + 440) = 1;
    if (v61 && v80[0])
    {
      v80[1] = v80[0];
      operator delete(v80[0]);
      v58 = v76;
    }

    if ((v58 & 1) != 0 && SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (v74 == 1 && SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (v72 == 1 && SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (v70 == 1 && SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    goto LABEL_98;
  }

  if (!(v15 >> 61))
  {
    v17 = 8 * v15;
    CSCppFileMemory::CSCppFileMemory(&v69, a1, *(v10 + 188), 8 * v15);
    v19 = CSCppFileMemory::bytes_at(&v69, v16, v17);
    if (v19 && v18 >= v17)
    {
      v99 = 0uLL;
      v100 = 0;
      std::optional<std::vector<unsigned long long>>::operator=[abi:ne200100]<std::vector<unsigned long long>,void>(&__src, &v99);
      if (v99.n128_u64[0])
      {
        v99.n128_u64[1] = v99.n128_u64[0];
        operator delete(v99.n128_u64[0]);
      }

      std::vector<unsigned long long>::reserve(&__src, *(v10 + 196));
      if (*(v10 + 196))
      {
        v20 = 0;
        v21 = __src.__r_.__value_.__l.__size_;
        do
        {
          if (v21 >= __src.__r_.__value_.__r.__words[2])
          {
            v22 = __src.__r_.__value_.__r.__words[0];
            v23 = v21 - __src.__r_.__value_.__r.__words[0];
            v24 = (v21 - __src.__r_.__value_.__r.__words[0]) >> 3;
            v25 = v24 + 1;
            if ((v24 + 1) >> 61)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
            }

            v26 = __src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0];
            if ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 2 > v25)
            {
              v25 = v26 >> 2;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              v27 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              std::allocator<unsigned long>::allocate_at_least[abi:ne200100](&__src, v27);
            }

            v28 = v24;
            v29 = (8 * v24);
            v30 = &v29[-v28];
            *v29 = *(v19 + 8 * v20);
            v21 = v29 + 1;
            memcpy(v30, v22, v23);
            v31 = __src.__r_.__value_.__r.__words[0];
            __src.__r_.__value_.__r.__words[0] = v30;
            *&__src.__r_.__value_.__r.__words[1] = v21;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v21++ = *(v19 + 8 * v20);
          }

          __src.__r_.__value_.__l.__size_ = v21;
          ++v20;
        }

        while (v20 < *(v10 + 196));
      }
    }

    CSCppFileMemory::~CSCppFileMemory(&v69);
    goto LABEL_46;
  }

  *a3 = 0;
  *(a3 + 440) = 0;
LABEL_104:
  if (v105 == 1 && SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (v107 == 1 && SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v109 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v112 == 1 && v111 < 0)
  {
    operator delete(v110);
  }

LABEL_25:
  CSCppFileMemory::~CSCppFileMemory(v113);
}

void sub_1D978BFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a69 = __p;
    operator delete(__p);
  }

  CSCppFileMemory::~CSCppFileMemory(&a13);
  if (LOBYTE(STACK[0x208]) == 1 && a71)
  {
    a72 = a71;
    operator delete(a71);
  }

  if (LOBYTE(STACK[0x228]) == 1)
  {
    v74 = STACK[0x210];
    if (STACK[0x210])
    {
      STACK[0x218] = v74;
      operator delete(v74);
    }
  }

  if (LOBYTE(STACK[0x248]) == 1 && SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (LOBYTE(STACK[0x268]) == 1 && SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (LOBYTE(STACK[0x288]) == 1 && SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (*(v72 - 216) == 1 && *(v72 - 217) < 0)
  {
    operator delete(*(v72 - 240));
  }

  CSCppFileMemory::~CSCppFileMemory((v72 - 208));
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<unsigned long long>>::operator=[abi:ne200100]<std::vector<unsigned long long>,void>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<CSSymbolicatorAotImageInfo>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void *std::vector<unsigned long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<CS_vm_object_query_data_t>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      std::allocator<CS_vm_object_query_data_t>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_proc_name(CSCppCoreFileDarwinMetadata *this, const char **a2)
{
  if (*(this + 560) != 1)
  {
    return 4;
  }

  result = 4;
  if (a2 && (*(this + 144) & 1) != 0)
  {
    v4 = this + 120;
    if (*(this + 143) < 0)
    {
      v4 = *v4;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_proc_path(CSCppCoreFileDarwinMetadata *this, const char **a2)
{
  if (*(this + 560) != 1)
  {
    return 4;
  }

  result = 4;
  if (a2 && (*(this + 176) & 1) != 0)
  {
    v4 = this + 152;
    if (*(this + 175) < 0)
    {
      v4 = *v4;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_parent_proc_name(CSCppCoreFileDarwinMetadata *this, const char **a2)
{
  if (*(this + 560) != 1)
  {
    return 4;
  }

  result = 4;
  if (a2 && (*(this + 208) & 1) != 0)
  {
    v4 = this + 184;
    if (*(this + 207) < 0)
    {
      v4 = *v4;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_parent_proc_path(CSCppCoreFileDarwinMetadata *this, const char **a2)
{
  if (*(this + 560) != 1)
  {
    return 4;
  }

  result = 4;
  if (a2 && (*(this + 240) & 1) != 0)
  {
    v4 = this + 216;
    if (*(this + 239) < 0)
    {
      v4 = *v4;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_pid(CSCppCoreFileDarwinMetadata *this, int *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 70);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ppid(CSCppCoreFileDarwinMetadata *this, int *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 71);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_proc_starttime_sec(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 36);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_proc_starttime_usec(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 37);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_userstack(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 38);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_proc_flags(CSCppCoreFileDarwinMetadata *this, unsigned int *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 78);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_argslen(CSCppCoreFileDarwinMetadata *this, int *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 79);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_proc_argc(CSCppCoreFileDarwinMetadata *this, int *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 80);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_dirty_flags(CSCppCoreFileDarwinMetadata *this, int *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 62);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_dyld_all_image_infos_addr(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 32);
    }
  }

  return result;
}

__n128 CSCppCoreFileDarwinMetadata::get_dyld_shared_cache_range(uint64_t a1, __n128 *a2)
{
  if (a2)
  {
    if (*(a1 + 560))
    {
      result = *(a1 + 264);
      *a2 = result;
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_architecture(uint64_t a1, void *a2)
{
  result = 4;
  if (a2)
  {
    if (*(a1 + 560))
    {
      result = 0;
      *a2 = *(a1 + 40);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_internal(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 49);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_internal_compressed(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 50);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_iokit_mapped(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 51);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_alternate_accounting(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 52);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_alternate_compressed(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 53);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_purgable_nonvolatile(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 54);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_purgable_nonvolatile_compressed(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 55);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_page_table(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 56);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_phys_footprint(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 57);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_phys_footprint_lifetime_max(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 58);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_network_nonvolatile(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 59);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_network_nonvolatile_compressed(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 60);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_wired_mem(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 61);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_tagged_footprint(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 62);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_tagged_footprint_compressed(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 63);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_media_footprint(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 64);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_media_footprint_compressed(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 65);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_graphics_footprint(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 66);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_graphics_footprint_compressed(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 67);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_neural_footprint(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 68);
    }
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_ledger_neural_footprint_compressed(CSCppCoreFileDarwinMetadata *this, unint64_t *a2)
{
  result = 4;
  if (a2)
  {
    if (*(this + 560))
    {
      result = 0;
      *a2 = *(this + 69);
    }
  }

  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_proc_name(CSCppCoreFileExclavesMetadata *this, const char **a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = "";
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_proc_path(CSCppCoreFileExclavesMetadata *this, const char **a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = "";
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_parent_proc_name(CSCppCoreFileExclavesMetadata *this, const char **a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = "";
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_parent_proc_path(CSCppCoreFileExclavesMetadata *this, const char **a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = "";
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_pid(CSCppCoreFileExclavesMetadata *this, int *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  v4 = *(this + 32);
  if (v4 < 0)
  {
    v4 = -v4;
  }

  *a2 = v4;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_proc_flags(CSCppCoreFileExclavesMetadata *this, unsigned int *a2)
{
  result = 4;
  if (a2)
  {
    *a2 = 4;
    return 0;
  }

  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ppid(CSCppCoreFileExclavesMetadata *this, int *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_proc_starttime_sec(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_proc_starttime_usec(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_userstack(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_argslen(CSCppCoreFileExclavesMetadata *this, int *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_proc_argc(CSCppCoreFileExclavesMetadata *this, int *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_dirty_flags(CSCppCoreFileExclavesMetadata *this, int *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_dyld_all_image_infos_addr(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_architecture(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = *(a1 + 40);
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_internal(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_internal_compressed(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_iokit_mapped(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_alternate_accounting(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_alternate_compressed(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_purgable_nonvolatile(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_purgable_nonvolatile_compressed(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_page_table(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_phys_footprint(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_phys_footprint_lifetime_max(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_network_nonvolatile(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_network_nonvolatile_compressed(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_wired_mem(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_tagged_footprint(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_tagged_footprint_compressed(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_media_footprint(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_media_footprint_compressed(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_graphics_footprint(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_graphics_footprint_compressed(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_neural_footprint(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_ledger_neural_footprint_compressed(CSCppCoreFileExclavesMetadata *this, unint64_t *a2)
{
  if (!a2)
  {
    return 4;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::has_info_for_memory_analysis(CSCppCoreFileDarwinMetadata *this)
{
  if (*(this + 112) == 1)
  {
    v1 = *(this + 560);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void parse_vm_info_note(const char *a1@<X0>, const note_command *a2@<X1>, uint64_t a3@<X8>)
{
  size = a2->size;
  CSCppFileMemory::CSCppFileMemory(v63, a1, a2->offset);
  v7 = CSCppFileMemory::bytes_at(v63, a2->offset, a2->size);
  if (v7)
  {
    v9 = v8 >= 0x10;
  }

  else
  {
    v9 = 0;
  }

  if (v9 && *v7 == 2)
  {
    v10 = *(v7 + 8);
    offset = a2->offset;
    CSCppFileMemory::~CSCppFileMemory(v63);
    if (135 * v10 + 16 > a2->size)
    {
      *a3 = 0;
      *(a3 + 24) = 0;
      return;
    }

    CSCppFileMemory::CSCppFileMemory(v63, a1, offset + 16);
    v12 = CSCppFileMemory::bytes_at(v63, offset + 16, 135 * v10);
    v14 = v12;
    if (v12 && v13 >= 135 * v10)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      LOBYTE(v59) = 0;
      if (v10)
      {
        v16 = 0;
        v17 = v59;
        v18 = (v12 + 16);
        v19 = v10;
        do
        {
          v20 = v18;
          if (v16)
          {
            if (v17 >= *v18)
            {
              v20 = &v59;
            }

            else
            {
              v20 = v18;
            }
          }

          v17 = *v20;
          v59 = *v20;
          v18 = (v18 + 135);
          v16 = 1;
          --v19;
        }

        while (v19);
        v21 = v17 + 1;
        if (v17 != -1)
        {
          do
          {
            __p = 0;
            v57 = 0;
            v58 = 0;
            std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::push_back[abi:ne200100](&v60, &__p);
            if (__p)
            {
              v57 = __p;
              operator delete(__p);
            }

            --v21;
          }

          while (v21);
        }

        v22 = (v14 + 16);
        do
        {
          v23 = *v22;
          v22 = (v22 + 135);
          v24 = &v60[3 * v23];
          v26 = *(v24 + 8);
          v25 = *(v24 + 16);
          if (v26 >= v25)
          {
            v28 = (v26 - *v24) >> 3;
            if ((v28 + 1) >> 61)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
            }

            v29 = v25 - *v24;
            v30 = v29 >> 2;
            if (v29 >> 2 <= (v28 + 1))
            {
              v30 = v28 + 1;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v31 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            if (v31)
            {
              std::allocator<CSCppMMapSymbol const*>::allocate_at_least[abi:ne200100](v24, v31);
            }

            *(8 * v28) = v14;
            v27 = 8 * v28 + 8;
            v32 = *(v24 + 8) - *v24;
            v33 = (8 * v28 - v32);
            memcpy(v33, *v24, v32);
            v34 = *v24;
            *v24 = v33;
            *(v24 + 8) = v27;
            *(v24 + 16) = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v26 = v14;
            v27 = (v26 + 1);
          }

          *(v24 + 8) = v27;
          v14 += 135;
          --v10;
        }

        while (v10);
        v35 = v60;
        v36 = v61;
        if (v60 != v61)
        {
          do
          {
            v37 = *v35;
            v38 = v35[1];
            v35 += 3;
            v39 = 126 - 2 * __clz(v38 - v37);
            if (v38 == v37)
            {
              v40 = 0;
            }

            else
            {
              v40 = v39;
            }

            std::__introsort<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *,false>(v37, v38, v40, 1);
          }

          while (v35 != v36);
          v35 = v60;
          v36 = v61;
        }

        if (v35 == v36)
        {
LABEL_58:
          __p = 0;
          v57 = 0;
          v58 = 0;
          p_p = 0;
          v54 = 0;
          v55 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (v35 != v36)
          {
            *&v48 = *v35;
            std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&p_p, &v48);
            *&v48 = v35[1];
            std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v50, &v48);
            v35 += 3;
          }

          if (recursively_create_region_tree(&p_p, &v50, 0, &__p, 0, -1, a1))
          {
            v46 = 0;
            v47 = 0;
            v45 = 0;
            std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(&v45, __p, v57, 0x6DB6DB6DB6DB6DB7 * ((v57 - __p) >> 5));
            v48 = 0uLL;
            v49 = 0;
            std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(&v48, v45, v46, 0x6DB6DB6DB6DB6DB7 * ((v46 - v45) >> 5));
            *a3 = v48;
            *(a3 + 16) = v49;
            v49 = 0;
            v48 = 0uLL;
            *(a3 + 24) = 1;
            v64[0] = &v48;
            std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v64);
            v64[0] = &v45;
            std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v64);
          }

          else
          {
            *a3 = 0;
            *(a3 + 24) = 0;
          }

          if (v50)
          {
            v51 = v50;
            operator delete(v50);
          }

          if (p_p)
          {
            v54 = p_p;
            operator delete(p_p);
          }

          p_p = &__p;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&p_p);
          goto LABEL_69;
        }

        while (1)
        {
          v42 = *v35;
          v41 = v35[1];
          v43 = *v35 + 1;
          if ((v41 - *v35) >= 9 && v41 != v43)
          {
            break;
          }

LABEL_52:
          v35 += 3;
          if (v35 == v36)
          {
            v35 = v60;
            v36 = v61;
            goto LABEL_58;
          }
        }

        while (!CSRangeIntersectsRange(**v42, (*v42)[1], **v43, (*v43)[1]))
        {
          ++v42;
          if (++v43 == v35[1])
          {
            goto LABEL_52;
          }
        }
      }

      *a3 = 0;
      *(a3 + 24) = 0;
LABEL_69:
      __p = &v60;
      std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::__destroy_vector::operator()[abi:ne200100](&__p);
      goto LABEL_14;
    }
  }

  *a3 = 0;
  *(a3 + 24) = 0;
LABEL_14:
  CSCppFileMemory::~CSCppFileMemory(v63);
}

void sub_1D978D1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char **a20, char **a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v30 - 96) = &a10;
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100]((v30 - 96));
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  a20 = &a23;
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&a20);
  a23 = &a27;
  std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  CSCppFileMemory::~CSCppFileMemory(&a30);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
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
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::vector<std::reference_wrapper<portable_region_info_t const>>>::allocate_at_least[abi:ne200100](result, v10);
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
    result = std::__split_buffer<std::vector<std::reference_wrapper<portable_region_info_t const>>>::~__split_buffer(v16);
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

BOOL recursively_create_region_tree(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = *a1;
  v8 = a3;
  do
  {
    v9 = *(v28 + 8 * v8);
    v10 = *(*a2 + 8 * v8);
    v11 = v9 == v10;
    if (v9 == v10)
    {
      break;
    }

    v12 = *v9;
    v14 = **v9;
    v13 = (*v9)[1];
    if (!CSRangeContainsRange(a5, a6, v14, v13))
    {
      return v14 >= a5 && !CSRangeIntersectsRange(a5, a6, v14, v13);
    }

    v15 = v12[1];
    if (v15)
    {
      v16 = *v12;
      LOBYTE(v63) = 0;
      v65 = 0;
      v17 = *(v12 + 95);
      if (v17 != -1)
      {
        CSCppFileMemory::CSCppFileMemory(&v41, a7, v17);
        read_path_from_offset_in_cpp_memory(&v41, *(v12 + 95), &v61);
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&v63, &v61);
        if (v62 == 1 && SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        CSCppFileMemory::~CSCppFileMemory(&v41);
      }

      v60[0] = a7;
      v60[1] = v16;
      v60[2] = v15;
      cpp_region_info_for_portable_region(char const*,portable_region_info_t const&)::$_0::operator()(v60, *(v12 + 111), *(v12 + 103), &v61);
      cpp_region_info_for_portable_region(char const*,portable_region_info_t const&)::$_0::operator()(v60, *(v12 + 127), *(v12 + 119), v58);
      *&v41 = v16;
      *(&v41 + 1) = v15;
      v42 = *(v12 + 1);
      *v43 = v12[4];
      *&v43[8] = *(v12 + 5);
      *&v43[24] = v12[7];
      LOWORD(v44) = *(v12 + 32);
      BYTE2(v44) = *(v12 + 66);
      *(&v44 + 3) = *(v12 + 67);
      *(&v44 + 1) = *(v12 + 69);
      LOWORD(v45) = *(v12 + 77);
      DWORD1(v45) = *(v12 + 79);
      *(&v45 + 1) = *(v12 + 83);
      v46 = *(v12 + 91);
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v47, &v63);
      std::__optional_copy_base<std::vector<unsigned short>,false>::__optional_copy_base[abi:ne200100](&v49, &v61);
      std::__optional_copy_base<std::vector<unsigned short>,false>::__optional_copy_base[abi:ne200100](&__p, v58);
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v29[4] = v44;
      v29[5] = v45;
      v30 = v46;
      v29[0] = v41;
      v29[1] = v42;
      v29[2] = *v43;
      v29[3] = *&v43[16];
      v31.__r_.__value_.__s.__data_[0] = 0;
      v32 = 0;
      if (v48 == 1)
      {
        v31 = v47;
        memset(&v47, 0, sizeof(v47));
        v32 = 1;
      }

      LOBYTE(v33) = 0;
      v35 = 0;
      if (v51 == 1)
      {
        v33 = v49;
        v34 = v50;
        v50 = 0;
        v49 = 0uLL;
        v35 = 1;
      }

      LOBYTE(v36) = 0;
      v38 = 0;
      if (v54 == 1)
      {
        v36 = __p;
        v37 = v53;
        v53 = 0;
        __p = 0uLL;
        v38 = 1;
      }

      memset(v39, 0, sizeof(v39));
      v56 = 0;
      v57 = 0;
      v55 = 0;
      v40 = 1;
      v66 = &v55;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v66);
      if (v54 == 1 && __p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (v51 == 1 && v49)
      {
        *(&v49 + 1) = v49;
        operator delete(v49);
      }

      if (v48 == 1 && SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (v59 == 1 && v58[0])
      {
        v58[1] = v58[0];
        operator delete(v58[0]);
      }

      if (v62 == 1 && v61.__r_.__value_.__r.__words[0])
      {
        v61.__r_.__value_.__l.__size_ = v61.__r_.__value_.__r.__words[0];
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (v65 == 1 && v64 < 0)
      {
        operator delete(v63);
      }

      if (v40 & 1) != 0 && ((v18 = a4[1], v18 >= a4[2]) ? (v19 = std::vector<CSCppCoreFileRegionInfo>::__emplace_back_slow_path<CSCppCoreFileRegionInfo const&>(a4, v29)) : (CSCppCoreFileRegionInfo::CSCppCoreFileRegionInfo(a4[1], v29), v19 = v18 + 224, a4[1] = v18 + 224), (a4[1] = v19, ((a1[1] - *a1) >> 3) - 1 <= v8) || (recursively_create_region_tree(a1, a2, a3 + 1, v19 - 24, v14, v13, a7)))
      {
        *(v28 + 8 * v8) += 8;
        v20 = 1;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
      LOBYTE(v29[0]) = 0;
      v40 = 0;
    }

    if (v40 == 1)
    {
      *&v41 = v39;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v41);
      if (v38 == 1 && v36)
      {
        *(&v36 + 1) = v36;
        operator delete(v36);
      }

      if (v35 == 1 && v33)
      {
        *(&v33 + 1) = v33;
        operator delete(v33);
      }

      if (v32 == 1 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }
  }

  while ((v20 & 1) != 0);
  return v11;
}

void sub_1D978D8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = v9;
  *(v11 + 8) = v10;
  std::optional<CSCppCoreFileRegionInfo>::~optional(va);
  _Unwind_Resume(a1);
}

char *CSCppCoreFileRegionsTree::recursively_search_for_region_at_specific_address(CSCppCoreFileRegionsTree *this, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  if (a4 - 1 == a3)
  {
    result = find_core_file_region_info_containing_or_after_location(a5 + 25, a2);
    if (a5[26] == result)
    {
      return 0;
    }
  }

  else
  {
    v7 = a5[25];
    v8 = a5[26];
    if (v8 == v7)
    {
      return 0;
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 5);
    do
    {
      v10 = v9 >> 1;
      v11 = (v7 + 224 * (v9 >> 1));
      v13 = *v11;
      v14 = v11[1];
      v12 = (v11 + 28);
      v9 += ~(v9 >> 1);
      if (v14 + v13 <= a2)
      {
        v7 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    if (v7 == v8 || a2 - *v7 >= *(v7 + 1))
    {
      return 0;
    }

    else
    {
      return CSCppCoreFileRegionsTree::recursively_search_for_region_at_specific_address(this, a2, a3 + 1, a4, v7);
    }
  }

  return result;
}