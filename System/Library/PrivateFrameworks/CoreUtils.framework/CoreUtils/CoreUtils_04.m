uint64_t _ReadInteger(unsigned int **a1, unint64_t a2, unint64_t *a3, int a4, int a5)
{
  v7 = *a1;
  if (*a1 >= a2)
  {
    return 4294960546;
  }

  v14[3] = v5;
  v14[4] = v6;
  v11 = *v7;
  v9 = (v7 + 1);
  v10 = v11;
  v14[0] = v9;
  v12 = v11 & 0xF0;
  if (a4 && v12 == 144)
  {
    *a3 = v10 & 0xF;
LABEL_8:
    result = 0;
    *a1 = v9;
    return result;
  }

  if (v12 != 16)
  {
    return 4294960540;
  }

  result = _ReadSizedInteger(v14, a2, 1 << (v10 & 0xF), a3, a5);
  if (!result)
  {
    v9 = v14[0];
    goto LABEL_8;
  }

  return result;
}

uint64_t _ReadSizedInteger(unsigned int **a1, uint64_t a2, uint64_t a3, unint64_t *a4, int a5)
{
  v5 = *a1;
  if (a2 - *a1 < a3)
  {
    return 4294960553;
  }

  v6 = 4294960532;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (a5)
      {
        v8 = *v5;
      }

      else
      {
        v8 = bswap32(*v5);
      }

      goto LABEL_17;
    }

    if (a3 == 8)
    {
      if (a5)
      {
        v8 = *v5;
      }

      else
      {
        v8 = bswap64(*v5);
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v8 = *v5;
LABEL_17:
      v6 = 0;
      *a4 = v8;
      *a1 = (v5 + a3);
      return v6;
    }

    if (a3 == 2)
    {
      v7 = *v5;
      if (a5)
      {
        v8 = v7 | (*(v5 + 1) << 8);
      }

      else
      {
        v8 = *(v5 + 1) | (v7 << 8);
      }

      goto LABEL_17;
    }
  }

  return v6;
}

CFTypeRef CFBinaryPlistStreamedCreateWithBytesEx(_DWORD *a1, uint64_t a2, int a3, int *a4)
{
  v5[0] = 0u;
  LODWORD(v5[0]) = a3;
  v5[1] = a1;
  v5[2] = 0uLL;
  return _ReadStreamed(v5, a1, a1 + a2, 0, a4);
}

CFTypeRef CFBinaryPlistStreamedCreateWithBytesEx2(_DWORD *a1, uint64_t a2, int a3, void *a4, int *a5)
{
  v6[0] = 0u;
  LODWORD(v6[0]) = a3;
  v6[1] = a1;
  v6[2] = 0uLL;
  return _ReadStreamed(v6, a1, a1 + a2, a4, a5);
}

CFTypeRef CFBinaryPlistStreamedCreateWithData(const __CFData *a1, unsigned int a2, int *a3)
{
  v10 = 0u;
  v8[0] = a2;
  v8[1] = a1;
  BytePtr = CFDataGetBytePtr(a1);
  *&v10 = 0;
  v9 = BytePtr;
  DWORD2(v10) = 0;
  Length = CFDataGetLength(a1);
  return _ReadStreamed(v8, BytePtr, &BytePtr[Length], 0, a3);
}

CFMutableDataRef CFBinaryPlistV0CreateDataEx(const void *a1, int a2, int *a3)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  v66 = 0;
  v68 = 0u;
  v63 = 0;
  memset(v60, 0, sizeof(v60));
  v57 = 0u;
  memset(&keyCallBacks, 0, sizeof(keyCallBacks));
  v56 = 0u;
  _GlobalEnsureInitialized();
  v64 = 0;
  theArray = 0u;
  v62 = 0u;
  v67 = 0;
  *&v68 = 0;
  DWORD2(v68) = 0;
  v65 = a2;
  context = CFDataCreateMutable(0, 0);
  if (!context)
  {
    v9 = 0;
    v8 = -6728;
    goto LABEL_117;
  }

  *&theArray = CFArrayCreateMutable(0, 0, 0);
  if (theArray)
  {
    v6 = *(MEMORY[0x1E695E9D8] + 32);
    *&keyCallBacks.release = *(MEMORY[0x1E695E9D8] + 16);
    *&keyCallBacks.equal = v6;
    keyCallBacks.version = *MEMORY[0x1E695E9D8];
    keyCallBacks.equal = _ObjectsExactlyEqual;
    keyCallBacks.retain = 0;
    keyCallBacks.release = 0;
    *(&theArray + 1) = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
    if (*(&theArray + 1))
    {
      _FlattenPlist(&context, a1);
      v7 = _WriteBytes(&context, "bplist00", 8);
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        goto LABEL_115;
      }

      *&v56 = 0;
      v57 = 0u;
      *(&v56 + 1) = bswap64(v62);
      if (DWORD1(v62))
      {
        v10 = 8;
      }

      else if (v62 >> 16)
      {
        v10 = 4;
      }

      else
      {
        v10 = v62 < 0x100 ? 1 : 2;
      }

      BYTE7(v56) = v10;
      LOBYTE(v63) = v10;
      v11 = malloc_type_malloc(8 * v62, 0x100004000313F17uLL);
      if (v11)
      {
        v12 = v11;
        if (v62 < 1)
        {
          v47 = 0;
LABEL_96:
          *(&v57 + 1) = bswap64(*(&v62 + 1));
          if (*(&v62 + 1) < 0x100uLL)
          {
            v48 = 1;
          }

          else
          {
            v48 = 2;
          }

          if (*(&v62 + 1) >> 16)
          {
            v48 = 4;
          }

          if (HIDWORD(*(&v62 + 1)))
          {
            v49 = 8;
          }

          else
          {
            v49 = v48;
          }

          BYTE6(v56) = v49;
          if (v47)
          {
            v50 = 0;
            while (1)
            {
              usedBufLen[0] = bswap64(v12[v50]);
              v51 = _WriteBytes(&context, &usedBufLen[1] - v49, v49);
              if (v51)
              {
                break;
              }

              if (++v50 >= v62)
              {
                goto LABEL_108;
              }
            }

            v8 = v51;
          }

          else
          {
LABEL_108:
            v8 = _WriteBytes(&context, &v56, 32);
            if (!v8)
            {
              v9 = context;
              context = 0;
              goto LABEL_114;
            }
          }

          v9 = 0;
LABEL_114:
          free(v12);
          goto LABEL_115;
        }

        v54 = a3;
        v13 = 0;
        v53 = *MEMORY[0x1E695E738];
        v55 = *MEMORY[0x1E695E4D0];
        while (1)
        {
          v12[v13] = *(&v62 + 1);
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          v70 = 0;
          v69 = 0;
          v15 = CFGetTypeID(ValueAtIndex);
          if (v15 == gCFStringType)
          {
            break;
          }

          if (v15 == gCFNumberType)
          {
            v20 = _WriteNumber(&context, ValueAtIndex, 0, 0);
            goto LABEL_37;
          }

          if (v15 == gCFBooleanType)
          {
            if (v55 == ValueAtIndex)
            {
              v21 = 9;
            }

            else
            {
              v21 = 8;
            }

            v70 = v21;
            goto LABEL_26;
          }

          if (v15 == gCFDataType)
          {
            Length = CFDataGetLength(ValueAtIndex);
            v28 = Length;
            v29 = 15;
            if (Length < 15)
            {
              v29 = Length;
            }

            v70 = v29 | 0x40;
            v30 = _WriteBytes(&context, &v70, 1);
            if (v30)
            {
              goto LABEL_112;
            }

            if (v28 >= 15)
            {
              v30 = _WriteInteger(&context, v28, 0, 0);
              if (v30)
              {
                goto LABEL_112;
              }
            }

            BytePtr = CFDataGetBytePtr(ValueAtIndex);
            v23 = v28;
LABEL_36:
            v20 = _WriteBytes(&context, BytePtr, v23);
LABEL_37:
            v8 = v20;
            if (v20)
            {
              goto LABEL_113;
            }

            goto LABEL_66;
          }

          if (v15 == gCFDictionaryType)
          {
            Count = CFDictionaryGetCount(ValueAtIndex);
            v41 = Count;
            v42 = 15;
            if (Count < 15)
            {
              v42 = Count;
            }

            v70 = v42 | 0xD0;
            v30 = _WriteBytes(&context, &v70, 1);
            if (v30)
            {
              goto LABEL_112;
            }

            if (v41 >= 15)
            {
              v30 = _WriteInteger(&context, v41, 0, 0);
              if (v30)
              {
                goto LABEL_112;
              }
            }

            CFDictionaryApplyFunction(ValueAtIndex, _WriteV0DictionaryKey, &context);
            CFDictionaryApplyFunction(ValueAtIndex, _WriteV0DictionaryValue, &context);
          }

          else
          {
            if (v15 != gCFArrayType)
            {
              if (v15 == gCFDateType)
              {
                v70 = 51;
                v30 = _WriteBytes(&context, &v70, 1);
                if (v30)
                {
                  goto LABEL_112;
                }

                v69 = bswap64(COERCE_UNSIGNED_INT64(MEMORY[0x193B04FE0](ValueAtIndex)));
                BytePtr = &v69;
                v23 = 8;
                goto LABEL_36;
              }

              if (v53 != ValueAtIndex)
              {
                v8 = -6732;
LABEL_113:
                v9 = 0;
                a3 = v54;
                goto LABEL_114;
              }

              v70 = 0;
LABEL_26:
              BytePtr = &v70;
              v23 = 1;
              goto LABEL_36;
            }

            v44 = CFArrayGetCount(ValueAtIndex);
            v45 = v44;
            v46 = 15;
            if (v44 < 15)
            {
              v46 = v44;
            }

            v70 = v46 | 0xA0;
            v30 = _WriteBytes(&context, &v70, 1);
            if (v30 || v45 >= 15 && (v30 = _WriteInteger(&context, v45, 0, 0)) != 0)
            {
LABEL_112:
              v8 = v30;
              goto LABEL_113;
            }

            v75.location = 0;
            v75.length = v45;
            CFArrayApplyFunction(ValueAtIndex, v75, _WriteV0ArrayValue, &context);
          }

LABEL_66:
          if (++v13 >= v62)
          {
            v47 = v62 > 0;
            a3 = v54;
            goto LABEL_96;
          }
        }

        v71 = 0;
        usedBufLen[0] = 0;
        CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
        if (CStringPtr)
        {
          v17 = CStringPtr;
          v18 = strlen(CStringPtr);
          v19 = 0;
        }

        else
        {
          v24 = CFStringGetLength(ValueAtIndex);
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v24, 0x8000100u);
          v26 = MaximumSizeForEncoding;
          usedBufLen[0] = MaximumSizeForEncoding;
          if (MaximumSizeForEncoding >= 256)
          {
            v19 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
            v17 = v19;
            if (!v19)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v19 = 0;
            v17 = v60;
          }

          v73.location = 0;
          v73.length = v24;
          if (CFStringGetBytes(ValueAtIndex, v73, 0x8000100u, 0, 0, v17, v26, usedBufLen) != v24)
          {
            v32 = 0;
            v8 = -6700;
            if (v19)
            {
LABEL_62:
              free(v19);
            }

LABEL_63:
            if (v32)
            {
              free(v32);
            }

            if (v8)
            {
              goto LABEL_113;
            }

            goto LABEL_66;
          }

          v17[usedBufLen[0]] = 0;
          v18 = usedBufLen[0];
        }

        v31 = 0;
        if (v18)
        {
          while ((v17[v31] & 0x80000000) == 0)
          {
            if (v18 == ++v31)
            {
              goto LABEL_47;
            }
          }
        }

        if (v31 == v18)
        {
LABEL_47:
          v32 = 0;
          v33 = 80;
        }

        else
        {
          if ((v65 & 1) == 0)
          {
            if (v19)
            {
              free(v19);
            }

            v34 = CFStringGetLength(ValueAtIndex);
            v35 = CFStringGetMaximumSizeForEncoding(v34, 0x10000100u);
            v36 = v35;
            usedBufLen[0] = v35;
            if (v35 >= 257)
            {
              v43 = malloc_type_malloc(v35, 0x1000040BDFB0063uLL);
              if (!v43)
              {
LABEL_93:
                v8 = -6728;
                goto LABEL_113;
              }

              v32 = v43;
              v36 = usedBufLen[0];
              v17 = v43;
            }

            else
            {
              v32 = 0;
              v17 = v60;
            }

            v74.location = 0;
            v74.length = v34;
            if (CFStringGetBytes(ValueAtIndex, v74, 0x10000100u, 0, 0, v17, v36, usedBufLen) != v34)
            {
              v8 = -6700;
              goto LABEL_63;
            }

            v19 = 0;
            v37 = usedBufLen[0];
            v18 = usedBufLen[0] >> 1;
            v33 = 96;
            goto LABEL_55;
          }

          v32 = 0;
          v33 = 112;
        }

        v37 = v18;
LABEL_55:
        v38 = 15;
        if (v18 < 0xF)
        {
          v38 = v18;
        }

        v71 = v33 | v38;
        v39 = _WriteBytes(&context, &v71, 1);
        if (!v39 && (v18 < 0xF || (v39 = _WriteInteger(&context, v18, 0, 0)) == 0))
        {
          v39 = _WriteBytes(&context, v17, v37);
        }

        v8 = v39;
        if (v19)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }
  }

  v9 = 0;
  v8 = -6728;
LABEL_115:
  if (context)
  {
    CFRelease(context);
    context = 0;
  }

LABEL_117:
  if (theArray)
  {
    CFRelease(theArray);
    *&theArray = 0;
  }

  if (*(&theArray + 1))
  {
    CFRelease(*(&theArray + 1));
  }

  if (a3)
  {
    *a3 = v8;
  }

  return v9;
}

void _FlattenPlist(uint64_t a1, const void *a2)
{
  Count = CFDictionaryGetCount(*(a1 + 272));
  CFDictionaryAddValue(*(a1 + 272), a2, *(a1 + 280));
  v5 = CFGetTypeID(a2);
  v6 = v5;
  v10 = v5 == gCFStringType || v5 == gCFNumberType || v5 == gCFBooleanType || v5 == gCFDataType || v5 == gCFDateType;
  if (!v10 || CFDictionaryGetCount(*(a1 + 272)) != Count)
  {
    CFArrayAppendValue(*(a1 + 264), a2);
    ++*(a1 + 280);
    if (v6 == gCFDictionaryType)
    {
      CFDictionaryApplyFunction(a2, _FlattenDictionaryKey, a1);

      CFDictionaryApplyFunction(a2, _FlattenDictionaryValue, a1);
    }

    else if (v6 == gCFArrayType)
    {
      v11.length = CFArrayGetCount(a2);
      v11.location = 0;

      CFArrayApplyFunction(a2, v11, _FlattenArray, a1);
    }
  }
}

__CFDictionary *CFBinaryPlistV0CreateWithData(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v44 = 0;
  v48 = 0;
  v41 = 0;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(&valueCallBacks, 0, sizeof(valueCallBacks));
  cf = 0;
  v42 = 0;
  v43 = 0;
  v39 = 0u;
  v40 = 0u;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (a2 <= 0)
  {
    v15 = 0;
    SizedInteger = -6743;
    goto LABEL_22;
  }

  if (a2 <= 0x28)
  {
    v15 = 0;
    v16 = -6743;
    goto LABEL_19;
  }

  if (*a1 != 0x30307473696C7062)
  {
    v15 = 0;
    v16 = -6717;
    goto LABEL_19;
  }

  v5 = (a1 + a2);
  v6 = *(a1 + a2 - 26);
  if (v6 > 8)
  {
    goto LABEL_18;
  }

  if (((1 << v6) & 0x116) == 0)
  {
    goto LABEL_18;
  }

  v7 = *(v5 - 25);
  if (v7 > 8 || ((1 << v7) & 0x116) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(v5 - 3);
  if (!v8)
  {
LABEL_27:
    v15 = 0;
    v16 = -6764;
    goto LABEL_19;
  }

  v9 = bswap64(v8);
  v10 = bswap64(*(v5 - 2));
  if (v10 >= v9)
  {
LABEL_28:
    v15 = 0;
    v16 = -6710;
    goto LABEL_19;
  }

  v11 = bswap64(*(v5 - 1));
  if (v11 <= 8 || v11 >= a2 - 32)
  {
LABEL_18:
    v15 = 0;
    v16 = -6742;
LABEL_19:
    SizedInteger = v16;
    goto LABEL_20;
  }

  v12 = (v5 - 32);
  if (v9 > (a2 - 32 - v11) / v6)
  {
    goto LABEL_27;
  }

  v13 = (v11 + v10 * v6);
  v19 = v13;
  if (v13 >= v12 - a1)
  {
    goto LABEL_28;
  }

  v18 = &v13[a1];
  SizedInteger = _ReadSizedInteger(&v18, v12, v6, &v19, 0);
  if (!SizedInteger)
  {
    _GlobalEnsureInitialized();
    *&v40 = v9;
    BYTE1(v41) = v6;
    LOBYTE(v41) = v7;
    v42 = v11;
    v14 = *(MEMORY[0x1E695E9E8] + 16);
    *&valueCallBacks.version = *MEMORY[0x1E695E9E8];
    *&valueCallBacks.release = v14;
    valueCallBacks.equal = _ObjectsExactlyEqual;
    *(&v39 + 1) = CFDictionaryCreateMutable(0, 0, 0, &valueCallBacks);
    if (*(&v39 + 1))
    {
      v15 = _ReadV0Object(&cf, a1, v12, v19, &SizedInteger);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_20;
    }

    v15 = 0;
    v16 = -6728;
    goto LABEL_19;
  }

  v15 = 0;
LABEL_20:
  if (v39)
  {
    CFRelease(v39);
    *&v39 = 0;
  }

LABEL_22:
  if (*(&v39 + 1))
  {
    CFRelease(*(&v39 + 1));
  }

  if (a3)
  {
    *a3 = SizedInteger;
  }

  return v15;
}

__CFDictionary *_ReadV0Object(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, int *a5)
{
  v53 = 0;
  v46 = 0;
  key = 0;
  v45 = 0;
  if (a3 - a2 <= a4)
  {
    v11 = 0;
    v37 = -6710;
    goto LABEL_93;
  }

  Value = CFDictionaryGetValue(*(a1 + 272), a4);
  if (Value)
  {
    v11 = Value;
    CFRetain(Value);
LABEL_88:
    v53 = 0;
    goto LABEL_89;
  }

  valuePtr = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v12 = &a4[a2];
  v14 = &a4[a2 + 1];
  v13 = a4[a2];
  v52 = v14;
  v15 = v13 >> 4;
  if (v13 >> 4 > 4)
  {
    if (v13 >> 4 <= 6)
    {
      if (v15 != 5)
      {
        if (v15 != 6)
        {
          goto LABEL_69;
        }

        v32 = v13 & 0xF;
        v51 = v32;
        if ((v13 & 0xF) == 0xF)
        {
          v53 = _ReadInteger(&v52, a3, &v51, 0, 0);
          if (v53)
          {
            goto LABEL_110;
          }

          v32 = v51;
          v14 = v52;
        }

        v33 = 2 * v32;
        if (2 * v32 > a3 - v14)
        {
          goto LABEL_92;
        }

        v34 = v14;
        v35 = 268435712;
LABEL_57:
        v17 = CFStringCreateWithBytes(0, v34, v33, v35, 0);
        goto LABEL_86;
      }
    }

    else if (v15 != 7)
    {
      if (v15 == 10)
      {
        v51 = v13 & 0xF;
        if ((v13 & 0xF) == 0xF)
        {
          v53 = _ReadInteger(&v52, a3, &v51, 0, 0);
          if (v53)
          {
            goto LABEL_110;
          }
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v20 = Mutable;
          if (!v51)
          {
LABEL_79:
            v11 = v20;
            goto LABEL_88;
          }

          v39 = v51 - 1;
          while (1)
          {
            v53 = _ReadRefOffset(a1, a2, a3, &v52, &key);
            if (v53)
            {
              v21 = 0;
LABEL_102:
              v51 = v39;
              goto LABEL_104;
            }

            v40 = *(a1 + 336);
            if (v40 >= 32)
            {
              break;
            }

            *(a1 + 336) = v40 + 1;
            v21 = _ReadV0Object(a1, a2, a3, key, &v53);
            --*(a1 + 336);
            if (v53)
            {
              goto LABEL_102;
            }

            CFArrayAppendValue(v20, v21);
            CFRelease(v21);
            if (--v39 == -1)
            {
              goto LABEL_79;
            }
          }

          v21 = 0;
          v51 = v39;
          v53 = -6751;
LABEL_104:
          CFRelease(v20);
LABEL_105:
          if (v21)
          {
            v44 = v21;
LABEL_109:
            CFRelease(v44);
          }

          goto LABEL_110;
        }

        v11 = 0;
      }

      else
      {
        if (v15 != 13)
        {
          goto LABEL_69;
        }

        v18 = v13 & 0xF;
        v51 = v18;
        if ((v13 & 0xF) == 0xF)
        {
          v53 = _ReadInteger(&v52, a3, &v51, 0, 0);
          if (v53)
          {
            goto LABEL_110;
          }

          v18 = v51;
          v14 = v52;
        }

        if (v18 > (a3 - v14) / *(a1 + 296))
        {
          goto LABEL_111;
        }

        v11 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v11)
        {
          v45 = (v14 + v18 * *(a1 + 296));
          v46 = v14;
          if (!v18)
          {
            goto LABEL_88;
          }

          v19 = v18 - 1;
          while (1)
          {
            if (*(a1 + 336) >= 32)
            {
              v53 = -6751;
LABEL_108:
              v44 = v11;
              goto LABEL_109;
            }

            v53 = _ReadRefOffset(a1, a2, a3, &v46, &key);
            if (v53)
            {
              goto LABEL_108;
            }

            ++*(a1 + 336);
            v20 = _ReadV0Object(a1, a2, a3, key, &v53);
            --*(a1 + 336);
            if (v53)
            {
              break;
            }

            v53 = _ReadRefOffset(a1, a2, a3, &v45, &key);
            if (v53)
            {
              break;
            }

            ++*(a1 + 336);
            v21 = _ReadV0Object(a1, a2, a3, key, &v53);
            --*(a1 + 336);
            if (v53)
            {
              goto LABEL_98;
            }

            CFDictionarySetValue(v11, v20, v21);
            CFRelease(v20);
            CFRelease(v21);
            if (--v19 == -1)
            {
              goto LABEL_88;
            }
          }

          v21 = 0;
LABEL_98:
          v51 = v19;
          CFRelease(v11);
          if (v20)
          {
            goto LABEL_104;
          }

          goto LABEL_105;
        }
      }

LABEL_113:
      v37 = -6728;
      goto LABEL_93;
    }

    v33 = v13 & 0xF;
    v51 = v33;
    if ((v13 & 0xF) == 0xF)
    {
      v53 = _ReadInteger(&v52, a3, &v51, 0, 0);
      if (v53)
      {
        goto LABEL_110;
      }

      v33 = v51;
      v14 = v52;
    }

    if (v33 > a3 - v14)
    {
      goto LABEL_92;
    }

    if ((v13 & 0xF0) == 0x50)
    {
      v35 = 1536;
    }

    else
    {
      v35 = 134217984;
    }

    v34 = v14;
    goto LABEL_57;
  }

  if (v13 >> 4 <= 1)
  {
    if (!v15)
    {
      if (v13 == 9)
      {
        v36 = MEMORY[0x1E695E4D0];
      }

      else if (v13 == 8)
      {
        v36 = MEMORY[0x1E695E4C0];
      }

      else
      {
        if (v13)
        {
          goto LABEL_69;
        }

        v36 = MEMORY[0x1E695E738];
      }

      v11 = CFRetain(*v36);
      goto LABEL_88;
    }

    if (v15 != 1)
    {
LABEL_69:
      v11 = 0;
      v37 = -6756;
LABEL_93:
      v53 = v37;
      goto LABEL_89;
    }

    v22 = v13 & 0xF;
    if (v22 < 5)
    {
      v23 = 1 << v22;
      if (a3 - v14 < 1 << v22)
      {
        goto LABEL_92;
      }

      if (v22 == 4)
      {
        v24 = 0;
        for (i = 16; i > 8; --i)
        {
          v26 = *v14;
          v14 = (v14 + 1);
          v24 = v26 | (v24 << 8);
        }

        v27 = 0;
        v28 = 0;
        v29 = (v12 + 9);
        v48 = v24;
        v52 = v29;
        do
        {
          v28 = *(v29 + v27++) | (v28 << 8);
        }

        while (v27 != 8);
        v49 = v28;
        p_valuePtr = &v48;
        v31 = kCFNumberMaxType|kCFNumberSInt8Type;
      }

      else
      {
        v41 = 0;
        do
        {
          v42 = *v14;
          v14 = (v14 + 1);
          v41 = v42 | (v41 << 8);
          LODWORD(v23) = v23 - 1;
        }

        while (v23);
        valuePtr = v41;
        p_valuePtr = &valuePtr;
        v31 = kCFNumberSInt64Type;
      }

LABEL_85:
      v17 = CFNumberCreate(0, v31, p_valuePtr);
LABEL_86:
      v11 = v17;
      if (v17)
      {
        CFDictionarySetValue(*(a1 + 272), a4, v17);
        goto LABEL_88;
      }

      goto LABEL_113;
    }

LABEL_111:
    v11 = 0;
    v37 = -6764;
    goto LABEL_93;
  }

  if (v15 == 2)
  {
    if ((v13 & 0xF) == 3)
    {
      if ((a3 - v14) <= 7)
      {
        goto LABEL_92;
      }

      valuePtr = bswap64(*(v12 + 1));
      p_valuePtr = &valuePtr;
      v31 = kCFNumberFloat64Type;
    }

    else
    {
      if ((v13 & 0xF) != 2 || (a3 - v14) <= 3)
      {
        goto LABEL_92;
      }

      LODWORD(valuePtr) = bswap32(*(v12 + 1));
      p_valuePtr = &valuePtr;
      v31 = kCFNumberFloat32Type;
    }

    goto LABEL_85;
  }

  if (v15 == 3)
  {
    if (v13 != 51)
    {
      goto LABEL_69;
    }

    if ((a3 - v14) > 7)
    {
      v17 = CFDateCreate(0, COERCE_CFABSOLUTETIME(bswap64(*(v12 + 1))));
      goto LABEL_86;
    }

LABEL_92:
    v11 = 0;
    v37 = -6743;
    goto LABEL_93;
  }

  if (v15 != 4)
  {
    goto LABEL_69;
  }

  v16 = v13 & 0xF;
  v51 = v16;
  if ((v13 & 0xF) != 0xF)
  {
    goto LABEL_12;
  }

  v53 = _ReadInteger(&v52, a3, &v51, 0, 0);
  if (!v53)
  {
    v16 = v51;
    v14 = v52;
LABEL_12:
    if (v16 <= a3 - v14)
    {
      v17 = CFDataCreate(0, v14, v16);
      goto LABEL_86;
    }

    goto LABEL_92;
  }

LABEL_110:
  v11 = 0;
LABEL_89:
  if (a5)
  {
    *a5 = v53;
  }

  return v11;
}

