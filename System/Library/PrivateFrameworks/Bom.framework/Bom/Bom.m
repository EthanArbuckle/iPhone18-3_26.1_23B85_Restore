void *BOMCFStringGetUTF8String(const __CFString *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_11;
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr || (v3 = CStringPtr, !*CStringPtr))
  {
    if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
    {
      v8 = strlen(buffer);
      v9 = BOM_malloc(v8 + 1);
      if (v9)
      {
        v10 = v9;
        memmove(v9, buffer, v8 + 1);
LABEL_12:
        v11 = *MEMORY[0x277D85DE8];
        return v10;
      }
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v4 = strlen(CStringPtr);
  v5 = BOM_malloc(v4 + 1);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *MEMORY[0x277D85DE8];

  return memmove(v5, v3, v4 + 1);
}

CFPropertyListRef BOMCFPropertyListReadFromPathWithSys(uint64_t a1, CFOptionFlags a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a3;
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  if ((*(v3 + 10))(*(v3 + 1), a1, v16))
  {
    return 0;
  }

  v6 = v17;
  v7 = BOM_malloc(v17);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = (*(v3 + 2))(*(v3 + 1), a1, 0, 0);
  if (v9 == -1 || (v10 = v9, v11 = (*(v3 + 6))(*(v3 + 1), v9, v8, v6), (*(v3 + 4))(*(v3 + 1), v10), v11 != v6) || (v12 = CFDataCreateWithBytesNoCopy(0, v8, v6, *MEMORY[0x277CBECF0])) == 0)
  {
    free(v8);
    return 0;
  }

  v13 = v12;
  v14 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], v12, a2, 0, 0);
  CFRelease(v13);
  return v14;
}

BOOL BOMCFPropertyListWriteToPathWithSys(CFPropertyListRef propertyList, uint64_t a2, uint64_t (**a3)(void, uint64_t, uint64_t, uint64_t))
{
  v3 = 1;
  if (propertyList)
  {
    if (a2)
    {
      Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
      if (Data)
      {
        v7 = Data;
        if (!a3)
        {
          a3 = BomSys_default();
        }

        v8 = a3[2](a3[1], a2, 513, 420);
        if (v8 != -1)
        {
          v9 = v8;
          Length = CFDataGetLength(v7);
          v11 = a3[7];
          v12 = a3[1];
          BytePtr = CFDataGetBytePtr(v7);
          v3 = v11(v12, v9, BytePtr, Length) != Length;
          (a3[4])(a3[1], v9);
        }

        CFRelease(v7);
      }
    }
  }

  return v3;
}

