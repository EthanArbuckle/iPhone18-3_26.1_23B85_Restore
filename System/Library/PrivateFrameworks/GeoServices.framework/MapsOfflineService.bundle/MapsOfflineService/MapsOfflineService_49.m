void sub_345C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15)
  {
    operator delete(a15);
  }

  sub_33D5A0(v15);
  _Unwind_Resume(a1);
}

BOOL sub_345C34@<W0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1 + a1[1];
  *&v12 = *a1;
  *(&v12 + 1) = v5;
  v13 = 0x2C700000000;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = sub_32CCA4(&v12, 2);
  if (v6)
  {
    if (!(v6 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  while (1)
  {
    result = sub_32BB58(&v12);
    if (!result)
    {
      break;
    }

    while (v13 != 2)
    {
      sub_32BC3C(&v12);
      result = sub_32BB58(&v12);
      if (!result)
      {
        goto LABEL_16;
      }
    }

    v8 = sub_32C014(&v12, *(&v12 + 1));
    if (v8 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    v10 = sub_335D84(a2, v9);
    if (v10 <= 0xFFFFFFFEFFFFFFFFLL && v10 != 0)
    {
      operator new();
    }
  }

LABEL_16:
  a3[2] = 0;
  *a3 = 0;
  return result;
}

void sub_345E5C(_Unwind_Exception *exception_object)
{
  v1[2] = v3;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_345E94(char **a1)
{
  v1 = &a1[1][*a1];
  v7 = *a1;
  v8 = v1;
  v9 = 0x2C700000000;
  if (!sub_32BB58(&v7))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    switch(v9)
    {
      case 3:
        sub_32BDF0(&v7, v8);
        break;
      case 2:
        v4 = sub_32BDF0(&v7, v8);
        v3 = sub_343988(v4);
        break;
      case 1:
        v5 = sub_32BDF0(&v7, v8);
        v2 = sub_3436D0(v5);
        break;
    }
  }

  while (sub_32BB58(&v7));
  return v2 | (v3 << 8);
}

unint64_t sub_345F8C(char **a1)
{
  v1 = &a1[1][*a1];
  v7 = *a1;
  v8 = v1;
  v9 = 0x2C700000000;
  if (!sub_32BB58(&v7))
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v7 += 4;
        if (v7 > v8)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v5 = sub_2D390(exception, "Skipping over bytes exceeded message length.", 0x2CuLL);
        }
      }

      else
      {
        if (v9 != 4)
        {
LABEL_3:
          sub_32BC3C(&v7);
          continue;
        }

        sub_32C014(&v7, v8);
      }
    }

    else if (v9 == 1)
    {
      v2 = sub_3360D8(&v7);
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_3;
      }

      v3 = sub_32BDF0(&v7, v8);
    }
  }

  while (sub_32BB58(&v7));
  return (v3 << 32) | (v2 << 8) | 1;
}

uint64_t sub_3460E0(uint64_t result)
{
  if (result < 8)
  {
    return result;
  }

  LODWORD(result) = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v6);
  sub_4A5C(&v6, "Unknown area event type encountered: ", 37);
  std::ostream::operator<<();
  if ((v16 & 0x10) != 0)
  {
    v2 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v2 = v12;
    }

    v3 = v11;
    v1 = v2 - v11;
    if (v2 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v1 >= 0x17)
    {
      operator new();
    }

    v5 = v1;
    if (v1)
    {
      memmove(&__p, v3, v1);
    }

    goto LABEL_14;
  }

  if ((v16 & 8) != 0)
  {
    v3 = v9;
    v1 = v10 - v9;
    if ((v10 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v1 = 0;
  v5 = 0;
LABEL_14:
  *(&__p + v1) = 0;
  sub_7E854(&__p, 3u);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  std::locale::~locale(&v8);
  std::ostream::~ostream();
  std::ios::~ios();
  LOBYTE(result) = 0;
  return result;
}

void sub_346344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_346390(unsigned int a1)
{
  if (a1 < 6)
  {
    return dword_2291134[a1];
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v7);
    sub_4A5C(&v7, "Unknown incident severity encountered: ", 39);
    std::ostream::operator<<();
    if ((v17 & 0x10) != 0)
    {
      v3 = v16;
      if (v16 < v13)
      {
        v16 = v13;
        v3 = v13;
      }

      v4 = v12;
      v2 = v3 - v12;
      if (v3 - v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v17 & 8) == 0)
      {
        v2 = 0;
        v6 = 0;
LABEL_16:
        *(&__p + v2) = 0;
        sub_7E854(&__p, 3u);
        if (v6 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        std::locale::~locale(&v9);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v4 = v10;
      v2 = v11 - v10;
      if ((v11 - v10) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v6 = v2;
    if (v2)
    {
      memmove(&__p, v4, v2);
    }

    goto LABEL_16;
  }

  return result;
}

void sub_346614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_346660(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

__n128 sub_346670@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

BOOL sub_34667C@<W0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v46 = 19;
  v47 = "Parsed invalid tag.";
  while (1)
  {
    result = sub_32BB58(a1);
    if (!result)
    {
      return result;
    }

    while (*(a1 + 16) != 1)
    {
      sub_32BC3C(a1);
      result = sub_32BB58(a1);
      if (!result)
      {
        return result;
      }
    }

    v55 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v54 = 0;
    v52 = 0;
    v5 = sub_32BDF0(a1, *(a1 + 8));
    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = (*a1 + v5);
    *a1 = v8;
    if (v8 > v7)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v41 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    v49 = v6;
    v50 = v8;
    v51 = 0x2C700000000;
    v48 = 0x7FFFFFFF;
    if (v5)
    {
      while (1)
      {
        v13 = sub_32BDF0(&v49, v8);
        v14 = v13 >> 3;
        LODWORD(v51) = v13 >> 3;
        if (v13 < 8 || (v13 - 152000) >> 6 < 0x7D)
        {
          goto LABEL_91;
        }

        HIDWORD(v51) = v13 & 7;
        if (HIDWORD(v51) >= 3 && (v13 & 7) != 5)
        {
          v46 = 18;
          v47 = "Unknown wire type.";
LABEL_91:
          v34 = __cxa_allocate_exception(0x40uLL);
          v35 = sub_2D390(v34, v47, v46);
        }

        if (v13 >> 3 <= 3)
        {
          break;
        }

        if (v14 != 4)
        {
          if (v14 == 5)
          {
            v17 = sub_32BDF0(&v49, v50);
            v18 = v17;
            v19 = v49;
            v49 += v17;
            if (v49 > v50)
            {
              v38 = __cxa_allocate_exception(0x40uLL);
              v39 = sub_2D390(v38, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
            }

            if (v17 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v57) = v17;
            if (v17)
            {
              memmove(&__dst, v19, v17);
              *(&__dst + v18) = 0;
              if ((SHIBYTE(v54) & 0x80000000) == 0)
              {
                goto LABEL_29;
              }
            }

            else
            {
              LOBYTE(__dst) = 0;
              if ((SHIBYTE(v54) & 0x80000000) == 0)
              {
LABEL_29:
                *__p = __dst;
                v54 = v57;
                goto LABEL_12;
              }
            }

            operator delete(__p[0]);
            goto LABEL_29;
          }

          goto LABEL_11;
        }

        v21 = sub_32BDF0(&v49, v50);
        v22 = v49;
        v23 = &v49[v21];
        v49 = v23;
        if (v23 > v50)
        {
          v36 = __cxa_allocate_exception(0x40uLL);
          v37 = sub_2D390(v36, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        *&__dst = v22;
        *(&__dst + 1) = v23;
        v57 = 0x2C700000000;
        if (v21)
        {
          v24 = sub_32BDF0(&__dst, v23);
          LODWORD(v57) = v24 >> 3;
          if (v24 < 8 || (v24 - 152000) >> 6 < 0x7D)
          {
            goto LABEL_98;
          }

          HIDWORD(v57) = v24 & 7;
          if (HIDWORD(v57) >= 3 && (v24 & 7) != 5)
          {
            v46 = 18;
            v47 = "Unknown wire type.";
LABEL_98:
            v44 = __cxa_allocate_exception(0x40uLL);
            v45 = sub_2D390(v44, v47, v46);
          }

          while (v57 != 7)
          {
            sub_32BC3C(&__dst);
            if (!sub_32BB58(&__dst))
            {
              v25 = 1;
              goto LABEL_47;
            }
          }

          v26 = sub_32BDF0(&__dst, *(&__dst + 1));
          if (v26 == 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2 * (v26 == 2);
          }

LABEL_47:
          *&__dst = v22;
          *(&__dst + 1) = v23;
          v57 = 0x2C700000000;
          v27 = sub_32BDF0(&__dst, v23);
          LODWORD(v57) = v27 >> 3;
          if (v27 < 8 || (v27 - 152000) >> 6 < 0x7D)
          {
            goto LABEL_96;
          }

          HIDWORD(v57) = v27 & 7;
          if (HIDWORD(v57) >= 3 && (v27 & 7) != 5)
          {
            v46 = 18;
            v47 = "Unknown wire type.";
LABEL_96:
            v42 = __cxa_allocate_exception(0x40uLL);
            v43 = sub_2D390(v42, v47, v46);
          }

          while (v57 != 6)
          {
            sub_32BC3C(&__dst);
            if (!sub_32BB58(&__dst))
            {
              goto LABEL_53;
            }
          }

          v29 = sub_32BDF0(&__dst, *(&__dst + 1));
          v30 = 9;
          if (v25 == 2)
          {
            v30 = 10;
          }

          if (!v25)
          {
            v30 = 0;
          }

          if (v29 != 10)
          {
            v30 = 0;
          }

          if (v29 == 8)
          {
            v30 = 8;
          }

          if (v29 == 7)
          {
            v30 = 7;
          }

          v31 = 6;
          if (v29 != 6)
          {
            v31 = 0;
          }

          if (v29 == 5)
          {
            v31 = 5;
          }

          if (v29 <= 6)
          {
            v30 = v31;
          }

          v32 = 4;
          if (v29 != 4)
          {
            v32 = 0;
          }

          if (v29 == 3)
          {
            v32 = 3;
          }

          v33 = 2;
          if (v29 != 2)
          {
            v33 = 0;
          }

          if (v29 == 1)
          {
            v33 = 1;
          }

          if (v29 <= 2)
          {
            v32 = v33;
          }

          if (v29 <= 4)
          {
            v30 = v32;
          }

          v28 = 1 << v30;
        }

        else
        {
LABEL_53:
          v28 = 0;
        }

        v52 |= v28;
LABEL_12:
        v8 = v50;
        if (v49 >= v50)
        {
          goto LABEL_8;
        }
      }

      if (v14 == 1)
      {
        v20 = sub_32C014(&v49, v50);
        if (!(v20 >> 31))
        {
          v48 = v20;
        }

        goto LABEL_12;
      }

      if (v14 == 2)
      {
        v15 = sub_32BDF0(&v49, v50);
        v16 = 0x302010000uLL >> (8 * v15);
        if (v15 >= 5)
        {
          LOBYTE(v16) = 0;
        }

        v55 = v16;
        goto LABEL_12;
      }

LABEL_11:
      sub_32BC3C(&v49);
      goto LABEL_12;
    }

LABEL_8:
    v9 = a2[1];
    if (v9 >= a2[2])
    {
      a2[1] = sub_34852C(a2, __p, &v55, &v52, &v48);
      if (SHIBYTE(v54) < 0)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v10 = v55;
      v11 = v48;
      if (SHIBYTE(v54) < 0)
      {
        sub_325C(a2[1], __p[0], __p[1]);
      }

      else
      {
        v12 = *__p;
        *(v9 + 16) = v54;
        *v9 = v12;
      }

      *(v9 + 24) = v10;
      *(v9 + 32) = v52;
      *(v9 + 40) = v11;
      a2[1] = v9 + 48;
      if (SHIBYTE(v54) < 0)
      {
LABEL_88:
        operator delete(__p[0]);
      }
    }
  }
}

void sub_346CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v22 + 8) = v23;
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_9E38(v22);
  _Unwind_Resume(a1);
}

void sub_346D58(uint64_t a1, char **a2, uint64_t *a3)
{
  v5 = sub_32BDF0(a2, a2[1]);
  v6 = *a2;
  v7 = a2[1];
  v8 = &(*a2)[v5];
  *a2 = v8;
  if (v8 > v7)
  {
    goto LABEL_56;
  }

  v56 = v6;
  v57 = v8;
  v58 = 0x2C700000000;
  if (!sub_32BB58(&v56))
  {
    return;
  }

  while (v58 != 1)
  {
    sub_32BC3C(&v56);
    if (!sub_32BB58(&v56))
    {
      return;
    }
  }

  v9 = sub_32BDF0(&v56, v57);
  v10 = v56;
  v11 = &v56[v9];
  v56 = v11;
  if (v11 > v57)
  {
LABEL_56:
    exception = __cxa_allocate_exception(0x40uLL);
    v37 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
  }

  v12 = 0;
  v54 = 0;
  v55 = -1;
  __p[0] = 0;
  __p[1] = 0;
  v53 = 0;
  v49 = v10;
  v50 = &v10[v9];
  v51 = 0x2C700000000;
  while (sub_32BB58(&v49))
  {
    while (v51 != 7)
    {
      sub_32BC3C(&v49);
      if (!sub_32BB58(&v49))
      {
        goto LABEL_15;
      }
    }

    v13 = sub_32BDF0(&v49, v50);
    v14 = 1 << (v13 == 1);
    if (v13 == 3)
    {
      v14 = 4;
    }

    v12 |= v14;
    v54 = v12;
  }

LABEL_15:
  v46 = v10;
  v47 = v11;
  v15 = -1;
  v48 = 0x2C700000000;
LABEL_19:
  while (sub_32BB58(&v46))
  {
    if (v48 == 1)
    {
      v17 = sub_32BDF0(&v46, v47);
      v18 = v46;
      v19 = &v46[v17];
      v46 = v19;
      if (v19 > v47)
      {
        v34 = __cxa_allocate_exception(0x40uLL);
        v35 = sub_2D390(v34, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      v43 = v18;
      v44 = v19;
      v45 = 0x2C700000000;
      if (sub_32BB58(&v43))
      {
        while (v45 != 5)
        {
          sub_32BC3C(&v43);
          if (!sub_32BB58(&v43))
          {
            goto LABEL_19;
          }
        }

        v20 = sub_32BDF0(&v43, v44);
        v21 = v43;
        v22 = &v43[v20];
        v43 = v22;
        if (v22 > v44)
        {
          v38 = __cxa_allocate_exception(0x40uLL);
          v39 = sub_2D390(v38, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        v42[0] = v21;
        v42[1] = v22;
        v42[2] = 0x2C700000000;
        sub_34667C(v42, &v40);
        v23 = __p[0];
        if (__p[0])
        {
          v24 = __p[1];
          v16 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v25 = *(v24 - 25);
              v24 -= 6;
              if (v25 < 0)
              {
                operator delete(*v24);
              }
            }

            while (v24 != v23);
            v16 = __p[0];
          }

          __p[1] = v23;
          operator delete(v16);
        }

        *__p = v40;
        v53 = v41;
      }
    }

    else if (v48 == 5)
    {
      v15 = sub_32C014(&v46, v47);
      v55 = v15;
    }

    else
    {
      sub_32BC3C(&v46);
    }
  }

  if (v12)
  {
    v26 = a3[1];
    if (v26 >= a3[2])
    {
      v27 = sub_348784(a3, &v55, __p, &v54);
    }

    else
    {
      *v26 = v15;
      sub_348948(v26 + 1, __p);
      v26[4] = v12;
      v27 = (v26 + 5);
      a3[1] = (v26 + 5);
    }

    a3[1] = v27;
    v12 = v54;
  }

  if ((v12 & 2) != 0)
  {
    v28 = a3[4];
    if (v28 >= a3[5])
    {
      v29 = sub_348784(a3 + 3, &v55, __p, &v54);
    }

    else
    {
      *v28 = v55;
      sub_348948(v28 + 1, __p);
      v28[4] = v12;
      v29 = (v28 + 5);
      a3[4] = (v28 + 5);
    }

    a3[4] = v29;
  }

  v30 = __p[0];
  if (__p[0])
  {
    v31 = __p[1];
    v32 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v33 = *(v31 - 25);
        v31 -= 6;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p[0];
    }

    __p[1] = v30;
    operator delete(v32);
  }
}

void sub_347168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *(v17 + 32) = v18;
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_347180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *(v17 + 8) = v18;
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_347198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_3471AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_3471C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_3471D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_3471E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_3471FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_347210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_347224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_347238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_34724C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_347260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_347274(__int128 ***a1@<X0>, uint64_t *a2@<X8>)
{
  *v24 = 0u;
  *v25 = 0u;
  v26 = 1065353216;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_27;
  }

  do
  {
    v6 = *v3;
    if (!v24[1])
    {
      goto LABEL_22;
    }

    v7 = vcnt_s8(v24[1]);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *v3;
      if (v6 >= v24[1])
      {
        v8 = v6 % v24[1];
      }
    }

    else
    {
      v8 = (v24[1] - 1) & v6;
    }

    v9 = *(v24[0] + v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_22:
      v27 = *v3;
      __p[0] = v3;
      sub_34B530(v24, &v27);
      goto LABEL_23;
    }

    if (v7.u32[0] < 2uLL)
    {
      while (1)
      {
        v12 = v10[1];
        if (v12 == v6)
        {
          if (v10[2] == v6)
          {
            goto LABEL_25;
          }
        }

        else if ((v12 & (v24[1] - 1)) != v8)
        {
          goto LABEL_22;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_22;
        }
      }
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v6)
      {
        break;
      }

      if (v11 >= v24[1])
      {
        v11 %= v24[1];
      }

      if (v11 != v8)
      {
        goto LABEL_22;
      }

LABEL_12:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    if (v10[2] != v6)
    {
      goto LABEL_12;
    }

LABEL_25:
    sub_34B864((v10[3] + 8), *(v10[3] + 16), v3[1], v3[2], 0xAAAAAAAAAAAAAAABLL * (v3[2] - v3[1]));
LABEL_23:
    v3 += 5;
  }

  while (v3 != v4);
  v3 = *a1;
  v4 = a1[1];
LABEL_27:
  while (v3 != v4)
  {
    sub_347588(v3 + 1);
    v3 += 5;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_34E938(a2, v25[1]);
  v13 = v25[0];
  if (v25[0])
  {
    do
    {
      v14 = v13[3];
      v27 = *v14;
      sub_348948(__p, v14 + 1);
      v30 = v14[4];
      v15 = a2[1];
      if (v15 < a2[2])
      {
        *v15 = v27;
        v15[1] = 0;
        v15[2] = 0;
        v15[3] = 0;
        *(v15 + 1) = *__p;
        v15[3] = v29;
        __p[0] = 0;
        __p[1] = 0;
        v29 = 0;
        v15[4] = v30;
        a2[1] = (v15 + 5);
      }

      else
      {
        v16 = sub_34EA84(a2, &v27);
        v17 = __p[0];
        a2[1] = v16;
        if (v17)
        {
          v18 = __p[1];
          v19 = v17;
          if (__p[1] != v17)
          {
            do
            {
              v20 = *(v18 - 25);
              v18 -= 6;
              if (v20 < 0)
              {
                operator delete(*v18);
              }
            }

            while (v18 != v17);
            v19 = __p[0];
          }

          __p[1] = v17;
          operator delete(v19);
        }
      }

      v13 = *v13;
    }

    while (v13);
    v21 = v25[0];
    if (v25[0])
    {
      do
      {
        v22 = *v21;
        operator delete(v21);
        v21 = v22;
      }

      while (v22);
    }
  }

  v23 = v24[0];
  v24[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }
}

void sub_34751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_348D04(v9);
  sub_11BD8(&a9);
  _Unwind_Resume(a1);
}

void sub_347588(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 4));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_34BF0C(v2, v3, &v10, v5, 1);
  v6 = sub_34E790(*a1, a1[1]);
  v7 = a1[1];
  if (v6 != v7)
  {
    v8 = v6;
    while (v7 != v8)
    {
      v9 = *(v7 - 25);
      v7 -= 6;
      if (v9 < 0)
      {
        operator delete(*v7);
      }
    }

    a1[1] = v8;
  }
}

void sub_347694(uint64_t a1, char **a2, uint64_t a3)
{
  sub_7E9A4(v74);
  v5 = &a2[1][*a2];
  v71 = *a2;
  v72 = v5;
  v73 = 0x2C700000000;
  v6 = 0;
  if (!sub_32BB58(&v71))
  {
LABEL_85:
    sub_347274(a3, &__t[0].__d_.__rep_);
    v32 = *a3;
    if (*a3)
    {
      v33 = *(a3 + 8);
      v34 = *a3;
      if (v33 != v32)
      {
        do
        {
          v36 = *(v33 - 4);
          if (v36)
          {
            v37 = *(v33 - 3);
            v35 = *(v33 - 4);
            if (v37 != v36)
            {
              do
              {
                v38 = *(v37 - 25);
                v37 -= 6;
                if (v38 < 0)
                {
                  operator delete(*v37);
                }
              }

              while (v37 != v36);
              v35 = *(v33 - 4);
            }

            *(v33 - 3) = v36;
            operator delete(v35);
          }

          v33 -= 5;
        }

        while (v33 != v32);
        v34 = *a3;
      }

      *(a3 + 8) = v32;
      operator delete(v34);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    *a3 = *&__t[0].__d_.__rep_;
    *(a3 + 16) = v76;
    sub_347274((a3 + 24), &__t[0].__d_.__rep_);
    v39 = *(a3 + 24);
    if (v39)
    {
      v40 = *(a3 + 32);
      v41 = *(a3 + 24);
      if (v40 != v39)
      {
        do
        {
          v43 = *(v40 - 32);
          if (v43)
          {
            v44 = *(v40 - 24);
            v42 = *(v40 - 32);
            if (v44 != v43)
            {
              do
              {
                v45 = *(v44 - 25);
                v44 -= 6;
                if (v45 < 0)
                {
                  operator delete(*v44);
                }
              }

              while (v44 != v43);
              v42 = *(v40 - 32);
            }

            *(v40 - 24) = v43;
            operator delete(v42);
          }

          v40 -= 40;
        }

        while (v40 != v39);
        v41 = *(a3 + 24);
      }

      *(a3 + 32) = v39;
      operator delete(v41);
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
    }

    *(a3 + 24) = *&__t[0].__d_.__rep_;
    *(a3 + 40) = v76;
    sub_348328(a3);
    __t[0] = std::chrono::system_clock::now();
    std::chrono::system_clock::to_time_t(__t);
    sub_925C4(__t);
  }

  while (1)
  {
    v7 = v73;
    while (v7 != 9)
    {
      sub_32BC3C(&v71);
      if (v71 >= v72)
      {
        goto LABEL_85;
      }

      v8 = sub_32BDF0(&v71, v72);
      v7 = v8 >> 3;
      LODWORD(v73) = v8 >> 3;
      if (v8 < 8 || (v8 - 152000) >> 6 <= 0x7C)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v49 = sub_2D390(exception, "Parsed invalid tag.", 0x13uLL);
      }

      HIDWORD(v73) = v8 & 7;
      if (HIDWORD(v73) >= 3 && (v8 & 7) != 5)
      {
        v52 = __cxa_allocate_exception(0x40uLL);
        v53 = sub_2D390(v52, "Unknown wire type.", 0x12uLL);
      }
    }

    v10 = sub_32BDF0(&v71, v72);
    v11 = v10;
    v12 = v71;
    v13 = &v71[v10];
    v71 = v13;
    if (v13 > v72)
    {
      v54 = __cxa_allocate_exception(0x40uLL);
      v55 = sub_2D390(v54, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    v68 = v12;
    v69 = v13;
    v70 = 0x2C700000000;
    if (!v10)
    {
      goto LABEL_84;
    }

    v14 = 7;
    v15 = 0x7FFFFFFF;
    v16 = v13;
    v17 = 0x7FFFFFFF;
    do
    {
      v18 = sub_32BDF0(&v68, v16);
      v19 = v18 >> 3;
      LODWORD(v70) = v18 >> 3;
      if (v18 < 8 || (v18 - 152000) >> 6 <= 0x7C)
      {
        v46 = __cxa_allocate_exception(0x40uLL);
        v47 = sub_2D390(v46, "Parsed invalid tag.", 0x13uLL);
      }

      HIDWORD(v70) = v18 & 7;
      if (HIDWORD(v70) >= 3 && (v18 & 7) != 5)
      {
        v50 = __cxa_allocate_exception(0x40uLL);
        v51 = sub_2D390(v50, "Unknown wire type.", 0x12uLL);
      }

      switch(v19)
      {
        case 1u:
          v14 = sub_32BDF0(&v68, v69);
          break;
        case 2u:
          v21 = sub_32C014(&v68, v69);
          if (!(v21 >> 31))
          {
            v17 = v21;
          }

          break;
        case 3u:
          v20 = sub_32C014(&v68, v69);
          if (!(v20 >> 31))
          {
            v15 = v20;
          }

          break;
        default:
          sub_32BC3C(&v68);
          break;
      }

      v16 = v69;
    }

    while (v68 < v69);
    if (v14 != 6)
    {
      goto LABEL_84;
    }

    if (v17 == 0x7FFFFFFF)
    {
      if (sub_7E7E4(3u))
      {
        sub_19594F8(__t);
        sub_4A5C(__t, "Invalid publish time parsed in live data message.", 49);
        if ((v84 & 0x10) != 0)
        {
          v26 = v83;
          v27 = &v79;
          if (v83 < v80)
          {
            v83 = v80;
            v26 = v80;
            v27 = &v79;
          }
        }

        else
        {
          if ((v84 & 8) == 0)
          {
            v22 = 0;
            v67 = 0;
LABEL_79:
            *(&__dst + v22) = 0;
            sub_7E854(&__dst, 3u);
            if (v67 < 0)
            {
              operator delete(__dst);
            }

            __t[0].__d_.__rep_ = v65;
            *(&__t[0].__d_.__rep_ + *(v65 - 24)) = v64;
            if (v82 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v76);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_84;
          }

          v26 = v78;
          v27 = v77;
        }

        v28 = *v27;
        v22 = v26 - *v27;
        if (v22 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v22 >= 0x17)
        {
          operator new();
        }

        v67 = v26 - *v27;
        if (v22)
        {
          memmove(&__dst, v28, v22);
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v15 != 0x7FFFFFFF)
      {
        __t[0] = std::chrono::system_clock::now();
        if (v15 >= std::chrono::system_clock::to_time_t(__t))
        {
          v68 = v12;
          v69 = v13;
          v70 = 0x2C700000000;
          if (v11)
          {
            do
            {
              v23 = sub_32BDF0(&v68, v13);
              v24 = v23 >> 3;
              LODWORD(v70) = v23 >> 3;
              if (v23 < 8 || (v23 - 152000) >> 6 <= 0x7C)
              {
                v60 = __cxa_allocate_exception(0x40uLL);
                v61 = sub_2D390(v60, "Parsed invalid tag.", 0x13uLL);
              }

              HIDWORD(v70) = v23 & 7;
              if (HIDWORD(v70) >= 3 && (v23 & 7) != 5)
              {
                v62 = __cxa_allocate_exception(0x40uLL);
                v63 = sub_2D390(v62, "Unknown wire type.", 0x12uLL);
              }

              while (v24 != 4)
              {
                sub_32BC3C(&v68);
                if (v68 >= v69)
                {
                  goto LABEL_84;
                }

                v23 = sub_32BDF0(&v68, v69);
                v24 = v23 >> 3;
                LODWORD(v70) = v23 >> 3;
                if (v23 < 8 || (v23 - 152000) >> 6 <= 0x7C)
                {
                  v56 = __cxa_allocate_exception(0x40uLL);
                  v57 = sub_2D390(v56, "Parsed invalid tag.", 0x13uLL);
                }

                HIDWORD(v70) = v23 & 7;
                if (HIDWORD(v70) >= 3 && (v23 & 7) != 5)
                {
                  v58 = __cxa_allocate_exception(0x40uLL);
                  v59 = sub_2D390(v58, "Unknown wire type.", 0x12uLL);
                }
              }

              sub_346D58(v23, &v68, a3);
              v13 = v69;
            }

            while (v68 < v69);
          }
        }

        else
        {
          ++v6;
        }

        goto LABEL_84;
      }

      if (sub_7E7E4(3u))
      {
        sub_19594F8(__t);
        sub_4A5C(__t, "Invalid expire time parsed in live data message.", 48);
        if ((v84 & 0x10) != 0)
        {
          v29 = v83;
          v30 = &v79;
          if (v83 < v80)
          {
            v83 = v80;
            v29 = v80;
            v30 = &v79;
          }
        }

        else
        {
          if ((v84 & 8) == 0)
          {
            v22 = 0;
            v67 = 0;
            goto LABEL_79;
          }

          v29 = v78;
          v30 = v77;
        }

        v31 = *v30;
        v22 = v29 - *v30;
        if (v22 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v22 >= 0x17)
        {
          operator new();
        }

        v67 = v29 - *v30;
        if (v22)
        {
          memmove(&__dst, v31, v22);
        }

        goto LABEL_79;
      }
    }

LABEL_84:
    if (!sub_32BB58(&v71))
    {
      goto LABEL_85;
    }
  }
}

void sub_348274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_1959728(&a30);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a30);
  _Unwind_Resume(a1);
}

void sub_3482D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
    sub_321B60(&a30);
    _Unwind_Resume(a1);
  }

  sub_321B60(&a30);
  _Unwind_Resume(a1);
}

void sub_348328(void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_348DB4(v2, v3, &v30, v5, 1);
  v6 = sub_34AFB4(*a1, a1[1]);
  sub_34AE6C(a1, v6, a1[1]);
  v8 = a1 + 3;
  v7 = a1[3];
  v9 = a1[4];
  v10 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v9 - v7) >> 3));
  if (v9 == v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  sub_348DB4(v7, v9, &v31, v11, 1);
  v12 = sub_34AFB4(*v8, a1[4]);
  sub_34AE6C((a1 + 3), v12, a1[4]);
  sub_34B0F8(*a1, a1[1], *v8, a1[4], a1 + 6);
  v13 = a1[6];
  v14 = a1[7];
  v15 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v14 - v13) >> 3));
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  sub_348DB4(v13, v14, &v32, v16, 1);
  v17 = sub_34AFB4(a1[6], a1[7]);
  sub_34AE6C((a1 + 6), v17, a1[7]);
  v18 = *a1;
  for (i = a1[1]; i != v18; i -= 5)
  {
    v21 = *(i - 4);
    if (v21)
    {
      v22 = *(i - 3);
      v20 = *(i - 4);
      if (v22 != v21)
      {
        do
        {
          v23 = *(v22 - 25);
          v22 -= 6;
          if (v23 < 0)
          {
            operator delete(*v22);
          }
        }

        while (v22 != v21);
        v20 = *(i - 4);
      }

      *(i - 3) = v21;
      operator delete(v20);
    }
  }

  a1[1] = v18;
  v24 = a1[3];
  for (j = a1[4]; j != v24; j -= 5)
  {
    v27 = *(j - 4);
    if (v27)
    {
      v28 = *(j - 3);
      v26 = *(j - 4);
      if (v28 != v27)
      {
        do
        {
          v29 = *(v28 - 25);
          v28 -= 6;
          if (v29 < 0)
          {
            operator delete(*v28);
          }
        }

        while (v28 != v27);
        v26 = *(j - 4);
      }

      *(j - 3) = v27;
      operator delete(v26);
    }
  }

  a1[4] = v24;
}

