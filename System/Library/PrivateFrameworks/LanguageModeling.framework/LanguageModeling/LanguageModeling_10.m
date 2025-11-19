void sub_1AE67B9F4(_Unwind_Exception *a1)
{
  v7 = *v5;
  if (*v5)
  {
    *v4 = v7;
    operator delete(v7);
    v8 = *v3;
    if (!*v3)
    {
LABEL_4:
      sub_1AE645234(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v8 = *v3;
    if (!*v3)
    {
      goto LABEL_4;
    }
  }

  *v2 = v8;
  operator delete(v8);
  goto LABEL_4;
}

uint64_t sub_1AE67BA80(uint64_t result, unint64_t a2, uint64_t *a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(result + 24) = 0u;
  *(result + 56) = 0u;
  *(result + 40) = 0u;
  v3 = *a3;
  v4 = a3[1];
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  return result;
}

void sub_1AE67BCD8(_Unwind_Exception *a1)
{
  v7 = *v5;
  if (*v5)
  {
    *v4 = v7;
    operator delete(v7);
    v8 = *v3;
    if (!*v3)
    {
LABEL_4:
      sub_1AE645234(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v8 = *v3;
    if (!*v3)
    {
      goto LABEL_4;
    }
  }

  *v2 = v8;
  operator delete(v8);
  goto LABEL_4;
}

void ***sub_1AE67BD64(void ***a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

const void **sub_1AE67BE08(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

const void **sub_1AE67BE40(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE67BE78(uint64_t a1, const void *a2, CFDictionaryRef *a3, CFDictionaryRef ***a4)
{
  *a1 = &unk_1F242B1A8;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Value = CFDictionaryGetValue(*a3, @"URL");
  v10 = CFURLCopyFileSystemPath(Value, kCFURLPOSIXPathStyle);
  *&v28 = v10;
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFC8], v10);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *&v28 = v11;
  v12 = *a4;
  v13 = a4[1];
  if (*a4 != v13)
  {
    do
    {
      v14 = CFDictionaryGetValue(**v12, @"URL");
      v15 = CFURLCopyFileSystemPath(v14, kCFURLPOSIXPathStyle);
      v26 = v15;
      CFArrayAppendValue(v11, v15);
      if (v15)
      {
        CFRelease(v15);
      }

      v12 += 2;
    }

    while (v12 != v13);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFD0], v11);
  if (v11)
  {
    CFRelease(v11);
  }

  v16 = *a3;
  v17 = *MEMORY[0x1E69AC008];
  if (CFDictionaryContainsKey(v16, *MEMORY[0x1E69AC008]))
  {
    v18 = CFDictionaryGetValue(v16, v17);
    CFDictionaryAddValue(Mutable, v17, v18);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFE8], a2);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFD8], *MEMORY[0x1E695E4D0]);
  err = 0;
  v19 = LXLexiconCreate();
  if (!v19)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&v28, "Failed to create the lexicon");
    sub_1AE660DB0(exception, &v28);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  *(a1 + 16) = 0;
  v20 = (a1 + 16);
  *(a1 + 8) = v19;
  v21 = sub_1AE67B5F4();
  v28 = 0uLL;
  v29 = 0;
  sub_1AE67B784(a1 + 24, v21, &v28);
  v22 = sub_1AE67B5F4();
  v28 = 0uLL;
  v29 = 0;
  sub_1AE67BA80(a1 + 152, v22, &v28);
  v23 = *(a1 + 16);
  *(a1 + 280) = 1;
  if (v23 != a2)
  {
    CFRetain(a2);
    if (*v20)
    {
      CFRelease(*v20);
    }

    *v20 = a2;
  }

  return a1;
}

void sub_1AE67C1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    if ((v25 & 1) == 0)
    {
LABEL_8:
      sub_1AE636D70(&a17);
      sub_1AE622220(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v24);
  goto LABEL_8;
}

const void **sub_1AE67C310(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE67C348(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24) + 1;
  *(v3 + 24) = v4;
  if (v4 <= *(result + 48))
  {
    v5 = result;
    result = LXEntryGetProbability();
    *(*(*(v5 + 40) + 8) + 24) = v6;
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

const void **sub_1AE67C3AC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void sub_1AE67C3E4(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= a4)
      {
        v25 = a4;
      }

      if (v24 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v25;
      }

      if (v26 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1AE5CBB70();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v22 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v22 >= 0)
            {
              v20 = v5;
            }

            else
            {
              v20 = *v5;
            }

            if (v22 >= 0)
            {
              v21 = *(v5 + 23);
            }

            else
            {
              v21 = v5[1];
            }

            sub_1AE621B84(v8, v20, v21);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_1AE621AB4(v8, *v5, v5[1]);
          }

          else
          {
            v23 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v23;
          }
        }

        v5 += 3;
        v8 += 24;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v29 = *(v13 - 1);
      v13 -= 3;
      if (v29 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v15 = &v14[a2];
    if (v13 != v8)
    {
      do
      {
        if (v5 != v8)
        {
          v18 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v18 >= 0)
            {
              v16 = v5;
            }

            else
            {
              v16 = *v5;
            }

            if (v18 >= 0)
            {
              v17 = *(v5 + 23);
            }

            else
            {
              v17 = v5[1];
            }

            sub_1AE621B84(v8, v16, v17);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_1AE621AB4(v8, *v5, v5[1]);
          }

          else
          {
            v19 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v19;
          }
        }

        v5 += 3;
        v8 += 24;
        v14 -= 24;
      }

      while (v14);
      v13 = a1[1];
    }

    v30 = v13;
    v27 = v13;
    if (v15 != a3)
    {
      v27 = v13;
      do
      {
        if (v15[23] < 0)
        {
          sub_1AE5DBF1C(v27, *v15, *(v15 + 1));
          v27 = v30;
        }

        else
        {
          v28 = *v15;
          v27[2] = *(v15 + 2);
          *v27 = v28;
        }

        v15 += 24;
        v27 += 3;
        v30 = v27;
      }

      while (v15 != a3);
    }

    a1[1] = v27;
  }
}

void sub_1AE67C738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE5F30A0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1AE67C750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE5F30A0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1AE67C768(void *a1, void *a2, const void **a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    while (1)
    {
      v8 = *(v6 + 23);
      if (v8 < 0)
      {
        if (*(v6 + 8) == 2)
        {
          v9 = *v6;
LABEL_3:
          if (*v9 == 28261)
          {
            break;
          }
        }
      }

      else
      {
        v9 = v6;
        if (v8 == 2)
        {
          goto LABEL_3;
        }
      }

      v6 += 24;
      if (v6 == v7)
      {
        goto LABEL_49;
      }
    }
  }

  if (v6 != v7)
  {
    v10 = *(a3 + 23);
    v11 = v10 >= 0 ? *(a3 + 23) : a3[1];
    if (v11)
    {
      if (v11 + 2 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1AE5DB4F0();
      }

      v13 = a2;
      if (v11 + 2 > 0x16)
      {
        operator new();
      }

      __p[1] = 0;
      v97 = 0;
      __p[0] = 0;
      HIBYTE(v97) = v11 + 2;
      if ((v10 & 0x80u) == 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = *a3;
      }

      memmove(__p, v14, v11);
      strcpy(__p + v11, "'s");
      sub_1AE67D6DC(a1, __p);
      a2 = v13;
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
        a2 = v13;
        if (a4 != 69)
        {
          goto LABEL_49;
        }
      }

      else if (a4 != 69)
      {
        goto LABEL_49;
      }

      v15 = *(a3 + 23);
      if (*(a3 + 23) < 0)
      {
        v17 = a3[1];
        if (!v17)
        {
          goto LABEL_49;
        }

        v18 = *a3;
        v19 = v17[*a3 - 1] - 115;
        if (v19 <= 7 && ((1 << v19) & 0xA1) != 0)
        {
          goto LABEL_49;
        }

        if (v17 == 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!*(a3 + 23))
        {
          goto LABEL_49;
        }

        v16 = *(a3 + *(a3 + 23) - 1) - 115;
        if (v16 <= 7 && ((1 << v16) & 0xA1) != 0)
        {
          goto LABEL_49;
        }

        v17 = *(a3 + 23);
        v18 = a3;
        if (v15 == 1)
        {
          goto LABEL_36;
        }
      }

      if (*&v18[v17 - 2] == 26739)
      {
        goto LABEL_49;
      }

LABEL_36:
      if ((v15 & 0x80u) == 0)
      {
        v20 = *(a3 + 23);
      }

      else
      {
        v20 = a3[1];
      }

      if (v20 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1AE5DB4F0();
      }

      if (v20 + 1 >= 0x17)
      {
        operator new();
      }

      __p[1] = 0;
      v97 = 0;
      __p[0] = 0;
      HIBYTE(v97) = v20 + 1;
      if (v20)
      {
        if ((v15 & 0x80u) == 0)
        {
          v21 = a3;
        }

        else
        {
          v21 = *a3;
        }

        memmove(__p, v21, v20);
      }

      *(__p + v20) = 115;
      sub_1AE67D6DC(a1, __p);
      a2 = v13;
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
        a2 = v13;
      }
    }
  }

LABEL_49:
  v22 = *a2;
  v23 = a2[1];
  if (*a2 != v23)
  {
    while (1)
    {
      v24 = *(v22 + 23);
      if (v24 < 0)
      {
        if (*(v22 + 8) == 2)
        {
          v25 = *v22;
LABEL_51:
          if (*v25 == 29300)
          {
            break;
          }
        }
      }

      else
      {
        v25 = v22;
        if (v24 == 2)
        {
          goto LABEL_51;
        }
      }

      v22 += 24;
      if (v22 == v23)
      {
        return;
      }
    }
  }

  if (v22 != v23)
  {
    if (*(a3 + 23) < 0)
    {
      if (a3[1] <= 1)
      {
        return;
      }

      v26 = *a3;
    }

    else
    {
      if (*(a3 + 23) < 2u)
      {
        return;
      }

      v26 = a3;
    }

    v106 = CFStringCreateWithCString(0, v26, 0x8000100u);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v106);
    if ((atomic_load_explicit(&qword_1EB5E0BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB5E0BF0))
    {
      qword_1EB5E0BE8 = CFLocaleCreate(0, @"tr");
      __cxa_guard_release(&qword_1EB5E0BF0);
    }

    v27 = MutableCopy;
    CFStringLowercase(MutableCopy, qword_1EB5E0BE8);
    Length = CFStringGetLength(v27);
    theString = v27;
    v101 = 0;
    v102 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v27);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v27, 0x600u);
    }

    v103 = 0;
    v104 = 0;
    v100 = CStringPtr;
    v30 = Length - 1;
    if (Length >= 1 && (v31 = v102, v102 >= Length))
    {
      if (CharactersPtr)
      {
        v32 = CharactersPtr[v101 + v30];
      }

      else if (CStringPtr)
      {
        v32 = CStringPtr[v101 + v30];
      }

      else
      {
        v33 = Length - 5;
        if (Length < 5)
        {
          v33 = 0;
        }

        if (v33 + 64 < v102)
        {
          v31 = v33 + 64;
        }

        v103 = v33;
        v104 = v31;
        v107.length = v31 - v33;
        v107.location = v101 + v33;
        CFStringGetCharacters(theString, v107, __p);
        v32 = *(__p + v30 - v103);
      }
    }

    else
    {
      v32 = 0;
    }

    if ((atomic_load_explicit(&qword_1EB5E0C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB5E0C00))
    {
      qword_1EB5E0BF8 = CFCharacterSetCreateWithCharactersInString(0, @"bcçdfgğhjklmnprsştvyz");
      __cxa_guard_release(&qword_1EB5E0C00);
    }

    IsCharacterMember = CFCharacterSetIsCharacterMember(qword_1EB5E0BF8, v32);
    if ((atomic_load_explicit(&qword_1EB5E0C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB5E0C10))
    {
      qword_1EB5E0C08 = CFCharacterSetCreateWithCharactersInString(0, @"aeıioöuü");
      __cxa_guard_release(&qword_1EB5E0C10);
    }

    v35 = CFCharacterSetIsCharacterMember(qword_1EB5E0C08, v32);
    if (!(v35 | IsCharacterMember))
    {
      goto LABEL_219;
    }

    v84 = v35;
    v85 = a1;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    if (Length < 1)
    {
      goto LABEL_215;
    }

    v36 = 1 - Length;
    v37 = Length + 63;
    while (1)
    {
      v38 = Length - 1;
      v39 = v30 >= 4 ? 4 : v30;
      v40 = v102;
      if (v102 <= v38)
      {
        v41 = 0;
      }

      else if (CharactersPtr)
      {
        v41 = CharactersPtr[v101 - 1 + Length];
      }

      else if (v100)
      {
        v41 = v100[v101 - 1 + Length];
      }

      else
      {
        v42 = v103;
        if (v104 <= v38 || v103 > v38)
        {
          v44 = v39 + v36;
          v45 = v37 - v39;
          v46 = Length - v39;
          v47 = v46 - 1;
          v48 = v46 + 63;
          if (v48 >= v102)
          {
            v48 = v102;
          }

          v103 = v47;
          v104 = v48;
          if (v102 >= v45)
          {
            v40 = v45;
          }

          v108.location = v47 + v101;
          v108.length = v40 + v44;
          CFStringGetCharacters(theString, v108, __p);
          v42 = v103;
        }

        v41 = *(&v95 + Length - v42 + 3);
      }

      if ((atomic_load_explicit(&qword_1EB5E0C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB5E0C10))
      {
        qword_1EB5E0C08 = CFCharacterSetCreateWithCharactersInString(0, @"aeıioöuü");
        __cxa_guard_release(&qword_1EB5E0C10);
      }

      if (CFCharacterSetIsCharacterMember(qword_1EB5E0C08, v41))
      {
        break;
      }

      --v30;
      ++v36;
      --v37;
      Length = v38;
      if (v38 <= 0)
      {
        goto LABEL_215;
      }
    }

    if (v41 <= 0x74u)
    {
      v49 = v84;
      if (v41 <= 0x68u)
      {
        if (v41 != 97)
        {
          if (v41 != 101)
          {
            goto LABEL_148;
          }

          goto LABEL_127;
        }

        goto LABEL_125;
      }

      if (v41 == 105)
      {
LABEL_127:
        if (SHIBYTE(v95) < 0)
        {
          v94 = 1;
          v52 = v93;
        }

        else
        {
          HIBYTE(v95) = 1;
          v52 = &v93;
        }

        *v52 = 105;
LABEL_143:
        if (SHIBYTE(v92) < 0)
        {
          v91 = 1;
          v54 = v90;
        }

        else
        {
          HIBYTE(v92) = 1;
          v54 = &v90;
        }

        v55 = 101;
LABEL_147:
        *v54 = v55;
        v54[1] = 0;
        goto LABEL_148;
      }

      if (v41 != 111)
      {
        goto LABEL_148;
      }

LABEL_121:
      if (SHIBYTE(v95) < 0)
      {
        v94 = 1;
        v50 = v93;
      }

      else
      {
        HIBYTE(v95) = 1;
        v50 = &v93;
      }

      *v50 = 117;
      goto LABEL_135;
    }

    v49 = v84;
    if (v41 > 0xFBu)
    {
      if (v41 != 252)
      {
        if (v41 != 305)
        {
          goto LABEL_148;
        }

LABEL_125:
        if (SHIBYTE(v95) < 0)
        {
          v94 = 2;
          v51 = v93;
        }

        else
        {
          HIBYTE(v95) = 2;
          v51 = &v93;
        }

        *v51 = -20028;
        v51[2] = 0;
LABEL_135:
        if (SHIBYTE(v92) < 0)
        {
          v91 = 1;
          v54 = v90;
        }

        else
        {
          HIBYTE(v92) = 1;
          v54 = &v90;
        }

        v55 = 97;
        goto LABEL_147;
      }
    }

    else
    {
      if (v41 == 117)
      {
        goto LABEL_121;
      }

      if (v41 != 246)
      {
LABEL_148:
        v56 = *(a3 + 23);
        if (v56 >= 0)
        {
          v57 = *(a3 + 23);
        }

        else
        {
          v57 = a3[1];
        }

        if (v57 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1AE5DB4F0();
        }

        if (v57 + 1 >= 0x17)
        {
          operator new();
        }

        memset(&v87, 0, sizeof(v87));
        *(&v87.__r_.__value_.__s + 23) = v57 + 1;
        if (v57)
        {
          if ((v56 & 0x80u) == 0)
          {
            v58 = a3;
          }

          else
          {
            v58 = *a3;
          }

          memmove(&v87, v58, v57);
        }

        *(&v87.__r_.__value_.__l.__data_ + v57) = 39;
        if (v49)
        {
          v59 = "y";
        }

        else
        {
          v59 = "";
        }

        v60 = std::string::append(&v87, v59, v49 != 0);
        v61 = *&v60->__r_.__value_.__l.__data_;
        v88.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
        *&v88.__r_.__value_.__l.__data_ = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        if (v95 >= 0)
        {
          v62 = &v93;
        }

        else
        {
          v62 = v93;
        }

        if (v95 >= 0)
        {
          v63 = HIBYTE(v95);
        }

        else
        {
          v63 = v94;
        }

        v64 = std::string::append(&v88, v62, v63);
        v89 = *v64;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        sub_1AE67D6DC(v85, &v89);
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_170:
            if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_171;
            }

LABEL_226:
            operator delete(v87.__r_.__value_.__l.__data_);
LABEL_171:
            v65 = *(a3 + 23);
            if (v65 >= 0)
            {
              v66 = *(a3 + 23);
            }

            else
            {
              v66 = a3[1];
            }

            if (v66 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_1AE5DB4F0();
            }

            if (v66 + 1 >= 0x17)
            {
              operator new();
            }

            memset(&v87, 0, sizeof(v87));
            *(&v87.__r_.__value_.__s + 23) = v66 + 1;
            if (v66)
            {
              if ((v65 & 0x80u) == 0)
              {
                v67 = a3;
              }

              else
              {
                v67 = *a3;
              }

              memmove(&v87, v67, v66);
            }

            *(&v87.__r_.__value_.__l.__data_ + v66) = 39;
            v68 = std::string::append(&v87, v59, v49 != 0);
            v69 = *&v68->__r_.__value_.__l.__data_;
            v88.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
            *&v88.__r_.__value_.__l.__data_ = v69;
            v68->__r_.__value_.__l.__size_ = 0;
            v68->__r_.__value_.__r.__words[2] = 0;
            v68->__r_.__value_.__r.__words[0] = 0;
            if (v92 >= 0)
            {
              v70 = &v90;
            }

            else
            {
              v70 = v90;
            }

            if (v92 >= 0)
            {
              v71 = HIBYTE(v92);
            }

            else
            {
              v71 = v91;
            }

            v72 = std::string::append(&v88, v70, v71);
            v89 = *v72;
            v72->__r_.__value_.__l.__size_ = 0;
            v72->__r_.__value_.__r.__words[2] = 0;
            v72->__r_.__value_.__r.__words[0] = 0;
            sub_1AE67D6DC(v85, &v89);
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_190:
                if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_191;
                }

LABEL_229:
                operator delete(v87.__r_.__value_.__l.__data_);
LABEL_191:
                v73 = *(a3 + 23);
                if (v73 >= 0)
                {
                  v74 = *(a3 + 23);
                }

                else
                {
                  v74 = a3[1];
                }

                if (v74 + 1 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_1AE5DB4F0();
                }

                if (v74 + 1 >= 0x17)
                {
                  operator new();
                }

                memset(&v86, 0, sizeof(v86));
                *(&v86.__r_.__value_.__s + 23) = v74 + 1;
                if (v74)
                {
                  if ((v73 & 0x80u) == 0)
                  {
                    v75 = a3;
                  }

                  else
                  {
                    v75 = *a3;
                  }

                  memmove(&v86, v75, v74);
                }

                *(&v86.__r_.__value_.__l.__data_ + v74) = 39;
                if (v49)
                {
                  v76 = "n";
                }

                else
                {
                  v76 = "";
                }

                v77 = std::string::append(&v86, v76, v49 != 0);
                v78 = *&v77->__r_.__value_.__l.__data_;
                v87.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
                *&v87.__r_.__value_.__l.__data_ = v78;
                v77->__r_.__value_.__l.__size_ = 0;
                v77->__r_.__value_.__r.__words[2] = 0;
                v77->__r_.__value_.__r.__words[0] = 0;
                if (v95 >= 0)
                {
                  v79 = &v93;
                }

                else
                {
                  v79 = v93;
                }

                if (v95 >= 0)
                {
                  v80 = HIBYTE(v95);
                }

                else
                {
                  v80 = v94;
                }

                v81 = std::string::append(&v87, v79, v80);
                v82 = *&v81->__r_.__value_.__l.__data_;
                v88.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
                *&v88.__r_.__value_.__l.__data_ = v82;
                v81->__r_.__value_.__l.__size_ = 0;
                v81->__r_.__value_.__r.__words[2] = 0;
                v81->__r_.__value_.__r.__words[0] = 0;
                v83 = std::string::append(&v88, "n", 1uLL);
                v89 = *v83;
                v83->__r_.__value_.__l.__size_ = 0;
                v83->__r_.__value_.__r.__words[2] = 0;
                v83->__r_.__value_.__r.__words[0] = 0;
                sub_1AE67D6DC(v85, &v89);
                if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v89.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_213:
                    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_214;
                    }

LABEL_232:
                    operator delete(v87.__r_.__value_.__l.__data_);
                    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_233;
                    }

LABEL_215:
                    if ((SHIBYTE(v92) & 0x80000000) == 0)
                    {
                      goto LABEL_217;
                    }

                    goto LABEL_216;
                  }
                }

                else if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_213;
                }

                operator delete(v88.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_214:
                  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_215;
                  }

