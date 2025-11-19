uint64_t _CSGetStringForCharacters(uint64_t a1, CSStore2::_StringFunctions *a2, const char *a3)
{
  if (performConstantAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (*(**(v6 + 8) + 8))(*(v6 + 8));
    }
  }

  CSStore2::String::Find(v8, (a1 + 8), a2, a3);
  if (v10)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void CSStore2::String::Find(CSStore2::String *this, CSStore2::Store *a2, CSStore2::_StringFunctions *a3, const char *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x5812000000;
  v43 = __Block_byref_object_copy__369;
  v44 = __Block_byref_object_dispose__370;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v50 = 0;
  if (a4 > 5)
  {
LABEL_15:
    StringCache = CSStore2::getStringCache(a2, a2);
    if (StringCache)
    {
      HashCode = CSStore2::_StringFunctions::getHashCode(a3, a4);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v34 = ___ZN8CSStore26String4FindERNS_5StoreEPKcj_block_invoke;
      v35 = &unk_1E7ED3818;
      v37 = a2;
      v38 = a3;
      v39 = a4;
      v36 = &v40;
      v17 = v33;
      v48 = 0;
      if (*StringCache)
      {
        v18 = &StringCache[2 * (HashCode % *StringCache)];
        v21 = v18[1];
        v20 = v18 + 1;
        v19 = v21;
        if ((v21 - 0x20000000) >= 0xE0000001)
        {
          v22 = v20[1];
          v23 = v22 + 8 * v19;
          if (!__CFADD__(v22, 8 * v19))
          {
            v24 = *(*a2 + 8);
            v25 = *(v24 + 12);
            if (v23 <= v25 && v25 > v22)
            {
              v27 = (v24 + v22);
              v28 = 1;
              do
              {
                v34(v17, v27, (v27 + 1), &v48);
                if (v28 >= *v20)
                {
                  break;
                }

                ++v28;
                v27 += 2;
              }

              while ((v48 & 1) == 0);
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  if (a4)
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E69E9830];
    while (1)
    {
      v11 = *(a3 + v8);
      if (!((v11 & 0x80000000) != 0 ? __maskrune(*(a3 + v8), 0x40000uLL) : *(v10 + 4 * v11 + 60) & 0x40000))
      {
        goto LABEL_15;
      }

      v13 = memchr(CSStore2::String::kPackedAlphabet, v11, 0x40uLL);
      if (v13)
      {
        v9 = (v13 - CSStore2::String::kPackedAlphabet) | (v9 << 6);
      }

      if (++v8 >= a4 || !v13)
      {
        if (v13)
        {
          *&__dst = 0;
          v50 = 1;
          memcpy(&__dst, a3, a4);
          DWORD2(__dst) = a4;
          if (v50)
          {
            v14 = (4 * v9) | 1;
            goto LABEL_29;
          }
        }

        goto LABEL_15;
      }
    }
  }

  *&__dst = 0;
  v14 = 1;
  v50 = 1;
  DWORD2(__dst) = 0;
LABEL_29:
  v29 = v41;
  v41[6] = 0;
  *(v29 + 14) = v14;
  *(v29 + 60) = 1;
  *(v29 + 4) = __dst;
  *(v29 + 80) = v50;
LABEL_30:
  v30 = v41;
  v31 = *(v41 + 4);
  *this = *(v41 + 3);
  *(this + 1) = v31;
  *(this + 4) = v30[10];
  _Block_object_dispose(&v40, 8);
  v32 = *MEMORY[0x1E69E9840];
}

void sub_1B9D5C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

atomic_ullong CSStore2::getStringCache(CSStore2 *this, const CSStore2::Store *a2)
{
  result = *(this + 34);
  if (result || (result = CSStore2::Store::getTable(this, &cfstr_String_0.isa)) != 0)
  {
    v4 = *(result + 80);
    if (v4 == -1)
    {
      return 0;
    }

    else
    {
      result = 0;
      v5 = *(*this + 8);
      v6 = *(v5 + 12);
      if (v6 > v4 && v4 < 0xFFFFFFFC && v4 + 4 <= v6)
      {
        return v5 + v4;
      }
    }
  }

  return result;
}

uint64_t CSStore2::_StringFunctions::getHashCode(CSStore2::_StringFunctions *this, const char *a2)
{
  v2 = a2;
  if (a2 < 0x81)
  {
    if (a2)
    {
      v5 = a2;
      do
      {
        v6 = *this;
        this = (this + 1);
        v2 = 17 * v2 + v6;
        --v5;
      }

      while (v5);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    for (i = 0; i != 64; ++i)
    {
      v2 = 17 * v2 + *(this + i);
    }

    for (j = 0; j != 64; ++j)
    {
      v2 = 17 * v2 + *(this + (a2 - 64) + j);
    }
  }

  return ((v2 << (a2 & 7)) + v2);
}

double ___ZN8CSStore26String4FindERNS_5StoreEPKcj_block_invoke(uint64_t a1, unsigned int *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  CSStore2::String::Get(&v15, *(a1 + 40), *a2);
  if (v17)
  {
    result = *&v16;
    v13 = v16;
    v14 = 1;
    if (DWORD2(v16) == v8)
    {
      if (BYTE12(v15))
      {
        v10 = &v13;
      }

      else
      {
        v10 = v13;
      }

      if (!memcmp(v10, v7, v8))
      {
        CSStore2::String::Get(&v15, *(a1 + 40), *a2);
        v11 = *(*(a1 + 32) + 8);
        result = *&v15;
        v12 = v16;
        *(v11 + 48) = v15;
        *(v11 + 64) = v12;
        *(v11 + 80) = v17;
        *a4 = 1;
      }
    }
  }

  return result;
}

_DWORD *CSStore2::String::Get(_DWORD *this, CSStore2::Store *a2, unsigned int a3)
{
  v5 = this;
  LOBYTE(v18) = 0;
  v20 = 0;
  if (a3)
  {
    v6 = 0;
    *&v18 = 0;
    *&v19 = 0;
    DWORD2(v19) = 0;
    v20 = 1;
    DWORD2(v18) = a3;
    BYTE12(v18) = 1;
    v7 = a3 >> 2;
    do
    {
      v8 = v7 & 0x3F;
      if ((v7 & 0x3F) == 0)
      {
        break;
      }

      v7 >>= 6;
      *(&v19 + v6++) = CSStore2::String::kPackedAlphabet[v8];
    }

    while (v6 != 5);
    this = strlen(&v19);
    if (this >= 2uLL)
    {
      v9 = &v18 + this + 15;
      v10 = &v19 + 1;
      do
      {
        v11 = *(v10 - 1);
        *(v10 - 1) = *v9;
        *v9-- = v11;
      }

      while (v10++ < v9);
    }

    DWORD2(v19) = this;
  }

  v13 = v19;
  *v5 = v18;
  *(v5 + 1) = v13;
  v14 = v20;
  *(v5 + 32) = v20;
  if ((v14 & 1) == 0)
  {
    v15 = *(a2 + 34);
    if (v15 || (this = CSStore2::Store::getTable(a2, &cfstr_String_0.isa), (v15 = this) != 0))
    {
      this = CSStore2::Store::getUnit(a2, v15, a3);
      if (this)
      {
        v16 = this[1];
        v17 = 4 * *this;
        *v5 = a2;
        v5[2] = v17;
        *(v5 + 12) = 0;
        *(v5 + 2) = this + 2;
        v5[6] = v16;
        *(v5 + 32) = 1;
      }
    }
  }

  return this;
}

char *CSStore2::Store::getUnit(CSStore2 **this, const CSStore2::Table *a2, unsigned int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_40;
  }

  v4 = *(a2 + 19);
  if (v4 == -1)
  {
    goto LABEL_40;
  }

  v6 = *this;
  v7 = *(v6 + 1);
  if (!v7 || *(v7 + 12) <= v4)
  {
    goto LABEL_40;
  }

  v10 = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::Find(v6, (v7 + v4), a3);
  if (!v10)
  {
    goto LABEL_40;
  }

  v11 = *v10;
  if (v11 == -1)
  {
    goto LABEL_40;
  }

  v12 = *(*this + 1);
  v13 = *(v12 + 12);
  if (!v12 || v13 <= v11)
  {
    goto LABEL_40;
  }

  v15 = (v12 + v11);
  *v10;
  *v10;
  v16 = v11 + 1 > v13 || v11 == -1;
  if (v12 + v11 < v12 || v16)
  {
    LODWORD(v11) = -1;
  }

  if (v11 >= 0xFFFFFFF8 || v11 + 8 > v13)
  {
    v23 = CSStore2::GetLog(v10);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v27 = (4 * *a2);
      v28 = *this;
      if (*this)
      {
        v28 = *(v28 + 1);
      }

      v35 = 134218496;
      v36 = v27;
      v37 = 2048;
      v38 = a3;
      v39 = 2048;
      v40 = v15 - v28;
      v26 = "*** CSStore corruption detected (1). %llx %llx %llx";
      v29 = v23;
      v30 = 32;
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v17 = *(v15 + 1) + 8;
  v18 = __CFADD__(v11, v17);
  v19 = v11 + v17;
  if (v18 || v19 > v13)
  {
    v23 = CSStore2::GetLog(v10);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v33 = (4 * *a2);
      v34 = *v15;
      v35 = 134218752;
      v36 = v33;
      v37 = 2048;
      v38 = a3;
      v39 = 2048;
      v40 = (4 * v34);
      v41 = 2048;
      v42 = v34 >> 30;
      v26 = "*** CSStore corruption detected (2). %llx %llx %llx %llx";
      goto LABEL_43;
    }

LABEL_39:

LABEL_40:
    v15 = 0;
    goto LABEL_41;
  }

  v20 = (*v15 & 0xC0000000) != 0x40000000;
  if ((v12 + 20) == a2)
  {
    v20 = 1;
    v21 = (*v15 & 0xC0000000) == 0x40000000;
  }

  else
  {
    v21 = 1;
  }

  v22 = a3 != 4 * *v15 || !v20;
  if (v22 || !v21)
  {
    v23 = CSStore2::GetLog(v10);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v24 = (4 * *a2);
      v25 = *v15;
      v35 = 134218752;
      v36 = v24;
      v37 = 2048;
      v38 = a3;
      v39 = 2048;
      v40 = (4 * v25);
      v41 = 2048;
      v42 = v25 >> 30;
      v26 = "*** CSStore corruption detected (3). %llx %llx %llx %llx";
LABEL_43:
      v29 = v23;
      v30 = 42;
LABEL_44:
      _os_log_fault_impl(&dword_1B9D5B000, v29, OS_LOG_TYPE_FAULT, v26, &v35, v30);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

LABEL_41:
  v31 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::Find(CSStore2 *a1, int *a2, unsigned int a3)
{
  v25 = *MEMORY[0x1E69E9840];
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
    goto LABEL_17;
  }

  if (*a2 > 0x2000)
  {
    v12 = CSStore2::GetLog(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = *a2;
      v22[0] = 67109376;
      v22[1] = v21;
      v23 = 1024;
      v24 = 0x2000;
      _os_log_error_impl(&dword_1B9D5B000, v12, OS_LOG_TYPE_ERROR, "Impossible bucket count %u when %u is the maximum.", v22, 0xEu);
    }

    goto LABEL_17;
  }

  v5 = &a2[2 * ((a3 >> 2) % *a2)];
  v8 = v5[1];
  v6 = v5 + 1;
  v7 = v8;
  if (!v8)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    v9 = v6[1];
    if (v9 != -1)
    {
      v10 = 0;
      v11 = *(a1 + 1);
      if (v11)
      {
        if (*(v11 + 12) > v9)
        {
          v10 = v11 + v9 + 4;
          if (*(v11 + v9) != a3)
          {
            v10 = 0;
          }
        }
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = v6[1];
  if (v15 == -1)
  {
    v18 = 0;
  }

  else
  {
    v16 = *(a1 + 1);
    v17 = *(v16 + 12) > v15;
    v18 = (v16 + v15);
    if (!v17)
    {
      v18 = 0;
    }
  }

  v19 = 8 * v7;
  v20 = &v18[2 * v7];
  do
  {
    if (*v18 == a3)
    {
      break;
    }

    v18 += 2;
    v19 -= 8;
  }

  while (v19);
  if (v18 == v20)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v18 + 1);
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _CSStringCopyCFString(uint64_t a1, unsigned int a2)
{
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::String::Get(v10, (a1 + 8), a2);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = 1;
  v5 = CSStore2::String::getNSStringNoCopy(v8);
  v6 = [v5 copy];

  return v6;
}

id CSStore2::String::getNSStringNoCopy(CSStore2::String *this)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = (this + 16);
  if ((*(this + 12) & 1) == 0)
  {
    v3 = *v3;
  }

  v4 = [v2 initWithBytesNoCopy:v3 length:*(this + 6) encoding:4 freeWhenDone:0];

  return v4;
}

void CSStore2::Array::enumerateValues(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = *v4 & 0x1FFFFFFF;
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7 > 0xFF)
  {
    CSStore2::Array::getAllValues(v21, a1);
    v12 = v21[0];
    LOBYTE(v21[0]) = 0;
    v13 = v12;
  }

  else
  {
    if ((*v4 & 0x20000000) != 0)
    {
      if (!v7)
      {
        goto LABEL_21;
      }

      v14 = (v4 + 1);
      v15 = v22;
      v16 = v7;
      do
      {
        v17 = *v14++;
        *v15++ = v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      if (!v7)
      {
        goto LABEL_21;
      }

      v8 = v4 + 1;
      v9 = v22;
      v10 = v7;
      do
      {
        v11 = *v8++;
        *v9++ = v11;
        --v10;
      }

      while (v10);
    }

    LOBYTE(v21[0]) = 0;
    v13 = 0;
    v12 = v22;
  }

  v18 = 0;
  v19 = v7 - 1;
  do
  {
    (*(v3 + 2))(v3, v18, v12, v21);
    if (v21[0])
    {
      break;
    }

    v12 += 4;
  }

  while (v19 != v18++);
  if (v13)
  {
    operator delete(v13);
  }

LABEL_21:
}

char *CSStoreGetHeader(uint64_t a1, unsigned int a2, _DWORD *a3)
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
    v8 = result;
    result += 80;
    if (a3)
    {
      *a3 = *(v8 + 4) - 72;
    }
  }

  return result;
}

char *CSStore2::Store::getTable(CSStore2::Store *this, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 != -37516)
  {
    if (a2 > 0xFF)
    {
      v8 = CSStore2::GetLog(this);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134218240;
        v13 = a2;
        v14 = 2048;
        v15 = a2 >> 2;
        _os_log_debug_impl(&dword_1B9D5B000, v8, OS_LOG_TYPE_DEBUG, "Table %llu (shifted %llu) cannot fit in the in-memory table offset list. Consider lengthening the tableOffsets field.", &v12, 0x16u);
      }
    }

    else
    {
      v4 = *(this + (a2 >> 2) + 2);
      if (v4 != -1)
      {
        v5 = *(*this + 8);
        if (v5 && *(v5 + 12) > v4)
        {
          Unit = (v5 + v4);
          goto LABEL_17;
        }
      }
    }
  }

  v9 = *this;
  if (*this)
  {
    v9 = *(v9 + 8);
  }

  Unit = (v9 + 20);
  if (a2 != -37516)
  {
    Unit = CSStore2::Store::getUnit(this, Unit, a2);
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return Unit;
}

uint64_t CSMapSync(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 64));
  v4 = 4294967246;
  if (a1 && a2)
  {
    v5 = *(a2 + 68);
    if (v5 == CSStoreGetGeneration(a1))
    {
      v4 = 0;
    }

    else
    {
      *(a2 + 68) = CSStoreGetGeneration(a1);
      Header = CSStoreGetHeader(a1, *a2, 0);
      *(a2 + 72) = Header;
      if (Header && (Unit = CSStoreGetUnit(a1, *a2, *(Header + 1), 0), (*(a2 + 80) = Unit) != 0))
      {
        v4 = 0;
        *(a2 + 88) = &Unit[4 * *(*(a2 + 72) + 8)];
      }

      else
      {
        v4 = 4294957800;
      }
    }
  }

  os_unfair_lock_unlock((a2 + 64));
  return v4;
}

uint64_t CSMapGetValue(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  result = CSMapSync(a1, a2);
  if (!result)
  {
    v9 = 0;
    result = _CSMapFindBucketForKey(a1, a2, a3, &v9, 0);
    if (!result)
    {
      *a4 = *(a2[11] + 4 * v9);
    }
  }

  return result;
}

void _CSStringBindingEnumerate(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (v7)
        {
          v8 = 0;
          CSMapGetValue(a1, a2, a3, &v8);
          if (v8)
          {
            _CSArrayEnumerateAllValues(a1, v8, v7);
          }
        }
      }
    }
  }
}

uint64_t _CSMapFindBucketForKey(uint64_t a1, void *a2, uint64_t a3, int *a4, int *a5)
{
  v7 = a3;
  *a4 = -1;
  if (a5)
  {
    *a5 = -1;
  }

  v10 = a2[3];
  v11 = a3;
  if (v10)
  {
    v11 = v10(a1, a2, a3);
  }

  v13 = a2[9];
  v12 = a2[10];
  v14 = v13[2];
  v15 = v11 % v14;
  v16 = v13[5];
  v17 = v13[6];
  v18 = v15;
  if (a5)
  {
    while (1)
    {
      v19 = *(v12 + 4 * v18);
      if (v19 == v16)
      {
        if (*a5 == -1)
        {
          *a5 = v18;
        }

LABEL_56:
        if (*a4 == -1)
        {
          return 4294957797;
        }

        else
        {
          return 0;
        }
      }

      if (v19 == v17)
      {
        break;
      }

      if (v19 == v7 && *a4 == -1)
      {
        *a4 = v18;
        v20 = *a5;
        goto LABEL_11;
      }

LABEL_15:
      if (++v18 >= v14)
      {
        if (v15)
        {
          v23 = 0;
          while (1)
          {
            v24 = *(v12 + 4 * v23);
            if (v24 == v16)
            {
              if (*a5 == -1)
              {
                *a5 = v23;
              }

              goto LABEL_56;
            }

            if (v24 == v17)
            {
              break;
            }

            if (v24 == v7 && *a4 == -1)
            {
              *a4 = v23;
              v25 = *a5;
              goto LABEL_35;
            }

LABEL_39:
            if (++v23 >= v15)
            {
              return 4294957797;
            }
          }

          if (*a5 == -1)
          {
            *a5 = v23;
          }

          v25 = *a4;
LABEL_35:
          if (v25 != -1)
          {
            return 0;
          }

          goto LABEL_39;
        }

        return 4294957797;
      }
    }

    if (*a5 == -1)
    {
      *a5 = v18;
    }

    v20 = *a4;
LABEL_11:
    if (v20 != -1)
    {
      return 0;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v22 = *(v12 + 4 * v18);
    if (v22 == v16)
    {
      break;
    }

    if (v22 == v7 && v22 != v17)
    {
      result = 0;
      *a4 = v18;
      return result;
    }

    if (++v18 >= v14)
    {
      if (v15)
      {
        v27 = 0;
        result = 4294957797;
        while (1)
        {
          v28 = *(v12 + 4 * v27);
          if (v28 == v16)
          {
            break;
          }

          if (v28 == v7 && v28 != v17)
          {
            result = 0;
            *a4 = v27;
            return result;
          }

          if (++v27 >= v15)
          {
            return result;
          }
        }
      }

      return 4294957797;
    }
  }

  return 4294957797;
}

uint64_t CSStoreGetGeneration(uint64_t a1)
{
  if (performConstantAssertions == 1)
  {
    v2 = *(a1 + 344);
    if (v2)
    {
      (*(**(v2 + 8) + 8))(*(v2 + 8));
    }
  }

  return *(*(*(a1 + 8) + 8) + 8);
}

void _CSArrayEnumerateAllValues(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (performConstantAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (*(**(v6 + 8) + 8))(*(v6 + 8));
    }
  }

  CSStore2::Array::Get(&v12, (a1 + 8), a2);
  if (v14)
  {
    v9 = v12;
    v10 = v13;
    v11 = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___CSArrayEnumerateAllValues_block_invoke;
    v7[3] = &unk_1E7ED3BE8;
    v8 = v5;
    CSStore2::Array::enumerateValues(&v9, v7);
  }
}

