void sub_6D81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
    if (*(v14 - 113) < 0)
    {
LABEL_7:
      operator delete(*(v14 - 136));
      if (*(v14 - 137) < 0)
      {
LABEL_10:
        operator delete(*(v14 - 160));
        if (*(v14 - 161) < 0)
        {
LABEL_13:
          operator delete(*(v14 - 184));
          if (*(v14 - 185) < 0)
          {
LABEL_16:
            operator delete(*(v14 - 208));
            if ((*(v14 - 209) & 0x80000000) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }

LABEL_18:
          if ((*(v14 - 209) & 0x80000000) == 0)
          {
LABEL_20:
            _Unwind_Resume(a1);
          }

LABEL_19:
          operator delete(*(v14 - 232));
          goto LABEL_20;
        }

LABEL_15:
        if (*(v14 - 185) < 0)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }

LABEL_12:
      if (*(v14 - 161) < 0)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  else if (*(v14 - 113) < 0)
  {
    goto LABEL_7;
  }

  if (*(v14 - 137) < 0)
  {
    goto LABEL_10;
  }

  goto LABEL_12;
}

uint64_t **sub_6DA58(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

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
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_6DE50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

BOOL sub_6DEAC(unsigned int a1)
{
  v2 = sub_123316C(a1);
  v3 = sub_1232F20(&v2);
  return *sub_1232E78(&v3) == 0x30000006E74614CLL;
}

uint64_t sub_6DEFC(unsigned int a1, int a2)
{
  v2 = 4;
  switch(a2)
  {
    case 0:
    case 3:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 15:
    case 17:
    case 23:
    case 30:
    case 32:
    case 37:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 49:
    case 50:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
      return 4 * (a1 != 1);
    case 1:
      if (a1 == 1)
      {
        return 0;
      }

      if (a1 == 2)
      {
        return 1;
      }

      if (a1 % 0x64 - 3 < 8)
      {
        return 2;
      }

      if (a1 % 0x64 > 0xA)
      {
        return 3;
      }

      else
      {
        return 4;
      }

    case 2:
    case 4:
    case 13:
    case 19:
    case 25:
    case 29:
    case 35:
    case 36:
    case 47:
    case 48:
      if (!a1)
      {
        return 4;
      }

      if (a1 == 1)
      {
        return 0;
      }

      HIDWORD(v4) = 1757569337 * a1;
      LODWORD(v4) = 1757569337 * a1;
      if ((v4 >> 6) >= 0x10C7)
      {
        return 4;
      }

      return 3;
    case 7:
      v12 = a1 % 0x64;
      if (a1 % 0xA == 1 && v12 != 11)
      {
        return 0;
      }

      if (v12 - 12 >= 3 && a1 % 0xA - 5 >= 0xFFFFFFFD)
      {
        return 2;
      }

      else
      {
        return 4;
      }

    case 8:
    case 28:
      v5 = a1 - 1;
      if (a1 - 1 >= 4)
      {
        return 4;
      }

      v6 = &unk_2266860;
      return v6[v5];
    case 16:
      if (a1 == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 4;
      }

      if (a1 == 1)
      {
        return 0;
      }

      else
      {
        return v11;
      }

    case 24:
      if (a1 == 1)
      {
        return 0;
      }

      if (a1 % 0xA - 2 > 2)
      {
        if (a1 % 0xA - 5 < 0xFFFFFFFD)
        {
          return 3;
        }
      }

      else if (a1 % 0x64 - 12 >= 3)
      {
        return 2;
      }

      if (a1 % 0x64 - 12 < 3)
      {
        return 3;
      }

      else
      {
        return 4;
      }

    case 26:
      if (a1 == 1)
      {
        return 0;
      }

      if (~(100 * (a1 / 0x64)) + a1 >= 0x13)
      {
        return 4;
      }

      else
      {
        return 2;
      }

    case 27:
    case 33:
      v7 = a1 % 0x64;
      if (a1 % 0xA == 1 && v7 != 11)
      {
        return 0;
      }

      v9 = a1 % 0xA - 5;
      if (v9 >= 0xFFFFFFFD && v7 - 12 > 2)
      {
        return 2;
      }

      v2 = 3;
      if (v9 < 0xFFFFFFFC)
      {
        return v2;
      }

      if (v7 - 11 < 4)
      {
        return 3;
      }

      else
      {
        return 4;
      }

    case 51:
      v5 = ~(100 * (a1 / 0x64)) + a1;
      if (v5 >= 4)
      {
        return 4;
      }

      v6 = &unk_2266870;
      return v6[v5];
    case 52:
      if (!(a1 % 0xA))
      {
        return 4;
      }

      if (a1 % 0xA == 1)
      {
        if (a1 % 0x64 - 11 >= 9)
        {
          return 0;
        }

        return 4;
      }

      if (a1 % 0x64 - 11 <= 8)
      {
        return 4;
      }

      return 2;
    default:
      return v2;
  }
}

id **sub_6E3B8(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

void sub_6E408(id **a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  if (*a2 == a2[1])
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v6 = objc_opt_new();
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      if (*(v7 + 23) >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = *v7;
      }

      v10 = [NSString stringWithUTF8String:v9];
      [v6 addObject:v10];

      v7 += 3;
    }

    while (v7 != v8);
  }

  v11 = [**a1 stringFromItems:v6];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = [v13 UTF8String];
    v15 = [v13 lengthOfBytesUsingEncoding:4];
    v16 = v15;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v15;
    if (v15)
    {
      memmove(a3, v14, v15);
    }

    v16[a3] = 0;

    goto LABEL_34;
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v22);
    sub_4A5C(&v22, "Failed to format list of strings in NSListFormatter.", 52);
    if ((v32 & 0x10) != 0)
    {
      v18 = v31;
      if (v31 < v28)
      {
        v31 = v28;
        v18 = v28;
      }

      v19 = v27;
      v17 = v18 - v27;
      if (v18 - v27 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v32 & 8) == 0)
      {
        v17 = 0;
        v21 = 0;
LABEL_28:
        *(&__p + v17) = 0;
        sub_7E854(&__p, 3u);
        if (v21 < 0)
        {
          operator delete(__p);
        }

        if (v30 < 0)
        {
          operator delete(v29);
        }

        std::locale::~locale(&v24);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v19 = v25;
      v17 = v26 - v25;
      if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v21 = v17;
    if (v17)
    {
      memmove(&__p, v19, v17);
    }

    goto LABEL_28;
  }

LABEL_33:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_34:
}

void sub_6E7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();

  _Unwind_Resume(a1);
}

id *sub_6E860(id *a1, unsigned int a2)
{
  *a1 = 0;
  v4 = objc_opt_new();
  v5 = *a1;
  *a1 = v4;

  sub_6EDEC(a2, __p);
  if (v11 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = [NSLocale localeWithLocaleIdentifier:v7];

  [*a1 setLocale:v8];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_6E940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_6E9A8()
{
  if ((atomic_load_explicit(&qword_278EC70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EC70))
  {
    sub_1221F0C();
  }

  return qword_278EC68;
}

void sub_6EAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_1F1A8(&a13);
  sub_1F1A8(&a11);
  sub_1F1A8(&a9);
  __cxa_guard_abort(&qword_278EC70);
  _Unwind_Resume(a1);
}

uint64_t sub_6EAFC()
{
  if ((atomic_load_explicit(&qword_278EC80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EC80))
  {
    sub_1221F0C();
  }

  return qword_278EC78;
}

void sub_6EBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_1F1A8(&a13);
  sub_1F1A8(&a11);
  sub_1F1A8(&a9);
  __cxa_guard_abort(&qword_278EC80);
  _Unwind_Resume(a1);
}

uint64_t sub_6EC50()
{
  if ((atomic_load_explicit(&qword_278EC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EC90))
  {
    sub_1221F0C();
  }

  return qword_278EC88;
}

void sub_6ED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_1F1A8(v13 - 32);
  sub_1F1A8(&a13);
  sub_1F1A8(&a11);
  sub_1F1A8(&a9);
  __cxa_guard_abort(&qword_278EC90);
  _Unwind_Resume(a1);
}

uint64_t sub_6EDEC@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = sub_123316C(a1);
  result = sub_1232E84(&v5);
  v4 = *(result + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memcpy(a2, (result + 16 * (v4 > 7)), v4);
  }

  a2[v4] = 0;
  return result;
}

uint64_t sub_6EF28(double *a1, int a2)
{
  if (*a1 == 0.0)
  {
    return a2 ^ 1u;
  }

  v2 = a1[1];
  if (v2 == 0.0)
  {
    return a2 ^ 1u;
  }

  else
  {
    return (*a1 < 0.0) ^ (v2 >= 0.0);
  }
}

uint64_t sub_6EFC0(unsigned int *a1, unsigned int *a2, double a3)
{
  v3 = *a2;
  v4 = vcvtad_u64_f64((1.0 - a3) * a1[1] + a2[1] * a3);
  if (v4 >= 0xFFFFFFFE)
  {
    v5 = 4294967294;
  }

  else
  {
    v5 = v4;
  }

  LODWORD(v3) = vcvtad_u64_f64((1.0 - a3) * *a1 + v3 * a3);
  return v3 | (v5 << 32);
}

BOOL sub_6F0CC(double *a1, int a2)
{
  if (a2)
  {
    return *a1 > 0.0;
  }

  else
  {
    return *a1 >= 0.0;
  }
}

void *sub_6F198(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x7FF0000000000000;
  return result;
}

uint64_t sub_6F1A8@<X0>(uint64_t result@<X0>, int a2@<W1>, double *a3@<X8>)
{
  *a3 = 0.0;
  a3[1] = 0.0;
  a3[2] = 0.0;
  a3[3] = INFINITY;
  v5 = *(result + 8);
  v6 = *result + 16;
  if (*result != v5 && v6 != v5)
  {
    while (1)
    {
      v9 = *(v6 - 16);
      v8 = *(v6 - 8);
      v11 = *v6;
      v10 = *(v6 + 8);
      v12 = v9 - *v6;
      v13 = (v8 - v10) / v12;
      v14 = (v9 * v10 - v8 * *v6) / v12;
      *v16 = v13;
      *(v16 + 1) = v14;
      v17 = 2;
      v18 = v9;
      v15 = *(a3 + 1);
      if (*a3 == v15 || *(v15 - 16) != 2)
      {
        goto LABEL_17;
      }

      result = sub_6F0E8(v16, (v15 - 48));
      if (result)
      {
        break;
      }

LABEL_12:
      a3[3] = v11;
      v6 += 16;
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    v15 = *(a3 + 1);
LABEL_17:
    if (v15 >= *(a3 + 2))
    {
      result = sub_6FB10(a3, v16, &v18);
    }

    else
    {
      sub_70060(v15, v16, v9);
      result = v15 + 48;
    }

    *(a3 + 1) = result;
    goto LABEL_12;
  }

LABEL_6:
  if (a2)
  {
    if (*(a3 + 1) == *a3)
    {
      sub_6FAB4();
    }

    *(*a3 + 40) = 0xFFF0000000000000;
    a3[3] = INFINITY;
  }

  return result;
}

void sub_6F2E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6F30C(uint64_t *a1)
{
  v2 = *a1;
  sub_6FC44(&v3, a1, &v2);
  return v3;
}

uint64_t sub_6F344(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_6FC44(&v3, a1, &v2);
  return v3;
}

void *sub_6F37C(void *result)
{
  result[1] = *result;
  result[3] = 0x7FF0000000000000;
  return result;
}

uint64_t sub_6F3B0(uint64_t a1, char a2, double a3)
{
  v5 = *(a1 + 8);
  v6 = *a1 + 48;
  if (*a1 == v5 || v6 == v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 1;
    do
    {
      v9 &= sub_70138(v6 - 48, a2, *(v6 - 8), *(v6 + 40));
      v10 = sub_70078(v6 - 48, *(v6 + 40));
      if (v10 > sub_70078(v6, *(v6 + 40)) + a3)
      {
        v9 = 0;
      }

      v6 += 48;
    }

    while (v6 != v5);
    v5 = *(a1 + 8);
  }

  return v9 & sub_70138(v5 - 48, a2, *(v5 - 8), *(a1 + 24));
}

BOOL sub_6F47C(void *a1, double a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 - 2;
  if (v2 < 2)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = *a1 + v7;
    v9 = *(v8 + 88);
    v10 = sub_70078(v8 + 48, v9);
    v11 = vabdd_f64(v10, sub_70078(*a1 + v7, v9));
    v13 = v3-- != 0;
    result = v11 <= a2;
    if (v11 > a2)
    {
      break;
    }

    v7 += 48;
  }

  while (v13);
  return result;
}

double sub_6F544(uint64_t a1, double a2)
{
  v3 = *a1;
  if (*(v3 + 40) > a2 || *(a1 + 24) < a2)
  {
    return INFINITY;
  }

  v6 = v3 + 48;
  v7 = *(a1 + 8) - (v3 + 48);
  if (v7 >= 48)
  {
    if (v7 != 48)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      do
      {
        v9 = 48 * (v8 >> 2);
        _X13 = v6 + v9;
        __asm { PRFM            #0, [X13] }

        v15 = v6 + 48 * (v8 >> 1);
        _X12 = v15 + v9;
        __asm { PRFM            #0, [X12] }

        if (*(v15 + 40) > a2)
        {
          v18 = 0;
        }

        else
        {
          v18 = v8 >> 1;
        }

        v6 += 48 * v18;
        v8 -= v8 >> 1;
      }

      while (v8 > 1);
    }

    v3 = v6 + 48 * (*(v6 + 40) <= a2) - 48;
  }

  return sub_70078(v3, a2);
}

void *sub_6F5F4(void *result, uint64_t a2, double a3, double a4)
{
  v5 = result;
  v12 = a3;
  v6 = result[1];
  if (*result == v6)
  {
LABEL_7:
    if (v6 < result[2])
    {
LABEL_8:
      sub_70060(v6, a2, a3);
      result = (v6 + 48);
      *(v5 + 8) = v6 + 48;
LABEL_12:
      *(v5 + 8) = result;
      goto LABEL_13;
    }

LABEL_11:
    result = sub_6FB10(v5, a2, &v12);
    goto LABEL_12;
  }

  v7 = *(a2 + 32);
  v8 = *(v6 - 16);
  if (v7 != -1 && v8 == v7)
  {
    v14 = &v13;
    v10 = a2;
    v11 = a3;
    result = (*(&off_262E428 + v7))(&v14);
    if (result)
    {
      a3 = v11;
      a2 = v10;
      v6 = *(v5 + 8);
      if (v6 < *(v5 + 16))
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else if (v8 != v7)
  {
    goto LABEL_7;
  }

LABEL_13:
  *(v5 + 24) = a4;
  return result;
}

double sub_6F6D0@<D0>(void *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0x7FF0000000000000;
  v6 = *a1;
  v7 = a1[1];
  do
  {
    v9 = *v6;
    v10 = *(v6 + 8);
    v11 = *(v6 + 32);
    v12 = *(v6 + 40);
    v13 = *a2;
    v14 = a2[1];
    if (*a2 != v14 && v12 <= *(v14 - 8))
    {
      v14 -= 48;
      a2[1] = v14;
    }

    if (v11 != 2)
    {
      if (v11 != 1)
      {
        sub_5AF20();
      }

      if (v9 >= a3)
      {
        v9 = a3;
      }

      *v25 = v9;
      v26 = 1;
      *v23 = v12;
      if (v13 == v14 || *(v14 - 16) != 1)
      {
        goto LABEL_16;
      }

      if (sub_6EED4(v25, (v14 - 48)))
      {
        v14 = a2[1];
LABEL_16:
        if (v14 < a2[2])
        {
LABEL_17:
          sub_70060(v14, v25, v12);
          goto LABEL_54;
        }

LABEL_2:
        v8 = sub_6FB10(a2, v25, v23);
LABEL_3:
        a2[1] = v8;
        goto LABEL_4;
      }

      goto LABEL_4;
    }

    if (v9 == 0.0)
    {
      if (v10 >= a3)
      {
        v15 = a3;
      }

      else
      {
        v15 = v10;
      }

      *v25 = v15;
      v26 = 1;
      *v23 = v12;
      if (v13 == v14 || *(v14 - 16) != 1)
      {
        goto LABEL_26;
      }

      if (sub_6EED4(v25, (v14 - 48)))
      {
        v14 = a2[1];
LABEL_26:
        if (v14 < a2[2])
        {
          goto LABEL_17;
        }

        goto LABEL_2;
      }

      goto LABEL_4;
    }

    if (v9 <= 0.0)
    {
      *v25 = a3;
      v26 = 1;
      v16 = 1;
      v17 = 2;
      *v23 = v9;
      *(v23 + 1) = v10;
      v18 = (a3 - v10) / v9;
      v24 = 2;
      if (v18 <= v12)
      {
LABEL_30:
        v27 = v12;
        if (v13 == v14 || *(v14 - 16) != v17)
        {
          goto LABEL_34;
        }

        v29 = &v28;
        if ((*(&off_262E428 + v17))(&v29, v23, v14 - 48))
        {
          v14 = a2[1];
LABEL_34:
          if (v14 < a2[2])
          {
            sub_70060(v14, v23, v12);
LABEL_54:
            v8 = v14 + 48;
            goto LABEL_3;
          }

          goto LABEL_43;
        }

        goto LABEL_4;
      }
    }

    else
    {
      *v25 = v9;
      *(v25 + 1) = v10;
      v26 = 2;
      v16 = 2;
      v17 = 1;
      *v23 = a3;
      v18 = (a3 - v10) / v9;
      v24 = 1;
      if (v18 <= v12)
      {
        goto LABEL_30;
      }
    }

    v27 = v12;
    if (v13 == v14 || *(v14 - 16) != v16 || (v29 = &v28, v19 = (*(&off_262E428 + v16))(&v29, v25, v14 - 48), v14 = a2[1], v19))
    {
      if (v14 >= a2[2])
      {
        v14 = sub_6FB10(a2, v25, &v27);
      }

      else
      {
        sub_70060(v14, v25, v12);
        v14 += 48;
      }

      a2[1] = v14;
    }

    a2[3] = 0x7FF0000000000000;
    v27 = v18;
    if (*a2 == v14)
    {
      goto LABEL_52;
    }

    v20 = *(v14 - 16);
    if (v24 == -1 || v20 != v24)
    {
      if (v20 != v24)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v29 = &v28;
      if ((*(&off_262E428 + v24))(&v29, v23, v14 - 48))
      {
        v14 = a2[1];
LABEL_52:
        if (v14 < a2[2])
        {
          sub_70060(v14, v23, v18);
          goto LABEL_54;
        }

LABEL_43:
        v8 = sub_6FB10(a2, v23, &v27);
        goto LABEL_3;
      }
    }

LABEL_4:
    a2[3] = 0x7FF0000000000000;
    v6 += 48;
  }

  while (v6 != v7);
  result = *(*a1 + 40);
  v22 = a1[3];
  *(*a2 + 40) = result;
  a2[3] = v22;
  return result;
}

void sub_6FA70(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FB10(uint64_t a1, __int128 *a2, double *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = sub_70060(16 * ((*(a1 + 8) - *a1) >> 4), a2, *a3);
  v7 = v6 + 48;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v6 - v9;
  memcpy((v6 - v9), *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_6FC2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_6FC44(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *result = a2;
  result[1] = v3;
  return result;
}

unint64_t sub_6FC60(uint64_t a1)
{
  v2 = *a1;
  result = *(a1 + 8);
  if (result < *v2 || result >= v2[1])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "access to invalid math sub-function iterator", 0x2CuLL);
  }

  return result;
}

double sub_6FCE8(void *a1)
{
  v1 = a1[1];
  if (v1 < **a1 || v1 >= *(*a1 + 8))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "access to invalid math sub-function iterator", 0x2CuLL);
  }

  return *(v1 + 40);
}

double sub_6FD4C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 < *v2 || v3 >= v2[1])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(exception, "access to invalid math sub-function iterator", 0x2CuLL);
  }

  v4 = v3 + 48;
  sub_6F344(v2);
  if (v4 != v5)
  {
    return *(a1[1] + 88);
  }

  sub_6F3A0(*a1);
  return v6;
}