LABEL_233:
                  operator delete(v86.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v92) & 0x80000000) == 0)
                  {
LABEL_217:
                    if (SHIBYTE(v95) < 0)
                    {
                      operator delete(v93);
                    }

LABEL_219:
                    if (MutableCopy)
                    {
                      CFRelease(MutableCopy);
                    }

                    if (v106)
                    {
                      CFRelease(v106);
                    }

                    return;
                  }

LABEL_216:
                  operator delete(v90);
                  goto LABEL_217;
                }

                goto LABEL_232;
              }
            }

            else if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_190;
            }

            operator delete(v88.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_191;
            }

            goto LABEL_229;
          }
        }

        else if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        operator delete(v88.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_171;
        }

        goto LABEL_226;
      }
    }

    if (SHIBYTE(v95) < 0)
    {
      v94 = 2;
      v53 = v93;
    }

    else
    {
      HIBYTE(v95) = 2;
      v53 = &v93;
    }

    *v53 = -17213;
    v53[2] = 0;
    goto LABEL_143;
  }
}

void sub_1AE67D4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void ***a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  __cxa_guard_abort(&qword_1EB5E0C10);
  sub_1AE67D824((v56 - 104));
  sub_1AE66A6D4((v56 - 96));
  sub_1AE645234(a11);
  _Unwind_Resume(a1);
}

void sub_1AE67D6DC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AE5CBB70();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

const void **sub_1AE67D824(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE67D888(uint64_t a1)
{
  v1 = *(a1 + 24);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_1EB5E0C28;
  v9 = off_1EB5E0C28;
  if (!off_1EB5E0C28)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE67D970;
    v5[3] = &unk_1E7A2DC98;
    v5[4] = &v6;
    sub_1AE67D970(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(v1);
}

void *sub_1AE67D970(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelReset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0C28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE67DAB8()
{
  result = _sl_dlopen();
  qword_1ED9AC6B0 = result;
  return result;
}

uint64_t sub_1AE67DB2C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_1EB5E0C20;
  v9 = off_1EB5E0C20;
  if (!off_1EB5E0C20)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE67DC14;
    v5[3] = &unk_1E7A2DC70;
    v5[4] = &v6;
    sub_1AE67DC14(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(v1);
}

void *sub_1AE67DC14(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelUnlock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0C20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE67DD5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_1EB5E0C18;
  v9 = off_1EB5E0C18;
  if (!off_1EB5E0C18)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE67DE44;
    v5[3] = &unk_1E7A2DC48;
    v5[4] = &v6;
    sub_1AE67DE44(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(v1);
}

void *sub_1AE67DE44(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelLock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0C18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AE67DF8C(void *a1)
{
  v2 = a1[3];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v3 = off_1EB5E0B08;
  v16 = off_1EB5E0B08;
  if (!off_1EB5E0B08)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = sub_1AE67E1F0;
    v11 = &unk_1E7A2DBD0;
    v12 = &v13;
    sub_1AE67E1F0(&v8);
    v3 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3(v2);
  v5 = a1[3];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v6 = off_1EB5E0B10;
  v16 = off_1EB5E0B10;
  if (!off_1EB5E0B10)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = sub_1AE67E338;
    v11 = &unk_1E7A2DBF8;
    v12 = &v13;
    sub_1AE67E338(&v8);
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (v6)
  {
    v6(v5, v4, 1);
    v7 = a1[2];
    v8 = a1[1];
    if (v7)
    {
      v9 = std::__shared_weak_count::lock(v7);
      if (v9)
      {
        operator new();
      }
    }
  }

  else
  {
LABEL_10:
    dlerror();
    abort_report_np();
  }

  sub_1AE657DFC();
}

void sub_1AE67E1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE67E1DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE622290(va);
  _Unwind_Resume(a1);
}

void *sub_1AE67E1F0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelStateCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0B08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE67E338(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelStateSave");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0B10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE67E480(uint64_t a1, uint64_t a2, int a3, unsigned int a4, os_signpost_id_t a5, uint64_t a6)
{
  v6 = a2;
  v32 = *MEMORY[0x1E69E9840];
  v22 = a3;
  if (a6)
  {
    if (a4 >= 6)
    {
      LODWORD(a5) = a4;
      if (qword_1ED9ACA10 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

    v8 = a6;
    v21 = dword_1AE79CBC8[a4];
    v10 = *(a1 + 24);
    if (a2)
    {
      v6 = (*(*a2 + 16))(a2);
    }

    v11 = *(a1 + 32);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v12 = off_1EB5E0AF0;
    v26 = off_1EB5E0AF0;
    if (!off_1EB5E0AF0)
    {
      *buf = MEMORY[0x1E69E9820];
      v28 = 0x40000000;
      v29 = sub_1AE67EA50;
      v30 = &unk_1E7A2DBA8;
      v31 = &v23;
      sub_1AE67EA50(buf);
      v12 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (v12)
    {
      v12(v10, v6, &v22, 1, v11, &v21, 1, a5, v8);
      return *(a1 + 32);
    }

LABEL_26:
    dlerror();
    abort_report_np();
    __break(1u);
LABEL_34:
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
LABEL_31:
    v20 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a5;
      _os_log_error_impl(&dword_1AE5C8000, v20, OS_LOG_TYPE_ERROR, "unknown neural network output class: %d", buf, 8u);
    }

    __assert_rtn("convert", "LegacyMontreal.cpp", 80, "false");
  }

  if (qword_1ED9AC958 != -1)
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
  }

  a5 = os_signpost_id_generate(qword_1ED9AC960);
  if (qword_1ED9AC958 != -1)
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
  }

  v13 = a5 - 1;
  if (a5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = qword_1ED9AC960;
    if (os_signpost_enabled(qword_1ED9AC960))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AE5C8000, v14, OS_SIGNPOST_INTERVAL_BEGIN, a5, "MontrealRecognizeIncremental", &unk_1AE7CF046, buf, 2u);
    }
  }

  v15 = *(a1 + 24);
  if (v6)
  {
    v6 = (*(*v6 + 16))(v6);
  }

  v16 = *(a1 + 32);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v17 = off_1EB5E0AF8;
  v26 = off_1EB5E0AF8;
  if (!off_1EB5E0AF8)
  {
    *buf = MEMORY[0x1E69E9820];
    v28 = 0x40000000;
    v29 = sub_1AE67E908;
    v30 = &unk_1E7A2DB80;
    v31 = &v23;
    sub_1AE67E908(buf);
    v17 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v17)
  {
    goto LABEL_26;
  }

  v17(v15, v6, &v22, 1, v16);
  if (qword_1ED9AC958 == -1)
  {
    if (v13 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return *(a1 + 32);
    }
  }

  else
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
    if (v13 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return *(a1 + 32);
    }
  }

  v18 = qword_1ED9AC960;
  if (os_signpost_enabled(qword_1ED9AC960))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AE5C8000, v18, OS_SIGNPOST_INTERVAL_END, a5, "MontrealRecognizeIncremental", &unk_1AE7CF046, buf, 2u);
  }

  return *(a1 + 32);
}

