uint64_t FlatbufferSymbolOwnerData::symbol_for_address(FlatbufferSymbolOwnerData *this, CSCppSymbolOwner *a2, unint64_t a3)
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
  v6[2] = ___ZN25FlatbufferSymbolOwnerData18symbol_for_addressEP16CSCppSymbolOwnery_block_invoke;
  v6[3] = &unk_1E8583530;
  v6[4] = &v7;
  v6[5] = this;
  FlatbufferSymbolOwnerData::symbols_in_address_range(this, a2, a3, 1, v6);
  v3 = v8[5];
  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1D9707284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

BOOL ___ZN25FlatbufferSymbolOwnerData18symbol_for_addressEP16CSCppSymbolOwnery_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSIsNull(a2, a3);
  v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
  if (result)
  {
    v7 = 0;
  }

  v8 = (v7 - *v7);
  if (*v8 < 0x13u || (v9 = v8[9]) == 0 || (*(v7 + v9) & 0x10) == 0)
  {
    v10 = *(*(a1 + 32) + 8);
    *(v10 + 40) = a2;
    *(v10 + 48) = a3;
  }

  return result;
}

uint64_t FlatbufferSymbolOwnerData::source_infos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 - *v3);
  if (*v4 < 9u)
  {
    return 0;
  }

  v5 = v4[4];
  if (!v5)
  {
    return 0;
  }

  v6 = *(v3 + v5);
  v7 = (v3 + v5 + v6);
  v8 = (4 * *v7);
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  v38 = v7 + v8;
  v11 = v7 + 3;
  v12 = v3 + v6 + v5 + 12;
  do
  {
    v15 = v7[1];
    v14 = (v7 + 1);
    v13 = v15;
    v16 = &v14[v15];
    v17 = &v16[-*v16];
    v41 = v11;
    v42 = v14;
    v40 = v12;
    if (*v17 >= 0xBu)
    {
      v18 = *(v17 + 5);
      if (v18)
      {
        v19 = &v16[v18];
        v20 = *&v16[v18];
        v21 = &v19[v20];
        v22 = (4 * *&v19[v20]);
        if (v22)
        {
          v23 = &v21[v22];
          v24 = v11 + v13 + v18 + v20;
          v25 = v12 + v13 + v20 + v18;
          v39 = &v21[v22];
          do
          {
            v27 = *(v21 + 1);
            v21 += 4;
            v26 = v27;
            v28 = &v21[v27];
            v29 = &v28[-*v28];
            if (*v29 >= 0xDu && (v30 = *(v29 + 6)) != 0)
            {
              v31 = &v28[v30];
              v32 = *&v28[v30];
              v33 = *&v31[v32];
              v34 = 4 * v33;
              if (v34)
              {
                v35 = &v24[v26 + v30 + v32];
                v36 = (v25 + v26 + v32 + v30);
                do
                {
                  if (a3)
                  {
                    (*(a3 + 16))(a3, a2 | 6, &v35[*v36]);
                  }

                  v35 += 4;
                  ++v36;
                  v34 -= 4;
                }

                while (v34);
                v23 = v39;
              }
            }

            else
            {
              v33 = 0;
            }

            v10 += v33;
            v24 += 4;
            v25 += 4;
          }

          while (v21 != v23);
        }
      }
    }

    v11 = v41 + 1;
    v12 = v40 + 4;
    v7 = v42;
  }

  while (v42 != v38);
  return v10;
}

uint64_t FlatbufferSymbolOwnerData::source_infos_in_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == -1)
  {
    return 0;
  }

  v5 = a1;
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v6 = (a1 + 136);
  if (v7 == v8)
  {
    return 0;
  }

  v11 = 0;
  v12 = a4 + a3;
  do
  {
    v13 = *v7;
    if (*v7 < v12)
    {
      v14 = v7[1] + v13;
      if (a3 < v14)
      {
        v15 = v13 <= a3 ? a3 : *v7;
        v16 = v12 >= v14 ? v7[1] + v13 : v12;
        v17 = v16 - v15;
        if (v16 != v15)
        {
          v44 = 0;
          if (TThreadsafeAddressRelocator<Pointer64>::relocate(v6, v15, &v44))
          {
            v37 = v44;
            v18 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::SymbolOwner,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Segment>,unsigned int> const* (FlatbufferSymbols::SymbolOwner::*)(void)const,FlatbufferSymbols::Segment const*>(v5, *(v5 + 88), FlatbufferSymbols::SymbolOwner::segments, 0, v44, v17);
            if (v18)
            {
              v19 = (v18 - *v18);
              if (*v19 >= 0xBu)
              {
                v20 = v19[5];
                if (v20)
                {
                  v33 = v6;
                  v21 = (v18 + v20 + *(v18 + v20));
                  v44 = v21 + 1;
                  v43 = (v21 + (4 * *v21) + 4);
                  FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>(&v44, &v43, v37, v17, &v40);
                  v23 = v40;
                  v22 = v41;
                  if (v40 != v41)
                  {
                    v35 = v17;
                    v36 = v5;
                    v34 = v41;
                    do
                    {
                      v24 = (v23 + *v23);
                      v25 = (v24 - *v24);
                      if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
                      {
                        v27 = (v24 + v26 + *(v24 + v26));
                        v43 = v27 + 1;
                        v42 = (v27 + (4 * *v27) + 4);
                        FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>>(&v43, &v42, v37, v17, &v44);
                        v28 = v44;
                        v29 = v45;
                        v38 = v45 - v44 + (v45 - v44 < 0 ? 3uLL : 0);
                        if (v45 != v44)
                        {
                          v30 = v44;
                          do
                          {
                            if (a5)
                            {
                              (*(a5 + 16))(a5, a2 | 6, v28 + *v30);
                            }

                            ++v30;
                            ++v28;
                          }

                          while (v30 != v29);
                        }

                        v31 = v38 >> 2;
                        v17 = v35;
                        v5 = v36;
                        v22 = v34;
                      }

                      else
                      {
                        v31 = 0;
                      }

                      v11 += v31;
                      ++v23;
                    }

                    while (v23 != v22);
                  }

                  v6 = v33;
                }
              }
            }
          }
        }
      }
    }

    v7 += 3;
  }

  while (v7 != v8);
  return v11;
}

_DWORD *FlatbufferSymbolOwnerData::source_info_for_address(FlatbufferSymbolOwnerData *this, unint64_t a2, unint64_t a3)
{
  v6 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::SymbolOwner,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Segment>,unsigned int> const* (FlatbufferSymbols::SymbolOwner::*)(void)const,FlatbufferSymbols::Segment const*>(this, *(this + 11), FlatbufferSymbols::SymbolOwner::segments, 0, a3, 1);
  v7 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Segment,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Symbol>,unsigned int> const* (FlatbufferSymbols::Segment::*)(void)const,FlatbufferSymbols::Symbol const*>(this, v6, FlatbufferSymbols::Segment::symbols, 0, a3, 1);
  v8 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Symbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::Symbol::*)(void)const,FlatbufferSymbols::InlineSymbol const*>(this, v7, FlatbufferSymbols::Symbol::inline_symbols, 0, a3, 1);
  if (v8)
  {
    v9 = (v8 - *v8);
    if (*v9 >= 0xDu)
    {
      v10 = v9[6];
      if (v10)
      {
        v11 = v8 + v10 + *(v8 + v10);
      }
    }
  }

  else
  {
    result = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Symbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,unsigned int> const* (FlatbufferSymbols::Symbol::*)(void)const,FlatbufferSymbols::SourceInfo const*>(this, v7, FlatbufferSymbols::Symbol::source_infos, 0, a3, 1);
    if (!result)
    {
      return result;
    }
  }

  return (a2 | 6);
}

uint64_t FlatbufferSymbolOwnerData::for_each_stack_frame_at_address(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v44 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 136), a3, &v44))
  {
    return 0;
  }

  v7 = v44;
  v8 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::SymbolOwner,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Segment>,unsigned int> const* (FlatbufferSymbols::SymbolOwner::*)(void)const,FlatbufferSymbols::Segment const*>(a1, *(a1 + 88), FlatbufferSymbols::SymbolOwner::segments, 0, v44, 1);
  v9 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Segment,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Symbol>,unsigned int> const* (FlatbufferSymbols::Segment::*)(void)const,FlatbufferSymbols::Symbol const*>(a1, v8, FlatbufferSymbols::Segment::symbols, 0, v7, 1);
  k = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = (v9 - *v9);
    if (*v12 >= 0x13u)
    {
      v13 = v12[9];
      if (v13)
      {
        if ((*(v9 + v13) & 0x10) != 0)
        {
          v14 = (v8 - *v8);
          if (*v14 >= 0xBu)
          {
            v15 = v14[5];
            if (v15)
            {
              v16 = (v8 + v15 + *(v8 + v15));
              v43 = v16 + 1;
              v42 = (v16 + (4 * *v16) + 4);
              FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>(&v43, &v42, v7, 1, &v44);
              for (i = v44; i != v45; ++i)
              {
                v18 = *i;
                v19 = *(i + v18);
                if (*(i + v18 - v19) >= 0x13u)
                {
                  v20 = *(i + v18 - v19 + 18);
                  if (v20)
                  {
                    if ((*(i + v20 + v18) & 0x10) != 0)
                    {
                      continue;
                    }
                  }
                }

                k = i + v18;
              }
            }
          }
        }
      }
    }
  }

  if (!v8 || !k)
  {
    goto LABEL_33;
  }

  v21 = (k - *k);
  if (*v21 >= 0x13u)
  {
    v22 = v21[9];
    if (v22)
    {
      if ((*(k + v22 + 1) & 0x20) != 0)
      {
        v23 = (v8 - *v8);
        if (*v23 >= 0xBu)
        {
          v24 = v23[5];
          if (v24)
          {
            v25 = (v8 + v24 + *(v8 + v24));
            v43 = v25 + 1;
            v42 = (v25 + (4 * *v25) + 4);
            FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>(&v43, &v42, v7, 1, &v44);
            for (j = v44; j != v45; ++j)
            {
              v27 = *j;
              v28 = *(j + v27);
              if (*(j + v27 - v28) >= 0x13u)
              {
                v29 = *(j + v27 - v28 + 18);
                if (v29)
                {
                  if (*(j + v29 + v27) == 0x2000)
                  {
                    k = j + v27;
                  }
                }
              }
            }

LABEL_33:
            if (!k)
            {
              return k;
            }
          }
        }
      }
    }
  }

  v30 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Symbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,unsigned int> const* (FlatbufferSymbols::Symbol::*)(void)const,FlatbufferSymbols::SourceInfo const*>(a1, k, FlatbufferSymbols::Symbol::source_infos, 0, v7, 1);
  v31 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Symbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::Symbol::*)(void)const,FlatbufferSymbols::InlineSymbol const*>(a1, k, FlatbufferSymbols::Symbol::inline_symbols, 0, v7, 1);
  if (v31)
  {
    v32 = v31;
    v33 = (v31 - *v31);
    if (*v33 >= 0xDu && (v34 = v33[6]) != 0)
    {
      v35 = v31 + v34 + *(v31 + v34);
    }

    else
    {
      v35 = 0;
    }

    (*(a4 + 16))(a4, a2 | 5, k, a2 | 6, v35);
    v36 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::InlineSymbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::InlineSymbol::*)(void)const,FlatbufferSymbols::InlineSymbol const*>(a1, v32, FlatbufferSymbols::InlineSymbol::inline_symbols, 0, v7, 1);
    for (k = 2; v36; v36 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::InlineSymbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::InlineSymbol::*)(void)const,FlatbufferSymbols::InlineSymbol const*>(a1, v32, FlatbufferSymbols::InlineSymbol::inline_symbols, 0, v7, 1))
    {
      v37 = v32;
      v32 = v36;
      v38 = (v36 - *v36);
      if (*v38 >= 0xDu && (v39 = v38[6]) != 0)
      {
        v40 = v36 + v39 + *(v36 + v39);
      }

      else
      {
        v40 = 0;
      }

      (*(a4 + 16))(a4, a2 | 2, v37 | 1, a2 | 6, v40);
      ++k;
    }

    (*(a4 + 16))(a4, a2 | 2, v32 | 1, a2 | 6, v30);
  }

  else
  {
    if (v30)
    {
      (*(a4 + 16))(a4, a2 | 5, k, a2 | 6, v30);
    }

    else
    {
      (*(a4 + 16))(a4, a2 | 5, k, 0, 0);
    }

    return 1;
  }

  return k;
}

uint64_t FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6)
{
  if (CSIsNull(a3, a4) || (a3 & 7 | (8 * (a4 & 3))) != 0xA)
  {
    if (CSIsNull(a3, a4))
    {
      v14 = 0;
    }

    else
    {
      v14 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    return FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::Symbol const>(a1, a2, v14, a5, a6);
  }

  else
  {
    if (CSIsNull(a3, a4))
    {
      v12 = 0;
    }

    else
    {
      v12 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    return FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::InlineSymbol const>(a1, a2, v12, a5, a6);
  }
}

uint64_t FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::InlineSymbol const>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a3;
  v37 = 0;
  if (!a3)
  {
    return v5;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  *&v23 = a2 | 2;
  *(&v23 + 1) = a3 | 1;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](&v34, &v23);
  v10 = (v5 - *v5);
  if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
  {
    v12 = v5 + v11 + *(v5 + v11);
    *&v23 = a2 | 6;
    *(&v23 + 1) = v12;
    std::vector<_CSTypeRef>::push_back[abi:ne200100](&__p, &v23);
  }

  else
  {
    *&v23 = a2;
    *(&v23 + 1) = v5;
    std::vector<_CSTypeRef>::push_back[abi:ne200100](&__p, &v23);
  }

  if (a4)
  {
    v13 = (v5 - *v5);
    if (*v13 >= 5u && (v14 = v13[2]) != 0)
    {
      v15 = *(v5 + v14);
    }

    else
    {
      v15 = -1;
    }

    v29 = a1;
    v30 = v15;
    *&v23 = &v34;
    *(&v23 + 1) = &__p;
    v24 = &v30;
    v25 = a4;
    v26 = a5;
    v27 = &v37;
    v28 = a2;
    FlatbufferSymbolOwnerData::forEachElementInFlatbufferTypeWithAccessor<FlatbufferSymbols::InlineSymbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::InlineSymbol::*)(void)const,unsigned long FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::InlineSymbol const>(CSCppSymbolOwner *,FlatbufferSymbols::InlineSymbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))::{lambda(FlatbufferSymbols::InlineSymbol const*)#1}>(a1, v5, FlatbufferSymbols::InlineSymbol::inline_symbols, 0, &v23);
    v5 = v37;
    goto LABEL_23;
  }

  v16 = (v5 - *v5);
  v17 = *v16;
  if (v17 < 5)
  {
    v19 = 0;
    v18 = -1;
  }

  else
  {
    if (v16[2])
    {
      v18 = *(v5 + v16[2]);
    }

    else
    {
      v18 = -1;
    }

    if (v17 >= 7 && (v20 = v16[3]) != 0)
    {
      v19 = *(v5 + v20);
    }

    else
    {
      v19 = 0;
    }
  }

  v21 = __p;
  v5 = 1;
  v37 = 1;
  if (a5)
  {
    (*(a5 + 16))(a5, v18, v19);
    v5 = 1;
LABEL_23:
    v21 = __p;
  }

  if (v21)
  {
    v32 = v21;
    operator delete(v21);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v5;
}

void sub_1D9707FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 80);
  if (v21)
  {
    *(v19 - 72) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::Symbol const>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a3;
  v34 = 0;
  if (!a3)
  {
    return v5;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  __p = 0;
  v29 = 0;
  v30 = 0;
  *&v20 = a2 | 5;
  *(&v20 + 1) = a3;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](&v31, &v20);
  *&v20 = a2;
  *(&v20 + 1) = v5;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](&__p, &v20);
  if (a4)
  {
    v10 = (v5 - *v5);
    if (*v10 >= 5u && (v11 = v10[2]) != 0)
    {
      v12 = *(v5 + v11);
    }

    else
    {
      v12 = -1;
    }

    v26 = a1;
    v27 = v12;
    *&v20 = &v31;
    *(&v20 + 1) = &__p;
    v21 = &v27;
    v22 = a4;
    v23 = a5;
    v24 = &v34;
    v25 = a2;
    FlatbufferSymbolOwnerData::forEachElementInFlatbufferTypeWithAccessor<FlatbufferSymbols::Symbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::Symbol::*)(void)const,unsigned long FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::Symbol const>(CSCppSymbolOwner *,FlatbufferSymbols::Symbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))::{lambda(FlatbufferSymbols::InlineSymbol const*)#1}>(a1, v5, FlatbufferSymbols::Symbol::inline_symbols, 0, &v20);
    v5 = v34;
    goto LABEL_19;
  }

  v13 = (v5 - *v5);
  v14 = *v13;
  if (v14 < 5)
  {
    v16 = 0;
    v15 = -1;
  }

  else
  {
    if (v13[2])
    {
      v15 = *(v5 + v13[2]);
    }

    else
    {
      v15 = -1;
    }

    if (v14 >= 7 && (v17 = v13[3]) != 0)
    {
      v16 = *(v5 + v17);
    }

    else
    {
      v16 = 0;
    }
  }

  v18 = __p;
  v5 = 1;
  v34 = 1;
  if (a5)
  {
    (*(a5 + 16))(a5, v15, v16);
    v5 = 1;
LABEL_19:
    v18 = __p;
  }

  if (v18)
  {
    v29 = v18;
    operator delete(v18);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return v5;
}

