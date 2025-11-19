uint64_t sub_1B5D5C954(unsigned __int16 *a1)
{
  if (*(a1 + 6))
  {
    __assert_rtn("internalize_buffer", "TIString.cpp", 240, "m_buffer_type == External");
  }

  *(a1 + 6) = 1;
  v2 = *(a1 + 1);
  *(a1 + 1) = 0;
  v3 = *a1;

  return sub_1B5CDCAAC(a1, v2, 0, v3);
}

uint64_t sub_1B5D5C9B0(uint64_t a1, char *__s)
{
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 1;
  *(a1 + 8) = 0;
  if (__s)
  {
    v4 = strlen(__s);
    sub_1B5CDCAAC(a1, __s, 0, v4);
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1B5D5CA18(uint64_t a1, char *__s1, size_t __n)
{
  v3 = __n;
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 1;
  *(a1 + 8) = 0;
  if (!__s1)
  {
    if (!__n)
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      return a1;
    }

LABEL_7:
    __assert_rtn("String", "TIString.cpp", 88, "str && len <= strnlen(str, len) || len == 0");
  }

  if (strnlen(__s1, __n) < __n)
  {
    goto LABEL_7;
  }

  sub_1B5CDCAAC(a1, __s1, 0, v3);
  return a1;
}

uint64_t sub_1B5D5CABC(uint64_t a1, unsigned __int16 *a2)
{
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  v4 = *(a2 + 6);
  *(a1 + 6) = v4;
  *(a1 + 8) = 0;
  if (v4 == 1)
  {
    if (*(a2 + 1))
    {
      v6 = *(a2 + 1);
    }

    else
    {
      v6 = (a2 + 8);
    }

    sub_1B5CDCAAC(a1, v6, 0, *a2);
  }

  else if (!v4)
  {
    *(a1 + 8) = *(a2 + 1);
    *a1 = *a2;
    v5 = a2[2];
    if (!v5)
    {
      sub_1B5CDF8F4(a2);
      v5 = a2[2];
    }

    *(a1 + 4) = v5;
    *(a1 + 17) = 0;
  }

  return a1;
}

uint64_t sub_1B5D5CB58(_DWORD *a1)
{
  v3 = a1[2];
  result = a1[3];
  if (v3 <= result)
  {
    v4 = a1[4];
    if (v4 >= 0x10000)
    {
      v5 = -4;
    }

    else
    {
      v5 = -3;
    }

    if (v4 - 1114112 >= 0xFFEFE000)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v4 >> 11 >= 0x1B)
    {
      v7 = v6;
    }

    else
    {
      v7 = -3;
    }

    if (v4 >= 0x800)
    {
      v8 = v7;
    }

    else
    {
      v8 = -2;
    }

    if (v4 >= 0x80)
    {
      v9 = v8;
    }

    else
    {
      v9 = -1;
    }

    return (v9 + v3);
  }

  return result;
}

uint64_t sub_1B5D5CBBC(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  if (v4 && *(a1 + 6) == 1)
  {
    free(v4);
  }

  v5 = *a2;
  *a1 = v5;
  *(a1 + 2) = *(a2 + 1);
  *(a1 + 6) = *(a2 + 6);
  v6 = *(a2 + 1);
  *(a1 + 8) = v6;
  if (!v6)
  {
    if (v5)
    {
      *(a1 + 16) = *(a2 + 1);
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }

  *(a2 + 1) = 0;
  sub_1B5CDF8A0(a2);
  return a1;
}

void sub_1B5D5CC40(unsigned __int16 *a1, unsigned int a2)
{
  if (!*(a1 + 6))
  {
    sub_1B5D5C954(a1);
  }

  v4 = *a1;
  if (a2 > 0x7F)
  {
    sub_1B5CDCB48(a1, v4 + 4);
    v6 = *(a1 + 1);
    if (!v6)
    {
      v6 = a1 + 8;
    }

    if (a2 > 0x7FF)
    {
      v8 = *a1;
      *a1 = v8 + 1;
      if (HIWORD(a2))
      {
        *(v6 + v8) = (a2 >> 18) | 0xF0;
        v9 = *a1;
        *a1 = v9 + 1;
        *(v6 + v9) = (a2 >> 12) & 0x3F | 0x80;
      }

      else
      {
        *(v6 + v8) = (a2 >> 12) | 0xE0;
      }

      v7 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    }

    else
    {
      v7 = (a2 >> 6) | 0xFFFFFFC0;
    }

    v10 = *a1;
    *a1 = v10 + 1;
    *(v6 + v10) = v7;
    v11 = *a1;
    *a1 = v11 + 1;
    *(v6 + v11) = a2 & 0x3F | 0x80;
  }

  else
  {
    v5 = v4 + 1;
    sub_1B5CDCB48(a1, v4 + 1);
    v6 = *(a1 + 1);
    if (!v6)
    {
      v6 = a1 + 8;
    }

    *a1 = v5;
    *(v6 + v5 - 1) = a2;
  }

  *(v6 + *a1) = 0;
  a1[2] = 0;
}

_DWORD *sub_1B5D5CD6C(_DWORD *a1)
{
  v2 = sub_1B5D5CB58(a1);
  if (v2)
  {
    a1[2] = v2;
    v3 = *a1;
    v4 = *(*a1 + (v2 - 1));
    v5 = *(*a1 + (v2 - 1));
    a1[4] = v5;
    if (v4 <= -65)
    {
      v6 = v5 & 0x3F;
      a1[4] = v6;
      v7 = *(v3 + (v2 - 2));
      if (v7 <= 0xBF)
      {
        v10 = v2 - 3;
        v11 = 1;
        v12 = 6;
        do
        {
          v6 |= (v7 & 0x3F) << v12;
          a1[4] = v6;
          ++v11;
          v12 += 6;
          v7 = *(v3 + v10--);
        }

        while (v7 <= 0xBF);
        v9 = 6 - v11;
        v8 = v12;
      }

      else
      {
        v8 = 6;
        v9 = 5;
      }

      a1[4] = v6 | ((v7 & ~(-1 << v9)) << v8);
    }
  }

  return a1;
}

uint64_t sub_1B5D5CE34(unsigned __int16 *a1, unsigned __int16 *a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 > a3 && *a2 != 0)
  {
    v9 = *(a1 + 1);
    v10 = a1 + 8;
    if (v9)
    {
      v11 = *(a1 + 1);
    }

    else
    {
      v11 = (a1 + 8);
    }

    v22 = v11;
    v23 = a3;
    v24 = v3;
    v25 = 0;
    sub_1B5CDCF70(&v22);
    while (1)
    {
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = v10;
      }

      v18 = v12;
      v19 = v3;
      v20 = v3;
      v21 = 0;
      sub_1B5CDCF70(&v18);
      if (v22 != v18)
      {
        __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
      }

      if (v23 == v19)
      {
        break;
      }

      if (sub_1B5D5CF90(a2, v25))
      {
        v5 = v24;
        if (v23 <= v24)
        {
          if (v25 >= 0x10000)
          {
            v13 = -4;
          }

          else
          {
            v13 = -3;
          }

          if (v25 - 1114112 >= 0xFFEFE000)
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          if (v25 >> 11 >= 0x1B)
          {
            v15 = v14;
          }

          else
          {
            v15 = -3;
          }

          if (v25 >= 0x800)
          {
            v16 = v15;
          }

          else
          {
            v16 = -2;
          }

          if (v25 >= 0x80)
          {
            v17 = v16;
          }

          else
          {
            v17 = -1;
          }

          return (v17 + v23);
        }

        return v5;
      }

      sub_1B5CDCF70(&v22);
      v3 = *a1;
      v9 = *(a1 + 1);
    }
  }

  return -1;
}

BOOL sub_1B5D5CF90(unsigned __int16 *a1, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    if (*(a1 + 1))
    {
      v7 = *(a1 + 1);
    }

    else
    {
      v7 = (a1 + 8);
    }

    *&v19 = v7;
    v8 = *a1;
    DWORD2(v19) = 0;
    HIDWORD(v19) = v8;
    LODWORD(v20) = 0;
    sub_1B5CDCF70(&v19);
    v15 = v7;
    v16 = v8;
    v17 = v8;
    v18 = 0;
    sub_1B5CDCF70(&v15);
    v21 = v19;
    v22 = v20;
    v9 = v15;
    if (v19 != v15)
    {
      goto LABEL_19;
    }

    v10 = v16;
    while (1)
    {
      v11 = DWORD2(v21);
      if (DWORD2(v21) == v10 || v22 == a2)
      {
        break;
      }

      sub_1B5CDCF70(&v21);
      if (v21 != v9)
      {
        goto LABEL_19;
      }
    }

    *&v21 = v7;
    DWORD2(v21) = v8;
    HIDWORD(v21) = v8;
    LODWORD(v22) = 0;
    sub_1B5CDCF70(&v21);
    if (v9 != v21)
    {
LABEL_19:
      __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
    }

    v13 = v11 == DWORD2(v21);
  }

  else
  {
    v3 = *(a1 + 1);
    if (!v3)
    {
      v3 = (a1 + 8);
    }

    v4 = *a1;
    if (*a1)
    {
      v5 = *a1;
      v6 = v3;
      while (*v6 != a2)
      {
        ++v6;
        if (!--v5)
        {
          v6 = &v4[v3];
          break;
        }
      }
    }

    else
    {
      v6 = v3;
    }

    v13 = v6 - v3 == v4;
  }

  return !v13;
}

uint64_t sub_1B5D5D0F4(unsigned __int16 *a1, unsigned __int16 *a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 > a3 && *a2 != 0)
  {
    v9 = *(a1 + 1);
    v10 = a1 + 8;
    if (v9)
    {
      v11 = *(a1 + 1);
    }

    else
    {
      v11 = (a1 + 8);
    }

    v22 = v11;
    v23 = a3;
    v24 = v3;
    v25 = 0;
    sub_1B5CDCF70(&v22);
    while (1)
    {
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = v10;
      }

      v18 = v12;
      v19 = v3;
      v20 = v3;
      v21 = 0;
      sub_1B5CDCF70(&v18);
      if (v22 != v18)
      {
        __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
      }

      if (v23 == v19)
      {
        break;
      }

      if (!sub_1B5D5CF90(a2, v25))
      {
        v5 = v24;
        if (v23 <= v24)
        {
          if (v25 >= 0x10000)
          {
            v13 = -4;
          }

          else
          {
            v13 = -3;
          }

          if (v25 - 1114112 >= 0xFFEFE000)
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          if (v25 >> 11 >= 0x1B)
          {
            v15 = v14;
          }

          else
          {
            v15 = -3;
          }

          if (v25 >= 0x800)
          {
            v16 = v15;
          }

          else
          {
            v16 = -2;
          }

          if (v25 >= 0x80)
          {
            v17 = v16;
          }

          else
          {
            v17 = -1;
          }

          return (v17 + v23);
        }

        return v5;
      }

      sub_1B5CDCF70(&v22);
      v3 = *a1;
      v9 = *(a1 + 1);
    }
  }

  return -1;
}

void *sub_1B5D5D250(void *result, unsigned __int16 *a2, unsigned int a3, int a4)
{
  v4 = result;
  v5 = *a2;
  if (v5 <= a3)
  {
    *result = 0x100000;
    *(result + 2) = 0;
    *(result + 6) = 0;
    result[1] = 0;
    *(result + 16) = 0;
  }

  else
  {
    if (a4 + a3 <= v5)
    {
      v7 = a4;
    }

    else
    {
      v7 = v5 - a3;
    }

    if (*(a2 + 1))
    {
      v8 = *(a2 + 1);
    }

    else
    {
      v8 = (a2 + 8);
    }

    *result = 0x100000;
    *(result + 2) = 0;
    *(result + 6) = 1;
    result[1] = 0;
    v9 = v7 + a3;
    v10 = strlen(v8);
    if (v7 | a3)
    {
      v11 = v9 > v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      __assert_rtn("String", "TIString.cpp", 95, "(str && pos + len <= strlen(str)) || pos + len == 0");
    }

    return sub_1B5CDCAAC(v4, v8, a3, v7);
  }

  return result;
}

void *sub_1B5D5D354(void *result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = result;
  if (!*a2 || (result = sub_1B5D5D0F4(a2, a3, 0), result == 0xFFFF))
  {
    *v3 = 0x100000;
    *(v3 + 4) = 0;
    *(v3 + 6) = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  else
  {
    v6 = *a2;
    if (!*a2 || !*a3)
    {
      goto LABEL_58;
    }

    v7 = result;
    v8 = *(a2 + 1);
    v9 = v8 ? *(a2 + 1) : a2 + 8;
    *&v24 = v9;
    DWORD2(v24) = v6;
    HIDWORD(v24) = v6;
    LODWORD(v25) = 0;
    sub_1B5CDCF70(&v24);
    while (1)
    {
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = a2 + 8;
      }

      *&v22 = v10;
      DWORD2(v22) = 0;
      HIDWORD(v22) = v6;
      LODWORD(v23) = 0;
      sub_1B5CDCF70(&v22);
      if (v24 != v22)
      {
        __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
      }

      if (DWORD2(v24) == DWORD2(v22))
      {
        goto LABEL_58;
      }

      v22 = v24;
      v23 = v25;
      sub_1B5D5CD6C(&v22);
      if (!sub_1B5D5CF90(a3, v23))
      {
        break;
      }

      sub_1B5D5CD6C(&v24);
      v8 = *(a2 + 1);
      v6 = *a2;
    }

    v22 = v24;
    v23 = v25;
    sub_1B5D5CD6C(&v22);
    v11 = WORD6(v22);
    if (SDWORD2(v22) <= SHIDWORD(v22))
    {
      if (v23 >= 0x10000)
      {
        v12 = -4;
      }

      else
      {
        v12 = -3;
      }

      if ((v23 - 1114112) >= 0xFFEFE000)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if (v23 >> 11 >= 0x1B)
      {
        v14 = v13;
      }

      else
      {
        v14 = -3;
      }

      if (v23 >= 0x800)
      {
        v15 = v14;
      }

      else
      {
        v15 = -2;
      }

      if (v23 >= 0x80)
      {
        v16 = v15;
      }

      else
      {
        v16 = -1;
      }

      v11 = v16 + WORD4(v22);
    }

    v17 = v11;
    if (v11 == 0xFFFF)
    {
LABEL_58:
      __assert_rtn("trim", "TIString.cpp", 559, "e != NotAnIndex");
    }

    v18 = *a2;
    if (v18 <= v11)
    {
      __assert_rtn("trim", "TIString.cpp", 560, "e < size()");
    }

    v19 = *(a2 + 1);
    if (!v19)
    {
      v19 = a2 + 8;
    }

    *&v22 = v19;
    *(&v22 + 1) = __PAIR64__(v18, v17);
    LODWORD(v23) = 0;
    sub_1B5CDCF70(&v22);
    v24 = v22;
    v25 = v23;
    sub_1B5CDCF70(&v24);
    v20 = WORD6(v24);
    if (SDWORD2(v24) <= SHIDWORD(v24))
    {
      if (v25 >= 0x80)
      {
        if (v25 >= 0x800)
        {
          if (v25 >> 11 >= 0x1B)
          {
            if ((v25 - 1114112) >= 0xFFEFE000)
            {
              if (v25 >= 0x10000)
              {
                v21 = -4;
              }

              else
              {
                v21 = -3;
              }
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = -3;
          }
        }

        else
        {
          v21 = -2;
        }
      }

      else
      {
        v21 = -1;
      }

      v20 = v21 + WORD4(v24);
    }

    if (v7 || v18 != v20)
    {
      return sub_1B5D5D250(v3, a2, v7, (v20 - v7));
    }

    else
    {
      return sub_1B5D5CABC(v3, a2);
    }
  }

  return result;
}

unsigned __int16 *sub_1B5D5D658(uint64_t a1, unsigned __int16 *a2, size_t a3, int a4, _WORD *a5)
{
  v5 = *a2;
  if (a4 + a3 > v5)
  {
    __assert_rtn("replace", "TIString.cpp", 596, "pos + size_replaced <= size()");
  }

  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1B5CDCB48(a1, v5 - a4 + *a5);
  if (*(a2 + 1))
  {
    v11 = *(a2 + 1);
  }

  else
  {
    v11 = (a2 + 8);
  }

  sub_1B5D5D760(a1, v11, a3);
  sub_1B5D5D820(a1, a5);
  v12 = *(a2 + 1);
  if (!v12)
  {
    v12 = a2 + 8;
  }

  return sub_1B5D5D760(a1, v12 + a3 + a4, 0xFFFFuLL);
}

void sub_1B5D5D73C(_Unwind_Exception *exception_object)
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

unsigned __int16 *sub_1B5D5D760(unsigned __int16 *result, char *__s1, size_t __n)
{
  if (__s1)
  {
    v4 = result;
    result = strnlen(__s1, __n);
    v5 = result;
    if (result)
    {
      v6 = result;
      if (!*(v4 + 6))
      {
        sub_1B5D5C954(v4);
      }

      sub_1B5CDCB48(v4, *v4 + v6);
      v7 = *(v4 + 1);
      if (!v7)
      {
        v7 = v4 + 8;
      }

      result = memcpy(v7 + *v4, __s1, v5);
      v8 = *v4 + v6;
      *v4 = v8;
      v9 = *(v4 + 1);
      if (!v9)
      {
        v9 = v4 + 8;
      }

      *(v9 + v8) = 0;
      v4[2] = 0;
    }
  }

  return result;
}

unsigned __int16 *sub_1B5D5D820(unsigned __int16 *result, uint64_t a2)
{
  if (*a2)
  {
    v3 = result;
    if (!*(result + 6))
    {
      sub_1B5D5C954(result);
    }

    if (*(a2 + 8))
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = (a2 + 16);
    }

    return sub_1B5D5D760(v3, v4, 0xFFFFuLL);
  }

  return result;
}