uint64_t sub_34852C(uint64_t *a1, uint64_t a2, char *a3, void *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = 16 * ((a1[1] - *a1) >> 4);
  v10 = *a3;
  v11 = *a5;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    *(v9 + 16) = *(a2 + 16);
  }

  *(v9 + 24) = v10;
  *(v9 + 32) = *a4;
  *(v9 + 40) = v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = v9 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v9 + *a1 - v13;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v9 + 48;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9 + 48;
}

void sub_348708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_34871C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
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

uint64_t sub_348784(uint64_t *a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v7 = 0x666666666666666;
  }

  else
  {
    v7 = v5;
  }

  v23 = a1;
  if (v7)
  {
    if (v7 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 40 * v4;
  __p = 0;
  v20 = v8;
  v21 = v8;
  v22 = 0;
  v9 = *a4;
  *v8 = *a2;
  sub_348948((v8 + 8), a3);
  *(v8 + 32) = v9;
  v21 += 40;
  sub_348AA0(a1, &__p);
  v10 = a1[1];
  v11 = v20;
  for (i = v21; v21 != v11; i = v21)
  {
    while (1)
    {
      v15 = i - 40;
      v21 = i - 40;
      v16 = *(i - 32);
      if (v16)
      {
        break;
      }

      i -= 40;
      if (v15 == v11)
      {
        goto LABEL_11;
      }
    }

    v17 = *(i - 24);
    v14 = *(i - 32);
    if (v17 != v16)
    {
      do
      {
        v18 = *(v17 - 25);
        v17 -= 6;
        if (v18 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v14 = *(i - 32);
    }

    *(i - 24) = v16;
    operator delete(v14);
  }

LABEL_11:
  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void *sub_348948(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_348A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_A504(&a11);
  *(v11 + 8) = v12;
  sub_A480(&a9);
  _Unwind_Resume(a1);
}

void sub_348AA0(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      *v8 = *v7;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = 0;
      *(v8 + 1) = *(v7 + 8);
      v9 = *(v7 + 32);
      v8[3] = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      v8[4] = v9;
      v7 += 40;
      v8 += 5;
    }

    while (v7 != v4);
    do
    {
      v11 = *(v5 + 8);
      if (v11)
      {
        v12 = *(v5 + 16);
        v10 = *(v5 + 8);
        if (v12 != v11)
        {
          do
          {
            v13 = *(v12 - 25);
            v12 -= 6;
            if (v13 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v10 = *(v5 + 8);
        }

        *(v5 + 16) = v11;
        operator delete(v10);
      }

      v5 += 40;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

uint64_t sub_348BC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      while (1)
      {
        v4 = i - 40;
        *(a1 + 16) = i - 40;
        v5 = *(i - 32);
        if (v5)
        {
          break;
        }

        i -= 40;
        if (v4 == v2)
        {
          goto LABEL_12;
        }
      }

      v6 = *(i - 24);
      v7 = *(i - 32);
      if (v6 != v5)
      {
        break;
      }

      *(i - 24) = v5;
      operator delete(v7);
      i = *(a1 + 16);
      if (i == v2)
      {
        goto LABEL_12;
      }
    }

    do
    {
      v8 = *(v6 - 25);
      v6 -= 6;
      if (v8 < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != v5);
    v9 = *(i - 32);
    *(i - 24) = v5;
    operator delete(v9);
  }

LABEL_12:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_348C90(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_348D04(void **a1)
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
        v6 = *(v3 - 4);
        if (v6)
        {
          v7 = *(v3 - 3);
          v5 = *(v3 - 4);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 25);
              v7 -= 6;
              if (v8 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v5 = *(v3 - 4);
          }

          *(v3 - 3) = v6;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_348DB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
    v13 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3);
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        sub_349278(a1, (a1 + 40), a2 - 5);
        return;
      case 4uLL:

        sub_34951C(a1, a1 + 40, a1 + 80, (a2 - 5));
        return;
      case 5uLL:

        sub_3496FC(a1, a1 + 40, a1 + 80, a1 + 120, (a2 - 5));
        return;
    }

LABEL_10:
    if (v12 <= 959)
    {
      if (a5)
      {

        sub_349974(a1, a2);
      }

      else
      {

        sub_349B6C(a1, a2);
      }

      return;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v35 = (v13 - 2) >> 1;
        v36 = v35 + 1;
        v37 = (a1 + 40 * v35);
        do
        {
          sub_34A7B8(a1, a3, 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3), v37);
          v37 -= 5;
          --v36;
        }

        while (v36);
        v38 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3);
        do
        {
          sub_34AA08(a1, a2, a3, v38);
          a2 -= 5;
        }

        while (v38-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = a1 + 40 * (v13 >> 1);
    if (v12 < 0x1401)
    {
      sub_349278(v15, a1, a2 - 5);
      if (a5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_349278(a1, v15, a2 - 5);
      v16 = 40 * v14;
      v17 = (40 * v14 + a1 - 40);
      sub_349278((a1 + 40), v17, a2 - 10);
      sub_349278((a1 + 80), (a1 + 40 + v16), a2 - 15);
      sub_349278(v17, v15, (a1 + 40 + v16));
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *(a1 + 24);
      v21 = *(a1 + 32);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *a1 = *v15;
      *(a1 + 8) = 0;
      *(a1 + 8) = *(v15 + 8);
      v22 = *(v15 + 32);
      *(a1 + 24) = *(v15 + 24);
      *(a1 + 32) = v22;
      *v15 = v18;
      *(v15 + 8) = v19;
      *(v15 + 24) = v20;
      *(v15 + 32) = v21;
      if (a5)
      {
        goto LABEL_24;
      }
    }

    v23 = *(a1 - 40);
    if (v23 >= *a1)
    {
      if (v23 != *a1 || (v24 = *(a1 - 8), v25 = *(a1 + 32), v24 == v25))
      {
LABEL_28:
        v9 = sub_349D40(a1, a2);
        goto LABEL_29;
      }

      if (v24 && v25)
      {
        if (__clz(__rbit64(v24)) >= __clz(__rbit64(v25)))
        {
          goto LABEL_28;
        }
      }

      else if (v25)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v26 = sub_34A0E0(a1, a2);
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    v28 = sub_34A48C(a1, v26);
    v9 = (v26 + 5);
    if (sub_34A48C((v26 + 5), a2))
    {
      a4 = -v11;
      a2 = v26;
      if (v28)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v28)
    {
LABEL_27:
      sub_348DB4(a1, v26, a3, -v11, a5 & 1);
      v9 = (v26 + 5);
LABEL_29:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 < 2)
  {
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v29 = *(a2 - 5);
  v30 = *a1;
  if (v29 < *a1)
  {
    v31 = *(a1 + 32);
    goto LABEL_40;
  }

  if (v29 == *a1)
  {
    v40 = *(a2 - 1);
    v31 = *(a1 + 32);
    if (v40 != v31)
    {
      if (!v40 || !v31)
      {
        if (v31)
        {
          return;
        }

LABEL_40:
        v32 = *(a1 + 24);
        v33 = *(a1 + 8);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *a1 = *(a2 - 5);
        *(a1 + 8) = *(a2 - 2);
        v34 = *(a2 - 1);
        *(a1 + 24) = *(a2 - 2);
        *(a1 + 32) = v34;
        *(a2 - 5) = v30;
        *(a2 - 2) = v33;
        *(a2 - 2) = v32;
        *(a2 - 1) = v31;
        return;
      }

      if (__clz(__rbit64(v40)) < __clz(__rbit64(v31)))
      {
        goto LABEL_40;
      }
    }
  }
}

uint64_t sub_349278(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1)
  {
LABEL_2:
    if (*a3 < v3)
    {
LABEL_3:
      v5 = *(a1 + 1);
      v6 = a1[3];
      v7 = a1[4];
      a1[2] = 0;
      a1[3] = 0;
      a1[1] = 0;
      *a1 = *a3;
      *(a1 + 1) = *(a3 + 1);
      v8 = a3[4];
      a1[3] = a3[3];
      a1[4] = v8;
      *a3 = v4;
      *(a3 + 1) = v5;
      a3[3] = v6;
      a3[4] = v7;
      return 1;
    }

    if (*a3 == v3)
    {
      v12 = a3[4];
      v13 = a2[4];
      if (v12 != v13)
      {
        if (v12 && v13)
        {
          if (__clz(__rbit64(v12)) < __clz(__rbit64(v13)))
          {
            goto LABEL_3;
          }
        }

        else if (!v13)
        {
          goto LABEL_3;
        }
      }
    }

    v25 = a1[1];
    v26 = a1[2];
    v27 = a1[3];
    v28 = a1[4];
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = 0;
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v29 = a2[4];
    a1[3] = a2[3];
    a1[4] = v29;
    *a2 = v4;
    a2[1] = v25;
    a2[2] = v26;
    a2[3] = v27;
    a2[4] = v28;
    if (*a3 < v4)
    {
      goto LABEL_36;
    }

    if (*a3 == v4)
    {
      v31 = a3[4];
      if (v31 != v28)
      {
        if (v28 && v31)
        {
          if (__clz(__rbit64(v31)) < __clz(__rbit64(v28)))
          {
            goto LABEL_36;
          }
        }

        else if (!v28)
        {
LABEL_36:
          a2[1] = 0;
          a2[2] = 0;
          a2[3] = 0;
          *a2 = *a3;
          *(a2 + 1) = *(a3 + 1);
          v30 = a3[4];
          a2[3] = a3[3];
          a2[4] = v30;
          *a3 = v4;
          a3[1] = v25;
          a3[2] = v26;
          a3[3] = v27;
          a3[4] = v28;
          return 1;
        }
      }
    }

    return 1;
  }

  if (*a2 == *a1)
  {
    v10 = a2[4];
    v11 = a1[4];
    if (v10 != v11)
    {
      if (v10 && v11)
      {
        if (__clz(__rbit64(v10)) < __clz(__rbit64(v11)))
        {
          goto LABEL_2;
        }
      }

      else if (!v11)
      {
        goto LABEL_2;
      }
    }
  }

  if (*a3 < v3)
  {
    v14 = a2[4];
    goto LABEL_19;
  }

  if (*a3 != v3)
  {
    return 0;
  }

  v23 = a3[4];
  v14 = a2[4];
  if (v23 == v14)
  {
    return 0;
  }

  if (!v23 || !v14)
  {
    if (!v14)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (__clz(__rbit64(v23)) >= __clz(__rbit64(v14)))
  {
    return 0;
  }

LABEL_19:
  v15 = a2[3];
  v16 = *(a2 + 1);
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  *a2 = *a3;
  *(a2 + 1) = *(a3 + 1);
  v17 = a3[4];
  a2[3] = a3[3];
  a2[4] = v17;
  *a3 = v3;
  *(a3 + 1) = v16;
  a3[3] = v15;
  a3[4] = v14;
  v18 = *a1;
  if (*a2 < *a1)
  {
    v19 = a1[4];
LABEL_21:
    v20 = a1[3];
    v21 = *(a1 + 1);
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = 0;
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v22 = a2[4];
    a1[3] = a2[3];
    a1[4] = v22;
    *a2 = v18;
    *(a2 + 1) = v21;
    a2[3] = v20;
    a2[4] = v19;
    return 1;
  }

  if (*a2 == *a1)
  {
    v24 = a2[4];
    v19 = a1[4];
    if (v24 != v19)
    {
      if (v24 && v19)
      {
        if (__clz(__rbit64(v24)) < __clz(__rbit64(v19)))
        {
          goto LABEL_21;
        }
      }

      else if (!v19)
      {
        goto LABEL_21;
      }
    }
  }

  return 1;
}

uint64_t sub_34951C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_349278(a1, a2, a3);
  v9 = *a3;
  if (*a4 >= *a3)
  {
    if (*a4 != *a3)
    {
      return result;
    }

    v24 = *(a4 + 32);
    v10 = *(a3 + 32);
    if (v24 == v10)
    {
      return result;
    }

    if (v24 && v10)
    {
      if (__clz(__rbit64(v24)) >= __clz(__rbit64(v10)))
      {
        return result;
      }
    }

    else if (v10)
    {
      return result;
    }
  }

  else
  {
    v10 = *(a3 + 32);
  }

  v11 = *(a3 + 24);
  v12 = *(a3 + 8);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *a3 = *a4;
  *(a3 + 8) = *(a4 + 8);
  v13 = *(a4 + 32);
  *(a3 + 24) = *(a4 + 24);
  *(a3 + 32) = v13;
  *a4 = v9;
  *(a4 + 8) = v12;
  *(a4 + 24) = v11;
  *(a4 + 32) = v10;
  v14 = *a2;
  if (*a3 >= *a2)
  {
    if (*a3 != *a2)
    {
      return result;
    }

    v25 = *(a3 + 32);
    v15 = *(a2 + 32);
    if (v25 == v15)
    {
      return result;
    }

    if (v25 && v15)
    {
      if (__clz(__rbit64(v25)) >= __clz(__rbit64(v15)))
      {
        return result;
      }
    }

    else if (v15)
    {
      return result;
    }
  }

  else
  {
    v15 = *(a2 + 32);
  }

  v16 = *(a2 + 24);
  v17 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  v18 = *(a3 + 32);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 32) = v18;
  *a3 = v14;
  *(a3 + 8) = v17;
  *(a3 + 24) = v16;
  *(a3 + 32) = v15;
  v19 = *a1;
  if (*a2 < *a1)
  {
    v20 = *(a1 + 32);
LABEL_7:
    v21 = *(a1 + 24);
    v22 = *(a1 + 8);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v23 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v23;
    *a2 = v19;
    *(a2 + 8) = v22;
    *(a2 + 24) = v21;
    *(a2 + 32) = v20;
    return result;
  }

  if (*a2 == *a1)
  {
    v26 = *(a2 + 32);
    v20 = *(a1 + 32);
    if (v26 != v20)
    {
      if (v26 && v20)
      {
        if (__clz(__rbit64(v26)) < __clz(__rbit64(v20)))
        {
          goto LABEL_7;
        }
      }

      else if (!v20)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_3496FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_34951C(a1, a2, a3, a4);
  v11 = *a4;
  if (*a5 >= *a4)
  {
    if (*a5 != *a4)
    {
      return result;
    }

    v31 = *(a5 + 32);
    v12 = *(a4 + 32);
    if (v31 == v12)
    {
      return result;
    }

    if (v31 && v12)
    {
      if (__clz(__rbit64(v31)) >= __clz(__rbit64(v12)))
      {
        return result;
      }
    }

    else if (v12)
    {
      return result;
    }
  }

  else
  {
    v12 = *(a4 + 32);
  }

  v13 = *(a4 + 24);
  v14 = *(a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *a4 = *a5;
  *(a4 + 8) = *(a5 + 8);
  v15 = *(a5 + 32);
  *(a4 + 24) = *(a5 + 24);
  *(a4 + 32) = v15;
  *a5 = v11;
  *(a5 + 8) = v14;
  *(a5 + 24) = v13;
  *(a5 + 32) = v12;
  v16 = *a3;
  if (*a4 >= *a3)
  {
    if (*a4 != *a3)
    {
      return result;
    }

    v32 = *(a4 + 32);
    v17 = *(a3 + 32);
    if (v32 == v17)
    {
      return result;
    }

    if (v32 && v17)
    {
      if (__clz(__rbit64(v32)) >= __clz(__rbit64(v17)))
      {
        return result;
      }
    }

    else if (v17)
    {
      return result;
    }
  }

  else
  {
    v17 = *(a3 + 32);
  }

  v18 = *(a3 + 24);
  v19 = *(a3 + 8);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *a3 = *a4;
  *(a3 + 8) = *(a4 + 8);
  v20 = *(a4 + 32);
  *(a3 + 24) = *(a4 + 24);
  *(a3 + 32) = v20;
  *a4 = v16;
  *(a4 + 8) = v19;
  *(a4 + 24) = v18;
  *(a4 + 32) = v17;
  v21 = *a2;
  if (*a3 >= *a2)
  {
    if (*a3 != *a2)
    {
      return result;
    }

    v33 = *(a3 + 32);
    v22 = *(a2 + 32);
    if (v33 == v22)
    {
      return result;
    }

    if (v33 && v22)
    {
      if (__clz(__rbit64(v33)) >= __clz(__rbit64(v22)))
      {
        return result;
      }
    }

    else if (v22)
    {
      return result;
    }
  }

  else
  {
    v22 = *(a2 + 32);
  }

  v23 = *(a2 + 24);
  v24 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  v25 = *(a3 + 32);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 32) = v25;
  *a3 = v21;
  *(a3 + 8) = v24;
  *(a3 + 24) = v23;
  *(a3 + 32) = v22;
  v26 = *a1;
  if (*a2 < *a1)
  {
    v27 = *(a1 + 32);
LABEL_9:
    v28 = *(a1 + 24);
    v29 = *(a1 + 8);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v30 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v30;
    *a2 = v26;
    *(a2 + 8) = v29;
    *(a2 + 24) = v28;
    *(a2 + 32) = v27;
    return result;
  }

  if (*a2 == *a1)
  {
    v34 = *(a2 + 32);
    v27 = *(a1 + 32);
    if (v34 != v27)
    {
      if (v34 && v27)
      {
        if (__clz(__rbit64(v34)) < __clz(__rbit64(v27)))
        {
          goto LABEL_9;
        }
      }

      else if (!v27)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void sub_349974(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 5;
    if (a1 + 5 != a2)
    {
      v4 = a1;
      v21 = a2;
      while (1)
      {
        v6 = v4;
        v4 = v3;
        v7 = v6[5];
        v8 = *v6;
        if (v7 < *v6)
        {
          break;
        }

        if (v7 == *v6)
        {
          v9 = v6[9];
          v20 = v6[4];
          if (v9 != v20)
          {
            if (v9 && v20)
            {
              if (__clz(__rbit64(v9)) < __clz(__rbit64(v20)))
              {
                goto LABEL_9;
              }
            }

            else if (!v20)
            {
              goto LABEL_9;
            }
          }
        }

LABEL_6:
        v3 = v4 + 5;
        if (v4 + 5 == a2)
        {
          return;
        }
      }

      v9 = v6[9];
LABEL_9:
      v23 = v6[6];
      v22 = *(v6 + 7);
      v6[7] = 0;
      v6[8] = 0;
      v6[6] = 0;
      v10 = __clz(__rbit64(v9));
      v11 = v4;
      v12 = v4[1];
      while (1)
      {
        v13 = v6;
        *v11 = v8;
        if (v12)
        {
          v14 = (v11 + 2);
          v15 = v11[2];
          v16 = v12;
          if (v15 != v12)
          {
            do
            {
              v17 = *(v15 - 25);
              v15 -= 6;
              if (v17 < 0)
              {
                operator delete(*v15);
              }
            }

            while (v15 != v12);
            v16 = v11[1];
          }

          *v14 = v12;
          operator delete(v16);
          *v14 = 0;
          v11[3] = 0;
        }

        *(v11 + 1) = *(v13 + 1);
        v18 = v13[4];
        v11[3] = v13[3];
        v13[1] = 0;
        v13[2] = 0;
        v13[3] = 0;
        v11[4] = v18;
        if (v13 == a1)
        {
          break;
        }

        v12 = 0;
        v6 = v13 - 5;
        v8 = *(v13 - 5);
        v11 = v13;
        if (v7 >= v8)
        {
          if (v7 != v8 || (v19 = *(v13 - 1), v9 == v19))
          {
LABEL_4:
            v5 = v13;
            goto LABEL_5;
          }

          if (v9 && v19)
          {
            v12 = 0;
            v11 = v13;
            if (v10 >= __clz(__rbit64(v19)))
            {
              goto LABEL_4;
            }
          }

          else
          {
            v12 = 0;
            v11 = v13;
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }
      }

      v5 = a1;
LABEL_5:
      *v5 = v7;
      v13[1] = v23;
      *(v5 + 1) = v22;
      v5[4] = v9;
      a2 = v21;
      goto LABEL_6;
    }
  }
}

void sub_349B6C(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1;
    v3 = a1 + 5;
    if (a1 + 5 != a2)
    {
      v20 = a2;
      while (1)
      {
        v4 = v2;
        v2 = v3;
        v5 = v4[5];
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v5 == *v4)
        {
          v7 = v4[9];
          v19 = v4[4];
          if (v7 != v19)
          {
            if (v7 && v19)
            {
              if (__clz(__rbit64(v7)) < __clz(__rbit64(v19)))
              {
                goto LABEL_8;
              }
            }

            else if (!v19)
            {
              goto LABEL_8;
            }
          }
        }

LABEL_5:
        v3 = v2 + 5;
        if (v2 + 5 == a2)
        {
          return;
        }
      }

      v7 = v4[9];
LABEL_8:
      v21 = *(v4 + 3);
      v8 = v4[8];
      v4[7] = 0;
      v4[8] = 0;
      v4[6] = 0;
      v9 = __clz(__rbit64(v7));
      v10 = v2;
      v11 = v2[1];
      while (1)
      {
        do
        {
          v12 = v4;
          *v10 = v6;
          if (v11)
          {
            v14 = (v10 + 2);
            v13 = v10[2];
            v15 = v11;
            if (v13 != v11)
            {
              do
              {
                v16 = *(v13 - 25);
                v13 -= 6;
                if (v16 < 0)
                {
                  operator delete(*v13);
                }
              }

              while (v13 != v11);
              v15 = v10[1];
            }

            *v14 = v11;
            operator delete(v15);
            *v14 = 0;
            v10[3] = 0;
          }

          v11 = 0;
          *(v10 + 1) = *(v12 + 1);
          v17 = v12[4];
          v10[3] = v12[3];
          v12[1] = 0;
          v12[2] = 0;
          v12[3] = 0;
          v10[4] = v17;
          v4 = v12 - 5;
          v6 = *(v12 - 5);
          v10 = v12;
        }

        while (v5 < v6);
        if (v5 != v6)
        {
          break;
        }

        v18 = *(v12 - 1);
        if (v7 == v18)
        {
          break;
        }

        if (v7 && v18)
        {
          v11 = 0;
          v10 = v12;
          if (v9 >= __clz(__rbit64(v18)))
          {
            break;
          }
        }

        else
        {
          v11 = 0;
          v10 = v12;
          if (v18)
          {
            break;
          }
        }
      }

      *v12 = v5;
      *(v12 + 1) = v21;
      v12[3] = v8;
      v12[4] = v7;
      a2 = v20;
      goto LABEL_5;
    }
  }
}

unint64_t sub_349D40(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v5 = a1 + 1;
  v4 = a1[1];
  v6 = *(a1 + 1);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v7 = a1[4];
  v8 = *(a2 - 40);
  v9 = __rbit64(v7);
  if (v3 < v8)
  {
LABEL_2:
    v11 = (a1 + 5);
    v10 = a1[5];
    if (v3 >= v10)
    {
      if (v7)
      {
        v12 = __clz(v9);
        do
        {
          if (v3 == v10)
          {
            v14 = *(v11 + 32);
            if (v7 != v14)
            {
              v15 = __clz(__rbit64(v14));
              if (!v14 || v12 < v15)
              {
                break;
              }
            }
          }

          v13 = *(v11 + 40);
          v11 += 40;
          v10 = v13;
        }

        while (v3 >= v13);
      }

      else
      {
        do
        {
          v17 = *(v11 + 40);
          v11 += 40;
        }

        while (v3 >= v17);
      }
    }

    goto LABEL_34;
  }

  if (v3 == v8)
  {
    v18 = *(a2 - 8);
    if (v7 != v18)
    {
      if (v7 && v18)
      {
        if (__clz(v9) < __clz(__rbit64(v18)))
        {
          goto LABEL_2;
        }
      }

      else if (!v18)
      {
        goto LABEL_2;
      }
    }
  }

  v11 = (a1 + 5);
  if ((a1 + 5) < a2)
  {
    if (v7)
    {
      v19 = __clz(v9);
      do
      {
        if (v3 < *v11)
        {
          break;
        }

        if (v3 == *v11)
        {
          v20 = *(v11 + 32);
          if (v7 != v20 && (!v20 || v19 < __clz(__rbit64(v20))))
          {
            break;
          }
        }

        v11 += 40;
      }

      while (v11 < a2);
    }

    else
    {
      do
      {
        if (v3 < *v11)
        {
          break;
        }

        v11 += 40;
      }

      while (v11 < a2);
    }
  }

LABEL_34:
  if (v11 < a2)
  {
    v21 = __clz(v9);
    for (a2 -= 40; ; a2 -= 40)
    {
      if (v3 >= v8)
      {
        if (v3 != v8)
        {
          break;
        }

        v23 = *(a2 + 32);
        if (v7 == v23)
        {
          break;
        }

        if (v7 && v23)
        {
          if (v21 >= __clz(__rbit64(v23)))
          {
            break;
          }
        }

        else if (v23)
        {
          break;
        }
      }

      v22 = *(a2 - 40);
      v8 = v22;
    }
  }

  if (v11 < a2)
  {
    v24 = __clz(v9);
    do
    {
      v25 = *v11;
      v26 = *(v11 + 8);
      v27 = *(v11 + 24);
      v28 = *(v11 + 32);
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      *v11 = *a2;
      *(v11 + 8) = *(a2 + 8);
      v29 = *(a2 + 32);
      *(v11 + 24) = *(a2 + 24);
      *(v11 + 32) = v29;
      *a2 = v25;
      *(a2 + 8) = v26;
      *(a2 + 24) = v27;
      *(a2 + 32) = v28;
      v31 = *(v11 + 40);
      v11 += 40;
      v30 = v31;
      if (v3 >= v31)
      {
        if (v7)
        {
          do
          {
            if (v3 == v30)
            {
              v34 = *(v11 + 32);
              if (v7 != v34)
              {
                v35 = __clz(__rbit64(v34));
                if (!v34 || v24 < v35)
                {
                  break;
                }
              }
            }

            v33 = *(v11 + 40);
            v11 += 40;
            v30 = v33;
          }

          while (v3 >= v33);
        }

        else
        {
          do
          {
            v32 = *(v11 + 40);
            v11 += 40;
          }

          while (v3 >= v32);
        }
      }

      if (v7)
      {
        do
        {
          do
          {
            v37 = *(a2 - 40);
            a2 -= 40;
            v38 = v3 == v37;
          }

          while (v3 < v37);
          if (!v38)
          {
            break;
          }

          v39 = *(a2 + 32);
          if (v7 == v39)
          {
            break;
          }
        }

        while (!v39 || v24 < __clz(__rbit64(v39)));
      }

      else
      {
        do
        {
          v40 = *(a2 - 40);
          a2 -= 40;
        }

        while (v3 < v40);
      }
    }

    while (v11 < a2);
  }

  if ((v11 - 40) == a1)
  {
    v45 = *(v11 - 32);
    *(v11 - 40) = v3;
    if (v45)
    {
      v52 = v6;
      v46 = *(v11 - 24);
      v47 = v45;
      if (v46 != v45)
      {
        do
        {
          v48 = *(v46 - 25);
          v46 -= 6;
          if (v48 < 0)
          {
            operator delete(*v46);
          }
        }

        while (v46 != v45);
        v47 = *(v11 - 32);
      }

      *(v11 - 24) = v45;
      operator delete(v47);
      *(v11 - 32) = 0;
      v6 = v52;
    }
  }

  else
  {
    *a1 = *(v11 - 40);
    v41 = a1[1];
    if (v41)
    {
      v51 = v6;
      v42 = a1[2];
      v43 = a1[1];
      if (v42 != v41)
      {
        do
        {
          v44 = *(v42 - 25);
          v42 -= 6;
          if (v44 < 0)
          {
            operator delete(*v42);
          }
        }

        while (v42 != v41);
        v43 = *v5;
      }

      a1[2] = v41;
      operator delete(v43);
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      v6 = v51;
    }

    *(a1 + 1) = *(v11 - 32);
    v49 = *(v11 - 8);
    a1[3] = *(v11 - 16);
    *(v11 - 32) = 0;
    a1[4] = v49;
    *(v11 - 40) = v3;
  }

  *(v11 - 32) = v4;
  *(v11 - 24) = v6;
  *(v11 - 8) = v7;
  return v11;
}

unint64_t *sub_34A0E0(unint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v6 = (a1 + 1);
  v5 = a1[1];
  v7 = *(a1 + 1);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v8 = a1[4];
  v9 = __clz(__rbit64(v8));
  v10 = a1 + 5;
  if (v8)
  {
    while (1)
    {
      v11 = *v10;
      if (*v10 >= v4)
      {
        if (*v10 != v4)
        {
          break;
        }

        v12 = v10[4];
        v13 = __clz(__rbit64(v12));
        v14 = v12 == v8 || v12 == 0;
        if (v14 || v13 >= v9)
        {
          break;
        }
      }

      v10 += 5;
    }
  }

  else
  {
    while (1)
    {
      v11 = *v10;
      if (*v10 >= v4 && (*v10 != v4 || !v10[4]))
      {
        break;
      }

      v10 += 5;
    }
  }

  if (v10 - 5 == a1)
  {
LABEL_51:
    if (v10 < v2)
    {
      while (1)
      {
        v24 = *(v2 - 40);
        v2 -= 40;
        v23 = v24;
        if (v24 < v4)
        {
          break;
        }

        if (v23 != v4)
        {
          goto LABEL_51;
        }

        v25 = *(v2 + 32);
        if (v25 == v8)
        {
          goto LABEL_51;
        }

        if (v8 && v25)
        {
          if (__clz(__rbit64(v25)) < v9 || v10 >= v2)
          {
            break;
          }
        }

        else if (v10 >= v2 || !v8)
        {
          break;
        }
      }
    }
  }

  else
  {
    v2 = a2 - 40;
    v16 = *(a2 - 40);
    if (v16 >= v4)
    {
      if (v8)
      {
        do
        {
          if (v16 == v4)
          {
            v18 = *(v2 + 32);
            v19 = __clz(__rbit64(v18));
            v20 = v18 == v8 || v18 == 0;
            if (!v20 && v19 < v9)
            {
              break;
            }
          }

          v17 = *(v2 - 40);
          v2 -= 40;
          v16 = v17;
        }

        while (v17 >= v4);
      }

      else
      {
        do
        {
          if (v16 == v4 && *(v2 + 32))
          {
            break;
          }

          v22 = *(v2 - 40);
          v2 -= 40;
          v16 = v22;
        }

        while (v22 >= v4);
      }
    }
  }

  v27 = v10;
  if (v10 < v2)
  {
    v27 = v10;
    v28 = v2;
    do
    {
      v29 = *(v27 + 1);
      v30 = v27[3];
      v31 = v27[4];
      v27[2] = 0;
      v27[3] = 0;
      v27[1] = 0;
      *v27 = *v28;
      *(v27 + 1) = *(v28 + 8);
      v32 = *(v28 + 32);
      v27[3] = *(v28 + 24);
      v27[4] = v32;
      *v28 = v11;
      *(v28 + 8) = v29;
      *(v28 + 24) = v30;
      *(v28 + 32) = v31;
      if (v8)
      {
        do
        {
          do
          {
            v33 = v27[5];
            v27 += 5;
            v11 = v33;
            v34 = v33 == v4;
          }

          while (v33 < v4);
          if (!v34)
          {
            break;
          }

          v35 = v27[4];
          v36 = __clz(__rbit64(v35));
          v37 = v35 == v8 || v35 == 0;
        }

        while (!v37 && v36 < v9);
      }

      else
      {
        do
        {
          do
          {
            v39 = v27[5];
            v27 += 5;
            v11 = v39;
            v40 = v39 == v4;
          }

          while (v39 < v4);
        }

        while (v40 && v27[4]);
      }

      v42 = *(v28 - 40);
      v28 -= 40;
      v41 = v42;
      if (v42 >= v4)
      {
        if (v8)
        {
          do
          {
            if (v41 == v4)
            {
              v44 = *(v28 + 32);
              v45 = __clz(__rbit64(v44));
              v46 = v44 == v8 || v44 == 0;
              if (!v46 && v45 < v9)
              {
                break;
              }
            }

            v43 = *(v28 - 40);
            v28 -= 40;
            v41 = v43;
          }

          while (v43 >= v4);
        }

        else
        {
          do
          {
            if (v41 == v4 && *(v28 + 32))
            {
              break;
            }

            v48 = *(v28 - 40);
            v28 -= 40;
            v41 = v48;
          }

          while (v48 >= v4);
        }
      }
    }

    while (v27 < v28);
  }

  if (v27 - 5 == a1)
  {
    v53 = *(v27 - 4);
    *(v27 - 5) = v4;
    if (v53)
    {
      v54 = v5;
      v62 = v7;
      v55 = *(v27 - 3);
      v56 = v53;
      if (v55 != v53)
      {
        do
        {
          v57 = *(v55 - 25);
          v55 -= 6;
          if (v57 < 0)
          {
            operator delete(*v55);
          }
        }

        while (v55 != v53);
        v56 = *(v27 - 4);
      }

      *(v27 - 3) = v53;
      operator delete(v56);
      *(v27 - 4) = 0;
      v7 = v62;
      v5 = v54;
    }
  }

  else
  {
    *a1 = *(v27 - 5);
    v49 = a1[1];
    if (v49)
    {
      v60 = v5;
      v61 = v7;
      v50 = a1[2];
      v51 = a1[1];
      if (v50 != v49)
      {
        do
        {
          v52 = *(v50 - 25);
          v50 -= 6;
          if (v52 < 0)
          {
            operator delete(*v50);
          }
        }

        while (v50 != v49);
        v51 = *v6;
      }

      a1[2] = v49;
      operator delete(v51);
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v7 = v61;
      v5 = v60;
    }

    *(a1 + 1) = *(v27 - 2);
    v58 = *(v27 - 1);
    a1[3] = *(v27 - 2);
    *(v27 - 4) = 0;
    a1[4] = v58;
    *(v27 - 5) = v4;
  }

  *(v27 - 4) = v5;
  *(v27 - 3) = v7;
  *(v27 - 1) = v8;
  return v27 - 5;
}

BOOL sub_34A48C(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_349278(a1, (a1 + 40), (a2 - 40));
        return 1;
      case 4:
        sub_34951C(a1, a1 + 40, a1 + 80, a2 - 40);
        return 1;
      case 5:
        sub_3496FC(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *(a2 - 40);
      v5 = *a1;
      if (v4 >= *a1)
      {
        if (v4 != *a1)
        {
          return 1;
        }

        v32 = *(a2 - 8);
        v6 = *(a1 + 32);
        if (v32 == v6)
        {
          return 1;
        }

        if (v32 && v6)
        {
          if (__clz(__rbit64(v32)) >= __clz(__rbit64(v6)))
          {
            return 1;
          }
        }

        else if (v6)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 32);
      }

      v7 = *(a1 + 24);
      v8 = *(a1 + 8);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *a1 = *(a2 - 40);
      *(a1 + 8) = *(a2 - 32);
      v9 = *(a2 - 8);
      *(a1 + 24) = *(a2 - 16);
      *(a1 + 32) = v9;
      *(a2 - 40) = v5;
      *(a2 - 32) = v8;
      *(a2 - 16) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v10 = (a1 + 80);
  sub_349278(a1, (a1 + 40), (a1 + 80));
  v13 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = *v13;
    if (*v13 >= *v10)
    {
      if (*v13 != *v10)
      {
        goto LABEL_17;
      }

      v18 = *(v13 + 32);
      v31 = v10[4];
      if (v18 == v31)
      {
        goto LABEL_17;
      }

      if (v18 && v31)
      {
        if (__clz(__rbit64(v18)) >= __clz(__rbit64(v31)))
        {
          goto LABEL_17;
        }
      }

      else if (v31)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = *(v13 + 32);
    }

    v19 = *(v13 + 8);
    v20 = *(v13 + 16);
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 8) = 0;
    v21 = __clz(__rbit64(v18));
    *v13 = *v10;
    v22 = v10[3];
    v23 = v10[4];
    v16 = v10 + 1;
    *(v13 + 8) = *(v10 + 1);
    *(v13 + 24) = v22;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0;
    *(v13 + 32) = v23;
    v24 = v14;
    while (1)
    {
      v27 = a1 + v24;
      v28 = *(a1 + v24 + 40);
      if (v17 >= v28)
      {
        break;
      }

LABEL_22:
      v16 = v10 - 4;
      v10 -= 5;
      *(v27 + 80) = v28;
      v26 = *(v27 + 64);
      v25 = *(v27 + 72);
      *(v27 + 88) = *(v27 + 48);
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      *(v27 + 48) = 0;
      *(v27 + 104) = v26;
      *(v27 + 112) = v25;
      v24 -= 40;
      if (v24 == -80)
      {
        v16 = (a1 + 8);
        v10 = a1;
        goto LABEL_16;
      }
    }

    if (v17 != v28)
    {
      goto LABEL_16;
    }

    v29 = a1 + v24;
    v30 = *(a1 + v24 + 72);
    if (v18 != v30)
    {
      if (v18 && v30)
      {
        if (v21 >= __clz(__rbit64(v30)))
        {
          goto LABEL_16;
        }
      }

      else if (v30)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

    v16 = (v29 + 88);
    v10 = (v29 + 80);
LABEL_16:
    *v10 = v17;
    *v16 = v19;
    *(v10 + 1) = v20;
    v10[4] = v18;
    if (++v15 != 8)
    {
LABEL_17:
      v10 = v13;
      v14 += 40;
      v13 += 40;
      if (v13 == a2)
      {
        return 1;
      }

      continue;
    }

    return v13 + 40 == a2;
  }
}

uint64_t sub_34A7B8(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 3)))
  {
    return result;
  }

  v5 = (0x999999999999999ALL * ((a4 - result) >> 3)) | 1;
  v6 = result + 40 * v5;
  if ((0x999999999999999ALL * ((a4 - result) >> 3) + 2) >= a3)
  {
    goto LABEL_16;
  }

  v7 = *(v6 + 40);
  if (*v6 >= v7)
  {
    if (*v6 != v7)
    {
      goto LABEL_16;
    }

    v8 = *(v6 + 32);
    v9 = *(v6 + 72);
    if (v8 == v9)
    {
      goto LABEL_16;
    }

    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (v9)
      {
        goto LABEL_16;
      }
    }

    else if (__clz(__rbit64(v8)) >= __clz(__rbit64(v9)))
    {
      goto LABEL_16;
    }
  }

  v6 += 40;
  v5 = 0x999999999999999ALL * ((a4 - result) >> 3) + 2;
LABEL_16:
  v11 = *a4;
  if (*v6 < *a4)
  {
    return result;
  }

  if (*v6 == *a4)
  {
    v14 = *(v6 + 32);
    v12 = a4[4];
    if (v14 != v12)
    {
      if (v14)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = a4[4];
        if (!v12)
        {
          return result;
        }
      }

      else
      {
        v32 = __clz(__rbit64(v14));
        v14 = a4[4];
        if (v32 < __clz(__rbit64(v12)))
        {
          return result;
        }
      }
    }
  }

  else
  {
    v14 = a4[4];
  }

  v15 = a4[1];
  v16 = a4[2];
  v17 = a4[3];
  a4[2] = 0;
  a4[3] = 0;
  a4[1] = 0;
  *a4 = *v6;
  v19 = *(v6 + 24);
  v18 = *(v6 + 32);
  *(a4 + 1) = *(v6 + 8);
  a4[3] = v19;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 8) = 0;
  a4[4] = v18;
  if (v4 < v5)
  {
    goto LABEL_53;
  }

  v20 = __clz(__rbit64(v14));
  while (1)
  {
    v23 = v6;
    v24 = 2 * v5;
    v5 = (2 * v5) | 1;
    v6 = result + 40 * v5;
    v25 = v24 + 2;
    if (v25 >= a3)
    {
      goto LABEL_43;
    }

    v26 = *(v6 + 40);
    if (*v6 < v26)
    {
LABEL_32:
      v6 += 40;
      v5 = v25;
      goto LABEL_43;
    }

    if (*v6 == v26)
    {
      v27 = *(v6 + 32);
      v28 = *(v6 + 72);
      if (v27 != v28)
      {
        if (v27)
        {
          v29 = v28 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          if (!v28)
          {
            goto LABEL_32;
          }
        }

        else if (__clz(__rbit64(v27)) < __clz(__rbit64(v28)))
        {
          goto LABEL_32;
        }
      }
    }

LABEL_43:
    if (*v6 < v11)
    {
      goto LABEL_52;
    }

    if (*v6 == v11)
    {
      v30 = *(v6 + 32);
      if (v30 != v14)
      {
        break;
      }
    }

LABEL_29:
    *v23 = *v6;
    v22 = *(v6 + 24);
    v21 = *(v6 + 32);
    *(v23 + 8) = *(v6 + 8);
    *(v23 + 24) = v22;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 8) = 0;
    *(v23 + 32) = v21;
    if (v4 < v5)
    {
      goto LABEL_53;
    }
  }

  if (v30)
  {
    v31 = v14 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    if (__clz(__rbit64(v30)) < v20)
    {
      goto LABEL_52;
    }

    goto LABEL_29;
  }

  if (v14)
  {
    goto LABEL_29;
  }

LABEL_52:
  v6 = v23;
LABEL_53:
  *v6 = v11;
  *(v6 + 8) = v15;
  *(v6 + 16) = v16;
  *(v6 + 24) = v17;
  *(v6 + 32) = v14;
  return result;
}

