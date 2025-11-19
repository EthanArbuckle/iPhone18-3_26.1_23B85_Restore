void sub_42FA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_42FA60(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 1456) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1464) = v3;
    v4 = *(a1 + 1472);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1480) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1488) = v3;
    v4 = *(a1 + 1496);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1504) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1512) = v3;
    v4 = *(a1 + 1520);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1528) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1536) = v3;
    v4 = *(a1 + 1544);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1512);
    v8 = *(a1 + 1488);
    v9 = *(a1 + 1464);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 1464);
    }

    v11 = 60;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1488);
    }

    v13 = 61;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 1512);
    }

    v15 = *(a1 + 1536);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 62;
    }

    v18 = sub_2D52A4(*a1, 15, a2, 1);
    v19 = 63;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_42FC34(v21);
  return 0;
}

uint64_t sub_42FC34(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0xFu);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_42FD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_42FD60(uint64_t a1, _DWORD *a2)
{
  sub_58168(*a2 >> 17, a2[1] >> 17);
  v4 = v3 | 0x40000000;
  do
  {
    v5 = v4;
    v6 = sub_42FA60(a1, v4, 1);
    if (v6)
    {
      v7 = &v6[-*v6];
      if (*v7 >= 7u)
      {
        if (*(v7 + 3))
        {
          v8 = sub_42FA60(a1, v5, 1);
          if (v8)
          {
            v9 = &v8[-*v8];
            if (*v9 >= 7u)
            {
              v10 = *(v9 + 3);
              if (v10)
              {
                v11 = &v8[v10 + *&v8[v10]];
                v12 = &v11[-*v11];
                if (*v12 >= 7u)
                {
                  v13 = *(v12 + 3);
                  if (v13)
                  {
                    if (*&v11[v13 + *&v11[v13]])
                    {
                      operator new();
                    }
                  }
                }
              }
            }
          }

          v14 = sub_42FA60(a1, v5, 1);
          if (v14)
          {
            v15 = &v14[-*v14];
            if (*v15 >= 7u)
            {
              v16 = *(v15 + 3);
              if (v16)
              {
                v17 = &v14[v16 + *&v14[v16]];
                v18 = &v17[-*v17];
                if (*v18 >= 9u)
                {
                  v19 = *(v18 + 4);
                  if (v19)
                  {
                    if (*&v17[v19 + *&v17[v19]])
                    {
                      operator new();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v4 = v5 >> 2;
  }

  while (v5 > 3);
  return 0;
}

void sub_430158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

char *sub_4301B4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_42FA60(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 7u) || (v6 = *(v5 + 3)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v21 = v3;
    v22 = exception;
    v28[0] = v21;
    v28[1] = v2;
    sub_2FF494(v28, &v26);
    sub_23E08("Referenced polygon ", &v26, &v27);
    sub_30F54(" does not exist.", &v27, &v29);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v25 = sub_2D390(v22, v23, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[-*v11];
  if (*v12 < 9u)
  {
    return 0;
  }

  v13 = *(v12 + 4);
  if (!v13)
  {
    return 0;
  }

  v14 = &v11[v13];
  v15 = *v14;
  v17 = &v14[v15 + 4];
  v16 = *&v14[v15];
  v29.__r_.__value_.__r.__words[0] = v17;
  v29.__r_.__value_.__l.__size_ = v16;
  v29.__r_.__value_.__r.__words[2] = 0xF424000000040;
  v30 = 257;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v18 = sub_4303F8(&v29, 0, 0);
  result = 0;
  if (v18)
  {
    return &v17[*v17];
  }

  return result;
}

void sub_430378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4303F8(uint32x2_t *a1, const char *a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < 0xC)
  {
    return 0;
  }

  if (a2)
  {
    v4 = a1;
    v5 = a3;
    v6 = strncmp((*a1 + a3 + 4), a2, 4uLL);
    a3 = v5;
    v7 = v6;
    a1 = v4;
    if (v7)
    {
      return 0;
    }
  }

  if ((a3 & 3) != 0)
  {
    if (v3 - 4 < a3 || (a1[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v3 - 4 < a3)
  {
    return 0;
  }

  v9 = *a1;
  v10 = (*a1 + a3);
  v11 = *v10;
  if (v11 < 1 || v3 - 1 < v11 + a3)
  {
    return 0;
  }

  v12 = (v10 + v11);
  v13 = v10 + v11 - *&v9;
  if ((v13 & 3) != 0)
  {
    if (v3 - 4 < v13 || (a1[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v3 - 4 < v13)
  {
    return 0;
  }

  v14 = *v12;
  v15 = a1[5];
  v16 = vadd_s32(v15, 0x100000001);
  a1[5] = v16;
  v17 = vcgt_u32(v16, a1[2]);
  if ((v17.i32[0] | v17.i32[1]))
  {
    return 0;
  }

  v18 = v13 - v14;
  if ((v13 - v14))
  {
    if ((a1[3].i8[0] & 1) != 0 || v3 - 2 < v18)
    {
      return 0;
    }
  }

  else if (v3 - 2 < v18)
  {
    return 0;
  }

  v19 = *(*&v9 + v18);
  if (v19)
  {
    return 0;
  }

  if (v3 <= v19 || v3 - v19 < v18)
  {
    return 0;
  }

  v21 = (v12 - *v12);
  if (*v21 >= 5u)
  {
    v22 = v21[2];
    if (v22)
    {
      v23 = v13 + v22;
      if ((v23 & 3) != 0)
      {
        if (v3 - 8 < v23 || (a1[3].i8[0] & 1) != 0)
        {
          return 0;
        }

        goto LABEL_36;
      }

      if (v3 - 8 >= v23)
      {
        goto LABEL_36;
      }

      return 0;
    }
  }

LABEL_36:
  a1[5].i32[0] = v15.i32[0];
  return 1;
}

uint64_t sub_4305F0(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v36[0] = sub_4307D0(a1, *a2);
  v36[1] = v6;
  if (!sub_32A18(v36, a3))
  {
    return 0;
  }

  sub_4309E4(a1, *a2, &__p);
  v10 = __p;
  v11 = v35;
  if (__p == v35)
  {
    v23 = 0;
    v24 = __p;
    if (!__p)
    {
      return v23;
    }
  }

  else
  {
    v12 = a3[1];
    LODWORD(v7) = *a3;
    v13 = v7;
    v14 = __p;
    while (1)
    {
      v15 = *v14;
      v16 = v14[1];
      if (*v14 != v16)
      {
        v17 = 0;
        do
        {
          v18 = v15[1];
          v19 = (*v15 + 12);
          if (*v15 != v18 && v19 != v18)
          {
            do
            {
              v21 = *(v19 - 2);
              v22 = v19[1];
              if (v21 < v12 != v22 < v12)
              {
                LODWORD(v8) = *v19;
                LODWORD(v9) = *(v19 - 3);
                v9 = *&v9;
                v8 = (v12 - v21) / (v22 - v21) * (*&v8 - v9) + v9;
                if (v8 < v13)
                {
                  v17 ^= 1u;
                }
              }

              v19 += 3;
            }

            while (v19 != v18);
          }

          v15 += 3;
        }

        while (v15 != v16);
        if (v17)
        {
          break;
        }
      }

      v14 += 3;
      if (v14 == v35)
      {
        v23 = 0;
        if (!__p)
        {
          return v23;
        }

        goto LABEL_25;
      }
    }

    v23 = 1;
    if (!__p)
    {
      return v23;
    }

LABEL_25:
    v25 = v35;
    do
    {
      v28 = *(v25 - 3);
      v25 -= 3;
      v27 = v28;
      if (v28)
      {
        v29 = *(v11 - 2);
        v26 = v27;
        if (v29 != v27)
        {
          v30 = *(v11 - 2);
          do
          {
            v32 = *(v30 - 3);
            v30 -= 24;
            v31 = v32;
            if (v32)
            {
              *(v29 - 2) = v31;
              operator delete(v31);
            }

            v29 = v30;
          }

          while (v30 != v27);
          v26 = *v25;
        }

        *(v11 - 2) = v27;
        operator delete(v26);
      }

      v11 = v25;
    }

    while (v25 != v10);
    v24 = __p;
  }

  v35 = v10;
  operator delete(v24);
  return v23;
}

std::string::size_type sub_4307D0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_42FA60(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 7u) || (v6 = *(v5 + 3)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = v3;
    v18 = exception;
    v25[0] = v17;
    v25[1] = v2;
    sub_2FF494(v25, &v22);
    sub_23E08("Referenced polygon ", &v22, &v23);
    sub_30F54(" does not exist.", &v23, &v24);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v24;
    }

    else
    {
      v19 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v21 = sub_2D390(v18, v19, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[*&v11[-*v11 + 6]];
  v13 = *(v12 + 4);
  if (v13 >= 0xFFFFFFFE)
  {
    v13 = -2;
  }

  LODWORD(v23.__r_.__value_.__l.__data_) = *v12;
  HIDWORD(v23.__r_.__value_.__r.__words[0]) = v13;
  LODWORD(v23.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  v14 = *(v12 + 8);
  LODWORD(v12) = *(v12 + 12);
  if (v12 >= 0xFFFFFFFE)
  {
    v12 = 4294967294;
  }

  else
  {
    v12 = v12;
  }

  v22.__r_.__value_.__r.__words[0] = v14 | (v12 << 32);
  LODWORD(v22.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  sub_320C0(&v24, &v23, &v22);
  return v24.__r_.__value_.__r.__words[0];
}

void sub_430964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_4309E4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = sub_42FA60(a1, a2, 1);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 7u) || (v8 = *(v7 + 3)) == 0 || (v9 = &v6[v8 + *&v6[v8]], v10 = &v9[-*v9], *v10 < 5u) || (v11 = *(v10 + 2)) == 0 || (v12 = &v9[v11 + *&v9[v11]], *v12 <= v5))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23[0] = v5;
    v23[1] = v3;
    sub_2FF494(v23, &v20);
    sub_23E08("Referenced polygon ", &v20, &v21);
    sub_30F54(" does not exist.", &v21, &v22);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = sub_2D390(exception, v17, size);
  }

  v13 = &v12[4 * v5 + 4 + *&v12[4 * v5 + 4]];
  v14 = &v13[*&v13[-*v13 + 4]];
  v15 = &v14[*v14];

  sub_2CBB58(v15, a3);
}

void sub_430B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_430BC8(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

__n128 sub_430F40(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v11 = (a2 - 2);
  v107 = a2 - 4;
  v12 = a2 - 6;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = (a2 - v13) >> 5;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      if (*(a2 - 2) < *(v13 + 16))
      {
        *v133 = *v13;
        *&v133[16] = *(v13 + 16);
        v81 = *(a2 - 2);
        *(v13 + 10) = *(a2 - 22);
        *v13 = v81;
        result = *v133;
        *(a2 - 22) = *&v133[10];
        *(a2 - 2) = *v133;
      }

      return result;
    }

LABEL_9:
    if (v14 <= 23)
    {
      v88 = (v13 + 32);
      v90 = v13 == a2 || v88 == a2;
      if (a5)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v13;
          do
          {
            v94 = v88;
            v95 = *(v92 + 6);
            if (v95 < *(v92 + 2))
            {
              v136 = *v94;
              v96 = *(v92 + 28);
              v97 = v91;
              do
              {
                v98 = v13 + v97;
                *(v98 + 32) = *(v13 + v97);
                *(v98 + 42) = *(v13 + v97 + 10);
                if (!v97)
                {
                  v93 = v13;
                  goto LABEL_125;
                }

                v97 -= 32;
              }

              while (v95 < *(v98 - 16));
              v93 = v13 + v97 + 32;
LABEL_125:
              result = v136;
              *v93 = v136;
              *(v93 + 16) = v95;
              *(v93 + 24) = v96;
            }

            v88 = v94 + 2;
            v91 += 32;
            v92 = v94;
          }

          while (v94 + 2 != a2);
        }
      }

      else if (!v90)
      {
        do
        {
          v100 = v88;
          v101 = *(a1 + 48);
          if (v101 < *(a1 + 16))
          {
            v140 = *v88;
            v102 = *(a1 + 56);
            v103 = v100;
            do
            {
              *v103 = v103[-2];
              *(v103 + 10) = *(v103 - 22);
              v104 = v103[-3].n128_u64[0];
              v103 -= 2;
            }

            while (v101 < v104);
            result = v140;
            *v103 = v140;
            v103[1].n128_u64[0] = v101;
            v103[1].n128_u16[4] = v102;
          }

          v88 = v100 + 2;
          a1 = v100;
        }

        while (v100 + 2 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        sub_43235C(v13, a2, a2);
      }

      return result;
    }

    v15 = v13 + 32 * (v14 >> 1);
    v16 = *(a2 - 2);
    if (v14 < 0x81)
    {
      v19 = *(v13 + 16);
      if (v19 < *(v15 + 16))
      {
        if (v16 < v19)
        {
          *v111 = *v15;
          *&v111[16] = *(v15 + 16);
          v20 = *v11;
          *(v15 + 10) = *(a2 - 22);
          *v15 = v20;
          goto LABEL_36;
        }

        *v120 = *v15;
        *&v120[16] = *(v15 + 16);
        v35 = *v13;
        *(v15 + 10) = *(v13 + 10);
        *v15 = v35;
        *(v13 + 10) = *&v120[10];
        *v13 = *v120;
        if (*(a2 - 2) < *(v13 + 16))
        {
          *v111 = *v13;
          *&v111[16] = *(v13 + 16);
          v36 = *v11;
          *(v13 + 10) = *(a2 - 22);
          *v13 = v36;
LABEL_36:
          *(a2 - 22) = *&v111[10];
          *v11 = *v111;
        }

LABEL_37:
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v16 >= v19)
      {
        goto LABEL_37;
      }

      *v114 = *v13;
      *&v114[16] = *(v13 + 16);
      v23 = *v11;
      *(v13 + 10) = *(a2 - 22);
      *v13 = v23;
      *(a2 - 22) = *&v114[10];
      *v11 = *v114;
      if (*(v13 + 16) >= *(v15 + 16))
      {
        goto LABEL_37;
      }

      *v115 = *v15;
      *&v115[16] = *(v15 + 16);
      v24 = *v13;
      *(v15 + 10) = *(v13 + 10);
      *v15 = v24;
      *(v13 + 10) = *&v115[10];
      *v13 = *v115;
      --a4;
      if (a5)
      {
        goto LABEL_38;
      }

LABEL_61:
      v37 = *(v13 + 16);
      if (*(v13 - 16) < v37)
      {
        goto LABEL_62;
      }

      v109 = *v13;
      if (v37 >= *(a2 - 2))
      {
        v70 = v13 + 32;
        do
        {
          v13 = v70;
          if (v70 >= a2)
          {
            break;
          }

          v71 = *(v70 + 16);
          v70 += 32;
        }

        while (v37 >= v71);
      }

      else
      {
        v68 = v13;
        do
        {
          v13 = v68 + 32;
          v69 = *(v68 + 48);
          v68 += 32;
        }

        while (v37 >= v69);
      }

      v72 = a2;
      if (v13 < a2)
      {
        v73 = a2;
        do
        {
          v72 = v73 - 2;
          v74 = *(v73 - 2);
          v73 -= 2;
        }

        while (v37 < v74);
      }

      v75 = *(a1 + 24);
      while (v13 < v72)
      {
        *v132 = *v13;
        *&v132[16] = *(v13 + 16);
        v76 = *v72;
        *(v13 + 10) = *(v72 + 10);
        *v13 = v76;
        *(v72 + 10) = *&v132[10];
        *v72 = *v132;
        do
        {
          v77 = *(v13 + 48);
          v13 += 32;
        }

        while (v37 >= v77);
        do
        {
          v78 = *(v72 - 2);
          v72 -= 2;
        }

        while (v37 < v78);
      }

      v79 = (v13 - 32);
      if (v13 - 32 != a1)
      {
        v80 = *v79;
        *(a1 + 10) = *(v13 - 22);
        *a1 = v80;
      }

      a5 = 0;
      result = v109;
      *v79 = v109;
      *(v13 - 16) = v37;
      *(v13 - 8) = v75;
    }

    else
    {
      v17 = *(v15 + 16);
      if (v17 >= *(v13 + 16))
      {
        if (v16 < v17)
        {
          *v112 = *v15;
          *&v112[16] = *(v15 + 16);
          v21 = *v11;
          *(v15 + 10) = *(a2 - 22);
          *v15 = v21;
          *(a2 - 22) = *&v112[10];
          *v11 = *v112;
          if (*(v15 + 16) < *(v13 + 16))
          {
            *v113 = *v13;
            *&v113[16] = *(v13 + 16);
            v22 = *v15;
            *(v13 + 10) = *(v15 + 10);
            *v13 = v22;
            *(v15 + 10) = *&v113[10];
            *v15 = *v113;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          *v116 = *v13;
          *&v116[16] = *(v13 + 16);
          v25 = *v15;
          *(v13 + 10) = *(v15 + 10);
          *v13 = v25;
          *(v15 + 10) = *&v116[10];
          *v15 = *v116;
          if (*(a2 - 2) >= *(v15 + 16))
          {
            goto LABEL_28;
          }

          *v110 = *v15;
          *&v110[16] = *(v15 + 16);
          v26 = *v11;
          *(v15 + 10) = *(a2 - 22);
          *v15 = v26;
        }

        else
        {
          *v110 = *v13;
          *&v110[16] = *(v13 + 16);
          v18 = *v11;
          *(v13 + 10) = *(a2 - 22);
          *v13 = v18;
        }

        *(a2 - 22) = *&v110[10];
        *v11 = *v110;
      }

LABEL_28:
      v27 = (v15 - 32);
      v28 = *(v15 - 16);
      v29 = *(a2 - 6);
      if (v28 >= *(v13 + 48))
      {
        if (v29 < v28)
        {
          *v118 = *v27;
          *&v118[16] = *(v15 - 16);
          v33 = *v107;
          *(v15 - 22) = *(a2 - 54);
          *v27 = v33;
          *(a2 - 54) = *&v118[10];
          *v107 = *v118;
          if (*(v15 - 16) < *(v13 + 48))
          {
            *v119 = *(v13 + 32);
            *&v119[16] = *(v13 + 48);
            v34 = *(v15 - 22);
            *(v13 + 32) = *v27;
            *(v13 + 42) = v34;
            *(v15 - 22) = *&v119[10];
            *v27 = *v119;
          }
        }
      }

      else
      {
        if (v29 >= v28)
        {
          *v121 = *(v13 + 32);
          *&v121[16] = *(v13 + 48);
          v38 = *(v15 - 22);
          *(v13 + 32) = *v27;
          *(v13 + 42) = v38;
          *(v15 - 22) = *&v121[10];
          *v27 = *v121;
          if (*(a2 - 6) >= *(v15 - 16))
          {
            goto LABEL_42;
          }

          *v117 = *v27;
          *&v117[16] = *(v15 - 16);
          v31 = a2 - 4;
          v39 = *v107;
          *(v15 - 22) = *(a2 - 54);
          *v27 = v39;
          v30 = *v117;
        }

        else
        {
          v30 = *(v13 + 32);
          *&v117[8] = *(&v30 + 1);
          *&v117[16] = *(v13 + 48);
          v31 = a2 - 4;
          v32 = *(a2 - 54);
          *(v13 + 32) = *v107;
          *(v13 + 42) = v32;
        }

        *(v31 + 10) = *&v117[10];
        *v31 = v30;
      }

LABEL_42:
      v40 = *(v15 + 48);
      v41 = *(a2 - 10);
      if (v40 >= *(v13 + 80))
      {
        if (v41 < v40)
        {
          *v123 = *(v15 + 32);
          *&v123[16] = *(v15 + 48);
          v44 = *v12;
          *(v15 + 42) = *(a2 - 86);
          *(v15 + 32) = v44;
          *(a2 - 86) = *&v123[10];
          *v12 = *v123;
          if (*(v15 + 48) < *(v13 + 80))
          {
            *v124 = *(v13 + 64);
            *&v124[16] = *(v13 + 80);
            v45 = *(v15 + 42);
            *(v13 + 64) = *(v15 + 32);
            *(v13 + 74) = v45;
            *(v15 + 42) = *&v124[10];
            *(v15 + 32) = *v124;
          }
        }
      }

      else
      {
        if (v41 >= v40)
        {
          *v125 = *(v13 + 64);
          *&v125[16] = *(v13 + 80);
          v46 = *(v15 + 42);
          *(v13 + 64) = *(v15 + 32);
          *(v13 + 74) = v46;
          *(v15 + 42) = *&v125[10];
          *(v15 + 32) = *v125;
          if (*(a2 - 10) >= *(v15 + 48))
          {
            goto LABEL_51;
          }

          *v122 = *(v15 + 32);
          *&v122[16] = *(v15 + 48);
          v47 = *v12;
          *(v15 + 42) = *(a2 - 86);
          *(v15 + 32) = v47;
          v42 = *v122;
        }

        else
        {
          v42 = *(v13 + 64);
          *&v122[8] = *(&v42 + 1);
          *&v122[16] = *(v13 + 80);
          v43 = *(a2 - 86);
          *(v13 + 64) = *v12;
          *(v13 + 74) = v43;
        }

        *(a2 - 86) = *&v122[10];
        *v12 = v42;
      }

LABEL_51:
      v48 = *(v15 + 16);
      v49 = *(v15 + 48);
      if (v48 >= *(v15 - 16))
      {
        if (v49 < v48)
        {
          *v127 = *v15;
          *&v127[16] = *(v15 + 16);
          *v15 = *(v15 + 32);
          *(v15 + 10) = *(v15 + 42);
          *(v15 + 42) = *&v127[10];
          *(v15 + 32) = *v127;
          if (*(v15 + 16) < *(v15 - 16))
          {
            *v128 = *v27;
            *&v128[16] = *(v15 - 16);
            *v27 = *v15;
            *(v15 - 22) = *(v15 + 10);
            *(v15 + 10) = *&v128[10];
            *v15 = *v128;
          }
        }
      }

      else
      {
        if (v49 >= v48)
        {
          *v129 = *v27;
          *&v129[16] = *(v15 - 16);
          *v27 = *v15;
          *(v15 - 22) = *(v15 + 10);
          *(v15 + 10) = *&v129[10];
          *v15 = *v129;
          if (*(v15 + 48) >= *(v15 + 16))
          {
            goto LABEL_60;
          }

          *v126 = *v15;
          *&v126[16] = *(v15 + 16);
          *v15 = *(v15 + 32);
          *(v15 + 10) = *(v15 + 42);
        }

        else
        {
          *v126 = *v27;
          *&v126[16] = *(v15 - 16);
          *v27 = *(v15 + 32);
          *(v15 - 22) = *(v15 + 42);
        }

        *(v15 + 42) = *&v126[10];
        *(v15 + 32) = *v126;
      }

LABEL_60:
      *v130 = *v13;
      *&v130[16] = *(v13 + 16);
      v50 = *v15;
      *(v13 + 10) = *(v15 + 10);
      *v13 = v50;
      *(v15 + 10) = *&v130[10];
      *v15 = *v130;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v37 = *(v13 + 16);
LABEL_62:
      v51 = 0;
      v108 = *v13;
      v52 = *(v13 + 24);
      do
      {
        v53 = *(v13 + v51 + 48);
        v51 += 32;
      }

      while (v53 < v37);
      v54 = v13 + v51;
      v55 = a2;
      if (v51 == 32)
      {
        v58 = a2;
        while (v54 < v58)
        {
          v56 = v58 - 2;
          v59 = *(v58 - 2);
          v58 -= 2;
          if (v59 < v37)
          {
            goto LABEL_70;
          }
        }

        v56 = v58;
        v13 = v54;
      }

      else
      {
        do
        {
          v56 = v55 - 2;
          v57 = *(v55 - 2);
          v55 -= 2;
        }

        while (v57 >= v37);
LABEL_70:
        v13 = v54;
        if (v54 < v56)
        {
          v60 = v56;
          do
          {
            *v131 = *v13;
            *&v131[16] = *(v13 + 16);
            v61 = *v60;
            *(v13 + 10) = *(v60 + 10);
            *v13 = v61;
            *(v60 + 10) = *&v131[10];
            *v60 = *v131;
            do
            {
              v62 = *(v13 + 48);
              v13 += 32;
            }

            while (v62 < v37);
            do
            {
              v63 = *(v60 - 2);
              v60 -= 2;
            }

            while (v63 >= v37);
          }

          while (v13 < v60);
        }
      }

      v64 = (v13 - 32);
      if (v13 - 32 != a1)
      {
        v65 = *v64;
        *(a1 + 10) = *(v13 - 22);
        *a1 = v65;
      }

      *v64 = v108;
      *(v13 - 16) = v37;
      *(v13 - 8) = v52;
      if (v54 < v56)
      {
        goto LABEL_81;
      }

      v66 = sub_431E8C(a1, v13 - 32, v108);
      if (sub_431E8C(v13, a2, v67))
      {
        a2 = (v13 - 32);
        if (!v66)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        sub_430F40(a1, v13 - 32, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v85 = *(v13 + 48);
      v86 = *(v13 + 80);
      if (v85 >= *(v13 + 16))
      {
        if (v86 < v85)
        {
          *v138 = *(v13 + 32);
          *&v138[16] = *(v13 + 48);
          *(v13 + 32) = *(v13 + 64);
          *(v13 + 42) = *(v13 + 74);
          *(v13 + 64) = *v138;
          result = *&v138[10];
          *(v13 + 74) = *&v138[10];
          if (*(v13 + 48) < *(v13 + 16))
          {
            *v139 = *v13;
            *&v139[16] = *(v13 + 16);
            *v13 = *(v13 + 32);
            *(v13 + 10) = *(v13 + 42);
            *(v13 + 32) = *v139;
            result = *&v139[10];
            *(v13 + 42) = *&v139[10];
          }
        }
      }

      else
      {
        if (v86 < v85)
        {
          *v135 = *v13;
          *&v135[16] = *(v13 + 16);
          *v13 = *(v13 + 64);
          *(v13 + 10) = *(v13 + 74);
          v87 = *v135;
          goto LABEL_153;
        }

        *v142 = *v13;
        *&v142[16] = *(v13 + 16);
        *v13 = *(v13 + 32);
        *(v13 + 10) = *(v13 + 42);
        *(v13 + 32) = *v142;
        result = *&v142[10];
        *(v13 + 42) = *&v142[10];
        if (v86 < *(v13 + 48))
        {
          v87 = *(v13 + 32);
          *&v135[8] = *(&v87 + 1);
          *&v135[16] = *(v13 + 48);
          *(v13 + 32) = *(v13 + 64);
          *(v13 + 42) = *(v13 + 74);
LABEL_153:
          *(v13 + 64) = v87;
          result = *&v135[10];
          *(v13 + 74) = *&v135[10];
        }
      }

      if (*(a2 - 2) >= *(v13 + 80))
      {
        return result;
      }

      *v143 = *(v13 + 64);
      result = *v143;
      *&v143[16] = *(v13 + 80);
      v106 = *(a2 - 22);
      *(v13 + 64) = *v11;
      *(v13 + 74) = v106;
      *(a2 - 22) = *&v143[10];
      *v11 = *v143;
      if (*(v13 + 80) >= *(v13 + 48))
      {
        return result;
      }

      *v144 = *(v13 + 32);
      *&v144[16] = *(v13 + 48);
      *(v13 + 32) = *(v13 + 64);
      *(v13 + 42) = *(v13 + 74);
      *(v13 + 64) = *v144;
      result = *&v144[10];
      *(v13 + 74) = *&v144[10];
LABEL_157:
      if (*(v13 + 48) < *(v13 + 16))
      {
        *v145 = *v13;
        *&v145[16] = *(v13 + 16);
        *v13 = *(v13 + 32);
        *(v13 + 10) = *(v13 + 42);
        *(v13 + 32) = *v145;
        result = *&v145[10];
        *(v13 + 42) = *&v145[10];
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_431C20(v13, (v13 + 32), (v13 + 64), (v13 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v82 = *(v13 + 48);
  v83 = *(a2 - 2);
  if (v82 >= *(v13 + 16))
  {
    if (v83 >= v82)
    {
      return result;
    }

    *v137 = *(v13 + 32);
    result = *v137;
    *&v137[16] = *(v13 + 48);
    v99 = *(a2 - 22);
    *(v13 + 32) = *v11;
    *(v13 + 42) = v99;
    *(a2 - 22) = *&v137[10];
    *v11 = *v137;
    goto LABEL_157;
  }

  if (v83 >= v82)
  {
    *v141 = *v13;
    *&v141[16] = *(v13 + 16);
    *v13 = *(v13 + 32);
    *(v13 + 10) = *(v13 + 42);
    *(v13 + 32) = *v141;
    result = *&v141[10];
    *(v13 + 42) = *&v141[10];
    if (*(a2 - 2) >= *(v13 + 48))
    {
      return result;
    }

    result = *(v13 + 32);
    *&v134[8] = result.n128_u64[1];
    *&v134[16] = *(v13 + 48);
    v105 = *(a2 - 22);
    *(v13 + 32) = *v11;
    *(v13 + 42) = v105;
  }

  else
  {
    *v134 = *v13;
    *&v134[16] = *(v13 + 16);
    v84 = *v11;
    *(v13 + 10) = *(a2 - 22);
    *v13 = v84;
    result = *v134;
  }

  *(a2 - 22) = *&v134[10];
  *v11 = result;
  return result;
}

__n128 sub_431C20(_OWORD *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 result)
{
  v6 = *(a2 + 2);
  v7 = *(a3 + 2);
  if (v6 >= *(a1 + 2))
  {
    if (v7 < v6)
    {
      *v32 = *a2;
      v10 = *a2;
      *&v32[16] = a2[1];
      v11 = *(a3 + 10);
      *a2 = *a3;
      *(a2 + 10) = v11;
      *a3 = v10;
      result = *&v32[10];
      *(a3 + 10) = *&v32[10];
      if (*(a2 + 2) < *(a1 + 2))
      {
        *v33 = *a1;
        v12 = *a1;
        *&v33[16] = a1[1];
        v13 = *(a2 + 10);
        *a1 = *a2;
        *(a1 + 10) = v13;
        *a2 = v12;
        result = *&v33[10];
        *(a2 + 10) = *&v33[10];
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      *v31 = *a1;
      *&v31[16] = a1[1];
      v9 = *(a3 + 10);
      *a1 = *a3;
      *(a1 + 10) = v9;
LABEL_9:
      *a3 = v8;
      result = *&v31[10];
      *(a3 + 10) = *&v31[10];
      goto LABEL_10;
    }

    *v34 = *a1;
    v14 = *a1;
    *&v34[16] = a1[1];
    v15 = *(a2 + 10);
    *a1 = *a2;
    *(a1 + 10) = v15;
    *a2 = v14;
    result = *&v34[10];
    *(a2 + 10) = *&v34[10];
    if (*(a3 + 2) < *(a2 + 2))
    {
      v8 = *a2;
      *v31 = *a2;
      *&v31[16] = a2[1];
      v16 = *(a3 + 10);
      *a2 = *a3;
      *(a2 + 10) = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < *(a3 + 2))
  {
    *v35 = *a3;
    v17 = *a3;
    *&v35[16] = a3[1];
    v18 = *(a4 + 10);
    *a3 = *a4;
    *(a3 + 10) = v18;
    *a4 = v17;
    result = *&v35[10];
    *(a4 + 10) = *&v35[10];
    if (*(a3 + 2) < *(a2 + 2))
    {
      *v36 = *a2;
      v19 = *a2;
      *&v36[16] = a2[1];
      v20 = *(a3 + 10);
      *a2 = *a3;
      *(a2 + 10) = v20;
      *a3 = v19;
      result = *&v36[10];
      *(a3 + 10) = *&v36[10];
      if (*(a2 + 2) < *(a1 + 2))
      {
        *v37 = *a1;
        v21 = *a1;
        *&v37[16] = a1[1];
        v22 = *(a2 + 10);
        *a1 = *a2;
        *(a1 + 10) = v22;
        *a2 = v21;
        result = *&v37[10];
        *(a2 + 10) = *&v37[10];
      }
    }
  }

  if (*(a5 + 2) < *(a4 + 2))
  {
    *v38 = *a4;
    v23 = *a4;
    *&v38[16] = a4[1];
    v24 = *(a5 + 10);
    *a4 = *a5;
    *(a4 + 10) = v24;
    *a5 = v23;
    result = *&v38[10];
    *(a5 + 10) = *&v38[10];
    if (*(a4 + 2) < *(a3 + 2))
    {
      *v39 = *a3;
      v25 = *a3;
      *&v39[16] = a3[1];
      v26 = *(a4 + 10);
      *a3 = *a4;
      *(a3 + 10) = v26;
      *a4 = v25;
      result = *&v39[10];
      *(a4 + 10) = *&v39[10];
      if (*(a3 + 2) < *(a2 + 2))
      {
        *v40 = *a2;
        v27 = *a2;
        *&v40[16] = a2[1];
        v28 = *(a3 + 10);
        *a2 = *a3;
        *(a2 + 10) = v28;
        *a3 = v27;
        result = *&v40[10];
        *(a3 + 10) = *&v40[10];
        if (*(a2 + 2) < *(a1 + 2))
        {
          *v41 = *a1;
          v29 = *a1;
          *&v41[16] = a1[1];
          v30 = *(a2 + 10);
          *a1 = *a2;
          *(a1 + 10) = v30;
          *a2 = v29;
          result = *&v41[10];
          *(a2 + 10) = *&v41[10];
        }
      }
    }
  }

  return result;
}

BOOL sub_431E8C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 32);
      v8 = *(a1 + 48);
      v9 = *(a2 - 16);
      if (v8 < *(a1 + 16))
      {
        if (v9 >= v8)
        {
          *v49 = *a1;
          v24 = *a1;
          *&v49[16] = *(a1 + 16);
          *a1 = *(a1 + 32);
          *(a1 + 10) = *(a1 + 42);
          *(a1 + 32) = v24;
          *(a1 + 42) = *&v49[10];
          if (*(a2 - 16) >= *(a1 + 48))
          {
            return 1;
          }

          v10 = *(a1 + 32);
          *&v41[8] = *(&v10 + 1);
          *&v41[16] = *(a1 + 48);
          v25 = *(a2 - 22);
          *(a1 + 32) = *v7;
          *(a1 + 42) = v25;
        }

        else
        {
          v10 = *a1;
          *v41 = *a1;
          *&v41[16] = *(a1 + 16);
          v11 = *(a2 - 22);
          *a1 = *v7;
          *(a1 + 10) = v11;
        }

        *v7 = v10;
        *(a2 - 22) = *&v41[10];
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      *v44 = *(a1 + 32);
      *&v44[16] = *(a1 + 48);
      v21 = *(a2 - 22);
      *(a1 + 32) = *v7;
      *(a1 + 42) = v21;
      *v7 = *v44;
      *(a2 - 22) = *&v44[10];
LABEL_49:
      if (*(a1 + 48) < *(a1 + 16))
      {
        *v55 = *a1;
        v39 = *a1;
        *&v55[16] = *(a1 + 16);
        *a1 = *(a1 + 32);
        *(a1 + 10) = *(a1 + 42);
        *(a1 + 32) = v39;
        *(a1 + 42) = *&v55[10];
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_431C20(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
        return 1;
      }

      goto LABEL_13;
    }

    v17 = *(a1 + 16);
    v18 = *(a1 + 48);
    v19 = *(a1 + 80);
    if (v18 >= v17)
    {
      if (v19 < v18)
      {
        *v47 = *(a1 + 32);
        *&v47[16] = *(a1 + 48);
        *(a1 + 32) = *(a1 + 64);
        *(a1 + 42) = *(a1 + 74);
        *(a1 + 64) = *v47;
        *(a1 + 74) = *&v47[10];
        if (*(a1 + 48) < v17)
        {
          *v48 = *a1;
          v23 = *a1;
          *&v48[16] = *(a1 + 16);
          *a1 = *(a1 + 32);
          *(a1 + 10) = *(a1 + 42);
          *(a1 + 32) = v23;
          *(a1 + 42) = *&v48[10];
        }
      }

      goto LABEL_46;
    }

    if (v19 >= v18)
    {
      *v52 = *a1;
      v36 = *a1;
      *&v52[16] = *(a1 + 16);
      *a1 = *(a1 + 32);
      *(a1 + 10) = *(a1 + 42);
      *(a1 + 32) = v36;
      *(a1 + 42) = *&v52[10];
      if (v19 >= *(a1 + 48))
      {
        goto LABEL_46;
      }

      v20 = *(a1 + 32);
      *&v43[8] = *(&v20 + 1);
      *&v43[16] = *(a1 + 48);
      *(a1 + 32) = *(a1 + 64);
      *(a1 + 42) = *(a1 + 74);
    }

    else
    {
      v20 = *a1;
      *v43 = *a1;
      *&v43[16] = *(a1 + 16);
      *a1 = *(a1 + 64);
      *(a1 + 10) = *(a1 + 74);
    }

    *(a1 + 64) = v20;
    *(a1 + 74) = *&v43[10];
LABEL_46:
    if (*(a2 - 16) >= *(a1 + 80))
    {
      return 1;
    }

    v37 = (a2 - 32);
    *v53 = *(a1 + 64);
    *&v53[16] = *(a1 + 80);
    v38 = *(a2 - 22);
    *(a1 + 64) = *(a2 - 32);
    *(a1 + 74) = v38;
    *v37 = *v53;
    *(v37 + 10) = *&v53[10];
    if (*(a1 + 80) >= *(a1 + 48))
    {
      return 1;
    }

    *v54 = *(a1 + 32);
    *&v54[16] = *(a1 + 48);
    *(a1 + 32) = *(a1 + 64);
    *(a1 + 42) = *(a1 + 74);
    *(a1 + 64) = *v54;
    *(a1 + 74) = *&v54[10];
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 16) < *(a1 + 16))
    {
      *v40 = *a1;
      v4 = *a1;
      *&v40[16] = *(a1 + 16);
      v5 = *(a2 - 22);
      *a1 = *(a2 - 32);
      *(a1 + 10) = v5;
      *(a2 - 32) = v4;
      *(a2 - 22) = *&v40[10];
      return 1;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 64;
  v13 = *(a1 + 16);
  v14 = *(a1 + 48);
  v15 = *(a1 + 80);
  if (v14 >= v13)
  {
    if (v15 < v14)
    {
      *v45 = *(a1 + 32);
      *&v45[16] = *(a1 + 48);
      *(a1 + 32) = *v12;
      *(a1 + 42) = *(a1 + 74);
      *v12 = *v45;
      *(a1 + 74) = *&v45[10];
      if (*(a1 + 48) < v13)
      {
        *v46 = *a1;
        v22 = *a1;
        *&v46[16] = *(a1 + 16);
        *a1 = *(a1 + 32);
        *(a1 + 10) = *(a1 + 42);
        *(a1 + 32) = v22;
        *(a1 + 42) = *&v46[10];
      }
    }
  }

  else
  {
    if (v15 >= v14)
    {
      *v50 = *a1;
      v26 = *a1;
      *&v50[16] = *(a1 + 16);
      *a1 = *(a1 + 32);
      *(a1 + 10) = *(a1 + 42);
      *(a1 + 32) = v26;
      *(a1 + 42) = *&v50[10];
      if (v15 >= *(a1 + 48))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 32);
      *&v42[8] = *(&v16 + 1);
      *&v42[16] = *(a1 + 48);
      *(a1 + 32) = *v12;
      *(a1 + 42) = *(a1 + 74);
    }

    else
    {
      v16 = *a1;
      *v42 = *a1;
      *&v42[16] = *(a1 + 16);
      *a1 = *v12;
      *(a1 + 10) = *(a1 + 74);
    }

    *v12 = v16;
    *(a1 + 74) = *&v42[10];
  }

LABEL_33:
  v27 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    v31 = *(v12 + 16);
    v32 = *(v27 + 16);
    if (v32 < v31)
    {
      v51 = *v27;
      v33 = *(v27 + 24);
      v34 = v28;
      do
      {
        v35 = a1 + v34;
        *(v35 + 96) = *(a1 + v34 + 64);
        *(v35 + 106) = *(a1 + v34 + 74);
        if (v34 == -64)
        {
          v30 = a1;
          goto LABEL_36;
        }

        v34 -= 32;
      }

      while (v32 < *(v35 + 48));
      v30 = a1 + v34 + 96;
LABEL_36:
      *v30 = v51;
      *(v30 + 16) = v32;
      *(v30 + 24) = v33;
      if (++v29 == 8)
      {
        return v27 + 32 == a2;
      }
    }

    v12 = v27;
    v28 += 32;
    v27 += 32;
    if (v27 == a2)
    {
      return 1;
    }
  }
}

_OWORD *sub_43235C(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 5;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x7FFFFFFFFFFFFFFLL)) | 1;
        v8 = (a1 + 32 * v7);
        if (2 * (v5 & 0x7FFFFFFFFFFFFFFLL) + 2 < v3)
        {
          v9 = *(v8 + 6);
          v10 = *(v8 + 2);
          v8 += 2 * (v10 < v9);
          if (v10 < v9)
          {
            v7 = 2 * (v5 & 0x7FFFFFFFFFFFFFFLL) + 2;
          }
        }

        v11 = (a1 + 32 * v5);
        v12 = *(v11 + 2);
        if (*(v8 + 2) >= v12)
        {
          v58 = *v11;
          v13 = *(v11 + 12);
          do
          {
            v14 = v11;
            v11 = v8;
            v15 = *v8;
            *(v14 + 10) = *(v8 + 10);
            *v14 = v15;
            if (v4 < v7)
            {
              break;
            }

            v16 = (2 * v7) | 1;
            v8 = (a1 + 32 * v16);
            v17 = 2 * v7 + 2;
            if (v17 < v3)
            {
              v18 = *(v8 + 6);
              v19 = *(v8 + 2);
              v8 += 2 * (v19 < v18);
              if (v19 < v18)
              {
                v16 = v17;
              }
            }

            v7 = v16;
          }

          while (*(v8 + 2) >= v12);
          *v11 = v58;
          *(v11 + 2) = v12;
          *(v11 + 12) = v13;
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      i = a2;
      do
      {
        if (*(i + 2) < *(a1 + 16))
        {
          *v59 = *i;
          v21 = *i;
          *&v59[16] = i[1];
          v22 = *(a1 + 10);
          *i = *a1;
          *(i + 10) = v22;
          *a1 = v21;
          *(a1 + 10) = *&v59[10];
        }

        i += 2;
      }

      while (i != a3);
      goto LABEL_42;
    }

    for (i = a2; i != a3; i += 2)
    {
      if (*(i + 2) < *(a1 + 16))
      {
        *v60 = *i;
        v23 = *i;
        *&v60[16] = i[1];
        v24 = *(a1 + 10);
        *i = *a1;
        *(i + 10) = v24;
        *a1 = v23;
        *(a1 + 10) = *&v60[10];
        if ((a2 - a1) == &stru_20.vmsize)
        {
          v25 = a1 + 32;
          v26 = 1;
          v27 = *(a1 + 16);
          if (*(a1 + 48) >= v27)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v28 = *(a1 + 80);
          v29 = *(a1 + 48);
          v30 = v29 >= v28;
          v25 = a1 + 32 + 32 * (v29 < v28);
          if (v30)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          v27 = *(a1 + 16);
          if (*(v25 + 16) >= v27)
          {
LABEL_35:
            v61 = *a1;
            v31 = *(a1 + 24);
            v32 = a1;
            do
            {
              v33 = v32;
              v32 = v25;
              v34 = *v25;
              *(v33 + 10) = *(v25 + 10);
              *v33 = v34;
              if (((v3 - 2) >> 1) < v26)
              {
                break;
              }

              v35 = (2 * v26) | 1;
              v25 = a1 + 32 * v35;
              v36 = 2 * v26 + 2;
              if (v36 < v3)
              {
                v37 = *(v25 + 48);
                v38 = *(v25 + 16);
                v25 += 32 * (v38 < v37);
                if (v38 < v37)
                {
                  v35 = v36;
                }
              }

              v26 = v35;
            }

            while (*(v25 + 16) >= v27);
            *v32 = v61;
            *(v32 + 16) = v27;
            *(v32 + 24) = v31;
          }
        }
      }
    }
  }

LABEL_42:
  if (v3 >= 2)
  {
    do
    {
      v40 = 0;
      *v62 = *a1;
      *&v62[16] = *(a1 + 16);
      v41 = a1;
      do
      {
        v47 = &v41[2 * v40];
        v45 = v47 + 2;
        v48 = (2 * v40) | 1;
        v40 = 2 * v40 + 2;
        if (v40 < v3)
        {
          v42 = *(v47 + 10);
          v43 = *(v47 + 6);
          v44 = v47 + 4;
          if (v43 >= v42)
          {
            v40 = v48;
          }

          else
          {
            v45 = v44;
          }
        }

        else
        {
          v40 = v48;
        }

        v46 = *v45;
        *(v41 + 10) = *(v45 + 10);
        *v41 = v46;
        v41 = v45;
      }

      while (v40 <= ((v3 - 2) >> 1));
      a2 -= 2;
      if (v45 == a2)
      {
        *(v45 + 10) = *&v62[10];
        *v45 = *v62;
      }

      else
      {
        v49 = *a2;
        *(v45 + 10) = *(a2 + 10);
        *v45 = v49;
        *a2 = *v62;
        *(a2 + 10) = *&v62[10];
        v50 = (v45 - a1 + 32) >> 5;
        v6 = v50 < 2;
        v51 = v50 - 2;
        if (!v6)
        {
          v52 = v51 >> 1;
          v53 = (a1 + 32 * (v51 >> 1));
          v54 = *(v45 + 2);
          if (*(v53 + 2) < v54)
          {
            v63 = *v45;
            v55 = *(v45 + 12);
            do
            {
              v56 = v45;
              v45 = v53;
              v57 = *v53;
              *(v56 + 10) = *(v53 + 10);
              *v56 = v57;
              if (!v52)
              {
                break;
              }

              v52 = (v52 - 1) >> 1;
              v53 = (a1 + 32 * v52);
            }

            while (*(v53 + 2) < v54);
            *v45 = v63;
            *(v45 + 2) = v54;
            *(v45 + 12) = v55;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

void sub_432754(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = a2[1];
  v15 = *a2;
  sub_4329AC(v3 + 472, &v15, &__p);
  v5 = sub_3CF22C(a1[1]);
  v6 = sub_4D3A04(a1[1], 0, v4, 0);
  v7 = *v5;
  if (v6 < 0)
  {
    v8 = -5;
  }

  else
  {
    v8 = 5;
  }

  v9 = *(v3 + 456);
  v10 = sub_4D1F50(a1[1], v4);
  sub_320EC8(v9, *(v10 + 32) | (*(v10 + 36) << 32), &v12);
  v11 = 103 * (v8 + v6 % 10);
  sub_386C(v13, v6 / 10 + v7 + ((v11 >> 15) & 1) + (v11 >> 10));
}

void sub_432938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_25F00(&a9);
  sub_1A104(&a17);
  _Unwind_Resume(a1);
}

void sub_432954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_432968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_43297C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_432990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_3874(va);
  sub_1A104(va1);
  _Unwind_Resume(a1);
}

void sub_4329AC(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_432E04(*a1, *a2, &v21);
  if ((*(a1 + 16) & 1) == 0)
  {
    sub_99A14(a3, &v21);
    goto LABEL_26;
  }

  v6 = sub_42F924(*a1, *a2);
  v7 = (v6 - *v6);
  if (*v7 >= 5u && (v8 = v7[2]) != 0)
  {
    v9 = *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  sub_2BDE60(*(a1 + 8), v9, &__p);
  v10 = v27;
  v11 = v28;
  *v20 = v29;
  *&v20[3] = *(&v29 + 3);
  v12 = HIBYTE(v29);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v13 = sub_42F924(*a1, *a2);
  v14 = (v13 - *v13);
  if (*v14 < 7u || (v15 = v14[3]) == 0 || *(v13 + v15) != 2)
  {
    if ((v12 & 0x80) != 0)
    {
      if (v11)
      {
LABEL_19:
        sub_325C(&__p, v10, v11);
LABEL_20:
        sub_2AAFFC(a3, &__p, 1uLL);
        if (v26 < 0)
        {
          operator delete(__p);
          if ((v12 & 0x80) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

LABEL_24:
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if (v12)
    {
      __p = v10;
      v24 = v11;
      *v25 = *v20;
      *&v25[3] = *&v20[3];
      v26 = v12;
      goto LABEL_20;
    }

    sub_99A14(a3, &v21);
    goto LABEL_24;
  }

  if ((v12 & 0x80) != 0)
  {
    if (!v11)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  if (v12)
  {
    __p = v10;
    v24 = v11;
    *v25 = *v20;
    *&v25[3] = *&v20[3];
    v26 = v12;
    goto LABEL_20;
  }

LABEL_36:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((v12 & 0x80) != 0)
  {
LABEL_25:
    operator delete(v10);
  }

LABEL_26:
  v16 = v21;
  if (v21)
  {
    v17 = v22;
    v18 = v21;
    if (v22 != v21)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v21;
    }

    v22 = v16;
    operator delete(v18);
  }
}

void sub_432C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if ((v20 & 0x80) == 0)
  {
    sub_1A104(&a11);
    _Unwind_Resume(a1);
  }

  operator delete(v19);
  sub_1A104(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_432CAC(uint64_t a1, unint64_t *a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = sub_42F924(*a1, *a2);
    v5 = (v4 - *v4);
    if (*v5 >= 7u)
    {
      v6 = v5[3];
      if (v6)
      {
        if (*(v4 + v6) == 3)
        {
          return 0;
        }
      }
    }
  }

  v8 = sub_42F924(*a1, *a2);
  v9 = (v8 - *v8);
  if (*v9 >= 5u && (v10 = v9[2]) != 0)
  {
    v11 = *(v8 + v10);
    if (*(a1 + 16) != 1)
    {
      return v11 != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v11 = 0;
    if (*(a1 + 16) != 1)
    {
      return v11 != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  sub_2BDE60(*(a1 + 8), v11, v14);
  result = sub_390710(v14);
  if ((v17 & 0x80000000) == 0)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_15:
    v13 = result;
    operator delete(v14[0]);
    return v13;
  }

  v12 = result;
  operator delete(__p);
  result = v12;
  if (v15 < 0)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_432E04(uint64_t a1@<X0>, unint64_t a2@<X1>, void **a3@<X8>)
{
  v4 = sub_42F924(a1, a2);
  v5 = (v4 - *v4);
  if (*v5 >= 0xFu && (v6 = v5[7]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v8 = *v7;
    if (v8)
    {
      v9 = 4 * v8;
      while (1)
      {
        v10 = v7;
        v11 = v7[1];
        ++v7;
        v12 = v10 + v11;
        v13 = *(v12 + 1);
        if (v13 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v23) = *(v12 + 1);
        if (v13)
        {
          memcpy(&__dst, v12 + 8, v13);
          *(&__dst + v13) = 0;
          v15 = a3[1];
          v14 = a3[2];
          if (v15 < v14)
          {
            goto LABEL_5;
          }

LABEL_12:
          v16 = *a3;
          v17 = v15 - *a3;
          v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3) + 1;
          if (v18 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v16) >> 3);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            if (v20 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v21 = 8 * (v17 >> 3);
          *v21 = __dst;
          *(v21 + 16) = v23;
          memcpy((v21 - v17), v16, v17);
          *a3 = (8 * (v17 >> 3) - v17);
          a3[2] = 0;
          if (v16)
          {
            operator delete(v16);
          }

          a3[1] = (8 * (v17 >> 3) + 24);
          v9 -= 4;
          if (!v9)
          {
            return;
          }
        }

        else
        {
          *(&__dst + v13) = 0;
          v15 = a3[1];
          v14 = a3[2];
          if (v15 >= v14)
          {
            goto LABEL_12;
          }

LABEL_5:
          *v15 = __dst;
          *(v15 + 2) = v23;
          a3[1] = v15 + 24;
          v9 -= 4;
          if (!v9)
          {
            return;
          }
        }
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_43303C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(v15);
  _Unwind_Resume(a1);
}

void sub_433078()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_278F6A0 = 0u;
  *algn_278F6B0 = 0u;
  dword_278F6C0 = 1065353216;
  sub_3A9A34(&xmmword_278F6A0, v0);
  sub_3A9A34(&xmmword_278F6A0, v3);
  sub_3A9A34(&xmmword_278F6A0, __p);
  sub_3A9A34(&xmmword_278F6A0, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_278F678 = 0;
    qword_278F680 = 0;
    qword_278F670 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_4332C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_278F688)
  {
    qword_278F690 = qword_278F688;
    operator delete(qword_278F688);
  }

  _Unwind_Resume(exception_object);
}

void sub_43336C(uint64_t *a1, void *a2, __int128 *a3)
{
  v7[23] = 14;
  strcpy(v7, "RoadClassifier");
  if (*(a3 + 23) < 0)
  {
    sub_325C(&v9, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v10 = *(a3 + 2);
  }

  sub_2AAFFC(&v6, &v9, 1uLL);
  v5 = sub_3AEC94(a2, v7, &v6);
  sub_41D598(v5, &v8);
  *a1 = sub_3B1348(a2);
  sub_43427C();
}

void sub_433574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_4335E8(uint64_t a1, int **a2)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 < 0x47 || !v3[35] || (*(v2 + v3[35]) & 2) == 0)
    {
      return 0;
    }
  }

  else if (v4 < 0x47 || !v3[35] || (*(v2 + v3[35]) & 1) == 0)
  {
    return 0;
  }

  if (v4 >= 0x9B && v3[77] && (*(v2 + v3[77] + 2) & 0x20) != 0)
  {
    return 0;
  }

  if (v3[23])
  {
    v6 = *(v2 + v3[23]);
    v7 = v6 > 0x2D;
    v8 = (1 << v6) & 0x208040000000;
    if (!v7 && v8 != 0)
    {
      return 0;
    }
  }

  if (v4 >= 0x9B)
  {
    v10 = v3[77];
    if (v10)
    {
      if ((*(v2 + v10 + 3) & 4) != 0)
      {
        return 0;
      }
    }
  }

  if (sub_6AA0E0((a1 + 40), a2))
  {
    return 0;
  }

  v13 = sub_314550(a2);
  v14 = sub_311A24(*a2, *(a2 + 38));
  v15 = sub_311A24(*a2, *(a2 + 38) == 0);
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v19 = *&v13 > -1 && ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v13 - 1) < 0xFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v19 && v13 > 0.0 && v13 > *(a1 + 8))
  {
    return 1;
  }

  v20 = (*a2 - **a2);
  if (*v20 >= 0x43u && (v21 = v20[33]) != 0)
  {
    v22 = *(*a2 + v21);
  }

  else
  {
    v22 = 0;
  }

  return v22 < *(a1 + 16) || v16 > *(a1 + 17) || sub_4337F8(*a1, a2) > *(a1 + 24);
}

double sub_4337F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_31CEE0(a2);
  v5 = *(a2 + 32) | (*(a2 + 36) << 32);
  v6 = sub_4345A0(a1, v5);
  v7 = sub_4345A0(a1, v5 | 0x1000000000000);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    return v4 / v7;
  }

  else
  {
    return 0.0;
  }
}

BOOL sub_43388C(uint64_t a1, int **a2)
{
  result = sub_4335E8(a1, a2);
  if (result)
  {
    v4 = (*a2 - **a2);
    if (*v4 >= 0x9Bu && (v5 = v4[77]) != 0)
    {
      v6 = *(*a2 + v5);
      if (v6)
      {
        return 1;
      }

      else
      {
        return (v6 >> 1) & 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_433900(uint64_t *a1, void *a2, __int128 *a3)
{
  v7[23] = 14;
  strcpy(v7, "RoadClassifier");
  if (*(a3 + 23) < 0)
  {
    sub_325C(&v9, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v10 = *(a3 + 2);
  }

  sub_2AAFFC(&v6, &v9, 1uLL);
  v5 = sub_3AEC94(a2, v7, &v6);
  sub_41D7AC(v5, &v8);
  *a1 = sub_3B1348(a2);
  sub_43427C();
}

void sub_433B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_433B7C(uint64_t a1, int **a2)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 < 0x9B || !v3[77])
    {
      return 0;
    }

    v5 = *(v2 + v3[77]);
    if ((v5 & 2) == 0 || (v5 & 0x200000) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 < 0x9B || !v3[77])
    {
      return 0;
    }

    v5 = *(v2 + v3[77]);
    if ((v5 & 1) == 0 || (v5 & 0x200000) != 0)
    {
      return 0;
    }
  }

  v9 = v3[23];
  if (v9)
  {
    v10 = *(v2 + v9);
    v11 = v10 > 0x2D;
    v12 = (1 << v10) & 0x208040000000;
    if (!v11 && v12 != 0)
    {
      return 0;
    }
  }

  if (v5 & 0x4000000) != 0 || (sub_6ABD28((a1 + 40), a2))
  {
    return 0;
  }

  v16 = sub_314550(a2);
  v17 = sub_311A24(*a2, *(a2 + 38));
  v18 = sub_311A24(*a2, *(a2 + 38) == 0);
  if (v17 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v22 = *&v16 > -1 && ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v16 - 1) < 0xFFFFFFFFFFFFFLL || (*&v16 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v22 && v16 > 0.0 && v16 > *(a1 + 8))
  {
    return 1;
  }

  v23 = (*a2 - **a2);
  if (*v23 >= 0x43u && (v24 = v23[33]) != 0)
  {
    v25 = *(*a2 + v24);
  }

  else
  {
    v25 = 0;
  }

  return v25 < *(a1 + 16) || v19 > *(a1 + 17) || sub_4337F8(*a1, a2) > *(a1 + 24);
}

void sub_433D70(uint64_t *a1, void *a2, __int128 *a3)
{
  v7[23] = 14;
  strcpy(v7, "RoadClassifier");
  if (*(a3 + 23) < 0)
  {
    sub_325C(&v9, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v10 = *(a3 + 2);
  }

  sub_2AAFFC(&v6, &v9, 1uLL);
  v5 = sub_3AEC94(a2, v7, &v6);
  sub_41D820(v5, &v8);
  *a1 = sub_3B1348(a2);
  sub_43427C();
}

void sub_433F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_433FEC(uint64_t a1, int **a2)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 < 0x39 || !v3[28])
    {
      return 0;
    }

    v5 = *(v2 + v3[28]);
    if ((v5 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v4 < 0x39 || !v3[28])
    {
      return 0;
    }

    v5 = *(v2 + v3[28]);
    if (v5)
    {
      goto LABEL_13;
    }
  }

  if ((v5 & 7) != 4 && (v5 & 0x23) != 0x20)
  {
    return 0;
  }

LABEL_13:
  if (v4 >= 0x9B && v3[77] && (*(v2 + v3[77] + 2) & 0x20) != 0)
  {
    return 0;
  }

  if (v3[23])
  {
    v7 = *(v2 + v3[23]);
    v8 = v7 > 0x2D;
    v9 = (1 << v7) & 0x208040000000;
    if (!v8 && v9 != 0)
    {
      return 0;
    }
  }

  if (v4 >= 0x9B)
  {
    v11 = v3[77];
    if (v11)
    {
      if ((*(v2 + v11 + 3) & 4) != 0)
      {
        return 0;
      }
    }
  }

  if (sub_6AD580((a1 + 40), a2))
  {
    return 0;
  }

  v14 = sub_314550(a2);
  v15 = sub_311A24(*a2, *(a2 + 38));
  v16 = sub_311A24(*a2, *(a2 + 38) == 0);
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v20 = *&v14 > -1 && ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v14 - 1) < 0xFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v20 && v14 > 0.0 && v14 > *(a1 + 8))
  {
    return 1;
  }

  v21 = (*a2 - **a2);
  if (*v21 >= 0x43u && (v22 = v21[33]) != 0)
  {
    v23 = *(*a2 + v22);
  }

  else
  {
    v23 = 0;
  }

  return v23 < *(a1 + 16) || v17 > *(a1 + 17) || sub_4337F8(*a1, a2) > *(a1 + 24);
}

BOOL sub_434208(uint64_t a1, int **a2)
{
  result = sub_433FEC(a1, a2);
  if (result)
  {
    v4 = (*a2 - **a2);
    if (*v4 >= 0x9Bu && (v5 = v4[77]) != 0)
    {
      v6 = *(*a2 + v5);
      if (v6)
      {
        return 1;
      }

      else
      {
        return (v6 >> 1) & 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_434494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_4344C0(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (v4 < 0x2F)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v3[23];
    if (v3[23])
    {
      v6 = *(v2 + v5);
      v7 = v6 > 0x2C;
      v5 = 0x180000001240uLL >> v6;
      if (v7)
      {
        LOBYTE(v5) = 0;
      }
    }

    if (v4 >= 0x9B && v3[77] && (*(v2 + v3[77] + 2) & 0x20) != 0)
    {
      return 0;
    }
  }

  if (!*(a2 + 38))
  {
    if (v4 >= 0x47)
    {
      v9 = v3[35];
      if (v9)
      {
        if (!(((*(v2 + v9) & 1) == 0) | v5 & 1))
        {
          return !sub_4335E8(a1, a2);
        }
      }
    }

    return 0;
  }

  if (v4 < 0x47)
  {
    return 0;
  }

  v8 = v3[35];
  if (!v8 || ((*(v2 + v8) & 2) == 0) | v5 & 1)
  {
    return 0;
  }

  return !sub_4335E8(a1, a2);
}

char *sub_4345A0(uint64_t a1, uint64_t a2)
{
  result = sub_31D994(a1, a2, 1);
  if (result)
  {
    v5 = &result[-*result];
    if (*v5 < 0xBu)
    {
      return 0;
    }

    else
    {
      if (!*(v5 + 5))
      {
        return 0;
      }

      v6 = &result[*(v5 + 5) + *&result[*(v5 + 5)]];
      if (*v6 <= WORD2(a2))
      {
        return 0;
      }

      v7 = &v6[8 * WORD2(a2) + 4];
      if (!*v7)
      {
        return 0;
      }

      result = sub_2B3284(a1, *v7, 1);
      if (result)
      {
        v8 = &result[-*result];
        v9 = *v8;
        if (((a2 & 0xFF000000000000) == 0x1000000000000) == (*(v7 + 6) & 2) >> 1)
        {
          if (v9 < 0xD)
          {
            goto LABEL_17;
          }

          v10 = v8[6];
          if (!v8[6])
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v9 < 0xB)
          {
            goto LABEL_17;
          }

          v10 = v8[5];
          if (!v8[5])
          {
            goto LABEL_17;
          }
        }

        v11 = &result[v10 + *&result[v10]];
        v12 = *(v7 + 4);
        if (*v11 > v12)
        {
          return *&v11[2 * v12 + 4];
        }

LABEL_17:
        if (*v8 >= 9u)
        {
          v13 = v8[4];
          if (v13)
          {
            return *&result[v13];
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_4346FC(uint64_t a1, int **a2, int **a3, uint64_t a4, unint64_t a5, double a6, double a7)
{
  v7 = a2[1];
  if (!v7)
  {
    return 0;
  }

  v8 = a3[1];
  if (!v8)
  {
    return 0;
  }

  v9 = *a2;
  v10 = (*a2 - **a2);
  v11 = *v10;
  if (v11 >= 0x9B && v10[77])
  {
    v12 = (v9[v10[77]] >> 2) & 1;
    v13 = *a3;
    v14 = (*a3 - **a3);
    v15 = *v14;
    if (v15 < 0x9B)
    {
LABEL_22:
      if (v12)
      {
        return 0;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    v13 = *a3;
    v14 = (*a3 - **a3);
    v15 = *v14;
    if (v15 < 0x9B)
    {
      goto LABEL_22;
    }
  }

  if (!v14[77])
  {
    goto LABEL_22;
  }

  if (v12 != (*(v13 + v14[77]) & 4) >> 2)
  {
    return 0;
  }

LABEL_11:
  v17 = (v7 - *v7);
  v18 = 0.0;
  if (*v17 >= 0x13u)
  {
    v19 = v17[9];
    if (v19)
    {
      LOWORD(v18) = *(v7 + v19);
      v18 = *&v18;
    }
  }

  if (v18 >= a6)
  {
    return 1;
  }

  v20 = (v8 - *v8);
  v21 = 0.0;
  if (*v20 >= 0x13u)
  {
    v22 = v20[9];
    if (v22)
    {
      LOWORD(v21) = *(v8 + v22);
      v21 = *&v21;
    }
  }

  if (v21 >= a6)
  {
    return 1;
  }

  if (v11 < 9)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10[4];
    if (v10[4])
    {
      v23 = *&v9[v23];
    }
  }

  if (v23 <= a4)
  {
    return 1;
  }

  if (v15 < 9)
  {
    v24 = 0;
  }

  else
  {
    v24 = v14[4];
    if (v14[4])
    {
      v24 = *(v13 + v24);
    }
  }

  if (v24 <= a4)
  {
    return 1;
  }

  if (v11 >= 9 && (v25 = v10[4]) != 0)
  {
    v26 = *&v9[v25];
  }

  else
  {
    v26 = 0;
  }

  if (v26 >= a5)
  {
    return 1;
  }

  if (v15 < 9)
  {
    v27 = 0;
  }

  else
  {
    v27 = v14[4];
    if (v14[4])
    {
      v27 = *(v13 + v27);
    }
  }

  if (v27 >= a5)
  {
    return 1;
  }

  v33 = a2[4];
  v29 = *(a2 + 1);
  v32[0] = *a2;
  v32[1] = v29;
  BYTE6(v33) = BYTE6(v33) == 0;
  if (sub_31BE10(a1, v32, a7))
  {
    return 1;
  }

  else
  {
    return sub_31BE10(a1, a3, a7);
  }
}

__n128 sub_434934(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  a1[2].n128_u16[4] = -1;
  a1[2].n128_u8[10] = 0;
  return result;
}

uint64_t sub_434954(uint64_t a1, _OWORD *a2, void *a3)
{
  *a1 = *a2;
  sub_435834((a1 + 16), a3);
  *(a1 + 40) = -1;
  *(a1 + 42) = 0;
  return a1;
}

__n128 sub_4349A4(uint64_t a1, _OWORD *a2, __n128 *a3)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  result = *a3;
  *(a1 + 16) = *a3;
  *(a1 + 32) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  *(a1 + 40) = -1;
  *(a1 + 42) = 0;
  return result;
}

__n128 sub_4349DC(__n128 *a1, __n128 *a2, unsigned __int32 a3)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  a1[2].n128_u32[2] = a3;
  return result;
}

uint64_t sub_4349F4(uint64_t a1, _OWORD *a2, void *a3, int a4)
{
  *a1 = *a2;
  sub_435834((a1 + 16), a3);
  *(a1 + 40) = a4;
  return a1;
}

void sub_434A40(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6[0] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_325C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v8 = *(a2 + 2);
  }

  sub_435A00(&v4, v6, 1uLL);
  *a3 = 1;
  *(a3 + 8) = &off_2669FE0;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  v4 = 0uLL;
  v5 = 0;
  *(a3 + 40) = -1;
  *(a3 + 42) = 0;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_434B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_434B40(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = a1 + 40;
  }

  else
  {
    v4 = a2 + 40;
  }

  v5 = *(v4 + 2);
  *(a1 + 40) = *v4;
  *(a1 + 42) = v5;
  if (v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  *a1 = *v6;
  sub_434D48((a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 5);
  return a1;
}

uint64_t sub_434BB0(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = a1 + 40;
  }

  else
  {
    v4 = a2 + 40;
  }

  v5 = *(v4 + 2);
  *(a1 + 40) = *v4;
  *(a1 + 42) = v5;
  if (v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  *a1 = *v6;
  sub_435378((a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 5);
  return a1;
}

BOOL sub_434C20(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *a1 != *a2)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a2 + 16);
  if (v6 - v7 == *(a2 + 24) - v8)
  {
    if (v7 == v6)
    {
LABEL_23:
      v21 = *(a2 + 40);
      if (*(a1 + 40) == v21)
      {
        return *(a1 + 42) == BYTE2(v21);
      }
    }

    else
    {
      while (*v7 == *v8)
      {
        v9 = v7[31];
        if (v9 >= 0)
        {
          v10 = v7[31];
        }

        else
        {
          v10 = *(v7 + 2);
        }

        v11 = v8[31];
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v8 + 2);
        }

        if (v10 != v11)
        {
          break;
        }

        v15 = *(v8 + 1);
        v14 = v8 + 8;
        v13 = v15;
        v18 = *(v7 + 1);
        v17 = v7 + 8;
        v16 = v18;
        v19 = v9 >= 0 ? v17 : v16;
        v20 = v12 >= 0 ? v14 : v13;
        if (memcmp(v19, v20, v10))
        {
          break;
        }

        v7 = v17 + 24;
        v8 = v14 + 24;
        if (v7 == v6)
        {
          goto LABEL_23;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_434D48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      sub_1794();
    }

    v13 = v9 - v11;
    if (v13 >> 4 > v12)
    {
      v12 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v29 = 0;
    v30 = 32 * ((a2 - v11) >> 5);
    v31 = 32 * a5;
    v32 = v30 + 32 * a5;
    do
    {
      v34 = a3 + v29;
      *(v30 + v29) = *(a3 + v29);
      v35 = (v30 + v29 + 8);
      if (*(a3 + v29 + 31) < 0)
      {
        sub_325C(v35, *(v34 + 8), *(v34 + 16));
      }

      else
      {
        v33 = *(v34 + 8);
        *(v30 + v29 + 24) = *(v34 + 24);
        *v35 = v33;
      }

      v29 += 32;
    }

    while (v31 != v29);
    v36 = a1[1];
    v37 = v5;
    if (v36 != v5)
    {
      v38 = v5;
      v39 = v32;
      do
      {
        *v39 = *v38;
        v40 = *(v38 + 8);
        *(v39 + 24) = *(v38 + 24);
        *(v39 + 8) = v40;
        *(v38 + 16) = 0;
        *(v38 + 24) = 0;
        *(v38 + 8) = 0;
        v38 += 32;
        v39 += 32;
      }

      while (v38 != v36);
      v41 = v5;
      do
      {
        if (*(v41 + 31) < 0)
        {
          operator delete(*(v41 + 8));
        }

        v41 += 32;
      }

      while (v41 != v36);
      v37 = a1[1];
    }

    v42 = v32 + v37 - v5;
    a1[1] = v5;
    v43 = *a1;
    v44 = v30 + *a1 - v5;
    if (*a1 != v5)
    {
      v45 = *a1;
      v46 = v30 + *a1 - v5;
      do
      {
        *v46 = *v45;
        v47 = *(v45 + 8);
        *(v46 + 24) = *(v45 + 24);
        *(v46 + 8) = v47;
        *(v45 + 16) = 0;
        *(v45 + 24) = 0;
        *(v45 + 8) = 0;
        v45 += 32;
        v46 += 32;
      }

      while (v45 != v5);
      do
      {
        if (*(v43 + 31) < 0)
        {
          operator delete(*(v43 + 8));
        }

        v43 += 32;
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

    return v30;
  }

  v15 = v10 - a2;
  v16 = (v10 - a2) >> 5;
  if (v16 < a5)
  {
    v17 = v15 + a3;
    v18 = sub_4352A4(a1, v15 + a3, a4, a1[1]);
    v19 = v18;
    a1[1] = v18;
    if (v16 >= 1)
    {
      v20 = v18 - 32 * a5;
      if (v20 >= v10)
      {
        v22 = v18;
      }

      else
      {
        v21 = v18 - 32 * a5;
        v22 = v18;
        do
        {
          *v22 = *v21;
          v23 = *(v21 + 8);
          *(v22 + 24) = *(v21 + 24);
          *(v22 + 8) = v23;
          *(v21 + 16) = 0;
          *(v21 + 24) = 0;
          *(v21 + 8) = 0;
          v21 += 32;
          v22 += 32;
        }

        while (v21 < v10);
      }

      a1[1] = v22;
      if (v18 != v5 + 32 * a5)
      {
        v62 = 0;
        v63 = v5 + 32 * a5 - v18;
        do
        {
          v65 = v20 + v62;
          *(v19 + v62 - 32) = *(v20 + v62 - 32);
          v66 = (v19 + v62 - 24);
          if (*(v19 + v62 - 1) < 0)
          {
            operator delete(*v66);
          }

          v64 = *(v65 - 24);
          *(v19 + v62 - 8) = *(v65 - 8);
          *v66 = v64;
          *(v65 - 1) = 0;
          *(v65 - 24) = 0;
          v62 -= 32;
        }

        while (v63 != v62);
      }

      if (v10 != v5)
      {
        v67 = 0;
        do
        {
          v70 = (a3 + v67 + 8);
          *(v5 + v67) = *(a3 + v67);
          v71 = (v5 + v67 + 8);
          if (a3 != v5)
          {
            v72 = *(a3 + v67 + 31);
            if (*(v5 + v67 + 31) < 0)
            {
              if (v72 >= 0)
              {
                v68 = (a3 + v67 + 8);
              }

              else
              {
                v68 = *v70;
              }

              if (v72 >= 0)
              {
                v69 = *(a3 + v67 + 31);
              }

              else
              {
                v69 = *(a3 + v67 + 16);
              }

              sub_13B38(v71, v68, v69);
            }

            else if ((*(a3 + v67 + 31) & 0x80) != 0)
            {
              sub_13A68(v71, *v70, *(a3 + v67 + 16));
            }

            else
            {
              v73 = *v70;
              *(v5 + v67 + 24) = *(a3 + v67 + 24);
              *v71 = v73;
            }
          }

          v67 += 32;
        }

        while (a3 + v67 != v17);
      }
    }

    return v5;
  }

  v24 = a2 + 32 * a5;
  v25 = v10 - 32 * a5;
  if (v25 >= v10)
  {
    a1[1] = v10;
    if (v10 == v24)
    {
      goto LABEL_53;
    }

LABEL_49:
    v49 = 0;
    v50 = a2 + 32 * a5 - v10;
    do
    {
      v52 = v25 + v49;
      *(v10 + v49 - 32) = *(v25 + v49 - 32);
      v53 = (v10 + v49 - 24);
      if (*(v10 + v49 - 1) < 0)
      {
        operator delete(*v53);
      }

      v51 = *(v52 - 24);
      *(v10 + v49 - 8) = *(v52 - 8);
      *v53 = v51;
      *(v52 - 1) = 0;
      *(v52 - 24) = 0;
      v49 -= 32;
    }

    while (v50 != v49);
    goto LABEL_53;
  }

  v26 = v10 - 32 * a5;
  v27 = a1[1];
  do
  {
    *v27 = *v26;
    v28 = *(v26 + 8);
    *(v27 + 24) = *(v26 + 24);
    *(v27 + 8) = v28;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 8) = 0;
    v26 += 32;
    v27 += 32;
  }

  while (v26 < v10);
  a1[1] = v27;
  if (v10 != v24)
  {
    goto LABEL_49;
  }

LABEL_53:
  v54 = 0;
  v55 = a3 + 32 * a5;
  do
  {
    v58 = (a3 + v54 + 8);
    *(v5 + v54) = *(a3 + v54);
    v59 = (v5 + v54 + 8);
    if (a3 != v5)
    {
      v60 = *(a3 + v54 + 31);
      if (*(v5 + v54 + 31) < 0)
      {
        if (v60 >= 0)
        {
          v56 = (a3 + v54 + 8);
        }

        else
        {
          v56 = *v58;
        }

        if (v60 >= 0)
        {
          v57 = *(a3 + v54 + 31);
        }

        else
        {
          v57 = *(a3 + v54 + 16);
        }

        sub_13B38(v59, v56, v57);
      }

      else if ((*(a3 + v54 + 31) & 0x80) != 0)
      {
        sub_13A68(v59, *v58, *(a3 + v54 + 16));
      }

      else
      {
        v61 = *v58;
        *(v5 + v54 + 24) = *(a3 + v54 + 24);
        *v59 = v61;
      }
    }

    v54 += 32;
  }

  while (a3 + v54 != v55);
  return v5;
}

void sub_435288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  a12 = v13 + v12;
  sub_243064(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_4352A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  if (a2 != a3)
  {
    v5 = (a2 + 8);
    do
    {
      while (1)
      {
        v7 = v5 - 8;
        *a4 = *(v5 - 8);
        v8 = (a4 + 8);
        if (*(v5 + 23) < 0)
        {
          break;
        }

        v6 = *v5;
        *(a4 + 24) = *(v5 + 2);
        *v8 = v6;
        a4 += 32;
        v10 = a4;
        v5 += 2;
        if (v7 + 32 == a3)
        {
          return a4;
        }
      }

      sub_325C(v8, *v5, *(v5 + 1));
      a4 = v10 + 32;
      v10 += 32;
      v5 += 2;
    }

    while (v7 + 32 != a3);
  }

  return a4;
}

uint64_t sub_435378(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v8 = a2;
  v11 = a1[1];
  v10 = a1[2];
  if (a5 > (v10 - v11) >> 5)
  {
    v12 = *a1;
    v13 = a5 + ((v11 - *a1) >> 5);
    if (v13 >> 59)
    {
      sub_1794();
    }

    v14 = v10 - v12;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v5 = 32 * ((a2 - v12) >> 5);
    v26 = v5 + 32 * a5;
    v27 = v5;
    do
    {
      *v27 = *v7;
      v28 = *(v7 + 8);
      *(v27 + 24) = *(v7 + 24);
      *(v27 + 8) = v28;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      v27 += 32;
      v7 += 32;
    }

    while (v27 != v26);
    v29 = a1[1];
    v30 = a2;
    if (v29 != a2)
    {
      v31 = a2;
      v32 = v5 + 32 * a5;
      do
      {
        *v32 = *v31;
        v33 = *(v31 + 8);
        *(v32 + 24) = *(v31 + 24);
        *(v32 + 8) = v33;
        *(v31 + 16) = 0;
        *(v31 + 24) = 0;
        *(v31 + 8) = 0;
        v31 += 32;
        v32 += 32;
      }

      while (v31 != v29);
      v34 = a2;
      do
      {
        if (*(v34 + 31) < 0)
        {
          operator delete(*(v34 + 8));
        }

        v34 += 32;
      }

      while (v34 != v29);
      v30 = a1[1];
    }

    v35 = v26 + v30 - v8;
    a1[1] = v8;
    v36 = *a1;
    v37 = v5 + *a1 - v8;
    if (*a1 != v8)
    {
      v38 = *a1;
      v39 = v5 + *a1 - v8;
      do
      {
        *v39 = *v38;
        v40 = *(v38 + 8);
        *(v39 + 24) = *(v38 + 24);
        *(v39 + 8) = v40;
        *(v38 + 16) = 0;
        *(v38 + 24) = 0;
        *(v38 + 8) = 0;
        v38 += 32;
        v39 += 32;
      }

      while (v38 != v8);
      do
      {
        if (*(v36 + 31) < 0)
        {
          operator delete(*(v36 + 8));
        }

        v36 += 32;
      }

      while (v36 != v8);
      v36 = *a1;
    }

    *a1 = v37;
    a1[1] = v35;
    a1[2] = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v5;
  }

  v16 = v11 - a2;
  v17 = (v11 - a2) >> 5;
  if (v17 < a5)
  {
    v18 = v16 + a3;
    v19 = a1[1];
    if (v16 + a3 == a4)
    {
      v20 = a1[1];
    }

    else
    {
      v41 = v16 + a3;
      v20 = a1[1];
      do
      {
        *v20 = *v41;
        v42 = *(v41 + 8);
        *(v20 + 24) = *(v41 + 24);
        *(v20 + 8) = v42;
        *(v41 + 16) = 0;
        *(v41 + 24) = 0;
        *(v41 + 8) = 0;
        v41 += 32;
        v20 += 32;
        v19 += 32;
      }

      while (v41 != a4);
    }

    a1[1] = v19;
    if (v17 >= 1)
    {
      v43 = a2 + 32 * a5;
      v44 = v19 - 32 * a5;
      for (i = v19; v44 < v11; i += 32)
      {
        *i = *v44;
        v46 = *(v44 + 8);
        *(i + 24) = *(v44 + 24);
        *(i + 8) = v46;
        *(v44 + 16) = 0;
        *(v44 + 24) = 0;
        *(v44 + 8) = 0;
        v44 += 32;
      }

      a1[1] = i;
      if (v20 != v43)
      {
        v47 = 0;
        v48 = -32 * a5;
        do
        {
          v50 = v48 + v19;
          *(v47 + v19 - 32) = *(v48 + v19 - 32);
          v51 = (v47 + v19 - 24);
          if (*(v47 + v19 - 1) < 0)
          {
            operator delete(*v51);
          }

          v49 = *(v50 - 24);
          *(v47 + v19 - 8) = *(v50 - 8);
          *v51 = v49;
          *(v50 - 1) = 0;
          *(v50 - 24) = 0;
          v43 += 32;
          v47 -= 32;
          v48 -= 32;
        }

        while (v19 != v43);
      }

      if (v11 == v8)
      {
        return a2;
      }

      else
      {
        v5 = a2;
        do
        {
          *v8 = *v7;
          if (*(v8 + 31) < 0)
          {
            operator delete(*(v8 + 8));
          }

          v52 = *(v7 + 8);
          *(v8 + 24) = *(v7 + 24);
          *(v8 + 8) = v52;
          *(v7 + 31) = 0;
          *(v7 + 8) = 0;
          v7 += 32;
          v8 += 32;
        }

        while (v7 != v18);
      }
    }

    return v5;
  }

  v21 = a2 + 32 * a5;
  v22 = v11 - 32 * a5;
  if (v22 >= v11)
  {
    a1[1] = v11;
    if (v11 == v21)
    {
      goto LABEL_60;
    }

LABEL_56:
    v53 = 0;
    v54 = a2 + 32 * a5 - v11;
    do
    {
      v56 = v22 + v53;
      *(v11 + v53 - 32) = *(v22 + v53 - 32);
      v57 = (v11 + v53 - 24);
      if (*(v11 + v53 - 1) < 0)
      {
        operator delete(*v57);
      }

      v55 = *(v56 - 24);
      *(v11 + v53 - 8) = *(v56 - 8);
      *v57 = v55;
      *(v56 - 1) = 0;
      *(v56 - 24) = 0;
      v53 -= 32;
    }

    while (v54 != v53);
    goto LABEL_60;
  }

  v23 = v11 - 32 * a5;
  v24 = a1[1];
  do
  {
    *v24 = *v23;
    v25 = *(v23 + 8);
    *(v24 + 24) = *(v23 + 24);
    *(v24 + 8) = v25;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 8) = 0;
    v23 += 32;
    v24 += 32;
  }

  while (v23 < v11);
  a1[1] = v24;
  if (v11 != v21)
  {
    goto LABEL_56;
  }

LABEL_60:
  v58 = v7 + 32 * a5;
  do
  {
    *v8 = *v7;
    if (*(v8 + 31) < 0)
    {
      operator delete(*(v8 + 8));
    }

    v59 = *(v7 + 8);
    *(v8 + 24) = *(v7 + 24);
    *(v8 + 8) = v59;
    *(v7 + 31) = 0;
    *(v7 + 8) = 0;
    v7 += 32;
    v8 += 32;
  }

  while (v7 != v58);
  return v5;
}

void *sub_435834(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_435960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_39833C(&a11);
  *(v11 + 8) = v12;
  sub_3983A0(&a9);
  _Unwind_Resume(a1);
}

void sub_435984(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void *sub_435A00(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_435B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_39833C(&a11);
  *(v11 + 8) = v12;
  sub_3983A0(&a9);
  _Unwind_Resume(a1);
}

double sub_435B54@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      *(a2 + 23) = 20;
      *&v3 = *"[UnsupportedRequest]";
      strcpy(a2, "[UnsupportedRequest]");
      return *&v3;
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      operator new();
    case 7:
      v2 = "[UserRouteValidation]";
      goto LABEL_11;
    case 8:
      operator new();
    case 9:
      *(a2 + 23) = 20;
      *&v3 = *"[WaypointValidation]";
      strcpy(a2, "[WaypointValidation]");
      return *&v3;
    case 10:
      operator new();
    case 11:
      v2 = "[EVRequestValidation]";
LABEL_11:
      *(a2 + 23) = 21;
      v3 = *v2;
      *a2 = *v2;
      *(a2 + 13) = *(v2 + 13);
      *(a2 + 21) = 0;
      break;
    case 12:
      *(a2 + 23) = 19;
      *&v3 = *"[EVModelValidation]";
      strcpy(a2, "[EVModelValidation]");
      break;
    case 13:
      operator new();
    case 14:
      operator new();
    default:
      *(a2 + 23) = 0;
      *a2 = 0;
      break;
  }

  return *&v3;
}

uint64_t sub_435F90(uint64_t a1)
{
  v2 = sub_4366B4(&xmmword_278F6C8, a1);
  if (v2)
  {
    return *(v2 + 40);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v14);
    v4 = sub_4A5C(&v14, "Tag ", 4);
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    v8 = sub_4A5C(v4, v6, v7);
    sub_4A5C(v8, " is not defined in routing error tags", 37);
    if ((v24 & 0x10) != 0)
    {
      v10 = v23;
      if (v23 < v20)
      {
        v23 = v20;
        v10 = v20;
      }

      v11 = v19;
      v9 = v10 - v19;
      if (v10 - v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v9 = 0;
        v13 = 0;
LABEL_22:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 3u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v11 = v17;
      v9 = v18 - v17;
      if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_28:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_22;
  }

  return result;
}

void sub_436240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t **sub_436284(void *a1, uint64_t a2)
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

void sub_436688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_43669C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_4366B4(void *a1, uint64_t a2)
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

void sub_43686C()
{
  v1 = 275;
  strcpy(v0, "unsupported_request");
  operator new();
}

void sub_436EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  v17 = v15;
  while (1)
  {
    v18 = *(v17 - 9);
    v17 -= 4;
    if (v18 < 0)
    {
      operator delete(*v17);
    }

    if (v17 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_43706C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a2 + 16) = 0x7FEFFFFFFFFFFFFFLL;
  *(a2 + 24) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *(a2 + 56) = vnegq_f64(v2);
  v3 = *(result + 72);
  if (v3)
  {
    v4 = *(result + 72);
  }

  else
  {
    v4 = &off_2777240;
  }

  v5 = &off_27771C8;
  if (v4[3])
  {
    v5 = v4[3];
  }

  if ((~*(v5 + 4) & 7) == 0 && (v5[3] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v6 = v5[4];
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v7 = v5[5];
      if ((v7 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        *a2 = v5[3];
        *(a2 + 8) = v6;
        *(a2 + 16) = v7;
        *(a2 + 24) = 0;
        *(a2 + 32) = *(v5 + 3);
        *(a2 + 48) = v5[8];
        if ((v4[2] & 4) != 0)
        {
          v8 = a2;
          v9 = result;
          result = sub_437194(*(v4 + 5));
          a2 = v8;
          *(v8 + 64) = result;
          v3 = *(v9 + 72);
        }

        if (!v3)
        {
          v3 = &off_2777240;
        }

        if ((v3[2] & 2) != 0)
        {
          v10 = a2;
          result = sub_437194(*(v3 + 4));
          *(v10 + 56) = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_437194(double a1)
{
  v1 = a1 * 100.0;
  if (v1 >= 0.0)
  {
    v2 = v1;
    if (v1 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v3 = (v1 + v1) + 1;
  }

  else
  {
    v2 = v1;
    if (v1 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v3 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
  }

  v2 = (v3 >> 1);
LABEL_7:
  if (v2 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v1 >= 0.0)
  {
    if (v1 < 4.50359963e15)
    {
      v4 = (v1 + v1) + 1;
      return (v4 >> 1);
    }
  }

  else if (v1 > -4.50359963e15)
  {
    v4 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
    return (v4 >> 1);
  }

  return v1;
}

double sub_437268(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) |= 1u;
  v4 = *(a2 + 24);
  if (!v4)
  {
    v5 = *(a2 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    sub_155A57C(v6);
    *(a2 + 24) = v4;
  }

  v7 = *(v4 + 16);
  *(v4 + 24) = *a1;
  *(v4 + 40) = *(a1 + 16);
  *(v4 + 48) = *(a1 + 32);
  result = *(a1 + 48);
  *(v4 + 16) = v7 | 0x3F;
  *(v4 + 64) = result;
  v9 = *(a1 + 56);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(a1 + 64);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

LABEL_9:
    result = v10 / 100.0;
    *(a2 + 16) |= 4u;
    *(a2 + 40) = result;
    return result;
  }

  result = v9 / 100.0;
  *(a2 + 16) |= 2u;
  *(a2 + 32) = result;
  v10 = *(a1 + 64);
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_43735C(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    do
    {
      v9 = *(a2 + 64);
      if (v9 && (v10 = *(a2 + 56), v10 < *v9))
      {
        *(a2 + 56) = v10 + 1;
        result = *&v9[2 * v10 + 2];
      }

      else
      {
        v5 = sub_15519F8(*(a2 + 48));
        result = sub_19593CC(a2 + 48, v5);
      }

      v6 = *v2;
      v7 = *(result + 16);
      *(result + 16) = v7 | 1;
      *(result + 24) = v6;
      v8 = v2[1];
      *(result + 16) = v7 | 3;
      *(result + 28) = v8;
      v2 += 2;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_437404(uint64_t *a1, void *a2)
{
  v4 = sub_3AF6B4(a2);
  *a1 = v4;
  v5 = a1 + 1;
  v6 = sub_2AF704(v4 + 3896, 1u, 1);
  if (v6 && (v7 = &v6[-*v6], *v7 >= 0xBu) && (v8 = *(v7 + 5)) != 0)
  {
    v9 = *&v6[v8 + *&v6[v8]];
    *v5 = 0;
    a1[2] = 0;
    a1[3] = 0;
    if (v9)
    {
      operator new();
    }
  }

  else
  {
    *v5 = 0;
    a1[2] = 0;
    a1[3] = 0;
  }

  v30 = 14;
  strcpy(v29, "TollClassifier");
  memset(__p, 0, 24);
  v10 = sub_3AEC94(a2, v29, __p);
  v11 = __p[0];
  if (__p[0])
  {
    v12 = __p[1];
    v13 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p[0];
    }

    __p[1] = v11;
    operator delete(v13);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  HIBYTE(__p[2]) = 21;
  strcpy(__p, "annual_pass_countries");
  v15 = sub_5F680(v10, __p);
  sub_5B8CC(v29, v15);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v17 = v29[0];
    v16 = v29[1];
    if (v29[0] == v29[1])
    {
LABEL_19:
      if (!v17)
      {
        return a1;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v17 = v29[0];
    v16 = v29[1];
    if (v29[0] == v29[1])
    {
      goto LABEL_19;
    }
  }

  do
  {
    if (*(v17 + 2) != 1)
    {
      sub_5AF20();
    }

    sub_35FB74(*a1, *v17, __p);
    v18 = __p[0];
    v19 = __p[1];
    if (__p[0] != __p[1])
    {
      v20 = *v5;
      v21 = __p[0];
      do
      {
        v22 = *v21++;
        *(v20 + ((v22 >> 3) & 0x1FF8)) |= 1 << v22;
      }

      while (v21 != v19);
    }

    if (v18)
    {
      __p[1] = v18;
      operator delete(v18);
    }

    v17 += 2;
  }

  while (v17 != v16);
  v17 = v29[0];
  if (v29[0])
  {
LABEL_31:
    v23 = v29[1];
    v24 = v17;
    if (v29[1] != v17)
    {
      do
      {
        v25 = v23 - 16;
        v26 = *(v23 - 2);
        if (v26 != -1)
        {
          (off_266A048[v26])(__p, v23 - 16);
        }

        *(v23 - 2) = -1;
        v23 -= 16;
      }

      while (v25 != v17);
      v24 = v29[0];
    }

    v29[1] = v17;
    operator delete(v24);
  }

  return a1;
}

void sub_437714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1A104(&a9);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*v21)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_437778(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = &(*a2)[-**a2];
  if (*v3 < 0x9Bu || !*(v3 + 77) || (v2[*(v3 + 77) + 1] & 1) == 0)
  {
    return 0;
  }

  v5 = *(v3 + 6);
  if (v5)
  {
    v5 = *&v2[v5];
  }

  v6 = 1;
  if (*(a1 + 16) > v5)
  {
    if ((*(*(a1 + 8) + ((v5 >> 3) & 0x1FF8)) >> v5))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v6;
}

void sub_4377EC(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF144(a2);
  a1[1] = sub_3AF6B4(a2);
  a1[2] = sub_3B6890(a2);
  a1[3] = 0;
  a1[4] = 0x8000000080000000;
  operator new();
}

void sub_437CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_437D8C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 && (*(a1 + 25) & 1) != 0)
  {
    sub_4416AC(*a1, a2, a3, *(*a1 + 37), a4);
    if (*(a1 + 28) == 1)
    {
      v6 = a1;
      v7 = *a1;
      v8 = *a4;
      v9 = a4[1];
      v11[0] = v6;
      v11[1] = v7;
      if (v8 != v9)
      {
        while ((sub_441A28(v11, v8) & 1) == 0)
        {
          if (++v8 == v9)
          {
            v8 = v9;
            goto LABEL_16;
          }
        }
      }

      if (v8 != v9)
      {
        for (i = v8 + 1; i != v9; ++i)
        {
          if ((sub_441A28(v11, i) & 1) == 0)
          {
            *v8++ = *i;
          }
        }
      }

LABEL_16:
      if (v8 != a4[1])
      {
        a4[1] = v8;
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_437EAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_437ECC@<X0>(uint64_t result@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = (*a2 - **a2);
  v5 = *v4;
  if (!*(a2 + 38))
  {
    if (v5 < 0x47)
    {
      if (v5 <= 0x38)
      {
        goto LABEL_20;
      }
    }

    else if (v4[35] && (v3[v4[35]] & 1) != 0)
    {
LABEL_9:
      v6 = a2[4];
      v11[0] = off_266A220;
      v12 = v11;
      sub_437D8C(result, v6 & 0xFFFFFFFFFFFFFFLL, v11, a3);
      result = v12;
      if (v12 != v11)
      {
        goto LABEL_22;
      }

      return (*(*result + 32))(result);
    }

    v9 = v4[28];
    if (v9)
    {
      v8 = *&v3[v9];
      if (v8)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

LABEL_20:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  if (v5 < 0x47)
  {
    if (v5 > 0x38)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  if (v4[35] && (v3[v4[35]] & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v7 = v4[28];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = *&v3[v7];
  if ((v8 & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v8 & 7) != 4 && (v8 & 0x23) != 0x20)
  {
    goto LABEL_20;
  }

LABEL_21:
  v10 = a2[4];
  v11[0] = off_266A2A0;
  v12 = v11;
  sub_437D8C(result, v10 & 0xFFFFFFFFFFFFFFLL, v11, a3);
  result = v12;
  if (v12 == v11)
  {
    return (*(*result + 32))(result);
  }

LABEL_22:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_438094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

void sub_4380A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

void sub_4380BC(uint64_t a1, void *a2)
{
  *a1 = sub_3AF144(a2);
  *(a1 + 8) = sub_3AF6B4(a2);
  *(a1 + 16) = sub_3B6890(a2);
  v4 = sub_E89A2C(a2);
  *(a1 + 25) = 0;
  *(a1 + 24) = v4;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0x8000000080000000;
  operator new();
}

void sub_4385A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_43867C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 && (*(a1 + 25) & 1) != 0)
  {
    sub_4416AC(*a1, a2, a3, *(*a1 + 37), a4);
    if (*(a1 + 28) == 1)
    {
      v6 = a1;
      v7 = *a1;
      v8 = *a4;
      v9 = a4[1];
      v11[0] = v6;
      v11[1] = v7;
      if (v8 != v9)
      {
        while ((sub_44200C(v11, v8) & 1) == 0)
        {
          if (++v8 == v9)
          {
            v8 = v9;
            goto LABEL_16;
          }
        }
      }

      if (v8 != v9)
      {
        for (i = v8 + 1; i != v9; ++i)
        {
          if ((sub_44200C(v11, i) & 1) == 0)
          {
            *v8++ = *i;
          }
        }
      }

LABEL_16:
      if (v8 != a4[1])
      {
        a4[1] = v8;
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_43879C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4387BC@<X0>(uint64_t result@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = (*a2 - **a2);
  v5 = *v4;
  if (!*(a2 + 38))
  {
    if (v5 < 0x9B)
    {
      if (v5 <= 0x38)
      {
        goto LABEL_20;
      }
    }

    else if (v4[77] && (v3[v4[77]] & 1) != 0)
    {
LABEL_9:
      v6 = a2[4];
      v11[0] = off_266A420;
      v12 = v11;
      sub_43867C(result, v6 & 0xFFFFFFFFFFFFFFLL, v11, a3);
      result = v12;
      if (v12 != v11)
      {
        goto LABEL_22;
      }

      return (*(*result + 32))(result);
    }

    v9 = v4[28];
    if (v9)
    {
      v8 = *&v3[v9];
      if (v8)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

LABEL_20:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  if (v5 < 0x9B)
  {
    if (v5 > 0x38)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  if (v4[77] && (v3[v4[77]] & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v7 = v4[28];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = *&v3[v7];
  if ((v8 & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v8 & 7) != 4 && (v8 & 0x23) != 0x20)
  {
    goto LABEL_20;
  }

LABEL_21:
  v10 = a2[4];
  v11[0] = off_266A4A0;
  v12 = v11;
  sub_43867C(result, v10 & 0xFFFFFFFFFFFFFFLL, v11, a3);
  result = v12;
  if (v12 == v11)
  {
    return (*(*result + 32))(result);
  }

LABEL_22:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_438984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

void sub_438998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

BOOL sub_4389AC(uint64_t a1, int **a2)
{
  sub_4389F4(a1, a2, &v5);
  v2 = v5;
  v3 = v6;
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return v2 != v3;
}

uint64_t sub_4389F4@<X0>(uint64_t result@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = (*a2 - **a2);
  v5 = *v4;
  if (!*(a2 + 38))
  {
    if (v5 < 0x9B)
    {
      if (v5 <= 0x38)
      {
        goto LABEL_20;
      }
    }

    else if (v4[77] && (v3[v4[77]] & 1) != 0)
    {
LABEL_9:
      v6 = a2[4];
      v11[0] = off_266A0A0;
      v12 = v11;
      sub_43867C(result, v6 & 0xFFFFFFFFFFFFFFLL, v11, a3);
      result = v12;
      if (v12 != v11)
      {
        goto LABEL_22;
      }

      return (*(*result + 32))(result);
    }

    v9 = v4[28];
    if (v9)
    {
      v8 = *&v3[v9];
      if (v8)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

LABEL_20:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  if (v5 < 0x9B)
  {
    if (v5 > 0x38)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  if (v4[77] && (v3[v4[77]] & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v7 = v4[28];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = *&v3[v7];
  if ((v8 & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v8 & 7) != 4 && (v8 & 0x23) != 0x20)
  {
    goto LABEL_20;
  }

LABEL_21:
  v10 = a2[4];
  v11[0] = off_266A120;
  v12 = v11;
  sub_43867C(result, v10 & 0xFFFFFFFFFFFFFFLL, v11, a3);
  result = v12;
  if (v12 == v11)
  {
    return (*(*result + 32))(result);
  }

LABEL_22:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_438BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

void sub_438BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_438BE4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(result + 26))
  {
    v3[0] = off_266A520;
    v4 = v3;
    sub_43867C(result, a2, v3, a3);
    result = v4;
    if (v4 == v3)
    {
      return (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      return (*(*v4 + 40))();
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_438D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

void sub_438D14(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF144(a2);
  a1[1] = sub_3AF6B4(a2);
  a1[2] = sub_3B6890(a2);
  a1[3] = 0;
  a1[4] = 0x8000000080000000;
  operator new();
}

void sub_4391DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4392B4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 && (*(a1 + 25) & 1) != 0)
  {
    sub_4416AC(*a1, a2, a3, *(*a1 + 37), a4);
    if (*(a1 + 28) == 1)
    {
      v6 = a1;
      v7 = *a1;
      v8 = *a4;
      v9 = a4[1];
      v11[0] = v6;
      v11[1] = v7;
      if (v8 != v9)
      {
        while ((sub_442998(v11, v8) & 1) == 0)
        {
          if (++v8 == v9)
          {
            v8 = v9;
            goto LABEL_16;
          }
        }
      }

      if (v8 != v9)
      {
        for (i = v8 + 1; i != v9; ++i)
        {
          if ((sub_442998(v11, i) & 1) == 0)
          {
            *v8++ = *i;
          }
        }
      }

LABEL_16:
      if (v8 != a4[1])
      {
        a4[1] = v8;
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_4393D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4393F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 36);
  if ((v6 & 0x40000000) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 >> 31;
  }

  result = sub_314D1C(a2, v7);
  if (result)
  {
    v9 = ((*(a2 + 36) & 0x20000000) << 19) | (*(a2 + 36) << 32) | *(a2 + 32);
    v10[0] = off_266A320;
    v11 = v10;
    sub_4392B4(a1, v9 ^ 0x1000000000000, v10, a3);
    result = v11;
    if (v11 == v10)
    {
      return (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      return (*(*v11 + 40))();
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_439560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

void sub_439574(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *a1;
  v3 = *(a1 + 24);
  v20 = *(a1 + 16);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v4 = *(a1 + 32);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 72);
  v7 = *(a1 + 96);
  v12 = *(a1 + 88);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v8 = *(a1 + 104);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v10 = *(a1 + 120);
  v9 = *(a1 + 128);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_442F7C(&v19, &v11, a2);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_4397A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_4397C4(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

void sub_4397F0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2BD358(*a1);

  sub_439848(a1, a2, v6, a3);
}

void sub_439848(void **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (*(a1 + 25) != 1)
  {
    return;
  }

  v5 = a2;
  v71 = 0;
  v72[0] = a4;
  v69 = 0;
  v70 = 0;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v54 = *(a2 + 16);
  *&v68 = *a2;
  *(&v68 + 1) = v7;
  v53 = v8;
LABEL_4:
  if (v6)
  {
    v9 = sub_4D1DC0(v6);
    v10 = v7 >= v9;
    v11 = v7 < v9;
    if (!v54)
    {
      if (v10)
      {
        goto LABEL_67;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v54)
    {
      goto LABEL_67;
    }

    v11 = 0;
  }

  v12 = sub_4D1DC0(v54);
  if (v8 < v12 && v11)
  {
    v14 = sub_4D1F50(v68, *(&v68 + 1));
    if (v14 == sub_4D1F50(v54, v8))
    {
      goto LABEL_67;
    }

    goto LABEL_18;
  }

  if ((v11 ^ (v8 < v12)))
  {
LABEL_18:
    v15 = *a1;
    v16 = sub_4D1F50(v68, *(&v68 + 1));
    sub_439E58(v15, *(v16 + 32) & 0xFFFFFFFFFFFFFFLL, a3, &v66);
    v18 = v66;
    v17 = v67;
    if (v66 != v67)
    {
      v19 = *(a4 + 8);
LABEL_20:
      while (2)
      {
        for (i = *a4; i != v19; i += 16)
        {
          if (!i[12] && *(i + 4) == *v18 && *(i + 5) == v18[1] && *(&v68 + 1) < *(i + 3))
          {
            v18 += 2;
            if (v18 != v17)
            {
              goto LABEL_20;
            }

            goto LABEL_44;
          }
        }

        v21 = sub_43A248(v68, *(&v68 + 1) + 1, *(v5 + 16), *(v5 + 24), v18);
        v23 = *(a4 + 8);
        v24 = *(a4 + 16);
        if (v23 >= v24)
        {
          v26 = *a4;
          v27 = v23 - *a4;
          v28 = v27 >> 6;
          v29 = (v27 >> 6) + 1;
          if (v29 >> 58)
          {
            sub_1794();
          }

          v30 = v24 - v26;
          if (v30 >> 5 > v29)
          {
            v29 = v30 >> 5;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFC0)
          {
            v31 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            if (!(v31 >> 58))
            {
              operator new();
            }

            sub_1808();
          }

          v32 = v28 << 6;
          *v32 = v68;
          *(v32 + 16) = v21;
          *(v32 + 24) = v22;
          *(v32 + 32) = *v18;
          *(v32 + 48) = 0;
          *(v32 + 56) = 0;
          v19 = (v28 << 6) + 64;
          v33 = (v32 - (v27 >> 6 << 6));
          memcpy(v33, v26, v27);
          *a4 = v33;
          *(a4 + 8) = v19;
          *(a4 + 16) = 0;
          if (v26)
          {
            operator delete(v26);
          }

          v5 = a2;
          *(a4 + 8) = v19;
          v18 += 2;
          if (v18 != v17)
          {
            continue;
          }
        }

        else
        {
          *v23 = v68;
          *(v23 + 16) = v21;
          *(v23 + 24) = v22;
          v25 = *v18;
          v18 += 2;
          *(v23 + 32) = v25;
          *(v23 + 48) = 0;
          *(v23 + 56) = 0;
          v19 = v23 + 64;
          *(a4 + 8) = v23 + 64;
          if (v18 != v17)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_44:
    v8 = v53;
    if ((*(a1 + 29) & 1) == 0)
    {
      goto LABEL_65;
    }

    v34 = a1[1];
    v35 = sub_4D1F50(v68, *(&v68 + 1));
    sub_2B7F14(v34, *(v35 + 32) | (*(v35 + 36) << 32), &v69);
    v36 = a1[1];
    v37 = sub_4D1F50(v68, *(&v68 + 1));
    sub_2B79D0(v36, *(v37 + 32) | (*(v37 + 36) << 32), v63);
    v38 = v69;
    v39 = v70;
    while (1)
    {
      if (v38 == v39)
      {
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        v5 = a2;
        v8 = v53;
LABEL_65:
        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        v6 = v68;
        v7 = ++*(&v68 + 1);
        goto LABEL_4;
      }

      v40 = *v38;
      sub_2BCEB4(*a1, *v38, 3, a3, &__p);
      v42 = __p;
      v41 = v62;
      if (__p != v62)
      {
        do
        {
          sub_43A3A0(v72, v42, v42[4], &v68);
          v42 += 6;
        }

        while (v42 != v41);
      }

      sub_2BD5C4(*a1, v40, 3, a3, &v59);
      v44 = v59;
      v43 = v60;
      if (v59 == v60)
      {
        break;
      }

      do
      {
        v45 = *(v44 + 16);
        v46 = *(**v44 + 704 * *(v44 + 8) + 488);
        v47 = *(sub_4D1F50(v68, *(&v68 + 1)) + 32);
        *&v48 = sub_31BF20(v63, v58).n128_u64[0];
        v52 = sub_38FFE0((v46 + 176 * v45), v47 & 0xFFFFFFFFFFFFFFLL, v58, v48, v49, v50, v51);
        if (v58[0])
        {
          v58[1] = v58[0];
          operator delete(v58[0]);
        }

        if (v52)
        {
          sub_43A3A0(v72, v44, *(v44 + 16), &v68);
        }

        v44 += 24;
      }

      while (v44 != v43);
      v44 = v59;
      if (v59)
      {
        goto LABEL_52;
      }

LABEL_53:
      if (__p)
      {
        v62 = __p;
        operator delete(__p);
      }

      ++v38;
    }

    if (!v59)
    {
      goto LABEL_53;
    }

LABEL_52:
    v60 = v44;
    operator delete(v44);
    goto LABEL_53;
  }

LABEL_67:
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_439D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v33 = *(v31 - 120);
    if (!v33)
    {
LABEL_3:
      v34 = *v30;
      if (!*v30)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v33 = *(v31 - 120);
    if (!v33)
    {
      goto LABEL_3;
    }
  }

  *(v31 - 112) = v33;
  operator delete(v33);
  v34 = *v30;
  if (!*v30)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v30 + 8) = v34;
  operator delete(v34);
  _Unwind_Resume(exception_object);
}

void sub_439E58(uint64_t *a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (*a1)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 184);
    v10 = v9 - v8;
    if (v9 - v8 >= 24)
    {
      v11 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v12 = a2 & 0xFF000000000000;
      if (v10 != 24)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        if (v12)
        {
          v14 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v14 = v11 + 1;
        }

        do
        {
          v15 = 6 * (v13 >> 2);
          _X17 = &v8[v15];
          __asm { PRFM            #0, [X17] }

          v22 = &v8[6 * (v13 >> 1)];
          _X16 = &v22[v15];
          __asm { PRFM            #0, [X16] }

          v25 = (*v22 << 32) | (*(v22 + 2) << 16);
          if (!*(v22 + 6))
          {
            ++v25;
          }

          if (v25 >= v14)
          {
            v26 = 0;
          }

          else
          {
            v26 = v13 >> 1;
          }

          v8 += 6 * v26;
          v13 -= v13 >> 1;
        }

        while (v13 > 1);
      }

      v27 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!*(v8 + 6))
      {
        ++v27;
      }

      if (!v12)
      {
        ++v11;
      }

      v8 += 6 * (v27 < v11);
    }

    if (v8 != v9)
    {
      v28 = BYTE6(a2);
      v29 = WORD2(a2);
      v32 = 1 << a3;
      v30 = v8 + 4;
      do
      {
        v31 = v30 - 2;
        if (*(v30 - 4) != a2 || *(v30 - 6) != v29 || *(v30 - 10) != v28)
        {
          break;
        }

        if ((*(v30 - 1) & v32) != 0 && sub_38F51C(*(*a1 + 152) + 464 * *v30, 3) && (sub_38F7F0(*(*a1 + 152) + 464 * *v30) & 1) == 0)
        {
          operator new();
        }

        v30 += 3;
      }

      while (v31 + 3 != *(v5 + 184));
    }

    if (a1[4])
    {
      v33[0] = off_266A5A0;
      v34 = v33;
      sub_2BEDA8(a1, a2, a4, v33);
      if (v34 == v33)
      {
        (*(*v34 + 32))(v34);
      }

      else if (v34)
      {
        (*(*v34 + 40))();
      }
    }
  }
}

void sub_43A204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a13)
  {
    *(a12 + 8) = a13;
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_43A248(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v13 = a5;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v9 = sub_4D1DC0(a1);
        v10 = sub_4D1DC0(a3);
        if (a2 >= v9 || a4 >= v10)
        {
          if (a2 < v9 == a4 < v10)
          {
            return a1;
          }
        }

        else
        {
          v11 = sub_4D1F50(a1, a2);
          if (v11 == sub_4D1F50(a3, a4))
          {
            return a1;
          }
        }

        sub_4D1F50(a1, a2);
        if (sub_43F200(&v13))
        {
          break;
        }

        ++a2;
      }
    }

    else
    {
      while (a2 < sub_4D1DC0(a1))
      {
        sub_4D1F50(a1, a2);
        if (sub_43F200(&v13))
        {
          break;
        }

        ++a2;
      }
    }
  }

  else if (a3 && a4 < sub_4D1DC0(a3))
  {
    do
    {
      sub_4D1F50(0, a2);
      if (sub_43F200(&v13))
      {
        break;
      }

      ++a2;
    }

    while (a4 < sub_4D1DC0(a3));
  }

  return a1;
}

void sub_43A3A0(void ***a1, void *a2, uint64_t a3, void **a4)
{
  v8 = *a1;
  for (i = (*a1)[1]; i != *v8; i -= 64)
  {
    if (*(i - 4) != 1 || *(i - 4) != *a2 || *(i - 3) != a2[1])
    {
      goto LABEL_3;
    }

    v10 = *(i - 6);
    v11 = *(i - 5) - 1;
    if (v10)
    {
      v12 = sub_4D1DC0(*(i - 6));
      v13 = v11 < v12;
      v14 = *a4;
      if (!*a4)
      {
        if (v11 >= v12)
        {
          break;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v14 = *a4;
      if (!*a4)
      {
        break;
      }

      v13 = 0;
    }

    v15 = a4[1];
    v16 = sub_4D1DC0(v14);
    if (v13 && v15 < v16)
    {
      v17 = sub_4D1F50(v10, v11);
      if (v17 == sub_4D1F50(*a4, a4[1]))
      {
        break;
      }
    }

    else if (v13 == v15 < v16)
    {
      break;
    }

LABEL_19:
    v19 = *(i - 6);
    v18 = *(i - 5);
    if (v19)
    {
      v20 = sub_4D1DC0(*(i - 6));
      v21 = v18 < v20;
      v22 = *a4;
      if (!*a4)
      {
        if (v18 >= v20)
        {
          goto LABEL_28;
        }

        goto LABEL_3;
      }
    }

    else
    {
      v22 = *a4;
      if (!*a4)
      {
        goto LABEL_28;
      }

      v21 = 0;
    }

    v23 = a4[1];
    v24 = sub_4D1DC0(v22);
    if (v21 && v23 < v24)
    {
      v25 = sub_4D1F50(v19, v18);
      if (v25 == sub_4D1F50(*a4, a4[1]))
      {
LABEL_28:
        ++*(i - 5);
        break;
      }
    }

    else if (((v21 ^ (v23 < v24)) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_3:
    v8 = *a1;
  }

  v26 = *a1;
  v27 = **a1;
  if (i == v27)
  {
    v28 = *a4;
    v29 = a4[1] + 1;
    v30 = v26[1];
    v31 = v26[2];
    if (v30 >= v31)
    {
      v33 = v30 - v27;
      v34 = (v30 - v27) >> 6;
      v35 = v34 + 1;
      if ((v34 + 1) >> 58)
      {
        sub_1794();
      }

      v36 = v31 - v27;
      if (v36 >> 5 > v35)
      {
        v35 = v36 >> 5;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFC0)
      {
        v37 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        if (!(v37 >> 58))
        {
          operator new();
        }

        sub_1808();
      }

      v38 = v34 << 6;
      *v38 = *a4;
      *(v38 + 16) = v28;
      *(v38 + 24) = v29;
      *(v38 + 32) = *a2;
      *(v38 + 48) = 1;
      *(v38 + 56) = a3;
      v32 = (v34 << 6) + 64;
      memcpy(0, v27, v33);
      *v26 = 0;
      v26[1] = v32;
      v26[2] = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v30 = *a4;
      *(v30 + 2) = v28;
      *(v30 + 3) = v29;
      *(v30 + 2) = *a2;
      *(v30 + 12) = 1;
      *(v30 + 7) = a3;
      v32 = (v30 + 64);
    }

    v26[1] = v32;
  }
}

void sub_43A664(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2BD358(*a1);

  sub_43A6BC(a1, a2, v6, a3);
}

void sub_43A6BC(void **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (*(a1 + 25) != 1)
  {
    return;
  }

  v5 = a2;
  v71 = 0;
  v72[0] = a4;
  v69 = 0;
  v70 = 0;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v54 = *(a2 + 16);
  *&v68 = *a2;
  *(&v68 + 1) = v7;
  v53 = v8;
LABEL_4:
  if (v6)
  {
    v9 = sub_F6D024(v6);
    v10 = v7 >= v9;
    v11 = v7 < v9;
    if (!v54)
    {
      if (v10)
      {
        goto LABEL_67;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v54)
    {
      goto LABEL_67;
    }

    v11 = 0;
  }

  v12 = sub_F6D024(v54);
  if (v8 < v12 && v11)
  {
    v14 = sub_F6D17C(v68, *(&v68 + 1));
    if (v14 == sub_F6D17C(v54, v8))
    {
      goto LABEL_67;
    }

    goto LABEL_18;
  }

  if ((v11 ^ (v8 < v12)))
  {
LABEL_18:
    v15 = *a1;
    v16 = sub_F6D17C(v68, *(&v68 + 1));
    sub_43ACCC(v15, *(v16 + 32) & 0xFFFFFFFFFFFFFFLL, a3, &v66);
    v18 = v66;
    v17 = v67;
    if (v66 != v67)
    {
      v19 = *(a4 + 8);
LABEL_20:
      while (2)
      {
        for (i = *a4; i != v19; i += 16)
        {
          if (!i[12] && *(i + 4) == *v18 && *(i + 5) == v18[1] && *(&v68 + 1) < *(i + 3))
          {
            v18 += 2;
            if (v18 != v17)
            {
              goto LABEL_20;
            }

            goto LABEL_44;
          }
        }

        v21 = sub_43B0C0(v68, *(&v68 + 1) + 1, *(v5 + 16), *(v5 + 24), v18);
        v23 = *(a4 + 8);
        v24 = *(a4 + 16);
        if (v23 >= v24)
        {
          v26 = *a4;
          v27 = v23 - *a4;
          v28 = v27 >> 6;
          v29 = (v27 >> 6) + 1;
          if (v29 >> 58)
          {
            sub_1794();
          }

          v30 = v24 - v26;
          if (v30 >> 5 > v29)
          {
            v29 = v30 >> 5;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFC0)
          {
            v31 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            if (!(v31 >> 58))
            {
              operator new();
            }

            sub_1808();
          }

          v32 = v28 << 6;
          *v32 = v68;
          *(v32 + 16) = v21;
          *(v32 + 24) = v22;
          *(v32 + 32) = *v18;
          *(v32 + 48) = 0;
          *(v32 + 56) = 0;
          v19 = (v28 << 6) + 64;
          v33 = (v32 - (v27 >> 6 << 6));
          memcpy(v33, v26, v27);
          *a4 = v33;
          *(a4 + 8) = v19;
          *(a4 + 16) = 0;
          if (v26)
          {
            operator delete(v26);
          }

          v5 = a2;
          *(a4 + 8) = v19;
          v18 += 2;
          if (v18 != v17)
          {
            continue;
          }
        }

        else
        {
          *v23 = v68;
          *(v23 + 16) = v21;
          *(v23 + 24) = v22;
          v25 = *v18;
          v18 += 2;
          *(v23 + 32) = v25;
          *(v23 + 48) = 0;
          *(v23 + 56) = 0;
          v19 = v23 + 64;
          *(a4 + 8) = v23 + 64;
          if (v18 != v17)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_44:
    v8 = v53;
    if ((*(a1 + 29) & 1) == 0)
    {
      goto LABEL_65;
    }

    v34 = a1[1];
    v35 = sub_F6D17C(v68, *(&v68 + 1));
    sub_2B7F14(v34, *(v35 + 32) | (*(v35 + 36) << 32), &v69);
    v36 = a1[1];
    v37 = sub_F6D17C(v68, *(&v68 + 1));
    sub_2B79D0(v36, *(v37 + 32) | (*(v37 + 36) << 32), v63);
    v38 = v69;
    v39 = v70;
    while (1)
    {
      if (v38 == v39)
      {
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        v5 = a2;
        v8 = v53;
LABEL_65:
        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        v6 = v68;
        v7 = ++*(&v68 + 1);
        goto LABEL_4;
      }

      v40 = *v38;
      sub_2BCEB4(*a1, *v38, 0, a3, &__p);
      v42 = __p;
      v41 = v62;
      if (__p != v62)
      {
        do
        {
          sub_43B218(v72, v42, v42[4], &v68);
          v42 += 6;
        }

        while (v42 != v41);
      }

      sub_2BD5C4(*a1, v40, 0, a3, &v59);
      v44 = v59;
      v43 = v60;
      if (v59 == v60)
      {
        break;
      }

      do
      {
        v45 = *(v44 + 16);
        v46 = *(**v44 + 704 * *(v44 + 8) + 488);
        v47 = *(sub_F6D17C(v68, *(&v68 + 1)) + 32);
        *&v48 = sub_31BF20(v63, v58).n128_u64[0];
        v52 = sub_38FFE0((v46 + 176 * v45), v47 & 0xFFFFFFFFFFFFFFLL, v58, v48, v49, v50, v51);
        if (v58[0])
        {
          v58[1] = v58[0];
          operator delete(v58[0]);
        }

        if (v52)
        {
          sub_43B218(v72, v44, *(v44 + 16), &v68);
        }

        v44 += 24;
      }

      while (v44 != v43);
      v44 = v59;
      if (v59)
      {
        goto LABEL_52;
      }

LABEL_53:
      if (__p)
      {
        v62 = __p;
        operator delete(__p);
      }

      ++v38;
    }

    if (!v59)
    {
      goto LABEL_53;
    }

LABEL_52:
    v60 = v44;
    operator delete(v44);
    goto LABEL_53;
  }

LABEL_67:
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_43AB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v33 = *(v31 - 120);
    if (!v33)
    {
LABEL_3:
      v34 = *v30;
      if (!*v30)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v33 = *(v31 - 120);
    if (!v33)
    {
      goto LABEL_3;
    }
  }

  *(v31 - 112) = v33;
  operator delete(v33);
  v34 = *v30;
  if (!*v30)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v30 + 8) = v34;
  operator delete(v34);
  _Unwind_Resume(exception_object);
}

void sub_43ACCC(uint64_t *a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (*a1)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 184);
    v10 = v9 - v8;
    if (v9 - v8 >= 24)
    {
      v11 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v12 = a2 & 0xFF000000000000;
      if (v10 != 24)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        if (v12)
        {
          v14 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v14 = v11 + 1;
        }

        do
        {
          v15 = 6 * (v13 >> 2);
          _X17 = &v8[v15];
          __asm { PRFM            #0, [X17] }

          v22 = &v8[6 * (v13 >> 1)];
          _X16 = &v22[v15];
          __asm { PRFM            #0, [X16] }

          v25 = (*v22 << 32) | (*(v22 + 2) << 16);
          if (!*(v22 + 6))
          {
            ++v25;
          }

          if (v25 >= v14)
          {
            v26 = 0;
          }

          else
          {
            v26 = v13 >> 1;
          }

          v8 += 6 * v26;
          v13 -= v13 >> 1;
        }

        while (v13 > 1);
      }

      v27 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!*(v8 + 6))
      {
        ++v27;
      }

      if (!v12)
      {
        ++v11;
      }

      v8 += 6 * (v27 < v11);
    }

    if (v8 != v9)
    {
      v28 = BYTE6(a2);
      v29 = WORD2(a2);
      v32 = 1 << a3;
      v30 = v8 + 4;
      do
      {
        v31 = v30 - 2;
        if (*(v30 - 4) != a2 || *(v30 - 6) != v29 || *(v30 - 10) != v28)
        {
          break;
        }

        if ((*(v30 - 1) & v32) != 0 && sub_38F51C(*(*a1 + 152) + 464 * *v30, 0) && (sub_38F7F0(*(*a1 + 152) + 464 * *v30) & 1) == 0)
        {
          operator new();
        }

        v30 += 3;
      }

      while (v31 + 3 != *(v5 + 184));
    }

    if (a1[4])
    {
      v33[0] = off_266A620;
      v34 = v33;
      sub_2BEDA8(a1, a2, a4, v33);
      if (v34 == v33)
      {
        (*(*v34 + 32))(v34);
      }

      else if (v34)
      {
        (*(*v34 + 40))();
      }
    }
  }
}

void sub_43B07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a13)
  {
    *(a12 + 8) = a13;
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_43B0C0(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v13 = a5;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v9 = sub_F6D024(a1);
        v10 = sub_F6D024(a3);
        if (a2 >= v9 || a4 >= v10)
        {
          if (a2 < v9 == a4 < v10)
          {
            return a1;
          }
        }

        else
        {
          v11 = sub_F6D17C(a1, a2);
          if (v11 == sub_F6D17C(a3, a4))
          {
            return a1;
          }
        }

        sub_F6D17C(a1, a2);
        if (sub_43F6F8(&v13))
        {
          break;
        }

        ++a2;
      }
    }

    else
    {
      while (a2 < sub_F6D024(a1))
      {
        sub_F6D17C(a1, a2);
        if (sub_43F6F8(&v13))
        {
          break;
        }

        ++a2;
      }
    }
  }

  else if (a3 && a4 < sub_F6D024(a3))
  {
    do
    {
      sub_F6D17C(0, a2);
      if (sub_43F6F8(&v13))
      {
        break;
      }

      ++a2;
    }

    while (a4 < sub_F6D024(a3));
  }

  return a1;
}

void sub_43B218(void ***a1, void *a2, uint64_t a3, void **a4)
{
  v8 = *a1;
  for (i = (*a1)[1]; i != *v8; i -= 64)
  {
    if (*(i - 4) != 1 || *(i - 4) != *a2 || *(i - 3) != a2[1])
    {
      goto LABEL_3;
    }

    v10 = *(i - 6);
    v11 = *(i - 5) - 1;
    if (v10)
    {
      v12 = sub_F6D024(*(i - 6));
      v13 = v11 < v12;
      v14 = *a4;
      if (!*a4)
      {
        if (v11 >= v12)
        {
          break;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v14 = *a4;
      if (!*a4)
      {
        break;
      }

      v13 = 0;
    }

    v15 = a4[1];
    v16 = sub_F6D024(v14);
    if (v13 && v15 < v16)
    {
      v17 = sub_F6D17C(v10, v11);
      if (v17 == sub_F6D17C(*a4, a4[1]))
      {
        break;
      }
    }

    else if (v13 == v15 < v16)
    {
      break;
    }

LABEL_19:
    v19 = *(i - 6);
    v18 = *(i - 5);
    if (v19)
    {
      v20 = sub_F6D024(*(i - 6));
      v21 = v18 < v20;
      v22 = *a4;
      if (!*a4)
      {
        if (v18 >= v20)
        {
          goto LABEL_28;
        }

        goto LABEL_3;
      }
    }

    else
    {
      v22 = *a4;
      if (!*a4)
      {
        goto LABEL_28;
      }

      v21 = 0;
    }

    v23 = a4[1];
    v24 = sub_F6D024(v22);
    if (v21 && v23 < v24)
    {
      v25 = sub_F6D17C(v19, v18);
      if (v25 == sub_F6D17C(*a4, a4[1]))
      {
LABEL_28:
        ++*(i - 5);
        break;
      }
    }

    else if (((v21 ^ (v23 < v24)) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_3:
    v8 = *a1;
  }

  v26 = *a1;
  v27 = **a1;
  if (i == v27)
  {
    v28 = *a4;
    v29 = a4[1] + 1;
    v30 = v26[1];
    v31 = v26[2];
    if (v30 >= v31)
    {
      v33 = v30 - v27;
      v34 = (v30 - v27) >> 6;
      v35 = v34 + 1;
      if ((v34 + 1) >> 58)
      {
        sub_1794();
      }

      v36 = v31 - v27;
      if (v36 >> 5 > v35)
      {
        v35 = v36 >> 5;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFC0)
      {
        v37 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        if (!(v37 >> 58))
        {
          operator new();
        }

        sub_1808();
      }

      v38 = v34 << 6;
      *v38 = *a4;
      *(v38 + 16) = v28;
      *(v38 + 24) = v29;
      *(v38 + 32) = *a2;
      *(v38 + 48) = 1;
      *(v38 + 56) = a3;
      v32 = (v34 << 6) + 64;
      memcpy(0, v27, v33);
      *v26 = 0;
      v26[1] = v32;
      v26[2] = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v30 = *a4;
      *(v30 + 2) = v28;
      *(v30 + 3) = v29;
      *(v30 + 2) = *a2;
      *(v30 + 12) = 1;
      *(v30 + 7) = a3;
      v32 = (v30 + 64);
    }

    v26[1] = v32;
  }
}

void sub_43B4DC(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2BD358(*a1);

  sub_43B534(a1, a2, a3);
}

void sub_43B534(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a1 + 25) == 1)
  {
    v23 = 0;
    v24 = a3;
    v21 = 0;
    v22 = 0;
    sub_3E3878(a2, &v11);
    v3 = v11;
    v4 = v12;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    if (v14 != v13)
    {
      if (((v14 - v13) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (v16 != v15)
    {
      if (((v16 - v15) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v18 != v17)
    {
      if (((v18 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v20 != v19)
    {
      if (((v20 - v19) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }
  }
}

void sub_43C348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{
  v25 = *(v23 - 128);
  if (v25)
  {
    *(v23 - 120) = v25;
    operator delete(v25);
    v26 = a23;
    v27 = *a23;
    if (!*a23)
    {
LABEL_4:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v26 = a23;
    v27 = *a23;
    if (!*a23)
    {
      goto LABEL_4;
    }
  }

  sub_21E1984(v26, v27);
  goto LABEL_4;
}

void sub_43C71C(uint64_t *a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (*a1)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 184);
    v10 = v9 - v8;
    if (v9 - v8 >= 24)
    {
      v11 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v12 = a2 & 0xFF000000000000;
      if (v10 != 24)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        if (v12)
        {
          v14 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v14 = v11 + 1;
        }

        do
        {
          v15 = 6 * (v13 >> 2);
          _X17 = &v8[v15];
          __asm { PRFM            #0, [X17] }

          v22 = &v8[6 * (v13 >> 1)];
          _X16 = &v22[v15];
          __asm { PRFM            #0, [X16] }

          v25 = (*v22 << 32) | (*(v22 + 2) << 16);
          if (!*(v22 + 6))
          {
            ++v25;
          }

          if (v25 >= v14)
          {
            v26 = 0;
          }

          else
          {
            v26 = v13 >> 1;
          }

          v8 += 6 * v26;
          v13 -= v13 >> 1;
        }

        while (v13 > 1);
      }

      v27 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!*(v8 + 6))
      {
        ++v27;
      }

      if (!v12)
      {
        ++v11;
      }

      v8 += 6 * (v27 < v11);
    }

    if (v8 != v9)
    {
      v28 = BYTE6(a2);
      v29 = WORD2(a2);
      v32 = 1 << a3;
      v30 = v8 + 4;
      do
      {
        v31 = v30 - 2;
        if (*(v30 - 4) != a2 || *(v30 - 6) != v29 || *(v30 - 10) != v28)
        {
          break;
        }

        if ((*(v30 - 1) & v32) != 0 && sub_38F51C(*(*a1 + 152) + 464 * *v30, 0) && (sub_38F7F0(*(*a1 + 152) + 464 * *v30) & 1) == 0)
        {
          operator new();
        }

        v30 += 3;
      }

      while (v31 + 3 != *(v5 + 184));
    }

    if (a1[4])
    {
      v33[0] = off_266A6A0;
      v34 = v33;
      sub_2BEDA8(a1, a2, a4, v33);
      if (v34 == v33)
      {
        (*(*v34 + 32))(v34);
      }

      else if (v34)
      {
        (*(*v34 + 40))();
      }
    }
  }
}

void sub_43CACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a13)
  {
    *(a12 + 8) = a13;
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_43CB10(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v41 = a3;
  v7 = **a1;
  v8 = (*a1)[1];
  if (v8 == v7)
  {
LABEL_39:
    if (v8 == **v6)
    {
      goto LABEL_40;
    }

    return;
  }

  while (1)
  {
    if (*(v8 - 16) != 1 || *(v8 - 32) != *v5 || *(v8 - 24) != *(v5 + 8))
    {
      goto LABEL_5;
    }

    v40 = *(v8 - 88);
    v10 = *(v8 - 80);
    v9 = *(v8 - 72);
    if (v9 != v10)
    {
      if (((v9 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_56;
    }

    v12 = *(v8 - 56);
    v11 = *(v8 - 48);
    if (v11 != v12)
    {
      if (((v11 - v12) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v42 = *(v8 - 104);
    v43 = v40;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    if (v40)
    {
      v13 = v40 - 1;
      v14 = (16 * v40 - 16);
      v15 = 16 * v40;
      do
      {
        if (v42)
        {
          v17 = sub_4D1DC0(v42);
          v18 = *(&v42 + 1) < v17;
          v19 = *v15;
          if (!*v15)
          {
            if (*(&v42 + 1) < v17)
            {
              break;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v19 = *v15;
          if (!*v15)
          {
            goto LABEL_18;
          }

          v18 = 0;
        }

        v20 = *(v15 + 8);
        v21 = sub_4D1DC0(v19);
        if (v20 < v21 && v18)
        {
          v23 = sub_4D1F50(v42, *(&v42 + 1));
          if (v23 != sub_4D1F50(*v15, *(v15 + 8)))
          {
            break;
          }
        }

        else if ((v18 ^ (v20 < v21)))
        {
          break;
        }

LABEL_18:
        v43 = v13;
        v16 = *v14--;
        v42 = v16;
        --v13;
        v15 -= 16;
      }

      while (v13 != -1);
    }

    --*(&v42 + 1);
    v4 = a4;
    v6 = a1;
    if (*(a4 + 48) == *(a4 + 56))
    {
      v5 = a2;
      goto LABEL_39;
    }

    v24 = *(v8 - 104);
    v43 = *(v8 - 88);
    v42 = v24;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v26 = *(v8 - 80);
    v25 = *(v8 - 72);
    if (v25 != v26)
    {
      if (((v25 - v26) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_56;
    }

    v28 = *(v8 - 56);
    v27 = *(v8 - 48);
    if (v27 != v28)
    {
      if (((v27 - v28) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v5 = a2;
    if (*(a4 + 48) == *(a4 + 56))
    {
      break;
    }

    v7 = **a1;
LABEL_5:
    v8 -= 176;
    if (v8 == v7)
    {
      goto LABEL_39;
    }
  }

  sub_3E3AF4((v8 - 104));
  if (v8 == **a1)
  {
LABEL_40:
    v42 = *v4;
    v29 = *(v4 + 24);
    v43 = *(v4 + 16);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v30 = *(v4 + 32);
    if (v30 != v29)
    {
      if (((v30 - v29) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_56:
      sub_1794();
    }

    v47 = 0;
    v48 = 0;
    v49 = 0;
    v32 = *(a4 + 48);
    v31 = *(a4 + 56);
    if (v31 != v32)
    {
      if (((v31 - v32) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_3E3AF4(&v42);
    v33 = *v6;
    v34 = v33[1];
    if (v34 >= v33[2])
    {
      v35 = sub_440210(v33, a4, &v42, v5, &v41);
    }

    else
    {
      sub_3E4DAC(v33[1], a4);
      sub_3E4DAC(v34 + 72, &v42);
      *(v34 + 144) = *v5;
      *(v34 + 160) = 1;
      *(v34 + 168) = a3;
      v35 = v34 + 176;
      v33[1] = v34 + 176;
    }

    v33[1] = v35;
    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }
  }
}

void sub_43D1D0(_Unwind_Exception *a1)
{
  sub_3DB674(v2);
  *(v1 + 8) = v2;
  sub_3DB674((v3 - 160));
  _Unwind_Resume(a1);
}

void sub_43D1F0(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_3DB674((v3 - 160));
  _Unwind_Resume(a1);
}

void sub_43D208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_43D290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3DB674((v7 - 160));
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

void sub_43D2AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2BD358(*a1);

  sub_43D304(a1, a2, v6, a3);
}

void sub_43D304(void **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (*(a1 + 25) != 1)
  {
    return;
  }

  v5 = a2;
  v71 = 0;
  v72[0] = a4;
  v69 = 0;
  v70 = 0;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v54 = *(a2 + 16);
  *&v68 = *a2;
  *(&v68 + 1) = v7;
  v53 = v8;
LABEL_4:
  if (v6)
  {
    v9 = sub_4D1DC0(v6);
    v10 = v7 >= v9;
    v11 = v7 < v9;
    if (!v54)
    {
      if (v10)
      {
        goto LABEL_67;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v54)
    {
      goto LABEL_67;
    }

    v11 = 0;
  }

  v12 = sub_4D1DC0(v54);
  if (v8 < v12 && v11)
  {
    v14 = sub_4D1F50(v68, *(&v68 + 1));
    if (v14 == sub_4D1F50(v54, v8))
    {
      goto LABEL_67;
    }

    goto LABEL_18;
  }

  if ((v11 ^ (v8 < v12)))
  {
LABEL_18:
    v15 = *a1;
    v16 = sub_4D1F50(v68, *(&v68 + 1));
    sub_43D914(v15, *(v16 + 32) & 0xFFFFFFFFFFFFFFLL, a3, &v66);
    v18 = v66;
    v17 = v67;
    if (v66 != v67)
    {
      v19 = *(a4 + 8);
LABEL_20:
      while (2)
      {
        for (i = *a4; i != v19; i += 16)
        {
          if (!i[12] && *(i + 4) == *v18 && *(i + 5) == v18[1] && *(&v68 + 1) < *(i + 3))
          {
            v18 += 2;
            if (v18 != v17)
            {
              goto LABEL_20;
            }

            goto LABEL_44;
          }
        }

        v21 = sub_43DD08(v68, *(&v68 + 1) + 1, *(v5 + 16), *(v5 + 24), v18);
        v23 = *(a4 + 8);
        v24 = *(a4 + 16);
        if (v23 >= v24)
        {
          v26 = *a4;
          v27 = v23 - *a4;
          v28 = v27 >> 6;
          v29 = (v27 >> 6) + 1;
          if (v29 >> 58)
          {
            sub_1794();
          }

          v30 = v24 - v26;
          if (v30 >> 5 > v29)
          {
            v29 = v30 >> 5;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFC0)
          {
            v31 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            if (!(v31 >> 58))
            {
              operator new();
            }

            sub_1808();
          }

          v32 = v28 << 6;
          *v32 = v68;
          *(v32 + 16) = v21;
          *(v32 + 24) = v22;
          *(v32 + 32) = *v18;
          *(v32 + 48) = 0;
          *(v32 + 56) = 0;
          v19 = (v28 << 6) + 64;
          v33 = (v32 - (v27 >> 6 << 6));
          memcpy(v33, v26, v27);
          *a4 = v33;
          *(a4 + 8) = v19;
          *(a4 + 16) = 0;
          if (v26)
          {
            operator delete(v26);
          }

          v5 = a2;
          *(a4 + 8) = v19;
          v18 += 2;
          if (v18 != v17)
          {
            continue;
          }
        }

        else
        {
          *v23 = v68;
          *(v23 + 16) = v21;
          *(v23 + 24) = v22;
          v25 = *v18;
          v18 += 2;
          *(v23 + 32) = v25;
          *(v23 + 48) = 0;
          *(v23 + 56) = 0;
          v19 = v23 + 64;
          *(a4 + 8) = v23 + 64;
          if (v18 != v17)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_44:
    v8 = v53;
    if ((*(a1 + 29) & 1) == 0)
    {
      goto LABEL_65;
    }

    v34 = a1[1];
    v35 = sub_4D1F50(v68, *(&v68 + 1));
    sub_2B7F14(v34, *(v35 + 32) | (*(v35 + 36) << 32), &v69);
    v36 = a1[1];
    v37 = sub_4D1F50(v68, *(&v68 + 1));
    sub_2B79D0(v36, *(v37 + 32) | (*(v37 + 36) << 32), v63);
    v38 = v69;
    v39 = v70;
    while (1)
    {
      if (v38 == v39)
      {
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        v5 = a2;
        v8 = v53;
LABEL_65:
        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        v6 = v68;
        v7 = ++*(&v68 + 1);
        goto LABEL_4;
      }

      v40 = *v38;
      sub_2BCEB4(*a1, *v38, 0, a3, &__p);
      v42 = __p;
      v41 = v62;
      if (__p != v62)
      {
        do
        {
          sub_43A3A0(v72, v42, v42[4], &v68);
          v42 += 6;
        }

        while (v42 != v41);
      }

      sub_2BD5C4(*a1, v40, 0, a3, &v59);
      v44 = v59;
      v43 = v60;
      if (v59 == v60)
      {
        break;
      }

      do
      {
        v45 = *(v44 + 16);
        v46 = *(**v44 + 704 * *(v44 + 8) + 488);
        v47 = *(sub_4D1F50(v68, *(&v68 + 1)) + 32);
        *&v48 = sub_31BF20(v63, v58).n128_u64[0];
        v52 = sub_38FFE0((v46 + 176 * v45), v47 & 0xFFFFFFFFFFFFFFLL, v58, v48, v49, v50, v51);
        if (v58[0])
        {
          v58[1] = v58[0];
          operator delete(v58[0]);
        }

        if (v52)
        {
          sub_43A3A0(v72, v44, *(v44 + 16), &v68);
        }

        v44 += 24;
      }

      while (v44 != v43);
      v44 = v59;
      if (v59)
      {
        goto LABEL_52;
      }

LABEL_53:
      if (__p)
      {
        v62 = __p;
        operator delete(__p);
      }

      ++v38;
    }

    if (!v59)
    {
      goto LABEL_53;
    }

LABEL_52:
    v60 = v44;
    operator delete(v44);
    goto LABEL_53;
  }

LABEL_67:
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_43D7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v33 = *(v31 - 120);
    if (!v33)
    {
LABEL_3:
      v34 = *v30;
      if (!*v30)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v33 = *(v31 - 120);
    if (!v33)
    {
      goto LABEL_3;
    }
  }

  *(v31 - 112) = v33;
  operator delete(v33);
  v34 = *v30;
  if (!*v30)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v30 + 8) = v34;
  operator delete(v34);
  _Unwind_Resume(exception_object);
}

void sub_43D914(uint64_t *a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (*a1)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 184);
    v10 = v9 - v8;
    if (v9 - v8 >= 24)
    {
      v11 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v12 = a2 & 0xFF000000000000;
      if (v10 != 24)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        if (v12)
        {
          v14 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v14 = v11 + 1;
        }

        do
        {
          v15 = 6 * (v13 >> 2);
          _X17 = &v8[v15];
          __asm { PRFM            #0, [X17] }

          v22 = &v8[6 * (v13 >> 1)];
          _X16 = &v22[v15];
          __asm { PRFM            #0, [X16] }

          v25 = (*v22 << 32) | (*(v22 + 2) << 16);
          if (!*(v22 + 6))
          {
            ++v25;
          }

          if (v25 >= v14)
          {
            v26 = 0;
          }

          else
          {
            v26 = v13 >> 1;
          }

          v8 += 6 * v26;
          v13 -= v13 >> 1;
        }

        while (v13 > 1);
      }

      v27 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!*(v8 + 6))
      {
        ++v27;
      }

      if (!v12)
      {
        ++v11;
      }

      v8 += 6 * (v27 < v11);
    }

    if (v8 != v9)
    {
      v28 = BYTE6(a2);
      v29 = WORD2(a2);
      v32 = 1 << a3;
      v30 = v8 + 4;
      do
      {
        v31 = v30 - 2;
        if (*(v30 - 4) != a2 || *(v30 - 6) != v29 || *(v30 - 10) != v28)
        {
          break;
        }

        if ((*(v30 - 1) & v32) != 0 && sub_38F51C(*(*a1 + 152) + 464 * *v30, 0) && (sub_38F7F0(*(*a1 + 152) + 464 * *v30) & 1) == 0)
        {
          operator new();
        }

        v30 += 3;
      }

      while (v31 + 3 != *(v5 + 184));
    }

    if (a1[4])
    {
      v33[0] = off_266A720;
      v34 = v33;
      sub_2BEDA8(a1, a2, a4, v33);
      if (v34 == v33)
      {
        (*(*v34 + 32))(v34);
      }

      else if (v34)
      {
        (*(*v34 + 40))();
      }
    }
  }
}

void sub_43DCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a13)
  {
    *(a12 + 8) = a13;
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_43DD08(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v13 = a5;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v9 = sub_4D1DC0(a1);
        v10 = sub_4D1DC0(a3);
        if (a2 >= v9 || a4 >= v10)
        {
          if (a2 < v9 == a4 < v10)
          {
            return a1;
          }
        }

        else
        {
          v11 = sub_4D1F50(a1, a2);
          if (v11 == sub_4D1F50(a3, a4))
          {
            return a1;
          }
        }

        sub_4D1F50(a1, a2);
        if (sub_4403D4(&v13))
        {
          break;
        }

        ++a2;
      }
    }

    else
    {
      while (a2 < sub_4D1DC0(a1))
      {
        sub_4D1F50(a1, a2);
        if (sub_4403D4(&v13))
        {
          break;
        }

        ++a2;
      }
    }
  }

  else if (a3 && a4 < sub_4D1DC0(a3))
  {
    do
    {
      sub_4D1F50(0, a2);
      if (sub_4403D4(&v13))
      {
        break;
      }

      ++a2;
    }

    while (a4 < sub_4D1DC0(a3));
  }

  return a1;
}

void sub_43DE60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *a1;
  v3 = *(a1 + 24);
  v20 = *(a1 + 16);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v4 = *(a1 + 32);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 72);
  v7 = *(a1 + 96);
  v12 = *(a1 + 88);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v8 = *(a1 + 104);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v10 = *(a1 + 120);
  v9 = *(a1 + 128);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_443588(&v19, &v11, a2);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_43E094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_43E0B0(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

void sub_43E0DC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2BD358(*a1);

  sub_43E134(a1, a2, v6, a3);
}

void sub_43E134(void **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (*(a1 + 25) != 1)
  {
    return;
  }

  v5 = a2;
  v74 = 0;
  v75[0] = a4;
  v72 = 0;
  v73 = 0;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v56 = *(a2 + 16);
  *&v71 = *a2;
  *(&v71 + 1) = v7;
  v55 = v8;
LABEL_4:
  if (v6)
  {
    v9 = sub_4D1DC0(v6);
    v10 = v7 >= v9;
    v11 = v7 < v9;
    if (!v56)
    {
      if (v10)
      {
        goto LABEL_67;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v56)
    {
      goto LABEL_67;
    }

    v11 = 0;
  }

  v12 = sub_4D1DC0(v56);
  if (v55 < v12 && v11)
  {
    v14 = sub_4D1F50(v71, *(&v71 + 1));
    if (v14 == sub_4D1F50(v56, v55))
    {
      goto LABEL_67;
    }

    goto LABEL_18;
  }

  if ((v11 ^ (v55 < v12)))
  {
LABEL_18:
    v15 = *a1;
    v16 = sub_4D1F50(v71, *(&v71 + 1));
    sub_43E76C(v15, (((*(v16 + 36) & 0x20000000) << 19) | (*(v16 + 36) << 32) | *(v16 + 32)) ^ 0x1000000000000, a3, &v69);
    v18 = v69;
    v17 = v70;
    if (v69 != v70)
    {
      v19 = *(a4 + 8);
LABEL_20:
      while (2)
      {
        for (i = *a4; i != v19; i += 16)
        {
          if (!i[12] && *(i + 4) == *v18 && *(i + 5) == v18[1] && *(&v71 + 1) < *(i + 3))
          {
            v18 += 2;
            if (v18 != v17)
            {
              goto LABEL_20;
            }

            goto LABEL_44;
          }
        }

        v21 = sub_43EB5C(v71, *(&v71 + 1) + 1, *(v5 + 16), *(v5 + 24), v18);
        v23 = *(a4 + 8);
        v24 = *(a4 + 16);
        if (v23 >= v24)
        {
          v26 = *a4;
          v27 = v23 - *a4;
          v28 = v27 >> 6;
          v29 = (v27 >> 6) + 1;
          if (v29 >> 58)
          {
            sub_1794();
          }

          v30 = v24 - v26;
          if (v30 >> 5 > v29)
          {
            v29 = v30 >> 5;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFC0)
          {
            v31 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            if (!(v31 >> 58))
            {
              operator new();
            }

            sub_1808();
          }

          v32 = v28 << 6;
          *v32 = v71;
          *(v32 + 16) = v21;
          *(v32 + 24) = v22;
          *(v32 + 32) = *v18;
          *(v32 + 48) = 0;
          *(v32 + 56) = 0;
          v19 = (v28 << 6) + 64;
          v33 = (v32 - (v27 >> 6 << 6));
          memcpy(v33, v26, v27);
          *a4 = v33;
          *(a4 + 8) = v19;
          *(a4 + 16) = 0;
          if (v26)
          {
            operator delete(v26);
          }

          v5 = a2;
          *(a4 + 8) = v19;
          v18 += 2;
          if (v18 != v17)
          {
            continue;
          }
        }

        else
        {
          *v23 = v71;
          *(v23 + 16) = v21;
          *(v23 + 24) = v22;
          v25 = *v18;
          v18 += 2;
          *(v23 + 32) = v25;
          *(v23 + 48) = 0;
          *(v23 + 56) = 0;
          v19 = v23 + 64;
          *(a4 + 8) = v23 + 64;
          if (v18 != v17)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_44:
    if ((*(a1 + 29) & 1) == 0)
    {
      goto LABEL_65;
    }

    v34 = a1[1];
    v35 = sub_4D1F50(v71, *(&v71 + 1));
    sub_2B7F14(v34, *(v35 + 32) | ((*(v35 + 36) & 0x1FFFFFFF) << 32), &v72);
    v36 = a1[1];
    v37 = sub_4D1F50(v71, *(&v71 + 1));
    sub_2B79D0(v36, *(v37 + 32) | ((*(v37 + 36) & 0x1FFFFFFF) << 32), v66);
    v39 = v72;
    v38 = v73;
    for (j = v73; ; v38 = j)
    {
      if (v39 == v38)
      {
        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        v5 = a2;
LABEL_65:
        if (v69)
        {
          v70 = v69;
          operator delete(v69);
        }

        v6 = v71;
        v7 = ++*(&v71 + 1);
        goto LABEL_4;
      }

      v40 = *v39;
      sub_2BCEB4(*a1, *v39, 2, a3, &__p);
      v42 = __p;
      v41 = v65;
      if (__p != v65)
      {
        do
        {
          sub_43A3A0(v75, v42, v42[4], &v71);
          v42 += 6;
        }

        while (v42 != v41);
      }

      sub_2BD5C4(*a1, v40, 2, a3, &v62);
      v44 = v62;
      v43 = v63;
      if (v62 == v63)
      {
        break;
      }

      do
      {
        v45 = *(v44 + 16);
        v46 = *(**v44 + 704 * *(v44 + 8) + 488);
        v47 = sub_4D1F50(v71, *(&v71 + 1));
        v48 = *(v47 + 32);
        v49 = *(v47 + 36);
        *&v50 = sub_31BF20(v66, v61).n128_u64[0];
        v54 = sub_38FFE0((v46 + 176 * v45), (((v49 & 0x20000000) << 19) | (v49 << 32) | v48) ^ 0x1000000000000, v61, v50, v51, v52, v53);
        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        if (v54)
        {
          sub_43A3A0(v75, v44, *(v44 + 16), &v71);
        }

        v44 += 24;
      }

      while (v44 != v43);
      v44 = v62;
      if (v62)
      {
        goto LABEL_52;
      }

LABEL_53:
      if (__p)
      {
        v65 = __p;
        operator delete(__p);
      }

      ++v39;
    }

    if (!v62)
    {
      goto LABEL_53;
    }

LABEL_52:
    v63 = v44;
    operator delete(v44);
    goto LABEL_53;
  }

LABEL_67:
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }
}

void sub_43E624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v33 = *(v31 - 120);
    if (!v33)
    {
LABEL_3:
      v34 = *v30;
      if (!*v30)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v33 = *(v31 - 120);
    if (!v33)
    {
      goto LABEL_3;
    }
  }

  *(v31 - 112) = v33;
  operator delete(v33);
  v34 = *v30;
  if (!*v30)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v30 + 8) = v34;
  operator delete(v34);
  _Unwind_Resume(exception_object);
}

void sub_43E76C(uint64_t *a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (*a1)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 184);
    v10 = v9 - v8;
    if (v9 - v8 >= 24)
    {
      v11 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v12 = a2 & 0xFF000000000000;
      if (v10 != 24)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        if (v12)
        {
          v14 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v14 = v11 + 1;
        }

        do
        {
          v15 = 6 * (v13 >> 2);
          _X17 = &v8[v15];
          __asm { PRFM            #0, [X17] }

          v22 = &v8[6 * (v13 >> 1)];
          _X16 = &v22[v15];
          __asm { PRFM            #0, [X16] }

          v25 = (*v22 << 32) | (*(v22 + 2) << 16);
          if (!*(v22 + 6))
          {
            ++v25;
          }

          if (v25 >= v14)
          {
            v26 = 0;
          }

          else
          {
            v26 = v13 >> 1;
          }

          v8 += 6 * v26;
          v13 -= v13 >> 1;
        }

        while (v13 > 1);
      }

      v27 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!*(v8 + 6))
      {
        ++v27;
      }

      if (!v12)
      {
        ++v11;
      }

      v8 += 6 * (v27 < v11);
    }

    if (v8 != v9)
    {
      v28 = BYTE6(a2);
      v29 = WORD2(a2);
      v32 = 1 << a3;
      v30 = v8 + 4;
      do
      {
        v31 = v30 - 2;
        if (*(v30 - 4) != a2 || *(v30 - 6) != v29 || *(v30 - 10) != v28)
        {
          break;
        }

        if ((*(v30 - 1) & v32) != 0 && sub_38F51C(*(*a1 + 152) + 464 * *v30, 2) && (sub_38F7F0(*(*a1 + 152) + 464 * *v30) & 1) == 0)
        {
          operator new();
        }

        v30 += 3;
      }

      while (v31 + 3 != *(v5 + 184));
    }

    if (a1[4])
    {
      v33[0] = off_266A7A0;
      v34 = v33;
      sub_2BEDA8(a1, a2, a4, v33);
      if (v34 == v33)
      {
        (*(*v34 + 32))(v34);
      }

      else if (v34)
      {
        (*(*v34 + 40))();
      }
    }
  }
}