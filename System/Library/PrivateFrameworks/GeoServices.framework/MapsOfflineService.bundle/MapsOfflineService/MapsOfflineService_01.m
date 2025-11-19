void sub_10E50(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v58 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v58)
  {
LABEL_6:
    sub_DBE4(&a58);
    sub_1A104(&a43);
    sub_14848(&a17);
    if (a30 < 0)
    {
      operator delete(a25);
    }

    if (a2 == 1)
    {
      v62 = __cxa_begin_catch(a1);
      (*(*v62 + 16))(v62);
      *a14 = 4;
      v63 = (*(*v62 + 16))(v62);
      sub_2345C((a14 + 8), v63);
      __cxa_end_catch();
      JUMPOUT(0x102CCLL);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v59);
  goto LABEL_6;
}

uint64_t sub_1126C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 88);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 144;
      }

      while (v3 != v2);
      v4 = *(a1 + 88);
    }

    *(a1 + 96) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    do
    {
      v7 = *v6;
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1132C(_OWORD *a1, uint64_t *a2, unsigned int *a3, unsigned int a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return 0;
  }

  do
  {
    result = sub_EF38(a1, v4, a3, a4);
    if (result)
    {
      break;
    }

    v4 += 24;
  }

  while (v4 != v5);
  return result;
}

uint64_t sub_113AC(_OWORD *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  *v24 = 0u;
  *v25 = 0u;
  *v26 = 0u;
  v27 = 0;
  v28 = 1065353216;
  v29 = -1;
  v30 = 0x7FFFFFFF;
  v32 = 0;
  v33 = 0;
  __p = 0;
  if (!sub_F0B0(a1, a3, &v23))
  {
    if (a4)
    {
      *a4 = v23;
      v9 = (a4 + 8);
      if (&v23 != a4)
      {
        if (*(a4 + 31) < 0)
        {
          if (SHIBYTE(v25[0]) >= 0)
          {
            v13 = v24;
          }

          else
          {
            v13 = v24[0];
          }

          if (SHIBYTE(v25[0]) >= 0)
          {
            v14 = HIBYTE(v25[0]);
          }

          else
          {
            v14 = v24[1];
          }

          sub_13B38(v9, v13, v14);
        }

        else
        {
          if ((HIBYTE(v25[0]) & 0x80) == 0)
          {
            v10 = 0;
            *v9 = *v24;
            *(a4 + 24) = v25[0];
            goto LABEL_37;
          }

          sub_13A68(v9, v24[0], v24[1]);
        }
      }
    }

    goto LABEL_36;
  }

  v7 = v23;
  if (a4)
  {
    *a4 = v23;
    v8 = (a4 + 8);
    if (&v23 != a4)
    {
      if (*(a4 + 31) < 0)
      {
        if (SHIBYTE(v25[0]) >= 0)
        {
          v11 = v24;
        }

        else
        {
          v11 = v24[0];
        }

        if (SHIBYTE(v25[0]) >= 0)
        {
          v12 = HIBYTE(v25[0]);
        }

        else
        {
          v12 = v24[1];
        }

        sub_13B38(v8, v11, v12);
      }

      else if ((HIBYTE(v25[0]) & 0x80) != 0)
      {
        sub_13A68(v8, v24[0], v24[1]);
      }

      else
      {
        *v8 = *v24;
        *(a4 + 24) = v25[0];
      }

      *(a4 + 64) = v28;
      sub_13C60(a4 + 32, v26[1], 0);
      *(a4 + 72) = v29;
      *(a4 + 80) = v30;
      sub_14300((a4 + 88), __p, v32, 0x8E38E38E38E38E39 * ((v32 - __p) >> 4));
      if (!v23)
      {
        goto LABEL_31;
      }

LABEL_36:
      v10 = 0;
      goto LABEL_37;
    }

    *(a4 + 72) = v29;
    *(a4 + 80) = v30;
  }

  if (v7)
  {
    goto LABEL_36;
  }

LABEL_31:
  v15 = __p;
  if (__p == v32)
  {
    v10 = 1;
    if (!__p)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v10 = sub_CF0C(&v23, a2, 0x7FFFFFFFu, 0, a1);
LABEL_37:
  v15 = __p;
  if (!__p)
  {
    goto LABEL_45;
  }

LABEL_38:
  v16 = v32;
  v17 = v15;
  if (v32 != v15)
  {
    do
    {
      v18 = *(v16 - 3);
      if (v18)
      {
        *(v16 - 2) = v18;
        operator delete(v18);
      }

      v16 -= 9;
    }

    while (v16 != v15);
    v17 = __p;
  }

  v32 = v15;
  operator delete(v17);
LABEL_45:
  v19 = v26[1];
  if (v26[1])
  {
    do
    {
      v20 = *v19;
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = v25[1];
  v25[1] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v25[0]) < 0)
  {
    operator delete(v24[0]);
  }

  return v10;
}

void sub_11638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void (__cdecl **a15)(std::ostringstream *__hidden this), int a16)
{
  sub_1126C(&a15);
  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&a15);
      v21 = sub_4A5C(&a15, "exception when applying: ", 25);
      v22 = *(v17 + 23);
      if (v22 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = *v17;
      }

      if (v22 >= 0)
      {
        v24 = *(v17 + 23);
      }

      else
      {
        v24 = *(v17 + 8);
      }

      v25 = sub_4A5C(v21, v23, v24);
      v26 = sub_4A5C(v25, " to ", 4);
      v27 = sub_433C(v26, v16);
      v28 = sub_4A5C(v27, ":", 1);
      v29 = (*(*v20 + 16))(v20);
      v30 = strlen(v29);
      sub_4A5C(v28, v29, v30);
      sub_66B8(&a16, &__p);
      sub_7E854(&__p, 3u);
      if (a14 < 0)
      {
        operator delete(__p);
      }

      sub_1959728(&a15);
    }

    __cxa_end_catch();
    JUMPOUT(0x1161CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_11790(_OWORD *a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 0;
  }

  do
  {
    result = sub_113AC(a1, a2, v3, 0);
    if (result)
    {
      break;
    }

    v3 += 24;
  }

  while (v3 != v4);
  return result;
}

void sub_11800(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = 0;
  *v23 = 0u;
  *v24 = 0u;
  *__n = 0u;
  v26 = 0;
  v27 = 1065353216;
  v28 = -1;
  v29 = 0x7FFFFFFF;
  v31 = 0;
  v32 = 0;
  __p = 0;
  sub_F0B0(a1, a2, &v22);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = v27;
  prime = __n[0];
  if (__n[0] == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a4, prime);
    goto LABEL_18;
  }

  if ((__n[0] & (__n[0] - 1)) != 0)
  {
    prime = std::__next_prime(__n[0]);
    v8 = *(a4 + 8);
    v9 = prime >= *&v8;
    if (prime > *&v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
    if (__n[0])
    {
      goto LABEL_17;
    }
  }

  if (!v9)
  {
    v10 = vcvtps_u32_f32(*(a4 + 24) / *(a4 + 32));
    if (*&v8 < 3uLL || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v10 = std::__next_prime(v10);
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime < *&v8)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = __n[1]; i; i = *i)
  {
    sub_23E68(a4, (i + 16));
  }

  if (a3 && *(a4 + 24))
  {
    if (!sub_EAD0(a3, (a1 + 312)))
    {
      v21 = 8;
      sub_11AB0(a4, &v21);
    }

    if (!sub_EAD0(a3, (a1 + 208)))
    {
      v21 = 9;
      sub_11AB0(a4, &v21);
    }
  }

  v14 = __p;
  if (__p)
  {
    v15 = v31;
    v16 = __p;
    if (v31 != __p)
    {
      do
      {
        v17 = *(v15 - 3);
        if (v17)
        {
          *(v15 - 2) = v17;
          operator delete(v17);
        }

        v15 -= 144;
      }

      while (v15 != v14);
      v16 = __p;
    }

    v31 = v14;
    operator delete(v16);
  }

  v18 = __n[1];
  if (__n[1])
  {
    do
    {
      v19 = *v18;
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = v24[1];
  v24[1] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_11A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(v3);
  sub_1126C(va);
  _Unwind_Resume(a1);
}

void sub_11A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1126C(va);
  _Unwind_Resume(a1);
}

void sub_11A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(v3);
  sub_1126C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11AB0(uint64_t *a1, int *a2)
{
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v4 <= v5)
    {
      v7 = v5 % *&v4;
    }
  }

  else
  {
    v7 = (*&v4 - 1) & v5;
  }

  __p[3] = v2;
  __p[4] = v3;
  v9 = *(*a1 + 8 * v7);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (!*v9)
  {
    return 0;
  }

  if (v6.u32[0] < 2uLL)
  {
    v11 = *&v4 - 1;
    while (1)
    {
      v12 = *(v10 + 8);
      if (v12 == v5)
      {
        if (*(v10 + 16) == v5)
        {
          goto LABEL_23;
        }
      }

      else if ((v12 & v11) != v7)
      {
        return 0;
      }

      v10 = *v10;
      if (!v10)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v13 = *(v10 + 8);
    if (v13 == v5)
    {
      break;
    }

    if (v13 >= *&v4)
    {
      v13 %= *&v4;
    }

    if (v13 != v7)
    {
      return 0;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      return 0;
    }
  }

  if (*(v10 + 16) != v5)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_24C14(a1, v10, __p);
  v14 = __p[0];
  __p[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  return 1;
}

uint64_t sub_11BD8(uint64_t a1)
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

void sub_11C24(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      sub_11800(a1, v5, a3, &v13);
      v9 = __p;
      if (__p)
      {
        do
        {
          sub_23E68(a4, v9 + 4);
          v9 = *v9;
        }

        while (v9);
        v10 = __p;
        if (__p)
        {
          do
          {
            v11 = *v10;
            operator delete(v10);
            v10 = v11;
          }

          while (v11);
        }
      }

      v12 = v13;
      v13 = 0;
      if (v12)
      {
        operator delete(v12);
      }

      v5 += 24;
    }

    while (v5 != v6);
  }
}