void sub_1D97081CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 80);
  if (v21)
  {
    *(v19 - 72) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FlatbufferSymbolOwnerData::for_each_child_symbol_with_parent_symbol(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (CSIsNull(a2, a3) || (a2 & 7 | (8 * (a3 & 3))) != 0xA)
  {
    if (CSIsNull(a2, a3))
    {
      v10 = 0;
    }

    else
    {
      v10 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
    }

    return FlatbufferSymbolOwnerData::forEachInlinedSymbolInSymbol<FlatbufferSymbols::Symbol,void({block_pointer})(FlatbufferSymbols::InlineSymbol const*)>(a1, v10, a4);
  }

  else
  {
    if (CSIsNull(a2, a3))
    {
      v8 = 0;
    }

    else
    {
      v8 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
    }

    return FlatbufferSymbolOwnerData::forEachInlinedSymbolInSymbol<FlatbufferSymbols::InlineSymbol,void({block_pointer})(FlatbufferSymbols::InlineSymbol const*)>(a1, v8, a4);
  }
}

uint64_t FlatbufferSymbolOwnerData::forEachInlinedSymbolInSymbol<FlatbufferSymbols::InlineSymbol,void({block_pointer})(FlatbufferSymbols::InlineSymbol const*)>(uint64_t a1, int *a2, uint64_t a3)
{
  if (a2 && (v3 = (a2 - *a2), *v3 >= 0xFu) && (v4 = v3[7]) != 0)
  {
    v5 = *(a2 + v4);
    v6 = *(a2 + v4 + v5);
    v7 = 4 * v6;
    if (v7)
    {
      v9 = a2 + v5 + v4 + 4;
      v10 = v9;
      do
      {
        v11 = *v10++;
        (*(a3 + 16))(a3, v9 + v11);
        v9 = v10;
        v7 -= 4;
      }

      while (v7);
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t FlatbufferSymbolOwnerData::forEachInlinedSymbolInSymbol<FlatbufferSymbols::Symbol,void({block_pointer})(FlatbufferSymbols::InlineSymbol const*)>(uint64_t a1, int *a2, uint64_t a3)
{
  if (a2 && (v3 = (a2 - *a2), *v3 >= 0x11u) && (v4 = v3[8]) != 0)
  {
    v5 = *(a2 + v4);
    v6 = *(a2 + v4 + v5);
    v7 = 4 * v6;
    if (v7)
    {
      v9 = a2 + v5 + v4 + 4;
      v10 = v9;
      do
      {
        v11 = *v10++;
        (*(a3 + 16))(a3, v9 + v11);
        v9 = v10;
        v7 -= 4;
      }

      while (v7);
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t FlatbufferSymbolOwnerData::for_each_deduplicated_variant_for_symbol(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Range = CSSymbolGetRange(a3, a4);
  if (Range == -1)
  {
    return 0;
  }

  v9 = a1[17];
  v10 = a1[18];
  if (v9 == v10)
  {
    return 0;
  }

  v11 = Range;
  v12 = 0;
  v13 = v8 + Range;
  do
  {
    v14 = *v9;
    if (*v9 < v13)
    {
      v15 = v9[1] + v14;
      if (v11 < v15)
      {
        v16 = v14 <= v11 ? v11 : *v9;
        v17 = v13 >= v15 ? v9[1] + v14 : v13;
        v18 = v17 - v16;
        if (v17 != v16)
        {
          v35 = 0;
          if (TThreadsafeAddressRelocator<Pointer64>::relocate(a1 + 17, v16, &v35))
          {
            v19 = v35;
            v20 = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::SymbolOwner,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Segment>,unsigned int> const* (FlatbufferSymbols::SymbolOwner::*)(void)const,FlatbufferSymbols::Segment const*>(a1, a1[11], FlatbufferSymbols::SymbolOwner::segments, 0, v35, v18);
            if (v20)
            {
              v21 = (v20 - *v20);
              if (*v21 >= 0xBu)
              {
                v22 = v21[5];
                if (v22)
                {
                  v23 = (v20 + v22 + *(v20 + v22));
                  v34 = v23 + 1;
                  v32 = a5;
                  v33 = (v23 + (4 * *v23) + 4);
                  FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>(&v34, &v33, v19, v18, &v35);
                  v24 = v35;
                  v25 = v36;
                  if (v35 != v36)
                  {
                    v26 = v35;
                    do
                    {
                      v27 = *v26;
                      v28 = *(v26 + v27);
                      if (*(v26 + v27 - v28) >= 0x13u)
                      {
                        v29 = *(v26 + v27 - v28 + 18);
                        if (v29)
                        {
                          v30 = *(v26 + v29 + v27);
                          if ((v30 & 0x2000) != 0 && v30 != 0x2000)
                          {
                            if (v32)
                            {
                              (*(v32 + 16))();
                            }

                            ++v12;
                          }
                        }
                      }

                      ++v26;
                      ++v24;
                    }

                    while (v26 != v25);
                  }

                  a5 = v32;
                }
              }
            }
          }
        }
      }
    }

    v9 += 3;
  }

  while (v9 != v10);
  return v12;
}

char *FlatbufferSymbolOwnerData::rawBytesForRangeWithoutFaulting(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v19 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 136), a3, &v19))
  {
    return 0;
  }

  v6 = v19;
  result = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::SymbolOwner,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Segment>,unsigned int> const* (FlatbufferSymbols::SymbolOwner::*)(void)const,FlatbufferSymbols::Segment const*>(a1, *(a1 + 88), FlatbufferSymbols::SymbolOwner::segments, 0, v19, a4);
  if (!result)
  {
    return result;
  }

  v8 = &result[-*result];
  if (*v8 >= 0xDu)
  {
    v9 = *(v8 + 6);
    if (*(v8 + 6))
    {
      v10 = *(v8 + 3);
      v11 = v10 ? *&result[v10] : -1;
      if (v6 >= v11)
      {
        v12 = &result[v9 + *&result[v9]];
        if (v6 + a4 <= v11 + *v12)
        {
          v16 = &v12[v6 - v11];
          return v16 + 4;
        }
      }
    }
  }

  result = FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Segment,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::Symbol>,unsigned int> const* (FlatbufferSymbols::Segment::*)(void)const,FlatbufferSymbols::Symbol const*>(a1, result, FlatbufferSymbols::Segment::symbols, 0, v6, a4);
  if (!result)
  {
    return result;
  }

  v13 = &result[-*result];
  if (*v13 >= 0xFu)
  {
    v14 = *(v13 + 7);
    if (*(v13 + 7))
    {
      v15 = *(v13 + 2) ? *&result[*(v13 + 2)] : -1;
      v17 = *(v13 + 3);
      v18 = v17 ? *&result[v17] : 0;
      if (v6 >= v15 && v6 + a4 <= v18 + v15)
      {
        v16 = &result[v14 + v6 - v15 + *&result[v14]];
        return v16 + 4;
      }
    }
  }

  return 0;
}

unint64_t FlatbufferSymbolOwnerData::rawBytesForRangeWithOnDemandFaulting(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 16));
  v8 = (a1 + 184);
  if (!*(a1 + 184))
  {
    operator new();
  }

  std::mutex::unlock((a1 + 16));
  section_descriptor_for_range = CSCppTextSectionDescriptorMap<Pointer64>::find_section_descriptor_for_range(*v8, a3, a4);
  if (!section_descriptor_for_range)
  {
    v10 = *v8;
    CSCppTextSectionDescriptorMap<Pointer64>::create_section_descriptor_for_range();
  }

  CSCppTextSectionDataDescriptor::get_text_section_for_range<Pointer64>(section_descriptor_for_range, a3, a4, a2, v13);
  if (a4 + a3 <= v13[0] + v13[1])
  {
    v11 = v13[2] + a3 - v13[0];
  }

  else
  {
    v11 = 0;
  }

  if (a3 >= v13[0])
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t CSCppTextSectionDescriptorMap<Pointer64>::find_section_descriptor_for_range(uint64_t a1, unint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 24));
  v6 = (a1 + 8);
  for (i = *(a1 + 8); i; i = i[a2 >= i[4]])
  {
    if (a2 < i[4])
    {
      v6 = i;
    }
  }

  if (v6 == *a1)
  {
    goto LABEL_12;
  }

  v8 = *v6;
  if (*v6)
  {
    do
    {
      v9 = v8;
      v8 = v8[1];
    }

    while (v8);
  }

  else
  {
    do
    {
      v9 = v6[2];
      v10 = *v9 == v6;
      v6 = v9;
    }

    while (v10);
  }

  v11 = v9[4];
  if (a2 < v11 || a3 + a2 > v9[5] + v11)
  {
LABEL_12:
    v12 = 0;
  }

  else
  {
    v12 = v9[6];
  }

  std::mutex::unlock((a1 + 24));
  return v12;
}

__n128 CSCppTextSectionDataDescriptor::get_text_section_for_range<Pointer64>@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  CSCppTextSectionDataDescriptor::get_text_section<Pointer64>(a1, a4, v10);
  if (*(a1 + 16))
  {
    if (*(a1 + 136) == 1)
    {
      CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a1, a2, a3, a5);
    }

    else
    {
      result = *a1;
      *a5 = *a1;
      *(a5 + 16) = *(a1 + 16);
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  return result;
}

void sub_1D9708AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<CSCppTextSectionDataDescriptor>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *FlatbufferSymbolOwnerData::raw_bytes_for_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = atomic_load((*(a2 + 8) + 40));
  result = FlatbufferSymbolOwnerData::rawBytesForRangeWithoutFaulting(a1, a2, a3, a4);
  if (!result && (v8 & 0x602) != 0x602)
  {

    return FlatbufferSymbolOwnerData::rawBytesForRangeWithOnDemandFaulting(a1, a2, a3, a4);
  }

  return result;
}

const char *FlatbufferSymbolOwnerData::demangledNameForSymbol(FlatbufferSymbolOwnerData *this, const FlatbufferSymbols::Symbol *a2)
{
  result = CSCppDeferredDemangler::demangledNameForSymbol((this + 192), a2);
  if (!v3)
  {
    return 0;
  }

  return result;
}

const char *FlatbufferSymbolOwnerData::demangledNameForSymbol(FlatbufferSymbolOwnerData *this, const FlatbufferSymbols::InlineSymbol *a2)
{
  result = CSCppDeferredDemangler::demangledNameForSymbol((this + 192), a2);
  if (!v3)
  {
    return 0;
  }

  return result;
}

