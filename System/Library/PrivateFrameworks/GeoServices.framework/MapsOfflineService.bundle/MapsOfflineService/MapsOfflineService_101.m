uint64_t sub_67DF70(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1120) = -1;
  v2 = *(a2 + 1120);
  if (v2 != -1)
  {
    v3 = result;
    v4 = result;
    (off_266BFA0[v2])(&v4);
    result = v3;
    *(v3 + 1120) = v2;
  }

  return result;
}

uint64_t sub_67E004(uint64_t result)
{
  if (*(result + 1120))
  {
    sub_5AF20();
  }

  return result;
}

uint64_t sub_67E020(uint64_t result)
{
  if (*(result + 1120) != 1)
  {
    sub_5AF20();
  }

  return result;
}

void sub_67E040()
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
  xmmword_27A0840 = 0u;
  *algn_27A0850 = 0u;
  dword_27A0860 = 1065353216;
  sub_3A9A34(&xmmword_27A0840, v0);
  sub_3A9A34(&xmmword_27A0840, v3);
  sub_3A9A34(&xmmword_27A0840, __p);
  sub_3A9A34(&xmmword_27A0840, v9);
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
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_67E210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27A0840);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_67E288(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 32) = 0;
  sub_2512DC(a1, &v8);
  *(a1 + 32) = a3;
  *(a1 + 24) = *a4;
  return a1;
}

void sub_67E2EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_67E308(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  sub_2512DC(a1, &v5);
  *(a1 + 32) |= a3;
}

char *sub_67E35C(uint64_t a1, char *a2)
{
  result = *a1;
  v4 = *(a1 + 8);
  if (result == v4)
  {
    if (result >= *(a1 + 16))
    {
      v8 = a1;
      result = sub_1CEE8(a1, a2);
      *(v8 + 8) = result;
    }

    else
    {
      v6 = a1;
      if (a2[23] < 0)
      {
        result = sub_325C(v4, *a2, *(a2 + 1));
      }

      else
      {
        v7 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v7;
      }

      *(v6 + 8) = v4 + 24;
      *(v6 + 8) = v4 + 24;
    }
  }

  else if (result != a2)
  {
    if (result[23] < 0)
    {
      v9 = *(a2 + 1);
      if (a2[23] >= 0)
      {
        v10 = a2[23];
      }

      else
      {
        a2 = *a2;
        v10 = v9;
      }

      return sub_13B38(result, a2, v10);
    }

    else if (a2[23] < 0)
    {
      v11 = *(a2 + 1);
      v12 = *a2;

      return sub_13A68(result, v12, v11);
    }

    else
    {
      v5 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v5;
    }
  }

  return result;
}

uint64_t sub_67E494(uint64_t a1, char *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  sub_67E35C(a1, a2);
  return a1;
}

