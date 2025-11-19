void sub_1B9D719E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = 0;
  while (1)
  {
    if (*(&a15 + v16 + 71) < 0)
    {
      operator delete(*(&a15 + v16 + 48));
    }

    v16 -= 24;
    if (v16 == -72)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CSStore2::Writer::IO<int,char *>(char *a1)
{
  v3 = mkstemp(a1);
  v9 = v3;
  if (CSStore2::Writer::logIO == 1)
  {
    __p[0] = a1;
    CSStore2::Writer::toString<char *>(v7, __p);
    CSStore2::Writer::toString<int>(__p, &v9);
    CSStore2::Writer::logFunctionCall(*(vars0 + 8), v1, MEMORY[0x1E69E98D0], v7, 1, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }

  return v3;
}

void sub_1B9D71B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t initMKBDeviceUnlockedSinceBoot(void)
{
  if (MobileKeyBagLibrary(void)::sOnce != -1)
  {
    dispatch_once(&MobileKeyBagLibrary(void)::sOnce, &__block_literal_global_247);
  }

  v0 = dlsym(MobileKeyBagLibrary(void)::sLib, "MKBDeviceUnlockedSinceBoot");
  softLinkMKBDeviceUnlockedSinceBoot = v0;

  return v0();
}

void *___ZL19MobileKeyBagLibraryv_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 2);
  MobileKeyBagLibrary(void)::sLib = result;
  return result;
}

char *CSStore2::Store::embraceAndExtend(CSStore2::Store *this, char *a2, const void *a3, unsigned int a4)
{
  v4 = a2;
  if (a3 >= a4)
  {
    LODWORD(v6) = a3 - a4;
LABEL_6:
    CSStore2::Store::assertNotEnumeratingUnits(this);
    if ((v6 + 3) >= 4)
    {
      v9 = (v6 + 3) & 0xFFFFFFFC;
    }

    else
    {
      v9 = 4;
    }

    v10 = *(*this + 8);
    v11 = *(v10 + 16);
    v12 = v11 >= v9;
    v13 = v11 - v9;
    if (!v12)
    {
      v13 = 0;
    }

    *(v10 + 16) = v13;
    ++*(v10 + 8);
    return v4;
  }

  v6 = a3;
  if (a2)
  {
    v7 = *this;
    if (*this)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    v15 = -1;
    v12 = a2 >= v8;
    v16 = &a2[-v8];
    if (v12 && !HIDWORD(v16))
    {
      if ((v16 + 1) > *(*(v7 + 8) + 12) || v16 == -1)
      {
        v15 = -1;
      }

      else
      {
        v15 = v16;
      }
    }
  }

  else
  {
    v15 = -1;
  }

  v18 = CSStore2::Store::extend(this, a4);
  v4 = v18;
  if (v18)
  {
    if (v15 != -1)
    {
      v19 = *(*this + 8);
      if (v19 && *(v19 + 12) > v15)
      {
        CSStore2::VM::Copy(v18, v19 + v15, v6);
      }
    }

    goto LABEL_6;
  }

  return v4;
}

Unit *CSStore2::Store::allocateTable(CSStore2::Store *this, NSString *a2, int a3, NSString *a4)
{
  v7 = a2;
  v8 = v7;
  if (v7 && CSStore2::Table::IsNameAllowed(v7, a4))
  {
    Unit = CSStore2::Store::allocateUnit(this, (*(*this + 8) + 20), a3 + 72, 0);
    v10 = Unit;
    if (Unit)
    {
      v11 = *this;
      if (*this)
      {
        v12 = *(v11 + 8);
      }

      else
      {
        v12 = 0;
      }

      v14 = -1;
      v15 = Unit >= v12;
      v16 = Unit - v12;
      if (v15 && !HIDWORD(v16))
      {
        if ((v16 + 1) > *(*(v11 + 8) + 12) || v16 == -1)
        {
          v14 = -1;
        }

        else
        {
          v14 = v16;
        }
      }

      memset(v24, 0, sizeof(v24));
      v25 = 1065353216;
      v18 = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::Create(this, v24);
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v24);
      if (v18)
      {
        v19 = *this;
        if (v14 == -1)
        {
          v10 = 0;
          if (v19)
          {
            v20 = *(v19 + 8);
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = *(v19 + 8);
          if (*(v20 + 12) <= v14)
          {
            v10 = 0;
          }

          else
          {
            v10 = (v20 + v14);
          }
        }

        v21 = -1;
        v15 = v18 >= v20;
        v22 = v18 - v20;
        if (v15 && !HIDWORD(v22))
        {
          if ((v22 + 1) > *(*(v19 + 8) + 12) || v22 == -1)
          {
            v21 = -1;
          }

          else
          {
            v21 = v22;
          }
        }

        *&v10->var3[68] = v21;
        CSStore2::Table::setName(v10, v8);
        CSStore2::Store::_dataDidMove(this);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1B9D71E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a9);

  _Unwind_Resume(a1);
}

BOOL CSStore2::Table::IsNameAllowed(CSStore2::Table *this, NSString *a2)
{
  v2 = a2;
  v3 = this;
  if ([(CSStore2::Table *)v3 length])
  {
    v4 = (!v2 || [(CSStore2::Table *)v3 characterAtIndex:0]!= 60) && strlen([(CSStore2::Table *)v3 UTF8String]) < 0x31;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

Unit *CSStore2::Store::allocateUnit(CSStore2::Store *this, CSStore2::Table *a2, int a3, unsigned int a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = *this;
    if (*this)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    v9 = -1;
    v10 = a2 >= v8;
    v11 = a2 - v8;
    if (v10 && !HIDWORD(v11))
    {
      if ((v11 + 1) > *(*(v7 + 8) + 12) || v11 == -1)
      {
        v9 = -1;
      }

      else
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = -1;
  }

  v13 = CSStore2::Store::extend(this, a3 + 8);
  if (!v13)
  {
    v20 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (v9 == -1 || (v14 = *(*this + 8), *(v14 + 12) <= v9))
  {
    v15 = 0;
    if (!a4)
    {
LABEL_21:
      v16 = *(v15 + 18);
      if (v16 == 0x3FFFFFFF)
      {
        v23 = CSStore2::GetLog(v13);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v24 = CSStore2::Table::getName(v15);
          v25 = [v24 UTF8String];
          v26 = (4 * *v15);
          v28 = 136446466;
          v29 = v25;
          v30 = 2048;
          v31 = v26;
          _os_log_fault_impl(&dword_1B9D5B000, v23, OS_LOG_TYPE_FAULT, "Ran out of unit IDs for table %{public}s (%llx): process will terminate.", &v28, 0x16u);
        }

        v27 = *(this + 40);
        if (v27)
        {
          (*(v27 + 16))(v27, (4 * *v15));
        }

        abort();
      }

      v17 = v16 + 1;
      *(v15 + 18) = v17;
      a4 = 4 * v17;
    }
  }

  else
  {
    v15 = (v14 + v9);
    if (!a4)
    {
      goto LABEL_21;
    }
  }

  v18 = *this;
  if (*this)
  {
    v18 = *(v18 + 8);
  }

  if (v15 == (v18 + 20))
  {
    *(v13 + 8) = 0;
    *(v13 + 72) = 0xFFFFFFFF00000000;
    v19 = 0x40000000;
  }

  else
  {
    v19 = 0;
  }

  *v13 = v19 | (a4 >> 2);
  *(v13 + 4) = a3;
  v22 = *MEMORY[0x1E69E9840];

  return CSStore2::Store::setUnitAddress(this, v15, a4 & 0xFFFFFFFC, v13);
}

__CFString *CSStore2::Table::getName(CSStore2::Table *this)
{
  v1 = CSStore2::Table::copyCFName(this);

  return v1;
}

Unit *CSStore2::Store::setUnitAddress(CSStore2 **this, CSStore2::Table *a2, unsigned int a3, Unit *a4)
{
  if (a4)
  {
    v6 = *this;
    if (*this)
    {
      v7 = *(v6 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = -1;
    v9 = a4 >= v7;
    v10 = a4 - v7;
    if (v9 && !HIDWORD(v10))
    {
      if ((v10 + 1) > *(*(v6 + 1) + 12) || v10 == -1)
      {
        v8 = -1;
      }

      else
      {
        v8 = v10;
      }
    }
  }

  else
  {
    v8 = -1;
  }

  v12 = *(a2 + 19);
  if (v12 != -1)
  {
    v13 = *this;
    v14 = *(*this + 1);
    if (*(v14 + 12) > v12)
    {
      v15 = (v14 + v12);
      if (a4)
      {
        if (a3)
        {
          v16 = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::Find(v13, (v14 + v12), a3);
          v17 = a3;
          if (v16)
          {
            *v16 = v8;
            goto LABEL_72;
          }
        }

        else
        {
          if (v8 != -1)
          {
LABEL_73:
            v43 = *(*this + 1);
            if (*(v43 + 12) > v8)
            {
              return (v43 + v8);
            }

            return 0;
          }

          v17 = 0;
        }

        v19 = &v15[2 * ((v17 >> 2) % *v15)];
        v20 = (v19 + 1);
        v21 = v19[2];
        if (v21 == -1)
        {
          v25 = 0;
        }

        else
        {
          v22 = *(*this + 1);
          v23 = *(v22 + 12) > v21;
          v24 = (v22 + v21);
          if (v23)
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }
        }

        v26 = *v20;
        if (v26)
        {
          v27 = v25;
          v28 = *v20;
          while (*v27 && *(v27 + 1) != -1)
          {
            v27 += 8;
            if (!--v28)
            {
              goto LABEL_36;
            }
          }

          *v27 = v17;
          *(v27 + 1) = v8;
LABEL_72:
          if (v8 == -1)
          {
            return 0;
          }

          goto LABEL_73;
        }

LABEL_36:
        v29 = v26 + 8;
        if (*this)
        {
          v30 = *(*this + 1);
          v31 = -1;
          v9 = v20 >= v30;
          v20 -= v30;
          if (!v9 || HIDWORD(v20))
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (HIDWORD(v20))
          {
            v31 = -1;
            goto LABEL_51;
          }

          v30 = MEMORY[8];
        }

        if ((v20 + 1) > *(v30 + 12) || v20 == -1)
        {
          v31 = -1;
        }

        else
        {
          v31 = v20;
        }

LABEL_51:
        v33 = CSStore2::Store::embraceAndExtend(this, v25, (8 * v26), 8 * v29);
        if (v31 == -1 || (v34 = *(*this + 1), *(v34 + 12) <= v31))
        {
          v35 = 0;
        }

        else
        {
          v35 = (v34 + v31);
        }

        if (!v33)
        {
          v35[1] = -1;
          abort();
        }

        v36 = *this;
        if (*this)
        {
          v37 = *(v36 + 1);
        }

        else
        {
          v37 = 0;
        }

        v38 = -1;
        v9 = v33 >= v37;
        v39 = &v33[-v37];
        if (v9 && !HIDWORD(v39))
        {
          if ((v39 + 1) > *(*(v36 + 1) + 12) || v39 == -1)
          {
            v38 = -1;
          }

          else
          {
            v38 = v39;
          }
        }

        v35[1] = v38;
        v41 = &v33[8 * v26];
        *v41 = a3;
        v41[1] = v8;
        if (v26 + 1 < v29)
        {
          v42 = 0;
          do
          {
            *&v33[8 * (v26 + 1) + v42] = 0xFFFFFFFF00000000;
            v42 += 8;
          }

          while (v42 != 56);
        }

        *v35 += 8;
        goto LABEL_72;
      }

      if (!a3)
      {
        return 0;
      }

      v18 = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::Find(v13, (v14 + v12), a3);
      if (!v18)
      {
        return 0;
      }

      a4 = 0;
      *v18 = -1;
    }
  }

  return a4;
}

uint64_t CSStore2::Store::getUnitCount(atomic_ullong *this, const CSStore2::Table *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZNK8CSStore25Store12getUnitCountEPKNS_5TableE_block_invoke;
    v4[3] = &unk_1E7ED3648;
    v4[4] = &v5;
    CSStore2::Store::enumerateUnits(this, a2, v4);
    v2 = *(v6 + 6);
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1B9D72548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Unit *CSStore2::Store::reallocateUnit(CSStore2 **this, CSStore2::Table *a2, Unit *a3, CSStore2::VM *a4)
{
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  var2 = a3->var2;
  v8 = var2 - a4;
  if (var2 >= a4)
  {
    CSStore2::Store::assertNotEnumeratingUnits(this);
    if ((v8 + 3) >= 4)
    {
      v13 = (v8 + 3) & 0xFFFFFFFC;
    }

    else
    {
      v13 = 4;
    }

    v14 = *(*this + 1);
    v15 = *(v14 + 16);
    v16 = v15 >= v13;
    v17 = v15 - v13;
    if (!v16)
    {
      v17 = 0;
    }

    *(v14 + 16) = v17;
    ++*(v14 + 8);
    v5->var2 = a4;
  }

  else
  {
    v10 = v20;
    bzero(v20, 0x800uLL);
    if (a4 >= 0x801 && (v10 = CSStore2::VM::Allocate(a4)) == 0 || (CSStore2::VM::Copy(v10, v5->var3, var2), v11 = 4 * *v5, CSStore2::Store::freeUnit(this, a2, v5), (Unit = CSStore2::Store::allocateUnit(this, a2, a4, v11)) == 0))
    {
      abort();
    }

    v5 = Unit;
    CSStore2::VM::Copy(Unit->var3, v10, var2);
    if (v10 != v20)
    {
      CSStore2::VM::Deallocate(v10, a4);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

Unit *CSStore2::Store::freeUnit(CSStore2 **this, CSStore2::Table *a2, Unit *a3)
{
  var2 = a3->var2;
  CSStore2::Store::assertNotEnumeratingUnits(this);
  if (var2 + 11 >= 4)
  {
    v7 = (var2 + 11) & 0xFFFFFFFC;
  }

  else
  {
    v7 = 4;
  }

  v8 = *(*this + 1);
  v9 = *(v8 + 16);
  v10 = v9 >= v7;
  v11 = v9 - v7;
  if (!v10)
  {
    v11 = 0;
  }

  *(v8 + 16) = v11;
  ++*(v8 + 8);
  v12 = *a3;
  result = CSStore2::Store::setUnitAddress(this, a2, 4 * v12, 0);
  v14 = *this;
  if (*this)
  {
    v14 = *(v14 + 1);
  }

  if ((v14 + 20) == a2 && (v12 & 0x3FFFFFFFu) <= 0x3F)
  {
    *(this + (v12 & 0x3FFFFFFF) + 2) = -1;
  }

  return result;
}

void sub_1B9D72CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1B9D730B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8CSStore2L15IsAppleInternalEv_block_invoke_171()
{
  result = os_variant_has_internal_diagnostics();
  CSStore2::IsAppleInternal(void)::result = result;
  return result;
}

void sub_1B9D73ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, id *a18, uint64_t a19, uint64_t a20, id *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&a21, 0);

  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&a18, 0);
  _Unwind_Resume(a1);
}

void sub_1B9D740F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](va);

  _Unwind_Resume(a1);
}

_CSStore *CSStoreCreateMutable(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v7 = 0;
  v3 = [[_CSStore alloc] initWithError:&v7];
  v4 = v7;
  v5 = v4;
  if (a1 && !v3)
  {
    *a1 = v4;
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t CSStoreCreateMutableCopy(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = [a1 mutableCopyWithZone:0 error:&v9];
  v6 = v9;
  v7 = v6;
  if (a2 && !v5)
  {
    *a2 = v6;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t _CSStoreCommit(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (performMutatingAssertions == 1)
  {
    v7 = a1[43];
    if (v7)
    {
      (***(v7 + 8))(*(v7 + 8));
    }
  }

  if (performConstantAssertions == 1)
  {
    v8 = a2[43];
    if (v8)
    {
      (*(**(v8 + 8) + 8))(*(v8 + 8));
    }
  }

  if (a1[39] != a2[39])
  {
    v13 = MEMORY[0x1E696ABC0];
    v31[0] = *MEMORY[0x1E696A278];
    v31[1] = @"Line";
    v32[0] = @"paramErr";
    v32[1] = &unk_1F37D7C70;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v12 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];
    goto LABEL_11;
  }

  v9 = a2[40];
  if ((v9 & 0x100000000) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v33[0] = *MEMORY[0x1E696A278];
    v33[1] = @"Line";
    v34[0] = @"paramErr";
    v34[1] = &unk_1F37D7C58;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v12 = [v10 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];
LABEL_11:
    v14 = v12;

    v15 = v14;
    v16 = v14;
LABEL_12:
    v17 = v16;
    v18 = 0;
    goto LABEL_13;
  }

  if (*(*(a1[1] + 8) + 8) != v9)
  {
    v27 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A278];
    v36 = @"Line";
    v37 = @"kCSStoreConflictErr";
    v38 = &unk_1F37D7C40;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v35 count:2];
    v12 = [v27 errorWithDomain:*MEMORY[0x1E696A768] code:-9487 userInfo:v11];
    goto LABEL_11;
  }

  v24 = a2[1];
  if (v24)
  {
    v25 = *(v24 + 16);
    v26 = *(v24 + 8);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  Copy = CSStore2::VM::AllocateCopy(v26, v25, v25);
  if (!Copy)
  {
    v29 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A278];
    v36 = @"Line";
    v37 = @"kCSStoreAllocFailedErr";
    v38 = &unk_1F37D7C88;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v35 count:2];
    v16 = [v29 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v30];

    goto LABEL_12;
  }

  CSStore2::Store::setBytesNoCopy((a1 + 1), Copy, v25);
  v16 = 0;
  v18 = 1;
LABEL_13:

  v19 = v16;
  v20 = v19;
  if (a3)
  {
    v21 = v18;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    *a3 = v19;
  }

  objc_autoreleasePoolPop(v6);
  v22 = *MEMORY[0x1E69E9840];
  return v18;
}

_CSStore *_CSStoreCreateWithURL(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = [[_CSStore alloc] initWithContentsOfURL:a1 error:&v9];
  v6 = v9;
  v7 = v6;
  if (a2 && !v5)
  {
    *a2 = v6;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t _CSStoreWriteToURL(uint64_t a1, void *a2, void *a3, CSStore2::Store *a4, void *a5)
{
  v85 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if (performConstantAssertions == 1)
  {
    v9 = *(a1 + 344);
    if (v9)
    {
      (*(**(v9 + 8) + 8))(*(v9 + 8));
    }
  }

  v10 = a2;
  v77 = a3;
  if (!v10 || ![v10 isFileURL])
  {
    v20 = MEMORY[0x1E696ABC0];
    *&v80 = *MEMORY[0x1E696A278];
    *(&v80 + 1) = @"Line";
    *buf = @"paramErr";
    *&buf[8] = &unk_1F37D7C28;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v80 count:2];
    v21 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];
LABEL_47:

    v58 = v21;
    v59 = 0;
    v60 = v21;
    goto LABEL_48;
  }

  v11 = v10;
  v72 = v11;
  if ((a4 & 2) != 0)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v11 resolvingAgainstBaseURL:1];
    v13 = [v12 path];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 pathExtension];
      if (v15)
      {
        v16 = [v14 stringByDeletingPathExtension];

        v14 = v16;
      }

      v17 = [v14 stringByAppendingFormat:@"(%llx~)", arc4random()];

      if (v15)
      {
        v18 = [v17 stringByAppendingPathExtension:v15];

        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      [v12 setPath:v19];
    }

    v11 = [v12 URL];

    v23 = CSStore2::GetLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      *&buf[4] = v11;
      _os_log_impl(&dword_1B9D5B000, v23, OS_LOG_TYPE_INFO, "Writing to temporary CSStore file %{private}@", buf, 0xCu);
    }
  }

  v24 = [v77 mutableCopy];
  v25 = v24;
  if (v24)
  {
    v73 = v24;
  }

  else
  {
    v73 = [MEMORY[0x1E695DF90] dictionary];
  }

  v26 = [v73 objectForKeyedSubscript:*MEMORY[0x1E695DB48]];

  if (v26)
  {
    *buf = 0;
    if (CFFileSecurityGetMode(v26, buf))
    {
      v27 = *buf;
    }

    else
    {
      v27 = 384;
    }
  }

  else
  {
    v27 = 384;
  }

  v28 = v73;
  v29 = *MEMORY[0x1E695DAF0];
  v74 = v28;
  v30 = [v28 objectForKeyedSubscript:*MEMORY[0x1E695DAF0]];
  if (v30)
  {
    v31 = *MEMORY[0x1E695DAD8];
    *&v80 = *MEMORY[0x1E695DAF8];
    *(&v80 + 1) = v31;
    *buf = &unk_1F37D7B98;
    *&buf[8] = &unk_1F37D7BB0;
    v32 = *MEMORY[0x1E695DAE8];
    v81 = *MEMORY[0x1E695DAE0];
    v82 = v32;
    *&buf[16] = &unk_1F37D7BC8;
    v84 = &unk_1F37D7BE0;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v80 count:4];
    v34 = [v33 objectForKeyedSubscript:v30];
    v35 = [v34 intValue];

    [v74 removeObjectForKey:v29];
  }

  else
  {
    v35 = -1;
  }

  v36 = v11;
  v37 = open_dprotected_np([v11 fileSystemRepresentation], 2562, v35, 0, v27);
  v38 = v37;
  if (v37 < 0)
  {
    v46 = MEMORY[0x1E696ABC0];
    v47 = *__error();
    *&v80 = *MEMORY[0x1E696A278];
    *(&v80 + 1) = @"Line";
    *buf = @"errno";
    *&buf[8] = &unk_1F37D7C10;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v80 count:2];
    v21 = [v46 errorWithDomain:*MEMORY[0x1E696A798] code:v47 userInfo:v48];

    v50 = CSStore2::GetLog(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *v79 = 138543362;
      *&v79[4] = v21;
      _os_log_error_impl(&dword_1B9D5B000, v50, OS_LOG_TYPE_ERROR, "Failed to open file descriptor for writing store file: %{public}@", v79, 0xCu);
    }

    goto LABEL_46;
  }

  v39 = fdopen(v37, "w+");
  if (!v39)
  {
    v51 = MEMORY[0x1E696ABC0];
    v52 = *__error();
    *&v80 = *MEMORY[0x1E696A278];
    *(&v80 + 1) = @"Line";
    *buf = @"errno";
    *&buf[8] = &unk_1F37D7BF8;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v80 count:2];
    v21 = [v51 errorWithDomain:*MEMORY[0x1E696A798] code:v52 userInfo:v53];

    v55 = CSStore2::GetLog(v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *v79 = 138543362;
      *&v79[4] = v21;
      _os_log_error_impl(&dword_1B9D5B000, v55, OS_LOG_TYPE_ERROR, "Failed to create file handle from file descriptor for writing store file: %{public}@", v79, 0xCu);
    }

    close(v38);
    goto LABEL_46;
  }

  *buf = v39;
  *&buf[8] = 1;
  *v79 = 0;
  v40 = CSStore2::GarbageCollection::Collect((a1 + 8), buf, a4, v79);
  v41 = *v79;
  v21 = v41;
  if ((v40 & 1) == 0)
  {
    v56 = CSStore2::GetLog(v41);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v80) = 138543362;
      *(&v80 + 4) = v21;
      _os_log_error_impl(&dword_1B9D5B000, v56, OS_LOG_TYPE_ERROR, "Failed to collect-and-write store file: %{public}@", &v80, 0xCu);
    }

    v57 = v11;
    unlink([v11 fileSystemRepresentation]);
    CSStore2::Writer::~Writer(buf);