std::string *CSCppSymbolOwnerData::get_description@<X0>(std::string *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if (v4)
  {
    this = std::string::append(a2, "kCSSymbolOwnerDataFaultedFromDisk", 0x21uLL);
    v15 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
    if ((v15 & 2) == 0)
    {
      v16 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
      if ((v16 & 4) == 0)
      {
        v17 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
        if ((v17 & 8) == 0)
        {
          v18 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
          if ((v18 & 0x10) == 0)
          {
            v19 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
            if ((v19 & 0x20) == 0)
            {
              v20 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
              if ((v20 & 0x40) == 0)
              {
                v21 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
                if ((v21 & 0x80) == 0)
                {
                  v22 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
                  if ((v22 & 0x100) == 0)
                  {
                    v23 = &v2->__r_.__value_.__r.__words[1] + 1;
                    v24 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
                    if ((v24 & 0x400) == 0)
                    {
                      goto LABEL_49;
                    }

LABEL_46:
                    std::string::append(a2, " | ", 3uLL);
                    goto LABEL_47;
                  }

LABEL_43:
                  std::string::append(a2, " | ", 3uLL);
                  goto LABEL_44;
                }

LABEL_40:
                std::string::append(a2, " | ", 3uLL);
                goto LABEL_41;
              }

LABEL_37:
              std::string::append(a2, " | ", 3uLL);
              goto LABEL_38;
            }

LABEL_34:
            std::string::append(a2, " | ", 3uLL);
            goto LABEL_35;
          }

LABEL_31:
          std::string::append(a2, " | ", 3uLL);
          goto LABEL_32;
        }

LABEL_28:
        std::string::append(a2, " | ", 3uLL);
        goto LABEL_29;
      }

LABEL_25:
      std::string::append(a2, " | ", 3uLL);
      goto LABEL_26;
    }

    std::string::append(a2, " | ", 3uLL);
LABEL_24:
    this = std::string::append(a2, "kCSSymbolOwnerDataFaultedFromTask", 0x21uLL);
    v25 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
    if ((v25 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v5 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if ((v5 & 2) != 0)
  {
    goto LABEL_24;
  }

  v6 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if ((v6 & 4) != 0)
  {
LABEL_26:
    this = std::string::append(a2, "kCSSymbolOwnerDataFaultedFromSelfDyldSharedCache", 0x30uLL);
LABEL_27:
    v26 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
    if ((v26 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v7 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if ((v7 & 8) != 0)
  {
LABEL_29:
    this = std::string::append(a2, "kCSSymbolOwnerDataFaultedFromDiskDyldSharedCache", 0x30uLL);
LABEL_30:
    v27 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
    if ((v27 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v8 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if ((v8 & 0x10) != 0)
  {
LABEL_32:
    this = std::string::append(a2, "kCSSymbolOwnerDataFoundDsym", 0x1BuLL);
LABEL_33:
    v28 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v9 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if ((v9 & 0x20) != 0)
  {
LABEL_35:
    this = std::string::append(a2, "kCSSymbolOwnerDataFoundBinaryNextToDsym", 0x27uLL);
LABEL_36:
    v29 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
    if ((v29 & 0x40) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v10 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if ((v10 & 0x40) != 0)
  {
LABEL_38:
    this = std::string::append(a2, "kCSSymbolOwnerDataFoundBinaryViaDsymPlist", 0x29uLL);
LABEL_39:
    v30 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v11 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if (v11 < 0)
  {
LABEL_41:
    this = std::string::append(a2, "kCSSymbolOwnerDataEmpty", 0x17uLL);
LABEL_42:
    v31 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
    if ((v31 & 0x100) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v12 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if ((v12 & 0x100) != 0)
  {
LABEL_44:
    this = std::string::append(a2, "KCSSymbolOwnerDataIsTextSegmentOnly", 0x23uLL);
LABEL_45:
    v32 = atomic_load(&v2->__r_.__value_.__r.__words[1] + 1);
    if ((v32 & 0x400) == 0)
    {
LABEL_48:
      v23 = &v2->__r_.__value_.__r.__words[1] + 1;
LABEL_49:
      v33 = atomic_load(v23);
      if ((v33 & 0x800) == 0)
      {
        return this;
      }

      std::string::append(a2, " | ", 3uLL);
      return std::string::append(a2, "kCSSymbolOwnerDataIsObjCGCSupported", 0x23uLL);
    }

    goto LABEL_46;
  }

  v13 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if ((v13 & 0x400) != 0)
  {
LABEL_47:
    this = std::string::append(a2, "kCSSymbolOwnerDataIsObjCRetainReleaseSupported", 0x2EuLL);
    goto LABEL_48;
  }

  v14 = atomic_load(&this->__r_.__value_.__r.__words[1] + 1);
  if ((v14 & 0x800) != 0)
  {
    return std::string::append(a2, "kCSSymbolOwnerDataIsObjCGCSupported", 0x23uLL);
  }

  return this;
}

void sub_1D9708F34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CSCppSegmentRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9708FB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CSCppSegmentRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<CSCppSegmentRange>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,false>(unint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  v167 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
LABEL_3:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 5;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        goto LABEL_110;
      }

      if (v15 == 2)
      {
        v81 = a2[-2].n128_u64[0];
        v74 = a2 - 2;
        if (v81 >= *v12)
        {
          goto LABEL_110;
        }

        goto LABEL_78;
      }

      goto LABEL_11;
    }

    switch(v15)
    {
      case 3:
        v71 = (v12 + 32);
        v72 = *(v12 + 32);
        v75 = a2[-2].n128_u64[0];
        v74 = a2 - 2;
        v73 = v75;
        if (v72 < *v12)
        {
          if (v73 < v72)
          {
LABEL_78:
            v133 = *v12;
            v161 = *(v12 + 16);
            v82 = v74[1];
            *v12 = *v74;
            *(v12 + 16) = v82;
            *v74 = v133;
            v74[1] = v161;
            goto LABEL_110;
          }

          v132 = *v12;
          v160 = *(v12 + 16);
          v76 = *(v12 + 48);
          *v12 = *v71;
          *(v12 + 16) = v76;
          *v71 = v132;
          *(v12 + 48) = v160;
          if (v74->n128_u64[0] < *(v12 + 32))
          {
            v78 = *v71;
            v77 = *(v12 + 48);
            v79 = v74[1];
            *v71 = *v74;
            *(v12 + 48) = v79;
            *v74 = v78;
            v74[1] = v77;
          }

          goto LABEL_110;
        }

        if (v73 >= v72)
        {
          goto LABEL_110;
        }

        v90 = *v71;
        v89 = *(v12 + 48);
        v91 = v74[1];
        *v71 = *v74;
        *(v12 + 48) = v91;
        *v74 = v90;
        v74[1] = v89;
LABEL_108:
        if (*(v12 + 32) < *v12)
        {
          v138 = *v12;
          v166 = *(v12 + 16);
          v112 = v71[1];
          *v12 = *v71;
          *(v12 + 16) = v112;
          *v71 = v138;
          v71[1] = v166;
        }

        goto LABEL_110;
      case 4:
        v71 = (v12 + 32);
        v83 = *(v12 + 32);
        v84 = (v12 + 64);
        v85 = *(v12 + 64);
        if (v83 >= *v12)
        {
          if (v85 < v83)
          {
            v93 = *v71;
            v92 = *(v12 + 48);
            v94 = *(v12 + 80);
            *v71 = *v84;
            *(v12 + 48) = v94;
            *v84 = v93;
            *(v12 + 80) = v92;
            if (*(v12 + 32) < *v12)
            {
              v135 = *v12;
              v163 = *(v12 + 16);
              v95 = *(v12 + 48);
              *v12 = *v71;
              *(v12 + 16) = v95;
              *v71 = v135;
              *(v12 + 48) = v163;
            }
          }
        }

        else if (v85 >= v83)
        {
          v137 = *v12;
          v165 = *(v12 + 16);
          v102 = *(v12 + 48);
          *v12 = *v71;
          *(v12 + 16) = v102;
          *v71 = v137;
          *(v12 + 48) = v165;
          if (v85 < *(v12 + 32))
          {
            v104 = *v71;
            v103 = *(v12 + 48);
            v105 = *(v12 + 80);
            *v71 = *v84;
            *(v12 + 48) = v105;
            *v84 = v104;
            *(v12 + 80) = v103;
          }
        }

        else
        {
          v134 = *v12;
          v162 = *(v12 + 16);
          v86 = *(v12 + 80);
          *v12 = *v84;
          *(v12 + 16) = v86;
          *v84 = v134;
          *(v12 + 80) = v162;
        }

        if (v9->n128_u64[0] >= v84->n128_u64[0])
        {
          goto LABEL_110;
        }

        v107 = *v84;
        v106 = *(v12 + 80);
        v108 = a2[-1];
        *v84 = *v9;
        *(v12 + 80) = v108;
        *v9 = v107;
        a2[-1] = v106;
        if (v84->n128_u64[0] >= v71->n128_u64[0])
        {
          goto LABEL_110;
        }

        v110 = *v71;
        v109 = *(v12 + 48);
        v111 = *(v12 + 80);
        *v71 = *v84;
        *(v12 + 48) = v111;
        *v84 = v110;
        *(v12 + 80) = v109;
        goto LABEL_108;
      case 5:
        v80 = *MEMORY[0x1E69E9840];

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,0>(v12, (v12 + 32), (v12 + 64), (v12 + 96), a2 - 2, a6);
        return;
    }

LABEL_11:
    if (v15 <= 23)
    {
      if (a5)
      {
        v87 = *MEMORY[0x1E69E9840];

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(v12, a2);
        return;
      }

      if (v12 != a2)
      {
        v96 = (v12 + 32);
        while (v96 != a2)
        {
          v97 = v96;
          v98 = *(a1 + 32);
          if (v98 < *a1)
          {
            v136 = *(a1 + 40);
            v164 = *(a1 + 56);
            v99 = v97;
            do
            {
              v100 = v99[-1];
              *v99 = v99[-2];
              v99[1] = v100;
              v101 = v99[-4].n128_u64[0];
              v99 -= 2;
            }

            while (v98 < v101);
            v99->n128_u64[0] = v98;
            v99[1].n128_u64[1] = v164;
            *(v99 + 8) = v136;
          }

          v96 = v97 + 2;
          a1 = v97;
        }
      }

LABEL_110:
      v113 = *MEMORY[0x1E69E9840];
      return;
    }

    if (v13 == 1)
    {
      break;
    }

    v16 = v12 + 32 * (v15 >> 1);
    v17 = v16;
    v18 = v9->n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = *v16;
      if (*v16 >= *v12)
      {
        if (v18 < v19)
        {
          v117 = *v16;
          v141 = *(v16 + 16);
          v23 = a2[-1];
          *v16 = *v9;
          *(v16 + 16) = v23;
          *v9 = v117;
          a2[-1] = v141;
          if (*v16 < *v12)
          {
            v118 = *v12;
            v142 = *(v12 + 16);
            v24 = *(v16 + 16);
            *v12 = *v16;
            *(v12 + 16) = v24;
            *v16 = v118;
            *(v16 + 16) = v142;
          }
        }
      }

      else
      {
        if (v18 < v19)
        {
          v115 = *v12;
          v139 = *(v12 + 16);
          v20 = a2[-1];
          *v12 = *v9;
          *(v12 + 16) = v20;
          goto LABEL_28;
        }

        v121 = *v12;
        v145 = *(v12 + 16);
        v27 = *(v16 + 16);
        *v12 = *v16;
        *(v12 + 16) = v27;
        *v16 = v121;
        *(v16 + 16) = v145;
        if (v9->n128_u64[0] < *v16)
        {
          v115 = *v16;
          v139 = *(v16 + 16);
          v28 = a2[-1];
          *v16 = *v9;
          *(v16 + 16) = v28;
LABEL_28:
          *v9 = v115;
          a2[-1] = v139;
        }
      }

      v29 = (v12 + 32);
      v30 = (v16 - 32);
      v31 = *(v16 - 32);
      v32 = v10->n128_u64[0];
      if (v31 >= *(v12 + 32))
      {
        if (v32 < v31)
        {
          v122 = *v30;
          v146 = *(v16 - 16);
          v36 = a2[-3];
          *v30 = *v10;
          *(v16 - 16) = v36;
          *v10 = v122;
          a2[-3] = v146;
          if (v30->n128_u64[0] < v29->n128_u64[0])
          {
            v37 = *v29;
            v147 = *(v12 + 48);
            v38 = *(v16 - 16);
            *v29 = *v30;
            *(v12 + 48) = v38;
            *v30 = v37;
            *(v16 - 16) = v147;
          }
        }
      }

      else
      {
        if (v32 < v31)
        {
          v34 = *v29;
          v33 = *(v12 + 48);
          v35 = a2[-3];
          *v29 = *v10;
          *(v12 + 48) = v35;
          *v10 = v34;
          goto LABEL_40;
        }

        v41 = *v29;
        v149 = *(v12 + 48);
        v42 = *(v16 - 16);
        *v29 = *v30;
        *(v12 + 48) = v42;
        *v30 = v41;
        *(v16 - 16) = v149;
        if (v10->n128_u64[0] < v30->n128_u64[0])
        {
          v124 = *v30;
          v150 = *(v16 - 16);
          v43 = a2[-3];
          *v30 = *v10;
          *(v16 - 16) = v43;
          *v10 = v124;
          v33 = v150;
LABEL_40:
          a2[-3] = v33;
        }
      }

      v44 = (v12 + 64);
      v47 = *(v16 + 32);
      v45 = (v16 + 32);
      v46 = v47;
      v48 = v11->n128_u64[0];
      if (v47 >= *(v12 + 64))
      {
        if (v48 < v46)
        {
          v125 = *v45;
          v151 = v45[1];
          v52 = a2[-5];
          *v45 = *v11;
          v45[1] = v52;
          *v11 = v125;
          a2[-5] = v151;
          if (v45->n128_u64[0] < v44->n128_u64[0])
          {
            v53 = *v44;
            v152 = *(v12 + 80);
            v54 = v45[1];
            *v44 = *v45;
            *(v12 + 80) = v54;
            *v45 = v53;
            v45[1] = v152;
          }
        }
      }

      else
      {
        if (v48 < v46)
        {
          v50 = *v44;
          v49 = *(v12 + 80);
          v51 = a2[-5];
          *v44 = *v11;
          *(v12 + 80) = v51;
          *v11 = v50;
          goto LABEL_49;
        }

        v55 = *v44;
        v153 = *(v12 + 80);
        v56 = v45[1];
        *v44 = *v45;
        *(v12 + 80) = v56;
        *v45 = v55;
        v45[1] = v153;
        if (v11->n128_u64[0] < v45->n128_u64[0])
        {
          v126 = *v45;
          v154 = v45[1];
          v57 = a2[-5];
          *v45 = *v11;
          v45[1] = v57;
          *v11 = v126;
          v49 = v154;
LABEL_49:
          a2[-5] = v49;
        }
      }

      v58 = *v17;
      v59 = v45->n128_u64[0];
      if (*v17 >= v30->n128_u64[0])
      {
        if (v59 < v58)
        {
          v128 = *v17;
          v156 = *(v17 + 16);
          v61 = v45[1];
          *v17 = *v45;
          *(v17 + 16) = v61;
          *v45 = v128;
          v45[1] = v156;
          if (*v17 < v30->n128_u64[0])
          {
            v129 = *v30;
            v157 = v30[1];
            v62 = *(v17 + 16);
            *v30 = *v17;
            v30[1] = v62;
            *v17 = v129;
            *(v17 + 16) = v157;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v127 = *v30;
          v155 = v30[1];
          v60 = v45[1];
          *v30 = *v45;
          v30[1] = v60;
          goto LABEL_58;
        }

        v130 = *v30;
        v158 = v30[1];
        v63 = *(v17 + 16);
        *v30 = *v17;
        v30[1] = v63;
        *v17 = v130;
        *(v17 + 16) = v158;
        if (v45->n128_u64[0] < *v17)
        {
          v127 = *v17;
          v155 = *(v17 + 16);
          v64 = v45[1];
          *v17 = *v45;
          *(v17 + 16) = v64;
LABEL_58:
          *v45 = v127;
          v45[1] = v155;
        }
      }

      v131 = *v12;
      v159 = *(v12 + 16);
      v65 = *(v17 + 16);
      *v12 = *v17;
      *(v12 + 16) = v65;
      *v17 = v131;
      *(v17 + 16) = v159;
      goto LABEL_60;
    }

    v21 = *v12;
    if (*v12 >= *v17)
    {
      if (v18 < v21)
      {
        v119 = *v12;
        v143 = *(v12 + 16);
        v25 = a2[-1];
        *v12 = *v9;
        *(v12 + 16) = v25;
        *v9 = v119;
        a2[-1] = v143;
        if (*v12 < *v17)
        {
          v120 = *v17;
          v144 = *(v17 + 16);
          v26 = *(v12 + 16);
          *v17 = *v12;
          *(v17 + 16) = v26;
          *v12 = v120;
          *(v12 + 16) = v144;
        }
      }
    }

    else
    {
      if (v18 < v21)
      {
        v116 = *v17;
        v140 = *(v17 + 16);
        v22 = a2[-1];
        *v17 = *v9;
        *(v17 + 16) = v22;
LABEL_37:
        *v9 = v116;
        a2[-1] = v140;
        goto LABEL_60;
      }

      v123 = *v17;
      v148 = *(v17 + 16);
      v39 = *(v12 + 16);
      *v17 = *v12;
      *(v17 + 16) = v39;
      *v12 = v123;
      *(v12 + 16) = v148;
      if (v9->n128_u64[0] < *v12)
      {
        v116 = *v12;
        v140 = *(v12 + 16);
        v40 = a2[-1];
        *v12 = *v9;
        *(v12 + 16) = v40;
        goto LABEL_37;
      }
    }

LABEL_60:
    if ((a5 & 1) == 0 && *(v12 - 32) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSegmentRange *,std::__less<void,void> &>(v12, a2);
      goto LABEL_67;
    }

    v66 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSegmentRange *,std::__less<void,void> &>(v12, a2);
    if ((v68 & 1) == 0)
    {
      goto LABEL_65;
    }

    v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(v12, v66, v67);
    v12 = v66 + 32;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(v66 + 32, a2, v70))
    {
      a4 = -v14;
      a2 = v66;
      if (v69)
      {
        goto LABEL_110;
      }

      goto LABEL_2;
    }

    v13 = v14 + 1;
    if (!v69)
    {
LABEL_65:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,false>(a1, v66, a3, -v14, a5 & 1);
      v12 = v66 + 32;
LABEL_67:
      a5 = 0;
      a4 = -v14;
      goto LABEL_3;
    }
  }

  if (v12 == a2)
  {
    goto LABEL_110;
  }

  v88 = *MEMORY[0x1E69E9840];

  std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,CSCppSegmentRange *>(v12, a2, a2, a3);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = a3->n128_u64[0];
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      v10 = *a2;
      result = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      *a3 = v10;
      a3[1] = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v12 = *a1;
        result = a1[1];
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;
        *a2 = v12;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      result = a1[1];
      v9 = a3[1];
      *a1 = *a3;
      a1[1] = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = a1[1];
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    *a2 = v14;
    a2[1] = result;
    if (a3->n128_u64[0] < a2->n128_u64[0])
    {
      v8 = *a2;
      result = a2[1];
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[0] < a3->n128_u64[0])
  {
    v17 = *a3;
    result = a3[1];
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    *a4 = v17;
    a4[1] = result;
    if (a3->n128_u64[0] < a2->n128_u64[0])
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v21 = *a1;
        result = a1[1];
        v22 = a2[1];
        *a1 = *a2;
        a1[1] = v22;
        *a2 = v21;
        a2[1] = result;
      }
    }
  }

  if (a5->n128_u64[0] < a4->n128_u64[0])
  {
    v23 = *a4;
    result = a4[1];
    v24 = a5[1];
    *a4 = *a5;
    a4[1] = v24;
    *a5 = v23;
    a5[1] = result;
    if (a4->n128_u64[0] < a3->n128_u64[0])
    {
      v25 = *a3;
      result = a3[1];
      v26 = a4[1];
      *a3 = *a4;
      a3[1] = v26;
      *a4 = v25;
      a4[1] = result;
      if (a3->n128_u64[0] < a2->n128_u64[0])
      {
        v27 = *a2;
        result = a2[1];
        v28 = a3[1];
        *a2 = *a3;
        a2[1] = v28;
        *a3 = v27;
        a3[1] = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          v29 = *a1;
          result = a1[1];
          v30 = a2[1];
          *a1 = *a2;
          a1[1] = v30;
          *a2 = v29;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v2 = result + 32;
    if (result + 32 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 32);
        if (v6 < *v4)
        {
          v12 = *(v4 + 40);
          v13 = *(v4 + 56);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7 + 16);
            *(v8 + 32) = *(result + v7);
            *(v8 + 48) = v9;
            if (!v7)
            {
              break;
            }

            v7 -= 32;
            if (v6 >= *(v8 - 32))
            {
              v10 = result + v7 + 32;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          *(v10 + 8) = v12;
          *(v10 + 24) = v13;
        }

        v2 = v5 + 32;
        v3 += 32;
        v4 = v5;
      }

      while (v5 + 32 != a2);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSegmentRange *,std::__less<void,void> &>(unint64_t a1, _OWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 24);
  if (*a1 >= *(a2 - 4))
  {
    v5 = a1 + 32;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 32;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 32);
      v3 += 32;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 4);
      a2 -= 2;
    }

    while (v2 < v6);
  }

  while (v3 < a2)
  {
    v13 = *v3;
    v14 = *(v3 + 16);
    v7 = a2[1];
    *v3 = *a2;
    *(v3 + 16) = v7;
    *a2 = v13;
    a2[1] = v14;
    do
    {
      v8 = *(v3 + 32);
      v3 += 32;
    }

    while (v2 >= v8);
    do
    {
      v9 = *(a2 - 4);
      a2 -= 2;
    }

    while (v2 < v9);
  }

  if (v3 - 32 != a1)
  {
    v10 = *(v3 - 16);
    *a1 = *(v3 - 32);
    *(a1 + 16) = v10;
  }

  *(v3 - 32) = v2;
  *(v3 - 8) = v16;
  *(v3 - 24) = v15;
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSegmentRange *,std::__less<void,void> &>(uint64_t *a1, _OWORD *a2)
{
  v2 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v18 = *(a1 + 1);
  v19 = a1[3];
  do
  {
    v4 = a1[v2 + 4];
    v2 += 4;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 4)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 4);
      a2 -= 2;
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v6 = *(a2 - 4);
      a2 -= 2;
    }

    while (v6 >= v3);
  }

  v8 = &a1[v2];
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      v17 = *(v8 + 16);
      v11 = v9[1];
      *v8 = *v9;
      *(v8 + 16) = v11;
      *v9 = v10;
      v9[1] = v17;
      do
      {
        v12 = *(v8 + 32);
        v8 += 32;
      }

      while (v12 < v3);
      do
      {
        v13 = *(v9 - 4);
        v9 -= 2;
      }

      while (v13 >= v3);
    }

    while (v8 < v9);
  }

  if ((v8 - 32) != a1)
  {
    v14 = *(v8 - 16);
    *a1 = *(v8 - 32);
    *(a1 + 1) = v14;
  }

  *(v8 - 32) = v3;
  *(v8 - 8) = v19;
  *(v8 - 24) = v18;
  v15 = *MEMORY[0x1E69E9840];
  return v8 - 32;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 32);
      v7 = *(a1 + 32);
      v9 = *(a2 - 32);
      v4 = a2 - 32;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v45 = *a1;
          v44 = *(a1 + 16);
          v46 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v46;
          *v6 = v45;
          *(a1 + 48) = v44;
          if (*v4 >= *(a1 + 32))
          {
            goto LABEL_52;
          }

          v11 = *v6;
          v10 = *(a1 + 48);
          v47 = *(v4 + 16);
          *v6 = *v4;
          *(a1 + 48) = v47;
          goto LABEL_13;
        }

LABEL_12:
        v11 = *a1;
        v10 = *(a1 + 16);
        v12 = *(v4 + 16);
        *a1 = *v4;
        *(a1 + 16) = v12;
LABEL_13:
        *v4 = v11;
        *(v4 + 16) = v10;
        goto LABEL_52;
      }

      if (v8 >= v7)
      {
        goto LABEL_52;
      }

      v30 = *v6;
      v29 = *(a1 + 48);
      v31 = *(v4 + 16);
      *v6 = *v4;
      *(a1 + 48) = v31;
      *v4 = v30;
      *(v4 + 16) = v29;
LABEL_50:
      if (*(a1 + 32) < *a1)
      {
        v71 = *a1;
        v70 = *(a1 + 16);
        v72 = v6[1];
        *a1 = *v6;
        *(a1 + 16) = v72;
        *v6 = v71;
        v6[1] = v70;
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
LABEL_52:
      result = 1;
      goto LABEL_53;
    }

    v6 = (a1 + 32);
    v21 = *(a1 + 32);
    v22 = (a1 + 64);
    v23 = *(a1 + 64);
    v24 = (a2 - 32);
    v25 = *a1;
    if (v21 >= *a1)
    {
      if (v23 < v21)
      {
        v39 = *v6;
        v38 = *(a1 + 48);
        v40 = *(a1 + 80);
        *v6 = *v22;
        *(a1 + 48) = v40;
        *v22 = v39;
        *(a1 + 80) = v38;
        if (v6->n128_u64[0] < v25)
        {
          v42 = *a1;
          v41 = *(a1 + 16);
          v43 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v43;
          *v6 = v42;
          *(a1 + 48) = v41;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v21)
    {
      v61 = *a1;
      v60 = *(a1 + 16);
      v62 = *(a1 + 48);
      *a1 = *v6;
      *(a1 + 16) = v62;
      *v6 = v61;
      *(a1 + 48) = v60;
      if (v23 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v27 = *v6;
      v26 = *(a1 + 48);
      v63 = *(a1 + 80);
      *v6 = *v22;
      *(a1 + 48) = v63;
    }

    else
    {
      v27 = *a1;
      v26 = *(a1 + 16);
      v28 = *(a1 + 80);
      *a1 = *v22;
      *(a1 + 16) = v28;
    }

    *v22 = v27;
    *(a1 + 80) = v26;
LABEL_47:
    if (v24->n128_u64[0] >= v22->n128_u64[0])
    {
      goto LABEL_52;
    }

    v65 = *v22;
    v64 = *(a1 + 80);
    v66 = *(a2 - 16);
    *v22 = *v24;
    *(a1 + 80) = v66;
    *v24 = v65;
    *(a2 - 16) = v64;
    if (v22->n128_u64[0] >= v6->n128_u64[0])
    {
      goto LABEL_52;
    }

    v68 = *v6;
    v67 = *(a1 + 48);
    v69 = *(a1 + 80);
    *v6 = *v22;
    *(a1 + 48) = v69;
    *v22 = v68;
    *(a1 + 80) = v67;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    goto LABEL_52;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 32);
    v4 = a2 - 32;
    if (v5 >= *a1)
    {
      goto LABEL_52;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = (a1 + 64);
  v14 = *(a1 + 64);
  v15 = (a1 + 32);
  v16 = *(a1 + 32);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v33 = *v15;
      v32 = *(a1 + 48);
      v34 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v34;
      *v13 = v33;
      *(a1 + 80) = v32;
      if (v15->n128_u64[0] < v17)
      {
        v36 = *a1;
        v35 = *(a1 + 16);
        v37 = *(a1 + 48);
        *a1 = *v15;
        *(a1 + 16) = v37;
        *v15 = v36;
        *(a1 + 48) = v35;
      }
    }
  }

  else
  {
    if (v14 >= v16)
    {
      v49 = *a1;
      v48 = *(a1 + 16);
      v50 = *(a1 + 48);
      *a1 = *v15;
      *(a1 + 16) = v50;
      *v15 = v49;
      *(a1 + 48) = v48;
      if (v14 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v19 = *v15;
      v18 = *(a1 + 48);
      v51 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v51;
    }

    else
    {
      v19 = *a1;
      v18 = *(a1 + 16);
      v20 = *(a1 + 80);
      *a1 = *v13;
      *(a1 + 16) = v20;
    }

    *v13 = v19;
    *(a1 + 80) = v18;
  }

LABEL_33:
  v52 = a1 + 96;
  if (a1 + 96 == a2)
  {
    goto LABEL_52;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    v55 = *v52;
    if (*v52 < v13->n128_u64[0])
    {
      v75 = *(v52 + 8);
      v76 = *(v52 + 24);
      v56 = v53;
      while (1)
      {
        v57 = a1 + v56;
        v58 = *(a1 + v56 + 80);
        *(v57 + 96) = *(a1 + v56 + 64);
        *(v57 + 112) = v58;
        if (v56 == -64)
        {
          break;
        }

        v56 -= 32;
        if (v55 >= *(v57 + 32))
        {
          v59 = a1 + v56 + 96;
          goto LABEL_41;
        }
      }

      v59 = a1;
LABEL_41:
      *v59 = v55;
      *(v59 + 8) = v75;
      *(v59 + 24) = v76;
      if (++v54 == 8)
      {
        break;
      }
    }

    v13 = v52;
    v53 += 32;
    v52 += 32;
    if (v52 == a2)
    {
      goto LABEL_52;
    }
  }

  result = v52 + 32 == a2;
LABEL_53:
  v74 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,CSCppSegmentRange *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          v14 = *v12;
          v13 = v12[1];
          v15 = *(a1 + 16);
          *v12 = *a1;
          v12[1] = v15;
          *a1 = v14;
          *(a1 + 16) = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v16 = 0;
        v27 = *a1;
        v28 = *(a1 + 16);
        v17 = a1;
        do
        {
          v18 = &v17[2 * v16];
          v19 = v18 + 2;
          v20 = (2 * v16) | 1;
          v16 = 2 * v16 + 2;
          if (v16 >= v8)
          {
            v16 = v20;
          }

          else
          {
            v22 = *(v18 + 8);
            v21 = v18 + 4;
            if (*(v21 - 4) >= v22)
            {
              v16 = v20;
            }

            else
            {
              v19 = v21;
            }
          }

          v23 = v19[1];
          *v17 = *v19;
          v17[1] = v23;
          v17 = v19;
        }

        while (v16 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v19 == v6)
        {
          *v19 = v27;
          v19[1] = v28;
        }

        else
        {
          v24 = v6[1];
          *v19 = *v6;
          v19[1] = v24;
          *v6 = v27;
          v6[1] = v28;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(a1, (v19 + 2), a4, (v19 - a1 + 32) >> 5);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 5)
    {
      v6 = v4 >> 4;
      v7 = (v4 >> 4) + 1;
      v8 = (result + 32 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[4];
        if (*v8 <= v11)
        {
          v10 = v8[4];
        }

        if (*v8 < v11)
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        v19 = *(a4 + 1);
        v20 = a4[3];
        do
        {
          v13 = a4;
          a4 = v8;
          v14 = *(v8 + 1);
          *v13 = *v8;
          *(v13 + 1) = v14;
          if (v5 < v7)
          {
            break;
          }

          v15 = (2 * v7) | 1;
          v8 = (result + 32 * v15);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v16 = *v8;
            v7 = v15;
          }

          else
          {
            v16 = *v8;
            v17 = v8[4];
            if (*v8 <= v17)
            {
              v16 = v8[4];
            }

            if (*v8 >= v17)
            {
              v7 = v15;
            }

            else
            {
              v8 += 4;
            }
          }
        }

        while (v16 >= v12);
        *a4 = v12;
        a4[3] = v20;
        *(a4 + 1) = v19;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 32 * (v4 >> 1));
    v7 = (a2 - 32);
    v8 = *(a2 - 32);
    if (*v6 < v8)
    {
      v12 = *(a2 - 24);
      v13 = *(a2 - 8);
      do
      {
        v9 = v7;
        v7 = v6;
        v10 = v6[1];
        *v9 = *v6;
        v9[1] = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 32 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 8) = v12;
      *(v7 + 3) = v13;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void std::allocator<CSCppFlatbufferRelocation>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t std::unique_ptr<CSCppTextSectionDescriptorMap<Pointer64>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CSCppTextSectionDescriptorMap<Pointer64>::~CSCppTextSectionDescriptorMap(result);

    JUMPOUT(0x1DA736760);
  }

  return result;
}

uint64_t CSCppTextSectionDescriptorMap<Pointer64>::~CSCppTextSectionDescriptorMap(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v4 = v3[6];
      if (v4)
      {
        std::mutex::~mutex((v4 + 144));
        v9 = (v4 + 88);
        std::vector<std::unique_ptr<CSCppMemory>>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v4 + 79) < 0)
        {
          operator delete(*(v4 + 56));
        }

        std::__tree<TRange<Pointer64>>::destroy(v4 + 24, *(v4 + 32));
        MEMORY[0x1DA736760](v4, 0x1032C40C9A27EF9);
      }

      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  std::mutex::~mutex((a1 + 24));
  std::__tree<TRange<Pointer64>>::destroy(a1, *(a1 + 8));
  return a1;
}

void std::vector<std::unique_ptr<CSCppMemory>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<CSCppMemory>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<CSCppMemory>>::clear[abi:ne200100](void *result)
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

unsigned int **FlatbufferSymbolOwnerData::findMatchingEntryForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>>@<X0>(unsigned int **a1@<X1>, unsigned int **a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unsigned int **a5@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v20 = a3;
  v22 = v11;
  v23 = v10;
  result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>(&v23, &v22, &v20, &v21);
  if (v21 == *a1)
  {
    goto LABEL_13;
  }

  v13 = v21 - 1;
  v14 = (v21 + *(v21 - 1) - 4);
  v15 = (v14 - *v14);
  v16 = *v15;
  if (v16 < 7)
  {
    v18 = 0;
    v17 = -1;
  }

  else
  {
    v17 = v15[3] ? *(v14 + v15[3]) : -1;
    if (v16 >= 9 && (v19 = v15[4]) != 0)
    {
      v18 = *(v14 + v19);
    }

    else
    {
      v18 = 0;
    }
  }

  if (a3 < v17 || a4 + a3 > v18 + v17)
  {
LABEL_13:
    v13 = *a2;
  }

  *a5 = v13;
  return result;
}

unsigned int **std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>@<X0>(unsigned int **result@<X0>, unsigned int **a2@<X1>, unint64_t *a3@<X2>, unsigned int **a4@<X8>)
{
  v4 = *result;
  v5 = *a2 - *result;
  if ((v5 + 3) >= 7)
  {
    v6 = *a2 == *result;
    v7 = v5 / 4;
    v8 = *a3;
    do
    {
      v9 = (v4 + ((2 * v7) & 0xFFFFFFFC));
      v10 = (v9 + *v9);
      v11 = (v10 - *v10);
      if (*v11 >= 7u && (v12 = v11[3]) != 0)
      {
        v13 = *(v10 + v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v7 >> 1;
      if (v13 <= v8)
      {
        v4 = v9 + 1;
        *result = v9 + 1;
        v14 = v7 + ~v14;
      }

      v7 = v14;
    }

    while (v14);
  }

  *a4 = v4;
  return result;
}

unsigned int **FlatbufferSymbolOwnerData::findMatchingEntryForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>@<X0>(unsigned int **a1@<X1>, unsigned int **a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unsigned int **a5@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v20 = a3;
  v22 = v11;
  v23 = v10;
  result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>(&v23, &v22, &v20, &v21);
  if (v21 == *a1)
  {
    goto LABEL_13;
  }

  v13 = v21 - 1;
  v14 = (v21 + *(v21 - 1) - 4);
  v15 = (v14 - *v14);
  v16 = *v15;
  if (v16 < 5)
  {
    v18 = 0;
    v17 = -1;
  }

  else
  {
    v17 = v15[2] ? *(v14 + v15[2]) : -1;
    if (v16 >= 7 && (v19 = v15[3]) != 0)
    {
      v18 = *(v14 + v19);
    }

    else
    {
      v18 = 0;
    }
  }

  if (a3 < v17 || a4 + a3 > v18 + v17)
  {
LABEL_13:
    v13 = *a2;
  }

  *a5 = v13;
  return result;
}

unsigned int **std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>@<X0>(unsigned int **result@<X0>, unsigned int **a2@<X1>, unint64_t *a3@<X2>, unsigned int **a4@<X8>)
{
  v4 = *result;
  v5 = *a2 - *result;
  if ((v5 + 3) >= 7)
  {
    v6 = *a2 == *result;
    v7 = v5 / 4;
    v8 = *a3;
    do
    {
      v9 = (v4 + ((2 * v7) & 0xFFFFFFFC));
      v10 = (v9 + *v9);
      v11 = (v10 - *v10);
      if (*v11 >= 5u && (v12 = v11[2]) != 0)
      {
        v13 = *(v10 + v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v7 >> 1;
      if (v13 <= v8)
      {
        v4 = v9 + 1;
        *result = v9 + 1;
        v14 = v7 + ~v14;
      }

      v7 = v14;
    }

    while (v14);
  }

  *a4 = v4;
  return result;
}

void *std::vector<TRangeValue<Pointer64,unsigned long long>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL CSCppFlatbufferRelocation::is_skippable(CSCppFlatbufferRelocation *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = &v1[-*v1], *v2 >= 5u) && (v3 = *(v2 + 2)) != 0)
  {
    return is_relocation_skippable(&v1[v3 + 4 + *&v1[v3]]);
  }

  else
  {
    return is_relocation_skippable(0);
  }
}

uint64_t std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CSCppSegmentRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D970AC48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CSCppFlatbufferRelocation>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppFlatbufferRelocation const*>,std::__wrap_iter<CSCppFlatbufferRelocation const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CSCppFlatbufferRelocation>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D970ACC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CSCppFlatbufferRelocation>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<CSCppFlatbufferRelocation>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if (*(a2 - 1))
        {
          v23 = *(a2 - 1);
        }

        else
        {
          v23 = *(a2 - 2);
        }

        if (v9[3])
        {
          v24 = v9[3];
        }

        else
        {
          v24 = v9[2];
        }

        v25 = strncmp(v23, v24, 0x10uLL);
        v27 = *(a2 - 4);
        v26 = a2 - 4;
        v28 = v27 < *v9;
        if (v25)
        {
          v28 = v25 < 0;
        }

        if (v28)
        {
          v31 = *v9;
          v33 = *(v9 + 1);
          v29 = *(v26 + 1);
          *v9 = *v26;
          *(v9 + 1) = v29;
          *v26 = v31;
          *(v26 + 1) = v33;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(v9, v9 + 4, v9 + 8, a2 - 4);
      return;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(v9, v9 + 4, v9 + 8, v9 + 12, a2 - 4);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,CSCppSegmentRange*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[4 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(&v9[4 * (v12 >> 1)], v9, a2 - 4);
      if (a5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(v9, &v9[4 * (v12 >> 1)], a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(v9 + 4, v14 - 4, a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(v9 + 8, &v9[4 * v13 + 4], a2 - 12);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(v14 - 4, v14, &v9[4 * v13 + 4]);
      v30 = *v9;
      v32 = *(v9 + 1);
      v15 = *(v14 + 1);
      *v9 = *v14;
      *(v9 + 1) = v15;
      *v14 = v30;
      *(v14 + 1) = v32;
      if (a5)
      {
        goto LABEL_25;
      }
    }

    if (*(v9 - 1))
    {
      v16 = *(v9 - 1);
    }

    else
    {
      v16 = *(v9 - 2);
    }

    if (v9[3])
    {
      v17 = v9[3];
    }

    else
    {
      v17 = v9[2];
    }

    v18 = strncmp(v16, v17, 0x10uLL);
    v19 = *(v9 - 4) < *v9;
    if (v18)
    {
      v19 = v18 < 0;
    }

    if (!v19)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSegmentRange *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(v9, a2);
      goto LABEL_30;
    }

LABEL_25:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSegmentRange *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(v9, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(v9, v20);
    v9 = v20 + 4;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(v20 + 4, a2))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_28:
      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(a1, v20, a3, -v11, a5 & 1);
      v9 = v20 + 4;
LABEL_30:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(v9, v9 + 4, a2 - 4);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (a2[3])
  {
    v6 = a2[3];
  }

  else
  {
    v6 = a2[2];
  }

  if (a1[3])
  {
    v7 = a1[3];
  }

  else
  {
    v7 = a1[2];
  }

  v8 = strncmp(v6, v7, 0x10uLL);
  v9 = *a2;
  if (v8)
  {
    v10 = v8 < 0;
  }

  else
  {
    v10 = *a2 < *a1;
  }

  if (a3[3])
  {
    v11 = a3[3];
  }

  else
  {
    v11 = a3[2];
  }

  v12 = strncmp(v11, v6, 0x10uLL);
  v13 = *a3 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v10)
  {
    if (v13)
    {
      v15 = *a1;
      v14 = *(a1 + 1);
      v16 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v16;
    }

    else
    {
      v28 = *a1;
      v27 = *(a1 + 1);
      v29 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v29;
      *a2 = v28;
      *(a2 + 1) = v27;
      if (a3[3])
      {
        v30 = a3[3];
      }

      else
      {
        v30 = a3[2];
      }

      if (a2[3])
      {
        v31 = a2[3];
      }

      else
      {
        v31 = a2[2];
      }

      v32 = strncmp(v30, v31, 0x10uLL);
      v33 = *a3 < *a2;
      if (v32)
      {
        v33 = v32 < 0;
      }

      if (!v33)
      {
        return 1;
      }

      v15 = *a2;
      v14 = *(a2 + 1);
      v34 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v34;
    }

    *a3 = v15;
    *(a3 + 1) = v14;
    return 1;
  }

  if (v13)
  {
    v18 = *a2;
    v17 = *(a2 + 1);
    v19 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v19;
    *a3 = v18;
    *(a3 + 1) = v17;
    if (a2[3])
    {
      v20 = a2[3];
    }

    else
    {
      v20 = a2[2];
    }

    if (a1[3])
    {
      v21 = a1[3];
    }

    else
    {
      v21 = a1[2];
    }

    v22 = strncmp(v20, v21, 0x10uLL);
    v23 = *a2 < *a1;
    if (v22)
    {
      v23 = v22 < 0;
    }

    if (v23)
    {
      v25 = *a1;
      v24 = *(a1 + 1);
      v26 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v26;
      *a2 = v25;
      *(a2 + 1) = v24;
    }

    return 1;
  }

  return 0;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(a1, a2, a3);
  if (a4[3])
  {
    v8 = a4[3];
  }

  else
  {
    v8 = a4[2];
  }

  if (a3[3])
  {
    v9 = a3[3];
  }

  else
  {
    v9 = a3[2];
  }

  v10 = strncmp(v8, v9, 0x10uLL);
  v12 = *a4 < *a3;
  if (v10)
  {
    v12 = v10 < 0;
  }

  if (v12)
  {
    v14 = *a3;
    v13 = *(a3 + 1);
    v15 = *(a4 + 1);
    *a3 = *a4;
    *(a3 + 1) = v15;
    *a4 = v14;
    *(a4 + 1) = v13;
    if (a3[3])
    {
      v16 = a3[3];
    }

    else
    {
      v16 = a3[2];
    }

    if (a2[3])
    {
      v17 = a2[3];
    }

    else
    {
      v17 = a2[2];
    }

    v18 = strncmp(v16, v17, 0x10uLL);
    v19 = *a3 < *a2;
    if (v18)
    {
      v19 = v18 < 0;
    }

    if (v19)
    {
      v21 = *a2;
      v20 = *(a2 + 1);
      v22 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v22;
      *a3 = v21;
      *(a3 + 1) = v20;
      if (a2[3])
      {
        v23 = a2[3];
      }

      else
      {
        v23 = a2[2];
      }

      if (a1[3])
      {
        v24 = a1[3];
      }

      else
      {
        v24 = a1[2];
      }

      v25 = strncmp(v23, v24, 0x10uLL);
      v26 = *a2 < *a1;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (v26)
      {
        v27 = *a1;
        result = *(a1 + 1);
        v28 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v28;
        *a2 = v27;
        *(a2 + 1) = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(a1, a2, a3, a4);
  if (a5[3])
  {
    v10 = a5[3];
  }

  else
  {
    v10 = a5[2];
  }

  if (a4[3])
  {
    v11 = a4[3];
  }

  else
  {
    v11 = a4[2];
  }

  v12 = strncmp(v10, v11, 0x10uLL);
  v14 = *a5 < *a4;
  if (v12)
  {
    v14 = v12 < 0;
  }

  if (v14)
  {
    v16 = *a4;
    v15 = *(a4 + 1);
    v17 = *(a5 + 1);
    *a4 = *a5;
    *(a4 + 1) = v17;
    *a5 = v16;
    *(a5 + 1) = v15;
    if (a4[3])
    {
      v18 = a4[3];
    }

    else
    {
      v18 = a4[2];
    }

    if (a3[3])
    {
      v19 = a3[3];
    }

    else
    {
      v19 = a3[2];
    }

    v20 = strncmp(v18, v19, 0x10uLL);
    v21 = *a4 < *a3;
    if (v20)
    {
      v21 = v20 < 0;
    }

    if (v21)
    {
      v23 = *a3;
      v22 = *(a3 + 1);
      v24 = *(a4 + 1);
      *a3 = *a4;
      *(a3 + 1) = v24;
      *a4 = v23;
      *(a4 + 1) = v22;
      if (a3[3])
      {
        v25 = a3[3];
      }

      else
      {
        v25 = a3[2];
      }

      if (a2[3])
      {
        v26 = a2[3];
      }

      else
      {
        v26 = a2[2];
      }

      v27 = strncmp(v25, v26, 0x10uLL);
      v28 = *a3 < *a2;
      if (v27)
      {
        v28 = v27 < 0;
      }

      if (v28)
      {
        v30 = *a2;
        v29 = *(a2 + 1);
        v31 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v31;
        *a3 = v30;
        *(a3 + 1) = v29;
        if (a2[3])
        {
          v32 = a2[3];
        }

        else
        {
          v32 = a2[2];
        }

        if (a1[3])
        {
          v33 = a1[3];
        }

        else
        {
          v33 = a1[2];
        }

        v34 = strncmp(v32, v33, 0x10uLL);
        v35 = *a2 < *a1;
        if (v34)
        {
          v35 = v34 < 0;
        }

        if (v35)
        {
          v36 = *a1;
          result = *(a1 + 1);
          v37 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v37;
          *a2 = v36;
          *(a2 + 1) = result;
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = a2;
    v3 = result;
    v4 = result + 4;
    if (result + 4 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v9 = v6[6];
        v8 = v6[7];
        if (v8)
        {
          v10 = v6[7];
        }

        else
        {
          v10 = v6[6];
        }

        if (v6[3])
        {
          v11 = v6[3];
        }

        else
        {
          v11 = v6[2];
        }

        result = strncmp(v10, v11, 0x10uLL);
        v12 = v6[4];
        v13 = v12 < *v6;
        if (result)
        {
          v13 = result < 0;
        }

        if (v13)
        {
          v14 = v6[5];
          v15 = v5;
          while (1)
          {
            v16 = v3 + v15;
            v17 = *(v3 + v15 + 16);
            *(v16 + 2) = *(v3 + v15);
            *(v16 + 3) = v17;
            if (!v15)
            {
              break;
            }

            if (*(v16 - 1))
            {
              v18 = *(v16 - 1);
            }

            else
            {
              v18 = *(v16 - 2);
            }

            result = strncmp(v10, v18, 0x10uLL);
            v19 = v12 < *(v16 - 4);
            if (result)
            {
              v19 = result < 0;
            }

            v15 -= 32;
            if (!v19)
            {
              v20 = (v3 + v15 + 32);
              goto LABEL_23;
            }
          }

          v20 = v3;
LABEL_23:
          *v20 = v12;
          v20[1] = v14;
          v20[2] = v9;
          v20[3] = v8;
          v2 = a2;
        }

        v4 = v7 + 4;
        v5 += 32;
        v6 = v7;
      }

      while (v7 + 4 != v2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(void *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 4;
    while (v4 != a2)
    {
      v5 = v4;
      v7 = v3[6];
      v6 = v3[7];
      if (v6)
      {
        v8 = v3[7];
      }

      else
      {
        v8 = v3[6];
      }

      if (v3[3])
      {
        v9 = v3[3];
      }

      else
      {
        v9 = v3[2];
      }

      result = strncmp(v8, v9, 0x10uLL);
      v10 = v3[4];
      v11 = v10 < *v3;
      if (result)
      {
        v11 = result < 0;
      }

      if (v11)
      {
        v12 = v3[5];
        v13 = v5;
        do
        {
          v15 = *(v13 - 1);
          *v13 = *(v13 - 2);
          v13[1] = v15;
          if (*(v13 - 5))
          {
            v16 = *(v13 - 5);
          }

          else
          {
            v16 = *(v13 - 6);
          }

          result = strncmp(v8, v16, 0x10uLL);
          v17 = v10 < *(v13 - 8);
          if (result)
          {
            v17 = result < 0;
          }

          v14 = (v13 - 2);
          v13 -= 2;
        }

        while (v17);
        *v14 = v10;
        v14[1] = v12;
        v14[2] = v7;
        v14[3] = v6;
      }

      v4 = v5 + 2;
      v3 = v5;
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSegmentRange *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  if (v7)
  {
    v8 = a1[3];
  }

  else
  {
    v8 = a1[2];
  }

  if (*(a2 - 1))
  {
    v9 = *(a2 - 1);
  }

  else
  {
    v9 = *(a2 - 2);
  }

  v10 = strncmp(v8, v9, 0x10uLL);
  v11 = v4 < *(v2 - 4);
  if (v10)
  {
    v11 = v10 < 0;
  }

  if (v11)
  {
    v12 = a1;
    do
    {
      if (v12[7])
      {
        v13 = v12[7];
      }

      else
      {
        v13 = v12[6];
      }

      v14 = strncmp(v8, v13, 0x10uLL);
      v15 = v12[4];
      v12 += 4;
      v16 = v4 < v15;
      if (v14)
      {
        v16 = v14 < 0;
      }
    }

    while (!v16);
  }

  else
  {
    v17 = a1 + 4;
    do
    {
      v12 = v17;
      if (v17 >= v2)
      {
        break;
      }

      if (v17[3])
      {
        v18 = v17[3];
      }

      else
      {
        v18 = v17[2];
      }

      v19 = strncmp(v8, v18, 0x10uLL);
      v20 = v19 < 0;
      if (!v19)
      {
        v20 = v4 < *v12;
      }

      v17 = v12 + 4;
    }

    while (!v20);
  }

  if (v12 < v2)
  {
    do
    {
      if (*(v2 - 1))
      {
        v21 = *(v2 - 1);
      }

      else
      {
        v21 = *(v2 - 2);
      }

      v22 = strncmp(v8, v21, 0x10uLL);
      v23 = *(v2 - 4);
      v2 -= 4;
      v24 = v4 < v23;
      if (v22)
      {
        v24 = v22 < 0;
      }
    }

    while (v24);
  }

  while (v12 < v2)
  {
    v36 = *v12;
    v37 = *(v12 + 1);
    v25 = *(v2 + 1);
    *v12 = *v2;
    *(v12 + 1) = v25;
    *v2 = v36;
    *(v2 + 1) = v37;
    do
    {
      if (v12[7])
      {
        v26 = v12[7];
      }

      else
      {
        v26 = v12[6];
      }

      v27 = strncmp(v8, v26, 0x10uLL);
      v28 = v12[4];
      v12 += 4;
      v29 = v4 < v28;
      if (v27)
      {
        v29 = v27 < 0;
      }
    }

    while (!v29);
    do
    {
      if (*(v2 - 1))
      {
        v30 = *(v2 - 1);
      }

      else
      {
        v30 = *(v2 - 2);
      }

      v31 = strncmp(v8, v30, 0x10uLL);
      v32 = *(v2 - 4);
      v2 -= 4;
      v33 = v4 < v32;
      if (v31)
      {
        v33 = v31 < 0;
      }
    }

    while (v33);
  }

  if (v12 - 4 != a1)
  {
    v34 = *(v12 - 1);
    *a1 = *(v12 - 2);
    *(a1 + 1) = v34;
  }

  *(v12 - 4) = v4;
  *(v12 - 3) = v5;
  *(v12 - 2) = v6;
  *(v12 - 1) = v7;
  return v12;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSegmentRange *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(__int128 *a1, _OWORD *a2)
{
  v4 = 0;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v6)
  {
    v7 = *(a1 + 3);
  }

  else
  {
    v7 = *(a1 + 2);
  }

  v35 = *a1;
  v8 = *a1;
  do
  {
    if (*(&a1[v4 + 3] + 1))
    {
      v9 = *(&a1[v4 + 3] + 1);
    }

    else
    {
      v9 = *&a1[v4 + 3];
    }

    v10 = strncmp(v9, v7, 0x10uLL);
    v11 = *&a1[v4 + 2] < v8;
    if (v10)
    {
      v11 = v10 < 0;
    }

    v4 += 2;
  }

  while (v11);
  v12 = &a1[v4];
  if (v4 == 2)
  {
    do
    {
      if (v12 >= a2)
      {
        break;
      }

      if (*(a2 - 1))
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *(a2 - 2);
      }

      v18 = strncmp(v17, v7, 0x10uLL);
      v19 = *(a2 - 4);
      a2 -= 2;
      v20 = v19 < v8;
      if (v18)
      {
        v20 = v18 < 0;
      }
    }

    while (!v20);
  }

  else
  {
    do
    {
      if (*(a2 - 1))
      {
        v13 = *(a2 - 1);
      }

      else
      {
        v13 = *(a2 - 2);
      }

      v14 = strncmp(v13, v7, 0x10uLL);
      v15 = *(a2 - 4);
      a2 -= 2;
      v16 = v15 < v8;
      if (v14)
      {
        v16 = v14 < 0;
      }
    }

    while (!v16);
  }

  v21 = &a1[v4];
  if (v12 < a2)
  {
    v22 = a2;
    do
    {
      v23 = *v21;
      v36 = *(v21 + 16);
      v24 = v22[1];
      *v21 = *v22;
      *(v21 + 16) = v24;
      *v22 = v23;
      v22[1] = v36;
      do
      {
        if (*(v21 + 56))
        {
          v25 = *(v21 + 56);
        }

        else
        {
          v25 = *(v21 + 48);
        }

        v26 = strncmp(v25, v7, 0x10uLL);
        v27 = *(v21 + 32);
        v21 += 32;
        v28 = v27 < v8;
        if (v26)
        {
          v28 = v26 < 0;
        }
      }

      while (v28);
      do
      {
        if (*(v22 - 1))
        {
          v29 = *(v22 - 1);
        }

        else
        {
          v29 = *(v22 - 2);
        }

        v30 = strncmp(v29, v7, 0x10uLL);
        v31 = *(v22 - 4);
        v22 -= 2;
        v32 = v31 < v8;
        if (v30)
        {
          v32 = v30 < 0;
        }
      }

      while (!v32);
    }

    while (v21 < v22);
  }

  result = (v21 - 32);
  if ((v21 - 32) != a1)
  {
    v34 = *(v21 - 16);
    *a1 = *result;
    a1[1] = v34;
  }

  *(v21 - 32) = v35;
  *(v21 - 16) = v5;
  *(v21 - 8) = v6;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2;
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (*(a2 - 1))
        {
          v5 = *(a2 - 1);
        }

        else
        {
          v5 = *(a2 - 2);
        }

        if (a1[3])
        {
          v6 = a1[3];
        }

        else
        {
          v6 = a1[2];
        }

        v7 = strncmp(v5, v6, 0x10uLL);
        v9 = *(v2 - 4);
        v8 = v2 - 4;
        v10 = v9 < *a1;
        if (v7)
        {
          v10 = v7 < 0;
        }

        if (v10)
        {
          v12 = *a1;
          v11 = *(a1 + 1);
          v13 = *(v8 + 1);
          *a1 = *v8;
          *(a1 + 1) = v13;
          *v8 = v12;
          *(v8 + 1) = v11;
        }

        return 1;
      }

      goto LABEL_19;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(a1, a1 + 4, a2 - 4);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(a1, a1 + 4, a1 + 8, a2 - 4);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4);
      return 1;
  }

LABEL_19:
  v14 = a1 + 8;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,0>(a1, a1 + 4, a1 + 8);
  v15 = a1 + 12;
  if (a1 + 12 == v2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v33 = v2;
  while (1)
  {
    v19 = v15[2];
    v18 = v15[3];
    if (v18)
    {
      v20 = v15[3];
    }

    else
    {
      v20 = v15[2];
    }

    if (v14[3])
    {
      v21 = v14[3];
    }

    else
    {
      v21 = v14[2];
    }

    v22 = strncmp(v20, v21, 0x10uLL);
    v23 = *v15;
    v24 = *v15 < *v14;
    if (v22)
    {
      v24 = v22 < 0;
    }

    if (v24)
    {
      v34 = v15[1];
      v25 = v16;
      while (1)
      {
        v26 = a1 + v25;
        v27 = *(a1 + v25 + 80);
        *(v26 + 6) = *(a1 + v25 + 64);
        *(v26 + 7) = v27;
        if (v25 == -64)
        {
          break;
        }

        if (*(v26 + 7))
        {
          v28 = *(v26 + 7);
        }

        else
        {
          v28 = *(v26 + 6);
        }

        v29 = strncmp(v20, v28, 0x10uLL);
        v30 = v23 < *(v26 + 4);
        if (v29)
        {
          v30 = v29 < 0;
        }

        v25 -= 32;
        if (!v30)
        {
          v31 = (a1 + v25 + 96);
          goto LABEL_40;
        }
      }

      v31 = a1;
LABEL_40:
      v2 = v33;
      *v31 = v23;
      v31[1] = v34;
      v31[2] = v19;
      v31[3] = v18;
      if (++v17 == 8)
      {
        return v15 + 4 == v33;
      }
    }

    v14 = v15;
    v16 += 32;
    v15 += 4;
    if (v15 == v2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,CSCppSegmentRange*>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(a1, a4, v8, v11);
        v11 -= 4;
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
        if (v12[3])
        {
          v13 = v12[3];
        }

        else
        {
          v13 = v12[2];
        }

        if (a1[3])
        {
          v14 = a1[3];
        }

        else
        {
          v14 = a1[2];
        }

        v15 = strncmp(v13, v14, 0x10uLL);
        v16 = *v12 < *a1;
        if (v15)
        {
          v16 = v15 < 0;
        }

        if (v16)
        {
          v18 = *v12;
          v17 = *(v12 + 1);
          v19 = *(a1 + 1);
          *v12 = *a1;
          *(v12 + 1) = v19;
          *a1 = v18;
          *(a1 + 1) = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v20 = a2 - 4;
      do
      {
        v25 = *a1;
        v26 = *(a1 + 1);
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(a1, a4, v8);
        if (v20 == v21)
        {
          *v21 = v25;
          *(v21 + 1) = v26;
        }

        else
        {
          v22 = *(v20 + 1);
          *v21 = *v20;
          *(v21 + 1) = v22;
          *v20 = v25;
          *(v20 + 1) = v26;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(a1, (v21 + 4), a4, ((v21 + 4) - a1) >> 5);
        }

        v20 -= 4;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 5)
    {
      v9 = (a4 - result) >> 4;
      v10 = v9 + 1;
      v11 = (result + 32 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 >= a3)
      {
        v17 = *v11;
      }

      else
      {
        if (v11[3])
        {
          v13 = v11[3];
        }

        else
        {
          v13 = v11[2];
        }

        if (v11[7])
        {
          v14 = v11[7];
        }

        else
        {
          v14 = v11[6];
        }

        v15 = strncmp(v13, v14, 0x10uLL);
        v16 = *v11 < v11[4];
        if (v15)
        {
          v16 = v15 < 0;
        }

        if (v16)
        {
          v17 = v11[4];
        }

        else
        {
          v17 = *v11;
        }

        if (v16)
        {
          v11 += 4;
          v10 = v12;
        }
      }

      if (v11[3])
      {
        v18 = v11[3];
      }

      else
      {
        v18 = v11[2];
      }

      v19 = v5[3];
      v35 = v5[2];
      if (v19)
      {
        v20 = v5[3];
      }

      else
      {
        v20 = v5[2];
      }

      result = strncmp(v18, v20, 0x10uLL);
      v21 = *v5;
      v22 = v17 < *v5;
      if (result)
      {
        v22 = result < 0;
      }

      if (!v22)
      {
        v33 = v5[1];
        v34 = v19;
        do
        {
          v23 = v5;
          v5 = v11;
          v24 = *(v11 + 1);
          *v23 = *v11;
          *(v23 + 1) = v24;
          if (v7 < v10)
          {
            break;
          }

          v25 = (2 * v10) | 1;
          v11 = (v6 + 32 * v25);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v30 = *v11;
            v10 = v25;
          }

          else
          {
            if (v11[3])
            {
              v26 = v11[3];
            }

            else
            {
              v26 = v11[2];
            }

            if (v11[7])
            {
              v27 = v11[7];
            }

            else
            {
              v27 = v11[6];
            }

            v28 = strncmp(v26, v27, 0x10uLL);
            v29 = *v11 < v11[4];
            if (v28)
            {
              v29 = v28 < 0;
            }

            v30 = v29 ? v11[4] : *v11;
            if (v29)
            {
              v11 += 4;
            }

            else
            {
              v10 = v25;
            }
          }

          v31 = (v11[3] ? v11[3] : v11[2]);
          result = strncmp(v31, v20, 0x10uLL);
          v32 = v30 < v21;
          if (result)
          {
            v32 = result < 0;
          }
        }

        while (!v32);
        *v5 = v21;
        v5[1] = v33;
        v5[2] = v35;
        v5[3] = v34;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5];
    v8 = v7 + 4;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      if (v7[7])
      {
        v11 = v7[7];
      }

      else
      {
        v11 = v7[6];
      }

      if (v7[11])
      {
        v12 = v7[11];
      }

      else
      {
        v12 = v7[10];
      }

      v13 = strncmp(v11, v12, 0x10uLL);
      v15 = v7[8];
      v14 = v7 + 8;
      v16 = *(v14 - 4) < v15;
      if (v13)
      {
        v16 = v13 < 0;
      }

      if (v16)
      {
        v8 = v14;
        v5 = v10;
      }

      else
      {
        v5 = v9;
      }
    }

    v17 = v8[1];
    *a1 = *v8;
    a1[1] = v17;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 32 * (v4 >> 1));
    if (v8[3])
    {
      v9 = v8[3];
    }

    else
    {
      v9 = v8[2];
    }

    v11 = *(a2 - 16);
    v10 = *(a2 - 8);
    if (v10)
    {
      v12 = *(a2 - 8);
    }

    else
    {
      v12 = *(a2 - 16);
    }

    result = strncmp(v9, v12, 0x10uLL);
    v13 = (a2 - 32);
    v14 = *(a2 - 32);
    v15 = *v8 < v14;
    if (result)
    {
      v15 = result < 0;
    }

    if (v15)
    {
      v16 = *(a2 - 24);
      do
      {
        v17 = v13;
        v13 = v8;
        v18 = *(v8 + 1);
        *v17 = *v8;
        *(v17 + 1) = v18;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 32 * v7);
        v19 = (v8[3] ? v8[3] : v8[2]);
        result = strncmp(v19, v12, 0x10uLL);
        v20 = *v8 < v14;
        if (result)
        {
          v20 = result < 0;
        }
      }

      while (v20);
      *v13 = v14;
      v13[1] = v16;
      v13[2] = v11;
      v13[3] = v10;
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,false>(__n128 *a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - v9);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v29 = (*(a2 - 1) + *(*(a2 - 1) - **(a2 - 1) + 4));
        v30 = (v9[2] + *(v9[2] - *v9[2] + 4));
        v31 = strncmp(&v29[*v29 + 4], &v30[*v30 + 4], 0x10uLL);
        v33 = *(a2 - 3);
        v32 = a2 - 3;
        v34 = v33 < *v9;
        if (v31)
        {
          v34 = v31 < 0;
        }

        if (v34)
        {
          v39 = v9[2];
          v37 = *v9;
          v35 = *v32;
          v9[2] = v32[2];
          *v9 = v35;
          *v32 = v37;
          v32[2] = v39;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(v9, v9 + 3, v9 + 6, a2 - 3);
      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(v9, v9 + 3, v9 + 6, v9 + 9, a2 - 3);
      return;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,CSCppFlatbufferRelocation*>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v9[3 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(&v9[3 * v14], v9, a2 - 3);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(v9, &v9[3 * v14], a2 - 3);
      v16 = 3 * v14;
      v17 = &v9[3 * v14 - 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(v9 + 3, v17, a2 - 6);
      v18 = &v9[v16 + 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(a1[3].n128_u64, v18, a2 - 9);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(v17, v15, v18);
      v38 = a1[1].n128_u64[0];
      v36 = *a1;
      v19 = *v15;
      a1[1].n128_u64[0] = v15[2];
      *a1 = v19;
      v15[2] = v38;
      *v15 = v36;
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v20 = (a1[-1].n128_u64[1] + *(a1[-1].n128_u64[1] - *a1[-1].n128_u64[1] + 4));
    v21 = (a1[1].n128_u64[0] + *(a1[1].n128_u64[0] - *a1[1].n128_u64[0] + 4));
    v22 = strncmp(&v20[*v20 + 4], &v21[*v21 + 4], 0x10uLL);
    v23 = a1[-2].n128_u64[1] < a1->n128_u64[0];
    if (v22)
    {
      v23 = v22 < 0;
    }

    if (!v23)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppFlatbufferRelocation *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(a1->n128_u64, a2);
      goto LABEL_24;
    }

LABEL_19:
    v25 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppFlatbufferRelocation *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(a1, a2);
    v26 = v24;
    if ((v27 & 1) == 0)
    {
      goto LABEL_22;
    }

    v28 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(a1->n128_u64, v24);
    v9 = v26 + 3;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(v26 + 3, a2))
    {
      a4 = -v11;
      a2 = v26;
      if (v28)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v28)
    {
LABEL_22:
      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,false>(a1, v26, a3, -v11, a5 & 1, v25);
      v9 = v26 + 3;
LABEL_24:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(v9, v9 + 3, a2 - 3);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v6 = (a2[2] + *(a2[2] - *a2[2] + 4));
  v7 = v6 + *v6;
  v8 = (a1[2] + *(a1[2] - *a1[2] + 4));
  v9 = strncmp(v7 + 4, &v8[*v8 + 4], 0x10uLL);
  v10 = *a2;
  if (v9)
  {
    v11 = v9 < 0;
  }

  else
  {
    v11 = *a2 < *a1;
  }

  v12 = (a3[2] + *(a3[2] - *a3[2] + 4));
  v13 = strncmp(&v12[*v12 + 4], v7 + 4, 0x10uLL);
  v14 = *a3 < v10;
  if (v13)
  {
    v14 = v13 < 0;
  }

  if (v11)
  {
    if (v14)
    {
      v15 = a1[2];
      v16 = *a1;
      v17 = a3[2];
      *a1 = *a3;
      a1[2] = v17;
    }

    else
    {
      v28 = a1[2];
      v29 = *a1;
      v30 = a2[2];
      *a1 = *a2;
      a1[2] = v30;
      *a2 = v29;
      a2[2] = v28;
      v31 = (a3[2] + *(a3[2] - *a3[2] + 4));
      v32 = (a2[2] + *(a2[2] - *a2[2] + 4));
      v33 = strncmp(&v31[*v31 + 4], &v32[*v32 + 4], 0x10uLL);
      v34 = *a3 < *a2;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (!v34)
      {
        return 1;
      }

      v15 = a2[2];
      v16 = *a2;
      v35 = a3[2];
      *a2 = *a3;
      a2[2] = v35;
    }

    *a3 = v16;
    a3[2] = v15;
    return 1;
  }

  if (v14)
  {
    v18 = a2[2];
    v19 = *a2;
    v20 = a3[2];
    *a2 = *a3;
    a2[2] = v20;
    *a3 = v19;
    a3[2] = v18;
    v21 = (a2[2] + *(a2[2] - *a2[2] + 4));
    v22 = (a1[2] + *(a1[2] - *a1[2] + 4));
    v23 = strncmp(&v21[*v21 + 4], &v22[*v22 + 4], 0x10uLL);
    v24 = *a2 < *a1;
    if (v23)
    {
      v24 = v23 < 0;
    }

    if (v24)
    {
      v25 = a1[2];
      v26 = *a1;
      v27 = a2[2];
      *a1 = *a2;
      a1[2] = v27;
      *a2 = v26;
      a2[2] = v25;
    }

    return 1;
  }

  return 0;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(a1, a2, a3);
  v8 = (a4[2] + *(a4[2] - *a4[2] + 4));
  v9 = (a3[2] + *(a3[2] - *a3[2] + 4));
  v10 = strncmp(&v8[*v8 + 4], &v9[*v9 + 4], 0x10uLL);
  v12 = *a4 < *a3;
  if (v10)
  {
    v12 = v10 < 0;
  }

  if (v12)
  {
    v13 = a3[2];
    v14 = *a3;
    v15 = a4[2];
    *a3 = *a4;
    a3[2] = v15;
    *a4 = v14;
    a4[2] = v13;
    v16 = (a3[2] + *(a3[2] - *a3[2] + 4));
    v17 = (a2[2] + *(a2[2] - *a2[2] + 4));
    v18 = strncmp(&v16[*v16 + 4], &v17[*v17 + 4], 0x10uLL);
    v19 = *a3 < *a2;
    if (v18)
    {
      v19 = v18 < 0;
    }

    if (v19)
    {
      v20 = a2[2];
      v21 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      *a3 = v21;
      a3[2] = v20;
      v23 = (a2[2] + *(a2[2] - *a2[2] + 4));
      v24 = (a1[2] + *(a1[2] - *a1[2] + 4));
      v25 = strncmp(&v23[*v23 + 4], &v24[*v24 + 4], 0x10uLL);
      v26 = *a2 < *a1;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (v26)
      {
        v27 = a1[2];
        result = *a1;
        v28 = a2[2];
        *a1 = *a2;
        a1[2] = v28;
        *a2 = result;
        a2[2] = v27;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(a1, a2, a3, a4);
  v10 = (a5[2] + *(a5[2] - *a5[2] + 4));
  v11 = (a4[2] + *(a4[2] - *a4[2] + 4));
  v12 = strncmp(&v10[*v10 + 4], &v11[*v11 + 4], 0x10uLL);
  v14 = *a5 < *a4;
  if (v12)
  {
    v14 = v12 < 0;
  }

  if (v14)
  {
    v15 = a4[2];
    v16 = *a4;
    v17 = a5[2];
    *a4 = *a5;
    a4[2] = v17;
    *a5 = v16;
    a5[2] = v15;
    v18 = (a4[2] + *(a4[2] - *a4[2] + 4));
    v19 = (a3[2] + *(a3[2] - *a3[2] + 4));
    v20 = strncmp(&v18[*v18 + 4], &v19[*v19 + 4], 0x10uLL);
    v21 = *a4 < *a3;
    if (v20)
    {
      v21 = v20 < 0;
    }

    if (v21)
    {
      v22 = a3[2];
      v23 = *a3;
      v24 = a4[2];
      *a3 = *a4;
      a3[2] = v24;
      *a4 = v23;
      a4[2] = v22;
      v25 = (a3[2] + *(a3[2] - *a3[2] + 4));
      v26 = (a2[2] + *(a2[2] - *a2[2] + 4));
      v27 = strncmp(&v25[*v25 + 4], &v26[*v26 + 4], 0x10uLL);
      v28 = *a3 < *a2;
      if (v27)
      {
        v28 = v27 < 0;
      }

      if (v28)
      {
        v29 = a2[2];
        v30 = *a2;
        v31 = a3[2];
        *a2 = *a3;
        a2[2] = v31;
        *a3 = v30;
        a3[2] = v29;
        v32 = (a2[2] + *(a2[2] - *a2[2] + 4));
        v33 = (a1[2] + *(a1[2] - *a1[2] + 4));
        v34 = strncmp(&v32[*v32 + 4], &v33[*v33 + 4], 0x10uLL);
        v35 = *a2 < *a1;
        if (v34)
        {
          v35 = v34 < 0;
        }

        if (v35)
        {
          v36 = a1[2];
          result = *a1;
          v37 = a2[2];
          *a1 = *a2;
          a1[2] = v37;
          *a2 = result;
          a2[2] = v36;
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 3;
    if (result + 3 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v8 = v6[5];
        v9 = v8 + *(v8 - *v8 + 4);
        v10 = (v6[2] + *(v6[2] - *v6[2] + 4));
        result = strncmp(&v9[*v9 + 4], &v10[*v10 + 4], 0x10uLL);
        v11 = v6[3];
        v12 = v11 < *v6;
        if (result)
        {
          v12 = result < 0;
        }

        if (v12)
        {
          v13 = v6[4];
          v14 = v5;
          while (1)
          {
            v15 = v3 + v14;
            *(v15 + 24) = *(v3 + v14);
            *(v15 + 5) = *(v3 + v14 + 16);
            if (!v14)
            {
              break;
            }

            v16 = v8 + *(v8 - *v8 + 4);
            v17 = (*(v15 - 1) + *(*(v15 - 1) - **(v15 - 1) + 4));
            result = strncmp(&v16[*v16 + 4], &v17[*v17 + 4], 0x10uLL);
            v18 = v11 < *(v15 - 3);
            if (result)
            {
              v18 = result < 0;
            }

            v14 -= 24;
            if (!v18)
            {
              v19 = (v3 + v14 + 24);
              goto LABEL_14;
            }
          }

          v19 = v3;
LABEL_14:
          *v19 = v11;
          v19[1] = v13;
          v19[2] = v8;
        }

        v4 = v7 + 3;
        v5 += 24;
        v6 = v7;
      }

      while (v7 + 3 != a2);
    }
  }

  return result;
}

unint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 3;
    while (v4 != a2)
    {
      v5 = v4;
      v6 = v3[5];
      v7 = v6 + *(v6 - *v6 + 4);
      v8 = (v3[2] + *(v3[2] - *v3[2] + 4));
      result = strncmp(&v7[*v7 + 4], &v8[*v8 + 4], 0x10uLL);
      v9 = v3[3];
      v10 = v9 < *v3;
      if (result)
      {
        v10 = result < 0;
      }

      if (v10)
      {
        v11 = v3[4];
        v12 = v5;
        do
        {
          *v12 = *(v12 - 3);
          v12[2] = *(v12 - 1);
          v14 = v6 + *(v6 - *v6 + 4);
          v15 = (*(v12 - 4) + *(*(v12 - 4) - **(v12 - 4) + 4));
          result = strncmp(&v14[*v14 + 4], &v15[*v15 + 4], 0x10uLL);
          v16 = v9 < *(v12 - 6);
          if (result)
          {
            v16 = result < 0;
          }

          v13 = v12 - 3;
          v12 -= 3;
        }

        while (v16);
        *v13 = v9;
        v13[1] = v11;
        v13[2] = v6;
      }

      v4 = v5 + 3;
      v3 = v5;
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppFlatbufferRelocation *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(unint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = (v6 + *(v6 - *v6 + 4));
  v8 = v7 + *v7;
  v9 = (*(a2 - 8) + *(*(a2 - 8) - **(a2 - 8) + 4));
  v10 = strncmp(v8 + 4, &v9[*v9 + 4], 0x10uLL);
  v11 = v4 < *(v2 - 24);
  if (v10)
  {
    v11 = v10 < 0;
  }

  if (v11)
  {
    v12 = a1;
    do
    {
      v13 = (v12[5] + *(v12[5] - *v12[5] + 4));
      v14 = strncmp(v8 + 4, &v13[*v13 + 4], 0x10uLL);
      v15 = v12[3];
      v12 += 3;
      v16 = v4 < v15;
      if (v14)
      {
        v16 = v14 < 0;
      }
    }

    while (!v16);
  }

  else
  {
    v17 = a1 + 3;
    do
    {
      v12 = v17;
      if (v17 >= v2)
      {
        break;
      }

      v18 = (v17[2] + *(v17[2] - *v17[2] + 4));
      v19 = strncmp(v8 + 4, &v18[*v18 + 4], 0x10uLL);
      v20 = v19 < 0;
      if (!v19)
      {
        v20 = v4 < *v12;
      }

      v17 = v12 + 3;
    }

    while (!v20);
  }

  if (v12 < v2)
  {
    do
    {
      v21 = (*(v2 - 8) + *(*(v2 - 8) - **(v2 - 8) + 4));
      v22 = strncmp(v8 + 4, &v21[*v21 + 4], 0x10uLL);
      v23 = *(v2 - 24);
      v2 -= 24;
      v24 = v4 < v23;
      if (v22)
      {
        v24 = v22 < 0;
      }
    }

    while (v24);
  }

  while (v12 < v2)
  {
    v39 = v12[2];
    v38 = *v12;
    v25 = *v2;
    v12[2] = *(v2 + 16);
    *v12 = v25;
    *(v2 + 16) = v39;
    *v2 = v38;
    v26 = (v6 + *(v6 - *v6 + 4));
    v27 = v26 + *v26;
    do
    {
      v28 = (v12[5] + *(v12[5] - *v12[5] + 4));
      v29 = strncmp(v27 + 4, &v28[*v28 + 4], 0x10uLL);
      v30 = v12[3];
      v12 += 3;
      v31 = v4 < v30;
      if (v29)
      {
        v31 = v29 < 0;
      }
    }

    while (!v31);
    do
    {
      v32 = (*(v2 - 8) + *(*(v2 - 8) - **(v2 - 8) + 4));
      v33 = strncmp(v27 + 4, &v32[*v32 + 4], 0x10uLL);
      v34 = *(v2 - 24);
      v2 -= 24;
      v35 = v4 < v34;
      if (v33)
      {
        v35 = v33 < 0;
      }
    }

    while (v35);
  }

  if (v12 - 3 != a1)
  {
    v36 = *(v12 - 3);
    a1[2] = *(v12 - 1);
    *a1 = v36;
  }

  *(v12 - 3) = v4;
  *(v12 - 2) = v5;
  *(v12 - 1) = v6;
  return v12;
}

__n128 std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppFlatbufferRelocation *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(__n128 *a1, unint64_t a2)
{
  v4 = 0;
  v5 = a1[1].n128_u64[0];
  v6 = (v5 + *(v5 - *v5 + 4));
  v7 = v6 + *v6;
  v38 = *a1;
  v8 = a1->n128_u64[0];
  do
  {
    v9 = (a1[2].n128_u64[v4 + 1] + *(a1[2].n128_u64[v4 + 1] - *a1[2].n128_u64[v4 + 1] + 4));
    v10 = strncmp(&v9[*v9 + 4], v7 + 4, 0x10uLL);
    v11 = a1[1].n128_u64[v4 + 1] < v8;
    if (v10)
    {
      v11 = v10 < 0;
    }

    v4 += 3;
  }

  while (v11);
  v12 = a1 + v4 * 8;
  if (v4 == 3)
  {
    do
    {
      if (v12 >= a2)
      {
        break;
      }

      v17 = (*(a2 - 8) + *(*(a2 - 8) - **(a2 - 8) + 4));
      v18 = strncmp(&v17[*v17 + 4], v7 + 4, 0x10uLL);
      v19 = *(a2 - 24);
      a2 -= 24;
      v20 = v19 < v8;
      if (v18)
      {
        v20 = v18 < 0;
      }
    }

    while (!v20);
  }

  else
  {
    do
    {
      v13 = (*(a2 - 8) + *(*(a2 - 8) - **(a2 - 8) + 4));
      v14 = strncmp(&v13[*v13 + 4], v7 + 4, 0x10uLL);
      v15 = *(a2 - 24);
      a2 -= 24;
      v16 = v15 < v8;
      if (v14)
      {
        v16 = v14 < 0;
      }
    }

    while (!v16);
  }

  v21 = a1 + v4 * 8;
  if (v12 < a2)
  {
    v22 = a2;
    do
    {
      v23 = *v21;
      v24 = *(v21 + 2);
      v25 = *(v22 + 16);
      *v21 = *v22;
      *(v21 + 2) = v25;
      *(v22 + 16) = v24;
      *v22 = v23;
      v26 = (v5 + *(v5 - *v5 + 4));
      v27 = v26 + *v26;
      do
      {
        v28 = (*(v21 + 5) + *(*(v21 + 5) - **(v21 + 5) + 4));
        v29 = strncmp(&v28[*v28 + 4], v27 + 4, 0x10uLL);
        v30 = *(v21 + 3);
        v21 += 24;
        v31 = v30 < v8;
        if (v29)
        {
          v31 = v29 < 0;
        }
      }

      while (v31);
      do
      {
        v32 = (*(v22 - 8) + *(*(v22 - 8) - **(v22 - 8) + 4));
        v33 = strncmp(&v32[*v32 + 4], v27 + 4, 0x10uLL);
        v34 = *(v22 - 24);
        v22 -= 24;
        v35 = v34 < v8;
        if (v33)
        {
          v35 = v33 < 0;
        }
      }

      while (!v35);
    }

    while (v21 < v22);
  }

  if (v21 - 24 != a1)
  {
    v36 = *(v21 - 24);
    a1[1].n128_u64[0] = *(v21 - 1);
    *a1 = v36;
  }

  result = v38;
  *(v21 - 24) = v38;
  *(v21 - 1) = v5;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(unint64_t *a1, unint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (*(a2 - 1) + *(*(a2 - 1) - **(a2 - 1) + 4));
        v6 = (a1[2] + *(a1[2] - *a1[2] + 4));
        v7 = strncmp(&v5[*v5 + 4], &v6[*v6 + 4], 0x10uLL);
        v9 = *(a2 - 3);
        v8 = a2 - 3;
        v10 = v9 < *a1;
        if (v7)
        {
          v10 = v7 < 0;
        }

        if (v10)
        {
          v11 = a1[2];
          v12 = *a1;
          v13 = v8[2];
          *a1 = *v8;
          a1[2] = v13;
          *v8 = v12;
          v8[2] = v11;
        }

        return 1;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(a1, a1 + 3, a2 - 3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(a1, a1 + 3, a1 + 6, a2 - 3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
      return 1;
  }

LABEL_13:
  v14 = a1 + 6;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,0>(a1, a1 + 3, a1 + 6);
  v15 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = v15[2];
    v19 = v18 + *(v18 - *v18 + 4);
    v20 = (v14[2] + *(v14[2] - *v14[2] + 4));
    v21 = strncmp(&v19[*v19 + 4], &v20[*v20 + 4], 0x10uLL);
    v22 = *v15;
    v23 = *v15 < *v14;
    if (v21)
    {
      v23 = v21 < 0;
    }

    if (v23)
    {
      v24 = v15[1];
      v25 = v16;
      while (1)
      {
        v26 = a1 + v25;
        *(v26 + 72) = *(a1 + v25 + 48);
        *(v26 + 11) = *(a1 + v25 + 64);
        if (v25 == -48)
        {
          break;
        }

        v27 = v18 + *(v18 - *v18 + 4);
        v28 = (*(v26 + 5) + *(*(v26 + 5) - **(v26 + 5) + 4));
        v29 = strncmp(&v27[*v27 + 4], &v28[*v28 + 4], 0x10uLL);
        v30 = v22 < *(v26 + 3);
        if (v29)
        {
          v30 = v29 < 0;
        }

        v25 -= 24;
        if (!v30)
        {
          v31 = (a1 + v25 + 72);
          goto LABEL_25;
        }
      }

      v31 = a1;
LABEL_25:
      *v31 = v22;
      v31[1] = v24;
      v31[2] = v18;
      if (++v17 == 8)
      {
        return v15 + 3 == a2;
      }
    }

    v14 = v15;
    v16 += 24;
    v15 += 3;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*,CSCppFlatbufferRelocation*>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[3 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = (v13[2] + *(v13[2] - *v13[2] + 4));
        v15 = (a1[2] + *(a1[2] - *a1[2] + 4));
        v16 = strncmp(&v14[*v14 + 4], &v15[*v15 + 4], 0x10uLL);
        v17 = *v13 < *a1;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (v17)
        {
          v18 = v13[2];
          v19 = *v13;
          v20 = a1[2];
          *v13 = *a1;
          v13[2] = v20;
          *a1 = v19;
          a1[2] = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v22 = a2 - 3;
      do
      {
        v27 = *a1;
        v28 = a1[2];
        v23 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(a1, a4, v21);
        if (v22 == v23)
        {
          *v23 = v27;
          v23[2] = v28;
        }

        else
        {
          v24 = *v22;
          v23[2] = v22[2];
          *v23 = v24;
          *v22 = v27;
          v22[2] = v28;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(a1, (v23 + 3), a4, 0xAAAAAAAAAAAAAAABLL * (v23 + 3 - a1));
        }

        v22 -= 3;
      }

      while (v21-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v9 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v10 = (result + 24 * v9);
      v11 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
      if (v11 >= a3)
      {
        v16 = *v10;
      }

      else
      {
        v12 = (v10[2] + *(v10[2] - *v10[2] + 4));
        v13 = (v10[5] + *(v10[5] - *v10[5] + 4));
        v14 = strncmp(&v12[*v12 + 4], &v13[*v13 + 4], 0x10uLL);
        v15 = *v10 < v10[3];
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (v15)
        {
          v16 = v10[3];
        }

        else
        {
          v16 = *v10;
        }

        if (v15)
        {
          v10 += 3;
          v9 = v11;
        }
      }

      v17 = (v10[2] + *(v10[2] - *v10[2] + 4));
      v18 = v5[2];
      v19 = v18 + *(v18 - *v18 + 4);
      result = strncmp(&v17[*v17 + 4], &v19[*v19 + 4], 0x10uLL);
      v20 = *v5;
      v21 = v16 < *v5;
      if (result)
      {
        v21 = result < 0;
      }

      if (!v21)
      {
        v33 = v5[1];
        do
        {
          v22 = v5;
          v5 = v10;
          v23 = *v10;
          v22[2] = v10[2];
          *v22 = v23;
          if (v7 < v9)
          {
            break;
          }

          v24 = (2 * v9) | 1;
          v10 = (v6 + 24 * v24);
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v29 = *v10;
            v9 = v24;
          }

          else
          {
            v25 = (v10[2] + *(v10[2] - *v10[2] + 4));
            v26 = (v10[5] + *(v10[5] - *v10[5] + 4));
            v27 = strncmp(&v25[*v25 + 4], &v26[*v26 + 4], 0x10uLL);
            v28 = *v10 < v10[3];
            if (v27)
            {
              v28 = v27 < 0;
            }

            v29 = v28 ? v10[3] : *v10;
            if (v28)
            {
              v10 += 3;
            }

            else
            {
              v9 = v24;
            }
          }

          v30 = (v10[2] + *(v10[2] - *v10[2] + 4));
          v31 = v18 + *(v18 - *v18 + 4);
          result = strncmp(&v30[*v30 + 4], &v31[*v31 + 4], 0x10uLL);
          v32 = v29 < v20;
          if (result)
          {
            v32 = result < 0;
          }
        }

        while (!v32);
        *v5 = v20;
        v5[1] = v33;
        v5[2] = v18;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[3 * v5];
    v8 = v7 + 3;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v11 = (v7[5] + *(v7[5] - *v7[5] + 4));
      v12 = (v7[8] + *(v7[8] - *v7[8] + 4));
      v13 = strncmp(&v11[*v11 + 4], &v12[*v12 + 4], 0x10uLL);
      v15 = v7[6];
      v14 = v7 + 6;
      v16 = *(v14 - 3) < v15;
      if (v13)
      {
        v16 = v13 < 0;
      }

      if (v16)
      {
        v8 = v14;
        v5 = v10;
      }

      else
      {
        v5 = v9;
      }
    }

    v17 = *v8;
    a1[2] = v8[2];
    *a1 = v17;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppFlatbufferRelocation*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 24 * (v4 >> 1));
    v9 = (v8[2] + *(v8[2] - *v8[2] + 4));
    v10 = *(a2 - 8);
    v11 = v10 + *(v10 - *v10 + 4);
    result = strncmp(&v9[*v9 + 4], &v11[*v11 + 4], 0x10uLL);
    v12 = (a2 - 24);
    v13 = *(a2 - 24);
    v14 = *v8 < v13;
    if (result)
    {
      v14 = result < 0;
    }

    if (v14)
    {
      v15 = *(a2 - 16);
      do
      {
        v16 = v12;
        v12 = v8;
        v17 = *v8;
        v16[2] = v8[2];
        *v16 = v17;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 24 * v7);
        v18 = (v8[2] + *(v8[2] - *v8[2] + 4));
        v19 = v10 + *(v10 - *v10 + 4);
        result = strncmp(&v18[*v18 + 4], &v19[*v19 + 4], 0x10uLL);
        v20 = *v8 < v13;
        if (result)
        {
          v20 = result < 0;
        }
      }

      while (v20);
      *v12 = v13;
      v12[1] = v15;
      v12[2] = v10;
    }
  }

  return result;
}

void std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  v156 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = (a2 - 3);
  v10 = a2 - 6;
  v11 = a2 - 9;
  v12 = a1;
LABEL_3:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        goto LABEL_109;
      }

      if (v16 == 2)
      {
        v79 = *(a2 - 3);
        v73 = a2 - 3;
        if (v79 >= *v12)
        {
          goto LABEL_109;
        }

        goto LABEL_76;
      }

      goto LABEL_11;
    }

    switch(v16)
    {
      case 3uLL:
        v70 = v12 + 3;
        v71 = v12[3];
        v74 = *(a2 - 3);
        v73 = a2 - 3;
        v72 = v74;
        if (v71 < *v12)
        {
          if (v72 < v71)
          {
LABEL_76:
            v151 = v12[2];
            v123 = *v12;
            v80 = *v73;
            v12[2] = v73[2];
            *v12 = v80;
            *v73 = v123;
            v73[2] = v151;
            goto LABEL_109;
          }

          v150 = v12[2];
          v122 = *v12;
          *v12 = *v70;
          v12[2] = v12[5];
          *v70 = v122;
          v12[5] = v150;
          if (*v73 < v12[3])
          {
            v75 = v12[5];
            v76 = *v70;
            v77 = v73[2];
            *v70 = *v73;
            v12[5] = v77;
            *v73 = v76;
            v73[2] = v75;
          }

          goto LABEL_109;
        }

        if (v72 >= v71)
        {
          goto LABEL_109;
        }

        v87 = v12[5];
        v88 = *v70;
        v89 = v73[2];
        *v70 = *v73;
        v12[5] = v89;
        *v73 = v88;
        v73[2] = v87;
        goto LABEL_107;
      case 4uLL:
        v70 = v12 + 3;
        v81 = v12[3];
        v82 = (v12 + 6);
        v83 = v12[6];
        if (v81 >= *v12)
        {
          if (v83 < v81)
          {
            v90 = v12[5];
            v91 = *v70;
            *v70 = *v82;
            v12[5] = v12[8];
            *v82 = v91;
            v12[8] = v90;
            if (v12[3] < *v12)
            {
              v153 = v12[2];
              v125 = *v12;
              *v12 = *v70;
              v12[2] = v12[5];
              *v70 = v125;
              v12[5] = v153;
            }
          }
        }

        else
        {
          if (v83 < v81)
          {
            v152 = v12[2];
            v124 = *v12;
            *v12 = *v82;
            v12[2] = v12[8];
            *v82 = v124;
            v84 = v152;
            goto LABEL_103;
          }

          v154 = v12[2];
          v127 = *v12;
          *v12 = *v70;
          v12[2] = v12[5];
          *v70 = v127;
          v12[5] = v154;
          if (v83 < v12[3])
          {
            v84 = v12[5];
            v97 = *v70;
            *v70 = *v82;
            v12[5] = v12[8];
            *v82 = v97;
LABEL_103:
            v12[8] = v84;
          }
        }

        if (*v9 >= v82->n128_u64[0])
        {
          goto LABEL_109;
        }

        v98 = v12[8];
        v99 = *v82;
        v100 = *(a2 - 1);
        *v82 = *v9;
        v12[8] = v100;
        *v9 = v99;
        *(a2 - 1) = v98;
        if (v82->n128_u64[0] >= *v70)
        {
          goto LABEL_109;
        }

        v101 = v12[5];
        v102 = *v70;
        *v70 = *v82;
        v12[5] = v12[8];
        *v82 = v102;
        v12[8] = v101;
LABEL_107:
        if (v12[3] < *v12)
        {
          v155 = v12[2];
          v128 = *v12;
          *v12 = *v70;
          v12[2] = v70[2];
          *v70 = v128;
          v70[2] = v155;
        }

        goto LABEL_109;
      case 5uLL:
        v78 = *MEMORY[0x1E69E9840];

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,0>(v12, (v12 + 3), v12 + 6, (v12 + 9), (a2 - 3), a6);
        return;
    }

LABEL_11:
    if (v15 <= 575)
    {
      if (a5)
      {
        v85 = *MEMORY[0x1E69E9840];

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>(v12, a2);
        return;
      }

      if (v12 != a2)
      {
        v92 = v12 + 3;
        while (v92 != a2)
        {
          v93 = v92;
          v94 = a1[3];
          if (v94 < *a1)
          {
            v126 = *(a1 + 2);
            v95 = v93;
            do
            {
              *v95 = *(v95 - 3);
              v95[2] = *(v95 - 1);
              v96 = *(v95 - 6);
              v95 -= 3;
            }

            while (v94 < v96);
            *v95 = v94;
            *(v95 + 1) = v126;
          }

          v92 = v93 + 3;
          a1 = v93;
        }
      }

LABEL_109:
      v103 = *MEMORY[0x1E69E9840];
      return;
    }

    if (v14 == 1)
    {
      break;
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
          v131 = v18[2];
          v107 = *v18;
          v24 = *v9;
          v18[2] = *(a2 - 1);
          *v18 = v24;
          *v9 = v107;
          *(a2 - 1) = v131;
          if (*v18 < *v12)
          {
            v132 = v12[2];
            v108 = *v12;
            v25 = *v18;
            v12[2] = v18[2];
            *v12 = v25;
            v18[2] = v132;
            *v18 = v108;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          v129 = v12[2];
          v105 = *v12;
          v21 = *v9;
          v12[2] = *(a2 - 1);
          *v12 = v21;
          goto LABEL_28;
        }

        v135 = v12[2];
        v111 = *v12;
        v28 = *v18;
        v12[2] = v18[2];
        *v12 = v28;
        v18[2] = v135;
        *v18 = v111;
        if (*v9 < *v18)
        {
          v129 = v18[2];
          v105 = *v18;
          v29 = *v9;
          v18[2] = *(a2 - 1);
          *v18 = v29;
LABEL_28:
          *v9 = v105;
          *(a2 - 1) = v129;
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
          v136 = v32[2];
          v112 = *v32;
          v39 = *v10;
          v32[2] = *(a2 - 4);
          *v32 = v39;
          *v10 = v112;
          *(a2 - 4) = v136;
          if (*v32 < *v30)
          {
            v40 = *v30;
            v137 = v12[5];
            v41 = v32[2];
            *v30 = *v32;
            v12[5] = v41;
            v32[2] = v137;
            *v32 = v40;
          }
        }
      }

      else if (v35 >= v33)
      {
        v44 = *v30;
        v139 = v12[5];
        v45 = v32[2];
        *v30 = *v32;
        v12[5] = v45;
        v32[2] = v139;
        *v32 = v44;
        if (*v10 < *v32)
        {
          v140 = v32[2];
          v114 = *v32;
          v46 = *v10;
          v32[2] = *(a2 - 4);
          *v32 = v46;
          *v10 = v114;
          *(a2 - 4) = v140;
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
          v141 = v49[2];
          v115 = *v49;
          v56 = *v11;
          v49[2] = *(a2 - 7);
          *v49 = v56;
          *v11 = v115;
          *(a2 - 7) = v141;
          if (*v49 < *v47)
          {
            v57 = *v47;
            v142 = v12[8];
            v58 = v49[2];
            *v47 = *v49;
            v12[8] = v58;
            v49[2] = v142;
            *v49 = v57;
          }
        }
      }

      else if (v52 >= v50)
      {
        v59 = *v47;
        v143 = v12[8];
        v60 = v49[2];
        *v47 = *v49;
        v12[8] = v60;
        v49[2] = v143;
        *v49 = v59;
        if (*v11 < *v49)
        {
          v144 = v49[2];
          v116 = *v49;
          v61 = *v11;
          v49[2] = *(a2 - 7);
          *v49 = v61;
          *v11 = v116;
          *(a2 - 7) = v144;
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
          v146 = v18[2];
          v118 = *v18;
          *v18 = *v49;
          v18[2] = v49[2];
          v49[2] = v146;
          *v49 = v118;
          if (*v18 < *v32)
          {
            v147 = v32[2];
            v119 = *v32;
            *v32 = *v18;
            v32[2] = v18[2];
            v18[2] = v147;
            *v18 = v119;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v145 = v32[2];
          v117 = *v32;
          *v32 = *v49;
          v32[2] = v49[2];
          goto LABEL_56;
        }

        v148 = v32[2];
        v120 = *v32;
        *v32 = *v18;
        v32[2] = v18[2];
        v18[2] = v148;
        *v18 = v120;
        if (*v49 < *v18)
        {
          v145 = v18[2];
          v117 = *v18;
          *v18 = *v49;
          v18[2] = v49[2];
LABEL_56:
          v49[2] = v145;
          *v49 = v117;
        }
      }

      v149 = v12[2];
      v121 = *v12;
      v64 = *v18;
      v12[2] = v18[2];
      *v12 = v64;
      v18[2] = v149;
      *v18 = v121;
      goto LABEL_58;
    }

    v22 = *v12;
    if (*v12 >= *v18)
    {
      if (v19 < v22)
      {
        v133 = v12[2];
        v109 = *v12;
        v26 = *v9;
        v12[2] = *(a2 - 1);
        *v12 = v26;
        *v9 = v109;
        *(a2 - 1) = v133;
        if (*v12 < *v18)
        {
          v134 = v18[2];
          v110 = *v18;
          v27 = *v12;
          v18[2] = v12[2];
          *v18 = v27;
          v12[2] = v134;
          *v12 = v110;
        }
      }
    }

    else
    {
      if (v19 < v22)
      {
        v130 = v18[2];
        v106 = *v18;
        v23 = *v9;
        v18[2] = *(a2 - 1);
        *v18 = v23;
LABEL_37:
        *v9 = v106;
        *(a2 - 1) = v130;
        goto LABEL_58;
      }

      v138 = v18[2];
      v113 = *v18;
      v42 = *v12;
      v18[2] = v12[2];
      *v18 = v42;
      v12[2] = v138;
      *v12 = v113;
      if (*v9 < *v12)
      {
        v130 = v12[2];
        v106 = *v12;
        v43 = *v9;
        v12[2] = *(a2 - 1);
        *v12 = v43;
        goto LABEL_37;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && *(v12 - 3) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer64,unsigned long long> *,std::__less<void,void> &>(v12, a2);
      goto LABEL_65;
    }

    v65 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer64,unsigned long long> *,std::__less<void,void> &>(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_63;
    }

    v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>(v12, v65, v66);
    v12 = (v65 + 3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>((v65 + 3), a2, v69))
    {
      a4 = -v14;
      a2 = v65;
      if (v68)
      {
        goto LABEL_109;
      }

      goto LABEL_2;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(a1, v65, a3, -v14, a5 & 1);
      v12 = (v65 + 3);
LABEL_65:
      a5 = 0;
      a4 = -v14;
      goto LABEL_3;
    }
  }

  if (v12 == a2)
  {
    goto LABEL_109;
  }

  v86 = *MEMORY[0x1E69E9840];

  std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,TRangeValue<Pointer64,unsigned long long> *>(v12, a2, a2, a3);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
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

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
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
          v11 = *(v4 + 32);
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
          *(v9 + 8) = v11;
        }

        v2 = v5 + 24;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 24 != a2);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer64,unsigned long long> *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v15 = *(a1 + 1);
  if (*a1 >= *(a2 - 24))
  {
    v5 = a1 + 3;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 3;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[3];
      v3 += 3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 24);
      a2 -= 24;
    }

    while (v2 < v6);
  }

  while (v3 < a2)
  {
    v14 = v3[2];
    v13 = *v3;
    v7 = *a2;
    v3[2] = *(a2 + 16);
    *v3 = v7;
    *(a2 + 16) = v14;
    *a2 = v13;
    do
    {
      v8 = v3[3];
      v3 += 3;
    }

    while (v2 >= v8);
    do
    {
      v9 = *(a2 - 24);
      a2 -= 24;
    }

    while (v2 < v9);
  }

  if (v3 - 3 != a1)
  {
    v10 = *(v3 - 3);
    a1[2] = *(v3 - 1);
    *a1 = v10;
  }

  *(v3 - 3) = v2;
  *(v3 - 1) = v15;
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer64,unsigned long long> *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v18 = *(a1 + 1);
  do
  {
    v4 = a1[v2 + 3];
    v2 += 3;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 3)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v6 = *(a2 - 24);
      a2 -= 24;
    }

    while (v6 >= v3);
  }

  v8 = &a1[v2];
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      v11 = v8[2];
      v12 = *(v9 + 16);
      *v8 = *v9;
      v8[2] = v12;
      *(v9 + 16) = v11;
      *v9 = v10;
      do
      {
        v13 = v8[3];
        v8 += 3;
      }

      while (v13 < v3);
      do
      {
        v14 = *(v9 - 24);
        v9 -= 24;
      }

      while (v14 >= v3);
    }

    while (v8 < v9);
  }

  if (v8 - 3 != a1)
  {
    v15 = *(v8 - 3);
    a1[2] = *(v8 - 1);
    *a1 = v15;
  }

  *(v8 - 3) = v3;
  *(v8 - 1) = v18;
  v16 = *MEMORY[0x1E69E9840];
  return v8 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v66 = *MEMORY[0x1E69E9840];
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

          goto LABEL_50;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        goto LABEL_50;
      }

      if (v8 >= v7)
      {
        goto LABEL_50;
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

      goto LABEL_50;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
LABEL_50:
      result = 1;
      goto LABEL_51;
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
      goto LABEL_50;
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
      goto LABEL_50;
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
    goto LABEL_50;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      goto LABEL_50;
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
    goto LABEL_50;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_u64[0])
    {
      v65 = *(v47 + 8);
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
      *(v53 + 8) = v65;
      if (++v49 == 8)
      {
        break;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      goto LABEL_50;
    }
  }

  result = (v47 + 24) == a2;
LABEL_51:
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,TRangeValue<Pointer64,unsigned long long> *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>(a1, a4, v9, v12);
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
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>(a1, a4, v9, a1);
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
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>(a1, (v21 + 3), a4, 0xAAAAAAAAAAAAAAABLL * (v21 + 3 - a1));
        }
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 >= a3)
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
          v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
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
          v6 = (result + 24 * v12);
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
        *(a4 + 1) = v16;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 24 * v4);
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
        v5 = (result + 24 * v4);
      }

      while (*v5 < v7);
      *v6 = v7;
      *(v6 + 8) = v11;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::vector<TRangeValue<Pointer64,unsigned long long>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer64,unsigned long long>*,TRangeValue<Pointer64,unsigned long long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TRangeValue<Pointer64,unsigned long long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D970FD24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TRangeValue<Pointer64,unsigned long long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

unsigned int **FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Section>,FlatbufferSymbols::Section const*,unsigned char const*,unsigned int>>@<X0>(unsigned int **a1@<X1>, unsigned int **a2@<X2>, unsigned int *a3@<X3>, uint64_t a4@<X4>, unsigned int **a5@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v25 = a3;
  v27 = v11;
  v28 = v10;
  result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>(&v28, &v27, &v25, &v26);
  v13 = v26;
  v14 = *a1;
  v15 = v26;
  if (v26 != *a1)
  {
    v15 = v26;
    v16 = v26;
    do
    {
      v18 = *--v16;
      v17 = v18;
      v19 = v18 - *(v15 + v18 - 4);
      v20 = *(v15 + v19 - 4);
      if (v20 < 7)
      {
        break;
      }

      v21 = *(v15 + v19 + 2) ? *(v15 + v17 + *(v15 + v19 + 2) - 4) : -1;
      if (v20 < 9)
      {
        break;
      }

      v22 = *(v15 + v19 + 4);
      if (!v22)
      {
        break;
      }

      if (a3 - v21 >= *(v15 + v17 + v22 - 4))
      {
        break;
      }

      v26 = v16;
      v15 = v16;
    }

    while (v16 != v14);
  }

  if (a3 != (a3 + a4 - 1))
  {
    v23 = *a2;
    v24 = a3 + a4 - 1;
    v27 = v23;
    v28 = v15;
    result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Segment>,FlatbufferSymbols::Segment const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>(&v28, &v27, &v24, &v25);
    v13 = v25;
    v15 = v26;
  }

  if (v15 == v13)
  {
    v15 = *a2;
    v13 = *a2;
  }

  *a5 = v15;
  a5[1] = v13;
  return result;
}

unsigned int **std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,StringComparison &,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,char const*,std::__identity>@<X0>(unsigned int **result@<X0>, char **a2@<X1>, const char **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  v6 = *a2;
  if ((*a2 - *result + 3) < 7)
  {
LABEL_8:
    *a4 = v5;
    *(a4 + 8) = v5;
  }

  else
  {
    v8 = result;
    v9 = (*a2 - *result) / 4;
    while (1)
    {
      while (1)
      {
        v10 = v9 >> 1;
        v11 = (2 * v9) & 0xFFFFFFFC;
        v12 = v5 + v11;
        v13 = (v5 + v11 + *(v5 + v11));
        v14 = v13 + *(v13 - *v13 + 4);
        result = strcmp(&v14[*v14 + 4], *a3);
        if ((result & 0x80000000) == 0)
        {
          break;
        }

        v5 = (v12 + 4);
        *v8 = v12 + 4;
        v9 += ~v10;
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      if (!result)
      {
        break;
      }

      v6 = v5 + v11;
      v9 >>= 1;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v17 = v5;
    std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,char const*,std::__identity,StringComparison>(&v17, a3, v11 >> 2, &v16);
    v17 = (v12 + 4);
    v15 = v6;
    result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,StringComparison &,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,char const*,std::__identity &>(&v17, &v15, a3, (a4 + 8));
    *a4 = v16;
  }

  return result;
}

unsigned int **std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,StringComparison &,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,char const*,std::__identity &>@<X0>(unsigned int **result@<X0>, void *a2@<X1>, const char **a3@<X2>, unsigned int **a4@<X8>)
{
  v5 = *result;
  if ((*a2 - *result + 3) >= 7)
  {
    v7 = result;
    v8 = (*a2 - *result) / 4;
    do
    {
      v9 = v8 >> 1;
      v10 = (v5 + ((2 * v8) & 0xFFFFFFFC));
      v11 = v10 + *v10 + *(v10 + *v10 - *(v10 + *v10) + 4);
      result = strcmp(&v11[*v11 + 4], *a3);
      if (result <= 0)
      {
        v5 = v10 + 1;
        *v7 = v10 + 1;
        v9 = v8 + ~v9;
      }

      v8 = v9;
    }

    while (v9);
  }

  *a4 = v5;
  return result;
}

unsigned int **std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SymbolNameEntry>,FlatbufferSymbols::SymbolNameEntry const*,unsigned char const*,unsigned int>,char const*,std::__identity,StringComparison>@<X0>(unsigned int **result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, unsigned int **a4@<X8>)
{
  v5 = *result;
  if (a3)
  {
    v6 = a3;
    v8 = result;
    do
    {
      v9 = v6 >> 1;
      v10 = (v5 + ((2 * v6) & 0xFFFFFFFC));
      v11 = v10 + *v10 + *(v10 + *v10 - *(v10 + *v10) + 4);
      result = strcmp(&v11[*v11 + 4], *a2);
      if ((result & 0x80000000) != 0)
      {
        v5 = v10 + 1;
        *v8 = v10 + 1;
        v9 = v6 + ~v9;
      }

      v6 = v9;
    }

    while (v9);
  }

  *a4 = v5;
  return result;
}

unsigned int **FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>@<X0>(unsigned int **a1@<X1>, unsigned int **a2@<X2>, unsigned int *a3@<X3>, uint64_t a4@<X4>, unsigned int **a5@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v26 = a3;
  v28 = v11;
  v29 = v10;
  result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>(&v29, &v28, &v26, &v27);
  v13 = v27;
  v14 = *a1;
  v15 = v27;
  if (v27 != *a1)
  {
    v16 = v27 - 1;
    v15 = v27;
    while (1)
    {
      v17 = *v16;
      v18 = v17 - *(v16 + v17);
      v19 = *(v16 + v18);
      if (v19 < 5)
      {
        break;
      }

      if (*(v16 + v18 + 4))
      {
        v20 = *(v16 + v17 + *(v16 + v18 + 4));
      }

      else
      {
        v20 = -1;
      }

      if (v19 < 7)
      {
        goto LABEL_14;
      }

      v21 = *(v16 + v18 + 6);
      if (!v21 || a3 - v20 >= *(v16 + v17 + v21))
      {
        goto LABEL_14;
      }

      --v15;
      v27 = v16;
      v22 = v16 - 1;
      if (v16-- == v14)
      {
        v15 = v22 + 1;
        goto LABEL_14;
      }
    }

    v15 = v16 + 1;
  }

LABEL_14:
  if (a3 != (a3 + a4 - 1))
  {
    v24 = *a2;
    v25 = a3 + a4 - 1;
    v28 = v24;
    v29 = v15;
    result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>(&v29, &v28, &v25, &v26);
    v13 = v26;
    v15 = v27;
  }

  if (v15 == v13)
  {
    v15 = *a2;
    v13 = *a2;
  }

  *a5 = v15;
  a5[1] = v13;
  return result;
}

uint64_t FlatbufferSymbols::Symbol::source_infos(FlatbufferSymbols::Symbol *this)
{
  v1 = (this - *this);
  if (*v1 >= 0xDu && (v2 = v1[6]) != 0)
  {
    return this + v2 + *(this + v2);
  }

  else
  {
    return 0;
  }
}

unsigned int **FlatbufferSymbolOwnerData::findUpperAndLowerRangeForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>>@<X0>(unsigned int **a1@<X1>, unsigned int **a2@<X2>, unsigned int *a3@<X3>, uint64_t a4@<X4>, unsigned int **a5@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v25 = a3;
  v27 = v11;
  v28 = v10;
  result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>(&v28, &v27, &v25, &v26);
  v13 = v26;
  v14 = *a1;
  v15 = v26;
  if (v26 != *a1)
  {
    v15 = v26;
    v16 = v26;
    do
    {
      v18 = *--v16;
      v17 = v18;
      v19 = v18 - *(v15 + v18 - 4);
      v20 = *(v15 + v19 - 4);
      if (v20 < 0xD)
      {
        break;
      }

      v21 = *(v15 + v19 + 8) ? *(v15 + v17 + *(v15 + v19 + 8) - 4) : -1;
      if (v20 < 0xF)
      {
        break;
      }

      v22 = *(v15 + v19 + 10);
      if (!v22)
      {
        break;
      }

      if (a3 - v21 >= *(v15 + v17 + v22 - 4))
      {
        break;
      }

      v26 = v16;
      v15 = v16;
    }

    while (v16 != v14);
  }

  if (a3 != (a3 + a4 - 1))
  {
    v23 = *a2;
    v24 = a3 + a4 - 1;
    v27 = v23;
    v28 = v15;
    result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>(&v28, &v27, &v24, &v25);
    v13 = v25;
    v15 = v26;
  }

  if (v15 == v13)
  {
    v15 = *a2;
    v13 = *a2;
  }

  *a5 = v15;
  a5[1] = v13;
  return result;
}

unsigned int **std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>@<X0>(unsigned int **result@<X0>, unsigned int **a2@<X1>, unint64_t *a3@<X2>, unsigned int **a4@<X8>)
{
  v4 = *result;
  v5 = *a2 - *result;
  if ((v5 + 3) >= 7)
  {
    v6 = *a2 == *result;
    v7 = v5 / 4;
    v8 = *a3;
    do
    {
      v9 = (v4 + ((2 * v7) & 0xFFFFFFFC));
      v10 = (v9 + *v9);
      v11 = (v10 - *v10);
      if (*v11 >= 0xDu && (v12 = v11[6]) != 0)
      {
        v13 = *(v10 + v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v7 >> 1;
      if (v13 <= v8)
      {
        v4 = v9 + 1;
        *result = v9 + 1;
        v14 = v7 + ~v14;
      }

      v7 = v14;
    }

    while (v14);
  }

  *a4 = v4;
  return result;
}

uint64_t FlatbufferSymbols::Symbol::inline_symbols(FlatbufferSymbols::Symbol *this)
{
  v1 = (this - *this);
  if (*v1 >= 0x11u && (v2 = v1[8]) != 0)
  {
    return this + v2 + *(this + v2);
  }

  else
  {
    return 0;
  }
}

_DWORD *FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Symbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::Symbol::*)(void)const,FlatbufferSymbols::InlineSymbol const*>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v8 + a3);
  }

  result = a3(v8);
  if (result)
  {
    v10 = result;
    v11 = result + 1;
    v13 = result + 1;
    v12 = (result + (4 * *result) + 4);
    FlatbufferSymbolOwnerData::findMatchingEntryForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>(&v13, &v12, a5, a6, &v14);
    if (v14 == (v11 + (4 * *v10)))
    {
      return 0;
    }

    else
    {
      return (v14 + *v14);
    }
  }

  return result;
}

_DWORD *FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::Symbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,unsigned int> const* (FlatbufferSymbols::Symbol::*)(void)const,FlatbufferSymbols::SourceInfo const*>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v8 + a3);
  }

  result = a3(v8);
  if (result)
  {
    v10 = result;
    v11 = result + 1;
    v13 = result + 1;
    v12 = (result + (4 * *result) + 4);
    FlatbufferSymbolOwnerData::findMatchingEntryForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>>(&v13, &v12, a5, a6, &v14);
    if (v14 == (v11 + (4 * *v10)))
    {
      return 0;
    }

    else
    {
      return (v14 + *v14);
    }
  }

  return result;
}

unsigned int **FlatbufferSymbolOwnerData::findMatchingEntryForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>>@<X0>(unsigned int **a1@<X1>, unsigned int **a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unsigned int **a5@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v20 = a3;
  v22 = v11;
  v23 = v10;
  result = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,AddressComparison,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>,flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SourceInfo>,FlatbufferSymbols::SourceInfo const*,unsigned char const*,unsigned int>,unsigned long long,std::__identity>(&v23, &v22, &v20, &v21);
  if (v21 == *a1)
  {
    goto LABEL_13;
  }

  v13 = v21 - 1;
  v14 = (v21 + *(v21 - 1) - 4);
  v15 = (v14 - *v14);
  v16 = *v15;
  if (v16 < 0xD)
  {
    v18 = 0;
    v17 = -1;
  }

  else
  {
    v17 = v15[6] ? *(v14 + v15[6]) : -1;
    if (v16 >= 0xF && (v19 = v15[7]) != 0)
    {
      v18 = *(v14 + v19);
    }

    else
    {
      v18 = 0;
    }
  }

  if (a3 < v17 || a4 + a3 > v18 + v17)
  {
LABEL_13:
    v13 = *a2;
  }

  *a5 = v13;
  return result;
}

uint64_t FlatbufferSymbols::InlineSymbol::inline_symbols(FlatbufferSymbols::InlineSymbol *this)
{
  v1 = (this - *this);
  if (*v1 >= 0xFu && (v2 = v1[7]) != 0)
  {
    return this + v2 + *(this + v2);
  }

  else
  {
    return 0;
  }
}

_DWORD *FlatbufferSymbolOwnerData::findMatchingEntryInFlatbufferTypeWithVMAddressRange<FlatbufferSymbols::InlineSymbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::InlineSymbol::*)(void)const,FlatbufferSymbols::InlineSymbol const*>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v8 + a3);
  }

  result = a3(v8);
  if (result)
  {
    v10 = result;
    v11 = result + 1;
    v13 = result + 1;
    v12 = (result + (4 * *result) + 4);
    FlatbufferSymbolOwnerData::findMatchingEntryForVMAddressRange<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::Symbol>,FlatbufferSymbols::Symbol const*,unsigned char const*,unsigned int>>(&v13, &v12, a5, a6, &v14);
    if (v14 == (v11 + (4 * *v10)))
    {
      return 0;
    }

    else
    {
      return (v14 + *v14);
    }
  }

  return result;
}

