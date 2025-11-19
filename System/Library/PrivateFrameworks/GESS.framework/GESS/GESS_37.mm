void sub_24BF7E3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p != v12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF7E414(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (**a5)
  {
    v18 = byte_24BFF57DD[**a5];
    sub_24BF716D8(v7, &v18);
  }

  v14 = sub_24BF7E528(v7, *a5[1], *a5[2], *a5[3], *a5[4], a5[5]);
  v15 = *a5[6];
  if (v15 >= 1)
  {
    v16 = a5[7];
    do
    {
      sub_24BF716D8(v14, v16);
      --v15;
    }

    while (v15);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v14, v11 - v13, a2 + 11);
  }

  return v14;
}

uint64_t sub_24BF7E528(uint64_t a1, char *a2, int a3, int a4, int a5, uint64_t a6)
{
  v17[63] = *MEMORY[0x277D85DE8];
  v8 = *(a6 + 47);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a6 + 32);
  }

  if (v8)
  {
    v14 = &unk_285F9EFD0;
    __p = v17;
    v16 = xmmword_24BFF4C90;
    sub_24BF7E104(&v14, a2, a3, a4, a5);
    sub_24BF743F8(a6, a1, __p, a4);
    v10 = sub_24BF7174C(__p + a4, __p + v16, a1);
    if (__p != v17)
    {
      operator delete(__p);
    }

    v11 = *MEMORY[0x277D85DE8];
    return v10;
  }

  else
  {
    v13 = *MEMORY[0x277D85DE8];

    return sub_24BF7E104(a1, a2, a3, a4, a5);
  }
}

void sub_24BF7E670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p != v10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF7E68C(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (**a5)
  {
    v17 = byte_24BFF57DD[**a5];
    sub_24BF716D8(v7, &v17);
  }

  sub_24BF716D8(v7, a5[1]);
  if (*a5[2] == 1)
  {
    sub_24BF716D8(v7, a5[3]);
    v14 = *a5[4];
    if (v14 >= 1)
    {
      v15 = a5[1];
      do
      {
        sub_24BF716D8(v7, v15);
        --v14;
      }

      while (v14);
    }

    sub_24BF71780(v7, *a5[5], (*a5[5] + *a5[6]));
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

uint64_t sub_24BF7E7C0(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, double a5)
{
  v7 = a1;
  v14 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_4;
  }

  v13 = 10;
  v12[0] = a5;
  if ((sub_24BF720A4(a1, v12, &v10, a4) & 1) == 0)
  {
    a2 = v10;
    a3 = v11;
LABEL_4:
    v7 = sub_24BF7E86C(v7, a2, a3, a4, a5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_24BF7E86C(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, double a5)
{
  v28[63] = *MEMORY[0x277D85DE8];
  v21 = a2;
  v22 = a3;
  v8 = sub_24BF7BAD4(&v21);
  v20[0] = v8;
  v9 = HIDWORD(v8) & 0xFFFF00FF;
  v10 = HIDWORD(v8) & 0xFFFF00FF | (((*(&v22 + 1) >> 4) & 7) << 8);
  v20[1] = v10;
  if ((*&a5 & 0x8000000000000000) != 0)
  {
    v10 = v9 | 0x100;
    v20[1] = v9 | 0x100;
    a5 = -a5;
  }

  else if (((16 * *(&v22 + 1)) & 0x700) == 0x100)
  {
    v20[1] = HIDWORD(v8) & 0xFFFF00FF;
    v10 = HIDWORD(v8) & 0xFFFF00FF;
  }

  if (a5 < INFINITY || a5 > INFINITY)
  {
    if ((BYTE1(v22) & 0xF) == 4 && (v10 & 0xFF00) != 0)
    {
      LOBYTE(v25) = byte_24BFF57DD[BYTE1(v10)];
      sub_24BF716D8(a1, &v25);
      v10 &= 0xFFFF00FF;
      v20[1] = v10;
      if (v21)
      {
        LODWORD(v21) = v21 - 1;
      }
    }

    v25 = &unk_285F9EFD0;
    __p = v28;
    v27 = xmmword_24BFF4C90;
    if (v10 == 3)
    {
      if ((v10 & 0xFF00) != 0)
      {
        LOBYTE(v23) = byte_24BFF57DD[BYTE1(v10)];
        sub_24BF716D8(&v25, &v23);
      }

      sub_24BF7BBD0(SHIDWORD(v21), *v20, &v25, a5);
      v23 = __p;
      v24 = v27;
      v12 = sub_24BF7C62C(a1, &v21, v27, v27, &v23);
    }

    else
    {
      v13 = HIDWORD(v21);
      if (v22)
      {
        v14 = SHIDWORD(v21) <= -1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v13 = 6;
      }

      if (v10 == 1)
      {
        if (v13 == 0x7FFFFFFF)
        {
          sub_24BF713F4("number is too big");
        }

        v15 = v13 + 1;
      }

      else
      {
        if (v13)
        {
          v16 = 1;
        }

        else
        {
          v16 = v10 == 2;
        }

        if (v16)
        {
          v15 = v13;
        }

        else
        {
          v15 = 1;
        }
      }

      v17 = sub_24BF7BE5C(v15, *v20, &v25, a5);
      v20[0] = v15;
      v23 = __p;
      v24 = __PAIR64__(v17, v27);
      v12 = sub_24BF7DB50(a1, &v23, &v21, *v20, a4);
    }

    v11 = v12;
    if (__p != v28)
    {
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_24BF75530(a1, 0, v21, v22, v20);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_24BF7EAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p != v16)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF7EB2C(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, double a5)
{
  v7 = a1;
  v14 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_4;
  }

  v13 = 11;
  v12[0] = a5;
  if ((sub_24BF720A4(a1, v12, &v10, a4) & 1) == 0)
  {
    a2 = v10;
    a3 = v11;
LABEL_4:
    v7 = sub_24BF7EBD8(v7, a2, a3, a4, a5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_24BF7EBD8(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, double a5)
{
  v28[63] = *MEMORY[0x277D85DE8];
  v21 = a2;
  v22 = a3;
  v8 = sub_24BF7BAD4(&v21);
  v20[0] = v8;
  v9 = HIDWORD(v8) & 0xFFFF00FF;
  v10 = HIDWORD(v8) & 0xFFFF00FF | (((*(&v22 + 1) >> 4) & 7) << 8);
  v20[1] = v10;
  if ((*&a5 & 0x8000000000000000) != 0)
  {
    v10 = v9 | 0x100;
    v20[1] = v9 | 0x100;
    a5 = -a5;
  }

  else if (((16 * *(&v22 + 1)) & 0x700) == 0x100)
  {
    v20[1] = HIDWORD(v8) & 0xFFFF00FF;
    v10 = HIDWORD(v8) & 0xFFFF00FF;
  }

  if (a5 < INFINITY || a5 > INFINITY)
  {
    if ((BYTE1(v22) & 0xF) == 4 && (v10 & 0xFF00) != 0)
    {
      LOBYTE(v25) = byte_24BFF57DD[BYTE1(v10)];
      sub_24BF716D8(a1, &v25);
      v10 &= 0xFFFF00FF;
      v20[1] = v10;
      if (v21)
      {
        LODWORD(v21) = v21 - 1;
      }
    }

    v25 = &unk_285F9EFD0;
    __p = v28;
    v27 = xmmword_24BFF4C90;
    if (v10 == 3)
    {
      if ((v10 & 0xFF00) != 0)
      {
        LOBYTE(v23) = byte_24BFF57DD[BYTE1(v10)];
        sub_24BF716D8(&v25, &v23);
      }

      sub_24BF7BBD0(SHIDWORD(v21), *v20, &v25, a5);
      v23 = __p;
      v24 = v27;
      v12 = sub_24BF7C62C(a1, &v21, v27, v27, &v23);
    }

    else
    {
      v13 = HIDWORD(v21);
      if (v22)
      {
        v14 = SHIDWORD(v21) <= -1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v13 = 6;
      }

      if (v10 == 1)
      {
        if (v13 == 0x7FFFFFFF)
        {
          sub_24BF713F4("number is too big");
        }

        v15 = v13 + 1;
      }

      else
      {
        if (v13)
        {
          v16 = 1;
        }

        else
        {
          v16 = v10 == 2;
        }

        if (v16)
        {
          v15 = v13;
        }

        else
        {
          v15 = 1;
        }
      }

      v17 = sub_24BF7BE5C(v15, *v20, &v25, a5);
      v20[0] = v15;
      v23 = __p;
      v24 = __PAIR64__(v17, v27);
      v12 = sub_24BF7DB50(a1, &v23, &v21, *v20, a4);
    }

    v11 = v12;
    if (__p != v28)
    {
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_24BF75530(a1, 0, v21, v22, v20);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_24BF7EE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p != v16)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF7EE98(uint64_t a1, char *__s, uint64_t a3)
{
  if (*(a3 + 8) == 17)
  {

    return sub_24BF77FB4(a1, __s, a3);
  }

  else
  {
    if (!__s)
    {
      sub_24BF713F4("string pointer is null");
    }

    v7 = strlen(__s);

    return sub_24BF7EF38(a1, __s, v7, a3);
  }
}

uint64_t sub_24BF7EF38(uint64_t a1, unsigned __int8 *__src, unint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 4);
  v9 = a3;
  if ((v8 & 0x80000000) == 0)
  {
    v9 = a3;
    if (a3 > v8)
    {
      v18 = a3;
      v19 = v8;
      v13 = __src;
      v14 = &v19;
      v15 = &v18;
      sub_24BF7F198(__src, a3, &v13);
      v9 = v18;
    }
  }

  v10 = *(a4 + 8);
  if (*a4)
  {
    if (v10 == 18)
    {
      v11 = sub_24BF7F030(0, __src, a3);
    }

    else
    {
      v13 = 0;
      sub_24BF7F834(__src, v9, &v13);
      v11 = v13;
    }
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v13) = v10 == 18;
  v14 = __src;
  v15 = a3;
  v16 = __src;
  v17 = v9;
  return sub_24BF7F0B8(a1, a4, v9, v11, &v13);
}

unsigned __int8 *sub_24BF7F030(uint64_t a1, unsigned __int8 *__src, uint64_t a3)
{
  v3 = __src;
  v4 = (a1 + 1);
  v5 = &__src[a3];
  do
  {
    v8 = 0;
    v9 = 0;
    v7 = v5;
    sub_24BF7F5F0(v3, v5 - v3, &v7);
    if (v3 != v7)
    {
      v4 = &v7[v4 - v3];
    }

    v3 = v8;
    if (!v8)
    {
      break;
    }

    v4 = sub_24BF7F448(v4, &v7);
  }

  while (v3 != v5);
  return v4 + 1;
}

uint64_t sub_24BF7F0B8(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF5232[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (*a5 == 1)
  {
    v7 = sub_24BF7FBB8(v7, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    sub_24BF71780(v7, *(a5 + 24), (*(a5 + 24) + *(a5 + 32)));
  }

  if (v11 == v13)
  {
    return v7;
  }

  return sub_24BF73C54(v7, v11 - v13, a2 + 11);
}

unsigned __int8 *sub_24BF7F198(unsigned __int8 *__src, unint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = __src;
  if (a2 >= 4)
  {
    v6 = __src;
    while (v6 < &__src[a2 - 3])
    {
      v7 = *v6;
      v8 = v7 >> 3;
      v9 = byte_24BFF5D80[v7 >> 3];
      v10 = dword_24BFF5D30[v9];
      v11 = v6[1];
      v12 = v6[2];
      v13 = dword_24BFF5D58[v9];
      v14 = v6[3];
      v15 = dword_24BFF5D44[v9];
      v16 = dword_24BFF5D6C[v9];
      v17 = *v4;
      if (*v4)
      {
        *v4 = v17 - 1;
      }

      else
      {
        *v5 = &v6[-v3];
      }

      v18 = (((v10 & v7) << 18) | ((v11 & 0x3F) << 12) | ((v12 & 0x3F) << 6) | v14 & 0x3F) >> v13;
      v19 = &v6[v9 + ((0x80FF0000 >> v8) & 1)];
      if ((((v12 >> 4) & 0xC | (v11 >> 2) & 0x30 | (v14 >> 6) | ((v18 < v15) << 6) | ((v18 > 0x10FFFF) << 8) | (((v18 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> v16)
      {
        ++v6;
      }

      else
      {
        v6 = v19;
      }

      if (!v17)
      {
        return __src;
      }
    }
  }

  v20 = &__src[a2] - v6;
  if (&__src[a2] != v6)
  {
    *(__dst + 3) = 0;
    __dst[0] = 0;
    __src = memcpy(__dst, v6, v20);
    v21 = *v4 - 1;
    v22 = __dst;
    while (v21 != -1)
    {
      v23 = *v22;
      v24 = v23 >> 3;
      v25 = byte_24BFF5D80[v23 >> 3];
      v26 = dword_24BFF5D6C[v25];
      v27 = dword_24BFF5D44[v25];
      v28 = dword_24BFF5D58[v25];
      v29 = v22[3];
      v30 = v22[2];
      v31 = v22[1];
      v32 = dword_24BFF5D30[v25];
      *v4 = v21;
      LODWORD(v23) = (((v32 & v23) << 18) | ((v31 & 0x3F) << 12) | ((v30 & 0x3F) << 6) | v29 & 0x3F) >> v28;
      v33 = &v22[((0x80FF0000 >> v24) & 1) + v25];
      if ((((v30 >> 4) & 0xC | (v31 >> 2) & 0x30 | (v29 >> 6) | ((v23 < v27) << 6) | ((v23 > 0x10FFFF) << 8) | (((v23 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> v26)
      {
        v34 = v22 + 1;
      }

      else
      {
        v34 = v33;
      }

      v6 += v34 - v22;
      __src = (v34 - __dst);
      --v21;
      v22 = v34;
      if (v34 - __dst >= v20)
      {
        return __src;
      }
    }

    *v5 = &v6[-v3];
  }

  return __src;
}

uint64_t sub_24BF7F448(uint64_t result, unsigned __int8 **a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 4);
  v3 = v2 > 0x27 || ((1 << v2) & 0x8400002600) == 0;
  if (!v3 || v2 == 92)
  {
    result += 2;
  }

  else
  {
    if (v2 <= 0xFF)
    {
      v5 = v16;
      v6 = 1;
      do
      {
        v15[v6--] = a0123456789abcd_0[v2 & 0xF];
        v7 = v2 > 0xF;
        v2 >>= 4;
      }

      while (v7);
LABEL_19:
      result = v5 + result - v15 + 2;
      goto LABEL_6;
    }

    if (!HIWORD(v2))
    {
      v5 = &v16[2];
      v8 = 3;
      do
      {
        v15[v8--] = a0123456789abcd_0[v2 & 0xF];
        v7 = v2 > 0xF;
        v2 >>= 4;
      }

      while (v7);
      goto LABEL_19;
    }

    if (HIWORD(v2) <= 0x10u)
    {
      v5 = &v17;
      v9 = 7;
      do
      {
        v15[v9--] = a0123456789abcd_0[v2 & 0xF];
        v7 = v2 > 0xF;
        v2 >>= 4;
      }

      while (v7);
      goto LABEL_19;
    }

    v10 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      v12 = 4 * v10;
      do
      {
        v13 = *v10;
        v14 = 1;
        do
        {
          v15[v14--] = a0123456789abcd_0[v13 & 0xF];
          v7 = v13 > 0xF;
          v13 >>= 4;
        }

        while (v7);
        ++v10;
      }

      while (v10 != v11);
      result = 4 * v11 + result - v12;
    }
  }

LABEL_6:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *sub_24BF7F5F0(unsigned __int8 *__src, unint64_t a2, uint64_t a3)
{
  v4 = __src;
  v10 = a3;
  v5 = __src;
  if (a2 >= 4)
  {
    v6 = &__src[a2 - 3];
    v5 = __src;
    while (v5 < v6)
    {
      __src = sub_24BF7F6BC(&v10, v5, v5);
      v5 = __src;
      if (!__src)
      {
        return __src;
      }
    }
  }

  v7 = &v4[a2] - v5;
  if (v7)
  {
    memset(v9, 0, 7);
    memcpy(v9, v5, v7);
    v8 = v9;
    do
    {
      __src = sub_24BF7F6BC(&v10, v8, v5);
      if (!__src)
      {
        break;
      }

      v5 += __src - v8;
      v8 = __src;
    }

    while (__src - v9 < v7);
  }

  return __src;
}

unsigned __int8 *sub_24BF7F6BC(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = byte_24BFF5D80[v5 >> 3];
  v7 = (0x80FF0000 >> (*a2 >> 3)) & 1;
  v9 = a2 + 1;
  v8 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = (((dword_24BFF5D30[v6] & v5) << 18) | ((v8 & 0x3F) << 12) | ((v10 & 0x3F) << 6) | v11 & 0x3F) >> dword_24BFF5D58[v6];
  v13 = (((v10 >> 4) & 0xC | (v8 >> 2) & 0x30 | (v11 >> 6) | ((v12 < dword_24BFF5D44[v6]) << 6) | ((HIWORD(v12) > 0x10u) << 8) | (((v12 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> dword_24BFF5D6C[v6];
  if (v13)
  {
    v14 = -1;
  }

  else
  {
    v14 = v12;
  }

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7 + v6;
  }

  if (v14 < 0x20 || v14 == 34 || v14 == 92 || v14 == 127 || (sub_24BF73F4C(v14) & 1) == 0)
  {
    result = 0;
    v17 = *a1;
    *v17 = a3;
    *(v17 + 8) = a3 + v15;
    *(v17 + 16) = v14;
  }

  else if (v13)
  {
    return v9;
  }

  else
  {
    return &a2[v7 + v6];
  }

  return result;
}

uint64_t sub_24BF7F834(uint64_t __src, unint64_t a2, void *a3)
{
  v29 = a3;
  v3 = __src;
  if (a2 >= 4)
  {
    v26 = __src;
    v27 = a2;
    v4 = __src + a2 - 3;
    v3 = __src;
    while (v3 < v4)
    {
      v5 = *v3;
      v6 = byte_24BFF5D80[v5 >> 3];
      v7 = v3[1];
      v8 = v3[2];
      v9 = v3[3];
      v10 = (((dword_24BFF5D30[v6] & v5) << 18) | ((v7 & 0x3F) << 12) | ((v8 & 0x3F) << 6) | v9 & 0x3F) >> dword_24BFF5D58[v6];
      v11 = (((v8 >> 4) & 0xC | (v7 >> 2) & 0x30 | (v9 >> 6) | ((v10 < dword_24BFF5D44[v6]) << 6) | ((v10 > 0x10FFFF) << 8) | (((v10 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> dword_24BFF5D6C[v6];
      if (v11)
      {
        v12 = -1;
      }

      else
      {
        v12 = v10;
      }

      if (v11)
      {
        v13 = v3 + 1;
      }

      else
      {
        v13 = &v3[((0x80FF0000 >> (*v3 >> 3)) & 1) + v6];
      }

      __src = sub_24BF7FAE4(&v29, v12);
      v3 = v13;
      if ((__src & 1) == 0)
      {
        return __src;
      }
    }

    __src = v26;
    a2 = v27;
  }

  v14 = __src + a2 - v3;
  if ((__src + a2) != v3)
  {
    *(__dst + 3) = 0;
    __dst[0] = 0;
    memcpy(__dst, v3, v14);
    v15 = __dst;
    do
    {
      v16 = *v15;
      v17 = byte_24BFF5D80[v16 >> 3];
      v18 = (0x80FF0000 >> (*v15 >> 3)) & 1;
      v19 = v15[1];
      v20 = v15[2];
      v21 = v15[3];
      v22 = (((dword_24BFF5D30[v17] & v16) << 18) | ((v19 & 0x3F) << 12) | ((v20 & 0x3F) << 6) | v21 & 0x3F) >> dword_24BFF5D58[v17];
      v23 = (((v20 >> 4) & 0xC | (v19 >> 2) & 0x30 | (v21 >> 6) | ((v22 < dword_24BFF5D44[v17]) << 6) | ((v22 > 0x10FFFF) << 8) | (((v22 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> dword_24BFF5D6C[v17];
      if (v23)
      {
        v24 = -1;
      }

      else
      {
        v24 = v22;
      }

      __src = sub_24BF7FAE4(&v29, v24);
      if (!__src)
      {
        break;
      }

      v25 = &v15[v18 + v17];
      if (v23)
      {
        v25 = v15 + 1;
      }

      v3 += v25 - v15;
      v15 = v25;
    }

    while (v25 - __dst < v14);
  }

  return __src;
}

uint64_t sub_24BF7FAE4(void **a1, unsigned int a2)
{
  if (a2 >> 8 < 0x11)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
    if (a2 >> 5 >= 0x8B && a2 - 9001 >= 2)
    {
      v3 = a2 == 12351 || (a2 - 11904) >> 4 >= 0x765;
      v4 = !v3;
      v5 = vdupq_n_s32(a2);
      v6 = vaddq_s32(v5, xmmword_24BFF4CE0);
      v5.i32[2] = a2 & 0xFFFEFFFE;
      v2 = 2;
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_24BFF4D00, v6), vcgtq_u32(xmmword_24BFF4CF0, vaddq_s32(v5, xmmword_24BFF4CD0))))) & 1) == 0)
      {
        v7 = 1;
        if (a2 >> 8 == 505)
        {
          v7 = 2;
        }

        if (!v4)
        {
          v2 = v7;
        }
      }
    }
  }

  **a1 += v2;
  return 1;
}

uint64_t sub_24BF7FBB8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = a1;
  LOBYTE(v8) = 34;
  sub_24BF716D8(a1, &v8);
  v6 = &a2[a3];
  do
  {
    v9 = 0;
    v10 = 0;
    v8 = v6;
    sub_24BF7F5F0(a2, v6 - a2, &v8);
    sub_24BF71780(v5, a2, v8);
    a2 = v9;
    if (!v9)
    {
      break;
    }

    v5 = sub_24BF73DA0(v5, &v8);
  }

  while (a2 != v6);
  LOBYTE(v8) = 34;
  sub_24BF716D8(v5, &v8);
  return v5;
}

uint64_t sub_24BF7FC64(uint64_t result)
{
  if (result <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = result;
  }

  qword_27F079050 = v1;
  return result;
}

void sub_24BF7FC78()
{
  if (__cxa_guard_acquire(&qword_27F079058))
  {
    v0 = std::thread::hardware_concurrency();
    sub_24BF7FC64(v0);

    __cxa_guard_release(&qword_27F079058);
  }
}

void sub_24BF7FCC4(uint64_t a1, std::mutex *a2)
{
  std::current_exception();
  std::exception_ptr::operator=(*(a1 + 16), &v4);
  std::exception_ptr::~exception_ptr(&v4);
  std::mutex::unlock(a2);
  __cxa_end_catch();
}

void sub_24BF7FD18(unsigned int a1)
{
  v49[20] = *MEMORY[0x277D85DE8];
  v42 = a1;
  v45[1] = xmmword_27916D2F0;
  v45[2] = unk_27916D300;
  v46 = 813;
  v44 = xmmword_27916D2D0;
  v45[0] = unk_27916D2E0;
  sub_24BF810A0(v41, &v44, 3);
  *&v44 = &v42;
  v1 = sub_24BF811C4(v41, &v42);
  sub_24BCE1268(&v44);
  v2 = sub_24BC95264(&v44, "METAL_FUNC void hadamard_radix_m(thread float *x) {", 51);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v43);
  std::ostream::put();
  std::ostream::flush();
  if (v42 == 1)
  {
    v4 = sub_24BC95264(&v44, "}", 1);
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v5 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v5->__vftable[2].~facet_0)(v5, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    std::stringbuf::str();
  }

  else
  {
    v6 = sub_24BC95264(&v44, "  float tmp[", 12);
    v7 = MEMORY[0x24C2543C0](v6, v42);
    v8 = sub_24BC95264(v7, "];", 2);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    v10 = v1[6];
    if (v10 >= 2)
    {
      v11 = v1[5];
      v12 = memchr((v11 + 1), 10, v10 - 1);
      if (v12)
      {
        v13 = &v12[-v11];
        if (&v12[-v11] != -1)
        {
          v14 = 0;
          v15 = 1;
          v16 = MEMORY[0x277D82680];
          do
          {
            v17 = sub_24BC95264(&v44, "  tmp[", 6);
            v18 = MEMORY[0x24C2543C0](v17, v14);
            sub_24BC95264(v18, "] = ", 4);
            v19 = v1[6];
            if (v19 < v15)
            {
              sub_24BC8E244("string_view::substr");
            }

            v20 = v15;
            v21 = v19 - v15;
            if (v21 >= &v13[-v15])
            {
              v22 = &v13[-v15];
            }

            else
            {
              v22 = v21;
            }

            if (v22)
            {
              v23 = 0;
              v24 = v1[5] + v20;
              do
              {
                v25 = sub_24BC95264(&v44, " ", 1);
                LOBYTE(v43.__locale_) = *(v24 + v23);
                v26 = sub_24BC95264(v25, &v43, 1);
                v27 = sub_24BC95264(v26, " x[", 3);
                v28 = MEMORY[0x24C2543C0](v27, v23);
                sub_24BC95264(v28, "]", 1);
                ++v23;
              }

              while (v22 != v23);
            }

            v29 = sub_24BC95264(&v44, ";", 1);
            std::ios_base::getloc((v29 + *(*v29 - 24)));
            v30 = std::locale::use_facet(&v43, v16);
            (v30->__vftable[2].~facet_0)(v30, 10);
            std::locale::~locale(&v43);
            std::ostream::put();
            std::ostream::flush();
            v15 = v13 + 1;
            v31 = v1[6];
            if (v31 <= v13 + 1)
            {
              break;
            }

            v32 = v1[5];
            v33 = memchr((v32 + v15), 10, v31 - v15);
            if (!v33)
            {
              break;
            }

            v13 = &v33[-v32];
            v14 = (v14 + 1);
          }

          while (&v33[-v32] != -1);
        }
      }
    }

    v34 = sub_24BC95264(&v44, "  for (int i = 0; i < ", 22);
    v35 = MEMORY[0x24C2543C0](v34, v42);
    v36 = sub_24BC95264(v35, "; i++) { x[i] = tmp[i]; }", 25);
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v37 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    v38 = sub_24BC95264(&v44, "}", 1);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    std::stringbuf::str();
  }

  *&v44 = *MEMORY[0x277D82828];
  *(&v45[-1] + *(v44 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v44 + 1) = MEMORY[0x277D82878] + 16;
  if (v48 < 0)
  {
    operator delete(__p);
  }

  *(&v44 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v45);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v49);
  sub_24BCC8A84(v41, v41[1]);
  v40 = *MEMORY[0x277D85DE8];
}

void sub_24BF8040C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, std::locale a14, char a15)
{
  std::locale::~locale(&a14);
  sub_24BCE1400(&a15);
  sub_24BCC8A84(&a10, a11);
  _Unwind_Resume(a1);
}

void sub_24BF80478(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v33 = 0uLL;
  v34 = 0;
  v6 = *v5;
  v7 = **v5;
  v8 = (*v5)[1];
  v9 = v8 - v7;
  if (((*v5)[21] & 2) == 0)
  {
    memset(__p, 0, 24);
    sub_24BCC9A1C(__p, v7, v8, v9 >> 2);
    v10 = (*v5)[7];
    v36 = 0;
    v37 = 0;
    v35 = 0;
    sub_24BE7E8D4();
  }

  v11 = v5[1];
  v31[2] = *v5;
  v32 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    if (!*(v32 + 8))
    {
      v24 = v6[18];
      if (v24)
      {
        if (!*(v24 + 8))
        {
          v31[0] = v6;
          v31[1] = v32;
          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
          sub_24BE7F46C(a3, v31);
          sub_24BE7F218(v31);
          v13 = sub_24BD1EEAC(v5, (v9 >> 2) - 1);
          v14 = sub_24BF80D6C(v13);
          v29 = HIDWORD(v14);
          v30 = v14;
          if (*(*v5 + 60) * v14 <= 0x8000)
          {
            if (v14 >= 16)
            {
              v15 = 16;
            }

            else
            {
              v15 = v14;
            }

            if (HIDWORD(v14) == 28 || v14 == 2)
            {
              v17 = 2;
            }

            else
            {
              v17 = 4;
            }

            v27 = v17;
            v28 = v15;
            sub_24BCE1268(__p);
            v18 = sub_24BC95264(__p, "hadamard_", 9);
            v19 = MEMORY[0x24C2543C0](v18, (v29 * v30));
            v20 = sub_24BC95264(v19, "_", 1);
            sub_24BFB7BD8(a3, &v35);
            if (v37 >= 0)
            {
              v21 = &v35;
            }

            else
            {
              v21 = v35;
            }

            if (v37 >= 0)
            {
              v22 = HIBYTE(v37);
            }

            else
            {
              v22 = v36;
            }

            sub_24BC95264(v20, v21, v22);
            if (SHIBYTE(v37) < 0)
            {
              operator delete(v35);
            }

            std::stringbuf::str();
            v23 = *(a1 + 12);
            sub_24BF55DE0();
            v38 = 0;
            operator new();
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "[hadamard] For n = m*2^k, 2^k > 8192 for FP32 or 2^k > 16384 for FP16/BF16 NYI");
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
        }
      }
    }
  }

  v12 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
  v39[0] = &off_285F93798;
  v39[1] = sub_24BE7E1F0;
  v39[3] = v39;
  sub_24BE7EE1C(a3, v12);
}

void sub_24BF80BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37)
{
  sub_24BE7F218(v37 - 240);
  sub_24BE7F218(v37 - 224);
  a26 = v37 - 208;
  sub_24BCC961C(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF80D6C(int a1)
{
  v1 = a1;
  v15 = *MEMORY[0x277D85DE8];
  if ((a1 ^ (a1 - 1)) <= a1 - 1)
  {
    v13[2] = xmmword_27916D2F0;
    v13[3] = unk_27916D300;
    v14 = 813;
    v13[0] = xmmword_27916D2D0;
    v13[1] = unk_27916D2E0;
    sub_24BF810A0(&v11, v13, 3);
    v3 = v11;
    if (v11 == v12)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v4 = *(v3 + 8);
      if (!(v1 % v4))
      {
        break;
      }

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
      if (v6 == v12)
      {
        goto LABEL_11;
      }
    }

    if (v4 == 1)
    {
LABEL_11:
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[hadamard] Only supports n = m*2^k where m in (1, 12, 20, 28).");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BCC8A84(&v11, v12[0]);
    v2 = v4 << 32;
    v1 /= v4;
  }

  else
  {
    v2 = 0x100000000;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2 | v1;
}

id sub_24BF80F1C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, float a5)
{
  v24 = a5;
  v9 = *a1;
  v10 = **(a1 + 8);
  sub_24BC836D4(&v22, &unk_24C0435AF);
  v20 = 0uLL;
  v21 = 0;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v11 = sub_24BF55AF4(v9, a4, v10, &v22, &v20, &__p);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v12 = v20;
  if (v20)
  {
    *(&v20 + 1) = v20;
    operator delete(v20);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  [**(a1 + 16) MTL:v11 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v12)];
  sub_24BF53508(*(a1 + 16), a2, 0, 0);
  v13 = sub_24BF535E8(*(a1 + 16), a3, 1, 0);
  [**(a1 + 16) MTL:&v24 :4 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(v13)];
  v14 = *(a1 + 16);
  v15 = **(a1 + 24);
  *&v22 = **(a1 + 32);
  *(&v22 + 1) = v15;
  v23 = 1;
  *&v20 = 1;
  *(&v20 + 1) = v15;
  v21 = 1;
  return sub_24BF53770(v14, &v22, &v20);
}

void sub_24BF81074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  sub_24BF81DF0(&__p, &a12, &a15);
  _Unwind_Resume(a1);
}

void *sub_24BF810A0(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_24BF81124(a1, v4, a2);
      a2 += 6;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_24BF81124(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_24BE18D08(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_24BF811C4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

__n128 sub_24BF8131C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F118;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BF8135C(uint64_t a1)
{
  sub_24BCE1268(&v34);
  sub_24BF7FD18(**(a1 + 8));
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v34, v2, v3);
  if ((v33 & 0x80u) == 0)
  {
    v5 = v32;
  }

  else
  {
    v5 = v32[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v6 = v33;
  }

  else
  {
    v6 = v32[1];
  }

  v7 = sub_24BC95264(v4, v5, v6);
  v8 = sub_24BFB7B2C();
  v9 = strlen(v8);
  sub_24BC95264(v7, v8, v9);
  v10 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v25, "hadamard_n");
  sub_24BF0BC74(*(**(a1 + 24) + 56) & 0xFFFFFFFFFFLL, v23);
  sub_24BF817F4(&v27, v25, v23, **(a1 + 32), **(a1 + 40), **(a1 + 48), &__p);
  if ((v31 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v31 & 0x80u) == 0)
  {
    v12 = v31;
  }

  else
  {
    v12 = v30;
  }

  sub_24BC95264(&v34, p_p, v12);
  if (v31 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  v13 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v19, "hadamard_m");
  sub_24BF0BC74(*(**(a1 + 24) + 56) & 0xFFFFFFFFFFLL, v17);
  sub_24BF817F4(&v21, v19, v17, **(a1 + 32), **(a1 + 8), **(a1 + 48), &__p);
  if ((v31 & 0x80u) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p;
  }

  if ((v31 & 0x80u) == 0)
  {
    v15 = v31;
  }

  else
  {
    v15 = v30;
  }

  sub_24BC95264(&v34, v14, v15);
  if (v31 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  std::stringbuf::str();
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  v34 = *MEMORY[0x277D82828];
  *(&v34 + *(v34 - 24)) = *(MEMORY[0x277D82828] + 24);
  v35 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](&v38);
}

void sub_24BF816B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  sub_24BCE1400(&a58);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF817A8(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F178))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF817F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v38[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v29);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_24BC95264(&v29, v15, v16);
  sub_24BC95264(v17, "<", 1);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  sub_24BC95264(&v29, v19, v20);
  sub_24BC95264(&v29, ", ", 2);
  MEMORY[0x24C2543C0](&v29, a4);
  sub_24BC95264(&v29, ", ", 2);
  MEMORY[0x24C2543C0](&v29, a5);
  sub_24BC95264(&v29, ", ", 2);
  MEMORY[0x24C2543C0](&v29, a6);
  sub_24BC95264(&v29, ">", 1);
  std::stringbuf::str();
  v21 = *(a1 + 23);
  v22 = *a1;
  if (v21 >= 0)
  {
    v22 = a1;
  }

  if (v21 < 0)
  {
    v21 = a1[1];
  }

  v23 = v28;
  v24 = v27[0];
  if (v28 >= 0)
  {
    v24 = v27;
  }

  if (v28 < 0)
  {
    v23 = v27[1];
  }

  v34[0] = v22;
  v34[1] = v21;
  v34[2] = v24;
  v34[3] = v23;
  v35 = &unk_285F9EFD0;
  __p = v38;
  v37 = xmmword_24BFF4C90;
  sub_24BF70F28(&v35, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v34, 0);
  sub_24BF7125C(&v35, a7);
  if (__p != v38)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v29 = *MEMORY[0x277D82828];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x277D82828] + 24);
  v30 = MEMORY[0x277D82878] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v33);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF81DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

uint64_t sub_24BF81E30@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v26);
  sub_24BCE1268(&v21);
  if (a2 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(a1 + 23);
      v8 = *a1;
      if (v7 >= 0)
      {
        v8 = a1;
      }

      if (v7 < 0)
      {
        v7 = a1[1];
      }

      v31[0] = v8;
      v31[1] = v7;
      v33 = 0;
      v32 = v6;
      v35 = 0;
      v34 = v6 + 20;
      *&v36 = &unk_285F9EFD0;
      *(&v36 + 1) = v38;
      v37 = xmmword_24BFF4C90;
      sub_24BF70F28(&v36, "const device {0} *idx{1} [[buffer({2})]],", 41, 285, v31, 0);
      sub_24BF7125C(&v36, &v18);
      if (*(&v36 + 1) != v38)
      {
        operator delete(*(&v36 + 1));
      }

      if ((v20 & 0x80u) == 0)
      {
        v9 = &v18;
      }

      else
      {
        v9 = v18;
      }

      if ((v20 & 0x80u) == 0)
      {
        v10 = v20;
      }

      else
      {
        v10 = v19;
      }

      sub_24BC95264(&v26, v9, v10);
      if (v20 < 0)
      {
        operator delete(v18);
      }

      v18 = v6;
      v19 = 0;
      *&v36 = &unk_285F9EFD0;
      *(&v36 + 1) = v38;
      v37 = xmmword_24BFF4C90;
      sub_24BF70F28(&v36, "idx{0}", 6, 1, &v18, 0);
      sub_24BF7125C(&v36, v31);
      if (*(&v36 + 1) != v38)
      {
        operator delete(*(&v36 + 1));
      }

      if (v32 >= 0)
      {
        v11 = v31;
      }

      else
      {
        v11 = v31[0];
      }

      if (v32 >= 0)
      {
        v12 = HIBYTE(v32);
      }

      else
      {
        v12 = v31[1];
      }

      sub_24BC95264(&v21, v11, v12);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
      }

      if (v6 < a2 - 1)
      {
        sub_24BC95264(&v26, "\n", 1);
        sub_24BC95264(&v21, ",", 1);
      }

      ++v6;
    }

    while (a2 != v6);
  }

  std::stringbuf::str();
  std::stringbuf::str();
  *a3 = v36;
  *(a3 + 16) = v37;
  *(a3 + 24) = *v31;
  v13 = MEMORY[0x277D82828];
  *(a3 + 40) = v32;
  v21 = *v13;
  v14 = v21;
  v15 = v13[3];
  *(&v21 + *(v21 - 24)) = v15;
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](&v25);
  v26 = v14;
  *(&v26 + *(v14 - 24)) = v15;
  v27 = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v30);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF82294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  sub_24BCE1400(&a17);
  sub_24BCE1400(&a50);
  _Unwind_Resume(a1);
}

void sub_24BF8231C(uint64_t a1, void *a2, uint64_t a3)
{
  v11[67] = *MEMORY[0x277D85DE8];
  v8 = ((a2[1] - *a2) >> 4) - 1;
  if (v8 < 21)
  {
    v4 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
    v10[0] = &off_285F93798;
    v10[1] = sub_24BE7E1F0;
    v10[3] = v10;
    sub_24BE7EE1C(a3, v4);
  }

  sub_24BCE1268(v11);
  v5 = sub_24BC95264(v11, "[Gather::eval_gpu] Gathering with more than ", 44);
  v6 = MEMORY[0x24C2543C0](v5, 20);
  sub_24BC95264(v6, " index arrays not yet supported.", 32);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  MEMORY[0x24C254100](exception, v9);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF82AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v52 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a51);
      _Unwind_Resume(a1);
    }
  }

  else if (!v52)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v51);
  goto LABEL_6;
}

void sub_24BF82C50(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v50[63] = *MEMORY[0x277D85DE8];
  if (*(*a3 + 60) << 32 == 0x800000000)
  {
    sub_24BCE1268(&__src);
    v27 = sub_24BC95264(&__src, "[Scatter::eval_gpu] Does not support ", 37);
    v28 = *(*a3 + 56);
    LODWORD(__dst.__r_.__value_.__l.__data_) = v28;
    __dst.__r_.__value_.__s.__data_[4] = BYTE4(v28);
    sub_24BF031F4(v27, &__dst);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &__dst);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v5 = (*(a1 + 32) - *(a1 + 24)) >> 2;
  v45 = v5;
  if (v5 >= 21)
  {
    sub_24BCE1268(&__src);
    v30 = sub_24BC95264(&__src, "[Scatter::eval_gpu] Gathering with more than ", 45);
    v31 = MEMORY[0x24C2543C0](v30, 20);
    sub_24BC95264(v31, " index arrays not yet supported.", 32);
    v32 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x24C254100](v32, &__dst);
    __cxa_throw(v32, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v7 = **a2;
  if (*(v7 + 160) == 1)
  {
    v8 = 0;
  }

  else if ((*(v7 + 168) & 2) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  sub_24BF21C44(*a2, a3, v8);
  v9 = a2[1];
  v11 = *(v9 - 2);
  v10 = v9 - 2;
  if (*(v11 + 48))
  {
    v12 = *(a1 + 12);
    sub_24BF55DE0();
    if (v5)
    {
      v13 = (*a2)[2];
      v14 = (v13[1] - *v13) >> 2;
      v15 = v13[6];
      v16 = v14 < 2;
    }

    else
    {
      LODWORD(v14) = 0;
      v16 = 1;
      v15 = 1;
    }

    v44 = v14;
    v43 = v15;
    if (v16 || (v17 = *(*a3 + 48), v17 > v15))
    {
      v19 = 1;
    }

    else
    {
      v18 = v15 / v17;
      if (v18 > 4)
      {
        if (v18 > 0xF)
        {
          if (v18 > 0x1F)
          {
            v19 = 32;
          }

          else
          {
            v19 = 16;
          }
        }

        else
        {
          v19 = 8;
        }
      }

      else
      {
        v19 = 4;
      }
    }

    v42 = v19;
    if (v5)
    {
      sub_24BFB7BD8((*a2 + 2), v41);
    }

    else
    {
      sub_24BC836D4(v41, &unk_24C0435AF);
    }

    memset(v40, 0, sizeof(v40));
    v20 = *(a1 + 20);
    if (v20 < 5)
    {
      MEMORY[0x24C2541D0](v40, off_27916D318[v20]);
    }

    v21 = *v10;
    v39 = (*(*v10 + 168) & 2) != 0;
    v22 = v45;
    if (v45)
    {
      v22 = *((*a2)[2] + 52) != 0;
    }

    if (HIDWORD(*(*a3 + 48)))
    {
      v23 = 1;
    }

    else if (HIDWORD(*(v21 + 48)))
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v38 = v23;
    sub_24BFB7BD8(a3, &v35);
    v24 = "updc_false";
    if (v39)
    {
      v24 = "updc_true";
    }

    v34 = v24;
    v25 = "uint";
    if (v38)
    {
      v25 = "size_t";
    }

    *&v33 = v25;
    sub_24BF84118(&v35, v41, v40, &v45, &v34, &v42, &v33, &__dst);
    __src = &unk_285F9EFD0;
    __p = v50;
    v49 = xmmword_24BFF4C90;
    sub_24BF70F28(&__src, "scatter{0}{1}_{2}_{3}_{4}_nwork{5}_{6}", 38, 203169245, &__dst, 0);
    sub_24BF7125C(&__src, &v37);
    if (__p != v50)
    {
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&__dst, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v37;
    }

    *(&v49 + 1) = 0;
    operator new();
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_24BF83870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((v60 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a59);
      _Unwind_Resume(a1);
    }
  }

  else if (!v60)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v59);
  goto LABEL_6;
}

__n128 sub_24BF83AA8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F198;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_24BF83AE8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v36[63] = *MEMORY[0x277D85DE8];
  v4 = sub_24BFB7B5C();
  sub_24BC836D4(a2, v4);
  v5 = sub_24BFB7A60();
  std::string::append(a2, v5);
  sub_24BF0BC74(*(**(a1 + 8) + 56) & 0xFFFFFFFFFFLL, v30);
  if (**(a1 + 16))
  {
    sub_24BF0BC74(*(*(**(a1 + 24) + 16) + 56) & 0xFFFFFFFFFFLL, v28);
  }

  else
  {
    sub_24BC836D4(v28, "BOOL");
  }

  sub_24BF81E30(v28, **(a1 + 16), v24);
  sub_24BFB7BD8(*(a1 + 8), &v19);
  v6 = *(a1 + 32);
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  v10 = std::string::append(&v19, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v21 = v10->__r_.__value_.__r.__words[2];
  *v20 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 16);
  v13 = *(a1 + 40);
  if (**(a1 + 48))
  {
    v14 = "size_t";
  }

  else
  {
    v14 = "uint";
  }

  v18 = v14;
  sub_24BF83E70(v20, v30, v28, v12, v24, &v26, v13, &v18, v32);
  v33 = &unk_285F9EFD0;
  __p = v36;
  v35 = xmmword_24BFF4C90;
  sub_24BF70F28(&v33, "\n[[kernel]] void gather{0}_{3}_{6}_{7}(\n    const device {1}* src [[buffer(0)]],\n    device {1}* out [[buffer(1)]],\n    const constant int* src_shape [[buffer(2)]],\n    const constant size_t* src_strides [[buffer(3)]],\n    const constant size_t& src_ndim [[buffer(4)]],\n    const constant int* slice_sizes [[buffer(5)]],\n    const constant int* axes [[buffer(6)]],\n    const constant int* idx_shapes [[buffer(7)]],\n    const constant size_t* idx_strides [[buffer(8)]],\n    const constant BOOL* idx_contigs [[buffer(9)]],\n    const constant int& idx_ndim [[buffer(10)]],\n    {4}\n    uint3 index [[thread_position_in_grid]],\n    uint3 grid_dim [[threads_per_grid]]) {{\n  Indices<{2}, {3}> idxs{{\n    {{ {5} }}, idx_shapes, idx_strides, idx_contigs, idx_ndim}};\n\n  return gather_impl<{1}, {2}, {3}, {6}, {7}>(\n      src,\n      out,\n      src_shape,\n      src_strides,\n      src_ndim,\n      slice_sizes,\n      axes,\n      idxs,\n      index,\n      grid_dim);\n}}\n", 957, 3252493789, v32, 0);
  sub_24BF7125C(&v33, v22);
  if (__p != v36)
  {
    operator delete(__p);
  }

  if ((v23 & 0x80u) == 0)
  {
    v15 = v22;
  }

  else
  {
    v15 = v22[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v16 = v23;
  }

  else
  {
    v16 = v22[1];
  }

  std::string::append(a2, v15, v16);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24BF83D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_24BE8AAC8(&a28);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v63 + 23) < 0)
  {
    operator delete(*v63);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF83E24(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F1F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_24BF83E70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unsigned int *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unsigned int *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>)
{
  v9 = *(a1 + 23);
  v10 = *a1;
  v11 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  v12 = *a2;
  if (v9 < 0)
  {
    v9 = a1[1];
  }

  v13 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  if (v11 < 0)
  {
    v11 = a2[1];
  }

  v14 = *a3;
  if (v13 >= 0)
  {
    v14 = a3;
  }

  v15 = *(a5 + 23);
  if (v13 < 0)
  {
    v13 = a3[1];
  }

  v16 = *a5;
  if (v15 >= 0)
  {
    v16 = a5;
  }

  if (v15 < 0)
  {
    v15 = a5[1];
  }

  v17 = *(a6 + 23);
  result = *a6;
  if (v17 >= 0)
  {
    result = a6;
  }

  v19 = *a4;
  if (v17 < 0)
  {
    v17 = a6[1];
  }

  v20 = *a7;
  v21 = *a8;
  *a9 = v10;
  a9[1] = v9;
  a9[2] = v12;
  a9[3] = v11;
  a9[4] = v14;
  a9[5] = v13;
  a9[6] = v19;
  a9[7] = 0;
  a9[8] = v16;
  a9[9] = v15;
  a9[10] = result;
  a9[11] = v17;
  a9[12] = v20;
  a9[13] = 0;
  a9[14] = v21;
  a9[15] = 0;
  return result;
}

char *sub_24BF83F18(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      sub_24BC8E01C();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_24BC91F60(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t sub_24BF84118@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unsigned int *a4@<X3>, uint64_t *a5@<X4>, unsigned int *a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  v8 = *(a1 + 23);
  v9 = *a1;
  v10 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  v11 = *a2;
  if (v8 < 0)
  {
    v8 = a1[1];
  }

  v12 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  if (v10 < 0)
  {
    v10 = a2[1];
  }

  v13 = *a3;
  if (v12 >= 0)
  {
    v13 = a3;
  }

  v14 = *a4;
  if (v12 < 0)
  {
    v12 = a3[1];
  }

  v15 = *a5;
  v16 = *a6;
  result = *a7;
  *a8 = v9;
  a8[1] = v8;
  a8[2] = v11;
  a8[3] = v10;
  a8[4] = v13;
  a8[5] = v12;
  a8[6] = v14;
  a8[7] = 0;
  a8[8] = v15;
  a8[9] = 0;
  a8[10] = v16;
  a8[11] = 0;
  a8[12] = result;
  a8[13] = 0;
  return result;
}

__n128 sub_24BF84224(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F218;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void sub_24BF84274(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v57[63] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = sub_24BFB7B5C();
  sub_24BC836D4(a2, v5);
  v6 = sub_24BFB7A48();
  v7 = sub_24BFB7ACC();
  std::string::append(a2, v6);
  std::string::append(a2, v7);
  sub_24BF0BC74(*(**(a1 + 8) + 56) & 0xFFFFFFFFFFLL, v50);
  if (**(a1 + 16))
  {
    sub_24BF0BC74(*(*(**(a1 + 24) + 16) + 56) & 0xFFFFFFFFFFLL, v48);
  }

  else
  {
    sub_24BC836D4(v48, "BOOL");
  }

  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v8 = *(v4 + 20);
  if (v8 >= 5 || (MEMORY[0x24C2541D0](v46, off_27916D340[v8]), *(v4 + 20) != 4))
  {
    if (v47 >= 0)
    {
      v9 = v46;
    }

    else
    {
      v9 = v46[0];
    }

    if (v47 >= 0)
    {
      v10 = SHIBYTE(v47);
    }

    else
    {
      v10 = v46[1];
    }

    v11 = v51;
    v12 = v50;
    if (v51 < 0)
    {
      v12 = v50[0];
    }

    if (v51 < 0)
    {
      v11 = v50[1];
    }

    v42[0] = v12;
    v42[1] = v11;
    v54 = &unk_285F9EFD0;
    __p = v57;
    v56 = xmmword_24BFF4C90;
    sub_24BF70F28(&v54, v9, v10, 13, v42, 0);
    sub_24BF7125C(&v54, &v52);
    if (__p != v57)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }

    *v46 = v52;
    v47 = v53;
  }

  sub_24BF81E30(v48, **(a1 + 16), v42);
  sub_24BFB7BD8(*(a1 + 8), &v35);
  v13 = *(a1 + 40);
  v14 = *(v13 + 23);
  if (v14 >= 0)
  {
    v15 = *(a1 + 40);
  }

  else
  {
    v15 = *v13;
  }

  if (v14 >= 0)
  {
    v16 = *(v13 + 23);
  }

  else
  {
    v16 = *(v13 + 8);
  }

  v17 = std::string::append(&v35, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v36, "_");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = *(a1 + 48);
  v22 = *(v21 + 23);
  if (v22 >= 0)
  {
    v23 = *(a1 + 48);
  }

  else
  {
    v23 = *v21;
  }

  if (v22 >= 0)
  {
    v24 = *(v21 + 23);
  }

  else
  {
    v24 = *(v21 + 8);
  }

  v25 = std::string::append(&v37, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v39 = v25->__r_.__value_.__r.__words[2];
  *v38 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = *(a1 + 16);
  v28 = *(a1 + 56);
  v29 = *(a1 + 64);
  if (**(a1 + 72))
  {
    v30 = "size_t";
  }

  else
  {
    v30 = "uint";
  }

  v34 = v30;
  sub_24BF8480C(v38, v50, v48, v46, v27, v42, &v44, v28, &v52, v29, &v34);
  v54 = &unk_285F9EFD0;
  __p = v57;
  v56 = xmmword_24BFF4C90;
  sub_24BF70F28(&v54, "\n[[kernel]] void scatter{0}_{4}_updc_{7}_nwork{8}_{9}(\n    const device {1}* updates [[buffer(1)]],\n    device mlx_atomic<{1}>* out [[buffer(2)]],\n    const constant int* upd_shape [[buffer(3)]],\n    const constant size_t* upd_strides [[buffer(4)]],\n    const constant size_t& upd_ndim [[buffer(5)]],\n    const constant size_t& upd_size [[buffer(6)]],\n    const constant int* out_shape [[buffer(7)]],\n    const constant size_t* out_strides [[buffer(8)]],\n    const constant size_t& out_ndim [[buffer(9)]],\n    const constant int* axes [[buffer(10)]],\n    const constant int* idx_shapes [[buffer(11)]],\n    const constant size_t* idx_strides [[buffer(12)]],\n    const constant BOOL* idx_contigs [[buffer(13)]],\n    const constant int& idx_ndim [[buffer(14)]],\n    const constant size_t& idx_size [[buffer(15)]],\n    {5}\n    uint2 gid [[thread_position_in_grid]]) {{\n  Indices<{2}, {4}> idxs{{ {{ {6} }}, idx_shapes, idx_strides, idx_contigs, idx_ndim}};\n\n  return scatter_impl<{1}, {2}, {3}, {4}, {7}, {8}, {9}>(\n      updates,\n      out,\n      upd_shape,\n      upd_strides,\n      upd_ndim,\n      upd_size,\n      out_shape,\n      out_strides,\n      out_ndim,\n      axes,\n      idx_size,\n      idxs,\n      gid);\n}}\n", 1213, 0xC17DD1DDDDLL, &v52, 0);
  sub_24BF7125C(&v54, v40);
  if (__p != v57)
  {
    operator delete(__p);
  }

  if ((v41 & 0x80u) == 0)
  {
    v31 = v40;
  }

  else
  {
    v31 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v32 = v41;
  }

  else
  {
    v32 = v40[1];
  }

  std::string::append(a2, v31, v32);
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_24BF846A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (*(v53 + 23) < 0)
  {
    operator delete(*v53);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF847C0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F278))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_24BF8480C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unsigned int *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, unsigned __int8 *a8@<X7>, void *a9@<X8>, unsigned int *a10, uint64_t *a11)
{
  v11 = *(a1 + 23);
  v12 = *a1;
  v13 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  v14 = *a2;
  if (v11 < 0)
  {
    v11 = a1[1];
  }

  v15 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  if (v13 < 0)
  {
    v13 = a2[1];
  }

  v16 = *a3;
  if (v15 >= 0)
  {
    v16 = a3;
  }

  v17 = *(a4 + 23);
  if (v15 < 0)
  {
    v15 = a3[1];
  }

  v18 = *a4;
  if (v17 >= 0)
  {
    v18 = a4;
  }

  if (v17 < 0)
  {
    v17 = a4[1];
  }

  v19 = *(a6 + 23);
  result = *a6;
  if (v19 >= 0)
  {
    result = a6;
  }

  if (v19 < 0)
  {
    v19 = a6[1];
  }

  v21 = *(a7 + 23);
  v22 = *a7;
  if (v21 >= 0)
  {
    v22 = a7;
  }

  v23 = *a5;
  if (v21 < 0)
  {
    v21 = a7[1];
  }

  v24 = *a8;
  v25 = *a10;
  v26 = *a11;
  *a9 = v12;
  a9[1] = v11;
  a9[2] = v14;
  a9[3] = v13;
  a9[4] = v16;
  a9[5] = v15;
  a9[6] = v18;
  a9[7] = v17;
  a9[8] = v23;
  a9[9] = 0;
  a9[10] = result;
  a9[11] = v19;
  a9[12] = v22;
  a9[13] = v21;
  a9[14] = v24;
  a9[15] = 0;
  a9[16] = v25;
  a9[17] = 0;
  a9[18] = v26;
  a9[19] = 0;
  return result;
}

uint64_t sub_24BF848DC(uint64_t a1)
{
  sub_24BCE1268(&v3);
  (*(**(*a1 + 64) + 40))(*(*a1 + 64), &v3);
  std::stringbuf::str();
  v3 = *MEMORY[0x277D82828];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x277D82828] + 24);
  v4 = MEMORY[0x277D82878] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](&v7);
}

void sub_24BF84A50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

NS::Private::Selector *sub_24BF84A64(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v15[0] = &unk_285F9F298;
  v15[1] = a2;
  v16 = a3;
  v17 = v15;
  v5 = sub_24BF5563C(a1, a2, v15);
  sub_24BD12278(v15);
  sub_24BC836D4(v15, &unk_24C0435AF);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  __p = 0;
  v10 = 0;
  v11 = 0;
  v6 = sub_24BF55AF4(a1, a2, v5, v15, &v12, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_24BF84B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a13);
  _Unwind_Resume(a1);
}

void sub_24BF84BB4(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  if (v5 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v8 = v6 + size;
  if (size >= 1)
  {
    v9 = v6;
    do
    {
      v10 = memchr(v9, 95, size);
      if (!v10)
      {
        break;
      }

      if (*v10 == 95)
      {
        goto LABEL_13;
      }

      v9 = (v10 + 1);
      size = v8 - v9;
    }

    while (v8 - v9 > 0);
  }

  v10 = v8;
LABEL_13:
  if (v10 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - v6 + 1;
  }

  std::string::basic_string(&v12, a2, v11, 0xFFFFFFFFFFFFFFFFLL, v15);
  operator new();
}

void sub_24BF84D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF84DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5)
{
  sub_24BF88C00(v90, "ss", "binary_ss");
  sub_24BF88C00(v91, "vs", "binary_vs");
  sub_24BF88C00(v92, "sv", "binary_sv");
  sub_24BF88C00(v93, "vv", "binary_vv");
  sub_24BF88C54(v94, "vs2", "binary_vs2");
  sub_24BF88C54(v95, "sv2", "binary_sv2");
  sub_24BF88C54(v96, "vv2", "binary_vv2");
  sub_24BF88CA8(v97, "g1", "binary_g_nd1");
  sub_24BF88CFC(v98, "g2large", "binary_g_nd2");
  sub_24BF88CFC(v99, "g3large", "binary_g_nd3");
  sub_24BF0BC74(a2, __src);
  sub_24BF0BC74(a3, &v86);
  for (i = 0; i != 480; i += 48)
  {
    v10 = &v90[i];
    if (v90[i + 23] >= 0)
    {
      v11 = v90[i + 23];
    }

    else
    {
      v11 = *&v90[i + 8];
    }

    sub_24BC8E2D4(&v80, v11 + 1);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v80;
    }

    else
    {
      v12 = v80.__r_.__value_.__r.__words[0];
    }

    if (v11)
    {
      if (*(v10 + 23) >= 0)
      {
        v13 = &v90[i];
      }

      else
      {
        v13 = *v10;
      }

      memmove(v12, v13, v11);
    }

    *(&v12->__r_.__value_.__l.__data_ + v11) = 95;
    v14 = *(a1 + 23);
    if (v14 >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 23);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    v17 = std::string::append(&v80, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v82 = v17->__r_.__value_.__r.__words[2];
    *v81 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v90[i + 47] < 0)
    {
      sub_24BC8DE9C(__dst, v10[3], *&v90[i + 32]);
    }

    else
    {
      *__dst = *(v10 + 3);
      v79 = v10[5];
    }

    if (SHIBYTE(v89) < 0)
    {
      sub_24BC8DE9C(v76, __src[0], __src[1]);
    }

    else
    {
      *v76 = *__src;
      v77 = v89;
    }

    if (SHIBYTE(v87) < 0)
    {
      sub_24BC8DE9C(v74, v86, *(&v86 + 1));
    }

    else
    {
      *v74 = v86;
      v75 = v87;
    }

    if (*(a4 + 23) < 0)
    {
      sub_24BC8DE9C(v72, *a4, *(a4 + 8));
    }

    else
    {
      *v72 = *a4;
      v73 = *(a4 + 16);
    }

    sub_24BF85A90(v81, __dst, v76, v74, v72, &__p);
    if ((v85 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v85 & 0x80u) == 0)
    {
      v20 = v85;
    }

    else
    {
      v20 = v84;
    }

    std::string::append(a5, p_p, v20);
    if (v85 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72[0]);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74[0]);
    }

    if (SHIBYTE(v77) < 0)
    {
      operator delete(v76[0]);
    }

    if (SHIBYTE(v79) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[0]);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  std::operator+<char>();
  sub_24BC836D4(v68, "binary_g_nd2");
  if (SHIBYTE(v89) < 0)
  {
    sub_24BC8DE9C(v66, __src[0], __src[1]);
  }

  else
  {
    *v66 = *__src;
    v67 = v89;
  }

  if (SHIBYTE(v87) < 0)
  {
    sub_24BC8DE9C(v64, v86, *(&v86 + 1));
  }

  else
  {
    *v64 = v86;
    v65 = v87;
  }

  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(v62, *a4, *(a4 + 8));
  }

  else
  {
    *v62 = *a4;
    v63 = *(a4 + 16);
  }

  sub_24BF85DF0(&v70, v68, v66, v64, v62, "uint", &__p);
  if ((v85 & 0x80u) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p;
  }

  if ((v85 & 0x80u) == 0)
  {
    v22 = v85;
  }

  else
  {
    v22 = v84;
  }

  std::string::append(a5, v21, v22);
  if (v85 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  std::operator+<char>();
  sub_24BC836D4(v58, "binary_g_nd3");
  if (SHIBYTE(v89) < 0)
  {
    sub_24BC8DE9C(v56, __src[0], __src[1]);
  }

  else
  {
    *v56 = *__src;
    v57 = v89;
  }

  if (SHIBYTE(v87) < 0)
  {
    sub_24BC8DE9C(v54, v86, *(&v86 + 1));
  }

  else
  {
    *v54 = v86;
    v55 = v87;
  }

  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(v52, *a4, *(a4 + 8));
  }

  else
  {
    *v52 = *a4;
    v53 = *(a4 + 16);
  }

  sub_24BF85DF0(&v60, v58, v56, v54, v52, "uint", &__p);
  if ((v85 & 0x80u) == 0)
  {
    v23 = &__p;
  }

  else
  {
    v23 = __p;
  }

  if ((v85 & 0x80u) == 0)
  {
    v24 = v85;
  }

  else
  {
    v24 = v84;
  }

  std::string::append(a5, v23, v24);
  if (v85 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  std::operator+<char>();
  sub_24BC836D4(v48, "binary_g");
  if (SHIBYTE(v89) < 0)
  {
    sub_24BC8DE9C(v46, __src[0], __src[1]);
  }

  else
  {
    *v46 = *__src;
    v47 = v89;
  }

  if (SHIBYTE(v87) < 0)
  {
    sub_24BC8DE9C(v44, v86, *(&v86 + 1));
  }

  else
  {
    *v44 = v86;
    v45 = v87;
  }

  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(v42, *a4, *(a4 + 8));
  }

  else
  {
    *v42 = *a4;
    v43 = *(a4 + 16);
  }

  sub_24BF86180(&v50, v48, v46, v44, v42, 2, "uint", &__p);
  if ((v85 & 0x80u) == 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p;
  }

  if ((v85 & 0x80u) == 0)
  {
    v26 = v85;
  }

  else
  {
    v26 = v84;
  }

  std::string::append(a5, v25, v26);
  if (v85 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  std::operator+<char>();
  sub_24BC836D4(v38, "binary_g");
  if (SHIBYTE(v89) < 0)
  {
    sub_24BC8DE9C(v36, __src[0], __src[1]);
  }

  else
  {
    *v36 = *__src;
    v37 = v89;
  }

  if (SHIBYTE(v87) < 0)
  {
    sub_24BC8DE9C(v34, v86, *(&v86 + 1));
  }

  else
  {
    *v34 = v86;
    v35 = v87;
  }

  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(v32, *a4, *(a4 + 8));
  }

  else
  {
    *v32 = *a4;
    v33 = *(a4 + 16);
  }

  sub_24BF8653C(&v40, v38, v36, v34, v32, 4, &__p);
  if ((v85 & 0x80u) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p;
  }

  if ((v85 & 0x80u) == 0)
  {
    v28 = v85;
  }

  else
  {
    v28 = v84;
  }

  std::string::append(a5, v27, v28);
  if (v85 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(__src[0]);
  }

  v29 = 480;
  do
  {
    v30 = &v90[v29];
    if (v90[v29 - 1] < 0)
    {
      operator delete(*(v30 - 3));
    }

    if (*(v30 - 25) < 0)
    {
      operator delete(*(v30 - 6));
    }

    v29 -= 48;
  }

  while (v29);
}

void sub_24BF85748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  sub_24BF88D50(&STACK[0x348]);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF85A90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v42[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v33);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_24BC95264(&v33, v13, v14);
  sub_24BC95264(v15, "<", 1);
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
    v18 = *(a3 + 8);
  }

  sub_24BC95264(&v33, v17, v18);
  sub_24BC95264(&v33, ", ", 2);
  v19 = *(a4 + 23);
  if (v19 >= 0)
  {
    v20 = a4;
  }

  else
  {
    v20 = *a4;
  }

  if (v19 >= 0)
  {
    v21 = *(a4 + 23);
  }

  else
  {
    v21 = *(a4 + 8);
  }

  sub_24BC95264(&v33, v20, v21);
  sub_24BC95264(&v33, ", ", 2);
  v22 = *(a5 + 23);
  if (v22 >= 0)
  {
    v23 = a5;
  }

  else
  {
    v23 = *a5;
  }

  if (v22 >= 0)
  {
    v24 = *(a5 + 23);
  }

  else
  {
    v24 = *(a5 + 8);
  }

  sub_24BC95264(&v33, v23, v24);
  sub_24BC95264(&v33, ">", 1);
  std::stringbuf::str();
  v25 = *(a1 + 23);
  v26 = *a1;
  if (v25 >= 0)
  {
    v26 = a1;
  }

  if (v25 < 0)
  {
    v25 = a1[1];
  }

  v27 = v32;
  v28 = v31[0];
  if (v32 >= 0)
  {
    v28 = v31;
  }

  if (v32 < 0)
  {
    v27 = v31[1];
  }

  v38[0] = v26;
  v38[1] = v25;
  v38[2] = v28;
  v38[3] = v27;
  v39 = &unk_285F9EFD0;
  __p = v42;
  v41 = xmmword_24BFF4C90;
  sub_24BF70F28(&v39, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v38, 0);
  sub_24BF7125C(&v39, a6);
  if (__p != v42)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v33 = *MEMORY[0x277D82828];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x277D82828] + 24);
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v37);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF85DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const char *a6@<X5>, _BYTE *a7@<X8>)
{
  v45[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v36);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_24BC95264(&v36, v15, v16);
  sub_24BC95264(v17, "<", 1);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  sub_24BC95264(&v36, v19, v20);
  sub_24BC95264(&v36, ", ", 2);
  v21 = *(a4 + 23);
  if (v21 >= 0)
  {
    v22 = a4;
  }

  else
  {
    v22 = *a4;
  }

  if (v21 >= 0)
  {
    v23 = *(a4 + 23);
  }

  else
  {
    v23 = *(a4 + 8);
  }

  sub_24BC95264(&v36, v22, v23);
  sub_24BC95264(&v36, ", ", 2);
  v24 = *(a5 + 23);
  if (v24 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  if (v24 >= 0)
  {
    v26 = *(a5 + 23);
  }

  else
  {
    v26 = *(a5 + 8);
  }

  sub_24BC95264(&v36, v25, v26);
  sub_24BC95264(&v36, ", ", 2);
  v27 = strlen(a6);
  sub_24BC95264(&v36, a6, v27);
  sub_24BC95264(&v36, ">", 1);
  std::stringbuf::str();
  v28 = *(a1 + 23);
  v29 = *a1;
  if (v28 >= 0)
  {
    v29 = a1;
  }

  if (v28 < 0)
  {
    v28 = a1[1];
  }

  v30 = v35;
  v31 = v34[0];
  if (v35 >= 0)
  {
    v31 = v34;
  }

  if (v35 < 0)
  {
    v30 = v34[1];
  }

  v41[0] = v29;
  v41[1] = v28;
  v41[2] = v31;
  v41[3] = v30;
  v42 = &unk_285F9EFD0;
  __p = v45;
  v44 = xmmword_24BFF4C90;
  sub_24BF70F28(&v42, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v41, 0);
  sub_24BF7125C(&v42, a7);
  if (__p != v45)
  {
    operator delete(__p);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  v36 = *MEMORY[0x277D82828];
  *(&v36 + *(v36 - 24)) = *(MEMORY[0x277D82828] + 24);
  v37 = MEMORY[0x277D82878] + 16;
  if (v39 < 0)
  {
    operator delete(v38[7].__locale_);
  }

  v37 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v38);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v40);
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF86180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, _BYTE *a8@<X8>)
{
  v47[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v38);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  v19 = sub_24BC95264(&v38, v17, v18);
  sub_24BC95264(v19, "<", 1);
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
    v22 = *(a3 + 8);
  }

  sub_24BC95264(&v38, v21, v22);
  sub_24BC95264(&v38, ", ", 2);
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  sub_24BC95264(&v38, v24, v25);
  sub_24BC95264(&v38, ", ", 2);
  v26 = *(a5 + 23);
  if (v26 >= 0)
  {
    v27 = a5;
  }

  else
  {
    v27 = *a5;
  }

  if (v26 >= 0)
  {
    v28 = *(a5 + 23);
  }

  else
  {
    v28 = *(a5 + 8);
  }

  sub_24BC95264(&v38, v27, v28);
  sub_24BC95264(&v38, ", ", 2);
  MEMORY[0x24C2543C0](&v38, a6);
  sub_24BC95264(&v38, ", ", 2);
  v29 = strlen(a7);
  sub_24BC95264(&v38, a7, v29);
  sub_24BC95264(&v38, ">", 1);
  std::stringbuf::str();
  v30 = *(a1 + 23);
  v31 = *a1;
  if (v30 >= 0)
  {
    v31 = a1;
  }

  if (v30 < 0)
  {
    v30 = a1[1];
  }

  v32 = v37;
  v33 = v36[0];
  if (v37 >= 0)
  {
    v33 = v36;
  }

  if (v37 < 0)
  {
    v32 = v36[1];
  }

  v43[0] = v31;
  v43[1] = v30;
  v43[2] = v33;
  v43[3] = v32;
  v44 = &unk_285F9EFD0;
  __p = v47;
  v46 = xmmword_24BFF4C90;
  sub_24BF70F28(&v44, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v43, 0);
  sub_24BF7125C(&v44, a8);
  if (__p != v47)
  {
    operator delete(__p);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  v38 = *MEMORY[0x277D82828];
  *(&v38 + *(v38 - 24)) = *(MEMORY[0x277D82828] + 24);
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v42);
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF8653C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v44[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v35);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_24BC95264(&v35, v15, v16);
  sub_24BC95264(v17, "<", 1);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  sub_24BC95264(&v35, v19, v20);
  sub_24BC95264(&v35, ", ", 2);
  v21 = *(a4 + 23);
  if (v21 >= 0)
  {
    v22 = a4;
  }

  else
  {
    v22 = *a4;
  }

  if (v21 >= 0)
  {
    v23 = *(a4 + 23);
  }

  else
  {
    v23 = *(a4 + 8);
  }

  sub_24BC95264(&v35, v22, v23);
  sub_24BC95264(&v35, ", ", 2);
  v24 = *(a5 + 23);
  if (v24 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  if (v24 >= 0)
  {
    v26 = *(a5 + 23);
  }

  else
  {
    v26 = *(a5 + 8);
  }

  sub_24BC95264(&v35, v25, v26);
  sub_24BC95264(&v35, ", ", 2);
  MEMORY[0x24C2543C0](&v35, a6);
  sub_24BC95264(&v35, ">", 1);
  std::stringbuf::str();
  v27 = *(a1 + 23);
  v28 = *a1;
  if (v27 >= 0)
  {
    v28 = a1;
  }

  if (v27 < 0)
  {
    v27 = a1[1];
  }

  v29 = v34;
  v30 = v33[0];
  if (v34 >= 0)
  {
    v30 = v33;
  }

  if (v34 < 0)
  {
    v29 = v33[1];
  }

  v40[0] = v28;
  v40[1] = v27;
  v40[2] = v30;
  v40[3] = v29;
  v41 = &unk_285F9EFD0;
  __p = v44;
  v43 = xmmword_24BFF4C90;
  sub_24BF70F28(&v41, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v40, 0);
  sub_24BF7125C(&v41, a7);
  if (__p != v44)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v35 = *MEMORY[0x277D82828];
  *(&v35 + *(v35 - 24)) = *(MEMORY[0x277D82828] + 24);
  v36 = MEMORY[0x277D82878] + 16;
  if (v38 < 0)
  {
    operator delete(v37[7].__locale_);
  }

  v36 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v37);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v39);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF868C0(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  if (v5 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v8 = v6 + size;
  if (size >= 1)
  {
    v9 = v6;
    do
    {
      v10 = memchr(v9, 95, size);
      if (!v10)
      {
        break;
      }

      if (*v10 == 95)
      {
        goto LABEL_13;
      }

      v9 = (v10 + 1);
      size = v8 - v9;
    }

    while (v8 - v9 > 0);
  }

  v10 = v8;
LABEL_13:
  if (v10 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - v6 + 1;
  }

  std::string::basic_string(&v12, a2, v11, 0xFFFFFFFFFFFFFFFFLL, v15);
  operator new();
}

void sub_24BF86A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF86B00(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  if (v5 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v8 = v6 + size;
  if (size >= 1)
  {
    v9 = v6;
    do
    {
      v10 = memchr(v9, 95, size);
      if (!v10)
      {
        break;
      }

      if (*v10 == 95)
      {
        goto LABEL_13;
      }

      v9 = (v10 + 1);
      size = v8 - v9;
    }

    while (v8 - v9 > 0);
  }

  v10 = v8;
LABEL_13:
  if (v10 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - v6 + 1;
  }

  std::string::basic_string(&v12, a2, v11, 0xFFFFFFFFFFFFFFFFLL, v15);
  operator new();
}

void sub_24BF86CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF86D40(uint64_t a1, const std::string *a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v4 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = v5 + size;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      v9 = memchr(v8, 95, size);
      if (!v9)
      {
        break;
      }

      if (*v9 == 95)
      {
        goto LABEL_13;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 > 0);
  }

  v9 = v7;
LABEL_13:
  if (v9 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 - v5 + 1;
  }

  std::string::basic_string(&v11, a2, v10, 0xFFFFFFFFFFFFFFFFLL, v13);
  operator new();
}

void sub_24BF86F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF86F78(uint64_t a1, const std::string *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v6 = v4 + size;
  if (size >= 1)
  {
    v7 = v4;
    do
    {
      v8 = memchr(v7, 95, size);
      if (!v8)
      {
        break;
      }

      if (*v8 == 95)
      {
        goto LABEL_13;
      }

      v7 = (v8 + 1);
      size = v6 - v7;
    }

    while (v6 - v7 > 0);
  }

  v8 = v6;
LABEL_13:
  if (v8 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 - v4 + 1;
  }

  std::string::basic_string(&v10, a2, v9, 0xFFFFFFFFFFFFFFFFLL, v11);
  operator new();
}

void sub_24BF8713C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF871AC(uint64_t a1, const std::string *a2, char a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v4 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = v5 + size;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      v9 = memchr(v8, 95, size);
      if (!v9)
      {
        break;
      }

      if (*v9 == 95)
      {
        goto LABEL_13;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 > 0);
  }

  v9 = v7;
LABEL_13:
  if (v9 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 - v5 + 1;
  }

  std::string::basic_string(&v11, a2, v10, 0xFFFFFFFFFFFFFFFFLL, v13);
  operator new();
}

void sub_24BF87374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF873E4(uint64_t a1, const std::string *a2, char a3, char a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v13 = a4;
  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  if (v5 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v8 = v6 + size;
  if (size >= 1)
  {
    v9 = v6;
    do
    {
      v10 = memchr(v9, 95, size);
      if (!v10)
      {
        break;
      }

      if (*v10 == 95)
      {
        goto LABEL_13;
      }

      v9 = (v10 + 1);
      size = v8 - v9;
    }

    while (v8 - v9 > 0);
  }

  v10 = v8;
LABEL_13:
  if (v10 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - v6 + 1;
  }

  std::string::basic_string(&v12, a2, v11, 0xFFFFFFFFFFFFFFFFLL, v15);
  operator new();
}

void sub_24BF875CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF8763C(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v15 = a6;
  v16 = a5;
  v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if (v7 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v10 = v8 + size;
  if (size >= 1)
  {
    v11 = v8;
    do
    {
      v12 = memchr(v11, 95, size);
      if (!v12)
      {
        break;
      }

      if (*v12 == 95)
      {
        goto LABEL_13;
      }

      v11 = (v12 + 1);
      size = v10 - v11;
    }

    while (v10 - v11 > 0);
  }

  v12 = v10;
LABEL_13:
  if (v12 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 - v8 + 1;
  }

  std::string::basic_string(&v14, a2, v13, 0xFFFFFFFFFFFFFFFFLL, v17);
  operator new();
}

void sub_24BF87810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF87880(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v15 = a6;
  v16 = a5;
  v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if (v7 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v10 = v8 + size;
  if (size >= 1)
  {
    v11 = v8;
    do
    {
      v12 = memchr(v11, 95, size);
      if (!v12)
      {
        break;
      }

      if (*v12 == 95)
      {
        goto LABEL_13;
      }

      v11 = (v12 + 1);
      size = v10 - v11;
    }

    while (v10 - v11 > 0);
  }

  v12 = v10;
LABEL_13:
  if (v12 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 - v8 + 1;
  }

  std::string::basic_string(&v14, a2, v13, 0xFFFFFFFFFFFFFFFFLL, v17);
  operator new();
}

void sub_24BF87A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF87C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a13);
  _Unwind_Resume(a1);
}

void sub_24BF87C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a8;
  operator new();
}

void sub_24BF87DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a12);
  _Unwind_Resume(a1);
}

void sub_24BF87DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v9 = a7;
  v8 = a8;
  operator new();
}

void sub_24BF87F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF87F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, int a7, int a8, uint64_t a9, int a10, char a11, char a12)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = a5;
  v16 = a6;
  v14 = a8;
  v15 = a7;
  v13 = a11;
  v12 = a12;
  operator new();
}

void sub_24BF880EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a13);
  _Unwind_Resume(a1);
}

void sub_24BF88130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a5;
  operator new();
}

void sub_24BF88270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a12);
  _Unwind_Resume(a1);
}

void sub_24BF882B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8, uint64_t a9, uint64_t a10, char a11, char a12)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = a6;
  v15 = a7;
  v14 = a8;
  v13 = a11;
  v12 = a12;
  operator new();
}

void sub_24BF88448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a13);
  _Unwind_Resume(a1);
}

void sub_24BF8848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a6;
  v12 = a8;
  v13 = a7;
  v11 = a11;
  operator new();
}

void sub_24BF88610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a13);
  _Unwind_Resume(a1);
}

void sub_24BF88654(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a4;
  v12 = a7;
  v13 = a6;
  v11 = a8;
  v10 = a10;
  operator new();
}

void sub_24BF887C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a12);
  _Unwind_Resume(a1);
}

void sub_24BF88804(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a4;
  v9 = a7;
  v10 = a6;
  v8 = a8;
  operator new();
}

void sub_24BF8895C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a12);
  _Unwind_Resume(a1);
}

NS::Private::Selector *sub_24BF889A0(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  __p = &unk_285F9FC18;
  v14 = a5;
  p_p = &__p;
  v9 = sub_24BF5563C(a1, a2, &__p);
  sub_24BD12278(&__p);
  __p = 0;
  v14 = 0;
  v15 = 0;
  v10 = sub_24BF55AF4(a1, a2, v9, a3, a4, &__p);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_24BF88A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NS::Private::Selector *sub_24BF88AB0(uint64_t a1, uint64_t *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v15[0] = &unk_285F9FC98;
  v15[1] = a3;
  v17 = v15;
  v5 = sub_24BF5563C(a1, a2, v15);
  sub_24BD12278(v15);
  sub_24BC836D4(v15, &unk_24C0435AF);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  __p = 0;
  v10 = 0;
  v11 = 0;
  v6 = sub_24BF55AF4(a1, a2, v5, v15, &v12, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_24BF88BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_24BF94678(&__p, &a13);
  _Unwind_Resume(a1);
}

_BYTE *sub_24BF88C00(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF88C38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF88C54(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF88C8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF88CA8(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF88CE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF88CFC(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF88D34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF88D50(uint64_t a1)
{
  v2 = 480;
  do
  {
    v3 = a1 + v2;
    if (*(a1 + v2 - 1) < 0)
    {
      operator delete(*(v3 - 24));
    }

    if (*(v3 - 25) < 0)
    {
      operator delete(*(v3 - 48));
    }

    v2 -= 48;
  }

  while (v2);
  return a1;
}

__n128 sub_24BF88E20(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F298;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BF88E50(uint64_t a1)
{
  v30[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v21);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v21, v2, v3);
  v5 = sub_24BFB7A3C();
  v6 = strlen(v5);
  v7 = sub_24BC95264(v4, v5, v6);
  v8 = *(a1 + 8);
  sub_24BF0BC74(*(**(a1 + 16) + 56) & 0xFFFFFFFFFFLL, v17);
  v9 = *(v8 + 23);
  v10 = *v8;
  if (v9 >= 0)
  {
    v10 = v8;
  }

  if (v9 < 0)
  {
    v9 = v8[1];
  }

  v11 = v18;
  v12 = v17[0];
  if (v18 >= 0)
  {
    v12 = v17;
  }

  if (v18 < 0)
  {
    v11 = v17[1];
  }

  v26[0] = v10;
  v26[1] = v9;
  v26[2] = v12;
  v26[3] = v11;
  v27 = &unk_285F9EFD0;
  __p = v30;
  v29 = xmmword_24BFF4C90;
  sub_24BF70F28(&v27, "\ntemplate [[host_name({0})]] [[kernel]] void arange<{1}>(\n    constant const {1}& start,\n    constant const {1}& step,\n    device {1}* out,\n    uint index [[thread_position_in_grid]]);\n", 187, 221, v26, 0);
  sub_24BF7125C(&v27, v19);
  if (__p != v30)
  {
    operator delete(__p);
  }

  if ((v20 & 0x80u) == 0)
  {
    v13 = v19;
  }

  else
  {
    v13 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v14 = v20;
  }

  else
  {
    v14 = v19[1];
  }

  sub_24BC95264(v7, v13, v14);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  std::stringbuf::str();
  v21 = *MEMORY[0x277D82828];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x277D82828] + 24);
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v25);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF8910C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_24BCE1400(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF89168(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F2F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BF89230(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F318;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BF89268(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_24BF0BC74(**(a1 + 8), &v72);
  sub_24BF0BC74(**(a1 + 16), &v70);
  v4 = sub_24BFB7B5C();
  sub_24BC836D4(a2, v4);
  v5 = sub_24BFB7B50();
  v6 = sub_24BFB7AE4();
  std::string::append(a2, v5);
  std::string::append(a2, v6);
  v7 = *(a1 + 24);
  std::operator+<char>();
  sub_24BC836D4(v63, "unary_v");
  if (SHIBYTE(v73) < 0)
  {
    sub_24BC8DE9C(&__dst, v72, *(&v72 + 1));
  }

  else
  {
    __dst = v72;
    v62 = v73;
  }

  if (SHIBYTE(v71) < 0)
  {
    sub_24BC8DE9C(&v59, v70, *(&v70 + 1));
  }

  else
  {
    v59 = v70;
    v60 = v71;
  }

  v8 = *(a1 + 32);
  if (*(v8 + 23) < 0)
  {
    sub_24BC8DE9C(&v57, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    v58 = *(v8 + 2);
    v57 = v9;
  }

  sub_24BF85A90(&v65, v63, &__dst, &v59, &v57, &v67);
  if ((v69 & 0x80u) == 0)
  {
    v10 = &v67;
  }

  else
  {
    v10 = v67;
  }

  if ((v69 & 0x80u) == 0)
  {
    v11 = v69;
  }

  else
  {
    v11 = v68;
  }

  std::string::append(a2, v10, v11);
  if (v69 < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__dst);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  v12 = *(a1 + 24);
  std::operator+<char>();
  sub_24BC836D4(v53, "unary_v2");
  if (SHIBYTE(v73) < 0)
  {
    sub_24BC8DE9C(v51, v72, *(&v72 + 1));
  }

  else
  {
    *v51 = v72;
    v52 = v73;
  }

  if (SHIBYTE(v71) < 0)
  {
    sub_24BC8DE9C(v49, v70, *(&v70 + 1));
  }

  else
  {
    *v49 = v70;
    v50 = v71;
  }

  v13 = *(a1 + 32);
  if (*(v13 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *v13, *(v13 + 1));
  }

  else
  {
    v14 = *v13;
    v48 = *(v13 + 2);
    *__p = v14;
  }

  sub_24BF85A90(&v55, v53, v51, v49, __p, &v67);
  if ((v69 & 0x80u) == 0)
  {
    v15 = &v67;
  }

  else
  {
    v15 = v67;
  }

  if ((v69 & 0x80u) == 0)
  {
    v16 = v69;
  }

  else
  {
    v16 = v68;
  }

  std::string::append(a2, v15, v16);
  if (v69 < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  v17 = *(a1 + 24);
  std::operator+<char>();
  sub_24BC836D4(v43, "unary_g");
  if (SHIBYTE(v73) < 0)
  {
    sub_24BC8DE9C(v41, v72, *(&v72 + 1));
  }

  else
  {
    *v41 = v72;
    v42 = v73;
  }

  if (SHIBYTE(v71) < 0)
  {
    sub_24BC8DE9C(v39, v70, *(&v70 + 1));
  }

  else
  {
    *v39 = v70;
    v40 = v71;
  }

  v18 = *(a1 + 32);
  if (*(v18 + 23) < 0)
  {
    sub_24BC8DE9C(v37, *v18, *(v18 + 1));
  }

  else
  {
    v19 = *v18;
    v38 = *(v18 + 2);
    *v37 = v19;
  }

  sub_24BF86180(&v45, v43, v41, v39, v37, 1, "uint", &v67);
  if ((v69 & 0x80u) == 0)
  {
    v20 = &v67;
  }

  else
  {
    v20 = v67;
  }

  if ((v69 & 0x80u) == 0)
  {
    v21 = v69;
  }

  else
  {
    v21 = v68;
  }

  std::string::append(a2, v20, v21);
  if (v69 < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  v22 = *(a1 + 24);
  std::operator+<char>();
  sub_24BC836D4(v33, "unary_g");
  if (SHIBYTE(v73) < 0)
  {
    sub_24BC8DE9C(v31, v72, *(&v72 + 1));
  }

  else
  {
    *v31 = v72;
    v32 = v73;
  }

  if (SHIBYTE(v71) < 0)
  {
    sub_24BC8DE9C(v29, v70, *(&v70 + 1));
  }

  else
  {
    *v29 = v70;
    v30 = v71;
  }

  v23 = *(a1 + 32);
  if (*(v23 + 23) < 0)
  {
    sub_24BC8DE9C(v27, *v23, *(v23 + 1));
  }

  else
  {
    v24 = *v23;
    v28 = *(v23 + 2);
    *v27 = v24;
  }

  sub_24BF8653C(&v35, v33, v31, v29, v27, 4, &v67);
  if ((v69 & 0x80u) == 0)
  {
    v25 = &v67;
  }

  else
  {
    v25 = v67;
  }

  if ((v69 & 0x80u) == 0)
  {
    v26 = v69;
  }

  else
  {
    v26 = v68;
  }

  std::string::append(a2, v25, v26);
  if (v69 < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }
}

void sub_24BF89828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (*(v38 + 23) < 0)
  {
    operator delete(*v38);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  if (*(v39 - 49) < 0)
  {
    operator delete(*(v39 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF89AB8(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F378))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BF89B80(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BF89BB8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = sub_24BFB7B5C();
  MEMORY[0x24C2541D0](a2, v4);
  v5 = sub_24BFB7B68();
  v6 = sub_24BFB7B38();
  std::string::append(a2, v5);
  std::string::append(a2, v6);
  v7 = *(a1 + 8);
  if (*(v7 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *v7, *(v7 + 1));
  }

  else
  {
    v8 = *v7;
    v16 = *(v7 + 2);
    *__dst = v8;
  }

  v9 = **(a1 + 16);
  v10 = **(a1 + 24);
  v11 = *(a1 + 32);
  if (*(v11 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *v11, *(v11 + 1));
  }

  else
  {
    v12 = *v11;
    v14 = *(v11 + 2);
    *__p = v12;
  }

  sub_24BF84DF4(__dst, v9, v10, __p, a2);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BF89CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF89D14(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F3F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BF89DDC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F418;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BF89E14(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = sub_24BFB7B5C();
  sub_24BC836D4(a2, v4);
  v5 = sub_24BFB7B68();
  v6 = sub_24BFB7A24();
  std::string::append(a2, v5);
  std::string::append(a2, v6);
  v7 = *(a1 + 8);
  if (*(v7 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *v7, *(v7 + 1));
  }

  else
  {
    v8 = *v7;
    v16 = *(v7 + 2);
    *__dst = v8;
  }

  v9 = **(a1 + 16);
  v10 = **(a1 + 24);
  v11 = *(a1 + 32);
  if (*(v11 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *v11, *(v11 + 1));
  }

  else
  {
    v12 = *v11;
    v14 = *(v11 + 2);
    *__p = v12;
  }

  sub_24BF84DF4(__dst, v9, v10, __p, a2);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BF89F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF89F68(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F478))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BF8A030(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F498;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BF8A068(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_24BF0BC74(**(a1 + 8), &v91);
  v4 = sub_24BFB7B5C();
  sub_24BC836D4(a2, v4);
  v5 = sub_24BFB7A90();
  v6 = sub_24BFB7A78();
  std::string::append(a2, v5);
  std::string::append(a2, v6);
  sub_24BF8B850(v86, "v", "ternary_v");
  sub_24BF8B8A4(v87, "v2", "ternary_v2");
  sub_24BF8B8F8(v88, "g1", "ternary_g_nd1");
  sub_24BF8B94C(v89, "g2large", "ternary_g_nd2");
  sub_24BF8B94C(v90, "g3large", "ternary_g_nd3");
  for (i = 0; i != 240; i += 48)
  {
    v8 = &v86[i];
    if (v86[i + 23] >= 0)
    {
      v9 = v86[i + 23];
    }

    else
    {
      v9 = *&v86[i + 8];
    }

    sub_24BC8E2D4(&v80, v9 + 1);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v80;
    }

    else
    {
      v10 = v80.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (*(v8 + 23) >= 0)
      {
        v11 = &v86[i];
      }

      else
      {
        v11 = *v8;
      }

      memmove(v10, v11, v9);
    }

    *(&v10->__r_.__value_.__l.__data_ + v9) = 95;
    v12 = *(a1 + 16);
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = *(a1 + 16);
    }

    else
    {
      v14 = *v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v12 + 23);
    }

    else
    {
      v15 = *(v12 + 8);
    }

    v16 = std::string::append(&v80, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v82 = v16->__r_.__value_.__r.__words[2];
    *v81 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (v86[i + 47] < 0)
    {
      sub_24BC8DE9C(__dst, v8[3], *&v86[i + 32]);
    }

    else
    {
      *__dst = *(v8 + 3);
      v79 = v8[5];
    }

    if (SHIBYTE(v92) < 0)
    {
      sub_24BC8DE9C(v76, v91, *(&v91 + 1));
    }

    else
    {
      *v76 = v91;
      v77 = v92;
    }

    v18 = *(a1 + 24);
    if (*(v18 + 23) < 0)
    {
      sub_24BC8DE9C(v74, *v18, *(v18 + 1));
    }

    else
    {
      v19 = *v18;
      v75 = *(v18 + 2);
      *v74 = v19;
    }

    sub_24BF8AB10(v81, __dst, v76, v74, &__p);
    if ((v85 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v85 & 0x80u) == 0)
    {
      v21 = v85;
    }

    else
    {
      v21 = v84;
    }

    std::string::append(a2, p_p, v21);
    if (v85 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74[0]);
    }

    if (SHIBYTE(v77) < 0)
    {
      operator delete(v76[0]);
    }

    if (SHIBYTE(v79) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[0]);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  v22 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v72, "ternary_g_nd2");
  if (SHIBYTE(v92) < 0)
  {
    sub_24BC8DE9C(v70, v91, *(&v91 + 1));
  }

  else
  {
    *v70 = v91;
    v71 = v92;
  }

  v23 = *(a1 + 24);
  if (*(v23 + 23) < 0)
  {
    sub_24BC8DE9C(v68, *v23, *(v23 + 1));
  }

  else
  {
    v24 = *v23;
    v69 = *(v23 + 2);
    *v68 = v24;
  }

  sub_24BF8AE30(&v80, v72, v70, v68, "uint", &__p);
  if ((v85 & 0x80u) == 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p;
  }

  if ((v85 & 0x80u) == 0)
  {
    v26 = v85;
  }

  else
  {
    v26 = v84;
  }

  std::string::append(a2, v25, v26);
  if (v85 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68[0]);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  v27 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v64, "ternary_g_nd3");
  if (SHIBYTE(v92) < 0)
  {
    sub_24BC8DE9C(v62, v91, *(&v91 + 1));
  }

  else
  {
    *v62 = v91;
    v63 = v92;
  }

  v28 = *(a1 + 24);
  if (*(v28 + 23) < 0)
  {
    sub_24BC8DE9C(v60, *v28, *(v28 + 1));
  }

  else
  {
    v29 = *v28;
    v61 = *(v28 + 2);
    *v60 = v29;
  }

  sub_24BF8AE30(&v66, v64, v62, v60, "uint", &__p);
  if ((v85 & 0x80u) == 0)
  {
    v30 = &__p;
  }

  else
  {
    v30 = __p;
  }

  if ((v85 & 0x80u) == 0)
  {
    v31 = v85;
  }

  else
  {
    v31 = v84;
  }

  std::string::append(a2, v30, v31);
  if (v85 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (v67 < 0)
  {
    operator delete(v66);
  }

  v32 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v56, "ternary_g");
  if (SHIBYTE(v92) < 0)
  {
    sub_24BC8DE9C(v54, v91, *(&v91 + 1));
  }

  else
  {
    *v54 = v91;
    v55 = v92;
  }

  v33 = *(a1 + 24);
  if (*(v33 + 23) < 0)
  {
    sub_24BC8DE9C(v52, *v33, *(v33 + 1));
  }

  else
  {
    v34 = *v33;
    v53 = *(v33 + 2);
    *v52 = v34;
  }

  sub_24BF8B188(&v58, v56, v54, v52, 2, "uint", &__p);
  if ((v85 & 0x80u) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p;
  }

  if ((v85 & 0x80u) == 0)
  {
    v36 = v85;
  }

  else
  {
    v36 = v84;
  }

  std::string::append(a2, v35, v36);
  if (v85 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  v37 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v48, "ternary_g");
  if (SHIBYTE(v92) < 0)
  {
    sub_24BC8DE9C(v46, v91, *(&v91 + 1));
  }

  else
  {
    *v46 = v91;
    v47 = v92;
  }

  v38 = *(a1 + 24);
  if (*(v38 + 23) < 0)
  {
    sub_24BC8DE9C(v44, *v38, *(v38 + 1));
  }

  else
  {
    v39 = *v38;
    v45 = *(v38 + 2);
    *v44 = v39;
  }

  sub_24BF8B504(&v50, v48, v46, v44, 4, &__p);
  if ((v85 & 0x80u) == 0)
  {
    v40 = &__p;
  }

  else
  {
    v40 = __p;
  }

  if ((v85 & 0x80u) == 0)
  {
    v41 = v85;
  }

  else
  {
    v41 = v84;
  }

  std::string::append(a2, v40, v41);
  if (v85 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  for (j = 0; j != -240; j -= 48)
  {
    v43 = &v86[j];
    if (v90[j + 47] < 0)
    {
      operator delete(v43[27]);
    }

    if (*(v43 + 215) < 0)
    {
      operator delete(v43[24]);
    }
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(v91);
  }
}

void sub_24BF8A800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_24BF8B9A0(&STACK[0x248]);
  if (*(v31 + 23) < 0)
  {
    operator delete(*v31);
  }

  if (*(v32 - 97) < 0)
  {
    operator delete(*(v32 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF8AAC4(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F4F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF8AB10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v37[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v28);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sub_24BC95264(&v28, v11, v12);
  sub_24BC95264(v13, "<", 1);
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
    v16 = *(a3 + 8);
  }

  sub_24BC95264(&v28, v15, v16);
  sub_24BC95264(&v28, ", ", 2);
  v17 = *(a4 + 23);
  if (v17 >= 0)
  {
    v18 = a4;
  }

  else
  {
    v18 = *a4;
  }

  if (v17 >= 0)
  {
    v19 = *(a4 + 23);
  }

  else
  {
    v19 = *(a4 + 8);
  }

  sub_24BC95264(&v28, v18, v19);
  sub_24BC95264(&v28, ">", 1);
  std::stringbuf::str();
  v20 = *(a1 + 23);
  v21 = *a1;
  if (v20 >= 0)
  {
    v21 = a1;
  }

  if (v20 < 0)
  {
    v20 = a1[1];
  }

  v22 = v27;
  v23 = v26[0];
  if (v27 >= 0)
  {
    v23 = v26;
  }

  if (v27 < 0)
  {
    v22 = v26[1];
  }

  v33[0] = v21;
  v33[1] = v20;
  v33[2] = v23;
  v33[3] = v22;
  v34 = &unk_285F9EFD0;
  __p = v37;
  v36 = xmmword_24BFF4C90;
  sub_24BF70F28(&v34, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v33, 0);
  sub_24BF7125C(&v34, a5);
  if (__p != v37)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v28 = *MEMORY[0x277D82828];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
  v29 = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v32);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF8AE30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  v40[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v31);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_24BC95264(&v31, v13, v14);
  sub_24BC95264(v15, "<", 1);
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
    v18 = *(a3 + 8);
  }

  sub_24BC95264(&v31, v17, v18);
  sub_24BC95264(&v31, ", ", 2);
  v19 = *(a4 + 23);
  if (v19 >= 0)
  {
    v20 = a4;
  }

  else
  {
    v20 = *a4;
  }

  if (v19 >= 0)
  {
    v21 = *(a4 + 23);
  }

  else
  {
    v21 = *(a4 + 8);
  }

  sub_24BC95264(&v31, v20, v21);
  sub_24BC95264(&v31, ", ", 2);
  v22 = strlen(a5);
  sub_24BC95264(&v31, a5, v22);
  sub_24BC95264(&v31, ">", 1);
  std::stringbuf::str();
  v23 = *(a1 + 23);
  v24 = *a1;
  if (v23 >= 0)
  {
    v24 = a1;
  }

  if (v23 < 0)
  {
    v23 = a1[1];
  }

  v25 = v30;
  v26 = v29[0];
  if (v30 >= 0)
  {
    v26 = v29;
  }

  if (v30 < 0)
  {
    v25 = v29[1];
  }

  v36[0] = v24;
  v36[1] = v23;
  v36[2] = v26;
  v36[3] = v25;
  v37 = &unk_285F9EFD0;
  __p = v40;
  v39 = xmmword_24BFF4C90;
  sub_24BF70F28(&v37, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v36, 0);
  sub_24BF7125C(&v37, a6);
  if (__p != v40)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v31 = *MEMORY[0x277D82828];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82828] + 24);
  v32 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v33);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v35);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF8B188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const char *a6@<X5>, _BYTE *a7@<X8>)
{
  v42[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v33);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_24BC95264(&v33, v15, v16);
  sub_24BC95264(v17, "<", 1);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  sub_24BC95264(&v33, v19, v20);
  sub_24BC95264(&v33, ", ", 2);
  v21 = *(a4 + 23);
  if (v21 >= 0)
  {
    v22 = a4;
  }

  else
  {
    v22 = *a4;
  }

  if (v21 >= 0)
  {
    v23 = *(a4 + 23);
  }

  else
  {
    v23 = *(a4 + 8);
  }

  sub_24BC95264(&v33, v22, v23);
  sub_24BC95264(&v33, ", ", 2);
  MEMORY[0x24C2543C0](&v33, a5);
  sub_24BC95264(&v33, ", ", 2);
  v24 = strlen(a6);
  sub_24BC95264(&v33, a6, v24);
  sub_24BC95264(&v33, ">", 1);
  std::stringbuf::str();
  v25 = *(a1 + 23);
  v26 = *a1;
  if (v25 >= 0)
  {
    v26 = a1;
  }

  if (v25 < 0)
  {
    v25 = a1[1];
  }

  v27 = v32;
  v28 = v31[0];
  if (v32 >= 0)
  {
    v28 = v31;
  }

  if (v32 < 0)
  {
    v27 = v31[1];
  }

  v38[0] = v26;
  v38[1] = v25;
  v38[2] = v28;
  v38[3] = v27;
  v39 = &unk_285F9EFD0;
  __p = v42;
  v41 = xmmword_24BFF4C90;
  sub_24BF70F28(&v39, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v38, 0);
  sub_24BF7125C(&v39, a7);
  if (__p != v42)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v33 = *MEMORY[0x277D82828];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x277D82828] + 24);
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v37);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF8B504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v39[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v30);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_24BC95264(&v30, v13, v14);
  sub_24BC95264(v15, "<", 1);
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
    v18 = *(a3 + 8);
  }

  sub_24BC95264(&v30, v17, v18);
  sub_24BC95264(&v30, ", ", 2);
  v19 = *(a4 + 23);
  if (v19 >= 0)
  {
    v20 = a4;
  }

  else
  {
    v20 = *a4;
  }

  if (v19 >= 0)
  {
    v21 = *(a4 + 23);
  }

  else
  {
    v21 = *(a4 + 8);
  }

  sub_24BC95264(&v30, v20, v21);
  sub_24BC95264(&v30, ", ", 2);
  MEMORY[0x24C2543C0](&v30, a5);
  sub_24BC95264(&v30, ">", 1);
  std::stringbuf::str();
  v22 = *(a1 + 23);
  v23 = *a1;
  if (v22 >= 0)
  {
    v23 = a1;
  }

  if (v22 < 0)
  {
    v22 = a1[1];
  }

  v24 = v29;
  v25 = v28[0];
  if (v29 >= 0)
  {
    v25 = v28;
  }

  if (v29 < 0)
  {
    v24 = v28[1];
  }

  v35[0] = v23;
  v35[1] = v22;
  v35[2] = v25;
  v35[3] = v24;
  v36 = &unk_285F9EFD0;
  __p = v39;
  v38 = xmmword_24BFF4C90;
  sub_24BF70F28(&v36, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v35, 0);
  sub_24BF7125C(&v36, a6);
  if (__p != v39)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v34);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BF8B850(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF8B888(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF8B8A4(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF8B8DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF8B8F8(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF8B930(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF8B94C(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF8B984(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF8B9A0(uint64_t a1)
{
  for (i = 0; i != -240; i -= 48)
  {
    v3 = a1 + i;
    if (*(a1 + i + 239) < 0)
    {
      operator delete(*(v3 + 216));
    }

    if (*(v3 + 215) < 0)
    {
      operator delete(*(v3 + 192));
    }
  }

  return a1;
}

__n128 sub_24BF8BA7C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F518;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BF8BABC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F578))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BF8BB08(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = sub_24BFB7B5C();
  sub_24BC836D4(a2, v4);
  v5 = sub_24BFB7A84();
  std::string::append(a2, v5);
  sub_24BF0BC74(*(**a1 + 56) & 0xFFFFFFFFFFLL, &v187);
  sub_24BF0BC74(*(**(a1 + 8) + 56) & 0xFFFFFFFFFFLL, &v185);
  v6 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v178, "copy_s");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(&__dst, v187, *(&v187 + 1));
  }

  else
  {
    __dst = v187;
    v177 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(&v174, v185, *(&v185 + 1));
  }

  else
  {
    v174 = v185;
    v175 = v186;
  }

  sub_24BF8AB10(&v180, v178, &__dst, &v174, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v7 = &v182;
  }

  else
  {
    v7 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v8 = v184;
  }

  else
  {
    v8 = v183;
  }

  std::string::append(a2, v7, v8);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v175) < 0)
  {
    operator delete(v174);
  }

  if (SHIBYTE(v177) < 0)
  {
    operator delete(__dst);
  }

  if (v179 < 0)
  {
    operator delete(v178[0]);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  v9 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v170, "copy_v");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v168, v187, *(&v187 + 1));
  }

  else
  {
    *v168 = v187;
    v169 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(__p, v185, *(&v185 + 1));
  }

  else
  {
    *__p = v185;
    v167 = v186;
  }

  sub_24BF8AB10(&v172, v170, v168, __p, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v10 = &v182;
  }

  else
  {
    v10 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v11 = v184;
  }

  else
  {
    v11 = v183;
  }

  std::string::append(a2, v10, v11);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v167) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v169) < 0)
  {
    operator delete(v168[0]);
  }

  if (v171 < 0)
  {
    operator delete(v170[0]);
  }

  if (v173 < 0)
  {
    operator delete(v172);
  }

  v12 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v162, "copy_g_nd1");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v160, v187, *(&v187 + 1));
  }

  else
  {
    *v160 = v187;
    v161 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v158, v185, *(&v185 + 1));
  }

  else
  {
    *v158 = v185;
    v159 = v186;
  }

  sub_24BF8AB10(&v164, v162, v160, v158, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v13 = &v182;
  }

  else
  {
    v13 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v14 = v184;
  }

  else
  {
    v14 = v183;
  }

  std::string::append(a2, v13, v14);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v159) < 0)
  {
    operator delete(v158[0]);
  }

  if (SHIBYTE(v161) < 0)
  {
    operator delete(v160[0]);
  }

  if (v163 < 0)
  {
    operator delete(v162[0]);
  }

  if (v165 < 0)
  {
    operator delete(v164);
  }

  v15 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v154, "copy_g_nd2");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v152, v187, *(&v187 + 1));
  }

  else
  {
    *v152 = v187;
    v153 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v150, v185, *(&v185 + 1));
  }

  else
  {
    *v150 = v185;
    v151 = v186;
  }

  sub_24BF8AE30(&v156, v154, v152, v150, "int", &v182);
  if ((v184 & 0x80u) == 0)
  {
    v16 = &v182;
  }

  else
  {
    v16 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v17 = v184;
  }

  else
  {
    v17 = v183;
  }

  std::string::append(a2, v16, v17);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v151) < 0)
  {
    operator delete(v150[0]);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  if (v155 < 0)
  {
    operator delete(v154[0]);
  }

  if (v157 < 0)
  {
    operator delete(v156);
  }

  v18 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v146, "copy_g_nd3");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v144, v187, *(&v187 + 1));
  }

  else
  {
    *v144 = v187;
    v145 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v142, v185, *(&v185 + 1));
  }

  else
  {
    *v142 = v185;
    v143 = v186;
  }

  sub_24BF8AE30(&v148, v146, v144, v142, "int", &v182);
  if ((v184 & 0x80u) == 0)
  {
    v19 = &v182;
  }

  else
  {
    v19 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v20 = v184;
  }

  else
  {
    v20 = v183;
  }

  std::string::append(a2, v19, v20);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v143) < 0)
  {
    operator delete(v142[0]);
  }

  if (SHIBYTE(v145) < 0)
  {
    operator delete(v144[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148);
  }

  v21 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v138, "copy_g");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v136, v187, *(&v187 + 1));
  }

  else
  {
    *v136 = v187;
    v137 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v134, v185, *(&v185 + 1));
  }

  else
  {
    *v134 = v185;
    v135 = v186;
  }

  sub_24BF8B188(&v140, v138, v136, v134, 2, "int", &v182);
  if ((v184 & 0x80u) == 0)
  {
    v22 = &v182;
  }

  else
  {
    v22 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v23 = v184;
  }

  else
  {
    v23 = v183;
  }

  std::string::append(a2, v22, v23);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v135) < 0)
  {
    operator delete(v134[0]);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(v136[0]);
  }

  if (v139 < 0)
  {
    operator delete(v138[0]);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  v24 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v130, "copy_gg_nd1");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v128, v187, *(&v187 + 1));
  }

  else
  {
    *v128 = v187;
    v129 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v126, v185, *(&v185 + 1));
  }

  else
  {
    *v126 = v185;
    v127 = v186;
  }

  sub_24BF8AB10(&v132, v130, v128, v126, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v25 = &v182;
  }

  else
  {
    v25 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v26 = v184;
  }

  else
  {
    v26 = v183;
  }

  std::string::append(a2, v25, v26);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126[0]);
  }

  if (SHIBYTE(v129) < 0)
  {
    operator delete(v128[0]);
  }

  if (v131 < 0)
  {
    operator delete(v130[0]);
  }

  if (v133 < 0)
  {
    operator delete(v132);
  }

  v27 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v122, "copy_gg_nd2");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v120, v187, *(&v187 + 1));
  }

  else
  {
    *v120 = v187;
    v121 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v118, v185, *(&v185 + 1));
  }

  else
  {
    *v118 = v185;
    v119 = v186;
  }

  sub_24BF8AE30(&v124, v122, v120, v118, "int", &v182);
  if ((v184 & 0x80u) == 0)
  {
    v28 = &v182;
  }

  else
  {
    v28 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v29 = v184;
  }

  else
  {
    v29 = v183;
  }

  std::string::append(a2, v28, v29);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v119) < 0)
  {
    operator delete(v118[0]);
  }

  if (SHIBYTE(v121) < 0)
  {
    operator delete(v120[0]);
  }

  if (v123 < 0)
  {
    operator delete(v122[0]);
  }

  if (v125 < 0)
  {
    operator delete(v124);
  }

  v30 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v114, "copy_gg_nd3");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v112, v187, *(&v187 + 1));
  }

  else
  {
    *v112 = v187;
    v113 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v110, v185, *(&v185 + 1));
  }

  else
  {
    *v110 = v185;
    v111 = v186;
  }

  sub_24BF8AE30(&v116, v114, v112, v110, "int", &v182);
  if ((v184 & 0x80u) == 0)
  {
    v31 = &v182;
  }

  else
  {
    v31 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v32 = v184;
  }

  else
  {
    v32 = v183;
  }

  std::string::append(a2, v31, v32);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v111) < 0)
  {
    operator delete(v110[0]);
  }

  if (SHIBYTE(v113) < 0)
  {
    operator delete(v112[0]);
  }

  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  if (v117 < 0)
  {
    operator delete(v116);
  }

  v33 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v106, "copy_gg");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v104, v187, *(&v187 + 1));
  }

  else
  {
    *v104 = v187;
    v105 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v102, v185, *(&v185 + 1));
  }

  else
  {
    *v102 = v185;
    v103 = v186;
  }

  sub_24BF8B188(&v108, v106, v104, v102, 2, "int", &v182);
  if ((v184 & 0x80u) == 0)
  {
    v34 = &v182;
  }

  else
  {
    v34 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v35 = v184;
  }

  else
  {
    v35 = v183;
  }

  std::string::append(a2, v34, v35);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102[0]);
  }

  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104[0]);
  }

  if (v107 < 0)
  {
    operator delete(v106[0]);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  v36 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v98, "copy_g_nd2");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v96, v187, *(&v187 + 1));
  }

  else
  {
    *v96 = v187;
    v97 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v94, v185, *(&v185 + 1));
  }

  else
  {
    *v94 = v185;
    v95 = v186;
  }

  sub_24BF8AB10(&v100, v98, v96, v94, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v37 = &v182;
  }

  else
  {
    v37 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v38 = v184;
  }

  else
  {
    v38 = v183;
  }

  std::string::append(a2, v37, v38);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94[0]);
  }

  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96[0]);
  }

  if (v99 < 0)
  {
    operator delete(v98[0]);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  v39 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v90, "copy_g_nd3");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v88, v187, *(&v187 + 1));
  }

  else
  {
    *v88 = v187;
    v89 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v86, v185, *(&v185 + 1));
  }

  else
  {
    *v86 = v185;
    v87 = v186;
  }

  sub_24BF8AB10(&v92, v90, v88, v86, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v40 = &v182;
  }

  else
  {
    v40 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v41 = v184;
  }

  else
  {
    v41 = v183;
  }

  std::string::append(a2, v40, v41);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86[0]);
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88[0]);
  }

  if (v91 < 0)
  {
    operator delete(v90[0]);
  }

  if (v93 < 0)
  {
    operator delete(v92);
  }

  v42 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v82, "copy_g");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v80, v187, *(&v187 + 1));
  }

  else
  {
    *v80 = v187;
    v81 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v78, v185, *(&v185 + 1));
  }

  else
  {
    *v78 = v185;
    v79 = v186;
  }

  sub_24BF8B504(&v84, v82, v80, v78, 4, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v43 = &v182;
  }

  else
  {
    v43 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v44 = v184;
  }

  else
  {
    v44 = v183;
  }

  std::string::append(a2, v43, v44);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78[0]);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80[0]);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (v85 < 0)
  {
    operator delete(v84);
  }

  v45 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v74, "copy_gg_nd2");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v72, v187, *(&v187 + 1));
  }

  else
  {
    *v72 = v187;
    v73 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v70, v185, *(&v185 + 1));
  }

  else
  {
    *v70 = v185;
    v71 = v186;
  }

  sub_24BF8AB10(&v76, v74, v72, v70, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v46 = &v182;
  }

  else
  {
    v46 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v47 = v184;
  }

  else
  {
    v47 = v183;
  }

  std::string::append(a2, v46, v47);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70[0]);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
  }

  if (v75 < 0)
  {
    operator delete(v74[0]);
  }

  if (v77 < 0)
  {
    operator delete(v76);
  }

  v48 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v66, "copy_gg_nd3");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v64, v187, *(&v187 + 1));
  }

  else
  {
    *v64 = v187;
    v65 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v62, v185, *(&v185 + 1));
  }

  else
  {
    *v62 = v185;
    v63 = v186;
  }

  sub_24BF8AB10(&v68, v66, v64, v62, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v49 = &v182;
  }

  else
  {
    v49 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v50 = v184;
  }

  else
  {
    v50 = v183;
  }

  std::string::append(a2, v49, v50);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64[0]);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  v51 = *(a1 + 16);
  std::operator+<char>();
  sub_24BC836D4(v58, "copy_gg");
  if (SHIBYTE(v188) < 0)
  {
    sub_24BC8DE9C(v56, v187, *(&v187 + 1));
  }

  else
  {
    *v56 = v187;
    v57 = v188;
  }

  if (SHIBYTE(v186) < 0)
  {
    sub_24BC8DE9C(v54, v185, *(&v185 + 1));
  }

  else
  {
    *v54 = v185;
    v55 = v186;
  }

  sub_24BF8B504(&v60, v58, v56, v54, 4, &v182);
  if ((v184 & 0x80u) == 0)
  {
    v52 = &v182;
  }

  else
  {
    v52 = v182;
  }

  if ((v184 & 0x80u) == 0)
  {
    v53 = v184;
  }

  else
  {
    v53 = v183;
  }

  std::string::append(a2, v52, v53);
  if (v184 < 0)
  {
    operator delete(v182);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (SHIBYTE(v186) < 0)
  {
    operator delete(v185);
  }

  if (SHIBYTE(v188) < 0)
  {
    operator delete(v187);
  }
}

void sub_24BF8CBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v32 - 73) < 0)
  {
    operator delete(*(v32 - 96));
  }

  if (*(v32 - 49) < 0)
  {
    operator delete(*(v32 - 72));
  }

  if (*(v31 + 23) < 0)
  {
    operator delete(*v31);
  }

  _Unwind_Resume(a1);
}

__n128 sub_24BF8D40C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F598;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BF8D444(uint64_t a1)
{
  v29[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v20);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v20, v2, v3);
  v5 = sub_24BFB7AA8();
  v6 = strlen(v5);
  v7 = sub_24BC95264(v4, v5, v6);
  v8 = *(a1 + 8);
  sub_24BF0BC74(*(**(a1 + 16) + 56) & 0xFFFFFFFFFFLL, v16);
  if (**(a1 + 24))
  {
    v9 = 0x40000000ALL;
  }

  else
  {
    v9 = *(**(a1 + 16) + 56) & 0xFFFFFFFFFFLL;
  }

  sub_24BF0BC74(v9, v14);
  sub_24BF8D7E0(v8, v16, v14, v25);
  v26 = &unk_285F9EFD0;
  __p = v29;
  v28 = xmmword_24BFF4C90;
  sub_24BF70F28(&v26, "\ntemplate [[host_name(block_{0})]] [[kernel]] void\nsoftmax_single_row<{1}, {2}>(\n    const device {1}* in,\n    device {1}* out,\n    constant int& axis_size,\n    uint gid [[thread_position_in_grid]],\n    uint _lid [[thread_position_in_threadgroup]],\n    uint simd_lane_id [[thread_index_in_simdgroup]],\n    uint simd_group_id [[simdgroup_index_in_threadgroup]]);\ntemplate [[host_name(looped_{0})]] [[kernel]] void\nsoftmax_looped<{1}, {2}>(\n    const device {1}* in,\n    device {1}* out,\n    constant int& axis_size,\n    uint gid [[threadgroup_position_in_grid]],\n    uint lid [[thread_position_in_threadgroup]],\n    uint lsize [[threads_per_threadgroup]],\n    uint simd_lane_id [[thread_index_in_simdgroup]],\n    uint simd_group_id [[simdgroup_index_in_threadgroup]]);\n", 772, 3549, v25, 0);
  sub_24BF7125C(&v26, v18);
  if (__p != v29)
  {
    operator delete(__p);
  }

  if ((v19 & 0x80u) == 0)
  {
    v10 = v18;
  }

  else
  {
    v10 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v11 = v19;
  }

  else
  {
    v11 = v18[1];
  }

  sub_24BC95264(v7, v10, v11);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::stringbuf::str();
  v20 = *MEMORY[0x277D82828];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x277D82828] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v24);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF8D718(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, ...)
{
  va_start(va, a19);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a7 < 0)
  {
    operator delete(a2);
  }

  if (a13 < 0)
  {
    operator delete(a8);
  }

  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF8D794(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F5F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_24BF8D7E0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *(result + 23);
  v5 = *result;
  if (v4 >= 0)
  {
    v5 = result;
  }

  if (v4 < 0)
  {
    v4 = result[1];
  }

  v6 = *(a2 + 23);
  v7 = *a2;
  if (v6 >= 0)
  {
    v7 = a2;
  }

  if (v6 < 0)
  {
    v6 = a2[1];
  }

  v8 = *(a3 + 23);
  v9 = *a3;
  if (v8 >= 0)
  {
    v9 = a3;
  }

  if (v8 < 0)
  {
    v8 = a3[1];
  }

  *a4 = v5;
  a4[1] = v4;
  a4[2] = v7;
  a4[3] = v6;
  a4[4] = v9;
  a4[5] = v8;
  return result;
}

__n128 sub_24BF8D8BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F618;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_24BF8D8FC(uint64_t a1)
{
  sub_24BF0BC74(*(**(a1 + 8) + 56) & 0xFFFFFFFFFFLL, v46);
  v2 = *(a1 + 16);
  std::operator+<char>();
  v3 = std::string::append(&v44, "<");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v38[0].__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v38[0].__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if ((v47 & 0x80u) == 0)
  {
    v5 = v46;
  }

  else
  {
    v5 = v46[0];
  }

  if ((v47 & 0x80u) == 0)
  {
    v6 = v47;
  }

  else
  {
    v6 = v46[1];
  }

  v7 = std::string::append(v38, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v40, ">");
  size = v9->__r_.__value_.__l.__size_;
  __src = v9->__r_.__value_.__r.__words[0];
  v45[0] = v9->__r_.__value_.__r.__words[2];
  *(v45 + 3) = *(&v9->__r_.__value_.__r.__words[2] + 3);
  v11 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    LOBYTE(v12) = *(__src + 3);
    goto LABEL_16;
  }

  if (v11 < 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v12 = __src >> 24;
LABEL_16:
  v13 = __toupper(v12);
  if (v11 < 0)
  {
    *(__src + 3) = v13;
  }

  else
  {
    __src = __src & 0xFFFFFFFF00FFFFFFLL | (v13 << 24);
  }

  sub_24BCE1268(&v40);
  v14 = sub_24BFB7B5C();
  v15 = strlen(v14);
  v16 = sub_24BC95264(&v40, v14, v15);
  v17 = sub_24BFB7AB4();
  v18 = strlen(v17);
  sub_24BC95264(v16, v17, v18);
  sub_24BF8E34C(v38, "contig_", "contiguous_scan");
  sub_24BF8E3A0(v39, "strided_", "strided_scan");
  for (i = 0; i != 4; i += 2)
  {
    v20 = &v38[i];
    sub_24BD081E8(&v38[i].__r_.__value_.__l.__data_, *(a1 + 24), v36);
    if (SHIBYTE(v38[i + 1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(__dst, v20[1].__r_.__value_.__l.__data_, v38[i + 1].__r_.__value_.__l.__size_);
    }

    else
    {
      *__dst = *&v20[1].__r_.__value_.__l.__data_;
      v35 = v20[1].__r_.__value_.__r.__words[2];
    }

    sub_24BF0BC74(*(**(a1 + 32) + 56) & 0xFFFFFFFFFFLL, v32);
    sub_24BF0BC74(*(**(a1 + 8) + 56) & 0xFFFFFFFFFFLL, v30);
    if (v11 < 0)
    {
      sub_24BC8DE9C(__p, __src, size);
    }

    else
    {
      __p[0] = __src;
      __p[1] = size;
      *v28 = v45[0];
      *&v28[3] = *(v45 + 3);
      v29 = v11;
    }

    if (*(**(a1 + 32) + 60) >= 5uLL)
    {
      v21 = 2;
    }

    else
    {
      v21 = 4;
    }

    sub_24BF8DF78(v36, __dst, v32, v30, __p, v21, **(a1 + 40), **(a1 + 48), &v44);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v44;
    }

    else
    {
      v22 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v44.__r_.__value_.__l.__size_;
    }

    sub_24BC95264(&v40, v22, v23);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }
  }

  std::stringbuf::str();
  for (j = 0; j != -96; j -= 48)
  {
    v25 = &v38[j / 0x18];
    if (v39[j + 47] < 0)
    {
      operator delete(v25[3].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25[2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25[2].__r_.__value_.__l.__data_);
    }
  }

  v40.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
  *(v40.__r_.__value_.__r.__words + *(v40.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82828] + 24);
  v40.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
  if (v42 < 0)
  {
    operator delete(v41);
  }

  v40.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v40.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](&v43);
  if (v11 < 0)
  {
    operator delete(__src);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }
}

void sub_24BF8DDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  sub_24BF8E3F4(&a42);
  sub_24BCE1400(&a57);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  if (*(v63 - 97) < 0)
  {
    operator delete(*(v63 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF8DF2C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F678))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF8DF78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v48[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v39);
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  v21 = sub_24BC95264(&v39, v19, v20);
  sub_24BC95264(v21, "<", 1);
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
    v24 = *(a3 + 8);
  }

  sub_24BC95264(&v39, v23, v24);
  sub_24BC95264(&v39, ", ", 2);
  v25 = *(a4 + 23);
  if (v25 >= 0)
  {
    v26 = a4;
  }

  else
  {
    v26 = *a4;
  }

  if (v25 >= 0)
  {
    v27 = *(a4 + 23);
  }

  else
  {
    v27 = *(a4 + 8);
  }

  sub_24BC95264(&v39, v26, v27);
  sub_24BC95264(&v39, ", ", 2);
  v28 = *(a5 + 23);
  if (v28 >= 0)
  {
    v29 = a5;
  }

  else
  {
    v29 = *a5;
  }

  if (v28 >= 0)
  {
    v30 = *(a5 + 23);
  }

  else
  {
    v30 = *(a5 + 8);
  }

  sub_24BC95264(&v39, v29, v30);
  sub_24BC95264(&v39, ", ", 2);
  MEMORY[0x24C2543C0](&v39, a6);
  sub_24BC95264(&v39, ", ", 2);
  MEMORY[0x24C254390](&v39, a7);
  sub_24BC95264(&v39, ", ", 2);
  MEMORY[0x24C254390](&v39, a8);
  sub_24BC95264(&v39, ">", 1);
  std::stringbuf::str();
  v31 = *(a1 + 23);
  v32 = *a1;
  if (v31 >= 0)
  {
    v32 = a1;
  }

  if (v31 < 0)
  {
    v31 = a1[1];
  }

  v33 = v38;
  v34 = v37[0];
  if (v38 >= 0)
  {
    v34 = v37;
  }

  if (v38 < 0)
  {
    v33 = v37[1];
  }

  v44[0] = v32;
  v44[1] = v31;
  v44[2] = v34;
  v44[3] = v33;
  v45 = &unk_285F9EFD0;
  __p = v48;
  v47 = xmmword_24BFF4C90;
  sub_24BF70F28(&v45, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v44, 0);
  sub_24BF7125C(&v45, a9);
  if (__p != v48)
  {
    operator delete(__p);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v39 = *MEMORY[0x277D82828];
  *(&v39 + *(v39 - 24)) = *(MEMORY[0x277D82828] + 24);
  v40 = MEMORY[0x277D82878] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v41);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v43);
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BF8E34C(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF8E384(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF8E3A0(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF8E3D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF8E3F4(uint64_t a1)
{
  for (i = 0; i != -96; i -= 48)
  {
    v3 = a1 + i;
    if (*(a1 + i + 95) < 0)
    {
      operator delete(*(v3 + 72));
    }

    if (*(v3 + 71) < 0)
    {
      operator delete(*(v3 + 48));
    }
  }

  return a1;
}

__n128 sub_24BF8E4D8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BF8E518(uint64_t a1)
{
  sub_24BCE1268(&v55);
  sub_24BF0BC74(*(**(a1 + 8) + 56) & 0xFFFFFFFFFFLL, v53);
  sub_24BF0BC74(*(**(a1 + 16) + 56) & 0xFFFFFFFFFFLL, &v51);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v55, v2, v3);
  v5 = sub_24BFB7B08();
  v6 = strlen(v5);
  sub_24BC95264(v4, v5, v6);
  v7 = 0;
  v50 = 1;
  do
  {
    v8 = *(&v50 + v7);
    if (*(&v50 + v7))
    {
      v9 = "true";
    }

    else
    {
      v9 = "false";
    }

    sub_24BC836D4(&v48, v9);
    if (v8)
    {
      v10 = "carg_";
    }

    else
    {
      v10 = "c_";
    }

    sub_24BC836D4(v46, v10);
    sub_24BD081E8(v46, *(a1 + 24), v41);
    sub_24BC836D4(v39, "block_sort");
    if (SHIBYTE(v54) < 0)
    {
      sub_24BC8DE9C(__dst, v53[0], v53[1]);
    }

    else
    {
      *__dst = *v53;
      v38 = v54;
    }

    if (SHIBYTE(v52) < 0)
    {
      sub_24BC8DE9C(v35, v51, *(&v51 + 1));
    }

    else
    {
      *v35 = v51;
      v36 = v52;
    }

    if (SHIBYTE(v49) < 0)
    {
      sub_24BC8DE9C(v33, v48, *(&v48 + 1));
    }

    else
    {
      *v33 = v48;
      v34 = v49;
    }

    sub_24BF8EC64(v41, v39, __dst, v35, v33, **(a1 + 32), **(a1 + 40), &__p);
    if ((v45 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v45 & 0x80u) == 0)
    {
      v12 = v45;
    }

    else
    {
      v12 = v44;
    }

    sub_24BC95264(&v55, p_p, v12);
    if (v45 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    std::operator+<char>();
    v13 = *(a1 + 24);
    v14 = *(v13 + 23);
    if (v14 >= 0)
    {
      v15 = *(a1 + 24);
    }

    else
    {
      v15 = *v13;
    }

    if (v14 >= 0)
    {
      v16 = *(v13 + 23);
    }

    else
    {
      v16 = *(v13 + 8);
    }

    v17 = std::string::append(&v30, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v32 = v17->__r_.__value_.__r.__words[2];
    *v31 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    sub_24BC836D4(v28, "block_sort_nc");
    if (SHIBYTE(v54) < 0)
    {
      sub_24BC8DE9C(v26, v53[0], v53[1]);
    }

    else
    {
      *v26 = *v53;
      v27 = v54;
    }

    if (SHIBYTE(v52) < 0)
    {
      sub_24BC8DE9C(v24, v51, *(&v51 + 1));
    }

    else
    {
      *v24 = v51;
      v25 = v52;
    }

    if (SHIBYTE(v49) < 0)
    {
      sub_24BC8DE9C(v22, v48, *(&v48 + 1));
    }

    else
    {
      *v22 = v48;
      v23 = v49;
    }

    sub_24BF8EC64(v31, v28, v26, v24, v22, **(a1 + 32), **(a1 + 40), &__p);
    if ((v45 & 0x80u) == 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = __p;
    }

    if ((v45 & 0x80u) == 0)
    {
      v20 = v45;
    }

    else
    {
      v20 = v44;
    }

    sub_24BC95264(&v55, v19, v20);
    if (v45 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48);
    }

    ++v7;
  }

  while (v7 != 2);
  std::stringbuf::str();
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }

  v55 = *MEMORY[0x277D82828];
  *(&v55 + *(v55 - 24)) = *(MEMORY[0x277D82828] + 24);
  v56 = MEMORY[0x277D82878] + 16;
  if (v58 < 0)
  {
    operator delete(v57[7].__locale_);
  }

  v56 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v57);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](&v59);
}

void sub_24BF8EA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  sub_24BCE1400(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF8EC18(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F6F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF8EC64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v46[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v37);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  v19 = sub_24BC95264(&v37, v17, v18);
  sub_24BC95264(v19, "<", 1);
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
    v22 = *(a3 + 8);
  }

  sub_24BC95264(&v37, v21, v22);
  sub_24BC95264(&v37, ", ", 2);
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  sub_24BC95264(&v37, v24, v25);
  sub_24BC95264(&v37, ", ", 2);
  v26 = *(a5 + 23);
  if (v26 >= 0)
  {
    v27 = a5;
  }

  else
  {
    v27 = *a5;
  }

  if (v26 >= 0)
  {
    v28 = *(a5 + 23);
  }

  else
  {
    v28 = *(a5 + 8);
  }

  sub_24BC95264(&v37, v27, v28);
  sub_24BC95264(&v37, ", ", 2);
  MEMORY[0x24C2543C0](&v37, a6);
  sub_24BC95264(&v37, ", ", 2);
  MEMORY[0x24C2543C0](&v37, a7);
  sub_24BC95264(&v37, ">", 1);
  std::stringbuf::str();
  v29 = *(a1 + 23);
  v30 = *a1;
  if (v29 >= 0)
  {
    v30 = a1;
  }

  if (v29 < 0)
  {
    v29 = a1[1];
  }

  v31 = v36;
  v32 = v35[0];
  if (v36 >= 0)
  {
    v32 = v35;
  }

  if (v36 < 0)
  {
    v31 = v35[1];
  }

  v42[0] = v30;
  v42[1] = v29;
  v42[2] = v32;
  v42[3] = v31;
  v43 = &unk_285F9EFD0;
  __p = v46;
  v45 = xmmword_24BFF4C90;
  sub_24BF70F28(&v43, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v42, 0);
  sub_24BF7125C(&v43, a8);
  if (__p != v46)
  {
    operator delete(__p);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  v37 = *MEMORY[0x277D82828];
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x277D82828] + 24);
  v38 = MEMORY[0x277D82878] + 16;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  v38 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v39);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v41);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_24BF8F098(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F718;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BF8F0D8(uint64_t a1)
{
  sub_24BCE1268(&v27);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v27, v2, v3);
  v5 = sub_24BFB7B08();
  v6 = strlen(v5);
  sub_24BC95264(v4, v5, v6);
  sub_24BF8F8D8(v24, "sort_", "mb_block_sort");
  sub_24BF8F92C(v25, "partition_", "mb_block_partition");
  sub_24BF8F980(v26, "merge_", "mb_block_merge");
  for (i = 0; i != 144; i += 48)
  {
    v8 = &v24[i];
    sub_24BD081E8(&v24[i], *(a1 + 8), v20);
    if (v24[i + 47] < 0)
    {
      sub_24BC8DE9C(__dst, v8[3], *&v24[i + 32]);
    }

    else
    {
      *__dst = *(v8 + 3);
      v19 = v8[5];
    }

    sub_24BF0BC74(*(**(a1 + 16) + 56) & 0xFFFFFFFFFFLL, v16);
    sub_24BF0BC74(*(**(a1 + 24) + 56) & 0xFFFFFFFFFFLL, v14);
    sub_24BF8F530(v20, __dst, v16, v14, "true", **(a1 + 32), **(a1 + 40), __p);
    if ((v23 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v10 = v23;
    }

    else
    {
      v10 = __p[1];
    }

    sub_24BC95264(&v27, v9, v10);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  std::stringbuf::str();
  for (j = 0; j != -144; j -= 48)
  {
    v12 = &v24[j];
    if (v26[j + 47] < 0)
    {
      operator delete(v12[15]);
    }

    if (*(v12 + 119) < 0)
    {
      operator delete(v12[12]);
    }
  }

  v27 = *MEMORY[0x277D82828];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x277D82828] + 24);
  v28 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](&v31);
}

void sub_24BF8F420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_24BF8F9D4(&a39);
  sub_24BCE1400(&a57);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF8F4E4(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F778))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF8F530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v44[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v35);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  v19 = sub_24BC95264(&v35, v17, v18);
  sub_24BC95264(v19, "<", 1);
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
    v22 = *(a3 + 8);
  }

  sub_24BC95264(&v35, v21, v22);
  sub_24BC95264(&v35, ", ", 2);
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  sub_24BC95264(&v35, v24, v25);
  sub_24BC95264(&v35, ", ", 2);
  v26 = strlen(a5);
  sub_24BC95264(&v35, a5, v26);
  sub_24BC95264(&v35, ", ", 2);
  MEMORY[0x24C2543C0](&v35, a6);
  sub_24BC95264(&v35, ", ", 2);
  MEMORY[0x24C2543C0](&v35, a7);
  sub_24BC95264(&v35, ">", 1);
  std::stringbuf::str();
  v27 = *(a1 + 23);
  v28 = *a1;
  if (v27 >= 0)
  {
    v28 = a1;
  }

  if (v27 < 0)
  {
    v27 = a1[1];
  }

  v29 = v34;
  v30 = v33[0];
  if (v34 >= 0)
  {
    v30 = v33;
  }

  if (v34 < 0)
  {
    v29 = v33[1];
  }

  v40[0] = v28;
  v40[1] = v27;
  v40[2] = v30;
  v40[3] = v29;
  v41 = &unk_285F9EFD0;
  __p = v44;
  v43 = xmmword_24BFF4C90;
  sub_24BF70F28(&v41, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v40, 0);
  sub_24BF7125C(&v41, a8);
  if (__p != v44)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v35 = *MEMORY[0x277D82828];
  *(&v35 + *(v35 - 24)) = *(MEMORY[0x277D82828] + 24);
  v36 = MEMORY[0x277D82878] + 16;
  if (v38 < 0)
  {
    operator delete(v37[7].__locale_);
  }

  v36 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v37);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v39);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BF8F8D8(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF8F910(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF8F92C(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF8F964(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF8F980(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 24, a3);
  return a1;
}

void sub_24BF8F9B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF8F9D4(uint64_t a1)
{
  for (i = 0; i != -144; i -= 48)
  {
    v3 = a1 + i;
    if (*(a1 + i + 143) < 0)
    {
      operator delete(*(v3 + 120));
    }

    if (*(v3 + 119) < 0)
    {
      operator delete(*(v3 + 96));
    }
  }

  return a1;
}

__n128 sub_24BF8FAB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F798;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BF8FAE8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4[23] < 0)
  {
    sub_24BC8DE9C(&__dst, *v4, *(v4 + 1));
    v4 = *(a1 + 8);
    if (v4[23] < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v5 = *v4;
    v41 = *(v4 + 2);
    __dst = v5;
  }

  v6 = __toupper(*v4);
  p_dst = &__dst;
  if (v41 < 0)
  {
    p_dst = __dst;
  }

  *p_dst = v6;
  sub_24BF0BC74(**(a1 + 16), &v38);
  if (v41 >= 0)
  {
    v8 = HIBYTE(v41);
  }

  else
  {
    v8 = *(&__dst + 1);
  }

  v9 = &v35;
  sub_24BC8E2D4(&v35, v8 + 1);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v35.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (v41 >= 0)
    {
      v10 = &__dst;
    }

    else
    {
      v10 = __dst;
    }

    memmove(v9, v10, v8);
  }

  *(&v9->__r_.__value_.__l.__data_ + v8) = 60;
  if (v39 >= 0)
  {
    v11 = &v38;
  }

  else
  {
    v11 = v38;
  }

  if (v39 >= 0)
  {
    v12 = HIBYTE(v39);
  }

  else
  {
    v12 = *(&v38 + 1);
  }

  v13 = std::string::append(&v35, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v36, ">");
  v16 = v15->__r_.__value_.__r.__words[0];
  size = v15->__r_.__value_.__l.__size_;
  v37[0] = v15->__r_.__value_.__r.__words[2];
  *(v37 + 3) = *(&v15->__r_.__value_.__r.__words[2] + 3);
  v18 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v19 = sub_24BFB7B5C();
  sub_24BC836D4(a2, v19);
  v20 = sub_24BFB7A48();
  std::string::append(a2, v20);
  v21 = sub_24BFB7B44();
  std::string::append(a2, v21);
  v22 = *(a1 + 24);
  if (*(v22 + 23) < 0)
  {
    sub_24BC8DE9C(&v35, *v22, *(v22 + 1));
  }

  else
  {
    v23 = *v22;
    v35.__r_.__value_.__r.__words[2] = *(v22 + 2);
    *&v35.__r_.__value_.__l.__data_ = v23;
  }

  v24 = *(a1 + 32);
  if (*(v24 + 23) < 0)
  {
    sub_24BC8DE9C(v33, *v24, *(v24 + 1));
  }

  else
  {
    v25 = *v24;
    v34 = *(v24 + 2);
    *v33 = v25;
  }

  if (SHIBYTE(v39) < 0)
  {
    sub_24BC8DE9C(v31, v38, *(&v38 + 1));
  }

  else
  {
    *v31 = v38;
    v32 = v39;
  }

  if (v18 < 0)
  {
    sub_24BC8DE9C(__p, v16, size);
  }

  else
  {
    __p[0] = v16;
    __p[1] = size;
    *v29 = v37[0];
    *&v29[3] = *(v37 + 3);
    v30 = v18;
  }

  sub_24BF8AB10(&v35, v33, v31, __p, &v36);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v36;
  }

  else
  {
    v26 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v36.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v26, v27);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

  operator delete(v16);
LABEL_55:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(__dst);
  }
}

void sub_24BF8FE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v42 + 23) < 0)
  {
    operator delete(*v42);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (*(v45 - 97) < 0)
  {
    operator delete(*(v45 - 120));
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF8FF38(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F7F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BF90018(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F818;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void sub_24BF90068(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4[23] < 0)
  {
    sub_24BC8DE9C(&__dst, *v4, *(v4 + 1));
    v4 = *(a1 + 8);
    if (v4[23] < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v5 = *v4;
    v62 = *(v4 + 2);
    __dst = v5;
  }

  v6 = __toupper(*v4);
  p_dst = &__dst;
  if (v62 < 0)
  {
    p_dst = __dst;
  }

  *p_dst = v6;
  sub_24BF0BC74(**(a1 + 16), &v59);
  sub_24BF0BC74(**(a1 + 24), &v57);
  if (v62 >= 0)
  {
    v8 = HIBYTE(v62);
  }

  else
  {
    v8 = *(&__dst + 1);
  }

  v9 = &v54;
  sub_24BC8E2D4(&v54, v8 + 1);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v54.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (v62 >= 0)
    {
      v10 = &__dst;
    }

    else
    {
      v10 = __dst;
    }

    memmove(v9, v10, v8);
  }

  *(&v9->__r_.__value_.__l.__data_ + v8) = 60;
  if (v58 >= 0)
  {
    v11 = &v57;
  }

  else
  {
    v11 = v57;
  }

  if (v58 >= 0)
  {
    v12 = HIBYTE(v58);
  }

  else
  {
    v12 = *(&v57 + 1);
  }

  v13 = std::string::append(&v54, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v55, ">");
  v16 = v15->__r_.__value_.__r.__words[0];
  size = v15->__r_.__value_.__l.__size_;
  v56[0] = v15->__r_.__value_.__r.__words[2];
  *(v56 + 3) = *(&v15->__r_.__value_.__r.__words[2] + 3);
  v18 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v19 = sub_24BFB7B5C();
  sub_24BC836D4(a2, v19);
  v20 = sub_24BFB7A48();
  v21 = sub_24BFB7B44();
  std::string::append(a2, v20);
  std::string::append(a2, v21);
  if ((**(a1 + 32) & 0x80000000) != 0)
  {
    if ((**(a1 + 64) & 0x80000000) != 0)
    {
      v32 = *(a1 + 40);
      if (*(v32 + 23) < 0)
      {
        sub_24BC8DE9C(&v54, *v32, *(v32 + 1));
      }

      else
      {
        v33 = *v32;
        v54.__r_.__value_.__r.__words[2] = *(v32 + 2);
        *&v54.__r_.__value_.__l.__data_ = v33;
      }

      v38 = *(a1 + 48);
      if (*(v38 + 23) < 0)
      {
        sub_24BC8DE9C(v52, *v38, *(v38 + 1));
      }

      else
      {
        v39 = *v38;
        v53 = *(v38 + 2);
        *v52 = v39;
      }

      if (SHIBYTE(v60) < 0)
      {
        sub_24BC8DE9C(v50, v59, *(&v59 + 1));
      }

      else
      {
        *v50 = v59;
        v51 = v60;
      }

      if (SHIBYTE(v58) < 0)
      {
        sub_24BC8DE9C(v48, v57, *(&v57 + 1));
      }

      else
      {
        *v48 = v57;
        v49 = v58;
      }

      if (v18 < 0)
      {
        sub_24BC8DE9C(&v44, v16, size);
      }

      else
      {
        v44 = v16;
        v45 = size;
        *v46 = v56[0];
        *&v46[3] = *(v56 + 3);
        v47 = v18;
      }

      v40 = *(a1 + 56);
      if (*(v40 + 23) < 0)
      {
        sub_24BC8DE9C(__p, *v40, *(v40 + 1));
      }

      else
      {
        v41 = *v40;
        v43 = *(v40 + 2);
        *__p = v41;
      }

      sub_24BF910D4(&v54, v52, v50, v48, &v44, __p, &v55);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v55;
      }

      else
      {
        v30 = v55.__r_.__value_.__r.__words[0];
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v31 = v55.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v24 = *(a1 + 40);
      if (*(v24 + 23) < 0)
      {
        sub_24BC8DE9C(&v54, *v24, *(v24 + 1));
      }

      else
      {
        v25 = *v24;
        v54.__r_.__value_.__r.__words[2] = *(v24 + 2);
        *&v54.__r_.__value_.__l.__data_ = v25;
      }

      v34 = *(a1 + 48);
      if (*(v34 + 23) < 0)
      {
        sub_24BC8DE9C(v52, *v34, *(v34 + 1));
      }

      else
      {
        v35 = *v34;
        v53 = *(v34 + 2);
        *v52 = v35;
      }

      if (SHIBYTE(v60) < 0)
      {
        sub_24BC8DE9C(v50, v59, *(&v59 + 1));
      }

      else
      {
        *v50 = v59;
        v51 = v60;
      }

      if (SHIBYTE(v58) < 0)
      {
        sub_24BC8DE9C(v48, v57, *(&v57 + 1));
      }

      else
      {
        *v48 = v57;
        v49 = v58;
      }

      if (v18 < 0)
      {
        sub_24BC8DE9C(&v44, v16, size);
      }

      else
      {
        v44 = v16;
        v45 = size;
        *v46 = v56[0];
        *&v46[3] = *(v56 + 3);
        v47 = v18;
      }

      v36 = *(a1 + 56);
      if (*(v36 + 23) < 0)
      {
        sub_24BC8DE9C(__p, *v36, *(v36 + 1));
      }

      else
      {
        v37 = *v36;
        v43 = *(v36 + 2);
        *__p = v37;
      }

      sub_24BF90D10(&v54, v52, v50, v48, &v44, __p, **(a1 + 64), &v55);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v55;
      }

      else
      {
        v30 = v55.__r_.__value_.__r.__words[0];
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v31 = v55.__r_.__value_.__l.__size_;
      }
    }
  }

  else
  {
    v22 = *(a1 + 40);
    if (*(v22 + 23) < 0)
    {
      sub_24BC8DE9C(&v54, *v22, *(v22 + 1));
    }

    else
    {
      v23 = *v22;
      v54.__r_.__value_.__r.__words[2] = *(v22 + 2);
      *&v54.__r_.__value_.__l.__data_ = v23;
    }

    v26 = *(a1 + 48);
    if (*(v26 + 23) < 0)
    {
      sub_24BC8DE9C(v52, *v26, *(v26 + 1));
    }

    else
    {
      v27 = *v26;
      v53 = *(v26 + 2);
      *v52 = v27;
    }

    if (SHIBYTE(v60) < 0)
    {
      sub_24BC8DE9C(v50, v59, *(&v59 + 1));
    }

    else
    {
      *v50 = v59;
      v51 = v60;
    }

    if (SHIBYTE(v58) < 0)
    {
      sub_24BC8DE9C(v48, v57, *(&v57 + 1));
    }

    else
    {
      *v48 = v57;
      v49 = v58;
    }

    if (v18 < 0)
    {
      sub_24BC8DE9C(&v44, v16, size);
    }

    else
    {
      v44 = v16;
      v45 = size;
      *v46 = v56[0];
      *&v46[3] = *(v56 + 3);
      v47 = v18;
    }

    v28 = *(a1 + 56);
    if (*(v28 + 23) < 0)
    {
      sub_24BC8DE9C(__p, *v28, *(v28 + 1));
    }

    else
    {
      v29 = *v28;
      v43 = *(v28 + 2);
      *__p = v29;
    }

    sub_24BF90908(&v54, v52, v50, v48, &v44, __p, **(a1 + 64), **(a1 + 32), &v55, **(a1 + 72));
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v55;
    }

    else
    {
      v30 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v55.__r_.__value_.__l.__size_;
    }
  }

  std::string::append(a2, v30, v31);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  if (v47 < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_115;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_115;
  }

  operator delete(v16);
LABEL_115:
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__dst);
  }
}

void sub_24BF90728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v57 + 23) < 0)
  {
    operator delete(*v57);
  }

  if (v58 < 0)
  {
    operator delete(v56);
  }

  if (*(v59 - 137) < 0)
  {
    operator delete(*(v59 - 160));
  }

  if (*(v59 - 113) < 0)
  {
    operator delete(*(v59 - 136));
  }

  if (*(v59 - 89) < 0)
  {
    operator delete(*(v59 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF908BC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F878))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF90908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned int a10)
{
  v52[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v43);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  v22 = sub_24BC95264(&v43, v20, v21);
  sub_24BC95264(v22, "<", 1);
  v23 = *(a3 + 23);
  if (v23 >= 0)
  {
    v24 = a3;
  }

  else
  {
    v24 = *a3;
  }

  if (v23 >= 0)
  {
    v25 = *(a3 + 23);
  }

  else
  {
    v25 = *(a3 + 8);
  }

  sub_24BC95264(&v43, v24, v25);
  sub_24BC95264(&v43, ", ", 2);
  v26 = *(a4 + 23);
  if (v26 >= 0)
  {
    v27 = a4;
  }

  else
  {
    v27 = *a4;
  }

  if (v26 >= 0)
  {
    v28 = *(a4 + 23);
  }

  else
  {
    v28 = *(a4 + 8);
  }

  sub_24BC95264(&v43, v27, v28);
  sub_24BC95264(&v43, ", ", 2);
  v29 = *(a5 + 23);
  if (v29 >= 0)
  {
    v30 = a5;
  }

  else
  {
    v30 = *a5;
  }

  if (v29 >= 0)
  {
    v31 = *(a5 + 23);
  }

  else
  {
    v31 = *(a5 + 8);
  }

  sub_24BC95264(&v43, v30, v31);
  sub_24BC95264(&v43, ", ", 2);
  v32 = *(a6 + 23);
  if (v32 >= 0)
  {
    v33 = a6;
  }

  else
  {
    v33 = *a6;
  }

  if (v32 >= 0)
  {
    v34 = *(a6 + 23);
  }

  else
  {
    v34 = *(a6 + 8);
  }

  sub_24BC95264(&v43, v33, v34);
  sub_24BC95264(&v43, ", ", 2);
  MEMORY[0x24C2543C0](&v43, a7);
  sub_24BC95264(&v43, ", ", 2);
  MEMORY[0x24C2543C0](&v43, a8);
  sub_24BC95264(&v43, ", ", 2);
  MEMORY[0x24C2543C0](&v43, a10);
  sub_24BC95264(&v43, ">", 1);
  std::stringbuf::str();
  v35 = *(a1 + 23);
  v36 = *a1;
  if (v35 >= 0)
  {
    v36 = a1;
  }

  if (v35 < 0)
  {
    v35 = a1[1];
  }

  v37 = v42;
  v38 = v41[0];
  if (v42 >= 0)
  {
    v38 = v41;
  }

  if (v42 < 0)
  {
    v37 = v41[1];
  }

  v48[0] = v36;
  v48[1] = v35;
  v48[2] = v38;
  v48[3] = v37;
  v49 = &unk_285F9EFD0;
  __p = v52;
  v51 = xmmword_24BFF4C90;
  sub_24BF70F28(&v49, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v48, 0);
  sub_24BF7125C(&v49, a9);
  if (__p != v52)
  {
    operator delete(__p);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  v43 = *MEMORY[0x277D82828];
  *(&v43 + *(v43 - 24)) = *(MEMORY[0x277D82828] + 24);
  v44 = MEMORY[0x277D82878] + 16;
  if (v46 < 0)
  {
    operator delete(v45[7].__locale_);
  }

  v44 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v45);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v47);
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF90D10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v49[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v40);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  v19 = sub_24BC95264(&v40, v17, v18);
  sub_24BC95264(v19, "<", 1);
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
    v22 = *(a3 + 8);
  }

  sub_24BC95264(&v40, v21, v22);
  sub_24BC95264(&v40, ", ", 2);
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  sub_24BC95264(&v40, v24, v25);
  sub_24BC95264(&v40, ", ", 2);
  v26 = *(a5 + 23);
  if (v26 >= 0)
  {
    v27 = a5;
  }

  else
  {
    v27 = *a5;
  }

  if (v26 >= 0)
  {
    v28 = *(a5 + 23);
  }

  else
  {
    v28 = *(a5 + 8);
  }

  sub_24BC95264(&v40, v27, v28);
  sub_24BC95264(&v40, ", ", 2);
  v29 = *(a6 + 23);
  if (v29 >= 0)
  {
    v30 = a6;
  }

  else
  {
    v30 = *a6;
  }

  if (v29 >= 0)
  {
    v31 = *(a6 + 23);
  }

  else
  {
    v31 = *(a6 + 8);
  }

  sub_24BC95264(&v40, v30, v31);
  sub_24BC95264(&v40, ", ", 2);
  MEMORY[0x24C2543C0](&v40, a7);
  sub_24BC95264(&v40, ">", 1);
  std::stringbuf::str();
  v32 = *(a1 + 23);
  v33 = *a1;
  if (v32 >= 0)
  {
    v33 = a1;
  }

  if (v32 < 0)
  {
    v32 = a1[1];
  }

  v34 = v39;
  v35 = v38[0];
  if (v39 >= 0)
  {
    v35 = v38;
  }

  if (v39 < 0)
  {
    v34 = v38[1];
  }

  v45[0] = v33;
  v45[1] = v32;
  v45[2] = v35;
  v45[3] = v34;
  v46 = &unk_285F9EFD0;
  __p = v49;
  v48 = xmmword_24BFF4C90;
  sub_24BF70F28(&v46, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v45, 0);
  sub_24BF7125C(&v46, a8);
  if (__p != v49)
  {
    operator delete(__p);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  v40 = *MEMORY[0x277D82828];
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x277D82828] + 24);
  v41 = MEMORY[0x277D82878] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v42);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v44);
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF910D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v47[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v38);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_24BC95264(&v38, v15, v16);
  sub_24BC95264(v17, "<", 1);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  sub_24BC95264(&v38, v19, v20);
  sub_24BC95264(&v38, ", ", 2);
  v21 = *(a4 + 23);
  if (v21 >= 0)
  {
    v22 = a4;
  }

  else
  {
    v22 = *a4;
  }

  if (v21 >= 0)
  {
    v23 = *(a4 + 23);
  }

  else
  {
    v23 = *(a4 + 8);
  }

  sub_24BC95264(&v38, v22, v23);
  sub_24BC95264(&v38, ", ", 2);
  v24 = *(a5 + 23);
  if (v24 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  if (v24 >= 0)
  {
    v26 = *(a5 + 23);
  }

  else
  {
    v26 = *(a5 + 8);
  }

  sub_24BC95264(&v38, v25, v26);
  sub_24BC95264(&v38, ", ", 2);
  v27 = *(a6 + 23);
  if (v27 >= 0)
  {
    v28 = a6;
  }

  else
  {
    v28 = *a6;
  }

  if (v27 >= 0)
  {
    v29 = *(a6 + 23);
  }

  else
  {
    v29 = *(a6 + 8);
  }

  sub_24BC95264(&v38, v28, v29);
  sub_24BC95264(&v38, ">", 1);
  std::stringbuf::str();
  v30 = *(a1 + 23);
  v31 = *a1;
  if (v30 >= 0)
  {
    v31 = a1;
  }

  if (v30 < 0)
  {
    v30 = a1[1];
  }

  v32 = v37;
  v33 = v36[0];
  if (v37 >= 0)
  {
    v33 = v36;
  }

  if (v37 < 0)
  {
    v32 = v36[1];
  }

  v43[0] = v31;
  v43[1] = v30;
  v43[2] = v33;
  v43[3] = v32;
  v44 = &unk_285F9EFD0;
  __p = v47;
  v46 = xmmword_24BFF4C90;
  sub_24BF70F28(&v44, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v43, 0);
  sub_24BF7125C(&v44, a7);
  if (__p != v47)
  {
    operator delete(__p);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  v38 = *MEMORY[0x277D82828];
  *(&v38 + *(v38 - 24)) = *(MEMORY[0x277D82828] + 24);
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v42);
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_24BF91500(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F898;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_24BF91550(uint64_t a1)
{
  v58[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v31);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v31, v2, v3);
  v5 = sub_24BFB7A6C();
  v6 = strlen(v5);
  v7 = sub_24BC95264(v4, v5, v6);
  v8 = sub_24BFB7A9C();
  v9 = strlen(v8);
  v10 = sub_24BC95264(v7, v8, v9);
  v11 = *(a1 + 8);
  sub_24BF0BC74(*(**(a1 + 16) + 56) & 0xFFFFFFFFFFLL, v27);
  v12 = *(v11 + 23);
  v13 = *v11;
  if (v12 >= 0)
  {
    v13 = v11;
  }

  if (v12 < 0)
  {
    v12 = v11[1];
  }

  v14 = v28;
  v15 = v27[0];
  if (v28 >= 0)
  {
    v15 = v27;
  }

  if (v28 < 0)
  {
    v14 = v27[1];
  }

  v16 = **(a1 + 24);
  v17 = **(a1 + 32);
  v18 = **(a1 + 40);
  v19 = **(a1 + 48);
  v20 = **(a1 + 56);
  v21 = **(a1 + 64);
  v22 = **(a1 + 72);
  v35[19] = &v37;
  v35[20] = 9;
  v36[0] = v13;
  v36[1] = v12;
  v36[2] = v15;
  v36[3] = v14;
  v36[4] = v16;
  v36[5] = 0;
  v36[6] = v17;
  v36[7] = 0;
  v36[8] = v18;
  v36[9] = 0;
  v36[10] = v19;
  v36[11] = 0;
  v36[12] = v20;
  v36[13] = 0;
  v36[14] = v21;
  v36[15] = 0;
  v36[16] = v22;
  v36[17] = 0;
  v37 = "name";
  v38 = 0;
  v39 = "itype";
  v40 = 1;
  v41 = "bm";
  v42 = 2;
  v43 = "bn";
  v44 = 3;
  v45 = "bk";
  v46 = 4;
  v47 = "wm";
  v48 = 5;
  v49 = "wn";
  v50 = 6;
  v51 = "trans_a";
  v52 = 7;
  v53 = "trans_b";
  v54 = 8;
  v55 = &unk_285F9EFD0;
  __p = v58;
  v57 = xmmword_24BFF4C90;
  sub_24BF70F28(&v55, "\ntemplate [[host_name({name})]]\n[[kernel]] void gemm<{itype}, {bm}, {bn}, {bk}, {wm}, {wn}, {trans_a}, {trans_b}, float>(\n    const device {itype} *A [[buffer(0)]],\n    const device {itype} *B [[buffer(1)]],\n    const device {itype} *C [[buffer(2), function_constant(use_out_source)]],\n    device {itype} *D [[buffer(3)]],\n    const constant GEMMParams* params [[buffer(4)]],\n    const constant GEMMAddMMParams* addmm_params [[buffer(5), function_constant(use_out_source)]],\n    const constant int* batch_shape [[buffer(6)]],\n    const constant size_t* batch_strides [[buffer(7)]],\n    const constant uint32_t* lhs_indices [[buffer(10), function_constant(do_gather)]],\n    const constant uint32_t* rhs_indices [[buffer(11), function_constant(do_gather)]],\n    const constant uint32_t* C_indices [[buffer(12), function_constant(gather_bias)]],\n    const constant int* operand_shape [[buffer(13), function_constant(do_gather)]],\n    const constant size_t* operand_strides [[buffer(14), function_constant(do_gather)]],\n    const constant packed_int3& operand_batch_ndim [[buffer(15), function_constant(do_gather)]],\n    uint simd_lane_id [[thread_index_in_simdgroup]],\n    uint simd_group_id [[simdgroup_index_in_threadgroup]],\n    uint3 tid [[threadgroup_position_in_grid]],\n    uint3 lid [[thread_position_in_threadgroup]]);\n", 1326, 0x40000007711111DDLL, v36, 0);
  sub_24BF7125C(&v55, v29);
  if (__p != v58)
  {
    operator delete(__p);
  }

  if ((v30 & 0x80u) == 0)
  {
    v23 = v29;
  }

  else
  {
    v23 = v29[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v24 = v30;
  }

  else
  {
    v24 = v29[1];
  }

  sub_24BC95264(v10, v23, v24);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  std::stringbuf::str();
  v31 = *MEMORY[0x277D82828];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82828] + 24);
  v32 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v33);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](v35);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF91944(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, ...)
{
  va_start(va, a14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a8 < 0)
  {
    operator delete(a3);
  }

  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF919A0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F8F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BF91A88(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F918;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_24BF91AE0(uint64_t a1)
{
  v54[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v44);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v44, v2, v3);
  v5 = sub_24BFB7A6C();
  v6 = strlen(v5);
  v7 = sub_24BC95264(v4, v5, v6);
  v8 = sub_24BFB7B14();
  v9 = strlen(v8);
  v10 = sub_24BC95264(v7, v8, v9);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v41[0] = "name";
  v41[1] = v11;
  sub_24BF0BC74(*(*v12 + 56) & 0xFFFFFFFFFFLL, v38);
  v40[0] = "itype";
  v40[1] = v38;
  sub_24BF0BC74(*(**(a1 + 24) + 56) & 0xFFFFFFFFFFLL, v35);
  v37[0] = "otype";
  v37[1] = v35;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v34[0] = "bm";
  v34[1] = v13;
  v33[0] = "bn";
  v33[1] = v14;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v32[0] = "bk";
  v32[1] = v15;
  v31[0] = "wm";
  v31[1] = v16;
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v30[0] = "wn";
  v30[1] = v17;
  v29[0] = "trans_a";
  v29[1] = v18;
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  v28[0] = "trans_b";
  v28[1] = v19;
  v27[0] = "mn_aligned";
  v27[1] = v20;
  v21 = *(a1 + 96);
  v26[0] = "k_aligned";
  v26[1] = v21;
  sub_24BF91F70(v41, v40, v37, v34, v33, v32, v31, v30, v49, v29, v28, v27, v26);
  v51 = &unk_285F9EFD0;
  __p = v54;
  v53 = xmmword_24BFF4C90;
  sub_24BF70F28(&v51, "\ntemplate [[host_name({name})]] [[kernel]] void\ngemm_splitk<\n    {itype},\n    {otype},\n    {bm},\n    {bn},\n    {bk},\n    {wm},\n    {wn},\n    {trans_a},\n    {trans_b},\n    {mn_aligned},\n    {k_aligned}>(\n    const device {itype}* A [[buffer(0)]],\n    const device {itype}* B [[buffer(1)]],\n    device {otype}* C [[buffer(2)]],\n    const constant GEMMSpiltKParams* params [[buffer(3)]],\n    uint simd_lane_id [[thread_index_in_simdgroup]],\n    uint simd_group_id [[simdgroup_index_in_threadgroup]],\n    uint3 tid [[threadgroup_position_in_grid]],\n    uint3 lid [[thread_position_in_threadgroup]]);\n", 598, 0x4000777711111DDDLL, v50, 0);
  sub_24BF7125C(&v51, v42);
  if (__p != v54)
  {
    operator delete(__p);
  }

  if ((v43 & 0x80u) == 0)
  {
    v22 = v42;
  }

  else
  {
    v22 = v42[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v23 = v43;
  }

  else
  {
    v23 = v42[1];
  }

  sub_24BC95264(v10, v22, v23);
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  std::stringbuf::str();
  v44 = *MEMORY[0x277D82828];
  *(&v44 + *(v44 - 24)) = *(MEMORY[0x277D82828] + 24);
  v45 = MEMORY[0x277D82878] + 16;
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  v45 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v46);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v48);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF91EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_24BCE1400(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF91F24(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F978))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF91F70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = *(v14 + 23);
  v16 = v14[1];
  if (v15 < 0)
  {
    v14 = *v14;
  }

  if (v15 < 0)
  {
    v15 = v16;
  }

  v17 = *a2;
  v18 = a2[1];
  v19 = *(v18 + 23);
  v20 = v18[1];
  if (v19 >= 0)
  {
    v21 = a2[1];
  }

  else
  {
    v21 = *v18;
  }

  if (v19 >= 0)
  {
    v20 = *(v18 + 23);
  }

  v23 = *a3;
  v22 = a3[1];
  v24 = *(v22 + 23);
  v25 = v22[1];
  if (v24 >= 0)
  {
    v26 = a3[1];
  }

  else
  {
    v26 = *v22;
  }

  if (v24 >= 0)
  {
    v25 = *(v22 + 23);
  }

  result = *a4;
  v28 = *a4[1];
  v29 = *a5;
  v30 = *a5[1];
  v31 = *a6;
  v32 = *a6[1];
  v33 = *a7;
  v34 = *a7[1];
  v35 = *a8;
  v36 = *a8[1];
  v37 = *a10;
  v38 = *a10[1];
  v39 = *a11;
  v40 = *a11[1];
  v41 = *a12;
  v42 = *a12[1];
  v43 = *a13;
  v44 = *a13[1];
  *(a9 + 208) = v13;
  *a9 = a9 + 208;
  *(a9 + 8) = 12;
  *(a9 + 16) = v14;
  *(a9 + 24) = v15;
  *(a9 + 32) = v21;
  *(a9 + 40) = v20;
  *(a9 + 48) = v26;
  *(a9 + 56) = v25;
  *(a9 + 64) = v28;
  *(a9 + 72) = 0;
  *(a9 + 80) = v30;
  *(a9 + 88) = 0;
  *(a9 + 96) = v32;
  *(a9 + 104) = 0;
  *(a9 + 112) = v34;
  *(a9 + 120) = 0;
  *(a9 + 128) = v36;
  *(a9 + 136) = 0;
  *(a9 + 144) = v38;
  *(a9 + 152) = 0;
  *(a9 + 160) = v40;
  *(a9 + 168) = 0;
  *(a9 + 176) = v42;
  *(a9 + 184) = 0;
  *(a9 + 192) = v44;
  *(a9 + 200) = 0;
  *(a9 + 216) = 0;
  *(a9 + 224) = v17;
  *(a9 + 232) = 1;
  *(a9 + 240) = v23;
  *(a9 + 248) = 2;
  *(a9 + 256) = result;
  *(a9 + 264) = 3;
  *(a9 + 272) = v29;
  *(a9 + 280) = 4;
  *(a9 + 288) = v31;
  *(a9 + 296) = 5;
  *(a9 + 304) = v33;
  *(a9 + 312) = 6;
  *(a9 + 320) = v35;
  *(a9 + 328) = 7;
  *(a9 + 336) = v37;
  *(a9 + 344) = 8;
  *(a9 + 352) = v39;
  *(a9 + 360) = 9;
  *(a9 + 368) = v41;
  *(a9 + 376) = 10;
  *(a9 + 384) = v43;
  *(a9 + 392) = 11;
  return result;
}

__n128 sub_24BF92190(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9F998;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BF921C8(uint64_t a1)
{
  v37[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v27);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v27, v2, v3);
  v5 = sub_24BFB7A6C();
  v6 = strlen(v5);
  v7 = sub_24BC95264(v4, v5, v6);
  v8 = sub_24BFB7B14();
  v9 = strlen(v8);
  v10 = sub_24BC95264(v7, v8, v9);
  v11 = *(a1 + 16);
  if (**(a1 + 8))
  {
    v12 = "\ntemplate [[host_name({name})]] [[kernel]] void\ngemm_splitk_accum_axpby<{atype}, {otype}>(\n    const device {atype}* C_split [[buffer(0)]],\n    device {otype}* D [[buffer(1)]],\n    const constant int& k_partitions [[buffer(2)]],\n    const constant int& partition_stride [[buffer(3)]],\n    const constant int& ldd [[buffer(4)]],\n    const device {otype}* C [[buffer(5)]],\n    const constant int& ldc [[buffer(6)]],\n    const constant int& fdc [[buffer(7)]],\n    const constant float& alpha [[buffer(8)]],\n    const constant float& beta [[buffer(9)]],\n    uint2 gid [[thread_position_in_grid]]);\n";
  }

  else
  {
    v12 = "\ntemplate [[host_name({name})]] [[kernel]] void\ngemm_splitk_accum<{atype}, {otype}>(\n    const device {atype}* C_split [[buffer(0)]],\n    device {otype}* D [[buffer(1)]],\n    const constant int& k_partitions [[buffer(2)]],\n    const constant int& partition_stride [[buffer(3)]],\n    const constant int& ldd [[buffer(4)]],\n    uint2 gid [[thread_position_in_grid]]);\n";
  }

  if (**(a1 + 8))
  {
    v13 = 596;
  }

  else
  {
    v13 = 368;
  }

  v24[0] = "name";
  v24[1] = v11;
  sub_24BF0BC74(*(**(a1 + 24) + 56) & 0xFFFFFFFFFFLL, v21);
  v23[0] = "atype";
  v23[1] = v21;
  sub_24BF0BC74(*(**(a1 + 32) + 56) & 0xFFFFFFFFFFLL, v18);
  v20[0] = "otype";
  v20[1] = v18;
  sub_24BF925D0(v24, v23, v20, v32);
  v34 = &unk_285F9EFD0;
  __p = v37;
  v36 = xmmword_24BFF4C90;
  sub_24BF70F28(&v34, v12, v13, 0x4000000000000DDDLL, v33, 0);
  sub_24BF7125C(&v34, v25);
  if (__p != v37)
  {
    operator delete(__p);
  }

  if ((v26 & 0x80u) == 0)
  {
    v14 = v25;
  }

  else
  {
    v14 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v15 = v26;
  }

  else
  {
    v15 = v25[1];
  }

  sub_24BC95264(v10, v14, v15);
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  std::stringbuf::str();
  v27 = *MEMORY[0x277D82828];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x277D82828] + 24);
  v28 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v31);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF92508(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, ...)
{
  va_start(va, a25);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a7 < 0)
  {
    operator delete(a2);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF92584(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9F9F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF925D0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v5 = *(v4 + 23);
  v6 = v4[1];
  if (v5 < 0)
  {
    v4 = *v4;
  }

  if (v5 < 0)
  {
    v5 = v6;
  }

  v8 = *a2;
  v7 = a2[1];
  v9 = *(v7 + 23);
  v10 = v7[1];
  if (v9 < 0)
  {
    v7 = *v7;
  }

  if (v9 < 0)
  {
    v9 = v10;
  }

  v12 = *a3;
  v11 = a3[1];
  v13 = *(v11 + 23);
  v14 = v11[1];
  if (v13 < 0)
  {
    v11 = *v11;
  }

  if (v13 < 0)
  {
    v13 = v14;
  }

  *(a4 + 64) = *a1;
  result = a4 + 64;
  *a4 = a4 + 64;
  *(a4 + 8) = 3;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = v7;
  *(a4 + 40) = v9;
  *(a4 + 48) = v11;
  *(a4 + 56) = v13;
  *(a4 + 72) = 0;
  *(a4 + 80) = v8;
  *(a4 + 88) = 1;
  *(a4 + 96) = v12;
  *(a4 + 104) = 2;
  return result;
}

__n128 sub_24BF92704(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9FA18;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_24BF92764(void *a1)
{
  v59[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v49);
  v2 = a1[1];
  if (v2[16] == 1)
  {
    sub_24BF0BC74(*(*v2 + 56) & 0xFFFFFFFFFFLL, v47);
  }

  else
  {
    sub_24BC836D4(v47, "nomask_t");
  }

  v3 = a1[2];
  if (v3[16] == 1)
  {
    sub_24BF0BC74(*(*v3 + 56) & 0xFFFFFFFFFFLL, v45);
  }

  else
  {
    sub_24BC836D4(v45, "nomask_t");
  }

  v4 = sub_24BFB7B5C();
  v5 = strlen(v4);
  v6 = sub_24BC95264(&v49, v4, v5);
  v7 = sub_24BFB7A6C();
  v8 = strlen(v7);
  v9 = sub_24BC95264(v6, v7, v8);
  v10 = sub_24BFB7A54();
  v11 = strlen(v10);
  v12 = sub_24BC95264(v9, v10, v11);
  v13 = a1[3];
  v14 = a1[4];
  v42[0] = "name";
  v42[1] = v13;
  sub_24BF0BC74(*(*v14 + 56) & 0xFFFFFFFFFFLL, v39);
  v41[0] = "itype";
  v41[1] = v39;
  v38[0] = "outmasktype";
  v38[1] = v47;
  v37[0] = "opmasktype";
  v37[1] = v45;
  v15 = a1[5];
  v16 = a1[6];
  v36[0] = "bm";
  v36[1] = v15;
  v35[0] = "bn";
  v35[1] = v16;
  v17 = a1[7];
  v18 = a1[8];
  v34[0] = "bk";
  v34[1] = v17;
  v33[0] = "wm";
  v33[1] = v18;
  v19 = a1[9];
  v20 = a1[10];
  v32[0] = "wn";
  v32[1] = v19;
  v31[0] = "trans_a";
  v31[1] = v20;
  v21 = a1[11];
  v22 = a1[12];
  v30[0] = "trans_b";
  v30[1] = v21;
  v29[0] = "mn_aligned";
  v29[1] = v22;
  v23 = a1[13];
  v28[0] = "k_aligned";
  v28[1] = v23;
  sub_24BF92C8C(v42, v41, v38, v37, v36, v35, v34, v33, v54, v32, v31, v30, v29, v28);
  v56 = &unk_285F9EFD0;
  __p = v59;
  v58 = xmmword_24BFF4C90;
  sub_24BF70F28(&v56, "\ntemplate [[host_name({name})]] [[kernel]] void\nblock_masked_gemm<\n    {itype},\n    {outmasktype},\n    {opmasktype},\n    {bm},\n    {bn},\n    {bk},\n    {wm},\n    {wn},\n    {trans_a},\n    {trans_b},\n    {mn_aligned},\n    {k_aligned}>(\n    const device {itype}* A [[buffer(0)]],\n    const device {itype}* B [[buffer(1)]],\n    device {itype}* D [[buffer(3)]],\n    const constant GEMMParams* params [[buffer(4)]],\n    const constant int* batch_shape [[buffer(6)]],\n    const constant size_t* batch_strides [[buffer(7)]],\n    const device {outmasktype}* out_mask [[buffer(10)]],\n    const device {opmasktype}* lhs_mask [[buffer(11)]],\n    const device {opmasktype}* rhs_mask [[buffer(12)]],\n    const constant int* mask_strides [[buffer(13)]],\n    uint simd_lane_id [[thread_index_in_simdgroup]],\n    uint simd_group_id [[simdgroup_index_in_threadgroup]],\n    uint3 tid [[threadgroup_position_in_grid]],\n    uint3 lid [[thread_position_in_threadgroup]]);\n", 951, 0x400777711111DDDDLL, v55, 0);
  sub_24BF7125C(&v56, v43);
  if (__p != v59)
  {
    operator delete(__p);
  }

  if ((v44 & 0x80u) == 0)
  {
    v24 = v43;
  }

  else
  {
    v24 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v25 = v44;
  }

  else
  {
    v25 = v43[1];
  }

  sub_24BC95264(v12, v24, v25);
  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  std::stringbuf::str();
  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  v49 = *MEMORY[0x277D82828];
  *(&v49 + *(v49 - 24)) = *(MEMORY[0x277D82828] + 24);
  v50 = MEMORY[0x277D82878] + 16;
  if (v52 < 0)
  {
    operator delete(v51[7].__locale_);
  }

  v50 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v51);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v53);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF92BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  sub_24BCE1400(&a64);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF92C40(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FA78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF92C8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v15 = *a1;
  v14 = a1[1];
  v16 = *(v14 + 23);
  if (v16 >= 0)
  {
    v17 = a1[1];
  }

  else
  {
    v17 = *v14;
  }

  v53 = v17;
  if (v16 >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = v14[1];
  }

  v52 = v18;
  v20 = *a2;
  v19 = a2[1];
  v21 = *(v19 + 23);
  v22 = *v19;
  v23 = v19[1];
  if (v21 >= 0)
  {
    v22 = v19;
  }

  if (v21 >= 0)
  {
    v23 = *(v19 + 23);
  }

  result = *a3;
  v25 = a3[1];
  v26 = *(v25 + 23);
  v27 = *v25;
  v28 = v25[1];
  if (v26 >= 0)
  {
    v27 = v25;
  }

  if (v26 >= 0)
  {
    v28 = *(v25 + 23);
  }

  v29 = *a4;
  v30 = a4[1];
  v31 = *(v30 + 23);
  v32 = *v30;
  v33 = v30[1];
  if (v31 >= 0)
  {
    v32 = v30;
  }

  if (v31 >= 0)
  {
    v33 = *(v30 + 23);
  }

  v34 = *a5;
  v35 = *a5[1];
  v36 = *a6;
  v37 = *a6[1];
  v38 = *a7;
  v39 = *a7[1];
  v40 = *a8;
  v41 = *a8[1];
  v42 = *a10;
  v43 = *a10[1];
  v44 = *a11;
  v45 = *a11[1];
  v46 = *a12;
  v47 = *a12[1];
  *(a9 + 224) = v15;
  *a9 = a9 + 224;
  v48 = *a13;
  v49 = *a13[1];
  *(a9 + 8) = 13;
  v50 = *a14;
  v51 = *a14[1];
  *(a9 + 16) = v53;
  *(a9 + 24) = v52;
  *(a9 + 32) = v22;
  *(a9 + 40) = v23;
  *(a9 + 48) = v27;
  *(a9 + 56) = v28;
  *(a9 + 64) = v32;
  *(a9 + 72) = v33;
  *(a9 + 80) = v35;
  *(a9 + 96) = v37;
  *(a9 + 112) = v39;
  *(a9 + 128) = v41;
  *(a9 + 144) = v43;
  *(a9 + 160) = v45;
  *(a9 + 176) = v47;
  *(a9 + 192) = v49;
  *(a9 + 208) = v51;
  *(a9 + 240) = v20;
  *(a9 + 248) = 1;
  *(a9 + 256) = result;
  *(a9 + 264) = 2;
  *(a9 + 272) = v29;
  *(a9 + 280) = 3;
  *(a9 + 288) = v34;
  *(a9 + 296) = 4;
  *(a9 + 304) = v36;
  *(a9 + 312) = 5;
  *(a9 + 320) = v38;
  *(a9 + 328) = 6;
  *(a9 + 336) = v40;
  *(a9 + 344) = 7;
  *(a9 + 352) = v42;
  *(a9 + 360) = 8;
  *(a9 + 368) = v44;
  *(a9 + 376) = 9;
  *(a9 + 384) = v46;
  *(a9 + 392) = 10;
  *(a9 + 400) = v48;
  *(a9 + 408) = 11;
  *(a9 + 416) = v50;
  *(a9 + 424) = 12;
  *(a9 + 88) = 0;
  *(a9 + 104) = 0;
  *(a9 + 120) = 0;
  *(a9 + 136) = 0;
  *(a9 + 152) = 0;
  *(a9 + 168) = 0;
  *(a9 + 184) = 0;
  *(a9 + 200) = 0;
  *(a9 + 216) = 0;
  *(a9 + 232) = 0;
  return result;
}

__n128 sub_24BF92F40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9FA98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_24BF92F98(uint64_t a1)
{
  v56[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v46);
  v2 = *(a1 + 8);
  if (v2[16] == 1)
  {
    sub_24BF0BC74(*(*v2 + 56) & 0xFFFFFFFFFFLL, v44);
  }

  else
  {
    sub_24BC836D4(v44, "nomask_t");
  }

  v3 = *(a1 + 16);
  if (v3[16] == 1)
  {
    sub_24BF0BC74(*(*v3 + 56) & 0xFFFFFFFFFFLL, v42);
  }

  else
  {
    sub_24BC836D4(v42, "nomask_t");
  }

  v4 = sub_24BFB7B5C();
  v5 = strlen(v4);
  v6 = sub_24BC95264(&v46, v4, v5);
  v7 = sub_24BFB7B20();
  v8 = strlen(v7);
  v9 = sub_24BC95264(v6, v7, v8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v39[0] = "name";
  v39[1] = v10;
  sub_24BF0BC74(*(*v11 + 56) & 0xFFFFFFFFFFLL, v36);
  v38[0] = "itype";
  v38[1] = v36;
  v35[0] = "outm_t";
  v35[1] = v44;
  v34[0] = "opm_t";
  v34[1] = v42;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v33[0] = "bm";
  v33[1] = v12;
  v32[0] = "bn";
  v32[1] = v13;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v31[0] = "sm";
  v31[1] = v14;
  v30[0] = "sn";
  v30[1] = v15;
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v29[0] = "tm";
  v29[1] = v16;
  v28[0] = "tn";
  v28[1] = v17;
  v18 = &unk_24C0435AF;
  v19 = *(a1 + 96);
  if (**(a1 + 88))
  {
    v18 = "t_";
  }

  v26 = v18;
  v27[0] = "trans";
  v27[1] = &v26;
  if (*v19)
  {
    v20 = "0";
  }

  else
  {
    v20 = "1";
  }

  v25[0] = "nc";
  v25[1] = v20;
  sub_24BF934C8(v39, v38, v35, v34, v33, v32, v31, v30, v51, v29, v28, v27, v25);
  v53 = &unk_285F9EFD0;
  __p = v56;
  v55 = xmmword_24BFF4C90;
  sub_24BF70F28(&v53, "\ntemplate [[host_name({name})]] [[kernel]] void\ngemv_{trans}masked<{itype}, {outm_t}, {opm_t}, {bm}, {bn}, {sm}, {sn}, {tm}, {tn}, {nc}>(\n    const device {itype}* mat [[buffer(0)]],\n    const device {itype}* in_vec [[buffer(1)]],\n    device {itype}* out_vec [[buffer(3)]],\n    const constant int& in_vec_size [[buffer(4)]],\n    const constant int& out_vec_size [[buffer(5)]],\n    const constant int& marix_ld [[buffer(6)]],\n    const constant int& batch_ndim [[buffer(9)]],\n    const constant int* batch_shape [[buffer(10)]],\n    const constant size_t* vector_batch_stride [[buffer(11)]],\n    const constant size_t* matrix_batch_stride [[buffer(12)]],\n    const device {outm_t}* out_mask [[buffer(20)]],\n    const device {opm_t}* mat_mask [[buffer(21)]],\n    const device {opm_t}* vec_mask [[buffer(22)]],\n    const constant int* mask_strides [[buffer(23)]],\n    const constant size_t* mask_batch_strides [[buffer(24)]],\n    uint3 tid [[threadgroup_position_in_grid]],\n    uint3 lid [[thread_position_in_threadgroup]],\n    uint simd_gid [[simdgroup_index_in_threadgroup]],\n    uint simd_lid [[thread_index_in_simdgroup]]);\n", 1126, 0x4000CC111111DDDDLL, v52, 0);
  sub_24BF7125C(&v53, v40);
  if (__p != v56)
  {
    operator delete(__p);
  }

  if ((v41 & 0x80u) == 0)
  {
    v21 = v40;
  }

  else
  {
    v21 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v22 = v41;
  }

  else
  {
    v22 = v40[1];
  }

  sub_24BC95264(v9, v21, v22);
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::stringbuf::str();
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  v46 = *MEMORY[0x277D82828];
  *(&v46 + *(v46 - 24)) = *(MEMORY[0x277D82828] + 24);
  v47 = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(v48[7].__locale_);
  }

  v47 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v48);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v50);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF933E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  sub_24BCE1400(&a62);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF9347C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FAF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF934C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = *(v14 + 23);
  v16 = v14[1];
  if (v15 < 0)
  {
    v14 = *v14;
  }

  if (v15 < 0)
  {
    v15 = v16;
  }

  v17 = *a2;
  v18 = a2[1];
  v19 = *(v18 + 23);
  v20 = v18[1];
  if (v19 >= 0)
  {
    v21 = a2[1];
  }

  else
  {
    v21 = *v18;
  }

  if (v19 >= 0)
  {
    v20 = *(v18 + 23);
  }

  v23 = *a3;
  v22 = a3[1];
  v24 = *(v22 + 23);
  v25 = v22[1];
  if (v24 >= 0)
  {
    v26 = a3[1];
  }

  else
  {
    v26 = *v22;
  }

  if (v24 >= 0)
  {
    v25 = *(v22 + 23);
  }

  result = *a4;
  v28 = a4[1];
  v29 = *(v28 + 23);
  v30 = v28[1];
  if (v29 >= 0)
  {
    v31 = a4[1];
  }

  else
  {
    v31 = *v28;
  }

  if (v29 >= 0)
  {
    v30 = *(v28 + 23);
  }

  v32 = *a5;
  v33 = *a5[1];
  v34 = *a6;
  v35 = *a6[1];
  v36 = *a7;
  v37 = *a7[1];
  v38 = *a8;
  v39 = *a8[1];
  v40 = *a10;
  v41 = *a10[1];
  v42 = *a11;
  v43 = *a11[1];
  v44 = *a12;
  v45 = *a12[1];
  *(a9 + 208) = v13;
  *a9 = a9 + 208;
  *(a9 + 8) = 12;
  *(a9 + 16) = v14;
  *(a9 + 24) = v15;
  *(a9 + 32) = v21;
  *(a9 + 40) = v20;
  *(a9 + 48) = v26;
  *(a9 + 56) = v25;
  *(a9 + 64) = v31;
  *(a9 + 72) = v30;
  *(a9 + 80) = v33;
  *(a9 + 88) = 0;
  *(a9 + 96) = v35;
  *(a9 + 104) = 0;
  *(a9 + 112) = v37;
  *(a9 + 120) = 0;
  *(a9 + 128) = v39;
  *(a9 + 136) = 0;
  *(a9 + 144) = v41;
  *(a9 + 152) = 0;
  *(a9 + 160) = v43;
  *(a9 + 168) = 0;
  *(a9 + 176) = v45;
  *(a9 + 184) = 0;
  v46 = *a13;
  *(a9 + 192) = a13[1];
  *(a9 + 200) = 0;
  *(a9 + 216) = 0;
  *(a9 + 224) = v17;
  *(a9 + 232) = 1;
  *(a9 + 240) = v23;
  *(a9 + 248) = 2;
  *(a9 + 256) = result;
  *(a9 + 264) = 3;
  *(a9 + 272) = v32;
  *(a9 + 280) = 4;
  *(a9 + 288) = v34;
  *(a9 + 296) = 5;
  *(a9 + 304) = v36;
  *(a9 + 312) = 6;
  *(a9 + 320) = v38;
  *(a9 + 328) = 7;
  *(a9 + 336) = v40;
  *(a9 + 344) = 8;
  *(a9 + 352) = v42;
  *(a9 + 360) = 9;
  *(a9 + 368) = v44;
  *(a9 + 376) = 10;
  *(a9 + 384) = v46;
  *(a9 + 392) = 11;
  return result;
}

__n128 sub_24BF93710(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9FB18;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_24BF93760(uint64_t a1)
{
  v58[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v31);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v31, v2, v3);
  v5 = sub_24BFB7AC0();
  v6 = strlen(v5);
  v7 = sub_24BC95264(v4, v5, v6);
  v8 = sub_24BFB7AF0();
  v9 = strlen(v8);
  v10 = sub_24BC95264(v7, v8, v9);
  v11 = *(a1 + 8);
  sub_24BF0BC74(*(**(a1 + 16) + 56) & 0xFFFFFFFFFFLL, v27);
  v12 = *(v11 + 23);
  v13 = *v11;
  if (v12 >= 0)
  {
    v13 = v11;
  }

  if (v12 < 0)
  {
    v12 = v11[1];
  }

  v14 = v28;
  v15 = v27[0];
  if (v28 >= 0)
  {
    v15 = v27;
  }

  if (v28 < 0)
  {
    v14 = v27[1];
  }

  v16 = **(a1 + 24);
  v17 = **(a1 + 32);
  v18 = **(a1 + 40);
  v19 = **(a1 + 48);
  v20 = **(a1 + 56);
  v21 = **(a1 + 64);
  v22 = **(a1 + 72);
  v35[19] = &v37;
  v35[20] = 9;
  v36[0] = v13;
  v36[1] = v12;
  v36[2] = v15;
  v36[3] = v14;
  v36[4] = v16;
  v36[5] = 0;
  v36[6] = v17;
  v36[7] = 0;
  v36[8] = v18;
  v36[9] = 0;
  v36[10] = v19;
  v36[11] = 0;
  v36[12] = v20;
  v36[13] = 0;
  v36[14] = v21;
  v36[15] = 0;
  v36[16] = v22;
  v36[17] = 0;
  v37 = "name";
  v38 = 0;
  v39 = "itype";
  v40 = 1;
  v41 = "bm";
  v42 = 2;
  v43 = "bn";
  v44 = 3;
  v45 = "bk";
  v46 = 4;
  v47 = "wm";
  v48 = 5;
  v49 = "wn";
  v50 = 6;
  v51 = "n_channels";
  v52 = 7;
  v53 = "small_filter";
  v54 = 8;
  v55 = &unk_285F9EFD0;
  __p = v58;
  v57 = xmmword_24BFF4C90;
  sub_24BF70F28(&v55, "\ntemplate [[host_name({name})]] [[kernel]] void\nimplicit_gemm_conv_2d<{itype}, {bm}, {bn}, {bk}, {wm}, {wn}, {n_channels}, {small_filter}>(\n    const device {itype}* A [[buffer(0)]],\n    const device {itype}* B [[buffer(1)]],\n    device {itype}* C [[buffer(2)]],\n    const constant MLXConvParams<2>* params [[buffer(3)]],\n    const constant ImplicitGemmConv2DParams* gemm_params [[buffer(4)]],\n    uint3 tid [[threadgroup_position_in_grid]],\n    uint3 lid [[thread_position_in_threadgroup]],\n    uint simd_gid [[simdgroup_index_in_threadgroup]],\n    uint simd_lid [[thread_index_in_simdgroup]]);\n", 598, 0x40000007111111DDLL, v36, 0);
  sub_24BF7125C(&v55, v29);
  if (__p != v58)
  {
    operator delete(__p);
  }

  if ((v30 & 0x80u) == 0)
  {
    v23 = v29;
  }

  else
  {
    v23 = v29[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v24 = v30;
  }

  else
  {
    v24 = v29[1];
  }

  sub_24BC95264(v10, v23, v24);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  std::stringbuf::str();
  v31 = *MEMORY[0x277D82828];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82828] + 24);
  v32 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v33);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](v35);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF93B54(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, ...)
{
  va_start(va, a14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a8 < 0)
  {
    operator delete(a3);
  }

  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF93BB0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FB78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BF93C88(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9FB98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BF93CD0(uint64_t a1)
{
  v52[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v29);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v29, v2, v3);
  v5 = sub_24BFB7AC0();
  v6 = strlen(v5);
  v7 = sub_24BC95264(v4, v5, v6);
  v8 = sub_24BFB7A30();
  v9 = strlen(v8);
  v10 = sub_24BC95264(v7, v8, v9);
  v11 = *(a1 + 8);
  sub_24BF0BC74(*(**(a1 + 16) + 56) & 0xFFFFFFFFFFLL, v25);
  v12 = *(v11 + 23);
  v13 = *v11;
  if (v12 >= 0)
  {
    v13 = v11;
  }

  if (v12 < 0)
  {
    v12 = v11[1];
  }

  v14 = v26;
  v15 = v25[0];
  if (v26 >= 0)
  {
    v15 = v25;
  }

  if (v26 < 0)
  {
    v14 = v25[1];
  }

  v16 = **(a1 + 24);
  v17 = **(a1 + 32);
  v18 = **(a1 + 40);
  v19 = **(a1 + 48);
  v20 = **(a1 + 56);
  v33[19] = &v35;
  v33[20] = 7;
  v34[0] = v13;
  v34[1] = v12;
  v34[2] = v15;
  v34[3] = v14;
  v34[4] = v16;
  v34[5] = 0;
  v34[6] = v17;
  v34[7] = 0;
  v34[8] = v18;
  v34[9] = 0;
  v34[10] = v19;
  v34[11] = 0;
  v34[12] = v20;
  v34[13] = 0;
  v35 = "name";
  v36 = 0;
  v37 = "itype";
  v38 = 1;
  v39 = "bm";
  v40 = 2;
  v41 = "bn";
  v42 = 3;
  v43 = "bk";
  v44 = 4;
  v45 = "wm";
  v46 = 5;
  v47 = "wn";
  v48 = 6;
  v49 = &unk_285F9EFD0;
  __p = v52;
  v51 = xmmword_24BFF4C90;
  sub_24BF70F28(&v49, "\ntemplate [[host_name({name})]] [[kernel]] void\n    implicit_gemm_conv_2d_general<{itype}, {bm}, {bn}, {bk}, {wm}, {wn}>(\n        const device {itype}* A [[buffer(0)]],\n        const device {itype}* B [[buffer(1)]],\n        device {itype}* C [[buffer(2)]],\n        const constant MLXConvParams<2>* params [[buffer(3)]],\n        const constant ImplicitGemmConv2DParams* gemm_params [[buffer(4)]],\n        const constant Conv2DGeneralJumpParams* jump_params [[buffer(5)]],\n        const constant Conv2DGeneralBaseInfo* base_h [[buffer(6)]],\n        const constant Conv2DGeneralBaseInfo* base_w [[buffer(7)]],\n        uint3 tid [[threadgroup_position_in_grid]],\n        uint3 lid [[thread_position_in_threadgroup]],\n        uint simd_gid [[simdgroup_index_in_threadgroup]],\n        uint simd_lid [[thread_index_in_simdgroup]]);\n", 827, 0x40000000011111DDLL, v34, 0);
  sub_24BF7125C(&v49, v27);
  if (__p != v52)
  {
    operator delete(__p);
  }

  if ((v28 & 0x80u) == 0)
  {
    v21 = v27;
  }

  else
  {
    v21 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v22 = v28;
  }

  else
  {
    v22 = v27[1];
  }

  sub_24BC95264(v10, v21, v22);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  std::stringbuf::str();
  v29 = *MEMORY[0x277D82828];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x277D82828] + 24);
  v30 = MEMORY[0x277D82878] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](v33);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF94084(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, ...)
{
  va_start(va, a14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a8 < 0)
  {
    operator delete(a3);
  }

  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF940E0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FBF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF9419C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F9FC18;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BF941C8(uint64_t a1)
{
  sub_24BCE1268(&v10);
  v2 = sub_24BFB7AD8();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v10, v2, v3);
  v5 = *(a1 + 8);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  sub_24BC95264(v4, v7, v8);
  std::stringbuf::str();
  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](&v14);
}

void sub_24BF94348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF9435C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FC78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF94418(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F9FC98;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BF94444(uint64_t a1)
{
  sub_24BCE1268(&v16);
  v2 = sub_24BFB7B5C();
  v3 = strlen(v2);
  v4 = sub_24BC95264(&v16, v2, v3);
  v5 = sub_24BFB7A6C();
  v6 = strlen(v5);
  v7 = sub_24BC95264(v4, v5, v6);
  v8 = sub_24BFB7AFC();
  v9 = strlen(v8);
  v10 = sub_24BC95264(v7, v8, v9);
  v11 = *(a1 + 8);
  v12 = *(v11 + 23);
  if (v12 >= 0)
  {
    v13 = *(a1 + 8);
  }

  else
  {
    v13 = *v11;
  }

  if (v12 >= 0)
  {
    v14 = *(v11 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  sub_24BC95264(v10, v13, v14);
  std::stringbuf::str();
  v16 = *MEMORY[0x277D82828];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](&v20);
}

void sub_24BF9460C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF94620(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FCF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BF94678(uint64_t a1, uint64_t a2)
{
  v3 = sub_24BF9466C(a1, a2);
  if (v3)
  {
    *(v4 + 8) = v3;
    operator delete(v3);
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }
}

void sub_24BF946B4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, int a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, void *a13)
{
  v95[0] = *MEMORY[0x277D85DE8];
  v15 = a2 + 472;
  v16 = *(a2 + 495);
  if ((v16 & 0x80u) != 0)
  {
    v15 = *(a2 + 472);
    v16 = *(a2 + 480);
  }

  v17 = *(v15 + v16 - 1);
  if (v17 != 100)
  {
    if (v17 == 103)
    {
      if (a12 && !a11)
      {
        goto LABEL_7;
      }

      if (*(*a5 + 56) == 10)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v21 = 64;
      v19 = 16;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v22 = *(*a5 + 56);
  if ((a7 * a6 * a9) >= 0x100000)
  {
    if (v22 == 10)
    {
LABEL_10:
      v21 = 64;
      v19 = 16;
      v20 = 2;
LABEL_26:
      v18 = 64;
LABEL_27:
      sub_24BCE1268(&v80);
      v25 = sub_24BC95264(&v80, "steel_gemm_fused_", 17);
      if (a11)
      {
        v26 = 116;
      }

      else
      {
        v26 = 110;
      }

      LOBYTE(v81) = v26;
      v27 = sub_24BC95264(v25, &v81, 1);
      if (a12)
      {
        v28 = 116;
      }

      else
      {
        v28 = 110;
      }

      LOBYTE(v81) = v28;
      v29 = sub_24BC95264(v27, &v81, 1);
      v30 = sub_24BC95264(v29, "_", 1);
      sub_24BFB7BD8(a3, &v81);
      if (v82 >= 0)
      {
        v31 = &v81;
      }

      else
      {
        v31 = v81;
      }

      if (v82 >= 0)
      {
        v32 = HIBYTE(v82);
      }

      else
      {
        v32 = v82;
      }

      v33 = sub_24BC95264(v30, v31, v32);
      v34 = sub_24BC95264(v33, "_", 1);
      sub_24BFB7BD8(a5, __p);
      if ((v79 & 0x80u) == 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      if ((v79 & 0x80u) == 0)
      {
        v36 = v79;
      }

      else
      {
        v36 = __p[1];
      }

      v37 = sub_24BC95264(v34, v35, v36);
      v38 = sub_24BC95264(v37, "_bm", 3);
      v39 = MEMORY[0x24C2543C0](v38, v18);
      v40 = sub_24BC95264(v39, "_bn", 3);
      v41 = MEMORY[0x24C2543C0](v40, v21);
      v42 = sub_24BC95264(v41, "_bk", 3);
      v43 = MEMORY[0x24C2543C0](v42, v19);
      v44 = sub_24BC95264(v43, "_wm", 3);
      v45 = MEMORY[0x24C2543C0](v44, v20);
      v46 = sub_24BC95264(v45, "_wn", 3);
      MEMORY[0x24C2543C0](v46, 2);
      if (v79 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81);
      }

      std::stringbuf::str();
      v77 = a13[1] - *a13 > 4uLL;
      v76 = 0;
      v75 = 0;
      v74 = ((v18 - 1) & a6) == 0;
      v73 = ((v21 - 1) & a7) == 0;
      v72 = ((v19 - 1) & a8) == 0;
      v71 = 0;
      v82 = xmmword_24BFF8000;
      v81 = &v77;
      v83 = &v76;
      v84 = xmmword_24BFF8010;
      v86 = xmmword_24BFF8020;
      v85 = &v75;
      v87 = &v74;
      v88 = xmmword_24BFF8030;
      v90 = xmmword_24BFF8040;
      v89 = &v73;
      v91 = &v72;
      v92 = xmmword_24BFF8050;
      v93 = &v71;
      v94 = xmmword_24BFF8060;
      memset(v70, 0, sizeof(v70));
      sub_24BF70E04(v70, &v81, v95, 7uLL);
      v47 = sub_24BC95264(&v80, "_has_batch_", 11);
      if (v77)
      {
        v48 = 116;
      }

      else
      {
        v48 = 110;
      }

      LOBYTE(v81) = v48;
      v49 = sub_24BC95264(v47, &v81, 1);
      v50 = sub_24BC95264(v49, "_use_out_source_", 16);
      LOBYTE(v81) = 110;
      v51 = sub_24BC95264(v50, &v81, 1);
      v52 = sub_24BC95264(v51, "_do_axpby_", 10);
      LOBYTE(v81) = 110;
      v53 = sub_24BC95264(v52, &v81, 1);
      v54 = sub_24BC95264(v53, "_align_M_", 9);
      if (v74)
      {
        v55 = 116;
      }

      else
      {
        v55 = 110;
      }

      LOBYTE(v81) = v55;
      v56 = sub_24BC95264(v54, &v81, 1);
      v57 = sub_24BC95264(v56, "_align_N_", 9);
      if (v73)
      {
        v58 = 116;
      }

      else
      {
        v58 = 110;
      }

      LOBYTE(v81) = v58;
      v59 = sub_24BC95264(v57, &v81, 1);
      v60 = sub_24BC95264(v59, "_align_K_", 9);
      if (v72)
      {
        v61 = 116;
      }

      else
      {
        v61 = 110;
      }

      LOBYTE(v81) = v61;
      v62 = sub_24BC95264(v60, &v81, 1);
      v63 = sub_24BC95264(v62, "_do_gather_", 11);
      LOBYTE(v81) = 110;
      sub_24BC95264(v63, &v81, 1);
      std::stringbuf::str();
      sub_24BF5488C(a2, *a1);
      sub_24BF87DFC(a2, __p, &v69, v70, a5, a11, a12, v18);
    }

    v24 = a7;
    if (a6 > a7)
    {
      v24 = a6;
    }

    if (a8 >= 2 * v24)
    {
      if (a12 && !a11)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

LABEL_25:
    v21 = 64;
    v19 = 16;
    v20 = 1;
    goto LABEL_26;
  }

  v23 = a12 ^ 1 | a11;
  if (v22 == 10)
  {
    if (!v23)
    {
LABEL_17:
      v18 = 32;
      v21 = 64;
      v19 = 16;
      v20 = 1;
      goto LABEL_27;
    }
  }

  else if (v23)
  {
    goto LABEL_25;
  }

LABEL_7:
  v18 = 64;
  v19 = 32;
  v20 = 2;
  v21 = 32;
  goto LABEL_27;
}

void sub_24BF94F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46)
{
  sub_24BCC961C(&a27);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  sub_24BCE1400(&a46);
  _Unwind_Resume(a1);
}

void sub_24BF95048(int *a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t a5, int a6, int a7, unsigned int a8, int a9, int a10, unsigned int a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, void **a15, uint64_t *a16, uint64_t a17)
{
  v21 = a9;
  v53 = *MEMORY[0x277D85DE8];
  v44 = a7;
  if (*a15 == a15[1])
  {
    sub_24BF95DA8(a3, a4, __src);
    if (__src != a15)
    {
      sub_24BCA2A30(a15, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
    }

    if (&v49 != a16)
    {
      sub_24BD07E64(a16, v49, v50, (v50 - v49) >> 3);
    }

    if (&__p != a17)
    {
      sub_24BD07E64(a17, __p, v52, (v52 - __p) >> 3);
    }

    if (a9 >= 2 && (a12 & 1) == 0)
    {
      v22 = a15[1];
      if (v22 - *a15 == 4 && *((*a3)[3] + 2 * ((*a3)[1] - **a3) - 16) == a8 && *(a16[1] - 8) == a8 * a6 && !*(*(a17 + 8) - 8))
      {
        v23 = *(v22 - 1);
        v45 = 0;
        sub_24BF9DB2C(a16, &v45, &v46, 1uLL);
        v45 = 0;
        sub_24BF9DB2C(a17, &v45, &v46, 1uLL);
        LODWORD(v45) = 1;
        sub_24BD68FCC(a15, &v45, &v45 + 4, 1uLL);
        a6 *= v23;
        v21 = 1;
      }
    }

    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }
  }

  if (v21 == 1)
  {
    v24 = a7 + 15;
    if (a7 >= 0)
    {
      v24 = a7;
    }

    v25 = a6 + 15;
    if (a6 >= 0)
    {
      v25 = a6;
    }

    if (a8 >= 128 && (v24 >> 4) * (v25 >> 4) <= 32)
    {
      if (a8 >= 0x400)
      {
        v26 = 16;
      }

      else
      {
        v26 = 8;
      }

      if (a8 < 0x200)
      {
        v26 = 4;
      }

      if (a8 >= 0x100)
      {
        v27 = v26;
      }

      else
      {
        v27 = 2;
      }

      v43 = v27;
      v42 = a6 * a7;
      __src[0] = __PAIR64__(a6, v27);
      LODWORD(__src[1]) = a7;
      memset(v41, 0, sizeof(v41));
      sub_24BCC9910(v41, __src, &__src[1] + 4, 3uLL);
      v39 = 0;
      v40 = 0;
      v37 = 0;
      v38 = 0;
      v36 = 0;
      sub_24BE7E8D4();
    }
  }

  __src[1] = 0;
  __src[0] = 0;
  v48 = 0;
  sub_24BD7E680(__src, *a16, a16[1], (a16[1] - *a16) >> 3);
  sub_24BF9DC60(__src, __src[1], *a17, *(a17 + 8), (*(a17 + 8) - *a17) >> 3);
  v34 = *a15;
  v35 = a15[2];
  a15[1] = 0;
  a15[2] = 0;
  *a15 = 0;
  __src[0] = 0;
  __src[1] = 0;
  v48 = 0;
  v28 = *(a16[1] - 8);
  v29 = *(*(a17 + 8) - 8);
  sub_24BF946B4(a1, a2, a3, a4, a5, a6, a7, a8, v21, __SPAIR64__(a7, a11), a12, a13, &v34);
}

void sub_24BF95DA8(uint64_t **a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = **a1;
  v7 = (*a1)[1] - 8;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  sub_24BEA2D98(&v38, v6, v7, (v7 - v6) >> 2);
  v8 = **a2;
  v9 = (*a2)[1] - 8;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  sub_24BEA2D98(&v35, v8, v9, (v9 - v8) >> 2);
  if (v39 - v38 != v36 - v35 || memcmp(v38, v35, v39 - v38))
  {
    sub_24BCE1268(&v32);
    v17 = sub_24BC95264(&v32, "[matmul] Got matrices with incorrectly broadcasted shapes: ", 59);
    v18 = sub_24BC95264(v17, "A ", 2);
    v19 = sub_24BF02DB8(v18, *a1);
    v20 = sub_24BC95264(v19, ", B ", 4);
    v21 = sub_24BF02DB8(v20, *a2);
    sub_24BC95264(v21, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x24C254100](exception, &v42);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v10 = (*a1)[3];
  v11 = (*a1)[4] - 16;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  sub_24BF9DAB8(&v29, v10, v11, (v11 - v10) >> 3);
  v12 = (*a2)[3];
  v13 = (*a2)[4] - 16;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  sub_24BF9DAB8(&v26, v12, v13, (v13 - v12) >> 3);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  sub_24BD7E680(&v42, v29, v30, (v30 - v29) >> 3);
  v45 = 0;
  v46[0] = 0;
  v46[1] = 0;
  sub_24BD7E680(&v45, v26, v27, (v27 - v26) >> 3);
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_24BF2309C(&__p, &v42, &v47, 2uLL);
  sub_24BF0F860(&v32, &v38, &__p, 0x7FFFFFFFLL);
  p_p = &__p;
  sub_24BC8EE84(&p_p);
  for (i = 0; i != -6; i -= 3)
  {
    v15 = v46[i - 1];
    if (v15)
    {
      v46[i] = v15;
      operator delete(v15);
    }
  }

  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_24BD7E680(&v42, *v34, v34[1], (v34[1] - *v34) >> 3);
  v24 = 0;
  v25 = 0;
  __p = 0;
  sub_24BD7E680(&__p, v34[3], v34[4], (v34[4] - v34[3]) >> 3);
  if (v32 == v33)
  {
    LODWORD(p_p) = 1;
    sub_24BC97D60(&v32, &p_p);
    p_p = 0;
    sub_24BD4C778(&v42, &p_p);
    p_p = 0;
    sub_24BD4C778(&__p, &p_p);
  }

  sub_24BF231D8(a3, &v32, &v42, &__p);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  v42 = &v34;
  sub_24BC8EE84(&v42);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_24BF9612C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (*(v20 - 65) < 0)
  {
    operator delete(*(v20 - 88));
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a18);
      v22 = *(v20 - 144);
      if (v22)
      {
        *(v20 - 136) = v22;
        operator delete(v22);
      }

      v23 = *(v20 - 120);
      if (v23)
      {
        *(v20 - 112) = v23;
        operator delete(v23);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_24BF96288(uint64_t a1, void **a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v6 = *(*a3 + 56);
  __src = v6;
  __src_4 = BYTE4(v6);
  if (sub_24BE80D54(&__src, dword_24BFEEC80))
  {
    v7 = *(a1 + 12);
    sub_24BF55DE0();
    v8 = *a2;
    if (*(*v8 + 48))
    {
      if (*(v8[2] + 48))
      {
        v9 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
        v14[0] = &off_285F93798;
        v14[1] = sub_24BE7E1F0;
        v14[3] = v14;
        sub_24BE7EE1C(a3, v9);
      }
    }

    v10 = *(*v8 + 56);
    sub_24BCD0924();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[matmul] Does not yet support non-floating point types.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF96DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  sub_24BEB0EA8(&a58);
  sub_24BE7F218(a20);
  sub_24BE7F218(a19);
  STACK[0x250] = &STACK[0x220];
  sub_24BCC961C(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_24BF96F94(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = **a1;
  v8 = v6[1];
  v9 = (v8 - v7) >> 2;
  v10 = v6[3];
  v11 = *(v10 + 8 * (v9 - 2));
  v12 = *(v10 + 8 * (v9 - 1));
  if (v12 == 1)
  {
    if (!a2)
    {
LABEL_5:
      *a3 = 0;
      *(a3 + 8) = v11;
      goto LABEL_13;
    }

    if (v8 == v7)
    {
LABEL_17:
      sub_24BC923C0();
    }

    if (v11 == *(v7 + 4 * (v9 - 1)))
    {
      goto LABEL_5;
    }

    if (v11 != 1)
    {
LABEL_15:
      memset(__p, 0, sizeof(__p));
      sub_24BCC9A1C(__p, v7, v8, v9);
      v14 = *(*a1 + 56);
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      sub_24BE7E8D4();
    }
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_15;
    }

    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (v9 <= 1)
  {
    goto LABEL_17;
  }

  if (v12 != *(v7 + 4 * (v9 - 2)))
  {
    goto LABEL_15;
  }

LABEL_12:
  *a3 = 1;
  *(a3 + 8) = v12;
LABEL_13:
  *(a3 + 16) = v6;
  v13 = *(a1 + 8);
  *(a3 + 24) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_24BF97190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(*a3 + 56);
  __src = v4;
  __src_4 = BYTE4(v4);
  if (sub_24BE80D54(&__src, dword_24BFEEC80))
  {
    v5 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
    v7[0] = &off_285F93798;
    v7[1] = sub_24BE7E1F0;
    v7[3] = v7;
    sub_24BE7EE1C(a3, v5);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[matmul] Does not yet support non-floating point types.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF99480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
    if ((v68 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&STACK[0x3C0]);
      v70 = STACK[0x280];
      if (STACK[0x280])
      {
        STACK[0x288] = v70;
        operator delete(v70);
      }

      v71 = STACK[0x2A0];
      if (STACK[0x2A0])
      {
        STACK[0x2A8] = v71;
        operator delete(v71);
      }

      v72 = STACK[0x2C0];
      if (STACK[0x2C0])
      {
        STACK[0x2C8] = v72;
        operator delete(v72);
      }

      sub_24BE7F218(&a55);
      sub_24BE7F218(a17);
      sub_24BE7F218(a19);
      STACK[0x3C0] = &a67;
      sub_24BCC961C(&STACK[0x3C0]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v68)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v67);
  goto LABEL_6;
}

void sub_24BF999C4(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = **a1;
  v8 = v6[1];
  v9 = (v8 - v7) >> 2;
  v10 = v6[3];
  v11 = *(v10 + 8 * (v9 - 2));
  v12 = *(v10 + 8 * (v9 - 1));
  if (v12 == 1)
  {
    if (!a2)
    {
LABEL_5:
      *a3 = 0;
      *(a3 + 8) = v11;
      goto LABEL_13;
    }

    if (v8 == v7)
    {
LABEL_17:
      sub_24BC923C0();
    }

    if (v11 == *(v7 + 4 * (v9 - 1)))
    {
      goto LABEL_5;
    }

    if (v11 != 1)
    {
LABEL_15:
      memset(__p, 0, sizeof(__p));
      sub_24BCC9A1C(__p, v7, v8, v9);
      v14 = *(*a1 + 56);
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      sub_24BE7E8D4();
    }
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_15;
    }

    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (v9 <= 1)
  {
    goto LABEL_17;
  }

  if (v12 != *(v7 + 4 * (v9 - 2)))
  {
    goto LABEL_15;
  }

LABEL_12:
  *a3 = 1;
  *(a3 + 8) = v12;
LABEL_13:
  *(a3 + 16) = v6;
  v13 = *(a1 + 8);
  *(a3 + 24) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_24BF99BC0(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = *(*a3 + 56);
  LODWORD(__p[0]) = v6;
  BYTE4(__p[0]) = BYTE4(v6);
  if (sub_24BE80D54(__p, dword_24BFEEC80))
  {
    v7 = *(a1 + 12);
    sub_24BF55DE0();
    v8 = **a2;
    if (*(v8 + 48))
    {
      if (*((*a2)[2] + 48))
      {
        v9 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
        v13[0] = &off_285F93798;
        v13[1] = sub_24BE7E1F0;
        v13[3] = v13;
        sub_24BE7EE1C(a3, v9);
      }
    }

    v10 = *(v8 + 56);
    sub_24BCD0924();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[matmul] Does not yet support non-floating point types.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF9B6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a51)
  {
    operator delete(a51);
  }

  sub_24BCE1400(&STACK[0x330]);
  if (a55)
  {
    operator delete(a55);
  }

  if (a59)
  {
    operator delete(a59);
  }

  if (a62)
  {
    operator delete(a62);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a67)
  {
    operator delete(a67);
  }

  if (a71)
  {
    operator delete(a71);
  }

  v72 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v72;
    operator delete(v72);
  }

  v73 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v75;
    operator delete(v75);
  }

  v76 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v76;
    operator delete(v76);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  sub_24BE7F218(a21);
  sub_24BE7F218(a23);
  STACK[0x330] = &STACK[0x300];
  sub_24BCC961C(&STACK[0x330]);
  _Unwind_Resume(a1);
}

void sub_24BF9BA54(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = **a1;
  v8 = v6[1];
  v9 = (v8 - v7) >> 2;
  v10 = v6[3];
  v11 = *(v10 + 8 * (v9 - 2));
  v12 = *(v10 + 8 * (v9 - 1));
  if (v12 == 1)
  {
    if (!a2)
    {
LABEL_5:
      *a3 = 0;
      *(a3 + 8) = v11;
      goto LABEL_13;
    }

    if (v8 == v7)
    {
LABEL_17:
      sub_24BC923C0();
    }

    if (v11 == *(v7 + 4 * (v9 - 1)))
    {
      goto LABEL_5;
    }

    if (v11 != 1)
    {
LABEL_15:
      memset(__p, 0, sizeof(__p));
      sub_24BCC9A1C(__p, v7, v8, v9);
      v14 = *(*a1 + 56);
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      sub_24BE7E8D4();
    }
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_15;
    }

    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (v9 <= 1)
  {
    goto LABEL_17;
  }

  if (v12 != *(v7 + 4 * (v9 - 2)))
  {
    goto LABEL_15;
  }

LABEL_12:
  *a3 = 1;
  *(a3 + 8) = v12;
LABEL_13:
  *(a3 + 16) = v6;
  v13 = *(a1 + 8);
  *(a3 + 24) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_24BF9BC50(void **a1, unsigned int a2)
{
  v2 = *a1;
  if ((a2 & 0x80000000) != 0)
  {
    v3 = ((v2[1] - *v2) >> 2) + a2;
  }

  else
  {
    v3 = a2;
  }

  v5 = v2 + 3;
  v4 = v2[3];
  if (v3 >= (v5[1] - v4) >> 3)
  {
    sub_24BC923C0();
  }

  return *(v4 + 8 * v3);
}

void sub_24BF9BC98(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = *(*a3 + 56);
  LODWORD(__p[0]) = v6;
  BYTE4(__p[0]) = BYTE4(v6);
  if (sub_24BE80D54(__p, dword_24BFEEC80))
  {
    v7 = *(a1 + 12);
    sub_24BF55DE0();
    v8 = **a2;
    if (*(v8 + 48))
    {
      if (*((*a2)[2] + 48))
      {
        v9 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
        v13[0] = &off_285F93798;
        v13[1] = sub_24BE7E1F0;
        v13[3] = v13;
        sub_24BE7EE1C(a3, v9);
      }
    }

    v10 = *(v8 + 56);
    sub_24BCD0924();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[GatherMM] Does not yet support non-floating point types.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF9D504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a52)
  {
    operator delete(a52);
  }

  if (a55)
  {
    operator delete(a55);
  }

  v73 = STACK[0x2C8];
  if (STACK[0x2C8])
  {
    STACK[0x2D0] = v73;
    operator delete(v73);
  }

  if (a60)
  {
    operator delete(a60);
  }

  if (a63)
  {
    operator delete(a63);
  }

  if (a66)
  {
    operator delete(a66);
  }

  if (a69)
  {
    operator delete(a69);
  }

  if (a72)
  {
    STACK[0x200] = a72;
    operator delete(a72);
  }

  v74 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v75;
    operator delete(v75);
  }

  sub_24BE7F218(a19);
  sub_24BE7F218(a21);
  STACK[0x2C8] = &STACK[0x290];
  sub_24BCC961C(&STACK[0x2C8]);
  _Unwind_Resume(a1);
}

void sub_24BF9D8BC(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = **a1;
  v8 = v6[1];
  v9 = (v8 - v7) >> 2;
  v10 = v6[3];
  v11 = *(v10 + 8 * (v9 - 2));
  v12 = *(v10 + 8 * (v9 - 1));
  if (v12 == 1)
  {
    if (!a2)
    {
LABEL_5:
      *a3 = 0;
      *(a3 + 8) = v11;
      goto LABEL_13;
    }

    if (v8 == v7)
    {
LABEL_17:
      sub_24BC923C0();
    }

    if (v11 == *(v7 + 4 * (v9 - 1)))
    {
      goto LABEL_5;
    }

    if (v11 != 1)
    {
LABEL_15:
      memset(__p, 0, sizeof(__p));
      sub_24BCC9A1C(__p, v7, v8, v9);
      v14 = *(*a1 + 56);
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      sub_24BE7E8D4();
    }
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_15;
    }

    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (v9 <= 1)
  {
    goto LABEL_17;
  }

  if (v12 != *(v7 + 4 * (v9 - 2)))
  {
    goto LABEL_15;
  }

LABEL_12:
  *a3 = 1;
  *(a3 + 8) = v12;
LABEL_13:
  *(a3 + 16) = v6;
  v13 = *(a1 + 8);
  *(a3 + 24) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_24BF9DAB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BF9DB10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF9DB2C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BC91F24(v6, v10);
    }

    sub_24BC8E01C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

char *sub_24BF9DC60(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_24BC8E01C();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_24BC91F60(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t sub_24BF9DE8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v23 = a1;
  if (v8)
  {
    sub_24BC91DBC(a1, v8);
  }

  v9 = 24 * v3;
  v19 = 0;
  v20 = v9;
  v21 = 24 * v3;
  v22 = 0;
  v10 = *a2;
  v11 = *a3;
  v12 = (*a3 - *a2) >> 3;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  sub_24BF9DAB8(24 * v3, v10, v11, v12);
  v13 = v21 + 24;
  v14 = *(a1 + 8) - *a1;
  v15 = &v20[-v14];
  memcpy(&v20[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v22;
  v21 = v16;
  v22 = v17;
  v19 = v16;
  v20 = v16;
  sub_24BC91E14(&v19);
  return v13;
}

void sub_24BF9DFB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

void sub_24BF9DFC4(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v10 = a2;
  v5 = v3;
  v6 = v4;
  v8 = 0;
  v9 = 0;
  v7 = a2;
  *(a3 + 24) = 0;
  operator new();
}

void sub_24BF9E070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a12);
  _Unwind_Resume(a1);
}

void sub_24BF9E08C(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  *(a2 + 24) = 0;
  operator new();
}

void sub_24BF9E110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF9E128(NS::Private::Class *a1, uint64_t a2)
{
  v3 = a1;
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = sub_24BF53AE4(a1, &v27);
  v5 = MTL::Private::Class::s_kMTLCaptureDescriptor(v4);
  v6 = [v5 NS:? :? Private:? :? Selector:? :?s_kalloc(v5)];
  v7 = [v6 NS:? :? Private:? :? Selector:? :?s_kinit(v6)];
  v8 = [v7 MTL:a2 :? Private:? :? Selector:? :?s_ksetCaptureObject_(v7)];
  if (*(v3 + 23) < 0)
  {
    if (!*(v3 + 1))
    {
      goto LABEL_7;
    }

    v3 = *v3;
    goto LABEL_6;
  }

  if (*(v3 + 23))
  {
LABEL_6:
    v9 = NS::Private::Class::s_kNSString(v8);
    v10 = [v9 NS:v3 :4 Private:? :? Selector:? :?s_kstringWithCString_encoding_(v9)];
    v11 = NS::Private::Class::s_kNSURL(v10);
    v12 = [v11 NS:v10 :? Private:? :? Selector:? :?s_kfileURLWithPath_(v11)];
    v13 = [v7 MTL:2 :? Private:? :? Selector:? :?s_ksetDestination_(v12)];
    v8 = [v7 MTL:v12 :? Private:? :? Selector:? :?s_ksetOutputURL_(v13)];
  }

LABEL_7:
  v14 = MTL::Private::Class::s_kMTLCaptureManager(v8);
  v15 = [v14 MTL:? :? Private:? :? Selector:? :?s_ksharedCaptureManager(v14)];
  v26 = 0;
  v16 = [v15 MTL:v7 :&v26 Private:? :? Selector:? :?s_kstartCaptureWithDescriptor_error_(v15)];
  LOBYTE(v15) = v16;
  [v7 NS:? :? Private:? :? Selector:? :?s_krelease(v16)];
  if ((v15 & 1) == 0)
  {
    sub_24BCE1268(v25);
    v19 = sub_24BC95264(v25, "[metal::start_capture] Failed to start: ", 40);
    v20 = [v26 NS:? :? Private:? :? Selector:? :?s_klocalizedDescription(v19)];
    v21 = [v20 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v20)];
    v22 = strlen(v21);
    sub_24BC95264(v19, v21, v22);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x24C254100](exception, v24);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  sub_24BF192EC(&v27, 0);
  result = sub_24BF19370(v28);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF9E378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a16);
      sub_24BF192EC((v18 - 80), 0);
      sub_24BF19370(v18 - 72);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_24BF9E3FC(uint64_t a1)
{
  v2 = sub_24BF55DE0();
  if (*(a1 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v4 = *(a1 + 16);
  }

  sub_24BF9E128(__p, *v2);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BF9E474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF9E490(NS::Private::Class *a1)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v1 = sub_24BF53AE4(a1, &v6);
  v2 = MTL::Private::Class::s_kMTLCaptureManager(v1);
  v3 = [v2 MTL:? :? Private:? :? Selector:? :?s_ksharedCaptureManager(v2)];
  [v3 MTL:? :? Private:? :? Selector:? :?s_kstopCapture(v3)];
  sub_24BF192EC(&v6, 0);
  result = sub_24BF19370(v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24BF9E558(void *a1)
{
  *a1 = &unk_285F9FD18;
  sub_24BE7F218(a1 + 1);
  return a1;
}

void sub_24BF9E59C(void *a1)
{
  *a1 = &unk_285F9FD18;
  sub_24BE7F218(a1 + 1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF9E67C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_285F9FD18;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

void sub_24BF9E6CC(char *a1)
{
  sub_24BE7F218(a1 + 8);

  operator delete(a1);
}

void sub_24BF9E708(uint64_t a1)
{
  v53[9] = *MEMORY[0x277D85DE8];
  sub_24BF53AE4(a1, v52);
  v2 = *(*(a1 + 8) + 64);
  v3 = *(v2 + 8);
  v35 = *(v2 + 16);
  v34 = v3;
  v4 = sub_24BF55DE0();
  v5 = sub_24BF5410C(v4, v34);
  sub_24BF540D4(v4, v34);
  v6 = *(a1 + 8);
  v7 = *(v6 + 176);
  v8 = *(v6 + 184);
  while (v7 != v8)
  {
    if (*(*v7 + 104))
    {
      if (*sub_24BEFD91C(*v7 + 88) != *(*(*(a1 + 8) + 64) + 8))
      {
        sub_24BF596CC(*v7 + 88);
      }
    }

    v7 += 16;
  }

  sub_24BE9CAB0((a1 + 8), &v32);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v9 = sub_24BE7F21C(a1 + 8);
  v10 = *(a1 + 8);
  if (v9 && &v41 != (v10 + 22))
  {
    sub_24BF9EF34(&v41, v10[22], v10[23], (v10[23] - v10[22]) >> 4);
    v10 = *(a1 + 8);
  }

  (*(*v10[8] + 8))(v10[8], v10 + 22, &v32);
  v53[0] = &v41;
  sub_24BCC961C(v53);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v11 = *(a1 + 8);
  v12 = v11[22];
  v13 = v11[23];
  if (v12 != v13)
  {
    do
    {
      v14 = *(*v12 + 144);
      v41 = *(*v12 + 136);
      v42 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_24BCB52F4(&v29, &v41);
      if (v42)
      {
        sub_24BC9EC78(v42);
      }

      v12 += 16;
    }

    while (v12 != v13);
    v11 = *(a1 + 8);
  }

  v15 = v11[25];
  for (i = v11[26]; v15 != i; v15 += 16)
  {
    v17 = *(*v15 + 144);
    v41 = *(*v15 + 136);
    v42 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_24BCB52F4(&v29, &v41);
    if (v42)
    {
      sub_24BC9EC78(v42);
    }
  }

  if (!sub_24BE7F21C(a1 + 8))
  {
    sub_24BE7EF28((a1 + 8));
  }

  v18 = v32;
  for (j = v33; v18 != j; *(v20 + 80) = 2)
  {
    v20 = *v18;
    v18 += 2;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v21 = sub_24BF540A4(v4, v34);
    if ((atomic_load_explicit(&qword_27F079160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079160))
    {
      dword_27F079158 = sub_24BF04140("MLX_MAX_OPS_PER_BUFFER", 10);
      __cxa_guard_release(&qword_27F079160);
    }

    if (v21 < dword_27F079158)
    {
      v36 = v34;
      LODWORD(v37) = v35;
      v38 = v29;
      v39 = v30;
      v40 = v31;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v51 = 0;
      operator new();
    }
  }

  v22 = sub_24BF542D8(v4, v34);
  if (*(a1 + 24) == 1)
  {
    v23 = *(a1 + 8);
    [v5 MTL:*(v23 + 104) :*(v23 + 120) Private:? :? Selector:? :?s_kencodeSignalEvent_value_(v22)];
  }

  v24 = sub_24BEF5314();
  sub_24BEFD98C(v24);
  v41 = v34;
  LODWORD(v42) = v35;
  v43 = v29;
  v44 = v30;
  v25 = v31;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v26 = *(a1 + 8);
  v47 = *(v26 + 96);
  v27 = *(v26 + 88);
  v45 = v25;
  v46 = v27;
  v28 = *(v26 + 112);
  v48 = *(v26 + 104);
  v49 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v50 = *(v26 + 120);
  v51 = 0;
  operator new();
}

void sub_24BF9ED80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void **a34)
{
  __cxa_guard_abort(&qword_27F079160);
  a34 = &a10;
  sub_24BCB7FC8(&a34);
  a34 = &a13;
  sub_24BCC961C(&a34);
  sub_24BF192EC((v34 - 200), 0);
  sub_24BF19370(v34 - 192);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF9EEA0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FE78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF9EEEC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  v4 = (a1 + 16);
  sub_24BCB7FC8(&v4);
  return a1;
}

void sub_24BF9EF34(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_24BCC97B8(a1);
    if (!(a4 >> 60))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_24BCC95E0(a1, v11);
    }

    sub_24BC8E01C();
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_24BECD238(v8, v6);
        v6 += 2;
        v8 += 16;
      }

      while (v6 != a3);
      v12 = *(a1 + 8);
    }

    while (v12 != v8)
    {
      sub_24BE7F218(v12 - 16);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13);
    if (v12 != v8)
    {
      do
      {
        sub_24BECD238(v8, v6);
        v6 += 2;
        v8 += 16;
        v13 -= 16;
      }

      while (v13);
      v12 = *(a1 + 8);
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = v14[1];
        *v16 = *v14;
        v16[1] = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
        v16 += 2;
        v15 += 16;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v15;
  }
}

uint64_t sub_24BF9F0F0(uint64_t a1)
{
  *a1 = &unk_285F9FD88;
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  v4 = (a1 + 24);
  sub_24BCB7FC8(&v4);
  return a1;
}

uint64_t sub_24BF9F154(uint64_t a1)
{
  *a1 = &unk_285F9FD88;
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  v4 = (a1 + 24);
  sub_24BCB7FC8(&v4);
  return MEMORY[0x24C2548B0](a1, 0x10A1C408FFB6524);
}

uint64_t sub_24BF9F290(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9FD88;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a2 + 24) = 0;
  v6 = a2 + 24;
  *(a2 + 16) = v5;
  *(a2 + 8) = v4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  result = sub_24BF9F40C(a2 + 24, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 4);
  v8 = *(a1 + 48);
  *(v6 + 32) = *(a1 + 56);
  *(v6 + 24) = v8;
  v9 = *(a1 + 72);
  *(v6 + 40) = *(a1 + 64);
  *(v6 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_24BF9F340(void *a1)
{
  sub_24BF9F554(a1 + 8);

  operator delete(a1);
}

id sub_24BF9F37C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_24BEF5314();
  sub_24BEFD9E0(v3);

  return sub_24BF9F598(v2);
}

uint64_t sub_24BF9F3C0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FDE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF9F40C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCC95E0(result, a4);
  }

  return result;
}

void sub_24BF9F474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BCB7FC8(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BF9F494(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_24BF9F51C(v7);
  return v4;
}

uint64_t sub_24BF9F51C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BDF8D98(a1);
  }

  return a1;
}

void sub_24BF9F554(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  v3 = (a1 + 16);
  sub_24BCB7FC8(&v3);
}

id sub_24BF9F598(void *a1)
{
  result = [a1 MTL:? :? Private:? :? Selector:? :?s_kstatus(a1)];
  if (result == 5)
  {
    sub_24BCE1268(v10);
    v3 = sub_24BC95264(v10, "[METAL] Command buffer execution failed: ", 41);
    v4 = [a1 MTL:? :? Private:? :? Selector:? :?s_kerror(v3)];
    v5 = [v4 NS:? :? Private:? :? Selector:? :?s_klocalizedDescription(v4)];
    v6 = [v5 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v5)];
    v7 = strlen(v6);
    sub_24BC95264(v3, v6, v7);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x24C254100](exception, &v9);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  return result;
}

void sub_24BF9F6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
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

uint64_t sub_24BF9F6EC(uint64_t a1)
{
  *a1 = &unk_285F9FE08;
  v3 = (a1 + 24);
  sub_24BCB7FC8(&v3);
  return a1;
}

uint64_t sub_24BF9F744(uint64_t a1)
{
  *a1 = &unk_285F9FE08;
  v3 = (a1 + 24);
  sub_24BCB7FC8(&v3);
  return MEMORY[0x24C2548B0](a1, 0x10A1C40AC84372ALL);
}

uint64_t sub_24BF9F844(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9FE08;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a2 + 24) = 0;
  *(a2 + 16) = v3;
  *(a2 + 8) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return sub_24BF9F40C(a2 + 24, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 4);
}

void sub_24BF9F8BC(void **a1)
{
  v2 = a1 + 3;
  sub_24BCB7FC8(&v2);
  operator delete(a1);
}

uint64_t sub_24BF9F904(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FE68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BF9F950(void *a1)
{
  *a1 = &unk_285F9FE98;
  v2 = a1[4];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  return a1;
}

void sub_24BF9F99C(void *a1)
{
  *a1 = &unk_285F9FE98;
  v1 = a1[4];
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF9FA80(uint64_t result, uint64_t a2)
{
  *a2 = &unk_285F9FE98;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BF9FAC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_24BC9EC78(v1);
  }
}

void sub_24BF9FAD8(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  operator delete(__p);
}

void sub_24BF9FB18(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = sub_24BF55DE0();
  v4 = sub_24BF5410C(v3, *(a1 + 8));
  [v4 NS:? :? Private:? :? Selector:? :?s_kretain(v4)];
  sub_24BF542D8(v3, *(a1 + 8));
  v5 = sub_24BF541CC(v3, *(a1 + 8));
  [v4 MTL:? :? Private:? :? Selector:? :?s_kwaitUntilCompleted(v5)];
  v6 = sub_24BF9F598(v4);
  [v4 NS:? :? Private:? :? Selector:? :?s_krelease(v6)];
  v7 = *(a1 + 24);

  std::promise<void>::set_value(v7);
}

uint64_t sub_24BF9FBBC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9FEF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BF9FC08(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 12);
  v7 = sub_24BF55DE0();
  v8 = *a3;
  v58 = 0uLL;
  v59 = 0;
  v9 = *a2;
  v10 = **a2;
  v11 = *v10;
  if ((*(v10 + 168) & 1) == 0)
  {
    v12 = *(v10 + 8);
    v13 = (v12 - v11) >> 2;
    goto LABEL_8;
  }

  v12 = *(v10 + 8);
  v13 = (v12 - v11) >> 2;
  v14 = *(v10 + 24) + 2 * (v12 - v11);
  if (*(v14 - 8) != 1 || v13 >= 2 && (v15 = *(v14 - 16)) != 0 && v15 != *(v12 - 4))
  {
LABEL_8:
    memset(&v62, 0, sizeof(v62));
    sub_24BCC9A1C(&v62, v11, v12, v13);
    v17 = *(*v9 + 56);
    v50 = 0;
    v51 = 0;
    v61 = 0uLL;
    v60 = 0;
    sub_24BE7E8D4();
  }

  v16 = *a2;
  v18 = v16[1];
  if (!v18)
  {
    v19 = *v16;
    goto LABEL_15;
  }

  v19 = *v16;
  if (*(v18 + 8) || (v20 = *(v19 + 144)) == 0 || *(v20 + 8))
  {
LABEL_15:
    v21 = sub_24BE7E2A4(*(v19 + 60) * *(v19 + 160));
    v22 = *v16;
    v23 = *(*v16 + 160);
    memset(__p, 0, sizeof(__p));
    sub_24BD7E680(__p, *(v22 + 24), *(v22 + 32), (*(v22 + 32) - *(v22 + 24)) >> 3);
    v24 = *(*v16 + 168);
    v63[0] = &off_285F93798;
    v63[1] = sub_24BE7E1F0;
    v63[3] = v63;
    sub_24BE7F25C(v8, v21);
  }

  v57[0] = *v16;
  v57[1] = v18;
  atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  sub_24BE7F46C(v8, v57);
  sub_24BE7F218(v57);
  v25 = *v16;
  v26 = *(*v16 + 8);
  v27 = *(v26 - 4);
  v55 = *(v26 - 4);
  v28 = *(v25 + 160);
  v29 = sub_24BC836D4(&v62, "rms");
  if (v27 > 0x1000)
  {
    std::string::append(v29, "_looped");
  }

  sub_24BFB7BD8(v8, &v60);
  if (v61.i8[15] >= 0)
  {
    v30 = &v60;
  }

  else
  {
    v30 = v60;
  }

  if (v61.i8[15] >= 0)
  {
    v31 = v61.u8[15];
  }

  else
  {
    v31 = v61.i64[0];
  }

  std::string::append(&v62, v30, v31);
  if (v61.i8[15] < 0)
  {
    operator delete(v60);
  }

  v32 = sub_24BF5488C(v7, *(a1 + 8));
  sub_24BC836D4(&v60, "mlx");
  sub_24BC836D4(&v53, &unk_24C0435AF);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v33 = sub_24BF55C0C(v7, &v62, &v60, &v53, &v50, &v47);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  v34 = v50;
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v54.i8[15] < 0)
  {
    operator delete(v53);
  }

  if (v61.i8[15] < 0)
  {
    operator delete(v60);
  }

  v35 = v28 / v27;
  if (v27 > 0x1000)
  {
    v34 = [v33 MTL:? :? Private:? :? Selector:? :?s_kmaxTotalThreadsPerThreadgroup(v34)];
    v36 = v34;
    v37 = v34 * v35;
  }

  else
  {
    v36 = (((v27 + 3) >> 2) + 31) & 0x1FE0;
    v37 = v35 * v36;
  }

  LODWORD(v50) = **(v9[2] + 24);
  [*v32 MTL:v33 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v34)];
  v38 = *(*v16 + 136);
  v39 = *(*v16 + 144);
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v38)
  {
    v40 = v16;
  }

  else
  {
    v40 = v8;
  }

  sub_24BF53508(v32, v40, 0, 0);
  if (v39)
  {
    sub_24BC9EC78(v39);
  }

  sub_24BF53508(v32, v9 + 2, 1, 0);
  v41 = sub_24BF535E8(v32, v8, 2, 0);
  v42 = [*v32 MTL:a1 + 88 :4 Private:3 :? Selector:? :?s_ksetBytes_length_atIndex_(v41)];
  v43 = [*v32 MTL:&v55 :4 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v42)];
  [*v32 MTL:&v50 :4 Private:5 :? Selector:? :?s_ksetBytes_length_atIndex_(v43)];
  v60 = v37;
  v61 = vdupq_n_s64(1uLL);
  v53 = v36;
  v54 = v61;
  sub_24BF53770(v32, &v60, &v53);
  v45 = v58;
  v46 = v59;
  v58 = 0uLL;
  v59 = 0;
  sub_24BF54278(v7, &v45, *(a1 + 8));
  v60 = &v45;
  sub_24BCC961C(&v60);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v62.__r_.__value_.__r.__words[0] = &v58;
  sub_24BCC961C(&v62);
  v44 = *MEMORY[0x277D85DE8];
}

void sub_24BFA0158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_24BE7F218(&a28);
  __p = &a30;
  sub_24BCC961C(&__p);
  _Unwind_Resume(a1);
}

void sub_24BFA0290(uint64_t a1, uint64_t ***a2, uint64_t **a3)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = *(a1 + 12);
  sub_24BF55DE0();
  v23 = 0uLL;
  v24 = 0;
  v22[0] = &v23;
  v22[1] = v5;
  v7 = sub_24BFA0BE8(v22, *a2);
  v17 = sub_24BFA0BE8(v22, *a2 + 4);
  v8 = *a3;
  v9 = v7[1];
  if (!v9 || *(v9 + 8) || (v15 = (*v7)[18]) == 0 || *(v15 + 8))
  {
    v10 = v17[1];
    if (!v10 || *(v10 + 8) || (v16 = (*v17)[18]) == 0 || *(v16 + 8))
    {
      v11 = sub_24BE7E2A4(*(*v8 + 60) * *(*v8 + 48));
      v26[0] = &off_285F93798;
      v26[1] = sub_24BE7E1F0;
      v26[3] = v26;
      sub_24BE7EE1C(v8, v11);
    }

    v20[0] = *v17;
    v20[1] = v10;
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    sub_24BE7F46C(v8, v20);
    sub_24BE7F218(v20);
  }

  else
  {
    v21[0] = *v7;
    v21[1] = v9;
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    sub_24BE7F46C(v8, v21);
    sub_24BE7F218(v21);
  }

  v12 = *v7;
  v13 = (*v7)[1];
  v19 = *(v13 - 4);
  LODWORD(v25.__r_.__value_.__l.__data_) = v12[20] / v19;
  HIDWORD(v25.__r_.__value_.__r.__words[0]) = *(v13 - 4);
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v25, &v25.__r_.__value_.__l.__size_, 2uLL);
  v14 = *(v8[2] + 56);
  sub_24BE7E8D4();
}

void sub_24BFA0A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  sub_24BE7F218(&a43);
  sub_24BE7F218(&a53);
  *(v62 - 216) = &a62;
  sub_24BCC961C((v62 - 216));
  _Unwind_Resume(a1);
}

uint64_t **sub_24BFA0BE8(void **a1, uint64_t **a2)
{
  if (((*a2)[21] & 2) == 0)
  {
    sub_24BE9CDA0(*a1, 3uLL);
    v4 = *a1;
    v5 = *a2;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v5, v5[1], (v5[1] - *v5) >> 2);
    v6 = (*a2)[7];
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_24BE7E8D4();
  }

  return a2;
}

void sub_24BFA0CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  sub_24BE7F218(v16 - 56);
  *(v16 - 40) = &a10;
  sub_24BCC961C((v16 - 40));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BFA0D34(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 12);
  v7 = sub_24BF55DE0();
  v8 = *a3;
  v63 = 0uLL;
  v64 = 0;
  v9 = *a2;
  v10 = **a2;
  v11 = *v10;
  if ((*(v10 + 168) & 1) == 0)
  {
    v12 = *(v10 + 8);
    v13 = (v12 - v11) >> 2;
    goto LABEL_8;
  }

  v12 = *(v10 + 8);
  v13 = (v12 - v11) >> 2;
  v14 = *(v10 + 24) + 2 * (v12 - v11);
  if (*(v14 - 8) != 1 || v13 >= 2 && (v15 = *(v14 - 16)) != 0 && v15 != *(v12 - 4))
  {
LABEL_8:
    memset(&v67, 0, sizeof(v67));
    sub_24BCC9A1C(&v67, v11, v12, v13);
    v17 = *(*v9 + 56);
    v55 = 0;
    v56 = 0;
    v66 = 0uLL;
    v65 = 0;
    sub_24BE7E8D4();
  }

  v16 = *a2;
  v18 = v16[1];
  if (!v18)
  {
    v19 = *v16;
    goto LABEL_15;
  }

  v19 = *v16;
  if (*(v18 + 8) || (v20 = *(v19 + 144)) == 0 || *(v20 + 8))
  {
LABEL_15:
    v21 = sub_24BE7E2A4(*(v19 + 60) * *(v19 + 160));
    v22 = *v16;
    v23 = *(*v16 + 160);
    memset(__p, 0, sizeof(__p));
    sub_24BD7E680(__p, *(v22 + 24), *(v22 + 32), (*(v22 + 32) - *(v22 + 24)) >> 3);
    v24 = *(*v16 + 168);
    v68[0] = &off_285F93798;
    v68[1] = sub_24BE7E1F0;
    v68[3] = v68;
    sub_24BE7F25C(v8, v21);
  }

  v62[0] = *v16;
  v62[1] = v18;
  atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  sub_24BE7F46C(v8, v62);
  sub_24BE7F218(v62);
  v25 = *v16;
  v26 = *(*v16 + 8);
  v27 = *(v26 - 4);
  v60 = *(v26 - 4);
  v28 = *(v25 + 160);
  v29 = sub_24BC836D4(&v67, "layer_norm");
  if (v27 > 0x1000)
  {
    std::string::append(v29, "_looped");
  }

  sub_24BFB7BD8(v8, &v65);
  if (v66.i8[15] >= 0)
  {
    v30 = &v65;
  }

  else
  {
    v30 = v65;
  }

  if (v66.i8[15] >= 0)
  {
    v31 = v66.u8[15];
  }

  else
  {
    v31 = v66.i64[0];
  }

  std::string::append(&v67, v30, v31);
  if (v66.i8[15] < 0)
  {
    operator delete(v65);
  }

  v32 = sub_24BF5488C(v7, *(a1 + 8));
  sub_24BC836D4(&v65, "mlx");
  sub_24BC836D4(&v58, &unk_24C0435AF);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v33 = sub_24BF55C0C(v7, &v67, &v65, &v58, &v55, &v52);
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  v34 = v55;
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v59.i8[15] < 0)
  {
    operator delete(v58);
  }

  if (v66.i8[15] < 0)
  {
    operator delete(v65);
  }

  v35 = v28 / v27;
  if (v27 > 0x1000)
  {
    v34 = [v33 MTL:? :? Private:? :? Selector:? :?s_kmaxTotalThreadsPerThreadgroup(v34)];
    v36 = v34;
    v37 = v34 * v35;
  }

  else
  {
    v36 = (((v27 + 3) >> 2) + 31) & 0x1FE0;
    v37 = v35 * v36;
  }

  v38 = v9[2];
  if (*(v38 + 8) - *v38 == 4)
  {
    v39 = **(v38 + 24);
  }

  else
  {
    v39 = 0;
  }

  LODWORD(v55) = v39;
  v40 = v9[4];
  if (*(v40 + 8) - *v40 == 4)
  {
    v41 = **(v40 + 24);
  }

  else
  {
    v41 = 0;
  }

  LODWORD(v52) = v41;
  [*v32 MTL:v33 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v34)];
  v42 = *(*v16 + 136);
  v43 = *(*v16 + 144);
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v42)
  {
    v44 = v16;
  }

  else
  {
    v44 = v8;
  }

  sub_24BF53508(v32, v44, 0, 0);
  if (v43)
  {
    sub_24BC9EC78(v43);
  }

  sub_24BF53508(v32, v9 + 2, 1, 0);
  sub_24BF53508(v32, v9 + 4, 2, 0);
  v45 = sub_24BF535E8(v32, v8, 3, 0);
  v46 = [*v32 MTL:a1 + 88 :4 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v45)];
  v47 = [*v32 MTL:&v60 :4 Private:5 :? Selector:? :?s_ksetBytes_length_atIndex_(v46)];
  v48 = [*v32 MTL:&v55 :4 Private:6 :? Selector:? :?s_ksetBytes_length_atIndex_(v47)];
  [*v32 MTL:&v52 :4 Private:7 :? Selector:? :?s_ksetBytes_length_atIndex_(v48)];
  v65 = v37;
  v66 = vdupq_n_s64(1uLL);
  v58 = v36;
  v59 = v66;
  sub_24BF53770(v32, &v65, &v58);
  v50 = v63;
  v51 = v64;
  v63 = 0uLL;
  v64 = 0;
  sub_24BF54278(v7, &v50, *(a1 + 8));
  v65 = &v50;
  sub_24BCC961C(&v65);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  v67.__r_.__value_.__r.__words[0] = &v63;
  sub_24BCC961C(&v67);
  v49 = *MEMORY[0x277D85DE8];
}

void sub_24BFA12F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_24BE7F218(&a28);
  __p = &a30;
  sub_24BCC961C(&__p);
  _Unwind_Resume(a1);
}

void sub_24BFA1430(uint64_t a1, uint64_t ***a2, uint64_t **a3)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = *(a1 + 12);
  sub_24BF55DE0();
  v23 = 0uLL;
  v24 = 0;
  v22[0] = &v23;
  v22[1] = v5;
  v7 = sub_24BFA1FF4(v22, *a2);
  v8 = sub_24BFA1FF4(v22, *a2 + 6);
  v9 = *a3;
  v10 = v7[1];
  if (!v10 || *(v10 + 8) || (v16 = (*v7)[18]) == 0 || *(v16 + 8))
  {
    v11 = v8[1];
    if (!v11 || *(v11 + 8) || (v17 = (*v8)[18]) == 0 || *(v17 + 8))
    {
      v12 = sub_24BE7E2A4(*(*v9 + 60) * *(*v9 + 48));
      v26[0] = &off_285F93798;
      v26[1] = sub_24BE7E1F0;
      v26[3] = v26;
      sub_24BE7EE1C(v9, v12);
    }

    v20[0] = *v8;
    v20[1] = v11;
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    sub_24BE7F46C(v9, v20);
    sub_24BE7F218(v20);
  }

  else
  {
    v21[0] = *v7;
    v21[1] = v10;
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    sub_24BE7F46C(v9, v21);
    sub_24BE7F218(v21);
  }

  v13 = *v7;
  v14 = (*v7)[1];
  v19 = *(v14 - 4);
  LODWORD(v25.__r_.__value_.__l.__data_) = v13[20] / v19;
  HIDWORD(v25.__r_.__value_.__r.__words[0]) = *(v14 - 4);
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v25, &v25.__r_.__value_.__l.__size_, 2uLL);
  v15 = *(v9[2] + 56);
  sub_24BE7E8D4();
}

void sub_24BFA1DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BE7F218(&a48);
  sub_24BE7F218(&a58);
  *(v67 - 256) = &a67;
  sub_24BCC961C((v67 - 256));
  _Unwind_Resume(a1);
}

uint64_t **sub_24BFA1FF4(void **a1, uint64_t **a2)
{
  if (((*a2)[21] & 2) == 0)
  {
    sub_24BE9CDA0(*a1, 3uLL);
    v4 = *a1;
    v5 = *a2;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v5, v5[1], (v5[1] - *v5) >> 2);
    v6 = (*a2)[7];
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_24BE7E8D4();
  }

  return a2;
}

void sub_24BFA20F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  sub_24BE7F218(v16 - 56);
  *(v16 - 40) = &a10;
  sub_24BCC961C((v16 - 40));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BFA2140()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BFA21B0(void *a1)
{
  *a1 = &unk_285F9FF18;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));
  return a1;
}

void sub_24BFA2218(void *a1)
{
  *a1 = &unk_285F9FF18;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));

  JUMPOUT(0x24C2548B0);
}

void sub_24BFA22A0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BFA2310(void *a1)
{
  *a1 = &unk_285F9FF90;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));
  return a1;
}

void sub_24BFA2378(void *a1)
{
  *a1 = &unk_285F9FF90;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));

  JUMPOUT(0x24C2548B0);
}

void sub_24BFA2400()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BFA2470(void *a1)
{
  *a1 = &unk_285FA0008;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));
  return a1;
}

void sub_24BFA24D8(void *a1)
{
  *a1 = &unk_285FA0008;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));

  JUMPOUT(0x24C2548B0);
}

void sub_24BFA2560()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BFA25D0(void *a1)
{
  *a1 = &unk_285FA0080;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));
  return a1;
}

void sub_24BFA2638(void *a1)
{
  *a1 = &unk_285FA0080;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));

  JUMPOUT(0x24C2548B0);
}

void sub_24BFA26C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(a3, v4);
}

id sub_24BFA2B74(MTL::Private::Selector *a1, char a2, id *a3)
{
  v8 = a1;
  v5 = [*a3 MTL:&v8 :1 Private:0 :? Selector:? :?s_ksetBytes_length_atIndex_(a1)];
  v7 = a2 - v8;
  return [*a3 MTL:&v7 :1 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v5)];
}

id sub_24BFA2BF8(MTL::Private::Selector *a1, __int16 a2, id *a3)
{
  v8 = a1;
  v5 = [*a3 MTL:&v8 :2 Private:0 :? Selector:? :?s_ksetBytes_length_atIndex_(a1)];
  v7 = a2 - v8;
  return [*a3 MTL:&v7 :2 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v5)];
}

id sub_24BFA2C7C(MTL::Private::Selector *a1, int a2, id *a3)
{
  v8 = a1;
  v5 = [*a3 MTL:&v8 :4 Private:0 :? Selector:? :?s_ksetBytes_length_atIndex_(a1)];
  v7 = a2 - v8;
  return [*a3 MTL:&v7 :4 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v5)];
}

id sub_24BFA2D00(MTL::Private::Selector *a1, uint64_t a2, id *a3)
{
  v8 = a1;
  v5 = [*a3 MTL:&v8 :8 Private:0 :? Selector:? :?s_ksetBytes_length_atIndex_(a1)];
  v7 = a2 - v8;
  return [*a3 MTL:&v7 :8 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v5)];
}

id sub_24BFA2D84(id *a1, __n128 a2, __n128 a3)
{
  v4 = *a3.n128_u16;
  v8 = *a2.n128_u16;
  v5 = [*a1 MTL:&v8 :2 Private:0 :? Selector:? :?s_ksetBytes_length_atIndex_(a1)];
  v7 = v4 - v8;
  return [*a1 MTL:&v7 :2 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v5)];
}

id sub_24BFA2E08(id *a1, float a2, float a3)
{
  v8 = a2;
  v5 = [*a1 MTL:&v8 :4 Private:0 :? Selector:? :?s_ksetBytes_length_atIndex_(a1)];
  v7 = a3 - v8;
  return [*a1 MTL:&v7 :4 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v5)];
}

id sub_24BFA2E8C(MTL::Private::Selector *a1, int a2, id *a3)
{
  v8 = a1;
  v5 = [*a3 MTL:&v8 :2 Private:0 :? Selector:? :?s_ksetBytes_length_atIndex_(a1)];
  v7 = (COERCE_INT(COERCE_FLOAT(a2 << 16) - COERCE_FLOAT(v8 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT(a2 << 16) - COERCE_FLOAT(v8 << 16))) & 1) + 0x7FFF) >> 16;
  return [*a3 MTL:&v7 :2 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v5)];
}

void sub_24BFA2F48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
  v6[0] = &off_285F93798;
  v6[1] = sub_24BE7E1F0;
  v6[3] = v6;
  sub_24BE7EE1C(a3, v5);
}

void sub_24BFA34AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFA35BC(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  if (*(**a2 + 168))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  sub_24BF21C44(*a2, a3, v4);
}

void sub_24BFA3600(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = *a2;
  if (*(**a2 + 168) & 2) != 0 || (*(**a2 + 168) & 4) != 0 && (*(a1 + 20))
  {
    sub_24BF0F2D8(v4, a3);
  }

  else
  {
    sub_24BF21C44(v4, a3, 2);
  }
}

double sub_24BFA3640(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = **a2;
  v5 = (*a2)[1];
  v8[0] = v4;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(v4 + 160) == 1)
  {
    v6 = 0;
  }

  else if (*(v4 + 168))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  sub_24BF21C44(v8, a3, v6);
  *&result = sub_24BE7F218(v8).n128_u64[0];
  return result;
}

void sub_24BFA36D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[11] = *MEMORY[0x277D85DE8];
  v4 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(a3, v4);
}

void sub_24BFA3C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::shared_future<void> a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  __cxa_free_exception(v23);
  std::mutex::unlock(v24);
  std::shared_future<void>::~shared_future(v25 + 2);
  sub_24BE7F218(&a9);
  std::shared_future<void>::~shared_future(&a12);
  sub_24BFA3D44(&a13);
  _Unwind_Resume(a1);
}

double sub_24BFA3D44(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  *&result = sub_24BE7F218(a1).n128_u64[0];
  return result;
}

void sub_24BFA3D88(uint64_t *a1, uint64_t ***a2, uint64_t a3)
{
  v5 = *a2;
  memset(v7, 0, sizeof(v7));
  sub_24BCC9A1C(v7, a1[3], a1[4], (a1[4] - a1[3]) >> 2);
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, a1[6], a1[7], (a1[7] - a1[6]) >> 2);
  sub_24BFB1FF0(v5, (v5 + 2), a3, v7, __p);
}

void sub_24BFA3E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFA3E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v4 = *(*a3 + 48);
  v5 = *(*a3 + 60);
  v7 = v5 * (v4 / (*(**a2 + 48) >> 1));
  v6 = sub_24BE7E2A4(v5 * v4);
  v8[0] = &off_285F93798;
  v8[1] = sub_24BE7E1F0;
  v8[3] = v8;
  sub_24BE7EE1C(a3, v6);
}

void sub_24BFA41C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFA425C(uint64_t a1, uint64_t ***a2, uint64_t **a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  sub_24BF0AA9C(*a2, a3, v8);
  if (v8[0] == 1)
  {
    v6 = sub_24BE7E2A4(*(*a3 + 60) * (*a3)[6]);
    v10[0] = &off_285F93798;
    v10[1] = sub_24BE7E1F0;
    v10[3] = v10;
    sub_24BE7EE1C(a3, v6);
  }

  sub_24BF0AE74(a1, v5, v9, a3);
  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_24BFA43AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BFA43FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_24BEF03F8(a2, (a1[1] - *a1) >> 2);
  v4 = *a1;
  v5 = (a1[1] - *a1) >> 2;
  v6 = (v5 - 1);
  if (v6 >= 1)
  {
    v7 = *result;
    v8 = v5 + 4294967294;
    do
    {
      *(v7 + 8 * v8--) = *(v7 + 8 * v6) * *(v4 + 4 * v6);
    }

    while (v6-- > 1);
  }

  return result;
}

void sub_24BFA4488(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  if (!*(*a3 + 48))
  {
    v8[0] = &off_285F93798;
    v8[1] = sub_24BE7E1F0;
    v8[3] = v8;
    sub_24BE7EE1C(a3, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 24);
  v6 = a1 + 72;
  v7 = *a2;

  sub_24BFB1A30(v7, a3, v5, v6);
}

void sub_24BFA4584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BFA4598(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  if (!*(*a3 + 48))
  {
    v23[0] = &off_285F93798;
    v23[1] = sub_24BE7E1F0;
    v23[3] = v23;
    sub_24BE7EE1C(a3, 0);
  }

  v4 = *a2;
  v5 = *a2 + 2;
  if (*(*v5 + 48))
  {
    v7 = *v4;
    if (*(*v4 + 168))
    {
      v8 = *(v7 + 48);
      v9 = *(v7 + 160);
      if (v8 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v9 = *(v7 + 160);
      v10 = 2;
    }

    if (v9 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    sub_24BF21980(*a2, a3, v13, a1 + 8);
    sub_24BF0B0BC(a1, a3, &v21);
    v14 = v4[2];
    v15 = *(v14 + 24);
    v16 = *(v14 + 32);
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_24BF233CC(&__p, v15, v16, (v16 - v15) >> 3);
    sub_24BF223D0(v5, a3, *v5, &__p, v22, 0, v21, 3, a1 + 8);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    if (v22[0])
    {
      v22[1] = v22[0];
      operator delete(v22[0]);
    }

    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *MEMORY[0x277D85DE8];
    v12 = *a2;

    sub_24BF0F2D8(v12, a3);
  }
}

void sub_24BFA47D0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[QRF::eval_gpu] Metal QR factorization NYI.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BFA482C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[SVD::eval_gpu] Metal SVD NYI.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BFA4888()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[Inverse::eval_gpu] Metal inversion NYI.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BFA48E4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[Cholesky::eval_gpu] Metal Cholesky decomposition NYI.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BFA4940()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[Eigvalsh::eval_gpu] Metal Eigh NYI.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BFA499C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  v6 = BYTE4(*(v5 + 56));
  v7 = BYTE4(*(*a3 + 56));
  if (v6 != v7 && (v7 >= v6 || *(*(v5 + 32) - 8) != 1) && (*(v5 + 168) & 2) == 0)
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
    v8 = *(*v4 + 56);
    sub_24BE7E8D4();
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_24BD7E680(&v14, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
  v9 = v14;
  v10 = (v15 - v14) >> 3;
  if (v10 > 1)
  {
    v11 = (v10 - 1);
    do
    {
      *v9 = *v9 * v6 / v7;
      ++v9;
      --v11;
    }

    while (v11);
  }

  sub_24BF0F384(v4, a3, &v14, *(*v4 + 168), *(*v4 + 160) * v6 / v7, 0);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24BFA4C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_24BE7F218(&a10);
  sub_24BE7F218(&a20);
  _Unwind_Resume(a1);
}

void sub_24BFA4D18(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285FA00F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BFA4D6C(uint64_t a1)
{
  MEMORY[0x24C254790](a1 + 56);

  return sub_24BFA4F64((a1 + 24));
}

void *sub_24BFA4DAC(void *a1)
{
  *a1 = &unk_285FA0148;
  v2 = a1[5];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  sub_24BE7F218(a1 + 1);
  return a1;
}

void sub_24BFA4E00(void *a1)
{
  *a1 = &unk_285FA0148;
  v2 = a1[5];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  sub_24BE7F218(a1 + 1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BFA4E74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285FA0148;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a2 + 24) = *(a1 + 24);
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 60) = 0;
  *(a2 + 57) = 0;
  return result;
}

double sub_24BFA4EC4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  *&result = sub_24BE7F218(a1 + 8).n128_u64[0];
  return result;
}

void sub_24BFA4F04(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  sub_24BE7F218(a1 + 1);

  operator delete(a1);
}

void *sub_24BFA4F64(void *a1)
{
  v2 = a1[3];
  if (v2 == a1)
  {
    v3 = (*v2 + 24);
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = (*v2 + 32);
LABEL_5:
    (*v3)();
  }

  return a1;
}

void *sub_24BFA5008(void *a1)
{
  *a1 = &unk_285FA01B0;
  v2 = a1[2];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  return a1;
}

void sub_24BFA5054(void *a1)
{
  *a1 = &unk_285FA01B0;
  v1 = a1[2];
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BFA512C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_285FA01B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BFA5164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24BC9EC78(v1);
  }
}

void sub_24BFA5174(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  operator delete(__p);
}

uint64_t sub_24BFA51BC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285FA0210))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BFA5208(std::promise<void> *a1)
{
  v2 = a1 + 4;
  state = a1[4].__state_;
  if (!state)
  {
    sub_24BF09AD4(3u);
  }

  if ((state->__state_ & 1) != 0 || (v5.__ptr_ = 0, ptr = state->__exception_.__ptr_, std::exception_ptr::~exception_ptr(&v5), ptr))
  {
    sub_24BF09AD4(2u);
  }

  (a1[3].__state_->__vftable[1].~__assoc_sub_state_0)(a1[3].__state_);
  std::promise<void>::set_value(v2);
}

void sub_24BFA52A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  v10.__ptr_ = &a9;
  std::promise<void>::set_exception(v9, v10);
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  JUMPOUT(0x24BFA527CLL);
}

void sub_24BFA52C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

std::shared_future<void> *sub_24BFA52E4(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_285FA0230;
  std::shared_future<void>::~shared_future(a1 + 3);
  sub_24BE7F218(&a1[1]);
  return a1;
}

void sub_24BFA5330(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_285FA0230;
  std::shared_future<void>::~shared_future(a1 + 3);
  sub_24BE7F218(&a1[1]);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BFA5420(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_285FA0230;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[3];
  a2[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_24BFA5470(std::shared_future<void> *a1)
{
  std::shared_future<void>::~shared_future(a1 + 3);

  *&result = sub_24BE7F218(&a1[1]).n128_u64[0];
  return result;
}

void sub_24BFA54AC(std::shared_future<void> *a1)
{
  std::shared_future<void>::~shared_future(a1 + 3);
  sub_24BE7F218(&a1[1]);

  operator delete(a1);
}

id sub_24BFA54F0(uint64_t a1)
{
  std::__assoc_sub_state::wait(*(a1 + 24));
  v2 = (*(a1 + 8) + 88);

  return sub_24BF59758(v2);
}

uint64_t sub_24BFA5530(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285FA0290))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BFA557C(void **a1, uint64_t ***a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, char a13, char a14, char a15, char a16, uint64_t *a17)
{
  v128 = a7;
  v129[0] = a6;
  v127 = a8;
  v21 = *a2;
  v125 = 0uLL;
  v126 = 0;
  v124[2] = &v125;
  v124[3] = a17;
  sub_24BFA6438(v21, v124);
  sub_24BFA6438(v21 + 2, v123);
  sub_24BFA6438(v21 + 4, v122);
  sub_24BFA6438(v21 + 6, v121);
  v22 = v124[0];
  v23 = ((v22[1] - *v22) >> 2) - 2;
  v24 = v123[0];
  v119 = ((v24[1] - *v24) >> 2) - 2;
  v120 = v23;
  v65 = v121[0];
  v66 = v122[0];
  if ((v128 & 0x1F) != 0)
  {
    v25 = "false";
  }

  else
  {
    v25 = "true";
  }

  sub_24BC836D4(&v117, v25);
  sub_24BCE1268(&v112);
  sub_24BF0BC74(v124[0][7] & 0xFFFFFFFFFFLL, __src);
  v26 = *(a1 + 23);
  if (v26 >= 0)
  {
    v27 = a1;
  }

  else
  {
    v27 = *a1;
  }

  if (v26 >= 0)
  {
    v28 = *(a1 + 23);
  }

  else
  {
    v28 = a1[1];
  }

  v29 = sub_24BC95264(&v112, v27, v28);
  v30 = sub_24BC95264(v29, "_", 1);
  if (v111 >= 0)
  {
    v31 = __src;
  }

  else
  {
    v31 = __src[0];
  }

  if (v111 >= 0)
  {
    v32 = HIBYTE(v111);
  }

  else
  {
    v32 = __src[1];
  }

  v33 = sub_24BC95264(v30, v31, v32);
  v34 = sub_24BC95264(v33, "_gs_", 4);
  v35 = MEMORY[0x24C2543C0](v34, a4);
  v36 = sub_24BC95264(v35, "_b_", 3);
  MEMORY[0x24C2543C0](v36, a5);
  if (a16)
  {
    v37 = sub_24BC95264(&v112, "_d_", 3);
    MEMORY[0x24C2543C0](v37, v129[0]);
  }

  if (a15)
  {
    v38 = sub_24BC95264(&v112, "_alN_", 5);
    if (v118 >= 0)
    {
      v39 = &v117;
    }

    else
    {
      v39 = v117;
    }

    if (v118 >= 0)
    {
      v40 = HIBYTE(v118);
    }

    else
    {
      v40 = *(&v117 + 1);
    }

    sub_24BC95264(v38, v39, v40);
  }

  if ((a14 & 1) == 0)
  {
    v41 = sub_24BC95264(&v112, "_batch_", 7);
    MEMORY[0x24C254390](v41, a12);
  }

  __p[1] = 0;
  __p[0] = 0;
  v109 = 0;
  if (a16)
  {
    std::stringbuf::str();
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(__dst, *a1, a1[1]);
    }

    else
    {
      *__dst = *a1;
      v103 = a1[2];
    }

    if (SHIBYTE(v111) < 0)
    {
      sub_24BC8DE9C(v100, __src[0], __src[1]);
    }

    else
    {
      *v100 = *__src;
      v101 = v111;
    }

    sub_24BFA6594(&v104, __dst, v100, a4, a5, v129[0], a12, v106);
    if (SHIBYTE(v109) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v106;
    v109 = v107;
    HIBYTE(v107) = 0;
    LOBYTE(v106[0]) = 0;
    if (SHIBYTE(v101) < 0)
    {
      operator delete(v100[0]);
    }

    if (SHIBYTE(v103) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v105 < 0)
    {
      v42 = v104;
LABEL_115:
      operator delete(v42);
    }
  }

  else if (!a15 || (a14 & 1) != 0)
  {
    if (a14 & 1) != 0 || (a15)
    {
      if (a14 && a15)
      {
        std::stringbuf::str();
        if (*(a1 + 23) < 0)
        {
          sub_24BC8DE9C(v82, *a1, a1[1]);
        }

        else
        {
          *v82 = *a1;
          v83 = a1[2];
        }

        if (SHIBYTE(v111) < 0)
        {
          sub_24BC8DE9C(v80, __src[0], __src[1]);
        }

        else
        {
          *v80 = *__src;
          v81 = v111;
        }

        if (SHIBYTE(v118) < 0)
        {
          sub_24BC8DE9C(v78, v117, *(&v117 + 1));
        }

        else
        {
          *v78 = v117;
          v79 = v118;
        }

        sub_24BFA7014(&v84, v82, v80, a4, a5, v78, v106);
        if (SHIBYTE(v109) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *v106;
        v109 = v107;
        HIBYTE(v107) = 0;
        LOBYTE(v106[0]) = 0;
        if (SHIBYTE(v79) < 0)
        {
          operator delete(v78[0]);
        }

        if (SHIBYTE(v81) < 0)
        {
          operator delete(v80[0]);
        }

        if (SHIBYTE(v83) < 0)
        {
          operator delete(v82[0]);
        }

        if (v85 < 0)
        {
          v42 = v84;
          goto LABEL_115;
        }
      }

      else
      {
        std::stringbuf::str();
        if (*(a1 + 23) < 0)
        {
          sub_24BC8DE9C(v74, *a1, a1[1]);
        }

        else
        {
          *v74 = *a1;
          v75 = a1[2];
        }

        if (SHIBYTE(v111) < 0)
        {
          sub_24BC8DE9C(v72, __src[0], __src[1]);
        }

        else
        {
          *v72 = *__src;
          v73 = v111;
        }

        sub_24BFA7384(&v76, v74, v72, a4, a5, v106);
        if (SHIBYTE(v109) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *v106;
        v109 = v107;
        HIBYTE(v107) = 0;
        LOBYTE(v106[0]) = 0;
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72[0]);
        }

        if (SHIBYTE(v75) < 0)
        {
          operator delete(v74[0]);
        }

        if (v77 < 0)
        {
          v42 = v76;
          goto LABEL_115;
        }
      }
    }

    else
    {
      std::stringbuf::str();
      if (*(a1 + 23) < 0)
      {
        sub_24BC8DE9C(v88, *a1, a1[1]);
      }

      else
      {
        *v88 = *a1;
        v89 = a1[2];
      }

      if (SHIBYTE(v111) < 0)
      {
        sub_24BC8DE9C(v86, __src[0], __src[1]);
      }

      else
      {
        *v86 = *__src;
        v87 = v111;
      }

      sub_24BFA6CB8(&v90, v88, v86, a4, a5, a12, v106);
      if (SHIBYTE(v109) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v106;
      v109 = v107;
      HIBYTE(v107) = 0;
      LOBYTE(v106[0]) = 0;
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86[0]);
      }

      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88[0]);
      }

      if (v91 < 0)
      {
        v42 = v90;
        goto LABEL_115;
      }
    }
  }

  else
  {
    std::stringbuf::str();
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(v96, *a1, a1[1]);
    }

    else
    {
      *v96 = *a1;
      v97 = a1[2];
    }

    if (SHIBYTE(v111) < 0)
    {
      sub_24BC8DE9C(v94, __src[0], __src[1]);
    }

    else
    {
      *v94 = *__src;
      v95 = v111;
    }

    if (SHIBYTE(v118) < 0)
    {
      sub_24BC8DE9C(v92, v117, *(&v117 + 1));
    }

    else
    {
      *v92 = v117;
      v93 = v118;
    }

    sub_24BFA691C(&v98, v96, v94, a4, a5, v92, a12, v106);
    if (SHIBYTE(v109) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v106;
    v109 = v107;
    HIBYTE(v107) = 0;
    LOBYTE(v106[0]) = 0;
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92[0]);
    }

    if (SHIBYTE(v95) < 0)
    {
      operator delete(v94[0]);
    }

    if (SHIBYTE(v97) < 0)
    {
      operator delete(v96[0]);
    }

    if (v99 < 0)
    {
      v42 = v98;
      goto LABEL_115;
    }
  }

  v43 = *(a17 + 4);
  v44 = sub_24BF55DE0();
  std::stringbuf::str();
  v45 = sub_24BF88AB0(v44, v106, __p);
  if (SHIBYTE(v107) < 0)
  {
    operator delete(v106[0]);
  }

  v46 = sub_24BF5488C(v44, *a17);
  [*v46 MTL:v45 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v46)];
  sub_24BF53508(v46, v123, 0, 0);
  sub_24BF53508(v46, v122, 1, 0);
  sub_24BF53508(v46, v121, 2, 0);
  sub_24BF53508(v46, v124, 3, 0);
  v47 = sub_24BF535E8(v46, a3, 4, 0);
  v48 = [*v46 MTL:v129 :4 Private:5 :? Selector:? :?s_ksetBytes_length_atIndex_(v47)];
  v49 = [*v46 MTL:&v128 :4 Private:6 :? Selector:? :?s_ksetBytes_length_atIndex_(v48)];
  if (a13)
  {
    v49 = [*v46 MTL:&v127 :4 Private:7 :? Selector:? :?s_ksetBytes_length_atIndex_(v49)];
    v50 = 8;
    if (a12)
    {
      goto LABEL_123;
    }

LABEL_122:
    if (!a14)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

  v50 = 7;
  if ((a12 & 1) == 0)
  {
    goto LABEL_122;
  }

LABEL_123:
  v51 = [*v46 MTL:&v120 :4 Private:v50 :? Selector:? :?s_ksetBytes_length_atIndex_(v49)];
  v52 = [*v46 MTL:*v22 :v22[1] - *v22 Private:v50 + 1 :? Selector:? :?s_ksetBytes_length_atIndex_(v51)];
  v53 = [*v46 MTL:v22[3] :v22[4] - v22[3] Private:v50 + 2 :? Selector:? :?s_ksetBytes_length_atIndex_(v52)];
  v54 = [*v46 MTL:&v119 :4 Private:v50 + 3 :? Selector:? :?s_ksetBytes_length_atIndex_(v53)];
  v55 = [*v46 MTL:*v24 :v24[1] - *v24 Private:v50 + 4 :? Selector:? :?s_ksetBytes_length_atIndex_(v54)];
  v56 = [*v46 MTL:v24[3] :v24[4] - v24[3] Private:v50 + 5 :? Selector:? :?s_ksetBytes_length_atIndex_(v55)];
  v57 = [*v46 MTL:v66[3] :v66[4] - v66[3] Private:v50 + 6 :? Selector:? :?s_ksetBytes_length_atIndex_(v56)];
  v49 = [*v46 MTL:v65[3] :v65[4] - v65[3] Private:v50 + 7 :? Selector:? :?s_ksetBytes_length_atIndex_(v57)];
LABEL_124:
  if (a14)
  {
    v58 = (*a2 + 8);
    v59 = *v58;
    v60 = (*a2 + 10);
    v61 = *v60;
    LODWORD(v106[0]) = (v59[1] - *v59) >> 2;
    v62 = [*v46 MTL:v106 :4 Private:v50 + 8 :? Selector:? :?s_ksetBytes_length_atIndex_(v49)];
    [*v46 MTL:*v59 :v59[1] - *v59 Private:v50 + 9 :? Selector:? :?s_ksetBytes_length_atIndex_(v62)];
    sub_24BF53508(v46, v58, v50 + 10, 0);
    v63 = sub_24BF53508(v46, v60, v50 + 11, 0);
    v64 = [*v46 MTL:v59[3] :v59[4] - v59[3] Private:v50 + 12 :? Selector:? :?s_ksetBytes_length_atIndex_(v63)];
    [*v46 MTL:*(v61 + 24) :*(v61 + 32) - *(v61 + 24) Private:v50 + 13 :? Selector:? :?s_ksetBytes_length_atIndex_(v64)];
  }

  *v106 = *a11;
  v107 = *(a11 + 16);
  v70 = *a10;
  v71 = *(a10 + 16);
  sub_24BF536F8(v46, v106, &v70);
  v68 = v125;
  v69 = v126;
  v125 = 0uLL;
  v126 = 0;
  sub_24BF54278(v44, &v68, *a17);
  v106[0] = &v68;
  sub_24BCC961C(v106);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v111) < 0)
  {
    operator delete(__src[0]);
  }

  v112 = *MEMORY[0x277D82828];
  *(&v112 + *(v112 - 3)) = *(MEMORY[0x277D82828] + 24);
  v113 = MEMORY[0x277D82878] + 16;
  if (v115 < 0)
  {
    operator delete(v114[7].__locale_);
  }

  v113 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v114);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](&v116);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(v117);
  }

  sub_24BE7F218(v121);
  sub_24BE7F218(v122);
  sub_24BE7F218(v123);
  sub_24BE7F218(v124);
  v112 = &v125;
  sub_24BCC961C(&v112);
}

void sub_24BFA61B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  sub_24BCE1400(&STACK[0x288]);
  if (*(v53 - 217) < 0)
  {
    operator delete(*(v53 - 240));
  }

  sub_24BE7F218(v53 - 208);
  sub_24BE7F218(v53 - 192);
  sub_24BE7F218(v53 - 176);
  sub_24BE7F218(v53 - 160);
  STACK[0x288] = v53 - 128;
  sub_24BCC961C(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_24BFA6438(uint64_t **a1@<X1>, uint64_t **a2@<X8>)
{
  v4 = *a1;
  v5 = **a1;
  v6 = v4[1];
  v7 = v6 - v5;
  if (v6 == v5)
  {
    sub_24BC923C0();
  }

  v8 = (v7 >> 2) - 1;
  v9 = v4[3];
  if (*(v9 + 2 * v7 - 16) != *(v5 + 4 * v8) || *(v9 + 8 * v8) != 1)
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v5, v6, v7 >> 2);
    v11 = (*a1)[7];
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    sub_24BE7E8D4();
  }

  v12 = a1[1];
  *a2 = v4;
  a2[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }
}

void sub_24BFA6550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 40) = v16;
  sub_24BCC961C((v17 - 40));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BFA6594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v40[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v31);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  v19 = sub_24BC95264(&v31, v17, v18);
  sub_24BC95264(v19, "<", 1);
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
    v22 = *(a3 + 8);
  }

  sub_24BC95264(&v31, v21, v22);
  sub_24BC95264(&v31, ", ", 2);
  MEMORY[0x24C2543C0](&v31, a4);
  sub_24BC95264(&v31, ", ", 2);
  MEMORY[0x24C2543C0](&v31, a5);
  sub_24BC95264(&v31, ", ", 2);
  MEMORY[0x24C2543C0](&v31, a6);
  sub_24BC95264(&v31, ", ", 2);
  MEMORY[0x24C254390](&v31, a7);
  sub_24BC95264(&v31, ">", 1);
  std::stringbuf::str();
  v23 = *(a1 + 23);
  v24 = *a1;
  if (v23 >= 0)
  {
    v24 = a1;
  }

  if (v23 < 0)
  {
    v23 = a1[1];
  }

  v25 = v30;
  v26 = v29[0];
  if (v30 >= 0)
  {
    v26 = v29;
  }

  if (v30 < 0)
  {
    v25 = v29[1];
  }

  v36[0] = v24;
  v36[1] = v23;
  v36[2] = v26;
  v36[3] = v25;
  v37 = &unk_285F9EFD0;
  __p = v40;
  v39 = xmmword_24BFF4C90;
  sub_24BF70F28(&v37, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v36, 0);
  sub_24BF7125C(&v37, a8);
  if (__p != v40)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v31 = *MEMORY[0x277D82828];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82828] + 24);
  v32 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v33);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v35);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BFA691C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v43[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v34);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  v19 = sub_24BC95264(&v34, v17, v18);
  sub_24BC95264(v19, "<", 1);
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
    v22 = *(a3 + 8);
  }

  sub_24BC95264(&v34, v21, v22);
  sub_24BC95264(&v34, ", ", 2);
  MEMORY[0x24C2543C0](&v34, a4);
  sub_24BC95264(&v34, ", ", 2);
  MEMORY[0x24C2543C0](&v34, a5);
  sub_24BC95264(&v34, ", ", 2);
  v23 = *(a6 + 23);
  if (v23 >= 0)
  {
    v24 = a6;
  }

  else
  {
    v24 = *a6;
  }

  if (v23 >= 0)
  {
    v25 = *(a6 + 23);
  }

  else
  {
    v25 = *(a6 + 8);
  }

  sub_24BC95264(&v34, v24, v25);
  sub_24BC95264(&v34, ", ", 2);
  MEMORY[0x24C254390](&v34, a7);
  sub_24BC95264(&v34, ">", 1);
  std::stringbuf::str();
  v26 = *(a1 + 23);
  v27 = *a1;
  if (v26 >= 0)
  {
    v27 = a1;
  }

  if (v26 < 0)
  {
    v26 = a1[1];
  }

  v28 = v33;
  v29 = v32[0];
  if (v33 >= 0)
  {
    v29 = v32;
  }

  if (v33 < 0)
  {
    v28 = v32[1];
  }

  v39[0] = v27;
  v39[1] = v26;
  v39[2] = v29;
  v39[3] = v28;
  v40 = &unk_285F9EFD0;
  __p = v43;
  v42 = xmmword_24BFF4C90;
  sub_24BF70F28(&v40, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v39, 0);
  sub_24BF7125C(&v40, a8);
  if (__p != v43)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  v34 = *MEMORY[0x277D82828];
  *(&v34 + *(v34 - 24)) = *(MEMORY[0x277D82828] + 24);
  v35 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v38);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BFA6CB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v38[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v29);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_24BC95264(&v29, v15, v16);
  sub_24BC95264(v17, "<", 1);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  sub_24BC95264(&v29, v19, v20);
  sub_24BC95264(&v29, ", ", 2);
  MEMORY[0x24C2543C0](&v29, a4);
  sub_24BC95264(&v29, ", ", 2);
  MEMORY[0x24C2543C0](&v29, a5);
  sub_24BC95264(&v29, ", ", 2);
  MEMORY[0x24C254390](&v29, a6);
  sub_24BC95264(&v29, ">", 1);
  std::stringbuf::str();
  v21 = *(a1 + 23);
  v22 = *a1;
  if (v21 >= 0)
  {
    v22 = a1;
  }

  if (v21 < 0)
  {
    v21 = a1[1];
  }

  v23 = v28;
  v24 = v27[0];
  if (v28 >= 0)
  {
    v24 = v27;
  }

  if (v28 < 0)
  {
    v23 = v27[1];
  }

  v34[0] = v22;
  v34[1] = v21;
  v34[2] = v24;
  v34[3] = v23;
  v35 = &unk_285F9EFD0;
  __p = v38;
  v37 = xmmword_24BFF4C90;
  sub_24BF70F28(&v35, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v34, 0);
  sub_24BF7125C(&v35, a7);
  if (__p != v38)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v29 = *MEMORY[0x277D82828];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x277D82828] + 24);
  v30 = MEMORY[0x277D82878] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v33);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BFA7014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v41[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v32);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_24BC95264(&v32, v15, v16);
  sub_24BC95264(v17, "<", 1);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  sub_24BC95264(&v32, v19, v20);
  sub_24BC95264(&v32, ", ", 2);
  MEMORY[0x24C2543C0](&v32, a4);
  sub_24BC95264(&v32, ", ", 2);
  MEMORY[0x24C2543C0](&v32, a5);
  sub_24BC95264(&v32, ", ", 2);
  v21 = *(a6 + 23);
  if (v21 >= 0)
  {
    v22 = a6;
  }

  else
  {
    v22 = *a6;
  }

  if (v21 >= 0)
  {
    v23 = *(a6 + 23);
  }

  else
  {
    v23 = *(a6 + 8);
  }

  sub_24BC95264(&v32, v22, v23);
  sub_24BC95264(&v32, ">", 1);
  std::stringbuf::str();
  v24 = *(a1 + 23);
  v25 = *a1;
  if (v24 >= 0)
  {
    v25 = a1;
  }

  if (v24 < 0)
  {
    v24 = a1[1];
  }

  v26 = v31;
  v27 = v30[0];
  if (v31 >= 0)
  {
    v27 = v30;
  }

  if (v31 < 0)
  {
    v26 = v30[1];
  }

  v37[0] = v25;
  v37[1] = v24;
  v37[2] = v27;
  v37[3] = v26;
  v38 = &unk_285F9EFD0;
  __p = v41;
  v40 = xmmword_24BFF4C90;
  sub_24BF70F28(&v38, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v37, 0);
  sub_24BF7125C(&v38, a7);
  if (__p != v41)
  {
    operator delete(__p);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v32 = *MEMORY[0x277D82828];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
  v33 = MEMORY[0x277D82878] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v34);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v36);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BFA7384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v36[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v27);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_24BC95264(&v27, v13, v14);
  sub_24BC95264(v15, "<", 1);
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
    v18 = *(a3 + 8);
  }

  sub_24BC95264(&v27, v17, v18);
  sub_24BC95264(&v27, ", ", 2);
  MEMORY[0x24C2543C0](&v27, a4);
  sub_24BC95264(&v27, ", ", 2);
  MEMORY[0x24C2543C0](&v27, a5);
  sub_24BC95264(&v27, ">", 1);
  std::stringbuf::str();
  v19 = *(a1 + 23);
  v20 = *a1;
  if (v19 >= 0)
  {
    v20 = a1;
  }

  if (v19 < 0)
  {
    v19 = a1[1];
  }

  v21 = v26;
  v22 = v25[0];
  if (v26 >= 0)
  {
    v22 = v25;
  }

  if (v26 < 0)
  {
    v21 = v25[1];
  }

  v32[0] = v20;
  v32[1] = v19;
  v32[2] = v22;
  v32[3] = v21;
  v33 = &unk_285F9EFD0;
  __p = v36;
  v35 = xmmword_24BFF4C90;
  sub_24BF70F28(&v33, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v32, 0);
  sub_24BF7125C(&v33, a6);
  if (__p != v36)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v27 = *MEMORY[0x277D82828];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x277D82828] + 24);
  v28 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v31);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BFA76BC(uint64_t ***a1, uint64_t **a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a5 <= 0x2000)
  {
    v10 = 8;
  }

  else
  {
    v10 = 32;
  }

  v52[0] = v10;
  v52[1] = a6;
  v51 = (a5 + v10 - 1) / v10;
  v11 = *a1;
  memset(v50, 0, 24);
  v49[2] = v50;
  v49[3] = a9;
  sub_24BFA856C(v11, v49);
  sub_24BFA856C(v11 + 2, &v48);
  sub_24BFA856C(v11 + 4, &v47);
  sub_24BFA856C(v11 + 6, &v46);
  v45 = ((v49[0][1] - *v49[0]) >> 2) - 2;
  v43 = 0;
  v42 = 0;
  v44 = 0;
  sub_24BCC9A1C(&v42, *v49[0], v49[0][1], (v49[0][1] - *v49[0]) >> 2);
  v39 = 0;
  v41 = 0;
  v40 = 0;
  sub_24BD7E680(&v39, v49[0][3], v49[0][4], (v49[0][4] - v49[0][3]) >> 3);
  v38 = ((v48[1] - *v48) >> 2) - 2;
  v36 = 0;
  v35 = 0;
  v37 = 0;
  sub_24BCC9A1C(&v35, *v48, v48[1], (v48[1] - *v48) >> 2);
  v32 = 0;
  v34 = 0;
  v33 = 0;
  sub_24BD7E680(&v32, v48[3], v48[4], (v48[4] - v48[3]) >> 3);
  v29 = 0;
  v31 = 0;
  v30 = 0;
  sub_24BD7E680(&v29, v47[3], v47[4], (v47[4] - v47[3]) >> 3);
  v26 = 0;
  v28 = 0;
  v27 = 0;
  sub_24BD7E680(&v26, v46[3], v46[4], (v46[4] - v46[3]) >> 3);
  sub_24BEAAF40(&v42, (v43 - 8), v52);
  *(v43 - 4) /= v52[0];
  v20[0] = v51;
  sub_24BDAF25C(&v39, (v40 - 16), v20);
  *(v39 + 2 * (v49[0][1] - *v49[0]) - 8) = v51;
  ++v45;
  sub_24BEAAF40(&v35, (v36 - 8), v52);
  v12 = *v48;
  v13 = v48[1] - *v48;
  *(v35 + v13 - 4) /= v52[0];
  if (v13)
  {
    v20[0] = *(v12 + v13 - 4) * v51;
    sub_24BDAF25C(&v32, (v33 - 16), v20);
    ++v38;
    v14 = v47[1];
    if (v14 != *v47)
    {
      v20[0] = *(v14 - 4) * v51;
      sub_24BDAF25C(&v29, (v30 - 16), v20);
      v15 = v46[1];
      if (v15 != *v46)
      {
        v20[0] = *(v15 - 4) * v51;
        sub_24BDAF25C(&v26, (v27 - 16), v20);
        v25 = a5 - (v52[0] - 1) * v51;
        v16 = *(a9 + 4);
        sub_24BF55DE0();
        v17 = *a2;
        v22 = 0;
        v24 = 0;
        v23 = 0;
        sub_24BCC9A1C(&v22, *v17, v17[1], (v17[1] - *v17) >> 2);
        sub_24BEAAF40(&v22, (v23 - 8), v52);
        memset(v21, 0, sizeof(v21));
        sub_24BCC9A1C(v21, v22, v23, (v23 - v22) >> 2);
        v18 = v49[0][7];
        memset(&v20[35], 0, 40);
        sub_24BE7E8D4();
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  sub_24BC923C0();
}

void sub_24BFA82D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void **a59)
{
  if (a43 < 0)
  {
    operator delete(*(v59 + 112));
  }

  if (a49 < 0)
  {
    operator delete(*(v59 + 136));
  }

  if (a58 < 0)
  {
    operator delete(*(v59 + 184));
  }

  sub_24BCE1400(&a59);
  sub_24BE7F218(&STACK[0x2A0]);
  v62 = *(v59 + 568);
  if (v62)
  {
    *(v59 + 576) = v62;
    operator delete(v62);
  }

  v63 = *(v59 + 600);
  if (v63)
  {
    *(v59 + 608) = v63;
    operator delete(v63);
  }

  v64 = *(v59 + 624);
  if (v64)
  {
    *(v59 + 632) = v64;
    operator delete(v64);
  }

  v65 = *(v59 + 648);
  if (v65)
  {
    *(v59 + 656) = v65;
    operator delete(v65);
  }

  v66 = *(v59 + 672);
  if (v66)
  {
    *(v59 + 680) = v66;
    operator delete(v66);
  }

  v67 = *(v59 + 704);
  if (v67)
  {
    *(v59 + 712) = v67;
    operator delete(v67);
  }

  v68 = *(v59 + 728);
  if (v68)
  {
    *(v59 + 736) = v68;
    operator delete(v68);
  }

  sub_24BE7F218(&STACK[0x370]);
  sub_24BE7F218(&STACK[0x380]);
  sub_24BE7F218(v60 - 256);
  sub_24BE7F218(v60 - 240);
  *(v59 + 208) = v60 - 208;
  sub_24BCC961C(&a59);
  _Unwind_Resume(a1);
}

void sub_24BFA856C(uint64_t **a1@<X1>, uint64_t **a2@<X8>)
{
  v4 = *a1;
  v5 = **a1;
  v6 = v4[1];
  v7 = v6 - v5;
  if (v6 == v5)
  {
    sub_24BC923C0();
  }

  v8 = (v7 >> 2) - 1;
  v9 = v4[3];
  if (*(v9 + 2 * v7 - 16) != *(v5 + 4 * v8) || *(v9 + 8 * v8) != 1)
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v5, v6, v7 >> 2);
    v11 = (*a1)[7];
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    sub_24BE7E8D4();
  }

  v12 = a1[1];
  *a2 = v4;
  a2[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }
}

void sub_24BFA8684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 40) = v16;
  sub_24BCC961C((v17 - 40));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BFA86C8(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = sub_24BE7E2A4(*(*a2 + 60) * *(*a2 + 48));
  v4[0] = &off_285F93798;
  v4[1] = sub_24BE7E1F0;
  v4[3] = v4;
  sub_24BE7EE1C(a2, v3);
}

void sub_24BFA8BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((v31 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a30);
      if (*(v32 - 185) < 0)
      {
        operator delete(*(v32 - 208));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v30);
  goto LABEL_6;
}

void sub_24BFA8C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  sub_24BFA86C8(a2, a3);
}

void sub_24BFA8C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  sub_24BFA86C8(a2, a3);
}

void sub_24BFA8CB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = sub_24BE7E2A4(*(**a3 + 60) * *(**a3 + 48));
  v6[0] = &off_285F93798;
  v6[1] = sub_24BE7E1F0;
  v6[3] = v6;
  sub_24BE7EE1C(v4, v5);
}

void sub_24BFA938C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  sub_24BCE1400(&a58);
  sub_24BE7F218(v58 - 240);
  a58 = v58 - 208;
  sub_24BCC961C(&a58);
  _Unwind_Resume(a1);
}

void sub_24BFA94EC(uint64_t **a1@<X1>, uint64_t **a2@<X8>)
{
  v4 = *a1;
  if (((*a1)[21] & 2) == 0)
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v4, v4[1], (v4[1] - *v4) >> 2);
    v5 = (*a1)[7];
    v10 = 0;
    v11 = 0;
    v8 = 0;
    v9 = 0;
    v7 = 0;
    sub_24BE7E8D4();
  }

  v6 = a1[1];
  *a2 = v4;
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }
}

void sub_24BFA95E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 40) = v16;
  sub_24BCC961C((v17 - 40));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BFA9624(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    if (a2[1] == 3 && **a2 == 30067 && *(*a2 + 2) == 109)
    {
      goto LABEL_34;
    }

    if (a2[1] == 4 && **a2 == 1685025392)
    {
      goto LABEL_34;
    }

    if (a2[1] == 3 && **a2 == 28257 && *(*a2 + 2) == 100)
    {
      goto LABEL_32;
    }

    if (a2[1] != 2)
    {
      return *(*a1 + 56) & 0xFFFFFFFFFFLL;
    }

    a2 = *a2;
    goto LABEL_21;
  }

  v3 = *(a2 + 23);
  if (v3 == 2)
  {
LABEL_21:
    if (*a2 != 29295)
    {
      return *(*a1 + 56) & 0xFFFFFFFFFFLL;
    }

    goto LABEL_32;
  }

  if (v3 == 3)
  {
    if (*a2 == 30067 && *(a2 + 2) == 109)
    {
      goto LABEL_34;
    }

    if (*a2 != 28257 || *(a2 + 2) != 100)
    {
      return *(*a1 + 56) & 0xFFFFFFFFFFLL;
    }

LABEL_32:
    if ((*(*a1 + 60) - 1) >= 4u)
    {
      return 0x800000008;
    }

    else
    {
      return qword_24BFF88F8[(*(*a1 + 60) - 1)];
    }
  }

  if (v3 != 4 || *a2 != 1685025392)
  {
    return *(*a1 + 56) & 0xFFFFFFFFFFLL;
  }

LABEL_34:
  v9 = *(*a1 + 56);
  v13 = v9;
  v14 = BYTE4(v9);
  v10 = sub_24BE80D54(&v13, dword_24BFF8830);
  v11 = *(*a1 + 56);
  if (v10 && (BYTE4(v11) - 1) < 8u && ((0x8Bu >> (BYTE4(v11) - 1)) & 1) != 0)
  {
    result = qword_24BFF8878[(BYTE4(v11) - 1)];
    v12 = qword_24BFF88B8[(BYTE4(v11) - 1)];
  }

  else if (*(*a1 + 56))
  {
    return v11 & 0xFFFFFFFFFFLL;
  }

  else
  {
    return 0x100000005;
  }

  return result;
}

void sub_24BFA983C(uint64_t a1, uint64_t a2)
{
  v10 = sub_24BFA9624(a1, a2);
  v11 = v3;
  sub_24BC836D4(&v9, "init_reduce");
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&__dst, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v9;
  }

  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    v7 = *(a2 + 16);
  }

  sub_24BFB7B74(&v11, __p);
  sub_24BF1BB04(&__dst, "_", v6, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  sub_24BF87AC4();
}

void sub_24BFA99E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFA9A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15 = sub_24BFA9624(a1, a3);
  v16[0] = v7;
  sub_24BC836D4(&v14, "all_reduce");
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&__dst, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v14;
  }

  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(&v11, *a3, *(a3 + 8));
  }

  else
  {
    v11 = *a3;
    v12 = *(a3 + 16);
  }

  sub_24BFB7B74(&v15, __p);
  sub_24BF1BB04(&__dst, "_", &v11, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  sub_24BC836D4(&v8, "int64_t");
  sub_24BF87C4C(a5, &__dst, &v14, a3, &v15, v16, &v8, -1);
}

void sub_24BFAA090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a39);
  if (*(v59 - 185) < 0)
  {
    operator delete(*(v59 - 208));
  }

  if (*(v59 - 153) < 0)
  {
    operator delete(*(v59 - 176));
  }

  _Unwind_Resume(a1);
}

void sub_24BFAA1EC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  memset(v31, 0, sizeof(v31));
  *__p = 0u;
  *v33 = 0u;
  *v34 = 0u;
  v35 = 0u;
  v12 = *(a4 + 16);
  v38 = *(v12 - 1);
  if (v33 != (a4 + 8))
  {
    sub_24BCA2A30(v33, *(a4 + 8), v12, &v12[-*(a4 + 8)] >> 2);
  }

  if (&v34[1] != (a4 + 32))
  {
    sub_24BD07E64(&v34[1], *(a4 + 32), *(a4 + 40), (*(a4 + 40) - *(a4 + 32)) >> 3);
  }

  v13 = v33[0];
  v14 = v33[1] - 4;
  v33[1] = v14;
  *&v35 = v35 - 8;
  v37 = 1;
  v36 = (v14 - v33[0]) >> 2;
  if (v14 != v33[0])
  {
    v15 = 1;
    do
    {
      v16 = *v13;
      v13 += 4;
      v15 *= v16;
    }

    while (v13 != v14);
    v37 = v15;
  }

  sub_24BF0D2F4(a1, a5, &v39);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *&v39.__r_.__value_.__l.__data_;
  v31[0] = v39.__r_.__value_.__r.__words[2];
  memset(&v39, 0, sizeof(v39));
  v17 = v31[1];
  if (v31[1])
  {
    v31[2] = v31[1];
    operator delete(v31[1]);
    v17 = v39.__r_.__value_.__r.__words[0];
  }

  *&v31[1] = v40;
  v31[3] = v41;
  v41 = 0;
  v40 = 0uLL;
  if (v17)
  {
    v39.__r_.__value_.__l.__size_ = v17;
    operator delete(v17);
  }

  sub_24BF0FE08(&v39, __p, &v31[1], 0x7FFFFFFFLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *&v39.__r_.__value_.__l.__data_;
  v31[0] = v39.__r_.__value_.__r.__words[2];
  memset(&v39, 0, sizeof(v39));
  v18 = v31[1];
  if (v31[1])
  {
    v31[2] = v31[1];
    operator delete(v31[1]);
    v18 = v39.__r_.__value_.__r.__words[0];
  }

  *&v31[1] = v40;
  v31[3] = v41;
  v41 = 0;
  v40 = 0uLL;
  if (v18)
  {
    v39.__r_.__value_.__l.__size_ = v18;
    operator delete(v18);
  }

  v32 = (__p[1] - __p[0]) >> 2;
  if (v38 <= 0x40)
  {
    if (v36 == 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = 5;
    }

    if (v36 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v42 = sub_24BFA9624(a1, a3);
    v43[0] = v21;
    sub_24BC836D4(&v39, "row_reduce_small");
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&__dst, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v39;
    }

    v26 = HIDWORD((*a1)[6]);
    if (v26)
    {
      std::string::append(&__dst, "_large");
    }

    std::to_string(&v49, v20);
    if (*(a3 + 23) < 0)
    {
      sub_24BC8DE9C(&v47, *a3, *(a3 + 8));
    }

    else
    {
      v47 = *a3;
      v48 = *(a3 + 16);
    }

    sub_24BFB7B74(&v42, &v45);
    sub_24BFACD50(&__dst, "_", &v49, "_reduce_", &v47, &v45);
    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v26)
    {
      v27 = "size_t";
    }

    else
    {
      v27 = "uint";
    }

    sub_24BC836D4(&v44, v27);
    sub_24BF87C4C(a7, &__dst, &v39, a3, &v42, v43, &v44, v20);
  }

  if (*a4 == 1 && !v36 && (*a1)[6] / v38 >= 0x20)
  {
    v42 = sub_24BFA9624(a1, a3);
    v43[0] = v22;
    sub_24BC836D4(&v39, "row_reduce_simple");
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&__dst, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v39;
    }

    if (*(a3 + 23) < 0)
    {
      sub_24BC8DE9C(&v49, *a3, *(a3 + 8));
    }

    else
    {
      v49 = *a3;
    }

    sub_24BFB7B74(&v42, &v47);
    sub_24BF1BB04(&__dst, "_", &v49, &v47);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&v45, "size_t");
    sub_24BF87C4C(a7, &__dst, &v39, a3, &v42, v43, &v45, -1);
  }

  v51 = sub_24BFA9624(a1, a3);
  v52 = v23;
  if (v36 == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = 5;
  }

  if (v36 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  sub_24BC836D4(&v39, "row_reduce_looped");
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&__dst, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v39;
  }

  v28 = HIDWORD((*a1)[6]);
  if (v28)
  {
    std::string::append(&__dst, "_large");
  }

  std::to_string(&v49, v25);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(&v47, *a3, *(a3 + 8));
  }

  else
  {
    v47 = *a3;
    v48 = *(a3 + 16);
  }

  sub_24BFB7B74(&v51, &v45);
  sub_24BFACD50(&__dst, "_", &v49, "_reduce_", &v47, &v45);
  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v28)
  {
    v29 = "size_t";
  }

  else
  {
    v29 = "uint";
  }

  sub_24BC836D4(&v44, v29);
  sub_24BF87C4C(a7, &__dst, &v39, a3, &v51, &v52, &v44, v25);
}

void sub_24BFAAB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v34 - 105) < 0)
  {
    operator delete(*(v34 - 128));
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_24BFAACE8(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_24BFAACE8(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_24BFAAD4C(uint64_t **a1, char ***a2, uint64_t a3, char **a4, void *a5, uint64_t a6, uint64_t a7)
{
  v65 = *MEMORY[0x277D85DE8];
  memset(v40, 0, sizeof(v40));
  *__p = 0u;
  v44 = 0u;
  *v43 = 0u;
  *v42 = 0u;
  v11 = a4[2];
  v47 = *(v11 - 1);
  v48[0] = *(a4[5] - 1);
  if (v42 != (a4 + 1))
  {
    sub_24BCA2A30(v42, a4[1], v11, (v11 - a4[1]) >> 2);
  }

  if (&v43[1] != (a4 + 4))
  {
    sub_24BD07E64(&v43[1], a4[4], a4[5], (a4[5] - a4[4]) >> 3);
  }

  v12 = v42[0];
  v13 = v42[1] - 4;
  v42[1] = v13;
  *&v44 = v44 - 8;
  v46 = 1;
  v45 = (v13 - v42[0]) >> 2;
  if (v13 != v42[0])
  {
    v14 = 1;
    do
    {
      v15 = *v12;
      v12 += 4;
      v14 *= v15;
    }

    while (v12 != v13);
    v46 = v14;
  }

  sub_24BF0D2F4(a1, a5, &v49);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *&v49.__r_.__value_.__l.__data_;
  v40[0] = v49.__r_.__value_.__r.__words[2];
  memset(&v49, 0, sizeof(v49));
  v16 = v40[1];
  if (v40[1])
  {
    v40[2] = v40[1];
    operator delete(v40[1]);
    v16 = v49.__r_.__value_.__r.__words[0];
  }

  *&v40[1] = v50;
  v40[3] = v51;
  v51 = 0;
  v50 = 0uLL;
  if (v16)
  {
    v49.__r_.__value_.__l.__size_ = v16;
    operator delete(v16);
  }

  if (__p[0] != __p[1])
  {
    v17 = v40[2] - 8;
    v18 = (__p[1] - 4);
    v19 = 1;
    do
    {
      if (v19 >= v48[0])
      {
        break;
      }

      v19 *= *v18;
      __p[1] = v18;
      v40[2] = v17;
      v17 -= 8;
    }

    while (v18-- != __p[0]);
  }

  sub_24BF0FE08(&v49, __p, &v40[1], 0x7FFFFFFFLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *&v49.__r_.__value_.__l.__data_;
  v40[0] = v49.__r_.__value_.__r.__words[2];
  memset(&v49, 0, sizeof(v49));
  v21 = v40[1];
  if (v40[1])
  {
    v40[2] = v40[1];
    operator delete(v40[1]);
    v21 = v49.__r_.__value_.__r.__words[0];
  }

  *&v40[1] = v50;
  v40[3] = v51;
  v51 = 0;
  v50 = 0uLL;
  if (v21)
  {
    v49.__r_.__value_.__l.__size_ = v21;
    operator delete(v21);
  }

  v41 = (__p[1] - __p[0]) >> 2;
  v22 = v46 * v47;
  if ((v46 * v47) <= 0x1F)
  {
    v58.__r_.__value_.__r.__words[0] = sub_24BFA9624(a1, a3);
    v58.__r_.__value_.__l.__size_ = v23;
    LODWORD(v49.__r_.__value_.__l.__data_) = v47;
    sub_24BC97D60(v42, &v49);
    sub_24BD4C778(&v43[1], v48);
    v24 = v45++;
    if (v45 == 2)
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = 5;
    }

    if (v24 < 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    sub_24BC836D4(&v49, "col_reduce_small");
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&__dst, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v49;
    }

    v33 = HIDWORD((*a1)[6]);
    if (v33)
    {
      std::string::append(&__dst, "_large");
    }

    std::to_string(&v63, v26);
    if (*(a3 + 23) < 0)
    {
      sub_24BC8DE9C(&v62, *a3, *(a3 + 8));
    }

    else
    {
      v62 = *a3;
    }

    sub_24BFB7B74(&v58, &v61);
    sub_24BFACD50(&__dst, "_", &v63, "_reduce_", &v62, &v61);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (v33)
    {
      v34 = "size_t";
    }

    else
    {
      v34 = "uint";
    }

    sub_24BC836D4(&v60, v34);
    sub_24BF87C4C(a7, &__dst, &v49, a3, &v58, &v58.__r_.__value_.__l.__size_, &v60, v26);
  }

  if (v22 >= 0x400 && v48[0] <= 0x1FuLL)
  {
    v48[5] = sub_24BFA9624(a1, a3);
    v48[6] = v27;
    if ((v46 * v47) >> 15)
    {
      v28 = 128;
    }

    else
    {
      v28 = 32;
    }

    memset(&v63, 0, sizeof(v63));
    sub_24BCB8D20(&v63, (((*a2)[1] - **a2) >> 2) + 1);
    LODWORD(v49.__r_.__value_.__l.__data_) = v28;
    sub_24BC97D60(&v63.__r_.__value_.__l.__data_, &v49);
    sub_24BD05818(&v63, v63.__r_.__value_.__l.__size_, **a2, (*a2)[1], ((*a2)[1] - **a2) >> 2);
    v62 = v63;
    memset(&v63, 0, sizeof(v63));
    v56 = 0;
    v55 = 0;
    memset(&v61, 0, sizeof(v61));
    sub_24BE7E8D4();
  }

  if (v22 >= 0x101 && !((*a2)[6] >> 15))
  {
    v55 = sub_24BFA9624(a1, a3);
    v56 = v29;
    memset(&v63, 0, sizeof(v63));
    sub_24BCB8D20(&v63, (((*a2)[1] - **a2) >> 2) + 1);
    LODWORD(v49.__r_.__value_.__l.__data_) = 32;
    sub_24BC97D60(&v63.__r_.__value_.__l.__data_, &v49);
    sub_24BD05818(&v63, v63.__r_.__value_.__l.__size_, **a2, (*a2)[1], ((*a2)[1] - **a2) >> 2);
    v62 = v63;
    memset(&v63, 0, sizeof(v63));
    v54 = 0;
    v53 = 0;
    memset(&v61, 0, sizeof(v61));
    sub_24BE7E8D4();
  }

  v52.__r_.__value_.__r.__words[0] = sub_24BFA9624(a1, a3);
  v52.__r_.__value_.__l.__size_ = v30;
  LODWORD(v49.__r_.__value_.__l.__data_) = v47;
  sub_24BC97D60(v42, &v49);
  sub_24BD4C778(&v43[1], v48);
  ++v45;
  memset(&v49, 0, sizeof(v49));
  sub_24BFAD1B4(a2, __p, &v49);
  if (v45 == 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = 5;
  }

  if (v45 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31;
  }

  sub_24BC836D4(&__dst, "col_reduce_looped");
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&v63, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = __dst;
  }

  v35 = HIDWORD((*a1)[6]);
  if (v35)
  {
    std::string::append(&v63, "_large");
  }

  std::to_string(&v62, v32);
  std::to_string(&v61, 32);
  std::to_string(&v60, 32);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(&__str, *a3, *(a3 + 8));
  }

  else
  {
    __str = *a3;
  }

  sub_24BFB7B74(&v52, &v58);
  sub_24BFAD594(&v63, "_", &v62, "_", &v61, "_", &v60, "_reduce_", &__str, &v58);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v35)
  {
    v36 = "size_t";
  }

  else
  {
    v36 = "uint";
  }

  sub_24BC836D4(&v57, v36);
  sub_24BF87C4C(a7, &v63, &__dst, a3, &v52, &v52.__r_.__value_.__l.__size_, &v57, v32);
}

void sub_24BFAC380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  sub_24BE7F218(&STACK[0x230]);
  v73 = *(v71 - 176);
  if (v73)
  {
    *(v71 - 168) = v73;
    operator delete(v73);
  }

  sub_24BFAACE8(&a15);
  _Unwind_Resume(a1);
}

void sub_24BFAC848(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = (*a2)[1];
  v7 = **a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(*a3 + 60) * *(*a3 + 48) <= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(*a3 + 60) * *(*a3 + 48);
  }

  v6 = sub_24BE7E2A4(v5);
  v9[0] = &off_285F93798;
  v9[1] = sub_24BE7E1F0;
  v9[3] = v9;
  sub_24BE7EE1C(a3, v6);
}

void sub_24BFACC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  if (*(v28 - 121) < 0)
  {
    operator delete(*(v28 - 144));
  }

  sub_24BE7F218(v28 - 120);
  _Unwind_Resume(a1);
}

void sub_24BFACD50(std::string *a1, const std::string::value_type *a2, uint64_t a3, const std::string::value_type *a4, uint64_t a5, uint64_t a6)
{
  std::string::append(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v16 = *(a3 + 16);
  }

  if (*(a5 + 23) < 0)
  {
    sub_24BC8DE9C(v13, *a5, *(a5 + 8));
  }

  else
  {
    *v13 = *a5;
    v14 = *(a5 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    v12 = *(a6 + 16);
  }

  sub_24BFAD0A4(a1, __dst, a4, v13, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BFACE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

id sub_24BFACEA8(const void **a1, id *a2)
{
  v4 = a1 + 13;
  if (!*(a1 + 26))
  {
    LODWORD(v13) = 0;
    sub_24BC97D60(a1 + 7, &v13);
    v13 = 0;
    sub_24BD4C778(a1 + 10, &v13);
  }

  if (!*(a1 + 12))
  {
    LODWORD(v13) = 0;
    sub_24BC97D60(a1, &v13);
    v13 = 0;
    sub_24BD4C778(a1 + 3, &v13);
  }

  v5 = [*a2 MTL:a1 + 15 :8 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(a1)];
  v6 = [*a2 MTL:a1 + 14 :8 Private:3 :? Selector:? :?s_ksetBytes_length_atIndex_(v5)];
  v7 = [*a2 MTL:*a1 :a1[1] - *a1 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v6)];
  v8 = [*a2 MTL:a1[3] :a1[4] - a1[3] Private:5 :? Selector:? :?s_ksetBytes_length_atIndex_(v7)];
  v9 = [*a2 MTL:a1 + 6 :4 Private:6 :? Selector:? :?s_ksetBytes_length_atIndex_(v8)];
  v10 = [*a2 MTL:a1[7] :a1[8] - a1[7] Private:7 :? Selector:? :?s_ksetBytes_length_atIndex_(v9)];
  v11 = [*a2 MTL:a1[10] :a1[11] - a1[10] Private:8 :? Selector:? :?s_ksetBytes_length_atIndex_(v10)];
  result = [*a2 MTL:v4 :4 Private:9 :? Selector:? :?s_ksetBytes_length_atIndex_(v11)];
  if (!*(a1 + 26))
  {
    a1[8] = a1[8] - 4;
    a1[11] = a1[11] - 8;
  }

  if (!*(a1 + 12))
  {
    a1[1] = a1[1] - 4;
    a1[4] = a1[4] - 8;
  }

  return result;
}

void sub_24BFAD0A4(std::string *a1, const std::string::value_type *a2, const std::string::value_type *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v10 = v9;
  }

  std::string::append(a1, a2, v10);
  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v14 = *(a4 + 16);
  }

  if (*(a5 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v12 = *(a5 + 16);
  }

  sub_24BF1BB04(a1, a3, __dst, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BFAD180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFAD1B4(uint64_t **a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = *a1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_24BCC9A1C(&v14, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = *a1;
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_24BD7E680(&__p, v7[3], v7[4], (v7[4] - v7[3]) >> 3);
  v8 = v15;
  if (v14 != v15)
  {
    v9 = *(a2 + 128);
    v10 = v12 - 8;
    do
    {
      if (*v10 >= v9)
      {
        break;
      }

      v8 -= 4;
      v15 = v8;
      v12 = v10;
      v10 -= 8;
    }

    while (v8 != v14);
  }

  sub_24BFB7CA0(&v14, &__p, a3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_24BFAD298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_24BFAD2CC(const void **a1, id *a2)
{
  v4 = a1 + 13;
  if (!*(a1 + 26))
  {
    LODWORD(v14) = 0;
    sub_24BC97D60(a1 + 7, &v14);
    v14 = 0;
    sub_24BD4C778(a1 + 10, &v14);
  }

  if (!*(a1 + 12))
  {
    LODWORD(v14) = 0;
    sub_24BC97D60(a1, &v14);
    v14 = 0;
    sub_24BD4C778(a1 + 3, &v14);
  }

  v5 = [*a2 MTL:a1 + 15 :8 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(a1)];
  v6 = [*a2 MTL:a1 + 16 :8 Private:3 :? Selector:? :?s_ksetBytes_length_atIndex_(v5)];
  v7 = [*a2 MTL:*a1 :a1[1] - *a1 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v6)];
  v8 = [*a2 MTL:a1[3] :a1[4] - a1[3] Private:5 :? Selector:? :?s_ksetBytes_length_atIndex_(v7)];
  v9 = [*a2 MTL:a1 + 6 :4 Private:6 :? Selector:? :?s_ksetBytes_length_atIndex_(v8)];
  v10 = [*a2 MTL:a1[7] :a1[8] - a1[7] Private:7 :? Selector:? :?s_ksetBytes_length_atIndex_(v9)];
  v11 = [*a2 MTL:a1[10] :a1[11] - a1[10] Private:8 :? Selector:? :?s_ksetBytes_length_atIndex_(v10)];
  v12 = [*a2 MTL:v4 :4 Private:9 :? Selector:? :?s_ksetBytes_length_atIndex_(v11)];
  result = [*a2 MTL:a1 + 14 :8 Private:10 :? Selector:? :?s_ksetBytes_length_atIndex_(v12)];
  if (!*(a1 + 26))
  {
    a1[8] = a1[8] - 4;
    a1[11] = a1[11] - 8;
  }

  if (!*(a1 + 12))
  {
    a1[1] = a1[1] - 4;
    a1[4] = a1[4] - 8;
  }

  return result;
}

uint64_t sub_24BFAD4E8(uint64_t result, int ***a2)
{
  *(result + 56) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  v2 = **a2;
  if ((*a2)[1] == v2)
  {
    sub_24BC923C0();
  }

  v3 = *v2;
  v4 = (*a2)[6] / v3;
  *(result + 120) = v3;
  *(result + 128) = v4;
  *(result + 112) = 1;
  *(result + 104) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_24BFAD568(_Unwind_Exception *a1)
{
  v4 = *(v1 + 80);
  if (v4)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  sub_24BFADCD0(v2, (v1 + 24), v1);
  _Unwind_Resume(a1);
}

void sub_24BFAD594(std::string *a1, const std::string::value_type *a2, __int128 *a3, const std::string::value_type *a4, uint64_t a5, const std::string::value_type *a6, uint64_t a7, const std::string::value_type *a8, uint64_t a9, uint64_t a10)
{
  std::string::append(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v26 = *(a3 + 2);
  }

  if (*(a5 + 23) < 0)
  {
    sub_24BC8DE9C(v23, *a5, *(a5 + 8));
  }

  else
  {
    *v23 = *a5;
    v24 = *(a5 + 16);
  }

  if (*(a7 + 23) < 0)
  {
    sub_24BC8DE9C(v21, *a7, *(a7 + 8));
  }

  else
  {
    *v21 = *a7;
    v22 = *(a7 + 16);
  }

  if (*(a9 + 23) < 0)
  {
    sub_24BC8DE9C(v19, *a9, *(a9 + 8));
  }

  else
  {
    *v19 = *a9;
    v20 = *(a9 + 16);
  }

  if (*(a10 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a10, *(a10 + 8));
  }

  else
  {
    *__p = *a10;
    v18 = *(a10 + 16);
  }

  sub_24BFAD7B8(a1, &__dst, a4, v23, a6, v21, a8, v19, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst);
  }
}

void sub_24BFAD73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v37 - 73) < 0)
  {
    operator delete(*(v37 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFAD7B8(std::string *a1, const std::string::value_type *a2, const std::string::value_type *a3, uint64_t a4, const std::string::value_type *a5, uint64_t a6, const std::string::value_type *a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v17 = v16;
  }

  std::string::append(a1, a2, v17);
  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v25 = *(a4 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_24BC8DE9C(v22, *a6, *(a6 + 8));
  }

  else
  {
    *v22 = *a6;
    v23 = *(a6 + 16);
  }

  if (*(a8 + 23) < 0)
  {
    sub_24BC8DE9C(v20, *a8, *(a8 + 8));
  }

  else
  {
    *v20 = *a8;
    v21 = *(a8 + 16);
  }

  if (*(a9 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a9, *(a9 + 8));
  }

  else
  {
    *__p = *a9;
    v19 = *(a9 + 16);
  }

  sub_24BFAD998(a1, a3, __dst, a5, v22, a7, v20, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BFAD934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFAD998(std::string *a1, const std::string::value_type *a2, uint64_t a3, const std::string::value_type *a4, uint64_t a5, const std::string::value_type *a6, uint64_t a7, uint64_t a8)
{
  std::string::append(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v22 = *(a3 + 16);
  }

  if (*(a5 + 23) < 0)
  {
    sub_24BC8DE9C(v19, *a5, *(a5 + 8));
  }

  else
  {
    *v19 = *a5;
    v20 = *(a5 + 16);
  }

  if (*(a7 + 23) < 0)
  {
    sub_24BC8DE9C(v17, *a7, *(a7 + 8));
  }

  else
  {
    *v17 = *a7;
    v18 = *(a7 + 16);
  }

  if (*(a8 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a8, *(a8 + 8));
  }

  else
  {
    *__p = *a8;
    v16 = *(a8 + 16);
  }

  sub_24BFADB58(a1, __dst, a4, v19, a6, v17, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BFADAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFADB58(std::string *a1, const std::string::value_type *a2, const std::string::value_type *a3, uint64_t a4, const std::string::value_type *a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v14 = v13;
  }

  std::string::append(a1, a2, v14);
  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v20 = *(a4 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_24BC8DE9C(v17, *a6, *(a6 + 8));
  }

  else
  {
    *v17 = *a6;
    v18 = *(a6 + 16);
  }

  if (*(a7 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a7, *(a7 + 8));
  }

  else
  {
    *__p = *a7;
    v16 = *(a7 + 16);
  }

  sub_24BFACD50(a1, a3, __dst, a5, v17, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BFADC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFADCD0(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 64) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v7;

    operator delete(v7);
  }
}

uint64_t sub_24BFADD3C(uint64_t a1, void *a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  v4 = MTL::Private::Selector::s_ksupportsFamily_(a1);
  v5 = [a2 NS:v4 :? Private:? :? Selector:? :?s_krespondsToSelector_(v4)];
  if ((v5 & 1) != 0 || [a2 NS:v4 :? Private:? :? Selector:? :?s_kmethodSignatureForSelector_(v5)])
  {
    v6 = [a2 v4];
    if (v6)
    {
      v7 = sub_24BF53AE4(v6, &v23);
      v8 = MTL::Private::Class::s_kMTLResidencySetDescriptor(v7);
      v9 = [v8 NS:? :? Private:? :? Selector:? :?s_kalloc(v8)];
      v10 = [v9 NS:? :? Private:? :? Selector:? :?s_kinit(v9)];
      v22 = 0;
      v11 = [a2 MTL:v10 :&v22 Private:? :? Selector:? :?s_knewResidencySetWithDescriptor_error_(v10)];
      *a1 = v11;
      [v10 NS:? :? Private:? :? Selector:? :?s_krelease(v11)];
      if (!*a1)
      {
        sub_24BCE1268(v21);
        v14 = sub_24BC95264(v21, "[metal::Device] Unable to construct residency set.\n", 51);
        if (v22)
        {
          v16 = [v22 NS:? :? Private:? :? Selector:? :?s_klocalizedDescription(v14)];
          v17 = [v16 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v16)];
          v18 = strlen(v17);
          v19 = sub_24BC95264(v21, v17, v18);
          sub_24BC95264(v19, "\n", 1);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        MEMORY[0x24C254100](exception, v20);
        __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
      }

      sub_24BF192EC(&v23, 0);
      sub_24BF19370(v24);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24BFADF5C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      sub_24BD0E408(&a9, MEMORY[0x277D82828]);
      MEMORY[0x24C2547D0](va);
      sub_24BF192EC((v25 - 96), 0);
      sub_24BF19370(v25 - 88);
      sub_24BCA3B84(v22 + 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

id *sub_24BFADFF8(id *result, void *a2)
{
  v10 = a2;
  if (*result)
  {
    v3 = result;
    v4 = [*result MTL:? :? Private:? :? Selector:? :?s_kallocatedSize(result)];
    v5 = [a2 MTL:? :? Private:? :? Selector:? :?s_kallocatedSize(v4)];
    if (v4 + v5 <= v3[6])
    {
      v6 = [*v3 MTL:a2 :? Private:? :? Selector:? :?s_kaddAllocation_(v5)];
      v7 = [*v3 MTL:? :? Private:? :? Selector:? :?s_kcommit(v6)];
      v8 = *v3;
      v9 = MTL::Private::Selector::s_krequestResidency(v7);

      return [v8 v9];
    }

    else
    {
      return sub_24BFAE3B0(v3 + 1, &v10);
    }
  }

  return result;
}

id *sub_24BFAE0DC(id *result, uint64_t a2)
{
  v5 = a2;
  if (*result)
  {
    v2 = result;
    v3 = sub_24BF56F3C(result + 1, &v5);
    if (v3)
    {
      return sub_24BD80CF0(v2 + 1, v3);
    }

    else
    {
      v4 = [*v2 MTL:v5 :? Private:? :? Selector:? :?s_kremoveAllocation_(0)];
      return [*v2 MTL:? :? Private:? :? Selector:? :?s_kcommit(v4)];
    }
  }

  return result;
}

MTL::Private::Selector *sub_24BFAE168(MTL::Private::Selector *result, unint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result;
    if (*(result + 6) != a2)
    {
      *(result + 6) = a2;
      result = [v2 MTL:? :? Private:? :? Selector:? :?s_kallocatedSize(result)];
      v5 = result;
      if (result >= a2)
      {
        if (result > a2)
        {
          v12 = [*v4 MTL:? :? Private:? :? Selector:? :?s_kallAllocations(result)];
          v13 = [*v4 MTL:? :? Private:? :? Selector:? :?s_kallocationCount(v12)];
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            do
            {
              v18 = [v12 NS:v15 :? Private:? :? Selector:? :?s_kobjectAtIndex_(v13)];
              v16 = [*v4 MTL:v18 :? Private:? :? Selector:? :?s_kremoveAllocation_(v18)];
              v17 = [v18 MTL:? :? Private:? :? Selector:? :?s_kallocatedSize(v16)];
              v13 = sub_24BFAE3B0(v4 + 1, &v18);
              if (v14 <= ++v15)
              {
                break;
              }

              v5 = (v5 - v17);
            }

            while (v5 > a2);
          }

          return [*v4 MTL:? :? Private:? :? Selector:? :?s_kcommit(v13)];
        }
      }

      else
      {
        for (i = *(v4 + 3); i; v5 = v7)
        {
          while (1)
          {
            result = [*(i + 16) MTL:? :? Private:? :? Selector:? :?s_kallocatedSize(result)];
            v7 = (v5 + result);
            if ((v5 + result) <= a2)
            {
              break;
            }

            i = *i;
            if (!i)
            {
              goto LABEL_10;
            }
          }

          [*v4 MTL:*(i + 16) :? Private:? :? Selector:? :?s_kaddAllocation_(result)];
          v8 = *i;
          result = sub_24BD80CF0(v4 + 1, i);
          i = v8;
        }

LABEL_10:
        v9 = [*v4 MTL:? :? Private:? :? Selector:? :?s_kcommit(result)];
        v10 = *v4;
        v11 = MTL::Private::Selector::s_krequestResidency(v9);

        return [v10 v11];
      }
    }
  }

  return result;
}

id *sub_24BFAE364(id *a1)
{
  if (*a1)
  {
    [*a1 NS:? :? Private:? :? Selector:? :?s_krelease(a1)];
  }

  sub_24BCA3B84((a1 + 1));
  return a1;
}

void *sub_24BFAE3B0(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_24BFAE614(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(**a2 + 8) - ***a2 <= 8uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[RoPE] Input must have at least 3 dimensions");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v6 = *a3;
  v7 = *(**a3 + 64);
  v8 = *(v7 + 12);
  v66 = sub_24BF55DE0();
  v9 = *v3;
  v10 = *(*v3 + 8) - **v3;
  if (v10 <= 4)
  {
    sub_24BC923C0();
  }

  v11 = *(*v3 + 8);
  v12 = *(v11 - 4);
  v13 = v12 * *(v11 - 8);
  LOBYTE(v11) = *(v9 + 168);
  if (*(a1 + 88) < v12)
  {
    if ((*(v9 + 168) & 2) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    sub_24BF21980(v3, v6, v14, v7 + 8);
    v88 = v13;
    v15 = *v6;
LABEL_14:
    v19 = *(v15 + 24);
    v20 = ((v10 << 30) - 0x200000000) >> 29;
    v89 = *(v19 + v20);
    v21 = ((v10 << 30) - 0x100000000) >> 29;
    v90 = *(v19 + v21);
    goto LABEL_15;
  }

  if ((*(v9 + 168) & 2) != 0)
  {
    v17 = v3[1];
    if (!v17 || *(v17 + 8) || (v62 = *(v9 + 144)) == 0 || *(v62 + 8))
    {
      v18 = sub_24BE7E2A4(*(*v6 + 60) * *(*v6 + 48));
      v86[0] = &off_285F93798;
      v86[1] = sub_24BE7E1F0;
      v86[3] = v86;
      sub_24BE7EE1C(v6, v18);
    }

    v84[0] = *v3;
    v84[1] = v17;
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    sub_24BE7F46C(v6, v84);
    sub_24BE7F218(v84);
    v88 = v13;
    v15 = *v3;
    goto LABEL_14;
  }

  if ((v10 & 0x3FFFFFFFCLL) == 0xC)
  {
    v16 = sub_24BE7E2A4(*(*v6 + 60) * *(*v6 + 48));
    v85[0] = &off_285F93798;
    v85[1] = sub_24BE7E1F0;
    v85[3] = v85;
    sub_24BE7EE1C(v6, v16);
  }

  sub_24BF21980(v3, v6, 2, v7 + 8);
  v88 = v13;
  v61 = *(*v6 + 24);
  v20 = ((v10 << 30) - 0x200000000) >> 29;
  v89 = *(v61 + v20);
  v21 = ((v10 << 30) - 0x100000000) >> 29;
  v90 = *(v61 + v21);
LABEL_15:
  v87[0] = v13;
  v22 = *(*v6 + 24);
  v87[1] = *(v22 + v20);
  v87[2] = *(v22 + v21);
  if ((*(*v3 + 168) & 2) != 0)
  {
    v24 = *(*v3 + 8);
    if (v24 == **v3)
    {
      sub_24BC923C0();
    }

    v23 = v13 == *(v24 - 4);
  }

  else
  {
    v23 = 0;
  }

  v64 = a2;
  v27 = a2;
  v25 = *a2;
  v26 = v27[1];
  sub_24BCE1268(&v79);
  v28 = sub_24BC95264(&v79, "rope_", 5);
  if (v23)
  {
    v29 = "single_";
  }

  else
  {
    v29 = &unk_24C0435AF;
  }

  if (v23)
  {
    v30 = 7;
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_24BC95264(v28, v29, v30);
  v65 = v26 - v25;
  if (v26 - v25 == 32)
  {
    v32 = "freqs_";
  }

  else
  {
    v32 = &unk_24C0435AF;
  }

  if (v26 - v25 == 32)
  {
    v33 = 6;
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_24BC95264(v31, v32, v33);
  if (*(a1 + 108))
  {
    v35 = &unk_24C0435AF;
  }

  else
  {
    v35 = "vjp_";
  }

  if (*(a1 + 108))
  {
    v36 = 0;
  }

  else
  {
    v36 = 4;
  }

  v37 = sub_24BC95264(v34, v35, v36);
  if (*(a1 + 92))
  {
    v38 = "traditional_";
  }

  else
  {
    v38 = &unk_24C0435AF;
  }

  if (*(a1 + 92))
  {
    v39 = 12;
  }

  else
  {
    v39 = 0;
  }

  v40 = sub_24BC95264(v37, v38, v39);
  sub_24BFB7BD8(v3, __p);
  if (v78 >= 0)
  {
    v41 = __p;
  }

  else
  {
    v41 = __p[0];
  }

  if (v78 >= 0)
  {
    v42 = HIBYTE(v78);
  }

  else
  {
    v42 = __p[1];
  }

  sub_24BC95264(v40, v41, v42);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  sub_24BC836D4(v75, "mlx");
  sub_24BC836D4(v73, &unk_24C0435AF);
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v43 = sub_24BF55C0C(v66, __p, v75, v73, &v70, &v67);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73[0]);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p[0]);
  }

  v44 = sub_24BF5488C(v66, *(v7 + 8));
  LODWORD(v67) = log2f(*(a1 + 96));
  [*v44 MTL:v43 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v45)];
  sub_24BF53508(v44, v6, 0, 0);
  v46 = sub_24BF535E8(v44, v6, 1, 0);
  v47 = [*v44 MTL:a1 + 104 :4 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(v46)];
  v48 = [*v44 MTL:a1 + 100 :4 Private:3 :? Selector:? :?s_ksetBytes_length_atIndex_(v47)];
  v49 = *(*v3 + 48) / v13;
  v70 = v49;
  v50 = *v44;
  if (v23)
  {
    [v50 MTL:v87 :8 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v48)];
    v51 = (*(a1 + 88) / 2);
    v52 = sub_24BFB7C10(v51, v49, 1, 10, v75);
    *__p = *v75;
    v78 = v76;
    v53 = 1;
  }

  else
  {
    v54 = [v50 MTL:&v88 :24 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v48)];
    v55 = [*v44 MTL:v87 :24 Private:5 :? Selector:? :?s_ksetBytes_length_atIndex_(v54)];
    [*v44 MTL:&v70 :8 Private:6 :? Selector:? :?s_ksetBytes_length_atIndex_(v55)];
    if (*(*v3 + 8) - **v3 <= 4uLL)
    {
      sub_24BC923C0();
    }

    v51 = (*(a1 + 88) / 2);
    v49 = *(*(*v3 + 8) - 8);
    v56 = v70 + 3;
    v52 = sub_24BFB7C10(v51, *(*(*v3 + 8) - 8), (v70 + 3) >> 2, 10, v75);
    *__p = *v75;
    v78 = v76;
    v53 = (v56 >> 2);
  }

  if (v65 == 32)
  {
    v57 = *v64;
    v58 = sub_24BF53508(v44, *v64 + 2, 10, 0);
    v75[0] = **(v57[2] + 24);
    [*v44 MTL:v75 :8 Private:11 :? Selector:? :?s_ksetBytes_length_atIndex_(v58)];
  }

  else
  {
    [*v44 MTL:&v67 :4 Private:10 :? Selector:? :?s_ksetBytes_length_atIndex_(v52)];
  }

  v75[0] = v51;
  v75[1] = v49;
  v76 = v53;
  *v73 = *__p;
  v74 = v78;
  sub_24BF53770(v44, v75, v73);
  v79 = *MEMORY[0x277D82828];
  *(&v79 + *(v79 - 24)) = *(MEMORY[0x277D82828] + 24);
  v80 = MEMORY[0x277D82878] + 16;
  if (v82 < 0)
  {
    operator delete(v81[7].__locale_);
  }

  v80 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v81);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v83);
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BFAEF90()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BFAF000(void *a1)
{
  *a1 = &unk_285FA02B0;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));
  return a1;
}

void sub_24BFAF068(void *a1)
{
  *a1 = &unk_285FA02B0;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));

  JUMPOUT(0x24C2548B0);
}

void sub_24BFAF0F0(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 12);
  v66 = sub_24BF55DE0();
  v7 = *a2;
  v72 = 0uLL;
  v73 = 0;
  sub_24BE9CDA0(&v72, 3uLL);
  v71[0] = &v72;
  v71[1] = a1 + 8;
  v65 = (a1 + 8);
  v8 = *v7;
  v9 = **v7;
  if (((*v7)[1] - v9) <= 8)
  {
    sub_24BC923C0();
  }

  if (*(v9 + 8) != 1)
  {
    sub_24BFB0DE0(v71, v7);
    sub_24BFB0DE0(v71, v7 + 2);
    sub_24BFB0DE0(v71, v7 + 4);
    v64 = a3;
    v11 = *a3;
    v12 = **a3;
    if (*(*a3 + 8) - v12 > 0xCuLL)
    {
      v13 = v12[2];
      v14 = v12[3];
      v15 = *v12;
      v16 = v12[1];
      v17 = sub_24BE7E2A4(*(v11 + 60) * v11[6]);
      __p.__r_.__value_.__r.__words[0] = v16 * v14 * v13;
      __p.__r_.__value_.__l.__size_ = v14;
      __p.__r_.__value_.__r.__words[2] = v16 * v14;
      v90 = 1;
      memset(v69, 0, sizeof(v69));
      sub_24BCCD684(v69, &__p, &v91, 4uLL);
      v84[0] = &off_285F93798;
      v84[1] = sub_24BE7E1F0;
      v84[3] = v84;
      sub_24BE7F25C(v64, v17);
    }

    sub_24BC923C0();
  }

  if ((v8[21] & 2) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    sub_24BCC9A1C(&__p, *v8, v8[1], (v8[1] - *v8) >> 2);
    v10 = (*v7)[7];
    *&v83.__r_.__value_.__l.__data_ = 0uLL;
    memset(&v88, 0, sizeof(v88));
    sub_24BE7E8D4();
  }

  v18 = v7;
  v19 = sub_24BFB0C80(v71, v7 + 2);
  v20 = sub_24BFB0C80(v71, v7 + 4);
  v21 = v18[1];
  if (!v21 || *(v21 + 8) || (v62 = *(*v18 + 144)) == 0 || *(v62 + 8))
  {
    v22 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
    v85[0] = &off_285F93798;
    v85[1] = sub_24BE7E1F0;
    v85[3] = v85;
    sub_24BE7EE1C(a3, v22);
  }

  v70[0] = *v18;
  v70[1] = v21;
  atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  sub_24BE7F46C(a3, v70);
  sub_24BE7F218(v70);
  v23 = v66 + 59;
  v24 = *(v66 + 495);
  if ((v24 & 0x80u) != 0)
  {
    v23 = v66[59];
    v24 = v66[60];
  }

  v25 = *(v23 + v24 - 1);
  v26 = **v19;
  v27 = *(*v19 + 8);
  if (v25 == 100)
  {
    if ((v27 - v26) < 9)
    {
      goto LABEL_82;
    }

    if (*(v26 + 8) > 1023)
    {
      goto LABEL_20;
    }
  }

  v28 = v27 - v26;
  if (v28 < 5)
  {
    goto LABEL_82;
  }

  v29 = **v18;
  if ((*(*v18 + 8) - v29) < 5)
  {
    goto LABEL_82;
  }

  if (*(v26 + 4) >= *(v29 + 4))
  {
    goto LABEL_41;
  }

  if (v28 == 8)
  {
LABEL_82:
    sub_24BC923C0();
  }

  if (*(v26 + 8) >= 4096)
  {
LABEL_20:
    v77[3] = *(a1 + 88);
    memset(&v83, 0, sizeof(v83));
    std::string::reserve(&v83, 0x40uLL);
    std::string::append(&v83, "sdpa_vector_2pass_1_");
    sub_24BF0BC74(*(*v18 + 56) & 0xFFFFFFFFFFLL, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&v83, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::append(&v83, "_");
    v32 = *(*v18 + 8);
    if (v32 != **v18)
    {
      std::to_string(&__p, *(v32 - 4));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &__p;
      }

      else
      {
        v33 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v83, v33, v34);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v35 = **v18;
      if (*(*v18 + 8) - v35 >= 5uLL)
      {
        v36 = *v19;
        v37 = **v19;
        v38 = *(*v19 + 8) - v37;
        if (v38 > 4)
        {
          v77[2] = v35[1] / *(v37 + 4);
          if (v38 != 8)
          {
            v77[1] = *(v37 + 8);
            v77[0] = 32;
            v39 = *v35;
            v76[10] = *(v36[3] + 8);
            v76[9] = *(*(*v20 + 24) + 8);
            v82 = 0;
            __dst[1] = 0;
            __dst[0] = 0;
            sub_24BCB8D20(__dst, ((*(*a3 + 8) - **a3) >> 2) + 1);
            sub_24BD05818(__dst, __dst[1], **a3, (*(*a3 + 8) - 4), (*(*a3 + 8) - 4 - **a3) >> 2);
            sub_24BC97D60(__dst, v77);
            sub_24BC97D60(__dst, (*(*a3 + 8) - 4));
            memset(v80, 0, sizeof(v80));
            sub_24BCC9A1C(v80, __dst[0], __dst[1], (__dst[1] - __dst[0]) >> 2);
            v76[5] = 0;
            v76[6] = 0;
            v79 = 0;
            v78 = 0uLL;
            sub_24BE7E8D4();
          }

          sub_24BC923C0();
        }
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

LABEL_41:
  LODWORD(v76[0]) = *(a1 + 88);
  memset(&__p, 0, sizeof(__p));
  std::string::reserve(&__p, 0x40uLL);
  std::string::append(&__p, "sdpa_vector_");
  sub_24BF0BC74(*(*v18 + 56) & 0xFFFFFFFFFFLL, &v88);
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v88;
  }

  else
  {
    v40 = v88.__r_.__value_.__r.__words[0];
  }

  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = v88.__r_.__value_.__l.__size_;
  }

  std::string::append(&__p, v40, v41);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  std::string::append(&__p, "_");
  v42 = *(*v18 + 8);
  if (v42 == **v18)
  {
    sub_24BC923C0();
  }

  std::to_string(&v88, *(v42 - 4));
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v88;
  }

  else
  {
    v43 = v88.__r_.__value_.__r.__words[0];
  }

  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v88.__r_.__value_.__l.__size_;
  }

  std::string::append(&__p, v43, v44);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v45 = **v18;
  if (*(*v18 + 8) - v45 < 5uLL || (v46 = *v19, v47 = **v19, v48 = *(*v19 + 8) - v47, v48 <= 4))
  {
    sub_24BC923C0();
  }

  v49 = v45[1];
  LODWORD(v75) = v49 / *(v47 + 4);
  if (v48 == 8)
  {
    sub_24BC923C0();
  }

  LODWORD(v74[0]) = *(v47 + 8);
  v50 = *v45;
  v80[0] = *(v46[3] + 8);
  *&v78 = *(*(*v20 + 24) + 8);
  v51 = sub_24BF5488C(v66, *v65);
  sub_24BC836D4(&v88, "mlx");
  sub_24BC836D4(v86, &unk_24C0435AF);
  memset(&v83, 0, sizeof(v83));
  __dst[1] = 0;
  __dst[0] = 0;
  v82 = 0;
  v52 = sub_24BF55C0C(v66, &__p, &v88.__r_.__value_.__l.__data_, v86, &v83, __dst);
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  v53 = v83.__r_.__value_.__r.__words[0];
  if (v83.__r_.__value_.__r.__words[0])
  {
    v83.__r_.__value_.__l.__size_ = v83.__r_.__value_.__r.__words[0];
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86[0]);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  [*v51 MTL:v52 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v53)];
  v54 = *(*v18 + 136);
  v55 = *(*v18 + 144);
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v54)
  {
    v56 = v18;
  }

  else
  {
    v56 = a3;
  }

  sub_24BF53508(v51, v56, 0, 0);
  if (v55)
  {
    sub_24BC9EC78(v55);
  }

  sub_24BF53508(v51, v19, 1, 0);
  sub_24BF53508(v51, v20, 2, 0);
  v57 = sub_24BF535E8(v51, a3, 3, 0);
  v58 = [*v51 MTL:&v75 :4 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v57)];
  v59 = [*v51 MTL:v74 :4 Private:5 :? Selector:? :?s_ksetBytes_length_atIndex_(v58)];
  v60 = [*v51 MTL:v80 :8 Private:6 :? Selector:? :?s_ksetBytes_length_atIndex_(v59)];
  v61 = [*v51 MTL:&v78 :8 Private:7 :? Selector:? :?s_ksetBytes_length_atIndex_(v60)];
  [*v51 MTL:v76 :4 Private:8 :? Selector:? :?s_ksetBytes_length_atIndex_(v61)];
  v88.__r_.__value_.__r.__words[0] = 1;
  v88.__r_.__value_.__l.__size_ = v50 * v49;
  v88.__r_.__value_.__r.__words[2] = 1;
  *v86 = xmmword_24BFF8930;
  v87 = 1;
  sub_24BF536F8(v51, &v88, v86);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v67 = v72;
  v68 = v73;
  v73 = 0;
  v72 = 0uLL;
  sub_24BF54278(v66, &v67, *v65);
  __p.__r_.__value_.__r.__words[0] = &v67;
  sub_24BCC961C(&__p);
  __p.__r_.__value_.__r.__words[0] = &v72;
  sub_24BCC961C(&__p);
  v63 = *MEMORY[0x277D85DE8];
}

void sub_24BFB0860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_24BE7F218(&a23);
  STACK[0x260] = &a27;
  sub_24BCC961C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

uint64_t **sub_24BFB0C80(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = (*a2)[3];
  v5 = **a2;
  if (v4[3] != 1 || v4[2] != *(v5 + 12) || *v4 != v4[1] * *(v5 + 4))
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v5, v3[1], (v3[1] - v5) >> 2);
    v6 = (*a2)[7];
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_24BE7E8D4();
  }

  return a2;
}

void sub_24BFB0D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 40) = v16;
  sub_24BCC961C((v17 - 40));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_24BFB0DE0(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = (*a2)[3];
  v5 = **a2;
  if (*(v4 + 24) != 1 || *(v4 + 16) != *(v5 + 12))
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v5, v3[1], (v3[1] - v5) >> 2);
    v6 = (*a2)[7];
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_24BE7E8D4();
  }

  return a2;
}

void sub_24BFB0EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 40) = v16;
  sub_24BCC961C((v17 - 40));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BFB0F2C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 12);
  v7 = sub_24BF55DE0();
  v41 = 0uLL;
  v42 = 0;
  v8 = **a2;
  v9 = (*a2)[1];
  v40[0] = v8;
  v40[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if ((*(v8 + 168) & 1) != 0 && *(*(v8 + 24) + 8 * *(a1 + 24)))
  {
    if (v9)
    {
      if (!*(v9 + 8))
      {
        v29 = *(v8 + 144);
        if (v29)
        {
          if (!*(v29 + 8) && ((*(*a3 + 56) ^ *(v8 + 56)) & 0xFF00000000) == 0)
          {
            v39[0] = v8;
            v39[1] = v9;
            atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
            sub_24BE7F46C(a3, v39);
            sub_24BE7F218(v39);
            v14 = *(*(v40[0] + 24) + 8 * *(a1 + 24));
            sub_24BCE1268(v36);
            if (v14 == 1)
            {
              v15 = "contig_";
            }

            else
            {
              v15 = "strided_";
            }

            if (v14 == 1)
            {
              v16 = 7;
            }

            else
            {
              v16 = 8;
            }

            sub_24BC95264(v36, v15, v16);
            sub_24BC95264(v36, "scan_", 5);
            if (*(a1 + 28) == 1)
            {
              sub_24BC95264(v36, "reverse_", 8);
            }

            if (*(a1 + 29))
            {
              v17 = "inclusive_";
            }

            else
            {
              v17 = "exclusive_";
            }

            sub_24BC95264(v36, v17, 10);
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v18 = *(a1 + 20);
            if (v18 < 4)
            {
              MEMORY[0x24C2541D0](&v33, off_27916D390[v18]);
            }

            if (v35 >= 0)
            {
              v19 = &v33;
            }

            else
            {
              v19 = v33;
            }

            if (v35 >= 0)
            {
              v20 = HIBYTE(v35);
            }

            else
            {
              v20 = v34;
            }

            v21 = sub_24BC95264(v36, v19, v20);
            v22 = sub_24BC95264(v21, "_", 1);
            sub_24BFB7BD8(v40, &v32);
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v32;
            }

            else
            {
              v23 = v32.__r_.__value_.__r.__words[0];
            }

            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v32.__r_.__value_.__l.__size_;
            }

            v25 = sub_24BC95264(v22, v23, size);
            v26 = sub_24BC95264(v25, "_", 1);
            sub_24BFB7BD8(a3, __p);
            if ((v31 & 0x80u) == 0)
            {
              v27 = __p;
            }

            else
            {
              v27 = __p[0];
            }

            if ((v31 & 0x80u) == 0)
            {
              v28 = v31;
            }

            else
            {
              v28 = __p[1];
            }

            sub_24BC95264(v26, v27, v28);
            if (v31 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v32.__r_.__value_.__l.__data_);
            }

            std::stringbuf::str();
            sub_24BF873E4(v7, &v32, *(a1 + 28), *(a1 + 29));
          }
        }
      }
    }

    v10 = sub_24BE7E2A4(*(*a3 + 60) * *(v8 + 160));
    v11 = *(v40[0] + 160);
    memset(v38, 0, sizeof(v38));
    sub_24BD7E680(v38, *(v40[0] + 24), *(v40[0] + 32), (*(v40[0] + 32) - *(v40[0] + 24)) >> 3);
    v12 = *(v40[0] + 168);
    v43[0] = &off_285F93798;
    v43[1] = sub_24BE7E1F0;
    v43[3] = v43;
    sub_24BE7F25C(a3, v10);
  }

  memset(v37, 0, sizeof(v37));
  sub_24BCC9A1C(v37, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 2);
  v13 = *(v40[0] + 56);
  memset(&v36[35], 0, 40);
  sub_24BE7E8D4();
}

void sub_24BFB18AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_24BE7F218(v27 - 176);
  sub_24BE7F218(v27 - 160);
  a27 = v27 - 144;
  sub_24BCC961C(&a27);
  _Unwind_Resume(a1);
}

void sub_24BFB1A30(uint64_t **a1, uint64_t *a2, int **a3, uint64_t a4)
{
  v22[4] = *MEMORY[0x277D85DE8];
  sub_24BF0F0DC(a1, a3, a4, v18);
  if (v18[0] == 1)
  {
    v8 = sub_24BE7E2A4(*(*a2 + 60) * *(*a2 + 48));
    v22[0] = &off_285F93798;
    v22[1] = sub_24BE7E1F0;
    v22[3] = v22;
    sub_24BE7EE1C(a2, v8);
  }

  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_24BFB21F8(&__p, v20, v21, (v21 - v20) >> 3);
  v9 = *(a4 + 8);
  v10 = v9 - *a4;
  if (v9 == *a4)
  {
    v13 = 1;
  }

  else
  {
    v11 = 0;
    if ((v10 >> 2) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 >> 2;
    }

    v13 = 1;
    do
    {
      if (*(**a1 + 4 * v11) >= 2)
      {
        v13 += *((*a1)[3] + 8 * v11) * ((*a3)[v11] + *(*a4 + 4 * v11) * *(**a2 + 4 * v11) - 1);
      }

      ++v11;
    }

    while (v12 != v11);
  }

  sub_24BF0F1EC(a1, &__p, v19, v13 - v19, a2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_24BFB1C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB1C94(uint64_t ***a1, uint64_t a2, int a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  LODWORD(v13) = 0;
  sub_24BC97D60(&v14, &v13);
  v6 = *a1;
  v7 = a1[1];
  while (v6 != v7)
  {
    LODWORD(v13) = sub_24BD1EEAC(v6, a3);
    sub_24BC97D60(&v14, &v13);
    v6 += 2;
  }

  v8 = v15;
  v9 = v14 + 4;
  if (v14 != v15 && v9 != v15)
  {
    v11 = *v14;
    do
    {
      v11 += *v9;
      *v9++ = v11;
    }

    while (v9 != v8);
  }

  v12 = sub_24BE7E2A4(*(*a2 + 60) * *(*a2 + 48));
  v17[0] = &off_285F93798;
  v17[1] = sub_24BE7E1F0;
  v17[3] = v17;
  sub_24BE7EE1C(a2, v12);
}

void sub_24BFB1F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB1FF0(uint64_t **a1, uint64_t a2, uint64_t a3, char **a4, int **a5)
{
  sub_24BF22A8C(a2, a3);
  v9 = *a4;
  v10 = a4[1];
  v11 = 0;
  v12 = v10 - v9;
  if (v12)
  {
    v13 = v12 >> 2;
    v14 = *a5;
    if ((v12 >> 2) <= 1)
    {
      v13 = 1;
    }

    do
    {
      v16 = *v9;
      v9 += 4;
      v15 = v16;
      if ((v16 & 0x80000000) != 0)
      {
        v15 += (*(*a3 + 8) - **a3) >> 2;
      }

      v17 = *v14++;
      v11 += *(*(*a3 + 24) + 8 * v15) * v17;
      --v13;
    }

    while (v13);
  }

  v18 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v18, v18[1], (v18[1] - *v18) >> 2);
  v19 = *(*a3 + 56);
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_24BE7E8D4();
}

void sub_24BFB2150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  *(v19 - 56) = v18;
  sub_24BCC961C((v19 - 56));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_24BFB2194(uint64_t *a1)
{
  v2 = *a1;
  *(v2 + 9) = 0;
  v3 = *(v2 + 112);
  if (v3)
  {
    do
    {
      sub_24BF56A28((v2 + 16), v3 + 2);
      v3 = *v3;
    }

    while (v3);
    v2 = *a1;
  }

  sub_24BD9A318((v2 + 96));
  return a1;
}

uint64_t sub_24BFB21F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BFB2250(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB226C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v6 = *(*a3 + 56);
  LODWORD(__dst.__r_.__value_.__l.__data_) = v6;
  __dst.__r_.__value_.__s.__data_[4] = BYTE4(v6);
  if (sub_24BE80D54(&__dst, dword_24BFEEC80))
  {
    v7 = *(a1 + 12);
    v8 = sub_24BF55DE0();
    v34 = 0uLL;
    v35 = 0;
    v9 = *a2;
    v10 = *v9;
    v11 = **v9;
    if (*(*v9 + 168))
    {
      v12 = v10[1];
      v13 = (v12 - v11) >> 2;
      v14 = v10[3] + 2 * (v12 - v11);
      if (*(v14 - 8) == 1 && (v13 < 2 || (v15 = *(v14 - 16)) == 0 || v15 == *(v12 - 4)))
      {
        v17 = *(v9 + 8);
        if (v17)
        {
          v18 = *v9;
          if (!*(v17 + 8))
          {
            v19 = v18[18];
            if (v19)
            {
              if (!*(v19 + 8))
              {
                v33[0] = *v9;
                v33[1] = v17;
                atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
                sub_24BE7F46C(a3, v33);
                sub_24BE7F218(v33);
                v24 = *v9;
                v25 = *(*(*v9 + 8) - 4);
                LODWORD(v38) = v25;
                v26 = v24[20];
                if (v25 <= 4096)
                {
                  v27 = "block_";
                }

                else
                {
                  v27 = "looped_";
                }

                if (v25 <= 4096)
                {
                  v28 = 6;
                }

                else
                {
                  v28 = 7;
                }

                *(&__dst.__r_.__value_.__s + 23) = v28;
                memcpy(&__dst, v27, v28);
                *(&__dst | v28) = 0;
                std::string::append(&__dst, "softmax_");
                if (*(*v9 + 56) != 10 && *(a1 + 20) == 1)
                {
                  std::string::append(&__dst, "precise_");
                }

                sub_24BFB7BD8(a3, &v36);
                if (v37 >= 0)
                {
                  v29 = &v36;
                }

                else
                {
                  v29 = v36;
                }

                if (v37 >= 0)
                {
                  v30 = HIBYTE(v37);
                }

                else
                {
                  v30 = v37;
                }

                std::string::append(&__dst, v29, v30);
                if (SHIBYTE(v37) < 0)
                {
                  operator delete(v36);
                }

                sub_24BF871AC(v8, &__dst, *(a1 + 20));
              }
            }
          }
        }

        else
        {
          v18 = *v9;
        }

        v20 = sub_24BE7E2A4(*(v18 + 60) * v18[20]);
        v21 = *v9;
        v22 = *(*v9 + 160);
        memset(__p, 0, sizeof(__p));
        sub_24BD7E680(__p, v21[3], v21[4], (v21[4] - v21[3]) >> 3);
        v23 = *(*v9 + 168);
        v41[0] = &off_285F93798;
        v41[1] = sub_24BE7E1F0;
        v41[3] = v41;
        sub_24BE7F25C(a3, v20);
      }
    }

    else
    {
      v12 = v10[1];
      v13 = (v12 - v11) >> 2;
    }

    memset(&__dst, 0, sizeof(__dst));
    sub_24BCC9A1C(&__dst, v11, v12, v13);
    v16 = *(*v9 + 56);
    v38 = 0;
    v39 = 0;
    v37 = 0uLL;
    v36 = 0;
    sub_24BE7E8D4();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[softmax] Does not support non-floating point types.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BFB2798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  sub_24BE7F218(&a19);
  *(v32 - 128) = &a21;
  sub_24BCC961C((v32 - 128));
  _Unwind_Resume(a1);
}

void sub_24BFB28A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(a3, v4);
}

void sub_24BFB298C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BFB29A8(uint64_t a1, uint64_t a2, uint64_t **a3, void *a4, int a5, int a6)
{
  v7 = a5;
  v128 = *MEMORY[0x277D85DE8];
  if (a5 < 0)
  {
    v7 = (((*a3)[1] - **a3) >> 2) + a5;
  }

  v9 = sub_24BD1EEAC(a3, v7);
  if (v9 <= 1024)
  {
    v10 = 128;
  }

  else
  {
    v10 = 256;
  }

  if (v9 >= 2049)
  {
    if (*(*a3 + 60) <= 4u)
    {
      v10 = 512;
    }

    else
    {
      v10 = 256;
    }
  }

  v99 = a3;
  if ((v9 + 8 * v10 - 1) / (8 * v10) >= 2)
  {
    v114 = (v9 + 8 * v10 - 1) / (8 * v10);
    v11 = (*a3)[6];
    v12 = sub_24BD1EEAC(a3, v7);
    v13 = *a3;
    v112 = 0;
    v113 = 0;
    v111 = 0;
    sub_24BD7E680(&v111, v13[3], v13[4], (v13[4] - v13[3]) >> 3);
    v14 = &v111[v7];
    v15 = v112 - (v14 + 1);
    if (v112 != v14 + 1)
    {
      memmove(&v111[v7], v14 + 1, v112 - (v14 + 1));
    }

    v112 = (v14 + v15);
    v16 = *v99;
    v109 = 0;
    v110 = 0;
    v108 = 0;
    sub_24BCC9A1C(&v108, *v16, v16[1], (v16[1] - *v16) >> 2);
    v17 = v108;
    v18 = v108 + 4 * v7;
    v19 = v109 - (v18 + 4);
    if (v109 != v18 + 4)
    {
      memmove((v108 + 4 * v7), (v18 + 4), v109 - (v18 + 4));
      v17 = v108;
    }

    v109 = v18 + v19;
    if (!((v18 + v19 - v17) >> 2))
    {
      LODWORD(__src) = 0;
      sub_24BD68FCC(&v108, &__src, &__src + 4, 1uLL);
      __src = 1;
      sub_24BF9DB2C(&v111, &__src, &v127, 1uLL);
    }

    v106 = sub_24BD1EEAC(v99, v7);
    v105[11] = *(*(*v99 + 24) + 8 * v7);
    LODWORD(v124) = v11 / v12;
    HIDWORD(v124) = v106;
    memset(v105, 0, 24);
    sub_24BCC9910(v105, &v124, v125, 2uLL);
    v20 = *(*v99 + 56);
    sub_24BE7E8D4();
  }

  v100 = (*a3)[6];
  sub_24BD1EEAC(a3, v7);
  v21 = *a3;
  v125[0] = 0;
  v125[1] = 0;
  v124 = 0;
  sub_24BD7E680(&v124, v21[3], v21[4], (v21[4] - v21[3]) >> 3);
  v22 = &v124[v7];
  v23 = v125[0] - (v22 + 1);
  if (v125[0] != v22 + 1)
  {
    memmove(&v124[v7], v22 + 1, v125[0] - (v22 + 1));
  }

  v125[0] = v22 + v23;
  v24 = *a4;
  v122 = 0;
  v123 = 0;
  v121 = 0;
  sub_24BD7E680(&v121, *(v24 + 24), *(v24 + 32), (*(v24 + 32) - *(v24 + 24)) >> 3);
  v25 = 8 * v7;
  v26 = &v121[v25];
  v27 = v122 - &v121[v25 + 8];
  if (v122 != &v121[v25 + 8])
  {
    memmove(&v121[v25], &v121[v25 + 8], v122 - (v26 + 8));
  }

  v122 = &v26[v27];
  v28 = *v99;
  v119 = 0;
  v120 = 0;
  v118 = 0;
  sub_24BCC9A1C(&v118, *v28, v28[1], (v28[1] - *v28) >> 2);
  v29 = v118;
  v30 = v118 + 4 * v7;
  v31 = v119 - (v30 + 4);
  if (v119 != v30 + 4)
  {
    memmove((v118 + 4 * v7), (v30 + 4), v119 - (v30 + 4));
    v29 = v118;
  }

  v119 = v30 + v31;
  v105[0] = (v30 + v31 - v29) >> 2;
  sub_24BD1EEAC(v99, v7);
  v32 = *v99;
  v33 = *(*v99 + 24);
  v34 = v33[v7];
  v104 = *(*(*a4 + 24) + 8 * v7);
  v35 = v124;
  if (v124 != v125[0])
  {
    v36 = v124 + 1;
    if (v124 + 1 != v125[0])
    {
      v37 = *v124;
      v38 = v124 + 1;
      do
      {
        v40 = *v38++;
        v39 = v40;
        if (v40 < v37)
        {
          v37 = v39;
          v35 = v36;
        }

        v36 = v38;
      }

      while (v38 != v125[0]);
    }
  }

  v103 = *v35;
  v41 = v121;
  v42 = v121 + 8;
  if (v121 != v122 && v42 != v122)
  {
    v44 = *v121;
    v45 = v121 + 8;
    do
    {
      v47 = *v45;
      v45 += 8;
      v46 = v47;
      if (v47 < v44)
      {
        v44 = v46;
        v41 = v42;
      }

      v42 = v45;
    }

    while (v45 != v122);
  }

  v102 = *v41;
  v48 = *(v32 + 168);
  v49 = *(v99 + 8);
  v111 = *v99;
  v112 = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(v49 + 1, 1uLL, memory_order_relaxed);
    v33 = v32[3];
  }

  v50 = v32[4];
  v52 = v33 + 1;
  v51 = *v33;
  v53 = *v33;
  if (v33 != v50 && v52 != v50)
  {
    v55 = v33 + 1;
    v56 = v33;
    v57 = v33 + 1;
    do
    {
      v59 = *v57++;
      v58 = v59;
      if (v59 < v53)
      {
        v53 = v58;
        v56 = v55;
      }

      v55 = v57;
    }

    while (v57 != v50);
    v53 = *v56;
    v60 = v33 + 1;
    do
    {
      v62 = *v60++;
      v61 = v62;
      v63 = v51 >= v62;
      if (v51 <= v62)
      {
        v51 = v61;
      }

      if (!v63)
      {
        v33 = v52;
      }

      v52 = v60;
    }

    while (v60 != v50);
    v51 = *v33;
  }

  v65 = v53 == v34 || v51 == v34;
  sub_24BE7F218(&v111);
  v67 = *a4;
  v66 = a4[1];
  v108 = *a4;
  v109 = v66;
  if (v66)
  {
    atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
  }

  v68 = *(v67 + 24);
  v69 = *(v67 + 32);
  v71 = v68 + 1;
  v70 = *v68;
  v72 = *v68;
  if (v68 != v69 && v71 != v69)
  {
    v74 = v68 + 1;
    v75 = v68;
    v76 = v68 + 1;
    do
    {
      v78 = *v76++;
      v77 = v78;
      if (v78 < v72)
      {
        v72 = v77;
        v75 = v74;
      }

      v74 = v76;
    }

    while (v76 != v69);
    v72 = *v75;
    v79 = v68 + 1;
    do
    {
      v81 = *v79++;
      v80 = v81;
      v82 = v70 >= v81;
      if (v70 <= v81)
      {
        v70 = v80;
      }

      if (!v82)
      {
        v68 = v71;
      }

      v71 = v79;
    }

    while (v79 != v69);
    v70 = *v68;
  }

  if (v104 == v72 || v104 == v70)
  {
    v84 = v65 & v48;
  }

  else
  {
    v84 = 0;
  }

  sub_24BE7F218(&v108);
  sub_24BCE1268(&__src);
  if (v84)
  {
    v85 = "c";
  }

  else
  {
    v85 = "nc";
  }

  if (v84)
  {
    v86 = 1;
  }

  else
  {
    v86 = 2;
  }

  sub_24BC95264(&__src, v85, v86);
  if (a6)
  {
    sub_24BC95264(&__src, "arg", 3);
  }

  v87 = sub_24BC95264(&__src, "_block_sort_", 12);
  sub_24BFB7BD8(v99, &v117);
  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v88 = &v117;
  }

  else
  {
    v88 = v117.__r_.__value_.__r.__words[0];
  }

  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v117.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v117.__r_.__value_.__l.__size_;
  }

  v90 = sub_24BC95264(v87, v88, size);
  v91 = sub_24BC95264(v90, "_", 1);
  sub_24BFB7BD8(a4, v115);
  if ((v116 & 0x80u) == 0)
  {
    v92 = v115;
  }

  else
  {
    v92 = v115[0];
  }

  if ((v116 & 0x80u) == 0)
  {
    v93 = v116;
  }

  else
  {
    v93 = v115[1];
  }

  v94 = sub_24BC95264(v91, v92, v93);
  v95 = sub_24BC95264(v94, "_bn", 3);
  v96 = MEMORY[0x24C2543C0](v95, v10);
  v97 = sub_24BC95264(v96, "_tn", 3);
  MEMORY[0x24C2543C0](v97, 8);
  if (v116 < 0)
  {
    operator delete(v115[0]);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  sub_24BF8763C(a2, &v117, v99, a4, v10, 8);
}

void sub_24BFB44E8(_Unwind_Exception *a1)
{
  v3 = v1[55];
  if (v3)
  {
    v1[56] = v3;
    operator delete(v3);
  }

  v4 = v1[58];
  if (v4)
  {
    v1[59] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_24BFB492C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(a3, v4);
}

void sub_24BFB4A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BFB4A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(a3, v4);
}

void sub_24BFB4B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BFB4B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(a3, v4);
}

void sub_24BFB4C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BFB4C38(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(*a2 + 48))
  {
    v7 = *result;
    v8 = (*result + 16);
    v9 = (*result + 32);
    v10 = sub_24BFB542C(*result, v8, v9);
    if (v10 == 2)
    {
      sub_24BFB5AD4(v7, v8, v9, a2, &v33);
      sub_24BFB5CD0(&v30, &v33, v34, v34 + 3, v34 + 6, v34 + 9);
      v32.__r_.__value_.__r.__words[0] = &v34;
      sub_24BC8EE84(&v32);
    }

    else
    {
      memset(&v33, 0, sizeof(v33));
      memset(&v32, 0, sizeof(v32));
      sub_24BFB5E10(&v30, &v32, &v33, &v33, &v33, &v33);
      if (v32.__r_.__value_.__r.__words[0])
      {
        v32.__r_.__value_.__l.__size_ = v32.__r_.__value_.__r.__words[0];
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    if (v33.__r_.__value_.__r.__words[0])
    {
      v33.__r_.__value_.__l.__size_ = v33.__r_.__value_.__r.__words[0];
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    v11 = *(*a2 + 160);
    v29 = (v31 - v30) >> 2;
    v12 = HIDWORD(v11);
    if (HIDWORD(v11))
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    memset(&v33, 0, sizeof(v33));
    if (v10 == 2)
    {
      MEMORY[0x24C2541D0](&v33, "g");
      v14 = (v31 - v30) >> 2;
      if (v14 > 3)
      {
        std::to_string(&v28, v13);
        sub_24BF1BA5C(&v33, "n", &v28);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          v17 = v28.__r_.__value_.__r.__words[0];
LABEL_29:
          operator delete(v17);
          if (!v12)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      else
      {
        std::to_string(&v32, v14);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v32;
        }

        else
        {
          v15 = v32.__r_.__value_.__r.__words[0];
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v32.__r_.__value_.__l.__size_;
        }

        std::string::append(&v33, v15, size);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          v17 = v32.__r_.__value_.__r.__words[0];
          goto LABEL_29;
        }
      }

      if (v12)
      {
LABEL_30:
        std::string::append(&v33, "large");
      }
    }

    else
    {
      if (v12)
      {
        v18 = "v2";
      }

      else
      {
        v18 = "v";
      }

      MEMORY[0x24C2541D0](&v33, v18);
    }

LABEL_31:
    if (*(a3 + 23) < 0)
    {
      sub_24BC8DE9C(__dst, *a3, *(a3 + 8));
    }

    else
    {
      *__dst = *a3;
      v27 = *(a3 + 16);
    }

    sub_24BFB7BD8(v8, __p);
    sub_24BF1BB04(&v33, "_", __dst, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__dst[0]);
    }

    v19 = *(a4 + 4);
    v20 = sub_24BF55DE0();
    v21 = *(*a2 + 56);
    if (*(a3 + 23) < 0)
    {
      sub_24BC8DE9C(v22, *a3, *(a3 + 8));
    }

    else
    {
      *v22 = *a3;
      v23 = *(a3 + 16);
    }

    sub_24BF86D40(v20, &v33, v21 & 0xFFFFFFFFFFLL);
  }

  return result;
}

void sub_24BFB532C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  __cxa_free_exception(v45);
  if (*(v46 - 121) < 0)
  {
    operator delete(*(v46 - 144));
  }

  sub_24BFB5F50(&a45);
  _Unwind_Resume(a1);
}

uint64_t sub_24BFB542C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 160) == 1 && *(*a2 + 160) == 1 && *(*a3 + 160) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 168) & 2) != 0 && (*(*a2 + 168) & 2) != 0 && (*(*a3 + 168) & 2) != 0 || (*(*a1 + 168) & 4) != 0 && (*(*a2 + 168) & 4) != 0 && (*(*a3 + 168) & 4) != 0)
  {
    return 1;
  }

  return 2;
}

void sub_24BFB54B0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = sub_24BFB542C(*a1, *a1 + 16, *a1 + 32);
  if (v9 == 2)
  {
    v17 = sub_24BE7E2A4(*(*a2 + 60) * *(*a2 + 48));
    v38 = &off_285F93798;
    v39 = sub_24BE7E1F0;
    v40 = &v38;
    sub_24BE7EE1C(a2, v17);
  }

  if (v9 != 1)
  {
    v18 = sub_24BE7E2A4(*(*a2 + 60));
    v19 = v8[2];
    __p = 0;
    v36 = 0;
    v37 = 0;
    sub_24BD7E680(&__p, v19[3], v19[4], (v19[4] - v19[3]) >> 3);
    v20 = *(v8[2] + 168);
    v38 = &off_285F93798;
    v39 = sub_24BE7E1F0;
    v40 = &v38;
    sub_24BE7F25C(a2, v18);
  }

  v10 = v8[1];
  if (!v10 || v10[1] || (v22 = (*v8)[18]) == 0 || *(v22 + 1) || ((*(*a2 + 56) ^ (*v8)[7]) & 0xFF00000000) != 0 || (v23 = sub_24BF180D8(), (*(*v23 + 16))(v23, *(*v8)[17]) > *(*a2 + 60) * *(*a2 + 48) + 0x4000))
  {
    v11 = v8[3];
    if (!v11 || v11[1] || (v25 = v8[2], (v26 = v25[18]) == 0) || *(v26 + 1) || ((*(*a2 + 56) ^ v25[7]) & 0xFF00000000) != 0 || (v27 = sub_24BF180D8(), (*(*v27 + 16))(v27, *v8[2][17]) > *(*a2 + 60) * *(*a2 + 48) + 0x4000))
    {
      v12 = v8[5];
      if (!v12 || v12[1] || (v29 = v8[4], (v30 = v29[18]) == 0) || *(v30 + 1) || ((*(*a2 + 56) ^ v29[7]) & 0xFF00000000) != 0 || (v31 = sub_24BF180D8(), (*(*v31 + 16))(v31, *v8[4][17]) > *(*a2 + 60) * *(*a2 + 48) + 0x4000))
      {
        v13 = sub_24BE7E2A4(*(*a2 + 60) * v8[2][20]);
        v14 = v8[2];
        v15 = v14[20];
        __p = 0;
        v36 = 0;
        v37 = 0;
        sub_24BD7E680(&__p, v14[3], v14[4], (v14[4] - v14[3]) >> 3);
        v16 = *(v8[2] + 168);
        v38 = &off_285F93798;
        v39 = sub_24BE7E1F0;
        v40 = &v38;
        sub_24BE7F25C(a2, v13);
      }

      v32 = v8[5];
      v38 = v8[4];
      v39 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(v32 + 1, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v28 = v8[3];
      v38 = v8[2];
      v39 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
      }
    }
  }

  else
  {
    v24 = v8[1];
    v38 = *v8;
    v39 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
    }
  }

  sub_24BE7F46C(a2, &v38);
  sub_24BE7F218(&v38);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(v33, *a3, *(a3 + 8));
  }

  else
  {
    *v33 = *a3;
    v34 = *(a3 + 16);
  }

  sub_24BFB4C38(a1, a2, v33, a4);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_24BFB59C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*a2 + 64);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  sub_24BFB54B0(a1, a2, __p, v5 + 8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BFB5A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB5A64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB59C0(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB5AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB5AD4(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v23[0] = *a1;
  v23[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[1];
  v23[2] = *a2;
  v23[3] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a3[1];
  v23[4] = *a3;
  v23[5] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a4[1];
  v23[6] = *a4;
  v23[7] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_24BCC9984(&v16, v23, &v24, 4uLL);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v10 = v16;
  v11 = v17;
  if (v16 != v17)
  {
    v12 = 0;
    do
    {
      v13 = *v10;
      if (v12 >= v21)
      {
        v12 = sub_24BF1B6D8(&v19, (v13 + 24));
      }

      else
      {
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        sub_24BD7E680(v12, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
        v12 += 3;
      }

      v20 = v12;
      v10 += 2;
    }

    while (v10 != v11);
    v10 = v16;
  }

  sub_24BF0F860(a5, *v10, &v19, 0x7FFFFFFFLL);
  v22 = &v19;
  sub_24BC8EE84(&v22);
  v19 = &v16;
  sub_24BCC961C(&v19);
  for (i = 6; i != -2; i -= 2)
  {
    sub_24BE7F218(&v23[i]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24BFB5C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void ***a15, char a16)
{
  a15 = &a12;
  sub_24BC8EE84(&a15);
  a12 = &a9;
  sub_24BCC961C(&a12);
  for (i = 48; i != -16; i -= 16)
  {
    sub_24BE7F218(&a16 + i);
  }

  _Unwind_Resume(a1);
}

void *sub_24BFB5CD0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9A1C(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BD7E680((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_24BD7E680((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_24BD7E680((a1 + 9), *a5, a5[1], (a5[1] - *a5) >> 3);
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  sub_24BD7E680((a1 + 12), *a6, a6[1], (a6[1] - *a6) >> 3);
  return a1;
}

void sub_24BFB5DAC(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BFB5E10(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BD7E680((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_24BD7E680((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_24BD7E680((a1 + 9), *a5, a5[1], (a5[1] - *a5) >> 3);
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  sub_24BD7E680((a1 + 12), *a6, a6[1], (a6[1] - *a6) >> 3);
  return a1;
}

void sub_24BFB5EEC(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BFB5F50(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t ***sub_24BFB5FC4(uint64_t ***result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *result;
  v5 = **result;
  if (v5[6])
  {
    v8 = *(v5 + 168);
    v9 = *(a4 + 4);
    v10 = sub_24BF55DE0();
    if (v8)
    {
      memset(v32, 0, sizeof(v32));
      v31 = 0;
      v20 = (*v4)[20];
      memset(&__p, 0, sizeof(__p));
      if (HIDWORD(v20))
      {
        v11 = "v2";
      }

      else
      {
        v11 = "v";
      }

      MEMORY[0x24C2541D0](&__p, v11);
    }

    else
    {
      sub_24BF0FF88(v4, 0x7FFFFFFFuLL, v32);
      v31 = (*(&v32[0] + 1) - *&v32[0]) >> 2;
      v12 = HIDWORD((*v4)[6]);
      if (v12)
      {
        v13 = 4;
      }

      else
      {
        v13 = 1;
      }

      memset(&__p, 0, sizeof(__p));
      std::to_string(&v29, v13);
      v14 = std::string::insert(&v29, 0, "gn");
      v15 = v14->__r_.__value_.__r.__words[0];
      *&v33 = v14->__r_.__value_.__l.__size_;
      *(&v33 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v15;
      __p.__r_.__value_.__l.__size_ = v33;
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v33 + 7);
      *(&__p.__r_.__value_.__s + 23) = v16;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (v12)
      {
        std::string::append(&__p, "_large");
      }
    }

    if (*(a3 + 23) < 0)
    {
      sub_24BC8DE9C(__dst, *a3, *(a3 + 8));
    }

    else
    {
      *__dst = *a3;
      v28 = *(a3 + 16);
    }

    sub_24BFB7BD8(v4, v25);
    sub_24BFB7BD8(a2, v23);
    sub_24BFB661C(&__p, "_", __dst, v25, v23);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(__dst[0]);
    }

    v17 = (*v4)[7];
    v18 = *(*a2 + 56);
    if (*(a3 + 23) < 0)
    {
      sub_24BC8DE9C(v21, *a3, *(a3 + 8));
    }

    else
    {
      *v21 = *a3;
      v22 = *(a3 + 16);
    }

    sub_24BF84BB4(v10, &__p, v17 & 0xFFFFFFFFFFLL, v18 & 0xFFFFFFFFFFLL);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BFB653C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  __cxa_free_exception(v53);
  if (a53 < 0)
  {
    operator delete(__p);
  }

  sub_24BD866B0(v54 - 176);
  _Unwind_Resume(a1);
}

void sub_24BFB661C(std::string *a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::string::append(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v14 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(v11, *a4, *(a4 + 8));
  }

  else
  {
    *v11 = *a4;
    v12 = *(a4 + 16);
  }

  if (*(a5 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v10 = *(a5 + 16);
  }

  sub_24BFB791C(a1, __dst, v11, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BFB6718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6764(uint64_t ***a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = **a1;
  if ((v9[21] & 1) == 0)
  {
    v15 = sub_24BE7E2A4(*(*a2 + 60) * *(*a2 + 48));
    v22[0] = &off_285F93798;
    v22[1] = sub_24BE7E1F0;
    v22[3] = v22;
    sub_24BE7EE1C(a2, v15);
  }

  v10 = v8[1];
  if (!v10 || *(v10 + 8) || (v17 = v9[18]) == 0 || *(v17 + 8) || ((*(*a2 + 56) ^ v9[7]) & 0xFF00000000) != 0)
  {
    v11 = sub_24BE7E2A4(*(*a2 + 60) * v9[20]);
    v12 = *v8;
    v13 = (*v8)[20];
    memset(__p, 0, sizeof(__p));
    sub_24BD7E680(__p, v12[3], v12[4], (v12[4] - v12[3]) >> 3);
    v14 = *(*v8 + 168);
    v23[0] = &off_285F93798;
    v23[1] = sub_24BE7E1F0;
    v23[3] = v23;
    sub_24BE7F25C(a2, v11);
  }

  v21[0] = **a1;
  v21[1] = v10;
  atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  sub_24BE7F46C(a2, v21);
  sub_24BE7F218(v21);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(v18, *a3, *(a3 + 8));
  }

  else
  {
    *v18 = *a3;
    v19 = *(a3 + 16);
  }

  sub_24BFB5FC4(a1, a2, v18, a4);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_24BFB6A04(uint64_t ***a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*a2 + 64);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  sub_24BFB6764(a1, a2, __p, v5 + 8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BFB6A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6AA8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6B18(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6B88(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6BF8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6C68(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6CD8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6D48(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6DB8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6E28(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6E98(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6F08(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6F78(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB6FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB6FE8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB703C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7058(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB70AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB70C8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB711C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7138(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB718C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB71A8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB71FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7218(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB726C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7288(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB72DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB72F8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB734C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7368(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB73BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB73D8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB742C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7448(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB749C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB74B8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB750C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7528(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB757C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7598(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB75EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7608(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB765C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7678(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB76CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB76E8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BFB773C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB7758(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v5 = *(a1 + 20);
  switch(v5)
  {
    case 0:
      sub_24BFB7ED4(a1);
      sub_24BFB6A04(a2, a3, v8);
      if ((v8[23] & 0x80000000) == 0)
      {
        return;
      }

      v6 = v8;
      goto LABEL_10;
    case 1:
      sub_24BFB7ED4(a1);
      sub_24BFB6A04(a2, a3, v7);
      if ((v7[23] & 0x80000000) == 0)
      {
        return;
      }

      v6 = v7;
      goto LABEL_10;
    case 2:
      sub_24BFB7ED4(a1);
      sub_24BFB6A04(a2, a3, v9);
      if ((v9[23] & 0x80000000) != 0)
      {
        v6 = v9;
LABEL_10:
        operator delete(*v6);
      }

      break;
  }
}

void sub_24BFB7818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

double sub_24BFB7860(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = (**a2)[7];
  v11 = v7;
  v12 = BYTE4(v7);
  if (!sub_24BE80D54(&v11, &dword_24BFF086C))
  {
    return sub_24BF0F2D8(v6, a3);
  }

  sub_24BFB7ED4(a1);
  sub_24BFB6A04(a2, a3, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return result;
}

void sub_24BFB7900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BFB791C(std::string *a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  std::string::append(a1, a2, v8);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v12 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v10 = *(a4 + 16);
  }

  sub_24BF1BBF4(a1, __dst, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BFB79F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_24BFB7B74@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *result;
  if (v3 < 0xD)
  {
    return MEMORY[0x24C2541D0](a2, off_27916D3B0[v3]);
  }

  return result;
}

void sub_24BFB7BBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_24BFB7BD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 56);
  v4 = v2;
  v5 = BYTE4(v2);
  return sub_24BFB7B74(&v4, a2);
}

uint64_t sub_24BFB7C10@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = 1 << (v8 + 1);
    v10 = v9 <= result;
    if (v9 > result)
    {
      v11 = v7;
    }

    else
    {
      v11 = v7 + 1;
    }

    if (v10)
    {
      ++v8;
    }

    if (v11 == 10)
    {
      break;
    }

    if (1 << (v5 + 1) <= a2)
    {
      ++v5;
      ++v11;
    }

    if (v11 == 10)
    {
      break;
    }

    if (1 << (v6 + 1) <= a3)
    {
      ++v6;
      ++v11;
    }

    if (v11 == v7)
    {
      break;
    }

    v7 = v11;
  }

  while (v11 != a4);
  *a5 = 1 << v8;
  a5[1] = 1 << v5;
  a5[2] = 1 << v6;
  return result;
}

char **sub_24BFB7CA0@<X0>(char **result@<X0>, void **a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = result[1] - *result;
  if (v4)
  {
    v5 = v4 >> 2;
    v6 = *a2;
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    v8 = 1;
    v9 = 1;
    do
    {
      if (*v6++)
      {
        v11 = *v3;
        if (v9 * v11 < 0xFFFFFFFF)
        {
          v9 *= v11;
          v11 = 1;
        }

        v8 *= v11;
      }

      v3 += 4;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = 1;
    v8 = 1;
  }

  if (HIDWORD(v8) || HIDWORD(v9))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to safely factor shape.");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  if (v8 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v8 >= v9)
  {
    v8 = v9;
  }

  *a3 = v12;
  a3[1] = v8;
  a3[2] = 1;
  return result;
}

char **sub_24BFB7D90@<X0>(char **result@<X0>, void **a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = *result;
  v5 = result[1] - *result;
  if (v5)
  {
    v6 = v5 >> 2;
    v7 = *a2;
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    v9 = 1;
    v10 = 1;
    while (1)
    {
      if (*v7++)
      {
        v12 = *v4;
        if (a3 % v12)
        {
          if (v10 * v12 < 0xFFFFFFFF)
          {
            v10 *= v12;
            v12 = 1;
          }

          v9 *= v12;
          if (a3 >= 2)
          {
            if (v10 % a3)
            {
              if (!(v9 % a3))
              {
                v9 /= a3;
                a3 = 1;
              }

              goto LABEL_16;
            }

            v10 /= a3;
          }

          a3 = 1;
        }

        else
        {
          a3 /= v12;
        }
      }

LABEL_16:
      v4 += 4;
      if (!--v8)
      {
        goto LABEL_20;
      }
    }
  }

  v10 = 1;
  v9 = 1;
LABEL_20:
  if (HIDWORD(v9) || HIDWORD(v10) || a3 > 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to safely factor shape.");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  if (v9 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v9 >= v10)
  {
    v9 = v10;
  }

  *a4 = v13;
  a4[1] = v9;
  a4[2] = 1;
  return result;
}

uint64_t sub_24BFB7ED4(uint64_t a1)
{
  sub_24BCE1268(&v3);
  (*(*a1 + 40))(a1, &v3);
  std::stringbuf::str();
  v3 = *MEMORY[0x277D82828];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x277D82828] + 24);
  v4 = MEMORY[0x277D82878] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](&v7);
}

void sub_24BFB8044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD0E408(va, MEMORY[0x277D82828]);
  MEMORY[0x24C2547D0](v2 + 112);
  _Unwind_Resume(a1);
}

double sub_24BFB8068(double a1, double a2, double a3, double a4)
{
  v4 = fmax(fabs(a3), fabs(a4));
  v5 = -INFINITY;
  v6 = __clz(*&v4);
  v7 = (((*&v4 << (v6 - 11) >> 52) & 0x7FF) - v6 - 1012);
  if (*&v4 >> 52)
  {
    v7 = ((*&v4 >> 52) - 1023);
  }

  if (v4 != 0.0)
  {
    v5 = v7;
  }

  if (*&v4 >> 52 == 2047)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v22 = -v8;
  if (a3 == 0.0 || (v23 = (*&a3 >> 52) & 0x7FFLL, v23 == 2047))
  {
LABEL_34:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v24 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if (!v23)
  {
    v25 = __clz(v24);
    v26 = v24 << (v25 - 11);
    LODWORD(v23) = 12 - v25;
    v24 = v26 & 0xFFEFFFFFFFFFFFFFLL;
  }

  v20 = __OFADD__(v23, v22);
  LODWORD(v23) = v23 - v8;
  if (v20)
  {
    v23 = (v23 >> 31) ^ 0x80000000;
  }

  else
  {
    v23 = v23;
  }

  v27 = *&a3 & 0x8000000000000000;
  if (v23 < 2047)
  {
    if (v23 <= 0)
    {
      v37 = v24 | v27 | 0x10000000000000;
      if (v23 <= -1021)
      {
        v38 = -1021;
      }

      else
      {
        v38 = v23;
      }

      a3 = *&v37 * COERCE_DOUBLE((v38 + 1022) << 52);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    *&a3 = v27 | (v23 << 52) | v24;
    goto LABEL_34;
  }

  a3 = COERCE_DOUBLE(v27 | 0x7FE0000000000000) + COERCE_DOUBLE(v27 | 0x7FE0000000000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_35:
  v28 = (*&a4 >> 52) & 0x7FFLL;
  if (v28 != 2047)
  {
    v29 = *&a4 & 0xFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v30 = __clz(v29);
      v31 = v29 << (v30 - 11);
      LODWORD(v28) = 12 - v30;
      v29 = v31 & 0xFFEFFFFFFFFFFFFFLL;
    }

    v20 = __OFADD__(v28, v22);
    LODWORD(v32) = v28 - v8;
    if (v20)
    {
      v32 = (v32 >> 31) ^ 0x80000000;
    }

    else
    {
      v32 = v32;
    }

    v33 = *&a4 & 0x8000000000000000;
    if (v32 < 2047)
    {
      if (v32 <= 0)
      {
        if (v32 <= -1021)
        {
          LODWORD(v32) = -1021;
        }

        a4 = COERCE_DOUBLE(v29 | v33 | 0x10000000000000) * COERCE_DOUBLE((v32 + 1022) << 52);
      }

      else
      {
        *&a4 = v33 | (v32 << 52) | v29;
      }
    }

    else
    {
      a4 = COERCE_DOUBLE(v33 | 0x7FE0000000000000) + COERCE_DOUBLE(v33 | 0x7FE0000000000000);
    }
  }

LABEL_10:
  v10 = a4 * a4 + a3 * a3;
  v11 = (a4 * a2 + a1 * a3) / v10;
  v12 = -v9;
  if (v11 != 0.0)
  {
    v13 = (a4 * a2 + a1 * a3) / v10;
    v14 = (*&v11 >> 52) & 0x7FFLL;
    if (v14 != 2047)
    {
      v15 = *&v13 & 0xFFFFFFFFFFFFFLL;
      v16 = __clz(*&v13 & 0xFFFFFFFFFFFFFLL);
      v17 = (*&v13 & 0xFFFFFFFFFFFFFLL) << (v16 - 11);
      v18 = 12 - v16;
      v19 = v17 & 0xFFEFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v19;
        LODWORD(v14) = v18;
      }

      v20 = __OFADD__(v14, v12);
      LODWORD(v14) = v14 + v12;
      if (v20)
      {
        v14 = (v14 >> 31) ^ 0x80000000;
      }

      else
      {
        v14 = v14;
      }

      v21 = *&v11 & 0x8000000000000000;
      if (v14 < 2047)
      {
        if (v14 <= 0)
        {
          v34 = v15 | v21 | 0x10000000000000;
          if (v14 <= -1021)
          {
            v35 = -1021;
          }

          else
          {
            v35 = v14;
          }

          return *&v34 * COERCE_DOUBLE((v35 + 1022) << 52);
        }

        else
        {
          *&v11 = v21 | (v14 << 52) | v15;
        }
      }

      else
      {
        return COERCE_DOUBLE(v21 | 0x7FE0000000000000) + COERCE_DOUBLE(v21 | 0x7FE0000000000000);
      }
    }
  }

  return v11;
}

uint64_t sub_24BFB856C(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_24BCAABD8(a1);
  while (2)
  {
    while (2)
    {
      v2 = sub_24BFB8A38(a1) + 1;
      result = 4;
      v4 = "invalid string: missing closing quote";
      switch(v2)
      {
        case 0:
          goto LABEL_82;
        case 1:
          v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
          goto LABEL_82;
        case 2:
          v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
          goto LABEL_82;
        case 3:
          v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
          goto LABEL_82;
        case 4:
          v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
          goto LABEL_82;
        case 5:
          v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
          goto LABEL_82;
        case 6:
          v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
          goto LABEL_82;
        case 7:
          v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
          goto LABEL_82;
        case 8:
          v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
          goto LABEL_82;
        case 9:
          v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
          goto LABEL_82;
        case 10:
          v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
          goto LABEL_82;
        case 11:
          v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
          goto LABEL_82;
        case 12:
          v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
          goto LABEL_82;
        case 13:
          v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
          goto LABEL_82;
        case 14:
          v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
          goto LABEL_82;
        case 15:
          v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
          goto LABEL_82;
        case 16:
          v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
          goto LABEL_82;
        case 17:
          v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
          goto LABEL_82;
        case 18:
          v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
          goto LABEL_82;
        case 19:
          v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
          goto LABEL_82;
        case 20:
          v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
          goto LABEL_82;
        case 21:
          v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
          goto LABEL_82;
        case 22:
          v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
          goto LABEL_82;
        case 23:
          v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
          goto LABEL_82;
        case 24:
          v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
          goto LABEL_82;
        case 25:
          v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
          goto LABEL_82;
        case 26:
          v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
          goto LABEL_82;
        case 27:
          v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
          goto LABEL_82;
        case 28:
          v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
          goto LABEL_82;
        case 29:
          v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
          goto LABEL_82;
        case 30:
          v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
          goto LABEL_82;
        case 31:
          v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
          goto LABEL_82;
        case 32:
          v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
          goto LABEL_82;
        case 33:
        case 34:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
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
        case 63:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
        case 111:
        case 112:
        case 113:
        case 114:
        case 115:
        case 116:
        case 117:
        case 118:
        case 119:
        case 120:
        case 121:
        case 122:
        case 123:
        case 124:
        case 125:
        case 126:
        case 127:
        case 128:
          v8 = *(a1 + 20);
          goto LABEL_7;
        case 35:
          goto LABEL_84;
        case 93:
          v10 = sub_24BFB8A38(a1);
          v4 = "invalid string: forbidden character after backslash";
          if (!v12 & v11)
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_82;
            }

            goto LABEL_7;
          }

          break;
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 201:
        case 202:
        case 203:
        case 204:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
        case 219:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
          *&v16 = 0xBF00000080;
          v5 = a1;
          v6 = 2;
          goto LABEL_14;
        case 225:
          v7 = xmmword_24BFBD250;
          goto LABEL_5;
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 239:
        case 240:
          v7 = xmmword_24BFBD240;
          goto LABEL_5;
        case 238:
          v7 = xmmword_24BFBD230;
LABEL_5:
          v16 = v7;
          v5 = a1;
          v6 = 4;
          goto LABEL_14;
        case 241:
          v17 = 0xBF00000080;
          v9 = &xmmword_24BFBD790;
          goto LABEL_13;
        case 242:
        case 243:
        case 244:
          v17 = 0xBF00000080;
          v9 = &xmmword_24BFBD7A8;
          goto LABEL_13;
        case 245:
          v17 = 0xBF00000080;
          v9 = &xmmword_24BFBD7C0;
LABEL_13:
          v16 = *v9;
          v5 = a1;
          v6 = 6;
LABEL_14:
          if ((sub_24BCAAC30(v5, &v16, v6) & 1) == 0)
          {
            goto LABEL_83;
          }

          continue;
        default:
          v4 = "invalid string: ill-formed UTF-8 byte";
          goto LABEL_82;
      }

      break;
    }

    switch(v10)
    {
      case 'n':
        LOBYTE(v8) = 10;
        goto LABEL_7;
      case 'o':
      case 'p':
      case 'q':
      case 's':
        goto LABEL_82;
      case 'r':
        LOBYTE(v8) = 13;
        goto LABEL_7;
      case 't':
        LOBYTE(v8) = 9;
        goto LABEL_7;
      case 'u':
        v13 = sub_24BFB8B18(a1);
        if (v13 == -1)
        {
          goto LABEL_85;
        }

        v14 = v13;
        if ((v13 & 0xFFFFFC00) != 0xD800)
        {
          if ((v13 & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_82;
          }

          if (v13 > 127)
          {
            if (v13 <= 0x7FF)
            {
              std::string::push_back((a1 + 80), (v13 >> 6) | 0xC0);
              goto LABEL_39;
            }

            if (!HIWORD(v13))
            {
              std::string::push_back((a1 + 80), (v13 >> 12) | 0xE0);
              goto LABEL_38;
            }

LABEL_37:
            std::string::push_back((a1 + 80), (v14 >> 18) | 0xF0);
            std::string::push_back((a1 + 80), (v14 >> 12) & 0x3F | 0x80);
LABEL_38:
            std::string::push_back((a1 + 80), (v14 >> 6) & 0x3F | 0x80);
LABEL_39:
            LOBYTE(v8) = v14 & 0x3F | 0x80;
            goto LABEL_7;
          }

          LOBYTE(v8) = v13;
LABEL_7:
          std::string::push_back((a1 + 80), v8);
          continue;
        }

        if (sub_24BFB8A38(a1) != 92 || sub_24BFB8A38(a1) != 117)
        {
LABEL_86:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_82;
        }

        v15 = sub_24BFB8B18(a1);
        if (v15 != -1)
        {
          if (v15 >> 10 != 55)
          {
            goto LABEL_86;
          }

          v14 = v15 + (v14 << 10) - 56613888;
          goto LABEL_37;
        }

LABEL_85:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_82:
        *(a1 + 104) = v4;
LABEL_83:
        result = 14;
LABEL_84:
        *MEMORY[0x277D85DE8];
        return result;
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t sub_24BFB8A38(int64x2_t *a1)
{
  a1[2] = vaddq_s64(a1[2], vdupq_n_s64(1uLL));
  if (a1[1].i8[8] == 1)
  {
    a1[1].i8[8] = 0;
    result = a1[1].u32[1];
  }

  else
  {
    result = sub_24BCAAB5C(a1);
    a1[1].i32[1] = result;
  }

  if (result != -1)
  {
    v4 = result;
    sub_24BC8E768(&a1[3].i64[1], &v4);
    result = a1[1].u32[1];
    if (result == 10)
    {
      v3 = a1[3].i64[0] + 1;
      a1[2].i64[1] = 0;
      a1[3].i64[0] = v3;
    }
  }

  return result;
}

uint64_t sub_24BFB8AC8(uint64_t result)
{
  v1 = (result + 40);
  v2 = *(result + 40);
  *(result + 24) = 1;
  --*(result + 32);
  if (v2 || (v1 = (result + 48), (v2 = *(result + 48)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 20) != -1)
  {
    --*(result + 64);
  }

  return result;
}

uint64_t sub_24BFB8B18(int64x2_t *a1)
{
  LODWORD(v2) = 0;
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v9 = xmmword_24BFBD260;
  while (1)
  {
    v4 = *(&v9 + v3);
    sub_24BFB8A38(a1);
    v5 = a1[1].i32[1];
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

LABEL_7:
    v2 = ((v6 << v4) + v2);
    v3 += 4;
    if (v3 == 16)
    {
      goto LABEL_8;
    }
  }

  if ((v5 - 65) <= 5)
  {
    v6 = v5 - 55;
    goto LABEL_7;
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_7;
  }

  v2 = 0xFFFFFFFFLL;
LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_24BFB8C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v6;
    operator delete(v6);
  }

  v7 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v7;
    operator delete(v7);
  }

  v8 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v8;
    operator delete(v8);
  }
}

_BYTE *sub_24BFB8CB8()
{
  v0 = off_281C0BC78();
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  sub_24BCDF390(v0, v0);
  result = off_281C0BC90();
  *result = 1;
  return result;
}

void sub_24BFB8D0C()
{
  if (__cxa_guard_acquire(&qword_27F0791A0))
  {
    qword_27F0791B0 = 0;
    qword_27F0791A8 = &qword_27F0791B0;
    qword_27F0791B8 = 0;
    unk_27F0791C0 = 850045863;
    unk_27F0791C8 = 0u;
    unk_27F0791D8 = 0u;
    unk_27F0791E8 = 0u;
    qword_27F0791F8 = 0;
    __cxa_atexit(sub_24BD1F8EC, &qword_27F0791A8, &dword_24BC7E000);

    __cxa_guard_release(&qword_27F0791A0);
  }
}

void sub_24BFB8DA8()
{
  sub_24BD4EFD4(*MEMORY[0x277D85DE8]);
  _os_log_error_impl(&dword_24BC7E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Matrix dimensions (%dx%d) do not match x vector dimensions %dx%d\n", v1, 0x1Au);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_24BFB8E18()
{
  sub_24BD4EFD4(*MEMORY[0x277D85DE8]);
  _os_log_error_impl(&dword_24BC7E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Matrix dimensions (%dx%d) do not match y vector dimensions %dx%d\n", v1, 0x1Au);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_24BFB8E88()
{
  if (__cxa_guard_acquire(&qword_27F079000))
  {
    __cxa_atexit(std::error_category::~error_category, &off_281C0BC70, &dword_24BC7E000);

    __cxa_guard_release(&qword_27F079000);
  }
}

void sub_24BFB8EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }

  v5 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v5;
    operator delete(v5);
  }
}

void sub_24BFB8F30()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDCDCB0();
  sub_24BDCDC88();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_24BFB8FB8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDCDCB0();
  sub_24BDCDC88();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_24BFB9040()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDCDC88();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_24BFB9130()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDCDCB0();
  sub_24BDCDC88();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_24BFB91B8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDCDCC0();
  sub_24BDCDC94();
  sub_24BDCDC88();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_24BFB9248()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDCDCC0();
  sub_24BDCDC94();
  sub_24BDCDC88();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_24BFB92D8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDCDC88();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_24BFB9354()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDCDC88();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BFB941C(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 184;
  v4 = (a1 - 184);
  v5 = (a1 - 184);
  do
  {
    v6 = *v5;
    v5 -= 23;
    result = (*v6)(v4);
    v3 -= 184;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void sub_24BFB9488(uint64_t a1, uint64_t a2)
{
  v2 = 16 - a1;
  v3 = a1 + a2 - 24;
  do
  {
    v4 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v4;
      operator delete(v4);
    }

    v3 -= 72;
    v2 += 72;
  }

  while (v2);
}

uint64_t sub_24BFB94D0()
{
  sub_24BE23F24();
  do
  {
    v4 = *v3;
    v3 -= 23;
    result = (*v4)(v1);
    v2 -= 184;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__stem(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7428](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7838]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}