void sub_11D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11BD8(va);
  sub_11BD8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_11D20(uint64_t result)
{
  if (*result == 1)
  {
    if (*(result + 32))
    {
      sub_D7B0(v12);
      sub_4A5C(v13, "first/last cannot appear in durations", 37);
      exception = __cxa_allocate_exception(0x10uLL);
      sub_DAE4(v12, &v11);
      std::logic_error::logic_error(exception, &v11);
    }

    if ((*(result + 24) & 0x7F) != 0)
    {
      sub_D7B0(v12);
      sub_4A5C(v13, "day_of_week cannot be set in duration", 37);
      v1 = __cxa_allocate_exception(0x10uLL);
      sub_DAE4(v12, &v11);
      std::logic_error::logic_error(v1, &v11);
    }
  }

  else
  {
    if ((*(result + 20) - 60) <= 0xFFFFFF87)
    {
      sub_D7B0(v12);
      sub_4A5C(v13, "minutes out of range ", 21);
      std::ostream::operator<<();
      v7 = __cxa_allocate_exception(0x10uLL);
      sub_DAE4(v12, &v11);
      std::logic_error::logic_error(v7, &v11);
    }

    v2 = *(result + 32);
    v3 = *(result + 36);
    if (v2)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      sub_D7B0(v12);
      sub_4A5C(v13, "td f/l  cannot be both set in one term", 38);
      v8 = __cxa_allocate_exception(0x10uLL);
      sub_DAE4(v12, &v11);
      std::logic_error::logic_error(v8, &v11);
    }

    v5 = (v2 | v3) == 0;
    if (*(result + 12) && !v5)
    {
      sub_D7B0(v12);
      sub_4A5C(v13, "day-of-month cannot be combined with first/last", 47);
      v9 = __cxa_allocate_exception(0x10uLL);
      sub_DAE4(v12, &v11);
      std::logic_error::logic_error(v9, &v11);
    }

    if (*(result + 8) >= 1 && (*(result + 24) & 0x7F) != 0)
    {
      sub_D7B0(v12);
      sub_4A5C(v13, "td 't' component cannot be combined with month", 46);
      v10 = __cxa_allocate_exception(0x10uLL);
      sub_DAE4(v12, &v11);
      std::logic_error::logic_error(v10, &v11);
    }
  }

  return result;
}

void sub_12114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
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
    sub_DBE4(&a15);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v15);
  sub_DBE4(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1222C(uint64_t result, int a2, int a3)
{
  if (a2 <= 108)
  {
    if (a2 <= 101)
    {
      if (a2 == 77)
      {
        *(result + 8) = a3;
        return result;
      }

      if (a2 == 100)
      {
        *(result + 12) = a3;
        return result;
      }
    }

    else
    {
      switch(a2)
      {
        case 'f':
          *(result + 32) = a3;
          return result;
        case 'h':
          *(result + 45) = 1;
          *(result + 16) = a3;
          return result;
        case 'l':
          *(result + 36) = a3;
          return result;
      }
    }

LABEL_18:
    v3 = a2;
    sub_D7B0(v7);
    v4 = sub_4A5C(v8, "unexpected time unit ", 21);
    v6.__r_.__value_.__s.__data_[0] = v3;
    sub_4A5C(v4, &v6, 1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_DAE4(v7, &v6);
    std::logic_error::logic_error(exception, &v6);
  }

  if (a2 <= 115)
  {
    if (a2 == 109)
    {
      *(result + 45) = 1;
      *(result + 20) = a3;
      return result;
    }

    if (a2 != 115)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a2 != 116)
    {
      if (a2 == 122)
      {
        *(result + 40) = a3;
        return result;
      }

      if (a2 == 121)
      {
        *(result + 4) = a3;
        return result;
      }

      goto LABEL_18;
    }

    if ((a3 - 9) >= 0xFFFFFFF8)
    {
      if (a3 == 8)
      {
        *(result + 44) = 1;
      }

      else
      {
        *(result + 24) |= 1 << (a3 - 1);
      }
    }
  }

  return result;
}

void sub_12478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_DBE4(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  sub_DBE4(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_124CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0x8E38E38E38E38E39 * (v3 >> 4) + 1;
  if (v4 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - v1) >> 4) > v4)
  {
    v4 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - v1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - v1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (v3 >> 4);
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  *(v7 + 112) = 32;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  v8 = v7 + 144;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      v12 = *v10;
      v13 = *(v10 + 1);
      v14 = *(v10 + 3);
      *(v11 + 32) = *(v10 + 2);
      *(v11 + 48) = v14;
      *v11 = v12;
      *(v11 + 16) = v13;
      v15 = *(v10 + 4);
      v16 = *(v10 + 5);
      v17 = *(v10 + 6);
      *(v11 + 112) = *(v10 + 28);
      *(v11 + 80) = v16;
      *(v11 + 96) = v17;
      *(v11 + 64) = v15;
      *(v11 + 128) = 0;
      *(v11 + 136) = 0;
      *(v11 + 120) = *(v10 + 15);
      *(v11 + 136) = v10[17];
      v10[15] = 0;
      v10[16] = 0;
      v10[17] = 0;
      v10 += 18;
      v11 += 144;
    }

    while (v10 != v2);
    do
    {
      v18 = v1[15];
      if (v18)
      {
        v1[16] = v18;
        operator delete(v18);
      }

      v1 += 18;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

uint64_t sub_12688(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 144;
    }
  }

  return a1;
}