double sub_6FDF0(uint64_t a1, double a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3 < *v4 || v3 >= v4[1])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "access to invalid math sub-function iterator", 0x2CuLL);
  }

  return sub_70078(v3, a2);
}

uint64_t sub_6FE5C(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 < *v3 || v2 >= v3[1])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_2D390(exception, "access to invalid math sub-function iterator", 0x2CuLL);
  }

  return sub_700DC(v2);
}

BOOL sub_6FEF4(double *a1, int a2, double a3, double a4)
{
  v4 = a2 ^ 1;
  v6 = *a1;
  v5 = a1[1];
  v7 = 1;
  if (((a2 ^ 1) & 1) == 0 && v6 == 0.0 && v5 == 0.0)
  {
    v7 = a1[2] != 0.0;
  }

  v8 = v5 + v5;
  v9 = v6 * 3.0;
  v10 = v8 / (v6 * 3.0);
  v11 = a1[2];
  v12 = v10 * v10 * 0.25;
  if (v12 >= v11 / v9)
  {
    v13 = v10 * -0.5;
    v14 = sqrt(v12 - v11 / v9);
    v15 = v10 * -0.5 + v14;
    v16 = v13 - v14;
    if (v15 > a3 && v15 < a4)
    {
      v18 = 0;
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      v18 = v16 <= a3;
      if (v16 >= a4)
      {
        v18 = 1;
      }

      if (!v7)
      {
        return 0;
      }
    }

    if (v15 != v16)
    {
      v4 = 0;
    }

    if ((v4 | v18))
    {
      goto LABEL_20;
    }
  }

  else if (v7)
  {
LABEL_20:
    v19 = (a4 - a3) * 0.5 + a3;
    return v11 + v19 * (v19 * v19) * 0.0 + v19 * v19 * v9 + v19 * v8 >= 0.0;
  }

  return 0;
}

uint64_t sub_70060(uint64_t result, __int128 *a2, double a3)
{
  v3 = *a2;
  v4 = a2[1];
  *(result + 32) = *(a2 + 4);
  *result = v3;
  *(result + 16) = v4;
  *(result + 40) = a3;
  return result;
}

double sub_70078(uint64_t a1, double a2)
{
  v6 = a2;
  v4[0] = &v5;
  v4[1] = &v6;
  v5 = 0.0;
  v2 = *(a1 + 32);
  if (v2 == -1)
  {
    sub_5AF20();
  }

  v7 = v4;
  (*(&off_262E458 + v2))(&v7, a1);
  return v5;
}

uint64_t sub_700DC(uint64_t a1)
{
  v4 = 0;
  v3 = &v4;
  v1 = *(a1 + 32);
  if (v1 == -1)
  {
    sub_5AF20();
  }

  v5 = &v3;
  (*(&off_262E488 + v1))(&v5, a1);
  return v4;
}

uint64_t sub_70138(uint64_t a1, char a2, double a3, double a4)
{
  v9 = a4;
  v10 = a3;
  v8 = a2;
  v7 = 0;
  v6[0] = &v7;
  v6[1] = &v10;
  v6[2] = &v9;
  v6[3] = &v8;
  v4 = *(a1 + 32);
  if (v4 == -1)
  {
    sub_5AF20();
  }

  v11 = v6;
  (*(&off_262E4B8 + v4))(&v11, a1);
  return v7;
}

uint64_t sub_702D0(_BYTE ***a1)
{
  v1 = *a1;
  result = sub_6EECC();
  **v1 = result;
  return result;
}

uint64_t sub_70300(_BYTE ***a1)
{
  v1 = *a1;
  result = sub_6EECC();
  **v1 = result;
  return result;
}

BOOL sub_70330(_BYTE ***a1, double *a2)
{
  v2 = *a1;
  result = sub_6FFF0(a2);
  **v2 = result;
  return result;
}

BOOL sub_70360(_BYTE ***a1, double *a2)
{
  v2 = *a1;
  result = sub_6EF60(a2);
  **v2 = result;
  return result;
}

BOOL sub_70390(_BYTE ***a1, double *a2)
{
  v2 = *a1;
  result = sub_6EF60(a2);
  **v2 = result;
  return result;
}

uint64_t sub_703C4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  result = sub_6EEC4(a2, **(*a1 + 24));
  **v2 = result;
  return result;
}

BOOL sub_7040C(uint64_t a1, double *a2)
{
  v2 = *a1;
  result = sub_6F0CC(a2, **(*a1 + 24));
  **v2 = result;
  return result;
}

BOOL sub_70454(uint64_t a1, double *a2)
{
  v2 = *a1;
  result = sub_6FEF4(a2, **(*a1 + 24), **(*a1 + 8), **(*a1 + 16));
  **v2 = result;
  return result;
}

uint64_t sub_7049C(uint64_t a1, double *a2)
{
  v2 = *a1;
  result = sub_6EF28(a2, **(*a1 + 24));
  **v2 = result;
  return result;
}

uint64_t sub_704E4(uint64_t a1, double *a2)
{
  v2 = *a1;
  result = sub_6EF28(a2, **(*a1 + 24));
  **v2 = result;
  return result;
}

void *sub_7052C(void *result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = "common::Direction::REVERSE";
  }

  else
  {
    v2 = "common::Direction::FORWARD";
  }

  v3 = result;
  sub_4A5C(result, v2, 26);
  return v3;
}

void *sub_7057C(void *a1, int a2)
{
  switch(a2)
  {
    case 2:
      v3 = "common::RelativeSide::CENTER";
      v4 = 28;
      goto LABEL_7;
    case 1:
      v3 = "common::RelativeSide::RIGHT";
      v4 = 27;
      goto LABEL_7;
    case 0:
      v3 = "common::RelativeSide::LEFT";
      v4 = 26;
LABEL_7:
      sub_4A5C(a1, v3, v4);
      break;
  }

  return a1;
}

void *sub_705F0(void *a1, unint64_t a2)
{
  v3 = HIDWORD(a2);
  std::ostream::operator<<();
  v4 = sub_4A5C(a1, ", ", 2);
  sub_72140(v4, v3);
  return a1;
}

void *sub_70638(void *a1, double *a2)
{
  if (*a2 == INFINITY || a2[1] == INFINITY || a2[2] == INFINITY)
  {
    sub_4A5C(a1, "Invalid CostTimeLength::Factor.", 31);
  }

  else
  {
    v5 = std::ostream::operator<<();
    sub_4A5C(v5, ", ", 2);
    v6 = std::ostream::operator<<();
    sub_4A5C(v6, ", ", 2);
    std::ostream::operator<<();
  }

  return a1;
}

void *sub_706EC(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) == 0x7FFFFFFF)
  {
    sub_4A5C(a1, "Invalid TimeSpan in CostTimeLength.", 35);
    return a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_4A5C(a1, "Invalid Length in CostTimeLength.", 33);
    }

    else
    {
      v7 = std::ostream::operator<<();
      v8 = sub_4A5C(v7, ", ", 2);
      v9 = sub_72140(v8, v4);
      v10 = sub_4A5C(v9, ", ", 2);
      sub_70FBC(v10, a3);
    }

    return a1;
  }
}

uint64_t sub_707C0@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  sub_19594F8(&v13);
  if (a1 == 2)
  {
    v4 = std::ostream::operator<<();
    v5 = "_kWh";
  }

  else
  {
    if (a1 == 1)
    {
      v4 = std::ostream::operator<<();
      v5 = "_Wh";
      v6 = 3;
      goto LABEL_8;
    }

    if (a1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = sub_2D390(exception, "Invalid unit", 0xCuLL);
    }

    v4 = std::ostream::operator<<();
    v5 = "_mWh";
  }

  v6 = 4;
LABEL_8:
  sub_4A5C(v4, v5, v6);
  if ((v23 & 0x10) != 0)
  {
    v8 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v8 = v19;
    }

    v9 = v18;
    v7 = v8 - v18;
    if (v8 - v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v9 = v16;
    v7 = v17 - v16;
    if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_23:
      sub_3244();
    }
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, v9, v7);
  }