uint64_t _ReadRefOffset(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, unint64_t *a5)
{
  v5 = *a4;
  v6 = *(a1 + 296);
  if (a3 - *a4 <= v6)
  {
    return 4294960546;
  }

  v7 = 4294960534;
  if (*(a1 + 296) > 3u)
  {
    if (v6 == 4)
    {
      v8 = bswap32(*v5);
    }

    else
    {
      if (v6 != 8)
      {
        return v7;
      }

      v8 = bswap64(*v5);
    }
  }

  else if (v6 == 1)
  {
    v8 = *v5;
  }

  else
  {
    if (v6 != 2)
    {
      return v7;
    }

    v8 = __rev16(*v5);
  }

  *a4 = (v5 + v6);
  if (v8 >= *(a1 + 280))
  {
    return 4294960586;
  }

  v9 = *(a1 + 297);
  v10 = (a2 + *(a1 + 304) + v8 * v9);
  v7 = 4294960534;
  if (*(a1 + 297) > 3u)
  {
    if (v9 == 4)
    {
      v11 = bswap32(*v10);
      goto LABEL_21;
    }

    if (v9 == 8)
    {
      v11 = bswap64(*v10);
      goto LABEL_21;
    }
  }

  else
  {
    if (v9 == 1)
    {
      v11 = *v10;
      goto LABEL_21;
    }

    if (v9 == 2)
    {
      v11 = __rev16(*v10);
LABEL_21:
      v7 = 0;
      *a5 = v11;
    }
  }

  return v7;
}

uint64_t CFPrefs_RemoveValue(const __CFString *a1, CFStringRef key)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = *MEMORY[0x1E695E8A8];
  }

  CFPreferencesSetAppValue(key, 0, v2);
  return 0;
}

uint64_t CFPrefs_SetValue(const __CFString *a1, CFStringRef key, CFPropertyListRef value)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = *MEMORY[0x1E695E8A8];
  }

  CFPreferencesSetAppValue(key, value, v4);
  return 0;
}

const char *CFPrefs_GetCString(const __CFString *a1, CFStringRef key, char *a3, size_t a4, int *a5)
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = *MEMORY[0x1E695E8A8];
  }

  v10 = CFPreferencesCopyAppValue(key, v9);
  v11 = v10;
  if (a5)
  {
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = -6727;
    }

    *a5 = v12;
  }

  if (v10)
  {
    a3 = CFGetCString(v10, a3, a4);
    CFRelease(v11);
  }

  else if (a4)
  {
    *a3 = 0;
  }

  else
  {
    return "";
  }

  return a3;
}

uint64_t CFPrefs_SetCString(const __CFString *a1, const __CFString *a2, char *cStr, CFIndex numBytes)
{
  if (numBytes == -1)
  {
    v6 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  }

  else
  {
    v6 = CFStringCreateWithBytes(0, cStr, numBytes, 0x8000100u, 0);
  }

  v7 = v6;
  if (!v6)
  {
    return 4294960579;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = *MEMORY[0x1E695E8A8];
  }

  CFPreferencesSetAppValue(a2, v6, v8);
  CFRelease(v7);
  return 0;
}

const char *CFPrefs_GetData(const __CFString *a1, CFStringRef key, const char *a3, unint64_t a4, void *a5, int *a6)
{
  if (a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = *MEMORY[0x1E695E8A8];
  }

  v12 = CFPreferencesCopyAppValue(key, v11);
  v13 = v12;
  if (a6)
  {
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = -6727;
    }

    *a6 = v14;
  }

  if (v12)
  {
    v15 = CFGetData(v12, a3, a4, a5, a6);
    CFRelease(v13);
    return v15;
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    return a3;
  }
}

void CFPrefs_GetDouble(const __CFString *a1, CFStringRef key, int *a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = *MEMORY[0x1E695E8A8];
  }

  v6 = CFPreferencesCopyAppValue(key, v5);
  v7 = v6;
  if (a3)
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = -6727;
    }

    *a3 = v8;
  }

  if (v6)
  {
    CFGetDouble(v6, a3);
    CFRelease(v7);
  }
}

uint64_t CFPrefs_SetDouble(const __CFString *a1, const __CFString *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    return 4294960596;
  }

  v6 = v5;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = *MEMORY[0x1E695E8A8];
  }

  CFPreferencesSetAppValue(a2, v5, v7);
  CFRelease(v6);
  return 0;
}

uint64_t CFPrefs_SetInt64(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  Int64 = CFNumberCreateInt64(a3);
  if (!Int64)
  {
    return 4294960596;
  }

  v6 = Int64;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = *MEMORY[0x1E695E8A8];
  }

  CFPreferencesSetAppValue(a2, Int64, v7);
  CFRelease(v6);
  return 0;
}

uint64_t CFRuntimeCreateObject(uint64_t a1, unint64_t a2, int *a3)
{
  v4 = a2 - 16;
  if (a2 < 0x10)
  {
    v6 = 0;
    v7 = -6743;
  }

  else
  {
    Instance = _CFRuntimeCreateInstance();
    v6 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), v4);
      v7 = 0;
    }

    else
    {
      v7 = -6728;
    }
  }

  if (a3)
  {
    *a3 = v7;
  }

  return v6;
}

CFTypeRef CFCreateF(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v10 = CFPropertyListBuildFormatted(0, 0, &v12, a2, &a9, a6, a7, a8);
  if (a1)
  {
    *a1 = v10;
  }

  return v12;
}

uint64_t CFPropertyListBuildFormatted(const __CFAllocator *TypeID, void *cf, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = cf;
  v98 = *MEMORY[0x1E69E9840];
  cfa = 0;
  v96 = a5;
  valuePtr = 0;
  v94 = 0;
  if (!a4)
  {
    v14 = 0;
    v22 = 4294960591;
    goto LABEL_207;
  }

  v9 = a4;
  v11 = TypeID;
  if (cf)
  {
    v12 = CFGetTypeID(cf);
    TypeID = CFArrayGetTypeID();
    if (v12 == TypeID)
    {
      v91 = a3;
      v92 = v8;
      v13 = 0;
      v14 = v8;
    }

    else
    {
      TypeID = CFDictionaryGetTypeID();
      v14 = 0;
      if (v12 != TypeID)
      {
        v22 = 4294960540;
        goto LABEL_207;
      }

      v91 = a3;
      v92 = v8;
      v13 = v8;
    }
  }

  else
  {
    v91 = a3;
    v92 = 0;
    v14 = 0;
    v13 = 0;
  }

  v90 = *MEMORY[0x1E695E4D0];
  v89 = *MEMORY[0x1E695E4C0];
  v15 = v14;
  v14 = 0;
  while (1)
  {
    v16 = *v9;
    if (v16 <= 0x5C)
    {
      if (v16 != 37)
      {
        if (v16 != 91)
        {
          v17 = v9;
          if (!*v9)
          {
            break;
          }

          goto LABEL_35;
        }

        Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          goto LABEL_202;
        }

        v18 = Mutable;
        v22 = _CFPropertyListAssociateObject(v15, v13, &cfa, Mutable, &v94);
        CFRelease(v18);
        if (v22)
        {
          goto LABEL_206;
        }

        TypeID = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
        if (!TypeID)
        {
          goto LABEL_202;
        }

        v20 = 0;
LABEL_25:
        *TypeID = v14;
        *(TypeID + 1) = v15;
        v14 = TypeID;
        *(TypeID + 2) = v13;
        goto LABEL_188;
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        while (1)
        {
          v28 = v9++;
          v27 = *v9;
          if (v27 != 35)
          {
            break;
          }

          ++v26;
        }

        if (v27 == 46)
        {
          break;
        }

        if (v27 == 63)
        {
          v29 = v96;
          v96 += 2;
          v24 = *v29 == 0;
        }

        else
        {
          if (v27 != 108)
          {
            v34 = 0xFFFFFFFFLL;
            goto LABEL_57;
          }

          ++v25;
        }
      }

      ++v9;
      v27 = v28[2];
      if (v27 == 42)
      {
        v33 = v96;
        v96 += 2;
        v34 = *v33;
        if ((v34 & 0x80000000) == 0)
        {
          v27 = v28[3];
          v9 = v28 + 3;
          goto LABEL_57;
        }

        goto LABEL_205;
      }

      v36 = v27 - 48;
      if ((v27 - 48) > 9)
      {
        v34 = 0;
      }

      else
      {
        LODWORD(v34) = 0;
        do
        {
          v34 = (v36 + 10 * v34);
          v37 = *++v9;
          v27 = v37;
          v36 = v37 - 48;
        }

        while ((v37 - 48) < 0xA);
        if ((v34 & 0x80000000) != 0)
        {
LABEL_205:
          v22 = 4294960553;
          goto LABEL_206;
        }
      }

LABEL_57:
      v22 = 4294960579;
      if (v27 <= 97)
      {
        if (v27 > 78)
        {
          if (v27 <= 84)
          {
            if (v27 != 79)
            {
              if (v27 != 84 || v34 != -1)
              {
                goto LABEL_206;
              }

              v38 = v96;
              v96 += 2;
              v39 = *v38;
              v96 = v38 + 4;
              v40 = v38[2];
              v96 = v38 + 6;
              a4 = v38[4];
              v96 = v38 + 8;
              a5 = v38[6];
              v96 = v38 + 10;
              a6 = v38[8];
              v96 = v38 + 12;
              if (!v24)
              {
                DeepCopy = CFDateCreateWithComponents(TypeID, v39, v40, a4, a5, a6, v38[10]);
                if (!DeepCopy)
                {
                  goto LABEL_202;
                }

                goto LABEL_186;
              }

              goto LABEL_156;
            }

LABEL_113:
            if (v34 != -1)
            {
              goto LABEL_206;
            }

            v55 = v96;
            v96 += 2;
            v56 = *v55;
            if (*v55 && !v24)
            {
              if (v26 != 2)
              {
                if (v26 == 1)
                {
                  DeepCopy = CFPropertyListCreateDeepCopy(v11, *v55, 2uLL);
                  if (!DeepCopy)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_186;
                }

                v71 = v15;
                v72 = v13;
                v70 = *v55;
LABEL_170:
                TypeID = _CFPropertyListAssociateObject(v71, v72, &cfa, v70, &v94);
                if (TypeID)
                {
                  v22 = TypeID;
                  goto LABEL_206;
                }

                goto LABEL_187;
              }

              v35 = cfa;
              v22 = 4294960591;
              if (!cfa && v13)
              {
                v78 = CFGetTypeID(*v55);
                if (v78 != CFDictionaryGetTypeID())
                {
                  v22 = 4294960540;
                  goto LABEL_206;
                }

                CFDictionaryApplyFunction(v56, _CFDictionaryMergeDictionaryApplier, v13);
                goto LABEL_187;
              }

LABEL_204:
              v8 = v92;
              goto LABEL_208;
            }

LABEL_156:
            TypeID = cfa;
            if (cfa)
            {
              CFRelease(cfa);
              cfa = 0;
            }

            goto LABEL_187;
          }

          if (v27 != 85)
          {
            if (v27 != 97)
            {
              goto LABEL_206;
            }

            v48 = v96;
            v96 += 2;
            v49 = *v48;
            if (!v49 || v24)
            {
              goto LABEL_156;
            }

            if (v26 == 2)
            {
              v50 = SNPrintF(bytes, 64, "%##a", a4, a5, a6, a7, a8, v49);
            }

            else
            {
              v50 = SNPrintF(bytes, 64, "%.*a", a4, a5, a6, a7, a8, v34);
            }

            if (v50 < 1)
            {
              v22 = 4294960596;
              goto LABEL_206;
            }

            v54 = v50;
            v52 = bytes;
            goto LABEL_175;
          }

          v61 = v96;
          v96 += 2;
          v62 = *v61;
          if (!*v61 || v24)
          {
            goto LABEL_156;
          }

          if (v26)
          {
            DeepCopy = CFUUIDCreateFromUUIDBytes(0, *v62);
            if (!DeepCopy)
            {
              goto LABEL_202;
            }

            goto LABEL_186;
          }

          UUIDtoCStringFlags(v62, 16, 0, 0, bytes, 0);
          v52 = bytes;
          v84 = 0;
LABEL_185:
          DeepCopy = CFStringCreateWithCString(v84, v52, 0x8000100u);
          if (!DeepCopy)
          {
            goto LABEL_202;
          }

          goto LABEL_186;
        }

        if (v27 == 64)
        {
          if (v34 != -1)
          {
            goto LABEL_206;
          }

          v66 = v96;
          v96 += 2;
          v67 = *v66;
          if (v67)
          {
            if (v15)
            {
              v68 = v15;
            }

            else
            {
              v68 = v13;
            }

            *v67 = v68;
            goto LABEL_187;
          }

          goto LABEL_220;
        }

        if (v27 == 67)
        {
          if (v34 != -1)
          {
            goto LABEL_206;
          }

          v63 = v96;
          v96 += 2;
          if (v24)
          {
            goto LABEL_156;
          }

          *bytes = bswap32(*v63);
          v52 = bytes;
          v64 = v11;
          v54 = 4;
          v65 = 0;
          goto LABEL_176;
        }

        if (v27 != 68)
        {
          goto LABEL_206;
        }

LABEL_120:
        if (v34 != -1)
        {
          goto LABEL_206;
        }

        v57 = v96;
        v96 += 2;
        v58 = *v57;
        if (v26)
        {
          if (!v58 || v24)
          {
            goto LABEL_156;
          }

          DeepCopy = CFPropertyListCreateData(0, v58, kCFPropertyListBinaryFormat_v1_0, 0, 0);
          if (!DeepCopy)
          {
            v22 = 4294960564;
            goto LABEL_206;
          }

LABEL_186:
          v85 = DeepCopy;
          v22 = _CFPropertyListAssociateObject(v15, v13, &cfa, DeepCopy, &v94);
          CFRelease(v85);
          if (v22)
          {
            goto LABEL_206;
          }

          goto LABEL_187;
        }

        v73 = v96;
        v96 += 2;
        if (v24)
        {
          goto LABEL_156;
        }

        v74 = *v73;
        if (v58 || !v74)
        {
          DeepCopy = CFDataCreate(v11, v58, v74);
          if (!DeepCopy)
          {
            goto LABEL_202;
          }

          goto LABEL_186;
        }

LABEL_220:
        v22 = 4294960591;
        goto LABEL_206;
      }

      if (v27 <= 104)
      {
        if (v27 == 98)
        {
          if (v34 != -1)
          {
            goto LABEL_206;
          }

          v69 = v96;
          v96 += 2;
          if (!v24)
          {
            if (*v69)
            {
              v70 = v90;
            }

            else
            {
              v70 = v89;
            }

            v71 = v15;
            v72 = v13;
            goto LABEL_170;
          }

          goto LABEL_156;
        }

        if (v27 != 100)
        {
          if (v27 != 102 || v34 != -1)
          {
            goto LABEL_206;
          }

          v47 = v96;
          v96 += 2;
          valuePtr = *v47;
          if (!v24)
          {
            DeepCopy = CFNumberCreate(v11, kCFNumberDoubleType, &valuePtr);
            if (!DeepCopy)
            {
              goto LABEL_202;
            }

            goto LABEL_186;
          }

          goto LABEL_156;
        }

        goto LABEL_120;
      }

      if (v27 > 110)
      {
        if (v27 == 111)
        {
          goto LABEL_113;
        }

        if (v27 != 115)
        {
          goto LABEL_206;
        }

        v51 = v96;
        v96 += 2;
        v52 = *v51;
        if (!*v51 || v24)
        {
          goto LABEL_156;
        }

        if ((v34 & 0x80000000) == 0)
        {
          if (v34)
          {
            v53 = 0;
            while (v52[v53])
            {
              if (v34 == ++v53)
              {
                LODWORD(v53) = v34;
                break;
              }
            }

            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

LABEL_175:
          v64 = v11;
          v65 = 134217984;
LABEL_176:
          DeepCopy = CFStringCreateWithBytes(v64, v52, v54, v65, 0);
          if (!DeepCopy)
          {
            goto LABEL_202;
          }

          goto LABEL_186;
        }

        v84 = v11;
        goto LABEL_185;
      }

      if (v27 == 105)
      {
        if (v34 != -1)
        {
          goto LABEL_206;
        }

        if (v25 == 2)
        {
          v59 = v96;
          v96 += 2;
          v60 = *v59;
          if (v24)
          {
            goto LABEL_156;
          }
        }

        else
        {
          v75 = v96;
          v96 += 2;
          v60 = *v75;
          if (v24)
          {
            goto LABEL_156;
          }
        }

        DeepCopy = CFNumberCreateInt64(v60);
        if (!DeepCopy)
        {
          goto LABEL_202;
        }

        goto LABEL_186;
      }

      if (v27 != 107)
      {
        goto LABEL_206;
      }

      v35 = cfa;
      v22 = 4294960554;
      if (cfa || !v13)
      {
        goto LABEL_204;
      }

      if (v24)
      {
        v22 = 4294960561;
        goto LABEL_206;
      }

      v42 = v9[1];
      v22 = 4294960579;
      if (v42 <= 0x54)
      {
        if (v42 == 67)
        {
          if (v34 != -1)
          {
            goto LABEL_206;
          }

          v79 = v96;
          v96 += 2;
          *bytes = bswap32(*v79);
          v44 = bytes;
          v80 = v11;
          v46 = 4;
          v81 = 0;
          goto LABEL_194;
        }

        if (v42 != 79)
        {
          goto LABEL_206;
        }
      }

      else
      {
        if (v42 == 85)
        {
          if (v34 != -1)
          {
            goto LABEL_206;
          }

          v82 = v96;
          v96 += 2;
          if (!*v82)
          {
            goto LABEL_220;
          }

          UUIDtoCStringFlags(*v82, 16, 0, 0, bytes, 0);
          v44 = bytes;
          v83 = 0;
          goto LABEL_191;
        }

        if (v42 != 111)
        {
          if (v42 != 115)
          {
            goto LABEL_206;
          }

          v43 = v96;
          v96 += 2;
          v44 = *v43;
          if (!*v43)
          {
            goto LABEL_220;
          }

          if ((v34 & 0x80000000) == 0)
          {
            if (v34)
            {
              v45 = 0;
              while (v44[v45])
              {
                if (v34 == ++v45)
                {
                  LODWORD(v45) = v34;
                  break;
                }
              }

              v46 = v45;
            }

            else
            {
              v46 = 0;
            }

            v80 = v11;
            v81 = 134217984;
LABEL_194:
            TypeID = CFStringCreateWithBytes(v80, v44, v46, v81, 0);
            goto LABEL_195;
          }

          v83 = v11;
LABEL_191:
          TypeID = CFStringCreateWithCString(v83, v44, 0x8000100u);
LABEL_195:
          cfa = TypeID;
          if (TypeID)
          {
LABEL_196:
            v86 = v9[2];
            v9 += 2;
            if (v86 != 61)
            {
              v22 = 4294960579;
              goto LABEL_206;
            }

LABEL_187:
            v18 = v15;
            v20 = v13;
            goto LABEL_188;
          }

LABEL_216:
          v22 = 4294960568;
          goto LABEL_217;
        }
      }

      if (v34 != -1)
      {
        goto LABEL_206;
      }

      v76 = v96;
      v96 += 2;
      v77 = *v76;
      cfa = v77;
      if (v77)
      {
        TypeID = CFRetain(v77);
        goto LABEL_196;
      }

      v22 = 4294960591;
LABEL_217:
      if (!v92)
      {
        goto LABEL_211;
      }

      goto LABEL_213;
    }

    if (v16 == 93)
    {
      goto LABEL_13;
    }

    if (v16 == 123)
    {
      v23 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v23)
      {
        goto LABEL_202;
      }

      v20 = v23;
      v22 = _CFPropertyListAssociateObject(v15, v13, &cfa, v23, &v94);
      CFRelease(v20);
      if (v22)
      {
        goto LABEL_206;
      }

      TypeID = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
      if (!TypeID)
      {
        goto LABEL_202;
      }

      v18 = 0;
      goto LABEL_25;
    }

    v17 = v9;
    if (v16 == 125)
    {
LABEL_13:
      if (v14)
      {
        v19 = *v14;
        v18 = *(v14 + 1);
        v20 = *(v14 + 2);
        free(v14);
        v14 = v19;
        goto LABEL_188;
      }

      v22 = 4294960554;
LABEL_206:
      v8 = v92;
      goto LABEL_207;
    }

LABEL_35:
    if (*v9)
    {
      while (v16 != 59)
      {
        if (v16 == 61)
        {
          v35 = cfa;
          v22 = 4294960554;
          if (cfa || !v13)
          {
            goto LABEL_204;
          }

          TypeID = CFStringCreateWithBytes(v11, v9, v17 - v9, 0x8000100u, 0);
          cfa = TypeID;
          if (!TypeID)
          {
            goto LABEL_216;
          }

          goto LABEL_50;
        }

        v30 = *++v17;
        v16 = v30;
        if (!v30)
        {
          break;
        }
      }
    }

    v31 = CFStringCreateWithBytes(v11, v9, v17 - v9, 0x8000100u, 0);
    if (!v31)
    {
LABEL_202:
      v22 = 4294960568;
      goto LABEL_206;
    }

    v32 = v31;
    v22 = _CFPropertyListAssociateObject(v15, v13, &cfa, v31, &v94);
    CFRelease(v32);
    if (v22)
    {
      goto LABEL_206;
    }

    if (!v16)
    {
      break;
    }

LABEL_50:
    v18 = v15;
    v20 = v13;
    v9 = v17;
LABEL_188:
    ++v9;
    v15 = v18;
    v13 = v20;
  }

  v8 = v92;
  v22 = 0;
  if (v91)
  {
    *v91 = v94;
    v94 = 0;
  }

