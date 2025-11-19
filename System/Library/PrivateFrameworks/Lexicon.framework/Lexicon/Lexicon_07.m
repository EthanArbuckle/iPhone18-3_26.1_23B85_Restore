uint64_t sub_1B5D4B86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v17 = a2 + 32 * a3;
    do
    {
      v5 = *v4;
      v6 = *(v4 + 8);
      v7 = sub_1B5D2CC6C(*v4, v6);
      v8 = v7;
      v9 = *(a1 + 8);
      if (!*&v9)
      {
        goto LABEL_20;
      }

      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.u32[0];
      if (v10.u32[0] > 1uLL)
      {
        v12 = v7;
        if (v7 >= *&v9)
        {
          v12 = v7 % *&v9;
        }
      }

      else
      {
        v12 = (*&v9 - 1) & v7;
      }

      v13 = *(*a1 + 8 * v12);
      if (!v13 || (v14 = *v13) == 0)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v15 = v14[1];
        if (v15 == v8)
        {
          break;
        }

        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_20;
        }

LABEL_19:
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (v14[3] != v6 || memcmp(v14[2], v5, v6))
      {
        goto LABEL_19;
      }

      v4 += 32;
    }

    while (v4 != v17);
  }

  return a1;
}

void sub_1B5D4BCCC(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_1B5D1BB70(v1);
  _Unwind_Resume(a1);
}

void sub_1B5D4BCF4(void ***a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
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

uint64_t sub_1B5D4BD80(uint64_t a1, __int128 *a2, void *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1B5D04FA0();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v24 = a1;
  if (v8)
  {
    sub_1B5D4BF1C(v8);
  }

  v9 = 32 * v3;
  v20 = 0;
  v21 = v9;
  v10 = 0;
  v22 = v9;
  v23 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4(v9, *a2, *(a2 + 1));
    v12 = v21;
    v13 = v22;
    v10 = v23;
  }

  else
  {
    v11 = *a2;
    *(v9 + 16) = *(a2 + 2);
    *v9 = v11;
    v12 = v9;
    v13 = v9;
  }

  *(v9 + 24) = *a3;
  v14 = v13 + 32;
  v15 = *(a1 + 8) - *a1;
  v16 = v12 - v15;
  memcpy((v12 - v15), *a1, v15);
  v17 = *a1;
  *a1 = v16;
  *(a1 + 8) = v14;
  v18 = *(a1 + 16);
  *(a1 + 16) = v10;
  v22 = v17;
  v23 = v18;
  v20 = v17;
  v21 = v17;
  sub_1B5D4BF64(&v20);
  return v14;
}

void sub_1B5D4BEA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D4BF64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D4BEB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1B5D4BF1C(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5D4BF64(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5D4BFC8(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1B5D4C024(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void *sub_1B5D4C084(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  v3 = *(a1 + 8);
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_1B5D2CC6C(a1, v4);
  v6 = v5;
  v7 = *(&xmmword_1ED8338D8 + 1);
  if (!*(&xmmword_1ED8338D8 + 1))
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(*(&xmmword_1ED8338D8 + 8));
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *(&xmmword_1ED8338D8 + 1))
    {
      v10 = v5 % *(&xmmword_1ED8338D8 + 1);
    }
  }

  else
  {
    v10 = (*(&xmmword_1ED8338D8 + 1) - 1) & v5;
  }

  v11 = *(xmmword_1ED8338D8 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_23;
    }

LABEL_22:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1B5D17E50(v12 + 2, v1))
  {
    goto LABEL_22;
  }

  return v12;
}

void sub_1B5D4C51C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D4CC50(va);
  _Unwind_Resume(a1);
}

void sub_1B5D4C534(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *(a1 + 23);
  v5 = *(a1 + 8);
  if (v4 < 0)
  {
    a1 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1B5D2CC6C(a1, v6);
  v8 = qword_1ED833908;
  if (qword_1ED833908)
  {
    v9 = v7;
    v10 = vcnt_s8(qword_1ED833908);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v7;
      if (v7 >= qword_1ED833908)
      {
        v12 = v7 % qword_1ED833908;
      }
    }

    else
    {
      v12 = (qword_1ED833908 - 1) & v7;
    }

    v13 = *(*(&xmmword_1ED8338F8 + 1) + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        do
        {
          v15 = v14[1];
          if (v9 == v15)
          {
            if (sub_1B5D17E50(v14 + 2, v3))
            {
              v26 = v3;
              v16 = sub_1B5D4C704(v3);
              v17 = v16[5];
              for (i = v16[6]; v17 != i; v17 += 2)
              {
                v19 = v17[1];
                if (v19)
                {
                  v20 = std::__shared_weak_count::lock(v19);
                  if (v20)
                  {
                    v21 = v20;
                    v22 = *v17;
                    if (*v17)
                    {
                      v23 = a2[1];
                      v24 = *a2;
                      v25 = v23;
                      if (v23)
                      {
                        atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      }

                      (*(*v22 + 16))(v22, &v24);
                      if (v25)
                      {
                        std::__shared_weak_count::__release_weak(v25);
                      }
                    }

                    sub_1B5CDD904(v21);
                  }
                }
              }

              return;
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
              return;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }
}

void sub_1B5D4C6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_1B5CDD904(v11);
  _Unwind_Resume(a1);
}

void *sub_1B5D4C704(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  v3 = *(a1 + 8);
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_1B5D2CC6C(a1, v4);
  v6 = v5;
  v7 = qword_1ED833908;
  if (!qword_1ED833908)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(qword_1ED833908);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= qword_1ED833908)
    {
      v10 = v5 % qword_1ED833908;
    }
  }

  else
  {
    v10 = (qword_1ED833908 - 1) & v5;
  }

  v11 = *(*(&xmmword_1ED8338F8 + 1) + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_23;
    }

LABEL_22:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1B5D17E50(v12 + 2, v1))
  {
    goto LABEL_22;
  }

  return v12;
}