LABEL_19:
  a2[v7] = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_70AA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_70ACC(void *a1, int a2)
{
  v9 = a2;
  if (a2 == 0x7FFFFFFF)
  {
    sub_4A5C(a1, "Invalid Energy.", 15);
    return a1;
  }

  if ((a2 - 1000000) > 0xFFE17B80)
  {
    if ((a2 - 1000) > 0xFFFFF830)
    {
      sub_707C0(0, &__p);
      if ((v8 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v8 & 0x80u) == 0)
      {
        v5 = v8;
      }

      else
      {
        v5 = v7;
      }
    }

    else
    {
      sub_707C0(1, &__p);
      if ((v8 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v8 & 0x80u) == 0)
      {
        v5 = v8;
      }

      else
      {
        v5 = v7;
      }
    }
  }

  else
  {
    sub_707C0(2, &__p);
    if ((v8 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v8 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v7;
    }
  }

  sub_4A5C(a1, p_p, v5);
  if ((v8 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p);
  return a1;
}

void sub_70C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_70C28@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  sub_19594F8(&v13);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v4 = std::ostream::operator<<();
        v5 = "_in";
        goto LABEL_14;
      case 4:
        v4 = std::ostream::operator<<();
        v5 = "_ft";
        goto LABEL_14;
      case 5:
        v4 = std::ostream::operator<<();
        v5 = "_mi";
        goto LABEL_14;
    }

LABEL_31:
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Invalid unit", 0xCuLL);
  }

  if (!a1)
  {
    v4 = std::ostream::operator<<();
    v5 = "_cm";
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    v4 = std::ostream::operator<<();
    v5 = "_m";
    v6 = 2;
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    goto LABEL_31;
  }

  v4 = std::ostream::operator<<();
  v5 = "_km";
LABEL_14:
  v6 = 3;
LABEL_15:
  sub_4A5C(v4, v5, v6);
  if ((v23 & 0x10) != 0)
  {
    v8 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v8 = v19;
    }

    v9 = v18;
    v7 = v8 - v18;
    if (v8 - v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_26;
    }

    v9 = v16;
    v7 = v17 - v16;
    if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_30:
      sub_3244();
    }
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, v9, v7);
  }

LABEL_26:
  a2[v7] = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_70F94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_70FBC(void *a1, uint64_t a2)
{
  v9 = a2;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_4A5C(a1, "Invalid Length.", 15);
    return a1;
  }

  if ((a2 - 100000) > 0xFFFFFFFFFFFCF2C0)
  {
    if ((a2 - 100) > 0xFFFFFFFFFFFFFF38)
    {
      sub_70C28(0, &__p);
      if ((v8 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v8 & 0x80u) == 0)
      {
        v5 = v8;
      }

      else
      {
        v5 = v7;
      }
    }

    else
    {
      sub_70C28(1, &__p);
      if ((v8 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v8 & 0x80u) == 0)
      {
        v5 = v8;
      }

      else
      {
        v5 = v7;
      }
    }
  }

  else
  {
    sub_70C28(2, &__p);
    if ((v8 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v8 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v7;
    }
  }

  sub_4A5C(a1, p_p, v5);
  if ((v8 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p);
  return a1;
}

void sub_710F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_71118@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  sub_19594F8(&v13);
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_29;
      }

      v4 = std::ostream::operator<<();
      v5 = "_GiB";
    }

    else
    {
      v4 = std::ostream::operator<<();
      v5 = "_TiB";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v4 = std::ostream::operator<<();
        v5 = "_MiB";
        break;
      case 3:
        v4 = std::ostream::operator<<();
        v5 = "_KiB";
        break;
      case 4:
        v4 = std::ostream::operator<<();
        v5 = "_bytes";
        v6 = 6;
        goto LABEL_13;
      default:
LABEL_29:
        exception = __cxa_allocate_exception(0x40uLL);
        v12 = sub_2D390(exception, "Invalid unit", 0xCuLL);
    }
  }

  v6 = 4;
LABEL_13:
  sub_4A5C(v4, v5, v6);
  if ((v23 & 0x10) != 0)
  {
    v8 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v8 = v19;
    }

    v9 = v18;
    v7 = v8 - v18;
    if (v8 - v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_24;
    }

    v9 = v16;
    v7 = v17 - v16;
    if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, v9, v7);
  }