void CSStore2::Array::Get(CSStore2::Array *this, CSStore2::Store *a2, unsigned int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 24) = 0;
  Table = *(a2 + 33);
  if (Table || (Table = CSStore2::Store::getTable(a2, &cfstr_Array.isa)) != 0)
  {
    Unit = CSStore2::Store::getUnit(a2, Table, a3);
    if (Unit)
    {
      *(this + 24) = 1;
      *this = a2;
      *(this + 1) = Unit + 2;
      *(this + 2) = 0;
      *(this + 5) = a3;
      v8 = Unit[1];
      if (v8 <= 3)
      {
        v10 = CSStore2::GetLog(Unit);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v14 = 134217984;
          v15 = v8;
          _os_log_error_impl(&dword_1B9D5B000, v10, OS_LOG_TYPE_ERROR, "Underflow getting array capacity (%llu)", &v14, 0xCu);
        }

        v12 = CSStore2::GetLog(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v14) = 0;
          _os_log_error_impl(&dword_1B9D5B000, v12, OS_LOG_TYPE_ERROR, "Size of array unit was invalid for a CSArray; discarding", &v14, 2u);
        }

        *this = 0;
        *(this + 24) = 0;
      }

      else
      {
        v9 = 1;
        if ((Unit[2] & 0x20000000) == 0)
        {
          v9 = 2;
        }

        *(this + 4) = (v8 - 4) >> v9;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

char *CSStoreGetUnit(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  if (!a3)
  {
    return 0;
  }

  if (performConstantAssertions == 1)
  {
    v8 = *(a1 + 344);
    if (v8)
    {
      (*(**(v8 + 8) + 8))(*(v8 + 8));
    }
  }

  result = CSStore2::Store::getTable((a1 + 8), a2);
  if (result)
  {
    result = CSStore2::Store::getUnit((a1 + 8), result, a3);
    if (result)
    {
      v10 = result;
      result += 8;
      if (a4)
      {
        *a4 = *(v10 + 1);
      }
    }
  }

  return result;
}

uint64_t _CSArrayGetCount(uint64_t a1, unsigned int a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::Array::Get(v7, (a1 + 8), a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v5 = *v7[1] & 0x1FFFFFFF;
  if (v5 >= v8)
  {
    return v8;
  }

  else
  {
    return v5;
  }
}

UInt8 *_CSStoreCreateDataWithUnitNoCopy(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (performConstantAssertions == 1)
  {
    v7 = *(a1 + 344);
    if (v7)
    {
      (*(**(v7 + 8) + 8))(*(v7 + 8));
    }
  }

  length = 0;
  Unit = CSStoreGetUnit(a1, a2, a3, &length);
  v9 = Unit;
  if (Unit)
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = *(v10 + 8);
      v12 = v11;
    }

    else
    {
      v12 = 0;
      v11 = MEMORY[8];
    }

    v13 = Unit - v12;
    v14 = length;
    if (__CFADD__(v13, length) || v13 + length > *(v11 + 12))
    {
LABEL_15:
      v19 = CFDataCreate(*MEMORY[0x1E695E480], v9, v14);
      if (!v19)
      {
        v9 = 0;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v15 = v11 + v13;
    if (atomic_fetch_add((a1 + 304), 1uLL) < 15)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v15 length:v14];
      if (!v19)
      {
LABEL_14:
        LODWORD(v14) = length;
        goto LABEL_15;
      }
    }

    else
    {
      v16 = *(a1 + 8);
      length_4[0] = MEMORY[0x1E69E9820];
      length_4[1] = 3221225472;
      length_4[2] = ___ZNK8CSStore25Store9getNSDataEjj_block_invoke;
      length_4[3] = &unk_1E7ED35F8;
      v17 = v16;
      v23 = v17;
      v18 = MEMORY[0x1BFAE6310](length_4);
      v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v15 length:v14 deallocator:v18];

      if (!v19)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v9 = v19;
  }

LABEL_18:
  objc_autoreleasePoolPop(v6);
  return v9;
}

uint64_t CSStringBindingFindStringAndBindings(uint64_t a1, void *a2, CSStore2::_StringFunctions *a3, const char *a4, _DWORD *a5, _DWORD *a6)
{
  v10 = _CSGetStringForCharacters(a1, a3, a4);
  if (!v10)
  {
    return 4294957797;
  }

  if (a5)
  {
    *a5 = v10;
  }

  Bindings = _CSStringBindingGetBindings(a1, a2, v10);
  if (!Bindings)
  {
    return 4294957797;
  }

  if (!a6)
  {
    return 0;
  }

  v12 = Bindings;
  result = 0;
  *a6 = v12;
  return result;
}

uint64_t _CSStringBindingGetBindings(uint64_t a1, void *a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  if (a1 && a2)
  {
    if (a3)
    {
      CSMapGetValue(a1, a2, a3, &v5);
      return v5;
    }
  }

  return result;
}

vm_address_t CSStore2::VM::AllocateCopy(CSStore2::VM *this, const void *a2, CSStore2::VM *a3)
{
  v3 = a3;
  v4 = a2;
  v6 = CSStore2::VM::Allocate(a3);
  v7 = v6;
  if (v6)
  {
    if (v3 >= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v3;
    }

    CSStore2::VM::Copy(v6, this, v8);
  }

  return v7;
}

vm_address_t CSStore2::VM::Allocate(CSStore2::VM *this)
{
  v14 = *MEMORY[0x1E69E9840];
  address = 0;
  v1 = *MEMORY[0x1E69E9AC8];
  v2 = this + *MEMORY[0x1E69E9AC8] - 1;
  if (v2 == v2 % *MEMORY[0x1E69E9AC8])
  {
    v3 = v1;
  }

  else
  {
    v3 = v2 / v1 * v1;
  }

  v4 = vm_allocate(*MEMORY[0x1E69E9A60], &address, v3, 721420289);
  result = address;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = address == 0;
  }

  if (v6)
  {
    v7 = CSStore2::GetLog(address);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v11 = v3;
      v12 = 2048;
      v13 = v4;
      _os_log_error_impl(&dword_1B9D5B000, v7, OS_LOG_TYPE_ERROR, "Failed to allocate %llu bytes with kernel error %llx.", buf, 0x16u);
    }

    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _CSArrayGetValueAtIndex(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = 0;
  v19 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (performConstantAssertions == 1)
    {
      v7 = *(a1 + 344);
      if (v7)
      {
        (*(**(v7 + 8) + 8))(*(v7 + 8));
      }
    }

    CSStore2::Array::Get(&v16, (a1 + 8), a2);
    if (v18)
    {
      v9 = **&v17[4] & 0x1FFFFFFF;
      if (v9 >= *&v17[12])
      {
        v10 = *&v17[12];
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= a3)
      {
        v13 = CSStore2::GetLog(v8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v16 = 134218240;
          *v17 = a3;
          *&v17[8] = 2048;
          *&v17[10] = v10;
          _os_log_error_impl(&dword_1B9D5B000, v13, OS_LOG_TYPE_ERROR, "Out-of-bounds array read: %llu >= %llu", &v16, 0x16u);
        }

        v14 = 0;
      }

      else
      {
        v11 = *&v17[4] + 4;
        if ((**&v17[4] & 0x20000000) != 0)
        {
          v12 = *(v11 + 2 * a3);
        }

        else
        {
          v12 = *(v11 + 4 * a3);
        }

        v14 = v12 | 0x100000000;
      }

      if (v14 <= 0x100000000)
      {
        result = 0x100000000;
      }

      else
      {
        result = v14;
      }
    }

    else
    {
      result = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void _CSStoreAccessContextAccessForRead(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___CSStoreAccessContextAccessForRead_block_invoke;
  v7[3] = &unk_1E7ED38F8;
  v8 = v3;
  v9 = a1;
  v5 = *(*v4 + 16);
  v6 = v3;
  v5(v4, v7);
}

void CSStore2::CSStoreSharedReadingAccessContext::accessForReading(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = pthread_self();
  os_unfair_lock_lock((a1 + 8));
  if (std::__hash_table<_opaque_pthread_t *,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,std::allocator<_opaque_pthread_t *>>::find<_opaque_pthread_t *>((a1 + 16), v3))
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"virtual void CSStore2::CSStoreSharedReadingAccessContext::accessForReading(void (^ _Nonnull __strong)())"];
    [v24 handleFailureInFunction:v25 file:@"CSStoreAccessContextPrivInternal.h" lineNumber:206 description:@"context already held for reading"];
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ HIDWORD(v3));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(v3) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = *(a1 + 24);
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*(a1 + 16) + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[2] != v3)
  {
    goto LABEL_19;
  }

  os_unfair_lock_unlock((a1 + 8));
  v26[2]();
  os_unfair_lock_lock((a1 + 8));
  v13 = std::__hash_table<_opaque_pthread_t *,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,std::allocator<_opaque_pthread_t *>>::find<_opaque_pthread_t *>((a1 + 16), v3);
  if (v13)
  {
    v14 = *(a1 + 24);
    v15 = v13[1];
    v16 = vcnt_s8(v14);
    v16.i16[0] = vaddlv_u8(v16);
    if (v16.u32[0] > 1uLL)
    {
      if (v15 >= *&v14)
      {
        v15 %= *&v14;
      }
    }

    else
    {
      v15 &= *&v14 - 1;
    }

    v17 = *(a1 + 16);
    v18 = *(v17 + 8 * v15);
    do
    {
      v19 = v18;
      v18 = *v18;
    }

    while (v18 != v13);
    if (v19 == (a1 + 32))
    {
      goto LABEL_39;
    }

    v20 = v19[1];
    if (v16.u32[0] > 1uLL)
    {
      if (v20 >= *&v14)
      {
        v20 %= *&v14;
      }
    }

    else
    {
      v20 &= *&v14 - 1;
    }

    if (v20 != v15)
    {
LABEL_39:
      if (!*v13)
      {
        goto LABEL_40;
      }

      v21 = *(*v13 + 8);
      if (v16.u32[0] > 1uLL)
      {
        if (v21 >= *&v14)
        {
          v21 %= *&v14;
        }
      }

      else
      {
        v21 &= *&v14 - 1;
      }

      if (v21 != v15)
      {
LABEL_40:
        *(v17 + 8 * v15) = 0;
      }
    }

    v22 = *v13;
    if (*v13)
    {
      v23 = *(v22 + 8);
      if (v16.u32[0] > 1uLL)
      {
        if (v23 >= *&v14)
        {
          v23 %= *&v14;
        }
      }

      else
      {
        v23 &= *&v14 - 1;
      }

      if (v23 != v15)
      {
        *(*(a1 + 16) + 8 * v23) = v19;
        v22 = *v13;
      }
    }

    *v19 = v22;
    *v13 = 0;
    --*(a1 + 40);
    operator delete(v13);
  }

  os_unfair_lock_unlock((a1 + 8));
}

void *std::__hash_table<_opaque_pthread_t *,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,std::allocator<_opaque_pthread_t *>>::find<_opaque_pthread_t *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
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
        if (result[2] == a2)
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

id CSStore2::Store::encodeAsXPCObject(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *MEMORY[0x1E69E9AC8];
    v4 = *(a1 + 16) + *MEMORY[0x1E69E9AC8] - 1;
    if (v4 == v4 % *MEMORY[0x1E69E9AC8])
    {
      v5 = v3;
    }

    else
    {
      v5 = v4 / v3 * v3;
    }

    a1 = *(a1 + 8);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9AC8];
    v7 = *MEMORY[0x1E69E9AC8] - 1;
    if (v7 == v7 % *MEMORY[0x1E69E9AC8])
    {
      v5 = v6;
    }

    else
    {
      v5 = v7 / v6 * v6;
    }
  }

  Copy = CSStore2::VM::AllocateCopy(a1, v5, v5);
  v9 = CSStore2::GetLog(Copy);
  v10 = v9;
  if (Copy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v33 = v5;
      _os_log_debug_impl(&dword_1B9D5B000, v10, OS_LOG_TYPE_DEBUG, "Creating dispatch_data for XPC coder with length %llu", buf, 0xCu);
    }

    if (CSStore2::Store::_GetDispatchDataDeallocatorQueue(void)::once != -1)
    {
      dispatch_once(&CSStore2::Store::_GetDispatchDataDeallocatorQueue(void)::once, &__block_literal_global_120);
    }

    v11 = CSStore2::Store::_GetDispatchDataDeallocatorQueue(void)::result;
    v12 = dispatch_data_create(Copy, v5, v11, *MEMORY[0x1E69E9660]);

    if (v12)
    {
      v14 = xpc_data_create_with_dispatch_data(v12);
      if (v14)
      {

        v15 = 0;
        goto LABEL_30;
      }

      v21 = CSStore2::GetLog(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B9D5B000, v21, OS_LOG_TYPE_ERROR, "Could not create XPC data from dispatch data while encoding store.", buf, 2u);
      }

      v22 = MEMORY[0x1E696ABC0];
      v30[0] = *MEMORY[0x1E696A278];
      v30[1] = @"Line";
      v31[0] = @"kCSStoreAllocFailedErr";
      v31[1] = &unk_1F37D7B20;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v20 = [v22 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v19];
    }

    else
    {
      v17 = CSStore2::GetLog(v13);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B9D5B000, v17, OS_LOG_TYPE_ERROR, "could not create dispatch data from store mapping while encoding store.", buf, 2u);
      }

      CSStore2::VM::Deallocate(Copy, v5);
      v18 = MEMORY[0x1E696ABC0];
      v28[0] = *MEMORY[0x1E696A278];
      v28[1] = @"Line";
      v29[0] = @"kCSStoreAllocFailedErr";
      v29[1] = &unk_1F37D7B38;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
      v20 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v19];
    }

    v15 = v20;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D5B000, v10, OS_LOG_TYPE_ERROR, "could not create a copy of the store mapping while encoding store.", buf, 2u);
    }

    v16 = MEMORY[0x1E696ABC0];
    v26[0] = *MEMORY[0x1E696A278];
    v26[1] = @"Line";
    v27[0] = @"kCSStoreAllocFailedErr";
    v27[1] = &unk_1F37D7B50;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v15 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v12];
  }

  if (a2)
  {
    v23 = v15;
    v14 = 0;
    *a2 = v15;
  }

  else
  {
    v14 = 0;
  }

LABEL_30:

  v24 = *MEMORY[0x1E69E9840];

  return v14;
}

void CSStore2::VM::Copy(NSUInteger this, NSUInteger a2, const void *a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a3;
  v9.location = a2;
  v9.length = v6;
  v10.location = this;
  v10.length = v6;
  if (!NSIntersectionRange(v9, v10).length)
  {
    if (v3 < 0x80000)
    {
      goto LABEL_5;
    }

    if (((NSPageSize() - 1) & (v4 | this)) == 0)
    {
      v7 = NSRoundDownToMultipleOfPageSize(v6);
      NSCopyMemoryPages(v4, this, v7);
      v4 += v7;
      this += v7;
      v6 -= v7;
LABEL_5:
      if (!v6)
      {
        return;
      }
    }
  }

  memmove(this, v4, v6);
}

id CSStore2::GetLog(CSStore2 *this)
{
  if (CSStore2::GetLog(void)::once != -1)
  {
    dispatch_once(&CSStore2::GetLog(void)::once, &__block_literal_global_813);
  }

  v2 = CSStore2::GetLog(void)::result;

  return v2;
}

void CSStore2::Store::CreateWithXPCObject(id **a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  *a1 = 0;
  if (!v5 || MEMORY[0x1BFAE65F0](v5) != MEMORY[0x1E69E9E70])
  {
    v7 = MEMORY[0x1E696ABC0];
    v21[0] = *MEMORY[0x1E696A278];
    v21[1] = @"Line";
    v22[0] = @"paramErr";
    v22[1] = &unk_1F37D7B08;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v9 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v8];

    goto LABEL_4;
  }

  length = xpc_data_get_length(v6);
  bytes_ptr = xpc_data_get_bytes_ptr(v6);
  v15 = bytes_ptr;
  if (!bytes_ptr || HIDWORD(length))
  {
    v18 = MEMORY[0x1E696ABC0];
    v23[0] = *MEMORY[0x1E696A278];
    v23[1] = @"Line";
    v24[0] = @"kCSStoreBadDataErr";
    v24[1] = &unk_1F37D7AF0;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v9 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-9496 userInfo:v19];

LABEL_4:
    v10 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v16 = CSStore2::GetLog(bytes_ptr);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = length;
    _os_log_debug_impl(&dword_1B9D5B000, v16, OS_LOG_TYPE_DEBUG, "Creating CSStore from XPC coder with length %llu", buf, 0xCu);
  }

  v20 = 0;
  CSStore2::Store::CreateWithBytes(buf, v15, length, &v20);
  v9 = v20;
  v17 = *buf;
  *buf = 0;
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](a1, v17);
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](buf, 0);
  v10 = *a1 != 0;
  if (a3)
  {
LABEL_5:
    if (!v10)
    {
      v11 = v9;
      *a3 = v9;
    }
  }

LABEL_7:

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B9D5F09C(_Unwind_Exception *a1)
{
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](v2, 0);

  _Unwind_Resume(a1);
}

void _CSStoreEnumerateUnits(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (performConstantAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (*(**(v6 + 8) + 8))(*(v6 + 8));
    }
  }

  if (a2)
  {
    if (v5)
    {
      Table = CSStore2::Store::getTable((a1 + 8), a2);
      if (Table)
      {
        v8 = Table;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = ___CSStoreEnumerateUnits_block_invoke;
        v9[3] = &unk_1E7ED3710;
        v10 = v5;
        CSStore2::Store::enumerateUnits((a1 + 8), v8, v9);
      }
    }
  }
}

void CSStore2::Store::enumerateUnits(atomic_ullong *a1, unsigned int *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    atomic_fetch_add(a1 + 36, 1uLL);
    v7 = a2[19];
    if (v7 != -1)
    {
      v8 = *(*a1 + 8);
      if (*(v8 + 12) > v7)
      {
        v26 = 0;
        context = v6;
        v25 = (v8 + v7);
        v9 = *(v8 + v7);
        if (v9)
        {
          v10 = 0;
          do
          {
            v11 = &v25[2 * v10 + 1];
            v12 = *v11;
            if (*v11 && (v13 = v12 >> 29) == 0)
            {
              v14 = v11[1];
              v15 = *(*a1 + 8);
              v16 = *(v15 + 12);
              v17 = __CFADD__(v14, 8 * v12);
              v18 = v14 + 8 * v12;
              v19 = v17;
              if (v16 > v14 && (v19 & 1) == 0 && v18 <= v16)
              {
                v20 = (v15 + v14);
                v21 = 1;
                do
                {
                  v22 = *v20;
                  v20 += 2;
                  Unit = CSStore2::Store::getUnit(a1, a2, v22);
                  if (Unit)
                  {
                    v5[2](v5, Unit, &v26);
                  }

                  LOBYTE(v13) = v26;
                  if (v21 >= *v11)
                  {
                    break;
                  }

                  ++v21;
                }

                while ((v26 & 1) == 0);
                v9 = *v25;
              }
            }

            else
            {
              LOBYTE(v13) = 0;
            }

            ++v10;
          }

          while (v10 < v9 && (v13 & 1) == 0);
        }

        v6 = context;
      }
    }

    atomic_fetch_add(a1 + 36, 0xFFFFFFFFFFFFFFFFLL);
    objc_autoreleasePoolPop(v6);
  }
}

void ___ZN8CSStore26GetLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.coreservicesstore", "default");
  v1 = CSStore2::GetLog(void)::result;
  CSStore2::GetLog(void)::result = v0;
}

void CSStore2::Store::CreateWithBytes(id **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  if (a2 && a3)
  {
    v13 = 0;
    CSStore2::Store::_Create(&v14, a2, a3, 1, 0, &v13);
    v6 = v13;
    v7 = v14;
    v14 = 0;
    std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](a1, v7);
    std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&v14, 0);
    v8 = *a1 != 0;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v15[0] = *MEMORY[0x1E696A278];
    v15[1] = @"Line";
    v16[0] = @"paramErr";
    v16[1] = &unk_1F37D7AA8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v6 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v10];

    v8 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if (!v8)
  {
    v11 = v6;
    *a4 = v6;
  }

LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

NSString *_CSStoreGetTableWithName(uint64_t a1, NSString *a2)
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

  if (a2)
  {
    Table = CSStore2::Store::getTable((a1 + 8), a2);
    if (Table)
    {
      a2 = (4 * *Table);
    }

    else
    {
      a2 = 0;
    }
  }

  objc_autoreleasePoolPop(v4);
  return a2;
}

atomic_ullong CSStore2::Store::getTable(atomic_ullong *this, NSString *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(NSString *)v3 isEqualToString:@"<catalog>"])
  {
    v4 = *this;
    if (*this)
    {
      v4 = *(v4 + 8);
    }

    v5 = v4 + 20;
    v11[3] = v4 + 20;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZNK8CSStore25Store8getTableEP8NSString_block_invoke;
    v7[3] = &unk_1E7ED3620;
    v8 = v3;
    v9 = &v10;
    CSStore2::Store::enumerateTables(this, v7);

    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_1B9D605CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CSStore2::Store::setBytesNoCopy(CSStore2::Store *this, void *a2, uint64_t a3)
{
  CSStore2::Store::assertNotEnumeratingUnits(this);
  if (a2)
  {
    v6 = *this;
    *this = 0;

    v7 = [[_CSStore2DataContainer alloc] initWithBytesNoCopy:a2 length:a3];
    v8 = *this;
    *this = v7;

    CSStore2::Store::_dataDidMove(this);
    atomic_store(0, this + 37);
  }

  else
  {
    if (a3 <= 0x40000)
    {
      a3 = 0x40000;
    }

    else
    {
      a3 = a3;
    }

    v9 = CSStore2::VM::Allocate(a3);
    if (v9)
    {
      v10 = v9;
      *(v9 + 4) = 0u;
      *(v9 + 84) = 0;
      *(v9 + 68) = 0u;
      *(v9 + 52) = 0u;
      *(v9 + 36) = 0u;
      *(v9 + 20) = 0u;
      *v9 = 1819501666;
      *(v9 + 4) = 2;
      *(v9 + 92) = 0xFFFFFFFF00000000;
      *(v9 + 12) = xmmword_1B9D88C70;
      CSStore2::Table::setName((v9 + 20), &cfstr_Catalog.isa);
      CSStore2::Store::setBytesNoCopy(this, v10, a3);
      v11 = *this;
      if (*this)
      {
        v12 = *(v11 + 8);
        v13 = v12 + 20;
      }

      else
      {
        v12 = 0;
        v13 = 20;
      }

      v14 = -1;
      v15 = v13 >= v12;
      v16 = v13 - v12;
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
      if (!v18 || ((v19 = *this) == 0 ? (v20 = 0) : (v20 = *(v19 + 8)), (v21 = v18 - v20, v18 < v20) || HIDWORD(v21) || v21 == -1 || (v21 + 1) > *(*(v19 + 8) + 12)))
      {
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v24);
      }

      else
      {
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v24);
        *(*(*this + 8) + v14 + 76) = v21;
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void CSStore2::Store::setBytesNoCopy(void *, _CSStoreSize)"}];
      [v23 handleFailureInFunction:v22 file:@"CSStore+Store.mm" lineNumber:830 description:@"Failed to create data for empty bytes argument!"];
    }
  }
}

id **std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1BFAE5CB0);
  }

  return result;
}

void CSStore2::Store::enumerateTables(atomic_ullong *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*a1)
    {
      v5 = *(*a1 + 8);
    }

    else
    {
      v5 = 0;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZNK8CSStore25Store15enumerateTablesEU13block_pointerFvPKNS_5TableEPbE_block_invoke;
    v6[3] = &unk_1E7ED3710;
    v7 = v3;
    CSStore2::Store::enumerateUnits(a1, (v5 + 20), v6);
  }
}

uint64_t CSStore2::Store::assertNotEnumeratingUnits(uint64_t this)
{
  if (atomic_load((this + 288)))
  {
    abort();
  }

  return this;
}