LABEL_46:

    goto LABEL_47;
  }

  CSStore2::Writer::~Writer(buf);
  if (v77)
  {
    *&v80 = 0;
    v42 = [v11 setResourceValues:v74 error:&v80];
    v43 = v80;
    v44 = v43;
    if ((v42 & 1) == 0)
    {
      v45 = CSStore2::GetLog(v43);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v71 = [v72 path];
        *buf = 138478339;
        *&buf[4] = v71;
        *&buf[12] = 2114;
        *&buf[14] = v77;
        *&buf[22] = 2114;
        v84 = v44;
        _os_log_error_impl(&dword_1B9D5B000, v45, OS_LOG_TYPE_ERROR, "Failed to set resource values at %{private}@ to %{public}@ (non-fatal error): %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v44 = 0;
  }

  if ((a4 & 2) != 0)
  {
    v66 = [MEMORY[0x1E696AC08] defaultManager];
    v78 = v21;
    v67 = [v66 replaceItemAtURL:v72 withItemAtURL:v11 backupItemName:0 options:0 resultingItemURL:0 error:&v78];
    v60 = v78;

    v69 = CSStore2::GetLog(v68);
    v70 = v69;
    if (v67)
    {
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        *&buf[4] = v11;
        *&buf[12] = 2113;
        *&buf[14] = v72;
        _os_log_impl(&dword_1B9D5B000, v70, OS_LOG_TYPE_INFO, "Moved temporary CSStore file %{private}@ to %{private}@", buf, 0x16u);
      }

      goto LABEL_61;
    }

    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478339;
      *&buf[4] = v11;
      *&buf[12] = 2113;
      *&buf[14] = v72;
      *&buf[22] = 2112;
      v84 = v60;
      _os_log_error_impl(&dword_1B9D5B000, v70, OS_LOG_TYPE_ERROR, "Failed atomic move of temporary CSStore file %{private}@ to %{private}@: %@", buf, 0x20u);
    }

    v21 = v60;
    goto LABEL_46;
  }

  v60 = v21;
LABEL_61:

  v21 = 0;
  v59 = 1;
LABEL_48:

  v61 = v21;
  v62 = v61;
  if (a5)
  {
    v63 = v59;
  }

  else
  {
    v63 = 1;
  }

  if ((v63 & 1) == 0)
  {
    *a5 = v61;
  }

  objc_autoreleasePoolPop(context);
  v64 = *MEMORY[0x1E69E9840];
  return v59;
}

uint64_t _CSStoreCreateByReadingFromFileHandle(FILE *a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  while (!feof(a1) && !ferror(a1))
  {
    v8 = fread(__ptr, 1uLL, 0x400uLL, a1);
    if (v8 >= 1)
    {
      [v7 appendBytes:__ptr length:v8];
    }
  }

  if (ferror(a1))
  {
    v9 = MEMORY[0x1E696ABC0];
    v23[0] = *MEMORY[0x1E696A278];
    v23[1] = @"Line";
    v24[0] = @"EIO";
    v24[1] = &unk_1F37D7D90;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v11 = [v9 errorWithDomain:*MEMORY[0x1E696A798] code:5 userInfo:v10];

    goto LABEL_10;
  }

  if ([v7 length] >> 32)
  {
    v12 = MEMORY[0x1E696ABC0];
    v21[0] = *MEMORY[0x1E696A278];
    v21[1] = @"Line";
    v22[0] = @"ERANGE";
    v22[1] = &unk_1F37D7DA8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v11 = [v12 errorWithDomain:*MEMORY[0x1E696A798] code:34 userInfo:v13];

LABEL_10:
    v14 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v17 = v7;
  v19 = 0;
  CSStore2::Store::CreateWithBytes(&v20, [v7 bytes], objc_msgSend(v7, "length"), &v19);
  v11 = v19;
  if (v20)
  {
    v18 = [_CSStore alloc];
    v14 = [(_CSStore *)v18 initByMovingStore:v20];
  }

  else
  {
    v14 = 0;
  }

  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v20);
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v14)
  {
    *a3 = v11;
  }

LABEL_13:

  objc_autoreleasePoolPop(v6);
  if (a2)
  {
    fclose(a1);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t _CSStoreCreateWithXPCRepresentation(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  CSStore2::Store::CreateWithXPCObject(&v10, a1, &v9);
  v5 = v9;
  if (v10)
  {
    v6 = [_CSStore alloc];
    v7 = [(_CSStore *)v6 initByMovingStore:v10];
  }

  else
  {
    v7 = 0;
  }

  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v10);
  if (a2 && !v7)
  {
    *a2 = v5;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_1B9D75598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](va);

  _Unwind_Resume(a1);
}

id _CSStoreCreateXPCRepresentation(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (performConstantAssertions == 1)
  {
    v5 = *(a1 + 344);
    if (v5)
    {
      (*(**(v5 + 8) + 8))(*(v5 + 8));
    }
  }

  v10 = 0;
  v6 = CSStore2::Store::encodeAsXPCObject(*(a1 + 8), &v10);
  v7 = v10;
  v8 = v7;
  if (a2 && !v6)
  {
    *a2 = v7;
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

uint64_t _CSStoreGarbageCollect(uint64_t a1, CSStore2::Store *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (performMutatingAssertions == 1)
  {
    v5 = *(a1 + 344);
    if (v5)
    {
      (***(v5 + 8))(*(v5 + 8));
    }
  }

  v6 = CSStore2::Store::collectGarbage((a1 + 8), a2);
  objc_autoreleasePoolPop(v4);
  return v6;
}

void _CSStoreEnumerateTables(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    if (performConstantAssertions == 1)
    {
      v5 = *(a1 + 344);
      if (v5)
      {
        (*(**(v5 + 8) + 8))(*(v5 + 8));
      }
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___CSStoreEnumerateTables_block_invoke;
    v6[3] = &unk_1E7ED36E8;
    v7 = v4;
    CSStore2::Store::enumerateTables((a1 + 8), v6);
  }
}

uint64_t _CSStoreGetCatalogTable(uint64_t a1)
{
  if (a1)
  {
    return 4294929780;
  }

  else
  {
    return 0;
  }
}

_DWORD *_CSStoreGetArrayTable(atomic_ullong *a1)
{
  if (performConstantAssertions == 1)
  {
    v2 = a1[43];
    if (v2)
    {
      (*(**(v2 + 8) + 8))(*(v2 + 8));
    }
  }

  result = a1[34];
  if (result)
  {
    return (4 * *result);
  }

  result = CSStore2::Store::getTable(a1 + 1, &cfstr_Array.isa);
  if (result)
  {
    return (4 * *result);
  }

  return result;
}

_DWORD *_CSStoreGetStringTable(atomic_ullong *a1)
{
  if (performConstantAssertions == 1)
  {
    v2 = a1[43];
    if (v2)
    {
      (*(**(v2 + 8) + 8))(*(v2 + 8));
    }
  }

  result = a1[35];
  if (result)
  {
    return (4 * *result);
  }

  result = CSStore2::Store::getTable(a1 + 1, &cfstr_String_0.isa);
  if (result)
  {
    return (4 * *result);
  }

  return result;
}

_DWORD *_CSStoreGetDictionaryTable(atomic_ullong *a1)
{
  if (performConstantAssertions == 1)
  {
    v2 = a1[43];
    if (v2)
    {
      (*(**(v2 + 8) + 8))(*(v2 + 8));
    }
  }

  result = a1[36];
  if (result)
  {
    return (4 * *result);
  }

  result = CSStore2::Store::getTable(a1 + 1, &cfstr_Dictionary.isa);
  if (result)
  {
    return (4 * *result);
  }

  return result;
}

CFStringRef _CSStoreCopyTableName(uint64_t a1, unsigned int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (performConstantAssertions == 1)
  {
    v5 = *(a1 + 344);
    if (v5)
    {
      (*(**(v5 + 8) + 8))(*(v5 + 8));
    }
  }

  if (a2 && (Table = CSStore2::Store::getTable((a1 + 8), a2)) != 0)
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = CSStore2::Table::copyCFName(Table);
    v9 = v8;
    Copy = CFStringCreateCopy(v7, v8);
  }

  else
  {
    Copy = 0;
  }

  objc_autoreleasePoolPop(v4);
  return Copy;
}

uint64_t _CSStoreAddTable(uint64_t a1, void *a2, int a3, void *a4)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  if (performMutatingAssertions == 1)
  {
    v9 = *(a1 + 344);
    if (v9)
    {
      (***(v9 + 8))(*(v9 + 8));
    }
  }

  if (a2)
  {
    v10 = a2;
    if (CSStore2::Store::getTable((a1 + 8), v10))
    {
      v11 = MEMORY[0x1E696ABC0];
      v31[0] = *MEMORY[0x1E696A278];
      v31[1] = @"Line";
      v32[0] = @"kCSStoreNameAlreadyInUseErr";
      v32[1] = &unk_1F37D7DC0;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
      v13 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-9494 userInfo:v12];
    }

    else
    {
      Table = CSStore2::Store::allocateTable((a1 + 8), v10, a3, 1);
      if (Table)
      {
        v13 = 0;
        v15 = (4 * *Table);
        goto LABEL_9;
      }

      IsNameAllowed = CSStore2::Table::IsNameAllowed(v10, 1);
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A768];
      v22 = *MEMORY[0x1E696A278];
      if (IsNameAllowed)
      {
        v29[0] = *MEMORY[0x1E696A278];
        v29[1] = @"Line";
        v30[0] = @"kCSStoreAllocFailedErr";
        v30[1] = &unk_1F37D7DD8;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
        v13 = [v20 errorWithDomain:v21 code:-9493 userInfo:v23];
      }

      else
      {
        v27[0] = *MEMORY[0x1E696A278];
        v27[1] = @"Line";
        v28[0] = @"kCSStoreNameInvalidErr";
        v28[1] = &unk_1F37D7DF0;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
        v13 = [v20 errorWithDomain:v21 code:-9490 userInfo:v24];
      }
    }
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v25[0] = *MEMORY[0x1E696A278];
    v25[1] = @"Line";
    v26[0] = @"paramErr";
    v26[1] = &unk_1F37D7E08;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v13 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v10];
  }

  v15 = 0;
LABEL_9:

  objc_autoreleasePoolPop(v8);
  if (a4 && !v15)
  {
    *a4 = v13;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void _CSStoreRemoveTable(uint64_t a1, unsigned int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (performMutatingAssertions == 1)
  {
    v5 = *(a1 + 344);
    if (v5)
    {
      (***(v5 + 8))(*(v5 + 8));
    }
  }

  if (a2 != -37516)
  {
    if (a2)
    {
      Table = CSStore2::Store::getTable((a1 + 8), a2);
      if (Table)
      {
        if (Table[8] != 60)
        {
          CSStore2::Store::freeUnit((a1 + 8), (*(*(a1 + 8) + 8) + 20), Table);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t CSStoreGetUnitCount(uint64_t a1, unsigned int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (performConstantAssertions == 1)
  {
    v5 = *(a1 + 344);
    if (v5)
    {
      (*(**(v5 + 8) + 8))(*(v5 + 8));
    }
  }

  Table = CSStore2::Store::getTable((a1 + 8), a2);
  if (Table)
  {
    UnitCount = CSStore2::Store::getUnitCount((a1 + 8), Table);
  }

  else
  {
    UnitCount = 0;
  }

  objc_autoreleasePoolPop(v4);
  return UnitCount;
}

Unit *CSStoreAllocUnit(uint64_t a1, unsigned int a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (performMutatingAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (***(v6 + 8))(*(v6 + 8));
    }
  }

  Table = CSStore2::Store::getTable((a1 + 8), a2);
  if (Table)
  {
    result = CSStore2::Store::allocateUnit((a1 + 8), Table, a3, 0);
    if (result)
    {
      result = (4 * *result);
    }
  }

  else
  {
    v9 = CSStore2::GetLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136446210;
      v12 = "CSStoreUnitID CSStoreAllocUnit(CSMutableStoreRef _Nonnull, CSStoreTableID, _CSStoreSize)";
      _os_log_impl(&dword_1B9D5B000, v9, OS_LOG_TYPE_INFO, "%{public}s: no table ID supplied", &v11, 0xCu);
    }

    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

Unit *CSStoreAllocUnitWithData(uint64_t a1, unsigned int a2, const void *a3, const void *a4)
{
  v8 = CSStoreAllocUnit(a1, a2, a3);
  v9 = v8;
  if (a4 && v8)
  {
    _CSStoreWriteToUnit(a1, a2, v8, 0, a3, a4, 0);
  }

  return v9;
}

uint64_t _CSStoreWriteToUnit(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, const void *a5, const void *a6, void *a7)
{
  v50[2] = *MEMORY[0x1E69E9840];
  if (performMutatingAssertions == 1)
  {
    v14 = *(a1 + 344);
    if (v14)
    {
      (***(v14 + 8))(*(v14 + 8));
    }
  }

  if (!a2)
  {
    v28 = MEMORY[0x1E696ABC0];
    v43[0] = *MEMORY[0x1E696A278];
    v43[1] = @"Line";
    v44[0] = @"paramErr";
    v44[1] = &unk_1F37D7E50;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v27 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v29];

    goto LABEL_20;
  }

  Table = CSStore2::Store::getTable((a1 + 8), a2);
  if (!Table)
  {
    v30 = MEMORY[0x1E696ABC0];
    v45[0] = *MEMORY[0x1E696A278];
    v45[1] = @"Line";
    v46[0] = @"kCSStoreNotFoundErr";
    v46[1] = &unk_1F37D7E38;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
    v27 = [v30 errorWithDomain:*MEMORY[0x1E696A768] code:-9499 userInfo:v31];

    goto LABEL_20;
  }

  Unit = CSStore2::Store::getUnit((a1 + 8), Table, a3);
  if (!Unit)
  {
    v32 = MEMORY[0x1E696ABC0];
    v47[0] = *MEMORY[0x1E696A278];
    v47[1] = @"Line";
    v48[0] = @"kCSStoreNotFoundErr";
    v48[1] = &unk_1F37D7E20;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v27 = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:-9499 userInfo:v33];

LABEL_20:
    v26 = 0;
    if (!a7)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v17 = *(Unit + 1);
  v18 = 80;
  if ((*Unit & 0xC0000000) == 0x40000000)
  {
    v17 -= 72;
  }

  else
  {
    v18 = 8;
  }

  v19 = *(*(a1 + 8) + 8);
  v20 = *(v19 + 12);
  if (v17 > v20 || __CFADD__(a4, a5) || a4 + a5 > v17)
  {
    goto LABEL_11;
  }

  v36 = &Unit[v18];
  v37 = v36 - v19;
  v38 = v36 < v19;
  if (&v36[-v19] >> 32)
  {
    v38 = 1;
  }

  v39 = v37 + 1 > v20 || v37 == -1;
  if (v38 || v39)
  {
    v37 = -1;
  }

  v40 = __CFADD__(v37, v17);
  v41 = v37 + v17;
  if (v40 || v41 > v20)
  {
LABEL_11:
    if (v20 <= a4)
    {
      v21 = -9492;
    }

    else
    {
      v21 = -9497;
    }

    v22 = MEMORY[0x1E696ABC0];
    v49[0] = *MEMORY[0x1E696A278];
    v49[1] = @"Line";
    v50[0] = @"code";
    v50[1] = &unk_1F37D7CA0;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
    v24 = [v22 errorWithDomain:*MEMORY[0x1E696A768] code:v21 userInfo:v23];

    v25 = v24;
    v26 = 0;
  }

  else
  {
    v42 = &v36[a4];
    if (memcmp(v42, a6, a5))
    {
      CSStore2::VM::Copy(v42, a6, a5);
      v19 = *(*(a1 + 8) + 8);
    }

    v24 = 0;
    ++*(v19 + 8);
    v26 = 1;
  }

  v27 = v24;
  if (a7)
  {
LABEL_21:
    if ((v26 & 1) == 0)
    {
      *a7 = v27;
    }
  }

LABEL_23:

  v34 = *MEMORY[0x1E69E9840];
  return v26;
}

char *CSStoreReallocUnit(uint64_t a1, unsigned int a2, unsigned int a3, CSStore2::VM *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (performMutatingAssertions == 1)
  {
    v8 = *(a1 + 344);
    if (v8)
    {
      (***(v8 + 8))(*(v8 + 8));
    }
  }

  result = CSStore2::Store::getTable((a1 + 8), a2);
  if (result)
  {
    v10 = result;
    result = CSStore2::Store::getUnit((a1 + 8), result, a3);
    if (result)
    {
      return (4 * *CSStore2::Store::reallocateUnit((a1 + 8), v10, result, a4));
    }
  }

  return result;
}

char *CSStoreFreeUnit(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (performMutatingAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (***(v6 + 8))(*(v6 + 8));
    }
  }

  result = CSStore2::Store::getTable((a1 + 8), a2);
  if (result)
  {
    v8 = result;
    result = CSStore2::Store::getUnit((a1 + 8), result, a3);
    if (result)
    {

      return CSStore2::Store::freeUnit((a1 + 8), v8, result);
    }
  }

  return result;
}

uint64_t _CSStoreWriteToHeader(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, const void *a5, void *a6)
{
  if (a1)
  {
    v11 = -37516;
  }

  else
  {
    v11 = 0;
  }

  return _CSStoreWriteToUnit(a1, v11, a2, a3, a4, a5, a6);
}

void _CSStoreSetExpectedAccessQueue(void *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = _CSStoreAccessContextCreateWithQueue(v3);
  }

  else
  {
    v4 = 0;
  }

  [a1 setAccessContext:v4];
}

uint64_t _CSStoreValidate(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = &__block_literal_global_119;
  }

  else
  {
    v4 = &__block_literal_global_117;
  }

  if (performConstantAssertions == 1)
  {
    v5 = *(a1 + 344);
    if (v5)
    {
      (*(**(v5 + 8) + 8))(*(v5 + 8));
    }
  }

  v6 = (a1 + 8);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___CSStoreValidate_block_invoke_3;
  v16[3] = &unk_1E7ED3758;
  v17 = v4;
  v18 = &v19;
  CSStore2::Store::enumerateTables(v6, v16);
  if ((a2 & 2) != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___CSStoreValidate_block_invoke_4;
    v12[3] = &unk_1E7ED3780;
    v13 = v4;
    v14 = &v23;
    v15 = v6;
    CSStore2::Store::enumerateTables(v6, v12);
    v7 = *(v20 + 24);
    if ((v7 & 1) == 0)
    {
      if (a2)
      {
        v8 = &__block_literal_global_119;
      }

      else
      {
        v8 = &__block_literal_global_117;
      }

      v8[2](v4, "Ran out of unit identifiers.");
    }

    if ((v24[3] & 1) == 0)
    {
      if (a2)
      {
        v9 = &__block_literal_global_119;
      }

      else
      {
        v9 = &__block_literal_global_117;
      }

      v9[2](v4, "Unit identifier cache entry invalid.");
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 | *(v24 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v10 & 1;
}

void sub_1B9D76A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void _CSStoreShow(CSStore2::Store *this, int a2, FILE *a3)
{
  if (performConstantAssertions == 1)
  {
    v6 = *(this + 43);
    if (v6)
    {
      (*(**(v6 + 8) + 8))(*(v6 + 8));
    }
  }

  v8 = *(this + 1);
  v7 = (this + 8);
  v9 = *(v8 + 8);
  v10 = *(v9 + 12);
  UnitCount = CSStore2::Store::getUnitCount(v7, (v9 + 20));
  v12 = *v7;
  if (*v7)
  {
    v12 = v12[1];
  }

  fprintf(a3, "\n******************************************************************************\nstore:       %p\nbytes:       %p\nlength:      %llu\ntable count: %llu\n", v7, v12, v10, UnitCount);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN8CSStore24Show13StoreContentsERKNS_5StoreEbP7__sFILE_block_invoke;
  v13[3] = &__block_descriptor_49_e47_v24__0r__Table__Unit_b30b2I_0c___48c_QQII_8_B16l;
  v13[4] = a3;
  v13[5] = v7;
  v14 = a2 != 0;
  CSStore2::Store::enumerateTables(v7, v13);
}

void ___ZN8CSStore24Show13StoreContentsERKNS_5StoreEbP7__sFILE_block_invoke(uint64_t a1, const CSStore2::Store *a2)
{
  fputs("==============================================================================\n", *(a1 + 32));
  v4 = objc_autoreleasePoolPush();
  v5 = CSStore2::Show::TableContents(*(a1 + 40), a2, *(a1 + 48));
  v6 = [v5 string];
  fputs([v6 UTF8String], *(a1 + 32));

  objc_autoreleasePoolPop(v4);
}

id CSStore2::Show::TableContents(atomic_ullong *this, const CSStore2::Store *a2, const CSStore2::Table *a3)
{
  v3 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  CSStore2::AttributedStringWriter::AttributedStringWriter(v43, v7, v8);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(4 * *a2)];
  CSStore2::AttributedStringWriter::number(v43, &cfstr_TableId.isa, v9);

  v10 = CSStore2::Table::copyCFName(a2);
  CSStore2::AttributedStringWriter::string(v43, &cfstr_Name.isa, &v10->isa);

  v11 = a2 + 8;
  v12 = *this;
  if (*this)
  {
    v13 = *(v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = -1;
  v15 = v11 >= v13;
  v16 = &v11[-v13];
  if (v15 && !HIDWORD(v16))
  {
    if ((v16 + 1) > *(*(v12 + 8) + 12) || v16 == -1)
    {
      v14 = -1;
    }

    else
    {
      v14 = v16;
    }
  }

  v42 = v14;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3321888768;
  v41[2] = ___ZN8CSStore24Show13TableContentsERKNS_5StoreEPKNS_5TableEb_block_invoke;
  v41[3] = &__block_descriptor_48_ea8_32c68_ZTSKZN8CSStore24Show13TableContentsERKNS_5StoreEPKNS_5TableEbEUlvE__e5_v8__0l;
  v41[4] = v43;
  v41[5] = &v42;
  CSStore2::AttributedStringWriter::withAppliedAttribute(v43, @"_CSVNum", v18, v41);

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a2 + 1)];
  CSStore2::AttributedStringWriter::number(v43, &cfstr_Length_0.isa, v19);

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{CSStore2::Store::getUnitCount(this, a2)}];
  CSStore2::AttributedStringWriter::number(v43, &cfstr_UnitCount.isa, v20);

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(a2 + 1) - 72)];
  CSStore2::AttributedStringWriter::number(v43, &cfstr_HeaderLength.isa, v21);

  Table = this[34];
  if (!Table)
  {
    Table = CSStore2::Store::getTable(this, &cfstr_String_0.isa);
  }

  if (Table == a2)
  {
    v24 = CSStore2::String::GetDebugDescriptionOfCache(this, v22);
    if (v24)
    {
      CSStore2::AttributedStringWriter::string(v43, &cfstr_Stringcache.isa, v24);
    }
  }

  v25 = *(a2 + 19);
  if (v25 != -1)
  {
    v26 = *(*this + 8);
    if (*(v26 + 12) > v25)
    {
      v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
      if (CSStore2::NameOfType<CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>>(void)::once != -1)
      {
        dispatch_once(&CSStore2::NameOfType<CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>>(void)::once, &__block_literal_global_174);
      }

      v28 = (v26 + v25);
      v29 = CSStore2::NameOfType<CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>>(void)::result;
      v30 = v29;
      v31 = *this;
      if (*this)
      {
        v32 = *(v31 + 8);
      }

      else
      {
        v32 = 0;
      }

      v33 = 0xFFFFFFFFLL;
      v15 = v28 >= v32;
      v34 = v28 - v32;
      if (v15 && !HIDWORD(v34))
      {
        if ((v34 + 1) > *(*(v31 + 8) + 12) || v34 == -1)
        {
          v33 = 0xFFFFFFFFLL;
        }

        else
        {
          v33 = v34;
        }
      }

      [v27 appendFormat:@"%@ @ 0x%llx", v29, v33];

      Statistics = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::GetStatistics(v28);
      [v27 appendFormat:@" { buckets = %llu, count = %llu }", HIDWORD(Statistics), Statistics];
      if (v27)
      {
        CSStore2::AttributedStringWriter::string(v43, &cfstr_Identifiercach.isa, v27);
      }
    }
  }

  if (v3)
  {
    CSStore2::AttributedStringWriter::separator(v43, 0x2B, 0);
    if (*this)
    {
      v37 = *(*this + 8);
    }

    else
    {
      v37 = 0;
    }

    v38 = CSStore2::Show::ShowBytes(v37, a2, (*(a2 + 1) + 8));
    CSStore2::AttributedStringWriter::attributedString(v43, v38);
  }

  v39 = [(__CSStore *)v7 copy];
  CSStore2::AttributedStringWriter::~AttributedStringWriter(v43);

  objc_autoreleasePoolPop(v6);

  return v39;
}

void sub_1B9D77A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  CSStore2::AttributedStringWriter::~AttributedStringWriter(va);
  _Unwind_Resume(a1);
}