LABEL_207:
  v35 = cfa;
LABEL_208:
  if (v35)
  {
    CFRelease(v35);
  }

  if (!v8)
  {
LABEL_211:
    if (v94)
    {
      CFRelease(v94);
    }
  }

LABEL_213:
  if (v14)
  {
    do
    {
      v87 = *v14;
      free(v14);
      v14 = v87;
    }

    while (v87);
  }

  return v22;
}

uint64_t _CFPropertyListAssociateObject(__CFArray *a1, CFMutableDictionaryRef theDict, const void **a3, CFTypeRef cf, void *a5)
{
  if (a1)
  {
    CFArrayAppendValue(a1, cf);
  }

  else if (theDict)
  {
    if (!*a3)
    {
      return 4294960554;
    }

    CFDictionarySetValue(theDict, *a3, cf);
    CFRelease(*a3);
    *a3 = 0;
  }

  else
  {
    CFRetain(cf);
  }

  result = 0;
  if (!*a5)
  {
    *a5 = cf;
  }

  return result;
}

CFDateRef CFDateCreateWithComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = CFCalendarCopyCurrent();
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  at = 0.0;
  v15 = CFTimeZoneCreateWithName(0, @"GMT", 0);
  if (v15 && (v16 = v15, CFCalendarSetTimeZone(v14, v15), CFRelease(v16), CFCalendarComposeAbsoluteTime(v14, &at, "yMdHms", a2, a3, a4, a5, a6, a7)))
  {
    v17 = CFDateCreate(0, at);
  }

  else
  {
    v17 = 0;
  }

  CFRelease(v14);
  return v17;
}

CFTypeRef CFCreateV(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v9 = CFPropertyListBuildFormatted(0, 0, &v11, a2, a3, a6, a7, a8);
  if (a1)
  {
    *a1 = v9;
  }

  return v11;
}