void ___ZNK8CSStore25Store8getTableEP8NSString_block_invoke(uint64_t a1, CSStore2::Table *this, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = CSStore2::Table::copyCFName(this);
  LODWORD(v6) = [v6 isEqualToString:v7];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = this;
    *a3 = 1;
  }
}

atomic_ullong CSStore2::Store::_dataDidMove(CSStore2::Store *this)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(this + 248) = v2;
  *(this + 232) = v2;
  *(this + 216) = v2;
  *(this + 200) = v2;
  *(this + 184) = v2;
  *(this + 168) = v2;
  *(this + 152) = v2;
  *(this + 136) = v2;
  *(this + 120) = v2;
  *(this + 104) = v2;
  *(this + 88) = v2;
  *(this + 72) = v2;
  *(this + 56) = v2;
  *(this + 40) = v2;
  *(this + 24) = v2;
  *(this + 8) = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN8CSStore25Store12_dataDidMoveEv_block_invoke;
  v4[3] = &__block_descriptor_40_e47_v24__0r__Table__Unit_b30b2I_0c___48c_QQII_8_B16l;
  v4[4] = this;
  CSStore2::Store::enumerateTables(this, v4);
  *(this + 33) = CSStore2::Store::getTable(this, &cfstr_Array.isa);
  *(this + 34) = CSStore2::Store::getTable(this, &cfstr_String_0.isa);
  result = CSStore2::Store::getTable(this, &cfstr_Dictionary.isa);
  *(this + 35) = result;
  return result;
}

CFStringRef CSStore2::Table::copyCFName(CSStore2::Table *this)
{
  v2 = strnlen(this + 8, 0x30uLL);
  v3 = *MEMORY[0x1E695E480];
  v4 = *MEMORY[0x1E695E498];

  return CFStringCreateWithBytesNoCopy(v3, this + 8, v2, 0x8000100u, 0, v4);
}

uint64_t CSMapInit(uint64_t a1, NSString *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  TableWithName = _CSStoreGetTableWithName(a1, a2);
  *a5 = TableWithName;
  if (!TableWithName)
  {
    return 4294957797;
  }

  if (a3)
  {
    v10 = *a3;
    v11 = a3[1];
    *(a5 + 40) = a3[2];
    *(a5 + 24) = v11;
  }

  else
  {
    v10 = 0uLL;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
  }

  *(a5 + 8) = v10;
  *(a5 + 56) = a4;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  CSMapSync(a1, a5);
  return 0;
}

uint64_t CSStringBindingStoreInit(uint64_t a1, NSString *a2, int a3, char a4, uint64_t a5)
{
  v5 = 4294967246;
  if (a1 && a2 && a5)
  {
    v7[0] = xmmword_1F37D4D38;
    v7[1] = unk_1F37D4D48;
    v7[2] = xmmword_1F37D4D58;
    *(a5 + 96) = a3;
    *(a5 + 100) = a4;
    return CSMapInit(a1, a2, v7, 0, a5);
  }

  return v5;
}

uint64_t ___ZN8CSStore25Store12_dataDidMoveEv_block_invoke(uint64_t result, _DWORD *a2)
{
  v2 = *a2 & 0x3FFFFFFF;
  if (v2 <= 0x3F)
  {
    v3 = *(result + 32);
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = v3 + 1;
    v7 = -1;
    v8 = a2 >= v5;
    v9 = a2 - v5;
    if (v8 && !HIDWORD(v9))
    {
      if ((v9 + 1) > *(*(v4 + 8) + 12) || v9 == -1)
      {
        v7 = -1;
      }

      else
      {
        v7 = v9;
      }
    }

    *(v6 + v2) = v7;
  }

  return result;
}

id **std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x1BFAE5CB0](v2, 0x10A0C40D11E5446);
  }

  return a1;
}

void _CSMapEnumerateKeysAndValues(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 && a2 && v5 && !CSMapSync(a1, a2))
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 1065353216;
    v7 = a2[9];
    if (v7[2])
    {
      v8 = 0;
      do
      {
        v9 = *(a2[10] + 4 * v8);
        if (v7[5] != v9 && v7[6] != v9)
        {
          v10 = *(a2[11] + 4 * v8);
          if (*(&v20 + 1))
          {
            v11 = vcnt_s8(*(&v20 + 8));
            v11.i16[0] = vaddlv_u8(v11);
            if (v11.u32[0] > 1uLL)
            {
              v12 = *(a2[10] + 4 * v8);
              if (*(&v20 + 1) <= v9)
              {
                v12 = v9 % DWORD2(v20);
              }
            }

            else
            {
              v12 = (DWORD2(v20) - 1) & v9;
            }

            v13 = *(v20 + 8 * v12);
            if (v13)
            {
              for (i = *v13; i; i = *i)
              {
                v15 = i[1];
                if (v15 == v9)
                {
                  if (*(i + 4) == v9)
                  {
                    goto LABEL_26;
                  }
                }

                else
                {
                  if (v11.u32[0] > 1uLL)
                  {
                    if (v15 >= *(&v20 + 1))
                    {
                      v15 %= *(&v20 + 1);
                    }
                  }

                  else
                  {
                    v15 &= *(&v20 + 1) - 1;
                  }

                  if (v15 != v12)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }

LABEL_26:
        ++v8;
      }

      while (v8 < v7[2]);
      v16 = v21;
      for (j = 0; v16; v16 = *v16)
      {
        v17 = objc_autoreleasePoolPush();
        (v6)[2](v6, *(v16 + 4), *(v16 + 5), &j);
        v18 = j;
        objc_autoreleasePoolPop(v17);
        if (v18)
        {
          break;
        }
      }
    }

    std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v20);
  }
}

void sub_1B9D61064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v12);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a11);

  _Unwind_Resume(a1);
}

void _CSStringBindingEnumerateAllBindings(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 && a2 && v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___CSStringBindingEnumerateAllBindings_block_invoke;
    v7[3] = &unk_1E7ED3560;
    v8 = v5;
    _CSMapEnumerateKeysAndValues(a1, a2, v7);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(uint64_t a1)
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

void CSStore2::CSStoreSharedReadingAccessContext::assertHeldForReading(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = pthread_self();
  v3 = *&this[6]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ (v2 >> 32));
    v5 = 0x9DDFEA08EB382D69 * ((v2 >> 32) ^ (v4 >> 47) ^ v4);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    v7 = vcnt_s8(v3);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v6;
      if (v6 >= *&v3)
      {
        v8 = v6 % *&v3;
      }
    }

    else
    {
      v8 = v6 & (*&v3 - 1);
    }

    v9 = *(*&this[4]._os_unfair_lock_opaque + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v6 == v11)
        {
          if (i[2] == v2)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v7.u32[0] > 1uLL)
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

          if (v11 != v8)
          {
            break;
          }
        }
      }
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"virtual void CSStore2::CSStoreSharedReadingAccessContext::assertHeldForReading() const"];
  [v12 handleFailureInFunction:v13 file:@"CSStoreAccessContextPrivInternal.h" lineNumber:193 description:@"context not held for reading"];

LABEL_18:

  os_unfair_lock_unlock(this + 2);
}

uint64_t _CSDictionaryCreateWithKeysAndValues(atomic_ullong *a1, char a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7)
{
  v66[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 4) == 0 || (a3 & 3) == 0)
  {
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_71:
    v51 = MEMORY[0x1E696ABC0];
    v63[0] = *MEMORY[0x1E696A278];
    v63[1] = @"Line";
    v64[0] = @"paramErr";
    v64[1] = &unk_1F37D78C8;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v48 = [v51 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v47];
LABEL_72:
    v45 = v48;

    v44 = 0;
    if (!a7)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v49 = [MEMORY[0x1E696AAA8] currentHandler];
  v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CSDictionaryID _CSDictionaryCreateWithKeysAndValues(CSMutableStoreRef _Nonnull, CSDictionaryKeyOptions, CSDictionaryValueOptions, const CSDictionaryKey * _Nonnull, const CSDictionaryValue * _Nonnull, _CSStoreUnitCount, CFErrorRef * _Nullable)"}];
  [v49 handleFailureInFunction:v50 file:@"CSDictionary.mm" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"!( inValueOptions &(kCSDictionaryValueOptionsStringPersonality | kCSDictionaryValueOptionsArrayPersonality))"}];

  if (!a1)
  {
    goto LABEL_71;
  }

LABEL_4:
  if (performMutatingAssertions == 1)
  {
    v13 = a1[43];
    if (v13)
    {
      (***(v13 + 8))(*(v13 + 8));
    }
  }

  Table = a1[36];
  if (!Table)
  {
    Table = CSStore2::Store::getTable(a1 + 1, &cfstr_Dictionary.isa);
    if (!Table)
    {
      Table = CSStore2::Store::allocateTable((a1 + 1), &cfstr_Dictionary.isa, 0, 0);
      if (!Table)
      {
        goto LABEL_69;
      }
    }
  }

  v54 = a7;
  v55 = Table;
  v60 = 0u;
  v61 = 0u;
  v62 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__rehash<true>(&v60, a6);
  if (a6)
  {
    v15 = 0;
    do
    {
      CSStore2::Dictionary::_CopyCanonicalKey(&v57, a1 + 1, *(a4 + 4 * v15), a2);
      if (v59 == 1)
      {
        CSStore2::Dictionary::_TakeOwnershipOfValue((a1 + 1), *(a5 + 4 * v15), a3);
        if (*(&v60 + 1))
        {
          v16 = vcnt_s8(*(&v60 + 8));
          v16.i16[0] = vaddlv_u8(v16);
          if (v16.u32[0] > 1uLL)
          {
            v17 = v58;
            if (*(&v60 + 1) <= v58)
            {
              v17 = v58 % DWORD2(v60);
            }
          }

          else
          {
            v17 = (DWORD2(v60) - 1) & v58;
          }

          v18 = *(v60 + 8 * v17);
          if (v18)
          {
            for (i = *v18; i; i = *i)
            {
              v20 = i[1];
              if (v20 == v58)
              {
                if (*(i + 4) == v58)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                if (v16.u32[0] > 1uLL)
                {
                  if (v20 >= *(&v60 + 1))
                  {
                    v20 %= *(&v60 + 1);
                  }
                }

                else
                {
                  v20 &= *(&v60 + 1) - 1;
                }

                if (v20 != v17)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

LABEL_30:
      ++v15;
    }

    while (v15 != a6);
  }

  v21 = *v55;
  if ((DWORD2(v61) + 1024) >= 0x2000)
  {
    v22 = 0x2000;
  }

  else
  {
    v22 = DWORD2(v61) + 1024;
  }

  if (v22 <= 0x10)
  {
    v22 = 16;
  }

  v23 = 8 * v22 + 8 * (DWORD2(v61) + 1024);
  v24 = (v23 | 4u);
  v25 = CSStore2::Store::extend((a1 + 1), v23 | 4u);
  v26 = v25;
  if (!v25)
  {
    goto LABEL_68;
  }

  v27 = a1[1];
  if (v27)
  {
    v28 = *(v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xFFFFFFFFLL;
  v30 = v25 >= v28;
  v31 = v25 - v28;
  if (v30 && !HIDWORD(v31))
  {
    if ((v31 + 1) > *(*(v27 + 8) + 12) || v31 == -1)
    {
      v29 = 0xFFFFFFFFLL;
    }

    else
    {
      v29 = v31;
    }
  }

  CSStore2::HashMap<unsigned int,unsigned int,CSStore2::Dictionary::_Functions,0ull>::Create(&v57, &v60, v29, 1024, 0);
  v33 = v57;
  if (!v57)
  {
    CSStore2::Store::assertNotEnumeratingUnits((a1 + 1));
    v37 = *(a1[1] + 8);
    v38 = *(v37 + 16);
    v30 = v38 >= v24;
    v39 = v38 - v24;
    if (!v30)
    {
      v39 = 0;
    }

    *(v37 + 16) = v39;
    ++*(v37 + 8);
    goto LABEL_68;
  }

  CSStore2::VM::Copy(v26, v57, v24);
  v57 = 0;
  v58(v33);
  v34 = CSStore2::Store::getTable((a1 + 1), 4 * v21);
  v35 = a1[1];
  if (v35)
  {
    v36 = *(v35 + 8);
  }

  else
  {
    v36 = 0;
  }

  v40 = -1;
  v30 = v26 >= v36;
  v41 = v26 - v36;
  if (v30 && !HIDWORD(v41))
  {
    if ((v41 + 1) > *(*(v35 + 8) + 12) || v41 == -1)
    {
      v40 = -1;
    }

    else
    {
      v40 = v41;
    }
  }

  Unit = CSStore2::Store::allocateUnit((a1 + 1), v34, 8, 0);
  if (!Unit)
  {
LABEL_68:
    std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v60);
    a7 = v54;
LABEL_69:
    v46 = MEMORY[0x1E696ABC0];
    v65[0] = *MEMORY[0x1E696A278];
    v65[1] = @"Line";
    v66[0] = @"kCSStoreAllocFailedErr";
    v66[1] = &unk_1F37D78B0;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v48 = [v46 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v47];
    goto LABEL_72;
  }

  Unit->var3[0] = a2;
  Unit->var3[1] = a3;
  *&Unit->var3[2] = 0;
  *&Unit->var3[4] = v40;
  v44 = (4 * *Unit);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v60);
  v45 = 0;
  a7 = v54;
  if (!v54)
  {
    goto LABEL_75;
  }

LABEL_73:
  if (!v44)
  {
    *a7 = v45;
  }

LABEL_75:

  v52 = *MEMORY[0x1E69E9840];
  return v44;
}

Unit *_CSDictionaryDispose(Unit *result, CSStore2::Store *a2)
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

    return CSStore2::Dictionary::Dispose(v3->var3, a2);
  }

  return result;
}

uint64_t _CSDictionaryGetCount(uint64_t a1, unsigned int a2)
{
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::Dictionary::Get(v8, (a1 + 8), a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v5 = v8[0];
  v6 = *(v8[1] + 4);

  return CSStore2::Dictionary::getCount(v5, v6);
}

uint64_t _CSDictionaryGetKeyOptions(uint64_t a1, unsigned int a2)
{
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::Dictionary::Get(v6, (a1 + 8), a2);
  if (v7)
  {
    return *v6[1];
  }

  else
  {
    return 0;
  }
}

uint64_t _CSDictionaryGetValueOptions(uint64_t a1, unsigned int a2)
{
  if (performConstantAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  CSStore2::Dictionary::Get(v6, (a1 + 8), a2);
  if (v7)
  {
    return *(v6[1] + 1);
  }

  else
  {
    return 0;
  }
}

_DWORD *_CSDictionaryGetValue(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (performConstantAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (*(**(v6 + 8) + 8))(*(v6 + 8));
    }
  }

  CSStore2::Dictionary::Get(&v13, (a1 + 8), a2);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v14 + 4);
  if (v7 == -1)
  {
    return 0;
  }

  v8 = v13;
  v9 = *(*v13 + 8);
  if (*(v9 + 12) <= v7)
  {
    return 0;
  }

  if (*v14)
  {
    v11 = bswap32(a3);
    v12 = 0;
    CSStore2::String::Find(&v13, v13, &v11, 4);
  }

  else
  {
    CSStore2::String::Get(&v13, v13, a3);
  }

  if (v16 != 1)
  {
    return 0;
  }

  result = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::Dictionary::_Functions,0ull>::Find(*v8, (v9 + v7), v14);
  if (result)
  {
    return *result;
  }

  return result;
}

void _CSDictionarySetValue(uint64_t a1, unsigned int a2, unsigned int a3, CSStore2::Store *a4)
{
  if (performMutatingAssertions == 1)
  {
    v8 = *(a1 + 344);
    if (v8)
    {
      (***(v8 + 8))(*(v8 + 8));
    }
  }

  CSStore2::Dictionary::Get(&v47, (a1 + 8), a2);
  if (v50 == 1)
  {
    v9 = v48;
    v10 = *(v48 + 4);
    if (v10 != -1)
    {
      v11 = v47;
      v12 = *(*v47 + 8);
      if (*(v12 + 12) > v10)
      {
        CSStore2::Dictionary::_CopyCanonicalKey(&v52, v47, a3, *v48);
        if (v54 == 1)
        {
          v13 = (v12 + v10);
          v14 = v53;
          v15 = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::Dictionary::_Functions,0ull>::Find(*v11, v13, v53);
          if (v15)
          {
            v16 = 1;
          }

          else
          {
            v16 = a4 == 0;
          }

          if (!v16)
          {
            CSStore2::String::retain(&v52);
            CSStore2::Dictionary::_TakeOwnershipOfValue(v11, a4, *(v9 + 1));
            goto LABEL_21;
          }

          v17 = v15;
          if (v15)
          {
            v18 = a4 == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            CSStore2::String::release(&v52);
            CSStore2::Dictionary::_RelinquishOwnershipOfValue(v11, *v17, *(v9 + 1));
          }

          else
          {
            if (v15 && *v15 != a4)
            {
              CSStore2::Dictionary::_TakeOwnershipOfValue(v11, a4, *(v9 + 1));
              CSStore2::Dictionary::_RelinquishOwnershipOfValue(v11, *v17, *(v9 + 1));
            }

            if (a4)
            {
LABEL_21:
              if (!v14)
              {
LABEL_70:
                CSStore2::Store::collectGarbage(v11, 0);
                CSStore2::Dictionary::Get(v51, v11, v49);
LABEL_71:
                CSStore2::String::release(&v52);
                return;
              }

              v19 = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::Dictionary::_Functions,0ull>::Find(*v11, v13, v14);
              if (v19)
              {
                *v19 = a4;
                goto LABEL_70;
              }

              v21 = &v13[2 * (v14 % *v13)];
              v22 = (v21 + 1);
              v23 = v21[2];
              if (v23 == -1)
              {
                v27 = 0;
              }

              else
              {
                v24 = *(*v11 + 1);
                v25 = *(v24 + 12) > v23;
                v26 = (v24 + v23);
                if (v25)
                {
                  v27 = v26;
                }

                else
                {
                  v27 = 0;
                }
              }

              v28 = *v22;
              if (v28)
              {
                v29 = v27;
                v30 = *v22;
                while (*v29 && v29[1])
                {
                  v29 += 2;
                  if (!--v30)
                  {
                    goto LABEL_38;
                  }
                }

                *v29 = v14;
                v29[1] = a4;
                goto LABEL_70;
              }

LABEL_38:
              v31 = v28 + 8;
              v32 = *v11;
              if (*v11)
              {
                v33 = *(v32 + 1);
                v34 = -1;
                v35 = v22 >= v33;
                v22 -= v33;
                if (!v35)
                {
LABEL_50:
                  v37 = CSStore2::Store::embraceAndExtend(v11, v27, (8 * v28), 8 * v31);
                  if (v34 == -1 || (v38 = *(*v11 + 1), *(v38 + 12) <= v34))
                  {
                    v39 = 0;
                  }

                  else
                  {
                    v39 = (v38 + v34);
                  }

                  if (!v37)
                  {
                    v39[1] = -1;
                    abort();
                  }

                  v40 = *v11;
                  if (*v11)
                  {
                    v41 = *(v40 + 1);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v42 = -1;
                  v35 = v37 >= v41;
                  v43 = &v37[-v41];
                  if (v35 && !HIDWORD(v43))
                  {
                    if ((v43 + 1) > *(*(v40 + 1) + 12) || v43 == -1)
                    {
                      v42 = -1;
                    }

                    else
                    {
                      v42 = v43;
                    }
                  }

                  v39[1] = v42;
                  v45 = &v37[8 * v28];
                  *v45 = v14;
                  v45[1] = a4;
                  if (v28 + 1 < v31)
                  {
                    v46 = &v37[8 * (v28 + 1)];
                    *(v46 + 6) = 0;
                    *(v46 + 1) = 0u;
                    *(v46 + 2) = 0u;
                    *v46 = 0u;
                  }

                  *v39 += 8;
                  goto LABEL_70;
                }
              }

              else
              {
                v34 = -1;
              }

              if (!HIDWORD(v22))
              {
                if ((v22 + 1) > *(*(v32 + 1) + 12) || v22 == -1)
                {
                  v34 = -1;
                }

                else
                {
                  v34 = v22;
                }
              }

              goto LABEL_50;
            }
          }

          if (v14)
          {
            v20 = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::Dictionary::_Functions,0ull>::Find(*v11, v13, v14);
            if (v20)
            {
              *v20 = 0;
            }
          }

          goto LABEL_71;
        }
      }
    }
  }
}

const CSStore2::Table *_CSDictionaryRemoveAllValues(uint64_t a1, unsigned int a2)
{
  if (performMutatingAssertions == 1)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      (***(v4 + 8))(*(v4 + 8));
    }
  }

  result = CSStore2::Dictionary::Get(v6, (a1 + 8), a2);
  if (v7 == 1)
  {
    return CSStore2::Dictionary::removeAllValues(v6);
  }

  return result;
}

void _CSDictionaryEnumerateAllValues(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (performConstantAssertions == 1)
  {
    v6 = *(a1 + 344);
    if (v6)
    {
      (*(**(v6 + 8) + 8))(*(v6 + 8));
    }
  }

  CSStore2::Dictionary::Get(&v12, (a1 + 8), a2);
  if (v14)
  {
    v9 = v12;
    v10 = v13;
    v11 = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___CSDictionaryEnumerateAllValues_block_invoke;
    v7[3] = &unk_1E7ED3270;
    v8 = v5;
    CSStore2::Dictionary::enumerateKeysAndValues(&v9, 0, v7);
  }

  else
  {
    LOBYTE(v9) = 0;
    v11 = 0;
  }
}

__n128 __copy_helper_block_ea8_32c68_ZTSKZ55___CSVisualizationArchiver_writeAllUnitsInTable_block__E3__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v3;
  *(a1 + 32) = result;
  return result;
}

void std::allocator<unsigned int>::allocate_at_least[abi:nn200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
}

uint64_t initlockdown_checkin_xpc(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (lockdownLibrary(void)::sOnce != -1)
  {
    dispatch_once(&lockdownLibrary(void)::sOnce, &__block_literal_global);
  }

  softLinklockdown_checkin_xpc = dlsym(lockdownLibrary(void)::sLib, "lockdown_checkin_xpc");
  v9 = (softLinklockdown_checkin_xpc)(a1, a2, v7, v8);

  return v9;
}