void sub_1AE67E8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AE67E908(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelRecognizeIncremental");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0AF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE67EA50(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelRecognizeIncrementalClassPlusSuffixIds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0AF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE67EBA0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_1ED9AC698;
  v9 = off_1ED9AC698;
  if (!off_1ED9AC698)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE67EC88;
    v5[3] = &unk_1E7A2DB30;
    v5[4] = &v6;
    sub_1AE67EC88(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(a1);
}

void *sub_1AE67EC88(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelGetOutputSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC698 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AE67EDD0(void *a1)
{
  sub_1AE67EE08(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE67EE08(void *a1)
{
  *a1 = &unk_1F242B228;
  v2 = a1[3];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v3 = off_1ED9AC6A0;
  v11 = off_1ED9AC6A0;
  if (!off_1ED9AC6A0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = sub_1AE67EF40;
    v7[3] = &unk_1E7A2DB58;
    v7[4] = &v8;
    sub_1AE67EF40(v7);
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v3)
  {
    v3(v2);
    v4 = a1[4];
    if (v4)
    {
      a1[5] = v4;
      operator delete(v4);
    }

    v5 = a1[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    return a1;
  }

  else
  {
    dlerror();
    result = abort_report_np();
    __break(1u);
  }

  return result;
}

void sub_1AE67EF24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  sub_1AE6090F0(a1);
}

void *sub_1AE67EF40(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelRelease");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC6A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE67F08C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "kMRLModelFileLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED9AC690 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE67F1D4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC6A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AE67F31C(void *a1, uint64_t a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4002000000;
  v17 = sub_1AE67F6DC;
  v18 = sub_1AE67F6F8;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = sub_1AE67F70C;
  v13[3] = &unk_1E7A2DA80;
  v13[4] = &v14;
  v13[5] = a2;
  *&v23 = 0;
  *(&v23 + 1) = &v23;
  v24 = 0x3802000000;
  v25 = sub_1AE67FD18;
  v27 = 0;
  v28 = 0;
  v26 = sub_1AE67FD28;
  if ((atomic_load_explicit(&qword_1ED9AC6C0, memory_order_acquire) & 1) == 0)
  {
    v6 = a2;
    v7 = __cxa_guard_acquire(&qword_1ED9AC6C0);
    a2 = v6;
    if (v7)
    {
      qword_1ED9AC660 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      __cxa_guard_release(&qword_1ED9AC6C0);
      a2 = v6;
    }
  }

  if ((atomic_load_explicit(&qword_1ED9AC6B8, memory_order_acquire) & 1) == 0)
  {
    v8 = a2;
    v9 = __cxa_guard_acquire(&qword_1ED9AC6B8);
    a2 = v8;
    if (v9)
    {
      qword_1ED9AC658 = dispatch_queue_create("com.apple.NLPUtils.SingletonResourceManager", qword_1ED9AC660);
      __cxa_guard_release(&qword_1ED9AC6B8);
      a2 = v8;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE67FDA4;
  block[3] = &unk_1E7A2DCC0;
  block[5] = &v23;
  block[6] = a2;
  block[4] = v13;
  dispatch_sync(qword_1ED9AC658, block);
  v3 = *(&v23 + 1);
  *a1 = *(*(&v23 + 1) + 40);
  v4 = *(v3 + 48);
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v23, 8);
  v5 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (!*a1)
  {
    v10 = v15;
    if (*(v15 + 63) < 0)
    {
      if (v15[6])
      {
        goto LABEL_22;
      }

      v15[6] = 13;
      v11 = v10[5];
    }

    else
    {
      if (*(v15 + 63))
      {
        goto LABEL_22;
      }

      v11 = (v15 + 5);
      *(v15 + 63) = 13;
    }

    strcpy(v11, "unknown error");
LABEL_22:
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_1AE660DB0(exception, &v23);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  _Block_object_dispose(&v14, 8);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }
}

void sub_1AE67F680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v30 - 81) < 0)
  {
    operator delete(*(v30 - 104));
    if ((v29 & 1) == 0)
    {
LABEL_6:
      sub_1AE622290(v27);
      _Block_object_dispose(&a17, 8);
      if (a27 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

__n128 sub_1AE67F6DC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE67F6F8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_1AE67FB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v37 = *v34;
  if (*v34)
  {
    *(v33 + 40) = v37;
    operator delete(v37);
  }

  v38 = *(v33 + 16);
  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  MEMORY[0x1B2706400](v33, 0xA1C40E92AFD59);
  if (a2 == 1)
  {
    v39 = __cxa_begin_catch(a1);
    v40 = (*(*v39 + 16))(v39);
    sub_1AE5CF628((*(*(v32 + 32) + 8) + 40), v40);
    __cxa_end_catch();
    JUMPOUT(0x1AE67F9E4);
  }

  _Unwind_Resume(a1);
}

void sub_1AE67FD08(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1AE67FD10);
  }

  JUMPOUT(0x1AE67FC2CLL);
}

__n128 sub_1AE67FD18(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1AE67FD28(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1AE67FDA4(void *a1)
{
  if ((atomic_load_explicit(&qword_1ED9AC6C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC6C8))
  {
    xmmword_1ED9AC668 = 0u;
    *&qword_1ED9AC678 = 0u;
    dword_1ED9AC688 = 1065353216;
    __cxa_guard_release(&qword_1ED9AC6C8);
  }

  v2 = a1[6];
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = a1[6];
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = v2[1];
  }

  v6 = sub_1AE5DA928(&v28, v4, v5);
  v7 = *(&xmmword_1ED9AC668 + 1);
  if (*(&xmmword_1ED9AC668 + 1))
  {
    v8 = v6;
    v9 = vcnt_s8(*(&xmmword_1ED9AC668 + 8));
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (v6 >= *(&xmmword_1ED9AC668 + 1))
      {
        v10 = v6 % *(&xmmword_1ED9AC668 + 1);
      }
    }

    else
    {
      v10 = (*(&xmmword_1ED9AC668 + 1) - 1) & v6;
    }

    v11 = *(xmmword_1ED9AC668 + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = *(v2 + 23);
        if (v13 >= 0)
        {
          v14 = *(v2 + 23);
        }

        else
        {
          v14 = v2[1];
        }

        if (v13 < 0)
        {
          v2 = *v2;
        }

        if (v9.u32[0] < 2uLL)
        {
          v15 = *(&xmmword_1ED9AC668 + 1) - 1;
          while (1)
          {
            v20 = v12[1];
            if (v20 == v8)
            {
              v21 = *(v12 + 39);
              v22 = v21;
              if (v21 < 0)
              {
                v21 = v12[3];
              }

              if (v21 == v14)
              {
                v23 = v22 >= 0 ? (v12 + 2) : v12[2];
                if (!memcmp(v23, v2, v14))
                {
                  goto LABEL_45;
                }
              }
            }

            else if ((v20 & v15) != v10)
            {
              goto LABEL_52;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_52;
            }
          }
        }

        do
        {
          v16 = v12[1];
          if (v16 == v8)
          {
            v17 = *(v12 + 39);
            v18 = v17;
            if (v17 < 0)
            {
              v17 = v12[3];
            }

            if (v17 == v14)
            {
              v19 = v18 >= 0 ? (v12 + 2) : v12[2];
              if (!memcmp(v19, v2, v14))
              {
LABEL_45:
                v24 = v12[6];
                if (v24 && (v24 = std::__shared_weak_count::lock(v24)) != 0)
                {
                  v25 = v12[5];
                }

                else
                {
                  v25 = 0;
                }

                v26 = *(a1[5] + 8);
                v27 = *(v26 + 48);
                *(v26 + 40) = v25;
                *(v26 + 48) = v24;
                if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v27->__on_zero_shared)(v27);
                  std::__shared_weak_count::__release_weak(v27);
                }

                break;
              }
            }
          }

          else
          {
            if (v16 >= v7)
            {
              v16 %= v7;
            }

            if (v16 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

LABEL_52:
  if (!*(*(a1[5] + 8) + 40))
  {
    (*(a1[4] + 16))();
    operator new();
  }
}

void sub_1AE6806EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1AE669CF4(&a12);
  if (a9)
  {
    std::__shared_weak_count::__release_weak(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE680760(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN2LM14LegacyMontrealEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN2LM14LegacyMontrealEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN2LM14LegacyMontrealEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN2LM14LegacyMontrealEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE6807BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1AE6807EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE680828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v4 = off_1EB5E0B00;
  v11 = off_1EB5E0B00;
  if (!off_1EB5E0B00)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = sub_1AE680920;
    v7[3] = &unk_1E7A2DC20;
    v7[4] = &v8;
    sub_1AE680920(v7);
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  return v4(v3, a2);
}

void *sub_1AE680920(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC6B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE67DAB8;
    v6[4] = &unk_1E7A2DAB8;
    v6[5] = v6;
    v7 = xmmword_1E7A2DAA0;
    v8 = 0;
    qword_1ED9AC6B0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC6B0;
    if (qword_1ED9AC6B0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC6B0;
LABEL_5:
  result = dlsym(v2, "MRLModelStateRelease");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0B00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

_DWORD *sub_1AE680A68(uint64_t a1, int a2, const __CFString *a3)
{
  v6 = sub_1AE680C70(a1, 5);
  sub_1AE6F1CD4(v6, a2);
  v7 = sqlite3_step(*(v6 + 8));
  if (v7 == 100)
  {
    sub_1AE5CC874(a3, __p);
    result = sub_1AE6563F0((*(a1 + 8) + 24), __p);
    if (result)
    {
      v10 = result[10];
      if (v10 == -1 || ((v11 = sqlite3_column_blob(*(v6 + 8), v10), v12 = sqlite3_column_bytes(*(v6 + 8), v10), v12 >= 1) ? (v13 = v11 == 0) : (v13 = 1), v13))
      {
        result = 0;
      }

      else
      {
        result = CFStringCreateWithBytes(0, v11, v12, 0x8000100u, 0);
      }
    }

    if (v17 < 0)
    {
      v14 = result;
      operator delete(__p[0]);
      return v14;
    }
  }

  else
  {
    if (v7 == 26 || v7 == 11)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE6522FC(exception, 1);
      __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
    }

    return 0;
  }

  return result;
}

void sub_1AE680BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE680C70(uint64_t a1, int a2)
{
  v135 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = a1 + 96;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v3 == a1 + 96 || *(v3 + 32) > a2 || (v4 = *(v3 + 40)) == 0)
  {
LABEL_10:
    v5 = *(a1 + 136);
    memset(v119, 0, 24);
    if (a2 > 7)
    {
      if (a2 <= 10)
      {
        if (a2 != 8)
        {
          if (a2 != 9)
          {
            operator new();
          }

          sub_1AE5F2968(v124);
          v6 = sub_1AE5DB608(&v124[16], "UPDATE ", 7);
          v9 = v5[1];
          v8 = v5 + 1;
          v7 = v9;
          v10 = *(v8 + 23);
          if (v10 >= 0)
          {
            v11 = v8;
          }

          else
          {
            v11 = v7;
          }

          if (v10 >= 0)
          {
            v12 = *(v8 + 23);
          }

          else
          {
            v12 = v8[1];
          }

          v13 = sub_1AE5DB608(v6, v11, v12);
          sub_1AE5DB608(v13, "SET TokenID = ? WHERE TokenID = ?", 33);
          if ((v132 & 0x10) != 0)
          {
            v85 = v131;
            if (v131 < v128)
            {
              v131 = v128;
              v85 = v128;
            }

            v86 = &v127;
          }

          else
          {
            if ((v132 & 8) == 0)
            {
              v14 = 0;
              *(&__dst.__r_.__value_.__s + 23) = 0;
              goto LABEL_232;
            }

            v86 = v126;
            v85 = v126[2];
          }

          v101 = *v86;
          v14 = v85 - *v86;
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_1AE5DB4F0();
          }

          if (v14 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v85 - *v86;
          if (v14)
          {
            memmove(&__dst, v101, v14);
          }

LABEL_232:
          __dst.__r_.__value_.__s.__data_[v14] = 0;
          *v124 = *MEMORY[0x1E69E54D8];
          v102 = *(MEMORY[0x1E69E54D8] + 72);
          *&v124[*(*v124 - 24)] = *(MEMORY[0x1E69E54D8] + 64);
          *&v124[16] = v102;
          *&v124[24] = MEMORY[0x1E69E5548] + 16;
          if (v130 < 0)
          {
            operator delete(__p);
          }

          *&v124[24] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v125);
          std::iostream::~basic_iostream();
          MEMORY[0x1B2706340](&v133);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            v103 = __dst.__r_.__value_.__r.__words[0];
            sub_1AE621AB4(v119, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            operator delete(v103);
            goto LABEL_287;
          }

          goto LABEL_285;
        }

        v42 = (*v5)[8];
        if (v42)
        {
          if (*(v42 + 23) >= 0)
          {
            v43 = *(v42 + 23);
          }

          else
          {
            v43 = v42[1];
          }

          if (v43 + 32 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v43 + 32 > 0x16)
            {
              operator new();
            }

            qmemcpy(v124, "SELECT TokenID FROM Words WHERE ", sizeof(v124));
            if (*(v42 + 23) >= 0)
            {
              v92 = v42;
            }

            else
            {
              v92 = *v42;
            }

            memmove(&v125, v92, v43);
            *(&v125.__locale_ + v43) = 0;
            v93 = std::string::append(v124, " = ? LIMIT 1", 0xCuLL);
LABEL_222:
            v83 = v93->__r_.__value_.__s.__data_[0];
            *&__dst.__r_.__value_.__l.__data_ = *(&v93->__r_.__value_.__l.__data_ + 1);
            *(&__dst.__r_.__value_.__r.__words[1] + 6) = *(&v93->__r_.__value_.__r.__words[1] + 7);
            LOBYTE(v42) = *(&v93->__r_.__value_.__s + 23);
            v93->__r_.__value_.__l.__size_ = 0;
            v93->__r_.__value_.__r.__words[2] = 0;
            v93->__r_.__value_.__r.__words[0] = 0;
            if ((v124[23] & 0x80000000) != 0)
            {
              operator delete(*v124);
            }

            goto LABEL_224;
          }

          goto LABEL_290;
        }

        goto LABEL_161;
      }

      if (a2 != 11)
      {
        if (a2 == 12)
        {
          operator new();
        }

        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = 7;
      strcpy(&__dst, "SELECT ");
      v44 = **v5;
      v45 = (*v5)[1];
      if (v44 == v45)
      {
LABEL_265:
        v113 = *(v5 + 31);
        if (v113 >= 0)
        {
          v114 = *(v5 + 31);
        }

        else
        {
          v114 = v5[2];
        }

        if (v114 + 6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1AE5DB4F0();
        }

        if (v114 + 6 >= 0x17)
        {
          operator new();
        }

        *&v124[8] = 0uLL;
        v124[23] = v114 + 6;
        *v124 = 0x204D4F524620;
        if (v114)
        {
          if ((v113 & 0x80u) == 0)
          {
            v115 = (v5 + 1);
          }

          else
          {
            v115 = v5[1];
          }

          memmove(&v124[6], v115, v114);
        }

        v124[v114 + 6] = 0;
        if (v124[23] >= 0)
        {
          v116 = v124;
        }

        else
        {
          v116 = *v124;
        }

        if (v124[23] >= 0)
        {
          v117 = v124[23];
        }

        else
        {
          v117 = *&v124[8];
        }

        std::string::append(&__dst, v116, v117);
        if ((v124[23] & 0x80000000) == 0)
        {
          goto LABEL_285;
        }

        v81 = *v124;
LABEL_284:
        operator delete(v81);
LABEL_285:
        *v119 = *&__dst.__r_.__value_.__l.__data_;
        v41 = __dst.__r_.__value_.__r.__words[2];
        goto LABEL_286;
      }

      v46 = *(v44 + 23);
      if (v46 >= 0)
      {
        v47 = *(v44 + 23);
      }

      else
      {
        v47 = v44[1];
      }

      if (v47 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_289:
        sub_1AE5DB4F0();
      }

      if (v47 + 1 >= 0x17)
      {
        operator new();
      }

      memset(v124, 0, 24);
      v124[23] = v47 + 1;
      if (v47)
      {
        if ((v46 & 0x80u) == 0)
        {
          v94 = v44;
        }

        else
        {
          v94 = *v44;
        }

        memmove(v124, v94, v47);
      }

      *&v124[v47] = 32;
      if (v124[23] >= 0)
      {
        v95 = v124;
      }

      else
      {
        v95 = *v124;
      }

      if (v124[23] >= 0)
      {
        v96 = v124[23];
      }

      else
      {
        v96 = *&v124[8];
      }

      std::string::append(&__dst, v95, v96);
      if ((v124[23] & 0x80000000) != 0)
      {
        operator delete(*v124);
      }

      v97 = *(v44 + 8);
      if (v97)
      {
        if (v97 != 1)
        {
          goto LABEL_238;
        }

        v98 = "INTEGER";
        v99 = 7;
      }

      else
      {
        v98 = "BLOB";
        v99 = 4;
      }

      std::string::append(&__dst, v98, v99);
LABEL_238:
      v104 = v44 + 6;
      if (v44 + 6 != v45)
      {
        while (1)
        {
          std::string::append(&__dst, ", ", 2uLL);
          v107 = *(v104 + 23);
          if (v107 >= 0)
          {
            v108 = *(v104 + 23);
          }

          else
          {
            v108 = v104[1];
          }

          if (v108 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_289;
          }

          if (v108 + 1 >= 0x17)
          {
            operator new();
          }

          memset(v124, 0, 24);
          v124[23] = v108 + 1;
          if (v108)
          {
            if ((v107 & 0x80u) == 0)
            {
              v109 = v104;
            }

            else
            {
              v109 = *v104;
            }

            memmove(v124, v109, v108);
          }

          *&v124[v108] = 32;
          if (v124[23] >= 0)
          {
            v110 = v124;
          }

          else
          {
            v110 = *v124;
          }

          if (v124[23] >= 0)
          {
            v111 = v124[23];
          }

          else
          {
            v111 = *&v124[8];
          }

          std::string::append(&__dst, v110, v111);
          if ((v124[23] & 0x80000000) != 0)
          {
            operator delete(*v124);
          }

          v112 = *(v104 + 8);
          if (v112 == 1)
          {
            v105 = "INTEGER";
            v106 = 7;
          }

          else
          {
            if (v112)
            {
              goto LABEL_242;
            }

            v105 = "BLOB";
            v106 = 4;
          }

          std::string::append(&__dst, v105, v106);
LABEL_242:
          v104 += 6;
          if (v104 == v45)
          {
            goto LABEL_265;
          }
        }
      }

      goto LABEL_265;
    }

    if (a2 > 4)
    {
      if (a2 == 5)
      {
        v124[23] = 7;
        strcpy(v124, "SELECT ");
        v31 = *v5;
        v33 = **v5;
        v32 = v31[1];
        if (v33 != v32)
        {
          v34 = *(v33 + 23);
          v35 = v34 >= 0 ? v33 : *v33;
          v36 = v34 >= 0 ? *(v33 + 23) : *(v33 + 8);
          std::string::append(v124, v35, v36);
          for (i = v33 + 48; i != v32; i += 48)
          {
            std::string::append(v124, ", ", 2uLL);
            v38 = *(i + 23);
            if (v38 >= 0)
            {
              v39 = i;
            }

            else
            {
              v39 = *i;
            }

            if (v38 >= 0)
            {
              v40 = *(i + 23);
            }

            else
            {
              v40 = *(i + 8);
            }

            std::string::append(v124, v39, v40);
          }
        }

        std::string::append(v124, " FROM Words WHERE TokenID = ?", 0x1DuLL);
        *v119 = *v124;
        v41 = *&v124[16];
        goto LABEL_286;
      }

      if (a2 != 6)
      {
        v42 = (*v5)[8];
        if (v42)
        {
          v48 = *(v42 + 23);
          if (v48 >= 0)
          {
            v49 = *(v42 + 23);
          }

          else
          {
            v49 = v42[1];
          }

          if (v49 + 7 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v49 + 7 >= 0x17)
            {
              operator new();
            }

            *&v124[8] = 0uLL;
            v124[23] = v49 + 7;
            strcpy(v124, "SELECT ");
            if (v49)
            {
              if ((v48 & 0x80u) == 0)
              {
                v100 = v42;
              }

              else
              {
                v100 = *v42;
              }

              memmove(&v124[7], v100, v49);
            }

            v124[v49 + 7] = 0;
            v93 = std::string::append(v124, " FROM Words WHERE TokenID = ?", 0x1DuLL);
            goto LABEL_222;
          }

LABEL_290:
          sub_1AE5DB4F0();
        }

LABEL_161:
        v83 = 0;
LABEL_224:
        LOBYTE(v119[0]) = v83;
        *(v119 + 1) = *&__dst.__r_.__value_.__l.__data_;
        *(&v119[1] + 7) = *(&__dst.__r_.__value_.__r.__words[1] + 6);
        HIBYTE(v119[2]) = v42;
        goto LABEL_287;
      }

      *(&v121.__r_.__value_.__s + 23) = 7;
      strcpy(&v121, "SELECT ");
      v15 = *v5;
      memset(v124, 0, 24);
      v16 = *v15;
      v17 = v15[1];
      if (*v15 == v17)
      {
        goto LABEL_176;
      }

      do
      {
        if (v16 != v124 && (*(v16 + 37) & 1) != 0)
        {
          v18 = *(v16 + 23);
          if ((v124[23] & 0x80000000) != 0)
          {
            if (v18 >= 0)
            {
              v20 = v16;
            }

            else
            {
              v20 = *v16;
            }

            if (v18 >= 0)
            {
              v21 = *(v16 + 23);
            }

            else
            {
              v21 = v16[1];
            }

            sub_1AE621B84(v124, v20, v21);
          }

          else if ((*(v16 + 23) & 0x80) != 0)
          {
            sub_1AE621AB4(v124, *v16, v16[1]);
          }

          else
          {
            v19 = *v16;
            *&v124[16] = v16[2];
            *v124 = v19;
          }
        }

        v22 = *(v16 + 23);
        if (v22 >= 0)
        {
          v23 = *(v16 + 23);
        }

        else
        {
          v23 = v16[1];
        }

        if (v23 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1AE5DB4F0();
        }

        if (v23 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&__dst, 0, sizeof(__dst));
        *(&__dst.__r_.__value_.__s + 23) = v23 + 2;
        if (v23)
        {
          if ((v22 & 0x80u) == 0)
          {
            v24 = v16;
          }

          else
          {
            v24 = *v16;
          }

          memmove(&__dst, v24, v23);
        }

        strcpy(&__dst + v23, ", ");
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append(&v121, p_dst, size);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v16 += 6;
      }

      while (v16 != v17);
      if (v124[23] >= 0)
      {
        v84 = v124[23];
      }

      else
      {
        v84 = *&v124[8];
      }

      if (v84 + 25 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1AE5DB4F0();
      }

      if (v84 + 25 > 0x16)
      {
LABEL_176:
        operator new();
      }

      qmemcpy(v122, "TokenID FROM Words WHERE ", sizeof(v122));
      if (v124[23] >= 0)
      {
        v87 = v124;
      }

      else
      {
        v87 = *v124;
      }

      memmove(v123, v87, v84);
      v123[v84] = 0;
      v88 = std::string::append(v122, " = ?", 4uLL);
      v89 = *&v88->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v89;
      v88->__r_.__value_.__l.__size_ = 0;
      v88->__r_.__value_.__r.__words[2] = 0;
      v88->__r_.__value_.__r.__words[0] = 0;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = &__dst;
      }

      else
      {
        v90 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v91 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(&v121, v90, v91);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((v122[23] & 0x80000000) == 0)
        {
LABEL_188:
          if ((v124[23] & 0x80000000) == 0)
          {
LABEL_189:
            *v119 = *&v121.__r_.__value_.__l.__data_;
            v41 = v121.__r_.__value_.__r.__words[2];
LABEL_286:
            v119[2] = v41;
LABEL_287:
            operator new();
          }

LABEL_195:
          operator delete(*v124);
          goto LABEL_189;
        }
      }

      else if ((v122[23] & 0x80000000) == 0)
      {
        goto LABEL_188;
      }

      operator delete(*v122);
      if ((v124[23] & 0x80000000) == 0)
      {
        goto LABEL_189;
      }

      goto LABEL_195;
    }

    if (a2 != 3)
    {
      memset(v124, 0, 24);
      v51 = **v5;
      v50 = (*v5)[1];
      if (v51 != v50)
      {
        v52 = 0;
        do
        {
          if (v52 < *&v124[16])
          {
            if (*(v51 + 23) < 0)
            {
              sub_1AE5DBF1C(v52, *v51, *(v51 + 1));
            }

            else
            {
              v53 = *v51;
              *(v52 + 16) = *(v51 + 2);
              *v52 = v53;
            }

            v52 += 24;
          }

          else
          {
            v52 = sub_1AE5DBDDC(v124, v51);
          }

          *&v124[8] = v52;
          v51 += 3;
        }

        while (v51 != v50);
      }

      sub_1AE7646D4(&__dst, v5, v124);
      v79 = *v124;
      if (!*v124)
      {
        goto LABEL_285;
      }

      v80 = *&v124[8];
      v81 = *v124;
      if (*&v124[8] != *v124)
      {
        do
        {
          v82 = *(v80 - 1);
          v80 -= 3;
          if (v82 < 0)
          {
            operator delete(*v80);
          }
        }

        while (v80 != v79);
        v81 = *v124;
      }

      *&v124[8] = v79;
      goto LABEL_284;
    }

    memset(&v121, 0, sizeof(v121));
    v28 = **v5;
    v27 = (*v5)[1];
    if (v28 != v27)
    {
      v29 = 0;
      do
      {
        if (v29 < v121.__r_.__value_.__r.__words[2])
        {
          if (*(v28 + 23) < 0)
          {
            sub_1AE5DBF1C(v29, *v28, *(v28 + 1));
          }

          else
          {
            v30 = *v28;
            *(v29 + 16) = *(v28 + 2);
            *v29 = v30;
          }

          v29 += 24;
        }

        else
        {
          v29 = sub_1AE5DBDDC(&v121, v28);
        }

        v121.__r_.__value_.__l.__size_ = v29;
        v28 += 3;
      }

      while (v28 != v27);
    }

    v122[23] = 12;
    strcpy(v122, "INSERT INTO ");
    v56 = v5[1];
    v55 = (v5 + 1);
    v54 = v56;
    v57 = v55[23];
    if (v57 >= 0)
    {
      v58 = v55;
    }

    else
    {
      v58 = v54;
    }

    if (v57 >= 0)
    {
      v59 = *(v55 + 23);
    }

    else
    {
      v59 = *(v55 + 1);
    }

    v60 = std::string::append(v122, v58, v59);
    v61 = *&v60->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    v62 = std::string::append(&__dst, " (TokenID", 9uLL);
    v63 = *&v62->__r_.__value_.__l.__data_;
    *&v124[16] = *(&v62->__r_.__value_.__l + 2);
    *v124 = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = std::string::append(v124, ", ", 2uLL);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v120.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v120.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    if ((v124[23] & 0x80000000) != 0)
    {
      operator delete(*v124);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_130:
        if ((v122[23] & 0x80000000) == 0)
        {
          goto LABEL_131;
        }

LABEL_192:
        operator delete(*v122);
LABEL_131:
        v66 = *&v121.__r_.__value_.__l.__data_;
        if (v121.__r_.__value_.__r.__words[0] != v121.__r_.__value_.__l.__size_)
        {
          v67 = *(v121.__r_.__value_.__r.__words[0] + 23);
          v68 = v67 >= 0 ? v121.__r_.__value_.__r.__words[0] : *v121.__r_.__value_.__l.__data_;
          v69 = v67 >= 0 ? *(v121.__r_.__value_.__r.__words[0] + 23) : *(v121.__r_.__value_.__r.__words[0] + 8);
          std::string::append(&v120, v68, v69);
          for (j = v66 + 24; j != *(&v66 + 1); j += 24)
          {
            std::string::append(&v120, ", ", 2uLL);
            v71 = *(j + 23);
            if (v71 >= 0)
            {
              v72 = j;
            }

            else
            {
              v72 = *j;
            }

            if (v71 >= 0)
            {
              v73 = *(j + 23);
            }

            else
            {
              v73 = *(j + 8);
            }

            std::string::append(&v120, v72, v73);
          }
        }

        std::string::append(&v120, ") VALUES (?", 0xBuLL);
        if (v121.__r_.__value_.__l.__size_ != v121.__r_.__value_.__r.__words[0])
        {
          v74 = 0;
          do
          {
            std::string::append(&v120, ",?", 2uLL);
            ++v74;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v121.__r_.__value_.__l.__size_ - v121.__r_.__value_.__r.__words[0]) >> 3) > v74);
        }

        std::string::append(&v120, ")", 1uLL);
        v75 = v121.__r_.__value_.__r.__words[0];
        if (v121.__r_.__value_.__r.__words[0])
        {
          v76 = v121.__r_.__value_.__l.__size_;
          v77 = v121.__r_.__value_.__r.__words[0];
          if (v121.__r_.__value_.__l.__size_ != v121.__r_.__value_.__r.__words[0])
          {
            do
            {
              v78 = *(v76 - 1);
              v76 -= 3;
              if (v78 < 0)
              {
                operator delete(*v76);
              }
            }

            while (v76 != v75);
            v77 = v121.__r_.__value_.__r.__words[0];
          }

          v121.__r_.__value_.__l.__size_ = v75;
          operator delete(v77);
        }

        *v119 = *&v120.__r_.__value_.__l.__data_;
        v41 = v120.__r_.__value_.__r.__words[2];
        goto LABEL_286;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v122[23] & 0x80000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_192;
  }

  sub_1AE6F1B74(*(v3 + 40));
  return v4;
}

void sub_1AE6820A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6822B8(uint64_t a1, int a2, const __CFString *a3, void *a4)
{
  v8 = sub_1AE680C70(a1, 5);
  sub_1AE6F1CD4(v8, a2);
  v9 = sqlite3_step(*(v8 + 8));
  if (v9 != 100)
  {
    if (v9 == 26 || v9 == 11)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE6522FC(exception, 1);
      __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
    }

    return 0;
  }

  sub_1AE5CC874(a3, __p);
  v12 = sub_1AE6563F0((*(a1 + 8) + 24), __p);
  if (!v12 || (v13 = *(v12 + 10), v13 == -1))
  {
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  if (a4)
  {
    *a4 = sqlite3_column_int(*(v8 + 8), v13);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_1AE6823CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *sub_1AE68249C(uint64_t a1, int a2)
{
  v4 = sub_1AE680C70(a1, 5);
  sub_1AE6F1CD4(v4, a2);
  v5 = sqlite3_step(*(v4 + 8));
  if (v5 == 100)
  {
    v8 = *(a1 + 8);

    return sub_1AE68261C(v8, v4, 0);
  }

  else
  {
    if (v5 == 26 || v5 == 11)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE6522FC(exception, 1);
      __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
    }

    return 0;
  }
}

__CFDictionary *sub_1AE68261C(uint64_t *a1, uint64_t a2, int *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4), MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    v9 = 0;
    while (1)
    {
      v11 = *(v7 + 32);
      if (v11 == 1)
      {
        break;
      }

      if (!v11)
      {
        v12 = sqlite3_column_blob(*(a2 + 8), v9);
        v10 = (v9 + 1);
        v13 = sqlite3_column_bytes(*(a2 + 8), v9);
        if (v13 < 1 || v12 == 0)
        {
          goto LABEL_4;
        }

        v15 = CFStringCreateWithBytes(0, v12, v13, 0x8000100u, 0);
        if (!CFEqual(v15, *(v7 + 40)))
        {
          CFDictionaryAddValue(Mutable, *(v7 + 24), v15);
        }

        v16 = v15;
        goto LABEL_17;
      }

      v10 = v9;
LABEL_4:
      v7 += 48;
      v9 = v10;
      if (v7 == v8)
      {
        goto LABEL_19;
      }
    }

    valuePtr = sqlite3_column_int(*(a2 + 8), v9);
    v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!CFEqual(v17, *(v7 + 40)))
    {
      CFDictionaryAddValue(Mutable, *(v7 + 24), v17);
    }

    v10 = (v9 + 1);
    v16 = v17;
LABEL_17:
    CFRelease(v16);
    goto LABEL_4;
  }

  LODWORD(v10) = 0;
LABEL_19:
  if (a3)
  {
    *a3 = sqlite3_column_int(*(a2 + 8), v10);
  }

  return Mutable;
}

uint64_t sub_1AE6827AC(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  v16 = a3;
  if (theDict)
  {
    v5 = *(a1 + 8);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v6 = *v5;
    v7 = v5[1];
    while (v6 != v7)
    {
      if (CFDictionaryContainsKey(theDict, *(v6 + 24)))
      {
        v9 = v14;
        if (v14 >= v15)
        {
          v8 = sub_1AE5DBDDC(&v13, v6);
        }

        else
        {
          if (*(v6 + 23) < 0)
          {
            sub_1AE5DBF1C(v14, *v6, *(v6 + 8));
          }

          else
          {
            v10 = *v6;
            *(v14 + 2) = *(v6 + 16);
            *v9 = v10;
          }

          v8 = (v9 + 24);
        }

        v14 = v8;
      }

      v6 += 48;
    }

    sub_1AE7646D4(&__p, *(a1 + 136), &v13);
    operator new();
  }

  return 0;
}

void sub_1AE6829D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16, uint64_t a17)
{
  __cxa_free_exception(v17);
  sub_1AE651FB4(&a15);
  sub_1AE645234(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE682A84(uint64_t *a1, CFDictionaryRef theDict, int *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    v20 = *a1;
    v21 = a1[1];
    if (*a1 == v21)
    {
      return 1;
    }

    while (1)
    {
      v23 = CFDictionaryContainsKey(theDict, *(v20 + 24));
      if (v23)
      {
        Value = CFDictionaryGetValue(theDict, *(v20 + 24));
        v25 = *(v20 + 32);
        if (!v25)
        {
          goto LABEL_37;
        }
      }

      else
      {
        Value = *(v20 + 40);
        v25 = *(v20 + 32);
        if (!v25)
        {
LABEL_37:
          v27 = CFGetTypeID(Value);
          if (v27 != CFStringGetTypeID())
          {
            return 0;
          }

          if (a5 && v23)
          {
            sub_1AE6F1F24(a5, Value);
          }

          goto LABEL_28;
        }
      }

      if (v25 == 1)
      {
        v26 = CFGetTypeID(Value);
        if (v26 != CFNumberGetTypeID())
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        if (a5 && v23)
        {
          sub_1AE6F1CD4(a5, valuePtr);
        }
      }

LABEL_28:
      v20 += 48;
      if (v20 == v21)
      {
        return 1;
      }
    }
  }

  if (!a3)
  {
    return 0;
  }

  sub_1AE6F1CD4(a4, *a3);
  v9 = *a1;
  v10 = a1[1];
  if (*a1 == v10)
  {
    return 1;
  }

  if (!a5)
  {
    while (1)
    {
      if (CFDictionaryContainsKey(theDict, *(v9 + 24)))
      {
        v16 = CFDictionaryGetValue(theDict, *(v9 + 24));
        v17 = *(v9 + 32);
        if (!v17)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v16 = *(v9 + 40);
        v17 = *(v9 + 32);
        if (!v17)
        {
LABEL_24:
          v19 = CFGetTypeID(v16);
          if (v19 == CFStringGetTypeID())
          {
            sub_1AE6F1F24(a4, v16);
          }

          return 0;
        }
      }

      if (v17 == 1)
      {
        v18 = CFGetTypeID(v16);
        if (v18 != CFNumberGetTypeID())
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
        sub_1AE6F1CD4(a4, valuePtr);
      }

      v9 += 48;
      if (v9 == v10)
      {
        return 1;
      }
    }
  }

  while (1)
  {
    v11 = CFDictionaryContainsKey(theDict, *(v9 + 24));
    if (v11)
    {
      v12 = CFDictionaryGetValue(theDict, *(v9 + 24));
    }

    else
    {
      v12 = *(v9 + 40);
    }

    v13 = *(v9 + 32);
    if (v13 == 1)
    {
      v15 = CFGetTypeID(v12);
      if (v15 != CFNumberGetTypeID())
      {
        return 0;
      }

      valuePtr = 0;
      CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
      sub_1AE6F1CD4(a4, valuePtr);
      if (v11)
      {
        sub_1AE6F1CD4(a5, valuePtr);
      }

      goto LABEL_6;
    }

    if (!v13)
    {
      break;
    }

LABEL_6:
    v9 += 48;
    if (v9 == v10)
    {
      return 1;
    }
  }

  v14 = CFGetTypeID(v12);
  if (v14 == CFStringGetTypeID())
  {
    sub_1AE6F1F24(a4, v12);
  }

  return 0;
}

uint64_t sub_1AE682E08(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    v4 = *(a1 + 8);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v5 = *v4;
    v6 = v4[1];
    if (*v4 != v6)
    {
      do
      {
        if (CFDictionaryContainsKey(theDict, *(v5 + 24)))
        {
          v8 = v27;
          if (v27 >= v28)
          {
            v7 = sub_1AE5DBDDC(&v26, v5);
          }

          else
          {
            if (*(v5 + 23) < 0)
            {
              sub_1AE5DBF1C(v27, *v5, *(v5 + 8));
            }

            else
            {
              v9 = *v5;
              *(v27 + 2) = *(v5 + 16);
              *v8 = v9;
            }

            v7 = (v8 + 24);
          }

          v27 = v7;
        }

        v5 += 48;
      }

      while (v5 != v6);
    }

    v10 = sub_1AE680C70(a1, 6);
    Value = CFDictionaryGetValue(theDict, *(*(*(a1 + 8) + 64) + 24));
    v12 = Value;
    if (!Value || (v13 = CFGetTypeID(Value), v13 == CFStringGetTypeID()))
    {
      sub_1AE6F1F24(v10, v12);
    }

    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    sub_1AE731C2C(qword_1ED9AC900, v14, "binding attributes failed: missing or incompatible token string", v15, v16, v17, v18, v19, v25);
    v20 = v26;
    if (v26)
    {
      v21 = v27;
      v22 = v26;
      if (v27 != v26)
      {
        do
        {
          v23 = *(v21 - 1);
          v21 -= 3;
          if (v23 < 0)
          {
            operator delete(*v21);
          }
        }

        while (v21 != v20);
        v22 = v26;
      }

      v27 = v20;
      operator delete(v22);
    }
  }

  return 3;
}

void sub_1AE6836B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v29)
  {
    operator delete(v29);
  }

  sub_1AE645234((v30 - 112));
  _Unwind_Resume(a1);
}

sqlite3 *sub_1AE6839E4(sqlite3 *result)
{
  if (*(result + 56) == 1)
  {
    return sub_1AE683AD8(result + 16, 1);
  }

  return result;
}

sqlite3 *sub_1AE683AD8(uint64_t a1, int a2)
{
  ppDb = 0;
  v4 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v4 = *v4;
  }

  if (sqlite3_open(v4, &ppDb))
  {
    v5 = 0;
    result = ppDb;
    if (!ppDb)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a2)
  {
    p_ppDb = a1;
  }

  else
  {
    p_ppDb = &ppDb;
  }

  v8 = *p_ppDb;
  if (a2)
  {
    v9 = &ppDb;
  }

  else
  {
    v9 = a1;
  }

  v10 = *v9;
  if (a2 && *(a1 + 41) == 1)
  {
    v11 = *v9;
    v12 = v8;
    sqlite3_exec(ppDb, "PRAGMA journal_mode = WAL;", 0, 0, 0);
    v10 = v11;
    v8 = v12;
  }

  v13 = sqlite3_backup_init(v10, "main", v8, "main");
  if (v13)
  {
    v14 = v13;
    sqlite3_backup_step(v13, -1);
    sqlite3_backup_finish(v14);
  }

  v5 = sqlite3_errcode(ppDb) == 0;
  result = ppDb;
  if (ppDb)
  {
LABEL_5:
    result = sqlite3_close(result);
  }

LABEL_6:
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE6522FC(exception, 3);
    __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
  }

  return result;
}