LABEL_24:
  a2[v7] = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_71450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_71478(void *a1, unint64_t a2)
{
  v9 = a2;
  if (a2 == -1)
  {
    sub_4A5C(a1, "Invalid MemorySize.", 19);
    return a1;
  }

  if (a2 >> 40)
  {
    sub_71118(0, &__p);
    if ((v8 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v8 & 0x80u) == 0)
    {
      v4 = v8;
    }

    else
    {
      v4 = v7;
    }
  }

  else if (a2 >> 30)
  {
    sub_71118(1, &__p);
    if ((v8 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v8 & 0x80u) == 0)
    {
      v4 = v8;
    }

    else
    {
      v4 = v7;
    }
  }

  else if (a2 < 0x100000)
  {
    if (a2 < 0x400)
    {
      sub_71118(4, &__p);
      if ((v8 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v8 & 0x80u) == 0)
      {
        v4 = v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      sub_71118(3, &__p);
      if ((v8 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v8 & 0x80u) == 0)
      {
        v4 = v8;
      }

      else
      {
        v4 = v7;
      }
    }
  }

  else
  {
    sub_71118(2, &__p);
    if ((v8 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v8 & 0x80u) == 0)
    {
      v4 = v8;
    }

    else
    {
      v4 = v7;
    }
  }

  sub_4A5C(a1, p_p, v4);
  if ((v8 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p);
  return a1;
}

void sub_715FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_71628@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  sub_719E8(v18, a1, 8);
  v16 = 0;
  v17 = 0;
  __p[0] = 0;
  __p[1] = 0;
  *(&v18[1] + *(v18[0] - 3)) &= ~0x1000u;
  std::istream::operator>>();
  if ((*(&v20[1].__locale_ + *(v18[0] - 3)) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54("", &v13, &v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v14;
    }

    else
    {
      v6 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  sub_58218(v18, __p);
  if ((*(&v20[1].__locale_ + *(v18[0] - 3)) & 5) != 0)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54("", &v13, &v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v14.__r_.__value_.__l.__size_;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  *a2 = v17;
  v3 = a2 + 1;
  if (SHIBYTE(v16) < 0)
  {
    sub_325C(v3, __p[0], __p[1]);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v3 = *__p;
    v3[2] = v16;
  }

  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_71930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(a15);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    std::ios::~ios();
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(__p);
  goto LABEL_5;
}

void sub_719D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    JUMPOUT(0x7195CLL);
  }

  JUMPOUT(0x71954);
}

void (__cdecl ***sub_719E8(void (__cdecl ***a1)(std::istringstream *__hidden this), __int128 *a2, int a3))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v7;
  *(*(v7 - 3) + a1) = v6;
  a1[1] = 0;
  v8 = (*(*a1 - 3) + a1);
  std::ios_base::init(v8, a1 + 2);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  sub_71C94((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_71B44(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_71B78(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t sub_71C94(uint64_t a1, __int128 *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  if ((a1 + 64) != a2)
  {
    if (*(a2 + 23) < 0)
    {
      sub_13A68((a1 + 64), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(a1 + 80) = *(a2 + 2);
      *(a1 + 64) = v6;
    }
  }

  sub_195CB10(a1);
  return a1;
}

void sub_71D64(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_71D8C@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  sub_19594F8(&v13);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v4 = std::ostream::operator<<();
        v5 = "_m";
        goto LABEL_14;
      case 4:
        v4 = std::ostream::operator<<();
        v5 = "_h";
        goto LABEL_14;
      case 5:
        v4 = std::ostream::operator<<();
        v5 = "_d";
        goto LABEL_14;
    }

LABEL_31:
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Invalid unit", 0xCuLL);
  }

  if (!a1)
  {
    v4 = std::ostream::operator<<();
    v5 = "_ms";
    v6 = 3;
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v4 = std::ostream::operator<<();
    v5 = "_ds";
    v6 = 3;
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    goto LABEL_31;
  }

  v4 = std::ostream::operator<<();
  v5 = "_s";
LABEL_14:
  v6 = 2;
LABEL_15:
  sub_4A5C(v4, v5, v6);
  if ((v23 & 0x10) != 0)
  {
    v8 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v8 = v19;
    }

    v9 = v18;
    v7 = v8 - v18;
    if (v8 - v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_26;
    }

    v9 = v16;
    v7 = v17 - v16;
    if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_30:
      sub_3244();
    }
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, v9, v7);
  }

LABEL_26:
  a2[v7] = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_72118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_72140(void *a1, int a2)
{
  v2 = a1;
  if (a2 == 0x7FFFFFFF)
  {
    v3 = "Invalid TimeSpan.";
    v4 = 17;
  }

  else
  {
    v5 = a2;
    if (a2 < 0)
    {
      v5 = -a2;
      sub_4A5C(a1, "- ", 2);
    }

    v6 = vcvtmd_s64_f64(v5 / 864000.0);
    if (v6 >= 1)
    {
      v5 -= 864000 * v6;
      v7 = std::ostream::operator<<();
      sub_4A5C(v7, "d ", 2);
    }

    v8 = v5;
    v9 = vcvtmd_s64_f64(v5 / 36000.0);
    if (v6 > 0 || v9 >= 1)
    {
      v11 = std::ostream::operator<<();
      sub_4A5C(v11, "h ", 2);
      v8 = (v5 - 36000 * v9);
    }

    v12 = vcvtmd_s64_f64(v8 / 600.0);
    if (v6 > 0 || v9 > 0 || v12 >= 1)
    {
      v15 = std::ostream::operator<<();
      sub_4A5C(v15, "m ", 2);
    }

    a1 = std::ostream::operator<<();
    v3 = "s";
    v4 = 1;
  }

  sub_4A5C(a1, v3, v4);
  return v2;
}

std::string *sub_7230C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (result <= 51)
  {
    if (result > 43)
    {
      if (result == 44)
      {
        *(a2 + 23) = 10;
        strcpy(a2, "DIRECTIONS");
        return result;
      }

      if (result == 48)
      {
        *(a2 + 23) = 10;
        strcpy(a2, "ETA_UPDATE");
        return result;
      }
    }

    else
    {
      if (!result)
      {
        *(a2 + 23) = 7;
        strcpy(a2, "UNKNOWN");
        return result;
      }

      if (result == 43)
      {
        *(a2 + 23) = 8;
        strcpy(a2, "GEOCODER");
        return result;
      }
    }
  }

  else if (result <= 61)
  {
    if (result == 52)
    {
      *(a2 + 23) = 3;
      *a2 = 4281413;
      return result;
    }

    if (result == 60)
    {
      *(a2 + 23) = 10;
      strcpy(a2, "PLACE_DATA");
      return result;
    }
  }

  else
  {
    switch(result)
    {
      case 0x3E:
        *(a2 + 23) = 14;
        strcpy(a2, "TRANSIT_REVGEO");
        return result;
      case 0x402:
        *(a2 + 23) = 20;
        strcpy(a2, "TRANSIT_ROUTE_UPDATE");
        return result;
      case 0x406:
        *(a2 + 23) = 7;
        strcpy(a2, "RIO_ETA");
        return result;
    }
  }

  return std::to_string(a2, result);
}

void sub_724C8(void *a1@<X8>)
{
  sub_72958(v20);
  v13 = a1;
  if (SHIBYTE(v21) < 0)
  {
    sub_325C(__p, v20[0], v20[1]);
  }

  else
  {
    *__p = *v20;
    v19 = v21;
  }

  v2 = 5;
  while (1)
  {
    sub_747CC(__p, v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    v19 = v17;
    *__p = *v16;
    if ((v17 & 0x8000000000000000) == 0)
    {
      v3 = HIBYTE(v17);
    }

    else
    {
      v3 = v16[1];
    }

    if (!v3)
    {
LABEL_38:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Project directory not found");
    }

    if (v3 + 19 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v3 + 19 > 0x16)
    {
      operator new();
    }

    v16[1] = 0;
    v17 = 0;
    v16[0] = 0;
    HIBYTE(v17) = v3 + 19;
    v4 = v19 >= 0 ? __p : __p[0];
    memmove(v16, v4, v3);
    strcpy(v16 + v3, "/etc/config/routing");
    if (sub_74788(v16))
    {
      v5 = 1;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v19 >= 0)
      {
        v6 = HIBYTE(v19);
      }

      else
      {
        v6 = __p[1];
      }

      if (v6 + 21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v6 + 21 >= 0x17)
      {
        operator new();
      }

      v14[1] = 0;
      v15 = 0;
      v14[0] = 0;
      HIBYTE(v15) = v6 + 21;
      if (v6)
      {
        if (v19 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        memmove(v14, v7, v6);
      }

      strcpy(v14 + v6, "/etc/config-generated");
      v5 = sub_74788(v14);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
        if ((SHIBYTE(v17) & 0x80000000) == 0)
        {
LABEL_33:
          if (v5)
          {
            break;
          }

          goto LABEL_37;
        }
      }

      else if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    operator delete(v16[0]);
    if (v5)
    {
      break;
    }

LABEL_37:
    if (!--v2)
    {
      goto LABEL_38;
    }
  }

  v9 = HIBYTE(v19);
  if (v19 >= 0)
  {
    v10 = HIBYTE(v19);
  }

  else
  {
    v10 = __p[1];
  }

  v11 = v10 + 1;
  if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  *(v13 + 23) = v11;
  if (v10)
  {
    if (v9 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    memmove(v13, v12, v10);
  }

  *(v13 + v10) = 47;
  if ((v9 & 0x80) == 0)
  {
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return;
    }

LABEL_54:
    operator delete(v20[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_54;
  }
}

void sub_72874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if ((a34 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_72958(_BYTE *a1@<X8>)
{
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize))
  {
    __dst = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_34;
  }

  v2 = strlen(buf);
  if (v2 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = v2;
  if (!v2)
  {
    LOBYTE(__dst) = 0;
    v4 = SHIBYTE(v17);
    if ((SHIBYTE(v17) & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  memcpy(&__dst, buf, v2);
  *(&__dst + v3) = 0;
  v4 = SHIBYTE(v17);
  if ((SHIBYTE(v17) & 0x8000000000000000) != 0)
  {
LABEL_10:
    v6 = v16;
    if (v16)
    {
      p_dst = __dst;
      goto LABEL_12;
    }

LABEL_34:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Exec path could not be found");
  }

LABEL_6:
  if (!v4)
  {
    goto LABEL_34;
  }

  p_dst = &__dst;
  v6 = v4;
LABEL_12:
  v7 = ~v6;
  v8 = p_dst + v6 - 1;
  do
  {
    if (v7 == -1)
    {
      goto LABEL_32;
    }

    v9 = *v8--;
    ++v7;
  }

  while (v9 != 47);
  if (!v7)
  {
LABEL_32:
    v13 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(v13, buf);
  }

  v10 = (v4 & 0x80000000) != 0;
  if ((v4 & 0x80000000) != 0)
  {
    v4 = v16;
  }

  if (v10)
  {
    v11 = __dst;
  }

  else
  {
    v11 = &__dst;
  }

  if (v4 >= -v7)
  {
    v12 = -v7;
  }

  else
  {
    v12 = v4;
  }

  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a1[23] = v12;
  if (!v4)
  {
    a1[v12] = 0;
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      return;
    }

LABEL_31:
    operator delete(__dst);
    return;
  }

  memmove(a1, v11, v12);
  a1[v12] = 0;
  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_31;
  }
}

void sub_72C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_72D24(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v3 = *(a1 + 104);
  v57 = *(a1 + 112);
  if (v3 != v57)
  {
    v4 = 0;
    while (1)
    {
      v6 = *(a1 + 200);
      v7 = *(a1 + 208);
      v8 = *(v3 + 23);
      if (v6 != v7)
      {
        if ((v8 & 0x80u) == 0)
        {
          v9 = *(v3 + 23);
        }

        else
        {
          v9 = v3[1];
        }

        if ((v8 & 0x80u) == 0)
        {
          v10 = v3;
        }

        else
        {
          v10 = *v3;
        }

        while (1)
        {
          v11 = *(v6 + 23);
          v12 = v11;
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(v6 + 8);
          }

          if (v11 == v9)
          {
            v13 = v12 >= 0 ? v6 : *v6;
            if (!memcmp(v13, v10, v9))
            {
              break;
            }
          }

          v6 += 24;
          if (v6 == v7)
          {
            v6 = v7;
            if ((v8 & 0x80) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_24;
          }
        }
      }

      if ((v8 & 0x80) != 0)
      {
LABEL_24:
        v15 = v3[1];
        if (v15)
        {
          sub_325C(&__p, *v3, v15);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_21:
        if (v8)
        {
          v14 = *v3;
          __p.__r_.__value_.__r.__words[2] = v3[2];
          *&__p.__r_.__value_.__l.__data_ = v14;
          goto LABEL_27;
        }
      }

      *(&__p.__r_.__value_.__s + 23) = 8;
      strcpy(&__p, "Instance");
LABEL_27:
      v16 = *(a1 + 313);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v18 = 3;
      if (!*(a1 + 313))
      {
        v18 = 0;
      }

      if (size + v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (size + v18 > 0x16)
      {
        operator new();
      }

      memset(&v63, 0, sizeof(v63));
      *(&v63.__r_.__value_.__s + 23) = size + v18;
      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(&v63, p_p, size);
      }

      v20 = &v63 + size;
      if (v16)
      {
        v20[2] = 70;
        *v20 = 17198;
        v21 = 3;
      }

      else
      {
        v21 = 0;
      }

      v20[v21] = 0;
      if (v6 == v7)
      {
        v22 = "";
      }

      else
      {
        v22 = ".filtered";
      }

      if (v6 == v7)
      {
        v23 = 0;
      }

      else
      {
        v23 = 9;
      }

      v24 = std::string::append(&v63, v22, v23);
      v25 = v24->__r_.__value_.__r.__words[0];
      *&v67 = v24->__r_.__value_.__l.__size_;
      *(&v67 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
      v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          v27 = v66;
          if (v4 >= v66)
          {
            goto LABEL_55;
          }

          goto LABEL_3;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v27 = v66;
      if (v4 >= v66)
      {
LABEL_55:
        v28 = v64;
        v29 = v4 - v64;
        v30 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v64) >> 3);
        v31 = v30 + 1;
        if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v32 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v64) >> 3);
        if (2 * v32 > v31)
        {
          v31 = 2 * v32;
        }

        if (v32 >= 0x555555555555555)
        {
          v33 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          if (v33 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v34 = 24 * v30;
        v35 = v67;
        *v34 = v25;
        *(v34 + 8) = v35;
        *(v34 + 15) = *(&v67 + 7);
        *(v34 + 23) = v26;
        v4 = 24 * v30 + 24;
        v36 = v34 - v29;
        memcpy((v34 - v29), v28, v29);
        v64 = v36;
        v66 = 0;
        if (v28)
        {
          operator delete(v28);
        }

        goto LABEL_4;
      }

LABEL_3:
      *v4 = v25;
      v5 = *(&v67 + 7);
      *(v4 + 8) = v67;
      *(v4 + 15) = v5;
      *(v4 + 23) = v26;
      v4 += 24;
LABEL_4:
      v65 = v4;
      v3 += 3;
      if (v3 == v57)
      {
        v37 = v64;
        goto LABEL_68;
      }
    }
  }

  v4 = 0;
  v37 = 0;
LABEL_68:
  sub_73B58(v37, v4, ",", &__p);
  v38 = *(a1 + 296);
  v39 = *(a1 + 288);
  if (v39 == v38)
  {
    v42 = 0;
    HIBYTE(v68) = 0;
    LOBYTE(v67) = 0;
  }

  else
  {
    sub_73B58(*(a1 + 288), *(a1 + 296), ",", &v61);
    v40 = std::string::insert(&v61, 0, "--", 2uLL);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v68 = v40->__r_.__value_.__r.__words[2];
    v67 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = HIBYTE(v68);
  }

  if ((v42 & 0x80u) == 0)
  {
    v43 = &v67;
  }

  else
  {
    v43 = v67;
  }

  if ((v42 & 0x80u) == 0)
  {
    v44 = v42;
  }

  else
  {
    v44 = *(&v67 + 1);
  }

  v45 = std::string::append(&__p, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v48 = *(a1 + 264);
  v47 = *(a1 + 272);
  if (v48 == v47)
  {
    v51 = 0;
    HIBYTE(v60) = 0;
    LOBYTE(v59[0]) = 0;
  }

  else
  {
    sub_73B58(v48, v47, ",", &v58);
    v49 = std::string::insert(&v58, 0, "--", 2uLL);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v60 = v49->__r_.__value_.__r.__words[2];
    *v59 = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    v51 = HIBYTE(v60);
  }

  if ((v51 & 0x80u) == 0)
  {
    v52 = v59;
  }

  else
  {
    v52 = v59[0];
  }

  if ((v51 & 0x80u) == 0)
  {
    v53 = v51;
  }

  else
  {
    v53 = v59[1];
  }

  v54 = std::string::append(&v63, v52, v53);
  *a2 = *v54;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
  }

  if (v48 != v47 && SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_91:
      if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
        goto LABEL_92;
      }

LABEL_96:
      operator delete(v67);
      if (v39 == v38)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }
  }

  else if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_91;
  }

  operator delete(v63.__r_.__value_.__l.__data_);
  if (SHIBYTE(v68) < 0)
  {
    goto LABEL_96;
  }

LABEL_92:
  if (v39 == v38)
  {
LABEL_98:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

LABEL_97:
  if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_98;
  }

  operator delete(v61.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_99:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_100:
  if (v37)
  {
    while (v4 != v37)
    {
      v55 = *(v4 - 1);
      v4 -= 24;
      if (v55 < 0)
      {
        operator delete(*v4);
      }
    }

    operator delete(v37);
  }
}

void sub_73350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void **a43)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
    if ((*(v45 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      if (v44 == v43)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ((*(v45 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v45 - 128));
  if (v44 == v43)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (a29 < 0)
  {
    operator delete(a24);
  }

LABEL_11:
  if (a35 < 0)
  {
    operator delete(a30);
  }

  sub_1A104(&a43);
  _Unwind_Resume(a1);
}

void sub_734A0(void *a1@<X0>, std::string *a2@<X8>)
{
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v4 = a1[19];
  v3 = a1[20];
  if (v4 != v3)
  {
    v5 = 0;
    while (1)
    {
      v7 = a1[25];
      v8 = a1[26];
      v9 = *(v4 + 23);
      if (v7 != v8)
      {
        if ((v9 & 0x80u) == 0)
        {
          v10 = *(v4 + 23);
        }

        else
        {
          v10 = v4[1];
        }

        if ((v9 & 0x80u) == 0)
        {
          v11 = v4;
        }

        else
        {
          v11 = *v4;
        }

        while (1)
        {
          v12 = *(v7 + 23);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v7 + 8);
          }

          if (v12 == v10)
          {
            v14 = v13 >= 0 ? v7 : *v7;
            if (!memcmp(v14, v11, v10))
            {
              break;
            }
          }

          v7 += 24;
          if (v7 == v8)
          {
            v7 = v8;
            if ((v9 & 0x80) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_24;
          }
        }
      }

      if ((v9 & 0x80) != 0)
      {
LABEL_24:
        v16 = v4[1];
        if (v16)
        {
          sub_325C(&__p, *v4, v16);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_21:
        if (v9)
        {
          v15 = *v4;
          __p.__r_.__value_.__r.__words[2] = v4[2];
          *&__p.__r_.__value_.__l.__data_ = v15;
          goto LABEL_27;
        }
      }

      *(&__p.__r_.__value_.__s + 23) = 8;
      strcpy(&__p, "Instance");
LABEL_27:
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v18 = 9;
      if (v7 == v8)
      {
        v18 = 0;
      }

      if (size + v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (size + v18 > 0x16)
      {
        operator new();
      }

      memset(&v55, 0, sizeof(v55));
      *(&v55.__r_.__value_.__s + 23) = size + v18;
      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(&v55, p_p, size);
      }

      v20 = &v55 + size;
      if (v7 == v8)
      {
        *v20 = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

LABEL_42:
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_43;
      }

      strcpy(v20, ".filtered");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_42;
      }

LABEL_43:
      if (v5 < v58)
      {
        v6 = *&v55.__r_.__value_.__l.__data_;
        *(v5 + 16) = *(&v55.__r_.__value_.__l + 2);
        *v5 = v6;
        v5 += 24;
      }

      else
      {
        v21 = v56;
        v22 = v5 - v56;
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v56) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        if (0x5555555555555556 * ((v58 - v56) >> 3) > v24)
        {
          v24 = 0x5555555555555556 * ((v58 - v56) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v58 - v56) >> 3) >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          if (v25 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v26 = (24 * v23);
        *v26 = v55;
        v5 = 24 * v23 + 24;
        v27 = v26 - v22;
        memcpy(v26 - v22, v21, v22);
        v56 = v27;
        v58 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      v57 = v5;
      v4 += 3;
      if (v4 == v3)
      {
        v28 = v56;
        goto LABEL_59;
      }
    }
  }

  v5 = 0;
  v28 = 0;
LABEL_59:
  sub_73B58(v28, v5, ",", &__p);
  v29 = a1[37];
  v30 = a1[36];
  if (v30 == v29)
  {
    v33 = 0;
    HIBYTE(v53) = 0;
    LOBYTE(v52[0]) = 0;
  }

  else
  {
    sub_73B58(a1[36], a1[37], ",", &v51);
    v31 = std::string::insert(&v51, 0, "--", 2uLL);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v53 = v31->__r_.__value_.__r.__words[2];
    *v52 = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = HIBYTE(v53);
  }

  if ((v33 & 0x80u) == 0)
  {
    v34 = v52;
  }

  else
  {
    v34 = v52[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v35 = v33;
  }

  else
  {
    v35 = v52[1];
  }

  v36 = std::string::append(&__p, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v39 = a1[33];
  v38 = a1[34];
  if (v39 == v38)
  {
    v42 = 0;
    HIBYTE(v50) = 0;
    LOBYTE(v49[0]) = 0;
  }

  else
  {
    sub_73B58(v39, v38, ",", &v48);
    v40 = std::string::insert(&v48, 0, "--", 2uLL);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v50 = v40->__r_.__value_.__r.__words[2];
    *v49 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = HIBYTE(v50);
  }

  if ((v42 & 0x80u) == 0)
  {
    v43 = v49;
  }

  else
  {
    v43 = v49[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v44 = v42;
  }

  else
  {
    v44 = v49[1];
  }

  v45 = std::string::append(&v55, v43, v44);
  *a2 = *v45;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
    if (v39 == v38)
    {
      goto LABEL_82;
    }
  }

  else if (v39 == v38)
  {
LABEL_82:
    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_87;
  }

  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_82;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_83:
    if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

LABEL_88:
    operator delete(v52[0]);
    if (v30 == v29)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_87:
  operator delete(v55.__r_.__value_.__l.__data_);
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_88;
  }

LABEL_84:
  if (v30 == v29)
  {
LABEL_90:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_89:
  if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_90;
  }

  operator delete(v51.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_91:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_92:
  if (v28)
  {
    while (v5 != v28)
    {
      v46 = *(v5 - 1);
      v5 -= 24;
      if (v46 < 0)
      {
        operator delete(*v5);
      }
    }

    operator delete(v28);
  }
}

void sub_73A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_5:
    if (v48 == v47)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  operator delete(a28);
  if (v48 == v47)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (a27 < 0)
  {
    operator delete(a22);
  }

LABEL_11:
  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_1A104((v49 - 120));
  _Unwind_Resume(a1);
}

uint64_t sub_73B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v17);
  if (a1 != a2)
  {
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    while (1)
    {
      sub_4A5C(&v17, v10, v11);
      a1 += 24;
      if (a1 == a2)
      {
        break;
      }

      v12 = strlen(a3);
      sub_4A5C(&v17, a3, v12);
      v13 = *(a1 + 23);
      if (v13 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v13 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }
    }
  }

  if ((v27 & 0x10) != 0)
  {
    v14 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v14 = v23;
    }

    v15 = v22;
    v8 = v14 - v22;
    if (v14 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v8 = 0;
      a4[23] = 0;
      goto LABEL_26;
    }

    v15 = v20;
    v8 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_30:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    memmove(a4, v15, v8);
  }

LABEL_26:
  a4[v8] = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_73DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_73DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_73E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

uint64_t sub_73E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 + 32);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v2 += v3[1] - v3[2];
  }

  while (v3 != *(v1 + 40));
  v4 = *(v1 + 56);
  if (!v4)
  {
    return v2;
  }

  v5 = 0;
  do
  {
    v5 += v4[2];
    v4 = *v4;
  }

  while (v4);
  return v5 + v2;
}

uint64_t sub_73E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[2];
  v3 = v1[6];
  v4 = v1[7];
  if (!v4)
  {
    return v2 * v3;
  }

  v5 = 0;
  do
  {
    v5 += v4[2];
    v4 = *v4;
  }

  while (v4);
  return v5 + v2 * v3;
}

void sub_73F24(uint64_t a1, const void ***a2)
{
  v2 = (a1 + 344);
  if (v2 != a2)
  {
    sub_74300(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }
}

uint64_t sub_73F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v17);
  if (a1 != a2)
  {
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    while (1)
    {
      sub_4A5C(&v17, v10, v11);
      a1 += 24;
      if (a1 == a2)
      {
        break;
      }

      v12 = strlen(a3);
      sub_4A5C(&v17, a3, v12);
      v13 = *(a1 + 23);
      if (v13 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v13 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }
    }
  }

  if ((v27 & 0x10) != 0)
  {
    v14 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v14 = v23;
    }

    v15 = v22;
    v8 = v14 - v22;
    if (v14 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v8 = 0;
      a4[23] = 0;
      goto LABEL_26;
    }

    v15 = v20;
    v8 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_30:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    memmove(a4, v15, v8);
  }

LABEL_26:
  a4[v8] = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_741E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_741F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_74208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_7425C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 440);
  *(a1 + 432) = v3;
  *(a1 + 440) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_74300(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
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

    sub_1794();
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

            sub_13B38(v8, v20, v21);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
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

            sub_13B38(v8, v16, v17);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
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
        while ((v15[23] & 0x80000000) == 0)
        {
          v28 = *v15;
          v27[2] = *(v15 + 2);
          *v27 = v28;
          v27 += 3;
          v15 += 24;
          v30 = v27;
          if (v15 == a3)
          {
            goto LABEL_55;
          }
        }

        sub_325C(v27, *v15, *(v15 + 1));
        v15 += 24;
        v27 = v30 + 3;
        v30 += 3;
      }

      while (v15 != a3);
    }