uint64_t initlockdown_disconnect(uint64_t a1)
{
  if (lockdownLibrary(void)::sOnce != -1)
  {
    dispatch_once(&lockdownLibrary(void)::sOnce, &__block_literal_global);
  }

  v2 = dlsym(lockdownLibrary(void)::sLib, "lockdown_disconnect");
  softLinklockdown_disconnect = v2;

  return (v2)(a1);
}

uint64_t initlockdown_send(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (lockdownLibrary(void)::sOnce != -1)
  {
    dispatch_once(&lockdownLibrary(void)::sOnce, &__block_literal_global);
  }

  v6 = dlsym(lockdownLibrary(void)::sLib, "lockdown_send");
  softLinklockdown_send = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initlockdown_recv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (lockdownLibrary(void)::sOnce != -1)
  {
    dispatch_once(&lockdownLibrary(void)::sOnce, &__block_literal_global);
  }

  v6 = dlsym(lockdownLibrary(void)::sLib, "lockdown_recv");
  softLinklockdown_recv = v6;

  return (v6)(a1, a2, a3);
}

void *___ZL15lockdownLibraryv_block_invoke()
{
  result = dlopen("/usr/lib//liblockdown.dylib", 2);
  lockdownLibrary(void)::sLib = result;
  return result;
}

void CSStore2::AttributedStringWriter::~AttributedStringWriter(CSStore2::AttributedStringWriter *this)
{
  CSStore2::AttributedStringWriter::~AttributedStringWriter(this);

  JUMPOUT(0x1BFAE5CB0);
}

{
  *this = &unk_1F37D4CE8;
  v2 = *(this + 31);
  if (v2 == (this + 8))
  {
    CSStore2::AttributedStringWriter::Impl::~Impl(v2);
  }

  else if (v2)
  {
    CSStore2::AttributedStringWriter::Impl::~Impl(v2);
    MEMORY[0x1BFAE5CB0]();
  }
}

void CSStore2::AttributedStringWriter::Impl::~Impl(id *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table((this + 14));
  std::__hash_table<std::__hash_value_type<unsigned long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,NSString * {__strong}>>>::~__hash_table((this + 9));

  v2 = this[4];
  if (v2)
  {
    this[5] = v2;
    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,NSString * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,NSString * {__strong}>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,NSString * {__strong}>>>::__deallocate_node(id *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void CSStore2::AttributedStringWriter::string(CSStore2::AttributedStringWriter *this, NSString *a2, NSString *a3)
{
  if (a2)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a2];
    if (a3)
    {
LABEL_3:
      v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a3];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  CSStore2::AttributedStringWriter::attributedString(this, v7, v6);
  if (a3)
  {
  }

  if (a2)
  {
  }
}

void sub_1B9D65584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void CSStore2::AttributedStringWriter::attributedString(CSStore2::AttributedStringWriter *this, NSAttributedString *a2, NSAttributedString *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (*(*(this + 31) + 168) == 1)
  {
    if (![(NSAttributedString *)v6 length])
    {
      v8 = CSStore2::getLog(0);
      if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEBUG))
      {
        v9 = [(NSAttributedString *)v6 string];
        v10 = [(NSAttributedString *)v5 string];
        *buf = 138478083;
        v37 = v9;
        v38 = 2114;
        v39 = v10;
        _os_log_debug_impl(&dword_1B9D5B000, &v8->super, OS_LOG_TYPE_DEBUG, "Eliding value %{private}@ for title %{public}@", buf, 0x16u);
      }

      goto LABEL_29;
    }
  }

  else if (![(NSAttributedString *)v6 length])
  {
    v11 = CSStore2::getAttributedStringWithCharacter(0x23);

    v6 = v11;
  }

  v12 = *(this + 31);
  if (v5 && *(v12 + 170) == 1)
  {
    v8 = CSStore2::getLog(v12);
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(NSAttributedString *)v6 string];
      v14 = [(NSAttributedString *)v5 string];
      *buf = 138478083;
      v37 = v13;
      v38 = 2114;
      v39 = v14;
      _os_log_debug_impl(&dword_1B9D5B000, &v8->super, OS_LOG_TYPE_DEBUG, "Writing child unit with title -- eliding value %{private}@ for title %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v15 = CSStore2::AttributedStringWriter::Impl::applyAttributesToAttributedString(v12, v5, 0);

    v16 = CSStore2::AttributedStringWriter::Impl::applyAttributesToAttributedString(*(this + 31), v6, 1);

    if ([(NSAttributedString *)v15 length])
    {
      v17 = objc_alloc(MEMORY[0x1E696AAB0]);
      v18 = [(NSAttributedString *)v15 string];
      v34 = @"_CSVOutputType";
      v35 = &unk_1F37D7988;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v5 = [v17 initWithString:v18 attributes:v19];
    }

    else
    {
      v5 = v15;
    }

    v20 = [(NSAttributedString *)v16 mutableCopy];
    v21 = v20;
    if (v20)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = ___ZN8CSStore222AttributedStringWriter16attributedStringEP18NSAttributedStringS2__block_invoke;
      v32[3] = &unk_1E7ED33A8;
      v22 = v20;
      v33 = v22;
      v23 = MEMORY[0x1BFAE6310](v32);
      v24 = objc_autoreleasePoolPush();
      [(NSAttributedString *)v16 enumerateAttribute:@"_CSVOutputType" inRange:0 options:[(NSAttributedString *)v16 length] usingBlock:0x100000, v23];
      objc_autoreleasePoolPop(v24);
      v6 = v22;
    }

    else
    {
      v6 = v16;
    }

    v25 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v8 = v25;
    if (v25)
    {
      if (v5)
      {
        [(NSAttributedString *)v25 appendAttributedString:v5];
      }

      if ([(NSAttributedString *)v5 length])
      {
        v26 = CSStore2::getAttributedStringWithCharacter(0x3A);
        [(NSAttributedString *)v8 appendAttributedString:v26];
      }

      v27 = objc_alloc_init(MEMORY[0x1E696AD40]);
      if (v27)
      {
        if ([(NSAttributedString *)v5 length])
        {
          v28 = CSStore2::getAttributedStringWithCharacter(0x20);
          [v27 appendAttributedString:v28];
        }

        v29 = [(NSAttributedString *)v8 length];
        if (([v27 length] + v29) <= 0x1B)
        {
          v30 = CSStore2::getAttributedStringWithRepeatedCharacter((28 - (-[NSAttributedString length](v8, "length") + [v27 length])));
          [v27 appendAttributedString:v30];
        }

        [v27 addAttribute:@"_CSVOutputType" value:&unk_1F37D79D0 range:{0, objc_msgSend(v27, "length")}];
        [(NSAttributedString *)v8 appendAttributedString:v27];
      }

      [(NSAttributedString *)v8 appendAttributedString:v6];
      CSStore2::AttributedStringWriter::Impl::attributedString(*(this + 31), v8);
    }
  }

LABEL_29:

  objc_autoreleasePoolPop(v7);
  v31 = *MEMORY[0x1E69E9840];
}

{
  v4 = a2;
  if (a2)
  {
    a2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a2];
  }

  p_isa = &a2->super.isa;
  CSStore2::AttributedStringWriter::attributedString(this, a2, a3);
  if (v4)
  {
  }
}

id CSStore2::getLog(CSStore2 *this)
{
  if (CSStore2::getLog(void)::once != -1)
  {
    dispatch_once(&CSStore2::getLog(void)::once, &__block_literal_global_199);
  }

  v2 = CSStore2::getLog(void)::result;

  return v2;
}

id CSStore2::getAttributedStringWithCharacter(CSStore2 *this)
{
  v1 = this;
  v5 = this;
  if (CSStore2::getAttributedStringWithCharacter(char)::once != -1)
  {
    dispatch_once(&CSStore2::getAttributedStringWithCharacter(char)::once, &__block_literal_global_41);
  }

  v2 = CSStore2::getAttributedStringWithCharacter(char)::attributedStrings[v1];
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5 length:1 encoding:1];
    if (v3)
    {
      v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

NSAttributedString *CSStore2::AttributedStringWriter::Impl::applyAttributesToAttributedString(CSStore2::AttributedStringWriter::Impl *this, NSAttributedString *a2, char a3)
{
  if (!a2)
  {
    goto LABEL_17;
  }

  if (*(this + 4) == *(this + 5))
  {
    v11 = 0;
  }

  else
  {
    v6 = [(NSAttributedString *)a2 mutableCopy];
    v7 = [v6 length];
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:(*(this + 5) - *(this + 4)) >> 4];
    v9 = *(this + 4);
    v10 = *(this + 5);
    while (v9 != v10)
    {
      if (*v9)
      {
        if (v9[1])
        {
          [v8 setObject:? forKeyedSubscript:?];
        }
      }

      v9 += 2;
    }

    [v6 addAttributes:v8 range:{0, v7}];

    v11 = v6;
  }

  if ([*(this + 2) count] && -[NSAttributedString length](a2, "length") >= 0x24)
  {
    if (!v11)
    {
      v11 = [(NSAttributedString *)a2 mutableCopy];
    }

    v12 = [*(this + 2) copy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZN8CSStore222AttributedStringWriter4Impl33applyAttributesToAttributedStringEP18NSAttributedStringb_block_invoke;
    v15[3] = &unk_1E7ED3360;
    v17 = this;
    v11 = v11;
    v16 = v11;
    v18 = a3;
    [v12 enumerateKeysAndObjectsUsingBlock:v15];
  }

  v13 = [v11 copy];

  if (!v13)
  {
LABEL_17:
    v13 = a2;
  }

  return v13;
}

uint64_t ___ZN8CSStore222AttributedStringWriter16attributedStringEP18NSAttributedStringS2__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || ([a2 isEqual:&unk_1F37D7988] & 1) != 0 || (result = objc_msgSend(a2, "isEqual:", &unk_1F37D79A0), result))
  {
    v9 = *(a1 + 32);

    return [v9 addAttribute:@"_CSVOutputType" value:&unk_1F37D79B8 range:{a3, a4}];
  }

  return result;
}

id CSStore2::getAttributedStringWithRepeatedCharacter(CSStore2 *this)
{
  memset(&v8, 0, sizeof(v8));
  std::string::resize(&v8, this + 1, 0);
  if (this)
  {
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v2 = &v8;
    }

    else
    {
      v2 = v8.__r_.__value_.__r.__words[0];
    }

    memset(v2, 32, this);
  }

  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v8;
  }

  else
  {
    v4 = v8.__r_.__value_.__r.__words[0];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [v3 initWithString:v5];

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1B9D65FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CSStore2::AttributedStringWriter::Impl::attributedString(id *this, NSAttributedString *a2)
{
  if (a2)
  {
    [this[1] appendAttributedString:a2];
    if (*(this + 169) == 1)
    {
      v6 = [(NSAttributedString *)a2 string];
      v4 = [v6 hasSuffix:@"\n"];

      if ((v4 & 1) == 0)
      {
        v5 = this[1];
        v7 = CSStore2::getAttributedStringWithCharacter(0xA);
        [v5 appendAttributedString:?];
      }
    }
  }
}

void ___ZN8CSStore222AttributedStringWriter4Impl33applyAttributesToAttributedStringEP18NSAttributedStringb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  [*(a1 + 32) length];
  v7 = 0;
  for (i = 0; ; i = 1)
  {
    v9 = [*(a1 + 32) string];
    v7 = [v9 rangeOfString:a2 options:0 range:{v7, objc_msgSend(*(a1 + 32), "length") - v7}];
    v11 = v10;

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    [*(a1 + 32) replaceCharactersInRange:v7 withAttributedString:{v11, a3}];
  }

  if ((i & 1) != 0 && *(a1 + 48) == 1)
  {
    v12 = *(v6 + 16);

    [v12 setObject:0 forKeyedSubscript:a2];
  }
}

void ___ZN8CSStore2L32getAttributedStringWithCharacterEc_block_invoke()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E9830];
  do
  {
    v5 = v0;
    if ((*(v1 + 4 * v0 + 60) & 0x40000) != 0 || v0 - 9 <= 1)
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5 length:1 encoding:1];
      if (v2)
      {
        v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v2];
        v4 = CSStore2::getAttributedStringWithCharacter(char)::attributedStrings[v0];
        CSStore2::getAttributedStringWithCharacter(char)::attributedStrings[v0] = v3;
      }
    }

    ++v0;
  }

  while (v0 != 127);
}

void ___ZN8CSStore2L6getLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.coreservicesstore", "attrstrwriter");
  v1 = CSStore2::getLog(void)::result;
  CSStore2::getLog(void)::result = v0;
}

void CSStore2::AttributedStringWriter::stringArray(CSStore2::AttributedStringWriter *this, NSString *a2, unsigned int a3)
{
  v4 = **(this + 31);
  if (v4)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x4812000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = "";
    v17 = 0;
    v18 = 0;
    __p = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZN8CSStore222AttributedStringWriter11stringArrayEP8NSStringj_block_invoke;
    v9[3] = &unk_1E7ED3420;
    v9[4] = &v10;
    _CSArrayEnumerateAllValues(v4, a3, v9);
    v6 = v11[6];
    v7 = v11[7];
    if (v7 == v6)
    {
      v8 = 0;
      CSStore2::AttributedStringWriter::stringArray(this, a2, &v8, 0);
    }

    else
    {
      CSStore2::AttributedStringWriter::stringArray(this, a2, v6, (v7 - v6) >> 2);
    }

    _Block_object_dispose(&v10, 8);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B9D66460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

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

void ___ZN8CSStore222AttributedStringWriter11stringArrayEP8NSStringj_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 32) + 8);
  v6 = v4[7];
  v5 = v4[8];
  if (v6 >= v5)
  {
    v8 = v4[6];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](v13);
    }

    v14 = (v6 - v8) >> 2;
    v15 = (4 * v10);
    v16 = (4 * v10 - 4 * v14);
    *v15 = a3;
    v7 = v15 + 1;
    memcpy(v16, v8, v9);
    v17 = v4[6];
    v4[6] = v16;
    v4[7] = v7;
    v4[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = a3;
    v7 = v6 + 4;
  }

  v4[7] = v7;
}

void CSStore2::AttributedStringWriter::stringArray(CSStore2::AttributedStringWriter *this, NSString *a2, unsigned int *a3, unsigned int a4)
{
  v17 = 0;
  if (a3 && a4)
  {
    v6 = **(this + 31);
    if (v6)
    {
      v7 = a3;
      v8 = a4;
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
      do
      {
        v10 = *v7++;
        v9 = v10;
        v11 = _CSStringCopyCFString(v6, v10);
        if (v11)
        {
          UnitFromID = _CSStringGetUnitFromID(v6, v9);
          if (UnitFromID)
          {
            StringTable = _CSStoreGetStringTable(v6);
            v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];
            v15 = CSStore2::addBackrefToAttributedString(v14, StringTable, UnitFromID);

            [(NSArray *)v17 addObject:v15];
          }

          else
          {
            [(NSArray *)v17 addObject:v11];
          }
        }

        --v8;
      }

      while (v8);
    }

    else
    {
      v17 = 0;
    }
  }

  if (v17)
  {
    v16 = v17;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  CSStore2::AttributedStringWriter::array(this, a2, v16);
}

CSStore2 *CSStore2::addBackrefToAttributedString(CSStore2 *this, NSAttributedString *a2, uint64_t a3)
{
  v5 = this;
  v6 = [_CSVisualizer URLForUnit:a3 inTable:a2];
  if (v6)
  {
    v7 = [(CSStore2 *)v5 mutableCopy];
    [(CSStore2 *)v7 addAttribute:@"_CSdwbr" value:v6 range:0, [(CSStore2 *)v7 length]];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

void CSStore2::AttributedStringWriter::array(CSStore2::AttributedStringWriter *this, NSString *a2, NSArray *a3)
{
  v22 = this;
  v30 = *MEMORY[0x1E69E9840];
  if (!a3 || (this = [(NSArray *)a3 count]) == 0)
  {
    if (*(*(v22 + 31) + 168) == 1)
    {
      v19 = CSStore2::getLog(this);
      if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v29 = a2;
        _os_log_debug_impl(&dword_1B9D5B000, &v19->super, OS_LOG_TYPE_DEBUG, "Eliding empty array value for title %{public}@", buf, 0xCu);
      }

      v4 = 0;
LABEL_31:

      goto LABEL_33;
    }

    v4 = CSStore2::getAttributedStringWithCharacter(0x23);
    if (!v4)
    {
      goto LABEL_33;
    }

LABEL_29:
    if (!a2)
    {
      CSStore2::AttributedStringWriter::attributedString(v22, v4);
      goto LABEL_33;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a2];
    CSStore2::AttributedStringWriter::attributedString(v22, v19, v4);
    goto LABEL_31;
  }

  v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (!v4)
  {
    goto LABEL_22;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = a3;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = *v24;
  v8 = 1;
  do
  {
    v9 = 0;
    do
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v23 + 1) + 8 * v9);
      if ((v8 & 1) == 0)
      {
        v11 = CSStore2::getAttributedStringWithCharacter(0x2C);
        [(NSAttributedString *)v4 appendAttributedString:v11];

        v12 = CSStore2::getAttributedStringWithCharacter(0x20);
        [(NSAttributedString *)v4 appendAttributedString:v12];
      }

      if (_NSIsNSString())
      {
        v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];
        [(NSAttributedString *)v4 appendAttributedString:v13];
      }

      else if (_NSIsNSNumber())
      {
        v14 = objc_alloc(MEMORY[0x1E696AD40]);
        v15 = [v10 description];
        v13 = [v14 initWithString:v15];

        [v13 addAttribute:@"_CSVNum" value:v10 range:{0, objc_msgSend(v13, "length")}];
        [(NSAttributedString *)v4 appendAttributedString:v13];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NSAttributedString *)v4 appendAttributedString:v10];
          goto LABEL_19;
        }

        v16 = objc_alloc(MEMORY[0x1E696AAB0]);
        v13 = [v10 description];
        v17 = [v16 initWithString:v13];
        [(NSAttributedString *)v4 appendAttributedString:v17];
      }

LABEL_19:
      v8 = 0;
      ++v9;
    }

    while (v6 != v9);
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v8 = 0;
  }

  while (v6);
LABEL_21:

  v18 = v4;
LABEL_22:

  if (v4)
  {
    goto LABEL_29;
  }

LABEL_33:

  v20 = *MEMORY[0x1E69E9840];
}

void CSStore2::AttributedStringWriter::attributedString(CSStore2::AttributedStringWriter::Impl **this, NSAttributedString *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = CSStore2::AttributedStringWriter::Impl::applyAttributesToAttributedString(this[31], v3, 1);

  CSStore2::AttributedStringWriter::Impl::attributedString(this[31], v5);
  objc_autoreleasePoolPop(v4);
}

id CSStore2::AttributedStringWriter::link(CSStore2::AttributedStringWriter *this, NSURL *a2, NSString *a3)
{
  if (a3)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a3];
  }

  else
  {
    v6 = 0;
  }

  v7 = CSStore2::AttributedStringWriter::link(this, a2, v6);
  if (a3)
  {
  }

  return v7;
}

void sub_1B9D66D60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

id CSStore2::AttributedStringWriter::link(CSStore2::AttributedStringWriter *this, NSURL *a2, NSAttributedString *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = [(NSURL *)a2 absoluteString];
    v5 = [v6 initWithString:v7];
  }

  v8 = [(NSAttributedString *)v5 string];
  if (a2)
  {
    v9 = [(NSAttributedString *)v5 mutableCopy];
    [v9 addAttribute:@"_CSVLink" value:a2 range:{0, objc_msgSend(v9, "length")}];
    v10 = *(this + 31);
    *uu = 0;
    v20 = 0;
    MEMORY[0x1BFAE6570](uu);
    memset(v18, 0, sizeof(v18));
    uuid_unparse(uu, v18);
    v18[36] = 0;
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
    if (!*(v10 + 16))
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = *(v10 + 16);
      *(v10 + 16) = v12;
    }

    v14 = [v9 copy];
    [*(v10 + 16) setObject:v14 forKeyedSubscript:v11];

    if (v11)
    {
      v15 = v11;

      v8 = v15;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

id CSStore2::AttributedStringWriter::link(CSStore2::AttributedStringWriter *this, uint64_t a2, uint64_t a3, NSString *a4)
{
  if (a4)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a4];
  }

  else
  {
    v8 = 0;
  }

  v9 = CSStore2::AttributedStringWriter::link(this, a2, a3, v8);
  if (a4)
  {
  }

  return v9;
}

void sub_1B9D67088(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

id CSStore2::AttributedStringWriter::link(CSStore2::AttributedStringWriter *this, uint64_t a2, uint64_t a3, NSAttributedString *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (!a3 && (*(*(this + 31) + 168) & 1) != 0)
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    v10 = *(*(this + 31) + 160);
    if (v10)
    {
      v11 = v10;
      v12 = [v10 summaryOfUnit:a3 inTable:a2];

      if (v12)
      {
        goto LABEL_9;
      }
    }

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    v12 = [v13 description];

    if (v12)
    {
LABEL_9:
      v14 = [v12 stringByAppendingFormat:@" (0x%llx)", a3];
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v14];

    v8 = v15;
  }

  v9 = [(NSAttributedString *)v8 string];
  if (v8)
  {
LABEL_13:
    v16 = [_CSVisualizer URLForUnit:a3 inTable:a2];
    if (v16)
    {
      v17 = CSStore2::AttributedStringWriter::link(this, v16, v8);

      v9 = v17;
    }

    else
    {
      v18 = CSStore2::getLog(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v22 = a2;
        v23 = 2048;
        v24 = a3;
        _os_log_error_impl(&dword_1B9D5B000, v18, OS_LOG_TYPE_ERROR, "Failed to construct URL for table/unit %llx %llx", buf, 0x16u);
      }
    }
  }

LABEL_19:

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

void ___ZN8CSStore222AttributedStringWriter9timestampEP8NSStringd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 72)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN8CSStore222AttributedStringWriter9timestampEP8NSStringd_block_invoke_2;
  v9[3] = &unk_1E7ED3498;
  v12 = v2;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v8 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v13 = *(a1 + 80);
  CSStore2::AttributedStringWriter::withAppliedAttribute(v2, @"_CSVNum", v3, v9);
}