void sub_1AE683C24()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3002000000;
  v0[3] = sub_1AE683F98;
  v0[4] = sub_1AE683FA8;
  operator new();
}

void sub_1AE683F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  sub_1AE673B40(a33);
  _Block_object_dispose((v33 - 128), 8);
  v35 = *(v33 - 88);
  *(v33 - 88) = 0;
  if (!v35)
  {
    _Unwind_Resume(a1);
  }

  (*(*v35 + 8))(v35);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE683F98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_1AE683FA8(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1AE683FE0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a2 + 184);
  *a1 = &unk_1F242B318;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 96;
  if (*(a3 + 23) < 0)
  {
    sub_1AE5DBF1C((a1 + 112), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 128) = *(a3 + 2);
    *(a1 + 112) = v4;
  }

  operator new();
}

void sub_1AE6842F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int128 a10)
{
  __cxa_free_exception(v12);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&a10, "Failed to create lexicon database");
    sub_1AE64FB94(exception, &a10);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  sub_1AE68473C((v11 + 136));
  if (*(v11 + 135) < 0)
  {
    operator delete(*(v11 + 112));
  }

  sub_1AE684794(v10);
  _Unwind_Resume(a1);
}

void sub_1AE684448(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v16)
  {
LABEL_6:
    __cxa_end_catch();
    JUMPOUT(0x1AE68447CLL);
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_1AE6844A8(void *result, void *a2)
{
  v2 = a2 + 6;
  v3 = a2[6];
  v4 = a2[5];
  result[6] = v3;
  v5 = result + 6;
  result[5] = v4;
  v6 = a2[7];
  result[7] = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v5;
  }

  return result;
}