void sub_67E4DC(_Unwind_Exception *a1)
{
  sub_540798((v1 + 3));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_67E4F8(uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = a1 + 24;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  sub_67E35C(a1, a2);
  if (v5 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(v5, *(a3 + 16), 0);
  }

  return a1;
}

void sub_67E570(_Unwind_Exception *a1)
{
  sub_540798(v2);
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_67E58C(uint64_t *a1, const void ***a2)
{
  if (a1 != a2)
  {
    sub_74300(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }
}

uint64_t sub_67E5B8(uint64_t a1, const void ***a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  if (a1 != a2)
  {
    sub_74300(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  return a1;
}

void sub_67E628(_Unwind_Exception *a1)
{
  sub_540798((v1 + 3));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_67E644(uint64_t a1, const void ***a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = a1 + 24;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  if (a1 != a2)
  {
    sub_74300(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  if (v5 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(v5, *(a3 + 16), 0);
  }

  return a1;
}

void sub_67E6E4(_Unwind_Exception *a1)
{
  sub_540798(v2);
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

char *sub_67E710@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  result = sub_67E35C(a2, a1);
  *(a2 + 64) = 0;
  return result;
}

void sub_67E760(_Unwind_Exception *a1)
{
  sub_540798((v1 + 3));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_67E77C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1CEE8(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 8), *a2, *(a2 + 8));
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 16);
      *v3 = v4;
    }

    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  return result;
}

void sub_67E814(uint64_t *a1, __int128 **a2)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 3) - 0x5555555555555555 * ((a2[1] - *a2) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < v5)
  {
    if (v5 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_93FE4(a1, v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *__p = 0u;
  *v18 = 0u;
  v19 = 1065353216;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    while (1)
    {
      sub_23914(__p, v6);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v6 += 24;
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_16;
      }
    }

    if (v6 != v7)
    {
      for (i = v6 + 24; i != v7; i += 24)
      {
        sub_23914(__p, i);
        if (v11)
        {
          if (*(v6 + 23) < 0)
          {
            operator delete(*v6);
          }

          v10 = *i;
          *(v6 + 16) = *(i + 16);
          *v6 = v10;
          v6 += 24;
          *(i + 23) = 0;
          *i = 0;
        }
      }
    }
  }

LABEL_16:
  v12 = a1[1];
  if (v6 != v12)
  {
    while (v12 != v6)
    {
      v13 = *(v12 - 1);
      v12 -= 3;
      if (v13 < 0)
      {
        operator delete(*v12);
      }
    }

    a1[1] = v6;
  }

  v14 = v18[0];
  if (v18[0])
  {
    do
    {
      v16 = *v14;
      if (*(v14 + 39) < 0)
      {
        operator delete(v14[2]);
      }

      operator delete(v14);
      v14 = v16;
    }

    while (v16);
  }

  v15 = __p[0];
  __p[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }
}

std::string *sub_67EAA4(std::string **a1, const std::string::value_type *a2)
{
  result = *a1;
  if (result != a1[1])
  {
    v4 = *(a2 + 1);
    if (a2[23] >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v5 = v4;
    }

    return std::string::append(result, a2, v5);
  }

  return result;
}

uint64_t *sub_67EAD8(uint64_t *result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      v5 = *(v2 + 23);
      if ((v5 & 0x8000000000000000) != 0)
      {
        v6 = *v2;
        v7 = *(v2 + 8);
      }

      else
      {
        v6 = v2;
        v7 = *(v2 + 23);
      }

      v8 = a2[23];
      v9 = v8 < 0;
      if (v8 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9)
      {
        v11 = *(a2 + 1);
      }

      else
      {
        v11 = a2[23];
      }

      if (v7 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v7;
      }

      v13 = (v6 + v12);
      if (v12)
      {
        v16 = *v10;
        v14 = (v10 + 1);
        v15 = v16;
        v17 = v6;
        v18 = (v6 + v12);
LABEL_19:
        while (2)
        {
          v19 = v17 + 1;
          while (*v17 != v15)
          {
            ++v17;
            ++v19;
            if (v17 == v13)
            {
              goto LABEL_32;
            }
          }

          v20 = v11 - 1;
          result = v14;
          while (v20)
          {
            if (v19 == v13)
            {
              goto LABEL_32;
            }

            v22 = *v19++;
            v21 = v22;
            v23 = *result;
            result = (result + 1);
            --v20;
            if (v21 != v23)
            {
              if (++v17 != v13)
              {
                goto LABEL_19;
              }

              goto LABEL_32;
            }
          }

          v18 = v17++;
          if (v17 != v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = v6;
      }

LABEL_32:
      v24 = &v18[-v6];
      if (v18 != v13 || v11 == 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = -1;
      }

      if ((v5 & 0x80000000) != 0)
      {
        if (*(v2 + 8) < v26)
        {
LABEL_47:
          sub_49D4();
        }
      }

      else if (v5 < v26)
      {
        goto LABEL_47;
      }

      if (v11 == -1)
      {
        if ((v5 & 0x80000000) != 0)
        {
          v27 = *v2;
          *(v2 + 8) = v26;
          *(v27 + v26) = 0;
        }

        else
        {
          *(v2 + 23) = v26 & 0x7F;
          *(v2 + v26) = 0;
        }
      }

      else
      {
        result = sub_148E0(v2, v26, v11);
      }

      v2 += 24;
    }

    while (v2 != v3);
  }

  return result;
}

_BYTE *sub_67EC44(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = sub_666FBC((a1 + 24), a2);
  result = v4 + 9;
  if (v4 + 9 != a3)
  {
    v6 = *(v4 + 95);
    v7 = *(a3 + 23);
    if (v6 < 0)
    {
      if (v7 >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      if (v7 >= 0)
      {
        v10 = *(a3 + 23);
      }

      else
      {
        v10 = a3[1];
      }

      return sub_13B38(result, v9, v10);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a3, a3[1]);
    }

    else
    {
      v8 = *a3;
      *(result + 2) = a3[2];
      *result = v8;
    }
  }

  return result;
}

_BYTE *sub_67ECF8(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = sub_666FBC((a1 + 24), a2);
  result = v4 + 5;
  if (v4 + 5 != a3)
  {
    v6 = *(v4 + 63);
    v7 = *(a3 + 23);
    if (v6 < 0)
    {
      if (v7 >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      if (v7 >= 0)
      {
        v10 = *(a3 + 23);
      }

      else
      {
        v10 = a3[1];
      }

      return sub_13B38(result, v9, v10);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a3, a3[1]);
    }

    else
    {
      v8 = *a3;
      *(result + 2) = a3[2];
      *result = v8;
    }
  }

  return result;
}

_BYTE *sub_67EDAC(uint64_t a1, uint64_t a2, const void **a3, const void **a4)
{
  v8 = sub_666FBC((a1 + 24), a2);
  v9 = (v8 + 5);
  if (v8 + 5 != a3)
  {
    v10 = *(v8 + 63);
    v11 = *(a3 + 23);
    if (v10 < 0)
    {
      if (v11 >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      if (v11 >= 0)
      {
        v14 = *(a3 + 23);
      }

      else
      {
        v14 = a3[1];
      }

      sub_13B38(v9, v13, v14);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      sub_13A68(v9, *a3, a3[1]);
    }

    else
    {
      v12 = *a3;
      *(v9 + 16) = a3[2];
      *v9 = v12;
    }
  }

  v15 = sub_666FBC((a1 + 24), a2);
  result = v15 + 9;
  if (v15 + 9 != a4)
  {
    v17 = *(v15 + 95);
    v18 = *(a4 + 23);
    if (v17 < 0)
    {
      if (v18 >= 0)
      {
        v20 = a4;
      }

      else
      {
        v20 = *a4;
      }

      if (v18 >= 0)
      {
        v21 = *(a4 + 23);
      }

      else
      {
        v21 = a4[1];
      }

      return sub_13B38(result, v20, v21);
    }

    else if ((*(a4 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a4, a4[1]);
    }

    else
    {
      v19 = *a4;
      *(result + 2) = a4[2];
      *result = v19;
    }
  }

  return result;
}

_BYTE *sub_67EEF4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t **a4, uint64_t a5)
{
  v8 = sub_666FBC((a1 + 24), a2);
  v9 = (v8 + 5);
  result = v8 + 9;
  if (v8 + 9 == a4)
  {
    goto LABEL_13;
  }

  v11 = *(a4 + 23);
  if (*(v8 + 95) < 0)
  {
    if (v11 >= 0)
    {
      v13 = a4;
    }

    else
    {
      v13 = *a4;
    }

    if (v11 >= 0)
    {
      v14 = *(a4 + 23);
    }

    else
    {
      v14 = a4[1];
    }

    result = sub_13B38(result, v13, v14);
LABEL_13:
    if (v9 == a3)
    {
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if ((*(a4 + 23) & 0x80) != 0)
  {
    result = sub_13A68(result, *a4, a4[1]);
    if (v9 == a3)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v12 = *a4;
    v8[11] = a4[2];
    *result = v12;
    if (v9 == a3)
    {
      goto LABEL_27;
    }
  }

LABEL_14:
  v15 = *(a3 + 23);
  if (*(v8 + 63) < 0)
  {
    if (v15 >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if (v15 >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = *(a3 + 1);
    }

    result = sub_13B38(v9, v17, v18);
  }

  else if ((*(a3 + 23) & 0x80) != 0)
  {
    result = sub_13A68(v9, *a3, *(a3 + 1));
  }

  else
  {
    v16 = *a3;
    v8[7] = *(a3 + 2);
    *v9 = v16;
  }

LABEL_27:
  *(v8 + 26) = *a5;
  if (v8 + 13 == a5)
  {
    return result;
  }

  v19 = *(a5 + 31);
  if (*(v8 + 135) < 0)
  {
    if (v19 >= 0)
    {
      v23 = (a5 + 8);
    }

    else
    {
      v23 = *(a5 + 8);
    }

    if (v19 >= 0)
    {
      v24 = *(a5 + 31);
    }

    else
    {
      v24 = *(a5 + 16);
    }

    result = sub_13B38((v8 + 14), v23, v24);
    v21 = (a5 + 32);
    v22 = *(a5 + 55);
    if (*(v8 + 159) < 0)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  if ((*(a5 + 31) & 0x80) == 0)
  {
    v20 = *(a5 + 8);
    v8[16] = *(a5 + 24);
    *(v8 + 7) = v20;
    v21 = (a5 + 32);
    v22 = *(a5 + 55);
    if (*(v8 + 159) < 0)
    {
      goto LABEL_43;
    }

LABEL_39:
    if ((v22 & 0x80) != 0)
    {
      return sub_13A68(v8 + 136, *(a5 + 32), *(a5 + 40));
    }

    v25 = *v21;
    v8[19] = v21[2];
    *(v8 + 17) = v25;
    return result;
  }

  result = sub_13A68(v8 + 112, *(a5 + 8), *(a5 + 16));
  v21 = (a5 + 32);
  v22 = *(a5 + 55);
  if ((*(v8 + 159) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_43:
  if ((v22 & 0x80u) == 0)
  {
    v26 = v21;
  }

  else
  {
    v26 = *(a5 + 32);
  }

  if ((v22 & 0x80u) == 0)
  {
    v27 = v22;
  }

  else
  {
    v27 = *(a5 + 40);
  }

  return sub_13B38((v8 + 17), v26, v27);
}

_BYTE *sub_67F164(_BYTE *result, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v6 = *(a4 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a4 + 8);
  }

  if (v6)
  {
    if (*result != *(result + 1))
    {
      v11 = *(a2 + 1);
      if (a2[23] >= 0)
      {
        v12 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v12 = v11;
      }

      v13 = result;
      std::string::append(*result, a2, v12);
      result = v13;
    }

    return sub_67EEF4(result, a3, a4, a5, a6);
  }

  return result;
}

_OWORD *sub_67F210(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_734C10(a4);
  if (result)
  {
    if (*a1 != *(a1 + 8))
    {
      v9 = *(a2 + 23);
      if (v9 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      std::string::append(*a1, v10, v11);
    }

    v12 = sub_666FBC((a1 + 24), a3);
    return sub_52CB8C(v12 + 5, a4);
  }

  return result;
}

_OWORD *sub_67F2AC(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (!a4 || (v6 = a2, result = sub_7345C4((a3 + 8)), a2 = v6, result))
  {
    v8 = sub_666FBC((a1 + 24), a2);
    return sub_52CB8C(v8 + 5, a3);
  }

  return result;
}

__int128 **sub_67F320@<X0>(__int128 **result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == result[1])
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else if (*(v2 + 23) < 0)
  {
    return sub_325C(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    *(a2 + 16) = *(v2 + 2);
    *a2 = v3;
  }

  return result;
}

void sub_67F384(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v3 = a2;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  if (*a1 == a1[1])
  {
    HIBYTE(v59) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else if (*(v4 + 23) < 0)
  {
    sub_325C(__p, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v59 = *(v4 + 2);
    *__p = v5;
  }

  v6 = HIBYTE(v59);
  v7 = HIBYTE(v59);
  v8 = __p[0];
  v9 = __p[1];
  v10 = __p;
  if (v59 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v59 >= 0)
  {
    v12 = HIBYTE(v59);
  }

  else
  {
    v12 = __p[1];
  }

  if (v12 <= 4)
  {
    goto LABEL_28;
  }

  v57 = v3;
  v13 = v2;
  v14 = v11 + v12;
  v15 = v11;
  while (1)
  {
    v16 = memchr(v15, 82, v12 - 4);
    if (!v16)
    {
      goto LABEL_27;
    }

    if (*v16 == 1684107090 && v16[4] == 49)
    {
      break;
    }

    v15 = (v16 + 1);
    v12 = v14 - v15;
    if (v14 - v15 <= 4)
    {
      goto LABEL_27;
    }
  }

  if (v16 == v14)
  {
LABEL_27:
    v2 = v13;
    v3 = v57;
LABEL_28:
    if (v7 >= 0)
    {
      v21 = v6;
    }

    else
    {
      v10 = v8;
      v21 = v9;
    }

    if (v21 < 4)
    {
      goto LABEL_49;
    }

LABEL_32:
    v22 = v10 + v21;
    v23 = v10;
    while (1)
    {
      v24 = memchr(v23, 82, v21 - 3);
      if (!v24)
      {
        goto LABEL_49;
      }

      if (*v24 == 1684107090)
      {
        break;
      }

      v23 = (v24 + 1);
      v21 = v22 - v23;
      if (v22 - v23 < 4)
      {
        goto LABEL_49;
      }
    }

    if (v24 != v22 && v24 - v10 != -1)
    {
      if (sub_668F0C(v2 + 3, "{Road}"))
      {
        v25 = sub_668F0C(v2 + 3, "{Road}");
        if (!v25)
        {
          goto LABEL_137;
        }

        v26 = v3[1];
        if (v26 < v3[2])
        {
          goto LABEL_66;
        }

        goto LABEL_82;
      }

      v6 = HIBYTE(v59);
      v8 = __p[0];
      v9 = __p[1];
      v7 = HIBYTE(v59);
    }

LABEL_49:
    if (v7 < 0)
    {
      v27 = v9;
    }

    else
    {
      v8 = __p;
      v27 = v6;
    }

    if (v27 < 7)
    {
      goto LABEL_84;
    }

    v28 = v8 + v27;
    v29 = v8;
    while (1)
    {
      v30 = memchr(v29, 70, v27 - 6);
      if (!v30)
      {
        goto LABEL_84;
      }

      if (*v30 == 1701147206 && *(v30 + 3) == 2036430693)
      {
        break;
      }

      v29 = (v30 + 1);
      v27 = v28 - v29;
      if (v28 - v29 < 7)
      {
        goto LABEL_84;
      }
    }

    if (v30 == v28 || v30 - v8 == -1 || !sub_668F0C(v2 + 3, "{Freeway}"))
    {
      goto LABEL_84;
    }

    v25 = sub_668F0C(v2 + 3, "{Freeway}");
    if (!v25)
    {
      goto LABEL_137;
    }

    v26 = v3[1];
    if (v26 < v3[2])
    {
      goto LABEL_66;
    }

LABEL_82:
    v32 = sub_6868D8(v3, (v25 + 5));
    goto LABEL_83;
  }

  v2 = v13;
  v3 = v57;
  if (v16 - v11 == -1)
  {
    goto LABEL_28;
  }

  if (!sub_668F0C(v2 + 3, "{Road1}"))
  {
    v6 = HIBYTE(v59);
    v8 = __p[0];
    v9 = __p[1];
    v7 = HIBYTE(v59);
    if (v59 >= 0)
    {
      v21 = HIBYTE(v59);
    }

    else
    {
      v10 = __p[0];
      v21 = __p[1];
    }

    if (v21 < 4)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  v18 = sub_668F0C(v2 + 3, "{Road1}");
  if (!v18)
  {
    goto LABEL_137;
  }

  v19 = v57[1];
  if (v19 >= v57[2])
  {
    v20 = sub_6868D8(v57, (v18 + 5));
  }

  else
  {
    sub_5139E8(v57[1], (v18 + 5));
    v20 = v19 + 152;
  }

  v57[1] = v20;
  v33 = HIBYTE(v59);
  if (v59 >= 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if (v59 < 0)
  {
    v33 = __p[1];
  }

  if (v33 >= 6)
  {
    v35 = v34 + v33;
    v36 = v34;
    while (1)
    {
      v37 = memchr(v36, 95, v33 - 5);
      if (!v37)
      {
        goto LABEL_84;
      }

      if (*v37 == 1634685535 && *(v37 + 2) == 12900)
      {
        break;
      }

      v36 = (v37 + 1);
      v33 = v35 - v36;
      if (v35 - v36 < 6)
      {
        goto LABEL_84;
      }
    }

    if (v37 != v35 && v37 - v34 != -1 && sub_668F0C(v2 + 3, "{Road2}"))
    {
      v25 = sub_668F0C(v2 + 3, "{Road2}");
      if (!v25)
      {
        goto LABEL_137;
      }

      v26 = v57[1];
      if (v26 >= v57[2])
      {
        goto LABEL_82;
      }

LABEL_66:
      sub_5139E8(v3[1], (v25 + 5));
      v32 = v26 + 152;
LABEL_83:
      v3[1] = v32;
    }
  }

LABEL_84:
  v39 = HIBYTE(v59);
  if (v59 >= 0)
  {
    v40 = __p;
  }

  else
  {
    v40 = __p[0];
  }

  if (v59 < 0)
  {
    v39 = __p[1];
  }

  if (v39 >= 9)
  {
    v41 = v40 + v39;
    v42 = v40;
    while (1)
    {
      v43 = memchr(v42, 83, v39 - 8);
      if (!v43)
      {
        goto LABEL_106;
      }

      if (*v43 == 0x74736F706E676953 && v43[8] == 49)
      {
        break;
      }

      v42 = (v43 + 1);
      v39 = v41 - v42;
      if (v41 - v42 < 9)
      {
        goto LABEL_106;
      }
    }

    if (v43 != v41 && v43 - v40 != -1 && sub_668F0C(v2 + 3, "{Signpost1}"))
    {
      v45 = sub_668F0C(v2 + 3, "{Signpost1}");
      if (!v45)
      {
        goto LABEL_137;
      }

      v46 = v3[1];
      if (v46 >= v3[2])
      {
        v47 = sub_6868D8(v3, (v45 + 5));
      }

      else
      {
        sub_5139E8(v3[1], (v45 + 5));
        v47 = v46 + 152;
      }

      v3[1] = v47;
    }
  }

LABEL_106:
  v48 = HIBYTE(v59);
  if (v59 >= 0)
  {
    v49 = __p;
  }

  else
  {
    v49 = __p[0];
  }

  if (v59 < 0)
  {
    v48 = __p[1];
  }

  if (v48 > 9)
  {
    v50 = v49 + v48;
    v51 = v49;
    while (1)
    {
      v52 = memchr(v51, 95, v48 - 9);
      if (!v52)
      {
        goto LABEL_128;
      }

      if (*v52 == 0x736F706E6769535FLL && *(v52 + 4) == 12916)
      {
        break;
      }

      v51 = (v52 + 1);
      v48 = v50 - v51;
      if (v50 - v51 < 10)
      {
        goto LABEL_128;
      }
    }

    if (v52 != v50 && v52 - v49 != -1 && sub_668F0C(v2 + 3, "{Signpost2}"))
    {
      v54 = sub_668F0C(v2 + 3, "{Signpost2}");
      if (v54)
      {
        v55 = v3[1];
        if (v55 >= v3[2])
        {
          v56 = sub_6868D8(v3, (v54 + 5));
        }

        else
        {
          sub_5139E8(v3[1], (v54 + 5));
          v56 = v55 + 152;
        }

        v3[1] = v56;
        goto LABEL_128;
      }

LABEL_137:
      sub_49EC("unordered_map::at: key not found");
    }
  }

LABEL_128:
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_67F994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 8) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_593FC8(a10);
  _Unwind_Resume(a1);
}

void sub_67FA00(__int128 **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  if (*a1 == a1[1])
  {
    HIBYTE(v34) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else if (*(v4 + 23) < 0)
  {
    sub_325C(__p, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v34 = *(v4 + 2);
    *__p = v5;
  }

  v6 = HIBYTE(v34);
  v7 = __p;
  if (v34 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v34 < 0)
  {
    v6 = __p[1];
  }

  if (v6 >= 7)
  {
    v9 = v8 + v6;
    v10 = v8;
    while (1)
    {
      v11 = memchr(v10, 83, v6 - 6);
      if (!v11)
      {
        goto LABEL_25;
      }

      if (*v11 == 1701406803 && *(v11 + 3) == 828664933)
      {
        break;
      }

      v10 = (v11 + 1);
      v6 = v9 - v10;
      if (v9 - v10 < 7)
      {
        goto LABEL_25;
      }
    }

    if (v11 != v9 && v11 - v8 != -1 && sub_668F0C(a1 + 3, "{Shield1}"))
    {
      v13 = sub_668F0C(a1 + 3, "{Shield1}");
      if (!v13)
      {
        goto LABEL_76;
      }

      sub_67FDE8(a2, (v13 + 13));
    }
  }

LABEL_25:
  v14 = HIBYTE(v34);
  if (v34 < 0)
  {
    v7 = __p[0];
    v14 = __p[1];
  }

  if (v14 > 7)
  {
    v15 = v7 + v14;
    v16 = v7;
    while (1)
    {
      v17 = memchr(v16, 95, v14 - 7);
      if (!v17)
      {
        goto LABEL_38;
      }

      if (*v17 == 0x32646C656968535FLL)
      {
        break;
      }

      v16 = (v17 + 1);
      v14 = v15 - v16;
      if (v15 - v16 < 8)
      {
        goto LABEL_38;
      }
    }

    if (v17 != v15 && v17 - v7 != -1 && sub_668F0C(a1 + 3, "{Shield2}"))
    {
      v18 = sub_668F0C(a1 + 3, "{Shield2}");
      if (!v18)
      {
        goto LABEL_76;
      }

      sub_67FDE8(a2, (v18 + 13));
    }
  }

LABEL_38:
  v19 = HIBYTE(v34);
  v20 = __p;
  if (v34 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if (v34 < 0)
  {
    v19 = __p[1];
  }

  if (v19 >= 13)
  {
    v22 = v21 + v19;
    v23 = v21;
    while (1)
    {
      v24 = memchr(v23, 84, v19 - 12);
      if (!v24)
      {
        goto LABEL_57;
      }

      if (*v24 == 0x6853647261776F54 && *(v24 + 5) == 0x31646C6569685364)
      {
        break;
      }

      v23 = (v24 + 1);
      v19 = v22 - v23;
      if (v22 - v23 < 13)
      {
        goto LABEL_57;
      }
    }

    if (v24 != v22 && v24 - v21 != -1 && sub_668F0C(a1 + 3, "{TowardShield1}"))
    {
      v26 = sub_668F0C(a1 + 3, "{TowardShield1}");
      if (!v26)
      {
        goto LABEL_76;
      }

      sub_67FDE8(a2, (v26 + 13));
    }
  }

LABEL_57:
  v27 = HIBYTE(v34);
  if (v34 < 0)
  {
    v20 = __p[0];
    v27 = __p[1];
  }

  if (v27 > 13)
  {
    v28 = v20 + v27;
    v29 = v20;
    while (1)
    {
      v30 = memchr(v29, 95, v27 - 13);
      if (!v30)
      {
        goto LABEL_73;
      }

      if (*v30 == 0x53647261776F545FLL && *(v30 + 6) == 0x32646C6569685364)
      {
        break;
      }

      v29 = (v30 + 1);
      v27 = v28 - v29;
      if (v28 - v29 < 14)
      {
        goto LABEL_73;
      }
    }

    if (v30 != v28 && v30 - v20 != -1 && sub_668F0C(a1 + 3, "{TowardShield2}"))
    {
      v32 = sub_668F0C(a1 + 3, "{TowardShield2}");
      if (v32)
      {
        sub_67FDE8(a2, (v32 + 13));
        goto LABEL_73;
      }

LABEL_76:
      sub_49EC("unordered_map::at: key not found");
    }
  }

LABEL_73:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_67FDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_67FEE0(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_67FDE8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_686C54(a1, a2);
    a1[1] = result;
  }

  else
  {
    *v3 = *a2;
    if (*(a2 + 31) < 0)
    {
      v6 = a2;
      sub_325C((v3 + 8), *(a2 + 8), *(a2 + 16));
      a2 = v6;
    }

    else
    {
      v4 = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 8) = v4;
    }

    if (*(a2 + 55) < 0)
    {
      sub_325C((v3 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v7 = *(a2 + 32);
      *(v3 + 48) = *(a2 + 48);
      *(v3 + 32) = v7;
    }

    result = v3 + 56;
    a1[1] = v3 + 56;
    a1[1] = v3 + 56;
  }

  return result;
}

void sub_67FEB0(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
    *(v1 + 8) = v3;
    _Unwind_Resume(exception_object);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void **sub_67FEE0(void **a1)
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
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 6));
        }
      }

      else if (*(v3 - 25) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 7;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_67FF70(__int128 **a1, __int128 **a2)
{
  sub_67F384(a1, &v49);
  sub_67F384(a2, &v47);
  sub_67FA00(a1, &v45);
  sub_67FA00(a2, &v43);
  v4 = v50;
  v5 = v49;
  if (v49 != v50 && v47 != v48)
  {
    *v40 = 0u;
    *v41 = 0u;
    v42 = 1065353216;
    *__p = 0u;
    *v38 = 0u;
    v39 = 1065353216;
    do
    {
      sub_23914(v40, v5);
      sub_23914(__p, v5 + 128);
      v5 += 152;
LABEL_8:
      ;
    }

    while (v5 != v4);
    v8 = v47;
    v9 = v48;
    if (v47 == v48)
    {
LABEL_13:
      v13 = v45;
      v14 = v46;
      if (v45 == v46 || (v15 = v44, v43 == v44))
      {
LABEL_15:
        v6 = 0;
        v16 = v38[0];
        if (!v38[0])
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }

      while (1)
      {
        v17 = v43;
        if (v43 != v15)
        {
          while (!sub_734A5C(v17, v13))
          {
            v17 += 56;
            if (v17 == v15)
            {
              v17 = v15;
              break;
            }
          }

          v15 = v44;
          if (v17 != v44)
          {
            break;
          }
        }

        v13 += 56;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      while (1)
      {
        sub_23914(v40, v8);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v11 = v8 + 128;
        sub_23914(__p, v11);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v8 = v11 + 24;
        if (v8 == v9)
        {
          goto LABEL_13;
        }
      }
    }

    v6 = 1;
    v16 = v38[0];
    if (!v38[0])
    {
LABEL_24:
      v18 = __p[0];
      __p[0] = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v19 = v41[0];
      if (v41[0])
      {
        do
        {
          v24 = *v19;
          if (*(v19 + 39) < 0)
          {
            operator delete(v19[2]);
          }

          operator delete(v19);
          v19 = v24;
        }

        while (v24);
      }

      v20 = v40[0];
      v40[0] = 0;
      if (v20)
      {
        operator delete(v20);
      }

      v7 = v43;
      goto LABEL_30;
    }

    do
    {
LABEL_34:
      v23 = *v16;
      if (*(v16 + 39) < 0)
      {
        operator delete(v16[2]);
      }

      operator delete(v16);
      v16 = v23;
    }

    while (v23);
    goto LABEL_24;
  }

  v6 = 0;
  v7 = v43;
  if (v45 != v46 && v43 != v44)
  {
    *v40 = 0u;
    *v41 = 0u;
    v42 = 1065353216;
    *__p = 0u;
    *v38 = 0u;
    v39 = 1065353216;
    goto LABEL_8;
  }

LABEL_30:
  if (!v7)
  {
    goto LABEL_46;
  }

  v21 = v44;
  v22 = v7;
  if (v44 != v7)
  {
    while (1)
    {
      if (*(v21 - 1) < 0)
      {
        operator delete(*(v21 - 3));
        if ((*(v21 - 25) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

LABEL_43:
        operator delete(*(v21 - 6));
        v21 -= 7;
        if (v21 == v7)
        {
LABEL_44:
          v22 = v43;
          break;
        }
      }

      else
      {
        if (*(v21 - 25) < 0)
        {
          goto LABEL_43;
        }

LABEL_40:
        v21 -= 7;
        if (v21 == v7)
        {
          goto LABEL_44;
        }
      }
    }
  }

  v44 = v7;
  operator delete(v22);
LABEL_46:
  v25 = v45;
  if (!v45)
  {
    goto LABEL_56;
  }

  v26 = v46;
  v27 = v45;
  if (v46 != v45)
  {
    while (1)
    {
      if (*(v26 - 1) < 0)
      {
        operator delete(*(v26 - 3));
        if ((*(v26 - 25) & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

LABEL_53:
        operator delete(*(v26 - 6));
        v26 -= 7;
        if (v26 == v25)
        {
LABEL_54:
          v27 = v45;
          break;
        }
      }

      else
      {
        if (*(v26 - 25) < 0)
        {
          goto LABEL_53;
        }

LABEL_50:
        v26 -= 7;
        if (v26 == v25)
        {
          goto LABEL_54;
        }
      }
    }
  }

  v46 = v25;
  operator delete(v27);
LABEL_56:
  v28 = v47;
  if (!v47)
  {
    goto LABEL_73;
  }

  v29 = v48;
  v30 = v47;
  if (v48 != v47)
  {
    while (1)
    {
      if (*(v29 - 1) < 0)
      {
        operator delete(*(v29 - 3));
        if (*(v29 - 33) < 0)
        {
          goto LABEL_67;
        }

LABEL_63:
        if ((*(v29 - 57) & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

LABEL_68:
        operator delete(*(v29 - 10));
        if (*(v29 - 97) < 0)
        {
          goto LABEL_59;
        }

LABEL_69:
        v31 = v29 - 19;
        if ((*(v29 - 129) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

LABEL_70:
        operator delete(*v31);
        v29 = v31;
        if (v31 == v28)
        {
LABEL_71:
          v30 = v47;
          break;
        }
      }

      else
      {
        if ((*(v29 - 33) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_67:
        operator delete(*(v29 - 7));
        if (*(v29 - 57) < 0)
        {
          goto LABEL_68;
        }

LABEL_64:
        if ((*(v29 - 97) & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

LABEL_59:
        operator delete(*(v29 - 15));
        v31 = v29 - 19;
        if (*(v29 - 129) < 0)
        {
          goto LABEL_70;
        }

LABEL_60:
        v29 = v31;
        if (v31 == v28)
        {
          goto LABEL_71;
        }
      }
    }
  }

  v48 = v28;
  operator delete(v30);
LABEL_73:
  v32 = v49;
  if (v49)
  {
    v33 = v50;
    v34 = v49;
    if (v50 == v49)
    {
LABEL_89:
      v50 = v32;
      operator delete(v34);
      return v6;
    }

    while (1)
    {
      if (*(v33 - 1) < 0)
      {
        operator delete(*(v33 - 3));
        if (*(v33 - 33) < 0)
        {
          goto LABEL_84;
        }

LABEL_80:
        if ((*(v33 - 57) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_85:
        operator delete(*(v33 - 10));
        if (*(v33 - 97) < 0)
        {
          goto LABEL_76;
        }

LABEL_86:
        v35 = v33 - 19;
        if ((*(v33 - 129) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

LABEL_87:
        operator delete(*v35);
        v33 = v35;
        if (v35 == v32)
        {
LABEL_88:
          v34 = v49;
          goto LABEL_89;
        }
      }

      else
      {
        if ((*(v33 - 33) & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

LABEL_84:
        operator delete(*(v33 - 7));
        if (*(v33 - 57) < 0)
        {
          goto LABEL_85;
        }

LABEL_81:
        if ((*(v33 - 97) & 0x80000000) == 0)
        {
          goto LABEL_86;
        }

LABEL_76:
        operator delete(*(v33 - 15));
        v35 = v33 - 19;
        if (*(v33 - 129) < 0)
        {
          goto LABEL_87;
        }

LABEL_77:
        v33 = v35;
        if (v35 == v32)
        {
          goto LABEL_88;
        }
      }
    }
  }

  return v6;
}

void sub_680434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_23D9C(&a9);
  sub_23D9C(&a15);
  sub_67FEE0(&a20);
  JUMPOUT(0x68045CLL);
}

uint64_t sub_680484(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  result = sub_5F0850(a1, a2);
  *(result + 72) = a3;
  v7 = a4[1];
  *(result + 80) = *a4;
  *(result + 88) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 96) = 0;
  *(result + 98) = 0;
  return result;
}

uint64_t sub_6804D0(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t *a5)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 95) = 0;
  sub_67E35C(a1, a2);
  if (a1 + 24 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(a1 + 24, *(a3 + 16), 0);
  }

  *(a1 + 72) = a4;
  v9 = *a5;
  v10 = a5[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 88);
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

void sub_680628(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_53A58C(v1);
  _Unwind_Resume(a1);
}

void sub_680648(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  if (v3 != a2)
  {
    *(a1 + 56) = *(a2 + 32);
    sub_5FA69C(v3, *(a2 + 16), 0);
  }
}

void sub_680678(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 88);
  *(a1 + 80) = v3;
  *(a1 + 88) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t sub_680710(uint64_t a1, const void ***a2, uint64_t a3, int a4, uint64_t *a5)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 95) = 0;
  if (a1 != a2)
  {
    sub_74300(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  if (a1 + 24 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(a1 + 24, *(a3 + 16), 0);
  }

  *(a1 + 72) = a4;
  v9 = *a5;
  v10 = a5[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 88);
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

void sub_680890(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_53A58C(v1);
  _Unwind_Resume(a1);
}

void sub_680958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  sub_53A58C(v9);
  _Unwind_Resume(a1);
}

void sub_680998(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 95) = 0;
  sub_67E35C(a1, a2);
  if (a1 + 24 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(a1 + 24, *(a3 + 16), 0);
  }

  *(a1 + 72) = a4;
  operator new();
}

void sub_680ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  sub_1F1A8(v10);
  sub_53A58C(v9);
  _Unwind_Resume(a1);
}

void sub_680B0C(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_53A58C(v1);
  _Unwind_Resume(a1);
}

void sub_680B30(int a1@<W0>, uint64_t a2@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  *__p = 0u;
  DWORD2(v14) = 1065353216;
  v15 = 1;
  v3 = sub_5F0850(a2, v11);
  *(v3 + 72) = a1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 95) = 0;
  v4 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p[1];
  __p[1] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v11[0];
  if (v11[0])
  {
    v8 = v11[1];
    v9 = v11[0];
    if (v11[1] != v11[0])
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v11[0];
    }

    v11[1] = v7;
    operator delete(v9);
  }
}

void sub_680C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a11);
  _Unwind_Resume(a1);
}

void sub_680C2C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_74300(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 56) = *(a2 + 56);
    sub_5FA69C(a1 + 24, *(a2 + 40), 0);
  }

  *(a1 + 64) = *(a2 + 64);
}

void sub_680CB0(uint64_t *a1, char *a2)
{
  v3 = a1;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_353184(&__p, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = __p;
  v5 = v33;
  if (__p != v33)
  {
    v28 = v3;
    while (1)
    {
      if (*(v4 + 23) < 0)
      {
        sub_325C(&v31, *v4, v4[1]);
      }

      else
      {
        v6 = *v4;
        v31.__r_.__value_.__r.__words[2] = v4[2];
        *&v31.__r_.__value_.__l.__data_ = v6;
      }

      v30 = 0;
      __s[0] = 0;
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v31;
      }

      else
      {
        v8 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      v9 = a2[23];
      if (v9 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9 >= 0)
      {
        v11 = a2[23];
      }

      else
      {
        v11 = *(a2 + 1);
      }

      if (v11)
      {
        if (size >= v11)
        {
          v12 = v8 + size;
          v13 = *v10;
          v14 = v8;
          do
          {
            v15 = size - v11;
            if (v15 == -1)
            {
              break;
            }

            v16 = memchr(v14, v13, v15 + 1);
            if (!v16)
            {
              break;
            }

            v17 = v16;
            if (!memcmp(v16, v10, v11))
            {
              if (v17 != v12)
              {
                v18 = v17 - v8;
                if (v17 - v8 != -1)
                {
                  goto LABEL_27;
                }
              }

              break;
            }

            v14 = (v17 + 1);
            size = v12 - (v17 + 1);
          }

          while (size >= v11);
        }
      }

      else
      {
        v18 = 0;
LABEL_27:
        std::string::replace(&v31, v18, v11, __s, 0);
        if (v30 < 0)
        {
          operator delete(*__s);
        }
      }

      v19 = v36;
      if (v36 >= v37)
      {
        v36 = sub_1CEE8(&v35, &v31);
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_325C(v36, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
          v36 = v19 + 24;
          if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_3;
          }

LABEL_34:
          operator delete(v31.__r_.__value_.__l.__data_);
          goto LABEL_3;
        }

        v20 = *&v31.__r_.__value_.__l.__data_;
        *(v36 + 2) = *(&v31.__r_.__value_.__l + 2);
        *v19 = v20;
        v36 = v19 + 24;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_34;
        }
      }

LABEL_3:
      v4 += 3;
      if (v4 == v5)
      {
        v4 = __p;
        v3 = v28;
        break;
      }
    }
  }

  if (v4)
  {
    v21 = v33;
    v22 = v4;
    if (v33 != v4)
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

      while (v21 != v4);
      v22 = __p;
    }

    v33 = v4;
    operator delete(v22);
  }

  if (&v35 != v3)
  {
    sub_74300(v3, v35, v36, 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3));
  }

  v24 = v35;
  if (v35)
  {
    v25 = v36;
    v26 = v35;
    if (v36 != v35)
    {
      do
      {
        v27 = *(v25 - 1);
        v25 -= 3;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = v35;
    }

    v36 = v24;
    operator delete(v26);
  }
}

void sub_680F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_680F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a23);
  sub_1A104(&a26);
  _Unwind_Resume(a1);
}

void sub_681008(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_353184(a2, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
}

uint64_t sub_681038@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 88);
  *a2 = *(result + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_681054(_BYTE *a1)
{
  if (a1[96])
  {
    return 1;
  }

  if (a1[97])
  {
    return 1;
  }

  return a1[98] & 1;
}

BOOL sub_6810A0(__int128 **a1)
{
  v1 = *a1;
  if (*a1 == a1[1])
  {
    HIBYTE(v10) = 0;
    LOBYTE(__p[0]) = 0;
    v4 = 0;
    goto LABEL_13;
  }

  if (*(v1 + 23) < 0)
  {
    v7 = a1;
    sub_325C(__p, *v1, *(v1 + 1));
    a1 = v7;
    v8 = HIBYTE(v10);
    v4 = SHIBYTE(v10);
    if (v10 < 0)
    {
      v8 = __p[1];
    }

    if (!v8)
    {
LABEL_13:
      v5 = 0;
      if (v4 < 0)
      {
        goto LABEL_14;
      }

      return v5;
    }
  }

  else
  {
    v2 = *v1;
    v10 = *(v1 + 2);
    *__p = v2;
    v3 = HIBYTE(v10);
    v4 = SHIBYTE(v10);
    if (v10 < 0)
    {
      v3 = *(&v2 + 1);
    }

    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v5 = *(a1 + 18) != 0;
  if ((v4 & 0x80000000) == 0)
  {
    return v5;
  }

LABEL_14:
  operator delete(__p[0]);
  return v5;
}

BOOL sub_681188(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  if (*v1 == v1[1])
  {
    HIBYTE(v11) = 0;
    LOBYTE(__p[0]) = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (*(v2 + 23) < 0)
  {
    v7 = a1;
    sub_325C(__p, *v2, *(v2 + 1));
    a1 = v7;
    v8 = HIBYTE(v11);
    v5 = SHIBYTE(v11);
    if (v11 < 0)
    {
      v8 = __p[1];
    }

    if (!v8)
    {
LABEL_15:
      result = 0;
      if (v5 < 0)
      {
        goto LABEL_16;
      }

      return result;
    }
  }

  else
  {
    v3 = *v2;
    v11 = *(v2 + 2);
    *__p = v3;
    v4 = HIBYTE(v11);
    v5 = SHIBYTE(v11);
    if (v11 < 0)
    {
      v4 = *(&v3 + 1);
    }

    if (!v4)
    {
      goto LABEL_15;
    }
  }

  result = *(a1 + 72) != 0;
  if (v5 < 0)
  {
LABEL_16:
    v9 = result;
    operator delete(__p[0]);
    return v9;
  }

  return result;
}

uint64_t sub_68128C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    return 1;
  }

  v3 = *v1;
  if (*v1 == v1[1])
  {
    HIBYTE(v14) = 0;
    LOBYTE(__p[0]) = 0;
    v6 = 0;
    goto LABEL_18;
  }

  if ((*(v3 + 23) & 0x80000000) == 0)
  {
    v4 = *v3;
    v14 = *(v3 + 2);
    *__p = v4;
    v5 = HIBYTE(v14);
    v6 = SHIBYTE(v14);
    if (v14 < 0)
    {
      v5 = *(&v4 + 1);
    }

    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_10:
    v8 = *(a1 + 72) != 0;
    if (v6 < 0)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  sub_325C(__p, *v3, *(v3 + 1));
  v12 = HIBYTE(v14);
  v6 = SHIBYTE(v14);
  if (v14 < 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_18:
  v8 = 0;
  if (v6 < 0)
  {
LABEL_19:
    operator delete(__p[0]);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (!v8)
  {
    return 1;
  }

LABEL_12:
  v9 = *(a1 + 72);
  v10 = v9 > 0x13;
  v11 = 0xAC000u >> v9;
  if (v10)
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

BOOL sub_6813B0(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 - 5 >= 2)
  {
    v7 = v1 > 0x10;
    v8 = (1 << v1) & 0x10300;
    return !v7 && v8 != 0;
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (*v2 == v2[1])
  {
    HIBYTE(v22) = 0;
    LOBYTE(__p[0]) = 0;
    v6 = 0;
    goto LABEL_33;
  }

  if ((*(v3 + 23) & 0x80000000) == 0)
  {
    v4 = *v3;
    v22 = *(v3 + 2);
    *__p = v4;
    v5 = HIBYTE(v22);
    v6 = SHIBYTE(v22);
    if (v22 < 0)
    {
      v5 = *(&v4 + 1);
    }

    if (!v5)
    {
      goto LABEL_33;
    }

LABEL_17:
    v10 = *(a1 + 72) != 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v18 = a1;
  sub_325C(__p, *v3, *(v3 + 1));
  a1 = v18;
  v19 = HIBYTE(v22);
  v6 = SHIBYTE(v22);
  if (v22 < 0)
  {
    v19 = __p[1];
  }

  if (v19)
  {
    goto LABEL_17;
  }

LABEL_33:
  v10 = 0;
  if (v6 < 0)
  {
LABEL_18:
    v11 = a1;
    operator delete(__p[0]);
    a1 = v11;
  }

LABEL_19:
  if (v10)
  {
    v10 = -1431655765 * ((*(a1 + 8) - *a1) >> 3);
    v13 = *(a1 + 80);
    v12 = *(a1 + 88);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      do
      {
        v15 = *v13;
        v14 = v13[1];
        v17 = v13 + 10;
        v13 = v13[10];
        v16 = v17[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 = -1431655765 * ((v14 - v15) >> 3) * v10;
        v12 = v16;
      }

      while (v13);
    }

    else
    {
      v16 = v12;
    }

    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  return v10;
}

void *sub_6815F8(uint64_t a1)
{
  v1 = *(a1 + 72) - 17;
  if (v1 > 2)
  {
    return &unk_229D970;
  }

  else
  {
    return *(&off_266C050 + v1);
  }
}

void *sub_681624(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

BOOL sub_68163C(void *a1)
{
  if (a1[2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (*a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return *a1 >= a1[1];
}

float64x2_t sub_681678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  result = vnegq_f64(v4);
  *(a1 + 24) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_681698(uint64_t result, uint64_t a2)
{
  if ((*(result + 48) & 1) == 0)
  {
    *(result + 48) = 1;
  }

  *(result + 40) = a2;
  return result;
}

int8x16_t sub_6816B0(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = vld1q_dup_f64(v1);
  result = vbicq_s8(vsubq_s64(v2, *a1), vcgtq_s64(*a1, v2));
  *(a1 + 24) = result;
  return result;
}

BOOL sub_6816DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  return v3 != 0x7FFFFFFFFFFFFFFFLL && v3 >= v1;
}

uint64_t sub_681738(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_5ED0A8(a1, i))
    {
      i -= 13;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void *sub_6817B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[6] = a3;
  result[7] = a4;
  result[5] = a2;
  return result;
}

uint64_t sub_6817C0(uint64_t result, uint64_t a2)
{
  if ((*(result + 88) & 1) == 0)
  {
    *(result + 88) = 1;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_6817E8(void *a1, uint64_t a2)
{
  v7 = a1[1];
  v5 = a1[2];
    ;
  }

  a1[2] = v7;
  if (v7 >= a1[3])
  {
    result = sub_5CE200(i, a2);
    a1[2] = result;
  }

  else
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 64) = *(a2 + 64);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    *(v7 + 88) = 0;
    *(v7 + 72) = *(a2 + 72);
    v8 = *(a2 + 96);
    *(v7 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(v7 + 96) = v8;
    v9 = *(a2 + 104);
    *(v7 + 108) = *(a2 + 108);
    *(v7 + 104) = v9;
    v10 = *(a2 + 112);
    *(v7 + 128) = *(a2 + 128);
    *(v7 + 112) = v10;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v11 = *(a2 + 136);
    *(v7 + 152) = *(a2 + 152);
    *(v7 + 136) = v11;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    result = v7 + 160;
    a1[2] = v7 + 160;
  }

  return result;
}

__n128 sub_681930(void *a1, __n128 *a2)
{
  v4 = (a1 + 1);
  v5 = a1[1];
  if (v5)
  {
    v6 = a1[2];
    v7 = v5;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_53A868(v6 - 160);
      }

      while (v6 != v5);
      v7 = *v4;
    }

    a1[2] = v5;
    operator delete(v7);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_6819B8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 152) = *(a2 + 4);
  *(a1 + 136) = v5;
  *(a1 + 120) = v4;
  if ((a1 + 120) != a2)
  {
    sub_4D88D0((a1 + 160), *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 4);
    sub_4D88D0((a1 + 184), *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 4);
  }

  result = *(a2 + 88);
  v7 = *(a2 + 120);
  *(a1 + 224) = *(a2 + 104);
  *(a1 + 240) = v7;
  *(a1 + 208) = result;
  return result;
}

__n128 sub_681A38(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[17].n128_u64[0] = a2[1].n128_u64[0];
  a1[16] = result;
  return result;
}

uint64_t sub_681A64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 304);
  if (v3 >= *(a1 + 312))
  {
    result = sub_686F34(a1 + 296, a2);
    *(a1 + 304) = result;
  }

  else
  {
    sub_5F0850(*(a1 + 304), a2);
    *(v3 + 72) = *(a2 + 72);
    v5 = *(a2 + 88);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 88) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 96);
    *(v3 + 98) = *(a2 + 98);
    *(v3 + 96) = v6;
    result = v3 + 104;
    *(a1 + 304) = v3 + 104;
    *(a1 + 304) = v3 + 104;
  }

  return result;
}

void sub_681B08(uint64_t a1, int *a2)
{
  sub_680B30(*a2, v20);
  v3 = *(a1 + 304);
  if (v3 >= *(a1 + 312))
  {
    v9 = sub_6872EC(a1 + 296, v20);
    v10 = *(&v29 + 1);
    *(a1 + 304) = v11;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v9);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = *v20;
    v20[0] = 0;
    v20[1] = 0;
    v4 = __p;
    __p = 0;
    *(v3 + 16) = v21;
    *(v3 + 24) = v4;
    v5 = v24;
    *(v3 + 32) = v23;
    v21 = 0;
    v23 = 0;
    *(v3 + 40) = v5;
    v6 = v25;
    *(v3 + 48) = v25;
    *(v3 + 56) = v26;
    if (v6)
    {
      v7 = v5[1];
      v8 = *(v3 + 32);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v7 >= v8)
        {
          v7 %= v8;
        }
      }

      else
      {
        v7 &= v8 - 1;
      }

      v4[v7] = v3 + 40;
      v24 = 0;
      v25 = 0;
    }

    *(v3 + 64) = v27;
    *(v3 + 72) = v28;
    *(v3 + 80) = v29;
    v29 = 0uLL;
    v12 = v31;
    *(v3 + 96) = v30;
    *(v3 + 98) = v12;
    *(a1 + 304) = v3 + 104;
  }

  v13 = v24;
  if (v24)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20[0];
  if (v20[0])
  {
    v17 = v20[1];
    v18 = v20[0];
    if (v20[1] != v20[0])
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
      v18 = v20[0];
    }

    v20[1] = v16;
    operator delete(v18);
  }
}

char *sub_681CEC(uint64_t a1, uint64_t a2)
{
  result = (a1 + 328);
  if (result != a2)
  {
    return sub_146EC(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  return result;
}

__n128 sub_681D40@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 56);
  return result;
}

uint64_t sub_681DB8(void *a1)
{
  if (a1[7] == 0x7FFFFFFFFFFFFFFFLL || (v1 = a1[5], v1 == 0x7FFFFFFFFFFFFFFFLL) || v1 < a1[6])
  {
    v1 = a1[13];
    if (v1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_681DF4(uint64_t a1)
{
  if (*(a1 + 112) <= 0x7FFFFFFFFFFFFFFEuLL)
  {
    return *(a1 + 112);
  }

  else
  {
    return 0;
  }
}

BOOL sub_681E18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 >= 0x37;
  v3 = v1 - 55;
  return v2 && v3 <= 0x22 && ((1 << v3) & 0x7FFFFF80CLL) == 0;
}

BOOL sub_681EB0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v3 = sub_4D1F6C(v1);
    if (v3)
    {
      break;
    }

    v1 += 20;
  }

  while (v1 != v2);
  return !v3;
}

uint64_t sub_681F18(uint64_t a1, uint64_t a2)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *(a1 + 40) = v5;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FFFFFFF;
  *(a1 + 104) = v5;
  *(a1 + 120) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 132) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 152) = 0x8000000080000000;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 212) = 0x8000000080000000;
  *(a1 + 220) = 0x7FFFFFFF;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_2297C00;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 260) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 1;
  v6 = (a1 + 456);
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 1065353216;
  *(a1 + 520) = 1;
  sub_64B998(a1 + 528);
  sub_64B998(a1 + 688);
  *(a1 + 848) = 0;
  v7 = *(a1 + 304);
  if (v7 >= *(a1 + 312))
  {
    v10 = sub_686F34(a1 + 296, a2);
  }

  else
  {
    sub_5F0850(*(a1 + 304), a2);
    *(v7 + 72) = *(a2 + 72);
    v8 = *(a2 + 88);
    *(v7 + 80) = *(a2 + 80);
    *(v7 + 88) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(a2 + 96);
    *(v7 + 98) = *(a2 + 98);
    *(v7 + 96) = v9;
    v10 = v7 + 104;
    *(a1 + 304) = v7 + 104;
  }

  *(a1 + 304) = v10;
  if (v6 != a2)
  {
    sub_74300(v6, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 512) = *(a2 + 56);
    sub_5FA69C(a1 + 480, *(a2 + 40), 0);
  }

  *(a1 + 520) = *(a2 + 64);
  return a1;
}

void sub_682104(_Unwind_Exception *a1)
{
  *(v1 + 304) = v3;
  sub_649AE4((v1 + 848));
  sub_53A868(v1 + 688);
  sub_53A868(v1 + 528);
  sub_53A58C(v2);
  sub_53A58C((v1 + 384));
  sub_55D550(v1);
  _Unwind_Resume(a1);
}

void sub_68215C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 456);
  if (v4 != a2)
  {
    sub_74300(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 512) = *(a2 + 56);
    sub_5FA69C(a1 + 480, *(a2 + 40), 0);
  }

  *(a1 + 520) = *(a2 + 64);
}

void sub_6821CC(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 384);
  if (v4 != a2)
  {
    sub_74300(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 440) = *(a2 + 56);
    sub_5FA69C(a1 + 408, *(a2 + 40), 0);
  }

  *(a1 + 448) = *(a2 + 64);
}

void *sub_682344@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[57];
  if (v2 == result[58])
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else if (*(v2 + 23) < 0)
  {
    return sub_325C(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    *(a2 + 16) = *(v2 + 2);
    *a2 = v3;
  }

  return result;
}

void *sub_682394(uint64_t a1)
{
  if (*(a1 + 848))
  {
    return *(a1 + 848);
  }

  else
  {
    return &unk_229D988;
  }
}

BOOL sub_6823AC(uint64_t a1)
{
  if (*(a1 + 32) != 26 || *(a1 + 384) == *(a1 + 392) || *(a1 + 456) == *(a1 + 464))
  {
    return 0;
  }

  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v4 = sub_4D1F6C(v1);
    if (v4)
    {
      break;
    }

    v1 += 20;
  }

  while (v1 != v2);
  if (v4)
  {
    return 0;
  }

  if (sub_4D1F6C((a1 + 688)))
  {
    return !sub_4D1F6C((a1 + 528));
  }

  return 1;
}

uint64_t sub_682494(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vnegq_f64(v6);
  *(a1 + 40) = v7;
  *(a1 + 56) = v7;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FFFFFFF;
  *(a1 + 104) = v7;
  *(a1 + 120) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 132) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 152) = 0x8000000080000000;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 212) = 0x8000000080000000;
  *(a1 + 220) = 0x7FFFFFFF;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_2297C00;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 260) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 380) = -1;
  *(a1 + 384) = -1;
  *(a1 + 392) = a3;
  *(a1 + 396) = a5;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = a4;
  *(a1 + 428) = xmmword_229D920;
  *(a1 + 304) = sub_686F34(a1 + 296, a2);
  return a1;
}

void sub_6825BC(_Unwind_Exception *a1)
{
  v3 = v1[50];
  if (v3)
  {
    v1[51] = v3;
    operator delete(v3);
  }

  sub_55D550(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6825E8(uint64_t a1, void ****a2, int a3, int a4, int a5)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  v6 = a1 + 260;
  *(a1 + 16) = 0u;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  *(a1 + 40) = v8;
  *(a1 + 56) = v8;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FFFFFFF;
  *(a1 + 104) = v8;
  *(a1 + 120) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 132) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 152) = 0x8000000080000000;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 212) = 0x8000000080000000;
  *(a1 + 220) = 0x7FFFFFFF;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_2297C00;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 260) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  v9 = a1 + 296;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 380) = -1;
  *(a1 + 384) = -1;
  *(a1 + 392) = a3;
  *(a1 + 396) = a5;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = a4;
  *(v6 + 168) = xmmword_229D920;
  if (v9 != a2)
  {
    sub_5FA1C0(v9, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * (a2[1] - *a2));
  }

  return a1;
}

void sub_682738(_Unwind_Exception *a1)
{
  v3 = v1[50];
  if (v3)
  {
    v1[51] = v3;
    operator delete(v3);
  }

  sub_55D550(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_682774(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, int a6)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  *(a1 + 40) = v9;
  *(a1 + 56) = v9;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FFFFFFF;
  *(a1 + 104) = v9;
  *(a1 + 120) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 132) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 152) = 0x8000000080000000;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 212) = 0x8000000080000000;
  *(a1 + 220) = 0x7FFFFFFF;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_2297C00;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 260) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 380) = -1;
  *(a1 + 384) = -1;
  *(a1 + 392) = a4;
  *(a1 + 396) = a6;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = a5;
  *(a1 + 428) = xmmword_229D920;
  *(a1 + 304) = sub_686F34(a1 + 296, a2);
  *(a1 + 368) = *a3;
  return a1;
}