void std::vector<_CSTypeRef>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100](a1, v10);
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

void std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t FlatbufferSymbolOwnerData::forEachElementInFlatbufferTypeWithAccessor<FlatbufferSymbols::InlineSymbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::InlineSymbol::*)(void)const,unsigned long FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::InlineSymbol const>(CSCppSymbolOwner *,FlatbufferSymbols::InlineSymbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))::{lambda(FlatbufferSymbols::InlineSymbol const*)#1}>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t **a5)
{
  if (!a2)
  {
    return 0;
  }

  v6 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v6 + a3);
  }

  v7 = a3(v6);
  if (v7)
  {
    v8 = *v7;
    v9 = 4 * *v7;
    if (v9)
    {
      v10 = v7 + 1;
      v11 = v7 + 1;
      do
      {
        v12 = *v11++;
        FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::InlineSymbol const>(CSCppSymbolOwner *,FlatbufferSymbols::InlineSymbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))const::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}>(a5, v10 + v12, a5);
        v10 = v11;
        v9 -= 4;
      }

      while (v9);
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::InlineSymbol const>(CSCppSymbolOwner *,FlatbufferSymbols::InlineSymbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))const::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[7];
  v7 = *(a1 + 6);
  v8 = (a2 - *a2);
  v9 = *v8;
  if (v9 < 5)
  {
    v11 = 0;
    v10 = -1;
  }

  else
  {
    if (v8[2])
    {
      v10 = *(a2 + v8[2]);
    }

    else
    {
      v10 = -1;
    }

    if (v9 >= 7 && (v12 = v8[3]) != 0)
    {
      v11 = *(a2 + v12);
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = *a1[2];
  *&v48 = 0;
  v14 = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v13, &v48);
  v15 = v14;
  if (v14)
  {
    v16 = v48;
  }

  else
  {
    v16 = 0;
  }

  if (v7 == -1)
  {
    v17 = a1[2];
    v18 = v10 - *v17;
    if (v10 > *v17)
    {
      if (v14)
      {
        v19 = *a1[1];
        v20 = **a1;
        v21 = (*a1)[1];
        ++*a1[5];
        v22 = a1[4];
        if (v22)
        {
          (v22[2])(v22, v16, v18);
          v17 = a1[2];
        }
      }

      *v17 = v10;
      *&v48 = 0;
      v15 = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v10, &v48);
      if (v15)
      {
        v16 = v48;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  v23 = (a2 - *a2);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = a2 + v24 + *(a2 + v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = *a1;
  *&v48 = a1[6] | 2;
  *(&v48 + 1) = a2 | 1;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](v26, &v48);
  v27 = a1[1];
  if (v25)
  {
    *&v48 = a1[6] | 6;
    *(&v48 + 1) = v25;
  }

  else
  {
    v48 = a1[6];
  }

  std::vector<_CSTypeRef>::push_back[abi:ne200100](v27, &v48);
  v28 = v11 + v10;
  v47 = v11 + v10;
  if (*(a1 + 6) + 1 == ((*a1)[1] - **a1) >> 4)
  {
    *&v48 = 0;
    result = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v10, &v48);
    if (result)
    {
      v30 = v48;
      v31 = *a1[1];
      v32 = **a1;
      v33 = (*a1)[1];
      ++*a1[5];
      result = a1[4];
      if (result)
      {
        result = (*(result + 16))(result, v30, v11);
      }
    }
  }

  else
  {
    result = FlatbufferSymbolOwnerData::forEachElementInFlatbufferTypeWithAccessor<FlatbufferSymbols::InlineSymbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::InlineSymbol::*)(void)const,void unsigned long FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::InlineSymbol const>(CSCppSymbolOwner *,FlatbufferSymbols::InlineSymbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}> const(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)::{lambda(FlatbufferSymbols::InlineSymbol const*)#1}>(v6, a2, FlatbufferSymbols::InlineSymbol::inline_symbols, 0, a3, &v47);
  }

  if (v7 == -1)
  {
    v34 = v47;
    v35 = a1[2];
    v36 = *v35;
    v37 = v47 - *v35;
    if (v47 > *v35)
    {
      if (v15)
      {
        v38 = *a1[1];
        v39 = **a1;
        v40 = (*a1)[1];
        ++*a1[5];
        v41 = a1[4];
        if (v41)
        {
          (v41[2])(v41, v16, v37);
          v34 = v47;
          v35 = a1[2];
        }
      }

      *v35 = v34;
      *&v48 = 0;
      result = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v34, &v48);
      v15 = result;
      if (result)
      {
        v16 = v48;
      }

      else
      {
        v16 = 0;
      }

      v35 = a1[2];
      v36 = *v35;
    }

    v42 = v28 - v36;
    if (v28 > v36)
    {
      if (v15)
      {
        v43 = *a1[1];
        v44 = **a1;
        v45 = (*a1)[1];
        ++*a1[5];
        v46 = a1[4];
        if (v46)
        {
          (v46[2])(v46, v16, v42);
          v35 = a1[2];
        }
      }

      *v35 = v28;
      *&v48 = 0;
      result = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v11 + v10, &v48);
    }
  }

  (*a1)[1] -= 16;
  a1[1][1] -= 16;
  return result;
}

