uint64_t CSSymbolOwnerGetDsymPath(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 40);

  return v2();
}

UUID *CSSymbolOwnerGetUUID(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
  if (UUID::is_null(v2))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

UUID *CSSymbolOwnerGetCFUUIDBytes(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 16);
  if (UUID::is_null(v2))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t CSSymbolOwnerGetLastModifiedTimestamp(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 104);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerGetLoadTimestamp(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerGetUnloadTimestamp(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerGetFlags(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 108);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerGetBaseAddress(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return CSCppSymbolOwner::base_address((a2 & 0xFFFFFFFFFFFFFFFCLL));
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerGetCurrentVersion(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 48);

  return v2();
}

uint64_t CSSymbolOwnerGetCompatibilityVersion(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 56);

  return v2();
}

uint64_t CSSymbolOwnerGetVersion(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 200);
  FlagsForNonFaultingBehavior = CSSymbolicatorGetFlagsForNonFaultingBehavior();
  v5 = atomic_load((*(v2 + 1) + 40));
  if (v3)
  {
    return v2 + 168;
  }

  if ((v5 & FlagsForNonFaultingBehavior) != 0)
  {
    return 0;
  }

  v7 = *(*CSCppSymbolOwner::data(v2) + 64);

  return v7();
}

uint64_t CSSymbolOwnerIsMachO(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 108) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsProtected(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 108) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsAOut(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 108) >> 4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsDylib(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 108) >> 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsDylibStub(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 108) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsDyld(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 108) >> 6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsBundle(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 108) >> 7;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsObject(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 109) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsKextBundle(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 109) >> 4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsDsym(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 109) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsDyldSharedCache(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 109) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsSlid(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 109) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsPIE(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 109) >> 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsObjCRetainReleaseSupported(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (atomic_load_explicit((CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 12), memory_order_acquire) >> 10) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerIsObjCGCSupported(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (atomic_load_explicit((CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 12), memory_order_acquire) >> 11) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerGetSymbolicator(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  return 2;
}

uint64_t CSSymbolOwnerForeachSegment(char a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  if (a3)
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    if (v6 != v7)
    {
      v8 = *(v5 + 32);
      do
      {
        (*(a3 + 16))(a3, a2 | 7, v6);
        v8 += 32;
        v6 += 32;
      }

      while (v8 != v7);
    }
  }

  return (*(v5 + 40) - *(v5 + 32)) >> 5;
}

uint64_t CSSymbolOwnerForeachSection(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return CSCppSymbolOwner::sections_in_address_range(a2 & 0xFFFFFFFFFFFFFFFCLL, 0, -1, a3);
  }

  else
  {
    return 0;
  }
}

unint64_t CSSymbolOwnerGetSegmentWithAddress(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return CSCppSymbolOwner::segment_at_address(a2 & 0xFFFFFFFFFFFFFFFCLL, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerGetSectionWithAddress(char a1, uint64_t a2, unint64_t a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__4;
  v12 = 0;
  v13 = 0;
  v11 = __Block_byref_object_dispose__4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __CSSymbolOwnerGetSectionWithAddress_block_invoke;
  v6[3] = &unk_1E8583788;
  v6[4] = &v7;
  CSCppSymbolOwner::sections_in_address_range(a2 & 0xFFFFFFFFFFFFFFFCLL, a3, 1, v6);
  v3 = v8[5];
  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1D9721BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t __CSSymbolOwnerGetSectionWithAddress_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolOwnerGetSectionWithName(char a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3802000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __CSSymbolOwnerGetSectionWithName_block_invoke;
  v7[3] = &unk_1E85837B0;
  v7[5] = &v8;
  v7[6] = a3;
  v7[4] = &v12;
  v3 = &kCSNull;
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    CSCppSymbolOwner::sections_in_address_range(a2 & 0xFFFFFFFFFFFFFFFCLL, 0, -1, v7);
    if (v9[3] == 1)
    {
      v3 = v13 + 5;
    }
  }

  v4 = *v3;
  v5 = v3[1];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

void sub_1D9721D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 72), 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolOwnerGetSectionWithName_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[6];
  Name = CSRegionGetName(a2, a3);
  result = strcmp(v6, Name);
  if (!result)
  {
    v9 = *(a1[4] + 8);
    *(v9 + 40) = a2;
    *(v9 + 48) = a3;
    ++*(*(a1[5] + 8) + 24);
  }

  return result;
}

uint64_t CSSymbolOwnerGetRegionCount(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return CSCppSymbolOwner::sections_in_address_range(a2 & 0xFFFFFFFFFFFFFFFCLL, 0, -1, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerForeachRegion(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return CSCppSymbolOwner::sections_in_address_range(a2 & 0xFFFFFFFFFFFFFFFCLL, 0, -1, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolOwnerForeachRegionWithName(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __CSSymbolOwnerForeachRegionWithName_block_invoke;
  v6[3] = &unk_1E85837D8;
  v6[5] = &v7;
  v6[6] = a3;
  v6[4] = a4;
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    CSCppSymbolOwner::sections_in_address_range(a2 & 0xFFFFFFFFFFFFFFFCLL, 0, -1, v6);
    v4 = v8[3];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __CSSymbolOwnerForeachRegionWithName_block_invoke(void *a1, uint64_t a2, uint64_t a3)
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

uint64_t CSSymbolOwnerGetRegionWithName(char a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __CSSymbolOwnerGetRegionWithName_block_invoke;
  v6[3] = &unk_1E8583800;
  v6[4] = &v7;
  if (CSSymbolOwnerForeachRegionWithName(a1, a2, a3, v6) == 1)
  {
    v3 = v8[5];
    v4 = v8[6];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1D972203C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolOwnerGetRegionWithName_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolOwnerForeachSymbol(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 88);

  return v2();
}

uint64_t CSSymbolOwnerForeachSymbolWithName(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 96);

  return v2();
}

uint64_t CSSymbolOwnerForeachSymbolWithMangledName(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 104);

  return v2();
}

uint64_t CSSymbolOwnerGetSymbolWithAddress(char a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL));
  return (*(*v5 + 136))(v5, a2 & 0xFFFFFFFFFFFFFFFCLL, a3);
}

uint64_t CSSymbolOwnerGetSymbolWithName(char a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3802000000;
  v13 = __Block_byref_object_copy__4;
  v15 = 0;
  v16 = 0;
  v14 = __Block_byref_object_dispose__4;
  v5 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __CSSymbolOwnerGetSymbolWithName_block_invoke;
  v9[3] = &unk_1E8583828;
  v9[4] = &v10;
  if ((*(*v5 + 112))(v5, a2 & 0xFFFFFFFFFFFFFFFCLL, a3, v9) == 1)
  {
    v6 = v11[5];
    v7 = v11[6];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_1D97223A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolOwnerGetSymbolWithName_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolOwnerGetSymbolWithMangledName(char a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3802000000;
  v13 = __Block_byref_object_copy__4;
  v15 = 0;
  v16 = 0;
  v14 = __Block_byref_object_dispose__4;
  v5 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __CSSymbolOwnerGetSymbolWithMangledName_block_invoke;
  v9[3] = &unk_1E8583850;
  v9[4] = &v10;
  if ((*(*v5 + 120))(v5, a2 & 0xFFFFFFFFFFFFFFFCLL, a3, v9) == 1)
  {
    v6 = v11[5];
    v7 = v11[6];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_1D972250C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolOwnerGetSymbolWithMangledName_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolOwnerForeachSourceInfo(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 144);

  return v2();
}

uint64_t CSSymbolOwnerGetSourceInfoWithAddress(char a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v5 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL));
  return (*(*v5 + 160))(v5, a2 & 0xFFFFFFFFFFFFFFFCLL, a3);
}

uint64_t CSSymbolOwnerForEachStackFrameAtAddress(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 168);

  return v2();
}

uint64_t CSSymbolOwnerGetRelinkedSubdylibPathWithAddress(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 216);

  return v2();
}

uint64_t CSSymbolOwnerGetRelinkedSubdylibNameWithAddress(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 224);

  return v2();
}

uint64_t CSSymbolOwnerGetUniqueRelinkedSubdylibCount(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = *(*CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)) + 232);

  return v2();
}

uint64_t CSSymbolOwnerGetContentForRange(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v42[6] = *MEMORY[0x1E69E9840];
  if (!(v1 & 7 | (8 * (v2 & 3))))
  {
    v7 = 0;
    goto LABEL_14;
  }

  v6 = v4;
  v7 = 0;
  if (v4)
  {
    v8 = v5;
    if (v5)
    {
      v9 = v3;
      v10 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(&v36, *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 32), *(v10 + 40), (*(v10 + 40) - *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 32)) >> 5);
      memset(&__p, 0, sizeof(__p));
      v11 = v36;
      if (v36 == v37)
      {
LABEL_8:
        v7 = 0;
LABEL_9:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        goto LABEL_14;
      }

      while (1)
      {
        v12 = v9 - *v11;
        if (v9 >= *v11 && v6 + v9 <= *(v11 + 1) + *v11)
        {
          break;
        }

        v11 += 32;
        if (v11 == v37)
        {
          goto LABEL_8;
        }
      }

      p_str = &__str;
      std::string::basic_string[abi:ne200100]<0>(&__str, *(v11 + 2));
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      v17 = p_str + size;
      if (size >= 1)
      {
        v18 = p_str;
        do
        {
          v19 = memchr(v18, 32, size);
          if (!v19)
          {
            break;
          }

          if (*v19 == 32)
          {
            goto LABEL_26;
          }

          v18 = (v19 + 1);
          size = v17 - v18;
        }

        while (v17 - v18 > 0);
      }

      v19 = v17;
LABEL_26:
      if (v19 == v17)
      {
        v20 = -1;
      }

      else
      {
        v20 = v19 - p_str;
      }

      std::string::basic_string(&v39, &__str, 0, v20, &v40);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v39;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      v23 = *(v10 + 112);
      if (*(v10 + 80))
      {
        v24 = CSCppSymbolOwner::data(v10);
        if ((*(*v24 + 24))(v24) == 5)
        {
          v25 = CSCppSymbolOwner::data(v10);
          v26 = FlatbufferSymbolOwnerData::rawBytesForRangeWithoutFaulting(v25, v10, v9, v6);
          if (v26)
          {
            (*(v8 + 16))(v8, v26, v6);
            v7 = 1;
            goto LABEL_9;
          }
        }
      }

      v27 = *(v10 + 108);
      if ((v27 & 0x200) != 0)
      {
        v31 = (*(**(*(v10 + 8) + 32) + 48))(*(*(v10 + 8) + 32));
        if (UUID::is_null(v31))
        {
          CSCppMachTask::CSCppMachTask(&__str, *MEMORY[0x1E69E9A60], 0);
          v31 = v42;
          CSCppMachTask::~CSCppMachTask(&__str);
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        segment_content_from_dsc = extract_segment_content_from_dsc(*v31, *&(*v31)[8], p_p, v22, v21, v12, v6, v8);
      }

      else
      {
        if ((v27 & 0x80000) == 0)
        {
          goto LABEL_41;
        }

        if ((*(**(*(v10 + 8) + 32) + 24))(*(*(v10 + 8) + 32)))
        {
          v27 = *(v10 + 108);
LABEL_41:
          if ((v27 & 0x1000) == 0 || !(*(**(*(v10 + 8) + 32) + 24))(*(*(v10 + 8) + 32)) || (*(v10 + 110) & 8) == 0)
          {
            v29 = *(v10 + 120);
            v28 = (v10 + 120);
            if (!access(v29, 4))
            {
              v30 = *v28;
              extract_segment_content_from_binary_on_disk(v23);
            }
          }

          goto LABEL_8;
        }

        v34 = *(v10 + 128);
        if (!v34)
        {
          v34 = *(v10 + 120);
        }

        segment_content_from_dsc = extract_segment_content_from_kc_fileset(v23, v34);
      }

      v7 = segment_content_from_dsc;
      goto LABEL_9;
    }
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1D9722C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t CSSymbolOwnerGetContentForSegmentByName(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v25[6] = *MEMORY[0x1E69E9840];
  segment_content_from_dsc = 0;
  if (v1 & 7 | (8 * (v2 & 3)))
  {
    if (v3)
    {
      v6 = v4;
      if (v4)
      {
        v7 = v2;
        p_str = &__str;
        std::string::basic_string[abi:ne200100]<0>(&__str, v3);
        size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        v10 = p_str + size;
        if (size >= 8)
        {
          v11 = p_str;
          do
          {
            v12 = memchr(v11, 32, size - 7);
            if (!v12)
            {
              break;
            }

            if (*v12 == 0x544E454D47455320)
            {
              goto LABEL_14;
            }

            v11 = (v12 + 1);
            size = v10 - v11;
          }

          while (v10 - v11 > 7);
        }

        v12 = v10;
LABEL_14:
        if (v12 == v10)
        {
          v13 = -1;
        }

        else
        {
          v13 = v12 - p_str;
        }

        std::string::basic_string(&__p, &__str, 0, v13, v24);
        v14 = v7 & 0xFFFFFFFFFFFFFFFCLL;
        v15 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 16);
        v16 = *(v14 + 24);
        if ((*(v14 + 109) & 2) != 0)
        {
          v18 = (*(**(*(v14 + 8) + 32) + 48))(*(*(v14 + 8) + 32));
          if (UUID::is_null(v18))
          {
            CSCppMachTask::CSCppMachTask(v24, *MEMORY[0x1E69E9A60], 0);
            v18 = v25;
            CSCppMachTask::~CSCppMachTask(v24);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          segment_content_from_dsc = extract_segment_content_from_dsc(*v18, *&(*v18)[8], p_p, v15, v16, 0, -1, v6);
        }

        else
        {
          v17 = *(v14 + 112);
          if (!access(*(v14 + 120), 4))
          {
            extract_segment_content_from_binary_on_disk(v17);
          }

          segment_content_from_dsc = 0;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return segment_content_from_dsc;
}

void sub_1D9722EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void TRawSymbolOwnerData<Pointer32>::_update_text_section_data_locked(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    operator new();
  }

  CSCppTextSectionDescriptorMap<Pointer32>::create_section_descriptor_for_default_text_section();
}

void sub_1D972305C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CSCppTextSectionDataDescriptor>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t CSCppTextSectionDataDescriptor::get_text_section<Pointer32>(unint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 144));
  text_section = CSCppTextSectionDataDescriptor::_get_text_section_locked<Pointer32>(a1, 0, a2);
  std::mutex::unlock((a1 + 144));
  return text_section;
}

void TRawSymbolOwnerData<Pointer64>::_update_text_section_data_locked(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    operator new();
  }

  CSCppTextSectionDescriptorMap<Pointer64>::create_section_descriptor_for_default_text_section();
}

void sub_1D972324C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<CSCppTextSectionDataDescriptor>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CSCppTextSectionDataDescriptor::get_text_section<Pointer64>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 144));
  CSCppTextSectionDataDescriptor::_get_text_section_locked<Pointer64>(a1, a2, a3);

  std::mutex::unlock((a1 + 144));
}

void TRawSymbolOwnerData<Pointer32>::add_symbol(void *a1, int *a2)
{
  v11 = *a2;
  if ((atomic_load_explicit(a2 + 5, memory_order_acquire) & 0x800) != 0 && atomic_load_explicit(a2 + 5, memory_order_acquire) != 2048)
  {
    goto LABEL_15;
  }

  v10[0] = v11;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1 + 51, v10);
  v5 = a1[23];
  v6 = a1[24];
  if (!v4 || v4[2] != v11)
  {
    if ((atomic_load_explicit(a2 + 5, memory_order_acquire) & 0x200) == 0)
    {
      v10[0] = v11;
      v10[1] = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 5);
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_impl<std::pair<unsigned int,unsigned long>>();
    }

LABEL_15:
    std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__emplace_multi<unsigned int &,TRawSymbol<Pointer32>>();
  }

  v7 = (v5 + 96 * v4[3]);
  explicit = atomic_load_explicit(v7 + 5, memory_order_acquire);
  v9 = atomic_load_explicit(a2 + 5, memory_order_acquire);
  if ((explicit & 0x10) != 0 && (v9 & 0x10) != 0 || (atomic_load_explicit(a2 + 5, memory_order_acquire) & 0x200) != 0)
  {
    atomic_store(atomic_load_explicit(a2 + 5, memory_order_acquire) | 0x200, a2 + 5);
    goto LABEL_15;
  }

  if ((v9 & 0x10) != 0)
  {
    swap(v7, a2);
  }

  TRawSymbol<Pointer32>::merge_with_symbol(v7, a2);
}

uint64_t std::vector<TRawSymbol<Pointer32>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TRawSymbol<Pointer32>>::__emplace_back_slow_path<TRawSymbol<Pointer32>>(a1, a2);
  }

  else
  {
    *(v3 + 88) = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 0;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 65) = 0u;
    TRawSymbol<Pointer32>::operator=(v3, a2);
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