LABEL_55:
    a1[1] = v27;
  }
}

void sub_74670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_746A0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_74688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_746A0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_746A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void *sub_74700()
{
  if ((atomic_load_explicit(&qword_278EC98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EC98))
  {
    sub_72C68();
  }

  return &unk_278ECA0;
}

uint64_t sub_74788(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v2))
  {
    return 0;
  }

  else
  {
    return (v2.st_mode >> 14) & 1;
  }
}

void *sub_747CC@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 23);
  if (v2 >= 0)
  {
    v3 = result;
  }

  else
  {
    v3 = *result;
  }

  if (v2 >= 0)
  {
    v4 = *(result + 23);
  }

  else
  {
    v4 = result[1];
  }

  if (v4)
  {
    v5 = v4;
    while (v5)
    {
      v6 = *(v3 + --v5);
      if (v6 == 47)
      {
        if (v5 == -1)
        {
          break;
        }

        if (v4 >= v5)
        {
          v7 = v5;
        }

        else
        {
          v7 = v4;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v7 >= 0x17)
        {
          operator new();
        }

        a2[23] = v7;
        if (v5)
        {
          v8 = v3;
          v9 = a2;
          result = memmove(a2, v8, v7);
          a2 = v9;
        }

        a2[v7] = 0;
        return result;
      }
    }
  }

  a2[23] = 0;
  *a2 = 0;
  return result;
}

BOOL sub_748D0(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return !stat(a1, &v3) && (v3.st_mode & 0x8000u) != 0;
}

uint64_t sub_74918(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  *v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *__p = 0u;
  memset(v20, 0, sizeof(v20));
  v7 = sub_1FA94(a2, v5, v5 + v6, __p, a3 | 0x1040u);
  sub_1FDA0(v9, v5, v5 + v6, __p, (v3 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7 && (v16 & 1) != 0)
  {
    v7 = 0;
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v7;
}

void sub_74A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    v25 = a9;
    if (!a9)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v25 = a9;
    if (!a9)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  _Unwind_Resume(exception_object);
}

uint64_t sub_74A54@<X0>(uint64_t a1@<X8>)
{
  *__error() = 0;
  sub_6C8C8(v17);
  if ((*(&v17[4] + *(v17[0] - 3)) & 5) != 0)
  {
    v2 = *__error();
    v3 = std::generic_category();
    *a1 = 0;
    *(a1 + 8) = v2;
    *(a1 + 16) = v3;
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
    std::istream::tellg();
    if (__n)
    {
      std::string::append(&v7, __n, 0);
    }

    else
    {
      *(&v7.__r_.__value_.__s + 23) = 0;
      v7.__r_.__value_.__s.__data_[0] = 0;
    }

    __n = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    std::istream::seekg();
    std::istream::read();
    if ((*(&v17[4] + *(v17[0] - 3)) & 5) != 0)
    {
      v5 = *__error();
      v6 = std::generic_category();
      *a1 = 0;
      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a1 = 1;
      *(a1 + 8) = v7;
    }
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_74CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D95C28(&a33);
  _Unwind_Resume(a1);
}

void sub_74CEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_74DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_74F48(&a11);
  *(v11 + 8) = v12;
  sub_7507C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_74E14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    sub_325C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    sub_325C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    sub_325C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  return a1;
}

void sub_74ED8(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
    if ((*(v1 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1F1A8(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 16));
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_74F48(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 96;
        sub_74FB0(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_74FB0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a2 + 16));
      v3 = *(a2 + 8);
      if (!v3)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a2 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 40));
  if (*(a2 + 39) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(a2 + 8);
  if (!v3)
  {
    return;
  }

LABEL_9:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_7507C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 == v2)
  {
    goto LABEL_16;
  }

  do
  {
    if (*(v4 - 9) < 0)
    {
      operator delete(*(v4 - 4));
      if ((*(v4 - 33) & 0x80000000) == 0)
      {
LABEL_7:
        if ((*(v4 - 57) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    else if ((*(v4 - 33) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(*(v4 - 7));
    if ((*(v4 - 57) & 0x80000000) == 0)
    {
LABEL_8:
      v6 = *(v4 - 11);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

LABEL_12:
    operator delete(*(v4 - 10));
    v6 = *(v4 - 11);
    if (!v6)
    {
      goto LABEL_4;
    }

LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v4 -= 12;
  }

  while (v4 != v2);
  v5 = **a1;
LABEL_16:
  v1[1] = v2;

  operator delete(v5);
}

void **sub_751A0(void **a1)
{
  v3 = a1 + 4;
  sub_7507C(&v3);
  v3 = a1;
  sub_7507C(&v3);
  return a1;
}

void sub_751E8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v5, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  sub_752C0();
}

void sub_75290(_Unwind_Exception *a1)
{
  sub_1F1A8(&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

void sub_7552C(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_75590(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = a2;
  while (1)
  {
    v7 = v6;
    v6 = sub_7600C(a1, v6, a3);
    if (v7 == v6)
    {
      break;
    }

LABEL_2:
    if (v6 == v7)
    {
      goto LABEL_6;
    }
  }

  v8 = sub_76384(a1, v7, a3);
  if (v7 != v8)
  {
    v6 = sub_76648(a1, v8, a3);
    goto LABEL_2;
  }

LABEL_6:
  if (v7 == a2)
  {
    operator new();
  }

  if (v7 != a3)
  {
    if (*v7 == 124)
    {
      v9 = v7 + 1;
      v10 = v7 + 1;
      while (1)
      {
        v11 = v10;
        v10 = sub_7600C(a1, v10, a3);
        if (v11 == v10)
        {
          v12 = sub_76384(a1, v11, a3);
          if (v11 == v12)
          {
LABEL_10:
            if (v11 != v9)
            {
              operator new();
            }

            operator new();
          }

          v10 = sub_76648(a1, v12, a3);
        }

        if (v10 == v11)
        {
          goto LABEL_10;
        }
      }
    }

    return v7;
  }

  return a3;
}

unsigned __int8 *sub_7584C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      operator new();
    }

    if (a2 != a3)
    {
      do
      {
        if (result == a3)
        {
          v6 = a3;
          goto LABEL_13;
        }

        v6 = result;
        v7 = sub_789A4(a1, result, a3);
        if (v6 == v7)
        {
          break;
        }

        result = sub_78BEC(a1, v7, a3);
      }

      while (v6 != result);
      if (v6 + 1 == a3 && *v6 == 36)
      {
        operator new();
      }

LABEL_13:
      if (v6 != a3)
      {
        sub_1E550();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *sub_75A08(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a3;
  v6 = sub_79010(a1, a2, a3);
  if (v6 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v7 = v6;
    v6 = sub_79010(a1, v6, v3);
  }

  while (v7 != v6);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  if (v7 != v3)
  {
    if (*v7 == 124)
    {
      v8 = v7 + 1;
      v9 = sub_79010(a1, v7 + 1, v3);
      if (v7 + 1 != v9)
      {
        do
        {
          v10 = v9;
          v9 = sub_79010(a1, v9, v3);
        }

        while (v10 != v9);
        if (v10 != v8)
        {
          operator new();
        }
      }

LABEL_12:
      sub_1E550();
    }

    return v7;
  }

  return v3;
}

unsigned __int8 *sub_75BBC(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = memchr(__s, 10, a3 - __s);
  v7 = __s;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == v7)
  {
    operator new();
  }

  sub_7584C(a1, v7, v8);
  if (v8 == a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  if (v9 != a3)
  {
    v10 = memchr(v9, 10, a3 - v9);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = a3;
    }

    if (v11 != v9)
    {
      sub_7584C(a1, v9, v11);
      operator new();
    }

    operator new();
  }

  return a3;
}

unsigned __int8 *sub_75DE4(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = memchr(__s, 10, a3 - __s);
  v7 = __s;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == v7)
  {
    operator new();
  }

  sub_75A08(a1, v7, v8);
  if (v8 == a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  if (v9 != a3)
  {
    v10 = memchr(v9, 10, a3 - v9);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = a3;
    }

    if (v11 != v9)
    {
      sub_75A08(a1, v9, v11);
      operator new();
    }

    operator new();
  }

  return a3;
}

unsigned __int8 *sub_7600C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 > 0x5B)
    {
      if (v3 == 92)
      {
        if (a2 + 1 != a3)
        {
          v9 = a2[1];
          if (v9 == 66)
          {
            sub_769C4();
          }

          if (v9 == 98)
          {
            operator new();
          }
        }
      }

      else if (v3 == 94)
      {
        operator new();
      }
    }

    else
    {
      if (v3 == 36)
      {
        operator new();
      }

      if (v3 == 40)
      {
        v4 = a2 + 1;
        if (a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
        {
          v5 = a2[2];
          if (v5 == 33)
          {
            sub_16994(v12);
            v13 = *(a1 + 24);
            sub_752C0(v12, v4 + 2, a3);
            sub_16A04();
          }

          if (v5 == 61)
          {
            sub_16994(v12);
            v13 = *(a1 + 24);
            sub_752C0(v12, v4 + 2, a3);
            sub_16A04();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_76384(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x3E)
  {
    if (*a2 > 0x5Bu)
    {
      if (v3 == 92)
      {
        return sub_76A50(a1, a2, a3);
      }

      if (v3 != 123)
      {
        return sub_1859C(a1, a2, a3);
      }

      goto LABEL_31;
    }

    if (v3 != 91)
    {
      if (v3 != 63)
      {
        return sub_1859C(a1, a2, a3);
      }

LABEL_31:
      sub_18544();
    }

    return sub_76BA0(a1, a2, a3);
  }

  if (v3 != 40)
  {
    if (v3 == 46)
    {
      operator new();
    }

    if (v3 - 42 >= 2)
    {
      return sub_1859C(a1, a2, a3);
    }

    goto LABEL_31;
  }

  if (a2 + 1 == a3)
  {
LABEL_32:
    sub_16ACC();
  }

  if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
  {
    ++*(a1 + 36);
    v7 = sub_75590();
    if (v7 != a3 && *v7 == 41)
    {
      --*(a1 + 36);
      return v7 + 1;
    }

    goto LABEL_32;
  }

  if ((*(a1 + 24) & 2) == 0)
  {
    operator new();
  }

  ++*(a1 + 36);
  v9 = sub_75590();
  if (v9 == a3 || *v9 != 41)
  {
    goto LABEL_32;
  }

  if ((*(a1 + 24) & 2) == 0)
  {
    operator new();
  }

  --*(a1 + 36);
  return v9 + 1;
}

unsigned __int8 *sub_76648(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 <= 0x3E)
  {
    if (v4 == 42 || (v3 = a2, v4 == 43))
    {
LABEL_39:
      sub_1DB50();
    }

    return v3;
  }

  if (v4 == 63)
  {
    goto LABEL_39;
  }

  v3 = a2;
  if (v4 == 123)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      goto LABEL_41;
    }

    v6 = *v5;
    if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
    {
      goto LABEL_41;
    }

    v7 = v6 - 48;
    v8 = a2 + 2;
    if (a2 + 2 == a3)
    {
LABEL_16:
      v8 = a3;
    }

    else
    {
      while (1)
      {
        v9 = *v8;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          break;
        }

        if (v7 >= 214748364)
        {
          goto LABEL_41;
        }

        v7 = v9 + 10 * v7 - 48;
        if (++v8 == a3)
        {
          goto LABEL_16;
        }
      }
    }

    if (v8 == v5)
    {
      goto LABEL_41;
    }

    if (v8 != a3)
    {
      v10 = *v8;
      if (v10 != 44)
      {
        if (v10 == 125)
        {
          goto LABEL_39;
        }

LABEL_41:
        sub_1DCE0();
      }

      v11 = v8 + 1;
      if (v8 + 1 == a3)
      {
        goto LABEL_41;
      }

      v12 = *v11;
      if (v12 == 125)
      {
        goto LABEL_39;
      }

      if (v11 != a3 && ((v12 & 0xF8) == 0x30 || (v12 & 0xFE) == 0x38))
      {
        v13 = v12 - 48;
        v14 = v8 + 2;
        if (v14 == a3)
        {
LABEL_34:
          v14 = a3;
        }

        else
        {
          while (1)
          {
            v15 = *v14;
            if ((v15 & 0xF8) != 0x30 && (v15 & 0xFE) != 0x38)
            {
              break;
            }

            if (v13 >= 214748364)
            {
              goto LABEL_41;
            }

            v13 = v15 + 10 * v13 - 48;
            if (++v14 == a3)
            {
              goto LABEL_34;
            }
          }
        }

        if (v14 != v11 && v14 != a3 && *v14 == 125)
        {
          if (v13 >= v7)
          {
            goto LABEL_39;
          }

          goto LABEL_41;
        }
      }
    }

    sub_1DD38();
  }

  return v3;
}

unsigned __int8 *sub_76A50(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v4 = a2 + 1;
    if (a3 == a2 + 1)
    {
      sub_18720();
    }

    v5 = *v4;
    v6 = v5 - 48;
    if (v5 == 48)
    {
      sub_18EEC(a1);
    }

    v7 = v3;
    if ((v5 - 49) <= 8)
    {
      v8 = v3 + 2;
      if (v4 + 1 == a3)
      {
        goto LABEL_13;
      }

      do
      {
        v9 = *v8;
        if ((v9 - 48) > 9)
        {
          break;
        }

        if (v6 >= 0x19999999)
        {
          goto LABEL_20;
        }

        ++v8;
        v6 = v9 + 10 * v6 - 48;
      }

      while (v8 != a3);
      if (v6)
      {
LABEL_13:
        if (v6 <= *(a1 + 28))
        {
          sub_19108(a1);
        }
      }

LABEL_20:
      sub_190B0();
    }

    v12 = sub_76D14(a1, v4, a3);
    v13 = a3;
    v3 = v12;
    if (v12 == v4)
    {
      v14 = sub_76F94(a1, v4, v13, 0);
      if (v14 == v4)
      {
        return v7;
      }

      else
      {
        return v14;
      }
    }
  }

  return v3;
}

_BYTE *sub_76BA0(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      operator new();
    }

    sub_1B2D8();
  }

  return a2;
}

unsigned __int8 *sub_76D14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 > 0x63)
    {
      switch(v3)
      {
        case 'w':
          operator new();
        case 's':
          operator new();
        case 'd':
          operator new();
      }
    }

    else
    {
      switch(v3)
      {
        case 'D':
          operator new();
        case 'S':
          operator new();
        case 'W':
          operator new();
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_76F94(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v4 == 114)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 13;
          return a2 + 1;
        }

        goto LABEL_81;
      }

      if (v4 == 116)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 9;
          return a2 + 1;
        }

        goto LABEL_81;
      }
    }

    else
    {
      switch(v4)
      {
        case 'u':
          if (a2 + 1 == a3)
          {
            goto LABEL_97;
          }

          v8 = a2[1];
          if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
          {
            goto LABEL_97;
          }

          a2 += 2;
          if (a2 == a3)
          {
            goto LABEL_97;
          }

          v9 = *a2;
          v10 = -48;
          if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
          {
            v9 |= 0x20u;
            if ((v9 - 97) >= 6)
            {
              goto LABEL_97;
            }

            v10 = -87;
          }

          v5 = 16 * (v10 + v9);
LABEL_48:
          if (a2 + 1 == a3)
          {
            goto LABEL_97;
          }

          v11 = a2[1];
          v12 = -48;
          if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
          {
            v11 |= 0x20u;
            if ((v11 - 97) >= 6)
            {
              goto LABEL_97;
            }

            v12 = -87;
          }

          if (a2 + 2 != a3)
          {
            v13 = a2[2];
            v14 = -48;
            if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
            {
              goto LABEL_58;
            }

            v13 |= 0x20u;
            if ((v13 - 97) < 6)
            {
              v14 = -87;
LABEL_58:
              v15 = v14 + v13 + 16 * (v12 + v5 + v11);
              if (!a4)
              {
                sub_18EEC(a1);
              }

              if (*(a4 + 23) < 0)
              {
                a4[1] = 1;
                a4 = *a4;
              }

              else
              {
                *(a4 + 23) = 1;
              }

              *a4 = v15;
              *(a4 + 1) = 0;
              return a2 + 3;
            }
          }

LABEL_97:
          sub_18720();
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 11;
            return a2 + 1;
          }

          goto LABEL_81;
        case 'x':
          v5 = 0;
          goto LABEL_48;
      }
    }

    goto LABEL_76;
  }

  if (*a2 > 0x65u)
  {
    if (v4 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      goto LABEL_81;
    }

    if (v4 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }

      goto LABEL_81;
    }