void sub_1AE6844EC(void *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v3 + 24);
    if (v4 && *(v3 + 16) != 0)
    {
      v8 = a1[7];
      v9 = *(v3 + 20);
      v10 = *(v3 + 7);
      if (!*(v3 + 40))
      {
        v11 = malloc_type_malloc(0x30uLL, 0x100004052888210uLL);
        *(v3 + 40) = v11;
        if (v11)
        {
          *&v12 = -1;
          *(&v12 + 1) = -1;
          v11[1] = v12;
          v11[2] = v12;
          *v11 = v12;
        }
      }

      if (sub_1AE77538C(v4, v9, v10, *(*v2 + 40), a2, 0, 0))
      {
        v18 = 0;
        v13 = (*(*v8 + 264))(v8, a2);
        v14 = *(*(a1[4] + 8) + 40);
        if ((*(*v14 + 248))(v14, v13, &v18))
        {
          *(*(a1[6] + 8) + 24) = 0;
        }

        else
        {
          v15 = *(*(a1[5] + 8) + 48);
          if (!v15)
          {
LABEL_18:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v16 = v15;
              v17 = *(v15 + 7);
              if (v17 <= a2)
              {
                break;
              }

              v15 = *v16;
              if (!*v16)
              {
                goto LABEL_18;
              }
            }

            if (v17 >= a2)
            {
              break;
            }

            v15 = v16[1];
            if (!v15)
            {
              goto LABEL_18;
            }
          }

          *(v16 + 8) = v18;
        }

        CFRelease(v13);
      }
    }
  }
}

uint64_t sub_1AE6846F0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v5 = *(v2 + 48);
  v3 = v2 + 48;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 28);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != v3 && *(v6 + 28) <= a2)
    {
      return *(v6 + 32);
    }
  }

  return a2;
}

void *sub_1AE68473C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    MEMORY[0x1B2706400](v1, 0x1072C408ACDB0FELL);
    return v2;
  }

  return result;
}

uint64_t sub_1AE684794(uint64_t a1)
{
  if (*a1)
  {
    sub_1AE72AEF0((a1 + 48));
    v2 = sqlite3_close(*a1);
    v3 = v2;
    if (v2)
    {
      if (qword_1ED9AC8F8 != -1)
      {
        dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
      }

      v4 = qword_1ED9AC900;
      sqlite3_errmsg(*a1);
      sub_1AE731C2C(v4, v5, "Failed to close database, error code: %d  error message: %s\n", v6, v7, v8, v9, v10, v3);
    }
  }

  sub_1AE72AEF0((a1 + 48));
  sub_1AE673B40(*(a1 + 80));
  sub_1AE673B40(*(a1 + 56));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1AE684864(uint64_t a1)
{
  v2 = sub_1AE685020(a1, "BEGIN IMMEDIATE");
  v9 = v2;
  if ((v2 == 0) != (v2 != 5))
  {
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    sub_1AE731C2C(qword_1ED9AC900, v3, "Could not begin transaction, error %d", v4, v5, v6, v7, v8, v9);
  }

  if (*(a1 + 40) == 1)
  {
    v10 = *(*(a1 + 8) + 136);
    *(&v52.__r_.__value_.__s + 23) = 13;
    strcpy(&v52, "CREATE TABLE ");
    if (*(v10 + 31) < 0)
    {
      sub_1AE5DBF1C(__p, *(v10 + 8), *(v10 + 16));
    }

    else
    {
      v11 = *(v10 + 8);
      v51 = *(v10 + 24);
      *__p = v11;
    }

    if (v51 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v51 >= 0)
    {
      v13 = HIBYTE(v51);
    }

    else
    {
      v13 = __p[1];
    }

    v14 = std::string::append(&v52, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v53, " (TokenID INTEGER PRIMARY KEY, ", 0x1FuLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
LABEL_17:
        if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_27:
        operator delete(v52.__r_.__value_.__l.__data_);
LABEL_18:
        v18 = **v10;
        v19 = *(*v10 + 8);
        if (v18 == v19)
        {
LABEL_73:
          std::string::append(&v49, ")", 1uLL);
          sub_1AE685020(a1, "PRAGMA journal_mode = WAL;");
          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &v49;
          }

          else
          {
            v37 = v49.__r_.__value_.__r.__words[0];
          }

          v38 = sub_1AE685020(a1, v37);
          if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
          {
            v39 = v38;
            operator delete(v49.__r_.__value_.__l.__data_);
            v38 = v39;
          }

          if (v38)
          {
            exception = __cxa_allocate_exception(0x20uLL);
            sub_1AE65215C(exception, 4);
            __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
          }

          goto LABEL_79;
        }

        v20 = *(v18 + 23);
        if (v20 >= 0)
        {
          v21 = *(v18 + 23);
        }

        else
        {
          v21 = v18[1];
        }

        if (v21 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_84:
          sub_1AE5DB4F0();
        }

        if (v21 + 1 >= 0x17)
        {
          operator new();
        }

        memset(&v53, 0, sizeof(v53));
        *(&v53.__r_.__value_.__s + 23) = v21 + 1;
        if (v21)
        {
          if ((v20 & 0x80u) == 0)
          {
            v22 = v18;
          }

          else
          {
            v22 = *v18;
          }

          memmove(&v53, v22, v21);
        }

        *(&v53.__r_.__value_.__l.__data_ + v21) = 32;
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v53;
        }

        else
        {
          v23 = v53.__r_.__value_.__r.__words[0];
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v53.__r_.__value_.__l.__size_;
        }

        std::string::append(&v49, v23, size);
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
          v25 = *(v18 + 8);
          if (v25)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v25 = *(v18 + 8);
          if (v25)
          {
LABEL_41:
            if (v25 != 1)
            {
              goto LABEL_46;
            }

            v26 = "INTEGER";
            v27 = 7;
LABEL_45:
            std::string::append(&v49, v26, v27);
LABEL_46:
            v28 = v18 + 6;
            if (v18 + 6 != v19)
            {
              while (1)
              {
                std::string::append(&v49, ", ", 2uLL);
                v31 = *(v28 + 23);
                if (v31 >= 0)
                {
                  v32 = *(v28 + 23);
                }

                else
                {
                  v32 = v28[1];
                }

                if (v32 + 1 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_84;
                }

                if (v32 + 1 >= 0x17)
                {
                  operator new();
                }

                memset(&v53, 0, sizeof(v53));
                *(&v53.__r_.__value_.__s + 23) = v32 + 1;
                if (v32)
                {
                  if ((v31 & 0x80u) == 0)
                  {
                    v33 = v28;
                  }

                  else
                  {
                    v33 = *v28;
                  }

                  memmove(&v53, v33, v32);
                }

                *(&v53.__r_.__value_.__l.__data_ + v32) = 32;
                if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v34 = &v53;
                }

                else
                {
                  v34 = v53.__r_.__value_.__r.__words[0];
                }

                if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v35 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v35 = v53.__r_.__value_.__l.__size_;
                }

                std::string::append(&v49, v34, v35);
                if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v53.__r_.__value_.__l.__data_);
                }

                v36 = *(v28 + 8);
                if (v36 == 1)
                {
                  v29 = "INTEGER";
                  v30 = 7;
                }

                else
                {
                  if (v36)
                  {
                    goto LABEL_50;
                  }

                  v29 = "BLOB";
                  v30 = 4;
                }

                std::string::append(&v49, v29, v30);
LABEL_50:
                v28 += 6;
                if (v28 == v19)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_73;
          }
        }

        v26 = "BLOB";
        v27 = 4;
        goto LABEL_45;
      }
    }

    else if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(__p[0]);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_79:
  v40 = sub_1AE685020(a1, "COMMIT");
  v47 = v40;
  if (v40)
  {
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    sub_1AE731C2C(qword_1ED9AC900, v41, "Could not commit transaction, error %d", v42, v43, v44, v45, v46, v47);
  }
}

void sub_1AE684D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1AE685118(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE684E68(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 136);
  *(&v15.__r_.__value_.__s + 23) = 11;
  strcpy(&v15, "DROP TABLE ");
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  v9 = std::string::append(&v15, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v14 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  sub_1AE685020(a1, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1AE684864(a1);
  return 1;
}

uint64_t sub_1AE685020(sqlite3 **a1, const char *a2)
{
  v2 = a2;
  result = sqlite3_exec(*a1, a2, 0, 0, 0);
  if (result)
  {
    v5 = result;
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    v6 = qword_1ED9AC900;
    sqlite3_errmsg(*a1);
    sub_1AE731C2C(v6, v7, "Could not execute SQL %s, error message: %s\n", v8, v9, v10, v11, v12, v2);
    if (v5 == 26 || (result = v5, v5 == 11))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE6522FC(exception, 1);
      __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
    }
  }

  return result;
}

uint64_t sub_1AE685118(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    sub_1AE685020(*result, "ROLLBACK");
    return v1;
  }

  return result;
}

BOOL sub_1AE68519C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1[1] + 64);
  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = CFStringCreateWithCString(0, v9, 0x8000100u);
  CFDictionarySetValue(Mutable, *(v7 + 24), v10);
  CFRelease(v10);
  v11 = (*(*a1 + 248))(a1, Mutable, a4);
  CFRelease(Mutable);
  return v11 == 0;
}

void sub_1AE685280(uint64_t a1, std::error_code *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 56) == 1)
  {
    sub_1AE72AEF0((a1 + 64));
    sub_1AE684E68(a1 + 16);
  }

  v10 = *(a1 + 144);
  v11 = *(v10 + 288);
  *(a1 + 152) = v11;
  if (v11 <= *(v10 + 292))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 152) = v12;
  v13 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    if ((remove(*v13, a2) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((remove(v13, a2) & 0x80000000) == 0)
  {
    return;
  }

  if (qword_1ED9AC8F8 != -1)
  {
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
  }

  v20 = qword_1ED9AC900;

  sub_1AE731C2C(v20, v14, "failed to remove lexicon database", v15, v16, v17, v18, v19, a9);
}

off_t sub_1AE68534C(uint64_t a1)
{
  v2 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v2 = *v2;
  }

  if (stat(v2, &v4) >= 0)
  {
    return 0;
  }

  else
  {
    return v4.st_size;
  }
}

uint64_t sub_1AE685398(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AE680C70(a1, 12);
  result = sqlite3_step(*(v3 + 8));
  if (result == 26 || result == 11)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE6522FC(exception, 1);
    goto LABEL_16;
  }

  v9 = 0;
  if (result == 100)
  {
    while (1)
    {
      v6 = sqlite3_column_int(*(v3 + 8), 0);
      if (v6)
      {
        (*(a2 + 16))(a2, v6, &v9, 0.0);
      }

      result = sqlite3_step(*(v3 + 8));
      if (result == 26 || result == 11)
      {
        break;
      }

      if (result != 100 || (v9 & 1) != 0)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE6522FC(exception, 1);
LABEL_16:
    __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
  }

  return result;
}

size_t sub_1AE685508@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v5 = sub_1AE680C70(a1, 7);
  sub_1AE6F1CD4(v5, a2);
  result = sqlite3_step(*(v5 + 8));
  if (result != 100)
  {
    if (result == 26 || result == 11)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE6522FC(exception, 1);
      __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
    }

    goto LABEL_13;
  }

  result = *(v5 + 8);
  if (!result)
  {
LABEL_13:
    a3[23] = 0;
    goto LABEL_17;
  }

  v9 = sqlite3_column_blob(result, 0);
  result = strlen(v9);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v10 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a3[23] = result;
  if (result)
  {
    result = memmove(a3, v9, result);
  }

  a3 += v10;
LABEL_17:
  *a3 = 0;
  return result;
}

uint64_t sub_1AE685644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = sub_1AE61D700(v6, v7);
  v9 = (*(*a1 + 16))(a1, v8, a3);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void sub_1AE6856E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE66A6D4(va);
  _Unwind_Resume(a1);
}

void sub_1AE6857B8(uint64_t a1)
{
  *a1 = &unk_1F242B318;
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1B2706400](v2, 0x1072C408ACDB0FELL);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  sub_1AE684794(a1 + 16);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE685864(uint64_t a1)
{
  *a1 = &unk_1F242B318;
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1B2706400](v2, 0x1072C408ACDB0FELL);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  sub_1AE684794(a1 + 16);
  return a1;
}

uint64_t sub_1AE6858F0(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(&qword_1ED9AC920, memory_order_acquire) & 1) == 0)
  {
    v46 = a1;
    v47 = __cxa_guard_acquire(&qword_1ED9AC920);
    a1 = v46;
    if (v47)
    {
      qword_1ED9AC8B0 = 0;
      qword_1ED9AC8A8 = 0;
      qword_1ED9AC8A0 = &qword_1ED9AC8A8;
      __cxa_guard_release(&qword_1ED9AC920);
      a1 = v46;
    }
  }

  if ((atomic_load_explicit(&qword_1ED9AC928, memory_order_acquire) & 1) == 0)
  {
    v48 = a1;
    v49 = __cxa_guard_acquire(&qword_1ED9AC928);
    a1 = v48;
    if (v49)
    {
      qword_1ED9AC8B8 = 850045863;
      unk_1ED9AC8C0 = 0u;
      *algn_1ED9AC8D0 = 0u;
      *&qword_1ED9AC8E0 = 0u;
      qword_1ED9AC8F0 = 0;
      __cxa_guard_release(&qword_1ED9AC928);
      a1 = v48;
    }
  }

  if (!a1)
  {
    return 0;
  }

  v3 = MEMORY[0x1B2705500]();
  sub_1AE5CC874(v3, __p);
  std::mutex::lock(&qword_1ED9AC8B8);
  v4 = qword_1ED9AC8A8;
  if (!qword_1ED9AC8A8)
  {
    goto LABEL_41;
  }

  if ((v51 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v51 & 0x80u) == 0)
  {
    v6 = v51;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = &qword_1ED9AC8A8;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_26;
      }

LABEL_12:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_27;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_27:
  if (v7 != &qword_1ED9AC8A8)
  {
    v13 = *(v7 + 55);
    if (v13 >= 0)
    {
      v14 = v7 + 4;
    }

    else
    {
      v14 = v7[4];
    }

    if (v13 >= 0)
    {
      v15 = *(v7 + 55);
    }

    else
    {
      v15 = v7[5];
    }

    if (v15 >= v6)
    {
      v16 = v6;
    }

    else
    {
      v16 = v15;
    }

    v17 = memcmp(v5, v14, v16);
    if (v17)
    {
      if (v17 < 0)
      {
        goto LABEL_41;
      }

LABEL_86:
      v18 = v7[7];
      goto LABEL_87;
    }

    if (v6 >= v15)
    {
      goto LABEL_86;
    }
  }