__n128 swap(int *a1, int *a2)
{
  v2 = *a1;
  *a1 = *a2;
  *a2 = v2;
  v3 = a1[1];
  a1[1] = a2[1];
  a2[1] = v3;
  v4 = a1[3];
  a1[3] = a2[3];
  a2[3] = v4;
  v5 = a1[2];
  a1[2] = a2[2];
  a2[2] = v5;
  v6 = a1[4];
  a1[4] = a2[4];
  a2[4] = v6;
  v7 = atomic_load(a2 + 5);
  atomic_store(atomic_exchange(a1 + 5, v7), a2 + 5);
  v8 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  result = *(a1 + 10);
  *(a1 + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  v11 = *(a1 + 7);
  *(a1 + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(a1 + 9);
  *(a1 + 9) = *(a2 + 9);
  *(a2 + 9) = v13;
  LOBYTE(v13) = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v13;
  v14 = *(a1 + 11);
  *(a1 + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  return result;
}

void TRawSymbol<Pointer32>::merge_with_symbol(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit((a2 + 20), memory_order_acquire) & 0x100) != 0)
  {
    *(a1 + 4) = *(a2 + 4);
  }

  explicit = atomic_load_explicit((a1 + 20), memory_order_acquire);
  if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x8000) != 0)
  {
    v5 = (a2 + 20);
    if ((atomic_load_explicit((a2 + 20), memory_order_acquire) & 0x4000) != 0 || (atomic_load_explicit(v5, memory_order_acquire) & 0x10000) != 0)
    {
      *(a1 + 24) = *(a2 + 24);
      explicit = atomic_load_explicit(v5, memory_order_acquire) & 0x14000 | explicit & 0xFFFF7FFF;
    }
  }

  if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x10000) != 0 && (atomic_load_explicit((a2 + 20), memory_order_acquire) & 0x4000) != 0)
  {
    *(a1 + 24) = *(a2 + 24);
    explicit = atomic_load_explicit((a2 + 20), memory_order_acquire) & 0x4000 | explicit & 0xFFFEFFFF;
  }

  if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x100000) != 0)
  {
    v6 = (a2 + 20);
    if ((atomic_load_explicit((a2 + 20), memory_order_acquire) & 0x80000) != 0 || (atomic_load_explicit(v6, memory_order_acquire) & 0x200000) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
      explicit = atomic_load_explicit(v6, memory_order_acquire) & 0x280000 | explicit & 0xFFEFFFFF;
    }
  }

  if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x200000) != 0 && (atomic_load_explicit((a2 + 20), memory_order_acquire) & 0x80000) != 0)
  {
    *(a1 + 32) = *(a2 + 32);
    explicit = explicit & 0xFFD7FFFF | 0x80000;
  }

  v7 = (a2 + 56);
  if (*(a2 + 56) != *(a2 + 64))
  {
    std::vector<TRawSymbol<Pointer32>>::__vdeallocate((a1 + 56));
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *v7 = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
  }

  atomic_store(explicit | atomic_load_explicit((a2 + 20), memory_order_acquire) & 0xFE000FFF | 0x20000000, (a1 + 20));
}

void TRawSymbolOwnerData<Pointer64>::add_symbol(uint64_t *a1, __n128 *a2)
{
  v11 = a2->n128_u64[0];
  if ((atomic_load_explicit(&a2[1].n128_i32[3], memory_order_acquire) & 0x800) != 0 && atomic_load_explicit(&a2[1].n128_i32[3], memory_order_acquire) != 2048)
  {
    goto LABEL_15;
  }

  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1 + 52, &v11);
  v5 = a1[23];
  v6 = a1[24];
  if (!v4 || v11 != v4[2])
  {
    if ((atomic_load_explicit(&a2[1].n128_i32[3], memory_order_acquire) & 0x200) == 0)
    {
      v10[0] = v11;
      v10[1] = 0x4EC4EC4EC4EC4EC5 * ((v6 - v5) >> 3);
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned long>>(a1 + 52, v10);
      std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](a1 + 23, a2);
      return;
    }

LABEL_15:
    std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::__emplace_multi<unsigned long long &,TRawSymbol<Pointer64>>();
  }

  v7 = (v5 + 104 * v4[3]);
  explicit = atomic_load_explicit(&v7[1].n128_i32[3], memory_order_acquire);
  v9 = atomic_load_explicit(&a2[1].n128_i32[3], memory_order_acquire);
  if ((explicit & 0x10) != 0 && (v9 & 0x10) != 0 || (atomic_load_explicit(&a2[1].n128_i32[3], memory_order_acquire) & 0x200) != 0)
  {
    atomic_store(atomic_load_explicit(&a2[1].n128_i32[3], memory_order_acquire) | 0x200, &a2[1].n128_u32[3]);
    goto LABEL_15;
  }

  if ((v9 & 0x10) != 0)
  {
    swap(v7, a2);
  }

  TRawSymbol<Pointer64>::merge_with_symbol(v7, a2);
}

uint64_t std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TRawSymbol<Pointer64>>::__emplace_back_slow_path<TRawSymbol<Pointer64>>(a1, a2);
  }

  else
  {
    *(v3 + 96) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 73) = 0u;
    TRawSymbol<Pointer64>::operator=(v3, a2);
    result = v3 + 104;
  }

  a1[1] = result;
  return result;
}

__n128 swap(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[0];
  a1->n128_u64[0] = a2->n128_u64[0];
  a2->n128_u64[0] = v2;
  v3 = a1->n128_u64[1];
  a1->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[1] = v3;
  LODWORD(v3) = a1[1].n128_u32[1];
  a1[1].n128_u32[1] = a2[1].n128_u32[1];
  a2[1].n128_u32[1] = v3;
  LODWORD(v3) = a1[1].n128_u32[0];
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v3;
  LODWORD(v3) = a1[1].n128_u32[2];
  a1[1].n128_u32[2] = a2[1].n128_u32[2];
  a2[1].n128_u32[2] = v3;
  v4 = atomic_load(&a2[1].n128_u32[3]);
  atomic_store(atomic_exchange(&a1[1].n128_i32[3], v4), &a2[1].n128_u32[3]);
  v5 = a1[2].n128_u64[0];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v6;
  result = a1[3];
  a1[3] = a2[3];
  a2[3] = result;
  v8 = a1[4].n128_u64[0];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v8;
  v9 = a1[4].n128_u64[1];
  a1[4].n128_u64[1] = a2[4].n128_u64[1];
  a2[4].n128_u64[1] = v9;
  v10 = a1[5].n128_u64[0];
  a1[5].n128_u64[0] = a2[5].n128_u64[0];
  a2[5].n128_u64[0] = v10;
  LOBYTE(v10) = a1[5].n128_u8[8];
  a1[5].n128_u8[8] = a2[5].n128_u8[8];
  a2[5].n128_u8[8] = v10;
  v11 = a1[6].n128_u64[0];
  a1[6].n128_u64[0] = a2[6].n128_u64[0];
  a2[6].n128_u64[0] = v11;
  return result;
}

void TRawSymbol<Pointer64>::merge_with_symbol(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit((a2 + 28), memory_order_acquire) & 0x100) != 0)
  {
    *(a1 + 8) = *(a2 + 8);
  }

  explicit = atomic_load_explicit((a1 + 28), memory_order_acquire);
  if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x8000) != 0)
  {
    v5 = (a2 + 28);
    if ((atomic_load_explicit((a2 + 28), memory_order_acquire) & 0x4000) != 0 || (atomic_load_explicit(v5, memory_order_acquire) & 0x10000) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
      explicit = atomic_load_explicit(v5, memory_order_acquire) & 0x14000 | explicit & 0xFFFF7FFF;
    }
  }

  if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x10000) != 0 && (atomic_load_explicit((a2 + 28), memory_order_acquire) & 0x4000) != 0)
  {
    *(a1 + 32) = *(a2 + 32);
    explicit = atomic_load_explicit((a2 + 28), memory_order_acquire) & 0x4000 | explicit & 0xFFFEFFFF;
  }

  if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x100000) != 0)
  {
    v6 = (a2 + 28);
    if ((atomic_load_explicit((a2 + 28), memory_order_acquire) & 0x80000) != 0 || (atomic_load_explicit(v6, memory_order_acquire) & 0x200000) != 0)
    {
      *(a1 + 40) = *(a2 + 40);
      explicit = atomic_load_explicit(v6, memory_order_acquire) & 0x280000 | explicit & 0xFFEFFFFF;
    }
  }

  if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x200000) != 0 && (atomic_load_explicit((a2 + 28), memory_order_acquire) & 0x80000) != 0)
  {
    *(a1 + 40) = *(a2 + 40);
    explicit = explicit & 0xFFD7FFFF | 0x80000;
  }

  v7 = (a2 + 64);
  if (*(a2 + 64) != *(a2 + 72))
  {
    std::vector<TRawSymbol<Pointer64>>::__vdeallocate((a1 + 64));
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *v7 = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
  }

  atomic_store(explicit | atomic_load_explicit((a2 + 28), memory_order_acquire) & 0xFE000FFF | 0x20000000, (a1 + 28));
}

void TRawSymbolOwnerData<Pointer32>::prepare_symbols(uint64_t a1)
{
  v2 = (a1 + 368);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer32>::prepare_symbols(void)::{lambda(void)#1} &&>>);
  }
}

void TRawSymbolOwnerData<Pointer64>::prepare_symbols(uint64_t a1)
{
  v2 = (a1 + 376);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer64>::prepare_symbols(void)::{lambda(void)#1} &&>>);
  }
}

void TRawSymbolOwnerData<Pointer32>::aliases_for_symbol(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v13[0] = *a2;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__equal_range_multi<unsigned long long>((a1 + 448), v13);
  v7 = v6;
  v9 = v8;
  if (v6 != v8)
  {
    v10 = v6;
    do
    {
      v12 = *(v10 + 3);
      TRawSymbol<Pointer32>::TRawSymbol(v13, a2);
      v15 = v12;
      atomic_store(atomic_load_explicit(&v14, memory_order_acquire) & 0xFE39FDFB | 0x200, &v14);
      std::vector<TRawSymbol<Pointer32>>::push_back[abi:ne200100](a3, v13);
      v17 = &v16;
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v17);
      v10 = *v10;
    }

    while (v10 != v9);
    if (*a3 != a3[1])
    {
      do
      {
        v11 = *v7;
        std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::erase((a1 + 448), v7);
        v7 = v11;
      }

      while (v11 != v9);
    }
  }
}

void sub_1D9723CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer64>::aliases_for_symbol(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v17 = *a2;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__equal_range_multi<unsigned long long>((a1 + 456), &v17);
  v7 = v6;
  v9 = v8;
  if (v6 != v8)
  {
    v10 = v6;
    do
    {
      v12 = *(v10 + 7);
      TRawSymbol<Pointer64>::TRawSymbol(v13, a2);
      v15 = v12;
      atomic_store(atomic_load_explicit(&v14, memory_order_acquire) & 0xFE39FDFB | 0x200, &v14);
      std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](a3, v13);
      v18 = &v16;
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v18);
      v10 = *v10;
    }

    while (v10 != v9);
    if (*a3 != a3[1])
    {
      do
      {
        v11 = *v7;
        std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::erase((a1 + 456), v7);
        v7 = v11;
      }

      while (v11 != v9);
    }
  }
}

void sub_1D9723E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer32>::deduplicated_variants_for_symbol(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v14[0] = *a2;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__equal_range_multi<unsigned long long>((a1 + 488), v14);
  v7 = v6;
  v9 = v8;
  if (v6 != v8)
  {
    v10 = v6;
    do
    {
      v13 = *(v10 + 3);
      v11 = atomic_load(v10 + 11);
      TRawSymbol<Pointer32>::TRawSymbol(v14, a2);
      v16 = v13;
      atomic_store(v11, &v15);
      std::vector<TRawSymbol<Pointer32>>::push_back[abi:ne200100](a3, v14);
      v18 = &v17;
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v18);
      v10 = *v10;
    }

    while (v10 != v9);
    if (*a3 != a3[1])
    {
      do
      {
        v12 = *v7;
        std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::erase((a1 + 488), v7);
        v7 = v12;
      }

      while (v12 != v9);
    }
  }
}

void sub_1D9723F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer64>::deduplicated_variants_for_symbol(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v18 = *a2;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__equal_range_multi<unsigned long long>((a1 + 496), &v18);
  v7 = v6;
  v9 = v8;
  if (v6 != v8)
  {
    v10 = v6;
    do
    {
      v13 = *(v10 + 7);
      v11 = atomic_load(v10 + 13);
      TRawSymbol<Pointer64>::TRawSymbol(v14, a2);
      v16 = v13;
      atomic_store(v11, &v15);
      std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](a3, v14);
      v19 = &v17;
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v19);
      v10 = *v10;
    }

    while (v10 != v9);
    if (*a3 != a3[1])
    {
      do
      {
        v12 = *v7;
        std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::erase((a1 + 496), v7);
        v7 = v12;
      }

      while (v12 != v9);
    }
  }
}

void sub_1D9724070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer32>::aliases_from_deduplicated_variants_for_symbol(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v14[0] = *a2;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__equal_range_multi<unsigned long long>((a1 + 488), v14);
  v7 = v6;
  v9 = v8;
  if (v6 != v8)
  {
    v10 = v6;
    do
    {
      v13 = *(v10 + 3);
      v11 = atomic_load(v10 + 11);
      TRawSymbol<Pointer32>::TRawSymbol(v14, a2);
      v16 = v13;
      atomic_store(v11 & 0xFE39F5FB | 0x200, &v15);
      if (a3[1] == *a3 || (atomic_load_explicit((*a3 + 20), memory_order_acquire) & 0x10) != 0 || (atomic_load_explicit(&v15, memory_order_acquire) & 0x10) != 0)
      {
        std::vector<TRawSymbol<Pointer32>>::push_back[abi:ne200100](a3, v14);
      }

      else
      {
        if (a3[1] == *a3)
        {
          std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
        }

        TRawSymbol<Pointer32>::merge_with_symbol(*a3, v14);
      }

      v18 = &v17;
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v18);
      v10 = *v10;
    }

    while (v10 != v9);
    if (*a3 != a3[1])
    {
      do
      {
        v12 = *v7;
        std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::erase((a1 + 488), v7);
        v7 = v12;
      }

      while (v12 != v9);
    }
  }
}

void sub_1D97241F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer64>::aliases_from_deduplicated_variants_for_symbol(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v18 = *a2;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__equal_range_multi<unsigned long long>((a1 + 496), &v18);
  v7 = v6;
  v9 = v8;
  if (v6 != v8)
  {
    v10 = v6;
    do
    {
      v13 = *(v10 + 7);
      v11 = atomic_load(v10 + 13);
      TRawSymbol<Pointer64>::TRawSymbol(v14, a2);
      v16 = v13;
      atomic_store(v11 & 0xFE39F5FB | 0x200, &v15);
      if (a3[1] == *a3 || (atomic_load_explicit((*a3 + 28), memory_order_acquire) & 0x10) != 0 || (atomic_load_explicit(&v15, memory_order_acquire) & 0x10) != 0)
      {
        std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](a3, v14);
      }

      else
      {
        if (a3[1] == *a3)
        {
          std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
        }

        TRawSymbol<Pointer64>::merge_with_symbol(*a3, v14);
      }

      v19 = &v17;
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v19);
      v10 = *v10;
    }

    while (v10 != v9);
    if (*a3 != a3[1])
    {
      do
      {
        v12 = *v7;
        std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::erase((a1 + 496), v7);
        v7 = v12;
      }

      while (v12 != v9);
    }
  }
}

void sub_1D972437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer64>::emplace_symbol(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, const char *a5, unsigned int a6, _OWORD *a7, char a8)
{
  v40 = a3;
  v41 = a2;
  v38 = a5;
  v39 = a4;
  v37 = a6;
  v36 = a7;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1 + 52, &v41);
  v11 = a1[23];
  if (v10 && v41 == v10[2])
  {
    if ((a8 & 1) == 0)
    {
      v12 = (v11 + 104 * v10[3]);
      explicit = atomic_load_explicit(&v12[1].n128_i32[3], memory_order_acquire);
      v14 = atomic_load_explicit(&v12[1].n128_i32[3], memory_order_acquire);
      v15 = atomic_load_explicit(&v12[1].n128_i32[3], memory_order_acquire);
      v16 = v37;
      if ((explicit & 0x10) != 0 && (v37 & 0x10) != 0)
      {
        v37 |= 0x200u;
        v27[0] = &v41;
        v28.n128_u64[0] = &v41;
        v28.n128_u64[1] = &v40;
        v29 = &v39;
        v30 = &v38;
        v31 = &v37;
        v32 = &v36;
        goto LABEL_7;
      }

      if ((explicit & 0x10) != 0 || (v37 & 0x10) != 0 || (v37 & 2) != 0 || ((v15 & 0x2000000) != 0 ? (v25 = (v37 & 0x2000000) == 0) : (v25 = 1), v25))
      {
        if (v14 == 2048)
        {
          if ((v37 & 0x10000000) == 0)
          {
            v37 |= 0x800u;
            v27[0] = &v41;
            v28.n128_u64[0] = &v41;
            v28.n128_u64[1] = &v40;
            v29 = &v39;
            v30 = &v38;
            v31 = &v37;
            v32 = &v36;
LABEL_7:
            std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::__emplace_multi<std::piecewise_construct_t const&,std::tuple<unsigned long long &>,std::tuple<unsigned long long &,unsigned long long &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo const*&>>();
          }
        }

        else
        {
          v28.n128_u64[0] = v41;
          v28.n128_u64[1] = v40;
          v29 = 0;
          v30 = 0;
          v31 = v39;
          v32 = v38;
          v35 = 0;
          v33 = 0u;
          memset(v34, 0, 25);
          if (v36)
          {
            v33 = *v36;
            v16 = v37 | 0x80000000;
          }

          HIDWORD(v30) = v16;
          if ((v37 & 0x10) != 0)
          {
            swap(v12, &v28);
          }

          TRawSymbol<Pointer64>::merge_with_symbol(v12, &v28);
          v27[0] = v34;
          std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v27);
        }
      }

      else if (!TRawSymbol<Pointer64>::has_same_mangled_name(v12, v38) && v14 != 2048)
      {
        v26 = v12->n128_u64[1];
        v28.n128_u64[0] = v41;
        v28.n128_u64[1] = v26;
        v29 = 0;
        v30 = 0x80000000000;
        v31 = "<deduplicated_symbol>";
        v32 = "<deduplicated_symbol>";
        v35 = 0;
        v33 = 0u;
        memset(v34, 0, 25);
        std::swap[abi:ne200100]<TRawSymbol<Pointer64>>(v12, &v28);
        v37 |= 0x800u;
        atomic_store(v37, &v30 + 1);
        v27[0] = &v41;
        v27[6] = &v28;
        std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::__emplace_multi<std::piecewise_construct_t const&,std::tuple<unsigned long long &>,std::tuple<TRawSymbol<Pointer64>&>>();
      }
    }
  }

  else if (a8)
  {
    TRawSymbolOwnerData<Pointer64>::snap_existing_symbol_to_length_using_address(a1, v41);
  }

  else
  {
    v17 = 0x4EC4EC4EC4EC4EC5 * ((a1[24] - v11) >> 3);
    v28.n128_u64[0] = v41;
    v28.n128_u64[1] = v17;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned long>>(a1 + 52, v28.n128_u64);
    v18 = a1[24];
    if (v18 >= a1[25])
    {
      v24 = std::vector<TRawSymbol<Pointer64>>::__emplace_back_slow_path<unsigned long long &,unsigned long long &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo const*&>(a1 + 23, &v41, &v40, &v39, &v38, &v37, &v36);
    }

    else
    {
      v19 = v40;
      v21 = v38;
      v20 = v39;
      v22 = v37;
      v23 = v36;
      *v18 = v41;
      *(v18 + 8) = v19;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = v20;
      *(v18 + 40) = v21;
      *(v18 + 48) = 0u;
      *(v18 + 96) = 0;
      *(v18 + 64) = 0u;
      *(v18 + 73) = 0u;
      if (v23)
      {
        *(v18 + 48) = *v23;
        v22 |= 0x80000000;
      }

      *(v18 + 28) = v22;
      v24 = v18 + 104;
    }

    a1[24] = v24;
  }
}

