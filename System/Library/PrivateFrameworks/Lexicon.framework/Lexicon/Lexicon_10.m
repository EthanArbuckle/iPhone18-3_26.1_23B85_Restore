void sub_1B5D7C920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, char *a14, uint64_t a15, char a16, uint64_t a17)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a16;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D7C968(void *a1)
{
  sub_1B5D7BA60(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D7C9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(*(a1 + 8) + 24 * a2) + 40 * a3;
  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

void sub_1B5D7CA54(uint64_t a1)
{
  *a1 = &unk_1F2D560F0;
  v1 = (a1 + 8);
  sub_1B5D7CACC(&v1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D7CACC(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_1B5D7CB60(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D7CB60(void ***a1)
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
        v6 = *(v4 - 17);
        v4 -= 5;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D7CBEC(uint64_t a1)
{
  *a1 = &unk_1F2D560F0;
  v3 = (a1 + 8);
  sub_1B5D7CACC(&v3);
  return a1;
}

_BYTE *sub_1B5D7CC44(_BYTE *__dst, void *__src, unint64_t a3, uint64_t a4, double a5)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v10 = 13;
    }

    else
    {
      v10 = (a3 | 3) + 1;
    }

    sub_1B5D0DF78(v10);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *&__dst[2 * a3] = 0;
  *(__dst + 3) = a5;
  *(__dst + 4) = a4;
  return __dst;
}

void sub_1B5D7CCF8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 24 * a2);
      while (v4 != v11)
      {
        v4 -= 3;
        v12 = v4;
        sub_1B5D7CB60(&v12);
      }

      *(a1 + 16) = v11;
    }
  }

  else
  {
    v7 = *(a1 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1B5CE5968();
      }

      sub_1B5D04FA0();
    }

    bzero(*(a1 + 16), 24 * ((24 * v6 - 24) / 0x18) + 24);
    *(a1 + 16) = &v4[3 * ((24 * v6 - 24) / 0x18) + 3];
  }
}

uint64_t sub_1B5D7CED0(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = (*(*a2 + 24))(a2);
  v5 = result;
  if (result)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      result = (*(*a2 + 16))(a2, v6);
      if (!result)
      {
        break;
      }

      v8 = (*(*a2 + 32))(a2, v6, 0);
      sub_1B5D7D020(a1, v8, v9);
      result = (*(*a2 + 40))(a2, v6, 0);
      v7 += result;
      v6 = v7;
    }

    while (v5 > v7);
  }

  return result;
}

void sub_1B5D7CFFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D7D020(uint64_t a1, void *__src, unint64_t a3)
{
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v8 = *(a1 + 8);
    v7 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 10;
    v8 = *(a1 + 23);
  }

  if (v7 - v8 < a3)
  {
    sub_1B5D7D0E4(a1, v7, a3 - v7 + v8);
  }

  if (a3)
  {
    v9 = a1;
    if ((v6 & 0x80000000) != 0)
    {
      v9 = *a1;
    }

    memmove((v9 + 2 * v8), __src, 2 * a3);
    v10 = v8 + a3;
    if (*(a1 + 23) < 0)
    {
      *(a1 + 8) = v10;
    }

    else
    {
      *(a1 + 23) = v10 & 0x7F;
    }

    *(v9 + 2 * v10) = 0;
  }

  return a1;
}

void sub_1B5D7D0E4(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (0x7FFFFFFFFFFFFFF6 - a2 >= a3)
  {
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    v4 = a3 + a2;
    if (a3 + a2 <= 2 * a2)
    {
      v4 = 2 * a2;
    }

    if ((v4 | 3) == 0xB)
    {
      v5 = 13;
    }

    else
    {
      v5 = (v4 | 3) + 1;
    }

    v6 = v4 >= 0xB;
    v7 = 11;
    if (v6)
    {
      v7 = v5;
    }

    if (a2 > 0x3FFFFFFFFFFFFFF2)
    {
      v8 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
      v8 = v7;
    }

    sub_1B5D0DF78(v8);
  }

  sub_1B5D114C8();
}

uint64_t *sub_1B5D7D274(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v3)
    {
      MEMORY[0x1B8C880F0](v3, 0x60C4044C4A2DFLL);
    }

    sub_1B5D7DFDC((v2 + 24));
    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    sub_1B5D7DB18((v2 + 8));
    sub_1B5D7DBD4(v2);

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D7D434(_Unwind_Exception *a1)
{
  if (v5)
  {
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1B5D7D968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  (*(*v3 + 8))(v3);
  sub_1B5CE5794(va2, 0);
  sub_1B5D7DB18(va);
  sub_1B5D7DBD4(va1);

  _Unwind_Resume(a1);
}

uint64_t *sub_1B5D7DB18(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = *(v3 + 5);
        *(v3 + 5) = 0;
        if (v5)
        {
          v6 = sub_1B5DA4AC8(v5);
          MEMORY[0x1B8C880F0](v6, 0x1032C4073C2515ELL);
        }

        if (v3[39] < 0)
        {
          operator delete(*(v3 + 2));
        }

        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      operator delete(v7);
    }

    MEMORY[0x1B8C880F0](v2, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

uint64_t *sub_1B5D7DBD4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      do
      {
        v4 = *v3;
        sub_1B5D48B4C((v3 + 2));
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    sub_1B5D48A74(v2 + 40);
    v6 = sub_1B5D48A74(v2);
    MEMORY[0x1B8C880F0](v6, 0x10A0C40ED4D4612);
  }

  return a1;
}

void sub_1B5D7DF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void **sub_1B5D7DFDC(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*v2)
    {
      ubrk_close();
    }

    MEMORY[0x1B8C880F0](v2, 0x1020C405F07FB98);
  }

  return a1;
}

void sub_1B5D7E034(void *a1, void **a2, CFStringRef theString, const __CFArray *a4, uint64_t a5, CFErrorRef *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      if (!a4)
      {
        sub_1B5D4A530(&v28, *a2, 0);
        goto LABEL_8;
      }

      TypeID = CFLocaleGetTypeID();
      if (sub_1B5DA9E54(a4, TypeID))
      {
        sub_1B5D4A530(&v28, *a2, a4);
LABEL_8:
        sub_1B5D8115C(v27, a2[1], a4);
        if (v28 == v29 && v27[0] == v27[1])
        {
          if (a6)
          {
            v15 = sub_1B5D819BC(a4);
            __s[0] = v15;
            *a6 = sub_1B5D4E9A0(v15, 2);
            if (v15)
            {
              CFRelease(v15);
            }
          }

          *a1 = 0;
          a1[1] = 0;
          a1[2] = 0;
          goto LABEL_34;
        }

        v10 = sub_1B5D81A74(v28, v29);
        sub_1B5DA802C(__s, a2[3], theString);
        if (__s[0] == __s[1])
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          *theArray = 0u;
          v23 = 0u;
          if (__s[0])
          {
            operator delete(__s[0]);
          }

          goto LABEL_29;
        }

        sub_1B5D8E27C(&v21, theString, __s, 0);
        memset(v34, 0, sizeof(v34));
        if (v10)
        {
          v11 = a2[4];
          if (!v11)
          {
            v12 = 0;
            v13 = 0;
            goto LABEL_27;
          }

          sub_1B5D81AD0(&v30, v11, theString, __s);
          *v34 = v30;
          *&v34[8] = v31;
          v12 = *(&v31 + 1);
          if (v30 != v31)
          {
            sub_1B5D8E27C(&v30, theString, v34, 0);
            v13 = v30;
LABEL_27:
            v14 = 1;
            goto LABEL_28;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = 0;
        v14 = 0;
LABEL_28:
        LOBYTE(theArray[0]) = v14;
        theArray[1] = v21;
        v23 = *__s;
        v16 = v33;
        __s[0] = 0;
        __s[1] = 0;
        v33 = 0;
        *&v24 = v16;
        *(&v24 + 1) = v13;
        v25 = *v34;
        v26 = v12;
LABEL_29:
        if (sub_1B5D8E22C(theArray))
        {
          Length = CFStringGetLength(theString);
          *a1 = 0;
          a1[1] = 0;
          a1[2] = 0;
          if (Length)
          {
            if (!(Length >> 62))
            {
              sub_1B5D0DF30(Length);
            }

            sub_1B5D04FA0();
          }

          __assert_rtn("CoverageVector", "CoverageVector.cpp", 11, "0 < length");
        }

        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        sub_1B5D7FAD8(theArray);
LABEL_34:
        __s[0] = v27;
        sub_1B5D4BCF4(__s);
        __s[0] = &v28;
        sub_1B5D4BCF4(__s);
        goto LABEL_35;
      }

      if (a6)
      {
        *a6 = sub_1B5D4E9A0(@"locales must be an array of NSLocale objects.", 1);
      }
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

LABEL_35:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B5D7F684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D7F8C4(CFArrayRef theArray, uint64_t a2, uint64_t a3, uint64_t a4, const __CFSet *a5, uint64_t *a6)
{
  if (theArray)
  {
    v7 = a2;
    if (a2 != a3)
    {
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
        if ((sub_1B5D33FFC(*a6, a6[1], *v7, *(v7 + 8) + *v7) & 1) == 0)
        {
          if (sub_1B5D8E37C(ValueAtIndex, *(v7 + 16)) || a5 && CFSetContainsValue(a5, ValueAtIndex) || a4 && (sub_1B5D7F9C8(a4, ValueAtIndex) & 1) != 0 || (CharacterAtIndex = CFStringGetCharacterAtIndex(ValueAtIndex, 0), u_getNumericValue(CharacterAtIndex) != -123456789.0))
          {
            sub_1B5D33E9C(*a6, a6[1], *v7, *(v7 + 8) + *v7);
          }
        }

        ++v12;
        v7 += 24;
      }

      while (v7 != a3);
    }
  }
}

uint64_t sub_1B5D7F9C8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = sub_1B5D7FB60;
  v4[3] = &unk_1E7C211C0;
  v4[4] = &v5;
  (*(*a1 + 192))(a1, a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1B5D7FA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B5D7FAA4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t sub_1B5D7FAD8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  sub_1B5D7FB2C((a1 + 40));
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  sub_1B5D7FB2C((a1 + 8));
  return a1;
}

void sub_1B5D7FB2C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t sub_1B5D7FB60(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void sub_1B5D7FB78(uint64_t a1)
{
  *a1 = &unk_1F2D559C0;
  v2 = *(a1 + 1352);
  if (v2 && *(a1 + 1350) == 1)
  {
    free(v2);
  }

  sub_1B5D1BBBC(a1 + 1296);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D7FBF8(uint64_t a1)
{
  *a1 = &unk_1F2D559C0;
  v2 = *(a1 + 1352);
  if (v2 && *(a1 + 1350) == 1)
  {
    free(v2);
  }

  sub_1B5D1BBBC(a1 + 1296);
  return a1;
}

uint64_t sub_1B5D7FC58(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char a4)
{
  v15 = *(a3 + 16);
  if (a3[12] >= 0xFuLL)
  {
    LOWORD(v14) = a3[12];
    operator new[]();
  }

  v14 = *(a3 + 12);
  v7 = sub_1B5D7FDCC(a2, a4, &v15, &v14);
  v8 = *a3;
  v9 = *(a3 + 1);
  if (v8 <= 0xE)
  {
    v10 = a3 + 1;
  }

  else
  {
    v10 = *(a3 + 1);
  }

  *sub_1B5CDD214(&v12, v8 + 1, v10, v8) = a4;
  result = sub_1B5CDD804(a1, &v12, v15, &v14, v7);
  if (v12 >= 0xFu)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x1B8C880C0](v13, 0x1000C8077774924);
    }
  }

  if (v14 >= 0xFu)
  {
    result = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      return MEMORY[0x1B8C880C0](*(&v14 + 1), 0x1000C8077774924);
    }
  }

  return result;
}