LABEL_41:
  v19 = ulocdata_open();
  ExemplarSet = ulocdata_getExemplarSet();
  v21 = ulocdata_getExemplarSet();
  v22 = ulocdata_getExemplarSet();
  if (*a2 <= 0 && (v43 = v22, v44 = uset_openEmpty(), (v18 = v44) != 0))
  {
    MEMORY[0x1B2706E40](v44, 48, 57);
    uset_addString();
    if (ExemplarSet)
    {
      MEMORY[0x1B2706E30](v18, ExemplarSet);
      uset_close();
    }

    if (v21)
    {
      MEMORY[0x1B2706E30](v18, v21);
      uset_close();
    }

    if (v43)
    {
      MEMORY[0x1B2706E30](v18, v43);
      uset_close();
    }

    if (v19)
    {
      ulocdata_close();
    }
  }

  else
  {
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    v29 = __p;
    if ((v51 & 0x80u) != 0)
    {
      LOBYTE(v29) = __p[0];
    }

    sub_1AE731C2C(qword_1ED9AC900, v23, "failed to initialize exemplar set for %s (error code %d)", v24, v25, v26, v27, v28, v29);
    v18 = 0;
  }

  v30 = qword_1ED9AC8A8;
  if (!qword_1ED9AC8A8)
  {
LABEL_83:
    operator new();
  }

  if ((v51 & 0x80u) == 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  if ((v51 & 0x80u) == 0)
  {
    v32 = v51;
  }

  else
  {
    v32 = __p[1];
  }

  while (2)
  {
    while (2)
    {
      v33 = v30;
      v36 = *(v30 + 32);
      v34 = v30 + 32;
      v35 = v36;
      v37 = *(v34 + 23);
      if (v37 >= 0)
      {
        v38 = v34;
      }

      else
      {
        v38 = v35;
      }

      if (v37 >= 0)
      {
        v39 = *(v34 + 23);
      }

      else
      {
        v39 = *(v34 + 8);
      }

      if (v39 >= v32)
      {
        v40 = v32;
      }

      else
      {
        v40 = v39;
      }

      v41 = memcmp(v31, v38, v40);
      if (v41)
      {
        if (v41 < 0)
        {
          goto LABEL_54;
        }
      }

      else if (v32 < v39)
      {
LABEL_54:
        v30 = *v33;
        if (!*v33)
        {
          goto LABEL_83;
        }

        continue;
      }

      break;
    }

    v42 = memcmp(v38, v31, v40);
    if (v42)
    {
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

LABEL_72:
      v30 = v33[1];
      if (!v30)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  if (v39 < v32)
  {
    goto LABEL_72;
  }

LABEL_84:
  v33[7] = v18;
LABEL_87:
  std::mutex::unlock(&qword_1ED9AC8B8);
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  return v18;
}

void sub_1AE685DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  sub_1AE6276E4(&a17);
  std::mutex::unlock(&qword_1ED9AC8B8);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE685E28(uint64_t a1, CFTypeRef cf, int a3, uint64_t a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (cf)
  {
    v10 = CFRetain(cf);
    *(a1 + 16) = v10;
    *(a1 + 24) = a3;
    *(a1 + 28) = a4;
    *(a1 + 36) = a5;
    if (v10)
    {
      Value = CFLocaleGetValue(v10, *MEMORY[0x1E695E6F0]);
      if (CFStringCompare(Value, @"zh", 0))
      {
        if (CFStringCompare(Value, @"ja", 0) && CFStringCompare(Value, @"ko", 0))
        {
          v13 = 0;
          *a1 = sub_1AE6858F0(cf, &v13);
        }
      }
    }
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = a3;
    *(a1 + 28) = a4;
    *(a1 + 36) = a5;
  }

  return a1;
}

uint64_t sub_1AE685F18(uint64_t a1, UTF32Char a2, _BYTE *a3)
{
  result = MEMORY[0x1B2706E70](**(a1 + 40));
  if (!result)
  {
    if ((atomic_load_explicit(&qword_1ED9AC758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC758))
    {
      qword_1ED9AC748 = CEMCreateEmojiCharacterSet();
      __cxa_guard_release(&qword_1ED9AC758);
    }

    result = qword_1ED9AC748;
    if (!qword_1ED9AC748 || (result = CFCharacterSetIsLongCharacterMember(qword_1ED9AC748, a2), !result))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sub_1AE685FD4(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    valuePtr = sub_1AE5D40B8(**(*(*(a1 + 32) + 8) + 24), @"dynamic");
    sub_1AE61D968();
  }

  return 0;
}

os_log_t sub_1AE6875A8()
{
  result = os_log_create("com.apple.LanguageModeling", "DynamicData");
  qword_1EB5E0C30 = result;
  return result;
}

__n128 sub_1AE6875D8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1AE6875E8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1AE687664()
{
  if ((atomic_load_explicit(&qword_1ED9AC910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC910))
  {
    qword_1ED9AC870 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    __cxa_guard_release(&qword_1ED9AC910);
  }

  v0 = 0x1ED9AC000uLL;
  if ((atomic_load_explicit(&qword_1ED9AC908, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED9AC908);
    v0 = 0x1ED9AC000;
    if (v2)
    {
      qword_1ED9AC868 = dispatch_queue_create("com.apple.NLPUtils.SingletonResourceManager", qword_1ED9AC870);
      __cxa_guard_release(&qword_1ED9AC908);
      v0 = 0x1ED9AC000;
    }
  }

  return *(v0 + 2152);
}

void sub_1AE68771C(void *a1)
{
  if ((atomic_load_explicit(&qword_1ED9AC918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC918))
  {
    xmmword_1ED9AC878 = 0u;
    *&qword_1ED9AC888 = 0u;
    dword_1ED9AC898 = 1065353216;
    __cxa_guard_release(&qword_1ED9AC918);
  }

  v2 = a1[6];
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = a1[6];
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = v2[1];
  }

  v6 = sub_1AE5DA928(&v28, v4, v5);
  v7 = *(&xmmword_1ED9AC878 + 1);
  if (*(&xmmword_1ED9AC878 + 1))
  {
    v8 = v6;
    v9 = vcnt_s8(*(&xmmword_1ED9AC878 + 8));
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (v6 >= *(&xmmword_1ED9AC878 + 1))
      {
        v10 = v6 % *(&xmmword_1ED9AC878 + 1);
      }
    }

    else
    {
      v10 = (*(&xmmword_1ED9AC878 + 1) - 1) & v6;
    }

    v11 = *(xmmword_1ED9AC878 + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = *(v2 + 23);
        if (v13 >= 0)
        {
          v14 = *(v2 + 23);
        }

        else
        {
          v14 = v2[1];
        }

        if (v13 < 0)
        {
          v2 = *v2;
        }

        if (v9.u32[0] < 2uLL)
        {
          v15 = *(&xmmword_1ED9AC878 + 1) - 1;
          while (1)
          {
            v20 = v12[1];
            if (v20 == v8)
            {
              v21 = *(v12 + 39);
              v22 = v21;
              if (v21 < 0)
              {
                v21 = v12[3];
              }

              if (v21 == v14)
              {
                v23 = v22 >= 0 ? (v12 + 2) : v12[2];
                if (!memcmp(v23, v2, v14))
                {
                  goto LABEL_45;
                }
              }
            }

            else if ((v20 & v15) != v10)
            {
              goto LABEL_52;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_52;
            }
          }
        }

        do
        {
          v16 = v12[1];
          if (v16 == v8)
          {
            v17 = *(v12 + 39);
            v18 = v17;
            if (v17 < 0)
            {
              v17 = v12[3];
            }

            if (v17 == v14)
            {
              v19 = v18 >= 0 ? (v12 + 2) : v12[2];
              if (!memcmp(v19, v2, v14))
              {
LABEL_45:
                v24 = v12[6];
                if (v24 && (v24 = std::__shared_weak_count::lock(v24)) != 0)
                {
                  v25 = v12[5];
                }

                else
                {
                  v25 = 0;
                }

                v26 = *(a1[5] + 8);
                v27 = *(v26 + 48);
                *(v26 + 40) = v25;
                *(v26 + 48) = v24;
                if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v27->__on_zero_shared)(v27);
                  std::__shared_weak_count::__release_weak(v27);
                }

                break;
              }
            }
          }

          else
          {
            if (v16 >= v7)
            {
              v16 %= v7;
            }

            if (v16 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

LABEL_52:
  if (!*(*(a1[5] + 8) + 40))
  {
    v28 = (*(a1[4] + 16))();
    operator new();
  }
}

void sub_1AE687FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10)
{
  sub_1AE669CF4(&a10);
  if (a9)
  {
    std::__shared_weak_count::__release_weak(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1AE687FFC(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1AE6880F4(v2);
    MEMORY[0x1B2706400](v4, 0x10F2C404C86D6EELL);
    return v3;
  }

  return v1;
}

uint64_t sub_1AE688054(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN2LM11DynamicDataEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN2LM11DynamicDataEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN2LM11DynamicDataEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN2LM11DynamicDataEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE6880B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1AE6880F4(result);

    JUMPOUT(0x1B2706400);
  }

  return result;
}

uint64_t sub_1AE6880F4(uint64_t a1)
{
  std::mutex::~mutex((a1 + 664));
  v2 = *(a1 + 648);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 616);
  if (v3)
  {
    v4 = *(a1 + 624);
    v5 = *(a1 + 616);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 8);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v3);
      v5 = *(a1 + 616);
    }

    *(a1 + 624) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 592);
  if (v7)
  {
    do
    {
      v8 = *v7;
      v9 = *(v7 + 6);
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      if (v7[39] < 0)
      {
        operator delete(*(v7 + 2));
      }

      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v10 = *(a1 + 576);
  *(a1 + 576) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(a1 + 568);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a1 + 552);
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 535) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (*(a1 + 535) < 0)
  {
LABEL_29:
    operator delete(*(a1 + 512));
  }

LABEL_30:
  sub_1AE6318C4((a1 + 40));
  v13 = *(a1 + 32);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 24);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v14)
  {
    v15 = sub_1AE5D4684(v14);
    MEMORY[0x1B2706400](v15, 0x1072C40AE5FB29CLL);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE688380(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

const void **sub_1AE6883BC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void *sub_1AE6883F4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::mutex::~mutex((v1 + 96));
    v3 = *(v1 + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    *(v1 + 8) = 0;
    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;
    MEMORY[0x1B2706400](v1, 0x1060C40530E8172);
    return v2;
  }

  return result;
}

void sub_1AE68846C(void *a1, uint64_t a2)
{
  *a1 = 0;
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = open_dprotected_np(v2, 0, 3, 0, 0);
  if ((v3 & 0x80000000) == 0)
  {
    fcntl(v3, 64, 3);
    operator new();
  }

  operator new();
}

void sub_1AE6885D0(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  sub_1AE688744(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE6886F0(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1AE719A24(v2);
    MEMORY[0x1B2706400](v4, 0x1060C4064AC95D2);
    return v3;
  }

  return v1;
}

uint64_t **sub_1AE688744(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      sub_1AE774A30(v1);
      if (*v1)
      {
        MEMORY[0x1B2706400](*v1, 0x1010C4006136809);
      }
    }

    MEMORY[0x1B2706400](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

void sub_1AE6887B8(uint64_t a1)
{
  std::mutex::lock((a1 + 664));
  (*(**(a1 + 640) + 168))(*(a1 + 640));
  v3 = (a1 + 512);
  if (*(a1 + 535) < 0)
  {
    if ((remove(*v3, v2) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((remove(v3, v2) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  if (qword_1EB5E0C38 != -1)
  {
    dispatch_once(&qword_1EB5E0C38, &unk_1F242B4F0);
  }

  v4 = qword_1EB5E0C30;
  if (os_log_type_enabled(qword_1EB5E0C30, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_1AE5C8000, v4, OS_LOG_TYPE_DEFAULT, "failed to remove dynamic model", &__p, 2u);
  }

LABEL_9:
  v5 = *(a1 + 560);
  if (v5)
  {
    (*(*v5 + 112))(v5);
  }

  v6 = *(a1 + 616);
  for (i = *(a1 + 624); v6 != i; v6 += 16)
  {
    (*(**v6 + 112))();
  }

  v8 = *(a1 + 544);
  std::mutex::lock((v8 + 96));
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = CFAbsoluteTimeGetCurrent();
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0;
  *(v8 + 24) = 257;
  if (*(v8 + 8))
  {
    sub_1AE61D968();
  }

  std::mutex::unlock((v8 + 96));
  std::mutex::unlock((a1 + 664));
}

void sub_1AE6889CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 96));
  std::mutex::unlock((v14 + 664));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE688A10(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_1AE688AFC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242B660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE688B98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242B610;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE688C10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN2LM15NgramPoolFacadeEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN2LM15NgramPoolFacadeEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN2LM15NgramPoolFacadeEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN2LM15NgramPoolFacadeEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE688C6C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1AE688C9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE688CDC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN2LM28DynamicLanguageModelMetadataEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN2LM28DynamicLanguageModelMetadataEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN2LM28DynamicLanguageModelMetadataEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN2LM28DynamicLanguageModelMetadataEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE688D38(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::mutex::~mutex((v1 + 96));
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    *(v1 + 8) = 0;
    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;

    JUMPOUT(0x1B2706400);
  }

  return result;
}

void sub_1AE688DBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE688DF8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    sub_1AE60819C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1AE688E44(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1ED9AC918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC918))
  {
    xmmword_1ED9AC878 = 0u;
    *&qword_1ED9AC888 = 0u;
    dword_1ED9AC898 = 1065353216;
    __cxa_guard_release(&qword_1ED9AC918);
  }

  v2 = qword_1ED9AC888;
  if (qword_1ED9AC888)
  {
    do
    {
      v3 = v2[6];
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = v2[5];
          if (v6)
          {
            (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
          }

          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_1AE688F60(uint64_t *a1, int a2, double a3)
{
  v19 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 83));
  v6 = a1[68];
  std::mutex::lock((v6 + 96));
  v7 = *(v6 + 56);
  if (v7 == 0.0)
  {
    v8 = *(v6 + 56);
  }

  else
  {
    v8 = a3 - v7;
  }

  std::mutex::unlock((v6 + 96));
  v9 = floor(v8 / *(a1 + 63));
  if (a2 && (v10 = 1.0, v9 < 1.0) || (v10 = v9, v9 > 0.0))
  {
    v11 = expf(*(a1 + 62) * v10);
    if (qword_1EB5E0C38 != -1)
    {
      dispatch_once(&qword_1EB5E0C38, &unk_1F242B4F0);
    }

    v12 = qword_1EB5E0C30;
    if (os_log_type_enabled(qword_1EB5E0C30, OS_LOG_TYPE_INFO))
    {
      v13 = a1;
      if (*(a1 + 23) < 0)
      {
        v13 = *a1;
      }

      buf = 136315138;
      *buf_4 = v13;
      _os_log_impl(&dword_1AE5C8000, v12, OS_LOG_TYPE_INFO, "applying exponential decay for dynamic model bundle: %s", &buf, 0xCu);
    }

    (*(*a1[80] + 136))(a1[80], v11);
    v14 = a1[68];
    std::mutex::lock((v14 + 96));
    *(v14 + 56) = CFAbsoluteTimeGetCurrent();
    *(v14 + 32) = 0;
    *(v14 + 24) = 1;
    std::mutex::unlock((v14 + 96));
  }

  v15 = *(a1[3] + 16);
  if (v15 && *(a1 + 404) == 1)
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v15);
    sub_1AE727D84(PathComponent);
  }

  std::mutex::unlock((a1 + 83));
}

void sub_1AE6891B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE689200(uint64_t a1)
{
  std::mutex::lock((a1 + 664));
  v2 = *(a1 + 544);
  std::mutex::lock((v2 + 96));
  v3 = *(v2 + 24);
  std::mutex::unlock((v2 + 96));
  if ((v3 & 1) == 0)
  {
    goto LABEL_48;
  }

  v4 = a1;
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
  }

  v5 = (a1 + 512);
  if (*(a1 + 535) < 0)
  {
    v5 = v5->__pn_.__r_.__value_.__r.__words[0];
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 0x40000000;
  v53 = sub_1AE6898B0;
  v54 = &unk_1E7A2DDA0;
  v55 = a1;
  *__error() = 0;
  v6 = strlen(v4);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v57 = v6;
  if (v6)
  {
    memcpy(&__dst, v4, v6);
  }

  *(&__dst + v7) = 0;
  sub_1AE61DC78(&__dst, __p);
  if ((v57 & 0x80000000) == 0)
  {
    v14 = v59;
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    if (!__p[1])
    {
      goto LABEL_30;
    }

    v15 = __p[0];
LABEL_19:
    v16 = sub_1AE69376C(v15, 1538, v8, v9, v10, v11, v12, v13, 0x180u);
    if ((v16 & 0x80000000) == 0)
    {
      v17 = (v53)(v52, v16);
      close(v16);
      if (v17)
      {
        v20 = v59 >= 0 ? __p : __p[0];
        rename(v20, v5, v19);
        if ((v21 & 0x80000000) == 0)
        {
LABEL_30:
          if (v59 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_32;
        }
      }

      if (v59 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      remove(v22, v18);
    }

    __error();
    CFLog();
    goto LABEL_30;
  }

  operator delete(__dst);
  v14 = v59;
  if (v59 < 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v14)
  {
    v15 = __p;
    goto LABEL_19;
  }

LABEL_32:
  (*(**(a1 + 560) + 168))(*(a1 + 560));
  v24 = *(a1 + 616);
  for (i = *(a1 + 624); v24 != i; v24 += 2)
  {
    (*(**v24 + 168))(*v24, v23);
  }

  v26 = *(a1 + 640);
  __p[0] = 0;
  v27 = (*(*v26 + 208))(v26, __p);
  if (!__p[0])
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v50 = CFErrorCopyDescription(__p[0]);
    CFLog();
    CFRelease(v50);
    CFRelease(__p[0]);
  }

  v28 = *(a1 + 544);
  __p[0] = 0;
  std::mutex::lock((v28 + 96));
  v29 = CFStringCreateWithFormat(0, 0, @"%d.%d", *(v28 + 16), *(v28 + 20));
  CFDictionarySetValue(*v28, @"adaptationVersion", v29);
  CFRelease(v29);
  *(v28 + 88) = CFAbsoluteTimeGetCurrent();
  v30 = *v28;
  v31 = CFNumberCreate(0, kCFNumberDoubleType, (v28 + 56));
  CFDictionarySetValue(v30, @"lastDecay", v31);
  CFRelease(v31);
  v32 = *v28;
  v33 = CFNumberCreate(0, kCFNumberDoubleType, (v28 + 64));
  CFDictionarySetValue(v32, @"lastPruning", v33);
  CFRelease(v33);
  v34 = *v28;
  v35 = CFNumberCreate(0, kCFNumberDoubleType, (v28 + 48));
  CFDictionarySetValue(v34, @"creationTime", v35);
  CFRelease(v35);
  v36 = *v28;
  v37 = CFNumberCreate(0, kCFNumberCFIndexType, (v28 + 32));
  CFDictionarySetValue(v36, @"wordsSinceLastDecay", v37);
  CFRelease(v37);
  v38 = *v28;
  v39 = CFNumberCreate(0, kCFNumberDoubleType, (v28 + 80));
  CFDictionarySetValue(v38, @"lastOfflineAdaptationTime1", v39);
  CFRelease(v39);
  v40 = *v28;
  v41 = CFNumberCreate(0, kCFNumberDoubleType, (v28 + 72));
  CFDictionarySetValue(v40, @"lastOfflineAdaptationTime2", v41);
  CFRelease(v41);
  v42 = *v28;
  v43 = CFNumberCreate(0, kCFNumberDoubleType, (v28 + 88));
  CFDictionarySetValue(v42, @"lastFlushTimeKey", v43);
  CFRelease(v43);
  v44 = *v28;
  v45 = CFNumberCreate(0, kCFNumberLongType, (v28 + 40));
  CFDictionarySetValue(v44, @"numberOfTokensTyped", v45);
  CFRelease(v45);
  v46 = MEMORY[0x1E695E4D0];
  if (!*(v28 + 25))
  {
    v46 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(*v28, @"didResetMessages", *v46);
  *(v28 + 24) = 0;
  v47 = sub_1AE61DA04(*v28, *(v28 + 8), kCFPropertyListBinaryFormat_v1_0, 1, __p);
  std::mutex::unlock((v28 + 96));
  if (__p[0])
  {
    v48 = v47;
  }

  else
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    v51 = CFErrorCopyDescription(__p[0]);
    CFLog();
    CFRelease(v51);
    CFRelease(__p[0]);
  }

  v49 = *(*(a1 + 24) + 16);
  if (v49 && *(a1 + 404) == 1)
  {
    __dst = CFURLCreateCopyDeletingLastPathComponent(0, v49);
    sub_1AE727D84(__dst);
  }

LABEL_48:
  std::mutex::unlock((a1 + 664));
}

void sub_1AE689838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_1AE6883BC(&a17);
  std::mutex::unlock((v28 + 664));
  _Unwind_Resume(a1);
}

BOOL sub_1AE6898DC(uint64_t a1, void **__s1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 55);
  if (v3 < 0)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = *(a1 + 55);
  }

  v5 = *(__s1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    if (v4 == -1)
    {
      goto LABEL_20;
    }

    v6 = __s1;
    __s1 = *__s1;
    v5 = v6[1];
  }

  else if (v4 == -1)
  {
LABEL_20:
    sub_1AE61F754();
  }

  if (v5 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v3 < 0)
  {
    v2 = *v2;
  }

  return !memcmp(__s1, v2, v7) && v7 == v4;
}

void sub_1AE689964(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1ED9AC918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC918))
  {
    xmmword_1ED9AC878 = 0u;
    *&qword_1ED9AC888 = 0u;
    dword_1ED9AC898 = 1065353216;
    __cxa_guard_release(&qword_1ED9AC918);
  }

  v2 = qword_1ED9AC888;
  if (qword_1ED9AC888)
  {
    while (1)
    {
      v17 = 0;
      v3 = v2[6];
      if (!v3)
      {
        break;
      }

      v17 = std::__shared_weak_count::lock(v3);
      if (!v17 || !v2[5] || (*(*(a1 + 32) + 16))(*(a1 + 32)))
      {
        break;
      }

      v2 = *v2;
      v16 = v17;
LABEL_40:
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

LABEL_4:
      if (!v2)
      {
        return;
      }
    }

    v4 = *(&xmmword_1ED9AC878 + 1);
    v5 = v2[1];
    v6 = vcnt_s8(*(&xmmword_1ED9AC878 + 8));
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *(&xmmword_1ED9AC878 + 1))
      {
        v5 %= *(&xmmword_1ED9AC878 + 1);
      }
    }

    else
    {
      v5 &= *(&xmmword_1ED9AC878 + 1) - 1;
    }

    v7 = *v2;
    v8 = xmmword_1ED9AC878;
    v9 = *(xmmword_1ED9AC878 + 8 * v5);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v2);
    if (v10 == &qword_1ED9AC888)
    {
      goto LABEL_48;
    }

    v11 = v10[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *(&xmmword_1ED9AC878 + 1))
      {
        v11 %= *(&xmmword_1ED9AC878 + 1);
      }
    }

    else
    {
      v11 &= *(&xmmword_1ED9AC878 + 1) - 1;
    }

    v12 = *v2;
    if (v11 != v5)
    {
LABEL_48:
      if (v7)
      {
        v13 = v7[1];
        if (v6.u32[0] > 1uLL)
        {
          if (v13 >= *(&xmmword_1ED9AC878 + 1))
          {
            v13 %= *(&xmmword_1ED9AC878 + 1);
          }
        }

        else
        {
          v13 &= *(&xmmword_1ED9AC878 + 1) - 1;
        }

        v12 = *v2;
        if (v13 == v5)
        {
LABEL_29:
          v14 = *(v12 + 8);
          if (v6.u32[0] > 1uLL)
          {
            if (v14 >= v4)
            {
              v14 %= v4;
            }
          }

          else
          {
            v14 &= v4 - 1;
          }

          if (v14 != v5)
          {
            *(v8 + 8 * v14) = v10;
            v12 = *v2;
          }

LABEL_35:
          *v10 = v12;
          *v2 = 0;
          --qword_1ED9AC890;
          v15 = v2[6];
          if (v15)
          {
            std::__shared_weak_count::__release_weak(v15);
          }

          if (*(v2 + 39) < 0)
          {
            operator delete(v2[2]);
          }

          operator delete(v2);
          v2 = v7;
          v16 = v17;
          if (!v17)
          {
            goto LABEL_4;
          }

          goto LABEL_40;
        }
      }

      *(xmmword_1ED9AC878 + 8 * v5) = 0;
      v12 = *v2;
    }

    if (!v12)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }
}