void sub_1B5D5D888(unsigned __int16 *a1, UChar *src, uint64_t srcLength)
{
  v18 = *MEMORY[0x1E69E9840];
  if (src)
  {
    v3 = srcLength;
    if (srcLength)
    {
      *pErrorCode = 0;
      u_strToUTF8(0, 0, &pErrorCode[1], src, srcLength, pErrorCode);
      if (pErrorCode[0] < U_ILLEGAL_ARGUMENT_ERROR || pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
      {
        pErrorCode[0] = U_ZERO_ERROR;
        if (!*(a1 + 6))
        {
          sub_1B5D5C954(a1);
        }

        sub_1B5CDCB48(a1, *a1 + LOWORD(pErrorCode[1]));
        v7 = *(a1 + 1);
        if (!v7)
        {
          v7 = a1 + 8;
        }

        u_strToUTF8(v7 + *a1, pErrorCode[1] + 1, 0, src, v3, pErrorCode);
        if (pErrorCode[0] < U_ILLEGAL_ARGUMENT_ERROR)
        {
          *a1 += LOWORD(pErrorCode[1]);
          a1[2] = 0;
          goto LABEL_23;
        }

        if (qword_1EB90CB20 != -1)
        {
          dispatch_once(&qword_1EB90CB20, &unk_1F2D59740);
        }

        v8 = qword_1EB90CB18;
        if (os_log_type_enabled(qword_1EB90CB18, OS_LOG_TYPE_ERROR))
        {
          v9 = u_errorName(pErrorCode[0]);
          *buf = 136315394;
          v15 = "append";
          v16 = 2080;
          v17 = v9;
          v10 = "%s: u_strToUTF8() failed with '%s'";
LABEL_21:
          _os_log_error_impl(&dword_1B5CDB000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
        }
      }

      else
      {
        if (qword_1EB90CB20 != -1)
        {
          dispatch_once(&qword_1EB90CB20, &unk_1F2D59740);
        }

        v8 = qword_1EB90CB18;
        if (os_log_type_enabled(qword_1EB90CB18, OS_LOG_TYPE_ERROR))
        {
          v11 = u_errorName(pErrorCode[0]);
          *buf = 136315394;
          v15 = "append";
          v16 = 2080;
          v17 = v11;
          v10 = "%s: u_strToUTF8() (length preflight) failed with '%s'";
          goto LABEL_21;
        }
      }
    }
  }

LABEL_23:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B5D5DAE4(const void *a1, const char *a2, va_list a3)
{
  v5 = funopen(a1, 0, sub_1B5D5DBB4, 0, 0);
  if (!v5)
  {
    __assert_rtn("append_format", "TIString.cpp", 749, "string_pseudofile");
  }

  v6 = v5;
  if (vfprintf(v5, a2, a3) < 0)
  {
    __assert_rtn("append_format", "TIString.cpp", 751, "status >= 0");
  }

  result = fclose(v6);
  if (result)
  {
    __assert_rtn("append_format", "TIString.cpp", 753, "status == 0");
  }

  return result;
}

uint64_t sub_1B5D5DBE0@<X0>(_WORD *a1@<X8>, char a2)
{
  *a1 = 0x100000;
  a1[2] = 0;
  *(a1 + 6) = 0;
  *(a1 + 1) = 0;
  *(a1 + 16) = 0;
  return sub_1B5D5DAE4(a1, "%s%d", &a2);
}

void sub_1B5D5DC3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = *(v1 + 6) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D5DC90(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = *(v1 + 6) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D5DCE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = *(v1 + 6) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D5DD3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = *(v1 + 6) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1B5D5DD60(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (!(*(a1 + 6) | *(a2 + 6)) && *(a1 + 1) == *(a2 + 1))
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  if (!*a1)
  {
    return 1;
  }

  if (*(a1 + 1))
  {
    v2 = *(a1 + 1);
  }

  else
  {
    v2 = (a1 + 8);
  }

  if (*(a2 + 1))
  {
    v3 = *(a2 + 1);
  }

  else
  {
    v3 = (a2 + 8);
  }

  return strcmp(v2, v3) == 0;
}

BOOL sub_1B5D5DDEC(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2 > v3)
  {
    return 0;
  }

  v5 = v3 - v2;
  v6 = *(a1 + 1);
  if (!v6)
  {
    v6 = a1 + 8;
  }

  if (*(a2 + 1))
  {
    v7 = *(a2 + 1);
  }

  else
  {
    v7 = (a2 + 8);
  }

  return strncmp(v6 + v5, v7, v2) == 0;
}

void *sub_1B5D5DE50(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED833830)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1B5D5DF90;
    v6[4] = &unk_1E7C21198;
    v6[5] = v6;
    v7 = xmmword_1E7C21180;
    v8 = 0;
    qword_1ED833830 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED833830;
    if (qword_1ED833830)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED833830;
LABEL_5:
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED833828 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5D5DF90(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED833830 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D5E004(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"wordReading");

    sub_1B5CDC4B4(a1, Value);
  }

  else
  {
    *a1 = 0x100000;
    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1B5D5E078(unsigned int a1, CFStringRef theString, CFErrorRef *a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = atomic_load(byte_1EB90C7D0);
  if (v6)
  {
    v7 = atomic_load(byte_1EB90CC20);
    if (v7)
    {
      sub_1B5CDC4B4(&v16, theString);
      v8 = v17;
      if (!v17)
      {
        v8 = v18;
      }

      printf("%s", v8);
      if (v17 && BYTE6(v16) == 1)
      {
        free(v17);
      }

      putchar(10);
    }

    else
    {
      v9 = sub_1B5D32914();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1B5CDC4B4(&v16, theString);
        v10 = v17;
        if (!v17)
        {
          v10 = v18;
        }

        *buf = 136315138;
        v15 = v10;
        _os_log_impl(&dword_1B5CDB000, v9, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
        if (v17 && BYTE6(v16) == 1)
        {
          free(v17);
        }
      }
    }
  }

  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    v16 = Mutable;
    CFDictionarySetValue(Mutable, @"errorMessageKey", theString);
    v12 = a1;
    switch(a1)
    {
      case 0u:
        break;
      case 1u:
      case 2u:
      case 0x10u:
        v12 = 2;
        break;
      case 3u:
      case 5u:
      case 6u:
      case 8u:
      case 0xEu:
      case 0x17u:
      case 0x1Au:
        v12 = 3;
        break;
      case 4u:
      case 9u:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xFu:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x18u:
      case 0x19u:
      case 0x1Bu:
      case 0x1Cu:
        goto LABEL_17;
      case 7u:
      case 0xAu:
        v12 = 5;
        break;
      default:
        if (a1 - 100 < 2)
        {
LABEL_17:
          v12 = 4;
        }

        else
        {
          v12 = 6;
        }

        break;
    }

    *a3 = CFErrorCreate(0, @"com.apple.LXVulgarWordUsageDatabase", v12, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B5D5E294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D5E2C4(sqlite3 **a1, int a2, const char *a3, const char *a4, const char *a5, uint64_t a6, char a7, CFDictionaryRef theDict, CFErrorRef *a9)
{
  v69[2] = *MEMORY[0x1E69E9840];
  sub_1B5D5E004(v67, theDict);
  v15 = sqlite3_exec(*a1, "BEGIN TRANSACTION", 0, 0, 0);
  v16 = v15;
  if (v15)
  {
    v17 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error beginning a transaction: %d", v15);
    __p[0] = v17;
    sub_1B5D5E078(v16, v17, a9);
    if (v17)
    {
      CFRelease(v17);
    }

LABEL_4:
    v18 = 0;
    goto LABEL_46;
  }

  ppStmt = 0;
  if (!sqlite3_prepare_v2(*a1, "INSERT OR IGNORE INTO vword_usage (app, recipient, vword, word_reading, usage_count) VALUES (:app, :recipient, :vword, :word_reading, 0)", -1, &ppStmt, 0))
  {
    v19 = ppStmt;
    v20 = sqlite3_bind_parameter_index(ppStmt, ":app");
    sqlite3_bind_text(v19, v20, a4, -1, 0);
    v21 = ppStmt;
    v22 = sqlite3_bind_parameter_index(ppStmt, ":recipient");
    sqlite3_bind_text(v21, v22, a5, -1, 0);
    v23 = ppStmt;
    v24 = sqlite3_bind_parameter_index(ppStmt, ":vword");
    sqlite3_bind_text(v23, v24, a3, -1, 0);
    v25 = ppStmt;
    v26 = sqlite3_bind_parameter_index(ppStmt, ":word_reading");
    v27 = (v68 ? v68 : v69);
    sqlite3_bind_text(v25, v26, v27, -1, 0);
    v28 = sqlite3_step(ppStmt);
    sqlite3_finalize(ppStmt);
    if (v28 != 101)
    {
      v58 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error evaluating an INSERT OR IGNORE statement: %d", v28);
      __p[0] = v58;
      sub_1B5D5E078(v28, v58, a9);
      if (v58)
      {
        CFRelease(v58);
      }

      goto LABEL_4;
    }
  }

  std::operator+<char>();
  v29 = std::string::append(&v63, " WHERE app = :app AND recipient = :recipient AND vword = :vword AND word_reading = :word_reading", 0x60uLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v65 = v29->__r_.__value_.__r.__words[2];
  *__p = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v65 >= 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  if (!sqlite3_prepare_v2(*a1, v31, -1, &ppStmt, 0))
  {
    v32 = ppStmt;
    v33 = sqlite3_bind_parameter_index(ppStmt, ":app");
    sqlite3_bind_text(v32, v33, a4, -1, 0);
    v34 = ppStmt;
    v35 = sqlite3_bind_parameter_index(ppStmt, ":recipient");
    sqlite3_bind_text(v34, v35, a5, -1, 0);
    v36 = ppStmt;
    v37 = sqlite3_bind_parameter_index(ppStmt, ":vword");
    sqlite3_bind_text(v36, v37, a3, -1, 0);
    v38 = ppStmt;
    v39 = sqlite3_bind_parameter_index(ppStmt, ":word_reading");
    v40 = (v68 ? v68 : v69);
    sqlite3_bind_text(v38, v39, v40, -1, 0);
    v41 = sqlite3_step(ppStmt);
    sqlite3_finalize(ppStmt);
    if (v41 != 101)
    {
      v59 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error evaluating an UPDATE usage_count statement: %d", v41);
      v63.__r_.__value_.__r.__words[0] = v59;
      sub_1B5D5E078(v41, v59, a9);
      if (v59)
      {
        CFRelease(v59);
      }

      goto LABEL_43;
    }
  }

  if (a7)
  {
    sub_1B5CE410C(&v63, "UPDATE vword_usage SET last_use_timestamp = :last_use_timestamp WHERE app = :app AND recipient = :recipient AND vword = :vword AND word_reading = :word_reading");
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v63;
    }

    else
    {
      v42 = v63.__r_.__value_.__r.__words[0];
    }

    if (!sqlite3_prepare_v2(*a1, v42, -1, &ppStmt, 0))
    {
      v43 = ppStmt;
      v44 = sqlite3_bind_parameter_index(ppStmt, ":last_use_timestamp");
      sqlite3_bind_double(v43, v44, *&a6);
      v45 = ppStmt;
      v46 = sqlite3_bind_parameter_index(ppStmt, ":app");
      sqlite3_bind_text(v45, v46, a4, -1, 0);
      v47 = ppStmt;
      v48 = sqlite3_bind_parameter_index(ppStmt, ":recipient");
      sqlite3_bind_text(v47, v48, a5, -1, 0);
      v49 = ppStmt;
      v50 = sqlite3_bind_parameter_index(ppStmt, ":vword");
      sqlite3_bind_text(v49, v50, a3, -1, 0);
      v51 = ppStmt;
      v52 = sqlite3_bind_parameter_index(ppStmt, ":word_reading");
      v53 = (v68 ? v68 : v69);
      sqlite3_bind_text(v51, v52, v53, -1, 0);
      v54 = sqlite3_step(ppStmt);
      sqlite3_finalize(ppStmt);
      if (v54 != 101)
      {
        v60 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error evaluating an UPDATE last_use_timestamp statement: %d", v54);
        sub_1B5D5E078(v54, v60, a9);
        if (v60)
        {
          CFRelease(v60);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        goto LABEL_43;
      }
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }
  }

  v55 = sqlite3_exec(*a1, "COMMIT", 0, 0, 0);
  v56 = v55;
  if (!v55)
  {
    v18 = 1;
    goto LABEL_44;
  }

  v57 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error committing a transaction: %d", v55);
  v63.__r_.__value_.__r.__words[0] = v57;
  sub_1B5D5E078(v56, v57, a9);
  if (v57)
  {
    CFRelease(v57);
  }

LABEL_43:
  v18 = 0;
LABEL_44:
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_46:
  if (v68 && v67[6] == 1)
  {
    free(v68);
  }

  v61 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1B5D5E8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1B5D5EA2C(sqlite3 *a1, const char *a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  sub_1B5D5E004(v19, theDict);
  ppStmt = 0;
  v7 = sqlite3_prepare_v2(a1, "SELECT COUNT(*) FROM vword_usage WHERE vword = :vword AND word_reading = :word_reading AND usage_count >= 3", -1, &ppStmt, 0);
  v8 = v7;
  if (v7)
  {
    v9 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error compiling the SELECT COUNT(*) statement: %d", v7);
    sub_1B5D5E078(v8, v9, a4);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = 0;
  }

  else
  {
    v11 = ppStmt;
    v12 = sqlite3_bind_parameter_index(ppStmt, ":vword");
    sqlite3_bind_text(v11, v12, a2, -1, 0);
    v13 = ppStmt;
    v14 = sqlite3_bind_parameter_index(ppStmt, ":word_reading");
    if (v20)
    {
      v15 = v20;
    }

    else
    {
      v15 = v21;
    }

    sqlite3_bind_text(v13, v14, v15, -1, 0);
    v10 = sqlite3_step(ppStmt) == 100 && sqlite3_column_int(ppStmt, 0) > 0;
    sqlite3_finalize(ppStmt);
  }

  if (v20 && v19[6] == 1)
  {
    free(v20);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1B5D5EBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, void *a15)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1B5D5EC18(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t sub_1B5D5ECC8(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = v4 <= 0xE ? a2 + 1 : *(a2 + 1);
  v6 = a1 + 8;
  do
  {
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    if (v7 <= 0xE)
    {
      v9 = (v3 + 34);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v4 >= v7)
    {
      v10 = *(v3 + 32);
    }

    else
    {
      v10 = v4;
    }

    v11 = memcmp(v9, v5, v10);
    v12 = v7 < v4;
    if (v11)
    {
      v12 = v11 < 0;
    }

    v13 = !v12;
    if (v12)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v6 = v3;
    }

    v3 = *(v3 + v14);
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v15 = *(v6 + 32);
  v16 = *(v6 + 40);
  v17 = v15 <= 0xE ? (v6 + 34) : *(v6 + 40);
  v18 = v15 >= v4 ? v4 : *(v6 + 32);
  v19 = memcmp(v5, v17, v18);
  v20 = v4 < v15;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v20)
  {
    return v2;
  }

  return v6;
}

void *sub_1B5D5EDC0(uint64_t a1, unsigned __int16 *a2)
{
  result = sub_1B5D4171C(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1B5D5EECC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = atomic_load(byte_1EB90C7D0);
  if (v6)
  {
    v7 = atomic_load(byte_1EB90CC20);
    if (v7)
    {
      printf("\tAdding retro-active sort-key change hints!");
      putchar(10);
    }

    else
    {
      v8 = sub_1B5D32914();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5CDB000, v8, OS_LOG_TYPE_DEFAULT, "\tAdding retro-active sort-key change hints!", buf, 2u);
      }
    }
  }

  v9 = *a1;
  if (a1[1] != *a1)
  {
    v10 = 0;
    do
    {
      v19 = 0;
      v31 = 0x100000;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v26 = 0x100000;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      sub_1B5D5CABC(buf, *(v9 + 8 * v10));
      v11 = 0;
      for (i = 0; ; v11 = HIWORD(i))
      {
        v12 = v22;
        if (!v22)
        {
          sub_1B5CDF8F4(buf);
          v12 = v22;
        }

        if (v11 >= v12)
        {
          break;
        }

        v13 = sub_1B5D8EBAC(buf);
        sub_1B5D5CC40(&v26, v13);
        (*(*a2 + 8))(&v17, a2, &v26);
        if (v19 && !sub_1B5D5234C(&v17, &v19))
        {
          v14 = *(a3 + 24);
          if (!v14)
          {
            sub_1B5CEC274();
          }

          (*(*v14 + 48))(v14, &v19, &v31);
        }

        sub_1B5CDF770(&v31, &v26);
        sub_1B5D522BC(&v19, &v17);
        if (v17 >= 0xFu)
        {
          if (v18)
          {
            MEMORY[0x1B8C880C0](v18, 0x1000C8077774924);
          }
        }
      }

      if (v24)
      {
        v15 = v23 == 1;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        free(v24);
      }

      if (v29 && v28 == 1)
      {
        free(v29);
      }

      if (v34 && v33 == 1)
      {
        free(v34);
      }

      if (v19 >= 0xFu && v20)
      {
        MEMORY[0x1B8C880C0](v20, 0x1000C8077774924);
      }

      ++v10;
      v9 = *a1;
    }

    while (v10 < (a1[1] - *a1) >> 3);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B5D5F180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9, uint64_t a10, unsigned __int16 a11, uint64_t a12, int a13, __int16 a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, void *a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29)
{
  if (a23 && a22 == 1)
  {
    free(a23);
  }

  if (a29 && a28 == 1)
  {
    free(a29);
  }

  if (a11 >= 0xFu)
  {
    if (a12)
    {
      MEMORY[0x1B8C880C0](a12, v29);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D5F224(uint64_t a1)
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

void sub_1B5D5F2A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1B5D04FA0();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void *sub_1B5D5F3A4(uint64_t a1, unsigned __int16 *a2)
{
  result = sub_1B5D4171C(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *sub_1B5D5F4E4(void *a1)
{
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

void sub_1B5D5F5C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CFFFB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D5F5D8(uint64_t a1)
{
  *a1 = &unk_1F2D58F40;
  sub_1B5D01F0C(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1B5D5F634(void *a1)
{
  if (a1)
  {
    sub_1B5D5F634(*a1);
    sub_1B5D5F634(a1[1]);
    v2 = a1[10];
    if (v2)
    {
      a1[11] = v2;
      operator delete(v2);
    }

    v3 = a1[7];
    if (v3)
    {
      a1[8] = v3;
      operator delete(v3);
    }

    if (*(a1 + 16) >= 0xFu)
    {
      v4 = a1[5];
      if (v4)
      {
        MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
      }
    }

    operator delete(a1);
  }
}

uint64_t sub_1B5D5F6C8(uint64_t a1, void *a2)
{
  v2 = *sub_1B5D5FAD8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1B5D5F768(uint64_t a1, unsigned __int16 *a2)
{
  result = sub_1B5D4171C(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *sub_1B5D5F874(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = a1[1];
      v7 = v3;
      if (*a1 == v3)
      {
        goto LABEL_9;
      }

      v8 = a1[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if ((sub_1B5D03480(v7 + 4, v5 + 4) & 0x80) != 0)
      {
LABEL_9:
        if (!v6)
        {
          v15 = v3;
LABEL_14:
          operator new();
        }

        v15 = v7;
        v11 = v7 + 1;
      }

      else
      {
        v11 = sub_1B5D5FAD8(a1, &v15, v5 + 4);
      }

      if (!*v11)
      {
        goto LABEL_14;
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  return a1;
}

void sub_1B5D5F9FC(_Unwind_Exception *a1)
{
  sub_1B5D5FA7C(0, v1);
  sub_1B5D0C050(*v2);
  _Unwind_Resume(a1);
}

void *sub_1B5D5FA24(void *a1)
{
  *a1 = &unk_1F2D5D730;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_1B5CE61CC(a1 + 2);
  return a1;
}

void sub_1B5D5FA7C(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1B5D5FAD8(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_1B5D03480(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_1B5D03480(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_1B5D5FB60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v8[0] = &unk_1F2D5DA88;
    v8[1] = a3;
    v8[3] = v8;
    sub_1B5CE6910(a1 + 2, a2, v8);
    result = sub_1B5D5FC3C(v8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D5FC28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FC3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D5FC3C(uint64_t a1)
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

uint64_t sub_1B5D5FCC8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5DAF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D5FD1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5DA88;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D5FDB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v10[0] = &unk_1F2D5DA08;
    v10[1] = a1;
    v10[2] = a3;
    v10[3] = v10;
    sub_1B5CE688C(a1 + 2, a2, v10, a4);
    result = sub_1B5D5FE94(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D5FE80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D5FE94(uint64_t a1)
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

uint64_t sub_1B5D5FF20(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5DA68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D5FF60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1B5D5FFC4(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_1B5D136E8(v9, v8, v6, v7, a4);
}

unint64_t sub_1B5D5FFC4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 <= a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1B5D07108(exception, "Marisa Payload");
      __cxa_throw(exception, off_1E7C20490, MEMORY[0x1E69E5280]);
    }

    return *(*(a1 + 24) + 4 * a2);
  }

  return a2;
}

__n128 sub_1B5D60050(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5DA08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D600EC(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (!(*(*a1 + 112))(a1))
  {
    return 0;
  }

  v8 = 0;
  v6 = sub_1B5CE6574(a1 + 2, a2, &v8);
  if (v6)
  {
    *a3 = sub_1B5D5FFC4(a1, v8);
  }

  return v6;
}

double sub_1B5D601B0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1B5D601BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F2D5D988;
  v7[1] = a1;
  v7[2] = a4;
  v7[3] = v7;
  sub_1B5CE6784((a1 + 16), a2, a3, v7, a5);
  result = sub_1B5D5FE94(v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D60244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D60264(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D9E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D602A4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1B5D5FFC4(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_1B5D136E8(v9, v8, v6, v7, a4);
}

__n128 sub_1B5D60310(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5D988;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D603AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5D908;
  v6[1] = a1;
  v6[2] = a4;
  v6[3] = v6;
  sub_1B5CE6700((a1 + 16), a2, a3, v6);
  result = sub_1B5D5FE94(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D60434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D60454(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D968))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D60494(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1B5D5FFC4(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_1B5D136E8(v9, v8, v6, v7, a4);
}

__n128 sub_1B5D60500(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5D908;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D6059C(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v8 = 0;
  v6 = sub_1B5CE65F8((a1 + 16), a2, a3, &v8);
  if (v6)
  {
    *a4 = sub_1B5D5FFC4(a1, v8);
  }

  return v6;
}

uint64_t sub_1B5D605FC(uint64_t *a1, void *a2, unint64_t a3)
{
  if (a3 >= 0xF)
  {
    if (*a2 == 0x2065766F6C206557 && *(a2 + 7) == 0x2E61736972614D20)
    {
      sub_1B5CE62F8(a1 + 2, a2, a3);
      return 1;
    }
  }

  else if (a3 < 4)
  {
    return 0;
  }

  v7 = a2 + 4;
  v8 = *a2;
  sub_1B5CE62F8(a1 + 2, a2 + 4, v8);
  a1[3] = &v7[v8];
  a1[4] = (a3 - v8 - 4) >> 2;
  return 1;
}

uint64_t sub_1B5D606B8(uint64_t a1, uint64_t **a2, int **a3)
{
  __p = 0;
  v29 = 0;
  v30 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * (v6 - v5) != a3[1] - *a3)
  {
    __assert_rtn("build", "MarisaTrie.h", 61, "keys.size() == values.size()");
  }

  v9 = sub_1B5D608D4(a1, v5, v6, &__p);
  if (v9)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = (v12 - v11) >> 2;
    if (v10 <= v13)
    {
      if (v10 >= v13)
      {
LABEL_16:
        v19 = a2[1] - *a2;
        if (v19)
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
          v21 = *a3;
          v22 = __p;
          if (v20 <= 1)
          {
            v20 = 1;
          }

          do
          {
            v24 = *v21++;
            v23 = v24;
            v25 = *v22++;
            *(v11 + 4 * v25) = v23;
            --v20;
          }

          while (v20);
        }

        v26 = (*(a1 + 48) - v11) >> 2;
        *(a1 + 24) = v11;
        *(a1 + 32) = v26;
        goto LABEL_21;
      }

      v18 = v11 - 0x5555555555555554 * (a2[1] - *a2);
    }

    else
    {
      v14 = v10 - v13;
      v15 = *(a1 + 56);
      if (v14 > (v15 - v12) >> 2)
      {
        if (!(v10 >> 62))
        {
          v16 = v15 - v11;
          if (v16 >> 1 > v10)
          {
            v10 = v16 >> 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v10;
          }

          sub_1B5D0DF30(v17);
        }

        sub_1B5D04FA0();
      }

      bzero(*(a1 + 48), 4 * v14);
      v18 = v12 + 4 * v14;
    }

    *(a1 + 48) = v18;
    goto LABEL_16;
  }

LABEL_21:
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_1B5D608B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D608D4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  if (a2 != a3)
  {
    if ((*(a2 + 23) & 0x8000000000000000) != 0)
    {
      v5 = *a2;
      v4 = a2[1];
    }

    sub_1B5D60A70(1uLL);
  }

  sub_1B5CE61D0((a1 + 16), &__p, a4, *(a1 + 8));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_1B5D60A70(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5D60AC8@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  sub_1B5CF7CDC(v14);
  sub_1B5CE64A4(a1 + 2, &v15);
  sub_1B5D3F684(__p, v14);
  v4 = a1[4];
  if (v4)
  {
    v5 = SHIBYTE(v13);
    if (v13 >= 0)
    {
      v6 = HIBYTE(v13);
    }

    else
    {
      v6 = __p[1];
    }

    *__s = v6;
    v7 = a1[3];
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    std::string::append(a2, __s, 4uLL);
    if (v5 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    std::string::append(a2, v8, v6);
    std::string::append(a2, v7, 4 * v4);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *__p;
    a2->__r_.__value_.__r.__words[2] = v13;
  }

  v14[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v9;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C88080](&v19);
}

uint64_t sub_1B5D60D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5D888;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D60DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D60DEC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D8E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D60E50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5D888;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D60EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5D808;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D60F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D60FA8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D868))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6100C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5D808;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D610A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D610FC(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D61254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D61294(uint64_t a1, void **a2, size_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1B5D04FA0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_1B5CE5E20(a1, v7);
  }

  v13 = 0;
  v14 = 24 * v3;
  v15 = 24 * v3;
  v16 = 0;
  sub_1B5D5EC18((24 * v3), *a2, *a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (24 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 24 * v3 + 24;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_1B5CE5E78(&v13);
  return 24 * v3 + 24;
}

void sub_1B5D613A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE5E78(va);
  _Unwind_Resume(a1);
}

void sub_1B5D613BC(void *a1)
{
  sub_1B5D5FA24(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D61400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5DC18;
  v9[1] = a3;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D5FDB0((a1 + 8), a2, v10, a4);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D614B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D614DC(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

uint64_t sub_1B5D615AC(uint64_t a1)
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

uint64_t sub_1B5D61638(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5CBF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D61690(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

void sub_1B5D616EC(void *a1)
{
  sub_1B5D615AC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1B5D6175C(uint64_t a1, uint64_t a2)
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

void sub_1B5D6186C(void *a1)
{
  *a1 = &unk_1F2D5CB70;
  sub_1B5D615AC((a1 + 1));

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D618D0(void *a1)
{
  *a1 = &unk_1F2D5CB70;
  sub_1B5D615AC((a1 + 1));
  return a1;
}

uint64_t sub_1B5D61920(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5DC78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D61960(uint64_t result, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2 & 0xFFFFFF;
  if (v4 != 0xFFFFFF)
  {
    return sub_1B5D61690(*(*(result + 8) + 24), v4, *a3, a3[1], a4);
  }

  return result;
}

uint64_t sub_1B5D61998(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5DC18;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D61A2C(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = 0;
  result = sub_1B5D600EC((a1 + 8), a2, &v5);
  if (result)
  {
    if ((v5 & 0xFFFFFF) == 0xFFFFFF)
    {
      return 0;
    }

    else
    {
      *a3 = v5 & 0xFFFFFF;
      return 1;
    }
  }

  return result;
}

double sub_1B5D61AB8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1B5D61AC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v11[0] = &unk_1F2D5DC18;
  v11[1] = a4;
  v11[3] = v11;
  sub_1B5D614DC(v12, v11);
  sub_1B5D601BC(a1 + 8, a2, a3, v12, a5);
  sub_1B5D11AAC(v12);
  result = sub_1B5D615AC(v11);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D61B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D61BA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5DC18;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D603AC(a1 + 8, a2, a3, v10);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D61C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D61C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 104))(v10);
  (*(*a1 + 120))(v12, a1, v10, a2, a3);
  if (v11 < 0)
  {
    operator delete(v10[1]);
  }

  v8 = (*(*a1 + 128))(a1, v12, a4);
  if (v13 < 0)
  {
    operator delete(v12[1]);
  }

  return v8;
}

void sub_1B5D61D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D61DB0(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "ProbabilisticTrie.h", 267, "keys.size() == values.size()");
  }

  v57[0] = 0;
  v57[1] = 0;
  v56 = v57;
  if (v4 == v3)
  {
LABEL_13:
    v55[0] = 0;
    v55[1] = 0;
    v54 = v55;
    if (v4 != v3)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = v3 + v13;
        v16 = *(*a3 + 4 * v14);
        v17 = *sub_1B5D624A4(&v56, (v3 + v13));
        v18 = *(v15 + 23);
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(v15 + 8);
        }

        std::string::basic_string(&v58, v15, 0, v18 - 1, &v53);
        v19 = *sub_1B5D624A4(&v56, &v58);
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        v58.__r_.__value_.__r.__words[0] = v15;
        v20 = sub_1B5D624E4(&v54, v15);
        v21 = (sqrt(v17 / v19) * 255.0);
        if (v21 >= 255)
        {
          v22 = 255;
        }

        else
        {
          v22 = v21;
        }

        if (v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = v17 / v19 <= 0.0;
        }

        v24 = v22 << 24;
        if (!v23)
        {
          v24 = 0x1000000;
        }

        *(v20 + 14) = v24 & 0xFF000000 | v16 & 0xFFFFFF;
        ++v14;
        v3 = *a2;
        v25 = a2[1];
        v13 += 24;
      }

      while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v25 - *a2) >> 3));
      if (v25 != v3)
      {
        v26 = 0;
        do
        {
          v27 = 0;
          v28 = (v3 + 24 * v26);
          while (1)
          {
            size = SHIBYTE(v28->__r_.__value_.__r.__words[2]);
            if ((size & 0x8000000000000000) != 0)
            {
              size = v28->__r_.__value_.__l.__size_;
            }

            if (v27 >= size - 1)
            {
              break;
            }

            std::string::basic_string(&v53, v28, 0, v27, &v58);
            v30 = v28;
            if (SHIBYTE(v28->__r_.__value_.__r.__words[2]) < 0)
            {
              v30 = v28->__r_.__value_.__r.__words[0];
            }

            sub_1B5D62618(&__str, &v53.__r_.__value_.__l.__data_, v30->__r_.__value_.__s.__data_[v27]);
            v31 = v55[0];
            if (!v55[0])
            {
              goto LABEL_83;
            }

            v32 = v55;
            do
            {
              v33 = v32;
              v34 = v31 + 32;
              v35 = sub_1B5D03480(v31 + 4, &__str);
              if ((v35 & 0x80u) == 0)
              {
                v32 = v31;
              }

              else
              {
                v32 = v33;
              }

              v31 = *&v31[(v35 >> 4) & 8];
            }

            while (v31);
            if (v32 == v55 || ((v35 & 0x80u) == 0 ? (v36 = v34) : (v36 = (v33 + 4)), (sub_1B5D03480(&__str, v36) & 0x80) != 0))
            {
LABEL_83:
              v37 = *sub_1B5D624A4(&v56, &v53);
              if (v37 > *sub_1B5D624A4(&v56, &__str))
              {
                v38 = *sub_1B5D624A4(&v56, &__str);
                v39 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v39 = __str.__r_.__value_.__l.__size_;
                }

                std::string::basic_string(&v58, &__str, 0, v39 - 1, v59);
                v40 = *sub_1B5D624A4(&v56, &v58);
                if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v58.__r_.__value_.__l.__data_);
                }

                v58.__r_.__value_.__r.__words[0] = &__str;
                v41 = sub_1B5D624E4(&v54, &__str);
                v42 = (sqrt(v38 / v40) * 255.0);
                if (v42 >= 255)
                {
                  v43 = 255;
                }

                else
                {
                  v43 = v42;
                }

                if (v42)
                {
                  v44 = 1;
                }

                else
                {
                  v44 = v38 / v40 <= 0.0;
                }

                v45 = (v43 << 24) | 0xFFFFFF;
                if (!v44)
                {
                  v45 = 0x1FFFFFF;
                }

                *(v41 + 14) = v45;
              }
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }

            ++v27;
          }

          ++v26;
          v3 = *a2;
        }

        while (v26 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      }
    }

    memset(&v58, 0, sizeof(v58));
    memset(&v53, 0, sizeof(v53));
    if (v54 != v55)
    {
      v46 = v58.__r_.__value_.__l.__size_;
      if (v58.__r_.__value_.__l.__size_ >= v58.__r_.__value_.__r.__words[2])
      {
        v48 = sub_1B5D6269C(&v58, &v54[1].__r_.__value_.__r.__words[1]);
      }

      else
      {
        if (v54[2].__r_.__value_.__s.__data_[7] < 0)
        {
          sub_1B5CE4AC4(v58.__r_.__value_.__l.__size_, v54[1].__r_.__value_.__l.__size_, v54[1].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v47 = *&v54[1].__r_.__value_.__r.__words[1];
          *(v58.__r_.__value_.__l.__size_ + 16) = v54[2].__r_.__value_.__l.__data_;
          *v46 = v47;
        }

        v48 = v46 + 24;
      }

      v58.__r_.__value_.__l.__size_ = v48;
      sub_1B5D0DF30(1uLL);
    }

    v49 = sub_1B5D606B8(a1 + 8, &v58, &v53);
    if (v53.__r_.__value_.__r.__words[0])
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    v53.__r_.__value_.__r.__words[0] = &v58;
    sub_1B5CE5D7C(&v53);
    sub_1B5D0C050(v55[0]);
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = 0;
      v9 = v3 + 24 * v7;
      while (1)
      {
        v10 = *(v9 + 23);
        if ((v10 & 0x8000000000000000) != 0)
        {
          v10 = *(v9 + 8);
        }

        if (v8 > v10)
        {
          break;
        }

        v11 = *sub_1B5D624A4(a1 + 72, v9);
        std::string::basic_string(&v58, v9, 0, v8, &v54);
        v54 = &v58;
        v12 = sub_1B5D5F6C8(&v56, &v58);
        *(v12 + 56) = v11 + *(v12 + 56);
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        ++v8;
      }

      if (*(*a3 + 4 * v7) == 0xFFFFFF)
      {
        break;
      }

      ++v7;
      v3 = *a2;
      v4 = a2[1];
      if (v7 >= 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3))
      {
        goto LABEL_13;
      }
    }

    v49 = 0;
  }

  sub_1B5D0C050(v57[0]);
  return v49;
}

void sub_1B5D623C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_1B5CE5D7C(&__p);
  sub_1B5D0C050(a23);
  sub_1B5D0C050(a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D624A4(uint64_t a1, void *a2)
{
  v2 = *sub_1B5D5FAD8(a1, &v4, a2);
  if (!v2)
  {
    sub_1B5D070AC("map::at:  key not found");
  }

  return v2 + 56;
}

void *sub_1B5D624E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((sub_1B5D03480(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((sub_1B5D03480(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1B5D62618(uint64_t a1, const void **a2, char a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  result = sub_1B5D4DDDC(a1, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a3;
  v9[1] = 0;
  return result;
}

uint64_t sub_1B5D6269C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1B5D04FA0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_1B5CE5E20(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1B5CE5E78(&v17);
  return v11;
}

void sub_1B5D627C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE5E78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D627DC(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a2[1] != *a2)
  {
    v4 = 1;
    do
    {
      v7 = v4;
      sub_1B5D0DE58(&__p, &v7);
      ++v4;
    }

    while (v4 <= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D628A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D628CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5DB98;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D62970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D62990(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5DBF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D629F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5DB98;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D62A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5DB18;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D62B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D62B4C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5DB78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D62BB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5DB18;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D62C44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D62CA0(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D62DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D62E38(uint64_t a1)
{
  *a1 = &unk_1F2D5D658;
  sub_1B5D0C050(*(a1 + 80));
  sub_1B5D5FA24((a1 + 8));

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D62EA8(uint64_t a1)
{
  *a1 = &unk_1F2D5D658;
  sub_1B5D0C050(*(a1 + 80));
  sub_1B5D5FA24((a1 + 8));
  return a1;
}

int64x2_t sub_1B5D62EF8(uint64_t a1)
{
  sub_1B5D6323C((a1 + 8), 256, 256);
  sub_1B5D63394((a1 + 16), 4, 0);
  sub_1B5D6346C((a1 + 24), 1, 0);
  sub_1B5D63544((a1 + 32), 256, 0);
  sub_1B5D6375C((a1 + 40), 1, 0);
  v2 = 0;
  **(a1 + 8) = 0xFFFFFFFF00000000;
  v3 = 0xFFFFFFFE00000000;
  for (i = 8; i != 2048; i += 8)
  {
    v5 = v2;
    if (i == 2040)
    {
      v6 = 0xFFFFFFFF00000000;
    }

    else
    {
      v6 = v3;
    }

    if (!v2)
    {
      v5 = 4294967041;
    }

    *(*(a1 + 8) + i) = v6 | v5;
    v3 -= 0x100000000;
    --v2;
  }

  *(a1 + 60) = 0x10000000100;
  *(*(a1 + 40) + 16) = 1;
  **(a1 + 16) = 4;
  *(a1 + 68) = 0x100000004;
  *a1 = 0;
  result = xmmword_1B5DC3A50;
  v8 = xmmword_1B5DC3A60;
  v9 = xmmword_1B5DC2640;
  v10 = xmmword_1B5DC2630;
  v11 = (a1 + 94);
  v12 = 264;
  v13 = vdupq_n_s64(0x101uLL);
  v14 = vdupq_n_s64(8uLL);
  do
  {
    v15 = vdupq_n_s64(1uLL);
    v16 = vaddq_s64(v10, v15);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v13, v10)), *result.i8), *result.i8).u8[0])
    {
      *(v11 - 7) = v16.i16[0];
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v10)), *&result), *&result).i8[1])
    {
      *(v11 - 6) = v16.i16[4];
    }

    v17 = vaddq_s64(v9, v15);
    if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v9))), *&result).i8[2])
    {
      *(v11 - 5) = v17.i16[0];
      *(v11 - 4) = v17.i16[4];
    }

    v18 = vaddq_s64(v8, v15);
    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v8)), *&result)).i32[1])
    {
      *(v11 - 3) = v18.i16[0];
    }

    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v8)), *&result)).i8[5])
    {
      *(v11 - 2) = v18.i16[4];
    }

    v19 = vaddq_s64(result, v15);
    if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&result)))).i8[6])
    {
      *(v11 - 1) = v19.i16[0];
      *v11 = v19.i16[4];
    }

    v8 = vaddq_s64(v8, v14);
    v9 = vaddq_s64(v9, v14);
    v10 = vaddq_s64(v10, v14);
    v11 += 8;
    result = vaddq_s64(result, v14);
    v12 -= 8;
  }

  while (v12);
  return result;
}

void *sub_1B5D63158(void *a1)
{
  *a1 = &unk_1F2D5D250;
  sub_1B5D631A4((a1 + 1), 0);
  return a1;
}

void sub_1B5D631A4(uint64_t a1, int a2)
{
  if (*(a1 + 76))
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      free(v4);
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  if (a2)
  {
    sub_1B5D62EF8(a1);
  }

  *(a1 + 76) = 0;
}

void sub_1B5D6323C(void **a1, int a2, int a3)
{
  v6 = 8 * a2;
  v7 = malloc_type_realloc(*a1, v6, 0x100004000313F17uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  if ((atomic_load_explicit(&qword_1EB90CCC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CCC0))
  {
    qword_1EB90CCB8 = 0;
    __cxa_guard_release(&qword_1EB90CCC0);
  }

  if (a3 != a2)
  {
    v8 = 0;
    v9 = qword_1EB90CCB8;
    v10 = (v6 - 8 * a3 - 8) >> 3;
    v11 = vdupq_n_s64(v10);
    v12 = (*a1 + 8 * a3 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v8), xmmword_1B5DC2630)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v8 += 2;
      v12 += 2;
    }

    while (((v10 + 2) & 0x3FFFFFFFFFFFFFFELL) != v8);
  }
}

void sub_1B5D63394(void **a1, int a2, int a3)
{
  v6 = a2;
  v7 = malloc_type_realloc(*a1, a2, 0x100004077774924uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  if (a3 != a2)
  {
    v8 = &v7[a3];

    bzero(v8, v6 - a3);
  }
}

void sub_1B5D6346C(void **a1, int a2, int a3)
{
  v6 = 4 * a2;
  v7 = malloc_type_realloc(*a1, v6, 0x100004052888210uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  if (a3 != a2)
  {
    v8 = &v7[4 * a3];

    bzero(v8, v6 - 4 * a3);
  }
}

void sub_1B5D63544(void **a1, int a2, int a3)
{
  v6 = 2 * a2;
  v7 = malloc_type_realloc(*a1, v6, 0x1000040BDFB0063uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  if ((atomic_load_explicit(&qword_1EB90CCD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CCD0))
  {
    word_1EB90CCC8 = 0;
    __cxa_guard_release(&qword_1EB90CCD0);
  }

  if (a3 != a2)
  {
    v8 = 0;
    v9 = word_1EB90CCC8;
    v10 = (v6 - 2 * a3 - 2) >> 1;
    v11 = vdupq_n_s64(v10);
    v12 = (v10 & 0x7FFFFFFFFFFFFFF8) + 8;
    v13 = (*a1 + 2 * a3 + 8);
    do
    {
      v14 = vdupq_n_s64(v8);
      v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1B5DC2630)));
      if (vuzp1_s8(vuzp1_s16(v15, *v11.i8), *v11.i8).u8[0])
      {
        *(v13 - 4) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(v15, *&v11), *&v11).i8[1])
      {
        *(v13 - 3) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1B5DC2640)))), *&v11).i8[2])
      {
        *(v13 - 2) = v9;
        *(v13 - 1) = v9;
      }

      v16 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1B5DC3A60)));
      if (vuzp1_s8(*&v11, vuzp1_s16(v16, *&v11)).i32[1])
      {
        *v13 = v9;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(v16, *&v11)).i8[5])
      {
        v13[1] = v9;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1B5DC3A50))))).i8[6])
      {
        v13[2] = v9;
        v13[3] = v9;
      }

      v8 += 8;
      v13 += 8;
    }

    while (v12 != v8);
  }
}