void sub_6828A8(_Unwind_Exception *a1)
{
  v3 = v1[50];
  if (v3)
  {
    v1[51] = v3;
    operator delete(v3);
  }

  sub_55D550(v1);
  _Unwind_Resume(a1);
}

void sub_6828DC(void *a1, int a2, int a3, char a4)
{
  v5 = a1[51];
  v6 = a1[52];
  if (v5 >= v6)
  {
    v8 = a1[50];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      sub_1794();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 4 * ((v5 - v8) >> 2);
    *v12 = a2;
    *(v12 + 4) = a3;
    *(v12 + 8) = a4;
    v7 = v12 + 12;
    v13 = (v12 - (v5 - v8));
    memcpy(v13, v8, v5 - v8);
    a1[50] = v13;
    a1[51] = v7;
    a1[52] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v5 = a2;
    *(v5 + 4) = a3;
    v7 = v5 + 12;
    *(v5 + 8) = a4;
  }

  a1[51] = v7;
}

uint64_t sub_682AA0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 296);
  v3 = *(result + 304);
  if (v2 == v3)
  {
    *(result + 392) = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      result = sub_6813B0(v2);
      v4 += result;
      v2 += 104;
    }

    while (v2 != v3);
    *(v1 + 392) = v4;
  }

  return result;
}