void sub_34AA08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = 0;
    v9 = a1[4];
    v10 = sub_34ABB8(a1, a3, a4);
    v11 = v10;
    if (v10 == (a2 - 40))
    {
      *v10 = v6;
      v17 = (v10 + 1);
      v18 = v10[1];
      if (v18)
      {
        v19 = v10[2];
        v20 = v10[1];
        if (v19 != v18)
        {
          do
          {
            v21 = *(v19 - 25);
            v19 -= 6;
            if (v21 < 0)
            {
              operator delete(*v19);
            }
          }

          while (v19 != v18);
          v20 = *v17;
        }

        v11[2] = v18;
        operator delete(v20);
        *v17 = 0;
        v11[2] = 0;
        v11[3] = 0;
      }

      v11[1] = v5;
      v11[2] = v7;
      v11[3] = v8;
      v11[4] = v9;
    }

    else
    {
      *v10 = *(a2 - 40);
      v13 = (v10 + 1);
      v12 = v10[1];
      if (v12)
      {
        v14 = v10[2];
        v15 = v10[1];
        if (v14 != v12)
        {
          do
          {
            v16 = *(v14 - 25);
            v14 -= 6;
            if (v16 < 0)
            {
              operator delete(*v14);
            }
          }

          while (v14 != v12);
          v15 = *v13;
        }

        v11[2] = v12;
        operator delete(v15);
        *v13 = 0;
        v11[2] = 0;
        v11[3] = 0;
      }

      *(v11 + 1) = *(a2 - 32);
      v22 = *(a2 - 8);
      v11[3] = *(a2 - 16);
      v11[4] = v22;
      *(a2 - 40) = v6;
      *(a2 - 32) = v5;
      *(a2 - 24) = v7;
      *(a2 - 16) = v8;
      *(a2 - 8) = v9;
      sub_34AD20(a1, (v11 + 5), a3, 0xCCCCCCCCCCCCCCCDLL * (v11 + 5 - a1));
    }
  }
}