void sub_1B5D4CBA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D4CBB8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1B5D4CBB8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v4 = *(v2 + 48);
        v5 = *(v2 + 40);
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 8);
            if (v6)
            {
              std::__shared_weak_count::__release_weak(v6);
            }

            v4 -= 16;
          }

          while (v4 != v3);
          v5 = *(v2 + 40);
        }

        *(v2 + 48) = v3;
        operator delete(v5);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1B5D4CC50(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

const __CFArray *sub_1B5D4CCB0(uint64_t a1, CFDictionaryRef theDict)
{
  v21 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"Locale");
  if (!sub_1B5D4D3F0(Value) || (v5 = CFDictionaryGetValue(theDict, @"NonStemSuffixCount")) == 0 || (v6 = v5, v7 = CFGetTypeID(v5), v7 != CFNumberGetTypeID()))
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v8 = CFDictionaryGetValue(theDict, @"StemSuffixClasses");
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFArrayGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr >= 1)
      {
        v19 = 0;
        v18 = 0;
        v11 = CFLocaleCreate(0, Value);
        sub_1B5D1E6E0((a1 + 128), v11);
        *a1 = CFArrayGetCount(v9);
        sub_1B5D0DE58(a1 + 8, &v19);
        sub_1B5D0DE58(a1 + 32, &v18 + 1);
        sub_1B5D0DE58(a1 + 56, &v18);
        sub_1B5CE4DD0(Value, __p);
        if (v17 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        sub_1B5D8CCC0(&v15, v12);
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1B5D4D324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int16 a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a16 >= 0xFu && a17)
  {
    MEMORY[0x1B8C880C0](a17, 0x1000C8077774924);
  }

  v36 = *(v34 - 120);
  if (v36 && *(v34 - 122) == 1)
  {
    free(v36);
  }

  if (a20)
  {
    sub_1B5CDD904(a20);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *sub_1B5D4D3F0(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return (CFStringGetLength(v1) > 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5D4D444(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1B5D04FA0();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1B5D4894C(v6);
  }

  v16 = 0;
  v17 = 32 * v2;
  sub_1B5D5CABC(32 * v2, a2);
  v18 = (32 * v2 + 32);
  v8 = *a1;
  v7 = a1[1];
  v9 = 32 * v2 + *a1 - v7;
  if (*a1 != v7)
  {
    v10 = 0;
    do
    {
      sub_1B5D5CABC(v9 + v10, (v8 + v10));
      v10 += 32;
    }

    while (v8 + v10 != v7);
    do
    {
      v11 = *(v8 + 8);
      if (v11 && *(v8 + 6) == 1)
      {
        free(v11);
      }

      v8 += 32;
    }

    while (v8 != v7);
  }

  v12 = *a1;
  *a1 = v9;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1B5D4D6E0(&v16);
  return v15;
}

void sub_1B5D4D584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D4D6E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D4D5D4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 16;
      *(a1 + 16) = v2 - 16;
      if (*(v2 - 16) >= 0xFu)
      {
        v5 = *(v2 - 8);
        if (v5)
        {
          MEMORY[0x1B8C880C0](v5, 0x1000C8077774924);
          v4 = *(a1 + 16);
        }
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D4D65C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v5 = *(v4 - 16);
        v4 -= 16;
        if (v5 >= 0xF)
        {
          v6 = *(v2 - 8);
          if (v6)
          {
            MEMORY[0x1B8C880C0](v6, 0x1000C8077774924);
          }
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t sub_1B5D4D6E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      v5 = *(v2 - 24);
      if (v5 && *(v2 - 26) == 1)
      {
        free(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1B5D4D74C(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D568F8;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_1B5D4D7C8(std::exception *this)
{
  this->__vftable = &unk_1F2D568F8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t sub_1B5D4D828(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1B5D4D844(std::exception *this)
{
  this->__vftable = &unk_1F2D568F8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D4D8B8(unsigned int *a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 + 1);
  if (*v4 > a2 || *&v4[4 * *a1] <= a2)
  {
    return 0;
  }

  v5 = *(a1 + 2);
  if (v5 != v4)
  {
    v6 = (v5 - v4) >> 2;
    v5 = *(a1 + 1);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[4 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 4;
      v6 += ~(v6 >> 1);
      if (v10 > a2)
      {
        v6 = v7;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v6);
  }

  v11 = v5 - 4;
  if (a3)
  {
    *a3 = a1[1] + ((v11 - v4) >> 2);
  }

  if (a4)
  {
    *a4 = a2 - *v11;
  }

  return 1;
}

uint64_t sub_1B5D4D950(unsigned int *a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 + 4);
  if (*v4 > a2 || *&v4[4 * *a1] <= a2)
  {
    return 0;
  }

  v5 = *(a1 + 5);
  if (v5 != v4)
  {
    v6 = (v5 - v4) >> 2;
    v5 = *(a1 + 4);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[4 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 4;
      v6 += ~(v6 >> 1);
      if (v10 > a2)
      {
        v6 = v7;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v6);
  }

  v11 = v5 - 4;
  if (a3)
  {
    *a3 = a1[1] + ((v11 - v4) >> 2);
  }

  if (a4)
  {
    *a4 = a2 - *v11;
  }

  return 1;
}

uint64_t sub_1B5D4D9E8(uint64_t result, uint64_t a2, int a3)
{
  v3 = (a3 - *(a2 + 4));
  v4 = *(a2 + 80);
  if (v3 < (*(a2 + 88) - v4) >> 5)
  {
    return sub_1B5D5CABC(result, (v4 + 32 * v3));
  }

  *result = 0x100000;
  *(result + 4) = 0;
  *(result + 6) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

__n128 sub_1B5D4DA24(__n128 *a1, uint64_t a2, int a3)
{
  v3 = (a3 - *(a2 + 4));
  v4 = *(a2 + 104);
  if (v3 >= (*(a2 + 112) - v4) >> 4)
  {
    a1->n128_u16[0] = 0;
  }

  else
  {
    v5 = (v4 + 16 * v3);
    v6 = v5->n128_u16[0];
    if (v6 >= 0xF)
    {
      a1->n128_u16[0] = v6;
      operator new[]();
    }

    result = *v5;
    *a1 = *v5;
  }

  return result;
}

uint64_t sub_1B5D4DACC(uint64_t a1, const void **a2, CFErrorRef err)
{
  v22[2] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D568F8;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = CFErrorCopyDescription(err);
  v21 = v6;
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = &v20;
  sub_1B5D4DDDC(&v20, v7 + 2);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v20.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, ": ");
  sub_1B5CE4DD0(v6, __p);
  if ((v19 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v11 = v19;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v20, v10, v11);
  v13 = v12->__r_.__value_.__r.__words[0];
  v22[0] = v12->__r_.__value_.__l.__size_;
  *(v22 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*v5);
  }

  v15 = v22[0];
  *(a1 + 8) = v13;
  *(a1 + 16) = v15;
  *(a1 + 23) = *(v22 + 7);
  *(a1 + 31) = v14;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if (v6)
  {
LABEL_25:
    CFRelease(v6);
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B5D4DC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D4DCF0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t *sub_1B5D4DD24(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1B5D23F18((v2 + 136), 0);
    sub_1B5D1E6E0((v2 + 128), 0);
    v7 = (v2 + 104);
    sub_1B5D23F50(&v7);
    v7 = (v2 + 80);
    sub_1B5D1BF88(&v7);
    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      *(v2 + 40) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      *(v2 + 16) = v5;
      operator delete(v5);
    }

    MEMORY[0x1B8C880F0](v2, 0x1070C4046963303);
  }

  return a1;
}

uint64_t sub_1B5D4DDDC(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
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

void sub_1B5D4DE68(void *a1)
{
  sub_1B5D4DEA0(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D4DEA0(void *a1)
{
  *a1 = &unk_1F2D58190;
  if (a1[1])
  {
    uspoof_close();
  }

  return a1;
}

void sub_1B5D4DEF4(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (*(a3 + 1))
  {
    v4 = *(a3 + 1);
  }

  if (*(a2 + 8))
  {
    v6 = *a3;
    v15 = 0;
    SkeletonUTF8 = uspoof_getSkeletonUTF8();
    if (SkeletonUTF8 <= -2)
    {
      sub_1B5D114C8();
    }

    v8 = SkeletonUTF8;
    v9 = SkeletonUTF8 + 1;
    if (v9 >= 0x17)
    {
      operator new();
    }

    *(&__b.__r_.__value_.__s + 23) = SkeletonUTF8 + 1;
    if (SkeletonUTF8 != -1)
    {
      memset(&__b, 32, v9);
    }

    __b.__r_.__value_.__s.__data_[v9] = 0;
    v15 = 0;
    v10 = *(a2 + 8);
    uspoof_getSkeletonUTF8();
    if (v15)
    {
      sub_1B5CE410C(&__p, "");
      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::resize(&__b, v8, 0);
      __p = __b;
    }
  }

  else
  {
    sub_1B5CE410C(&__p, "");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = __p.__r_.__value_.__r.__words[1];
  }

  sub_1B5D5CA18(a1, p_p, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5D4E0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D4E0F8(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_1B5CDC4B4(v11, a2);
  sub_1B5CDC4B4(v9, a3);
  v5 = (*(*a1 + 24))(a1, v11, v9);
  if (v10 && v9[6] == 1)
  {
    free(v10);
  }

  if (v12 && v11[6] == 1)
  {
    free(v12);
  }

  v6 = -1;
  if (v5 >= 0)
  {
    v6 = 1;
  }

  if (v5)
  {
    result = v6;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D4E1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a19)
  {
    if (a18 == 1)
    {
      free(a19);
    }
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_1B5D4E224(const __CFDictionary *a1, const __CFLocale *a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"dataFile");
  if (Value)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = Value;
    v7 = *MEMORY[0x1E695E480];

    return CFStringCreateCopy(v7, v6);
  }

  else
  {
    v9 = CFDictionaryGetValue(a1, @"type");
    if (v9 && (v10 = v9, CFStringCompare(v9, @"unigrams", 0)))
    {
      v11 = CFStringCompare(v10, @"phrases", 0);
      v12 = 0;
      if (v11 == kCFCompareEqualTo)
      {
        v15[0] = &unk_1F2D5B0E0;
        v15[3] = v15;
        v12 = sub_1B5CDFEBC(a1, a2);
        sub_1B5DA8570(v15);
      }

      v13 = *MEMORY[0x1E69E9840];
      return v12;
    }

    else
    {
      v14 = *MEMORY[0x1E69E9840];

      return sub_1B5CDFE1C(a1, a2);
    }
  }
}

void sub_1B5D4E3B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DA8570(va);
  _Unwind_Resume(a1);
}

CFStringRef sub_1B5D4E3C4(const __CFDictionary *a1, const __CFLocale *a2)
{
  Value = CFDictionaryGetValue(a1, @"type");
  if (!Value || (result = CFStringCompare(Value, @"phrases", 0)) != 0)
  {
    v6 = CFDictionaryGetValue(a1, @"deltaFiles");
    if (v6 && (v7 = v6, CFArrayGetCount(v6) >= 1))
    {
      if (CFArrayGetCount(v7) != 1)
      {
        __assert_rtn("createDeltaLexiconPath", "LXUtils.cpp", 114, "CFArrayGetCount(delta_paths) == 1 && multiple delta files are not currently supported");
      }

      v8 = *MEMORY[0x1E695E480];
      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);

      return CFStringCreateCopy(v8, ValueAtIndex);
    }

    else
    {

      return sub_1B5DA881C(a1, a2);
    }
  }

  return result;
}

const __CFString *sub_1B5D4E4D0(const __CFDictionary *a1, const __CFLocale *a2)
{
  Value = CFDictionaryGetValue(a1, @"type");
  if (Value)
  {
    Copy = 0;
    if (CFStringCompare(Value, @"morphemes", 0))
    {
      return Copy;
    }
  }

  v6 = CFDictionaryGetValue(a1, @"dataFile");
  if (v6)
  {
    Copy = v6;
    v7 = 0;
  }

  else
  {
    v7 = sub_1B5DA89F8(a1, a2);
    Copy = v7;
    if (!v7)
    {
      return Copy;
    }
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], Copy, kCFURLPOSIXPathStyle, 0);
  v10 = v9;
  if (!v9)
  {
    Copy = 0;
    if (!v7)
    {
      return Copy;
    }

LABEL_18:
    CFRelease(v7);
    return Copy;
  }

  if (!CFURLResourceIsReachable(v9, 0))
  {
    goto LABEL_14;
  }

  PathComponent = CFURLCreateCopyDeletingLastPathComponent(v8, v10);
  v12 = CFURLCreateCopyAppendingPathComponent(v8, PathComponent, @"transition_trie.dat", 0);
  IsReachable = CFURLResourceIsReachable(v12, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  if (IsReachable)
  {
    Copy = CFStringCreateCopy(v8, Copy);
  }

  else
  {
LABEL_14:
    Copy = 0;
  }

  CFRelease(v10);
  if (v7)
  {
    goto LABEL_18;
  }

  return Copy;
}

void sub_1B5D4E658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12)
{
  sub_1B5D23F18(&a11, 0);
  sub_1B5D23F18(&a12, 0);
  sub_1B5D23F18(&a9, 0);
  sub_1B5CE5794(&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D4E6B8(const __CFDictionary *a1, const __CFLocale *a2)
{
  v20[4] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"dataFile");
  if (!Value)
  {
    v12 = CFLocaleGetValue(a2, *MEMORY[0x1E695E6F8]);
    v13 = v12;
    cf = 0;
    if (a2)
    {
      CFRetain(a2);
      cf = a2;
      v14 = a2;
      if (!v13)
      {
LABEL_17:
        v20[0] = &unk_1F2D5B260;
        v20[3] = v20;
        Copy = sub_1B5CDFEBC(a1, v14);
        sub_1B5DA8570(v20);
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    if (CFStringCompare(v13, @"Latn", 0) == kCFCompareEqualTo)
    {
      v15 = CFLocaleGetValue(a2, *MEMORY[0x1E695E6F0]);
      v16 = CFLocaleCreate(*MEMORY[0x1E695E480], v15);
      if (v14)
      {
        CFRelease(v14);
      }

      cf = v16;
      v14 = v16;
    }

    goto LABEL_17;
  }

  v5 = Value;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], Value, kCFURLPOSIXPathStyle, 0);
  v20[0] = v7;
  if (v7)
  {
    v8 = v7;
    PathComponent = CFURLCopyLastPathComponent(v7);
    v10 = CFDictionaryGetValue(a1, @"type");
    if (v10 && CFStringCompare(v10, @"unified_transliteration", 0) == kCFCompareEqualTo || CFStringHasPrefix(PathComponent, @"UnifiedTransliteration"))
    {
      Copy = CFStringCreateCopy(v6, v5);
      if (!PathComponent)
      {
        goto LABEL_21;
      }
    }

    else
    {
      Copy = 0;
      if (!PathComponent)
      {
LABEL_21:
        CFRelease(v8);
        goto LABEL_22;
      }
    }

    CFRelease(PathComponent);
    goto LABEL_21;
  }

  Copy = 0;
LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return Copy;
}

void sub_1B5D4E8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D4E940(unsigned int a1, int a2)
{
  if ((a1 & 0x80000000) != 0 || a1 > a2)
  {
    __assert_rtn("safe_probability", "LXUtils.cpp", 201, "0 <= numerator && numerator <= denominator && invalid probability calculation");
  }

  if (!a1)
  {
    return 0.0;
  }

  if (a2)
  {
    return a1 / a2;
  }

  return 1.0;
}

CFErrorRef sub_1B5D4E9A0(const void *a1, CFIndex a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E650], a1);
  v5 = CFErrorCreate(0, @"com.apple.Lexicon.ErrorDomain", a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

void sub_1B5D4EA3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE5680(va, 0);
  _Unwind_Resume(a1);
}

void sub_1B5D4EA54(uint64_t a1, CFLocaleRef locale)
{
  v12 = *MEMORY[0x1E69E9840];
  Value = CFLocaleGetValue(locale, *MEMORY[0x1E695E6E8]);
  if (!CFStringGetCString(Value, buffer, 16, 0x8000100u))
  {
    sub_1B5CE410C(a1, "");
    goto LABEL_13;
  }

  sub_1B5CE410C(__p, buffer);
  if (SHIBYTE(v10) < 0)
  {
    if (__p[1] == 6)
    {
      v4 = __p[0];
      goto LABEL_8;
    }

LABEL_12:
    *a1 = *__p;
    *(a1 + 16) = v10;
    goto LABEL_13;
  }

  if (SHIBYTE(v10) != 6)
  {
    goto LABEL_12;
  }

  v4 = __p;
LABEL_8:
  v5 = *v4;
  v6 = *(v4 + 2);
  if (v5 != 1600484729 || v6 != 19272)
  {
    goto LABEL_12;
  }

  sub_1B5CE410C(a1, "yue-Hant");
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B5D4EB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D4EB98(uint64_t result, uint64_t a2)
{
  if (a2 == 8)
  {
    if (*result == 0x746E61482D657579)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (a2 != 7)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_16;
  }

  if ((*result != 1210935418 || *(result + 3) != 1936613704) && (*result != 1210935418 || *(result + 3) != 1953390920))
  {
LABEL_16:
    v4 = result + a2;
    v5 = a2;
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = *--v4;
      --v5;
    }

    while (v6 != 45);
  }

  return result;
}

void sub_1B5D4EC50(uint64_t a1, UChar *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a1 + 72))(a1);
  v8 = LXCursorCreateByAdvancingWithUTF16(v7, a2, a3);
  v9 = v8;
  if (v8)
  {
    (*(*(v8 + 16) + 48))(v8 + 16, a4);
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_1B5D4ED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1B5D066D0(&a9, 0);
  sub_1B5D066D0(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_1B5D4ED40(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v5 = (*(*a1 + 72))(a1);
  v6 = LXCursorCreateByAdvancing(v5, a2);
  v7 = v6;
  if (v6)
  {
    (*(*(v6 + 16) + 48))(v6 + 16, a3);
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1B5D4EDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1B5D066D0(&a9, 0);
  sub_1B5D066D0(&a10, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_1B5D4EFB4(unint64_t a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
}

uint64_t sub_1B5D4EFF0(uint64_t a1, char *a2, unsigned __int16 a3)
{
  v16 = *MEMORY[0x1E69E9840];
  sub_1B5D5CA18(v13, a2, a3);
  sub_1B5CDC2F8(&v8, a1 + 8);
  (*(*v8 + 8))(&v10);
  if (v9)
  {
    sub_1B5CDD904(v9);
  }

  v4 = sub_1B5D25A00(v13, &v10, a1 + 8, a1 + 8, *(a1 + 30128));
  if (!v4)
  {
    v5 = *(a1 + 28720);
    if (v5 == -1)
    {
      sub_1B5D24008();
    }

    v8 = &v12;
    if ((off_1F2D57D30[v5])(&v8, a1 + 14368))
    {
      v4 = sub_1B5D25A00(v13, &v10, a1 + 8, a1 + 14368, *(a1 + 30128));
    }

    else
    {
      v4 = 0;
    }
  }

  if (v10 >= 0xFu && v11)
  {
    MEMORY[0x1B8C880C0](v11, 0x1000C8077774924);
  }

  if (v15 && v14 == 1)
  {
    free(v15);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B5D4F160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, __int16 a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, void *a17)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  if (a17)
  {
    v18 = a16 == 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    free(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D4F1D0(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  sub_1B5CDC2F8(&v7, a1 + 8);
  v5 = sub_1B5D4E0F8(v7, a2, a3);
  if (v8)
  {
    sub_1B5CDD904(v8);
  }

  return v5;
}

void sub_1B5D4F230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1B5CDD904(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D4F248(uint64_t a1, uint64_t a2)
{
  sub_1B5D8024C(&v8, a1 + 28752);
  v3 = v8;
  if (v8 != v9)
  {
    do
    {
      if (*(v3 + 20) < 0xFu)
      {
        v4 = v3 + 42;
      }

      else
      {
        v4 = v3[6];
      }

      (*(a2 + 16))(a2, *(v3 + 8), v4);
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

    while (v6 != v9);
  }

  sub_1B5D32B78(v9[0]);
}

uint64_t sub_1B5D4F320(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D581F0);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = &unk_1F2D56A48;
  *(Instance + 24) = a1;
  sub_1B5D99DFC(Instance + 32, a1 + 8);
  *(Instance + 136) = 0x100000;
  *(Instance + 140) = 0;
  *(Instance + 142) = 0;
  *(Instance + 144) = 0;
  *(Instance + 152) = 0;
  *(Instance + 168) = 0u;
  *(Instance + 184) = 0u;
  *(Instance + 200) = 0u;
  *(Instance + 216) = 0u;
  return Instance;
}

uint64_t sub_1B5D4F3EC()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

CFStringRef sub_1B5D4F440(uint64_t a1)
{
  *(&v9.__r_.__value_.__s + 23) = 7;
  strcpy(&v9, "Static-");
  if (*(a1 + 30144))
  {
    v1 = *(a1 + 30144);
  }

  else
  {
    v1 = (a1 + 30152);
  }

  v2 = strlen(v1);
  v3 = std::string::append(&v9, v1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v11 = v3->__r_.__value_.__r.__words[2];
  *__p = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v11 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v11 >= 0)
  {
    v6 = HIBYTE(v11);
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_1B5CDFA10(v5, v6);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_1B5D4F514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D4F544(uint64_t a1, unsigned int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (sub_1B5D2422C(a1 + 8))
  {
    LODWORD(v42) = a2;
    v4 = *(a1 + 28720);
    if (v4 == -1)
    {
      sub_1B5D24008();
    }

    v44 = &v42;
    (off_1F2D579F0[v4])(&v50, &v44, a1 + 14368);
    if (v50)
    {
      goto LABEL_9;
    }

    LODWORD(v35) = a2;
    v5 = *(a1 + 14360);
    if (v5 == -1)
    {
      sub_1B5D24008();
    }

    v42 = &v35;
    (off_1F2D579F0[v5])(&v44, &v42, a1 + 8);
    sub_1B5D5CBBC(&v50, &v44);
    v52 = v46;
    v53 = v47;
    v54 = v48;
    v55 = v49;
    if (v45 && BYTE6(v44) == 1)
    {
      free(v45);
    }

    if (v50)
    {
LABEL_9:
      LODWORD(v36[0]) = 0x100000;
      WORD2(v36[0]) = 0;
      BYTE6(v36[0]) = 0;
      v36[1] = 0;
      sub_1B5D5CBBC(v36, &v50);
      v38 = v52;
      v39 = v53;
      v40 = v54;
      LOWORD(v41) = v55;
    }

    else
    {
      v14 = *(a1 + 30128);
      if (v14 && (v15 = *(v14 + 7), *v15 <= a2) && v15[*v14] > a2)
      {
        v16 = *(v14 + 8);
        if (v16 != v15)
        {
          v17 = v16 - v15;
          v16 = *(v14 + 7);
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[v17 >> 1];
            v21 = *v19;
            v20 = v19 + 1;
            v17 += ~(v17 >> 1);
            if (v21 > a2)
            {
              v17 = v18;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v17);
        }

        v22 = *(v16 - 1);
        v23 = (v16 - 1) - v15;
        v24 = v23 >> 2;
        v25 = *(v14 + 4);
        v26 = *(v25 + 4 * ((v23 >> 2) + 1));
        v23 &= 0x3FFFFFFFCuLL;
        v27 = *(v25 + v23);
        v28 = *(*(v14 + 1) + v23);
        sub_1B5D4D9E8(&v42, v14, v14[1] + v24);
        v33 = a2 - v22;
        v29 = (a2 - v22) / (v26 - v27);
        v34 = v29 + v28;
        v30 = *(a1 + 28720);
        if (v30 == -1)
        {
          sub_1B5D24008();
        }

        v35 = &v34;
        (off_1F2D579F0[v30])(&v44, &v35, a1 + 14368);
        sub_1B5D5CBBC(&v50, &v44);
        v52 = v46;
        v53 = v47;
        v54 = v48;
        v55 = v49;
        if (v45 && BYTE6(v44) == 1)
        {
          free(v45);
        }

        if (v50)
        {
          goto LABEL_42;
        }

        v34 = v29 + v28;
        v31 = *(a1 + 14360);
        if (v31 == -1)
        {
          sub_1B5D24008();
        }

        v35 = &v34;
        (off_1F2D579F0[v31])(&v44, &v35, a1 + 8);
        sub_1B5D5CBBC(&v50, &v44);
        v52 = v46;
        v53 = v47;
        v54 = v48;
        v55 = v49;
        if (v45 && BYTE6(v44) == 1)
        {
          free(v45);
        }

        if (v50)
        {
LABEL_42:
          v34 = v33 - v29 * (v26 - v27) + v27;
          v32 = *(a1 + 14360);
          if (v32 == -1)
          {
            sub_1B5D24008();
          }

          v35 = &v34;
          (off_1F2D579F0[v32])(&v44, &v35, a1 + 8);
          if (v44 >= v42)
          {
            sub_1B5D335E0(&v50, &v44, v42, a2);
          }

          LODWORD(v36[0]) = 0x100000;
          WORD2(v36[0]) = 0;
          BYTE6(v36[0]) = 0;
          v36[1] = 0;
          sub_1B5D5CBBC(v36, &v50);
          v38 = v52;
          v39 = v53;
          v40 = v54;
          LOWORD(v41) = v55;
          if (v45 && BYTE6(v44) == 1)
          {
            free(v45);
          }
        }

        else
        {
          *v36 = 0u;
          v37 = 0u;
          HIDWORD(v38) = 0;
          v41 = 0;
          WORD1(v36[0]) = 16;
          BYTE6(v36[0]) = 0;
          *&v38 = 0;
          *(&v38 + 5) = 0;
          v39 = 0uLL;
          v40 = 0xFFFFFFFFuLL;
        }

        if (v43 && BYTE6(v42) == 1)
        {
          free(v43);
        }
      }

      else
      {
        *v36 = 0u;
        v37 = 0u;
        HIDWORD(v38) = 0;
        v41 = 0;
        WORD1(v36[0]) = 16;
        BYTE6(v36[0]) = 0;
        *&v38 = 0;
        *(&v38 + 5) = 0;
        v39 = 0uLL;
        v40 = 0xFFFFFFFFuLL;
      }
    }

    if (v51 && BYTE6(v50) == 1)
    {
      free(v51);
    }

    if (LOWORD(v36[0]))
    {
      v6 = log10f(*&v38);
      v7 = *MEMORY[0x1E695E480];
      if (qword_1ED833AC8 != -1)
      {
        dispatch_once(&qword_1ED833AC8, &unk_1F2D581D0);
      }

      Instance = _CFRuntimeCreateInstance();
      sub_1B5D5CABC(Instance + 16, v36);
      v9 = v41;
      v11 = v39;
      v10 = v40;
      *(Instance + 48) = v38;
      *(Instance + 64) = v11;
      *(Instance + 80) = v10;
      *(Instance + 96) = v9;
      *(Instance + 104) = v6;
      *(Instance + 112) = 0;
      *(Instance + 120) = 0;
    }

    else
    {
      Instance = 0;
    }
  }

  else
  {
    Instance = 0;
    *v36 = 0u;
    v37 = 0u;
    WORD1(v36[0]) = 16;
    HIDWORD(v38) = 0;
    v41 = 0;
    BYTE6(v36[0]) = 0;
    *&v38 = 0;
    *(&v38 + 5) = 0;
    v39 = 0uLL;
    v40 = 0xFFFFFFFFuLL;
  }

  if (v36[1] && BYTE6(v36[0]) == 1)
  {
    free(v36[1]);
  }

  v12 = *MEMORY[0x1E69E9840];
  return Instance;
}

void sub_1B5D4FAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34)
{
  v37 = *(v34 + 8);
  if (v37 && a34 == 1)
  {
    free(v37);
  }

  if (a29 && a28 == 1)
  {
    free(a29);
  }

  v38 = *(v34 + 96);
  if (v38)
  {
    if (*(v35 - 202) == 1)
    {
      free(v38);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D4FB84()
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

uint64_t sub_1B5D4FBD8(uint64_t a1)
{
  v1 = *(a1 + 14360);
  if (v1 == -1 || (v6 = &v5, (off_1F2D57FC0[v1])(&v6, a1 + 8), v3 = *(a1 + 28720), v3 == -1))
  {
    sub_1B5D24008();
  }

  v6 = &v5;
  return (off_1F2D57FC0[v3])(&v6, a1 + 14368);
}

uint64_t sub_1B5D4FC60(uint64_t a1)
{
  v1 = *(a1 + 14360);
  if (v1 == -1 || (v6 = &v5, (off_1F2D57F58[v1])(&v6, a1 + 8), v3 = *(a1 + 28720), v3 == -1))
  {
    sub_1B5D24008();
  }

  v6 = &v5;
  return (off_1F2D57F58[v3])(&v6, a1 + 14368);
}

uint64_t sub_1B5D4FD18(unsigned __int16 *a1, CFErrorRef *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v20 = 0x100000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0x100000;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0x100000;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0x100000;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0x100000;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0x100000;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_1B5CDF770(&v20, a1 + 15068);
  sub_1B5CDF770(&v25, a1 + 15084);
  sub_1B5CDF770(&v30, a1 + 15100);
  sub_1B5CDF770(&v45, a1 + 15116);
  v50 = 1065353216;
  sub_1B5D4FFC8(&v8, &v20);
  v4 = sub_1B5CE319C((a1 + 4), &v8);
  if (v19 && v18 == 1)
  {
    free(v19);
  }

  if (v17 && v16 == 1)
  {
    free(v17);
  }

  if (v15 && v14 == 1)
  {
    free(v15);
  }

  if (v13 && v12 == 1)
  {
    free(v13);
  }

  if (v11 && v10 == 1)
  {
    free(v11);
  }

  if (v9 && BYTE6(v8) == 1)
  {
    free(v9);
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if ((v5 & 1) == 0)
  {
    *a2 = sub_1B5D4E9A0(@"Failed to load the immutable lexicon", 0);
  }

  if (v48 && v47 == 1)
  {
    free(v48);
  }

  if (v43 && v42 == 1)
  {
    free(v43);
  }

  if (v38 && v37 == 1)
  {
    free(v38);
  }

  if (v33 && v32 == 1)
  {
    free(v33);
  }

  if (v28 && v27 == 1)
  {
    free(v28);
  }

  if (v23 && v22 == 1)
  {
    free(v23);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B5D4FFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_1B5D500DC(&a10);
  sub_1B5D500DC(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D4FFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5D5CABC(a1, a2);
  sub_1B5D5CABC(v4 + 32, (a2 + 32));
  sub_1B5D5CABC(a1 + 64, (a2 + 64));
  sub_1B5D5CABC(a1 + 96, (a2 + 96));
  sub_1B5D5CABC(a1 + 128, (a2 + 128));
  sub_1B5D5CABC(a1 + 160, (a2 + 160));
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

void sub_1B5D50038(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 136);
  if (v3 && *(v1 + 134) == 1)
  {
    free(v3);
  }

  v4 = *(v1 + 104);
  if (v4 && *(v1 + 102) == 1)
  {
    free(v4);
  }

  v5 = *(v1 + 72);
  if (v5 && *(v1 + 70) == 1)
  {
    free(v5);
  }

  v6 = *(v1 + 40);
  if (v6 && *(v1 + 38) == 1)
  {
    free(v6);
  }

  v7 = *(v1 + 8);
  if (v7)
  {
    if (*(v1 + 6) == 1)
    {
      free(v7);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D500DC(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2 && *(a1 + 166) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 136);
  if (v3 && *(a1 + 134) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 104);
  if (v4 && *(a1 + 102) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 72);
  if (v5 && *(a1 + 70) == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 40);
  if (v6 && *(a1 + 38) == 1)
  {
    free(v6);
  }

  v7 = *(a1 + 8);
  if (v7 && *(a1 + 6) == 1)
  {
    free(v7);
  }

  return a1;
}

void sub_1B5D50190(void *a1)
{
  v2 = a1 + 3584;
  *a1 = &unk_1F2D56968;
  v3 = a1[3780];
  if (v3 && v2[1566] == 1)
  {
    free(v3);
  }

  v4 = a1[3776];
  if (v4 && v2[1534] == 1)
  {
    free(v4);
  }

  v5 = a1[3772];
  if (v5 && v2[1502] == 1)
  {
    free(v5);
  }

  v6 = a1[3768];
  if (v6 && v2[1470] == 1)
  {
    free(v6);
  }

  sub_1B5D240C0((a1 + 1));

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D5025C(void *a1)
{
  v2 = a1 + 3584;
  *a1 = &unk_1F2D56968;
  v3 = a1[3780];
  if (v3 && v2[1566] == 1)
  {
    free(v3);
  }

  v4 = a1[3776];
  if (v4 && v2[1534] == 1)
  {
    free(v4);
  }

  v5 = a1[3772];
  if (v5 && v2[1502] == 1)
  {
    free(v5);
  }

  v6 = a1[3768];
  if (v6 && v2[1470] == 1)
  {
    free(v6);
  }

  sub_1B5D240C0((a1 + 1));
  return a1;
}

char *sub_1B5D50360(char *a1, uint64_t a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a1 + 28672;
  *a1 = &unk_1F2D56968;
  sub_1B5D5091C((a1 + 8));
  if (a2)
  {
    v11 = MEMORY[0x1B8C87840](a2);
    sub_1B5CDC4B4((a1 + 30136), v11);
  }

  else
  {
    *(v10 + 366) = 0x100000;
    *(v10 + 734) = 0;
    *(v10 + 1470) = 0;
    *(a1 + 3768) = 0;
    *(v10 + 1480) = 0;
  }

  sub_1B5CDC4B4((a1 + 30168), a3);
  if (a4)
  {
    sub_1B5CDC4B4((v10 + 191), a4);
    if (a5)
    {
LABEL_6:
      sub_1B5CDC4B4((v10 + 195), a5);
      goto LABEL_9;
    }
  }

  else
  {
    *(v10 + 382) = 0x100000;
    *(v10 + 766) = 0;
    *(v10 + 1534) = 0;
    *(a1 + 3776) = 0;
    *(v10 + 1544) = 0;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  *(v10 + 390) = 0x100000;
  *(v10 + 782) = 0;
  *(v10 + 1566) = 0;
  *(a1 + 3780) = 0;
  *(v10 + 1576) = 0;
LABEL_9:
  sub_1B5CF7CDC(v35);
  v12 = sub_1B5CE599C(&v36, "creating static lexicon with locale=", 36);
  if (*(a1 + 3768))
  {
    v13 = *(a1 + 3768);
  }

  else
  {
    v13 = a1 + 30152;
  }

  v14 = strlen(v13);
  v15 = sub_1B5CE599C(v12, v13, v14);
  v16 = sub_1B5CE599C(v15, ", baseline_path=", 16);
  if (*(a1 + 3772))
  {
    v17 = *(a1 + 3772);
  }

  else
  {
    v17 = a1 + 30184;
  }

  v18 = strlen(v17);
  sub_1B5CE599C(v16, v17, v18);
  if (*(v10 + 764))
  {
    v19 = sub_1B5CE599C(&v36, ", delta_path=", 13);
    if (*(a1 + 3776))
    {
      v20 = *(a1 + 3776);
    }

    else
    {
      v20 = a1 + 30216;
    }

    v21 = strlen(v20);
    sub_1B5CE599C(v19, v20, v21);
  }

  if (*(v10 + 780))
  {
    v22 = sub_1B5CE599C(&v36, ", stem_suffix_id_map_path=", 26);
    if (*(a1 + 3780))
    {
      v23 = *(a1 + 3780);
    }

    else
    {
      v23 = a1 + 30248;
    }

    v24 = strlen(v23);
    sub_1B5CE599C(v22, v23, v24);
  }

  if (qword_1ED833B68 != -1)
  {
    dispatch_once(&qword_1ED833B68, &unk_1F2D581B0);
  }

  v25 = qword_1ED833B70;
  if (os_log_type_enabled(qword_1ED833B70, OS_LOG_TYPE_INFO))
  {
    if ((v43 & 0x10) != 0)
    {
      v27 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v27 = v39;
      }

      locale = v38[4].__locale_;
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v26 = 0;
        v34 = 0;
LABEL_41:
        *(&__p + v26) = 0;
        p_p = &__p;
        if (v34 < 0)
        {
          p_p = __p;
        }

        *buf = 136315138;
        v46 = p_p;
        _os_log_impl(&dword_1B5CDB000, v25, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
        if (v34 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_45;
      }

      locale = v38[1].__locale_;
      v27 = v38[3].__locale_;
    }

    v26 = v27 - locale;
    if ((v27 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1B5D114C8();
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    v34 = v27 - locale;
    if (v26)
    {
      memmove(&__p, locale, v26);
    }

    goto LABEL_41;
  }

LABEL_45:
  v35[0] = *MEMORY[0x1E69E54D8];
  v30 = *(MEMORY[0x1E69E54D8] + 72);
  *(v35 + *(v35[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v36 = v30;
  v37 = MEMORY[0x1E69E5548] + 16;
  if (v41 < 0)
  {
    operator delete(v40);
  }

  v37 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](&v44);
  v31 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B5D50860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1B5CFBC44(&a12, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C88080](&a28);
  v32 = v28[3780];
  if (v32 && v30[1566] == 1)
  {
    free(v32);
  }

  v33 = v28[3776];
  if (v33 && v30[1534] == 1)
  {
    free(v33);
  }

  v34 = v28[3772];
  if (v34 && v30[1502] == 1)
  {
    free(v34);
  }

  v35 = v28[3768];
  if (v35)
  {
    if (v30[1470] == 1)
    {
      free(v35);
    }
  }

  sub_1B5D240C0(v29);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D5091C(uint64_t a1)
{
  v2 = sub_1B5DBAA24(a1);
  sub_1B5DBAA24(v2 + 3590);
  *(a1 + 28736) = 0;
  *(a1 + 28720) = 0u;
  sub_1B5CDDEAC(a1 + 28744);
  *(a1 + 30120) = 0;
  return a1;
}

void sub_1B5D50974(_Unwind_Exception *a1)
{
  v4 = *(v1 + 28736);
  *(v1 + 28736) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(v1 + 28728);
  if (v5)
  {
    sub_1B5CDD904(v5);
  }

  sub_1B5D23204(v1 + v2);
  sub_1B5D23204(v1);
  _Unwind_Resume(a1);
}

os_log_t sub_1B5D509D4()
{
  result = os_log_create("com.apple.Lexicon", "Immutable");
  qword_1ED833B70 = result;
  return result;
}

uint64_t LXLexiconCreate(const __CFDictionary *a1, CFErrorRef *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = sub_1B5CDFCFC(a1);
  v41 = v4;
  if (!_os_feature_enabled_impl() || (v5 = sub_1B5D4E6B8(a1, v4), v6 = v5, (v42 = v5) == 0) || (v7 = CFStringGetLength(v5), CFRelease(v6), v7 < 1))
  {
    Value = CFDictionaryGetValue(a1, @"type");
    if (Value)
    {
      if (CFStringCompare(Value, @"morphemes", 0) == kCFCompareEqualTo)
      {
        goto LABEL_14;
      }
    }

    else if (_os_feature_enabled_impl())
    {
      v15 = sub_1B5D4E4D0(a1, v4);
      v16 = v15;
      v42 = v15;
      if (v15)
      {
        Length = CFStringGetLength(v15);
        CFRelease(v16);
        if (Length >= 1)
        {
LABEL_14:
          v18 = sub_1B5D4E4D0(a1, v4);
          v42 = v18;
          v19 = *MEMORY[0x1E695E480];
          if (qword_1ED833C28 != -1)
          {
            dispatch_once(&qword_1ED833C28, &unk_1F2D58210);
          }

          Instance = _CFRuntimeCreateInstance();
          sub_1B5DA0278((Instance + 16), v4, v18);
        }
      }
    }

    v21 = sub_1B5D4E224(a1, v4);
    v22 = sub_1B5D4E3C4(a1, v4);
    v23 = CFDictionaryGetValue(a1, @"enableInternalStemSuffix");
    v24 = v23;
    if (v23 && (v25 = CFGetTypeID(v23), v25 == CFBooleanGetTypeID()) && (v26 = CFBooleanGetValue(v24), v21) && v26)
    {
      v27 = *MEMORY[0x1E695E480];
      v28 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v21, kCFURLPOSIXPathStyle, 0);
      v42 = v28;
      if (v28)
      {
        url = CFURLCreateCopyDeletingLastPathComponent(v27, v28);
        PathComponent = CFURLCopyLastPathComponent(v28);
        if (CFStringHasPrefix(PathComponent, @"Unigrams"))
        {
          v45.length = CFStringGetLength(PathComponent) - 8;
          v45.location = 8;
          v30 = CFStringCreateWithSubstring(v27, PathComponent, v45);
          v31 = CFStringCreateWithFormat(v27, 0, @"lstsfmap%@", v30);
          v32 = CFURLCreateCopyAppendingPathComponent(v27, url, v31, 0);
          if (CFURLResourceIsReachable(v32, 0))
          {
            v33 = CFURLCopyFileSystemPath(v32, kCFURLPOSIXPathStyle);
          }

          else
          {
            v33 = 0;
          }

          if (v32)
          {
            CFRelease(v32);
          }

          if (v31)
          {
            CFRelease(v31);
          }

          if (v30)
          {
            CFRelease(v30);
          }
        }

        else
        {
          v33 = 0;
        }

        if (PathComponent)
        {
          CFRelease(PathComponent);
        }

        if (url)
        {
          CFRelease(url);
        }

        CFRelease(v28);
      }

      else
      {
        v33 = 0;
      }

      cf = v33;
    }

    else
    {
      v33 = 0;
      cf = 0;
      if (!v21)
      {
        goto LABEL_53;
      }
    }

    if (CFStringGetLength(v21))
    {
      v35 = *MEMORY[0x1E695E480];
      if (qword_1ED833C28 != -1)
      {
        dispatch_once(&qword_1ED833C28, &unk_1F2D58210);
      }

      v11 = _CFRuntimeCreateInstance();
      sub_1B5D50360((v11 + 16), v4, v21, v22, v33);
      v36 = 1;
      v33 = cf;
      if (!cf)
      {
LABEL_58:
        if (v22)
        {
          CFRelease(v22);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_63;
      }

LABEL_57:
      CFRelease(v33);
      goto LABEL_58;
    }

LABEL_53:
    if (a2)
    {
      v11 = 0;
      v36 = 0;
      *a2 = sub_1B5D4E9A0(@"Could not determine the location of the base unigrams file, or one was not provided.", 0);
      if (!v33)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v11 = 0;
      v36 = 0;
      if (!v33)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_57;
  }

  v8 = sub_1B5D4E6B8(a1, v4);
  v9 = *MEMORY[0x1E695E480];
  if (qword_1ED833C28 != -1)
  {
    dispatch_once(&qword_1ED833C28, &unk_1F2D58210);
  }

  v10 = _CFRuntimeCreateInstance();
  v11 = v10;
  *(v10 + 24) = 0;
  v12 = v10 + 24;
  *(v10 + 16) = &unk_1F2D5B4D8;
  if (v4)
  {
    v13 = MEMORY[0x1B8C87840](v4);
    sub_1B5CDC4B4(v12 + 8, v13);
  }

  else
  {
    *(v10 + 32) = 0x100000;
    *(v10 + 36) = 0;
    *(v10 + 38) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
  }

  sub_1B5CDC4B4(v11 + 64, v8);
  *(v11 + 160) = 0x100000;
  *(v11 + 96) = 0x100000;
  *(v11 + 100) = 0;
  *(v11 + 102) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 128) = 0x100000;
  *(v11 + 132) = 0;
  *(v11 + 134) = 0;
  *(v11 + 136) = 0;
  *(v11 + 144) = 0;
  *(v11 + 164) = 0;
  *(v11 + 166) = 0;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  v34 = CFLocaleGetValue(v4, *MEMORY[0x1E695E6F8]);
  sub_1B5CDC4B4(&v42, v34);
  sub_1B5D5CBBC(v11 + 160, &v42);
  if (v43 && BYTE6(v42) == 1)
  {
    free(v43);
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_63:
  if ((*(*(v11 + 16) + 16))(v11 + 16, a2))
  {
    goto LABEL_66;
  }

  CFRelease(v11);
LABEL_65:
  v11 = 0;
LABEL_66:
  if (v41)
  {
    CFRelease(v41);
  }

  v37 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1B5D51010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D511F0()
{
  qword_1ED833B90 = 0;
  *algn_1ED833B98 = "LXLexicon";
  qword_1ED833BA0 = 0;
  unk_1ED833BA8 = 0;
  qword_1ED833BB0 = sub_1B5D1A1F0;
  unk_1ED833BB8 = 0u;
  unk_1ED833BC8 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833B80 = result;
  return result;
}

uint64_t LXLexiconCreateMutable(const __CFDictionary *a1, CFErrorRef *a2)
{
  Value = CFDictionaryGetValue(a1, @"name");
  if (Value && CFStringGetLength(Value))
  {
    CFDictionaryGetValue(a1, @"dataFile");
    sub_1B5CDFCFC(a1);
    v5 = CFDictionaryGetValue(a1, @"threadSafeTokenSpace");
    if (v5)
    {
      if (CFBooleanGetValue(v5))
      {
        operator new();
      }
    }

    operator new();
  }

  if (a2)
  {
    *a2 = sub_1B5D4E9A0(@"A name is required when creating a mutable lexicon", 0);
  }

  return 0;
}

void sub_1B5D514F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  (*(*v4 + 8))(v4);
  sub_1B5D1E6E0(va, 0);
  _Unwind_Resume(a1);
}

void sub_1B5D515DC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D55218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D51678(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D58240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D517C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D51800(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56D28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D5183C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1B5D5186C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t LXLexiconCopyEntryForTokenID(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 56))();
  }

  return result;
}

uint64_t LXLexiconCopyName(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("LXLexiconCopyName", "LXLexicon.cpp", 430, "lexicon && Missing lexicon");
  }

  v2 = *(*(a1 + 16) + 64);

  return v2();
}

uint64_t LXLexiconCreateRootCursor(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 72))();
  }

  return result;
}

uint64_t LXLexiconEnumerateEntriesForString(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 192))();
  }

  return result;
}

uint64_t LXLexiconGetFirstTokenIDForString(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (a1)
  {
    (*(*(a1 + 16) + 192))();
    v1 = *(v4 + 6);
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1B5D51A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D51A74(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    __assert_rtn("LXEntryGetTokenID", "LXEntry.cpp", 71, "entry");
  }

  *(*(*(result + 32) + 8) + 24) = *(a2 + 76);
  *a3 = 1;
  return result;
}

void LXLexiconWriteDebugDump(void *a1, const __CFURL *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = 0;
  if (a1)
  {
    a1 = (*(a1[2] + 72))(a1 + 2);
  }

  v5[4] = &v7;
  v5[5] = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1B5D51DD0;
  v5[3] = &unk_1E7C20F00;
  sub_1B5D2E8D0(a1, &v6, v5);
  v4 = v8[3];
  if (a1)
  {
    CFRelease(a1);
  }

  _Block_object_dispose(&v7, 8);
  sub_1B5CE4F88(v4, a2, kCFPropertyListXMLFormat_v1_0, 1, 0);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1B5D51D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B5D51DD0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("LXEntryGetTokenID", "LXEntry.cpp", 71, "entry");
  }

  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(a2 + 76);
  v18 = *(a2 + 52) & 0x3FA000EF;
  valuePtr = v4;
  v5 = *(a2 + 64);
  v16 = *(a2 + 68);
  v17 = v5;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberIntType, &v18);
  v8 = CFNumberCreate(0, kCFNumberIntType, &v17);
  v9 = CFNumberCreate(0, kCFNumberIntType, &v16);
  v10 = CFDateCreate(0, *(a2 + 112));
  v22 = v10;
  v11 = CFLocaleCreate(0, @"en_US");
  v21 = v11;
  v12 = CFDateFormatterCreate(0, v11, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  v20 = v12;
  CFDateFormatterSetFormat(v12, @"yyyy-MM-dd HH:mm:ss zzz");
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v12, v10);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v22 = Mutable;
  CFDictionarySetValue(Mutable, @"ID", v6);
  CFDictionarySetValue(Mutable, @"flags", v7);
  CFDictionarySetValue(Mutable, @"usageCount", v8);
  CFDictionarySetValue(Mutable, @"penaltyCount", v9);
  CFDictionarySetValue(Mutable, @"timestamp", StringWithDate);
  v15 = LXEntryCopyString(a2);
  v21 = v15;
  CFDictionarySetValue(v3, v15, Mutable);
  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (StringWithDate)
  {
    CFRelease(StringWithDate);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_1B5D52078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, const void *a18)
{
  sub_1B5CE5794(&a17, 0);
  sub_1B5CE5680(&a18, 0);
  sub_1B5CE5794(&a9, 0);
  sub_1B5D52198(&a10);
  sub_1B5D52198(&a11);
  sub_1B5D52198(&a12);
  sub_1B5D52198(&a13);
  _Unwind_Resume(a1);
}

void sub_1B5D52130(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

void sub_1B5D52164(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

void sub_1B5D52198(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

os_log_t sub_1B5D5225C()
{
  result = os_log_create("com.apple.Lexicon", "Validation");
  qword_1EB90CAE8 = result;
  return result;
}

os_log_t sub_1B5D5228C()
{
  result = os_log_create("com.apple.Lexicon", "ByteString");
  qword_1EB90CAF8 = result;
  return result;
}

unsigned __int16 *sub_1B5D522BC(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 >= 0xFu)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
    }
  }

  v5 = *a2;
  if (v5 >= 0xF)
  {
    *a1 = v5;
    operator new[]();
  }

  *a1 = *a2;
  return a1;
}

BOOL sub_1B5D5234C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2 > v3)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  if (v2 <= 0xE)
  {
    v5 = a2 + 1;
  }

  if (v3 < 0xF)
  {
    v6 = a1 + 1;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  return memcmp(v5, v6, v2) == 0;
}

uint64_t sub_1B5D523B0(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 0x100000;
  *(result + 4) = 0;
  *(result + 6) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  LODWORD(v8) = *a2;
  if (*a2)
  {
    v10 = result;
    v11 = 0;
    v12 = a2 + 1;
    do
    {
      v13 = v12;
      if (v8 >= 0xF)
      {
        v13 = *(a2 + 1);
      }

      result = sub_1B5D5DAB8(v10, "%02x", a3, a4, a5, a6, a7, a8, *(v13 + v11++));
      v8 = *a2;
    }

    while (v11 < v8);
  }

  return result;
}

void sub_1B5D52450(_Unwind_Exception *exception_object)
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

uint64_t sub_1B5D52484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1174405120;
    v6[2] = sub_1B5D52580;
    v6[3] = &unk_1F2D582C0;
    v6[4] = a2;
    sub_1B5D52634(v7, a3);
    (*(*(v3 + 16) + 48))(v3 + 16, v6);
    result = sub_1B5D06858(v7);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5D52580(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  if (!a2)
  {
    __assert_rtn("LXEntryGetEmissionCost", "LXEntry.cpp", 119, "entry");
  }

  if (*(a2 + 88) == 1)
  {
    v2 = *(a2 + 96);
    if (v2 >= 0x7FFFu)
    {
      v2 = 0x7FFF;
    }

    v8 = v2;
    v3 = *(a2 + 92);
    v4 = HIWORD(v3);
  }

  else
  {
    LOWORD(v3) = 0;
    LOWORD(v4) = 0;
    v8 = 0x7FFF;
  }

  v7[0] = v3;
  v7[1] = v4;
  if (*(*(a1 + 32) + 14))
  {
    v5 = 11;
  }

  else
  {
    v5 = 9;
  }

  v7[2] = v5;
  return sub_1B5D1177C(*(a1 + 64), v7, a2);
}

uint64_t sub_1B5D52634(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1B5D526E0(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664))
  {
    operator new();
  }

  result = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D52C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D52CDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1B5D52D5C(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_1B5D066D0(a1, cf);
  }
}

__n128 sub_1B5D52DBC(void *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 16 * (v4 - v5) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x80;
    v9 = v7 - 128;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    a1[4] = v9;
    v18 = *v5;
    a1[1] = v5 + 8;
    sub_1B5D54004(a1, &v18);
  }

  v14 = a1[5] + a1[4];
  v15 = *(a1[1] + ((v14 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v14 & 0x7F);
  v16 = *a2;
  *a2 = 0;
  *v15 = v16;
  result = *(a2 + 1);
  *(v15 + 24) = a2[3];
  *(v15 + 8) = result;
  ++a1[5];
  return result;
}

void sub_1B5D532A8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D532D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = a2;
  v8 = a5;
  v6 = a4;
  v7 = a3;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v9, &v8, &v7, &v6);
}

uint64_t sub_1B5D53338(uint64_t result, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a2)
  {
    v9 = result;
    v35 = 0;
    v36 = &v35;
    v37 = 0x5802000000;
    v38 = sub_1B5D53820;
    v39 = sub_1B5D53860;
    memset(v40, 0, sizeof(v40));
    v10 = (*(a2[2] + 112))();
    v34[1] = v10;
    Length = CFStringGetLength(v10);
    v12 = v36;
    v34[0] = CFRetain(a2);
    sub_1B5D53868(v12 + 5, v34);
    v13 = v36;
    v14 = v36[10];
    if (v14)
    {
      while (1)
      {
        v15 = v14 + v13[9] - 1;
        v16 = *(v13[6] + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8));
        v17 = v15 & 0x1FF;
        v18 = *(v16 + 8 * v17);
        *(v16 + 8 * v17) = 0;
        v34[0] = v18;
        v19 = v36;
        v20 = v36[10] + v36[9] - 1;
        sub_1B5D066D0((*(v36[6] + ((v20 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v20 & 0x1FF)), 0);
        v26 = v19[6];
        v25 = v19[7];
        if (v25 == v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = ((v25 - v26) << 6) - 1;
        }

        v28 = v19[9];
        v29 = v19[10] - 1;
        v19[10] = v29;
        if ((v27 - (v29 + v28)) >= 0x400)
        {
          operator delete(*(v25 - 8));
          v19[7] -= 8;
        }

        v30 = v18 ? (*(v18[2] + 112))(v18 + 2, v21, v22, v23, v24) : 0;
        v33[5] = v30;
        v31 = CFStringGetLength(v30) - Length;
        if (v31 >= 1 && (sub_1B5D532D4(*(a4 + 24), v18, a3, v31, a5) & 1) == 0)
        {
          break;
        }

        v32 = *(v9 + 676);
        if ((v32 & 0x80000000) != 0 || v31 < v32)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 0x40000000;
          v33[2] = sub_1B5D53D5C;
          v33[3] = &unk_1E7C20FD0;
          v33[4] = &v35;
          if (v18)
          {
            (*(v18[2] + 64))(v18 + 2, v33);
          }
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        v13 = v36;
        v14 = v36[10];
        if (!v14)
        {
          goto LABEL_27;
        }
      }

      if (v30)
      {
        CFRelease(v30);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

LABEL_27:
    if (v10)
    {
      CFRelease(v10);
    }

    _Block_object_dispose(&v35, 8);
    return sub_1B5D53DA0(v40);
  }

  return result;
}

void sub_1B5D53654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  sub_1B5CE5794(va, 0);
  _Block_object_dispose(va1, 8);
  sub_1B5D53DA0(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D536C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v3 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 >> 7];
    v7 = (*v6 + 32 * (v5 & 0x7F));
    v8 = *(v2 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        sub_1B5D066D0(v7, 0);
        v7 += 4;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
    goto LABEL_14;
  }

  if (v10 == 2)
  {
    v11 = 128;
LABEL_14:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_1B5D53820(void *a1, void *a2)
{
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  v2 = a2[9];
  a1[8] = a2[8];
  result = 0.0;
  *(a2 + 7) = 0u;
  *(a2 + 5) = 0u;
  a1[9] = v2;
  a1[10] = a2[10];
  a2[9] = 0;
  a2[10] = 0;
  return result;
}

void *sub_1B5D53868(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x200)
    {
      v11 = result[3];
      v12 = v11 - *result;
      if (v5 - v6 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      sub_1B5D051D8(v14);
    }

    result[4] = v9 - 512;
    v15 = *v6;
    result[1] = v6 + 8;
    result = sub_1B5D53F00(result, &v15);
    v8 = v3[5];
    v6 = v3[1];
    v10 = v3[4] + v8;
  }

  *(*&v6[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void sub_1B5D53D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1B5D53D5C(uint64_t a1, CFTypeRef cf)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = CFRetain(cf);
  return sub_1B5D53868((v2 + 40), &v4);
}

uint64_t sub_1B5D53DA0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        sub_1B5D066D0(v7++, 0);
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 256;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 512;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1B5D53F00(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1B5D051D8(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *sub_1B5D54004(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t sub_1B5D54130(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D583E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D54170(uint64_t a1, void **a2, double *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = **(a1 + 16);
  if (v7 < v6 && v5 != 0)
  {
    v10 = *a3;
    v11 = *a4;
    v12 = *a5;
    if ((*(v5[2] + 40))())
    {
      v13 = *(a1 + 16);
      v14 = **(a1 + 24);
      v15 = (*v13)++;
      v16 = v14 + 24 * v15;
      sub_1B5D52D5C((v16 + 16), v5);
      *(v16 + 12) = 2 * v11;
      *v16 = v10 < -0.0000001;
      v17 = v10;
      *(v16 + 4) = v17;
      *(v16 + 14) = 2 * v12;
    }
  }

  return v7 < v6;
}

__n128 sub_1B5D5425C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D58380;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1B5D54308(uint64_t a1, char a2, UChar *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = a8;
  v9 = *(a1 + 664);
  if (!v9)
  {
    v19 = 0;
    goto LABEL_32;
  }

  v24 = 0;
  v13 = 0;
  cf = (*(*(v9 + 16) + 72))();
  v14 = a4 >> 1;
  while (v14)
  {
    if (!*a3 || !cf)
    {
      v14 = 1;
      break;
    }

    v15 = LXCursorCreateByAdvancingWithUTF16(cf, a3, 1);
    if (!v15)
    {
      v19 = v24;
      goto LABEL_30;
    }

    ++v13;
    ++a3;
    if ((a2 & 4) != 0)
    {
      --v14;
      sub_1B5D52D5C(&cf, v15);
LABEL_12:
      v17 = v24;
      if (v24 >= a9)
      {
        v16 = 3;
      }

      else if ((*(v15[2] + 40))())
      {
        v24 = v17 + 1;
        v18 = v25 + 24 * v17;
        sub_1B5D52D5C((v18 + 16), v15);
        v16 = 0;
        *(v18 + 12) = 2 * v13;
        *(v18 + 14) = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_18;
    }

    sub_1B5D52D5C(&cf, v15);
    v16 = 0;
    if ((a2 & 1) != 0 && v14 == 1)
    {
      v14 = 0;
      goto LABEL_12;
    }

    --v14;
LABEL_18:
    CFRelease(v15);
    if (v16)
    {
      break;
    }
  }

  v19 = v24;
  if ((a2 & 2) != 0 && v24 < a9 && v14 == 0)
  {
    v26 = 0;
    operator new();
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_32:
  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1B5D54574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D52CDC(va1);
  sub_1B5D066D0(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D545D4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D54614(uint64_t a1, void **a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = **(a1 + 16);
  if (v7 < v6 && v5 != 0)
  {
    v10 = *a4;
    v11 = *a5;
    if ((*(v5[2] + 40))())
    {
      v12 = *(a1 + 16);
      v13 = **(a1 + 24);
      v14 = (*v12)++;
      v15 = v13 + 24 * v14;
      sub_1B5D52D5C((v15 + 16), v5);
      *(v15 + 12) = 2 * v10;
      *(v15 + 14) = 2 * v11;
    }
  }

  return v7 < v6;
}

__n128 sub_1B5D546D8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D58300;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1B5D5479C(uint64_t a1)
{
  *a1 = &unk_1F2D55F50;
  sub_1B5D1E6A8((a1 + 664), 0);
  sub_1B5D14D70(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D5480C(uint64_t a1)
{
  *a1 = &unk_1F2D55F50;
  sub_1B5D1E6A8((a1 + 664), 0);

  return sub_1B5D14D70(a1);
}

BOOL sub_1B5D54868(uint64_t a1, UInt8 *a2, CFIndex a3, const char *a4)
{
  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf[2] = Mutable;
  v9 = sub_1B5CDFA10(a2, a3);
  cf[1] = v9;
  CFDictionaryAddValue(Mutable, @"locale", v9);
  if (a4)
  {
    v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a4, 0x8000100u);
    cf[0] = v10;
    CFDictionaryAddValue(Mutable, @"dataFile", v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  cf[0] = 0;
  v11 = LXLexiconCreate(Mutable, cf);
  sub_1B5D1E6A8((a1 + 664), v11);
  v12 = cf[0];
  if (!cf[0])
  {
    *(a1 + 52) = 0;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  CFRelease(cf[0]);
  if (v9)
  {
LABEL_8:
    CFRelease(v9);
  }

LABEL_9:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12 == 0;
}

void sub_1B5D549A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_1B5CE5794(va, 0);
  sub_1B5CE5794(va1, 0);
  sub_1B5CE5680(va2, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D549EC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1B5CEC274();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1B5D54A40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1B5D54AEC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (a2 >= ((*(a1 + 16) - v2) >> 2))
  {
    __assert_rtn("decode", "LXCodebookCoder.cpp", 84, "false && Invalid index for meta flags codebook");
  }

  return *(v2 + 4 * a2);
}

void sub_1B5D54B34(void *a1)
{
  *a1 = &unk_1F2D55CF8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D54BA4(void *a1)
{
  *a1 = &unk_1F2D55CF8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

ssize_t sub_1B5D54BF4(uint64_t a1, ssize_t a2)
{
  v4 = *(a1 + 40) - *(a1 + 32);
  v7 = bswap32(v4);
  sub_1B5DA51F0(a2, &v7, 4);
  v5 = *(a1 + 32);

  return sub_1B5DA51F0(a2, v5, v4);
}

uint64_t sub_1B5D54C64(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v4 == v3)
  {
    __assert_rtn("encode", "LXCodebookCoder.cpp", 48, "!m_flagsCodebook.empty()");
  }

  v5 = *(a1 + 32);
  while (*v5 != a2)
  {
    if (++v5 == v3)
    {
      goto LABEL_5;
    }
  }

  if (v5 == v3)
  {
LABEL_5:
    __assert_rtn("encode", "LXCodebookCoder.cpp", 51, "false && Unknown LXMetaFlags value");
  }

  return ((v5 - v4) >> 2);
}

void sub_1B5D54CF8(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1 + 4;
  if (a1[4] != a1[5])
  {
    __assert_rtn("compile", "LXCodebookCoder.cpp", 36, "m_flagsCodebook.empty()");
  }

  v3 = atomic_load(byte_1EB90C7D0);
  if (v3)
  {
    v4 = atomic_load(byte_1EB90CC20);
    if (v4)
    {
      printf("Compiling %lu distinct metadata flags values", (a1[2] - a1[1]) >> 4);
      putchar(10);
    }

    else
    {
      v5 = sub_1B5D32914();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (a1[2] - a1[1]) >> 4;
        *buf = 134217984;
        v17 = v6;
        _os_log_impl(&dword_1B5CDB000, v5, OS_LOG_TYPE_DEFAULT, "Compiling %lu distinct metadata flags values", buf, 0xCu);
      }
    }
  }

  v7 = a1[1];
  v8 = a1[2];
  v9 = 126 - 2 * __clz((v8 - v7) >> 4);
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_1B5D54E7C(v7, v8, v10, 1);
  sub_1B5CE13B8(v1, (a1[2] - a1[1]) >> 4);
  v11 = a1[1];
  v12 = a1[2];
  if (v11 != v12)
  {
    v13 = a1[4];
    do
    {
      v14 = *v11;
      v11 += 4;
      *v13++ = v14;
    }

    while (v11 != v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1B5D54E7C(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v81 = *(a2 - 8);
        v82 = *(v8 + 8);
        if (v81 > v82)
        {
          v83 = *v8;
          *v8 = *(a2 - 16);
          *(a2 - 16) = v83;
          *(v8 + 8) = v81;
          *(a2 - 8) = v82;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v88 = (v8 + 24);
      v89 = *(v8 + 24);
      v91 = (v8 + 8);
      v90 = *(v8 + 8);
      v92 = *(v8 + 40);
      if (v89 <= v90)
      {
        if (v92 > v89)
        {
          v139 = *(v8 + 16);
          v140 = *(v8 + 32);
          *(v8 + 16) = v140;
          *(v8 + 32) = v139;
          *(v8 + 24) = v92;
          *(v8 + 40) = v89;
          if (v92 > v90)
          {
            v141 = *v8;
            *v8 = v140;
            *(v8 + 16) = v141;
            goto LABEL_187;
          }

LABEL_188:
          v92 = v89;
        }
      }

      else
      {
        v93 = *v8;
        if (v92 > v89)
        {
          *v8 = *(v8 + 32);
          *(v8 + 32) = v93;
          goto LABEL_186;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v93;
        *(v8 + 8) = v89;
        *(v8 + 24) = v90;
        if (v92 > v90)
        {
          *(v8 + 16) = *(v8 + 32);
          *(v8 + 32) = v93;
          v91 = (v8 + 24);
LABEL_186:
          v88 = (v8 + 40);
          v89 = v90;
LABEL_187:
          *v91 = v92;
          *v88 = v90;
          goto LABEL_188;
        }
      }

      v149 = *(a2 - 8);
      if (v149 > v92)
      {
        v150 = *(v8 + 32);
        *(v8 + 32) = *(a2 - 16);
        *(a2 - 16) = v150;
        *(v8 + 40) = v149;
        *(a2 - 8) = v92;
        v151 = *(v8 + 40);
        v152 = *(v8 + 24);
        if (v151 > v152)
        {
          v153 = *(v8 + 16);
          v154 = *(v8 + 32);
          *(v8 + 16) = v154;
          *(v8 + 32) = v153;
          *(v8 + 24) = v151;
          *(v8 + 40) = v152;
          v155 = *(v8 + 8);
          if (v151 > v155)
          {
            v156 = *v8;
            *v8 = v154;
            *(v8 + 16) = v156;
            *(v8 + 8) = v151;
            *(v8 + 24) = v155;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_1B5D55A3C(v8, (v8 + 16), (v8 + 32), (v8 + 48), (a2 - 16));
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = (v8 + 16);
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v99 = *(v98 + 3);
            v100 = *(v98 + 1);
            v98 = v94;
            if (v99 > v100)
            {
              v101 = *v94;
              v102 = v97;
              while (1)
              {
                v103 = v8 + v102;
                *(v103 + 16) = *(v8 + v102);
                *(v103 + 24) = *(v8 + v102 + 8);
                if (!v102)
                {
                  break;
                }

                v102 -= 16;
                if (v99 <= *(v103 - 8))
                {
                  v104 = v8 + v102 + 16;
                  goto LABEL_131;
                }
              }

              v104 = v8;
LABEL_131:
              *v104 = v101;
              *(v104 + 8) = v99;
            }

            v94 = v98 + 4;
            v97 += 16;
          }

          while (v98 + 4 != a2);
        }
      }

      else if (!v96)
      {
        v142 = v8 + 8;
        do
        {
          v143 = *(v7 + 24);
          v144 = *(v7 + 8);
          v7 = v94;
          if (v143 > v144)
          {
            v145 = *v94;
            v146 = v142;
            do
            {
              *(v146 + 8) = *(v146 - 8);
              *(v146 + 16) = *v146;
              v147 = *(v146 - 16);
              v146 -= 16;
            }

            while (v143 > v147);
            *(v146 + 8) = v145;
            *(v146 + 16) = v143;
          }

          v94 = (v7 + 16);
          v142 += 16;
        }

        while (v7 + 16 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = v8 + 16 * v108;
            if (2 * v107 + 2 < v9)
            {
              v110 = *(v109 + 8) > *(v109 + 24);
              v109 += 16 * v110;
              if (v110)
              {
                v108 = 2 * v107 + 2;
              }
            }

            v111 = v8 + 16 * v107;
            v112 = *(v109 + 8);
            v113 = *(v111 + 8);
            if (v112 <= v113)
            {
              v114 = *v111;
              do
              {
                v115 = v111;
                v111 = v109;
                *v115 = *v109;
                *(v115 + 8) = v112;
                if (v105 < v108)
                {
                  break;
                }

                v116 = (2 * v108) | 1;
                v109 = v8 + 16 * v116;
                v117 = 2 * v108 + 2;
                if (v117 < v9)
                {
                  result = *(v109 + 24);
                  v110 = *(v109 + 8) > result;
                  v109 += 16 * v110;
                  if (v110)
                  {
                    v116 = v117;
                  }
                }

                v112 = *(v109 + 8);
                v108 = v116;
              }

              while (v112 <= v113);
              *v111 = v114;
              *(v111 + 8) = v113;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v118 = 0;
          v119 = *v8;
          v120 = *(v8 + 8);
          v121 = v8;
          do
          {
            v122 = v121 + 16 * v118;
            v123 = v122 + 16;
            v124 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 >= v9)
            {
              v118 = v124;
            }

            else
            {
              v125 = *(v122 + 24);
              result = *(v122 + 40);
              v126 = v122 + 32;
              if (v125 <= result)
              {
                v118 = v124;
              }

              else
              {
                v123 = v126;
              }
            }

            *v121 = *v123;
            *(v121 + 8) = *(v123 + 8);
            v121 = v123;
          }

          while (v118 <= ((v9 - 2) >> 1));
          if (v123 == a2 - 16)
          {
            *v123 = v119;
            *(v123 + 8) = v120;
          }

          else
          {
            *v123 = *(a2 - 16);
            *(v123 + 8) = *(a2 - 8);
            *(a2 - 16) = v119;
            *(a2 - 8) = v120;
            v127 = (v123 - v8 + 16) >> 4;
            v110 = v127 < 2;
            v128 = v127 - 2;
            if (!v110)
            {
              v129 = v128 >> 1;
              v130 = v8 + 16 * (v128 >> 1);
              v131 = *(v130 + 8);
              v132 = *(v123 + 8);
              if (v131 > v132)
              {
                v133 = *v123;
                do
                {
                  v134 = v123;
                  v123 = v130;
                  *v134 = *v130;
                  *(v134 + 8) = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = v8 + 16 * v129;
                  v131 = *(v130 + 8);
                }

                while (v131 > v132);
                *v123 = v133;
                *(v123 + 8) = v132;
              }
            }
          }

          a2 -= 16;
          v110 = v9-- <= 2;
        }

        while (!v110);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 8);
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 8);
      v13 = *(v8 + 8);
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 16);
          *(a2 - 16) = v18;
          *(v10 + 8) = v11;
          *(a2 - 8) = v12;
          v19 = *(v10 + 8);
          v20 = *(v8 + 8);
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            *(v8 + 8) = v19;
            *(v10 + 8) = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 > v12)
        {
          *v8 = *(a2 - 16);
          *(a2 - 16) = v14;
          *(v8 + 8) = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        *(v8 + 8) = v12;
        *(v10 + 8) = v13;
        v26 = *(a2 - 8);
        if (v26 > v13)
        {
          *v10 = *(a2 - 16);
          *(a2 - 16) = v14;
          *(v10 + 8) = v26;
LABEL_27:
          *(a2 - 8) = v13;
        }
      }

      v27 = (v10 - 16);
      v28 = *(v10 - 8);
      v29 = *(v8 + 24);
      v30 = *(a2 - 24);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 32);
          *(a2 - 32) = v32;
          *(v10 - 8) = v30;
          *(a2 - 24) = v28;
          v33 = *(v10 - 8);
          v34 = *(v8 + 24);
          if (v33 > v34)
          {
            v35 = *(v8 + 16);
            *(v8 + 16) = *v27;
            *v27 = v35;
            *(v8 + 24) = v33;
            *(v10 - 8) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 16);
        if (v30 > v28)
        {
          *(v8 + 16) = *(a2 - 32);
          *(a2 - 32) = v31;
          *(v8 + 24) = v30;
          goto LABEL_39;
        }

        *(v8 + 16) = *v27;
        *v27 = v31;
        *(v8 + 24) = v28;
        *(v10 - 8) = v29;
        v37 = *(a2 - 24);
        if (v37 > v29)
        {
          *v27 = *(a2 - 32);
          *(a2 - 32) = v31;
          *(v10 - 8) = v37;
LABEL_39:
          *(a2 - 24) = v29;
        }
      }

      v38 = *(v10 + 24);
      v39 = *(v8 + 40);
      v40 = *(a2 - 40);
      if (v38 <= v39)
      {
        if (v40 > v38)
        {
          v42 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 48);
          *(a2 - 48) = v42;
          *(v10 + 24) = v40;
          *(a2 - 40) = v38;
          v43 = *(v10 + 24);
          v44 = *(v8 + 40);
          if (v43 > v44)
          {
            v45 = *(v8 + 32);
            *(v8 + 32) = *(v10 + 16);
            *(v10 + 16) = v45;
            *(v8 + 40) = v43;
            *(v10 + 24) = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 32);
        if (v40 > v38)
        {
          *(v8 + 32) = *(a2 - 48);
          *(a2 - 48) = v41;
          *(v8 + 40) = v40;
          goto LABEL_48;
        }

        *(v8 + 32) = *(v10 + 16);
        *(v10 + 16) = v41;
        *(v8 + 40) = v38;
        *(v10 + 24) = v39;
        v46 = *(a2 - 40);
        if (v46 > v39)
        {
          *(v10 + 16) = *(a2 - 48);
          *(a2 - 48) = v41;
          *(v10 + 24) = v46;
LABEL_48:
          *(a2 - 40) = v39;
        }
      }

      v47 = *(v10 + 8);
      v48 = *(v10 - 8);
      v49 = *(v10 + 24);
      if (v47 <= v48)
      {
        v50 = *v10;
        if (v49 <= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = *(v10 + 16);
          *v10 = v51;
          *(v10 + 16) = v50;
          *(v10 + 8) = v49;
          *(v10 + 24) = v47;
          if (v49 <= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 8) = v49;
            *(v10 + 8) = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 > v47)
        {
          *v27 = *(v10 + 16);
          *(v10 + 16) = v50;
          *(v10 - 8) = v49;
          *(v10 + 24) = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 8) = v47;
        *(v10 + 8) = v48;
        if (v49 > v48)
        {
          v69 = *(v10 + 16);
          *v10 = v69;
          *(v10 + 16) = v50;
          *(v10 + 8) = v49;
          *(v10 + 24) = v48;
          v48 = v49;
          v50 = v69;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 8);
      *(v8 + 8) = v48;
      *(v10 + 8) = v53;
      goto LABEL_57;
    }

    v15 = *(v8 + 8);
    v16 = *(v10 + 8);
    if (v15 <= v16)
    {
      if (v11 > v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 16);
        *(a2 - 16) = v22;
        *(v8 + 8) = v11;
        *(a2 - 8) = v15;
        v23 = *(v8 + 8);
        v24 = *(v10 + 8);
        if (v23 > v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          *(v10 + 8) = v23;
          *(v8 + 8) = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 > v15)
    {
      *v10 = *(a2 - 16);
      *(a2 - 16) = v17;
      *(v10 + 8) = v11;
LABEL_36:
      *(a2 - 8) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    *(v10 + 8) = v15;
    *(v8 + 8) = v16;
    v36 = *(a2 - 8);
    if (v36 > v16)
    {
      *v8 = *(a2 - 16);
      *(a2 - 16) = v17;
      *(v8 + 8) = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v54 = *v8;
      v55 = *(v8 + 8);
LABEL_60:
      v56 = v8;
      do
      {
        v57 = v56;
        v56 += 16;
      }

      while (*(v57 + 24) > v55);
      v58 = a2;
      if (v57 == v8)
      {
        v61 = a2;
        while (v56 < v61)
        {
          v59 = v61 - 16;
          v62 = *(v61 - 8);
          v61 -= 16;
          if (v62 > v55)
          {
            goto LABEL_70;
          }
        }

        v59 = v61;
      }

      else
      {
        do
        {
          v59 = v58 - 16;
          v60 = *(v58 - 8);
          v58 -= 16;
        }

        while (v60 <= v55);
      }

LABEL_70:
      v8 = v56;
      if (v56 < v59)
      {
        v63 = v59;
        do
        {
          v64 = *v8;
          *v8 = *v63;
          *v63 = v64;
          v65 = *(v8 + 8);
          *(v8 + 8) = *(v63 + 8);
          *(v63 + 8) = v65;
          do
          {
            v66 = *(v8 + 24);
            v8 += 16;
          }

          while (v66 > v55);
          do
          {
            v67 = *(v63 - 8);
            v63 -= 16;
          }

          while (v67 <= v55);
        }

        while (v8 < v63);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v54;
      *(v8 - 8) = v55;
      if (v56 < v59)
      {
        goto LABEL_81;
      }

      v68 = sub_1B5D55C18(v7, v8 - 16);
      result = sub_1B5D55C18(v8, a2);
      if (result)
      {
        a2 = v8 - 16;
        if (!v68)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v68)
      {
LABEL_81:
        result = sub_1B5D54E7C(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = *(v8 + 8);
      v54 = *v8;
      if (*(v8 - 8) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(a2 - 8))
      {
        v72 = v8 + 16;
        do
        {
          v8 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v73 = *(v72 + 8);
          v72 += 16;
        }

        while (v55 <= v73);
      }

      else
      {
        v70 = v8;
        do
        {
          v8 = v70 + 16;
          v71 = *(v70 + 24);
          v70 += 16;
        }

        while (v55 <= v71);
      }

      v74 = a2;
      if (v8 < a2)
      {
        v75 = a2;
        do
        {
          v74 = v75 - 16;
          v76 = *(v75 - 8);
          v75 -= 16;
        }

        while (v55 > v76);
      }

      while (v8 < v74)
      {
        v77 = *v8;
        *v8 = *v74;
        *v74 = v77;
        v78 = *(v8 + 8);
        *(v8 + 8) = *(v74 + 8);
        *(v74 + 8) = v78;
        do
        {
          v79 = *(v8 + 24);
          v8 += 16;
        }

        while (v55 <= v79);
        do
        {
          v80 = *(v74 - 8);
          v74 -= 16;
        }

        while (v55 > v80);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v54;
      *(v8 - 8) = v55;
    }
  }

  v84 = *(v8 + 24);
  v85 = *(v8 + 8);
  v86 = *(a2 - 8);
  if (v84 <= v85)
  {
    if (v86 > v84)
    {
      v135 = *(v8 + 16);
      *(v8 + 16) = *(a2 - 16);
      *(a2 - 16) = v135;
      *(v8 + 24) = v86;
      *(a2 - 8) = v84;
      v136 = *(v8 + 24);
      v137 = *(v8 + 8);
      if (v136 > v137)
      {
        v138 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v138;
        *(v8 + 8) = v136;
        *(v8 + 24) = v137;
      }
    }
  }

  else
  {
    v87 = *v8;
    if (v86 <= v84)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v87;
      *(v8 + 8) = v84;
      *(v8 + 24) = v85;
      v148 = *(a2 - 8);
      if (v148 <= v85)
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 16);
      *(a2 - 16) = v87;
      *(v8 + 24) = v148;
    }

    else
    {
      *v8 = *(a2 - 16);
      *(a2 - 16) = v87;
      *(v8 + 8) = v86;
    }

    *(a2 - 8) = v85;
  }

  return result;
}

int *sub_1B5D55A3C(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *(a2 + 1);
  v6 = *(result + 1);
  v7 = *(a3 + 1);
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = *(a3 + 1);
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      *(a2 + 1) = v7;
      *(a3 + 1) = v5;
      v10 = *(a2 + 1);
      v11 = *(result + 1);
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        *(result + 1) = v10;
        *(a2 + 1) = v11;
        v5 = *(a3 + 1);
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      *(result + 1) = v7;
LABEL_9:
      *(a3 + 1) = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    *(result + 1) = v5;
    *(a2 + 1) = v6;
    v5 = *(a3 + 1);
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      *(a2 + 1) = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = *(a4 + 1);
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    *(a3 + 1) = v13;
    *(a4 + 1) = v5;
    v15 = *(a3 + 1);
    v16 = *(a2 + 1);
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      *(a2 + 1) = v15;
      *(a3 + 1) = v16;
      v18 = *(a2 + 1);
      v19 = *(result + 1);
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        *(result + 1) = v18;
        *(a2 + 1) = v19;
      }
    }
  }

  v21 = *(a5 + 1);
  v22 = *(a4 + 1);
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    *(a4 + 1) = v21;
    *(a5 + 1) = v22;
    v24 = *(a4 + 1);
    v25 = *(a3 + 1);
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      *(a3 + 1) = v24;
      *(a4 + 1) = v25;
      v27 = *(a3 + 1);
      v28 = *(a2 + 1);
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        *(a2 + 1) = v27;
        *(a3 + 1) = v28;
        v30 = *(a2 + 1);
        v31 = *(result + 1);
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          *(result + 1) = v30;
          *(a2 + 1) = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_1B5D55C18(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 8);
      v8 = *(a2 - 8);
      if (v6 <= v7)
      {
        if (v8 > v6)
        {
          v22 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 16);
          *(a2 - 16) = v22;
          *(a1 + 24) = v8;
          *(a2 - 8) = v6;
          v23 = *(a1 + 24);
          v24 = *(a1 + 8);
          if (v23 > v24)
          {
            v25 = *a1;
            *a1 = *(a1 + 16);
            *(a1 + 16) = v25;
            *(a1 + 8) = v23;
            *(a1 + 24) = v24;
          }
        }

        return 1;
      }

      v9 = *a1;
      if (v8 <= v6)
      {
        *a1 = *(a1 + 16);
        *(a1 + 16) = v9;
        *(a1 + 8) = v6;
        *(a1 + 24) = v7;
        v32 = *(a2 - 8);
        if (v32 <= v7)
        {
          return 1;
        }

        *(a1 + 16) = *(a2 - 16);
        *(a2 - 16) = v9;
        *(a1 + 24) = v32;
      }

      else
      {
        *a1 = *(a2 - 16);
        *(a2 - 16) = v9;
        *(a1 + 8) = v8;
      }

      *(a2 - 8) = v7;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_1B5D55A3C(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16));
      return 1;
    }

    v16 = (a1 + 24);
    v17 = *(a1 + 24);
    v19 = (a1 + 8);
    v18 = *(a1 + 8);
    v20 = *(a1 + 40);
    if (v17 <= v18)
    {
      if (v20 > v17)
      {
        v29 = *(a1 + 16);
        v30 = *(a1 + 32);
        *(a1 + 16) = v30;
        *(a1 + 32) = v29;
        *(a1 + 24) = v20;
        *(a1 + 40) = v17;
        if (v20 <= v18)
        {
LABEL_49:
          v20 = v17;
          goto LABEL_50;
        }

        v31 = *a1;
        *a1 = v30;
        *(a1 + 16) = v31;
LABEL_48:
        *v19 = v20;
        *v16 = v18;
        goto LABEL_49;
      }
    }

    else
    {
      v21 = *a1;
      if (v20 > v17)
      {
        *a1 = *(a1 + 32);
        *(a1 + 32) = v21;
LABEL_47:
        v16 = (a1 + 40);
        v17 = v18;
        goto LABEL_48;
      }

      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
      *(a1 + 8) = v17;
      *(a1 + 24) = v18;
      if (v20 > v18)
      {
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v21;
        v19 = (a1 + 24);
        goto LABEL_47;
      }
    }

LABEL_50:
    v42 = *(a2 - 8);
    if (v42 > v20)
    {
      v43 = *(a1 + 32);
      *(a1 + 32) = *(a2 - 16);
      *(a2 - 16) = v43;
      *(a1 + 40) = v42;
      *(a2 - 8) = v20;
      v44 = *(a1 + 40);
      v45 = *(a1 + 24);
      if (v44 > v45)
      {
        v46 = *(a1 + 16);
        v47 = *(a1 + 32);
        *(a1 + 16) = v47;
        *(a1 + 32) = v46;
        *(a1 + 24) = v44;
        *(a1 + 40) = v45;
        v48 = *(a1 + 8);
        if (v44 > v48)
        {
          v49 = *a1;
          *a1 = v47;
          *(a1 + 16) = v49;
          *(a1 + 8) = v44;
          *(a1 + 24) = v48;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 8);
    v4 = *(a1 + 8);
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 16);
      *(a2 - 16) = v5;
      *(a1 + 8) = v3;
      *(a2 - 8) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = *(a1 + 24);
  v12 = (a1 + 8);
  v11 = *(a1 + 8);
  v14 = (a1 + 40);
  v13 = *(a1 + 40);
  if (v10 > v11)
  {
    v15 = *a1;
    if (v13 <= v10)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v15;
      *(a1 + 8) = v10;
      *(a1 + 24) = v11;
      if (v13 <= v11)
      {
        goto LABEL_34;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 32) = v15;
      v12 = (a1 + 24);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 32) = v15;
    }

    goto LABEL_33;
  }

  if (v13 > v10)
  {
    v26 = *(a1 + 16);
    v27 = *(a1 + 32);
    *(a1 + 16) = v27;
    *(a1 + 32) = v26;
    *(a1 + 24) = v13;
    *(a1 + 40) = v10;
    if (v13 > v11)
    {
      v28 = *a1;
      *a1 = v27;
      *(a1 + 16) = v28;
      v14 = (a1 + 24);
LABEL_33:
      *v12 = v13;
      *v14 = v11;
    }
  }

LABEL_34:
  v33 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 32;
  while (1)
  {
    v37 = *(v33 + 8);
    if (v37 > *(v36 + 8))
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 48) = *(a1 + v39 + 32);
        *(v40 + 56) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 <= *(v40 + 24))
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 16 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 16;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

void sub_1B5D55FE8(void *a1, int a2)
{
  if (a1[4] != a1[5])
  {
    __assert_rtn("train", "LXCodebookCoder.cpp", 19, "false && Metaflags codebook has already been compiled");
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = v3;
  if (v3 != v4)
  {
    v5 = a1[1];
    while (*v5 != a2)
    {
      v5 += 2;
      if (v5 == v4)
      {
        goto LABEL_9;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_9:
    v6 = a1[3];
    if (v4 >= v6)
    {
      v7 = v4 - v3;
      v8 = (v4 - v3) >> 4;
      v9 = v8 + 1;
      if ((v8 + 1) >> 60)
      {
        sub_1B5D04FA0();
      }

      v10 = v6 - v3;
      if (v10 >> 3 > v9)
      {
        v9 = v10 >> 3;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if (!(v11 >> 60))
        {
          operator new();
        }

        sub_1B5CE5968();
      }

      v12 = v8;
      v13 = 16 * v8;
      *v13 = a2;
      *(v13 + 8) = 1;
      v4 = 16 * v8 + 16;
      v14 = (v13 - 16 * v12);
      memcpy(v14, v3, v7);
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = 0;
      if (v3)
      {
        operator delete(v3);
        v3 = a1[1];
      }

      else
      {
        v3 = v14;
      }
    }

    else
    {
      *v4 = a2;
      *(v4 + 8) = 1;
      v4 += 16;
    }

    a1[2] = v4;
  }

  else
  {
    ++v5[1];
  }

  if (v4 - v3 >= 0xFF1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1B5CE410C(&v16, "Too many metadata flag combinations to encode as an 8-bit integer");
    sub_1B5D32AFC(exception, &v16);
    __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
  }
}

void sub_1B5D561DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_1B5D56214(void *a1)
{
  *a1 = &unk_1F2D55CB0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D56294(void *a1)
{
  *a1 = &unk_1F2D55CB0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1B5D562F4(uint64_t a1)
{
  std::mutex::lock((a1 + 1600));
  v2 = *(a1 + 120);
  if (*(v2 + 56))
  {
    (*(**(v2 + 64) + 40))(*(v2 + 64));
    sub_1B5D36560(*(v2 + 56));
    if (*(v2 + 32))
    {
      v4 = *(v2 + 32);
    }

    else
    {
      v4 = (v2 + 40);
    }

    remove(v4, v3);
    *(v2 + 16) = 1;
  }

  if (*(a1 + 1584))
  {
    sub_1B5D563D4(*(a1 + 1576));
    *(a1 + 1576) = 0;
    v5 = *(a1 + 1568);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*(a1 + 1560) + 8 * i) = 0;
      }
    }

    *(a1 + 1584) = 0;
  }

  std::mutex::unlock((a1 + 1600));
}

void sub_1B5D563D4(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[4];
      if (v3)
      {
        if (*(v2 + 30) == 1)
        {
          free(v3);
        }
      }

      operator delete(v2);
    }

    while (v1);
  }
}

BOOL sub_1B5D56428(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = a2;
  std::mutex::lock((a1 + 1600));
  v4 = sub_1B5D32600((a1 + 1560), a2);
  if (v4)
  {
    *buf = &v13;
    v5 = sub_1B5D565D4((a1 + 1560), a2);
    sub_1B5D56840(*(a1 + 120), v5 + 3);
    sub_1B5CDF718();
    v6 = qword_1ED833A28;
    if (os_log_type_enabled(qword_1ED833A28, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 80);
      v14 = &v13;
      v10 = sub_1B5D565D4((a1 + 1560), v13);
      v11 = a1 + 88;
      if (v9)
      {
        v11 = v9;
      }

      v12 = v10[4];
      if (!v12)
      {
        v12 = v10 + 5;
      }

      *buf = 136315394;
      *&buf[4] = v11;
      v16 = 2080;
      v17 = v12;
      _os_log_debug_impl(&dword_1B5CDB000, v6, OS_LOG_TYPE_DEBUG, "%s: removed '%s'", buf, 0x16u);
    }

    sub_1B5D568EC((a1 + 1560), v13);
    (*(**(*(a1 + 120) + 64) + 32))(*(*(a1 + 120) + 64), v13);
  }

  std::mutex::unlock((a1 + 1600));
  v7 = *MEMORY[0x1E69E9840];
  return v4 != 0;
}

uint64_t *sub_1B5D565D4(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1B5D5682C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D56A5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D56840(uint64_t a1, _OWORD *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2D586D8;
  v5[3] = v5;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 16) = 1;
    sub_1B5D361E8(v2, a2, v5);
  }

  result = sub_1B5D56B20(v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D568D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D56B20(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1B5D568EC(void *a1, unsigned int a2)
{
  result = sub_1B5D32600(a1, a2);
  if (result)
  {
    v4 = a1[1];
    v5 = result[1];
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

    while (v7 != result);
    if (v8 == a1 + 2)
    {
      goto LABEL_19;
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
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v10 = *(*result + 8);
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
LABEL_20:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *result;
    if (*result)
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
        v11 = *result;
      }
    }

    *v8 = v11;
    *result = 0;
    --a1[3];
    v13[0] = result;
    v13[1] = a1;
    v14 = 1;
    memset(v15, 0, sizeof(v15));
    return sub_1B5D56A5C(v13);
  }

  return result;
}

uint64_t *sub_1B5D56A5C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 32);
      if (v3)
      {
        if (*(v2 + 30) == 1)
        {
          free(v3);
        }
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B5D56AB8()
{
  v1 = 7;
  strcpy(category, "Mutable");
  qword_1ED833A28 = os_log_create("com.apple.Lexicon", category);
  if (v1 < 0)
  {
    operator delete(*category);
  }
}

uint64_t sub_1B5D56B20(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1B5D56BAC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58738))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D56C7C(uint64_t a1, const __CFString *a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a3;
  std::mutex::lock((a1 + 1600));
  sub_1B5CDC4B4(v7, a2);
  v5 = *(a1 + 120);
  operator new();
}

void sub_1B5D56E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19)
{
  sub_1B5D56B20(&a11);
  if (a19)
  {
    if (a18 == 1)
    {
      free(a19);
    }
  }

  std::mutex::unlock(v19 + 25);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D56E60(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D586B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D56EA0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 44);
    v6 = *(v3 + 48);
    v7 = *(v3 + 52);
    v8 = *(v3 + 56);
    v9 = **(a1 + 8);

    sub_1B5D56FD0();
  }

  v10 = *(a1 + 24);
  v11 = **(a1 + 8);
  v12 = *(*(*(a1 + 16) + 120) + 64);
  (*(*v12 + 16))(v12, *(a1 + 24));
  CFAbsoluteTimeGetCurrent();
  sub_1B5D56FD0();
}

uint64_t *sub_1B5D57098(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1B5D572F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D56A5C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1B5D5730C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D58658;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1B5D573B8(uint64_t a1, const __CFString *a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a3;
  std::mutex::lock((a1 + 1600));
  sub_1B5CDC4B4(v7, a2);
  v5 = *(a1 + 120);
  operator new();
}

void sub_1B5D57548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19)
{
  sub_1B5D56B20(&a11);
  if (a19)
  {
    if (a18 == 1)
    {
      free(a19);
    }
  }

  std::mutex::unlock(v19 + 25);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D5759C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58638))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D575DC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 40);
    v6 = **(a1 + 8);
    v7 = *(v4 + 48);
    v8 = *(v4 + 52);
    v9 = *(v4 + 56);
    v10 = *(v4 + 64);

    sub_1B5D56FD0();
  }

  v11 = **(a1 + 8);
  sub_1B5D86C9C(a3, *(*(*(a1 + 16) + 120) + 64), *(a1 + 24));
}

__n128 sub_1B5D576C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D585D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1B5D57774(uint64_t a1, const __CFString *a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a3;
  std::mutex::lock((a1 + 1600));
  sub_1B5CDC4B4(v7, a2);
  v5 = *(a1 + 120);
  operator new();
}

void sub_1B5D57904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19)
{
  sub_1B5D56B20(&a11);
  if (a19)
  {
    if (a18 == 1)
    {
      free(a19);
    }
  }

  std::mutex::unlock(v19 + 25);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D57958(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D585B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D57998(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 44);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = (**(a1 + 8) + *(v3 + 52));

    sub_1B5D56FD0();
  }

  v10 = *(a1 + 24);
  v11 = **(a1 + 8);
  v12 = *(*(*(a1 + 16) + 120) + 64);
  if ((*(*v12 + 16))(v12, *(a1 + 24)))
  {
    CFAbsoluteTimeGetCurrent();
    sub_1B5D56FD0();
  }

  __assert_rtn("make_entry", "TIDynamicDictionaryImpl.cpp", 636, "tokenID != kLXTokenIDUNK && generated an invalid tokenID");
}

__n128 sub_1B5D57AFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D58558;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1B5D57BA8(uint64_t a1, const __CFString *a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a3;
  std::mutex::lock((a1 + 1600));
  sub_1B5CDC4B4(v7, a2);
  v5 = *(a1 + 120);
  operator new();
}

void sub_1B5D57D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19)
{
  sub_1B5D56B20(&a11);
  if (a19)
  {
    if (a18 == 1)
    {
      free(a19);
    }
  }

  std::mutex::unlock(v19 + 25);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D57D8C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D57DCC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 44);
    v7 = *(v4 + 52);
    v8 = *(v4 + 56);
    v9 = *(v4 + 64);
    v10 = (**(a1 + 8) + *(v4 + 48));

    sub_1B5D56FD0();
  }

  v11 = **(a1 + 8);
  sub_1B5D86C9C(a3, *(*(*(a1 + 16) + 120) + 64), *(a1 + 24));
}

__n128 sub_1B5D57EBC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D584D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D57F68(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v14 = a3;
  v13 = a4;
  std::mutex::lock((a1 + 1600));
  v7 = (*(**(*(a1 + 120) + 64) + 24))(*(*(a1 + 120) + 64), a3);
  if (v7)
  {
    v12 = LXEntryCopyString(a2);
    sub_1B5CDC4B4(v17, v12);
    v16 = &v14;
    v8 = sub_1B5D565D4((a1 + 1560), a3);
    sub_1B5CDF770((v8 + 3), v17);
    v9 = *(a1 + 120);
    operator new();
  }

  std::mutex::unlock((a1 + 1600));
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1B5D58100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, void *a21)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D5817C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D584B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D581BC(uint64_t a1)
{
  v2 = **(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = **(a1 + 16);
    v5 = v2[16];
    v6 = v2[17];
    v7 = **(a1 + 32);
    v8 = v2[30];
    v9 = v2[13] & 0x3FA000EF;

    sub_1B5D56FD0();
  }

  __assert_rtn("LXEntryGetMetaFlags", "LXEntry.cpp", 45, "entry");
}

__n128 sub_1B5D58238(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D58458;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1B5D582E4(uint64_t a1, const __CFString *a2, int a3)
{
  Current = CFAbsoluteTimeGetCurrent();

  sub_1B5D58334(a1, a2, a3, Current);
}

void sub_1B5D58334(uint64_t a1, const __CFString *a2, int a3, double a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v9 = a3;
  std::mutex::lock((a1 + 1600));
  v8 = 0;
  v7 = 1;
  sub_1B5CDC4B4(v11, a2);
  v6 = *(a1 + 120);
  operator new();
}

void sub_1B5D5862C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, void *a21)
{
  if (a21)
  {
    if (a20 == 1)
    {
      free(a21);
    }
  }

  std::mutex::unlock(v21 + 25);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D5868C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D55050))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D586CC(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  *a3 = 0;
  if (v4)
  {
    **(a1 + 8) = 0;
    v6 = *(v4 + 40);
    v7 = *(v4 + 44);
    v8 = *(v4 + 48);
    v9 = *(v4 + 52);
    v10 = *(v4 + 56);
    v11 = *(v4 + 64);
    sub_1B5D56FD0();
  }

  v12 = **(a1 + 32);
  v13 = **(a1 + 40);
  (*(**(*(v5 + 120) + 64) + 16))(*(*(v5 + 120) + 64), *(a1 + 24));
  sub_1B5D56FD0();
}

__n128 sub_1B5D5880C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D55008;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D588C8(uint64_t a1, char *a2, unsigned __int16 a3)
{
  v27 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 1600));
  sub_1B5D5CA18(v24, a2, a3);
  (*(**(a1 + 1512) + 8))(&v19);
  v6 = *(*(*(a1 + 120) + 56) + 16);
  if (v6 && atomic_fetch_add(v6, 1u) <= 0)
  {
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  v17 = v6;
  v18 = 0;
  v7 = v19;
  if (v19 <= 0xEu)
  {
    v8 = &v19 + 2;
  }

  else
  {
    v8 = v20;
  }

  if (v19)
  {
    do
    {
      sub_1B5D36318(&v13, &v17, *v8);
      v9 = v13;
      v13 = 0;
      v17 = v9;
      if (v6)
      {
        sub_1B5D3443C(v6);
        v18 = v14;
        if (v13)
        {
          sub_1B5D3443C(v13);
        }

        v6 = v17;
        if (!v17)
        {
LABEL_14:
          v10 = 0;
          goto LABEL_20;
        }
      }

      else
      {
        v18 = v14;
        v6 = v9;
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1174405120;
  v21[2] = sub_1B5D58C10;
  v21[3] = &unk_1F2D583F8;
  sub_1B5D5CABC(v22, v24);
  v21[4] = &v13;
  sub_1B5D365CC(&v17, v21);
  v10 = *(v14 + 6);
  if (v23 && v22[6] == 1)
  {
    free(v23);
  }

  _Block_object_dispose(&v13, 8);
  if (v6)
  {
    sub_1B5D3443C(v6);
  }

LABEL_20:
  if (v19 >= 0xFu && v20)
  {
    MEMORY[0x1B8C880C0](v20, 0x1000C8077774924);
  }

  if (v26 && v25 == 1)
  {
    free(v26);
  }

  std::mutex::unlock((a1 + 1600));
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1B5D58B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, void *a25)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_1B5D58C10(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *a2;
  result = (*a2 + 8);
  if (result == (a1 + 40) || (result = sub_1B5D5DD60(result, (a1 + 40)), result))
  {
    *(*(*(a1 + 32) + 8) + 24) = *(v5 + 40);
    *a3 = 1;
  }

  return result;
}

void sub_1B5D58C70(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 46) == 1)
    {
      free(v2);
    }
  }
}

void sub_1B5D58CB4(std::mutex *a1, uint64_t a2)
{
  std::mutex::lock(a1 + 25);
  sub_1B5D8024C(&v9, a1[2].__m_.__opaque);
  v4 = v9;
  if (v9 != v10)
  {
    do
    {
      if (*(v4 + 20) < 0xFu)
      {
        v5 = v4 + 42;
      }

      else
      {
        v5 = v4[6];
      }

      (*(a2 + 16))(a2, *(v4 + 8), v5);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v10);
  }

  sub_1B5D32B78(v10[0]);
  std::mutex::unlock(a1 + 25);
}

void *sub_1B5D58DB0(std::mutex *a1)
{
  std::mutex::lock(a1 + 25);
  v2 = sub_1B5D58E04(a1);
  std::mutex::unlock(a1 + 25);
  return v2;
}

void *sub_1B5D58E04(void *a1)
{
  v2 = *(*(a1[15] + 56) + 16);
  if (v2 && atomic_fetch_add(v2, 1u) <= 0)
  {
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  v3 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D58428);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  v6 = a1[193];
  v7 = a1[194];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  Instance[2] = &unk_1F2D55788;
  Instance[3] = v6;
  Instance[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  Instance[5] = v2;
  if (v2)
  {
    if (atomic_fetch_add(v2, 1u) < 1)
    {
      __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
    }

    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = 0;
  *(v5 + 14) = 0x100000;
  *(v5 + 30) = 0;
  *(v5 + 62) = 0;
  v5[8] = 0;
  *(v5 + 72) = 0;
  *(v5 + 44) = 0;
  *(v5 + 104) = 0;
  *(v5 + 56) = 0;
  *(v5 + 32) = 0;
  v5[17] = 0;
  v5[18] = 0;
  *(v5 + 152) = 1;
  if (v8)
  {
    sub_1B5D3443C(v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return v5;
}

uint64_t sub_1B5D59014()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

CFStringRef sub_1B5D59068(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v1 = *(a1 + 80);
  }

  else
  {
    v1 = (a1 + 88);
  }

  v2 = strlen(v1);

  return sub_1B5CDFA10(v1, v2);
}

uint64_t sub_1B5D590B4(uint64_t a1, unsigned int a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 1600));
  v4 = *(a1 + 1568);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (v4 <= a2)
    {
      v6 = a2 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a2;
  }

  v7 = *(*(a1 + 1560) + 8 * v6);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_17;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (*(v8 + 4) != a2)
  {
    goto LABEL_16;
  }

  if (v8[4])
  {
    v13 = v8[4];
  }

  else
  {
    v13 = (v8 + 5);
  }

  v14 = sub_1B5CDFA10(v13, *(v8 + 12));
  if (!v14)
  {
    sub_1B5CDF718();
    v17 = qword_1ED833A28;
    if (os_log_type_enabled(qword_1ED833A28, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 80);
      if (!v18)
      {
        v18 = a1 + 88;
      }

      v19 = v8[4];
      if (!v19)
      {
        v19 = v8 + 5;
      }

      *buf = 136315650;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = v19;
      *&buf[22] = 1024;
      LODWORD(v23) = a2;
      _os_log_error_impl(&dword_1B5CDB000, v17, OS_LOG_TYPE_ERROR, "%s: could not create CFString for string='%s' and token_id=%d", buf, 0x1Cu);
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3002000000;
  v23 = sub_1B5D59428;
  v24 = sub_1B5D59438;
  v25[0] = 0;
  v15 = sub_1B5D58E04(a1);
  v21 = v15;
  v16 = LXCursorCreateByAdvancing(v15, v14);
  v20[0] = v16;
  if (v15)
  {
    CFRelease(v15);
    v16 = v20[0];
  }

  v20[0] = 0;
  v21 = v16;
  sub_1B5D59440(v20);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = sub_1B5D59478;
  v20[3] = &unk_1E7C21028;
  v20[4] = buf;
  v20[5] = v14;
  if (v21)
  {
    (*(*(v21 + 2) + 48))(v21 + 16, v20);
  }

  v10 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = 0;
  sub_1B5D59440(&v21);
  _Block_object_dispose(buf, 8);
  sub_1B5D59524(v25);
  CFRelease(v14);
LABEL_18:
  std::mutex::unlock((a1 + 1600));
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1B5D593B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_1B5CE5794(&a9, 0);
  std::mutex::unlock(v9 + 25);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D59428(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

const void **sub_1B5D59440(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

const void **sub_1B5D59478(uint64_t a1, const void *a2, _BYTE *a3)
{
  v6 = LXEntryCopyString(a2);
  v10 = v6;
  if (v6 && CFStringCompare(v6, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    if (v8 != a2)
    {
      if (a2)
      {
        CFRetain(a2);
        v8 = *(v7 + 40);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      *(v7 + 40) = a2;
    }

    *a3 = 1;
  }

  return sub_1B5D335A8(&v10);
}

void sub_1B5D59510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D335A8(va);
  _Unwind_Resume(a1);
}

const void **sub_1B5D59524(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1B5D5955C(uint64_t a1)
{
  v9[19] = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 1600));
  v2 = *(*(a1 + 120) + 32);
  sub_1B5D0D7DC(v7);
  if ((v8[*(v7[0] - 24) + 16] & 5) != 0)
  {
    v3 = 0;
  }

  else
  {
    std::istream::tellg();
    v3 = v6;
  }

  v7[0] = *MEMORY[0x1E69E54C8];
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C87DF0](v8);
  std::istream::~istream();
  MEMORY[0x1B8C88080](v9);
  std::mutex::unlock((a1 + 1600));
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B5D596E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1B5D1530C(&a26);
  MEMORY[0x1B8C88080](&STACK[0x230]);
  std::mutex::unlock(v26 + 25);
  _Unwind_Resume(a1);
}

void sub_1B5D59714(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 1600));
  v2 = *(a1 + 120);
  if (*(v2 + 16) != 1 || (v3 = *(v2 + 56)) == 0 || *(v2 + 17) == 1)
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  v4 = (v2 + 24);
  if (!*(v2 + 24))
  {
    if (qword_1EB90CB30 != -1)
    {
      dispatch_once(&qword_1EB90CB30, &unk_1F2D59880);
    }

    v7 = qword_1EB90CB28;
    if (os_log_type_enabled(qword_1EB90CB28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B5CDB000, v7, OS_LOG_TYPE_ERROR, "cannot store dynamic dictionary: empty path", buf, 2u);
    }

    goto LABEL_20;
  }

  *(v2 + 16) = 256;
  v5 = v3[1];
  *buf = *v3;
  *&buf[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[2];
  *&buf[16] = v6;
  if (v6 && atomic_fetch_add(v6, 1u) <= 0)
  {
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  sub_1B5D5CABC(v21, v4);
  memset(buf, 0, sizeof(buf));
  v16 = 0x100000;
  LOWORD(bufLen[0]) = 0;
  BYTE2(bufLen[0]) = 0;
  *&bufLen[1] = 0;
  sub_1B5D5CBBC(&v16, v21);
  v19 = 1;
  if (v23 && v22 == 1)
  {
    free(v23);
  }

  if (*&buf[16])
  {
    sub_1B5D3443C(*&buf[16]);
  }

  if (*&buf[8])
  {
    sub_1B5CDD904(*&buf[8]);
  }

LABEL_21:
  std::mutex::unlock((a1 + 1600));
  if (v19)
  {
    sub_1B5CDF718();
    v8 = qword_1ED833A28;
    if (os_log_type_enabled(qword_1ED833A28, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 80);
      if (!v9)
      {
        v9 = a1 + 88;
      }

      v10 = *(a1 + 1584);
      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_log_impl(&dword_1B5CDB000, v8, OS_LOG_TYPE_INFO, "%s: storing %lu entries", buf, 0x16u);
    }

    v11 = *MEMORY[0x1E695E480];
    if (*&bufLen[1])
    {
      v12 = *&bufLen[1];
    }

    else
    {
      v12 = &v18;
    }

    v13 = LOWORD(bufLen[0]);
    if (!LOWORD(bufLen[0]))
    {
      sub_1B5CDF8F4(&v16);
      v13 = LOWORD(bufLen[0]);
    }

    v15 = CFURLCreateFromFileSystemRepresentation(v11, v12, v13, 0);
    CFURLCreateCopyDeletingLastPathComponent(v11, v15);
    sub_1B5CE4EEC();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1B5D5A1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef *a13, const void *a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, uint64_t a26, const void *a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, void *a41, uint64_t a42, uint64_t a43, void *__p, void *a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  sub_1B5CE57CC(&a25, 0);
  sub_1B5D23F18(&a27, 0);
  sub_1B5D23F18(&a16, 0);
  sub_1B5D8638C(&a13);
  if (a41)
  {
    if (a40 == 1)
    {
      free(a41);
    }
  }

  sub_1B5D23F18(&a14, 0);
  sub_1B5D23F18(&a15, 0);
  sub_1B5D5A3E8(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D5A3E8(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    if (v2 && *(a1 + 30) == 1)
    {
      free(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      sub_1B5D3443C(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      sub_1B5CDD904(v4);
    }
  }

  return a1;
}

__n128 sub_1B5D5A44C(void *a1, uint64_t a2)
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

void sub_1B5D5A49C(uint64_t a1, uint64_t *a2)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = *(*a2 + 40);
  if (sub_1B5D32600((v4 + 1560), v6))
  {
    sub_1B5D5CABC(&v35, (v5 + 8));
    v23 = *(*a2 + 40);
    *buf = &v23;
    v7 = sub_1B5D57098((v4 + 1560), v23);
    sub_1B5D5CABC(v31, v7 + 12);
    sub_1B5CDF718();
    v8 = qword_1ED833A28;
    if (os_log_type_enabled(qword_1ED833A28, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v4 + 80);
      if (!v9)
      {
        v9 = v4 + 88;
      }

      v10 = v37;
      if (!v37)
      {
        v10 = v38;
      }

      v11 = v33;
      v12 = *(*a2 + 40);
      if (!v33)
      {
        v11 = &v34;
      }

      *buf = 136315906;
      *&buf[4] = v9;
      v25 = 2080;
      v26 = v10;
      v27 = 2080;
      v28 = v11;
      v29 = 1024;
      v30 = v12;
      _os_log_impl(&dword_1B5CDB000, v8, OS_LOG_TYPE_DEFAULT, "%s: collision for strings '%s' and '%s': tokenID=%u", buf, 0x26u);
    }

    v13 = *(*(a1 + 32) + 8);
    v14 = *(*a2 + 40);
    *buf = v14;
    v15 = v13[6];
    if (v15 >= v13[7])
    {
      v16 = sub_1B5D5A808(v13 + 5, buf, &v35);
    }

    else
    {
      *v15 = v14;
      sub_1B5D5CABC((v15 + 2), &v35);
      v16 = (v15 + 10);
      v13[6] = (v15 + 10);
    }

    v13[6] = v16;
    v18 = *(*(a1 + 32) + 8);
    v19 = *(*a2 + 40);
    *buf = v19;
    v20 = v18[6];
    if (v20 >= v18[7])
    {
      v21 = sub_1B5D5A808(v18 + 5, buf, v31);
    }

    else
    {
      *v20 = v19;
      sub_1B5D5CABC((v20 + 2), v31);
      v21 = (v20 + 10);
      v18[6] = (v20 + 10);
    }

    v18[6] = v21;
    if (v33 && v32 == 1)
    {
      free(v33);
    }

    if (v37 && v36 == 1)
    {
      free(v37);
    }
  }

  else
  {
    v35 = v6;
    *buf = &v35;
    v17 = sub_1B5D57098((v4 + 1560), v6);
    sub_1B5CDF770((v17 + 3), (v5 + 8));
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1B5D5A708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, void *a25)
{
  if (a19 && a18 == 1)
  {
    free(a19);
  }

  if (a25)
  {
    if (a24 == 1)
    {
      free(a25);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D5A774(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6 && *(v4 - 26) == 1)
        {
          free(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D5A808(uint64_t *a1, _DWORD *a2, unsigned __int16 *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_1B5D04FA0();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1B5CE5968();
  }

  v16 = 0;
  v17 = 40 * v3;
  v18 = 40 * v3;
  *v17 = *a2;
  sub_1B5D5CABC(40 * v3 + 8, a3);
  *&v18 = v18 + 40;
  v8 = *a1;
  v7 = a1[1];
  v9 = v17 + *a1 - v7;
  if (*a1 != v7)
  {
    v10 = 0;
    do
    {
      *(v9 + v10) = *(v8 + v10);
      sub_1B5D5CABC(v9 + v10 + 8, (v8 + v10 + 8));
      v10 += 40;
    }

    while (v8 + v10 != v7);
    do
    {
      v11 = *(v8 + 16);
      if (v11 && *(v8 + 14) == 1)
      {
        free(v11);
      }

      v8 += 40;
    }

    while (v8 != v7);
  }

  v12 = *a1;
  *a1 = v9;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1B5D5A9F0(&v16);
  return v15;
}

void sub_1B5D5A9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D5A9F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D5A9F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      v5 = *(v2 - 24);
      if (v5 && *(v2 - 26) == 1)
      {
        free(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D5AA5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 8))
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = (a1 + 16);
  }

  if (!*v7 || !strcmp(v7, "root"))
  {
    v9 = uset_openEmpty();
    v15 = MEMORY[0x1E69E5770];
    if (!v9)
    {
      __assert_rtn("quicktype_exemplars", "LXMutableLexiconImpl.cpp", 305, "quicktype_exemplars");
    }

    for (i = 0; i != 17; ++i)
    {
      sub_1B5D5AD04(v16, off_1E7C21048[i], a4);
      v11 = v16[0];
      if (v16[0])
      {
        MEMORY[0x1B8C88BE0](v9, v16[0]);
        (v16[1])(v11);
      }
    }

    result = MEMORY[0x1B8C88C10](v9);
  }

  else
  {
    result = sub_1B5D5AD04(&v14, v7, a4);
    v9 = v14;
  }

  if (v9)
  {
    for (j = 0; j < MEMORY[0x1B8C88C40](v9); j = (j + 1))
    {
      v13 = MEMORY[0x1B8C88BF0](v9, j);
      if ((v13 & 0x80000000) == 0)
      {
        sub_1B5D5AC1C(a2, a3, v13);
      }
    }

    return v15(v9);
  }

  return result;
}

void sub_1B5D5ABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t))
{
  a12(v13);
  if (v12)
  {
    uset_close();
  }

  _Unwind_Resume(a1);
}

void *sub_1B5D5AC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = (*(*a2 + 16))(&v7, a2, a3);
  v6 = v7;
  if (v7)
  {
    result = sub_1B5CE3018((a1 + 1296), &v7);
    if (!result)
    {
      result = sub_1B5CE2A50(a1, &v7, v3);
      v6 = v7;
    }

    if (v6 >= 0xF)
    {
      result = v8;
      if (v8)
      {
        return MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
      }
    }
  }

  return result;
}

void sub_1B5D5ACD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9, uint64_t a10)
{
  if (a9 >= 0xFu)
  {
    if (a10)
    {
      MEMORY[0x1B8C880C0](a10, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D5AD04(uint64_t *a1, _BYTE *a2, int a3)
{
  if (!a3 && *a2 == 107 && a2[1] == 111)
  {
    result = uset_open();
    v5 = MEMORY[0x1E69E5770];
    *a1 = result;
    a1[1] = v5;
  }

  else
  {
    if (!ulocdata_open())
    {
      __assert_rtn("icu_exemplars", "LXMutableLexiconImpl.cpp", 262, "ulocdata");
    }

    ExemplarSet = ulocdata_getExemplarSet();
    v7 = MEMORY[0x1E69E5770];
    *a1 = ExemplarSet;
    a1[1] = v7;
    if (!ExemplarSet)
    {
      __assert_rtn("icu_exemplars", "LXMutableLexiconImpl.cpp", 271, "exemplar_set");
    }

    return ulocdata_close();
  }

  return result;
}

uint64_t sub_1B5D5AEBC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1B5D240C0(result);

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D5AF08(uint64_t a1)
{
  sub_1B5D5AF40(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D5AF40(uint64_t a1)
{
  *a1 = &unk_1F2D55AF0;
  std::mutex::~mutex((a1 + 1600));
  sub_1B5D5B054(a1 + 1560);
  v2 = *(a1 + 1552);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 1536);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a1 + 1520);
  if (v4)
  {
    sub_1B5CDD904(v4);
  }

  *(a1 + 136) = &unk_1F2D559C0;
  v5 = *(a1 + 1488);
  if (v5 && *(a1 + 1486) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a1 + 1432);
  v6 = *(a1 + 128);
  if (v6)
  {
    sub_1B5CDD904(v6);
  }

  sub_1B5D5AEBC((a1 + 112), 0);
  v7 = *(a1 + 80);
  if (v7 && *(a1 + 78) == 1)
  {
    free(v7);
  }

  v8 = *(a1 + 48);
  if (v8 && *(a1 + 46) == 1)
  {
    free(v8);
  }

  v9 = *(a1 + 16);
  if (v9 && *(a1 + 14) == 1)
  {
    free(v9);
  }

  return a1;
}

uint64_t sub_1B5D5B054(uint64_t a1)
{
  sub_1B5D563D4(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1B5D5B098(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56D10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D5B0D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1B5D5B104(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

unint64_t sub_1B5D5B140(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 >= 0xF)
  {
    v3 = *(a1 + 88);
    if (v2 > 0x16)
    {
      operator new();
    }

    v12 = *(a1 + 80);
    goto LABEL_7;
  }

  v12 = *(a1 + 80);
  if (v2)
  {
    v3 = (a1 + 82);
LABEL_7:
    memmove(__dst, v3, v2);
    goto LABEL_8;
  }

  v2 = 0;
LABEL_8:
  *(__dst + v2) = 0;
  v4 = v12;
  v5 = __dst[0];
  if (v12 >= 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = sub_1B5D2CC6C(v6, v7);
  v9 = (*(**(a1 + 8) + 112))(*(a1 + 8));
  if (v4 < 0)
  {
    operator delete(v5);
  }

  return v9 ^ v8;
}

void sub_1B5D5B264(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_1B5D5B28C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    v1 = (a1 + 64);
  }

  return sub_1B5CDFA10(v1, *(a1 + 48));
}

double sub_1B5D5B2B8(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 8);
  v23 = 0;
  v3 = 8;
  if (!*(v2 + 84))
  {
    v3 = 0;
  }

  v4 = (*(**(v2 + v3) + 128))(*(v2 + v3), a1 + 16, &v23);
  v5 = 0.0;
  if (v4)
  {
    v6 = *(a1 + 16);
    if (v6 && v6 != 0xFFFFFFFFLL)
    {
      v9 = 16;
      if (*(v2 + 84))
      {
        v9 = 20;
      }

      v10 = *(v2 + v9) + v23;
      if (v10)
      {
        v11 = 0;
        v12 = *(v2 + 64);
        v13 = *v12;
        v14 = v12[1];
        v15 = v14 - 1;
        while (1)
        {
          if (v14 < v10)
          {
LABEL_33:
            __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
          }

          if (v15 < v10 || v13 == 0)
          {
            break;
          }

          v17 = v10 + 1;
          v18 = v12[1];
          if (v18 < v17)
          {
            goto LABEL_33;
          }

          if (v18 - 1 < v17)
          {
            break;
          }

          v19 = *(v13 + v10);
          v20 = *(v13 + v17);
          if ((v20 & 4) != 0)
          {
            v21 = v10 + 2;
            if (v14 < v21)
            {
              goto LABEL_33;
            }

            if (v15 < v21)
            {
              return log10f(v5);
            }

            v11 += *(v13 + v21) * *(v13 + v21);
            if ((v20 & 0x80) == 0)
            {
LABEL_32:
              v5 = v11 * 0.0000153787005;
              return log10f(v5);
            }
          }

          else
          {
            v11 = 65025;
            if ((v20 & 0x80) == 0)
            {
              goto LABEL_32;
            }
          }

          v10 += v19;
          if (v10)
          {
            v22 = v19 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            goto LABEL_32;
          }
        }
      }
    }
  }

  return log10f(v5);
}

void sub_1B5D5B448(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *(*(a1 + 8) + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B5D5B4D8;
  v3[3] = &unk_1E7C210F8;
  v3[4] = a2;
  v3[5] = a1;
  sub_1B5D5B5D4(v2, (a1 + 16), (a1 + 48), (a1 + 80), &v4, v3, 0.0);
}

void sub_1B5D5B4D8(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, double a5)
{
  v10 = *(a1 + 40);
  v11 = *(v10 + 136);
  v12 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D58800);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D5B96C(Instance + 16, *(v10 + 8), a2, a3, a4, a5, v11 + a5);
  (*(*(a1 + 32) + 16))();

  CFRelease(Instance);
}

void sub_1B5D5B5D4(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned __int16 *a4, _BYTE *a5, uint64_t a6, double a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v13 = 8;
  if (!*(a1 + 84))
  {
    v13 = 0;
  }

  v14 = *(a1 + v13);
  v28 = 0;
  *v27 = 0u;
  if (*a2 == 0xFFFFFFFFLL)
  {
    v15 = &v25;
    v24 = 0uLL;
  }

  else
  {
    v29 = &unk_1F2D5B690;
    v30 = v27;
    v31 = &v29;
    (*(*v14 + 144))(v14);
    sub_1B5D5FC3C(&v29);
    v24 = *v27;
    v25 = *v27;
    v26 = v28;
    v15 = v27;
  }

  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v29 = v27;
  sub_1B5D5B8E0(&v29);
  for (i = v24; i != *(&v24 + 1); i += 40)
  {
    if (*a5)
    {
      break;
    }

    sub_1B5D7FC58(&v29, a1 + 88, a4, *i);
    if (v33 == -2)
    {
      v17 = *(a1 + 84) ? 8 : 0;
      v18 = sub_1B5DAAB80(*(a1 + v17), (i + 8)).n64_f64[0];
      v19 = log10f(v18);
      sub_1B5D5B5D4(a1, i + 8, a3, &v29, a5, a6, v19 + a7);
    }

    else
    {
      sub_1B5D5DC60(v27, a3, v33);
      if (*(a1 + 84))
      {
        v20 = 8;
      }

      else
      {
        v20 = 0;
      }

      v21 = sub_1B5DAAB80(*(a1 + v20), (i + 8)).n64_f64[0];
      v22 = log10f(v21);
      (*(a6 + 16))(a6, i + 8, v27, &v29, a5, v22 + a7);
      if (v27[1] && BYTE6(v27[0]) == 1)
      {
        free(v27[1]);
      }
    }

    if (v31 >= 0xFu && v32)
    {
      MEMORY[0x1B8C880C0](v32, 0x1000C8077774924);
    }

    if (v29 >= 0xFu && v30)
    {
      MEMORY[0x1B8C880C0](v30, 0x1000C8077774924);
    }
  }

  v29 = &v25;
  sub_1B5D5B8E0(&v29);
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1B5D5B87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1B5D5FC3C(&a22);
  sub_1B5D5B8E0(&a22);
  _Unwind_Resume(a1);
}

void sub_1B5D5B8E0(void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 5;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D5B96C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5, double a6, double a7)
{
  *a1 = &unk_1F2D58758;
  *(a1 + 8) = a2;
  *(a1 + 16) = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_1B5CE4AC4((a1 + 24), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v12 = *(a3 + 8);
    *(a1 + 40) = *(a3 + 24);
    *(a1 + 24) = v12;
  }

  sub_1B5D5CABC(a1 + 48, a4);
  v13 = *a5;
  if (v13 >= 0xF)
  {
    *(a1 + 80) = v13;
    operator new[]();
  }

  *(a1 + 80) = *a5;
  *(a1 + 96) = *(a5 + 16);
  v14 = a5[12];
  if (v14 >= 0xF)
  {
    *(a1 + 104) = v14;
    operator new[]();
  }

  *(a1 + 104) = *(a5 + 12);
  *(a1 + 120) = *(a5 + 10);
  *(a1 + 128) = a6;
  *(a1 + 136) = a7;
  return a1;
}

void sub_1B5D5BAA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) >= 0xFu)
  {
    v3 = *(v1 + 88);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(v1 + 56);
  if (v4 && *(v1 + 54) == 1)
  {
    free(v4);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D5BB0C()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

uint64_t sub_1B5D5BB60(uint64_t a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 8) + 8);
  v2 = 8;
  if (!*(v1 + 84))
  {
    v2 = 0;
  }

  v3 = *(v1 + v2);
  v6 = 0;
  v7[0] = &unk_1F2D5B610;
  v7[1] = &v6;
  v7[3] = v7;
  (*(*v3 + 144))(v3, a1 + 16, v7);
  sub_1B5D5FC3C(v7);
  result = v6;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D5BC34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FC3C(va);
  _Unwind_Resume(a1);
}

void sub_1B5D5BC48(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 8) + 8);
  v37 = 0uLL;
  v36 = 0;
  v5 = 8;
  if (!*(v4 + 84))
  {
    v5 = 0;
  }

  v6 = *(v4 + v5);
  v39 = 0;
  if ((*(*v6 + 128))(v6, a1 + 16, &v39))
  {
    v7 = 0.0;
    while (1)
    {
      v38 = 0;
      v8 = *(v4 + 84) ? 20 : 16;
      sub_1B5DAB1C0(&v44, v4, *(v4 + v8) + v39, &v38, (a1 + 80));
      if (v38)
      {
        v9 = *(v4 + v8);
        v10 = v38 >= v9 ? v38 - v9 : 0;
        v38 = v10;
      }

      else
      {
        v10 = 0;
      }

      v11 = *&v46;
      v12 = v37;
      if (v37 >= *(&v37 + 1))
      {
        v18 = 0x2E8BA2E8BA2E8BA3 * ((v37 - v36) >> 3) + 1;
        if (v18 > 0x2E8BA2E8BA2E8BALL)
        {
          sub_1B5D04FA0();
        }

        if (0x5D1745D1745D1746 * ((*(&v37 + 1) - v36) >> 3) > v18)
        {
          v18 = 0x5D1745D1745D1746 * ((*(&v37 + 1) - v36) >> 3);
        }

        if ((0x2E8BA2E8BA2E8BA3 * ((*(&v37 + 1) - v36) >> 3)) >= 0x1745D1745D1745DLL)
        {
          v19 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v19 = v18;
        }

        v43 = &v36;
        if (v19)
        {
          sub_1B5D2C984(v19);
        }

        v20 = 8 * ((v37 - v36) >> 3);
        v40 = 0;
        v41 = v20;
        v42 = v20;
        *v20 = 0x100000;
        *(v20 + 4) = 0;
        *(v20 + 6) = 0;
        *(v20 + 8) = 0;
        sub_1B5D5CBBC(v20, &v44);
        v22 = v47;
        v21 = v48;
        v23 = v49;
        *(v20 + 32) = v46;
        *(v20 + 48) = v22;
        *(v20 + 80) = v23;
        *(v20 + 64) = v21;
        *&v42 = v42 + 88;
        v24 = v41 + v36 - v37;
        sub_1B5D2C9E0(v36, v37, v24);
        v25 = v36;
        v26 = *(&v37 + 1);
        v36 = v24;
        v35 = v42;
        v37 = v42;
        *&v42 = v25;
        *(&v42 + 1) = v26;
        v40 = v25;
        v41 = v25;
        sub_1B5D2CAC4(&v40);
        v17 = v35;
        v10 = v38;
      }

      else
      {
        *v37 = 0x100000;
        *(v12 + 4) = 0;
        *(v12 + 6) = 0;
        *(v12 + 8) = 0;
        v13 = sub_1B5D5CBBC(v12, &v44);
        v14 = v46;
        v15 = v47;
        v16 = v48;
        *(v13 + 80) = v49;
        *(v13 + 48) = v15;
        *(v13 + 64) = v16;
        *(v13 + 32) = v14;
        v17 = v13 + 88;
      }

      v7 = v7 + v11;
      *&v37 = v17;
      if (!v10)
      {
        break;
      }

      v39 = v10;
      if (v45)
      {
        if (BYTE6(v44) == 1)
        {
          free(v45);
        }
      }
    }

    if (v45 && BYTE6(v44) == 1)
    {
      free(v45);
      v17 = v37;
    }

    v27 = v36;
  }

  else
  {
    v27 = 0;
    v17 = 0;
    v7 = 0.0;
  }

  v28 = 0x2E8BA2E8BA2E8BA3 * ((v17 - v27) >> 3);
  if (v28)
  {
    if (v28 == 1)
    {
      *(v27 + 32) = 1065353216;
    }

    else
    {
      if (v7 <= 0.0)
      {
        __assert_rtn("derive_words", "CombinedTransliterationLexicon.cpp", 70, "terminationProb > 0");
      }

      while (v27 != v17)
      {
        *(v27 + 32) = *(v27 + 32) / v7;
        v27 += 88;
      }
    }
  }

  LOBYTE(v40) = 0;
  v29 = v36;
  for (i = v37; v29 != i; v29 += 88)
  {
    v31 = (*(*a1 + 80))(a1);
    v32 = v31 + (*(*a1 + 88))(a1);
    v44 = v32 + log10f(*(v29 + 32));
    v33 = sub_1B5D2DF44(v29, &v44);
    (*(a2 + 16))(a2, v33, &v40);
    CFRelease(v33);
    if (v40)
    {
      break;
    }
  }

  v44 = COERCE_DOUBLE(&v36);
  sub_1B5D26264(&v44);
  v34 = *MEMORY[0x1E69E9840];
}

void sub_1B5D5C098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, void *a21)
{
  if (a21)
  {
    if (BYTE6(a20) == 1)
    {
      free(a21);
    }
  }

  a20 = &a11;
  sub_1B5D26264(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D5C0F4(uint64_t a1)
{
  v3 = *(*(a1 + 8) + 8);
  v4 = 8;
  if (!*(v3 + 84))
  {
    v4 = 0;
  }

  v5 = a1 + 16;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6 == 0xFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v11 = v1;
  v12 = v2;
  v8 = *(v3 + v4);
  v10 = 0;
  return (*(*v8 + 128))(v8, v5, &v10);
}

uint64_t sub_1B5D5C19C(uint64_t a1, unsigned __int16 *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v40 = *(a1 + 16);
  if (*(a1 + 47) < 0)
  {
    sub_1B5CE4AC4(&__p, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __p = *(a1 + 24);
  }

  if (*(a1 + 80) >= 0xFuLL)
  {
    LOWORD(v36) = *(a1 + 80);
    operator new[]();
  }

  v36 = *(a1 + 80);
  v4 = *(a1 + 104);
  v37 = *(a1 + 96);
  if (v4 >= 0xF)
  {
    LOWORD(v38) = v4;
    operator new[]();
  }

  v38 = *(a1 + 104);
  v39 = *(a1 + 120);
  if (*(a2 + 1))
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = (a2 + 8);
  }

  v32 = v5;
  v23 = a2;
  v6 = *a2;
  v33 = 0;
  v34 = v6;
  v35 = 0;
  sub_1B5CDCF70(&v32);
  v28 = v5;
  v29 = v6;
  v30 = v6;
  v31 = 0;
  sub_1B5CDCF70(&v28);
  v25 = v28;
  v24 = v29;
  v7 = 0.0;
  while (1)
  {
    if (v32 != v25)
    {
      __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
    }

    if (v33 == v24)
    {
      break;
    }

    v8 = v35;
    (*(**(*(*(a1 + 8) + 8) + 1480) + 16))(&v26);
    v9 = v36;
    sub_1B5CDD368(&v43, *(*(a1 + 8) + 8) + 88, &v36, v8, &v26);
    if (v9 >= 0xF && *(&v36 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v36 + 1), 0x1000C8077774924);
    }

    v36 = v43;
    if (v43 >= 0xFu)
    {
      LOWORD(v43) = 0;
    }

    v37 = v44;
    if (v38 >= 0xFu && *(&v38 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v38 + 1), 0x1000C8077774924);
    }

    v38 = v45;
    if (v45 >= 0xFu)
    {
      LOWORD(v45) = 0;
    }

    v39 = v46;
    if (v43 >= 0xFu && *(&v43 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v43 + 1), 0x1000C8077774924);
    }

    if (v40 == 0xFFFFFFFFLL)
    {
      v10 = 1;
    }

    else
    {
      v11 = v36;
      if (v9 <= v36)
      {
        v12 = v36;
      }

      else
      {
        v12 = v9;
      }

      while (1)
      {
        v10 = v12 != v9;
        if (v12 == v9)
        {
          break;
        }

        v13 = *(*(a1 + 8) + 8);
        if (*(v13 + 84))
        {
          v14 = 8;
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v13 + v14);
        v16 = *(&v36 + 1);
        if (v11 <= 0xE)
        {
          v16 = &v36 + 2;
        }

        v42 = v16[v9];
        (*(*v15 + 120))(&v43, v15, &v40, &v42, 1);
        v40 = v43;
        std::string::operator=(&__p, (&v43 + 8));
        if (SBYTE7(v45) < 0)
        {
          operator delete(*(&v43 + 1));
        }

        v17 = sub_1B5DAAB80(v15, &v40).n64_f64[0];
        v7 = v7 + log10f(v17);
        ++v9;
        if (v40 == 0xFFFFFFFFLL)
        {
          v10 = 1;
          break;
        }
      }
    }

    if (v26 >= 0xFu && v27)
    {
      MEMORY[0x1B8C880C0](v27, 0x1000C8077774924);
    }

    if (v10)
    {
      Instance = 0;
      goto LABEL_54;
    }

    sub_1B5CDCF70(&v32);
  }

  if (v40 == 0xFFFFFFFFLL)
  {
    __assert_rtn("create_child", "TransliterationCursorImpl.cpp", 62, "impl.valid()");
  }

  sub_1B5D5DD0C(&v43, (a1 + 48), v23);
  v18 = *(a1 + 136);
  v19 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D58800);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D5B96C(Instance + 16, *(a1 + 8), &v40, &v43, &v36, v7, v18 + v7);
  if (*(&v43 + 1) && BYTE6(v43) == 1)
  {
    free(*(&v43 + 1));
  }

LABEL_54:
  if (v38 >= 0xFu && *(&v38 + 1))
  {
    MEMORY[0x1B8C880C0](*(&v38 + 1), 0x1000C8077774924);
  }

  if (v36 >= 0xFu && *(&v36 + 1))
  {
    MEMORY[0x1B8C880C0](*(&v36 + 1), 0x1000C8077774924);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x1E69E9840];
  return Instance;
}

void sub_1B5D5C7C4(uint64_t a1)
{
  *a1 = &unk_1F2D58758;
  if (*(a1 + 104) >= 0xFu)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*(a1 + 80) >= 0xFu)
  {
    v3 = *(a1 + 88);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 54) == 1)
  {
    free(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D5C89C(uint64_t a1)
{
  *a1 = &unk_1F2D58758;
  if (*(a1 + 104) >= 0xFu)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*(a1 + 80) >= 0xFu)
  {
    v3 = *(a1 + 88);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 54) == 1)
  {
    free(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}