uint64_t CSStore2::AttributedStringWriter::withAppliedAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 248);
  v9 = v7[5];
  v8 = v7[6];
  if (v9 >= v8)
  {
    v11 = v7[4];
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 60))
      {
        operator new();
      }

      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v17 = (16 * v13);
    *v17 = a2;
    v17[1] = a3;
    v10 = 16 * v13 + 16;
    memcpy(0, v11, v12);
    v7[4] = 0;
    v7[5] = v10;
    v7[6] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v9 = a2;
    *(v9 + 1) = a3;
    v10 = (v9 + 16);
  }

  v7[5] = v10;
  result = (*(a4 + 16))(a4);
  *(*(a1 + 248) + 40) -= 16;
  return result;
}

void ___ZN8CSStore222AttributedStringWriter9timestampEP8NSStringd_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN8CSStore222AttributedStringWriter9timestampEP8NSStringd_block_invoke_3;
  v12[3] = &unk_1E7ED3470;
  v15 = v2;
  v3 = (a1 + 40);
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *v3;
  v11 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v13 = v11;
  v14 = v7;
  v8 = MEMORY[0x1BFAE6310](v12);
  v9 = v8;
  if (*(a1 + 72) == 0.0)
  {
    (*(v8 + 16))(v8);
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    CSStore2::AttributedStringWriter::withAppliedAttribute(v2, @"_CSVTDlt", v10, v9);
  }
}

void ___ZN8CSStore222AttributedStringWriter9timestampEP8NSStringd_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 64);
  [*(a1 + 32) timeIntervalSince1970];
  *v4.i64 = *v3.i64 - trunc(*v3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (*vbslq_s8(vnegq_f64(v5), v4, v3).i64 == 0.0)
  {
    CSStore2::AttributedStringWriter::format(v2, v6, &cfstr_PosixLld.isa, v7, *v3.i64, *(a1 + 56));
  }

  else
  {
    CSStore2::AttributedStringWriter::format(v2, v6, &cfstr_Posix3f.isa, v7, v3.i64[0], *(a1 + 56));
  }
}

void CSStore2::AttributedStringWriter::format(CSStore2::AttributedStringWriter *this, NSString *a2, NSString *a3, ...)
{
  va_start(va, a3);
  if (a2)
  {
    CSStore2::AttributedStringWriter::formatWithArguments(this, a2, a3, va);
  }

  else
  {
    CSStore2::AttributedStringWriter::formatWithArguments(this, a3, va);
  }
}

void CSStore2::AttributedStringWriter::formatWithArguments(CSStore2::AttributedStringWriter *this, NSString *a2, NSString *a3, char *a4)
{
  v8 = *(*(this + 31) + 24);
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v8)
  {
    v10 = [v9 initWithFormat:a3 locale:v8 arguments:a4];
  }

  else
  {
    v10 = [v9 initWithFormat:a3 arguments:a4];
  }

  v11 = v10;
  CSStore2::AttributedStringWriter::string(this, a2, v10);
}

void CSStore2::AttributedStringWriter::formatWithArguments(CSStore2::AttributedStringWriter *this, NSString *a2, char *a3)
{
  v6 = *(*(this + 31) + 24);
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v6)
  {
    v8 = [v7 initWithFormat:a2 locale:v6 arguments:a3];
  }

  else
  {
    v8 = [v7 initWithFormat:a2 arguments:a3];
  }

  v9 = v8;
  CSStore2::AttributedStringWriter::string(this, v8);
}

void CSStore2::AttributedStringWriter::string(CSStore2::AttributedStringWriter::Impl **this, NSAttributedString *a2)
{
  v2 = a2;
  if (a2)
  {
    a2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a2];
  }

  p_isa = &a2->super.isa;
  CSStore2::AttributedStringWriter::attributedString(this, a2);
  if (v2)
  {
  }
}

void sub_1B9D67DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK8CSStore222AttributedStringWriter4Impl26getDateComponentsFormatterEv_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  [v0 setAllowsFractionalUnits:1];
  [v0 setUnitsStyle:5];
  [v0 setCollapsesLargestUnit:1];
  v1 = CSStore2::AttributedStringWriter::Impl::getDateComponentsFormatter(void)const::dcf;
  CSStore2::AttributedStringWriter::Impl::getDateComponentsFormatter(void)const::dcf = v0;
}

id CSStore2::AttributedStringWriter::Impl::getDateFormatter(void)const::$_0::operator()()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v0 setDateStyle:1];
  [v0 setTimeStyle:1];
  v1 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v0 setTimeZone:v1];

  v2 = [MEMORY[0x1E695DF58] systemLocale];
  [v0 setLocale:v2];

  return v0;
}

void sub_1B9D67F08(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ___ZNK8CSStore222AttributedStringWriter4Impl16getDateFormatterEv_block_invoke()
{
  v0 = CSStore2::AttributedStringWriter::Impl::getDateFormatter(void)const::$_0::operator()();
  v1 = CSStore2::AttributedStringWriter::Impl::getDateFormatter(void)const::df;
  CSStore2::AttributedStringWriter::Impl::getDateFormatter(void)const::df = v0;
}

void CSStore2::AttributedStringWriter::separator(CSStore2::AttributedStringWriter::Impl **this, CSStore2::AttributedStringWriter *a2, NSString *a3)
{
  v4 = CSStore2::AttributedStringWriter::Separator(a2, a3, a3);
  CSStore2::AttributedStringWriter::attributedString(this, v4);
}

id CSStore2::AttributedStringWriter::Separator(CSStore2::AttributedStringWriter *this, void *a2, NSString *a3)
{
  if (this != 45 || a2)
  {
    v3 = CSStore2::AttributedStringWriter::Separator(char,NSString *)::$_0::operator()(this, a2);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZN8CSStore222AttributedStringWriter9SeparatorEcP8NSString_block_invoke;
    v5[3] = &unk_1E7ED3448;
    v6 = 45;
    v5[4] = 0;
    if (CSStore2::AttributedStringWriter::Separator(char,NSString *)::once != -1)
    {
      dispatch_once(&CSStore2::AttributedStringWriter::Separator(char,NSString *)::once, v5);
    }

    v3 = CSStore2::AttributedStringWriter::Separator(char,NSString *)::standardSeparator;
  }

  return v3;
}

id CSStore2::AttributedStringWriter::Separator(char,NSString *)::$_0::operator()(unsigned int a1, id a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = vdupq_n_s8(a1);
  v17 = v16;
  v14 = v16;
  v15 = v16;
  *__dst = v16;
  if (a2)
  {
    v2 = [a2 UTF8String];
    v3 = strlen(v2);
    if (v3 >= 0x50)
    {
      strlcpy(__dst, v2, 0x51uLL);
    }

    else
    {
      v4 = v3;
      if (v3 <= 0x46)
      {
        v5 = &__dst[(80 - v3) >> 1];
        *(v5 - 1) = 32;
        __dst[v4 + ((80 - v4) >> 1)] = 32;
        memcpy(v5, v2, v4);
      }
    }
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:__dst length:80 encoding:1 freeWhenDone:0];
  v11 = @"_CSVOutputType";
  v12 = &unk_1F37D79E8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void ___ZN8CSStore222AttributedStringWriter9SeparatorEcP8NSString_block_invoke(uint64_t a1)
{
  v1 = CSStore2::AttributedStringWriter::Separator(char,NSString *)::$_0::operator()(*(a1 + 41), *(a1 + 32));
  v2 = CSStore2::AttributedStringWriter::Separator(char,NSString *)::standardSeparator;
  CSStore2::AttributedStringWriter::Separator(char,NSString *)::standardSeparator = v1;
}

uint64_t CSStore2::AttributedStringWriter::number(CSStore2::AttributedStringWriter *this, NSString *a2, NSNumber *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN8CSStore222AttributedStringWriter6numberEP8NSStringP8NSNumber_block_invoke;
  v4[3] = &unk_1E7ED33F8;
  v4[5] = a2;
  v4[6] = this;
  v4[4] = a3;
  return CSStore2::AttributedStringWriter::withAppliedAttribute(this, @"_CSVNum", a3, v4);
}

void ___ZN8CSStore222AttributedStringWriter6numberEP8NSStringP8NSNumber_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 32))
  {
    TypeID = CFBooleanGetTypeID();
    v4 = CFGetTypeID(*(a1 + 32));
    v5 = *(a1 + 32);
    if (TypeID == v4)
    {
      v6 = *(a1 + 40);
      if ([v5 BOOLValue])
      {
        v7 = @"true";
      }

      else
      {
        v7 = @"false";
      }

      CSStore2::AttributedStringWriter::string(v2, v6, &v7->isa);
      return;
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 doubleValue];
  if (v8 != 0.0 || (*(*(v2 + 31) + 168) & 1) == 0)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) description];
    CSStore2::AttributedStringWriter::string(v2, v9, v10);
  }
}

void CSStore2::AttributedStringWriter::string(CSStore2::AttributedStringWriter *this, NSString *a2, unsigned int a3)
{
  v3 = *(this + 31);
  v4 = *v3;
  if (*v3)
  {
    v8 = _CSStringCopyCFString(*v3, a3);
    v9 = v8;
    if (!a3 || v8)
    {
      UnitFromID = _CSStringGetUnitFromID(v4, a3);
      StringTable = _CSStoreGetStringTable(v4);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___ZN8CSStore222AttributedStringWriter6stringEP8NSStringj_block_invoke_2;
      v12[3] = &unk_1E7ED33F8;
      v14 = this;
      v12[4] = a2;
      v13 = v9;
      CSStore2::AttributedStringWriter::withReferenceToUnit(this, StringTable, UnitFromID, v12);
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = ___ZN8CSStore222AttributedStringWriter6stringEP8NSStringj_block_invoke;
      v15[3] = &unk_1E7ED33D0;
      v16 = a3;
      v15[4] = a2;
      v15[5] = this;
      CSStore2::AttributedStringWriter::withWarningColors(this, v15);
    }
  }
}

void ___ZN8CSStore222AttributedStringWriter6stringEP8NSStringj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not find string unit %llx!", *(a1 + 48)];
  CSStore2::AttributedStringWriter::string(v2, *(a1 + 32), v3);
}

uint64_t CSStore2::AttributedStringWriter::withWarningColors(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN8CSStore222AttributedStringWriter17withWarningColorsEU13block_pointerFvvE_block_invoke;
  v3[3] = &unk_1E7ED38F8;
  v3[4] = a2;
  v3[5] = a1;
  return CSStore2::AttributedStringWriter::withAppliedAttribute(a1, @"_LSWarning", MEMORY[0x1E695E118], v3);
}

void ___ZN8CSStore222AttributedStringWriter6stringEP8NSStringj_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = &stru_1F37D5878;
  }

  CSStore2::AttributedStringWriter::string(*(a1 + 48), *(a1 + 32), &v2->isa);
}

void CSStore2::AttributedStringWriter::withReferenceToUnit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  add = atomic_fetch_add(CSStore2::currentBackrefDepth, 1u);
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_CSbr%u", add];
  v9 = [_CSVisualizer URLForUnit:a3 inTable:a2];
  CSStore2::AttributedStringWriter::withAppliedAttribute(a1, v10, v9, a4);
  atomic_fetch_add(CSStore2::currentBackrefDepth, 0xFFFFFFFF);
}

void CSStore2::AttributedStringWriter::withTextAndBackgroundColor(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN8CSStore222AttributedStringWriter26withTextAndBackgroundColorEjjU13block_pointerFvvE_block_invoke;
  v8[3] = &unk_1E7ED3510;
  v9 = a2;
  v8[4] = a4;
  v8[5] = a1;
  CSStore2::AttributedStringWriter::withAppliedAttribute(a1, @"_CSVBGColor", v7, v8);
}

void CSStore2::AttributedStringWriter::withTextColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  CSStore2::AttributedStringWriter::withAppliedAttribute(a1, @"_CSVFGColor", v5, a3);
}

void sub_1B9D68CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void CSStore2::AttributedStringWriter::missingFlag(uint64_t a1, unint64_t a2, void *a3, int *a4)
{
  if ((*(a1 + 152) & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void CSStore2::AttributedStringWriter::missingFlag(uintmax_t, NSString *const __strong _Nonnull, const std::optional<RGBColor> &)"}];
    [v14 handleFailureInFunction:v15 file:@"CSAttributedStringWriter.mm" lineNumber:894 description:@"Called missingFlag() without calling beginFlags() first."];
  }

  v8 = *(a1 + 64);
  if (*(a1 + 153) == 1)
  {
    *(a1 + 64) = v8 + 1;
    v9 = a2 != 0;
    a2 = v8;
    v8 = -1;
  }

  else
  {
    v9 = a2;
  }

  v16 = a2;
  if ((v9 & v8) == 0)
  {
    v10 = [a3 copy];
    v17 = &v16;
    v11 = std::__hash_table<std::__hash_value_type<unsigned long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a1 + 72), a2);
    v12 = v11[3];
    v11[3] = v10;

    if (*(a4 + 4) == 1)
    {
      v13 = *a4;
      v17 = &v16;
      *(std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a1 + 112), v16) + 6) = v13;
    }

    else
    {
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::__erase_unique<unsigned long>((a1 + 112), v16);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
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

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1B9D69334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,NSString * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,NSString * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
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

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::__erase_unique<unsigned long>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::find<unsigned long>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
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

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::find<unsigned long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
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

        if (v7 != v4)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,NSString * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,NSString * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
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

void CSStore2::AttributedStringWriter::flag(uint64_t a1, unint64_t a2, void *a3, int *a4)
{
  if ((*(a1 + 152) & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void CSStore2::AttributedStringWriter::flag(uintmax_t, NSString *const __strong _Nonnull, const std::optional<RGBColor> &)"}];
    [v14 handleFailureInFunction:v15 file:@"CSAttributedStringWriter.mm" lineNumber:853 description:@"Called flag() without calling beginFlags() first."];
  }

  v8 = *(a1 + 64);
  if (*(a1 + 153) == 1)
  {
    *(a1 + 64) = v8 + 1;
    v9 = a2 != 0;
    a2 = v8;
    v8 = -1;
  }

  else
  {
    v9 = a2;
  }

  v16 = a2;
  if ((v9 & v8) != 0)
  {
    v10 = [a3 copy];
    v17 = &v16;
    v11 = std::__hash_table<std::__hash_value_type<unsigned long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a1 + 72), a2);
    v12 = v11[3];
    v11[3] = v10;

    if (*(a4 + 4) == 1)
    {
      v13 = *a4;
      v17 = &v16;
      *(std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a1 + 112), v16) + 6) = v13;
    }

    else
    {
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::__erase_unique<unsigned long>((a1 + 112), v16);
    }
  }
}

void std::allocator<unsigned long>::allocate_at_least[abi:nn200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
}

void CSStore2::AttributedStringWriter::childUnit(CSStore2::AttributedStringWriter *this, NSString *a2, NSAttributedString *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = *(*(this + 31) + 160);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 copy];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:a2 != 0];
    v13 = [v11 userInfo];
    [v13 setObject:v12 forKeyedSubscript:@"_CSAttributedStringWriterIsChildUnitWithTitle"];

    v14 = [v11 descriptionOfUnit:a4 inTable:a3];
    v15 = [v14 mutableCopy];

    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v15)
  {
    v16 = CSStore2::getAttributedStringWithCharacter(0x23);
    v15 = [v16 mutableCopy];
  }

LABEL_7:
  while (1)
  {
    v17 = [v15 string];
    v18 = [v17 hasSuffix:@"\n"];

    if (!v18)
    {
      break;
    }

    [v15 deleteCharactersInRange:{objc_msgSend(v15, "length") - 1, 1}];
  }

  if (a2)
  {
    if (!v15)
    {
      v22 = 0;
      goto LABEL_48;
    }

    v20 = [v15 string];
    theString = v20;
    v51 = 0;
    v52 = [v15 length];
    CharactersPtr = CFStringGetCharactersPtr(v20);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v20, 0x600u);
    }

    v53 = 0;
    v54 = 0;
    v50 = CStringPtr;

    v25 = v52;
    if (v52 < 1)
    {
      v22 = 0;
      a3 = a3;
      goto LABEL_48;
    }

    v26 = 0;
    v22 = 0;
    v27 = 0;
    v28 = 64;
    while (1)
    {
      if (v27 >= 4)
      {
        v29 = 4;
      }

      else
      {
        v29 = v27;
      }

      if (CharactersPtr)
      {
        v30 = &CharactersPtr[v51];
      }

      else
      {
        if (v50)
        {
          v31 = v50[v51 + v27];
          goto LABEL_28;
        }

        v32 = v53;
        if (v54 <= v27 || v53 > v27)
        {
          v34 = v29 + v26;
          v35 = v28 - v29;
          v36 = v27 - v29;
          v37 = v36 + 64;
          if (v36 + 64 >= v25)
          {
            v37 = v25;
          }

          v53 = v36;
          v54 = v37;
          if (v25 >= v35)
          {
            v25 = v35;
          }

          v55.location = v36 + v51;
          v55.length = v25 + v34;
          CFStringGetCharacters(theString, v55, buffer);
          v32 = v53;
        }

        v30 = &buffer[-v32];
      }

      v31 = v30[v27];
LABEL_28:
      if (v31 == 10)
      {
        if (!v22)
        {
          v22 = [MEMORY[0x1E696AD50] indexSet];
        }

        [v22 addIndex:v27];
      }

      ++v27;
      v25 = v52;
      --v26;
      ++v28;
      if (v27 >= v52)
      {
        a3 = a3;
        if (v22 && [v22 count])
        {
          v38 = CSStore2::getAttributedStringWithRepeatedCharacter(0x1C);
          v39 = [v38 mutableCopy];

          [v39 addAttribute:@"_CSVOutputType" value:&unk_1F37D79D0 range:{1, objc_msgSend(v39, "length") - 1}];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = ___ZN8CSStore222AttributedStringWriter9childUnitEP8NSStringjj_block_invoke;
          v44[3] = &unk_1E7ED34E8;
          v45 = v15;
          v40 = v39;
          v46 = v40;
          [v22 enumerateIndexesWithOptions:2 usingBlock:v44];
        }

        goto LABEL_48;
      }
    }
  }

  v22 = CSStore2::AttributedStringWriter::Separator(0x2D, 0, v19);
  [v15 insertAttributedString:v22 atIndex:0];
  if (*(*(this + 31) + 169) == 1)
  {
    v23 = CSStore2::getAttributedStringWithCharacter(0xA);
    [v15 insertAttributedString:v23 atIndex:{objc_msgSend(v22, "length")}];
  }

  v24 = [v15 length];
  [v15 addAttribute:@"_CSVIsRelated" value:MEMORY[0x1E695E118] range:{0, v24}];
LABEL_48:

  v41 = CSStore2::addBackrefToAttributedString(v15, a3, a4);
  v42 = [v41 mutableCopy];

  objc_autoreleasePoolPop(v8);
  if (a2)
  {
    v43 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a2];
    CSStore2::AttributedStringWriter::attributedString(this, v43, v42);
  }

  else
  {
    CSStore2::AttributedStringWriter::attributedString(this, v42);
  }
}

CSStore2::AttributedStringWriter *CSStore2::AttributedStringWriter::AttributedStringWriter(CSStore2::AttributedStringWriter *this, __CSStore *a2, NSMutableAttributedString *a3)
{
  *this = &unk_1F37D4CE8;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 8) = 0u;
  v4 = this + 8;
  *(this + 2) = a2;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 80) = 0;
  *(this + 21) = 0;
  *(this + 88) = 257;
  *(this + 178) = 0;
  *(this + 31) = v4;
  return this;
}

uint64_t CSStringBindingCopyCFStrings(uint64_t a1, void *a2)
{
  v2 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a1 && a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v9[3] = Mutable;
    if (Mutable)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __CSStringBindingCopyCFStrings_block_invoke;
      v7[3] = &unk_1E7ED3538;
      v7[4] = &v8;
      v7[5] = a1;
      _CSStringBindingEnumerateAllBindings(a1, a2, v7);
      v2 = v9[3];
    }

    else
    {
      v2 = 0;
    }
  }

  _Block_object_dispose(&v8, 8);
  return v2;
}

void sub_1B9D6B1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CSStringBindingCopyCFStrings_block_invoke(uint64_t a1, unsigned int a2)
{
  v3 = _CSStringCopyCFString(*(a1 + 40), a2);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v3);

    CFRelease(v4);
  }
}