uint64_t CFPropertyListExtractFormatted(const __CFString *cf, uint64_t a2, UInt8 *bytes, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v122 = *MEMORY[0x1E69E9840];
  maxBufLen = 0;
  v118 = &a9;
  v117 = 0;
  v9 = *bytes;
  if (!*bytes)
  {
    return 4294960569;
  }

  v10 = bytes;
  v12 = *MEMORY[0x1E695E480];
  while (1)
  {
    v13 = v9;
    v14 = v10;
    while (v13 > 0x3A || ((1 << v13) & 0x400400000000001) == 0)
    {
      v15 = *++v14;
      v13 = v15;
    }

    v16 = v14;
    if (v13)
    {
      do
      {
        if (v13 == 46)
        {
          break;
        }

        v17 = *++v16;
        v13 = v17;
      }

      while (v17);
    }

    if (v9 == 91)
    {
      v20 = v10[1];
      if (v20 == 42)
      {
        if (v10[2] != 93)
        {
          return 4294960579;
        }

        v21 = v118++;
        v22 = *v21;
        if ((v22 & 0x80000000) != 0)
        {
          return 4294960586;
        }

        v14 = v10 + 3;
      }

      else
      {
        v24 = v20 - 48;
        if (v24 > 9)
        {
          return 4294960579;
        }

        v22 = 0;
        do
        {
          v22 = 10 * v22 + v24;
          v25 = v10[2];
          v24 = v25 - 48;
          ++v10;
        }

        while ((v25 - 48) < 0xA);
        if (v22 < 0)
        {
          return 4294960586;
        }

        if (v25 != 93)
        {
          return 4294960579;
        }

        v14 = v10 + 2;
      }

      v26 = CFGetTypeID(cf);
      if (v26 != CFArrayGetTypeID())
      {
        return 4294960540;
      }

      if (v22 >= CFArrayGetCount(cf))
      {
        return 4294960586;
      }

      cf = CFArrayGetValueAtIndex(cf, v22);
      goto LABEL_55;
    }

    if (v9 != 37)
    {
      if (v10 >= v14)
      {
        v14 = v10;
        goto LABEL_55;
      }

      v23 = CFStringCreateWithBytes(v12, v10, v14 - v10, 0x8000100u, 0);
      if (!v23)
      {
        return 4294960568;
      }

      goto LABEL_53;
    }

    if (v10[1] != 107)
    {
      return 4294960579;
    }

    v18 = v10[2];
    result = 4294960579;
    if (v18 <= 0x68)
    {
      if (v18 != 67)
      {
        if (v18 == 79)
        {
          goto LABEL_43;
        }

        if (v18 != 99)
        {
          return result;
        }
      }

      v27 = v118++;
      *buffer = bswap32(*v27);
      v28 = buffer;
      v29 = v12;
      v30 = 4;
      v31 = 0;
      goto LABEL_50;
    }

    if (v10[2] <= 0x72u)
    {
      if (v18 != 105)
      {
        if (v18 != 111)
        {
          return result;
        }

LABEL_43:
        v35 = v118++;
        v23 = *v35;
        if (!*v35)
        {
          return 4294960591;
        }

        CFRetain(*v35);
        goto LABEL_52;
      }

      v36 = v118++;
      SNPrintF(cStr, 64, "%llu", a4, a5, a6, a7, a8, *v36);
      v33 = cStr;
      v34 = 0;
      goto LABEL_46;
    }

    if (v18 == 116)
    {
      v38 = v118++;
      v28 = *v38;
      if (!*v38)
      {
        return 4294960591;
      }

      v39 = v118++;
      v30 = *v39;
      v29 = v12;
      v31 = 134217984;
LABEL_50:
      v37 = CFStringCreateWithBytes(v29, v28, v30, v31, 0);
      if (!v37)
      {
        return 4294960568;
      }

      goto LABEL_51;
    }

    if (v18 != 115)
    {
      return result;
    }

    v32 = v118++;
    v33 = *v32;
    if (!*v32)
    {
      return 4294960591;
    }

    v34 = v12;
LABEL_46:
    v37 = CFStringCreateWithCString(v34, v33, 0x8000100u);
    if (!v37)
    {
      return 4294960568;
    }

LABEL_51:
    v23 = v37;
LABEL_52:
    v14 = v10 + 3;
LABEL_53:
    v40 = CFGetTypeID(cf);
    if (v40 != CFDictionaryGetTypeID())
    {
      CFRelease(v23);
      return 4294960540;
    }

    cf = CFDictionaryGetValue(cf, v23);
    CFRelease(v23);
    if (!cf)
    {
      return 4294960569;
    }

LABEL_55:
    if (*v14 == 58)
    {
      break;
    }

    if (*v16)
    {
      v10 = v16 + 1;
    }

    else
    {
      v10 = v16;
    }

    v9 = *v10;
    if (!*v10)
    {
      if (!cf)
      {
        return 4294960569;
      }

LABEL_61:
      if (a2)
      {
        *a2 = cf;
      }

      return 0;
    }
  }

  v41 = (v14 + 1);
  for (i = v14 + 1; *i; ++i)
  {
    if (*i == 46)
    {
      return 4294960579;
    }
  }

  if (!cf)
  {
    return 4294960569;
  }

  if (!strcmp(v14 + 1, "err") || !strcmp(v14 + 1, "int"))
  {
    LODWORD(v46) = CFGetInt64(cf, &v117);
    result = v117;
    if (v117)
    {
      return result;
    }

    v47 = a2;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_94;
  }

  if (!strcmp(v14 + 1, "int8"))
  {
    LOBYTE(v46) = CFGetInt64(cf, &v117);
    result = v117;
    if (v117)
    {
      return result;
    }

    v48 = a2;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_97;
  }

  if (!strcmp(v14 + 1, "int16"))
  {
    LOWORD(v46) = CFGetInt64(cf, &v117);
    result = v117;
    if (v117)
    {
      return result;
    }

    v49 = a2;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_100;
  }

  if (!strcmp(v14 + 1, "int64"))
  {
    v46 = CFGetInt64(cf, &v117);
    result = v117;
    if (v117)
    {
      return result;
    }

    v50 = a2;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_103;
  }

  if (!strcmp(v14 + 1, "int*"))
  {
    v46 = CFGetInt64(cf, &v117);
    result = v117;
    if (v117)
    {
      return result;
    }

    v51 = v118++;
    v52 = *v51;
    result = 4294960553;
    if (v52 <= 3)
    {
      if (v52 != 1)
      {
        if (v52 != 2)
        {
          return result;
        }

        v49 = a2;
LABEL_100:
        *v49 = v46;
        return 0;
      }

      v48 = a2;
LABEL_97:
      *v48 = v46;
      return 0;
    }

    if (v52 != 4)
    {
      if (v52 != 8)
      {
        return result;
      }

      v50 = a2;
LABEL_103:
      *v50 = v46;
      return 0;
    }

    v47 = a2;
LABEL_94:
    *v47 = v46;
    return 0;
  }

  if (!strcmp(v14 + 1, "utf8"))
  {
    v53 = CFGetTypeID(cf);
    if (v53 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    Length = CFStringGetLength(cf);
    maxBufLen = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v55 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
    if (!v55)
    {
      return 4294960568;
    }

    v56 = v55;
    v123.location = 0;
    v123.length = Length;
    if (CFStringGetBytes(cf, v123, 0x8000100u, 0, 0, v55, maxBufLen, &maxBufLen) == Length)
    {
      v56[maxBufLen] = 0;
      if (a2)
      {
        *a2 = v56;
      }

      else
      {
        free(v56);
      }

      return 0;
    }

    free(v56);
    return 4294960560;
  }

  if (!strcmp(v14 + 1, "*utf8"))
  {
    v57 = CFGetTypeID(cf);
    if (v57 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    v58 = v118++;
    if (CFStringGetCString(cf, a2, *v58, 0x8000100u))
    {
      return 0;
    }

    return 4294960553;
  }

  if (!strcmp(v14 + 1, "obj"))
  {
    if (a2)
    {
      CFRetain(cf);
      *a2 = cf;
    }

    return 0;
  }

  if (!strcmp(v14 + 1, "BOOL"))
  {
    v59 = CFGetTypeID(cf);
    if (v59 == CFBooleanGetTypeID())
    {
      if (a2)
      {
        *a2 = CFBooleanGetValue(cf);
      }

      return 0;
    }

    return 4294960540;
  }

  if (!strcmp(v14 + 1, "mac"))
  {
    v60 = CFGetTypeID(cf);
    if (v60 == CFDataGetTypeID())
    {
      if (CFDataGetLength(cf) == 6)
      {
        if (a2)
        {
          BytePtr = CFDataGetBytePtr(cf);
          v62 = *(BytePtr + 2);
          *a2 = *BytePtr;
          *(a2 + 4) = v62;
        }

        return 0;
      }

      return 4294960553;
    }

    v71 = CFGetTypeID(cf);
    if (v71 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    if (CFStringGetCString(cf, cStr, 64, 0x8000100u))
    {
      result = TextToHardwareAddress(cStr, 0xFFFFFFFFFFFFFFFFLL, 6, a2);
      if (!result)
      {
        return 0;
      }

      return result;
    }

    return 4294960553;
  }

  if (!strcmp(v14 + 1, "macStr"))
  {
    v63 = CFGetTypeID(cf);
    if (v63 == CFDataGetTypeID())
    {
      if (CFDataGetLength(cf) != 6)
      {
        return 4294960553;
      }

      v64 = CFDataGetBytePtr(cf);
      v65 = 0;
      v66 = a2;
      do
      {
        v67 = a2;
        if (v66 != a2)
        {
          *v66 = 58;
          v67 = v66 + 1;
        }

        v68 = v64[v65];
        v69 = v65 + 1;
        *v67 = a0123456789abcd_0[v68 >> 4];
        v70 = a0123456789abcd_0[v68 & 0xF];
        v66 = v67 + 2;
        v67[1] = v70;
        v65 = v69;
      }

      while (v69 != 6);
    }

    else
    {
      v77 = CFGetTypeID(cf);
      if (v77 != CFStringGetTypeID())
      {
        return 4294960540;
      }

      if (!CFStringGetCString(cf, cStr, 64, 0x8000100u))
      {
        return 4294960553;
      }

      result = TextToHardwareAddress(cStr, 0xFFFFFFFFFFFFFFFFLL, 6, buffer);
      v117 = result;
      if (result)
      {
        return result;
      }

      v78 = 0;
      v66 = a2;
      do
      {
        v79 = a2;
        if (v66 != a2)
        {
          *v66 = 58;
          v79 = v66 + 1;
        }

        v80 = buffer[v78];
        v81 = v78 + 1;
        *v79 = a0123456789abcd_0[v80 >> 4];
        v82 = a0123456789abcd_0[v80 & 0xF];
        v66 = v79 + 2;
        v79[1] = v82;
        v78 = v81;
      }

      while (v81 != 6);
    }

    *v66 = 0;
    return 0;
  }

  if (!strcmp(v14 + 1, "code"))
  {
    *valuePtr = 0;
    v72 = CFGetTypeID(cf);
    if (v72 == CFStringGetTypeID())
    {
      if (CFStringGetLength(cf) != 4)
      {
        return 4294960553;
      }

      maxBufLen = 0;
      v124.location = 0;
      v124.length = 4;
      CFStringGetBytes(cf, v124, 0x8000100u, 0, 0, buffer, 4, &maxBufLen);
      if (maxBufLen != 4)
      {
        return 4294960579;
      }

      v73 = buffer[0];
      if (!buffer[0])
      {
        v73 = 32;
      }

      v74 = buffer[1];
      if (!buffer[1])
      {
        v74 = 32;
      }

      v75 = buffer[2];
      if (!buffer[2])
      {
        v75 = 32;
      }

      if (buffer[3])
      {
        v76 = buffer[3];
      }

      else
      {
        v76 = 32;
      }

      *valuePtr = v76 | (v75 << 8) | (v74 << 16) | (v73 << 24);
    }

    else
    {
      v84 = CFGetTypeID(cf);
      if (v84 != CFNumberGetTypeID())
      {
        return 4294960540;
      }

      CFNumberGetValue(cf, kCFNumberSInt32Type, valuePtr);
    }

    if (a2)
    {
      *a2 = *valuePtr;
    }

    return 0;
  }

  if (!strcmp(v14 + 1, "ipv4"))
  {
    v83 = CFGetTypeID(cf);
    if (v83 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    if (!CFStringGetCString(cf, cStr, 64, 0x8000100u))
    {
      return 4294960545;
    }

    result = StringToIPv4Address(cStr, a2, 0);
    if (!result)
    {
      return 0;
    }

    return result;
  }

  if (!strcmp(v14 + 1, "vers"))
  {
    v85 = CFGetTypeID(cf);
    if (v85 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    v125.length = CFStringGetLength(cf);
    maxBufLen = 0;
    v125.location = 0;
    CFStringGetBytes(cf, v125, 0x8000100u, 0, 0, cStr, 63, &maxBufLen);
    result = TextToNumVersion(cStr, maxBufLen, a2);
    if (!result)
    {
      return 0;
    }

    return result;
  }

  if (!strcmp(v14 + 1, "svers"))
  {
    v86 = CFGetTypeID(cf);
    if (v86 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    v126.length = CFStringGetLength(cf);
    maxBufLen = 0;
    v126.location = 0;
    CFStringGetBytes(cf, v126, 0x8000100u, 0, 0, cStr, 63, &maxBufLen);
    v87 = TextToSourceVersion(cStr, maxBufLen);
    if (v87)
    {
      *a2 = v87;
      return 0;
    }

    return 4294960554;
  }

  if (!strcmp(v14 + 1, "uuid"))
  {
    v88 = CFGetTypeID(cf);
    if (v88 == CFDataGetTypeID())
    {
      if (CFDataGetLength(cf) == 16)
      {
        if (a2)
        {
          *a2 = *CFDataGetBytePtr(cf);
        }

        return 0;
      }

      return 4294960553;
    }

    v98 = CFGetTypeID(cf);
    if (v98 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    if (CFStringGetCString(cf, valuePtr, 64, 0x8000100u))
    {
      result = StringToUUIDEx(valuePtr, 0xFFFFFFFFFFFFFFFFLL, 0, 0, a2, v99, v100, v101);
      if (!result)
      {
        return 0;
      }

      return result;
    }

    return 4294960553;
  }

  if (strcmp(v14 + 1, "CFStringUUID"))
  {
    v43 = *v41;
    if (v43 == 67 && v14[2] == 70)
    {
      v44 = strchr(v14 + 1, 33);
      if (v44)
      {
        v45 = v44 - v41;
      }

      else
      {
        v45 = strlen(v14 + 1);
      }

      v107 = 0;
      while (v45 != v107)
      {
        if (v41[v107] != aCfarray[v107])
        {
          goto LABEL_221;
        }

        if (++v107 == 8)
        {
          goto LABEL_226;
        }
      }

      if (!aCfarray[v45])
      {
LABEL_226:
        TypeID = CFArrayGetTypeID();
        goto LABEL_265;
      }

LABEL_221:
      v108 = 0;
      while (v45 != v108)
      {
        if (v41[v108] != aCfBOOLean[v108])
        {
          goto LABEL_228;
        }

        if (++v108 == 10)
        {
          goto LABEL_233;
        }
      }

      if (!aCfBOOLean[v45])
      {
LABEL_233:
        TypeID = CFBooleanGetTypeID();
        goto LABEL_265;
      }

LABEL_228:
      v110 = 0;
      while (v45 != v110)
      {
        if (v41[v110] != aCfdata[v110])
        {
          goto LABEL_235;
        }

        if (++v110 == 7)
        {
          goto LABEL_240;
        }
      }

      if (!aCfdata[v45])
      {
LABEL_240:
        TypeID = CFDataGetTypeID();
        goto LABEL_265;
      }

LABEL_235:
      v111 = 0;
      while (v45 != v111)
      {
        if (v41[v111] != aCfdate[v111])
        {
          goto LABEL_242;
        }

        if (++v111 == 7)
        {
          goto LABEL_247;
        }
      }

      if (!aCfdate[v45])
      {
LABEL_247:
        TypeID = CFDateGetTypeID();
        goto LABEL_265;
      }

LABEL_242:
      v112 = 0;
      while (v45 != v112)
      {
        if (v41[v112] != aCfdictionary[v112])
        {
          goto LABEL_249;
        }

        if (++v112 == 13)
        {
          goto LABEL_254;
        }
      }

      if (!aCfdictionary[v45])
      {
LABEL_254:
        TypeID = CFDictionaryGetTypeID();
        goto LABEL_265;
      }

LABEL_249:
      v113 = 0;
      while (v45 != v113)
      {
        if (v41[v113] != aCfnumber[v113])
        {
          goto LABEL_256;
        }

        if (++v113 == 9)
        {
          goto LABEL_261;
        }
      }

      if (!aCfnumber[v45])
      {
LABEL_261:
        TypeID = CFNumberGetTypeID();
        goto LABEL_265;
      }

LABEL_256:
      v114 = 0;
      while (v45 != v114)
      {
        if (v41[v114] != aCfstring[v114])
        {
          return 4294960561;
        }

        if (++v114 == 9)
        {
          goto LABEL_264;
        }
      }

      if (aCfstring[v45])
      {
        return 4294960561;
      }

LABEL_264:
      TypeID = CFStringGetTypeID();
LABEL_265:
      if (CFGetTypeID(cf) == TypeID)
      {
        goto LABEL_61;
      }

      return 4294960540;
    }

    if (!strcmp(v14 + 1, "data*"))
    {
      v102 = CFGetTypeID(cf);
      if (v102 == CFDataGetTypeID())
      {
        v103 = v118++;
        v104 = *v103;
        if (CFDataGetLength(cf) == v104)
        {
          if (a2)
          {
            *a2 = CFDataGetBytePtr(cf);
          }

          return 0;
        }
      }

      return 4294960553;
    }

    v89 = v43 - 48;
    if ((v43 - 48) > 9)
    {
      if (!v43)
      {
        v90 = 0;
        goto LABEL_210;
      }
    }

    else
    {
      v90 = 0;
      v91 = v14 + 2;
      do
      {
        v90 = 10 * v90 + v89;
        v93 = *v91++;
        v92 = v93;
        v89 = v93 - 48;
      }

      while ((v93 - 48) < 0xA);
      if (!v92)
      {
        if ((v90 & 0x8000000000000000) != 0)
        {
          return 4294960586;
        }

LABEL_210:
        v105 = CFGetTypeID(cf);
        if (v105 != CFDataGetTypeID())
        {
          return 4294960540;
        }

        if (CFDataGetLength(cf) == v90)
        {
          if (a2)
          {
            v106 = CFDataGetBytePtr(cf);
            memcpy(a2, v106, v90);
          }

          return 0;
        }

        return 4294960553;
      }
    }

    return 4294960560;
  }

  v94 = CFGetTypeID(cf);
  if (v94 != CFStringGetTypeID())
  {
    return 4294960540;
  }

  if (!CFStringGetCString(cf, cStr, 64, 0x8000100u))
  {
    return 4294960553;
  }

  result = StringToUUIDEx(cStr, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 0, v95, v96, v97);
  if (!result)
  {
    goto LABEL_61;
  }

  return result;
}

CFPropertyListRef CFCreateWithPlistBytes(UInt8 *bytes, CFIndex length, unsigned int a3, uint64_t a4, int *a5)
{
  if (!length)
  {
    v12 = a3 & 3;
    if (CFDictionaryGetTypeID() == a4)
    {
      if (v12)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        Mutable = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }
    }

    else
    {
      if (CFArrayGetTypeID() != a4)
      {
        v10 = 0;
        v11 = -6732;
        goto LABEL_18;
      }

      if (v12)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      }

      else
      {
        Mutable = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
      }
    }

    v10 = Mutable;
    if (Mutable)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v8 = CFDataCreate(0, bytes, length);
  if (!v8)
  {
    v10 = 0;
LABEL_22:
    v11 = -6728;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = CFPropertyListCreateWithData(0, v8, a3, 0, 0);
  CFRelease(v9);
  if (v10)
  {
    if (a4 && CFGetTypeID(v10) != a4)
    {
      CFRelease(v10);
      v10 = 0;
      v11 = -6756;
      goto LABEL_18;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  v11 = -6717;
LABEL_18:
  if (a5)
  {
    *a5 = v11;
  }

  return v10;
}

uint64_t CFCreateObjectFromString(char *a1, void *a2)
{
  if (!strcasecmp(a1, "true") || !strcasecmp(a1, "yes") || !strcasecmp(a1, "y") || !strcasecmp(a1, "on"))
  {
    v12 = MEMORY[0x1E695E4D0];
LABEL_14:
    Int64 = *v12;
    goto LABEL_15;
  }

  if (!strcasecmp(a1, "false") || !strcasecmp(a1, "no") || !strcasecmp(a1, "n") || !strcasecmp(a1, "off"))
  {
    v12 = MEMORY[0x1E695E4C0];
    goto LABEL_14;
  }

  v16 = 0;
  v4 = strlen(a1);
  v5 = v4;
  if (SNScanF(a1, v4, "%lli %n", v6, v7, v8, v9, v10, &v16) == 1 && v5 == -1)
  {
    Int64 = CFNumberCreateInt64(v16);
    if (!Int64)
    {
      return 4294960596;
    }
  }

  else
  {
    v15 = *a1;
    if (v15 == 123)
    {
      if (a1[1] == 125 && !a1[2])
      {
        Int64 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Int64)
        {
          return 4294960596;
        }

        goto LABEL_15;
      }
    }

    else if (v15 == 91 && a1[1] == 93 && !a1[2])
    {
      Int64 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (!Int64)
      {
        return 4294960596;
      }

      goto LABEL_15;
    }

    Int64 = CFStringCreateWithCString(0, a1, 0x8000100u);
    if (!Int64)
    {
      return 4294960596;
    }
  }

LABEL_15:
  v13 = 0;
  *a2 = Int64;
  return v13;
}

const __CFDictionary *CFDictionaryCreateWithINIBytes(const UInt8 *a1, uint64_t a2, char a3, const void *a4, int *a5)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v82 = 0;
    v79 = -6728;
    if (a5)
    {
      goto LABEL_160;
    }

    return v82;
  }

  v84 = a4;
  v86 = a5;
  theDict = Mutable;
  cf = 0;
  v11 = &a1[a2];
  v12 = MEMORY[0x1E69E9830];
  v13 = &a1[a2];
  v85 = a3 & 1;
  while (1)
  {
    while (1)
    {
      do
      {
        if (a1 < v11)
        {
          v14 = v13 - a1;
          do
          {
            v15 = *a1;
            if (v15 < 0)
            {
              if (!__maskrune(*a1, 0x4000uLL))
              {
                break;
              }
            }

            else if ((*(v12 + 4 * v15 + 60) & 0x4000) == 0)
            {
              break;
            }

            ++a1;
            --v14;
          }

          while (v14);
        }

        v16 = a1;
        v17 = a1;
        if (a1 == v11)
        {
          v79 = 0;
          a5 = v86;
          v82 = theDict;
          v59 = 0;
          v62 = cf;
          if (!cf)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }

        v18 = a1;
        if (a1 < v11)
        {
          a1 = v11;
          v19 = v13 - v16;
          v18 = v17;
          while (1)
          {
            v20 = *v18;
            if (v20 == 10 || v20 == 13)
            {
              break;
            }

            ++v18;
            if (!--v19)
            {
              v18 = (&v17[v11] - v16);
              goto LABEL_22;
            }
          }

          if (v20 == 13)
          {
            a1 = v18 + 1;
          }

          else
          {
            a1 = v18;
          }
        }

LABEL_22:
        if (a1 < v11 && *a1 == 10)
        {
          ++a1;
        }

        v22 = *v17;
      }

      while (v22 == 35 || v22 == 59);
      if (v22 != 91)
      {
        break;
      }

      v23 = v17 + 1;
      do
      {
        v24 = v23;
        if (v23 >= v18)
        {
          v27 = v23;
          goto LABEL_56;
        }

        v25 = *v23;
        if (v25 < 0)
        {
          v26 = __maskrune(*v24, 0x4000uLL);
        }

        else
        {
          v26 = *(v12 + 4 * v25 + 60) & 0x4000;
        }

        v23 = v24 + 1;
      }

      while (v26);
      v27 = v24;
      do
      {
        v28 = *v27;
        if (v28 == 93)
        {
          break;
        }

        if ((v28 & 0x80) != 0)
        {
          if (__maskrune(v28, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v12 + 4 * v28 + 60) & 0x4000) != 0)
        {
          break;
        }

        ++v27;
      }

      while (v27 < v18);
LABEL_56:
      if (v27 != v18)
      {
        v33 = v27;
        if (v27 < v18)
        {
          v34 = v18 - v27;
          v33 = v27;
          do
          {
            v35 = *v33;
            if (v35 < 0)
            {
              if (!__maskrune(*v33, 0x4000uLL))
              {
                break;
              }
            }

            else if ((*(v12 + 4 * v35 + 60) & 0x4000) == 0)
            {
              break;
            }

            ++v33;
            --v34;
          }

          while (v34);
        }

        if (v33 != v18)
        {
          v36 = *v33;
          if (v36 == 34)
          {
            v37 = (v33 + 1);
            v38 = v33 + 1;
            if (v33 + 1 < v18)
            {
              v52 = v18 - v33 - 1;
              v38 = v33 + 1;
              while (*v38 != 34)
              {
                ++v38;
                if (!--v52)
                {
                  v38 = v18;
                  break;
                }
              }
            }

            if (v38 != v18)
            {
              v53 = (v38 + 1);
              do
              {
                v54 = v53;
                if (v53 >= v18)
                {
                  break;
                }

                v55 = *v53;
                v56 = v55 < 0 ? __maskrune(*v54, 0x4000uLL) : *(v12 + 4 * v55 + 60) & 0x4000;
                v53 = v54 + 1;
              }

              while (v56);
              if (v54 != v18 && *v54 == 93)
              {
                goto LABEL_106;
              }
            }
          }

          else if (v36 == 93)
          {
            v37 = 0;
            v38 = 0;
LABEL_106:
            if (cf)
            {
              CFRelease(cf);
            }

            cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!cf)
            {
LABEL_166:
              v82 = 0;
              v79 = -6728;
              a5 = v86;
              v59 = theDict;
              goto LABEL_157;
            }

            v57 = v27 - v24;
            v58 = v38 - v37;
            v59 = theDict;
            if (v37)
            {
              if (v84 + 2 >= 3)
              {
                CFDictionarySetCString(cf, v84, v37, v58);
              }

              if (v84 == -1)
              {
                v79 = -6743;
                if (!(v57 >> 31) && !(v58 >> 31))
                {
                  v61 = CFStringCreateWithFormat(0, 0, @"%.*s.%.*s", v57, v24, v58, v37);
                  v62 = cf;
                  if (v61)
                  {
LABEL_151:
                    v76 = theDict;
                    v77 = v61;
                    v78 = v62;
LABEL_152:
                    CFDictionarySetValue(v76, v77, v78);
                    goto LABEL_142;
                  }

                  v82 = 0;
                  v79 = -6700;
                  a5 = v86;
LABEL_156:
                  CFRelease(v62);
                  goto LABEL_157;
                }

                v82 = 0;
LABEL_172:
                a5 = v86;
LABEL_173:
                v62 = cf;
                goto LABEL_156;
              }
            }

            v60 = CFStringCreateWithBytes(0, v24, v57, 0x8000100u, 0);
            if (!v60)
            {
              v82 = 0;
              v79 = -6700;
              goto LABEL_172;
            }

            v61 = v60;
            v62 = cf;
            if (v84 == -2)
            {
              Value = CFDictionaryGetValue(theDict, v60);
              if (!Value)
              {
                v74 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v74)
                {
                  goto LABEL_171;
                }

                Value = v74;
                CFDictionarySetValue(theDict, v61, v74);
                CFRelease(Value);
              }

              CFRelease(v61);
              v75 = CFStringCreateWithBytes(0, v37, v58, 0x8000100u, 0);
              if (!v75)
              {
                v82 = 0;
                v79 = -6700;
                a5 = v86;
                v59 = theDict;
                goto LABEL_173;
              }

              v61 = v75;
              v76 = Value;
              v77 = v61;
              v78 = cf;
              goto LABEL_152;
            }

            if (v84 == -1)
            {
              goto LABEL_151;
            }

            v63 = CFDictionaryGetValue(theDict, v60);
            if (v63)
            {
              CFArrayAppendValue(v63, cf);
              goto LABEL_142;
            }

            v80 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            if (!v80)
            {
LABEL_171:
              CFRelease(v61);
              v82 = 0;
              v79 = -6728;
              goto LABEL_172;
            }

            v81 = v80;
            CFArrayAppendValue(v80, cf);
            CFDictionarySetValue(theDict, v61, v81);
            CFRelease(v81);
LABEL_142:
            CFRelease(v61);
          }
        }
      }
    }

    if (v17 >= v18)
    {
      v32 = v17;
    }

    else
    {
      v29 = v18 - v16;
      v16 = v17;
      do
      {
        v30 = *v16;
        if (v30 <= 0x3D && ((1 << v30) & 0x2800000800000000) != 0)
        {
          break;
        }

        if ((v30 & 0x80) != 0)
        {
          if (__maskrune(v30, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v12 + 4 * v30 + 60) & 0x4000) != 0)
        {
          break;
        }

        ++v16;
        --v29;
      }

      while (v29);
      v32 = v16;
    }

    v39 = v32;
    if (v32 < v18)
    {
      v40 = v18 - v16;
      v39 = v32;
      do
      {
        v41 = *v39;
        if (v41 < 0)
        {
          if (!__maskrune(*v39, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v12 + 4 * v41 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++v39;
        --v40;
      }

      while (v40);
    }

    if (v39 == v18)
    {
      v42 = 0;
      v44 = 0;
      break;
    }

    v42 = 0;
    v43 = *v39;
    if (v43 == 35)
    {
LABEL_118:
      v44 = v42;
      break;
    }

    v44 = 0;
    if (v43 == 59)
    {
      break;
    }

    if (v43 == 61)
    {
      v45 = (v39 + 1);
      v46 = v18 - v39 - 2;
      while (1)
      {
        v42 = v45;
        if (v45 >= v18)
        {
          break;
        }

        v47 = v46;
        v48 = *v45;
        if (v48 < 0)
        {
          v49 = __maskrune(*v42, 0x4000uLL);
        }

        else
        {
          v49 = *(v12 + 4 * v48 + 60) & 0x4000;
        }

        v45 = v42 + 1;
        v46 = v47 - 1;
        if (!v49)
        {
          v50 = v42 - 1;
          v51 = *v42;
          if (v51 == 34)
          {
            ++v42;
            if (v50 + 2 >= v18)
            {
              goto LABEL_118;
            }

            v44 = v50 + 2;
            while (*v44 != 34)
            {
              if (++v44 >= v18)
              {
                v44 = v18;
                goto LABEL_133;
              }
            }

            goto LABEL_133;
          }

          v66 = 0;
          v65 = v18 - v50;
          v64 = (v42 - 1);
          while (v51 != 35 && v51 != 59)
          {
            if (!v47)
            {
              goto LABEL_127;
            }

            v51 = v45[v66++];
            --v47;
          }

          v65 = v66 + 1;
          do
          {
LABEL_127:
            v67 = v65;
            if (v65 < 2)
            {
              break;
            }

            v68 = v64[v65 - 1];
            v69 = v68 < 0 ? __maskrune(v64[v65 - 1], 0x4000uLL) : *(v12 + 4 * v68 + 60) & 0x4000;
            v65 = v67 - 1;
          }

          while (v69);
          v44 = &v64[v67];
          goto LABEL_133;
        }
      }

      v64 = (v45 - 1);
      v65 = 1;
      goto LABEL_127;
    }
  }

LABEL_133:
  v62 = cf;
  if (!cf && !v85)
  {
    v70 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v70)
    {
      goto LABEL_166;
    }

    v62 = v70;
    CFDictionarySetValue(theDict, &stru_1F068B090, v70);
  }

  v71 = CFStringCreateWithBytes(0, v17, v32 - v17, 0x8000100u, 0);
  if (v71)
  {
    v61 = v71;
    cf = v62;
    if (v62)
    {
      v72 = v62;
    }

    else
    {
      v72 = theDict;
    }

    CFDictionarySetCString(v72, v61, v42, v44 - v42);
    goto LABEL_142;
  }

  v82 = 0;
  v79 = -6700;
  a5 = v86;
  v59 = theDict;
  if (v62)
  {
    goto LABEL_156;
  }

LABEL_157:
  if (v59)
  {
    CFRelease(v59);
  }

  if (a5)
  {
LABEL_160:
    *a5 = v79;
  }

  return v82;
}

uint64_t CFPropertyListCreateBytes(CFPropertyListRef propertyList, CFPropertyListFormat format, void *a3, size_t *a4)
{
  Data = CFPropertyListCreateData(0, propertyList, format, 0, 0);
  if (!Data)
  {
    return 4294960596;
  }

  v7 = Data;
  Length = CFDataGetLength(Data);
  v9 = malloc_type_malloc(Length, 0x100004077774924uLL);
  if (v9)
  {
    v10 = v9;
    BytePtr = CFDataGetBytePtr(v7);
    memcpy(v10, BytePtr, Length);
    v12 = 0;
    *a3 = v10;
    *a4 = Length;
  }

  else
  {
    v12 = 4294960596;
  }

  CFRelease(v7);
  return v12;
}

CFMutableDataRef CFDataCreateWithANSIFile(FILE *a1, int *a2)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
LABEL_10:
    v8 = -6728;
    if (!a2)
    {
      return Mutable;
    }

    goto LABEL_7;
  }

  v5 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  if (!v5)
  {
    CFRelease(Mutable);
    Mutable = 0;
    goto LABEL_10;
  }

  for (i = v5; ; CFDataAppendBytes(Mutable, i, v7))
  {
    v7 = fread(i, 1uLL, 0x20000uLL, a1);
    if (!v7)
    {
      break;
    }
  }

  free(i);
  v8 = 0;
  if (a2)
  {
LABEL_7:
    *a2 = v8;
  }

  return Mutable;
}

CFPropertyListRef CFPropertyListCreateFromFilePath(const char *a1, CFOptionFlags a2, int *a3)
{
  v9 = 0;
  v5 = CFDataCreateWithFilePath(a1, &v9);
  if (v5)
  {
    v6 = v5;
    v7 = CFPropertyListCreateWithData(0, v5, a2, 0, 0);
    CFRelease(v6);
    if (!v7)
    {
      v9 = -6717;
    }
  }

  else
  {
    v7 = 0;
  }

  if (a3)
  {
    *a3 = v9;
  }

  return v7;
}

CFMutableDataRef CFDataCreateWithFilePath(const char *a1, _DWORD *a2)
{
  v7 = 0;
  v3 = fopen(a1, "rb");
  if (v3)
  {
    v4 = v3;
    v7 = 0;
    v5 = CFDataCreateWithANSIFile(v3, &v7);
    fclose(v4);
    if (!a2)
    {
      return v5;
    }

    goto LABEL_9;
  }

  if (*__error())
  {
    v7 = *__error();
    if (v7)
    {
      v5 = 0;
      if (!a2)
      {
        return v5;
      }
    }

    else
    {
      v5 = CFDataCreateWithANSIFile(0, &v7);
      if (!a2)
      {
        return v5;
      }
    }

    goto LABEL_9;
  }

  v5 = 0;
  v7 = -6700;
  if (a2)
  {
LABEL_9:
    *a2 = v7;
  }

  return v5;
}

uint64_t CFPropertyListWriteToFilePath(const __CFString *cf, char *__s1, FILE *a3)
{
  v4 = __s1;
  v6 = 0;
  v22 = 0;
  v20 = 0;
  __ptr = 0;
  __nitems = 0;
  while (v6 != 4)
  {
    v7 = aRaw[v6];
    v8 = __s1[v6++];
    if (v8 != v7)
    {
      goto LABEL_14;
    }
  }

  v9 = CFGetTypeID(cf);
  if (v9 != CFStringGetTypeID())
  {
    if (v9 == CFDataGetTypeID())
    {
      if (a3)
      {
        a3 = fopen(a3, "wb");
        if (!a3)
        {
          if (!*__error())
          {
LABEL_42:
            a3 = 0;
            Data = 0;
            goto LABEL_43;
          }

          a3 = 0;
          Data = 0;
          v22 = *__error();
          if (v22)
          {
            goto LABEL_47;
          }
        }

        Length = CFDataGetLength(cf);
        BytePtr = CFDataGetBytePtr(cf);
        if (fwrite(BytePtr, 1uLL, Length, a3) != Length)
        {
          goto LABEL_28;
        }

        goto LABEL_12;
      }

      goto LABEL_54;
    }

    v4 += 4;
LABEL_14:
    if (!strcmp(v4, "streamed"))
    {
      Data = CFBinaryPlistStreamedCreateDataEx(cf, 31, &v22);
      if (v22)
      {
        a3 = 0;
        goto LABEL_47;
      }
    }

    else
    {
      if (strcmp(v4, "binary1"))
      {
        a3 = 0;
        Data = 0;
        v13 = -6735;
        goto LABEL_46;
      }

      Data = CFPropertyListCreateData(0, cf, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      if (!Data)
      {
        goto LABEL_41;
      }
    }

    if (!a3)
    {
LABEL_55:
      v13 = -6704;
      goto LABEL_46;
    }

    v14 = fopen(a3, "wb");
    if (v14)
    {
      a3 = v14;
      v22 = 0;
      goto LABEL_23;
    }

    if (*__error())
    {
      a3 = 0;
      v22 = *__error();
      if (v22)
      {
        goto LABEL_47;
      }

LABEL_23:
      v15 = CFDataGetLength(Data);
      v16 = CFDataGetBytePtr(Data);
      if (fwrite(v16, 1uLL, v15, a3) == v15)
      {
        v13 = 0;
        goto LABEL_46;
      }

      if (*__error())
      {
        v13 = *__error();
        goto LABEL_46;
      }

      goto LABEL_43;
    }

LABEL_41:
    a3 = 0;
LABEL_43:
    v13 = -6700;
    goto LABEL_46;
  }

  v22 = CFStringGetOrCopyCStringUTF8(cf, &__ptr, &v20, &__nitems);
  if (v22)
  {
    a3 = 0;
    Data = 0;
    goto LABEL_47;
  }

  if (!a3)
  {
LABEL_54:
    Data = 0;
    goto LABEL_55;
  }

  a3 = fopen(a3, "wb");
  if (a3)
  {
    goto LABEL_27;
  }

  if (!*__error())
  {
    goto LABEL_42;
  }

  a3 = 0;
  Data = 0;
  v22 = *__error();
  if (v22)
  {
    goto LABEL_47;
  }

LABEL_27:
  v17 = fwrite(__ptr, 1uLL, __nitems, a3);
  if (v17 != __nitems)
  {
LABEL_28:
    if (*__error())
    {
      v13 = *__error();
    }

    else
    {
      v13 = -6700;
    }

    goto LABEL_45;
  }

LABEL_12:
  v13 = 0;
LABEL_45:
  Data = 0;
LABEL_46:
  v22 = v13;
LABEL_47:
  if (v20)
  {
    free(v20);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (a3)
  {
    fclose(a3);
  }

  return v22;
}

uint64_t CFObjectControlAsync(const void *a1, NSObject *a2, uint64_t a3, int a4, const void *a5, const void *a6, const void *a7, NSObject *a8, uint64_t a9, uint64_t a10)
{
  v18 = malloc_type_malloc(0x58uLL, 0x10E0040D6740AE0uLL);
  if (!v18)
  {
    return 4294960568;
  }

  v19 = v18;
  CFRetain(a1);
  *v19 = a1;
  v19[1] = a3;
  *(v19 + 4) = a4;
  CFRetain(a5);
  v19[3] = a5;
  if (a6)
  {
    CFRetain(a6);
  }

  v19[4] = a6;
  if (a7)
  {
    CFRetain(a7);
  }

  v19[5] = a7;
  v19[7] = 0;
  if (a8)
  {
    dispatch_retain(a8);
  }

  v19[8] = a8;
  v19[9] = a9;
  v19[10] = a10;
  dispatch_async_f(a2, v19, _CFObjectControlAsync);
  return 0;
}

void _CFObjectControlAsync(uint64_t a1)
{
  *(a1 + 48) = (*(a1 + 8))(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a1 + 56);
  CFRelease(*a1);
  CFRelease(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(a1 + 64);
    if (v5)
    {

      dispatch_async_f(v5, a1, _CFObjectControlResponse);
      return;
    }

    v4(*(a1 + 48), *(a1 + 56), *(a1 + 80));
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    dispatch_release(v7);
  }

  free(a1);
}

void _CFObjectControlResponse(uint64_t a1)
{
  (*(a1 + 72))(*(a1 + 48), *(a1 + 56), *(a1 + 80));
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  dispatch_release(*(a1 + 64));

  free(a1);
}

uint64_t CFObjectControlAsyncF(const void *a1, NSObject *a2, uint64_t a3, int a4, const void *a5, const void *a6, NSObject *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  cf = 0;
  v18 = CFPropertyListBuildFormatted(0, 0, &cf, a10, va, a6, a7, a8);
  if (!v18)
  {
    v18 = CFObjectControlAsync(a1, a2, a3, a4, a5, a6, cf, a7, a8, a9);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v18;
}

uint64_t CFObjectControlSync(uint64_t a1, dispatch_queue_t queue, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {

    return a3(a1, a4, a5, a6, a7, a8);
  }

  else
  {
    v10[0] = a1;
    v10[1] = a3;
    v10[2] = a4;
    v10[3] = a5;
    v10[4] = a6;
    v10[5] = a7;
    v10[6] = a8;
    v11 = 4294960596;
    dispatch_sync_f(queue, v10, _CFObjectControlSync);
    return v11;
  }
}

uint64_t _CFObjectControlSync(uint64_t a1)
{
  result = (*(a1 + 8))(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  *(a1 + 56) = result;
  return result;
}

uint64_t CFObjectControlSyncF(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  cf = 0;
  v16 = CFPropertyListBuildFormatted(0, 0, &cf, a8, &a9, a6, a7, a8);
  if (!v16)
  {
    v16 = CFObjectControlSync(a1, a2, a3, a4, a5, a6, cf, a7);
    CFRelease(cf);
  }

  return v16;
}

uint64_t _CFObjectCopyProperty(uint64_t a1)
{
  result = (*(a1 + 8))(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 48));
  *(a1 + 40) = result;
  return result;
}

const __CFString *CFObjectGetPropertyCStringSync(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, size_t a8, uint64_t a9)
{
  result = CFObjectCopyProperty(a1, a2, a3, a4, a5, a6, a9);
  if (result)
  {
    v12 = result;
    v13 = CFGetCString(result, a7, a8);
    CFRelease(v12);
    return v13;
  }

  return result;
}

const char *CFGetCString(const __CFString *cf, char *a2, size_t a3)
{
  if (!a3)
  {
    return "";
  }

  if (!cf)
  {
LABEL_29:
    *a2 = 0;
    return a2;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFStringGetTypeID())
  {
    *a2 = 0;
    CFStringGetCString(cf, a2, a3, 0x8000100u);
    return a2;
  }

  if (v6 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(cf))
    {
      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberDoubleType, &valuePtr);
      snprintf(a2, a3, "%f");
    }

    else
    {
      *&v25[4] = 0;
      CFNumberGetValue(cf, kCFNumberSInt64Type, &v25[4]);
      SNPrintF(a2, a3, "%lld", v16, v17, v18, v19, v20, *&v25[4]);
    }

    return a2;
  }

  if (*MEMORY[0x1E695E4D0] == cf)
  {
    v21 = "true";
LABEL_22:
    strlcpy(a2, v21, a3);
    return a2;
  }

  if (*MEMORY[0x1E695E4C0] == cf)
  {
    v21 = "false";
    goto LABEL_22;
  }

  if (v6 != CFDataGetTypeID())
  {
    if (v6 == CFDateGetTypeID())
    {
      LODWORD(valuePtr) = 0;
      *v25 = 0;
      v24 = 0;
      v23 = 0;
      CFDateGetComponents(cf, &valuePtr, &v25[4], v25, &v24 + 1, &v24, &v23 + 1, &v23);
      snprintf(a2, a3, "%04d-%02d-%02d %02d:%02d:%02d.%06d %s", valuePtr, *&v25[4]);
      return a2;
    }

    if (v6 == CFDictionaryGetTypeID())
    {
      snprintf(a2, a3, "{}");
      return a2;
    }

    if (v6 == CFArrayGetTypeID())
    {
      snprintf(a2, a3, "[]");
      return a2;
    }

    goto LABEL_29;
  }

  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  v9 = a2;
  if (Length >= 1)
  {
    v9 = a2;
    if ((a3 - 1) >= 2)
    {
      v10 = a3 - 3;
      v11 = BytePtr + 1;
      v12 = a2;
      do
      {
        v13 = *(v11 - 1);
        *v12 = a0123456789abcd[v13 >> 4];
        v14 = a0123456789abcd[v13 & 0xF];
        v9 = v12 + 2;
        v12[1] = v14;
        if (v11 >= &BytePtr[Length])
        {
          break;
        }

        ++v11;
        v12 += 2;
        v15 = v10 <= 1;
        v10 -= 2;
      }

      while (!v15);
    }
  }

  *v9 = 0;
  return a2;
}

void CFObjectGetPropertyDoubleSync(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v8 = CFObjectCopyProperty(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    v9 = v8;
    CFGetDouble(v8, a7);
    CFRelease(v9);
  }
}

uint64_t CFObjectSetProperty(const void *a1, dispatch_queue_t queue, uint64_t (*a3)(const void *, uint64_t, const void *, const void *, const void *), uint64_t a4, const void *a5, const void *a6, const void *a7)
{
  v10 = a4;
  if (a4)
  {

    return a3(a1, a4, a5, a6, a7);
  }

  else if ((a4 & 8) != 0)
  {
    v14 = malloc_type_malloc(0x38uLL, 0x10E0040A36414A6uLL);
    if (v14)
    {
      v15 = v14;
      CFRetain(a1);
      *v15 = a1;
      v15[1] = a3;
      *(v15 + 4) = v10;
      CFRetain(a5);
      v15[3] = a5;
      if (a6)
      {
        CFRetain(a6);
      }

      v15[4] = a6;
      if (a7)
      {
        CFRetain(a7);
      }

      v15[5] = a7;
      dispatch_async_f(queue, v15, _CFObjectSetProperty);
      return 0;
    }

    else
    {
      return 4294960568;
    }
  }

  else
  {
    context[0] = a1;
    context[1] = a3;
    context[2] = a4;
    context[3] = a5;
    context[4] = a6;
    context[5] = a7;
    v18 = 4294960596;
    dispatch_sync_f(queue, context, _CFObjectSetProperty);
    return v18;
  }
}

void _CFObjectSetProperty(uint64_t a1)
{
  *(a1 + 48) = (*(a1 + 8))(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if ((*(a1 + 16) & 8) != 0)
  {
    CFRelease(*a1);
    CFRelease(*(a1 + 24));
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t CFObjectSetPropertyF(const void *a1, NSObject *a2, uint64_t (*a3)(const void *, uint64_t, const void *, const void *, const void *), uint64_t a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  cf = 0;
  v15 = CFPropertyListBuildFormatted(0, 0, &cf, a7, &a9, a6, a7, a8);
  if (!v15)
  {
    v15 = CFObjectSetProperty(a1, a2, a3, a4, a5, a6, cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v15;
}

uint64_t CFObjectSetPropertyCString(const void *a1, NSObject *a2, uint64_t (*a3)(const void *, uint64_t, const void *, const void *, const void *), uint64_t a4, const void *a5, const void *a6, char *cStr, CFIndex numBytes)
{
  if (numBytes == -1)
  {
    v14 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = CFStringCreateWithBytes(0, cStr, numBytes, 0x8000100u, 0);
    if (v14)
    {
LABEL_3:
      v15 = v14;
      v16 = CFObjectSetProperty(a1, a2, a3, a4, a5, a6, v14);
      CFRelease(v15);
      return v16;
    }
  }

  return 4294960596;
}

uint64_t CFObjectSetPropertyData(const void *a1, NSObject *a2, uint64_t (*a3)(const void *, uint64_t, const void *, const void *, const void *), uint64_t a4, const void *a5, const void *a6, UInt8 *bytes, CFIndex length)
{
  v14 = CFDataCreate(0, bytes, length);
  if (!v14)
  {
    return 4294960596;
  }

  v15 = v14;
  v16 = CFObjectSetProperty(a1, a2, a3, a4, a5, a6, v14);
  CFRelease(v15);
  return v16;
}

uint64_t CFObjectSetPropertyDouble(const void *a1, NSObject *a2, uint64_t (*a3)(const void *, uint64_t, const void *, const void *, const void *), uint64_t a4, const void *a5, const void *a6, double a7)
{
  valuePtr = a7;
  v13 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v13)
  {
    return 4294960568;
  }

  v14 = v13;
  v15 = CFObjectSetProperty(a1, a2, a3, a4, a5, a6, v13);
  CFRelease(v14);
  return v15;
}

uint64_t CFObjectSetPropertyInt64(const void *a1, NSObject *a2, uint64_t (*a3)(const void *, uint64_t, const void *, const void *, const void *), uint64_t a4, const void *a5, const void *a6, uint64_t a7)
{
  Int64 = CFNumberCreateInt64(a7);
  if (!Int64)
  {
    return 4294960568;
  }

  v14 = Int64;
  v15 = CFObjectSetProperty(a1, a2, a3, a4, a5, a6, Int64);
  CFRelease(v14);
  return v15;
}

const void *CFObjectCopyTypedValue(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3, uint64_t a4, int *a5)
{
  v10 = 0;
  v7 = a2(a1, a3, &v10);
  v8 = v7;
  if (a4 && !v10 && CFGetTypeID(v7) != a4)
  {
    CFRelease(v8);
    v8 = 0;
    v10 = -6756;
  }

  if (a5)
  {
    *a5 = v10;
  }

  return v8;
}

void *CFObjectCopyBytes(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3, size_t *a4, int *a5)
{
  v12 = 0;
  v7 = a2(a1, a3, &v12);
  v11 = v12;
  if (v7)
  {
    v8 = v7;
    v9 = CFCopyData(v7, a4, &v11);
    CFRelease(v8);
    if (a5)
    {
LABEL_3:
      *a5 = v11;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v9 = 0;
    v11 = -6727;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  return v9;
}

const char *CFObjectGetBytes(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3, const char *a4, unint64_t a5, void *a6, int *a7)
{
  v14 = 0;
  v11 = a2(a1, a3, &v14);
  v12 = v11;
  if (a7)
  {
    *a7 = v14;
  }

  if (v11)
  {
    a4 = CFGetData(v11, a4, a5, a6, a7);
    CFRelease(v12);
  }

  else if (a6)
  {
    *a6 = 0;
  }

  return a4;
}

uint64_t CFObjectSetBytes(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, CFDataRef), uint64_t a3, UInt8 *bytes, CFIndex length)
{
  v8 = CFDataCreate(0, bytes, length);
  if (!v8)
  {
    return 4294960596;
  }

  v9 = v8;
  v10 = a2(a1, a3, v8);
  CFRelease(v9);
  return v10;
}

char *CFObjectCopyCString(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  v5 = a2(a1, a3, &v10);
  v9 = v10;
  if (!v5)
  {
    v7 = 0;
    v9 = -6727;
    if (!a4)
    {
      return v7;
    }

    goto LABEL_3;
  }

  v6 = v5;
  v7 = CFCopyCString(v5, &v9);
  CFRelease(v6);
  if (a4)
  {
LABEL_3:
    *a4 = v9;
  }

  return v7;
}

char *CFCopyCString(const __CFString *a1, int *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFStringGetTypeID())
    {
      v5 = CFStringCopyUTF8CString(a1, &v10);
      if (v5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (v4 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(a1);
      if (Length < 0)
      {
        v5 = -6751;
        goto LABEL_11;
      }

      v7 = (2 * Length) | 1;
      v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
      v10 = v8;
      if (v8)
      {
        CFGetCString(a1, v8, v7);
LABEL_10:
        v5 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      CFGetCString(a1, __s1, 0x40uLL);
      v10 = strdup(__s1);
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v5 = -6728;
  }

  else
  {
    v5 = -6705;
  }

LABEL_11:
  if (a2)
  {
    *a2 = v5;
  }

  return v10;
}

const char *CFObjectGetCString(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3, char *a4, size_t a5, _DWORD *a6)
{
  v12 = 0;
  v9 = a2(a1, a3, &v12);
  v10 = v9;
  if (a6)
  {
    *a6 = v12;
  }

  if (v9)
  {
    a4 = CFGetCString(v9, a4, a5);
    CFRelease(v10);
  }

  else if (a5)
  {
    *a4 = 0;
  }

  else
  {
    return "";
  }

  return a4;
}

uint64_t CFObjectSetCString(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, CFStringRef), uint64_t a3, char *cStr, CFIndex numBytes)
{
  if (numBytes == -1)
  {
    v8 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  }

  else
  {
    v8 = CFStringCreateWithBytes(0, cStr, numBytes, 0x8000100u, 0);
  }

  v9 = v8;
  if (!v8)
  {
    return 4294960579;
  }

  v10 = a2(a1, a3, v8);
  CFRelease(v9);
  return v10;
}

double CFObjectGetDouble(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3, _DWORD *a4)
{
  v9 = 0;
  v5 = a2(a1, a3, &v9);
  v6 = v5;
  if (a4)
  {
    *a4 = v9;
  }

  if (!v5)
  {
    return 0.0;
  }

  v7 = CFGetDouble(v5, a4);
  CFRelease(v6);
  return v7;
}

uint64_t CFObjectSetDouble(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, CFNumberRef), uint64_t a3, double a4)
{
  valuePtr = a4;
  v7 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v7)
  {
    return 4294960596;
  }

  v8 = v7;
  v9 = a2(a1, a3, v7);
  CFRelease(v8);
  return v9;
}

unint64_t CFObjectGetHardwareAddress(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3, char *a4, size_t a5, int *a6)
{
  v13 = 0;
  v9 = a2(a1, a3, &v13);
  v10 = v9;
  if (a6)
  {
    *a6 = v13;
  }

  if (v9)
  {
    v11 = CFGetHardwareAddress(v9, a4, a5, a6);
    CFRelease(v10);
  }

  else
  {
    if (a4)
    {
      bzero(a4, a5);
    }

    v11 = 0;
    if (a6)
    {
      *a6 = -6727;
    }
  }

  return v11;
}

uint64_t CFObjectSetHardwareAddress(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, CFStringRef), uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a5 != 8 && a5 != 6)
  {
    return 4294960553;
  }

  v5 = &a4[a5];
  v6 = cStr;
  do
  {
    if (v6 == cStr)
    {
      v7 = cStr;
    }

    else
    {
      *v6 = 58;
      v7 = v6 + 1;
    }

    v8 = *a4++;
    *v7 = a0123456789abcd_0[v8 >> 4];
    v6 = v7 + 2;
    v7[1] = a0123456789abcd_0[v8 & 0xF];
  }

  while (a4 < v5);
  *v6 = 0;
  return CFObjectSetCString(a1, a2, a3, cStr, -1);
}

unint64_t CFObjectGetInt64(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3, int *a4)
{
  v9 = 0;
  v5 = a2(a1, a3, &v9);
  v6 = v5;
  if (a4)
  {
    *a4 = v9;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = CFGetInt64(v5, a4);
  CFRelease(v6);
  return v7;
}

int64_t CFObjectGetInt64Ranged(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3, int64_t a4, int64_t a5, int *a6)
{
  v13 = 0;
  v9 = a2(a1, a3, &v13);
  v10 = v9;
  if (a6)
  {
    *a6 = v13;
  }

  if (!v9)
  {
    return 0;
  }

  v11 = CFGetInt64Ranged(v9, a4, a5, a6);
  CFRelease(v10);
  return v11;
}

uint64_t CFObjectSetInt64(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, CFNumberRef), uint64_t a3, uint64_t a4)
{
  Int64 = CFNumberCreateInt64(a4);
  if (!Int64)
  {
    return 4294960596;
  }

  v8 = Int64;
  v9 = a2(a1, a3, Int64);
  CFRelease(v8);
  return v9;
}

uint64_t CFObjectGetUUID(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unsigned int *), uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v11 = 0;
  v7 = a2(a1, a3, &v11);
  v8 = v11;
  if (!v11)
  {
    v9 = v7;
    v8 = CFGetUUIDEx(v7, a4, a5);
    CFRelease(v9);
  }

  return v8;
}

uint64_t CFGetUUIDEx(__CFString *a1, _OWORD *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294960591;
  }

  v17 = 0;
  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    if (v6 != CFDataGetTypeID())
    {
      if (a2 && v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a1, kCFNumberSInt64Type, &v17);
        v12 = v17;
        if (HIDWORD(v17))
        {
          return 4294960586;
        }

        if (a3)
        {
          *a3 = *a2;
          *a3 = bswap32(v12);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (a3)
          {
            [(__CFString *)a1 getUUIDBytes:a3];
          }
        }

        else
        {
          if (v6 != CFUUIDGetTypeID())
          {
            return 4294960540;
          }

          if (a3)
          {
            *a3 = CFUUIDGetUUIDBytes(a1);
          }
        }
      }

      return 0;
    }

    Length = CFDataGetLength(a1);
    if (Length == 16)
    {
      if (a3)
      {
        *a3 = *CFDataGetBytePtr(a1);
      }

      return 0;
    }

    v13 = Length;
    if (a2 && Length == 1)
    {
      if (a3)
      {
        *a3 = *a2;
        v20.location = 0;
        v20.length = 1;
        CFDataGetBytes(a1, v20, (a3 + 3));
      }

      return 0;
    }

    if (a2 && Length == 2)
    {
      if (a3)
      {
        BytePtr = CFDataGetBytePtr(a1);
        *a3 = *a2;
        *(a3 + 2) = *BytePtr;
        v15 = BytePtr[1];
LABEL_35:
        *(a3 + 3) = v15;
      }
    }

    else
    {
      result = 4294960553;
      if (!a2 || v13 != 4)
      {
        return result;
      }

      if (a3)
      {
        v16 = CFDataGetBytePtr(a1);
        *a3 = *a2;
        *a3 = *v16;
        *(a3 + 1) = v16[1];
        *(a3 + 2) = v16[2];
        v15 = v16[3];
        goto LABEL_35;
      }
    }

    return 0;
  }

  if (!CFStringGetCString(a1, buffer, 64, 0x600u))
  {
    return 4294960553;
  }

  result = StringToUUIDEx(buffer, 0xFFFFFFFFFFFFFFFFLL, 0, a2, a3, v7, v8, v9);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t CFObjectSetUUID(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, CFUUIDRef), uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  if (a4)
  {
    switch(a6)
    {
      case 4:
        v9 = *a4;
        LOBYTE(v13) = *a5;
        LOBYTE(v10) = *(a5 + 1);
        LOBYTE(v11) = *(a5 + 2);
        LOBYTE(v12) = *(a5 + 3);
        break;
      case 2:
        v9 = *a4;
        v10 = *a4 >> 8;
        LOBYTE(v11) = *a5;
        LOBYTE(v12) = *(a5 + 1);
        v13 = *a4;
        break;
      case 1:
        v9 = *a4;
        v10 = *a4 >> 8;
        v11 = *a4 >> 16;
        LOBYTE(v12) = *a5;
        v13 = *a4;
        break;
      default:
        return 4294960553;
    }
  }

  else
  {
    if (a6 != 16)
    {
      return 4294960553;
    }

    v9 = *a5;
    v10 = *a5 >> 8;
    v11 = *a5 >> 16;
    v12 = *a5 >> 24;
    v13 = *a5;
    a4 = a5;
  }

  *&v18.byte8 = a4[1];
  *&v18.byte0 = v9 & 0xFFFFFFFF00000000 | (v12 << 24) | (v11 << 16) | (v10 << 8) | v13;
  v15 = CFUUIDCreateFromUUIDBytes(0, v18);
  if (!v15)
  {
    return 4294960568;
  }

  v16 = v15;
  v17 = a2(a1, a3, v15);
  CFRelease(v16);
  return v17;
}

uint64_t CFObjectSetUUIDString(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, CFStringRef), uint64_t a3, _BYTE *a4, uint64_t a5, __int128 *a6, char a7)
{
  v13 = 0;
  v10 = CFCreateUUIDString(a4, a5, a6, a7, &v13);
  if (v10)
  {
    v11 = v10;
    v13 = a2(a1, a3, v10);
    CFRelease(v11);
  }

  return v13;
}

CFStringRef CFCreateUUIDString(_BYTE *a1, uint64_t a2, __int128 *a3, char a4, _DWORD *a5)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0;
  UUIDtoCStringFlags(a1, a2, a3, a4, cStr, &v7);
  if (v7)
  {
    result = 0;
    if (!a5)
    {
      return result;
    }
  }

  else
  {
    result = CFStringCreateWithCString(0, cStr, 0x8000100u);
    if (result)
    {
      if (!a5)
      {
        return result;
      }
    }

    else
    {
      v7 = -6700;
      if (!a5)
      {
        return result;
      }
    }
  }

  *a5 = v7;
  return result;
}

const void *CFGetTypedObject(const void *result, uint64_t a2, int *a3)
{
  if (!result)
  {
    v8 = -6705;
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  v5 = result;
  v6 = CFGetTypeID(result);
  v7 = v6 == a2;
  if (v6 == a2)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -6756;
  }

  if (a3)
  {
LABEL_9:
    *a3 = v8;
  }

  return result;
}

uint64_t CFSetObjectAtPath(void *cf, _BYTE *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = -1;
  v12 = MEMORY[0x1E695E9D8];
  v13 = MEMORY[0x1E695E9E8];
  while (1)
  {
      ;
    }

    v15 = i - a2;
    if (!*i)
    {
      break;
    }

    v16 = i + 1;
    if (*a2 == 91)
    {
      LODWORD(idx) = 0;
      if (SNScanF(a2 + 1, v15 - 1, "%i]", a4, a5, a6, a7, a8, &idx) != 1)
      {
        return 4294960579;
      }

      v17 = CFGetTypeID(cf);
      if (v17 != CFArrayGetTypeID())
      {
        return 4294960540;
      }

      v18 = idx;
      if ((idx & 0x80000000) != 0 || CFArrayGetCount(cf) <= v18)
      {
        return 4294960586;
      }

      cf = CFArrayGetValueAtIndex(cf, idx);
      v11 = idx;
      a2 = v16;
    }

    else
    {
      v19 = CFGetTypeID(cf);
      if (v19 != CFDictionaryGetTypeID())
      {
        return 4294960540;
      }

      v20 = CFStringCreateWithBytes(0, a2, v15, 0x8000100u, 0);
      if (!v20)
      {
        return 4294960596;
      }

      v21 = v20;
      Value = CFDictionaryGetValue(cf, v20);
      if (!Value)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, v12, v13);
        if (!Mutable)
        {
          CFRelease(v21);
          return 4294960568;
        }

        Value = Mutable;
        CFDictionarySetValue(cf, v21, Mutable);
        CFRelease(Value);
      }

      CFRelease(v21);
      v11 = -1;
      a2 = v16;
      cf = Value;
    }
  }

  v24 = CFGetTypeID(cf);
  if (v24 != CFDictionaryGetTypeID())
  {
    v27 = CFGetTypeID(cf);
    if (v27 != CFArrayGetTypeID())
    {
      return 4294960540;
    }

    if (i != a2)
    {
      return 4294960579;
    }

    if (a3)
    {
      CFArrayAppendValue(cf, a3);
    }

    else
    {
      if ((v11 & 0x80000000) != 0)
      {
        return 4294960579;
      }

      CFArrayRemoveValueAtIndex(cf, v11);
    }

    return 0;
  }

  if (i == a2)
  {
    return 4294960579;
  }

  v25 = CFStringCreateWithBytes(0, a2, i - a2, 0x8000100u, 0);
  if (v25)
  {
    v26 = v25;
    if (a3)
    {
      CFDictionarySetValue(cf, v25, a3);
    }

    else
    {
      CFDictionaryRemoveValue(cf, v25);
    }

    CFRelease(v26);
    return 0;
  }

  return 4294960596;
}