id CSStore2::Show::ShowBytes(CSStore2::Show *this, char *a2, const void *a3)
{
  v3 = a3;
  v5 = this;
  context = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v21 = 0;
  v22 = a2 - v5;
  if (v3)
  {
    v7 = MEMORY[0x1E695E118];
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
      CSStore2::AttributedStringWriter::AttributedStringWriter(v19, v9, v10);
      *(v20 + 169) = 0;
      v11 = v3 - v21;
      if (v3 - v21 >= 0x10)
      {
        v11 = 16;
      }

      v18 = v11;
      v16[8] = &v17;
      v17 = &a2[v21];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3321888768;
      v16[2] = ___ZN8CSStore24Show9ShowBytesEPKvS2_j_block_invoke;
      v16[3] = &__block_descriptor_72_ea8_32c45_ZTSKZN8CSStore24Show9ShowBytesEPKvS2_jEUlvE__e5_v8__0l;
      v16[4] = v19;
      v16[5] = &v22;
      v16[6] = &v21;
      v16[7] = &v18;
      CSStore2::AttributedStringWriter::withAppliedAttribute(v19, @"_CSVFixed", v7, v16);
      [v6 appendAttributedString:{v9, context}];
      CSStore2::AttributedStringWriter::~AttributedStringWriter(v19);

      objc_autoreleasePoolPop(v8);
      v21 += 16;
    }

    while (v21 < v3);
  }

  v12 = [v6 copy];

  objc_autoreleasePoolPop(contexta);

  return v12;
}

void ___ZN8CSStore24Show9ShowBytesEPKvS2_j_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZZN8CSStore24Show9ShowBytesEPKvS2_jENKUlvE_clEv_block_invoke;
  v9[3] = &__block_descriptor_56_ea8_32c58_ZTSKZZN8CSStore24Show9ShowBytesEPKvS2_jENKUlvE_clEvEUlvE__e5_v8__0l;
  v10 = *(a1 + 40);
  v11 = v2;
  CSStore2::AttributedStringWriter::withAppliedAttribute(v2, @"_CSVFWeight", &unk_1F37D8048, v9);
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZZN8CSStore24Show9ShowBytesEPKvS2_jENKUlvE_clEv_block_invoke_183;
  v8[3] = &__block_descriptor_40_ea8_32c59_ZTSKZZN8CSStore24Show9ShowBytesEPKvS2_jENKUlvE_clEvEUlvE0__e5_v8__0l;
  v8[4] = v3;
  CSStore2::AttributedStringWriter::withAppliedAttribute(v3, @"_CSVOutputType", &unk_1F37D7E68, v8);
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = 0;
  while (1)
  {
    if (v5 && (v5 & 3) == 0)
    {
      [(NSAttributedString *)v4 appendString:@" "];
    }

    if (v5 >= **(a1 + 56))
    {
      [(NSAttributedString *)v4 appendString:@"  "];
    }

    else
    {
      [(NSAttributedString *)v4 appendFormat:@"%02x", *(**(a1 + 64) + v5)];
    }

    if (++v5 == 16)
    {
      CSStore2::AttributedStringWriter::string(*(a1 + 32), v4);
      CSStore2::AttributedStringWriter::string(*(a1 + 32), @"    ");
      v6 = **(a1 + 56);
      if (v6)
      {
        v7 = **(a1 + 64);
        std::allocator<unsigned short>::allocate_at_least[abi:nn200100](v6);
      }

      std::allocator<unsigned short>::allocate_at_least[abi:nn200100](16);
    }
  }
}

void sub_1B9D78268(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c45_ZTSKZN8CSStore24Show9ShowBytesEPKvS2_jEUlvE_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void ___ZZN8CSStore24Show9ShowBytesEPKvS2_jENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v5 = (**(a1 + 40) + **(a1 + 32));
  v2 = *(a1 + 48);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZZZN8CSStore24Show9ShowBytesEPKvS2_jENKUlvE_clEvENKUlvE_clEv_block_invoke;
  v4[3] = &__block_descriptor_48_ea8_32c71_ZTSKZZZN8CSStore24Show9ShowBytesEPKvS2_jENKUlvE_clEvENKUlvE_clEvEUlvE__e5_v8__0l;
  v4[4] = *(a1 + 48);
  v4[5] = &v5;
  CSStore2::AttributedStringWriter::withAppliedAttribute(v2, @"_CSVNum", v3, v4);
}

void std::allocator<unsigned short>::allocate_at_least[abi:nn200100](uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
}

__n128 __copy_helper_block_ea8_32c58_ZTSKZZN8CSStore24Show9ShowBytesEPKvS2_jENKUlvE_clEvEUlvE_(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c71_ZTSKZZZN8CSStore24Show9ShowBytesEPKvS2_jENKUlvE_clEvENKUlvE_clEvEUlvE_(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void ___ZN8CSStore2L10NameOfTypeINS_7HashMapIjjNS_20_IdentifierFunctionsELy1EEEEEP8NSStringv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(&__p, "NSString *CSStore2::NameOfType() [T = CSStore2::HashMap<unsigned int, unsigned int, CSStore2::_IdentifierFunctions, 1>]_block_invoke");
  v0 = CSStore2::_CopyNameOfTypeImpl(&__p);
  v1 = CSStore2::NameOfType<CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>>(void)::result;
  CSStore2::NameOfType<CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>>(void)::result = v0;

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B9D784B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
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

__n128 __copy_helper_block_ea8_32c68_ZTSKZN8CSStore24Show13TableContentsERKNS_5StoreEPKNS_5TableEbEUlvE_(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

char *_CSStoreCopyDebugDescriptionOfTable(uint64_t a1, unsigned int a2, int a3)
{
  if (performConstantAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (*(**(v6 + 8) + 8))(*(v6 + 8));
    }
  }

  result = CSStore2::Store::getTable((a1 + 8), a2);
  if (result)
  {
    CSStore2::Show::TableContents((a1 + 8), result, (a3 != 0));
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

char *_CSStoreCopyDebugDescriptionOfUnit(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a1)
  {
    v7 = -37516;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == a2)
  {

    return _CSStoreCopyDebugDescriptionOfTable(a1, a3, a4);
  }

  else
  {
    if (performConstantAssertions == 1)
    {
      v10 = *(a1 + 344);
      if (v10)
      {
        (*(**(v10 + 8) + 8))(*(v10 + 8));
      }
    }

    Table = CSStore2::Store::getTable((a1 + 8), a2);
    if (!Table)
    {
      return 0;
    }

    Unit = CSStore2::Store::getUnit((a1 + 8), Table, a3);
    if (!Unit)
    {
      return 0;
    }

    v13 = Unit;
    v14 = objc_autoreleasePoolPush();
    v15 = objc_alloc_init(MEMORY[0x1E696AD40]);
    CSStore2::AttributedStringWriter::AttributedStringWriter(v35, v15, v16);
    v34 = 4 * *v13;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3321888768;
    v33[2] = ___ZN8CSStore24Show12UnitContentsERKNS_5StoreEPKNS_4UnitEb_block_invoke;
    v33[3] = &__block_descriptor_48_ea8_32c66_ZTSKZN8CSStore24Show12UnitContentsERKNS_5StoreEPKNS_4UnitEbEUlvE__e5_v8__0l;
    v33[4] = v35;
    v33[5] = &v34;
    CSStore2::AttributedStringWriter::withAppliedAttribute(v35, @"_CSVNum", v17, v33);

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v13 + 1) + 8];
    CSStore2::AttributedStringWriter::number(v35, &cfstr_Length_0.isa, v18);

    v19 = v13 + 8;
    v20 = *(a1 + 8);
    if (v20)
    {
      v21 = *(v20 + 8);
    }

    else
    {
      v21 = 0;
    }

    v23 = -1;
    v24 = v19 >= v21;
    v25 = &v19[-v21];
    if (v24 && !HIDWORD(v25))
    {
      if ((v25 + 1) > *(*(v20 + 8) + 12) || v25 == -1)
      {
        v23 = -1;
      }

      else
      {
        v23 = v25;
      }
    }

    v32 = v23;
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3321888768;
    v31[2] = ___ZN8CSStore24Show12UnitContentsERKNS_5StoreEPKNS_4UnitEb_block_invoke_212;
    v31[3] = &__block_descriptor_48_ea8_32c67_ZTSKZN8CSStore24Show12UnitContentsERKNS_5StoreEPKNS_4UnitEbEUlvE0__e5_v8__0l;
    v31[4] = v35;
    v31[5] = &v32;
    CSStore2::AttributedStringWriter::withAppliedAttribute(v35, @"_CSVNum", v27, v31);

    if (a4)
    {
      CSStore2::AttributedStringWriter::separator(v35, 0x2B, 0);
      v28 = *(a1 + 8);
      if (v28)
      {
        v29 = *(v28 + 8);
      }

      else
      {
        v29 = 0;
      }

      v30 = CSStore2::Show::ShowBytes(v29, v13, (*(v13 + 1) + 8));
      CSStore2::AttributedStringWriter::attributedString(v35, v30);
    }

    v22 = [(__CSStore *)v15 copy];
    CSStore2::AttributedStringWriter::~AttributedStringWriter(v35);

    objc_autoreleasePoolPop(v14);
    return v22;
  }
}

void sub_1B9D78968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  CSStore2::AttributedStringWriter::~AttributedStringWriter(va);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c67_ZTSKZN8CSStore24Show12UnitContentsERKNS_5StoreEPKNS_4UnitEbEUlvE0_(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c66_ZTSKZN8CSStore24Show12UnitContentsERKNS_5StoreEPKNS_4UnitEbEUlvE_(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

uint64_t _CSStoreCopyDebugDescriptionOfBytesInRange(uint64_t a1, unsigned int a2, void *a3)
{
  if (performConstantAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (*(**(v6 + 8) + 8))(*(v6 + 8));
    }
  }

  result = 0;
  if (!__CFADD__(a2, a3))
  {
    v8 = *(*(a1 + 8) + 8);
    if (a2 + a3 <= *(v8 + 12))
    {
      CSStore2::Show::ShowBytes((v8 + 100 * a2), (v8 + 100 * a2), a3);
      return objc_claimAutoreleasedReturnValue();
    }
  }

  return result;
}

uint64_t _CSStoreCopyMemoryStatistics(uint64_t a1)
{
  if (performConstantAssertions == 1)
  {
    v2 = *(a1 + 344);
    if (v2)
    {
      (*(**(v2 + 8) + 8))(*(v2 + 8));
    }
  }

  v3 = (a1 + 8);
  v4 = objc_autoreleasePoolPush();
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x4812000000;
  v44 = __Block_byref_object_copy__242;
  v45 = __Block_byref_object_dispose__243;
  v46 = "";
  v48[0] = 0;
  v48[1] = 0;
  v47 = v48;
  v33 = 0;
  v34 = &v33;
  v35 = 0x4812000000;
  v36 = __Block_byref_object_copy__242;
  v37 = __Block_byref_object_dispose__243;
  v38 = "";
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___ZN8CSStore24Show16MemoryStatisticsERKNS_5StoreE_block_invoke;
  v24[3] = &unk_1E7ED37F0;
  v24[4] = &v53;
  v24[5] = &v41;
  v24[9] = &v29;
  v24[10] = v3;
  v24[6] = &v33;
  v24[7] = &v25;
  v24[8] = &v49;
  CSStore2::Store::enumerateTables(v3, v24);
  StringCache = CSStore2::getStringCache(v3, v5);
  if (StringCache)
  {
    CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::GetStatistics(StringCache);
    v8 = HIDWORD(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
  context = v4;
  v22 = v8;
  CSStore2::AttributedStringWriter::AttributedStringWriter(v23, v9, v10);
  CSStore2::AttributedStringWriter::separator(v23, 0x2B, &cfstr_StructureSizes.isa);
  CSStore2::Show::ShowSize(v23, @"sizeof(Data)", 0xFFFFFFFFFFFFFFFFLL, 100);
  CSStore2::Show::ShowSize(v23, @"sizeof(Table)", 0xFFFFFFFFFFFFFFFFLL, 80);
  CSStore2::Show::ShowSize(v23, @"sizeof(Unit)", 0xFFFFFFFFFFFFFFFFLL, 8);
  CSStore2::Show::ShowSize(v23, @"sizeof(IdentifierCache)", 0xFFFFFFFFFFFFFFFFLL, 4);
  CSStore2::AttributedStringWriter::separator(v23, 0x2B, &cfstr_MemoryByTable.isa);
  v11 = v42[6];
  v12 = v42 + 7;
  if (v11 != v42 + 7)
  {
    do
    {
      v13 = v11 + 4;
      if (*(v11 + 55) < 0)
      {
        v13 = v11[4];
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v13, context, v22}];
      v15 = *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>((v34 + 6), &v57, v11 + 4);
      if (!v15)
      {
        operator new();
      }

      CSStore2::Show::ShowSize(v23, v14, *(v15 + 56), v11[7]);

      v16 = v11[1];
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
          v17 = v11[2];
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v12);
  }

  CSStore2::AttributedStringWriter::separator(v23, 0x2B, &cfstr_MemorySummary.isa);
  CSStore2::Show::ShowSize(v23, @"Tables", 0xFFFFFFFFFFFFFFFFLL, v54[3]);
  CSStore2::Show::ShowSize(v23, @"Identifier caches", 0xFFFFFFFFFFFFFFFFLL, v30[3]);
  CSStore2::Show::ShowSize(v23, @"String caches", 0xFFFFFFFFFFFFFFFFLL, v22);
  CSStore2::Show::ShowSize(v23, @"All units", v50[3], v26[3]);
  CSStore2::Show::ShowSize(v23, @"Collectable", 0xFFFFFFFFFFFFFFFFLL, (*(*(*v3 + 8) + 12) - *(*(*v3 + 8) + 16)));
  CSStore2::Show::ShowSize(v23, @"Total bytes used", 0xFFFFFFFFFFFFFFFFLL, *(*(*v3 + 8) + 16));
  v19 = [(__CSStore *)v9 copy];
  CSStore2::AttributedStringWriter::~AttributedStringWriter(v23);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(v40[0]);
  _Block_object_dispose(&v41, 8);
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(v48[0]);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  objc_autoreleasePoolPop(context);
  return v19;
}

void *__Block_byref_object_copy__242(void *result, void *a2)
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

void ___ZN8CSStore24Show16MemoryStatisticsERKNS_5StoreE_block_invoke(uint64_t a1, CSStore2::Table *this)
{
  *(*(*(a1 + 32) + 8) + 24) += (*(this + 1) - 72) + 80;
  v4 = *(*(a1 + 40) + 8);
  v5 = CSStore2::Table::copyCFName(this);
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v5, "UTF8String"));
  v22 = __p;
  v6 = std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 48, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = CSStore2::Table::copyCFName(this);
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v8, "UTF8String"));
  v22 = __p;
  v9 = v6 + 56;
  v10 = std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7 + 48, __p) + 56;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(a1 + 80);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN8CSStore24Show16MemoryStatisticsERKNS_5StoreE_block_invoke_2;
  v16[3] = &unk_1E7ED37C8;
  v18 = v9;
  v19 = v10;
  v17 = *(a1 + 56);
  CSStore2::Store::enumerateUnits(v11, this, v16);
  v12 = *(this + 19);
  if (v12 != -1)
  {
    v13 = *(**(a1 + 80) + 8);
    if (*(v13 + 12) > v12 && v13 != 0)
    {
      CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::GetStatistics((v13 + v12));
      *(*(*(a1 + 72) + 8) + 24) += HIDWORD(v15);
    }
  }
}