void sub_1B9D6B280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _CSStore2DataContainer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void CSStore2::VM::Deallocate(CSStore2::VM *this, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9AC8];
  v3 = a2 + *MEMORY[0x1E69E9AC8] - 1;
  if (v3 == v3 % *MEMORY[0x1E69E9AC8])
  {
    v4 = v2;
  }

  else
  {
    v4 = v3 / v2 * v2;
  }

  v5 = MEMORY[0x1BFAE65A0](*MEMORY[0x1E69E9A60], this, v4);
  if (v5)
  {
    v6 = v5;
    v7 = CSStore2::GetLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 134218240;
      v10 = v4;
      v11 = 2048;
      v12 = v6;
      _os_log_error_impl(&dword_1B9D5B000, v7, OS_LOG_TYPE_ERROR, "Failed to deallocate %llu bytes with kernel error %llx.", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZN8CSStore2L15IsAppleInternalEv_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  CSStore2::IsAppleInternal(void)::result = result;
  return result;
}

void CSStore2::Table::setName(CSStore2::Table *this, NSString *a2)
{
  v3 = a2;
  strlcpy(this + 8, [(NSString *)v3 UTF8String], 0x30uLL);
}

NSUInteger CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::Create(CSStore2::Store *a1, uint64_t a2)
{
  v4 = *(a2 + 24) + 1024;
  if (v4 >= 0x2000)
  {
    v5 = 0x2000;
  }

  else
  {
    v5 = *(a2 + 24) + 1024;
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = 8 * v5 + 8 * v4;
  v7 = (v6 | 4u);
  v8 = CSStore2::Store::extend(a1, v6 | 4u);
  v9 = v8;
  if (v8)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = *(v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    v12 = 0xFFFFFFFFLL;
    v13 = v8 >= v11;
    v14 = v8 - v11;
    if (v13 && !HIDWORD(v14))
    {
      if ((v14 + 1) > *(*(v10 + 8) + 12) || v14 == -1)
      {
        v12 = 0xFFFFFFFFLL;
      }

      else
      {
        v12 = v14;
      }
    }

    CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::Create(v21, a2, v12, 1024, 0);
    v16 = v21[0];
    if (v21[0])
    {
      CSStore2::VM::Copy(v9, v21[0], v7);
      (v21[1])(v16);
    }

    else
    {
      CSStore2::Store::assertNotEnumeratingUnits(a1);
      v9 = 0;
      v17 = *(*a1 + 8);
      v18 = *(v17 + 16);
      v13 = v18 >= v7;
      v19 = v18 - v7;
      if (!v13)
      {
        v19 = 0;
      }

      *(v17 + 16) = v19;
      ++*(v17 + 8);
    }
  }

  return v9;
}

uint64_t CSStore2::Store::extend(CSStore2::Store *this, unsigned int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = CSStore2::Store::assertNotEnumeratingUnits(this);
  v5 = CSStore2::GetLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v28 = 134217984;
    v29 = a2;
    _os_log_debug_impl(&dword_1B9D5B000, v5, OS_LOG_TYPE_DEBUG, "Attempting to lengthen store by %llu bytes", &v28, 0xCu);
  }

  if (a2 + 3 >= 4)
  {
    v6 = (a2 + 3) & 0xFFFFFFFC;
  }

  else
  {
    v6 = 4;
  }

  v7 = *this;
  if (!*this || (v8 = *(v7 + 8), v9 = v8[3], v10 = v9 + v6, v9 + v6 >= *(v7 + 16)))
  {
    CSStore2::Store::assertNotEnumeratingUnits(this);
    v11 = *this;
    if (*this)
    {
      v9 = *(v11 + 16);
      v12 = v6 + 0x3FFFF + v9;
      if (v12 >= 0x40000)
      {
        v13 = v12 & 0xFFFC0000;
      }

      else
      {
        v13 = 0x40000;
      }

      if (v13 >= v9)
      {
        goto LABEL_13;
      }

      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL CSStore2::Store::reserve(_CSStoreSize, _CSStoreSize *)"}];
      [v22 handleFailureInFunction:v23 file:@"CSStore+Store.mm" lineNumber:866 description:@"New CSStore size is smaller than the old size!"];

      v11 = *this;
      if (*this)
      {
LABEL_13:
        v14 = *(v11 + 8);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v9 = 0;
      v14 = 0;
      if ((v6 + 0x3FFFF) >= 0x40000)
      {
        v13 = (v6 + 0x3FFFF) & 0xFFFC0000;
      }

      else
      {
        v13 = 0x40000;
      }
    }

    v15 = *MEMORY[0x1E69E9AC8];
    v16 = v9 + *MEMORY[0x1E69E9AC8] - 1;
    if (v16 == v16 % *MEMORY[0x1E69E9AC8])
    {
      v17 = v15;
    }

    else
    {
      v17 = v16 / v15 * v15;
    }

    Copy = CSStore2::VM::AllocateCopy(v14, v17, v13);
    if (!Copy)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL CSStore2::Store::reserve(_CSStoreSize, _CSStoreSize *)"}];
      [v24 handleFailureInFunction:v25 file:@"CSStore+Store.mm" lineNumber:871 description:@"Failed to create data for store extension!"];

      v27 = CSStore2::GetLog(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 134217984;
        v29 = v6;
        _os_log_error_impl(&dword_1B9D5B000, v27, OS_LOG_TYPE_ERROR, "Failed to reserve %llu bytes of virtual memory", &v28, 0xCu);
      }

      abort();
    }

    CSStore2::Store::setBytesNoCopy(this, Copy, v13);
    v8 = *(*this + 8);
    v10 = v9 + v6;
  }

  v19 = v8[4] + v6;
  v8[3] = v10;
  v8[4] = v19;
  if (v10 <= v9)
  {
    result = 0;
  }

  else
  {
    result = v8 + v9;
    ++v8[2];
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

int *CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::Create(int **a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
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

void sub_1B9D6BBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = 0;
  free(v14);
  _Unwind_Resume(a1);
}

void std::vector<CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::KeyValuePair,std::allocator<CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::KeyValuePair>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::vector<std::vector<CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::KeyValuePair,std::allocator<CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::KeyValuePair>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<_NSRange>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<_NSRange>::allocate_at_least[abi:nn200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::allocator<_NSRange>::allocate_at_least[abi:nn200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
}

uint64_t __Block_byref_object_copy__114(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZNK8CSStore25Store4copyEPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, CSStore2::Table *this, _BYTE *a3)
{
  if (*(this + 18) == 0x3FFFFFFF)
  {
    v5 = CSStore2::Table::copyCFName(this);
    v6 = [(__CFString *)v5 copy];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a3 = 1;
  }
}

void ___ZN8CSStore25Store32_GetDispatchDataDeallocatorQueueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("CSStore2 dispatch data deallocation", attr);
  v2 = CSStore2::Store::_GetDispatchDataDeallocatorQueue(void)::result;
  CSStore2::Store::_GetDispatchDataDeallocatorQueue(void)::result = v1;
}

void ___ZN8CSStore25Store23CreateWithContentsOfURLEP5NSURLPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, CSStore2::Table *this)
{
  if (this)
  {
    v3 = **(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 8);
    }

    else
    {
      v4 = 0;
    }

    v5 = 0xFFFFFFFFLL;
    v6 = this >= v4;
    v7 = this - v4;
    if (v6 && !HIDWORD(v7))
    {
      if ((v7 + 1) > *(*(v3 + 8) + 12) || v7 == -1)
      {
        v5 = 0xFFFFFFFFLL;
      }

      else
      {
        v5 = v7;
      }
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v9 = *(this + 19);
  v12 = CSStore2::Table::copyCFName(this);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ offs", v12];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@0x%llX, $@0x%llX", v5, v9];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v10];
}

uint64_t CSStore2::GarbageCollection::Collect(CSStore2::GarbageCollection *this, FILE **a2, CSStore2::Store *a3, void *a4)
{
  v5 = a3;
  v74 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v8 = *(*this + 8);
  }

  else
  {
    v8 = 0;
  }

  IsNeeded = CSStore2::GarbageCollection::IsNeeded(this, a3);
  v10 = IsNeeded;
  v11 = CSStore2::GarbageCollection::GetGCLog(IsNeeded);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 134218240;
      *&buf[4] = this;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_log_impl(&dword_1B9D5B000, v11, OS_LOG_TYPE_DEFAULT, "GCing and writing store %p with writer %p", buf, 0x16u);
    }

    if (CSStore2::IsAppleInternal(void)::once != -1)
    {
      dispatch_once(&CSStore2::IsAppleInternal(void)::once, &__block_literal_global_202);
    }

    v14 = CSStore2::IsAppleInternal(void)::result;
    if (CSStore2::IsAppleInternal(void)::result == 1)
    {
      v15 = *(v8 + 3);
      v16 = *(v8 + 4);
      v17 = CSStore2::GarbageCollection::GetGCLog(v13);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = vcvtd_n_f64_u32(v15 - v16, 0xAuLL);
        *&buf[12] = 2048;
        *&buf[14] = vcvtd_n_f64_u32(v15, 0xAuLL);
        _os_log_impl(&dword_1B9D5B000, v17, OS_LOG_TYPE_DEFAULT, "Performing garbage collection to try to recover %.3f KB of %.3f KB.", buf, 0x16u);
      }
    }

    v18 = *v8;
    v19 = v8[2];
    *&buf[16] = v8[1];
    v69 = v19;
    *buf = v18;
    v20 = v8[3];
    v21 = v8[4];
    v22 = v8[5];
    v73 = *(v8 + 24);
    v71 = v21;
    v72 = v22;
    v70 = v20;
    v63 = 0;
    v23 = CSStore2::Writer::seek(*a2, 100, 0, &v63);
    v24 = v63;
    v25 = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

    v62 = v24;
    v26 = CSStore2::GarbageCollection::WriteTableCommon(this, (*(*this + 8) + 20), &buf[20], a2, v5, &v62);
    v27 = v62;

    if (!v26)
    {
      v25 = v27;
LABEL_38:
      v42 = 0;
      goto LABEL_39;
    }

    if (!*a2 || (CSStore2::Writer::IO<int,__sFILE *>(MEMORY[0x1E69E9880], *a2) & 0x80000000) != 0)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    *&buf[6] = v28;
    ++*&buf[8];
    v61 = v27;
    v44 = CSStore2::Writer::tell(*a2, &v61);
    v45 = v61;

    if (!HIDWORD(v44))
    {
      v25 = v45;
      goto LABEL_38;
    }

    *&buf[12] = v44;
    *&buf[16] = v44;
    v60 = v45;
    v46 = CSStore2::Writer::pwrite(a2, buf, 0x64uLL, 0, &v60);
    v25 = v60;

    if ((v46 & v14) != 1 || CSStore2::Writer::IO<int,__sFILE *,long long,int>(*a2, 0, 2))
    {
      if (!v46)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    v59 = 0;
    v50 = CSStore2::Writer::tell(*a2, &v59);
    v51 = v59;
    v53 = v51;
    if (HIDWORD(v50))
    {
      LODWORD(v52) = *(v8 + 3);
      v56 = (v52 - v50) * 0.0009765625;
      v57 = CSStore2::GarbageCollection::GetGCLog(v51);
      v54 = v57;
      if (v56 >= 0.0)
      {
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          *v66 = 134217984;
          v67 = v56;
          _os_log_impl(&dword_1B9D5B000, v54, OS_LOG_TYPE_INFO, "Saved %.3f KB.", v66, 0xCu);
        }

        goto LABEL_52;
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *v66 = 134217984;
        v67 = v56;
        v55 = "Failed to save space, to the order of %.3f KB.";
        goto LABEL_49;
      }
    }

    else
    {
      v54 = CSStore2::GarbageCollection::GetGCLog(v51);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *v66 = 138412290;
        v67 = *&v53;
        v55 = "Failed to get file offset after GC: %@";
LABEL_49:
        _os_log_error_impl(&dword_1B9D5B000, v54, OS_LOG_TYPE_ERROR, v55, v66, 0xCu);
      }
    }

LABEL_52:

    goto LABEL_29;
  }

  if (v12)
  {
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = a2;
    _os_log_impl(&dword_1B9D5B000, v11, OS_LOG_TYPE_DEFAULT, "Writing store (no GC) %p with writer %p", buf, 0x16u);
  }

  v29 = *v8;
  v30 = v8[2];
  *&buf[16] = v8[1];
  v69 = v30;
  *buf = v29;
  v31 = v8[3];
  v32 = v8[4];
  v33 = v8[5];
  v73 = *(v8 + 24);
  v71 = v32;
  v72 = v33;
  v70 = v31;
  v34 = crc32(0x6E797267uLL, v8 + 100, *(v8 + 3) - 100);
  if (v34 >= 3uLL)
  {
    v35 = v34;
  }

  else
  {
    v35 = v34 | 0xE000;
  }

  *&buf[6] = v35;
  v65 = 0;
  v36 = CSStore2::Writer::pwrite(a2, buf, 0x64uLL, 0, &v65);
  v37 = v65;
  v25 = v37;
  if (!v36)
  {
    goto LABEL_38;
  }

  v38 = *(v8 + 3) + *MEMORY[0x1E69E9AC8] - 1;
  if (v38 == v38 % *MEMORY[0x1E69E9AC8])
  {
    v39 = *MEMORY[0x1E69E9AC8];
  }

  else
  {
    v39 = v38 / *MEMORY[0x1E69E9AC8] * *MEMORY[0x1E69E9AC8];
  }

  v64 = v37;
  v40 = CSStore2::Writer::pwrite(a2, v8 + 100, (v39 - 100), 100, &v64);
  v41 = v64;

  if (!v40)
  {
    v42 = 0;
    v25 = v41;
    goto LABEL_39;
  }

  v25 = v41;
LABEL_29:
  v58 = v25;
  v42 = CSStore2::Writer::sync(a2, &v58);
  v43 = v58;

  v25 = v43;
LABEL_39:
  if (a4 && (v42 & 1) == 0)
  {
    v47 = v25;
    *a4 = v25;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v42;
}

void CSStore2::Writer::~Writer(void **this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1 && *this)
  {
    if (*(this + 9) == 1)
    {
      v2 = CSStore2::Writer::IO<int,__sFILE *>(MEMORY[0x1E69E9880], *this);
      if ((v2 & 0x80000000) == 0)
      {
        v3 = v2;
        bzero(v10, 0x400uLL);
        if (CSStore2::Writer::IO<int,char *>(v3, v10) != -1)
        {
          CSStore2::Writer::IO<int,char const*>(v10);
        }
      }
    }

    v4 = CSStore2::Writer::IO<int,__sFILE *>(MEMORY[0x1E69E9868], *this);
    if (v4)
    {
      v5 = CSStore2::GetLog(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = *__error();
        v8 = __error();
        v9 = strerror(*v8);
        v10[0] = 67109378;
        v10[1] = v7;
        v11 = 2082;
        v12 = v9;
        _os_log_error_impl(&dword_1B9D5B000, v5, OS_LOG_TYPE_ERROR, "Failed to close file handle for store writer: %i (%{public}s).", v10, 0x12u);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t CSStore2::Writer::IO<int,__sFILE *>(CSStore2 *a1, void *a2)
{
  v5 = (a1)(a2);
  v11 = v5;
  if (CSStore2::Writer::logIO == 1)
  {
    __p[0] = a2;
    CSStore2::Writer::toString<__sFILE *>(v9, __p);
    CSStore2::Writer::toString<int>(__p, &v11);
    CSStore2::Writer::logFunctionCall(*(vars0 + 8), v2, a1, v9, 1, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }

  return v5;
}

void sub_1B9D6C924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t CSStore2::Writer::IO<int,char *>(int a1, void *a2)
{
  v5 = fcntl(a1, 50, a2);
  v13 = v5;
  if (CSStore2::Writer::logIO == 1)
  {
    v14 = 50;
    v15 = a1;
    __p[0] = a2;
    CSStore2::Writer::toString<int>(v10, &v15);
    CSStore2::Writer::toString<int>(v11, &v14);
    CSStore2::Writer::toString<char *>(v12, __p);
    CSStore2::Writer::toString<int>(__p, &v13);
    CSStore2::Writer::logFunctionCall(*(vars0 + 8), v2, MEMORY[0x1E69E9A08], v10, 3, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    for (i = 0; i != -72; i -= 24)
    {
      if (v12[i + 23] < 0)
      {
        operator delete(*&v12[i]);
      }
    }
  }

  return v5;
}

void sub_1B9D6CA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = 0;
  while (1)
  {
    if (*(&a17 + v18 + 71) < 0)
    {
      operator delete(*(&a17 + v18 + 48));
    }

    v18 -= 24;
    if (v18 == -72)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void CSStore2::Writer::IO<int,char const*>(const char *a1)
{
  v7 = unlink(a1);
  if (CSStore2::Writer::logIO == 1)
  {
    __p[0] = a1;
    CSStore2::Writer::toString<char const*>(v5, __p);
    CSStore2::Writer::toString<int>(__p, &v7);
    CSStore2::Writer::logFunctionCall(*(vars0 + 8), v1, MEMORY[0x1E69E9A98], v5, 1, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }
  }
}

void sub_1B9D6CBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t CSStore2::Writer::toString<char const*>(_BYTE *a1, const char **a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v7);
  v4 = *a2;
  v5 = strlen(v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v7, v4, v5);
  std::ostringstream::str[abi:nn200100](a1, &v7);
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1BFAE5C80](&v11);
}

void sub_1B9D6CD34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t CSStore2::Writer::toString<int>(_BYTE *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v5);
  MEMORY[0x1BFAE5BD0](&v5, *a2);
  std::ostringstream::str[abi:nn200100](a1, &v5);
  v5 = *MEMORY[0x1E69E54E8];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1BFAE5C80](&v9);
}

void sub_1B9D6CE98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1BFAE5C40](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_1B9D6D078(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 8) = v3;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1BFAE5C80](v2);
  _Unwind_Resume(a1);
}

_BYTE *std::ostringstream::str[abi:nn200100](_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 104);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 96);
    v6 = *(a2 + 56);
    if (v5 < v6)
    {
      *(a2 + 96) = v6;
      v5 = v6;
    }

    v7 = (a2 + 48);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      __dst[23] = 0;
      goto LABEL_14;
    }

    v7 = (a2 + 24);
    v5 = *(a2 + 40);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v4;
  if (v4)
  {
    __dst = memmove(__dst, v8, v4);
  }

LABEL_14:
  v2[v4] = 0;
  return __dst;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1BFAE5C80](a1 + 112);
  return a1;
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1BFAE5B90](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1BFAE5BA0](v20);
  return a1;
}

void sub_1B9D6D560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFAE5BA0](&a10);
  _Unwind_Resume(a1);
}

uint64_t CSStore2::Writer::toString<char *>(_BYTE *a1, const char **a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v7);
  v4 = *a2;
  v5 = strlen(v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v7, v4, v5);
  std::ostringstream::str[abi:nn200100](a1, &v7);
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1BFAE5C80](&v11);
}

void sub_1B9D6D700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t CSStore2::Writer::toString<__sFILE *>(_BYTE *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v5);
  MEMORY[0x1BFAE5BC0](&v5, *a2);
  std::ostringstream::str[abi:nn200100](a1, &v5);
  v5 = *MEMORY[0x1E69E54E8];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1BFAE5C80](&v9);
}

void sub_1B9D6D864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t CSStore2::GarbageCollection::IsNeeded(CSStore2::GarbageCollection *this, const CSStore2::Store *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a2)
  {
    v5 = CSStore2::GarbageCollection::GetGCLog(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B9D5B000, v5, OS_LOG_TYPE_INFO, "Forced. Will collect.", buf, 2u);
    }
  }

  else
  {
    if (!*this || (v2 = *(*this + 8), v3 = *(v2 + 12), LODWORD(v2) = *(v2 + 16), v4 = v3 - v2, v3 <= v2) || v4 <= 0x80000)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___ZN8CSStore217GarbageCollection8IsNeededERKNS_5StoreEh_block_invoke;
      v9[3] = &unk_1E7ED3698;
      v10 = a2;
      v9[4] = &v11;
      v9[5] = this;
      CSStore2::Store::enumerateTables(this, v9);
      v6 = *(v12 + 24);
      goto LABEL_12;
    }

    v5 = CSStore2::GarbageCollection::GetGCLog(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = v4;
      _os_log_impl(&dword_1B9D5B000, v5, OS_LOG_TYPE_INFO, "Store wastes %llu bytes. Will collect.", buf, 0xCu);
    }
  }

  v6 = 1;
  *(v12 + 24) = 1;