void sub_1AE689C0C(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 1;
  v2 = (a1 + 40);
  v3 = *(a1 + 63);
  v4 = (a1 + 40);
  if (v3 < 0)
  {
    v4 = *v2;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v11 = sub_1AE689E30;
  v12 = &unk_1F242B488;
  v13 = &v16;
  if (v3 < 0)
  {
    sub_1AE5DBF1C(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    __p = *v2;
    v15 = *(a1 + 56);
  }

  if (!stat(v4, &v21) && (v21.st_mode & 0xF000) == 0x4000)
  {
    v20 = 0;
    v5 = opendir(v4);
    if (v5)
    {
      do
      {
        v6 = readdir(v5);
        if (!v6)
        {
          break;
        }

        d_namlen = v6->d_namlen;
        if (d_namlen >= 0xB)
        {
          d_name = v6->d_name;
          if (!strncmp(&v6->d_seekoff + d_namlen + 3, "dynamic.lm", 0xAuLL))
          {
            v11(v10, d_name, &v20);
          }
        }
      }

      while (v20 != 1);
      closedir(v5);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, *(v17 + 24));
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&v16, 8);
}

void sub_1AE689DF0(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

char *sub_1AE689E04(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_1AE5DBF1C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1AE689E30(uint64_t a1, char *__s, _BYTE *a3)
{
  v3 = *(a1 + 63);
  if (v3 >= 0)
  {
    v4 = *(a1 + 63);
  }

  else
  {
    v4 = *(a1 + 48);
  }

  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v4 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v16, 0, sizeof(v16));
  *(&v16.__r_.__value_.__s + 23) = v4 + 1;
  if (v4)
  {
    if ((v3 & 0x80u) == 0)
    {
      v8 = (a1 + 40);
    }

    else
    {
      v8 = *(a1 + 40);
    }

    memmove(&v16, v8, v4);
  }

  *(&v16.__r_.__value_.__l.__data_ + v4) = 47;
  v9 = strlen(__s);
  v10 = std::string::append(&v16, __s, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v18 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = opendir(v12);
  if (v13)
  {
    strlen(v12);
    while (1)
    {
      v14 = readdir(v13);
      if (!v14)
      {
        break;
      }

      if (v14->d_name[0] != 46 || v14->d_name[1] && (v14->d_name[1] != 46 || v14->d_name[2]))
      {
        strlen(v14->d_name);
        operator new[]();
      }
    }

    closedir(v13);
    v15 = rmdir(v12) == 0;
  }

  else
  {
    v15 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) &= v15;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
LABEL_27:
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

void sub_1AE68A0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a17 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1AE68A130(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

_BYTE *sub_1AE68A144(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_1AE5DBF1C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void *sub_1AE68A170(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  a1[1] = v4;
  *a1 = &unk_1F2431628;
  a1[2] = 0;
  sub_1AE746EEC((a1 + 3), a3);
  return a1;
}

void sub_1AE68A1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  sub_1AE6886F0(v11);
  sub_1AE688744(v10);
  sub_1AE6886F0(&a9);
  sub_1AE688744(&a10);
  _Unwind_Resume(a1);
}

void sub_1AE68A23C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242B6B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE68A2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a3 + 357) == 1 && sub_1AE6F167C(*(a2 + 24), @"recency"))
  {
    cf = sub_1AE5D40B8(*(a2 + 24), @"recency");
    sub_1AE61D968();
  }

  operator new();
}

void sub_1AE68A728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, __int16 a22, char a23, char a24)
{
  sub_1AE622290(&a22);
  sub_1AE622290(&a10);
  MEMORY[0x1B2706400](v24, 0x10B1C403F1E130DLL);
  sub_1AE622290(&a12);
  sub_1AE688744(&a14);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1AE6883BC(&a21);
  _Unwind_Resume(a1);
}

void sub_1AE68A7B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, uint64_t *);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  sub_1AE622290(va2);
  sub_1AE622290(va1);
  MEMORY[0x1B2706400](v2, 0x10B1C403F1E130DLL);
  sub_1AE622290(va3);
  sub_1AE688744(va);
  _Unwind_Resume(a1);
}

void sub_1AE68A838(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a3 + 23);
  if (v3 >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    v4 = a3[1];
  }

  if (v4 + 1 < 0x7FFFFFFFFFFFFFF8)
  {
    if (v4 + 1 >= 0x17)
    {
      operator new();
    }

    __p[1] = 0;
    v8 = 0;
    HIBYTE(v8) = v4 + 1;
    __p[0] = 45;
    if (v4)
    {
      if ((v3 & 0x80u) == 0)
      {
        v6 = a3;
      }

      else
      {
        v6 = *a3;
      }

      memmove(__p + 1, v6, v4);
    }

    *(__p + v4 + 1) = 0;
    sub_1AE68A9D8(&cf, @"dynamic-lexicon", __p);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = sub_1AE5D40B8(*(a2 + 24), cf);
    sub_1AE61D968();
  }

  sub_1AE5DB4F0();
}

void sub_1AE68A998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_1AE6883BC(&a9);
  sub_1AE63109C(&a12);
  _Unwind_Resume(a1);
}

void sub_1AE68A9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE68A9D8(CFStringRef *a1, const void *a2, uint64_t a3)
{
  if (a2)
  {
    sub_1AE66A174(&v27, a2);
    v5 = v27;
    if (!v27)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      sub_1AE621740(&v24, v5);
    }

    else
    {
      v24.__r_.__value_.__r.__words[0] = 0;
      *(&v24.__r_.__value_.__s + 23) = 0;
    }

    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    v15 = std::string::append(&v24, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v26 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    v17 = HIBYTE(v26);
    if (v26 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (v18)
    {
      if (v26 >= 0)
      {
        v19 = HIBYTE(v26);
      }

      else
      {
        v19 = __p[1];
      }

      v20 = CFStringCreateWithBytes(0, v18, v19, 0x8000100u, 0);
      *a1 = v20;
      if (!v20)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v23, "Could not construct");
        __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if ((v26 & 0x8000000000000000) == 0)
      {
LABEL_32:
        v21 = v27;
        if (!v27)
        {
          return;
        }

LABEL_36:
        CFRelease(v21);
        return;
      }
    }

    else
    {
      *a1 = 0;
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_32;
      }
    }

    operator delete(__p[0]);
    v21 = v27;
    if (v27)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    if (v8)
    {
      if (v7 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = *(a3 + 8);
      }

      v10 = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
      *a1 = v10;
      if (!v10)
      {
        v11 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v11, "Could not construct");
        __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      *a1 = 0;
    }
  }
}

void sub_1AE68AC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1AE621E54(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1AE63109C((v22 - 40));
  _Unwind_Resume(a1);
}

const void **sub_1AE68ACA8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t **sub_1AE68ACDC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_1AE68AE94(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v3[-*a1];
  v5 = v4 >> 3;
  v6 = (v4 >> 3) + 1;
  if (v6 >> 61)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  *(8 * v5) = *a2;
  *a2 = 0;
  if (v2 != v3)
  {
    v10 = v3 - v2 - 8;
    v11 = v2;
    v12 = 0;
    if (v10 < 0x98)
    {
      goto LABEL_30;
    }

    v13 = 8 * (v4 >> 3);
    if ((v2 + (v10 & 0xFFFFFFFFFFFFFFF8)) != -8)
    {
      v11 = v2;
      v12 = 0;
      if (v2 < v4 + (v10 & 0xFFFFFFFFFFFFFFF8) - v13 + 8)
      {
        goto LABEL_30;
      }
    }

    v14 = (v10 >> 3) + 1;
    v12 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v12 + v2);
    v15 = (8 * v5 - v13 + 16);
    v16 = v2;
    v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v18 = *(v16 + 1);
      *(v15 - 1) = *v16;
      *v15 = v18;
      *v16 = 0uLL;
      *(v16 + 1) = 0uLL;
      v16 += 4;
      v15 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      do
      {
        *v12++ = *v11;
        *v11++ = 0;
      }

      while (v11 != v3);
    }

    do
    {
      if (*v2)
      {
        CFRelease(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 8 * v5 + 8;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 8 * v5 + 8;
}

void **sub_1AE68B070(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_1AE68B0E0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 39) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 16));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void *sub_1AE68B1A0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

void sub_1AE68B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[19] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x26002000000;
  v19[3] = sub_1AE68B794;
  v19[4] = sub_1AE68B960;
  v22[6] = 0;
  v5 = MEMORY[0x1E69E5530] + 64;
  v22[0] = MEMORY[0x1E69E5530] + 64;
  v6 = MEMORY[0x1E69E54D0];
  v7 = *(MEMORY[0x1E69E54D0] + 16);
  v20 = *(MEMORY[0x1E69E54D0] + 8);
  *&v21[*(v20 - 24) - 8] = v7;
  v8 = &v21[*(v20 - 24) - 8];
  std::ios_base::init(v8, v21);
  v9 = MEMORY[0x1E69E5530] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v20 = v9;
  v22[0] = v5;
  MEMORY[0x1B2705FE0](v21);
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&v21[*(v20 - 24) - 8], *&v21[*(v20 - 24) + 24] | 4);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v10.n128_u64[0] = 0x40000000;
  v11[1] = 0x40000000;
  v11[2] = sub_1AE68BA40;
  v11[3] = &unk_1E7A2DDE8;
  v11[4] = a3;
  v11[5] = v19;
  v11[6] = v12;
  __p = 0;
  v14 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v18 = -1;
  v17[2] = 0x2000000000;
  v15 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = sub_1AE68BEB0;
  v16[3] = &unk_1E7A2DE10;
  v16[4] = v11;
  v16[5] = v17;
  v16[6] = &__p;
  v16[7] = a1;
  sub_1AE775E40(a1, 0, 0, v16, v10);
  _Block_object_dispose(v17, 8);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v19, 8);
  v20 = *v6;
  *&v21[*(v20 - 24) - 8] = v6[3];
  MEMORY[0x1B2705FF0](v21);
  std::ostream::~ostream();
  MEMORY[0x1B2706340](v22);
  _Block_object_dispose(v12, 8);
}

void sub_1AE68B718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a35, 8);
  sub_1AE68C130(v36);
  MEMORY[0x1B2706340](v35);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE68B794(void *a1, uint64_t a2)
{
  v4 = a1 + 5;
  a1[63] = 0;
  v5 = MEMORY[0x1E69E54D0];
  a1[57] = MEMORY[0x1E69E5590] + 16;
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  a1[5] = v7;
  *(v4 + *(v7 - 24)) = v6;
  v8 = (a1 + *(a1[5] - 24) + 40);
  v9 = (a2 + 40 + *(*(a2 + 40) - 24));
  std::ios_base::move(v8, v9);
  v8[1].__vftable = v9[1].__vftable;
  v9[1].__vftable = 0;
  v8[1].__fmtflags_ = v9[1].__fmtflags_;
  a1[5] = MEMORY[0x1E69E5530] + 24;
  a1[57] = MEMORY[0x1E69E5530] + 64;
  result = MEMORY[0x1B2705FD0](a1 + 6, a2 + 48);
  *(v4 + *(*v4 - 24) + 40) = result;
  return result;
}

void sub_1AE68B938(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B2706340](v1);
  _Unwind_Resume(a1);
}

void sub_1AE68B960(uint64_t a1)
{
  v1 = MEMORY[0x1E69E54D0];
  v2 = *MEMORY[0x1E69E54D0];
  *(a1 + 40) = *MEMORY[0x1E69E54D0];
  *(a1 + 40 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1B2705FF0](a1 + 48);
  std::ostream::~ostream();

  JUMPOUT(0x1B2706340);
}

uint64_t sub_1AE68BA40(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1AE5D9464(&v30);
  v8 = std::ostream::operator<<();
  v9 = sub_1AE5DB608(v8, "|", 1);
  v10 = MEMORY[0x1B2706110](v9, a4);
  sub_1AE5DB608(v10, "|", 1);
  if (a3)
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      if (v12 != 1)
      {
        sub_1AE5DB608(&v30, " ", 1);
      }

      (*(a1[4] + 16))(&__p);
      v13 = (v29 & 0x80u) == 0 ? &__p : __p;
      v14 = (v29 & 0x80u) == 0 ? v29 : v28;
      sub_1AE5DB608(&v30, v13, v14);
      if ((v29 & 0x80000000) == 0)
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_16;
      }

LABEL_4:
      operator delete(__p);
LABEL_5:
      v11 = v12++;
      if (a3 <= v11)
      {
        goto LABEL_18;
      }
    }

    if (v29)
    {
      goto LABEL_5;
    }

LABEL_16:
    v15 = sub_1AE5DB608(&v30, "[", 1);
    v16 = MEMORY[0x1B2706110](v15, *(a2 + 4 * v11));
    sub_1AE5DB608(v16, "]", 1);
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_18:
  v17 = *(a1[5] + 8);
  if ((v39 & 0x10) != 0)
  {
    v19 = v38;
    if (v38 < v35)
    {
      v38 = v35;
      v19 = v35;
    }

    v20 = &v34;
  }

  else
  {
    if ((v39 & 8) == 0)
    {
      v18 = 0;
      v29 = 0;
      goto LABEL_31;
    }

    v20 = v33;
    v19 = v33[2];
  }

  v21 = *v20;
  v18 = v19 - *v20;
  if (v18 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  v29 = v19 - *v20;
  if (v18)
  {
    memmove(&__p, v21, v18);
  }

LABEL_31:
  *(&__p + v18) = 0;
  if ((v29 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v29 & 0x80u) == 0)
  {
    v23 = v29;
  }

  else
  {
    v23 = v28;
  }

  v24 = sub_1AE5DB608((v17 + 40), p_p, v23);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v41);
  std::ostream::put();
  std::ostream::flush();
  if (v29 < 0)
  {
    operator delete(__p);
  }

  ++*(*(a1[6] + 8) + 24);
  v30 = *MEMORY[0x1E69E54E8];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v31 = MEMORY[0x1E69E5548] + 16;
  if (v37 < 0)
  {
    operator delete(v36);
  }

  v31 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v32);
  std::ostream::~ostream();
  return MEMORY[0x1B2706340](&v40);
}

void sub_1AE68BE44(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_1AE5F13B8(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B2706340](va);
  _Unwind_Resume(a1);
}

void sub_1AE68BEB0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v5 = 0;
  v6 = 0;
  v4 = 0;
  v3 = *v1;
  v2 = v1[1];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  operator new();
}