void sub_1B9D79294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CSStore2::Show::ShowSize(CSStore2::Show *this, CSStore2::AttributedStringWriter *a2, NSString *a3, uint64_t a4)
{
  v7 = a2;
  v16 = a4;
  v17 = a3;
  v8 = objc_autoreleasePoolPush();
  if (CSStore2::Show::ShowSize(CSStore2::AttributedStringWriter &,NSString *,unsigned long long,unsigned long long)::once != -1)
  {
    dispatch_once(&CSStore2::Show::ShowSize(CSStore2::AttributedStringWriter &,NSString *,unsigned long long,unsigned long long)::once, &__block_literal_global_263);
  }

  v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
  CSStore2::AttributedStringWriter::AttributedStringWriter(v14, v9, v10);
  *(v15 + 169) = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = ___ZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyy_block_invoke_2;
  v13[3] = &__block_descriptor_48_ea8_32c78_ZTSKZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyEUlvE__e5_v8__0l;
  v13[4] = v14;
  v13[5] = &v16;
  CSStore2::AttributedStringWriter::withAppliedAttribute(v14, @"_CSVFixed", MEMORY[0x1E695E118], v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = ___ZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyy_block_invoke_267;
  v12[3] = &__block_descriptor_40_ea8_32c79_ZTSKZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyEUlvE0__e5_v8__0l;
  v12[4] = v14;
  CSStore2::AttributedStringWriter::withAppliedAttribute(v14, @"_CSVOutputType", &unk_1F37D7E68, v12);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = ___ZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyy_block_invoke_270;
  v11[3] = &__block_descriptor_56_ea8_32c79_ZTSKZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyEUlvE1__e5_v8__0l;
  v11[4] = &v17;
  v11[5] = v14;
  v11[6] = &v16;
  CSStore2::AttributedStringWriter::withAppliedAttribute(v14, @"_CSVFixed", MEMORY[0x1E695E118], v11);
  CSStore2::AttributedStringWriter::attributedString(this, v7, v9);
  CSStore2::AttributedStringWriter::~AttributedStringWriter(v14);

  objc_autoreleasePoolPop(v8);
}

void std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
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
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
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

      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
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

uint64_t **std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__insert_node_at(uint64_t **result, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v4 = **result;
  if (v4)
  {
    *result = v4;
    a4 = *a3;
  }

  v5 = result[1];
  *(a4 + 24) = a4 == v5;
  if (a4 != v5)
  {
    do
    {
      v6 = a4[2];
      if (v6[3])
      {
        break;
      }

      v7 = v6[2];
      v8 = *v7;
      if (*v7 == v6)
      {
        v12 = v7[1];
        if (!v12 || (v13 = *(v12 + 24), v11 = (v12 + 24), v13 == 1))
        {
          if (*v6 == a4)
          {
            v15 = a4[2];
          }

          else
          {
            v15 = v6[1];
            v16 = *v15;
            v6[1] = *v15;
            v17 = v6;
            if (v16)
            {
              v16[2] = v6;
              v7 = v6[2];
              v17 = *v7;
            }

            v15[2] = v7;
            v7[v17 != v6] = v15;
            *v15 = v6;
            v6[2] = v15;
            v7 = v15[2];
            v8 = *v7;
          }

          *(v15 + 24) = 1;
          *(v7 + 24) = 0;
          v22 = *(v8 + 8);
          *v7 = v22;
          if (v22)
          {
            *(v22 + 16) = v7;
          }

          v23 = v7[2];
          *(v8 + 16) = v23;
          v23[*v23 != v7] = v8;
          *(v8 + 8) = v7;
          v7[2] = v8;
          break;
        }
      }

      else
      {
        if (!v8 || (v10 = *(v8 + 24), v9 = (v8 + 24), v10 == 1))
        {
          v14 = *v6;
          if (*v6 == a4)
          {
            v18 = v14[1];
            *v6 = v18;
            if (v18)
            {
              *(v18 + 16) = v6;
              v7 = v6[2];
            }

            v14[2] = v7;
            v7[*v7 != v6] = v14;
            v14[1] = v6;
            v6[2] = v14;
            v7 = v14[2];
          }

          else
          {
            v14 = a4[2];
          }

          *(v14 + 24) = 1;
          *(v7 + 24) = 0;
          v19 = v7[1];
          v20 = *v19;
          v7[1] = *v19;
          if (v20)
          {
            *(v20 + 16) = v7;
          }

          v21 = v7[2];
          v19[2] = v21;
          v21[*v21 != v7] = v19;
          *v19 = v7;
          v7[2] = v19;
          break;
        }

        v11 = v9;
      }

      *(v6 + 24) = 1;
      a4 = v7;
      *(v7 + 24) = v7 == v5;
      *v11 = 1;
    }

    while (v7 != v5);
  }

  result[2] = (result[2] + 1);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned long>,void *>>>::operator()[abi:nn200100](char a1, void **__p)
{
  if (a1)
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

uint64_t std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void ___ZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyy_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:**(a1 + 40)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyENKUlvE_clEv_block_invoke;
  v4[3] = &__block_descriptor_48_ea8_32c91_ZTSKZZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyENKUlvE_clEvEUlvE__e5_v8__0l;
  v5 = *(a1 + 32);
  CSStore2::AttributedStringWriter::withAppliedAttribute(v2, @"_CSVNum", v3, v4);
}

void ___ZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyy_block_invoke_270(int8x16_t *a1)
{
  v1 = a1[2].i64[1];
  if (*a1[2].i64[0] == -1)
  {
    v5 = a1[2].i64[1];

    CSStore2::AttributedStringWriter::string(v5, @"-----");
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3321888768;
    v6[2] = ___ZZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyENKUlvE1_clEv_block_invoke;
    v6[3] = &__block_descriptor_56_ea8_32c92_ZTSKZZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyENKUlvE1_clEvEUlvE__e5_v8__0l;
    v4 = a1[3].i64[0];
    v7 = vextq_s8(a1[2], a1[2], 8uLL);
    v8 = v4;
    CSStore2::AttributedStringWriter::withAppliedAttribute(v1, @"_CSVNum", v3, v6);
  }
}

__n128 __copy_helper_block_ea8_32c79_ZTSKZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyEUlvE1_(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

void ___ZZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyENKUlvE1_clEv_block_invoke(uint64_t a1)
{
  CSStore2::AttributedStringWriter::format(*(a1 + 32), 0, &cfstr_LluUnits.isa, **(a1 + 40));
  v2 = **(a1 + 40);
  if (v2 >= 2)
  {
    v3 = *(a1 + 32);
    v4 = [CSStore2::Show::ShowSize(CSStore2::AttributedStringWriter & NSString *];
    CSStore2::AttributedStringWriter::format(v3, 0, &cfstr_Unit_0.isa, v4);
  }
}

__n128 __copy_helper_block_ea8_32c92_ZTSKZZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyENKUlvE1_clEvEUlvE_(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c78_ZTSKZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyEUlvE_(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void ___ZZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(a1 + 40);
  v3 = [CSStore2::Show::ShowSize(CSStore2::AttributedStringWriter & NSString *];
  CSStore2::AttributedStringWriter::format(v1, 0, &cfstr_10llu10s.isa, v2, [v3 UTF8String]);
}

__n128 __copy_helper_block_ea8_32c91_ZTSKZZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyyENKUlvE_clEvEUlvE_(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void ___ZN8CSStore24Show8ShowSizeERNS_22AttributedStringWriterEP8NSStringyy_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AAF0]);
  v1 = CSStore2::Show::ShowSize(CSStore2::AttributedStringWriter &,NSString *,unsigned long long,unsigned long long)::bf;
  CSStore2::Show::ShowSize(CSStore2::AttributedStringWriter &,NSString *,unsigned long long,unsigned long long)::bf = v0;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t ___ZN8CSStore24Show16MemoryStatisticsERKNS_5StoreE_block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 4) + 8;
  v3 = *(result + 56);
  **(result + 48) += v2;
  *(*(*(result + 32) + 8) + 24) += v2;
  ++*v3;
  ++*(*(*(result + 40) + 8) + 24);
  return result;
}

BOOL _CSStoreIsTableBalanced(uint64_t a1, unsigned int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (performConstantAssertions == 1)
  {
    v5 = *(a1 + 344);
    if (v5)
    {
      (*(**(v5 + 8) + 8))(*(v5 + 8));
    }
  }

  if (a2 && (Table = CSStore2::Store::getTable((a1 + 8), a2)) != 0 && (v7 = *(Table + 19), v7 != -1) && (v8 = *(*(a1 + 8) + 8), *(v8 + 12) > v7))
  {
    if ((*(v8 + v7) - 1) > 0x1FFE)
    {
      v10 = 1;
    }

    else
    {
      Statistics = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::GetStatistics((v8 + v7));
      v10 = Statistics / HIDWORD(Statistics) < 6;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v10;
}

void sub_1B9D7A344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B9D7AE28(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_1B9D7B428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, uint64_t a13, __CFString *a14, __CFString *a15, void *a16, __CFString *a17, CSStore2 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int buf)
{
  if (a2 == 1)
  {
    v34 = objc_begin_catch(a1);
    v35 = v34;
    if (!v28)
    {
      v36 = MEMORY[0x1E696ABC0];
      a11 = *MEMORY[0x1E696A278];
      a12 = @"Line";
      a15 = @"kCSStorePredicateErr";
      a16 = &unk_1F37D7F10;
      a13 = *MEMORY[0x1E696A588];
      a14 = @"Exception";
      a17 = @"An exception was thrown while parsing the predicate string (interpreting as an expression because predicate parsing already failed.)";
      a18 = v34;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a15 forKeys:&a11 count:4];
      [v36 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v37];
      objc_claimAutoreleasedReturnValue();
    }

    v38 = CSStore2::GetLog(v34);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      buf = 138477827;
      *(v31 + 4) = v35;
      _os_log_impl(&dword_1B9D5B000, v38, OS_LOG_TYPE_DEFAULT, "Suppressing exception during expression parsing: %{private}@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1B9D7B3B4);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__369(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

unsigned int *CSStore2::String::Create(CSStore2::String *this, CSStore2::Table **a2, CSStore2::_StringFunctions *a3, const char *a4)
{
  v4 = a4;
  CSStore2::String::Find(&v70, a2, a3, a4);
  v8 = v71;
  *this = v70;
  *(this + 1) = v8;
  v9 = v72;
  *(this + 32) = v72;
  if (v9 == 1)
  {

    return CSStore2::String::retain(this);
  }

  Table = a2[34];
  if (!Table)
  {
    Table = CSStore2::Store::getTable(a2, &cfstr_String_0.isa);
    if (!Table)
    {
      result = CSStore2::Store::allocateTable(a2, &cfstr_String_0.isa, 4, 0);
      if (!result)
      {
        return result;
      }

      v12 = *a2;
      if (*a2)
      {
        v13 = *(v12 + 1);
      }

      else
      {
        v13 = 0;
      }

      v14 = -1;
      v15 = result >= v13;
      v16 = result - v13;
      if (v15 && !HIDWORD(v16))
      {
        if ((v16 + 1) > *(*(v12 + 1) + 12) || v16 == -1)
        {
          v14 = -1;
        }

        else
        {
          v14 = v16;
        }
      }

      if (a2[34] || CSStore2::Store::getTable(a2, &cfstr_String_0.isa))
      {
        v70 = 0u;
        v71 = 0u;
        v72 = 1065353216;
        v18 = CSStore2::Store::extend(a2, 0x23884u);
        v19 = v18;
        if (v18)
        {
          v20 = *a2;
          if (*a2)
          {
            v21 = *(v20 + 1);
          }

          else
          {
            v21 = 0;
          }

          v22 = 0xFFFFFFFFLL;
          v15 = v18 >= v21;
          v23 = v18 - v21;
          if (v15 && !HIDWORD(v23))
          {
            if ((v23 + 1) > *(*(v20 + 1) + 12) || v23 == -1)
            {
              v22 = 0xFFFFFFFFLL;
            }

            else
            {
              v22 = v23;
            }
          }

          CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>::Create(v73, a2, &v70, v22, 0);
          v25 = v73[0];
          if (v73[0])
          {
            CSStore2::VM::Copy(v19, v73[0], 0x23884);
            (v73[1])(v25);
          }

          else
          {
            CSStore2::Store::assertNotEnumeratingUnits(a2);
            v19 = 0;
            v26 = *(*a2 + 1);
            v27 = *(v26 + 16);
            v15 = v27 >= 0x23884;
            v28 = v27 - 145540;
            if (!v15)
            {
              v28 = 0;
            }

            *(v26 + 16) = v28;
            ++*(v26 + 8);
          }
        }

        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v70);
      }

      else
      {
        v19 = 0;
      }

      if (v14 == -1 || (v29 = *(*a2 + 1), *(v29 + 12) <= v14))
      {
        Table = 0;
      }

      else
      {
        Table = (v29 + v14);
      }

      if (v19)
      {
        v30 = *a2;
        if (*a2)
        {
          v31 = *(v30 + 1);
        }

        else
        {
          v31 = 0;
        }

        v32 = -1;
        v15 = v19 >= v31;
        v33 = v19 - v31;
        if (v15 && !HIDWORD(v33))
        {
          if ((v33 + 1) > *(*(v30 + 1) + 12) || v33 == -1)
          {
            v32 = -1;
          }

          else
          {
            v32 = v33;
          }
        }
      }

      else
      {
        v32 = -1;
      }

      *(Table + 20) = v32;
    }
  }

  result = CSStore2::Store::allocateUnit(a2, Table, v4, 0);
  if (result)
  {
    v36 = result;
    if (v4)
    {
      memmove(result + 2, a3, v4);
    }

    result = CSStore2::getStringCache(a2, v35);
    if (!result)
    {
      goto LABEL_122;
    }

    v37 = result;
    v38 = *a2;
    if (*a2)
    {
      v39 = *(v38 + 1);
    }

    else
    {
      v39 = 0;
    }

    v40 = -1;
    v15 = v36 >= v39;
    v41 = v36 - v39;
    if (v15 && !HIDWORD(v41))
    {
      if ((v41 + 1) > *(*(v38 + 1) + 12) || v41 == -1)
      {
        v40 = -1;
      }

      else
      {
        v40 = v41;
      }
    }

    v43 = (4 * *v36);
    LODWORD(v70) = v43;
    if (!v43)
    {
LABEL_121:
      v36 = (*(*a2 + 1) + v40);
LABEL_122:
      v68 = v36[1];
      v69 = 4 * *v36;
      *this = a2;
      *(this + 2) = v69;
      *(this + 12) = 0;
      *(this + 2) = v36 + 2;
      *(this + 6) = v68;
      *(this + 32) = 1;
      return result;
    }

    result = CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>::Find(a2, result, &v70);
    if (result)
    {
      *result = 257;
      goto LABEL_121;
    }

    result = CSStore2::_StringFunctions::getHashCode(a2, v43);
    v44 = &v37[2 * (result % *v37)];
    v45 = (v44 + 1);
    v46 = v44[2];
    if (v46 == -1)
    {
      v50 = 0;
    }

    else
    {
      v47 = *(*a2 + 1);
      v48 = *(v47 + 12) > v46;
      v49 = (v47 + v46);
      if (v48)
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }
    }

    v51 = *v45;
    if (v51)
    {
      v52 = v50;
      v53 = *v45;
      while (*v52 && *(v52 + 1))
      {
        v52 += 8;
        if (!--v53)
        {
          goto LABEL_89;
        }
      }

      *v52 = v43;
      *(v52 + 1) = 257;
      goto LABEL_121;
    }

LABEL_89:
    v54 = v51 + 8;
    v55 = *a2;
    if (*a2)
    {
      v56 = *(v55 + 1);
      v57 = -1;
      v15 = v45 >= v56;
      v45 -= v56;
      if (!v15)
      {
LABEL_101:
        result = CSStore2::Store::embraceAndExtend(a2, v50, (8 * v51), 8 * v54);
        if (v57 == -1 || (v59 = *(*a2 + 1), *(v59 + 12) <= v57))
        {
          v60 = 0;
        }

        else
        {
          v60 = (v59 + v57);
        }

        if (!result)
        {
          v60[1] = -1;
          abort();
        }

        v61 = *a2;
        if (*a2)
        {
          v62 = *(v61 + 1);
        }

        else
        {
          v62 = 0;
        }

        v63 = -1;
        v15 = result >= v62;
        v64 = result - v62;
        if (v15 && !HIDWORD(v64))
        {
          if ((v64 + 1) > *(*(v61 + 1) + 12) || v64 == -1)
          {
            v63 = -1;
          }

          else
          {
            v63 = v64;
          }
        }

        v60[1] = v63;
        v66 = &result[2 * v51];
        *v66 = v43;
        v66[1] = 257;
        if (v51 + 1 < v54)
        {
          v67 = &result[2 * (v51 + 1)];
          *(v67 + 6) = 0;
          *(v67 + 1) = 0u;
          *(v67 + 2) = 0u;
          *v67 = 0u;
        }

        *v60 += 8;
        goto LABEL_121;
      }
    }

    else
    {
      v57 = -1;
    }

    if (!HIDWORD(v45))
    {
      if ((v45 + 1) > *(*(v55 + 1) + 12) || v45 == -1)
      {
        v57 = -1;
      }

      else
      {
        v57 = v45;
      }
    }

    goto LABEL_101;
  }

  return result;
}

void sub_1B9D7C5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(uint64_t))
{
  a16(v16);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

CSStore2 *CSStore2::String::retain(CSStore2 **this)
{
  result = *this;
  if (result)
  {
    if ((*(this + 12) & 1) == 0)
    {
      result = CSStore2::getStringCacheEntry(result, *(this + 2));
      if (result)
      {
        v3 = *result;
        if (*result)
        {

          return CSStore2::String::setRetainCount(this, (v3 + 1), result);
        }
      }
    }
  }

  return result;
}

_DWORD *CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>::Find(CSStore2 *a1, unsigned int *a2, _DWORD *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_17;
  }

  v6 = *a3;
  if (!v6)
  {
    goto LABEL_17;
  }

  if (v3 > 0x2000)
  {
    v19 = CSStore2::GetLog(a1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = *a2;
      v29[0] = 67109376;
      v29[1] = v28;
      v30 = 1024;
      v31 = 0x2000;
      _os_log_error_impl(&dword_1B9D5B000, v19, OS_LOG_TYPE_ERROR, "Impossible bucket count %u when %u is the maximum.", v29, 0xEu);
    }

    goto LABEL_17;
  }

  v8 = &a2[2 * (CSStore2::_StringFunctions::getHashCode(a1, v6) % *a2)];
  v11 = v8[1];
  v9 = v8 + 1;
  v10 = v11;
  if (!v11)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  if (v10 == 1)
  {
    v12 = v9[1];
    if (v12 != -1)
    {
      v13 = *(*a1 + 8);
      if (*(v13 + 12) > v12 && v13 != 0)
      {
        v15 = (v13 + v12);
        v17 = *v15;
        v16 = v15 + 1;
        if (v17 == *a3)
        {
          result = v16;
        }

        else
        {
          result = 0;
        }

        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  v21 = v9[1];
  if (v21 == -1)
  {
    v25 = 0;
  }

  else
  {
    v22 = *(*a1 + 8);
    v23 = *(v22 + 12);
    v24 = (v22 + v21);
    if (v23 <= v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }
  }

  v26 = 8 * v10;
  v27 = &v25[2 * v10];
  while (*v25 != *a3)
  {
    v25 += 2;
    v26 -= 8;
    if (!v26)
    {
      v25 = v27;
      break;
    }
  }

  if (v25 == v27)
  {
    result = 0;
  }

  else
  {
    result = v25 + 1;
  }

LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSStore2::_StringFunctions::getHashCode(CSStore2::_StringFunctions *this, const CSStore2::Store *a2)
{
  CSStore2::String::Get(&v6, this, a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *v4 = v7;
  v5 = 1;
  if (BYTE12(v6))
  {
    v2 = v4;
  }

  else
  {
    v2 = v7;
  }

  return CSStore2::_StringFunctions::getHashCode(v2, LODWORD(v4[1]));
}

int *CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>::Create(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = *(a3 + 24) + 10000;
  if (v7 >= 0x2000)
  {
    v8 = 0x2000;
  }

  else
  {
    v8 = *(a3 + 24) + 10000;
  }

  if (v8 <= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = v8;
  }

  v10 = (8 * v9 + 8 * v7) | 4;
  result = malloc_type_malloc(v10, 0x100004052888210uLL);
  v12 = MEMORY[0x1E69E9B38];
  *a1 = result;
  a1[1] = v12;
  if (result)
  {
    v13 = result;
    bzero(result, v10);
    *v13 = v9;
    operator new();
  }

  if (a5)
  {
    *a5 = v10;
  }

  return result;
}

void sub_1B9D7CAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *v14 = 0;
  free(v15);
  _Unwind_Resume(a1);
}

unsigned int *CSStore2::getStringCacheEntry(CSStore2 *this, const CSStore2::Store *a2)
{
  v4 = a2;
  result = CSStore2::getStringCache(this, a2);
  if (result)
  {
    return CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>::Find(this, result, &v4);
  }

  return result;
}

CSStore2 *CSStore2::String::setRetainCount(uint64_t a1, const CSStore2::Store *a2, CSStore2 *a3)
{
  result = *a1;
  if (result)
  {
    if ((*(a1 + 12) & 1) == 0)
    {
      v5 = a2;
      if (a3 || (result = CSStore2::getStringCacheEntry(result, *(a1 + 8)), (a3 = result) != 0))
      {
        if (*a3 != v5)
        {
          v6 = *a3;
          result = CSStore2::getStringCache(*a1, a2);
          if (result)
          {
            v7 = result;
            result = *a1;
            v8 = *(a1 + 8);
            if (v8)
            {
              result = CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>::Find(result, v7, &v8);
              if (result)
              {
                *result = v6 & 0xFFFFFF00 | v5;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CSStore2::String::GetUTF8BufferFromNSString(void *a1, uint64_t a2)
{
  v3 = a1;
  if (([v3 getCString:a2 maxLength:1024 encoding:4] & 1) == 0)
  {
    a2 = [v3 UTF8String];
  }

  return a2;
}

CSStore2 *CSStore2::String::release(CSStore2::String *this)
{
  result = *this;
  if (result)
  {
    if ((*(this + 12) & 1) == 0)
    {
      result = CSStore2::getStringCacheEntry(result, *(this + 2));
      if (result)
      {
        if (*result)
        {
          v3 = *result - 1;
          if (*result == 1)
          {
            v4 = *this;
            v5 = *(*this + 272);
            if (!v5)
            {
              result = CSStore2::Store::getTable(v4, &cfstr_String_0.isa);
              if (!result)
              {
                return result;
              }

              v5 = result;
              v4 = *this;
            }

            result = CSStore2::Store::getUnit(v4, v5, *(this + 2));
            if (result)
            {
              v7 = result;
              v8 = *this;
              v12 = *(this + 2);
              StringCache = CSStore2::getStringCache(v8, v6);
              if (v12)
              {
                if (StringCache)
                {
                  v10 = CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>::Find(v8, StringCache, &v12);
                  if (v10)
                  {
                    *v10 = 0;
                  }
                }
              }

              v11 = *this;

              return CSStore2::Store::freeUnit(v11, v5, v7);
            }
          }

          else
          {

            return CSStore2::String::setRetainCount(this, v3, result);
          }
        }
      }
    }
  }

  return result;
}

id CSStore2::String::GetDebugDescriptionOfCache(CSStore2::String *this, const CSStore2::Store *a2)
{
  StringCache = CSStore2::getStringCache(this, a2);
  if (StringCache)
  {
    v4 = StringCache;
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (CSStore2::NameOfType<CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>>(void)::once != -1)
    {
      dispatch_once(&CSStore2::NameOfType<CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>>(void)::once, &__block_literal_global_405);
    }

    v6 = CSStore2::NameOfType<CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>>(void)::result;
    v7 = v6;
    v8 = *this;
    if (*this)
    {
      v9 = *(v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = 0xFFFFFFFFLL;
    v11 = v4 >= v9;
    v12 = v4 - v9;
    if (v11 && !HIDWORD(v12))
    {
      if ((v12 + 1) > *(*(v8 + 8) + 12) || v12 == -1)
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = v12;
      }
    }

    [v5 appendFormat:@"%@ @ 0x%llx", v6, v10];

    Statistics = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::GetStatistics(v4);
    [v5 appendFormat:@" { buckets = %llu, count = %llu }", HIDWORD(Statistics), Statistics];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B9D7CF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN8CSStore27HashMapIjNS_17_StringCacheEntryENS_16_StringFunctionsELy0EE14WriteBreakdownERKNS_5StoreEPKS3_hPh_block_invoke(uint64_t a1, unsigned int a2, size_t __len, int a4, int a5)
{
  if (a4)
  {
    v5 = 64;
  }

  else
  {
    v5 = -128;
  }

  return memset((*(a1 + 32) + a2), (v5 | a5 ^ 1) & 0xFFFFFFC1 | (2 * (*(a1 + 40) & 0x1F)), __len);
}

double CSStore2::Dictionary::_CopyCanonicalKey(CSStore2::Dictionary *this, CSStore2::Table **a2, unsigned int a3, char a4)
{
  *this = 0;
  *(this + 32) = 0;
  if (a4)
  {
    *v11 = bswap32(a3);
    v12 = 0;
    CSStore2::String::Create(v9, a2, v11, 4);
    if (v10)
    {
      v8 = v9[0];
      *(this + 1) = *&v9[1];
      result = *&v9[16];
      *(this + 1) = *&v9[16];
      *this = v8;
      *(this + 32) = 1;
    }
  }

  else
  {
    CSStore2::String::Get(v9, a2, a3);
    result = *v9;
    v6 = *&v9[16];
    *this = *v9;
    *(this + 1) = v6;
    v7 = v10;
    *(this + 32) = v10;
    if (v7 == 1)
    {

      CSStore2::String::retain(this);
    }
  }

  return result;
}

CSStore2 *CSStore2::Dictionary::_TakeOwnershipOfValue(CSStore2 *this, CSStore2::Store *a2, int a3)
{
  if (a3 == 1)
  {
    v7 = v3;
    v8 = v4;
    this = CSStore2::String::Get(v5, this, a2);
    if (v6 == 1)
    {
      return CSStore2::String::retain(v5);
    }
  }

  return this;
}

CSStore2 *CSStore2::Dictionary::_RelinquishOwnershipOfValue(CSStore2 *this, CSStore2::Store *a2, int a3)
{
  v4 = this;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      CSStore2::Array::Get(v6, this, a2);
      if (v7 == 1)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = ___ZN8CSStore210Dictionary27_RelinquishOwnershipOfValueERNS_5StoreEjh_block_invoke;
        v5[3] = &__block_descriptor_40_e17_v28__0I8r_I12_B20l;
        v5[4] = v4;
        CSStore2::Array::enumerateValues(v6, v5);
      }

      return CSStore2::Array::Dispose(v4, a2);
    }

    if (a3 == 4)
    {

      return CSStore2::Dictionary::Dispose(this, a2, 4u);
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return this;
      }

      return CSStore2::Array::Dispose(v4, a2);
    }

    this = CSStore2::String::Get(v6, this, a2);
    if (v8 == 1)
    {
      return CSStore2::String::release(v6);
    }
  }

  return this;
}

CSStore2 *___ZN8CSStore210Dictionary27_RelinquishOwnershipOfValueERNS_5StoreEjh_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = CSStore2::String::Get(v4, *(a1 + 32), *a3);
  if (v5 == 1)
  {
    return CSStore2::String::release(v4);
  }

  return result;
}

Unit *CSStore2::Array::Dispose(CSStore2::Array *this, CSStore2::Store *a2)
{
  v2 = a2;
  v4 = *(this + 33);
  if (v4 || (result = CSStore2::Store::getTable(this, &cfstr_Array.isa), (v4 = result) != 0))
  {
    result = CSStore2::Store::getUnit(this, v4, v2);
    if (result)
    {

      return CSStore2::Store::freeUnit(this, v4, result);
    }
  }

  return result;
}

Unit *CSStore2::Dictionary::Dispose(const CSStore2::Table **this, CSStore2::Store *a2)
{
  v2 = a2;
  CSStore2::Dictionary::Get(v6, this, a2);
  if (v7 == 1 && *(v6[1] + 1))
  {
    CSStore2::Dictionary::removeAllValues(v6);
  }

  v4 = this[35];
  if (v4 || (result = CSStore2::Store::getTable(this, &cfstr_Dictionary.isa), (v4 = result) != 0))
  {
    result = CSStore2::Store::getUnit(this, v4, v2);
    if (result)
    {
      return CSStore2::Store::freeUnit(this, v4, result);
    }
  }

  return result;
}

const CSStore2::Table *CSStore2::Dictionary::Get(CSStore2::Dictionary *this, CSStore2::Store *a2, unsigned int a3)
{
  *this = 0;
  *(this + 24) = 0;
  v6 = *(a2 + 35);
  if (v6 || (result = CSStore2::Store::getTable(a2, &cfstr_Dictionary.isa), (v6 = result) != 0))
  {
    result = CSStore2::Store::getUnit(a2, v6, a3);
    if (result)
    {
      *(this + 24) = 1;
      *this = a2;
      *(this + 1) = result + 8;
      *(this + 2) = 0;
      *(this + 4) = a3;
    }
  }

  return result;
}

uint64_t CSStore2::Dictionary::removeAllValues(CSStore2::Store **this)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN8CSStore210Dictionary15removeAllValuesEv_block_invoke;
  v9[3] = &__block_descriptor_40_e15_v24__0I8I12_B16l;
  v9[4] = this;
  CSStore2::Dictionary::enumerateKeysAndValues(this, 1, v9);
  v2 = *this;
  v3 = *(this[1] + 1);
  if (v3 != -1)
  {
    v4 = *(*v2 + 8);
    if (*(v4 + 12) > v3)
    {
      v5 = (v4 + v3);
      v6 = *v5;
      if (v6)
      {
        v7 = v5 + 1;
        do
        {
          *v7++ = 0xFFFFFFFF00000000;
          --v6;
        }

        while (v6);
      }
    }
  }

  return CSStore2::Store::collectGarbage(v2, 0);
}

CSStore2 *___ZN8CSStore210Dictionary15removeAllValuesEv_block_invoke(uint64_t a1, unsigned int a2, CSStore2::Store *a3)
{
  v4 = *(a1 + 32);
  CSStore2::String::Get(v8, *v4, a2);
  if (v9 == 1)
  {
    CSStore2::String::release(v8);
  }

  v5 = *v4;
  v6 = *(*(v4 + 8) + 1);

  return CSStore2::Dictionary::_RelinquishOwnershipOfValue(v5, a3, v6);
}

void CSStore2::Dictionary::enumerateKeysAndValues(CSStore2::Store **a1, char a2, void *a3)
{
  v5 = a3;
  k = v5;
  v7 = a1[1];
  v8 = *(v7 + 1);
  if (v8 != -1)
  {
    v44 = *a1;
    v9 = *(**a1 + 8);
    if (*(v9 + 12) > v8)
    {
      v10 = (v9 + v8);
      v11 = *v7;
      v45 = 0u;
      v46 = 0u;
      v47 = 1065353216;
      v12 = *v10;
      if (v12)
      {
        v13 = 0;
        v14 = v10 + 1;
        v15 = v11 ^ 1 | a2;
        v43 = v10;
        v41 = v5;
        v42 = v10 + 1;
        do
        {
          v16 = &v14[2 * v13];
          v17 = *v16;
          if (*v16 - 0x20000000 >= 0xE0000001)
          {
            v18 = v16[1];
            v19 = v18 + 8 * v17;
            if (!__CFADD__(v18, 8 * v17))
            {
              v20 = *(*v44 + 8);
              v21 = *(v20 + 12);
              if (v19 <= v21 && v21 > v18)
              {
                v23 = 0;
                v24 = v20 + v18;
                do
                {
                  v25 = (v24 + 8 * v23);
                  if (v25[1])
                  {
                    if (v15)
                    {
                      v26 = *v25;
                      if (*(&v45 + 1))
                      {
                        v27 = vcnt_s8(*(&v45 + 8));
                        v27.i16[0] = vaddlv_u8(v27);
                        if (v27.u32[0] > 1uLL)
                        {
                          v28 = *v25;
                          if (*(&v45 + 1) <= v26)
                          {
                            v28 = v26 % DWORD2(v45);
                          }
                        }

                        else
                        {
                          v28 = (DWORD2(v45) - 1) & v26;
                        }

                        v34 = *(v45 + 8 * v28);
                        if (v34)
                        {
                          for (i = *v34; i; i = *i)
                          {
                            v36 = i[1];
                            if (v36 == v26)
                            {
                              if (*(i + 4) == v26)
                              {
                                goto LABEL_57;
                              }
                            }

                            else
                            {
                              if (v27.u32[0] > 1uLL)
                              {
                                if (v36 >= *(&v45 + 1))
                                {
                                  v36 %= *(&v45 + 1);
                                }
                              }

                              else
                              {
                                v36 &= *(&v45 + 1) - 1;
                              }

                              if (v36 != v28)
                              {
                                break;
                              }
                            }
                          }
                        }
                      }

                      operator new();
                    }

                    CSStore2::String::Get(__dst, v44, *v25);
                    if (v52)
                    {
                      v48 = __dst[0];
                      v49 = __dst[1];
                      v50 = 1;
                      LODWORD(__dst[0]) = 0;
                      if (BYTE12(v48))
                      {
                        v29 = &v49;
                      }

                      else
                      {
                        v29 = v49;
                      }

                      if (DWORD2(v49) >= 4)
                      {
                        v30 = 4;
                      }

                      else
                      {
                        v30 = DWORD2(v49);
                      }

                      memcpy(__dst, v29, v30);
                      v31 = bswap32(__dst[0]);
                      if (*(&v45 + 1))
                      {
                        v32 = vcnt_s8(*(&v45 + 8));
                        v32.i16[0] = vaddlv_u8(v32);
                        if (v32.u32[0] > 1uLL)
                        {
                          v33 = v31;
                          if (*(&v45 + 1) <= v31)
                          {
                            v33 = v31 % DWORD2(v45);
                          }
                        }

                        else
                        {
                          v33 = (DWORD2(v45) - 1) & v31;
                        }

                        v37 = *(v45 + 8 * v33);
                        if (v37)
                        {
                          for (j = *v37; j; j = *j)
                          {
                            v39 = j[1];
                            if (v39 == v31)
                            {
                              if (*(j + 4) == v31)
                              {
                                goto LABEL_57;
                              }
                            }

                            else
                            {
                              if (v32.u32[0] > 1uLL)
                              {
                                if (v39 >= *(&v45 + 1))
                                {
                                  v39 %= *(&v45 + 1);
                                }
                              }

                              else
                              {
                                v39 &= *(&v45 + 1) - 1;
                              }

                              if (v39 != v33)
                              {
                                break;
                              }
                            }
                          }
                        }
                      }

                      operator new();
                    }

                    v50 = 0;
                  }

LABEL_57:
                  ++v23;
                }

                while (v23 < *v16);
                v14 = v42;
                v12 = *v43;
              }
            }
          }

          ++v13;
        }

        while (v13 < v12);
        v40 = v46;
        LOBYTE(__dst[0]) = 0;
        for (k = v41; v40; v40 = *v40)
        {
          (*(v41 + 2))(v41, *(v40 + 4), *(v40 + 5), __dst);
          if (__dst[0])
          {
            break;
          }
        }
      }

      std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v45);
    }
  }
}

void sub_1B9D7DA34(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(va);

  _Unwind_Resume(a1);
}

void *CSStore2::Array::getAllValues(void *this, uint64_t a2)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  v2 = **(a2 + 8) & 0x1FFFFFFF;
  v3 = *(a2 + 16);
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    std::allocator<unsigned int>::allocate_at_least[abi:nn200100](v4);
  }

  return this;
}

void sub_1B9D7DBE8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

int *CSStore2::HashMap<unsigned int,unsigned int,CSStore2::Dictionary::_Functions,0ull>::Create(int **a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v7 = *(a2 + 24) + a4;
  if (v7 >= 0x2000)
  {
    v8 = 0x2000;
  }

  else
  {
    v8 = *(a2 + 24) + a4;
  }

  if (v8 <= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = v8;
  }

  v10 = (8 * v9 + 8 * v7) | 4;
  result = malloc_type_malloc(v10, 0x100004052888210uLL);
  v12 = MEMORY[0x1E69E9B38];
  *a1 = result;
  a1[1] = v12;
  if (result)
  {
    v13 = result;
    bzero(result, v10);
    *v13 = v9;
    operator new();
  }

  if (a5)
  {
    *a5 = v10;
  }

  return result;
}

void sub_1B9D7DE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = 0;
  free(v14);
  _Unwind_Resume(a1);
}

uint64_t CSStore2::Dictionary::getCount(CSStore2::Dictionary *this, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*this + 8);
  v4 = *(v3 + 12);
  if (v4 <= a2)
  {
    return 0;
  }

  v5 = (v3 + a2);
  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

  result = 0;
  v8 = 0;
  v9 = v5 + 1;
  v10 = v3 + 4;
  do
  {
    v11 = &v9[2 * v8];
    v12 = *v11;
    if (*v11 - 0x20000000 >= 0xE0000001)
    {
      v13 = v11[1];
      if (!__CFADD__(v13, 8 * v12))
      {
        v14 = v13 + 8 * v12 > *(*(v2 + 8) + 12) || v13 == -1;
        if (!v14 && v4 > v13)
        {
          v16 = 0;
          v17 = (v10 + v13);
          LODWORD(v18) = v12;
          do
          {
            v19 = *v17;
            v17 += 2;
            v20 = v19 == 0;
            if (v19)
            {
              result = (result + 1);
            }

            else
            {
              result = result;
            }

            if (v20)
            {
              v18 = v18;
            }

            else
            {
              v18 = v12;
            }

            ++v16;
          }

          while (v16 < v18);
        }
      }
    }

    ++v8;
  }

  while (v8 != v6);
  return result;
}

id CSStore2::Dictionary::getDescriptionOfContents(CSStore2::Dictionary *this, unint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (v4)
  {
    v5 = *(*(this + 1) + 1);
    if (a2 >= 7)
    {
      v6 = 7;
    }

    else
    {
      v6 = a2;
    }

    memset_pattern16(__b, asc_1B9D88CE0, 2 * v6 + 2);
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:__b length:v6 + 1];
    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"{"];
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@}", v7];
    v23 = [v8 initWithString:v9];

    v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    v10 = objc_alloc(MEMORY[0x1E696AD40]);
    v11 = [@"\t" stringByAppendingString:v7];
    v21 = [v10 initWithString:v11];

    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:{@", "}];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___ZNK8CSStore210Dictionary24getDescriptionOfContentsEm_block_invoke;
    v25[3] = &unk_1E7ED38B0;
    v31 = &v35;
    v32 = this;
    v13 = v4;
    v26 = v13;
    v14 = v24;
    v27 = v14;
    v15 = v12;
    v34 = v5;
    v28 = v15;
    v33 = v6;
    v16 = v22;
    v29 = v16;
    v17 = v21;
    v30 = v17;
    CSStore2::Dictionary::enumerateKeysAndValues(this, 1, v25);
    if (*(v36 + 6))
    {
      [v13 appendAttributedString:v23];
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"{ }"];
      [v13 appendAttributedString:v19];
    }

    v18 = [v13 copy];

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_1B9D7E22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23)
{
  _Block_object_dispose((v27 - 136), 8);

  _Unwind_Resume(a1);
}

void ___ZNK8CSStore210Dictionary24getDescriptionOfContentsEm_block_invoke(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 80);
  v7 = objc_autoreleasePoolPush();
  v8 = 48;
  if (!*(*(*(a1 + 72) + 8) + 24))
  {
    v8 = 40;
  }

  [*(a1 + 32) appendAttributedString:*(a1 + v8)];
  CSStore2::String::Get(v38, *v6, a2);
  if (v39 == 1)
  {
    v9 = CSStore2::String::getNSStringNoCopy(v38);
    v10 = *(a1 + 96);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        CSStore2::Array::Get(v35, *v6, a3);
        if (v36 == 1)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = ___ZNK8CSStore210Dictionary24getDescriptionOfContentsEm_block_invoke_2;
          v32[3] = &unk_1E7ED3860;
          v34 = v6;
          v20 = v19;
          v33 = v20;
          CSStore2::Array::enumerateValues(v35, v32);
          v21 = objc_alloc(MEMORY[0x1E696AEC0]);
          v22 = [v20 componentsJoinedByString:{@", "}];
          v15 = [v21 initWithFormat:@"[ %@ ]", v22];

          goto LABEL_18;
        }
      }

      else
      {
        if (v10 != 4)
        {
          goto LABEL_19;
        }

        CSStore2::Dictionary::Get(v35, *v6, a3);
        if (v36 == 1)
        {
          v16 = CSStore2::Dictionary::getDescriptionOfContents(v35, *(a1 + 88) + 1);
          v15 = [v16 string];

          goto LABEL_18;
        }
      }
    }

    else if (v10 == 1)
    {
      CSStore2::String::Get(v35, *v6, a3);
      if (v37 == 1)
      {
        v17 = objc_alloc(MEMORY[0x1E696AEC0]);
        v18 = CSStore2::String::getNSStringNoCopy(v35);
        v15 = [v17 initWithFormat:@"%@", v18];

        goto LABEL_18;
      }
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_19;
      }

      CSStore2::Array::Get(v35, *v6, a3);
      if (v36 == 1)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = ___ZNK8CSStore210Dictionary24getDescriptionOfContentsEm_block_invoke_3;
        v30[3] = &unk_1E7ED3888;
        v12 = v11;
        v31 = v12;
        CSStore2::Array::enumerateValues(v35, v30);
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v14 = [v12 componentsJoinedByString:{@", "}];
        v15 = [v13 initWithFormat:@"[ %@ ]", v14];

        goto LABEL_18;
      }
    }

    v15 = 0;