void sub_1D9724778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a9 = &a24;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer64>::snap_existing_symbol_to_length_using_address(uint64_t a1, unint64_t a2)
{
  TRawSymbolOwnerData<Pointer64>::prepare_symbols(a1);
  v4 = *(a1 + 184);
  v5 = *(a1 + 192);
  if (v5 != v4)
  {
    v6 = 0x4EC4EC4EC4EC4EC5 * (v5 - v4);
    v7 = *(a1 + 184);
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[13 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 13;
      v6 += ~(v6 >> 1);
      if (v11 < a2)
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
    if (v7 != v5 && v7 != v4)
    {
      v13 = a2 - *(v7 - 13);
      if (*(v7 - 12) - 1 >= v13)
      {
        *(v7 - 12) = v13;
      }
    }
  }
}

BOOL TRawSymbol<Pointer64>::has_same_mangled_name(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 40);
  v4 = strlen(v3);
  return v4 == strlen(a2) && strcmp(v3, a2) == 0;
}

void std::swap[abi:ne200100]<TRawSymbol<Pointer64>>(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v4, 0, 32);
  v4[3] = 0u;
  memset(v5, 0, 25);
  TRawSymbol<Pointer64>::operator=(v4, a1);
  TRawSymbol<Pointer64>::operator=(a1, a2);
  TRawSymbol<Pointer64>::operator=(a2, v4);
  v7 = v5;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void TRawSymbolOwnerData<Pointer32>::emplace_symbol(void *a1, unsigned int a2, unsigned int a3, const char *a4, const char *a5, unsigned int a6, __int128 *a7, char a8)
{
  v37 = a3;
  v38 = a2;
  v35 = a5;
  v36 = a4;
  v34 = a6;
  v33 = a7;
  v11 = a2;
  v25 = a2;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1 + 51, &v25);
  v13 = a1[23];
  if (v12 && v12[2] == v11)
  {
    if ((a8 & 1) == 0)
    {
      v14 = (v13 + 96 * v12[3]);
      explicit = atomic_load_explicit(v14 + 5, memory_order_acquire);
      v16 = v34;
      v17 = v34 & 0x10;
      v18 = atomic_load_explicit(v14 + 5, memory_order_acquire);
      v19 = v34;
      v20 = atomic_load_explicit(v14 + 5, memory_order_acquire);
      v21 = v34;
      if ((explicit & 0x10) != 0 && v17)
      {
        v34 |= 0x200u;
        v24[0] = &v38;
        v25 = &v38;
        v26 = &v37;
        v27 = &v36;
        v28 = &v35;
        v29 = &v34;
        *&v30 = &v33;
        goto LABEL_7;
      }

      if ((explicit & 0x10) != 0 || v17 || (v19 & 2) != 0 || ((v20 & 0x2000000) != 0 ? (v23 = (v34 & 0x2000000) == 0) : (v23 = 1), v23))
      {
        if (v18 == 2048)
        {
          if ((v34 & 0x10000000) == 0)
          {
            v34 |= 0x800u;
            v24[0] = &v38;
            v25 = &v38;
            v26 = &v37;
            v27 = &v36;
            v28 = &v35;
            v29 = &v34;
            *&v30 = &v33;
LABEL_7:
            std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__emplace_multi<std::piecewise_construct_t const&,std::tuple<unsigned int &>,std::tuple<unsigned int &,unsigned int &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo const*&>>();
          }
        }

        else
        {
          v25 = __PAIR64__(v37, v38);
          v26 = 0;
          v27 = 0;
          v28 = v36;
          v29 = v35;
          v32 = 0;
          v30 = 0u;
          memset(v31, 0, 25);
          if (v33)
          {
            v30 = *v33;
            v21 = v34 | 0x80000000;
          }

          HIDWORD(v27) = v21;
          if ((v16 & 0x10) != 0)
          {
            swap(v14, &v25);
          }

          TRawSymbol<Pointer32>::merge_with_symbol(v14, &v25);
          v24[0] = v31;
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v24);
        }
      }

      else if (!TRawSymbol<Pointer32>::has_same_mangled_name(v14, v35) && v18 != 2048)
      {
        v25 = __PAIR64__(v14[1], v38);
        v26 = 0;
        v27 = 0x80000000000;
        v28 = "<deduplicated_symbol>";
        v29 = "<deduplicated_symbol>";
        v32 = 0;
        v30 = 0u;
        memset(v31, 0, 25);
        std::swap[abi:ne200100]<TRawSymbol<Pointer32>>(v14, &v25);
        v34 |= 0x800u;
        atomic_store(v34, &v27 + 1);
        v24[0] = &v38;
        v24[6] = &v25;
        std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__emplace_multi<std::piecewise_construct_t const&,std::tuple<unsigned int &>,std::tuple<TRawSymbol<Pointer32>&>>();
      }
    }
  }

  else
  {
    if ((a8 & 1) == 0)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((a1[24] - v13) >> 5);
      v25 = v11;
      v26 = v22;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_impl<std::pair<unsigned int,unsigned long>>();
    }

    TRawSymbolOwnerData<Pointer32>::snap_existing_symbol_to_length_using_address(a1, a2);
  }
}

void sub_1D9724CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  a9 = &a23;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer32>::snap_existing_symbol_to_length_using_address(uint64_t a1, unsigned int a2)
{
  TRawSymbolOwnerData<Pointer32>::prepare_symbols(a1);
  v4 = *(a1 + 184);
  v5 = *(a1 + 192);
  if (v5 != v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 5);
    v7 = *(a1 + 184);
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[96 * (v6 >> 1)];
      v11 = *v9;
      v10 = (v9 + 24);
      v6 += ~(v6 >> 1);
      if (v11 < a2)
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
    if (v7 != v5 && v7 != v4)
    {
      v13 = a2 - *(v7 - 24);
      if (*(v7 - 23) - 1 >= v13)
      {
        *(v7 - 23) = v13;
      }
    }
  }
}

BOOL TRawSymbol<Pointer32>::has_same_mangled_name(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = strlen(v3);
  return v4 == strlen(a2) && strcmp(v3, a2) == 0;
}

void std::swap[abi:ne200100]<TRawSymbol<Pointer32>>(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  memset(v4, 0, 24);
  v5 = 0u;
  memset(v6, 0, 25);
  TRawSymbol<Pointer32>::operator=(v4, a1);
  TRawSymbol<Pointer32>::operator=(a1, a2);
  TRawSymbol<Pointer32>::operator=(a2, v4);
  v8 = v6;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

uint64_t TRawSymbolOwnerData<Pointer32>::~TRawSymbolOwnerData(uint64_t a1)
{
  *a1 = &unk_1F5505168;
  v3 = (a1 + 184);
  v2 = *(a1 + 184);
  v4 = *(a1 + 192);
  while (v2 != v4)
  {
    TRawSymbol<Pointer32>::release_memory(v2);
    v2 += 96;
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = CSCppTextSectionDescriptorMap<Pointer32>::~CSCppTextSectionDescriptorMap(v5);
    MEMORY[0x1DA736760](v6, 0x1020C40791C62A7);
  }

  v7 = *(a1 + 528);
  if (v7)
  {
    *(a1 + 536) = v7;
    operator delete(v7);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::~__hash_table(a1 + 488);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::~__hash_table(a1 + 448);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(a1 + 408);
  v8 = *(a1 + 376);
  if (v8)
  {
    *(a1 + 384) = v8;
    operator delete(v8);
  }

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(a1 + 312);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(a1 + 272);
  v9 = *(a1 + 208);
  if (v9)
  {
    *(a1 + 216) = v9;
    operator delete(v9);
  }

  v12 = v3;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10 = *(a1 + 160);
  if (v10)
  {
    *(a1 + 168) = v10;
    operator delete(v10);
  }

  v12 = (a1 + 136);
  std::vector<std::unique_ptr<CSCppMemory>>::__destroy_vector::operator()[abi:ne200100](&v12);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 96);
  *a1 = &unk_1F5505060;
  std::mutex::~mutex((a1 + 16));
  return a1;
}

void TRawSymbolOwnerData<Pointer32>::~TRawSymbolOwnerData(uint64_t a1)
{
  TRawSymbolOwnerData<Pointer32>::~TRawSymbolOwnerData(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t TRawSymbolOwnerData<Pointer64>::~TRawSymbolOwnerData(uint64_t a1)
{
  *a1 = &unk_1F55052C8;
  v3 = (a1 + 184);
  v2 = *(a1 + 184);
  v4 = *(a1 + 192);
  while (v2 != v4)
  {
    TRawSymbol<Pointer64>::release_memory(v2);
    v2 += 104;
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = CSCppTextSectionDescriptorMap<Pointer64>::~CSCppTextSectionDescriptorMap(v5);
    MEMORY[0x1DA736760](v6, 0x1020C40791C62A7);
  }

  v7 = *(a1 + 536);
  if (v7)
  {
    *(a1 + 544) = v7;
    operator delete(v7);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::~__hash_table(a1 + 496);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::~__hash_table(a1 + 456);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(a1 + 416);
  v8 = *(a1 + 384);
  if (v8)
  {
    *(a1 + 392) = v8;
    operator delete(v8);
  }

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(a1 + 320);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(a1 + 280);
  v9 = *(a1 + 208);
  if (v9)
  {
    *(a1 + 216) = v9;
    operator delete(v9);
  }

  v12 = v3;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10 = *(a1 + 160);
  if (v10)
  {
    *(a1 + 168) = v10;
    operator delete(v10);
  }

  v12 = (a1 + 136);
  std::vector<std::unique_ptr<CSCppMemory>>::__destroy_vector::operator()[abi:ne200100](&v12);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 96);
  *a1 = &unk_1F5505060;
  std::mutex::~mutex((a1 + 16));
  return a1;
}

void TRawSymbolOwnerData<Pointer64>::~TRawSymbolOwnerData(uint64_t a1)
{
  TRawSymbolOwnerData<Pointer64>::~TRawSymbolOwnerData(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t std::vector<TRawSymbol<Pointer32>>::__emplace_back_slow_path<TRawSymbol<Pointer32>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<TRawSymbol<Pointer32>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 96 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *(v7 + 88) = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  *(v7 + 65) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  TRawSymbol<Pointer32>::operator=(v7, a2);
  *&v16 = v7 + 96;
  v8 = a1[1];
  v9 = v7 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(&v14);
  return v13;
}

void sub_1D972528C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t TRawSymbol<Pointer32>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v4 = (a2 + 20);
    *(a1 + 20) = atomic_load_explicit((a2 + 20), memory_order_acquire);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    std::vector<TRawSymbol<Pointer32>>::__vdeallocate((a1 + 56));
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    atomic_store(atomic_load_explicit(v4, memory_order_acquire) & 0xFE39FFFB, v4);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 20) = atomic_load_explicit((a2 + 20), memory_order_acquire) & 0xFE39FFFB;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    std::vector<TRawSymbol<Pointer32>>::__assign_with_size[abi:ne200100]<TRawSymbol<Pointer32>*,TRawSymbol<Pointer32>*>(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 5));
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
  }

  return a1;
}

void std::vector<TRawSymbol<Pointer32>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 96;
        v6 = (v3 - 40);
        std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v6);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::allocator<TRawSymbol<Pointer32>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *(a4 + 88) = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      *(a4 + 40) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 65) = 0u;
      TRawSymbol<Pointer32>::operator=(a4, v6);
      v6 += 96;
      a4 = v11 + 96;
      v11 += 96;
    }

    while (v6 != a3);
    v9 = 1;
    while (v5 != a3)
    {
      v12 = (v5 + 56);
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 96;
      v4 = (v1 - 40);
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(void **a1)
{
  std::__split_buffer<TRawSymbol<Pointer32>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TRawSymbol<Pointer32>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = (i - 40);
    std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

uint64_t std::vector<TRawSymbol<Pointer64>>::__emplace_back_slow_path<TRawSymbol<Pointer64>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<TRawSymbol<Pointer64>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 104 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *(v7 + 96) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 73) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  TRawSymbol<Pointer64>::operator=(v7, a2);
  *&v16 = v7 + 104;
  v8 = a1[1];
  v9 = v7 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(&v14);
  return v13;
}

void sub_1D9725748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t TRawSymbol<Pointer64>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v4 = (a2 + 28);
    *(a1 + 28) = atomic_load_explicit((a2 + 28), memory_order_acquire);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    std::vector<TRawSymbol<Pointer64>>::__vdeallocate((a1 + 64));
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    atomic_store(atomic_load_explicit(v4, memory_order_acquire) & 0xFE39FFFB, v4);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 28) = atomic_load_explicit((a2 + 28), memory_order_acquire) & 0xFE39FFFB;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    std::vector<TRawSymbol<Pointer64>>::__assign_with_size[abi:ne200100]<TRawSymbol<Pointer64>*,TRawSymbol<Pointer64>*>(a1 + 64, *(a2 + 64), *(a2 + 72), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 72) - *(a2 + 64)) >> 3));
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
  }

  return a1;
}

void std::vector<TRawSymbol<Pointer64>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 104;
        v6 = (v3 - 40);
        std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v6);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::allocator<TRawSymbol<Pointer64>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *(a4 + 96) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 73) = 0u;
      TRawSymbol<Pointer64>::operator=(a4, v6);
      v6 += 104;
      a4 = v11 + 104;
      v11 += 104;
    }

    while (v6 != a3);
    v9 = 1;
    while (v5 != a3)
    {
      v12 = (v5 + 64);
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 104;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 104;
      v4 = (v1 - 40);
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(void **a1)
{
  std::__split_buffer<TRawSymbol<Pointer64>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TRawSymbol<Pointer64>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    v4 = (i - 40);
    std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

void std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 96;
        v7 = v4 - 40;
        std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 104;
        v7 = v4 - 40;
        std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<TRawSymbol<Pointer64>>::__emplace_back_slow_path<unsigned long long &,unsigned long long &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo const*&>(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int *a6, _OWORD **a7)
{
  v7 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x276276276276276)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v11 = 0x276276276276276;
  }

  else
  {
    v11 = v8;
  }

  v27 = a1;
  if (v11)
  {
    std::allocator<TRawSymbol<Pointer64>>::allocate_at_least[abi:ne200100](a1, v11);
  }

  v12 = 104 * v7;
  v24 = 0;
  v25 = v12;
  *(&v26 + 1) = 0;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v17 = *a7;
  *v12 = *a2;
  *(v12 + 8) = v13;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v14;
  *(v12 + 40) = v15;
  *(104 * v7 + 0x30) = 0u;
  *(v12 + 96) = 0;
  *(v12 + 73) = 0u;
  *(v12 + 64) = 0u;
  if (v17)
  {
    *(104 * v7 + 0x30) = *v17;
    v16 |= 0x80000000;
  }

  *(104 * v7 + 0x1C) = v16;
  *&v26 = v12 + 104;
  v18 = a1[1];
  v19 = v12 + *a1 - v18;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(&v24);
  return v23;
}

void sub_1D9725DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TRawSymbol<Pointer32>>::__emplace_back_slow_path<unsigned int &,unsigned int &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo const*&>(uint64_t *a1, _DWORD *a2, int *a3, uint64_t *a4, uint64_t *a5, int *a6, _OWORD **a7)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v8 = v7 + 1;
  if (v7 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v8)
  {
    v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v11 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v8;
  }

  v27 = a1;
  if (v11)
  {
    std::allocator<TRawSymbol<Pointer32>>::allocate_at_least[abi:ne200100](a1, v11);
  }

  v12 = 96 * v7;
  v24 = 0;
  v25 = v12;
  *(&v26 + 1) = 0;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v17 = *a7;
  *v12 = *a2;
  *(v12 + 4) = v13;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = v14;
  *(v12 + 32) = v15;
  *(96 * v7 + 0x28) = 0u;
  *(v12 + 88) = 0;
  *(v12 + 65) = 0u;
  *(v12 + 56) = 0u;
  if (v17)
  {
    *(96 * v7 + 0x28) = *v17;
    v16 |= 0x80000000;
  }

  *(96 * v7 + 0x14) = v16;
  *&v26 = v12 + 96;
  v18 = a1[1];
  v19 = v12 + *a1 - v18;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(&v24);
  return v23;
}

void sub_1D9725F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(va);
  _Unwind_Resume(a1);
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

void CSCppTextSectionDescriptorMap<Pointer32>::_store_section_descriptor_for_range(uint64_t a1, int64x2_t *a2)
{
  v4[1] = a2;
  std::mutex::lock((a1 + 24));
  v4[0] = vmovn_s64(*a2);
  std::__tree<std::__value_type<TRange<Pointer32>,CSCppTextSectionDataDescriptor *>,std::__map_value_compare<TRange<Pointer32>,std::__value_type<TRange<Pointer32>,CSCppTextSectionDataDescriptor *>,std::less<TRange<Pointer32>>,true>,std::allocator<std::__value_type<TRange<Pointer32>,CSCppTextSectionDataDescriptor *>>>::__emplace_unique_key_args<TRange<Pointer32>,TRange<Pointer32>&,CSCppTextSectionDataDescriptor *&>(a1, v4);
  std::mutex::unlock((a1 + 24));
}

