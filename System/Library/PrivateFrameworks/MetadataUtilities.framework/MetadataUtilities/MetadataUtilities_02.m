void *MDGetBestAvailableLanguage(uint64_t a1, __int16 a2, uint64_t *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (sBestLanguageOnceDictionaryToken != -1)
  {
    MDCopyBestAvailableLanguage_cold_1();
  }

  *&key = 0;
  *(&key + 1) = a3;
  WORD1(key) = a2;
  v26 = a1;
  v6 = *a3;
  if (*a3)
  {
    LOWORD(v6) = 0;
    v7 = a3 + 1;
    do
    {
      LOWORD(v6) = v6 + 1;
    }

    while (*v7++);
  }

  LOWORD(key) = v6;
  pthread_rwlock_rdlock(&sBestLanguageDictionaryLock);
  Value = CFDictionaryGetValue(sBestLanguageDictionary, &key);
  pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
  if (!Value)
  {
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], WORD1(key), MEMORY[0x1E695E9C0]);
    if (WORD1(key))
    {
      v12 = 0;
      do
      {
        v13 = CFStringCreateWithCString(v10, *(v26 + 8 * v12), 0x8000100u);
        if (v13)
        {
          v14 = v13;
          CFArrayAppendValue(Mutable, v13);
          CFRelease(v14);
        }

        ++v12;
      }

      while (v12 < WORD1(key));
    }

    v15 = CFArrayCreateMutable(v10, key, MEMORY[0x1E695E9C0]);
    if (key)
    {
      v16 = 0;
      do
      {
        v17 = CFStringCreateWithCString(v10, *(*(&key + 1) + 8 * v16), 0x8000100u);
        if (v17)
        {
          v18 = v17;
          CFArrayAppendValue(v15, v17);
          CFRelease(v18);
        }

        ++v16;
      }

      while (v16 < key);
    }

    v19 = CFBundleCopyLocalizationsForPreferences(Mutable, v15);
    if (v19)
    {
      v20 = v19;
      v23 = key;
      v24 = v26;
      Value = _get_and_cache_best_localization_match(v19, &v23, 0);
      CFRelease(v20);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v15);
    CFRelease(Mutable);
  }

  v21 = *MEMORY[0x1E69E9840];
  return Value;
}