uint64_t CFArrayAppendInt64(__CFArray *a1, uint64_t a2)
{
  Int64 = CFNumberCreateInt64(a2);
  if (!Int64)
  {
    return 4294960568;
  }

  v4 = Int64;
  CFArrayAppendValue(a1, Int64);
  CFRelease(v4);
  return 0;
}

uint64_t CFArrayAppendBytes(__CFArray *a1, const UInt8 *a2, CFIndex a3)
{
  v4 = CFDataCreate(0, a2, a3);
  if (!v4)
  {
    return 4294960568;
  }

  v5 = v4;
  CFArrayAppendValue(a1, v4);
  CFRelease(v5);
  return 0;
}

CFComparisonResult CFSortCompareKeyPath(const __CFString *a1, const __CFString *a2, UInt8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  if (CFPropertyListExtractFormatted(a1, &v23, a3, a4, a5, a6, a7, a8, v19))
  {
    return -1;
  }

  v15 = v23;
  if (CFPropertyListExtractFormatted(a2, &v23, a3, v10, v11, v12, v13, v14, v20))
  {
    return -1;
  }

  v17 = v23;
  v18 = CFGetTypeID(v15);
  if (v18 != CFGetTypeID(v17))
  {
    return -1;
  }

  if (v18 != CFNumberGetTypeID())
  {
    if (v18 == CFStringGetTypeID())
    {
      return CFStringCompare(v15, v17, 0x361uLL);
    }

    if (v18 == CFDateGetTypeID())
    {
      return CFDateCompare(v15, v17, 0);
    }

    return -1;
  }

  v21 = 0;
  valuePtr = 0;
  CFNumberGetValue(v15, kCFNumberSInt64Type, &valuePtr);
  CFNumberGetValue(v17, kCFNumberSInt64Type, &v21);
  if (valuePtr < v21)
  {
    return -1;
  }

  else
  {
    return (valuePtr > v21);
  }
}