BOOL sub_682B2C(uint64_t a1, uint64_t a2)
{
  sub_5F046C(v10, a2);
  v11 = *(a2 + 380);
  v12 = *(a2 + 396);
  v14 = 0;
  v15 = 0;
  __p = 0;
  v5 = *(a2 + 400);
  v4 = *(a2 + 408);
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  v16 = *(a2 + 424);
  v17 = *(a2 + 440);
  v6 = *(a1 + 400);
  v7 = *(a1 + 408);
  sub_5F046C(v18, v10);
  v19 = v11;
  v20 = v12;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  if (v14 != __p)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - __p) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = v16;
  v25 = v17;
  if (v6 != v7)
  {
    while (v6[1] == 0x7FFFFFFF || *v6 != LODWORD(v18[0]))
    {
      v6 += 3;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }
  }

  sub_55D550(v18);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  sub_55D550(v10);
  return v6 != *(a1 + 408);
}

void sub_682D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x350];
  if (STACK[0x350])
  {
    STACK[0x358] = v66;
    operator delete(v66);
  }

  sub_55D550(&a65);
  sub_682DB0(&a9);
  _Unwind_Resume(a1);
}

void sub_682D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60)
{
  if (__p)
  {
    a60 = __p;
    operator delete(__p);
  }

  sub_55D550(&a9);
  _Unwind_Resume(a1);
}

void *sub_682DB0(void *a1)
{
  v2 = a1[50];
  if (v2)
  {
    a1[51] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_55D550(a1);
}

void sub_682E30(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = *a1;
  *(a4 + 16) = 1;
  *(a4 + 20) = 0;
  *(a4 + 22) = 65537;
  v5 = *a2;
  *(a4 + 32) = 0;
  *(a4 + 40) = v5;
  *(a4 + 48) = *(a2 + 2);
  *(a4 + 52) = 0;
  *(a4 + 56) = 0xBFF0000000000000;
  *(a4 + 64) = 0;
  sub_588B0C(a3);
}

uint64_t sub_682EB4(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 104);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 120));
  v2 = *(a1 + 104);
  if (v2 != -1)
  {
LABEL_7:
    (off_266BFB0[v2])(&v4, a1 + 72);
  }

LABEL_8:
  *(a1 + 104) = -1;
  return a1;
}

void sub_682F48(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = *a1;
  *(a4 + 16) = 2;
  *(a4 + 20) = 0;
  *(a4 + 22) = 65537;
  v5 = *a2;
  *(a4 + 32) = 0;
  *(a4 + 40) = v5;
  *(a4 + 48) = *(a2 + 2);
  *(a4 + 52) = 0;
  *(a4 + 56) = 0xBFF0000000000000;
  *(a4 + 64) = 0;
  sub_588B0C(a3);
}

void sub_682FD0(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = *a1;
  *(a4 + 16) = 3;
  *(a4 + 20) = 0;
  *(a4 + 22) = 65537;
  v5 = *a2;
  *(a4 + 32) = 0;
  *(a4 + 40) = v5;
  *(a4 + 48) = *(a2 + 2);
  *(a4 + 52) = 0;
  *(a4 + 56) = 0xBFF0000000000000;
  *(a4 + 64) = 0;
  sub_588B0C(a3);
}

void sub_683044(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = *a1;
  *(a5 + 16) = 4;
  *(a5 + 20) = 0;
  *(a5 + 22) = 65537;
  v5 = *a3;
  *(a5 + 32) = *a2;
  *(a5 + 40) = v5;
  *(a5 + 48) = *(a3 + 2);
  *(a5 + 52) = 0;
  *(a5 + 56) = 0xBFF0000000000000;
  *(a5 + 64) = 0;
  sub_588B0C(a4);
}

void sub_6830B8(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = *a1;
  *(a7 + 16) = 4;
  *(a7 + 20) = 0;
  *(a7 + 22) = 65537;
  v7 = *a3;
  *(a7 + 32) = *a2;
  *(a7 + 40) = v7;
  *(a7 + 48) = *(a3 + 2);
  *(a7 + 52) = 0;
  *(a7 + 56) = *a4;
  *(a7 + 64) = a5;
  sub_588B0C(a6);
}