void sub_34ABA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_348C90(va);
  _Unwind_Resume(a1);
}

void *sub_34ABB8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v9 = &a1[5 * v5];
    v10 = v9 + 5;
    v11 = 2 * v5;
    v5 = (2 * v5) | 1;
    v12 = v11 + 2;
    if (v12 >= a3)
    {
      goto LABEL_18;
    }

    v13 = v9 + 10;
    v14 = v9[10];
    v15 = v9[5];
    if (v15 < v14)
    {
LABEL_7:
      v10 = v13;
      v5 = v12;
      goto LABEL_18;
    }

    if (v15 == v14)
    {
      v16 = v9[9];
      v17 = v9[14];
      if (v16 != v17)
      {
        if (v16)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          if (!v17)
          {
            goto LABEL_7;
          }
        }

        else if (__clz(__rbit64(v16)) < __clz(__rbit64(v17)))
        {
          goto LABEL_7;
        }
      }
    }

LABEL_18:
    *a1 = *v10;
    v19 = (a1 + 1);
    v20 = a1[1];
    if (v20)
    {
      v21 = a1[2];
      v7 = a1[1];
      if (v21 != v20)
      {
        do
        {
          v22 = *(v21 - 25);
          v21 -= 6;
          if (v22 < 0)
          {
            operator delete(*v21);
          }
        }

        while (v21 != v20);
        v7 = *v19;
      }

      a1[2] = v20;
      operator delete(v7);
      *v19 = 0;
      a1[2] = 0;
      a1[3] = 0;
    }

    *(a1 + 1) = *(v10 + 1);
    v8 = v10[4];
    a1[3] = v10[3];
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0;
    a1[4] = v8;
    a1 = v10;
  }

  while (v5 <= v6);
  return v10;
}