uint64_t CFArrayEnsureCreatedAndAppend(__CFArray **a1, void *value)
{
  Mutable = *a1;
  if (Mutable)
  {
    goto LABEL_4;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    *a1 = Mutable;
LABEL_4:
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  return 4294960568;
}

uint64_t CFArrayEnsureCreatedAndAppendCString(__CFArray **a1, const char *a2, CFIndex a3)
{
  if (a3 == -1)
  {
    v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
    if (v4)
    {
LABEL_3:
      v5 = v4;
      v6 = CFArrayEnsureCreatedAndAppend(a1, v4);
      CFRelease(v5);
      return v6;
    }
  }

  return 4294960596;
}

uint64_t CFDataGetEmpty()
{
  if (gCFDataGetEmptyOnce != -1)
  {
    dispatch_once_f(&gCFDataGetEmptyOnce, 0, _CFDataGetEmptyOnce);
  }

  return gCFDataEmpty;
}

CFDataRef _CFDataGetEmptyOnce()
{
  result = CFDataCreate(0, "", 0);
  gCFDataEmpty = result;
  return result;
}

CFArrayRef CFDictionaryCopyKeys(const __CFDictionary *a1, int *a2)
{
  Count = CFDictionaryGetCount(a1);
  v5 = Count;
  if (Count <= 0)
  {
    v8 = CFArrayCreate(0, 0, Count, MEMORY[0x1E695E9C0]);
  }

  else
  {
    v6 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    if (!v6)
    {
      v8 = 0;
      v9 = -6728;
      if (!a2)
      {
        return v8;
      }

      goto LABEL_9;
    }

    v7 = v6;
    CFDictionaryGetKeysAndValues(a1, v6, 0);
    v8 = CFArrayCreate(0, v7, v5, MEMORY[0x1E695E9C0]);
    free(v7);
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -6728;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v9;
  }

  return v8;
}

uint64_t CFDictionaryCreateFromNameTypeValueArgList(void *a1, int a2, int a3, uint64_t a4)
{
  v85 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v9 = Mutable;
  v76 = a1;
  __s = 0;
  v80 = 0;
  if (a3 <= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a3;
  }

  if (a2 >= a3)
  {
LABEL_121:
    v74 = 0;
    *v76 = v9;
    return v74;
  }

  v77 = v10;
  v11 = a2;
  while (1)
  {
    v12 = *(a4 + 8 * v11);
    if (!v12)
    {
      v74 = 4294960591;
      goto LABEL_120;
    }

    v13 = strchr(*(a4 + 8 * v11), 58);
    if (!v13)
    {
      goto LABEL_124;
    }

    v14 = &v13[-v12];
    if (&v13[-v12] > 0x7FFFFFFF)
    {
      v74 = 4294960553;
      goto LABEL_120;
    }

    v15 = v13 + 1;
    v16 = strchr(v13 + 1, 58);
    if (!v16)
    {
LABEL_124:
      v74 = 4294960554;
      goto LABEL_120;
    }

    v22 = v16;
    v23 = 0;
    ++v11;
    v24 = v16 + 1;
    __s = v24;
    v25 = v22 - v15;
    while (v25 != v23)
    {
      if (v15[v23] != aB[v23])
      {
        goto LABEL_17;
      }

      if (++v23 == 2)
      {
        goto LABEL_22;
      }
    }

    if (!aB[v25])
    {
LABEL_22:
      if (strnicmpx(v24, -1, "true") && strnicmpx(__s, -1, "yes") && strnicmpx(__s, -1, "y") && strnicmpx(__s, -1, "on") && strnicmpx(__s, -1, "1"))
      {
        if (strnicmpx(__s, -1, "false") && strnicmpx(__s, -1, "no") && strnicmpx(__s, -1, "n") && strnicmpx(__s, -1, "off") && strnicmpx(__s, -1, "0"))
        {
LABEL_127:
          v74 = 4294960559;
          goto LABEL_120;
        }

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v80 = v32;
      appended = CFPropertyListAppendFormatted(v7, v9, "%.*ks=%b", v27, v28, v29, v30, v31, v14);
      goto LABEL_82;
    }

LABEL_17:
    v26 = 0;
    while (v25 != v26)
    {
      if (v15[v26] != aF[v26])
      {
        goto LABEL_36;
      }

      if (++v26 == 2)
      {
        goto LABEL_41;
      }
    }

    if (!aF[v25])
    {
LABEL_41:
      *&v82[0] = 0;
      if (sscanf(v24, "%lf", v82) != 1)
      {
        goto LABEL_127;
      }

      appended = CFPropertyListAppendFormatted(v7, v9, "%.*ks=%f", v35, v36, v37, v38, v39, v14);
      goto LABEL_82;
    }

LABEL_36:
    v34 = 0;
    while (v25 != v34)
    {
      if (v15[v34] != aI_1[v34])
      {
        goto LABEL_44;
      }

      if (++v34 == 2)
      {
        goto LABEL_49;
      }
    }

    if (!aI_1[v25])
    {
LABEL_49:
      if (sscanf(v24, "%i", &v80) != 1)
      {
        goto LABEL_127;
      }

      appended = CFPropertyListAppendFormatted(v7, v9, "%.*ks=%i", v41, v42, v43, v44, v45, v14);
      goto LABEL_82;
    }

LABEL_44:
    v40 = 0;
    while (v25 != v40)
    {
      if (v15[v40] != aM[v40])
      {
        goto LABEL_52;
      }

      if (++v40 == 2)
      {
        goto LABEL_57;
      }
    }

    if (!aM[v25])
    {
LABEL_57:
      appended = TextToHardwareAddress(v24, 0xFFFFFFFFFFFFFFFFLL, 6, v82);
      if (appended)
      {
        goto LABEL_119;
      }

LABEL_81:
      appended = CFPropertyListAppendFormatted(v7, v9, "%.*ks=%D", v47, v48, v49, v50, v51, v14);
      goto LABEL_82;
    }

LABEL_52:
    v46 = 0;
    while (v25 != v46)
    {
      if (v15[v46] != aS_1[v46])
      {
        goto LABEL_60;
      }

      if (++v46 == 2)
      {
        goto LABEL_65;
      }
    }

    if (!aS_1[v25])
    {
LABEL_65:
      appended = CFPropertyListAppendFormatted(v7, v9, "%.*ks=%s", v17, v18, v19, v20, v21, v14);
      goto LABEL_82;
    }

LABEL_60:
    v52 = 0;
    while (v25 != v52)
    {
      if (v15[v52] != aU_0[v52])
      {
        goto LABEL_67;
      }

      if (++v52 == 2)
      {
        goto LABEL_72;
      }
    }

    if (!aU_0[v25])
    {
LABEL_72:
      appended = StringToUUIDEx(v24, 0xFFFFFFFFFFFFFFFFLL, 0, 0, v82, v19, v20, v21);
      if (appended)
      {
        goto LABEL_119;
      }

      goto LABEL_81;
    }

LABEL_67:
    v53 = 0;
    while (v25 != v53)
    {
      if (v15[v53] != aH[v53])
      {
        goto LABEL_75;
      }

      if (++v53 == 2)
      {
        goto LABEL_80;
      }
    }

    if (!aH[v25])
    {
LABEL_80:
      v79 = 0;
      appended = HexToData(v24, -1, 22, v82, 0x100uLL, 0, &v79, 0);
      if (appended)
      {
        goto LABEL_119;
      }

      goto LABEL_81;
    }

LABEL_75:
    v54 = 0;
    while (v25 != v54)
    {
      if (v15[v54] != asc_191FDF973[v54])
      {
        goto LABEL_86;
      }

      if (++v54 == 3)
      {
        goto LABEL_91;
      }
    }

    if (!asc_191FDF973[v25])
    {
LABEL_91:
      *&v82[0] = 0;
      appended = CFPropertyListAppendFormatted(v7, v9, "%.*ks={%@}", v17, v18, v19, v20, v21, v14);
      if (appended)
      {
        goto LABEL_119;
      }

      v56 = __s;
      v57 = strlen(__s);
      while (!ParseCommaSeparatedNameValuePair(__s, &v56[v57], v84, 256, 0, v83, 0, &__s))
      {
        appended = CFPropertyListAppendFormatted(0, *&v82[0], "%ks=%s", v58, v59, v60, v61, v62, v84);
        if (appended)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_83;
    }

LABEL_86:
    v55 = 0;
    while (v25 != v55)
    {
      if (v15[v55] != asc_191FF744D[v55])
      {
        goto LABEL_97;
      }

      if (++v55 == 3)
      {
        goto LABEL_102;
      }
    }

    if (asc_191FF744D[v25])
    {
      break;
    }

LABEL_102:
    appended = CFPropertyListAppendFormatted(v7, v9, "%.*ks=[]", v17, v18, v19, v20, v21, v14);
LABEL_82:
    if (appended)
    {
      goto LABEL_119;
    }

LABEL_83:
    if (v11 == v77)
    {
      goto LABEL_121;
    }
  }

LABEL_97:
  v63 = 0;
  while (v25 != v63)
  {
    if (v15[v63] != aS_2[v63])
    {
      goto LABEL_123;
    }

    if (++v63 == 4)
    {
      goto LABEL_104;
    }
  }

  if (aS_2[v25])
  {
LABEL_123:
    v74 = 4294960540;
    goto LABEL_120;
  }

LABEL_104:
  *&v82[0] = 0;
  appended = CFPropertyListAppendFormatted(0, v9, "%.*ks=[%@]", v17, v18, v19, v20, v21, v14);
  if (appended)
  {
    goto LABEL_119;
  }

  v69 = &__s[strlen(__s)];
  while (2)
  {
    v70 = __s;
    if (__s >= v69)
    {
      goto LABEL_83;
    }

    v71 = 0;
    while (1)
    {
      v72 = *v70;
      if (v72 == 92)
      {
        if (v70 + 1 >= v69)
        {
          __s = v70 + 1;
          v74 = 4294960546;
          goto LABEL_120;
        }

        LOBYTE(v72) = v70[1];
        v70 += 2;
        goto LABEL_113;
      }

      if (v72 == 44)
      {
        break;
      }

      ++v70;
LABEL_113:
      if (v71 <= 254)
      {
        v83[v71++] = v72;
      }

      if (v70 >= v69)
      {
        v73 = &v83[v71];
        goto LABEL_118;
      }
    }

    v73 = &v83[v71];
    ++v70;
LABEL_118:
    *v73 = 0;
    __s = v70;
    appended = CFPropertyListAppendFormatted(0, *&v82[0], "%s", v64, v65, v66, v67, v68, v83);
    if (!appended)
    {
      continue;
    }

    break;
  }

LABEL_119:
  v74 = appended;
LABEL_120:
  CFRelease(v9);
  return v74;
}

uint64_t CFDictionaryGetEmpty()
{
  if (gCFDictionaryGetEmptyOnce != -1)
  {
    dispatch_once_f(&gCFDictionaryGetEmptyOnce, 0, _CFDictionaryGetEmptyOnce);
  }

  return gCFDictionaryEmpty;
}

CFDictionaryRef _CFDictionaryGetEmptyOnce()
{
  result = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gCFDictionaryEmpty = result;
  return result;
}

const UInt8 *CFDictionaryGetOrCopyBytes(const __CFDictionary *a1, const void *a2, CFIndex *a3, UInt8 **a4, int *a5)
{
  v18 = 0;
  if (a1 && (Value = CFDictionaryGetValue(a1, a2)) != 0)
  {
    v9 = Value;
    v10 = CFGetTypeID(Value);
    if (v10 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v9);
      Length = CFDataGetLength(v9);
      v13 = 0;
      v18 = Length;
LABEL_5:
      v14 = 0;
      goto LABEL_10;
    }

    if (v10 == CFStringGetTypeID())
    {
      v16 = 0;
      v17 = 0;
      v14 = CFStringGetOrCopyCStringUTF8(v9, &v17, &v16, &v18);
      if (!v14)
      {
        v13 = v16;
        BytePtr = v17;
        goto LABEL_5;
      }

      BytePtr = 0;
      v13 = 0;
    }

    else
    {
      BytePtr = 0;
      v13 = 0;
      v14 = -6732;
    }
  }

  else
  {
    BytePtr = 0;
    v13 = 0;
    v14 = -6727;
  }

LABEL_10:
  *a3 = v18;
  *a4 = v13;
  if (a5)
  {
    *a5 = v14;
  }

  return BytePtr;
}

char *CFDictionaryCopyCString(const __CFDictionary *a1, const void *a2, _DWORD *a3)
{
  v6 = 0;
  if (!a1 || (Value = CFDictionaryGetValue(a1, a2)) == 0)
  {
    result = 0;
    v6 = -6727;
    if (!a3)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = CFCopyCString(Value, &v6);
  if (a3)
  {
LABEL_6:
    *a3 = v6;
  }

  return result;
}

char *CFDictionaryGetCString(const __CFDictionary *a1, const void *a2, char *a3, size_t a4, int *a5)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      a3 = CFGetCString(Value, a3, a4);
      v9 = 0;
      if (!a5)
      {
        return a3;
      }

      goto LABEL_9;
    }
  }

  if (a4)
  {
    *a3 = 0;
  }

  else
  {
    a3 = "";
  }

  v9 = -6727;
  if (a5)
  {
LABEL_9:
    *a5 = v9;
  }

  return a3;
}

uint64_t CFDictionarySetHardwareAddress(__CFDictionary *a1, const void *a2, unsigned __int8 *a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a4 != 8 && a4 != 6)
  {
    return 4294960553;
  }

  v4 = &a3[a4];
  v5 = v9;
  do
  {
    if (v5 == v9)
    {
      v6 = v9;
    }

    else
    {
      *v5 = 58;
      v6 = v5 + 1;
    }

    v7 = *a3++;
    *v6 = a0123456789abcd_0[v7 >> 4];
    v5 = v6 + 2;
    v6[1] = a0123456789abcd_0[v7 & 0xF];
  }

  while (a3 < v4);
  *v5 = 0;
  return CFDictionarySetCString(a1, a2, v9, -1);
}

uint64_t CFDictionarySetNumber(__CFDictionary *a1, const void *a2, CFNumberType theType, void *valuePtr)
{
  v6 = CFNumberCreate(0, theType, valuePtr);
  if (!v6)
  {
    return 4294960596;
  }

  v7 = v6;
  CFDictionarySetValue(a1, a2, v6);
  CFRelease(v7);
  return 0;
}

uint64_t CFDictionaryGetUUIDEx(const __CFDictionary *a1, const void *a2, _OWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294960591;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 4294960569;
  }

  return CFGetUUIDEx(Value, a3, a4);
}

uint64_t CFDictionarySetUUIDString(__CFDictionary *a1, const void *a2, _BYTE *a3, uint64_t a4, __int128 *a5, char a6)
{
  v11 = 0;
  v8 = CFCreateUUIDString(a3, a4, a5, a6, &v11);
  if (v8)
  {
    v9 = v8;
    CFDictionarySetValue(a1, a2, v8);
    CFRelease(v9);
  }

  return v11;
}

CFNumberRef CFNumberGetObject(unsigned int a1)
{
  if (a1 > 0x1F)
  {
    return 0;
  }

  pthread_mutex_lock(&gCFNumberGetObjectLock);
  v2 = gCFNumberArray[a1];
  if (!v2)
  {
    Int64 = CFNumberCreateInt64(a1);
    v2 = Int64;
    if (Int64)
    {
      gCFNumberArray[a1] = Int64;
    }
  }

  pthread_mutex_unlock(&gCFNumberGetObjectLock);
  return v2;
}

uint64_t CFRunLoopRunEx(CFTimeInterval a1)
{
  Current = CFRunLoopGetCurrent();
  memset(&v7, 0, sizeof(v7));
  v3 = CFRunLoopSourceCreate(0, 0, &v7);
  v4 = MEMORY[0x1E695E8D0];
  if (v3)
  {
    CFRunLoopAddSource(Current, v3, *MEMORY[0x1E695E8D0]);
  }

  if (a1 < 0.0)
  {
    CFRunLoopRun();
    v5 = 2;
    if (!v3)
    {
      return v5;
    }

    goto LABEL_7;
  }

  v5 = CFRunLoopRunFor(a1);
  if (v3)
  {
LABEL_7:
    CFRunLoopRemoveSource(Current, v3, *v4);
    CFRelease(v3);
  }

  return v5;
}

uint64_t CFRunLoopRunFor(CFTimeInterval a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *MEMORY[0x1E695E8E0];
  result = CFRunLoopRunInMode(*MEMORY[0x1E695E8E0], a1, 0);
  if (result == 1)
  {
    v5 = Current + a1;
    while (1)
    {
      v6 = v5 - CFAbsoluteTimeGetCurrent();
      if (v6 < 0.0)
      {
        break;
      }

      usleep(0x4E20u);
      result = CFRunLoopRunInMode(v3, v6, 0);
      if (result != 1)
      {
        return result;
      }
    }

    return 3;
  }

  return result;
}

uint64_t MapCFStringToValue(CFTypeRef cf1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = &a9;
  while (1)
  {
    v11 = v16;
    v17 = (v16 + 1);
    v12 = *v11;
    if (!*v11)
    {
      break;
    }

    v13 = v17;
    v16 = (v17 + 2);
    v14 = *v13;
    if (CFEqual(cf1, v12))
    {
      return v14;
    }
  }

  return a2;
}

void *NSArrayGetNSNumberAtIndex(void *result, uint64_t a2, int *a3)
{
  if (result)
  {
    result = [result objectAtIndexedSubscript:a2];
    if (result)
    {
      v4 = result;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v6 = (isKindOfClass & 1) == 0;
      if (isKindOfClass)
      {
        result = v4;
      }

      else
      {
        result = 0;
      }

      if (v6)
      {
        v7 = -6756;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = -6727;
    }
  }

  else
  {
    v7 = -6705;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t NSGetNSNumber(uint64_t result, int *a2)
{
  if (!result)
  {
    v6 = -6705;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  v3 = result;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = (isKindOfClass & 1) == 0;
  if (isKindOfClass)
  {
    result = v3;
  }

  else
  {
    result = 0;
  }

  if (v5)
  {
    v6 = -6756;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v6;
  }

  return result;
}

double CFDictionaryGetCGSize(const __CFDictionary *a1, const void *a2, int *a3)
{
  v12[0] = (getCGSizeZero[0])();
  v12[1] = v6;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFDictionaryGetTypeID())
    {
      if ((softLinkCGSizeMakeWithDictionaryRepresentation[0])(v8, v12))
      {
        v10 = 0;
      }

      else
      {
        v10 = -6700;
      }
    }

    else
    {
      v10 = -6756;
    }
  }

  else
  {
    v10 = -6727;
  }

  if (a3)
  {
    *a3 = v10;
  }

  return *v12;
}

uint64_t initCGSizeMakeWithDictionaryRepresentation(uint64_t a1, uint64_t a2)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v4 = dlsym(CoreGraphicsLibrary_sLib_342, "CGSizeMakeWithDictionaryRepresentation");
  softLinkCGSizeMakeWithDictionaryRepresentation[0] = v4;

  return (v4)(a1, a2);
}

void *__CoreGraphicsLibrary_block_invoke_348()
{
  result = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 2);
  CoreGraphicsLibrary_sLib_342 = result;
  return result;
}

double initValCGSizeZero()
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v0 = dlsym(CoreGraphicsLibrary_sLib_342, "CGSizeZero");
  if (v0)
  {
    constantValCGSizeZero = *v0;
  }

  getCGSizeZero[0] = CGSizeZeroFunction;
  return *&constantValCGSizeZero;
}

uint64_t CFDictionarySetCGSize(__CFDictionary *a1, const void *a2, double a3, double a4)
{
  v6 = (softLinkCGSizeCreateDictionaryRepresentation[0])(a3, a4);
  if (!v6)
  {
    return 4294960596;
  }

  v7 = v6;
  CFDictionarySetValue(a1, a2, v6);
  CFRelease(v7);
  return 0;
}

uint64_t initCGSizeCreateDictionaryRepresentation(double a1, double a2)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v4 = dlsym(CoreGraphicsLibrary_sLib_342, "CGSizeCreateDictionaryRepresentation");
  softLinkCGSizeCreateDictionaryRepresentation[0] = v4;
  v5.n128_f64[0] = a1;
  v6.n128_f64[0] = a2;

  return (v4)(v5, v6);
}

double CFDictionaryGetCGRect(const __CFDictionary *a1, const void *a2, int *a3)
{
  v14[0] = (getCGRectZero[0])();
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 == CFDictionaryGetTypeID())
    {
      if ((softLinkCGRectMakeWithDictionaryRepresentation[0])(v10, v14))
      {
        v12 = 0;
      }

      else
      {
        v12 = -6700;
      }
    }

    else
    {
      v12 = -6756;
    }
  }

  else
  {
    v12 = -6727;
  }

  if (a3)
  {
    *a3 = v12;
  }

  return *v14;
}

uint64_t initCGRectMakeWithDictionaryRepresentation(uint64_t a1, uint64_t a2)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v4 = dlsym(CoreGraphicsLibrary_sLib_342, "CGRectMakeWithDictionaryRepresentation");
  softLinkCGRectMakeWithDictionaryRepresentation[0] = v4;

  return (v4)(a1, a2);
}

double initValCGRectZero()
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v0 = dlsym(CoreGraphicsLibrary_sLib_342, "CGRectZero");
  if (v0)
  {
    v1 = v0[1];
    constantValCGRectZero = *v0;
    *&qword_1EADEBE18 = v1;
  }

  getCGRectZero[0] = CGRectZeroFunction;
  return *&constantValCGRectZero;
}

uint64_t CFDictionarySetCGRect(__CFDictionary *a1, const void *a2, double a3, double a4, double a5, double a6)
{
  v8 = (softLinkCGRectCreateDictionaryRepresentation[0])(a3, a4, a5, a6);
  if (!v8)
  {
    return 4294960596;
  }

  v9 = v8;
  CFDictionarySetValue(a1, a2, v8);
  CFRelease(v9);
  return 0;
}

uint64_t initCGRectCreateDictionaryRepresentation(double a1, double a2, double a3, double a4)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v8 = dlsym(CoreGraphicsLibrary_sLib_342, "CGRectCreateDictionaryRepresentation");
  softLinkCGRectCreateDictionaryRepresentation[0] = v8;
  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return (v8)(v9, v10, v11, v12);
}

uint64_t CGColorSpaceGetGray()
{
  if (CGColorSpaceGetGray_sOnce != -1)
  {
    dispatch_once_f(&CGColorSpaceGetGray_sOnce, &CGColorSpaceGetGray_sColorSpace, _CGColorSpaceGetGray);
  }

  return CGColorSpaceGetGray_sColorSpace;
}

uint64_t _CGColorSpaceGetGray(uint64_t *a1)
{
  result = softLinkCGColorSpaceCreateDeviceGray[0]();
  *a1 = result;
  return result;
}

uint64_t initCGColorSpaceCreateDeviceGray()
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v0 = dlsym(CoreGraphicsLibrary_sLib_342, "CGColorSpaceCreateDeviceGray");
  softLinkCGColorSpaceCreateDeviceGray[0] = v0;

  return v0();
}

uint64_t CGColorSpaceGetRGB()
{
  if (CGColorSpaceGetRGB_sOnce != -1)
  {
    dispatch_once_f(&CGColorSpaceGetRGB_sOnce, &CGColorSpaceGetRGB_sColorSpace, _CGColorSpaceGetRGB);
  }

  return CGColorSpaceGetRGB_sColorSpace;
}

uint64_t _CGColorSpaceGetRGB(uint64_t *a1)
{
  result = softLinkCGColorSpaceCreateDeviceRGB_356[0]();
  *a1 = result;
  return result;
}

uint64_t initCGColorSpaceCreateDeviceRGB_358()
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v0 = dlsym(CoreGraphicsLibrary_sLib_342, "CGColorSpaceCreateDeviceRGB");
  softLinkCGColorSpaceCreateDeviceRGB_356[0] = v0;

  return v0();
}

uint64_t CGColorCreateWithRGB(float a1, float a2, float a3, float a4)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  if (CGColorSpaceGetRGB_sOnce != -1)
  {
    dispatch_once_f(&CGColorSpaceGetRGB_sOnce, &CGColorSpaceGetRGB_sColorSpace, _CGColorSpaceGetRGB);
  }

  return (softLinkCGColorCreate[0])(CGColorSpaceGetRGB_sColorSpace, v5);
}

uint64_t initCGColorCreate(uint64_t a1, uint64_t a2)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v4 = dlsym(CoreGraphicsLibrary_sLib_342, "CGColorCreate");
  softLinkCGColorCreate[0] = v4;

  return (v4)(a1, a2);
}

uint64_t _CGColorCreateWithRGB(uint64_t a1)
{
  result = CGColorCreateWithRGB(*a1, *(a1 + 4), *(a1 + 8), *(a1 + 12));
  **(a1 + 16) = result;
  return result;
}

uint64_t CGColorGetBlack()
{
  if (CGColorGetBlack_sOnce != -1)
  {
    dispatch_once_f(&CGColorGetBlack_sOnce, &CGColorGetBlack_sContext, _CGColorCreateWithRGB);
  }

  return CGColorGetBlack_sColor;
}

uint64_t initCGBitmapContextCreateImage(uint64_t a1)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v2 = dlsym(CoreGraphicsLibrary_sLib_342, "CGBitmapContextCreateImage");
  softLinkCGBitmapContextCreateImage[0] = v2;

  return (v2)(a1);
}

uint64_t initCGContextDrawImage(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v12 = dlsym(CoreGraphicsLibrary_sLib_342, "CGContextDrawImage");
  softLinkCGContextDrawImage[0] = v12;
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return (v12)(a1, a2, v13, v14, v15, v16);
}

uint64_t initCGBitmapContextCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v14 = dlsym(CoreGraphicsLibrary_sLib_342, "CGBitmapContextCreate");
  softLinkCGBitmapContextCreate[0] = v14;

  return (v14)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t initCGImageGetBitmapInfo(uint64_t a1)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v2 = dlsym(CoreGraphicsLibrary_sLib_342, "CGImageGetBitmapInfo");
  softLinkCGImageGetBitmapInfo[0] = v2;

  return (v2)(a1);
}

uint64_t initCGImageGetColorSpace(uint64_t a1)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v2 = dlsym(CoreGraphicsLibrary_sLib_342, "CGImageGetColorSpace");
  softLinkCGImageGetColorSpace[0] = v2;

  return (v2)(a1);
}

uint64_t initCGImageGetBitsPerComponent(uint64_t a1)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v2 = dlsym(CoreGraphicsLibrary_sLib_342, "CGImageGetBitsPerComponent");
  softLinkCGImageGetBitsPerComponent[0] = v2;

  return (v2)(a1);
}

uint64_t initCGBitmapGetAlignedBytesPerRow(uint64_t a1)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v2 = dlsym(CoreGraphicsLibrary_sLib_342, "CGBitmapGetAlignedBytesPerRow");
  softLinkCGBitmapGetAlignedBytesPerRow[0] = v2;

  return (v2)(a1);
}

uint64_t initCGImageGetBitsPerPixel(uint64_t a1)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v2 = dlsym(CoreGraphicsLibrary_sLib_342, "CGImageGetBitsPerPixel");
  softLinkCGImageGetBitsPerPixel[0] = v2;

  return (v2)(a1);
}