uint64_t sub_683148(uint64_t a1, unsigned int *a2)
{
  v2 = a2[1] - *(a1 + 44);
  v3 = sqrt(((*a2 - *(a1 + 40)) * (*a2 - *(a1 + 40)) + v2 * v2)) / 100.0 * 100.0;
  if (v3 >= 4.50359963e15)
  {
    if (v3 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  else
  {
    v3 = (((v3 + v3) + 1) >> 1);
    if (v3 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  return v3;
}

uint64_t sub_6831CC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v16 = *(a2 + 40);
      *(result + 28) = *(a2 + 48);
      *(result + 20) = v16;
      *(result + 8) = *(a2 + 8);
      ++*(result + 56);
      v9 = *(result + 40);
      if (v9 < *(result + 48))
      {
LABEL_22:
        *v9 = *a2;
        v17 = *(a2 + 16);
        v18 = *(a2 + 32);
        v19 = *(a2 + 48);
        *(v9 + 64) = *(a2 + 64);
        *(v9 + 32) = v18;
        *(v9 + 48) = v19;
        *(v9 + 16) = v17;
        result = sub_55F1E8(v9 + 72, a2 + 72);
        *(v2 + 40) = v9 + 184;
        *(v2 + 40) = v9 + 184;
        return result;
      }
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      v8 = *(a2 + 40);
      *(result + 28) = *(a2 + 48);
      *(result + 20) = v8;
      *(result + 8) = *(a2 + 8);
      ++*(result + 64);
      v9 = *(result + 40);
      if (v9 < *(result + 48))
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    result = sub_6878C0((result + 32), a2);
    *(v2 + 40) = result;
    return result;
  }

  switch(v3)
  {
    case 3:
      if (*(result + 20) == -1 && *(result + 24) == -1)
      {
        v10 = *(a2 + 40);
        *(result + 28) = *(a2 + 48);
        *(result + 20) = v10;
      }

      if (*(result + 8) == -1)
      {
        *(result + 8) = *(a2 + 8);
        v11 = *(result + 72);
        if (v11)
        {
LABEL_16:
          *(result + 72) = v11 + 1;
          v12 = *(result + 40);
          if (v12 < *(result + 48))
          {
LABEL_17:
            *v12 = *a2;
            v13 = *(a2 + 16);
            v14 = *(a2 + 32);
            v15 = *(a2 + 48);
            *(v12 + 64) = *(a2 + 64);
            *(v12 + 32) = v14;
            *(v12 + 48) = v15;
            *(v12 + 16) = v13;
            sub_55F1E8(v12 + 72, a2 + 72);
            result = v12 + 184;
            *(v2 + 40) = v12 + 184;
            goto LABEL_28;
          }

LABEL_27:
          result = sub_6878C0((result + 32), a2);
LABEL_28:
          *(v2 + 40) = result;
          for (i = *(v2 + 32); i != result; i += 184)
          {
            if ((*(i + 16) & 0xFFFFFFFE) == 4)
            {
              *(i + 20) = 0;
            }
          }

          return result;
        }
      }

      else
      {
        v11 = *(result + 72);
        if (v11)
        {
          goto LABEL_16;
        }
      }

      *(a2 + 20) = 1;
      *(result + 72) = v11 + 1;
      v12 = *(result + 40);
      if (v12 < *(result + 48))
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    case 4:

      return sub_683540(result, a2);
    case 5:
      v4 = *(result + 40);
      if (v4 < *(result + 48))
      {
        *v4 = *a2;
        v5 = *(a2 + 16);
        v6 = *(a2 + 32);
        v7 = *(a2 + 48);
        *(v4 + 64) = *(a2 + 64);
        *(v4 + 32) = v6;
        *(v4 + 48) = v7;
        *(v4 + 16) = v5;
        sub_55F1E8(v4 + 72, a2 + 72);
        result = v4 + 184;
        *(v2 + 40) = v4 + 184;
        *(v2 + 40) = v4 + 184;
        return result;
      }

      goto LABEL_24;
  }

  return result;
}

uint64_t sub_683480(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 4) = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xBFF0000000000000;
  *(a1 + 96) = 0;
  sub_6831CC(a1, a2);
  return a1;
}

uint64_t sub_683540(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) || ((v5 = *(a2 + 56), *&v5 > -1) ? (v6 = ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v6 = 1), v6 ? (v7 = (*&v5 - 1) >= 0xFFFFFFFFFFFFFLL) : (v7 = 0), v7 ? (v8 = (*&v5 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v8 = 1), !v8 || v5 <= 0.0 || *(a1 + 72)))
  {
    *(a1 + 88) = 0xBFF0000000000000;
    *(a1 + 96) = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    while (v3 != v4)
    {
      if (*(v3 + 16) == 5)
      {
        *(v3 + 20) = 0;
      }

      v3 += 184;
    }
  }

  else
  {
    *(a1 + 88) = v5;
    v9 = *(a2 + 64);
    *(a1 + 96) = v9;
    v21 = 0;
    v23 = 0u;
    v32 = 0;
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    v19 = 0u;
    v20 = 0u;
    *(&v20 + 6) = 65537;
    v22 = -1;
    LODWORD(v23) = 0x7FFFFFFF;
    memset(v26, 255, sizeof(v26));
    *v27 = 0uLL;
    v28 = 0;
    memset(v29, 0, sizeof(v29));
    __p_8 = 0;
    v31 = 0uLL;
    LODWORD(v20) = 5;
    *(&v19 + 1) = *(a2 + 8);
    v21 = *(a2 + 32);
    *(&v23 + 1) = *(a2 + 56);
    LOBYTE(v24[0]) = v9;
    v10 = a2;
    sub_5410A0(v24 + 8, a2 + 72);
    v22 = *(v10 + 40);
    LODWORD(v23) = *(v10 + 48);
    *(&v20 + 6) = 0x10000;
    BYTE4(v20) = 1;
    sub_6831CC(a1, &v19);
    a2 = v10;
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p_8);
      a2 = v10;
      if ((v29[0] & 0x80000000) == 0)
      {
LABEL_22:
        v11 = DWORD2(v25);
        if (DWORD2(v25) == -1)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else if ((v29[0] & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(*(v27 + 1));
    a2 = v10;
    v11 = DWORD2(v25);
    if (DWORD2(v25) != -1)
    {
LABEL_26:
      (off_266BFB0[v11])(&v33, v24 + 8);
      a2 = v10;
    }
  }

LABEL_27:
  if (*(a1 + 20) == -1 && *(a1 + 24) == -1)
  {
    v18 = *(a2 + 40);
    *(a1 + 28) = *(a2 + 48);
    *(a1 + 20) = v18;
    if (*(a1 + 8) != -1)
    {
LABEL_30:
      v12 = *(a1 + 80);
      if (*(a1 + 72) != 0)
      {
        goto LABEL_31;
      }

LABEL_35:
      *(a2 + 20) = 1;
      *(a1 + 80) = v12 + 1;
      v13 = *(a1 + 40);
      if (v13 < *(a1 + 48))
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }
  }

  else if (*(a1 + 8) != -1)
  {
    goto LABEL_30;
  }

  *(a1 + 8) = *(a2 + 8);
  v12 = *(a1 + 80);
  if (*(a1 + 72) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  *(a1 + 80) = v12 + 1;
  v13 = *(a1 + 40);
  if (v13 < *(a1 + 48))
  {
LABEL_32:
    *v13 = *a2;
    v14 = *(a2 + 16);
    v15 = *(a2 + 32);
    v16 = *(a2 + 48);
    *(v13 + 64) = *(a2 + 64);
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    sub_55F1E8(v13 + 72, a2 + 72);
    result = v13 + 184;
    *(a1 + 40) = v13 + 184;
    *(a1 + 40) = v13 + 184;
    return result;
  }

LABEL_36:
  result = sub_6878C0((a1 + 32), a2);
  *(a1 + 40) = result;
  return result;
}

BOOL sub_683874(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1[4] == a1[5])
  {
    return 1;
  }

  if ((*(a2 + 16) - 1) > 1)
  {
    return *a4 <= *a3;
  }

  if (a1[7])
  {
    return 0;
  }

  return !a1[8] && *a4 <= *a3;
}

unsigned int sub_683938(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!*(a1 + 96))
  {
    v1 = v1 / 1.609344;
  }

  return llround(v1);
}

uint64_t sub_68395C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 104) == 2)
  {
    v2 = (v1 + 72);
    return *v2[1];
  }

  if (atomic_load_explicit(&qword_2732F30, memory_order_acquire))
  {
    return *off_2732F18[0];
  }

  v4 = __cxa_guard_acquire(&qword_2732F30);
  v2 = &qword_2732F10;
  if (!v4)
  {
    return *v2[1];
  }

  qword_2732F10 = -1;
  qword_2732F20 = 0;
  unk_2732F28 = 0;
  off_2732F18[0] = 0;
  __cxa_guard_release(&qword_2732F30);
  return *off_2732F18[0];
}

uint64_t sub_683A1C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v2 = (v1 + *(a1 + 72)) == 1;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 88);
  v5 = v4 & 0x7FFFFFFFFFFFFFFFLL;
  v6 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v7 = v4 < 0;
  v8 = v4 < 0 && ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (!v7)
  {
    v6 = 0;
  }

  v9 = v5 <= 0x7FF0000000000000;
  v10 = v5 == 0x7FF0000000000000 || v6;
  if (!v9)
  {
    v10 = 1;
  }

  v11 = v10 | v8;
  if (*(a1 + 88) <= 0.0)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_683A9C(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = (v1 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v1 - 1) < 0xFFFFFFFFFFFFFLL)
  {
    v2 = 1;
  }

  v4 = ((v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v1 >= 0 || v2;
  if (*(a1 + 88) > 0.0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_683AE0(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v2 = (v1 + *(a1 + 72)) == 1;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 88);
  v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v4 - 1) < 0xFFFFFFFFFFFFFLL)
  {
    v5 = 1;
  }

  v7 = ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v4 >= 0 || v5;
  if (*(a1 + 88) > 0.0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_683BC0(void *a1)
{
  v1 = a1[9];
  v2 = a1[10];
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3 && (v2 + v1) == 2 && a1[7] != 0;
}

BOOL sub_683BF4(void *a1)
{
  v1 = a1[9];
  v2 = a1[10];
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3 && (v2 + v1) == 2 && a1[8] != 0;
}

BOOL sub_683C28(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3 && (v2 + v1) > 2u;
}

BOOL sub_683C48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a1 + 40) || *(a1 + 20) == -1 && *(a1 + 24) == -1)
  {
    return 0;
  }

  if (*(a1 + 8) == -1 || *(a2 + 32) == *(a2 + 40))
  {
    return 0;
  }

  if ((*(a2 + 20) & *(a2 + 24)) == -1 || *(a2 + 8) == -1)
  {
    return 0;
  }

  if (*(a2 + 56) && *(a1 + 56))
  {
    return 1;
  }

  if (!*(a2 + 64))
  {
    return 0;
  }

  return *(a1 + 64) != 0;
}

uint64_t sub_683CD4(uint64_t a1)
{
  if (*a1 == -1)
  {
    return 0;
  }

  if (sub_734C10(a1 + 96))
  {
    return 1;
  }

  v3 = *(a1 + 215);
  if (v3 < 0)
  {
    return *(a1 + 200) != 0;
  }

  else
  {
    return v3 != 0;
  }
}

uint64_t sub_683D58(uint64_t a1, void *a2)
{
  *a1 = *a2;
  sub_734CE0(a1 + 8);
  *(a1 + 252) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = -1;
  *(a1 + 168) = -1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 216) = -1;
  *(a1 + 224) = -1;
  *(a1 + 232) = 0x7FFFFFFF;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 268) = 0;
  *(a1 + 260) = 0;
  *(a1 + 276) = 0;
  sub_734CE0(a1 + 280);
  return a1;
}