CFMutableDictionaryRef __initBestLanguageDict_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *byte_1F29A5F10;
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &v2, 0);
  sBestLanguageDictionary = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL BestLanguageDictionaryEqualCallBack(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2 != *a2 || (v5 = a1[1], v5 != a2[1]))
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (*a1)
  {
    v6 = *(a1 + 1);
    v7 = *(a2 + 1);
    while (!strcmp(*v6, *v7))
    {
      ++v7;
      ++v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

LABEL_7:
  if (!v5)
  {
    result = 1;
    goto LABEL_10;
  }

  v8 = *(a1 + 2);
  v9 = *(a2 + 2);
  if (strcmp(*v8, *v9))
  {
    goto LABEL_9;
  }

  v12 = 1;
  do
  {
    v13 = v12;
    if (v5 == v12)
    {
      break;
    }

    v14 = strcmp(v8[v12], v9[v12]);
    v12 = v13 + 1;
  }

  while (!v14);
  result = v13 >= v5;
LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BestLanguageDictionaryHashCallBack(int *a1)
{
  result = *a1;
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

const __CFString *_MDStringCopyAbbreviations()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v1 = v0;
  v66[256] = *MEMORY[0x1E69E9840];
  if (!v0)
  {
    goto LABEL_89;
  }

  Length = CFStringGetLength(v0);
  if (Length < 3)
  {
    v1 = 0;
    goto LABEL_89;
  }

  if (Length >= 0x400)
  {
    v3 = 1024;
  }

  else
  {
    v3 = Length;
  }

  MEMORY[0x1EEE9AC00]();
  v5 = (&v52 - v4);
  bzero(&v52 - v4, v6);
  CharactersPtr = CFStringGetCharactersPtr(v1);
  if (!CharactersPtr)
  {
    v67.location = 0;
    v67.length = v3;
    CFStringGetCharacters(v1, v67, v5);
    CharactersPtr = v5;
  }

  HIDWORD(v57) = 0;
  unorm2_getNFCInstance();
  if (v57 <= 0)
  {
    HIDWORD(v57) = 0;
    v8 = unorm2_quickCheck();
    bzero(v66, 0x800uLL);
    if (v8 != 1)
    {
      HIDWORD(v57) = 0;
      v9 = unorm2_normalize();
      if (v9 < 1025 && HIDWORD(v57) == 0)
      {
        CharactersPtr = v66;
        v3 = v9;
      }

      else
      {
        v3 = v3;
      }
    }
  }

  else
  {
    bzero(v66, 0x800uLL);
  }

  v57 = 0;
  bzero(v64, 0x401uLL);
  u_strToUTF8(v64, 1024, &v57, CharactersPtr, v3, &v57 + 1);
  if (HIDWORD(v57))
  {
    v1 = 0;
    goto LABEL_89;
  }

  bzero(v63, 0x400uLL);
  bzero(v62, 0x2000uLL);
  bzero(v61, 0x2000uLL);
  v10 = v64[0];
  v11 = MEMORY[0x1E695E480];
  if (!v64[0])
  {
    v32 = 0;
    v63[0] = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_69;
  }

  v53 = v3;
  v54 = &v52;
  v56 = 0;
  v12 = 0;
  v13 = 0;
  v52 = &v59 + 1;
  v55 = v65;
  v14 = 28672;
  v15 = v63;
  do
  {
    v16 = v10 >> 4;
    v17 = utf8_byte_length_noerror_utf8_len_table[v16];
    v18 = v13 + v17;
    if (v13 + v17 > 0x3FF)
    {
      break;
    }

    if ((v10 & 0x80) != 0)
    {
      v19 = ~v16;
      v20 = utf8_byte_length_utf8_len_table[v16];
      v21 = utf8_to_code_point_utf8_first_char_mask[v20] & v10;
      if ((v19 & 0xC) != 0)
      {
        v10 &= utf8_to_code_point_utf8_first_char_mask[v20];
        if (!v21)
        {
          break;
        }
      }

      else
      {
        if (v20 <= 2)
        {
          v20 = 2;
        }

        else
        {
          v20 = v20;
        }

        v22 = v20 - 1;
        v23 = v55 + v13;
        v24 = v55 + v13;
        v25 = v22;
        v26 = v21;
        do
        {
          v27 = *v24++;
          v26 = v27 & 0x3F | (v26 << 6);
          --v25;
        }

        while (v25);
        if (!v26)
        {
          break;
        }

        do
        {
          v28 = *v23++;
          v10 = v28 & 0x3F | (v21 << 6);
          v21 = v10;
          --v22;
        }

        while (v22);
      }
    }

    v29 = &v64[v13];
    v30 = 1 << u_charType(v10);
    if ((v30 & 0x3E) != 0)
    {
      if ((v14 & 0x7000) != 0)
      {
        v61[v12++] = v29;
      }

      if ((v14 & 0x3E) != 0 && (v30 & 0xA) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v30 & 0xE00) == 0)
      {
        goto LABEL_42;
      }

      if ((v14 & 0x7000) != 0)
      {
        v61[v12++] = v29;
      }

      if ((v14 & 0xE00) != 0)
      {
        goto LABEL_42;
      }
    }

    v31 = v56;
    v62[v56] = v29;
    v56 = v31 + 1;
LABEL_42:
    if ((v30 & 0x7000) == 0)
    {
      memcpy(v15, v29, v17);
      v15 += v17;
    }

    if ((v30 & 0x1C0) == 0)
    {
      v14 = v30;
    }

    v10 = v64[v18];
    v13 = v18;
  }

  while (v64[v18]);
  v32 = 0;
  *v15 = 0;
  v59 = 0u;
  v60 = 0u;
  v33 = v56;
  if (v56 < 2)
  {
    LODWORD(v3) = v53;
    v11 = MEMORY[0x1E695E480];
  }

  else
  {
    LODWORD(v3) = v53;
    v11 = MEMORY[0x1E695E480];
    if (v56 != v53)
    {
      v32 = 0;
      v34 = &v59;
      if (v12 >= 2 && v63[0])
      {
        v35 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v63, 0x8000100u);
        if (v35)
        {
          *&v59 = v35;
          v32 = 1;
          v34 = v52;
        }

        else
        {
          v32 = 0;
          v34 = &v59;
        }
      }

      bzero(v58, 0x400uLL);
      build_initials(v62, v33, v58);
      if (LOBYTE(v58[0].location))
      {
        v36 = CFStringCreateWithCString(*v11, v58, 0x8000100u);
        if (v36)
        {
          ++v32;
          *v34 = v36;
        }
      }

      if (v12 >= 2 && v12 != v33)
      {
        build_initials(v61, v12, v58);
        if (LOBYTE(v58[0].location))
        {
          v37 = CFStringCreateWithCString(*v11, v58, 0x8000100u);
          if (v37)
          {
            v38 = v37;
            if (v32)
            {
              v39 = 0;
              while (CFStringCompare(v38, *(&v59 + v39), 0))
              {
                if (v32 == ++v39)
                {
                  goto LABEL_67;
                }
              }

              CFRelease(v38);
            }

            else
            {
LABEL_67:
              *(&v59 + v32++) = v38;
            }
          }
        }
      }
    }
  }

LABEL_69:
  if (_MDStringCopyAbbreviations_onceToken != -1)
  {
    _MDStringCopyAbbreviations_cold_1();
  }

  v40 = *v11;
  v41 = v3;
  Mutable = CFStringCreateMutable(*v11, v3);
  v58[0].location = 0;
  v58[0].length = 0;
  v68.location = 0;
  v68.length = v3;
  if (CFStringFindCharacterFromSet(v1, _MDStringCopyAbbreviations_characterSet, v68, 0, v58))
  {
    v43 = 0;
    do
    {
      v69.length = v58[0].location - v43;
      v69.location = v43;
      v44 = CFStringCreateWithSubstring(v40, v1, v69);
      CFStringAppend(Mutable, v44);
      CFRelease(v44);
      v43 = v58[0].length + v58[0].location;
      v45 = v41 - (v58[0].length + v58[0].location);
      v70.location = v58[0].length + v58[0].location;
      v70.length = v45;
    }

    while (CFStringFindCharacterFromSet(v1, _MDStringCopyAbbreviations_characterSet, v70, 0, v58));
    if (v43 >= 1)
    {
      v71.location = v43;
      v71.length = v45;
      v46 = CFStringCreateWithSubstring(v40, v1, v71);
      CFStringAppend(Mutable, v46);
      CFRelease(v46);
      if (CFStringGetLength(Mutable))
      {
        if (v32 < 1)
        {
LABEL_80:
          *(&v59 + v32++) = Mutable;
          Mutable = 0;
        }

        else
        {
          v47 = 0;
          while (CFStringCompare(Mutable, *(&v59 + v47), 0))
          {
            if (v32 == ++v47)
            {
              goto LABEL_80;
            }
          }
        }
      }
    }
  }

  if (v32)
  {
    v1 = CFArrayCreate(v40, &v59, v32, MEMORY[0x1E695E9C0]);
    if (v32 >= 1)
    {
      v48 = &v59;
      do
      {
        v49 = *v48++;
        CFRelease(v49);
        --v32;
      }

      while (v32);
    }
  }

  else
  {
    v1 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_89:
  v50 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t build_initials(uint64_t result, unsigned int a2, char *__dst)
{
  v27 = result;
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = 0;
    v26 = a2;
    do
    {
      v5 = *(v27 + 8 * v4);
      v6 = utf8_byte_length_noerror_utf8_len_table[*v5 >> 4];
      memcpy(__dst, v5, v6);
      v7 = &v5[v6];
      v8 = v5[v6];
      if (v8 < 0)
      {
        v9 = utf8_byte_length_utf8_len_table[v5[v6] >> 4];
        v10 = (v8 & utf8_to_code_point_utf8_first_char_mask[v9]);
        if ((~(v5[v6] >> 4) & 0xC) != 0)
        {
          v8 = (v8 & utf8_to_code_point_utf8_first_char_mask[v9]);
        }

        else
        {
          if (v9 <= 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = utf8_byte_length_utf8_len_table[v5[v6] >> 4];
          }

          v12 = v11 - 1;
          v13 = &v5[v6 + 1];
          do
          {
            v14 = *v13++;
            v8 = v14 & 0x3F | (v10 << 6);
            v10 = v8;
            --v12;
          }

          while (v12);
        }
      }

      __dst += v6;
      result = u_charType(v8);
      if (v8)
      {
        v15 = ((1 << result) & 0x1C0) == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        do
        {
          v16 = utf8_byte_length_noerror_utf8_len_table[*v7 >> 4];
          memcpy(__dst, v7, v16);
          v17 = v7[v16];
          if (v17 < 0)
          {
            v18 = utf8_byte_length_utf8_len_table[v7[v16] >> 4];
            v19 = (v17 & utf8_to_code_point_utf8_first_char_mask[v18]);
            if ((~(v7[v16] >> 4) & 0xC) != 0)
            {
              v17 = (v17 & utf8_to_code_point_utf8_first_char_mask[v18]);
            }

            else
            {
              if (v18 <= 2)
              {
                v20 = 2;
              }

              else
              {
                v20 = utf8_byte_length_utf8_len_table[v7[v16] >> 4];
              }

              v21 = v20 - 1;
              v22 = &v7[v16 + 1];
              do
              {
                v23 = *v22++;
                v17 = v23 & 0x3F | (v19 << 6);
                v19 = v17;
                --v21;
              }

              while (v21);
            }
          }

          __dst += v16;
          result = u_charType(v17);
          if (v17)
          {
            v24 = ((1 << result) & 0x1C0) == 0;
          }

          else
          {
            v24 = 1;
          }

          v7 += v16;
        }

        while (!v24);
      }

      ++v4;
    }

    while (v4 != v26);
  }

  *__dst = 0;
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void _MDPathFilterDumpRawFilterInternal(unint64_t *a1, int a2, uint64_t a3, char *a4, char *a5)
{
  LODWORD(v8) = a2;
  v32 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  bzero(__src, 0x400uLL);
  if (a4)
  {
    if (v8 < 1)
    {
      goto LABEL_9;
    }

    v11 = 0;
    v8 = v8;
    v12 = (a3 + 8);
    do
    {
      v13 = (v10 >> *(v12 - 2)) & ~(-1 << (*(v12 - 2) >> 6));
      if (v13)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        *__str = 0u;
        v16 = 0u;
        snprintf(__str, 0x100uLL, "%s:%lld ", *v12, v13);
        __strlcat_chk();
        ++v11;
      }

      v12 += 2;
      --v8;
    }

    while (v8);
    if (v11)
    {
      strcpy(a4, __src);
    }

    else
    {
LABEL_9:
      strcpy(a4, "no rule bits");
    }
  }

  if (a5)
  {
    sprintf(a5, "rule:%d  descend:%d  softrule:%d defAux:%d auxIdx:%d auxVal:%lld subAuxCnt:%d parentBndlIdx:%d bundleIdx:%d", v10 >> 63, (v10 & 0x4000000000000000) != 0, (v10 & 0x2000000000000000) != 0, *(a1 + 9), *(a1 + 8), a1[1], *(a1 + 11), *(a1 + 13), *(a1 + 12));
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t arrayObjectToElementRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v11 = 0uLL;
  v12 = 0;
  v13 = *a1;
  v14 = *(a1 + 16);
  _MDPlistArrayGetPlistObjectAtIndex(&v13, 0, a3, a4, a5, a6, a7, a8, &v11);
  v13 = v11;
  v14 = v12;
  v15[0] = 0;
  BytePtr = _MDPlistDataGetBytePtr(&v13, v15);
  if (v15[0] != 60)
  {
    puts("Dying!");
  }

  v9 = *MEMORY[0x1E69E9840];
  return BytePtr;
}

uint64_t fillFilterStackRecord(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v37 = *MEMORY[0x1E69E9840];
  v35 = *a3;
  v36 = *(a3 + 16);
  v13 = arrayObjectToElementRecord(&v35, a2, a3, a4, a5, a6, a7, a8);
  v20 = v13;
  v21 = *(v13 + 28);
  v22 = (v21 & 0x5FFFFFFFFFFFFFFFLL ^ 0x7FFFFFFFFFFFFFFFLL) & *(a2 + 48) | *(v13 + 36);
  if (*a1 && *(v13 + 44) != 0)
  {
    v22 = *(v13 + 52) | (*(v13 + 44) & 0x5FFFFFFFFFFFFFFFLL ^ 0x7FFFFFFFFFFFFFFFLL) & v22;
    v21 = *(v13 + 44);
  }

  v33 = *a3;
  v34 = *(a3 + 16);
  _MDPlistArrayGetPlistObjectAtIndex(&v33, 0, v14, v15, v16, v17, v18, v19, &v35);
  v23 = _MDPlistPlistObjectToEmbeddedReference(&v35);
  v35 = *a3;
  v36 = *(a3 + 16);
  v24 = _MDPlistPlistObjectToEmbeddedReference(&v35);
  v25 = v20[11];
  if (v20[11])
  {
    v26 = *(a2 + 68) != v25;
  }

  else
  {
    v26 = 0;
    v25 = *(a2 + 68);
  }

  v27 = a4 + 80 * v8;
  v28 = v20[12];
  v29 = v20[13];
  if (*a1 == 47)
  {
    v30 = a1 + 1;
  }

  else
  {
    v30 = a1;
  }

  *v27 = v8;
  *(v27 + 4) = v23;
  *(v27 + 8) = v20;
  *(v27 + 16) = v24;
  *(v27 + 24) = v30;
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  *(v27 + 48) = v22;
  *(v27 + 56) = v21;
  *(v27 + 64) = v26;
  *(v27 + 68) = v25;
  *(v27 + 72) = v28;
  *(v27 + 76) = v29;
  v31 = *MEMORY[0x1E69E9840];
  return a4 + 80 * v8;
}

uint64_t _MDPlistPlistObjectToEmbeddedReference(uint64_t a1)
{
  result = *(a1 + 16);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _MDPlistEmbeddedReferenceToPlistObject@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __int128 *a9@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = *(result + 48);
  v11 = *(result + 32);
  *a9 = v10;
  *(a9 + 1) = v11;
  *(a9 + 2) = 0;
  *(a9 + 4) = a2;
  if (!a2)
  {
    a3 = 0;
  }

  *(a9 + 20) = a3;
  if (!*(result + 136))
  {
    if (v11 <= 0x1C)
    {
      _MDPlistEmbeddedReferenceToPlistObject_cold_1(result, a2, v11, a4, a5, a6, a7, a8);
    }

    v13 = *a9;
    v14 = *(a9 + 2);
    result = validatePlistObject((v10 + 19), &v13, v11, 0, a5, a6, a7, a8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _MDPlistReferenceToPlistObject@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, __int128 *a8@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = *(result + 48);
  v9 = *(result + 32);
  *a8 = v8;
  *(a8 + 1) = v9;
  *(a8 + 2) = 0;
  *(a8 + 20) = BYTE4(a2);
  *(a8 + 4) = a2;
  if (!*(result + 136))
  {
    if (v9 <= 0x1C)
    {
      _MDPlistReferenceToPlistObject_cold_1(result, a2, v9, a3, a4, a5, a6, a7);
    }

    v11 = *a8;
    v12 = *(a8 + 2);
    result = validatePlistObject((v8 + 19), &v11, v9, 0, a4, a5, a6, a7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistGetPlistObjectSize(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 & 0xF0) == 0xE0)
  {
    result = 4;
  }

  else if ((*(a1 + 20) & 0x80) != 0)
  {
    result = *(*a1 + *(a1 + 16)) + 4;
  }

  else
  {
    result = (v1 & 0xF) + 5;
  }

  v3 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _MDPlistGetRootPlistObjectFromBytesWithError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = 0;
  v10[2] = a1;
  v10[3] = 0;
  result = MDPlistGetRootPlistObjectFromBuffer(v10, a3, a3, a4, a5, a6, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistDictionaryGetCount(uint64_t a1)
{
  result = *(*a1 + *(a1 + 16) + 4);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistDataGetBytePtr(uint64_t *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 4);
  if (a2)
  {
    *a2 = *(v2 + v3);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2 + v3 + 4;
}

uint64_t _MDPlistUUIDGetValue(uint64_t a1)
{
  v1 = (*a1 + *(a1 + 16));
  result = *v1;
  v3 = v1[1];
  v4 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

double _MDPlistDateGetValue(uint64_t a1)
{
  result = *(*a1 + *(a1 + 16));
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistNumberGetDoubleValue(uint64_t result)
{
  v1 = *(result + 20);
  if ((v1 & 0xFE) == 0xE2)
  {
    v2 = (result + 16);
  }

  else
  {
    v2 = (*result + *(result + 16));
  }

  if (*(result + 20) > 0xE1u)
  {
    if (v1 == 227)
    {
      v6 = *v2;
    }

    else if (v1 == 226)
    {
      v4 = *v2;
    }
  }

  else if (v1 == 35)
  {
    v5 = *v2;
  }

  else if (v1 == 51)
  {
    v3 = *v2;
  }

  v7 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef _MDPlistContainerCopyCSObject(CFAllocatorRef alloc, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 20);
  if (v11 <= 0xF3)
  {
    if (v11 == 240)
    {
      if (*(*a2 + *(a2 + 16) + 4) != 2)
      {
        goto LABEL_50;
      }

      v65 = 0uLL;
      v66 = 0;
      v67 = *a2;
      v68 = *(a2 + 16);
      _MDPlistArrayGetPlistObjectAtIndex(&v67, 0, a3, a4, a5, a6, a7, a8, &v65);
      if (BYTE4(v66) != 244)
      {
        goto LABEL_50;
      }

      v39 = v65 + v66;
      if ((*v39 - 11) > 0xFFFFFFF5)
      {
        goto LABEL_50;
      }

      if (strncmp((v39 + 4), "__class:", 8uLL))
      {
        goto LABEL_50;
      }

      if (strcmp((v39 + 12), "CSLocalizedString"))
      {
        goto LABEL_50;
      }

      if (*(*a2 + *(a2 + 16) + 4) != 2)
      {
        goto LABEL_50;
      }

      v63 = 0uLL;
      v64 = 0;
      v67 = *a2;
      v68 = *(a2 + 16);
      _MDPlistArrayGetPlistObjectAtIndex(&v67, 1, v40, v41, v42, v43, v44, v45, &v63);
      if (BYTE4(v64) != 241 || (v67 = v63, v68 = v64, (v21 = __MDPlistContainerCopyObjectErrorCode(alloc, &v67, 0, 0, v46, v47, v48, v49)) == 0))
      {
LABEL_50:
        Mutable = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
        v21 = Mutable;
        if (Mutable)
        {
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 0x40000000;
          v62[2] = ___MDPlistContainerCopyCSObject_block_invoke;
          v62[3] = &__block_descriptor_tmp_6;
          v62[4] = alloc;
          v62[5] = a3;
          v62[6] = Mutable;
          v67 = *a2;
          v68 = *(a2 + 16);
          _MDPlistArrayIterateWithError(&v67, 0, v62, v51, v52, v53, v54, v55);
        }
      }

      goto LABEL_38;
    }

    if (v11 == 241)
    {
      v21 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 0x40000000;
      v61[2] = ___MDPlistContainerCopyCSObject_block_invoke_2;
      v61[3] = &__block_descriptor_tmp_15;
      v61[4] = alloc;
      v61[5] = a3;
      v61[6] = v21;
      v67 = *a2;
      v68 = *(a2 + 16);
      _MDPlistDictionaryIterateWithError(&v67, 0, v61, v22, v23, v24, v25, v26);
LABEL_38:
      v56 = *MEMORY[0x1E69E9840];
      return v21;
    }

LABEL_37:
    v67 = *a2;
    v68 = *(a2 + 16);
    v21 = __MDPlistContainerCopyObjectErrorCode(alloc, &v67, 0, 0, a5, a6, a7, a8);
    goto LABEL_38;
  }

  switch(v11)
  {
    case 0xF6u:
      v27 = (*a2 + *(a2 + 16));
      v30 = *v27;
      v28 = (v27 + 1);
      v29 = v30;
      v31 = *MEMORY[0x1E69E9840];
      v32 = *MEMORY[0x1E695E498];

      return CFDataCreateWithBytesNoCopy(alloc, v28, v29, v32);
    case 0xF5u:
      v33 = (*a2 + *(a2 + 16));
      v36 = *v33;
      v34 = (v33 + 1);
      v35 = v36;
      if (v36 >= a3)
      {
        v37 = a3;
      }

      else
      {
        v37 = v35;
      }

      if (a3)
      {
        v35 = v37;
      }

      if (v35 < 2)
      {
        v38 = 0;
        goto LABEL_45;
      }

      v38 = v35 >> 1;
      v57 = *v34;
      if (v57 == 65279)
      {
        v34 = (*a2 + *(a2 + 16) + 6);
        --v38;
        goto LABEL_45;
      }

      if (v57 != 65534)
      {
LABEL_45:
        v59 = *MEMORY[0x1E69E9840];
        v60 = *MEMORY[0x1E695E498];

        return CFStringCreateWithCharactersNoCopy(alloc, v34, v38, v60);
      }

      v58 = *MEMORY[0x1E69E9840];

      return CFStringCreateWithBytes(alloc, v34, v35, 0x100u, 1u);
    case 0xF4u:
      v12 = (*a2 + *(a2 + 16));
      v14 = *v12;
      v13 = (v12 + 1);
      v15 = (v14 - 1);
      if (v15 >= a3)
      {
        v16 = a3;
      }

      else
      {
        v16 = v15;
      }

      if (a3)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      v18 = *MEMORY[0x1E69E9840];
      v19 = *MEMORY[0x1E695E498];

      return CFStringCreateWithBytesNoCopy(alloc, v13, v17, 0x8000100u, 0, v19);
    default:
      goto LABEL_37;
  }
}

uint64_t _MDPlistContainerCreateMutableWithStaticBuffer(uint64_t a1, unsigned __int16 *a2, size_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return _MDPlistContainerCreateCommon(a1, a3, a2, 1, 0, 1, a4, 0);
}

uint64_t _MDPlistContainerCreateWithObject(uint64_t a1, const void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  Common = _MDPlistContainerCreateCommon(*MEMORY[0x1E695E480], 0, 0, 1, 0, 1, a3, 0);
  _MDPlistContainerBeginContainer(Common, 0, v5, v6, v7, v8, v9, v10);
  _MDPlistContainerAddObject(Common, a2, 0);
  _MDPlistContainerEndContainer(Common, v11, v12, v13, v14, v15, v16, v17);
  *(Common + 17) = 0;
  v18 = *MEMORY[0x1E69E9840];
  return Common;
}

uint64_t _MDPlistContainerCreateWithBytesAndDeallocator(uint64_t a1, unsigned __int16 *a2, size_t a3, const void *a4)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];

    return _MDPlistContainerCreateCommon(a1, a3, a2, 0, 0, 1, 1, a4);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t _MDPlistContainerCreateWithCopiedBytes(uint64_t a1, unsigned __int16 *a2, size_t a3, uint64_t a4)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];

    return _MDPlistContainerCreateCommon(a1, a3, a2, 0, 1, 1, a4, 0);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t _MDPlistContainerCreateCopy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2 || *(a2 + 16) || ((v4 = *(a2 + 48), v5 = *(a2 + 32), v4) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    return _MDPlistContainerCreateCommon(a1, v5, v4, 0, 1, 1, a3, 0);
  }
}

uint64_t _MDPlistContainerGetBytes(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      result = 0;
    }

    else
    {
      result = *(result + 48);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerGetLength(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      result = 0;
    }

    else
    {
      result = *(result + 32);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerAllocFailure(uint64_t a1)
{
  result = *(a1 + 16);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerWillUseMalloc(uint64_t a1)
{
  result = *(a1 + 58);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerGetTypeID()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_MDPlistContainerGetTypeID_once != -1)
  {
    _MDPlistContainerCreateCommon_cold_4();
  }

  result = __kMDPlistContainerTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerGetPlistObjectAtKeyPath(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if (v8 == 47 || v8 == 0)
  {
    v11 = a2;
    v22 = 0uLL;
    v23 = 0;
    MDPlistGetRootPlistObjectFromBuffer(a1 + 32, 0, a3, a5, a6, a7, a8, &v22);
    while (1)
    {
      v12 = v11 + 1;
      if (BYTE4(v23) != 241)
      {
        break;
      }

      v13 = strcspn(v12, "/");
      v20 = v22;
      v21 = v23;
      if (!_MDPlistDictionaryGetPlistObjectForKey(&v20, v12, v13, &v22, v14, v15, v16, v17))
      {
        break;
      }

      v11 = &v12[v13];
      if (!*v11)
      {
        goto LABEL_13;
      }
    }

    if (*v12)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (a3)
    {
      *a3 = v22;
      *(a3 + 16) = v23;
    }

    result = 1;
  }

  else
  {
LABEL_12:
    result = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistContainerValidateRootObject(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  MDPlistGetRootPlistObjectFromBuffer(a2 + 32, 0, a3, a5, a6, a7, a8, &v18);
  v15 = v18;
  v16 = v19;
  v17 = 0;
  __MDPlistContainerCopyObjectErrorCode(a1, &v15, 0, &v17, v9, v10, v11, v12);
  result = v17 == 0;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerHasObjectAtKeyPath(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[3] = *MEMORY[0x1E69E9840];
  result = _MDPlistContainerGetPlistObjectAtKeyPath(a1, a2, v10, a4, a5, a6, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerCopyObjectAtKeyPath(const __CFAllocator *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0uLL;
  v18 = 0;
  if (_MDPlistContainerGetPlistObjectAtKeyPath(a2, a3, &v17, a4, a5, a6, a7, a8))
  {
    v15 = v17;
    v16 = v18;
    result = __MDPlistContainerCopyObjectErrorCode(a1, &v15, 0, 0, v9, v10, v11, v12);
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistContainerCopyObjectAtKeyArray(const __CFAllocator *a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0uLL;
  v18 = 0;
  if (_MDPlistContainerGetPlistObjectAtKeyArray(a2, a3, &v17, a4, a5, a6, a7, a8))
  {
    v15 = v17;
    v16 = v18;
    result = __MDPlistContainerCopyObjectErrorCode(a1, &v15, 0, 0, v9, v10, v11, v12);
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef _MDPlistContainerCopyObjectsAtPlistObject@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a5, a1, a2, a3, a4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  v39 = *MEMORY[0x1E69E9840];
  v13 = 8 * v6;
  MEMORY[0x1EEE9AC00](v39, v5, v10, v8, v6);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v14, v13);
  MEMORY[0x1EEE9AC00](v19, v15, v16, v17, v18);
  bzero(v14, v13);
  if (v7)
  {
    v20 = 0;
    do
    {
      v36 = 0uLL;
      v37 = 0;
      bzero(v38, 0x1000uLL);
      CStringPtr = CFStringGetCStringPtr(*v9, 0x8000100u);
      if (CStringPtr || (CStringPtr = v38, CFStringGetCString(*v9, v38, 4096, 0x8000100u)))
      {
        v34 = *v11;
        v35 = *(v11 + 2);
        if (_MDPlistDictionaryGetPlistObjectForKey(&v34, CStringPtr, -1, &v36, v21, v22, v23, v24))
        {
          v14[v20] = *v9;
          v34 = v36;
          v35 = v37;
          v14[v20++] = __MDPlistContainerCopyObjectErrorCode(v12, &v34, 0, 0, v26, v27, v28, v29);
        }
      }

      ++v9;
      --v7;
    }

    while (v7);
    v30 = CFDictionaryCreate(v12, v14, v14, v20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v20 >= 1)
    {
      do
      {
        v31 = *v14++;
        CFRelease(v31);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v30 = CFDictionaryCreate(v12, v14, v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

CFDictionaryRef _MDPlistContainerCopyObjectsAtKeyPath(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0uLL;
  v16 = 0;
  if (_MDPlistContainerGetPlistObjectAtKeyPath(a2, a3, &v15, a4, a5, a6, a7, a8))
  {
    v13 = v15;
    v14 = v16;
    result = _MDPlistContainerCopyObjectsAtPlistObject(a1, &v13, a4, a5, v16);
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void _MDPlistContainerAddPlistObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 20);
  if (*(a2 + 20) > 0xEFu)
  {
    if ((v10 - 244) < 4)
    {
      v11 = (*a2 + *(a2 + 16));
      v14 = *v11;
      v12 = v11 + 1;
      v13 = v14;
      v15 = *MEMORY[0x1E69E9840];
      v16 = 0;
      goto LABEL_27;
    }

    if (v10 == 241)
    {
      _MDPlistContainerBeginDictionary(a1, a2, v10, a4, a5, a6, a7, a8);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 0x40000000;
      v48[2] = ___MDPlistContainerAddPlistObject_block_invoke_2;
      v48[3] = &__block_descriptor_tmp_33;
      v48[4] = a1;
      v50 = *a2;
      v51 = *(a2 + 16);
      _MDPlistDictionaryIterateWithError(&v50, 0, v48, v35, v36, v37, v38, v39);
      _MDPlistContainerEndDictionary(a1, 0, v40, v41, v42, v43, v44, v45);
    }

    else
    {
      if (v10 != 240)
      {
        goto LABEL_32;
      }

      _MDPlistContainerBeginArray(a1, a2, v10, a4, a5, a6, a7, a8);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 0x40000000;
      v49[2] = ___MDPlistContainerAddPlistObject_block_invoke;
      v49[3] = &__block_descriptor_tmp_32;
      v49[4] = a1;
      v50 = *a2;
      v51 = *(a2 + 16);
      _MDPlistArrayIterateWithError(&v50, 0, v49, v22, v23, v24, v25, v26);
      _MDPlistContainerEndArray(a1, 0, v27, v28, v29, v30, v31, v32);
    }

LABEL_23:
    v46 = *MEMORY[0x1E69E9840];
    return;
  }

  if (*(a2 + 20) > 0x32u)
  {
    if ((v10 - 224) >= 4)
    {
      if (v10 != 51)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    v17 = *(a1 + 136);
    if (v17 <= 1)
    {
      _MDPlistContainerAddPlistObject_cold_1(a1, a2, v10, a4, a5, a6, a7, a8);
    }

    v18 = *(a1 + 144) + 24 * v17;
    if (*(v18 - 24) == 241 && (*(v18 - 20) & 1) == 0)
    {
      _MDPlistContainerAddPlistObject_cold_2(a1, a2, v10, a4, a5, a6, a7, a8);
    }

    ++*(v18 - 20);
    v20 = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
    if (v20)
    {
      v21 = *(a2 + 16);
      v20[4] = *(a2 + 20);
      *v20 = v21;
    }

    goto LABEL_23;
  }

  if (v10 != 11)
  {
    if (v10 == 19)
    {
      v34 = *MEMORY[0x1E69E9840];
      v12 = (*a2 + *(a2 + 16));
      v16 = 1;
      v10 = 19;
LABEL_26:
      v13 = 8;
      goto LABEL_27;
    }

    if (v10 != 35)
    {
LABEL_32:
      _MDPlistContainerAddPlistObject_cold_3(a1, a2, v10, a4, a5, a6, a7, a8);
    }

LABEL_25:
    v47 = *MEMORY[0x1E69E9840];
    v12 = (*a2 + *(a2 + 16));
    v16 = 1;
    goto LABEL_26;
  }

  v33 = *MEMORY[0x1E69E9840];
  v12 = (*a2 + *(a2 + 16));
  v16 = 1;
  v10 = 11;
  v13 = 16;
LABEL_27:

  _addGenericData(a1, v16, v10, v12, v13, 0, a7, a8);
}

int *_MDPlistContainerAddBooleanValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];

  return _addInlineData(a1, 225, a2, a3, a5, a6, a7, a8);
}

int *_MDPlistContainerAddFloatValue(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E69E9840];

  return _addInlineData(a1, 227, LODWORD(a3), a2, a6, a7, a8, a9);
}

_DWORD *_MDPlistContainerAddDateValue(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11[1] = *MEMORY[0x1E69E9840];
  *v11 = a3;
  result = _addGenericData(a1, 1, 19, v11, 8uLL, a2, a8, a9);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *_MDPlistContainerAddUUIDValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  result = _addGenericData(a1, 1, 11, v10, 0x10uLL, a4, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *_MDPlistContainerAddUUID(uint64_t a1, CFUUIDRef uuid, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = CFUUIDGetUUIDBytes(uuid);
  result = _addGenericData(a1, 1, 11, &v9, 0x10uLL, a3, v5, v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef MDPropertyCopyXAttrName(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_5:
    v4 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (CFStringCompare(a1, @"kMDItemLastUsedDate", 0))
  {
    if (CFStringCompare(a1, @"com.apple.metadata:", 0))
    {
      result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%@", @"com.apple.metadata:", a1);
      v3 = *MEMORY[0x1E69E9840];
      return result;
    }

    goto LABEL_5;
  }

  v5 = *MEMORY[0x1E69E9840];

  return CFRetain(@"com.apple.lastuseddate#PS");
}

CFStringRef MDPropertyCopyName(const __CFString *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_9;
  }

  if (CFStringCompare(a1, @"com.apple.lastuseddate#PS", 0))
  {
    if (CFStringCompare(a1, @"com.apple.favorite-rank.number#PS", 0))
    {
      if (CFStringHasPrefix(a1, @"com.apple.metadata:"))
      {
        Length = CFStringGetLength(a1);
        v3 = CFStringGetLength(@"com.apple.metadata:");
        v4.length = Length - v3;
        if (Length > v3)
        {
          v5 = *MEMORY[0x1E69E9840];
          v4.location = v3;
          v6 = *MEMORY[0x1E695E480];

          return CFStringCreateWithSubstring(v6, a1, v4);
        }
      }

LABEL_9:
      v8 = *MEMORY[0x1E69E9840];
      return 0;
    }

    v11 = *MEMORY[0x1E69E9840];
    v10 = @"kMDItemFavoriteRank";
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
    v10 = @"kMDItemLastUsedDate";
  }

  return CFRetain(v10);
}

CFDataRef MDPropertyCopyEncodedData(const __CFString *a1, const void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (CFStringCompare(a1, @"com.apple.lastuseddate#PS", 0) && CFStringCompare(a1, @"kMDItemLastUsedDate", 0))
  {
    if (CFStringCompare(a1, @"com.apple.favorite-rank.number#PS", 0) && CFStringCompare(a1, @"kMDItemFavoriteRank", 0))
    {
      v4 = CFStringCompare(a1, @"com.apple.metadata:_kMDItemUserTags", 0);
      v5 = CFGetTypeID(a2);
      if (v4)
      {
        if (v5 != CFDictionaryGetTypeID())
        {
          v6 = *MEMORY[0x1E69E9840];
          v7 = *MEMORY[0x1E695E480];

          return CFPropertyListCreateData(v7, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        }

        goto LABEL_21;
      }

      if (v5 == CFArrayGetTypeID())
      {
        v14 = *MEMORY[0x1E69E9840];

        return MDPropertyCopyEncodedDataForUserTagStrings(a2);
      }
    }

    else
    {
      v13 = CFGetTypeID(a2);
      if (v13 == CFNumberGetTypeID())
      {
        v16[0] = 0;
        if (CFNumberGetValue(a2, kCFNumberLongLongType, v16))
        {
          result = MDPropertyCopyEncodedDataForFavoriteRank(v16[0], 1);
LABEL_22:
          v15 = *MEMORY[0x1E69E9840];
          return result;
        }
      }
    }

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  v9 = CFGetTypeID(a2);
  if (v9 != CFDateGetTypeID())
  {
    goto LABEL_21;
  }

  MEMORY[0x1B2747B00](a2);
  v12 = *MEMORY[0x1E69E9840];

  return MDPropertyCopyEncodedDataForLastUsedDateWithAsoluteTime(v10, v11);
}

CFDataRef MDPropertyCopyEncodedDataForLastUsedDateWithAsoluteTime(int8x16_t a1, int8x16_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a1.i64 == 0.0)
  {
    result = 0;
  }

  else
  {
    *a1.i64 = *MEMORY[0x1E695E468] + *a1.i64;
    v2 = *a1.i64;
    *a2.i64 = *a1.i64 - trunc(*a1.i64);
    v3.f64[0] = NAN;
    v3.f64[1] = NAN;
    v4 = *vbslq_s8(vnegq_f64(v3), a2, a1).i64;
    v5 = (v4 * 1000000000.0);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    *bytes = v2;
    v9 = v5;
    result = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef MDPropertyCopyEncodedDataForFavoriteRank(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      Data = CFPropertyListCreateData(v4, v5, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      CFRelease(v6);
      goto LABEL_7;
    }

LABEL_6:
    Data = 0;
    goto LABEL_7;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__str = 0u;
  v11 = 0u;
  snprintf(__str, 0x100uLL, "%lld", a1);
  v2 = strlen(__str);
  Data = CFDataCreate(*MEMORY[0x1E695E480], __str, v2 + 1);
LABEL_7:
  v7 = *MEMORY[0x1E69E9840];
  return Data;
}

CFDataRef MDPropertyCopyEncodedDataForUserTagStrings(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 && CFArrayGetCount(a1))
  {
    v2 = *MEMORY[0x1E69E9840];
    v3 = *MEMORY[0x1E695E480];

    return CFPropertyListCreateData(v3, a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

CFDateRef MDPropertyCopyDecodedValue(const __CFString *a1, const __CFData *a2)
{
  at[1] = *MEMORY[0x1E69E9840];
  if (CFStringCompare(a1, @"com.apple.lastuseddate#PS", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemLastUsedDate", 0) == kCFCompareEqualTo)
  {
    at[0] = 0.0;
    if (MDPropertyDecodedLastUsedDateAbsoluteTime(a2, at))
    {
      v7 = CFDateCreate(*MEMORY[0x1E695E480], at[0]);
LABEL_13:
      v5 = v7;
LABEL_15:
      v8 = *MEMORY[0x1E69E9840];
      return v5;
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  if (CFStringCompare(a1, @"com.apple.favorite-rank.number#PS", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemFavoriteRank", 0) == kCFCompareEqualTo)
  {
    at[0] = 0.0;
    if (MDPropertyDecodedFavoritRank(a2, at))
    {
      valuePtr = at[0];
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, &valuePtr);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (CFStringCompare(a1, @"com.apple.metadata:_kMDItemUserTags", 0))
  {
    v4 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 0, 0, 0);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_15;
    }

    v6 = CFGetTypeID(v4);
    if (v6 != CFDictionaryGetTypeID())
    {
      goto LABEL_15;
    }

    CFRelease(v5);
    goto LABEL_14;
  }

  v10 = *MEMORY[0x1E69E9840];

  return MDPropertyCopyDecodedUserTags(a2);
}

uint64_t MDPropertyDecodedLastUsedDateAbsoluteTime(uint64_t a1, double *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0uLL;
  result = MDPropertyDecodedLastUsedDateTimeSpec(a1, &v5);
  if (result)
  {
    if (a2)
    {
      *a2 = *(&v5 + 1) / 1000000000.0 + v5 - *MEMORY[0x1E695E468];
    }

    result = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MDPropertyDecodedFavoritRank(CFDataRef theData, uint64_t *a2)
{
  v2 = theData;
  v15 = *MEMORY[0x1E69E9840];
  if (!theData)
  {
    goto LABEL_18;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    goto LABEL_17;
  }

  v5 = Length;
  v6 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], v2, 0, 0, 0);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFNumberGetTypeID() && (*&valuePtr[0] = 0, CFNumberGetValue(v7, kCFNumberSInt64Type, valuePtr)))
    {
      if (a2)
      {
        *a2 = *&valuePtr[0];
      }

      v2 = 1;
    }

    else
    {
      v2 = 0;
    }

    CFRelease(v7);
    goto LABEL_18;
  }

  if (v5 >= 255)
  {
    v9 = 255;
  }

  else
  {
    v9 = v5;
  }

  CFDataGetBytePtr(v2);
  memset(valuePtr, 0, sizeof(valuePtr));
  __memcpy_chk();
  *(valuePtr + v9) = 0;
  __endptr = 0;
  v10 = strtoll(valuePtr, &__endptr, 0);
  v2 = 0;
  if (v10 < 1 || !__endptr)
  {
    goto LABEL_18;
  }

  if (*__endptr)
  {
LABEL_17:
    v2 = 0;
    goto LABEL_18;
  }

  if (a2)
  {
    *a2 = v10;
  }

  v2 = 1;
LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

const void *MDPropertyCopyDecodedUserTags(CFDataRef data)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], data, 0, 0, 0);
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 != CFArrayGetTypeID() || !CFArrayGetCount(v2))
    {
      CFRelease(v2);
      v2 = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

CFDataRef MDPropertyCopyEncodedDataForLastUsedDateWithTimeSpec(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  *bytes = a1;
  v5 = a2;
  result = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MDPropertyDecodedLastUsedDateTimeSpec(uint64_t result, _OWORD *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (CFDataGetLength(result) == 16)
    {
      BytePtr = CFDataGetBytePtr(v3);
      if (a2)
      {
        *a2 = *BytePtr;
      }

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef MDPropertyCopyUserTagString(const __CFString *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1 || !CFStringGetLength(a1))
  {
    goto LABEL_5;
  }

  location = CFStringFind(a1, @"\n", 0).location;
  if (location == -1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v5.length = location;
    if (!location)
    {
LABEL_5:
      v6 = 0;
      goto LABEL_6;
    }

    v5.location = 0;
    v9 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v5);
  }

  v10 = v9;
  if ((a2 - 1) > 6)
  {
    v6 = v9;
  }

  else
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@\n%u", v9, a2);
    if (v10)
    {
      CFRelease(v10);
    }
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

__CFArray *MDPropertyCreateUserTagStrings(CFIndex capacity, uint64_t a2)
{
  Mutable = 0;
  v13 = *MEMORY[0x1E69E9840];
  if (capacity <= 1023)
  {
    if (capacity)
    {
      if (a2)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v12 = 0;
          if (capacity >= 1)
          {
            v5 = 0;
            while (1)
            {
              v11 = 0;
              v10 = 0;
              (*(a2 + 16))(a2, v5, &v11, &v10, &v12);
              if (v12)
              {
                goto LABEL_13;
              }

              v6 = MDPropertyCopyUserTagString(v11, v10);
              if (v6)
              {
                v7 = v6;
                CFArrayAppendValue(Mutable, v6);
                CFRelease(v7);
              }

              if (capacity == ++v5)
              {
                if (v12)
                {
                  goto LABEL_13;
                }

                break;
              }
            }
          }

          if (!CFArrayGetCount(Mutable))
          {
LABEL_13:
            CFRelease(Mutable);
            Mutable = 0;
          }
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t MDPropertyDecodedUserTags()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t MDExtendedAttributeBlockList()
{
  v2 = *MEMORY[0x1E69E9840];
  if (MDExtendedAttributeBlockList_onceToken != -1)
  {
    MDExtendedAttributeBlockList_cold_1();
  }

  result = MDExtendedAttributeBlockList_sBlockList;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFSetRef __MDExtendedAttributeBlockList_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1E7B25920;
  v2[1] = *&off_1E7B25930;
  v2[2] = xmmword_1E7B25940;
  v2[3] = *off_1E7B25950;
  result = CFSetCreate(*MEMORY[0x1E695E480], v2, 8, MEMORY[0x1E695E9F8]);
  MDExtendedAttributeBlockList_sBlockList = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void MDMatcherCreate(const char *a1, char *a2, char a3, int a4)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  icu_search_context_create(a1, a2, a3, a4);
}

BOOL MDMatch(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return MDMatchWithFuzzyIndicies(a1, a2, a3, 0, 0, 0, 0);
}

BOOL MDMatchWithFuzzyIndicies(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, char *a7)
{
  v19 = *MEMORY[0x1E69E9840];
  bzero(v18, 0x400uLL);
  v17 = 0;
  if (utf8_encodestr(a2, 2 * a3, v18, &v17, 1023, 47, 4))
  {
    result = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    result = icu_search_match(a1, v18, &v17, &v16, 0);
    if (result)
    {
      icu_search_context_fuzzy_match_state(a1, a4, a6, a5, a7);
      result = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL MDMatchUTF8(_BOOL8 result, const char *a2, void *a3, uint64_t *a4, int a5)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return icu_search_match(result, a2, a3, a4, a5);
}

BOOL MDMatchWithFuzzyIndiciesRange(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, char *a7, uint64_t *a8, uint64_t *a9)
{
  v23 = *MEMORY[0x1E69E9840];
  bzero(v22, 0x400uLL);
  v21 = 0;
  if (utf8_encodestr(a2, 2 * a3, v22, &v21, 1023, 47, 4))
  {
    result = 0;
  }

  else
  {
    result = icu_search_match(a1, v22, a8, a9, 0);
    if (result)
    {
      v18 = normalizeSizeForUTF8toUnichar(a2, v22, *a8);
      v19 = normalizeSizeForUTF8toUnichar(&a2[v18], &v22[*a8], *a9);
      *a8 = v18;
      *a9 = v19;
      icu_search_context_fuzzy_match_state(a1, a4, a6, a5, a7);
      result = 1;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t normalizeSizeForUTF8toUnichar(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2 + 1;
    do
    {
      v9 = *(a2 + v7);
      v10 = *(a2 + v7) >> 4;
      if ((v9 & 0x80000000) != 0)
      {
        v11 = utf8_byte_length_utf8_len_table_0[v10];
        v12 = v9 & utf8_to_code_point_utf8_first_char_mask_0[v11];
        if ((~v10 & 0xC) != 0)
        {
          v9 &= utf8_to_code_point_utf8_first_char_mask_0[v11];
        }

        else
        {
          if (v11 <= 2)
          {
            v13 = 2;
          }

          else
          {
            v13 = utf8_byte_length_utf8_len_table_0[v10];
          }

          v14 = v13 - 1;
          v15 = (v8 + v7);
          do
          {
            v16 = *v15++;
            v9 = v16 & 0x3F | (v12 << 6);
            v12 = v9;
            --v14;
          }

          while (v14);
        }
      }

      v17 = utf8_byte_length_noerror_utf8_len_table_0[v10];
      v18 = (a1 + 2 * v6);
      if (v9 == *v18)
      {
        ++v6;
      }

      else if (v9 < 0x10000)
      {
        memset(v23, 0, sizeof(v23));
        v22 = 0;
        v19 = utf8_encodestr(v18, 2uLL, v23, &v22, 63, 47, 4);
        v17 = v22;
        if (v19)
        {
          v17 = 0;
        }

        else
        {
          ++v6;
        }
      }

      else
      {
        v6 += 2;
      }

      v7 += v17;
    }

    while (v7 < a3);
  }

  else
  {
    v6 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

void MDMatcherDispose(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  icu_ctx_release(a1);
}

uint64_t _MDBundleUtilsCopyApplicationCategories()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return copyAppCategoryMap();
}

uint64_t copyAppCategoryMap()
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (getCoreTypesBundleURL_onceToken != -1)
  {
    copyAppCategoryMap_cold_1();
  }

  v0 = gCoreTypesInfoPlistURL;
  if (gCoreTypesInfoPlistURL)
  {
    TypeID = CFDictionaryGetTypeID();
    v2 = CFStringGetTypeID();
    v3 = CFArrayGetTypeID();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __copyAppCategoryMap_block_invoke;
    v9[3] = &unk_1E7B25988;
    v9[6] = v3;
    v9[7] = v2;
    v10 = 1;
    v9[4] = &v11;
    v9[5] = TypeID;
    v4 = processMappedPlist(v0, v9);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        copyAppCategoryMap_cold_2(v5);
      }
    }
  }

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _MDBundleUtilsCopyLocalizedApplicationCategories(CFArrayRef theArray)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_MDBundleUtilsCopyLocalizedApplicationCategories_onceToken != -1)
  {
    _MDBundleUtilsCopyLocalizedApplicationCategories_cold_1();
    if (theArray)
    {
      goto LABEL_3;
    }

LABEL_5:
    Count = 0;
    goto LABEL_6;
  }

  if (!theArray)
  {
    goto LABEL_5;
  }

LABEL_3:
  Count = CFArrayGetCount(theArray);
LABEL_6:
  v3 = 0;
  if (Count && _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap && _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategories && Count >= 1)
  {
    v3 = 0;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (CFDictionaryGetValue(_MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap, ValueAtIndex))
      {
        context = ValueAtIndex;
        v9 = v3;
        CFDictionaryApplyFunction(_MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategories, localizedApplicationCategoriesApplier, &context);
        v3 = v9;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

void localizedApplicationCategoriesApplier(const void *a1, const __CFDictionary *cf, uint64_t a3)
{
  Value = cf;
  v16 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(Value, *a3);
  }

  else
  {
    v7 = CFGetTypeID(Value);
    if (v7 != CFStringGetTypeID())
    {
      goto LABEL_9;
    }
  }

  if (!Value)
  {
    goto LABEL_9;
  }

  Mutable = *(a3 + 8);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a3 + 8) = Mutable;
  }

  v9 = CFDictionaryGetValue(Mutable, a1);
  if (v9)
  {
    v10 = v9;
    if (!CFEqual(v9, Value))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@, %@", v10, Value);
      CFDictionarySetValue(*(a3 + 8), a1, v14);
      if (v14)
      {
        v15 = *MEMORY[0x1E69E9840];

        CFRelease(v14);
        return;
      }
    }

LABEL_9:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v12 = *(a3 + 8);
  v13 = *MEMORY[0x1E69E9840];

  CFDictionarySetValue(v12, a1, Value);
}

const void *_MDBundleUtilsCopyLocalizedDescriptionDictionary(const void *a1, void *a2, const __CFURL *a3, int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = localizedCacheValueCopy(a1);
    if (!a2)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_60;
    }
  }

  if (v8)
  {
    goto LABEL_60;
  }

  if (getCoreTypesBundleURL_onceToken == -1)
  {
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_47:
    v27[0] = a2;
    goto LABEL_48;
  }

  _MDBundleUtilsCopyLocalizedDescriptionDictionary_cold_1();
  if (!a3)
  {
    goto LABEL_47;
  }

LABEL_8:
  v9 = getCoreTypesBundleURL_sCoreTypesBundleURL;
  if (!getCoreTypesBundleURL_sCoreTypesBundleURL || getCoreTypesBundleURL_sCoreTypesBundleURL != a3 && !CFEqual(getCoreTypesBundleURL_sCoreTypesBundleURL, a3) && ((v10 = CFURLGetBaseURL(a3)) == 0 || v10 != v9 && !CFEqual(v9, v10)))
  {
    v11 = CFBundleCopyLocalizationsForURL(a3);
    if (v11)
    {
      v12 = v11;
      if (CFArrayGetCount(v11))
      {
        v28 = 0;
        v29 = &v28;
        v30 = 0x2000000000;
        v31 = 0;
        v13 = CFBundleCopyResourceURLInDirectory(a3, @"InfoPlist", @"loctable", 0);
        if (v13)
        {
          v14 = CFURLCreateWithString(*MEMORY[0x1E695E480], @"Info.plist", a3);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 0x40000000;
          v27[2] = __bundleLocalizedPropertyCopy_block_invoke;
          v27[3] = &unk_1E7B259B0;
          v27[4] = &v28;
          v27[5] = a1;
          v27[6] = a2;
          v15 = processMappedPlist(v14, v27);
          if (v15)
          {
            v16 = v15;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              if (v14)
              {
                v17 = v14;
              }

              else
              {
                v17 = a3;
              }

              *buf = 67109890;
              *&buf[4] = v16;
              *v33 = 2112;
              *&v33[2] = a1;
              v34 = 2112;
              v35 = a2;
              v36 = 2112;
              v37 = v17;
              _os_log_impl(&dword_1B238B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "bundleLocalizedPropertyCopy error %d resolving %@ %@ for %@", buf, 0x26u);
            }
          }

          if (v14)
          {
            CFRelease(v14);
          }

          v18 = 0;
        }

        else
        {
          Unique = _CFBundleCreateUnique();
          v18 = Unique;
          if (Unique)
          {
            InfoDictionary = CFBundleGetInfoDictionary(Unique);
            if (InfoDictionary)
            {
              v22 = bundleDescriptionCopy(InfoDictionary, a1, a2);
              v29[3] = v22;
            }
          }
        }

        *buf = a2;
        *v33 = 0;
        if (v29[3])
        {
          *v33 = v29[3];
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }

        os_unfair_lock_lock(&bundleLocalizedPropertyCopy_sLocalizePropertyLock);
        if (a4)
        {
          v8 = localizedCacheValueCopy(a1);
          if (!v8)
          {
            v8 = localizedPropertyCopy(buf, v19, v13, v18, v12, 1);
            if (v8)
            {
              localizedCacheValueSet(a1, v8, 0);
            }
          }
        }

        else
        {
          v8 = localizedPropertyCopy(buf, v19, v13, v18, v12, 1);
        }

        os_unfair_lock_unlock(&bundleLocalizedPropertyCopy_sLocalizePropertyLock);
        if (v18)
        {
          CFRelease(v18);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        _Block_object_dispose(&v28, 8);
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v12);
      goto LABEL_60;
    }

LABEL_59:
    v8 = 0;
    goto LABEL_60;
  }

  v27[0] = a2;
  if (getCoreTypesBundleURL_onceToken != -1)
  {
    _MDBundleUtilsCopyLocalizedDescriptionDictionary_cold_1();
  }

LABEL_48:
  v23 = gCoreTypesBundleLocalizations;
  if (!gCoreTypesBundleLocalizations || !CFArrayGetCount(gCoreTypesBundleLocalizations))
  {
    goto LABEL_59;
  }

  os_unfair_lock_lock(&coreTypesLocalizedPropertyCopy_sCoreTypesLock);
  if (!a1 || !a4 || (v8 = localizedCacheValueCopy(a1)) == 0)
  {
    if (getCoreTypesBundleURL_onceToken != -1)
    {
      _MDBundleUtilsCopyLocalizedDescriptionDictionary_cold_1();
    }

    v24 = localizedPropertyCopy(v27, 1, gCoreTypesLocTableURL, 0, v23, 1);
    v8 = v24;
    if (a4 && v24)
    {
      localizedCacheValueSet(a1, v24, 1);
    }
  }

  os_unfair_lock_unlock(&coreTypesLocalizedPropertyCopy_sCoreTypesLock);
LABEL_60:
  if (a2 && a1 && !v8)
  {
    v8 = CFDictionaryCreate(*MEMORY[0x1E695E498], &stru_1F29A61D0.isa, a2, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v8;
}

void localizedCacheValueSet(const void *a1, const void *a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    os_unfair_lock_lock(&gLocalizePropertyCacheLock);
    if (a3)
    {
      v6 = &gCoreTypesLocalizedPropertyCache;
    }

    else
    {
      v6 = &gLocalizedPropertyCache;
    }

    Mutable = *v6;
    if (!*v6)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *v6 = Mutable;
    }

    CFDictionarySetValue(Mutable, a1, a2);
    v10 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(&gLocalizePropertyCacheLock);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
    v8 = *MEMORY[0x1E69E9840];
  }
}

uint64_t processMappedPlist(const __CFURL *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = 22;
  if (a1 && a2)
  {
    bzero(buffer, 0x400uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = open(buffer, 0);
      if (v5 == -1)
      {
        v2 = *__error();
      }

      else
      {
        v6 = v5;
        memset(&v14, 0, sizeof(v14));
        if (fstat(v5, &v14))
        {
          v2 = *__error();
        }

        else
        {
          v7 = v14.st_size + *MEMORY[0x1E69E9AC8] - 1;
          v8 = -*MEMORY[0x1E69E9AC8];
          v9 = mmap(0, v7 & v8, 1, 1, v6, 0);
          if (v9 == -1 || (v10 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v9, v14.st_size, *MEMORY[0x1E695E498])) == 0)
          {
            v2 = 0xFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
            v2 = (*(a2 + 16))(a2, v10);
            CFRelease(v11);
          }

          munmap(v9, v7 & v8);
        }

        close(v6);
      }
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __copyAppCategoryMap_block_invoke(uint64_t a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = @"UTExportedTypeDeclarations";
  v2 = *MEMORY[0x1E695E480];
  v3 = CFSetCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9F8]);
  v47 = 0;
  if (!_CFPropertyListCreateFiltered())
  {
    v36 = 0xFFFFFFFFLL;
    if (v3)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v4 = *(a1 + 40);
  if (v4 != CFGetTypeID(v47))
  {
    goto LABEL_37;
  }

  if (!CFDictionaryGetCount(v47))
  {
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(v47, values[0]);
  if (!Value)
  {
    goto LABEL_37;
  }

  v6 = Value;
  v7 = *(a1 + 48);
  if (v7 != CFGetTypeID(Value))
  {
    goto LABEL_37;
  }

  v46 = v6;
  Count = CFArrayGetCount(v6);
  MEMORY[0x1EEE9AC00](v12, Count, v9, v10, v11);
  bzero(v41 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * Count);
  MEMORY[0x1EEE9AC00](v17, v13, v14, v15, v16);
  v18 = Count;
  bzero(v41 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * Count);
  if (Count < 1)
  {
    goto LABEL_37;
  }

  v42 = (v41 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v42;
  v41[1] = v41;
  v44 = 0;
  v45 = Count;
  v19 = 0;
  v20 = v46;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v20, v19);
    if (ValueAtIndex)
    {
      v22 = ValueAtIndex;
      if (CFGetTypeID(ValueAtIndex) == *(a1 + 40))
      {
        v23 = CFDictionaryGetValue(v22, @"UTTypeConformsTo");
        if (v23)
        {
          v24 = v23;
          v25 = CFGetTypeID(v23);
          if (v25 == *(a1 + 48))
          {
            v26 = CFArrayGetCount(v24);
            if (v26 < 1)
            {
              goto LABEL_26;
            }

            v27 = v26;
            v28 = 0;
            while (1)
            {
              v29 = CFArrayGetValueAtIndex(v24, v28);
              if (CFGetTypeID(v29) == *(a1 + 56))
              {
                if (CFStringHasPrefix(v29, @"public.app-category"))
                {
                  break;
                }
              }

              if (v27 == ++v28)
              {
                v20 = v46;
                goto LABEL_25;
              }
            }

            v20 = v46;
            if (!v29)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v25 != *(a1 + 56))
            {
              goto LABEL_26;
            }

            if (!CFStringHasPrefix(v24, @"public.app-category"))
            {
LABEL_29:
              v18 = v45;
              goto LABEL_26;
            }
          }

          v30 = CFDictionaryGetValue(v22, @"UTTypeDescription");
          if (v30)
          {
            v31 = v30;
            if (CFGetTypeID(v30) == *(a1 + 56))
            {
              v32 = CFDictionaryGetValue(v22, @"UTTypeIdentifier");
              if (v32)
              {
                v33 = v32;
                if (CFGetTypeID(v32) == *(a1 + 56))
                {
                  v34 = v43;
                  v35 = v44;
                  v42[v44] = v33;
                  v34[v35] = v31;
                  v44 = v35 + 1;
                }
              }
            }
          }

LABEL_25:
          v18 = v45;
        }
      }
    }

LABEL_26:
    ++v19;
  }

  while (v19 != v18);
  v37 = v43;
  if (v44)
  {
    if (*(a1 + 64) == 1)
    {
      v38 = v43;
      v37 = v42;
    }

    else
    {
      v38 = v42;
    }

    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreate(v2, v38, v37, v44, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

LABEL_37:
  v36 = 0;
  if (v3)
  {
LABEL_38:
    CFRelease(v3);
  }

LABEL_39:
  v39 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t __bundleLocalizedPropertyCopy_block_invoke(uint64_t a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = @"CFBundleDocumentTypes";
  v2 = CFSetCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9F8]);
  if (!_CFPropertyListCreateFiltered())
  {
    v4 = 0xFFFFFFFFLL;
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(0) && CFDictionaryGetCount(0))
  {
    *(*(*(a1 + 32) + 8) + 24) = bundleDescriptionCopy(0, *(a1 + 40), *(a1 + 48));
  }

  v4 = 0;
  if (v2)
  {
LABEL_8:
    CFRelease(v2);
  }

LABEL_9:
  if (values[0])
  {
    CFRelease(values[0]);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

const __CFDictionary *bundleDescriptionCopy(const __CFDictionary *result, const void *a2, const void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"CFBundleDocumentTypes");
    TypeID = CFArrayGetTypeID();
    if (Value)
    {
      v7 = TypeID;
      if (TypeID == CFGetTypeID(Value))
      {
        v8 = CFDictionaryGetTypeID();
        v9 = CFStringGetTypeID();
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v11 = Count;
          v22 = v7;
          cf1 = a3;
          v24 = a2;
          v12 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, v12);
            if (v8 != CFGetTypeID(ValueAtIndex))
            {
              goto LABEL_20;
            }

            result = CFDictionaryGetValue(ValueAtIndex, @"CFBundleTypeName");
            if (!result)
            {
              goto LABEL_21;
            }

            v14 = result;
            if (v9 != CFGetTypeID(result))
            {
              goto LABEL_20;
            }

            if (cf1 && CFEqual(cf1, v14))
            {
              goto LABEL_25;
            }

            result = CFDictionaryGetValue(ValueAtIndex, @"LSItemContentTypes");
            if (result)
            {
              break;
            }

LABEL_21:
            if (v11 <= ++v12 || result)
            {
              goto LABEL_26;
            }
          }

          v15 = result;
          if (v22 == CFGetTypeID(result))
          {
            v16 = CFArrayGetCount(v15);
            if (v16 >= 1)
            {
              v17 = v16;
              v18 = 0;
              while (1)
              {
                v19 = CFArrayGetValueAtIndex(v15, v18);
                if (v19)
                {
                  v20 = v19;
                  if (v9 == CFGetTypeID(v19))
                  {
                    if (CFEqual(v24, v20))
                    {
                      break;
                    }
                  }
                }

                result = 0;
                if (v17 == ++v18)
                {
                  goto LABEL_21;
                }
              }

              result = CFRetain(v14);
              goto LABEL_21;
            }
          }

LABEL_20:
          result = 0;
          goto LABEL_21;
        }
      }
    }

LABEL_25:
    result = 0;
  }

LABEL_26:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *localizedPropertyCopy(const void **a1, CFIndex a2, const __CFURL *a3, uint64_t a4, CFArrayRef theArray, int a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v13 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Count)
      {
        TypeID = CFDictionaryGetTypeID();
        v16 = TypeID;
        if (a3)
        {
          v17 = v13;
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 0x40000000;
          v31[2] = __localizedPropertyCopy_block_invoke;
          v31[3] = &__block_descriptor_tmp_45;
          v31[4] = Count;
          v31[5] = theArray;
          v31[6] = a2;
          v31[7] = a1;
          v31[8] = TypeID;
          v31[9] = Mutable;
          v32 = a6;
          v18 = processMappedPlist(a3, v31);
          if (v18)
          {
            v19 = v18;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              localizedPropertyCopy_cold_1(a3, v19);
            }
          }

          v13 = v17;
        }

        else if (a4)
        {
          v29 = a6;
          v28 = v13;
          v30 = a1;
          v23 = CFSetCreate(v13, a1, a2, MEMORY[0x1E695E9F8]);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
              FilteredLocalizedInfoPlist = _CFBundleCreateFilteredLocalizedInfoPlist();
              if (FilteredLocalizedInfoPlist)
              {
                v27 = FilteredLocalizedInfoPlist;
                if (v16 == CFGetTypeID(FilteredLocalizedInfoPlist))
                {
                  localizedPropertyAdd(Mutable, ValueAtIndex, v27, v30, a2, v29);
                }

                CFRelease(v27);
              }
            }
          }

          if (v23)
          {
            CFRelease(v23);
          }

          a1 = v30;
          a6 = v29;
          v13 = v28;
        }
      }
    }

    else
    {
      v13 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (!CFDictionaryGetValue(Mutable, &stru_1F29A61D0))
    {
      if (a6)
      {
        CFDictionarySetValue(Mutable, &stru_1F29A61D0, *a1);
      }

      else
      {
        v20 = CFDictionaryCreate(v13, a1, a1, a2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, &stru_1F29A61D0, v20);
        if (v20)
        {
          CFRelease(v20);
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t __localizedPropertyCopy_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (*(a1 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v4);
      if (*(a1 + 48) >= 1)
      {
        v6 = ValueAtIndex;
        v7 = 0;
        do
        {
          v8 = CFStringCreateWithFormat(v2, 0, @"%@:%@", v6, *(*(a1 + 56) + 8 * v7));
          CFSetAddValue(Mutable, v8);
          if (v8)
          {
            CFRelease(v8);
          }

          ++v7;
        }

        while (v7 < *(a1 + 48));
      }

      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  if ((_CFPropertyListCreateFiltered() & 1) == 0)
  {
    v15 = 0xFFFFFFFFLL;
    if (!Mutable)
    {
      goto LABEL_22;
    }

LABEL_21:
    CFRelease(Mutable);
    goto LABEL_22;
  }

  v9 = *(a1 + 64);
  if (v9 == CFGetTypeID(0) && CFDictionaryGetCount(0) && *(a1 + 32) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = CFArrayGetValueAtIndex(*(a1 + 40), v10);
      Value = CFDictionaryGetValue(0, v11);
      if (Value)
      {
        v13 = Value;
        v14 = *(a1 + 64);
        if (v14 == CFGetTypeID(Value))
        {
          localizedPropertyAdd(*(a1 + 72), v11, v13, *(a1 + 56), *(a1 + 48), *(a1 + 80));
        }
      }

      ++v10;
    }

    while (v10 < *(a1 + 32));
  }

  v15 = 0;
  if (Mutable)
  {
    goto LABEL_21;
  }

LABEL_22:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void localizedPropertyAdd(__CFDictionary *a1, const __CFString *a2, const __CFDictionary *a3, const void **a4, uint64_t a5, char a6)
{
  v21 = *MEMORY[0x1E69E9840];
  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(*MEMORY[0x1E695E480], a2);
  if (!CanonicalLanguageIdentifierFromString)
  {
    CanonicalLanguageIdentifierFromString = CFRetain(a2);
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v17 = a1;
    v18 = CanonicalLanguageIdentifierFromString;
    v19 = a3;
    goto LABEL_11;
  }

  if ((a6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  TypeID = CFStringGetTypeID();
  if (a5 < 1)
  {
    goto LABEL_12;
  }

  v14 = TypeID;
  while (1)
  {
    Value = CFDictionaryGetValue(a3, *a4);
    if (Value)
    {
      v16 = Value;
      if (v14 == CFGetTypeID(Value))
      {
        break;
      }
    }

    ++a4;
    if (!--a5)
    {
      goto LABEL_12;
    }
  }

  v17 = a1;
  v18 = CanonicalLanguageIdentifierFromString;
  v19 = v16;
LABEL_11:
  CFDictionarySetValue(v17, v18, v19);
LABEL_12:
  v20 = *MEMORY[0x1E69E9840];

  CFRelease(CanonicalLanguageIdentifierFromString);
}

const __CFURL *__getCoreTypesBundleURL_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v7, 0, sizeof(v7));
  result = stat("/System/Library/CoreServices/MobileCoreTypes.bundle", &v7);
  if (!result)
  {
    v1 = *MEMORY[0x1E695E480];
    result = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], "/System/Library/CoreServices/MobileCoreTypes.bundle", 51, 1u);
    if (result)
    {
      v2 = result;
      v3 = CFBundleCopyLocalizationsForURL(result);
      v4 = CFBundleCopyResourceURLInDirectory(v2, @"InfoPlist", @"loctable", 0);
      v5 = stat("/System/Library/CoreServices/MobileCoreTypes.bundle/Info.plist", &v7);
      result = 0;
      if (!v5)
      {
        result = CFURLCreateFromFileSystemRepresentation(v1, "/System/Library/CoreServices/MobileCoreTypes.bundle/Info.plist", 62, 1u);
      }

      getCoreTypesBundleURL_sCoreTypesBundleURL = v2;
      gCoreTypesBundleLocalizations = v3;
      gCoreTypesInfoPlistURL = result;
      gCoreTypesLocTableURL = v4;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unicode_decomposeable(unsigned int a1)
{
  if (a1 >= 0xC0 && (v1 = __CFUniCharDecomposableBitmap[a1 >> 8]) != 0)
  {
    if (v1 == 255)
    {
      result = 1;
    }

    else
    {
      result = (__CFUniCharDecomposableBitmap[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
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

uint64_t utf8_encodestr(unsigned __int16 *a1, unint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v32[0] = 0;
  v32[1] = 0;
  if (a2 < 2)
  {
    result = 0;
    v8 = a3;
    goto LABEL_40;
  }

  result = 0;
  v10 = 0;
  v11 = 0;
  v12 = &a3[a5 - ((a7 & 2) == 0)];
  v13 = a2 >> 1;
  v8 = a3;
  while (1)
  {
    while (1)
    {
      --v13;
      if (v10 < 1)
      {
        v16 = *a1++;
        v14 = v16;
        v17 = bswap32(v16) >> 16;
        if (a7)
        {
          v14 = v17;
        }

        if ((a7 & 4) != 0)
        {
          v18 = v14;
          if (v14 >= 0xC0u)
          {
            v19 = __CFUniCharDecomposableBitmap[v14 >> 8];
            if (!__CFUniCharDecomposableBitmap[v14 >> 8] || v19 != 255 && ((__CFUniCharDecomposableBitmap[32 * v19 + 224 + (v14 >> 3)] >> (v14 & 7)) & 1) == 0)
            {
              goto LABEL_18;
            }

            v31 = result;
            v20 = a4;
            v21 = a3;
            v22 = a6;
            v23 = a7;
            v24 = unicode_decompose(v14, v32);
            a7 = v23;
            a6 = v22;
            a3 = v21;
            a4 = v20;
            v10 = v24 - 1;
            result = v31;
            v13 += v10;
            v14 = LOWORD(v32[0]);
            v11 = v32 + 1;
          }
        }
      }

      else
      {
        v15 = *v11++;
        v14 = v15;
        --v10;
      }

      if (!v14)
      {
        LOBYTE(v14) = 0;
        LOBYTE(v25) = 2;
        LOBYTE(v26) = -112;
        goto LABEL_23;
      }

      if (v14 == 47)
      {
        v14 = a6;
        if (!a6)
        {
          break;
        }
      }

      v18 = v14;
      if (v14 < 0x80u)
      {
        goto LABEL_35;
      }

LABEL_18:
      if (v14 > 0x7FFu)
      {
        v26 = v14 >> 6;
        v25 = v14 >> 12;
        if (v14 >> 10 == 54 && v13)
        {
          v27 = *a1;
          v28 = bswap32(v27) >> 16;
          if (a7)
          {
            LOWORD(v27) = v28;
          }

          if (v27 >> 10 != 55)
          {
            LOBYTE(v25) = 13;
            goto LABEL_23;
          }

          if ((v8 + 3) >= v12)
          {
            goto LABEL_39;
          }

          v29 = (v18 << 10) + v27 - 56613888;
          --v13;
          ++a1;
          *v8 = (v29 >> 18) | 0xF0;
          v8[1] = (v29 >> 12) & 0x3F | 0x80;
          v8[2] = (v29 >> 6) & 0x3F | 0x80;
          v8[3] = v27 & 0x3F | 0x80;
          v8 += 4;
          if (!v13)
          {
            goto LABEL_40;
          }
        }

        else
        {
LABEL_23:
          if ((v8 + 2) >= v12)
          {
            goto LABEL_39;
          }

          *v8 = v25 | 0xE0;
          v8[1] = v26 & 0x3F | 0x80;
          v8[2] = v14 & 0x3F | 0x80;
          v8 += 3;
          if (!v13)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v8 + 1) >= v12)
        {
          goto LABEL_39;
        }

        *v8 = (v14 >> 6) | 0xC0;
        v8[1] = v14 & 0x3F | 0x80;
        v8 += 2;
        if (!v13)
        {
          goto LABEL_40;
        }
      }
    }

    LOBYTE(v14) = 95;
    result = 22;
LABEL_35:
    if (v8 >= v12)
    {
      break;
    }

    *v8++ = v14;
    if (!v13)
    {
      goto LABEL_40;
    }
  }

LABEL_39:
  result = 63;
LABEL_40:
  *a4 = v8 - a3;
  if ((a7 & 2) == 0)
  {
    *v8 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unicode_decompose(__int16 a1, _WORD *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1 + 21504;
  if ((a1 + 21504) > 0x2BA4u)
  {
    v4 = *MEMORY[0x1E69E9840];
    v5 = *MEMORY[0x1E69E9840];

    return unicode_recursive_decompose(a1, a2);
  }

  else
  {
    *a2 = ((28533 * (a1 + 21504)) >> 24) | 0x1100;
    a2[1] = v2 % 0x24Cu / 0x1C + 4449;
    if (v2 % 0x1Cu)
    {
      a2[2] = (a1 + 21504) % 0x1Cu + 4519;
      result = 3;
    }

    else
    {
      result = 2;
    }

    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t utf8_decodestr(unsigned __int8 *a1, unint64_t a2, _WORD *a3, void *a4, uint64_t a5, _DWORD *a6, char a7)
{
  v47[2] = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (!a2)
  {
    result = 0;
    v11 = a3;
    goto LABEL_64;
  }

  v9 = a2;
  v10 = a3 + a5;
  v11 = a3;
  v12 = a1;
  while (1)
  {
    v14 = *v12++;
    v13 = v14;
    if (!v14)
    {
LABEL_61:
      result = 0;
      goto LABEL_64;
    }

    --v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    v15 = utf_extrabytes[v13 >> 3];
    if (v9 < v15)
    {
      goto LABEL_62;
    }

    v16 = utf_extrabytes[v13 >> 3];
    v9 -= v15;
    if (v16 != 3)
    {
      break;
    }

    v28 = *v12;
    if ((v28 & 0xC0) != 0x80 || (v29 = a1[2], (v29 & 0xC0) != 0x80) || (v30 = a1[3], (v30 & 0xC0) != 0x80) || (v31 = v30 + (((v28 << 6) + (v13 << 12) + v29) << 6) - 63512704, v31 >> 20))
    {
LABEL_62:
      result = 22;
      goto LABEL_64;
    }

    v32 = (v31 >> 10) | 0xFFFFD800;
    if (a7)
    {
      *v11 = bswap32(v32) >> 16;
      v33 = v11 + 1;
      if ((v11 + 1) >= v10)
      {
LABEL_65:
        result = 63;
        v11 = v33;
        goto LABEL_64;
      }

      v34 = __rev16(v31 & 0x3FF | 0xDC00);
    }

    else
    {
      *v11 = v32;
      v33 = v11 + 1;
      if ((v11 + 1) >= v10)
      {
        goto LABEL_65;
      }

      v34 = v31 & 0x3FF | 0xDC00;
    }

    v12 = a1 + 4;
    v11[1] = v34;
    v11 += 2;
LABEL_54:
    a1 = v12;
    if (!v9)
    {
      goto LABEL_61;
    }
  }

  if (v16 == 2)
  {
    v19 = *v12;
    if ((v19 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v20 = a1[2];
    if ((v20 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v21 = (v19 << 6) + (v13 << 12) + v20;
    v18 = v21 - 925824;
    if ((v21 - 925824) < 0x800)
    {
      goto LABEL_62;
    }

    v12 = a1 + 3;
    if (v18 >> 11 >= 0x1B)
    {
      result = 22;
      if (v18 < 0xE000 || (v21 & 0x3FFFFE) == 0xF207E)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    if (v16 != 1)
    {
      goto LABEL_62;
    }

    v17 = *v12;
    if ((v17 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v18 = v17 + (v13 << 6) - 12416;
    if (v18 < 0x80)
    {
      goto LABEL_62;
    }

    v12 = a1 + 2;
  }

  if ((a7 & 4) == 0)
  {
    if ((a7 & 8) != 0 && v18 >= 0x300u)
    {
      v23 = __CFUniCharCombiningBitmap[BYTE1(v18)];
      if (__CFUniCharCombiningBitmap[BYTE1(v18)])
      {
        if (v23 == 255 || ((__CFUniCharCombiningBitmap[32 * v23 + 224 + (v18 >> 3)] >> (v18 & 7)) & 1) != 0)
        {
          *a6 = 1;
          if (v11 != a3)
          {
            v24 = *(v11 - 1);
            v25 = bswap32(v24) >> 16;
            if (a7)
            {
              LOWORD(v24) = v25;
            }

            v26 = a4;
            v45 = a6;
            v27 = unicode_combine(v24, v18);
            a6 = v45;
            a4 = v26;
            if (v27)
            {
              --v11;
              v18 = v27;
            }
          }
        }
      }
    }

LABEL_47:
    if (v18 == 9216)
    {
      LODWORD(v13) = 0;
    }

    else
    {
      LODWORD(v13) = v18;
    }

LABEL_50:
    if (v11 >= v10)
    {
      goto LABEL_63;
    }

    v43 = bswap32(v13) >> 16;
    if (a7)
    {
      LOWORD(v13) = v43;
    }

    *v11++ = v13;
    goto LABEL_54;
  }

  if (v18 < 0xC0u)
  {
    goto LABEL_47;
  }

  v35 = __CFUniCharDecomposableBitmap[BYTE1(v18)];
  if (!__CFUniCharDecomposableBitmap[BYTE1(v18)] || v35 != 255 && ((__CFUniCharDecomposableBitmap[32 * v35 + 224 + (v18 >> 3)] >> (v18 & 7)) & 1) == 0)
  {
    goto LABEL_47;
  }

  v46 = a6;
  v47[0] = 0;
  v36 = a4;
  v47[1] = 0;
  v37 = unicode_decompose(v18, v47);
  if (v37 < 1)
  {
    a4 = v36;
    a6 = v46;
    goto LABEL_54;
  }

  v38 = v37;
  v39 = v47;
  a4 = v36;
  a6 = v46;
  while (1)
  {
    v41 = *v39++;
    v40 = v41;
    v42 = bswap32(v41) >> 16;
    if (a7)
    {
      v40 = v42;
    }

    *v11++ = v40;
    if (v11 >= v10)
    {
      break;
    }

    if (!--v38)
    {
      goto LABEL_54;
    }
  }

LABEL_63:
  result = 63;
LABEL_64:
  *a4 = v11 - a3;
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unicode_combine(unsigned int a1, unsigned int a2)
{
  if (a2 - 4449 > 0x61)
  {
    if ((a2 - 12443) < 0xD265u)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a2 >> 1 <= 0x8BA && (a1 - 4352) <= 0x12u)
    {
      v2 = 28 * a2 + 588 * a1 - 18076;
      goto LABEL_13;
    }

    if (a2 >> 3 >= 0x235 && ((a1 + 21504) >> 2) <= 0xAE8u)
    {
      HIDWORD(v9) = -1227133513 * a1 - 1840706560;
      LODWORD(v9) = HIDWORD(v9);
      if ((v9 >> 2) <= 0x9249249)
      {
        v2 = a1 + a2 - 4519;
      }

      else
      {
        v2 = 0;
      }

      goto LABEL_13;
    }
  }

  v3 = &__CFUniCharPrecompSourceTable;
  v4 = &unk_1B23E0D68;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 4)];
    if (*v5 <= a2)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_11:
    if (v3 > v4)
    {
      goto LABEL_12;
    }
  }

  if (*v5 < a2)
  {
    v3 = v5 + 2;
    goto LABEL_11;
  }

  v10 = v5[1];
  if (v10)
  {
    v11 = &__CFUniCharBMPPrecompDestinationTable + 4 * v10;
    if (*v11 <= a1)
    {
      v12 = &v11[4 * HIWORD(v10) - 4];
      if (*v12 >= a1)
      {
        while (1)
        {
          v13 = &v11[4 * ((v12 - v11) >> 3)];
          v14 = *v13;
          if (v14 <= a1)
          {
            if (v14 >= a1)
            {
              v2 = v13[1];
              goto LABEL_13;
            }

            v11 = (v13 + 2);
          }

          else
          {
            v12 = v13 - 2;
          }

          v2 = 0;
          if (v11 > v12)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

LABEL_12:
  v2 = 0;
LABEL_13:
  v6 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t unicode_recursive_decompose(unsigned int a1, _WORD *a2)
{
  v2 = a2;
  v16 = *MEMORY[0x1E69E9840];
  if ((a1 + 1201) < 0x571u)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = &__CFUniCharDecompositionTable;
  v4 = &unk_1B23E31A8;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 3)];
    v6 = *v5;
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_7:
    if (v3 > v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 2;
    goto LABEL_7;
  }

  v7 = v5[1];
LABEL_9:
  v8 = (v7 >> 12) & 7;
  v15 = v7 & 0xFFF;
  v9 = &__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF);
  v10 = &v15;
  if (v8 != 1)
  {
    v10 = (&__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) == 0)
  {
    LODWORD(result) = 0;
    goto LABEL_17;
  }

  result = unicode_recursive_decompose(*v10, a2);
  if (result)
  {
    --v8;
    v12 = &v15;
    if (v8)
    {
      v12 = v9;
    }

    v10 = (v12 + 1);
    v2 += result;
LABEL_17:
    for (result = (result + v8); v8; --v8)
    {
      v13 = *v10++;
      *v2++ = v13;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t check_and_decompose_string(unsigned __int8 *a1, unint64_t a2, unsigned __int8 **a3, unint64_t *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = 0;
  *a3 = a1;
  *a4 = a2;
  if (!a2)
  {
    goto LABEL_35;
  }

  v8 = 0;
  v29 = 0;
  v9 = a1;
  while ((*v9 & 0x80000000) == 0)
  {
LABEL_10:
    ++v8;
    ++v9;
    if (v8 >= a2)
    {
      goto LABEL_11;
    }
  }

  v30 = 0;
  v10 = utf8_byte_length_noerror_utf8_len_table_1[*v9 >> 4];
  if (utf8_decodestr(v9, v10, &v30, &v28, 4, &v29, 0))
  {
    goto LABEL_37;
  }

  if (v30 < 0xC0u || (v11 = __CFUniCharDecomposableBitmap[v30 >> 8]) == 0 || v11 != 255 && ((__CFUniCharDecomposableBitmap[32 * v11 + 224 + (v30 >> 3)] >> (v30 & 7)) & 1) == 0)
  {
    v8 += v10 - 1;
    v9 += v10 - 1;
    goto LABEL_10;
  }

LABEL_11:
  if (v8 >= a2)
  {
    if (v8 <= a2)
    {
      goto LABEL_35;
    }

LABEL_37:
    v25 = 22;
    goto LABEL_38;
  }

  v12 = (a2 >> 1) & 0x7FFFFFFFFFFFFFFELL;
  v13 = malloc_type_malloc(v12 + 2 * a2 + 2, 0x1000040BDFB0063uLL);
  if (v13)
  {
    v14 = 2 * a2 + v12 + 66;
    do
    {
      v15 = utf8_decodestr(a1, a2, v13, &v28, v14 - 64, &v29, 4);
      if (!v15)
      {
        break;
      }

      if (v15 == 22)
      {
        free(v13);
        goto LABEL_37;
      }

      free(v13);
      v13 = malloc_type_malloc(v14, 0x1000040BDFB0063uLL);
      v14 += 64;
    }

    while (v13);
  }

  v16 = v28;
  if (v28 >= 2)
  {
    v17 = 0;
    v18 = v28 >> 1;
    v19 = v13;
    do
    {
      v21 = *v19++;
      v20 = v21;
      if (!v21)
      {
        v20 = 9216;
      }

      if (v20 >= 0x80)
      {
        if (v20 >= 0x800)
        {
          if ((v20 & 0xF800) == 0xD800)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }
        }

        else
        {
          v22 = 2;
        }
      }

      else
      {
        v22 = 1;
      }

      v17 += v22;
      --v18;
    }

    while (v18);
  }

  else
  {
    v17 = 0;
  }

  v23 = malloc_type_malloc(v17 + 1, 0xE5333DECuLL);
  v24 = utf8_encodestr(v13, v16, v23, &v28, v17 + 1, 47, 4);
  if (v24)
  {
    v25 = v24;
    free(v13);
    free(v23);
    goto LABEL_38;
  }

  v23[v17] = 0;
  *a3 = v23;
  *a4 = v17 + 1;
  free(v13);
LABEL_35:
  v25 = 0;
LABEL_38:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

void *MDTrieCreate(int a1, const char *a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v12 = malloc_type_calloc(1uLL, 0x3368uLL, 0x10B0040EFDB134FuLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 3182) = a1;
    *(v12 + 1592) = a2;
    *(v12 + 3186) = a3;
    *(v12 + 3187) = a4;
    v12[12752] = a5;
    v37 = v12 + 12288;
    v12[12753] = a6;
    *(v12 + 1620) = 766030772;
    *(v12 + 12968) = 0u;
    *(v12 + 12984) = 0u;
    *(v12 + 13000) = 0u;
    *(v12 + 13016) = 0u;
    *(v12 + 13032) = 0u;
    *(v12 + 13048) = 0u;
    *(v12 + 13064) = 0u;
    *(v12 + 13080) = 0u;
    *(v12 + 13096) = 0u;
    *(v12 + 13112) = 0u;
    *(v12 + 13128) = 0u;
    *(v12 + 13144) = 0u;
    *(v12 + 1595) = 766030772;
    *(v12 + 798) = 0u;
    *(v12 + 799) = 0u;
    *(v12 + 800) = 0u;
    *(v12 + 801) = 0u;
    *(v12 + 802) = 0u;
    *(v12 + 803) = 0u;
    *(v12 + 804) = 0u;
    *(v12 + 805) = 0u;
    *(v12 + 806) = 0u;
    *(v12 + 807) = 0u;
    *(v12 + 808) = 0u;
    *(v12 + 809) = 0u;
    v46[0] = 0;
    asprintf(v46, "%s.node", a2);
    v14 = cacheFileExists(a1, v46[0]);
    if (a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = 514;
    }

    v16 = fd_create_protected(a1, v46[0], v15, a3);
    *v13 = v16;
    bzero(v13 + 3, 0x1088uLL);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 0x40000000;
    v44[2] = ___ZL10createTrieiPciibb_block_invoke;
    v44[3] = &__block_descriptor_tmp_9;
    v45 = v14;
    v44[4] = v13;
    storage_array_Init(v13 + 6, 1024, 0, 4392, v16, v14 ^ 1u, a4, a5, 0, 102, 0, v44);
    if ((v14 & 1) == 0 && (a5 & 1) == 0)
    {
      storage_array_FlushHeader(v13 + 3, v17, v18, v19);
    }

    free(v46[0]);
    v43 = 0;
    asprintf(&v43, "%s.container", a2);
    v20 = cacheFileExists(a1, v43);
    v21 = fd_create_protected(a1, v43, v15, a3);
    v13[1] = v21;
    bzero(v13 + 532, 0x1088uLL);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 0x40000000;
    v41[2] = ___ZL10createTrieiPciibb_block_invoke_2;
    v41[3] = &__block_descriptor_tmp_6_0;
    v42 = v20;
    v41[4] = v13;
    storage_array_Init(v13 + 1064, 1024, 0, 528, v21, v20 ^ 1u, a4, a5, 0, 102, 0, v41);
    if ((v20 & 1) == 0 && (a5 & 1) == 0)
    {
      storage_array_FlushHeader(v13 + 532, v22, v23, v24);
    }

    free(v43);
    v40 = 0;
    asprintf(&v40, "%s.payload", a2);
    v25 = cacheFileExists(a1, v40);
    v26 = fd_create_protected(a1, v40, v15, a3);
    v13[2] = v26;
    bzero(v13 + 1061, 0x1088uLL);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v38[2] = ___ZL10createTrieiPciibb_block_invoke_3;
    v38[3] = &__block_descriptor_tmp_8;
    v39 = v25;
    v38[4] = v13;
    storage_array_Init(v13 + 2122, 1024, 0, 344, v26, v25 ^ 1u, a4, a5, 0, 102, 0, v38);
    if ((v25 & 1) == 0 && (a5 & 1) == 0)
    {
      storage_array_FlushHeader(v13 + 1061, v27, v28, v29);
    }

    free(v40);
    if ((a5 & 1) == 0)
    {
      if (storage_array_ValidPtr((v13 + 3), 0, 1))
      {
        v30 = storage_array_ResolvePtr((v13 + 3), 0, 1);
LABEL_19:
        v13[1590] = v30;
        goto LABEL_23;
      }

      v31 = storage_array_AllocOffsetFromEnd(v13 + 3);
      if (storage_array_ValidPtr((v13 + 3), v31, 1))
      {
        v30 = storage_array_ResolvePtr((v13 + 3), v31, 1);
        v32 = v37[465];
        *v30 = 0;
        *(v30 + 8) = 0;
        memset((v30 + 16), 255, 0x1000uLL);
        *(v30 + 4116) = 0;
        *(v30 + 4376) = 0;
        *(v30 + 4384) = v32;
        *(v30 + 4385) = 0;
        *(v30 + 4120) = 0u;
        *(v30 + 4136) = 0u;
        *(v30 + 4152) = 0u;
        *(v30 + 4168) = 0u;
        *(v30 + 4184) = 0u;
        *(v30 + 4200) = 0u;
        *(v30 + 4216) = 0u;
        *(v30 + 4232) = 0u;
        *(v30 + 4248) = 0u;
        *(v30 + 4264) = 0u;
        *(v30 + 4280) = 0u;
        *(v30 + 4296) = 0u;
        *(v30 + 4312) = 0u;
        *(v30 + 4328) = 0u;
        *(v30 + 4344) = 0u;
        *(v30 + 4360) = 0u;
        goto LABEL_19;
      }

      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        MDTrieCreate_cold_1(v13);
      }

      v13 = 0;
      *__error() = v33;
    }
  }

LABEL_23:
  v35 = *MEMORY[0x1E69E9840];
  return v13;
}

void *MDTrieOpenReadOnly(int *a1, const char *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0x3368uLL, 0x10B0040EFDB134FuLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 3182) = -1;
    *(v4 + 12752) = 1;
    v13[0] = 0;
    asprintf(v13, "%s.node.shadow", a2);
    only = fd_create_read_only(a1[1], v13[0]);
    *v5 = only;
    storage_array_ReadInit((v5 + 3), only, 1024, 0x105C89E00, 4392, 4096);
    free(v13[0]);
    v12 = 0;
    asprintf(&v12, "%s.container.shadow", a2);
    v7 = fd_create_read_only(a1[2], v12);
    v5[1] = v7;
    storage_array_ReadInit((v5 + 532), v7, 1024, 528001024, 528, 4096);
    free(v12);
    v11 = 0;
    asprintf(&v11, "%s.payload.shadow", a2);
    v8 = fd_create_read_only(a1[3], v11);
    v5[2] = v8;
    storage_array_ReadInit((v5 + 1061), v8, 1024, 344001024, 344, 4096);
    free(v11);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

BOOL MDTrieSearch(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = searchLevel(a1, 0, a2, a3, 0, 0, 0, a5, containsKey);
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }

  return result;
}

BOOL searchLevel(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8, void (*a9)(void, double))
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = a4 - a5;
  if (a4 <= a5)
  {
LABEL_5:
    v35 = 1;
    v17 = storage_array_ResolvePtr(a1 + 24, a2, 1);
    if (a7)
    {
      MDTrieNode::removePayload(v17, a6);
    }

    else if (a9 && (*(v17 + 4385) & 1) == 0)
    {
      (a9)(a8, v17 + 4112, 1, *(v17 + 4116), &v35, *(v17 + 4376));
    }

LABEL_10:
    v18 = 1;
  }

  else
  {
    v15 = a5;
    while (1)
    {
      v16 = storage_array_ResolvePtr(a1 + 24, a2, 1);
      a2 = v16[*(a3 + v15) + 2];
      if (!storage_array_ValidPtr(a1 + 24, a2, 1))
      {
        break;
      }

      ++v15;
      --v12;
      if (v15 == a4)
      {
        goto LABEL_5;
      }
    }

    v19 = v16[*(a3 + v15) + 258];
    if (storage_array_ValidPtr(a1 + 4256, v19, 1))
    {
      v31 = a8;
      v20 = 0;
      v18 = 1;
      v32 = v12;
      do
      {
        v21 = storage_array_ResolvePtr(a1 + 4256, v19, 1);
        v22 = v21[v20 + 1];
        if (storage_array_ValidPtr(a1 + 8488, v22, 1))
        {
          v23 = storage_array_ResolvePtr(a1 + 8488, v22, 1);
          if (a4 - v15 == *(v23 + 2))
          {
            v24 = a3;
            v25 = v23 + 12;
            v26 = v32;
            while (1)
            {
              v27 = *v25++;
              if (*(v24 + v15) != v27)
              {
                break;
              }

              ++v24;
              if (!--v26)
              {
                if (a7)
                {
                  if (!MDTriePayload::removePayload(v23, a6))
                  {
                    break;
                  }

                  --*v21;
                  if (v18)
                  {
                    --*v16;
                    goto LABEL_10;
                  }

                  goto LABEL_24;
                }

                if (a9 && (*(v23 + 337) & 1) == 0)
                {
                  v30 = *(v23 + 16);
                  a9(v31, *v23);
                  goto LABEL_25;
                }

                break;
              }
            }
          }
        }

        v18 = v20++ < 0x3F;
      }

      while (v20 != 64);
    }

LABEL_24:
    v18 = 0;
  }

LABEL_25:
  v28 = *MEMORY[0x1E69E9840];
  return v18;
}

void *containsKey(void *result, unsigned __int8 *a2, unsigned int a3, int a4, double a5, BOOL *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v11 = result;
    v12 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
    *v11 = v12;
    result = memcpy(v12, a2, a3);
    *(*v11 + a3) = 0;
    *(v11 + 8) = a3;
    *(v11 + 12) = a4;
    *(v11 + 16) = a5;
    *a6 = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MDTrieInsert(uint64_t result, const void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result && (v5 = result, (*(result + 12752) & 1) == 0))
  {
    pthread_rwlock_wrlock((result + 12960));
    if (payloadCounter(v5, 0) <= 999999)
    {
      addLevel(v5, 0, a2, a3, 0, a4, a5);
    }

    v12 = *MEMORY[0x1E69E9840];

    return pthread_rwlock_unlock((v5 + 12960));
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t MDTrieCount(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return payloadCounter(a1, 0);
}

void *addLevel(uint64_t a1, unint64_t a2, const void *a3, uint64_t a4, unsigned int a5, uint64_t a6, double a7)
{
  v31 = *MEMORY[0x1E69E9840];
  v14 = a4;
  MEMORY[0x1EEE9AC00](v31, a1, a2, a3, a4);
  v15 = &v30 - ((v14 + 15) & 0x1FFFFFFF0);
  bzero(v15, v14);
  if (a4)
  {
    memcpy(&v30 - ((v14 + 15) & 0x1FFFFFFF0), a3, v14);
  }

  v16 = storage_array_ResolvePtr(a1 + 24, a2, 1);
  v17 = v16;
  v18 = a4 - a5;
  if (a4 <= a5)
  {
    result = MDTrieNode::updatePayload(v16, a6, a7);
    ++*v17;
  }

  else
  {
    v19 = &v15[a5];
    v20 = *v19;
    v21 = *(v16 + 8 * v20 + 16);
    if (storage_array_ValidPtr(a1 + 24, v21, 1))
    {
      result = addLevel(a1, v21, v15, a4, a5 + 1, a6, a7);
    }

    else
    {
      v23 = *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * v20 + 2064);
      if (storage_array_ValidPtr(a1 + 4256, v23, 1))
      {
        addPayloadToContainer(a1, v23, v19, v18, a6, a7);
        if (*storage_array_ResolvePtr(a1 + 4256, v23, 1) >= 64)
        {
          *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * *v19 + 2064) = -1;
          v24 = burstLevel(a1, v23);
          v25 = storage_array_ResolvePtr(a1 + 24, a2, 1);
          *(v25 + 8 * *v19 + 16) = v24;
          ++*(v25 + 8);
        }
      }

      else
      {
        v26 = storage_array_AllocOffsetFromEnd((a1 + 4256));
        v27 = storage_array_ResolvePtr(a1 + 4256, v26, 1);
        *v27 = 0;
        *&v28 = -1;
        *(&v28 + 1) = -1;
        *(v27 + 24) = v28;
        *(v27 + 40) = v28;
        *(v27 + 56) = v28;
        *(v27 + 72) = v28;
        *(v27 + 88) = v28;
        *(v27 + 104) = v28;
        *(v27 + 120) = v28;
        *(v27 + 136) = v28;
        *(v27 + 152) = v28;
        *(v27 + 168) = v28;
        *(v27 + 184) = v28;
        *(v27 + 200) = v28;
        *(v27 + 216) = v28;
        *(v27 + 232) = v28;
        *(v27 + 248) = v28;
        *(v27 + 520) = 0;
        *(v27 + 8) = v28;
        v27 += 8;
        *(v27 + 256) = v28;
        *(v27 + 272) = v28;
        *(v27 + 288) = v28;
        *(v27 + 304) = v28;
        *(v27 + 320) = v28;
        *(v27 + 336) = v28;
        *(v27 + 352) = v28;
        *(v27 + 368) = v28;
        *(v27 + 384) = v28;
        *(v27 + 400) = v28;
        *(v27 + 416) = v28;
        *(v27 + 432) = v28;
        *(v27 + 448) = v28;
        *(v27 + 464) = v28;
        *(v27 + 480) = v28;
        *(v27 + 496) = v28;
        *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * *v19 + 2064) = v26;
        addPayloadToContainer(a1, v26, v19, v18, a6, a7);
      }

      result = storage_array_ResolvePtr(a1 + 24, a2, 1);
      ++*result;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MDTrieDelete(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result && (v4 = result, (*(result + 12752) & 1) == 0))
  {
    pthread_rwlock_wrlock((result + 12960));
    searchLevel(v4, 0, a2, a3, 0, a4, 1, 0, 0);
    v10 = *MEMORY[0x1E69E9840];

    return pthread_rwlock_unlock((v4 + 12960));
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t payloadCounter(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = storage_array_ResolvePtr(a1 + 24, a2, 1);
  v4 = 0;
  v6 = v3 + 2;
  v5 = *v3;
  do
  {
    if (v6[v4] != -1)
    {
      v5 += payloadCounter(a1);
    }

    ++v4;
  }

  while (v4 != 256);
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t MDTrieSync(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result && (v4 = result, (*(result + 12752) & 1) == 0))
  {
    storage_array_FlushHeader((result + 24), a2, a3, a4);
    storage_array_Sync((v4 + 24), 1, 1);
    storage_array_FlushHeader((v4 + 4256), v7, v8, v9);
    storage_array_Sync((v4 + 4256), 1, 1);
    storage_array_FlushHeader((v4 + 8488), v10, v11, v12);
    storage_array_Sync((v4 + 8488), 1, 1);
    v13 = *MEMORY[0x1E69E9840];

    return writeToShadowTrie(v4);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t storage_array_FlushHeader(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](v18, a1, a1[2], a3, a4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v6, v5);
  v7 = storage_array_FdPtr(a1);
  fd_pread(v7, v6, a1[2], 0);
  v17 = v6;
  storage_array_HeaderStore(a1, &v17, v8, v9, v10, v11, v12, v13);
  v14 = storage_array_FdPtr(a1);
  result = fd_pwrite(v14, v6, a1[2], 0);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t writeToShadowTrie(uint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((*(result + 12752) & 1) == 0)
  {
    v1 = result;
    pthread_rwlock_wrlock((result + 12760));
    v22 = 0;
    bzero(v29, 0x400uLL);
    bzero(__str, 0x400uLL);
    bzero(v27, 0x400uLL);
    v2 = faccurate_realpath(*(v1 + 12728), v29);
    Current = CFAbsoluteTimeGetCurrent();
    snprintf(__str, 0x400uLL, "%s/%s.node", v2, *(v1 + 12736));
    snprintf(v27, 0x400uLL, "%s/%s.node.shadow", v2, *(v1 + 12736));
    if (copyFile(*(v1 + 12728), __str, *(v1 + 12728), v27, &v22))
    {
      if (dword_1EB7ABB10 < 5)
      {
        goto LABEL_9;
      }

      v4 = *__error();
      v5 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v1 + 12736);
        v7 = CFAbsoluteTimeGetCurrent() - Current;
        *buf = 136315394;
        v24 = v6;
        v25 = 2048;
        v26 = v7;
        _os_log_impl(&dword_1B238B000, v5, OS_LOG_TYPE_DEFAULT, "%s.node.shadow took %f seconds", buf, 0x16u);
      }
    }

    else
    {
      v4 = *__error();
      v8 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        writeToShadowTrie();
      }
    }

    *__error() = v4;
LABEL_9:
    v9 = CFAbsoluteTimeGetCurrent();
    snprintf(__str, 0x400uLL, "%s/%s.container", v2, *(v1 + 12736));
    snprintf(v27, 0x400uLL, "%s/%s.container.shadow", v2, *(v1 + 12736));
    if (copyFile(*(v1 + 12728), __str, *(v1 + 12728), v27, &v22))
    {
      if (dword_1EB7ABB10 < 5)
      {
        goto LABEL_16;
      }

      v10 = *__error();
      v11 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v1 + 12736);
        v13 = CFAbsoluteTimeGetCurrent() - v9;
        *buf = 136315394;
        v24 = v12;
        v25 = 2048;
        v26 = v13;
        _os_log_impl(&dword_1B238B000, v11, OS_LOG_TYPE_DEFAULT, "%s.container.shadow took %f seconds", buf, 0x16u);
      }
    }

    else
    {
      v10 = *__error();
      v14 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        writeToShadowTrie();
      }
    }

    *__error() = v10;
LABEL_16:
    v15 = CFAbsoluteTimeGetCurrent();
    snprintf(__str, 0x400uLL, "%s/%s.payload", v2, *(v1 + 12736));
    snprintf(v27, 0x400uLL, "%s/%s.payload.shadow", v2, *(v1 + 12736));
    if (copyFile(*(v1 + 12728), __str, *(v1 + 12728), v27, &v22))
    {
      if (dword_1EB7ABB10 < 5)
      {
LABEL_23:
        result = pthread_rwlock_unlock((v1 + 12760));
        goto LABEL_24;
      }

      v16 = *__error();
      v17 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v1 + 12736);
        v19 = CFAbsoluteTimeGetCurrent() - v15;
        *buf = 136315394;
        v24 = v18;
        v25 = 2048;
        v26 = v19;
        _os_log_impl(&dword_1B238B000, v17, OS_LOG_TYPE_DEFAULT, "%s.payload.shadow took %f seconds", buf, 0x16u);
      }
    }

    else
    {
      v16 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        writeToShadowTrie();
      }
    }

    *__error() = v16;
    goto LABEL_23;
  }

LABEL_24:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void MDTrieClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 && (MDTrieSync(a1, a2, a3, a4), storage_array_Close(a1 + 24), storage_array_Close(a1 + 4256), storage_array_Close(a1 + 8488), (*(a1 + 12752) & 1) == 0))
  {
    pthread_rwlock_destroy((a1 + 12960));
    v6 = *MEMORY[0x1E69E9840];

    pthread_rwlock_destroy((a1 + 12760));
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }
}

uint64_t MDTrieGetFd(uint64_t result, _DWORD *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if ((*(result + 12752) & 1) == 0)
    {
      pthread_rwlock_rdlock((result + 12960));
      writeToShadowTrie(v2);
      pthread_rwlock_unlock((v2 + 12960));
      pthread_rwlock_rdlock((v2 + 12760));
      *a2 = 0;
      v7[0] = 0;
      asprintf(v7, "%s.node.shadow", *(v2 + 12736));
      a2[1] = openat(*(v2 + 12728), v7[0], 0);
      free(v7[0]);
      v6 = 0;
      asprintf(&v6, "%s.container.shadow", *(v2 + 12736));
      a2[2] = openat(*(v2 + 12728), v6, 0);
      free(v6);
      v5 = 0;
      asprintf(&v5, "%s.payload.shadow", *(v2 + 12736));
      a2[3] = openat(*(v2 + 12728), v5, 0);
      free(v5);
      result = pthread_rwlock_unlock((v2 + 12760));
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void MDTrieEnumerateEntry(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v6 = 0;
    enumerateNode(a1, a2, v7, a3, &v6, a4, a5);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void enumerateNode(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = storage_array_ResolvePtr(a1 + 24, a2, 1);
  if (v12)
  {
    v13 = v12;
    if ((*(v12 + 4385) & 1) == 0)
    {
      v15 = 0;
      v16 = v12 + 2064;
      v46 = v12 + 16;
      v47 = v12 + 2064;
      v48 = v12;
      do
      {
        if (*a5 >= a4)
        {
          break;
        }

        if (*(v16 + 8 * v15) == -1)
        {
          if (*(v46 + 8 * v15) == -1)
          {
            goto LABEL_15;
          }

          v29 = strlen(a3);
          v30 = strncat(a3, (v13 + 4112), 49 - v29);
          v31 = strlen(v30);
          if (v31 >= 0x32)
          {
            enumerateNode(v31, v32, v33, v34, v35, v36, v37, v38);
          }

          v28 = v31;
          enumerateNode(a1, *(v46 + 8 * v15), a3, a4, a5, a6, a7);
          if (!v28)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v17 = strlen(a3);
          v18 = strncat(a3, (v13 + 4112), 49 - v17);
          v19 = strlen(v18);
          if (v19 >= 0x32)
          {
            enumerateNode(v19, v20, v21, v22, v23, v24, v25, v26);
          }

          v49 = v19;
          v27 = *(v16 + 8 * v15);
          if ((*(storage_array_ResolvePtr(a1 + 4256, v27, 1) + 520) & 1) == 0)
          {
            for (i = 0; ; ++i)
            {
              v40 = *(storage_array_ResolvePtr(a1 + 4256, v27, 1) + 8 * i + 8);
              if (v40 != -1)
              {
                v41 = storage_array_ResolvePtr(a1 + 8488, v40, 1);
                if ((*(v41 + 337) & 1) == 0)
                {
                  v42 = v41;
                  v43 = *a5 + 1;
                  *a5 = v43;
                  if (a6)
                  {
                    printf("key: %s%s, payload: %d, score: %f\n", a3, (v41 + 12), *(v41 + 64), *v41);
                    v43 = *a5;
                  }

                  v44 = v43 >= a4;
                  v52 = v44;
                  if (a7)
                  {
                    __s = 0;
                    asprintf(&__s, "%s%s", a3, (v42 + 12));
                    v45 = strlen(__s);
                    (*(a7 + 16))(a7, __s, v45, *(v42 + 64), &v52, *v42);
                    free(__s);
                    v44 = v52;
                  }

                  if (v44)
                  {
                    break;
                  }
                }
              }

              if (i > 0x3E)
              {
                break;
              }
            }
          }

          v16 = v47;
          v13 = v48;
          v28 = v49;
          if (!v49)
          {
            goto LABEL_15;
          }
        }

        a3[v28] = 0;
LABEL_15:
        ++v15;
      }

      while (v15 != 256);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t cacheFileExists(int a1, char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(__filename, 0x400uLL);
  result = faccurate_realpath(a1, __filename);
  if (result)
  {
    v5 = result;
    v6 = strlen(result);
    snprintf((v5 + v6), 1024 - v6, "/%s", a2);
    result = fopen(__filename, "r");
    if (result)
    {
      fclose(result);
      result = 1;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

ssize_t ___ZL10createTrieiPciibb_block_invoke(ssize_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(result + 40) == 1)
  {
    v1 = *(result + 32);
    v4 = *v1;
    v2 = v1 + 3;
    v3 = v4;
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];

    return storage_array_RestoreHeader(v2, v3);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

ssize_t storage_array_RestoreHeader(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x400uLL);
  v6 = v7;
  result = fd_pread(a2, v7, 0x400uLL, 0);
  if (result == 1024)
  {
    result = storage_array_HeaderRestore(a1, &v6, 1);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

ssize_t ___ZL10createTrieiPciibb_block_invoke_2(ssize_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(result + 40) == 1)
  {
    v1 = *(result + 32);
    v2 = *(v1 + 8);
    v3 = *MEMORY[0x1E69E9840];
    v4 = *MEMORY[0x1E69E9840];

    return storage_array_RestoreHeader((v1 + 4256), v2);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

ssize_t ___ZL10createTrieiPciibb_block_invoke_3(ssize_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(result + 40) == 1)
  {
    v1 = *(result + 32);
    v2 = *(v1 + 16);
    v3 = *MEMORY[0x1E69E9840];
    v4 = *MEMORY[0x1E69E9840];

    return storage_array_RestoreHeader((v1 + 8488), v2);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

BOOL MDTriePayload::removePayload(MDTriePayload *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(this + 16);
  if (*(this + 336))
  {
    v3 = (v2 & a2) != 0;
  }

  else
  {
    v3 = v2 == a2;
  }

  if (v3)
  {
    if (!*(this + 336))
    {
      *(this + 41) = 0;
LABEL_14:
      *(this + 16) = 0;
      *(this + 337) = 1;
      goto LABEL_15;
    }

    v4 = 0;
    v5 = this + 72;
    do
    {
      if (((1 << v4) & a2) != 0)
      {
        --*&v5[8 * v4];
        --*(this + 41);
        if (!*&v5[8 * v4])
        {
          v2 &= ~(1 << v4);
          *(this + 16) = v2;
        }
      }

      ++v4;
    }

    while (v4 != 32);
    if (!*(this + 41))
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL MDTrieNode::removePayload(MDTrieNode *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1029);
  if (*(this + 4384))
  {
    v3 = (v2 & a2) != 0;
  }

  else
  {
    v3 = v2 == a2;
  }

  if (v3)
  {
    if (!*(this + 4384))
    {
      *this = 0;
LABEL_14:
      *(this + 1029) = 0;
      *(this + 4385) = 1;
      goto LABEL_15;
    }

    for (i = 515; i != 547; ++i)
    {
      v5 = 1 << (i - 3);
      if ((v5 & a2) != 0)
      {
        v6 = *(this + i);
        --*this;
        *(this + i) = --v6;
        if (!v6)
        {
          v2 &= ~v5;
          *(this + 1029) = v2;
        }
      }
    }

    if (!*this)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t addPayloadToContainer(uint64_t a1, unint64_t a2, char *a3, unsigned int a4, unsigned int a5, double a6)
{
  v10 = 0;
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = a4 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = a4;
  do
  {
    v14 = storage_array_ResolvePtr(a1 + 4256, a2, 1);
    v15 = v14[v10 + 1];
    if (storage_array_ValidPtr(a1 + 8488, v15, 1))
    {
      v16 = storage_array_ResolvePtr(a1 + 8488, v15, 1);
      if (v12)
      {
        if (*(v16 + 8) == a4)
        {
          v17 = (v16 + 12);
          v18 = a3;
          v19 = v13;
          while (1)
          {
            v21 = *v18++;
            v20 = v21;
            v22 = *v17++;
            if (v20 != v22)
            {
              break;
            }

            if (!--v19)
            {
              ++*v14;
              v26 = *MEMORY[0x1E69E9840];

              return MDTriePayload::updatePayload(v16, a5, a6);
            }
          }
        }
      }
    }

    ++v10;
  }

  while (v10 != 64);
  v23 = 8;
  while (1)
  {
    v24 = storage_array_ResolvePtr(a1 + 4256, a2, 1);
    result = storage_array_ValidPtr(a1 + 8488, *(v24 + v23), 1);
    if ((result & 1) == 0)
    {
      break;
    }

    v23 += 8;
    if (v23 == 520)
    {
      goto LABEL_24;
    }
  }

  v27 = storage_array_AllocOffsetFromEnd((a1 + 8488));
  v28 = storage_array_ResolvePtr(a1 + 8488, v27, 1);
  MDTriePayload::initMDTriePayload(v28, a3, a4, a5, a6, *(a1 + 12753));
  result = storage_array_ResolvePtr(a1 + 4256, a2, 1);
  *(result + v23) = v27;
  ++*result;
LABEL_24:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t burstLevel(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = storage_array_AllocOffsetFromEnd((a1 + 24));
  v5 = storage_array_ResolvePtr(a1 + 24, v4, 1);
  v6 = *(a1 + 12753);
  *v5 = 0;
  *(v5 + 8) = 0;
  memset((v5 + 16), 255, 0x1000uLL);
  *(v5 + 4116) = 0;
  *(v5 + 4376) = 0;
  *(v5 + 4384) = v6;
  *(v5 + 4385) = 0;
  *(v5 + 4120) = 0u;
  *(v5 + 4136) = 0u;
  *(v5 + 4152) = 0u;
  *(v5 + 4168) = 0u;
  *(v5 + 4184) = 0u;
  *(v5 + 4200) = 0u;
  *(v5 + 4216) = 0u;
  *(v5 + 4232) = 0u;
  *(v5 + 4248) = 0u;
  *(v5 + 4264) = 0u;
  *(v5 + 4280) = 0u;
  *(v5 + 4296) = 0u;
  *(v5 + 4312) = 0u;
  *(v5 + 4328) = 0u;
  *(v5 + 4344) = 0u;
  *(v5 + 4360) = 0u;
  for (i = 8; i != 520; i += 8)
  {
    v8 = *(storage_array_ResolvePtr(a1 + 4256, a2, 1) + i);
    if (storage_array_ValidPtr(a1 + 8488, v8, 1))
    {
      addBurstLevel(a1, v4, v8);
    }
  }

  *(storage_array_ResolvePtr(a1 + 4256, a2, 1) + 520) = 1;
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t MDTriePayload::updatePayload(uint64_t this, int a2, double a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(this + 336) == 1)
  {
    for (i = 0; i != 32; ++i)
    {
      if (((1 << i) & a2) != 0)
      {
        ++*(this + 72 + 8 * i);
        ++*(this + 328);
        *(this + 64) |= 1 << i;
      }
    }
  }

  else
  {
    *(this + 64) = a2;
    *(this + 328) = 1;
  }

  *this = a3;
  *(this + 337) = 0;
  v4 = *MEMORY[0x1E69E9840];
  return this;
}

_BYTE *MDTriePayload::initMDTriePayload(MDTriePayload *this, char *a2, unsigned int a3, unsigned int a4, double a5, int a6)
{
  v16 = *MEMORY[0x1E69E9840];
  *(this + 2) = a3;
  *this = a5;
  *(this + 16) = a4;
  *(this + 336) = a6;
  if (a6)
  {
    v6 = 0;
    v7 = vdup_n_s32(a4);
    v8 = 0x100000000;
    v9 = vdupq_n_s64(1uLL);
    do
    {
      v10 = vtst_s32(vshl_u32(0x100000001, v8), v7);
      v11.i64[0] = v10.u32[0];
      v11.i64[1] = v10.u32[1];
      *(this + v6 + 72) = vandq_s8(v11, v9);
      v8 = vadd_s32(v8, 0x200000002);
      v6 += 16;
    }

    while (v6 != 256);
  }

  *(this + 12) = 0u;
  result = this + 12;
  *(result + 316) = 1;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *(result + 24) = 0;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = *a2++;
      *result++ = v14;
      --v13;
    }

    while (v13);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t addBurstLevel(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  result = storage_array_ResolvePtr(a1 + 8488, a3, 1);
  if (result)
  {
    v10 = result;
    v11 = *result;
    v12 = *(result + 64);
    v13 = *(result + 8);
    MEMORY[0x1EEE9AC00](v9, result, v6, v7, v8);
    v14 = v26 - ((v13 + 15) & 0x1FFFFFFF0);
    bzero(v14, v13);
    if (!v13)
    {
      goto LABEL_6;
    }

    for (i = 0; i != v13; ++i)
    {
      v14[i] = *(v10 + 12 + i);
    }

    if (v13 != 1)
    {
      v18 = storage_array_ResolvePtr(a1 + 24, a2, 1);
      *(v18 + 4112) = *v14;
      v20 = v14[1];
      v19 = (v14 + 1);
      v21 = *(v18 + 8 * v20 + 2064);
      if (storage_array_ValidPtr(a1 + 4256, v21, 1))
      {
        addPayloadToContainer(a1, v21, v19, v13 - 1, v12, v11);
        result = storage_array_ResolvePtr(a1 + 4256, v21, 1);
        if (*result >= 64)
        {
          *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * *v19 + 2064) = -1;
          v22 = burstLevel(a1, v21);
          result = storage_array_ResolvePtr(a1 + 24, a2, 1);
          *(result + 8 * *v19 + 16) = v22;
          ++*(result + 8);
        }
      }

      else
      {
        v23 = storage_array_AllocOffsetFromEnd((a1 + 4256));
        v24 = storage_array_ResolvePtr(a1 + 4256, v23, 1);
        *v24 = 0;
        *&v25 = -1;
        *(&v25 + 1) = -1;
        *(v24 + 24) = v25;
        *(v24 + 40) = v25;
        *(v24 + 56) = v25;
        *(v24 + 72) = v25;
        *(v24 + 88) = v25;
        *(v24 + 104) = v25;
        *(v24 + 120) = v25;
        *(v24 + 136) = v25;
        *(v24 + 152) = v25;
        *(v24 + 168) = v25;
        *(v24 + 184) = v25;
        *(v24 + 200) = v25;
        *(v24 + 216) = v25;
        *(v24 + 232) = v25;
        *(v24 + 248) = v25;
        *(v24 + 520) = 0;
        *(v24 + 8) = v25;
        v24 += 8;
        *(v24 + 256) = v25;
        *(v24 + 272) = v25;
        *(v24 + 288) = v25;
        *(v24 + 304) = v25;
        *(v24 + 320) = v25;
        *(v24 + 336) = v25;
        *(v24 + 352) = v25;
        *(v24 + 368) = v25;
        *(v24 + 384) = v25;
        *(v24 + 400) = v25;
        *(v24 + 416) = v25;
        *(v24 + 432) = v25;
        *(v24 + 448) = v25;
        *(v24 + 464) = v25;
        *(v24 + 480) = v25;
        *(v24 + 496) = v25;
        *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * *v19 + 2064) = v23;
        result = addPayloadToContainer(a1, v23, v19, v13 - 1, v12, v11);
      }
    }

    else
    {
LABEL_6:
      v16 = storage_array_ResolvePtr(a1 + 24, a2, 1);
      result = MDTrieNode::updatePayload(v16, v12, v11);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MDTrieNode::updatePayload(uint64_t this, int a2, double a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 4384) == 1)
  {
    for (i = 515; i != 547; ++i)
    {
      v4 = 1 << (i - 3);
      if ((v4 & a2) != 0)
      {
        ++*(this + 8 * i);
        ++*this;
        *(this + 4116) |= v4;
      }
    }
  }

  else
  {
    *(this + 4116) = a2;
    *this = 1;
  }

  *(this + 4376) = a3;
  v5 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t MDDictionaryUIntUIntGetTypeID()
{
  v2 = *MEMORY[0x1E69E9840];
  result = __kMDDictionaryUIntUIntTypeID;
  if (!__kMDDictionaryUIntUIntTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kMDDictionaryUIntUIntTypeID = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MDDictionaryUIntUIntCreate()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!__kMDDictionaryUIntUIntTypeID)
  {
    __kMDDictionaryUIntUIntTypeID = _CFRuntimeRegisterClass();
  }

  v0 = *MEMORY[0x1E69E9840];

  return _CFRuntimeCreateInstance();
}

uint64_t MDDictionaryUIntUIntCreateCopy(uint64_t a1, uint64_t a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (!__kMDDictionaryUIntUIntTypeID)
  {
    __kMDDictionaryUIntUIntTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(Instance + 16);
  std::unordered_map<unsigned long long,unsigned long long>::unordered_map(v6, a2 + 16);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__move_assign(Instance + 16, v6);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(v6);
  v4 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t MDDictionaryUIntUIntGetCount(uint64_t a1)
{
  result = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

BOOL MDDictionaryUIntUIntContainsKey(uint64_t a1, unint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v4) != 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *MDDictionaryUIntUIntAddValue(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = a3;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long> const&>((a1 + 16), v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *MDDictionaryUIntUIntSetValue(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,unsigned long long &>((a1 + 16), v7);
  if ((v4 & 1) == 0)
  {
    result[3] = a3;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *MDDictionaryUIntUIntReplaceValue(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v8);
  if (result)
  {
    result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,unsigned long long &>((a1 + 16), v8);
    if ((v5 & 1) == 0)
    {
      result[3] = a3;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *MDDictionaryUIntUIntGetValue(uint64_t a1, unint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v6);
  if (result)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v6);
    if (!v4)
    {
      abort();
    }

    result = v4[3];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MDDictionaryUIntUIntIncrementValue(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v11);
  if (v5)
  {
    v6 = v5[3] + a3;
LABEL_5:
    v5[3] = v6;
    goto LABEL_6;
  }

  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,unsigned long long &>((a1 + 16), v11);
  if ((v7 & 1) == 0)
  {
    v6 = a3;
    goto LABEL_5;
  }

LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

void *MDDictionaryUIntUIntRemoveAllValues(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 16);

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(v2);
}

uint64_t MDDictionaryUIntUIntIterateValues(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  for (i = *(result + 32); i; i = *i)
  {
    result = (*(a2 + 16))(a2, i[2], i[3]);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

double __MDDictionaryUIntUIntInit(_OWORD *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *(a1 + 12) = 1065353216;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MDDictionaryUIntUIntFinalize(char *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];
  v2 = a1 + 16;

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(v2);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
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

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t std::unordered_map<unsigned long long,unsigned long long>::unordered_map(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long> const&>(a1, i + 2);
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  v10 = *MEMORY[0x1E69E9840];
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

  if (prime >= *&v4)
  {
    goto LABEL_19;
  }

  v6 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
  if (*&v4 < 3uLL || (v7 = vcnt_s8(v4), v7.i16[0] = vaddlv_u8(v7), v7.u32[0] > 1uLL))
  {
    v6 = std::__next_prime(v6);
  }

  else
  {
    v8 = 1 << -__clz(v6 - 1);
    if (v6 >= 2)
    {
      v6 = v8;
    }
  }

  if (prime <= v6)
  {
    prime = v6;
  }

  if (prime < *&v4)
  {
LABEL_6:
    v5 = *MEMORY[0x1E69E9840];

    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__do_rehash<true>(a1, prime);
  }

  else
  {
LABEL_19:
    v9 = *MEMORY[0x1E69E9840];
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
  v4 = *MEMORY[0x1E69E9840];
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long> const&>(void *a1, unint64_t *a2)
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

  v9 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(void *result)
{
  v6 = *MEMORY[0x1E69E9840];
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

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
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
  if (v6)
  {
    result = *v6;
    if (*v6)
    {
      do
      {
        v8 = result[1];
        if (v3 == v8)
        {
          if (result[2] == v3)
          {
            break;
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
            goto LABEL_18;
          }
        }

        result = *result;
      }

      while (result);
    }
  }

  else
  {
LABEL_18:
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
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
  if (v6)
  {
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
            break;
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
            goto LABEL_18;
          }
        }

        result = *result;
      }

      while (result);
    }
  }

  else
  {
LABEL_18:
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,unsigned long long &>(void *a1, unint64_t *a2)
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

  v9 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

CFStringRef MDJournalReaderMDPlistObjectCopy(const __CFAllocator *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(a2 + 2);
  result = _MDPlistContainerCopyCSObject(a1, &v10, 0x4000uLL, a4, a5, a6, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MDJournalReaderProcessRecordBatchWithBytes_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 == 2 || a3 == 3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    v9 = *a5;
    v10 = *(a5 + 2);
    v6(v5, a2, a4, &v9);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t MDJournalReaderProcessWithBytes(int *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v17 = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __MDJournalReaderProcessWithBytes_block_invoke;
  v14[3] = &unk_1E7B25AF0;
  v14[4] = a5;
  v14[5] = v15;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __MDJournalReaderProcessWithBytes_block_invoke_3;
  v13[3] = &unk_1E7B25B18;
  v13[5] = a3;
  v13[6] = v15;
  v13[4] = a4;
  if (a2 < 0xD)
  {
    goto LABEL_15;
  }

  v8 = 0;
  v9 = *a1;
  if (*a1 > -262275348)
  {
    if (v9 > -261161236)
    {
      if (v9 == -260112659)
      {
        goto LABEL_14;
      }

      v10 = -261161235;
    }

    else
    {
      if (v9 == -262275347)
      {
        goto LABEL_14;
      }

      v10 = -262209811;
    }
  }

  else
  {
    if (v9 <= -263323924)
    {
      if (v9 != -264372499)
      {
        v10 = -264306963;
        goto LABEL_13;
      }

LABEL_14:
      v8 = parse_mobile_journal(a1, a2, v14, v13, 0, a6, a7, a8);
      goto LABEL_15;
    }

    if (v9 == -263323923)
    {
      goto LABEL_14;
    }

    v10 = -263258387;
  }

LABEL_13:
  if (v9 == v10)
  {
    goto LABEL_14;
  }

LABEL_15:
  _Block_object_dispose(v15, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __MDJournalReaderProcessWithBytes_block_invoke(uint64_t a1, int a2, int a3, char *cStr, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (a3 == 2)
  {
    *&v33 = 0;
    *(&v33 + 1) = &v33;
    v34 = 0x2000000000;
    Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 0x40000000;
    v32[2] = __MDJournalReaderProcessWithBytes_block_invoke_2;
    v32[3] = &unk_1E7B25AC8;
    v32[4] = &v33;
    v30 = *a5;
    v31 = *(a5 + 16);
    _MDPlistArrayIterate(&v30, v32, v20, v21, v22, v23, v24, v25);
    if (CFArrayGetCount(*(*(&v33 + 1) + 24)))
    {
      v26 = *(*(&v33 + 1) + 24);
      v27 = *(*(a1 + 40) + 8);
      (*(*(a1 + 32) + 16))();
      v19 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
    }

    else
    {
      v19 = 1;
    }

    CFRelease(*(*(&v33 + 1) + 24));
    _Block_object_dispose(&v33, 8);
  }

  else if (a3 == 3 && (v33 = *a5, v34 = *(a5 + 16), (v15 = _MDPlistContainerCopyCSObject(v8, &v33, 0x4000uLL, v9, v10, v11, v12, v13)) != 0))
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFArrayGetTypeID() && CFArrayGetCount(v16))
    {
      v18 = *(*(a1 + 40) + 8);
      (*(*(a1 + 32) + 16))();
      v19 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
    }

    else
    {
      v19 = 1;
    }

    CFRelease(v16);
  }

  else
  {
    v19 = 1;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v19 & 1;
}

void __MDJournalReaderProcessWithBytes_block_invoke_2(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  v22 = 0;
  v23 = *a2;
  v24 = *(a2 + 2);
  if (_MDPlistDictionaryGetPlistObjectForKey(&v23, "_kMDItemExternalID", 18, &v21, a5, a6, a7, a8))
  {
    v20 = 0;
    v19 = 0;
    v23 = v21;
    v24 = v22;
    if (_MDPlistStringGetValue(&v23, &v20, &v19))
    {
      v14 = *MEMORY[0x1E695E480];
      v23 = v21;
      v24 = v22;
      v15 = _MDPlistContainerCopyCSObject(v14, &v23, 0x4000uLL, v9, v10, v11, v12, v13);
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CFStringGetTypeID())
        {
          CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v16);
        }

        CFRelease(v16);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __MDJournalReaderProcessWithBytes_block_invoke_3(uint64_t a1, int a2, char *cStr, uint64_t a4, __int128 *a5, uint64_t a6, __int128 *a7, int a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E695E480];
  v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  v36 = *a7;
  v37 = *(a7 + 2);
  PlistObjectType = _MDPlistGetPlistObjectType(&v36);
  v36 = *a5;
  v37 = *(a5 + 2);
  v20 = _MDPlistContainerCopyCSObject(v12, &v36, 0, v15, v16, v17, v18, v19);
  if (!v20)
  {
    v33 = 1;
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v26 = v20;
  if (PlistObjectType && (v36 = *a7, v37 = *(a7 + 2), (v27 = _MDPlistContainerCopyCSObject(v12, &v36, 0, v21, v22, v23, v24, v25)) != 0))
  {
    v28 = v27;
    MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, v26);
    v30 = MutableCopy;
    if (MutableCopy)
    {
      CFDictionarySetValue(MutableCopy, @"kMDItemTextContent", v28);
    }

    CFRelease(v26);
    CFRelease(v28);
  }

  else
  {
    v30 = v26;
  }

  v31 = *(*(a1 + 48) + 8);
  v32 = 40;
  if (a8)
  {
    v32 = 32;
  }

  (*(*(a1 + v32) + 16))();
  v33 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  CFRelease(v30);
  if (v13)
  {
LABEL_11:
    CFRelease(v13);
  }

LABEL_12:
  v34 = *MEMORY[0x1E69E9840];
  return v33 & 1;
}

BOOL _MDPlistBytesAppendPlist(uint64_t a1, const __CFString *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = _MDPlistBytesBeginPlist(a1) && __MDPlistBytesAddObject(a1, a2) && _MDPlistBytesEndPlist(a1);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistBytesBeginPlist(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (*(a1 + 72) != -1)
    {
      *(a1 + 32) = 2410;
      v10 = _MDLogForCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        _MDPlistBytesBeginPlist_cold_1();
      }

LABEL_15:
      v8 = 0;
      v11 = *MEMORY[0x1E69E9840];
      return v8;
    }

    v2 = *(a1 + 104);
    if (v2 + 16 < *(a1 + 112))
    {
      goto LABEL_8;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, 0x10u, 0));
  v2 = *(a1 + 104);
LABEL_8:
  v3 = *MEMORY[0x1E69E9AC8];
  v4 = -*MEMORY[0x1E69E9AC8];
  if ((((v2 + 16) ^ v2) & v4) != 0 && (((v2 + 16) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v5 = 16 << *MEMORY[0x1E69E9AC0];
    if (v5 >= 4 * v3)
    {
      madvise(((v3 - 1 + v2) & v4), v5, 3);
      v2 = *(a1 + 104);
    }
  }

  *v2 = 0x6D64303331323334;
  v6 = (v2 + 8);
  *(a1 + 104) = v6;
  *(a1 + 40) = v6;
  v7 = *(a1 + 104);
  *v7 = 0;
  *(a1 + 104) = v7 + 1;
  v8 = 1;
  *(a1 + 56) = 1;
  **(a1 + 48) = 2281701377;
  *(a1 + 72) = 0;
  *(a1 + 96) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  *(a1 + 34) |= 2u;
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

__CFString *_MDPlistBytesCopyPlistAtIndexWithCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E695E480];

  return _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(v9, a1, a2, a3, a4);
}

uint64_t _MDPlistEnumerateQueryResults(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  result = [a1 enumerateQueryResults:a2 attributeSize:a3 stringCache:a4 usingBlock:a5];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistBytesGetTypeID()
{
  v2 = *MEMORY[0x1E69E9840];
  if (qword_1ED6F3F50 != -1)
  {
    _MDPlistBytesGetTypeID_cold_1();
  }

  result = qword_1ED6F3F58;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *__MDPlistBytesCopyDebugDescription(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 52 * gMDPlistBytesDebugDescriptionDumpMaxLines + 52);
  v3 = Mutable;
  if (gMDPlistBytesDebugDescriptionDumpMaxLines <= 0)
  {
    v4 = "";
  }

  else
  {
    v4 = "[";
  }

  CFStringAppendFormat(Mutable, 0, @"<_MDPlistBytes: %p>%s", a1, v4);
  if (gMDPlistBytesDebugDescriptionDumpMaxLines >= 1)
  {
    v5 = *(a1 + 16) >> 3;
    v37 = v5;
    if (v5 <= gMDPlistBytesDebugDescriptionDumpMaxLines)
    {
      v6 = v5;
    }

    else
    {
      v6 = (gMDPlistBytesDebugDescriptionDumpMaxLines - 1);
    }

    v38 = v6;
    if (v6)
    {
      v7 = (*(a1 + 8) + 3);
      v8 = 0xFFFFFF;
      v9 = MEMORY[0x1E69E9830];
      v10 = v6;
      do
      {
        CFStringAppendFormat(v3, 0, @"\n    0x%016llx, // [0x%06x] - |", *(v7 - 3), v8 & 0xFFFFFF);
        v13 = *(v7 - 3);
        if ((v13 & 0x80000000) != 0)
        {
          v14 = __maskrune(*(v7 - 3), 0x40000uLL);
        }

        else
        {
          v14 = *(v9 + 4 * v13 + 60) & 0x40000;
        }

        if (v14)
        {
          v15 = v13;
        }

        else
        {
          v15 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v15);
        v16 = *(v7 - 2);
        if ((v16 & 0x80000000) != 0)
        {
          v17 = __maskrune(*(v7 - 2), 0x40000uLL);
        }

        else
        {
          v17 = *(v9 + 4 * v16 + 60) & 0x40000;
        }

        if (v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v18);
        v19 = *(v7 - 1);
        if ((v19 & 0x80000000) != 0)
        {
          v20 = __maskrune(*(v7 - 1), 0x40000uLL);
        }

        else
        {
          v20 = *(v9 + 4 * v19 + 60) & 0x40000;
        }

        if (v20)
        {
          v21 = v19;
        }

        else
        {
          v21 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v21);
        v22 = *v7;
        if ((v22 & 0x80000000) != 0)
        {
          v23 = __maskrune(*v7, 0x40000uLL);
        }

        else
        {
          v23 = *(v9 + 4 * v22 + 60) & 0x40000;
        }

        if (v23)
        {
          v24 = v22;
        }

        else
        {
          v24 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v24);
        v25 = v7[1];
        if ((v25 & 0x80000000) != 0)
        {
          v26 = __maskrune(v7[1], 0x40000uLL);
        }

        else
        {
          v26 = *(v9 + 4 * v25 + 60) & 0x40000;
        }

        if (v26)
        {
          v27 = v25;
        }

        else
        {
          v27 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v27);
        v28 = v7[2];
        if ((v28 & 0x80000000) != 0)
        {
          v29 = __maskrune(v7[2], 0x40000uLL);
        }

        else
        {
          v29 = *(v9 + 4 * v28 + 60) & 0x40000;
        }

        if (v29)
        {
          v30 = v28;
        }

        else
        {
          v30 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v30);
        v31 = v7[3];
        if ((v31 & 0x80000000) != 0)
        {
          v32 = __maskrune(v7[3], 0x40000uLL);
        }

        else
        {
          v32 = *(v9 + 4 * v31 + 60) & 0x40000;
        }

        if (v32)
        {
          v33 = v31;
        }

        else
        {
          v33 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v33);
        v34 = v7[4];
        if ((v34 & 0x80000000) != 0)
        {
          v11 = __maskrune(v7[4], 0x40000uLL);
        }

        else
        {
          v11 = *(v9 + 4 * v34 + 60) & 0x40000;
        }

        if (v11)
        {
          v12 = v34;
        }

        else
        {
          v12 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v12);
        CFStringAppendCString(v3, "|", 0x600u);
        ++v8;
        v7 += 8;
        --v10;
      }

      while (v10);
    }

    if (v37 > v38)
    {
      CFStringAppendFormat(v3, 0, @"\n    // ... %i more lines suppressed ...", (v37 - v38));
    }

    CFStringAppendCString(v3, "\n]", 0x600u);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t _MDPlistBytesGetByteVectorCount(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!*(result + 32))
    {
      result = *(result + 16);
      v3 = *MEMORY[0x1E69E9840];
      v4 = *MEMORY[0x1E69E9840];
      return result;
    }

    result = 0;
  }

  v1 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistBytesGetByteVector(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!*(result + 32))
    {
      result = *(result + 8);
      v3 = *MEMORY[0x1E69E9840];
      v4 = *MEMORY[0x1E69E9840];
      return result;
    }

    result = 0;
  }

  v1 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

_MDPlistBytes *_MDPlistBytesCreateWithDeallocator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [[_MDPlistBytes alloc] initWithByteVector:a2 count:a3 trusted:0 deallocator:a4];
    v5 = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    v6 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    if (qword_1ED6F3FF0 != -1)
    {
      _MDPlistBytesCreateWithDeallocator_cold_1();
    }

    v8 = qword_1ED6F3FE8;
    v9 = *MEMORY[0x1E69E9840];

    return CFRetain(v8);
  }
}

_MDPlistBytes *_MDPlistBytesCreateTrustedWithDeallocator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [[_MDPlistBytes alloc] initWithByteVector:a2 count:a3 trusted:1 deallocator:a4];
    v5 = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    v6 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    if (qword_1ED6F3FF0 != -1)
    {
      _MDPlistBytesCreateWithDeallocator_cold_1();
    }

    v8 = qword_1ED6F3FE8;
    v9 = *MEMORY[0x1E69E9840];

    return CFRetain(v8);
  }
}

BOOL _MDPlistBytesValidate(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return __MDPlistBytesValidate(a1);
}

BOOL __MDPlistBytesWriteToFile(uint64_t a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = nosymlink_open(a2, a3, a3, a4, a5, a6, a7, a8, a4);
  if (v9 < 0)
  {
    result = 0;
  }

  else
  {
    if (a1 && !*(a1 + 32))
    {
      v10 = *(a1 + 16);
      v11 = *(a1 + 8);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v13 = v9;
    v14 = write(v9, v11, v10);
    v15 = close(v13);
    result = v14 == v10 && v15 == 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *_MDPlistBytesCopyPlistAtIndexWithAllocator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(a1, a2, a3, &_kMDPlistBytesDeserializationCallbacks, 0);
}

_BYTE *_MDPlistBytesCopyPlistBytesAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 32))
  {
LABEL_2:
    result = 0;
    v4 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = *(a2 + 16);
  if (v5 <= 0xF)
  {
    result = 0;
    *(a2 + 40) = 0;
    v6 = *MEMORY[0x1E69E9840];
    return result;
  }

  v7 = (v5 >> 3) - 2;
  v8 = (*(a2 + 8) + 8);
  *(a2 + 40) = v8;
  v9 = a3 + 1;
  while (--v9 >= 1)
  {
    v10 = *v8 + 1;
    v11 = *v8 < 0x7FFFFFFF;
    v12 = __OFSUB__(v7, v10);
    v7 -= v10;
    if ((v7 < 0) ^ v12 | (v7 == 0))
    {
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v8 += v10;
    v14 = v11 & v13;
    if (v14)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    *(a2 + 40) = v15;
    if ((v14 & 1) == 0)
    {
      v8 = 0;
      break;
    }
  }

  if (!v8)
  {
    goto LABEL_2;
  }

  v18 = *v8;
  v17 = v8 - 1;
  v16 = v18;
  if (((v18 >> 25) & 0xF) > 6)
  {
    goto LABEL_2;
  }

  v19 = 8 * v16 + 8;
  if (v19 < 0x800 || (*(a2 + 34) & 8) != 0)
  {
    v21 = malloc_type_valloc(v19, 0x821FD845uLL);
    v22 = v21;
    if (v19 >= 4 * *MEMORY[0x1E69E9AC8])
    {
      madvise(v21, v19, 3);
    }

    memcpy(v22, v17, v19);
    if (v22)
    {
      v23 = [[_MDPlistBytes alloc] initWithByteVector:v22 count:v19 trusted:0 deallocator:&__block_literal_global_108];
      v24 = v23;
      if (v23)
      {
        CFRetain(v23);
      }

      result = v24;
    }

    else
    {
      if (qword_1ED6F3FE0 != -1)
      {
        +[_MDPlistBytes enumerateObjectsFromPlistBytes:count:shouldDeallocate:usingBlock:];
      }

      result = CFRetain(qword_1ED6F3FD8);
    }

    result[34] |= 8u;
    goto LABEL_38;
  }

  __dst[0] = 0;
  v25 = _fast_vm_allocate(__dst, v19, -251658239);
  result = 0;
  if (v25)
  {
LABEL_38:
    v29 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v19 >= 4 * *MEMORY[0x1E69E9AC8])
  {
    madvise(__dst[0], v19, 3);
  }

  memcpy(__dst[0], v17, v19);
  if (__dst[0])
  {
    v26 = [[_MDPlistBytes alloc] initWithByteVector:__dst[0] count:v19 trusted:0 deallocator:&__block_literal_global_108];
    v27 = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    result = v27;
    v28 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (qword_1ED6F3FE0 != -1)
    {
      [_MDPlistBytes initWithByteVector:count:trusted:deallocator:];
    }

    result = CFRetain(qword_1ED6F3FD8);
    v30 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t _MDPlistBytesSetShouldUseMalloc(uint64_t result, char a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 34) = *(result + 34) & 0xF7 | (8 * (a2 & 1));
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *_MDChildPlistBytesContextCreate(unsigned int *result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*(result + 16) || (v1 = result[4], v1 < 0x10))
    {
      result = 0;
    }

    else
    {
      v3 = (v1 >> 3) - 2;
      v4 = result;
      v5 = (*(result + 1) + 8);
      v6 = -1;
      do
      {
        v7 = v6;
        v8 = *v5 + 1;
        v9 = *v5 > 0x7FFFFFFEu || v3 <= v8;
        v3 -= v8;
        v5 += 2 * v8;
        ++v6;
      }

      while (!v9);
      v10 = v7 + 2;
      result = malloc_type_malloc(8 * (v7 + 2) + 8, 0x100004000313F17uLL);
      *result = v10;
      v11 = v4[4];
      v12 = (*(v4 + 1) + 8);
      *(result + 1) = v12;
      if (v6)
      {
        v13 = 0;
        v14 = (v11 >> 3) - 2;
        do
        {
          v15 = *v12 + 1;
          if (*v12 > 0x7FFFFFFEu || v14 <= v15)
          {
            _MDChildPlistBytesContextCreate_cold_1();
          }

          v14 -= v15;
          v12 += 2 * v15;
          *&result[2 * v13++ + 4] = v12;
        }

        while (v6 != v13);
      }
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void *_MDPlistBytesSetShouldDeallocate(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];

  if (a2)
  {
    result = &__block_literal_global_108;
  }

  else
  {
    result = 0;
  }

  *(a1 + 24) = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesEndArray(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
  {
    if (*(a1 + 72) == -1)
    {
      *(a1 + 32) = 2494;
      v4 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3)
      {
        *(a1 + 80) = v3 - 1;
        result = 1;
        goto LABEL_4;
      }

      *(a1 + 32) = 2496;
      v5 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_4;
      }
    }

    _MDPlistBytesEndArray_cold_1();
  }

  result = 0;
LABEL_4:
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesBeginDictionary(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return _MDPlistBytesBeginContainer(a1, 13);
}

BOOL _MDPlistBytesEndDictionary(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
  {
    if (*(a1 + 72) == -1)
    {
      *(a1 + 32) = 2494;
      v4 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3)
      {
        *(a1 + 80) = v3 - 1;
        result = 1;
        goto LABEL_4;
      }

      *(a1 + 32) = 2496;
      v5 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_4;
      }
    }

    _MDPlistBytesEndArray_cold_1();
  }

  result = 0;
LABEL_4:
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

_MDMutablePlistBytes *_MDPlistBytesCreateMutableUsingMalloc(uint64_t a1, unsigned int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [[_MDMutablePlistBytes alloc] initWithCapacity:a2 useMalloc:1];
  if (!v2)
  {
    _MDPlistBytesCreateMutableUsingMalloc_cold_1();
  }

  v3 = v2;
  CFRetain(v2);

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

_MDMutablePlistBytes *_MDPlistBytesCreateMutableUsingMallocWithZone(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [[_MDMutablePlistBytes alloc] initWithCapacity:a2 useMalloc:1 zone:a3];
  if (!v3)
  {
    _MDPlistBytesCreateMutableUsingMallocWithZone_cold_1();
  }

  v4 = v3;
  CFRetain(v3);

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

_MDMutablePlistBytes *_MDPlistBytesCreateMutableCopy(uint64_t a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 && !*(a3 + 32))
  {
    v4 = *(a3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = [[_MDMutablePlistBytes alloc] initWithCapacity:(v4 + a2) useMalloc:0];
  if (!v5)
  {
    +[_MDPlistBytes createPlistBytes:];
  }

  v6 = v5;
  CFRetain(v5);

  if (v4 && !_MDPlistBytesAppendPlistBytes(v6, a3))
  {
    CFRelease(v6);
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL _MDPlistBytesAppendPlistBytes(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    while (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
    {
      if (*(a1 + 72) != -1)
      {
        goto LABEL_27;
      }

      if (*(a2 + 32))
      {
        v4 = 0;
      }

      else
      {
        v4 = *(a2 + 16);
      }

      v5 = v4;
      v6 = v4 >> 3;
      if (*(a1 + 104) + 8 * v6 < *(a1 + 112) || _MDPlistBytesGrowCapacityVM(a1, v4 & 0xFFFFFFF8, 0))
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    while (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
    {
      if (*(a1 + 72) != -1)
      {
LABEL_27:
        *(a1 + 32) = 2904;
        v15 = _MDLogForCategoryDefault();
        result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (result)
        {
          _MDPlistBytesAppendPlistBytes_cold_1();
          result = 0;
        }

        goto LABEL_31;
      }

      if (*(a1 + 104) < *(a1 + 112) || _MDPlistBytesGrowCapacityVM(a1, 0, 0))
      {
        v5 = 0;
        v6 = 0;
LABEL_17:
        v7 = *(a1 + 104);
        v8 = v7 + 8 * v6;
        v9 = MEMORY[0x1E69E9AC8];
        v10 = *MEMORY[0x1E69E9AC8];
        v11 = -*MEMORY[0x1E69E9AC8];
        if (((v8 ^ v7) & v11) != 0 && ((v8 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
        {
          v12 = 16 << *MEMORY[0x1E69E9AC0];
          if (v12 >= 4 * v10)
          {
            madvise(((v10 - 1 + v7) & v11), v12, 3);
            v10 = *v9;
          }
        }

        if (v5 >= 4 * v10)
        {
          madvise(*(a1 + 104), v5, 3);
        }

        if (a2 && !*(a2 + 32))
        {
          v13 = *(a2 + 8);
        }

        else
        {
          v13 = 0;
        }

        memcpy(*(a1 + 104), v13, v5);
        v16 = *(a1 + 104) + 8 * v6;
        *(a1 + 104) = v16;
        *(a1 + 16) = v16 - *(a1 + 8);
        result = 1;
        goto LABEL_31;
      }
    }
  }

  result = 0;
LABEL_31:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __MDPlistBytesReadFromFile(uint64_t a1, char *a2, off_t *a3, int a4, int a5, int a6, int a7, int a8)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    while (1)
    {
      if ((*(a1 + 34) & 1) == 0)
      {
        goto LABEL_2;
      }

      if (*(a1 + 72) != -1)
      {
        break;
      }

      v12 = nosymlink_open(a2, 0, a3, a4, a5, a6, a7, a8, 0);
      if (v12 < 0)
      {
        goto LABEL_2;
      }

      v13 = v12;
      if (a3)
      {
        v14 = *a3;
      }

      else
      {
        v14 = 0;
      }

      memset(&v27, 0, sizeof(v27));
      if (md_fstat_real(v12, &v27) == -1)
      {
LABEL_18:
        v18 = 0;
        goto LABEL_31;
      }

      v15 = LODWORD(v27.st_size) - v14;
      if ((LODWORD(v27.st_size) - v14 - 16) > 0x6FFFFFF0 || (v15 & 7) != 0)
      {
        goto LABEL_30;
      }

      if (v14 >= 1 && lseek(v13, v14, 0) != v14)
      {
        goto LABEL_18;
      }

      v16 = *(a1 + 104);
      v17 = v15 >> 3;
      if (v16 + 8 * v17 < *(a1 + 112))
      {
        goto LABEL_22;
      }

      if (_MDPlistBytesGrowCapacityVM(a1, v15, 0))
      {
        v16 = *(a1 + 104);
LABEL_22:
        v20 = v16 + 8 * v17;
        v21 = *MEMORY[0x1E69E9AC8];
        v22 = -*MEMORY[0x1E69E9AC8];
        if (((v20 ^ v16) & v22) != 0)
        {
          v23 = *MEMORY[0x1E69E9AC0];
          if (((v20 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0 && 16 << v23 >= (4 * v21))
          {
            madvise(((v21 - 1 + v16) & v22), 16 << v23, 3);
            v16 = *(a1 + 104);
          }
        }

        if (read(v13, v16, v15) == v15)
        {
          v24 = *(a1 + 104) + 8 * v17;
          *(a1 + 104) = v24;
          *(a1 + 16) = v24 - *(a1 + 8);
          _maybeSwapPlistBytes(a1, 0);
          v18 = *(a1 + 32) == 0;
          if (a3 && !*(a1 + 32))
          {
            *a3 += v15;
            v18 = 1;
          }
        }

        else
        {
LABEL_30:
          v18 = 0;
          *(a1 + 32) = 2364;
        }

LABEL_31:
        v25 = v18;
        close(v13);
        result = v25;
        goto LABEL_32;
      }

      if (*(a1 + 32))
      {
        goto LABEL_2;
      }
    }

    *(a1 + 32) = 2331;
    v19 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_32;
    }

    __MDPlistBytesReadFromFile_cold_1();
  }

LABEL_2:
  result = 0;
LABEL_32:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void __MDPlistBytesError(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) && (*(a1 + 32) = a4, v7 = _MDLogForCategoryDefault(), os_log_type_enabled(v7, OS_LOG_TYPE_ERROR)))
  {
    v10 = 136315650;
    v11 = a2;
    v12 = 2080;
    v13 = a3;
    v14 = 2048;
    v15 = a1;
    _os_log_error_impl(&dword_1B238B000, v7, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", &v10, 0x20u);
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

BOOL _MDPlistBytesAddData(uint64_t a1, const void *a2, size_t __n)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v7 = 8 * (__n != 0);
    if ((__n & 7) != 0)
    {
      v7 = __n & 7;
    }

    v8 = (__n + 7) >> 3;
    v34 = v8 + 1;
    v9 = 8 * (v8 + 1);
    v36 = (__n + 7) >> 3;
    v10 = v8;
    v35 = v7 << 32;
    v11 = (v7 << 32) | 0xB000000;
    do
    {
      if ((*(a1 + 34) & 1) == 0)
      {
        break;
      }

      if (*(a1 + 80) <= 0)
      {
        *(a1 + 32) = 2535;
        v24 = _MDLogForCategoryDefault();
        result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_3;
        }

        _MDPlistBytesAddData_cold_2();
        break;
      }

      v12 = *(a1 + 56);
      v13 = *(a1 + 60);
      if (v13 == v12)
      {
        *(a1 + 60) = 2 * v13;
        v14 = malloc_type_realloc(*(a1 + 48), 16 * v13, 0x100004000313F17uLL);
        *(a1 + 48) = v14;
        if (!v14)
        {
          if (*(a1 + 32))
          {
            break;
          }

          *(a1 + 32) = 2239;
          v23 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v39 = "_MDPlistBytesGrowUIDTable";
            v40 = 2080;
            v41 = "UID table allocation";
            v42 = 2048;
            v43 = a1;
            _os_log_error_impl(&dword_1B238B000, v23, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
          }

          continue;
        }

        v12 = *(a1 + 56);
      }

      *(a1 + 56) = v12 + 1;
      if (v12 == -1)
      {
        _MDPlistBytesAddData_cold_1();
      }

      v15 = *(a1 + 104);
      if ((v15 + 1) >= *(a1 + 112))
      {
        if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
        {
          continue;
        }

        v15 = *(a1 + 104);
      }

      v16 = *MEMORY[0x1E69E9AC8];
      v17 = -*MEMORY[0x1E69E9AC8];
      if ((((v15 + 1) ^ v15) & v17) != 0 && (((v15 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v18 = 16 << *MEMORY[0x1E69E9AC0];
        if (v18 >= 4 * v16)
        {
          madvise(((v15 + v16 - 1) & v17), v18, 3);
          v15 = *(a1 + 104);
        }
      }

      *v15 = (v12 << 32) | 0x2000001;
      v19 = v15 + 1;
      *(a1 + 104) = v19;
      v20 = *(a1 + 48);
      v20[v12] = ((v19 - *(a1 + 40)) >> 3) & 0xFFFFFF | v11;
      ++*v20;
      *(a1 + 72) = v12;
      v21 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
      v20[v21] += 0x100000000;
      v22 = *(a1 + 104);
      if (&v22[v10 + 1] < *(a1 + 112))
      {
        goto LABEL_29;
      }

      if (_MDPlistBytesGrowCapacityVM(a1, v9, 0))
      {
        v22 = *(a1 + 104);
LABEL_29:
        v25 = &v22[v10 + 1];
        v26 = *MEMORY[0x1E69E9AC8];
        v27 = -*MEMORY[0x1E69E9AC8];
        if (((v25 ^ v22) & v27) != 0)
        {
          v29 = v36;
          v28 = a2;
          v30 = v35;
          v31 = v34;
          if (((v25 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v32 = 16 << *MEMORY[0x1E69E9AC0];
            if (v32 >= 4 * v26)
            {
              madvise(((v22 + v26 - 1) & v27), v32, 3);
              v22 = *(a1 + 104);
            }
          }
        }

        else
        {
          v29 = v36;
          v28 = a2;
          v30 = v35;
          v31 = v34;
        }

        *v22 = v30 | v31 & 0xFFFFFF | 0x7000000;
        v33 = v22 + 1;
        *(a1 + 104) = v22 + 1;
        if (v29 >= 1)
        {
          v22[v29] = 0;
        }

        if (__n >= 4 * *MEMORY[0x1E69E9AC8])
        {
          madvise(v33, __n, 3);
          v33 = *(a1 + 104);
        }

        memcpy(v33, v28, __n);
        *(a1 + 104) += 8 * v29;
        result = 1;
        goto LABEL_3;
      }
    }

    while (!*(a1 + 32));
  }

  result = 0;
LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistBytesAddRawInternedCStringKey(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = ((2 * a2) | 1u);
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      goto LABEL_17;
    }

    if (*(a1 + 80) <= 0)
    {
      *(a1 + 32) = 2684;
      v12 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (!result)
      {
LABEL_15:
        v13 = *MEMORY[0x1E69E9840];
        return result;
      }

      _MDPlistBytesAddRawInternedCStringKey_cold_1();
LABEL_17:
      result = 0;
      v14 = *MEMORY[0x1E69E9840];
      return result;
    }

    result = CFDictionaryGetValue(*(a1 + 96), v3);
    if (!result)
    {
      goto LABEL_15;
    }

    v5 = result;
    v6 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
    *(*(a1 + 48) + 8 * v6) += 0x100000000;
    v7 = *(a1 + 104);
    if ((v7 + 1) < *(a1 + 112))
    {
      goto LABEL_9;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0));
  v7 = *(a1 + 104);
LABEL_9:
  v8 = *MEMORY[0x1E69E9AC8];
  v9 = -*MEMORY[0x1E69E9AC8];
  if ((((v7 + 1) ^ v7) & v9) != 0 && (((v7 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v10 = 16 << *MEMORY[0x1E69E9AC0];
    if (v10 >= 4 * v8)
    {
      madvise(((v7 + v8 - 1) & v9), v10, 3);
      v7 = *(a1 + 104);
    }
  }

  *v7 = (v5 << 32) | 0x2000001;
  *(a1 + 104) = v7 + 1;
  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddBoolean(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      goto LABEL_16;
    }

    if (*(a1 + 80) <= 0)
    {
      *(a1 + 32) = 2720;
      v11 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }

      _MDPlistBytesAddBoolean_cold_1();
LABEL_16:
      result = 0;
      v13 = *MEMORY[0x1E69E9840];
      return result;
    }

    v4 = *(a1 + 104);
    if ((v4 + 1) < *(a1 + 112))
    {
      goto LABEL_8;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0));
  v4 = *(a1 + 104);
LABEL_8:
  v5 = *MEMORY[0x1E69E9AC8];
  v6 = -*MEMORY[0x1E69E9AC8];
  if ((((v4 + 1) ^ v4) & v6) != 0 && (((v4 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v7 = 16 << *MEMORY[0x1E69E9AC0];
    if (v7 >= 4 * v5)
    {
      madvise(((v4 + v5 - 1) & v6), v7, 3);
      v4 = *(a1 + 104);
    }
  }

  *v4 = (a2 << 32) | 0x1000001;
  *(a1 + 104) = v4 + 1;
  v8 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
  *(*(a1 + 48) + 8 * v8) += 0x100000000;
  result = 1;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __MDPlistBytesAddUInt64Array(uint64_t a1, uint64_t a2, const void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v6 = 8 * a2;
    v29 = ((8 * a2) >> 3) + 1;
    v31 = (8 * a2) >> 3;
    v7 = (8 * a2) >> 3;
    v30 = (8 * a2 != 0) << 35;
    do
    {
      if ((*(a1 + 34) & 1) == 0)
      {
        break;
      }

      if (*(a1 + 80) <= 0)
      {
        *(a1 + 32) = 2778;
        v20 = _MDLogForCategoryDefault();
        result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_3;
        }

        __MDPlistBytesAddUInt64Array_cold_2();
        break;
      }

      v8 = *(a1 + 56);
      v9 = *(a1 + 60);
      if (v9 == v8)
      {
        *(a1 + 60) = 2 * v9;
        v10 = malloc_type_realloc(*(a1 + 48), 16 * v9, 0x100004000313F17uLL);
        *(a1 + 48) = v10;
        if (!v10)
        {
          if (*(a1 + 32))
          {
            break;
          }

          *(a1 + 32) = 2239;
          v19 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v34 = "_MDPlistBytesGrowUIDTable";
            v35 = 2080;
            v36 = "UID table allocation";
            v37 = 2048;
            v38 = a1;
            _os_log_error_impl(&dword_1B238B000, v19, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
          }

          continue;
        }

        v8 = *(a1 + 56);
      }

      *(a1 + 56) = v8 + 1;
      if (v8 == -1)
      {
        __MDPlistBytesAddUInt64Array_cold_1();
      }

      v11 = *(a1 + 104);
      if ((v11 + 1) >= *(a1 + 112))
      {
        if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
        {
          continue;
        }

        v11 = *(a1 + 104);
      }

      v12 = *MEMORY[0x1E69E9AC8];
      v13 = -*MEMORY[0x1E69E9AC8];
      if ((((v11 + 1) ^ v11) & v13) != 0 && (((v11 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v14 = 16 << *MEMORY[0x1E69E9AC0];
        if (v14 >= 4 * v12)
        {
          madvise(((v11 + v12 - 1) & v13), v14, 3);
          v11 = *(a1 + 104);
        }
      }

      *v11 = (v8 << 32) | 0x2000001;
      v15 = v11 + 1;
      *(a1 + 104) = v15;
      v16 = *(a1 + 48);
      v16[v8] = ((v15 - *(a1 + 40)) >> 3) & 0xFFFFFF | v30 | 0xB000000;
      ++*v16;
      *(a1 + 72) = v8;
      v17 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
      v16[v17] += 0x100000000;
      v18 = *(a1 + 104);
      if (&v18[v7 + 1] < *(a1 + 112))
      {
        goto LABEL_27;
      }

      if (_MDPlistBytesGrowCapacityVM(a1, 8 * v29, 0))
      {
        v18 = *(a1 + 104);
LABEL_27:
        v21 = &v18[v7 + 1];
        v22 = *MEMORY[0x1E69E9AC8];
        v23 = -*MEMORY[0x1E69E9AC8];
        if (((v21 ^ v18) & v23) != 0)
        {
          v25 = v31;
          v24 = a3;
          v26 = v30;
          v27 = v29;
          if (((v21 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v28 = 16 << *MEMORY[0x1E69E9AC0];
            if (v28 >= 4 * v22)
            {
              madvise(((v18 + v22 - 1) & v23), v28, 3);
              v18 = *(a1 + 104);
            }

            v24 = a3;
          }
        }

        else
        {
          v25 = v31;
          v24 = a3;
          v26 = v30;
          v27 = v29;
        }

        *v18 = v26 | v27 & 0xFFFFFF | 0x7000000;
        *(a1 + 104) = v18 + 1;
        if (v25 >= 1)
        {
          v18[v25] = 0;
        }

        memcpy(v18 + 1, v24, v6);
        *(a1 + 104) += 8 * v25;
        result = 1;
        goto LABEL_3;
      }
    }

    while (!*(a1 + 32));
  }

  result = 0;
LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  result = _MDPlistBytesAddRLETagRoom(a1, 0xEu, 2u);
  if (result)
  {
    v7 = *(a1 + 104);
    *v7 = a2;
    v7[1] = a3;
    *(a1 + 104) += 16;
    result = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MDPlistBytesAddURL(uint64_t a1, const __CFURL *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    goto LABEL_45;
  }

  v4 = CFURLGetBaseURL(a2);
  if (!v4 || (result = _MDPlistBytesBeginContainer(a1, 17), result) && (result = __MDPlistBytesAddURL(a1, v4), result))
  {
    v6 = CFURLCreateData(*MEMORY[0x1E695E480], a2, 0x8000100u, 0);
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v6);
    v9 = Length;
    if ((Length & 7) != 0)
    {
      v10 = Length & 7;
    }

    else
    {
      v10 = 8 * (Length != 0);
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 60);
    if (v12 == v11)
    {
      if (*(a1 + 32))
      {
        goto LABEL_44;
      }

      if ((*(a1 + 34) & 1) == 0)
      {
        goto LABEL_41;
      }

      *(a1 + 60) = 2 * v12;
      v13 = malloc_type_realloc(*(a1 + 48), 16 * v12, 0x100004000313F17uLL);
      *(a1 + 48) = v13;
      if (!v13)
      {
        if (*(a1 + 32))
        {
          goto LABEL_44;
        }

        *(a1 + 32) = 2239;
        v37 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          addStringBytes_cold_2();
          if (!*(a1 + 32))
          {
LABEL_42:
            *(a1 + 32) = 2853;
            v38 = _MDLogForCategoryDefault();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              __MDPlistBytesAddURL_cold_3();
            }
          }

LABEL_44:
          CFRelease(v6);
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      v11 = *(a1 + 56);
    }

    __src = BytePtr;
    *(a1 + 56) = v11 + 1;
    if (v11 == -1)
    {
      __MDPlistBytesAddURL_cold_1();
    }

    v14 = *(a1 + 104);
    if ((v14 + 1) >= *(a1 + 112))
    {
      if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
      {
        goto LABEL_41;
      }

      v14 = *(a1 + 104);
    }

    v15 = MEMORY[0x1E69E9AC8];
    v16 = *MEMORY[0x1E69E9AC8];
    v17 = -*MEMORY[0x1E69E9AC8];
    v18 = MEMORY[0x1E69E9AC0];
    if ((((v14 + 1) ^ v14) & v17) != 0 && (((v14 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
    {
      v19 = 16 << *MEMORY[0x1E69E9AC0];
      if (v19 >= 4 * v16)
      {
        v20 = MEMORY[0x1E69E9AC0];
        v21 = MEMORY[0x1E69E9AC8];
        madvise(((v14 + v16 - 1) & v17), v19, 3);
        v15 = v21;
        v18 = v20;
        v14 = *(a1 + 104);
      }
    }

    *v14 = (v11 << 32) | 0x2000001;
    v22 = v14 + 1;
    *(a1 + 104) = v22;
    v23 = v10 << 32;
    v24 = *(a1 + 48);
    v24[v11] = v23 & 0xFFFFFFFFFF000000 | ((v22 - *(a1 + 40)) >> 3) & 0xFFFFFF | 0x10000000;
    ++*v24;
    *(a1 + 72) = v11;
    v25 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
    v24[v25] += 0x100000000;
    v26 = ((v9 + 7) >> 3) + 1;
    v27 = *(a1 + 104);
    v28 = (v9 + 7) >> 3;
    if (&v27[v28 + 1] >= *(a1 + 112))
    {
      v42 = v23;
      v29 = v15;
      v30 = v18;
      if (!_MDPlistBytesGrowCapacityVM(a1, 8 * v26, 0))
      {
        goto LABEL_41;
      }

      v27 = *(a1 + 104);
      v18 = v30;
      v15 = v29;
      v23 = v42;
    }

    v31 = (v9 + 7) >> 3;
    v32 = &v27[v28 + 1];
    v33 = *v15;
    v34 = -*v15;
    if (((v32 ^ v27) & v34) != 0 && ((v32 >> *v18) & 0xF) == 0)
    {
      v35 = 16 << *v18;
      if (v35 >= 4 * v33)
      {
        madvise(((v27 + v33 - 1) & v34), v35, 3);
        v27 = *(a1 + 104);
      }
    }

    *v27 = v23 | v26 & 0xFFFFFF | 0x7000000;
    *(a1 + 104) = v27 + 1;
    if (v31 >= 1)
    {
      v27[v31] = 0;
    }

    memcpy(v27 + 1, __src, v9);
    *(a1 + 104) += 8 * v31;
    if (*(a1 + 72))
    {
      CFRelease(v6);
      if (!v4)
      {
LABEL_38:
        result = 1;
        goto LABEL_46;
      }

      if (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
      {
        if (*(a1 + 72) == -1)
        {
          v40 = a1;
          v41 = 2494;
        }

        else
        {
          v36 = *(a1 + 80);
          if (v36)
          {
            *(a1 + 80) = v36 - 1;
            goto LABEL_38;
          }

          v40 = a1;
          v41 = 2496;
        }

        __MDPlistBytesError(v40, "_MDPlistBytesEndContainer", "Sequencing", v41);
      }

LABEL_45:
      result = 0;
      goto LABEL_46;
    }

LABEL_41:
    if (!*(a1 + 32))
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

LABEL_46:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddStoreOIDArray(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  while (!*(a1 + 32))
  {
    if ((*(a1 + 34) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 72) == -1)
    {
      *(a1 + 32) = 2867;
      v23 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_3;
      }

      _MDPlistBytesAddStoreOIDArray_cold_2();
      break;
    }

    VectorCount = _MDStoreOIDArrayGetVectorCount(a2);
    v7 = *(a1 + 56);
    v8 = *(a1 + 60);
    if (v8 == v7)
    {
      if (*(a1 + 32))
      {
        break;
      }

      if ((*(a1 + 34) & 1) == 0)
      {
        continue;
      }

      *(a1 + 60) = 2 * v8;
      v9 = malloc_type_realloc(*(a1 + 48), 16 * v8, 0x100004000313F17uLL);
      *(a1 + 48) = v9;
      if (!v9)
      {
        if (*(a1 + 32))
        {
          break;
        }

        *(a1 + 32) = 2239;
        v22 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v31 = "_MDPlistBytesGrowUIDTable";
          v32 = 2080;
          v33 = "UID table allocation";
          v34 = 2048;
          v35 = a1;
          _os_log_error_impl(&dword_1B238B000, v22, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
        }

        continue;
      }

      v7 = *(a1 + 56);
    }

    *(a1 + 56) = v7 + 1;
    if (v7 == -1)
    {
      _MDPlistBytesAddStoreOIDArray_cold_1();
    }

    v10 = *(a1 + 104);
    if ((v10 + 1) >= *(a1 + 112))
    {
      if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
      {
        continue;
      }

      v10 = *(a1 + 104);
    }

    v11 = *MEMORY[0x1E69E9AC8];
    v12 = -*MEMORY[0x1E69E9AC8];
    if ((((v10 + 1) ^ v10) & v12) != 0 && (((v10 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
    {
      v13 = 16 << *MEMORY[0x1E69E9AC0];
      if (v13 >= 4 * v11)
      {
        madvise(((v10 + v11 - 1) & v12), v13, 3);
        v10 = *(a1 + 104);
      }
    }

    *v10 = (v7 << 32) | 0x2000001;
    v14 = v10 + 1;
    *(a1 + 104) = v14;
    v15 = (VectorCount << 32) | ((v14 - *(a1 + 40)) >> 3) & 0xFFFFFF | 0x1A000000;
    v16 = *(a1 + 48);
    v16[v7] = v15;
    ++*v16;
    *(a1 + 72) = v7;
    v17 = *(a1 + 80);
    if (v17 >= 1)
    {
      v18 = *(*(a1 + 88) + 4 * v17 - 4);
      v16[v18] += 0x100000000;
    }

    v19 = VectorCount + 1;
    v20 = *(a1 + 104);
    v21 = 8 * VectorCount;
    if (&v20[v21 / 8 + 1] < *(a1 + 112))
    {
      goto LABEL_31;
    }

    if (_MDPlistBytesGrowCapacityVM(a1, 8 * v19, 0))
    {
      v20 = *(a1 + 104);
LABEL_31:
      v24 = &v20[v21 / 8 + 1];
      v25 = *MEMORY[0x1E69E9AC8];
      v26 = -*MEMORY[0x1E69E9AC8];
      if (((v24 ^ v20) & v26) != 0 && ((v24 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v27 = 16 << *MEMORY[0x1E69E9AC0];
        if (v27 >= 4 * v25)
        {
          madvise(((v20 + v25 - 1) & v26), v27, 3);
          v20 = *(a1 + 104);
          v25 = *MEMORY[0x1E69E9AC8];
        }
      }

      *v20 = v19 & 0xFFFFFF | 0x887000000;
      v28 = v20 + 1;
      *(a1 + 104) = v28;
      if (v21 >= 4 * v25)
      {
        madvise(v28, 8 * VectorCount, 3);
        v28 = *(a1 + 104);
      }

      Vector = _MDStoreOIDArrayGetVector(a2);
      memcpy(v28, Vector, 8 * VectorCount);
      *(a1 + 104) += 8 * VectorCount;
      result = 1;
      goto LABEL_3;
    }
  }

  result = 0;
LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddPlistBytes(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  while (!*(a1 + 32))
  {
    if ((*(a1 + 34) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 80) <= 0)
    {
      *(a1 + 32) = 2885;
      v23 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_3;
      }

      _MDPlistBytesAddPlistBytes_cold_2();
      break;
    }

    if (a2 && !*(a2 + 32))
    {
      v6 = *(a2 + 16);
      v7 = *(a1 + 56);
      v8 = *(a1 + 60);
      if (v8 != v7)
      {
LABEL_11:
        *(a1 + 56) = v7 + 1;
        if (v7 == -1)
        {
          goto LABEL_44;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
      v7 = *(a1 + 56);
      v8 = *(a1 + 60);
      if (v8 != v7)
      {
        goto LABEL_11;
      }
    }

    *(a1 + 60) = 2 * v8;
    v9 = malloc_type_realloc(*(a1 + 48), 16 * v8, 0x100004000313F17uLL);
    *(a1 + 48) = v9;
    if (!v9)
    {
      if (*(a1 + 32))
      {
        break;
      }

      *(a1 + 32) = 2239;
      v22 = _MDLogForCategoryDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v31 = "_MDPlistBytesGrowUIDTable";
        v32 = 2080;
        v33 = "UID table allocation";
        v34 = 2048;
        v35 = a1;
        _os_log_error_impl(&dword_1B238B000, v22, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
      }

      continue;
    }

    v7 = *(a1 + 56);
    *(a1 + 56) = v7 + 1;
    if (v7 == -1)
    {
LABEL_44:
      _MDPlistBytesAddPlistBytes_cold_1();
    }

LABEL_16:
    v10 = *(a1 + 104);
    if ((v10 + 1) >= *(a1 + 112))
    {
      if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
      {
        continue;
      }

      v10 = *(a1 + 104);
    }

    v11 = *MEMORY[0x1E69E9AC8];
    v12 = -*MEMORY[0x1E69E9AC8];
    if ((((v10 + 1) ^ v10) & v12) != 0 && (((v10 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
    {
      v13 = 16 << *MEMORY[0x1E69E9AC0];
      if (v13 >= 4 * v11)
      {
        madvise(((v10 + v11 - 1) & v12), v13, 3);
        v10 = *(a1 + 104);
      }
    }

    v14 = v6 >> 3;
    *v10 = (v7 << 32) | 0x2000001;
    v15 = v10 + 1;
    *(a1 + 104) = v15;
    v16 = (v14 << 32) | ((v15 - *(a1 + 40)) >> 3) & 0xFFFFFF | 0x1B000000;
    v17 = *(a1 + 48);
    v17[v7] = v16;
    ++*v17;
    *(a1 + 72) = v7;
    v18 = *(a1 + 80);
    if (v18 >= 1)
    {
      v19 = *(*(a1 + 88) + 4 * v18 - 4);
      v17[v19] += 0x100000000;
    }

    v20 = v14 + 1;
    v21 = *(a1 + 104);
    if (&v21[v14 + 1] < *(a1 + 112))
    {
      goto LABEL_33;
    }

    if (_MDPlistBytesGrowCapacityVM(a1, 8 * v20, 0))
    {
      v21 = *(a1 + 104);
LABEL_33:
      v24 = &v21[v14 + 1];
      v25 = *MEMORY[0x1E69E9AC8];
      v26 = -*MEMORY[0x1E69E9AC8];
      if (((v24 ^ v21) & v26) != 0 && ((v24 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v27 = 16 << *MEMORY[0x1E69E9AC0];
        if (v27 >= 4 * v25)
        {
          madvise(((v21 + v25 - 1) & v26), v27, 3);
          v21 = *(a1 + 104);
          v25 = *MEMORY[0x1E69E9AC8];
        }
      }

      *v21 = v20 & 0xFFFFFF | 0x807000000;
      v28 = v21 + 1;
      *(a1 + 104) = v28;
      if (v6 >= (4 * v25))
      {
        madvise(v28, v6, 3);
        v28 = *(a1 + 104);
      }

      if (a2 && !*(a2 + 32))
      {
        v29 = *(a2 + 8);
      }

      else
      {
        v29 = 0;
      }

      memcpy(v28, v29, v6);
      *(a1 + 104) += 8 * v14;
      result = 1;
      goto LABEL_3;
    }
  }

  result = 0;
LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void dictionaryApplier(const __CFString *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (CFGetTypeID(a1) == qword_1ED6F3F78)
  {
    Length = CFStringGetLength(a1);
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    if (CStringPtr)
    {
      v8 = CStringPtr;
      v9 = 1;
    }

    else
    {
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v15 = MaximumSizeForEncoding + 20;
      v9 = MaximumSizeForEncoding + 20 < 4096;
      if (MaximumSizeForEncoding + 20 > 4095)
      {
        v8 = malloc_type_malloc(MaximumSizeForEncoding + 20, 0x100004077774924uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v14, MaximumSizeForEncoding, v11, v12, v13);
        v8 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v8, v15);
      }

      if (!CFStringGetCString(a1, v8, v15, 0x8000100u))
      {
        strlcpy(v8, "<Bad UTF-8 string>", v15);
      }
    }

    v16 = *(a3 + 8);
    if (*(a3 + 8))
    {
      v16 = _MDPlistBytesAddCString(*a3, v8, -1);
    }

    *(a3 + 8) = v16;
    if (!v9)
    {
      free(v8);
      v16 = *(a3 + 8);
    }

    if (v16)
    {
      LOBYTE(v16) = __MDPlistBytesAddObject(*a3, a2) != 0;
    }

    *(a3 + 8) = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
}

BOOL __MDPlistBytesAppendChunk(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (*(a1 + 72) != -1)
    {
      *(a1 + 32) = 3139;
      v14 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        v15 = *MEMORY[0x1E69E9840];
        return result;
      }

      __MDPlistBytesAppendChunk_cold_1();
LABEL_18:
      result = 0;
      v16 = *MEMORY[0x1E69E9840];
      return result;
    }

    v4 = *a2;
    v5 = *(a1 + 104);
    if (v5 + 8 * (*a2 >> 3) < *(a1 + 112))
    {
      goto LABEL_8;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, v4 & 0xFFFFFFF8, 0));
  v5 = *(a1 + 104);
LABEL_8:
  v6 = (v4 >> 3);
  v7 = v5 + 8 * v6;
  v8 = *MEMORY[0x1E69E9AC8];
  v9 = -*MEMORY[0x1E69E9AC8];
  if (((v7 ^ v5) & v9) != 0 && ((v7 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v10 = 16 << *MEMORY[0x1E69E9AC0];
    if (v10 >= 4 * v8)
    {
      madvise(((v8 - 1 + v5) & v9), v10, 3);
      v5 = *(a1 + 104);
    }
  }

  memcpy(v5, *(a2 + 8), *a2);
  v11 = *(a1 + 104) + 8 * v6;
  *(a1 + 104) = v11;
  *(a1 + 16) = v11 - *(a1 + 8);
  if (*(a2 + 16))
  {
    _maybeSwapPlistBytes(a1, 0);
  }

  result = 1;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MDPlistBytesFirstChunk@<X0>(uint64_t result@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  a3[1] = *(result + 8);
  a3[2] = 0;
  if (*(result + 32))
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v3 = a2 & 0xFFFFFFF8;
    if (v3 < *(result + 16))
    {
      v4 = 0;
    }

    else
    {
      v3 = *(result + 16);
      v4 = 1;
    }
  }

  *a3 = v3;
  *(a3 + 16) = v4;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MDPlistBytesNextChunk(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    result = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v3 = *a2;
    v4 = a2[1] + *a2;
    a2[1] = v4;
    v5 = *(a1 + 8) - v4 + *(a1 + 16);
    result = 1;
    if (v5 <= v3)
    {
      *a2 = v5;
      *(a2 + 16) = 1;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef copyArray(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, unsigned __int16 a5)
{
  v22 = *MEMORY[0x1E69E9840];
  HIDWORD(v21) = *a3;
  v9 = a2 >> 32;
  v10 = (a2 >> 32) & ~(a2 >> 63);
  if (a2 >> 32 >= 33)
  {
    if (v9 >> 28)
    {
      v11 = 0;
    }

    else
    {
      v11 = malloc_type_zone_malloc(*(a1 + 144), 8 * v10, 0x1173B7C0uLL);
    }

    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00]();
  v11 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v12);
  if (v9 >= 1)
  {
LABEL_7:
    v13 = 0;
    do
    {
      *&v11[8 * v13++] = copyObject(a1, &v21 + 4, (a4 + 1), a5);
    }

    while (v9 != v13);
  }

  if (a5)
  {
    v14 = &kCopyArrayArrayCallbacks;
  }

  else
  {
    v14 = MEMORY[0x1E695E9C0];
  }

  v15 = CFArrayCreate(*(a1 + 136), v11, v10, v14);
  if (v9 >= 1 && (a5 & 1) == 0)
  {
    v16 = v11;
    v17 = v9;
    do
    {
      v18 = *v16++;
      CFRelease(v18);
      --v17;
    }

    while (v17);
  }

  if (v9 >= 33)
  {
    free(v11);
  }

  *a3 = HIDWORD(v21);
  if (!v15)
  {
    copyArray_cold_1();
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

CFDictionaryRef copyDictionary(uint64_t a1, unint64_t a2, _DWORD *a3, int a4, unsigned __int16 a5)
{
  v21 = *MEMORY[0x1E69E9840];
  HIDWORD(v20) = *a3;
  v9 = HIDWORD(a2);
  v10 = (SHIDWORD(a2) / 2) & ~((HIDWORD(a2) + (a2 >> 63)) >> 31);
  if (SHIDWORD(a2) < 34)
  {
    MEMORY[0x1EEE9AC00]();
    v11 = &v20 - ((8 * v10 + 15) & 0xFFFFFFFF0);
    bzero(v11, 8 * v10);
    MEMORY[0x1EEE9AC00]();
    v12 = v11;
    bzero(v11, 8 * v10);
    if (v9 <= 1)
    {
      v13 = CFDictionaryCreate(*(a1 + 136), v11, v11, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      goto LABEL_16;
    }
  }

  else if (v10 - 1 > 0xFFFFFFE)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_zone_malloc(*(a1 + 144), 8 * v10, 0x1173B7C0uLL);
    v12 = malloc_type_zone_malloc(*(a1 + 144), 8 * v10, 0x1173B7C0uLL);
  }

  v14 = 0;
  if (v10 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10;
  }

  v16 = 8 * v15;
  do
  {
    *&v11[v14] = copyObject(a1, &v20 + 4, (a4 + 1), a5);
    v12[v14 / 8] = copyObject(a1, &v20 + 4, (a4 + 1), a5);
    v14 += 8;
  }

  while (v16 != v14);
  v13 = CFDictionaryCreate(*(a1 + 136), v11, v12, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 0;
  do
  {
    CFRelease(*&v11[v17]);
    CFRelease(v12[v17 / 8]);
    v17 += 8;
  }

  while (v16 != v17);
  if (v9 > 33)
  {
    free(v11);
    free(v12);
  }

LABEL_16:
  *a3 = HIDWORD(v20);
  if (!v13)
  {
    copyDictionary_cold_1();
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_6(unsigned int *a1@<X8>)
{
  *a1 = v1 | 0xC0DE0000;

  abort();
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void __MDSetKeywordsDictionary(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ____MDSetKeywordsDictionary_block_invoke;
  v2[3] = &__block_descriptor_tmp_11;
  v2[4] = a1;
  if (__MDSetKeywordsDictionary_onceToken != -1)
  {
    dispatch_once(&__MDSetKeywordsDictionary_onceToken, v2);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __MDSetKeywordsToNamesDictionary(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ____MDSetKeywordsToNamesDictionary_block_invoke;
  v2[3] = &__block_descriptor_tmp_1;
  v2[4] = a1;
  if (__MDSetKeywordsToNamesDictionary_onceToken != -1)
  {
    dispatch_once(&__MDSetKeywordsToNamesDictionary_onceToken, v2);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __MDSetFieldPairToMaxWordCountDictionary(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ____MDSetFieldPairToMaxWordCountDictionary_block_invoke;
  v2[3] = &__block_descriptor_tmp_2_0;
  v2[4] = a1;
  if (__MDSetFieldPairToMaxWordCountDictionary_onceToken != -1)
  {
    dispatch_once(&__MDSetFieldPairToMaxWordCountDictionary_onceToken, v2);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t TokenRetainCallback(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  ++*(a2 + 24);
  v2 = *MEMORY[0x1E69E9840];
  return a2;
}

void TokenReleaseCallback(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 24) - 1;
  *(a2 + 24) = v2;
  if (v2)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];

    TokenDestroy(a2);
  }
}

CFStringRef TokenCopyDescriptionCallback(unsigned int *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *a1;
    if (v1 > 0xA)
    {
      v2 = "UNKNOWN_TOKEN";
    }

    else
    {
      v2 = off_1E7B26078[v1];
    }

    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s %@\n", v2, *(a1 + 1));
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];
    return @"Token: NULL\n";
  }

  return result;
}

BOOL TokenEqualCallback(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    result = 1;
  }

  else
  {
    result = *a1 == *a2 && CFStringCompare(*(a1 + 8), *(a2 + 8), 0) == kCFCompareEqualTo;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void TokenDestroy(int *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(a1 + 12))
  {
    TokenDestroy_cold_1();
  }

  v2 = *a1;
  CFRelease(*(a1 + 1));
  if (v2 == 10)
  {
    CFRelease(*(a1 + 2));
  }

  v3 = *MEMORY[0x1E69E9840];

  free(a1);
}

const void *TokenListGetTokenAtOffset(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8) + a2;
  if (CFArrayGetCount(*a1) <= v4 || (v5 = *(a1 + 8), v5 + a2 < 0))
  {
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v6 = *a1;
    v7 = *MEMORY[0x1E69E9840];

    return CFArrayGetValueAtIndex(v6, (v5 + a2));
  }
}

CFMutableStringRef mutableEscapedCopy(CFStringRef theString)
{
  v4 = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  v5.length = CFStringGetLength(MutableCopy);
  v5.location = 0;
  CFStringFindAndReplace(MutableCopy, @"\, @"\\\, v5, 0);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  CFStringFindAndReplace(MutableCopy, @"*", @"\\*", v6, 0);
  v7.length = CFStringGetLength(MutableCopy);
  v7.location = 0;
  CFStringFindAndReplace(MutableCopy, @"", @"\\"", v7, 0);
  v8.length = CFStringGetLength(MutableCopy);
  v8.location = 0;
  CFStringFindAndReplace(MutableCopy, @"'", @"\\'", v8, 0);
  v2 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

void renderParseTreeToQuery(uint64_t a1, __CFString *a2, __CFString **a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = v58;
  }

  if (!a1)
  {
    goto LABEL_46;
  }

  v6 = *(a1 + 8);
  if (v6 > 3)
  {
    if ((v6 - 7) < 2 || v6 == 4)
    {
      if (!**a1)
      {
        if (v6 == 8)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2 * (v6 == 7);
        }

        renderQueryPredicate(a2, *(*a1 + 8), *v3, v11, v3);
      }

      goto LABEL_46;
    }

    if (v6 != 5)
    {
      goto LABEL_46;
    }

    v21 = *(a1 + 16);
LABEL_45:
    renderParseTreeToQuery(v21, a2, v3);
    goto LABEL_46;
  }

  v7 = a3;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      goto LABEL_32;
    }

    v12 = *(a1 + 16);
    if (!v12 || !*v12 || !*(a1 + 24))
    {
      goto LABEL_46;
    }

    v13 = v58;
    if (a3)
    {
      v13 = a3;
    }

    *(v13 + 69) = 1;
    allocator = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    reprintParseTree(a1, Mutable);
    v15 = 0;
    v16 = _keywordsDictionary;
    v17 = _keywordsToNamesDictionary;
    if (_keywordsDictionary && _keywordsToNamesDictionary)
    {
      Value = CFDictionaryGetValue(_keywordsDictionary, Mutable);
      v15 = CFDictionaryGetValue(_keywordsToNamesDictionary, Mutable);
      v16 = _keywordsDictionary;
      v17 = _keywordsToNamesDictionary;
    }

    else
    {
      Value = 0;
    }

    if (!Value && v16 && v17)
    {
      v23 = CFStringFind(Mutable, @":", 0);
      if (v23.location == -1 || (v24 = *(a1 + 24)) != 0 && (findDatesInText(*(*v24 + 8), 0, 0, 0) & 1) != 0)
      {
        Value = 0;
      }

      else
      {
        v61.length = v23.location + v23.length;
        v61.location = 0;
        v39 = CFStringCreateWithSubstring(allocator, Mutable, v61);
        Value = CFDictionaryGetValue(_keywordsDictionary, v39);
        v15 = CFDictionaryGetValue(_keywordsToNamesDictionary, v39);
        CFRelease(v39);
        if (v15 && Value)
        {
          goto LABEL_57;
        }
      }

      CFLog();
    }

    if (Value)
    {
LABEL_57:
      v25 = v58;
      if (v7)
      {
        v25 = v7;
      }

      if (v25[7])
      {
        CFStringAppend(a2, @"(true)");
      }

      else
      {
        CFStringAppendFormat(a2, 0, @"(%@)", Value);
      }

      if (!v7)
      {
        v7 = v58;
      }

      if (!Mutable || !v7[3])
      {
        goto LABEL_111;
      }

      v34 = MEMORY[0x1E695E9D8];
      v35 = MEMORY[0x1E695E9E8];
      v36 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v37 = CFDictionaryCreateMutable(allocator, 0, v34, v35);
      CFDictionarySetValue(v37, @"TYPE", v15);
      CFDictionarySetValue(v37, @"QUERY", Value);
      CFDictionarySetValue(v36, Mutable, v37);
      CFArrayAppendValue(v7[3], v36);
      CFRelease(v37);
      v38 = v36;
      goto LABEL_75;
    }

    v26 = v58;
    if (v7)
    {
      v27 = v7;
    }

    else
    {
      v27 = v58;
    }

    v28 = v27[4];
    if (!v28)
    {
      if (v7)
      {
        v26 = v7;
      }

      v40 = v26[1];
      if (!v40 || (v28 = v40(), (v27[4] = v28) == 0))
      {
        v30 = 0;
        goto LABEL_84;
      }
    }

    v29 = CFDictionaryGetValue(v28, *(**(a1 + 16) + 8));
    v30 = v29;
    if (!v29)
    {
LABEL_84:
      v41 = 1;
      goto LABEL_86;
    }

    Count = CFSetGetCount(v29);
    if (!Count)
    {
      v41 = 0;
LABEL_86:
      v42 = *(a1 + 24);
      v43 = v42[2];
      if (v43 == 8)
      {
        v44 = 1;
      }

      else
      {
        v44 = 2 * (v43 == 7);
      }

      renderQueryPredicate(a2, *(*v42 + 8), *(**(a1 + 16) + 8), v44, v3);
      if (v41)
      {
        goto LABEL_111;
      }

      goto LABEL_104;
    }

    v32 = Count;
    v33 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    CFSetGetValues(v30, v33);
    if (v32 < 2)
    {
      if (v32 != 1)
      {
LABEL_103:
        free(v33);
LABEL_104:
        if (v7)
        {
          v51 = v7;
        }

        else
        {
          v51 = v58;
        }

        if (!Mutable || !v51[3] || !*(**(a1 + 16) + 8))
        {
          goto LABEL_111;
        }

        v52 = MEMORY[0x1E695E9D8];
        v53 = MEMORY[0x1E695E9E8];
        v54 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v55 = CFDictionaryCreateMutable(allocator, 0, v52, v53);
        CFDictionarySetValue(v55, @"ATTRS", v30);
        CFDictionarySetValue(v55, @"TEXT", *(**(a1 + 24) + 8));
        CFDictionarySetValue(v54, Mutable, v55);
        CFArrayAppendValue(v51[3], v54);
        CFRelease(v55);
        v38 = v54;
LABEL_75:
        CFRelease(v38);
LABEL_111:
        CFRelease(Mutable);
        goto LABEL_46;
      }
    }

    else
    {
      CFStringAppend(a2, @"(");
    }

    v56 = v30;
    for (i = 0; i != v32; ++i)
    {
      if (i)
      {
        CFStringAppend(a2, @" || ");
      }

      Length = CFStringGetLength(a2);
      v47 = *(a1 + 24);
      v48 = *(*v47 + 8);
      v49 = v47[2];
      if (v49 == 8)
      {
        v50 = 1;
      }

      else
      {
        v50 = 2 * (v49 == 7);
      }

      renderQueryPredicate(a2, v48, v33[i], v50, v3);
      if (CFStringGetLength(a2) == Length)
      {
        CFStringAppend(a2, @" false ");
      }
    }

    v30 = v56;
    if (v32 >= 2)
    {
      CFStringAppend(a2, @""));
    }

    goto LABEL_103;
  }

  if (!v6)
  {
LABEL_32:
    v19 = v58;
    if (a3)
    {
      v19 = a3;
    }

    *(v19 + 69) = 1;
    if (*(a1 + 16))
    {
      if (*(a1 + 24))
      {
        CFStringAppend(a2, @"(");
        renderParseTreeToQuery(*(a1 + 16), a2, v3);
        if (*(a1 + 8))
        {
          v20 = @" || ";
        }

        else
        {
          v20 = @" && ";
        }

        CFStringAppend(a2, v20);
        v9 = *(a1 + 24);
        goto LABEL_40;
      }

      (renderParseTreeToQuery)();
    }

    v21 = *(a1 + 24);
    if (!v21)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v6 == 1)
  {
    v8 = v58;
    if (a3)
    {
      v8 = a3;
    }

    *(v8 + 69) = 1;
    if (*(a1 + 16))
    {
      CFStringAppend(a2, @"(!");
      v9 = *(a1 + 16);
LABEL_40:
      renderParseTreeToQuery(v9, a2, v3);
      CFStringAppend(a2, @""));
    }
  }

LABEL_46:
  v22 = *MEMORY[0x1E69E9840];
}