CFMutableDataRef CGImageCreateData(uint64_t a1, uint64_t a2, int *a3)
{
  Mutable = CFDataCreateMutable(0, 0);
  v7 = Mutable;
  if (Mutable)
  {
    v8 = (softLinkCGImageDestinationCreateWithData[0])(Mutable, a2, 1, 0);
    if (v8)
    {
      v9 = v8;
      (softLinkCGImageDestinationAddImage_371[0])(v8, a1, 0);
      v10 = (softLinkCGImageDestinationFinalize_372[0])(v9);
      CFRelease(v9);
      if (v10)
      {
        v11 = 0;
        goto LABEL_5;
      }

      v11 = -6747;
    }

    else
    {
      v11 = -6732;
    }

    CFRelease(v7);
    v7 = 0;
  }

  else
  {
    v11 = -6728;
  }

LABEL_5:
  if (a3)
  {
    *a3 = v11;
  }

  return v7;
}

uint64_t initCGImageDestinationFinalize_374(uint64_t a1)
{
  if (ImageIOLibrary_sOnce_375 != -1)
  {
    dispatch_once(&ImageIOLibrary_sOnce_375, &__block_literal_global_29);
  }

  v2 = dlsym(ImageIOLibrary_sLib_376, "CGImageDestinationFinalize");
  softLinkCGImageDestinationFinalize_372[0] = v2;

  return (v2)(a1);
}

void *__ImageIOLibrary_block_invoke_379()
{
  result = dlopen("/System/Library/Frameworks/ImageIO.framework/ImageIO", 2);
  ImageIOLibrary_sLib_376 = result;
  return result;
}

uint64_t initCGImageDestinationAddImage_382(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (ImageIOLibrary_sOnce_375 != -1)
  {
    dispatch_once(&ImageIOLibrary_sOnce_375, &__block_literal_global_29);
  }

  v6 = dlsym(ImageIOLibrary_sLib_376, "CGImageDestinationAddImage");
  softLinkCGImageDestinationAddImage_371[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initCGImageDestinationCreateWithData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (ImageIOLibrary_sOnce_375 != -1)
  {
    dispatch_once(&ImageIOLibrary_sOnce_375, &__block_literal_global_29);
  }

  v8 = dlsym(ImageIOLibrary_sLib_376, "CGImageDestinationCreateWithData");
  softLinkCGImageDestinationCreateWithData[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t CGImageCreateWithData(uint64_t a1, int *a2)
{
  v3 = (softLinkCGImageSourceCreateWithData[0])(a1, 0);
  if (!v3)
  {
    v5 = 0;
    v6 = -6700;
    if (!a2)
    {
      return v5;
    }

    goto LABEL_7;
  }

  v4 = v3;
  if ((softLinkCGImageSourceGetCount[0])(v3))
  {
    v5 = (softLinkCGImageSourceCreateImageAtIndex[0])(v4, 0, 0);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = -6700;
    }
  }

  else
  {
    v5 = 0;
    v6 = -6764;
  }

  CFRelease(v4);
  if (a2)
  {
LABEL_7:
    *a2 = v6;
  }

  return v5;
}

uint64_t initCGImageSourceCreateImageAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (ImageIOLibrary_sOnce_375 != -1)
  {
    dispatch_once(&ImageIOLibrary_sOnce_375, &__block_literal_global_29);
  }

  v6 = dlsym(ImageIOLibrary_sLib_376, "CGImageSourceCreateImageAtIndex");
  softLinkCGImageSourceCreateImageAtIndex[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initCGImageSourceGetCount(uint64_t a1)
{
  if (ImageIOLibrary_sOnce_375 != -1)
  {
    dispatch_once(&ImageIOLibrary_sOnce_375, &__block_literal_global_29);
  }

  v2 = dlsym(ImageIOLibrary_sLib_376, "CGImageSourceGetCount");
  softLinkCGImageSourceGetCount[0] = v2;

  return (v2)(a1);
}

uint64_t initCGImageSourceCreateWithData(uint64_t a1, uint64_t a2)
{
  if (ImageIOLibrary_sOnce_375 != -1)
  {
    dispatch_once(&ImageIOLibrary_sOnce_375, &__block_literal_global_29);
  }

  v4 = dlsym(ImageIOLibrary_sLib_376, "CGImageSourceCreateWithData");
  softLinkCGImageSourceCreateWithData[0] = v4;

  return (v4)(a1, a2);
}

CFDictionaryRef CreateScaledImageDataWithData(const void *a1, int *a2, double a3, double a4)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v38 = 0;
  cf = 0;
  v36 = 0;
  v37 = 0;
  memset(length, 0, sizeof(length));
  keys[0] = getkFigJPEGHighSpeedDecode[0]();
  values = *MEMORY[0x1E695E4D0];
  Data = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Data)
  {
LABEL_51:
    v9 = -6728;
    goto LABEL_18;
  }

  v9 = (softLinkFigCreateIOSurfaceFromJPEG[0])(a1, Data, &cf);
  CFRelease(Data);
  if (v9)
  {
    goto LABEL_16;
  }

  v10 = (softLinkIOSurfaceGetWidth[0])(cf);
  v11 = (softLinkIOSurfaceGetHeight[0])(cf);
  v12 = v11;
  v13 = v10;
  if (a3 < v10)
  {
    v13 = a3;
    v12 = a3 * v11 / v10;
  }

  if (v12 > a4)
  {
    v12 = a4;
    v13 = a4 * v10 / v11;
  }

  if (v13 == v10 && v12 == v11)
  {
    CFRelease(cf);
    CFRetain(a1);
    v9 = 0;
    Data = a1;
    goto LABEL_18;
  }

  v9 = (softLinkCVPixelBufferCreateWithIOSurface[0])(0, cf, 0, &v38);
  CFRelease(cf);
  if (v9)
  {
LABEL_16:
    Data = 0;
    goto LABEL_18;
  }

  v15 = (softLinkVTPixelTransferSessionCreate[0])(0, &v36);
  if (v15 || (v15 = (softLinkFigCreateIOSurfaceBackedCVPixelBuffer[0])(v13, v12, 2037741158, &v37)) != 0 || (v15 = (softLinkVTPixelTransferSessionTransferImage[0])(v36, v38, v37)) != 0)
  {
    v9 = v15;
    goto LABEL_16;
  }

  CFRelease(v38);
  v38 = 0;
  CFRelease(v36);
  v36 = 0;
  v33 = (softLinkCVPixelBufferGetIOSurface[0])(v37);
  Data = v33;
  if (v33)
  {
    CFRetain(v33);
    CFRelease(v37);
    v37 = 0;
    memset(length, 0, sizeof(length));
    v9 = (softLinkFigAspenCreateJPEGFromIOSurface[0])(Data, 0, &length[1], length);
    CFRelease(Data);
    if (v9)
    {
      goto LABEL_16;
    }

    (softLinkIOSurfaceLock_388[0])(*&length[1], 1, 0);
    v34 = (softLinkIOSurfaceGetBaseAddress_389[0])(*&length[1]);
    Data = CFDataCreate(0, v34, length[0]);
    (softLinkIOSurfaceUnlock_390[0])(*&length[1], 1, 0);
    CFRelease(*&length[1]);
    if (Data)
    {
      v9 = 0;
      goto LABEL_18;
    }

    goto LABEL_51;
  }

  v9 = -6700;
LABEL_18:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (a2)
  {
    *a2 = v9;
  }

  if (!Data)
  {
    LODWORD(cf) = 0;
    v16 = CGImageCreateWithData(a1, &cf);
    Data = v16;
    if (v16)
    {
      v17 = (softLinkCGImageGetWidth[0])(v16);
      v18 = (softLinkCGImageGetHeight[0])(Data);
      v19 = v18;
      v20 = v17;
      if (a3 < v17)
      {
        v20 = a3;
        v19 = a3 * v18 / v17;
      }

      if (v19 > a4)
      {
        v19 = a4;
        v20 = a4 * v17 / v18;
      }

      if (v20 != v17 || v19 != v18)
      {
        v22 = (softLinkCGImageGetBitsPerPixel[0])(Data);
        v23 = (softLinkCGBitmapGetAlignedBytesPerRow[0])(((v20 * v22 + 7.0) * 0.125));
        v24 = (softLinkCGImageGetBitsPerComponent[0])(Data);
        v25 = (softLinkCGImageGetColorSpace[0])(Data);
        v26 = (softLinkCGImageGetBitmapInfo[0])(Data);
        v27 = (softLinkCGBitmapContextCreate[0])(0, v20, v19, v24, v23, v25, v26);
        if (v27)
        {
          v28 = v27;
          (softLinkCGContextDrawImage[0])(v27, Data, 0.0, 0.0, v20, v19);
          v29 = (softLinkCGBitmapContextCreateImage[0])(v28);
          CFRelease(v28);
          if (v29)
          {
            v30 = 0;
          }

          else
          {
            v30 = -6700;
          }

          LODWORD(cf) = v30;
          CFRelease(Data);
          if (v29)
          {
            v31 = getkUTTypeJPEG[0]();
            Data = CGImageCreateData(v29, v31, &cf);
            CFRelease(v29);
            if (!a2)
            {
              return Data;
            }

            goto LABEL_45;
          }
        }

        else
        {
          LODWORD(cf) = -6700;
          CFRelease(Data);
        }

        Data = 0;
        if (!a2)
        {
          return Data;
        }

LABEL_45:
        *a2 = cf;
        return Data;
      }

      CFRelease(Data);
      CFRetain(a1);
      LODWORD(cf) = 0;
      Data = a1;
    }

    if (a2)
    {
      goto LABEL_45;
    }
  }

  return Data;
}

uint64_t initValkUTTypeJPEG()
{
  if (MobileCoreServicesLibrary_sOnce != -1)
  {
    dispatch_once(&MobileCoreServicesLibrary_sOnce, &__block_literal_global_41);
  }

  v0 = dlsym(MobileCoreServicesLibrary_sLib, "kUTTypeJPEG");
  if (v0)
  {
    result = *v0;
    constantValkUTTypeJPEG = result;
  }

  else
  {
    result = constantValkUTTypeJPEG;
  }

  getkUTTypeJPEG[0] = kUTTypeJPEGFunction;
  return result;
}

void *__MobileCoreServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
  MobileCoreServicesLibrary_sLib = result;
  return result;
}

uint64_t initCGImageGetHeight(uint64_t a1)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v2 = dlsym(CoreGraphicsLibrary_sLib_342, "CGImageGetHeight");
  softLinkCGImageGetHeight[0] = v2;

  return (v2)(a1);
}

uint64_t initCGImageGetWidth(uint64_t a1)
{
  if (CoreGraphicsLibrary_sOnce_340 != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce_340, &__block_literal_global_341);
  }

  v2 = dlsym(CoreGraphicsLibrary_sLib_342, "CGImageGetWidth");
  softLinkCGImageGetWidth[0] = v2;

  return (v2)(a1);
}

uint64_t initIOSurfaceUnlock_396(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (IOSurfaceLibrary_sOnce_397 != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce_397, &__block_literal_global_52);
  }

  v6 = dlsym(IOSurfaceLibrary_sLib_398, "IOSurfaceUnlock");
  softLinkIOSurfaceUnlock_390[0] = v6;

  return (v6)(a1, a2, a3);
}

void *__IOSurfaceLibrary_block_invoke_401()
{
  result = dlopen("/System/Library/PrivateFrameworks/IOSurface.framework/IOSurface", 2);
  IOSurfaceLibrary_sLib_398 = result;
  return result;
}

uint64_t initIOSurfaceGetBaseAddress_404(uint64_t a1)
{
  if (IOSurfaceLibrary_sOnce_397 != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce_397, &__block_literal_global_52);
  }

  v2 = dlsym(IOSurfaceLibrary_sLib_398, "IOSurfaceGetBaseAddress");
  softLinkIOSurfaceGetBaseAddress_389[0] = v2;

  return (v2)(a1);
}

uint64_t initIOSurfaceLock_407(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (IOSurfaceLibrary_sOnce_397 != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce_397, &__block_literal_global_52);
  }

  v6 = dlsym(IOSurfaceLibrary_sLib_398, "IOSurfaceLock");
  softLinkIOSurfaceLock_388[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initFigAspenCreateJPEGFromIOSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CelestialLibrary_sOnce != -1)
  {
    dispatch_once(&CelestialLibrary_sOnce, &__block_literal_global_46);
  }

  v8 = dlsym(CelestialLibrary_sLib, "FigAspenCreateJPEGFromIOSurface");
  softLinkFigAspenCreateJPEGFromIOSurface[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

void *__CelestialLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Celestial.framework/Celestial", 2);
  CelestialLibrary_sLib = result;
  return result;
}

uint64_t initCVPixelBufferGetIOSurface(uint64_t a1)
{
  if (CoreVideoLibrary_sOnce != -1)
  {
    dispatch_once(&CoreVideoLibrary_sOnce, &__block_literal_global_58);
  }

  v2 = dlsym(CoreVideoLibrary_sLib, "CVPixelBufferGetIOSurface");
  softLinkCVPixelBufferGetIOSurface[0] = v2;

  return (v2)(a1);
}

void *__CoreVideoLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreVideo.framework/CoreVideo", 2);
  CoreVideoLibrary_sLib = result;
  return result;
}

uint64_t initVTPixelTransferSessionTransferImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (VideoToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&VideoToolboxLibrary_sOnce, &__block_literal_global_63);
  }

  v6 = dlsym(VideoToolboxLibrary_sLib, "VTPixelTransferSessionTransferImage");
  softLinkVTPixelTransferSessionTransferImage[0] = v6;

  return (v6)(a1, a2, a3);
}

void *__VideoToolboxLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/VideoToolbox.framework/VideoToolbox", 2);
  VideoToolboxLibrary_sLib = result;
  return result;
}

uint64_t initFigCreateIOSurfaceBackedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (VideoToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&VideoToolboxLibrary_sOnce, &__block_literal_global_63);
  }

  v8 = dlsym(VideoToolboxLibrary_sLib, "FigCreateIOSurfaceBackedCVPixelBuffer");
  softLinkFigCreateIOSurfaceBackedCVPixelBuffer[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initVTPixelTransferSessionCreate(uint64_t a1, uint64_t a2)
{
  if (VideoToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&VideoToolboxLibrary_sOnce, &__block_literal_global_63);
  }

  v4 = dlsym(VideoToolboxLibrary_sLib, "VTPixelTransferSessionCreate");
  softLinkVTPixelTransferSessionCreate[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initCVPixelBufferCreateWithIOSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CoreVideoLibrary_sOnce != -1)
  {
    dispatch_once(&CoreVideoLibrary_sOnce, &__block_literal_global_58);
  }

  v8 = dlsym(CoreVideoLibrary_sLib, "CVPixelBufferCreateWithIOSurface");
  softLinkCVPixelBufferCreateWithIOSurface[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initIOSurfaceGetHeight(uint64_t a1)
{
  if (IOSurfaceLibrary_sOnce_397 != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce_397, &__block_literal_global_52);
  }

  v2 = dlsym(IOSurfaceLibrary_sLib_398, "IOSurfaceGetHeight");
  softLinkIOSurfaceGetHeight[0] = v2;

  return (v2)(a1);
}

uint64_t initIOSurfaceGetWidth(uint64_t a1)
{
  if (IOSurfaceLibrary_sOnce_397 != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce_397, &__block_literal_global_52);
  }

  v2 = dlsym(IOSurfaceLibrary_sLib_398, "IOSurfaceGetWidth");
  softLinkIOSurfaceGetWidth[0] = v2;

  return (v2)(a1);
}

uint64_t initFigCreateIOSurfaceFromJPEG(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CelestialLibrary_sOnce != -1)
  {
    dispatch_once(&CelestialLibrary_sOnce, &__block_literal_global_46);
  }

  v6 = dlsym(CelestialLibrary_sLib, "FigCreateIOSurfaceFromJPEG");
  softLinkFigCreateIOSurfaceFromJPEG[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initValkFigJPEGHighSpeedDecode()
{
  if (CelestialLibrary_sOnce != -1)
  {
    dispatch_once(&CelestialLibrary_sOnce, &__block_literal_global_46);
  }

  v0 = dlsym(CelestialLibrary_sLib, "kFigJPEGHighSpeedDecode");
  if (v0)
  {
    result = *v0;
    constantValkFigJPEGHighSpeedDecode = result;
  }

  else
  {
    result = constantValkFigJPEGHighSpeedDecode;
  }

  getkFigJPEGHighSpeedDecode[0] = kFigJPEGHighSpeedDecodeFunction;
  return result;
}

uint64_t chacha20_all_96x32(int32x4_t *a1, uint64_t *a2, int a3, int8x16_t *a4, unint64_t a5, int8x16_t *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a1[1];
  v11[0] = xmmword_191FF94A0;
  v11[1] = v6;
  v11[2] = v7;
  v12 = a3;
  if (a2)
  {
    v8 = *a2;
    v9 = *(a2 + 2);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v17 = 0uLL;
  v18 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v13 = v8;
  v14 = v9;
  v19 = 0;
  _chacha20_xor(v11, a6, a4, a5);
  return memset_s(v11, 0x88uLL, 0, 0x88uLL);
}

uint64_t CRC16_CCITT(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = bswap32(result);
    v4 = *a2++;
    v5 = ((v4 ^ BYTE2(v3)) >> 4) ^ v4 ^ HIWORD(v3);
    LODWORD(result) = (32 * v5) ^ (v5 << 12) ^ v5;
  }

  return result;
}

uint64_t Parity32(unsigned int a1)
{
  v1 = a1 ^ (a1 >> 1) ^ ((a1 ^ (a1 >> 1)) >> 2);
  v2 = v1 ^ (v1 >> 4) ^ ((v1 ^ (v1 >> 4)) >> 8);
  return (v2 ^ HIWORD(v2)) & 1;
}

uint64_t CocoaTextViewAppendUTF8String(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  if (CocoaTextViewAppendUTF8String_sOnce != -1)
  {
    dispatch_once(&CocoaTextViewAppendUTF8String_sOnce, &__block_literal_global_437);
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a3 == -1)
  {
    v9 = [v8 initWithUTF8String:a2];
  }

  else
  {
    v9 = [v8 initWithBytes:a2 length:a3 encoding:4];
  }

  v10 = v9;
  if (v9 && (v11 = objc_alloc(MEMORY[0x1E696AAB0]), (v12 = [v11 initWithString:v10 attributes:CocoaTextViewAppendUTF8String_sAttributes]) != 0))
  {
    v13 = v12;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CocoaTextViewAppendUTF8String_block_invoke_2;
    block[3] = &unk_1E73A49C8;
    v20 = a4;
    v18 = v7;
    v19 = v13;
    v14 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v15 = 0;
  }

  else
  {
    v15 = 4294960596;
  }

  return v15;
}

void __CocoaTextViewAppendUTF8String_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) contentSize];
  v3 = v2;
  [*(a1 + 32) contentInset];
  v5 = v4;
  [*(a1 + 32) bounds];
  v7 = *(a1 + 48);
  if ((v7 & 2) != 0 || (v7 & 1) != 0 && (v8 = v3 + v5 - v6, [*(a1 + 32) contentOffset], v9 >= v8))
  {
    v10 = [*(a1 + 32) textStorage];
    [v10 appendAttributedString:*(a1 + 40)];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CocoaTextViewAppendUTF8String_block_invoke_3;
    block[3] = &unk_1E73A4F68;
    v13 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v11 = [*(a1 + 32) textStorage];
    [v11 appendAttributedString:*(a1 + 40)];
  }
}

uint64_t __CocoaTextViewAppendUTF8String_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) contentSize];
  v3 = v2;
  result = [*(a1 + 32) bounds];
  if (v3 > v5)
  {
    [*(a1 + 32) contentSize];
    v7 = v6;
    [*(a1 + 32) contentInset];
    v9 = v7 + v8;
    [*(a1 + 32) bounds];
    v11 = *(a1 + 32);

    return [v11 setContentOffset:0 animated:{0.0, v9 - v10}];
  }

  return result;
}

void __CocoaTextViewAppendUTF8String_block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = getNSFontAttributeName();
  v4 = v0;
  v1 = [getUIFontClass[0]() systemFontOfSize:10.0];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = CocoaTextViewAppendUTF8String_sAttributes;
  CocoaTextViewAppendUTF8String_sAttributes = v2;
}

Class initUIFont()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_7);
  }

  result = objc_getClass("UIFont");
  classUIFont = result;
  getUIFontClass[0] = UIFontFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

id initValNSFontAttributeName()
{
  if (softLinkOnceNSFontAttributeName != -1)
  {
    dispatch_once(&softLinkOnceNSFontAttributeName, &__block_literal_global_4);
  }

  v1 = constantValNSFontAttributeName;

  return v1;
}

void __initValNSFontAttributeName_block_invoke()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_7);
  }

  v0 = dlsym(UIKitLibrary_sLib, "NSFontAttributeName");
  if (v0)
  {
    objc_storeStrong(&constantValNSFontAttributeName, *v0);
  }

  getNSFontAttributeName = NSFontAttributeNameFunction;
}

char *CLIInit(int a1, char **a2)
{
  gArgI = 0;
  gArgC = a1;
  gArgV = a2;
  if (a1 < 1)
  {
    v2 = "?";
  }

  else
  {
    gArgI = 1;
    v2 = *a2;
  }

  gProgramPath = v2;
  result = strrchr(v2, 47);
  if (result)
  {
    v4 = (result + 1);
  }

  else
  {
    v4 = v2;
  }

  gProgramName = v4;
  return result;
}