void sub_683DE0(_Unwind_Exception *a1)
{
  v5 = v2[32];
  if (v5)
  {
    v2[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[25] = v6;
  operator delete(v6);
  sub_3E5388(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_683E2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = *a2;
  sub_734CE0(a1 + 8);
  *(a1 + 252) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = a3;
  *(a1 + 168) = a4;
  *(a1 + 176) = 0;
  *(a1 + 178) = 0;
  *(a1 + 179) = a5;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 216) = -1;
  *(a1 + 224) = -1;
  *(a1 + 232) = 0x7FFFFFFF;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 268) = 0;
  *(a1 + 260) = 0;
  *(a1 + 276) = 0;
  sub_734CE0(a1 + 280);
  return a1;
}

void sub_683ED4(_Unwind_Exception *a1)
{
  v5 = v2[32];
  if (v5)
  {
    v2[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[25] = v6;
  operator delete(v6);
  sub_3E5388(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_683F24(uint64_t a1, void *a2, char a3)
{
  *a1 = *a2;
  sub_734CE0(a1 + 8);
  *(a1 + 252) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = -1;
  *(a1 + 168) = -1;
  *(a1 + 176) = 0;
  *(a1 + 184) = a3;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = -1;
  *(a1 + 224) = -1;
  *(a1 + 232) = 0x7FFFFFFF;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 268) = 0;
  *(a1 + 260) = 0;
  *(a1 + 276) = 0;
  sub_734CE0(a1 + 280);
  return a1;
}

void sub_683FB0(_Unwind_Exception *a1)
{
  v5 = v2[32];
  if (v5)
  {
    v2[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[25] = v6;
  operator delete(v6);
  sub_3E5388(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_683FFC(uint64_t a1, void *a2, void *a3)
{
  *a1 = *a2;
  sub_734CE0(a1 + 8);
  *(a1 + 192) = 0;
  *(a1 + 160) = -1;
  *(a1 + 168) = -1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v5 = a3[1] - *a3;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 252) = 0;
  *(a1 + 224) = -1;
  *(a1 + 216) = -1;
  *(a1 + 232) = 0x7FFFFFFF;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 260) = 0;
  *(a1 + 268) = 0;
  *(a1 + 276) = 0;
  sub_734CE0(a1 + 280);
  return a1;
}

void sub_6840E8(_Unwind_Exception *a1)
{
  v5 = v2[32];
  if (v5)
  {
    v2[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[25] = v6;
  operator delete(v6);
  sub_3E5388(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_684148(uint64_t a1, __int128 *a2, __int128 *a3, void *a4)
{
  *a1 = *a4;
  sub_734CE0(a1 + 8);
  *(a1 + 192) = 0;
  *(a1 + 160) = -1;
  *(a1 + 168) = -1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v7 = *a2;
  v8 = *(a2 + 4);
  *(a1 + 232) = a2[1];
  *(a1 + 216) = v7;
  *(a1 + 248) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v10 = *(a2 + 5);
  v9 = *(a2 + 6);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5139E8(a1 + 280, a3);
  return a1;
}

void sub_68422C(_Unwind_Exception *a1)
{
  v5 = *(v3 + 64);
  if (v5)
  {
    *(v2 + 264) = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v2 + 200) = v6;
  operator delete(v6);
  sub_3E5388(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_684350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (*a1 == v3)
  {
LABEL_9:
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 208) = 0;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 64) = 0u;
    *a2 = -1;
    *(a2 + 8) = -1;
    *(a2 + 16) = 0x7FFFFFFF;
    *(a2 + 32) = 0;
    *(a2 + 36) = 0;
    *(a2 + 44) = 0;
    *(a2 + 52) = 0;
    *(a2 + 60) = 0;
    return sub_734CE0(a2 + 64);
  }

  else
  {
    v4 = *a1 + 216;
    while (1)
    {
      if (*v4 != -1)
      {
        if (sub_734C10(v4 + 96))
        {
          break;
        }

        v6 = *(v4 + 215);
        if (v6 < 0)
        {
          v6 = *(v4 + 200);
        }

        if (v6)
        {
          break;
        }
      }

      v5 = v4 + 216;
      v4 += 432;
      if (v5 == v3)
      {
        goto LABEL_9;
      }
    }

    v8 = *v4;
    v9 = *(v4 + 16);
    *(a2 + 32) = *(v4 + 32);
    *(a2 + 40) = 0;
    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v11 = *(v4 + 40);
    v10 = *(v4 + 48);
    if (v10 != v11)
    {
      if (((v10 - v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    return sub_5139E8(a2 + 64, (v4 + 64));
  }
}

void sub_684498(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_6844B8()
{
  if (!*(v0 + 40))
  {
    JUMPOUT(0x6844B0);
  }

  JUMPOUT(0x6844A8);
}

uint64_t sub_6844F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 <= *a3 || (v8 = *a1, v9 = a1[1], *a1 == v9))
  {
LABEL_22:
    *(a5 + 8) = 0u;
    *(a5 + 424) = 0;
    *(a5 + 248) = 0u;
    *(a5 + 232) = 0u;
    *(a5 + 216) = 0u;
    *(a5 + 200) = 0u;
    *(a5 + 184) = 0u;
    *(a5 + 168) = 0u;
    *(a5 + 152) = 0u;
    *(a5 + 136) = 0u;
    *(a5 + 120) = 0u;
    *(a5 + 104) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 392) = 0u;
    *(a5 + 408) = 0u;
    *(a5 + 360) = 0u;
    *(a5 + 376) = 0u;
    *(a5 + 328) = 0u;
    *(a5 + 344) = 0u;
    *(a5 + 296) = 0u;
    *(a5 + 312) = 0u;
    *(a5 + 264) = 0u;
    *(a5 + 280) = 0u;
    *a5 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a5 + 8);
    *(a5 + 168) = -1;
    *(a5 + 252) = 0;
    *(a5 + 192) = 0;
    *(a5 + 160) = -1;
    *(a5 + 200) = 0;
    *(a5 + 208) = 0;
    *(a5 + 184) = 0;
    *(a5 + 176) = 0;
    *(a5 + 216) = -1;
    *(a5 + 224) = -1;
    *(a5 + 232) = 0x7FFFFFFF;
    *(a5 + 240) = 0;
    *(a5 + 248) = 0;
    *(a5 + 268) = 0;
    *(a5 + 260) = 0;
    *(a5 + 276) = 0;
    return sub_734CE0(a5 + 280);
  }

  else
  {
    if (a4)
    {
      while (*(v8 + 176) != 1 || *(v8 + 178) != 1 || *v8 >= v6 || *v8 <= v7)
      {
        v8 += 432;
        if (v8 == v9)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      while (*(v8 + 176) != 1 || *v8 >= v6 || *v8 <= v7)
      {
        v8 += 432;
        if (v8 == v9)
        {
          goto LABEL_22;
        }
      }
    }

    return sub_5F3168(a5, v8);
  }
}

void sub_684750(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_6847A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 56) == *(a1 + 64) || *(a1 + 44) == -1 && *(a1 + 48) == -1 || *(a1 + 32) == -1 || (v5 = *a1, v6 = *(a1 + 8), *a1 == v6))
  {
LABEL_16:
    *(a4 + 8) = 0u;
    *(a4 + 424) = 0;
    *(a4 + 248) = 0u;
    *(a4 + 232) = 0u;
    *(a4 + 216) = 0u;
    *(a4 + 200) = 0u;
    *(a4 + 184) = 0u;
    *(a4 + 168) = 0u;
    *(a4 + 152) = 0u;
    *(a4 + 136) = 0u;
    *(a4 + 120) = 0u;
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 392) = 0u;
    *(a4 + 408) = 0u;
    *(a4 + 360) = 0u;
    *(a4 + 376) = 0u;
    *(a4 + 328) = 0u;
    *(a4 + 344) = 0u;
    *(a4 + 296) = 0u;
    *(a4 + 312) = 0u;
    *(a4 + 264) = 0u;
    *(a4 + 280) = 0u;
    *a4 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a4 + 8);
    *(a4 + 168) = -1;
    *(a4 + 252) = 0;
    *(a4 + 192) = 0;
    *(a4 + 160) = -1;
    *(a4 + 200) = 0;
    *(a4 + 208) = 0;
    *(a4 + 184) = 0;
    *(a4 + 176) = 0;
    *(a4 + 216) = -1;
    *(a4 + 224) = -1;
    *(a4 + 232) = 0x7FFFFFFF;
    *(a4 + 240) = 0;
    *(a4 + 248) = 0;
    *(a4 + 268) = 0;
    *(a4 + 260) = 0;
    *(a4 + 276) = 0;
    return sub_734CE0(a4 + 280);
  }

  else
  {
    while (*(v5 + 179) != 1 || *v5 >= *a2 || *v5 <= *a3)
    {
      v5 += 432;
      if (v5 == v6)
      {
        goto LABEL_16;
      }
    }

    return sub_5F3168(a4, v5);
  }
}

void sub_6849EC(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_684A64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 == v7)
  {
LABEL_12:
    *(a4 + 8) = 0u;
    *(a4 + 424) = 0;
    *(a4 + 248) = 0u;
    *(a4 + 232) = 0u;
    *(a4 + 216) = 0u;
    *(a4 + 200) = 0u;
    *(a4 + 184) = 0u;
    *(a4 + 168) = 0u;
    *(a4 + 152) = 0u;
    *(a4 + 136) = 0u;
    *(a4 + 120) = 0u;
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 392) = 0u;
    *(a4 + 408) = 0u;
    *(a4 + 360) = 0u;
    *(a4 + 376) = 0u;
    *(a4 + 328) = 0u;
    *(a4 + 344) = 0u;
    *(a4 + 296) = 0u;
    *(a4 + 312) = 0u;
    *(a4 + 264) = 0u;
    *(a4 + 280) = 0u;
    *a4 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a4 + 8);
    *(a4 + 168) = -1;
    *(a4 + 252) = 0;
    *(a4 + 192) = 0;
    *(a4 + 160) = -1;
    *(a4 + 200) = 0;
    *(a4 + 208) = 0;
    *(a4 + 184) = 0;
    *(a4 + 176) = 0;
    *(a4 + 216) = -1;
    *(a4 + 224) = -1;
    *(a4 + 232) = 0x7FFFFFFF;
    *(a4 + 240) = 0;
    *(a4 + 248) = 0;
    *(a4 + 268) = 0;
    *(a4 + 260) = 0;
    *(a4 + 276) = 0;
    return sub_734CE0(a4 + 280);
  }

  else
  {
    v8 = *a2;
    while (v6[21] == -1 || *v6 >= v8 || *v6 <= *a3)
    {
      v6 += 54;
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }

    return sub_5F3168(a4, v6);
  }
}

void sub_684BB8(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_684C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
LABEL_4:
    *(a2 + 8) = 0u;
    *(a2 + 424) = 0;
    *(a2 + 248) = 0u;
    *(a2 + 232) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 408) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *a2 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a2 + 8);
    *(a2 + 168) = -1;
    *(a2 + 252) = 0;
    *(a2 + 192) = 0;
    *(a2 + 160) = -1;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 184) = 0;
    *(a2 + 176) = 0;
    *(a2 + 216) = -1;
    *(a2 + 224) = -1;
    *(a2 + 232) = 0x7FFFFFFF;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 268) = 0;
    *(a2 + 260) = 0;
    *(a2 + 276) = 0;
    return sub_734CE0(a2 + 280);
  }

  else
  {
    while (*(v3 + 168) == -1)
    {
      v3 += 432;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    return sub_5F3168(a2, v3);
  }
}

void sub_684D38(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_684D84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  do
  {
    if (v3 == *a1)
    {
      *(a2 + 8) = 0u;
      *(a2 + 424) = 0;
      *(a2 + 248) = 0u;
      *(a2 + 232) = 0u;
      *(a2 + 216) = 0u;
      *(a2 + 200) = 0u;
      *(a2 + 184) = 0u;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 136) = 0u;
      *(a2 + 120) = 0u;
      *(a2 + 104) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 392) = 0u;
      *(a2 + 408) = 0u;
      *(a2 + 360) = 0u;
      *(a2 + 376) = 0u;
      *(a2 + 328) = 0u;
      *(a2 + 344) = 0u;
      *(a2 + 296) = 0u;
      *(a2 + 312) = 0u;
      *(a2 + 264) = 0u;
      *(a2 + 280) = 0u;
      *a2 = 0x7FFFFFFFFFFFFFFFLL;
      sub_734CE0(a2 + 8);
      *(a2 + 168) = -1;
      *(a2 + 252) = 0;
      *(a2 + 192) = 0;
      *(a2 + 160) = -1;
      *(a2 + 200) = 0;
      *(a2 + 208) = 0;
      *(a2 + 184) = 0;
      *(a2 + 176) = 0;
      *(a2 + 216) = -1;
      *(a2 + 224) = -1;
      *(a2 + 232) = 0x7FFFFFFF;
      *(a2 + 240) = 0;
      *(a2 + 248) = 0;
      *(a2 + 268) = 0;
      *(a2 + 260) = 0;
      *(a2 + 276) = 0;
      return sub_734CE0(a2 + 280);
    }

    v4 = v3 - 432;
    v5 = *(v3 - 240);
    v6 = *(v3 - 232);
    v3 -= 432;
  }

  while (v5 == v6);

  return sub_5F3168(a2, v4);
}

void sub_684EB4(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_684F00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_12:
    *(a4 + 8) = 0u;
    *(a4 + 424) = 0;
    *(a4 + 248) = 0u;
    *(a4 + 232) = 0u;
    *(a4 + 216) = 0u;
    *(a4 + 200) = 0u;
    *(a4 + 184) = 0u;
    *(a4 + 168) = 0u;
    *(a4 + 152) = 0u;
    *(a4 + 136) = 0u;
    *(a4 + 120) = 0u;
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 392) = 0u;
    *(a4 + 408) = 0u;
    *(a4 + 360) = 0u;
    *(a4 + 376) = 0u;
    *(a4 + 328) = 0u;
    *(a4 + 344) = 0u;
    *(a4 + 296) = 0u;
    *(a4 + 312) = 0u;
    *(a4 + 264) = 0u;
    *(a4 + 280) = 0u;
    *a4 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a4 + 8);
    *(a4 + 168) = -1;
    *(a4 + 252) = 0;
    *(a4 + 192) = 0;
    *(a4 + 160) = -1;
    *(a4 + 200) = 0;
    *(a4 + 208) = 0;
    *(a4 + 184) = 0;
    *(a4 + 176) = 0;
    *(a4 + 216) = -1;
    *(a4 + 224) = -1;
    *(a4 + 232) = 0x7FFFFFFF;
    *(a4 + 240) = 0;
    *(a4 + 248) = 0;
    *(a4 + 268) = 0;
    *(a4 + 260) = 0;
    *(a4 + 276) = 0;
    return sub_734CE0(a4 + 280);
  }

  else
  {
    v8 = *a2;
    while (*(v6 + 184) != 1 || *v6 >= v8 || *v6 <= *a3)
    {
      v6 += 432;
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }

    return sub_5F3168(a4, v6);
  }
}

void sub_685054(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_6850C8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v4 = 0;
      v5 = *(v2 + 16);
      if (v5 > 1)
      {
        v6 = a1 + 2;
        if (v5 != 2)
        {
          if (v5 != 3)
          {
            goto LABEL_4;
          }

          v6 = a1 + 3;
        }
      }

      else
      {
        v6 = a1;
        if (*(v2 + 16))
        {
          v6 = a1 + 1;
          if (v5 != 1)
          {
            goto LABEL_4;
          }
        }
      }

      v4 = *v6;
LABEL_4:
      v3 += v4;
      v2 = *v2;
      if (!v2)
      {
        return v3;
      }
    }
  }

  return 0;
}

void *sub_685144(void *result, int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result += 2;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      result += 3;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    ++result;
  }

  *result += a3;
  return result;
}