uint64_t *std::__tree<std::__value_type<TRange<Pointer32>,CSCppTextSectionDataDescriptor *>,std::__map_value_compare<TRange<Pointer32>,std::__value_type<TRange<Pointer32>,CSCppTextSectionDataDescriptor *>,std::less<TRange<Pointer32>>,true>,std::allocator<std::__value_type<TRange<Pointer32>,CSCppTextSectionDataDescriptor *>>>::__emplace_unique_key_args<TRange<Pointer32>,TRange<Pointer32>&,CSCppTextSectionDataDescriptor *&>(uint64_t a1, unsigned int *a2)
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

unint64_t CSCppTextSectionDataDescriptor::_get_text_section_locked<Pointer32>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (*(a1 + 96) == *(a1 + 88) && *(a1 + 208) != 1)
  {
    *(a1 + 208) = 1;
    v11 = *(a3 + 112);
    is_little_endian = CSCppArchitecture::is_little_endian(&v11);
    is_64_bit = CSCppArchitecture::is_64_bit(&v11);
    if (is_little_endian)
    {
      if (is_64_bit)
      {
        a1 = CSCppTextSectionDataDescriptor::_fault_text<SizeAndEndianness<Pointer64,LittleEndian>,Pointer32>(v3, a2, a3);
      }

      else
      {
        a1 = CSCppTextSectionDataDescriptor::_fault_text<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(v3, a2, a3);
      }

      v5 = HIDWORD(a1);
    }

    else
    {
      LODWORD(a1) = 0;
      LODWORD(v5) = 0;
    }
  }

  else
  {
    LODWORD(a1) = *a1;
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
  }

  return a1 | (v5 << 32);
}

unint64_t CSCppTextSectionDataDescriptor::_fault_text<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 2))
  {
    v4 = *a1;
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_local_shared_cache<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>();
    }

    if (*(a3 + 120))
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_path<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>();
    }

    if ((*(**(*(a3 + 8) + 32) + 40))(*(*(a3 + 8) + 32)))
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_task<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>();
    }

    *(a1 + 34) = 0;
    LODWORD(v4) = 0;
    DWORD2(v4) = 0;
  }

  return v4 | (DWORD2(v4) << 32);
}

unint64_t CSCppTextSectionDataDescriptor::_fault_text<SizeAndEndianness<Pointer64,LittleEndian>,Pointer32>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 2))
  {
    v4 = *a1;
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_local_shared_cache<SizeAndEndianness<Pointer64,LittleEndian>,Pointer32>();
    }

    if (*(a3 + 120))
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_path<SizeAndEndianness<Pointer64,LittleEndian>,Pointer32>();
    }

    if ((*(**(*(a3 + 8) + 32) + 40))(*(*(a3 + 8) + 32)))
    {
      CSCppTextSectionDataDescriptor::_fault_text_from_task<SizeAndEndianness<Pointer64,LittleEndian>,Pointer32>();
    }

    *(a1 + 34) = 0;
    LODWORD(v4) = 0;
    DWORD2(v4) = 0;
  }

  return v4 | (DWORD2(v4) << 32);
}

void sub_1D97266B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
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

void sub_1D9726BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void sub_1D9726F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
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

uint64_t extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v7[0] = a3;
  v7[1] = &unk_1F5505288;
  v5 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v5;
  v10[0] = *(a1 + 40);
  *(v10 + 9) = *(a1 + 49);
  v11 = &v12;
  _iterate_macho_header_sections<SizeAndEndianness<Pointer32,LittleEndian>,TSection<SizeAndEndianness<Pointer32,LittleEndian>> * extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer32,LittleEndian>::SIZE> &,TRange<Pointer32>)::{lambda(TSection*<SizeAndEndianness<Pointer32,LittleEndian>>,BOOL *)#1}>(a1, v7);
  _update_symbol_owner_data_text_section_with_discovered_section<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a2, v12);
  return v12;
}

BOOL CSCppSegmentRange::is_skippable(CSCppSegmentRange *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    v1 = *(this + 2);
  }

  return !strncmp(v1, "__PAGEZERO", 0xBuLL) || !strncmp(v1, "__LINKEDIT", 0xBuLL) || !strncmp(v1, "__LINKINFO", 0xBuLL) || !strncmp(v1, "__PRELINK", 9uLL) || !strncmp(v1, "__OBJC_R", 8uLL) || !strncmp(v1, "__DWARF", 7uLL) || strncmp(v1, "__PLK", 5uLL) == 0;
}

_DWORD *_iterate_macho_header_sections<SizeAndEndianness<Pointer32,LittleEndian>,TSection<SizeAndEndianness<Pointer32,LittleEndian>> * extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer32,LittleEndian>::SIZE> &,TRange<Pointer32>)::{lambda(TSection*<SizeAndEndianness<Pointer32,LittleEndian>>,BOOL *)#1}>(uint64_t a1, uint64_t a2)
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
      v7 = *(a2 + 40) + result[8];
      if (*a2 >= v7 && *(a2 + 4) + *a2 <= v7 + v6)
      {
        **(a2 + 80) = result;
        return result;
      }
    }
  }

  return result;
}

void sub_1D9727450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
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

void sub_1D9727978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void sub_1D9727CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
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

uint64_t extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer64,LittleEndian>,Pointer32>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v8[0] = a3;
  v8[1] = &unk_1F55053E8;
  v5 = *(a1 + 24);
  v6 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12[0] = v6;
  *(v12 + 9) = *(a1 + 65);
  v9 = *(a1 + 8);
  v10 = v5;
  v13 = &v14;
  _iterate_macho_header_sections<SizeAndEndianness<Pointer64,LittleEndian>,TSection<SizeAndEndianness<Pointer64,LittleEndian>> * extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer64,LittleEndian>,Pointer32>(TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer64,LittleEndian>::SIZE> &,TRange<Pointer32>)::{lambda(TSection*<SizeAndEndianness<Pointer64,LittleEndian>>,BOOL *)#1}>(a1, v8);
  _update_symbol_owner_data_text_section_with_discovered_section<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a2, v14);
  return v14;
}