uint64_t sub_34AD20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 40 * (v4 >> 1);
    v7 = *(a2 - 40);
    if (*v6 < v7)
    {
      v8 = *(a2 - 8);
      goto LABEL_4;
    }

    if (*v6 == v7)
    {
      v14 = *(v6 + 32);
      v8 = *(a2 - 8);
      if (v14 != v8)
      {
        if (v14)
        {
          v15 = v8 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          if (v8)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (__clz(__rbit64(v14)) < __clz(__rbit64(v8)))
        {
LABEL_4:
          v9 = *(a2 - 32);
          v10 = *(a2 - 24);
          v11 = *(a2 - 16);
          *(a2 - 24) = 0;
          *(a2 - 16) = 0;
          *(a2 - 32) = 0;
          *(a2 - 40) = *v6;
          v13 = *(v6 + 24);
          v12 = *(v6 + 32);
          *(a2 - 32) = *(v6 + 8);
          *(a2 - 16) = v13;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
          *(v6 + 8) = 0;
          *(a2 - 8) = v12;
          if (v4 < 2)
          {
LABEL_5:
            *v6 = v7;
            *(v6 + 8) = v9;
            *(v6 + 16) = v10;
            *(v6 + 24) = v11;
            *(v6 + 32) = v8;
            return result;
          }

          v16 = __clz(__rbit64(v8));
          while (1)
          {
            v19 = v6;
            v20 = v5 - 1;
            v5 = (v5 - 1) >> 1;
            v6 = result + 40 * v5;
            if (*v6 >= v7)
            {
              if (*v6 != v7 || (v21 = *(v6 + 32), v21 == v8))
              {
LABEL_27:
                *v19 = v7;
                v19[1] = v9;
                v19[2] = v10;
                v19[3] = v11;
                v19[4] = v8;
                return result;
              }

              if (v21)
              {
                v22 = v8 == 0;
              }

              else
              {
                v22 = 1;
              }

              if (v22)
              {
                if (v8)
                {
                  goto LABEL_27;
                }
              }

              else if (__clz(__rbit64(v21)) >= v16)
              {
                goto LABEL_27;
              }
            }

            *v19 = *v6;
            v18 = *(v6 + 24);
            v17 = *(v6 + 32);
            *(v19 + 1) = *(v6 + 8);
            v19[3] = v18;
            *(v6 + 16) = 0;
            *(v6 + 24) = 0;
            *(v6 + 8) = 0;
            v19[4] = v17;
            if (v20 <= 1)
            {
              goto LABEL_5;
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_34AE6C(uint64_t a1, void *a2, void *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        *v7 = *v4;
        v10 = (v7 + 1);
        v11 = v7[1];
        if (v11)
        {
          v12 = v7[2];
          v8 = v7[1];
          if (v12 != v11)
          {
            do
            {
              v13 = *(v12 - 25);
              v12 -= 6;
              if (v13 < 0)
              {
                operator delete(*v12);
              }
            }

            while (v12 != v11);
            v8 = *v10;
          }

          v7[2] = v11;
          operator delete(v8);
          *v10 = 0;
          v7[2] = 0;
          v7[3] = 0;
        }

        *(v7 + 1) = *(v4 + 1);
        v9 = v4[4];
        v7[3] = v4[3];
        v4[1] = 0;
        v4[2] = 0;
        v4[3] = 0;
        v7[4] = v9;
        v4 += 5;
        v7 += 5;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v15 = *(v6 - 4);
      if (v15)
      {
        v16 = *(v6 - 3);
        v14 = *(v6 - 4);
        if (v16 != v15)
        {
          do
          {
            v17 = *(v16 - 25);
            v16 -= 6;
            if (v17 < 0)
            {
              operator delete(*v16);
            }
          }

          while (v16 != v15);
          v14 = *(v6 - 4);
        }

        *(v6 - 3) = v15;
        operator delete(v14);
      }

      v6 -= 5;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void *sub_34AFB4(void *a1, void *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v5 = a1 + 5;
    do
    {
      if (v5 == a2)
      {
        return a2;
      }

      v6 = *(v5 - 5);
      v7 = *v5;
      v5 += 5;
    }

    while (v6 != v7);
    v8 = v5 - 10;
    result = a2;
    if (v5 - 10 != a2)
    {
      if (v5 != a2)
      {
        v9 = v5 - 5;
        do
        {
          v12 = v5;
          v13 = *v5;
          if (*v8 != v13)
          {
            v8[5] = v13;
            v14 = (v8 + 6);
            v15 = v8[6];
            if (v15)
            {
              v16 = v8[7];
              v10 = v8[6];
              if (v16 != v15)
              {
                do
                {
                  v17 = *(v16 - 25);
                  v16 -= 6;
                  if (v17 < 0)
                  {
                    operator delete(*v16);
                  }
                }

                while (v16 != v15);
                v10 = *v14;
              }

              v8[7] = v15;
              operator delete(v10);
              *v14 = 0;
              v8[7] = 0;
              v8[8] = 0;
            }

            *(v8 + 3) = *(v9 + 3);
            v11 = v9[9];
            v8[8] = v9[8];
            v9[6] = 0;
            v9[7] = 0;
            v9[8] = 0;
            v8[9] = v11;
            v8 += 5;
          }

          v5 = v12 + 5;
          v9 = v12;
        }

        while (v12 + 5 != a2);
      }

      return v8 + 5;
    }
  }

  return result;
}

uint64_t *sub_34B0F8(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  if (a1 == a2)
  {
LABEL_2:
    if (a3 != a4)
    {
      v8 = a5[1];
      do
      {
        while (v8 >= a5[2])
        {
          v8 = sub_34B374(a5, a3);
          a5[1] = v8;
          a3 += 5;
          if (a3 == a4)
          {
            return a5;
          }
        }

        *v8 = *a3;
        sub_348948(v8 + 1, a3 + 1);
        v8[4] = a3[4];
        v8 += 5;
        a5[1] = v8;
        a5[1] = v8;
        a3 += 5;
      }

      while (a3 != a4);
    }

    return a5;
  }

  v10 = a1;
  while (a3 != a4)
  {
    if (*a3 >= *v10)
    {
      if (*a3 == *v10)
      {
        v12 = a3[4];
        v13 = v10[4];
        if (v12 != v13)
        {
          if (v12 && v13)
          {
            if (__clz(__rbit64(v12)) < __clz(__rbit64(v13)))
            {
              goto LABEL_12;
            }
          }

          else if (!v13)
          {
            goto LABEL_12;
          }
        }
      }

      v14 = a5[1];
      if (v14 >= a5[2])
      {
        a5[1] = sub_34B374(a5, v10);
        v10 += 5;
        if (v10 == a2)
        {
          goto LABEL_2;
        }
      }

      else
      {
        *v14 = *v10;
        sub_348948(v14 + 1, v10 + 1);
        v14[4] = v10[4];
        a5[1] = (v14 + 5);
        a5[1] = (v14 + 5);
        v10 += 5;
        if (v10 == a2)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
LABEL_12:
      v11 = a5[1];
      if (v11 >= a5[2])
      {
        a5[1] = sub_34B374(a5, a3);
        a3 += 5;
        if (v10 == a2)
        {
          goto LABEL_2;
        }
      }

      else
      {
        *v11 = *a3;
        sub_348948(v11 + 1, a3 + 1);
        v11[4] = a3[4];
        a5[1] = (v11 + 5);
        a5[1] = (v11 + 5);
        a3 += 5;
        if (v10 == a2)
        {
          goto LABEL_2;
        }
      }
    }
  }

  if (v10 != a2)
  {
    v15 = a5[1];
    do
    {
      while (v15 >= a5[2])
      {
        v15 = sub_34B374(a5, v10);
        a5[1] = v15;
        v10 += 5;
        if (v10 == a2)
        {
          return a5;
        }
      }

      *v15 = *v10;
      sub_348948(v15 + 1, v10 + 1);
      v15[4] = v10[4];
      v15 += 5;
      a5[1] = v15;
      a5[1] = v15;
      v10 += 5;
    }

    while (v10 != a2);
  }

  return a5;
}

uint64_t sub_34B374(uint64_t *a1, void *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 40 * v2;
  __p = 0;
  v18 = v7;
  v19 = v7;
  v20 = 0;
  *v7 = *a2;
  sub_348948((v7 + 8), a2 + 1);
  *(v7 + 32) = a2[4];
  v19 += 40;
  sub_348AA0(a1, &__p);
  v8 = a1[1];
  v9 = v18;
  for (i = v19; v19 != v9; i = v19)
  {
    while (1)
    {
      v13 = i - 40;
      v19 = i - 40;
      v14 = *(i - 32);
      if (v14)
      {
        break;
      }

      i -= 40;
      if (v13 == v9)
      {
        goto LABEL_11;
      }
    }

    v15 = *(i - 24);
    v12 = *(i - 32);
    if (v15 != v14)
    {
      do
      {
        v16 = *(v15 - 25);
        v15 -= 6;
        if (v16 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v12 = *(i - 32);
    }

    *(i - 24) = v14;
    operator delete(v12);
  }

LABEL_11:
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void *sub_34B530(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
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
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_34B864(uint64_t *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      sub_1794();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v30 = 16 * (a2 - v11);
    v81 = v30;
    v31 = 48 * a5;
    v32 = v30 + 48 * a5;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_325C(v30, *v7, *(v7 + 1));
      }

      else
      {
        v33 = *v7;
        *(v30 + 16) = *(v7 + 2);
        *v30 = v33;
      }

      v34 = *(v7 + 24);
      *(v30 + 40) = *(v7 + 10);
      *(v30 + 24) = v34;
      v30 += 48;
      v7 += 3;
      v31 -= 48;
    }

    while (v31);
    v35 = a1[1];
    v36 = v5;
    if (v35 != v5)
    {
      v37 = v5;
      v38 = v32;
      do
      {
        v39 = *v37;
        *(v38 + 16) = *(v37 + 2);
        *v38 = v39;
        *(v37 + 1) = 0;
        *(v37 + 2) = 0;
        *v37 = 0;
        v40 = *(v37 + 24);
        *(v38 + 40) = *(v37 + 10);
        *(v38 + 24) = v40;
        v37 += 3;
        v38 += 48;
      }

      while (v37 != v35);
      v41 = v5;
      do
      {
        if (*(v41 + 23) < 0)
        {
          operator delete(*v41);
        }

        v41 += 3;
      }

      while (v41 != v35);
      v36 = a1[1];
    }

    v42 = v32 + v36 - v5;
    a1[1] = v5;
    v43 = *a1;
    v44 = v81 + *a1 - v5;
    if (*a1 != v5)
    {
      v45 = *a1;
      v46 = v81 + *a1 - v5;
      do
      {
        v47 = *v45;
        *(v46 + 16) = *(v45 + 2);
        *v46 = v47;
        *(v45 + 1) = 0;
        *(v45 + 2) = 0;
        *v45 = 0;
        v48 = *(v45 + 24);
        *(v46 + 40) = *(v45 + 10);
        *(v46 + 24) = v48;
        v45 += 3;
        v46 += 48;
      }

      while (v45 != v5);
      do
      {
        if (*(v43 + 23) < 0)
        {
          operator delete(*v43);
        }

        v43 += 48;
      }

      while (v43 != v5);
      v43 = *a1;
    }

    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v43)
    {
      operator delete(v43);
    }

    return v81;
  }

  v15 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) < a5)
  {
    v16 = (a3 + v15);
    v17 = sub_34BE44(a1, (a3 + v15), a4, a1[1]);
    v18 = v17;
    a1[1] = v17;
    if (v15 >= 1)
    {
      v19 = v17 - 48 * a5;
      if (v19 >= v10)
      {
        v21 = v17;
      }

      else
      {
        v20 = v17 - 48 * a5;
        v21 = v17;
        do
        {
          v22 = *v20;
          *(v21 + 16) = *(v20 + 16);
          *v21 = v22;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          *v20 = 0;
          v23 = *(v20 + 24);
          *(v21 + 40) = *(v20 + 40);
          *(v21 + 24) = v23;
          v20 += 48;
          v21 += 48;
        }

        while (v20 < v10);
      }

      a1[1] = v21;
      if (v17 != &v5[3 * a5])
      {
        v66 = 0;
        v67 = &v5[3 * a5] - v17;
        do
        {
          v71 = v18 + v66;
          v72 = (v18 + v66 - 48);
          if (*(v18 + v66 - 25) < 0)
          {
            operator delete(*v72);
          }

          v68 = (v19 + v66 - 48);
          v69 = *v68;
          *(v18 + v66 - 32) = *(v19 + v66 - 32);
          *v72 = v69;
          *(v19 + v66 - 25) = 0;
          *v68 = 0;
          v70 = *(v19 + v66 - 24);
          *(v71 - 8) = *(v19 + v66 - 8);
          *(v71 - 24) = v70;
          v66 -= 48;
        }

        while (v67 != v66);
      }

      v73 = 0;
      do
      {
        v77 = &v5[v73];
        v78 = &v7[v73];
        if (v7 != v5)
        {
          v79 = *(v78 + 23);
          if (*(v77 + 23) < 0)
          {
            if (v79 >= 0)
            {
              v74 = &v7[v73];
            }

            else
            {
              v74 = *&v7[v73];
            }

            if (v79 >= 0)
            {
              v75 = *(v78 + 23);
            }

            else
            {
              v75 = *(&v7[v73] + 1);
            }

            sub_13B38(&v5[v73], v74, v75);
          }

          else if ((*(v78 + 23) & 0x80) != 0)
          {
            sub_13A68(&v5[v73], *&v7[v73], *(&v7[v73] + 1));
          }

          else
          {
            v80 = *v78;
            *(v77 + 2) = *(v78 + 2);
            *v77 = v80;
          }
        }

        v76 = *(v78 + 24);
        *(v77 + 10) = *(v78 + 10);
        *(v77 + 24) = v76;
        v73 += 3;
      }

      while (&v7[v73] != v16);
    }

    return v5;
  }

  v24 = &a2[3 * a5];
  v25 = v10 - 48 * a5;
  if (v25 >= v10)
  {
    a1[1] = v10;
    if (v10 == v24)
    {
      goto LABEL_53;
    }

LABEL_49:
    v50 = 0;
    v51 = &a2[3 * a5] - v10;
    do
    {
      v55 = v10 + v50;
      v56 = (v10 + v50 - 48);
      if (*(v10 + v50 - 25) < 0)
      {
        operator delete(*v56);
      }

      v52 = (v25 + v50 - 48);
      v53 = *v52;
      *(v10 + v50 - 32) = *(v25 + v50 - 32);
      *v56 = v53;
      *(v25 + v50 - 25) = 0;
      *v52 = 0;
      v54 = *(v25 + v50 - 24);
      *(v55 - 8) = *(v25 + v50 - 8);
      *(v55 - 24) = v54;
      v50 -= 48;
    }

    while (v51 != v50);
    goto LABEL_53;
  }

  v26 = (v10 - 48 * a5);
  v27 = a1[1];
  do
  {
    v28 = *v26;
    *(v27 + 16) = *(v26 + 2);
    *v27 = v28;
    *(v26 + 1) = 0;
    *(v26 + 2) = 0;
    *v26 = 0;
    v29 = *(v26 + 24);
    *(v27 + 40) = *(v26 + 10);
    *(v27 + 24) = v29;
    v26 += 3;
    v27 += 48;
  }

  while (v26 < v10);
  a1[1] = v27;
  if (v10 != v24)
  {
    goto LABEL_49;
  }

LABEL_53:
  v57 = 0;
  v58 = &v7[3 * a5];
  do
  {
    v62 = &v5[v57];
    v63 = &v7[v57];
    if (v7 != v5)
    {
      v64 = *(v63 + 23);
      if (*(v62 + 23) < 0)
      {
        if (v64 >= 0)
        {
          v59 = &v7[v57];
        }

        else
        {
          v59 = *&v7[v57];
        }

        if (v64 >= 0)
        {
          v60 = *(v63 + 23);
        }

        else
        {
          v60 = *(&v7[v57] + 1);
        }

        sub_13B38(&v5[v57], v59, v60);
      }

      else if ((*(v63 + 23) & 0x80) != 0)
      {
        sub_13A68(&v5[v57], *&v7[v57], *(&v7[v57] + 1));
      }

      else
      {
        v65 = *v63;
        *(v62 + 2) = *(v63 + 2);
        *v62 = v65;
      }
    }

    v61 = *(v63 + 24);
    *(v62 + 10) = *(v63 + 10);
    *(v62 + 24) = v61;
    v57 += 3;
  }

  while (&v7[v57] != v58);
  return v5;
}

void sub_34BE2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_34BE44(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_325C(v4, *v7, *(v7 + 1));
        v9 = v11;
      }

      else
      {
        v8 = *v7;
        *(v4 + 16) = *(v7 + 2);
        *v4 = v8;
        v9 = v4;
      }

      v10 = *(v7 + 24);
      *(v4 + 40) = *(v7 + 10);
      *(v4 + 24) = v10;
      v7 += 3;
      v4 = v9 + 48;
      v11 = v9 + 48;
    }

    while (v7 != a3);
  }

  return v4;
}

void sub_34BF0C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
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
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        sub_34C538(a1, a1 + 48, a2 - 6);
        return;
      case 4uLL:

        sub_34C9E8(a1, a1 + 48, a1 + 96, a2 - 6);
        return;
      case 5uLL:

        sub_34CD18(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 6);
        return;
    }

LABEL_10:
    if (v12 <= 1151)
    {
      if (a5)
      {

        sub_34D134(a1, a2);
      }

      else
      {

        sub_34D328(a1, a2);
      }

      return;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v43 = (v13 - 2) >> 1;
        v44 = v43 + 1;
        v45 = (a1 + 48 * v43);
        do
        {
          sub_34E06C(a1, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 4), v45);
          v45 -= 6;
          --v44;
        }

        while (v44);
        v46 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
        do
        {
          sub_34E33C(a1, a2, a3, v46);
          a2 -= 48;
        }

        while (v46-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = a1 + 48 * (v13 >> 1);
    if (v12 < 0x1801)
    {
      sub_34C538(v15, a1, a2 - 6);
      if (a5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_34C538(a1, v15, a2 - 6);
      v16 = 48 * v14;
      v17 = 48 * v14 + a1 - 48;
      sub_34C538(a1 + 48, v17, a2 - 12);
      sub_34C538(a1 + 96, a1 + 48 + v16, a2 - 18);
      sub_34C538(v17, v15, (a1 + 48 + v16));
      v18 = *a1;
      *&v54 = *(a1 + 8);
      *(&v54 + 7) = *(a1 + 15);
      v19 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v50 = *(a1 + 24);
      v52 = *(a1 + 40);
      v20 = *v15;
      *(a1 + 16) = *(v15 + 16);
      *a1 = v20;
      *(v15 + 23) = 0;
      v21 = *(v15 + 24);
      *(a1 + 40) = *(v15 + 40);
      *(a1 + 24) = v21;
      *v15 = v18;
      *(v15 + 8) = v54;
      *(v15 + 15) = *(&v54 + 7);
      *(v15 + 23) = v19;
      *(v15 + 40) = v52;
      *(v15 + 24) = v50;
      if (a5)
      {
        goto LABEL_35;
      }
    }

    v22 = *(a1 - 25);
    if (v22 >= 0)
    {
      v23 = (a1 - 48);
    }

    else
    {
      v23 = *(a1 - 48);
    }

    if (v22 >= 0)
    {
      v24 = *(a1 - 25);
    }

    else
    {
      v24 = *(a1 - 40);
    }

    v25 = *(a1 + 23);
    if (v25 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    if (v25 >= 0)
    {
      v27 = *(a1 + 23);
    }

    else
    {
      v27 = *(a1 + 8);
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
        goto LABEL_39;
      }
    }

    else if (v24 >= v27)
    {
LABEL_39:
      v9 = sub_34D504(a1, a2);
      goto LABEL_40;
    }

LABEL_35:
    v30 = sub_34D8C8(a1, a2);
    if ((v31 & 1) == 0)
    {
      goto LABEL_38;
    }

    v32 = sub_34DC68(a1, v30);
    v9 = v30 + 6;
    if (sub_34DC68((v30 + 6), a2))
    {
      a4 = -v11;
      a2 = v30;
      if (v32)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v32)
    {
LABEL_38:
      sub_34BF0C(a1, v30, a3, -v11, a5 & 1);
      v9 = v30 + 6;
LABEL_40:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 < 2)
  {
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v33 = (a2 - 48);
  v34 = *(a2 - 25);
  if (v34 >= 0)
  {
    v35 = a2 - 48;
  }

  else
  {
    v35 = *(a2 - 6);
  }

  if (v34 >= 0)
  {
    v36 = *(a2 - 25);
  }

  else
  {
    v36 = *(a2 - 5);
  }

  v37 = *(a1 + 23);
  v38 = *a1;
  if (v37 >= 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = *a1;
  }

  if (v37 >= 0)
  {
    v40 = *(a1 + 23);
  }

  else
  {
    v40 = *(a1 + 8);
  }

  if (v40 >= v36)
  {
    v41 = v36;
  }

  else
  {
    v41 = v40;
  }

  v42 = memcmp(v35, v39, v41);
  if (v42)
  {
    if ((v42 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v36 >= v40)
  {
    return;
  }

  *v55 = *(a1 + 8);
  *&v55[7] = *(a1 + 15);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v51 = *(a1 + 24);
  v53 = *(a1 + 40);
  v48 = *v33;
  *(a1 + 16) = *(a2 - 4);
  *a1 = v48;
  *(a2 - 25) = 0;
  *(a2 - 48) = 0;
  v49 = *(a2 - 24);
  *(a1 + 40) = *(a2 - 2);
  *(a1 + 24) = v49;
  if (*(a2 - 25) < 0)
  {
    operator delete(*v33);
  }

  *(a2 - 6) = v38;
  *(a2 - 5) = *v55;
  *(a2 - 33) = *&v55[7];
  *(a2 - 25) = v37;
  *(a2 - 24) = v51;
  *(a2 - 2) = v53;
}

uint64_t sub_34C538(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 23);
  v52 = (a2 + 8);
  v51 = v6;
  v50 = *a2;
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
    v8 = *(a2 + 8);
  }

  v9 = *(a1 + 23);
  v10 = (a1 + 8);
  v11 = *a1;
  if ((v9 & 0x80u) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if ((v9 & 0x80u) == 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = *(a1 + 8);
  }

  if (v13 >= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v7, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    if (v8 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v8;
    }

    v26 = memcmp(v23, v7, v25);
    if (v26)
    {
      v27 = v52;
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v46 = v24 >= v8;
      v27 = v52;
      if (v46)
      {
LABEL_42:
        *v61 = *v10;
        *&v61[7] = *(v10 + 7);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v53 = *(a1 + 24);
        v57 = *(a1 + 40);
        v28 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v28;
        *(a2 + 23) = 0;
        *a2 = 0;
        LODWORD(v28) = *(a2 + 40);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = v28;
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = v11;
        *v27 = *v61;
        *(v27 + 7) = *&v61[7];
        *(a2 + 23) = v9;
        *(a2 + 24) = v53;
        *(a2 + 40) = v57;
        v29 = *(a3 + 23);
        if (v29 >= 0)
        {
          v30 = a3;
        }

        else
        {
          v30 = *a3;
        }

        if (v29 >= 0)
        {
          v31 = *(a3 + 23);
        }

        else
        {
          v31 = a3[1];
        }

        if ((v9 & 0x80u) == 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = v11;
        }

        if ((v9 & 0x80u) == 0)
        {
          v33 = v9;
        }

        else
        {
          v33 = *(a2 + 8);
        }

        if (v33 >= v31)
        {
          v34 = v31;
        }

        else
        {
          v34 = v33;
        }

        v35 = memcmp(v30, v32, v34);
        if (v35)
        {
          if ((v35 & 0x80000000) == 0)
          {
            return 1;
          }
        }

        else if (v31 >= v33)
        {
          return 1;
        }

        *v63 = *v27;
        *&v63[7] = *(v27 + 7);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = 0;
        v55 = *(a2 + 24);
        v59 = *(a2 + 40);
        v48 = a3[2];
        *a2 = *a3;
        *(a2 + 16) = v48;
        *(a3 + 23) = 0;
        *a3 = 0;
        LODWORD(v48) = *(a3 + 10);
        *(a2 + 24) = *(a3 + 3);
        *(a2 + 40) = v48;
        if (*(a3 + 23) < 0)
        {
          goto LABEL_85;
        }

        goto LABEL_86;
      }
    }

    *v63 = *v10;
    *&v63[7] = *(v10 + 7);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v55 = *(a1 + 24);
    v59 = *(a1 + 40);
    v47 = a3[2];
    *a1 = *a3;
    *(a1 + 16) = v47;
    *(a3 + 23) = 0;
    *a3 = 0;
    LODWORD(v47) = *(a3 + 10);
    *(a1 + 24) = *(a3 + 3);
    *(a1 + 40) = v47;
    if (*(a3 + 23) < 0)
    {
LABEL_85:
      operator delete(*a3);
    }

LABEL_86:
    *a3 = v11;
    a3[1] = *v63;
    *(a3 + 15) = *&v63[7];
    *(a3 + 23) = v9;
    *(a3 + 3) = v55;
    *(a3 + 10) = v59;
    return 1;
  }

  if (v8 < v13)
  {
    goto LABEL_31;
  }

LABEL_18:
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = a3[1];
  }

  if (v8 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v8;
  }

  v20 = memcmp(v17, v7, v19);
  if (v20)
  {
    if ((v20 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (v18 >= v8)
  {
    return 0;
  }

  *v62 = *v52;
  *&v62[7] = *(v52 + 7);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v54 = *(a2 + 24);
  v58 = *(a2 + 40);
  v36 = a3[2];
  *a2 = *a3;
  *(a2 + 16) = v36;
  *(a3 + 23) = 0;
  *a3 = 0;
  LODWORD(v36) = *(a3 + 10);
  *(a2 + 24) = *(a3 + 3);
  *(a2 + 40) = v36;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v50;
  a3[1] = *v62;
  *(a3 + 15) = *&v62[7];
  *(a3 + 23) = v51;
  *(a3 + 3) = v54;
  *(a3 + 10) = v58;
  v37 = *(a2 + 23);
  if (v37 >= 0)
  {
    v38 = a2;
  }

  else
  {
    v38 = *a2;
  }

  if (v37 >= 0)
  {
    v39 = *(a2 + 23);
  }

  else
  {
    v39 = *(a2 + 8);
  }

  v40 = *(a1 + 23);
  v41 = *a1;
  if (v40 >= 0)
  {
    v42 = a1;
  }

  else
  {
    v42 = *a1;
  }

  if (v40 >= 0)
  {
    v43 = *(a1 + 23);
  }

  else
  {
    v43 = *(a1 + 8);
  }

  if (v43 >= v39)
  {
    v44 = v39;
  }

  else
  {
    v44 = v43;
  }

  v45 = memcmp(v38, v42, v44);
  if (v45)
  {
    if (v45 < 0)
    {
      goto LABEL_91;
    }
  }

  else if (v39 < v43)
  {
LABEL_91:
    *v64 = *v10;
    *&v64[7] = *(v10 + 7);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v56 = *(a1 + 24);
    v60 = *(a1 + 40);
    v49 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v49;
    *(a2 + 23) = 0;
    *a2 = 0;
    LODWORD(v49) = *(a2 + 40);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = v49;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v41;
    *v52 = *v64;
    *(v52 + 7) = *&v64[7];
    *(a2 + 23) = v40;
    *(a2 + 24) = v56;
    *(a2 + 40) = v60;
  }

  return 1;
}

void sub_34C9E8(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  sub_34C538(a1, a2, a3);
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
  v12 = (a3 + 8);
  v13 = *a3;
  if (v11 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v11 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v10 >= v15)
  {
    return;
  }

  *v46 = *v12;
  *&v46[7] = *(a3 + 15);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v40 = *(a3 + 24);
  v43 = *(a3 + 40);
  v18 = a4[2];
  *a3 = *a4;
  *(a3 + 16) = v18;
  *(a4 + 23) = 0;
  *a4 = 0;
  LODWORD(v18) = *(a4 + 10);
  *(a3 + 24) = *(a4 + 3);
  *(a3 + 40) = v18;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  a4[1] = *v46;
  *(a4 + 15) = *&v46[7];
  *(a4 + 23) = v11;
  *(a4 + 3) = v40;
  *(a4 + 10) = v43;
  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = *(a3 + 8);
  }

  v22 = *(a2 + 23);
  v23 = (a2 + 8);
  v24 = *a2;
  if (v22 >= 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if (v22 >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = *(a2 + 8);
  }

  if (v26 >= v21)
  {
    v27 = v21;
  }

  else
  {
    v27 = v26;
  }

  v28 = memcmp(v20, v25, v27);
  if (v28)
  {
    if ((v28 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v21 >= v26)
  {
    return;
  }

  *v47 = *v23;
  *&v47[7] = *(a2 + 15);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v41 = *(a2 + 24);
  v44 = *(a2 + 40);
  v29 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v29;
  *(a3 + 23) = 0;
  *a3 = 0;
  LODWORD(v29) = *(a3 + 40);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = v29;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v24;
  *v12 = *v47;
  *(a3 + 15) = *&v47[7];
  *(a3 + 23) = v22;
  *(a3 + 24) = v41;
  *(a3 + 40) = v44;
  v30 = *(a2 + 23);
  if (v30 >= 0)
  {
    v31 = a2;
  }

  else
  {
    v31 = *a2;
  }

  if (v30 >= 0)
  {
    v32 = *(a2 + 23);
  }

  else
  {
    v32 = *(a2 + 8);
  }

  v33 = *(a1 + 23);
  v34 = *a1;
  if (v33 >= 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = *a1;
  }

  if (v33 >= 0)
  {
    v36 = *(a1 + 23);
  }

  else
  {
    v36 = *(a1 + 8);
  }

  if (v36 >= v32)
  {
    v37 = v32;
  }

  else
  {
    v37 = v36;
  }

  v38 = memcmp(v31, v35, v37);
  if (v38)
  {
    if ((v38 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v32 >= v36)
  {
    return;
  }

  *v48 = *(a1 + 8);
  *&v48[7] = *(a1 + 15);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v42 = *(a1 + 24);
  v45 = *(a1 + 40);
  v39 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v39;
  *(a2 + 23) = 0;
  *a2 = 0;
  LODWORD(v39) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v39;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v34;
  *v23 = *v48;
  *(a2 + 15) = *&v48[7];
  *(a2 + 23) = v33;
  *(a2 + 24) = v42;
  *(a2 + 40) = v45;
}

void sub_34CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  sub_34C9E8(a1, a2, a3, a4);
  v9 = *(a5 + 23);
  if (v9 >= 0)
  {
    v10 = a5;
  }

  else
  {
    v10 = *a5;
  }

  if (v9 >= 0)
  {
    v11 = *(a5 + 23);
  }

  else
  {
    v11 = a5[1];
  }

  v12 = *(a4 + 23);
  v13 = (a4 + 8);
  v14 = *a4;
  if (v12 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v12 >= 0)
  {
    v16 = *(a4 + 23);
  }

  else
  {
    v16 = *(a4 + 8);
  }

  if (v16 >= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = memcmp(v10, v15, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v11 >= v16)
  {
    return;
  }

  *v61 = *v13;
  *&v61[7] = *(a4 + 15);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v53 = *(a4 + 24);
  v57 = *(a4 + 40);
  v19 = a5[2];
  *a4 = *a5;
  *(a4 + 16) = v19;
  *(a5 + 23) = 0;
  *a5 = 0;
  LODWORD(v19) = *(a5 + 10);
  *(a4 + 24) = *(a5 + 3);
  *(a4 + 40) = v19;
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = v14;
  a5[1] = *v61;
  *(a5 + 15) = *&v61[7];
  *(a5 + 23) = v12;
  *(a5 + 3) = v53;
  *(a5 + 10) = v57;
  v20 = *(a4 + 23);
  if (v20 >= 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = *a4;
  }

  if (v20 >= 0)
  {
    v22 = *(a4 + 23);
  }

  else
  {
    v22 = *(a4 + 8);
  }

  v23 = *(a3 + 23);
  v24 = (a3 + 8);
  v25 = *a3;
  if (v23 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v23 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  if (v27 >= v22)
  {
    v28 = v22;
  }

  else
  {
    v28 = v27;
  }

  v29 = memcmp(v21, v26, v28);
  if (v29)
  {
    if ((v29 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v22 >= v27)
  {
    return;
  }

  *v62 = *v24;
  *&v62[7] = *(a3 + 15);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v54 = *(a3 + 24);
  v58 = *(a3 + 40);
  v30 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v30;
  *(a4 + 23) = 0;
  *a4 = 0;
  LODWORD(v30) = *(a4 + 40);
  *(a3 + 24) = *(a4 + 24);
  *(a3 + 40) = v30;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v25;
  *v13 = *v62;
  *(a4 + 15) = *&v62[7];
  *(a4 + 23) = v23;
  *(a4 + 24) = v54;
  *(a4 + 40) = v58;
  v31 = *(a3 + 23);
  if (v31 >= 0)
  {
    v32 = a3;
  }

  else
  {
    v32 = *a3;
  }

  if (v31 >= 0)
  {
    v33 = *(a3 + 23);
  }

  else
  {
    v33 = *(a3 + 8);
  }

  v34 = *(a2 + 23);
  v35 = (a2 + 8);
  v36 = *a2;
  if (v34 >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = *a2;
  }

  if (v34 >= 0)
  {
    v38 = *(a2 + 23);
  }

  else
  {
    v38 = *(a2 + 8);
  }

  if (v38 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v38;
  }

  v40 = memcmp(v32, v37, v39);
  if (v40)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v33 >= v38)
  {
    return;
  }

  *v63 = *v35;
  *&v63[7] = *(a2 + 15);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v55 = *(a2 + 24);
  v59 = *(a2 + 40);
  v41 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v41;
  *(a3 + 23) = 0;
  *a3 = 0;
  LODWORD(v41) = *(a3 + 40);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = v41;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v36;
  *v24 = *v63;
  *(a3 + 15) = *&v63[7];
  *(a3 + 23) = v34;
  *(a3 + 24) = v55;
  *(a3 + 40) = v59;
  v42 = *(a2 + 23);
  if (v42 >= 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = *a2;
  }

  if (v42 >= 0)
  {
    v44 = *(a2 + 23);
  }

  else
  {
    v44 = *(a2 + 8);
  }

  v45 = *(a1 + 23);
  v46 = *a1;
  if (v45 >= 0)
  {
    v47 = a1;
  }

  else
  {
    v47 = *a1;
  }

  if (v45 >= 0)
  {
    v48 = *(a1 + 23);
  }

  else
  {
    v48 = *(a1 + 8);
  }

  if (v48 >= v44)
  {
    v49 = v44;
  }

  else
  {
    v49 = v48;
  }

  v50 = memcmp(v43, v47, v49);
  if (v50)
  {
    if ((v50 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v44 >= v48)
  {
    return;
  }

  *v64 = *(a1 + 8);
  *&v64[7] = *(a1 + 15);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v56 = *(a1 + 24);
  v60 = *(a1 + 40);
  v51 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v51;
  *(a2 + 23) = 0;
  *a2 = 0;
  LODWORD(v51) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v51;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v46;
  *v35 = *v64;
  *(a2 + 15) = *&v64[7];
  *(a2 + 23) = v45;
  *(a2 + 24) = v56;
  *(a2 + 40) = v60;
}

void sub_34D134(char *a1, char *a2)
{
  if (a1 != a2)
  {
    v33 = v2;
    v34 = v3;
    v6 = (a1 + 48);
    if (a1 + 48 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v10 = v8;
        v8 = v6;
        v11 = *(v10 + 71);
        if (v11 >= 0)
        {
          v12 = v6;
        }

        else
        {
          v12 = v10[6];
        }

        if (v11 >= 0)
        {
          v13 = *(v10 + 71);
        }

        else
        {
          v13 = v10[7];
        }

        v14 = *(v10 + 23);
        if (v14 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = *v10;
        }

        if (v14 >= 0)
        {
          v16 = *(v10 + 23);
        }

        else
        {
          v16 = v10[1];
        }

        if (v16 >= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = v16;
        }

        v18 = memcmp(v12, v15, v17);
        if (v18)
        {
          if (v18 < 0)
          {
            goto LABEL_25;
          }
        }

        else if (v13 < v16)
        {
LABEL_25:
          v30 = v8[2];
          v29 = *v8;
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v31 = *(v10 + 9);
          v32 = *(v10 + 22);
          if (SHIBYTE(v30) >= 0)
          {
            v19 = &v29;
          }

          else
          {
            v19 = v29;
          }

          if (SHIBYTE(v30) >= 0)
          {
            v20 = HIBYTE(v30);
          }

          else
          {
            v20 = *(&v29 + 1);
          }

          for (i = v7; ; i -= 48)
          {
            v22 = &a1[i];
            if (a1[i + 71] < 0)
            {
              operator delete(*(v22 + 6));
            }

            *(v22 + 3) = *v22;
            *(v22 + 8) = *(v22 + 2);
            v22[23] = 0;
            *v22 = 0;
            *(v22 + 72) = *(v22 + 24);
            *(v22 + 22) = *(v22 + 10);
            if (!i)
            {
              break;
            }

            v23 = a1[i - 25];
            if (v23 >= 0)
            {
              v24 = &a1[i - 48];
            }

            else
            {
              v24 = *&a1[i - 48];
            }

            if (v23 >= 0)
            {
              v25 = a1[i - 25];
            }

            else
            {
              v25 = *&a1[i - 40];
            }

            if (v25 >= v20)
            {
              v26 = v20;
            }

            else
            {
              v26 = v25;
            }

            v27 = memcmp(v19, v24, v26);
            if (v27)
            {
              if ((v27 & 0x80000000) == 0)
              {
LABEL_48:
                v28 = &a1[i];
                if ((a1[i + 23] & 0x80000000) == 0)
                {
                  goto LABEL_4;
                }

                goto LABEL_51;
              }
            }

            else if (v20 >= v25)
            {
              goto LABEL_48;
            }
          }

          v28 = a1;
          if ((a1[23] & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_51:
          operator delete(*v28);
LABEL_4:
          v9 = &a1[i];
          *v28 = v29;
          *(v28 + 2) = v30;
          *(v9 + 24) = v31;
          *(v9 + 10) = v32;
        }

        v6 = v8 + 6;
        v7 += 48;
      }

      while (v8 + 6 != a2);
    }
  }
}

void sub_34D328(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v32 = v2;
    v33 = v3;
    v5 = a1;
    v6 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v7 = a1 + 9;
      do
      {
        v9 = v5;
        v5 = v6;
        v10 = *(v9 + 71);
        if (v10 >= 0)
        {
          v11 = v6;
        }

        else
        {
          v11 = v9[6];
        }

        if (v10 >= 0)
        {
          v12 = *(v9 + 71);
        }

        else
        {
          v12 = v9[7];
        }

        v13 = *(v9 + 23);
        if (v13 >= 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = *v9;
        }

        if (v13 >= 0)
        {
          v15 = *(v9 + 23);
        }

        else
        {
          v15 = v9[1];
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
            goto LABEL_5;
          }
        }

        else if (v12 >= v15)
        {
          goto LABEL_5;
        }

        v29 = v5[2];
        v28 = *v5;
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
        v30 = *(v9 + 9);
        v31 = *(v9 + 22);
        if (SHIBYTE(v29) >= 0)
        {
          v18 = &v28;
        }

        else
        {
          v18 = v28;
        }

        if (SHIBYTE(v29) >= 0)
        {
          v19 = HIBYTE(v29);
        }

        else
        {
          v19 = *(&v28 + 1);
        }

        for (i = v7; ; i -= 6)
        {
          v21 = (i - 3);
          if (*(i - 1) < 0)
          {
            operator delete(*v21);
          }

          v22 = (i - 9);
          *v21 = *(i - 9);
          *(i - 1) = *(i - 7);
          *(i - 49) = 0;
          *(i - 72) = 0;
          *i = *(i - 3);
          *(i + 4) = *(i - 8);
          v23 = *(i - 97);
          v24 = v23 >= 0 ? i - 15 : *(i - 15);
          v25 = v23 >= 0 ? *(i - 97) : *(i - 14);
          v26 = v25 >= v19 ? v19 : v25;
          v27 = memcmp(v18, v24, v26);
          if (v27)
          {
            break;
          }

          if (v19 >= v25)
          {
            goto LABEL_47;
          }

LABEL_33:
          ;
        }

        if (v27 < 0)
        {
          goto LABEL_33;
        }

LABEL_47:
        if (*(i - 49) < 0)
        {
          operator delete(*v22);
        }

        v8 = i - 6;
        *v22 = v28;
        *(i - 7) = v29;
        *v8 = v30;
        *(v8 + 4) = v31;
LABEL_5:
        v6 = v5 + 6;
        v7 += 6;
      }

      while (v5 + 6 != a2);
    }
  }
}

const void **sub_34D504(uint64_t a1, _OWORD *a2)
{
  v2 = a2;
  v55 = *(a1 + 16);
  *__p = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v56 = *(a1 + 24);
  v57 = *(a1 + 40);
  if (SHIBYTE(v55) >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (SHIBYTE(v55) >= 0)
  {
    v5 = HIBYTE(v55);
  }

  else
  {
    v5 = __p[1];
  }

  v6 = *(a2 - 6);
  v7 = *(a2 - 25);
  v8 = *(a2 - 5);
  if ((v7 & 0x80u) == 0)
  {
    v9 = a2 - 3;
  }

  else
  {
    v9 = *(a2 - 6);
  }

  if ((v7 & 0x80u) == 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 >= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = v10;
  }

  v12 = memcmp(v4, v9, v11);
  if (v12)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v5 >= v10)
  {
LABEL_18:
    for (i = (a1 + 48); i < v2; i += 6)
    {
      v14 = *(i + 23);
      if (v14 >= 0)
      {
        v15 = i;
      }

      else
      {
        v15 = *i;
      }

      if (v14 >= 0)
      {
        v16 = *(i + 23);
      }

      else
      {
        v16 = i[1];
      }

      if (v16 >= v5)
      {
        v17 = v5;
      }

      else
      {
        v17 = v16;
      }

      v18 = memcmp(v4, v15, v17);
      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_48;
        }
      }

      else if (v5 < v16)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_48;
  }

  v19 = (a1 + 48);
  do
  {
    while (1)
    {
      i = v19;
      v20 = *(v19 + 23);
      v21 = v20 >= 0 ? i : *i;
      v22 = (v20 >= 0 ? v20 : i[1]);
      v23 = (v22 >= v5 ? v5 : v22);
      v24 = memcmp(v4, v21, v23);
      v19 = i + 6;
      if (v24)
      {
        break;
      }

      if (v5 < v22)
      {
        goto LABEL_48;
      }
    }
  }

  while ((v24 & 0x80000000) == 0);
LABEL_48:
  if (i < v2)
  {
    for (v2 -= 3; ; v8 = *(v2 + 1))
    {
      if ((v7 & 0x80u) == 0)
      {
        v26 = v2;
      }

      else
      {
        v26 = v6;
      }

      if ((v7 & 0x80u) == 0)
      {
        v27 = v7;
      }

      else
      {
        v27 = v8;
      }

      if (v27 >= v5)
      {
        v28 = v5;
      }

      else
      {
        v28 = v27;
      }

      v29 = memcmp(v4, v26, v28);
      if (v29)
      {
        if ((v29 & 0x80000000) == 0)
        {
          break;
        }
      }

      else if (v5 >= v27)
      {
        break;
      }

      v25 = *(v2 - 6);
      v2 -= 3;
      v6 = v25;
      v7 = *(v2 + 23);
    }
  }

  if (i < v2)
  {
    v30 = *i;
    do
    {
      v60[0] = i[1];
      *(v60 + 7) = *(i + 15);
      v31 = *(i + 23);
      i[1] = 0;
      i[2] = 0;
      *i = 0;
      v58 = *(i + 3);
      v59 = *(i + 10);
      v32 = *(v2 + 2);
      *i = *v2;
      i[2] = v32;
      *(v2 + 23) = 0;
      *v2 = 0;
      v33 = *(v2 + 24);
      *(i + 10) = *(v2 + 10);
      *(i + 3) = v33;
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      *v2 = v30;
      *(v2 + 15) = *(v60 + 7);
      *(v2 + 1) = v60[0];
      *(v2 + 23) = v31;
      *(v2 + 24) = v58;
      *(v2 + 10) = v59;
      if (SHIBYTE(v55) >= 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }

      if (SHIBYTE(v55) >= 0)
      {
        v35 = HIBYTE(v55);
      }

      else
      {
        v35 = __p[1];
      }

      v36 = i + 6;
      do
      {
        while (1)
        {
          i = v36;
          v37 = *(v36 + 23);
          v30 = *i;
          v38 = v37 >= 0 ? i : *i;
          v39 = (v37 >= 0 ? v37 : i[1]);
          v40 = (v39 >= v35 ? v35 : v39);
          v41 = memcmp(v34, v38, v40);
          v36 = i + 6;
          if (v41)
          {
            break;
          }

          if (v35 < v39)
          {
            goto LABEL_87;
          }
        }
      }

      while ((v41 & 0x80000000) == 0);
LABEL_87:
      v42 = v2 - 3;
      do
      {
        while (1)
        {
          v2 = v42;
          v43 = *(v42 + 23);
          v44 = (v43 & 0x80u) == 0 ? v2 : *v2;
          v45 = ((v43 & 0x80u) == 0 ? v43 : *(v2 + 1));
          v46 = (v45 >= v35 ? v35 : v45);
          v47 = memcmp(v34, v44, v46);
          v42 = v2 - 3;
          if (v47)
          {
            break;
          }

          if (v35 >= v45)
          {
            goto LABEL_65;
          }
        }
      }

      while (v47 < 0);
LABEL_65:
      ;
    }

    while (i < v2);
  }

  v48 = (i - 6);
  if (i - 6 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v49 = *v48;
    *(a1 + 16) = *(i - 4);
    *a1 = v49;
    *(i - 25) = 0;
    *(i - 48) = 0;
    v50 = *(i - 3);
    *(a1 + 40) = *(i - 2);
    *(a1 + 24) = v50;
  }

  if (*(i - 25) < 0)
  {
    operator delete(*v48);
  }

  v51 = *__p;
  *(i - 4) = v55;
  *v48 = v51;
  HIBYTE(v55) = 0;
  LOBYTE(__p[0]) = 0;
  v52 = v56;
  *(i - 2) = v57;
  *(i - 3) = v52;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  return i;
}

unint64_t sub_34D8C8(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v52 = *(a1 + 16);
  *__p = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v53 = *(a1 + 24);
  v54 = *(a1 + 40);
  if (v52 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v52 >= 0)
  {
    v6 = HIBYTE(v52);
  }

  else
  {
    v6 = __p[1];
  }

  while (1)
  {
    v7 = *(a1 + v4 + 48);
    v8 = *(a1 + v4 + 71);
    v9 = v8 >= 0 ? (a1 + v4 + 48) : *(a1 + v4 + 48);
    v10 = v8 >= 0 ? *(a1 + v4 + 71) : *(a1 + v4 + 56);
    v11 = (v6 >= v10 ? v10 : v6);
    v12 = memcmp(v9, v5, v11);
    if (v12)
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_20;
    }

LABEL_8:
    v4 += 48;
  }

  if (v12 < 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  v13 = a1 + v4 + 48;
  if (v4)
  {
    v14 = a2 - 48;
    do
    {
      while (1)
      {
        a2 = v14;
        v15 = *(v14 + 23);
        v16 = (v15 & 0x80u) == 0 ? a2 : *a2;
        v17 = (v15 & 0x80u) == 0 ? v15 : *(a2 + 8);
        v18 = (v6 >= v17 ? v17 : v6);
        v19 = memcmp(v16, v5, v18);
        v14 = a2 - 48;
        if (v19)
        {
          break;
        }

        if (v17 < v6)
        {
          goto LABEL_34;
        }
      }
    }

    while ((v19 & 0x80000000) == 0);
  }

  else
  {
    do
    {
      if (v13 >= a2)
      {
        break;
      }

      while (1)
      {
        a2 -= 48;
        v39 = *(a2 + 23);
        v40 = v39 >= 0 ? a2 : *a2;
        v41 = v39 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v42 = (v6 >= v41 ? v41 : v6);
        v43 = memcmp(v40, v5, v42);
        if (v43)
        {
          break;
        }

        if (v41 < v6 || v13 >= a2)
        {
          goto LABEL_34;
        }
      }
    }

    while ((v43 & 0x80000000) == 0);
  }

LABEL_34:
  if (v13 >= a2)
  {
    v20 = v13;
  }

  else
  {
    v20 = v13;
    v21 = a2;
    do
    {
      v57[0] = *(v20 + 8);
      *(v57 + 7) = *(v20 + 15);
      v22 = *(v20 + 23);
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *v20 = 0;
      v55 = *(v20 + 24);
      v56 = *(v20 + 40);
      v23 = *(v21 + 16);
      *v20 = *v21;
      *(v20 + 16) = v23;
      *(v21 + 23) = 0;
      *v21 = 0;
      v24 = *(v21 + 24);
      *(v20 + 40) = *(v21 + 40);
      *(v20 + 24) = v24;
      if (*(v21 + 23) < 0)
      {
        operator delete(*v21);
      }

      *v21 = v7;
      *(v21 + 15) = *(v57 + 7);
      *(v21 + 8) = v57[0];
      *(v21 + 23) = v22;
      *(v21 + 24) = v55;
      *(v21 + 40) = v56;
      if (v52 >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      if (v52 >= 0)
      {
        v26 = HIBYTE(v52);
      }

      else
      {
        v26 = __p[1];
      }

      v27 = v20 + 48;
      do
      {
        while (1)
        {
          v20 = v27;
          v28 = *(v27 + 23);
          v7 = *v20;
          v29 = (v28 & 0x80u) == 0 ? v20 : *v20;
          v30 = (v28 & 0x80u) == 0 ? v28 : *(v20 + 8);
          v31 = (v26 >= v30 ? v30 : v26);
          v32 = memcmp(v29, v25, v31);
          v27 = v20 + 48;
          if (v32)
          {
            break;
          }

          if (v30 >= v26)
          {
            goto LABEL_58;
          }
        }
      }

      while (v32 < 0);
LABEL_58:
      v33 = v21 - 48;
      do
      {
        while (1)
        {
          v21 = v33;
          v34 = *(v33 + 23);
          v35 = (v34 & 0x80u) == 0 ? v21 : *v21;
          v36 = (v34 & 0x80u) == 0 ? v34 : *(v21 + 8);
          v37 = (v26 >= v36 ? v36 : v26);
          v38 = memcmp(v35, v25, v37);
          v33 = v21 - 48;
          if (v38)
          {
            break;
          }

          if (v36 < v26)
          {
            goto LABEL_36;
          }
        }
      }

      while ((v38 & 0x80000000) == 0);
LABEL_36:
      ;
    }

    while (v20 < v21);
  }

  v45 = (v20 - 48);
  if (v20 - 48 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v46 = *v45;
    *(a1 + 16) = *(v20 - 32);
    *a1 = v46;
    *(v20 - 25) = 0;
    *(v20 - 48) = 0;
    v47 = *(v20 - 24);
    *(a1 + 40) = *(v20 - 8);
    *(a1 + 24) = v47;
  }

  if (*(v20 - 25) < 0)
  {
    operator delete(*v45);
  }

  v48 = *__p;
  *(v20 - 32) = v52;
  *v45 = v48;
  HIBYTE(v52) = 0;
  LOBYTE(__p[0]) = 0;
  v49 = v53;
  *(v20 - 8) = v54;
  *(v20 - 24) = v49;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  return v20 - 48;
}

BOOL sub_34DC68(uint64_t a1, const void **a2)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        sub_34C538(a1, a1 + 48, a2 - 6);
        return 1;
      case 4:
        sub_34C9E8(a1, a1 + 48, a1 + 96, a2 - 6);
        return 1;
      case 5:
        sub_34CD18(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 6);
        return 1;
    }

LABEL_27:
    v15 = a1 + 96;
    sub_34C538(a1, a1 + 48, (a1 + 96));
    v17 = (a1 + 144);
    if ((a1 + 144) == a2)
    {
      return 1;
    }

    v18 = 0;
    v19 = 0;
    while (1)
    {
      v21 = *(v17 + 23);
      if (v21 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = *v17;
      }

      if (v21 >= 0)
      {
        v23 = *(v17 + 23);
      }

      else
      {
        v23 = v17[1];
      }

      v24 = *(v15 + 23);
      if (v24 >= 0)
      {
        v25 = v15;
      }

      else
      {
        v25 = *v15;
      }

      if (v24 >= 0)
      {
        v26 = *(v15 + 23);
      }

      else
      {
        v26 = *(v15 + 8);
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
          goto LABEL_29;
        }
      }

      else if (v23 >= v26)
      {
LABEL_29:
        v20 = a2;
        goto LABEL_30;
      }

      v29 = 0;
      v49 = *v17;
      v50 = v17[2];
      v17[1] = 0;
      v17[2] = 0;
      *v17 = 0;
      v51 = *(v17 + 3);
      v30 = v18;
      v52 = *(v17 + 10);
      while (1)
      {
        v31 = a1 + v30;
        if (v29 < 0)
        {
          operator delete(*(v31 + 144));
        }

        *(v31 + 144) = *(v31 + 96);
        *(v31 + 160) = *(v31 + 112);
        *(v31 + 119) = 0;
        *(v31 + 96) = 0;
        *(v31 + 168) = *(v31 + 120);
        *(v31 + 184) = *(v31 + 136);
        if (v30 == -96)
        {
          break;
        }

        v32 = a1 + v30;
        if (SHIBYTE(v50) >= 0)
        {
          v33 = &v49;
        }

        else
        {
          v33 = v49;
        }

        if (SHIBYTE(v50) >= 0)
        {
          v34 = HIBYTE(v50);
        }

        else
        {
          v34 = *(&v49 + 1);
        }

        v37 = *(v32 + 48);
        v35 = v32 + 48;
        v36 = v37;
        v38 = *(v35 + 23);
        if (v38 >= 0)
        {
          v39 = v35;
        }

        else
        {
          v39 = v36;
        }

        if (v38 >= 0)
        {
          v40 = *(v35 + 23);
        }

        else
        {
          v40 = *(v35 + 8);
        }

        if (v40 >= v34)
        {
          v41 = v34;
        }

        else
        {
          v41 = v40;
        }

        v42 = memcmp(v33, v39, v41);
        if (v42)
        {
          if ((v42 & 0x80000000) == 0)
          {
            v15 = a1 + v30 + 96;
LABEL_74:
            v20 = a2;
            if ((*(v15 + 23) & 0x80000000) == 0)
            {
              goto LABEL_75;
            }

            goto LABEL_78;
          }
        }

        else if (v34 >= v40)
        {
          goto LABEL_74;
        }

        v15 -= 48;
        v29 = *(v31 + 119);
        v30 -= 48;
      }

      v15 = a1;
      v20 = a2;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

LABEL_78:
      operator delete(*v15);
LABEL_75:
      v43 = a1 + v30;
      v44 = v49;
      *(v15 + 16) = v50;
      *v15 = v44;
      *(v43 + 120) = v51;
      *(v43 + 136) = v52;
      if (++v19 == 8)
      {
        return v17 + 6 == v20;
      }

LABEL_30:
      v15 = v17;
      v18 += 48;
      v17 += 6;
      if (v17 == v20)
      {
        return 1;
      }
    }
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_27;
  }

  v4 = a2 - 6;
  v5 = *(a2 - 25);
  v6 = a2 - 5;
  if (v5 >= 0)
  {
    v7 = a2 - 6;
  }

  else
  {
    v7 = *(a2 - 6);
  }

  if (v5 >= 0)
  {
    v8 = *(a2 - 25);
  }

  else
  {
    v8 = *(a2 - 5);
  }

  v9 = *(a1 + 23);
  v10 = *a1;
  if (v9 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v9 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  if (v12 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = memcmp(v7, v11, v13);
  if (v14)
  {
    if (v14 < 0)
    {
      goto LABEL_81;
    }
  }

  else if (v8 < v12)
  {
LABEL_81:
    v53[0] = *(a1 + 8);
    *(v53 + 7) = *(a1 + 15);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v49 = *(a1 + 24);
    LODWORD(v50) = *(a1 + 40);
    v45 = v4[2];
    *a1 = *v4;
    *(a1 + 16) = v45;
    *(a2 - 25) = 0;
    *(a2 - 48) = 0;
    v46 = *(a2 - 3);
    *(a1 + 40) = *(a2 - 2);
    *(a1 + 24) = v46;
    if (*(a2 - 25) < 0)
    {
      operator delete(*v4);
    }

    *(a2 - 6) = v10;
    *v6 = v53[0];
    *(v6 + 7) = *(v53 + 7);
    *(a2 - 25) = v9;
    *(a2 - 3) = v49;
    *(a2 - 2) = v50;
  }

  return 1;
}

__n128 sub_34E06C(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v6 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v58 = v4;
  v59 = v5;
  v7 = a4;
  v9 = v6 >> 1;
  if ((v6 >> 1) < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
  {
    return result;
  }

  v11 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
  v12 = a1 + 48 * v11;
  v13 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
  if (v13 >= a3)
  {
    goto LABEL_21;
  }

  v14 = (v12 + 48);
  v15 = *(v12 + 23);
  if (v15 >= 0)
  {
    v16 = (a1 + 48 * v11);
  }

  else
  {
    v16 = *v12;
  }

  if (v15 >= 0)
  {
    v17 = *(v12 + 23);
  }

  else
  {
    v17 = *(v12 + 8);
  }

  v18 = *(v12 + 71);
  if (v18 >= 0)
  {
    v19 = (v12 + 48);
  }

  else
  {
    v19 = *(v12 + 48);
  }

  if (v18 >= 0)
  {
    v20 = *(v12 + 71);
  }

  else
  {
    v20 = *(v12 + 56);
  }

  if (v20 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v20;
  }

  v22 = memcmp(v16, v19, v21);
  if (!v22)
  {
    if (v17 < v20)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v22 & 0x80000000) == 0)
  {
LABEL_21:
    v14 = (a1 + 48 * v11);
    v13 = v11;
  }

LABEL_22:
  v23 = *(v14 + 23);
  if (v23 >= 0)
  {
    v24 = v14;
  }

  else
  {
    v24 = *v14;
  }

  if (v23 >= 0)
  {
    v25 = *(v14 + 23);
  }

  else
  {
    v25 = v14[1];
  }

  v26 = *(v7 + 23);
  if (v26 >= 0)
  {
    v27 = v7;
  }

  else
  {
    v27 = *v7;
  }

  if (v26 >= 0)
  {
    v28 = *(v7 + 23);
  }

  else
  {
    v28 = v7[1];
  }

  if (v28 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v24, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v25 < v28)
  {
    return result;
  }

  v32 = 0;
  v54 = *v7;
  v55 = v7[2];
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v56 = *(v7 + 3);
  v57 = *(v7 + 10);
  while (1)
  {
    if (v32 < 0)
    {
      operator delete(*v7);
    }

    v33 = *v14;
    v7[2] = v14[2];
    *v7 = v33;
    *(v14 + 23) = 0;
    *v14 = 0;
    v34 = *(v14 + 3);
    *(v7 + 10) = *(v14 + 10);
    *(v7 + 3) = v34;
    if (v9 < v13)
    {
      break;
    }

    v35 = (2 * v13) | 1;
    v36 = a1 + 48 * v35;
    v13 = 2 * v13 + 2;
    if (v13 >= a3)
    {
      goto LABEL_65;
    }

    v37 = (v36 + 48);
    v38 = *(v36 + 23);
    if (v38 >= 0)
    {
      v39 = (a1 + 48 * v35);
    }

    else
    {
      v39 = *v36;
    }

    if (v38 >= 0)
    {
      v40 = *(v36 + 23);
    }

    else
    {
      v40 = *(v36 + 8);
    }

    v41 = *(v36 + 71);
    if (v41 >= 0)
    {
      v42 = (v36 + 48);
    }

    else
    {
      v42 = *(v36 + 48);
    }

    if (v41 >= 0)
    {
      v43 = *(v36 + 71);
    }

    else
    {
      v43 = *(v36 + 56);
    }

    if (v43 >= v40)
    {
      v44 = v40;
    }

    else
    {
      v44 = v43;
    }

    v45 = memcmp(v39, v42, v44);
    if (v45)
    {
      if (v45 < 0)
      {
        goto LABEL_66;
      }

LABEL_65:
      v37 = (a1 + 48 * v35);
      v13 = v35;
      goto LABEL_66;
    }

    if (v40 >= v43)
    {
      goto LABEL_65;
    }

LABEL_66:
    v46 = *(v37 + 23);
    if (v46 >= 0)
    {
      v47 = v37;
    }

    else
    {
      v47 = *v37;
    }

    if (v46 >= 0)
    {
      v48 = *(v37 + 23);
    }

    else
    {
      v48 = v37[1];
    }

    if (SHIBYTE(v55) >= 0)
    {
      v49 = &v54;
    }

    else
    {
      v49 = v54;
    }

    if (SHIBYTE(v55) >= 0)
    {
      v50 = HIBYTE(v55);
    }

    else
    {
      v50 = *(&v54 + 1);
    }

    if (v50 >= v48)
    {
      v51 = v48;
    }

    else
    {
      v51 = v50;
    }

    v52 = memcmp(v47, v49, v51);
    if (v52)
    {
      if (v52 < 0)
      {
        break;
      }
    }

    else if (v48 < v50)
    {
      break;
    }

    v32 = *(v14 + 23);
    v7 = v14;
    v14 = v37;
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  v53 = v54;
  v14[2] = v55;
  *v14 = v53;
  result = v56;
  *(v14 + 10) = v57;
  *(v14 + 3) = result;
  return result;
}

__n128 sub_34E33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v5 = 0;
  v32 = *a1;
  *v37 = *(a1 + 8);
  *&v37[7] = *(a1 + 15);
  v34 = *(a1 + 23);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v36 = *(a1 + 40);
  v6 = (a4 - 2) >> 1;
  v7 = a1;
  v35 = *(a1 + 24);
  do
  {
    v11 = v7 + 48 * v5;
    v8 = (v11 + 48);
    v12 = 2 * v5;
    v5 = (2 * v5) | 1;
    v13 = v12 + 2;
    if (v12 + 2 < a4)
    {
      v16 = *(v11 + 96);
      v15 = v11 + 96;
      v14 = v16;
      v17 = *(v15 - 25);
      if (v17 >= 0)
      {
        v18 = v8;
      }

      else
      {
        v18 = *(v15 - 48);
      }

      if (v17 >= 0)
      {
        v19 = *(v15 - 25);
      }

      else
      {
        v19 = *(v15 - 40);
      }

      v20 = *(v15 + 23);
      if (v20 >= 0)
      {
        v21 = v15;
      }

      else
      {
        v21 = v14;
      }

      if (v20 >= 0)
      {
        v22 = *(v15 + 23);
      }

      else
      {
        v22 = *(v15 + 8);
      }

      if (v22 >= v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v22;
      }

      v24 = memcmp(v18, v21, v23);
      if (v24)
      {
        if (v24 < 0)
        {
          goto LABEL_3;
        }
      }

      else if (v19 < v22)
      {
LABEL_3:
        v8 = v15;
        v5 = v13;
      }
    }

    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v9 = *v8;
    *(v7 + 16) = *(v8 + 2);
    *v7 = v9;
    *(v8 + 23) = 0;
    *v8 = 0;
    v10 = *(v8 + 24);
    *(v7 + 40) = *(v8 + 10);
    *(v7 + 24) = v10;
    v7 = v8;
  }

  while (v5 <= v6);
  v25 = (a2 - 48);
  v26 = *(v8 + 23);
  if (v8 == (a2 - 48))
  {
    if (v26 < 0)
    {
      operator delete(*v8);
    }

    *v8 = v32;
    *(v8 + 1) = *v37;
    *(v8 + 15) = *&v37[7];
    *(v8 + 23) = v34;
    result = v35;
    *(v8 + 24) = v35;
    *(v8 + 10) = v36;
  }

  else
  {
    if (v26 < 0)
    {
      operator delete(*v8);
    }

    v27 = *v25;
    *(v8 + 2) = *(a2 - 32);
    *v8 = v27;
    *(a2 - 25) = 0;
    *(a2 - 48) = 0;
    v28 = *(a2 - 24);
    *(v8 + 10) = *(a2 - 8);
    *(v8 + 24) = v28;
    if (*(a2 - 25) < 0)
    {
      operator delete(*v25);
    }

    *(a2 - 48) = v32;
    *(a2 - 40) = *v37;
    *(a2 - 33) = *&v37[7];
    *(a2 - 25) = v34;
    *(a2 - 24) = v35;
    *(a2 - 8) = v36;
    result.n128_f64[0] = sub_34E5D0(a1, (v8 + 3), a3, 0xAAAAAAAAAAAAAAABLL * ((v8 - a1 + 48) >> 4));
  }

  return result;
}

double sub_34E5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v35 = v4;
    v36 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 48 * (v6 >> 1));
    v11 = (a2 - 48);
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = (a1 + 48 * (v6 >> 1));
    }

    else
    {
      v13 = *v10;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 1);
    }

    v15 = *(a2 - 25);
    if (v15 >= 0)
    {
      v16 = (a2 - 48);
    }

    else
    {
      v16 = *(a2 - 48);
    }

    if (v15 >= 0)
    {
      v17 = *(v11 + 23);
    }

    else
    {
      v17 = *(v11 + 1);
    }

    if (v17 >= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    v19 = memcmp(v13, v16, v18);
    if (v19)
    {
      if ((v19 & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v14 >= v17)
    {
      return result;
    }

    v32 = *(v11 + 2);
    v31 = *v11;
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *v11 = 0;
    v33 = *(a2 - 24);
    v34 = *(a2 - 8);
    if (v32 >= 0)
    {
      v21 = &v31;
    }

    else
    {
      v21 = v31;
    }

    if (v32 >= 0)
    {
      v22 = HIBYTE(v32);
    }

    else
    {
      v22 = *(&v31 + 1);
    }

    while (1)
    {
      v23 = v10;
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v24 = *v10;
      *(v11 + 2) = *(v10 + 2);
      *v11 = v24;
      *(v10 + 23) = 0;
      *v10 = 0;
      v25 = *(v10 + 24);
      *(v11 + 10) = *(v10 + 10);
      *(v11 + 24) = v25;
      if (!v9)
      {
        break;
      }

      v9 = (v9 - 1) >> 1;
      v10 = (a1 + 48 * v9);
      v26 = *(v10 + 23);
      if (v26 >= 0)
      {
        v27 = (a1 + 48 * v9);
      }

      else
      {
        v27 = *v10;
      }

      if (v26 >= 0)
      {
        v28 = *(v10 + 23);
      }

      else
      {
        v28 = *(v10 + 1);
      }

      if (v22 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v22;
      }

      v30 = memcmp(v27, v21, v29);
      v11 = v23;
      if (v30)
      {
        if ((v30 & 0x80000000) == 0)
        {
          break;
        }
      }

      else if (v28 >= v22)
      {
        break;
      }
    }

    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    *v23 = v31;
    *(v23 + 2) = v32;
    result = *&v33;
    *(v23 + 24) = v33;
    *(v23 + 10) = v34;
  }

  return result;
}

void **sub_34E790(void **a1, void **a2)
{
  result = a2;
  if (a1 != a2)
  {
    v5 = a1 + 6;
    result = a2;
    if (a1 + 6 != a2)
    {
      while (1)
      {
        v6 = *(v5 - 25);
        if (v6 >= 0)
        {
          v7 = *(v5 - 25);
        }

        else
        {
          v7 = *(v5 - 5);
        }

        v8 = *(v5 + 23);
        v9 = v8;
        if (v8 < 0)
        {
          v8 = v5[1];
        }

        if (v7 == v8)
        {
          v10 = v5 - 6;
          v11 = v6 >= 0 ? v5 - 6 : *(v5 - 6);
          v12 = v9 >= 0 ? v5 : *v5;
          if (!memcmp(v11, v12, v7))
          {
            break;
          }
        }

        v5 += 6;
        if (v5 == a2)
        {
          return a2;
        }
      }

      result = a2;
      if (v10 != a2)
      {
        v13 = v5 + 6;
        if (v10 + 12 == a2)
        {
          v14 = v10;
        }

        else
        {
          do
          {
            while (1)
            {
              v17 = *(v10 + 23);
              if (v17 >= 0)
              {
                v18 = *(v10 + 23);
              }

              else
              {
                v18 = v10[1];
              }

              v19 = *(v13 + 23);
              v20 = v19;
              if (v19 < 0)
              {
                v19 = v13[1];
              }

              if (v18 != v19)
              {
                break;
              }

              v21 = v17 >= 0 ? v10 : *v10;
              v22 = v20 >= 0 ? v13 : *v13;
              if (memcmp(v21, v22, v18))
              {
                break;
              }

              v14 = v10;
              v13 += 6;
              if (v13 == a2)
              {
                return v14 + 6;
              }
            }

            v14 = v10 + 6;
            if (*(v10 + 71) < 0)
            {
              operator delete(*v14);
            }

            v15 = *v13;
            v10[8] = v13[2];
            *v14 = v15;
            *(v13 + 23) = 0;
            *v13 = 0;
            v16 = *(v13 + 3);
            *(v10 + 22) = *(v13 + 10);
            *(v10 + 9) = v16;
            v10 += 6;
            v13 += 6;
          }

          while (v13 != a2);
        }

        return v14 + 6;
      }
    }
  }

  return result;
}

void *sub_34E938(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_34EA70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_348BC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_34EA84(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  v22 = a1;
  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 40 * v2;
  *v6 = *a2;
  __p = 0;
  v19 = 40 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  *(a2 + 24) = 0;
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  v20 = 40 * v2 + 40;
  v21 = 0;
  sub_348AA0(a1, &__p);
  v9 = a1[1];
  v10 = v19;
  for (i = v20; v20 != v10; i = v20)
  {
    while (1)
    {
      v14 = i - 40;
      v20 = i - 40;
      v15 = *(i - 32);
      if (v15)
      {
        break;
      }

      i -= 40;
      if (v14 == v10)
      {
        goto LABEL_11;
      }
    }

    v16 = *(i - 24);
    v13 = *(i - 32);
    if (v16 != v15)
    {
      do
      {
        v17 = *(v16 - 25);
        v16 -= 6;
        if (v17 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v13 = *(i - 32);
    }

    *(i - 24) = v15;
    operator delete(v13);
  }

LABEL_11:
  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_34EC24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_348BC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_34EC38(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v45 = *a1;
  v46 = &v45[v2];
  v47 = 0x2C700000000;
LABEL_3:
  while (sub_32BB58(&v45))
  {
    if (v47 == 1)
    {
      v13 = sub_32BDF0(&v45, v46);
      v14 = v45;
      v45 += v13;
      if (v45 > v46)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v31 = sub_2D390(exception, "Skipping over bytes exceeded message length.", 0x2CuLL);
      }

      if (v13)
      {
        v34 = v14;
        sub_32BDF0(&v34, v46);
        operator new();
      }
    }

    else if (v47 == 2)
    {
      v3 = sub_32BDF0(&v45, v46);
      v5 = v45;
      v4 = v46;
      v6 = &v45[v3];
      v45 = v6;
      if (v6 > v46)
      {
        v28 = __cxa_allocate_exception(0x40uLL);
        v29 = sub_2D390(v28, "Skipping over bytes exceeded message length.", 0x2CuLL);
      }

      if (v3)
      {
        while (1)
        {
          v34 = v5;
          v7 = 4095.75 / sub_32BDF0(&v34, v4) * 3.6;
          v8 = v1;
          v9 = (v1 >> 3) + 1;
          if (v9 >> 61)
          {
            sub_1794();
          }

          if (v1 >> 3 != -1)
          {
            if (!(v9 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v10 = (8 * (v1 >> 3));
          *v10 = v7;
          v1 = (v10 + 1);
          memcpy(0, 0, v8);
          if (v5 == v4)
          {
            break;
          }

          v11 = 0;
          v12 = v5;
          while (*v12 < 0)
          {
            ++v12;
            ++v11;
            if (v12 == v4)
            {
              goto LABEL_67;
            }
          }

          if (v11 >= 10)
          {
            v25 = "VarInt longer than expected.";
            v24 = 28;
            goto LABEL_72;
          }

          v5 = v12 + 1;
          if (v12 + 1 == v6)
          {
            goto LABEL_3;
          }
        }

LABEL_67:
        if (v4 - v5 <= 9)
        {
          v24 = 16;
        }

        else
        {
          v24 = 28;
        }

        v25 = "VarInt longer than expected.";
        if (v4 - v5 <= 9)
        {
          v25 = "Buffer overflow.";
        }

LABEL_72:
        v26 = __cxa_allocate_exception(0x40uLL);
        v27 = sub_2D390(v26, v25, v24);
      }
    }

    else
    {
      sub_32BC3C(&v45);
    }
  }

  if (v1 >> 3)
  {
    if (!sub_7E7E4(3u))
    {
      return 0;
    }

    sub_19594F8(&v34);
    sub_4A5C(&v34, "Parsed an unequal number of seconds_in_future and encoded_pace.", 63);
    if ((v44 & 0x10) != 0)
    {
      v18 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v18 = v40;
      }

      v19 = v39;
      v15 = v18 - v39;
      if (v18 - v39 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v15 = 0;
        v33 = 0;
LABEL_61:
        *(&__dst + v15) = 0;
        sub_7E854(&__dst, 3u);
        if (v33 < 0)
        {
          operator delete(__dst);
        }

        if (v42 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v36);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v19 = v37;
      v15 = v38 - v37;
      if (v38 - v37 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_50:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v33 = v15;
    if (!v15)
    {
      goto LABEL_61;
    }

LABEL_60:
    memmove(&__dst, v19, v15);
    goto LABEL_61;
  }

  if (v1)
  {
    v16 = 0;
    while (*v16 > 0.0 && *v16 <= 250.0)
    {
      if (++v16 == v1)
      {
        return 0;
      }
    }

    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v34);
      sub_4A5C(&v34, "Encountered a PredictedPaces message where at least one encoded pace results in an invalid speed.", 97);
      if ((v44 & 0x10) != 0)
      {
        v21 = v43;
        if (v43 < v40)
        {
          v43 = v40;
          v21 = v40;
        }

        v22 = &v39;
      }

      else
      {
        if ((v44 & 8) == 0)
        {
          v15 = 0;
          v33 = 0;
          goto LABEL_61;
        }

        v22 = &v37;
        v21 = v38;
      }

      v19 = *v22;
      v15 = v21 - *v22;
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      v33 = v21 - *v22;
      if (!v15)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  return 0;
}