__n128 sub_1B5D6375C(void **a1, int a2, int a3)
{
  v6 = malloc_type_realloc(*a1, 20 * a2, 0x1000040A86A77D5uLL);
  if (!v6)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v6;
  if ((atomic_load_explicit(&qword_1EB90CCF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CCF0))
  {
    *&xmmword_1EB90CCD8 = 0;
    DWORD2(xmmword_1EB90CCD8) = 16843008;
    *(&xmmword_1EB90CCD8 + 12) = 0;
    __cxa_guard_release(&qword_1EB90CCF0);
  }

  if (a3 != a2)
  {
    v8 = (*a1 + 20 * a3);
    v9 = 20 * a2 - 20 * a3;
    do
    {
      result = xmmword_1EB90CCD8;
      v8[1].n128_u32[0] = dword_1EB90CCE8;
      *v8 = result;
      v8 = (v8 + 20);
      v9 -= 20;
    }

    while (v9);
  }

  return result;
}

BOOL sub_1B5D638A4(uint64_t a1, unsigned __int8 *a2, unint64_t a3, _DWORD *a4)
{
  if (a3)
  {
    v56 = 0;
    if (!*(a1 + 40) || !*(a1 + 48))
    {
      sub_1B5D63C88(a1 + 8);
    }

    v8 = **(a1 + 16);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = 0;
      v10 = a2;
      while (-a3 != v9)
      {
        v11 = sub_1B5D63EC8(a1 + 8, &v56, v10);
        v12 = v11;
        v56 = v11;
        v8 = *(*(a1 + 16) + 8 * v11);
        --v9;
        ++v10;
        if (v8 < 0)
        {
          v13 = -v9;
          goto LABEL_11;
        }
      }

      v62 = 0;
      v19 = a1 + 8;
      v20 = &v62;
      goto LABEL_34;
    }

    v12 = 0;
    v13 = 0;
LABEL_11:
    v14 = -v8;
    if (v14 >= 4)
    {
      v15 = (*(a1 + 24) + v14);
      v16 = &v15[-v13];
      v17 = v13;
      if (v13 < a3)
      {
        v17 = v13;
        while (1)
        {
          v18 = *v15++;
          if (a2[v17] != v18)
          {
            break;
          }

          if (a3 == ++v17)
          {
            goto LABEL_19;
          }
        }
      }

      if (v17 == a3)
      {
LABEL_19:
        v21 = &v16[a3];
        v17 = a3;
        if (!v16[a3])
        {
          goto LABEL_51;
        }
      }

      v55 = a4;
      if (HIDWORD(v12))
      {
        v56 = v12;
        v22 = *(*(a1 + 16) + 8 * v12);
        v23 = -v22;
        if (v14 > -v22)
        {
          do
          {
            v61 = *(*(a1 + 24) + v23);
            v56 = sub_1B5D63EC8(a1 + 8, &v56, &v61);
            ++v23;
          }

          while (v14 != v23);
        }
      }

      v24 = v17 - v13;
      if (v17 > v13)
      {
        v25 = &a2[v13];
        v26 = v24;
        do
        {
          v27 = *v25++;
          v60 = v27;
          v56 = sub_1B5D63EC8(a1 + 8, &v56, &v60);
          --v26;
        }

        while (v26);
      }

      v28 = &v16[v17];
      if (v16[v17])
      {
        v59 = v16[v17];
        *(*(a1 + 16) + 8 * sub_1B5D63EC8(a1 + 8, &v56, &v59)) = v8 + ~v24;
        v24 -= 4;
      }

      v29 = __CFADD__(v24, v14);
      v30 = v24 + v14;
      a4 = v55;
      if (!v29)
      {
        do
        {
          v31 = *(a1 + 80);
          v32 = *(a1 + 32);
          v33 = *v32 + 1;
          *v32 = v33;
          if (v31 == v33)
          {
            v34 = 2 * *(a1 + 80);
            *(a1 + 80) = v34;
            sub_1B5D6346C((a1 + 32), v34, **(a1 + 32));
          }

          *(*(a1 + 32) + 4 * **(a1 + 32)) = v14;
          v14 += 5;
        }

        while (v14 <= v30);
      }

      if (v17 == a3)
      {
        v58 = 0;
        v19 = a1 + 8;
        v20 = &v58;
LABEL_34:
        v35 = (*(a1 + 16) + 8 * sub_1B5D63EC8(v19, &v56, v20));
LABEL_52:
        *v35 = *a4;
        return a3 != 0;
      }

      if (!*v28)
      {
        v58 = 0;
        v36 = sub_1B5D63EC8(a1 + 8, &v56, &v58);
        *(*(a1 + 16) + 8 * v36) += *(v28 + 1);
      }

      v57 = a2[v17];
      v12 = sub_1B5D63EC8(a1 + 8, &v56, &v57);
      v13 = v17 + 1;
    }

    v37 = a3 - v13;
    if (a3 == v13)
    {
      v38 = *(a1 + 32);
      v39 = *v38;
      if (v39)
      {
        v40 = v38[v39];
        *(*(a1 + 24) + v40) = 0;
        *(*(a1 + 16) + 8 * v12) = -v40;
        --**(a1 + 32);
        v41 = *(a1 + 24) + v40;
        *(v41 + 1) = 0;
        v35 = (v41 + 1);
        goto LABEL_52;
      }
    }

    v42 = v37 + 5;
    v44 = (a1 + 24);
    v43 = *(a1 + 24);
    v45 = *(a1 + 76);
    v46 = *v43;
    if (v45 < *v43 + v37 + 5)
    {
      if (v45 <= v42)
      {
        v47 = v37 + 5;
      }

      else
      {
        v47 = *(a1 + 76);
      }

      *(a1 + 76) = v47 + v45;
      sub_1B5D63394((a1 + 24), v47 + v45, *v43);
      v46 = **(a1 + 24);
    }

    *(*(a1 + 16) + 8 * v12) = -v46;
    v48 = *(a1 + 24);
    v49 = *v48;
    v50 = v48 + v49;
    v51 = v48 + v49 - v13;
    if (a3 > v13)
    {
      v52 = &a2[v13];
      do
      {
        v53 = *v52++;
        *v50++ = v53;
        --v37;
      }

      while (v37);
      v48 = *v44;
      LODWORD(v49) = **v44;
    }

    *v48 = v49 + v42;
    v21 = &v51[a3];
LABEL_51:
    v35 = v21 + 1;
    goto LABEL_52;
  }

  return a3 != 0;
}