LABEL_18:
    if (v15)
    {
LABEL_20:
      [*(a1 + 32) appendAttributedString:*(a1 + 56)];
      [*(a1 + 32) appendAttributedString:*(a1 + 64)];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v9];

      v24 = objc_alloc(MEMORY[0x1E696AAB0]);
      v40 = @"_CSVFWeight";
      v41[0] = &unk_1F37D8058;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      v26 = [v24 initWithString:v23 attributes:v25];

      [*(a1 + 32) appendAttributedString:v26];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@":%C%@", 160, v15];

      v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v27];
      [*(a1 + 32) appendAttributedString:v28];

      goto LABEL_21;
    }

LABEL_19:
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%llx", a3];
    goto LABEL_20;
  }

LABEL_21:
  objc_autoreleasePoolPop(v7);
  ++*(*(*(a1 + 72) + 8) + 24);
  v29 = *MEMORY[0x1E69E9840];
}

void ___ZNK8CSStore210Dictionary24getDescriptionOfContentsEm_block_invoke_2(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  CSStore2::String::Get(v8, **(a1 + 40), *a3);
  if (v9 == 1)
  {
    v4 = *(a1 + 32);
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = CSStore2::String::getNSStringNoCopy(v8);
    v7 = [v5 initWithFormat:@"%@", v6];
    [v4 addObject:v7];
  }
}