unint64_t _iterate_macho_header_sections<SizeAndEndianness<Pointer64,LittleEndian>,TSection<SizeAndEndianness<Pointer64,LittleEndian>> * extract_text_section_data_from_header_for_range<SizeAndEndianness<Pointer64,LittleEndian>,Pointer32>(TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>> &,TRawSymbolOwnerData<SizeAndEndianness<Pointer64,LittleEndian>::SIZE> &,TRange<Pointer32>)::{lambda(TSection*<SizeAndEndianness<Pointer64,LittleEndian>>,BOOL *)#1}>(uint64_t a1, uint64_t a2)
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
      v7 = *(a2 + 40) + *(result + 32);
      if (*a2 >= v7 && *(a2 + 4) + *a2 <= v7 + v6)
      {
        **(a2 + 96) = result;
        return result;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
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

    std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__rehash<false>(a1, v13);
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

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 10;
    std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 11;
    std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned long>>(void *a1, unint64_t *a2)
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

void std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer32>::prepare_symbols(void)::{lambda(void)#1} &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,false>(v2, v3, &v6, v5, 1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,false>(int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 24;
  v55 = (a2 - 72);
  v56 = (a2 - 48);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 5);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      v54 = *(a2 - 24);
      v48 = (a2 - 24);
      if (v54 < *v9)
      {
LABEL_79:
        v50 = v9;
LABEL_80:
        v53 = v48;
LABEL_81:

        swap(v50, v53);
      }

      return;
    }

LABEL_10:
    if (v12 <= 2303)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,TRawSymbol<Pointer32> *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v9[24 * (v13 >> 1)];
    v16 = *v8;
    if (v12 > 0x3000)
    {
      v17 = *v15;
      if (*v15 >= *v9)
      {
        if (v16 < v17)
        {
          swap(v15, a2 - 24);
          if (*v15 < *v9)
          {
            v18 = v9;
            v19 = v15;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v18 = v9;
        if (v16 < v17)
        {
          goto LABEL_17;
        }

        swap(v9, v15);
        if (*v8 < *v15)
        {
          v18 = v15;
LABEL_17:
          v19 = (a2 - 24);
LABEL_26:
          swap(v18, v19);
        }
      }

      v24 = v9 + 24;
      v23 = v9[24];
      v25 = &v9[24 * v14];
      v28 = *(v25 - 24);
      v27 = v25 - 24;
      v26 = v28;
      v29 = *v56;
      if (v28 >= v23)
      {
        if (v29 < v26)
        {
          swap(v27, v56);
          if (*v27 < *v24)
          {
            v30 = a1 + 24;
            v31 = v27;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v30 = a1 + 24;
        if (v29 < v26)
        {
          goto LABEL_31;
        }

        swap(v30, v27);
        if (*v56 < *v27)
        {
          v30 = v27;
LABEL_31:
          v31 = (a2 - 48);
LABEL_39:
          swap(v30, v31);
        }
      }

      v32 = &a1[24 * v14];
      v35 = v32[24];
      v34 = v32 + 24;
      v33 = v35;
      v36 = *v55;
      if (v35 >= a1[48])
      {
        if (v36 < v33)
        {
          swap(v34, v55);
          if (*v34 < a1[48])
          {
            v37 = a1 + 48;
            v38 = v34;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v37 = a1 + 48;
        if (v36 < v33)
        {
          goto LABEL_44;
        }

        swap(v37, v34);
        if (*v55 < *v34)
        {
          v37 = v34;
LABEL_44:
          v38 = (a2 - 72);
LABEL_48:
          swap(v37, v38);
        }
      }

      v39 = *v15;
      v40 = *v34;
      if (*v15 >= *v27)
      {
        if (v40 < v39)
        {
          swap(v15, v34);
          if (*v15 < *v27)
          {
            v41 = v27;
            v42 = v15;
            goto LABEL_57;
          }
        }
      }

      else
      {
        v41 = v27;
        if (v40 < v39)
        {
          goto LABEL_53;
        }

        swap(v27, v15);
        if (*v34 < *v15)
        {
          v41 = v15;
LABEL_53:
          v42 = v34;
LABEL_57:
          swap(v41, v42);
        }
      }

      swap(a1, v15);
      goto LABEL_59;
    }

    v20 = *v9;
    if (*v9 >= *v15)
    {
      if (v16 < v20)
      {
        swap(v9, a2 - 24);
        if (*v9 < *v15)
        {
          v21 = v15;
          v22 = v9;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v21 = v15;
      if (v16 < v20)
      {
        goto LABEL_22;
      }

      swap(v15, v9);
      if (*v8 < *v9)
      {
        v21 = v9;
LABEL_22:
        v22 = (a2 - 24);
LABEL_35:
        swap(v21, v22);
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(a1 - 24) >= *a1)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRawSymbol<Pointer32> *,std::__less<void,void> &>(a1, a2);
      goto LABEL_66;
    }

    v43 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRawSymbol<Pointer32> *,std::__less<void,void> &>(a1, a2);
    if ((v44 & 1) == 0)
    {
      goto LABEL_64;
    }

    v45 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(a1, v43);
    v9 = (v43 + 96);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>((v43 + 96), a2))
    {
      a4 = -v11;
      a2 = v43;
      if (v45)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if ((v45 & 1) == 0)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,false>(a1, v43, a3, -v11, a5 & 1);
      v9 = (v43 + 96);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,0>(v9, v9 + 24, v9 + 48, a2 - 24);
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,0>(v9, v9 + 24, v9 + 48, v9 + 72);
      v52 = *(a2 - 24);
      v51 = (a2 - 24);
      if (v52 < v9[72])
      {
        swap(v9 + 72, v51);
        if (v9[72] < v9[48])
        {
          swap(v9 + 48, v9 + 72);
          if (v9[48] < v9[24])
          {
            swap(v9 + 24, v9 + 48);
            if (v9[24] < *v9)
            {
              v53 = v9 + 24;
              v50 = v9;
              goto LABEL_81;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v46 = v9[24];
  v49 = *(a2 - 24);
  v48 = (a2 - 24);
  v47 = v49;
  if (v46 >= *v9)
  {
    if (v47 < v46)
    {
      swap(v9 + 24, v48);
      if (v9[24] < *v9)
      {
        v50 = v9;
        v53 = v9 + 24;
        goto LABEL_81;
      }
    }
  }

  else
  {
    if (v47 < v46)
    {
      goto LABEL_79;
    }

    swap(v9, v9 + 24);
    if (*v48 < v9[24])
    {
      v50 = v9 + 24;
      goto LABEL_80;
    }
  }
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,0>(int *a1, int *a2, int *a3, int *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      *&result = swap(a2, a3).n128_u64[0];
      if (*a2 < *v7)
      {
        a1 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      *&result = swap(a1, v11).n128_u64[0];
      goto LABEL_10;
    }

    *&result = swap(a1, a2).n128_u64[0];
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    *&result = swap(a3, a4).n128_u64[0];
    if (*a3 < *a2)
    {
      *&result = swap(a2, a3).n128_u64[0];
      if (*a2 < *v7)
      {

        *&result = swap(v7, a2).n128_u64[0];
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(unsigned int *a1, unsigned int *a2)
{
  if (a1 != a2)
  {
    v18[9] = v2;
    v18[10] = v3;
    v6 = (a1 + 24);
    if (a1 + 24 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8[24];
        v10 = *v8;
        v8 = v6;
        if (v9 < v10)
        {
          v17 = 0;
          memset(v14, 0, 24);
          v15 = 0u;
          memset(v16, 0, 25);
          TRawSymbol<Pointer32>::operator=(v14, v6);
          v11 = v7;
          while (1)
          {
            TRawSymbol<Pointer32>::operator=(a1 + v11 + 96, a1 + v11);
            if (!v11)
            {
              break;
            }

            v12 = *(a1 + v11 - 96);
            v11 -= 96;
            if (LODWORD(v14[0]) >= v12)
            {
              v13 = a1 + v11 + 96;
              goto LABEL_10;
            }
          }

          v13 = a1;
LABEL_10:
          TRawSymbol<Pointer32>::operator=(v13, v14);
          v18[0] = v16;
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v18);
        }

        v6 = (v8 + 24);
        v7 += 96;
      }

      while (v8 + 24 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(_DWORD *a1, _DWORD *a2)
{
  if (a1 != a2)
  {
    v13[7] = v2;
    v13[8] = v3;
    v5 = a1;
    v6 = (a1 + 24);
    if (a1 + 24 != a2)
    {
      do
      {
        v7 = v6;
        if (v5[24] < *v5)
        {
          v12 = 0;
          memset(v9, 0, 24);
          v10 = 0u;
          memset(v11, 0, 25);
          TRawSymbol<Pointer32>::operator=(v9, v6);
          do
          {
            TRawSymbol<Pointer32>::operator=((v5 + 24), v5);
            v8 = *(v5 - 24);
            v5 -= 24;
          }

          while (LODWORD(v9[0]) < v8);
          TRawSymbol<Pointer32>::operator=((v5 + 24), v9);
          v13[0] = v11;
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v13);
        }

        v6 = (v7 + 24);
        v5 = v7;
      }

      while (v7 + 24 != a2);
    }
  }
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRawSymbol<Pointer32> *,std::__less<void,void> &>(uint64_t a1, int *a2)
{
  v14 = 0;
  memset(v11, 0, 24);
  v12 = 0u;
  memset(v13, 0, 25);
  TRawSymbol<Pointer32>::operator=(v11, a1);
  if (LODWORD(v11[0]) >= *(a2 - 24))
  {
    v6 = (a1 + 96);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 24;
    }

    while (LODWORD(v11[0]) >= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[24];
      v4 += 24;
    }

    while (LODWORD(v11[0]) >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (LODWORD(v11[0]) < v7);
  }

  while (v4 < a2)
  {
    swap(v4, a2);
    do
    {
      v8 = v4[24];
      v4 += 24;
    }

    while (LODWORD(v11[0]) >= v8);
    do
    {
      v9 = *(a2 - 24);
      a2 -= 24;
    }

    while (LODWORD(v11[0]) < v9);
  }

  if (v4 - 24 != a1)
  {
    TRawSymbol<Pointer32>::operator=(a1, (v4 - 24));
  }

  TRawSymbol<Pointer32>::operator=((v4 - 24), v11);
  v15 = v13;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v15);
  return v4;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRawSymbol<Pointer32> *,std::__less<void,void> &>(uint64_t a1, int *a2)
{
  v18 = 0;
  memset(v15, 0, 24);
  v16 = 0u;
  memset(v17, 0, 25);
  TRawSymbol<Pointer32>::operator=(v15, a1);
  v4 = 0;
  do
  {
    v5 = *(a1 + v4 + 96);
    v4 += 96;
  }

  while (v5 < LODWORD(v15[0]));
  v6 = a1 + v4;
  v7 = a1 + v4 - 96;
  if (v4 == 96)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2 - 24);
      a2 -= 24;
    }

    while (v9 >= LODWORD(v15[0]));
  }

  else
  {
    do
    {
      v8 = *(a2 - 24);
      a2 -= 24;
    }

    while (v8 >= LODWORD(v15[0]));
  }

  if (v6 < a2)
  {
    v10 = (a1 + v4);
    v11 = a2;
    do
    {
      swap(v10, v11);
      do
      {
        v12 = v10[24];
        v10 += 24;
      }

      while (v12 < LODWORD(v15[0]));
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
      }

      while (v13 >= LODWORD(v15[0]));
    }

    while (v10 < v11);
    v7 = (v10 - 24);
  }

  if (v7 != a1)
  {
    TRawSymbol<Pointer32>::operator=(a1, v7);
  }

  TRawSymbol<Pointer32>::operator=(v7, v15);
  v19 = v17;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v19);
  return v7;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(int *a1, char *a2)
{
  v3 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v10 = a1[24];
        v5 = (a2 - 96);
        v11 = *(a2 - 24);
        if (v10 >= *a1)
        {
          if (v11 >= v10)
          {
            return 1;
          }

          swap(a1 + 24, v5);
          if (v3[24] >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v9 = v3 + 24;
          goto LABEL_17;
        }

        if (v11 >= v10)
        {
          swap(a1, a1 + 24);
          if (*v5 >= v3[24])
          {
            return 1;
          }

          a1 = v3 + 24;
        }

LABEL_16:
        v9 = v5;
LABEL_17:
        swap(a1, v9);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,0>(a1, a1 + 24, a1 + 48, a2 - 24);
        return 1;
      case 5:
        v6 = a1 + 72;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,0>(a1, a1 + 24, a1 + 48, a1 + 72);
        v8 = *(a2 - 24);
        v7 = (a2 - 96);
        if (v8 >= v3[72])
        {
          return 1;
        }

        swap(v3 + 72, v7);
        if (*v6 >= v3[48])
        {
          return 1;
        }

        swap(v3 + 48, v3 + 72);
        if (v3[48] >= v3[24])
        {
          return 1;
        }

        swap(v3 + 24, v3 + 48);
        if (v3[24] >= *v3)
        {
          return 1;
        }

        v9 = v3 + 24;
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 96);
      if (*(a2 - 24) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v13 = (a1 + 48);
  v12 = a1[48];
  v14 = a1[24];
  if (v14 < *a1)
  {
    if (v12 >= v14)
    {
      swap(a1, a1 + 24);
      if (v3[48] >= v3[24])
      {
        goto LABEL_31;
      }

      a1 = v3 + 24;
    }

    v15 = v3 + 48;
    goto LABEL_30;
  }

  if (v12 < v14)
  {
    swap(a1 + 24, a1 + 48);
    if (v3[24] < *v3)
    {
      a1 = v3;
      v15 = v3 + 24;
LABEL_30:
      swap(a1, v15);
    }
  }

LABEL_31:
  v16 = (v3 + 72);
  if (v3 + 72 != a2)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      if (*v16 < *v13)
      {
        v27 = 0;
        memset(v24, 0, 24);
        v25 = 0u;
        memset(v26, 0, 25);
        TRawSymbol<Pointer32>::operator=(v24, v16);
        v19 = v17;
        while (1)
        {
          TRawSymbol<Pointer32>::operator=(v3 + v19 + 288, v3 + v19 + 192);
          if (v19 == -192)
          {
            break;
          }

          v20 = *(v3 + v19 + 96);
          v19 -= 96;
          if (LODWORD(v24[0]) >= v20)
          {
            v21 = v3 + v19 + 288;
            goto LABEL_39;
          }
        }

        v21 = v3;
LABEL_39:
        TRawSymbol<Pointer32>::operator=(v21, v24);
        if (++v18 == 8)
        {
          v22 = v16 + 96 == a2;
          v28 = v26;
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v28);
          return v22;
        }

        v28 = v26;
        std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v28);
      }

      v13 = v16;
      v17 += 96;
      v16 += 96;
    }

    while (v16 != a2);
  }

  return 1;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,TRawSymbol<Pointer32> *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
    if (a2 - a1 >= 97)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[24 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(a1, a4, v9, v12);
        v12 -= 24;
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
          swap(v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 97)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 5);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,TRawSymbol<Pointer32> *>(a1, v6, a4, v14);
        v6 -= 96;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22[9] = v4;
    v22[10] = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 5)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 5)) | 1;
      v12 = (a1 + 96 * v11);
      if (0x5555555555555556 * ((a4 - a1) >> 5) + 2 >= a3)
      {
        v13 = *v12;
      }

      else
      {
        v13 = *v12;
        v14 = v12[24];
        if (*v12 <= v14)
        {
          v13 = v12[24];
        }

        if (*v12 < v14)
        {
          v12 += 24;
          v11 = 0x5555555555555556 * ((a4 - a1) >> 5) + 2;
        }
      }

      if (v13 >= *a4)
      {
        v21 = 0;
        memset(v18, 0, 24);
        v19 = 0u;
        memset(v20, 0, 25);
        TRawSymbol<Pointer32>::operator=(v18, a4);
        do
        {
          v15 = v12;
          TRawSymbol<Pointer32>::operator=(v7, v12);
          if (v9 < v11)
          {
            break;
          }

          v12 = (a1 + 96 * ((2 * v11) | 1));
          if (2 * v11 + 2 >= a3)
          {
            v16 = *v12;
            v11 = (2 * v11) | 1;
          }

          else
          {
            v16 = *v12;
            v17 = v12[24];
            if (*v12 <= v17)
            {
              v16 = v12[24];
            }

            if (*v12 >= v17)
            {
              v11 = (2 * v11) | 1;
            }

            else
            {
              v12 += 24;
              v11 = 2 * v11 + 2;
            }
          }

          v7 = v15;
        }

        while (v16 >= LODWORD(v18[0]));
        TRawSymbol<Pointer32>::operator=(v15, v18);
        v22[0] = v20;
        std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v22);
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,TRawSymbol<Pointer32> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v14 = 0;
    memset(v11, 0, 24);
    v12 = 0u;
    memset(v13, 0, 25);
    TRawSymbol<Pointer32>::operator=(v11, a1);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(a1, a3, a4);
    v9 = v8;
    v10 = a2 - 96;
    if (v8 == v10)
    {
      TRawSymbol<Pointer32>::operator=(v8, v11);
    }

    else
    {
      TRawSymbol<Pointer32>::operator=(v8, v10);
      TRawSymbol<Pointer32>::operator=(v10, v11);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(a1, v9 + 96, a3, 0xAAAAAAAAAAAAAAABLL * ((v9 + 96 - a1) >> 5));
    }

    v15 = v13;
    std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v15);
  }
}

void sub_1D9729D58(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1 + 56;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = a1 + 96 * v4;
    v7 = v6 + 96;
    if (2 * v4 + 2 >= a3)
    {
      v4 = (2 * v4) | 1;
    }

    else
    {
      v9 = *(v6 + 192);
      v8 = v6 + 192;
      if (*(v8 - 96) >= v9)
      {
        v4 = (2 * v4) | 1;
      }

      else
      {
        v7 = v8;
        v4 = 2 * v4 + 2;
      }
    }

    TRawSymbol<Pointer32>::operator=(a1, v7);
    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v16[7] = v4;
    v16[8] = v5;
    v8 = v6 >> 1;
    v9 = (a1 + 96 * (v6 >> 1));
    v10 = a2 - 96;
    if (*v9 < *(a2 - 96))
    {
      v15 = 0;
      memset(v12, 0, 24);
      v13 = 0u;
      memset(v14, 0, 25);
      TRawSymbol<Pointer32>::operator=(v12, a2 - 96);
      do
      {
        v11 = v9;
        TRawSymbol<Pointer32>::operator=(v10, v9);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 96 * v8);
        v10 = v11;
      }

      while (*v9 < LODWORD(v12[0]));
      TRawSymbol<Pointer32>::operator=(v11, v12);
      v16[0] = v14;
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v16);
    }
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TRawSymbolOwnerData<Pointer64>::prepare_symbols(void)::{lambda(void)#1} &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  v4 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,false>(v2, v3, &v6, v5, 1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = &a2[-7].n128_u64[1];
  v55 = (a2 - 312);
  v56 = a2 - 13;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v9) >> 3);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      v54 = a2[-7].n128_u64[1];
      v48 = (a2 - 104);
      if (v54 < v9->n128_u64[0])
      {
LABEL_79:
        v50 = v9;
LABEL_80:
        v53 = v48;
LABEL_81:

        swap(v50, v53);
      }

      return;
    }

LABEL_10:
    if (v12 <= 2495)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(v9->n128_u64, a2->n128_u64);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,TRawSymbol<Pointer64> *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (v9 + 104 * (v13 >> 1));
    v16 = *v8;
    if (v12 >= 0x3401)
    {
      v17 = v15->n128_u64[0];
      if (v15->n128_u64[0] >= v9->n128_u64[0])
      {
        if (v16 < v17)
        {
          swap(v15, (a2 - 104));
          if (v15->n128_u64[0] < v9->n128_u64[0])
          {
            v18 = v9;
            v19 = v15;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v18 = v9;
        if (v16 < v17)
        {
          goto LABEL_17;
        }

        swap(v9, v15);
        if (*v8 < v15->n128_u64[0])
        {
          v18 = v15;
LABEL_17:
          v19 = (a2 - 104);
LABEL_26:
          swap(v18, v19);
        }
      }

      v24 = &v9[6].n128_u64[1];
      v23 = v9[6].n128_u64[1];
      v25 = v9 + 104 * v14;
      v28 = *(v25 - 13);
      v27 = (v25 - 104);
      v26 = v28;
      v29 = v56->n128_u64[0];
      if (v28 >= v23)
      {
        if (v29 < v26)
        {
          swap(v27, v56);
          if (v27->n128_u64[0] < *v24)
          {
            v30 = (a1 + 104);
            v31 = v27;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v30 = (a1 + 104);
        if (v29 < v26)
        {
          goto LABEL_31;
        }

        swap(v30, v27);
        if (v56->n128_u64[0] < v27->n128_u64[0])
        {
          v30 = v27;
LABEL_31:
          v31 = a2 - 13;
LABEL_39:
          swap(v30, v31);
        }
      }

      v32 = a1 + 104 * v14;
      v35 = *(v32 + 13);
      v34 = (v32 + 104);
      v33 = v35;
      v36 = v55->n128_u64[0];
      if (v35 >= a1[13].n128_u64[0])
      {
        if (v36 < v33)
        {
          swap(v34, v55);
          if (v34->n128_u64[0] < a1[13].n128_u64[0])
          {
            v37 = a1 + 13;
            v38 = v34;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v37 = a1 + 13;
        if (v36 < v33)
        {
          goto LABEL_44;
        }

        swap(v37, v34);
        if (v55->n128_u64[0] < v34->n128_u64[0])
        {
          v37 = v34;
LABEL_44:
          v38 = (a2 - 312);
LABEL_48:
          swap(v37, v38);
        }
      }

      v39 = v15->n128_u64[0];
      v40 = v34->n128_u64[0];
      if (v15->n128_u64[0] >= v27->n128_u64[0])
      {
        if (v40 < v39)
        {
          swap(v15, v34);
          if (v15->n128_u64[0] < v27->n128_u64[0])
          {
            v41 = v27;
            v42 = v15;
            goto LABEL_57;
          }
        }
      }

      else
      {
        v41 = v27;
        if (v40 < v39)
        {
          goto LABEL_53;
        }

        swap(v27, v15);
        if (v34->n128_u64[0] < v15->n128_u64[0])
        {
          v41 = v15;
LABEL_53:
          v42 = v34;
LABEL_57:
          swap(v41, v42);
        }
      }

      swap(a1, v15);
      goto LABEL_59;
    }

    v20 = v9->n128_u64[0];
    if (v9->n128_u64[0] >= v15->n128_u64[0])
    {
      if (v16 < v20)
      {
        swap(v9, (a2 - 104));
        if (v9->n128_u64[0] < v15->n128_u64[0])
        {
          v21 = v15;
          v22 = v9;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v21 = v15;
      if (v16 < v20)
      {
        goto LABEL_22;
      }

      swap(v15, v9);
      if (*v8 < v9->n128_u64[0])
      {
        v21 = v9;
LABEL_22:
        v22 = (a2 - 104);
LABEL_35:
        swap(v21, v22);
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && a1[-7].n128_u64[1] >= a1->n128_u64[0])
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRawSymbol<Pointer64> *,std::__less<void,void> &>(a1, a2);
      goto LABEL_66;
    }

    v43 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRawSymbol<Pointer64> *,std::__less<void,void> &>(a1, a2);
    if ((v44 & 1) == 0)
    {
      goto LABEL_64;
    }

    v45 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(a1, v43);
    v9 = (v43 + 13);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>((v43 + 13), a2))
    {
      a4 = -v11;
      a2 = v43;
      if (v45)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if ((v45 & 1) == 0)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,false>(a1, v43, a3, -v11, a5 & 1);
      v9 = (v43 + 13);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,0>(v9, (v9 + 104), v9 + 13, (a2 - 104));
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,0>(v9, (v9 + 104), v9 + 13, (v9 + 312));
      v52 = a2[-7].n128_u64[1];
      v51 = (a2 - 104);
      if (v52 < v9[19].n128_u64[1])
      {
        swap((v9 + 312), v51);
        if (v9[19].n128_u64[1] < v9[13].n128_u64[0])
        {
          swap(v9 + 13, (v9 + 312));
          if (v9[13].n128_u64[0] < v9[6].n128_u64[1])
          {
            swap((v9 + 104), v9 + 13);
            if (v9[6].n128_u64[1] < v9->n128_u64[0])
            {
              v53 = (v9 + 104);
              v50 = v9;
              goto LABEL_81;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v46 = v9[6].n128_u64[1];
  v49 = a2[-7].n128_u64[1];
  v48 = (a2 - 104);
  v47 = v49;
  if (v46 >= v9->n128_u64[0])
  {
    if (v47 < v46)
    {
      swap((v9 + 104), v48);
      if (v9[6].n128_u64[1] < v9->n128_u64[0])
      {
        v50 = v9;
        v53 = (v9 + 104);
        goto LABEL_81;
      }
    }
  }

  else
  {
    if (v47 < v46)
    {
      goto LABEL_79;
    }

    swap(v9, (v9 + 104));
    if (v48->n128_u64[0] < v9[6].n128_u64[1])
    {
      v50 = (v9 + 104);
      goto LABEL_80;
    }
  }
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v7 = a1;
  v8 = a2->n128_u64[0];
  v9 = a3->n128_u64[0];
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v9 < v8)
    {
      *&result = swap(a2, a3).n128_u64[0];
      if (a2->n128_u64[0] < v7->n128_u64[0])
      {
        a1 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      *&result = swap(a1, v11).n128_u64[0];
      goto LABEL_10;
    }

    *&result = swap(a1, a2).n128_u64[0];
    if (a3->n128_u64[0] < a2->n128_u64[0])
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (a4->n128_u64[0] < a3->n128_u64[0])
  {
    *&result = swap(a3, a4).n128_u64[0];
    if (a3->n128_u64[0] < a2->n128_u64[0])
    {
      *&result = swap(a2, a3).n128_u64[0];
      if (a2->n128_u64[0] < v7->n128_u64[0])
      {

        *&result = swap(v7, a2).n128_u64[0];
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v17[9] = v2;
    v17[10] = v3;
    v6 = (a1 + 13);
    if (a1 + 13 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8[13];
        v10 = *v8;
        v8 = v6;
        if (v9 < v10)
        {
          v16 = 0;
          memset(v14, 0, 32);
          v14[3] = 0u;
          memset(v15, 0, 25);
          TRawSymbol<Pointer64>::operator=(v14, v6);
          v11 = v7;
          while (1)
          {
            TRawSymbol<Pointer64>::operator=(a1 + v11 + 104, a1 + v11);
            if (!v11)
            {
              break;
            }

            v12 = *(a1 + v11 - 104);
            v11 -= 104;
            if (*&v14[0] >= v12)
            {
              v13 = a1 + v11 + 104;
              goto LABEL_10;
            }
          }

          v13 = a1;
LABEL_10:
          TRawSymbol<Pointer64>::operator=(v13, v14);
          v17[0] = v15;
          std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v17);
        }

        v6 = (v8 + 13);
        v7 += 104;
      }

      while (v8 + 13 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v12[7] = v2;
    v12[8] = v3;
    v5 = a1;
    v6 = (a1 + 13);
    if (a1 + 13 != a2)
    {
      do
      {
        v7 = v6;
        if (v5[13] < *v5)
        {
          v11 = 0;
          memset(v9, 0, 32);
          v9[3] = 0u;
          memset(v10, 0, 25);
          TRawSymbol<Pointer64>::operator=(v9, v6);
          do
          {
            TRawSymbol<Pointer64>::operator=((v5 + 13), v5);
            v8 = *(v5 - 13);
            v5 -= 13;
          }

          while (*&v9[0] < v8);
          TRawSymbol<Pointer64>::operator=((v5 + 13), v9);
          v12[0] = v10;
          std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v12);
        }

        v6 = (v7 + 13);
        v5 = v7;
      }

      while (v7 + 13 != a2);
    }
  }
}

__n128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRawSymbol<Pointer64> *,std::__less<void,void> &>(uint64_t a1, __n128 *a2)
{
  v13 = 0;
  memset(v11, 0, 32);
  v11[3] = 0u;
  memset(v12, 0, 25);
  TRawSymbol<Pointer64>::operator=(v11, a1);
  if (*&v11[0] >= a2[-7].n128_u64[1])
  {
    v6 = (a1 + 104);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 = (v6 + 104);
    }

    while (*&v11[0] >= v4->n128_u64[0]);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[6].n128_u64[1];
      v4 = (v4 + 104);
    }

    while (*&v11[0] >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = a2[-7].n128_u64[1];
      a2 = (a2 - 104);
    }

    while (*&v11[0] < v7);
  }

  while (v4 < a2)
  {
    swap(v4, a2);
    do
    {
      v8 = v4[6].n128_u64[1];
      v4 = (v4 + 104);
    }

    while (*&v11[0] >= v8);
    do
    {
      v9 = a2[-7].n128_u64[1];
      a2 = (a2 - 104);
    }

    while (*&v11[0] < v9);
  }

  if (&v4[-7].n128_i8[8] != a1)
  {
    TRawSymbol<Pointer64>::operator=(a1, &v4[-7].n128_i64[1]);
  }

  TRawSymbol<Pointer64>::operator=(&v4[-7].n128_i64[1], v11);
  v14 = v12;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v14);
  return v4;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRawSymbol<Pointer64> *,std::__less<void,void> &>(uint64_t a1, __n128 *a2)
{
  v17 = 0;
  memset(v15, 0, 32);
  v15[3] = 0u;
  memset(v16, 0, 25);
  TRawSymbol<Pointer64>::operator=(v15, a1);
  v4 = 0;
  do
  {
    v5 = *(a1 + v4 + 104);
    v4 += 104;
  }

  while (v5 < *&v15[0]);
  v6 = a1 + v4;
  v7 = a1 + v4 - 104;
  if (v4 == 104)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = a2[-7].n128_u64[1];
      a2 = (a2 - 104);
    }

    while (v9 >= *&v15[0]);
  }

  else
  {
    do
    {
      v8 = a2[-7].n128_u64[1];
      a2 = (a2 - 104);
    }

    while (v8 >= *&v15[0]);
  }

  if (v6 < a2)
  {
    v10 = (a1 + v4);
    v11 = a2;
    do
    {
      swap(v10, v11);
      do
      {
        v12 = v10[6].n128_u64[1];
        v10 = (v10 + 104);
      }

      while (v12 < *&v15[0]);
      do
      {
        v13 = v11[-7].n128_u64[1];
        v11 = (v11 - 104);
      }

      while (v13 >= *&v15[0]);
    }

    while (v10 < v11);
    v7 = &v10[-7].n128_i64[1];
  }

  if (v7 != a1)
  {
    TRawSymbol<Pointer64>::operator=(a1, v7);
  }

  TRawSymbol<Pointer64>::operator=(v7, v15);
  v18 = v16;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v7;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = *(a1 + 104);
        v5 = (a2 - 13);
        v10 = *(a2 - 13);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          swap((a1 + 104), v5);
          if (*(v3 + 104) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = (v3 + 104);
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          swap(a1, (a1 + 104));
          if (v5->n128_u64[0] >= *(v3 + 104))
          {
            return 1;
          }

          a1 = v3 + 104;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        swap(a1, v8);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,0>(a1, (a1 + 104), (a1 + 208), (a2 - 13));
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,0>(a1, (a1 + 104), (a1 + 208), (a1 + 312));
        v7 = *(a2 - 13);
        v6 = (a2 - 13);
        if (v7 >= *(v3 + 312))
        {
          return 1;
        }

        swap((v3 + 312), v6);
        if (*(v3 + 312) >= *(v3 + 208))
        {
          return 1;
        }

        swap((v3 + 208), (v3 + 312));
        if (*(v3 + 208) >= *(v3 + 104))
        {
          return 1;
        }

        swap((v3 + 104), (v3 + 208));
        if (*(v3 + 104) >= *v3)
        {
          return 1;
        }

        v8 = (v3 + 104);
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 13);
      if (*(a2 - 13) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = (a1 + 208);
  v11 = *(a1 + 208);
  v13 = *(a1 + 104);
  if (v13 < *a1)
  {
    if (v11 >= v13)
    {
      swap(a1, (a1 + 104));
      if (*(v3 + 208) >= *(v3 + 104))
      {
        goto LABEL_31;
      }

      a1 = v3 + 104;
    }

    v14 = (v3 + 208);
    goto LABEL_30;
  }

  if (v11 < v13)
  {
    swap((a1 + 104), (a1 + 208));
    if (*(v3 + 104) < *v3)
    {
      a1 = v3;
      v14 = (v3 + 104);
LABEL_30:
      swap(a1, v14);
    }
  }

LABEL_31:
  v15 = (v3 + 312);
  if ((v3 + 312) != a2)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (*v15 < *v12)
      {
        v25 = 0;
        memset(v23, 0, 32);
        v23[3] = 0u;
        memset(v24, 0, 25);
        TRawSymbol<Pointer64>::operator=(v23, v15);
        v18 = v16;
        while (1)
        {
          TRawSymbol<Pointer64>::operator=(v3 + v18 + 312, v3 + v18 + 208);
          if (v18 == -208)
          {
            break;
          }

          v19 = *(v3 + v18 + 104);
          v18 -= 104;
          if (*&v23[0] >= v19)
          {
            v20 = v3 + v18 + 312;
            goto LABEL_39;
          }
        }

        v20 = v3;
LABEL_39:
        TRawSymbol<Pointer64>::operator=(v20, v23);
        if (++v17 == 8)
        {
          v21 = v15 + 13 == a2;
          v26 = v24;
          std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v26);
          return v21;
        }

        v26 = v24;
        std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v26);
      }

      v12 = v15;
      v16 += 104;
      v15 += 13;
    }

    while (v15 != a2);
  }

  return 1;
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,TRawSymbol<Pointer64> *>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 105)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1->n128_u64[13 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(a1, a4, v9, v12);
        v12 -= 13;
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
        if (v13->n128_u64[0] < a1->n128_u64[0])
        {
          swap(v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(a1, a4, v9, a1->n128_u64);
        }

        v13 = (v13 + 104);
      }

      while (v13 != a3);
    }

    if (v8 >= 105)
    {
      v14 = 0x4EC4EC4EC4EC4EC5 * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,TRawSymbol<Pointer64> *>(a1, v6, a4, v14);
        v6 -= 104;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21[9] = v4;
    v21[10] = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= 0x4EC4EC4EC4EC4EC5 * ((a4 - a1) >> 3))
    {
      v11 = (0x9D89D89D89D89D8ALL * ((a4 - a1) >> 3)) | 1;
      v12 = (a1 + 104 * v11);
      if ((0x9D89D89D89D89D8ALL * ((a4 - a1) >> 3) + 2) >= a3)
      {
        v13 = *v12;
      }

      else
      {
        v13 = *v12;
        v14 = v12[13];
        if (*v12 <= v14)
        {
          v13 = v12[13];
        }

        if (*v12 < v14)
        {
          v12 += 13;
          v11 = 0x9D89D89D89D89D8ALL * ((a4 - a1) >> 3) + 2;
        }
      }

      if (v13 >= *a4)
      {
        v20 = 0;
        memset(v18, 0, 32);
        v18[3] = 0u;
        memset(v19, 0, 25);
        TRawSymbol<Pointer64>::operator=(v18, a4);
        do
        {
          v15 = v12;
          TRawSymbol<Pointer64>::operator=(v7, v12);
          if (v9 < v11)
          {
            break;
          }

          v12 = (a1 + 104 * ((2 * v11) | 1));
          if (2 * v11 + 2 >= a3)
          {
            v16 = *v12;
            v11 = (2 * v11) | 1;
          }

          else
          {
            v16 = *v12;
            v17 = v12[13];
            if (*v12 <= v17)
            {
              v16 = v12[13];
            }

            if (*v12 >= v17)
            {
              v11 = (2 * v11) | 1;
            }

            else
            {
              v12 += 13;
              v11 = 2 * v11 + 2;
            }
          }

          v7 = v15;
        }

        while (v16 >= *&v18[0]);
        TRawSymbol<Pointer64>::operator=(v15, v18);
        v21[0] = v19;
        std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v21);
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,TRawSymbol<Pointer64> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v13 = 0;
    memset(v11, 0, 32);
    v11[3] = 0u;
    memset(v12, 0, 25);
    TRawSymbol<Pointer64>::operator=(v11, a1);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(a1, a3, a4);
    v9 = v8;
    v10 = a2 - 104;
    if (v8 == v10)
    {
      TRawSymbol<Pointer64>::operator=(v8, v11);
    }

    else
    {
      TRawSymbol<Pointer64>::operator=(v8, v10);
      TRawSymbol<Pointer64>::operator=(v10, v11);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(a1, v9 + 104, a3, 0x4EC4EC4EC4EC4EC5 * ((v9 + 104 - a1) >> 3));
    }

    v14 = v12;
    std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v14);
  }
}

void sub_1D972B1F0(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1 + 64;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = a1 + 104 * v4;
    v7 = v6 + 104;
    if (2 * v4 + 2 >= a3)
    {
      v4 = (2 * v4) | 1;
    }

    else
    {
      v9 = *(v6 + 208);
      v8 = v6 + 208;
      if (*(v8 - 104) >= v9)
      {
        v4 = (2 * v4) | 1;
      }

      else
      {
        v7 = v8;
        v4 = 2 * v4 + 2;
      }
    }

    TRawSymbol<Pointer64>::operator=(a1, v7);
    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v15[7] = v4;
    v15[8] = v5;
    v8 = v6 >> 1;
    v9 = (a1 + 104 * (v6 >> 1));
    v10 = a2 - 104;
    if (*v9 < *(a2 - 104))
    {
      v14 = 0;
      memset(v12, 0, 32);
      v12[3] = 0u;
      memset(v13, 0, 25);
      TRawSymbol<Pointer64>::operator=(v12, a2 - 104);
      do
      {
        v11 = v9;
        TRawSymbol<Pointer64>::operator=(v10, v9);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 104 * v8);
        v10 = v11;
      }

      while (*v9 < *&v12[0]);
      TRawSymbol<Pointer64>::operator=(v11, v12);
      v15[0] = v13;
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v15);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__equal_range_multi<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && v4[2] == *a2);
  }

  return result;
}

uint64_t TRawSymbol<Pointer32>::TRawSymbol(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 65) = 0u;
  TRawSymbol<Pointer32>::operator=(a1, a2);
  return a1;
}

void sub_1D972B418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 56);
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<TRawSymbol<Pointer32>>::__assign_with_size[abi:ne200100]<TRawSymbol<Pointer32>*,TRawSymbol<Pointer32>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    std::vector<TRawSymbol<Pointer32>>::__vdeallocate(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TRawSymbol<Pointer32>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        TRawSymbol<Pointer32>::operator=(v8, v6);
        v6 += 96;
        v8 += 96;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    for (; v11 != v8; v11 -= 96)
    {
      v14 = (v11 - 40);
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v14);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 == v8)
    {
      v13 = a2;
    }

    else
    {
      v13 = a2 + v12;
      do
      {
        TRawSymbol<Pointer32>::operator=(v8, v6);
        v6 += 96;
        v8 += 96;
        v12 -= 96;
      }

      while (v12);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*,TRawSymbol<Pointer32>*,TRawSymbol<Pointer32>*>(a1, v13, a3, v11);
  }
}