LABEL_76:
    if ((v4 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
    {
      goto LABEL_97;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

LABEL_81:
    sub_18EEC(a1);
  }

  if (v4 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    goto LABEL_81;
  }

  if (v4 != 99)
  {
    if (v4 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_76;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  if (a2[1] < 65)
  {
    goto LABEL_97;
  }

  v6 = a2[1];
  if (v6 >= 0x5B && (v6 - 97) > 0x19u)
  {
    goto LABEL_97;
  }

  if (!a4)
  {
    sub_18EEC(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6 & 0x1F;
  *(a4 + 1) = 0;
  return a2 + 2;
}

void sub_77490(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v31 = 0uLL;
  v32 = 0;
  if (a2 + 1 == a3 || v5 != 91)
  {
    goto LABEL_14;
  }

  v9 = a2[1];
  if (v9 == 46)
  {
    v10 = a1;
    v11 = a3;
    v4 = sub_77DD8(a1, a2 + 2, a3, &v31);
    v7 = HIBYTE(v32);
    v8 = *(&v31 + 1);
    a3 = v11;
    a1 = v10;
    goto LABEL_14;
  }

  if (v9 != 58)
  {
    if (v9 == 61)
    {
      sub_77A04(a1, a2 + 2, a3, a4);
      goto LABEL_10;
    }

    v8 = 0;
    v7 = 0;
LABEL_14:
    v12 = *(a1 + 24) & 0x1F0;
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    if (v8)
    {
      if (v4 == a3)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
      {
        v13 = *v4;
        if (v13 == 92)
        {
          v14 = a1;
          v15 = a3;
          if (v12)
          {
            v16 = sub_780A0(a1, v4 + 1, a3, &v31);
          }

          else
          {
            v16 = sub_77EBC(a1, v4 + 1, a3, &v31, a4);
          }

          v4 = v16;
          a3 = v15;
          a1 = v14;
          if (v4 == v15)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v13) = *v4;
      }

      if ((v7 & 0x80) != 0)
      {
        v17 = v31;
        *(&v31 + 1) = 1;
        *v31 = v13;
        *(v17 + 1) = 0;
        if (++v4 == a3)
        {
          goto LABEL_32;
        }
      }

      else
      {
        HIBYTE(v32) = 1;
        LOWORD(v31) = v13;
        if (++v4 == a3)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_31:
    v18 = *v4;
    if (v18 == 93)
    {
LABEL_32:
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_68;
        }

        v19 = &v31;
        if (HIBYTE(v32) != 1)
        {
          v20 = v31;
          v21 = BYTE1(v31);
          if (*(a4 + 169) == 1)
          {
LABEL_36:
            v22 = (*(**(a4 + 24) + 40))(*(a4 + 24), v20, a3);
            LOWORD(v29[0]) = v22 | ((*(**(a4 + 24) + 40))(*(a4 + 24), v21) << 8);
            sub_1D7D0(a4 + 112, v29);
            goto LABEL_68;
          }

          goto LABEL_47;
        }

        goto LABEL_51;
      }

      if (!*(&v31 + 1))
      {
        goto LABEL_68;
      }

      if (*(&v31 + 1) != 1)
      {
        v20 = *v31;
        v21 = *(v31 + 1);
        if (*(a4 + 169) == 1)
        {
          goto LABEL_36;
        }

LABEL_47:
        LOWORD(v29[0]) = v20 | (v21 << 8);
        sub_1D7D0(a4 + 112, v29);
        goto LABEL_68;
      }

      goto LABEL_50;
    }

    v23 = v4 + 1;
    if (v4 + 1 == a3 || v18 != 45 || *v23 == 93)
    {
      if (SHIBYTE(v32) < 0)
      {
        if (!*(&v31 + 1))
        {
          goto LABEL_68;
        }

        if (*(&v31 + 1) == 1)
        {
LABEL_50:
          v19 = v31;
LABEL_51:
          sub_19CE8(a4, *v19);
          goto LABEL_68;
        }

        v19 = v31;
      }

      else
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_68;
        }

        v19 = &v31;
        if (HIBYTE(v32) == 1)
        {
          goto LABEL_51;
        }
      }

      sub_1C90C(a4, *v19, v19[1]);
LABEL_68:
      if (SHIBYTE(v32) < 0)
      {
        goto LABEL_11;
      }

      return;
    }

    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    v24 = v4 + 2;
    if (v23 + 1 != a3 && *v23 == 91 && *v24 == 46)
    {
      sub_77DD8(a1, v23 + 2, a3, v29);
      goto LABEL_65;
    }

    if ((v12 | 0x40) == 0x40)
    {
      LODWORD(v23) = *v23;
      if (v23 == 92)
      {
        if (v12)
        {
          sub_780A0(a1, v24, a3, v29);
        }

        else
        {
          sub_77EBC(a1, v24, a3, v29, a4);
        }

LABEL_65:
        *v27 = v31;
        v28 = v32;
        v32 = 0;
        v31 = 0uLL;
        *__p = *v29;
        v26 = v30;
        v29[0] = 0;
        v29[1] = 0;
        v30 = 0;
        sub_1C470(a4, v27, __p);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v28) & 0x80000000) == 0)
          {
LABEL_67:
            if ((SHIBYTE(v30) & 0x80000000) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_72;
          }
        }

        else if ((SHIBYTE(v28) & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        operator delete(v27[0]);
        if ((SHIBYTE(v30) & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

LABEL_72:
        operator delete(v29[0]);
        if (SHIBYTE(v32) < 0)
        {
          goto LABEL_11;
        }

        return;
      }
    }

    else
    {
      LOBYTE(v23) = *v23;
    }

    HIBYTE(v30) = 1;
    LOWORD(v29[0]) = v23;
    goto LABEL_65;
  }

  sub_77D28(a1, a2 + 2, a3, a4);
LABEL_10:
  if (SHIBYTE(v32) < 0)
  {
LABEL_11:
    operator delete(v31);
  }
}

void sub_77948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if (*(v28 - 49) < 0)
    {
LABEL_5:
      operator delete(*(v28 - 72));
      _Unwind_Resume(a1);
    }
  }

  else if (*(v28 - 49) < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_77A04(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_42;
  }

  v6 = a2 + 1;
  v7 = a2;
  if (*a2 != 61)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v6 != 93)
  {
LABEL_5:
    while (v6 != a3 - 1)
    {
      ++v7;
      if (*v6++ == 61)
      {
        goto LABEL_4;
      }
    }

LABEL_42:
    sub_1B2D8();
  }

  if (a3 == v7)
  {
    goto LABEL_42;
  }

  sub_7856C(a1, a2, v7, &v22);
  v8 = v24;
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v9 = &v22;
      goto LABEL_14;
    }

LABEL_43:
    sub_1CA14();
  }

  v8 = v23;
  if (!v23)
  {
    goto LABEL_43;
  }

  v9 = v22;
LABEL_14:
  sub_1CD28(a1, v9, &v9[v8], __p);
  v10 = HIBYTE(v21);
  if (v21 < 0)
  {
    v10 = __p[1];
  }

  if (v10)
  {
    v11 = *(a4 + 144);
    if (v11 >= *(a4 + 152))
    {
      *(a4 + 144) = sub_1CEE8(a4 + 136, __p);
      if (SHIBYTE(v21) < 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (SHIBYTE(v21) < 0)
      {
        sub_325C(*(a4 + 144), __p[0], __p[1]);
      }

      else
      {
        v12 = *__p;
        *(v11 + 16) = v21;
        *v11 = v12;
      }

      *(a4 + 144) = v11 + 24;
      *(a4 + 144) = v11 + 24;
      if (SHIBYTE(v21) < 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v13 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v13 = v23;
    }

    if (v13 == 2)
    {
      v16 = v22;
      if ((v24 & 0x80u) == 0)
      {
        v16 = &v22;
      }

      v17 = *v16;
      v18 = v16[1];
      if (*(a4 + 169) == 1)
      {
        v19 = (*(**(a4 + 24) + 40))(*(a4 + 24), v17);
        v25 = v19 | ((*(**(a4 + 24) + 40))(*(a4 + 24), v18) << 8);
      }

      else
      {
        v25 = v17 | (v18 << 8);
      }

      sub_1D7D0(a4 + 112, &v25);
    }

    else
    {
      if (v13 != 1)
      {
        sub_1CA14();
      }

      v14 = &v22;
      if ((v24 & 0x80u) != 0)
      {
        v14 = v22;
      }

      sub_19CE8(a4, *v14);
    }

    if (SHIBYTE(v21) < 0)
    {
LABEL_39:
      operator delete(__p[0]);
      if (v24 < 0)
      {
        goto LABEL_40;
      }

      return v7 + 2;
    }
  }

  if ((v24 & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_40:
  operator delete(v22);
  return v7 + 2;
}

void sub_77CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 144) = v22;
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_77D28(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_11;
  }

  v5 = a2 + 1;
  v6 = a2;
  if (*a2 != 58)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 58)
      {
        goto LABEL_4;
      }
    }

LABEL_11:
    sub_1B2D8();
  }

  if (a3 == v6)
  {
    goto LABEL_11;
  }

  v7 = sub_78828(a1, a2, v6, *(a1 + 24) & 1);
  if (!v7)
  {
    sub_1D0A4();
  }

  *(a4 + 160) |= v7;
  return v6 + 2;
}