void sub_1B5D63C88(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = (a1 + 40);
  if (!v3)
  {
    sub_1B5D6375C(v2, *(a1 + 64) >> 8, 0);
    *(a1 + 56) = 0;
    *(a1 + 52) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 64) >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a1 + 40);
      v7 = 256;
      while (1)
      {
        v8 = (v6 + 20 * v4);
        *(v8 + 4) = 0;
        if (v5 >= (v4 << 8) + 256)
        {
          break;
        }

        v9 = 0;
        v10 = v5;
        v11 = (*(a1 + 8) + 8 * v5 + 4);
        do
        {
          v12 = *v11;
          v11 += 2;
          if (v12 < 0)
          {
            v15 = v9++ == 0;
            *(v8 + 4) = v9;
            if (v15)
            {
              v8[4] = v5;
              v9 = 1;
            }
          }

          ++v10;
          LODWORD(v5) = v5 + 1;
        }

        while (v7 != v10);
        if (v9)
        {
          v13 = (a1 + 56);
        }

        else
        {
          v13 = (a1 + 48);
        }

        if (v9 == 1)
        {
          v13 = (a1 + 52);
        }

        v14 = *v13;
        if (*v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = v9 == 0;
        }

        if (v15)
        {
          v5 = v10;
LABEL_23:
          v16 = (v6 + 20 * v14);
          v17 = *v16;
          *v8 = *v16;
          v8[1] = *v13;
          v18 = (v6 + 20 * v17 + 4);
          v10 = v5;
          v8 = v16;
          goto LABEL_24;
        }

        v18 = v8 + 1;
LABEL_24:
        *v18 = v4;
        *v8 = v4;
        *v13 = v4++;
        v7 += 256;
        v5 = v10;
        if (v10 >= *(a1 + 64))
        {
          goto LABEL_25;
        }
      }

      v14 = *(a1 + 48);
      v13 = (a1 + 48);
      goto LABEL_23;
    }
  }