void *sub_126EC(void *a1, uint64_t a2)
{
  v4 = *a2 == 0;
  if (*a2)
  {
    v5 = "duration:";
  }

  else
  {
    v5 = "timepoint:";
  }

  if (v4)
  {
    v6 = 10;
  }

  else
  {
    v6 = 9;
  }

  v79 = v6;
  memcpy(__dst, v5, v6);
  *(__dst + v6) = 0;
  if ((*(a2 + 24) & 0x7F) != 0)
  {
    sub_12F40("t", (a2 + 24), v76);
    if (*(a2 + 45) == 1)
    {
LABEL_9:
      sub_131BC("h", v74);
      goto LABEL_12;
    }
  }

  else
  {
    v77 = 0;
    LOBYTE(v76[0]) = 0;
    if (*(a2 + 45) == 1)
    {
      goto LABEL_9;
    }
  }

  v75 = 0;
  LOBYTE(v74[0]) = 0;
LABEL_12:
  v7 = sub_4A5C(a1, "(", 1);
  if ((v79 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v79 & 0x80u) == 0)
  {
    v9 = v79;
  }

  else
  {
    v9 = __dst[1];
  }

  v10 = sub_4A5C(v7, v8, v9);
  v71 = 1;
  LOWORD(v70) = 121;
  v11 = *(a2 + 4);
  LODWORD(v68[0]) = v11;
  if (v11)
  {
    sub_1362C(&v70, v72);
    v11 = v73;
  }

  else
  {
    v73 = 0;
    LOBYTE(v72[0]) = 0;
  }

  if ((v11 & 0x80u) == 0)
  {
    v12 = v72;
  }

  else
  {
    v12 = v72[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v72[1];
  }

  v14 = sub_4A5C(v10, v12, v13);
  v67 = 1;
  LOWORD(v66) = 77;
  v15 = *(a2 + 8);
  LODWORD(v64[0]) = v15;
  if (v15)
  {
    sub_1362C(&v66, v68);
    v15 = v69;
  }

  else
  {
    v69 = 0;
    LOBYTE(v68[0]) = 0;
  }

  if ((v15 & 0x80u) == 0)
  {
    v16 = v68;
  }

  else
  {
    v16 = v68[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v68[1];
  }

  v18 = sub_4A5C(v14, v16, v17);
  v63 = 1;
  LOWORD(v62) = 100;
  v19 = *(a2 + 12);
  LODWORD(v60[0]) = v19;
  if (v19)
  {
    sub_1362C(&v62, v64);
    v19 = v65;
  }

  else
  {
    v65 = 0;
    LOBYTE(v64[0]) = 0;
  }

  if ((v19 & 0x80u) == 0)
  {
    v20 = v64;
  }

  else
  {
    v20 = v64[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v64[1];
  }

  v22 = sub_4A5C(v18, v20, v21);
  v59 = 1;
  LOWORD(v58) = 108;
  v23 = *(a2 + 36);
  LODWORD(v56[0]) = v23;
  if (v23)
  {
    sub_1362C(&v58, v60);
    v23 = v61;
  }

  else
  {
    v61 = 0;
    LOBYTE(v60[0]) = 0;
  }

  if ((v23 & 0x80u) == 0)
  {
    v24 = v60;
  }

  else
  {
    v24 = v60[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = v60[1];
  }

  v26 = sub_4A5C(v22, v24, v25);
  v55 = 1;
  LOWORD(v54) = 102;
  v27 = *(a2 + 32);
  LODWORD(v52[0]) = v27;
  if (v27)
  {
    sub_1362C(&v54, v56);
    v27 = v57;
  }

  else
  {
    v57 = 0;
    LOBYTE(v56[0]) = 0;
  }

  if ((v27 & 0x80u) == 0)
  {
    v28 = v56;
  }

  else
  {
    v28 = v56[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = v56[1];
  }

  v30 = sub_4A5C(v26, v28, v29);
  v51 = 1;
  LOWORD(v50) = 122;
  v31 = *(a2 + 40);
  LODWORD(__p[0]) = v31;
  if (v31)
  {
    sub_1362C(&v50, v52);
    v31 = v53;
  }

  else
  {
    v53 = 0;
    LOBYTE(v52[0]) = 0;
  }

  if ((v31 & 0x80u) == 0)
  {
    v32 = v52;
  }

  else
  {
    v32 = v52[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v33 = v31;
  }

  else
  {
    v33 = v52[1];
  }

  v34 = sub_4A5C(v30, v32, v33);
  if ((v77 & 0x80u) == 0)
  {
    v35 = v76;
  }

  else
  {
    v35 = v76[0];
  }

  if ((v77 & 0x80u) == 0)
  {
    v36 = v77;
  }

  else
  {
    v36 = v76[1];
  }

  v37 = sub_4A5C(v34, v35, v36);
  if ((v75 & 0x80u) == 0)
  {
    v38 = v74;
  }

  else
  {
    v38 = v74[0];
  }

  if ((v75 & 0x80u) == 0)
  {
    v39 = v75;
  }

  else
  {
    v39 = v74[1];
  }

  v40 = sub_4A5C(v37, v38, v39);
  v47 = 1;
  LOWORD(v46) = 109;
  v41 = *(a2 + 20);
  v80 = v41;
  if (v41)
  {
    sub_1362C(&v46, __p);
    v41 = v49;
  }

  else
  {
    v49 = 0;
    LOBYTE(__p[0]) = 0;
  }

  if ((v41 & 0x80u) == 0)
  {
    v42 = __p;
  }

  else
  {
    v42 = __p[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v43 = v41;
  }

  else
  {
    v43 = __p[1];
  }

  v44 = sub_4A5C(v40, v42, v43);
  sub_4A5C(v44, ")", 1);
  if (v49 < 0)
  {
    operator delete(__p[0]);
    if ((v47 & 0x80000000) == 0)
    {
LABEL_95:
      if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_113;
    }
  }

  else if ((v47 & 0x80000000) == 0)
  {
    goto LABEL_95;
  }

  operator delete(v46);
  if ((v53 & 0x80000000) == 0)
  {
LABEL_96:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_114;
  }

LABEL_113:
  operator delete(v52[0]);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_97:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_115;
  }

LABEL_114:
  operator delete(v50);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_98:
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_116;
  }

LABEL_115:
  operator delete(v56[0]);
  if ((v55 & 0x80000000) == 0)
  {
LABEL_99:
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_117;
  }

LABEL_116:
  operator delete(v54);
  if ((v61 & 0x80000000) == 0)
  {
LABEL_100:
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_118;
  }

LABEL_117:
  operator delete(v60[0]);
  if ((v59 & 0x80000000) == 0)
  {
LABEL_101:
    if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_119;
  }

LABEL_118:
  operator delete(v58);
  if ((v65 & 0x80000000) == 0)
  {
LABEL_102:
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_120;
  }

LABEL_119:
  operator delete(v64[0]);
  if ((v63 & 0x80000000) == 0)
  {
LABEL_103:
    if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_121;
  }

LABEL_120:
  operator delete(v62);
  if ((v69 & 0x80000000) == 0)
  {
LABEL_104:
    if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_122;
  }

LABEL_121:
  operator delete(v68[0]);
  if ((v67 & 0x80000000) == 0)
  {
LABEL_105:
    if ((v73 & 0x80000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_123;
  }

LABEL_122:
  operator delete(v66);
  if ((v73 & 0x80000000) == 0)
  {
LABEL_106:
    if ((v71 & 0x80000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_124;
  }

LABEL_123:
  operator delete(v72[0]);
  if ((v71 & 0x80000000) == 0)
  {
LABEL_107:
    if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_125;
  }

LABEL_124:
  operator delete(v70);
  if ((v75 & 0x80000000) == 0)
  {
LABEL_108:
    if ((v77 & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

LABEL_126:
    operator delete(v76[0]);
    if ((v79 & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_127:
    operator delete(__dst[0]);
    return a1;
  }

LABEL_125:
  operator delete(v74[0]);
  if (v77 < 0)
  {
    goto LABEL_126;
  }

LABEL_109:
  if (v79 < 0)
  {
    goto LABEL_127;
  }

  return a1;
}

void sub_12C9C(_Unwind_Exception *a1)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
    if ((*(v1 - 57) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 - 57) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_12F40@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v13);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v14, a1, v6);
  sub_13438(v7, a2);
  if ((v24 & 0x10) != 0)
  {
    v9 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v9 = v20;
    }

    v10 = v19;
    v8 = v9 - v19;
    if (v9 - v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v8 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v10 = v17;
    v8 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a3[23] = v8;
  if (v8)
  {
    memmove(a3, v10, v8);
  }

LABEL_12:
  a3[v8] = 0;
  v14 = v11;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_131A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_131BC@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v10);
  v4 = strlen(a1);
  sub_4A5C(&v11, a1, v4);
  std::ostream::operator<<();
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v7, v5);
  }

LABEL_12:
  a2[v5] = 0;
  v11 = v8;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_13424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void *sub_13438(void *a1, uint64_t *a2)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v12, &std::ctype<char>::id);
  v5 = (v4->__vftable[2].~facet_0)(v4, 48);
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(&v11, &std::ctype<char>::id);
  v7 = (v6->__vftable[2].~facet_0)(v6, 49);
  v14 = 7;
  LODWORD(__p) = 16843009 * v5;
  *(&__p + 3) = __p;
  HIBYTE(__p) = 0;
  v8 = *a2;
  if (*a2)
  {
    BYTE6(__p) = v7;
    if ((v8 & 2) == 0)
    {
LABEL_3:
      if ((v8 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_3;
  }

  BYTE5(__p) = v7;
  if ((v8 & 4) == 0)
  {
LABEL_4:
    if ((v8 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  BYTE4(__p) = v7;
  if ((v8 & 8) == 0)
  {
LABEL_5:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  BYTE3(__p) = v7;
  if ((v8 & 0x10) == 0)
  {
LABEL_6:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  BYTE2(__p) = v7;
  if ((v8 & 0x20) == 0)
  {
LABEL_7:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  BYTE1(__p) = v7;
  if ((v8 & 0x40) != 0)
  {
LABEL_8:
    LOBYTE(__p) = v7;
  }

LABEL_9:
  v9 = sub_4A5C(a1, &__p, 7);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v11);
  std::locale::~locale(&v12);
  return v9;
}

void sub_135D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, std::locale a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a10);
  std::locale::~locale(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1362C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v12);
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

  sub_4A5C(&v13, v5, v6);
  std::ostream::operator<<();
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
      goto LABEL_22;
    }
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_18;
    }

    v9 = v16;
    v7 = v17 - v16;
    if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
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

LABEL_18:
  a2[v7] = 0;
  v13 = v10;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1389C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_138B0(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
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

_BYTE *sub_13A68(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_3244();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

uint64_t sub_13B38(uint64_t a1, const void *a2, size_t __len)
{
  v5 = *(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v5 >= __len - v5 + 1)
    {
      operator new();
    }

    sub_3244();
  }

  v6 = *a1;
  *(a1 + 8) = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

void sub_13C60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[4] = *(a2 + 4);
        v8 = *v7;
        sub_13D94(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_13D4C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

int *sub_13D94(uint64_t *a1, int *a2)
{
  v5 = a2 + 4;
  v4 = a2[4];
  *(v5 - 1) = v4;
  v6 = sub_13EC4(a1, v4, v5);
  v7 = a1[1];
  v8 = *(v5 - 1);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  if (v6)
  {
    *a2 = *v6;
    *v6 = a2;
    if (*a2)
    {
      v10 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v10 >= *&v7)
        {
          v10 %= *&v7;
        }
      }

      else
      {
        v10 &= *&v7 - 1;
      }

      if (v10 != v8)
      {
        v13 = (*a1 + 8 * v10);
LABEL_19:
        *v13 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v11 = *a1;
    *(*a1 + 8 * v8) = a1 + 2;
    if (*a2)
    {
      v12 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
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

      v13 = (v11 + 8 * v12);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t *sub_13EC4(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v17 = 1;
  if (v6 >= 3)
  {
    v17 = (v6 & (v6 - 1)) != 0;
  }

  v18 = v17 | (2 * v6);
  v19 = vcvtps_u32_f32(v7 / v8);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_22;
  }

  if (prime < v6)
  {
    v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
    {
      v24 = prime;
      v25 = std::__next_prime(v21);
      if (v24 <= v25)
      {
        prime = v25;
      }

      else
      {
        prime = v24;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = 1 << -__clz(v21 - 1);
      if (v21 >= 2)
      {
        v21 = v23;
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

LABEL_22:
    sub_14144(a1, prime);
  }

LABEL_38:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v16 = v10[1];
      if ((v16 & v9) != (v9 & a2))
      {
        break;
      }

      v12 = v16 == a2 && *(v10 + 4) == *a3;
      v13 = v12 != (v11 & 1);
      v14 = v11 & v13;
      v11 |= v13;
    }

    while ((v14 & 1) == 0);
    return result;
  }

LABEL_39:
  v26 = a2;
  if (v6 <= a2)
  {
    v26 = a2 % v6;
  }

  v27 = *(*a1 + 8 * v26);
  if (!v27)
  {
    return 0;
  }

  v28 = 0;
  do
  {
    result = v27;
    v27 = *v27;
    if (!v27)
    {
      break;
    }

    v32 = v27[1];
    v33 = v32;
    if (v32 >= v6)
    {
      v33 = v32 % v6;
    }

    if (v33 != v26)
    {
      break;
    }

    v29 = v32 == a2 && *(v27 + 4) == *a3;
    v30 = v29 != (v28 & 1);
    v31 = v28 & v30;
    v28 |= v30;
  }

  while (v31 != 1);
  return result;
}

void sub_14144(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_14300(void **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 4) < a4)
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
          v12 = *(v10 - 3);
          if (v12)
          {
            *(v10 - 2) = v12;
            operator delete(v12);
          }

          v10 -= 18;
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

    if (a4 <= 0x1C71C71C71C71C7)
    {
      v29 = 0x8E38E38E38E38E39 * (v7 >> 4);
      v30 = 2 * v29;
      if (2 * v29 <= a4)
      {
        v30 = a4;
      }

      if (v29 >= 0xE38E38E38E38E3)
      {
        v31 = 0x1C71C71C71C71C7;
      }

      else
      {
        v31 = v30;
      }

      if (v31 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0x8E38E38E38E38E39 * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v23 = *v5;
        v24 = v5[1];
        v25 = v5[3];
        *(v8 + 2) = v5[2];
        *(v8 + 3) = v25;
        *v8 = v23;
        *(v8 + 1) = v24;
        v26 = v5[4];
        v27 = v5[5];
        v28 = v5[6];
        *(v8 + 28) = *(v5 + 28);
        *(v8 + 5) = v27;
        *(v8 + 6) = v28;
        *(v8 + 4) = v26;
        if (v5 != v8)
        {
          sub_146EC(v8 + 15, *(v5 + 15), *(v5 + 16), (*(v5 + 16) - *(v5 + 15)) >> 2);
        }

        v5 += 9;
        v8 += 18;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v32 = *(v13 - 24);
      if (v32)
      {
        *(v13 - 16) = v32;
        operator delete(v32);
      }

      v13 -= 144;
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = v13 - v8;
      v16 = a2;
      do
      {
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[3];
        *(v8 + 2) = v16[2];
        *(v8 + 3) = v19;
        *v8 = v17;
        *(v8 + 1) = v18;
        v20 = v16[4];
        v21 = v16[5];
        v22 = v16[6];
        *(v8 + 28) = *(v16 + 28);
        *(v8 + 5) = v21;
        *(v8 + 6) = v22;
        *(v8 + 4) = v20;
        if (v16 != v8)
        {
          sub_146EC(v8 + 15, *(v16 + 15), *(v16 + 16), (*(v16 + 16) - *(v16 + 15)) >> 2);
        }

        v16 += 9;
        v8 += 18;
        v15 -= 144;
      }

      while (v15);
      v13 = a1[1];
    }

    a1[1] = sub_145B4(a1, (v5 + v14), a3, v13);
  }
}

uint64_t sub_145B4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[3];
      *(a4 + 32) = v5[2];
      *(a4 + 48) = v8;
      *a4 = v6;
      *(a4 + 16) = v7;
      v9 = v5[4];
      v10 = v5[5];
      v11 = v5[6];
      *(a4 + 112) = *(v5 + 28);
      *(a4 + 80) = v10;
      *(a4 + 96) = v11;
      *(a4 + 120) = 0;
      *(a4 + 64) = v9;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      v13 = *(v5 + 15);
      v12 = *(v5 + 16);
      if (v12 != v13)
      {
        if (((v12 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 9;
      a4 += 144;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_146C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 128) = v12;
    operator delete(v12);
  }

  sub_12688(&a9);
  _Unwind_Resume(a1);
}

char *sub_146EC(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_14848(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

uint64_t *sub_148E0(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 23);
    v4 = v3;
    v5 = result;
    if (v3 < 0)
    {
      v5 = *result;
      v4 = result[1];
      v6 = v4 - a2;
      if (v4 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v4 - a2;
      }

      if (v4 - a2 <= a3)
      {
LABEL_7:
        v8 = v4 - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(result + 23) = v8 & 0x7F;
LABEL_15:
          *(v5 + v8) = 0;
          return result;
        }

LABEL_14:
        result[1] = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - a2;
      if (v3 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v3 - a2;
      }

      if (v3 - a2 <= a3)
      {
        goto LABEL_7;
      }
    }

    v9 = result;
    memmove(v5 + a2, v5 + a2 + v7, v6 - v7);
    result = v9;
    v8 = v4 - v7;
    if ((*(v9 + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_14984(uint64_t a1, const char *a2, int a3)
{
  v6 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v6, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  strlen(a2);
  sub_14A50();
}

void sub_14A20(_Unwind_Exception *a1)
{
  sub_1F1A8(&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

void sub_14E60(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_14EC4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_parse);
}

unsigned __int8 *sub_14F1C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  do
  {
    v7 = result;
    result = sub_15D14(a1, result, a3);
  }

  while (result != v7);
  if (v7 == a2)
  {
    operator new();
  }

  if (v7 != a3 && *result == 124)
  {
    v8 = result + 1;
    v9 = result + 1;
    do
    {
      v10 = v9;
      v9 = sub_15D14(a1, v9, a3);
    }

    while (v9 != v10);
    if (v10 == v8)
    {
      operator new();
    }

    operator new();
  }

  return result;
}

unsigned __int8 *sub_15144(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      operator new();
    }

    if (a2 == a3)
    {
      v7 = a2;
    }

    else
    {
      while (1)
      {
        if (v3 == a3)
        {
          v7 = v3;
LABEL_11:
          if (v7 == a3)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        v6 = sub_1E5A8(a1, v3, a3);
        if (v6 == v3)
        {
          break;
        }

        v7 = sub_1E7D0(a1, v6, a3);
        v8 = v7 == v3;
        v3 = v7;
        if (v8)
        {
          goto LABEL_11;
        }
      }

      v7 = v3;
      if (v3 == a3)
      {
        goto LABEL_18;
      }

LABEL_14:
      if (v7 + 1 == a3 && *v7 == 36)
      {
        operator new();
      }
    }

LABEL_18:
    v3 = v7;
    if (v7 != a3)
    {
      sub_1E550();
    }
  }

  return v3;
}

unsigned __int8 *sub_152F8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_1ED34(a1, a2, a3);
  if (v6 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v7 = v6;
    v6 = sub_1ED34(a1, v6, a3);
  }

  while (v6 != v7);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  if (v7 != a3 && *v7 == 124)
  {
    v8 = v7 + 1;
    v9 = sub_1ED34(a1, v7 + 1, a3);
    if (v9 != v7 + 1)
    {
      do
      {
        v10 = v9;
        v9 = sub_1ED34(a1, v9, a3);
      }

      while (v9 != v10);
      if (v10 != v8)
      {
        operator new();
      }
    }

LABEL_11:
    sub_1E550();
  }

  return v7;
}

unsigned __int8 *sub_154A4(uint64_t a1, void *__s, unsigned __int8 *a3)
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

  sub_15144(a1, v7, v8);
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
      sub_15144(a1, v9, v11);
      operator new();
    }

    operator new();
  }

  return v9;
}

unsigned __int8 *sub_156CC(uint64_t a1, void *__s, unsigned __int8 *a3)
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

  sub_152F8(a1, v7, v8);
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
      sub_152F8(a1, v9, v11);
      operator new();
    }

    operator new();
  }

  return v9;
}

void sub_158F4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_grammar);
}

void sub_1597C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_159B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_159E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000002266263)
  {
    if (((v2 & 0x8000000002266263 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000002266263))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000002266263 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_15A54(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_15AC8(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_15B58(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_15B6C(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_15BE0(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

unsigned __int8 *sub_15C70(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  while (1)
  {
    result = sub_15DBC(a1, a2, a3);
    if (result != a2)
    {
      goto LABEL_3;
    }

    v8 = sub_161B0(a1, a2, a3);
    if (v8 == a2)
    {
      return a2;
    }

    result = sub_165AC(a1, v8, a3);
LABEL_3:
    v7 = result == a2;
    a2 = result;
    if (v7)
    {
      return result;
    }
  }
}

unsigned __int8 *sub_15D14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_15DBC(a1, a2, a3);
  if (result == a2)
  {
    v7 = sub_161B0(a1, a2, a3);
    result = a2;
    if (v7 != a2)
    {

      return sub_165AC(a1, v7, a3);
    }
  }

  return result;
}

unsigned __int8 *sub_15DBC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
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
          v7 = a2[1];
          if (v7 == 66)
          {
            operator new();
          }

          if (v7 == 98)
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

      v5 = v3 == 40;
      v4 = a2 + 1;
      v5 = !v5 || v4 == a3;
      if (!v5)
      {
        v5 = *v4 == 63;
        v8 = a2 + 2;
        if (v5 && v8 != a3)
        {
          v10 = *v8;
          if (v10 == 33)
          {
            sub_16994(v17);
            v18 = *(a1 + 24);
            sub_14A50(v17, a2 + 3, a3);
            sub_16A04();
          }

          if (v10 == 61)
          {
            sub_16994(v17);
            v18 = *(a1 + 24);
            sub_14A50(v17, a2 + 3, a3);
            sub_16A04();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_161B0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 <= 0x3E)
  {
    if (v3 != 40)
    {
      if (v3 == 46)
      {
        operator new();
      }

      if (v3 - 42 >= 2)
      {
        goto LABEL_27;
      }

LABEL_45:
      sub_18544();
    }

    v8 = a2 + 1;
    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && *v8 == 63 && a2[2] == 58)
      {
        v9 = (a1 + 36);
        ++*(a1 + 36);
        v11 = sub_14F1C(a1, a2 + 3, a3);
        if (v11 == a3)
        {
          goto LABEL_53;
        }

        v12 = v11;
        if (*v11 != 41)
        {
          goto LABEL_53;
        }

LABEL_41:
        --*v9;
        return v12 + 1;
      }

      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }

      v9 = (a1 + 36);
      ++*(a1 + 36);
      v18 = sub_14F1C(a1, v8, a3);
      if (v18 != a3)
      {
        v12 = v18;
        if (*v18 == 41)
        {
          if ((*(a1 + 24) & 2) == 0)
          {
            operator new();
          }

          goto LABEL_41;
        }
      }
    }

LABEL_53:
    sub_16ACC();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v3 == 91)
    {

      return sub_183C8(a1, a2, a3);
    }

    if (v3 == 63)
    {
      goto LABEL_45;
    }

LABEL_27:

    return sub_1859C(a1, a2, a3);
  }

  if (v3 != 92)
  {
    if (v3 == 123)
    {
      goto LABEL_45;
    }

    goto LABEL_27;
  }

  v5 = a2 + 1;
  if (a2 + 1 == a3)
  {
    sub_18720();
  }

  v7 = *v5;
  if (v7 == 48)
  {
    sub_18EEC(a1);
  }

  if ((v7 - 49) <= 8)
  {
    v13 = (v7 - 48);
    v14 = a2 + 2;
    if (a2 + 2 == a3)
    {
      goto LABEL_46;
    }

    do
    {
      v15 = *v14;
      if ((v15 - 48) > 9)
      {
        break;
      }

      if (v13 >= 0x19999999)
      {
        goto LABEL_54;
      }

      v13 = v15 + 10 * v13 - 48;
      ++v14;
    }

    while (v14 != a3);
    if (v13)
    {
LABEL_46:
      if (v13 <= *(a1 + 28))
      {
        sub_19108(a1);
      }
    }

LABEL_54:
    sub_190B0();
  }

  v21 = sub_18778(a1, v5, a3);
  v22 = a3;
  v23 = v21;
  if (v21 == v5)
  {
    v24 = sub_189F8(a1, v5, v22, 0);
    if (v24 == v5)
    {
      return a2;
    }

    else
    {
      return v24;
    }
  }

  return v23;
}

unsigned __int8 *sub_165AC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *(a1 + 24) & 0x1F0;
  v4 = *a2;
  if (v4 > 0x3E)
  {
    if (v4 == 63)
    {
      v15 = a2 + 1;
      if (v3)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15 == a3;
      }

      if (!v16 && *v15 == 63)
      {
        sub_1DB50();
      }

      sub_1DB50();
    }

    if (v4 != 123)
    {
      return a2;
    }

    if (a2 + 1 != a3)
    {
      v6 = a2[1];
      if ((v6 & 0xF8) == 0x30 || (v6 & 0xFE) == 0x38)
      {
        v7 = v6 - 48;
        v8 = a2 + 2;
        if (a2 + 2 != a3)
        {
          do
          {
            v9 = *v8;
            if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
            {
              goto LABEL_20;
            }

            if (v7 >= 214748364)
            {
              goto LABEL_66;
            }

            v7 = v9 + 10 * v7 - 48;
            ++v8;
          }

          while (v8 != a3);
          v8 = a3;
        }

LABEL_20:
        if (v8 == a3)
        {
          goto LABEL_67;
        }

        v10 = *v8;
        if (v10 != 44)
        {
          if (v10 == 125)
          {
            v11 = v8 + 1;
            if (!v3 && v11 != a3 && *v11 == 63)
            {
              sub_1DB50();
            }

            sub_1DB50();
          }

          goto LABEL_66;
        }

        if (v8 + 1 == a3)
        {
          goto LABEL_66;
        }

        v17 = v8[1];
        if (v17 == 125)
        {
          v18 = v8 + 2;
          if (v3 || v18 == a3 || *v18 != 63)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

        if ((v17 & 0xF8) != 0x30 && (v17 & 0xFE) != 0x38)
        {
          goto LABEL_67;
        }

        v19 = v17 - 48;
        v20 = v8 + 2;
        if (v20 != a3)
        {
          do
          {
            v21 = *v20;
            if ((v21 & 0xF8) != 0x30 && (v21 & 0xFE) != 0x38)
            {
              goto LABEL_57;
            }

            if (v19 >= 214748364)
            {
              goto LABEL_66;
            }

            v19 = v21 + 10 * v19 - 48;
            ++v20;
          }

          while (v20 != a3);
          v20 = a3;
        }

LABEL_57:
        if (v20 == a3 || *v20 != 125)
        {
LABEL_67:
          sub_1DD38();
        }

        if (v19 >= v7)
        {
          v22 = v20 + 1;
          if (!v3 && v22 != a3 && *v22 == 63)
          {
            sub_1DB50();
          }

          sub_1DB50();
        }
      }
    }

LABEL_66:
    sub_1DCE0();
  }

  if (v4 == 42)
  {
    v13 = a2 + 1;
    if (v3)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == a3;
    }

    if (v14 || *v13 != 63)
    {
      goto LABEL_40;
    }

LABEL_33:
    sub_1DB50();
  }

  if (v4 == 43)
  {
    v5 = a2 + 1;
    if (!v3 && v5 != a3 && *v5 == 63)
    {
      goto LABEL_33;
    }

LABEL_40:
    sub_1DB50();
  }

  return a2;
}

uint64_t sub_16994(uint64_t a1)
{
  v2 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v2, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void sub_16ACC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_paren);
}

void *sub_16B24(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_16B98(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_16C28(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void *sub_16C90(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_16D04(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_16D94(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *sub_16DE8(std::locale *a1)
{
  a1->__locale_ = off_262D9D0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_16E74(std::locale *a1)
{
  a1->__locale_ = off_262D9D0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_16F20(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *sub_17074(std::locale *a1)
{
  a1->__locale_ = off_262DA18;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1714C(std::locale *a1)
{
  a1->__locale_ = off_262DA18;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_17244(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0uLL;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  __p = 0;
  v18 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v19 = 0;
  *&v20 = v5;
  *(&v20 + 1) = v5;
  v21 = 0;
  sub_1788C(&__p, v4, &v20);
  v22 = v6;
  v23 = v6;
  v24 = 0;
  v25 = v20;
  v26 = v21;
  v28 = v6;
  v27 = 1;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == sub_173CC(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &v9[24 * v14];
    v16 = v12 + 24 * v11;
    *v16 = *v15;
    *(v16 + 16) = v15[16];
    v14 = v13;
    ++v11;
    ++v13;
  }

  while (v10 > v14);
LABEL_11:
  v18 = v9;
  operator delete(v9);
}

void sub_173AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_173CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  *&v50 = a3;
  *(&v50 + 1) = a3;
  v51 = 0;
  *v47 = 0;
  memset(&v47[8], 0, 48);
  *__p = 0u;
  memset(v49, 0, 21);
  v53 = sub_17BEC(&v52, v47);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v47[32])
  {
    *&v47[40] = *&v47[32];
    operator delete(*&v47[32]);
  }

  v13 = v53;
  *(v53 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_17F18(v13 - 8, v15 - v16, &v50);
    v13 = v53;
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    sub_180E4(v13 - 40, v19 - v20);
    v13 = v53;
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      sub_17AB8();
    }

    v23 = (v13 - 6);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          sub_18238(v47, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 6);
          (*(*v49[1] + 24))(v49[1], 0, v47);
          v30 = v53;
          if (v53 >= v54)
          {
            v53 = sub_17BEC(&v52, v47);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v31 = *&v47[16];
            *v53 = *v47;
            v30[1] = v31;
            *(v30 + 6) = 0;
            *(v30 + 7) = 0;
            *(v30 + 4) = 0;
            *(v30 + 5) = 0;
            v30[2] = *&v47[32];
            *(v30 + 6) = *&v47[48];
            *&v47[32] = 0;
            *&v47[40] = 0;
            *(v30 + 8) = 0;
            *(v30 + 9) = 0;
            *(v30 + 56) = *__p;
            *(v30 + 9) = v49[0];
            *&v47[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v49[0] = 0;
            v32 = v49[1];
            *(v30 + 85) = *(&v49[1] + 5);
            *(v30 + 10) = v32;
            v53 = v30 + 6;
          }

          if (*&v47[32])
          {
            *&v47[40] = *&v47[32];
            operator delete(*&v47[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v52;
    v13 = v53;
    ++v21;
    if (v52 == v53)
    {
      v17 = 0;
      if (!v52)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_60:
    sub_17B10();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v53;
    v28 = *(v53 - 5);
    if (v28)
    {
      *(v53 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v53 = v27 - 6;
    goto LABEL_17;
  }

  v38 = *a4;
  *v38 = a2;
  *(v38 + 8) = v26;
  *(v38 + 16) = 1;
  v39 = *(v13 - 8);
  v40 = *(v13 - 7) - v39;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    v42 = (v39 + 16);
    v43 = 1;
    do
    {
      v44 = v38 + 24 * v43;
      *v44 = *(v42 - 1);
      v45 = *v42;
      v42 += 24;
      *(v44 + 16) = v45;
    }

    while (v41 > v43++);
  }

  v17 = 1;
  v22 = v52;
  if (v52)
  {
LABEL_44:
    v33 = v53;
    v34 = v22;
    if (v53 != v22)
    {
      do
      {
        v35 = *(v33 - 5);
        if (v35)
        {
          *(v33 - 4) = v35;
          operator delete(v35);
        }

        v36 = *(v33 - 8);
        if (v36)
        {
          *(v33 - 7) = v36;
          operator delete(v36);
        }

        v33 -= 6;
      }

      while (v33 != v22);
      v34 = v52;
    }

    v53 = v22;
    operator delete(v34);
  }

  return v17;
}

void sub_1781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_17A74(&a9);
  sub_17B68((v9 - 104));
  _Unwind_Resume(a1);
}

char *sub_1788C(char **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = *(a3 + 16);
    if (v12 == 1)
    {
      v16 = 1;
      v17 = result;
    }

    else
    {
      v17 = &result[24 * (v12 & 0xFFFFFFFFFFFFFFFELL)];
      v16 = v12 & 1;
      v18 = result + 24;
      v19 = v12 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v18 - 3) = v13;
        *(v18 - 2) = v14;
        *v18 = v13;
        *(v18 + 1) = v14;
        *(v18 - 8) = v15;
        v18[16] = v15;
        v18 += 48;
        v19 -= 2;
      }

      while (v19);
      if (v12 == (v12 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_22;
      }
    }

    do
    {
      *v17 = v13;
      *(v17 + 1) = v14;
      v17[16] = v15;
      v17 += 24;
      --v16;
    }

    while (v16);
  }

LABEL_22:
  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v20 = &v10[24 * (a2 - v11)];
    v21 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v22 = *a3;
      *(v10 + 2) = a3[2];
      *v10 = v22;
      v10 += 24;
      v21 -= 24;
    }

    while (v21);
    a1[1] = v20;
  }

  return result;
}

void *sub_17A74(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_17AB8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_complexity);
}

void sub_17B10()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_unknown);
}

void **sub_17B68(void **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_17BEC(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 96 * v2;
  __p = 0;
  v17 = v6;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 56) = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v6 + 85) = *(a2 + 85);
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  v18 = 96 * v2 + 96;
  v19 = 0;
  sub_17D78(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  while (1)
  {
    v12 = v18;
    if (v18 == v11)
    {
      break;
    }

    v18 -= 96;
    v13 = *(v12 - 40);
    if (v13)
    {
      *(v12 - 32) = v13;
      operator delete(v13);
    }

    v14 = *(v12 - 64);
    if (v14)
    {
      *(v12 - 56) = v14;
      operator delete(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_17D64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_17EA0(va);
  _Unwind_Resume(a1);
}

void sub_17D78(void *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v10 = v7[10];
      *(v8 + 85) = *(v7 + 85);
      *(v8 + 80) = v10;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v4);
    do
    {
      v11 = v5[7];
      if (v11)
      {
        v5[8] = v11;
        operator delete(v11);
      }

      v12 = v5[4];
      if (v12)
      {
        v5[5] = v12;
        operator delete(v12);
      }

      v5 += 12;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t sub_17EA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_17F18(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      do
      {
        v11 = *a3;
        *(v3 + 16) = *(a3 + 2);
        *v3 = v11;
        v3 += 24;
        v10 -= 24;
      }

      while (v10);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 24 * a2;
    v13 = 24 * v5;
    do
    {
      v14 = *a3;
      *(v13 + 16) = *(a3 + 2);
      *v13 = v14;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v15 = *a1;
    v16 = a1[1];
    v17 = 24 * v5 + *a1 - v16;
    if (v16 != *a1)
    {
      v18 = 24 * v5 + *a1 - v16;
      do
      {
        v19 = *v15;
        *(v18 + 16) = v15[2];
        *v18 = v19;
        v18 += 24;
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    a1[1] = 24 * v5 + 24 * a2;
    a1[2] = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_180E4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_1794();
    }

    v8 = v3 - v5;
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
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_18238(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(result + 32) = 0;
  *result = v2;
  *(result + 16) = v3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  v5 = *(a2 + 4);
  v4 = *(a2 + 5);
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *(a2 + 10);
  *(result + 85) = *(a2 + 85);
  *(result + 80) = v8;
  return result;
}

void sub_18394(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_183C8(uint64_t a1, _BYTE *a2, _BYTE *a3)
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

void sub_18544()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badrepeat);
}

unsigned __int8 *sub_1859C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_18EEC(a1);
    }
  }

  return a2;
}

void *sub_1861C(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_18690(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

void sub_18720()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_escape);
}

unsigned __int8 *sub_18778(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
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

unsigned __int8 *sub_189F8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
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

        goto LABEL_79;
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

        goto LABEL_79;
      }
    }

    else
    {
      switch(v4)
      {
        case 'u':
          if (a2 + 1 == a3)
          {
            goto LABEL_95;
          }

          v9 = a2[1];
          if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
          {
            goto LABEL_95;
          }

          a2 += 2;
          if (a2 == a3)
          {
            goto LABEL_95;
          }

          v10 = *a2;
          v11 = -48;
          if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
          {
            v10 |= 0x20u;
            if ((v10 - 97) >= 6)
            {
              goto LABEL_95;
            }

            v11 = -87;
          }

          v5 = 16 * (v11 + v10);
LABEL_46:
          if (a2 + 1 == a3)
          {
            goto LABEL_95;
          }

          v12 = a2[1];
          v13 = -48;
          if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
          {
            v12 |= 0x20u;
            if ((v12 - 97) >= 6)
            {
              goto LABEL_95;
            }

            v13 = -87;
          }

          if (a2 + 2 != a3)
          {
            v14 = a2[2];
            v15 = -48;
            if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
            {
              goto LABEL_56;
            }

            v14 |= 0x20u;
            if ((v14 - 97) < 6)
            {
              v15 = -87;
LABEL_56:
              v16 = v15 + v14 + 16 * (v13 + v5 + v12);
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

              *a4 = v16;
              *(a4 + 1) = 0;
              return a2 + 3;
            }
          }

LABEL_95:
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

          goto LABEL_79;
        case 'x':
          v5 = 0;
          goto LABEL_46;
      }
    }

    goto LABEL_74;
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

      goto LABEL_79;
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

      goto LABEL_79;
    }

LABEL_74:
    if ((v4 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
    {
      goto LABEL_95;
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

LABEL_79:
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

    goto LABEL_79;
  }

  if (v4 != 99)
  {
    if (v4 == 95)
    {
      goto LABEL_95;
    }

    goto LABEL_74;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_95;
  }

  v6 = a2[1];
  if (((v6 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_95;
  }

  v7 = v6 & 0x1F;
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

  *a4 = v7;
  *(a4 + 1) = 0;
  return a2 + 2;
}

void sub_18EEC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_19064()
{
  std::locale::~locale(v0 + 2);
  v0->__locale_ = off_262D910;
  locale = v0[1].__locale_;
  if (locale)
  {
    sub_21E0BD4(locale);
  }

  operator delete();
}

void sub_190B0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_backref);
}

void sub_19108(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *sub_19240(std::locale *a1)
{
  a1->__locale_ = off_262DAA8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_192CC(std::locale *a1)
{
  a1->__locale_ = off_262DAA8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_19378(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *sub_19418(std::locale *a1)
{
  a1->__locale_ = off_262DAF0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_194A4(std::locale *a1)
{
  a1->__locale_ = off_262DAF0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_19550(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void *sub_19598(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1960C(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1969C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *sub_196E4(std::locale *a1)
{
  a1->__locale_ = off_262DB80;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_19770(std::locale *a1)
{
  a1->__locale_ = off_262DB80;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1981C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  if (v4 >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v7));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v7));
      if (v8 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v7)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *sub_1994C(std::locale *a1)
{
  a1->__locale_ = off_262DBC8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_199D8(std::locale *a1)
{
  a1->__locale_ = off_262DBC8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_19A84(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = *(a2 + 16);
    v7 = v4;
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v6++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v7);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_19B10(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_19B84(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_19C14(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_190B0();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) == 1 && (v6 = v4, v5 = *v4, v7 = *(v6 + 8) - v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (v9 = result, v10 = a2, result = memcmp(v5, *(a2 + 16), v7), a2 = v10, !result))
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void sub_19CE8(uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    if (v7 < v6)
    {
      *v7 = a2;
      *(a1 + 48) = v7 + 1;
      return;
    }

    v8 = *(a1 + 40);
    v13 = (v7 - v8);
    v14 = v7 - v8 + 1;
    if (v14 >= 0)
    {
      v15 = v6 - v8;
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        operator new();
      }

      v19 = v7 - v8;
      *v13 = a2;
      v18 = v13 + 1;
      memcpy(0, v8, v19);
      *(a1 + 40) = 0;
      *(a1 + 48) = v13 + 1;
      *(a1 + 56) = 0;
      if (v8)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_1794();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 48) = v5 + 1;
    return;
  }

  v8 = *(a1 + 40);
  v9 = (v5 - v8);
  v10 = v5 - v8 + 1;
  if (v10 < 0)
  {
    goto LABEL_26;
  }

  v11 = v4 - v8;
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    operator new();
  }

  v17 = v5 - v8;
  *v9 = v3;
  v18 = v9 + 1;
  memcpy(0, v8, v17);
  *(a1 + 40) = 0;
  *(a1 + 48) = v9 + 1;
  *(a1 + 56) = 0;
  if (v8)
  {
LABEL_23:
    operator delete(v8);
    *(a1 + 48) = v18;
    return;
  }

LABEL_25:
  *(a1 + 48) = v18;
}

uint64_t sub_19F04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_262DC58;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1A044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  sub_1A104((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    sub_1AA90(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_1AA90(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void ***sub_1A104(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
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

void sub_1A17C(std::locale *a1)
{
  sub_1AB84(a1);

  operator delete();
}

void sub_1A1B4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v23 = 0;
    v24 = *(a1 + 168);
    goto LABEL_54;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_31;
  }

  LOBYTE(v110[0]) = *v4;
  v6 = v4[1];
  BYTE1(v110[0]) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(v110[0]) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    BYTE1(v110[0]) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_1AE5C(a1 + 16, v110, v110 + 2, &__p);
  if (v115 < 0)
  {
    v25 = v114;
    operator delete(__p);
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_31:
    v24 = 0;
    v23 = 1;
    goto LABEL_32;
  }

  if (!v115)
  {
    goto LABEL_31;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (LOBYTE(v110[0]) != *(v10 - 1) || BYTE1(v110[0]) != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_220;
  }

LABEL_17:
  if (*(a1 + 170) != 1 || *(a1 + 88) == *(a1 + 96))
  {
LABEL_174:
    if (*(a1 + 136) == *(a1 + 144))
    {
      v85 = 0;
      goto LABEL_202;
    }

    sub_1B118(a1 + 16, v110, v110 + 2, &__p);
    v86 = *(a1 + 136);
    v87 = v115;
    v88 = *(a1 + 144) - v86;
    if (v88)
    {
      v89 = v2;
      v90 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
      if (v115 >= 0)
      {
        v91 = v115;
      }

      else
      {
        v91 = v114;
      }

      if (v115 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v90 <= 1)
      {
        v93 = 1;
      }

      else
      {
        v93 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
      }

      v94 = 1;
      v95 = 1;
      do
      {
        v96 = *(v86 + 23);
        v97 = v96;
        if ((v96 & 0x80u) != 0)
        {
          v96 = *(v86 + 8);
        }

        if (v91 == v96)
        {
          v98 = v97 >= 0 ? v86 : *v86;
          if (!memcmp(p_p, v98, v91))
          {
            v85 = 1;
            v69 = 5;
            v2 = v89;
            if ((v87 & 0x80) == 0)
            {
              goto LABEL_199;
            }

            goto LABEL_198;
          }
        }

        v95 = v94++ < v90;
        v86 += 24;
        --v93;
      }

      while (v93);
      v69 = 0;
      v85 = 0;
      v2 = v89;
      if ((v87 & 0x80) == 0)
      {
        goto LABEL_199;
      }
    }

    else
    {
      v95 = 0;
      v69 = 0;
      v85 = 0;
      if ((v115 & 0x80) == 0)
      {
LABEL_199:
        if (v95)
        {
          goto LABEL_200;
        }

LABEL_202:
        if (SLOBYTE(v110[0]) < 0)
        {
          v102 = *(a1 + 164);
        }

        else
        {
          v99 = *(a1 + 160);
          v100 = *(*(a1 + 24) + 16);
          v101 = *(v100 + 4 * LOBYTE(v110[0]));
          if (((v101 & v99) != 0 || LOBYTE(v110[0]) == 95 && (v99 & 0x80) != 0) && (SBYTE1(v110[0]) & 0x8000000000000000) == 0 && ((*(v100 + 4 * SBYTE1(v110[0])) & v99) != 0 || (v99 & 0x80) != 0 && SBYTE1(v110[0]) == 95))
          {
            goto LABEL_220;
          }

          v102 = *(a1 + 164);
          if ((v101 & v102) != 0 || LOBYTE(v110[0]) == 95 && (v102 & 0x80) != 0)
          {
LABEL_219:
            v24 = v85;
LABEL_221:
            v23 = 2;
            goto LABEL_54;
          }
        }

        if ((SBYTE1(v110[0]) & 0x8000000000000000) == 0)
        {
          if ((*(*(*(a1 + 24) + 16) + 4 * SBYTE1(v110[0])) & v102) == 0)
          {
            v24 = 1;
            if (SBYTE1(v110[0]) != 95 || (v102 & 0x80) == 0)
            {
              goto LABEL_221;
            }
          }

          goto LABEL_219;
        }

LABEL_220:
        v24 = 1;
        goto LABEL_221;
      }
    }

LABEL_198:
    operator delete(__p);
    goto LABEL_199;
  }

  v12 = &__p;
  sub_1AD00(a1 + 16, v110, v110 + 2);
  v13 = *(a1 + 88);
  v14 = v115;
  v15 = *(a1 + 96) - v13;
  if (!v15)
  {
    v22 = 0;
    v69 = 0;
    goto LABEL_170;
  }

  v105 = v2;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
  if (v115 < 0)
  {
    v12 = __p;
  }

  v17 = v115;
  if (v115 >= 0)
  {
    v18 = v115;
  }

  else
  {
    v18 = v114;
  }

  if (v16 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
  }

  v20 = (v13 + 47);
  v21 = 1;
  v22 = 1;
  do
  {
    v59 = *(v20 - 24);
    if (v59 >= 0)
    {
      v60 = (v20 - 47);
    }

    else
    {
      v60 = *(v20 - 47);
    }

    if (v59 >= 0)
    {
      v61 = *(v20 - 24);
    }

    else
    {
      v61 = *(v20 - 39);
    }

    if (v18 >= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = v18;
    }

    v63 = memcmp(v60, v12, v62);
    if (v63)
    {
      if ((v63 & 0x80000000) == 0)
      {
        goto LABEL_104;
      }
    }

    else if (v61 > v18)
    {
      goto LABEL_104;
    }

    v64 = *v20;
    if (v64 >= 0)
    {
      v65 = (v20 - 23);
    }

    else
    {
      v65 = *(v20 - 23);
    }

    if (v64 >= 0)
    {
      v66 = *v20;
    }

    else
    {
      v66 = *(v20 - 15);
    }

    if (v66 >= v18)
    {
      v67 = v18;
    }

    else
    {
      v67 = v66;
    }

    v68 = memcmp(v12, v65, v67);
    if (v68)
    {
      if (v68 < 0)
      {
LABEL_129:
        v69 = 5;
        goto LABEL_168;
      }
    }

    else if (v18 <= v66)
    {
      goto LABEL_129;
    }

LABEL_104:
    v22 = v21++ < v16;
    v20 += 48;
    --v19;
  }

  while (v19);
  v69 = 0;
LABEL_168:
  v2 = v105;
  v14 = v17;
LABEL_170:
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (!v22)
  {
    goto LABEL_174;
  }

  v85 = 1;
LABEL_200:
  v23 = 2;
  v24 = v85;
  if (v69)
  {
    goto LABEL_54;
  }

LABEL_32:
  v26 = **(v2 + 16);
  v112 = **(v2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v26) = (*(**(a1 + 24) + 40))(*(a1 + 24), v26);
    v112 = v26;
  }

  v27 = *(a1 + 40);
  v28 = *(a1 + 48) - v27;
  if (v28)
  {
    if (v28 <= 1)
    {
      v28 = 1;
    }

    do
    {
      v29 = *v27++;
      if (v29 == v26)
      {
        goto LABEL_53;
      }

      --v28;
    }

    while (v28);
  }

  v30 = *(a1 + 164);
  if (v30 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v26 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v30) == 0)
    {
      v31 = (v26 == 95) & (v30 >> 7);
    }

    else
    {
      LOBYTE(v31) = 1;
    }

    v32 = *(a1 + 72);
    v33 = memchr(*(a1 + 64), v26, v32 - *(a1 + 64));
    v34 = !v33 || v33 == v32;
    v35 = !v34;
    if ((v31 & 1) == 0 && !v35)
    {
      goto LABEL_53;
    }
  }

  v38 = *(a1 + 88);
  v39 = *(a1 + 96);
  if (v38 == v39)
  {
    goto LABEL_134;
  }

  v108 = v24;
  if (*(a1 + 170) == 1)
  {
    v115 = 1;
    LOWORD(__p) = v26;
    (*(**(a1 + 32) + 32))(v110);
    if (v115 < 0)
    {
      operator delete(__p);
    }

    v38 = *(a1 + 88);
    v40 = v111;
    v41 = *(a1 + 96) - v38;
    if (!v41)
    {
LABEL_63:
      v42 = 0;
      if ((v40 & 0x80) != 0)
      {
        goto LABEL_132;
      }

      goto LABEL_133;
    }
  }

  else
  {
    v111 = 1;
    LOWORD(v110[0]) = v26;
    v40 = 1;
    v41 = v39 - v38;
    if (!v41)
    {
      goto LABEL_63;
    }
  }

  v104 = v23;
  v106 = v2;
  v43 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 4);
  if ((v40 & 0x80u) == 0)
  {
    v44 = v110;
  }

  else
  {
    v44 = v110[0];
  }

  v103 = v40;
  if ((v40 & 0x80u) == 0)
  {
    v45 = v40;
  }

  else
  {
    v45 = v110[1];
  }

  if (v43 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 4);
  }

  v47 = (v38 + 47);
  v48 = 1;
  v42 = 1;
  while (2)
  {
    v49 = *(v47 - 24);
    if (v49 >= 0)
    {
      v50 = (v47 - 47);
    }

    else
    {
      v50 = *(v47 - 47);
    }

    if (v49 >= 0)
    {
      v51 = *(v47 - 24);
    }

    else
    {
      v51 = *(v47 - 39);
    }

    if (v45 >= v51)
    {
      v52 = v51;
    }

    else
    {
      v52 = v45;
    }

    v53 = memcmp(v50, v44, v52);
    if (v53)
    {
      if (v53 < 0)
      {
        goto LABEL_91;
      }
    }

    else if (v51 <= v45)
    {
LABEL_91:
      v54 = *v47;
      if (v54 >= 0)
      {
        v55 = (v47 - 23);
      }

      else
      {
        v55 = *(v47 - 23);
      }

      if (v54 >= 0)
      {
        v56 = *v47;
      }

      else
      {
        v56 = *(v47 - 15);
      }

      if (v56 >= v45)
      {
        v57 = v45;
      }

      else
      {
        v57 = v56;
      }

      v58 = memcmp(v44, v55, v57);
      if (v58)
      {
        if (v58 < 0)
        {
LABEL_102:
          v24 = 1;
          v2 = v106;
          goto LABEL_131;
        }
      }

      else if (v45 <= v56)
      {
        goto LABEL_102;
      }
    }

    v42 = v48++ < v43;
    v47 += 48;
    if (--v46)
    {
      continue;
    }

    break;
  }

  v2 = v106;
  v24 = v108;
LABEL_131:
  v23 = v104;
  if (v103 < 0)
  {
LABEL_132:
    operator delete(v110[0]);
  }

LABEL_133:
  if (!v42)
  {
LABEL_134:
    if (*(a1 + 136) != *(a1 + 144))
    {
      v70 = v23;
      v71 = &__p;
      sub_1B118(a1 + 16, &v112, &__p, &__p);
      v72 = *(a1 + 136);
      v73 = v115;
      v74 = *(a1 + 144) - v72;
      if (v74)
      {
        v109 = v24;
        v107 = v2;
        v75 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
        if (v115 >= 0)
        {
          v76 = v115;
        }

        else
        {
          v76 = v114;
        }

        if (v115 < 0)
        {
          v71 = __p;
        }

        if (v75 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
        }

        v78 = 1;
        v79 = 1;
        do
        {
          v80 = *(v72 + 23);
          v81 = v80;
          if ((v80 & 0x80u) != 0)
          {
            v80 = *(v72 + 8);
          }

          if (v76 == v80)
          {
            v82 = v81 >= 0 ? v72 : *v72;
            if (!memcmp(v71, v82, v76))
            {
              v24 = 1;
              v2 = v107;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_157;
              }

              goto LABEL_156;
            }
          }

          v79 = v78++ < v75;
          v72 += 24;
          --v77;
        }

        while (v77);
        v2 = v107;
        v24 = v109;
        if ((v73 & 0x80) == 0)
        {
          goto LABEL_157;
        }

LABEL_156:
        operator delete(__p);
      }

      else
      {
        v79 = 0;
        if (v115 < 0)
        {
          goto LABEL_156;
        }
      }

LABEL_157:
      if (v79)
      {
        v23 = v70;
        goto LABEL_54;
      }

      LOBYTE(v26) = v112;
      v23 = v70;
    }

    v83 = *(a1 + 160);
    if ((v26 & 0x80) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v83) == 0)
    {
      v84 = (v83 >> 7) & 1;
      if (v26 != 95)
      {
        LOBYTE(v84) = 0;
      }

      v24 |= v84;
      goto LABEL_54;
    }

LABEL_53:
    v24 = 1;
  }

LABEL_54:
  if (*(a1 + 168) == (v24 & 1))
  {
    v36 = 0;
    v37 = -993;
  }

  else
  {
    *(v2 + 16) += v23;
    v36 = *(a1 + 8);
    v37 = -995;
  }

  *v2 = v37;
  *(v2 + 80) = v36;
}

void sub_1AA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_1AA90(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_1AB28(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

std::locale *sub_1AB84(std::locale *a1)
{
  a1->__locale_ = off_262DC58;
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_262D910;
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void sub_1AD00(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  v8 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v3);
  }

  *(__dst + v3) = 0;
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1AE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
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
    memcpy(&__dst, a2, v5);
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

void sub_1B0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_1B118(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
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

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
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

  (*(**(a1 + 16) + 32))(*(a1 + 16), v8, v8 + v7);
  v9 = *(a4 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9 == 1)
  {
    goto LABEL_23;
  }

  if (v9 != 12)
  {
    if (v10 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v11[11] = v11[3];
  if (v13 < 0)
  {
    goto LABEL_26;
  }
}

void sub_1B2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2D8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brack);
}

void sub_1B330(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 != 93)
    {
      v7 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v39 = 0;
      if (a2 + 1 != a3 && v4 == 91)
      {
        v8 = a2[1];
        switch(v8)
        {
          case '.':
            if (a3 - (a2 + 2) >= 2)
            {
              v13 = a3 - a2 - 4;
              v14 = a2 + 2;
              v15 = a2 + 3;
              if (a2[2] != 46)
              {
                goto LABEL_18;
              }

LABEL_17:
              if (*v15 == 93)
              {
                if (v14 != a3)
                {
                  v19 = a1;
                  sub_1CA6C(a1, a2 + 2, v14, &v40);
                  a1 = v19;
                  if (SHIBYTE(v39) < 0)
                  {
                    operator delete(__p[0]);
                    a1 = v19;
                  }

                  v39 = v41;
                  *__p = v40;
                  v20 = HIBYTE(v41);
                  v7 = SHIBYTE(v41);
                  v21 = *(&v40 + 1);
                  if (v41 < 0)
                  {
                    v20 = __p[1];
                  }

                  if ((v20 - 1) >= 2)
                  {
                    sub_1CA14();
                  }

                  a2 = v14 + 2;
                  v17 = *(a1 + 24) & 0x1F0;
                  if (v41 >= 0)
                  {
                    v21 = SHIBYTE(v41);
                  }

                  if (v21)
                  {
                    v18 = v14 + 2;
                    if (a2 == a3)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_49;
                  }

LABEL_34:
                  if ((v17 | 0x40) == 0x40)
                  {
                    v22 = *a2;
                    if (v22 == 92)
                    {
                      v23 = a1;
                      if (v17)
                      {
                        v24 = sub_1BFB0(a1, a2 + 1, a3, __p);
                      }

                      else
                      {
                        v24 = sub_1BDC0(a1, a2 + 1, a3, __p, a4);
                      }

                      v18 = v24;
                      a1 = v23;
                      if (v18 == a3)
                      {
                        goto LABEL_50;
                      }

                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    LOBYTE(v22) = *a2;
                  }

                  if (v7 < 0)
                  {
                    v26 = __p[0];
                    __p[1] = &dword_0 + 1;
                    *__p[0] = v22;
                    v26[1] = 0;
                    v18 = a2 + 1;
                    if (a2 + 1 == a3)
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    HIBYTE(v39) = 1;
                    LOWORD(__p[0]) = v22;
                    v18 = a2 + 1;
                    if (a2 + 1 == a3)
                    {
                      goto LABEL_50;
                    }
                  }

LABEL_49:
                  v27 = *v18;
                  if (v27 == 93)
                  {
LABEL_50:
                    if ((SHIBYTE(v39) & 0x80000000) == 0)
                    {
                      if (!HIBYTE(v39))
                      {
                        goto LABEL_80;
                      }

                      v28 = __p;
                      if (HIBYTE(v39) != 1)
                      {
                        v29 = LOBYTE(__p[0]);
                        v30 = BYTE1(__p[0]);
                        if (*(a4 + 169) == 1)
                        {
LABEL_54:
                          v31 = (*(**(a4 + 24) + 40))(*(a4 + 24), v29);
                          LOWORD(v40) = v31 | ((*(**(a4 + 24) + 40))(*(a4 + 24), v30) << 8);
                          sub_1D7D0(a4 + 112, &v40);
                          goto LABEL_80;
                        }

                        goto LABEL_65;
                      }

                      goto LABEL_69;
                    }

                    if (!__p[1])
                    {
                      goto LABEL_80;
                    }

                    if (__p[1] != &dword_0 + 1)
                    {
                      v29 = *__p[0];
                      v30 = *(__p[0] + 1);
                      if (*(a4 + 169) == 1)
                      {
                        goto LABEL_54;
                      }

LABEL_65:
                      LOWORD(v40) = v29 | (v30 << 8);
                      sub_1D7D0(a4 + 112, &v40);
                      goto LABEL_80;
                    }

                    goto LABEL_68;
                  }

                  v32 = v18 + 1;
                  if (v18 + 1 == a3 || v27 != 45 || *v32 == 93)
                  {
                    if (SHIBYTE(v39) < 0)
                    {
                      if (!__p[1])
                      {
                        goto LABEL_80;
                      }

                      if (__p[1] == &dword_0 + 1)
                      {
LABEL_68:
                        v28 = __p[0];
LABEL_69:
                        sub_19CE8(a4, *v28);
                        goto LABEL_80;
                      }

                      v28 = __p[0];
                    }

                    else
                    {
                      if (!HIBYTE(v39))
                      {
                        goto LABEL_80;
                      }

                      v28 = __p;
                      if (HIBYTE(v39) == 1)
                      {
                        goto LABEL_69;
                      }
                    }

                    sub_1C90C(a4, *v28, v28[1]);
LABEL_80:
                    if (SHIBYTE(v39) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    return;
                  }

                  v40 = 0uLL;
                  v41 = 0;
                  v33 = v18 + 2;
                  if (v18 + 2 != a3 && *v32 == 91 && *v33 == 46)
                  {
                    sub_1BCEC(a1, v18 + 3, a3, &v40);
                    goto LABEL_86;
                  }

                  if ((v17 | 0x40) == 0x40)
                  {
                    LODWORD(v32) = *v32;
                    if (v32 == 92)
                    {
                      if (v17)
                      {
                        sub_1BFB0(a1, v33, a3, &v40);
                      }

                      else
                      {
                        sub_1BDC0(a1, v33, a3, &v40, a4);
                      }

LABEL_86:
                      *v36 = *__p;
                      v37 = v39;
                      __p[1] = 0;
                      v39 = 0;
                      __p[0] = 0;
                      *v34 = v40;
                      v35 = v41;
                      v40 = 0uLL;
                      v41 = 0;
                      sub_1C470(a4, v36, v34);
                      if (SHIBYTE(v35) < 0)
                      {
                        operator delete(v34[0]);
                        if ((SHIBYTE(v37) & 0x80000000) == 0)
                        {
LABEL_88:
                          if ((SHIBYTE(v41) & 0x80000000) == 0)
                          {
                            goto LABEL_80;
                          }

                          goto LABEL_92;
                        }
                      }

                      else if ((SHIBYTE(v37) & 0x80000000) == 0)
                      {
                        goto LABEL_88;
                      }

                      operator delete(v36[0]);
                      if ((SHIBYTE(v41) & 0x80000000) == 0)
                      {
                        goto LABEL_80;
                      }

LABEL_92:
                      operator delete(v40);
                      goto LABEL_80;
                    }
                  }

                  else
                  {
                    LOBYTE(v32) = *v32;
                  }

                  HIBYTE(v41) = 1;
                  LOWORD(v40) = v32;
                  goto LABEL_86;
                }
              }

              else
              {
LABEL_18:
                while (v13)
                {
                  --v13;
                  v14 = v15;
                  v16 = *v15++;
                  if (v16 == 46)
                  {
                    goto LABEL_17;
                  }
                }
              }
            }

            break;
          case ':':
            if (a3 - (a2 + 2) >= 2)
            {
              v9 = a3 - a2 - 4;
              v10 = a2 + 2;
              v11 = a2 + 3;
              if (a2[2] != 58)
              {
                goto LABEL_12;
              }

LABEL_11:
              if (*v11 == 93)
              {
                if (v10 != a3)
                {
                  v25 = sub_1D0FC(a1, a2 + 2, v10, *(a1 + 24) & 1);
                  if (!v25)
                  {
                    sub_1D0A4();
                  }

                  *(a4 + 160) |= v25;
                  goto LABEL_80;
                }
              }

              else
              {
LABEL_12:
                while (v9)
                {
                  --v9;
                  v10 = v11;
                  v12 = *v11++;
                  if (v12 == 58)
                  {
                    goto LABEL_11;
                  }
                }
              }
            }

            break;
          case '=':
            sub_1B9E4(a1, a2 + 2, a3, a4);
            goto LABEL_80;
          default:
            v7 = 0;
            goto LABEL_22;
        }

        sub_1B2D8();
      }

LABEL_22:
      v17 = *(a1 + 24) & 0x1F0;
      goto LABEL_34;
    }
  }
}

void sub_1B954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_1B9E4(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_41;
  }

  v7 = a2;
  v8 = a2 + 1;
  if (*a2 != 61)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v8 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v7 = v8;
      v9 = *v8++;
      if (v9 == 61)
      {
        goto LABEL_3;
      }
    }

LABEL_41:
    sub_1B2D8();
  }

  if (v7 == a3)
  {
    goto LABEL_41;
  }

  sub_1CA6C(a1, a2, v7, &v24);
  v10 = v26;
  if ((v26 & 0x8000000000000000) == 0)
  {
    if (v26)
    {
      v11 = &v24;
      goto LABEL_13;
    }

LABEL_42:
    sub_1CA14();
  }

  v10 = v25;
  if (!v25)
  {
    goto LABEL_42;
  }

  v11 = v24;
LABEL_13:
  sub_1CD28(a1, v11, &v11[v10], __p);
  v12 = HIBYTE(v23);
  if (v23 < 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    v13 = *(a4 + 144);
    if (v13 >= *(a4 + 152))
    {
      *(a4 + 144) = sub_1CEE8(a4 + 136, __p);
      if (SHIBYTE(v23) < 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (SHIBYTE(v23) < 0)
      {
        sub_325C(*(a4 + 144), __p[0], __p[1]);
      }

      else
      {
        v14 = *__p;
        *(v13 + 16) = v23;
        *v13 = v14;
      }

      *(a4 + 144) = v13 + 24;
      *(a4 + 144) = v13 + 24;
      if (SHIBYTE(v23) < 0)
      {
        goto LABEL_27;
      }
    }

LABEL_39:
    if (v26 < 0)
    {
      goto LABEL_28;
    }

    return v7 + 2;
  }

  v15 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v15 = v25;
  }

  if (v15 == 2)
  {
    v18 = v24;
    if ((v26 & 0x80u) == 0)
    {
      v18 = &v24;
    }

    v19 = *v18;
    v20 = v18[1];
    if (*(a4 + 169) == 1)
    {
      v21 = (*(**(a4 + 24) + 40))(*(a4 + 24), v19);
      v27 = v21 | ((*(**(a4 + 24) + 40))(*(a4 + 24), v20) << 8);
    }

    else
    {
      v27 = v19 | (v20 << 8);
    }

    sub_1D7D0(a4 + 112, &v27);
  }

  else
  {
    if (v15 != 1)
    {
      sub_1CA14();
    }

    v16 = &v24;
    if ((v26 & 0x80u) != 0)
    {
      v16 = v24;
    }

    sub_19CE8(a4, *v16);
  }

  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_27:
  operator delete(__p[0]);
  if (v26 < 0)
  {
LABEL_28:
    operator delete(v24);
    return v7 + 2;
  }

  return v7 + 2;
}

void sub_1BC90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 144) = v22;
  if (a15 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_7:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_7;
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1BCEC(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = a2 + 1;
  if (*a2 != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    sub_1B2D8();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  sub_1CA6C(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_1CA14();
  }

  return v6 + 2;
}

unsigned __int8 *sub_1BDC0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
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

      goto LABEL_25;
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      goto LABEL_25;
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

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

LABEL_25:

      return sub_189F8(a1, a2, a3, a4);
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

unsigned __int8 *sub_1BFB0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_75;
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
      v7 = v5 - 48;
      v8 = a2 + 1;
      if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
      {
        v7 = *v8 + 8 * v7 - 48;
        v8 = a2 + 2;
        if (a2 + 2 != a3)
        {
          v9 = *v8 + 8 * v7 - 48;
          if ((*v8 & 0xF8) == 0x30)
          {
            v8 = a2 + 3;
            v7 = v9;
          }
        }
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

      result = v8;
      *a4 = v7;
      *(a4 + 1) = 0;
      return result;
    }

LABEL_75:
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

void sub_1C470(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) != 1)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_73;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_73:
      sub_1D778();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_63:
      *v39 = *v4;
      v40 = *(v4 + 2);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = 0;
      *__p = *v3;
      v42 = *(v3 + 2);
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      sub_1D494((a1 + 88), v39);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v40) < 0)
        {
          goto LABEL_67;
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_67;
      }

      return;
    }

    v30 = a2;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *a2;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (v4[23] < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_60:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_63;
      }
    }

    v32 = *v3;
    goto LABEL_60;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = v4[23];
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= *(v4 + 1))
        {
LABEL_25:
          for (j = 0; ; ++j)
          {
            v17 = v3[23];
            if ((v17 & 0x8000000000000000) != 0)
            {
              if (j >= *(v3 + 1))
              {
                goto LABEL_44;
              }
            }

            else if (j >= v17)
            {
              goto LABEL_44;
            }

            v18 = v3;
            if ((v17 & 0x80000000) != 0)
            {
              v18 = *v3;
            }

            v19 = (*(**(a1 + 24) + 40))(*(a1 + 24), v18[j]);
            v20 = v3;
            if (v3[23] < 0)
            {
              v20 = *v3;
            }

            v20[j] = v19;
          }
        }
      }

      else if (i >= v7)
      {
        goto LABEL_25;
      }

      v8 = v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
      v10 = v4;
      if (v4[23] < 0)
      {
        v10 = *v4;
      }

      v10[i] = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = a2[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = a2;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *a2;
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v15[k] = v13[k];
  }

  if (k < *(a2 + 1))
  {
    goto LABEL_23;
  }

LABEL_35:
  for (m = 0; ; ++m)
  {
    v23 = a3[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (m >= v23)
    {
      goto LABEL_44;
    }

LABEL_42:
    v22 = a3;
    if ((v23 & 0x80000000) != 0)
    {
      v22 = *a3;
      v24 = *a3;
    }

    else
    {
      v24 = a3;
    }

    v24[m] = v22[m];
  }

  if (m < *(a3 + 1))
  {
    goto LABEL_42;
  }

LABEL_44:
  v25 = v4[23];
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = *(v26 + 1);
  }

  sub_1D61C(a1 + 16, v4, &v4[v25]);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  sub_1D61C(a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  *__p = *v35;
  v42 = v36;
  sub_1D494((a1 + 88), v39);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v39[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_1C8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AB28(va);
  _Unwind_Resume(a1);
}

void sub_1C8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_1AB28(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1C90C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v9 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    sub_1D7D0(a1 + 112, &v9);
  }

  else
  {
    v6 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v8 = v6;
      sub_1D7D0(a1 + 112, &v8);
    }

    else
    {
      v7 = v6;
      sub_1D7D0(a1 + 112, &v7);
    }
  }
}

void sub_1CA14()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_collate);
}

void sub_1CA6C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
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
    memcpy(&__dst, a2, v5);
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

void sub_1CCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_1CD28(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
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

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
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

  (*(**(a1 + 16) + 32))(*(a1 + 16), v8, v8 + v7);
  v9 = *(a4 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9 == 1)
  {
    goto LABEL_23;
  }

  if (v9 != 12)
  {
    if (v10 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v11[11] = v11[3];
  if (v13 < 0)
  {
    goto LABEL_26;
  }
}

void sub_1CECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1CEE8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *&dword_10[6 * v2] = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_1D028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D03C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
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

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0A4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_ctype);
}

uint64_t sub_1D0FC(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
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
    memcpy(__dst, a2, v4);
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

void sub_1D25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D278(uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v7 = *(a1 + 72);
    v6 = *(a1 + 80);
    if (v7 < v6)
    {
      *v7 = a2;
      *(a1 + 72) = v7 + 1;
      return;
    }

    v8 = *(a1 + 64);
    v13 = (v7 - v8);
    v14 = v7 - v8 + 1;
    if (v14 >= 0)
    {
      v15 = v6 - v8;
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        operator new();
      }

      v19 = v7 - v8;
      *v13 = a2;
      v18 = v13 + 1;
      memcpy(0, v8, v19);
      *(a1 + 64) = 0;
      *(a1 + 72) = v13 + 1;
      *(a1 + 80) = 0;
      if (v8)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_1794();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 72) = v5 + 1;
    return;
  }

  v8 = *(a1 + 64);
  v9 = (v5 - v8);
  v10 = v5 - v8 + 1;
  if (v10 < 0)
  {
    goto LABEL_26;
  }

  v11 = v4 - v8;
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    operator new();
  }

  v17 = v5 - v8;
  *v9 = v3;
  v18 = v9 + 1;
  memcpy(0, v8, v17);
  *(a1 + 64) = 0;
  *(a1 + 72) = v9 + 1;
  *(a1 + 80) = 0;
  if (v8)
  {
LABEL_23:
    operator delete(v8);
    *(a1 + 72) = v18;
    return;
  }

LABEL_25:
  *(a1 + 72) = v18;
}

void sub_1D494(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 48 * v8;
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = *(a2 + 24);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(v12 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v7 = 48 * v8 + 48;
  v14 = *a1;
  v15 = a1[1] - *a1;
  *(v12 + 24) = v13;
  v16 = v12 - v15;
  memcpy((v12 - v15), v14, v15);
  *a1 = v16;
  a1[1] = v7;
  a1[2] = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  a1[1] = v7;
}

void sub_1D61C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  v8 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v3);
  }

  *(__dst + v3) = 0;
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1D75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D778()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_range);
}

void sub_1D7D0(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    sub_1794();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1808();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *sub_1D8E0(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1D954(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1D9E4(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1DA14(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1DA88(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1DB18(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1DCE0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badbrace);
}

void sub_1DD38()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brace);
}

void *sub_1DD90(void *a1)
{
  *a1 = off_262DD90;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_262D910;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1DE44(void *a1)
{
  *a1 = off_262DD90;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_262D910;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}