uint64_t FlatbufferSymbolOwnerData::forEachElementInFlatbufferTypeWithAccessor<FlatbufferSymbols::InlineSymbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::InlineSymbol::*)(void)const,void unsigned long FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::InlineSymbol const>(CSCppSymbolOwner *,FlatbufferSymbols::InlineSymbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}> const(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)::{lambda(FlatbufferSymbols::InlineSymbol const*)#1}>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, void *a6)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v8 + a3);
  }

  v9 = a3(v8);
  if (v9)
  {
    v10 = v9;
    v11 = *v9;
    v12 = (4 * *v9);
    if (v12)
    {
      for (i = 0; i != v12; i += 4)
      {
        v14 = &v10[i / 4];
        v15 = v10[i / 4 + 1];
        v16 = &v10[i / 4] + v15;
        FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::InlineSymbol const>(CSCppSymbolOwner *,FlatbufferSymbols::InlineSymbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))const::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::InlineSymbol const&)#1}>(a5, v16 + 4, a5);
        v17 = v15 - *(v16 + 1);
        v18 = *(&v10[i / 4 + 1] + v17);
        if (v18 < 5)
        {
          v20 = 0;
          v19 = -1;
        }

        else
        {
          if (*(v14 + v17 + 8))
          {
            v19 = *(&v10[i / 4 + 1] + v15 + *(v14 + v17 + 8));
          }

          else
          {
            v19 = -1;
          }

          if (v18 < 7)
          {
            v20 = 0;
          }

          else
          {
            v20 = *(&v10[i / 4 + 2] + v17 + 2);
            if (v20)
            {
              v20 = *(&v10[i / 4 + 1] + v15 + v20);
            }
          }
        }

        *a6 = v20 + v19;
      }
    }
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t FlatbufferSymbolOwnerData::forEachElementInFlatbufferTypeWithAccessor<FlatbufferSymbols::Symbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::Symbol::*)(void)const,unsigned long FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::Symbol const>(CSCppSymbolOwner *,FlatbufferSymbols::Symbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))::{lambda(FlatbufferSymbols::InlineSymbol const*)#1}>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t **a5)
{
  if (!a2)
  {
    return 0;
  }

  v6 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v6 + a3);
  }

  v7 = a3(v6);
  if (v7)
  {
    v8 = *v7;
    v9 = 4 * *v7;
    if (v9)
    {
      v10 = v7 + 1;
      v11 = v7 + 1;
      do
      {
        v12 = *v11++;
        FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::Symbol const>(CSCppSymbolOwner *,FlatbufferSymbols::Symbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))const::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}>(a5, v10 + v12, a5);
        v10 = v11;
        v9 -= 4;
      }

      while (v9);
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::Symbol const>(CSCppSymbolOwner *,FlatbufferSymbols::Symbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))const::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[7];
  v7 = *(a1 + 6);
  v8 = (a2 - *a2);
  v9 = *v8;
  if (v9 < 5)
  {
    v11 = 0;
    v10 = -1;
  }

  else
  {
    if (v8[2])
    {
      v10 = *(a2 + v8[2]);
    }

    else
    {
      v10 = -1;
    }

    if (v9 >= 7 && (v12 = v8[3]) != 0)
    {
      v11 = *(a2 + v12);
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = *a1[2];
  *&v48 = 0;
  v14 = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v13, &v48);
  v15 = v14;
  if (v14)
  {
    v16 = v48;
  }

  else
  {
    v16 = 0;
  }

  if (v7 == -1)
  {
    v17 = a1[2];
    v18 = v10 - *v17;
    if (v10 > *v17)
    {
      if (v14)
      {
        v19 = *a1[1];
        v20 = **a1;
        v21 = (*a1)[1];
        ++*a1[5];
        v22 = a1[4];
        if (v22)
        {
          (v22[2])(v22, v16, v18);
          v17 = a1[2];
        }
      }

      *v17 = v10;
      *&v48 = 0;
      v15 = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v10, &v48);
      if (v15)
      {
        v16 = v48;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  v23 = (a2 - *a2);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = a2 + v24 + *(a2 + v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = *a1;
  *&v48 = a1[6] | 2;
  *(&v48 + 1) = a2 | 1;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](v26, &v48);
  v27 = a1[1];
  if (v25)
  {
    *&v48 = a1[6] | 6;
    *(&v48 + 1) = v25;
  }

  else
  {
    v48 = a1[6];
  }

  std::vector<_CSTypeRef>::push_back[abi:ne200100](v27, &v48);
  v28 = v11 + v10;
  v47 = v11 + v10;
  if (*(a1 + 6) + 1 == ((*a1)[1] - **a1) >> 4)
  {
    *&v48 = 0;
    result = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v10, &v48);
    if (result)
    {
      v30 = v48;
      v31 = *a1[1];
      v32 = **a1;
      v33 = (*a1)[1];
      ++*a1[5];
      result = a1[4];
      if (result)
      {
        result = (*(result + 16))(result, v30, v11);
      }
    }
  }

  else
  {
    result = FlatbufferSymbolOwnerData::forEachElementInFlatbufferTypeWithAccessor<FlatbufferSymbols::InlineSymbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::InlineSymbol::*)(void)const,void unsigned long FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::Symbol const>(CSCppSymbolOwner *,FlatbufferSymbols::Symbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}> const(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)::{lambda(FlatbufferSymbols::InlineSymbol const*)#1}>(v6, a2, FlatbufferSymbols::InlineSymbol::inline_symbols, 0, a3, &v47);
  }

  if (v7 == -1)
  {
    v34 = v47;
    v35 = a1[2];
    v36 = *v35;
    v37 = v47 - *v35;
    if (v47 > *v35)
    {
      if (v15)
      {
        v38 = *a1[1];
        v39 = **a1;
        v40 = (*a1)[1];
        ++*a1[5];
        v41 = a1[4];
        if (v41)
        {
          (v41[2])(v41, v16, v37);
          v34 = v47;
          v35 = a1[2];
        }
      }

      *v35 = v34;
      *&v48 = 0;
      result = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v34, &v48);
      v15 = result;
      if (result)
      {
        v16 = v48;
      }

      else
      {
        v16 = 0;
      }

      v35 = a1[2];
      v36 = *v35;
    }

    v42 = v28 - v36;
    if (v28 > v36)
    {
      if (v15)
      {
        v43 = *a1[1];
        v44 = **a1;
        v45 = (*a1)[1];
        ++*a1[5];
        v46 = a1[4];
        if (v46)
        {
          (v46[2])(v46, v16, v42);
          v35 = a1[2];
        }
      }

      *v35 = v28;
      *&v48 = 0;
      result = TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 160), v11 + v10, &v48);
    }
  }

  (*a1)[1] -= 16;
  a1[1][1] -= 16;
  return result;
}