LABEL_25:
  v19 = (a1 + 32);
  v20 = *(a1 + 64);
  if (!*(a1 + 32))
  {
    sub_1B5D63544((a1 + 32), v20, 0);
    v20 = *(a1 + 64);
    if (v20 >= 1)
    {
      for (i = 0; i < v20; ++i)
      {
        v22 = *(a1 + 8);
        v23 = *(v22 + 8 * i + 4);
        if ((v23 & 0x80000000) == 0)
        {
          v24 = *(v22 + 8 * v23);
          v25 = (v24 ^ i);
          if (v24 != i)
          {
            v26 = *v19;
            v27 = *v19 + 2 * v23;
            v30 = *(v27 + 1);
            v29 = (v27 + 1);
            v28 = v30;
            if (v23)
            {
              v31 = v28 == 0;
            }

            else
            {
              v31 = 0;
            }

            if (!v31 || (v28 = 0, *(v22 + 8 * v24 + 4) == v23))
            {
              if (v28 < v25)
              {
                do
                {
                  v32 = v24 ^ v28;
                  v28 = *(v26 + 2 * (v24 ^ v28));
                  if (*(v26 + 2 * v32))
                  {
                    v33 = v28 >= v25;
                  }

                  else
                  {
                    v33 = 1;
                  }
                }

                while (!v33);
                v29 = (v26 + 2 * v32);
              }
            }

            *(v26 + 2 * ((v24 ^ i) ^ v24)) = v28;
            *v29 = v25;
            v20 = *(a1 + 64);
          }
        }
      }
    }
  }

  *(a1 + 60) = v20;
  *(a1 + 68) = **(a1 + 16);
  *(a1 + 72) = 1;
}

uint64_t sub_1B5D63EC8(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(v6 + 8 * *a2);
  v9 = *a3;
  if (v8 < 0 || (v10 = v8 ^ v9, v11 = *(v6 + 8 * v10 + 4), (v11 & 0x80000000) != 0))
  {
    result = sub_1B5D64488(a1, *(v6 + 8 * *a2), *a3, v7);
    v22 = *a3;
    v23 = *(a1 + 32);
    v24 = v23 + 2 * *a2;
    v27 = *(v24 + 1);
    v26 = (v24 + 1);
    v25 = v27;
    if ((v8 & 0x80000000) == 0 && v25 < v22)
    {
      do
      {
        v28 = result ^ v25 ^ v22;
        v25 = *(v23 + 2 * v28);
        if (*(v23 + 2 * v28))
        {
          v29 = v25 >= v22;
        }

        else
        {
          v29 = 1;
        }
      }

      while (!v29);
      v26 = (v23 + 2 * v28);
    }

    *(v23 + 2 * result) = v25;
    *v26 = v22;
  }

  else
  {
    result = v8 ^ v9;
    if (v11 != v7)
    {
      v13 = *(v6 + 8 * v11);
      v14 = *(a1 + 32);
      v15 = *(v14 + 2 * v7 + 1);
      LOBYTE(v16) = v15;
      LOBYTE(v17) = *(v14 + 2 * v11 + 1);
      while (1)
      {
        v18 = 2 * (v13 ^ v17);
        v17 = *(v14 + v18);
        if (!*(v14 + v18))
        {
          break;
        }

        v16 = *(v14 + 2 * (v8 ^ v16));
        if (!v16)
        {
          v19 = a1;
          v20 = *(v6 + 8 * *a2);
          v21 = v9;
          goto LABEL_18;
        }
      }

      v19 = a1;
      v20 = *(v6 + 8 * v11);
      v15 = *(v14 + 2 * v11 + 1);
      v21 = -1;
LABEL_18:
      v30 = sub_1B5D645A4(v19, v91, v20, v15, v21);
      v31 = v30;
      if (v91 == v30)
      {
        v40 = sub_1B5D64624(a1);
      }

      else
      {
        v32 = *(a1 + 56);
        if (v32)
        {
          v33 = *(*(a1 + 40) + 20 * v32);
          v34 = (v30 - v91 + 1);
          v35 = a1 + 80;
          v88 = v33;
          do
          {
            v36 = *(a1 + 40);
            v37 = v36 + 20 * v32;
            v38 = *(v37 + 8);
            if (v38 >= v34 && v34 < *(v37 + 10))
            {
              v39 = *(a1 + 8);
              v40 = *(v37 + 16);
              do
              {
                v41 = v91;
                while (1)
                {
                  v42 = *++v41;
                  if ((*(v39 + 8 * (v40 ^ v91[0] ^ v42) + 4) & 0x80000000) == 0)
                  {
                    break;
                  }

                  if (v41 == v31)
                  {
                    *(v37 + 16) = v40;
                    goto LABEL_37;
                  }
                }

                v43 = *(v39 + 8 * v40 + 4);
                v40 = -v43;
              }

              while (*(v37 + 16) + v43);
            }

            *(v37 + 10) = v34;
            if (v34 < *(v35 + 2 * v38))
            {
              *(v35 + 2 * v38) = v34;
            }

            v44 = *(v37 + 4);
            v45 = *(v37 + 12);
            *(v37 + 12) = v45 + 1;
            if (!v45)
            {
              sub_1B5D64668(v36, v32, (a1 + 56), (a1 + 52));
              v35 = a1 + 80;
              v33 = v88;
            }

            v46 = v32 == v33;
            v32 = v44;
          }

          while (!v46);
        }

        v40 = sub_1B5D64710(a1) << 8;
LABEL_37:
        v10 = v8 ^ v9;
      }

      v47 = v40 ^ v91[0];
      if (v17)
      {
        v48 = v8;
      }

      else
      {
        v48 = v13;
      }

      v90 = v48;
      if (v17)
      {
        v49 = *a2;
      }

      else
      {
        v49 = v11;
      }

      if (v17 && v91[0] == v9)
      {
        *(*(a1 + 32) + 2 * *a2 + 1) = v9;
      }

      *(*(a1 + 8) + 8 * v49) = v47;
      v50 = a2;
      if (v91 <= v31)
      {
        if (v9)
        {
          v51 = -1;
        }

        else
        {
          v51 = 0;
        }

        v85 = v51;
        v86 = v48 >> 8;
        v52 = v91;
        v84 = 2 * v10;
        v89 = v49;
        while (1)
        {
          v53 = sub_1B5D64488(a1, v47, *v52, v49);
          if (v52 == v31)
          {
            v54 = 0;
          }

          else
          {
            v54 = v52[1];
          }

          v55 = v90 ^ *v52;
          *(*(a1 + 32) + 2 * v53) = v54;
          if (v17 && v55 == v10)
          {
            goto LABEL_89;
          }

          v56 = v47;
          v57 = v10;
          v58 = *(a1 + 8);
          v59 = (v58 + 8 * v53);
          v60 = v55;
          v61 = (v58 + 8 * v55);
          v62 = *v61;
          *v59 = *v61;
          if (v62 >= 1 && *v52)
          {
            v63 = *(a1 + 32);
            v64 = *(v63 + 2 * v55 + 1);
            *(v63 + 2 * v53 + 1) = v64;
            v65 = *(a1 + 8);
            v66 = *v59;
            do
            {
              *(v65 + 8 * (v66 ^ v64) + 4) = v53;
              v66 = *v59;
              v64 = *(v63 + 2 * (*v59 ^ v64));
            }

            while (v64);
          }

          v67 = *v50;
          if (!v17 && v55 == v67)
          {
            *v50 = v53;
            v67 = v53;
          }

          v68 = v17 == 0;
          if (v55 != v57)
          {
            v68 = 0;
          }

          if (!v68)
          {
            break;
          }

          v69 = *(a1 + 32);
          v70 = v69 + 2 * v67;
          v73 = *(v70 + 1);
          v72 = (v70 + 1);
          LOBYTE(v71) = v73;
          if (v73 < v9)
          {
            do
            {
              v74 = v8 ^ v71;
              v71 = *(v69 + 2 * v74);
              if (*(v69 + 2 * v74))
              {
                v75 = v71 >= v9;
              }

              else
              {
                v75 = 1;
              }
            }

            while (!v75);
            v72 = (v69 + 2 * v74);
          }

          *(v69 + v84) = v71;
          *v72 = v9;
          *(*(a1 + 32) + 2 * v60 + 1) = 0;
          *v61 = v85;
          v61[1] = *v50;
LABEL_88:
          v10 = v57;
          v47 = v56;
          v49 = v89;
LABEL_89:
          if (++v52 > v31)
          {
            goto LABEL_90;
          }
        }

        v76 = *(a1 + 40) + 20 * v86;
        v77 = *(v76 + 8);
        *(v76 + 8) = v77 + 1;
        if (!v77)
        {
          *(v76 + 16) = v55;
          *(*(a1 + 8) + 8 * v55) = -v55 | (-v55 << 32);
          if (v90 >= 0x100)
          {
            sub_1B5D64668(*(a1 + 40), v86, (a1 + 48), (a1 + 52));
          }

          goto LABEL_85;
        }

        v78 = *(v76 + 16);
        v79 = *(a1 + 8);
        v80 = *(v79 + 8 * v78 + 4);
        *(v79 + 8 * v55) = -v78 | (v80 << 32);
        v81 = -v55;
        *(*(a1 + 8) + 8 * -v80) = v81;
        *(*(a1 + 8) + 8 * v78 + 4) = v81;
        if (*(v76 + 8) == 2)
        {
          if (v90 < 0x100)
          {
            goto LABEL_84;
          }
        }

        else if (v90 < 0x100 || *(v76 + 12) != 1)
        {
          goto LABEL_84;
        }

        sub_1B5D64668(*(a1 + 40), v86, (a1 + 52), (a1 + 56));
LABEL_84:
        *(v76 + 12) = 0;
LABEL_85:
        v82 = *(a1 + 80 + 2 * *(v76 + 8));
        if (*(v76 + 10) < v82)
        {
          *(v76 + 10) = v82;
        }

        *(*(a1 + 32) + 2 * v60) = 0;
        v50 = a2;
        goto LABEL_88;
      }

LABEL_90:
      if (v17)
      {
        result = v47 ^ v9;
      }

      else
      {
        result = v10;
      }
    }
  }

  v83 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5D64488(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    v8 = sub_1B5D64624(a1);
  }

  else
  {
    v8 = a3 ^ a2;
  }

  v9 = *(a1 + 8);
  v10 = (v9 + 8 * v8);
  v11 = *(a1 + 40);
  v12 = v11 + 20 * (v8 >> 8);
  v13 = *(v12 + 8) - 1;
  *(v12 + 8) = v13;
  if (!v13)
  {
    if (v8 < 0x100)
    {
      goto LABEL_14;
    }

    v17 = 48;
    v18 = 52;
    goto LABEL_13;
  }

  v15 = *v10;
  v14 = v10[1];
  *(v9 + 8 * -v15 + 4) = v14;
  v16 = -v14;
  *(v9 + 8 * v16) = v15;
  if (v8 == *(v12 + 16))
  {
    *(v12 + 16) = v16;
  }

  if (v8 >= 0x100 && *(v12 + 8) == 1 && *(v12 + 12) != 1)
  {
    v11 = *(a1 + 40);
    v17 = 52;
    v18 = 56;
LABEL_13:
    sub_1B5D64668(v11, v8 >> 8, (a1 + v18), (a1 + v17));
  }

LABEL_14:
  if (a3)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  *v10 = v19;
  v10[1] = a4;
  if ((a2 & 0x80000000) != 0)
  {
    *(*(a1 + 8) + 8 * a4) = v8 ^ a3;
  }

  return v8;
}

_BYTE *sub_1B5D645A4(uint64_t a1, _BYTE *a2, int a3, unsigned int a4, unsigned int a5)
{
  if (a4)
  {
    --a2;
  }

  else
  {
    *a2 = 0;
    v5 = *(a1 + 32);
    v6 = 2 * a3;
    a4 = *(v5 + v6);
    if (!*(v5 + v6))
    {
      goto LABEL_11;
    }
  }

  if (a4 >= a5)
  {
LABEL_11:
    if (a5 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  do
  {
    *++a2 = a4;
    v7 = *(a1 + 32);
    v8 = 2 * (a4 ^ a3);
    a4 = *(v7 + v8);
    if (*(v7 + v8))
    {
      v9 = a4 >= a5;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);
LABEL_12:
  *++a2 = a5;
LABEL_13:
  if (a4)
  {
    do
    {
      *++a2 = a4;
      v10 = *(a1 + 32);
      v11 = 2 * (a4 ^ a3);
      a4 = *(v10 + v11);
    }

    while (*(v10 + v11));
  }

  return a2;
}

uint64_t sub_1B5D64624(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (v1)
  {
    return *(*(a1 + 40) + 20 * v1 + 16);
  }

  v1 = *(a1 + 56);
  if (v1)
  {
    return *(*(a1 + 40) + 20 * v1 + 16);
  }

  else
  {
    return sub_1B5D64710(a1) << 8;
  }
}

uint64_t sub_1B5D64668(uint64_t result, int a2, _DWORD *a3, int *a4)
{
  v4 = result + 20 * a2;
  v7 = *(v4 + 4);
  v5 = (v4 + 4);
  v6 = v7;
  if (v7 == a2)
  {
    v6 = 0;
  }

  else
  {
    v8 = *(result + 20 * a2);
    *(result + 20 * v8 + 4) = v6;
    *(result + 20 * v6) = v8;
    if (*a3 != a2)
    {
      goto LABEL_5;
    }
  }

  *a3 = v6;
LABEL_5:
  if (*a4)
  {
    v9 = (result + 20 * a2);
  }

  else
  {
    v9 = (result + 20 * a2);
    if (*(v9 + 4))
    {
      v12 = v9 + 1;
      goto LABEL_10;
    }
  }

  v10 = (result + 20 * *a4);
  v11 = *v10;
  *v9 = *v10;
  *v5 = *a4;
  v12 = (result + 20 * v11 + 4);
  v9 = v10;
LABEL_10:
  *v12 = a2;
  *v9 = a2;
  *a4 = a2;
  return result;
}

uint64_t sub_1B5D64710(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == *(a1 + 60))
  {
    *(a1 + 60) = 2 * v2;
    sub_1B5D6323C((a1 + 8), 2 * v2, 2 * v2);
    sub_1B5D63544((a1 + 32), *(a1 + 60), *(a1 + 64));
    sub_1B5D6375C((a1 + 40), *(a1 + 60) >> 8, *(a1 + 64) >> 8);
    v2 = *(a1 + 64);
  }

  *(*(a1 + 40) + 20 * (v2 >> 8) + 16) = v2;
  *(*(a1 + 8) + 8 * v2) = (-255 - v2) | (~v2 << 32);
  v3 = *(a1 + 64);
  v4 = v3 + 1;
  v5 = 0xFFFFFFFE00000000 - (v3 << 32);
  v6 = -v3;
  do
  {
    *(*(a1 + 8) + 8 * v4) = v5 + v6;
    v7 = *(a1 + 64);
    v8 = v4++ - 1;
    v5 -= 0x100000000;
    --v6;
  }

  while (v8 < v7 + 253);
  *(*(a1 + 8) + 8 * v7 + 2040) = (-254 - v7) | (-v7 << 32);
  v9 = *(a1 + 64) >> 8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = (v11 + 20 * v9);
  if (v10)
  {
    v13 = (v11 + 20 * v10);
    v14 = *v13;
    *v12 = *v13;
    v12[1] = *(a1 + 56);
    v15 = (v11 + 20 * v14 + 4);
    v12 = v13;
  }

  else
  {
    v15 = v12 + 1;
  }

  *v15 = v9;
  *v12 = v9;
  *(a1 + 56) = v9;
  v16 = *(a1 + 64) + 256;
  *(a1 + 64) = v16;
  return ((v16 >> 8) - 1);
}

uint64_t sub_1B5D64868(void *a1, uint64_t *a2, uint64_t a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = a1[5];
    if (!v7)
    {
      __assert_rtn("enumerateChildren", "cedarpp.h", 261, "_ninfo");
    }

    v8 = *a2;
    v9 = HIDWORD(*a2);
    if (v9)
    {
      v10 = -v9;
      if ((v10 & 0x80000000) != 0)
      {
LABEL_5:
        v11 = *(a1[3] + -v10);
        if (v11)
        {
          return sub_1B5D649C0(*(a3 + 24), v11);
        }

        return result;
      }
    }

    else
    {
      v10 = *(a1[2] + 8 * v8);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_5;
      }
    }

    v12 = v10;
    if (v8 && ((v13 = (a1[2] + 8 * v10), *v13 < 1) || v13[1] != v8))
    {
      v14 = (v7 + 2 * v8 + 1);
    }

    else
    {
      v14 = (v7 + 2 * v12);
    }

    v15 = *v14;
    if (v15)
    {
      do
      {
        v16 = v15 ^ v12;
        result = sub_1B5D649C0(*(a3 + 24), v15);
        LOBYTE(v15) = *(a1[5] + 2 * v16);
      }

      while (v15);
    }
  }

  return result;
}