uint64_t sub_68518C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  if (*a1 <= v1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = *a1;
  }

  if (v4 <= v2)
  {
    v5 = a1[2];
  }

  else
  {
    v5 = v4;
  }

  if (v4 < v2)
  {
    v4 = a1[2];
  }

  if (v5 >= v3)
  {
    v3 = v4;
  }

  if (v3 == *a1)
  {
    return 0;
  }

  if (v3 == v1)
  {
    return 1;
  }

  if (v3 == v2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_6851E8(uint64_t a1, void *a2, uint64_t *a3, char a4)
{
  *a1 = 0;
  *(a1 + 8) = *a2;
  v6 = *a3;
  *(a1 + 56) = 0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *(a1 + 40) = vnegq_f64(v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0x8000000080000000;
  sub_64B998(a1 + 96);
  sub_64B998(a1 + 256);
  *(a1 + 448) = 0;
  *(a1 + 456) = -1;
  *(a1 + 459) = -1;
  *(a1 + 471) = 0;
  *(a1 + 479) = 0;
  *(a1 + 463) = 0;
  *(a1 + 487) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = a4;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  return a1;
}

void sub_6852B4(_Unwind_Exception *a1)
{
  sub_53A868((v2 + 5));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_6852E0(uint64_t a1, void *a2, uint64_t *a3, void *a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = *a2;
  v7 = *a3;
  *(a1 + 56) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  *(a1 + 16) = v7;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *(a1 + 40) = vnegq_f64(v8);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v9 = a4[1];
  if (v9 != *a4)
  {
    if (((v9 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 80) = 0x8000000080000000;
  sub_64B998(a1 + 96);
  sub_64B998(a1 + 256);
  *(a1 + 448) = 0;
  *(a1 + 456) = -1;
  *(a1 + 459) = -1;
  *(a1 + 471) = 0;
  *(a1 + 479) = 0;
  *(a1 + 463) = 0;
  *(a1 + 487) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = a5;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  return a1;
}

void sub_6853F8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 96);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_68542C(uint64_t a1, char a2, void *a3, uint64_t *a4, char a5)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 8) = *a3;
  v7 = *a4;
  *(a1 + 56) = 0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *(a1 + 40) = vnegq_f64(v8);
  *(a1 + 16) = v7;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0x8000000080000000;
  sub_64B998(a1 + 96);
  sub_64B998(a1 + 256);
  *(a1 + 448) = 0;
  *(a1 + 456) = -1;
  *(a1 + 459) = -1;
  *(a1 + 471) = 0;
  *(a1 + 479) = 0;
  *(a1 + 463) = 0;
  *(a1 + 487) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = a5;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  return a1;
}

void sub_6854FC(_Unwind_Exception *a1)
{
  sub_53A868((v2 + 5));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_685528(uint64_t a1, char a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 8) = *a3;
  v10 = *a4;
  *(a1 + 56) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  *(a1 + 40) = vnegq_f64(v11);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = a7[1];
  if (v12 != *a7)
  {
    if (((v12 - *a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 80) = 0x8000000080000000;
  sub_64B998(a1 + 96);
  sub_64B998(a1 + 256);
  *(a1 + 448) = 0;
  *(a1 + 456) = -1;
  *(a1 + 459) = -1;
  *(a1 + 471) = 0;
  *(a1 + 479) = 0;
  *(a1 + 463) = 0;
  *(a1 + 487) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = a8;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  return a1;
}

void sub_685640(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 96);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_685674(uint64_t a1, char a2, void *a3, uint64_t *a4, uint64_t a5, char a6)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 8) = *a3;
  v8 = *a4;
  *(a1 + 80) = 0x8000000080000000;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *(a1 + 40) = vnegq_f64(v9);
  *(a1 + 16) = v8;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  sub_64B998(a1 + 96);
  sub_64B998(a1 + 256);
  *(a1 + 448) = 0;
  *(a1 + 456) = -1;
  *(a1 + 459) = -1;
  *(a1 + 471) = 0;
  *(a1 + 479) = 0;
  *(a1 + 463) = 0;
  *(a1 + 487) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = a6;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  operator new();
}

void sub_6857C8(_Unwind_Exception *a1)
{
  v5 = v1[69];
  if (v5)
  {
    v1[70] = v5;
    operator delete(v5);
  }

  sub_5710A0(v2);
  v6 = *v3;
  if (*v3)
  {
    v1[8] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_685818(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a1[69];
  v6 = a1[70];
  if (v5 == v6 || *(v6 - 1) != a4)
  {
    v7 = a1[71];
    if (v6 >= v7)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) + 1;
      if (v9 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v5) >> 3);
      if (2 * v10 > v9)
      {
        v9 = 2 * v10;
      }

      if (v10 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if (v11 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v12 = (8 * ((v6 - v5) >> 3));
      v13 = *a3;
      *v12 = *a2;
      v12[1] = v13;
      v12[2] = a4;
      v8 = v12 + 3;
      v14 = v12 - (v6 - v5);
      memcpy(v14, v5, v6 - v5);
      a1[69] = v14;
      a1[70] = v8;
      a1[71] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      *v6 = *a2;
      *(v6 + 1) = *a3;
      *(v6 + 2) = a4;
      v8 = v6 + 24;
    }

    a1[70] = v8;
  }

  else
  {
    *(v6 - 2) = *a3;
  }
}

void sub_6859A8(void *a1, void *a2)
{
  a1[2] = a2[2];
  a1[4] = a2[4];
  v2 = a2[69];
  v3 = a2[70];
  if (v2 != v3)
  {
    v5 = v2 + 1;
    do
    {
      sub_685818(a1, v5 - 1, v5, v5[1]);
      v6 = v5 + 2;
      v5 += 3;
    }

    while (v6 != v3);
  }
}

void sub_685A18(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

BOOL sub_685B80(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  return v3 != 0x7FFFFFFFFFFFFFFFLL && v3 >= v1;
}

uint64_t sub_685BF4(unsigned int a1)
{
  if (a1 < 0x4C)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x33)
  {
    v2 = v1;
  }

  else
  {
    v2 = 2;
  }

  if (a1 >= 0x1A)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_685C24(int a1, double a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      v4 = xmmword_229D960;
    }

    else
    {
      v4 = vnegq_f64(0);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v4 = xmmword_229D950;
        break;
      case 3:
        v4 = xmmword_229D940;
        break;
      case 4:
        v4 = xmmword_229D930;
        break;
      default:
        return result;
    }
  }

  v6 = v4;
  v5 = sub_6F0BC(v6.f64, a2);
  return sub_685CC0(round(v5));
}

uint64_t sub_685CC0(double a1)
{
  if (a1 < 0.0 || (result = a1, result != a1))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v9, a1);
    sub_23E08("narrowing ", &v9, &v10);
    v4 = std::string::append(&v10, " failed", 7uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v12 = v4->__r_.__value_.__r.__words[2];
    v11 = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v12 >= 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11;
    }

    if (v12 >= 0)
    {
      v7 = HIBYTE(v12);
    }

    else
    {
      v7 = *(&v11 + 1);
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  return result;
}

void sub_685DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_686088(uint64_t *a1, int a2, unsigned int **a3, unsigned int a4, uint64_t a5, double a6)
{
  v20 = a2;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v10 = a3[1];
  if (v10 != *a3)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v10 - *a3) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = a6;
  v25 = a4;
  v11 = a1[1];
  if (*a1 == v11 || *(v11 - 48) != a2)
  {
    goto LABEL_17;
  }

  v12 = *(v11 - 32);
  if (*(v11 - 40) == v12)
  {
LABEL_10:
    sub_318AE8(v11 - 40, v12, 0, 0, 0);
    v15 = *(v11 - 16);
    if (v15 <= a6)
    {
      v15 = a6;
    }

    *(v11 - 16) = v15;
    v16 = *(v11 - 8);
    if (a4 > v16)
    {
      v16 = a4;
    }

    *(v11 - 8) = v16;
    return;
  }

  v13 = *(v12 - 2) - (*a3)[1];
  v14 = sqrt(((*(v12 - 3) - **a3) * (*(v12 - 3) - **a3) + v13 * v13)) / 100.0 * 100.0;
  if (v14 < 4.50359963e15)
  {
    v14 = (((v14 + v14) + 1) >> 1);
    if (v14 >= 9.22337204e18)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (v14 < a5)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (v14 < 9.22337204e18)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

LABEL_17:
  if (v11 >= a1[2])
  {
    v18 = sub_687CD0(a1, &v20);
    v19 = v21;
    a1[1] = v18;
    if (v19)
    {
      v22 = v19;
      operator delete(v19);
    }
  }

  else
  {
    *v11 = a2;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v17 = v24;
    *(v11 + 40) = v25;
    *(v11 + 32) = v17;
    a1[1] = v11 + 48;
  }
}

void sub_686300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_686328@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= 4)
  {
    if (result > 1)
    {
      if (result != 2)
      {
        if (result != 3)
        {
          operator new();
        }

        operator new();
      }

      operator new();
    }

    if (!result)
    {
      a2[23] = 19;
      strcpy(a2, "No anomaly detected");
      return result;
    }

    if (result == 1)
    {
      operator new();
    }

LABEL_24:
    a2[23] = 10;
    strcpy(a2, "No Anomaly");
    return result;
  }

  if (result > 7)
  {
    switch(result)
    {
      case 8:
        a2[23] = 14;
        strcpy(a2, "Bad elevations");
        return result;
      case 9:
        operator new();
      case 0xA:
        a2[23] = 17;
        strcpy(a2, "High acceleration");
        return result;
    }

    goto LABEL_24;
  }

  if (result == 5)
  {
    operator new();
  }

  if (result == 6)
  {
    operator new();
  }

  a2[23] = 20;
  strcpy(a2, "Excessive tortuosity");
  return result;
}

void sub_6866F8(uint64_t a1, int a2, int a3, double a4)
{
  v9 = a2;
  v10 = &v9;
  v7 = sub_6882B0((a1 + 24), &v9);
  *(v7 + 6) = a2;
  v8 = v7[4];
  if (v8)
  {
    v7[5] = v8;
    operator delete(v8);
  }

  v7[4] = 0;
  v7[5] = 0;
  v7[6] = 0;
  *(v7 + 7) = a4;
  *(v7 + 16) = a3;
}

void sub_68678C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_6868B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_746A0(&a11);
  *(v11 + 8) = v12;
  sub_99B5C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_6868D8(uint64_t *a1, __int128 *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  v12 = a1;
  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v9 = 152 * v2;
  v11 = 0;
  sub_5139E8(152 * v2, a2);
  v10 = 152 * v2 + 152;
  sub_686A24(a1, &__p);
  v6 = a1[1];
  sub_60DF74(&__p, v9);
  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_686A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_60DF3C(va);
  _Unwind_Resume(a1);
}

void sub_686A24(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v4 + *a1 - v6;
    do
    {
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      *(v9 + 24) = *(v8 + 24);
      v11 = *(v8 + 32);
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 32) = v11;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v9 + 56) = *(v8 + 56);
      *(v9 + 64) = *(v8 + 64);
      v12 = *(v8 + 72);
      *(v9 + 88) = *(v8 + 88);
      *(v9 + 72) = v12;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 72) = 0;
      v13 = *(v8 + 96);
      *(v9 + 112) = *(v8 + 112);
      *(v9 + 96) = v13;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 96) = 0;
      *(v9 + 120) = *(v8 + 120);
      v14 = *(v8 + 128);
      *(v9 + 144) = *(v8 + 144);
      *(v9 + 128) = v14;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 128) = 0;
      v8 += 152;
      v9 += 152;
    }

    while (v8 != v6);
  }

  sub_686B9C(a1, v5, v6);
  a2[1] = v7;
  v15 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