void std::vector<TRawSymbol<Pointer32>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::allocator<TRawSymbol<Pointer32>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*,TRawSymbol<Pointer32>*,TRawSymbol<Pointer32>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      TRawSymbol<Pointer32>::TRawSymbol(v4, v6);
      v6 += 96;
      v4 = v11 + 96;
      v11 += 96;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      v7 = v3 + 10;
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v7);
    }

    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

uint64_t TRawSymbol<Pointer64>::TRawSymbol(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  TRawSymbol<Pointer64>::operator=(a1, a2);
  return a1;
}

void sub_1D972B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 64);
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<TRawSymbol<Pointer64>>::__assign_with_size[abi:ne200100]<TRawSymbol<Pointer64>*,TRawSymbol<Pointer64>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<TRawSymbol<Pointer64>>::__vdeallocate(a1);
    if (a4 <= 0x276276276276276)
    {
      v9 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v10 = 0x276276276276276;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TRawSymbol<Pointer64>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x4EC4EC4EC4EC4EC5 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        TRawSymbol<Pointer64>::operator=(v8, v6);
        v6 += 104;
        v8 += 104;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    for (; v11 != v8; v11 -= 104)
    {
      v14 = (v11 - 40);
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v14);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 == v8)
    {
      v13 = a2;
    }

    else
    {
      v13 = a2 + v12;
      do
      {
        TRawSymbol<Pointer64>::operator=(v8, v6);
        v6 += 104;
        v8 += 104;
        v12 -= 104;
      }

      while (v12);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*,TRawSymbol<Pointer64>*,TRawSymbol<Pointer64>*>(a1, v13, a3, v11);
  }
}

void std::vector<TRawSymbol<Pointer64>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::allocator<TRawSymbol<Pointer64>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*,TRawSymbol<Pointer64>*,TRawSymbol<Pointer64>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      TRawSymbol<Pointer64>::TRawSymbol(v4, v6);
      v6 += 104;
      v4 = v11 + 104;
      v11 += 104;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      v7 = v3 + 11;
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v7);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_1D972BD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D972BE64(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<unsigned long long const,TRawSymbol<Pointer64>>::pair[abi:ne200100]<unsigned long long &,unsigned long long &,unsigned long long &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo const*&,0ul,0ul,1ul,2ul,3ul,4ul,5ul>(uint64_t result, void **a2, uint64_t **a3)
{
  *result = **a2;
  v3 = **a3;
  v4 = *a3[1];
  v5 = *a3[2];
  v6 = *a3[3];
  v7 = *a3[4];
  v8 = *a3[5];
  *(result + 56) = 0u;
  *(result + 8) = v3;
  *(result + 16) = v4;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = v5;
  *(result + 48) = v6;
  *(result + 104) = 0;
  *(result + 72) = 0u;
  *(result + 81) = 0u;
  if (v8)
  {
    *(result + 56) = *v8;
    v7 |= 0x80000000;
  }

  *(result + 36) = v7;
  return result;
}

void sub_1D972BF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D972C000(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_1D972C078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D972C144(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<unsigned long long const,TRawSymbol<Pointer32>>::pair[abi:ne200100]<unsigned int &,unsigned int &,unsigned int &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo const*&,0ul,0ul,1ul,2ul,3ul,4ul,5ul>(uint64_t result, unsigned int **a2, uint64_t a3)
{
  *result = **a2;
  v3 = **(a3 + 8);
  v4 = **(a3 + 16);
  v5 = **(a3 + 24);
  v6 = **(a3 + 32);
  v7 = **(a3 + 40);
  *(result + 8) = **a3;
  *(result + 12) = v3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = v4;
  *(result + 40) = v5;
  *(result + 48) = 0u;
  *(result + 96) = 0;
  *(result + 64) = 0u;
  *(result + 73) = 0u;
  if (v7)
  {
    *(result + 48) = *v7;
    v6 |= 0x80000000;
  }

  *(result + 28) = v6;
  return result;
}

void sub_1D972C228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D972C2E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t CSCppTextSectionDescriptorMap<Pointer32>::~CSCppTextSectionDescriptorMap(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v4 = v3[5];
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 80);
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer64>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 88);
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t TRawSymbolOwnerData<Pointer32>::_raw_bytes_for_range_on_demand_fault(uint64_t a1, uint64_t a2, unint64_t a3)
{
  std::mutex::lock((a1 + 16));
  if (!*(a1 + 88))
  {
    operator new();
  }

  std::mutex::unlock((a1 + 16));
  v6 = atomic_load((*(a2 + 8) + 40));
  if ((v6 & 4) != 0 && !*(a1 + 240))
  {
    TRawSymbolOwnerData<Pointer32>::_update_text_section_data_locked(a1);
  }

  section_descriptor_for_range = CSCppTextSectionDescriptorMap<Pointer32>::find_section_descriptor_for_range(*(a1 + 88), a3);
  if (!section_descriptor_for_range)
  {
    v8 = *(a1 + 88);
    CSCppTextSectionDescriptorMap<Pointer32>::create_section_descriptor_for_range();
  }

  text_section_for = CSCppTextSectionDataDescriptor::get_text_section_for_range<Pointer32>(section_descriptor_for_range, a3, a2);
  if (a3 >= text_section_for && HIDWORD(a3) + a3 <= (HIDWORD(text_section_for) + text_section_for))
  {
    return v10 + (a3 - text_section_for);
  }

  else
  {
    return 0;
  }
}

uint64_t CSCppTextSectionDescriptorMap<Pointer32>::find_section_descriptor_for_range(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  v4 = (a1 + 8);
  for (i = *(a1 + 8); i; i = *(i + 8 * v8))
  {
    v6 = *(i + 32);
    v7 = v6 > a2;
    v8 = v6 <= a2;
    if (v7)
    {
      v4 = i;
    }
  }

  if (v4 == *a1)
  {
    goto LABEL_12;
  }

  v9 = *v4;
  if (*v4)
  {
    do
    {
      v10 = v9;
      v9 = v9[1];
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = v4[2];
      v11 = *v10 == v4;
      v4 = v10;
    }

    while (v11);
  }

  v12 = v10[4];
  if (a2 < v12 || HIDWORD(a2) + a2 > (HIDWORD(v12) + v12))
  {
LABEL_12:
    v13 = 0;
  }

  else
  {
    v13 = v10[5];
  }

  std::mutex::unlock((a1 + 24));
  return v13;
}

unint64_t CSCppTextSectionDataDescriptor::get_text_section_for_range<Pointer32>(unint64_t a1, unint64_t a2, uint64_t a3)
{
  CSCppTextSectionDataDescriptor::get_text_section<Pointer32>(a1, a2, a3);
  if (*(a1 + 16))
  {
    if (*(a1 + 136) == 1)
    {
      v5 = CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer32>(a1, a2);
      v6 = HIDWORD(v5);
    }

    else
    {
      LODWORD(v5) = *a1;
      LODWORD(v6) = *(a1 + 8);
    }
  }

  else
  {
    LODWORD(v5) = 0;
    LODWORD(v6) = 0;
  }

  return v5 | (v6 << 32);
}

void sub_1D972C86C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CSCppTextSectionDataDescriptor>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t CSCppTextSectionDataDescriptor::get_text_section<Pointer32>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  std::mutex::lock((a1 + 144));
  text_section = CSCppTextSectionDataDescriptor::_get_text_section_locked<Pointer32>(a1, &v7, a3);
  std::mutex::unlock((a1 + 144));
  return text_section;
}

unint64_t CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer32>(int *a1, unint64_t a2)
{
  if ((a1[20] & 1) == 0)
  {
    v7 = *a1;
    v8 = a1[2];
    v9 = *(a1 + 2);
    return v7 | (v8 << 32);
  }

  v3 = a2;
  v4 = a2;
  v5 = *a1;
  v6 = HIDWORD(a2);
  if (a2 < *a1 || v6 + a2 > *(a1 + 1) + v5)
  {
    v4 = (v5 + a2 - a1[28]);
  }

  if (v4 >= v5 && v4 + v6 <= *(a1 + 1) + v5)
  {
    std::mutex::lock((a1 + 36));
    v11 = (v4 - *a1 + a1[30] + a1[28]);
    v12 = (a1 + 8);
    for (i = *(a1 + 4); i; i = i[v15])
    {
      v14 = i[4];
      v23 = v14 > v11;
      v15 = v14 <= v11;
      if (v23)
      {
        v12 = i;
      }
    }

    if (v12 != *(a1 + 3))
    {
      v16 = *v12;
      if (*v12)
      {
        do
        {
          v17 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v12[2];
          v18 = *v17 == v12;
          v12 = v17;
        }

        while (v18);
      }

      v20 = v17[4];
      v19 = v17[5];
      v21 = v6 + v11;
      v22 = v19 + v20;
      v23 = v20 > v11 || v21 > v22;
      if (!v23)
      {
        v27 = v3 - v11 + v20;
        v28 = v11 - v3 - v20;
        v29 = v19 - v28;
        v30 = v17[6] + v28;
        v31 = v20 >= v11 - v3;
        v32 = v20 - (v11 - v3);
        if (v31)
        {
          v33 = v17[5];
        }

        else
        {
          v32 = 0;
          v33 = v29;
        }

        if (v31)
        {
          v34 = v17[6];
        }

        v35 = v11 > v3;
        if (v11 > v3)
        {
          v7 = v32;
        }

        else
        {
          v7 = v27;
        }

        if (v35)
        {
          v8 = v33;
        }

        else
        {
          v8 = v19;
        }

        if (!v35)
        {
          v36 = v17[6];
        }

LABEL_47:
        std::mutex::unlock((a1 + 36));
        return v7 | (v8 << 32);
      }

      if (v20 >= v11 && v22 <= v21)
      {
        std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer(a1 + 3, v17);
        operator delete(v17);
      }
    }

    if (*(a1 + 48) != 1)
    {
      if (*(a1 + 79) < 0)
      {
        v26 = *(a1 + 7);
      }

      operator new();
    }

    v7 = *a1;
    v8 = a1[2];
    v25 = *(a1 + 2);
    goto LABEL_47;
  }

  v7 = 0;
  v8 = 0;
  return v7 | (v8 << 32);
}

void sub_1D972CCA0(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  std::mutex::unlock((v1 + 144));
  _Unwind_Resume(a1);
}

uint64_t *std::__call_once_proxy[abi:ne200100]<std::tuple<TRangeValue<Pointer32,unsigned char *> CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer32>(TRange<Pointer32>)::{lambda(void)#1} &&>>(uint64_t ***a1)
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

unint64_t TRawSymbolOwnerData<Pointer64>::_raw_bytes_for_range_on_demand_fault(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 16));
  if (!*(a1 + 88))
  {
    operator new();
  }

  std::mutex::unlock((a1 + 16));
  v8 = atomic_load((*(a2 + 8) + 40));
  if ((v8 & 4) != 0 && !*(a1 + 248))
  {
    TRawSymbolOwnerData<Pointer64>::_update_text_section_data_locked(a1);
  }

  section_descriptor_for_range = CSCppTextSectionDescriptorMap<Pointer64>::find_section_descriptor_for_range(*(a1 + 88), a3, a4);
  if (!section_descriptor_for_range)
  {
    v10 = *(a1 + 88);
    CSCppTextSectionDescriptorMap<Pointer64>::create_section_descriptor_for_range();
  }

  CSCppTextSectionDataDescriptor::get_text_section_for_range<Pointer64>(section_descriptor_for_range, a3, a4, a2, v12);
  if (a3 < v12[0])
  {
    return 0;
  }

  if (a4 + a3 <= v12[1] + v12[0])
  {
    return v12[2] + a3 - v12[0];
  }

  return 0;
}

