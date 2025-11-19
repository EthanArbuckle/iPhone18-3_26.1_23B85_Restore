char *_MDPlistContainerBeginContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 17))
  {
    _MDPlistContainerBeginContainer_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(a1 + 136))
  {
    _MDPlistContainerBeginContainer_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(a1 + 32))
  {
    _MDPlistContainerBeginContainer_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 128) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &kCStringDictionaryKeyCallBacksLocal, MEMORY[0x1E695E9E8]);
  MDPlistBufferConsume(a1, a1 + 32, a2 + 29);
  result = malloc_type_malloc(0x6000uLL, 0x1000040504FFAC1uLL);
  *(a1 + 144) = result;
  v11 = &result[24 * *(a1 + 136)];
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *v11 = 0;
  ++*(a1 + 136);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void *MDPlistBufferConsume(uint64_t a1, uint64_t a2, size_t a3)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    v4 = a3;
    v7 = *a2;
    v6 = *(a2 + 8);
    if (v6 >= a3)
    {
      v11 = *a2;
    }

    else
    {
      if (*(a2 + 24))
      {
        v9 = 0;
        v6 = 0;
        v10 = *(a2 + 16);
        v4 = v7 + a3;
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
      }

      else
      {
        v10 = 0;
        v9 = *a2;
      }

      v12 = v9 + v6;
      if (v9 + v6 <= v4)
      {
        v14 = *MEMORY[0x1E69E9AC8];
        v13 = ((v4 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) + v12;
      }

      else
      {
        v13 = 2 * v12;
        v14 = *MEMORY[0x1E69E9AC8];
      }

      if (v13 <= 2 * v14)
      {
        v15 = 2 * v14;
      }

      else
      {
        v15 = v13;
      }

      if (*(a2 + 26))
      {
        result = malloc_type_realloc(*(a2 + 16), v15, 0xDEA9384CuLL);
        if (!result)
        {
          goto LABEL_19;
        }
      }

      else
      {
        __dst[0] = 0;
        v16 = MEMORY[0x1E69E9A60];
        if (vm_allocate(*MEMORY[0x1E69E9A60], __dst, v15, -251658239))
        {
          result = 0;
LABEL_19:
          *(a1 + 16) = 1;
          goto LABEL_28;
        }

        v17 = *(a2 + 16);
        if (v17)
        {
          memcpy(__dst[0], v17, *a2);
          MEMORY[0x1B27490A0](*v16, *(a2 + 16), v12);
        }

        result = __dst[0];
      }

      *(a2 + 16) = result;
      if (*(a2 + 24) && result)
      {
        memcpy(result, v10, v7);
        *(a2 + 24) = 0;
      }

      v11 = *a2;
      v6 = v15 - *a2;
    }

    *a2 = v11 + v4;
    *(a2 + 8) = v6 - v4;
    result = (*(a2 + 16) + v7);
    goto LABEL_28;
  }

  result = 0;
LABEL_28:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerCreateCommon(uint64_t a1, size_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v24 = *MEMORY[0x1E69E9840];
  if (_MDPlistContainerCreateCommon_once != -1)
  {
    _MDPlistContainerCreateCommon_cold_1();
  }

  if (v11 | v12 && (v12 == 0) != (v11 != 0))
  {
    _MDPlistContainerCreateCommon_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a3 && *a3 != 47838)
  {
    _MDPlistContainerCreateCommon_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (_MDPlistContainerGetTypeID_once != -1)
  {
    _MDPlistContainerCreateCommon_cold_4();
  }

  v15 = a3 != 0;
  v16 = v12 != 0;
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 17) = v12;
  *(Instance + 24) = _Block_copy(a8);
  if (v15 && v16)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0;
  }

  if (v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  *(Instance + 32) = v19;
  if (v11)
  {
    v20 = 0;
  }

  else
  {
    v20 = a3;
  }

  *(Instance + 40) = v18;
  *(Instance + 48) = v20;
  *(Instance + 56) = v15 && v16;
  *(Instance + 57) = v10;
  *(Instance + 58) = v9;
  if (v11)
  {
    v21 = MDPlistBufferConsume(Instance, Instance + 32, a2);
    if (v21)
    {
      memcpy(v21, a3, a2);
    }
  }

  *(Instance + 64) = 0;
  *(Instance + 72) = 0;
  *(Instance + 80) = 0;
  *(Instance + 88) = 256;
  *(Instance + 90) = 1;
  *(Instance + 91) = 0;
  *(Instance + 95) = 0;
  *(Instance + 104) = 0;
  *(Instance + 112) = 0;
  *(Instance + 96) = 0;
  *(Instance + 120) = 0;
  *(Instance + 121) = 257;
  *(Instance + 123) = 0;
  *(Instance + 127) = 0;
  v22 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t _MDPlistContainerCreateMutable(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return _MDPlistContainerCreateCommon(a1, 0, 0, 1, 0, 1, a2, 0);
}

double _MDPlistContainerBeginArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 136);
  if (v8 <= 0)
  {
    _MDPlistContainerBeginArray_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 144);
  if (v8 == 1)
  {
    v8 = 1;
  }

  else
  {
    v11 = v10 + 24 * v8;
    if (*(v11 - 24) == 241 && (*(v11 - 20) & 1) == 0)
    {
      _MDPlistContainerBeginArray_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    if (v8 >= 0x400)
    {
      _MDPlistContainerBeginArray_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  ++*(v10 + 24 * v8 - 20);
  v12 = *(a1 + 32);
  MDPlistBufferConsume(a1, a1 + 32, 0xAuLL);
  v13 = *(a1 + 64);
  v14 = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  if (v14)
  {
    *v14 = v12;
    v14[4] = -16;
  }

  v15 = *(a1 + 144) + 24 * *(a1 + 136);
  v16 = *(a1 + 64);
  *&result = 240;
  *v15 = 240;
  *(v15 + 8) = v16;
  *(v15 + 16) = v12;
  *(v15 + 20) = v13;
  ++*(a1 + 136);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void _MDPlistContainerAddObject(uint64_t a1, const void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a2);
  if (v6 == gCFArrayTypeID)
  {
    _MDPlistContainerBeginArray(a1, v7, v8, v9, v10, v11, v12, v13);
    Count = CFArrayGetCount(a2);
    v21 = Count;
    if (Count)
    {
      v22 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v22);
        _MDPlistContainerAddObject(a1, ValueAtIndex, 0);
        ++v22;
      }

      while (v21 != v22);
    }

    v24 = *MEMORY[0x1E69E9840];

    _MDPlistContainerEndArray(a1, a3, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v25 = v6;
    if (v6 == gCFDictionaryTypeID)
    {
      _MDPlistContainerBeginDictionary(a1, v7, v8, v9, v10, v11, v12, v13);
      v26 = CFDictionaryGetCount(a2);
      v27 = 8 * v26;
      v28 = malloc_type_malloc(v27, 0x80040B8603338uLL);
      v29 = malloc_type_malloc(v27, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(a2, v28, v29);
      v30 = v26;
      if (v26)
      {
        v31 = v29;
        v32 = v28;
        do
        {
          v33 = CFGetTypeID(*v32);
          if (v33 != gCFStringTypeID)
          {
            _MDPlistContainerAddObject_cold_2(v33, v34, v35, v36, v37, v38, v39, v40);
          }

          v41 = *v32++;
          _MDPlistContainerAddObject(a1, v41, 0);
          v42 = *v31++;
          _MDPlistContainerAddObject(a1, v42, 0);
          --v30;
        }

        while (v30);
      }

      free(v28);
      free(v29);
      v49 = *MEMORY[0x1E69E9840];

      _MDPlistContainerEndDictionary(a1, a3, v43, v44, v45, v46, v47, v48);
    }

    else if (v6 == gCFNullTypeID)
    {
      v50 = *MEMORY[0x1E69E9840];

      _addInlineData(a1, 224, 0, a3, v10, v11, v12, v13);
    }

    else if (v6 == gCFStringTypeID)
    {
      v51 = *MEMORY[0x1E69E9840];

      _MDPlistContainerAddString(a1, a2, a3, v9, v68);
    }

    else if (v6 == gCFDataTypeID)
    {
      BytePtr = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      v56 = *MEMORY[0x1E69E9840];

      _addGenericData(a1, 0, 246, BytePtr, Length, a3, v54, v55);
    }

    else if (v6 == gCFUUIDTypeID)
    {
      v57 = *MEMORY[0x1E69E9840];

      _MDPlistContainerAddUUID(a1, a2, a3);
    }

    else if (v6 == gCFURLTypeID)
    {
      v58 = *MEMORY[0x1E69E9840];

      _MDPlistContainerAddURL(a1, a2, a3, v9, v10, v11, v12, v13);
    }

    else if (v6 == gCFDateTypeID)
    {
      v59 = *MEMORY[0x1E69E9840];

      _MDPlistContainerAddDate(a1, a2, a3);
    }

    else if (v6 == gCFBooleanTypeID)
    {
      v60 = *MEMORY[0x1E69E9840];

      _MDPlistContainerAddBoolean(a1, a2, a3);
    }

    else if (v6 == gCFNumberTypeID)
    {
      v61 = *MEMORY[0x1E69E9840];

      _MDPlistContainerAddNumber(a1, a2, a3);
    }

    else
    {
      v62 = _MDLogForCategoryDefault();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        _MDPlistContainerAddObject_cold_1(v25, a2, v62);
      }

      _addInlineData(a1, 224, 0, a3, v63, v64, v65, v66);
      v67 = *MEMORY[0x1E69E9840];
    }
  }
}

double _MDPlistContainerBeginDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 136);
  if (v8 <= 0)
  {
    _MDPlistContainerBeginDictionary_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 144);
  if (v8 == 1)
  {
    v8 = 1;
  }

  else
  {
    v11 = v10 + 24 * v8;
    if (*(v11 - 24) == 241 && (*(v11 - 20) & 1) == 0)
    {
      _MDPlistContainerBeginDictionary_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    if (v8 >= 0x400)
    {
      _MDPlistContainerBeginDictionary_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  ++*(v10 + 24 * v8 - 20);
  v12 = *(a1 + 32);
  MDPlistBufferConsume(a1, a1 + 32, 0xCuLL);
  v13 = *(a1 + 64);
  v14 = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  if (v14)
  {
    *v14 = v12;
    v14[4] = -15;
  }

  v15 = *(a1 + 144) + 24 * *(a1 + 136);
  v16 = *(a1 + 64);
  *&result = 241;
  *v15 = 241;
  *(v15 + 8) = v16;
  *(v15 + 16) = v12;
  *(v15 + 20) = v13;
  ++*(a1 + 136);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

int *_MDPlistContainerAddString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a5, a1, a2, a3, a4);
  v48 = *MEMORY[0x1E69E9840];
  v13 = *(v5 + 34);
  if (v13 <= 1)
  {
    _MDPlistContainerAddString_cold_3(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v14 = v7;
  v15 = v6;
  v16 = v5;
  v17 = 134217984;
  v18 = v5[18] + 24 * v13;
  v20 = *(v18 - 24);
  v19 = *(v18 - 20);
  *(v18 - 20) = v19 + 1;
  v21 = (v19 & 1) == 0 && v20 == 241;
  v22 = v21;
  if (!v21 && (FastestEncoding = CFStringGetFastestEncoding(v6), FastestEncoding == 256 || FastestEncoding == 335544576 || FastestEncoding == 268435712))
  {
    v24 = 0;
    v17 = 256;
    v23 = -11;
  }

  else
  {
    v23 = -12;
    v24 = 1;
  }

  maxBufLen = 0;
  Length = CFStringGetLength(v15);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, v17);
  v49.length = CFStringGetLength(v15);
  v49.location = 0;
  Bytes = CFStringGetBytes(v15, v49, v17, 0x20u, 1u, 0, MaximumSizeForEncoding, &maxBufLen);
  if (v22)
  {
    if (maxBufLen >= 4096)
    {
      _MDPlistContainerAddString_cold_2(Bytes, v29, v30, v31, v32, v33, v34, v35);
    }

    if (v14)
    {
      _MDPlistContainerAddString_cold_1(Bytes, v29, v30, v31, v32, v33, v34, v35);
    }

    bzero(buffer, 0x1000uLL);
    v50.length = CFStringGetLength(v15);
    v50.location = 0;
    CFStringGetBytes(v15, v50, v17, 0x20u, 1u, buffer, maxBufLen, &maxBufLen);
    v36 = maxBufLen;
    buffer[maxBufLen] = 0;
    v37 = addStringKey(v16, buffer, v36);
    result = MDPlistBufferConsume(v16, v16 + 64, 4uLL);
    if (result)
    {
      *result = v37;
    }

    goto LABEL_30;
  }

  result = MDPlistBufferConsume(v16, v16 + 64, 5uLL);
  if (!result)
  {
    goto LABEL_28;
  }

  v39 = result;
  v40 = *(v16 + 32);
  v41 = 4;
  if (v24)
  {
    v41 = 5;
  }

  result = MDPlistBufferConsume(v16, v16 + 32, v41 + maxBufLen);
  if (!result)
  {
LABEL_28:
    v39 = &gNullObjectReference;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_29:
    v44 = *v39;
    *(v14 + 4) = *(v39 + 4);
    *v14 = v44;
    goto LABEL_30;
  }

  v42 = result;
  v51.length = CFStringGetLength(v15);
  v51.location = 0;
  result = CFStringGetBytes(v15, v51, v17, 0x20u, 1u, v42 + 4, maxBufLen, &maxBufLen);
  v43 = maxBufLen;
  *v42 = maxBufLen + v24;
  if (v24)
  {
    *(v42 + v43 + 4) = 0;
  }

  *v39 = v40;
  *(v39 + 4) = v23;
  if (v14)
  {
    goto LABEL_29;
  }

LABEL_30:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t addStringKey(uint64_t a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  Value = CFDictionaryGetValue(*(a1 + 128), a2);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    valuePtr = *(a1 + 96);
    v7 = MDPlistBufferConsume(a1, a1 + 96, a3 + 3);
    if (v7)
    {
      v8 = v7;
      *v7 = a3;
      strcpy(v7 + 2, a2);
      v8[a3 + 2] = 0;
      v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(*(a1 + 128), a2, v9);
      CFRelease(v9);
    }
  }

  result = valuePtr;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MDHash(unsigned __int8 *a1, unsigned int a2, int a3)
{
  v3 = -1640531527;
  if (a2 < 0xC)
  {
    v5 = -1640531527;
    v4 = a2;
  }

  else
  {
    v4 = a2;
    v5 = -1640531527;
    do
    {
      v6 = *(a1 + 1) + v3;
      v7 = *(a1 + 2) + a3;
      v8 = (*a1 + v5 - (v6 + v7)) ^ (v7 >> 13);
      v9 = (v6 - v7 - v8) ^ (v8 << 8);
      v10 = (v7 - v8 - v9) ^ (v9 >> 13);
      v11 = (v8 - v9 - v10) ^ (v10 >> 12);
      v12 = (v9 - v10 - v11) ^ (v11 << 16);
      v13 = (v10 - v11 - v12) ^ (v12 >> 5);
      v5 = (v11 - v12 - v13) ^ (v13 >> 3);
      v3 = (v12 - v13 - v5) ^ (v5 << 10);
      a3 = (v13 - v5 - v3) ^ (v3 >> 15);
      a1 += 12;
      v4 -= 12;
    }

    while (v4 > 0xB);
  }

  v14 = a3 + a2;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 != 9)
      {
        if (v4 != 10)
        {
          v14 += a1[10] << 24;
        }

        v14 += a1[9] << 16;
      }

      v14 += a1[8] << 8;
    }

    else
    {
      if (v4 == 6)
      {
LABEL_22:
        v3 += a1[5] << 8;
        goto LABEL_23;
      }

      if (v4 == 7)
      {
LABEL_21:
        v3 += a1[6] << 16;
        goto LABEL_22;
      }
    }

    v3 += a1[7] << 24;
    goto LABEL_21;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
LABEL_25:
      v5 += a1[2] << 16;
      goto LABEL_26;
    }

    if (v4 == 4)
    {
LABEL_24:
      v5 += a1[3] << 24;
      goto LABEL_25;
    }

LABEL_23:
    v3 += a1[4];
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    goto LABEL_27;
  }

  if (v4 != 2)
  {
    goto LABEL_28;
  }

LABEL_26:
  v5 += a1[1] << 8;
LABEL_27:
  v5 += *a1;
LABEL_28:
  v15 = *MEMORY[0x1E69E9840];
  v16 = *MEMORY[0x1E69E9840];
  v17 = (v5 - (v3 + v14)) ^ (v14 >> 13);
  v18 = (v3 - v14 - v17) ^ (v17 << 8);
  v19 = (v14 - v17 - v18) ^ (v18 >> 13);
  v20 = (v17 - v18 - v19) ^ (v19 >> 12);
  v21 = (v18 - v19 - v20) ^ (v20 << 16);
  v22 = (v19 - v20 - v21) ^ (v21 >> 5);
  v23 = (v20 - v21 - v22) ^ (v22 >> 3);
  return (v22 - v23 - ((v21 - v22 - v23) ^ (v23 << 10))) ^ (((v21 - v22 - v23) ^ (v23 << 10)) >> 15);
}