const __CFBoolean *BOMCFGetBoolValue(const __CFBoolean *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFBooleanGetTypeID())
    {

      return CFBooleanGetValue(v1);
    }

    else
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
        return (valuePtr != 0);
      }

      else
      {
        v4 = CFGetTypeID(v1);
        if (v4 == CFStringGetTypeID())
        {
          UTF8String = BOMCFStringGetUTF8String(v1);
          v6 = UTF8String;
          do
          {
            v7 = __tolower(*v6);
            *v6++ = v7;
          }

          while (v7);
          return (strcmp(UTF8String, "yes") == 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t BOMCFGetIntValue(const void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0xFFFFFFFFLL;
  }

  valuePtr = 0;
  if (CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr))
  {
    return valuePtr;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *BOM_malloc(size_t a1)
{
  v1 = malloc_type_malloc(a1, 0x48B1BF8uLL);
  if (!v1)
  {
    v2 = __error();
    v3 = strerror(*v2);
    v4 = BOMExceptionHandlerMessage("malloc: %s\n", v3);
    v5 = __error();
    _BOMExceptionHandlerCall(v4, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMSystemCmds.c", 27, *v5);
  }

  return v1;
}

void *BOM_malloczero(size_t size)
{
  v2 = malloc_type_calloc(1uLL, size, 0x69EDBEB6uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, size);
  }

  else
  {
    v4 = __error();
    v5 = strerror(*v4);
    v6 = BOMExceptionHandlerMessage("calloc: %s\n", v5);
    v7 = __error();
    _BOMExceptionHandlerCall(v6, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMSystemCmds.c", 38, *v7);
  }

  return v3;
}

void *BOM_calloc(size_t a1, size_t a2)
{
  v2 = malloc_type_calloc(a1, a2, 0xC7B60289uLL);
  if (!v2)
  {
    v3 = __error();
    v4 = strerror(*v3);
    v5 = BOMExceptionHandlerMessage("calloc: %s\n", v4);
    v6 = __error();
    _BOMExceptionHandlerCall(v5, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMSystemCmds.c", 52, *v6);
  }

  return v2;
}

void *BOM_realloc(void *a1, size_t a2)
{
  v2 = reallocf(a1, a2);
  if (!v2)
  {
    v3 = __error();
    v4 = strerror(*v3);
    v5 = BOMExceptionHandlerMessage("reallocf: %s\n", v4);
    v6 = __error();
    _BOMExceptionHandlerCall(v5, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMSystemCmds.c", 66, *v6);
  }

  return v2;
}

char *BOM_realloczero(void *a1, unint64_t a2, size_t __size)
{
  v5 = reallocf(a1, __size);
  v6 = v5;
  if (v5)
  {
    if (__size > a2)
    {
      bzero(&v5[a2], __size - a2);
    }
  }

  else
  {
    v7 = __error();
    v8 = strerror(*v7);
    v9 = BOMExceptionHandlerMessage("reallocf: %s\n", v8);
    v10 = __error();
    _BOMExceptionHandlerCall(v9, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMSystemCmds.c", 80, *v10);
  }

  return v6;
}

uint64_t BOM_strrncmp(const char *a1, const char *a2, size_t a3)
{
  v6 = strlen(a1);
  v7 = strlen(a2);
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  return strncmp(&a1[v6 - v8], &a2[v7 - v8], v9);
}

uint64_t pkzip_crypto_init(int *a1, char *__s)
{
  v2 = __s;
  *a1 = 0x2345678912345678;
  a1[2] = 878082192;
  result = strlen(__s);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = *v2++;
      result = pkzip_crypto_update(a1, v6);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t pkzip_crypto_update(int *a1, uint64_t a2)
{
  v2 = PKZip_crctab[(*a1 ^ a2)] ^ (*a1 >> 8);
  v3 = 134775813 * (a1[1] + v2) + 1;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = PKZip_crctab[a1[2] ^ HIBYTE(v3)] ^ (a1[2] >> 8);
  return a2;
}

uint64_t pkzip_crypto_decrypt_buffer(int *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v6 = *a2;
      v7 = (a1[2] & 0xFFFD ^ 3) * (a1[2] | 2);
      v8 = v6 ^ (v7 >> 8);
      pkzip_crypto_update(a1, (v6 ^ BYTE1(v7)));
      *a2++ = v8;
      --v3;
    }

    while (v3);
  }

  return 0;
}

void **BOMStackNew()
{
  v0 = BOM_calloc(1uLL, 0x18uLL);
  v1 = v0;
  if (v0)
  {
    v0[1] = 1024;
    v2 = BOM_malloczero(0x2000uLL);
    *v1 = v2;
    if (!v2)
    {
      BOMStackFree(v1);
      return 0;
    }
  }

  return v1;
}

void BOMStackFree(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t *BOMStackPop(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result && (v2 = result[2]) != 0)
    {
      v3 = v2 - 1;
      result[2] = v3;
      result = *(v1 + 8 * v3);
      *(v1 + 8 * v3) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *BOMStackPeek(void *result)
{
  if (result)
  {
    if (*result && (v1 = result[2]) != 0)
    {
      return *(*result + 8 * v1 - 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *BOMStackPoke(void *result, uint64_t a2)
{
  if (result && *result)
  {
    v2 = result[2];
    if (v2)
    {
      *(*result + 8 * v2 - 8) = a2;
    }
  }

  return result;
}

char *BOMStackPush(char *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = *result;
    if (result)
    {
      v5 = v2[1];
      v4 = v2[2];
      v6 = v4 + 1;
      if (v4 + 1 < v5)
      {
LABEL_9:
        v2[2] = v6;
        *&result[8 * v4] = a2;
        return result;
      }

      if (v5 != 0xFFFFFFF)
      {
        v7 = 2 * v5;
        if (2 * v5 >= 0xFFFFFFF)
        {
          v7 = 0xFFFFFFFLL;
        }

        v2[1] = v7;
        result = BOM_realloczero(result, 8 * v5, 8 * v7);
        *v2 = result;
        if (result)
        {
          v4 = v2[2];
          v6 = v4 + 1;
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t BOMStackCount(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *darc_format_entry_new(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  result = platform_calloc(a1, 1uLL, 0x48uLL);
  if (result)
  {
    *result = 1853125241;
    result[1] = a1;
    *(result + 16) = 2037544037;
  }

  return result;
}

void darc_format_entry_free(void *__b)
{
  if (__b && *__b == 1853125241 && *(__b + 16) == 2037544037)
  {
    v2 = __b[5];
    if (v2)
    {
      if (*(__b + 8))
      {
        v3 = 0;
        v4 = 0;
        do
        {
          if (*&v2[v3])
          {
            platform_free(__b[1], *&v2[v3]);
            v2 = __b[5];
            *&v2[v3] = 0;
          }

          *&v2[v3 + 8] = 0;
          if (*&v2[v3 + 16])
          {
            platform_free(__b[1], *&v2[v3 + 16]);
            v2 = __b[5];
            *&v2[v3 + 16] = 0;
          }

          *&v2[v3 + 24] = 0;
          ++v4;
          v3 += 32;
        }

        while (v4 < *(__b + 8));
      }

      platform_free(__b[1], v2);
    }

    v5 = __b[1];
    platform_memset(v5, __b, 0, 0x48uLL);

    platform_free(v5, __b);
  }
}

uint64_t darc_format_entry_set_type(_DWORD *a1, int a2)
{
  if (!a1 || *a1 != 1853125241 || a1[16] != 2037544037)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  a1[4] = a2;
  return result;
}

_DWORD *darc_format_entry_get_type(_DWORD *result)
{
  if (result)
  {
    if (*result == 1853125241 && result[16] == 2037544037)
    {
      return result[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t darc_format_entry_set_size(uint64_t a1, uint64_t a2)
{
  if (!a1 || *a1 != 1853125241 || *(a1 + 64) != 2037544037)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 24) = a2;
  return result;
}

uint64_t darc_format_entry_set_attribute(uint64_t a1, char *__s, void *a3, size_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != 1853125241)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (__s)
  {
    if (*(a1 + 64) == 2037544037)
    {
      v9 = strlen(__s);
      result = 0xFFFFFFFFLL;
      if (a4)
      {
        if (a3 && v9)
        {
          LODWORD(v10) = *(a1 + 32);
          if (v10)
          {
            v11 = 0;
            LODWORD(v12) = 0;
            do
            {
              v13 = (*(a1 + 40) + 32 * v11 + 8);
              while (v9 != *v13)
              {
                ++v11;
                v13 += 4;
                if (v11 >= v10)
                {
                  goto LABEL_23;
                }
              }

              v14 = platform_strncmp(*(a1 + 8), __s, *(v13 - 1), v9);
              if (v14)
              {
                v12 = v12;
              }

              else
              {
                v12 = v11;
              }

              v10 = *(a1 + 32);
            }

            while (++v11 < v10 && v14 != 0);
            if (v14)
            {
LABEL_23:
              v16 = v10 + 1;
              goto LABEL_26;
            }

            v30 = *(*(a1 + 40) + 32 * v12 + 16);
            if (v30)
            {
              platform_free(*(a1 + 8), v30);
            }

            goto LABEL_29;
          }

          v16 = 1;
LABEL_26:
          v17 = platform_realloc(*(a1 + 8), *(a1 + 40), 32 * v16);
          if (v17)
          {
            v18 = *(a1 + 32);
            *(a1 + 32) = v16;
            *(a1 + 40) = v17;
            v19 = platform_strdup(*(a1 + 8), __s);
            if (v19)
            {
              v20 = (*(a1 + 40) + 32 * v18);
              *v20 = v19;
              v20[1] = v9;
              LODWORD(v12) = v18;
LABEL_29:
              v21 = platform_malloc(*(a1 + 8), a4);
              if (v21)
              {
                v22 = v21;
                platform_memcpy(*(a1 + 8), v21, a3, a4);
                result = 0;
                v23 = *(a1 + 40) + 32 * v12;
                *(v23 + 16) = v22;
                *(v23 + 24) = a4;
                return result;
              }

              v28 = *MEMORY[0x277D85DF8];
              v29 = __error();
              strerror(*v29);
              fprintf(v28, "Could not allocate %ld bytes for value: %s\n");
              return 0xFFFFFFFFLL;
            }

            v24 = *MEMORY[0x277D85DF8];
            v27 = __error();
            v31 = __s;
            v32 = strerror(*v27);
            v26 = "Could not duplicate key %s: %s\n";
          }

          else
          {
            v24 = *MEMORY[0x277D85DF8];
            v25 = __error();
            v31 = strerror(*v25);
            v26 = "Could not re-allocate the entry list: %s\n";
          }

          fprintf(v24, v26, v31, v32);
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t darc_format_entry_get_attribute(uint64_t a1, char *__s, void *a3)
{
  if (!a1 || *a1 != 1853125241)
  {
    return -1;
  }

  v5 = -1;
  if (__s)
  {
    if (*(a1 + 64) == 2037544037)
    {
      v7 = platform_strlen(*(a1 + 8), __s);
      if (v7)
      {
        if (*(a1 + 32))
        {
          v8 = v7;
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = *(a1 + 40);
            if (v8 == *(v11 + v9 + 8) && !platform_strncmp(*(a1 + 8), __s, *(v11 + v9), v8))
            {
              v12 = *(a1 + 40) + v9;
              v5 = *(v12 + 24);
              if (a3)
              {
                platform_memcpy(*(a1 + 8), a3, *(v12 + 16), *(v12 + 24));
              }
            }

            ++v10;
            v9 += 32;
          }

          while (v10 < *(a1 + 32));
        }
      }
    }
  }

  return v5;
}

uint64_t darc_format_entry_set_range(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || *a1 != 1853125241 || *(a1 + 64) != 2037544037)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  return result;
}

void BOMPatternListFree(const __CFArray *a1)
{
  if (a1)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v4 = Count;
        for (i = 0; i != v4; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (ValueAtIndex)
          {
            v7 = ValueAtIndex;
            MEMORY[0x245CFC780]();
            free(v7);
          }
        }
      }

      CFRelease(a1);
    }
  }
}

void BOMPatternFree(void *a1)
{
  if (a1)
  {
    MEMORY[0x245CFC780]();

    free(a1);
  }
}

regex_t *BOMPatternCompileString(const char *a1)
{
  v2 = BOM_malloc(0x20uLL);
  v3 = v2;
  if (v2 && regcomp(v2, a1, 5))
  {
    v4 = BOMExceptionHandlerMessage("**** WARNING **** Can't compile pattern: %s\n", a1);
    v5 = __error();
    _BOMExceptionHandlerCall(v4, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMPatternList.c", 47, *v5);
    free(v3);
    return 0;
  }

  return v3;
}

BOOL BOMPatternMatch(regex_t *a1, const char *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return regexec(a1, a2, 0, 0, 0) == 0;
    }
  }

  return result;
}

uint64_t BOMPatternListMatch(const __CFArray *a1, const char *a2)
{
  result = 0;
  if (a1 && a2)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a1) && (Count = CFArrayGetCount(a1), Count >= 1))
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        if (ValueAtIndex)
        {
          if (!regexec(ValueAtIndex, a2, 0, 0, 0))
          {
            break;
          }
        }

        if (v7 == ++v8)
        {
          return 0;
        }
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

__CFArray *BOMPatternListFromStringList(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  if (Mutable)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        if (ValueAtIndex)
        {
          v8 = BOMPatternCompileString(ValueAtIndex);
          if (v8)
          {
            CFArrayAppendValue(Mutable, v8);
          }
        }
      }
    }
  }

  return Mutable;
}

__CFArray *BOMPatternListExtractFromFile(const char *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = fopen(a1, "r");
  if (v2)
  {
    v3 = v2;
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    if (Mutable)
    {
      while (1)
      {
        do
        {
          if (!fgets(__s, 1025, v3))
          {
            goto LABEL_11;
          }

          v5 = strlen(__s);
        }

        while (!v5);
        v6 = v5 - 1;
        if (__s[v5 - 1] == 10)
        {
          break;
        }

LABEL_7:
        v7 = strlen(__s);
        if (v7)
        {
          v6 = v7 - 1;
          if (__s[v7 - 1] == 47)
          {
            break;
          }
        }

        v8 = BOMPatternCompileString(__s);
        if (v8)
        {
          CFArrayAppendValue(Mutable, v8);
        }
      }

      __s[v6] = 0;
      goto LABEL_7;
    }

LABEL_11:
    fclose(v3);
  }

  else
  {
    v9 = __error();
    v10 = strerror(*v9);
    v11 = BOMExceptionHandlerMessage("can't open %s for reading: %s\n", a1, v10);
    v12 = __error();
    _BOMExceptionHandlerCall(v11, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMPatternList.c", 130, *v12);
    Mutable = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return Mutable;
}

__CFArray *BOMPatternListExtractFromStrings(int a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  if (Mutable)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 0;
    while (1)
    {
      strncpy(__dst, *(a2 + 8 * v6), 0x400uLL);
      v7 = strlen(__dst);
      if (v7)
      {
        break;
      }

LABEL_13:
      if (++v6 == a1)
      {
        goto LABEL_14;
      }
    }

    v8 = v7 - 1;
    if (__dst[v7 - 1] != 10)
    {
      goto LABEL_9;
    }

    while (1)
    {
      __dst[v8] = 0;
LABEL_9:
      v9 = strlen(__dst);
      if (v9)
      {
        v8 = v9 - 1;
        if (__dst[v9 - 1] == 47)
        {
          continue;
        }
      }

      v10 = BOMPatternCompileString(__dst);
      if (v10)
      {
        CFArrayAppendValue(Mutable, v10);
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t BOMFileNewFromFDWithSys(void *a1, uint64_t a2, char a3, unsigned __int8 *a4, void (**a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = BOM_malloczero(0x118uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  if (a5)
  {
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  a5 = BomSys_default();
  if ((a3 & 0x10) != 0)
  {
LABEL_4:
    a5[5](a5[1], a2, 48, 1);
  }

LABEL_5:
  *v11 = *a4 == 119;
  v11[2] = a2;
  if (_BOMFileInit(v11, a3 & 0xF, a5))
  {
LABEL_6:
    v12 = v11;
LABEL_7:
    _freeBOMFile(v12);
    return 0xFFFFFFFFLL;
  }

  if ((a3 & 0x20) != 0)
  {
    if (getenv("BOM_ASYNC_DEBUG"))
    {
      gBOMAsyncDebug = 1;
    }

    else if (gBOMAsyncDebug != 1)
    {
LABEL_17:
      v14 = BOM_malloczero(0x118uLL);
      if (!v14)
      {
        goto LABEL_6;
      }

      v15 = v14;
      if (*v11 == 1)
      {
        v16 = 6;
      }

      else
      {
        v16 = 5;
      }

      *v14 = v16;
      v14[1] = v11;
      if (_BOMFileInit(v14, 0, a5))
      {
        v12 = v15;
        goto LABEL_7;
      }

      v11 = v15;
      goto LABEL_12;
    }

    fprintf(*MEMORY[0x277D85DF8], "async compression enabled for %d\n", a2);
    goto LABEL_17;
  }

LABEL_12:
  result = 0;
  *a1 = v11;
  return result;
}

uint64_t _BOMFileInit(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    a3 = BomSys_default();
  }

  *(a1 + 272) = a3;
  v5 = malloc_type_malloc(0x20000uLL, 0x9810D44FuLL);
  *(a1 + 88) = v5;
  if (!v5)
  {
    goto LABEL_44;
  }

  switch(a2)
  {
    case 8:
      v6 = 4;
      goto LABEL_10;
    case 2:
      v6 = 2;
      *(a1 + 32) = 2;
      goto LABEL_12;
    case 1:
      v6 = 1;
LABEL_10:
      *(a1 + 32) = v6;
      *(a1 + 240) = -1;
      goto LABEL_12;
  }

  v6 = 0;
  *(a1 + 32) = 0;
LABEL_12:
  v7 = *a1;
  result = 0xFFFFFFFFLL;
  if (*a1 > 3)
  {
    switch(v7)
    {
      case 4:
        v14 = BOM_malloczero(8uLL);
        if (!v14)
        {
          goto LABEL_44;
        }

        v15 = v14;
        result = 0;
        *v15 = 0;
        *(a1 + 8) = v15;
        break;
      case 5:
        result = pthread_once(&gBufferPoolOnce, _initBufferPool);
        if (!result)
        {
          v16 = BOMBufferAllocate(gBOMAsyncBufferSize);
          if (v16)
          {
            BOMBufferPoolAddBuffer(gBufferPool, v16);
            *(a1 + 96) = BOMBufferFIFOCreate();
            *(a1 + 104) = 0;
            *(a1 + 232) = 0;
            if (!pthread_mutex_init((a1 + 168), 0) && !pthread_cond_init((a1 + 120), 0))
            {
              memset(&v22, 0, sizeof(v22));
              v20 = qos_class_self();
              if (pthread_attr_init(&v22))
              {
                v13 = 0;
              }

              else if (pthread_attr_set_qos_class_np(&v22, v20, 0))
              {
                v13 = 0;
              }

              else
              {
                v13 = &v22;
              }

              v21 = _asyncReadThread;
              goto LABEL_77;
            }

            goto LABEL_43;
          }

LABEL_44:
          result = 0xFFFFFFFFLL;
        }

        break;
      case 6:
        result = pthread_once(&gBufferPoolOnce, _initBufferPool);
        if (result)
        {
          break;
        }

        v11 = BOMBufferAllocate(gBOMAsyncBufferSize);
        if (v11)
        {
          BOMBufferPoolAddBuffer(gBufferPool, v11);
          *(a1 + 96) = BOMBufferFIFOCreate();
          *(a1 + 104) = 0;
          *(a1 + 232) = 0;
          if (!pthread_mutex_init((a1 + 168), 0) && !pthread_cond_init((a1 + 120), 0))
          {
            memset(&v22, 0, sizeof(v22));
            v12 = qos_class_self();
            if (pthread_attr_init(&v22))
            {
              v13 = 0;
            }

            else if (pthread_attr_set_qos_class_np(&v22, v12, 0))
            {
              v13 = 0;
            }

            else
            {
              v13 = &v22;
            }

            v21 = _asyncWriteThread;
LABEL_77:
            result = pthread_create((a1 + 112), v13, v21, a1) != 0;
            break;
          }

LABEL_43:
          result = 1;
          break;
        }

        goto LABEL_44;
      default:
        break;
    }

LABEL_45:
    v17 = *MEMORY[0x277D85DE8];
    return result;
  }

  if ((v7 - 1) >= 2)
  {
    if (v7 && v7 != 3)
    {
      goto LABEL_45;
    }

    if (((1 << v6) & 0x16) == 0)
    {
LABEL_62:
      if (v6 == 2)
      {
        result = _BOMFileSetupBzip2(a1, 0);
        goto LABEL_45;
      }

      if (v6 == 1)
      {
        result = _BOMFileSetupGzip(a1, 0, 1);
        goto LABEL_45;
      }

LABEL_65:
      result = 0;
      goto LABEL_45;
    }

    *(&v22.__sig + 7) = 0;
    v22.__sig = 0;
    Raw = _BOMFileReadRaw(a1, &v22, 11);
    if (Raw != -1)
    {
      v10 = *(a1 + 32);
      if (v10 == 1)
      {
        if (LOBYTE(v22.__sig) != 31)
        {
LABEL_60:
          v19 = 0;
          goto LABEL_61;
        }
      }

      else if (v10 != 4 || LOBYTE(v22.__sig) != 31)
      {
        if (v10 != 2 && v10 != 4 || LOBYTE(v22.__sig) != 66 || BYTE1(v22.__sig) != 90 || BYTE2(v22.__sig) != 104)
        {
          goto LABEL_60;
        }

        v19 = 2;
        goto LABEL_61;
      }

      if (BYTE1(v22.__sig) != 139 || BYTE2(v22.__sig) != 8)
      {
        goto LABEL_60;
      }

      v19 = 1;
LABEL_61:
      *(a1 + 32) = v19;
      *(a1 + 72) = Raw;
      *(a1 + 80) = 1;
      memcpy(*(a1 + 88), &v22, Raw);
      v6 = *(a1 + 32);
      goto LABEL_62;
    }

    goto LABEL_44;
  }

  if (v6 == 1)
  {
    goto LABEL_34;
  }

  if (v6 != 2)
  {
    if (v6 != 4)
    {
      goto LABEL_65;
    }

    *(a1 + 32) = 1;
LABEL_34:
    *(&v22.__sig + 7) = 196608;
    v22.__sig = 559903;
    if (!_BOMFileSetupGzip(a1, 1, 1))
    {
      if (_BOMFileWriteRaw(a1, &v22, 10) > 9)
      {
        goto LABEL_65;
      }

      deflateEnd(*(a1 + 40));
    }

    goto LABEL_44;
  }

  v18 = *MEMORY[0x277D85DE8];

  return _BOMFileSetupBzip2(a1, 1);
}

void _freeBOMFile(void *a1)
{
  if (*a1 == 4)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
      a1[1] = 0;
    }
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    free(v4);
    a1[6] = 0;
  }

  v5 = a1[12];
  if (v5)
  {
    BOMBufferFIFODestroy(v5);
    a1[12] = 0;
  }

  v6 = a1[11];
  if (v6)
  {
    free(v6);
  }

  free(a1);
}

uint64_t BOMFileNewFromCFWriteStream(void *a1, const void *a2, char a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  TypeID = CFWriteStreamGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = BOM_malloczero(0x118uLL);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  *v7 = 2;
  v7[1] = a2;
  result = _BOMFileInit(v7, a3 & 0xF, 0);
  if (result)
  {
    _freeBOMFile(v8);
    return 0xFFFFFFFFLL;
  }

  *a1 = v8;
  return result;
}

uint64_t BOMFileNewFromCFReadStream(void *a1, const void *a2, char a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  TypeID = CFReadStreamGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = BOM_malloczero(0x118uLL);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  *v7 = 3;
  v7[1] = a2;
  result = _BOMFileInit(v7, a3 & 0xF, 0);
  if (result)
  {
    _freeBOMFile(v8);
    return 0xFFFFFFFFLL;
  }

  *a1 = v8;
  return result;
}

uint64_t BOMFileNewMirrorWithSys(void *a1, void *a2)
{
  v4 = BOM_malloczero(0x118uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  *v4 = 4;
  result = _BOMFileInit(v4, 0, a2);
  if (result)
  {
    _freeBOMFile(v5);
    return 0xFFFFFFFFLL;
  }

  *a1 = v5;
  return result;
}

uint64_t BOMFileOpenWithSys(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (**a6)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = a6;
  v52 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v6 = BomSys_default();
  }

  v22 = 25202;
  result = (v6[2])(v6[1], a2, a3, a4);
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  if (result == -1)
  {
    goto LABEL_19;
  }

  v13 = result;
  result = (v6[11])(v6[1], result, v18);
  if (result == -1)
  {
    goto LABEL_19;
  }

  v14 = WORD2(v18[0]) & 0xF000;
  if (v14 == 0x8000)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    memset(v23, 0, sizeof(v23));
    if (!(v6[14])(v6[1], v13, v23) && !(DWORD2(v24) ^ 0x73666361 | BYTE12(v24)))
    {
      v17[0] = 0u;
      DWORD1(v17[0]) = 3;
      v17[1] = v19;
      v6[5](v6[1], v13, 42, v17);
    }
  }

  else if (v14 == 0x4000)
  {
    *__error() = 21;
LABEL_18:
    result = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  if (a3)
  {
    BYTE2(v22) = 0;
    v15 = 25207;
  }

  else
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_16;
    }

    BYTE2(v22) = 0;
    v15 = 25185;
  }

  LOWORD(v22) = v15;
LABEL_16:
  result = BOMFileNewFromFDWithSys(a1, v13, a5, &v22, v6);
  if (result)
  {
    (v6[4])(v6[1], v13);
    goto LABEL_18;
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMFileClose(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  if ((*a1 - 1) <= 1)
  {
    v3 = *(a1 + 32);
    if (v3 == 1)
    {
      if (_BOMFileFinishGzipCompression(a1, 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 40);
      if (v4->avail_out)
      {
        goto LABEL_41;
      }

      v5 = 1;
      while (1)
      {
        v19 = 0x20000 - v4->avail_out;
        v20 = *(a1 + 48);
        while (v19)
        {
          v21 = _BOMFileWriteRaw(a1, v20, v19);
          v19 -= v21;
          v20 += v21;
          if (v21 == -1)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v4->next_out = *(a1 + 48);
        v4->avail_out = 0x20000;
        if (!v5)
        {
          break;
        }

LABEL_41:
        v18 = BZ2_bzCompress(v4, 2);
        v5 = 0;
        if (v18 != 4)
        {
          v5 = 1;
          if (v18 != 3)
          {
            if (v18)
            {
              return 0xFFFFFFFFLL;
            }

            v5 = v4->avail_out == 0;
          }
        }
      }

      BZ2_bzCompressEnd(v4);
    }

    v2 = *a1;
  }

  if (v2 == 3 || v2 == 0)
  {
    v7 = *(a1 + 32);
    if (v7 == 2)
    {
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      v10 = *(v9 + 8);
      *(a1 + 72) = v10;
      *(a1 + 80) = 0;
      memmove(v8, *v9, v10);
      if (BZ2_bzDecompressEnd(*(a1 + 40)))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_20;
      }

      if (_BOMFileFinishGzipDecompression(a1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    v2 = *a1;
  }

LABEL_20:
  if (v2 - 5 <= 1)
  {
    if (v2 == 6)
    {
      v11 = *(a1 + 104);
      if (v11)
      {
        *(a1 + 104) = 0;
      }

      else
      {
        v11 = BOMBufferPoolRequestBuffer(gBufferPool);
        v11[1] = 0;
        v11[2] = 0;
      }

      *(v11 + 12) |= 1u;
      BOMBufferFIFOEnqueue(*(a1 + 96), v11);
      if (pthread_mutex_lock((a1 + 168)))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *(a1 + 232);
      if (!v15)
      {
        v15 = 1;
        *(a1 + 232) = 1;
      }

      if (gBOMAsyncDebug != 1)
      {
        goto LABEL_52;
      }

      fwrite("waiting for async write thread to finish...", 0x2BuLL, 1uLL, *MEMORY[0x277D85DF8]);
      while (1)
      {
        v15 = *(a1 + 232);
LABEL_52:
        if (v15 == 2)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 120), (a1 + 168)))
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (pthread_mutex_unlock((a1 + 168)) || pthread_join(*(a1 + 112), 0))
      {
        return 0xFFFFFFFFLL;
      }

      if (gBOMAsyncDebug == 1)
      {
        fwrite("async write thread terminated. Draining FIFO...", 0x2FuLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      while (BOMBufferFIFOCount(*(a1 + 96)))
      {
        v22 = BOMBufferFIFODequeue(*(a1 + 96));
        BOMBufferPoolReturnBuffer(gBufferPool, v22);
      }

      if ((gBOMAsyncDebug & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (pthread_mutex_lock((a1 + 168)))
      {
        return 0xFFFFFFFFLL;
      }

      v12 = *(a1 + 104);
      if (v12)
      {
        BOMBufferPoolReturnBuffer(gBufferPool, v12);
        *(a1 + 104) = 0;
      }

      while (BOMBufferFIFOCount(*(a1 + 96)))
      {
        v13 = BOMBufferFIFODequeue(*(a1 + 96));
        BOMBufferPoolReturnBuffer(gBufferPool, v13);
      }

      v14 = *(a1 + 232);
      if (!v14)
      {
        v14 = 1;
        *(a1 + 232) = 1;
      }

      if (gBOMAsyncDebug != 1)
      {
        goto LABEL_64;
      }

      fwrite("waiting for async read thread to finish...", 0x2AuLL, 1uLL, *MEMORY[0x277D85DF8]);
      while (1)
      {
        v14 = *(a1 + 232);
LABEL_64:
        if (v14 == 2)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 120), (a1 + 168)))
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (pthread_mutex_unlock((a1 + 168)) || pthread_join(*(a1 + 112), 0))
      {
        return 0xFFFFFFFFLL;
      }

      while (BOMBufferFIFOCount(*(a1 + 96)))
      {
        v23 = BOMBufferFIFODequeue(*(a1 + 96));
        BOMBufferPoolReturnBuffer(gBufferPool, v23);
      }

      if (gBOMAsyncDebug != 1)
      {
        goto LABEL_74;
      }
    }

    fwrite("done\n", 5uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

LABEL_74:
  if (*(a1 + 32) != 3)
  {
    goto LABEL_77;
  }

  v24 = *(a1 + 40);
  if (!CloseStreamCompressor())
  {
    *(a1 + 40) = 0;
LABEL_77:
    v16 = 0;
    v25 = *a1;
    if (*a1 > 2)
    {
      if (v25 - 5 < 2)
      {
        v16 = BOMFileClose(*(a1 + 8));
LABEL_87:
        *(a1 + 8) = 0;
        goto LABEL_88;
      }

      if (v25 != 3)
      {
        goto LABEL_88;
      }

      CFReadStreamClose(*(a1 + 8));
    }

    else
    {
      if (v25 < 2)
      {
        v16 = (*(*(a1 + 272) + 32))(*(*(a1 + 272) + 8), *(a1 + 8));
        *(a1 + 8) = -1;
LABEL_88:
        _freeBOMFile(a1);
        return v16;
      }

      if (v25 != 2)
      {
        goto LABEL_88;
      }

      CFWriteStreamClose(*(a1 + 8));
    }

    v16 = 0;
    goto LABEL_87;
  }

  return 0xFFFFFFFFLL;
}

unint64_t BOMFileRead(int *a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  v3 = *a1;
  if (!*a1)
  {
    return _BOMFileDirectRead(a1, a2, a3);
  }

  if (v3 != 5)
  {
    if (v3 == 3)
    {
      return _BOMFileDirectRead(a1, a2, a3);
    }

    return -1;
  }

  return _BOMFileAsyncRead(a1, a2, a3);
}

uint64_t _BOMFileDirectRead(uint64_t a1, char *__dst, unint64_t a3)
{
  if (a3)
  {
    if (!__dst)
    {
      return -1;
    }

    v4 = a3;
    v6 = *(a1 + 32);
    if (v6)
    {
      if (v6 == 2)
      {
        v15 = *(a1 + 40);
        v15->next_out = __dst;
        v15->avail_out = a3;
        do
        {
          if (!v15->avail_in && !*(a1 + 64))
          {
            Raw = _BOMFileReadRaw(a1, *(a1 + 48), 0x20000);
            v8 = Raw;
            if (Raw)
            {
              if (Raw == -1)
              {
                return v8;
              }
            }

            else
            {
              *(a1 + 64) = 1;
            }

            v15->avail_in = Raw;
            v15->next_in = *(a1 + 48);
          }

          v17 = BZ2_bzDecompress(v15);
          if (v17)
          {
            if (v17 != 4)
            {
              return -1;
            }

            *(a1 + 64) = 1;
          }

          avail_out = v15->avail_out;
        }

        while (avail_out && !*(a1 + 65) && !*(a1 + 64));
        goto LABEL_44;
      }

      if (v6 == 1)
      {
        v7 = *(a1 + 40);
        v7->next_out = __dst;
        v7->avail_out = a3;
        do
        {
          LODWORD(v8) = v7->avail_in;
          if (!v8)
          {
            if (*(a1 + 64))
            {
              LODWORD(v8) = 0;
            }

            else
            {
              v9 = _BOMFileReadRaw(a1, *(a1 + 48), 0x20000);
              v8 = v9;
              if (v9)
              {
                if (v9 == -1)
                {
                  return v8;
                }
              }

              else
              {
                *(a1 + 64) = 1;
              }

              *(a1 + 264) = v9;
              v7->avail_in = v9;
              v7->next_in = *(a1 + 48);
            }
          }

          if (*(a1 + 256))
          {
            v10 = *(a1 + 264);
            if (v10)
            {
              v11 = *(a1 + 260);
              if (v8 >= v11)
              {
                v12 = *(a1 + 260);
              }

              else
              {
                v12 = v8;
              }

              *(a1 + 260) = v11 - v12;
              *(a1 + 264) = v10 - v12;
              decrypt_buffer(v7->next_in, v12, (a1 + 244));
            }
          }

          v13 = inflate(v7, 0);
          if (v13)
          {
            if (v13 != 1)
            {
              return -1;
            }

            *(a1 + 64) = 1;
          }

          avail_out = v7->avail_out;
        }

        while (avail_out && (avail_out == v4 || !*(a1 + 65)) && !*(a1 + 64));
LABEL_44:
        v8 = v4 - avail_out;
LABEL_73:
        *(a1 + 24) += v8;
        return v8;
      }

      return -1;
    }

    if (*(a1 + 67) == 1)
    {
      v8 = 0;
      *(a1 + 66) = 0;
      goto LABEL_73;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v18 = 88;
      if (!*(a1 + 80))
      {
        v18 = 48;
      }

      v19 = *(a1 + v18);
      if (*(a1 + 66) == 1)
      {
        v29 = 0;
        if (search_for_data_descriptor(v19, v8, &v29))
        {
          *(a1 + 67) = 1;
          v4 = v29;
          if (!v29)
          {
            v8 = 0;
            goto LABEL_73;
          }
        }
      }

      if (v4 < v8)
      {
        v8 = v4;
      }

      if (v8 >= 1)
      {
        memcpy(__dst, v19, v8);
        v20 = *(a1 + 72);
        v4 -= v8;
        *(a1 + 264) -= v8;
        v21 = &__dst[v8];
        *(a1 + 72) = v20 - v8;
        if (v20 != v8)
        {
          memmove(v19, &v19[v8], v20 - v8);
        }

        if (!v4)
        {
          goto LABEL_68;
        }

        goto LABEL_63;
      }

      v8 = 0;
    }

    v21 = __dst;
LABEL_63:
    v22 = _BOMFileReadRaw(a1, v21, v4);
    if (v22 == -1)
    {
      v8 = -1;
      goto LABEL_73;
    }

    if (v22)
    {
      v8 += v22;
    }

    else
    {
      *(a1 + 64) = 1;
    }

LABEL_68:
    if (*(a1 + 66) != 1 || (v29 = 0, !search_for_data_descriptor(__dst, v8, &v29)) || (*(a1 + 67) = 1, v23 = v29, v24 = v8 - v29, v8 == v29))
    {
LABEL_71:
      if (*(a1 + 256) == 1)
      {
        decrypt_buffer(__dst, v8, (a1 + 244));
      }

      goto LABEL_73;
    }

    if (*(a1 + 72))
    {
      v26 = *MEMORY[0x277D85DF8];
      v27 = "The extra buffer is not empty";
      v28 = 29;
    }

    else
    {
      if (v24 <= 0x20000)
      {
        *(a1 + 72) = v24;
        *(a1 + 80) = 1;
        memcpy(*(a1 + 88), &__dst[v23], v24);
        v8 = v23;
        goto LABEL_71;
      }

      v26 = *MEMORY[0x277D85DF8];
      v27 = "The extra buffer is not large enough";
      v28 = 36;
    }

    fwrite(v27, v28, 1uLL, v26);
    v8 = -1;
    goto LABEL_73;
  }

  return 0;
}

unint64_t _BOMFileAsyncRead(uint64_t a1, char *__dst, size_t a3)
{
  if (!a3)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v4 = a3;
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + 104);
    if (!v7)
    {
      v7 = BOMBufferFIFODequeue(*(a1 + 96));
      *(a1 + 104) = v7;
    }

    v8 = v7[1];
    if (v4 >= v7[2] - v8)
    {
      v9 = v7[2] - v8;
    }

    else
    {
      v9 = v4;
    }

    memcpy(__dst, (v7[3] + v8), v9);
    v10 = v7[2];
    v11 = v7[1] + v9;
    v7[1] = v11;
    v6 += v9;
    if (v10 != v11)
    {
      goto LABEL_14;
    }

    if (!v11)
    {
      if (pthread_mutex_lock((a1 + 168)))
      {
        goto LABEL_17;
      }

      v13 = *(a1 + 232);
      v12 = *(a1 + 236);
      if (pthread_mutex_unlock((a1 + 168)))
      {
        goto LABEL_17;
      }

      if ((v13 - 1) <= 1)
      {
        break;
      }
    }

    BOMBufferPoolReturnBuffer(gBufferPool, v7);
    *(a1 + 104) = 0;
LABEL_14:
    __dst += v9;
    v4 -= v9;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  if (v12)
  {
    *__error() = v12;
    return -1;
  }

LABEL_17:
  *(a1 + 16) = vaddq_s64(*(a1 + 16), vdupq_n_s64(v6));
  return v6;
}

CFIndex BOMFileWrite(uint64_t a1, UInt8 *a2, CFIndex a3)
{
  if (!a1)
  {
    return -1;
  }

  v3 = a3;
  v4 = a2;
  v6 = *a1;
  if ((*a1 - 1) < 2)
  {

    return _BOMFileDirectWrite(a1, a2, a3);
  }

  if (v6 != 6)
  {
    if (v6 != 4)
    {
      return -1;
    }

    if (!**(a1 + 8))
    {
      return v3;
    }

    v7 = 8;
    while (BOMFileWrite() == v3)
    {
      v8 = *(*(a1 + 8) + v7);
      v7 += 8;
      if (!v8)
      {
        return v3;
      }
    }

    return -1;
  }

  v10 = 0;
  if (!a3)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v11 = *(a1 + 104);
    if (v11)
    {
      v12 = v11[1];
    }

    else
    {
      v11 = BOMBufferPoolRequestBuffer(gBufferPool);
      v12 = 0;
      v11[1] = 0;
      v11[2] = 0;
      *(a1 + 104) = v11;
    }

    if (v3 >= *v11 - v12)
    {
      v13 = *v11 - v12;
    }

    else
    {
      v13 = v3;
    }

    memcpy((v11[3] + v12), v4, v13);
    v14 = vaddq_s64(*(v11 + 1), vdupq_n_s64(v13));
    *(v11 + 1) = v14;
    v10 += v13;
    if (*v11 != v14.i64[0])
    {
      goto LABEL_25;
    }

    if (pthread_mutex_lock((a1 + 168)))
    {
      goto LABEL_26;
    }

    v16 = *(a1 + 232);
    v15 = *(a1 + 236);
    if (pthread_mutex_unlock((a1 + 168)))
    {
      goto LABEL_26;
    }

    if ((v16 - 1) <= 1)
    {
      break;
    }

    BOMBufferFIFOEnqueue(*(a1 + 96), v11);
    *(a1 + 104) = 0;
LABEL_25:
    v4 += v13;
    v3 -= v13;
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  if (v15)
  {
    *__error() = v15;
    return -1;
  }

LABEL_26:
  *(a1 + 16) = vaddq_s64(*(a1 + 16), vdupq_n_s64(v10));
  return v10;
}

CFIndex _BOMFileDirectWrite(uint64_t a1, UInt8 *buffer, CFIndex bufferLength)
{
  if (!bufferLength)
  {
    return 0;
  }

  if (!buffer)
  {
    return -1;
  }

  v4 = bufferLength;
  v6 = *(a1 + 32);
  result = -1;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v14 = *(a1 + 40);
      v14->next_in = buffer;
      v14->avail_in = bufferLength;
      if (bufferLength)
      {
        if (v14->avail_out)
        {
          goto LABEL_36;
        }

        for (i = 0x20000; ; i = 0x20000 - v14->avail_out)
        {
          v18 = *(a1 + 48);
          while (i)
          {
            v19 = _BOMFileWriteRaw(a1, v18, i);
            v18 += v19;
            i -= v19;
            if (v19 < 0)
            {
              return -1;
            }
          }

          v14->avail_out = 0x20000;
          v14->next_out = *(a1 + 48);
          if (!v14->avail_in)
          {
            break;
          }

LABEL_36:
          if (BZ2_bzCompress(v14, 0) > 1)
          {
            return -1;
          }
        }
      }

      goto LABEL_33;
    }

    if (v6 != 3)
    {
      return result;
    }

    v10 = 0;
    while (v4)
    {
      v11 = *(a1 + 40);
      v12 = WriteToStreamCompressor();
      v10 += v12;
      v4 -= v12;
      if (v12 < 0)
      {
        return -1;
      }
    }
  }

  else
  {
    if (v6)
    {
      if (v6 != 1)
      {
        return result;
      }

      v8 = *(a1 + 40);
      v8->next_in = buffer;
      v8->avail_in = bufferLength;
      if (bufferLength)
      {
        if (v8->avail_out)
        {
          goto LABEL_25;
        }

        for (j = 0x20000; ; j = 0x20000 - v8->avail_out)
        {
          v16 = *(a1 + 48);
          while (j)
          {
            v17 = _BOMFileWriteRaw(a1, v16, j);
            v16 += v17;
            j -= v17;
            if (v17 < 0)
            {
              return -1;
            }
          }

          v8->avail_out = 0x20000;
          v8->next_out = *(a1 + 48);
          if (!v8->avail_in)
          {
            break;
          }

LABEL_25:
          if (deflate(v8, 0))
          {
            return -1;
          }
        }
      }

      *(a1 + 56) = crc32(*(a1 + 56), buffer, v4);
      goto LABEL_33;
    }

    v10 = 0;
    while (v4)
    {
      v13 = _BOMFileWriteRaw(a1, buffer, v4);
      v10 += v13;
      v4 -= v13;
      if (v13 < 0)
      {
        return -1;
      }
    }
  }

  v4 = v10;
LABEL_33:
  *(a1 + 24) += v4;
  return v4;
}

uint64_t BOMFileSeek()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v1;
  v4 = v0;
  v20 = *MEMORY[0x277D85DE8];
  v5 = v0->i32[0];
  result = -1;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        if (v5 != 2)
        {
          goto LABEL_60;
        }

        goto LABEL_41;
      }

      if (v4[2].i32[0])
      {
LABEL_41:
        if (v2 != 1)
        {
          if (v2)
          {
            goto LABEL_60;
          }

          v3 = v1 - v4[1].i64[0];
        }

        if (v3 < 1)
        {
          goto LABEL_60;
        }

        bzero(__dst, 0x20000uLL);
        while (v3)
        {
          if (v3 >= 0x20000)
          {
            v13 = 0x20000;
          }

          else
          {
            v13 = v3;
          }

          v14 = _BOMFileDirectWrite(v4, __dst, v13);
          v3 -= v14;
          if (v14 < 0)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_52;
      }
    }

    else if (v4[2].i32[0])
    {
      goto LABEL_19;
    }

    result = (*(v4[17].i64[0] + 64))(*(v4[17].i64[0] + 8), v4->u32[2], v1, v2);
    v4[1].i64[0] = result;
    v4[1].i64[1] = result;
    goto LABEL_60;
  }

  if (v5 > 4)
  {
    if (v5 != 5)
    {
      if (v5 != 6)
      {
        goto LABEL_60;
      }

      goto LABEL_41;
    }

    if (v2 != 1)
    {
      if (v2)
      {
        v3 = -1;
        goto LABEL_55;
      }

      v3 = v1 - v4[1].i64[0];
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      if (!v3)
      {
        goto LABEL_60;
      }

      while (v3 >= 1)
      {
        if (v3 >= 0x20000)
        {
          v11 = 0x20000;
        }

        else
        {
          v11 = v3;
        }

        v12 = _BOMFileAsyncRead(v4, __dst, v11);
        v3 -= v12;
        if (v12 <= 0)
        {
LABEL_51:
          result = -1;
          goto LABEL_60;
        }
      }

      goto LABEL_52;
    }

LABEL_55:
    v15 = v4[6].i64[1];
    if (v15)
    {
      v16 = *(v15 + 24);
      if (v16)
      {
        if (*(v15 + 8) + v3 != 0 && v16 + *(v15 + 8) + v3 >= v16)
        {
          *(v15 + 8) += v3;
          v17 = vaddq_s64(v4[1], vdupq_n_s64(v3));
          v4[1] = v17;
          result = v17.i64[0];
        }
      }
    }

    goto LABEL_60;
  }

  if (v5 == 3)
  {
LABEL_19:
    if (v2 != 1)
    {
      if (v2)
      {
        goto LABEL_60;
      }

      v3 = v1 - v4[1].i64[0];
    }

    if (v3 < 1)
    {
      goto LABEL_60;
    }

    while (v3 >= 1)
    {
      if (v3 >= 0x20000)
      {
        v9 = 0x20000;
      }

      else
      {
        v9 = v3;
      }

      v10 = _BOMFileDirectRead(v4, __dst, v9);
      v3 -= v10;
      if (v10 <= 0)
      {
        goto LABEL_51;
      }
    }

LABEL_52:
    result = v4[1].i64[0];
    goto LABEL_60;
  }

  if ((v1 & 0x8000000000000000) == 0 && v2 == 1)
  {
    if (*v4->i64[1])
    {
      v7 = 8;
      while (1)
      {
        result = BOMFileSeek();
        if (result == -1)
        {
          break;
        }

        v8 = *(v4->i64[1] + v7);
        v7 += 8;
        if (!v8)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      result = v4[1].i64[0] + v3;
      v4[1].i64[0] = result;
    }
  }

LABEL_60:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMFileOffset(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t BOMFileUncompressedOffset(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t BOMFileSetPartialRead(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 65) = a2;
  }

  return result;
}

uint64_t BOMFileSetDataDescriptor(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 66) = a2;
    *(result + 67) = 0;
  }

  return result;
}

uint64_t BOMFileSetCompression(uint64_t result, int a2, int a3, int a4)
{
  if (result)
  {
    if (*(result + 32) == (a2 == 0))
    {
      *(result + 240) = a4;
      *(result + 32) = a2 != 0;
      if (a2)
      {
        if (_BOMFileSetupGzip(result, a3 == 0, 0))
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 0;
        }
      }

      else if (a3)
      {

        return _BOMFileFinishGzipDecompression(result);
      }

      else
      {

        return _BOMFileFinishGzipCompression(result, 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _BOMFileSetupGzip(uint64_t a1, int a2, int a3)
{
  v7 = (a1 + 40);
  v6 = *(a1 + 40);
  if (!v6)
  {
    v6 = BOM_malloc(0x70uLL);
    *v7 = v6;
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8 = *(a1 + 48);
  if (!v8)
  {
    v8 = BOM_malloc(0x20000uLL);
    *(a1 + 48) = v8;
    v6 = *(a1 + 40);
    if (!v8)
    {
      free(*(a1 + 40));
      goto LABEL_13;
    }
  }

  v6->zalloc = 0;
  (*v7)->zfree = 0;
  (*v7)->opaque = 0;
  v9 = *v7;
  if (a2)
  {
    *v9 = 0;
    *(*(a1 + 40) + 24) = v8;
    *(*(a1 + 40) + 8) = 0;
    *(*(a1 + 40) + 32) = 0x20000;
    if (deflateInit2_(*(a1 + 40), *(a1 + 240), 8, -15, 8, 0, "1.2.12", 112))
    {
LABEL_7:
      free(*(a1 + 40));
      free(*(a1 + 48));
      v7[1] = 0;
LABEL_13:
      *v7 = 0;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *v9 = v8;
    v10 = *(a1 + 72);
    if (v10)
    {
      v11 = 88;
      if (!*(a1 + 80))
      {
        v11 = 48;
      }

      memcpy(**(a1 + 40), *(a1 + v11), v10);
      *(*(a1 + 40) + 8) = *(a1 + 72);
      *(a1 + 72) = 0;
    }

    else
    {
      (*v7)->avail_in = 0;
    }

    (*v7)->next_out = 0;
    (*v7)->avail_out = 0;
    if (a3)
    {
      v13 = 47;
    }

    else
    {
      v13 = -15;
    }

    if (inflateInit2_(*v7, v13, "1.2.12", 112))
    {
      goto LABEL_7;
    }
  }

  v14 = crc32(0, 0, 0);
  result = 0;
  *(a1 + 56) = v14;
  *(a1 + 64) = 0;
  return result;
}

uint64_t _BOMFileFinishGzipDecompression(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(v3 + 8);
  *(a1 + 72) = v4;
  *(a1 + 80) = 0;
  memmove(v2, *v3, v4);
  v5 = *(a1 + 40);

  return inflateEnd(v5);
}

uint64_t _BOMFileFinishGzipCompression(void *a1, int a2)
{
  v4 = a1[5];
  if (v4->avail_out)
  {
    goto LABEL_3;
  }

  v5 = 1;
  for (i = 0x20000; ; i = 0x20000 - avail_out)
  {
    v9 = a1[6];
    while (i)
    {
      v10 = _BOMFileWriteRaw(a1, v9, i);
      i -= v10;
      v9 += v10;
      if (v10 == -1)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v4->next_out = a1[6];
    v4->avail_out = 0x20000;
    if (!v5)
    {
      break;
    }

LABEL_3:
    v7 = deflate(v4, 4);
    if (v7)
    {
      if (v7 != 1)
      {
        return 0xFFFFFFFFLL;
      }

      v5 = 0;
      avail_out = v4->avail_out;
    }

    else
    {
      avail_out = v4->avail_out;
      v5 = avail_out == 0;
    }
  }

  if (a2)
  {
    v12 = 0;
    v13 = a1[7];
    a1[7] = v13;
    *buffer = v13;
    while (v12 != 4)
    {
      v14 = _BOMFileWriteRaw(a1, buffer, 4 - v12);
      v12 += v14;
      if (v14 < 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v15 = 0;
    total_in = v4->total_in;
    v4->total_in = total_in;
    *v18 = total_in;
    while (v15 != 4)
    {
      v17 = _BOMFileWriteRaw(a1, v18, 4 - v15);
      v15 += v17;
      if (v17 < 0)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  deflateEnd(v4);
  return 0;
}

BOOL BOMFileEndOfCompressionStream(_BOOL8 result)
{
  if (result)
  {
    return *(result + 64) != 0;
  }

  return result;
}

uint64_t BOMFileSetAFSCCompression(uint64_t a1)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  StreamCompressor = CreateStreamCompressor();
  if (!StreamCompressor)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = StreamCompressor;
  result = 0;
  *(a1 + 32) = 3;
  *(a1 + 40) = v5;
  return result;
}

uint64_t BOMFileSetKeys(uint64_t a1, _BYTE *a2)
{
  *(a1 + 256) = a2 != 0;
  if (a2)
  {
    init_keys(a1 + 244, a2);
  }

  return a1 + 244;
}

uint64_t BOMFileSetEncryptedRemainder(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 260) = a2;
  }

  return result;
}

uint64_t BOMFileClearEncrypted(uint64_t result)
{
  if (result)
  {
    *(result + 256) = 0;
  }

  return result;
}

uint64_t BOMFilePreallocate(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = 0;
  v3[0] = 0x300000004;
  v3[1] = 0;
  if (fcntl(*(a1 + 8), 42, v3) && *__error() != 45)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _BOMFileReadRaw(uint64_t a1, UInt8 *buffer, CFIndex bufferLength)
{
  v6 = 0;
  do
  {
    if (*a1 == 3)
    {
      v7 = CFReadStreamRead(*(a1 + 8), buffer, bufferLength);
    }

    else if (*a1)
    {
      v7 = -1;
    }

    else
    {
      v7 = (*(*(a1 + 272) + 48))(*(*(a1 + 272) + 8), *(a1 + 8), buffer, bufferLength);
    }

    v8 = v7 & ~(v7 >> 63);
    v6 += v8;
    if (v7 < 1)
    {
      break;
    }

    if (*(a1 + 65))
    {
      break;
    }

    buffer += v8;
    bufferLength -= v8;
  }

  while (bufferLength);
  *(a1 + 16) += v6;
  if (v7 < 0)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

uint64_t _BOMFileSetupBzip2(uint64_t a1, int a2)
{
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (!v4)
  {
    v4 = BOM_malloc(0x50uLL);
    *v5 = v4;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    v6 = BOM_malloc(0x20000uLL);
    *(a1 + 48) = v6;
    v4 = *(a1 + 40);
    if (!v6)
    {
      free(*(a1 + 40));
      goto LABEL_13;
    }
  }

  v4->bzalloc = 0;
  (*v5)->bzfree = 0;
  (*v5)->opaque = 0;
  v7 = *v5;
  if (a2)
  {
    v7->next_in = 0;
    (*v5)->next_out = v6;
    (*v5)->avail_in = 0;
    (*v5)->avail_out = 0x20000;
    if (BZ2_bzCompressInit(*v5, 9, 0, 0))
    {
LABEL_7:
      free(*(a1 + 40));
      free(*(a1 + 48));
      v5[1] = 0;
LABEL_13:
      *v5 = 0;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v7->next_in = v6;
    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = 88;
      if (!*(a1 + 80))
      {
        v9 = 48;
      }

      memcpy(**(a1 + 40), *(a1 + v9), v8);
      *(*(a1 + 40) + 8) = *(a1 + 72);
      *(a1 + 72) = 0;
    }

    else
    {
      (*v5)->avail_in = 0;
    }

    (*v5)->next_out = 0;
    (*v5)->avail_out = 0;
    if (BZ2_bzDecompressInit(*v5, 0, 0))
    {
      goto LABEL_7;
    }
  }

  v11 = crc32(0, 0, 0);
  result = 0;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
  return result;
}

uint64_t _BOMFileWriteRaw(uint64_t a1, UInt8 *buffer, CFIndex bufferLength)
{
  v6 = 0;
  do
  {
    if (*a1 == 2)
    {
      v7 = CFWriteStreamWrite(*(a1 + 8), buffer, bufferLength);
    }

    else if (*a1 == 1)
    {
      v7 = (*(*(a1 + 272) + 56))(*(*(a1 + 272) + 8), *(a1 + 8), buffer, bufferLength);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & ~(v7 >> 63);
    v6 += v8;
    if (v7 < 1)
    {
      break;
    }

    buffer += v8;
    bufferLength -= v8;
  }

  while (bufferLength);
  *(a1 + 16) += v6;
  if (v7 < 0)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

void *_initBufferPool()
{
  result = BOMBufferPoolAllocate(gBOMAsyncBufferSize, gBOMAsyncBufferCount);
  if (!result)
  {
    v1 = BOMExceptionHandlerMessage("Unable to allocate BOM buffer pool gBOMAsyncBufferSize=%lu gBOMAsyncBufferCount=%u!\n", gBOMAsyncBufferSize, gBOMAsyncBufferCount);
    v2 = __error();
    _BOMFatalException(v1, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMFile.c", 2848, *v2);
  }

  gBufferPool = result;
  return result;
}

uint64_t _asyncWriteThread(uint64_t a1)
{
  v2 = MEMORY[0x277D85DF8];
  if (gBOMAsyncDebug == 1)
  {
    fwrite("async write thread starting\n", 0x1CuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v3 = 0;
  do
  {
    v4 = BOMBufferFIFODequeue(*(a1 + 96));
    v5 = BOMFileWrite(*(a1 + 8), *(v4 + 24), *(v4 + 16));
    v6 = *(v4 + 48);
    if ((v6 & 1) != 0 && gBOMAsyncDebug == 1)
    {
      fwrite("async write thread asked to finish\n", 0x23uLL, 1uLL, *v2);
    }

    if (v5 == -1)
    {
      if (gBOMAsyncDebug == 1)
      {
        v8 = *v2;
        v9 = __error();
        fprintf(v8, "async write thread finished file (errno=%d)\n", *v9);
      }

      v3 = *__error();
      v7 = 1;
    }

    else
    {
      v7 = v6 & 1;
    }

    ++*(v4 + 40);
    BOMBufferPoolReturnBuffer(gBufferPool, v4);
  }

  while (!v7);
  if (!pthread_mutex_lock((a1 + 168)))
  {
    *(a1 + 232) = 2;
    *(a1 + 236) = v3;
    if (!pthread_cond_signal((a1 + 120)) && !pthread_mutex_unlock((a1 + 168)) && gBOMAsyncDebug == 1)
    {
      fwrite("async write thread terminating\n", 0x1FuLL, 1uLL, *v2);
    }
  }

  return 0;
}

uint64_t _asyncReadThread(uint64_t a1)
{
  if (gBOMAsyncDebug == 1)
  {
    fwrite("async read thread starting\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  while (1)
  {
    v2 = BOMBufferPoolRequestBuffer(gBufferPool);
    if (pthread_mutex_lock((a1 + 168)) || (v3 = *(a1 + 232), pthread_mutex_unlock((a1 + 168))))
    {
      v5 = 0;
      goto LABEL_19;
    }

    if (v3 == 1)
    {
      if (gBOMAsyncDebug == 1)
      {
        fwrite("async read thread asked to finish\n", 0x22uLL, 1uLL, *MEMORY[0x277D85DF8]);
LABEL_12:
        if (gBOMAsyncDebug == 1)
        {
          fwrite("async read thread finished file\n", 0x20uLL, 1uLL, *MEMORY[0x277D85DF8]);
        }
      }

      v5 = 0;
      goto LABEL_18;
    }

    v4 = BOMFileRead(*(a1 + 8), v2[3], *v2);
    if (v4 == -1)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_12;
    }

    v2[1] = 0;
    v2[2] = v4;
    ++v2[5];
    BOMBufferFIFOEnqueue(*(a1 + 96), v2);
  }

  if (gBOMAsyncDebug == 1)
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = __error();
    fprintf(v6, "async read thread finished file (errno=%d)\n", *v7);
  }

  v5 = *__error();
LABEL_18:
  v2[1] = 0;
  v2[2] = 0;
  ++v2[5];
LABEL_19:
  if (!pthread_mutex_lock((a1 + 168)))
  {
    *(a1 + 232) = 2;
    *(a1 + 236) = v5;
    if (!pthread_cond_signal((a1 + 120)) && !pthread_mutex_unlock((a1 + 168)))
    {
      if (v2)
      {
        BOMBufferFIFOEnqueue(*(a1 + 96), v2);
      }

      if (gBOMAsyncDebug == 1)
      {
        fwrite("async read thread terminating\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
      }
    }
  }

  return 0;
}

uint64_t decrypt_buffer(uint64_t result, int a2, int *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      --v4;
      v6 = *v5 ^ decrypt_byte(a3);
      *v5++ = v6;
      result = update_keys(a3, v6);
    }

    while (v4);
  }

  return result;
}

uint64_t search_for_data_descriptor(uint64_t a1, unint64_t a2, void *a3)
{
  *a3 = 0;
  if (a2 <= 4)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 1); *(i - 1) != 80 || *i != 75 || i[1] != 7 || i[2] != 8; ++i)
  {
    if (4 - a2 == --v3)
    {
      return 0;
    }
  }

  *a3 = -v3;
  return 1;
}

void _BOMFatalException(uint64_t a1, const char *a2, int a3, int a4)
{
  v4 = gHandler;
  if (!gHandler)
  {
    v4 = _defaultHandler;
  }

  v5 = gMessage;
  if (a1)
  {
    v5 = a1;
  }

  v7[0] = v5;
  v7[1] = 1;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = "";
  }

  v7[2] = v6;
  v8 = a3;
  v9 = a4;
  v4(v7);
  abort();
}

uint64_t _defaultHandler(uint64_t *a1)
{
  v2 = *(a1 + 6);
  v3 = *MEMORY[0x277D85DF8];
  if (v2)
  {
    v7 = *a1;
    v6 = a1[2];
    result = fprintf(v3, "[%s:%u] %s\n");
  }

  else
  {
    v5 = *a1;
    result = fprintf(v3, "%s\n");
  }

  if (*(a1 + 8))
  {
    abort();
  }

  return result;
}

uint64_t _BOMExceptionHandlerCall(uint64_t a1, unsigned __int8 a2, const char *a3, int a4, int a5)
{
  v5 = gHandler;
  if (!gHandler)
  {
    v5 = _defaultHandler;
  }

  v6 = gMessage;
  if (a1)
  {
    v6 = a1;
  }

  v9[0] = v6;
  v7 = "";
  v9[1] = a2;
  if (a3)
  {
    v7 = a3;
  }

  v9[2] = v7;
  v10 = a4;
  v11 = a5;
  return v5(v9);
}

char *BOMExceptionHandlerMessage(char *__format, ...)
{
  va_start(va, __format);
  result = gMessage;
  if (!gMessage)
  {
    result = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    gMessage = result;
    if (!result)
    {
      return result;
    }

    *result = 0;
  }

  vsnprintf(result, 0x1000uLL, __format, va);
  return gMessage;
}

uint64_t BOMCRC32ForFile(const char *a1, _DWORD *a2, off_t *a3)
{
  v3 = 1;
  if (a1 && a2)
  {
    memset(&v20, 0, sizeof(v20));
    if (stat(a1, &v20))
    {
      v7 = __error();
      v8 = strerror(*v7);
      v9 = BOMExceptionHandlerMessage("stat: %s\n", v8);
      v10 = *__error();
      v11 = v9;
      v12 = 213;
LABEL_5:
      _BOMExceptionHandlerCall(v11, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Common/BOMCRC32.c", v12, v10);
      return v3;
    }

    st_size = v20.st_size;
    v15 = open(a1, 0, 0);
    if (v15 == -1)
    {
      v17 = __error();
      v18 = strerror(*v17);
      v19 = BOMExceptionHandlerMessage("open: %s\n", v18);
      v10 = *__error();
      v11 = v19;
      v12 = 220;
      goto LABEL_5;
    }

    v16 = v15;
    v3 = posix_checksum(v15, a2, st_size);
    close(v16);
    if (a3)
    {
      *a3 = st_size;
    }
  }

  return v3;
}

uint64_t posix_checksum(int a1, _DWORD *a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x20000uLL, 0x30693639uLL);
  if (v6)
  {
    v7 = v6;
    CNCRCInit();
    if (a3)
    {
      v8 = 0;
      do
      {
        if ((a3 - v8) >= 0x20000)
        {
          v9 = 0x20000;
        }

        else
        {
          v9 = a3 - v8;
        }

        if (read(a1, v7, v9) != v9)
        {
          v15 = *MEMORY[0x277D85DF8];
          v16 = __error();
          v17 = strerror(*v16);
          fprintf(v15, "Could not read: %s", v17);
          free(v7);
          return 0xFFFFFFFFLL;
        }

        CNCRCUpdate();
        v8 += v9;
      }

      while (v8 != a3);
      do
      {
        CNCRCUpdate();
        v10 = a3 > 0xFF;
        a3 >>= 8;
      }

      while (v10);
    }

    CNCRCFinal();
    *a2 = 0;
    free(v7);
    CNCRCRelease();
    return 0;
  }

  else
  {
    v12 = *MEMORY[0x277D85DF8];
    v13 = __error();
    v14 = strerror(*v13);
    fprintf(v12, "Could not allocate buffer: %s", v14);
    return 0xFFFFFFFFLL;
  }
}

uint64_t BOMCRC32ForFileDesc(int a1, _DWORD *a2, uint64_t a3)
{
  if ((a1 - 1) > 0xFFFFFFFD || a2 == 0)
  {
    return 1;
  }

  else
  {
    return posix_checksum(a1, a2, a3);
  }
}

uint64_t BOMCRC32ForBuffer(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  if (CNCRCInit() || CNCRCUpdate())
  {
    return 1;
  }

  if (!a3)
  {
LABEL_6:
    if (!CNCRCFinal())
    {
      CNCRCRelease();
      v5 = 0;
      *a2 = 0;
      return v5;
    }

    return 1;
  }

  while (1)
  {
    v5 = 1;
    if (CNCRCUpdate())
    {
      return v5;
    }

    v6 = a3 >= 0x100;
    a3 >>= 8;
    if (!v6)
    {
      goto LABEL_6;
    }
  }
}

uint64_t BOMCRC32ForBufferSegment(unsigned __int8 *a1, unsigned int *a2, uint64_t a3)
{
  v3 = 1;
  if (a1 && a2)
  {
    for (i = *a2; a3; --a3)
    {
      v5 = *a1++;
      i = crctab[v5 ^ HIBYTE(i)] ^ (i << 8);
    }

    v3 = 0;
    *a2 = i;
  }

  return v3;
}

uint64_t BOMCRC32ForBufferSegmentFinal(unsigned __int8 *a1, unsigned int *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 0;
  }

  v5 = v4;
  v6 = 1;
  if (a2 && v5)
  {
    for (i = *a2; a3; --a3)
    {
      v8 = *a1++;
      i = crctab[v8 ^ HIBYTE(i)] ^ (i << 8);
    }

    if (a4)
    {
      do
      {
        i = crctab[a4 ^ HIBYTE(i)] ^ (i << 8);
        v9 = a4 > 0xFF;
        a4 >>= 8;
      }

      while (v9);
    }

    v6 = 0;
    *a2 = ~i;
  }

  return v6;
}

_DWORD *_BOMBomGetFSObjectWithBlockID(uint64_t a1, unsigned int a2)
{
  v4 = BOMStreamWithBlockID(*(a1 + 8), a2, 0, 0);
  if (v4)
  {
    v5 = v4;
    v6 = BOMFSObjectUnarchive(v4);
    BOMStreamFree(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v11 = bswap32(a2);
    v10 = 0;
    if (BOMTreeGetValueSize(v7, &v11, 4uLL, &v10))
    {
      v8 = 0;
    }

    else
    {
      v8 = v10 == 8;
    }

    if (v8 && BOMTreeGetValue(*(a1 + 40), &v11, 4uLL))
    {
      __memcpy_chk();
      BOMFSObjectSetSize(v6, bswap64(0));
    }
  }

  return v6;
}

uint64_t BOMBomPathsTree(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

char *BOMBomOpenWithSys(char *a1, int a2, void *a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = BomSys_default();
  }

  if (a1)
  {
    if (a2)
    {
      v6 = 6;
    }

    else
    {
      v6 = 4;
    }

    if (!(*(v3 + 23))(*(v3 + 1), a1, v6))
    {
      v8 = BOMStorageOpenWithSys(a1, a2, v3);
      if (v8)
      {
        v9 = v8;
        NamedBlock = BOMStorageGetNamedBlock(v8, "BomInfo");
        if (NamedBlock)
        {
          v11 = NamedBlock;
          a1 = BOM_malloczero(0x48uLL);
          if (!a1)
          {
            BOMStorageFree(v9);
            return a1;
          }

          v12 = BOMStreamWithBlockID(v9, v11, 0, 0);
          if (!v12 || (v13 = v12, BOMStreamReadUInt32(v12), UInt32 = BOMStreamReadUInt32(v13), ArchInfo = _readArchInfo(a1, v13), v16 = BOMStreamFree(v13), ArchInfo) || v16)
          {
            BOMStorageFree(v9);
            free(a1);
          }

          else
          {
            *a1 = UInt32;
            *(a1 + 1) = v9;
            *(a1 + 2) = BOMTreeOpenWithName(v9, "Paths", a2);
            *(a1 + 3) = BOMBomHLIndexOpen(v9, a2);
            v17 = BOMBomVIndexOpen(v9, a2);
            *(a1 + 4) = v17;
            if (*(a1 + 2))
            {
              if (*(a1 + 3))
              {
                if (v17)
                {
                  v18 = BOMTreeOpenWithName(v9, "Size64", a2);
                  *(a1 + 5) = v18;
                  if (a2 != 1 || v18 || (v19 = BOMTreeNewWithName(v9, "Size64"), (*(a1 + 5) = v19) != 0))
                  {
                    a1[65] = a2;
                    return a1;
                  }
                }
              }
            }

            BOMBomFree(a1);
          }
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], "file %s is not a bom file\n", a1);
        }
      }
    }

    return 0;
  }

  return a1;
}

uint64_t _readArchInfo(uint64_t a1, uint64_t a2)
{
  result = BOMStreamReadUInt32(a2);
  *(a1 + 48) = result;
  if (result)
  {
    v5 = BOM_malloczero(24 * result);
    *(a1 + 56) = v5;
    if (v5)
    {
      if (*(a1 + 48))
      {
        v6 = 0;
        v7 = 0;
        do
        {
          *(*(a1 + 56) + v6) = BOMStreamReadUInt32(a2);
          *(*(a1 + 56) + v6 + 4) = BOMStreamReadUInt32(a2);
          *(*(a1 + 56) + v6 + 8) = BOMStreamReadUInt32(a2);
          *(*(a1 + 56) + v6 + 16) = BOMStreamReadUInt32(a2);
          ++v7;
          v6 += 24;
        }

        while (v7 < *(a1 + 48));
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BOMBomFree(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 64) && BOMBomCommit(a1))
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    BOMTreeFree(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    BOMBomHLIndexFree(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    BOMBomVIndexFree(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    BOMTreeFree(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    result = BOMStorageFree(v7);
    if (result)
    {
      return result;
    }

    *(a1 + 8) = 0;
  }

  free(*(a1 + 56));
  free(a1);
  return 0;
}

_DWORD *BOMBomOpenWithStorage(_DWORD *a1, int a2)
{
  NamedBlock = BOMStorageGetNamedBlock(a1, "BomInfo");
  if (NamedBlock)
  {
    v5 = NamedBlock;
    v6 = BOM_malloczero(0x48uLL);
    if (!v6)
    {
      BOMStorageFree(a1);
      return v6;
    }

    v7 = BOMStreamWithBlockID(a1, v5, 0, 0);
    if (!v7 || (v8 = v7, BOMStreamReadUInt32(v7), UInt32 = BOMStreamReadUInt32(v8), ArchInfo = _readArchInfo(v6, v8), v11 = BOMStreamFree(v8), ArchInfo) || v11)
    {
      BOMStorageFree(a1);
      free(v6);
    }

    else
    {
      *v6 = UInt32;
      *(v6 + 1) = a1;
      *(v6 + 2) = BOMTreeOpenWithName(a1, "Paths", a2);
      *(v6 + 3) = BOMBomHLIndexOpen(a1, a2);
      v13 = BOMBomVIndexOpen(a1, a2);
      *(v6 + 4) = v13;
      if (*(v6 + 2))
      {
        if (*(v6 + 3))
        {
          if (v13)
          {
            v14 = BOMTreeOpenWithName(a1, "Size64", a2);
            *(v6 + 5) = v14;
            if (a2 != 1 || v14 || (v15 = BOMTreeNewWithName(a1, "Size64"), (*(v6 + 5) = v15) != 0))
            {
              *(v6 + 65) = a2;
              return v6;
            }
          }
        }
      }

      BOMBomFree(v6);
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "file %s is not a bom file\n", "<storage>");
  }

  return 0;
}

void *BOMBomNewWithStorage(_DWORD *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = BOM_malloczero(0x48uLL);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v3 = BOMStorageNewInRAM();
    if (!v3)
    {
      return 0;
    }

    v1 = v3;
    v2 = BOM_malloczero(0x48uLL);
    if (!v2)
    {
      BOMStorageFree(v1);
      return v2;
    }
  }

  *v2 = 1;
  v2[1] = v1;
  v4 = BOMStorageNewNamedBlock(v1, "BomInfo");
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = BOMStreamWithBlockID(v2[1], v4, (16 * *(v2 + 12)) | 0xC, 1);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  BOMStreamWriteUInt32(v5, 1u);
  BOMStreamWriteUInt32(v6, *v2);
  _writeArchInfo(v2, v6);
  BOMStreamFree(v6);
  v2[2] = BOMTreeNewWithName(v1, "Paths");
  v2[3] = BOMBomHLIndexNew(v1);
  v7 = BOMBomVIndexNew(v1);
  v2[4] = v7;
  if (!v2[2] || !v2[3] || !v7 || (v8 = BOMTreeNewWithName(v1, "Size64"), (v2[5] = v8) == 0))
  {
LABEL_13:
    BOMBomFree(v2);
    return 0;
  }

  *(v2 + 32) = 257;
  return v2;
}

uint64_t _writeArchInfo(uint64_t a1, uint64_t a2)
{
  result = BOMStreamWriteUInt32(a2, *(a1 + 48));
  if (*(a1 + 48))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      BOMStreamWriteUInt32(a2, *(*(a1 + 56) + v5));
      BOMStreamWriteUInt32(a2, *(*(a1 + 56) + v5 + 4));
      BOMStreamWriteUInt32(a2, *(*(a1 + 56) + v5 + 8));
      result = BOMStreamWriteUInt32(a2, *(*(a1 + 56) + v5 + 16));
      ++v6;
      v5 += 24;
    }

    while (v6 < *(a1 + 48));
  }

  return result;
}

void *BOMBomNewWithSys(const char *a1, unsigned int (**a2)(void, const char *, uint64_t))
{
  v2 = a2;
  if (a2)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v2 = BomSys_default();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!v2[23](v2[1], a1, 6) && (v2[28])(v2[1], a1))
  {
    fprintf(*MEMORY[0x277D85DF8], "can't unlink %s\n", a1);
    return 0;
  }

  v4 = BOMStorageNewWithSys(a1, v2);
  if (!v4)
  {
    return 0;
  }

LABEL_8:

  return BOMBomNewWithStorage(v4);
}

BOOL BOMBomFSObjectExistsAtPath(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return _valueAtPath(a1) != 0;
    }
  }

  return result;
}

unsigned int *_valueAtPath(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  __stringp = &v12;
  __strlcpy_chk();
  v2 = strsep(&__stringp, "/");
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = BOMNewPathKey(v4, v3, &v10);
      if (!v5)
      {
        break;
      }

      v6 = v5;
      Value = BOMTreeGetValue(*(a1 + 16), v5, v10);
      free(v6);
      if (Value)
      {
        v4 = BOMPathIDFromPathKey(Value);
        v3 = strsep(&__stringp, "/");
        if (v3)
        {
          continue;
        }
      }

      goto LABEL_8;
    }
  }

  Value = 0;
LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return Value;
}

uint64_t BOMBomNewFromBom(const char *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  Sys = BOMStorageGetSys(*(a2 + 8));
  v5 = BOMBomNewWithSys(a1, Sys);
  v6 = v5;
  if (!a2 || !v5)
  {
    goto LABEL_43;
  }

  BOMTreeSetDensePacking(v5[2], 1);
  v7 = BOMHardLinkTableNew();
  if (!v7)
  {
    goto LABEL_44;
  }

  v8 = v7;
  *bytes = 0;
  v39 = 0;
  v9 = BOMTreeIteratorNew(*(a2 + 16), 0, 0, 0);
  if (!v9)
  {
    BOMHardLinkTableFree(v8);
    goto LABEL_44;
  }

  v10 = v9;
  if (BOMTreeIteratorIsAtEnd(v9))
  {
    BOMHardLinkTableFree(v8);
    BOMTreeIteratorFree(v10);
    goto LABEL_37;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = BOMTreeIteratorValue(v10);
    v14 = BOMBlockIDFromPathValue(v13);
    v15 = BOMPathIDFromPathKey(v13);
    v16 = BOMHardLinkTableGet(v8, 0, v14);
    if (v16)
    {
      *bytes = *v16;
      goto LABEL_22;
    }

    v17 = BOMStorageSizeOfBlock(*(a2 + 8), v14);
    if (v17 > v11)
    {
      if (v12)
      {
        free(v12);
      }

      v12 = BOM_malloc(v17);
      v11 = v17;
    }

    if (BOMStorageCopyFromBlock(*(a2 + 8), v14, v12))
    {
      v36 = BOMExceptionHandlerMessage("_copyFilesFromBomToBomInOrder failed while getting data (pid=%u bid=%u)", v15, v14);
      v37 = __error();
      _BOMFatalException(v36, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBom.c", 985, *v37);
    }

    v18 = BOMStorageNewBlock(*(v6 + 8));
    *bytes = v18;
    if (BOMStorageSetBlockData(*(v6 + 8), v18, v12, v17))
    {
      break;
    }

    v19 = BOMBomHLIndexCount(*(a2 + 24), v14);
    if (v19 >= 2)
    {
      v20 = v19;
      v38 = 0;
      BOMHardLinkTableSet(v8, 0, v14, bytes, 4);
      v21 = 0;
      while (1)
      {
        if (BOMBomHLIndexGet(*(a2 + 24), v14, v21, v41, &v38))
        {
          v27 = *MEMORY[0x277D85DF8];
          v28 = "can't get hardlink data\n";
          v29 = 24;
          goto LABEL_33;
        }

        if (BOMBomHLIndexSet(*(v6 + 24), *bytes, v41, v38))
        {
          break;
        }

        if (v20 == ++v21)
        {
          goto LABEL_22;
        }
      }

      v27 = *MEMORY[0x277D85DF8];
      v28 = "can't set hardlink index\n";
      goto LABEL_32;
    }

LABEL_22:
    v22 = BOMNewPathValue(v15, *bytes, &v39);
    v23 = *(v6 + 16);
    v24 = BOMTreeIteratorKey(v10);
    v25 = BOMTreeIteratorKeySize(v10);
    if (BOMTreeSetValue(v23, v24, v25, v22, v39))
    {
      if (v22)
      {
        free(v22);
      }

      v27 = *MEMORY[0x277D85DF8];
      v28 = "can't set new path value\n";
LABEL_32:
      v29 = 25;
      goto LABEL_33;
    }

    if (v22)
    {
      free(v22);
    }

    BOMTreeIteratorNext(v10);
    if (BOMTreeIteratorIsAtEnd(v10))
    {
      v26 = 1;
      goto LABEL_34;
    }
  }

  v27 = *MEMORY[0x277D85DF8];
  v28 = "can't set file data\n";
  v29 = 20;
LABEL_33:
  fwrite(v28, v29, 1uLL, v27);
  v26 = 0;
LABEL_34:
  if (v12)
  {
    free(v12);
  }

  BOMHardLinkTableFree(v8);
  BOMTreeIteratorFree(v10);
  if (!v26)
  {
LABEL_43:
    if (!v6)
    {
      goto LABEL_45;
    }

LABEL_44:
    BOMBomFree(v6);
    v6 = 0;
    goto LABEL_45;
  }

LABEL_37:
  BOMTreeSetDensePacking(*(v6 + 16), 0);
  if (BOMBomVIndexCopyFromVIndex(*(v6 + 32), *(a2 + 32)))
  {
    goto LABEL_44;
  }

  v30 = *(v6 + 56);
  if (v30)
  {
    free(v30);
  }

  v31 = *(a2 + 48);
  *(v6 + 48) = v31;
  v32 = 24 * v31;
  v33 = BOM_malloczero(24 * v31);
  *(v6 + 56) = v33;
  if (v33)
  {
    memmove(v33, *(a2 + 56), v32);
  }

  *v6 = *a2;
LABEL_45:
  v34 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t BOMBomNewFromPathWithSys(char *__s1, char *__s2, void *a3)
{
  if (!__s2 || __s1 && !strcmp(__s1, __s2))
  {
    return 0;
  }

  if (!a3)
  {
    a3 = BomSys_default();
  }

  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  if (!__s1)
  {
    goto LABEL_9;
  }

  if ((*(a3 + 12))(*(a3 + 1), __s1, v14))
  {
    if (*__error() == 2)
    {
      goto LABEL_9;
    }

    v10 = *MEMORY[0x277D85DF8];
    v11 = __error();
    strerror(*v11);
    fprintf(v10, "can't stat %s: %s\n");
    return 0;
  }

  if ((*(a3 + 12))(*(a3 + 1), __s2, v13))
  {
    v8 = *MEMORY[0x277D85DF8];
    v9 = __error();
    strerror(*v9);
    fprintf(v8, "can't stat %s: %s\n");
    return 0;
  }

  if (LODWORD(v14[0]) == LODWORD(v13[0]) && *(&v14[0] + 1) == *(&v13[0] + 1))
  {
    fprintf(*MEMORY[0x277D85DF8], "%s and %s are identical.\n");
    return 0;
  }

LABEL_9:
  v6 = BOMBomOpenWithSys(__s2, 0, a3);
  v7 = BOMBomNewFromBom(__s1, v6);
  if (v6)
  {
    BOMBomFree(v6);
  }

  return v7;
}

unsigned int *BOMBomNewFromBomWithOptions(const char *a1, uint64_t *a2, char a3, const char **a4, const char **a5)
{
  v83 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_91;
  }

  Sys = BOMStorageGetSys(a2[1]);
  v11 = Sys;
  if (a1 && !(*(Sys + 184))(*(Sys + 8), a1, 6) && (*(v11 + 224))(*(v11 + 8), a1))
  {
    fprintf(*MEMORY[0x277D85DF8], "can't unlink %s\n", a1);
LABEL_91:
    v12 = 0;
    goto LABEL_92;
  }

  v12 = BOMBomNewWithSys(a1, v11);
  if (v12)
  {
    __s[0] = 0;
    v13 = strlen(__s);
    _copyFilesFromBomToBom(a2, v12, 0, __s, &__s[v13], 0, 0, 0, 1);
    _copyVariantsFromBomToBom(a2, v12, v14, v15, v16, v17, v18, v19);
    if (a3)
    {
      v20 = _patternListForArchAndLangs(a2, a4, a5, 1);
      v21 = v20;
      if (v20)
      {
        if (CFArrayGetCount(v20))
        {
          RootFSObject = BOMBomGetRootFSObject(v12);
          v23 = BOMBomEnumeratorNew(v12, RootFSObject);
          BOMFSObjectFree(RootFSObject);
          if (v23)
          {
            v79 = a5;
            v80 = a3;
            Count = CFArrayGetCount(v21);
            v25 = BOMBomEnumeratorNext(v23);
            if (v25)
            {
              v26 = v25;
              v27 = 0;
              while (1)
              {
                v28 = BOMFSObjectPathName(v26);
                if (Count >= 1)
                {
                  break;
                }

LABEL_16:
                if (v27)
                {
                  goto LABEL_17;
                }

LABEL_18:
                BOMFSObjectFree(v26);
                v26 = BOMBomEnumeratorNext(v23);
                if (!v26)
                {
                  goto LABEL_19;
                }
              }

              v29 = v28;
              v30 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, v30);
                if (ValueAtIndex)
                {
                  v27 = BOMPatternMatch(ValueAtIndex, v29);
                  if (v27)
                  {
                    break;
                  }
                }

                if (Count == ++v30)
                {
                  goto LABEL_16;
                }
              }

LABEL_17:
              BOMBomRemoveFSObject(v12, v26);
              goto LABEL_18;
            }

LABEL_19:
            BOMBomEnumeratorFree(v23);
            a3 = v80;
            a5 = v79;
          }
        }
      }

      BOMPatternListFree(v21);
      __s[0] = 0;
      v32 = _patternListForArchAndLangs(a2, a4, a5, 0);
      v33 = strlen(__s);
      _copyFilesFromBomToBom(a2, v12, v32, __s, &__s[v33], 0, 0, 0, 1);
      BOMPatternListFree(v32);
    }

    if ((a3 & 2) != 0 && a4 && *a4)
    {
      v34 = 0;
        ;
      }

      v81 = BOM_malloczero(32 * v34);
      if (v34)
      {
        v36 = v34;
        v37 = v81 + 2;
        while (1)
        {
          v38 = *a4;
          v39 = BOMGetArchInfoFromName(*a4);
          if (!v39)
          {
            break;
          }

          v40 = *(v39 + 3);
          v41 = BOMGetArchInfoFromCpuType(*(v39 + 2), -1);
          if (!v41)
          {
            break;
          }

          v43 = *(v41 + 2);
          v42 = *(v41 + 3);
          v44 = v43 == 16777228 && v40 == 0;
          if (v44)
          {
            v45 = 16777228;
          }

          else
          {
            v45 = *(v41 + 2);
          }

          v46 = !v44;
          if (v44)
          {
            v47 = 0;
          }

          else
          {
            v47 = -1;
          }

          if (v43 == 16777223 && v40 == 3)
          {
            v45 = 16777223;
            v46 = 0;
            v47 = 3;
          }

          v49 = v40 == v42;
          if (v40 == v42)
          {
            v50 = v45;
          }

          else
          {
            v50 = *(v41 + 2);
          }

          if (v49)
          {
            v51 = v46;
          }

          else
          {
            v51 = 0;
          }

          if (v49)
          {
            v52 = v47;
          }

          else
          {
            v52 = v40;
          }

          *(v37 - 2) = v50;
          *(v37 - 4) = v51;
          *v37 = v52;
          v37 += 8;
          ++a4;
          if (!--v36)
          {
            goto LABEL_57;
          }
        }

        fprintf(*MEMORY[0x277D85DF8], "can't get arch info for '%s'", v38);
        v55 = v81;
      }

      else
      {
LABEL_57:
        v53 = BOMBomGetRootFSObject(v12);
        v54 = BOMBomEnumeratorNew(v12, v53);
        BOMFSObjectFree(v53);
        v55 = v81;
        if (v54)
        {
          v56 = BOMBomEnumeratorNext(v54);
          if (v56)
          {
            v57 = v56;
            do
            {
              if (BOMFSObjectType(v57) == 1 && BOMFSObjectIsBinaryObject(v57))
              {
                v58 = BOMFSObjectArchCount(v57);
                if (v58)
                {
                  v59 = v58;
                  v60 = 0;
                  while (1)
                  {
                    Arch = BOMFSObjectGetArch(v57, v60);
                    ArchSubtype = BOMFSObjectGetArchSubtype(v57, v60);
                    if (v34)
                    {
                      break;
                    }

LABEL_70:
                    if (++v60 == v59)
                    {
                      goto LABEL_71;
                    }
                  }

                  v63 = v81 + 2;
                  v64 = v34;
                  while (Arch != *(v63 - 2) || (*(v63 - 1) & 1) == 0 && ((*v63 ^ ArchSubtype) & 0xFFFFFF) != 0)
                  {
                    v63 += 8;
                    if (!--v64)
                    {
                      goto LABEL_70;
                    }
                  }

                  if (!BOMFSObjectThinKeepingArchsAndSubArchs(v57, v81, v34))
                  {
                    v65 = BOMFSObjectBlockID(v57);
                    if (!_BOMBomSetFSObjectWithBlockID(v12, v57, v65))
                    {
                      *(v12 + 64) = 1;
                    }
                  }
                }

                else
                {
LABEL_71:
                  BOMBomRemoveFSObject(v12, v57);
                }
              }

              BOMFSObjectFree(v57);
              v57 = BOMBomEnumeratorNext(v54);
            }

            while (v57);
          }

          BOMBomEnumeratorFree(v54);
          if (*(v12 + 64))
          {
            v66 = v12[12];
            v67 = *(v12 + 7);
            v68 = BOM_malloczero(24 * (v66 + 1));
            *(v12 + 7) = v68;
            v69 = v67[2];
            *v68 = *v67;
            v68[2] = v69;
            if (v66 < 2)
            {
              v71 = 1;
            }

            else
            {
              v70 = 1;
              v71 = 1;
              do
              {
                if (v34)
                {
                  v72 = &v67[3 * v70];
                  v73 = v81 + 2;
                  v74 = v34;
                  while (*v72 != *(v73 - 2) || (*(v73 - 1) & 1) == 0 && ((*v73 ^ *(v72 + 1)) & 0xFFFFFF) != 0)
                  {
                    v73 += 8;
                    if (!--v74)
                    {
                      goto LABEL_87;
                    }
                  }

                  v75 = *(v12 + 7) + 24 * v71++;
                  v76 = *v72;
                  *(v75 + 16) = *(v72 + 2);
                  *v75 = v76;
                }

LABEL_87:
                ++v70;
              }

              while (v70 != v66);
            }

            v12[12] = v71;
            free(v67);
          }
        }
      }

      free(v55);
    }
  }

LABEL_92:
  v77 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t _copyFilesFromBomToBom(uint64_t *a1, unsigned int *a2, const __CFArray *a3, char *a4, char *a5, unsigned int a6, unsigned int a7, CFDictionaryRef *a8, char a9)
{
  v9 = a8;
  v92 = *MEMORY[0x277D85DE8];
  v82 = a8;
  if (!a8)
  {
    v82 = BOMHardLinkTableNew();
  }

  v89 = 0;
  v90 = 0;
  v88 = 0;
  v87 = 0;
  v16 = BOMNewPathKey(a6, "", &v90);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_11;
  }

  v17 = BOMTreeIteratorNew(a1[2], v16, v90, 0);
  free(v16);
  if (!v17)
  {
LABEL_9:
    v18 = 0;
    LOBYTE(v16) = 0;
    goto LABEL_11;
  }

  if (a4 != a5)
  {
    *a5++ = 47;
  }

  if (BOMTreeIteratorIsAtEnd(v17))
  {
    BOMTreeIteratorFree(v17);
    goto LABEL_9;
  }

  v66 = a7;
  v67 = 0;
  v84 = 0;
  v21 = a5;
  v18 = 0;
  __dst = v21;
  v73 = (a4 - v21);
  v69 = a1;
  v70 = v9;
  v83 = a6;
  do
  {
    v22 = BOMTreeIteratorKey(v17);
    if (BOMPathIDFromPathKey(v22) != a6)
    {
      break;
    }

    v23 = a2;
    v24 = BOMShortNameFromPathKey(v22);
    v25 = BOMTreeIteratorValue(v17);
    v26 = BOMBlockIDFromPathValue(v25);
    v27 = BOMPathIDFromPathKey(v25);
    v28 = BOMStorageSizeOfBlock(a1[1], v26);
    if (v28 > v84)
    {
      if (v18)
      {
        free(v18);
      }

      v18 = BOM_malloc(v28);
      v84 = v28;
    }

    if (BOMStorageCopyFromBlock(a1[1], v26, v18))
    {
      fprintf(*MEMORY[0x277D85DF8], "can't unarchive %s. skipping...\n", a4);
      goto LABEL_24;
    }

    v76 = v27;
    v81 = BOMFSObjectTypeFromRawData(v18);
    strlcpy(__dst, v24, (v73 + 1025));
    v75 = strlen(v24);
    v88 = 0;
    if (!a9)
    {
      v74 = 0;
      v78 = 0;
      v79 = 1;
      a2 = v23;
      goto LABEL_41;
    }

    a2 = v23;
    v29 = _valueAtPath(v23);
    if (!v29)
    {
      v74 = 0;
      v78 = 0;
      v79 = 1;
      goto LABEL_41;
    }

    v30 = v29;
    v31 = BOMPathIDFromPathKey(v29);
    v88 = BOMBlockIDFromPathValue(v30);
    if (BOMStorageCopyFromBlockRange(*(v23 + 8), v88, 0, 1uLL, &v86))
    {
      v32 = BOMExceptionHandlerMessage("BOMStorageCopyFromBlockRange(storage=%p, bid=%u, location=%u, length=%u, data=%p) failed!", *(v23 + 8), v88, 0, 1, &v86);
      v33 = __error();
      _BOMExceptionHandlerCall(v32, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBom.c", 743, *v33);
    }

    v34 = BOMFSObjectTypeFromRawData(&v86);
    v78 = v34;
    if (BOMBomHLIndexCount(*(v23 + 24), v88))
    {
      if (v34 == 1)
      {
        v35 = v31;
        v74 = 1;
        v79 = 0;
        v80 = v88;
        v78 = 1;
        v9 = v70;
      }

      else
      {
        v79 = 0;
        v74 = 1;
        v9 = v70;
LABEL_41:
        v80 = 0;
        v35 = *a2;
        *a2 = v35 + 1;
      }

      if (v81 != 1 || !BOMBomHLIndexCount(a1[3], v26))
      {
        v71 = 0;
        v88 = BOMStorageNewBlock(*(a2 + 1));
LABEL_47:
        v72 = 1;
        goto LABEL_51;
      }

      v87 = 0;
      BOMHardLinkTableGetPathAndData(v82, 0, v26, __s, &v87);
      if (v87)
      {
        v36 = *v87;
        v71 = 1;
      }

      else
      {
        v36 = BOMStorageNewBlock(*(a2 + 1));
        v71 = 0;
      }

      v72 = 0;
      v88 = v36;
      goto LABEL_51;
    }

    v35 = v31;
    if (v81 != 1)
    {
      v79 = 0;
      v80 = 0;
      v74 = 1;
      v71 = 0;
      v72 = 1;
      v9 = v70;
      goto LABEL_51;
    }

    v9 = v70;
    if (!BOMBomHLIndexCount(a1[3], v26))
    {
      v79 = 0;
      v80 = 0;
      v71 = 0;
      v74 = 1;
      goto LABEL_47;
    }

    v87 = 0;
    BOMHardLinkTableGetPathAndData(v82, 0, v26, __s, &v87);
    v79 = 0;
    v80 = 0;
    v71 = v87 != 0;
    v72 = 0;
    v74 = 1;
LABEL_51:
    if (!v88 || !v35)
    {
      goto LABEL_25;
    }

    v37 = a3;
    if (a3)
    {
      v38 = v35;
      Count = CFArrayGetCount(a3);
      if (Count < 1)
      {
        v44 = 0;
      }

      else
      {
        v40 = Count;
        v41 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v37, v41);
          if (ValueAtIndex)
          {
            v43 = BOMPatternMatch(ValueAtIndex, a4);
            if (v43)
            {
              break;
            }
          }

          ++v41;
          v37 = a3;
          if (v40 == v41)
          {
            v44 = 0;
            goto LABEL_64;
          }
        }

        v44 = v43;
LABEL_64:
        v9 = v70;
      }

      v35 = v38;
      if (v81 == 2)
      {
        if (v44)
        {
          v45 = 0;
        }

        else
        {
          v45 = a3;
        }

        LOBYTE(v65) = v74;
        a1 = v69;
        v46 = _copyFilesFromBomToBom(v69, v23, v45, a4, &__dst[v75], v76, v35, v82, v65) != 0;
        if (!v44)
        {
LABEL_72:
          if (!v46)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v46 = 0;
        a1 = v69;
        if (!v44)
        {
          goto LABEL_72;
        }
      }
    }

    else if (v81 == 2)
    {
      LOBYTE(v65) = v74;
      _copyFilesFromBomToBom(a1, v23, 0, a4, &__dst[v75], v76, v35, v82, v65);
    }

    v68 = v35;
    v47 = v79;
    if (v78 == 2)
    {
      v48 = v79;
    }

    else
    {
      v48 = 1;
    }

    a2 = v23;
    if (v48 == 1)
    {
      if ((v79 & 1) == 0)
      {
        if (v80)
        {
          v49 = v80;
        }

        else
        {
          v49 = v88;
        }

        FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(v23, v49);
        if (FSObjectWithBlockID)
        {
          v51 = FSObjectWithBlockID;
          _removeArchInfoForFSObject(v23, FSObjectWithBlockID);
          BOMFSObjectFree(v51);
        }

        v47 = v79;
        if (v80)
        {
          v52 = strlen(a4) + 1;
          v47 = v79;
          BOMBomHLIndexRemove(*(v23 + 24), v80, a4, v52);
          if (!BOMBomHLIndexCount(*(v23 + 24), v80))
          {
            BOMStorageFreeBlock(*(v23 + 8), v80);
          }
        }
      }

      if (BOMStorageSetBlockData(*(v23 + 8), v88, v18, v28))
      {
        fprintf(*MEMORY[0x277D85DF8], "can't archive %s. skipping...\n", a4);
        goto LABEL_25;
      }

      v53 = _BOMBomGetFSObjectWithBlockID(v23, v88);
      if (v53)
      {
        v54 = v53;
        _addArchInfoForFSObject(v23, v53);
        BOMFSObjectFree(v54);
      }
    }

    if (v80)
    {
      v55 = 1;
    }

    else
    {
      v55 = v47;
    }

    if (v55 != 1)
    {
      goto LABEL_97;
    }

    v56 = BOMTreeIteratorKey(v17);
    v57 = BOMShortNameFromPathKey(v56);
    v58 = BOMNewPathKey(v66, v57, &v90);
    v59 = BOMNewPathValue(v68, v88, &v89);
    v60 = BOMTreeSetValue(*(v23 + 16), v58, v90, v59, v89);
    free(v58);
    free(v59);
    if (!v60)
    {
      v67 = 1;
      v9 = v70;
      a2 = v23;
LABEL_97:
      a6 = v83;
      if ((v72 & 1) == 0)
      {
        if (v71)
        {
          v61 = *(a2 + 3);
          if (__s[0])
          {
            v62 = strlen(__s);
            BOMBomHLIndexSet(v61, v88, __s, v62 + 1);
            v63 = strlen(a4);
            v9 = v70;
            BOMBomHLIndexSet(*(a2 + 3), v88, a4, v63 + 1);
            BOMHardLinkTableSetPathAndData(v82, 0, v26, "", &v88, 4uLL);
          }

          else
          {
            v64 = strlen(a4);
            BOMBomHLIndexSet(v61, v88, a4, v64 + 1);
          }
        }

        else
        {
          BOMHardLinkTableSetPathAndData(v82, 0, v26, a4, &v88, 4uLL);
        }
      }

      goto LABEL_26;
    }

    fprintf(*MEMORY[0x277D85DF8], "can't set path info for %s. skipping...\n", a4);
    v9 = v70;
LABEL_24:
    a2 = v23;
LABEL_25:
    a6 = v83;
LABEL_26:
    BOMTreeIteratorNext(v17);
  }

  while (!BOMTreeIteratorIsAtEnd(v17));
  BOMTreeIteratorFree(v17);
  LOBYTE(v16) = v67;
  if (v67)
  {
    *(a2 + 64) = 1;
  }

LABEL_11:
  if (!v9)
  {
    BOMHardLinkTableFree(v82);
  }

  if (v18)
  {
    free(v18);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t _copyVariantsFromBomToBom(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v9 = result;
    result = BOMBomVIndexCount(*(result + 32), 0, 0, 0, a5, a6, a7, a8);
    v38 = result;
    if (result >= 1)
    {
      v11 = 0;
      v39 = 0;
      do
      {
        BOMBomVIndexGet(*(v9 + 32), 0, 0, 0, v11, v43, 0x64uLL, v10);
        result = BOMBomVIndexCount(*(v9 + 32), v43, 0, 0, v12, v13, v14, v15);
        if (result >= 1)
        {
          v16 = result;
          for (i = 0; i != v16; ++i)
          {
            BOMBomVIndexGet(*(v9 + 32), v43, 0, 0, i, v42, 0x64uLL, v10);
            result = BOMBomVIndexCount(*(v9 + 32), v43, v42, 0, v18, v19, v20, v21);
            if (result >= 1)
            {
              v22 = result;
              for (j = 0; j != v22; ++j)
              {
                BOMBomVIndexGet(*(v9 + 32), v43, v42, 0, j, v41, 0x64uLL, v10);
                v28 = BOMBomVIndexCount(*(v9 + 32), v43, v42, v41, v24, v25, v26, v27);
                if (v28 >= 1)
                {
                  v32 = v28;
                  for (k = 0; k != v32; ++k)
                  {
                    v34 = BOMBomVIndexGet(*(v9 + 32), v43, v42, v41, k, v40, 0x64uLL, v31);
                    if (a2 && !v34 && !BOMBomVIndexSet(*(a2 + 32), v43, v42, v41, v40, v29, v30, v31))
                    {
                      *(a2 + 64) = 1;
                    }
                  }
                }

                result = BOMBomVIndexGetApproxDiskSpace(*(a2 + 32), v43, v42, v41, &v39, v29, v30, v31);
                if (!result)
                {
                  result = BOMBomVIndexSetApproxDiskSpace(*(a2 + 32), v43, v42, v41, v39, v35, v36, v10);
                }
              }
            }
          }
        }

        ++v11;
      }

      while (v11 != v38);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

__CFArray *_patternListForArchAndLangs(uint64_t a1, const char **a2, const char **a3, int a4)
{
  v10 = BOMPatternListNew();
  if (!v10)
  {
    return v10;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

  if (a4)
  {
    _addPathsToList(a1, "arch", v10, a2, 1, 1, v8, v9);
    _addPathsToList(a1, "arch", v10, a2, 0, 0, v11, v12);
LABEL_5:
    if (!a3)
    {
      goto LABEL_12;
    }

    if (a4)
    {
      _addPathsToList(a1, "lang", v10, a3, 1, 1, v8, v9);
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_11;
  }

  v13 = 1;
  _addPathsToList(a1, "arch", v10, a2, 1, 0, v8, v9);
  if (a3)
  {
LABEL_11:
    _addPathsToList(a1, "lang", v10, a3, v13, 0, v8, v9);
  }

LABEL_12:
  Count = CFArrayGetCount(v10);
  if (Count >= 1)
  {
    v15 = Count;
    for (i = 0; i != v15; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
      v18 = BOMPatternCompileString(ValueAtIndex);
      CFArraySetValueAtIndex(v10, i, v18);
      free(ValueAtIndex);
    }
  }

  return v10;
}

char *BOMBomNewFromDirectoryWithSys(char *a1, char *a2, uint64_t a3, unsigned int (**a4)(void, char *, __int128 *))
{
  keys[1] = *MEMORY[0x277D85DE8];
  v8 = getenv("BOMBomNewFromDirectory_parallel");
  if (v8 && *v8 == 48 && !v8[1])
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    block = 0u;
    if (!a4)
    {
      a4 = BomSys_default();
    }

    if (a4[10](a4[1], a2, &block))
    {
      v9 = *MEMORY[0x277D85DF8];
      v54 = __error();
      v94 = a2;
      v96 = strerror(*v54);
      v11 = "can't stat %s (%s)\n";
      goto LABEL_50;
    }

    if ((WORD2(block) & 0xF000) != 0x4000)
    {
      goto LABEL_57;
    }

    a1 = BOMBomNewWithSys(a1, a4);
    if (a1)
    {
      v56 = BOMHardLinkTableNew();
      if (v56)
      {
        v57 = v56;
        a4[38](a4[1], &v118, 1025);
        if (!(a4[39])(a4[1], a2))
        {
          __strlcpy_chk();
          v58 = strlen(__s);
          if (!_visitDir(a1, __s, &__s[v58], 0, v57, a3))
          {
            BOMHardLinkTableFree(v57);
            (a4[39])(a4[1], &v118);
            goto LABEL_60;
          }
        }
      }

      BOMBomFree(a1);
      goto LABEL_59;
    }
  }

  else
  {
    if (a1)
    {
      if (!a2)
      {
        fwrite("directory_path is NULL\n", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
LABEL_59:
        a1 = 0;
        goto LABEL_60;
      }

      memset(&v118, 0, sizeof(v118));
      if (stat(a2, &v118))
      {
        v9 = *MEMORY[0x277D85DF8];
        v10 = __error();
        v94 = a2;
        v96 = strerror(*v10);
        v11 = "Could not stat %s: %s\n";
LABEL_50:
        v55 = v9;
LABEL_58:
        fprintf(v55, v11, v94, v96);
        goto LABEL_59;
      }

      if ((v118.st_mode & 0xF000) == 0x4000)
      {
        *__s = 0;
        v111 = __s;
        v112 = 0x6000000000;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0;
        values = *MEMORY[0x277CBED28];
        keys[0] = @"disableLexicographicSort";
        v12 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v12 || (v13 = v12, v14 = BOMCopierSourceNew(a2, v12, 0, 0), *(v111 + 3) = v14, CFRelease(v13), !*(v111 + 3)))
        {
          v61 = *MEMORY[0x277D85DF8];
          v62 = "Could not create BOMCopierSource\n";
          v63 = 33;
          goto LABEL_62;
        }

        global_queue = dispatch_get_global_queue(0, 0);
        if (!global_queue)
        {
          v61 = *MEMORY[0x277D85DF8];
          v62 = "Could not get the global queue\n";
          v63 = 31;
          goto LABEL_62;
        }

        v16 = global_queue;
        v17 = dispatch_group_create();
        *(v111 + 6) = v17;
        if (!v17)
        {
          v61 = *MEMORY[0x277D85DF8];
          v62 = "Could not create dispatch group\n";
          v63 = 32;
          goto LABEL_62;
        }

        *(v111 + 7) = BOMStackNew();
        v18 = BOMHardLinkTableNew();
        *(v111 + 9) = v18;
        if (v18)
        {
          v19 = malloc_type_calloc(1uLL, 0x400uLL, 0x16D468D4uLL);
          v26 = v111;
          *(v111 + 10) = v19;
          if (!v19)
          {
            v61 = *MEMORY[0x277D85DF8];
            v62 = "Could not create empty hardlink path\n";
            v63 = 37;
            goto LABEL_62;
          }

          v109 = 0;
          v27 = BOMCopierSourceNext(*(v26 + 3), &v109, v20, v21, v22, v23, v24, v25);
          if (v27)
          {
            v28 = v27;
            v29 = 1;
            while (1)
            {
              v30 = malloc_type_calloc(1uLL, 0x50uLL, 0x1030040C9A1E1CFuLL);
              if (!v30)
              {
                v61 = *MEMORY[0x277D85DF8];
                v62 = "Could not allocate entry node\n";
                v63 = 30;
                goto LABEL_62;
              }

              v31 = v30;
              *v30 = v28;
              v32 = v111;
              if (*(v111 + 4))
              {
                v33 = v111 + 40;
                *(*(v111 + 5) + 72) = v30;
              }

              else
              {
                *(v111 + 4) = v30;
                v33 = v32 + 40;
              }

              *v33 = v30;
              Type = BOMCopierSourceEntryGetType(v28);
              v41 = v111;
              v42 = *(v111 + 8);
              if (v42)
              {
                *(v31 + 4) = *v42;
                if (Type != 13)
                {
                  *(v31 + 5) = v29;
                  v44 = v31 + 5;
                  ++v29;
                  if (Type == 6)
                  {
                    BOMStackPush(*(v41 + 7), v42);
                    *(v111 + 8) = 0;
                    goto LABEL_31;
                  }

                  goto LABEL_36;
                }

                free(v42);
                v41 = v111;
                *(v111 + 8) = 0;
              }

              else if (Type != 13)
              {
                *(v31 + 5) = v29;
                v44 = v31 + 5;
                ++v29;
                if (Type == 6)
                {
LABEL_31:
                  v45 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
                  *(v111 + 8) = v45;
                  if (!v45)
                  {
                    v89 = *MEMORY[0x277D85DF8];
                    v92 = __error();
                    v95 = strerror(*v92);
                    v91 = "Could not create parent element: %s\n";
                    goto LABEL_115;
                  }

                  *v45 = *v44;
                  ActualPath = BOMCopierSourceEntryGetActualPath(v28);
                  if (access(ActualPath, 1))
                  {
                    v89 = *MEMORY[0x277D85DF8];
                    v90 = __error();
                    v95 = ActualPath;
                    v96 = strerror(*v90);
                    v91 = "Could not access %s: %s\n";
LABEL_115:
                    fprintf(v89, v91, v95, v96);
                    goto LABEL_63;
                  }

LABEL_33:
                  dispatch_group_enter(*(v111 + 6));
                  v47 = *(v111 + 6);
                  *&block = MEMORY[0x277D85DD0];
                  *(&block + 1) = 0x40000000;
                  *&v99 = __BOMBomNewFromDirectory_parallel_block_invoke;
                  *(&v99 + 1) = &unk_278D133B8;
                  LOWORD(v102) = a3;
                  *&v101 = a4;
                  *(&v101 + 1) = v31;
                  *&v100 = __s;
                  *(&v100 + 1) = v28;
                  dispatch_group_async(v47, v16, &block);
                  goto LABEL_34;
                }

LABEL_36:
                if (Type > 7)
                {
                  if (Type == 8)
                  {
                    if (BOMCopierSourceEntryGetHardlinkCount(*v31) >= 2)
                    {
                      Device = BOMCopierSourceEntryGetDevice(*v31);
                      Inode = BOMCopierSourceEntryGetInode(*v31);
                      *(v31 + 8) = Device;
                      v31[5] = Inode;
                      v108 = 0;
                      v97 = Device;
                      v50 = Device;
                      v51 = Inode;
                      if (!BOMHardLinkTableGetPathAndData(*(v111 + 9), v50, Inode, *(v111 + 10), &v108))
                      {
                        *(v31 + 25) = 1;
                        Path = BOMCopierSourceEntryGetPath(v28);
                        v107 = 0;
                        v107 = *v108 + 1;
                        BOMHardLinkTableSetPathAndData(*(v111 + 9), v97, v51, Path, &v107, 4uLL);
                        *(v31 + 7) = v107;
                        goto LABEL_34;
                      }

                      v52 = BOMCopierSourceEntryGetPath(v28);
                      v107 = 1;
                      BOMHardLinkTableSetPathAndData(*(v111 + 9), v97, v51, v52, &v107, 4uLL);
                      *(v31 + 24) = 1;
                      *(v31 + 7) = v107;
                    }
                  }

                  else if (Type == 10)
                  {
                    goto LABEL_34;
                  }
                }

                else if (Type == 4)
                {
                  goto LABEL_34;
                }

                goto LABEL_33;
              }

              v43 = BOMStackPop(*(v41 + 7));
              *(v111 + 8) = v43;
LABEL_34:
              v109 = 0;
              v28 = BOMCopierSourceNext(*(v111 + 3), &v109, v35, v36, v37, v38, v39, v40);
              if (!v28)
              {
                goto LABEL_71;
              }
            }
          }

          v29 = 1;
LABEL_71:
          if (v109)
          {
            v64 = *MEMORY[0x277D85DF8];
            Message = BOMCopierErrorGetMessage(v109);
            fprintf(v64, "Could not get next entry: %s\n", Message);
            BOMCopierErrorFree(v109);
            goto LABEL_63;
          }

          dispatch_group_wait(*(v111 + 6), 0xFFFFFFFFFFFFFFFFLL);
          v66 = *(v111 + 4);
          while (v66)
          {
            v67 = v66;
            v66 = *(v66 + 72);
            if (!*(v67 + 8) && *(v67 + 52) == 1 && *(v67 + 56) && *(v67 + 64))
            {
              v68 = BOMFSObjectNewFromPathWithSys(*(v67 + 56), a3, a4);
              if (!v68)
              {
                fprintf(*MEMORY[0x277D85DF8], "Could not make second attempt to create BOMFSObject for %s\n");
                goto LABEL_63;
              }

              v69 = v68;
              BOMFSObjectSetPathName(v68, *(v67 + 64), 1);
              *(v67 + 8) = v69;
              v70 = *(v67 + 64);
              if (v70)
              {
                free(v70);
                *(v67 + 64) = 0;
              }

              v71 = *(v67 + 56);
              if (v71)
              {
                free(v71);
                *(v67 + 56) = 0;
              }

              *(v67 + 52) = 0;
            }
          }

          v72 = BOMBomNewWithSys(a1, 0);
          v73 = v111;
          *(v111 + 11) = v72;
          if (!v72)
          {
            v61 = *MEMORY[0x277D85DF8];
            v62 = "Could not create empty bom\n";
            v63 = 27;
            goto LABEL_62;
          }

          v74 = *(v73 + 4);
          if (v74)
          {
            while (1)
            {
              v75 = v74;
              v74 = *(v74 + 72);
              if (v75[1] || *(v75 + 25))
              {
                v76 = BOMCopierSourceEntryGetType(*v75);
                if (v76 != 13)
                {
                  v77 = v76;
                  v78 = BOMCopierSourceEntryGetPath(*v75);
                  v107 = 0;
                  if (*(v75 + 25))
                  {
                    v109 = 0;
                    if (BOMHardLinkTableGetPathAndData(*(v111 + 9), *(v75 + 8), v75[5], *(v111 + 10), &v109))
                    {
                      v61 = *MEMORY[0x277D85DF8];
                      v62 = "Could not get entry for hardlink node\n";
                      goto LABEL_68;
                    }

                    v107 = *v109;
                  }

                  else
                  {
                    v79 = BOMStorageNewBlock(*(*(v111 + 11) + 8));
                    v107 = v79;
                    if (!v79)
                    {
                      v61 = *MEMORY[0x277D85DF8];
                      v62 = "Could not get storage block for fso\n";
                      v63 = 36;
                      goto LABEL_62;
                    }

                    *(v75 + 12) = v79;
                    if (_BOMBomSetFSObjectWithBlockID(*(v111 + 11), v75[1], v79))
                    {
                      fprintf(*MEMORY[0x277D85DF8], "Could not archive fso for %s\n");
                      goto LABEL_63;
                    }

                    if ((v77 & 0xFFFFFFFE) == 8)
                    {
                      _addArchInfoForFSObject(*(v111 + 11), v75[1]);
                    }

                    if (*(v75 + 24) == 1)
                    {
                      v109 = 0;
                      if (BOMHardLinkTableGetPathAndData(*(v111 + 9), *(v75 + 8), v75[5], *(v111 + 10), &v109))
                      {
                        v61 = *MEMORY[0x277D85DF8];
                        v62 = "Could not lookup count for hardlink origin\n";
                        v63 = 43;
                        goto LABEL_62;
                      }

                      BOMHardLinkTableSetPathAndData(*(v111 + 9), *(v75 + 8), v75[5], v78, &v107, 4uLL);
                    }
                  }

                  Name = BOMCopierSourceEntryGetName(*v75);
                  v109 = 0;
                  v81 = BOMNewPathKey(*(v75 + 4), Name, &v109);
                  if (!v81)
                  {
                    v93 = *(v75 + 4);
                    fprintf(*MEMORY[0x277D85DF8], "Could not create path key for %u %s\n");
                    goto LABEL_63;
                  }

                  v82 = v81;
                  v108 = 0;
                  v83 = BOMNewPathValue(*(v75 + 5), v107, &v108);
                  if (!v83)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "Could not create path value for %u %u\n", *(v75 + 5), v107);
                    free(v82);
                    goto LABEL_63;
                  }

                  v84 = v83;
                  v85 = BOMTreeSetValue(*(*(v111 + 11) + 16), v82, v109, v83, v108);
                  free(v82);
                  free(v84);
                  if (v85)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "Could not set path info for %s\n");
                    goto LABEL_63;
                  }

                  if (*(v75 + 25) == 1)
                  {
                    if (*(v75 + 7) == 2)
                    {
                      v86 = strlen(*(v111 + 10));
                      BOMBomHLIndexSet(*(*(v111 + 11) + 24), v107, *(v111 + 10), v86 + 1);
                    }

                    v87 = strlen(v78);
                    BOMBomHLIndexSet(*(*(v111 + 11) + 24), v107, v78, v87 + 1);
                  }
                }
              }

              if (!v74)
              {
                v72 = *(v111 + 11);
                break;
              }
            }
          }

          *v72 = v29;
          v88 = v111;
          a1 = *(v111 + 11);
          *(v111 + 11) = 0;
          release_discovery_state((v88 + 24));
        }

        else
        {
          v61 = *MEMORY[0x277D85DF8];
          v62 = "Could not create empty hardlink table\n";
LABEL_68:
          v63 = 38;
LABEL_62:
          fwrite(v62, v63, 1uLL, v61);
LABEL_63:
          release_discovery_state((v111 + 24));
          a1 = 0;
        }

        _Block_object_dispose(__s, 8);
        goto LABEL_60;
      }

LABEL_57:
      v55 = *MEMORY[0x277D85DF8];
      v94 = a2;
      v11 = "%s is not a directory\n";
      goto LABEL_58;
    }

    fwrite("bom_path is NULL\n", 0x11uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

LABEL_60:
  v59 = *MEMORY[0x277D85DE8];
  return a1;
}

char *BOMBomNewFromDirectoryWithOptions(char *a1, char *a2, uint64_t a3, char a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v16.rlim_cur = 0;
  v16.rlim_max = 0;
  if (a4)
  {
    if (getrlimit(8, &v16) || (*v17 = 0x1D00000001, rlim_max = 0, v14 = 4, sysctl(v17, 2u, &rlim_max, &v14, 0, 0)))
    {
      v7 = 0;
    }

    else
    {
      rlim_max_low = rlim_max;
      if (v16.rlim_max < rlim_max)
      {
        rlim_max = v16.rlim_max;
        rlim_max_low = SLODWORD(v16.rlim_max);
      }

      if (v16.rlim_cur >= rlim_max_low)
      {
        v7 = BOMBomNewFromDirectoryWithSys(a1, a2, a3, 0);
      }

      else
      {
        v13 = v16;
        if (v16.rlim_cur + 2304 < rlim_max_low)
        {
          rlim_max_low = v16.rlim_cur + 2304;
        }

        v13.rlim_cur = rlim_max_low;
        v12 = setrlimit(8, &v13);
        v7 = BOMBomNewFromDirectoryWithSys(a1, a2, a3, 0);
        if (v12)
        {
          goto LABEL_5;
        }
      }

      setrlimit(8, &v16);
    }

LABEL_5:
    v8 = *MEMORY[0x277D85DE8];
    return v7;
  }

  v10 = *MEMORY[0x277D85DE8];

  return BOMBomNewFromDirectoryWithSys(a1, a2, a3, 0);
}

uint64_t _visitDir(unsigned int *a1, const char *a2, char *a3, unsigned int a4, CFDictionaryRef *a5, uint64_t a6)
{
  v63 = *MEMORY[0x277D85DE8];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *v53 = 0u;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v12 = *a1;
  *a1 = v12 + 1;
  Sys = BOMStorageGetSys(*(a1 + 1));
  if ((*(Sys + 80))(*(Sys + 8), ".", v53))
  {
    goto LABEL_49;
  }

  v14 = BOMFSObjectNewFromPathWithSys(".", a6, Sys);
  if (!v14)
  {
    fprintf(*MEMORY[0x277D85DF8], "can't read %s. skipping...\n");
LABEL_7:
    result = 0;
    goto LABEL_51;
  }

  v15 = v14;
  v16 = BOMStorageNewBlock(*(a1 + 1));
  v52 = v16;
  if (!v16)
  {
    goto LABEL_50;
  }

  if (_BOMBomSetFSObjectWithBlockID(a1, v15, v16))
  {
LABEL_5:
    fprintf(*MEMORY[0x277D85DF8], "can't archive %s. skipping...\n", a2);
    goto LABEL_50;
  }

  BOMFSObjectFree(v15);
  v18 = a3;
  do
  {
    if (v18 <= a2)
    {
      break;
    }

    v19 = *--v18;
  }

  while (v19 != 47);
  if (v18 <= a2)
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 + 1;
  }

  v21 = BOMNewPathKey(a4, v20, &v50);
  v22 = BOMNewPathValue(v12, v52, &v49);
  v23 = BOMTreeSetValue(*(a1 + 2), v21, v50, v22, v49);
  free(v21);
  free(v22);
  if (v23)
  {
    fprintf(*MEMORY[0x277D85DF8], "can't set path info for %s. skipping...\n");
    goto LABEL_7;
  }

  v24 = (*(Sys + 272))(*(Sys + 8), ".");
  if (!v24)
  {
LABEL_49:
    perror(a2);
    goto LABEL_50;
  }

  v25 = v24;
  *a3 = 47;
  v26 = a3 + 1;
  v27 = (*(Sys + 288))(*(Sys + 8), v24);
  if (!v27)
  {
LABEL_52:
    (*(Sys + 280))(*(Sys + 8), v25);
    goto LABEL_7;
  }

  v28 = v27;
  v48 = v25;
  while (1)
  {
    if (_ignore_readdir_entry(v28))
    {
      goto LABEL_39;
    }

    strlcpy(v26, (v28 + 21), a2 - v26 + 1025);
    if ((*(Sys + 96))(*(Sys + 8), v28 + 21, v53))
    {
      goto LABEL_53;
    }

    v29 = v53[1] & 0xF000;
    if (v29 == 0x4000)
    {
      break;
    }

    v51 = 0;
    v30 = v29 == 0x8000 && HIWORD(v53[1]) >= 2u;
    if (v30 && (__s[0] = 0, BOMHardLinkTableGetPathAndData(a5, v53[0], *&v53[2], __s, &v51), v51))
    {
      v47 = 0;
      v52 = *v51;
    }

    else
    {
      v31 = BOMFSObjectNewFromPathWithSys((v28 + 21), a6, Sys);
      if (!v31)
      {
        goto LABEL_39;
      }

      v32 = v31;
      v33 = BOMStorageNewBlock(*(a1 + 1));
      v52 = v33;
      if (!v33)
      {
        goto LABEL_54;
      }

      if (_BOMBomSetFSObjectWithBlockID(a1, v32, v33))
      {
        goto LABEL_5;
      }

      _addArchInfoForFSObject(a1, v32);
      BOMFSObjectFree(v32);
      v47 = 1;
    }

    v34 = (*a1)++;
    v35 = BOMNewPathKey(v12, (v28 + 21), &v50);
    v36 = BOMNewPathValue(v34, v52, &v49);
    v37 = BOMTreeSetValue(*(a1 + 2), v35, v50, v36, v49);
    free(v35);
    free(v36);
    if (v37)
    {
      fprintf(*MEMORY[0x277D85DF8], "can't set path info for %s. skipping...\n", a2);
      v25 = v48;
    }

    else
    {
      v25 = v48;
      if ((v53[1] & 0xF000) != 0x8000 || HIWORD(v53[1]) < 2u)
      {
        goto LABEL_39;
      }

      if (v47)
      {
        v38 = v53[0];
        v39 = *&v53[2];
        v40 = a5;
        v41 = a2;
      }

      else
      {
        v42 = *(a1 + 3);
        if (!__s[0])
        {
          v45 = strlen(a2);
          BOMBomHLIndexSet(v42, v52, a2, v45 + 1);
          goto LABEL_39;
        }

        v43 = strlen(__s);
        BOMBomHLIndexSet(v42, v52, __s, v43 + 1);
        v44 = strlen(a2) + 1;
        v25 = v48;
        BOMBomHLIndexSet(*(a1 + 3), v52, a2, v44);
        v38 = v53[0];
        v39 = *&v53[2];
        v40 = a5;
        v41 = "";
      }

      BOMHardLinkTableSetPathAndData(v40, v38, v39, v41, &v52, 4uLL);
    }

LABEL_39:
    v28 = (*(Sys + 288))(*(Sys + 8), v25);
    if (!v28)
    {
      goto LABEL_52;
    }
  }

  if (!(*(Sys + 312))(*(Sys + 8), v28 + 21))
  {
    if (_visitDir(a1, a2, &v26[*(v28 + 18)], v12, a5, a6))
    {
      goto LABEL_54;
    }

    if (!(*(Sys + 312))(*(Sys + 8), ".."))
    {
      goto LABEL_39;
    }
  }

LABEL_53:
  perror(a2);
LABEL_54:
  (*(Sys + 280))(*(Sys + 8), v25);
LABEL_50:
  result = 1;
LABEL_51:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMBomCommit(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 65))
  {
    return 0;
  }

  NamedBlock = BOMStorageGetNamedBlock(*(a1 + 8), "BomInfo");
  if (!NamedBlock)
  {
    return 1;
  }

  v3 = 1;
  v4 = BOMStreamWithBlockID(*(a1 + 8), NamedBlock, (16 * *(a1 + 48)) | 0xC, 1);
  if (v4)
  {
    v5 = v4;
    BOMStreamWriteUInt32(v4, 1u);
    BOMStreamWriteUInt32(v5, *a1);
    _writeArchInfo(a1, v5);
    if (!BOMStreamFree(v5))
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        BOMTreeCommit(v6);
      }

      v7 = *(a1 + 24);
      if (v7)
      {
        BOMBomHLIndexCommit(v7);
      }

      v8 = *(a1 + 32);
      if (v8)
      {
        BOMBomVIndexCommit(v8);
      }

      v9 = *(a1 + 40);
      if (v9)
      {
        BOMTreeCommit(v9);
      }

      if (!BOMStorageCommit(*(a1 + 8)))
      {
        v3 = 0;
        *(a1 + 64) = 0;
      }
    }
  }

  return v3;
}

void *BOMBomPathIDAndArchsForKey(uint64_t a1, unsigned int a2, char *__s, uint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    if (__s)
    {
      v15 = 0;
      v4 = BOMNewPathKey(a2, __s, &v15);
      if (v4)
      {
        Value = BOMTreeGetValue(*(a1 + 16), v4, v15);
        free(v4);
        if (!Value)
        {
          return 0;
        }

        v4 = BOMPathIDFromPathKey(Value);
        if (!a4)
        {
          return v4;
        }

        v8 = BOMBlockIDFromPathValue(Value);
        FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(a1, v8);
        if (!FSObjectWithBlockID)
        {
          return 0;
        }

        v10 = FSObjectWithBlockID;
        if (BOMFSObjectType(FSObjectWithBlockID) == 1)
        {
          v11 = BOMFSObjectArchCount(v10);
          if (v11)
          {
            v12 = 0;
            v13 = v11;
            do
            {
              *(a4 + 4 * v12) = BOMFSObjectGetArch(v10, v12);
              ++v12;
            }

            while (v13 != v12);
          }

          else
          {
            v13 = 0;
          }

          *(a4 + 4 * v13) = 0;
        }

        BOMFSObjectFree(v10);
      }
    }
  }

  return v4;
}

uint64_t BOMBomFSObjectCount(uint64_t result)
{
  if (result)
  {
    return BOMTreeCount(*(result + 16));
  }

  return result;
}

char *BOMBomGetRootFSObject(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v14 = 0;
  v2 = BOMNewPathKey(0, ".", &v14);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Value = BOMTreeGetValue(*(a1 + 16), v2, v14);
  v5 = Value;
  if (Value)
  {
    v6 = Value;
  }

  else
  {
    v12 = BOMTreeIteratorNew(*(a1 + 16), v3, v14, 0);
    free(v3);
    if (!v12)
    {
      return v12;
    }

    v3 = BOMTreeIteratorKey(v12);
    v14 = BOMTreeIteratorKeySize(v12);
    v6 = BOMTreeIteratorValue(v12);
    BOMTreeIteratorFree(v12);
    v12 = 0;
    if (!v3 || !v14 || !v6)
    {
      return v12;
    }
  }

  v7 = BOMBlockIDFromPathValue(v6);
  v8 = BOMPathIDFromPathKey(v6);
  v9 = BOMPathIDFromPathKey(v3);
  v10 = BOMShortNameFromPathKey(v3);
  FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(a1, v7);
  v12 = FSObjectWithBlockID;
  if (FSObjectWithBlockID)
  {
    BOMFSObjectSetPathName(FSObjectWithBlockID, v10, 1);
    BOMFSObjectSetShortName(v12, v10, 1);
    BOMFSObjectSetPathID(v12, v8);
    BOMFSObjectSetParentPathID(v12, v9);
    BOMFSObjectSetBlockID(v12, v7);
  }

  if (v5)
  {
    free(v3);
  }

  return v12;
}

uint64_t BOMBomGetFSObjectAtPath(uint64_t a1, char *__s)
{
  v2 = 0;
  v18 = 0;
  if (a1 && __s)
  {
    v5 = strlen(__s);
    v6 = BOM_malloc(v5 + 1);
    __stringp = v6;
    if (v6)
    {
      v7 = v6;
      memmove(v6, __s, v5 + 1);
      v8 = strsep(&__stringp, "/");
      if (v8)
      {
        v9 = 0;
        while (1)
        {
          v10 = v9;
          v11 = v8;
          v12 = BOMNewPathKey(v9, v8, &v18);
          if (!v12)
          {
            break;
          }

          v13 = v12;
          Value = BOMTreeGetValue(*(a1 + 16), v12, v18);
          free(v13);
          if (!Value)
          {
            break;
          }

          v9 = BOMPathIDFromPathKey(Value);
          v8 = strsep(&__stringp, "/");
          if (!v8)
          {
            v15 = BOMBlockIDFromPathValue(Value);
            FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(a1, v15);
            v2 = FSObjectWithBlockID;
            if (FSObjectWithBlockID)
            {
              BOMFSObjectSetPathName(FSObjectWithBlockID, __s, 1);
              BOMFSObjectSetShortName(v2, v11, 1);
              BOMFSObjectSetPathID(v2, v9);
              BOMFSObjectSetParentPathID(v2, v10);
              BOMFSObjectSetBlockID(v2, v15);
            }

            goto LABEL_12;
          }
        }
      }

      v2 = 0;
LABEL_12:
      free(v7);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t BOMBomInsertFSObject(unint64_t a1, unsigned int *a2, int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v7 = BOMFSObjectPathName(a2);
    __strlcpy_chk();
    v8 = strrchr(__s, 47);
    if (v8)
    {
      *v8 = 0;
      v9 = _valueAtPath(a1);
      if (!v9)
      {
        fprintf(*MEMORY[0x277D85DF8], "parent directory %s does not exist\n", __s);
        result = 401;
        goto LABEL_26;
      }

      v10 = BOMPathIDFromPathKey(v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = BOMFSObjectShortName(a2);
    v12 = _valueAtPath(a1);
    if (v12)
    {
      if (!a3)
      {
        goto LABEL_25;
      }

      v13 = v12;
      v14 = BOMPathIDFromPathKey(v12);
      v15 = BOMBlockIDFromPathValue(v13);
      if (BOMStorageCopyFromBlockRange(*(a1 + 8), v15, 0, 1uLL, &__dst))
      {
        v26 = BOMExceptionHandlerMessage("BOMBomInsertFSObject failed while getting data for '%s' (parentPathID=%u pathID=%u bid=%u)", v11, v10, v14, v15);
        v27 = __error();
        _BOMFatalException(v26, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBom.c", 3022, *v27);
      }

      v16 = BOMFSObjectTypeFromRawData(&__dst);
      v17 = BOMFSObjectType(a2);
      if (v17 == 2 && v16 != 2)
      {
        result = 402;
        goto LABEL_26;
      }

      if (v17 != 2 && v16 == 2)
      {
        result = 403;
        goto LABEL_26;
      }

      FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(a1, v15);
      if (FSObjectWithBlockID)
      {
        v24 = FSObjectWithBlockID;
        _removeArchInfoForFSObject(a1, FSObjectWithBlockID);
        BOMFSObjectFree(v24);
      }

      if (!BOMBomHLIndexCount(*(a1 + 24), v15) || (v25 = strlen(v7), BOMBomHLIndexRemove(*(a1 + 24), v15, v7, v25 + 1), !BOMBomHLIndexCount(*(a1 + 24), v15)))
      {
        v18 = 1;
        goto LABEL_15;
      }
    }

    else
    {
      v14 = (*a1)++;
    }

    v15 = BOMStorageNewBlock(*(a1 + 8));
    v18 = 0;
LABEL_15:
    if (_BOMBomSetFSObjectWithBlockID(a1, a2, v15))
    {
      fprintf(*MEMORY[0x277D85DF8], "can't archive %s\n", v7);
      result = 404;
      goto LABEL_26;
    }

    _addArchInfoForFSObject(a1, a2);
    if ((v18 & 1) == 0)
    {
      v19 = BOMNewPathKey(v10, v11, &v30);
      v20 = BOMNewPathValue(v14, v15, &v29);
      v21 = BOMTreeSetValue(*(a1 + 16), v19, v30, v20, v29);
      free(v19);
      free(v20);
      if (v21)
      {
        fprintf(*MEMORY[0x277D85DF8], "can't set path info for %s.\n", v7);
        result = 405;
        goto LABEL_26;
      }
    }

    *(a1 + 64) = 1;
    BOMBomVIndexInvalidateDiskSpace(*(a1 + 32));
LABEL_25:
    result = 0;
  }

LABEL_26:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _removeArchInfoForFSObject(unint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    v2 = result;
    if (*(result + 56))
    {
      if (BOMFSObjectIsBinaryObject(a2))
      {
        result = BOMFSObjectArchCount(a2);
        if (result)
        {
          v4 = result;
          for (i = 0; i != v4; ++i)
          {
            Arch = BOMFSObjectGetArch(a2, i);
            result = BOMFSObjectGetArchSize(a2, i);
            v7 = *(v2 + 48);
            if (v7 >= 2)
            {
              v8 = (*(v2 + 56) + 32);
              v9 = v7 - 1;
              while (*(v8 - 2) != Arch)
              {
                v8 += 3;
                if (!--v9)
                {
                  goto LABEL_14;
                }
              }

              v10 = *v8 - result;
              if (*v8 < result)
              {
                v10 = 0;
              }

              *v8 = v10;
            }

LABEL_14:
            ;
          }
        }
      }

      else
      {
        result = BOMFSObjectSize(a2);
        v11 = *(v2 + 56);
        v12 = *(v11 + 8);
        v13 = v12 >= result;
        v14 = v12 - result;
        if (!v13)
        {
          v14 = 0;
        }

        *(v11 + 8) = v14;
      }
    }
  }

  return result;
}

uint64_t _BOMBomSetFSObjectWithBlockID(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    v7 = BOMStorageSizeOfBlock(*(a1 + 8), a3);
    v8 = BOMFSObjectArchiveLength(a2);
    if (v8 < 1)
    {
      return 0;
    }

    else
    {
      v9 = BOMStreamWithBlockID(*(a1 + 8), a3, v8, 1);
      v10 = v9;
      if (v9 && !BOMFSObjectArchive(v9, a2))
      {
        v3 = 0;
      }

      BOMStreamFree(v10);
      if (*(a1 + 40))
      {
        v14 = bswap32(a3);
        v11 = BOMFSObjectSize(a2);
        if (v11 < 0x100000000)
        {
          if (v7)
          {
            BOMTreeRemoveValue(*(a1 + 40), &v14, 4uLL);
          }
        }

        else
        {
          v13 = bswap64(v11);
          BOMTreeSetValue(*(a1 + 40), &v14, 4uLL, &v13, 8);
        }
      }
    }
  }

  return v3;
}

uint64_t _addArchInfoForFSObject(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 48) || !*(a1 + 56))
  {
    *(a1 + 48) = 1;
    result = BOM_malloczero(0x18uLL);
    *(a1 + 56) = result;
    if (!result)
    {
      return result;
    }

    *result = 0;
  }

  if (BOMFSObjectIsBinaryObject(a2))
  {
    result = BOMFSObjectArchCount(a2);
    if (result)
    {
      v5 = result;
      for (i = 0; i != v5; ++i)
      {
        Arch = BOMFSObjectGetArch(a2, i);
        ArchSize = BOMFSObjectGetArchSize(a2, i);
        v9 = *(a1 + 48);
        result = *(a1 + 56);
        if (v9 < 2)
        {
LABEL_12:
          result = BOM_realloczero(result, 24 * v9, 24 * (v9 + 1));
          *(a1 + 56) = result;
          if (!result)
          {
            return result;
          }

          v12 = *(a1 + 48);
          *(a1 + 48) = v12 + 1;
          v13 = (result + 24 * v12);
          *v13 = Arch;
          v10 = v13 + 2;
        }

        else
        {
          v10 = (result + 32);
          v11 = v9 - 1;
          while (*(v10 - 2) != Arch)
          {
            v10 += 3;
            if (!--v11)
            {
              goto LABEL_12;
            }
          }
        }

        *v10 += ArchSize;
      }
    }
  }

  else
  {
    result = BOMFSObjectSize(a2);
    *(*(a1 + 56) + 8) += result;
  }

  return result;
}

uint64_t BOMBomRemoveFSObject(unint64_t a1, unsigned int *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v17 = 0;
    v4 = BOMBomEnumeratorNewWithOptions(a1, a2, 2);
    v5 = BOMBomEnumeratorNext(v4);
    if (v5)
    {
      v6 = v5;
      v7 = 1;
      while (1)
      {
        v8 = BOMFSObjectBlockID(v6);
        if (!v8)
        {
          v8 = _BOMBlockIDForFSObject(a1, v6);
          if (!v8)
          {
            break;
          }
        }

        v9 = v8;
        if (BOMFSObjectGetHardlinkCount(a1, v6))
        {
          v10 = BOMFSObjectPathName(v6);
          v11 = strlen(v10);
          BOMBomHLIndexRemove(*(a1 + 24), v9, v10, v11 + 1);
        }

        v12 = BOMFSObjectParentPathID(v6);
        v13 = BOMFSObjectShortName(v6);
        v14 = BOMNewPathKey(v12, v13, &v17);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        if (BOMTreeRemoveValue(*(a1 + 16), v14, v17))
        {
          free(v15);
          break;
        }

        if (!BOMBomHLIndexCount(*(a1 + 24), v9))
        {
          BOMStorageFreeBlock(*(a1 + 8), v9);
        }

        _removeArchInfoForFSObject(a1, v6);
        *(a1 + 64) = 1;
        BOMBomVIndexInvalidateDiskSpace(*(a1 + 32));
        BOMFSObjectFree(v6);
        free(v15);
        v6 = BOMBomEnumeratorNext(v4);
        v7 = 0;
        v2 = 0;
        if (!v6)
        {
          goto LABEL_18;
        }
      }

      v2 = v7;
    }

    else
    {
      v2 = 1;
    }

LABEL_18:
    BOMBomEnumeratorFree(v4);
  }

  return v2;
}

unsigned int *_BOMBlockIDForFSObject(uint64_t a1, uint64_t a2)
{
  v3 = BOMFSObjectPathName(a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = strlen(v3);
  v6 = BOM_malloc(v5 + 1);
  __stringp = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v15 = 0;
  memmove(v6, v4, v5 + 1);
  v8 = strsep(&__stringp, "/");
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = BOMNewPathKey(v10, v9, &v15);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      Value = BOMTreeGetValue(*(a1 + 16), v11, v15);
      free(v12);
      if (Value)
      {
        v10 = BOMPathIDFromPathKey(Value);
        Value = BOMBlockIDFromPathValue(Value);
        v9 = strsep(&__stringp, "/");
        if (v9)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

  Value = 0;
LABEL_11:
  free(v7);
  return Value;
}

uint64_t BOMBomMergeIntoBomWithPatternList(uint64_t *a1, uint64_t a2, const __CFArray *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  __s[0] = 0;
  v3 = 1;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      v3 = 1;
      fwrite("boms are identical.\n", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }

    else
    {
      v7 = strlen(__s);
      _copyFilesFromBomToBom(a1, a2, a3, __s, &__s[v7], 0, 0, 0, 1);
      _copyVariantsFromBomToBom(a1, a2, v8, v9, v10, v11, v12, v13);
      BOMBomVIndexInvalidateDiskSpace(*(a2 + 32));
      v3 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t BOMBomMaskWithBom(unint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a1 && a2)
  {
    v6[0] = 0;
    v5[0] = 0;
    _maskWithBom(a1, v6, v6, 0, a2, v5, v5, 0);
    BOMBomVIndexInvalidateDiskSpace(*(a1 + 32));
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _maskWithBom(unint64_t a1, char *a2, char *a3, unsigned int a4, uint64_t a5, const char *a6, char *a7, unsigned int a8)
{
  v52 = 0;
  v16 = BOMNewPathKey(a4, "", &v52);
  if (v16)
  {
    v17 = v16;
    v18 = BOMTreeIteratorNew(*(a1 + 16), v16, v52, 0);
    free(v17);
    if (v18)
    {
      v19 = BOMNewPathKey(a8, "", &v52);
      if (!v19 || (v20 = v19, __s1 = a2, v48 = a5, v21 = BOMTreeIteratorNew(*(a5 + 16), v19, v52, 0), free(v20), !v21))
      {
        v38 = 0;
        v21 = v18;
LABEL_38:
        BOMTreeIteratorFree(v21);
        return v38;
      }

      if (__s1 != a3)
      {
        *a3++ = 47;
      }

      if (a6 != a7)
      {
        *a7++ = 47;
      }

      v22 = 0;
      if (BOMTreeIteratorIsAtEnd(v18))
      {
LABEL_37:
        v38 = v22 == 0;
        BOMTreeIteratorFree(v18);
        goto LABEL_38;
      }

      v44 = 0;
      v23 = a7;
      v24 = 0;
      __dst = v23;
      v42 = a6 - v23;
      while (2)
      {
        if (!BOMTreeIteratorIsAtEnd(v21))
        {
          v49 = v22;
          v25 = BOMTreeIteratorKey(v18);
          if (BOMPathIDFromPathKey(v25) == a4)
          {
            v26 = a6;
            v27 = BOMShortNameFromPathKey(v25);
            v46 = strlen(v27);
            v28 = BOMTreeIteratorValue(v18);
            v47 = BOMPathIDFromPathKey(v28);
            v29 = BOMBlockIDFromPathValue(v28);
            if (BOMStorageCopyFromBlockRange(*(a1 + 8), v29, 0, 1uLL, &v51))
            {
              v40 = BOMExceptionHandlerMessage("_maskWithBom failed while getting data for '%s' (parentPathID=%u pathID=%u bid=%u)", v27, a4, v47, v29);
              v41 = __error();
              _BOMFatalException(v40, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBom.c", 3363, *v41);
            }

            v30 = BOMFSObjectTypeFromRawData(&v51);
            while (1)
            {
              if (BOMTreeIteratorIsAtEnd(v21))
              {
                v45 = 0;
                goto LABEL_20;
              }

              v31 = BOMTreeIteratorKey(v21);
              if (BOMPathIDFromPathKey(v31) != a8)
              {
                goto LABEL_34;
              }

              v24 = BOMShortNameFromPathKey(v31);
              if ((strcmp(v24, v27) & 0x80000000) == 0)
              {
                break;
              }

              BOMTreeIteratorNext(v21);
            }

            v37 = BOMTreeIteratorValue(v21);
            v45 = BOMPathIDFromPathKey(v37);
LABEL_20:
            if (BOMTreeIteratorIsAtEnd(v21))
            {
LABEL_34:
              v22 = v49 + 1;
              break;
            }

            if (!v24 || strcmp(v24, v27))
            {
              v22 = v49 + 1;
              a6 = v26;
              goto LABEL_24;
            }

            strlcpy(a3, v27, __s1 - a3 + 1025);
            strlcpy(__dst, v24, v42 + 1025);
            if (v30 == 2)
            {
              v32 = __s1;
              a6 = v26;
              v33 = _maskWithBom(a1, __s1, &a3[v46], v47, v48, v26, &__dst[v46], v45);
              a3[v46] = 0;
              if (v33)
              {
LABEL_28:
                v34 = BOMTreeIteratorKey(v18);
                v35 = BOMTreeIteratorValue(v18);
                v36 = _BOMGetFSObject(a1, v34, v35, v32);
                BOMBomRemoveFSObject(a1, v36);
                BOMFSObjectFree(v36);
                v44 = 1;
                v22 = v49;
                goto LABEL_24;
              }
            }

            else
            {
              v32 = __s1;
              a6 = v26;
              if (!strcmp(__s1, v26))
              {
                goto LABEL_28;
              }
            }

            v22 = v49 + 1;
LABEL_24:
            BOMTreeIteratorNext(v18);
            if (!BOMTreeIteratorIsAtEnd(v18))
            {
              continue;
            }

            break;
          }

          v22 = v49;
        }

        break;
      }

      if (v44)
      {
        *(a1 + 64) = 1;
      }

      goto LABEL_37;
    }
  }

  return 0;
}

CFIndex BOMBomMaskWithPatternList(unint64_t a1, CFArrayRef theArray)
{
  v7 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a1)
  {
    if (theArray)
    {
      result = CFArrayGetCount(theArray);
      if (result)
      {
        v6[0] = 0;
        _maskWithPatternList(a1, theArray, v6, v6, 0);
        BOMBomVIndexInvalidateDiskSpace(*(a1 + 32));
        result = 0;
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

char *_maskWithPatternList(unint64_t a1, const __CFArray *a2, char *a3, char *a4, unsigned int a5)
{
  v36 = 0;
  result = BOMNewPathKey(a5, "", &v36);
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = BOMTreeIteratorNew(*(a1 + 16), result, v36, 0);
  free(v10);
  if (!v11)
  {
    return 0;
  }

  if (a3 != a4)
  {
    *a4++ = 47;
  }

  if (BOMTreeIteratorIsAtEnd(v11))
  {
    BOMTreeIteratorFree(v11);
    return 0;
  }

  v12 = 0;
  v31 = 0;
  v32 = a3 - a4;
  v33 = a4;
  do
  {
    v13 = BOMTreeIteratorKey(v11);
    if (BOMPathIDFromPathKey(v13) != a5)
    {
      break;
    }

    v14 = BOMShortNameFromPathKey(v13);
    v15 = BOMTreeIteratorValue(v11);
    v16 = BOMPathIDFromPathKey(v15);
    v17 = BOMBlockIDFromPathValue(v15);
    v18 = a1;
    if (BOMStorageCopyFromBlockRange(*(a1 + 8), v17, 0, 1uLL, &__dst))
    {
      v29 = BOMExceptionHandlerMessage("_maskWithPatternList failed while getting data for '%s' (parentPathID=%u pathID=%u bid=%u)", v14, a5, v16, v17);
      v30 = __error();
      _BOMFatalException(v29, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBom.c", 3252, *v30);
    }

    v19 = BOMFSObjectTypeFromRawData(&__dst);
    strlcpy(a4, v14, v32 + 1025);
    v20 = strlen(v14);
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
LABEL_17:
      if (v19 != 2 || !_maskWithPatternList(v18, a2, a3, &v33[v20], v16))
      {
        v28 = 1;
        a4 = v33;
        a1 = v18;
        goto LABEL_21;
      }
    }

    else
    {
      v22 = Count;
      v23 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v23);
        if (ValueAtIndex)
        {
          if (BOMPatternMatch(ValueAtIndex, a3))
          {
            break;
          }
        }

        if (v22 == ++v23)
        {
          goto LABEL_17;
        }
      }
    }

    v25 = BOMTreeIteratorKey(v11);
    v26 = BOMTreeIteratorValue(v11);
    a1 = v18;
    v27 = _BOMGetFSObject(v18, v25, v26, a3);
    BOMBomRemoveFSObject(v18, v27);
    BOMFSObjectFree(v27);
    v28 = 0;
    v31 = 1;
    a4 = v33;
LABEL_21:
    v12 += v28;
    BOMTreeIteratorNext(v11);
  }

  while (!BOMTreeIteratorIsAtEnd(v11));
  BOMTreeIteratorFree(v11);
  if (v31)
  {
    result = (v12 == 0);
    *(a1 + 64) = 1;
    return result;
  }

  return 0;
}

CFDictionaryRef *BOMBomApproximateBytesRepresentedWithBlockSize64(CFDictionaryRef *result, unsigned int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  if (result)
  {
    v3 = result;
    result = BOMHardLinkTableNew();
    if (result)
    {
      v4 = result;
      v7[0] = 0;
      _sizeBom(v3, result, v7, v7, 0, a2, &v6);
      BOMHardLinkTableFree(v4);
      result = v6;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void _sizeBom(uint64_t a1, CFDictionaryRef *a2, char *a3, char *a4, unsigned int a5, unsigned int a6, void *a7)
{
  v31 = 0;
  *bytes = 0;
  v14 = BOMNewPathKey(a5, "", &v31);
  if (v14)
  {
    v15 = v14;
    v16 = BOMTreeIteratorNew(*(a1 + 16), v14, v31, 0);
    free(v15);
    if (v16)
    {
      v29 = a7;
      v28 = a6;
      v27 = a3;
      if (a3 != a4)
      {
        *a4++ = 47;
      }

      while (!BOMTreeIteratorIsAtEnd(v16))
      {
        v17 = BOMTreeIteratorKey(v16);
        if (BOMPathIDFromPathKey(v17) != a5)
        {
          break;
        }

        v18 = BOMShortNameFromPathKey(v17);
        v19 = strlen(v18);
        v20 = BOMTreeIteratorValue(v16);
        v21 = BOMPathIDFromPathKey(v20);
        *bytes = BOMBlockIDFromPathValue(v20);
        if (!BOMHardLinkTableGet(a2, 0, *bytes))
        {
          BOMHardLinkTableSet(a2, 0, *bytes, bytes, 4);
          FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(a1, *bytes);
          v23 = BOMFSObjectType(FSObjectWithBlockID);
          if (v23 != 4)
          {
            v24 = v23;
            strlcpy(a4, v18, v27 - a4 + 1025);
            if (v24 == 2)
            {
              _sizeBom(a1, a2, v27, &a4[v19], v21, v28, v29);
            }

            v25 = BOMFSObjectSize(FSObjectWithBlockID);
            if (v25 % v28)
            {
              v26 = v28 - v25 % v28;
            }

            else
            {
              v26 = 0;
            }

            *v29 += v25 + v26;
            BOMFSObjectFree(FSObjectWithBlockID);
          }
        }

        BOMTreeIteratorNext(v16);
      }

      BOMTreeIteratorFree(v16);
    }
  }
}

uint64_t BOMFSObjectGetHardlinkCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = BOMFSObjectBlockID(a2);
  if (!v4)
  {
    v4 = _BOMBlockIDForFSObject(a1, a2);
    if (!v4)
    {
      return 0;
    }
  }

  v5 = v4;
  v6 = *(a1 + 24);

  return BOMBomHLIndexCount(v6, v5);
}

uint64_t BOMFSObjectGetHardlinkPath(uint64_t a1, uint64_t a2, unsigned int a3, char *a4)
{
  result = 0;
  v13 = *MEMORY[0x277D85DE8];
  if (a1 && a4)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    result = BOMFSObjectBlockID(a2);
    if (result)
    {
      v9 = result;
      if (BOMBomHLIndexCount(v7, result) > a3)
      {
        v11 = 0;
        if (!BOMBomHLIndexGet(v7, v9, a3, __source, &v11))
        {
          strlcpy(a4, __source, 0x400uLL);
          result = 1;
          goto LABEL_8;
        }
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMBomLinkToPathFromPath(uint64_t a1, char *a2, uint64_t a3)
{
  FSObjectAtPath = BOMBomGetFSObjectAtPath(a1, a2);

  return BOMBomLinkToFSObjectFromPath(a1, FSObjectAtPath, a3);
}

uint64_t BOMBomLinkToFSObjectFromPath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = 1;
  if (!a2 || !a1 || !a3)
  {
    goto LABEL_21;
  }

  v5 = a2;
  v25 = 0;
  v26 = 0;
  v6 = BOMFSObjectBlockID(a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_6:
    if (BOMFSObjectType(v5) != 1 || _valueAtPath(a1))
    {
      FSObjectAtPath = 0;
      goto LABEL_9;
    }

    __strlcpy_chk();
    v13 = strrchr(__s, 47);
    v14 = v13;
    if (v13)
    {
      *v13 = 0;
      FSObjectAtPath = BOMBomGetFSObjectAtPath(a1, __s);
      *v14++ = 47;
      if (!FSObjectAtPath)
      {
LABEL_9:
        v3 = 1;
        if (v7)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }
    }

    else
    {
      FSObjectAtPath = BOMBomGetFSObjectAtPath(a1, __s);
      if (!FSObjectAtPath)
      {
        goto LABEL_9;
      }
    }

    v17 = BOMFSObjectPathID(FSObjectAtPath);
    v18 = (*a1)++;
    v19 = BOMNewPathKey(v17, v14, &v26);
    v20 = BOMNewPathValue(v18, v8, &v25);
    v21 = BOMTreeSetValue(*(a1 + 16), v19, v26, v20, v25);
    free(v19);
    free(v20);
    if (!v21)
    {
      v22 = strlen(__s);
      BOMBomHLIndexSet(*(a1 + 24), v8, __s, v22 + 1);
      v23 = BOMFSObjectPathName(v5);
      v24 = strlen(v23);
      BOMBomHLIndexSet(*(a1 + 24), v8, v23, v24 + 1);
      v3 = 0;
      if (v7)
      {
LABEL_10:
        if (!FSObjectAtPath)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v10 = BOMFSObjectPathName(v5);
  v11 = BOMBomGetFSObjectAtPath(a1, v10);
  if (!v11)
  {
    goto LABEL_21;
  }

  v5 = v11;
  v12 = BOMFSObjectBlockID(v11);
  if (v12)
  {
    v8 = v12;
    goto LABEL_6;
  }

  FSObjectAtPath = 0;
LABEL_19:
  BOMFSObjectFree(v5);
  if (FSObjectAtPath)
  {
LABEL_20:
    BOMFSObjectFree(FSObjectAtPath);
  }

LABEL_21:
  v15 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t BOMBomDumpLinks(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      result = BOMBomHLIndexCount(*(result + 24), 0);
      if (result)
      {
        v2 = result;
        v3 = 0;
        v8 = 0;
        do
        {
          result = BOMBomHLIndexBlock(v1, v3);
          if (result)
          {
            v4 = result;
            v5 = BOMBomHLIndexCount(v1, result);
            result = printf("hardlink group #%d: (%d links)\n", v4, v5);
            if (v5)
            {
              for (i = 0; i != v5; ++i)
              {
                result = BOMBomHLIndexGet(v1, v4, i, v9, &v8);
                if (!result)
                {
                  result = printf("    %s\n", v9);
                }
              }
            }
          }

          ++v3;
        }

        while (v3 != v2);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMBomVariantAdd(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a2 && a3 && a4 && a5)
  {
    result = BOMBomVIndexSet(*(a1 + 32), a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      *(a1 + 64) = 1;
    }
  }

  return result;
}

uint64_t BOMBomVariantGetList(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, CFMutableArrayRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && a3 && a4)
  {
    return BOMBomVIndexGetList(*(a1 + 32), a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 1;
  }
}

uint64_t BOMBomVariantCount(uint64_t result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    return BOMBomVIndexCount(*(result + 32), a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t BOMBomVariantGet(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return BOMBomVIndexGet(*(a1 + 32), a2, a3, a4, a5, a6, 0x64uLL, a8);
  }

  else
  {
    return 1;
  }
}

uint64_t BOMBomVariantRemove(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return BOMBomVIndexRemove(*(a1 + 32), a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 1;
  }
}

uint64_t BOMBomApproximateBytesRepresentedByVariantWithBlockSize(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int a6)
{
  v81 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (BOMBomVIndexDiskSpaceInfoIsValid(a1[4]))
    {
      goto LABEL_45;
    }

    value = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    if (!Mutable)
    {
      goto LABEL_45;
    }

    theDict = Mutable;
    v71 = a2;
    v17 = BOMBomVIndexCount(a1[4], 0, 0, 0, v16, v12, v13, v14);
    v19 = v17;
    v72 = a3;
    if (v17 < 101)
    {
      if (v17 < 1)
      {
LABEL_19:
        v69 = a4;
        v70 = a5;
        Count = CFDictionaryGetCount(theDict);
        v46 = BOM_malloczero(8 * Count + 8);
        CFDictionaryGetKeysAndValues(theDict, v46, 0);
        v47 = BOM_malloczero(8 * Count + 8);
        v74 = BOMBomEnumeratorNew(a1, 0);
        v48 = BOMBomEnumeratorNext(v74);
        if (v48)
        {
          v49 = v48;
          v50 = a6;
          do
          {
            v51 = BOMFSObjectPathName(v49);
            v52 = BOMFSObjectSize(v49);
            if (v52 % v50)
            {
              v53 = v50 - v52 % v50;
            }

            else
            {
              v53 = 0;
            }

            v54 = v53 + v52;
            if (Count < 1)
            {
              goto LABEL_33;
            }

            v55 = 0;
            v56 = 1;
            do
            {
              while (BOMPatternListMatch(v46[v55], v51))
              {
                v56 = 0;
                v47[v55] += v54;
                if (Count - 1 == v55++)
                {
                  goto LABEL_34;
                }
              }

              ++v55;
            }

            while (Count != v55);
            if (v56)
            {
LABEL_33:
              v47[Count] += v54;
            }

LABEL_34:
            BOMFSObjectFree(v49);
            v49 = BOMBomEnumeratorNext(v74);
          }

          while (v49);
        }

        BOMBomEnumeratorFree(v74);
        if (Count < 1)
        {
          BOMBomVIndexSetApproxDiskSpace(a1[4], 0, 0, 0, v47[Count], v58, v59, v60);
          free(v47);
          a4 = v69;
          a5 = v70;
          v62 = theDict;
        }

        else
        {
          v61 = 0;
          a4 = v69;
          a5 = v70;
          v62 = theDict;
          do
          {
            value = CFDictionaryGetValue(theDict, v46[v61]);
            BOMBomVIndexSetApproxDiskSpaceWithKey(a1[4], value, v47[v61++]);
          }

          while (Count != v61);
          BOMBomVIndexSetApproxDiskSpace(a1[4], 0, 0, 0, v47[Count], v63, v64, v65);
          free(v47);
          do
          {
            value = CFDictionaryGetValue(theDict, *v46);
            free(value);
            v66 = *v46++;
            CFRelease(v66);
            --Count;
          }

          while (Count);
        }

        v67 = v62;
LABEL_44:
        CFRelease(v67);
        a2 = v71;
        a3 = v72;
LABEL_45:
        result = BOMBomVIndexGetApproxDiskSpace(a1[4], a2, a3, a4, a5, v12, v13, v14);
        goto LABEL_46;
      }
    }

    else
    {
      v20 = BOMExceptionHandlerMessage("_computeVariantSizes(bom=%p, blockSize=%u): catcnt(%d) > catmax(%d)!", a1, a6, v17, 100);
      v21 = __error();
      _BOMExceptionHandlerCall(v20, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBom.c", 3818, *v21);
    }

    v23 = 0;
    v73 = v19;
    while (1)
    {
      BOMBomVIndexGet(a1[4], 0, 0, 0, v23, v80, 0x64uLL, v18);
      v28 = BOMBomVIndexCount(a1[4], v80, 0, 0, v24, v25, v26, v27);
      if (v28 >= 1)
      {
        break;
      }

LABEL_18:
      if (++v23 == v73)
      {
        goto LABEL_19;
      }
    }

    v29 = v28;
    v30 = 0;
    while (1)
    {
      BOMBomVIndexGet(a1[4], v80, 0, 0, v30, v79, 0x64uLL, v18);
      v35 = BOMBomVIndexCount(a1[4], v80, v79, 0, v31, v32, v33, v34);
      if (v35 >= 1)
      {
        break;
      }

LABEL_17:
      if (++v30 == v29)
      {
        goto LABEL_18;
      }
    }

    v36 = v35;
    v37 = 0;
    while (1)
    {
      cf = 0;
      BOMBomVIndexGet(a1[4], v80, v79, 0, v37, v78, 0x64uLL, v18);
      if (BOMBomVIndexDiskSpaceKey(a1[4], v80, v79, v78, &value, v38, v39, v40))
      {
        break;
      }

      if (BOMBomVIndexGetList(a1[4], v80, v79, v78, &cf, v41, v42, v43))
      {
        break;
      }

      v44 = BOMPatternListFromStringList(cf);
      CFRelease(cf);
      if (!v44)
      {
        break;
      }

      CFDictionarySetValue(theDict, v44, value);
      if (v36 == ++v37)
      {
        goto LABEL_17;
      }
    }

    v67 = theDict;
    goto LABEL_44;
  }

  result = 1;
LABEL_46:
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMBomApproximateBytesRepresentedByVariantWithBlockSize64(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6)
{
  v8 = 0;
  result = BOMBomApproximateBytesRepresentedByVariantWithBlockSize(a1, a2, a3, a4, &v8, a6);
  *a5 = v8;
  return result;
}

uint64_t BOMBomApproximateBytesRepresentedByVariant64(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = 0;
  result = BOMBomApproximateBytesRepresentedByVariantWithBlockSize(a1, a2, a3, a4, &v7, 0x200u);
  if (!result)
  {
    *a5 = v7;
  }

  return result;
}

uint64_t BOMBomApproximateBytesRepresentedByVariantIsValid(uint64_t result)
{
  if (result)
  {
    return BOMBomVIndexDiskSpaceInfoIsValid(*(result + 32));
  }

  return result;
}

uint64_t BOMBomEInsertFSObject(unint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v4 = 1;
  if (!a1 || !a2)
  {
    return v4;
  }

  v24 = 0;
  v25 = 0;
  v9 = BOMFSObjectPathName(a2);
  v10 = BOMFSObjectShortName(a2);
  v11 = BOMNewPathKey(a3, v10, &v25);
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  Value = BOMTreeGetValue(*(a1 + 16), v11, v25);
  v14 = Value;
  if (Value)
  {
    v23 = a4;
    v15 = v9;
    v16 = BOMPathIDFromPathKey(Value);
    v17 = BOMBlockIDFromPathValue(v14);
    FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(a1, v17);
    if (FSObjectWithBlockID)
    {
      v19 = FSObjectWithBlockID;
      _removeArchInfoForFSObject(a1, FSObjectWithBlockID);
      BOMFSObjectFree(v19);
    }

    v20 = v16;
    v9 = v15;
    a4 = v23;
  }

  else
  {
    v20 = (*a1)++;
    v17 = BOMStorageNewBlock(*(a1 + 8));
  }

  if (_BOMBomSetFSObjectWithBlockID(a1, a2, v17))
  {
    fprintf(*MEMORY[0x277D85DF8], "can't archive %s\n", v9);
    v21 = 0;
    v4 = 1;
LABEL_17:
    free(v12);
    goto LABEL_18;
  }

  _addArchInfoForFSObject(a1, a2);
  if (v14)
  {
    v21 = 0;
    goto LABEL_14;
  }

  free(v12);
  v12 = BOMNewPathKey(a3, v10, &v25);
  v21 = BOMNewPathValue(v20, v17, &v24);
  if (!BOMTreeSetValue(*(a1 + 16), v12, v25, v21, v24))
  {
LABEL_14:
    *(a1 + 64) = 1;
    v4 = 0;
    if (a4)
    {
      *a4 = v20;
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  fprintf(*MEMORY[0x277D85DF8], "can't set path info for %s.\n", v9);
  v4 = 1;
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v21)
  {
    free(v21);
  }

  return v4;
}

uint64_t BOMBomELinkFromPathToPath(uint64_t a1, const char *a2, char *a3, unsigned int a4)
{
  v4 = 1;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        v9 = _valueAtPath(a1);
        if (v9)
        {
          v10 = BOMBlockIDFromPathValue(v9);
          if (v10)
          {
            v11 = v10;
            v24 = 0;
            v25 = 0;
            v12 = strrchr(a3, 47);
            if (v12)
            {
              v13 = v12 + 1;
            }

            else
            {
              v13 = a3;
            }

            v14 = BOMNewPathKey(a4, v13, &v25);
            if (v14)
            {
              v15 = v14;
              Value = BOMTreeGetValue(*(a1 + 16), v14, v25);
              v17 = Value;
              if (Value)
              {
                v18 = 8;
                v24 = 8;
                v19 = Value;
              }

              else
              {
                v20 = (*a1)++;
                v19 = BOMNewPathValue(v20, v11, &v24);
                v18 = v24;
              }

              if (BOMTreeSetValue(*(a1 + 16), v15, v25, v19, v18))
              {
                v4 = 1;
              }

              else
              {
                v21 = strlen(a3);
                BOMBomHLIndexSet(*(a1 + 24), v11, a3, v21 + 1);
                v22 = strlen(a2);
                BOMBomHLIndexSet(*(a1 + 24), v11, a2, v22 + 1);
                v4 = 0;
              }

              free(v15);
              if (!v17)
              {
                free(v19);
              }
            }

            else
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t _BOMBomPrintDiagnostics(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "Tree: %s\n", "Paths");
    _BOMTreePrintDiagnostics(v1[2]);
    _BOMBomHLIndexPrintDiagnostics(v1[3]);
    _BOMBomVIndexPrintDiagnostics(v1[4], v3, v4, v5, v6, v7, v8, v9);
    fwrite("Storage:\n", 9uLL, 1uLL, *v2);
    v10 = v1[1];

    return _BOMStoragePrintDiagnostics(v10);
  }

  return result;
}

uint64_t BOMBomVerifyBom(uint64_t a1, unsigned __int8 a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (!BOMTreeVerifyLeaves(v4))
      {
        v9 = *__error();
        v10 = "BOMBomVerifyBom: leaves do not verify.\n";
        v11 = a2;
        v12 = 4300;
        goto LABEL_12;
      }

      v4 = *(a1 + 16);
    }

    v5 = BOMTreeCount(v4);
    v6 = BOMTreeIteratorNew(*(a1 + 16), 0, 0, 0);
    v7 = 0;
    while (!BOMTreeIteratorIsAtEnd(v6))
    {
      ++v7;
      BOMTreeIteratorNext(v6);
    }

    BOMTreeIteratorFree(v6);
    if (v7 == v5)
    {
      return 1;
    }

    v9 = *__error();
    v10 = "BOMBomVerifyBom: count is wrong.\n";
    v11 = a2;
    v12 = 4316;
  }

  else
  {
    v9 = *__error();
    v10 = "BOMBomVerifyBom: bom is NULL.\n";
    v11 = a2;
    v12 = 4293;
  }

LABEL_12:
  _BOMExceptionHandlerCall(v10, v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBom.c", v12, v9);
  return 0;
}

void _addPathsToList(uint64_t a1, char *a2, __CFArray *a3, const char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v14 = BOMBomVIndexCount(*(a1 + 32), a2, 0, 0, a5, a6, a7, a8);
  if (v14)
  {
    v16 = v14;
    v17 = 0;
    v18 = kBOMBomVariantExtra;
    cf = 0;
    if (!v9)
    {
      v18 = &kBOMBomVariantException;
    }

    v19 = *v18;
    do
    {
      if (!BOMBomVIndexGet(*(a1 + 32), a2, 0, 0, v17, __s2, 0x64uLL, v15))
      {
        if (a4)
        {
          v22 = a4;
          while (1)
          {
            v23 = *v22;
            if (!*v22)
            {
              break;
            }

            ++v22;
            if (!strcmp(v23, __s2))
            {
              if (v8)
              {
                goto LABEL_6;
              }

              goto LABEL_15;
            }
          }
        }

        if (v8)
        {
LABEL_15:
          cf = 0;
          if (!BOMBomVIndexGetList(*(a1 + 32), a2, __s2, v19, &cf, v20, v21, v15))
          {
            v24 = cf;
            v30.location = BOMCFArrayMaxRange(cf);
            v30.length = v25;
            CFArrayAppendArray(a3, v24, v30);
            CFRelease(cf);
          }
        }
      }

LABEL_6:
      ++v17;
    }

    while (v17 != v16);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void release_discovery_state(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(*(a1 + 24));
      *(a1 + 24) = 0;
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      free(v3);
      *(a1 + 56) = 0;
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      BOMHardLinkTableFree(v4);
      *(a1 + 48) = 0;
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      BOMBomFree(v5);
      *(a1 + 64) = 0;
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      free(v6);
      *(a1 + 40) = 0;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      while (1)
      {
        v8 = BOMStackPop(v7);
        if (!v8)
        {
          break;
        }

        free(v8);
        v7 = *(a1 + 32);
      }

      BOMStackFree(*(a1 + 32));
      *(a1 + 32) = 0;
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      do
      {
        v10 = *(v9 + 72);
        v11 = *(v9 + 8);
        if (v11)
        {
          BOMFSObjectFree(v11);
          *(v9 + 8) = 0;
        }

        BOMCopierSourceEntryFree(*v9);
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (*a1)
    {
      BOMCopierSourceFree(*a1);
      *a1 = 0;
    }
  }
}

uint64_t _BOMGetFSObject(uint64_t a1, unsigned int *a2, unsigned int *a3, char *a4)
{
  v8 = BOMBlockIDFromPathValue(a3);
  v9 = BOMPathIDFromPathKey(a3);
  v10 = BOMPathIDFromPathKey(a2);
  v11 = BOMShortNameFromPathKey(a2);
  FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(a1, v8);
  v13 = FSObjectWithBlockID;
  if (FSObjectWithBlockID)
  {
    BOMFSObjectSetPathName(FSObjectWithBlockID, a4, 1);
    BOMFSObjectSetShortName(v13, v11, 1);
    BOMFSObjectSetPathID(v13, v9);
    BOMFSObjectSetParentPathID(v13, v10);
    BOMFSObjectSetBlockID(v13, v8);
  }

  return v13;
}

void BOMHardLinkTableFree(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void BOMHardLinkTableSet(CFDictionaryRef *a1, int a2, uint64_t a3, UInt8 *bytes, CFIndex length)
{
  if (a1)
  {
    if (bytes)
    {
      v8 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
      if (v8)
      {
        v9 = v8;
        BOMHardLinkTableSetCFData(a1, a2, a3, v8);

        CFRelease(v9);
      }

      else
      {
        v10 = *MEMORY[0x277D85DF8];
        v11 = __error();
        v12 = strerror(*v11);
        fprintf(v10, "CFDataCreate: %s\n", v12);
      }
    }

    else
    {

      BOMHardLinkTableSetCFData(a1, a2, a3, 0);
    }
  }
}

void BOMHardLinkTableSetCFData(CFDictionaryRef *a1, int a2, uint64_t a3, const void *a4)
{
  valuePtr = a2;
  v18 = a3;
  v6 = *MEMORY[0x277CBECE8];
  if (!*a1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_15;
    }

    *a1 = Mutable;
  }

  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
  if (!v8)
  {
LABEL_11:
    v14 = *MEMORY[0x277D85DF8];
    v15 = __error();
    strerror(*v15);
    fprintf(v14, "CFNumberCreate: %s\n");
    return;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(*a1, v8);
  if (!Value)
  {
    v11 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v11)
    {
      Value = v11;
      CFDictionarySetValue(*a1, v9, v11);
      CFRelease(Value);
      goto LABEL_8;
    }

    CFRelease(v9);
LABEL_15:
    v16 = *MEMORY[0x277D85DF8];
    v17 = __error();
    strerror(*v17);
    fprintf(v16, "CFDictionaryCreateMutable: %s\n");
    return;
  }

LABEL_8:
  CFRelease(v9);
  v12 = CFNumberCreate(v6, kCFNumberSInt64Type, &v18);
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  if (a4)
  {
    CFDictionarySetValue(Value, v12, a4);
  }

  else
  {
    CFDictionaryRemoveValue(Value, v12);
  }

  CFRelease(v13);
}

const UInt8 *BOMHardLinkTableGet(CFDictionaryRef *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  CFData = BOMHardLinkTableGetCFData(a1, a2, a3);
  if (!CFData)
  {
    return 0;
  }

  return CFDataGetBytePtr(CFData);
}

const void *BOMHardLinkTableGetCFData(CFDictionaryRef *a1, int a2, uint64_t a3)
{
  valuePtr = a2;
  v12 = a3;
  if (!*a1)
  {
    return 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(*a1, v5);
  CFRelease(v6);
  if (!Value)
  {
    return 0;
  }

  v8 = CFNumberCreate(v4, kCFNumberSInt64Type, &v12);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFDictionaryGetValue(Value, v8);
  CFRelease(v9);
  return v10;
}

void BOMHardLinkTableSetPathAndData(CFDictionaryRef *a1, int a2, uint64_t a3, char *__s, const void *a5, size_t a6)
{
  if (a1)
  {
    if (__s && a5)
    {
      v12 = strlen(__s) + 1;
      v13 = BOM_malloc(v12 + a6);
      if (v13)
      {
        v14 = v13;
        strlcpy(v13, __s, v12 + a6);
        memmove(&v14[v12], a5, a6);
        v15 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v14, v12 + a6, *MEMORY[0x277CBECF0]);
        if (v15)
        {
          v16 = v15;
          BOMHardLinkTableSetCFData(a1, a2, a3, v15);

          CFRelease(v16);
        }

        else
        {
          free(v14);
          v17 = *MEMORY[0x277D85DF8];
          v18 = __error();
          v19 = strerror(*v18);
          fprintf(v17, "CFDataCreate: %s\n", v19);
        }
      }
    }

    else
    {

      BOMHardLinkTableSetCFData(a1, a2, a3, 0);
    }
  }
}

uint64_t BOMHardLinkTableGetPathAndData(CFDictionaryRef *a1, int a2, uint64_t a3, char *a4, void *a5)
{
  result = 1;
  if (a1 && a4 && a5)
  {
    CFData = BOMHardLinkTableGetCFData(a1, a2, a3);
    if (CFData)
    {
      v10 = CFData;
      BytePtr = CFDataGetBytePtr(CFData);
      Length = CFDataGetLength(v10);
      v13 = strncpy(a4, BytePtr, Length);
      v14 = strlen(v13);
      result = 0;
      *a5 = &BytePtr[v14 + 1];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *BOMFSEnumeratorNewWithSys(uint64_t a1, __int16 a2, char a3, void (**a4)(void, uint64_t, uint64_t))
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = BOM_malloczero(0x420uLL);
  if (v8)
  {
    if (!a4)
    {
      a4 = BomSys_default();
    }

    v8[2] = a4;
    if ((a4[39])(a4[1], a1))
    {
      v9 = __error();
      v10 = strerror(*v9);
      v11 = BOMExceptionHandlerMessage("chdir: %s\n", v10);
      v12 = __error();
      _BOMExceptionHandlerCall(v11, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMFSEnumerator.c", 56, *v12);
    }

    else
    {
      *(v8 + 4) = a2;
      *(v8 + 10) = a3;
      a4[38](a4[1], (v8 + 3), 1025);
      v16[0] = ".";
      v16[1] = 0;
      v15 = fts_open(v16, 92, _sort);
      *v8 = v15;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    free(v8);
    goto LABEL_8;
  }

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

FTSENT *BOMFSEnumeratorNext(FTSENT *result)
{
  if (result)
  {
    v1 = result;
    memset(v12, 0, sizeof(v12));
    do
    {
      result = fts_read(v1->fts_cycle);
      if (!result)
      {
        return result;
      }

      fts_info = result->fts_info;
    }

    while (fts_info == 6);
    fts_errno = result->fts_errno;
    if (fts_errno)
    {
      *__error() = fts_errno;
      v4 = __error();
      v5 = strerror(*v4);
      v6 = BOMExceptionHandlerMessage("fts_read: %s\n", v5);
      v7 = __error();
      _BOMExceptionHandlerCall(v6, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMFSEnumerator.c", 94, *v7);
      return 0;
    }

    if (BYTE2(v1->fts_parent))
    {
      if (result->fts_info > 7u)
      {
        if (fts_info == 8)
        {
          v8 = 0x8000;
          goto LABEL_21;
        }

        if (fts_info == 12)
        {
          v8 = -24576;
          goto LABEL_21;
        }
      }

      else
      {
        if (fts_info == 1)
        {
          v8 = 0x4000;
          goto LABEL_21;
        }

        if (fts_info == 3)
        {
          v8 = 24576;
LABEL_21:
          WORD2(v12[0]) = v8;
          return BOMFSObjectNewFromPathDeferredWithSys(v12, result->fts_path, v1->fts_parent, &v1->fts_number, 0, v1->fts_link);
        }
      }

      v8 = 0;
      goto LABEL_21;
    }

    fts_path = result->fts_path;
    fts_parent = v1->fts_parent;
    fts_link = v1->fts_link;

    return BOMFSObjectNewFromPathWithSys(fts_path, fts_parent, fts_link);
  }

  return result;
}

void BOMFSEnumeratorFree(FTS **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      fts_close(v2);
    }

    free(a1);
  }
}

_DWORD *BOMBomVIndexNew(uint64_t a1)
{
  v2 = BOM_malloczero(0x30uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 1;
    v4 = BOMStorageNewNamedBlock(a1, "VIndex");
    if (!v4)
    {
      goto LABEL_7;
    }

    *(v3 + 2) = a1;
    v3[6] = v4;
    v5 = BOMStorageNewBlock(a1);
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = v5;
    v7 = BOMTreeNewWithOptions(a1, v5, "VIndex", 0x80u, 0);
    if (!v7)
    {
      goto LABEL_7;
    }

    *(v3 + 1) = v7;
    v8 = BOMStreamWithBlockID(*(v3 + 2), v3[6], 0xDuLL, 1);
    if (v8 && (v9 = v8, BOMStreamWriteUInt32(v8, *v3), BOMStreamWriteUInt32(v9, v6), BOMStreamWriteUInt32(v9, v3[7]), BOMStreamWriteUInt8(v9, *(v3 + 33)), !BOMStreamFlush(v9)))
    {
      BOMStreamFree(v9);
    }

    else
    {
LABEL_7:
      BOMBomVIndexFree(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t BOMBomVIndexFree(_BYTE *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1[32] && BOMBomVIndexCommit(a1))
  {
    return 1;
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    BOMTreeFree(v3);
  }

  v4 = *(a1 + 5);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
  return 0;
}

void *BOMBomVIndexOpen(uint64_t a1, char a2)
{
  v4 = BOM_malloczero(0x30uLL);
  if (v4)
  {
    NamedBlock = BOMStorageGetNamedBlock(a1, "VIndex");
    if (!NamedBlock)
    {
      goto LABEL_5;
    }

    v4[2] = a1;
    *(v4 + 6) = NamedBlock;
    v6 = BOMStreamWithBlockID(a1, NamedBlock, 0xDuLL, 0);
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = v6;
    *v4 = BOMStreamReadUInt32(v6);
    UInt32 = BOMStreamReadUInt32(v7);
    *(v4 + 7) = BOMStreamReadUInt32(v7);
    *(v4 + 33) = BOMStreamReadUInt8(v7);
    BOMStreamFree(v7);
    v9 = BOMTreeOpen(a1, UInt32, a2);
    v4[1] = v9;
    if (!v9)
    {
LABEL_5:
      BOMBomVIndexFree(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t BOMBomVIndexCommit(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 32))
  {
    return 0;
  }

  result = BOMStorageIsOpenForWriting(*(a1 + 16));
  if (result)
  {
    BOMTreeCommit(*(a1 + 8));
    v3 = BOMStreamWithBlockID(*(a1 + 16), *(a1 + 24), 0xDuLL, 2);
    if (v3 && (v4 = v3, BOMStreamReadUInt32(v3), BOMStreamReadUInt32(v4), BOMStreamWriteUInt32(v4, *(a1 + 28)), BOMStreamWriteUInt8(v4, *(a1 + 33)), !BOMStreamFlush(v4)))
    {
      BOMStreamFree(v4);
      result = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BOMBomVIndexCopyFromVIndex(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (BOMTreeCount(*(a1 + 8)) || BOMCKTreeBuildKey(__s, v4, v5, v6, v7, v8, v9, v10, "path"))
    {
      v11 = 0;
    }

    else
    {
      v18 = strlen(__s);
      v19 = *(a1 + 16);
      v20 = *(a2 + 16);
      v11 = BOMTreeIteratorNew(*(a2 + 8), 0, 0, 0);
      if (v11)
      {
        BOMTreeSetDensePacking(*(a1 + 8), 1);
        while (!BOMTreeIteratorIsAtEnd(v11))
        {
          v21 = BOMTreeIteratorKey(v11);
          if (BOM_strrncmp(v21, __s, v18))
          {
            v22 = *(a1 + 8);
            v23 = BOMTreeIteratorKeySize(v11);
            v24 = BOMTreeIteratorValue(v11);
            v25 = BOMTreeIteratorValueSize(v11);
            if (BOMTreeSetValue(v22, v21, v23, v24, v25))
            {
              goto LABEL_6;
            }
          }

          else
          {
            v30 = 0;
            v26 = strlen(v21) + 1;
            Value = BOMTreeGetValue(*(a2 + 8), v21, v26);
            if (!Value)
            {
              v13 = 0;
              v12 = 0;
              goto LABEL_8;
            }

            v12 = BOMTreeOpen(v20, bswap32(*Value), 0);
            if (!v12)
            {
              goto LABEL_7;
            }

            v28 = BOMStorageNewBlock(v19);
            v30 = v28;
            if (!v28)
            {
              goto LABEL_7;
            }

            v29 = BOMTreeNewWithOptions(v19, v28, 0, 0x80u, 0);
            v13 = v29;
            if (!v29)
            {
              goto LABEL_8;
            }

            BOMTreeSetDensePacking(v29, 1);
            if (BOMTreeCopyToTree(v12, v13))
            {
              goto LABEL_8;
            }

            BOMTreeFree(v12);
            BOMTreeFree(v13);
            v30 = bswap32(v30);
            BOMTreeSetValue(*(a1 + 8), v21, v26, &v30, 4);
          }

          BOMTreeIteratorNext(v11);
        }

        v14 = 0;
        v12 = 0;
        v13 = 0;
        *(a1 + 33) = *(a2 + 33);
        *(a1 + 32) = 1;
        goto LABEL_11;
      }
    }

LABEL_6:
    v12 = 0;
LABEL_7:
    v13 = 0;
LABEL_8:
    v14 = 1;
  }

  else
  {
    v14 = 1;
    if (!a1)
    {
      goto LABEL_19;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

LABEL_11:
  v15 = *(a1 + 8);
  if (v15)
  {
    BOMTreeSetDensePacking(v15, 0);
  }

  if (v12)
  {
    BOMTreeFree(v12);
  }

  if (v13)
  {
    BOMTreeFree(v13);
  }

  if (v11)
  {
    BOMTreeIteratorFree(v11);
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t BOMBomVIndexSet(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            TreeFor = _v_findTreeFor(a1, 1, 1, a2, a3, a4, a7, a8);
            if (TreeFor)
            {
              v12 = TreeFor;
              v13 = strlen(a5);
              v8 = BOMTreeSetValue(v12, a5, v13 + 1, 0, 0);
              BOMTreeFree(v12);
              if (!v8)
              {
                *(a1 + 32) = 1;
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

uint64_t _v_findTreeFor(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v21 = *MEMORY[0x277D85DE8];
  if (a4 && a5 && a6)
  {
    v9 = a3;
    v10 = a2;
    v12 = *(a1 + 16);
    if (BOMCKTreeBuildKey(__s, a2, a3, a4, a5, a6, a7, a8, a4))
    {
      goto LABEL_5;
    }

    v13 = strlen(__s) + 1;
    Value = BOMTreeGetValue(*(a1 + 8), __s, v13);
    if (Value)
    {
      v8 = BOMTreeOpen(v12, bswap32(*Value), v10);
      goto LABEL_8;
    }

    if (v9 && (v17 = BOMStorageNewBlock(v12)) != 0)
    {
      v18 = v17;
      v8 = BOMTreeNewWithOptions(v12, v17, 0, 0x80u, 0);
      if (v8)
      {
        v19 = bswap32(v18);
        BOMTreeSetValue(*(a1 + 8), __s, v13, &v19, 4);
      }
    }

    else
    {
LABEL_5:
      v8 = 0;
    }
  }

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t BOMBomVIndexCount(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  TreeFor = _v_findTreeFor(a1, 0, 0, a2, a3, a4, a7, a8);
  if (TreeFor)
  {
    v18 = TreeFor;
    v19 = BOMTreeCount(TreeFor);
    if (v18 != *(a1 + 8))
    {
      BOMTreeFree(v18);
    }

    return v19;
  }

  return BOMCKTreeCount(*(a1 + 8), v11, v12, v13, v14, v15, v16, v17, a2);
}

uint64_t BOMBomVIndexGet(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, size_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a6)
  {
    *a6 = 0;
    TreeFor = _v_findTreeFor(a1, 0, 0, a2, a3, a4, a7, a8);
    if (TreeFor)
    {
      v21 = TreeFor;
      if (BOMTreeCount(TreeFor) <= a5)
      {
        return 1;
      }

      v22 = BOMTreeIteratorNew(v21, 0, 0, 0);
      if (!v22)
      {
        return 1;
      }

      for (i = v22; a5; --a5)
      {
        BOMTreeIteratorNext(i);
      }

      v24 = BOMTreeIteratorKey(i);
      strlcpy(a6, v24, a7);
      BOMTreeIteratorFree(i);
      BOMTreeFree(v21);
    }

    else
    {
      v25 = BOMCKTreeGet(*(a1 + 8), a5, v15, v16, v17, v18, v19, v20, a2);
      strlcpy(a6, v25, a7);
    }

    return 0;
  }

  return result;
}

uint64_t BOMBomVIndexGetList(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, CFMutableArrayRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (*a5 || (Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0), (*a5 = Mutable) != 0))
            {
              TreeFor = _v_findTreeFor(a1, 0, 0, a2, a3, a4, a7, a8);
              v23 = TreeFor;
              if (TreeFor)
              {
                v24 = BOMTreeIteratorNew(TreeFor, 0, 0, 0);
                if (!v24)
                {
                  goto LABEL_27;
                }

                for (i = v24; ; BOMTreeIteratorNext(i))
                {
                  if (BOMTreeIteratorIsAtEnd(i))
                  {
                    v8 = 0;
                    goto LABEL_25;
                  }

                  v26 = BOMTreeIteratorKey(i);
                  if (!v26)
                  {
                    break;
                  }

                  v27 = v26;
                  v28 = strlen(v26);
                  v29 = BOM_malloc(v28 + 1);
                  if (!v29)
                  {
                    break;
                  }

                  v30 = v29;
                  strlcpy(v29, v27, v28 + 1);
                  CFArrayAppendValue(*a5, v30);
                }

                v8 = 1;
LABEL_25:
                BOMTreeIteratorFree(i);
LABEL_26:
                if (v23)
                {
LABEL_27:
                  BOMTreeFree(v23);
                }
              }

              else
              {
                v31 = BOMCKTreeCount(*(a1 + 8), v16, v17, v18, v19, v20, v21, v22, a2);
                if (v31 < 1)
                {
                  return 0;
                }

                else
                {
                  v38 = v31;
                  v39 = 0;
                  while (1)
                  {
                    v40 = BOMCKTreeGet(*(a1 + 8), v39, v32, v33, v34, v35, v36, v37, a2);
                    if (!v40)
                    {
                      return 1;
                    }

                    v41 = v40;
                    v42 = strlen(v40);
                    v43 = BOM_malloc(v42 + 1);
                    if (!v43)
                    {
                      return 1;
                    }

                    v44 = v43;
                    strlcpy(v43, v41, v42 + 1);
                    CFArrayAppendValue(*a5, v44);
                    if (v38 == ++v39)
                    {
                      v8 = 0;
                      v23 = 0;
                      goto LABEL_26;
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

  return v8;
}

uint64_t BOMBomVIndexRemove(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = 1;
  if (a1 && a2 && a3 && a4)
  {
    while (1)
    {
      v8 = 1;
      TreeFor = _v_findTreeFor(a1, 1, 0, a2, a3, a4, a7, a8);
      if (!TreeFor)
      {
        break;
      }

      v15 = TreeFor;
      if (!a5)
      {
        BOMTreeRemoveAndFree(TreeFor);
        if (!BOMCKTreeBuildKey(__s, v19, v20, v21, v22, v23, v24, v25, a2))
        {
          v26 = strlen(__s);
          v8 = BOMTreeRemoveValue(*(a1 + 8), __s, (v26 + 1));
          if (!v8)
          {
            *(a1 + 32) = 1;
          }
        }

        break;
      }

      v16 = strlen(a5);
      v17 = BOMTreeRemoveValue(v15, a5, v16 + 1);
      if (v17)
      {
        v8 = v17;
        break;
      }

      v18 = BOMTreeCount(v15);
      BOMTreeFree(v15);
      a5 = 0;
      *(a1 + 32) = 1;
      if (v18)
      {
        v8 = 0;
        break;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t BOMBomVIndexGetApproxDiskSpace(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!a2 && !a3 && !a4)
  {
    result = 0;
    v11 = *(a1 + 28);
LABEL_6:
    *a5 = v11;
    goto LABEL_13;
  }

  result = 1;
  if (a4 && a2 && a3 && a5)
  {
    *a5 = 0;
    if (!BOMCKTreeBuildKey(__s, a2, a3, a4, a5, a6, a7, a8, a2))
    {
      v13 = strlen(__s) + 1;
      if (*(a1 + 40))
      {
        value = 0;
        v14 = CFDataCreate(*MEMORY[0x277CBECE8], __s, v13);
        if (!v14)
        {
          v16 = *MEMORY[0x277D85DF8];
          v17 = __error();
          v18 = strerror(*v17);
          fprintf(v16, "CFDataCreate: %s\n", v18);
          goto LABEL_12;
        }

        v15 = v14;
        if (CFDictionaryGetValueIfPresent(*(a1 + 40), v14, &value))
        {
          *a5 = value;
          CFRelease(v15);
          result = 0;
          goto LABEL_13;
        }

        CFRelease(v15);
      }

      v19 = BOMTreeGetValue(*(a1 + 8), __s, v13);
      if (v19)
      {
        v20 = v19;
        result = 0;
        v11 = bswap32(*v20);
        goto LABEL_6;
      }
    }

LABEL_12:
    result = 1;
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMBomVIndexSetApproxDiskSpace(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_10:
    result = 1;
    goto LABEL_11;
  }

  v8 = a5;
  if (!a2 && !a3 && !a4)
  {
    result = 0;
    *(a1 + 28) = a5;
    *(a1 + 32) = 257;
    goto LABEL_11;
  }

  result = 1;
  if (a2 && a3 && a4)
  {
    if (!BOMCKTreeBuildKey(__s, a2, a3, a4, a5, a6, a7, a8, a2))
    {
      result = BOMBomVIndexSetApproxDiskSpaceWithKey(a1, __s, v8);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMBomVIndexSetApproxDiskSpaceWithKey(uint64_t a1, char *__s, unsigned int a3)
{
  result = 1;
  if (a1 && __s)
  {
    v7 = strlen(__s) + 1;
    if (BOMStorageIsOpenForWriting(*(a1 + 16)))
    {
      v15 = bswap32(a3);
      result = BOMTreeSetValue(*(a1 + 8), __s, v7, &v15, 4);
      if (!result)
      {
        *(a1 + 32) = 257;
        return result;
      }
    }

    else
    {
      v8 = *MEMORY[0x277CBECE8];
      if (*(a1 + 40) || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0), (*(a1 + 40) = Mutable) != 0))
      {
        v10 = CFDataCreate(v8, __s, v7);
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(*(a1 + 40), v10, a3);
          CFRelease(v11);
          result = 0;
          *(a1 + 33) = 1;
          return result;
        }

        v12 = *MEMORY[0x277D85DF8];
        v13 = __error();
        v14 = strerror(*v13);
        fprintf(v12, "CFDataCreate: %s\n", v14);
      }
    }

    return 1;
  }

  return result;
}

uint64_t BOMBomVIndexDiskSpaceKey(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a1 && a2 && a3 && a4)
  {
    if (BOMCKTreeBuildKey(__s, a2, a3, a4, a5, a6, a7, a8, a2) || (v11 = strlen(__s) + 1, v12 = BOM_malloc(v11), (*a5 = v12) == 0))
    {
      result = 1;
    }

    else
    {
      memmove(v12, __s, v11);
      result = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMBomVIndexDiskSpaceInfoIsValid(uint64_t result)
{
  if (result)
  {
    return *(result + 33);
  }

  return result;
}

uint64_t _BOMBomVIndexPrintDiagnostics(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v8 = result;
    result = BOMCKTreeBuildKey(__s, a2, a3, a4, a5, a6, a7, a8, "path");
    if (!result)
    {
      v9 = strlen(__s);
      v10 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Tree: %s\n", "VIndex");
      v11 = BOMTreeCount(*(v8 + 8));
      result = BOMTreeIteratorNew(*(v8 + 8), 0, 0, 0);
      if (result)
      {
        v12 = result;
        v13 = 0;
        while (!BOMTreeIteratorIsAtEnd(v12))
        {
          v14 = BOMTreeIteratorKey(v12);
          if (!BOM_strrncmp(v14, __s, v9))
          {
            v15 = strlen(v14);
            result = BOMTreeGetValue(*(v8 + 8), v14, (v15 + 1));
            if (!result)
            {
              goto LABEL_11;
            }

            v16 = result;
            v17 = BOMTreeStorage(*(v8 + 8));
            result = BOMTreeOpen(v17, bswap32(*v16), 0);
            if (!result)
            {
              goto LABEL_11;
            }

            v18 = result;
            v13 += BOMTreeCount(result);
            BOMTreeFree(v18);
          }

          BOMTreeIteratorNext(v12);
        }

        BOMTreeIteratorFree(v12);
        fprintf(*v10, " i # records: %d\n", v11);
        fprintf(*v10, " i # pages  : %d (%d)\n", 0, 0);
        fprintf(*v10, "   i leaf   : %d (%d)\n", 0, 0);
        fprintf(*v10, "   i branch : %d (%d)\n", 0, 0);
        fprintf(*v10, " i key size : %zd\n", 0);
        fprintf(*v10, " i data size: %zd\n", 0);
        fprintf(*v10, "   # records: %d\n", v13);
        fprintf(*v10, "   # pages  : %d (%d)\n", 0, 0);
        fprintf(*v10, "     leaf   : %d (%d)\n", 0, 0);
        fprintf(*v10, "     branch : %d (%d)\n", 0, 0);
        fprintf(*v10, "   key size : %zd\n", 0);
        result = fprintf(*v10, "   data size: %zd\n", 0);
      }
    }
  }

LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}