void sub_1AE68C0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE68C130(void *a1)
{
  v1 = MEMORY[0x1E69E54D0];
  v2 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1B2705FF0](a1 + 1);

  return std::ostream::~ostream();
}

void sub_1AE68C1FC(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  sub_1AE68B1A0(__p, Count);
  if (Count < 1)
  {
LABEL_10:
    *a1 = *__p;
    *(a1 + 16) = v17;
    *(a1 + 24) = 1;
  }

  else
  {
    v5 = 0;
    v6 = Count & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      v8 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        break;
      }

      CFRetain(ValueAtIndex);
      cf = v8;
      v15 = 1;
      v9 = __p[1];
      if (__p[1] < v17)
      {
        *__p[1] = v8;
        __p[1] = v9 + 8;
      }

      else
      {
        __p[1] = sub_1AE68AE94(__p, &cf);
        if (v15)
        {
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      if (v6 == ++v5)
      {
        goto LABEL_10;
      }
    }

    *(a1 + 24) = 0;
    *a1 = 0;
    v10 = __p[0];
    if (__p[0])
    {
      v11 = __p[1];
      if (__p[1] != __p[0])
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 8;
          v12 = v13;
          if (v13)
          {
            CFRelease(v12);
          }
        }

        while (v11 != v10);
        v10 = __p[0];
      }

      operator delete(v10);
    }
  }
}

void sub_1AE68C370(void *a1)
{
  v1[24] = v3;
  *v1 = v2;
  sub_1AE6090F0(a1);
}

const void **sub_1AE68C38C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1AE68C3C0(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v3[-*a1];
  v5 = v4 >> 3;
  v6 = (v4 >> 3) + 1;
  if (v6 >> 61)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  *(8 * v5) = *a2;
  *a2 = 0;
  if (v2 != v3)
  {
    v10 = v3 - v2 - 8;
    v11 = v2;
    v12 = 0;
    if (v10 < 0x98)
    {
      goto LABEL_30;
    }

    v13 = 8 * (v4 >> 3);
    if ((v2 + (v10 & 0xFFFFFFFFFFFFFFF8)) != -8)
    {
      v11 = v2;
      v12 = 0;
      if (v2 < v4 + (v10 & 0xFFFFFFFFFFFFFFF8) - v13 + 8)
      {
        goto LABEL_30;
      }
    }

    v14 = (v10 >> 3) + 1;
    v12 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v12 + v2);
    v15 = (8 * v5 - v13 + 16);
    v16 = v2;
    v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v18 = *(v16 + 1);
      *(v15 - 1) = *v16;
      *v15 = v18;
      *v16 = 0uLL;
      *(v16 + 1) = 0uLL;
      v16 += 4;
      v15 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      do
      {
        *v12++ = *v11;
        *v11++ = 0;
      }

      while (v11 != v3);
    }

    do
    {
      if (*v2)
      {
        CFRelease(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 8 * v5 + 8;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 8 * v5 + 8;
}

const void **sub_1AE68C59C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1AE68C5D0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

char **sub_1AE68C610(char **a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = a1[1];
      v4 = *a1;
      if (v3 != v2)
      {
        do
        {
          v6 = *(v3 - 1);
          v3 -= 8;
          v5 = v6;
          if (v6)
          {
            CFRelease(v5);
          }
        }

        while (v3 != v2);
        v4 = *a1;
      }

      a1[1] = v2;
      operator delete(v4);
    }
  }

  return a1;
}

CFTypeRef **sub_1AE68C68C(CFTypeRef **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;
    MEMORY[0x1B2706400](v1, 0x60C4044C4A2DFLL);
    return v2;
  }

  return result;
}

void **sub_1AE68C6E8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

int **sub_1AE68C758(int **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1 != -1)
    {
      flock(*v1, 8);
      close(*v1);
    }

    MEMORY[0x1B2706400](v1, 0x1000C4052888210);
    return v2;
  }

  return result;
}

const void **sub_1AE68C7C0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE68C7FC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN2LM26InlineCompletionParametersEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN2LM26InlineCompletionParametersEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN2LM26InlineCompletionParametersEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN2LM26InlineCompletionParametersEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE68C858(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;

    JUMPOUT(0x1B2706400);
  }

  return result;
}

void sub_1AE68C8C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE68C8FC(CFURLRef directoryURL, const __CFLocale *a2, const __CFString *a3, __CFArray *a4, char a5)
{
  if (directoryURL && a2)
  {
    BundlesFromDirectory = CFBundleCreateBundlesFromDirectory(0, directoryURL, @"lm");
    if (a5)
    {
      for (i = 0; i < CFArrayGetCount(BundlesFromDirectory); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(BundlesFromDirectory, i);
        v12 = CFBundleCopyBundleURL(ValueAtIndex);
        PathComponent = CFURLCopyLastPathComponent(v12);
        if (sub_1AE68CB20(ValueAtIndex, a2, a3))
        {
          CFArrayAppendValue(a4, ValueAtIndex);
        }

        CFRelease(ValueAtIndex);
        if (PathComponent)
        {
          CFRelease(PathComponent);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else
    {
      for (j = 0; j < CFArrayGetCount(BundlesFromDirectory); ++j)
      {
        v15 = CFArrayGetValueAtIndex(BundlesFromDirectory, j);
        v16 = CFBundleCopyBundleURL(v15);
        v17 = CFURLCopyLastPathComponent(v16);
        if (!CFStringHasPrefix(v17, @"Siri"))
        {
          if (sub_1AE68CB20(v15, a2, a3))
          {
            CFArrayAppendValue(a4, v15);
          }

          CFRelease(v15);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

    if (BundlesFromDirectory)
    {
      CFRelease(BundlesFromDirectory);
    }
  }
}

void sub_1AE68CABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AE65095C(va);
  _Unwind_Resume(a1);
}

CFIndex sub_1AE68CB20(__CFBundle *a1, const __CFLocale *a2, const __CFString *a3)
{
  result = CFBundleGetInfoDictionary(a1);
  if (result)
  {
    v7 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      if (a3)
      {
        v8 = CFBundleCopyBundleURL(a1);
        PathComponent = CFURLCopyLastPathComponent(v8);
        if (CFStringHasSuffix(a3, @".lm"))
        {
          v10 = CFStringCompare(PathComponent, a3, 0);
        }

        else
        {
          v24.length = CFStringGetLength(PathComponent) - 3;
          v24.location = 0;
          v11 = CFStringCreateWithSubstring(0, PathComponent, v24);
          v10 = CFStringCompare(v11, a3, 0);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        if (PathComponent)
        {
          CFRelease(PathComponent);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (v10)
        {
          return 0;
        }
      }

      result = CFDictionaryGetValue(v7, @"Locale");
      if (result || (result = CFDictionaryGetValue(v7, @"Language")) != 0)
      {
        v12 = result;
        Value = CFDictionaryGetValue(v7, @"Alternate locales");
        if (Value)
        {
          v14 = Value;
          Count = CFArrayGetCount(Value);
          if (Count >= 1)
          {
            v16 = Count;
            v17 = 0;
            v18 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
              v20 = CFLocaleCreate(0, ValueAtIndex);
              v21 = sub_1AE693644(v20, a2);
              if (v20)
              {
                CFRelease(v20);
              }

              v18 |= v21;
              ++v17;
            }

            while (v16 != v17);
            if (v18)
            {
              return 1;
            }
          }
        }

        v22 = CFLocaleCreate(0, v12);
        v23 = sub_1AE693644(v22, a2);
        if (v22)
        {
          CFRelease(v22);
        }

        return v23 != 0;
      }
    }
  }

  return result;
}

void sub_1AE68CD14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_1AE636D70(va);
  sub_1AE636D70(va1);
  sub_1AE6883BC(va2);
  _Unwind_Resume(a1);
}

void *sub_1AE68CD74(void *result, CFTypeRef cf)
{
  v2 = result;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_1AE68CE08(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE621528(v1);
  _Unwind_Resume(a1);
}

void *sub_1AE68CE34(void *result, CFTypeRef cf)
{
  *result = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v2 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1AE68CEB8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE621528(v1);
  _Unwind_Resume(a1);
}

const void **sub_1AE68CEE0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void sub_1AE68CF18(void *a1, const void *a2, int a3)
{
  sub_1AE68CD74(&v31, a2);
  v5 = v31;
  if (!v31)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  cf = v6;
  if (!v6)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v20, "Could not construct");
    __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = CFDictionaryContainsKey(v5, v6);
  CFRelease(cf);
  if (!v7)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    goto LABEL_27;
  }

  v8 = v31;
  if (!v31)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v21, "Could not construct");
    goto LABEL_42;
  }

  LODWORD(theArray) = a3;
  v9 = CFNumberCreate(0, kCFNumberIntType, &theArray);
  cfa = v9;
  if (!v9)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(v8, v9);
  CFRelease(cfa);
  if (!Value)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v21, "Could not find item");
LABEL_42:
    __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE68CD74(&valuePtr, Value);
  if (!valuePtr)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!CFDictionaryContainsKey(valuePtr, @"Resources"))
  {
    __assert_rtn("resources", "LMResourceLoader.cpp", 150, "resourceContainer->has_key(kResourcesKey)");
  }

  if (!valuePtr)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v24, "Could not construct");
    goto LABEL_38;
  }

  v11 = CFDictionaryGetValue(valuePtr, @"Resources");
  v12 = v11;
  if (!v11)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v24, "Could not find item");
LABEL_38:
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v11);
  theArray = v12;
  v13 = CFGetTypeID(v12);
  if (v13 != CFArrayGetTypeID())
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v25, "Could not construct");
    __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v14 = theArray;
  if (!theArray)
  {
    goto LABEL_25;
  }

  Count = CFArrayGetCount(theArray);
  v16 = Count;
  v17 = theArray;
  if (!theArray)
  {
    v26 = 0;
    if (!Count)
    {
      goto LABEL_23;
    }

LABEL_18:
    if (v14 != v17 || v26)
    {
      if (CFArrayGetCount(v14) && CFArrayGetValueAtIndex(v14, 0))
      {
        operator new();
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v18, "Could not find item");
      __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_23;
  }

  v26 = CFArrayGetCount(theArray);
  if (v16)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_25:
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

LABEL_27:
  if (v31)
  {
    CFRelease(v31);
  }
}

void sub_1AE68D584(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE68D64C(va);
  JUMPOUT(0x1AE68D604);
}

void sub_1AE68D594(uint64_t a1, void **a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1AE622290(va);
  sub_1AE6315E0(a2);
  sub_1AE68ACA8(va1);
  JUMPOUT(0x1AE68D5FCLL);
}

const void **sub_1AE68D618(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1AE68D64C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AE68D680(int a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E6F0];
  Value = CFLocaleGetValue(*(a2 + 8), *MEMORY[0x1E695E6F0]);
  v6 = CFLocaleGetValue(*(a2 + 8), *MEMORY[0x1E695E6F8]);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v8 = Mutable;
  if (*(a2 + 17) == 1)
  {
    CFStringAppend(Mutable, @"siri-");
  }

  CFStringAppend(v8, Value);
  if (CFStringCompare(Value, @"mul", 0) == kCFCompareEqualTo)
  {
    v9 = CFLocaleGetValue(*(a2 + 8), *MEMORY[0x1E695E6D0]);
    if (v9)
    {
      CFStringAppend(v8, @"_");
      CFStringAppend(v8, v9);
    }
  }

  if (v6)
  {
    CFStringAppend(v8, @"_");
    CFStringAppend(v8, v6);
  }

  CFStringAppend(v8, @"-dynamic.lm");
  v11 = CFURLCreateCopyAppendingPathComponent(0, *(a2 + 24), v8, 1u);
  v10 = CFLocaleGetValue(*(a2 + 8), v4);
  CFLocaleCreate(0, v10);
  sub_1AE5D2F70(a1, v11);
}

void sub_1AE68D840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE67D824(va);
  _Unwind_Resume(a1);
}

void sub_1AE68DC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1AE622290(&a11);
  _Block_object_dispose(&a23, 8);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1AE669218(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE68DC88(uint64_t a1, const __CFString *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a2, @".");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count > 0)
  {
    v5 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    CFStringGetCString(ValueAtIndex, buffer, 16, 0x8000100u);
    *a1 = atoi(buffer);
    if (v5 != 1)
    {
      v7 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
      CFStringGetCString(v7, buffer, 16, 0x8000100u);
      *(a1 + 4) = atoi(buffer);
    }
  }

  CFRelease(ArrayBySeparatingStrings);
  return a1;
}

void sub_1AE68DD78(void *a1, CFDictionaryRef ***a2, int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1AE68FA38(&__p, *a2, a2[1], a3);
  v4 = __p;
  if (__p != v41)
  {
    allocator = *MEMORY[0x1E695E480];
    v5 = "d && An Info.plist file was unable to be read from the bundle";
    Value = CFDictionaryGetValue(**__p, @"URL");
    *v43 = CFRetain(Value);
    *&v43[8] = CFBundleCreate(allocator, *v43);
    if (sub_1AE6F08B0(*&v43[8]))
    {
      if (sub_1AE6F08B0(*&v43[8]))
      {
        InfoDictionary = CFBundleGetInfoDictionary(*&v43[8]);
        if (InfoDictionary)
        {
          v8 = CFDictionaryGetValue(InfoDictionary, @"Contents");
          if (v8)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
            *&valuePtr = sub_1AE6F0B98(v43, ValueAtIndex);
            operator new();
          }

          v30 = 229;
          v31 = "_getContents";
          v5 = "(contents != 0) && There should files contained within the blocklist bundle";
        }

        else
        {
          v30 = 218;
          v31 = "_getInfoDictionary";
        }

        __assert_rtn(v31, "BlocklistBundle.cpp", v30, v5);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE5CC990(&valuePtr, "Malformed legacy blocklist bundle configuration: cannot load the legacy blocklist resource");
      sub_1AE660DB0(exception, &valuePtr);
      __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
    }

    if (sub_1AE6F0A88(*&v43[8]))
    {
      sub_1AE6F0D78(&v39, v43);
      CFDictionaryGetValue(*v39, @"URL");
      operator new();
    }

    sub_1AE6F0D78(&v39, v43);
    if (sub_1AE6F0978(*&v43[8]))
    {
      v10 = CFBundleGetInfoDictionary(*&v43[8]);
      if (v10)
      {
        v11 = CFDictionaryGetValue(v10, @"Contents");
        if (v11)
        {
          for (i = 0; i < CFArrayGetCount(v11); ++i)
          {
            v13 = CFArrayGetValueAtIndex(v11, i);
            LODWORD(valuePtr) = 0;
            v14 = CFDictionaryGetValue(v13, @"Type");
            CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
            if (valuePtr == 42)
            {
              *&valuePtr = sub_1AE6F0B98(v43, v13);
              operator new();
            }
          }

          CFDictionaryGetValue(*v39, @"URL");
          operator new();
        }

        v32 = 229;
        v33 = "_getContents";
        v5 = "(contents != 0) && There should files contained within the blocklist bundle";
      }

      else
      {
        v32 = 218;
        v33 = "_getInfoDictionary";
      }

      __assert_rtn(v33, "BlocklistBundle.cpp", v32, v5);
    }

    v35 = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&valuePtr, "Malformed lemmatized blocklist bundle configuration: cannot load the blocklist id map resource");
    sub_1AE660DB0(v35, &valuePtr);
    __cxa_throw(v35, &unk_1F2432910, sub_1AE64FC40);
  }

  if (__p)
  {
    v15 = v41;
    v16 = __p;
    if (v41 != __p)
    {
      do
      {
        v17 = *(v15 - 1);
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v15 -= 16;
      }

      while (v15 != v4);
      v16 = __p;
    }

    v41 = v4;
    operator delete(v16);
  }

  sub_1AE68FA38(&__p, *a2, a2[1], 41);
  sub_1AE68FA38(buf, *a2, a2[1], 42);
  v18 = *buf;
  if (v41 - __p != *&buf[8] - *buf)
  {
    v36 = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&valuePtr, "Malformed language model configuration: mismatched lemmatized blocklist resources");
    sub_1AE660DB0(v36, &valuePtr);
    __cxa_throw(v36, &unk_1F2432910, sub_1AE64FC40);
  }

  if ((v41 - __p) >= 0x11)
  {
    v37 = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&valuePtr, "Malformed language model configuration: too many lemmatized blocklist resources");
    sub_1AE660DB0(v37, &valuePtr);
    __cxa_throw(v37, &unk_1F2432910, sub_1AE64FC40);
  }

  if (__p != v41)
  {
    CFDictionaryGetValue(**__p, @"URL");
    operator new();
  }

  if (*buf)
  {
    v19 = *&buf[8];
    v20 = *buf;
    if (*&buf[8] != *buf)
    {
      do
      {
        v21 = *(v19 - 8);
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }

        v19 -= 16;
      }

      while (v19 != v18);
      v20 = *buf;
    }

    *&buf[8] = v18;
    operator delete(v20);
  }

  v22 = __p;
  if (__p)
  {
    v23 = v41;
    v24 = __p;
    if (v41 != __p)
    {
      do
      {
        v25 = *(v23 - 1);
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v23 -= 16;
      }

      while (v23 != v22);
      v24 = __p;
    }

    v41 = v22;
    operator delete(v24);
  }

  sub_1AE68FA38(&valuePtr, *a2, a2[1], 10);
  v26 = valuePtr;
  if (valuePtr != *(&valuePtr + 1))
  {
    CFDictionaryGetValue(**valuePtr, @"URL");
    operator new();
  }

  if (valuePtr)
  {
    v27 = *(&valuePtr + 1);
    v28 = valuePtr;
    if (*(&valuePtr + 1) != valuePtr)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = valuePtr;
    }

    *(&valuePtr + 1) = v26;
    operator delete(v28);
  }
}