void sub_686B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    for (i = a2; i != a3; i += 152)
    {
      if (*(i + 151) < 0)
      {
        operator delete(*(i + 128));
        if ((*(i + 119) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(i + 95) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      else if ((*(i + 119) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(*(i + 96));
      if ((*(i + 95) & 0x80000000) == 0)
      {
LABEL_7:
        if ((*(i + 55) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(*(i + 72));
      if ((*(i + 55) & 0x80000000) == 0)
      {
LABEL_8:
        if (*(i + 23) < 0)
        {
          goto LABEL_14;
        }

        continue;
      }

LABEL_13:
      operator delete(*(i + 32));
      if (*(i + 23) < 0)
      {
LABEL_14:
        operator delete(*i);
      }
    }
  }
}

uint64_t sub_686C54(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  v16 = v6;
  v17 = v6;
  *v6 = *a2;
  v7 = (v6 + 8);
  if (*(a2 + 31) < 0)
  {
    sub_325C(v7, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *v7 = *(a2 + 8);
    *(v6 + 24) = *(a2 + 24);
  }

  if (*(a2 + 55) < 0)
  {
    sub_325C((v6 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    *(v6 + 32) = *(a2 + 32);
    *(v6 + 48) = *(a2 + 48);
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v16 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v14 = *(v11 + 32);
      *(v12 + 48) = *(v11 + 48);
      *(v12 + 32) = v14;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 32) = 0;
      v11 += 56;
      v12 += 56;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 55) < 0)
      {
        operator delete(*(v8 + 32));
        if (*(v8 + 31) < 0)
        {
LABEL_25:
          operator delete(*(v8 + 8));
        }
      }

      else if (*(v8 + 31) < 0)
      {
        goto LABEL_25;
      }

      v8 += 56;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v17 + 56;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v17 + 56;
}

void sub_686E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
    sub_686EB0(va);
    _Unwind_Resume(a1);
  }

  sub_686EB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_686EB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 25) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 25) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_686F34(uint64_t a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 8 * ((*(a1 + 8) - *a1) >> 3);
  v6 = sub_5F0850(v12, a2);
  *(v6 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 88) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(v6 + 96) = *(a2 + 96);
  *(v6 + 98) = *(a2 + 98);
  v8 = *(a1 + 8);
  v9 = v12 + *a1 - v8;
  sub_68711C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v12 + 104;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v12 + 104;
}

void sub_6870B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6870C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6870C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 104;
    sub_5ED0A8(v4, (v3 - 104));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_68711C(uint64_t a1, void ***a2, void ***a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v10 = &a2[v7];
      v11 = a4 + v7 * 8;
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = *&a2[v7];
      v12 = a2[v7 + 3];
      *(v11 + 16) = a2[v7 + 2];
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0;
      v13 = a2[v7 + 4];
      *(v11 + 24) = v12;
      *(v11 + 32) = v13;
      v10[4] = 0;
      v14 = a2[v7 + 5];
      *(a4 + v7 * 8 + 40) = v14;
      v15 = a2[v7 + 6];
      *(v11 + 48) = v15;
      *(v11 + 56) = a2[v7 + 7];
      if (v15)
      {
        v8 = v14[1];
        v16 = *(v11 + 32);
        if ((v16 & (v16 - 1)) != 0)
        {
          if (v8 >= v16)
          {
            v8 %= v16;
          }
        }

        else
        {
          v8 &= v16 - 1;
        }

        v12[v8] = (a4 + v7 * 8 + 40);
        a2[v7 + 5] = 0;
        a2[v7 + 6] = 0;
      }

      *(v11 + 64) = *(v10 + 64);
      *(v11 + 72) = *(v10 + 18);
      *(v11 + 80) = *(v10 + 5);
      v10[10] = 0;
      v10[11] = 0;
      v9 = *(v10 + 48);
      *(v11 + 98) = *(v10 + 98);
      *(v11 + 96) = v9;
      v7 += 13;
    }

    while (&a2[v7] != a3);
    if (a2 != a3)
    {
      do
      {
        sub_5ED0A8(a1, v5);
        v5 += 13;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_687284(uint64_t a1)
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
        v4 -= 13;
        sub_5ED0A8(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

double sub_6872EC(uint64_t a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *(&v19 + 1) = 0;
  *v6 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(v6 + 16) = v8;
  *(v6 + 24) = v7;
  *(v6 + 32) = v9;
  v10 = *(a2 + 40);
  *&stru_20.segname[104 * v2] = v10;
  v11 = *(a2 + 48);
  *(v6 + 48) = v11;
  *(v6 + 56) = *(a2 + 56);
  if (v11)
  {
    v12 = *(v10 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      v14 = v12 >= v9;
      v13 = v12 % v9;
      if (!v14)
      {
        v13 = v12;
      }
    }

    else
    {
      v13 = v12 & (v9 - 1);
    }

    *(v7 + 8 * v13) = 104 * v2 + 40;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

  *(&stru_20.vmsize + 104 * v2) = *(a2 + 64);
  *(&stru_20.fileoff + 26 * v2) = *(a2 + 72);
  *(&stru_20.filesize + 13 * v2) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(&stru_20.nsects + 52 * v2) = *(a2 + 96);
  *(&stru_20.nsects + 104 * v2 + 2) = *(a2 + 98);
  v15 = *(a1 + 8);
  v16 = v6 + *a1 - v15;
  *&v19 = v6 + 104;
  sub_68711C(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  result = *&v19;
  *(a1 + 8) = v19;
  if (v17)
  {
    operator delete(v17);
    return *&v19;
  }

  return result;
}

void sub_6874D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_6870C4(va);
  _Unwind_Resume(a1);
}

void ***sub_6874E8(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v3;
  }

  return sub_53A58C(a1);
}

uint64_t sub_687580(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  if (v5 < a3)
  {
    v7 = 0;
    do
    {
      v10 = v5 + v7;
      v11 = v4 + v7;
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = *(v5 + v7);
      v12 = *(v5 + v7 + 24);
      *(v11 + 16) = *(v5 + v7 + 16);
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      v13 = *(v5 + v7 + 32);
      *(v11 + 24) = v12;
      *(v11 + 32) = v13;
      *(v10 + 32) = 0;
      v14 = *(v5 + v7 + 40);
      *(v4 + v7 + 40) = v14;
      v15 = *(v5 + v7 + 48);
      *(v11 + 48) = v15;
      *(v11 + 56) = *(v5 + v7 + 56);
      if (v15)
      {
        v8 = *(v14 + 8);
        v16 = *(v11 + 32);
        if ((v16 & (v16 - 1)) != 0)
        {
          if (v8 >= v16)
          {
            v8 %= v16;
          }
        }

        else
        {
          v8 &= v16 - 1;
        }

        *(v12 + 8 * v8) = v4 + v7 + 40;
        *(v5 + v7 + 40) = 0;
        *(v5 + v7 + 48) = 0;
      }

      *(v11 + 64) = *(v10 + 64);
      *(v11 + 72) = *(v10 + 72);
      *(v11 + 80) = *(v10 + 80);
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      v9 = *(v10 + 96);
      *(v11 + 98) = *(v10 + 98);
      *(v11 + 96) = v9;
      v7 += 104;
    }

    while (v5 + v7 < a3);
    v6 = v4 + v7;
  }

  *(result + 8) = v6;
  if (v4 != a4)
  {
    v17 = v4 - 104;
    v18 = a4 - v4;
    v19 = a2 + v4 - 104 - a4;
    do
    {
      result = sub_6876C8(v17, v19);
      v17 -= 104;
      v19 -= 104;
      v18 += 104;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_6876C8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_593214(a1 + 24, (a2 + 24));
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(a1 + 88);
  *(a1 + 80) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(a2 + 96);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 96) = v10;
  return a1;
}

void **sub_6877E0(void **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 4));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 8));
        v5 = *(v3 - 20);
        if (v5 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266BFB0[v5])(&v7, v3 - 14);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = *(v3 - 20);
    if (v5 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 20) = -1;
    v3 -= 23;
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

uint64_t sub_6878C0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    sub_1794();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v5 = 0x1642C8590B21642;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1642C8590B21642)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 48);
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = v6;
  *(v13 + 64) = *(a2 + 64);
  v7 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v7;
  sub_55F1E8(184 * v2 + 72, a2 + 72);
  v8 = 184 * v2 + 184;
  v9 = a1[1];
  v10 = 184 * v2 + *a1 - v9;
  sub_687A2C(a1, *a1, v9, v13 + *a1 - v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void sub_687A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_687BD4(va);
  _Unwind_Resume(a1);
}

void sub_687A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v10 = v6 + v7;
      v11 = a4 + v7;
      *v11 = *(v6 + v7);
      v12 = *(v6 + v7 + 16);
      v13 = *(v6 + v7 + 32);
      v14 = *(v6 + v7 + 48);
      *(v11 + 64) = *(v6 + v7 + 64);
      *(v11 + 32) = v13;
      *(v11 + 48) = v14;
      *(v11 + 16) = v12;
      *(a4 + v7 + 72) = 0;
      *(v11 + 104) = -1;
      v15 = *(v6 + v7 + 104);
      if (v15 != -1)
      {
        v17 = a4 + v7 + 72;
        (off_266BFD8[v15])(&v17, v10 + 72);
        *(v11 + 104) = v15;
      }

      *(v11 + 112) = *(v10 + 112);
      v8 = *(v10 + 120);
      *(v11 + 136) = *(v10 + 136);
      *(v11 + 120) = v8;
      *(v10 + 128) = 0;
      *(v10 + 136) = 0;
      *(v10 + 120) = 0;
      *(v11 + 144) = *(v10 + 144);
      v9 = *(v10 + 152);
      *(v11 + 168) = *(v10 + 168);
      *(v11 + 152) = v9;
      *(v10 + 160) = 0;
      *(v10 + 168) = 0;
      *(v10 + 152) = 0;
      *(v11 + 176) = *(v10 + 176);
      v7 += 184;
    }

    while (v10 + 184 != a3);
    for (; v6 != a3; v6 += 184)
    {
      if (*(v6 + 175) < 0)
      {
        operator delete(*(v6 + 152));
        if ((*(v6 + 143) & 0x80000000) == 0)
        {
LABEL_11:
          v16 = *(v6 + 104);
          if (v16 == -1)
          {
            goto LABEL_8;
          }

LABEL_15:
          (off_266BFB0[v16])(&v18, v6 + 72);
          goto LABEL_8;
        }
      }

      else if ((*(v6 + 143) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(*(v6 + 120));
      v16 = *(v6 + 104);
      if (v16 != -1)
      {
        goto LABEL_15;
      }

LABEL_8:
      *(v6 + 104) = -1;
    }
  }
}

void **sub_687BD4(void **a1)
{
  sub_687C08(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_687C08(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      if ((*(i - 41) & 0x80000000) == 0)
      {
LABEL_6:
        v4 = *(i - 80);
        if (v4 == -1)
        {
          goto LABEL_3;
        }

LABEL_10:
        (off_266BFB0[v4])(&v5, i - 112);
        goto LABEL_3;
      }
    }

    else if ((*(i - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 64));
    v4 = *(i - 80);
    if (v4 != -1)
    {
      goto LABEL_10;
    }

LABEL_3:
    *(i - 80) = -1;
  }
}

uint64_t sub_687CD0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  *(a2 + 24) = 0;
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  *(v6 + 40) = *(a2 + 40);
  v9 = 48 * v2 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v6 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v6 + *a1 - v11;
    do
    {
      *v14 = *v13;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 8) = *(v13 + 1);
      *(v14 + 24) = v13[3];
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0;
      v15 = v13[4];
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 32) = v15;
      v13 += 6;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      v16 = v10[1];
      if (v16)
      {
        v10[2] = v16;
        operator delete(v16);
      }

      v10 += 6;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_687E68(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
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

void sub_6881D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_746A0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_6881F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_746A0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_688228(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266C010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_6882B0(void *a1, int *a2)
{
  v2 = *a2;
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = *a2 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (*(v8 + 4) == v2)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(v8 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v8;
}

void sub_6885F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

void sub_68B4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_42:
                if (a72 < 0)
                {
LABEL_43:
                  operator delete(a69);
                  if ((a68 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void **sub_68B6E8(void **a1)
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
        if (*(v3 - 32) == 1)
        {
          sub_3A9518((v3 - 1152));
        }

        v3 -= 1168;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_68B760(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0x8000000080000000;
  *(a1 + 64) = 0x7FFFFFFF;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0x7FFFFFFF;
  sub_4C4D30(a2, v16);
  v4 = v16[3];
  *(a1 + 88) = v16[6];
  if (v4)
  {
    v16[4] = v4;
    operator delete(v4);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  v5 = sub_73EC4(a2);
  v6 = *v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  *(a1 + 136) = 0;
  *(a1 + 128) = v8;
  *(a1 + 112) = v7;
  *(a1 + 96) = v6;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = -1;
  *(a1 + 168) = 0;
  sub_64B998(a1 + 176);
  sub_64B998(a1 + 336);
  sub_64B998(a1 + 496);
  sub_64B998(a1 + 656);
  sub_64B998(a1 + 816);
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  sub_64B998(a1 + 1000);
  *(a1 + 1160) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = -1;
  *(a1 + 1211) = -1;
  *(a1 + 1223) = 0;
  *(a1 + 1231) = 0;
  *(a1 + 1215) = 0;
  *(a1 + 1239) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0;
  sub_559C9C(a1 + 1288);
  sub_60AEEC(a1 + 2376);
  *(a1 + 7296) = 0;
  *(a1 + 7208) = 0;
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0u;
  *(a1 + 7216) = 0u;
  *(a1 + 7232) = 0u;
  *(a1 + 7248) = 0u;
  *(a1 + 7304) = -1;
  *(a1 + 7307) = -1;
  *(a1 + 7319) = 0;
  *(a1 + 7327) = 0;
  *(a1 + 7311) = 0;
  *(a1 + 7335) = 0;
  *(a1 + 7344) = 0;
  *(a1 + 7360) = 0;
  *(a1 + 7352) = 0;
  *(a1 + 7368) = 0;
  *(a1 + 7376) = 0u;
  *(a1 + 7392) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7568) = 0u;
  *(a1 + 7584) = 0u;
  *(a1 + 7600) = 0u;
  *(a1 + 7616) = 0;
  sub_64B998(a1 + 7624);
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  *(a1 + 164) = sub_4C5154(a2);
  v9 = sub_58BBC(a2);
  v10 = v9[1] - *v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0xE21A291C077975B9 * (v10 >> 3);
    while (1)
    {
      v13 = *sub_58BBC(a2);
      v14 = *(a1 + 8);
      if (*a1 == v14)
      {
        *(a1 + 80) = *sub_3CF22C(v13 + v11);
        v14 = *(a1 + 8);
        if (v14 >= *(a1 + 16))
        {
          goto LABEL_7;
        }

LABEL_12:
        sub_69BFC0(v14, v13 + v11, 0);
        *(a1 + 8) = v14 + 12656;
        *(a1 + 8) = v14 + 12656;
        v11 += 1096;
        if (!--v12)
        {
          return a1;
        }
      }

      else
      {
        if (v14 < *(a1 + 16))
        {
          goto LABEL_12;
        }

LABEL_7:
        *(a1 + 8) = sub_60EE70(a1, v13 + v11);
        v11 += 1096;
        if (!--v12)
        {
          return a1;
        }
      }
    }
  }

  return a1;
}

void sub_68BA64(_Unwind_Exception *a1)
{
  sub_58CF24(v1 + 7624);
  sub_5EBE9C((v1 + 7592));
  sub_5EBE9C((v1 + 7568));
  sub_5706DC((v1 + 7544));
  sub_5706DC((v1 + 7520));
  v6 = *(v1 + 7496);
  if (v6)
  {
    *(v1 + 7504) = v6;
    operator delete(v6);
    if (*(v1 + 7495) < 0)
    {
LABEL_3:
      operator delete(*(v1 + 7472));
      if ((*(v1 + 7471) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if (*(v1 + 7495) < 0)
  {
    goto LABEL_3;
  }

  if ((*(v1 + 7471) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 7447) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  operator delete(*(v1 + 7448));
  if ((*(v1 + 7447) & 0x80000000) == 0)
  {
LABEL_6:
    sub_528FAC((v1 + 7400));
    sub_5D9FE8(v3);
    sub_53E440(v1 + 7264);
    if (*(v1 + 7263) < 0)
    {
      operator delete(*(v1 + 7240));
      if ((*(v1 + 7239) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((*(v1 + 7239) & 0x80000000) == 0)
    {
LABEL_8:
      v7 = *v4;
      if (!*v4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    operator delete(*(v1 + 7216));
    v7 = *v4;
    if (!*v4)
    {
LABEL_10:
      sub_5C1688(v1 + 2376);
      sub_559E70((v1 + 1288));
      sub_53E440(v1 + 1168);
      sub_53A868(v1 + 1000);
      sub_1A104((v1 + 976));
      sub_53A868(v1 + 816);
      sub_53A868(v1 + 656);
      sub_53A868(v1 + 496);
      sub_53A868(v1 + 336);
      sub_53A868((v2 + 5));
      sub_68B6E8(v2);
      sub_5EBF44((v1 + 24));
      sub_5EC430(v1);
      _Unwind_Resume(a1);
    }

LABEL_9:
    *(v1 + 7184) = v7;
    operator delete(v7);
    goto LABEL_10;
  }

LABEL_5:
  operator delete(*(v1 + 7424));
  goto LABEL_6;
}

uint64_t sub_68BC64(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0x8000000080000000;
  *(a1 + 64) = 0x7FFFFFFF;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0x7FFFFFFF;
  sub_4C4D30(a2, v22);
  v4 = v22[3];
  *(a1 + 88) = v22[6];
  if (v4)
  {
    v22[4] = v4;
    operator delete(v4);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  v5 = sub_73EC4(a2);
  v6 = *v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  *(a1 + 136) = 0;
  *(a1 + 128) = v8;
  *(a1 + 112) = v7;
  *(a1 + 96) = v6;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = -1;
  *(a1 + 168) = 0;
  sub_64B998(a1 + 176);
  sub_64B998(a1 + 336);
  sub_64B998(a1 + 496);
  sub_64B998(a1 + 656);
  sub_64B998(a1 + 816);
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  sub_64B998(a1 + 1000);
  *(a1 + 1160) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = -1;
  *(a1 + 1211) = -1;
  *(a1 + 1223) = 0;
  *(a1 + 1231) = 0;
  *(a1 + 1215) = 0;
  *(a1 + 1239) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0;
  sub_559C9C(a1 + 1288);
  sub_60AEEC(a1 + 2376);
  *(a1 + 7296) = 0;
  *(a1 + 7208) = 0;
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0u;
  *(a1 + 7216) = 0u;
  *(a1 + 7232) = 0u;
  *(a1 + 7248) = 0u;
  *(a1 + 7304) = -1;
  *(a1 + 7307) = -1;
  *(a1 + 7319) = 0;
  *(a1 + 7327) = 0;
  *(a1 + 7311) = 0;
  *(a1 + 7335) = 0;
  *(a1 + 7344) = 0;
  *(a1 + 7360) = 0;
  *(a1 + 7352) = 0;
  *(a1 + 7368) = 0;
  *(a1 + 7376) = 0u;
  *(a1 + 7392) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7568) = 0u;
  *(a1 + 7584) = 0u;
  *(a1 + 7600) = 0u;
  *(a1 + 7616) = 0;
  sub_64B998(a1 + 7624);
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  *(a1 + 164) = sub_4C5154(a2);
  v9 = sub_58BBC(a2);
  v10 = v9[1] - *v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0xE21A291C077975B9 * (v10 >> 3);
    do
    {
      v14 = *sub_58BBC(a2);
      v15 = *(a1 + 8);
      if (*a1 == v15)
      {
        *(a1 + 80) = *sub_3CF22C(v14 + v11);
        v15 = *(a1 + 8);
        if (v15 >= *(a1 + 16))
        {
LABEL_11:
          v16 = sub_60EE70(a1, v14 + v11);
          goto LABEL_12;
        }
      }

      else if (v15 >= *(a1 + 16))
      {
        goto LABEL_11;
      }

      sub_69BFC0(v15, v14 + v11, 0);
      v16 = v15 + 12656;
      *(a1 + 8) = v15 + 12656;
LABEL_12:
      *(a1 + 8) = v16;
      v17 = sub_68C210((a2 + 128), v12);
      v18 = *(a1 + 8) - 2528;
      if (v18 != v17)
      {
        sub_5FED44(v18, *v17, v17[1], 0xCCCCCCCCCCCCCCCDLL * ((v17[1] - *v17) >> 3));
      }

      v19 = sub_68C210((a2 + 128), v12);
      v20 = *(a1 + 8);
      if (v20 - 112 != v19 + 24)
      {
        *(v20 - 80) = *(v19 + 56);
        sub_601264(v20 - 112, *(v19 + 40), 0);
        *(v20 - 40) = *(v19 + 96);
        sub_601910(v20 - 72, *(v19 + 80), 0);
      }

      *(*(a1 + 8) - 2536) = *(sub_68C210((a2 + 128), v12++) + 104);
      v11 += 1096;
    }

    while (v13 != v12);
  }

  return a1;
}

void sub_68C00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  sub_58CF24(v10 + 7624);
  sub_5EBE9C((v10 + 7592));
  sub_5EBE9C((v10 + 7568));
  sub_5706DC((v10 + 7544));
  sub_5706DC((v10 + 7520));
  v13 = *(v10 + 7496);
  if (v13)
  {
    *(v10 + 7504) = v13;
    operator delete(v13);
    if (*(v10 + 7495) < 0)
    {
LABEL_3:
      operator delete(*(v10 + 7472));
      if ((*(v10 + 7471) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if (*(v10 + 7495) < 0)
  {
    goto LABEL_3;
  }

  if ((*(v10 + 7471) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v10 + 7447) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  operator delete(*(v10 + 7448));
  if ((*(v10 + 7447) & 0x80000000) == 0)
  {
LABEL_6:
    sub_528FAC((v10 + 7400));
    sub_5D9FE8(a9);
    sub_53E440(v10 + 7264);
    if (*(v10 + 7263) < 0)
    {
      operator delete(*(v10 + 7240));
      if ((*(v10 + 7239) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((*(v10 + 7239) & 0x80000000) == 0)
    {
LABEL_8:
      v14 = *a10;
      if (!*a10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    operator delete(*(v10 + 7216));
    v14 = *a10;
    if (!*a10)
    {
LABEL_10:
      sub_5C1688(v10 + 2376);
      sub_559E70((v10 + 1288));
      sub_53E440(v10 + 1168);
      sub_53A868(v10 + 1000);
      sub_1A104((v10 + 976));
      sub_53A868(v10 + 816);
      sub_53A868(v10 + 656);
      sub_53A868(v10 + 496);
      sub_53A868(v10 + 336);
      sub_53A868((v11 + 5));
      sub_68B6E8(v11);
      sub_5EBF44((v10 + 24));
      sub_5EC430(v10);
      _Unwind_Resume(a1);
    }

LABEL_9:
    *(v10 + 7184) = v14;
    operator delete(v14);
    goto LABEL_10;
  }

LABEL_5:
  operator delete(*(v10 + 7424));
  goto LABEL_6;
}

uint64_t sub_68C210(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 112 * a2;
}

void sub_68C364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void *sub_68C448@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_68C464(void *a1, void *a2)
{
  if (0x5DDB1ADCB91F64A7 * ((a2[1] - *a2) >> 4) >= (0x5DDB1ADCB91F64A7 * ((a1[1] - *a1) >> 4)))
  {
    v2 = 0x5DDB1ADCB91F64A7 * ((a1[1] - *a1) >> 4);
  }

  else
  {
    v2 = 0x5DDB1ADCB91F64A7 * ((a2[1] - *a2) >> 4);
  }

  if (v2)
  {
    v5 = 0;
    while (1)
    {
      v6 = nullsub_1(*a1 + 12656 * v5);
      v7 = nullsub_1(*a2 + 12656 * v5);
      v9 = *v6;
      v8 = v6[1];
      if (v8 - *v6 != v7[1] - *v7)
      {
        break;
      }

      if (v9 != v8)
      {
        v10 = (*v7 + 32);
        do
        {
          v12 = *v10;
          v10 += 5;
          v11 = BYTE6(v12);
          if (__PAIR64__(*(v9 + 36), *(v9 + 32)) != __PAIR64__(WORD2(v12), v12) || *(v9 + 38) != v11)
          {
            goto LABEL_14;
          }

          v9 += 40;
        }

        while (v9 != v8);
      }

      if (++v5 == v2)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    v14 = v5 & 0xFFFFFFFFFFFFFF00;
    v13 = v5;
  }

  else
  {
LABEL_13:
    v13 = 0;
    v14 = 0;
  }

  return v14 | v13;
}

uint64_t sub_68C5B4(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  else
  {
    return 0x5DDB1ADCB91F64A7 * ((v1 - *a1) >> 4) - 1;
  }
}

void sub_68C5EC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v14 = a1[1];
  if (*a1 != v14)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 1104);
      v6 = *(v3 + 1112);
      if (v5 != v6)
      {
        v7 = *(v3 + 1104);
        do
        {
          while (1)
          {
            v8 = a2[2];
            if (v4 >= v8)
            {
              break;
            }

            *v4 = v5;
            v4 += 8;
            a2[1] = v4;
            v7 += 2616;
            v5 += 2616;
            if (v7 == v6)
            {
              goto LABEL_3;
            }
          }

          v9 = v4;
          v10 = v4 >> 3;
          v11 = v10 + 1;
          if ((v10 + 1) >> 61)
          {
            *a2 = 0;
            sub_1794();
          }

          if (v8 >> 2 > v11)
          {
            v11 = v8 >> 2;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (!(v12 >> 61))
            {
              operator new();
            }

            *a2 = 0;
            sub_1808();
          }

          v13 = (8 * v10);
          *v13 = v5;
          v4 = (v13 + 1);
          memcpy(0, 0, v9);
          a2[1] = v4;
          a2[2] = 0;
          a2[1] = v4;
          v7 += 2616;
          v5 += 2616;
        }

        while (v7 != v6);
      }

LABEL_3:
      *a2 = 0;
      v3 += 12656;
    }

    while (v3 != v14);
  }
}