LABEL_12:
  _Block_object_dispose(&v11, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void sub_1B9D6DA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CSStore2::GarbageCollection::GetGCLog(CSStore2::GarbageCollection *this)
{
  if (CSStore2::GarbageCollection::GetGCLog(void)::once != -1)
  {
    dispatch_once(&CSStore2::GarbageCollection::GetGCLog(void)::once, &__block_literal_global_206);
  }

  v2 = CSStore2::GarbageCollection::GetGCLog(void)::result;

  return v2;
}

BOOL CSStore2::Writer::pwrite(FILE **a1, const void *a2, size_t a3, off_t a4, void *a5)
{
  v23 = 0;
  v10 = CSStore2::Writer::tell(*a1, &v23);
  v11 = v23;
  v12 = v11;
  if (HIDWORD(v10))
  {
    if (v10 != a4)
    {
      v22 = v11;
      v14 = CSStore2::Writer::seek(*a1, a4, 0, &v22);
      v15 = v22;

      if (!v14)
      {
        goto LABEL_9;
      }

      v12 = v15;
    }

    v21 = v12;
    v16 = CSStore2::Writer::write(*a1, a2, a3, &v21);
    v15 = v21;

    if (v16)
    {
      v20 = v15;
      v13 = CSStore2::Writer::seek(*a1, v10, 0, &v20);
      v17 = v20;

      v15 = v17;
      if (!a5)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

LABEL_9:
    v13 = 0;
    if (!a5)
    {
LABEL_12:
      v12 = v15;
      goto LABEL_13;
    }

LABEL_10:
    if (!v13)
    {
      v18 = v15;
      v13 = 0;
      *a5 = v15;
    }

    goto LABEL_12;
  }

  v13 = 1;
LABEL_13:

  return v13;
}

BOOL CSStore2::Writer::seek(FILE *a1, off_t a2, int a3, void *a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = CSStore2::Writer::IO<int,__sFILE *,long long,int>(a1, a2, a3);
  v6 = v5;
  if (a4 && v5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *__error();
    v12[0] = *MEMORY[0x1E696A278];
    v12[1] = @"Line";
    v13[0] = @"errno";
    v13[1] = &unk_1F37D7CD0;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    *a4 = [v7 errorWithDomain:*MEMORY[0x1E696A798] code:v8 userInfo:v9];
  }

  result = v6 == 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSStore2::GarbageCollection::WriteTableCommon(CSStore2::Store *this, unsigned int *a2, uint64_t a3, FILE **a4, char a5, void *a6)
{
  v56[2] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__114;
  v45 = __Block_byref_object_dispose__115;
  v46 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x5812000000;
  v36 = __Block_byref_object_copy__214;
  v37 = __Block_byref_object_dispose__215;
  v38 = "";
  memset(v39, 0, sizeof(v39));
  v40 = 1065353216;
  Table = *(this + 35);
  if (!Table)
  {
    Table = CSStore2::Store::getTable(this, &cfstr_Dictionary.isa);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___ZN8CSStore217GarbageCollection16WriteTableCommonERKNS_5StoreEPKNS_5TableEPS4_RNS_6WriterEhPU15__autoreleasingP7NSError_block_invoke;
  v30[3] = &unk_1E7ED3670;
  v31 = Table == a2;
  v30[7] = a4;
  v30[8] = this;
  v30[4] = &v41;
  v30[5] = &v47;
  v32 = a5;
  v30[6] = &v33;
  CSStore2::Store::enumerateUnits(this, a2, v30);
  if (*(v48 + 24) == 1)
  {
    v13 = (v42 + 5);
    obj = v42[5];
    v14 = CSStore2::Writer::tell(*a4, &obj);
    objc_storeStrong(v13, obj);
    if (HIDWORD(v14))
    {
      v15 = v34;
      v16 = (v42 + 5);
      v17 = v42[5];
      v54 = 0;
      v18 = CSStore2::Writer::tell(*a4, &v54);
      v19 = v54;
      if (HIDWORD(v18))
      {
        v53 = 0;
        CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::Create(v52, (v15 + 6), v18, 0, &v53);
        v20 = v52[0];
        if (v52[0])
        {
          v51 = v19;
          v21 = CSStore2::Writer::write(*a4, v52[0], v53, &v51);
          v22 = v51;

          (v52[1])(v20);
          if (v21)
          {

            objc_storeStrong(v16, v17);
            LOBYTE(a6) = 1;
            *(v48 + 24) = 1;
            *(a3 + 76) = v14;
            goto LABEL_15;
          }

          v19 = v22;
        }

        else
        {
          v23 = MEMORY[0x1E696ABC0];
          v55[0] = *MEMORY[0x1E696A278];
          v55[1] = @"Line";
          v56[0] = @"kCSStoreAllocFailedErr";
          v56[1] = &unk_1F37D7D00;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
          v25 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v24];

          v19 = v25;
        }
      }

      v26 = v19;

      objc_storeStrong(v16, v19);
    }

    *(v48 + 24) = 0;
  }

  if (a6)
  {
    *a6 = v42[5];
    LOBYTE(a6) = *(v48 + 24);
  }

LABEL_15:
  _Block_object_dispose(&v33, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v39);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  v27 = *MEMORY[0x1E69E9840];
  return a6 & 1;
}

void sub_1B9D6E0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a21, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v39 + 48);
  _Block_object_dispose(&a32, 8);

  _Block_object_dispose((v40 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t CSStore2::Writer::tell(FILE *a1, void *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = CSStore2::Writer::IO<long long,__sFILE *>(a1);
  if (v3 < 0x100000000)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v8 = v3 & 0xFFFFFF00;
      v9 = v3;
      v10 = 0x100000000;
      goto LABEL_9;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *__error();
    v16[0] = *MEMORY[0x1E696A278];
    v16[1] = @"Line";
    v17[0] = @"errno";
    v17[1] = &unk_1F37D7D30;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v6 = [v11 errorWithDomain:*MEMORY[0x1E696A798] code:v12 userInfo:v5];
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v18[0] = *MEMORY[0x1E696A278];
    v18[1] = @"Line";
    v19[0] = @"ERANGE";
    v19[1] = &unk_1F37D7D18;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v6 = [v4 errorWithDomain:*MEMORY[0x1E696A798] code:34 userInfo:v5];
  }

  v7 = v6;

  if (a2)
  {
    v13 = v7;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *a2 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
  return v9 | v8 | v10;
}

uint64_t CSStore2::Writer::IO<int,__sFILE *,long long,int>(FILE *a1, off_t a2, int a3)
{
  v7 = fseeko(a1, a2, a3);
  v15 = v7;
  if (CSStore2::Writer::logIO == 1)
  {
    __p[0] = a1;
    var38[0] = a2;
    v16 = a3;
    CSStore2::Writer::toString<__sFILE *>(v12, __p);
    CSStore2::Writer::toString<long long>(v13, var38);
    CSStore2::Writer::toString<int>(v14, &v16);
    CSStore2::Writer::toString<int>(__p, &v15);
    CSStore2::Writer::logFunctionCall(*(var38[7] + 8), v3, MEMORY[0x1E69E9890], v12, 3, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    for (i = 0; i != -72; i -= 24)
    {
      if (v14[i + 23] < 0)
      {
        operator delete(*&v14[i]);
      }
    }
  }

  return v7;
}

void sub_1B9D6E43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t CSStore2::Writer::sync(void **a1, void *a2)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v4 = CSStore2::Writer::IO<int,__sFILE *>(MEMORY[0x1E69E9878], *a1);
  v5 = v4;
  v6 = CSStore2::GetLog(v4);
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v37 = *a1;
      *buf = 134217984;
      *v50 = v37;
      _os_log_debug_impl(&dword_1B9D5B000, v7, OS_LOG_TYPE_DEBUG, "Successfully called fflush(%p)", buf, 0xCu);
    }

    v15 = CSStore2::Writer::IO<int,__sFILE *>(MEMORY[0x1E69E9880], *a1);
    v16 = v15;
    if ((v15 & 0x80000000) == 0)
    {
      v17 = CSStore2::Writer::IO<int,int>(v15);
      if (v17)
      {
        v18 = __error();
        v19 = *v18;
        v20 = CSStore2::GetLog(v18);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (v19 == 28)
        {
          if (v21)
          {
            v38 = *__error();
            v39 = __error();
            v40 = strerror(*v39);
            *buf = 67109634;
            *v50 = v16;
            *&v50[4] = 1024;
            *&v50[6] = v38;
            LOWORD(v51[0]) = 2082;
            *(v51 + 2) = v40;
            _os_log_error_impl(&dword_1B9D5B000, v20, OS_LOG_TYPE_ERROR, "Error calling fcntl(%i, F_FULLFSYNC): %i (%{public}s).", buf, 0x18u);
          }

          v22 = MEMORY[0x1E696ABC0];
          v23 = *__error();
          v54[0] = *MEMORY[0x1E696A278];
          v54[1] = @"Line";
          v55[0] = @"errno";
          v55[1] = &unk_1F37D7D48;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
          v11 = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:v23 userInfo:v10];
          goto LABEL_5;
        }

        if (v21)
        {
          v41 = *__error();
          v42 = __error();
          v43 = strerror(*v42);
          *buf = 67109634;
          *v50 = v16;
          *&v50[4] = 1024;
          *&v50[6] = v41;
          LOWORD(v51[0]) = 2082;
          *(v51 + 2) = v43;
          _os_log_error_impl(&dword_1B9D5B000, v20, OS_LOG_TYPE_ERROR, "Error calling fcntl(%i, F_FULLFSYNC), trying fsync(): %i (%{public}s).", buf, 0x18u);
        }

        v25 = CSStore2::Writer::IO<int,int>(MEMORY[0x1E69E9A18], v16);
        v26 = v25;
        v27 = CSStore2::GetLog(v25);
        v28 = v27;
        if (v26)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v44 = *__error();
            v45 = __error();
            v46 = strerror(*v45);
            *buf = 67109634;
            *v50 = v16;
            *&v50[4] = 1024;
            *&v50[6] = v44;
            LOWORD(v51[0]) = 2082;
            *(v51 + 2) = v46;
            _os_log_error_impl(&dword_1B9D5B000, v28, OS_LOG_TYPE_ERROR, "Error calling fsync(%i): %i (%{public}s).", buf, 0x18u);
          }

          v29 = MEMORY[0x1E696ABC0];
          v30 = *__error();
          v52[0] = *MEMORY[0x1E696A278];
          v52[1] = @"Line";
          v53[0] = @"errno";
          v53[1] = &unk_1F37D7D60;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
          v11 = [v29 errorWithDomain:*MEMORY[0x1E696A798] code:v30 userInfo:v10];
          goto LABEL_5;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v50 = v16;
          _os_log_debug_impl(&dword_1B9D5B000, v28, OS_LOG_TYPE_DEBUG, "Successfully called fsync(%i)", buf, 8u);
        }
      }

      else
      {
        v24 = CSStore2::GetLog(v17);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v50 = v16;
          _os_log_debug_impl(&dword_1B9D5B000, v24, OS_LOG_TYPE_DEBUG, "Successfully called fcntl(%i, F_FULLFSYNC)", buf, 8u);
        }
      }
    }

    v12 = 0;
    v14 = 1;
    goto LABEL_29;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v31 = *a1;
    v32 = *__error();
    v33 = __error();
    v34 = strerror(*v33);
    *buf = 134218498;
    *v50 = v31;
    *&v50[8] = 1024;
    v51[0] = v32;
    LOWORD(v51[1]) = 2082;
    *(&v51[1] + 2) = v34;
    _os_log_error_impl(&dword_1B9D5B000, v7, OS_LOG_TYPE_ERROR, "Error calling fflush(%p): %i (%{public}s).", buf, 0x1Cu);
  }

  v8 = MEMORY[0x1E696ABC0];
  v9 = *__error();
  v47[0] = *MEMORY[0x1E696A278];
  v47[1] = @"Line";
  v48[0] = @"errno";
  v48[1] = &unk_1F37D7D78;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v11 = [v8 errorWithDomain:*MEMORY[0x1E696A798] code:v9 userInfo:v10];
LABEL_5:
  v12 = v11;

  if (a2)
  {
    v13 = v12;
    v14 = 0;
    *a2 = v12;
  }

  else
  {
    v14 = 0;
  }

LABEL_29:

  v35 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t CSStore2::Writer::IO<int,int>(int a1)
{
  v3 = fcntl(a1, 51, 1);
  v11 = v3;
  if (CSStore2::Writer::logIO == 1)
  {
    LODWORD(__p[0]) = a1;
    v12 = 1;
    v13 = 51;
    CSStore2::Writer::toString<int>(v8, __p);
    CSStore2::Writer::toString<int>(v9, &v13);
    CSStore2::Writer::toString<int>(v10, &v12);
    CSStore2::Writer::toString<int>(__p, &v11);
    CSStore2::Writer::logFunctionCall(*(vars0 + 8), v1, MEMORY[0x1E69E9A08], v8, 3, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    for (i = 0; i != -72; i -= 24)
    {
      if (v10[i + 23] < 0)
      {
        operator delete(*&v10[i]);
      }
    }
  }

  return v3;
}

void sub_1B9D6EB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = 0;
  while (1)
  {
    if (*(&a17 + v18 + 71) < 0)
    {
      operator delete(*(&a17 + v18 + 48));
    }

    v18 -= 24;
    if (v18 == -72)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CSStore2::Writer::IO<int,int>(CSStore2 *a1, uint64_t a2)
{
  v3 = a2;
  v5 = (a1)(a2);
  v11 = v5;
  if (CSStore2::Writer::logIO == 1)
  {
    LODWORD(__p[0]) = v3;
    CSStore2::Writer::toString<int>(v9, __p);
    CSStore2::Writer::toString<int>(__p, &v11);
    CSStore2::Writer::logFunctionCall(*(vars0 + 8), v2, a1, v9, 1, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }

  return v5;
}

void sub_1B9D6ECCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t CSStore2::Writer::toString<long long>(_BYTE *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v5);
  MEMORY[0x1BFAE5C00](&v5, *a2);
  std::ostringstream::str[abi:nn200100](a1, &v5);
  v5 = *MEMORY[0x1E69E54E8];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1BFAE5C80](&v9);
}

void sub_1B9D6EE50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

off_t CSStore2::Writer::IO<long long,__sFILE *>(FILE *a1)
{
  v3 = ftello(a1);
  var28[0] = v3;
  if (CSStore2::Writer::logIO == 1)
  {
    __p[0] = a1;
    CSStore2::Writer::toString<__sFILE *>(v7, __p);
    CSStore2::Writer::toString<long long>(__p, var28);
    CSStore2::Writer::logFunctionCall(*(var28[5] + 8), v1, MEMORY[0x1E69E9898], v7, 1, __p);
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

void sub_1B9D6EF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t __Block_byref_object_copy__214(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
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

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void ___ZN8CSStore217GarbageCollection16WriteTableCommonERKNS_5StoreEPKNS_5TableEPS4_RNS_6WriterEhPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  v149 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v131 = CSStore2::Writer::tell(*v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  if (!HIDWORD(v131))
  {
    v6 = a1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_130;
  }

  if (*(a1 + 72) != 1)
  {
    if (*a2 >> 30 != 1)
    {
      v79 = *(a1 + 56);
      v80 = *(*(a1 + 32) + 8);
      v82 = *(v80 + 40);
      v81 = (v80 + 40);
      v133 = v82;
      v83 = a2[1] + 11;
      if (v83 >= 4)
      {
        v84 = v83 & 0xFFFFFFFC;
      }

      else
      {
        v84 = 4;
      }

      v85 = CSStore2::Writer::write(*v79, a2, v84, &v133);
      objc_storeStrong(v81, v133);
      v6 = a1;
      *(*(*(a1 + 40) + 8) + 24) = v85;
      goto LABEL_111;
    }

    v41 = *(a1 + 56);
    v128 = *(a1 + 64);
    v42 = *(a1 + 73);
    v43 = *(*(a1 + 32) + 8);
    v46 = *(v43 + 40);
    v44 = (v43 + 40);
    v45 = v46;
    __nitems = 0;
    v129 = CSStore2::Writer::tell(*v41, &__nitems);
    v47 = __nitems;
    if (!HIDWORD(v129))
    {
      goto LABEL_109;
    }

    v48 = a2[1] + 11;
    if (v48 >= 4)
    {
      v49 = v48 & 0xFFFFFFFC;
    }

    else
    {
      v49 = 4;
    }

    v50 = malloc_type_malloc(v49, 0x10000404247E4FDuLL);
    v51 = v50;
    if (!v50)
    {
      v92 = MEMORY[0x1E696ABC0];
      v144 = *MEMORY[0x1E696A278];
      v145 = @"Line";
      *&v146 = @"kCSStoreAllocFailedErr";
      *(&v146 + 1) = &unk_1F37D7CE8;
      v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v144 count:2];
      v94 = [v92 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v93];

      v47 = v94;
      goto LABEL_109;
    }

    memcpy(v50, a2, v49);
    v137 = v47;
    v124 = v49;
    v52 = CSStore2::Writer::seek(*v41, v49, 1, &v137);
    v53 = v137;

    if (!v52)
    {
      goto LABEL_108;
    }

    v136 = v53;
    v54 = CSStore2::GarbageCollection::WriteTableCommon(v128);
    v55 = v136;

    if (!v54)
    {
      v53 = v55;
      goto LABEL_108;
    }

    Table = *(v128 + 34);
    if (!Table)
    {
      Table = CSStore2::Store::getTable(v128, &cfstr_String_0.isa);
    }

    if (Table != a2)
    {
      goto LABEL_146;
    }

    StringCache = CSStore2::getStringCache(v128, v56);
    if (StringCache)
    {
      v146 = 0u;
      v147 = 0u;
      v148 = 1065353216;
      v59 = *StringCache;
      if (v59)
      {
        v60 = 0;
        v61 = StringCache + 1;
        v120 = v44;
        *v122 = v51;
        v118 = v41;
        v119 = v45;
        do
        {
          v62 = &v61[2 * v60];
          v63 = *v62;
          if (*v62 - 0x20000000 >= 0xE0000001)
          {
            v64 = v62[1];
            if (!__CFADD__(v64, 8 * v63))
            {
              v65 = *(*v128 + 8);
              v66 = *(v65 + 12);
              if (v64 + 8 * v63 <= v66 && v66 > v64)
              {
                v68 = 0;
                v69 = v65 + v64;
                do
                {
                  v70 = (v69 + 8 * v68);
                  v71 = *v70;
                  if (v71 && (*(v70 + 5) & 1) != 0)
                  {
                    if (!*(&v146 + 1))
                    {
                      goto LABEL_89;
                    }

                    v72 = vcnt_s8(*(&v146 + 8));
                    v72.i16[0] = vaddlv_u8(v72);
                    if (v72.u32[0] > 1uLL)
                    {
                      v73 = *v70;
                      if (*(&v146 + 1) <= v71)
                      {
                        v73 = v71 % DWORD2(v146);
                      }
                    }

                    else
                    {
                      v73 = (DWORD2(v146) - 1) & v71;
                    }

                    v74 = *(v146 + 8 * v73);
                    if (!v74 || (v75 = *v74) == 0)
                    {
LABEL_89:
                      operator new();
                    }

                    while (1)
                    {
                      v76 = v75[1];
                      if (v76 == v71)
                      {
                        if (*(v75 + 4) == v71)
                        {
                          *(v75 + 5) = v70[1];
                          v63 = v61[2 * v60];
                          break;
                        }
                      }

                      else
                      {
                        if (v72.u32[0] > 1uLL)
                        {
                          if (v76 >= *(&v146 + 1))
                          {
                            v76 %= *(&v146 + 1);
                          }
                        }

                        else
                        {
                          v76 &= *(&v146 + 1) - 1;
                        }

                        if (v76 != v73)
                        {
                          goto LABEL_89;
                        }
                      }

                      v75 = *v75;
                      if (!v75)
                      {
                        goto LABEL_89;
                      }
                    }
                  }

                  ++v68;
                }

                while (v68 < v63);
                v41 = v118;
                v59 = *StringCache;
                v44 = v120;
                v51 = *v122;
                v45 = v119;
                v61 = StringCache + 1;
              }
            }
          }

          ++v60;
        }

        while (v60 < v59);
      }

      *&v139[1] = 0;
      v77 = CSStore2::Writer::tell(*v41, &v139[1]);
      v78 = *&v139[1];
      if (!HIDWORD(v77))
      {
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v146);
LABEL_144:
        v116 = v78;
        v112 = 0;
        v109 = v78;
LABEL_145:

        v53 = v78;
        v55 = v53;
        if (v112)
        {
LABEL_146:
          *&v146 = v55;
          v117 = CSStore2::Writer::pwrite(v41, v51, v124, v129, &v146);
          v97 = v146;

          free(v51);
          if (v117)
          {
            v96 = 1;
            goto LABEL_110;
          }

          v47 = v97;
LABEL_109:
          v95 = v47;
          v96 = 0;
          v45 = v47;
          v97 = v47;
LABEL_110:

          objc_storeStrong(v44, v45);
          v6 = a1;
          *(*(*(a1 + 40) + 8) + 24) = v96;
          goto LABEL_111;
        }

LABEL_108:
        free(v51);
        v47 = v53;
        goto LABEL_109;
      }

      v139[0] = 0;
      CSStore2::HashMap<unsigned int,CSStore2::_StringCacheEntry,CSStore2::_StringFunctions,0ull>::Create(&v144, v128, &v146, v77, v139);
      v110 = v144;
      if (!v144)
      {
        v113 = MEMORY[0x1E696ABC0];
        v140 = *MEMORY[0x1E696A278];
        v141 = @"Line";
        v142 = @"kCSStoreAllocFailedErr";
        v143 = &unk_1F37D7F88;
        v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v140 count:2];
        v115 = [v113 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v114];

        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v146);
        v78 = v115;
        goto LABEL_144;
      }

      v51[20] = v77;
      v142 = v78;
      v111 = CSStore2::Writer::write(*v41, v110, v139[0], &v142);
      v109 = v142;

      (v145)(v110);
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v146);
      if (!v111)
      {
        v78 = v109;
        goto LABEL_144;
      }
    }

    else
    {
      v109 = 0;
      v51[20] = -1;
    }

    v112 = 1;
    v78 = v55;
    goto LABEL_145;
  }

  CSStore2::Dictionary::Get(&v146, *(a1 + 64), 4 * *a2);
  if (BYTE8(v147))
  {
    v7 = v146;
    v8 = v147;
    v9 = *(a1 + 56);
    v10 = *(*(a1 + 32) + 8);
    v12 = *(v10 + 40);
    v11 = (v10 + 40);
    v134 = v12;
    v13 = *(v146 + 280);
    if (!v13)
    {
      v13 = CSStore2::Store::getTable(v146, &cfstr_Dictionary.isa);
    }

    Unit = CSStore2::Store::getUnit(v7, v13, v8);
    if (Unit)
    {
      *&v139[1] = *(Unit + 1);
      if (v139[2] != 0xFFFFFFFFLL)
      {
        v15 = *(*v7 + 1);
        if (*(v15 + 12) > v139[2])
        {
          v121 = Unit;
          v123 = v11;
          v146 = 0u;
          v147 = 0u;
          v148 = 1065353216;
          v127 = (v15 + v139[2]);
          v16 = *v127;
          if (v16)
          {
            v17 = 0;
            v18 = v127 + 4;
            v125 = a2;
            v126 = v7;
            do
            {
              v19 = &v18[8 * v17];
              v20 = *v19;
              if ((*v19 - 0x20000000) >= 0xE0000001)
              {
                v21 = *(v19 + 1);
                if (!__CFADD__(v21, 8 * v20))
                {
                  v22 = *(*v7 + 1);
                  v23 = *(v22 + 12);
                  if (v21 + 8 * v20 <= v23 && v23 > v21)
                  {
                    v25 = 0;
                    v26 = v22 + v21;
                    do
                    {
                      v27 = (v26 + 8 * v25);
                      v28 = *v27;
                      if (v28)
                      {
                        v29 = v27[1];
                        if (v29)
                        {
                          if (!*(&v146 + 1))
                          {
                            goto LABEL_38;
                          }

                          v30 = vcnt_s8(*(&v146 + 8));
                          v30.i16[0] = vaddlv_u8(v30);
                          if (v30.u32[0] > 1uLL)
                          {
                            v31 = *v27;
                            if (*(&v146 + 1) <= v28)
                            {
                              v31 = v28 % DWORD2(v146);
                            }
                          }

                          else
                          {
                            v31 = (DWORD2(v146) - 1) & v28;
                          }

                          v32 = *(v146 + 8 * v31);
                          if (!v32 || (v33 = *v32) == 0)
                          {
LABEL_38:
                            operator new();
                          }

                          while (1)
                          {
                            v34 = v33[1];
                            if (v34 == v28)
                            {
                              if (*(v33 + 4) == v28)
                              {
                                *(v33 + 5) = v29;
                                v20 = *v19;
                                break;
                              }
                            }

                            else
                            {
                              if (v30.u32[0] > 1uLL)
                              {
                                if (v34 >= *(&v146 + 1))
                                {
                                  v34 %= *(&v146 + 1);
                                }
                              }

                              else
                              {
                                v34 &= *(&v146 + 1) - 1;
                              }

                              if (v34 != v31)
                              {
                                goto LABEL_38;
                              }
                            }

                            v33 = *v33;
                            if (!v33)
                            {
                              goto LABEL_38;
                            }
                          }
                        }
                      }

                      ++v25;
                    }

                    while (v25 < v20);
                    v7 = v126;
                    v16 = *v127;
                    v18 = v127 + 4;
                    a2 = v125;
                  }
                }
              }

              ++v17;
            }

            while (v17 < v16);
          }

          v35 = CSStore2::Writer::tell(*v9, &v134);
          v11 = v123;
          if (HIDWORD(v35))
          {
            LODWORD(__nitems) = 0;
            CSStore2::HashMap<unsigned int,unsigned int,CSStore2::Dictionary::_Functions,0ull>::Create(&v144, &v146, v35, 0, &__nitems);
            v36 = v144;
            if (v144)
            {
              v139[2] = v35;
              if (CSStore2::Writer::write(*v9, v144, __nitems, &v134) && (v37 = CSStore2::Writer::tell(*v9, &v134), HIDWORD(v37)) && CSStore2::Writer::write(*v9, v121, 8uLL, &v134) && CSStore2::Writer::write(*v9, &v139[1], 8uLL, &v134))
              {
                v38 = v37 & 0x100000000;
                v39 = v37 & 0xFFFFFF00;
                v40 = v37;
              }

              else
              {
                v40 = 0;
                v38 = 0;
                v39 = 0;
              }

              (v145)(v36);
              goto LABEL_137;
            }

            v107 = MEMORY[0x1E696ABC0];
            v140 = *MEMORY[0x1E696A278];
            v141 = @"Line";
            v142 = @"kCSStoreAllocFailedErr";
            v143 = &unk_1F37D7FA0;
            v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v140 count:2];
            v134 = [v107 errorWithDomain:*MEMORY[0x1E696A768] code:-9493 userInfo:v108];
          }

          v40 = 0;
          v38 = 0;
          v39 = 0;
LABEL_137:
          std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v146);
          v90 = v38 | v40 | v39;
          goto LABEL_103;
        }
      }

      v86 = MEMORY[0x1E696ABC0];
      v144 = *MEMORY[0x1E696A278];
      v145 = @"Line";
      *&v146 = @"kCSStoreNotFoundErr";
      *(&v146 + 1) = &unk_1F37D7FB8;
      v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v144 count:2];
      v134 = [v86 errorWithDomain:*MEMORY[0x1E696A768] code:-9499 userInfo:v87];
    }

    else
    {
      v88 = MEMORY[0x1E696ABC0];
      v144 = *MEMORY[0x1E696A278];
      v145 = @"Line";
      *&v146 = @"kCSStoreNotFoundErr";
      *(&v146 + 1) = &unk_1F37D7FD0;
      v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v144 count:2];
      v134 = [v88 errorWithDomain:*MEMORY[0x1E696A768] code:-9499 userInfo:v89];
    }

    v90 = 0;