uint64_t FlatbufferSymbolOwnerData::forEachElementInFlatbufferTypeWithAccessor<FlatbufferSymbols::InlineSymbol,flatbuffers::Vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>,unsigned int> const* (FlatbufferSymbols::InlineSymbol::*)(void)const,void unsigned long FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::Symbol const>(CSCppSymbolOwner *,FlatbufferSymbols::Symbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}> const(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)::{lambda(FlatbufferSymbols::InlineSymbol const*)#1}>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, void *a6)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v8 + a3);
  }

  v9 = a3(v8);
  if (v9)
  {
    v10 = v9;
    v11 = *v9;
    v12 = (4 * *v9);
    if (v12)
    {
      for (i = 0; i != v12; i += 4)
      {
        v14 = &v10[i / 4];
        v15 = v10[i / 4 + 1];
        v16 = &v10[i / 4] + v15;
        FlatbufferSymbolOwnerData::for_each_inline_range_for_symbol_at_depth_impl<FlatbufferSymbols::Symbol const>(CSCppSymbolOwner *,FlatbufferSymbols::Symbol const *,int,void({block_pointer})(_CSRange,_CSTypeRef *,_CSTypeRef *,unsigned long))const::{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}::operator()<{lambda(FlatbufferSymbols::InlineSymbol const*,FlatbufferSymbols::Symbol const&)#1}>(a5, v16 + 4, a5);
        v17 = v15 - *(v16 + 1);
        v18 = *(&v10[i / 4 + 1] + v17);
        if (v18 < 5)
        {
          v20 = 0;
          v19 = -1;
        }

        else
        {
          if (*(v14 + v17 + 8))
          {
            v19 = *(&v10[i / 4 + 1] + v15 + *(v14 + v17 + 8));
          }

          else
          {
            v19 = -1;
          }

          if (v18 < 7)
          {
            v20 = 0;
          }

          else
          {
            v20 = *(&v10[i / 4 + 2] + v17 + 2);
            if (v20)
            {
              v20 = *(&v10[i / 4 + 1] + v15 + v20);
            }
          }
        }

        *a6 = v20 + v19;
      }
    }
  }

  else
  {
    return 0;
  }

  return v11;
}