_BYTE *sub_77DD8(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_15;
  }

  v5 = a2 + 1;
  v6 = a2;
  if (*a2 != 46)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 46)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    sub_1B2D8();
  }

  if (a3 == v6)
  {
    goto LABEL_15;
  }

  sub_7856C(a1, a2, v6, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  v7 = v11;
  *(a4 + 16) = v11;
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 - 1 >= 2)
  {
    sub_1CA14();
  }

  return v6 + 2;
}

unsigned __int8 *sub_77EBC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_18720();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        sub_19CE8(a5, 95);
        return a2 + 1;
      }

      return sub_76F94(a1, a2, a3, a4);
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      return sub_76F94(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        sub_1D278(a5, 95);
        return a2 + 1;
      }

      return sub_76F94(a1, a2, a3, a4);
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

      return sub_76F94(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *sub_780A0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_82;
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          sub_18EEC(a1);
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      else
      {
        if (v4 != 110)
        {
          goto LABEL_48;
        }

        if (!a4)
        {
          sub_18EEC(a1);
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case 'r':
          if (!a4)
          {
            sub_18EEC(a1);
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 13;
          return a2 + 1;
        case 't':
          if (!a4)
          {
            sub_18EEC(a1);
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 9;
          return a2 + 1;
        case 'v':
          if (!a4)
          {
            sub_18EEC(a1);
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 11;
          return a2 + 1;
        default:
          goto LABEL_48;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v4 != 34 && v4 != 47)
    {
      goto LABEL_48;
    }

    goto LABEL_21;
  }

  if (v4 == 92)
  {
LABEL_21:
    if (!a4)
    {
      sub_18EEC(a1);
    }

    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v5;
    *(a4 + 1) = 0;
    return a2 + 1;
  }

  if (v4 != 97)
  {
    if (v4 == 98)
    {
      if (!a4)
      {
        sub_18EEC(a1);
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 8;
      return a2 + 1;
    }

LABEL_48:
    if ((v4 & 0xFFFFFFF8) == 0x30)
    {
      v7 = v4 - 48;
      if (a2 + 1 == a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = a2 + 1;
        v9 = a2[1];
        if ((v9 & 0xF8) == 0x30)
        {
          v7 = v9 + 8 * v7 - 48;
          if (a2 + 2 == a3)
          {
            v8 = a3;
            if (!a4)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v10 = a2[2];
            v11 = v10 & 0xF8;
            v12 = v10 + 8 * v7 - 48;
            if (v11 == 48)
            {
              v8 = a2 + 3;
            }

            else
            {
              v8 = a2 + 2;
            }

            if (v11 == 48)
            {
              v7 = v12;
            }

            if (!a4)
            {
LABEL_81:
              sub_18EEC(a1);
            }
          }

LABEL_69:
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          result = v8;
          *a4 = v7;
          *(a4 + 1) = 0;
          return result;
        }
      }

      if (!a4)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_82:
    sub_18720();
  }

  if (!a4)
  {
    sub_18EEC(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 7;
  return a2 + 1;
}

void sub_7856C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  HIBYTE(v16) = a3 - a2;
  if (a3 != a2)
  {
    memmove(&__dst, a2, v5);
  }

  *(&__dst + v5) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (SHIBYTE(v16) < 0)
  {
    if (!*(&__dst + 1))
    {
      goto LABEL_15;
    }

    p_dst = __dst;
  }

  else
  {
    if (!HIBYTE(v16))
    {
      return;
    }

    p_dst = &__dst;
  }

  std::__get_collation_name(&v14, p_dst);
  *a4 = *&v14.__r_.__value_.__l.__data_;
  v8 = v14.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v14.__r_.__value_.__l + 2);
  v9 = HIBYTE(v8);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(v16) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v16) >= 3)
    {
      return;
    }

    goto LABEL_22;
  }

  if (*(&__dst + 1) < 3uLL)
  {
LABEL_22:
    (*(**(a1 + 16) + 32))(&v14);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v14;
    if (*(a4 + 23) < 0)
    {
      v11 = *(a4 + 8);
      if (v11 == 1 || v11 == 12)
      {
        if (&__dst != a4)
        {
          if (v16 >= 0)
          {
            v12 = &__dst;
          }

          else
          {
            v12 = __dst;
          }

          if (v16 >= 0)
          {
            v13 = HIBYTE(v16);
          }

          else
          {
            v13 = *(&__dst + 1);
          }

          sub_13B38(a4, v12, v13);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v10 = *(a4 + 23);
      if (v10 == 1 || v10 == 12)
      {
        if (&__dst != a4)
        {
          if (SHIBYTE(v16) < 0)
          {
            sub_13A68(a4, __dst, *(&__dst + 1));
          }

          else
          {
            *a4 = __dst;
            *(a4 + 16) = v16;
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }
  }

LABEL_15:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }
}

void sub_787E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_78828(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v4);
  }

  *(__dst + v4) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v8, v8 + v7);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  result = std::__get_classname(v9, a4);
  if (v13 < 0)
  {
    v11 = result;
    operator delete(__dst[0]);
    return v11;
  }

  return result;
}

void sub_78988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_789A4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = sub_78E64(a1, a2, a3);
  if (v6 != v4)
  {
    return v6;
  }

  if (v4 != a3 && v4 + 1 != a3 && *v6 == 92)
  {
    v7 = v4[1];
    if (v7 == 40)
    {
      v6 = v4 + 2;
    }

    if (v6 == v4)
    {
      if (((v7 & 0xF8) == 0x30 || (v7 & 0xFE) == 0x38) && (v7 - 49) <= 8)
      {
        if ((v7 - 48) <= *(a1 + 28))
        {
          sub_19108(a1);
        }

        sub_190B0();
      }

      return v4;
    }

    if ((*(a1 + 24) & 2) == 0)
    {
      operator new();
    }

    do
    {
      if (v6 == a3)
      {
        goto LABEL_30;
      }

      v9 = v6;
      v10 = sub_789A4(a1, v6, a3);
      if (v9 == v10)
      {
        break;
      }

      v6 = sub_78BEC(a1, v10, a3);
    }

    while (v9 != v6);
    if (v9 == a3)
    {
      v4 = a3;
    }

    else
    {
      if (v9 + 1 == a3 || *v9 != 92)
      {
        goto LABEL_30;
      }

      if (v9[1] == 41)
      {
        v4 = v9 + 2;
      }

      else
      {
        v4 = v9;
      }
    }

    if (v4 != v9)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }

      return v4;
    }

LABEL_30:
    sub_16ACC();
  }

  return v4;
}

unsigned __int8 *sub_78BEC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 == 42)
    {
      sub_1DB50();
    }

    if (a2 + 1 != a3 && v3 == 92)
    {
      v5 = a2[1] == 123 ? a2 + 2 : a2;
      if (v5 != a2)
      {
        if (v5 == a3)
        {
          v6 = 0;
        }

        else
        {
          v7 = *v5;
          if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38)
          {
            goto LABEL_52;
          }

          v6 = v7 - 48;
          v8 = v5 + 1;
          if (v5 + 1 != a3)
          {
            while (1)
            {
              v9 = *v8;
              if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
              {
                break;
              }

              if (v6 >= 214748364)
              {
                goto LABEL_52;
              }

              v6 = v9 + 10 * v6 - 48;
              if (++v8 == a3)
              {
                goto LABEL_20;
              }
            }

LABEL_21:
            if (v8 == v5)
            {
              goto LABEL_52;
            }

            if (v8 != a3)
            {
              v10 = *v8;
              v11 = v8 + 1;
              if (v10 == 44)
              {
                if (v11 == a3)
                {
                  goto LABEL_53;
                }

                v12 = *v11;
                if ((v12 & 0xF8) == 0x30 || (v12 & 0xFE) == 0x38)
                {
                  v11 = v8 + 2;
                  if (v8 + 2 == a3)
                  {
                    goto LABEL_53;
                  }

                  v13 = v12 - 48;
                  do
                  {
                    v15 = *v11;
                    if ((v15 & 0xF8) != 0x30 && (v15 & 0xFE) != 0x38)
                    {
                      goto LABEL_42;
                    }

                    if (v13 >= 214748364)
                    {
                      goto LABEL_52;
                    }

                    v13 = v15 + 10 * v13 - 48;
                    ++v11;
                  }

                  while (v11 != a3);
                  v11 = a3;
                }

                else
                {
                  v13 = -1;
                }

LABEL_42:
                if (v11 != a3)
                {
                  if (v11 + 1 == a3 || *v11 != 92)
                  {
                    goto LABEL_53;
                  }

                  if (v11[1] == 125)
                  {
                    a3 = v11 + 2;
                  }

                  else
                  {
                    a3 = v11;
                  }
                }

                if (a3 != v11)
                {
                  if (v13 == -1 || v13 >= v6)
                  {
                    goto LABEL_51;
                  }

LABEL_52:
                  sub_1DCE0();
                }
              }

              else if (v11 != a3 && v10 == 92)
              {
                v14 = (v8[1] == 125 ? v8 + 2 : v8);
                if (v8 != v14)
                {
LABEL_51:
                  sub_1DB50();
                }
              }
            }

LABEL_53:
            sub_1DD38();
          }
        }

LABEL_20:
        v8 = a3;
        goto LABEL_21;
      }
    }
  }

  return a2;
}

_BYTE *sub_78E64(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    goto LABEL_9;
  }

  v3 = *a2;
  if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
  {
    sub_18EEC(a1);
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_9;
  }

  if (*a2 != 92)
  {
    v5 = a2;
    if (a2 == a3)
    {
      return sub_76BA0(a1, a2, a3);
    }

    goto LABEL_16;
  }

  v6 = a2[1] - 36;
  if (v6 > 0x3A)
  {
LABEL_9:
    v5 = a2;
    if (a2 == a3)
    {
      return sub_76BA0(a1, a2, a3);
    }

    goto LABEL_16;
  }

  v5 = a2;
  if (((1 << v6) & 0x580000000000441) != 0)
  {
    sub_18EEC(a1);
  }

  if (a2 != a3)
  {
LABEL_16:
    if (*v5 == 46)
    {
      operator new();
    }
  }

  return sub_76BA0(a1, a2, a3);
}

unsigned __int8 *sub_79010(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_79290(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3)
  {
    v8 = *v6;
    switch(v8)
    {
      case '$':
        operator new();
      case '(':
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        ++*(a1 + 36);
        v9 = sub_75A08(a1, v6 + 1, a3);
        if (v9 == a3 || *v9 != 41)
        {
          sub_16ACC();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        --*(a1 + 36);
        v7 = v9 + 1;
        break;
      case '^':
        operator new();
    }
  }

  if (v7 == a2)
  {
    return a2;
  }

  return sub_76648(a1, v7, a3);
}

unsigned __int8 *sub_79290(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    result = sub_79408(a1, a2, a3);
    if (result != a2)
    {
      return result;
    }

    return sub_76BA0(a1, a2, a3);
  }

  v7 = *a2;
  v8 = (v7 - 36);
  if (v8 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v7 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    if (!*(a1 + 36))
    {
      sub_18EEC(a1);
    }
  }

  else
  {
LABEL_13:
    if ((v7 - 123) >= 2)
    {
      sub_18EEC(a1);
    }
  }

LABEL_6:
  result = sub_79408(a1, a2, a3);
  if (result == a2)
  {
    if (*result == 46)
    {
      operator new();
    }

    return sub_76BA0(a1, a2, a3);
  }

  return result;
}

unsigned __int8 *sub_79408(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v4 = a2[1];
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    sub_18EEC(a1);
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    return sub_780A0(a1, a2 + 1, a3, 0);
  }

  if (sub_1ECD0(a1, v4))
  {
    v3 += 2;
  }

  return v3;
}

void sub_794D4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
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

    sub_1808();
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
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v6;
}