uint64_t CLIParse(uint64_t a1, int a2)
{
  v2 = a2;
  v3 = a1;
  v118 = *MEMORY[0x1E69E9840];
  v4 = &unk_1EADEB000;
  v5 = gRootOptions;
  v6 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
  v7 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
  if (gRootOptions)
  {
    goto LABEL_22;
  }

  gRootFlags = a2;
  v8 = gProgramName;
  for (i = a1; *i != 3; i += 104)
  {
    if (!*i)
    {
      goto LABEL_21;
    }

LABEL_8:
    ;
  }

  if ((*(i + 48) & 0x80) == 0 || strcasecmp(*(i + 8), v8))
  {
    goto LABEL_8;
  }

  v10 = malloc_type_malloc(8 * gArgC + 16, 0x50040EE9192B6uLL);
  if (v10)
  {
    v11 = v10;
    v12 = gArgC;
    if (gArgC < 1)
    {
      v13 = 0;
    }

    else
    {
      *v10 = *gArgV;
      v13 = 1;
    }

    v10[v13] = gProgramName;
    if (v13 >= v12)
    {
      v16 = v13 + 1;
    }

    else
    {
      v14 = v13;
      do
      {
        v15 = v14++;
        v10[v15 + 1] = *(gArgV + 8 * v15);
      }

      while (v12 != v14);
      v16 = v15 + 2;
    }

    v10[v16] = 0;
    gArgI = v12 > 0;
    gArgC = v16;
    gArgV = v10;
    if (gArgVAlt)
    {
      free(gArgVAlt);
    }

    gArgVAlt = v11;
  }

LABEL_21:
  gRootOptions = v3;
LABEL_22:
  gOptionPtr = 0;
  v17 = &unk_1EADEB000;
  if ((gEndedOptions & 1) == 0)
  {
    v18 = gArgI;
    while (v18 < *(v6 + 643))
    {
      v19 = *(gArgV + 8 * v18);
      if (*v19 == 45 && ((v20 = v19 + 1, v21 = v19[1], v19[1]) ? (v22 = (v21 - 48) > 9) : (v22 = 0), v22))
      {
        if (v21 == 45)
        {
          v24 = v19 + 2;
          if (!v19[2])
          {
            *(v7 + 642) = v18 + 1;
            v17[3888] = 1;
            break;
          }

          v112 = v2;
          v25 = strchr(v19 + 2, 61);
          if (!v25)
          {
            v25 = &v24[strlen(v19 + 2)];
          }

          v113 = v5;
          v114 = v3;
          v26 = v25 - v24;
          if ((v25 - v24) < 3)
          {
            v111 = 0;
            v28 = v19 + 2;
          }

          else
          {
            v27 = strncasecmp(v19 + 2, "no-", 3uLL);
            if (v27)
            {
              v28 = v19 + 2;
            }

            else
            {
              v28 = v19 + 5;
            }

            if (v27)
            {
              v29 = 0;
            }

            else
            {
              v26 = v25 - v24 - 3;
              v29 = 2;
            }

            v111 = v29;
          }

          v37 = 0;
          v38 = gRootOptions;
          v39 = v114;
          while (1)
          {
            v40 = *v39;
            if (*v39)
            {
              break;
            }

LABEL_71:
            if (v37)
            {
              fprintf(*MEMORY[0x1E69E9848], "error: unknown option '%s'.\n", v24);
              v45 = 129;
              v6 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
              v7 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
              v5 = v113;
              goto LABEL_113;
            }

            v44 = *(v39 + 80);
            v37 = v44 == 0;
            if (v44)
            {
              v39 = *(v39 + 80);
            }

            else
            {
              v39 = v38;
            }
          }

          v41 = v39;
          while (1)
          {
            if ((v40 - 6) <= 9)
            {
              v42 = *(v41 + 8);
              if (v42)
              {
                if (!strncasecmp(*(v41 + 8), v28, v26) && !*(v42 + v26))
                {
                  break;
                }
              }
            }

            v43 = *(v41 + 104);
            v41 += 104;
            v40 = v43;
            if (!v43)
            {
              goto LABEL_71;
            }
          }

          if (*v25)
          {
            gOptionPtr = (v25 + 1);
          }

          v23 = _CLIGetValue(v41, v111);
          v6 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
          v7 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
          v5 = v113;
          v3 = v114;
          v2 = v112;
          v4 = &unk_1EADEB000;
          v17 = &unk_1EADEB000;
          if (v23)
          {
            goto LABEL_106;
          }
        }

        else
        {
          gOptionPtr = (v19 + 1);
          while (2)
          {
            v30 = 0;
            v31 = v3;
            while (1)
            {
              v32 = *v31;
              if (*v31)
              {
                break;
              }

LABEL_53:
              if (v30)
              {
                fprintf(*MEMORY[0x1E69E9848], "error: unknown option '%c'.\n", *v20);
                goto LABEL_80;
              }

              v31 = *(v31 + 80);
              v30 = v31 == 0;
              if (!v31)
              {
                v31 = v4[483];
              }
            }

            v33 = v31;
            while ((v32 - 6) > 9 || *(v33 + 4) != *v20)
            {
              v34 = *(v33 + 104);
              v33 += 104;
              v32 = v34;
              if (!v34)
              {
                goto LABEL_53;
              }
            }

            v36 = v20[1];
            v35 = (v20 + 1);
            if (!v36)
            {
              v35 = 0;
            }

            gOptionPtr = v35;
            v23 = _CLIGetValue(v33, 1);
            if (v23)
            {
              goto LABEL_106;
            }

            v20 = gOptionPtr;
            if (gOptionPtr)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        if ((v2 & 1) == 0)
        {
          break;
        }

        v23 = _CLIReorderArg(*(gArgV + 8 * v18));
        if (v23)
        {
          goto LABEL_106;
        }
      }

      v18 = *(v7 + 642) + 1;
      *(v7 + 642) = v18;
      if (v17[3888])
      {
        break;
      }
    }
  }

  _CLIReorderArg(0);
  if ((v2 & 2) != 0)
  {
    goto LABEL_112;
  }

  v46 = *(v7 + 642);
  if (v46 >= *(v6 + 643))
  {
    if (_CLIFindOption(v3, 3, 0, 0))
    {
      v64 = *(v3 + 80);
      if (v64)
      {
        if (!*(v64 + 64))
        {
          _CLIHelp_PrintCommand(v64, 0, 0);
          goto LABEL_80;
        }
      }

      else if (!gCLIInteractiveMode)
      {
        _CLIHelp_PrintSummary(0);
        goto LABEL_80;
      }
    }

LABEL_112:
    v45 = 0;
    goto LABEL_113;
  }

  v47 = *(gArgV + 8 * v46);
  v48 = _CLIFindOption(v3, 3, 0, v47);
  if (!v48)
  {
    if (_CLIFindOption(v3, 3, 0, 0))
    {
      _CLIPrintCommandNotFound(v47, *(v3 + 80));
      goto LABEL_80;
    }

    goto LABEL_112;
  }

  v49 = v48;
  gCLICurrentCommand = v48;
  v48[10] = *(v3 + 80);
  ++*(v7 + 642);
  v50 = v48[9];
  if (!v50)
  {
    goto LABEL_89;
  }

  v51 = _CLIFindOption(v50, 3, 0, 0);
  *(*(v49 + 72) + 80) = v49;
  v23 = (CLIParse)();
  if (v23)
  {
    goto LABEL_106;
  }

  if (v51)
  {
LABEL_90:
    v58 = *(v49 + 72);
    if (!v58 || !*v58)
    {
LABEL_108:
      gCLICurrentOption = v49;
      v65 = *(v49 + 64);
      if (v65)
      {
        v65();
      }

      v45 = 133;
      goto LABEL_113;
    }

    v59 = 0;
    v60 = 1;
    do
    {
      while ((v58[12] & 0x30) == 0x10)
      {
        v62 = _CLIHelp_PrintOptionName(v58, 0, v52, v53, v54, v55, v56, v57);
        v60 = 0;
        if (v62 > v59)
        {
          v59 = v62;
        }

        v63 = v58[26];
        v58 += 26;
        if (!v63)
        {
          goto LABEL_161;
        }
      }

      v61 = v58[26];
      v58 += 26;
    }

    while (v61);
    if (v60)
    {
      goto LABEL_108;
    }

LABEL_161:
    v101 = *(v49 + 72);
    if (v101 && *v101)
    {
      v102 = MEMORY[0x1E69E9848];
      do
      {
        if ((v101[12] & 0x30) == 0x10)
        {
          fwrite("error: ", 7uLL, 1uLL, *v102);
          v109 = _CLIHelp_PrintOptionName(v101, *v102, v103, v104, v105, v106, v107, v108);
          fprintf(*v102, "%*s not specified\n", v59 - v109, "");
        }

        v110 = v101[26];
        v101 += 26;
        v45 = 129;
      }

      while (v110);
      goto LABEL_113;
    }

LABEL_80:
    v45 = 129;
    goto LABEL_113;
  }

LABEL_89:
  v23 = CLIParse(v3, v2 | 3u);
  if (!v23)
  {
    goto LABEL_90;
  }

LABEL_106:
  v45 = v23;
LABEL_113:
  if (!v5)
  {
    if (v45 == 133)
    {
      v67 = 0;
    }

    else
    {
      v67 = v45;
    }

    if (!v67)
    {
      v68 = *(v7 + 642);
      if (v68 < *(v6 + 643))
      {
        v69 = MEMORY[0x1E69E9848];
        do
        {
          fprintf(*v69, "warning: unused argument '%s'.\n", *(gArgV + 8 * v68));
          v68 = *(v7 + 642) + 1;
          *(v7 + 642) = v68;
        }

        while (v68 < *(v6 + 643));
      }
    }

    v45 = v67 == -6752 ? 0 : v67;
    if (!v45)
    {
      if (gCLIInteractivePending)
      {
        v45 = 0;
        gCLIInteractivePending = 0;
        if (!gCLIInteractiveInputSource)
        {
          v70 = signal(2, 1);
          v71 = gProgramName;
          *var_rl_readline_name[0]() = v71;
          *var_rl_attempted_completion_function[0]() = _CLIInteractiveCompleter;
          __dst[0] = 0;
          v72 = getenv("HOME");
          if (v72)
          {
            v73 = v72;
            goto LABEL_130;
          }

          memset(&v116, 0, sizeof(v116));
          v74 = sysconf(71);
          if (v74 >= 1)
          {
            v75 = v74;
          }

          else
          {
            v75 = 4096;
          }

          v76 = malloc_type_malloc(v75, 0x100004077774924uLL);
          if (v76)
          {
            v77 = v76;
            v115 = 0;
            v78 = getuid();
            if (getpwuid_r(v78, &v116, v77, v75, &v115) || !v115 || (pw_dir = v115->pw_dir) == 0)
            {
              if (getuid())
              {
                pw_dir = ".";
              }

              else
              {
                pw_dir = "/root";
              }
            }

            strlcpy(__dst, pw_dir, 0x400uLL);
            free(v77);
          }

          else
          {
            if (getuid())
            {
              v73 = ".";
            }

            else
            {
              v73 = "/root";
            }

LABEL_130:
            strlcpy(__dst, v73, 0x400uLL);
          }

          v80 = strlen(__dst);
          snprintf(&__dst[v80], 1024 - v80, "/.%s_history", gProgramName);
          (softLinkread_history[0])(__dst);
          v81 = MEMORY[0x1E69E96A0];
          v82 = MEMORY[0x1E69E96A0];
          v83 = var_rl_instream[0]();
          v84 = fileno(*v83);
          v85 = dispatch_source_create(MEMORY[0x1E69E96F8], v84, 0, v81);
          v86 = gCLIInteractiveInputSource;
          gCLIInteractiveInputSource = v85;

          if (gCLIInteractiveInputSource && (dispatch_source_set_event_handler_f(gCLIInteractiveInputSource, _CLIInteractiveHandleInput), dispatch_resume(gCLIInteractiveInputSource), v87 = dispatch_source_create(MEMORY[0x1E69E9700], 2uLL, 0, MEMORY[0x1E69E96A0]), v88 = gCLIInteractiveSigIntSignalSource, gCLIInteractiveSigIntSignalSource = v87, v88, gCLIInteractiveSigIntSignalSource))
          {
            dispatch_source_set_event_handler_f(gCLIInteractiveSigIntSignalSource, _CLIInteractiveHandleSigIntDirect);
            dispatch_resume(gCLIInteractiveSigIntSignalSource);
            v45 = _CLIInteractiveReset();
            if (!v45)
            {
              v89 = objc_autoreleasePoolPush();
              v90 = [MEMORY[0x1E695DFD0] currentRunLoop];
              gCLIInteractiveMode = 1;
              v91 = *MEMORY[0x1E695D918];
              do
              {
                v92 = [MEMORY[0x1E695DF00] distantFuture];
                v93 = [v90 runMode:v91 beforeDate:v92];

                if (v93)
                {
                  v94 = gCLIInteractiveMode == 0;
                }

                else
                {
                  v94 = 1;
                }
              }

              while (!v94);

              objc_autoreleasePoolPop(v89);
              softLinkrl_callback_handler_remove[0]();
              (softLinkwrite_history[0])(__dst);
              (softLinkhistory_truncate_file[0])(__dst, 512);
              v45 = 0;
            }
          }

          else
          {
            v45 = 4294960596;
          }

          if (v70 != -1)
          {
            signal(2, v70);
          }

          if (gCLIInteractiveInputSource)
          {
            v95 = gCLIInteractiveInputSource;
            dispatch_source_cancel(v95);
            v96 = gCLIInteractiveInputSource;
            gCLIInteractiveInputSource = 0;
          }

          if (gCLIInteractiveSigIntSignalSource)
          {
            v97 = gCLIInteractiveSigIntSignalSource;
            dispatch_source_cancel(v97);
            v98 = gCLIInteractiveSigIntSignalSource;
            gCLIInteractiveSigIntSignalSource = 0;
          }

          if (gCLIInteractiveSigIntTimerSource)
          {
            v99 = gCLIInteractiveSigIntTimerSource;
            dispatch_source_cancel(v99);
            v100 = gCLIInteractiveSigIntTimerSource;
            gCLIInteractiveSigIntTimerSource = 0;
          }
        }
      }
    }
  }

  return v45;
}

uint64_t _CLIReorderArg(uint64_t a1)
{
  if (a1)
  {
    v2 = gMutableArgV;
    if (gMutableArgV || (v2 = malloc_type_malloc(8 * gArgC + 8, 0x50040EE9192B6uLL), (gMutableArgV = v2) != 0))
    {
      result = 0;
      v4 = gMutableArgC++;
      v2[v4] = a1;
    }

    else
    {
      return 130;
    }
  }

  else
  {
    v5 = gMutableArgC;
    if (gMutableArgC < 1)
    {
      return 0;
    }

    else
    {
      v6 = gArgC;
      v7 = gArgI;
      v8 = gMutableArgV;
      if (gArgI < gArgC)
      {
        do
        {
          *(v8 + 8 * v5++) = *(gArgV + 8 * v7++);
        }

        while (v6 != v7);
      }

      result = 0;
      *(v8 + 8 * v5) = 0;
      gArgI = 0;
      gArgC = v5;
      gArgV = v8;
      gMutableArgC = 0;
    }
  }

  return result;
}

uint64_t _CLIGetValue(uint64_t a1, char a2)
{
  v3 = a1;
  v4 = *(a1 + 48);
  if ((a2 & 2) != 0)
  {
    if ((v4 & 4) != 0)
    {
      v9 = "can't be negated";
      v10 = a2 & 0xFD;
      goto LABEL_23;
    }

    v5 = gOptionPtr;
    if (gOptionPtr)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = gOptionPtr != 0;
    if (a2 & 1) == 0 && gOptionPtr && (*(a1 + 48))
    {
LABEL_20:
      v9 = "doesn't take a value";
      goto LABEL_21;
    }
  }

  v31 = 0;
  __str = 0;
  __endptr = 0;
  v7 = *a1;
  if (*a1 > 10)
  {
    if (v7 <= 12)
    {
      if (v7 == 11)
      {
        gCLICurrentOption = a1;
        if ((a2 & 2) != 0)
        {
          v19 = *(a1 + 56);
        }

        else if ((v4 & 1) != 0 || !((((v4 >> 1) & 1) == 0) | v5 & 1))
        {
          v19 = *(a1 + 56);
        }

        else
        {
          result = _CLIGetArg(a1, a2, &__str);
          if (result)
          {
            return result;
          }

          v19 = *(v3 + 56);
        }

        result = v19();
LABEL_104:
        if (result)
        {
          return result;
        }

        goto LABEL_105;
      }

      if (v7 == 12)
      {
        if ((a2 & 2) == 0)
        {
          if ((((v4 >> 1) & 1) == 0) | v5 & 1)
          {
            result = _CLIGetArg(a1, a2, &__str);
            v31 = result;
            if (result)
            {
              return result;
            }

            **(v3 + 16) = strtod(__str, &__endptr);
            if (*__endptr)
            {
              v9 = "expects a numeric value";
              goto LABEL_21;
            }

            goto LABEL_103;
          }

          **(a1 + 16) = *(a1 + 32);
          goto LABEL_105;
        }

        goto LABEL_59;
      }

LABEL_73:
      fprintf(*MEMORY[0x1E69E9848], "BUG: unknown option type %d\n", *a1);
      return 128;
    }

    if ((v7 - 13) >= 2)
    {
      if (v7 == 15)
      {
        if ((a2 & 2) != 0)
        {
          v16 = 0;
        }

        else if ((((v4 >> 1) & 1) == 0) | v5 & 1)
        {
          result = _CLIGetArg(a1, a2, &__str);
          v31 = result;
          if (result)
          {
            return result;
          }

          v16 = CLIArgNameValueParse(*(v3 + 40), __str, &v31, *(v3 + 24), v12, v13, v14, v15);
          if (v31)
          {
            return 129;
          }
        }

        else
        {
          v16 = *(a1 + 32);
        }

        **(v3 + 16) = v16;
        goto LABEL_103;
      }

      goto LABEL_73;
    }

    if ((a2 & 2) != 0)
    {
      v11 = 0;
      if (v7 == 13)
      {
LABEL_80:
        **(v3 + 16) = v11;
        goto LABEL_103;
      }
    }

    else
    {
      if ((((v4 >> 1) & 1) == 0) | v5 & 1)
      {
        result = _CLIGetArg(a1, a2, &__str);
        v31 = result;
        if (result)
        {
          return result;
        }

        v11 = CLIFlagsToValueEx(0, __str, *(v3 + 24), &v31);
        if (v31)
        {
          return 129;
        }

        v7 = *v3;
      }

      else
      {
        v11 = *(a1 + 32);
      }

      if (v7 == 13)
      {
        if (HIDWORD(v11))
        {
          fprintf(*MEMORY[0x1E69E9848], "error: flags out-of-range: 0x%llx\n", v11);
          return 129;
        }

        goto LABEL_80;
      }
    }

    **(v3 + 16) = v11;
    goto LABEL_103;
  }

  if (v7 <= 7)
  {
    if (v7 == 6)
    {
      v17 = *(a1 + 16);
      if ((a2 & 2) != 0)
      {
        v18 = 0;
      }

      else if (*v17 >= 1)
      {
        v18 = *v17 + 1;
      }

      else
      {
        v18 = 1;
      }

      *v17 = v18;
      goto LABEL_105;
    }

    if (v7 == 7)
    {
      if ((a2 & 2) == 0)
      {
        if ((((v4 >> 1) & 1) == 0) | v5 & 1)
        {
          result = _CLIGetArg(a1, a2, *(a1 + 16));
          goto LABEL_104;
        }

        **(a1 + 16) = *(a1 + 32);
        goto LABEL_105;
      }

LABEL_59:
      v20 = *(a1 + 16);
      goto LABEL_86;
    }

    goto LABEL_73;
  }

  if (v7 == 8)
  {
    v21 = *(a1 + 16);
    if ((a2 & 2) != 0)
    {
      if (*v21)
      {
        CFRelease(*v21);
        *v21 = 0;
      }
    }

    else
    {
      if ((((v4 >> 1) & 1) == 0) | v5 & 1)
      {
        result = _CLIGetArg(a1, a2, &__str);
        v31 = result;
        if (result)
        {
          return result;
        }

        v22 = CFStringCreateWithCString(0, __str, 0x8000100u);
        if (!v22)
        {
          return 130;
        }

        v23 = v22;
        if (*v21)
        {
          CFRelease(*v21);
        }

        *v21 = v23;
LABEL_103:
        result = v31;
        goto LABEL_104;
      }

      v27 = *v21;
      v28 = *(a1 + 32);
      if (v28)
      {
        CFRetain(*(a1 + 32));
      }

      *v21 = v28;
      if (v27)
      {
        CFRelease(v27);
      }
    }

    v31 = 0;
    goto LABEL_103;
  }

  if (v7 == 9)
  {
    if ((a2 & 2) == 0)
    {
      if ((((v4 >> 1) & 1) == 0) | v5 & 1)
      {
        result = _CLIGetArg(a1, a2, &__str);
        if (result)
        {
          return result;
        }

        v24 = *(v3 + 16);
        v25 = *(v3 + 24);
        v26 = __str;
      }

      else
      {
        v24 = *(a1 + 16);
        v25 = *(v3 + 24);
        v26 = *(v3 + 32);
      }

      if (!StringArray_Append(v24, v25, v26))
      {
        goto LABEL_105;
      }

      return 130;
    }

    StringArray_Free(**(a1 + 16), **(a1 + 24));
    v20 = *(v3 + 24);
LABEL_86:
    *v20 = 0;
    goto LABEL_105;
  }

  if (v7 != 10)
  {
    goto LABEL_73;
  }

  if ((a2 & 2) != 0)
  {
    **(a1 + 16) = 0;
  }

  else
  {
    if ((((v4 >> 1) & 1) == 0) | v5 & 1)
    {
      result = _CLIGetArg(a1, a2, &__str);
      v31 = result;
      if (result)
      {
        return result;
      }

      **(v3 + 16) = strtol(__str, &__endptr, 0);
      if (*__endptr)
      {
        v9 = "expects an integer value";
LABEL_21:
        a1 = v3;
        v10 = a2;
LABEL_23:
        _CLIOptionError(a1, v9, v10);
        return 129;
      }

      goto LABEL_103;
    }

    **(a1 + 16) = *(a1 + 32);
  }

LABEL_105:
  result = 0;
  *(v3 + 48) |= 0x20u;
  return result;
}

const char **_CLIFindOption(unsigned __int8 **a1, int a2, char a3, char *a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1;
  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v9 = *a1;
  v10 = a1;
  while (v9 != a2 && (a2 != 5 || (v9 - 6) > 9) || (a3 & 1) != 0 && (v10[6] & 0x40) != 0 || a4 && strcasecmp(v10[1], a4))
  {
    v11 = *(v10 + 26);
    v10 += 13;
    v9 = v11;
    if (!v11)
    {
      if ((gRootFlags & 4) == 0)
      {
        v12 = 0;
        v10 = 0;
        do
        {
          if (v5 != a2 && (a2 != 5 || (v5 - 6) > 9) || (a3 & 1) != 0 && (v4[6] & 0x40) != 0 || a4 && stricmp_prefix(v4[1], a4))
          {
            v13 = v10;
          }

          else
          {
            ++v12;
            v13 = v4;
            if (v10)
            {
              break;
            }
          }

          v14 = *(v4 + 26);
          v4 += 13;
          v5 = v14;
          v10 = v13;
        }

        while (v14);
        if (v12 == 1)
        {
          return v10;
        }
      }

      return 0;
    }
  }

  return v10;
}

const char **_CLIHelp_PrintCommand(uint64_t a1, int a2, int a3)
{
  v4 = a1;
  if (!a2)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = gArgI;
  if (gArgI >= gArgC)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  ++gArgI;
  v5 = _CLIFindOption(v5, 3, 0, *(gArgV + 8 * v6));
  if (!v5)
  {
    return fprintf(*MEMORY[0x1E69E9848], "error: unknown %s sub-command '%s'.\n");
  }

  v5[10] = v4;
LABEL_7:
  if (v5)
  {
    v4 = v5;
  }

  v7 = MEMORY[0x1E69E9858];
  fprintf(*MEMORY[0x1E69E9858], "\n%s\n", *(v4 + 88));
  _CLIHelp_PrintUsageLine(v4);
  fputc(10, *v7);
  if (_CLIFindOption(gRootOptions, 5, 1, 0))
  {
    _CLIHelp_PrintOptions(gRootOptions, "Global options:", a3 | 3u, v8, v9, v10, v11, v12);
  }

  v13 = *(v4 + 80);
  if (v13)
  {
    v14 = *(v13 + 72);
    if (v14)
    {
      _CLIHelp_PrintOptions(v14, "Parent options:", a3 | 1u, v8, v9, v10, v11, v12);
    }
  }

  result = *(v4 + 72);
  if (result)
  {
    _CLIHelp_PrintOptions(result, "Options:", a3 | 1u, v8, v9, v10, v11, v12);
    v16 = 0;
    v17 = *(v4 + 72);
    for (i = (v17 + 8); ; i += 13)
    {
      v19 = *(i - 2);
      if (v19 == 3)
      {
        v20 = strlen(*i);
        if (v16 <= v20)
        {
          v16 = v20;
        }
      }

      else if (!v19)
      {
        while (1)
        {
          if (*v17 == 3)
          {
            if (!v19)
            {
              fwrite("Commands:\n", 0xAuLL, 1uLL, *v7);
            }

            fprintf(*v7, "%*s%-*s    %s\n", 4, "", v16, *(v17 + 8), *(v17 + 88));
            ++v19;
          }

          else if (!*v17)
          {
            for (j = *(v4 + 72); ; j = (v22 + 13))
            {
              result = _CLIFindOption(j, 1, 0, 0);
              if (!result)
              {
                break;
              }

              v22 = result;
              fprintf(*v7, "%s\n", result[11]);
              FPrintF(*v7, "%1{text}", v23, v24, v25, v26, v27, v28, v22[12]);
              fputc(10, *v7);
            }

            if (v19)
            {
              result = fprintf(*v7, "\nSee '%s help %s <command>' for more info about a command.\n\n", gProgramName, *(v4 + 8));
            }

            goto LABEL_33;
          }

          v17 += 104;
        }
      }
    }
  }

LABEL_33:
  if (*(v4 + 96))
  {
    return fprintf(*v7, "%s\n");
  }

  return result;
}