uint64_t sub_1B5D649C0(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void sub_1B5D64A10(void *a1, unint64_t *a2, uint64_t a3, unsigned int a4)
{
  if ((*(*a1 + 112))(a1))
  {
    memset(&__p, 0, sizeof(__p));
    v34 = 0;
    v32 = 0;
    v8 = *a2;
    v35 = *a2;
    v9 = sub_1B5D64CA8(a1 + 1, &v35, &v34);
    if (v9 != -2)
    {
      v10 = a4;
      v31 = a3;
      v30 = a4;
      while (1)
      {
        v12 = v34;
        v11 = v35;
        v13 = HIDWORD(v35);
        if ((a4 & 0x80000000) != 0 || v34 <= v10)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size < v34)
          {
            std::string::resize(&__p, v34, 0);
            v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if (v15 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          p_p->__r_.__value_.__s.__data_[v12] = 0;
          v17 = v11;
          v18 = v12;
          if (v13)
          {
            v17 = v11;
            v29 = a4;
            v19 = a1[3];
            v20 = strlen((v19 - *(a1[2] + 8 * v11)));
            if (v20 >= v12)
            {
              v21 = v12;
            }

            else
            {
              v21 = v20;
            }

            if (v12 >= v20)
            {
              v18 = v12 - v20;
            }

            else
            {
              v18 = 0;
            }

            v22 = v19 - v21;
            a4 = v29;
            memcpy(p_p + v18, (v22 + (v11 >> 32)), v21);
          }

          for (; v18; --v18)
          {
            v23 = a1[2];
            v24 = *(v23 + 8 * v17 + 4);
            *(&p_p[-1].__r_.__value_.__r.__words[2] + v18 + 7) = *(v23 + 8 * v24) ^ v17;
            v17 = v24;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__p;
          }

          else
          {
            v25 = __p.__r_.__value_.__r.__words[0];
          }

          sub_1B5D136E8(*(v31 + 24), v9, v25, v12, &v32);
          v10 = v30;
        }

        if (v13)
        {
          if (!HIDWORD(v8))
          {
            v11 = v11;
            v26 = a1[2];
            v12 -= *(v26 + 8 * v11) + v13;
            break;
          }

          goto LABEL_3;
        }

        v26 = a1[2];
        v27 = *(v26 + 8 * v11);
        v28 = *(a1[5] + 2 * v27);
        if (!*(a1[5] + 2 * v27))
        {
          break;
        }

LABEL_38:
        v35 = v27 ^ v28;
        v34 = v12 + 1;
        v9 = sub_1B5D64CA8(a1 + 1, &v35, &v34);
        if (v9 == -2)
        {
          goto LABEL_3;
        }
      }

      while (v11 != v8)
      {
        v28 = *(a1[5] + 2 * v11);
        v11 = *(v26 + 8 * v11 + 4);
        --v12;
        if (v28)
        {
          v27 = *(v26 + 8 * v11);
          goto LABEL_38;
        }
      }
    }

LABEL_3:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B5D64C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D64CA8(void *a1, unint64_t *a2, void *a3)
{
  v3 = a1[4];
  if (!v3)
  {
    __assert_rtn("begin", "cedarpp.h", 690, "_ninfo");
  }

  v7 = *a2;
  v8 = HIDWORD(*a2);
  if (v8)
  {
    v9 = -v8;
    if (-v8 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = *(a1[1] + 8 * v7);
    if (v9 < 0)
    {
      goto LABEL_16;
    }
  }

  v10 = *(v3 + 2 * v7 + 1);
  if (v7)
  {
    if (!*(v3 + 2 * v7 + 1))
    {
      v11 = a1[1];
LABEL_14:
      v13 = (v11 + 8 * (v9 ^ v10));
      return *v13;
    }

    goto LABEL_10;
  }

  v10 = *(v3 + 2 * (v9 ^ v10));
  if (v10)
  {
LABEL_10:
    v11 = a1[1];
    do
    {
      v12 = v9 ^ v10;
      *a2 = v12;
      v9 = *(v11 + 8 * v12);
      v10 = *(v3 + 2 * v12 + 1);
      ++*a3;
    }

    while (v10 && (v9 & 0x80000000) == 0);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    LODWORD(v7) = *a2;
LABEL_16:
    v14 = -v9;
    v15 = strlen((a1[2] + v14));
    *a2 = v7 | ((v15 - v9) << 32);
    *a3 += v15;
    v13 = (a1[2] + v14 + v15 + 1);
    return *v13;
  }

  return 4294967294;
}

uint64_t sub_1B5D64DE0(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = *a2;
    v9 = 0;
    v10 = v7;
    v8 = sub_1B5D64E70(a1 + 8, "", &v10, &v9, 0);
    *a3 = v8;
    return v8 != -1;
  }

  return result;
}

uint64_t sub_1B5D64E70(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t a5)
{
  v5 = *a3;
  v6 = HIDWORD(*a3);
  if (!v6)
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 8 * v5);
    if ((v8 & 0x80000000) == 0)
    {
      while (1)
      {
        v9 = *a4;
        if (*a4 == a5)
        {
          break;
        }

        v10 = v8 ^ *(a2 + v9);
        if (*(v7 + 8 * v10 + 4) != v5)
        {
          return 4294967294;
        }

        *a4 = v9 + 1;
        *a3 = v10;
        v8 = *(v7 + 8 * v10);
        LODWORD(v5) = v10;
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_6;
        }
      }

      v19 = (v7 + 8 * v8);
      if (v19[1] == v5)
      {
        return *v19;
      }

      return 0xFFFFFFFFLL;
    }

LABEL_6:
    v6 = -v8;
  }

  v11 = *a4;
  v12 = *(a1 + 16) + v6;
  if (*a4 >= a5)
  {
    v16 = *a4;
  }

  else
  {
    v13 = (*(a1 + 16) + v6);
    v14 = *a4;
    while (1)
    {
      v15 = *v13++;
      if (*(a2 + v14) != v15)
      {
        break;
      }

      *a4 = ++v14;
      if (a5 == v14)
      {
        v14 = a5;
        break;
      }
    }

    if (v14 == v11)
    {
      v16 = v11;
    }

    else
    {
      *(a3 + 1) = v6 - v11 + v14;
      v16 = *a4;
    }

    if (v16 < a5)
    {
      return 4294967294;
    }
  }

  v18 = v12 - v11;
  if (*(v18 + v16))
  {
    return 0xFFFFFFFFLL;
  }

  v19 = (v18 + a5 + 1);
  return *v19;
}

uint64_t sub_1B5D64F80(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v6 = 0;
  v7 = v4;
  if (sub_1B5D64E70(a1 + 8, a3, &v7, &v6, a4) == -2)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5D64FE4(uint64_t a1, const void *a2, size_t a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = (*(*a1 + 104))(a1);
  v10 = (*(*a1 + 120))(a1, v11, a2, a3);
  result = (*(*a1 + 112))(a1, &v10);
  if (result)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v9 = a3;
        if (a3)
        {
          memmove(&__dst, a2, a3);
        }

        *(&__dst + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D651F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_1B5D11AAC(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D65238(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D4B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D65278(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D136E8(v17, v16, v11, v10, a4);
}

__n128 sub_1B5D65360(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5D458;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D6540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  result = (*(*a1 + 104))(a1);
  v11 = result;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11 = (*(*a1 + 120))(a1, &v11, v9 + a2, 1);
      result = (*(*a1 + 112))(a1, &v11);
      if (!result)
      {
        break;
      }

      v10 = 0;
      result = (*(*a1 + 128))(a1, &v11, &v10);
      if (result)
      {
        result = sub_1B5D136E8(*(a4 + 24), v10, a2, ++v9, &v12);
        if (v12)
        {
          return result;
        }
      }

      else
      {
        ++v9;
      }
    }

    while (v9 != a3);
  }

  return result;
}

BOOL sub_1B5D65558(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = 0;
  v9 = 0;
  v5 = sub_1B5D64E70(a1 + 8, a2, &v9, &v8, a3);
  if (v5 == -2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  *a4 = v6;
  return v6 != -1;
}

uint64_t sub_1B5D655AC(uint64_t a1, int *a2, unint64_t a3)
{
  sub_1B5D655E4(a1 + 8, a2, a3 >> 3);
  sub_1B5D63C88(a1 + 8);
  return 1;
}

void sub_1B5D655E4(uint64_t a1, int *a2, uint64_t a3)
{
  sub_1B5D631A4(a1, 0);
  if (a3)
  {
    v6 = 8 * a3 - *a2;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 16) = a2;
  *(a1 + 8) = a2 + *a2;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 >> 3) + 1;
  }

  else
  {
    v7 = v6 >> 3;
  }

  *(a1 + 64) = v7;
  *(a1 + 76) = 1;
}

uint64_t sub_1B5D6565C(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "CedarMinimalPrefixTrie.h", 78, "keys.size() == values.size()");
  }

  if (v4 == v3)
  {
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LODWORD(v11) = 1;
    do
    {
      v12 = (v3 + v8);
      v13 = *(v12 + 23);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v14 = *v12;
        v13 = v12[1];
      }

      else
      {
        v14 = v12;
      }

      v11 = v11 & (*(*a1 + 152))(a1, v14, v13, *a3 + v9);
      ++v10;
      v3 = *a2;
      v9 += 4;
      v8 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  sub_1B5D63C88(a1 + 8);
  return v11;
}

uint64_t sub_1B5D65788(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v7 = 1;
  if (a2[1] != *a2)
  {
    v4 = 0;
    do
    {
      sub_1B5D0DE58(&__p, &v7);
      v7 = v4++ + 2;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v4);
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D6585C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D65888(_BYTE *a1, uint64_t a2)
{
  sub_1B5CF7CDC(v9);
  v4 = **(a2 + 16);
  std::ostream::write();
  v5 = *(a2 + 8);
  v6 = *(a2 + 64);
  std::ostream::write();
  sub_1B5D3F684(a1, v9);
  v9[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v9[2] = v7;
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C88080](&v13);
}

void sub_1B5D65A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D0B3AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D65A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5D3D8;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D65AE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D65B00(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D65B64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5D3D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D65BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5D358;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D65C9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D65CBC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D3B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D65D20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5D358;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D65DB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D65E10(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D65F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D65FA8(void *a1)
{
  sub_1B5D63158(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D65FEC(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5D5D8;
  v9[1] = a3;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D64A10((a1 + 8), a2, v10, a4);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D660A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D660D4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D638))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D66114(uint64_t result, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2 & 0x7FFFFF;
  if (v4 != 0x7FFFFF)
  {
    return sub_1B5D61690(*(*(result + 8) + 24), v4, *a3, a3[1], a4);
  }

  return result;
}

uint64_t sub_1B5D6614C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5D5D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D661E0(uint64_t a1, unint64_t *a2, int *a3)
{
  v5 = 0;
  result = sub_1B5D64DE0(a1 + 8, a2, &v5);
  if (result)
  {
    if ((v5 & 0x7FFFFF) == 0x7FFFFF)
    {
      return 0;
    }

    else
    {
      *a3 = v5 & 0x7FFFFF;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B5D66240(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v6 = 0;
  v7 = v4;
  if (sub_1B5D64E70(a1 + 16, a3, &v7, &v6, a4) == -2)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5D662A4(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5D5D8;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D64FE4(a1 + 8, a2, a3);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D66364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D66388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5D5D8;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6540C(a1 + 8, a2, a3, v10);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D66440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D66464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*a1 + 104))(a1);
  v10 = (*(*a1 + 120))(a1, &v9, a2, a3);
  return (*(*a1 + 128))(a1, &v10, a4);
}

uint64_t sub_1B5D66530(uint64_t a1, int *a2, unint64_t a3)
{
  sub_1B5D655E4(a1 + 16, a2, a3 >> 3);
  sub_1B5D63C88(a1 + 16);
  return 1;
}

uint64_t sub_1B5D66568(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "ProbabilisticTrie.h", 267, "keys.size() == values.size()");
  }

  v51[0] = 0;
  v51[1] = 0;
  v50 = v51;
  if (v4 == v3)
  {
LABEL_13:
    v49[0] = 0;
    v49[1] = 0;
    v48 = v49;
    if (v4 != v3)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v3 + v14;
        v17 = *(*a3 + 4 * v15);
        v18 = *sub_1B5D624A4(&v50, (v3 + v14));
        v19 = *(v16 + 23);
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v16 + 8);
        }

        std::string::basic_string(&v52, v16, 0, v19 - 1, &v47);
        v20 = *sub_1B5D624A4(&v50, &v52);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        v52.__r_.__value_.__r.__words[0] = v16;
        v21 = sub_1B5D66C08(&v48, v16);
        v22 = (sqrt(v18 / v20) * 255.0);
        if (v22 >= 255)
        {
          v23 = 255;
        }

        else
        {
          v23 = v22;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v18 / v20 <= 0.0;
        }

        v25 = v23 << 23;
        if (!v24)
        {
          v25 = 0x800000;
        }

        *(v21 + 14) = v25 & 0xFF800000 | v17 & 0x7FFFFF;
        ++v15;
        v3 = *a2;
        v26 = a2[1];
        v14 += 24;
      }

      while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v26 - *a2) >> 3));
      if (v26 != v3)
      {
        v27 = 0;
        do
        {
          v28 = 0;
          v29 = (v3 + 24 * v27);
          while (1)
          {
            size = SHIBYTE(v29->__r_.__value_.__r.__words[2]);
            if ((size & 0x8000000000000000) != 0)
            {
              size = v29->__r_.__value_.__l.__size_;
            }

            if (v28 >= size - 1)
            {
              break;
            }

            std::string::basic_string(&v47, v29, 0, v28, &v52);
            v31 = v29;
            if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
            {
              v31 = v29->__r_.__value_.__r.__words[0];
            }

            sub_1B5D62618(&__str, &v47.__r_.__value_.__l.__data_, v31->__r_.__value_.__s.__data_[v28]);
            if (v49 == sub_1B5D030FC(&v48, &__str))
            {
              v32 = *sub_1B5D624A4(&v50, &v47);
              if (v32 > *sub_1B5D624A4(&v50, &__str))
              {
                v33 = *sub_1B5D624A4(&v50, &__str);
                v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v34 = __str.__r_.__value_.__l.__size_;
                }

                std::string::basic_string(&v52, &__str, 0, v34 - 1, v53);
                v35 = *sub_1B5D624A4(&v50, &v52);
                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                }

                v52.__r_.__value_.__r.__words[0] = &__str;
                v36 = sub_1B5D66C08(&v48, &__str);
                v37 = (sqrt(v33 / v35) * 255.0);
                if (v37 >= 255)
                {
                  v38 = 255;
                }

                else
                {
                  v38 = v37;
                }

                if (v37)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v33 / v35 <= 0.0;
                }

                v40 = (v38 << 23) | 0x7FFFFF;
                if (!v39)
                {
                  v40 = 0xFFFFFF;
                }

                *(v36 + 14) = v40;
              }
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v47.__r_.__value_.__l.__data_);
            }

            ++v28;
          }

          ++v27;
          v3 = *a2;
        }

        while (v27 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      }
    }

    memset(&v52, 0, sizeof(v52));
    memset(&v47, 0, sizeof(v47));
    if (v48 != v49)
    {
      v41 = v52.__r_.__value_.__l.__size_;
      if (v52.__r_.__value_.__l.__size_ >= v52.__r_.__value_.__r.__words[2])
      {
        v43 = sub_1B5D6269C(&v52, &v48[1].__r_.__value_.__r.__words[1]);
      }

      else
      {
        if (v48[2].__r_.__value_.__s.__data_[7] < 0)
        {
          sub_1B5CE4AC4(v52.__r_.__value_.__l.__size_, v48[1].__r_.__value_.__l.__size_, v48[1].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = *&v48[1].__r_.__value_.__r.__words[1];
          *(v52.__r_.__value_.__l.__size_ + 16) = v48[2].__r_.__value_.__l.__data_;
          *v41 = v42;
        }

        v43 = v41 + 24;
      }

      v52.__r_.__value_.__l.__size_ = v43;
      sub_1B5D0DF30(1uLL);
    }

    v44 = sub_1B5D6565C(a1 + 8, &v52, &v47);
    if (v47.__r_.__value_.__r.__words[0])
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v47.__r_.__value_.__r.__words[0] = &v52;
    sub_1B5CE5D7C(&v47);
    sub_1B5D0C050(v49[0]);
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = 0;
      v10 = v3 + 24 * v8;
      while (1)
      {
        v11 = *(v10 + 23);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v11 = *(v10 + 8);
        }

        if (v9 > v11)
        {
          break;
        }

        v12 = *sub_1B5D624A4(a1 + 616, v10);
        std::string::basic_string(&v52, v10, 0, v9, &v48);
        v48 = &v52;
        v13 = sub_1B5D5F6C8(&v50, &v52);
        *(v13 + 56) = v12 + *(v13 + 56);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        ++v9;
      }

      if (*(*a3 + 4 * v8) == 0x7FFFFF)
      {
        break;
      }

      ++v8;
      v3 = *a2;
      v4 = a2[1];
      if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3))
      {
        goto LABEL_13;
      }
    }

    v44 = 0;
  }

  sub_1B5D0C050(v51[0]);
  return v44;
}