__n128 sub_79630(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - v9);
    v14 = v13 - 2;
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        sub_79AF4(v9, v9 + 3, a2 - 3);
        return result;
      case 4uLL:

        result.n128_u64[0] = sub_79D54(v9, (v9 + 3), v9 + 3, a2 - 3).n128_u64[0];
        return result;
      case 5uLL:

        result.n128_u64[0] = sub_79F04(v9, (v9 + 3), (v9 + 6), (v9 + 9), a2 - 3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        sub_7A11C(v9, a2);
      }

      else
      {

        sub_7A2E4(v9, a2);
      }

      return result;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {
        v44 = (v14 >> 1) + 1;
        v45 = &v9[3 * (v14 >> 1)];
        do
        {
          sub_7AD20(v9, a3, 0xAAAAAAAAAAAAAAABLL * (a2 - v9), v45);
          v45 -= 3;
          --v44;
        }

        while (v44);

        sub_7AFE4(v9, a2, a3);
      }

      return result;
    }

    v15 = v13 >> 1;
    v16 = &v9[3 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      sub_79AF4(v16, v9, a2 - 3);
      if (a5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_79AF4(v9, v16, a2 - 3);
      v17 = v9 + 3;
      v18 = 3 * v15;
      v19 = (24 * v15 + a1 - 24);
      sub_79AF4((a1 + 24), v19, a2 - 6);
      sub_79AF4((a1 + 48), &v17[v18], a2 - 9);
      sub_79AF4(v19, v16, &v17[v18]);
      v49 = *(a1 + 16);
      v47 = *a1;
      v20 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v20;
      v16[2] = v49;
      *v16 = v47;
      if (a5)
      {
        goto LABEL_35;
      }
    }

    v21 = *(a1 - 1);
    if (v21 >= 0)
    {
      v22 = (a1 - 24);
    }

    else
    {
      v22 = *(a1 - 24);
    }

    if (v21 >= 0)
    {
      v23 = *(a1 - 1);
    }

    else
    {
      v23 = *(a1 - 16);
    }

    v24 = *(a1 + 23);
    if (v24 >= 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = *a1;
    }

    if (v24 >= 0)
    {
      v26 = *(a1 + 23);
    }

    else
    {
      v26 = *(a1 + 8);
    }

    if (v26 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v28 = memcmp(v22, v25, v27);
    if (v28)
    {
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (v23 >= v26)
    {
LABEL_39:
      v9 = sub_7A454(a1, a2);
      goto LABEL_40;
    }

LABEL_35:
    v29 = sub_7A748(a1, a2);
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }

    v31 = sub_7AA18(a1, v29);
    v9 = v29 + 3;
    if (sub_7AA18((v29 + 3), a2))
    {
      a4 = -v11;
      a2 = v29;
      if (v31)
      {
        return result;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v31)
    {
LABEL_38:
      sub_79630(a1, v29, a3, -v11, a5 & 1);
      v9 = v29 + 3;
LABEL_40:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 < 2)
  {
    return result;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v35 = *(a2 - 3);
  v34 = a2 - 3;
  v33 = v35;
  v36 = *(v34 + 23);
  if (v36 >= 0)
  {
    v37 = v34;
  }

  else
  {
    v37 = v33;
  }

  if (v36 >= 0)
  {
    v38 = *(v34 + 23);
  }

  else
  {
    v38 = v34[1];
  }

  v39 = *(v9 + 23);
  if (v39 >= 0)
  {
    v40 = v9;
  }

  else
  {
    v40 = *v9;
  }

  if (v39 >= 0)
  {
    v41 = *(v9 + 23);
  }

  else
  {
    v41 = v9[1];
  }

  if (v41 >= v38)
  {
    v42 = v38;
  }

  else
  {
    v42 = v41;
  }

  v43 = memcmp(v37, v40, v42);
  if (v43)
  {
    if ((v43 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v38 >= v41)
  {
    return result;
  }

  v50 = v9[2];
  v48 = *v9;
  v46 = *v34;
  v9[2] = v34[2];
  *v9 = v46;
  result = v48;
  *v34 = v48;
  v34[2] = v50;
  return result;
}

uint64_t sub_79AF4(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = a3[1];
    }

    if (v8 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v8;
    }

    v24 = memcmp(v21, v7, v23);
    if (v24)
    {
      if ((v24 & 0x80000000) == 0)
      {
LABEL_42:
        v25 = a1[2];
        v26 = *a1;
        v27 = a2[2];
        *a1 = *a2;
        a1[2] = v27;
        *a2 = v26;
        a2[2] = v25;
        v28 = *(a3 + 23);
        if (v28 >= 0)
        {
          v29 = a3;
        }

        else
        {
          v29 = *a3;
        }

        if (v28 >= 0)
        {
          v30 = *(a3 + 23);
        }

        else
        {
          v30 = a3[1];
        }

        v31 = *(a2 + 23);
        if (v31 >= 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = *a2;
        }

        if (v31 >= 0)
        {
          v33 = *(a2 + 23);
        }

        else
        {
          v33 = a2[1];
        }

        if (v33 >= v30)
        {
          v34 = v30;
        }

        else
        {
          v34 = v33;
        }

        v35 = memcmp(v29, v32, v34);
        if (v35)
        {
          if ((v35 & 0x80000000) == 0)
          {
            return 1;
          }
        }

        else if (v30 >= v33)
        {
          return 1;
        }

        v47 = a2[2];
        v48 = *a2;
        v50 = a3[2];
        *a2 = *a3;
        a2[2] = v50;
LABEL_83:
        *a3 = v48;
        a3[2] = v47;
        return 1;
      }
    }

    else if (v22 >= v8)
    {
      goto LABEL_42;
    }

    v47 = a1[2];
    v48 = *a1;
    v49 = a3[2];
    *a1 = *a3;
    a1[2] = v49;
    goto LABEL_83;
  }

  if (v8 < v11)
  {
    goto LABEL_31;
  }

LABEL_18:
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v8 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = memcmp(v15, v7, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (v16 >= v8)
  {
    return 0;
  }

  v36 = a2[2];
  v37 = *a2;
  v38 = a3[2];
  *a2 = *a3;
  a2[2] = v38;
  *a3 = v37;
  a3[2] = v36;
  v39 = *(a2 + 23);
  if (v39 >= 0)
  {
    v40 = a2;
  }

  else
  {
    v40 = *a2;
  }

  if (v39 >= 0)
  {
    v41 = *(a2 + 23);
  }

  else
  {
    v41 = a2[1];
  }

  v42 = *(a1 + 23);
  if (v42 >= 0)
  {
    v43 = a1;
  }

  else
  {
    v43 = *a1;
  }

  if (v42 >= 0)
  {
    v44 = *(a1 + 23);
  }

  else
  {
    v44 = a1[1];
  }

  if (v44 >= v41)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = memcmp(v40, v43, v45);
  if (v46)
  {
    if (v46 < 0)
    {
      goto LABEL_85;
    }
  }

  else if (v41 < v44)
  {
LABEL_85:
    v51 = a1[2];
    v52 = *a1;
    v53 = a2[2];
    *a1 = *a2;
    a1[2] = v53;
    *a2 = v52;
    a2[2] = v51;
  }

  return 1;
}

__n128 sub_79D54(uint64_t a1, __int128 *a2, __int128 *a3, const void **a4)
{
  sub_79AF4(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 1);
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v10 >= v13)
  {
    return result;
  }

  v17 = *(a3 + 2);
  v18 = *a3;
  v19 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v19;
  *a4 = v18;
  a4[2] = v17;
  v20 = *(a3 + 23);
  if (v20 >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  if (v20 >= 0)
  {
    v22 = *(a3 + 23);
  }

  else
  {
    v22 = *(a3 + 1);
  }

  v23 = *(a2 + 23);
  if (v23 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = *(a2 + 1);
  }

  if (v25 >= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  v27 = memcmp(v21, v24, v26);
  if (v27)
  {
    if ((v27 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v22 >= v25)
  {
    return result;
  }

  v28 = *(a2 + 2);
  v29 = *a2;
  v30 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v30;
  *a3 = v29;
  *(a3 + 2) = v28;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = a2;
  }

  else
  {
    v32 = *a2;
  }

  if (v31 >= 0)
  {
    v33 = *(a2 + 23);
  }

  else
  {
    v33 = *(a2 + 1);
  }

  v34 = *(a1 + 23);
  if (v34 >= 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = *a1;
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 23);
  }

  else
  {
    v36 = *(a1 + 8);
  }

  if (v36 >= v33)
  {
    v37 = v33;
  }

  else
  {
    v37 = v36;
  }

  v38 = memcmp(v32, v35, v37);
  if (v38)
  {
    if (v38 < 0)
    {
      goto LABEL_58;
    }
  }

  else if (v33 < v36)
  {
LABEL_58:
    v39 = *(a1 + 16);
    result = *a1;
    v40 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v40;
    *a2 = result;
    *(a2 + 2) = v39;
  }

  return result;
}

__n128 sub_79F04(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  sub_79D54(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 1);
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 >= v15)
  {
    return result;
  }

  v19 = *(a4 + 2);
  v20 = *a4;
  v21 = a5[2];
  *a4 = *a5;
  *(a4 + 2) = v21;
  *a5 = v20;
  a5[2] = v19;
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 1);
  }

  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  if (v27 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  v29 = memcmp(v23, v26, v28);
  if (v29)
  {
    if ((v29 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v24 >= v27)
  {
    return result;
  }

  v30 = *(a3 + 16);
  v31 = *a3;
  v32 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 16) = v32;
  *a4 = v31;
  *(a4 + 2) = v30;
  v33 = *(a3 + 23);
  if (v33 >= 0)
  {
    v34 = a3;
  }

  else
  {
    v34 = *a3;
  }

  if (v33 >= 0)
  {
    v35 = *(a3 + 23);
  }

  else
  {
    v35 = *(a3 + 8);
  }

  v36 = *(a2 + 23);
  if (v36 >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = *a2;
  }

  if (v36 >= 0)
  {
    v38 = *(a2 + 23);
  }

  else
  {
    v38 = *(a2 + 8);
  }

  if (v38 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v38;
  }

  v40 = memcmp(v34, v37, v39);
  if (v40)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v35 >= v38)
  {
    return result;
  }

  v41 = *(a2 + 16);
  v42 = *a2;
  v43 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v43;
  *a3 = v42;
  *(a3 + 16) = v41;
  v44 = *(a2 + 23);
  if (v44 >= 0)
  {
    v45 = a2;
  }

  else
  {
    v45 = *a2;
  }

  if (v44 >= 0)
  {
    v46 = *(a2 + 23);
  }

  else
  {
    v46 = *(a2 + 8);
  }

  v47 = *(a1 + 23);
  if (v47 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v47 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v45, v48, v50);
  if (v51)
  {
    if ((v51 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v46 >= v49)
  {
    return result;
  }

  v52 = *(a1 + 16);
  result = *a1;
  v53 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v53;
  *a2 = result;
  *(a2 + 16) = v52;
  return result;
}

const void **sub_7A11C(const void **result, const void **a2)
{
  if (result != a2)
  {
    v32 = v2;
    v33 = v3;
    v4 = a2;
    v5 = result;
    v6 = result + 3;
    if (result + 3 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v11 = v8;
        v8 = v6;
        v12 = *(v11 + 47);
        if (v12 >= 0)
        {
          v13 = v6;
        }

        else
        {
          v13 = v11[3];
        }

        if (v12 >= 0)
        {
          v14 = *(v11 + 47);
        }

        else
        {
          v14 = v11[4];
        }

        v15 = *(v11 + 23);
        if (v15 >= 0)
        {
          v16 = v11;
        }

        else
        {
          v16 = *v11;
        }

        if (v15 >= 0)
        {
          v17 = *(v11 + 23);
        }

        else
        {
          v17 = v11[1];
        }

        if (v17 >= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = v17;
        }

        result = memcmp(v13, v16, v18);
        if (result)
        {
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_7;
          }
        }

        else if (v14 >= v17)
        {
          goto LABEL_7;
        }

        v31 = v8[2];
        v19 = v31;
        v30 = *v8;
        *v8 = 0;
        v8[1] = 0;
        v20 = HIBYTE(v19);
        if ((v20 & 0x80u) == 0)
        {
          v21 = &v30;
        }

        else
        {
          v21 = v30;
        }

        if ((v20 & 0x80u) == 0)
        {
          v22 = v20;
        }

        else
        {
          v22 = *(&v30 + 1);
        }

        v8[2] = v11[2];
        *v8 = *v11;
        *(v11 + 23) = 0;
        *v11 = 0;
        v9 = v5;
        if (v11 == v5)
        {
          goto LABEL_6;
        }

        v23 = v7;
        while (1)
        {
          v24 = v5 + v23;
          v25 = *(v5 + v23 - 1);
          v26 = v25 >= 0 ? v5 + v23 - 24 : *(v5 + v23 - 24);
          v27 = v25 >= 0 ? *(v5 + v23 - 1) : *(v5 + v23 - 16);
          v28 = (v27 >= v22 ? v22 : v27);
          result = memcmp(v21, v26, v28);
          if (!result)
          {
            break;
          }

          if ((result & 0x80000000) == 0)
          {
            v9 = (v5 + v23);
            goto LABEL_5;
          }

LABEL_36:
          v11 -= 3;
          *v24 = *(v5 + v23 - 24);
          *(v24 + 16) = *(v5 + v23 - 8);
          *(v24 - 1) = 0;
          *(v24 - 24) = 0;
          v23 -= 24;
          if (!v23)
          {
            v9 = v5;
            goto LABEL_5;
          }
        }

        if (v22 < v27)
        {
          goto LABEL_36;
        }

        v9 = v11;
LABEL_5:
        v4 = a2;
LABEL_6:
        v10 = v30;
        v9[2] = v31;
        *v9 = v10;
LABEL_7:
        v6 = v8 + 3;
        v7 += 24;
      }

      while (v8 + 3 != v4);
    }
  }

  return result;
}

const void **sub_7A2E4(const void **result, const void **a2)
{
  if (result != a2)
  {
    v26 = v2;
    v27 = v3;
    v5 = result;
    for (i = result + 3; v5 + 3 != a2; i = v5 + 3)
    {
      v7 = v5;
      v5 = i;
      v8 = *(v7 + 47);
      if (v8 >= 0)
      {
        v9 = i;
      }

      else
      {
        v9 = v7[3];
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 47);
      }

      else
      {
        v10 = v7[4];
      }

      v11 = *(v7 + 23);
      if (v11 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = *v7;
      }

      if (v11 >= 0)
      {
        v13 = *(v7 + 23);
      }

      else
      {
        v13 = v7[1];
      }

      if (v13 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v13;
      }

      result = memcmp(v9, v12, v14);
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else if (v10 < v13)
      {
LABEL_25:
        v25 = v5[2];
        v15 = v25;
        v24 = *v5;
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
        v16 = HIBYTE(v15);
        if ((v16 & 0x80u) == 0)
        {
          v17 = &v24;
        }

        else
        {
          v17 = v24;
        }

        if ((v16 & 0x80u) == 0)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(&v24 + 1);
        }

        for (j = v5; ; j -= 3)
        {
          *j = *(j - 3);
          j[2] = *(j - 1);
          *(j - 1) = 0;
          *(j - 24) = 0;
          v20 = *(j - 25);
          if (v20 >= 0)
          {
            v21 = j - 6;
          }

          else
          {
            v21 = *(j - 6);
          }

          if (v20 >= 0)
          {
            v22 = *(j - 25);
          }

          else
          {
            v22 = *(j - 5);
          }

          if (v22 >= v18)
          {
            v23 = v18;
          }

          else
          {
            v23 = v22;
          }

          result = memcmp(v17, v21, v23);
          if (result)
          {
            if ((result & 0x80000000) == 0)
            {
LABEL_4:
              *(j - 3) = v24;
              *(j - 1) = v25;
              break;
            }
          }

          else if (v18 >= v22)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  return result;
}