void ___ZNK8CSStore210Dictionary24getDescriptionOfContentsEm_block_invoke_3(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a1 + 32);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%llx", *a3];
  [v3 addObject:?];
}

void *___ZN8CSStore27HashMapIjjNS_10Dictionary10_FunctionsELy0EE14WriteBreakdownERKNS_5StoreEPKS3_hPh_block_invoke(uint64_t a1, unsigned int a2, size_t __len, int a4, int a5)
{
  if (a4)
  {
    v5 = 64;
  }

  else
  {
    v5 = -128;
  }

  return memset((*(a1 + 32) + a2), (v5 | a5 ^ 1) & 0xFFFFFFC1 | (2 * (*(a1 + 40) & 0x1F)), __len);
}

_DWORD *CSStore2::HashMap<unsigned int,unsigned int,CSStore2::Dictionary::_Functions,0ull>::Find(CSStore2 *a1, int *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    goto LABEL_19;
  }

  if (*a2 > 0x2000)
  {
    v16 = CSStore2::GetLog(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = *a2;
      v26[0] = 67109376;
      v26[1] = v25;
      v27 = 1024;
      v28 = 0x2000;
      _os_log_error_impl(&dword_1B9D5B000, v16, OS_LOG_TYPE_ERROR, "Impossible bucket count %u when %u is the maximum.", v26, 0xEu);
    }

    goto LABEL_19;
  }

  v5 = &a2[2 * (a3 % *a2)];
  v8 = v5[1];
  v6 = v5 + 1;
  v7 = v8;
  if (!v8)
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v9 = v6[1];
    if (v9 != -1)
    {
      v10 = *(a1 + 1);
      if (*(v10 + 12) > v9 && v10 != 0)
      {
        v12 = (v10 + v9);
        v14 = *v12;
        v13 = v12 + 1;
        if (v14 == a3)
        {
          result = v13;
        }

        else
        {
          result = 0;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  v18 = v6[1];
  if (v18 == -1)
  {
    v22 = 0;
  }

  else
  {
    v19 = *(a1 + 1);
    v20 = *(v19 + 12);
    v21 = (v19 + v18);
    if (v20 <= v18)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }
  }

  v23 = 8 * v7;
  v24 = &v22[2 * v7];
  while (*v22 != a3)
  {
    v22 += 2;
    v23 -= 8;
    if (!v23)
    {
      v22 = v24;
      break;
    }
  }

  if (v22 == v24)
  {
    result = 0;
  }

  else
  {
    result = v22 + 1;
  }

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

CSStore2 *_CSStringRetain(uint64_t a1, unsigned int a2)
{
  if (performMutatingAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (***(v4 + 8))(*(v4 + 8));
    }
  }

  result = CSStore2::String::Get(v6, (a1 + 8), a2);
  if (v7 == 1)
  {
    return CSStore2::String::retain(v6);
  }

  return result;
}

CSStore2 *_CSStringRelease(uint64_t a1, unsigned int a2)
{
  if (performMutatingAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (***(v4 + 8))(*(v4 + 8));
    }
  }

  result = CSStore2::String::Get(v6, (a1 + 8), a2);
  if (v7 == 1)
  {
    return CSStore2::String::release(v6);
  }

  return result;
}

uint64_t _CSStringIsValid(uint64_t a1, unsigned int a2)
{
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(v6, (a1 + 8), a2);
  return v7;
}

CSStore2 *_CSStringMakeConst(uint64_t a1, unsigned int a2)
{
  if (performMutatingAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (***(v4 + 8))(*(v4 + 8));
    }
  }

  result = CSStore2::String::Get(v6, (a1 + 8), a2);
  if (v7 == 1)
  {
    return CSStore2::String::setRetainCount(v6, 0, 0);
  }

  return result;
}

uint64_t _CSStringCopyLowercase(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (performMutatingAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (***(v4 + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(v14, (a1 + 8), a2);
  if (v15 != 1)
  {
    goto LABEL_7;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = CSStore2::String::getNSStringNoCopy(v14);
  v7 = [v6 lowercaseString];

  UTF8BufferFromNSString = CSStore2::String::GetUTF8BufferFromNSString(v7, v16);
  v9 = strlen(UTF8BufferFromNSString);
  CSStore2::String::Create(v12, *&v14[0], UTF8BufferFromNSString, v9);

  objc_autoreleasePoolPop(v5);
  v15 = v13;
  v14[0] = v12[0];
  v14[1] = v12[1];
  if (v13)
  {
    result = DWORD2(v14[0]);
  }

  else
  {
LABEL_7:
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CSStringGetLowercase(uint64_t a1, unsigned int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(v19, (a1 + 8), a2);
  if (v20)
  {
    v14[0] = v19[0];
    v14[1] = v19[1];
    v15 = 1;
    v5 = objc_autoreleasePoolPush();
    v6 = CSStore2::String::getNSStringNoCopy(v14);
    v7 = [v6 lowercaseString];

    UTF8BufferFromNSString = CSStore2::String::GetUTF8BufferFromNSString(v7, v19);
    v9 = strlen(UTF8BufferFromNSString);
    CSStore2::String::Find(v16, *&v14[0], UTF8BufferFromNSString, v9);
    v10 = v18;
    v11 = v17;

    objc_autoreleasePoolPop(v5);
    if (v10)
    {
      result = v11;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CSStringCopyUppercase(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (performMutatingAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (***(v4 + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(v14, (a1 + 8), a2);
  if (v15 != 1)
  {
    goto LABEL_7;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = CSStore2::String::getNSStringNoCopy(v14);
  v7 = [v6 uppercaseString];

  UTF8BufferFromNSString = CSStore2::String::GetUTF8BufferFromNSString(v7, v16);
  v9 = strlen(UTF8BufferFromNSString);
  CSStore2::String::Create(v12, *&v14[0], UTF8BufferFromNSString, v9);

  objc_autoreleasePoolPop(v5);
  v15 = v13;
  v14[0] = v12[0];
  v14[1] = v12[1];
  if (v13)
  {
    result = DWORD2(v14[0]);
  }

  else
  {
LABEL_7:
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CSStringGetUppercase(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(v15, (a1 + 8), a2);
  if (v16)
  {
    v12[0] = v15[0];
    v12[1] = v15[1];
    v13 = 1;
    v5 = objc_autoreleasePoolPush();
    v6 = CSStore2::String::getNSStringNoCopy(v12);
    v7 = [v6 uppercaseString];

    UTF8BufferFromNSString = CSStore2::String::GetUTF8BufferFromNSString(v7, v15);
    v9 = strlen(UTF8BufferFromNSString);
    CSStore2::String::Find(v14, *&v12[0], UTF8BufferFromNSString, v9);
    LOBYTE(UTF8BufferFromNSString) = v14[32];

    objc_autoreleasePoolPop(v5);
    if (UTF8BufferFromNSString)
    {
      result = DWORD2(v12[0]);
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CSGetConstStringForCharacters(uint64_t a1, CSStore2::_StringFunctions *a2, const char *a3)
{
  if (performMutatingAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (***(v6 + 8))(*(v6 + 8));
    }
  }

  CSStore2::String::Create(v8, (a1 + 8), a2, a3);
  if (v10 != 1)
  {
    return 0;
  }

  CSStore2::String::setRetainCount(v8, 0, 0);
  return v9;
}

uint64_t _CSGetStringForCFString(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  UTF8BufferFromNSString = CSStore2::String::GetUTF8BufferFromNSString(a2, v7);
  v4 = strlen(UTF8BufferFromNSString);
  result = _CSGetStringForCharacters(a1, UTF8BufferFromNSString, v4);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CSCopyStringForCharacters(uint64_t a1, CSStore2::_StringFunctions *a2, const char *a3)
{
  if (performMutatingAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (***(v6 + 8))(*(v6 + 8));
    }
  }

  CSStore2::String::Create(v8, (a1 + 8), a2, a3);
  if (v10)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _CSStringGetUnitFromID(uint64_t a1, unsigned int a2)
{
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(v6, (a1 + 8), a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    return 0;
  }

  return v6[2];
}

BOOL _CSStringIsConst(uint64_t a1, unsigned int a2)
{
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(&v7, (a1 + 8), a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      StringCacheEntry = CSStore2::getStringCacheEntry(v7, v8);
      if (StringCacheEntry)
      {
        return *StringCacheEntry == 0;
      }
    }
  }

  return 1;
}

uint64_t _CSStringIsPacked(uint64_t a1, unsigned int a2)
{
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(v6, (a1 + 8), a2);
  if (v8)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *_CSStringGetRetainCount(uint64_t a1, unsigned int a2)
{
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(&v6, (a1 + 8), a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  result = v6;
  if (!v6)
  {
    return result;
  }

  if (v8)
  {
    return 0;
  }

  result = CSStore2::getStringCacheEntry(v6, v7);
  if (result)
  {
    return *result;
  }

  return result;
}

void CSStore2::Writer::logFunctionCall(CSStore2 *a1, CSStore2 *a2, CSStore2 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (CSStore2::getLog(void)::once != -1)
  {
    dispatch_once(&CSStore2::getLog(void)::once, &__block_literal_global_520);
  }

  v12 = CSStore2::getLog(void)::result;
  os_unfair_lock_lock(&CSStore2::logLock);
  v14 = CSStore2::getFunctionName(a1, v13);
  fprintf(v12, "%s\n", [v14 UTF8String]);
  v16 = CSStore2::getFunctionName(a2, v15);
  fprintf(v12, "\t%s\n", [v16 UTF8String]);
  v18 = CSStore2::getFunctionName(a3, v17);
  fprintf(v12, "\t\t%s(", [v18 UTF8String]);
  v19 = 0;
  do
  {
    if (v19)
    {
      fputs(", ", v12);
    }

    v20 = a4;
    if (*(a4 + 23) < 0)
    {
      v20 = *a4;
    }

    fputs(v20, v12);
    ++v19;
    a4 += 24;
  }

  while (a5 != v19);
  fputs(")\n", v12);
  if (*(a6 + 23) >= 0)
  {
    v21 = a6;
  }

  else
  {
    v21 = *a6;
  }

  fprintf(v12, "\t\t\t%s\n", v21);
  fflush(v12);

  os_unfair_lock_unlock(&CSStore2::logLock);
}

id CSStore2::getFunctionName(CSStore2 *this, const void *a2)
{
  if (CSStore2::getFunctionName(void const*)::once != -1)
  {
    dispatch_once(&CSStore2::getFunctionName(void const*)::once, &__block_literal_global_13);
  }

  if (CSStore2::getFunctionName(void const*)::symbolicate == 1)
  {
    v3 = CSStore2::NameOfSymbol(this, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ___ZN8CSStore2L15getFunctionNameEPKv_block_invoke()
{
  CSStore2::getFunctionName(void const*)::symbolicate = 1;
  v0 = getenv("CS_SYMBOLICATE_IO_CALLERS");
  if (v0)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
    CSStore2::getFunctionName(void const*)::symbolicate = [v1 BOOLValue];
  }
}

void ___ZN8CSStore2L6getLogEv_block_invoke_530()
{
  if (!CSStore2::getLog(void)::result)
  {
    v0 = NSTemporaryDirectory();
    v1 = MEMORY[0x1E696AEC0];
    v2 = getpid();
    v3 = [v1 stringWithFormat:@"csstore-writer-%llu-%llu.log", v2, _CFGetEUID()];
    v4 = [v0 stringByAppendingPathComponent:v3];
    v5 = [v4 fileSystemRepresentation];

    CSStore2::getLog(void)::result = fopen(v5, "wb+");
  }
}

void sub_1B9D7FB98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void CSStore2::CSStoreSharedReadingAccessContext::~CSStoreSharedReadingAccessContext(CSStore2::CSStoreSharedReadingAccessContext *this)
{
  CSStore2::CSStoreSharedReadingAccessContext::~CSStoreSharedReadingAccessContext(this);

  JUMPOUT(0x1BFAE5CB0);
}

{
  *this = &unk_1F37D5378;
  if (*(this + 5))
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"virtual CSStore2::CSStoreSharedReadingAccessContext::~CSStoreSharedReadingAccessContext()"];
    [v2 handleFailureInFunction:v3 file:@"CSStoreAccessContextPrivInternal.h" lineNumber:228 description:@"Destroying shared reading access context with active readers!"];
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(this + 16);
}

void sub_1B9D7FEB8(_Unwind_Exception *a1)
{
  v4 = v3;

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v1 + 16);
  _Unwind_Resume(a1);
}

void CSStore2::CSStoreSharedReadingAccessContext::accessForWriting()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"virtual void CSStore2::CSStoreSharedReadingAccessContext::accessForWriting(void (^ _Nonnull __strong)())"];
  [v1 handleFailureInFunction:v0 file:@"CSStoreAccessContextPrivInternal.h" lineNumber:218 description:@"context cannot be held for writing"];
}

void CSStore2::CSStoreSharedReadingAccessContext::assertHeldForWriting(CSStore2::CSStoreSharedReadingAccessContext *this)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"virtual void CSStore2::CSStoreSharedReadingAccessContext::assertHeldForWriting() const"];
  [v2 handleFailureInFunction:v1 file:@"CSStoreAccessContextPrivInternal.h" lineNumber:198 description:@"context cannot be held for writing"];
}

void std::__shared_ptr_emplace<CSStore2::CSStoreSharedReadingAccessContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F37D5340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAE5CB0);
}

void CSStore2::CSStoreQueueAccessContext::~CSStoreQueueAccessContext(id *this)
{

  JUMPOUT(0x1BFAE5CB0);
}

{
}

void std::__shared_ptr_emplace<CSStore2::CSStoreQueueAccessContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F37D51A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAE5CB0);
}

void CSStore2::CSStoreDebugQueueAccessContext::~CSStoreDebugQueueAccessContext(id *this)
{

  JUMPOUT(0x1BFAE5CB0);
}

{
}

void std::__shared_ptr_emplace<CSStore2::CSStoreDebugQueueAccessContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F37D5230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAE5CB0);
}

void CSStore2::CSStoreUnfairLockAccessContext::accessForWriting(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((*(a1 + 16) & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"virtual void CSStore2::CSStoreUnfairLockAccessContext::accessForWriting(void (^ _Nonnull __strong)())"];
    [v3 handleFailureInFunction:v4 file:@"CSStoreAccessContextPrivInternal.h" lineNumber:161 description:@"context cannot be held for writing"];
  }

  os_unfair_lock_assert_not_owner(*(a1 + 8));
  os_unfair_lock_lock(*(a1 + 8));
  v5[2]();
  os_unfair_lock_unlock(*(a1 + 8));
}

void CSStore2::CSStoreUnfairLockAccessContext::accessForReading(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_assert_not_owner(*(a1 + 8));
  os_unfair_lock_lock(*(a1 + 8));
  v3[2]();
  os_unfair_lock_unlock(*(a1 + 8));
}

void CSStore2::CSStoreUnfairLockAccessContext::assertHeldForWriting(CSStore2::CSStoreUnfairLockAccessContext *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"virtual void CSStore2::CSStoreUnfairLockAccessContext::assertHeldForWriting() const"];
    [v3 handleFailureInFunction:v4 file:@"CSStoreAccessContextPrivInternal.h" lineNumber:148 description:@"context cannot be held for writing"];
  }

  v2 = *(this + 1);

  os_unfair_lock_assert_owner(v2);
}

void std::__shared_ptr_emplace<CSStore2::CSStoreUnfairLockAccessContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F37D52B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAE5CB0);
}

_CSStoreAccessContext *_CSStoreAccessContextCreateWithQueue(void *a1)
{
  v1 = a1;
  v2 = [_CSStoreAccessContext alloc];
  v3 = v1;
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = _CSStoreAccessContext;
    v2 = objc_msgSendSuper2(&v5, sel_init);
    if (v2)
    {
      operator new();
    }
  }

  return v2;
}

_CSStoreAccessContext *_CSStoreAccessContextCreateWithQueueAndAssertionFunctions(void *a1)
{
  v1 = a1;
  v2 = [_CSStoreAccessContext alloc];
  v3 = v1;
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = _CSStoreAccessContext;
    v2 = objc_msgSendSuper2(&v5, sel_init);
    if (v2)
    {
      operator new();
    }
  }

  return v2;
}

id _CSStoreAccessContextCreateWithLock()
{
  v0 = [_CSStoreAccessContext alloc];
  if (!v0)
  {
    return 0;
  }

  v3.receiver = v0;
  v3.super_class = _CSStoreAccessContext;
  v1 = objc_msgSendSuper2(&v3, sel_init);
  if (v1)
  {
    operator new();
  }

  return v1;
}

uint64_t _CSStoreAccessContextCreateSharedReadingContext()
{
  v0 = [_CSStoreAccessContext alloc];

  return [(_CSStoreAccessContext *)v0 initForSharedReading];
}

void _CSStoreAccessContextAccessForWrite(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___CSStoreAccessContextAccessForWrite_block_invoke;
  v7[3] = &unk_1E7ED38F8;
  v8 = v3;
  v9 = a1;
  v5 = *(*v4 + 24);
  v6 = v3;
  v5(v4, v7);
}

uint64_t CSMapAddMapTable(__CSStore *a1, void *a2, int a3)
{
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v5 = (a3 + 28);
  v6 = malloc_type_malloc(v5, 0x5F055F55uLL);
  bzero(v6, v5);
  v7 = objc_autoreleasePoolPush();
  v18 = 0;
  v8 = _CSStoreAddTable(a1, a2, v5, &v18);
  if (v8)
  {

    objc_autoreleasePoolPop(v7);
    v9 = v8;
    goto LABEL_3;
  }

  v15 = [v18 domain];
  v16 = [v15 isEqual:*MEMORY[0x1E696A768]];

  if ((v16 & 1) == 0)
  {

    objc_autoreleasePoolPop(v7);
    v14 = 4294957803;
LABEL_12:
    if (!v6)
    {
      return v14;
    }

    goto LABEL_13;
  }

  v14 = [v18 code];

  objc_autoreleasePoolPop(v7);
  if (v14)
  {
    goto LABEL_12;
  }

  v9 = 0;
LABEL_3:
  v6[2] = 511;
  v10 = CSStoreAllocUnit(a1, v9, 4088);
  Unit = CSStoreGetUnit(a1, v9, v10, 0);
  v6[1] = v10;
  if (!Unit)
  {
    v14 = 4294957803;
    goto LABEL_17;
  }

  *v6 = 0;
  v12 = v6[2];
  v6[3] = v12;
  v6[4] = v12 >> 1;
  *(v6 + 5) = 0xDDDDDDD2EEEEEEE1;
  v13 = _CSMapWriteToHeader(a1, v8, 0, v5, v6);
  if (v13 || (LODWORD(v19[0]) = v8, *(&v20 + 1) = v6, v13 = _CSMapSetBucketRange(a1, v19, 0, 0, v6[2], v6[5]), v13))
  {
    v14 = v13;
    goto LABEL_17;
  }

  v14 = _CSMapSetBucketRange(a1, v19, v6[2], 0, v6[2], 233893374);
  if (!v14)
  {
LABEL_13:
    free(v6);
    return v14;
  }

LABEL_17:
  free(v6);
  if (v8)
  {
    _CSStoreRemoveTable(a1, v8);
  }

  return v14;
}

uint64_t _CSMapWriteToHeader(__CSStore *a1, unsigned int a2, unsigned int a3, const void *a4, const void *a5)
{
  v14 = 0;
  if (a1)
  {
    v9 = -37516;
  }

  else
  {
    v9 = 0;
  }

  if (_CSStoreWriteToUnit(a1, v9, a2, a3, a4, a5, &v14))
  {
    v10 = 0;
  }

  else
  {
    v11 = [v14 domain];
    v12 = [v11 isEqual:*MEMORY[0x1E696A768]];

    if (v12)
    {
      v10 = [v14 code];
    }

    else
    {
      v10 = 4294962336;
    }
  }

  return v10;
}

uint64_t _CSMapSetBucketRange(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, int a6)
{
  v33 = a6;
  v6 = *(*(a2 + 72) + 8);
  if (v6 < a4)
  {
    return 4294957804;
  }

  if (a5 + a4 > v6)
  {
    return 4294957799;
  }

  if (!a5)
  {
    return 4294957804;
  }

  if (a5 == 1)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(*(a2 + 72) + 4);
    v32 = 0;
    if (_CSStoreWriteToUnit(a1, *a2, v14, 4 * (a4 + a3), 4, &v33, &v32))
    {
      v7 = 0;
    }

    else
    {
      v27 = [v32 domain];
      v28 = [v27 isEqual:*MEMORY[0x1E696A768]];

      if (v28)
      {
        v7 = [v32 code];
      }

      else
      {
        v7 = 4294962336;
      }
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v16 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
    if (v16)
    {
      v17 = v16;
      v18 = (a5 + 3) & 0x1FFFFFFFCLL;
      v19 = vdupq_n_s64(a5 - 1);
      v20 = xmmword_1B9D88CA0;
      v21 = xmmword_1B9D88CB0;
      v22 = v16 + 2;
      v23 = vdupq_n_s64(4uLL);
      do
      {
        v24 = vmovn_s64(vcgeq_u64(v19, v21));
        if (vuzp1_s16(v24, *v19.i8).u8[0])
        {
          *(v22 - 2) = a6;
        }

        if (vuzp1_s16(v24, *&v19).i8[2])
        {
          *(v22 - 1) = a6;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v20))).i32[1])
        {
          *v22 = a6;
          v22[1] = a6;
        }

        v20 = vaddq_s64(v20, v23);
        v21 = vaddq_s64(v21, v23);
        v22 += 4;
        v18 -= 4;
      }

      while (v18);
      v25 = objc_autoreleasePoolPush();
      v26 = *(*(a2 + 72) + 4);
      v32 = 0;
      if (_CSStoreWriteToUnit(a1, *a2, v26, 4 * (a4 + a3), (4 * a5), v17, &v32))
      {
        v7 = 0;
      }

      else
      {
        v29 = [v32 domain];
        v30 = [v29 isEqual:*MEMORY[0x1E696A768]];

        if (v30)
        {
          v7 = [v32 code];
        }

        else
        {
          v7 = 4294962336;
        }
      }

      objc_autoreleasePoolPop(v25);
      free(v17);
    }

    else
    {
      return 4294967255;
    }
  }

  return v7;
}