void CSCppTextSectionDataDescriptor::get_text_section<Pointer64>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 144));
  CSCppTextSectionDataDescriptor::_get_text_section_locked<Pointer64>(a1, a2, a3);
  std::mutex::unlock((a1 + 144));
}

void CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a1[10] & 1) == 0)
  {
    *a4 = *a1;
    *(a4 + 16) = a1[2];
    return;
  }

  v8 = *a1;
  if (a2 < *a1 || (v9 = a2, a3 + a2 > a1[1] + v8))
  {
    v9 = v8 + a2 - a1[14];
  }

  if (v9 < v8 || v9 + a3 > a1[1] + v8)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  std::mutex::lock((a1 + 18));
  v10 = v9 - *a1 + a1[14] + a1[15];
  v11 = (a1 + 4);
  for (i = a1[4]; i; i = i[v10 >= i[4]])
  {
    if (v10 < i[4])
    {
      v11 = i;
    }
  }

  if (v11 == a1[3])
  {
    goto LABEL_28;
  }

  v13 = *v11;
  if (*v11)
  {
    do
    {
      v14 = v13;
      v13 = v13[1];
    }

    while (v13);
  }

  else
  {
    do
    {
      v14 = v11[2];
      v15 = *v14 == v11;
      v11 = v14;
    }

    while (v15);
  }

  v17 = v14[4];
  v16 = v14[5];
  v18 = v10 + a3;
  v19 = v16 + v17;
  if (v10 < v17 || v18 > v19)
  {
    if (v17 >= v10 && v19 <= v18)
    {
      std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer(a1 + 3, v14);
      operator delete(v14);
    }

LABEL_28:
    if (*(a1 + 48) != 1)
    {
      if (*(a1 + 79) < 0)
      {
        v22 = a1[7];
      }

      operator new();
    }

    *a4 = *a1;
    *(a4 + 16) = a1[2];
    goto LABEL_49;
  }

  v23 = a2 - v10 + v17;
  v24 = v10 - a2 - v17;
  v25 = v16 - v24;
  v26 = v14[6] + v24;
  v27 = v17 >= v10 - a2;
  v28 = v17 - (v10 - a2);
  if (v27)
  {
    v29 = v14[6];
  }

  else
  {
    v29 = v26;
  }

  if (v27)
  {
    v30 = v14[5];
  }

  else
  {
    v30 = v25;
  }

  if (v27)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0;
  }

  if (v10 > a2)
  {
    v32 = v29;
  }

  else
  {
    v32 = v14[6];
  }

  if (v10 <= a2)
  {
    v33 = v23;
  }

  else
  {
    v16 = v30;
    v33 = v31;
  }

  *a4 = v33;
  *(a4 + 8) = v16;
  *(a4 + 16) = v32;
