unint64_t LXLexiconGetSortkeyBytes(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  if (!a5)
  {
    __assert_rtn("LXLexiconGetSortkeyBytes", "LXLexicon.cpp", 521, "numBytes != NULL && numBytes must not be NULL");
  }

  (*(*(a1 + 16) + 96))(&v14);
  if (a3)
  {
    v8 = 0xFFFFLL;
    if (a4 < 0xFFFF)
    {
      v8 = a4;
    }

    if (a4 <= 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = v14;
    if (v9 >= v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = v9;
    }

    if (v14 <= 0xEu)
    {
      v12 = &v14 + 2;
    }

    else
    {
      v12 = v15;
    }

    memcpy(a3, v12, v11);
    if (v9 > v10)
    {
      *(a3 + v11) = 0;
    }

    *a5 = v10;
    a3 = v9 >= v10;
  }

  else
  {
    LODWORD(v10) = v14;
    *a5 = v14;
  }

  if (v10 >= 0xF && v15)
  {
    MEMORY[0x1B8C880C0](v15, 0x1000C8077774924);
  }

  return a3;
}

void sub_1B5CDC26C(uint64_t a1@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B5CDC2F8(&v6, a1 + 8);
  sub_1B5CDC3DC(a3, v6, a2);
  v5 = v7;
  if (v7)
  {

    sub_1B5CDD904(v5);
  }
}

void sub_1B5CDC2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5CDC2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 14352);
  if (v2 == -1)
  {
    goto LABEL_8;
  }

  *&v8 = &v10;
  result = (off_1F2D57E20[v2])(&v8);
  if (result)
  {
    v6 = *(a2 + 14352);
    if (v6 != -1)
    {
      v10 = &v9;
      result = (off_1F2D57E88[v6])(&v8, &v10, a2);
      *a1 = v8;
      return result;
    }

LABEL_8:
    sub_1B5D24008();
  }

  v7 = *(a2 + 28728);
  *a1 = *(a2 + 28720);
  *(a1 + 8) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B5CDC3BC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 14344);
  *a2 = *(a1 + 14336);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5CDC3DC(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B5CDC4B4(v6, a3);
  (*(*a2 + 8))(a2, v6);
  if (v7)
  {
    v4 = v6[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v7);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B5CDC488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5CDC4B4(uint64_t a1, CFStringRef theString)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!theString)
  {
    *a1 = 0x100000;
    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
LABEL_15:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (!CStringPtr)
  {
    if (CFStringGetCString(theString, buffer, 1024, 0x8000100u))
    {
      *a1 = 0x100000;
      *(a1 + 4) = 0;
      *(a1 + 6) = 1;
      *(a1 + 8) = 0;
      v8 = strlen(buffer);
      sub_1B5CDCAAC(a1, buffer, 0, v8);
      goto LABEL_15;
    }

    Length = CFStringGetLength(theString);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (MaximumSizeForEncoding != -1)
    {
      if (MaximumSizeForEncoding > -2)
      {
        operator new();
      }

      sub_1B5D04FA0();
    }

    if (CFStringGetCString(theString, 0, 0, 0x8000100u))
    {
      sub_1B5D5C9B0(a1, 0);
      goto LABEL_15;
    }

    v13 = CFStringGetLength(theString);
    sub_1B5D22848(&v36, v13);
    v45.location = 0;
    v45.length = v13;
    CFStringGetCharacters(theString, v45, v36);
    sub_1B5CF7CDC(v26);
    *(&v27 + *(v27 - 24) + 8) = *(&v27 + *(v27 - 24) + 8) & 0xFFFFFFB5 | 8;
    v14 = v36;
    v15 = v37;
    if (v36 != v37)
    {
      v16 = 1;
      do
      {
        if ((v16 & 1) == 0)
        {
          sub_1B5CE599C(&v27, " ", 1);
        }

        v17 = sub_1B5CE599C(&v27, "0x", 2);
        MEMORY[0x1B8C87F20](v17, *v14);
        v16 = 0;
        ++v14;
      }

      while (v14 != v15);
    }

    if (qword_1EB90CAF0 != -1)
    {
      dispatch_once(&qword_1EB90CAF0, &unk_1F2D58280);
    }

    v18 = qword_1EB90CAE8;
    if (!os_log_type_enabled(qword_1EB90CAE8, OS_LOG_TYPE_FAULT))
    {
LABEL_24:
      v26[0] = *MEMORY[0x1E69E54D8];
      v19 = *(MEMORY[0x1E69E54D8] + 72);
      *(v26 + *(v26[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v27 = v19;
      v28 = MEMORY[0x1E69E5548] + 16;
      if (v32 < 0)
      {
        operator delete(__p);
      }

      v28 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v29);
      std::iostream::~basic_iostream();
      MEMORY[0x1B8C88080](&v35);
      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      *a1 = 0x100000;
      *(a1 + 4) = 0;
      *(a1 + 6) = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      goto LABEL_15;
    }

    if ((v34 & 0x10) != 0)
    {
      v21 = v33;
      if (v33 < v30)
      {
        v33 = v30;
        v21 = v30;
      }

      locale = v29[4].__locale_;
    }

    else
    {
      if ((v34 & 8) == 0)
      {
        v20 = 0;
        v25 = 0;
LABEL_42:
        *(&__dst + v20) = 0;
        p_dst = &__dst;
        if (v25 < 0)
        {
          p_dst = __dst;
        }

        *buf = 138412546;
        v40 = theString;
        v41 = 2080;
        v42 = p_dst;
        _os_log_fault_impl(&dword_1B5CDB000, v18, OS_LOG_TYPE_FAULT, "Failed to convert '%@' (%s) to UTF-8", buf, 0x16u);
        if (v25 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_24;
      }

      locale = v29[1].__locale_;
      v21 = v29[3].__locale_;
    }

    v20 = v21 - locale;
    if ((v21 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1B5D114C8();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v25 = v21 - locale;
    if (v20)
    {
      memmove(&__dst, locale, v20);
    }

    goto LABEL_42;
  }

  v5 = CStringPtr;
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 1;
  *(a1 + 8) = 0;
  v6 = strlen(CStringPtr);
  v7 = *MEMORY[0x1E69E9840];

  sub_1B5CDCAAC(a1, v5, 0, v6);
}

void sub_1B5CDCA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v49)
  {
    operator delete(v49);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5CDCAAC(void *result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  result[2] = 0;
  result[3] = 0;
  v4 = (result + 2);
  if (a2 && a4)
  {
    v8 = result;
    sub_1B5CDCB48(result, a4);
    if (*(v8 + 1) < a4)
    {
      __assert_rtn("initialize", "TIString.cpp", 215, "len <= m_capacity");
    }

    if (v8[1])
    {
      v9 = v8[1];
    }

    else
    {
      v9 = v4;
    }

    result = memcpy(v9, (a2 + a3), a4);
    *v8 = a4;
  }

  return result;
}

void sub_1B5CDCB48(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 2);
  if (v2 <= 0xF)
  {
    __assert_rtn("ensure_capacity", "TIString.cpp", 249, "m_capacity >= InitialCapacity");
  }

  v3 = a2 + 1;
  if (v2 <= (a2 + 1))
  {
    if (!*(a1 + 6))
    {
      sub_1B5D5C954(a1);
      v2 = *(a1 + 2);
    }

    v5 = v2;
    if (v2 < v3)
    {
      v5 = v2;
      do
      {
        v5 = 2 * v5 + 16;
      }

      while ((v5 & 0xFFFEu) < v3);
      *(a1 + 2) = v5;
    }

    if (v5 >= 0x11u)
    {
      if (*(a1 + 6) == 1 && (v6 = *(a1 + 8)) != 0)
      {
        v7 = v2;
        v8 = malloc_type_realloc(v6, v5 + 1, 0x100004077774924uLL);
        *(a1 + 8) = v8;
        bzero(&v8[v7], *(a1 + 2) - v7 + 1);
      }

      else
      {
        v9 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
        *(a1 + 8) = v9;
        bzero(v9, *(a1 + 2) + 1);
        if (*a1)
        {
          strlcpy(*(a1 + 8), (a1 + 16), *(a1 + 2) + 1);
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }
      }

      if (*(a1 + 6) != 1 || !*(a1 + 8))
      {
        __assert_rtn("ensure_capacity", "TIString.cpp", 275, "data_in_allocated_internal_buffer()");
      }
    }
  }
}

uint64_t *sub_1B5CDCCAC@<X0>(uint64_t *a1@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  LOWORD(__src[0]) = 0;
  v24 = 0;
  LOWORD(v25) = 0;
  v26 = 0;
  v6 = *(a2 + 1);
  v7 = a2 + 8;
  if (v6)
  {
    v8 = *(a2 + 1);
  }

  else
  {
    v8 = (a2 + 8);
  }

  v19 = v8;
  v9 = *a2;
  v20 = 0;
  v21 = v9;
  v22 = 0;
  sub_1B5CDCF70(&v19);
  while (1)
  {
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v7;
    }

    *&v13 = v10;
    DWORD2(v13) = v9;
    HIDWORD(v13) = v9;
    v14 = 0;
    result = sub_1B5CDCF70(&v13);
    if (v19 != v13)
    {
      __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
    }

    if (v20 == DWORD2(v13))
    {
      break;
    }

    (*(*a1 + 16))(&v17, a1, v22);
    sub_1B5CDD368(&v13, a1[1], __src, 0, &v17);
    if (LOWORD(__src[0]) >= 0xFu && __src[1])
    {
      MEMORY[0x1B8C880C0](__src[1], 0x1000C8077774924);
    }

    *__src = v13;
    if (v13 >= 0xFu)
    {
      LOWORD(v13) = 0;
    }

    v24 = v14;
    if (v25 >= 0xFu && *(&v25 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v25 + 1), 0x1000C8077774924);
    }

    v25 = v15;
    if (v15 >= 0xFu)
    {
      LOWORD(v15) = 0;
    }

    v26 = v16;
    if (v13 >= 0xFu && *(&v13 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v13 + 1), 0x1000C8077774924);
    }

    if (v17 >= 0xFu)
    {
      if (v18)
      {
        MEMORY[0x1B8C880C0](v18, 0x1000C8077774924);
      }
    }

    sub_1B5CDCF70(&v19);
    v9 = *a2;
    v6 = *(a2 + 1);
  }

  v12 = LOWORD(__src[0]);
  if (LOWORD(__src[0]) >= 0xFuLL)
  {
    *a3 = __src[0];
    operator new[]();
  }

  *a3 = *__src;
  if (v25 >= 0xFu)
  {
    result = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      result = MEMORY[0x1B8C880C0](*(&v25 + 1), 0x1000C8077774924);
    }
  }

  if (v12 >= 0xF)
  {
    result = __src[1];
    if (__src[1])
    {
      return MEMORY[0x1B8C880C0](__src[1], 0x1000C8077774924);
    }
  }

  return result;
}

void sub_1B5CDCF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1B5D2D650(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1B5CDCF70(uint64_t *result)
{
  v1 = *(result + 3);
  v2 = *(result + 2);
  if (v2 >= v1)
  {
    *(result + 2) = v1 + 1;
    *(result + 4) = 0;
  }

  else
  {
    v3 = *result;
    v4 = v2 + 1;
    *(result + 2) = v2 + 1;
    v5 = *(v3 + v2);
    v6 = *(v3 + v2);
    *(result + 4) = v6;
    if (v5 < 0)
    {
      if (v6 > 0xDF)
      {
        if (v6 > 0xEF)
        {
          *(result + 4) = ((v6 & 7) << 18) | ((*(v3 + v4) & 0x3F) << 12) | ((*(v3 + v4 + 1) & 0x3F) << 6) | *(v3 + v4 + 2) & 0x3F;
          v7 = v2 + 4;
        }

        else
        {
          *(result + 4) = ((v6 & 0xF) << 12) | ((*(v3 + v4) & 0x3F) << 6) | *(v3 + v4 + 1) & 0x3F;
          v7 = v2 + 3;
        }

        *(result + 2) = v7;
      }

      else
      {
        *(result + 2) = v2 + 2;
        *(result + 4) = *(v3 + v4) & 0x3F | ((v6 & 0x1F) << 6);
      }
    }
  }

  return result;
}

void sub_1B5CDD030(void *a1@<X0>, unsigned int a2@<W1>, _WORD *a3@<X8>)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    v6 = &v5[8 * v4];
    do
    {
      v7 = v4 >> 1;
      v8 = &v5[8 * (v4 >> 1)];
      v10 = *v8;
      v9 = (v8 + 2);
      v4 += ~(v4 >> 1);
      if ((v10 & 0xFFFFFFu) < (a2 & 0xFFFFFF))
      {
        v5 = v9;
      }

      else
      {
        v4 = v7;
      }
    }

    while (v4);
    if (v5 != v6 && (*v5 & 0xFFFFFF) == a2)
    {
      if (HIBYTE(*v5) != 1)
      {
        v20 = strnlen(v5 + 4, 4uLL);
        v21 = *MEMORY[0x1E69E9840];
        v15 = v20;
        v16 = (v5 + 4);
        goto LABEL_20;
      }

      v11 = *(v5 + 1);
      if (a1[5] > v11)
      {
        v12 = a1[4];
        v13 = strlen((v12 + v11));
        v14 = *MEMORY[0x1E69E9840];
        v15 = v13;
        v16 = (v12 + v11);
LABEL_20:

        sub_1B5CDD214(a3, v15, v16, v15);
        return;
      }
    }
  }

  sub_1B5CDD970(&__n, a2);
  v23 = 0;
  __src = 2;
  if (v26)
  {
    v17 = v26;
  }

  else
  {
    v17 = v27;
  }

  v18 = __n;
  memcpy(&v23, v17, __n);
  sub_1B5CDD214(a3, v18 + 1, &__src, v18 + 1);
  if (v26 && __n_6 == 1)
  {
    free(v26);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B5CDD1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    if (a12 == 1)
    {
      free(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

char *sub_1B5CDD214(_WORD *a1, unint64_t a2, void *__src, size_t __len)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 < 0x10000)
  {
    *a1 = a2;
    if (a2 >= 0xF)
    {
      operator new[]();
    }

    v8 = (a1 + 1);
    if (__len)
    {
      memmove(v8, __src, __len);
    }

    v6 = &v8[__len];
  }

  else
  {
    if (qword_1EB90CB00 != -1)
    {
      dispatch_once(&qword_1EB90CB00, &unk_1F2D582A0);
    }

    v5 = qword_1EB90CAF8;
    if (os_log_type_enabled(qword_1EB90CAF8, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = 0xFFFF;
      _os_log_error_impl(&dword_1B5CDB000, v5, OS_LOG_TYPE_ERROR, "ByteString initialized with buffer longer than 0x%x. Returning empty byte string", v11, 8u);
    }

    *a1 = 0;
    v6 = (a1 + 1);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

void *sub_1B5CDD368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5)
{
  v59 = a2;
  v75[2] = *MEMORY[0x1E69E9840];
  v8 = *a5;
  MEMORY[0x1EEE9AC00]();
  v12 = &v56 - v11;
  v57 = &v56 - v11;
  v58 = v9;
  v13 = *(v9 + 16);
  if (v10)
  {
    v14 = *(a5 + 1);
    if (v10 <= 0xE)
    {
      v14 = (a5 + 1);
    }

    v15 = *v14;
    if (v13 == v15)
    {
      v61 = *(v9 + 16);
      v16 = 0;
    }

    else
    {
      if (*(v9 + 16))
      {
        if (v15 > v13)
        {
          v18 = -1;
        }

        else
        {
          v18 = 3;
        }

        *v12 = v18;
        v13 = 1;
      }

      v12[v13] = v15;
      v16 = v13 + 1;
      if (v15 != 254 && v15 <= 94)
      {
        v15 = 0;
      }

      v61 = v15;
    }

    if (v10 == 1)
    {
      v17 = 2;
    }

    else
    {
      v20 = 0;
      v21 = v59 + 1036;
      v60 = v59 + 12;
      v22 = &v57[v16];
      v56 = a1;
      do
      {
        if (v10 <= 0xE)
        {
          v23 = (a5 + 1);
        }

        else
        {
          v23 = *(a5 + 1);
        }

        v24 = v23[v20 + 1];
        v22[v20] = v24;
        if (*(v21 + v24) == 1 && (v24 > 94 || v24 == 254) && !*(v60 + 4 * v24))
        {
          sub_1B5CDD214(v72, v20 + 1, v23, v20 + 1);
          v25 = a4;
          v26 = sub_1B5CE3018((v59 + 1296), v72);
          if (v72[0] >= 0xFu && v74)
          {
            MEMORY[0x1B8C880C0](v74, 0x1000C8077774924);
          }

          v27 = v61;
          if (v26)
          {
            v27 = v24;
          }

          v61 = v27;
          v10 = *a5;
          a4 = v25;
          a1 = v56;
        }

        LOWORD(v16) = v16 + 1;
        v28 = v20 + 2 >= v10;
        ++v20;
      }

      while (!v28);
      v17 = v10 + 1;
    }
  }

  else
  {
    v61 = *(v9 + 16);
    LOWORD(v16) = 0;
    v17 = 1;
  }

  if (v17 < v16)
  {
    v29 = atomic_load(byte_1EB90C7D0);
    if (v29)
    {
      v30 = atomic_load(byte_1EB90CC20);
      if (v30)
      {
        sub_1B5D5CABC(v72, (v59 + 1344));
        v31 = v74;
        sub_1B5D523B0(v68, v58, v32, v33, v34, v35, v36, v37);
        v38 = v75;
        if (v31)
        {
          v38 = v31;
        }

        v39 = v70;
        if (!v70)
        {
          v39 = v71;
        }

        printf("Attempted to write past bounds of sortkey buffer: UTF-32 char: (%#07x), locale code: (%s), partial sort key (%s)", a4, v38, v39);
        if (v70 && v69 == 1)
        {
          free(v70);
        }

        if (v74 && v73 == 1)
        {
          free(v74);
        }

        putchar(10);
      }

      else
      {
        v40 = sub_1B5D32914();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          sub_1B5D5CABC(v72, (v59 + 1344));
          v41 = v74;
          sub_1B5D523B0(v68, v58, v42, v43, v44, v45, v46, v47);
          v48 = v75;
          if (v41)
          {
            v48 = v41;
          }

          v49 = v70;
          *buf = 67109634;
          v63 = a4;
          if (!v70)
          {
            v49 = v71;
          }

          v64 = 2080;
          v65 = v48;
          v66 = 2080;
          v67 = v49;
          _os_log_impl(&dword_1B5CDB000, v40, OS_LOG_TYPE_FAULT, "Attempted to write past bounds of sortkey buffer: UTF-32 char: (%#07x), locale code: (%s), partial sort key (%s)", buf, 0x1Cu);
          if (v70 && v69 == 1)
          {
            free(v70);
          }

          if (v74 && v73 == 1)
          {
            free(v74);
          }
        }
      }
    }
  }

  v50 = *v58;
  v51 = *(v58 + 1);
  if (v50 <= 0xE)
  {
    v52 = v58 + 1;
  }

  else
  {
    v52 = *(v58 + 1);
  }

  v53 = sub_1B5CDD214(v72, v50 + v16, v52, v50);
  if (v16)
  {
    memcpy(v53, v57, v16);
  }

  v68[0] = 0;
  result = sub_1B5CDD804(a1, v72, v61, v68, a4);
  if (v72[0] >= 0xFu)
  {
    result = v74;
    if (v74)
    {
      result = MEMORY[0x1B8C880C0](v74, 0x1000C8077774924);
    }
  }

  v55 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CDD7A4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    if (*(v1 - 122) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CDD804(uint64_t a1, unsigned __int16 *a2, char a3, unsigned __int16 *a4, int a5)
{
  v6 = *a2;
  if (v6 >= 0xF)
  {
    *a1 = v6;
    operator new[]();
  }

  *a1 = *a2;
  *(a1 + 16) = a3;
  v7 = *a4;
  if (v7 >= 0xF)
  {
    *(a1 + 24) = v7;
    operator new[]();
  }

  *(a1 + 24) = *a4;
  *(a1 + 40) = a5;
  return a1;
}

void sub_1B5CDD8D0(_Unwind_Exception *exception_object)
{
  if (*v1 >= 0xFu)
  {
    v3 = *(v1 + 1);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5CDD904(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_1B5CDD970(uint64_t result, unsigned int a2)
{
  *(result + 16) = 0;
  v2 = (result + 16);
  *(result + 2) = 16;
  *(result + 6) = 1;
  *(result + 8) = 0;
  *(result + 24) = 0;
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (HIWORD(a2))
      {
        v4 = (a2 >> 18) | 0xFFFFFFF0;
        *(result + 17) = (a2 >> 12) & 0x3F | 0x80;
        v5 = 2;
      }

      else
      {
        v4 = (a2 >> 12) | 0xFFFFFFE0;
        v5 = 1;
      }

      *v2 = v4;
      v3 = v5 + 1;
      v2[v5] = (a2 >> 6) & 0x3F | 0x80;
    }

    else
    {
      *v2 = (a2 >> 6) | 0xC0;
      v3 = 1;
    }

    v6 = v3 + 1;
    *result = v6;
    v2[v3] = a2 & 0x3F | 0x80;
    v2[v6] = 0;
  }

  else
  {
    *(result + 16) = a2;
    *result = 1;
  }

  return result;
}

void sub_1B5CDDA24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F2D558E0;
  if (a5)
  {
    atomic_fetch_add_explicit((a5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B5CDDD5C(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    sub_1B5CDD904(v1);
    sub_1B5CDD904(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5CDDEAC(uint64_t a1)
{
  *a1 = &unk_1F2D559C0;
  *(a1 + 8) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 1065353216;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = 0x100000;
  *(a1 + 1348) = 0;
  *(a1 + 1350) = 0;
  *(a1 + 1352) = 0;
  *(a1 + 1360) = 0;
  sub_1B5CDDF24(a1);
  return a1;
}

void sub_1B5CDDF24(uint64_t a1)
{
  if (*(a1 + 1320))
  {
    sub_1B5D1C09C(*(a1 + 1312));
    *(a1 + 1312) = 0;
    v2 = *(a1 + 1304);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(a1 + 1296) + 8 * i) = 0;
      }
    }

    *(a1 + 1320) = 0;
  }

  *(a1 + 1336) = 0;
  bzero((a1 + 12), 0x400uLL);
  for (j = 0; j != 256; j += 16)
  {
    *(a1 + 1036 + j) = 0uLL;
  }
}

void sub_1B5CDDFB0(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 1600));
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16) ? *(a1 + 16) : (a1 + 24);
    if (strcmp(v2, "root"))
    {
      sub_1B5CDF718();
      v3 = qword_1ED833A28;
      if (os_log_type_enabled(qword_1ED833A28, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(a1 + 16);
        if (!v22)
        {
          v22 = a1 + 24;
        }

        *v25 = 136315138;
        *&v25[4] = v22;
        _os_log_debug_impl(&dword_1B5CDB000, v3, OS_LOG_TYPE_DEBUG, "Valid locale identifier: %s", v25, 0xCu);
      }

      sub_1B5CDF770(a1 + 1480, (a1 + 8));
      if (*(a1 + 16))
      {
        v4 = *(a1 + 16);
      }

      else
      {
        v4 = (a1 + 24);
      }

      v5 = sub_1B5CDFA10(v4, *(a1 + 8));
      v53 = v5;
      v6 = CFLocaleCreate(*MEMORY[0x1E695E480], v5);
      v52 = v6;
      v7 = sub_1B5CDFE1C(*(a1 + 104), v6);
      v8 = sub_1B5DA881C(*(a1 + 104), v6);
      if (v7)
      {
        *v25 = 0x100000;
        *&v25[4] = 0;
        v25[6] = 0;
        *&v25[8] = 0;
        v25[16] = 0;
        v26 = 0x100000;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        LOBYTE(v30) = 0;
        v31 = 0x100000;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0x100000;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0x100000;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0x100000;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        sub_1B5CDC4B4(buf, v7);
        sub_1B5D5CBBC(&v26, buf);
        if (v24 && buf[6] == 1)
        {
          free(v24);
        }

        sub_1B5CDC4B4(buf, v8);
        sub_1B5D5CBBC(&v31, buf);
        if (v24)
        {
          if (buf[6] == 1)
          {
            free(v24);
          }
        }

        sub_1B5CDF770(v25, (a1 + 8));
        v51 = 1065353216;
        operator new();
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  sub_1B5CDF718();
  v9 = qword_1ED833A28;
  if (os_log_type_enabled(qword_1ED833A28, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 16);
    if (!v19)
    {
      v19 = a1 + 24;
    }

    v20 = *(a1 + 48);
    if (!v20)
    {
      v20 = a1 + 56;
    }

    *v25 = 136315394;
    *&v25[4] = v19;
    *&v25[12] = 2080;
    *&v25[14] = v20;
    _os_log_debug_impl(&dword_1B5CDB000, v9, OS_LOG_TYPE_DEBUG, "Loading mutable lexicon locale=%s path=%s", v25, 0x16u);
  }

  v10 = *(a1 + 112);
  if (v10 && sub_1B5D2422C(v10))
  {
    sub_1B5CDF718();
    v11 = qword_1ED833A28;
    if (os_log_type_enabled(qword_1ED833A28, OS_LOG_TYPE_DEBUG))
    {
      *v25 = 0;
      _os_log_debug_impl(&dword_1B5CDB000, v11, OS_LOG_TYPE_DEBUG, "Getting collator from static lexicon", v25, 2u);
    }

    sub_1B5CDC2F8(v25, *(a1 + 112));
    v14 = *(a1 + 1520);
    *(a1 + 1512) = *v25;
    if (v14)
    {
      sub_1B5CDD904(v14);
    }

    v15 = *(a1 + 1528);
    v16 = *(a1 + 1536);
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(a1 + 1512);
    v18 = *(a1 + 1520);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  sub_1B5CDF718();
  v12 = qword_1ED833A28;
  if (os_log_type_enabled(qword_1ED833A28, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 16);
    if (!v21)
    {
      v21 = a1 + 24;
    }

    *v25 = 136315138;
    *&v25[4] = v21;
    _os_log_debug_impl(&dword_1B5CDB000, v12, OS_LOG_TYPE_DEBUG, "Getting ICU collator for locale=%s", v25, 0xCu);
  }

  if (*(a1 + 16))
  {
    v13 = *(a1 + 16);
  }

  else
  {
    v13 = (a1 + 24);
  }

  sub_1B5D8CCC0(v25, v13);
}

void sub_1B5CDF398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  sub_1B5D85CA0(&a26, 0);
  v78 = *(v76 - 160);
  if (v78 && *(v76 - 162) == 1)
  {
    free(v78);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_1B5DA4E0C(&a72);
  if (v74)
  {
    sub_1B5CDD904(v74);
  }

  v79 = *(v75 + 72);
  if (v79)
  {
    sub_1B5CDD904(v79);
  }

  sub_1B5D85CA0((v75 + 56), 0);
  v80 = *(v75 + 32);
  if (v80 && *(v75 + 30) == 1)
  {
    free(v80);
  }

  v81 = *(v75 + 8);
  if (v81)
  {
    std::__shared_weak_count::__release_weak(v81);
  }

  if (v74)
  {
    sub_1B5CDD904(v74);
    if (!v73)
    {
      goto LABEL_19;
    }
  }

  else if (!v73)
  {
    goto LABEL_19;
  }

  sub_1B5CDD904(v73);
LABEL_19:
  MEMORY[0x1B8C880F0](v75, 0x1030C40FB63F55ELL);
  if (v74)
  {
    sub_1B5CDD904(v74);
    if (!v73)
    {
      goto LABEL_26;
    }
  }

  else if (!v73)
  {
    goto LABEL_26;
  }

  sub_1B5CDD904(v73);
LABEL_26:
  std::mutex::unlock(v72 + 25);
  _Unwind_Resume(a1);
}

void sub_1B5CDF718()
{
  if ((atomic_load_explicit(&qword_1ED833A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED833A30))
  {
    sub_1B5D56AB8();

    __cxa_guard_release(&qword_1ED833A30);
  }
}

uint64_t sub_1B5CDF770(uint64_t a1, unsigned __int16 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = v4 == *(a2 + 1);
    }

    else
    {
      v5 = 0;
    }

    if (v5 && *(a1 + 6))
    {
      __assert_rtn("operator=", "TIString.cpp", 145, "!m_buffer || m_buffer != o.m_buffer || m_buffer_type == External");
    }

    if (*(a2 + 6) == 1)
    {
      sub_1B5CDF8A0(a1);
      if (*a2)
      {
        sub_1B5CDCB48(a1, *a2);
        if (*(a1 + 8))
        {
          v7 = *(a1 + 8);
        }

        else
        {
          v7 = (a1 + 16);
        }

        if (*(a2 + 1))
        {
          v8 = *(a2 + 1);
        }

        else
        {
          v8 = (a2 + 8);
        }

        strlcpy(v7, v8, *a2 + 1);
        *a1 = *a2;
        v9 = a2[2];
        if (!v9)
        {
          sub_1B5CDF8F4(a2);
          v9 = a2[2];
        }

        *(a1 + 4) = v9;
      }
    }

    else if (!*(a2 + 6))
    {
      if (v4 && *(a1 + 6) == 1)
      {
        free(v4);
      }

      *(a1 + 2) = 16;
      *(a1 + 16) = 0;
      *(a1 + 8) = *(a2 + 1);
      *a1 = *a2;
      v6 = a2[2];
      if (!v6)
      {
        sub_1B5CDF8F4(a2);
        v6 = a2[2];
      }

      *(a1 + 4) = v6;
      *(a1 + 6) = 0;
    }
  }

  return a1;
}

void sub_1B5CDF8A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 6) == 1)
  {
    free(v2);
  }

  *(a1 + 8) = 0;
  *(a1 + 6) = 1;
  *(a1 + 16) = 0;
  *a1 = 0x100000;
  *(a1 + 4) = 0;
}

unsigned __int16 *sub_1B5CDF8F4(unsigned __int16 *result)
{
  result[2] = 0;
  v1 = *result;
  if (*result)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(result + 1);
    if (!v4)
    {
      v4 = result + 8;
    }

    do
    {
      v5 = v2 + 1;
      if (v1 == (v2 + 1))
      {
        goto LABEL_19;
      }

      v6 = *(v4 + v2);
      if (v6 - 245 < 0xFFFFFFCD)
      {
        goto LABEL_19;
      }

      v7 = *(v4 + v5);
      if ((v6 & 0xF0) == 0xE0)
      {
        if ((a00000000000000[v6 & 0xF] >> (*(v4 + v5) >> 5)))
        {
          LODWORD(v5) = v2 + 2;
          if (v1 == (v2 + 2))
          {
            goto LABEL_21;
          }

          v8 = *(v4 + (v2 + 2));
          v9 = v2 + 3;
          goto LABEL_17;
        }
      }

      else
      {
        if (v6 <= 0xDF)
        {
          v8 = v7;
          v9 = v2 + 2;
LABEL_17:
          if (v8 < -64)
          {
            LODWORD(v5) = v9;
          }

          goto LABEL_19;
        }

        if ((byte_1B5DC570A[v7 >> 4] >> (v6 & 7)))
        {
          LODWORD(v5) = v2 + 2;
          if (v1 == (v2 + 2))
          {
            goto LABEL_21;
          }

          if (*(v4 + (v2 + 2)) <= -65)
          {
            LODWORD(v5) = v2 + 3;
            if (v1 == (v2 + 3))
            {
LABEL_21:
              result[2] = v3 + 1;
              return result;
            }

            v8 = *(v4 + (v2 + 3));
            v9 = v2 + 4;
            goto LABEL_17;
          }
        }
      }

LABEL_19:
      result[2] = ++v3;
      v2 = v5;
    }

    while (v1 > v5);
  }

  return result;
}

CFStringRef sub_1B5CDFA10(UInt8 *bytes, CFIndex numBytes)
{
  if (numBytes)
  {
    return CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, numBytes, 0x8000100u, 0);
  }

  else
  {
    return &stru_1F2D5EC58;
  }
}

uint64_t LXLexiconCreateTransient(const __CFDictionary *a1, CFErrorRef *a2)
{
  Value = CFDictionaryGetValue(a1, @"name");
  if (Value)
  {
    v5 = Value;
    if (CFStringGetLength(Value))
    {
      sub_1B5CDFCFC(a1);
      if ((atomic_load_explicit(&qword_1ED833A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED833A20))
      {
        operator new();
      }

      v6 = qword_1ED833A10;
      v7 = qword_1ED833A08;
      if (qword_1ED833A08)
      {
        atomic_fetch_add_explicit((qword_1ED833A08 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *MEMORY[0x1E695E480];
      if (qword_1ED833C28 != -1)
      {
        dispatch_once(&qword_1ED833C28, &unk_1F2D58210);
      }

      Instance = _CFRuntimeCreateInstance();
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1B5CDDA24((Instance + 16), v5, &stru_1F2D5EC58, v6, v7);
    }
  }

  if (a2)
  {
    *a2 = sub_1B5D4E9A0(@"A name is required when creating a transient lexicon", 0);
  }

  return 0;
}

void sub_1B5CDFC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_guard_abort(&qword_1ED833A20);
  sub_1B5D1E6E0(&a9, 0);
  _Unwind_Resume(a1);
}

const __CFString *sub_1B5CDFCFC(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"locale");
  v2 = Value;
  if (!Value)
  {
    return v2;
  }

  v3 = CFGetTypeID(Value);
  if (v3 == CFStringGetTypeID())
  {
    v4 = CFLocaleCreate(0, v2);
  }

  else
  {
    v5 = CFGetTypeID(v2);
    if (v5 != CFLocaleGetTypeID())
    {
      __assert_rtn("createLocale", "LXUtils.cpp", 70, "false && received unsupported CFType for locale");
    }

    v4 = MEMORY[0x1B8C87820](0, v2);
  }

  v2 = v4;
  if (!sub_1B5CDFDD4(v4, @"ars"))
  {
    return v2;
  }

  v6 = sub_1B5CE543C(v2, @"ar");
  CFRelease(v2);
  return v6;
}

uint64_t sub_1B5CDFE1C(const __CFDictionary *a1, const __CFLocale *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2D5B060;
  v5[3] = v5;
  v2 = sub_1B5CDFEBC(a1, a2);
  sub_1B5DA8570(v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1B5CDFEA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DA8570(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CDFEBC(const __CFDictionary *a1, CFLocaleRef locale)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3002000000;
  v11 = sub_1B5DA85F0;
  v12 = sub_1B5DA8600;
  cf = 0;
  if (locale)
  {
    if (CFLocaleGetValue(locale, *MEMORY[0x1E695E6F0]))
    {
      if (a1)
      {
        Value = CFDictionaryGetValue(a1, @"enumerateCachedOnlyOTAPaths");
        v4 = Value;
        if (Value)
        {
          v5 = CFGetTypeID(Value);
          if (v5 == CFBooleanGetTypeID())
          {
            CFBooleanGetValue(v4);
          }
        }
      }
    }
  }

  LDEnumerateAssetDataItems();
  v6 = v9[5];
  v9[5] = 0;
  _Block_object_dispose(&v8, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_1B5CE002C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  sub_1B5CE5794((v7 + 40), 0);
  _Unwind_Resume(a1);
}

void sub_1B5CE0050(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = *(a1 + 40);
  v13 = a5;
  v14 = a2;
  v8 = *(v7 + 24);
  if (!v8)
  {
    sub_1B5CEC274();
  }

  if ((*(*v8 + 48))(v8, &v14, &v13))
  {
    v11 = *(*(a1 + 32) + 8);
    v12 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
    sub_1B5CE5794((v11 + 40), v12);
    *a6 = 1;
  }
}

BOOL sub_1B5CE00F4(uint64_t a1, const __CFURL **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x1E69AC068], 0))
  {
    return 0;
  }

  return sub_1B5CE015C(v3, @"Unigrams");
}

BOOL sub_1B5CE015C(const __CFURL *a1, const __CFString *a2)
{
  PathComponent = CFURLCopyLastPathComponent(a1);
  if (CFStringFind(PathComponent, a2, 0).location)
  {
    v5 = 0;
  }

  else
  {
    v6 = CFURLCopyPathExtension(a1);
    v5 = CFStringCompare(@"dat", v6, 0) == kCFCompareEqualTo;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  return v5;
}

void sub_1B5CE0200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1B5CE5794(&a9, 0);
  sub_1B5CE5794(&a10, 0);
  _Unwind_Resume(a1);
}

void *sub_1B5CE0234(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = open(v4, 0);
  if (v5 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1B5CE410C(&v18, "open()");
    v11 = __error();
    sub_1B5D7AE44(exception, &v18, a2, *v11);
    __cxa_throw(exception, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
  }

  v6 = v5;
  if (fstat(v5, &v18) < 0)
  {
    v12 = __cxa_allocate_exception(0x20uLL);
    sub_1B5CE410C(&v16, "fstat()");
    v13 = __error();
    sub_1B5D7AE44(v12, &v16, a2, *v13);
    __cxa_throw(v12, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
  }

  st_size = v18.st_size;
  a1[1] = v18.st_size;
  if (st_size >= 0x7FFFFFFF)
  {
    LODWORD(st_size) = 0x7FFFFFFF;
  }

  v17 = st_size;
  v16 = 0;
  fcntl(v6, 44, &v16);
  v8 = mmap(0, a1[1], 1, 1, v6, 0);
  *a1 = v8;
  if (v8 == -1)
  {
    v14 = __cxa_allocate_exception(0x20uLL);
    sub_1B5CE410C(&v16, "mmap()");
    v15 = __error();
    sub_1B5D7AE44(v14, &v16, a2, *v15);
    __cxa_throw(v14, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
  }

  close(v6);
  return a1;
}

void sub_1B5CE0418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      close(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void sub_1B5CE04A8(uint64_t **a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5D93B50(a2);
  LODWORD(__p) = 0x100000;
  WORD2(__p) = 0;
  BYTE6(__p) = 1;
  v10 = 0;
  sub_1B5CDCAAC(&__p, ".dat", 0, 4u);
  v4 = sub_1B5D5DDEC(v3, &__p);
  if (v10)
  {
    v5 = BYTE6(__p) == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v10);
  }

  if (v4)
  {
    sub_1B5D5D250(v7, v3, 0, (*v3 - 3));
    sub_1B5D5D760(v7, "idx", 0xFFFFuLL);
  }

  else
  {
    LODWORD(v7[0]) = 0x100000;
    WORD2(v7[0]) = 0;
    BYTE6(v7[0]) = 0;
    v7[1] = 0;
    v8 = 0;
  }

  if (*(v3 + 8))
  {
    v6 = *(v3 + 8);
  }

  else
  {
    v6 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v6);
  operator new();
}

void sub_1B5CE0E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t buf, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16)
  {
    if (a15 == 1)
    {
      free(a16);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1B5CE10F4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      munmap(*v2, *(v2 + 8));
    }

    *(v2 + 8) = 0;

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

unint64_t sub_1B5CE1190(uint64_t a1, unint64_t a2)
{
  if (a2 <= 3)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  result = 0;
  if (a2 >= 8 && a1 && a2 >= 0xC)
  {
    return bswap64(*(a1 + 8) | (*(a1 + 4) << 32));
  }

  return result;
}

void *sub_1B5CE11F0(void *a1, uint64_t *a2)
{
  *a1 = &unk_1F2D55CF8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v3 = a2[1];
  v4 = a2[2];
  v5 = v4 + 4;
  if (v3)
  {
    v6 = v5 > v3;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || (v8 = *a2, a2[2] = v5, !v8))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1B5CE410C(&v13, "Corrupt input stream: failed to read meta flags codebook length");
    sub_1B5D4D74C(exception, &v13);
    __cxa_throw(exception, &unk_1F2D574A8, sub_1B5D4D7C8);
  }

  v9 = bswap32(*(v8 + v4));
  if (v3 && v5 + v9 > v3)
  {
    v12 = __cxa_allocate_exception(0x20uLL);
    sub_1B5CE410C(&v13, "Corrupt input stream: cannot read meta flags codebook");
    sub_1B5D4D74C(v12, &v13);
    __cxa_throw(v12, &unk_1F2D574A8, sub_1B5D4D7C8);
  }

  sub_1B5CE13B8(a1 + 1, v9 >> 2);
  memcpy(a1[1], (*a2 + a2[2]), v9);
  return a1;
}

void sub_1B5CE1360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      v20 = *v16;
      if (*v16)
      {
        *(v15 + 16) = v20;
        operator delete(v20);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void sub_1B5CE13B8(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1B5D0DF30(v10);
      }

      sub_1B5D04FA0();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

uint64_t sub_1B5CE14CC(uint64_t a1, unint64_t a2, unint64_t a3, _DWORD *a4)
{
  if (a2 < a3)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (a2)
  {
    v4 = a3 + 4 > a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 || a1 == 0;
  v6 = !v5;
  if (!v5)
  {
    *a4 = bswap32(*(a1 + a3));
  }

  return v6;
}

uint64_t sub_1B5CE152C(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 <= 0x23)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  v3 = a2 <= 0x27 || a1 == 0;
  v4 = !v3;
  if (!v3)
  {
    *a3 = bswap32(*(a1 + 36));
  }

  return v4;
}

uint64_t sub_1B5CE1584(uint64_t a1, unint64_t a2, unint64_t a3, int *a4)
{
  if (a2 < a3)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (a2)
  {
    v5 = a3 + 3 > a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 || a1 == 0;
  result = !v6;
  if (!v6)
  {
    *a4 = (*(a1 + a3) << 16) | (*(a1 + a3 + 1) << 8) | *(a1 + a3 + 2);
  }

  return result;
}

void sub_1B5CE1B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v19)
  {
    operator delete(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  a15 = v18 + 32;
  sub_1B5D326B4(&a15);
  sub_1B5D32740(&a15);
  MEMORY[0x1B8C880F0](v18, 0x1020C404D15F4B2);
  _Unwind_Resume(a1);
}

void sub_1B5CE1BC0(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5CE1C08(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_1B5CE1E28(a1, v2);
  }

  sub_1B5D04FA0();
}

uint64_t *sub_1B5CE1C4C(uint64_t *result, _BYTE *a2)
{
  v3 = result[1];
  v4 = result[2];
  if (v3 == v4 << 6)
  {
    if ((v3 + 1) < 0)
    {
      goto LABEL_9;
    }

    if (v3 > 0x3FFFFFFFFFFFFFFELL)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_11;
    }

    v5 = v4 << 7;
    if (v5 <= (v3 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v3 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    else
    {
      v6 = v5;
    }

    if (v3 < v6)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
LABEL_9:
        sub_1B5D04FA0();
      }

LABEL_11:
      v11 = 0;
      v12 = 0uLL;
      sub_1B5CE1C08(&v11, v6);
    }

    v3 = result[1];
  }

  result[1] = v3 + 1;
  v7 = *result;
  v8 = v3 >> 6;
  v9 = 1 << v3;
  if (*a2 == 1)
  {
    v10 = *(v7 + 8 * v8) | v9;
  }

  else
  {
    v10 = *(v7 + 8 * v8) & ~v9;
  }

  *(v7 + 8 * v8) = v10;
  return result;
}

void sub_1B5CE1E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5CE1E28(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5CE1E70(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v5 = *(i - 32);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void *sub_1B5CE1EB8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    sub_1B5CE1C08(result, v2);
  }

  return result;
}

uint64_t sub_1B5CE1FCC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 - 1;
    while (1)
    {
      v3 = v2 >> 6;
      v4 = 1 << v2;
      v5 = *(result + 8 * (v2 >> 6));
      if ((v5 & (1 << v2)) == 0)
      {
        break;
      }

      *(result + 8 * v3) = v5 & ~v4;
      if (--v2 == -1)
      {
        return result;
      }
    }

    *(result + 8 * v3) = v5 | v4;
  }

  return result;
}

uint64_t sub_1B5CE2010(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 32);
    v2 -= 32;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      operator delete(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5CE2064(void *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a2 < a3)
  {
    v4 = a1[1];
    if (a3 <= ((a1[2] - v4) >> 5))
    {
      v5 = *(v4 + 32 * (a3 - 1) + 8);
      if (v5 > a4)
      {
        v6 = v5 - a4;
        if (v6 >= 8)
        {
          v7 = 8;
        }

        else
        {
          v7 = v6;
        }

        v8 = a1[4];
        v9 = a1[5];
        v10 = a1[6];
        v11 = v9 - v8;
        if (v9 < v10)
        {
          sub_1B5CE25A0(v9, v7);
        }

        v12 = (v11 >> 5) + 1;
        if (!(v12 >> 59))
        {
          v13 = v10 - v8;
          v14 = v13 >> 4;
          if (v13 >> 4 <= v12)
          {
            v14 = (v11 >> 5) + 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFE0)
          {
            v15 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            if (!(v15 >> 59))
            {
              operator new();
            }

            sub_1B5CE5968();
          }

          sub_1B5CE25A0(32 * (v11 >> 5), v7);
        }

        sub_1B5D04FA0();
      }

      __assert_rtn("build_lookup_tables", "TIHuffmanCoder.cpp", 354, "longest_codeword_length > depth");
    }
  }

  __assert_rtn("build_lookup_tables", "TIHuffmanCoder.cpp", 351, "lo < hi && hi <= m_codebook.size()");
}

void sub_1B5CE25A0(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2 != 31)
  {
    operator new();
  }

  sub_1B5D04FA0();
}

void sub_1B5CE266C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CE268C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5CE26F0(uint64_t a1, unsigned int a2, void *a3, unsigned int a4)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = (a1 + (((a2 + v4) >> 3) & 0x3FFFFFF8));
    v7 = (a2 + v4) & 0x3F;
    if (v6 >= a3 && (v6 != a3 || v7 >= a4))
    {
      break;
    }

    if ((*v6 >> v7))
    {
      v9 = 1 << v4;
    }

    else
    {
      v9 = 0;
    }

    v5 = v9 | v5;
    ++v4;
  }

  return v5;
}

uint64_t sub_1B5CE2750(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3 = v2 & 0x3F;
  v4 = *(a1 + 40);
  v5 = v3 + v4 - 63;
  if (v5 < 0)
  {
    v5 = (v2 & 0x3F) + v4;
  }

  v6 = v5 >> 6;
  v7 = (v3 + v4) >> 6;
  if (v4 < 0)
  {
    v7 = v6;
  }

  v8 = ((v4 + v2) & 0x3F) - v3 + (v7 << 6);
  if (v8 >= 1)
  {
    v9 = (v2 >> 3) & 0x1FFFFFF8;
    v10 = (**(a1 + 32) + v9);
    v11 = (*a2 + v9);
    if (v3)
    {
      if (v8 >= (64 - v3))
      {
        v12 = 64 - v3;
      }

      else
      {
        v12 = v8;
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v12)) & (-1 << v3) & (*v10 ^ *v11)) != 0)
      {
        return 0;
      }

      v8 -= v12;
      ++v11;
      ++v10;
    }

    if (v8 >= 64)
    {
      while (*v11 == *v10)
      {
        v13 = v8 - 64;
        ++v10;
        ++v11;
        v14 = v8 <= 127;
        v8 -= 64;
        if (v14)
        {
          goto LABEL_18;
        }
      }

      return 0;
    }

    v13 = v8;
LABEL_18:
    if (v13 >= 1 && (*v10 ^ *v11) << -v13)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B5CE2860(uint64_t result, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = v2 + 4;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v7 = *a2;
    a2[2] = v4;
    if (v7)
    {
      v8 = v2 + 8;
      if (!v3 || v8 <= v3)
      {
        v10 = *(v7 + v2);
        a2[2] = v8;
        if (v10)
        {
          v11 = result;
          for (i = bswap32(v10); i; --i)
          {
            v14 = a2[1];
            v13 = a2[2];
            v15 = v13 + 4;
            if (v14 && v15 > v14)
            {
              break;
            }

            v17 = *a2;
            a2[2] = v15;
            if (!v17)
            {
              break;
            }

            *__s1 = *(v17 + v13);
            v18 = strnlen(__s1, 4uLL);
            result = sub_1B5CDD214(&v23, v18, __s1, v18);
            v20 = a2[1];
            v19 = a2[2];
            v21 = v19 + 4;
            if (v20 && v21 > v20 || (v22 = *a2, a2[2] = v21, !v22))
            {
              if (v23 >= 0xFu)
              {
                result = v24;
                if (v24)
                {
                  return MEMORY[0x1B8C880C0](v24, 0x1000C8077774924);
                }
              }

              return result;
            }

            result = sub_1B5CE2A50(v11, &v23, bswap32(*(v22 + v19)));
            if (v23 >= 0xFu)
            {
              result = v24;
              if (v24)
              {
                result = MEMORY[0x1B8C880C0](v24, 0x1000C8077774924);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B5CE29A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int16 a10, uint64_t a11)
{
  if (a10 >= 0xFu)
  {
    if (a11)
    {
      MEMORY[0x1B8C880C0](a11, v11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1B5CE29CC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 32);
    sub_1B5D326B4(&v3);
    v3 = (v2 + 8);
    sub_1B5D32740(&v3);

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t sub_1B5CE2A50(uint64_t result, unsigned __int16 *a2, int a3)
{
  v3 = *a2;
  if ((v3 - 1) > 3)
  {
    return result;
  }

  v5 = result;
  if (v3 == 1)
  {
    *(result + 4 * *(a2 + 2) + 12) = a3;
  }

  else if (!sub_1B5CE2F44(result, a2))
  {
    if (*a2 <= 0xEu)
    {
      v6 = (a2 + 1);
    }

    else
    {
      v6 = *(a2 + 1);
    }

    *(v5 + *v6 + 1036) = 1;
  }

  v7 = *a2;
  v8 = *(a2 + 1);
  if (v7 <= 0xE)
  {
    v9 = (a2 + 1);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v10 = sub_1B5CE3124(v9, *a2);
  v11 = v10;
  v12 = *(v5 + 1304);
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v10;
    if (v12 <= v10)
    {
      v15 = v10 % v12;
    }
  }

  else
  {
    v15 = (v12 - 1) & v10;
  }

  v16 = *(*(v5 + 1296) + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    v18 = *(v17 + 1);
    if (v18 == v11)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v18 >= v12)
      {
        v18 %= v12;
      }
    }

    else
    {
      v18 &= v12 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_29;
    }

LABEL_28:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_29;
    }
  }

  result = sub_1B5CE401C(v17 + 8, a2);
  if ((result & 1) == 0)
  {
    goto LABEL_28;
  }

  v19 = *(v5 + 1336);
  if (v19 <= v7)
  {
    v19 = v7;
  }

  *(v5 + 1336) = v19;
  return result;
}

BOOL sub_1B5CE2F44(uint64_t a1, unsigned __int16 *a2)
{
  LODWORD(v2) = *a2;
  if (v2 < 2)
  {
    return 0;
  }

  v5 = a2 + 1;
  v6 = 1;
  while (1)
  {
    v7 = v2 <= 0xE ? v5 : *(a2 + 1);
    sub_1B5CDD214(&v11, v6, v7, v6);
    v8 = sub_1B5CE3018((a1 + 1296), &v11);
    v9 = v8 != 0;
    if (v11 >= 0xFu && v12)
    {
      MEMORY[0x1B8C880C0](v12, 0x1000C8077774924);
    }

    if (v8)
    {
      break;
    }

    ++v6;
    v2 = *a2;
    if (v6 >= v2)
    {
      return 0;
    }
  }

  return v9;
}

unsigned __int16 *sub_1B5CE3018(void *a1, unsigned __int16 *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v4 <= 0xE)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = sub_1B5CE3124(v6, v4);
  v8 = a1[1];
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v8 <= v7)
    {
      v12 = v7 % v8;
    }
  }

  else
  {
    v12 = (v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  for (i = *v13; i; i = *i)
  {
    v15 = *(i + 1);
    if (v15 == v9)
    {
      if (sub_1B5CE401C(i + 8, a2))
      {
        return i;
      }
    }

    else
    {
      if (v11 > 1)
      {
        if (v15 >= v8)
        {
          v15 %= v8;
        }
      }

      else
      {
        v15 &= v8 - 1;
      }

      if (v15 != v12)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_1B5CE3124(unsigned __int8 *a1, unsigned int a2)
{
  v2 = -1640531527;
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = a1;
    do
    {
      v5 = v2 + *v4;
      v6 = (v5 << 16) ^ (v4[1] << 11);
      v4 += 2;
      v2 = (v6 ^ v5) + ((v6 ^ v5) >> 11);
      --v3;
    }

    while (v3);
    a1 += 2 * (a2 >> 1);
  }

  if (a2)
  {
    v2 = ((v2 + *a1) ^ ((v2 + *a1) << 11)) + (((v2 + *a1) ^ ((v2 + *a1) << 11)) >> 17);
  }

  v7 = (v2 ^ (8 * v2)) + ((v2 ^ (8 * v2)) >> 5);
  v8 = (v7 ^ (4 * v7)) + ((v7 ^ (4 * v7)) >> 15);
  return v8 ^ (v8 << 10);
}

uint64_t sub_1B5CE319C(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 14352);
  if (v2 == -1)
  {
    sub_1B5D24008();
  }

  *buf = &v13;
  if ((off_1F2D57D30[v2])(buf, a1))
  {
    __assert_rtn("load", "TIStaticDictionaryImpl.cpp", 183, "!m_baseline_trie.valid()");
  }

  v5 = *(a1 + 14352);
  if (v5 == -1)
  {
    sub_1B5D24008();
  }

  *buf = &v13;
  if (((off_1F2D57D30[v5])(buf, a1) & 1) == 0)
  {
    if (qword_1ED833A38 != -1)
    {
      dispatch_once(&qword_1ED833A38, &unk_1F2D57D98);
    }

    v7 = qword_1ED833A40;
    if (os_log_type_enabled(qword_1ED833A40, OS_LOG_TYPE_DEBUG))
    {
      v10 = a2[1];
      if (!v10)
      {
        v10 = a2 + 2;
      }

      v11 = a2[5];
      if (!v11)
      {
        v11 = a2 + 6;
      }

      v12 = a2[9];
      *buf = 136315650;
      if (!v12)
      {
        v12 = a2 + 10;
      }

      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      v15 = 2080;
      v16 = v12;
      _os_log_debug_impl(&dword_1B5CDB000, v7, OS_LOG_TYPE_DEBUG, "Loading static dictionary for localeIdentifier=%s, unigrams='%s', delta='%s'", buf, 0x20u);
    }

    if (a2[1])
    {
      v8 = a2[1];
    }

    else
    {
      v8 = (a2 + 2);
    }

    sub_1B5D8CCC0(buf, v8);
  }

  result = 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CE3924(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1B5CE56B8(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B5CE392C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1B5CE56B8();
  }

  _Unwind_Resume(a1);
}

void sub_1B5CE3934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, const void *a13, const void *a14, __int128 __p, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v24)
  {
LABEL_6:
    sub_1B5CE57CC(&a14, 0);
    sub_1B5D23F18(v21, 0);
    sub_1B5D1E6E0((v23 + 120), 0);
    sub_1B5D23F50(&__p);
    *&__p = v23 + 72;
    sub_1B5D1BF88(&__p);
    v26 = v20[7];
    if (v26)
    {
      v20[8] = v26;
      operator delete(v26);
    }

    v27 = v20[4];
    if (v27)
    {
      v20[5] = v27;
      operator delete(v27);
    }

    v28 = *v23;
    if (*v23)
    {
      v20[2] = v28;
      operator delete(v28);
    }

    MEMORY[0x1B8C880F0](v20, 0x1070C4046963303);
    if (a2 == 1)
    {
      v29 = __cxa_begin_catch(a1);
      if (qword_1ED833A38 != -1)
      {
        dispatch_once(&qword_1ED833A38, &unk_1F2D57D98);
      }

      v30 = qword_1ED833A40;
      if (os_log_type_enabled(qword_1ED833A40, OS_LOG_TYPE_ERROR))
      {
        v31 = (*(*v29 + 16))(v29);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v31;
        _os_log_error_impl(&dword_1B5CDB000, v30, OS_LOG_TYPE_ERROR, "failed to create the stem-suffix lexiconID converter: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
      if (!v19)
      {
        JUMPOUT(0x1B5CE33C8);
      }

      JUMPOUT(0x1B5CE33C0);
    }

    sub_1B5D23F18(&a13, 0);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void sub_1B5CE3AFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_1B5D1C09C(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1B5CE3B28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1B5CE3B2CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1B5CE3B60(uint64_t a1, uint64_t a2)
{
  v5 = a2 + 16;
  v4 = *(a2 + 16);
  v6 = *(v5 + 8);
  if (v4 <= 0xE)
  {
    v7 = (v5 + 2);
  }

  else
  {
    v7 = *(v5 + 8);
  }

  v32 = sub_1B5CE3124(v7, v4);
  *(v5 - 8) = v32;
  v8 = *(a1 + 8);
  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v8 || (v10 * v8) < v9)
  {
    v11 = 1;
    if (v8 >= 3)
    {
      v11 = (v8 & (v8 - 1)) != 0;
    }

    v12 = v11 | (2 * v8);
    v13 = vcvtps_u32_f32(v9 / v10);
    if (v12 <= v13)
    {
      prime = v13;
    }

    else
    {
      prime = v12;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v8 = *(a1 + 8);
    }

    if (prime > v8)
    {
LABEL_16:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    if (prime < v8)
    {
      v15 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v8 < 3 || (v16 = vcnt_s8(v8), v16.i16[0] = vaddlv_u8(v16), v16.u32[0] > 1uLL))
      {
        v15 = std::__next_prime(v15);
      }

      else
      {
        v17 = 1 << -__clz(v15 - 1);
        if (v15 >= 2)
        {
          v15 = v17;
        }
      }

      if (prime <= v15)
      {
        prime = v15;
      }

      if (prime >= v8)
      {
        v8 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_16;
        }

        v18 = *a1;
        *a1 = 0;
        if (v18)
        {
          operator delete(v18);
        }

        v8 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v19 = vcnt_s8(v8);
  v19.i16[0] = vaddlv_u8(v19);
  v20 = v19.u32[0];
  if (v19.u32[0] > 1uLL)
  {
    v21 = v32;
    if (v8 <= v32)
    {
      v21 = v32 % v8;
    }
  }

  else
  {
    v21 = (v8 - 1) & v32;
  }

  v22 = *(*a1 + 8 * v21);
  v31 = *a1;
  if (v22)
  {
    v23 = *v22;
    if (*v22)
    {
      v24 = 0;
      do
      {
        v25 = v23;
        v26 = *(v23 + 1);
        if (v20 > 1)
        {
          v27 = v26;
          if (v26 >= v8)
          {
            v27 = v26 % v8;
          }
        }

        else
        {
          v27 = v26 & (v8 - 1);
        }

        if (v27 != v21)
        {
          break;
        }

        v28 = v26 == v32 && sub_1B5CE401C(v25 + 8, v5);
        if ((v24 & (v28 != (v24 & 1))) != 0)
        {
          break;
        }

        v24 |= v28 != (v24 & 1);
        v23 = *v25;
        v22 = v25;
      }

      while (*v25);
    }
  }

  v29 = *(a2 + 8);
  if (v20 > 1)
  {
    if (v29 >= v8)
    {
      v29 %= v8;
    }
  }

  else
  {
    v29 &= v8 - 1;
  }

  if (!v22)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v31[v29] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_68;
    }

    v30 = *(*a2 + 8);
    if (v20 > 1)
    {
      if (v30 >= v8)
      {
        v30 %= v8;
      }
    }

    else
    {
      v30 &= v8 - 1;
    }

LABEL_67:
    *(*a1 + 8 * v30) = a2;
    goto LABEL_68;
  }

  *a2 = *v22;
  *v22 = a2;
  if (*a2)
  {
    v30 = *(*a2 + 8);
    if (v20 > 1)
    {
      if (v30 >= v8)
      {
        v30 %= v8;
      }
    }

    else
    {
      v30 &= v8 - 1;
    }

    if (v30 != v29)
    {
      goto LABEL_67;
    }
  }

LABEL_68:
  ++*(a1 + 24);
}

BOOL sub_1B5CE401C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return 0;
  }

  if (v2 <= 0xE)
  {
    v3 = a1 + 1;
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 1);
  if (v2 <= 0xE)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = *(a2 + 1);
  }

  return memcmp(v3, v5, v2) == 0;
}

void *sub_1B5CE4074(void *a1, char *a2, int a3)
{
  sub_1B5CE410C(__p, a2);
  if (a3)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  sub_1B5CE4C88(a1, __p, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F2D55BF0;
  return a1;
}

void sub_1B5CE40F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1B5CE410C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
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

uint64_t sub_1B5CE41C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = (a2 + 16);
  }

  sub_1B5CE4074(&v21, v6, 0);
  if (v22 != 1 || ((v23 - 1) >= 0x2B ? (v7 = v24 == 0) : (v7 = 1), v7))
  {
    v8 = 0;
    v9 = 5;
  }

  else
  {
    if ((v23 - 48) > 0xFFFFFFFFFFFFFFD0)
    {
      v10 = 0;
    }

    else
    {
      v10 = bswap32(*(v24 + 44));
    }

    v11 = (v23 - 48) < 0xFFFFFFFFFFFFFFD1;
    v12 = v10 != 0;
    if (v11 && v12)
    {
      v8 = ((*(v24 + 40) >> 12) & 1) << 32;
    }

    else
    {
      v8 = 0;
    }

    if (v11 && v12)
    {
      v9 = v10;
    }

    else
    {
      v9 = 5;
    }
  }

  sub_1B5DA4E0C(&v21);
  v13 = v8 | v9;
  if (HIDWORD(v8))
  {
    if (v13 <= 5)
    {
      if (v13 == 1)
      {
        sub_1B5D23204(a1);
        bzero(a1, 0x610uLL);
        *(a1 + 48) = 0u;
        *(a1 + 40) = &unk_1F2D5E170;
        *(a1 + 132) = 0;
        *(a1 + 64) = 0u;
        sub_1B5CDDEAC(a1 + 144);
        v14 = 7;
        v15 = 1520;
        goto LABEL_44;
      }

      if (v13 == 2)
      {
        sub_1B5D23204(a1);
        bzero(a1, 0x5D0uLL);
        *(a1 + 40) = &unk_1F2D5E330;
        *(a1 + 48) = &unk_1F2D56948;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        sub_1B5CDDEAC(a1 + 80);
        v14 = 8;
        v15 = 1456;
LABEL_44:
        v16 = (a1 + v15);
        *v16 = 0u;
        v16[1] = 0u;
        goto LABEL_45;
      }
    }

    else
    {
      switch(v13)
      {
        case 6:
          sub_1B5D23204(a1);
          bzero(a1, 0x5E8uLL);
          *(a1 + 48) = &unk_1F2D56948;
          *(a1 + 56) = 0;
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 64) = 0;
          *(a1 + 40) = &unk_1F2D5E920;
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          sub_1B5CDDEAC(a1 + 104);
          v14 = 11;
          goto LABEL_41;
        case 7:
          sub_1B5D23204(a1);
          bzero(a1, 0x808uLL);
          *(a1 + 40) = &unk_1F2D5E4F0;
          bzero((a1 + 48), 0x252uLL);
          sub_1B5DB4ECC(a1 + 48);
          sub_1B5CDDEAC(a1 + 648);
          v14 = 9;
          v15 = 2024;
          goto LABEL_44;
        case 8:
          sub_1B5D23204(a1);
          bzero(a1, 0x5E8uLL);
          *(a1 + 40) = &unk_1F2D5E660;
          sub_1B5CE61C4((a1 + 56));
          *(a1 + 96) = 0;
          *(a1 + 64) = 0u;
          *(a1 + 80) = 0u;
          sub_1B5CDDEAC(a1 + 104);
          v14 = 10;
LABEL_41:
          v15 = 1480;
          goto LABEL_44;
      }
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_1B5CE410C(&v21, "unsupported");
    sub_1B5D32AFC(exception, &v21);
    __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
  }

  if (v13 <= 4)
  {
    switch(v13)
    {
      case 1:
        sub_1B5D23204(a1);
        bzero(a1, 0x630uLL);
        *(a1 + 160) = 0;
        *(a1 + 40) = &unk_1F2D5C620;
        *(a1 + 48) = &unk_1F2D5C6F8;
        *(a1 + 140) = 0;
        *(a1 + 56) = 0u;
        *(a1 + 72) = 0u;
        *(a1 + 168) = 0;
        *(a1 + 152) = a1 + 160;
        sub_1B5CDDEAC(a1 + 176);
        *(a1 + 1568) = 0u;
        *(a1 + 1552) = 0u;
        v14 = 2;
        goto LABEL_45;
      case 2:
        sub_1B5D23204(a1);
        bzero(a1, 0x5F0uLL);
        *(a1 + 96) = 0;
        *(a1 + 40) = &unk_1F2D5CC38;
        *(a1 + 48) = &unk_1F2D5CD10;
        *(a1 + 56) = &unk_1F2D56948;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 104) = 0;
        *(a1 + 88) = a1 + 96;
        sub_1B5CDDEAC(a1 + 112);
        *(a1 + 1504) = 0u;
        *(a1 + 1488) = 0u;
        v14 = 1;
        goto LABEL_45;
      case 3:
        sub_1B5D23204(a1);
        bzero(a1, 0x5F8uLL);
        *(a1 + 104) = 0;
        *(a1 + 40) = &unk_1F2D5DF18;
        *(a1 + 48) = &unk_1F2D56850;
        *(a1 + 112) = 0;
        *(a1 + 88) = 0;
        *(a1 + 96) = a1 + 104;
        sub_1B5CDDEAC(a1 + 120);
        *(a1 + 1496) = 0u;
        *(a1 + 1512) = 0u;
        v14 = 6;
        goto LABEL_45;
    }

LABEL_51:
    v19 = __cxa_allocate_exception(0x20uLL);
    sub_1B5CE410C(&v21, "unsupported");
    sub_1B5D32AFC(v19, &v21);
    __cxa_throw(v19, &unk_1F2D56F00, sub_1B5D32BEC);
  }

  if (v13 > 6)
  {
    if (v13 == 7)
    {
      sub_1B5D23204(a1);
      bzero(a1, 0x828uLL);
      *(a1 + 40) = &unk_1F2D5D178;
      *(a1 + 48) = &unk_1F2D5D250;
      bzero((a1 + 56), 0x252uLL);
      sub_1B5D62EF8(a1 + 56);
      *(a1 + 664) = 0u;
      *(a1 + 656) = a1 + 664;
      sub_1B5CDDEAC(a1 + 680);
      *(a1 + 2056) = 0u;
      *(a1 + 2072) = 0u;
      v14 = 3;
      goto LABEL_45;
    }

    if (v13 == 8)
    {
      sub_1B5D23204(a1);
      bzero(a1, 0x608uLL);
      *(a1 + 40) = &unk_1F2D5D658;
      *(a1 + 48) = &unk_1F2D5D730;
      sub_1B5CE61C4((a1 + 64));
      *(a1 + 120) = 0;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 128) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = a1 + 120;
      sub_1B5CDDEAC(a1 + 136);
      *(a1 + 1512) = 0u;
      *(a1 + 1528) = 0u;
      v14 = 4;
      goto LABEL_45;
    }

    goto LABEL_51;
  }

  if (v13 == 5)
  {
    sub_1B5D23204(a1);
    bzero(a1, 0x3810uLL);
    sub_1B5DB9794(a1);
    v14 = 0;
  }

  else
  {
    sub_1B5D23204(a1);
    bzero(a1, 0x608uLL);
    *(a1 + 120) = 0;
    *(a1 + 40) = &unk_1F2D5DC98;
    *(a1 + 56) = &unk_1F2D56948;
    *(a1 + 64) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 48) = &unk_1F2D5DD58;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = a1 + 120;
    sub_1B5CDDEAC(a1 + 136);
    *(a1 + 1512) = 0u;
    *(a1 + 1528) = 0u;
    v14 = 5;
  }

LABEL_45:
  *(a1 + 14352) = v14;
  *&v21 = a2;
  *(&v21 + 1) = a3;
  v20 = &v21;
  return (*(&off_1F2D5EBF0 + v14))(&v20, a1);
}

void sub_1B5CE49AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_1B5CE4AC4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1B5D114C8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_1B5CE4B68(uint64_t a1, __int128 *a2, int a3, int a4)
{
  *a1 = &unk_1F2D55740;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0xFFFFFFFF00000000;
  v5 = (a1 + 40);
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *v5 = v6;
  }

  v7 = v5;
  if (*(a1 + 63) < 0)
  {
    v7 = *v5;
  }

  v8 = open_dprotected_np(v7, *(a1 + 8), 3, 0, *(a1 + 12));
  *(a1 + 32) = v8;
  if (v8 < 0)
  {
    *(a1 + 28) = *__error();
    __error();
  }

  else if (fstat(v8, &v10))
  {
    *(a1 + 28) = *__error();
  }

  else
  {
    *(a1 + 16) = v10.st_size;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1B5CE4C68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CE4C88(uint64_t a1, __int128 *a2, int a3)
{
  v4 = sub_1B5CE4B68(a1, a2, a3, 256);
  *v4 = &unk_1F2D55D20;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 1;
  *(v4 + 84) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  if (*(v4 + 24) == 1)
  {
    v5 = *(a1 + 16);
    *(a1 + 64) = v5;
    if (!v5 || ((v6 = getpagesize(), v7 = v5 / v6 * v6, v5 != v7) ? (v8 = v7 + v6) : (v8 = v5), *(a1 + 72) = v8, v9 = mmap(0, v8, 1, 1, *(a1 + 32), 0), *(a1 + 96) = v9, v9 == -1))
    {
      *(a1 + 24) = 0;
    }
  }

  return a1;
}

const __CFString *sub_1B5CE4DD0@<X0>(const __CFString *result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v3 = result;
    CStringPtr = CFStringGetCStringPtr(result, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(v3);
      CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      operator new[]();
    }

    return sub_1B5CE410C(a2, CStringPtr);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL sub_1B5CE4F88(const void *a1, CFURLRef fileURL, CFPropertyListFormat a3, int a4, CFErrorRef *a5)
{
  v5 = 0;
  if (a1 && fileURL)
  {
    buffer[0] = 0;
    buffer[1] = 0;
    v13 = 0;
    if (a4)
    {
      CFURLCreateCopyDeletingLastPathComponent(0, fileURL);
      sub_1B5CE4EEC();
    }

    v9 = CFWriteStreamCreateWithFile(0, fileURL);
    if (v9)
    {
      if (CFWriteStreamOpen(v9))
      {
        v10 = CFPropertyListWrite(a1, v9, a3, 0, a5);
        CFWriteStreamClose(v9);
      }

      else
      {
        v10 = 0;
      }

      CFRelease(v9);
      v5 = v10 > 0;
    }

    else
    {
      v5 = 0;
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(buffer[0]);
    }
  }

  return v5;
}

void sub_1B5CE51B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1B5CE51FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_1B5CE4AC4(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    v4 = getenv("TMPDIR");
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = "/tmp";
    }

    MEMORY[0x1B8C87D40](a2, v5);
  }

  std::string::append(a2, "/nlptemp-XXXXXX");
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  return mktemp(v6);
}

void sub_1B5CE52A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

CFPropertyListRef sub_1B5CE52CC(CFURLRef fileURL, int a2, CFErrorRef *a3)
{
  v6 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], fileURL);
  if (v6)
  {
    v7 = v6;
    if (CFReadStreamOpen(v6) && (!a2 ? (v8 = 0) : (v8 = 2), v9 = CFPropertyListCreateWithStream(0, v7, 0, v8, 0, 0), CFReadStreamClose(v7), v9))
    {
      v10 = CFGetTypeID(v9);
      if (v10 != CFDictionaryGetTypeID())
      {
        if (a3)
        {
          *a3 = sub_1B5CE554C(@"Property list at URL is not a dictionary", fileURL);
        }

        CFRelease(v9);
        goto LABEL_15;
      }
    }

    else
    {
      if (!a3)
      {
LABEL_15:
        v9 = 0;
        goto LABEL_16;
      }

      v9 = 0;
      *a3 = sub_1B5CE554C(@"File at URL is not a valid property list", fileURL);
    }

LABEL_16:
    CFRelease(v7);
    return v9;
  }

  v9 = 0;
  if (a3)
  {
    *a3 = sub_1B5CE554C(@"File at URL is not readable", fileURL);
  }

  return v9;
}

void sub_1B5CE5408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE56CC(va, 0);
  _Unwind_Resume(a1);
}

CFLocaleRef sub_1B5CE543C(uint64_t a1, const void *a2)
{
  v3 = MEMORY[0x1B8C87840]();
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, v3);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 3, ComponentsFromLocaleIdentifier);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E695E6F0], a2);
  LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(0, MutableCopy);
  v7 = CFLocaleCreate(0, LocaleIdentifierFromComponents);
  if (LocaleIdentifierFromComponents)
  {
    CFRelease(LocaleIdentifierFromComponents);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (ComponentsFromLocaleIdentifier)
  {
    CFRelease(ComponentsFromLocaleIdentifier);
  }

  return v7;
}