char *CSMapGetHeader(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v9 = 0;
  Header = CSStoreGetHeader(a1, *a2, &v9);
  if (Header)
  {
    v5 = v9 > 0x1C;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (a3)
  {
    v7 = v9 - 28;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
  }

  if (v6)
  {
    return Header + 28;
  }

  else
  {
    return 0;
  }
}

uint64_t CSMapGetKeyAndValueForKeyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, _DWORD *a7)
{
  result = CSMapSync(a1, a2);
  if (!result)
  {
    v24 = a6;
    v15 = a7;
    v16 = *(a2 + 72);
    v17 = v16[2];
    v18 = a5 % v17;
    v19 = v16[5];
    v20 = v16[6];
    i = v18;
    while (1)
    {
      v22 = *(*(a2 + 80) + 4 * i);
      if (v22 == v19)
      {
        return 4294957797;
      }

      if (v22 != v20 && (*(a2 + 32))(a1, a2, v22, a3, a4))
      {
        break;
      }

      if (++i >= v17)
      {
        if (v18)
        {
          for (i = 0; i < v18; ++i)
          {
            v23 = *(*(a2 + 80) + 4 * i);
            if (v23 == v19)
            {
              break;
            }

            if (v23 != v20 && (*(a2 + 32))(a1, a2, v23, a3, a4))
            {
              goto LABEL_15;
            }
          }
        }

        return 4294957797;
      }
    }

LABEL_15:
    if (v24)
    {
      *v24 = *(*(a2 + 80) + 4 * i);
    }

    result = 0;
    if (v15)
    {
      *v15 = *(*(a2 + 88) + 4 * i);
    }
  }

  return result;
}

uint64_t CSMapSetValue(__CSStore *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CSMapSync(a1, a2);
  if (result)
  {
    return result;
  }

  v49 = 0;
  if (*(*(a2 + 72) + 12) == *(*(a2 + 72) + 16) && *(a2 + 80) && *(a2 + 88))
  {
    LODWORD(__n) = 0;
    Header = CSStoreGetHeader(a1, *a2, &__n);
    v10 = malloc_type_calloc(1uLL, (__n + 1), 0xB641E4DEuLL);
    memcpy(v10, Header, __n);
    v11 = v10[2];
    v12 = malloc_type_calloc((8 * v11) | 1u, 1uLL, 0x100004052888210uLL);
    if (v12)
    {
      v13 = v12;
      memcpy(v12, *(a2 + 80), (8 * v11));
      CSStoreFreeUnit(a1, *a2, v10[1]);
      v14 = 2 * v11 - 1;
      v10[2] = v14;
      v15 = CSStoreAllocUnit(a1, *a2, 8 * v14);
      Unit = CSStoreGetUnit(a1, *a2, v15, 0);
      *(a2 + 80) = Unit;
      v10[1] = v15;
      *(a2 + 88) = &Unit[4 * v10[2]];
      *(a2 + 72) = CSStoreGetHeader(a1, *a2, 0);
      *(a2 + 68) = CSStoreGetGeneration(a1);
      v17 = v10[2];
      v10[3] = v17;
      v10[4] = v17 >> 1;
      if (_CSMapWriteToHeader(a1, *a2, 0, __n, v10))
      {
        goto LABEL_18;
      }

      if (_CSMapSetBucketRange(a1, a2, 0, 0, v10[2], v10[5]))
      {
        goto LABEL_18;
      }

      v18 = _CSMapSetBucketRange(a1, a2, *(*(a2 + 72) + 8), 0, v10[2], 233893374);
      if (!v11 || v18)
      {
        goto LABEL_18;
      }

      v19 = 0;
      v20 = 4 * v11;
      v21 = &v13[4 * v11];
      do
      {
        v22 = *(a2 + 72);
        v23 = *&v13[v19];
        if (*(v22 + 20) != v23 && *(v22 + 24) != v23)
        {
          v51 = 0;
          v50 = 0;
          _CSMapFindBucketForKey(a1, a2, v23, &v51, &v50 + 1);
          if (_CSMapSetBucketRange(a1, a2, 0, HIDWORD(v50), 1u, *&v13[v19]))
          {
            break;
          }

          if (_CSMapSetBucketRange(a1, a2, *(*(a2 + 72) + 8), HIDWORD(v50), 1u, *&v21[v19]))
          {
            break;
          }

          v24 = v10[3] - 1;
          v10[3] = v24;
          LODWORD(v50) = v24;
          if (_CSMapWriteToHeader(a1, *a2, 0xCu, 4, &v50))
          {
            break;
          }
        }

        v19 += 4;
      }

      while (v20 != v19);
      if (v10)
      {
LABEL_18:
        free(v10);
      }
    }

    else
    {
      v13 = v10;
    }

    free(v13);
  }

  v51 = 0;
  _CSMapFindBucketForKey(a1, a2, a3, &v51, &v49 + 1);
  if (v51 != -1)
  {
    v25 = *(*(a2 + 88) + 4 * v51);
    if (v25 == a4)
    {
      return 0;
    }

    result = _CSMapSetBucketRange(a1, a2, *(*(a2 + 72) + 8), v51, 1u, a4);
    if (result)
    {
      return result;
    }

    v26 = *(a2 + 40);
    if (v26)
    {
      v26(a1, a2, a4);
    }

    v27 = *(a2 + 48);
    if (!v27)
    {
      return 0;
    }

    v28 = a1;
    v29 = a2;
    v30 = v25;
    goto LABEL_64;
  }

  v31 = *(a2 + 72);
  if (*(v31 + 20) == a3)
  {
    v32 = *(v31 + 8);
    v33 = a3 + 2;
    LODWORD(__n) = a3 + 2;
    if (v32)
    {
      v34 = *(a2 + 80);
LABEL_30:
      v35 = v32;
      v36 = v34;
      do
      {
        v37 = *v36++;
        if (v37 == v33)
        {
          v33 += 2;
          LODWORD(__n) = v33;
          goto LABEL_30;
        }

        --v35;
      }

      while (v35);
      result = _CSMapWriteToHeader(a1, *a2, 0x14u, 4, &__n);
      if (!result)
      {
        v38 = 0;
        while (1)
        {
          if (*(*(a2 + 80) + 4 * v38) == a3)
          {
            result = _CSMapSetBucketRange(a1, a2, 0, v38, 1u, __n);
            if (result)
            {
              break;
            }
          }

          if (v32 == ++v38)
          {
            goto LABEL_42;
          }
        }
      }

      return result;
    }

    result = _CSMapWriteToHeader(a1, *a2, 0x14u, 4, &__n);
    if (result)
    {
      return result;
    }
  }

LABEL_42:
  v39 = *(a2 + 72);
  if (*(v39 + 24) == a3)
  {
    v40 = *(v39 + 8);
    v41 = a3 + 2;
    LODWORD(__n) = a3 + 2;
    if (v40)
    {
      v42 = *(a2 + 80);
LABEL_45:
      v43 = v40;
      v44 = v42;
      do
      {
        v45 = *v44++;
        if (v45 == v41)
        {
          v41 += 2;
          LODWORD(__n) = v41;
          goto LABEL_45;
        }

        --v43;
      }

      while (v43);
      result = _CSMapWriteToHeader(a1, *a2, 0x18u, 4, &__n);
      if (!result)
      {
        v46 = 0;
        while (1)
        {
          if (*(*(a2 + 80) + 4 * v46) == a3)
          {
            result = _CSMapSetBucketRange(a1, a2, 0, v46, 1u, __n);
            if (result)
            {
              break;
            }
          }

          if (v40 == ++v46)
          {
            goto LABEL_57;
          }
        }
      }

      return result;
    }

    result = _CSMapWriteToHeader(a1, *a2, 0x18u, 4, &__n);
    if (result)
    {
      return result;
    }
  }

LABEL_57:
  v47 = HIDWORD(v49);
  result = _CSMapSetBucketRange(a1, a2, 0, HIDWORD(v49), 1u, a3);
  if (!result)
  {
    LODWORD(v49) = *(*(a2 + 72) + 12) - 1;
    result = _CSMapWriteToHeader(a1, *a2, 0xCu, 4, &v49);
    if (!result)
    {
      result = _CSMapSetBucketRange(a1, a2, *(*(a2 + 72) + 8), v47, 1u, a4);
      if (!result)
      {
        v48 = *(a2 + 8);
        if (v48)
        {
          v48(a1, a2, a3);
        }

        v27 = *(a2 + 40);
        if (!v27)
        {
          return 0;
        }

        v28 = a1;
        v29 = a2;
        v30 = a4;
LABEL_64:
        v27(v28, v29, v30);
        return 0;
      }
    }
  }

  return result;
}

uint64_t CSMapRemoveValue(__CSStore *a1, void *a2, uint64_t a3)
{
  result = CSMapSync(a1, a2);
  if (!result)
  {
    v14 = 0;
    result = _CSMapFindBucketForKey(a1, a2, a3, &v14, 0);
    if (!result)
    {
      v7 = v14;
      v8 = *(a2[11] + 4 * v14);
      result = _CSMapSetBucketRange(a1, a2, 0, v14, 1u, *(a2[9] + 24));
      if (!result)
      {
        v13 = *(a2[9] + 12) + 1;
        result = _CSMapWriteToHeader(a1, *a2, 0xCu, 4, &v13);
        if (!result)
        {
          v9 = a2[9];
          v10 = a2[10];
          if (v9[5] == *(v10 + 4 * ((v7 + 1) % v9[2])))
          {
            while (v9[6] == *(v10 + 4 * v7))
            {
              result = _CSMapSetBucketRange(a1, a2, 0, v7, 1u, v9[5]);
              if (result)
              {
                return result;
              }

              v9 = a2[9];
              v10 = a2[10];
              v7 = (v7 + v9[2] - 1) % v9[2];
            }
          }

          v11 = a2[2];
          if (v11)
          {
            v11(a1, a2, a3);
          }

          v12 = a2[6];
          if (v12)
          {
            v12(a1, a2, v8);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _CSMapCopyDebugDescription(uint64_t a1, unsigned int *a2)
{
  if (CSMapSync(a1, a2))
  {
    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  CSStore2::AttributedStringWriter::AttributedStringWriter(v25, v5, v6);
  CSStore2::AttributedStringWriter::format(v25, &cfstr_Table.isa, &cfstr_Llu0xLlx.isa, *a2, *a2);
  v8 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i < 12; i += 2)
  {
    v10 = CSStore2::NameOfSymbol(*&a2[i + 2], v7);
    if (v10)
    {
      [v8 addObject:v10];
    }
  }

  v11 = [v8 componentsJoinedByString:{@", "}];
  CSStore2::AttributedStringWriter::string(v25, &cfstr_Callbacks.isa, v11);

  v12 = *(a2 + 9);
  if (v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v12];
    CSStore2::AttributedStringWriter::number(v25, &cfstr_Version_0.isa, v13);

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12[1]];
    CSStore2::AttributedStringWriter::number(v25, &cfstr_Unit.isa, v14);

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12[2]];
    CSStore2::AttributedStringWriter::number(v25, &cfstr_BucketCount.isa, v15);

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12[3]];
    CSStore2::AttributedStringWriter::number(v25, &cfstr_EmptyCount.isa, v16);

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12[4]];
    CSStore2::AttributedStringWriter::number(v25, &cfstr_Threshold.isa, v17);

    v24 = v12[5];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3321888768;
    v23[2] = ___CSMapCopyDebugDescription_block_invoke;
    v23[3] = &__block_descriptor_48_ea8_32c39_ZTSKZ26_CSMapCopyDebugDescriptionE3__0_e5_v8__0l;
    v23[4] = v25;
    v23[5] = &v24;
    CSStore2::AttributedStringWriter::withAppliedAttribute(v25, @"_CSVNum", v18, v23);

    v22 = v12[6];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3321888768;
    v21[2] = ___CSMapCopyDebugDescription_block_invoke_31;
    v21[3] = &__block_descriptor_48_ea8_32c39_ZTSKZ26_CSMapCopyDebugDescriptionE3__1_e5_v8__0l;
    v21[4] = v25;
    v21[5] = &v22;
    CSStore2::AttributedStringWriter::withAppliedAttribute(v25, @"_CSVNum", v19, v21);
  }

  v3 = [(__CSStore *)v5 copy];

  CSStore2::AttributedStringWriter::~AttributedStringWriter(v25);
  objc_autoreleasePoolPop(v4);
  return v3;
}

void sub_1B9D81D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  CSStore2::AttributedStringWriter::~AttributedStringWriter(va);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c39_ZTSKZ26_CSMapCopyDebugDescriptionE3__1(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c39_ZTSKZ26_CSMapCopyDebugDescriptionE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void sub_1B9D82FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  CSStore2::AttributedStringWriter::~AttributedStringWriter(va);
  _Unwind_Resume(a1);
}

void sub_1B9D83124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  CSStore2::AttributedStringWriter::~AttributedStringWriter(va);
  _Unwind_Resume(a1);
}

void sub_1B9D8344C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _CSVisualizer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B9D837B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1B9D83AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZN8CSStore27HashMapIjjNS_20_IdentifierFunctionsELy1EE14WriteBreakdownERKNS_5StoreEPKS2_hPh_block_invoke(uint64_t a1, unsigned int a2, size_t __len, int a4, int a5)
{
  if (a4)
  {
    v5 = 64;
  }

  else
  {
    v5 = -128;
  }

  return memset((*(a1 + 32) + a2), (v5 | a5 ^ 1) & 0xFFFFFFC1 | (2 * (*(a1 + 40) & 0x1F)), __len);
}

void sub_1B9D84C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v39 - 176), 8);
  v41 = *(v39 - 128);
  if (v41)
  {
    *(v39 - 120) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__44(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__45(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__761(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1B9D850B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CSStore2::ansiColorCodeFromNSNumber(CSStore2 *this, NSNumber *a2)
{
  v2 = this;
  v3 = _NSIsNSNumber();
  if (v3)
  {
    v3 = [(CSStore2 *)v2 unsignedIntegerValue];
  }

  v4 = BYTE2(v3);
  v5 = v3 >> 8;
  v6 = v3;
  v7 = BYTE1(v3);

  if (v4 == v5 && v7 == v6)
  {
    if (v4 <= 0xF5)
    {
      v8 = ((197400 * v4) >> 21) + 232;
    }

    else
    {
      v8 = 15;
    }
  }

  else
  {
    v8 = (((84215046 * v6) >> 32) + 36 * ((84215046 * v4) >> 32) + 6 * ((84215046 * v7) >> 32) + 16);
  }

  return v8;
}

uint64_t _CSArrayCreate(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___CSArrayCreate_block_invoke;
  v9[3] = &__block_descriptor_44_e68__optional_CSStore2::Array_____c_Array___Store____Data_II__B_16__0_v8l;
  v9[4] = a2;
  v10 = a3;
  v6 = MEMORY[0x1BFAE6310](v9);
  Common = _CSArrayCreateCommon(a1, v6, a4);

  return Common;
}

uint64_t _CSArrayCreateCommon(uint64_t a1, void *a2, void *a3)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a1)
  {
    v9 = MEMORY[0x1E696ABC0];
    v18[0] = *MEMORY[0x1E696A278];
    v18[1] = @"Line";
    v19[0] = @"paramErr";
    v19[1] = &unk_1F37D8030;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v7 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v10];

    goto LABEL_10;
  }

  if (performMutatingAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (***(v6 + 8))(*(v6 + 8));
    }
  }

  v5[2](&v15, v5, a1 + 8);
  if (v17 != 1)
  {
    v11 = MEMORY[0x1E696ABC0];
    v20[0] = *MEMORY[0x1E696A278];
    v20[1] = @"Line";
    v21[0] = @"kCSStoreAllocFailedErr";
    v21[1] = &unk_1F37D8018;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v7 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v12];

LABEL_10:
    v8 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v7 = 0;
  v8 = v16;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v8)
  {
    *a3 = v7;
  }

LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