_DWORD *_MDPlistContainerAddDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = MEMORY[0x1B2747B00](a2);
  result = _addGenericData(a1, 1, 19, v9, 8uLL, a3, v5, v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *_addGenericData(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a3;
  v12 = a2;
  v25 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 136);
  if (v14 <= 1)
  {
    if ((a3 & 0xFE) != 0xF0 || v14 != 1)
    {
      _addGenericData_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v15 = *(a1 + 144);
    v14 = 1;
  }

  else
  {
    v15 = *(a1 + 144);
    v16 = v15 + 24 * v14;
    if (*(v16 - 24) == 241 && (*(v16 - 20) & 1) == 0)
    {
      _addGenericData_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  ++*(v15 + 24 * v14 - 20);
  v17 = *(a1 + 32);
  result = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  v19 = result;
  if (!result)
  {
    v21 = 1;
    if (!a6)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v12)
  {
    result = MDPlistBufferConsume(a1, a1 + 32, a5);
    v20 = result;
    if (a4 && result)
    {
      result = memcpy(result, a4, a5);
    }
  }

  else
  {
    result = MDPlistBufferConsume(a1, a1 + 32, a5 + 4);
    v20 = result;
    if (result)
    {
      if (a4)
      {
        result = memcpy(result + 1, a4, a5);
      }

      *v20++ = a5;
    }
  }

  *v19 = v17;
  *(v19 + 4) = v11;
  v21 = v20 == 0;
  if (a6)
  {
LABEL_20:
    if (v21)
    {
      v22 = &gNullObjectReference;
    }

    else
    {
      v22 = v19;
    }

    v23 = *v22;
    *(a6 + 4) = *(v22 + 4);
    *a6 = v23;
  }

LABEL_24:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cStringHashCallback(char *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = strlen(a1);
  LODWORD(result) = MDHash(a1, v2, -1640531527);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

char *cStringRetainCallback(int a1, char *__s1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return strdup(__s1);
}

BOOL cStringEqualCallback(const char *a1, const char *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = strcmp(a1, a2) == 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

int *_addInlineData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 136);
  if (v8 <= 1)
  {
    _addInlineData_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = *(a1 + 144) + 24 * v8;
  if (*(v9 - 24) == 241 && (*(v9 - 20) & 1) == 0)
  {
    _addInlineData_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v12 = a3;
  v13 = a2;
  ++*(v9 - 20);
  result = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  if (!result)
  {
    result = &gNullObjectReference;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *result = v12;
  *(result + 4) = v13;
  if (a4)
  {
LABEL_8:
    v15 = *result;
    *(a4 + 4) = *(result + 4);
    *a4 = v15;
  }

LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void _MDPlistContainerEndDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 136);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    _MDPlistContainerEndDictionary_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 136) = v10;
  v12 = *(a1 + 144) + 24 * v10;
  if (*v12 != 241)
  {
    _MDPlistContainerEndDictionary_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v13 = *(v12 + 4);
  if (v13)
  {
    _MDPlistContainerEndDictionary_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v14 = a2;
  v15 = v13 >> 1;
  if ((v13 >> 1) <= 3)
  {
    v16 = 1;
  }

  else
  {
    v16 = (((v13 >> 1) + 1) * 1.3);
  }

  v17 = *(a1 + 32);
  v18 = MDPlistBufferConsume(a1, a1 + 32, 9 * (v13 >> 1) + 2 * (v16 + 1));
  if (!v18)
  {
    v28 = &gNullObjectReference;
    if (!v14)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v19 = v18;
  v41 = v14;
  if (v16)
  {
    bzero(v18, 2 * v16);
  }

  if (v13)
  {
    v20 = (*(a1 + 80) + *(v12 + 8));
    if (v15 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v13 >> 1;
    }

    do
    {
      v22 = *v20;
      v20 = (v20 + 9);
      v23 = MDHash((*(a1 + 112) + v22 + 2), *(*(a1 + 112) + v22), 0);
      ++v19[v23 % v16];
      --v21;
    }

    while (v21);
  }

  if (v16)
  {
    v24 = 0;
    v25 = v16;
    v26 = v19;
    do
    {
      v24 += *v26;
      *v26++ = v24;
      --v25;
    }

    while (v25);
    v27 = v16;
  }

  else
  {
    v27 = 0;
    v24 = 0;
  }

  v19[v27] = v24;
  if (v13)
  {
    v29 = (*(a1 + 80) + *(v12 + 8));
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v30 = MDHash((*(a1 + 112) + *v29 + 2), *(*(a1 + 112) + *v29), 0);
      v31 = v19[v30 % v16] - 1;
      v19[v30 % v16] = v31;
      v32 = v19 + 9 * v31 + 2 * (v16 + 1);
      v33 = *v29;
      v34 = *(v29 + 8);
      v29 = (v29 + 9);
      *(v32 + 8) = v34;
      *v32 = v33;
      --v15;
    }

    while (v15);
  }

  v35 = *(v12 + 16);
  v36 = *(a1 + 48) + v35;
  *v36 = *(a1 + 32) - v35 - 4;
  *(v36 + 4) = v13 >> 1;
  *(v36 + 6) = v17 - v35;
  *(v36 + 10) = v16;
  v28 = (*(a1 + 80) + *(v12 + 20));
  if (!*(a1 + 16))
  {
    v37 = *(v12 + 8);
    v38 = *(a1 + 72) - v37 + *(a1 + 64);
    *(a1 + 64) = v37;
    *(a1 + 72) = v38;
  }

  v14 = v41;
  if (v41)
  {
LABEL_29:
    v39 = *v28;
    *(v14 + 4) = *(v28 + 4);
    *v14 = v39;
  }

LABEL_30:
  v40 = *MEMORY[0x1E69E9840];
}

void *_MDPlistContainerEndArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 136);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    _MDPlistContainerEndArray_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 136) = v10;
  v12 = *(a1 + 144) + 24 * v10;
  if (*v12 != 240)
  {
    _MDPlistContainerEndArray_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v14 = *(a1 + 32);
  v15 = 5 * *(v12 + 4);
  result = MDPlistBufferConsume(a1, a1 + 32, v15);
  if (result)
  {
    result = memcpy(result, (*(a1 + 80) + *(v12 + 8)), v15);
    v17 = *(v12 + 16);
    v18 = *(a1 + 48) + v17;
    v19 = *(v12 + 4);
    *v18 = *(a1 + 32) - v17 - 4;
    *(v18 + 4) = v19;
    *(v18 + 6) = v14 - v17;
    v20 = (*(a1 + 80) + *(v12 + 20));
    if (!*(a1 + 16))
    {
      v21 = *(v12 + 8);
      v22 = *(a1 + 72) - v21 + *(a1 + 64);
      *(a1 + 64) = v21;
      *(a1 + 72) = v22;
    }
  }

  else
  {
    v20 = &gNullObjectReference;
  }

  if (a2)
  {
    v23 = *v20;
    *(a2 + 4) = *(v20 + 4);
    *a2 = v23;
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void _MDPlistContainerEndContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 136) - 1;
  *(a1 + 136) = v8;
  if (v8)
  {
    _MDPlistContainerEndContainer_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 144);
  if (*v10 || v10[1] != 1)
  {
    _MDPlistContainerEndContainer_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = *(a1 + 32);
  v12 = MDPlistBufferConsume(a1, a1 + 32, *(a1 + 96));
  if (v12)
  {
    memcpy(v12, *(a1 + 112), *(a1 + 96));
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    if (*(a1 + 96))
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 80);
    v17 = *v16;
    v20 = *(v16 + 4);
    *v13 = -17698;
    *(v13 + 2) = 256;
    *(v13 + 6) = v14;
    *(v13 + 10) = v15;
    *(v13 + 14) = v17;
    *(v13 + 18) = v20;
    *(v13 + 19) = v11;
    *(v13 + 23) = 0;
    *(v13 + 25) = v11;
  }

  MDPlistBufferDispose(a1 + 64, 0);
  MDPlistBufferDispose(a1 + 96, 0);
  free(*(a1 + 144));
  *(a1 + 144) = 0;
  v18 = *(a1 + 128);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 128) = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void MDPlistBufferDispose(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = *(a2 + 16);
    v3 = *MEMORY[0x1E69E9840];

    v2(a2);
  }

  else
  {
    if (*(a1 + 25) && *(a1 + 16) && !*(a1 + 24))
    {
      if (*(a1 + 26))
      {
        free(*(a1 + 16));
      }

      else
      {
        v5 = *a1 + *(a1 + 8);
        MEMORY[0x1B27490A0](*MEMORY[0x1E69E9A60]);
      }

      *(a1 + 16) = 0;
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

void cStringReleaseCallback(int a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  free(a2);
}

void _MDPlistContainerDestroy(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  MDPlistBufferDispose(a1 + 32, *(a1 + 24));
  MDPlistBufferDispose(a1 + 64, 0);
  MDPlistBufferDispose(a1 + 96, 0);
  _Block_release(*(a1 + 24));
  free(*(a1 + 144));
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = *MEMORY[0x1E69E9840];

    CFRelease(v2);
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }
}

dispatch_data_t _MDPlistContainerCopyDispatchData(dispatch_data_t result, size_t *a2)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (LOBYTE(result[2].isa))
    {
      goto LABEL_3;
    }

    isa = result[4].isa;
    if (!isa)
    {
LABEL_4:
      result = 0;
      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = (isa + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    if (BYTE1(result[7].isa) && !BYTE2(result[7].isa))
    {
      BYTE1(result[7].isa) = 0;
      v7 = result[6].isa;
      v8 = result[5].isa + isa;
      if (v8 > v6)
      {
        MEMORY[0x1B27490A0](*MEMORY[0x1E69E9A60], v7 + v6, &v8[-v6]);
      }
    }

    else
    {
      __dst[0] = 0;
      v7 = 0;
      if (!vm_allocate(*MEMORY[0x1E69E9A60], __dst, v6, -251658239))
      {
        v7 = __dst[0];
        memcpy(__dst[0], v3[6].isa, isa);
      }
    }

    if (!v7)
    {
LABEL_3:
      isa = 0;
      goto LABEL_4;
    }

    result = dispatch_data_create(v7, v6, 0, *MEMORY[0x1E69E9660]);
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a2 = isa;
    goto LABEL_8;
  }

  isa = 0;
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void _MDPlistContainerCreateCommon_cold_4()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&_MDPlistContainerGetTypeID_once, &__block_literal_global_7);
}

void _MDPlistContainerCreateCommon_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&_MDPlistContainerCreateCommon_once, &__block_literal_global_73);
}

void *md_deadline_once_create(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_malloc(0x28uLL, 0x10A00400333C0D5uLL);
  *v2 = 1;
  v2[1] = dispatch_semaphore_create(0);
  v2[2] = 0;
  *(v2 + 6) = 0;
  v2[4] = _Block_copy(a1);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void md_deadline_once_release(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    dispatch_release(*(a1 + 8));
    _Block_release(*(a1 + 32));
    v2 = *MEMORY[0x1E69E9840];

    free(a1);
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];
  }
}

void tracing_dispatch_async(dispatch_queue_t queue, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (tracing_enabled)
  {
    v2 = si_tracing_current_span();
    v3 = *(v2 + 16);
    v9 = *v2;
    v10 = v3;
    v11 = *(v2 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __tracing_dispatch_async_block_invoke;
    block[3] = &unk_1E7B255C8;
    block[4] = v4;
    dispatch_async(v5, block);
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];

    dispatch_async(queue, a2);
  }
}

uint64_t __tracing_dispatch_async_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  *(v0 + 32) = *(v1 + 72);
  v2 = *(v1 + 56);
  *v0 = *(v1 + 40);
  *(v0 + 16) = v2;
  v3 = *(*(v1 + 32) + 16);
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

int *_MDPlistContainerAddCString(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 136);
  if (v8 <= 1)
  {
    _MDPlistContainerAddCString_cold_2(a1, __s, a3, a4, a5, a6, a7, a8);
  }

  v10 = a3;
  v13 = *(a1 + 144) + 24 * v8;
  v14 = *(v13 - 20);
  *(v13 - 20) = v14 + 1;
  if (a3 == -1)
  {
    v10 = strlen(__s);
  }

  if (*(v13 - 24) == 241 && (v14 & 1) == 0)
  {
    v21 = addStringKey(a1, __s, v10);
    result = MDPlistBufferConsume(a1, a1 + 64, 4uLL);
    if (result)
    {
      *result = v21;
    }

    if (a4)
    {
      _MDPlistContainerAddCString_cold_1(result, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  else
  {
    result = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
    if (result)
    {
      v17 = result;
      v18 = *(a1 + 32);
      v19 = MDPlistBufferConsume(a1, a1 + 32, v10 + 5);
      *v19 = v10 + 1;
      v20 = v19 + 1;
      result = memcpy(v19 + 1, __s, v10);
      *(v20 + v10) = 0;
      *v17 = v18;
      *(v17 + 4) = -12;
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v17 = &gNullObjectReference;
    if (a4)
    {
LABEL_16:
      v29 = *v17;
      *(a4 + 4) = *(v17 + 4);
      *a4 = v29;
    }
  }

LABEL_17:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

int *_MDPlistContainerAddInt32Value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];

  return _addInlineData(a1, 226, a2, a3, a5, a6, a7, a8);
}

uint64_t _MDPlistGetPlistObjectType(uint64_t a1)
{
  result = *(a1 + 20);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _MDPlistArrayGetPlistObjectAtIndex@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __int128 *a9@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (WORD1(a2) || (v9 = a1, v10 = *a1, a1 = *a1 + *(a1 + 16), *(a1 + 4) <= a2))
  {
    _MDPlistArrayGetPlistObjectAtIndex_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = a1 + *(a1 + 6);
  v12 = *(v9 + 8);
  *a9 = v10;
  *(a9 + 1) = v12;
  *(a9 + 2) = 0;
  v13 = v11 + 5 * a2;
  *(a9 + 4) = *v13;
  *(a9 + 20) = *(v13 + 4);
  v16 = *a9;
  v17 = *(a9 + 2);
  result = validatePlistObject(a1, &v16, 0, 0, a5, a6, a7, a8);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t MDPlistGetRootPlistObjectFromBuffer@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = *result;
  if (a2)
  {
    v10 = *a2;
    if (v9 <= 0x1C && v10 == 0)
    {
      v18 = 822;
LABEL_30:
      *a2 = v18;
      goto LABEL_31;
    }

    if (v10)
    {
LABEL_31:
      *a8 = 0;
      *(a8 + 8) = 0;
      *(a8 + 16) = 0;
      goto LABEL_32;
    }
  }

  else if (v9 <= 0x1C)
  {
    MDPlistGetRootPlistObjectFromBuffer_cold_4(result, 0, a3, 0, a4, a5, a6, a7);
  }

  v12 = *(result + 16);
  v25 = *(v12 + 14);
  v26 = *(v12 + 18);
  result = v12 + 19;
  v13 = *(v12 + 19);
  v14 = *(v12 + 25);
  if (!a2)
  {
    if (v13 != v14)
    {
      MDPlistGetRootPlistObjectFromBuffer_cold_1(result, 0, a3, 0, a4, a5, a6, a7);
    }

    if (v13 > v9)
    {
      MDPlistGetRootPlistObjectFromBuffer_cold_3(result, 0, a3, 0, a4, a5, a6, a7);
    }

    if (*(v12 + 10) && *(v12 + (*(v12 + 6) - 1)))
    {
      MDPlistGetRootPlistObjectFromBuffer_cold_2(result, 0, a3, 0, a4, a5, a6, a7);
    }

    goto LABEL_27;
  }

  v15 = *a2;
  if (v13 != v14 && v15 == 0)
  {
    v18 = 836;
    goto LABEL_30;
  }

  if (v14 > v9 && v15 == 0)
  {
    v18 = 837;
    goto LABEL_30;
  }

  if (v15)
  {
    goto LABEL_31;
  }

  if (!*(v12 + 10) || !*(v12 + (*(v12 + 6) - 1)))
  {
LABEL_27:
    v20[0] = v12;
    v20[1] = v9;
    v21 = *(v12 + 14);
    v22 = *(v12 + 18);
    v23 = 0;
    v24 = 0;
    result = validatePlistObject(result, v20, v9, a2, a4, a5, a6, a7);
    *a8 = v12;
    *(a8 + 8) = v9;
    *(a8 + 16) = v25;
    *(a8 + 20) = v26;
    *(a8 + 21) = 0;
    *(a8 + 23) = 0;
    goto LABEL_32;
  }

  *a2 = 842;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *a8 = 0;
LABEL_32:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _MDPlistGetRootPlistObjectFromBytes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = 0;
  v10[2] = a1;
  v10[3] = 0;
  result = MDPlistGetRootPlistObjectFromBuffer(v10, 0, a3, a4, a5, a6, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t validatePlistObject(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 10);
  v11 = *(*a2 + 6);
  if (a4)
  {
    v12 = *a4;
    if (v10 >= v11 && v12 == 0)
    {
      result = 0;
      if (v10 >= -8388607)
      {
        LODWORD(v19) = *(*a2 + 10);
      }

      else
      {
        LODWORD(v19) = 0x800000;
      }

      if (v10 < 0x800000)
      {
        v19 = v19;
      }

      else
      {
        v19 = 0x7FFFFFLL;
      }

      if (v11 >= -8388607)
      {
        v20 = *(*a2 + 6);
      }

      else
      {
        v20 = 0x800000;
      }

      if (v11 < 0x800000)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0x7FFFFF;
      }

      v22 = (v19 << 40) | (v21 << 16) | 0x26F;
      goto LABEL_28;
    }

    if (v12)
    {
      goto LABEL_31;
    }

    if (a3)
    {
      if (v11 != a3)
      {
        result = 0;
        v38 = (a3 << 40) | 0x279;
        if (a3 < -8388607)
        {
          v38 = 0x8000000000000279;
        }

        if (a3 >= 0x800000)
        {
          v38 = 0x7FFFFF0000000279;
        }

        if (v11 >= -8388607)
        {
          v39 = *(*a2 + 6);
        }

        else
        {
          v39 = 0x800000;
        }

        if (v11 < 0x800000)
        {
          v40 = v39;
        }

        else
        {
          v40 = 0x7FFFFF;
        }

        v22 = v38 | (v40 << 16);
        goto LABEL_28;
      }

      v14 = *(a2 + 20);
      if ((v14 & 0xF0) == 0xE0)
      {
        goto LABEL_31;
      }

      v15 = 0;
      v16 = a1 - v9 + 10;
      v11 = a3;
    }

    else
    {
      v14 = *(a2 + 20);
      if ((v14 & 0xF0) == 0xE0)
      {
        goto LABEL_31;
      }

      v16 = a1 - v9 + 10;
      v15 = *a4;
    }

    v25 = *(a1 + 6);
    v24 = *(a2 + 16);
    if (v16 > v24 && !v15)
    {
      result = 0;
      v22 = 646;
      goto LABEL_28;
    }

    if (v16 + v25 <= v24 && !v15)
    {
      result = 0;
      v22 = 647;
      goto LABEL_28;
    }

    if (v15)
    {
LABEL_31:
      result = 0;
      goto LABEL_32;
    }

    if ((v14 & 0x80) != 0)
    {
      if (v24 + 4 > v11)
      {
        result = 0;
        v22 = 655;
        goto LABEL_28;
      }

      goto LABEL_38;
    }

LABEL_36:
    result = (v14 & 0xFu) + 5;
    goto LABEL_39;
  }

  if (v10 >= v11)
  {
    validatePlistObject_cold_1(a1, a2, a3, 0, a5, a6, a7, a8);
  }

  if (a3)
  {
    if (v11 != a3)
    {
      validatePlistObject_cold_2(a1, a2, a3, 0, a5, a6, a7, a8);
    }

    v14 = *(a2 + 20);
    v17 = v14 & 0xF0;
    v11 = a3;
  }

  else
  {
    v14 = *(a2 + 20);
    v17 = v14 & 0xF0;
  }

  if (v17 == 224)
  {
    goto LABEL_31;
  }

  v16 = a1 - v9 + 10;
  v24 = *(a2 + 16);
  if (v16 > v24)
  {
    validatePlistObject_cold_19(a1, a2, a3, 0, a5, a6, a7, a8);
  }

  v25 = *(a1 + 6);
  if (v16 + v25 <= v24)
  {
    validatePlistObject_cold_3(a1, a2, a3, 0, a5, a6, a7, a8);
  }

  if ((v14 & 0x80) == 0)
  {
    goto LABEL_36;
  }

  if (v24 + 4 > v11)
  {
    validatePlistObject_cold_4(a1, a2, a3, 0, a5, a6, a7, a8);
  }

LABEL_38:
  result = *(v9 + v24) + 4;
LABEL_39:
  v26 = *a1;
  if (a4)
  {
    v27 = *a4;
    if (result >= v26 && !v27)
    {
      result = 0;
      v22 = 662;
LABEL_28:
      *a4 = v22;
      goto LABEL_32;
    }

    v37 = result + v24;
    if (!v27 && v37 > v25 + v16)
    {
      result = 0;
      v22 = 663;
      goto LABEL_28;
    }

    if (!v27 && v37 > v11)
    {
      result = 0;
      v22 = 665;
      goto LABEL_28;
    }

    if (!v27)
    {
      if ((v14 & 0xFE) != 0xF0)
      {
        goto LABEL_32;
      }

      if (v24 + 10 <= v11)
      {
        v41 = (v9 + v24);
        v42 = *(v41 + 2);
        v43 = *(v41 + 6);
        v44 = (v43 + v24);
        if (5 * v42 + v44 <= v11)
        {
          v45 = *v41;
          if (v45 + 4 >= v43)
          {
            if (v45 >= v42)
            {
              if (5 * v42 <= (v45 - v43) + 4)
              {
                if (v14 != 241)
                {
                  goto LABEL_32;
                }

                if (v24 + 12 <= v11)
                {
                  v46 = *(v41 + 5);
                  if (!*(v41 + 2) || v10)
                  {
                    if (*(v41 + 5))
                    {
                      if (v42 <= 1)
                      {
                        v47 = 1;
                      }

                      else
                      {
                        v47 = *(v41 + 2);
                      }

                      if (v46 >= 2 * v47)
                      {
                        result = 0;
                        v22 = 697;
                      }

                      else
                      {
                        v48 = 2 * v46 + 2;
                        v49 = 9 * v42;
                        if (v45 + 4 - v43 == v49 + v48)
                        {
                          if (v49 + v44 + v48 <= v11)
                          {
                            goto LABEL_32;
                          }

                          v22 = 705;
                        }

                        else
                        {
                          result = 0;
                          v22 = 701;
                        }
                      }
                    }

                    else
                    {
                      result = 0;
                      v22 = 696;
                    }
                  }

                  else
                  {
                    result = 0;
                    v22 = 695;
                  }
                }

                else
                {
                  result = 0;
                  v22 = 689;
                }
              }

              else
              {
                result = 0;
                v22 = 684;
              }
            }

            else
            {
              result = 0;
              v22 = 683;
            }
          }

          else
          {
            result = 0;
            v22 = 679;
          }
        }

        else
        {
          result = 0;
          v22 = 677;
        }
      }

      else
      {
        result = 0;
        v22 = 670;
      }

      goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (result >= v26)
  {
    validatePlistObject_cold_5(result, a2, a3, 0, a5, a6, a7, a8);
  }

  v28 = result + v24;
  if (v28 > v25 + v16)
  {
    validatePlistObject_cold_18(result, a2, a3, 0, a5, a6, a7, a8);
  }

  if (v28 > v11)
  {
    validatePlistObject_cold_17(result, a2, a3, 0, a5, a6, a7, a8);
  }

  if ((v14 & 0xFE) == 0xF0)
  {
    if (v24 + 10 > v11)
    {
      validatePlistObject_cold_16(result, a2, a3, 0, a5, a6, a7, a8);
    }

    v29 = (v9 + v24);
    v30 = *(v29 + 2);
    v31 = *(v29 + 6);
    v32 = (v31 + v24);
    if (5 * v30 + v32 > v11)
    {
      validatePlistObject_cold_15(result, a2, a3, 0, a5, a6, a7, a8);
    }

    v33 = *v29;
    if (v33 + 4 < v31)
    {
      validatePlistObject_cold_14(result, v33, a3, 0, a5, a6, a7, a8);
    }

    if (v33 < v30)
    {
      validatePlistObject_cold_13(result, v33, a3, 0, a5, a6, a7, a8);
    }

    if (5 * v30 > (v33 - v31) + 4)
    {
      validatePlistObject_cold_12(result, v33, a3, 0, a5, a6, a7, a8);
    }

    if (v14 == 241)
    {
      if (v24 + 12 > v11)
      {
        validatePlistObject_cold_11(result, v33, a3, 0, a5, a6, a7, a8);
      }

      v34 = *(v29 + 5);
      if (*(v29 + 2) && !v10)
      {
        validatePlistObject_cold_10(result, v33, a3, 0, a5, a6, a7, a8);
      }

      if (!*(v29 + 5))
      {
        validatePlistObject_cold_9(result, v33, a3, 0, a5, a6, a7, a8);
      }

      if (v30 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = *(v29 + 2);
      }

      if (v34 >= 2 * v35)
      {
        validatePlistObject_cold_6(result, v33, a3, 0, a5, a6, a7, a8);
      }

      v36 = 2 * v34 + 2;
      if (v33 + 4 - v31 != 9 * v30 + v36)
      {
        validatePlistObject_cold_7(result, v33, a3, 0, a5, a6, a7, a8);
      }

      if (9 * v30 + v32 + v36 > v11)
      {
        validatePlistObject_cold_8(result, v33, a3, 0, a5, a6, a7, a8);
      }
    }
  }

LABEL_32:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerCopyObject(const __CFAllocator *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(a2 + 2);
  result = __MDPlistContainerCopyObjectErrorCode(a1, &v10, 0, 0, a5, a6, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _MDPlistDictionaryIterateWithError(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = result;
  v8 = *(result + 16);
  v38 = *result;
  v9 = *result + v8;
  if (!*(v9 + 4))
  {
    goto LABEL_27;
  }

  v11 = 0;
  v12 = 0;
  v13 = *(v38 + 10);
  v35 = *(v38 + 6);
  v34 = v35 - v13 - 2;
  v32 = v38 + v13;
  v33 = v13 + 2;
  v31 = v38 + v13 + 2;
  v14 = 2 * *(v9 + 10) + *(v9 + 6) + v8 + v38 + 6;
  while (1)
  {
    v15 = *(v14 - 4);
    v17 = v33 <= v35 && v34 > v15;
    if (!a2)
    {
      if (!v17)
      {
        _MDPlistDictionaryIterateWithError_cold_1(result, a2, a3, a4, a5, a6, a7, a8);
      }

      v18 = *(v32 + v15);
      if ((v15 + v18) + 2 >= (*(v38 + 6) - *(v38 + 10)))
      {
        _MDPlistDictionaryIterateWithError_cold_2(result, a2, a3, a4, a5, a6, a7, a8);
      }

      goto LABEL_18;
    }

    if (*a2)
    {
      v17 = 1;
    }

    if (!v17)
    {
      break;
    }

    if (*a2)
    {
      goto LABEL_27;
    }

    v18 = *(v32 + v15);
    if ((v15 + v18) + 2 >= (*(v38 + 6) - *(v38 + 10)))
    {
      v29 = 1034;
      goto LABEL_26;
    }

LABEL_18:
    v19 = *v36;
    v20 = v36[1];
    v45 = *v14;
    v46 = *(v14 + 4);
    v39 = v19;
    v40 = v20;
    v41 = *v14;
    v42 = *(v14 + 4);
    v43 = 0;
    v44 = 0;
    result = validatePlistObject(v9, &v39, 0, a2, a5, a6, a7, a8);
    v12 += result;
    if (a2)
    {
      if (*a2)
      {
        goto LABEL_27;
      }

      if (v12 > *(v9 + 6))
      {
        v29 = 1050;
        goto LABEL_26;
      }
    }

    else if (v12 > *(v9 + 6))
    {
      _MDPlistDictionaryIterateWithError_cold_3(result, v21, v22, v23, v24, v25, v26, v27);
    }

    v28 = *(a3 + 16);
    v39 = v19;
    v40 = v20;
    v41 = v45;
    v42 = v46;
    v43 = 0;
    v44 = 0;
    result = v28(a3, v31 + v15, v18, &v39);
    ++v11;
    v14 += 9;
    if (v11 >= *(v9 + 4))
    {
      goto LABEL_27;
    }
  }

  v29 = 1027;
LABEL_26:
  *a2 = v29;
LABEL_27:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MDPlistContainerCopyObjectErrorCode(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (a3 >= 1024)
    {
      __MDPlistContainerCopyObjectErrorCode_cold_4(a1, a2, a3, 0, a5, a6, a7, a8);
    }

    v8 = 0;
    v28 = 0;
    v10 = *(a2 + 20);
    if (v10 > 0xE2)
    {
      if (*(a2 + 20) <= 0xF3u)
      {
        switch(v10)
        {
          case 0xE3u:
            v14 = (a2 + 16);
            v15 = kCFNumberFloat32Type;
LABEL_53:
            v12 = CFNumberCreate(a1, v15, v14);
            break;
          case 0xF0u:
            v29 = *a2;
            v30 = *(a2 + 16);
            v12 = copyCFArray(a1, &v29, a3, 0, a5, a6, a7, a8);
            break;
          case 0xF1u:
            v29 = *a2;
            v30 = *(a2 + 16);
            v12 = copyCFDictionary(a1, &v29, a3, 0, a5, a6, a7, a8);
            break;
          default:
            goto LABEL_55;
        }
      }

      else if (v10 - 244 < 2)
      {
        v18 = (*a2 + *(a2 + 16));
        v20 = *v18;
        v19 = (v18 + 1);
        v21 = v20 - (v10 == 244);
        if (v10 == 245)
        {
          v22 = 256;
        }

        else
        {
          v22 = 134217984;
        }

        v12 = CFStringCreateWithBytes(a1, v19, v21, v22, 1u);
      }

      else if (v10 == 246)
      {
        v23 = (*a2 + *(a2 + 16));
        v12 = CFDataCreate(a1, v23 + 4, *v23);
      }

      else
      {
        if (v10 != 247)
        {
          goto LABEL_55;
        }

        v29 = *a2;
        v30 = *(a2 + 16);
        v12 = copyCFURL(a1, &v29, a3, 0, a5, a6, a7, a8);
      }
    }

    else
    {
      if (*(a2 + 20) > 0x32u)
      {
        if (*(a2 + 20) > 0xE0u)
        {
          if (v10 == 225)
          {
            v11 = MEMORY[0x1E695E4D0];
            if (!*(a2 + 16))
            {
              v11 = MEMORY[0x1E695E4C0];
            }

            goto LABEL_49;
          }

          if (v10 != 226)
          {
            goto LABEL_55;
          }

          v14 = (a2 + 16);
          v15 = kCFNumberSInt32Type;
        }

        else
        {
          if (v10 != 51)
          {
            if (v10 != 224)
            {
              goto LABEL_55;
            }

            v11 = MEMORY[0x1E695E738];
LABEL_49:
            v8 = *v11;
            goto LABEL_55;
          }

          v28 = *(*a2 + *(a2 + 16));
          v14 = &v28;
          v15 = kCFNumberFloat64Type;
        }

        goto LABEL_53;
      }

      if (v10 != 11)
      {
        if (v10 == 19)
        {
          v12 = CFDateCreate(a1, *(*a2 + *(a2 + 16)));
          goto LABEL_54;
        }

        if (v10 != 35)
        {
          goto LABEL_55;
        }

        v28 = *(*a2 + *(a2 + 16));
        v14 = &v28;
        v15 = kCFNumberSInt64Type;
        goto LABEL_53;
      }

      v12 = CFUUIDCreateFromUUIDBytes(a1, *(*a2 + *(a2 + 16)));
    }

LABEL_54:
    v8 = v12;
    goto LABEL_55;
  }

  v8 = *a4;
  if (a3 < 1024 || v8)
  {
    if (v8)
    {
      goto LABEL_14;
    }

    v13 = *(a2 + 20);
    if (v13 <= 0xF0)
    {
      if (*(a2 + 20) <= 0x22u)
      {
        if (v13 == 11)
        {
          if (*(a2 + 16) + 16 > *(a2 + 8))
          {
            __MDPlistContainerCopyObjectErrorCode_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
          }

          goto LABEL_14;
        }

        if (v13 != 19)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 35)
        {
          if (*(a2 + 16) + 8 > *(a2 + 8))
          {
            __MDPlistContainerCopyObjectErrorCode_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
          }

          goto LABEL_14;
        }

        if (v13 != 51)
        {
          if (v13 != 240)
          {
            goto LABEL_55;
          }

          if (*(a2 + 16) + 4 > *(a2 + 8))
          {
            v8 = 0;
            v9 = 1348;
            goto LABEL_5;
          }

          v29 = *a2;
          v30 = *(a2 + 16);
          copyCFArray(a1, &v29, a3, a4, a5, a6, a7, a8);
LABEL_14:
          v8 = 0;
          goto LABEL_55;
        }
      }

      if (*(a2 + 16) + 8 > *(a2 + 8))
      {
        __MDPlistContainerCopyObjectErrorCode_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
      }

      goto LABEL_14;
    }

    if (*(a2 + 20) > 0xF5u)
    {
      if (v13 == 246)
      {
        v26 = *(a2 + 16);
        v27 = *(a2 + 8);
        if (v26 + 4 > v27)
        {
          v8 = 0;
          v9 = 1370;
          goto LABEL_5;
        }

        if (v26 + 4 + *(*a2 + v26) > v27)
        {
          v8 = 0;
          v9 = 1374;
          goto LABEL_5;
        }
      }

      else
      {
        if (v13 != 247)
        {
          goto LABEL_55;
        }

        if (*(a2 + 16) + 8 > *(a2 + 8))
        {
          v8 = 0;
          v9 = 1379;
          goto LABEL_5;
        }
      }
    }

    else if (v13 - 244 >= 2)
    {
      if (v13 != 241)
      {
        goto LABEL_55;
      }

      if (*(a2 + 16) + 4 > *(a2 + 8))
      {
        v8 = 0;
        v9 = 1354;
        goto LABEL_5;
      }

      v29 = *a2;
      v30 = *(a2 + 16);
      copyCFDictionary(a1, &v29, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      v16 = *(a2 + 16);
      v17 = *(a2 + 8);
      if (v16 + 4 > v17)
      {
        v8 = 0;
        v9 = 1361;
        goto LABEL_5;
      }

      if (v16 + 4 + *(*a2 + v16) > v17)
      {
        v8 = 0;
        v9 = 1365;
        goto LABEL_5;
      }
    }

    goto LABEL_14;
  }

  v9 = 1339;
LABEL_5:
  *a4 = v9;
LABEL_55:
  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

unint64_t _MDPlistDictionaryIterate(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *(a1 + 2);
  result = _MDPlistDictionaryIterateWithError(&v10, 0, a2, a4, a5, a6, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerGetPlistObjectAtKeyArray(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0uLL;
  v20 = 0;
  MDPlistGetRootPlistObjectFromBuffer(a1 + 32, 0, a3, a5, a6, a7, a8, &v19);
  while (BYTE4(v20) == 241)
  {
    v14 = *a2;
    if (!*a2)
    {
      goto LABEL_8;
    }

    v17 = v19;
    v18 = v20;
    if (!_MDPlistDictionaryGetPlistObjectForKey(&v17, v14, -1, &v19, v10, v11, v12, v13))
    {
      break;
    }

    ++a2;
  }

  if (*a2)
  {
    result = 0;
    goto LABEL_11;
  }

LABEL_8:
  if (a3)
  {
    *a3 = v19;
    *(a3 + 16) = v20;
  }

  result = 1;
LABEL_11:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistDictionaryGetPlistObjectForKey(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v11 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = *(a1 + 16);
  v14 = *a1 + v13;
  v15 = *(v14 + 6);
  v16 = *(v14 + 10);
  if (a3 == -1)
  {
    a1 = strlen(__s);
    v9 = a1;
  }

  if (v16 < 2)
  {
    v17 = 0;
  }

  else
  {
    a1 = MDHash(__s, v9, 0);
    v17 = a1 % *(v14 + 10);
  }

  v18 = (v14 + v15 + 2 * v17);
  v19 = *v18;
  v20 = v18[1];
  if (v19 > v20 || v20 > *(v14 + 4))
  {
    _MDPlistDictionaryGetPlistObjectForKey_cold_3(a1, __s, a3, a4, a5, a6, a7, a8);
  }

  if (v19 >= v20)
  {
    goto LABEL_19;
  }

  v38 = a4;
  v21 = *(v12 + 6);
  v22 = *(v12 + 10);
  if (v22 + 2 > v21)
  {
LABEL_21:
    _MDPlistDictionaryGetPlistObjectForKey_cold_1(a1, __s, a3, a4, a5, a6, a7, a8);
  }

  v23 = 2 * v16;
  v24 = (v21 - v22);
  v25 = v24 - 2;
  v37 = *v11;
  v26 = *v11 + v22;
  v27 = v24 - 2;
  v28 = 9 * v19 + v23 + v15 + v13 + v12 + 6;
  v29 = v20 - v19;
  do
  {
    v30 = *(v28 - 4);
    if (v25 <= v30)
    {
      goto LABEL_21;
    }

    v31 = *(v26 + v30);
    if (v27 <= (v30 + v31))
    {
      _MDPlistDictionaryGetPlistObjectForKey_cold_2(a1, __s, a3, a4, a5, a6, a7, a8);
    }

    if (v9 == v31)
    {
      a1 = memcmp(__s, (v26 + v30 + 2), v9);
      if (!a1)
      {
        goto LABEL_17;
      }
    }

    v28 += 9;
    --v29;
  }

  while (v29);
  v28 = 0;
LABEL_17:
  if (v28)
  {
    v32 = v11[1];
    v33 = *(v28 + 4);
    v41 = *v28;
    v34 = v41;
    v42 = v33;
    *v38 = v37;
    *(v38 + 8) = v32;
    *(v38 + 16) = v34;
    *(v38 + 20) = v33;
    v39 = *v38;
    v40 = *(v38 + 16);
    validatePlistObject(v14, &v39, 0, 0, a5, a6, a7, a8);
    result = 1;
  }

  else
  {
LABEL_19:
    result = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void *_icu_locale_create(char *__s, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!__s || (v2 = __s, !*__s))
  {
    v2 = "en";
  }

  memset(v12, 0, sizeof(v12));
  if (a2)
  {
    v3 = strlen(v2);
    v4 = v3;
    if (v3 < 0x12 || v3 + 18 <= 0xFF && !strchr(v2, 64))
    {
      __memcpy_chk();
      strcpy(v12 + v4, "@collation=search");
      v2 = v12;
    }
  }

  os_unfair_lock_lock(&s_locale_lock);
  v5 = s_locale_dict;
  if (!s_locale_dict)
  {
    v11 = *byte_1F29A6180;
    v5 = CFDictionaryCreateMutable(0, 0, &v11, 0);
    s_locale_dict = v5;
  }

  Value = CFDictionaryGetValue(v5, v2);
  if (!Value)
  {
    Value = malloc_type_calloc(1uLL, 0x58uLL, 0x10300408C324C43uLL);
    *(Value + 1) = strdup(v2);
    atomic_store(1u, Value + 1);
    *Value = 268435457;
    v7 = s_locale_dict;
    v8 = strdup(v2);
    CFDictionarySetValue(v7, v8, Value);
  }

  icu_ctx_retain(Value);
  os_unfair_lock_unlock(&s_locale_lock);
  v9 = *MEMORY[0x1E69E9840];
  return Value;
}

void *icu_locale_create(__CFString *Length, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  if (Length)
  {
    v3 = Length;
    Length = CFStringGetLength(Length);
    if (Length)
    {
      if (CFStringGetCString(v3, v6, 256, 0x8000100u))
      {
        Length = v6;
      }

      else
      {
        Length = 0;
      }
    }
  }

  result = _icu_locale_create(Length, a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _locale_str_hash(const char *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = -1759636613;
  v3 = strlen(a1);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 3;
  }

  v5 = &a1[v4 & 0xFFFFFFFC];
  if ((v3 + 3) >= 7)
  {
    v8 = -(v4 >> 2);
    v9 = -1789642873;
    v10 = 718793509;
    do
    {
      v9 = 5 * v9 + 2071795100;
      v10 = 5 * v10 + 1808688022;
      HIDWORD(v11) = v9 * *&v5[4 * v8];
      LODWORD(v11) = HIDWORD(v11);
      v12 = (v11 >> 21) * v10;
      HIDWORD(v11) = v2;
      LODWORD(v11) = v2;
      v2 = v12 ^ (5 * (v11 >> 19) + 1390208809);
    }

    while (!__CFADD__(v8++, 1));
    v7 = 5 * v9 + 2071795100;
    v6 = 5 * v10 + 1808688022;
  }

  else
  {
    v6 = 1107688271;
    v7 = 1713515327;
  }

  v14 = 0;
  if ((v3 & 3u) > 1)
  {
    if ((v3 & 3) != 2)
    {
      v14 = *(v5 + 2) << 16;
    }

    v14 |= *(v5 + 1) << 8;
  }

  else if ((v3 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v15) = (v14 ^ *v5) * v7;
  LODWORD(v15) = HIDWORD(v15);
  v16 = (v15 >> 21) * v6;
  HIDWORD(v15) = v2;
  LODWORD(v15) = v2;
  v2 = v16 ^ (5 * (v15 >> 19) + 1390208809);
LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  v18 = -1028477387 * ((-2048144789 * (v2 ^ v3)) ^ ((-2048144789 * (v2 ^ v3)) >> 13));
  return v18 ^ HIWORD(v18);
}

BOOL _locale_str_cmp(const char *a1, const char *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = strcmp(a1, a2) == 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

int *icu_ctx_retain(int *result)
{
  v2 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if ((*result - 268435462) <= 0xFFFFFFFA)
    {
      icu_ctx_retain_cold_1(*result);
    }

    atomic_fetch_add(result + 1, 1u);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void icu_search_context_create_with_wildcard_limit(const char *a1, char *a2, char a3, int a4, int a5)
{
  v8 = *MEMORY[0x1E69E9840];
  icu_search_context_create(a1, a2, a3, a4);
  if (v6)
  {
    *(v6 + 40) = a5;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void icu_search_context_create(const char *a1, char *a2, char a3, int a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a4 - 1;
  v9 = (a4 - 1) < 0x63;
  if ((a4 - 1) >= 0x63)
  {
    v10 = 96;
  }

  else
  {
    v10 = 108;
  }

  v11 = malloc_type_calloc(1uLL, v10, 0x1070040181A2D16uLL);
  atomic_store(1u, v11 + 1);
  *v11 = 268435458;
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = "";
  }

  v13 = strdup(v12);
  *(v11 + 2) = v13;
  if (!*v13)
  {
    _icu_search_context_add_type(v11, 128);
    goto LABEL_88;
  }

  v11[67] = (a3 & 8) != 0;
  v11[66] = (a3 & 4 | v11[66]) != 0;
  if ((a3 & 3) != 0 || v8 <= 0x62)
  {
    v11[64] = a3 & 1;
    v11[65] = (a3 & 2) != 0;
    v11[69] = v9;
    *(v11 + 18) = a4;
    v14 = _icu_locale_create(a2, 1);
    *(v11 + 4) = v14;
    collation = icu_locale_get_collation(v14, 1, 1);
    *(v11 + 6) = collation;
    if (!collation)
    {
      free(v11);
      goto LABEL_88;
    }

    *(v11 + 7) = ucol_getLocaleByType();
  }

  v16 = 0;
  for (i = a1; ; ++i)
  {
    v18 = *i;
    if (v18 == 42)
    {
      _icu_search_context_add_string();
      _icu_search_context_add_type(v11, 1);
      v16 = 0;
      continue;
    }

    if (v18 != 92)
    {
      break;
    }

    v19 = i[1] != 0;
    if (i[1])
    {
      ++i;
    }

    v16 |= v19;
LABEL_21:
    ;
  }

  if (*i)
  {
    goto LABEL_21;
  }

  _icu_search_context_add_string();
  v20 = *(v11 + 2);
  if (v11[66] == 1)
  {
    if (v20)
    {
      if (*(*(v11 + 3) + 32 * v20 - 32) == 32)
      {
        *(v11 + 2) = --v20;
        goto LABEL_26;
      }

LABEL_27:
      v21 = *(v11 + 3);
      v22 = &v21[8 * v20];
      if (*(v22 - 8) == 1)
      {
        *(v22 - 8) = 2;
      }

      if (*v21 == 64)
      {
        if (v20 <= 1)
        {
          icu_search_context_destroy(v11);
          goto LABEL_88;
        }

        v21[6] = v21[14];
      }

      if (v20 >= 3 && (v11[65] & 1) != 0)
      {
        v23 = -4;
        v24 = 2;
        v25 = 152;
        do
        {
          v26 = *(v11 + 3);
          v27 = v26 + v25;
          if ((*(v26 + v25 - 128) & 0xE3E) == 0 || *(v27 - 120) != 4 || (*(v26 + v25 - 62) & 0x30F8) == 0)
          {
            goto LABEL_69;
          }

          v28 = *(v27 - 88);
          if (v28 == 16)
          {
            v32 = **(*(v26 + v25 - 80) + 16);
            v33 = v32[1];
            if (v33 == 45)
            {
              goto LABEL_60;
            }

            if (v33 != 239)
            {
              if (v33 != 226 || v32[2] != 128)
              {
                goto LABEL_69;
              }

              v31 = v32[3];
              goto LABEL_53;
            }

            if (v32[2] == 188)
            {
              v34 = v32[3];
LABEL_59:
              if (v34 == 189)
              {
                goto LABEL_60;
              }
            }
          }

          else
          {
            if (v28 != 8)
            {
              goto LABEL_60;
            }

            v29 = *(v26 + v25 - 72);
            v30 = *v29;
            if (v30 == 45)
            {
              goto LABEL_60;
            }

            if (v30 != 239)
            {
              if (v30 != 226 || v29[1] != 128)
              {
                goto LABEL_69;
              }

              v31 = v29[2];
LABEL_53:
              if ((v31 & 0xFE) != 0x90)
              {
                goto LABEL_69;
              }

LABEL_60:
              if (v20 <= v24 + 2 || *(v26 + v25 - 56) != 4 || (*(v26 + v25) & 0xE3E) == 0)
              {
                goto LABEL_69;
              }

              if (v28 == 16)
              {
                term_expansions_release(*(v26 + v25 - 80));
                v26 = *(v11 + 3);
                v35 = (v26 + 32 * v24 + 8);
LABEL_67:
                *v35 = 0;
              }

              else if (v28 == 8)
              {
                free(*(v26 + v25 - 72));
                v26 = *(v11 + 3);
                v35 = (v26 + v25 - 72);
                goto LABEL_67;
              }

              memmove((v26 + v25 - 88), (v26 + v25 - 24), 32 * (v23 + *(v11 + 2)));
              v20 = *(v11 + 2) - 2;
              *(v11 + 2) = v20;
              goto LABEL_69;
            }

            if (v29[1] == 188)
            {
              v34 = v29[2];
              goto LABEL_59;
            }
          }

LABEL_69:
          ++v24;
          --v23;
          v25 += 32;
        }

        while (v24 < v20);
      }

      if ((a3 & 0x10) != 0)
      {
        _icu_search_context_add_type(v11, 2);
      }
    }
  }

  else
  {
LABEL_26:
    if (v20)
    {
      goto LABEL_27;
    }
  }

  if (v8 > 0x62)
  {
    goto LABEL_88;
  }

  v36 = i - a1;
  if (i - a1 >= 1 && a1[v36 - 1] == 42)
  {
    if (v36 == 1 || a1[v36 - 2] != 92)
    {
      v11[68] = 1;
      --v36;
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if ((a3 & 0x10) != 0)
  {
    v11[68] = 1;
  }

LABEL_80:
  if (v36 <= 1)
  {
    v37 = 0;
  }

  else
  {
LABEL_81:
    v37 = *a1 == 42;
    v36 -= v37;
  }

  *(v11 + 22) = 0;
  *(v11 + 10) = UTF16FromUTF8((*(v11 + 2) + v37), v36, 0, v11 + 22);
  v38 = *(v11 + 6);
  v39 = *(v11 + 22);
  v40 = ucol_openElements();
  v41 = -1;
  do
  {
    ++v41;
  }

  while (ucol_next() != -1);
  MEMORY[0x1B2748EB0](v40);
  *(v11 + 23) = v41;
  if (v41 <= 2)
  {
    v11[69] = 0;
    free(*(v11 + 10));
    *(v11 + 10) = 0;
  }

  ucol_closeElements();
  *(v11 + 12) = -1;
  *(v11 + 26) = -1;
LABEL_88:
  v42 = *MEMORY[0x1E69E9840];
}

void _icu_search_context_add_string()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v65 = *MEMORY[0x1E69E9840];
  if (!v2)
  {
    goto LABEL_86;
  }

  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  if (v2 < 1)
  {
    if (v3)
    {
      v15 = malloc_type_malloc(v2 + 1, 0x61DD30F3uLL);
      v18 = v15;
LABEL_34:
      *v18 = 0;
      v5 = v18 - v15;
      v6 = v15;
      goto LABEL_36;
    }

LABEL_35:
    v15 = 0;
LABEL_36:
    if (*(v7 + 32))
    {
      v55 = v15;
      rules = icu_locale_get_rules();
      v61 = 0;
      bzero(v64, 0x1000uLL);
      bzero(v63, 0x1000uLL);
      v54 = icu_build_pattern_key(*(v7 + 48), v6, v5, 0, 0, &v61);
      v22 = icu_term_key_starts(*(v7 + 48), rules, v6, v5, v54, v61, v64, v63, 1024);
      v23 = *(v7 + 32);
      v24 = *(v7 + 65);
      v25 = *(v7 + 64);
      v57 = icu_locale_get_rules();
      collation = icu_locale_get_collation(*(v7 + 32), *(v7 + 65), *(v7 + 64));
      v56 = v22;
      if (v22 >= 1)
      {
        v27 = collation;
        v28 = 0;
        v53 = v6 + 1;
        do
        {
          memset(v62, 0, sizeof(v62));
          v60 = 0;
          v29 = v28 + 1;
          v30 = icu_build_pattern_key(v27, &v6[v64[v28]], v64[v28 + 1] - v64[v28], v62, 32, &v60);
          v58[0] = 0;
          v58[1] = 0;
          v59 = 0;
          v31 = v60;
          icu_rules_find_expansions(v57, v30, v60, 0, v58);
          if (v59)
          {
            v32 = *v59;
            if (*(*v59 + 4) == 1)
            {
              _icu_search_context_add_part(v7, v27, (**(v32 + 16) + 1), ***(v32 + 16), 0, 0);
            }

            else
            {
              _icu_search_context_add_list(v7, v32, &v6[v64[v28]], v64[v29] - v64[v28]);
            }

            if (*(v7 + 65) != 1)
            {
              goto LABEL_72;
            }

            if (v29 == v56)
            {
              goto LABEL_59;
            }

            v41 = v64[v29];
            v34 = v6[v41];
            if ((v34 & 0x80000000) == 0)
            {
              goto LABEL_68;
            }

            v42 = v6[v41] >> 4;
            v43 = utf8_byte_length_utf8_len_table_2[v42];
            v34 = (v34 & utf8_to_code_point_utf8_first_char_mask_1[v43]);
            if ((~v42 & 0xC) != 0)
            {
              goto LABEL_68;
            }

            if (v43 <= 2)
            {
              v44 = 2;
            }

            else
            {
              v44 = utf8_byte_length_utf8_len_table_2[v42];
            }

            v45 = v44 - 1;
            v46 = &v53[v41];
            do
            {
              v47 = *v46++;
              v34 = v47 & 0x3F | (v34 << 6);
              --v45;
            }

            while (v45);
          }

          else
          {
            if (!*(v7 + 8) && (*(v7 + 67) & 1) == 0 && *(v7 + 66) == 1)
            {
              _icu_search_context_add_type(v7, 64);
            }

            _icu_search_context_add_part(v7, v27, &v6[v64[v28]], v64[v29] - v64[v28], v30, v31);
            if (*(v7 + 65) != 1)
            {
              goto LABEL_72;
            }

            if (v29 == v56)
            {
              goto LABEL_59;
            }

            v33 = v64[v29];
            v34 = v6[v33];
            if ((v34 & 0x80000000) == 0 || (v35 = v6[v33] >> 4, v36 = utf8_byte_length_utf8_len_table_2[v35], v34 = (v34 & utf8_to_code_point_utf8_first_char_mask_1[v36]), (~v35 & 0xC) != 0))
            {
LABEL_68:
              v48 = (v34 - 12441) >= 4 && (v34 - 65438) >= 2;
              if (!v48 || unicode_combinable(v34))
              {
                goto LABEL_72;
              }

              goto LABEL_59;
            }

            if (v36 <= 2)
            {
              v37 = 2;
            }

            else
            {
              v37 = utf8_byte_length_utf8_len_table_2[v35];
            }

            v38 = v37 - 1;
            v39 = &v53[v33];
            do
            {
              v40 = *v39++;
              v34 = v40 & 0x3F | (v34 << 6);
              --v38;
            }

            while (v38);
          }

          if (v34 < 0x10000)
          {
            goto LABEL_68;
          }

          v49 = v34 - 917760;
          v50 = v34 - 127995;
          if (v49 < 0xF0 || v50 < 5)
          {
            goto LABEL_72;
          }

LABEL_59:
          _icu_search_context_add_type(v7, 4);
LABEL_72:
          if (v30 != v62)
          {
            free(v30);
          }

          ++v28;
        }

        while (v29 != v56);
      }

      free(v54);
      v15 = v55;
      if (v56)
      {
        if (!v55)
        {
          goto LABEL_86;
        }

LABEL_85:
        free(v15);
        goto LABEL_86;
      }
    }

    else if (v5 && !*(v7 + 8) && (*(v7 + 67) & 1) == 0 && *(v7 + 66) == 1)
    {
      _icu_search_context_add_type(v7, 64);
    }

    _icu_search_context_add_part(v7, 0, v6, v5, 0, 0);
    if (!v15)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v8 = v2 - 1;
  v9 = 1;
  while (1)
  {
    v10 = v6[v8];
    if (v10 > -65)
    {
      break;
    }

    v11 = utf8_back1SafeBody(v6, 0, v8);
    v12 = v6[v11];
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    if (v9 <= 3)
    {
      --v8;
      if (v9++ < v5)
      {
        continue;
      }
    }

    if (v4)
    {
      v15 = malloc_type_malloc(v5 + 1, 0x61DD30F3uLL);
      v16 = 0;
      v17 = 0;
      v18 = v15;
      do
      {
        if (v6[v16] == 92)
        {
          ++v17;
        }

        *v18++ = v6[v17];
        v16 = ++v17;
      }

      while (v17 < v5);
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v12 = v6[v8];
  v11 = v8;
  if ((v10 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  v13 = v11 + 1;
  if (v13 == v5)
  {
    goto LABEL_29;
  }

  if (v12 < 0xE0)
  {
    if (v12 < 0xC2)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v12 <= 0xEF)
  {
    if (((a00000000000000[v12 & 0xF] >> (v6[v13] >> 5)) & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (v12 <= 0xF4 && ((byte_1B23E4235[v6[v13] >> 4] >> (v12 + 16)) & 1) != 0)
  {
    v13 = v11 + 2;
    if (v13 != v5 && v6[v13] <= -65)
    {
LABEL_19:
      v13 = v13 + 1;
      if (v13 == v5)
      {
        goto LABEL_29;
      }

LABEL_20:
      if (v6[v13] >= -64)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

LABEL_29:
  v19 = *__error();
  v20 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    _icu_search_context_add_string_cold_1(v20);
  }

  *__error() = v19;
LABEL_86:
  v52 = *MEMORY[0x1E69E9840];
}

void _icu_search_context_add_part(uint64_t a1, unint64_t a2, char *a3, int a4, void *a5, int a6)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    goto LABEL_62;
  }

  v6 = a4;
  if (a4 > 253)
  {
    v13 = 0;
LABEL_56:
    v37 = *(a1 + 8);
    if (v37 && (v38 = v37 - 1, v39 = *(a1 + 24) + 32 * (v37 - 1), *v39 == 8))
    {
      v40 = *(v39 + 16);
      v41 = strlen(v40);
      v42 = v6 + v41;
      v43 = malloc_type_realloc(v40, v42 + 1, 0x24C78A59uLL);
      *(*(a1 + 24) + 32 * v38 + 16) = v43;
      memcpy(&v43[v41], a3, v6);
      *(*(*(a1 + 24) + 32 * v38 + 16) + v42) = 0;
    }

    else
    {
      _icu_search_context_grow(a1);
      *(*(a1 + 24) + 32 * *(a1 + 8) + 8) = 0;
      v44 = malloc_type_malloc(v6 + 1, 0x10469CFDuLL);
      *(*(a1 + 24) + 32 * *(a1 + 8) + 16) = v44;
      memcpy(v44, a3, v6);
      *(*(*(a1 + 24) + 32 * *(a1 + 8) + 16) + v6) = 0;
      char_category_mask = icu_get_char_category_mask(a3);
      v46 = *(a1 + 8);
      v47 = (*(a1 + 24) + 32 * v46);
      v47[6] = char_category_mask;
      *(a1 + 8) = v46 + 1;
      *v47 = 8;
    }

    goto LABEL_60;
  }

  if (*(a1 + 65) == 1)
  {
    collation = a2;
    if (a2)
    {
      v12 = 0;
    }

    else
    {
      *dest = 0;
      v15 = *(a1 + 48);
      LocaleByType = ucol_getLocaleByType();
      v17 = strchr(LocaleByType, 64);
      v12 = 0;
      if (v17)
      {
        v18 = v17 - LocaleByType;
      }

      else
      {
        v18 = 0;
      }

      if ((v18 - 1) <= 0x1E)
      {
        __s1 = 0u;
        v60 = 0u;
        __strncpy_chk();
        v19 = _icu_locale_create(&__s1, 0);
        v12 = v19;
        if (v19)
        {
          collation = icu_locale_get_collation(v19, *(a1 + 65), *(a1 + 64));
        }

        else
        {
          collation = 0;
        }
      }
    }

    if (v6 < 1)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      __s2 = a5;
      v13 = 0;
      v20 = 0;
      v21 = a3;
      do
      {
        v22 = *v21;
        v23 = *v21 >> 4;
        if (v22 < 0)
        {
          v24 = utf8_byte_length_utf8_len_table_2[v23];
          v25 = (v22 & utf8_to_code_point_utf8_first_char_mask_1[v24]);
          if ((~v23 & 0xC) != 0)
          {
            v22 = (v22 & utf8_to_code_point_utf8_first_char_mask_1[v24]);
          }

          else
          {
            if (v24 <= 2)
            {
              v26 = 2;
            }

            else
            {
              v26 = utf8_byte_length_utf8_len_table_2[v23];
            }

            v27 = v26 - 1;
            v28 = v21 + 1;
            do
            {
              v29 = *v28++;
              v22 = v29 & 0x3F | (v25 << 6);
              v25 = v22;
              --v27;
            }

            while (v27);
          }
        }

        v30 = utf8_byte_length_noerror_utf8_len_table_2[v23];
        if (_codepoint_is_combining(v22) && (bzero(&__s1, 0x400uLL), *dest = 0, icu_build_pattern_key(collation, v21, v30, &__s1, 1024, dest), !*dest))
        {
          if (!v13)
          {
            v13 = malloc_type_malloc((v6 + 1), 0xBE730A2BuLL);
            memcpy(v13, a3, v21 - a3);
            v20 = &v13[v21 - a3];
          }
        }

        else if (v20)
        {
          memcpy(v20, v21, v30);
          v20 += v30;
        }

        v21 += v30;
      }

      while (v21 < &a3[v6]);
      v14 = 0;
      if (v13)
      {
        if (v20)
        {
          v14 = 0;
          if (a6)
          {
            if (v20 != v13)
            {
              bzero(&__s1, 0x400uLL);
              *dest = 0;
              icu_build_pattern_key(collation, v13, v20 - v13, &__s1, 1024, dest);
              if (*dest == a6 && !memcmp(&__s1, __s2, a6))
              {
                *v20 = 0;
                v49 = term_expansions_insert(0, 0, a3, v6);
                v14 = term_expansions_insert(v49, 0, v13, v20 - v13);
                v6 = v20 - v13;
                a3 = v13;
              }

              else
              {
                v14 = 0;
              }
            }
          }
        }
      }
    }

    icu_ctx_release(v12);
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  if (*(a1 + 64) == 1)
  {
    v61 = 0u;
    v62 = 0u;
    __s1 = 0u;
    v60 = 0u;
    *srcLength = 0;
    v57 = 0u;
    v58 = 0u;
    *dest = 0u;
    v56 = 0u;
    *__s = 0u;
    v54 = 0u;
    pErrorCode = U_ZERO_ERROR;
    strFromUTF8(&__s1, 32, &srcLength[1], a3, v6, &pErrorCode);
    v31 = u_strToLower(dest, 32, &__s1, srcLength[1], *(a1 + 56), &pErrorCode);
    if (pErrorCode <= U_ZERO_ERROR)
    {
      v32 = v31;
      if (v31 != srcLength[1] || memcmp(&__s1, dest, 2 * v31))
      {
        strToUTF8(__s, 32, srcLength, dest, v32, &pErrorCode);
        v33 = term_expansions_insert(v14, 0, __s, srcLength[0]);
        v14 = term_expansions_insert(v33, 0, a3, v6);
        v32 = srcLength[1];
      }
    }

    else
    {
      v32 = srcLength[1];
    }

    v34 = u_strToUpper(dest, 32, &__s1, v32, *(a1 + 56), &pErrorCode);
    if (pErrorCode <= U_ZERO_ERROR)
    {
      v35 = v34;
      if (v34 != srcLength[1] || memcmp(&__s1, dest, 2 * v34))
      {
        strToUTF8(__s, 32, srcLength, dest, v35, &pErrorCode);
        v36 = term_expansions_insert(v14, 0, __s, srcLength[0]);
        v14 = term_expansions_insert(v36, 0, a3, v6);
      }
    }
  }

  if (!v14)
  {
    goto LABEL_56;
  }

  _icu_search_context_add_list(a1, v14, 0, 0);
  term_expansions_release(v14);
LABEL_60:
  if (v13)
  {
    free(v13);
  }

LABEL_62:
  v48 = *MEMORY[0x1E69E9840];
}

void icu_ctx_release(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_12;
  }

  v2 = *a1;
  if ((v2 - 268435462) <= 0xFFFFFFFA)
  {
    icu_ctx_release_cold_2(v2);
  }

  if (atomic_fetch_add((a1 + 4), 0xFFFFFFFF) != 1)
  {
LABEL_12:
    v5 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = *a1;
  if (*a1 <= 268435458)
  {
    if (v3 == 268435457)
    {
      *a1 = 0;
      if (atomic_load((a1 + 16)))
      {
        atomic_load((a1 + 16));
        ucol_close();
      }

      if (atomic_load((a1 + 24)))
      {
        atomic_load((a1 + 24));
        ucol_close();
      }

      if (atomic_load((a1 + 32)))
      {
        atomic_load((a1 + 32));
        ucol_close();
      }

      if (atomic_load((a1 + 40)))
      {
        atomic_load((a1 + 40));
        ucol_close();
      }

      icu_rules_free(*(a1 + 48));
      icu_rules_free(*(a1 + 56));
      icu_rules_free(*(a1 + 64));
      icu_rules_free(*(a1 + 72));
      free(*(a1 + 8));
      goto LABEL_31;
    }

    if (v3 != 268435458)
    {
      goto LABEL_35;
    }

    v6 = *MEMORY[0x1E69E9840];

    icu_search_context_destroy(a1);
  }

  else
  {
    if (v3 == 268435459)
    {
      *a1 = 0;
      uregex_close(*(a1 + 8));
LABEL_31:
      v12 = *MEMORY[0x1E69E9840];

      free(a1);
      return;
    }

    if (v3 != 268435460)
    {
      if (v3 == 268435461)
      {
        if (*(a1 + 8))
        {
          v4 = 0;
          do
          {
            icu_ctx_release(*(a1 + 32 + 8 * v4++));
          }

          while (v4 < *(a1 + 8));
        }

        goto LABEL_31;
      }

LABEL_35:
      icu_ctx_release_cold_1(v3);
    }

    v7 = *MEMORY[0x1E69E9840];

    icu_range_search_destroy(a1);
  }
}

void *_icu_search_context_grow(void *result)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(result + 3);
  if (*(result + 2) >= v1)
  {
    v2 = result;
    if (v1)
    {
      v3 = 2 * v1;
    }

    else
    {
      v3 = 2;
    }

    *(result + 3) = v3;
    result = malloc_type_realloc(*(result + 3), 32 * v3, 0x10300409F66AF54uLL);
    v2[3] = result;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL icu_search_match(_BOOL8 result, const char *a2, void *a3, uint64_t *a4, int a5)
{
  v482 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_791;
  }

  v5 = a2;
  v6 = result;
  result = 0;
  if (!a2)
  {
    goto LABEL_791;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    goto LABEL_791;
  }

  if (*(v6 + 69) == 1)
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v480;
    }

    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = v481;
    }

    result = fuzzy_matches(v6, a2, *(v6 + 72), v9, v10);
    goto LABEL_791;
  }

  v470 = a5;
  v467 = a3;
  v468 = a4;
  v11 = &v464;
  MEMORY[0x1EEE9AC00](v7, 0, 16 * v7, a3, a4);
  v13 = &v464 - 2 * v12;
  bzero(v13, v14);
  v476 = 0;
  v477 = 0;
  v15 = 0;
  v469 = 0;
  *v13 = 0;
  v13[1] = v5;
  v472 = v5;
  v473 = v13;
  v16 = *(v6 + 24);
  v474 = *v16;
  v475 = *(v16 + 8);
  v17 = *(v16 + 24);
  v471 = v5;
  while (1)
  {
LABEL_13:
    while (v15 <= 5)
    {
      if (v15 > 2)
      {
        if ((v15 - 4) >= 2)
        {
          if (v15 == 3)
          {
            goto LABEL_424;
          }

LABEL_860:
          __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3489, "false", "", *(v6 + 16), v477, *(v6 + 8));
          goto LABEL_856;
        }

        goto LABEL_54;
      }

      if (v15)
      {
        if (v15 == 1)
        {
          goto LABEL_96;
        }

        if (v15 != 2)
        {
          goto LABEL_860;
        }

        v25 = *v5;
        if (v25 < 0)
        {
          v26 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
          v27 = (v25 & utf8_to_code_point_utf8_first_char_mask_1[v26]);
          if ((~(*v5 >> 4) & 0xC) != 0)
          {
            v25 = (v25 & utf8_to_code_point_utf8_first_char_mask_1[v26]);
          }

          else
          {
            if (v26 <= 2)
            {
              v28 = 2;
            }

            else
            {
              v28 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
            }

            v29 = v28 - 1;
            v30 = v5 + 1;
            do
            {
              v31 = *v30++;
              v25 = v31 & 0x3F | (v27 << 6);
              v27 = v25;
              --v29;
            }

            while (v29);
          }
        }

        if (((v17 >> u_charType(v25)) & 1) == 0)
        {
          goto LABEL_423;
        }

        if (*(v6 + 65) != 1 || (v187 = v475, (*(v475 + 8) & 1) != 0))
        {
          v245 = *(v475 + 4);
          if (!v245)
          {
            goto LABEL_423;
          }

          v246 = 0;
          while (1)
          {
            v247 = *(*(v475 + 16) + 8 * v246);
            v248 = *(v247 + 1);
            if (v248 > *v5)
            {
              goto LABEL_423;
            }

            if (!*(v247 + 1))
            {
              break;
            }

            v249 = (v247 + 2);
            v250 = v5;
            while (1)
            {
              v251 = *v250;
              if (v251 < 2 || v248 != v251)
              {
                break;
              }

              ++v250;
              v253 = *v249++;
              v248 = v253;
              if (!v253)
              {
                goto LABEL_750;
              }
            }

            if (++v246 == v245)
            {
              goto LABEL_423;
            }
          }

          v250 = v5;
LABEL_750:
          v417 = v477 + 1;
          v418 = *(v6 + 8);
          v477 = v417;
          if (v417 < v418)
          {
            v419 = *(v6 + 24) + 32 * v417;
            v420 = *v419;
            v475 = *(v419 + 8);
            v17 = *(v419 + 24);
            v474 = v420;
            if (v470)
            {
              v421 = v420 == 16 || v420 == 8;
              if (v421 && (v17 & 0x1000) == 0 && *v250 == 32 && v250[1] > 1u)
              {
                ++v250;
              }
            }
          }

          v15 = 0;
          v422 = v477;
          v423 = &v473[2 * v476];
          *v423 = 0;
          *(v423 + 1) = v422;
          v423[1] = v250;
          v5 = v250;
        }

        else
        {
          if (!*(v475 + 4))
          {
            goto LABEL_423;
          }

          v188 = 0;
          v465 = v475;
          v466 = v11;
          while (1)
          {
            v189 = *(*(v187 + 16) + 8 * v188);
            v192 = *(v189 + 1);
            v191 = (v189 + 1);
            v190 = v192;
            v193 = *v5;
            if (v192 > v193)
            {
              goto LABEL_423;
            }

            if (!v190)
            {
              break;
            }

            v194 = v5;
            while (v193 >= 2)
            {
              if (v190 == v193)
              {
                ++v191;
                v195 = (v194 + 1);
                goto LABEL_405;
              }

              if (v5 != v194 && v193 < 0)
              {
                v196 = v193 >> 4;
                v197 = ~v196;
                v198 = utf8_byte_length_utf8_len_table_2[v196];
                v199 = utf8_to_code_point_utf8_first_char_mask_1[v198] & v193;
                if ((v197 & 0xC) != 0)
                {
                  goto LABEL_321;
                }

                v198 = v198 <= 2 ? 2 : v198;
                v200 = v198 - 1;
                v201 = v194 + 1;
                do
                {
                  v202 = *v201++;
                  v199 = v202 & 0x3F | (v199 << 6);
                  --v200;
                }

                while (v200);
                if (v199 < 0x10000)
                {
LABEL_321:
                  if ((v199 - 12441) >= 4 && (v199 - 65438) >= 2)
                  {
                    if (!unicode_combinable(v199))
                    {
                      goto LABEL_373;
                    }

                    v190 = *v191;
                  }
                }

                else
                {
                  v222 = v199 - 917760;
                  v223 = v199 - 127995;
                  if (v222 >= 0xF0 && v223 > 4)
                  {
                    goto LABEL_373;
                  }
                }

                if ((v190 & 0x80) == 0)
                {
                  goto LABEL_326;
                }

                v214 = v190 >> 4;
                v215 = ~v214;
                v216 = utf8_byte_length_utf8_len_table_2[v214];
                v217 = utf8_to_code_point_utf8_first_char_mask_1[v216] & v190;
                if ((v215 & 0xC) != 0)
                {
                  goto LABEL_354;
                }

                v216 = v216 <= 2 ? 2 : v216;
                v218 = v216 - 1;
                v219 = v191 + 1;
                do
                {
                  v220 = *v219++;
                  v217 = v220 & 0x3F | (v217 << 6);
                  --v218;
                }

                while (v218);
                if (v217 < 0x10000)
                {
LABEL_354:
                  v221 = (v217 - 12441) >= 4 && (v217 - 65438) >= 2;
                  if (v221 && !unicode_combinable(v217))
                  {
                    goto LABEL_326;
                  }
                }

                else
                {
                  v225 = v217 - 917760;
                  v226 = v217 - 127995;
                  if (v225 >= 0xF0 && v226 >= 5)
                  {
LABEL_326:
                    v195 = &v194[utf8_byte_length_noerror_utf8_len_table_2[*v194 >> 4]];
                    v204 = *v195;
                    if (v204 < 0)
                    {
                      while (1)
                      {
                        v205 = v204 >> 4;
                        v206 = utf8_byte_length_utf8_len_table_2[v205];
                        v207 = (utf8_to_code_point_utf8_first_char_mask_1[v206] & v204);
                        if ((~v205 & 0xC) != 0)
                        {
                          goto LABEL_334;
                        }

                        v208 = v206 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v205];
                        v209 = 1;
                        do
                        {
                          v207 = v195[v209++] & 0x3F | (v207 << 6);
                        }

                        while (v208 != v209);
                        if (v207 < 0x10000)
                        {
LABEL_334:
                          if ((v207 - 12441) >= 4 && (v207 - 65438) >= 2)
                          {
                            if (!unicode_combinable(v207))
                            {
                              goto LABEL_405;
                            }

                            v205 = *v195 >> 4;
                          }
                        }

                        else
                        {
                          v211 = v207 - 917760;
                          v212 = v207 - 127995;
                          if (v211 >= 0xF0 && v212 > 4)
                          {
                            goto LABEL_405;
                          }
                        }

                        v195 += utf8_byte_length_noerror_utf8_len_table_2[v205];
                        v204 = *v195;
                        if ((v204 & 0x80000000) == 0)
                        {
                          goto LABEL_405;
                        }
                      }
                    }

                    goto LABEL_405;
                  }
                }
              }

LABEL_373:
              v228 = *v194;
              if (v228 > 0xE1)
              {
                if (v228 == 239)
                {
                  if (v194[1] != 188 || v194[2] != 189)
                  {
                    break;
                  }
                }

                else if (v228 != 226 || v194[1] != 128 || (v194[2] & 0xFE) != 0x90)
                {
                  break;
                }

LABEL_384:
                v229 = 3646;
                goto LABEL_385;
              }

              if (v228 == 45)
              {
                goto LABEL_384;
              }

              if (v228 != 46)
              {
                break;
              }

              v229 = 62;
LABEL_385:
              v230 = *v191;
              if (v230 < 0)
              {
                v231 = utf8_byte_length_utf8_len_table_2[*v191 >> 4];
                v232 = (v230 & utf8_to_code_point_utf8_first_char_mask_1[v231]);
                if ((~(*v191 >> 4) & 0xC) != 0)
                {
                  v230 = (v230 & utf8_to_code_point_utf8_first_char_mask_1[v231]);
                }

                else
                {
                  if (v231 <= 2)
                  {
                    v233 = 2;
                  }

                  else
                  {
                    v233 = utf8_byte_length_utf8_len_table_2[*v191 >> 4];
                  }

                  v234 = v233 - 1;
                  v235 = v191 + 1;
                  do
                  {
                    v236 = *v235++;
                    v230 = v236 & 0x3F | (v232 << 6);
                    v232 = v230;
                    --v234;
                  }

                  while (v234);
                }
              }

              if (((v229 >> u_charType(v230)) & 1) == 0)
              {
                break;
              }

              v237 = utf8_byte_length_noerror_utf8_len_table_2[*v194 >> 4];
              v195 = &v194[v237];
              v238 = v194[v237];
              if (v238 < 0)
              {
                v239 = utf8_byte_length_utf8_len_table_2[v194[v237] >> 4];
                v240 = (v238 & utf8_to_code_point_utf8_first_char_mask_1[v239]);
                if ((~(v194[v237] >> 4) & 0xC) != 0)
                {
                  v238 = (v238 & utf8_to_code_point_utf8_first_char_mask_1[v239]);
                }

                else
                {
                  if (v239 <= 2)
                  {
                    v241 = 2;
                  }

                  else
                  {
                    v241 = utf8_byte_length_utf8_len_table_2[v194[v237] >> 4];
                  }

                  v242 = v241 - 1;
                  v243 = &v194[v237 + 1];
                  do
                  {
                    v244 = *v243++;
                    v238 = v244 & 0x3F | (v240 << 6);
                    v240 = v238;
                    --v242;
                  }

                  while (v242);
                }
              }

              if (((v229 >> u_charType(v238)) & 1) == 0)
              {
                break;
              }

LABEL_405:
              v190 = *v191;
              if (!*v191)
              {
                v194 = v195;
                v11 = v466;
                goto LABEL_576;
              }

              v193 = *v195;
              v194 = v195;
            }

            v11 = v466;
            if (!*v191)
            {
              goto LABEL_576;
            }

            ++v188;
            v187 = v465;
            if (v188 >= *(v465 + 4))
            {
LABEL_423:
              if (!*(&v475 + 1))
              {
LABEL_470:
                if (!v476)
                {
                  goto LABEL_784;
                }

                v279 = v476 - 1;
                v73 = v473;
                goto LABEL_472;
              }

LABEL_424:
              v466 = v11;
              v254 = *(&v475 + 1);
              v255 = **(&v475 + 1);
              if (**(&v475 + 1))
              {
                v256 = v5;
                while (1)
                {
                  v257 = *v256;
                  if (v257 < 2)
                  {
                    goto LABEL_476;
                  }

                  v258 = *v256;
                  if ((v257 & 0x80) != 0)
                  {
                    v259 = utf8_byte_length_utf8_len_table_2[v257 >> 4];
                    v260 = utf8_to_code_point_utf8_first_char_mask_1[v259] & v257;
                    if ((~(v257 >> 4) & 0xC) != 0)
                    {
                      v258 = utf8_to_code_point_utf8_first_char_mask_1[v259] & v257;
                    }

                    else
                    {
                      if (v259 <= 2)
                      {
                        v261 = 2;
                      }

                      else
                      {
                        v261 = utf8_byte_length_utf8_len_table_2[v257 >> 4];
                      }

                      v262 = v261 - 1;
                      v263 = (v256 + 1);
                      do
                      {
                        v264 = *v263++;
                        v258 = v264 & 0x3F | (v260 << 6);
                        v260 = v258;
                        --v262;
                      }

                      while (v262);
                    }
                  }

                  v265 = v255;
                  if ((v255 & 0x80) != 0)
                  {
                    v266 = v255 >> 4;
                    v267 = ~v266;
                    v268 = utf8_byte_length_utf8_len_table_2[v266];
                    v269 = utf8_to_code_point_utf8_first_char_mask_1[v268] & v255;
                    if ((v267 & 0xC) != 0)
                    {
                      v265 = utf8_to_code_point_utf8_first_char_mask_1[v268] & v255;
                    }

                    else
                    {
                      if (v268 <= 2)
                      {
                        v268 = 2;
                      }

                      else
                      {
                        v268 = v268;
                      }

                      v270 = v268 - 1;
                      v271 = (v254 + 1);
                      do
                      {
                        v272 = *v271++;
                        v265 = v272 & 0x3F | (v269 << 6);
                        v269 = v265;
                        --v270;
                      }

                      while (v270);
                    }
                  }

                  v273 = utf8_byte_length_noerror_utf8_len_table_2[v257 >> 4];
                  if (v258 == v265)
                  {
                    v254 += utf8_byte_length_noerror_utf8_len_table_2[v257 >> 4];
                    v274 = &v256[utf8_byte_length_noerror_utf8_len_table_2[v257 >> 4]];
                  }

                  else if (*(v6 + 65))
                  {
                    if (u_charType(v258) == 6)
                    {
                      bzero(v480, 0x400uLL);
                      v481[0] = 0;
                      icu_build_pattern_key(*(v6 + 48), v256, v273, v480, 1024, v481);
                      v275 = v481[0];
                      if (v481[0])
                      {
                        v276 = 0;
                      }

                      else
                      {
                        v276 = v273;
                      }

                      v274 = &v256[v276];
                      v256 = v274;
                      goto LABEL_462;
                    }

                    if (u_charType(v265) == 6)
                    {
                      bzero(v480, 0x400uLL);
                      v481[0] = 0;
                      icu_build_pattern_key(*(v6 + 48), v254, v273, v480, 1024, v481);
                      v275 = v481[0];
                      if (v481[0])
                      {
                        v277 = 0;
                      }

                      else
                      {
                        v277 = v273;
                      }

                      v254 += v277;
                      v274 = v256;
LABEL_462:
                      if (v275)
                      {
                        goto LABEL_474;
                      }

                      goto LABEL_463;
                    }

                    if ((v258 - 127995) > 4)
                    {
                      goto LABEL_474;
                    }

                    v274 = v256 + 4;
                    if ((v265 - 127995) >= 5)
                    {
                      v278 = 0;
                    }

                    else
                    {
                      v278 = v273;
                    }

                    v254 += v278;
                  }

                  else
                  {
                    if (!v470)
                    {
                      goto LABEL_474;
                    }

                    if (v258 != 32)
                    {
                      goto LABEL_474;
                    }

                    v274 = &v256[v273];
                    if (v256[v273] != v255)
                    {
                      goto LABEL_474;
                    }
                  }

LABEL_463:
                  v255 = *v254;
                  v256 = v274;
                  if (!*v254)
                  {
                    goto LABEL_474;
                  }
                }
              }

              v256 = v5;
LABEL_474:
              if (*v256 > 1u)
              {
LABEL_556:
                if (!*v254)
                {
                  goto LABEL_559;
                }

                if (!v476)
                {
                  goto LABEL_784;
                }

                v321 = &v473[2 * v476 - 2];
                v15 = *v321;
                v322 = *(v321 + 1);
                v5 = v321[1];
                v323 = *(v6 + 24) + 32 * v322;
                v474 = *v323;
                v475 = *(v323 + 8);
                v17 = *(v323 + 24);
                v476 = v476 - 1;
                v477 = v322;
              }

              else
              {
                v255 = *v254;
                if (*v254)
                {
LABEL_476:
                  if (*(v6 + 65) == 1)
                  {
                    v283 = v255;
                    if ((v255 & 0x80) != 0)
                    {
                      v284 = v255 >> 4;
                      v285 = ~v284;
                      v286 = utf8_byte_length_utf8_len_table_2[v284];
                      v287 = utf8_to_code_point_utf8_first_char_mask_1[v286] & v255;
                      if ((v285 & 0xC) != 0)
                      {
                        v283 = utf8_to_code_point_utf8_first_char_mask_1[v286] & v255;
                      }

                      else
                      {
                        if (v286 <= 2)
                        {
                          v286 = 2;
                        }

                        else
                        {
                          v286 = v286;
                        }

                        v288 = v286 - 1;
                        v289 = (v254 + 1);
                        do
                        {
                          v290 = *v289++;
                          v283 = v290 & 0x3F | (v287 << 6);
                          v287 = v283;
                          --v288;
                        }

                        while (v288);
                      }
                    }

                    if ((v283 - 127995) <= 4)
                    {
                      v254 += utf8_byte_length_noerror_utf8_len_table_2[v255 >> 4];
                    }
                  }

                  goto LABEL_556;
                }

LABEL_559:
                v324 = v477 + 1;
                if (v324 < *(v6 + 8))
                {
                  v325 = *(v6 + 24) + 32 * v324;
                  v474 = *v325;
                  v475 = *(v325 + 8);
                  v17 = *(v325 + 24);
                }

                v15 = 0;
                v326 = &v473[2 * v476];
                *v326 = 0;
                *(v326 + 1) = v324;
                v326[1] = v256;
                v5 = v256;
                v477 = v324;
              }

              v11 = v466;
              goto LABEL_13;
            }
          }

          v194 = v5;
LABEL_576:
          v330 = *(v6 + 8);
          v477 = v477 + 1;
          if (v477 < v330)
          {
            v331 = *(v6 + 24) + 32 * v477;
            v332 = *v331;
            v475 = *(v331 + 8);
            v17 = *(v331 + 24);
            v474 = v332;
            if (v470)
            {
              v333 = v332 == 16 || v332 == 8;
              if (v333 && (v17 & 0x1000) == 0 && *v194 == 32 && v194[1] > 1u)
              {
                ++v194;
              }
            }
          }

          v15 = 0;
          v356 = v477;
          v357 = &v473[2 * v476];
          *v357 = 0;
          *(v357 + 1) = v356;
          v357[1] = v194;
          v5 = v194;
        }
      }

      else
      {
        v71 = *(v6 + 8);
        if (v477 >= v71)
        {
          v106 = *v5;
          if (v106 < 2)
          {
            goto LABEL_785;
          }

          if (*(v6 + 66) == 1)
          {
            v107 = v471;
            if ((v106 & 0x80) != 0)
            {
              v108 = utf8_byte_length_utf8_len_table_2[v106 >> 4];
              v109 = utf8_to_code_point_utf8_first_char_mask_1[v108] & v106;
              if ((~(v106 >> 4) & 0xC) != 0)
              {
                LODWORD(v106) = utf8_to_code_point_utf8_first_char_mask_1[v108] & v106;
              }

              else
              {
                if (v108 <= 2)
                {
                  v110 = 2;
                }

                else
                {
                  v110 = utf8_byte_length_utf8_len_table_2[v106 >> 4];
                }

                v111 = v110 - 1;
                v112 = v5 + 1;
                do
                {
                  v113 = *v112++;
                  LODWORD(v106) = v113 & 0x3F | (v109 << 6);
                  v109 = v106;
                  --v111;
                }

                while (v111);
              }
            }

            v334 = u_charType(v106);
            v335 = 1 << v334;
            if (((1 << v334) & 0x7000) != 0)
            {
              goto LABEL_785;
            }

            v336 = v334;
            v337 = v5;
            if (v5 > v107)
            {
              v338 = v5;
              do
              {
                while (1)
                {
                  v337 = v338 - 1;
                  v339 = *(v338 - 1);
                  if ((v339 & 0xC0) != 0x80)
                  {
                    break;
                  }

LABEL_604:
                  --v338;
                  if (v337 <= v107)
                  {
                    goto LABEL_617;
                  }
                }

                if ((v339 & 0x80) == 0)
                {
                  break;
                }

                v340 = 0;
                v341 = utf8_byte_length_utf8_len_table_2[v339 >> 4];
                v342 = utf8_to_code_point_utf8_first_char_mask_1[v341] & v339;
                if (v341 <= 2)
                {
                  v343 = 2;
                }

                else
                {
                  v343 = utf8_byte_length_utf8_len_table_2[v339 >> 4];
                }

                v344 = v343 - 1;
                do
                {
                  v345 = v338[v340++] & 0x3F | (v342 << 6);
                  v342 = v345;
                }

                while (v344 != v340);
                if (v345 >= 0x10000)
                {
                  v348 = ((v345 - 127995) < 5 || (v345 - 917760) < 0xF0) && v337 > v107;
                }

                else
                {
                  if ((v345 - 12441) < 4 || (v345 - 65438) < 2)
                  {
                    goto LABEL_604;
                  }

                  if (unicode_combinable(v345))
                  {
                    v348 = v337 > v107;
                  }

                  else
                  {
                    v348 = 0;
                  }
                }

                v338 = v337;
              }

              while (v348);
            }

LABEL_617:
            v349 = utf8_to_code_point(v337);
            v350 = u_charType(v349);
            v351 = 1 << v350;
            if (((1 << v350) & 0x3E) != 0)
            {
              if ((v335 & 0x3E) != 0)
              {
                v352 = v473;
                v353 = v476;
                if ((v336 & 0xFFFFFFFE) == 4)
                {
                  goto LABEL_785;
                }

                if (v336 == 1)
                {
                  if (v350 != 1)
                  {
                    goto LABEL_785;
                  }

                  v354 = utf8_to_code_point(&v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]]);
                  v136 = u_charType(v354) == 2;
                  v469 |= v136;
                }

                else
                {
                  LOBYTE(v136) = 0;
                }

LABEL_744:
                if (v136)
                {
                  goto LABEL_784;
                }

                v413 = __OFSUB__(v353, 1);
                v414 = (v353 - 1);
                if (v414 < 0 != v413)
                {
                  goto LABEL_784;
                }

                v476 = v414;
                v415 = &v352[2 * v414];
                v15 = *v415;
                v294 = *(v415 + 1);
                v5 = v415[1];
LABEL_747:
                v416 = *(v6 + 24) + 32 * v294;
                v474 = *v416;
                v475 = *(v416 + 8);
                v17 = *(v416 + 24);
                goto LABEL_748;
              }

              v136 = utf8_first_char_combining(v5) ^ 1;
              v469 |= v136;
            }

            else if (v350 == v336)
            {
              LOBYTE(v136) = 0;
            }

            else
            {
              if ((v351 & 0x30F80000) != 0)
              {
                v355 = (v335 & 0x30F80000) == 0;
              }

              else
              {
                if ((v351 & 0xF000000) == 0)
                {
                  goto LABEL_785;
                }

                v355 = (v335 & 0xF000000) == 0;
              }

              v136 = v355;
              v469 |= v136;
            }
          }

          else
          {
            LOBYTE(v136) = 0;
          }

          v352 = v473;
          v353 = v476;
          goto LABEL_744;
        }

        if (v474 > 15)
        {
          if (v474 > 63)
          {
            if (v474 == 64)
            {
              if (v477 || v71 <= 1)
              {
                __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3000, "cur_state.level==0 && (cur_state.level+1<ctx->count)", "", *(v6 + 16), v477, *(v6 + 8));
              }

              else
              {
                v477 = 0;
                v329 = *(*(v6 + 24) + 32);
                v15 = 7;
                v474 = 64;
                if (v329 == 8)
                {
                  continue;
                }

                if (v329 == 16)
                {
                  v15 = 6;
                  continue;
                }

                __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3006, "false", "", *(v6 + 16), 0, v71);
              }

              goto LABEL_856;
            }

            if (v474 != 128)
            {
LABEL_861:
              __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3020, "false", "", *(v6 + 16), v477, *(v6 + 8));
              goto LABEL_856;
            }

            v294 = v477 + 1;
            if (v294 < v71)
            {
              v15 = 0;
              goto LABEL_747;
            }

            v15 = 0;
            v474 = 128;
LABEL_748:
            v477 = v294;
            continue;
          }

          v15 = 2;
          if (v474 != 16)
          {
            if (v474 != 32)
            {
              goto LABEL_861;
            }

            v15 = 11;
          }
        }

        else
        {
          if (v474 <= 3)
          {
            if (v474 == 1)
            {
              v327 = v477 + 1;
              if (v327 >= v71)
              {
                __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 2988, "cur_state.level+1<ctx->count", "", *(v6 + 16), v477, *(v6 + 8));
              }

              else
              {
                v328 = *(*(v6 + 24) + 32 * v327);
                v15 = 5;
                v474 = 1;
                switch(v328)
                {
                  case 8:
                    continue;
                  case 16:
                    v15 = 4;
                    continue;
                  case 32:
                    v15 = 12;
                    v474 = 1;
                    continue;
                }

                __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 2996, "false", "", *(v6 + 16), v477, v71);
              }

              goto LABEL_856;
            }

            if (v474 != 2)
            {
              goto LABEL_861;
            }

            if (v477 + 1 < v71)
            {
              __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 2917, "cur_state.level+1>=ctx->count", "", *(v6 + 16), v477, *(v6 + 8));
              goto LABEL_856;
            }

            if (*v5 < 2u)
            {
              goto LABEL_785;
            }

            if (*(v6 + 40))
            {
              char_combining = utf8_first_char_combining(v5);
              v73 = v473;
              if (!char_combining)
              {
                goto LABEL_817;
              }

              if (*(v6 + 65) == 1)
              {
                v5 += utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4];
                for (LODWORD(v434) = *v5; *v5 < 0; LODWORD(v434) = *v5)
                {
                  v435 = v434 >> 4;
                  v436 = utf8_byte_length_utf8_len_table_2[v435];
                  v437 = utf8_to_code_point_utf8_first_char_mask_1[v436] & v434;
                  if ((~v435 & 0xC) != 0)
                  {
                    goto LABEL_804;
                  }

                  v438 = v436 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v435];
                  v439 = v438 - 1;
                  v440 = v5 + 1;
                  do
                  {
                    v441 = *v440++;
                    v437 = v441 & 0x3F | (v437 << 6);
                    --v439;
                  }

                  while (v439);
                  if (v437 < 0x10000)
                  {
LABEL_804:
                    if ((v437 - 12441) >= 4 && (v437 - 65438) >= 2)
                    {
                      if (!unicode_combinable(v437))
                      {
                        goto LABEL_817;
                      }

                      v435 = *v5 >> 4;
                    }
                  }

                  else
                  {
                    v443 = v437 - 917760;
                    v444 = v437 - 127995;
                    if (v443 >= 0xF0 && v444 > 4)
                    {
                      goto LABEL_817;
                    }
                  }

                  v5 += utf8_byte_length_noerror_utf8_len_table_2[v435];
                }
              }

              else
              {
                if (v476)
                {
                  v74 = v476;
LABEL_771:
                  v279 = v74 - 1;
LABEL_472:
                  v280 = &v73[2 * v279];
                  v15 = *v280;
                  v281 = *(v280 + 1);
                  v5 = v280[1];
                  v282 = *(v6 + 24) + 32 * v281;
                  v474 = *v282;
                  v475 = *(v282 + 8);
                  v17 = *(v282 + 24);
                  v476 = v279;
                  v477 = v281;
                  continue;
                }

LABEL_817:
                LODWORD(v434) = *v5;
              }

              if (v434 >= 2)
              {
                v446 = *(v6 + 40);
                do
                {
                  if (!v446)
                  {
                    goto LABEL_784;
                  }

                  if ((v434 & 0x80) != 0)
                  {
                    v447 = v434 >> 4;
                    v448 = ~v447;
                    v449 = utf8_byte_length_utf8_len_table_2[v447];
                    v450 = utf8_to_code_point_utf8_first_char_mask_1[v449] & v434;
                    if ((v448 & 0xC) != 0)
                    {
                      LODWORD(v434) = utf8_to_code_point_utf8_first_char_mask_1[v449] & v434;
                    }

                    else
                    {
                      if (v449 <= 2)
                      {
                        v449 = 2;
                      }

                      else
                      {
                        v449 = v449;
                      }

                      v451 = v449 - 1;
                      v452 = v5 + 1;
                      do
                      {
                        v453 = *v452++;
                        LODWORD(v434) = v453 & 0x3F | (v450 << 6);
                        v450 = v434;
                        --v451;
                      }

                      while (v451);
                    }
                  }

                  if (((1 << u_charType(v434)) & 0x7000) != 0)
                  {
                    break;
                  }

                  v454 = *v5 >> 4;
                  while (1)
                  {
                    v5 += utf8_byte_length_noerror_utf8_len_table_2[v454];
                    LODWORD(v434) = *v5;
                    if ((*v5 & 0x80000000) == 0)
                    {
                      break;
                    }

                    v454 = *v5 >> 4;
                    v455 = utf8_byte_length_utf8_len_table_2[v454];
                    v456 = utf8_to_code_point_utf8_first_char_mask_1[v455] & v434;
                    if ((~v454 & 0xC) != 0)
                    {
                      goto LABEL_840;
                    }

                    v457 = v455 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v454];
                    v458 = 1;
                    do
                    {
                      v456 = v5[v458++] & 0x3F | (v456 << 6);
                    }

                    while (v457 != v458);
                    if (v456 < 0x10000)
                    {
LABEL_840:
                      if ((v456 - 12441) >= 4 && (v456 - 65438) >= 2)
                      {
                        v460 = unicode_combinable(v456);
                        v434 = *v5;
                        if (!v460)
                        {
                          break;
                        }

                        v454 = v434 >> 4;
                      }
                    }

                    else
                    {
                      v461 = v456 - 917760;
                      v462 = v456 - 127995;
                      if (v461 >= 0xF0 && v462 > 4)
                      {
                        break;
                      }
                    }
                  }

                  --v446;
                }

                while (v434 >= 2);
              }

              goto LABEL_785;
            }

            if (*(v6 + 65))
            {
              v15 = 10;
              v474 = 2;
              continue;
            }

            if (!utf8_first_char_combining(v5))
            {
              goto LABEL_785;
            }

            v73 = v473;
            v74 = v476;
            if (!v476)
            {
              goto LABEL_784;
            }

            goto LABEL_771;
          }

          if (v474 == 4)
          {
            v15 = 1;
          }

          else
          {
            if (v474 != 8)
            {
              goto LABEL_861;
            }

            v15 = 3;
          }
        }
      }
    }

    if (v15 > 9)
    {
      break;
    }

    if ((v15 - 6) >= 2)
    {
      if ((v15 - 8) >= 2)
      {
        goto LABEL_860;
      }

      v18 = *v5;
      if (v18 < 0)
      {
        v19 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
        v20 = (v18 & utf8_to_code_point_utf8_first_char_mask_1[v19]);
        if ((~(*v5 >> 4) & 0xC) != 0)
        {
          v18 = (v18 & utf8_to_code_point_utf8_first_char_mask_1[v19]);
        }

        else
        {
          if (v19 <= 2)
          {
            v21 = 2;
          }

          else
          {
            v21 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
          }

          v22 = v21 - 1;
          v23 = v5 + 1;
          do
          {
            v24 = *v23++;
            v18 = v24 & 0x3F | (v20 << 6);
            v20 = v18;
            --v22;
          }

          while (v22);
        }
      }

      if ((v17 >> u_charType(v18)))
      {
        if ((v17 & 0x3E) != 0)
        {
          v114 = *v5;
          if (v114 < 0)
          {
            v115 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
            v116 = (v114 & utf8_to_code_point_utf8_first_char_mask_1[v115]);
            if ((~(*v5 >> 4) & 0xC) != 0)
            {
              v114 = (v114 & utf8_to_code_point_utf8_first_char_mask_1[v115]);
            }

            else
            {
              if (v115 <= 2)
              {
                v117 = 2;
              }

              else
              {
                v117 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
              }

              v118 = v117 - 1;
              v119 = v5 + 1;
              do
              {
                v120 = *v119++;
                v114 = v120 & 0x3F | (v116 << 6);
                v116 = v114;
                --v118;
              }

              while (v118);
            }
          }

          v147 = u_charType(v114);
          v148 = 1 << v147;
          i = v5;
          if (((1 << v147) & 0x3E) == 0)
          {
            goto LABEL_635;
          }

          i = v5;
          if (v147 == 2)
          {
            goto LABEL_237;
          }

          for (i = &v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]]; ; i += utf8_byte_length_noerror_utf8_len_table_2[v170])
          {
            LODWORD(v169) = *i;
            if ((*i & 0x80000000) == 0)
            {
              break;
            }

            v170 = *i >> 4;
            v171 = utf8_byte_length_utf8_len_table_2[v170];
            v172 = utf8_to_code_point_utf8_first_char_mask_1[v171] & v169;
            if ((~v170 & 0xC) != 0)
            {
              goto LABEL_279;
            }

            v173 = v171 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v170];
            v174 = 1;
            do
            {
              v172 = i[v174++] & 0x3F | (v172 << 6);
            }

            while (v173 != v174);
            if (v172 < 0x10000)
            {
LABEL_279:
              if ((v172 - 12441) >= 4 && (v172 - 65438) >= 2)
              {
                v176 = unicode_combinable(v172);
                v169 = *i;
                if (!v176)
                {
                  break;
                }

                v170 = v169 >> 4;
              }
            }

            else
            {
              v177 = v172 - 917760;
              v178 = v172 - 127995;
              if (v177 >= 0xF0 && v178 > 4)
              {
                break;
              }
            }
          }

          if (v169 < 2)
          {
            goto LABEL_763;
          }

          if ((v169 & 0x80) != 0)
          {
            v180 = v169 >> 4;
            v181 = ~v180;
            v182 = utf8_byte_length_utf8_len_table_2[v180];
            v183 = utf8_to_code_point_utf8_first_char_mask_1[v182] & v169;
            if ((v181 & 0xC) != 0)
            {
              LODWORD(v169) = utf8_to_code_point_utf8_first_char_mask_1[v182] & v169;
            }

            else
            {
              if (v182 <= 2)
              {
                v182 = 2;
              }

              else
              {
                v182 = v182;
              }

              v184 = v182 - 1;
              v185 = i + 1;
              do
              {
                v186 = *v185++;
                LODWORD(v169) = v186 & 0x3F | (v183 << 6);
                v183 = v169;
                --v184;
              }

              while (v184);
            }
          }

          v358 = 1 << u_charType(v169);
          if ((v358 & 0x3E) == 0)
          {
LABEL_635:
            i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
            goto LABEL_636;
          }

          v359 = v358 & 0xE;
          if ((v148 & 0xE) != 0)
          {
            if (!v359)
            {
              goto LABEL_636;
            }
          }

          else if (v359)
          {
            goto LABEL_636;
          }

          v368 = *i;
          if (v368 < 2)
          {
            goto LABEL_784;
          }

          *&v475 = v5;
          while (1)
          {
            if ((v368 & 0x80) != 0)
            {
              v369 = v368 >> 4;
              v370 = ~v369;
              v371 = utf8_byte_length_utf8_len_table_2[v369];
              v372 = utf8_to_code_point_utf8_first_char_mask_1[v371] & v368;
              if ((v370 & 0xC) != 0)
              {
                v368 &= utf8_to_code_point_utf8_first_char_mask_1[v371];
              }

              else
              {
                if (v371 <= 2)
                {
                  v371 = 2;
                }

                else
                {
                  v371 = v371;
                }

                v373 = v371 - 1;
                v374 = i + 1;
                do
                {
                  v375 = *v374++;
                  v368 = v375 & 0x3F | (v372 << 6);
                  v372 = v368;
                  --v373;
                }

                while (v373);
              }
            }

            v376 = u_charType(v368);
            if (v376 != 1)
            {
              if (v376 == 5)
              {
                goto LABEL_763;
              }

              if (v376 == 2)
              {
                if (v475 != v5)
                {
                  goto LABEL_763;
                }

LABEL_237:
                v149 = *i;
                if (v149 >= 2)
                {
                  while (2)
                  {
                    if ((v149 & 0x80) == 0)
                    {
                      goto LABEL_239;
                    }

                    v150 = v149 >> 4;
                    v151 = ~v150;
                    v152 = utf8_byte_length_utf8_len_table_2[v150];
                    v153 = utf8_to_code_point_utf8_first_char_mask_1[v152] & v149;
                    if ((v151 & 0xC) != 0)
                    {
                      goto LABEL_248;
                    }

                    v152 = v152 <= 2 ? 2 : v152;
                    v154 = v152 - 1;
                    v155 = i + 1;
                    do
                    {
                      v156 = *v155++;
                      v153 = v156 & 0x3F | (v153 << 6);
                      --v154;
                    }

                    while (v154);
                    if (v153 < 0x10000)
                    {
LABEL_248:
                      if ((v153 - 12441) >= 4 && (v153 - 65438) >= 2)
                      {
                        v161 = unicode_combinable(v153);
                        v149 = *i;
                        if (!v161)
                        {
                          goto LABEL_261;
                        }
                      }
                    }

                    else
                    {
                      v158 = v153 - 917760;
                      v159 = v153 - 127995;
                      if (v158 >= 0xF0 && v159 >= 5)
                      {
LABEL_261:
                        if ((v149 & 0x80) != 0)
                        {
                          v162 = v149 >> 4;
                          v163 = ~v162;
                          v164 = utf8_byte_length_utf8_len_table_2[v162];
                          v165 = utf8_to_code_point_utf8_first_char_mask_1[v164] & v149;
                          if ((v163 & 0xC) != 0)
                          {
                            v149 &= utf8_to_code_point_utf8_first_char_mask_1[v164];
                          }

                          else
                          {
                            if (v164 <= 2)
                            {
                              v164 = 2;
                            }

                            else
                            {
                              v164 = v164;
                            }

                            v166 = v164 - 1;
                            v167 = i + 1;
                            do
                            {
                              v168 = *v167++;
                              v149 = v168 & 0x3F | (v165 << 6);
                              v165 = v149;
                              --v166;
                            }

                            while (v166);
                          }
                        }

LABEL_239:
                        if (u_charType(v149) != 2)
                        {
                          goto LABEL_636;
                        }

                        v149 = *i;
                      }
                    }

                    i += utf8_byte_length_noerror_utf8_len_table_2[v149 >> 4];
                    v149 = *i;
                    if (v149 <= 1)
                    {
                      goto LABEL_784;
                    }

                    continue;
                  }
                }

                goto LABEL_784;
              }

              if (((1 << v376) & 0x3E) != 0)
              {
                *&v475 = i;
                goto LABEL_722;
              }
            }

            v377 = *i;
            if (v377 < 0)
            {
              v403 = utf8_byte_length_utf8_len_table_2[*i >> 4];
              v404 = (utf8_to_code_point_utf8_first_char_mask_1[v403] & *i);
              if ((~(*i >> 4) & 0xC) != 0)
              {
                goto LABEL_707;
              }

              v405 = v403 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[*i >> 4];
              v406 = 1;
              do
              {
                v404 = i[v406++] & 0x3F | (v404 << 6);
              }

              while (v405 != v406);
              if (v404 < 0x10000)
              {
LABEL_707:
                v407 = (v404 - 12441) >= 4 && (v404 - 65438) >= 2;
                if (!v407 || unicode_combinable(v404))
                {
                  goto LABEL_722;
                }

                LOBYTE(v377) = *i;
              }

              else
              {
                v408 = v404 - 917760;
                v409 = v404 - 127995;
                if (v408 < 0xF0 || v409 < 5)
                {
                  goto LABEL_722;
                }
              }
            }

            v378 = &i[utf8_byte_length_noerror_utf8_len_table_2[v377 >> 4]];
            v379 = *v378;
            if (v379 >= 2)
            {
              break;
            }

LABEL_722:
            i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
            v368 = *i;
            if (v368 <= 1)
            {
              goto LABEL_784;
            }
          }

          v380 = v11;
          while (1)
          {
            v381 = i;
            i = v378;
            if ((v379 & 0x80) != 0)
            {
              v382 = v379 >> 4;
              v383 = ~v382;
              v384 = utf8_byte_length_utf8_len_table_2[v382];
              v385 = utf8_to_code_point_utf8_first_char_mask_1[v384] & v379;
              if ((v383 & 0xC) != 0)
              {
                v379 &= utf8_to_code_point_utf8_first_char_mask_1[v384];
              }

              else
              {
                if (v384 <= 2)
                {
                  v384 = 2;
                }

                else
                {
                  v384 = v384;
                }

                v386 = v384 - 1;
                v387 = i + 1;
                do
                {
                  v388 = *v387++;
                  v379 = v388 & 0x3F | (v385 << 6);
                  v385 = v379;
                  --v386;
                }

                while (v386);
              }
            }

            v389 = u_charType(v379);
            v390 = *i;
            if (v389 != 1)
            {
              v391 = v389;
              if ((v390 & 0x80) == 0)
              {
                goto LABEL_714;
              }

              v392 = utf8_byte_length_utf8_len_table_2[v390 >> 4];
              v393 = utf8_to_code_point_utf8_first_char_mask_1[v392] & v390;
              if ((~(v390 >> 4) & 0xC) != 0)
              {
                goto LABEL_687;
              }

              v394 = v392 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v390 >> 4];
              v395 = v394 - 1;
              v396 = i + 1;
              do
              {
                v397 = *v396++;
                v393 = v397 & 0x3F | (v393 << 6);
                --v395;
              }

              while (v395);
              if (v393 < 0x10000)
              {
LABEL_687:
                if ((v393 - 12441) >= 4 && (v393 - 65438) >= 2)
                {
                  v399 = unicode_combinable(v393);
                  LODWORD(v390) = *i;
                  if (!v399)
                  {
                    goto LABEL_714;
                  }
                }
              }

              else
              {
                v400 = v393 - 917760;
                v401 = v393 - 127995;
                if (v400 >= 0xF0 && v401 > 4)
                {
LABEL_714:
                  if (((1 << v391) & 0x7000) == 0)
                  {
                    i = v381;
                  }

                  v11 = v380;
                  if (v390 > 1)
                  {
LABEL_636:
                    v360 = *i;
                    if (v360 < 2)
                    {
                      goto LABEL_784;
                    }

                    while (1)
                    {
                      if ((v360 & 0x80) != 0)
                      {
                        v361 = v360 >> 4;
                        v362 = ~v361;
                        v363 = utf8_byte_length_utf8_len_table_2[v361];
                        v364 = utf8_to_code_point_utf8_first_char_mask_1[v363] & v360;
                        if ((v362 & 0xC) != 0)
                        {
                          v360 &= utf8_to_code_point_utf8_first_char_mask_1[v363];
                        }

                        else
                        {
                          if (v363 <= 2)
                          {
                            v363 = 2;
                          }

                          else
                          {
                            v363 = v363;
                          }

                          v365 = v363 - 1;
                          v366 = i + 1;
                          do
                          {
                            v367 = *v366++;
                            v360 = v367 & 0x3F | (v364 << 6);
                            v364 = v360;
                            --v365;
                          }

                          while (v365);
                        }
                      }

                      if ((v17 >> u_charType(v360)))
                      {
                        break;
                      }

                      i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
                      v360 = *i;
                      if (v360 <= 1)
                      {
                        goto LABEL_784;
                      }
                    }

LABEL_763:
                    if (*i < 2u)
                    {
                      goto LABEL_784;
                    }

                    v424 = v473;
                    v425 = v477;
                    v426 = &v473[2 * v476];
                    v427 = v476 + 1;
                    *v426 = v15;
                    v426[1] = v425;
                    *(v426 + 1) = i;
                    if (v15 == 8)
                    {
                      v15 = 2;
                    }

                    else
                    {
                      v15 = 3;
                    }

                    v428 = v425 + 1;
                    v429 = &v424[2 * v427];
                    *v429 = v15;
                    v429[1] = v428;
                    *(v429 + 1) = i;
                    v430 = *(v6 + 24) + 32 * v428;
                    v474 = *v430;
                    v475 = *(v430 + 8);
                    v17 = *(v430 + 24);
                    v471 = i;
                    v5 = i;
                    v476 = v427;
                    v477 = v428;
                    goto LABEL_13;
                  }

                  goto LABEL_722;
                }
              }
            }

            v378 = &i[utf8_byte_length_noerror_utf8_len_table_2[v390 >> 4]];
            v379 = *v378;
            if (v379 <= 1)
            {
              v11 = v380;
              goto LABEL_722;
            }
          }
        }

        v121 = *v5;
        if ((v17 & 0xF000000) != 0)
        {
          if (v121 < 2)
          {
            goto LABEL_784;
          }

          if ((v121 & 0x80) != 0)
          {
            v122 = utf8_byte_length_utf8_len_table_2[v121 >> 4];
            v123 = utf8_to_code_point_utf8_first_char_mask_1[v122] & v121;
            if ((~(v121 >> 4) & 0xC) != 0)
            {
              LODWORD(v121) = utf8_to_code_point_utf8_first_char_mask_1[v122] & v121;
            }

            else
            {
              if (v122 <= 2)
              {
                v124 = 2;
              }

              else
              {
                v124 = utf8_byte_length_utf8_len_table_2[v121 >> 4];
              }

              v125 = v124 - 1;
              v126 = v5 + 1;
              do
              {
                v127 = *v126++;
                LODWORD(v121) = v127 & 0x3F | (v123 << 6);
                v123 = v121;
                --v125;
              }

              while (v125);
            }
          }

          i = v5;
          if ((v17 >> u_charType(v121)))
          {
            i = &v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]];
            v296 = *i;
            if (v296 < 2)
            {
              goto LABEL_784;
            }

            while (1)
            {
              v297 = v296;
              if ((v296 & 0x80) != 0)
              {
                v298 = v296 >> 4;
                v299 = ~v298;
                v300 = utf8_byte_length_utf8_len_table_2[v298];
                v301 = utf8_to_code_point_utf8_first_char_mask_1[v300] & v296;
                if ((v299 & 0xC) != 0)
                {
                  v297 = utf8_to_code_point_utf8_first_char_mask_1[v300] & v296;
                }

                else
                {
                  if (v300 <= 2)
                  {
                    v300 = 2;
                  }

                  else
                  {
                    v300 = v300;
                  }

                  v302 = v300 - 1;
                  v303 = i + 1;
                  do
                  {
                    v304 = *v303++;
                    v297 = v304 & 0x3F | (v301 << 6);
                    v301 = v297;
                    --v302;
                  }

                  while (v302);
                }
              }

              if (v121 != v297)
              {
                break;
              }

              i += utf8_byte_length_noerror_utf8_len_table_2[v296 >> 4];
              v296 = *i;
              if (v296 <= 1)
              {
                goto LABEL_784;
              }
            }
          }
        }

        else
        {
          i = v5;
          if (v121 < 2)
          {
            goto LABEL_784;
          }

          while (1)
          {
            if ((v121 & 0x80) != 0)
            {
              v129 = v121 >> 4;
              v130 = ~v129;
              v131 = utf8_byte_length_utf8_len_table_2[v129];
              v132 = utf8_to_code_point_utf8_first_char_mask_1[v131] & v121;
              if ((v130 & 0xC) != 0)
              {
                LODWORD(v121) = utf8_to_code_point_utf8_first_char_mask_1[v131] & v121;
              }

              else
              {
                if (v131 <= 2)
                {
                  v131 = 2;
                }

                else
                {
                  v131 = v131;
                }

                v133 = v131 - 1;
                v134 = i + 1;
                do
                {
                  v135 = *v134++;
                  LODWORD(v121) = v135 & 0x3F | (v132 << 6);
                  v132 = v121;
                  --v133;
                }

                while (v133);
              }
            }

            if (((v17 >> u_charType(v121)) & 1) == 0)
            {
              break;
            }

            i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
            LODWORD(v121) = *i;
            if (v121 <= 1)
            {
              goto LABEL_784;
            }
          }
        }

        v305 = *i;
        if (v305 >= 2)
        {
          do
          {
            if ((v305 & 0x80) != 0)
            {
              v306 = v305 >> 4;
              v307 = ~v306;
              v308 = utf8_byte_length_utf8_len_table_2[v306];
              v309 = utf8_to_code_point_utf8_first_char_mask_1[v308] & v305;
              if ((v307 & 0xC) != 0)
              {
                v305 &= utf8_to_code_point_utf8_first_char_mask_1[v308];
              }

              else
              {
                if (v308 <= 2)
                {
                  v308 = 2;
                }

                else
                {
                  v308 = v308;
                }

                v310 = v308 - 1;
                v311 = i + 1;
                do
                {
                  v312 = *v311++;
                  v305 = v312 & 0x3F | (v309 << 6);
                  v309 = v305;
                  --v310;
                }

                while (v310);
              }
            }

            if ((v17 >> u_charType(v305)))
            {
              goto LABEL_763;
            }

            i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
            v305 = *i;
          }

          while (v305 > 1);
        }

LABEL_784:
        if ((v469 & 1) == 0)
        {
          result = 0;
          goto LABEL_791;
        }

        goto LABEL_785;
      }

      __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3347, "item.start_mask&U_MASK(u_charType(utf8_to_code_point((u_int8_t*)cur_state.cur)))", "", *(v6 + 16), v477, *(v6 + 8));
LABEL_856:
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (v5 != v472)
    {
      __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3326, "cur_state.cur==(u_int8_t*)string", "", *(v6 + 16), v477, *(v6 + 8));
      goto LABEL_856;
    }

    v53 = *v5;
    if (v53 < 2)
    {
      goto LABEL_783;
    }

    while (1)
    {
      if ((v53 & 0x80) != 0)
      {
        v54 = v53 >> 4;
        v55 = ~v54;
        v56 = utf8_byte_length_utf8_len_table_2[v54];
        v57 = utf8_to_code_point_utf8_first_char_mask_1[v56] & v53;
        if ((v55 & 0xC) != 0)
        {
          v53 &= utf8_to_code_point_utf8_first_char_mask_1[v56];
        }

        else
        {
          if (v56 <= 2)
          {
            v56 = 2;
          }

          else
          {
            v56 = v56;
          }

          v58 = v56 - 1;
          v59 = v5 + 1;
          do
          {
            v60 = *v59++;
            v53 = v60 & 0x3F | (v57 << 6);
            v57 = v53;
            --v58;
          }

          while (v58);
        }
      }

      v61 = u_charType(v53);
      v62 = *v5;
      if ((v17 >> v61))
      {
        break;
      }

      v5 += utf8_byte_length_noerror_utf8_len_table_2[v62 >> 4];
      v53 = *v5;
      if (v53 <= 1)
      {
        goto LABEL_783;
      }
    }

    if (v62 < 2)
    {
LABEL_783:
      v5 = v472;
      goto LABEL_784;
    }

    v75 = v473;
    v76 = v477;
    v77 = &v473[2 * v476];
    v78 = v476;
    *(v77 + 1) = v5;
    if (v15 == 6)
    {
      v79 = 8;
    }

    else
    {
      v79 = 9;
    }

    v80 = v78 + 1;
    *v77 = v79;
    v77[1] = v76;
    v81 = v76 + 1;
    if (v15 == 6)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    v82 = &v75[2 * v80];
    *v82 = v15;
    v82[1] = v81;
    *(v82 + 1) = v5;
    v83 = *(v6 + 24) + 32 * v81;
    v474 = *v83;
    v475 = *(v83 + 8);
    v17 = *(v83 + 24);
    v471 = v5;
    v476 = v80;
    v477 = v76 + 1;
  }

  if (v15 != 10)
  {
    if (v15 != 12)
    {
      v32 = v5;
      if (v15 != 11)
      {
        goto LABEL_860;
      }

      while (1)
      {
        v33 = *v32;
        if (v33 < 0)
        {
          v34 = utf8_byte_length_utf8_len_table_2[*v32 >> 4];
          v35 = (v33 & utf8_to_code_point_utf8_first_char_mask_1[v34]);
          if ((~(*v32 >> 4) & 0xC) != 0)
          {
            v33 = (v33 & utf8_to_code_point_utf8_first_char_mask_1[v34]);
          }

          else
          {
            if (v34 <= 2)
            {
              v36 = 2;
            }

            else
            {
              v36 = utf8_byte_length_utf8_len_table_2[*v32 >> 4];
            }

            v37 = v36 - 1;
            v38 = (v32 + 1);
            do
            {
              v39 = *v38++;
              v33 = v39 & 0x3F | (v35 << 6);
              v35 = v33;
              --v37;
            }

            while (v37);
          }
        }

        if (((1 << u_charType(v33)) & 0x7000) == 0)
        {
          break;
        }

        v32 += utf8_byte_length_noerror_utf8_len_table_2[*v32 >> 4];
      }

      if (v32 != v5)
      {
        v68 = v477 + 1;
        if (v68 < *(v6 + 8))
        {
          v69 = *(v6 + 24) + 32 * v68;
          v474 = *v69;
          v475 = *(v69 + 8);
          v17 = *(v69 + 24);
        }

        v15 = 0;
        v70 = &v473[2 * v476];
        *v70 = 0;
        *(v70 + 1) = v68;
        v70[1] = v32;
        v5 = v32;
        v477 = v68;
        goto LABEL_13;
      }

      goto LABEL_470;
    }

LABEL_54:
    v40 = v477 + 1;
    if (v40 == *(v6 + 8))
    {
      __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3290, "cur_state.level+1!=ctx->count", "", *(v6 + 16), v477, v477 + 1);
      goto LABEL_856;
    }

    v41 = *v5;
    if (v41 >= 2)
    {
      v42 = *(*(v6 + 24) + 32 * v40 + 24);
      while (1)
      {
        if ((v41 & 0x80) != 0)
        {
          v43 = v41 >> 4;
          v44 = ~v43;
          v45 = utf8_byte_length_utf8_len_table_2[v43];
          v46 = utf8_to_code_point_utf8_first_char_mask_1[v45] & v41;
          if ((v44 & 0xC) != 0)
          {
            v41 &= utf8_to_code_point_utf8_first_char_mask_1[v45];
          }

          else
          {
            if (v45 <= 2)
            {
              v45 = 2;
            }

            else
            {
              v45 = v45;
            }

            v47 = v45 - 1;
            v48 = v5 + 1;
            do
            {
              v49 = *v48++;
              v41 = v49 & 0x3F | (v46 << 6);
              v46 = v41;
              --v47;
            }

            while (v47);
          }
        }

        v50 = 1 << u_charType(v41);
        if ((v50 & 0xF000000) != 0)
        {
          v51 = 251658240;
        }

        else
        {
          v51 = v50;
        }

        if ((v50 & 0x78001) != 0)
        {
          v51 = 491521;
        }

        if ((v50 & 0x7000) != 0)
        {
          v51 = 28672;
        }

        if ((v50 & 0xE00) != 0)
        {
          v51 = 3584;
        }

        if ((v50 & 0x1C0) != 0)
        {
          v51 = 448;
        }

        if ((v50 & 0x3E) != 0)
        {
          v51 = 62;
        }

        v52 = *v5;
        if ((v51 & v42) != 0)
        {
          break;
        }

        v5 += utf8_byte_length_noerror_utf8_len_table_2[v52 >> 4];
        v41 = *v5;
        if (v41 <= 1)
        {
          goto LABEL_470;
        }
      }

      if (v52 >= 2)
      {
        v84 = v476;
        if (v15 == 12)
        {
          v85 = v473;
          v291 = v477;
          if (!v476)
          {
            *v473 = 12;
            *(v85 + 1) = v291;
            v85[1] = v5;
            v85[1] = &v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]];
            v84 = 1;
          }

          v15 = 11;
        }

        else
        {
          v85 = v473;
          v86 = &v473[2 * v476];
          v87 = v477;
          *v86 = v15;
          v86[1] = v87;
          *(v86 + 1) = v5;
          v84 = (v84 + 1);
          *(v86 + 1) = &v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]];
          if (v15 == 4)
          {
            v15 = 2;
          }

          else
          {
            v15 = 3;
          }
        }

        v292 = &v85[2 * v84];
        *v292 = v15;
        v292[1] = v40;
        *(v292 + 1) = v5;
        v293 = *(v6 + 24) + 32 * v40;
        v474 = *v293;
        v475 = *(v293 + 8);
        v17 = *(v293 + 24);
        v476 = v84;
        v477 = v40;
        goto LABEL_13;
      }
    }

    goto LABEL_470;
  }

LABEL_96:
  v63 = *v5;
  if ((v63 & 0x80000000) == 0)
  {
    v64 = v5;
    goto LABEL_98;
  }

  v64 = v5;
  do
  {
    v88 = v63 >> 4;
    v89 = utf8_byte_length_utf8_len_table_2[v88];
    v90 = (utf8_to_code_point_utf8_first_char_mask_1[v89] & v63);
    if ((~v88 & 0xC) != 0)
    {
      goto LABEL_143;
    }

    v91 = v89 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v88];
    v92 = 1;
    do
    {
      v90 = v64[v92++] & 0x3F | (v90 << 6);
    }

    while (v91 != v92);
    if (v90 < 0x10000)
    {
LABEL_143:
      if ((v90 - 12441) >= 4 && (v90 - 65438) >= 2)
      {
        if (!unicode_combinable(v90))
        {
          break;
        }

        v88 = *v64 >> 4;
      }

      goto LABEL_154;
    }

    v94 = v90 - 917760;
    v95 = v90 - 127995;
    if (v94 >= 0xF0 && v95 > 4)
    {
      break;
    }

LABEL_154:
    v64 += utf8_byte_length_noerror_utf8_len_table_2[v88];
    v63 = *v64;
  }

  while (v63 < 0);
  if (v64 != v5 && v64 != v472)
  {
    v97 = 0;
    do
    {
      v98 = v5[--v97] & 0xC0;
    }

    while (v98 == 128);
    v99 = *v5;
    if (v99 < 0)
    {
      v100 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
      v101 = (v99 & utf8_to_code_point_utf8_first_char_mask_1[v100]);
      if ((~(*v5 >> 4) & 0xC) != 0)
      {
        v99 = (v99 & utf8_to_code_point_utf8_first_char_mask_1[v100]);
      }

      else
      {
        if (v100 <= 2)
        {
          v102 = 2;
        }

        else
        {
          v102 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
        }

        v103 = v102 - 1;
        v104 = v5 + 1;
        do
        {
          v105 = *v104++;
          v99 = v105 & 0x3F | (v101 << 6);
          v101 = v99;
          --v103;
        }

        while (v103);
      }
    }

    if ((v99 - 128000) <= 0xFFFFFFFA)
    {
      v313 = *(v6 + 48);
      if (v313)
      {
        memset(v480, 0, 32);
        v479 = 0;
        v314 = icu_build_pattern_key(v313, &v5[v97], -v97, v480, 32, &v479);
        memset(v481, 0, 32);
        v478 = 0;
        v315 = icu_build_pattern_key(*(v6 + 48), &v5[v97], v64 - v5 - v97, v481, 32, &v478);
        v316 = v479 == v478 && !memcmp(v314, v315, v479);
        if (v314 != v480)
        {
          free(v314);
        }

        if (v315 != v481)
        {
          free(v315);
        }

        if (!v316)
        {
          if (!v476)
          {
            v5 = v64;
            goto LABEL_784;
          }

          v317 = &v473[2 * v476 - 2];
          v476 = v476 - 1;
          v15 = *v317;
          v318 = *(v6 + 24) + 32 * *(v317 + 1);
          v477 = *(v317 + 1);
          v5 = v317[1];
          v319 = *v318;
          v475 = *(v318 + 8);
          v17 = *(v318 + 24);
          v474 = v319;
          if (v470)
          {
            v320 = v319 == 16 || v319 == 8;
            if (v320 && (v17 & 0x1000) == 0 && *v5 == 32 && v5[1] > 1u)
            {
              ++v5;
            }
          }

          goto LABEL_13;
        }
      }
    }
  }