LABEL_49:
  std::mutex::unlock((a1 + 18));
}

void sub_1D9711888(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  std::mutex::unlock((v1 + 144));
  _Unwind_Resume(a1);
}

uint64_t CSCppTextSectionDataDescriptor::_get_text_section_locked<Pointer64>@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = result;
  if (*(result + 96) == *(result + 88) && *(result + 208) != 1)
  {
    *(result + 208) = 1;
    v7 = *(a2 + 112);
    is_little_endian = CSCppArchitecture::is_little_endian(&v7);
    result = CSCppArchitecture::is_64_bit(&v7);
    if (is_little_endian)
    {
      if (result)
      {
        return CSCppTextSectionDataDescriptor::_fault_text<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(v3, a2, a3);
      }

      else
      {
        return CSCppTextSectionDataDescriptor::_fault_text<SizeAndEndianness<Pointer32,LittleEndian>,Pointer64>(v3, a2, a3);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }
  }

  else
  {
    *a3 = *result;
    a3[2] = *(result + 16);
  }

  return result;
}

uint64_t CSCppTextSectionDataDescriptor::_fault_text<SizeAndEndianness<Pointer32,LittleEndian>,Pointer64>@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = result;
  if (*(result + 16))
  {
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
  }

  else
  {
    if (*(result + 48) == 1)
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_local_shared_cache<SizeAndEndianness<Pointer32,LittleEndian>,Pointer64>();
    }

    if (*(a2 + 120))
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_path<SizeAndEndianness<Pointer32,LittleEndian>,Pointer64>();
    }

    result = (*(**(*(a2 + 8) + 32) + 40))(*(*(a2 + 8) + 32));
    if (result)
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_task<SizeAndEndianness<Pointer32,LittleEndian>,Pointer64>();
    }

    *(v3 + 136) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t CSCppTextSectionDataDescriptor::_fault_text<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = result;
  if (*(result + 16))
  {
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
  }

  else
  {
    if (*(result + 48) == 1)
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_local_shared_cache<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>();
    }

    if (*(a2 + 120))
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_path<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>();
    }

    result = (*(**(*(a2 + 8) + 32) + 40))(*(*(a2 + 8) + 32));
    if (result)
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_task<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>();
    }

    *(v3 + 136) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
  }

  return result;
}

void sub_1D9711EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
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

void sub_1D97123D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void sub_1D971274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
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

void sub_1D971291C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
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

uint64_t extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer32,LittleEndian>,Pointer64>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = &unk_1F5505288;
  v6 = *(a1 + 24);
  v9 = *(a1 + 8);
  v10 = v6;
  v11[0] = *(a1 + 40);
  *(v11 + 9) = *(a1 + 49);
  v12 = &v13;
  _iterate_macho_header_sections<SizeAndEndianness<Pointer32,LittleEndian>,TSection<SizeAndEndianness<Pointer32,LittleEndian>> * extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer32,LittleEndian>,Pointer64>(TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer32,LittleEndian>::SIZE> &,TRange<Pointer64>)::{lambda(TSection*<SizeAndEndianness<Pointer32,LittleEndian>>,BOOL *)#1}>(a1, v8);
  _update_symbol_owner_data_text_section_with_discovered_section<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a2, v13);
  return v13;
}

uint64_t TRawSymbolOwnerData<Pointer32>::footprint(void *a1)
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