void sub_1B5CE5508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_1B5CE5794(va, 0);
  sub_1B5CE5680(va1, 0);
  sub_1B5CE57CC(va2, 0);
  _Unwind_Resume(a1);
}

CFErrorRef sub_1B5CE554C(uint64_t a1, CFURLRef anURL)
{
  v3 = CFURLCopyPath(anURL);
  v4 = *MEMORY[0x1E695E480];
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@: %@", a1, v3);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E650], v5);
  v7 = CFErrorCreate(v4, @"com.apple.NLPUtils.ErrorDomain", 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v7;
}

void sub_1B5CE5640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  sub_1B5CE5794(va, 0);
  sub_1B5CE5794(va1, 0);
  _Unwind_Resume(a1);
}

void sub_1B5CE5680(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1B5CE56CC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1B5CE5704(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1B5CE5760(exception, a1);
  __cxa_throw(exception, off_1E7C20488, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1B5CE5760(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1B5CE5794(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1B5CE57CC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1B5CE5824()
{
  if (!dword_1EB90CD38)
  {
    v0 = sub_1B5CE5868(MEMORY[0x1E69E5300], "Program terminated with an unrecoverable error.");
    sub_1B5CE58B0(v0);
    exit(-1);
  }

  dword_1EB90CD38 = 2;
}

void *sub_1B5CE5868(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1B5CE599C(a1, __s, v4);
}

void *sub_1B5CE58B0(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_1B5CE5968()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *sub_1B5CE599C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B8C87EC0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1B5CE5B44(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1B8C87ED0](v13);
  return a1;
}

void sub_1B5CE5ADC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1B8C87ED0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1B5CE5ABCLL);
}

uint64_t sub_1B5CE5B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      sub_1B5CE5CCC(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1B5CE5CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1B5CE5CCC(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void sub_1B5CE5D7C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1B5CE5DD0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1B5CE5DD0(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_1B5CE5E20(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5CE5E78(uint64_t a1)
{
  sub_1B5CE5EB0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5CE5EB0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

std::string *sub_1B5CE5F0C(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_1B5CE60E0(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1B5CE6068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5CE6084(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1B5CE6190(exception, a1);
  __cxa_throw(exception, off_1E7C20480, MEMORY[0x1E69E5268]);
}

_BYTE *sub_1B5CE60E0(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

std::runtime_error *sub_1B5CE6190(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E5598] + 16);
  return result;
}

void *sub_1B5CE61D0(uint64_t *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v8 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
  if (!v8)
  {
    v13 = 0;
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x800000014;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:20: MARISA_MEMORY_ERROR: temp.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v9 = v8;
  sub_1B5CE74A4(v8);
  v13 = v9;
  sub_1B5CE7630(v9, a2, a3, a4);
  v10 = *a1;
  *a1 = v9;
  v13 = v10;
  return sub_1B5CE6A50(&v13);
}

void *sub_1B5CE62F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000029;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:41: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v6 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_1F2D575A0;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    v11[2] = 0x80000002CLL;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:44: MARISA_MEMORY_ERROR: temp.get() == NULL";
    __cxa_throw(v11, &unk_1F2D57578, std::exception::~exception);
  }

  v7 = v6;
  sub_1B5CE74A4(v6);
  v13 = v7;
  sub_1B5CE6F5C(v12);
  sub_1B5CE7008(v12, a2, a3);
  sub_1B5CE7B24(v13, v12);
  v8 = *a1;
  *a1 = v13;
  v13 = v8;
  sub_1B5CE6FC0(v12);
  return sub_1B5CE6A50(&v13);
}

void sub_1B5CE6464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1B5CE6A50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CE64A4(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000064;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:100: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  sub_1B5CE6A94(v6);
  sub_1B5CE6AE4(v6, a2);
  sub_1B5CE7E28(*a1, v6);
  return sub_1B5CE6AAC(v6);
}

uint64_t sub_1B5CE6574(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000006DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:109: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  return sub_1B5CE7F40(v4, a2, a3);
}

uint64_t sub_1B5CE65F8(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000073;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:115: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  return sub_1B5CE8A98(v5, a2, a3, a4);
}

void sub_1B5CE667C(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000079;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:121: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  sub_1B5CE8D94(v4, a2, a3);
}

uint64_t sub_1B5CE6700(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000007FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:127: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  return sub_1B5CE900C(v5, a2, a3, a4);
}

void sub_1B5CE6784(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:134: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  sub_1B5CE7FB0(v6, a2, a3, a4, a5);
}

void sub_1B5CE6808(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000008CLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:140: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  sub_1B5CEA29C(v6, a2, a3, a4, a5);
}

void sub_1B5CE688C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000093;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:147: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  sub_1B5CE85A4(v5, a2, a3, a4);
}

void sub_1B5CE6910(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000099;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:153: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  sub_1B5CE8704(v4, a2, a3);
}

uint64_t sub_1B5CE6994(uint64_t a1)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x1000000C3;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:195: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  return *(*a1 + 264);
}

void sub_1B5CE6A10(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5CE6A50(void *a1)
{
  if (*a1)
  {
    v2 = sub_1B5CE762C();
    MEMORY[0x1B8C880F0](v2, 0x10F0C4010279AD7);
  }

  return a1;
}

uint64_t sub_1B5CE6A94(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1B5CE6AAC(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    fclose(*a1);
  }

  return a1;
}

FILE *sub_1B5CE6AE4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = a2;
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == 1)
  {
    return fclose(result);
  }

  return result;
}

uint64_t sub_1B5CE6B14(uint64_t result, size_t __nitems)
{
  v2 = __nitems;
  v3 = result;
  __buf[128] = *MEMORY[0x1E69E9840];
  if (!*result && *(result + 8) == -1 && !*(result + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x10000004FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:79: MARISA_STATE_ERROR: !is_open()";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      bzero(__buf, 0x400uLL);
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        result = sub_1B5CE6C50(v3, __buf, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      __buf[0] = 0;
      __buf[1] = 0;
      result = sub_1B5CE6C50(result, __buf, __nitems);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5CE6C50(uint64_t result, char *__buf, size_t __nitems)
{
  v3 = __nitems;
  v4 = __buf;
  v5 = result;
  v6 = *result;
  if (!*result && *(result + 8) == -1 && !*(result + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000076;
    v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:118: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_20;
  }

  if (__nitems)
  {
    if (*(result + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        result = write(*(v5 + 8), v4, v7);
        if (result <= 0)
        {
          break;
        }

        v4 += result;
        v3 -= result;
        if (!v3)
        {
          return result;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F2D575A0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
      exception[2] = 0x900000084;
      v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:132: MARISA_IO_ERROR: size_written <= 0";
LABEL_20:
      exception[3] = v9;
      __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
    }

    if (v6)
    {
      if (fwrite(__buf, 1uLL, __nitems, v6) != __nitems)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F2D575A0;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000089;
        v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:137: MARISA_IO_ERROR: ::fwrite(data, 1, size, file_) != size";
        goto LABEL_20;
      }

      result = fflush(*v5);
      if (result)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F2D575A0;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x90000008ALL;
        v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:138: MARISA_IO_ERROR: ::fflush(file_) != 0";
        goto LABEL_20;
      }
    }

    else
    {
      result = *(result + 16);
      if (result)
      {
        result = std::ostream::write();
        if ((*(result + *(*result - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_1F2D575A0;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
          v10[2] = 0x90000008FLL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:143: MARISA_IO_ERROR: !stream_->write(static_cast<const char*>(data), static_cast<std::streamsize>(size))";
          __cxa_throw(v10, &unk_1F2D57578, std::exception::~exception);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B5CE6F5C(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = -1;
  return result;
}

uint64_t sub_1B5CE6F74(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    munmap(v2, *(a1 + 24));
  }

  v3 = *(a1 + 32);
  if (v3 != -1)
  {
    close(v3);
  }

  return a1;
}

uint64_t *sub_1B5CE6FC4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v4 = result[1];
  v3 = result[2];
  v5 = a2[2];
  result[1] = a2[1];
  result[2] = v5;
  a2[1] = v4;
  a2[2] = v3;
  v6 = result[3];
  result[3] = a2[3];
  a2[3] = v6;
  LODWORD(v6) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1B5CE7008(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x200000050;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:80: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v3 = *a1;
  v4 = a1[1];
  *a1 = a2;
  *(a1 + 1) = -1;
  *(a1 + 2) = a3;
  *(a1 + 3) = 0;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = -1;
  v9 = v5;
  return sub_1B5CE6F74(v8);
}

uint64_t sub_1B5CE70B8(uint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000059;
    v4 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:89: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (a1[2] < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x90000005ALL;
    v4 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:90: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  return sub_1B5CE7194(a1, a2);
}

uint64_t sub_1B5CE7194(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000073;
    v8 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:115: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v3 = a1[2];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000074;
    v8 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:116: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *a1 = v2 + a2;
  a1[2] = v5;
  return v2;
}

uint64_t sub_1B5CE7270(uint64_t a1)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 185) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 393) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 441) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 553) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 601) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 505) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 649) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 697) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  sub_1B5CF167C((a1 + 744));
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 3;
  *(a1 + 1080) = 0x100000000200;
  *(a1 + 1088) = 0x20000;
  sub_1B5CE6F5C(a1 + 1096);
  return a1;
}

void sub_1B5CE73A8(_Unwind_Exception *a1)
{
  v8 = v1[126];
  if (v8)
  {
    MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
  }

  sub_1B5CE6A50(v4);
  sub_1B5CEAB7C(v1 + 93);
  if (*v6)
  {
    MEMORY[0x1B8C880C0](*v6, 0x1000C8077774924);
  }

  if (*v5)
  {
    MEMORY[0x1B8C880C0](*v5, 0x1000C8077774924);
  }

  sub_1B5CE7430(v3);
  sub_1B5CE7430(v2);
  sub_1B5CE7430(v1);
  _Unwind_Resume(a1);
}

void *sub_1B5CE7430(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
  }

  v3 = a1[14];
  if (v3)
  {
    MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  v4 = a1[8];
  if (v4)
  {
    MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
  }

  if (*a1)
  {
    MEMORY[0x1B8C880C0](*a1, 0x1000C8077774924);
  }

  return a1;
}

void *sub_1B5CE74A8(void *a1)
{
  sub_1B5CE6FC0(a1 + 137);
  v2 = a1[126];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
  }

  sub_1B5CE6A50(a1 + 125);
  v3 = a1[119];
  if (v3)
  {
    MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  v4 = a1[113];
  if (v4)
  {
    MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
  }

  v5 = a1[107];
  if (v5)
  {
    MEMORY[0x1B8C880C0](v5, 0x1000C8077774924);
  }

  v6 = a1[99];
  if (v6)
  {
    MEMORY[0x1B8C880C0](v6, 0x1000C8077774924);
  }

  v7 = a1[93];
  if (v7)
  {
    MEMORY[0x1B8C880C0](v7, 0x1000C8077774924);
  }

  v8 = a1[84];
  if (v8)
  {
    MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
  }

  v9 = a1[78];
  if (v9)
  {
    MEMORY[0x1B8C880C0](v9, 0x1000C8077774924);
  }

  v10 = a1[72];
  if (v10)
  {
    MEMORY[0x1B8C880C0](v10, 0x1000C8077774924);
  }

  v11 = a1[66];
  if (v11)
  {
    MEMORY[0x1B8C880C0](v11, 0x1000C8077774924);
  }

  v12 = a1[60];
  if (v12)
  {
    MEMORY[0x1B8C880C0](v12, 0x1000C8077774924);
  }

  v13 = a1[52];
  if (v13)
  {
    MEMORY[0x1B8C880C0](v13, 0x1000C8077774924);
  }

  v14 = a1[46];
  if (v14)
  {
    MEMORY[0x1B8C880C0](v14, 0x1000C8077774924);
  }

  v15 = a1[40];
  if (v15)
  {
    MEMORY[0x1B8C880C0](v15, 0x1000C8077774924);
  }

  v16 = a1[34];
  if (v16)
  {
    MEMORY[0x1B8C880C0](v16, 0x1000C8077774924);
  }

  v17 = a1[26];
  if (v17)
  {
    MEMORY[0x1B8C880C0](v17, 0x1000C8077774924);
  }

  v18 = a1[20];
  if (v18)
  {
    MEMORY[0x1B8C880C0](v18, 0x1000C8077774924);
  }

  v19 = a1[14];
  if (v19)
  {
    MEMORY[0x1B8C880C0](v19, 0x1000C8077774924);
  }

  v20 = a1[8];
  if (v20)
  {
    MEMORY[0x1B8C880C0](v20, 0x1000C8077774924);
  }

  if (*a1)
  {
    MEMORY[0x1B8C880C0](*a1, 0x1000C8077774924);
  }

  return a1;
}

void *sub_1B5CE7630(uint64_t a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v8 = 3;
  v9 = 0x100000000200;
  v10 = 0x20000;
  sub_1B5CEAC00(&v8, a4);
  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  sub_1B5CE7270(&v8);
  sub_1B5CE76EC(&v8, a2, a3, v11);
  sub_1B5CE7A0C(a1, &v8);
  return sub_1B5CE74A8(&v8);
}

void sub_1B5CE76D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE74A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CE76EC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  memset(v35, 0, 41);
  sub_1B5CE91E0(v35, (a2[1] - *a2) >> 4);
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(&v35[0] + 1) + v10;
      v13 = (v8 + v9);
      v15 = *v13;
      v14 = v13[1];
      *v12 = v15;
      *(v12 + 8) = v14;
      *(v12 + 12) = 1065353216;
      ++v11;
      v8 = *a2;
      v10 += 24;
      v9 += 16;
    }

    while (v11 < (a2[1] - *a2) >> 4);
  }

  v33 = 0u;
  memset(v34, 0, 25);
  sub_1B5CE9270(a1, v35, &v33, a4, 1);
  memset(v32, 0, 41);
  sub_1B5CE9454(v32, v34[1]);
  v16 = *(&v32[1] + 1);
  if (*(&v32[1] + 1))
  {
    v17 = 0;
    v18 = *(&v33 + 1);
    v19 = (*(&v32[0] + 1) + 4);
    do
    {
      *(v19 - 1) = *(v18 + 4 * v17);
      *v19 = v17++;
      v19 += 2;
    }

    while (v16 != v17);
  }

  v20 = v33;
  v33 = 0u;
  memset(v34, 0, 25);
  if (v20)
  {
    MEMORY[0x1B8C880C0](v20, 0x1000C8077774924);
    v16 = *(&v32[1] + 1);
  }

  v21 = 126 - 2 * __clz(v16);
  if (v16)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_1B5CEEA58(*(&v32[0] + 1), (*(&v32[0] + 1) + 8 * v16), &v36, v22, 1);
  if (*(&v32[1] + 1))
  {
    v23 = 0;
    v24 = 0;
    do
    {
      for (i = *(&v32[0] + 1); ; i = *(&v32[0] + 1))
      {
        v26 = *(i + 8 * v23);
        if (v24 >= v26)
        {
          break;
        }

        sub_1B5CE94C8((a1 + 208), 0);
        ++v24;
      }

      if (v24 == v26)
      {
        sub_1B5CE94C8((a1 + 208), 1);
        ++v24;
      }

      ++v23;
    }

    while (v23 < *(&v32[1] + 1));
  }

  else
  {
    v24 = 0;
  }

  while (v24 < *(a1 + 648))
  {
    sub_1B5CE94C8((a1 + 208), 0);
    ++v24;
  }

  sub_1B5CE94C8((a1 + 208), 0);
  sub_1B5CE95C0(a1 + 208, 0, 1);
  if (a3)
  {
    sub_1B5CE96E0(a3, (a2[1] - *a2) >> 4);
    if (a2[1] != *a2)
    {
      v27 = 0;
      v28 = 0;
      v29 = *(&v32[0] + 1);
      do
      {
        v30 = sub_1B5CF2884(a1 + 208, *(v29 + v27));
        v29 = *(&v32[0] + 1);
        *(*a3 + 8 * *(*(&v32[0] + 1) + v27 + 4)) = v30;
        ++v28;
        v27 += 8;
      }

      while (v28 < (a2[1] - *a2) >> 4);
    }
  }

  if (*&v32[0])
  {
    MEMORY[0x1B8C880C0](*&v32[0], 0x1000C8077774924);
  }

  if (v33)
  {
    MEMORY[0x1B8C880C0](v33, 0x1000C8077774924);
  }

  result = *&v35[0];
  if (*&v35[0])
  {
    return MEMORY[0x1B8C880C0](*&v35[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CE79AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a15)
  {
    MEMORY[0x1B8C880C0](a15, v21);
  }

  if (a21)
  {
    MEMORY[0x1B8C880C0](a21, v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1B5CE7A0C(uint64_t a1, uint64_t a2)
{
  sub_1B5CE9114(a1, a2);
  sub_1B5CE9114((a1 + 208), (a2 + 208));
  sub_1B5CE9114((a1 + 416), (a2 + 416));
  sub_1B5CE918C((a1 + 624), (a2 + 624));
  sub_1B5CE918C((a1 + 672), (a2 + 672));
  v4 = *(a1 + 720);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = v4;
  LODWORD(v4) = *(a1 + 728);
  *(a1 + 728) = *(a2 + 728);
  *(a2 + 728) = v4;
  v5 = *(a1 + 736);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 736) = v5;
  sub_1B5CF1CD4((a1 + 744), (a2 + 744));
  v6 = *(a1 + 1000);
  *(a1 + 1000) = *(a2 + 1000);
  *(a2 + 1000) = v6;
  sub_1B5CE918C((a1 + 1008), (a2 + 1008));
  v7 = *(a1 + 1056);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1056) = v7;
  v8 = *(a1 + 1064);
  *(a1 + 1064) = *(a2 + 1064);
  *(a2 + 1064) = v8;
  v9 = *(a1 + 1072);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = v9;
  v10 = *(a1 + 1080);
  *(a1 + 1080) = *(a2 + 1080);
  *(a2 + 1080) = v10;
  LODWORD(v9) = *(a1 + 1088);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = v9;

  return sub_1B5CE6FC4((a1 + 1096), (a2 + 1096));
}

void *sub_1B5CE7B24(uint64_t a1, uint64_t *a2)
{
  sub_1B5CE7BAC(v5, a2);
  sub_1B5CE7270(v5);
  sub_1B5CE7C6C(v5, a2);
  sub_1B5CE6FC4(v6, a2);
  sub_1B5CE7A0C(a1, v5);
  return sub_1B5CE74A8(v5);
}

_BYTE *sub_1B5CE7BAC(uint64_t a1, uint64_t *a2)
{
  result = sub_1B5CE7194(a2, 0x10uLL);
  if (*result != 87)
  {
    goto LABEL_7;
  }

  v3 = 1u;
  do
  {
    if (v3 == 16)
    {
      return result;
    }

    v4 = result[v3];
    v5 = aWeLoveMarisa[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA00000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/header.h:21: MARISA_FORMAT_ERROR: !test_header(ptr)";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  return result;
}

double sub_1B5CE7C6C(uint64_t a1, uint64_t *a2)
{
  sub_1B5CE9F54(a1, a2);
  sub_1B5CE9F54((a1 + 208), a2);
  sub_1B5CE9F54((a1 + 416), a2);
  sub_1B5CEA020((a1 + 624), a2);
  sub_1B5CEA0E0((a1 + 672), a2);
  sub_1B5CF1D14(a1 + 744, a2);
  if (*(a1 + 472) && !*(a1 + 768))
  {
    v4 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v5 = v4;
    if (v4)
    {
      sub_1B5CE7270(v4);
    }

    v10 = *(a1 + 1000);
    *(a1 + 1000) = v5;
    sub_1B5CE6A50(&v10);
    v6 = *(a1 + 1000);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F2D575A0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x800000249;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:585: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
    }

    sub_1B5CE7C6C(v6, a2);
  }

  sub_1B5CEA1DC((a1 + 1008), a2);
  *(a1 + 1056) = *(a1 + 1032) - 1;
  *(a1 + 1064) = *sub_1B5CE7194(a2, 4uLL);
  v7 = *sub_1B5CE7194(a2, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  sub_1B5CEAC00(&v10, v7);
  *(a1 + 1072) = v10;
  result = v11;
  *(a1 + 1080) = v11;
  *(a1 + 1088) = v12;
  return result;
}

uint64_t sub_1B5CE7E28(uint64_t a1, uint64_t a2)
{
  sub_1B5CE6C50(a2, "We love Marisa.", 0x10uLL);

  return sub_1B5CE7E78(a1, a2);
}

uint64_t sub_1B5CE7E78(uint64_t a1, uint64_t a2)
{
  sub_1B5CEBCFC(a1, a2);
  sub_1B5CEBCFC(a1 + 208, a2);
  sub_1B5CEBCFC(a1 + 416, a2);
  sub_1B5CF1594(a1 + 624, a2);
  sub_1B5CEC150(a1 + 672, a2);
  sub_1B5CF1E50(a1 + 744, a2);
  v4 = *(a1 + 1000);
  if (v4)
  {
    sub_1B5CE7E78(v4, a2);
  }

  sub_1B5CEBEBC(a1 + 1008, a2);
  __buf = *(a1 + 1064);
  sub_1B5CE6C50(a2, &__buf, 4uLL);
  v6 = *(a1 + 1084) | *(a1 + 1072) | *(a1 + 1088);
  return sub_1B5CE6C50(a2, &v6, 4uLL);
}

uint64_t sub_1B5CE7F40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 16);
  }

  if (v3)
  {
    return 0;
  }

  v5 = *a2;
  if (((*(*(a1 + 224) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  *a3 = sub_1B5CF2884(a1 + 208, v5);
  return 1;
}

void sub_1B5CE7FB0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  memset(&__p, 0, sizeof(__p));
  while (v13 < a3)
  {
    if ((sub_1B5CE80A0(a1, a2, a3, &v13, &v14, &__p) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__r.__words[1];
  }

  sub_1B5CE8330(a1, v14, &__p, &v12, a4, (v10 - a3) & ~((v10 - a3) >> 31), a5);
LABEL_8:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5CE8080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CE80A0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, std::string *this)
{
  v12 = (*(a2 + *a4) ^ (32 * *a5) ^ *a5) & *(a1 + 1056);
  v13 = (*(a1 + 1024) + 12 * v12);
  if (*a5 != *v13)
  {
    v15 = sub_1B5CF2980(a1, *a5);
    v16 = *(a1 + 16);
    if ((*(v16 + (((v15 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 + 1)))
    {
      v17 = v15 - *a5;
      *a5 = v17;
      v18 = v15 + 2;
      v19 = 0xFFFFFFFFLL;
      while (1)
      {
        if ((*(*(a1 + 432) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
        {
          if (v19 == 0xFFFFFFFFLL)
          {
            v19 = sub_1B5CF2884(a1 + 416, v17);
            v17 = *a5;
          }

          else
          {
            ++v19;
          }

          v21 = *a4;
          v22 = *(a1 + 720);
          v23 = v22 * v19;
          v24 = (v22 * v19) & 0x3F;
          v25 = v24 + v22;
          v26 = (*(a1 + 688) + 8 * ((v22 * v19) >> 6));
          v27 = *v26;
          if (v25 > 0x40)
          {
            v28 = ((2 * v26[1]) << ~v23) | (v27 >> v23);
          }

          else
          {
            v28 = v27 >> v24;
          }

          v29 = *(*(a1 + 640) + v17) | ((*(a1 + 728) & v28) << 8);
          v30 = *(a1 + 1000);
          if (v30)
          {
            if (sub_1B5CEA950(v30, a2, a3, a4, v29, this))
            {
              return 1;
            }
          }

          else if (sub_1B5CF1FB4((a1 + 744), a2, a3, a4, v29, this))
          {
            return 1;
          }

          if (*a4 != v21)
          {
            return 0;
          }

          v17 = *a5;
          v16 = *(a1 + 16);
        }

        else
        {
          v20 = *(*(a1 + 640) + v17);
          if (v20 == *(a2 + *a4))
          {
            std::string::push_back(this, v20);
            ++*a4;
            return 1;
          }
        }

        *a5 = ++v17;
        v31 = *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18;
        ++v18;
        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v14 = v13[2];
  if (v14 > 0xFFFFFEFF)
  {
    std::string::push_back(this, v14);
    ++*a4;
    goto LABEL_25;
  }

  v32 = *(a1 + 1000);
  if (v32)
  {
    if (sub_1B5CEA950(v32, a2, a3, a4, v14, this))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!sub_1B5CF1FB4((a1 + 744), a2, a3, a4, v14, this))
  {
    return 0;
  }

LABEL_25:
  *a5 = *(*(a1 + 1024) + 12 * v12 + 4);
  return 1;
}

unint64_t sub_1B5CE8330(unint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, int a6, uint64_t a7)
{
  if ((*a4 & 1) == 0)
  {
    v11 = result;
    if ((a7 & 0x80000000) != 0 || a6 <= a7)
    {
      if (((*(*(result + 224) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) == 0 || ((v12 = sub_1B5CF2884(result + 208, a2), v13 = *(a3 + 23), v13 >= 0) ? (v14 = a3) : (v14 = *a3), v13 >= 0 ? (v15 = *(a3 + 23)) : (v15 = *(a3 + 8)), result = sub_1B5CE86A4(a5, v12, v14, v15, a4), (*a4 & 1) == 0))
      {
        v16 = *(a3 + 23) >= 0 ? *(a3 + 23) : *(a3 + 8);
        result = sub_1B5CF2980(v11, a2);
        if ((*a4 & 1) == 0)
        {
          v17 = result;
          v18 = -a2;
          v19 = 0xFFFFFFFFLL;
          do
          {
            if (((*(*(v11 + 16) + (((v17 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v17 + 1)) & 1) == 0)
            {
              break;
            }

            if ((*(*(v11 + 432) + (((v18 + v17) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v18 + v17)))
            {
              if (v19 == 0xFFFFFFFFLL)
              {
                v19 = sub_1B5CF2884(v11 + 416, v18 + v17);
              }

              else
              {
                ++v19;
              }

              v20 = *(v11 + 720);
              v21 = v20 * v19;
              v22 = (v20 * v19) & 0x3F;
              v23 = v22 + v20;
              v24 = (*(v11 + 688) + 8 * ((v20 * v19) >> 6));
              v25 = *v24;
              v26 = v23 > 0x40 ? ((2 * v24[1]) << ~v21) | (v25 >> v21) : v25 >> v22;
              v27 = *(*(v11 + 640) + v18 + v17) | ((*(v11 + 728) & v26) << 8);
              v28 = *(v11 + 1000);
              if (v28)
              {
                sub_1B5CEA5A0(v28, a3, v27);
              }

              else
              {
                sub_1B5CF1E90((v11 + 744), a3, v27);
              }
            }

            else
            {
              std::string::push_back(a3, *(*(v11 + 640) + v18 + v17));
            }

            v29 = *(a3 + 23);
            if ((v29 & 0x80u) != 0)
            {
              v29 = *(a3 + 8);
            }

            sub_1B5CE8330(v11, v18 + v17, a3, a4, a5, (v29 - v16 + a6), a7);
            v30 = *(a3 + 23);
            v31 = v30;
            v32 = a3 + v30;
            if (v31 >= 0)
            {
              v33 = a3;
            }

            else
            {
              v32 = *a3 + *(a3 + 8);
              v33 = *a3;
            }

            result = std::string::erase(a3, v16, v32 - (v16 + v33));
            ++v17;
          }

          while (*a4 != 1);
        }
      }
    }
  }

  return result;
}

void sub_1B5CE85A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    v8 = *(a2 + 31);
    v10 = *(a2 + 16);
    v9 = *(a2 + 31);
LABEL_8:
    v20 = 0;
    v12 = *(a2 + 8) + v10;
    v13 = a2 + 8 + v8;
    if (v9 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v9 >= 0)
    {
      v15 = a2 + 8;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    sub_1B5CEC1C8(&__p, v14, v14, v15, v15, v14 - v15);
    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = v18;
    }

    sub_1B5CE8330(a1, *a2, &__p, &v20, a3, v16, a4);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v8 = *(a2 + 31);
  v9 = v8;
  v10 = *(a2 + 16);
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(a2 + 31);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  if (v11 <= a4)
  {
    goto LABEL_8;
  }
}

void sub_1B5CE8688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CE86A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_1B5CEC274();
  }

  return (*(*v5 + 48))(v5, &v7, v8, a5);
}

void sub_1B5CE8704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = 0;
  v5 = *(a2 + 31);
  v6 = v5;
  v7 = *(a2 + 16);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    v35 = *a2;
    p_p = &__p;
    if (v6 < 0)
    {
      sub_1B5CE4AC4(&__p, *(a2 + 8), v7);
    }

    else
    {
      __p = *(a2 + 8);
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      v32 = *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1);
      v33 = --__p.__r_.__value_.__l.__size_;
    }

    else
    {
      v32 = __p.__r_.__value_.__s.__data_[SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1];
      v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
      *(&__p.__r_.__value_.__s + 23) = v33 & 0x7F;
    }

    p_p->__r_.__value_.__s.__data_[v33] = 0;
    sub_1B5CE8A44(a3, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = sub_1B5CF2980(a1, *a2);
    v11 = v10 - *a2;
    v12 = 0xFFFFFFFFLL;
    do
    {
      ++v10;
      if (((*(*(a1 + 16) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        break;
      }

      memset(&v34, 0, sizeof(v34));
      if ((*(*(a1 + 432) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        if (v12 == 0xFFFFFFFFLL)
        {
          v12 = sub_1B5CF2884(a1 + 416, v11);
        }

        else
        {
          ++v12;
        }

        v13 = *(a1 + 720);
        v14 = v13 * v12;
        v15 = (v13 * v12) & 0x3F;
        v16 = v15 + v13;
        v17 = (*(a1 + 688) + 8 * ((v13 * v12) >> 6));
        v18 = *v17;
        if (v16 > 0x40)
        {
          v19 = ((2 * v17[1]) << ~v14) | (v18 >> v14);
        }

        else
        {
          v19 = v18 >> v15;
        }

        v20 = *(*(a1 + 640) + v11) | ((*(a1 + 728) & v19) << 8);
        v21 = *(a1 + 1000);
        if (v21)
        {
          sub_1B5CEA5A0(v21, &v34, v20);
        }

        else
        {
          sub_1B5CF1E90((a1 + 744), &v34, v20);
        }

        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v34;
        }

        else
        {
          v23 = v34.__r_.__value_.__r.__words[0];
        }

        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v34.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v24 = (v23 + size - 1);
          if (v24 > v23)
          {
            v25 = &v23->__r_.__value_.__s.__data_[1];
            do
            {
              v26 = *(v25 - 1);
              *(v25 - 1) = v24->__r_.__value_.__s.__data_[0];
              v24->__r_.__value_.__s.__data_[0] = v26;
              v24 = (v24 - 1);
            }

            while (v25++ < v24);
          }
        }
      }

      else
      {
        std::string::push_back(&v34, *(*(a1 + 640) + v11));
      }

      __p = v34;
      memset(&v34, 0, sizeof(v34));
      v35 = v11;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v30 = __p.__r_.__value_.__r.__words[0];
        v28 = *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1);
        v29 = --__p.__r_.__value_.__l.__size_;
      }

      else
      {
        v28 = *(&v35 + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 7);
        v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
        *(&__p.__r_.__value_.__s + 23) = v29 & 0x7F;
        v30 = &__p;
      }

      v30->__r_.__value_.__s.__data_[v29] = 0;
      sub_1B5CE8A44(a3, v28);
      v31 = v37;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      ++v11;
    }

    while ((v31 & 1) == 0);
  }
}

void sub_1B5CE89FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CE8A44(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1B5CEC274();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1B5CE8A98(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = 0;
  v10 = 0;
  while (v9 < a3)
  {
    if ((sub_1B5CE8B38(a1, a2, a3, &v9, &v10) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*(a1 + 224) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
  {
    *a4 = sub_1B5CF2884(a1 + 208, v10);
    return 1;
  }

  return 0;
}

uint64_t sub_1B5CE8B38(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v10 = (*(a2 + *a4) ^ (32 * *a5) ^ *a5) & *(a1 + 1056);
  v11 = (*(a1 + 1024) + 12 * v10);
  if (*a5 != *v11)
  {
    v13 = sub_1B5CF2980(a1, *a5);
    v14 = *(a1 + 16);
    if ((*(v14 + (((v13 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v13 + 1)))
    {
      v15 = v13 - *a5;
      *a5 = v15;
      v16 = v13 + 2;
      v17 = 0xFFFFFFFFLL;
      while (1)
      {
        if ((*(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15))
        {
          if (v17 == 0xFFFFFFFFLL)
          {
            v17 = sub_1B5CF2884(a1 + 416, v15);
            v15 = *a5;
          }

          else
          {
            ++v17;
          }

          v18 = *a4;
          v19 = *(a1 + 720);
          v20 = v19 * v17;
          v21 = (v19 * v17) & 0x3F;
          v22 = v21 + v19;
          v23 = (*(a1 + 688) + 8 * ((v19 * v17) >> 6));
          v24 = *v23;
          if (v22 > 0x40)
          {
            v25 = ((2 * v23[1]) << ~v20) | (v24 >> v20);
          }

          else
          {
            v25 = v24 >> v21;
          }

          v26 = *(*(a1 + 640) + v15) | ((*(a1 + 728) & v25) << 8);
          v27 = *(a1 + 1000);
          if (v27)
          {
            if (sub_1B5CEA718(v27, a2, a3, a4, v26))
            {
              return 1;
            }
          }

          else if (sub_1B5CF1F20((a1 + 744), a2, a3, a4, v26))
          {
            return 1;
          }

          if (*a4 != v18)
          {
            return 0;
          }

          v15 = *a5;
          v14 = *(a1 + 16);
        }

        else if (*(*(a1 + 640) + v15) == *(a2 + *a4))
        {
          ++*a4;
          return 1;
        }

        *a5 = ++v15;
        v28 = *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16;
        ++v16;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v12 = v11[2];
  if (v12 > 0xFFFFFEFF)
  {
    ++*a4;
    goto LABEL_25;
  }

  v29 = *(a1 + 1000);
  if (v29)
  {
    if (sub_1B5CEA718(v29, a2, a3, a4, v12))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((sub_1B5CF1F20((a1 + 744), a2, a3, a4, v12) & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  *a5 = *(*(a1 + 1024) + 12 * v10 + 4);
  return 1;
}

void sub_1B5CE8D94(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  if (*(a1 + 264) <= a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x3000000C6;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:198: MARISA_BOUND_ERROR: payload_id >= size()";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v5 = sub_1B5CF2BE4((a1 + 208), a2);
  if (v5)
  {
    v6 = v5;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    while (1)
    {
      if ((*(*(a1 + 432) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
      {
        if (*(a3 + 23) >= 0)
        {
          v7 = *(a3 + 23);
        }

        else
        {
          v7 = *(a3 + 8);
        }

        v8 = *(*(a1 + 640) + v6);
        v9 = sub_1B5CF2884(a1 + 416, v6);
        v10 = *(a1 + 720);
        v11 = v10 * v9;
        v12 = (v10 * v9) & 0x3F;
        v13 = v12 + v10;
        v14 = (*(a1 + 688) + 8 * ((v10 * v9) >> 6));
        v15 = *v14;
        if (v13 > 0x40)
        {
          v16 = ((2 * v14[1]) << ~v11) | (v15 >> v11);
        }

        else
        {
          v16 = v15 >> v12;
        }

        v17 = v8 | ((*(a1 + 728) & v16) << 8);
        v18 = *(a1 + 1000);
        if (v18)
        {
          sub_1B5CEA5A0(v18, a3, v17);
        }

        else
        {
          sub_1B5CF1E90((a1 + 744), a3, v17);
        }

        v19 = *(a3 + 23);
        v20 = v19 < 0;
        if (v19 >= 0)
        {
          v21 = a3;
        }

        else
        {
          v21 = *a3;
        }

        if (v20)
        {
          v22 = *(a3 + 8);
        }

        else
        {
          v22 = *(a3 + 23);
        }

        if (v7 != v22)
        {
          v23 = v7 + v21;
          v24 = (v21 + v22 - 1);
          if (v24 > v23)
          {
            v25 = v23 + 1;
            do
            {
              v26 = *(v25 - 1);
              *(v25 - 1) = *v24;
              *v24-- = v26;
              v27 = v25++ >= v24;
            }

            while (!v27);
          }
        }
      }

      else
      {
        std::string::push_back(a3, *(*(a1 + 640) + v6));
      }

      if (v6 <= *(a1 + 1064))
      {
        break;
      }

      v6 = sub_1B5CF2BE4(a1, v6) + ~v6;
    }

    v28 = *(a3 + 23);
    v29 = v28 < 0;
    if (v28 >= 0)
    {
      v30 = a3;
    }

    else
    {
      v30 = *a3;
    }

    if (v29)
    {
      v31 = *(a3 + 8);
    }

    else
    {
      v31 = *(a3 + 23);
    }

    v32 = (v30 + v31 - 1);
    if (v31)
    {
      v33 = v32 > v30;
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      v34 = v30 + 1;
      do
      {
        v35 = *(v34 - 1);
        *(v34 - 1) = *v32;
        *v32-- = v35;
        v27 = v34++ >= v32;
      }

      while (!v27);
    }
  }

  else
  {
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void sub_1B5CE8FEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CE900C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = result;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  if ((**(result + 224) & 1) == 0 || (v8 = sub_1B5CF2884(result + 208, 0), result = sub_1B5CE86A4(a4, v8, a2, 0, &v12), (v12 & 1) == 0))
  {
    if (a3)
    {
      result = sub_1B5CE8B38(v7, a2, a3, &v10, &v11);
      if (result)
      {
        do
        {
          if ((*(*(v7 + 224) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
          {
            v9 = sub_1B5CF2884(v7 + 208, v11);
            result = sub_1B5CE86A4(a4, v9, a2, v10, &v12);
            if (v12)
            {
              break;
            }
          }

          if (v10 >= a3)
          {
            break;
          }

          result = sub_1B5CE8B38(v7, a2, a3, &v10, &v11);
        }

        while ((result & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t *sub_1B5CE9114(uint64_t *a1, uint64_t *a2)
{
  sub_1B5CE918C(a1, a2);
  v4 = a1[6];
  a1[6] = a2[6];
  a2[6] = v4;
  v5 = a1[7];
  a1[7] = a2[7];
  a2[7] = v5;
  sub_1B5CE918C(a1 + 8, a2 + 8);
  sub_1B5CE918C(a1 + 14, a2 + 14);

  return sub_1B5CE918C(a1 + 20, a2 + 20);
}

uint64_t *sub_1B5CE918C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  v5 = result[3];
  v6 = a2[3];
  result[2] = a2[2];
  result[3] = v6;
  a2[2] = v4;
  a2[3] = v5;
  v7 = result[4];
  result[4] = a2[4];
  a2[4] = v7;
  LOBYTE(v7) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

uint64_t *sub_1B5CE91E0(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_1B5CEC2C0(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 24 * v6;
    do
    {
      v9 = v3[1] + v8;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v8 += 24;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t sub_1B5CE9270(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  sub_1B5CEC378(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (a2[3])
  {
    sub_1B5CE9710(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_1B5CEAC00(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_1B5CEAC00(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  sub_1B5CE95C0(a1 + 416, 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  sub_1B5CECADC((a1 + 672), v18);
  sub_1B5CE9E4C(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x1B8C880C0](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CE9428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5CE9454(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 60)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    sub_1B5CEAF80(a1, a2);
  }

  v6 = a1[3];
  if (v2 > v6)
  {
    bzero((a1[1] + 8 * v6), 8 * (v2 - v6));
  }

  a1[3] = v2;
}

uint64_t *sub_1B5CE94C8(uint64_t *result, int a2)
{
  v2 = result[6];
  if (v2 == 0xFFFFFFFF)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0x70000003ALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h:58: MARISA_SIZE_ERROR: size_ == MARISA_UINT32_MAX";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v4 = result;
  v5 = result[3];
  if (v2 == v5 << 6)
  {
    v7 = 0;
    result = sub_1B5CEAEB0(result, v5 + 1, &v7);
    v2 = v4[6];
  }

  if (a2)
  {
    *(v4[1] + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    ++v4[7];
  }

  v4[6] = v2 + 1;
  return result;
}

uint64_t sub_1B5CE95C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v8, 0, 41);
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v8[3] = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_1B5CF2D50(v8, a1, a2, a3);
  sub_1B5CEB018(a1);
  v4 = v8[0];
  v8[0] = *a1;
  *a1 = v4;
  v5 = *&v8[1];
  *&v8[1] = *(a1 + 16);
  *(a1 + 16) = v5;
  v6 = *(&v8[1] + 8);
  *(&v8[1] + 8) = *(a1 + 24);
  *(a1 + 24) = v6;
  LOBYTE(v5) = BYTE8(v8[2]);
  BYTE8(v8[2]) = *(a1 + 40);
  *(a1 + 40) = v5;
  sub_1B5CE9114(a1, v8);
  if (v13)
  {
    MEMORY[0x1B8C880C0](v13, 0x1000C8077774924);
  }

  if (v11)
  {
    MEMORY[0x1B8C880C0](v11, 0x1000C8077774924);
  }

  if (v9)
  {
    MEMORY[0x1B8C880C0](v9, 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x1B8C880C0](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CE96E0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_1B5CF0460(a1, a2 - v2);
  }
}

uint64_t sub_1B5CE9710(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    sub_1B5CE9990(&v26, a2[3]);
    v9 = a2[3];
    if (v9)
    {
      v10 = (*(&v26 + 1) + 8);
      v11 = (a2[1] + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 + v13 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    sub_1B5CF16B0((a1 + 744), &v26, a3, *(a4 + 12));
    result = v26;
    if (v26)
    {
      return MEMORY[0x1B8C880C0]();
    }
  }

  else
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    sub_1B5CE91E0(&v26, a2[3]);
    if (a2[3])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(&v26 + 1) + v16;
        v19 = a2[1] + v16;
        v20 = *(v19 + 8);
        *v18 = *v19 + v20;
        *(v18 + 8) = v20;
        *(v18 + 12) = *(v19 + 12);
        ++v17;
        v16 += 24;
      }

      while (v17 < a2[3]);
    }

    v21 = *a2;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 25) = 0u;
    if (v21)
    {
      MEMORY[0x1B8C880C0](v21, 0x1000C8077774924);
    }

    v22 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v23 = v22;
    if (v22)
    {
      sub_1B5CE7270(v22);
    }

    v28 = *(a1 + 1000);
    *(a1 + 1000) = v23;
    sub_1B5CE6A50(&v28);
    v24 = *(a1 + 1000);
    if (!v24)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F2D575A0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001EBLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:491: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
    }

    sub_1B5CE9A10(v24, &v26, a3, a4, a5 + 1);
    result = v26;
    if (v26)
    {
      return MEMORY[0x1B8C880C0]();
    }
  }

  return result;
}

void sub_1B5CE993C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1B8C880E0](v9, MEMORY[0x1E69E5398]);
  if (a9)
  {
    MEMORY[0x1B8C880C0]();
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1B5CE9990(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 59)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_1B5CF0590(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 16 * v6;
    do
    {
      v9 = (v3[1] + v8);
      *v9 = 0;
      v9[1] = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t sub_1B5CE9A10(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  sub_1B5CF0634(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (*(a2 + 24))
  {
    sub_1B5CE9BF4(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_1B5CEAC00(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_1B5CEAC00(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  sub_1B5CE95C0(a1 + 416, 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  sub_1B5CECADC((a1 + 672), v18);
  sub_1B5CE9E4C(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x1B8C880C0](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CE9BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CE9BF4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    memset(v20, 0, 41);
    sub_1B5CE9990(v20, *(a2 + 24));
    v9 = *(a2 + 24);
    if (v9)
    {
      v10 = (*(&v20[0] + 1) + 8);
      v11 = (*(a2 + 8) + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    sub_1B5CF16B0((a1 + 744), v20, a3, *(a4 + 12));
    result = *&v20[0];
    if (*&v20[0])
    {
      return MEMORY[0x1B8C880C0](*&v20[0], 0x1000C8077774924);
    }
  }

  else
  {
    v16 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v17 = v16;
    if (v16)
    {
      sub_1B5CE7270(v16);
    }

    *&v20[0] = *(a1 + 1000);
    *(a1 + 1000) = v17;
    sub_1B5CE6A50(v20);
    v18 = *(a1 + 1000);
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F2D575A0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001FDLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:509: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
    }

    return sub_1B5CE9A10(v18, a2, a3, a4, a5 + 1);
  }

  return result;
}

uint64_t *sub_1B5CE9DB8(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_1B5CF1478(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 12 * v6;
    do
    {
      v9 = v3[1] + v8;
      *v9 = 0;
      *(v9 + 8) = 0x800000;
      v8 += 12;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t sub_1B5CE9E4C(uint64_t result)
{
  v1 = *(result + 1032);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      v5 = *(v2 + 1016) + v3;
      v6 = *(v5 + 4);
      if (v6)
      {
        *(v5 + 8) = *(*(v2 + 632) + v6);
        v7 = *(v2 + 1016);
        if ((*(*(v2 + 432) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6))
        {
          result = sub_1B5CF2884(v2 + 416, v6);
          v8 = *(v2 + 720);
          v9 = v8 * result;
          v10 = (v8 * result) & 0x3F;
          v11 = v10 + v8;
          v12 = (*(v2 + 688) + 8 * ((v8 * result) >> 6));
          v13 = *v12;
          if (v11 > 0x40)
          {
            v14 = ((2 * v12[1]) << ~v9) | (v13 >> v9);
          }

          else
          {
            v14 = v13 >> v10;
          }

          v15 = (*(v2 + 728) & v14) << 8;
        }

        else
        {
          v15 = -256;
        }

        *(v7 + v3 + 8) = *(v7 + v3 + 8) | v15;
        v1 = *(v2 + 1032);
      }

      else
      {
        *v5 = -1;
      }

      v3 += 12;
    }
  }

  return result;
}

uint64_t sub_1B5CE9F54(uint64_t *a1, uint64_t *a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_1B5CEB0B0(v4, a2);
  sub_1B5CE9114(a1, v4);
  if (v9)
  {
    MEMORY[0x1B8C880C0](v9, 0x1000C8077774924);
  }

  if (v7)
  {
    MEMORY[0x1B8C880C0](v7, 0x1000C8077774924);
  }

  if (v5)
  {
    MEMORY[0x1B8C880C0](v5, 0x1000C8077774924);
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    return MEMORY[0x1B8C880C0](*&v4[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_1B5CEA020(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_1B5CF1520(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CEA0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CEA0E0(__int128 *a1, uint64_t *a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_1B5CEB9BC(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CEA1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CEA1DC(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_1B5CEB61C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CEA274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5CEA29C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*a4 == 0xFFFFFFFFLL)
  {
    MEMORY[0xFFFFFFFF] = 0xFFFFFFFFLL;
    if (*(a4 + 31) < 0)
    {
      v9 = *(a4 + 8);
      v10 = *(a4 + 16);

      sub_1B5CE4AC4(0x100000007, v9, v10);
    }

    else
    {
      MEMORY[0x100000007] = *(a4 + 8);
      MEMORY[0x100000017] = *(a4 + 24);
    }

    return;
  }

  v27 = *a4;
  if (*(a4 + 31) < 0)
  {
    sub_1B5CE4AC4(&__p, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __p = *(a4 + 8);
  }

  v26 = 0;
  if (!a3)
  {
LABEL_20:
    *a5 = v27;
    v14 = (a5 + 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1B5CE4AC4(v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *v14 = __p;
    }

    goto LABEL_46;
  }

  v11 = 0;
  while ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_23;
    }

    v26 = v11 + 1;
    if (*(a2 + v11) != *(&v27 + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 7))
    {
LABEL_27:
      *a5 = 0xFFFFFFFFLL;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
      goto LABEL_46;
    }

    v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
    --*(&__p.__r_.__value_.__s + 23);
    ++v11;
    p_p = &__p;
LABEL_19:
    p_p->__r_.__value_.__s.__data_[v12] = 0;
    if (v11 >= a3)
    {
      goto LABEL_20;
    }
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    v26 = v11 + 1;
    p_p = __p.__r_.__value_.__r.__words[0];
    if (*(a2 + v11) != *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1))
    {
      goto LABEL_27;
    }

    v12 = --__p.__r_.__value_.__l.__size_;
    ++v11;
    goto LABEL_19;
  }

LABEL_23:
  memset(&__str, 0, sizeof(__str));
  while (v26 < a3)
  {
    if ((sub_1B5CE80A0(a1, a2, a3, &v26, &v27, &__str) & 1) == 0)
    {
      *a5 = 0xFFFFFFFFLL;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
      goto LABEL_44;
    }
  }

  std::string::basic_string(&v24, &__str, v26 - v11, 0xFFFFFFFFFFFFFFFFLL, &v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v24;
  v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  size = v24.__r_.__value_.__l.__size_;
  v16 = v24.__r_.__value_.__r.__words[0];
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = (v16 + size - 1);
  if (size)
  {
    v19 = v18 > v16;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = &v16->__r_.__value_.__s.__data_[1];
    do
    {
      v21 = *(v20 - 1);
      *(v20 - 1) = v18->__r_.__value_.__s.__data_[0];
      v18->__r_.__value_.__s.__data_[0] = v21;
      v18 = (v18 - 1);
    }

    while (v20++ < v18);
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  *a5 = v27;
  v23 = (a5 + 1);
  if (v15 < 0)
  {
    sub_1B5CE4AC4(v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *v23 = __p;
  }

LABEL_44:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5CEA564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5CEA5A0(uint64_t a1, std::string *a2, unint64_t a3)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a1 + 1056) & a3;
      v7 = *(a1 + 1024) + 12 * v6;
      if (a3 != *(v7 + 4))
      {
        break;
      }

      v8 = *(v7 + 8);
      if (v8 <= 0xFFFFFEFF)
      {
        v18 = *(a1 + 1000);
        if (v18)
        {
          sub_1B5CEA5A0(v18, a2, v8);
        }

        else
        {
          sub_1B5CF1E90((a1 + 744), a2, v8);
        }
      }

      else
      {
        std::string::push_back(a2, v8);
      }

      a3 = *(*(a1 + 1024) + 12 * v6);
      if (!a3)
      {
        return;
      }
    }

    v9 = *(*(a1 + 640) + a3);
    if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
    {
      v10 = sub_1B5CF2884(a1 + 416, a3);
      v11 = *(a1 + 720);
      v12 = v11 * v10;
      v13 = (v11 * v10) & 0x3F;
      v14 = v13 + v11;
      v15 = (*(a1 + 688) + 8 * ((v11 * v10) >> 6));
      v16 = *v15;
      v17 = v14 > 0x40 ? ((2 * v15[1]) << ~v12) | (v16 >> v12) : v16 >> v13;
      v19 = v9 | ((*(a1 + 728) & v17) << 8);
      v20 = *(a1 + 1000);
      if (v20)
      {
        sub_1B5CEA5A0(v20, a2, v19);
      }

      else
      {
        sub_1B5CF1E90((a1 + 744), a2, v19);
      }
    }

    else
    {
      std::string::push_back(a2, v9);
    }

    if (a3 <= *(a1 + 1064))
    {
      break;
    }

    a3 = sub_1B5CF2BE4(a1, a3) + ~a3;
  }
}

uint64_t sub_1B5CEA718(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  while (1)
  {
    while (1)
    {
      v10 = *(a1 + 1056) & a5;
      v11 = *(a1 + 1024) + 12 * v10;
      if (a5 == *(v11 + 4))
      {
        break;
      }

      if (((*(*(a1 + 432) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        if (*(*(a1 + 640) + a5) != *(a2 + *a4))
        {
          return 0;
        }

        ++*a4;
        goto LABEL_27;
      }

      v13 = *(a1 + 1000);
      v14 = *(*(a1 + 640) + a5);
      v15 = sub_1B5CF2884(a1 + 416, a5);
      v16 = *(a1 + 720);
      v17 = v16 * v15;
      v18 = (v16 * v15) & 0x3F;
      v19 = v18 + v16;
      v20 = (*(a1 + 688) + 8 * ((v16 * v15) >> 6));
      v21 = *v20;
      if (v13)
      {
        if (v19 > 0x40)
        {
          v22 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
        }

        else
        {
          v22 = v21 >> v18;
        }

        v25 = v14 | ((*(a1 + 728) & v22) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          if ((sub_1B5CEA718(v26, a2, a3, a4, v25) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v19 > 0x40)
        {
          v24 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
        }

        else
        {
          v24 = v21 >> v18;
        }

        v25 = v14 | ((*(a1 + 728) & v24) << 8);
      }

      if ((sub_1B5CF1F20((a1 + 744), a2, a3, a4, v25) & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      if (a5 <= *(a1 + 1064))
      {
        return 1;
      }

      if (*a4 >= a3)
      {
        return 0;
      }

      a5 = sub_1B5CF2BE4(a1, a5) + ~a5;
    }

    v12 = *(v11 + 8);
    if (v12 <= 0xFFFFFEFF)
    {
      v23 = *(a1 + 1000);
      if (v23)
      {
        if ((sub_1B5CEA718(v23, a2, a3, a4, v12) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((sub_1B5CF1F20((a1 + 744), a2, a3, a4, v12) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + *a4) != v12)
      {
        return 0;
      }

      ++*a4;
    }

    a5 = *(*(a1 + 1024) + 12 * v10);
    if (!a5)
    {
      return 1;
    }

    if (*a4 >= a3)
    {
      return 0;
    }
  }
}

uint64_t sub_1B5CEA950(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5, std::string *a6)
{
  while (1)
  {
    v12 = *(a1 + 1056) & a5;
    v13 = *(a1 + 1024) + 12 * v12;
    if (a5 != *(v13 + 4))
    {
      v15 = *(*(a1 + 640) + a5);
      if ((*(*(a1 + 432) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5))
      {
        v16 = sub_1B5CF2884(a1 + 416, a5);
        v17 = *(a1 + 720);
        v18 = v17 * v16;
        v19 = (v17 * v16) & 0x3F;
        v20 = v19 + v17;
        v21 = (*(a1 + 688) + 8 * ((v17 * v16) >> 6));
        v22 = *v21;
        if (v20 > 0x40)
        {
          v23 = ((2 * v21[1]) << ~v18) | (v22 >> v18);
        }

        else
        {
          v23 = v22 >> v19;
        }

        v25 = v15 | ((*(a1 + 728) & v23) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          if ((sub_1B5CEA950(v26, a2, a3, a4, v25, a6) & 1) == 0)
          {
            return 0;
          }
        }

        else if (!sub_1B5CF1FB4((a1 + 744), a2, a3, a4, v25, a6))
        {
          return 0;
        }
      }

      else
      {
        if (v15 != *(a2 + *a4))
        {
          return 0;
        }

        std::string::push_back(a6, v15);
        ++*a4;
      }

      if (a5 <= *(a1 + 1064))
      {
        return 1;
      }

      a5 = sub_1B5CF2BE4(a1, a5) + ~a5;
      goto LABEL_22;
    }

    v14 = *(v13 + 8);
    if (v14 > 0xFFFFFEFF)
    {
      if (*(a2 + *a4) != v14)
      {
        return 0;
      }

      std::string::push_back(a6, v14);
      ++*a4;
      goto LABEL_21;
    }

    v24 = *(a1 + 1000);
    if (!v24)
    {
      break;
    }

    if ((sub_1B5CEA950(v24, a2, a3, a4, v14, a6) & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    a5 = *(*(a1 + 1024) + 12 * v12);
    if (!a5)
    {
      return 1;
    }

LABEL_22:
    if (*a4 >= a3)
    {
      sub_1B5CEA5A0(a1, a6, a5);
      return 1;
    }
  }

  if (sub_1B5CF1FB4((a1 + 744), a2, a3, a4, v14, a6))
  {
    goto LABEL_21;
  }

  return 0;
}

void *sub_1B5CEAB7C(void *a1)
{
  v2 = a1[26];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
  }

  v3 = a1[20];
  if (v3)
  {
    MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  v4 = a1[14];
  if (v4)
  {
    MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
  }

  v5 = a1[6];
  if (v5)
  {
    MEMORY[0x1B8C880C0](v5, 0x1000C8077774924);
  }

  if (*a1)
  {
    MEMORY[0x1B8C880C0](*a1, 0x1000C8077774924);
  }

  return a1;
}

uint64_t sub_1B5CEAC00(void *a1, unsigned int a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000034;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:52: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  if ((a2 & 0x7F) != 0)
  {
    *a1 = a2 & 0x7F;
  }

  sub_1B5CEACC8(a1, a2);
  sub_1B5CEAD88(a1, a2);

  return sub_1B5CEAE1C(a1, a2);
}

uint64_t sub_1B5CEACC8(uint64_t result, __int16 a2)
{
  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 > 0x1FF)
  {
    if (v2 == 512)
    {
      goto LABEL_11;
    }

    if (v2 != 1024)
    {
      v3 = a2 & 0xF80;
      if (v2 != 2048)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = a2 & 0xF80;
    goto LABEL_11;
  }

  if ((a2 & 0xF80) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == 128)
  {
    goto LABEL_10;
  }

  v3 = a2 & 0xF80;
  if (v2 != 256)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000060;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:96: MARISA_CODE_ERROR: undefined cache level";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

LABEL_11:
  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B5CEAD88(uint64_t result, __int16 a2)
{
  v2 = 4096;
  v3 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v3 != 4096)
  {
    if (v3 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F2D575A0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000075;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:117: MARISA_CODE_ERROR: undefined tail mode";
      __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
    }

    v2 = 0x2000;
  }

  *(result + 12) = v2;
  return result;
}

uint64_t sub_1B5CEAE1C(uint64_t result, int a2)
{
  v2 = 0x20000;
  v3 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v3 != 0x20000)
  {
    if (v3 != 0x10000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F2D575A0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x50000008ALL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:138: MARISA_CODE_ERROR: undefined node order";
      __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
    }

    v2 = 0x10000;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t *sub_1B5CEAEB0(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (v6 < a2)
  {
    v7 = 2 * v6;
    if (v6 >> 60)
    {
      v7 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v6 > a2 >> 1)
    {
      a2 = v7;
    }

    result = sub_1B5CEAF80(result, a2);
  }

  v8 = v5[3];
  v9 = v4 - v8;
  if (v4 > v8)
  {
    v10 = 0;
    v11 = *a3;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = v5[1] + 8 * v8;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_1B5DC2630)));
      if (v14.i8[0])
      {
        *(v13 + 8 * v10) = v11;
      }

      if (v14.i8[4])
      {
        *(v13 + 8 * v10 + 8) = v11;
      }

      v10 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
  }

  v5[3] = v4;
  return result;
}

void *sub_1B5CEAF80(uint64_t *a1, uint64_t a2)
{
  result = operator new[](8 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B8C880C0);
  }

  return result;
}

void *sub_1B5CEB018(void *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v2 = result[3];
  if (v2 != result[4])
  {

    return sub_1B5CEAF80(result, v2);
  }

  return result;
}

uint64_t sub_1B5CEB0B0(uint64_t a1, uint64_t *a2)
{
  sub_1B5CEB19C(a1, a2);
  *(a1 + 48) = *sub_1B5CE7194(a2, 4uLL);
  v4 = *sub_1B5CE7194(a2, 4uLL);
  if (*(a1 + 48) < v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h:134: MARISA_FORMAT_ERROR: temp_num_1s > size_";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  *(a1 + 56) = v4;
  sub_1B5CEB25C((a1 + 64), a2);
  sub_1B5CEB31C((a1 + 112), a2);

  return sub_1B5CEB31C((a1 + 160), a2);
}

uint64_t sub_1B5CEB19C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_1B5CEB3DC(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CEB234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CEB25C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_1B5CEB61C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CEB2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CEB31C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_1B5CEB7FC(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CEB3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CEB3DC(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_1B5CE7194(a2, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v5 = v4 >> 3;
  sub_1B5CEB4B8(a2, (a1 + 16), v4 >> 3);
  sub_1B5CE70B8(a2, 0);
  *(a1 + 24) = v5;

  return sub_1B5CEB598(a1);
}

uint64_t sub_1B5CEB4B8(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  result = sub_1B5CE7194(a1, 8 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_1B5CEB598(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x10000007ALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:122: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  *(result + 40) = 1;
  return result;
}

uint64_t sub_1B5CEB61C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_1B5CE7194(a2, 8uLL);
  v5 = v4 / 0xC;
  if (v4 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  sub_1B5CEB70C(a2, (a1 + 16), v5);
  sub_1B5CE70B8(a2, -v4 & 7);
  *(a1 + 24) = v5;

  return sub_1B5CEB598(a1);
}

uint64_t sub_1B5CEB70C(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  result = sub_1B5CE7194(a1, 12 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_1B5CEB7FC(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_1B5CE7194(a2, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  sub_1B5CEB8DC(a2, (a1 + 16), v4 >> 2);
  sub_1B5CE70B8(a2, -v4 & 4);
  *(a1 + 24) = v4 >> 2;

  return sub_1B5CEB598(a1);
}

uint64_t sub_1B5CEB8DC(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  result = sub_1B5CE7194(a1, 4 * a3);
  *a2 = result;
  return result;
}

void *sub_1B5CEB9BC(uint64_t a1, uint64_t *a2)
{
  sub_1B5CEB19C(a1, a2);
  v4 = *sub_1B5CE7194(a2, 4uLL);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/flat-vector.h";
    exception[2] = 0xA00000084;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/flat-vector.h:132: MARISA_FORMAT_ERROR: temp_value_size > 32";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  *(a1 + 48) = v4;
  *(a1 + 56) = *sub_1B5CE7194(a2, 4uLL);
  result = sub_1B5CE7194(a2, 8uLL);
  *(a1 + 64) = *result;
  return result;
}

uint64_t *sub_1B5CEBA88(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 60)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_1B5CEAF80(result, a2);
  }

  v3[3] = v2;
  return result;
}

void sub_1B5CEBAE0(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    sub_1B5CEBB64(a1, a2);
  }

  v6 = a1[3];
  if (v2 > v6)
  {
    bzero((a1[1] + 12 * v6), 12 * (v2 - v6));
  }

  a1[3] = v2;
}

_DWORD *sub_1B5CEBB64(uint64_t *a1, uint64_t a2)
{
  result = operator new[](12 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6;
      v7[2] = *(v6 + 2);
      *v7 = v8;
      v7 += 3;
      v6 = (v6 + 12);
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B8C880C0);
  }

  return result;
}

uint64_t *sub_1B5CEBC0C(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 61)
    {
      v5 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_1B5CEBC64(result, a2);
  }

  v3[3] = v2;
  return result;
}

_DWORD *sub_1B5CEBC64(uint64_t *a1, uint64_t a2)
{
  result = operator new[](4 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B8C880C0);
  }

  return result;
}

uint64_t sub_1B5CEBCFC(uint64_t a1, uint64_t a2)
{
  sub_1B5CEBD80(a1, a2);
  __buf = *(a1 + 48);
  sub_1B5CE6C50(a2, &__buf, 4uLL);
  v5 = *(a1 + 56);
  sub_1B5CE6C50(a2, &v5, 4uLL);
  sub_1B5CEBEBC(a1 + 64, a2);
  sub_1B5CEC010(a1 + 112, a2);
  return sub_1B5CEC010(a1 + 160, a2);
}

uint64_t sub_1B5CEBD80(uint64_t a1, uint64_t a2)
{
  __buf = 8 * *(a1 + 24);
  sub_1B5CE6C50(a2, &__buf, 8uLL);
  sub_1B5CEBDE0(a2, *(a1 + 16), *(a1 + 24));
  return sub_1B5CE6B14(a2, 0);
}

uint64_t sub_1B5CEBDE0(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v3 = 8 * a3;

  return sub_1B5CE6C50(a1, a2, v3);
}

uint64_t sub_1B5CEBEBC(uint64_t a1, uint64_t a2)
{
  __buf = 12 * *(a1 + 24);
  sub_1B5CE6C50(a2, &__buf, 8uLL);
  sub_1B5CEBF24(a2, *(a1 + 16), *(a1 + 24));
  return sub_1B5CE6B14(a2, 4 * (*(a1 + 24) & 1));
}

uint64_t sub_1B5CEBF24(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v3 = 12 * a3;

  return sub_1B5CE6C50(a1, a2, v3);
}

uint64_t sub_1B5CEC010(uint64_t a1, uint64_t a2)
{
  __buf = 4 * *(a1 + 24);
  sub_1B5CE6C50(a2, &__buf, 8uLL);
  sub_1B5CEC074(a2, *(a1 + 16), *(a1 + 24));
  return sub_1B5CE6B14(a2, 4 * (*(a1 + 24) & 1));
}

uint64_t sub_1B5CEC074(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v3 = 4 * a3;

  return sub_1B5CE6C50(a1, a2, v3);
}

uint64_t sub_1B5CEC150(uint64_t a1, uint64_t a2)
{
  sub_1B5CEBD80(a1, a2);
  LODWORD(__buf) = *(a1 + 48);
  sub_1B5CE6C50(a2, &__buf, 4uLL);
  LODWORD(__buf) = *(a1 + 56);
  sub_1B5CE6C50(a2, &__buf, 4uLL);
  __buf = *(a1 + 64);
  return sub_1B5CE6C50(a2, &__buf, 8uLL);
}

_BYTE *sub_1B5CEC1C8(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v7 = result;
  if (a6 > 0x16)
  {
    operator new();
  }

  result[23] = a6;
  while (a3 != a5)
  {
    v8 = *--a3;
    *v7++ = v8;
  }

  *v7 = 0;
  return result;
}

void sub_1B5CEC274()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

char *sub_1B5CEC2C0(uint64_t *a1, uint64_t a2)
{
  result = operator new[](24 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = result + 16;
    v7 = (a1[1] + 16);
    do
    {
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 1) = *(v7 - 1);
      v8 = *v7;
      v7 += 6;
      *v6 = v8;
      v6 += 6;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B8C880C0);
  }

  return result;
}

uint64_t sub_1B5CEC378(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 8);
  if (v10)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v10 - 1);
    v14 = xmmword_1B5DC2640;
    v15 = xmmword_1B5DC2630;
    v16 = (v11 + 64);
    v17 = vdupq_n_s64(4uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v13, v15));
      if (vuzp1_s16(v18, *v13.i8).u8[0])
      {
        *(v16 - 12) = v12;
      }

      if (vuzp1_s16(v18, *&v13).i8[2])
      {
        *(v16 - 6) = v12 + 1;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
      {
        *v16 = v12 + 2;
        v16[6] = v12 + 3;
      }

      v12 += 4;
      v14 = vaddq_s64(v14, v17);
      v15 = vaddq_s64(v15, v17);
      v16 += 24;
    }

    while (((v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v12);
  }

  v19 = sub_1B5CECEE4(v11, v11 + 24 * v10, 0);
  v20 = 256;
  if (a5 != 1)
  {
    v20 = 1;
  }

  do
  {
    v21 = v20;
    v20 *= 2;
  }

  while (v21 < v19 / *(a4 + 8));
  sub_1B5CE9DB8(a1 + 126, v21);
  a1[132] = v21 - 1;
  sub_1B5CE94C8(a1, 1);
  sub_1B5CE94C8(a1, 0);
  LOBYTE(v71[0]) = 0;
  sub_1B5CECBD8(a1 + 78, v71);
  sub_1B5CE94C8(a1 + 52, 0);
  v61 = a3;
  v62 = a5;
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  sub_1B5CED544(v69, &v65);
  v22 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v63 = a4;
    do
    {
      v23 = a1[58];
      v24 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v22 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v28 = v23 - v22;
      if (v25 < v26)
      {
        while (1)
        {
          v29 = *(a2 + 8) + 24 * v25;
          if (*(v29 + 8) != v27)
          {
            break;
          }

          *(v29 + 12) = v28;
          v25 = (v25 + 1);
          if (v26 == v25)
          {
            goto LABEL_51;
          }
        }
      }

      if (v25 != v26)
      {
        v30 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v30)
        {
          MEMORY[0x1B8C880C0](v30, 0x1000C8077774924);
        }

        v31 = *(a2 + 8);
        v32 = *(v31 + 24 * v25 + 12);
        v33 = v25 + 1;
        if (v25 + 1 < v26)
        {
          v64 = v23;
          v34 = v32;
          v35 = 24 * v25;
          v36 = (v25 << 32) + 0x100000000;
          do
          {
            if (*(*(v31 + v35) + v27) != *(*(v31 + v35 + 24) + v27))
            {
              *&v37 = v34;
              v65.n128_u64[0] = v36 + v25;
              v65.n128_u64[1] = v27 | (v37 << 32);
              sub_1B5CECC44(&v67, &v65);
              v31 = *(a2 + 8);
              v34 = 0.0;
              LODWORD(v25) = v33;
            }

            v34 = v34 + *(v31 + v35 + 36);
            ++v33;
            v35 += 24;
            v36 += 0x100000000;
          }

          while (v26 != v33);
          v32 = v34;
          a4 = v63;
          v23 = v64;
        }

        v65.n128_u32[0] = v25;
        v65.n128_u32[1] = v26;
        v65.n128_u64[1] = v27 | (LODWORD(v32) << 32);
        v38 = sub_1B5CECC44(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          sub_1B5CEDCE0(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v38);
        }

        v39 = v68[1];
        if (v23 == v22)
        {
          a1[133] = v68[1];
        }

        if (v39)
        {
          v40 = 0;
          do
          {
            v41 = (*(&v67 + 1) + 16 * v40);
            v42 = *(v41 + 2);
            v43 = *(a2 + 8) + 24 * *v41;
            v44 = *(v43 + 8);
            v45 = v42 + 1;
            if (v42 + 1 >= v44)
            {
              v46 = *(v41 + 2);
              LODWORD(v44) = v42 + 1;
            }

            else
            {
              v46 = v44 - 1;
              v47 = *(v41 + 2);
              do
              {
                v48 = v47;
                v47 = v45;
                v49 = (*(a2 + 8) + 24 * *v41);
                v50 = *v41;
                while (++v50 < *(v41 + 1))
                {
                  v51 = *v49;
                  v52 = v49[3];
                  v49 += 3;
                  if (*(v51 + v47) != *(v52 + v47))
                  {
                    v46 = v48;
                    LODWORD(v44) = v47;
                    goto LABEL_45;
                  }
                }

                v45 = v47 + 1;
              }

              while (v47 + 1 != v44);
            }

LABEL_45:
            v53 = v41[3];
            v54 = a1[127] + 12 * (((32 * v28) ^ v28 ^ *(*v43 + v42)) & a1[132]);
            if (*(v54 + 8) < v53)
            {
              v55 = a1[81];
              *v54 = v28;
              *(v54 + 4) = v55;
              *(v54 + 8) = v53;
              v42 = *(v41 + 2);
            }

            if (v46 == v42)
            {
              v65.n128_u8[0] = *(*(*(a2 + 8) + 24 * *v41) + v46);
              sub_1B5CECBD8(a1 + 78, &v65);
              sub_1B5CE94C8(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              sub_1B5CECBD8(a1 + 78, &v65);
              sub_1B5CE94C8(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v56 = *(v41 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v41) + v56;
              v65.n128_u64[1] = (v44 - v56);
              v65.n128_f32[3] = v41[3];
              sub_1B5CECCB8(v71, &v65);
            }

            *(v41 + 2) = v44;
            sub_1B5CED544(v69, v41);
            sub_1B5CE94C8(a1, 1);
            ++v40;
          }

          while (v40 < v68[1]);
        }
      }

LABEL_51:
      sub_1B5CE94C8(a1, 0);
      v22 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  sub_1B5CE94C8(a1, 0);
  sub_1B5CE95C0(a1, v62 == 1, 1);
  sub_1B5CECD54(a1 + 624);
  sub_1B5CECDEC(a1, a2, v61);
  v57 = *a2;
  *a2 = v71[0];
  v71[0] = v57;
  v58 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v58;
  v59 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v59;
  LOBYTE(v58) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v58;
  if (v67)
  {
    MEMORY[0x1B8C880C0](v67, 0x1000C8077774924);
  }

  sub_1B5CEE800(v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x1B8C880C0](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CEC9D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x1B8C880C0](a11, 0x1000C8077774924);
  }

  sub_1B5CEE800(va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x1B8C880C0](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001D3;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:467: MARISA_MEMORY_ERROR: std::bad_alloc";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5CECADC(__int128 *a1, uint64_t a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_1B5CEE8FC(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CECBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1B5CECBD8(uint64_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < (v4 + 1))
  {
    v7 = 2 * v5;
    if (v5 < 0)
    {
      v7 = -1;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = sub_1B5CED4AC(result, v8);
    v4 = v3[3];
  }

  *(v3[1] + v4) = *a2;
  ++v3[3];
  return result;
}

__n128 sub_1B5CECC44(uint64_t *a1, __n128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 59)
    {
      v7 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    sub_1B5CEDC48(a1, v8);
    v4 = a1[3];
  }

  result = *a2;
  *(a1[1] + 16 * v4) = *a2;
  ++a1[3];
  return result;
}

uint64_t *sub_1B5CECCB8(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 > 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = sub_1B5CEC2C0(result, v8);
    v4 = v3[3];
  }

  v9 = v3[1] + 24 * v4;
  *v9 = *a2;
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 12) = *(a2 + 12);
  *(v9 + 16) = *(a2 + 16);
  ++v3[3];
  return result;
}

_BYTE *sub_1B5CECD54(_BYTE *result)
{
  if (result[40] == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return sub_1B5CED4AC(result, v2);
  }

  return result;
}

uint64_t sub_1B5CECDEC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  sub_1B5CEBC0C(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CECEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CECEE4(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if ((a2 - a1) < 241)
  {
    v7 = 0;
    goto LABEL_64;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    v10 = sub_1B5CED2E8(v9, v9 + 24 * (v6 / 0x30uLL), v4 - 24, a3);
    v11 = v10;
    v12 = v9;
    v5 = v4;
    v13 = v9;
    v14 = v4;
    while (v12 < v5)
    {
      v15 = *(v12 + 8);
      v16 = a3 >= v15 ? -1 : *(*v12 + a3);
      if (v16 > v10)
      {
        break;
      }

      if (v16 == v10)
      {
        v17 = *v12;
        *v12 = *v13;
        *(v12 + 8) = *(v13 + 8);
        v18 = *(v12 + 12);
        *(v12 + 12) = *(v13 + 12);
        *(v12 + 16) = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v15;
        *(v13 + 12) = v18;
        v13 += 24;
      }

LABEL_11:
      v12 += 24;
    }

    if (v12 < v5)
    {
      v19 = v5 - 24;
      do
      {
        v5 = v19;
        v20 = *(v19 + 8);
        if (a3 >= v20)
        {
          v21 = -1;
        }

        else
        {
          v21 = *(*v5 + a3);
        }

        if (v21 < v10)
        {
          break;
        }

        if (v21 == v10)
        {
          v22 = *(v14 - 24);
          v14 -= 24;
          v23 = *v5;
          *v5 = v22;
          *(v5 + 8) = *(v14 + 8);
          v24 = *(v5 + 12);
          *(v5 + 12) = *(v14 + 12);
          *(v5 + 16) = *(v14 + 16);
          *v14 = v23;
          *(v14 + 8) = v20;
          *(v14 + 12) = v24;
        }

        v19 = v5 - 24;
      }

      while (v12 < v5);
    }

    if (v12 < v5)
    {
      v25 = *v12;
      v26 = *(v12 + 16);
      *v12 = *v5;
      v27 = *(v12 + 8);
      *(v12 + 8) = *(v5 + 8);
      *(v12 + 12) = *(v5 + 12);
      *(v12 + 16) = *(v5 + 16);
      *v5 = v25;
      *(v5 + 8) = v27;
      *(v5 + 16) = v26;
      goto LABEL_11;
    }

    if (v13 > v9)
    {
      v28 = 0;
      do
      {
        v29 = v13 + v28;
        v30 = v12 + v28;
        v31 = *(v13 + v28 - 24);
        v32 = *(v13 + v28 - 8);
        *(v29 - 24) = *(v12 + v28 - 24);
        v33 = *(v13 + v28 - 16);
        *(v29 - 16) = *(v12 + v28 - 16);
        *(v29 - 12) = *(v12 + v28 - 12);
        *(v29 - 8) = *(v12 + v28 - 8);
        *(v30 - 24) = v31;
        *(v30 - 16) = v33;
        *(v30 - 8) = v32;
        v28 -= 24;
      }

      while (v13 + v28 > v9);
      v12 += v28;
    }

    while (v14 < v4)
    {
      v34 = *v14;
      v35 = *(v14 + 16);
      *v14 = *v5;
      v36 = *(v14 + 8);
      *(v14 + 8) = *(v5 + 8);
      *(v14 + 12) = *(v5 + 12);
      *(v14 + 16) = *(v5 + 16);
      *v5 = v34;
      *(v5 + 8) = v36;
      *(v5 + 16) = v35;
      v14 += 24;
      v5 += 24;
    }

    v37 = v12 - v8;
    v38 = v5 - v12;
    if (v37 <= (v5 - v12))
    {
      v39 = v4 - v5;
      if ((v4 - v5) <= v38)
      {
        if (v37 == 24)
        {
          ++v7;
        }

        else if (v37 >= 25)
        {
          v7 += sub_1B5CECEE4(v9, v12, a3);
        }

        if (v39 == 24)
        {
          ++v7;
        }

        else if (v39 >= 25)
        {
          v7 += sub_1B5CECEE4(v5, v4, a3);
        }

        if (v38 == 24)
        {
          ++v7;
        }

        else if (v38 >= 25)
        {
          if (v11 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_60;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v12;
        goto LABEL_60;
      }
    }

    if (v38 == 24)
    {
      goto LABEL_32;
    }

    if (v38 >= 25)
    {
      if (v10 == -1)
      {
LABEL_32:
        ++v7;
      }

      else
      {
        v7 += sub_1B5CECEE4(v12, v5, a3 + 1);
      }
    }

    v40 = v4 - v5;
    if (v37 >= (v4 - v5))
    {
      if (v40 == 24)
      {
        ++v7;
      }

      else if (v40 >= 25)
      {
        v7 += sub_1B5CECEE4(v5, v4, a3);
      }

      v4 = v12;
      v5 = v9;
    }

    else if (v37 == 24)
    {
      ++v7;
    }

    else if (v37 >= 25)
    {
      v7 += sub_1B5CECEE4(v9, v12, a3);
    }

LABEL_60:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while ((v4 - v5) > 240);
LABEL_64:
  if (v6 >= 25)
  {
    v7 += sub_1B5CED35C(v5, v4, a3);
  }

  return v7;
}