unint64_t CSStore2::Array::_Create(CSStore2::Array *this, CSStore2::Store *a2, unsigned int a3, const unsigned int *a4, unsigned int a5)
{
  v5 = a5;
  *this = 0;
  *(this + 24) = 0;
  if (a5 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a2 + 33);
  if (v10)
  {
    if (a5)
    {
LABEL_6:
      if (*(a4 + 1))
      {
        v14 = 0;
      }

      else
      {
        v11 = 0;
        while (v5 - 1 != v11)
        {
          v12 = a4[++v11];
          if (v12 >= 0x10000)
          {
            goto LABEL_17;
          }
        }

        v11 = v5;
LABEL_17:
        v14 = v11 >= v5;
      }

      goto LABEL_18;
    }
  }

  else
  {
    result = CSStore2::Store::getTable(a2, &cfstr_Array.isa);
    if (!result)
    {
      result = CSStore2::Store::allocateTable(a2, &cfstr_Array.isa, 0, 0);
      if (!result)
      {
        return result;
      }
    }

    v10 = result;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v14 = 1;
LABEL_18:
  result = CSStore2::Array::_GetDataSizeWithCapacity(v9, v14);
  if (HIDWORD(result))
  {
    result = CSStore2::Store::allocateUnit(a2, v10, result, 0);
    if (result)
    {
      v15 = (result + 8);
      if (v14)
      {
        v16 = 0x20000000;
      }

      else
      {
        v16 = 0;
      }

      if (a4 && v5)
      {
        *v15 = v16 | v5 & 0x1FFFFFFF;
        v17 = (result + 12);
        if (v14)
        {
          do
          {
            v18 = *a4++;
            *v17++ = v18;
            --v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v19 = *a4++;
            *v17 = v19;
            v17 += 2;
            --v5;
          }

          while (v5);
        }
      }

      else
      {
        *v15 = v16;
      }

      *(this + 24) = 1;
      *this = a2;
      *(this + 1) = v15;
      v20 = 4 * *result;
      *(this + 4) = v9;
      *(this + 5) = v20;
    }
  }

  return result;
}

uint64_t CSStore2::Array::_GetDataSizeWithCapacity(CSStore2::Array *this, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  v3 = this;
  v4 = 1;
  if (!a2)
  {
    v4 = 2;
  }

  v5 = this << v4;
  if (v5 != (v5 & 0xFFFFFFFE) || (v5 & 0xFFFFFFFE) > 0xFFFFFFFB)
  {
    v7 = CSStore2::GetLog(this);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 134218496;
      v11 = v3;
      v12 = 2048;
      v13 = v2;
      v14 = 2048;
      v15 = 4;
      _os_log_error_impl(&dword_1B9D5B000, v7, OS_LOG_TYPE_ERROR, "Overflow sizing array (%llu * %llu + %llu)", &v10, 0x20u);
    }

    result = 0;
  }

  else
  {
    result = (v5 + 4) & 0xFFFFFFFE | 0x100000000;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CSArrayCreateWithCapacity(uint64_t a1, int a2, void *a3)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___CSArrayCreateWithCapacity_block_invoke;
  v8[3] = &__block_descriptor_36_e68__optional_CSStore2::Array_____c_Array___Store____Data_II__B_16__0_v8l;
  v9 = a2;
  v5 = MEMORY[0x1BFAE6310](v8);
  Common = _CSArrayCreateCommon(a1, v5, a3);

  return Common;
}

Unit *_CSArrayDispose(Unit *result, CSStore2::Store *a2)
{
  if (result && a2)
  {
    v3 = result;
    if (performMutatingAssertions == 1)
    {
      v4 = *&result->var3[336];
      if (v4)
      {
        (***(v4 + 8))(*(v4 + 8));
      }
    }

    return CSStore2::Array::Dispose((v3 + 8), a2);
  }

  return result;
}

uint64_t _CSArrayGetCapacity(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (performConstantAssertions == 1)
    {
      v5 = *(a1 + 344);
      if (v5)
      {
        (*(**(v5 + 8) + 8))(*(v5 + 8));
      }
    }

    CSStore2::Array::Get(v6, (a1 + 8), a2);
    if (v7)
    {
      return v6[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _CSArrayReserveCapacity(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (performMutatingAssertions == 1)
    {
      v7 = *(a1 + 344);
      if (v7)
      {
        (***(v7 + 8))(*(v7 + 8));
      }
    }

    CSStore2::Array::Get(v8, (a1 + 8), a2);
    if (v8[24] == 1)
    {
      return CSStore2::Array::reserveCapacity(v8, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CSStore2::Array::reserveCapacity(CSStore2::Array *this, unsigned int a2)
{
  v3 = this;
  v19 = *MEMORY[0x1E69E9840];
  v4 = **(this + 1) & 0x1FFFFFFF;
  v5 = *(this + 4);
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = __CFADD__(v6, a2);
  v8 = (v6 + a2);
  if (v7 || (this = CSStore2::Array::_setCapacity(this, v8, 0), (this & 1) == 0))
  {
    v10 = CSStore2::GetLog(this);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v3 + 4);
      v13 = 134218496;
      v14 = v12;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = a2;
      _os_log_error_impl(&dword_1B9D5B000, v10, OS_LOG_TYPE_ERROR, "Unable to reserve array capacity! Current capacity was %llu, count was %llu, wanted %llu more", &v13, 0x20u);
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSStore2::Array::_setCapacity(unint64_t this, CSStore2::Array *a2, int a3)
{
  v3 = a2;
  v4 = this;
  v16 = *MEMORY[0x1E69E9840];
  if (!(a2 >> 29))
  {
    v5 = *(this + 16);
    if (v5 >= a2)
    {
      result = 1;
      if (!a3)
      {
        goto LABEL_13;
      }

      if (v5 <= a2)
      {
        goto LABEL_13;
      }

      v7 = **(v4 + 8);
      if ((v7 & 0x1FFFFFFF) > a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = v5 + 4;
      if (v6 <= a2)
      {
        v3 = a2;
      }

      else
      {
        v3 = v6;
      }

      v7 = **(this + 8);
    }

    this = CSStore2::Array::_GetDataSizeWithCapacity(v3, (v7 >> 29) & 1);
    if (HIDWORD(this))
    {
      this = CSStore2::Array::_reallocate(v4, this);
      if (this)
      {
        *(v4 + 16) = v3;
        result = 1;
        goto LABEL_13;
      }
    }
  }

  v9 = CSStore2::GetLog(this);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = *(v4 + 16);
    v12 = 134218240;
    v13 = v11;
    v14 = 2048;
    v15 = v3;
    _os_log_error_impl(&dword_1B9D5B000, v9, OS_LOG_TYPE_ERROR, "Unable to set array capacity! Current capacity was %llu, wanted %llu", &v12, 0x16u);
  }

  result = 0;
LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSStore2::Array::_reallocate(CSStore2::Array *this, CSStore2::VM *a2)
{
  v4 = *this;
  v5 = v4[33];
  if (!v5)
  {
    result = CSStore2::Store::getTable(v4, &cfstr_Array.isa);
    if (!result)
    {
      return result;
    }

    v5 = result;
    v4 = *this;
  }

  result = CSStore2::Store::getUnit(v4, v5, *(this + 5));
  if (result)
  {
    v7 = CSStore2::Store::reallocateUnit(*this, v5, result, a2);
    *(this + 1) = v7->var3;
    *(this + 5) = 4 * *v7;
    return 1;
  }

  return result;
}

void _CSArraySetValueAtIndex(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (performMutatingAssertions == 1)
    {
      v8 = *(a1 + 344);
      if (v8)
      {
        (***(v8 + 8))(*(v8 + 8));
      }
    }

    CSStore2::Array::Get(&v18, (a1 + 8), a2);
    if (v21 == 1)
    {
      v10 = *v19 & 0x1FFFFFFF;
      if (v10 >= v20)
      {
        v11 = v20;
      }

      else
      {
        v11 = v10;
      }

      if (v11 > a3)
      {
        if ((*v19 & 0x20000000) == 0 || HIWORD(a4))
        {
          v15 = CSStore2::Array::_unpack(&v18);
          if (!v15)
          {
            goto LABEL_21;
          }

          v12 = CSStore2::GetLog(v15);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v13 = "Unpacking array (or already unpacked) for value replacement";
            goto LABEL_26;
          }
        }

        else
        {
          v12 = CSStore2::GetLog(v9);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v13 = "Keeping array packed for value replacement";
LABEL_26:
            _os_log_debug_impl(&dword_1B9D5B000, v12, OS_LOG_TYPE_DEBUG, v13, buf, 2u);
          }
        }

LABEL_21:
        v16 = v19 + 4;
        if ((*(v19 + 3) & 0x20) != 0)
        {
          *(v16 + 2 * a3) = a4;
        }

        else
        {
          *(v16 + 4 * a3) = a4;
        }

        goto LABEL_24;
      }

      v14 = CSStore2::GetLog(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v23 = a3;
        v24 = 2048;
        v25 = v11;
        _os_log_error_impl(&dword_1B9D5B000, v14, OS_LOG_TYPE_ERROR, "Out-of-bounds array write: %llu >= %llu", buf, 0x16u);
      }
    }
  }

LABEL_24:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t CSStore2::Array::_unpack(CSStore2::Array *this)
{
  if ((*(*(this + 1) + 3) & 0x20) == 0)
  {
    return 1;
  }

  CSStore2::Array::getAllValues(&__p, this);
  DataSizeWithCapacity = CSStore2::Array::_GetDataSizeWithCapacity(*(this + 4), 0);
  if (!HIDWORD(DataSizeWithCapacity))
  {
    v1 = 0;
    v4 = __p;
    if (!__p)
    {
      return v1;
    }

    goto LABEL_18;
  }

  v5 = CSStore2::Array::_reallocate(this, DataSizeWithCapacity);
  v4 = __p;
  if (!v5)
  {
    v1 = 0;
    if (!__p)
    {
      return v1;
    }

    goto LABEL_18;
  }

  **(this + 1) &= ~0x20000000u;
  v6 = *(this + 1);
  if ((*(v6 + 3) & 0x20) != 0)
  {
    if (v15 != v4)
    {
      v10 = 0;
      v11 = v6 + 4;
      v12 = (v15 - v4) >> 2;
      do
      {
        *(v11 + 2 * v10) = v4[v10];
        ++v10;
      }

      while (v12 != v10);
    }
  }

  else if (v15 != v4)
  {
    v7 = 0;
    v8 = (v15 - v4) >> 2;
    v9 = v6 + 4;
    do
    {
      *(v9 + 4 * v7) = v4[v7];
      ++v7;
    }

    while (v8 != v7);
  }

  v1 = 1;
  if (v4)
  {
LABEL_18:
    v15 = v4;
    operator delete(v4);
  }

  return v1;
}

void sub_1B9D86628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _CSArrayInsertValueAtIndex(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v9 = a4;
  if (a1 && a2)
  {
    if (performMutatingAssertions == 1)
    {
      v7 = *(a1 + 344);
      if (v7)
      {
        (***(v7 + 8))(*(v7 + 8));
      }
    }

    CSStore2::Array::Get(v8, (a1 + 8), a2);
    if (v8[24] == 1)
    {
      CSStore2::Array::insertValueAtIndex(v8, a3, &v9);
    }
  }
}

void CSStore2::Array::insertValueAtIndex(CSStore2::Array *this, unsigned int a2, const unsigned int *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = **(this + 1) & 0x1FFFFFFF;
  v5 = *(this + 4);
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v6 < a2)
  {
    v7 = CSStore2::GetLog(this);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v22 = 134218240;
      v23 = a2;
      v24 = 2048;
      v25 = v6;
      v8 = "Out-of-bounds array insertion: %llu > %llu";
      v9 = v7;
      v10 = 22;
LABEL_29:
      _os_log_error_impl(&dword_1B9D5B000, v9, OS_LOG_TYPE_ERROR, v8, &v22, v10);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v13 = CSStore2::Array::reserveCapacity(this, 1u);
  if ((v13 & 1) == 0)
  {
    v7 = CSStore2::GetLog(v13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v22 = 134217984;
      v23 = v6;
      v8 = "Failed to reserve array capacity when preparing for new value (old count = %llu)";
      v9 = v7;
      v10 = 12;
      goto LABEL_29;
    }

LABEL_13:

    goto LABEL_14;
  }

  if ((*(*(this + 1) + 3) & 0x20) != 0 && !HIWORD(*a3))
  {
    v14 = CSStore2::GetLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      v15 = "Array was packed and can remain packed with new values";
LABEL_31:
      _os_log_debug_impl(&dword_1B9D5B000, v14, OS_LOG_TYPE_DEBUG, v15, &v22, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v17 = CSStore2::Array::_unpack(this);
  v18 = v17;
  v19 = CSStore2::GetLog(v17);
  v14 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      v15 = "Array was unpacked or needed to be unpacked to take new values";
      goto LABEL_31;
    }

LABEL_17:

    v20 = *(this + 1);
    v21 = v20 + 4;
    if ((*(v20 + 3) & 0x20) != 0)
    {
      if (v6 > a2)
      {
        memmove((v21 - -2 * a2 + 2), (v21 + 2 * a2), (2 * v6) - 2 * a2);
      }

      *(v21 + 2 * a2) = *a3;
    }

    else
    {
      if (v6 > a2)
      {
        memmove((v21 - -4 * a2 + 4), (v21 + 4 * a2), (4 * v6) - 4 * a2);
      }

      *(v21 + 4 * a2) = *a3;
    }

    **(this + 1) = **(this + 1) & 0xE0000000 | (v6 + 1) & 0x1FFFFFFF;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v22 = 134217984;
    v23 = v6;
    _os_log_error_impl(&dword_1B9D5B000, v14, OS_LOG_TYPE_ERROR, "Failed to unpack array when preparing for new value (old count = %llu)", &v22, 0xCu);
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
}

void _CSArrayAppendValue(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v11 = a3;
  if (a1 && a2)
  {
    if (performMutatingAssertions == 1)
    {
      v5 = *(a1 + 344);
      if (v5)
      {
        (***(v5 + 8))(*(v5 + 8));
      }
    }

    CSStore2::Array::Get(v7, (a1 + 8), a2);
    if (v10 == 1)
    {
      if ((*v8 & 0x1FFFFFFFu) >= v9)
      {
        v6 = v9;
      }

      else
      {
        v6 = *v8 & 0x1FFFFFFF;
      }

      CSStore2::Array::insertValueAtIndex(v7, v6, &v11);
    }
  }
}

void _CSArrayRemoveValueAtIndex(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (performMutatingAssertions == 1)
    {
      v6 = *(a1 + 344);
      if (v6)
      {
        (***(v6 + 8))(*(v6 + 8));
      }
    }

    CSStore2::Array::Get(&v20, (a1 + 8), a2);
    if (v23 == 1)
    {
      v8 = v21;
      v9 = *v21;
      v10 = *v21 & 0x1FFFFFFF;
      if (v10 >= v22)
      {
        v11 = v22;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= a3)
      {
        v14 = CSStore2::GetLog(v7);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v25 = a3;
          v26 = 2048;
          v27 = v11;
          _os_log_error_impl(&dword_1B9D5B000, v14, OS_LOG_TYPE_ERROR, "Out-of-bounds array erasure: %llu >= %llu", buf, 0x16u);
        }
      }

      else
      {
        v12 = v11 - 1;
        if (v11 == 1)
        {
          v13 = v9 & 0xE0000000;
        }

        else
        {
          if (v12 > a3)
          {
            v15 = v21 + 1;
            if ((v9 & 0x20000000) != 0)
            {
              v16 = v15 + 2 * a3;
              v17 = v16 + 2;
              v18 = v15 + 2 * v11;
            }

            else
            {
              v16 = &v15[a3];
              v17 = v16 + 4;
              v18 = &v15[v11];
            }

            if (v18 != v17)
            {
              memmove(v16, v17, v18 - v17);
            }
          }

          v13 = *v8 & 0xE0000000 | v12;
        }

        *v8 = v13;
        CSStore2::Array::_shrinkCapacityIfNeeded(&v20);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

unint64_t CSStore2::Array::_shrinkCapacityIfNeeded(unint64_t this)
{
  v1 = *(this + 16);
  v2 = **(this + 8) & 0x1FFFFFFF;
  if (v2 >= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (v2 < v1 && v1 - v3 >= 5)
  {
    return CSStore2::Array::_setCapacity(this, v3, 1);
  }

  return this;
}

void _CSArrayRemoveAllValues(uint64_t a1, unsigned int a2)
{
  if (a1 && a2)
  {
    if (performMutatingAssertions == 1)
    {
      v4 = *(a1 + 344);
      if (v4)
      {
        (***(v4 + 8))(*(v4 + 8));
      }
    }

    CSStore2::Array::Get(&v5, (a1 + 8), a2);
    if (v7 == 1)
    {
      *v6 &= 0xE0000000;
      CSStore2::Array::_shrinkCapacityIfNeeded(&v5);
    }
  }
}

id CSStore2::_CopyNameOfTypeImpl(std::string *this)
{
  v1 = this;
  v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = v2;
  v4 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if ((v2 & 0x80u) == 0)
  {
    v6 = this;
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
  }

  if ((v2 & 0x80u) == 0)
  {
    v7 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = this->__r_.__value_.__l.__size_;
  }

  if (v7)
  {
    v8 = v6 + v7;
    v9 = v6;
    v10 = (v6 + v7);
    do
    {
      v11 = v9;
      v12 = v9;
      while (1)
      {
        v13 = *v12++;
        if (v13 == 93)
        {
          break;
        }

        v11 = v12;
        if (v12 == v8)
        {
          v11 = v10;
          goto LABEL_14;
        }
      }

      v9 = (&v11->__r_.__value_.__l.__data_ + 1);
      v10 = v11;
    }

    while (v12 != v8);
LABEL_14:
    if (v11 != v8 && v11 - v6 != -1)
    {
      v14 = v4 + size;
      v15 = v1 + v2;
      if (v3 < 0)
      {
        v15 = v14;
      }

      std::string::erase(v1, v11 - v6, v15 - v11);
      v2 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
      v4 = v1->__r_.__value_.__r.__words[0];
      size = v1->__r_.__value_.__l.__size_;
      LOBYTE(v3) = *(&v1->__r_.__value_.__s + 23);
    }
  }

  strcpy(__c, "[T = ");
  if ((v3 & 0x80u) == 0)
  {
    v16 = v1;
  }

  else
  {
    v16 = v4;
  }

  if ((v3 & 0x80u) != 0)
  {
    v2 = size;
  }

  if (v2 >= 5)
  {
    v17 = &v16[v2];
    v18 = v16;
    do
    {
      v19 = memchr(v18, SLOBYTE(__c[0]), v2 - 4);
      if (!v19)
      {
        break;
      }

      if (*v19 == __c[0] && v19[4] == LOBYTE(__c[1]))
      {
        if (v19 != v17 && v19 - v16 != -1)
        {
          std::string::erase(v1, 0, v19 - v16 + 5);
        }

        break;
      }

      v18 = v19 + 1;
      v2 = v17 - v18;
    }

    while (v17 - v18 >= 5);
  }

  v21 = MEMORY[0x1E69E9830];
  while (1)
  {
    v22 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v22 = v1->__r_.__value_.__l.__size_;
      if (!v22)
      {
        goto LABEL_50;
      }

      v23 = v1->__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v1->__r_.__value_.__s + 23))
      {
        goto LABEL_50;
      }

      v23 = v1;
    }

    v24 = v23->__r_.__value_.__s.__data_[v22 - 1];
    if ((v24 & 0x80000000) == 0)
    {
      break;
    }

    if (!__maskrune(v24, 0x4000uLL))
    {
      goto LABEL_50;
    }

LABEL_46:
    v25 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
    if (v25 < 0)
    {
      v27 = v1->__r_.__value_.__r.__words[0];
      v26 = v1->__r_.__value_.__l.__size_ - 1;
      v1->__r_.__value_.__l.__size_ = v26;
    }

    else
    {
      v26 = v25 - 1;
      *(&v1->__r_.__value_.__s + 23) = v26 & 0x7F;
      v27 = v1;
    }

    v27->__r_.__value_.__s.__data_[v26] = 0;
  }

  if ((*(v21 + 4 * v24 + 60) & 0x4000) != 0)
  {
    goto LABEL_46;
  }

  while (1)
  {
LABEL_50:
    v28 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
    if (v28 < 0)
    {
      v29 = v1->__r_.__value_.__r.__words[0];
      if (!v1->__r_.__value_.__l.__size_)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v29 = v1;
      if (!*(&v1->__r_.__value_.__s + 23))
      {
        goto LABEL_62;
      }
    }

    v30 = v29->__r_.__value_.__s.__data_[0];
    if ((v30 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v21 + 4 * v30 + 60) & 0x4000) == 0)
    {
      goto LABEL_59;
    }

LABEL_58:
    std::string::erase(v1, 0, 1uLL);
  }

  v31 = __maskrune(v30, 0x4000uLL);
  LOBYTE(v28) = *(&v1->__r_.__value_.__s + 23);
  if (v31)
  {
    goto LABEL_58;
  }

LABEL_59:
  v29 = v1->__r_.__value_.__r.__words[0];
LABEL_60:
  if ((v28 & 0x80u) != 0)
  {
    v1 = v29;
  }

LABEL_62:
  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];

  return v32;
}

id CSStore2::NameOfSymbol(CSStore2 *this, const void *a2)
{
  os_unfair_lock_lock(&CSStore2::NameOfSymbol(void const*)::lock);
  if (!CSStore2::NameOfSymbol(void const*)::functionNames)
  {
    operator new();
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (this & 0x1FFFFFFF) + 8) ^ (this >> 32));
  v4 = 0x9DDFEA08EB382D69 * ((this >> 32) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(CSStore2::NameOfSymbol(void const*)::functionNames + 8);
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*CSStore2::NameOfSymbol(void const*)::functionNames + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    memset(&v29, 0, sizeof(v29));
    if (dladdr(this, &v29))
    {
      dli_sname = v29.dli_sname;
      if (v29.dli_sname)
      {
        status = 0;
        v13 = __cxa_demangle(v29.dli_sname, 0, 0, &status);
        v14 = v13;
        if (v13)
        {
          if (!strncmp(v13, "invocation function for block in ", 0x21uLL))
          {
            v24 = [@"^() in " mutableCopy];
            v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14 + 33];
            [v24 appendString:v25];

            v17 = [v24 copy];
            free(v14);

            goto LABEL_28;
          }

          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v14 length:strlen(v14) encoding:4 freeWhenDone:1];
        }

        else
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:dli_sname];
        }
      }

      else
      {
        v16 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = [v16 initWithFormat:@"0x%llx", v29.dli_saddr];
      }
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%llx?", this];
    }

    v17 = v15;
    goto LABEL_28;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (v10[2] != this)
  {
    goto LABEL_18;
  }

  v27 = v10[3];
  v17 = v27;
  if (!v27)
  {
    goto LABEL_19;
  }

LABEL_28:
  v18 = *(CSStore2::NameOfSymbol(void const*)::functionNames + 8);
  if (!*&v18)
  {
    goto LABEL_45;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = v5;
    if (v5 >= *&v18)
    {
      v20 = v5 % *&v18;
    }
  }

  else
  {
    v20 = v5 & (*&v18 - 1);
  }

  v21 = *(*CSStore2::NameOfSymbol(void const*)::functionNames + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_45:
    operator new();
  }

  while (2)
  {
    v23 = v22[1];
    if (v23 != v5)
    {
      if (v19.u32[0] > 1uLL)
      {
        if (v23 >= *&v18)
        {
          v23 %= *&v18;
        }
      }

      else
      {
        v23 &= *&v18 - 1;
      }

      if (v23 != v20)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (v22[2] != this)
    {
LABEL_44:
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  os_unfair_lock_unlock(&CSStore2::NameOfSymbol(void const*)::lock);

  return v17;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63F00]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}