uint64_t std::string_view::find[abi:ne200100](uint64_t *a1, char *a2, int64_t a3, unint64_t a4)
{
  v4 = a1[1];
  v5 = v4 - a4;
  if (v4 < a4)
  {
    return -1;
  }

  if (a3)
  {
    v7 = *a1;
    v8 = (*a1 + v4);
    if (v5 >= a3)
    {
      v12 = (v7 + a4);
      v13 = *a2;
      do
      {
        v14 = v5 - a3;
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v12, v13, v14 + 1);
        if (!v15)
        {
          break;
        }

        v9 = v15;
        if (!memcmp(v15, a2, a3))
        {
          goto LABEL_6;
        }

        v12 = v9 + 1;
        v5 = v8 - (v9 + 1);
      }

      while (v5 >= a3);
    }

    v9 = v8;
LABEL_6:
    if (v9 == v8)
    {
      return -1;
    }

    else
    {
      return &v9[-v7];
    }
  }

  return a4;
}

BOOL CSCppDyldSplitSharedCacheMemory::is_primary_subcache(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  if (*(a1 + 49) != 1 || !a3)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = *a2++;
    if (v4 == 46)
    {
      ++v3;
    }

    --a3;
  }

  while (a3);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return std::string_view::find[abi:ne200100](v6, ".development", 12, 0) != -1;
  }

  return 0;
}

unint64_t std::string_view::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = strlen(__s);
  v8 = v5 - a3;
  if (v5 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v6 + v5);
    if (v8 >= v7)
    {
      v13 = (v6 + a3);
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
          goto LABEL_6;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_6:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v6];
    }
  }

  return a3;
}

const char *CSCppDyldSplitSharedCacheMemory::arch_name_from_subcache_name(uint64_t a1, unint64_t a2)
{
  v6 = a1;
  v7 = a2;
  v2 = std::string_view::find[abi:ne200100](&v6, "dyld_shared_cache_", 0);
  if (v2 == -1)
  {
    return "";
  }

  v3 = v2 + 18;
  if (v7 < v2 + 18)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v4 = v6 + v3;
  if (v7 != v3)
  {
    memchr((v6 + v3), 46, v7 - v3);
  }

  return v4;
}

void CSCppDyldSplitSharedCacheMemory::filename_of_local_symbols_shared_cache_for_arch(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a2, *(a2 + 8));
  }

  else
  {
    v15 = *a2;
  }

  std::string::append(&v15, "dyld_shared_cache_", 0x12uLL);
  FamilyName = CSArchitectureGetFamilyName(a1);
  v8 = strlen(FamilyName);
  std::string::append(&v15, FamilyName, v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v10 = __p;
  std::string::basic_string[abi:ne200100](__p, size + 8);
  if (v14 < 0)
  {
    v10 = __p[0];
  }

  if (size)
  {
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    memmove(v10, v11, size);
  }

  strcpy(v10 + size, ".symbols");
  if (v14 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (access(v12, 0))
  {
    if (a3)
    {
      std::string::append(&v15, ".development", 0xCuLL);
    }

    *a4 = v15;
    memset(&v15, 0, sizeof(v15));
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *__p;
    a4->__r_.__value_.__r.__words[2] = v14;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1D972D364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

std::string *CSCppDyldSplitSharedCacheMemory::filename_of_primary_shared_cache_for_arch@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, std::string *a4@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a2, *(a2 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a2;
    a4->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v7 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if (v7 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4->__r_.__value_.__r.__words[0];
  }

  if (v7 >= 0)
  {
    size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a4->__r_.__value_.__l.__size_;
  }

  v10 = v8 + size;
  if (size >= 38)
  {
    v12 = size;
    v13 = v8;
    do
    {
      v14 = memchr(v13, 47, v12 - 37);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      if (!memcmp(v14, "/System/DriverKit/System/Library/dyld/", 0x26uLL))
      {
        goto LABEL_17;
      }

      v13 = (v15 + 1);
      v12 = v10 - (v15 + 1);
    }

    while (v12 > 37);
    v15 = v8 + size;
LABEL_17:
    v11 = v15 != v10 && v15 - v8 != -1;
    if (size != 38)
    {
      v17 = v8;
      do
      {
        v18 = memchr(v17, 47, size - 38);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        if (!memcmp(v18, "/System/ExclaveKit/System/Library/dyld/", 0x27uLL))
        {
          goto LABEL_29;
        }

        v17 = (v19 + 1);
        size = v10 - (v19 + 1);
      }

      while (size > 38);
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = v10;
LABEL_29:
  v21 = v19 != v10 && v19 - v8 != -1;
  std::string::append(a4, "dyld_shared_cache_", 0x12uLL);
  FamilyName = CSArchitectureGetFamilyName(a1);
  v23 = strlen(FamilyName);
  result = std::string::append(a4, FamilyName, v23);
  if (!v11 && (a3 & 1) != 0 && !v21)
  {
    return std::string::append(a4, ".development", 0xCuLL);
  }

  return result;
}

void sub_1D972D544(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppDyldSplitSharedCacheMemory::task_uses_development_cache(CSCppDyldSplitSharedCacheMemory *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v6[785] = *MEMORY[0x1E69E9840];
  if (mach_task_is_self(v1))
  {
    {
      CSCppMachTask::CSCppMachTask(v6, v1, 0);
      v5 = CSCppMachTask::uses_development_dsc(v6);
      CSCppMachTask::~CSCppMachTask(v6);
      CSCppDyldSplitSharedCacheMemory::task_uses_development_cache::analysis_process_uses_development_dsc = v5;
    }

    v2 = CSCppDyldSplitSharedCacheMemory::task_uses_development_cache::analysis_process_uses_development_dsc;
  }

  else
  {
    CSCppMachTask::CSCppMachTask(v6, v1, 0);
    v2 = CSCppMachTask::uses_development_dsc(v6);
    CSCppMachTask::~CSCppMachTask(v6);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2 & 1;
}

void sub_1D972D66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CSCppMachTask::~CSCppMachTask(&a9);
  _Unwind_Resume(a1);
}

void CSCppDyldSplitSharedCacheMemory::shared_cache_directory_for_task(CSCppDyldSplitSharedCacheMemory *this@<X0>, std::string *a2@<X8>)
{
  is_self = mach_task_is_self(this);
  v4 = system_dyld_shared_cache_path();
  v5 = v4;
  if (is_self)
  {
    if (*(v4 + 23) < 0)
    {
      v6 = *v4;
      v7 = *(v4 + 1);

      std::string::__init_copy_ctor_external(a2, v6, v7);
      return;
    }

LABEL_12:
    v11 = *v5;
    a2->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a2->__r_.__value_.__l.__data_ = v11;
    return;
  }

  v24 = 0;
  if (!_dyld_process_info_create())
  {
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 1));
      return;
    }

    goto LABEL_12;
  }

  v8 = 0;
  v9 = "";
  while (1)
  {
    v10 = cryptex_prefixes[v8];
    if (!access(v10, 4))
    {
      break;
    }

    if (++v8 == 3)
    {
      goto LABEL_14;
    }
  }

  v9 = v10;
LABEL_14:
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *v5, *(v5 + 1));
  }

  else
  {
    v12 = *v5;
    v22.__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&v22.__r_.__value_.__l.__data_ = v12;
  }

  __s = v9;
  platform = _dyld_process_info_get_platform();
  switch(platform)
  {
    case 1:
      goto LABEL_21;
    case 10:
      std::string::basic_string[abi:ne200100]<0>(&v28, __s);
      std::string::basic_string[abi:ne200100]<0>(&__p, "/System/DriverKit/System/Library/dyld/");
      if ((v27 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v18 = v27;
      }

      else
      {
        v18 = v26;
      }

      v16 = std::string::append(&v28, p_p, v18);
      if (SHIBYTE(v16->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    case 6:
LABEL_21:
      std::string::basic_string[abi:ne200100]<0>(&v28, __s);
      std::string::basic_string[abi:ne200100]<0>(&__p, "/System/Library/dyld/");
      if ((v27 & 0x80u) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v15 = v27;
      }

      else
      {
        v15 = v26;
      }

      v16 = std::string::append(&v28, v14, v15);
      if (SHIBYTE(v16->__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_28:
        std::string::__init_copy_ctor_external(a2, v16->__r_.__value_.__l.__data_, v16->__r_.__value_.__l.__size_);
LABEL_47:
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        goto LABEL_51;
      }

LABEL_46:
      v21 = *&v16->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v21;
      goto LABEL_47;
  }

  if (!dyld_is_simulator_platform())
  {
    std::string::basic_string[abi:ne200100]<0>(&v28, __s);
    std::string::basic_string[abi:ne200100]<0>(&__p, "/System/Library/Caches/com.apple.dyld/");
    if ((v27 & 0x80u) == 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v20 = v27;
    }

    else
    {
      v20 = v26;
    }

    v16 = std::string::append(&v28, v19, v20);
    if (SHIBYTE(v16->__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_46;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
LABEL_51:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  _dyld_process_info_release();
}

void sub_1D972D990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void CSCppDyldSplitSharedCacheMemory::filename_of_local_symbols_shared_cache(CSCppDyldSplitSharedCacheMemory *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  CSCppDyldSplitSharedCacheMemory::shared_cache_directory_for_task(a1, &v8);
  v6 = CSCppDyldSplitSharedCacheMemory::task_uses_development_cache(a1);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  CSCppDyldSplitSharedCacheMemory::filename_of_local_symbols_shared_cache_for_arch(a2, &__p, v6, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1D972DAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void CSCppDyldSplitSharedCacheMemory::filename_of_primary_shared_cache(CSCppDyldSplitSharedCacheMemory *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  CSCppDyldSplitSharedCacheMemory::shared_cache_directory_for_task(a1, &v8);
  v6 = CSCppDyldSplitSharedCacheMemory::task_uses_development_cache(a1);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  CSCppDyldSplitSharedCacheMemory::filename_of_primary_shared_cache_for_arch(a2, &__p, v6, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1D972DB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppDyldSplitSharedCacheMemory::bytes_at(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    result = (*(**v3 + 32))(*v3, a2, a3);
    if (result && v8 != 0)
    {
      break;
    }

    v3 += 5;
    if (v3 == v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CSCppDyldSplitSharedCacheMemory::footprint(CSCppDyldSplitSharedCacheMemory *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1;
    v1 += 5;
    v3 += (*(*v4 + 40))(v4);
  }

  while (v1 != v2);
  return v3;
}

void sub_1D972DD44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CSCppDyldSplitSharedCacheMemory::analyze_primary_cache_for_symbols_file(v1);
  }

  _Unwind_Resume(exception_object);
}

const char *TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::needed_mapping_size_for_dyld_shared_cache_at(void *a1, uint64_t a2)
{
  result = (*(**a1 + 32))(*a1, a2, 32);
  if (result)
  {
    v3 = result;
    if (!strncmp(result, "dyld_v", 6uLL))
    {
      v4 = v3[4];
      v5 = v3[5];
      v6 = v3[98];
      v7 = CSCppDyldSharedCache::uses_universal_cache_struct_layout(v3);
      v8 = 24;
      if (v7)
      {
        v8 = 56;
      }

      return (v4 + 32 * v5 + v6 + v8 * v3[99]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 CSCppDyldSplitSharedCacheMemory::analyze_primary_cache_for_symbols_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *&v9 = a2;
    v4 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::dyld_shared_cache_at(&v9, a3);
    if (v4)
    {
      v6 = v4;
      *(a1 + 48) = CSCppDyldSharedCache::uses_unmapped_symbols_file(v4);
      *(a1 + 49) = CSCppDyldSharedCache::is_split_cache(v6);
      is_universal_cache = CSCppDyldSharedCache::is_universal_cache(v6);
      *(a1 + 50) = is_universal_cache;
      if (is_universal_cache)
      {
        CSCppDyldSharedCache::extract_universal_subcache_paths(v6, &v9);
        std::vector<std::string>::__vdeallocate((a1 + 56));
        *(a1 + 56) = v9;
        *(a1 + 72) = v10;
        v10 = 0;
        v9 = 0uLL;
        v11 = &v9;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
      }

      if (CSCppDyldSharedCache::dsc_uuid(v6))
      {
        v8 = CSCppDyldSharedCache::dsc_uuid(v6);
      }

      else
      {
        v8 = UUID::null_uuid(0);
      }

      result = *v8;
      *(a1 + 88) = *v8;
    }
  }

  return result;
}

uint64_t CSCppDyldSplitSharedCacheMemory::to_string@<X0>(CSCppDyldSplitSharedCacheMemory *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "CSCppDyldSplitSharedCache:\n", 27);
  v4 = *(this + 1);
  for (i = *(this + 2); v4 != i; v4 += 40)
  {
    LOBYTE(__p[0]) = 9;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, __p, 1);
    v7 = (v4 + 8);
    if (*(v4 + 31) < 0)
    {
      v7 = *v7;
    }

    v8 = strlen(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " @ ", 3);
    v11 = MEMORY[0x1DA7365F0](v10, *(v4 + 32));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ; ", 3);
    (*(**v4 + 48))(__p);
    if ((v21 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v14 = v21;
    }

    else
    {
      v14 = __p[1];
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v31[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v31, 1);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((v29 & 0x10) != 0)
  {
    v17 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v17 = v25;
    }

    locale = v24[4].__locale_;
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v16 = 0;
      a2[23] = 0;
      goto LABEL_26;
    }

    locale = v24[1].__locale_;
    v17 = v24[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a2[23] = v16;
  if (v16)
  {
    memmove(a2, locale, v16);
  }

LABEL_26:
  a2[v16] = 0;
  v22 = *MEMORY[0x1E69E54E8];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x1DA7366F0](&v30);
}

void sub_1D972E220(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8, MEMORY[0x1E69E54E8]);
  MEMORY[0x1DA7366F0](va);
  _Unwind_Resume(a1);
}

void CSCppDyldSplitSharedCacheMemory::filename_of_primary_shared_cache_for_uuid(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a1[23] < 0)
  {
    v4 = *a1;
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 1));
    a1 = v4;
  }

  else
  {
    __p = *a1;
  }

  v13 = a2;
  v5 = opendir(a1);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v6 = readdir(v5);
        if (!v6)
        {
          closedir(v5);
          goto LABEL_27;
        }

        if ((*(a3 + 23) & 0x8000000000000000) == 0)
        {
          break;
        }

        if (!*(a3 + 8))
        {
          goto LABEL_10;
        }
      }

      if (!*(a3 + 23))
      {
LABEL_10:
        if (v6->d_type == 8)
        {
          d_name = v6->d_name;
          v18 = strlen(v6->d_name);
          if (std::string_view::find[abi:ne200100](&d_name, "dyld_shared_cache_", 0) != -1 && std::string_view::find[abi:ne200100](&d_name, ".map", 0) == -1)
          {
            v7 = CSCppDyldSplitSharedCacheMemory::arch_name_from_subcache_name(d_name, v18);
            v9 = v8;
            if (v8 < 0x7FFFFFFFFFFFFFF8)
            {
              if (v8 < 0x17)
              {
                v16 = v8;
                if (v8)
                {
                  memmove(&__dst, v7, v8);
                }

                *(&__dst + v9) = 0;
                if (v16 >= 0)
                {
                  p_dst = &__dst;
                }

                else
                {
                  p_dst = __dst;
                }

                CSArchitectureGetArchitectureForName(p_dst);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  v14 = __p;
                }

                std::string::append(&v14, d_name, v18);
                operator new();
              }

              operator new();
            }

            std::string::__throw_length_error[abi:ne200100]();
          }
        }
      }
    }
  }

LABEL_27:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D972E564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (*(v29 + 23) < 0)
  {
    operator delete(*v29);
  }

  _Unwind_Resume(exception_object);
}

void CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CSCppDyldSplitSharedCacheMemory *this@<X0>, std::string *a2@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid();
  }

  if (atomic_load_explicit(&CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::once, memory_order_acquire) != -1)
  {
    v10 = &v8;
    v9 = &v10;
    std::__call_once(&CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::once, &v9, std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0 &&>>);
  }

  v5 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::find<UUID>(qword_1EDADA720, this);
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(a2, v5[4], v5[5]);
    }

    else
    {
      v7 = *(v5 + 2);
      a2->__r_.__value_.__r.__words[2] = v5[6];
      *&a2->__r_.__value_.__l.__data_ = v7;
    }

    a2[1].__r_.__value_.__r.__words[0] = v6[7];
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "");
    a2[1].__r_.__value_.__r.__words[0] = 0;
  }
}