LABEL_98:
  if (v15 != 10)
  {
    v65 = v477 + 1;
    v66 = *(v6 + 8);
    if (v477 + 1 >= v66)
    {
      goto LABEL_498;
    }

    v67 = *v64;
    if (v67 == 45)
    {
      goto LABEL_221;
    }

    if (v67 == 239)
    {
      if (v64[1] == 188 && v64[2] == 189)
      {
        goto LABEL_221;
      }

LABEL_498:
      v5 = v64;
    }

    else
    {
      if (v67 == 226)
      {
        if (v64[1] != 128 || (v64[2] & 0xFE) != 0x90)
        {
          goto LABEL_498;
        }

LABEL_221:
        v137 = 3646;
      }

      else
      {
        if (v67 == 32 && (v470 & 1) != 0)
        {
          goto LABEL_221;
        }

        if (v67 != 46)
        {
          goto LABEL_498;
        }

        v137 = 62;
      }

      v138 = *(v6 + 24);
      if ((*(v138 + 32 * v477 - 8) & v137) == 0 || v65 != v66 && (*(v138 + 32 * v65 + 24) & v137) == 0)
      {
        goto LABEL_498;
      }

      v139 = utf8_byte_length_noerror_utf8_len_table_2[v67 >> 4];
      v5 = &v64[v139];
      v140 = v64[v139];
      if (v140 >= 2)
      {
        if ((v140 & 0x80) != 0)
        {
          v141 = utf8_byte_length_utf8_len_table_2[v140 >> 4];
          v142 = utf8_to_code_point_utf8_first_char_mask_1[v141] & v140;
          if ((~(v140 >> 4) & 0xC) != 0)
          {
            LODWORD(v140) = utf8_to_code_point_utf8_first_char_mask_1[v141] & v140;
          }

          else
          {
            if (v141 <= 2)
            {
              v143 = 2;
            }

            else
            {
              v143 = utf8_byte_length_utf8_len_table_2[v140 >> 4];
            }

            v144 = v143 - 1;
            v145 = &v64[v139 + 1];
            do
            {
              v146 = *v145++;
              LODWORD(v140) = v146 & 0x3F | (v142 << 6);
              v142 = v140;
              --v144;
            }

            while (v144);
          }
        }

        v411 = 1 << u_charType(v140);
        if ((v411 & 0x3E) != 0)
        {
          v412 = 62;
        }

        else if ((v411 & 0x1C0) != 0)
        {
          v412 = 448;
        }

        else if ((v411 & 0xE00) != 0)
        {
          v412 = 3584;
        }

        else
        {
          if ((v411 & 0xF000000) != 0)
          {
            v431 = 251658240;
          }

          else
          {
            v431 = v411;
          }

          if ((v411 & 0x78001) != 0)
          {
            v431 = 491521;
          }

          if ((v411 & 0x7000) != 0)
          {
            v412 = 28672;
          }

          else
          {
            v412 = v431;
          }
        }

        if ((v412 & v137) == 0)
        {
          v5 = v64;
        }

        v66 = *(v6 + 8);
      }
    }

    v15 = 0;
    if (v65 < v66)
    {
      v295 = *(v6 + 24) + 32 * v65;
      v474 = *v295;
      v475 = *(v295 + 8);
      v17 = *(v295 + 24);
    }

    v477 = v65;
    goto LABEL_13;
  }

  v5 = v64;