LABEL_103:
    objc_storeStrong(v11, v134);
    v91 = v131;
    v6 = a1;
    if (HIDWORD(v90))
    {
      v91 = v90;
    }

    LODWORD(v131) = v91;
    *(*(*(a1 + 40) + 8) + 24) = BYTE4(v90);
    goto LABEL_111;
  }

  v6 = a1;
LABEL_111:
  if (*(*(*(v6 + 40) + 8) + 24) != 1)
  {
    goto LABEL_130;
  }

  v98 = *(*(v6 + 48) + 8);
  v99 = (4 * *a2);
  v100 = v98[7];
  if (!*&v100)
  {
    goto LABEL_129;
  }

  v101 = vcnt_s8(v100);
  v101.i16[0] = vaddlv_u8(v101);
  if (v101.u32[0] > 1uLL)
  {
    v102 = (4 * *a2);
    if (*&v100 <= v99)
    {
      v102 = v99 % v100.i32[0];
    }
  }

  else
  {
    v102 = (v100.i32[0] - 1) & v99;
  }

  v103 = *(*&v98[6] + 8 * v102);
  if (!v103 || (v104 = *v103) == 0)
  {
LABEL_129:
    operator new();
  }

  while (1)
  {
    v105 = v104[1];
    if (v105 == v99)
    {
      break;
    }

    if (v101.u32[0] > 1uLL)
    {
      if (v105 >= *&v100)
      {
        v105 %= *&v100;
      }
    }

    else
    {
      v105 &= *&v100 - 1;
    }

    if (v105 != v102)
    {
      goto LABEL_129;
    }

LABEL_128:
    v104 = *v104;
    if (!v104)
    {
      goto LABEL_129;
    }
  }

  if (*(v104 + 4) != v99)
  {
    goto LABEL_128;
  }

  v6 = a1;
  *(v104 + 5) = v131;
LABEL_130:
  if ((*(*(*(v6 + 40) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  v106 = *MEMORY[0x1E69E9840];
}

void sub_1B9D701B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v18 - 144);
  free(v15);

  _Unwind_Resume(a1);
}

BOOL CSStore2::Writer::write(FILE *__stream, const void *a2, size_t __nitems, void *a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = __nitems;
  v6 = CSStore2::Writer::IO<unsigned long,void const*,unsigned long,unsigned long,__sFILE *>(a2, __nitems, __stream);
  v7 = v6;
  if (a4 && v6 != v5)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *__error();
    v13[0] = *MEMORY[0x1E696A278];
    v13[1] = @"Line";
    v14[0] = @"errno";
    v14[1] = &unk_1F37D7CB8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    *a4 = [v8 errorWithDomain:*MEMORY[0x1E696A798] code:v9 userInfo:v10];
  }

  result = v7 == v5;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

size_t CSStore2::Writer::IO<unsigned long,void const*,unsigned long,unsigned long,__sFILE *>(const void *a1, size_t __nitems, FILE *__stream)
{
  v7 = fwrite(a1, 1uLL, __nitems, __stream);
  v14 = v7;
  if (CSStore2::Writer::logIO == 1)
  {
    v16 = __nitems;
    v17 = 1;
    v15 = __stream;
    std::ostringstream::basic_ostringstream[abi:nn200100](&v18);
    MEMORY[0x1BFAE5BC0](&v18, a1);
    std::ostringstream::str[abi:nn200100](__dst, &v18);
    v18 = *MEMORY[0x1E69E54E8];
    *(&v18 + *(v18 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
    v19 = MEMORY[0x1E69E5548] + 16;
    if (v21 < 0)
    {
      operator delete(v20[7].__locale_);
    }

    v19 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v20);
    std::ostream::~ostream();
    MEMORY[0x1BFAE5C80](_F8);
    CSStore2::Writer::toString<unsigned long>(v11, &v17);
    CSStore2::Writer::toString<unsigned long>(v12, &v16);
    CSStore2::Writer::toString<__sFILE *>(v13, &v15);
    CSStore2::Writer::toString<unsigned long>(&v18, &v14);
    CSStore2::Writer::logFunctionCall(*(_F8[25] + 8), v3, MEMORY[0x1E69E98A0], __dst, 4, &v18);
    if (SHIBYTE(v20[0].__locale_) < 0)
    {
      operator delete(v18);
    }

    for (i = 0; i != -96; i -= 24)
    {
      if (v13[i + 23] < 0)
      {
        operator delete(*&v13[i]);
      }
    }
  }

  return v7;
}

void sub_1B9D70640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  v32 = 0;
  while (1)
  {
    if (*(&a21 + v32 + 7) < 0)
    {
      operator delete(*(&a19 + v32));
    }

    v32 -= 24;
    if (v32 == -96)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CSStore2::Writer::toString<unsigned long>(_BYTE *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v5);
  MEMORY[0x1BFAE5BF0](&v5, *a2);
  std::ostringstream::str[abi:nn200100](a1, &v5);
  v5 = *MEMORY[0x1E69E54E8];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1BFAE5C80](&v9);
}

void sub_1B9D70810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void ___ZN8CSStore217GarbageCollection8GetGCLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.coreservicesstore", "GC");
  v1 = CSStore2::GarbageCollection::GetGCLog(void)::result;
  CSStore2::GarbageCollection::GetGCLog(void)::result = v0;
}

void ___ZN8CSStore217GarbageCollection8IsNeededERKNS_5StoreEh_block_invoke(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2[19];
  if (v3 != -1)
  {
    v5 = *(**(a1 + 40) + 8);
    if (*(v5 + 12) > v3 && (*(v5 + v3) - 1) <= 0x1FFE)
    {
      v8 = *(a1 + 48);
      Statistics = CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::GetStatistics((v5 + v3));
      v10 = (v8 & 4) != 0 ? 50 : 5;
      if (Statistics / HIDWORD(Statistics) > v10)
      {
        v11 = CSStore2::GarbageCollection::GetGCLog(Statistics);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = CSStore2::Table::copyCFName(a2);
          v14 = 136446210;
          v15 = [(__CFString *)v12 UTF8String];
          _os_log_impl(&dword_1B9D5B000, v11, OS_LOG_TYPE_INFO, "Identifier cache on table '%{public}s' is unbalanced. Will collect.", &v14, 0xCu);
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t CSStore2::HashMap<unsigned int,unsigned int,CSStore2::_IdentifierFunctions,1ull>::GetStatistics(unsigned int *a1)
{
  v1 = *a1;
  v2 = ((8 * v1) | 4u) << 32;
  if (!v1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = a1 + 1;
  v5 = *a1;
  do
  {
    v7 = *v4;
    v4 += 2;
    v6 = v7;
    v3 = v7 + v3;
    if (v7 <= v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = v6;
    }

    v2 = v8 | ((HIDWORD(v2) + 8 * v6) << 32);
    --v5;
  }

  while (v5);
  return v3 | (v1 << 32);
}

uint64_t CSStore2::Store::collectGarbage(CSStore2::Store *this, CSStore2::Store *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (CSStore2::GarbageCollection::IsNeeded(this, a2))
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 temporaryDirectory];
    v6 = [v5 URLByAppendingPathComponent:@"ls-XXXXXXXXXXXXXXXX" isDirectory:0];

    if (!v6)
    {
      goto LABEL_26;
    }

    bzero(buf, 0x400uLL);
    v8 = CSStore2::GetLog([v6 getFileSystemRepresentation:buf maxLength:1024]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v57 = 136380675;
      *v58 = buf;
      _os_log_debug_impl(&dword_1B9D5B000, v8, OS_LOG_TYPE_DEBUG, "Creating temporary file for store writer at %{private}s", v57, 0xCu);
    }

    if (softLinkMKBDeviceUnlockedSinceBoot() < 1)
    {
      v9 = CSStore2::Writer::IO<int,char *>(buf);
    }

    else
    {
      v9 = CSStore2::Writer::IO<int,char *,int,int>(buf);
    }

    v11 = v9;
    if ((v9 & 0x80000000) != 0)
    {
      v25 = CSStore2::GetLog(v9);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v26 = *__error();
      v27 = __error();
      v28 = strerror(*v27);
      *v57 = 67109378;
      *v58 = v26;
      *&v58[4] = 2082;
      *&v58[6] = v28;
      v29 = "Failed to create file descriptor for store writer: %i (%{public}s).";
    }

    else
    {
      v12 = CSStore2::Writer::IO<__sFILE *,int,char const*>(v9);
      if (v12)
      {

        v53 = 0;
        v54 = v12;
        v55 = 257;
        v13 = CSStore2::GarbageCollection::Collect(this, &v54, a2, &v53);
        v14 = v53;
        v15 = v14;
        if (!v13)
        {
          v32 = CSStore2::GetLog(v14);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 138543362;
            *&buf[0].st_mode = v15;
            _os_log_error_impl(&dword_1B9D5B000, v32, OS_LOG_TYPE_ERROR, "Error running garbage collection: %{public}@", buf, 0xCu);
          }

          goto LABEL_51;
        }

        CSStore2::Writer::sync(&v54, 0);
        v16 = CSStore2::Writer::IO<int,__sFILE *>(MEMORY[0x1E69E9880], v54);
        v17 = v16;
        if ((v16 & 0x80000000) != 0)
        {
          v20 = CSStore2::GetLog(v16);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 134217984;
            *&buf[0].st_mode = v54;
            _os_log_error_impl(&dword_1B9D5B000, v20, OS_LOG_TYPE_ERROR, "Unsupported: file handle %p had neither an underlying buffer nor a file descriptor.", buf, 0xCu);
          }

          goto LABEL_48;
        }

        if (CSStore2::Writer::IO<int,int,stat *>(v16, buf))
        {
          v18 = __error();
          v19 = *v18;
          v20 = CSStore2::GetLog(v18);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = strerror(v19);
            *v57 = 67109634;
            *v58 = v17;
            *&v58[4] = 1024;
            *&v58[6] = v19;
            *&v58[10] = 2082;
            *&v58[12] = v21;
            v22 = "Failed to stat fd %i: error %i %{public}s.";
LABEL_17:
            v23 = v20;
            v24 = 24;
LABEL_42:
            _os_log_error_impl(&dword_1B9D5B000, v23, OS_LOG_TYPE_ERROR, v22, v57, v24);
          }
        }

        else
        {
          if ((buf[0].st_size - 1) <= 0x7FFFFFFFFFFFFFFDLL)
          {
            v33 = CSStore2::Writer::IO<void *,void *,unsigned long,int,int,int,long long>(buf[0].st_size, v17);
            if (v33 != -1)
            {
              v34 = objc_alloc(MEMORY[0x1E695DEF0]);
              v35 = [v34 initWithBytesNoCopy:v33 length:buf[0].st_size deallocator:*MEMORY[0x1E696A268]];
              v32 = v35;
              if (v35)
              {
                v36 = v35;
                v37 = [v32 bytes];
                v38 = [v32 length];
                Copy = CSStore2::VM::AllocateCopy(v37, v38, v38);
                if (Copy)
                {
                  CSStore2::Store::setBytesNoCopy(this, Copy, [v32 length]);
                }

                v10 = 1;
                goto LABEL_52;
              }

              v20 = CSStore2::GetLog(0);
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_48;
              }

              *v57 = 67109120;
              *v58 = v17;
              v22 = "Failed to create NSData for mapped file %i.";
              v23 = v20;
              v24 = 8;
              goto LABEL_42;
            }

            v46 = __error();
            v47 = *v46;
            v20 = CSStore2::GetLog(v46);
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_48;
            }

            v48 = strerror(v47);
            *v57 = 67109634;
            *v58 = v17;
            *&v58[4] = 1024;
            *&v58[6] = v47;
            *&v58[10] = 2082;
            *&v58[12] = v48;
            v22 = "Failed to map fd %i: error %i %{public}s.";
            goto LABEL_17;
          }

          v20 = CSStore2::GetLog(buf[0].st_size);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *v57 = 134217984;
            *v58 = buf[0].st_size;
            v22 = "Wrote a ludicrously long stream (%lli bytes) that cannot fit back in an NSData.";
            v23 = v20;
            v24 = 12;
            goto LABEL_42;
          }
        }

LABEL_48:

        v50 = CSStore2::GetLog(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0].st_dev) = 0;
          _os_log_impl(&dword_1B9D5B000, v50, OS_LOG_TYPE_DEFAULT, "Unexpected: garbage collection succeeded, but did not get an NSData object.", buf, 2u);
        }

        v32 = 0;
LABEL_51:
        v10 = 0;
LABEL_52:

LABEL_53:
        CSStore2::Writer::~Writer(&v54);
        goto LABEL_54;
      }

      v30 = CSStore2::GetLog(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v40 = *__error();
        v41 = __error();
        v42 = strerror(*v41);
        *v57 = 67109378;
        *v58 = v40;
        *&v58[4] = 2082;
        *&v58[6] = v42;
        _os_log_error_impl(&dword_1B9D5B000, v30, OS_LOG_TYPE_ERROR, "Failed to create file handle from file descriptor for store writer: %i (%{public}s).", v57, 0x12u);
      }

      v31 = CSStore2::Writer::IO<int,int>(MEMORY[0x1E69E9A00], v11);
      if (!v31)
      {
        goto LABEL_25;
      }

      v25 = CSStore2::GetLog(v31);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_24:

LABEL_25:
LABEL_26:
        v54 = 0;
        v55 = 257;
        v15 = CSStore2::GetLog(v7);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0].st_dev) = 0;
          _os_log_error_impl(&dword_1B9D5B000, v15, OS_LOG_TYPE_ERROR, "Error running garbage collection: failed to create temporary file handle", buf, 2u);
        }

        v10 = 0;
        goto LABEL_53;
      }

      v43 = *__error();
      v44 = __error();
      v45 = strerror(*v44);
      *v57 = 67109378;
      *v58 = v43;
      *&v58[4] = 2082;
      *&v58[6] = v45;
      v29 = "Failed to close file descriptor for store writer: %i (%{public}s).";
    }

    _os_log_error_impl(&dword_1B9D5B000, v25, OS_LOG_TYPE_ERROR, v29, v57, 0x12u);
    goto LABEL_24;
  }

  v10 = 1;
LABEL_54:
  v51 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1B9D71108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  CSStore2::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

uint64_t CSStore2::Writer::IO<int,int,stat *>(int a1, stat *a2)
{
  v5 = fstat(a1, a2);
  v10 = v5;
  if (CSStore2::Writer::logIO == 1)
  {
    v11 = a1;
    CSStore2::Writer::toString<int>(v8, &v11);
    std::ostringstream::basic_ostringstream[abi:nn200100](&v12);
    MEMORY[0x1BFAE5BC0](&v12, a2);
    std::ostringstream::str[abi:nn200100](v9, &v12);
    v12 = *MEMORY[0x1E69E54E8];
    *(&v12 + *(v12 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
    v13 = MEMORY[0x1E69E5548] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v14);
    std::ostream::~ostream();
    MEMORY[0x1BFAE5C80](_A8);
    CSStore2::Writer::toString<int>(&v12, &v10);
    CSStore2::Writer::logFunctionCall(*(_A8[25] + 8), v2, MEMORY[0x1E69E9A10], v8, 2, &v12);
    if (SHIBYTE(v14[0].__locale_) < 0)
    {
      operator delete(v12);
    }

    for (i = 0; i != -48; i -= 24)
    {
      if (v9[i + 23] < 0)
      {
        operator delete(*&v8[i + 24]);
      }
    }
  }

  return v5;
}

void sub_1B9D713A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v25 = 0;
  while (1)
  {
    if (*(&a17 + v25 + 7) < 0)
    {
      operator delete(*(&a15 + v25));
    }

    v25 -= 24;
    if (v25 == -48)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void *CSStore2::Writer::IO<void *,void *,unsigned long,int,int,int,long long>(size_t a1, int a2)
{
  v5 = mmap(0, a1, 1, 2, a2, 0);
  v16 = v5;
  if (CSStore2::Writer::logIO == 1)
  {
    __p[0] = 0;
    var48[0] = a1;
    v19 = 2;
    v20 = 1;
    v18 = a2;
    v17 = 0;
    CSStore2::Writer::toString<void *>(v10, __p);
    CSStore2::Writer::toString<unsigned long>(v11, var48);
    CSStore2::Writer::toString<int>(v12, &v20);
    CSStore2::Writer::toString<int>(v13, &v19);
    CSStore2::Writer::toString<int>(v14, &v18);
    CSStore2::Writer::toString<long long>(v15, &v17);
    CSStore2::Writer::toString<void *>(__p, &v16);
    CSStore2::Writer::logFunctionCall(*(var48[9] + 8), v2, MEMORY[0x1E69E9A70], v10, 6, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    for (i = 0; i != -144; i -= 24)
    {
      if (v15[i + 23] < 0)
      {
        operator delete(*&v15[i]);
      }
    }
  }

  return v5;
}

void sub_1B9D7159C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = 0;
  while (1)
  {
    if (*(&a15 + v16 + 143) < 0)
    {
      operator delete(*(&a15 + v16 + 120));
    }

    v16 -= 24;
    if (v16 == -144)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CSStore2::Writer::toString<void *>(_BYTE *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v5);
  MEMORY[0x1BFAE5BC0](&v5, *a2);
  std::ostringstream::str[abi:nn200100](a1, &v5);
  v5 = *MEMORY[0x1E69E54E8];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1BFAE5C80](&v9);
}

void sub_1B9D7175C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

FILE *CSStore2::Writer::IO<__sFILE *,int,char const*>(int a1)
{
  v3 = fdopen(a1, "w");
  v10 = v3;
  if (CSStore2::Writer::logIO == 1)
  {
    v11 = a1;
    __p[0] = "w";
    CSStore2::Writer::toString<int>(v8, &v11);
    CSStore2::Writer::toString<char const*>(v9, __p);
    CSStore2::Writer::toString<__sFILE *>(__p, &v10);
    CSStore2::Writer::logFunctionCall(*(vars0 + 8), v1, MEMORY[0x1E69E9870], v8, 2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    for (i = 0; i != -48; i -= 24)
    {
      if (v9[i + 23] < 0)
      {
        operator delete(*&v8[i + 24]);
      }
    }
  }

  return v3;
}

void sub_1B9D71870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v28 = 0;
  while (1)
  {
    if (*(&a27 + v28) < 0)
    {
      operator delete(*(&a22 + v28));
    }

    v28 -= 24;
    if (v28 == -48)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CSStore2::Writer::IO<int,char *,int,int>(char *a1)
{
  v3 = mkstemp_dprotected_np(a1, 3, 0);
  v11 = v3;
  if (CSStore2::Writer::logIO == 1)
  {
    __p[0] = a1;
    v12 = 0;
    v13 = 3;
    CSStore2::Writer::toString<char *>(v8, __p);
    CSStore2::Writer::toString<int>(v9, &v13);
    CSStore2::Writer::toString<int>(v10, &v12);
    CSStore2::Writer::toString<int>(__p, &v11);
    CSStore2::Writer::logFunctionCall(*(vars0 + 8), v1, MEMORY[0x1E69E98D8], v8, 3, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    for (i = 0; i != -72; i -= 24)
    {
      if (v10[i + 23] < 0)
      {
        operator delete(*&v10[i]);
      }
    }
  }

  return v3;
}