void CSCppDyldSplitSharedCacheMemory::shared_cache_file_list_for_uuid(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1[23] < 0)
  {
    v5 = *a1;
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 1));
    a1 = v5;
  }

  else
  {
    __p = *a1;
  }

  v11 = a3;
  v12 = a2;
  v6 = opendir(a1);
  v7 = v6;
  if (v6)
  {
    for (i = readdir(v6); i; i = readdir(v7))
    {
      if (i->d_type == 8)
      {
        d_name = i->d_name;
        v15 = strlen(i->d_name);
        if (std::string_view::find[abi:ne200100](&d_name, "dyld_shared_cache_", 0) != -1 && std::string_view::find[abi:ne200100](&d_name, ".map", 0) == -1)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v13 = __p;
          }

          std::string::append(&v13, d_name, v15);
          new_partial_file_memory();
        }
      }
    }

    closedir(v7);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void CSCppDyldSplitSharedCacheMemory::shared_cache_file_map_for_arch(const std::string::value_type *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (a1[23] < 0)
  {
    v5 = *a1;
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 1));
    a1 = v5;
  }

  else
  {
    __p = *a1;
  }

  v16 = a2;
  v17 = a3;
  v18 = a2 == -1;
  v6 = opendir(a1);
  v7 = v6;
  if (v6)
  {
    for (i = readdir(v6); i; i = readdir(v7))
    {
      if (i->d_type == 8)
      {
        d_name = i->d_name;
        v23 = strlen(i->d_name);
        if (std::string_view::find[abi:ne200100](&d_name, "dyld_shared_cache_", 0) != -1 && std::string_view::find[abi:ne200100](&d_name, ".map", 0) == -1)
        {
          v9 = CSCppDyldSplitSharedCacheMemory::arch_name_from_subcache_name(d_name, v23);
          v11 = v10;
          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v10 >= 0x17)
          {
            operator new();
          }

          v21 = v10;
          if (v10)
          {
            memmove(&__dst, v9, v10);
          }

          *(&__dst + v11) = 0;
          if (v21 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          ArchitectureForName = CSArchitectureGetArchitectureForName(p_dst);
          if (ArchitectureForName && (v18 || CSArchitectureMatchesArchitecture(ArchitectureForName, v16)))
          {
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v19, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              v19 = __p;
            }

            std::string::append(&v19, d_name, v23);
            v24 = &__dst;
            v14 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v17, &__dst);
            std::vector<std::string>::push_back[abi:ne200100]((v14 + 5), &v19);
            if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v19.__r_.__value_.__l.__data_);
            }
          }

          if (v21 < 0)
          {
            operator delete(__dst);
          }
        }
      }
    }

    closedir(v7);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D972EBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v29);
  _Unwind_Resume(a1);
}

unint64_t CSCppDyldSplitSharedCacheMemory::initialize_subcaches_from_file_list(unint64_t result, uint64_t a2, int a3, uint64_t *a4)
{
  v4 = result;
  v27 = *MEMORY[0x1E69E9840];
  v5 = *a4;
  v6 = a4[1];
  if (*a4 == v6)
  {
    v19 = *(result + 16);
    v20 = *(result + 8);
    v22 = (result + 16);
  }

  else
  {
    v22 = (result + 16);
    v8 = *(result + 48);
    do
    {
      v9 = *(v5 + 23);
      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = *v5;
        v9 = *(v5 + 8);
      }

      else
      {
        v10 = v5;
      }

      v23 = v10;
      v24 = v9;
      v11 = std::string_view::find[abi:ne200100](&v23, "dyld_shared_cache_", 0);
      v12 = v24 - v11;
      if (v24 < v11)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v13 = (v23 + v11);
      v25 = (v23 + v11);
      v26 = v24 - v11;
      v14 = std::string_view::find[abi:ne200100](&v25, ".development", 0);
      v25 = v13;
      v26 = v12;
      v15 = *(v4 + 48) != 1 || std::string_view::find[abi:ne200100](&v25, ".symbols", 8, 0) != -1;
      CSCppDyldSplitSharedCacheMemory::is_primary_subcache(v4, v13, v12);
      v16 = std::string_view::find[abi:ne200100](&v23, "/System/DriverKit/System/Library/dyld/", 0);
      result = std::string_view::find[abi:ne200100](&v23, "/System/ExclaveKit/System/Library/dyld/", 0);
      v17 = v8 & v15;
      if ((((v14 == -1) ^ a3) & 1) != 0 || v16 != -1 || result != -1 || v17)
      {
        if (*(v5 + 23) < 0)
        {
          v18 = *v5;
        }

        operator new();
      }

      v5 += 24;
    }

    while (v5 != v6);
    v19 = *v22;
    v20 = *(v4 + 8);
  }

  while (v19 != v20)
  {
    v19 -= 40;
    result = std::__destroy_at[abi:ne200100]<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath,0>(v19);
  }

  *v22 = v20;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D972EFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  if (a15)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a15);
  }

  _Unwind_Resume(exception_object);
}

void CSCppDyldSplitSharedCacheMemory::initialize_subcaches_from_suffix_list(uint64_t a1, uint64_t a2, uint64_t a3, const std::string *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a4->__r_.__value_.__l.__size_;
  }

  v7 = v6 + size;
  if (size >= 12)
  {
    v8 = v6;
    do
    {
      v9 = memchr(v8, 46, size - 11);
      if (!v9)
      {
        break;
      }

      if (*v9 == 0x706F6C657665642ELL && *(v9 + 2) == 1953391981)
      {
        goto LABEL_15;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 > 11);
  }

  v9 = v7;
LABEL_15:
  if (v9 == v7)
  {
    v11 = -1;
  }

  else
  {
    v11 = v9 - v6;
  }

  std::string::basic_string(&v15, a4, 0, v11, __p);
  v12 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  v13 = a4->__r_.__value_.__r.__words[0];
  operator new();
}

void sub_1D972F500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void CSCppDyldSplitSharedCacheMemory::initialize_subcaches_from_disk(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a3, *(a3 + 8));
  }

  else
  {
    v6 = *a3;
  }

  CSCppDyldSplitSharedCacheMemory::filename_of_primary_shared_cache_for_arch(a2, &v6, a4, &v7);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  CSCppDyldSplitSharedCacheMemory::analyze_primary_cache_for_symbols_file();
}

void sub_1D972F8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  _Unwind_Resume(exception_object);
}

void CSCppDyldSplitSharedCacheMemory::CSCppDyldSplitSharedCacheMemory(uint64_t a1, CSCppDyldSplitSharedCacheMemory *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5505438;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = *UUID::null_uuid(a1);
  if (mach_task_is_self(a2))
  {
    __p = 0;
    shared_cache_range = _dyld_get_shared_cache_range();
    CSCppDyldSplitSharedCacheMemory::filename_of_primary_shared_cache(a2, a3, &v8);
    getpid();
    operator new();
  }

  CSCppDyldSplitSharedCacheMemory::shared_cache_directory_for_task(a2, &v8);
  v6 = CSCppDyldSplitSharedCacheMemory::task_uses_development_cache(a2);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = v8;
  }

  CSCppDyldSplitSharedCacheMemory::initialize_subcaches_from_disk(a1, a3, &v7, v6);
}

void sub_1D972FDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a17)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a17);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a24)
  {
    (*(*a24 + 8))(a24);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void CSCppDyldSplitSharedCacheMemory::CSCppDyldSplitSharedCacheMemory(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = &unk_1F5505438;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = *UUID::null_uuid(a1);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a3, *(a3 + 8));
  }

  else
  {
    v7 = *a3;
  }

  CSCppDyldSplitSharedCacheMemory::filename_of_primary_shared_cache_for_arch(a2, &v7, a4, &__p);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  CSCppDyldSplitSharedCacheMemory::analyze_primary_cache_for_symbols_file();
}

{
  *a1 = &unk_1F5505438;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = *UUID::null_uuid(a1);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  CSCppDyldSplitSharedCacheMemory::initialize_subcaches_from_disk(a1, a2, &__p, a4);
}

void sub_1D9730078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1D97301D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t CSCppDyldSplitSharedCacheMemory::CSCppDyldSplitSharedCacheMemory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F5505438;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = *UUID::null_uuid(a1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  CSCppDyldSplitSharedCacheMemory::filename_of_primary_shared_cache_for_uuid(&v17, a3, &v18);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v6 = v20;
  if ((v20 & 0x8000000000000000) != 0)
  {
    v6 = v19;
    if (v19)
    {
      v7 = v18;
LABEL_11:
      v8 = CSCppDyldSplitSharedCacheMemory::arch_name_from_subcache_name(v7, v6);
      CSArchitectureGetArchitectureForName(v8);
      if ((v20 & 0x80u) == 0)
      {
        v9 = &v18;
      }

      else
      {
        v9 = v18;
      }

      if ((v20 & 0x80u) == 0)
      {
        v10 = v20;
      }

      else
      {
        v10 = v19;
      }

      v11 = v9 + v10;
      if (v10 >= 12)
      {
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = memchr(v13, 46, v12 - 11);
          if (!v14)
          {
            break;
          }

          if (*v14 == 0x706F6C657665642ELL && v14[2] == 1953391981)
          {
            break;
          }

          v13 = (v14 + 1);
          v12 = v11 - v13;
        }

        while (v11 - v13 > 11);
      }

      CSCppDyldSplitSharedCacheMemory::analyze_primary_cache_for_symbols_file();
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }
  }

  else if (v20)
  {
    v7 = &v18;
    goto LABEL_11;
  }

  return a1;
}

void sub_1D97305BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  (*(*v28 + 8))(v28);
  _Block_object_dispose(&a28, 8);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v29 + 40);
  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void *___ZN31CSCppDyldSplitSharedCacheMemoryC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPK11CFUUIDBytes_block_invoke_2(void *result, __int128 *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    result = std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::__emplace_unique_key_args<UUID,UUID const&>((*(result[4] + 8) + 40), &v3);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSCppDyldSplitSharedCacheMemory::primary_shared_cache(CSCppDyldSplitSharedCacheMemory *this)
{
  v1 = *(this + 4);
  if (!v1 || !*v1)
  {
    return 0;
  }

  v2 = v1[4];
  v4 = *v1;
  return TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::dyld_shared_cache_at(&v4, v2);
}

uint64_t CSCppDyldSplitSharedCacheMemory::local_symbols_shared_cache(CSCppDyldSplitSharedCacheMemory *this)
{
  v1 = *(this + 5);
  if (!v1 || !*v1)
  {
    return 0;
  }

  v2 = v1[4];
  v4 = *v1;
  return TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::dyld_shared_cache_at(&v4, v2);
}

uint64_t CSCppDyldSplitSharedCacheMemory::local_symbols_shared_cache_path(CSCppDyldSplitSharedCacheMemory *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  result = v1 + 8;
  if (*(v1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t CSCppDyldSplitSharedCacheMemory::text_address(CSCppDyldSplitSharedCacheMemory *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  while (1)
  {
    if ((CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath::is_task_memory(v1) & 1) == 0)
    {
      v3 = *v1;
      if (*v1)
      {
        v4 = **v3;
        if (v5)
        {
          result = v5[8];
          if (result)
          {
            break;
          }
        }
      }
    }

    v1 += 5;
    if (v1 == v2)
    {
      return 0;
    }
  }

  return result;
}

unint64_t CSCppDyldSplitSharedCacheMemory::file_range_for_memory_range(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v15 = 0;
  v16 = 0;
  v13[0] = a2;
  v13[1] = a3;
  v14 = a4;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 != v5)
  {
    while (1)
    {
      if ((CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath::is_task_memory(v4) & 1) == 0)
      {
        v6 = *v4;
        if (*v4)
        {
          v7 = **v6;
          if (v8)
          {
            v9 = CSCppDyldSharedCacheMemory::file_range_for_memory_range(v8, v13, v14);
            if (v9 && v10 != 0)
            {
              break;
            }
          }
        }
      }

      v4 += 5;
      if (v4 == v5)
      {
        return v15;
      }
    }

    v15 = v9;
    v16 = v10;
  }

  return v15;
}

char *CSCppDyldSplitSharedCacheMemory::shared_cache_for_address(CSCppDyldSplitSharedCacheMemory *this, uint64_t a2)
{
  v10 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v2 = *(this + 1);
  for (i = *(this + 2); v2 != i; v2 += 40)
  {
    if (*v2)
    {
      v5 = *(v2 + 32);
      v16 = *v2;
      v6 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::dyld_shared_cache_at(&v16, v5);
      if (v6)
      {
        if (CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath::is_task_memory(v2))
        {
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 0x40000000;
          v11[2] = ___ZNK31CSCppDyldSplitSharedCacheMemory21for_each_shared_cacheIZNKS_24shared_cache_for_addressEmE3__0EEvT__block_invoke;
          v11[3] = &unk_1E8583918;
          v11[5] = a2;
          v11[6] = &v10;
          v11[4] = &v12;
          CSCppDyldSharedCache::for_each_mapped_cache(v6, v11);
        }

        else
        {
          v7 = v13;
          CSCppDyldSharedCache::text_segment_range(v6);
          if (a2 - v5 < v8)
          {
            v10 = v6;
            *(v7 + 24) = 1;
          }
        }

        if (v13[3])
        {
          break;
        }
      }
    }
  }

  _Block_object_dispose(&v12, 8);
  return v10;
}

void sub_1D9730B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CSCppDyldSplitSharedCacheMemory::~CSCppDyldSplitSharedCacheMemory(CSCppDyldSplitSharedCacheMemory *this)
{
  *this = &unk_1F5505438;
  v1 = (this + 8);
  v2 = (this + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_1F5505438;
  v2 = (this + 8);
  v3 = (this + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x1DA736760](this, 0x10A1C404D4F90C9);
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

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__emplace_back_slow_path<std::unique_ptr<CSCppDyldSharedCacheMemory>,std::string,unsigned long long &>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v24 = a1;
  if (v8)
  {
    std::allocator<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v9 = 40 * v4;
  v21 = 0;
  v22 = 40 * v4;
  *(&v23 + 1) = 0;
  v10 = *a2;
  *a2 = 0;
  *&v25[7] = *(a3 + 15);
  v11 = *a3;
  *v25 = a3[1];
  v12 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v13 = *a4;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = *v25;
  *(v9 + 23) = *&v25[7];
  *(v9 + 31) = v12;
  *(v9 + 32) = v13;
  *&v23 = 40 * v4 + 40;
  v14 = a1[1];
  v15 = 40 * v4 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>,CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v16;
  *(&v23 + 1) = v17;
  v21 = v16;
  v22 = v16;
  std::__split_buffer<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::~__split_buffer(&v21);
  v18 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1D9730F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>,CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      v8 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v8;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      result = std::__destroy_at[abi:ne200100]<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath,0>(v5);
      v5 += 40;
    }
  }

  return result;
}

uint64_t std::__destroy_at[abi:ne200100]<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath,0>(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  result = *a1;
  *a1 = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

uint64_t std::__split_buffer<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__destroy_at[abi:ne200100]<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath,0>(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__emplace_back_slow_path<std::unique_ptr<CSCppDyldSharedCacheMemory>,std::string const&,unsigned long long &>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v15 = 0;
  v16 = 40 * v4;
  std::construct_at[abi:ne200100]<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath,std::unique_ptr<CSCppDyldSharedCacheMemory>,std::string const&,unsigned long long &,CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath*>(40 * v4, a2, a3, a4);
  v17 = 40 * v4 + 40;
  v9 = a1[1];
  v10 = 40 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>,CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::~__split_buffer(&v15);
  return v14;
}

void sub_1D973128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath,std::unique_ptr<CSCppDyldSharedCacheMemory>,std::string const&,unsigned long long &,CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath*>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a2;
  *a2 = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v7 = *a4;
  *a1 = v6;
  *(a1 + 8) = v9;
  *(a1 + 32) = v7;
  return a1;
}