void sub_1B5D7FD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9, uint64_t a10, unsigned __int16 a11, uint64_t a12)
{
  if (a9 >= 0xFu && a10)
  {
    MEMORY[0x1B8C880C0](a10, v12);
  }

  if (a11 >= 0xFu)
  {
    if (a12)
    {
      MEMORY[0x1B8C880C0](a12, v12);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D7FDCC(uint64_t a1, unsigned int a2, _BYTE *a3, unsigned __int16 *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  if (v7)
  {
    v8 = *(a4 + 1);
    if (v7 <= 0xE)
    {
      v9 = a4 + 1;
    }

    else
    {
      v9 = *(a4 + 1);
    }

    *sub_1B5CDD214(&v26, v7 + 1, v9, v7) = a2;
    if (*a4 >= 0xFu)
    {
      v10 = *(a4 + 1);
      if (v10)
      {
        MEMORY[0x1B8C880C0](v10, 0x1000C8077774924);
      }
    }

    *a4 = v26;
    v11 = *a4;
    v12 = sub_1B5CE3018((a1 + 1296), a4);
    if (v12)
    {
      v13 = v12;
      if (v11 >= 0xF)
      {
        v14 = *(a4 + 1);
        if (v14)
        {
          MEMORY[0x1B8C880C0](v14, 0x1000C8077774924);
        }
      }

      goto LABEL_21;
    }

LABEL_22:
    if (*(a1 + 1336) > v11)
    {
      result = 4294967294;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    goto LABEL_44;
  }

  v16 = *a3;
  if ((*a3 > 94 || v16 == 254) && (a2 == 255 || a2 == 3))
  {
    *a3 = 0;
LABEL_43:
    result = 4294967294;
    goto LABEL_44;
  }

  v17 = a1 + 1036;
  if (*a3)
  {
    if (*(v17 + *a3))
    {
      v11 = 2;
      *a4 = 2;
      a4[1] = v16 | (a2 << 8);
      v18 = sub_1B5CE3018((a1 + 1296), a4);
      if (v18)
      {
        v13 = v18;
LABEL_21:
        *a4 = 0;
        result = *(v13 + 8);
        goto LABEL_44;
      }

      goto LABEL_22;
    }

    if (qword_1EB90CB10 != -1)
    {
      dispatch_once(&qword_1EB90CB10, &unk_1F2D59720);
    }

    v22 = qword_1EB90CB08;
    if (os_log_type_enabled(qword_1EB90CB08, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *a3;
      LODWORD(v26) = 67109376;
      DWORD1(v26) = v23;
      WORD4(v26) = 1024;
      *(&v26 + 10) = a2;
      _os_log_impl(&dword_1B5CDB000, v22, OS_LOG_TYPE_DEFAULT, "found unknown lead_primary=%u, with sort_key_byte=%u", &v26, 0xEu);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = *(a1 + 4 * a2 + 12);
    if (*(v17 + a2) == 1 && v20 == 0)
    {
      if (a2 > 94 || a2 == 254)
      {
        *a3 = a2;
        if (*a4 >= 0xFu)
        {
          v24 = *(a4 + 1);
          if (v24)
          {
            MEMORY[0x1B8C880C0](v24, 0x1000C8077774924);
          }
        }
      }

      *a4 = 1;
      *(a4 + 2) = a2;
      goto LABEL_43;
    }

    if (v20)
    {
      result = v20;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

LABEL_44:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_1B5D80058()
{
  result = os_log_create("com.apple.Lexicon", "SortKeyByteConverter");
  qword_1EB90CB08 = result;
  return result;
}

void sub_1B5D80088(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0x100000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0;
  v13 = 0;
  LODWORD(v4) = *a3;
  if (*a3)
  {
    v7 = 0;
    v8 = a3 + 1;
    do
    {
      if (v4 <= 0xE)
      {
        v9 = v8;
      }

      else
      {
        v9 = *(a3 + 1);
      }

      v10 = sub_1B5D7FDCC(a2, *(v9 + v7), &v15, &v13);
      v11 = v10;
      if (v10 != -2)
      {
        if (v10 == -1)
        {
          goto LABEL_12;
        }

        sub_1B5D5CC40(&v16, v10);
      }

      ++v7;
      v4 = *a3;
    }

    while (v7 < v4);
    if (*a3 && v11 == -2)
    {
LABEL_12:
      *a1 = 0x100000;
      *(a1 + 4) = 0;
      *(a1 + 6) = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      goto LABEL_14;
    }
  }

  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  sub_1B5D5CBBC(a1, &v16);
LABEL_14:
  if (v13 >= 0xFu && v14)
  {
    MEMORY[0x1B8C880C0](v14, 0x1000C8077774924);
  }

  if (v19 && v18 == 1)
  {
    free(v19);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B5D80200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, void *a15)
{
  if (a9 >= 0xFu && a10)
  {
    MEMORY[0x1B8C880C0](a10, 0x1000C8077774924);
  }

  if (a15)
  {
    v16 = a14 == 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_1B5D8024C(unsigned __int16 *result, uint64_t a2)
{
  *(result + 1) = 0;
  v2 = (result + 4);
  *(result + 2) = 0;
  *result = result + 4;
  for (i = (a2 + 1312); ; result = sub_1B5D522BC(v6 + 20, i + 8))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    v4 = *v2;
    if (!*v2)
    {
LABEL_10:
      operator new();
    }

    v5 = *(i + 8);
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 8);
        if (v5 >= v7)
        {
          break;
        }

        v4 = *v6;
        if (!*v6)
        {
          goto LABEL_10;
        }
      }

      if (v7 >= v5)
      {
        break;
      }

      v4 = *(v6 + 1);
      if (!v4)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B5D80378(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      result = sub_1B5CE3018((v3 + 1296), v2 + 8);
      if (!result)
      {
        result = sub_1B5CE2A50(v3, v2 + 8, *(v2 + 8));
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

os_log_t sub_1B5D803CC()
{
  result = os_log_create("com.apple.Lexicon", "Default");
  qword_1EB90CB18 = result;
  return result;
}

void sub_1B5D803FC()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B5CE410C(&v3, "ja");
  sub_1B5CE410C(&v4, "ko");
  sub_1B5CE410C(v5, "zh-Hans");
  sub_1B5CE410C(v6, "zh-Hant");
  sub_1B5CE410C(v7, "yue-Hant");
  memset(v0, 0, sizeof(v0));
  __p = v0;
  LOBYTE(v2) = 0;
  operator new();
}

void sub_1B5D80ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, char *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (*(v58 - 209) < 0)
  {
    operator delete(*(v58 - 232));
  }

  sub_1B5D810B0(&a17, 0);
  a45 = &a14;
  sub_1B5CE5D7C(&a45);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D810B0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1B5DA4AC8(result);

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t *sub_1B5D810FC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1B5D810B0((v2 + 40), 0);
      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_1B5D8115C(uint64_t a1, void *a2, CFArrayRef theArray)
{
  v3 = theArray;
  v4 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = a2[3];
  if (result)
  {
    if (!(result >> 59))
    {
      v72 = a1;
      sub_1B5D8170C(result);
    }

    sub_1B5D04FA0();
  }

  v63 = a1;
  if (theArray)
  {
    for (i = 0; ; ++i)
    {
      result = CFArrayGetCount(v3);
      if (result <= i)
      {
        return result;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      sub_1B5D4EA54(__p, ValueAtIndex);
      if (v67 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if (v67 >= 0)
      {
        v10 = v67;
      }

      else
      {
        v10 = __p[1];
      }

      v11 = sub_1B5D4EB98(v9, v10);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1B5D114C8();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v65) = v12;
      if (v12)
      {
        memmove(&__dst, v11, v12);
      }

      *(&__dst + v13) = 0;
      v14 = SHIBYTE(v65);
      v15 = __dst;
      if (v65 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (v65 >= 0)
      {
        v17 = SHIBYTE(v65);
      }

      else
      {
        v17 = *(&__dst + 1);
      }

      v18 = sub_1B5D2CC6C(p_dst, v17);
      v19 = v4[1];
      if (!*&v19)
      {
        goto LABEL_42;
      }

      v20 = v18;
      v21 = vcnt_s8(v19);
      v21.i16[0] = vaddlv_u8(v21);
      v22 = v21.u32[0];
      if (v21.u32[0] > 1uLL)
      {
        v23 = v18;
        if (v18 >= *&v19)
        {
          v23 = v18 % *&v19;
        }
      }

      else
      {
        v23 = (*&v19 - 1) & v18;
      }

      v24 = *(*v4 + 8 * v23);
      if (!v24)
      {
        goto LABEL_42;
      }

      v25 = *v24;
      if (!*v24)
      {
        v3 = theArray;
        goto LABEL_42;
      }

      while (1)
      {
        v26 = v25[1];
        if (v20 == v26)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v26 >= *&v19)
          {
            v26 %= *&v19;
          }
        }

        else
        {
          v26 &= *&v19 - 1;
        }

        if (v26 != v23)
        {
          goto LABEL_41;
        }

LABEL_40:
        v25 = *v25;
        if (!v25)
        {
          goto LABEL_41;
        }
      }

      if (!sub_1B5D17E50(v25 + 2, &__dst))
      {
        goto LABEL_40;
      }

      v27 = v25[5];
      if (!v27)
      {
LABEL_41:
        v3 = theArray;
        v4 = a2;
        goto LABEL_42;
      }

      v29 = *(v63 + 8);
      v28 = *(v63 + 16);
      v4 = a2;
      if (v29 >= v28)
      {
        v30 = (v29 - *v63) >> 5;
        if ((v30 + 1) >> 59)
        {
          sub_1B5D04FA0();
        }

        v31 = v28 - *v63;
        v32 = v31 >> 4;
        if (v31 >> 4 <= (v30 + 1))
        {
          v32 = v30 + 1;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFE0)
        {
          v33 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v32;
        }

        v72 = v63;
        if (v33)
        {
          sub_1B5D8170C(v33);
        }

        v35 = 32 * v30;
        v68 = 0;
        v69 = v35;
        v36 = 0;
        v70 = v35;
        v71 = 0;
        if (v14 < 0)
        {
          sub_1B5CE4AC4(v35, v15, *(&v15 + 1));
          v37 = v69;
          v38 = v70;
          v36 = v71;
        }

        else
        {
          *v35 = __dst;
          *(v35 + 16) = v65;
          v37 = v35;
          v38 = v35;
        }

        *(v35 + 24) = v27;
        v34 = v38 + 32;
        v39 = *(v63 + 8) - *v63;
        v40 = v37 - v39;
        memcpy((v37 - v39), *v63, v39);
        v41 = *v63;
        *v63 = v40;
        *(v63 + 8) = v34;
        v42 = *(v63 + 16);
        *(v63 + 16) = v36;
        v70 = v41;
        v71 = v42;
        v68 = v41;
        v69 = v41;
        sub_1B5D4BF64(&v68);
        LOBYTE(v14) = HIBYTE(v65);
        v3 = theArray;
      }

      else
      {
        v3 = theArray;
        if (v14 < 0)
        {
          sub_1B5CE4AC4(*(v63 + 8), v15, *(&v15 + 1));
        }

        else
        {
          *v29 = __dst;
          *(v29 + 16) = v65;
        }

        *(v29 + 24) = v27;
        v34 = v29 + 32;
      }

      *(v63 + 8) = v34;
LABEL_42:
      if ((v14 & 0x80) != 0)
      {
        operator delete(__dst);
      }

      if (v67 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v43 = a2[2];
  if (v43)
  {
    v44 = *(a1 + 8);
    do
    {
      v45 = v43[5];
      v46 = *(a1 + 16);
      if (v44 >= v46)
      {
        v48 = (v44 - *a1) >> 5;
        if ((v48 + 1) >> 59)
        {
          sub_1B5D04FA0();
        }

        v49 = v46 - *a1;
        v50 = v49 >> 4;
        if (v49 >> 4 <= (v48 + 1))
        {
          v50 = v48 + 1;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFE0)
        {
          v51 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        v72 = a1;
        if (v51)
        {
          sub_1B5D8170C(v51);
        }

        v52 = 32 * v48;
        v68 = 0;
        v69 = v52;
        v53 = 0;
        v70 = v52;
        v71 = 0;
        if (*(v43 + 39) < 0)
        {
          sub_1B5CE4AC4(v52, v43[2], v43[3]);
          v55 = v69;
          v56 = v70;
          v53 = v71;
        }

        else
        {
          v54 = *(v43 + 1);
          *(v52 + 16) = v43[4];
          *v52 = v54;
          v55 = v52;
          v56 = v52;
        }

        *(v52 + 24) = v45;
        v44 = v56 + 32;
        v57 = *(a1 + 8) - *a1;
        v58 = v55 - v57;
        memcpy((v55 - v57), *a1, v57);
        v59 = *a1;
        *a1 = v58;
        *(a1 + 8) = v44;
        v60 = *(a1 + 16);
        *(a1 + 16) = v53;
        v70 = v59;
        v71 = v60;
        v68 = v59;
        v69 = v59;
        result = sub_1B5D4BF64(&v68);
      }

      else
      {
        if (*(v43 + 39) < 0)
        {
          result = sub_1B5CE4AC4(v44, v43[2], v43[3]);
        }

        else
        {
          v47 = *(v43 + 1);
          *(v44 + 16) = v43[4];
          *v44 = v47;
        }

        *(v44 + 24) = v45;
        v44 += 32;
      }

      *(a1 + 8) = v44;
      v43 = *v43;
    }

    while (v43);
  }

  return result;
}

void sub_1B5D81668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  *(v25 + 8) = v24;
  operator delete(__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  a18 = a11;
  sub_1B5D4BCF4(&a18);
  _Unwind_Resume(a1);
}

void sub_1B5D8170C(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D81754(__CFArray **a1, void *a2, void *a3)
{
  Mutable = CFArrayCreateMutable(0, 32, MEMORY[0x1E695E9C0]);
  sub_1B5D4A530(&v18, a2, 0);
  v7 = v18;
  v8 = v19;
  while (v7 != v8)
  {
    v9 = v7;
    if (*(v7 + 23) < 0)
    {
      v9 = *v7;
    }

    v10 = CFStringCreateWithCString(0, v9, 0x8000100u);
    v20 = v10;
    v11 = CFLocaleCreate(0, v10);
    CFArrayAppendValue(Mutable, v11);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v7 += 32;
  }

  v20 = &v18;
  sub_1B5D4BCF4(&v20);
  sub_1B5D8115C(&v18, a3, 0);
  v12 = v18;
  for (i = v19; v12 != i; v12 += 32)
  {
    v14 = *(v12 + 23);
    if (v14 < 0)
    {
      if (*(v12 + 8) != 8 || **v12 != 0x746E61482D657579)
      {
        v15 = *v12;
        goto LABEL_18;
      }
    }

    else if (v14 != 8 || *v12 != 0x746E61482D657579)
    {
      v15 = v12;
LABEL_18:
      v16 = CFStringCreateWithCString(0, v15, 0x8000100u);
      v20 = v16;
      v17 = CFLocaleCreate(0, v16);
      CFArrayAppendValue(Mutable, v17);
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

  v20 = &v18;
  sub_1B5D4BCF4(&v20);
  *a1 = Mutable;
}

void sub_1B5D81938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_1B5D1E6E0(&a10, 0);
  sub_1B5CE5794(&a14, 0);
  a14 = &a11;
  sub_1B5D4BCF4(&a14);
  _Unwind_Resume(a1);
}

__CFString *sub_1B5D819BC(const __CFArray *a1)
{
  if (!a1)
  {
    return @"No available lexicon found.";
  }

  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"No available lexicon found for the locales: [");
  for (i = 0; i < CFArrayGetCount(a1); ++i)
  {
    if (i)
    {
      CFStringAppend(Mutable, @", ");
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    v5 = MEMORY[0x1B8C87840](ValueAtIndex);
    CFStringAppend(Mutable, v5);
  }

  CFStringAppend(Mutable, @"]");
  return Mutable;
}

uint64_t sub_1B5D81A74(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(a1 + 23);
    if ((v2 & 0x80000000) == 0)
    {
      break;
    }

    if (*(a1 + 8) == 2)
    {
      v3 = *a1;
      goto LABEL_7;
    }

LABEL_8:
    a1 += 32;
    if (a1 == a2)
    {
      return 0;
    }
  }

  v3 = a1;
  if (v2 != 2)
  {
    goto LABEL_8;
  }

LABEL_7:
  if (*v3 != 25956)
  {
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_1B5D81AD0(void *a1, int a2, CFStringRef theString, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  CFStringGetLength(theString);
  if (!CFStringGetCharactersPtr(theString))
  {
    operator new[]();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v7 = a4[1];
  if (v7 != *a4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a4) >> 3);
    if (v8 <= 0xAAAAAAAAAAAAAAALL)
    {
      sub_1B5D825B4(v8);
    }

    sub_1B5D04FA0();
  }

  result = 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D824B0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1B5D04FA0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
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
      sub_1B5D825B4(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void sub_1B5D825B4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1B5CE5968();
}

_BYTE *sub_1B5D8260C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a3 | 3) + 1;
    }

    sub_1B5D0DF78(v6);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *&__dst[2 * a3] = 0;
  return __dst;
}

uint64_t sub_1B5D826A0(int a1, CFDictionaryRef theDict, CFErrorRef *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"locale");
  v5 = CFDictionaryGetValue(theDict, @"lexiconDataFile");
  v6 = CFDictionaryGetValue(theDict, @"additionalDictionaryLocale");
  if (v6)
  {
    sub_1B5CE4DD0(v6, &valuePtr);
    *v45 = valuePtr;
    locale = v50[0].__locale_;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    LOBYTE(v45[0]) = 0;
  }

  v47 = v7;
  v8 = CFDictionaryGetValue(theDict, @"correctionMatchPenaltyWeight");
  if (v8)
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
    v9 = valuePtr | 0x100000000;
  }

  else
  {
    v9 = 0;
  }

  v10 = CFDictionaryGetValue(theDict, @"completionLookAheadLimit");
  if (v10)
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
    v11 = valuePtr | 0x100000000;
  }

  else
  {
    v11 = 0;
  }

  cf = 0;
  if (v5)
  {
    goto LABEL_14;
  }

  v12 = sub_1B5CDFCFC(theDict);
  *&valuePtr = v12;
  v5 = sub_1B5DA89F8(theDict, v12);
  cf = v5;
  if (v12)
  {
    CFRelease(v12);
  }

  if (v5)
  {
LABEL_14:
    sub_1B5CE4DD0(Value, &v41);
    sub_1B5CE4DD0(v5, &v40);
    sub_1B5D0218C(&valuePtr);
    sub_1B5D849C0(&v59, &v40);
    v13 = sub_1B5CE599C(&valuePtr, " -d ", 4);
    sub_1B5D84A28(&__str, &v59);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v16 = sub_1B5CE599C(v13, p_str, size);
    v17 = sub_1B5CE599C(v16, " -s ", 4);
    sub_1B5D84AF4(__p, &v59);
    if ((v58 & 0x80u) == 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if ((v58 & 0x80u) == 0)
    {
      v19 = v58;
    }

    else
    {
      v19 = __p[1];
    }

    sub_1B5CE599C(v17, v18, v19);
    if (v58 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v20 = sub_1B5CE599C(&valuePtr, " -S ", 4);
    if ((v43 & 0x80u) == 0)
    {
      v21 = &v41;
    }

    else
    {
      v21 = v41;
    }

    if ((v43 & 0x80u) == 0)
    {
      v22 = v43;
    }

    else
    {
      v22 = v42;
    }

    v23 = sub_1B5CE599C(v20, v21, v22);
    v24 = sub_1B5CE599C(v23, " -i ", 4);
    if ((v43 & 0x80u) == 0)
    {
      v25 = &v41;
    }

    else
    {
      v25 = v41;
    }

    if ((v43 & 0x80u) == 0)
    {
      v26 = v43;
    }

    else
    {
      v26 = v42;
    }

    sub_1B5CE599C(v24, v25, v26);
    if (v47 == 1)
    {
      v27 = sub_1B5CE599C(&valuePtr, " -A ", 4);
      if (SHIBYTE(locale) >= 0)
      {
        v28 = v45;
      }

      else
      {
        v28 = v45[0];
      }

      if (SHIBYTE(locale) >= 0)
      {
        v29 = HIBYTE(locale);
      }

      else
      {
        v29 = v45[1];
      }

      sub_1B5CE599C(v27, v28, v29);
    }

    if (HIDWORD(v9))
    {
      v30 = sub_1B5CE599C(&valuePtr, " -c ", 4);
      MEMORY[0x1B8C87F00](v30, v9);
    }

    if (HIDWORD(v11))
    {
      v31 = sub_1B5CE599C(&valuePtr, " -L ", 4);
      MEMORY[0x1B8C87F10](v31, v11);
    }

    if ((v54[1] & 0x10) != 0)
    {
      v33 = v54[0];
      if (v54[0] < __src_8)
      {
        v54[0] = __src_8;
        v33 = __src_8;
      }

      v34 = v50[4].__locale_;
    }

    else
    {
      if ((v54[1] & 8) == 0)
      {
        v32 = 0;
        v39 = 0;
        goto LABEL_67;
      }

      v34 = v50[1].__locale_;
      v33 = v50[3].__locale_;
    }

    v32 = v33 - v34;
    if ((v33 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1B5D114C8();
    }

    if (v32 >= 0x17)
    {
      operator new();
    }

    v39 = v33 - v34;
    if (v32)
    {
      memmove(&__dst, v34, v32);
    }

LABEL_67:
    *(&__dst + v32) = 0;
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    *&valuePtr = *MEMORY[0x1E69E54E8];
    *(&v50[-2].__locale_ + *(valuePtr - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&valuePtr + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v53[1]) < 0)
    {
      operator delete(v52[1]);
    }

    *(&valuePtr + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v50);
    std::ostream::~ostream();
    MEMORY[0x1B8C88080](v55);
    MEMORY[0x1B8C88030](&v48);
    operator new();
  }

  if (a3)
  {
    *a3 = sub_1B5D4E9A0(@"Could not determine the location of the morpheme lexicon path, or one was not provided.", 0);
  }

  if (v47 == 1 && SHIBYTE(locale) < 0)
  {
    operator delete(v45[0]);
  }

  v35 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1B5D84424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, const void *a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  MEMORY[0x1B8C880C0](a14, 0x1000C8077774924);
  sub_1B5D15D94(&a50);
  std::ios_base::Init::~Init(&a49);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_1B5CE5794(&a37, 0);
  if (a44 == 1 && a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1B5D849C0(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  sub_1B5CE5F0C(a1, a2, (a2 + v3));
  return a1;
}

void sub_1B5D84A0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D84A28(uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__parent_path(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

double sub_1B5D84AF4(uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_1B5D84BC0(uint64_t a1)
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

void sub_1B5D84CE0(void ***a1)
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
        v4 -= 48;
        sub_1B5D15730(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D84D64(void *a1, void *a2, uint64_t a3)
{
  v80 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  v50 = 2 * a3;
  v4 = off_1EE895098();
  v5 = 0;
  v53 = (v6 + 16);
  __src = v4;
  while (1)
  {
    v7 = (*(**a2 + 240))();
    if (!v7 || v5 > 0x63)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v64 = 0;
    v52 = v5 + 1;
    v62 = 0u;
    v63 = 0u;
    v11 = 0.0;
    *v60 = 0u;
    v61 = 0u;
    do
    {
      v8 += *(v7 + 80);
      v13 = (v7 + 96);
      v12 = *(v7 + 96);
      v14 = *(v7 + 88);
      v9 += *(v7 + 76);
      if (*v7)
      {
        v15 = (*(**a2 + 80))(*a2, *(*v7 + 100), *(v7 + 102));
        v8 += v15;
        v9 += v15;
      }

      v16 = *(v7 + 124);
      if ((v16 & 0xFE) != 2)
      {
        if (v16 == 1)
        {
          sub_1B5D8260C(&__p, *(v7 + 48), *(v7 + 96) >> 1);
        }

        else
        {
          v17 = *(v7 + 104);
          if (v17)
          {
            sub_1B5D33704(srcLength, (v17 + 16));
            pErrorCode = U_ZERO_ERROR;
            pDestLength[0] = 0;
            if (v69)
            {
              v18 = v69;
            }

            else
            {
              v18 = v53;
            }

            u_strFromUTF8(__src, 128, pDestLength, v18, LOWORD(srcLength[0]), &pErrorCode);
            if (pErrorCode < U_ILLEGAL_ARGUMENT_ERROR)
            {
              sub_1B5D8260C(&__p, __src, pDestLength[0]);
            }

            else
            {
              v59 = 0;
              LOWORD(__p) = 0;
            }

            if (v69 && BYTE2(srcLength[1]) == 1)
            {
              free(v69);
            }
          }

          else
          {
            v59 = 0;
            LOWORD(__p) = 0;
          }
        }

        v19 = *(v7 + 104);
        if (v19)
        {
          v20 = CFRetain(v19);
          *srcLength = v20;
          v21 = *(&v63 + 1);
          if (*(&v63 + 1) >= v64)
          {
            *(&v63 + 1) = sub_1B5D859D8(&v63, srcLength, (v7 + 96));
            if (*srcLength)
            {
              CFRelease(*srcLength);
            }
          }

          else
          {
            *srcLength = 0;
            **(&v63 + 1) = v20;
            *(v21 + 8) = *v13;
            *(&v63 + 1) = v21 + 16;
          }
        }

        else if (*(v7 + 124) == 1)
        {
          pErrorCode = 0x100000;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          if ((v59 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v59 & 0x80u) == 0)
          {
            v23 = v59;
          }

          else
          {
            v23 = v58;
          }

          sub_1B5D5D888(&pErrorCode, p_p, v23);
          srcLength[0] = 0x100000;
          LOWORD(srcLength[1]) = 0;
          BYTE2(srcLength[1]) = 0;
          v69 = 0;
          v70 = 0;
          v71[0] = 0;
          *(v71 + 5) = 0;
          v71[2] = 0;
          v71[3] = 0;
          v71[4] = 0xFFFFFFFFLL;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          sub_1B5CDF770(srcLength, &pErrorCode);
          v24 = *(v7 + 102) | (*(v7 + 100) << 16);
          v72 = 1;
          v73 = v24;
          v74 = *(v7 + 80);
          v56 = 0;
          *pDestLength = CFAbsoluteTimeGetCurrent();
          v25 = sub_1B5D85B3C(srcLength, &v56, pDestLength);
          *pDestLength = v25;
          v26 = *(&v63 + 1);
          if (*(&v63 + 1) >= v64)
          {
            *(&v63 + 1) = sub_1B5D859D8(&v63, pDestLength, (v7 + 96));
            if (*pDestLength)
            {
              CFRelease(*pDestLength);
            }
          }

          else
          {
            *pDestLength = 0;
            **(&v63 + 1) = v25;
            *(v26 + 8) = *v13;
            *(&v63 + 1) = v26 + 16;
          }

          if (v69 && BYTE2(srcLength[1]) == 1)
          {
            free(v69);
          }

          if (v78 && v77 == 1)
          {
            free(v78);
          }
        }

        if ((v59 & 0x80u) == 0)
        {
          v27 = &__p;
        }

        else
        {
          v27 = __p;
        }

        if ((v59 & 0x80u) == 0)
        {
          v28 = v59;
        }

        else
        {
          v28 = v58;
        }

        sub_1B5D7D020(v60, v27, v28);
        if (v59 < 0)
        {
          operator delete(__p);
        }
      }

      v10 += v12;
      v11 = v11 + v14;
      v7 = *(v7 + 8);
    }

    while (v7);
    *(&v61 + 1) = __PAIR64__(v10, v8);
    *&v62 = v11;
    DWORD2(v62) = v9;
    if (a3 < 1)
    {
      if (v10)
      {
LABEL_56:
        if ((SBYTE7(v61) & 0x80u) == 0)
        {
          v29 = v60;
        }

        else
        {
          v29 = v60[0];
        }

        if ((SBYTE7(v61) & 0x80u) == 0)
        {
          v30 = SBYTE7(v61);
        }

        else
        {
          v30 = v60[1];
        }

        v31 = sub_1B5D2CC6C(v29, 2 * v30);
        if (v65[1])
        {
          v32 = vcnt_s8(v65[1]);
          v32.i16[0] = vaddlv_u8(v32);
          if (v32.u32[0] > 1uLL)
          {
            v33 = v31;
            if (v31 >= v65[1])
            {
              v33 = v31 % v65[1];
            }
          }

          else
          {
            v33 = (v65[1] - 1) & v31;
          }

          v34 = *(v65[0] + v33);
          if (v34)
          {
            for (i = *v34; i; i = *i)
            {
              v36 = i[1];
              if (v36 == v31)
              {
                v37 = *(i + 39);
                v38 = v37;
                if (v37 < 0)
                {
                  v37 = i[3];
                }

                if (v37 == v30)
                {
                  if (!v30)
                  {
                    goto LABEL_92;
                  }

                  v39 = v38 >= 0 ? i + 2 : i[2];
                  v40 = v30 - 1;
                  v41 = v29;
                  do
                  {
                    v43 = *v39;
                    v39 = (v39 + 2);
                    v42 = v43;
                    v45 = *v41;
                    v41 = (v41 + 2);
                    v44 = v45;
                    v47 = v40-- != 0;
                  }

                  while (v44 == v42 && v47);
                  if (v44 == v42)
                  {
                    goto LABEL_92;
                  }
                }
              }

              else
              {
                if (v32.u32[0] > 1uLL)
                {
                  if (v36 >= v65[1])
                  {
                    v36 %= v65[1];
                  }
                }

                else
                {
                  v36 &= v65[1] - 1;
                }

                if (v36 != v33)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }
    }

    else if (v50 == v10)
    {
      goto LABEL_56;
    }

LABEL_92:
    v5 = v52;
    *srcLength = &v63;
    sub_1B5D16400(srcLength);
    if (SBYTE7(v61) < 0)
    {
      operator delete(v60[0]);
    }
  }

  result = sub_1B5D4BEB4(v65);
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D858B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, int a42, char a43, char a44, void *a45)
{
  sub_1B5D4BFC8(1, v45);
  sub_1B5D85C00(&a26);
  sub_1B5D4BEB4(&a36);
  a26 = a13;
  sub_1B5D16318(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D859D8(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_1B5D04FA0();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1B5CE5968();
  }

  v10 = 16 * v5;
  v11 = *a2;
  *a2 = 0;
  *v10 = v11;
  *(v10 + 8) = *a3;
  v12 = (16 * v5 + 16);
  if (v3 != v4)
  {
    v13 = v3;
    v14 = 0;
    do
    {
      v15 = *v13;
      *v13 = 0;
      *v14 = v15;
      *(v14 + 8) = *(v13 + 4);
      v13 += 2;
      v14 += 16;
    }

    while (v13 != v4);
    do
    {
      sub_1B5D05220(v3, 0);
      v3 += 2;
    }

    while (v3 != v4);
    v3 = *a1;
    v12 = (16 * v5 + 16);
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v5 + 16;
}

uint64_t sub_1B5D85B3C(uint64_t a1, int *a2, uint64_t *a3)
{
  v6 = *MEMORY[0x1E695E480];
  if (qword_1ED833AC8 != -1)
  {
    dispatch_once(&qword_1ED833AC8, &unk_1F2D59760);
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = *a2;
  v9 = *a3;
  sub_1B5D5CABC(Instance + 16, a1);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  *(Instance + 96) = *(a1 + 80);
  *(Instance + 64) = v11;
  *(Instance + 80) = v12;
  *(Instance + 48) = v10;
  *(Instance + 104) = v8;
  *(Instance + 112) = v9;
  *(Instance + 120) = 0;
  return Instance;
}

uint64_t sub_1B5D85C00(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1B5D16400(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D85C4C()
{
  qword_1ED833A60 = 0;
  *algn_1ED833A68 = "LXEntry";
  qword_1ED833A70 = 0;
  unk_1ED833A78 = 0;
  qword_1ED833A80 = sub_1B5D2E064;
  unk_1ED833A88 = 0u;
  unk_1ED833A98 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833A50 = result;
  return result;
}

uint64_t *sub_1B5D85CA0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_1B5D3443C(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      sub_1B5CDD904(v4);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t sub_1B5D85D14(void **a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v5[0] = &unk_1F2D59790;
  v5[1] = a2;
  v5[3] = v5;
  sub_1B5D361E8(a1, (v2 + 8), v5);
  result = sub_1B5D56B20(v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D85DA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D56B20(va);
  _Unwind_Resume(a1);
}

__n128 sub_1B5D85DB4(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1B5D85E04(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 40))
  {
    v3 = *(*(result + 32) + 8);
    v4 = v3[6];
    if (v4 >= v3[7])
    {
      result = sub_1B5D4D444(v3 + 5, (v2 + 8));
    }

    else
    {
      sub_1B5D5CABC(v3[6], (v2 + 8));
      result = v4 + 32;
      v3[6] = v4 + 32;
    }

    v3[6] = result;
  }

  return result;
}

uint64_t sub_1B5D85E7C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59870))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D85EBC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    (*(**(a1 + 8) + 16))(*(a1 + 8), v2 + 8);
    v3 = *(v2 + 44);
    v4 = *(v2 + 48);
    v5 = *(v2 + 52);
    v6 = *(v2 + 56);
    v7 = *(v2 + 64);

    sub_1B5D56FD0();
  }

  __assert_rtn("operator()", "TIDynamicDictionaryImpl.cpp", 342, "false && Unexpectedly missing trie entry");
}

uint64_t sub_1B5D85F64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59810;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D86004(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D597F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D86044(uint64_t a1@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2)
  {
    if (qword_1EB90CB30 != -1)
    {
      dispatch_once(&qword_1EB90CB30, &unk_1F2D59880);
    }

    v6 = qword_1EB90CB28;
    if (os_log_type_enabled(qword_1EB90CB28, OS_LOG_TYPE_ERROR))
    {
      v9 = *(v5 + 16);
      if (!v9)
      {
        v9 = v5 + 24;
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_error_impl(&dword_1B5CDB000, v6, OS_LOG_TYPE_ERROR, "found duplicate serialized entry with string='%s'", &v10, 0xCu);
    }
  }

  v7 = **(a1 + 8);
  *a3 = v7;
  if (v7 && atomic_fetch_add(v7, 1u) <= 0)
  {
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B5D8617C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59790;
  a2[1] = v2;
  return result;
}

os_log_t sub_1B5D86210()
{
  result = os_log_create("com.apple.Lexicon", "DynamicDictionaryImpl");
  qword_1EB90CB28 = result;
  return result;
}

uint64_t sub_1B5D86240(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 72);
    if (v2)
    {
      sub_1B5CDD904(v2);
    }

    sub_1B5D85CA0((v1 + 56), 0);
    v3 = *(v1 + 32);
    if (v3 && *(v1 + 30) == 1)
    {
      free(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t sub_1B5D862CC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56CF8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D86310(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D8634C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1B5D3443C(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  return a1;
}

CFTypeRef **sub_1B5D8638C(CFTypeRef **a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = **a1;
  if (!v2)
  {
    anURL = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(**a1);
  anURL = v2;
  v3 = CFGetTypeID(v2);
  if (v3 != CFURLGetTypeID())
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
    __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  cf.__r_.__value_.__r.__words[0] = v4;
  if (!v4)
  {
    goto LABEL_54;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != CFStringGetTypeID())
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = cf.__r_.__value_.__r.__words[0];
  if (!cf.__r_.__value_.__r.__words[0])
  {
LABEL_54:
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
    goto LABEL_59;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(cf.__r_.__value_.__l.__data_))
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not convert");
LABEL_59:
    __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CStringPtr = CFStringGetCStringPtr(cf.__r_.__value_.__l.__data_, 0x8000100u);
  if (CStringPtr)
  {
    sub_1B5CE410C(&v35, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(cf.__r_.__value_.__l.__data_);
    maxBufLen.__r_.__value_.__r.__words[0] = 0;
    v37.location = 0;
    v37.length = Length;
    CFStringGetBytes(cf.__r_.__value_.__l.__data_, v37, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v10 = maxBufLen.__r_.__value_.__r.__words[0];
    if (maxBufLen.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1B5D114C8();
    }

    if (maxBufLen.__r_.__value_.__r.__words[0] >= 0x17)
    {
      operator new();
    }

    *(&v35.__r_.__value_.__s + 23) = maxBufLen.__r_.__value_.__s.__data_[0];
    if (maxBufLen.__r_.__value_.__r.__words[0])
    {
      bzero(&v35, maxBufLen.__r_.__value_.__r.__words[0]);
    }

    v35.__r_.__value_.__s.__data_[v10] = 0;
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v35;
    }

    else
    {
      v11 = v35.__r_.__value_.__r.__words[0];
    }

    v38.location = 0;
    v38.length = Length;
    CFStringGetBytes(v6, v38, 0x8000100u, 0, 0, v11, maxBufLen.__r_.__value_.__l.__data_, &maxBufLen);
  }

  if (cf.__r_.__value_.__r.__words[0])
  {
    CFRelease(cf.__r_.__value_.__l.__data_);
  }

  sub_1B5D849C0(&maxBufLen, &v35);
  MEMORY[0x1B8C87FA0](&v32, &maxBufLen, 0, 0);
  if (SHIBYTE(maxBufLen.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(maxBufLen.__r_.__value_.__l.__data_);
  }

  v12 = v32;
  v13 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v33;
    v30.__imp_.__ptr_ = v12;
    v30.__imp_.__cntrl_ = v13;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_1B5CDD904(v14);
    }
  }

  else
  {
    v30.__imp_.__ptr_ = v32;
    v30.__imp_.__cntrl_ = 0;
  }

  while (v30.__imp_.__ptr_)
  {
    v15 = std::__fs::filesystem::directory_iterator::__dereference(&v30);
    sub_1B5D84AF4(&maxBufLen, &v15->__p_);
    v16 = SHIBYTE(maxBufLen.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(maxBufLen.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1B5CE4AC4(&cf, maxBufLen.__r_.__value_.__l.__data_, maxBufLen.__r_.__value_.__l.__size_);
    }

    else
    {
      cf = maxBufLen;
    }

    v17 = SHIBYTE(cf.__r_.__value_.__r.__words[2]);
    v18 = cf.__r_.__value_.__r.__words[0];
    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_cf = &cf;
    }

    else
    {
      p_cf = cf.__r_.__value_.__r.__words[0];
    }

    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(cf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = cf.__r_.__value_.__l.__size_;
    }

    v21 = sub_1B5D07070(p_cf, size, "nlptemp-", 8uLL);
    v22 = v21;
    if (v17 < 0)
    {
      operator delete(v18);
      if (!v22)
      {
        goto LABEL_42;
      }

LABEL_41:
      std::__fs::filesystem::__remove(&v15->__p_, 0);
      goto LABEL_42;
    }

    if (v21)
    {
      goto LABEL_41;
    }

LABEL_42:
    if (v16 < 0)
    {
      operator delete(maxBufLen.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::directory_iterator::__increment(&v30, 0);
  }

  if (v30.__imp_.__cntrl_)
  {
    sub_1B5CDD904(v30.__imp_.__cntrl_);
  }

  if (v33)
  {
    sub_1B5CDD904(v33);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (anURL)
  {
    CFRelease(anURL);
  }

  v23 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B5D86804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, const void *a25)
{
  if (a2)
  {
    if (*(v25 - 73) < 0)
    {
      operator delete(*(v25 - 96));
    }

    sub_1B5D86C00(&a11);
    sub_1B5D86C34(&a25);
    if (a2 == 2)
    {
      v27 = __cxa_begin_catch(a1);
      if (qword_1EB90CB30 != -1)
      {
        dispatch_once(&qword_1EB90CB30, &unk_1F2D59880);
      }

      v28 = qword_1EB90CB28;
      if (os_log_type_enabled(qword_1EB90CB28, OS_LOG_TYPE_FAULT))
      {
        v29 = (*(*v27 + 16))(v27);
        *(v25 - 96) = 136315394;
        *(v25 - 92) = "cleanup_nlp_temp_files";
        *(v25 - 84) = 2080;
        *(v25 - 82) = v29;
        _os_log_fault_impl(&dword_1B5CDB000, v28, OS_LOG_TYPE_FAULT, "%s: failed to clean up NLP temporary files: %s", (v25 - 96), 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1B5D866B0);
    }

    sub_1B5CE56B8(a1);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1B5D86A7C(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_1B5D86AA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1B5D86AB8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 40) && (*(v2 + 47) & 8) == 0 && (*(v2 + 48) & 0x80000000) == 0)
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = v3[6];
    v4 = v3[7];
    if (v5 >= v4)
    {
      v7 = v3[5];
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 3;
      v10 = v9 + 1;
      if ((v9 + 1) >> 61)
      {
        sub_1B5D04FA0();
      }

      v11 = v4 - v7;
      if (v11 >> 2 > v10)
      {
        v10 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 61))
        {
          operator new();
        }

        sub_1B5CE5968();
      }

      v13 = (v5 - v7) >> 3;
      v14 = (8 * v9);
      v15 = (8 * v9 - 8 * v13);
      *v14 = v2;
      v6 = v14 + 1;
      memcpy(v15, v7, v8);
      v3[5] = v15;
      v3[6] = v6;
      v3[7] = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v5 = v2;
      v6 = v5 + 8;
    }

    v3[6] = v6;
  }
}

const void **sub_1B5D86BCC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1B5D86C00(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1B5D86C34(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1B5D86C68(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1B5D86C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a2 + 16))(a2, a3);
  CFAbsoluteTimeGetCurrent();

  sub_1B5D56FD0();
}

uint64_t LXLemmatizerCreate(const __CFString *a1, CFErrorRef *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1B5D86EB0();
  v5 = CFLocaleCreate(*MEMORY[0x1E695E480], a1);
  v9[0] = &unk_1F2D5B2E0;
  v9[3] = v9;
  v6 = sub_1B5CDFEBC(0, v5);
  sub_1B5DA8570(v9);
  if (v6)
  {
    sub_1B5D7ABBC(v4 + 16, v6);
  }

  if (a2)
  {
    *a2 = sub_1B5D4E9A0(@"Failed to get model path from locale", 0);
  }

  CFRelease(v4);
  if (v5)
  {
    CFRelease(v5);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1B5D86E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D86EB0()
{
  v0 = *MEMORY[0x1E695E480];
  if (qword_1ED8339F8[0] != -1)
  {
    dispatch_once(qword_1ED8339F8, &unk_1F2D598A0);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0;
  *(Instance + 24) = &unk_1F2D598D0;
  sub_1B5CE61C4((Instance + 40));
  *(Instance + 80) = 0;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  return Instance;
}

uint64_t *sub_1B5D86F80(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*v2)
    {
      munmap(*v2, *(v2 + 8));
    }

    *(v2 + 8) = 0;
    MEMORY[0x1B8C880F0](v2, 0x1080C40FC6463CFLL);
  }

  return a1;
}

uint64_t sub_1B5D86FE0()
{
  qword_1ED833990 = 0;
  *algn_1ED833998 = "LXLemmatizer";
  qword_1ED8339A0 = 0;
  unk_1ED8339A8 = 0;
  qword_1ED8339B0 = sub_1B5D87034;
  unk_1ED8339B8 = 0u;
  unk_1ED8339C8 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833980 = result;
  return result;
}

uint64_t *sub_1B5D87034(uint64_t a1)
{
  sub_1B5D7BA60((a1 + 24));

  return sub_1B5D86F80((a1 + 16));
}

CFStringRef LXLemmatizerCopyLemmaForStringWithPOS(uint64_t a1, const __CFString *a2, std::string::value_type a3)
{
  v3 = 0;
  v19 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    goto LABEL_27;
  }

  sub_1B5CE4DD0(a2, v18);
  std::string::push_back(v18, 58);
  v15 = *v18;
  memset(v18, 0, 24);
  std::string::push_back(&v15, a3);
  v17 = v15;
  memset(&v15, 0, sizeof(v15));
  if ((v18[23] & 0x80000000) != 0)
  {
    operator delete(*v18);
  }

  memset(v18, 0, sizeof(v18));
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v17;
  }

  else
  {
    v6 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  sub_1B5CE6808((a1 + 40), v6, size, v18, &v15);
  if ((v18[31] & 0x80000000) != 0)
  {
    operator delete(*&v18[8]);
  }

  __p = 0;
  numBytes = 0;
  v14 = 0;
  *v18 = &unk_1F2D59630;
  *&v18[8] = &__p;
  *&v18[24] = v18;
  sub_1B5D7AFF8((a1 + 24), &v15, v18, 0xFFFFFFFFLL);
  sub_1B5D5FE94(v18);
  v8 = SHIBYTE(v14);
  if ((SHIBYTE(v14) & 0x8000000000000000) != 0)
  {
    v8 = numBytes;
    if (!numBytes)
    {
      v3 = 0;
LABEL_22:
      operator delete(__p);
      goto LABEL_23;
    }

    p_p = __p;
  }

  else
  {
    if (!HIBYTE(v14))
    {
      v3 = 0;
      goto LABEL_23;
    }

    p_p = &__p;
  }

  v3 = sub_1B5CDFA10(p_p, v8);
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v16 < 0)
  {
    operator delete(v15.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

LABEL_27:
  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B5D87294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a17);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void LXLemmatizerEnumerateLemmasforString(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = a3;
    if (a2)
    {
      sub_1B5CE4DD0(a2, &v8);
      std::string::push_back(&v8, 58);
      __p = v8;
      v12 = 0u;
      v13 = 0u;
      if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      sub_1B5CE6808((a1 + 40), p_p, size, &v12, &v8);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(*(&v12 + 1));
      }

      v7 = 0;
      *&v12 = &unk_1F2D596B0;
      *(&v12 + 1) = &v11;
      *&v13 = &v7;
      *(&v13 + 1) = &v12;
      sub_1B5D7AFF8((a1 + 24), &v8, &v12, 0xFFFFFFFFLL);
      sub_1B5D5FE94(&v12);
      if (v9 < 0)
      {
        operator delete(v8.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B5D87460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_1B5D5FE94(v26 - 64);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t LXLemmatizerGetPartOfSpeechIDForTag(const __CFString *a1)
{
  v1 = v13;
  sub_1B5CE4DD0(a1, v13);
  v2 = v14;
  v3 = v13[0];
  if ((v14 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v1 = v13[0];
    v4 = v13[1];
  }

  v5 = 2;
  if (!sub_1B5D07070(v1, v4, "VB", 2uLL))
  {
    if (sub_1B5D07070(v1, v4, "NN", 2uLL))
    {
      v5 = 1;
      if (v2 < 0)
      {
        goto LABEL_61;
      }

      return v5;
    }

    if (sub_1B5D07070(v1, v4, "RB", 2uLL))
    {
      v5 = 4;
      if (v2 < 0)
      {
        goto LABEL_61;
      }

      return v5;
    }

    if (sub_1B5D07070(v1, v4, "JJ", 2uLL))
    {
      v5 = 3;
      if (v2 < 0)
      {
        goto LABEL_61;
      }

      return v5;
    }

    if (sub_1B5D07070(v1, v4, "PRP", 3uLL))
    {
      v5 = 5;
      if (v2 < 0)
      {
        goto LABEL_61;
      }

      return v5;
    }

    if (sub_1B5D07070(v1, v4, "DT", 2uLL))
    {
      v5 = 6;
      if (v2 < 0)
      {
        goto LABEL_61;
      }

      return v5;
    }

    if (sub_1B5D07070(v1, v4, "RP", 2uLL))
    {
      v5 = 7;
      if (v2 < 0)
      {
        goto LABEL_61;
      }

      return v5;
    }

    if (v4 != 3)
    {
      if (v4 != 2)
      {
        v5 = 0;
        if (v2 < 0)
        {
          goto LABEL_61;
        }

        return v5;
      }

      if (*v1 == 20041 || *v1 == 20308)
      {
        v5 = 8;
        if (v2 < 0)
        {
          goto LABEL_61;
        }

        return v5;
      }

      if (*v1 != 18517)
      {
        if (*v1 == 17219 || *v1 == 21315)
        {
          v5 = 10;
        }

        else
        {
          if (*v1 == 17475)
          {
            v5 = 9;
            if ((v2 & 0x80000000) == 0)
            {
              return v5;
            }

            goto LABEL_61;
          }

          v5 = 12;
          if (*v1 != 22597)
          {
            if (*v1 == 22342)
            {
              v5 = 12;
            }

            else
            {
              v5 = 0;
            }

            if (v2 < 0)
            {
              goto LABEL_61;
            }

            return v5;
          }
        }

        goto LABEL_60;
      }

LABEL_57:
      v5 = 11;
      if (v2 < 0)
      {
        goto LABEL_61;
      }

      return v5;
    }

    if (*v1 == 20041 && *(v1 + 2) == 84)
    {
      goto LABEL_57;
    }

    v7 = *v1 == 17488 && *(v1 + 2) == 84;
    v5 = 12;
    if (!v7)
    {
      v8 = bswap32(*v1 | (*(v1 + 2) << 16));
      v9 = v8 >= 0x50524500;
      v10 = v8 > 0x50524500;
      v11 = !v9;
      if (v10 == v11)
      {
        v5 = 12;
      }

      else
      {
        v5 = 0;
      }

      if (v2 < 0)
      {
        goto LABEL_61;
      }

      return v5;
    }
  }

LABEL_60:
  if (v2 < 0)
  {
LABEL_61:
    operator delete(v3);
  }

  return v5;
}

uint64_t *sub_1B5D87778(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1B5D87778(v2 + 80, 0);
    sub_1B5D264A0(v2 + 40);
    sub_1B5D264A0(v2);

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t sub_1B5D877EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, float a7)
{
  sub_1B5DB9E3C(a1, a3);
  v13 = *(a2 + 14352);
  if (v13 == -1)
  {
    sub_1B5D24008();
  }

  v16[0] = &v18;
  (off_1F2D59C98[v13])(v16, a2);
  *(a1 + 80) = 0;
  *(a1 + 88) = a7;
  *(a1 + 92) = a4;
  *(a1 + 93) = a5;
  v16[0] = a1 + 40;
  v16[1] = a6;
  v17 = 0;
  v14 = *(a2 + 14352);
  if (v14 == -1)
  {
    sub_1B5D24008();
  }

  v18 = v16;
  (off_1F2D59D00[v14])(&v18, a2);
  return a1;
}

void sub_1B5D878E0(_Unwind_Exception *a1)
{
  sub_1B5D87778(v3, 0);
  sub_1B5D264A0(v2);
  sub_1B5D264A0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D87910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DB9E3C(a1, a2);
  sub_1B5DB9E3C(v4 + 40, a2 + 40);
  *(a1 + 80) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  if (*(a2 + 80))
  {
    operator new();
  }

  return a1;
}

void sub_1B5D879B8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C880F0](v3, 0x1032C40198927B0);
  sub_1B5D87778(v2, 0);
  sub_1B5D264A0(v1 + 40);
  sub_1B5D264A0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D87A08(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1B5DB9EC4(a1, a2);
    sub_1B5DB9EC4(a1 + 40, a2 + 40);
    if (*(a2 + 80))
    {
      operator new();
    }

    *(a1 + 88) = *(a2 + 88);
    *(a1 + 92) = *(a2 + 92);
  }

  return a1;
}

uint64_t sub_1B5D87AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 == -1)
  {
    goto LABEL_8;
  }

  v5 = a1 + 40;
  v10 = &v9;
  if (((off_1F2D59D68[v2])(&v10, a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      return sub_1B5D87AD8(v6, a2);
    }
  }

  v9 = v5;
  v8 = *(a2 + 14352);
  if (v8 == -1)
  {
LABEL_8:
    sub_1B5D24008();
  }

  v10 = &v9;
  return (off_1F2D59DD0[v8])(&v10, a2);
}

double sub_1B5D87B88(uint64_t a1)
{
  if (*(**a1 + 32) != 12)
  {
    sub_1B5D24008();
  }

  return 0.0;
}

double sub_1B5D87BB4(uint64_t a1)
{
  if (*(**a1 + 32) != 11)
  {
    sub_1B5D24008();
  }

  return 0.0;
}

double sub_1B5D87BE0(uint64_t a1)
{
  if (*(**a1 + 32) != 10)
  {
    sub_1B5D24008();
  }

  return 0.0;
}

double sub_1B5D87C0C(uint64_t a1)
{
  if (*(**a1 + 32) != 9)
  {
    sub_1B5D24008();
  }

  return 0.0;
}

double sub_1B5D87C38(uint64_t a1)
{
  if (*(**a1 + 32) != 8)
  {
    sub_1B5D24008();
  }

  return 0.0;
}

double sub_1B5D87C64(uint64_t a1)
{
  if (*(**a1 + 32) != 7)
  {
    sub_1B5D24008();
  }

  return 0.0;
}

float sub_1B5D87C90(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 6)
  {
    sub_1B5D24008();
  }

  result = 0.0;
  if (*(v2 + 12) != -1 && (*(v2 + 9) & 1) == 0)
  {
    return sub_1B5DAE688((a2 + 40), v2);
  }

  return result;
}

float sub_1B5D87CE4(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 5)
  {
    sub_1B5D24008();
  }

  result = 0.0;
  if ((*v2 + 1) >= 2)
  {
    return sub_1B5DAC4EC((a2 + 40), v2);
  }

  return result;
}

float sub_1B5D87D34(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 4)
  {
    sub_1B5D24008();
  }

  result = 0.0;
  if (*v2)
  {
    v4 = *v2 == 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return sub_1B5DAAB80((a2 + 40), v2).n64_f64[0];
  }

  return result;
}

float sub_1B5D87D88(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 3)
  {
    sub_1B5D24008();
  }

  result = 0.0;
  if ((*v2 + 1) >= 2)
  {
    return sub_1B5DAD2F8(a2 + 40, v2);
  }

  return result;
}

float sub_1B5D87DD8(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 2)
  {
    sub_1B5D24008();
  }

  result = 0.0;
  if ((*v2 + 1) >= 2)
  {
    return sub_1B5DACC28((a2 + 40), v2);
  }

  return result;
}

float sub_1B5D87E28(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 1)
  {
    sub_1B5D24008();
  }

  result = 0.0;
  if ((*v2 + 1) >= 2)
  {
    return sub_1B5DAC4EC((a2 + 40), v2);
  }

  return result;
}

float sub_1B5D87E78(void **a1)
{
  v1 = **a1;
  if (*(v1 + 8))
  {
    sub_1B5D24008();
  }

  v2 = 0;
  if ((*v1 & 0x80000000) == 0)
  {
    LODWORD(v2) = 1.0;
    if (!*v1)
    {
      if (*(v1 + 2) || (v2 = 0, v1[24]))
      {
        LOBYTE(v2) = v1[20];
        v3 = v2 * 0.00392156863;
        *&v2 = v3 * v3;
      }
    }
  }

  return *&v2;
}

uint64_t sub_1B5D87EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 == -1)
  {
    goto LABEL_8;
  }

  v5 = a1 + 40;
  v10 = &v9;
  if (((off_1F2D59D68[v2])(&v10, a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      return sub_1B5D87EE4(v6, a2);
    }
  }

  v9 = v5;
  v8 = *(a2 + 14352);
  if (v8 == -1)
  {
LABEL_8:
    sub_1B5D24008();
  }

  v10 = &v9;
  return (off_1F2D59E38[v8])(&v10, a2);
}

float sub_1B5D87F94(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 12)
  {
    sub_1B5D24008();
  }

  v17 = 0;
  v4 = 0.0;
  v5 = *a2 != 1 || *(v2 + 12) == -1;
  if (!v5 && (*(v2 + 9) & 1) == 0 && sub_1B5DB144C((a2 + 40), v2, &v17))
  {
    v6 = v17 & 0x3FFFFFFF;
    if ((v17 & 0x3FFFFFFF) != 0)
    {
      if (*a2 == 1)
      {
        v7 = 0;
        v8 = *(a2 + 24);
        v9 = v8[1];
        do
        {
          if (v9 <= v6)
          {
            break;
          }

          v10 = *v8;
          if (!*v8)
          {
            return v4;
          }

          v11 = v6 + 1;
          if (v9 < v11)
          {
LABEL_31:
            __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
          }

          if (v9 <= v11)
          {
            return v4;
          }

          v12 = *(v10 + v6);
          v13 = *(v10 + v11);
          if ((v13 & 4) != 0)
          {
            v14 = v6 + 2;
            if (v9 < v14)
            {
              goto LABEL_31;
            }

            if (v9 <= v14)
            {
              return v4;
            }

            v7 += *(v10 + v14) * *(v10 + v14);
          }

          else
          {
            v7 = 65025;
          }

          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v6 += v12;
        }

        while (v6 && v12 != 0);
        return v7 * 0.0000153787005;
      }
    }

    else if (sub_1B5DB14C0(a2 + 40, v2))
    {
      return 0.0;
    }

    else
    {
      return 1.0;
    }
  }

  return v4;
}

float sub_1B5D880F4(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 11)
  {
    sub_1B5D24008();
  }

  v16 = 0;
  v4 = 0.0;
  if (*a2 == 1 && (*v2 + 1) >= 2 && sub_1B5DAF530((a2 + 40), v2, &v16))
  {
    v6 = v16 & 0x3FFFFFFF;
    if ((v16 & 0x3FFFFFFF) != 0)
    {
      if (*a2 == 1)
      {
        v7 = 0;
        v8 = *(a2 + 24);
        v9 = v8[1];
        do
        {
          if (v9 <= v6)
          {
            break;
          }

          v10 = *v8;
          if (!*v8)
          {
            return v4;
          }

          v11 = v6 + 1;
          if (v9 < v11)
          {
LABEL_28:
            __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
          }

          if (v9 <= v11)
          {
            return v4;
          }

          v12 = *(v10 + v6);
          v13 = *(v10 + v11);
          if ((v13 & 4) != 0)
          {
            v14 = v6 + 2;
            if (v9 < v14)
            {
              goto LABEL_28;
            }

            if (v9 <= v14)
            {
              return v4;
            }

            v7 += *(v10 + v14) * *(v10 + v14);
          }

          else
          {
            v7 = 65025;
          }

          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v6 += v12;
        }

        while (v6 && v12 != 0);
        return v7 * 0.0000153787005;
      }
    }

    else if (sub_1B5DB0F10(a2 + 40, v2))
    {
      return 0.0;
    }

    else
    {
      return 1.0;
    }
  }

  return v4;
}

float sub_1B5D88258(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 10)
  {
    sub_1B5D24008();
  }

  v17 = 0;
  v4 = 0.0;
  if (*a2 == 1)
  {
    v5 = !*v2 || *v2 == 0xFFFFFFFFLL;
    if (!v5 && sub_1B5DB0480((a2 + 40), v2, &v17))
    {
      v7 = v17 & 0x3FFFFFFF;
      if ((v17 & 0x3FFFFFFF) != 0)
      {
        if (*a2 == 1)
        {
          v8 = 0;
          v9 = *(a2 + 24);
          v10 = v9[1];
          do
          {
            if (v10 <= v7)
            {
              break;
            }

            v11 = *v9;
            if (!*v9)
            {
              return v4;
            }

            v12 = v7 + 1;
            if (v10 < v12)
            {
LABEL_32:
              __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
            }

            if (v10 <= v12)
            {
              return v4;
            }

            v13 = *(v11 + v7);
            v14 = *(v11 + v12);
            if ((v14 & 4) != 0)
            {
              v15 = v7 + 2;
              if (v10 < v15)
              {
                goto LABEL_32;
              }

              if (v10 <= v15)
              {
                return v4;
              }

              v8 += *(v11 + v15) * *(v11 + v15);
            }

            else
            {
              v8 = 65025;
            }

            if ((v14 & 0x80) == 0)
            {
              break;
            }

            v7 += v13;
          }

          while (v7 && v13 != 0);
          return v8 * 0.0000153787005;
        }
      }

      else if (sub_1B5DB0518(a2 + 40, v2))
      {
        return 0.0;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v4;
}

float sub_1B5D883C0(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 9)
  {
    sub_1B5D24008();
  }

  v16 = 0;
  v4 = 0.0;
  if (*a2 == 1 && (*v2 + 1) >= 2 && sub_1B5DAFC84(a2 + 40, v2, &v16))
  {
    v6 = v16 & 0x3FFFFFFF;
    if ((v16 & 0x3FFFFFFF) != 0)
    {
      if (*a2 == 1)
      {
        v7 = 0;
        v8 = *(a2 + 24);
        v9 = v8[1];
        do
        {
          if (v9 <= v6)
          {
            break;
          }

          v10 = *v8;
          if (!*v8)
          {
            return v4;
          }

          v11 = v6 + 1;
          if (v9 < v11)
          {
LABEL_28:
            __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
          }

          if (v9 <= v11)
          {
            return v4;
          }

          v12 = *(v10 + v6);
          v13 = *(v10 + v11);
          if ((v13 & 4) != 0)
          {
            v14 = v6 + 2;
            if (v9 < v14)
            {
              goto LABEL_28;
            }

            if (v9 <= v14)
            {
              return v4;
            }

            v7 += *(v10 + v14) * *(v10 + v14);
          }

          else
          {
            v7 = 65025;
          }

          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v6 += v12;
        }

        while (v6 && v12 != 0);
        return v7 * 0.0000153787005;
      }
    }

    else if (sub_1B5DAFD14(a2 + 40, v2))
    {
      return 0.0;
    }

    else
    {
      return 1.0;
    }
  }

  return v4;
}

float sub_1B5D88524(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 8)
  {
    sub_1B5D24008();
  }

  v16 = 0;
  v4 = 0.0;
  if (*a2 == 1 && (*v2 + 1) >= 2 && sub_1B5DAF530((a2 + 40), v2, &v16))
  {
    v6 = v16 & 0x3FFFFFFF;
    if ((v16 & 0x3FFFFFFF) != 0)
    {
      if (*a2 == 1)
      {
        v7 = 0;
        v8 = *(a2 + 24);
        v9 = v8[1];
        do
        {
          if (v9 <= v6)
          {
            break;
          }

          v10 = *v8;
          if (!*v8)
          {
            return v4;
          }

          v11 = v6 + 1;
          if (v9 < v11)
          {
LABEL_28:
            __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
          }

          if (v9 <= v11)
          {
            return v4;
          }

          v12 = *(v10 + v6);
          v13 = *(v10 + v11);
          if ((v13 & 4) != 0)
          {
            v14 = v6 + 2;
            if (v9 < v14)
            {
              goto LABEL_28;
            }

            if (v9 <= v14)
            {
              return v4;
            }

            v7 += *(v10 + v14) * *(v10 + v14);
          }

          else
          {
            v7 = 65025;
          }

          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v6 += v12;
        }

        while (v6 && v12 != 0);
        return v7 * 0.0000153787005;
      }
    }

    else if (sub_1B5DAF5C8(a2 + 40, v2))
    {
      return 0.0;
    }

    else
    {
      return 1.0;
    }
  }

  return v4;
}

float sub_1B5D88688(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 7)
  {
    sub_1B5D24008();
  }

  v16 = 0;
  v4 = 0.0;
  if (*a2 == 1 && (*v2 + 1) >= 2 && sub_1B5DAEDD8((a2 + 40), v2, &v16))
  {
    v6 = v16 & 0x3FFFFFFF;
    if ((v16 & 0x3FFFFFFF) != 0)
    {
      if (*a2 == 1)
      {
        v7 = 0;
        v8 = *(a2 + 24);
        v9 = v8[1];
        do
        {
          if (v9 <= v6)
          {
            break;
          }

          v10 = *v8;
          if (!*v8)
          {
            return v4;
          }

          v11 = v6 + 1;
          if (v9 < v11)
          {
LABEL_28:
            __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
          }

          if (v9 <= v11)
          {
            return v4;
          }

          v12 = *(v10 + v6);
          v13 = *(v10 + v11);
          if ((v13 & 4) != 0)
          {
            v14 = v6 + 2;
            if (v9 < v14)
            {
              goto LABEL_28;
            }

            if (v9 <= v14)
            {
              return v4;
            }

            v7 += *(v10 + v14) * *(v10 + v14);
          }

          else
          {
            v7 = 65025;
          }

          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v6 += v12;
        }

        while (v6 && v12 != 0);
        return v7 * 0.0000153787005;
      }
    }

    else if (sub_1B5DAEE68(a2 + 40, v2))
    {
      return 0.0;
    }

    else
    {
      return 1.0;
    }
  }

  return v4;
}

float sub_1B5D887EC(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 6)
  {
    sub_1B5D24008();
  }

  v4 = 0.0;
  if (*a2 == 1 && *(v2 + 12) != -1 && (*(v2 + 9) & 1) == 0)
  {
    v18 = 0;
    if (sub_1B5D137A8((a2 + 48), v2, &v18))
    {
      if ((~v18 & 0x7FFFFF) != 0)
      {
        if ((v18 & 0x400000) != 0 || (v7 = v18 & 0x1FFFFF, (v18 & 0x1FFFFF) == 0))
        {
          if ((v18 & 0x400000) != 0)
          {
            v17 = v18 * 0.00392156863;
            return v17 * v17;
          }

          else if (sub_1B5DAE718(a2 + 40, v2))
          {
            return 0.0;
          }

          else
          {
            return 1.0;
          }
        }

        else if (*a2 == 1)
        {
          v8 = 0;
          v9 = *(a2 + 24);
          v10 = v9[1];
          do
          {
            if (v10 <= v7)
            {
              break;
            }

            v11 = *v9;
            if (!*v9)
            {
              return v4;
            }

            v12 = v7 + 1;
            if (v10 < v12)
            {
LABEL_35:
              __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
            }

            if (v10 <= v12)
            {
              return v4;
            }

            v13 = *(v11 + v7);
            v14 = *(v11 + v12);
            if ((v14 & 4) != 0)
            {
              v15 = v7 + 2;
              if (v10 < v15)
              {
                goto LABEL_35;
              }

              if (v10 <= v15)
              {
                return v4;
              }

              v8 += *(v11 + v15) * *(v11 + v15);
            }

            else
            {
              v8 = 65025;
            }

            if ((v14 & 0x80) == 0)
            {
              break;
            }

            v7 += v13;
          }

          while (v7 && v13 != 0);
          return v8 * 0.0000153787005;
        }
      }
    }
  }

  return v4;
}

float sub_1B5D88984(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 5)
  {
    sub_1B5D24008();
  }

  v4 = 0.0;
  if (*a2 == 1 && (*v2 + 1) >= 2)
  {
    v17 = 0;
    if (sub_1B5D6EE88((a2 + 48), v2, &v17))
    {
      if ((~v17 & 0x7FFFFF) != 0)
      {
        if ((v17 & 0x400000) != 0 || (v6 = v17 & 0x1FFFFF, (v17 & 0x1FFFFF) == 0))
        {
          if ((v17 & 0x400000) != 0)
          {
            v16 = v17 * 0.00392156863;
            return v16 * v16;
          }

          else if (sub_1B5DAE218(a2 + 40, v2))
          {
            return 0.0;
          }

          else
          {
            return 1.0;
          }
        }

        else if (*a2 == 1)
        {
          v7 = 0;
          v8 = *(a2 + 24);
          v9 = v8[1];
          do
          {
            if (v9 <= v6)
            {
              break;
            }

            v10 = *v8;
            if (!*v8)
            {
              return v4;
            }

            v11 = v6 + 1;
            if (v9 < v11)
            {
LABEL_32:
              __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
            }

            if (v9 <= v11)
            {
              return v4;
            }

            v12 = *(v10 + v6);
            v13 = *(v10 + v11);
            if ((v13 & 4) != 0)
            {
              v14 = v6 + 2;
              if (v9 < v14)
              {
                goto LABEL_32;
              }

              if (v9 <= v14)
              {
                return v4;
              }

              v7 += *(v10 + v14) * *(v10 + v14);
            }

            else
            {
              v7 = 65025;
            }

            if ((v13 & 0x80) == 0)
            {
              break;
            }

            v6 += v12;
          }

          while (v6 && v12 != 0);
          return v7 * 0.0000153787005;
        }
      }
    }
  }

  return v4;
}

float sub_1B5D88B1C(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 4)
  {
    sub_1B5D24008();
  }

  v4 = 0.0;
  if (*a2 == 1 && *v2 && *v2 != 0xFFFFFFFFLL)
  {
    v19 = 0;
    v7 = sub_1B5D600EC((a2 + 48), v2, &v19);
    if (v7 && (~v19 & 0xFFFFFF) != 0)
    {
      if ((v19 & 0x400000) != 0 || (v8 = v19 & 0x1FFFFF, (v19 & 0x1FFFFF) == 0))
      {
        if ((v19 & 0x400000) != 0)
        {
          v18 = v19 * 0.00392156863;
          return v18 * v18;
        }

        else if (sub_1B5DADA48(a2 + 40, v2))
        {
          return 0.0;
        }

        else
        {
          return 1.0;
        }
      }

      else if (*a2 == 1)
      {
        v9 = 0;
        v10 = *(a2 + 24);
        v11 = v10[1];
        do
        {
          if (v11 <= v8)
          {
            break;
          }

          v12 = *v10;
          if (!*v10)
          {
            return v4;
          }

          v13 = v8 + 1;
          if (v11 < v13)
          {
LABEL_36:
            __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
          }

          if (v11 <= v13)
          {
            return v4;
          }

          v14 = *(v12 + v8);
          v15 = *(v12 + v13);
          if ((v15 & 4) != 0)
          {
            v16 = v8 + 2;
            if (v11 < v16)
            {
              goto LABEL_36;
            }

            if (v11 <= v16)
            {
              return v4;
            }

            v9 += *(v12 + v16) * *(v12 + v16);
          }

          else
          {
            v9 = 65025;
          }

          if ((v15 & 0x80) == 0)
          {
            break;
          }

          v8 += v14;
        }

        while (v8 && v14 != 0);
        return v9 * 0.0000153787005;
      }
    }
  }

  return v4;
}

float sub_1B5D88CB8(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 3)
  {
    sub_1B5D24008();
  }

  v4 = 0.0;
  if (*a2 == 1 && (*v2 + 1) >= 2)
  {
    v17 = 0;
    if (sub_1B5D64DE0(a2 + 48, v2, &v17))
    {
      if ((~v17 & 0x7FFFFF) != 0)
      {
        if ((v17 & 0x400000) != 0 || (v6 = v17 & 0x1FFFFF, (v17 & 0x1FFFFF) == 0))
        {
          if ((v17 & 0x400000) != 0)
          {
            v16 = v17 * 0.00392156863;
            return v16 * v16;
          }

          else if (sub_1B5DAD388(a2 + 40, v2))
          {
            return 0.0;
          }

          else
          {
            return 1.0;
          }
        }

        else if (*a2 == 1)
        {
          v7 = 0;
          v8 = *(a2 + 24);
          v9 = v8[1];
          do
          {
            if (v9 <= v6)
            {
              break;
            }

            v10 = *v8;
            if (!*v8)
            {
              return v4;
            }

            v11 = v6 + 1;
            if (v9 < v11)
            {
LABEL_32:
              __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
            }

            if (v9 <= v11)
            {
              return v4;
            }

            v12 = *(v10 + v6);
            v13 = *(v10 + v11);
            if ((v13 & 4) != 0)
            {
              v14 = v6 + 2;
              if (v9 < v14)
              {
                goto LABEL_32;
              }

              if (v9 <= v14)
              {
                return v4;
              }

              v7 += *(v10 + v14) * *(v10 + v14);
            }

            else
            {
              v7 = 65025;
            }

            if ((v13 & 0x80) == 0)
            {
              break;
            }

            v6 += v12;
          }

          while (v6 && v12 != 0);
          return v7 * 0.0000153787005;
        }
      }
    }
  }

  return v4;
}

float sub_1B5D88E50(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 2)
  {
    sub_1B5D24008();
  }

  v4 = 0.0;
  if (*a2 == 1 && (*v2 + 1) >= 2)
  {
    v17 = 0;
    if (sub_1B5D7601C((a2 + 48), v2, &v17))
    {
      if ((~v17 & 0x7FFFFF) != 0)
      {
        if ((v17 & 0x400000) != 0 || (v6 = v17 & 0x1FFFFF, (v17 & 0x1FFFFF) == 0))
        {
          if ((v17 & 0x400000) != 0)
          {
            v16 = v17 * 0.00392156863;
            return v16 * v16;
          }

          else if (sub_1B5DACCB8(a2 + 40, v2))
          {
            return 0.0;
          }

          else
          {
            return 1.0;
          }
        }

        else if (*a2 == 1)
        {
          v7 = 0;
          v8 = *(a2 + 24);
          v9 = v8[1];
          do
          {
            if (v9 <= v6)
            {
              break;
            }

            v10 = *v8;
            if (!*v8)
            {
              return v4;
            }

            v11 = v6 + 1;
            if (v9 < v11)
            {
LABEL_32:
              __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
            }

            if (v9 <= v11)
            {
              return v4;
            }

            v12 = *(v10 + v6);
            v13 = *(v10 + v11);
            if ((v13 & 4) != 0)
            {
              v14 = v6 + 2;
              if (v9 < v14)
              {
                goto LABEL_32;
              }

              if (v9 <= v14)
              {
                return v4;
              }

              v7 += *(v10 + v14) * *(v10 + v14);
            }

            else
            {
              v7 = 65025;
            }

            if ((v13 & 0x80) == 0)
            {
              break;
            }

            v6 += v12;
          }

          while (v6 && v12 != 0);
          return v7 * 0.0000153787005;
        }
      }
    }
  }

  return v4;
}

float sub_1B5D88FE8(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 1)
  {
    sub_1B5D24008();
  }

  v4 = 0.0;
  if (*a2 == 1 && (*v2 + 1) >= 2)
  {
    v17 = 0;
    if (sub_1B5D6EE88((a2 + 48), v2, &v17))
    {
      if ((~v17 & 0x7FFFFF) != 0)
      {
        if ((v17 & 0x400000) != 0 || (v6 = v17 & 0x1FFFFF, (v17 & 0x1FFFFF) == 0))
        {
          if ((v17 & 0x400000) != 0)
          {
            v16 = v17 * 0.00392156863;
            return v16 * v16;
          }

          else if (sub_1B5DAC57C(a2 + 40, v2))
          {
            return 0.0;
          }

          else
          {
            return 1.0;
          }
        }

        else if (*a2 == 1)
        {
          v7 = 0;
          v8 = *(a2 + 24);
          v9 = v8[1];
          do
          {
            if (v9 <= v6)
            {
              break;
            }

            v10 = *v8;
            if (!*v8)
            {
              return v4;
            }

            v11 = v6 + 1;
            if (v9 < v11)
            {
LABEL_32:
              __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
            }

            if (v9 <= v11)
            {
              return v4;
            }

            v12 = *(v10 + v6);
            v13 = *(v10 + v11);
            if ((v13 & 4) != 0)
            {
              v14 = v6 + 2;
              if (v9 < v14)
              {
                goto LABEL_32;
              }

              if (v9 <= v14)
              {
                return v4;
              }

              v7 += *(v10 + v14) * *(v10 + v14);
            }

            else
            {
              v7 = 65025;
            }

            if ((v13 & 0x80) == 0)
            {
              break;
            }

            v6 += v12;
          }

          while (v6 && v12 != 0);
          return v7 * 0.0000153787005;
        }
      }
    }
  }

  return v4;
}

float sub_1B5D89180(unsigned __int8 ***a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 8))
  {
    sub_1B5D24008();
  }

  v3 = 0;
  if (*(a2 + 20) == 1 && (*v2 & 0x80000000) == 0)
  {
    v4 = *(v2 + 2);
    v5 = !*v2 && v4 == 0;
    v6 = v5 && v2[24] == 0;
    if (!v6 && (HIBYTE(v4) & 3) < *v2 + 1)
    {
      if ((v4 & 0x20000000) != 0 && (v7 = *(v2 + 4) & 0x7FFFFFFF) != 0)
      {
        v8 = 0;
        v9 = *(a2 + 8);
        v10 = v9[1];
        v11 = v10 - 1;
        do
        {
          if (v10 <= v7)
          {
            break;
          }

          if (v10 < v7)
          {
            goto LABEL_40;
          }

          if (v11 < v7)
          {
            return *&v3;
          }

          v12 = *v9;
          if (!*v9)
          {
            return *&v3;
          }

          v13 = v7 + 1;
          if (v10 < v13)
          {
            goto LABEL_40;
          }

          if (v11 < v13)
          {
            return *&v3;
          }

          v14 = *(v12 + v7);
          v15 = *(v12 + v13);
          if ((v15 & 4) != 0)
          {
            v16 = v7 + 2;
            if (v10 < v16)
            {
LABEL_40:
              __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
            }

            if (v11 < v16)
            {
              return *&v3;
            }

            v8 += *(v12 + v16) * *(v12 + v16);
          }

          else
          {
            v8 = 65025;
          }

          if ((v15 & 0x80) == 0)
          {
            break;
          }

          v7 += v14;
        }

        while (v7 && v14 != 0);
        *&v3 = v8 * 0.0000153787005;
      }

      else if ((v4 & 0x10000000) != 0)
      {
        LOBYTE(v3) = v2[16];
        v18 = v3 * 0.00392156863;
        *&v3 = v18 * v18;
      }

      else if ((v4 & 0xFFFFFF) == 0)
      {
        LODWORD(v3) = 1.0;
        if ((*(v2 + 2) & 0xFF00000000) == 0)
        {
          *&v3 = 0.0;
        }
      }
    }
  }

  return *&v3;
}

uint64_t sub_1B5D89300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1 + 40;
  v11 = a3;
  v3 = *(a2 + 14352);
  if (v3 == -1)
  {
    sub_1B5D24008();
  }

  v12 = &v10;
  (off_1F2D59EA0[v3])(&v12);
  v9 = *(a1 + 80);
  v8 = (a1 + 80);
  result = v9;
  if (v9)
  {
    sub_1B5D89300(result, a2, a3);
    result = sub_1B5D8939C(*v8);
    if ((result & 1) == 0)
    {
      return sub_1B5D87778(v8, 0);
    }
  }

  return result;
}

uint64_t sub_1B5D8939C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == -1)
  {
    goto LABEL_9;
  }

  v6 = &v5;
  if (!(off_1F2D59D68[v1])(&v6, a1))
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if (v3 == -1)
  {
LABEL_9:
    sub_1B5D24008();
  }

  v6 = &v5;
  if ((off_1F2D59D68[v3])(&v6, a1 + 40))
  {
    return 1;
  }

LABEL_6:
  result = *(a1 + 80);
  if (result)
  {
    return sub_1B5D8939C();
  }

  return result;
}

void sub_1B5D89434(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v28 = a2 + 40;
  v3 = *(a3 + 14352);
  if (v3 == -1)
  {
    sub_1B5D24008();
  }

  v24 = &v28;
  (off_1F2D59F08[v3])(&v26, &v24, a3);
  v7 = *(a2 + 80);
  if (v7)
  {
    sub_1B5D89434(&v24, v7, a3);
    v8 = v26;
    v9 = v24;
    v10 = v25;
    if ((v25 - v24 - 0x5555555555555555 * ((v27 - v26) >> 4)) >= 0x100)
    {
      v11 = 256;
    }

    else
    {
      v11 = v25 - v24 - 0x5555555555555555 * ((v27 - v26) >> 4);
    }

    sub_1B5D896D0(a1, v11);
    v12 = v9;
    while (v8 != v27)
    {
      v13 = *v8;
      if (v12 == v10)
      {
        goto LABEL_11;
      }

      v14 = *v12;
      if (v13 == v14)
      {
        LOBYTE(v28) = *v8;
        sub_1B5D7A7FC(a1, &v28);
        v8 += 48;
LABEL_16:
        v12 = (v12 + 1);
      }

      else
      {
        if (v13 >= v14)
        {
          goto LABEL_14;
        }

LABEL_11:
        LOBYTE(v28) = *v8;
        sub_1B5D7A7FC(a1, &v28);
        v8 += 48;
      }
    }

    if (v12 == v10)
    {
      if (v9)
      {
        operator delete(v9);
      }

      goto LABEL_34;
    }

    LOBYTE(v14) = *v12;
LABEL_14:
    LOBYTE(v28) = v14;
    sub_1B5D7A7FC(a1, &v28);
    goto LABEL_16;
  }

  v15 = v26;
  v16 = v27;
  if (v26 != v27)
  {
    v17 = 0;
    do
    {
      v18 = a1[2];
      if (v17 >= v18)
      {
        v19 = *a1;
        v20 = &v17[-*a1];
        v21 = (v20 + 1);
        if ((v20 + 1) < 0)
        {
          sub_1B5D04FA0();
        }

        v22 = v18 - v19;
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          operator new();
        }

        *v20 = *v15;
        v17 = v20 + 1;
        memcpy(0, v19, v20);
        *a1 = 0;
        a1[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v17++ = *v15;
      }

      a1[1] = v17;
      v15 += 48;
    }

    while (v15 != v16);
  }

LABEL_34:
  v24 = &v26;
  sub_1B5D89790(&v24);
}

void sub_1B5D8967C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v14)
  {
    operator delete(v14);
  }

  a10 = &a13;
  sub_1B5D89790(&a10);
  v16 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void *sub_1B5D896D0(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    v2 = result[1] - *result;
    operator new();
  }

  return result;
}

void sub_1B5D89790(void ***a1)
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
        v6 = v4 - 48;
        sub_1B5D264A0((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **sub_1B5D89818@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 12)
  {
    sub_1B5D24008();
  }

  if (*(v4 + 12) == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C5A0;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5DB1790(a2 + 40, v4);
    result = sub_1B5DAE7DC(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D898E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DAE7DC(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D89900@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 11)
  {
    sub_1B5D24008();
  }

  if (*v4 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C4A0;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5DB10D0(a2 + 40, v4, v6);
    result = sub_1B5D6ECA0(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D899C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6ECA0(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D899E8@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 10)
  {
    sub_1B5D24008();
  }

  if (*v4 == 0xFFFFFFFFLL)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C420;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5DB08E0((a2 + 40), v4, v6);
    result = sub_1B5D5FC3C(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D89AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FC3C(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D89AD4@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 9)
  {
    sub_1B5D24008();
  }

  if (*v4 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C3A0;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5DAFF5C((a2 + 40), v4, v6);
    result = sub_1B5DAD44C(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D89B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DAD44C(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D89BBC@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 8)
  {
    sub_1B5D24008();
  }

  if (*v4 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C320;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5DAF808(a2 + 40, v4, v6);
    result = sub_1B5D6ECA0(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D89C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6ECA0(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D89CA4@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 7)
  {
    sub_1B5D24008();
  }

  if (*v4 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C2A0;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5DAF0B0(a2 + 40, v4, v6);
    result = sub_1B5D75CCC(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D89D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D75CCC(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D89D8C@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 6)
  {
    sub_1B5D24008();
  }

  if (*(v4 + 12) == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C220;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5D133EC(a2 + 48, v4);
    result = sub_1B5DAE7DC(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D89E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DAE7DC(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D89E74@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 5)
  {
    sub_1B5D24008();
  }

  if (*v4 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C1A0;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5D72808(a2 + 48, v4, v6);
    result = sub_1B5D6ECA0(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D89F3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6ECA0(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D89F5C@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 4)
  {
    sub_1B5D24008();
  }

  if (*v4 == 0xFFFFFFFFLL)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C120;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5D5FB60((a2 + 48), v4, v6);
    result = sub_1B5D5FC3C(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D8A028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FC3C(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D8A048@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 3)
  {
    sub_1B5D24008();
  }

  if (*v4 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C0A0;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5D64868((a2 + 48), v4, v6);
    result = sub_1B5DAD44C(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D8A110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DAD44C(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D8A130@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 2)
  {
    sub_1B5D24008();
  }

  if (*v4 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5C020;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5D75328(a2 + 48, v4, v6);
    result = sub_1B5D75CCC(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D8A1F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D75CCC(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1B5D8A218@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v4 = **result;
  if (*(v4 + 32) != 1)
  {
    sub_1B5D24008();
  }

  if (*v4 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6[0] = &unk_1F2D5BFA0;
    v6[1] = a3;
    v6[3] = v6;
    sub_1B5D6E3B8(a2 + 48, v4, v6);
    result = sub_1B5D6ECA0(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D8A2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6ECA0(va);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

void sub_1B5D8A300(char ***a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = **a1;
  if (*(v4 + 8))
  {
    sub_1B5D24008();
  }

  v39 = 0;
  v40 = 0uLL;
  v5 = *v4;
  if (v5 < 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_40;
  }

  v6 = *v4 + 1;
  v7 = *(v4 + 2);
  if ((HIBYTE(v7) & 3) >= v6)
  {
    v36 = *(v4 + 2);
    v37 = *(v4 + 2);
    v38[0] = *(v4 + 6);
    if ((v6 & 0x80) == 0)
    {
      v12 = *(v38 + v6);
    }

    v41 = &v39;
    sub_1B5D935C8(1uLL);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a2 + 20) == 1)
  {
    v8 = *&v7 & 0xFFFFFFLL;
    if ((v7 & 0xFFFFFF) != 0)
    {
      v9 = *(a2 + 3228);
      if (v8 < v9)
      {
        __assert_rtn("children", "TIWordTrie.cpp", 743, "cursor.is_root() || first_child_offset >= m_trie_root_offset");
      }

      v10 = **a2;
      v11 = v10 + v8;
    }

    else
    {
      v13 = v4[24];
      if (v5)
      {
        v14 = 0;
      }

      else
      {
        v14 = v7 == 0;
      }

      if (!v14 || v13 != 0)
      {
        goto LABEL_40;
      }

      v11 = 0;
      v9 = *(a2 + 3228);
      v10 = **a2;
    }

    v16 = sub_1B5D931A0(a2 + 6, v11, v10 + v9);
    v17 = v16[2];
    if (0xAAAAAAAAAAAAAAABLL * ((a3[2] - *a3) >> 4) < v17)
    {
      v18 = a3[1];
      v45 = a3;
      sub_1B5D935C8(v17);
    }

    if (v17)
    {
      v19 = 0;
      v20 = v16 + 68;
      v21 = v16 + 3;
      do
      {
        v22 = &v20[6 * *(v21 + v19)];
        if ((*v22 & 0x10FFFFFF) != 0x10000000 || *(v22 + 12))
        {
          v23 = *(v22 + 16);
          v25 = a3[1];
          v24 = a3[2];
          if (v25 >= v24)
          {
            v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *a3) >> 4);
            v28 = v27 + 1;
            if (v27 + 1 > 0x555555555555555)
            {
              sub_1B5D04FA0();
            }

            v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a3) >> 4);
            if (2 * v29 > v28)
            {
              v28 = 2 * v29;
            }

            if (v29 >= 0x2AAAAAAAAAAAAAALL)
            {
              v30 = 0x555555555555555;
            }

            else
            {
              v30 = v28;
            }

            v45 = a3;
            if (v30)
            {
              sub_1B5D935C8(v30);
            }

            v42 = 0;
            v43 = 48 * v27;
            v44 = 48 * v27;
            sub_1B5D93554((48 * v27), v23, v22);
            *&v44 = v44 + 48;
            v31 = a3[1];
            v32 = v43 + *a3 - v31;
            sub_1B5D93620(*a3, v31, v32);
            v33 = *a3;
            *a3 = v32;
            v34 = a3[2];
            v35 = v44;
            *(a3 + 1) = v44;
            *&v44 = v33;
            *(&v44 + 1) = v34;
            v42 = v33;
            v43 = v33;
            sub_1B5D936D0(&v42);
            v26 = v35;
          }

          else
          {
            sub_1B5D93554(a3[1], *(v22 + 16), &v20[6 * *(v21 + v19)]);
            v26 = v25 + 48;
          }

          a3[1] = v26;
          LODWORD(v17) = v16[2];
        }

        ++v19;
      }

      while (v19 < v17);
    }
  }

LABEL_40:
  v42 = &v39;
  sub_1B5D89790(&v42);
}

void sub_1B5D8A6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, void **);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  sub_1B5D936D0(va3);
  sub_1B5D89790(va2);
  va_copy(v4, va1);
  sub_1B5D89790(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D8A778(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 40;
  v2 = *(a2 + 14352);
  if (v2 == -1)
  {
    sub_1B5D24008();
  }

  v7 = &v6;
  if ((off_1F2D59F70[v2])(&v7))
  {
    return 1;
  }

  result = *(a1 + 80);
  if (result)
  {
    return sub_1B5D8A778(result, a2);
  }

  return result;
}

uint64_t sub_1B5D8A7F4(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 12)
  {
    sub_1B5D24008();
  }

  if (*(v3 + 12) == -1)
  {
    return 0;
  }

  if (*(v3 + 9))
  {
    return 1;
  }

  return sub_1B5DB14C0(a2 + 40, v3);
}

uint64_t sub_1B5D8A854(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 11)
  {
    sub_1B5D24008();
  }

  if (*v3 == -1)
  {
    return 0;
  }

  if (!*v3)
  {
    return 1;
  }

  return sub_1B5DB0F10(a2 + 40, v3);
}

uint64_t sub_1B5D8A8B0(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 10)
  {
    sub_1B5D24008();
  }

  if (!*v3)
  {
    return 1;
  }

  if (*v3 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  return sub_1B5DB0518(a2 + 40, v3);
}

uint64_t sub_1B5D8A910(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 9)
  {
    sub_1B5D24008();
  }

  if (*v3 == -1)
  {
    return 0;
  }

  if (!*v3)
  {
    return 1;
  }

  return sub_1B5DAFD14(a2 + 40, v3);
}

uint64_t sub_1B5D8A96C(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 8)
  {
    sub_1B5D24008();
  }

  if (*v3 == -1)
  {
    return 0;
  }

  if (!*v3)
  {
    return 1;
  }

  return sub_1B5DAF5C8(a2 + 40, v3);
}

uint64_t sub_1B5D8A9C8(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 7)
  {
    sub_1B5D24008();
  }

  if (*v3 == -1)
  {
    return 0;
  }

  if (!*v3)
  {
    return 1;
  }

  return sub_1B5DAEE68(a2 + 40, v3);
}

uint64_t sub_1B5D8AA24(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 6)
  {
    sub_1B5D24008();
  }

  if (*(v3 + 12) == -1)
  {
    return 0;
  }

  if (*(v3 + 9))
  {
    return 1;
  }

  return sub_1B5DAE718(a2 + 40, v3);
}

uint64_t sub_1B5D8AA84(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 5)
  {
    sub_1B5D24008();
  }

  if (*v3 == -1)
  {
    return 0;
  }

  if (!*v3)
  {
    return 1;
  }

  return sub_1B5DAE218(a2 + 40, v3);
}

uint64_t sub_1B5D8AAE0(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 4)
  {
    sub_1B5D24008();
  }

  if (!*v3)
  {
    return 1;
  }

  if (*v3 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  return sub_1B5DADA48(a2 + 40, v3);
}

uint64_t sub_1B5D8AB40(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 3)
  {
    sub_1B5D24008();
  }

  if (*v3 == -1)
  {
    return 0;
  }

  if (!*v3)
  {
    return 1;
  }

  return sub_1B5DAD388(a2 + 40, v3);
}

uint64_t sub_1B5D8AB9C(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 2)
  {
    sub_1B5D24008();
  }

  if (*v3 == -1)
  {
    return 0;
  }

  if (!*v3)
  {
    return 1;
  }

  return sub_1B5DACCB8(a2 + 40, v3);
}

uint64_t sub_1B5D8ABF8(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 1)
  {
    sub_1B5D24008();
  }

  if (*v3 == -1)
  {
    return 0;
  }

  if (!*v3)
  {
    return 1;
  }

  return sub_1B5DAC57C(a2 + 40, v3);
}

BOOL sub_1B5D8AC54(char ***a1)
{
  v1 = **a1;
  if (*(v1 + 8))
  {
    sub_1B5D24008();
  }

  if (*v1 < 0)
  {
    return 0;
  }

  v2 = *(v1 + 2);
  return (HIBYTE(v2) & 3) >= *v1 + 1 || !(*v1 | v2) && !v1[24] || (v2 & 0xFFFFFF) != 0;
}

void sub_1B5D8ACC0(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = a1;
  v63 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v45 = (a2 + 40);
  v51 = a2 + 40;
  v5 = *(a3 + 14352);
  if (v5 == -1)
  {
    sub_1B5D24008();
  }

  v7 = a3;
  v8 = a2;
  v55 = &v51;
  if ((off_1F2D59FD8[v5])(&v55, a3))
  {
    v9 = *(v8 + 92);
    v10 = *a4;
    if (v10 >= v9)
    {
      if (*(v8 + 93))
      {
        v11 = 14360;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v7 + 30120);
      if (!v12)
      {
        __assert_rtn("derive_words", "TIStemSuffixDictionaryCursor.cpp", 141, "converter");
      }

      v42 = a4 + 1;
      v43 = v4;
      if (v10 <= 0xE)
      {
        v13 = a4 + 1;
      }

      else
      {
        v13 = *(a4 + 1);
      }

      sub_1B5CDD214(&v61, v9, v13, v9);
      v55 = v8;
      v56 = &v61;
      v14 = *(v7 + v11 + 14352);
      if (v14 == -1)
      {
        sub_1B5D24008();
      }

      v48[0] = &v55;
      (off_1F2D5A040[v14])(&v51, v48);
      v44 = v7;
      if (v61 >= 0xFu && v62)
      {
        MEMORY[0x1B8C880C0](v62, 0x1000C8077774924);
      }

      v16 = v51;
      v15 = v52;
      if (v51 != v52)
      {
        while (1)
        {
          v50 = 0;
          if (sub_1B5D4D8B8(v12, *(v16 + 60), &v50, 0))
          {
            break;
          }

LABEL_52:
          v16 += 88;
          if (v16 == v15)
          {
            goto LABEL_53;
          }
        }

        sub_1B5D4D9E8(&v61, v12, v50);
        v17 = sub_1B5D4DA24(&__len, v12, v50);
        v18 = __len.n128_u16[0];
        if (v61)
        {
          if (!__len.n128_u16[0])
          {
LABEL_49:
            if (v62 && BYTE6(v61) == 1)
            {
              free(v62);
            }

            goto LABEL_52;
          }

          v19 = *a4;
          v20 = a4;
          if (v19 <= 0xE)
          {
            v21 = v42;
          }

          else
          {
            v21 = *(a4 + 1);
          }

          v22 = v8;
          v23 = *(v8 + 92);
          if (__len.n128_u16[0] >= 0xFu)
          {
            v24 = __len.n128_u64[1];
          }

          else
          {
            v24 = &__len.n128_i8[2];
          }

          v25 = sub_1B5CDD214(&v46, v19 - v23 + __len.n128_u16[0], v24, __len.n128_u16[0]);
          if (v19 != v23)
          {
            memmove(v25, v21 + v23, v19 - v23);
          }

          v55 = v45;
          v56 = &v46;
          v26 = *(v44 + 14352);
          v4 = v43;
          if (v26 == -1)
          {
            sub_1B5D24008();
          }

          v53 = &v55;
          (off_1F2D5A040[v26])(v48, &v53);
          if (v46 >= 0xFu && v47)
          {
            MEMORY[0x1B8C880C0](v47, 0x1000C8077774924);
          }

          v28 = v48[0];
          v27 = v48[1];
          while (v28 != v27)
          {
            if (*v28 >= v61)
            {
              v29 = *(v16 + 60);
              v30 = *(v28 + 15);
              LODWORD(v55) = 0;
              v46 = 0;
              if (sub_1B5D4D8B8(v12, v29, &v55, &v46))
              {
                LODWORD(v53) = 0;
                v54 = 0;
                if (sub_1B5D4D950(v12, v30, &v53, &v54))
                {
                  if (v55 == v53)
                  {
                    v31 = *(*(v12 + 56) + 4 * (v55 - *(v12 + 4))) + v46 * (*(*(v12 + 32) + 4 * (v55 - *(v12 + 4) + 1)) - *(*(v12 + 32) + 4 * (v55 - *(v12 + 4)))) + v54;
                    if (v31)
                    {
                      sub_1B5D5CABC(&v55, v16);
                      v32 = *(v16 + 32);
                      v33 = *(v16 + 48);
                      v34 = *(v16 + 64);
                      v60 = *(v16 + 80);
                      v58 = v33;
                      v59 = v34;
                      v57 = v32;
                      sub_1B5D335E0(&v55, v28, v61, v31);
                      v35 = v43[1];
                      if (v35 >= v43[2])
                      {
                        v39 = sub_1B5D2C828(v43, &v55);
                      }

                      else
                      {
                        sub_1B5D5CABC(v43[1], &v55);
                        v36 = v57;
                        v37 = v58;
                        v38 = v59;
                        *(v35 + 80) = v60;
                        *(v35 + 48) = v37;
                        *(v35 + 64) = v38;
                        *(v35 + 32) = v36;
                        v39 = v35 + 88;
                      }

                      v43[1] = v39;
                      if (v56)
                      {
                        if (BYTE6(v55) == 1)
                        {
                          free(v56);
                        }
                      }
                    }
                  }
                }
              }
            }

            v28 += 44;
          }

          v55 = v48;
          sub_1B5D26264(&v55);
          a4 = v20;
          v8 = v22;
        }

        if (v18 >= 0xF && __len.n128_u64[1])
        {
          MEMORY[0x1B8C880C0](__len.n128_u64[1], 0x1000C8077774924, v17);
        }

        goto LABEL_49;
      }

LABEL_53:
      v55 = &v51;
      sub_1B5D26264(&v55);
      v7 = v44;
    }
  }

  v40 = *(v8 + 80);
  if (v40)
  {
    sub_1B5D8ACC0(&v55, v40, v7, a4);
    sub_1B5D2C6E8(v4, v55, v56);
    v61 = &v55;
    sub_1B5D26264(&v61);
  }

  v41 = *MEMORY[0x1E69E9840];
}

void sub_1B5D8B188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  *(v29 - 128) = a12;
  sub_1B5D26264((v29 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D8B2DC(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 12)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if (*(v2 + 12) == -1 || (*(v2 + 9) & 1) != 0)
  {
    return 0;
  }

  result = sub_1B5DB144C((a2 + 40), v2, &v5);
  if (result)
  {
    if ((v5 & 0x3FFFFFFF) != 0)
    {
      return 1;
    }

    else
    {
      return sub_1B5DB14C0(a2 + 40, v2) ^ 1;
    }
  }

  return result;
}

uint64_t sub_1B5D8B374(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 11)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v2 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAF530((a2 + 40), v2, &v5);
  if (result)
  {
    if ((v5 & 0x3FFFFFFF) != 0)
    {
      return 1;
    }

    else
    {
      return sub_1B5DB0F10(a2 + 40, v2) ^ 1;
    }
  }

  return result;
}

uint64_t sub_1B5D8B408(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 10)
  {
    sub_1B5D24008();
  }

  v6 = 0;
  if (*v2)
  {
    v3 = *v2 == 0xFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  result = sub_1B5DB0480((a2 + 40), v2, &v6);
  if (result)
  {
    if ((v6 & 0x3FFFFFFF) != 0)
    {
      return 1;
    }

    else
    {
      return sub_1B5DB0518(a2 + 40, v2) ^ 1;
    }
  }

  return result;
}

uint64_t sub_1B5D8B4A0(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 9)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v2 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAFC84(a2 + 40, v2, &v5);
  if (result)
  {
    if ((v5 & 0x3FFFFFFF) != 0)
    {
      return 1;
    }

    else
    {
      return sub_1B5DAFD14(a2 + 40, v2) ^ 1;
    }
  }

  return result;
}

uint64_t sub_1B5D8B534(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 8)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v2 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAF530((a2 + 40), v2, &v5);
  if (result)
  {
    if ((v5 & 0x3FFFFFFF) != 0)
    {
      return 1;
    }

    else
    {
      return sub_1B5DAF5C8(a2 + 40, v2) ^ 1;
    }
  }

  return result;
}

uint64_t sub_1B5D8B5C8(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 7)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v2 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAEDD8((a2 + 40), v2, &v5);
  if (result)
  {
    if ((v5 & 0x3FFFFFFF) != 0)
    {
      return 1;
    }

    else
    {
      return sub_1B5DAEE68(a2 + 40, v2) ^ 1;
    }
  }

  return result;
}

uint64_t sub_1B5D8B65C(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 6)
  {
    sub_1B5D24008();
  }

  if (*(v2 + 12) == -1)
  {
    return 0;
  }

  if (*(v2 + 9))
  {
    return 0;
  }

  v5 = 0;
  if (!sub_1B5D137A8((a2 + 48), v2, &v5) || (~v5 & 0x7FFFFF) == 0)
  {
    return 0;
  }

  if ((v5 & 0x5FFFFF) != 0)
  {
    return 1;
  }

  return sub_1B5DAE718(a2 + 40, v2) ^ 1;
}

uint64_t sub_1B5D8B704(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 5)
  {
    sub_1B5D24008();
  }

  if ((*v2 + 1) < 2)
  {
    return 0;
  }

  v5 = 0;
  if (!sub_1B5D6EE88((a2 + 48), v2, &v5) || (~v5 & 0x7FFFFF) == 0)
  {
    return 0;
  }

  if ((v5 & 0x5FFFFF) != 0)
  {
    return 1;
  }

  return sub_1B5DAE218(a2 + 40, v2) ^ 1;
}

uint64_t sub_1B5D8B7A8(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 4)
  {
    sub_1B5D24008();
  }

  if (*v2)
  {
    v3 = *v2 == 0xFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v7 = 0;
  v6 = sub_1B5D600EC((a2 + 48), v2, &v7);
  if (!v6 || (~v7 & 0xFFFFFF) == 0)
  {
    return 0;
  }

  if ((v7 & 0x5FFFFF) != 0)
  {
    return 1;
  }

  return sub_1B5DADA48(a2 + 40, v2) ^ 1;
}

uint64_t sub_1B5D8B850(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 3)
  {
    sub_1B5D24008();
  }

  if ((*v2 + 1) < 2)
  {
    return 0;
  }

  v5 = 0;
  if (!sub_1B5D64DE0(a2 + 48, v2, &v5) || (~v5 & 0x7FFFFF) == 0)
  {
    return 0;
  }

  if ((v5 & 0x5FFFFF) != 0)
  {
    return 1;
  }

  return sub_1B5DAD388(a2 + 40, v2) ^ 1;
}

uint64_t sub_1B5D8B8F4(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 32) != 2)
  {
    sub_1B5D24008();
  }

  if ((*v2 + 1) < 2)
  {
    return 0;
  }

  v5 = 0;
  if (!sub_1B5D7601C((a2 + 48), v2, &v5) || (~v5 & 0x7FFFFF) == 0)
  {
    return 0;
  }

  if ((v5 & 0x5FFFFF) != 0)
  {
    return 1;
  }

  return sub_1B5DACCB8(a2 + 40, v2) ^ 1;
}

uint64_t sub_1B5D8B998(unsigned int ***a1, uint64_t a2)
{
  v2 = **a1;
  if (v2[8] != 1)
  {
    sub_1B5D24008();
  }

  if ((*v2 + 1) < 2)
  {
    return 0;
  }

  v5 = 0;
  if (!sub_1B5D6EE88((a2 + 48), v2, &v5) || (~v5 & 0x7FFFFF) == 0)
  {
    return 0;
  }

  if ((v5 & 0x5FFFFF) != 0)
  {
    return 1;
  }

  return sub_1B5DAC57C(a2 + 40, v2) ^ 1;
}

BOOL sub_1B5D8BA3C(char ***a1)
{
  v1 = **a1;
  if (*(v1 + 8))
  {
    sub_1B5D24008();
  }

  if (*v1 < 0)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *(v1 + 2);
  if (!(v2 | v3))
  {
    v3 = 0;
    if (!v1[24])
    {
      return 0;
    }
  }

  if ((HIBYTE(v3) & 3) >= (v2 + 1))
  {
    return 0;
  }

  if ((v3 & 0x20000000) == 0)
  {
    if ((v3 & 0x10000000) != 0)
    {
      return 1;
    }

    goto LABEL_12;
  }

  result = 1;
  if ((v3 & 0x10000000) == 0 && (*(v1 + 2) & 0x7FFFFFFFLL) == 0)
  {
LABEL_12:
    if ((v3 & 0xFFFFFF) == 0)
    {
      return v1[20] != 0;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B5D8BAD4(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 40;
  v2 = *(a2 + 14352);
  if (v2 == -1)
  {
    sub_1B5D24008();
  }

  v7 = &v6;
  if ((off_1F2D59FD8[v2])(&v7))
  {
    return 1;
  }

  result = *(a1 + 80);
  if (result)
  {
    return sub_1B5D8BAD4(result, a2);
  }

  return result;
}

uint64_t *sub_1B5D8BB50(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 80);
  v3 = *(a1 + 80);
  v5 = *a2;
  *a2 = 0;
  if (v3)
  {
    v7 = v5;
    sub_1B5D8BB50(v3, &v7);
    return sub_1B5D87778(&v7, 0);
  }

  else
  {

    return sub_1B5D87778(v4, v5);
  }
}

void sub_1B5D8BBC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D87778(va, 0);
  _Unwind_Resume(a1);
}

CFStringRef LXTransliterationEntryCopyNativeString(uint64_t a1)
{
  v1 = *(a1 + 47);
  if (v1 < 0)
  {
    return sub_1B5CDFA10(*(a1 + 24), *(a1 + 32));
  }

  else
  {
    return sub_1B5CDFA10((a1 + 24), v1);
  }
}

CFStringRef LXTransliterationEntryCopyPreferredTransliteratedString(uint64_t a1)
{
  v1 = *(a1 + 71);
  if (v1 < 0)
  {
    return sub_1B5CDFA10(*(a1 + 48), *(a1 + 56));
  }

  else
  {
    return sub_1B5CDFA10((a1 + 48), v1);
  }
}

void sub_1B5D8BC50(uint64_t a1, const __CFString *a2, int a3)
{
  v5 = *(a1 + 8);
  Current = CFAbsoluteTimeGetCurrent();

  sub_1B5D58334(v5, a2, a3, Current);
}

CFStringRef sub_1B5D8BCE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 80);
  v3 = (v1 + 88);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = strlen(v4);

  return sub_1B5CDFA10(v4, v5);
}

void sub_1B5D8BD48(void *a1)
{
  *a1 = &unk_1F2D558E0;
  v1 = a1[2];
  if (v1)
  {
    sub_1B5CDD904(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D8BDB4(void *a1)
{
  *a1 = &unk_1F2D558E0;
  v2 = a1[2];
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  return a1;
}

void sub_1B5D8BE00(uint64_t *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v3)
  {
    if (*a3)
    {
      v7 = sub_1B5D5D0F4(a2, a3, 0);
      v8 = sub_1B5D5CE34(a2, a3, v7);
      while (v8 != 0xFFFF || v7 != 0xFFFF)
      {
        sub_1B5D5D250(&v10, a2, v7, (v8 - v7));
        sub_1B5D8BF78(a1, &v10);
        v7 = sub_1B5D5D0F4(a2, a3, v8);
        v8 = sub_1B5D5CE34(a2, a3, v7);
        if (v11)
        {
          if (BYTE6(v10) == 1)
          {
            free(v11);
          }
        }
      }
    }

    else
    {
      sub_1B5D8BF78(a1, a2);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B5D8BF78(uint64_t *a1, unsigned __int16 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1B5D4D444(a1, a2);
  }

  else
  {
    sub_1B5D5CABC(a1[1], a2);
    result = v3 + 32;
    a1[1] = v3 + 32;
  }

  a1[1] = result;
  return result;
}

unsigned __int16 *sub_1B5D8BFCC(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0x100000;
  result[2] = 0;
  *(result + 6) = 0;
  *(result + 1) = 0;
  *(result + 16) = 0;
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    for (i = a3 - 32; v4 != i; v4 += 32)
    {
      sub_1B5D5D820(v5, v4);
      sub_1B5D5D820(v5, a4);
    }

    return sub_1B5D5D820(v5, i);
  }

  return result;
}

void sub_1B5D8C058(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D8C080(uint64_t a1, UChar32 a2, const char *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  src = a2;
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

    pErrorCode = U_ZERO_ERROR;
    pDestLength = 0;
    u_strFromUTF32(dest, 3, &pDestLength, &src, 1, &pErrorCode);
    v5 = u_strToUpper(v14, 5, dest, pDestLength, a3, &pErrorCode);
    v8 = 0;
    u_strToUTF8(__s1, 13, &v8, v14, v5, &pErrorCode);
    if (pErrorCode)
    {
      __assert_rtn("character_to_titlecase", "TIStringFunctions.cpp", 121, "errorcode == U_ZERO_ERROR");
    }

    sub_1B5D5D760(a1, __s1, 0xFFFFuLL);
    if (!*a1)
    {
LABEL_5:
      v6 = MEMORY[0x1B8C88AA0](src);
      sub_1B5D5CC40(a1, v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B5D8C1B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D8C1E4(uint64_t result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 0x100000;
  *(result + 4) = 0;
  *(result + 6) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a3)
  {
    v9 = result;
    v10 = a3;
    do
    {
      v11 = *a2++;
      result = sub_1B5D5DAB8(v9, "%02x", a3, a4, a5, a6, a7, a8, v11);
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_1B5D8C25C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D8C280(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D8C2F0()
{
  v2 = *MEMORY[0x1E69E9840];
  ucol_setStrength();
  ucol_setAttribute();
  result = 0;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D8C3F8()
{
  MEMORY[0x1B8C88010]();

  JUMPOUT(0x1B8C880F0);
}

uint64_t *sub_1B5D8C434(uint64_t *__dst, void *__src, unint64_t a3)
{
  v6 = *(__dst + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v9 = __dst[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < a3)
    {
      v10 = __dst[1];
LABEL_6:
      sub_1B5D7D0E4(__dst, v8, a3 - v8);
    }

    v6 = HIBYTE(v9);
    v7 = *__dst;
  }

  else
  {
    v7 = __dst;
    if (a3 > 0xA)
    {
      v8 = 10;
      goto LABEL_6;
    }
  }

  if (a3)
  {
    memmove(v7, __src, 2 * a3);
    LOBYTE(v6) = *(__dst + 23);
  }

  if ((v6 & 0x80) != 0)
  {
    __dst[1] = a3;
  }

  else
  {
    *(__dst + 23) = a3 & 0x7F;
  }

  *(v7 + a3) = 0;
  return __dst;
}

os_log_t sub_1B5D8C4F0()
{
  result = os_log_create("com.apple.Lexicon", "TIKeyboardCollator");
  qword_1EB90CB38 = result;
  return result;
}

void *sub_1B5D8C520(void *result)
{
  v1 = result;
  if ((atomic_load_explicit(qword_1ED833C00, memory_order_acquire) & 1) == 0)
  {
    result = __cxa_guard_acquire(qword_1ED833C00);
    if (result)
    {
      v3 = ucol_open();
      sub_1B5D8C624(&qword_1ED833C10, v3);
    }
  }

  if (dword_1EB90CB48 >= 1)
  {
    __assert_rtn("getRootCollator", "TIKeyboardCollator.cpp", 78, "U_SUCCESS(error)");
  }

  if (!qword_1ED833C10)
  {
    __assert_rtn("getRootCollator", "TIKeyboardCollator.cpp", 79, "*rootCollator");
  }

  v2 = qword_1ED833C18;
  *v1 = qword_1ED833C10;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B5D8C69C(void *a1)
{
  __cxa_begin_catch(a1);
  ucol_close();
  __cxa_rethrow();
}

uint64_t sub_1B5D8C6C8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56BE8))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D8C728(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D8C764(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.Lexicon-framework");
  if (BundleWithIdentifier)
  {
    v3 = CFBundleCopyResourceURL(BundleWithIdentifier, @"collator", @"dat", 0);
    v9 = v3;
    if (v3)
    {
      v8 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
      sub_1B5CE4DD0(v8, __p);
      operator new();
    }

    if (qword_1EB90CB40 != -1)
    {
      dispatch_once(&qword_1EB90CB40, &unk_1F2D5A0A8);
    }

    v4 = qword_1EB90CB38;
    if (!os_log_type_enabled(qword_1EB90CB38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(__p[0]) = 0;
    v5 = "failed to load the shared collator: could not find collator.dat in the resource bundle";
LABEL_13:
    _os_log_error_impl(&dword_1B5CDB000, v4, OS_LOG_TYPE_ERROR, v5, __p, 2u);
    goto LABEL_11;
  }

  if (qword_1EB90CB40 != -1)
  {
    dispatch_once(&qword_1EB90CB40, &unk_1F2D5A0A8);
  }

  v4 = qword_1EB90CB38;
  if (os_log_type_enabled(qword_1EB90CB38, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    v5 = "failed to load the shared collator: could not get the Lexicon.framework bundle";
    goto LABEL_13;
  }

LABEL_11:
  *a1 = 0;
  a1[1] = 0;
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B5D8CB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, const void *a18, const void *a19)
{
  if (a12)
  {
    sub_1B5CDD904(a12);
  }

  sub_1B5CDD904(v19);
  sub_1B5CE5794(&a18, 0);
  sub_1B5D23F18(&a19, 0);
  _Unwind_Resume(a1);
}

void sub_1B5D8CBE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    munmap(v2, *(a1 + 40));
  }

  v3 = *(a1 + 24);
  if (v3 != -1)
  {
    close(v3);
  }

  if (*(a1 + 71) < 0)
  {
    v4 = *(a1 + 48);

    operator delete(v4);
  }
}

void sub_1B5D8CC4C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D55288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D8CCC0(int a1, char *__s1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!__s1 || !strcmp(__s1, "root"))
  {
    v9 = 1;
    goto LABEL_48;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], __s1, 0x8000100u);
  *code = v4;
  v5 = CFLocaleCreate(v3, v4);
  v6 = v5;
  v42 = v5;
  if (!v5)
  {
    if (qword_1EB90CB40 != -1)
    {
      dispatch_once(&qword_1EB90CB40, &unk_1F2D5A0A8);
    }

    v10 = qword_1EB90CB38;
    if (os_log_type_enabled(qword_1EB90CB38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = 0;
      _os_log_impl(&dword_1B5CDB000, v10, OS_LOG_TYPE_DEFAULT, "could not create custom collator for locale=%@; using default custom collator", buf, 0xCu);
    }

    v9 = 1;
    goto LABEL_46;
  }

  Value = CFLocaleGetValue(v5, *MEMORY[0x1E695E6F0]);
  sub_1B5CE4DD0(Value, buf);
  v8 = HIBYTE(v46);
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    if (HIBYTE(v46) != 2)
    {
      goto LABEL_39;
    }

    if (*buf == 24932 || *buf == 25198 || *buf == 26982 || *buf == 30323)
    {
      v9 = 3;
      goto LABEL_45;
    }

LABEL_10:
    if (*buf != 28270)
    {
      if (*buf == 29300)
      {
        v9 = 2;
LABEL_45:
        CFRelease(v6);
LABEL_46:
        if (v4)
        {
          CFRelease(v4);
        }

LABEL_48:
        if ((atomic_load_explicit(qword_1ED833BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1ED833BF0))
        {
          sub_1B5D8C764(buf);
          xmmword_1ED833AD0 = *buf;
          __cxa_guard_release(qword_1ED833BF0);
        }

        v12 = xmmword_1ED833AD0;
        if (*(&xmmword_1ED833AD0 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_1ED833AD0 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v12)
        {
          code[0] = U_ZERO_ERROR;
          v13 = (*(v12 + 8) + 8 * v9);
          v15 = *(v13 - 1);
          v14 = *v13;
          sub_1B5D8C520(buf);
          v16 = ucol_openBinary();
          if (*&buf[8])
          {
            sub_1B5CDD904(*&buf[8]);
          }

          code[0] = sub_1B5D8C2F0();
          if (code[0] < U_ILLEGAL_ARGUMENT_ERROR)
          {
            if (v16)
            {
              goto LABEL_113;
            }
          }

          else
          {
            ucol_close();
          }
        }

        if (qword_1EB90CB40 != -1)
        {
          dispatch_once(&qword_1EB90CB40, &unk_1F2D5A0A8);
        }

        v17 = qword_1EB90CB38;
        if (os_log_type_enabled(qword_1EB90CB38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B5CDB000, v17, OS_LOG_TYPE_DEFAULT, "WARNING! Creating precompiled collator. This is expensive!", buf, 2u);
        }

        memset(buf, 0, sizeof(buf));
        v46 = 0;
        if (v9 <= 2)
        {
          if (v9 == 1)
          {
            v27 = 0;
            v19 = "&";
            do
            {
              v28 = v27 + 1;
            }

            while (*&asc_1B5DE7046[2 * v27++ + 2]);
            if (v28 < 0xB)
            {
              v22 = 0;
              do
              {
                v30 = &asc_1B5DE7046[2 * v22++];
              }

              while (*(v30 + 1));
              HIBYTE(v46) = v22 & 0x7F;
              if (!v22)
              {
                goto LABEL_82;
              }

              v24 = 2 * v22;
              v25 = "&";
              goto LABEL_81;
            }

            v26 = 0;
            do
            {
              v31 = &asc_1B5DE7046[2 * v26++];
            }

            while (*(v31 + 1));
          }

          else
          {
            v19 = aI_0;
            v26 = 21;
          }
        }

        else if (v9 == 3)
        {
          v19 = aZ;
          v26 = 54;
        }

        else if (v9 == 6)
        {
          v19 = &unk_1B5DE7912;
          v26 = 65;
        }

        else
        {
          v18 = 0;
          v19 = word_1B5DE7702;
          do
          {
            v20 = v18 + 1;
          }

          while (word_1B5DE7702[++v18]);
          if (v20 < 0xB)
          {
            v22 = 0;
            do
            {
              v23 = &word_1B5DE7702[v22++];
            }

            while (*(v23 + 1));
            HIBYTE(v46) = v22 & 0x7F;
            if (!v22)
            {
              goto LABEL_82;
            }

            v24 = 2 * v22;
            v25 = word_1B5DE7702;
LABEL_81:
            memcpy(buf, v25, v24);
LABEL_82:
            *&buf[2 * v22] = 0;
LABEL_91:
            if (v46 >= 0)
            {
              v33 = HIBYTE(v46);
            }

            else
            {
              v33 = *&buf[8];
            }

            v34 = v33 + 27;
            if ((v33 + 27) > 0x7FFFFFFFFFFFFFF7)
            {
              sub_1B5D114C8();
            }

            if (v34 > 0xA)
            {
              if ((v34 | 3) == 0xB)
              {
                v35 = 13;
              }

              else
              {
                v35 = (v34 | 3) + 1;
              }

              if ((v35 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1B5CE5968();
            }

            __dst[1] = 0;
            v41 = 0;
            __dst[0] = 0;
            HIBYTE(v41) = v33 + 27;
            if (v46 >= 0)
            {
              v36 = buf;
            }

            else
            {
              v36 = *buf;
            }

            memmove(__dst, v36, 2 * v33);
            v37 = __dst + 2 * v33;
            *v37 = xmmword_1B5DE7996;
            *(v37 + 1) = unk_1B5DE79A6;
            *(v37 + 2) = xmmword_1B5DE79B6;
            *(v37 + 46) = 0x20002700260027;
            *(v37 + 27) = 0;
            if (SHIBYTE(v46) < 0)
            {
              operator delete(*buf);
            }

            v43 = U_ZERO_ERROR;
            v38 = ucol_openRules();
            if (v43 >= U_ILLEGAL_ARGUMENT_ERROR)
            {
              operator new();
            }

            v16 = v38;
            v43 = sub_1B5D8C2F0();
            if (v43 >= U_ILLEGAL_ARGUMENT_ERROR)
            {
              ucol_close();
              v16 = 0;
            }

            if (SHIBYTE(v41) < 0)
            {
              operator delete(__dst[0]);
            }

LABEL_113:
            if (*(&v12 + 1))
            {
              sub_1B5CDD904(*(&v12 + 1));
            }

            sub_1B5D8C624(&v39, v16);
          }

          v26 = 0;
          do
          {
            v32 = &word_1B5DE7702[v26++];
          }

          while (*(v32 + 1));
        }

        sub_1B5D8C434(buf, v19, v26);
        goto LABEL_91;
      }

      goto LABEL_34;
    }

LABEL_116:
    v9 = 3;
    goto LABEL_43;
  }

  if (*&buf[8] == 2)
  {
    if (**buf == 24932 || **buf == 25198 || **buf == 26982)
    {
      goto LABEL_35;
    }

    if (**buf == 30323)
    {
      goto LABEL_116;
    }

    if ((v46 & 0x8000000000000000) == 0)
    {
      if (HIBYTE(v46) != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_10;
    }
  }

  if (*&buf[8] != 2 || **buf != 28270)
  {
    if (*&buf[8] != 2)
    {
      goto LABEL_36;
    }

    if (**buf == 29300)
    {
      v9 = 2;
      goto LABEL_43;
    }

    if (v46 < 0)
    {
LABEL_36:
      if (*&buf[8] != 2)
      {
        goto LABEL_39;
      }

      v11 = *buf;
      goto LABEL_38;
    }

    if (HIBYTE(v46) != 2)
    {
      goto LABEL_39;
    }

LABEL_34:
    v11 = buf;
LABEL_38:
    if (*v11 == 24948)
    {
      v9 = 5;
      goto LABEL_43;
    }

LABEL_39:
    if (sub_1B5D151A0(buf, "de"))
    {
      v9 = 6;
    }

    else
    {
      v9 = 1;
    }

    v8 = HIBYTE(v46);
LABEL_43:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_45;
    }

LABEL_44:
    operator delete(*buf);
    goto LABEL_45;
  }

LABEL_35:
  v9 = 3;
  goto LABEL_44;
}

void sub_1B5D8DECC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D5A0D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D8DF40(uint64_t a1)
{
  v2 = sub_1B5D8DF90();
  result = dlsym(v2, "mecab_new2");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB90C848 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B5D8DF90()
{
  v13 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v0 = qword_1EB90C850;
  v10 = qword_1EB90C850;
  if (!qword_1EB90C850)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 0x40000000;
    v4[3] = sub_1B5D8E0F4;
    v4[4] = &unk_1E7C21398;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_1E7C21378;
    v12 = 0;
    v8[3] = _sl_dlopen();
    qword_1EB90C850 = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  v1 = v4[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1B5D8E0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D8E0F4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB90C850 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B5D8E18C(uint64_t a1)
{
  v2 = sub_1B5D8DF90();
  result = dlsym(v2, "mecab_destroy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB90C808 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1B5D8E1DC(uint64_t a1)
{
  v2 = sub_1B5D8DF90();
  result = dlsym(v2, "mecab_sparse_tonode2");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB90CB50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CFIndex sub_1B5D8E22C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result)
    {
      if (*a1 != 1)
      {
        return 1;
      }

      result = *(a1 + 40);
      if (result)
      {
        result = CFArrayGetCount(result);
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_1B5D8E27C(__CFArray **a1, const __CFString *a2, CFRange **a3, int a4)
{
  Mutable = CFArrayCreateMutable(0, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3), MEMORY[0x1E695E9C0]);
  v9 = a3[1];
  if (*a3 != v9)
  {
    v10 = *a3 + 1;
    do
    {
      v11 = &v10[-1];
      v12 = CFStringCreateWithSubstring(0, a2, v10[-1]);
      v13 = v12;
      if (!a4 || !sub_1B5D8E37C(v12, SLOBYTE(v10->location)))
      {
        CFArrayAppendValue(Mutable, v13);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      v10 = (v10 + 24);
    }

    while (v11 + 24 != v9);
  }

  *a1 = Mutable;
}

void sub_1B5D8E364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE5794(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_1B5D8E37C(CFStringRef theString, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 > 5 || (v3 = 1, ((1 << a2) & 0x31) == 0))
  {
    Length = CFStringGetLength(theString);
    v7 = Length;
    if (Length >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = Length;
    }

    v15.location = 0;
    v15.length = v8;
    CFStringGetCharacters(theString, v15, &v13);
    if (v7 < 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 0;
      v9 = &v13;
      v10 = 1;
      v11 = v8;
      do
      {
        v12 = *v9++;
        if (!u_ispunct(v12))
        {
          break;
        }

        v3 = v10++ >= v8;
        --v11;
      }

      while (v11);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

float sub_1B5D8E470(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 40);
  v7 = sub_1B5D9D298(*(a1 + 48), *(a1 + 56), *(a1 + 60));
  v8 = *(a1 + 60);
  v9 = *(v6 + 8);
  if (v8 > 2)
  {
    v10 = 0.0;
    if (v8 == 3)
    {
      v10 = v9[1];
    }
  }

  else
  {
    v10 = *v9;
  }

  result = *(a2 + 104) + v10;
  *(v7 + 32) = result;
  *a3 = 1;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void sub_1B5D8E578(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef LXEntryCopyString(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __assert_rtn("LXEntryCopyString", "LXEntry.cpp", 25, "entry");
  }

  sub_1B5D33704(&numBytes, (a1 + 16));
  if (v7)
  {
    v1 = v7;
  }

  else
  {
    v1 = v8;
  }

  v2 = sub_1B5CDFA10(v1, numBytes);
  if (v7 && numBytes_6 == 1)
  {
    free(v7);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1B5D8E654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
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

CFStringRef LXEntryCopyStoredString(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    __assert_rtn("LXEntryCopyStoredString", "LXEntry.cpp", 31, "entry");
  }

  if (a2)
  {
    *a2 = *(a1 + 56);
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    v3 = (a1 + 32);
  }

  v4 = *(a1 + 16);

  return sub_1B5CDFA10(v3, v4);
}

uint64_t LXEntryGetMetaFlags(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("LXEntryGetMetaFlags", "LXEntry.cpp", 45, "entry");
  }

  return *(a1 + 52) & 0x3FA000EF;
}

uint64_t LXEntryGetCategoryFlags(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("LXEntryGetCategoryFlags", "LXEntry.cpp", 51, "entry");
  }

  return *(a1 + 52) & 0x7FF00;
}

double LXEntryGetPartialProbability(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("LXEntryGetPartialProbability", "LXEntry.cpp", 56, "entry");
  }

  return log10f(*(a1 + 48));
}

uint64_t LXEntryGetTokenID(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("LXEntryGetTokenID", "LXEntry.cpp", 71, "entry");
  }

  return *(a1 + 76);
}

BOOL LXEntryGetTimestamp(uint64_t a1, double *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 112);
  *a2 = v2;
  return v2 != 0.0;
}

uint64_t LXEntryGetAffixData(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("LXEntryGetAffixData", "LXEntry.cpp", 96, "entry");
  }

  return *(a1 + 72);
}

uint64_t LXEntryGetHeadAndTailPos(uint64_t result, _WORD *a2, _WORD *a3)
{
  if (!result)
  {
    __assert_rtn("LXEntryGetHeadAndTailPos", "LXEntry.cpp", 102, "entry");
  }

  if (*(result + 88) == 1)
  {
    v3 = *(result + 92);
    if (a2)
    {
      *a2 = v3;
    }

    if (a3)
    {
      v4 = HIWORD(v3);
LABEL_11:
      *a3 = v4;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      LOWORD(v4) = 0;
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t LXEntryGetEmissionCost(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("LXEntryGetEmissionCost", "LXEntry.cpp", 119, "entry");
  }

  if (*(a1 + 88) == 1)
  {
    return *(a1 + 96);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t LXEntryCreateMutable(CFStringRef theString, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = 0x100000;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14[0] = 0;
  *(v14 + 5) = 0;
  v15 = 0u;
  v16 = 0xFFFFFFFFLL;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_1B5CDC4B4(&Current, theString);
  sub_1B5CDF770(&v9, &Current);
  if (v8 && BYTE6(Current) == 1)
  {
    free(v8);
  }

  HIDWORD(v14[0]) = a2;
  v6 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v3 = sub_1B5D85B3C(&v9, &v6, &Current);
  if (v12 && v11 == 1)
  {
    free(v12);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B5D8EA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, void *a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, void *a20)
{
  if (a14 && a13 == 1)
  {
    free(a14);
  }

  if (a20)
  {
    if (a19 == 1)
    {
      free(a20);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXEntryCreateMutableCopy(uint64_t a1)
{
  v3 = *(a1 + 104);
  v2 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *MEMORY[0x1E695E480];
  if (qword_1ED833AC8 != -1)
  {
    dispatch_once(&qword_1ED833AC8, &unk_1F2D5A118);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D5CABC(Instance + 16, (a1 + 16));
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  *(Instance + 96) = *(a1 + 96);
  *(Instance + 64) = v8;
  *(Instance + 80) = v9;
  *(Instance + 48) = v7;
  *(Instance + 104) = v3;
  *(Instance + 112) = v2;
  *(Instance + 120) = v4;
  return Instance;
}

uint64_t sub_1B5D8EB24()
{
  qword_1ED833A60 = 0;
  *algn_1ED833A68 = "LXEntry";
  qword_1ED833A70 = 0;
  unk_1ED833A78 = 0;
  qword_1ED833A80 = sub_1B5D2E064;
  unk_1ED833A88 = 0u;
  unk_1ED833A98 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833A50 = result;
  return result;
}

uint64_t LXMutableEntryUpdateUsageCount(uint64_t result, float a2)
{
  v2 = llroundf(a2);
  v3 = *(result + 64);
  v4 = v3 < -v2 && v2 < 0;
  v5 = v3 + v2;
  if (v4)
  {
    v5 = 0;
  }

  *(result + 64) = v5;
  return result;
}

uint64_t sub_1B5D8EBAC(uint64_t a1)
{
  v2 = *(a1 + 34);
  v3 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    sub_1B5CDF8F4(a1);
    v3 = *(a1 + 4);
  }

  if (v2 >= v3)
  {
    return 0;
  }

  ++*(a1 + 34);
  v4 = a1 + 16;
  if (*(a1 + 8))
  {
    v4 = *(a1 + 8);
  }

  v5 = *(a1 + 32);
  v6 = v5 + 1;
  *(a1 + 32) = v5 + 1;
  result = *(v4 + v5);
  if ((result & 0x80) != 0)
  {
    if (result > 0xDF)
    {
      if (result > 0xEF)
      {
        result = ((result & 7) << 18) | ((*(v4 + v6) & 0x3F) << 12) | ((*(v4 + v6 + 1) & 0x3F) << 6) | *(v4 + v6 + 2) & 0x3F;
        v8 = v5 + 4;
      }

      else
      {
        result = ((result & 0xF) << 12) | ((*(v4 + v6) & 0x3F) << 6) | *(v4 + v6 + 1) & 0x3F;
        v8 = v5 + 3;
      }

      *(a1 + 32) = v8;
    }

    else
    {
      *(a1 + 32) = v5 + 2;
      return *(v4 + (v5 + 1)) & 0x3F | ((result & 0x1F) << 6);
    }
  }

  return result;
}

uint64_t *sub_1B5D8ECE8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      MEMORY[0x1B8C880F0](v3, 0x60C4044C4A2DFLL);
    }

    sub_1B5D7DFDC((v2 + 16));
    sub_1B5D7DB18((v2 + 8));
    sub_1B5D7DBD4(v2);

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D8EEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a12;
  sub_1B5D8EF64(&a16);

  _Unwind_Resume(a1);
}

void sub_1B5D8EF64(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1B5D8EFB8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1B5D8EFB8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void sub_1B5D8F270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1B5D7DFDC(v22);
  sub_1B5D7DB18(v21);
  v24 = sub_1B5D7DBD4(v20);
  MEMORY[0x1B8C880F0](v24, 0x60C4087AB86DCLL);
  sub_1B5D7DB18(&a10);
  sub_1B5D7DBD4(&a11);

  _Unwind_Resume(a1);
}

void sub_1B5D8F5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a14;
  sub_1B5D8EF64(&a18);

  _Unwind_Resume(a1);
}

BOOL sub_1B5D8F61C(unsigned int a1, void *__s2, size_t __n)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EB90C810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90C810))
  {
    operator new();
  }

  v6 = *(qword_1EB90C7F8 + 8);
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a1;
    if (v6 <= a1)
    {
      v8 = a1 % *(qword_1EB90C7F8 + 8);
    }
  }

  else
  {
    v8 = (v6 - 1) & a1;
  }

  v9 = *(*qword_1EB90C7F8 + 8 * v8);
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = *v9;
  if (!v10)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == a1)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (*(v10 + 8) != a1)
  {
    goto LABEL_17;
  }

  v15 = v10[3];
  v14 = v10[4];
  if (v14 == v15)
  {
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  while (v15[1] != __n || memcmp(*v15, __s2, __n))
  {
    v15 += 2;
    if (v15 == v14)
    {
      v15 = v14;
      break;
    }
  }

  result = v15 != v14;
LABEL_19:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D8FF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _Unwind_Exception *exception_objecta, void *__p, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25)
{
  v33 = (v31 + 464);
  v34 = -480;
  do
  {
    v35 = *(v33 - 1);
    if (v35)
    {
      *v33 = v35;
      operator delete(v35);
    }

    v33 -= 4;
    v34 += 32;
  }

  while (v34);
  if (v30)
  {
    operator delete(v30);
  }

  if (v29)
  {
    operator delete(v29);
    if (!v28)
    {
LABEL_9:
      if (!v27)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if (!v28)
  {
    goto LABEL_9;
  }

  operator delete(v28);
  if (!v27)
  {
LABEL_10:
    if (!v26)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v27);
  if (!v26)
  {
LABEL_11:
    if (!v25)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v26);
  if (!v25)
  {
LABEL_12:
    if (!v32)
    {
LABEL_20:
      if (__p)
      {
        operator delete(__p);
      }

      if (a18)
      {
        operator delete(a18);
      }

      if (a19)
      {
        operator delete(a19);
      }

      if (a20)
      {
        operator delete(a20);
      }

      if (a21)
      {
        operator delete(a21);
      }

      if (a22)
      {
        operator delete(a22);
      }

      if (a23)
      {
        operator delete(a23);
      }

      if (a24)
      {
        operator delete(a24);
      }

      MEMORY[0x1B8C880F0](a25, 0x10A0C408EF24B1CLL);
      __cxa_guard_abort(&qword_1EB90C810);
      _Unwind_Resume(a1);
    }

LABEL_19:
    operator delete(v32);
    goto LABEL_20;
  }

LABEL_18:
  operator delete(v25);
  if (!v32)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void sub_1B5D9021C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D90238(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5D907F0(result, a4);
  }

  return result;
}

void sub_1B5D90298(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D902B4(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[16 * a3]; i += 16)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % *(result + 8);
        }
      }

      else
      {
        v7 = (v5.i32[0] - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (*(v9 + 8) != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_1B5D906F4(_Unwind_Exception *a1)
{
  sub_1B5D90794(1, v2);
  sub_1B5D9072C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D9072C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
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

void sub_1B5D90794(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1B5D907F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1B5D60A70(a2);
  }

  sub_1B5D04FA0();
}

uint64_t sub_1B5D90830(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void sub_1B5D90848(void *a1, uint64_t a2, CFStringRef theString, const __CFArray *a4, CFErrorRef *a5)
{
  if (!CFStringGetLength(theString))
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v98 = a1;
  if (a4)
  {
    TypeID = CFLocaleGetTypeID();
    if (!sub_1B5DA9E54(a4, TypeID))
    {
      if (a5)
      {
        *a5 = sub_1B5D4E9A0(@"locales must be an array of NSLocale objects.", 1);
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    v11 = *a2;
    v12 = a4;
  }

  else
  {
    v11 = *a2;
    v12 = 0;
  }

  sub_1B5D4A530(&v109, v11, v12);
  sub_1B5D8115C(&v107, *(a2 + 8), a4);
  if (v109 == v110 && v107 == v108)
  {
    if (a5)
    {
      v18 = sub_1B5D819BC(a4);
      *&v102 = v18;
      *a5 = sub_1B5D4E9A0(v18, 2);
      if (v18)
      {
        CFRelease(v18);
      }
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    goto LABEL_162;
  }

  v13 = sub_1B5D81A74(v109, v110);
  sub_1B5DA802C(&v114, *(a2 + 16), theString);
  if (v114 == *(&v114 + 1))
  {
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    if (v114)
    {
      operator delete(v114);
    }

    goto LABEL_28;
  }

  sub_1B5D8E27C(&v100, theString, &v114, 1);
  v113 = 0;
  memset(__dst, 0, 24);
  if (v13)
  {
    v14 = *(a2 + 24);
    if (!v14)
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_26;
    }

    sub_1B5D81AD0(&v119, v14, theString, &v114);
    *&__dst[0] = v119;
    *(__dst + 8) = v120;
    v15 = *(&v120 + 1);
    if (v119 != v120)
    {
      sub_1B5D8E27C(&v119, theString, __dst, 1);
      v16 = v119;
      v113 = v119;
LABEL_26:
      v17 = 1;
      goto LABEL_27;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
  v17 = 0;
LABEL_27:
  LOBYTE(v102) = v17;
  *(&v102 + 1) = v100;
  v103 = v114;
  v19 = v115;
  v114 = 0uLL;
  v115 = 0;
  *&v104 = v19;
  *(&v104 + 1) = v16;
  v105 = __dst[0];
  v106 = v15;
LABEL_28:
  theStringa = theString;
  v20 = sub_1B5D8E22C(&v102);
  *v98 = 0;
  *(v98 + 8) = 0;
  *(v98 + 16) = 0;
  if ((v20 & 1) == 0)
  {
    goto LABEL_161;
  }

  v21 = v109;
  v97 = v110;
  if (v109 != v110)
  {
    do
    {
      v22 = *(v21 + 23);
      if (v22 < 0)
      {
        v23 = *v21;
        v22 = *(v21 + 8);
      }

      else
      {
        v23 = v21;
      }

      v24 = v102 == 1 && v22 == 2;
      if (!v24 || (v25 = *v23, v26 = &v104 + 1, v25 != 25956))
      {
        v26 = &v102 + 1;
      }

      v27 = 0;
      v28 = *v26;
      v99 = v21;
      v29 = *(v21 + 24);
      v30 = 0.0;
      while (CFArrayGetCount(v28) > v27)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v28, v27);
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = __dst;
        *&__dst[1] = 0x2000000000;
        BYTE8(__dst[1]) = 0;
        v119 = 0;
        *&v120 = &v119;
        *(&v120 + 1) = 0x2000000000;
        v121 = 0xFFF0000000000000;
        *&v114 = MEMORY[0x1E69E9820];
        *(&v114 + 1) = 0x40000000;
        v115 = sub_1B5D93000;
        v116 = &unk_1E7C21890;
        v117 = __dst;
        v118 = &v119;
        (*(*v29 + 192))(v29, ValueAtIndex, &v114);
        if ((*(*(&__dst[0] + 1) + 24) & 1) == 0)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(ValueAtIndex, 0);
          if (*(v29 + 30144))
          {
            v33 = *(v29 + 30144);
          }

          else
          {
            v33 = (v29 + 30152);
          }

          if (sub_1B5D8F61C(CharacterAtIndex, v33, *(v29 + 30136)))
          {
            *(*(&__dst[0] + 1) + 24) = 1;
            *(v120 + 24) = 0xC014000000000000;
          }

          else
          {
            v34 = -20.0;
            if ((*(*(&__dst[0] + 1) + 24) & 1) == 0)
            {
              goto LABEL_50;
            }
          }
        }

        v34 = *(v120 + 24);
LABEL_50:
        _Block_object_dispose(&v119, 8);
        _Block_object_dispose(__dst, 8);
        v30 = v30 + v34;
        ++v27;
      }

      if (fabs(v30 + CFArrayGetCount(v28) * 20.0) > 0.001)
      {
        v35 = v30;
      }

      else
      {
        v35 = -INFINITY;
      }

      *&v100 = v35;
      if (v35 != -INFINITY)
      {
        v36 = *(v98 + 8);
        if (v36 >= *(v98 + 16))
        {
          v37 = sub_1B5D91A58(v98, &v100, v99);
        }

        else
        {
          sub_1B5D919F4(v98, v99, v35);
          v37 = (v36 + 32);
        }

        *(v98 + 8) = v37;
      }

      v21 = (v99 + 2);
    }

    while (v99 + 2 != v97);
  }

  sub_1B5D22FF4(&v119, theStringa);
  v38 = v107;
  v39 = v108;
  if (v107 == v108)
  {
    goto LABEL_129;
  }

  do
  {
    if (v120 >= 0)
    {
      v40 = &v119;
    }

    else
    {
      v40 = v119;
    }

    if (v120 >= 0)
    {
      v41 = HIBYTE(v120);
    }

    else
    {
      v41 = v120;
    }

    v42 = sub_1B5DA4C04(*(v38 + 24), v40, v41);
    if (!v42)
    {
      goto LABEL_128;
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = *(v38 + 24);
    do
    {
      if ((*(v42 + 91) & 0xFE) == 2 || !*(v42 + 80))
      {
        goto LABEL_98;
      }

      v47 = *(v42 + 90);
      v48 = *(v46 + 23);
      if (v47 != 3)
      {
        v50 = 0;
        goto LABEL_77;
      }

      v49 = v46;
      if ((v48 & 0x80) != 0)
      {
        v49 = *v46;
        v48 = v46[1];
      }

      v50 = sub_1B5D8F61C(**(v42 + 64), v49, v48);
      v47 = *(v42 + 90);
      if (v47 != 3 || v50)
      {
        v48 = *(v46 + 23);
LABEL_77:
        v51 = v46;
        v52 = v48;
        if ((v48 & 0x80) != 0)
        {
          v51 = *v46;
          v52 = v46[1];
        }

        ++v43;
        if (v52 == 2 && (v53 = *v51 != 24938, (v47 & 0xFE) == 6) && !v53)
        {
          v45 += 1000;
        }

        else
        {
          v54 = v46;
          if (v48 < 0)
          {
            v54 = *v46;
            v48 = v46[1];
          }

          if (v48 == 8)
          {
            v55 = bswap64(*v54);
            v56 = v55 >= 0x7975652D48616E74;
            v57 = v55 > 0x7975652D48616E74;
            v58 = !v56;
            if (v57 == v58)
            {
              v45 += 18000;
            }
          }

          if (v47 == 5)
          {
            v59 = v45 + 30000;
          }

          else
          {
            v59 = v45;
          }

          if (*(v42 + 91) != 1 || v50)
          {
            v60 = *(v42 + 92);
          }

          else
          {
            ++v44;
            v60 = 15000;
          }

          v45 = v60 + v59;
        }
      }

LABEL_98:
      v42 = *(v42 + 8);
    }

    while (v42);
    if (v43 != v44)
    {
      v61 = *(v46 + 8);
      if (!v61)
      {
        __assert_rtn("toLogProb", "LanguageIdentifierImpl.cpp", 40, "costFactor");
      }

      v62 = v45 / -v61 / 2.30258509;
      if (v62 != -INFINITY)
      {
        v63 = *(v38 + 23);
        if ((v63 & 0x8000000000000000) != 0)
        {
          v64 = *v38;
          v63 = *(v38 + 8);
        }

        else
        {
          v64 = v38;
        }

        if (v63 == 8)
        {
          if (*v64 != 0x746E61482D657579)
          {
            BYTE7(__dst[1]) = 8;
            goto LABEL_113;
          }

          sub_1B5CE410C(__dst, "zh-Hant");
        }

        else
        {
          if (v63 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_1B5D114C8();
          }

          if (v63 >= 0x17)
          {
            operator new();
          }

          BYTE7(__dst[1]) = v63;
          if (v63)
          {
LABEL_113:
            memmove(__dst, v64, v63);
          }

          *(__dst + v63) = 0;
        }

        v65 = *(v98 + 8);
        v66 = *(v98 + 16);
        if (v65 >= v66)
        {
          v68 = (v65 - *v98) >> 5;
          v69 = v68 + 1;
          if ((v68 + 1) >> 59)
          {
            sub_1B5D04FA0();
          }

          v70 = v66 - *v98;
          if (v70 >> 4 > v69)
          {
            v69 = v70 >> 4;
          }

          if (v70 >= 0x7FFFFFFFFFFFFFE0)
          {
            v71 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = v69;
          }

          v117 = v98;
          if (v71)
          {
            sub_1B5D92814(v71);
          }

          v72 = 32 * v68;
          *v72 = v62;
          v73 = __dst[0];
          *(v72 + 24) = *&__dst[1];
          *(v72 + 8) = v73;
          memset(__dst, 0, 24);
          v74 = 32 * v68 + 32;
          v75 = *(v98 + 8) - *v98;
          v76 = (32 * v68 - v75);
          memcpy(v76, *v98, v75);
          v77 = *v98;
          *v98 = v76;
          *(v98 + 8) = v74;
          v78 = *(v98 + 16);
          *(v98 + 16) = 0;
          v115 = v77;
          v116 = v78;
          *&v114 = v77;
          *(&v114 + 1) = v77;
          sub_1B5D9285C(&v114);
          v79 = SBYTE7(__dst[1]);
          *(v98 + 8) = v74;
          if (v79 < 0)
          {
            operator delete(*&__dst[0]);
          }
        }

        else
        {
          *v65 = v62;
          v67 = __dst[0];
          *(v65 + 24) = *&__dst[1];
          *(v65 + 8) = v67;
          *(v98 + 8) = v65 + 32;
        }
      }
    }

LABEL_128:
    v38 += 32;
  }

  while (v38 != v39);
LABEL_129:
  v80 = *(v98 + 8);
  v81 = 126 - 2 * __clz((v80 - *v98) >> 5);
  if (v80 == *v98)
  {
    v82 = 0;
  }

  else
  {
    v82 = v81;
  }

  sub_1B5D91B80(*v98, v80, v82, 1);
  v84 = *v98;
  v83 = *(v98 + 8);
  memset(__dst, 0, sizeof(__dst));
  v112 = 1065353216;
  v101 = 0;
  v100 = 0uLL;
  v85 = v83 - v84;
  if (v83 != v84)
  {
    if (!((v85 >> 5) >> 59))
    {
      v117 = &v100;
      sub_1B5D92814(v85 >> 5);
    }

    sub_1B5D04FA0();
  }

  sub_1B5D1BB70(__dst);
  if (*v98)
  {
    sub_1B5D8EFB8(v98);
    operator delete(*v98);
  }

  *v98 = v100;
  *(v98 + 16) = v101;
  v101 = 0;
  v100 = 0uLL;
  *&v114 = &v100;
  sub_1B5D8EF64(&v114);
  v86 = *v98;
  v87 = *(v98 + 8);
  v88 = (v87 - *v98) >> 5;
  if (v88 >= 2)
  {
    v89 = v86 + 4;
    v90 = 1;
    while (*v89 + 10.0 >= *v86)
    {
      ++v90;
      v89 += 4;
      if (v88 == v90)
      {
        goto LABEL_159;
      }
    }

    v91 = v90 - v88;
    if (v90 <= v88)
    {
      if (v90 < v88)
      {
        v95 = &v86[4 * v90];
        while (v87 != v95)
        {
          if (*(v87 - 1) < 0)
          {
            operator delete(*(v87 - 3));
          }

          v87 -= 4;
        }

        *(v98 + 8) = v95;
      }
    }

    else
    {
      v92 = *(v98 + 16);
      if (v91 > (v92 - v87) >> 5)
      {
        if (!(v90 >> 59))
        {
          v117 = v98;
          v93 = v92 - v86;
          if (v93 >> 4 > v90)
          {
            v90 = v93 >> 4;
          }

          if (v93 >= 0x7FFFFFFFFFFFFFE0)
          {
            v94 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v94 = v90;
          }

          sub_1B5D92814(v94);
        }

        sub_1B5D04FA0();
      }

      bzero(v87, 32 * v91);
      *(v98 + 8) = &v87[4 * v91];
    }
  }

LABEL_159:
  if (SHIBYTE(v120) < 0)
  {
    operator delete(v119);
  }

LABEL_161:
  sub_1B5D7FAD8(&v102);
LABEL_162:
  *&v102 = &v107;
  sub_1B5D4BCF4(&v102);
  *&v102 = &v109;
  sub_1B5D4BCF4(&v102);
}