void sub_1B5D66B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_1B5CE5D7C(&__p);
  sub_1B5D0C050(a23);
  sub_1B5D0C050(a26);
  _Unwind_Resume(a1);
}

void *sub_1B5D66C08(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((sub_1B5D03480(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((sub_1B5D03480(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1B5D66D3C(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a2[1] != *a2)
  {
    v4 = 1;
    do
    {
      v7 = v4;
      sub_1B5D0DE58(&__p, &v7);
      ++v4;
    }

    while (v4 <= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D66E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D66E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5D558;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D66ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D66EF4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D5B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D66F58(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5D558;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D66FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5D4D8;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D67090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D670B0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D67114(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5D4D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D671A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D67204(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D6735C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D6739C(uint64_t a1)
{
  *a1 = &unk_1F2D5D178;
  sub_1B5D0C050(*(a1 + 624));
  sub_1B5D63158((a1 + 8));

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D6740C(uint64_t a1)
{
  *a1 = &unk_1F2D5D178;
  sub_1B5D0C050(*(a1 + 624));
  sub_1B5D63158((a1 + 8));
  return a1;
}

uint64_t sub_1B5D6745C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D58BD8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  sub_1B5D0195C((a1 + 56), a2);
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  sub_1B5D69650(a1 + 88);
  return a1;
}

void sub_1B5D674D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D674F4(uint64_t a1)
{
  *a1 = &unk_1F2D58BD8;
  sub_1B5D01F0C(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1B5D67550()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v26 = *MEMORY[0x1E69E9840];
  result = (*(*v0 + 112))(v0);
  if (!result)
  {
    goto LABEL_30;
  }

  v7 = *(v4 + 24);
  v8 = *v4;
  v9 = HIBYTE(*v4) & 3;
  if (v7 + 1 <= v9)
  {
    LODWORD(__dst[0]) = *v4;
    __dst[1] = *(v4 + 1);
    LODWORD(__dst[2]) = v4[4];
    v11 = v7 + 1;
    LOBYTE(__dst[3]) = v11;
    if (v9 >= v11)
    {
      v12 = *(&__dst[2] + v11);
    }

    else
    {
      v12 = 0;
    }

    result = sub_1B5D677C0(*(v2 + 24), v12);
  }

  else
  {
    v10 = v8 & 0xFFFFFF;
    if ((v8 & 0xFFFFFF) != 0)
    {
      if (v10 < *(v5 + 84))
      {
        __assert_rtn("enumerateChildren", "PatriciaTrie.h", 275, "cursor.isRoot() || firstChildOffset >= m_trieRootOffset");
      }
    }

    else
    {
      if (*(v4 + 24))
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == 0;
      }

      if (!v13 || *(v4 + 16) != 0)
      {
        goto LABEL_30;
      }

      v10 = 0;
    }

    v15 = sub_1B5D67810(v5, v10);
    result = memcpy(__dst, v15, 0x10CuLL);
    v16 = 0x1FFFFFFFFFFFFD00;
    do
    {
      v17 = &__dst[v16];
      *(v17 + 1604) = v15[v16 + 802];
      v17[803] = v15[v16 + 803];
      *(v17 + 1608) = v15[v16 + 804];
      v16 += 3;
    }

    while (v16 * 8);
    v24 = *(v15 + 401);
    v25 = v15[804];
    v18 = __dst[1];
    if (LODWORD(__dst[1]))
    {
      v19 = 0;
      do
      {
        while (1)
        {
          v20 = &__dst[3 * *(&__dst[1] + v19 + 4) + 34];
          if ((*v20 & 0x10FFFFFF) == 0x10000000 && (v20[1] & 0xFF00000000) == 0)
          {
            break;
          }

          result = sub_1B5D677C0(*(v2 + 24), *(v20 + 4));
          if (++v19 >= v18)
          {
            goto LABEL_30;
          }
        }

        ++v19;
      }

      while (v19 < v18);
    }
  }

LABEL_30:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5D677C0(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void *sub_1B5D67810(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    __assert_rtn("getTrieArrayCache", "PatriciaTrie.h", 361, "m_valid");
  }

  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = v3 + a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 84);
  v6 = (a1 + 88);

  return sub_1B5D67870(v6, v4, v3 + v5);
}

void *sub_1B5D67870(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a1 + 805;
    if (a1[805] != a2)
    {
      sub_1B5CFE358((a1 + 805), a2);
    }
  }

  else
  {
    if (*a1 != a3)
    {
      sub_1B5CFE358(a1, a3);
    }

    return a1;
  }

  return v4;
}

void sub_1B5D678D4()
{
  __p = 0;
  v1 = 0uLL;
  operator new();
}

void sub_1B5D67970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D6798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v17[1] = a5;
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v17[0] = 0;
    v16 = 0;
    result = (*(*a1 + 128))(a1, a2, v17);
    if (!result || ((v11 = *(a3 + 23), v11 >= 0) ? (v12 = a3) : (v12 = *a3), v11 >= 0 ? (v13 = *(a3 + 23)) : (v13 = *(a3 + 8)), result = sub_1B5D136E8(*(a4 + 24), v17[0], v12, v13, &v16), (v16 & 1) == 0))
    {
      if ((a5 & 0x80000000) != 0)
      {
        goto LABEL_14;
      }

      v14 = *(a3 + 23);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 8);
      }

      if (v14 < a5)
      {
LABEL_14:
        operator new();
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D67B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D67B54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D67B54(uint64_t a1)
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

uint64_t sub_1B5D67BE0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58EA0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D67C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 8;
  v5 = *(a1 + 8);
  v6 = *(v7 + 8);
  v8 = *(a3 + 24);
  if ((*(a3 + 3) & 3u) >= v8)
  {
    v9 = *(a3 + v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  std::string::push_back(v5, v9);
  result = sub_1B5D6798C(v6, a3, *(a1 + 8), *(a1 + 24), **(a1 + 32));
  v11 = *(a1 + 8);
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = v11[1] - 1;
    v11[1] = v13;
    v11 = *v11;
  }

  else
  {
    v13 = v12 - 1;
    *(v11 + 23) = v13 & 0x7F;
  }

  *(v11 + v13) = 0;
  return result;
}

__n128 sub_1B5D67CCC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D58E30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D67D78(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    if (*(a2 + 24) + 1 <= (*(a2 + 3) & 3u))
    {
      return 0;
    }

    else
    {
      v6 = *(a2 + 8);
      *a3 = v6;
      return v6 != 0;
    }
  }

  return result;
}

uint64_t sub_1B5D67DF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  *a5 = *a2;
  v8 = *(a2 + 8);
  *(a5 + 8) = v8;
  v9 = *(a2 + 16);
  *(a5 + 16) = v9;
  v10 = *(a2 + 24);
  *(a5 + 24) = v10;
  if (a4)
  {
    v11 = a4;
    v13 = result;
    do
    {
      if (v10 == -1)
      {
        goto LABEL_17;
      }

      v14 = *a3;
      if (v10 + 1 <= (HIBYTE(v7) & 3))
      {
        result = sub_1B5D67FA0(a5);
        if (result != v14)
        {
          goto LABEL_16;
        }

        v7 = *a5;
        v8 = *(a5 + 8);
        v9 = *(a5 + 16);
        v10 = *(a5 + 24) + 1;
      }

      else
      {
        result = (*(*v13 + 112))(v13, a5);
        if (!result)
        {
          goto LABEL_16;
        }

        v15 = *a5;
        if (*(a5 + 24) + 1 <= (HIBYTE(*a5) & 3u))
        {
          __assert_rtn("advanceCursorToChildNode", "PatriciaTrie.h", 378, "!cursor.hasMorePatriciaKeyBytes()");
        }

        v9 = v15 & 0xFFFFFF;
        if ((v15 & 0xFFFFFF) != 0)
        {
          goto LABEL_11;
        }

        v8 = 0;
        v10 = -1;
        if (*(a5 + 24) || v15)
        {
          v7 = v15 & 0xFFFFFF;
          goto LABEL_18;
        }

        v7 = 0;
        if (!*(a5 + 16))
        {
LABEL_11:
          result = sub_1B5D67810(v13, v9);
          v16 = result + 24 * v14;
          v17 = v16 + 272;
          v7 = *(v16 + 272);
          if (!v7)
          {
            v18 = *(v16 + 288);
            if (!*(v17 + 16))
            {
LABEL_16:
              v9 = 0;
              v8 = 0;
              v7 = 0;
LABEL_17:
              v10 = -1;
              goto LABEL_18;
            }
          }

          v10 = 0;
          v8 = *(v17 + 8);
          v9 = *(v17 + 16);
        }
      }

LABEL_18:
      *a5 = v7;
      *(a5 + 8) = v8;
      *(a5 + 16) = v9;
      ++a3;
      *(a5 + 24) = v10;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1B5D67FA0(uint64_t a1)
{
  v1 = *(a1 + 24) + 1;
  if (v1 > (*(a1 + 3) & 3u))
  {
    __assert_rtn("peekNextByte", "PatriciaTrie.h", 53, "hasMorePatriciaKeyBytes()");
  }

  return *(a1 + v1 + 16);
}

uint64_t sub_1B5D67FF0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 0xFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 80);
  }
}

void sub_1B5D68008(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void *sub_1B5D6801C(uint64_t a1, const void *a2, size_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  (*(*a1 + 104))(v10);
  result = (*(*a1 + 120))(v13, a1, v10, a2, a3);
  LODWORD(v10[0]) = v13[0];
  v10[1] = v13[1];
  v11 = v14;
  v12 = v15;
  if (v15 != 255)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v9 = a3;
        if (a3)
        {
          memmove(&__p, a2, a3);
        }

        *(&__p + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D68228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_1B5D11AAC(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D68268(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58E10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D682A8(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D136E8(v17, v16, v11, v10, a4);
}

__n128 sub_1B5D68390(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D58DB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *sub_1B5D6843C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v18 = 0;
    (*(*result + 104))(v15);
    v8 = 0;
    v14 = 0;
    while (1)
    {
      result = (*(*v7 + 120))(v11, v7, v15, v8 + a2, 1);
      LODWORD(v15[0]) = v11[0];
      v15[1] = v11[1];
      v16 = v12;
      v17 = v13;
      if (v13 == 255)
      {
        break;
      }

      result = (*(*v7 + 128))(v7, v15, &v14);
      if (result)
      {
        v9 = v8 + 1;
        if (a3 >= v8 + 1)
        {
          v10 = v8 + 1;
        }

        else
        {
          v10 = a3;
        }

        result = sub_1B5D136E8(*(a4 + 24), v14, a2, v10, &v18);
        if (v18)
        {
          return result;
        }

        ++v8;
        if (v9 >= a3)
        {
          return result;
        }
      }

      else if (++v8 >= a3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1B5D68594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 104))(v9);
  (*(*a1 + 120))(v10, a1, v9, a2, a3);
  return (*(*a1 + 128))(a1, v10, a4);
}

uint64_t sub_1B5D68660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  result = sub_1B5D00E78(a2, a3, 68, (a1 + 84));
  if (result)
  {
    v8 = 0;
    result = sub_1B5D00E78(*(a1 + 32), *(a1 + 40), 40, &v8);
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = v8;
      *(a1 + 6504) = v8;
      *(a1 + 6512) = v5;
      *(a1 + 6520) = v6;
      *(a1 + 12944) = v7;
      *(a1 + 12952) = v5;
      *(a1 + 12960) = v6;
      *(a1 + 80) = 1;
    }
  }

  return result;
}

void sub_1B5D686E4(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) == (a3[1] - *a3) >> 2)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (v4 != v3)
    {
      v7 = 0;
      do
      {
        memset(v32, 0, sizeof(v32));
        v31 = 0u;
        LODWORD(v30) = *(*a3 + 4 * v7);
        HIDWORD(v30) = v7;
        v8 = (v3 + 24 * v7);
        v9 = v8[23];
        if ((v9 & 0x8000000000000000) != 0)
        {
          v8 = *v8;
          v9 = *(v3 + 24 * v7 + 8);
        }

        sub_1B5CFF868(&v31, v8, &v8[v9], v9);
        v10 = v32[2];
        v11 = v32[1];
        if (v9 <= v32[2] - v32[1])
        {
          if (v9 < v32[2] - v32[1])
          {
            v10 = v32[1] + v9;
            v32[2] = v32[1] + v9;
          }
        }

        else
        {
          sub_1B5D228D4(&v32[1], v9 - (v32[2] - v32[1]));
          v10 = v32[2];
          v11 = v32[1];
        }

        if (v11 != v10)
        {
          v12 = v10 - v11;
          v13 = vdupq_n_s64(v12 - 1);
          v14 = -((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
          v15 = (v11 + 7);
          v16 = 15;
          do
          {
            v17 = v16 - 15;
            v18 = vdupq_n_s64(v16 - 15);
            v19 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC2630)));
            if (vuzp1_s8(vuzp1_s16(v19, *v13.i8), *v13.i8).u8[0])
            {
              *(v15 - 7) = v17;
            }

            if (vuzp1_s8(vuzp1_s16(v19, *&v13), *&v13).i8[1])
            {
              *(v15 - 6) = v17 | 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC2640)))), *&v13).i8[2])
            {
              *(v15 - 5) = v17 | 2;
              *(v15 - 4) = v17 | 3;
            }

            v20 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3A60)));
            if (vuzp1_s8(*&v13, vuzp1_s16(v20, *&v13)).i32[1])
            {
              *(v15 - 3) = v17 | 4;
            }

            if (vuzp1_s8(*&v13, vuzp1_s16(v20, *&v13)).i8[5])
            {
              *(v15 - 2) = v17 | 5;
            }

            if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3A50))))).i8[6])
            {
              *(v15 - 1) = v17 | 6;
              *v15 = v17 | 7;
            }

            v21 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3AB0)));
            if (vuzp1_s8(vuzp1_s16(v21, *v13.i8), *v13.i8).u8[0])
            {
              v15[1] = v17 | 8;
            }

            if (vuzp1_s8(vuzp1_s16(v21, *&v13), *&v13).i8[1])
            {
              v15[2] = v17 | 9;
            }

            if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3AA0)))), *&v13).i8[2])
            {
              v15[3] = v17 | 0xA;
              v15[4] = v17 | 0xB;
            }

            v22 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3A90)));
            if (vuzp1_s8(*&v13, vuzp1_s16(v22, *&v13)).i32[1])
            {
              v15[5] = v17 | 0xC;
            }

            if (vuzp1_s8(*&v13, vuzp1_s16(v22, *&v13)).i8[5])
            {
              v15[6] = v17 | 0xD;
            }

            if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3A80))))).i8[6])
            {
              v15[7] = v17 | 0xE;
              v15[8] = v17 | 0xF;
            }

            v16 += 16;
            v15 += 16;
          }

          while (v14 + v16 != 15);
        }

        *v33 = 0x3FF0000000000000;
        *&v33[8] = 1;
        v33[12] = 0;
        v23 = v28;
        if (v28 >= v29)
        {
          v28 = sub_1B5D68C50(&v27, &v30);
          if (v32[1])
          {
            v32[2] = v32[1];
            operator delete(v32[1]);
          }
        }

        else
        {
          *v28 = v30;
          v23[1] = 0;
          v23[3] = 0;
          v23[4] = 0;
          v23[2] = 0;
          *(v23 + 1) = v31;
          v23[3] = v32[0];
          v31 = 0uLL;
          v23[5] = 0;
          v23[6] = 0;
          *(v23 + 2) = *&v32[1];
          v23[6] = v32[3];
          memset(v32, 0, sizeof(v32));
          v24 = *v33;
          *(v23 + 61) = *&v33[5];
          v23[7] = v24;
          v28 = v23 + 9;
        }

        if (v31)
        {
          *(&v31 + 1) = v31;
          operator delete(v31);
        }

        ++v7;
        v3 = *a2;
      }

      while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    }

    v25 = *(a1 + 48);
    sub_1B5CFFF34();
  }

  __assert_rtn("build", "PatriciaTrie.h", 140, "keys.size() == values.size()");
}