LABEL_785:
  v432 = v471;
  if (v467)
  {
    *v467 = v471 - v472;
  }

  if (v468)
  {
    *v468 = v5 - v432;
  }

  result = 1;
LABEL_791:
  v433 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu_get_char_category_mask(char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2 < 0)
  {
    v3 = utf8_byte_length_utf8_len_table_2[v2 >> 4];
    v4 = (v2 & utf8_to_code_point_utf8_first_char_mask_1[v3]);
    if ((~(v2 >> 4) & 0xC) != 0)
    {
      v2 = (v2 & utf8_to_code_point_utf8_first_char_mask_1[v3]);
    }

    else
    {
      if (v3 <= 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = utf8_byte_length_utf8_len_table_2[v2 >> 4];
      }

      v6 = v5 - 1;
      v7 = a1 + 1;
      do
      {
        v8 = *v7++;
        v2 = v8 & 0x3F | (v4 << 6);
        v4 = v2;
        --v6;
      }

      while (v6);
    }
  }

  v9 = 1 << u_charType(v2);
  if ((v9 & 0x3E) != 0)
  {
    result = 62;
  }

  else
  {
    if ((v9 & 0xF000000) != 0)
    {
      v11 = 251658240;
    }

    else
    {
      v11 = v9;
    }

    if ((v9 & 0x78001) != 0)
    {
      v12 = 491521;
    }

    else
    {
      v12 = v11;
    }

    if ((v9 & 0x7000) != 0)
    {
      v12 = 28672;
    }

    if ((v9 & 0xE00) != 0)
    {
      v12 = 3584;
    }

    if ((v9 & 0x1C0) != 0)
    {
      result = 448;
    }

    else
    {
      result = v12;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void icu_locale_release(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  icu_ctx_release(a1);
}

int *_icu_search_context_add_type(int *result, int a2)
{
  v3 = result;
  v13 = *MEMORY[0x1E69E9840];
  v4 = result[2];
  if (!v4)
  {
    if ((a2 & 0x24) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v5 = *(result + 3) + 32 * v4;
  v6 = *(v5 - 32);
  if ((v6 - 1) > 1)
  {
    if (v6 == 4)
    {
      if (a2 == 4)
      {
        goto LABEL_23;
      }

      if (a2 == 1)
      {
        *(v5 - 32) = 1;
        goto LABEL_23;
      }
    }

    else if ((a2 & 0x24) != 0 && (v6 & 0x60) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v6 != 2 && a2 != 1 && a2 != 4)
  {
LABEL_19:
    result = _icu_search_context_grow(result);
    if (a2 == 32)
    {
      v9 = 28672;
    }

    else
    {
      v9 = 0;
    }

    v10 = v3[2];
    v11 = *(v3 + 3) + 32 * v10;
    *(v11 + 24) = v9;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    v3[2] = v10 + 1;
    *v11 = a2;
  }

LABEL_23:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void icu_search_context_destroy(int *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    if (v2 != 268435458)
    {
      icu_search_context_destroy_cold_1(v2);
    }

    *a1 = 0;
    if (a1[2] >= 1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 3);
        v6 = *(v5 + v3);
        if (v6 == 16)
        {
          free(*(v5 + v3 + 16));
          term_expansions_release(*(*(a1 + 3) + v3 + 8));
        }

        else if (v6 == 8)
        {
          free(*(v5 + v3 + 16));
        }

        ++v4;
        v3 += 32;
      }

      while (v4 < a1[2]);
    }

    free(*(a1 + 3));
    icu_ctx_release(*(a1 + 4));
    free(*(a1 + 2));
    if (*(a1 + 69) == 1)
    {
      free(*(a1 + 10));
    }

    v7 = *MEMORY[0x1E69E9840];

    free(a1);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    v9 = *MEMORY[0x1E69E9840];
  }
}

unint64_t si_tracing_calc_traceid()
{
  v3 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&next_traceid, 1uLL, memory_order_relaxed);
  v1 = *MEMORY[0x1E69E9840];
  return add_explicit + 1;
}

unint64_t _MDPlistArrayIterateWithError(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *result + *(result + 16);
  if (*(v8 + 4))
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    v14 = (v8 + *(v8 + 6));
    do
    {
      v16 = *v11;
      v15 = v11[1];
      v32 = *v14;
      v33 = *(v14 + 4);
      v26 = v16;
      v27 = v15;
      v28 = *v14;
      v29 = *(v14 + 4);
      v30 = 0;
      v31 = 0;
      result = validatePlistObject(v8, &v26, 0, a2, a5, a6, a7, a8);
      v13 += result;
      if (a2)
      {
        if (*a2)
        {
          break;
        }

        if (v13 > *(v8 + 6))
        {
          *a2 = 917;
          break;
        }
      }

      else if (v13 > *(v8 + 6))
      {
        _MDPlistArrayIterateWithError_cold_1(result, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = *(a3 + 16);
      v26 = v16;
      v27 = v15;
      v28 = v32;
      v29 = v33;
      v30 = 0;
      v31 = 0;
      result = v24(a3, &v26);
      ++v12;
      v14 = (v14 + 5);
    }

    while (v12 < *(v8 + 4));
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _MDPlistArrayIterate(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *(a1 + 2);
  result = _MDPlistArrayIterateWithError(&v10, 0, a2, a4, a5, a6, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableArrayRef copyCFArray(CFAllocatorRef allocator, __int128 *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __copyCFArray_block_invoke;
  v17[3] = &__block_descriptor_tmp_66;
  v18 = a3;
  v17[4] = allocator;
  v17[5] = a4;
  v17[6] = Mutable;
  v15 = *a2;
  v16 = *(a2 + 2);
  _MDPlistArrayIterateWithError(&v15, a4, v17, a4, a5, a6, a7, a8);
  v13 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void __copyCFArray_block_invoke(uint64_t a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 2);
  v6 = __MDPlistContainerCopyObjectErrorCode(v4, &v9, (v3 + 1), v5);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(a1 + 48), v6);
    CFRelease(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

BOOL _MDPlistBytesBeginArray(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return _MDPlistBytesBeginContainer(a1, 10);
}

unint64_t _MDPlistGetRootPlistObjectFromPlist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69E9840];
  v8 = a1 + 32;

  return MDPlistGetRootPlistObjectFromBuffer(v8, 0, a2, a3, a4, a5, a6, a7);
}

uint64_t _MDPlistContainerCreateWithBytes(uint64_t a1, unsigned __int16 *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = *MEMORY[0x1E69E9840];

    return _MDPlistContainerCreateCommon(a1, a3, a2, 0, 0, a4, a5, 0);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

_DWORD *_MDPlistContainerAddDataValue(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];

  return _addGenericData(a1, 0, 246, a2, a3, a4, a7, a8);
}

unint64_t _MDPlistContainerAddNumber(uint64_t a1, CFNumberRef number, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22 = 0;
  valuePtr = 0;
  v20 = 0;
  v19 = 0;
  result = CFNumberGetType(number);
  if (result <= 5)
  {
    if (result - 1 >= 3)
    {
      if (result != 4)
      {
        if (result != 5)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_13:
    CFNumberGetValue(number, kCFNumberSInt32Type, &v22);
    v15 = v22;
    v16 = a1;
    v17 = 226;
    goto LABEL_14;
  }

  if (result > 0x10)
  {
    goto LABEL_12;
  }

  if (((1 << result) & 0xCC00) != 0)
  {
LABEL_8:
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    v23[0] = valuePtr;
    v9 = a1;
    v10 = 35;
LABEL_17:
    result = _addGenericData(v9, 1, v10, v23, 8uLL, a3, v7, v8);
    goto LABEL_18;
  }

  if (((1 << result) & 0x12000) != 0)
  {
    goto LABEL_16;
  }

  if (result != 12)
  {
LABEL_12:
    if (result - 7 < 3)
    {
      goto LABEL_13;
    }

    if (result != 6)
    {
      goto LABEL_18;
    }

LABEL_16:
    CFNumberGetValue(number, kCFNumberFloat64Type, &v19);
    v23[0] = v19;
    v9 = a1;
    v10 = 51;
    goto LABEL_17;
  }

LABEL_11:
  CFNumberGetValue(number, kCFNumberFloat32Type, &v20);
  v15 = v20;
  v16 = a1;
  v17 = 227;
LABEL_14:
  result = _addInlineData(v16, v17, v15, a3, v11, v12, v13, v14);
LABEL_18:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

const void *_MDBundleUtilsCopyCachedLocalizedDescriptionDictionary(const void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return localizedCacheValueCopy(a1);
}

const void *localizedCacheValueCopy(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock(&gLocalizePropertyCacheLock);
    if (gCoreTypesLocalizedPropertyCache && (v2 = CFDictionaryGetValue(gCoreTypesLocalizedPropertyCache, a1)) != 0)
    {
      Value = v2;
    }

    else
    {
      if (!gLocalizedPropertyCache)
      {
        Value = 0;
        goto LABEL_10;
      }

      Value = CFDictionaryGetValue(gLocalizedPropertyCache, a1);
      if (!Value)
      {
LABEL_10:
        os_unfair_lock_unlock(&gLocalizePropertyCacheLock);
        goto LABEL_11;
      }
    }

    CFRetain(Value);
    goto LABEL_10;
  }

  Value = 0;
LABEL_11:
  v4 = *MEMORY[0x1E69E9840];
  return Value;
}

_MDMutablePlistBytes *_MDPlistBytesCreateMutable(uint64_t a1, unsigned int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [[_MDMutablePlistBytes alloc] initWithCapacity:a2 useMalloc:0];
  if (!v2)
  {
    +[_MDPlistBytes createPlistBytes:];
  }

  v3 = v2;
  CFRetain(v2);

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t _fast_vm_allocate(void *a1, size_t a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x13) != 1)
  {
    _fast_vm_allocate_cold_1();
  }

  v4 = mmap(0, a2, 3, 4098, a3 & 0xFF000000, 0);
  if (v4 == -1)
  {
    result = 5;
  }

  else
  {
    v5 = v4;
    result = 0;
    *a1 = v5;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArrayCreateMutable(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!__kMDStoreOIDArrayTypeID)
  {
    __kMDStoreOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 40) = *(Instance + 40) & 0xF8 | 4;
    *(Instance + 48) = 0;
    if (a2)
    {
      v5 = (*MEMORY[0x1E69E9AC8] + 8 * a2 - 1) & -*MEMORY[0x1E69E9AC8];
    }

    else
    {
      v5 = *MEMORY[0x1E69E9AC8];
    }

    *(Instance + 36) = v5 >> 3;
    if (_fast_vm_allocate((Instance + 16), v5 & 0x7FFFFFFF8, -268435455))
    {
      CFRelease(v4);
      v4 = 0;
    }

    else
    {
      *(v4 + 24) = _Block_copy(&__block_literal_global_1);
      v6 = *(v4 + 16);
      v7 = v6 + 8 * *(v4 + 36);
      *(v4 + 56) = v6;
      *(v4 + 64) = v7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

double __MDStoreOIDArrayInit(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddRLETagRoom(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v5 = a2;
    v7 = a3;
    v27 = a3 | 0x100000000;
    v26 = 8 * a3;
    v25 = a3 + 1;
    v8 = 8 * (a3 + 1);
    v9 = a3;
    v10 = a2;
    while (1)
    {
      if ((*(a1 + 34) & 1) == 0)
      {
        goto LABEL_2;
      }

      if (*(a1 + 80) <= 0)
      {
        break;
      }

      v11 = *(a1 + 120);
      if (v11 && (v12 = *v11, v10 == BYTE3(*v11)) && (v13 = *(a1 + 104), &v11[v12 & 0xFFFFFF] == v13))
      {
        *v11 = v27 + v12;
        if (v13 + 8 * v7 < *(a1 + 112))
        {
          goto LABEL_26;
        }

        if (_MDPlistBytesGrowCapacityVM(a1, v26, 0))
        {
          v13 = *(a1 + 104);
LABEL_26:
          v21 = v13 + 8 * v7;
          v22 = *MEMORY[0x1E69E9AC8];
          v23 = -*MEMORY[0x1E69E9AC8];
          if (((v21 ^ v13) & v23) != 0 && ((v21 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v24 = 16 << *MEMORY[0x1E69E9AC0];
            if (v24 >= 4 * v22)
            {
              madvise(((v22 - 1 + v13) & v23), v24, 3);
            }
          }

          goto LABEL_25;
        }
      }

      else
      {
        v14 = *(a1 + 104);
        *(a1 + 120) = v14;
        if (&v14[v9 + 1] < *(a1 + 112))
        {
          goto LABEL_20;
        }

        if (_MDPlistBytesGrowCapacityVM(a1, v8, 0))
        {
          v14 = *(a1 + 104);
LABEL_20:
          v16 = &v14[v9 + 1];
          v17 = *MEMORY[0x1E69E9AC8];
          v18 = -*MEMORY[0x1E69E9AC8];
          if (((v16 ^ v14) & v18) != 0 && ((v16 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v19 = 16 << *MEMORY[0x1E69E9AC0];
            if (v19 >= 4 * v17)
            {
              madvise(((v14 + v17 - 1) & v18), v19, 3);
              v14 = *(a1 + 104);
            }
          }

          *v14 = v25 & 0xFFFFFF | (v5 << 24) | 0x100000000;
          *(a1 + 104) = v14 + 1;
LABEL_25:
          v20 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
          *(*(a1 + 48) + 8 * v20) += 0x100000000;
          result = 1;
          goto LABEL_3;
        }
      }

      if (*(a1 + 32))
      {
        goto LABEL_2;
      }
    }

    *(a1 + 32) = 2734;
    v15 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_3;
    }

    _MDPlistBytesAddRLETagRoom_cold_1();
  }

LABEL_2:
  result = 0;
LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t addStringBytes(uint64_t a1, int a2, const void **a3, size_t __n)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((__n & 7) != 0)
  {
    v7 = __n & 7;
  }

  else
  {
    v7 = 8 * (__n != 0);
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 60);
  if (v9 != v8)
  {
    goto LABEL_10;
  }

  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = a2;
  *(a1 + 60) = 2 * v9;
  v12 = malloc_type_realloc(*(a1 + 48), 16 * v9, 0x100004000313F17uLL);
  *(a1 + 48) = v12;
  if (v12)
  {
    v8 = *(a1 + 56);
    a2 = v11;
LABEL_10:
    *(a1 + 56) = v8 + 1;
    if (v8 == -1)
    {
      addStringBytes_cold_1();
    }

    v13 = *(a1 + 104);
    if ((v13 + 1) >= *(a1 + 112))
    {
      v14 = a2;
      result = _MDPlistBytesGrowCapacityVM(a1, 8u, 0);
      if (!result)
      {
        goto LABEL_31;
      }

      v13 = *(a1 + 104);
      a2 = v14;
    }

    v15 = MEMORY[0x1E69E9AC8];
    v16 = *MEMORY[0x1E69E9AC8];
    v17 = -*MEMORY[0x1E69E9AC8];
    v18 = MEMORY[0x1E69E9AC0];
    if ((((v13 + 1) ^ v13) & v17) != 0)
    {
      v19 = *MEMORY[0x1E69E9AC0];
      if ((((v13 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0 && 16 << v19 >= (4 * v16))
      {
        v20 = a2;
        v21 = MEMORY[0x1E69E9AC0];
        v22 = MEMORY[0x1E69E9AC8];
        madvise(((v13 + v16 - 1) & v17), 16 << v19, 3);
        v15 = v22;
        v18 = v21;
        a2 = v20;
        v13 = *(a1 + 104);
      }
    }

    *v13 = (v8 << 32) | 0x2000001;
    v23 = v13 + 1;
    *(a1 + 104) = v23;
    v24 = *(a1 + 48);
    v24[v8] = (a2 << 24) | ((v23 - *(a1 + 40)) >> 3) & 0xFFFFFF | ((v7 & 0x7FFFFFFF) << 32);
    ++*v24;
    *(a1 + 72) = v8;
    v25 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
    v24[v25] += 0x100000000;
    v26 = ((__n + 7) >> 3) + 1;
    v27 = *(a1 + 104);
    v28 = (__n + 7) >> 3;
    if (&v27[v28 + 1] >= *(a1 + 112))
    {
      v29 = v15;
      v30 = v18;
      result = _MDPlistBytesGrowCapacityVM(a1, 8 * v26, 0);
      if (!result)
      {
        goto LABEL_31;
      }

      v27 = *(a1 + 104);
      v18 = v30;
      v15 = v29;
    }

    v31 = v7 << 32;
    v32 = (__n + 7) >> 3;
    v33 = &v27[v28 + 1];
    v34 = *v15;
    v35 = -*v15;
    if (((v33 ^ v27) & v35) != 0 && ((v33 >> *v18) & 0xF) == 0)
    {
      v36 = 16 << *v18;
      if (v36 >= 4 * v34)
      {
        madvise(((v27 + v34 - 1) & v35), v36, 3);
        v27 = *(a1 + 104);
      }
    }

    *v27 = v31 | v26 & 0xFFFFFF | 0x7000000;
    v37 = (v27 + 1);
    *(a1 + 104) = v27 + 1;
    if (v32 >= 1)
    {
      v27[v32] = 0;
    }

    if (*a3)
    {
      memcpy(v37, *a3, __n);
      v37 = *(a1 + 104);
    }

    else
    {
      *a3 = v37;
    }

    *(a1 + 104) = &v37[8 * v32];
    result = *(a1 + 72);
    goto LABEL_31;
  }

  if (*(a1 + 32))
  {
LABEL_7:
    result = 0;
    goto LABEL_31;
  }

  *(a1 + 32) = 2239;
  v39 = _MDLogForCategoryDefault();
  result = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
  if (result)
  {
    addStringBytes_cold_2();
    result = 0;
  }

LABEL_31:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddCString(uint64_t a1, char *__s, int a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = __s;
  if (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
  {
    if (*(a1 + 80) <= 0)
    {
      *(a1 + 32) = 2644;
      v7 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_4;
      }

      _MDPlistBytesAddCString_cold_2();
    }

    else
    {
      if (a3 == -1)
      {
        v5 = a1;
        a3 = strlen(__s);
        a1 = v5;
      }

      v6 = a1;
      if (addStringBytes(a1, 12, v9, a3))
      {
        result = 1;
        goto LABEL_4;
      }

      if (!*(v6 + 32))
      {
        *(v6 + 32) = 2648;
        v8 = _MDLogForCategoryDefault();
        result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_4;
        }

        _MDPlistBytesAddCString_cold_1();
      }
    }
  }

  result = 0;
LABEL_4:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesBeginContainer(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  while (!*(a1 + 32))
  {
    if ((*(a1 + 34) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 72) == -1)
    {
      *(a1 + 32) = 2480;
      v11 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_3;
      }

      _MDPlistBytesBeginContainer_cold_2();
      break;
    }

    v6 = *(a1 + 56);
    v7 = *(a1 + 60);
    if (v7 == v6)
    {
      *(a1 + 60) = 2 * v7;
      v8 = malloc_type_realloc(*(a1 + 48), 16 * v7, 0x100004000313F17uLL);
      *(a1 + 48) = v8;
      if (!v8)
      {
        if (*(a1 + 32))
        {
          break;
        }

        *(a1 + 32) = 2239;
        v10 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v24 = "_MDPlistBytesGrowUIDTable";
          v25 = 2080;
          v26 = "UID table allocation";
          v27 = 2048;
          v28 = a1;
          _os_log_error_impl(&dword_1B238B000, v10, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
        }

        continue;
      }

      v6 = *(a1 + 56);
    }

    *(a1 + 56) = v6 + 1;
    if (v6 == -1)
    {
      _MDPlistBytesBeginContainer_cold_1();
    }

    v9 = *(a1 + 104);
    if ((v9 + 1) < *(a1 + 112))
    {
      goto LABEL_20;
    }

    if (_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
    {
      v9 = *(a1 + 104);
LABEL_20:
      v12 = *MEMORY[0x1E69E9AC8];
      v13 = -*MEMORY[0x1E69E9AC8];
      if ((((v9 + 1) ^ v9) & v13) != 0 && (((v9 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v14 = 16 << *MEMORY[0x1E69E9AC0];
        if (v14 >= 4 * v12)
        {
          madvise(((v9 + v12 - 1) & v13), v14, 3);
          v9 = *(a1 + 104);
        }
      }

      *v9 = (v6 << 32) | 0x2000001;
      v15 = v9 + 1;
      *(a1 + 104) = v15;
      v16 = *(a1 + 48);
      v16[v6] = (a2 << 24) | ((v15 - *(a1 + 40)) >> 3) & 0xFFFFFF;
      ++*v16;
      *(a1 + 72) = v6;
      v17 = *(a1 + 80);
      if (v17 >= 1)
      {
        v18 = *(*(a1 + 88) + 4 * v17 - 4);
        v16[v18] += 0x100000000;
      }

      v19 = *(a1 + 72);
      v20 = *(a1 + 76);
      if (v17 >= v20)
      {
        v22 = 2 * v20;
        if (!v20)
        {
          v22 = 8;
        }

        *(a1 + 76) = v22;
        v21 = malloc_type_realloc(*(a1 + 88), 4 * *(a1 + 76), 0x100004052888210uLL);
        *(a1 + 88) = v21;
        LODWORD(v17) = *(a1 + 80);
      }

      else
      {
        v21 = *(a1 + 88);
      }

      *(a1 + 80) = v17 + 1;
      v21[v17] = v19;
      result = 1;
      goto LABEL_3;
    }
  }

  result = 0;
LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu_search_context_item_get_item_count(uint64_t result)
{
  if (result)
  {
    result = *(result + 8);
  }

  v1 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t icu_locale_get_collation(unint64_t result, int a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = a3 ^ 1u;
    v4 = 2;
    if (!a3)
    {
      v4 = 3;
    }

    if (!a2)
    {
      v3 = v4;
    }

    v5 = (result + 16 + 8 * v3);
    if (!atomic_load(v5))
    {
      v7 = icu_open_collation(*(result + 8), a2, a3);
      v8 = 0;
      atomic_compare_exchange_strong(v5, &v8, v7);
      if (v8)
      {
        ucol_close();
      }
    }

    result = atomic_load(v5);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu_locale_get_rules()
{
  result = MEMORY[0x1EEE9AC00]();
  v53[128] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = v2;
    v4 = v1;
    v5 = result;
    v6 = v2 ? 2 : 3;
    v7 = v1 ? v2 ^ 1u : v6;
    __dmb(9u);
    v8 = result + 48;
    result = *(result + 48 + 8 * v7);
    if (!result)
    {
      collation = icu_locale_get_collation(v5, v1, v2);
      if (!collation)
      {
LABEL_36:
        result = *(v8 + 8 * v7);
        goto LABEL_37;
      }

      v10 = collation;
      pthread_mutex_lock(&icu_locale_get_rules_rule_lock);
      if (*(v8 + 8 * v7))
      {
LABEL_35:
        pthread_mutex_unlock(&icu_locale_get_rules_rule_lock);
        goto LABEL_36;
      }

      v11 = openCacheFile(v5, v4, v3, 0);
      if (v11 != -1)
      {
        v12 = v11;
        __buf = 0;
        v51 = 0;
        v52 = 0;
        if (pread(v11, &__buf, 0x18uLL, 0) == 24 && __buf == 2)
        {
          if (v52)
          {
            if (v51)
            {
              v13 = mmap(v51, v52, 1, 1, v12, 0);
              if (v13 != -1)
              {
                if (v13 == v51)
                {
                  v27 = v13 + 24;
                  close(v12);
                  __dmb(0xBu);
                  *(v8 + 8 * v7) = v27;
                  goto LABEL_35;
                }

                munmap(v13, v52);
              }
            }
          }
        }

        close(v12);
      }

      v48[0] = 0;
      v48[1] = 0;
      v49 = 0;
      v14 = malloc_create_zone(0x10000uLL, 0);
      v15 = malloc_type_zone_calloc(v14, 1uLL, 0x830uLL, 0x102004051B57111uLL);
      v15[5].i8[1] = -1;
      zone = v14;
      icu_rules_add_collator(v10, v10, v14, v15, v48, (v7 & 1) == 0, v4);
      if (v49 >= 1)
      {
        v16 = 0;
        do
        {
          v17 = icu_open_collation(v48[v16], v4, v3);
          if (v17)
          {
            icu_rules_add_collator(v10, v17, zone, v15, 0, (v7 & 1) == 0, 0);
            ucol_close();
          }

          free(v48[v16++]);
        }

        while (v16 < v49);
        if (!v15)
        {
          v22 = 0;
LABEL_34:
          __dmb(0xBu);
          *(v8 + 8 * v7) = v22;
          icu_rules_free(v15);
          malloc_destroy_zone(zone);
          goto LABEL_35;
        }
      }

      bzero(v53, 0x400uLL);
      v44 = 0;
      v45 = &v44;
      v46 = 0x2000000000;
      v47 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x2000000000;
      v43 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2000000000;
      v39 = 0;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 0x40000000;
      v35[2] = __icu_rules_copy_block_invoke;
      v35[3] = &unk_1E7B26360;
      v35[4] = &v44;
      v35[5] = &v40;
      v35[6] = &v36;
      _icu_rules_base_dump(v15, v53, 0, v35);
      v18 = v41[3] + v45[3] + v37[3];
      if (sCacheDirFd != -1)
      {
        v19 = openCacheFile(v5, v4, v3, 1);
        if (v19 != -1)
        {
          v20 = v19;
          v21 = v18 + 88;
          if (!_fd_ftruncate(v19, v18 + 88))
          {
            v25 = random();
            v26 = mmap((v25 << 12), v18 + 88, 3, 1, v20, 0);
            if (v26 != -1)
            {
              v23 = v26;
              v28 = 2;
              *v26 = 2;
              v26[1] = v26;
              v26[2] = v21;
              v22 = v26 + 3;
              close(v20);
              goto LABEL_30;
            }

            close(v20);
          }
        }
      }

      v22 = malloc_type_calloc(1uLL, v18 + 64, 0x3250CC25uLL);
      v28 = 0;
      v23 = 0;
      v21 = 0;
LABEL_30:
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2000000000;
      v34[3] = 0;
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2000000000;
      v33 = v45[3];
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x2000000000;
      v31[3] = v41[3] + v33;
      bzero(&__buf, 0x2000uLL);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 0x40000000;
      v30[2] = __icu_rules_copy_block_invoke_2;
      v30[3] = &unk_1E7B26388;
      v30[4] = v34;
      v30[5] = v32;
      v30[6] = &v44;
      v30[7] = &v40;
      v30[8] = v31;
      v30[9] = v22;
      v30[10] = &__buf;
      v30[11] = v18;
      _icu_rules_base_dump(v15, v53, 0, v30);
      if (v23)
      {
        fd_msync(v23, v21, 1, 1);
        *v23 = v28;
        v23[1] = v23;
        v23[2] = v21;
        fd_msync(v23, 0x18uLL, 1, 1);
        mprotect(v23, v21, 1);
      }

      _Block_object_dispose(v31, 8);
      _Block_object_dispose(v32, 8);
      _Block_object_dispose(v34, 8);
      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v44, 8);
      goto LABEL_34;
    }
  }

LABEL_37:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu_build_pattern_key(uint64_t a1, const char *a2, int32_t a3, void *a4, int a5, _DWORD *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  memset(&v16, 0, sizeof(v16));
  uiter_setUTF8(&v16, a2, a3);
  v18 = 0;
  if (!a4 || (v9 = a4, !a5))
  {
    a5 = 32;
    v9 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  }

  SortKeyPart = ucol_nextSortKeyPart();
  if (SortKeyPart >= a5)
  {
    do
    {
      v11 = SortKeyPart;
      if (v9 == a4)
      {
        v9 = malloc_type_malloc(SortKeyPart + a5, 0x100004077774924uLL);
        memcpy(v9, a4, v11);
      }

      else
      {
        v9 = malloc_type_realloc(v9, SortKeyPart + a5, 0x100004077774924uLL);
      }

      v12 = ucol_nextSortKeyPart();
      SortKeyPart = v12 + v11;
    }

    while (v12 >= a5);
  }

  if (SortKeyPart)
  {
    v13 = SortKeyPart - 1;
    if (*(v9 + v13))
    {
      LODWORD(v13) = SortKeyPart;
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  *a6 = v13;
  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t icu_term_key_starts(uint64_t a1, int8x8_t *a2, char *__s, int a4, char *a5, int a6, int *a7, _DWORD *a8, int a9)
{
  v11 = a4;
  v63 = *MEMORY[0x1E69E9840];
  if (a4 == -1)
  {
    v11 = strlen(__s);
  }

  *a7 = 0;
  *a8 = 0;
  bzero(v62, 0x400uLL);
  if (v11 < 1 || a9 < 2)
  {
    v14 = 0;
    *a7 = v11;
    *a8 = a6;
    goto LABEL_62;
  }

  v56 = a7;
  v57 = v11;
  v14 = 0;
  v15 = 0;
  v55 = 0;
  v16 = 0;
  v54 = a2;
  v17 = 1;
  do
  {
    v18 = utf8_byte_length_noerror_utf8_len_table_2[__s[v15] >> 4];
    v61 = 0;
    v19 = v15 + v18;
    v20 = icu_build_pattern_key(a1, __s, v15 + v18, v62, 1024, &v61);
    v21 = v20;
    v22 = v61;
    if (!v61 || v61 > a6 || memcmp(v20, a5, v61))
    {
      v16 = 0;
      goto LABEL_10;
    }

    if (v55 != v22)
    {
      if (v16)
      {
        v24 = __s[v15];
        if ((v24 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v25 = __s[v15] >> 4;
        v26 = utf8_byte_length_utf8_len_table_2[v25];
        v24 = (v24 & utf8_to_code_point_utf8_first_char_mask_1[v26]);
        if ((~v25 & 0xC) != 0)
        {
          goto LABEL_27;
        }

        v27 = v26 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v25];
        v28 = v27 - 1;
        v29 = &__s[v15 + 1];
        do
        {
          v30 = *v29++;
          v24 = v30 & 0x3F | (v24 << 6);
          --v28;
        }

        while (v28);
        if (v24 >= 0x10000)
        {
          v32 = v24 - 917760;
          v33 = v24 - 127995;
          if (v32 < 0xF0 || v33 < 5)
          {
            goto LABEL_34;
          }
        }

        else
        {
LABEL_27:
          v31 = (v24 - 12441) >= 4 && (v24 - 65438) >= 2;
          if (!v31 || unicode_combinable(v24))
          {
            goto LABEL_34;
          }
        }
      }

      v14 = v17;
    }

LABEL_34:
    v56[v14] = v19;
    a8[v14] = v22;
    v16 = 1;
    v55 = v22;
LABEL_10:
    if (v21 != v62)
    {
      free(v21);
    }

    v17 = (v14 + 1);
    v23 = v19 < v57 && v17 < a9;
    v15 = v19;
  }

  while (v23);
  v56[v14] = v57;
  a8[v14] = a6;
  if (v14 >= 1)
  {
    v35 = 0;
    v36 = 1;
    v37 = v54;
    do
    {
      v38 = v35;
      v39 = &a8[v35];
      v40 = *v39;
      v41 = _icu_rules_max_expansion(v37, &a5[v40], a6 - v40, 0) + v40;
      if (v41 > a8[++v35])
      {
        if (v38 >= v14)
        {
LABEL_48:
          v44 = 0;
        }

        else
        {
          v42 = v36;
          while (1)
          {
            v43 = a8[v42];
            if (v43 >= v41)
            {
              break;
            }

            if (v14 + 1 == ++v42)
            {
              goto LABEL_48;
            }
          }

          if (v43 == v41)
          {
            v44 = v42;
          }

          else
          {
            v44 = 0;
          }
        }

        v45 = v44 != 0;
        v46 = v44;
        if (v44 >= v14)
        {
          goto LABEL_59;
        }

        v47 = v56[v44];
        v61 = 0;
        v48 = icu_build_pattern_key(a1, &__s[v47], v57 - v47, v62, 1024, &v61);
        v49 = v48;
        v50 = a8[v46];
        v51 = a8[v14] - v50;
        if (v51 != v61 || memcmp(v48, &a5[v50], v51))
        {
          v45 = 0;
        }

        if (v49 != v62)
        {
          free(v49);
        }

        if (v45)
        {
LABEL_59:
          memmove(v39 + 1, &a8[v46], 4 * (v14 - v46 + 1));
          memmove(&v56[v38 + 1], &v56[v46], 4 * (v14 - v46 + 1));
          v14 = (v14 + v35 - v46);
        }

        v37 = v54;
      }

      ++v36;
    }

    while (v35 < v14);
  }

LABEL_62:
  v52 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t unicode_combinable(unsigned int a1)
{
  if (a1 >= 0x300 && (v1 = __CFUniCharCombiningBitmap[a1 >> 8]) != 0)
  {
    if (v1 == 255)
    {
      result = 1;
    }

    else
    {
      result = (__CFUniCharCombiningBitmap[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
    }
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _icu_rules_max_expansion(int8x8_t *a1, unsigned __int8 *a2, int a3, unsigned int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = *a2;
    v7 = a1 + 1;
    if ((*(a1[1].i32 + ((v6 >> 3) & 0x1C)) >> v6))
    {
      v8 = 0;
      v9 = v6 >> 6;
      if ((v6 >> 6) > 1)
      {
        if (v9 != 2)
        {
          v11 = vcnt_s8(a1[3]);
          v11.i16[0] = vaddlv_u8(v11);
          v8 = v11.u32[0];
        }

        v12 = vcnt_s8(a1[2]);
        v12.i16[0] = vaddlv_u8(v12);
        v8 += v12.u32[0];
      }

      else
      {
        v10 = v6 >> 6;
        if (!v9)
        {
LABEL_10:
          v14 = vcnt_s8((*&v7[v9] & ~(-1 << v6)));
          v14.i16[0] = vaddlv_u8(v14);
          result = _icu_rules_max_expansion(*&a1[v14.u32[0] + 6 + v10], a2 + 1, (a3 - 1), a4 + 1);
          if (result)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }
      }

      v13 = vcnt_s8(*v7);
      v13.i16[0] = vaddlv_u8(v13);
      v10 = v13.u32[0] + v8;
      goto LABEL_10;
    }
  }

LABEL_11:
  if (*a1)
  {
    result = a4;
  }

  else
  {
    result = 0;
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

int8x8_t *icu_rules_find_expansions@<X0>(int8x8_t *result@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, int8x8_t *a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = result;
  }

  for (; a3; --a3)
  {
    v6 = *a2;
    v7 = v5 + 1;
    if (((*(v5[1].i32 + ((v6 >> 3) & 0x1C)) >> v6) & 1) == 0)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      goto LABEL_19;
    }

    v8 = 0;
    v9 = v6 >> 6;
    if ((v6 >> 6) > 1)
    {
      if (v9 != 2)
      {
        v11 = vcnt_s8(v5[3]);
        v11.i16[0] = vaddlv_u8(v11);
        v8 = v11.u32[0];
      }

      v12 = vcnt_s8(v5[2]);
      v12.i16[0] = vaddlv_u8(v12);
      v8 += v12.u32[0];
    }

    else
    {
      v10 = v6 >> 6;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    v13 = vcnt_s8(*v7);
    v13.i16[0] = vaddlv_u8(v13);
    v10 = v13.u32[0] + v8;
LABEL_13:
    v14 = vcnt_s8((*&v7[v9] & ~(-1 << v6)));
    v14.i16[0] = vaddlv_u8(v14);
    v5 = v5[v14.u32[0] + 6 + v10];
    ++a2;
  }

  v15 = *v5;
  if (*v5)
  {
    v16 = *(*&v15 + 4);
    v15 = *(*&v15 + 16);
  }

  else
  {
    v5 = 0;
    v16 = 0;
  }

  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 12) = 0;
  *(a5 + 16) = v5;
LABEL_19:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void _icu_search_context_add_list(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 16) + 8 * v7);
      v10 = *(v9 + 1);
      if (v10 < 0)
      {
        v11 = utf8_byte_length_utf8_len_table_2[*(v9 + 1) >> 4];
        v12 = (v10 & utf8_to_code_point_utf8_first_char_mask_1[v11]);
        if ((~(*(v9 + 1) >> 4) & 0xC) != 0)
        {
          v10 = (v10 & utf8_to_code_point_utf8_first_char_mask_1[v11]);
        }

        else
        {
          if (v11 <= 2)
          {
            v13 = 2;
          }

          else
          {
            v13 = utf8_byte_length_utf8_len_table_2[*(v9 + 1) >> 4];
          }

          v14 = v13 - 1;
          v15 = (v9 + 2);
          do
          {
            v16 = *v15++;
            v10 = v16 & 0x3F | (v12 << 6);
            v12 = v10;
            --v14;
          }

          while (v14);
        }
      }

      v17 = 1 << u_charType(v10);
      if ((v17 & 0x3E) != 0)
      {
        v18 = 62;
      }

      else if ((v17 & 0x1C0) != 0)
      {
        v18 = 448;
      }

      else
      {
        if ((v17 & 0xF000000) != 0)
        {
          v19 = 251658240;
        }

        else
        {
          v19 = v17;
        }

        if ((v17 & 0x78001) != 0)
        {
          v19 = 491521;
        }

        if ((v17 & 0x7000) != 0)
        {
          v19 = 28672;
        }

        if ((v17 & 0xE00) != 0)
        {
          v18 = 3584;
        }

        else
        {
          v18 = v19;
        }
      }

      v8 |= v18;
      ++v7;
      v20 = *(a2 + 4);
    }

    while (v7 < v20);
  }

  else
  {
    v8 = 0;
    v20 = 0;
  }

  v21 = 0;
  if (!a3 || !a4)
  {
LABEL_45:
    v30 = a1;
    goto LABEL_60;
  }

  if (v20)
  {
    v22 = *(a2 + 16);
    while (**v22 != a4 || memcmp(a3, *v22 + 1, a4))
    {
      ++v22;
      if (!--v20)
      {
        goto LABEL_36;
      }
    }

    v21 = 0;
    goto LABEL_45;
  }

LABEL_36:
  v21 = malloc_type_malloc(a4 + 1, 0x9BA5D6EFuLL);
  memcpy(v21, a3, a4);
  *(v21 + a4) = 0;
  v23 = *a3;
  if (v23 < 0)
  {
    v24 = utf8_byte_length_utf8_len_table_2[*a3 >> 4];
    v25 = (v23 & utf8_to_code_point_utf8_first_char_mask_1[v24]);
    if ((~(*a3 >> 4) & 0xC) != 0)
    {
      v23 = (v23 & utf8_to_code_point_utf8_first_char_mask_1[v24]);
    }

    else
    {
      if (v24 <= 2)
      {
        v26 = 2;
      }

      else
      {
        v26 = utf8_byte_length_utf8_len_table_2[*a3 >> 4];
      }

      v27 = v26 - 1;
      v28 = (a3 + 1);
      do
      {
        v29 = *v28++;
        v23 = v29 & 0x3F | (v25 << 6);
        v25 = v23;
        --v27;
      }

      while (v27);
    }
  }

  v31 = 1 << u_charType(v23);
  if ((v31 & 0x3E) != 0)
  {
    v32 = 62;
    v30 = a1;
  }

  else
  {
    v30 = a1;
    if ((v31 & 0x1C0) != 0)
    {
      v32 = 448;
    }

    else if ((v31 & 0xE00) != 0)
    {
      v32 = 3584;
    }

    else if ((v31 & 0x7000) != 0)
    {
      v32 = 28672;
    }

    else
    {
      v32 = 491521;
      if ((v31 & 0x78001) == 0)
      {
        if ((v31 & 0xF000000) != 0)
        {
          v32 = 251658240;
        }

        else
        {
          v32 = v31;
        }
      }
    }
  }

  v8 |= v32;
LABEL_60:
  if (*(v30 + 66) != 1 || (v8 & 0x7000) == 0)
  {
    if (!*(v30 + 8) && *(v30 + 66) && (*(v30 + 67) & 1) == 0)
    {
      _icu_search_context_add_type(v30, 64);
    }

    _icu_search_context_grow(v30);
    v34 = v8 | 0x3FF80000;
    if ((v8 & 0x3FF80000) == 0)
    {
      v34 = v8;
    }

    v35 = *(v30 + 24) + 32 * *(v30 + 8);
    *(v35 + 24) = v34;
    *(v35 + 16) = v21;
    if (a2)
    {
      v36 = atomic_load(a2);
      if (v36 != -1)
      {
        atomic_fetch_add(a2, 1u);
      }
    }

    v37 = *(v30 + 8);
    v38 = *(v30 + 24) + 32 * v37;
    *(v38 + 8) = a2;
    *(v30 + 8) = v37 + 1;
    *v38 = 16;
    goto LABEL_79;
  }

  free(v21);
  if (!*(v30 + 8))
  {
LABEL_79:
    v40 = *MEMORY[0x1E69E9840];
    return;
  }

  v39 = *MEMORY[0x1E69E9840];

  _icu_search_context_add_type(v30, 32);
}

uint64_t _MDPerf_QueryLog()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_MDPerf_QueryLog_onceToken != -1)
  {
    _MDPerf_QueryLog_cold_1();
  }

  result = _MDPerf_QueryLog_sQueryLog;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesEndPlist(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      goto LABEL_21;
    }

    v2 = *(a1 + 104);
    v3 = v2 - *(a1 + 40);
    if (v3 == 8)
    {
      *(a1 + 32) = 2428;
      v17 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (!result)
      {
LABEL_19:
        v19 = *MEMORY[0x1E69E9840];
        return result;
      }

      _MDPlistBytesEndPlist_cold_2();
LABEL_21:
      result = 0;
      v20 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (*(a1 + 80))
    {
      *(a1 + 32) = 2430;
      v18 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }

      _MDPlistBytesEndPlist_cold_1();
      goto LABEL_21;
    }

    v4 = *(a1 + 56);
    if ((v2 + 8 * v4) < *(a1 + 112))
    {
      goto LABEL_9;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, 8 * v4, 0));
  v2 = *(a1 + 104);
LABEL_9:
  v5 = v3 >> 3;
  v6 = v2 + 8 * v4;
  v7 = MEMORY[0x1E69E9AC8];
  v8 = *MEMORY[0x1E69E9AC8];
  v9 = -*MEMORY[0x1E69E9AC8];
  if (((v2 ^ v6) & v9) != 0 && ((v6 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v10 = 16 << *MEMORY[0x1E69E9AC0];
    if (v10 >= 4 * v8)
    {
      madvise(((v8 - 1 + v2) & v9), v10, 3);
      v8 = *v7;
    }
  }

  v11 = 8 * *(a1 + 56);
  if (v11 >= 4 * v8)
  {
    madvise(*(a1 + 104), 8 * *(a1 + 56), 3);
    v11 = 8 * *(a1 + 56);
  }

  memcpy(*(a1 + 104), *(a1 + 48), v11);
  v12 = *(a1 + 104) + 8 * *(a1 + 56);
  *(a1 + 104) = v12;
  v13 = *(a1 + 40);
  v14 = ((*v13 | v5) << 32) | ((v12 - v13) >> 3);
  *(a1 + 72) = -1;
  *v13 = v14;
  *(a1 + 80) = 0;
  *(a1 + 76) = 0;
  free(*(a1 + 88));
  *(a1 + 88) = 0;
  CFRelease(*(a1 + 96));
  *(a1 + 96) = 0;
  *(a1 + 16) = *(a1 + 104) - *(a1 + 8);
  *(a1 + 34) &= ~2u;
  result = 1;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddDate(uint64_t a1, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  result = _MDPlistBytesAddRLETagRoom(a1, 0x86u, 1u);
  if (result)
  {
    v5 = *(a1 + 104);
    *v5 = a2;
    *(a1 + 104) = v5 + 1;
    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddNull(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return _MDPlistBytesAddRLETagRoom(a1, 0, 0);
}

BOOL _MDPlistBytesAddRawInternedCStringKeyWithString(uint64_t a1, int a2, char *__s, int a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = __s;
  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*(a1 + 80) <= 0)
  {
    *(a1 + 32) = 2703;
    v11 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddRawInternedCStringKeyWithString_cold_2();
      goto LABEL_3;
    }
  }

  else
  {
    if (a4 == -1)
    {
      v7 = a1;
      a4 = strlen(__s);
      a1 = v7;
    }

    v8 = a1;
    v9 = addStringBytes(a1, 12, v14, a4);
    if (v9)
    {
      CFDictionarySetValue(*(v8 + 96), ((2 * a2) | 1u), v9);
      result = 1;
      v10 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (*(v8 + 32))
    {
LABEL_3:
      result = 0;
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }

    *(v8 + 32) = 2708;
    v13 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddRawInternedCStringKeyWithString_cold_1();
      goto LABEL_3;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void _MDStoreOIDArrayApplyBlock()
{
  OUTLINED_FUNCTION_0_2();
  v11 = *MEMORY[0x1E69E9840];
  if (*(v4 + 40))
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[2];
  }

  if (v3 >= v2)
  {
LABEL_7:
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = (v5 + 8 * v3);
      if (WORD1(*v7) - 4078 <= 0xFFFFFAEE)
      {
        break;
      }

      v8 = *v7 + 1;
      (*(v1 + 16))(v1, HIDWORD(*v7));
      ++v6;
      v3 += v8;
      if (v3 >= v2)
      {
        goto LABEL_7;
      }
    }

    CFShow(@"MDStoreOIDArrayApplyBlock encountered invalid opcode:");
    v10 = *MEMORY[0x1E69E9840];

    CFShow(v0);
  }
}

void OUTLINED_FUNCTION_0()
{
  MEMORY[0xBAD] = -559038737;

  abort();
}

uint64_t OUTLINED_FUNCTION_0_3(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  a13 = *a1;
  a14 = *(a1 + 2);

  return _MDPlistGetPlistObjectType(&a13);
}

uint64_t _MDStoreOIDArrayAppendMultipleOIDArrays(uint64_t a1, uint64_t *a2, int64_t a3)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    result = 1;
    goto LABEL_25;
  }

  if (*(a1 + 40))
  {
    goto LABEL_5;
  }

  if (*(a1 + 48))
  {
    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayAppendMultipleOIDArrays", "Sequencing");
LABEL_5:
    result = 0;
    goto LABEL_25;
  }

  MEMORY[0x1EEE9AC00]();
  v8 = (&block[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v8, v7);
  if (a3 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = a2;
    v11 = a3;
    do
    {
      v12 = *v10;
      if (*v10)
      {
        LODWORD(v12) = *(v12 + 32);
      }

      v9 += v12;
      ++v10;
      --v11;
    }

    while (v11);
  }

  v13 = v9;
  v14 = *(a1 + 56);
  if (&v14[8 * v9] >= *(a1 + 64))
  {
    if (!_mutableMakeRoom(a1, v9, 1))
    {
      __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayAppendMultipleOIDArrays", "Overflow");
      result = 0;
      goto LABEL_25;
    }

    v14 = *(a1 + 56);
  }

  if (a3 >= 1)
  {
    v15 = v8;
    v16 = a2;
    v17 = a3;
    do
    {
      *v15 = v14;
      v18 = *v16;
      if (*v16)
      {
        v18 = *(v18 + 32);
      }

      v14 += 8 * v18;
      *(a1 + 56) = v14;
      ++v16;
      ++v15;
      --v17;
    }

    while (v17);
  }

  v19 = v14 - *v8;
  if (v19 >= 4 * *MEMORY[0x1E69E9AC8])
  {
    madvise(*v8, v19, 3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___MDStoreOIDArrayAppendMultipleOIDArrays_block_invoke;
  block[3] = &__block_descriptor_tmp_18_0;
  block[4] = a2;
  block[5] = v8;
  dispatch_apply(a3, 0, block);
  *(a1 + 32) += v13;
  result = 1;
LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddInteger(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  result = _MDPlistBytesAddRLETagRoom(a1, 0x84u, 1u);
  if (result)
  {
    v5 = *(a1 + 104);
    *v5 = a2;
    *(a1 + 104) = v5 + 1;
    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistArrayGetCount(uint64_t a1)
{
  result = *(*a1 + *(a1 + 16) + 4);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

void _MDBundleUtilsClearCache(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  localizedCacheValueClear(a1);
}

void localizedCacheValueClear(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&gLocalizePropertyCacheLock);
  if (gLocalizedPropertyCache)
  {
    CFRelease(gLocalizedPropertyCache);
    gLocalizedPropertyCache = 0;
  }

  if (a1 && gCoreTypesLocalizedPropertyCache)
  {
    CFRelease(gCoreTypesLocalizedPropertyCache);
    gCoreTypesLocalizedPropertyCache = 0;
  }

  v2 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&gLocalizePropertyCacheLock);
}

BOOL _MDPlistBytesAppendMultiplePlistBytes(uint64_t a1, uint64_t *a2, int64_t a3)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!*(a1 + 32))
    {
      v8 = 8 * a3;
      if (a3 <= 0)
      {
        while ((*(a1 + 34) & 1) != 0)
        {
          if (*(a1 + 72) != -1)
          {
LABEL_25:
            *(a1 + 32) = 2920;
            v17 = _MDLogForCategoryDefault();
            result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
            if (result)
            {
              _MDPlistBytesAppendMultiplePlistBytes_cold_1();
              result = 0;
            }

            goto LABEL_5;
          }

          MEMORY[0x1EEE9AC00]();
          v9 = block - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v9, v8);
          MEMORY[0x1EEE9AC00]();
          v10 = v9;
          bzero(v9, v8);
          if (*(a1 + 104) < *(a1 + 112) || (result = _MDPlistBytesGrowCapacityVM(a1, 0, 1)))
          {
            v16 = 0;
LABEL_28:
            v18 = *(a1 + 104);
            v19 = v18 + 8 * v16;
            v20 = MEMORY[0x1E69E9AC8];
            v21 = *MEMORY[0x1E69E9AC8];
            v22 = -*MEMORY[0x1E69E9AC8];
            if (((v19 ^ v18) & v22) != 0 && ((v19 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
            {
              v23 = 16 << *MEMORY[0x1E69E9AC0];
              if (v23 >= 4 * v21)
              {
                madvise(((v21 - 1 + v18) & v22), v23, 3);
              }
            }

            v24 = *(a1 + 104);
            if (a3 >= 1)
            {
              v25 = v10;
              v26 = v9;
              v27 = a3;
              do
              {
                *v25++ = v24;
                v28 = *v26++;
                v24 += v28 & 0xFFFFFFFFFFFFFFF8;
                *(a1 + 104) = v24;
                --v27;
              }

              while (v27);
            }

            v29 = v24 - *v10;
            if (v29 >= 4 * *v20)
            {
              madvise(*v10, v29, 3);
            }

            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = ___MDPlistBytesAppendMultiplePlistBytes_block_invoke;
            block[3] = &__block_descriptor_56_e8_v16__0Q8l;
            block[4] = v9;
            block[5] = v10;
            block[6] = a2;
            dispatch_apply(a3, 0, block);
            *(a1 + 16) = *(a1 + 104) - *(a1 + 8);
            result = 1;
            goto LABEL_5;
          }

          if (*(a1 + 32))
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        while ((*(a1 + 34) & 1) != 0)
        {
          if (*(a1 + 72) != -1)
          {
            goto LABEL_25;
          }

          MEMORY[0x1EEE9AC00]();
          v9 = block - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v9, v8);
          MEMORY[0x1EEE9AC00]();
          v10 = v9;
          bzero(v9, v8);
          v11 = 0;
          v12 = a2;
          v13 = v9;
          v14 = a3;
          do
          {
            v15 = *v12;
            if (*v12)
            {
              if (*(v15 + 32))
              {
                v15 = 0;
              }

              else
              {
                v15 = *(v15 + 16);
              }
            }

            *v13++ = v15;
            v11 += v15;
            ++v12;
            --v14;
          }

          while (v14);
          v16 = (v11 >> 2);
          if ((*(a1 + 104) + 8 * v16) < *(a1 + 112))
          {
            goto LABEL_28;
          }

          result = _MDPlistBytesGrowCapacityVM(a1, (2 * v11) & 0xFFFFFFF8, 1);
          if (result)
          {
            goto LABEL_28;
          }

          if (*(a1 + 32))
          {
            goto LABEL_5;
          }
        }
      }
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

dispatch_data_t _MDPlistBytesCopyDispatchData(dispatch_data_t result, void *a2)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    isa_low = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    *a2 = isa_low;
    goto LABEL_7;
  }

  if (LOWORD(result[4].isa))
  {
    isa_low = 0;
    result = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = a2;
  v5 = result;
  CFRetain(result);
  if (LOWORD(v5[4].isa))
  {
    isa_low = 0;
  }

  else
  {
    isa_low = LODWORD(v5[2].isa);
  }

  MappedByteVector = _MDPlistBytesGetMappedByteVector(&v5->isa);
  if (LOWORD(v5[4].isa))
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v5[2].isa);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MDPlistBytesCopyDispatchData_block_invoke;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  v8[4] = v5;
  result = dispatch_data_create(MappedByteVector, v7, 0, v8);
  a2 = v4;
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}