void sub_1B5D68C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void **a30)
{
  a30 = &a27;
  sub_1B5D018D4(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D68C50(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1B5D04FA0();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1B5D0161C(a1, v6);
  }

  v7 = 72 * v2;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a2 + 56);
  *(v7 + 61) = *(a2 + 61);
  *(v7 + 56) = v8;
  *&v16 = 72 * v2 + 72;
  v9 = *(a1 + 8);
  v10 = (72 * v2 + *a1 - v9);
  sub_1B5D68DC0(*a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v16;
  *(a1 + 8) = v16;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v15[0] = v11;
  v15[1] = v11;
  sub_1B5D68E6C(v15);
  return v14;
}

void sub_1B5D68DC0(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 0;
      *(a3 + 1) = *(v5 + 1);
      a3[3] = v5[3];
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = 0;
      a3[4] = 0;
      a3[5] = 0;
      a3[6] = 0;
      *(a3 + 2) = *(v5 + 2);
      a3[6] = v5[6];
      v5[4] = 0;
      v5[5] = 0;
      v5[6] = 0;
      v6 = v5[7];
      *(a3 + 61) = *(v5 + 61);
      a3[7] = v6;
      v5 += 9;
      a3 += 9;
    }

    while (v5 != a2);
    do
    {
      sub_1B5D68EBC(v4);
      v4 += 9;
    }

    while (v4 != a2);
  }
}

uint64_t sub_1B5D68E6C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_1B5D68EBC((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5D68EBC(void *a1)
{
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
}

uint64_t sub_1B5D68F14(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v7 = 1;
  if (a2[1] != *a2)
  {
    v4 = 0;
    do
    {
      sub_1B5D0DE58(&__p, &v7);
      v7 = v4++ + 2;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v4);
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D68FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5D69008@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[5];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v4 = result[4];
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
  }

  a2[v3] = 0;
  return result;
}

uint64_t sub_1B5D690A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D58D30;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6914C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6916C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58D90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D691D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D58D30;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D69264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D58CB0;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D69308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D69328(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58D10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6938C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D58CB0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D69420(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D6947C(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D695D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D69614(uint64_t a1)
{
  sub_1B5D674F4(a1);

  JUMPOUT(0x1B8C880F0);
}

double sub_1B5D69650(uint64_t a1)
{
  v1 = -6144;
  do
  {
    v2 = a1 + v1;
    *(v2 + 6416) = 0;
    *(v2 + 6424) = 0;
    *(v2 + 6432) = 0;
    v1 += 24;
  }

  while (v1);
  *(a1 + 252) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v3 = -6144;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  do
  {
    v4 = a1 + v3;
    *(v4 + 6416) = 0;
    *(v4 + 6424) = 0;
    *(v4 + 6432) = 0;
    v3 += 24;
  }

  while (v3);
  *(a1 + 6416) = 0;
  *(a1 + 6424) = 0u;
  v5 = -6144;
  do
  {
    v6 = a1 + v5;
    *(v6 + 12856) = 0;
    *(v6 + 12864) = 0;
    *(v6 + 12872) = 0;
    v5 += 24;
  }

  while (v5);
  *(a1 + 6692) = 0u;
  *(a1 + 6664) = 0u;
  *(a1 + 6680) = 0u;
  *(a1 + 6632) = 0u;
  *(a1 + 6648) = 0u;
  *(a1 + 6600) = 0u;
  *(a1 + 6616) = 0u;
  *(a1 + 6568) = 0u;
  *(a1 + 6584) = 0u;
  *(a1 + 6536) = 0u;
  *(a1 + 6552) = 0u;
  *(a1 + 6504) = 0u;
  *(a1 + 6520) = 0u;
  *(a1 + 6472) = 0u;
  *(a1 + 6488) = 0u;
  *(a1 + 6440) = 0u;
  *(a1 + 6456) = 0u;
  v7 = -6144;
  do
  {
    v8 = a1 + v7;
    *(v8 + 12856) = 0;
    *(v8 + 12864) = 0;
    *(v8 + 12872) = 0;
    v7 += 24;
  }

  while (v7);
  *(a1 + 12856) = 0;
  result = 0.0;
  *(a1 + 12864) = 0u;
  return result;
}

void sub_1B5D69740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2D595B0;
  v3[1] = a3;
  v3[3] = v3;
  sub_1B5D614DC(v4, v3);
  sub_1B5D678D4();
}

void sub_1B5D697F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D69828(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59610))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D69868(uint64_t result, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2 & 0x7FFFFF;
  if (v4 != 0x7FFFFF)
  {
    return sub_1B5D61690(*(*(result + 8) + 24), v4, *a3, a3[1], a4);
  }

  return result;
}

uint64_t sub_1B5D698A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D595B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D69934(uint64_t a1, uint64_t a2, int *a3)
{
  result = (*(*(a1 + 8) + 112))();
  if (result)
  {
    if (*(a2 + 24) + 1 > (*(a2 + 3) & 3u) && (v6 = *(a2 + 8)) != 0 && (v7 = v6 & 0x7FFFFF, v7 != 0x7FFFFF))
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5D699C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 0xFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 88);
  }
}

void sub_1B5D699E0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_1B5D699F4(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D595B0;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6801C(a1 + 8, a2, a3);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D69AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D69AD8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D595B0;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6843C((a1 + 8), a2, a3, v10);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D69B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D69BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 104))(v9);
  (*(*a1 + 120))(v10, a1, v9, a2, a3);
  return (*(*a1 + 128))(a1, v10, a4);
}

uint64_t sub_1B5D69C88(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "ProbabilisticTrie.h", 267, "keys.size() == values.size()");
  }

  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  if (v4 == v3)
  {
LABEL_13:
    v48[0] = 0;
    v48[1] = 0;
    v47 = v48;
    if (v4 != v3)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v3 + v14;
        v17 = *(*a3 + 4 * v15);
        v18 = *sub_1B5D624A4(&v49, (v3 + v14));
        v19 = *(v16 + 23);
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v16 + 8);
        }

        std::string::basic_string(&v51, v16, 0, v19 - 1, &v46);
        v20 = *sub_1B5D624A4(&v49, &v51);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        v51.__r_.__value_.__r.__words[0] = v16;
        v21 = sub_1B5D66C08(&v47, v16);
        v22 = (sqrt(v18 / v20) * 255.0);
        if (v22 >= 255)
        {
          v23 = 255;
        }

        else
        {
          v23 = v22;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v18 / v20 <= 0.0;
        }

        v25 = v23 << 23;
        if (!v24)
        {
          v25 = 0x800000;
        }

        *(v21 + 14) = v25 & 0xFF800000 | v17 & 0x7FFFFF;
        ++v15;
        v3 = *a2;
        v26 = a2[1];
        v14 += 24;
      }

      while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v26 - *a2) >> 3));
      if (v26 != v3)
      {
        v27 = 0;
        do
        {
          v28 = 0;
          v29 = (v3 + 24 * v27);
          while (1)
          {
            size = SHIBYTE(v29->__r_.__value_.__r.__words[2]);
            if ((size & 0x8000000000000000) != 0)
            {
              size = v29->__r_.__value_.__l.__size_;
            }

            if (v28 >= size - 1)
            {
              break;
            }

            std::string::basic_string(&v46, v29, 0, v28, &v51);
            v31 = v29;
            if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
            {
              v31 = v29->__r_.__value_.__r.__words[0];
            }

            sub_1B5D62618(&__str, &v46.__r_.__value_.__l.__data_, v31->__r_.__value_.__s.__data_[v28]);
            if (v48 == sub_1B5D030FC(&v47, &__str))
            {
              v32 = *sub_1B5D624A4(&v49, &v46);
              if (v32 > *sub_1B5D624A4(&v49, &__str))
              {
                v33 = *sub_1B5D624A4(&v49, &__str);
                v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v34 = __str.__r_.__value_.__l.__size_;
                }

                std::string::basic_string(&v51, &__str, 0, v34 - 1, v52);
                v35 = *sub_1B5D624A4(&v49, &v51);
                if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v51.__r_.__value_.__l.__data_);
                }

                v51.__r_.__value_.__r.__words[0] = &__str;
                v36 = sub_1B5D66C08(&v47, &__str);
                v37 = (sqrt(v33 / v35) * 255.0);
                if (v37 >= 255)
                {
                  v38 = 255;
                }

                else
                {
                  v38 = v37;
                }

                if (v37)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v33 / v35 <= 0.0;
                }

                v40 = (v38 << 23) | 0x7FFFFF;
                if (!v39)
                {
                  v40 = 0xFFFFFF;
                }

                *(v36 + 14) = v40;
              }
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            ++v28;
          }

          ++v27;
          v3 = *a2;
        }

        while (v27 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      }
    }

    memset(&v51, 0, sizeof(v51));
    memset(&v46, 0, sizeof(v46));
    if (v47 != v48)
    {
      v41 = v51.__r_.__value_.__l.__size_;
      if (v51.__r_.__value_.__l.__size_ >= v51.__r_.__value_.__r.__words[2])
      {
        v43 = sub_1B5D6269C(&v51, &v47[1].__r_.__value_.__r.__words[1]);
      }

      else
      {
        if (v47[2].__r_.__value_.__s.__data_[7] < 0)
        {
          sub_1B5CE4AC4(v51.__r_.__value_.__l.__size_, v47[1].__r_.__value_.__l.__size_, v47[1].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = *&v47[1].__r_.__value_.__r.__words[1];
          *(v51.__r_.__value_.__l.__size_ + 16) = v47[2].__r_.__value_.__l.__data_;
          *v41 = v42;
        }

        v43 = v41 + 24;
      }

      v51.__r_.__value_.__l.__size_ = v43;
      sub_1B5D0DF30(1uLL);
    }

    sub_1B5D686E4(a1 + 8, &v51, &v46);
  }

  v8 = 0;
  while (1)
  {
    v9 = 0;
    v10 = v3 + 24 * v8;
    while (1)
    {
      v11 = *(v10 + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v9 > v11)
      {
        break;
      }

      v12 = *sub_1B5D624A4(a1 + 12976, v10);
      std::string::basic_string(&v51, v10, 0, v9, &v47);
      v47 = &v51;
      v13 = sub_1B5D5F6C8(&v49, &v51);
      *(v13 + 56) = v12 + *(v13 + 56);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      ++v9;
    }

    if (*(*a3 + 4 * v8) == 0x7FFFFF)
    {
      break;
    }

    ++v8;
    v3 = *a2;
    v4 = a2[1];
    if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3))
    {
      goto LABEL_13;
    }
  }

  sub_1B5D0C050(v50[0]);
  return 0;
}

void sub_1B5D6A250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_1B5CE5D7C(&__p);
  sub_1B5D0C050(a23);
  sub_1B5D0C050(a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6A32C(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a2[1] != *a2)
  {
    v4 = 1;
    do
    {
      v7 = v4;
      sub_1B5D0DE58(&__p, &v7);
      ++v4;
    }

    while (v4 <= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D6A3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5D6A414@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[6];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v4 = result[5];
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
  }

  a2[v3] = 0;
  return result;
}

uint64_t sub_1B5D6A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D59098;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6A558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6A578(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D590F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6A5DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59098;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6A670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D59018;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6A714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6A734(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59078))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6A798(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59018;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6A82C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D6A888(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D6A9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D6AA20(uint64_t a1)
{
  *a1 = &unk_1F2D594F0;
  sub_1B5D0C050(*(a1 + 12984));
  sub_1B5D674F4(a1 + 8);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D6AA90(uint64_t a1)
{
  *a1 = &unk_1F2D594F0;
  sub_1B5D0C050(*(a1 + 12984));
  sub_1B5D674F4(a1 + 8);
  return a1;
}

void sub_1B5D6AAE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1B5CF4BE8(v2);
  }

  sub_1B5CF4AAC(*(a1 + 16), 0);
  *(a1 + 8) = v3;
  if (!v3)
  {
    __assert_rtn("init", "MutableBurstTrie.h", 302, "m_trie");
  }
}

uint64_t sub_1B5D6AB40(uint64_t a1)
{
  *a1 = &unk_1F2D588D0;
  sub_1B5CF4BE8(*(a1 + 8));
  return a1;
}

void **sub_1B5D6ABB0(uint64_t a1, _DWORD **a2, uint64_t a3)
{
  v6 = 0;
  v13 = 0;
  do
  {
    v12 = v6;
    sub_1B5D6ACC0(&v11, *a2, &v12, 1uLL);
    if ((*(*a1 + 112))(a1, &v11))
    {
      v14 = v12;
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_1B5CEC274();
      }

      (*(*v7 + 48))(v7, &v14, &v11, &v13);
    }

    v8 = v13;
    result = sub_1B5D6AD44(&v11);
    if (v8)
    {
      break;
    }
  }

  while (v6++ < 0xFF);
  return result;
}

void **sub_1B5D6ACC0(void *a1, _DWORD *a2, unsigned __int8 *a3, size_t a4)
{
  v7 = sub_1B5CF76C4(a2);
  v9 = v7;
  if (sub_1B5CF6B68(v7, a3, a4))
  {
    v9 = 0;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  return sub_1B5D6AD44(&v9);
}

void sub_1B5D6AD30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6AD44(va);
  _Unwind_Resume(a1);
}

void **sub_1B5D6AD44(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1B5CF6164(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1B5D6AD7C(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = &unk_1F2D58B58;
  v7[1] = a3;
  v7[3] = v7;
  sub_1B5CF5FFC(v4, 0, v7, a4);
  result = sub_1B5CFCE8C(v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6AE08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CFCE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6AE28(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58BB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6AE8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D58B58;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6AF20(uint64_t a1, _DWORD **a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v6 = *a2;

    return sub_1B5CF7770(v6, a3);
  }

  return result;
}

void **sub_1B5D6AFB8(void **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = sub_1B5CF5F80(a2, 0, 0);
  if (*a1)
  {
    sub_1B5CF6164(*a1);
  }

  *a1 = v3;
  return a1;
}

uint64_t sub_1B5D6B004(uint64_t result, void *a2, size_t a3, uint64_t a4, int a5)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(result + 8);
    v7[0] = &unk_1F2D58AD8;
    v7[1] = a4;
    v7[3] = v7;
    sub_1B5CF4E08(v5, a2, a3, 0, v7, a5);
    result = sub_1B5CFBFD8(v7);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6B098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CFBFD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6B0B8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58B38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6B0F8(uint64_t result, uint64_t a2, uint64_t *a3, _BYTE **a4)
{
  v4 = *a4;
  if ((**a4 & 1) == 0)
  {
    v5 = result;
    v6 = *a3;
    v7 = sub_1B5CF48B0(*a3);
    v8 = sub_1B5CF48BC(v6);
    v9 = *(v5 + 8);
    v10 = sub_1B5CF48C8(v6);
    v11 = *(v9 + 24);

    return sub_1B5D136E8(v11, v10, v7, v8, v4);
  }

  return result;
}

uint64_t sub_1B5D6B19C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D58AD8;
  a2[1] = v2;
  return result;
}

void **sub_1B5D6B230(void **result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v14 = 0;
    (*(*result + 13))(&v13);
    v8 = 0;
    v9 = 0;
    v12 = 0;
    do
    {
      (*(*v7 + 15))(&v11, v7, &v13, v8 + a2, 1);
      v10 = v13;
      v13 = v11;
      v11 = v10;
      sub_1B5D6AD44(&v11);
      if (((*(*v7 + 14))(v7, &v13) & 1) == 0)
      {
        break;
      }

      if ((*(*v7 + 16))(v7, &v13, &v12))
      {
        v8 = (v9 + 1);
        sub_1B5D136E8(*(a4 + 24), v12, a2, v8, &v14);
        if (v14)
        {
          return sub_1B5D6AD44(&v13);
        }
      }

      else
      {
        v8 = (v9 + 1);
      }

      v9 = v8;
    }

    while (a3 > v8);
    return sub_1B5D6AD44(&v13);
  }

  return result;
}

void sub_1B5D6B3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D6AD44(va);
  _Unwind_Resume(a1);
}

BOOL sub_1B5D6B3D4(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    sub_1B5CF4BE8(v4);
  }

  v5 = sub_1B5CF4C78(a2);
  *(a1 + 8) = v5;
  return v5 != 0;
}

uint64_t sub_1B5D6B418(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "MutableBurstTrie.h", 150, "keys.size() == values.size()");
  }

  if (v4 == v3)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  LODWORD(v11) = 1;
  do
  {
    v12 = (v3 + v8);
    v13 = *(v12 + 23);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = *v12;
      v13 = v12[1];
    }

    else
    {
      v14 = v12;
    }

    v11 = v11 & (*(*a1 + 152))(a1, v14, v13, *a3 + v9);
    ++v10;
    v3 = *a2;
    v9 += 4;
    v8 += 24;
  }

  while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return v11;
}

uint64_t sub_1B5D6B53C(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v7 = 1;
  if (a2[1] != *a2)
  {
    v4 = 0;
    do
    {
      sub_1B5D0DE58(&__p, &v7);
      v7 = v4++ + 2;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v4);
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D6B610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D6B638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D58A58;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6B6DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6B6FC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58AB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6B760(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D58A58;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D589D8;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6B898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6B8B8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58A38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6B91C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D589D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6B9B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D6BA0C(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D6BB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D6BBA4(uint64_t a1)
{
  sub_1B5D6AB40(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D6BBE8(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D59470;
  v9[1] = a3;
  v9[3] = v9;
  v6 = sub_1B5D614DC(v10, v9);
  sub_1B5D6AD7C(v6, a2, v10, a4);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}