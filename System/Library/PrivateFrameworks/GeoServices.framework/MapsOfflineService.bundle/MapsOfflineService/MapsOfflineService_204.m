uint64_t sub_C28374(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *(a3 + 56);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      result = sub_C28118(v6, (v3 + 184), *a2);
      v3 += 248;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_C283C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  for (i = *(a2 + 16); v3 != i; v3 += 37)
  {
    v7 = *(a3 + 24);
    if (!v7)
    {
      sub_2B7420();
    }

    if ((*(*v7 + 48))(v7, v3))
    {
      sub_C28458(a1, v3);
    }
  }
}

void sub_C28458(uint64_t a1, void *a2)
{
  v3 = sub_A51E58(a2, 1);
  if (HIDWORD(v3) == 0x7FFFFFFF)
  {
    v4 = v3;
  }

  else
  {
    v4 = HIDWORD(v3);
  }

  if (v4 != 0x7FFFFFFF)
  {
    v6 = a2[31];
    v5 = a2[32];
    if (v6 != v5)
    {
      while (*(v6 + 4) >= v4 && *v6 <= v4)
      {
        v6 += 40;
        if (v6 == v5)
        {
          goto LABEL_26;
        }
      }

      if (v6 != v5)
      {
        v8 = (v6 + 40);
        if ((v6 + 40) != v5)
        {
          do
          {
            if (*(v8 + 1) >= v4 && *v8 <= v4)
            {
              v10 = *v8;
              v11 = v8[1];
              *(v6 + 32) = *(v8 + 32);
              *v6 = v10;
              *(v6 + 16) = v11;
              v6 += 40;
            }

            v8 = (v8 + 40);
          }

          while (v8 != v5);
          v5 = a2[32];
        }
      }
    }

    if (v6 != v5)
    {
      a2[32] = v6;
    }
  }

LABEL_26:
  v13 = a2[25];
  for (i = a2[26]; v13 != i; v13 += 9)
  {
    sub_C2856C(v3, v13);
  }
}

void sub_C2856C(uint64_t a1, uint64_t *a2)
{
  if (!*(a2 + 24))
  {
    v2 = *a2;
    if (*a2 != a2[1])
    {
      if (*(v2 + 160))
      {
        goto LABEL_53;
      }

      v4 = a2[4];
      v3 = a2[5];
      if (v4 != v3)
      {
        v5 = *(v2 + 4 * (*(v2 + 12) != 0x7FFFFFFF) + 8);
        while (*(v4 + 4) >= v5 && *v4 <= v5)
        {
          v4 += 40;
          if (v4 == v3)
          {
            goto LABEL_27;
          }
        }

        if (v4 != v3)
        {
          v7 = (v4 + 40);
          if ((v4 + 40) != v3)
          {
            do
            {
              if (*(v7 + 1) >= v5 && *v7 <= v5)
              {
                v9 = *v7;
                v10 = v7[1];
                *(v4 + 32) = *(v7 + 32);
                *v4 = v9;
                *(v4 + 16) = v10;
                v4 += 40;
              }

              v7 = (v7 + 40);
            }

            while (v7 != v3);
            v3 = a2[5];
          }
        }
      }

      if (v4 != v3)
      {
        a2[5] = v4;
      }

LABEL_27:
      v11 = *a2;
      v12 = a2[1];
      if (*a2 != v12)
      {
        while (!*(v11 + 160))
        {
          v14 = *(v11 + 120);
          v13 = *(v11 + 128);
          if (v14 != v13)
          {
            v15 = *(v11 + 4 * (*(v11 + 12) != 0x7FFFFFFF) + 8);
            while (*(v14 + 4) >= v15 && *v14 <= v15)
            {
              v14 += 40;
              if (v14 == v13)
              {
                goto LABEL_29;
              }
            }

            if (v14 != v13)
            {
              v17 = (v14 + 40);
              if ((v14 + 40) != v13)
              {
                do
                {
                  if (*(v17 + 1) >= v15 && *v17 <= v15)
                  {
                    v19 = *v17;
                    v20 = v17[1];
                    *(v14 + 32) = *(v17 + 32);
                    *v14 = v19;
                    *(v14 + 16) = v20;
                    v14 += 40;
                  }

                  v17 = (v17 + 40);
                }

                while (v17 != v13);
                v13 = *(v11 + 128);
              }
            }
          }

          if (v14 != v13)
          {
            *(v11 + 128) = v14;
          }

LABEL_29:
          v11 += 168;
          if (v11 == v12)
          {
            return;
          }
        }

LABEL_53:
        sub_5AF20();
      }
    }
  }
}

_DWORD *sub_C2876C(_DWORD *a1, void *a2)
{
  v2 = a2;
  if ((atomic_load_explicit(&qword_27B3F40, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_27B3F40);
    v2 = a2;
    if (v7)
    {
      v10 = 0;
      sub_588C98(__p, "suggested", &v10);
      v9 = 1;
      sub_588C98(&v13, "regular", &v9);
      sub_C28C60(qword_27B3F48, __p, 2);
      if (v14 < 0)
      {
        operator delete(v13);
      }

      if (v12 < 0)
      {
        operator delete(*__p);
      }

      __cxa_guard_release(&qword_27B3F40);
      v2 = a2;
    }
  }

  v12 = 20;
  strcpy(__p, "filter_category_type");
  v4 = sub_5F8FC(v2, __p);
  v5 = sub_C29108(qword_27B3F48, v4);
  if (!v5)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  *a1 = *(v5 + 10);
  if (v12 < 0)
  {
    operator delete(*__p);
  }

  return a1;
}

void sub_C288E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_guard_abort(&qword_27B3F40);
      _Unwind_Resume(a1);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  __cxa_guard_abort(&qword_27B3F40);
  _Unwind_Resume(a1);
}

void sub_C2895C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C2897C(uint64_t result, void *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    return result;
  }

  v5 = result;
  v6 = v2 - v3 - 112;
  v7 = ((v6 >> 4) * 0x2492492492492493uLL) >> 64;
  v8 = v7 + 1;
  if (v6 < 0x70)
  {
    v9 = 0;
    v10 = *a2;
    do
    {
LABEL_11:
      if (*(v10 + 104))
      {
        ++v9;
      }

      v10 += 7;
    }

    while (v10 != v2);
    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
  v10 = &v3[7 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v13 = v3 + 216;
  v14 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v15 = *(v13 - 112);
    v16 = *v13;
    v13 += 224;
    result = v16;
    if (v15)
    {
      ++v11;
    }

    if (result)
    {
      ++v12;
    }

    v14 -= 2;
  }

  while (v14);
  v9 = v12 + v11;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v9 != 1)
  {
    return result;
  }

  if (v6 >= 0x70)
  {
    v19 = 0;
    v20 = 0;
    v18 = &v3[7 * (v8 & 0x7FFFFFFFFFFFFFELL)];
    v21 = v3 + 216;
    v22 = v8 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      v23 = *(v21 - 112);
      v25 = *v21;
      v21 += 224;
      v24 = v25;
      if (!v23)
      {
        ++v19;
      }

      if (!v24)
      {
        ++v20;
      }

      v22 -= 2;
    }

    while (v22);
    v17 = v20 + v19;
    if (v8 == (v8 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v17 = 0;
    v18 = *a2;
  }

  do
  {
    if (!*(v18 + 104))
    {
      ++v17;
    }

    v18 += 7;
  }

  while (v18 != v2);
LABEL_27:
  if (v17 != 1)
  {
    return result;
  }

  if (*v5)
  {
    if (*v5 == 1)
    {
      while (!*(v3 + 104))
      {
        v3 += 7;
        if (v3 == v2)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v3 += 7 * v7 + 7;
    }
  }

  else
  {
    while (*(v3 + 104))
    {
      v3 += 7;
      if (v3 == v2)
      {
LABEL_32:
        v26 = a2[1];
        goto LABEL_60;
      }
    }
  }

  if (v3 == v2 || (v27 = v3 + 7, v3 + 7 == v2))
  {
    v26 = a2[1];
    v2 = v3;
    goto LABEL_60;
  }

  v28 = v3;
  do
  {
    v30 = v3;
    v3 = v27;
    if (*v5)
    {
      if (*v5 == 1 && *(v30 + 216) != 0)
      {
        goto LABEL_44;
      }
    }

    else if (!*(v30 + 216))
    {
      goto LABEL_44;
    }

    *v28 = *v27;
    v32 = v27[1];
    v33 = v27[2];
    v34 = v27[4];
    *(v28 + 48) = v27[3];
    *(v28 + 64) = v34;
    *(v28 + 16) = v32;
    *(v28 + 32) = v33;
    v35 = (v28 + 80);
    v36 = *(v28 + 80);
    if (v36)
    {
      v37 = *(v28 + 88);
      v29 = *(v28 + 80);
      if (v37 != v36)
      {
        do
        {
          v38 = *(v37 - 32);
          if (v38)
          {
            *(v37 - 24) = v38;
            operator delete(v38);
          }

          v37 -= 112;
        }

        while (v37 != v36);
        v29 = *v35;
      }

      *(v28 + 88) = v36;
      operator delete(v29);
      *v35 = 0;
      *(v28 + 88) = 0;
      *(v28 + 96) = 0;
    }

    *(v28 + 80) = v30[12];
    *(v28 + 96) = *(v30 + 26);
    *(v30 + 24) = 0;
    *(v30 + 25) = 0;
    *(v30 + 26) = 0;
    *(v28 + 104) = *(v30 + 216);
    v28 += 112;
LABEL_44:
    v27 = v3 + 7;
  }

  while (v3 + 7 != v2);
  v26 = a2[1];
  v2 = v28;
LABEL_60:

  return sub_BE4C58(a2, v2, v26);
}

uint64_t sub_C28C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_C28CD8(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_C28CD8(void *a1, uint64_t a2)
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

void sub_C290DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_C290F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_C29108(void *a1, uint64_t a2)
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

void sub_C2937C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C29398(_BYTE *a1, uint64_t *a2)
{
  if (*a2 != a2[1] || *a1 == 1)
  {
    sub_C295C8(a2, v23);
    sub_C29924(v3, a2, v23);
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      v6 = v23[0];
      do
      {
        v7 = *(v4 + 80);
        v8 = *(v4 + 88);
        while (v7 != v8)
        {
          v9 = *(v7 + 80);
          for (i = *(v7 + 88); v9 != i; v9 += 4)
          {
            *v9 = v6[*v9];
          }

          v7 += 112;
        }

        v4 += 112;
      }

      while (v4 != v5);
    }

    sub_C29B50(a2, &__p);
    v11 = a2[6];
    v12 = a2[7];
    if (v11 != v12)
    {
      v13 = 0;
      v14 = __p;
      v15 = v11 + 248;
      while (*(__p - 0x1084210842108421 * (v13 >> 1)) != -1)
      {
        v11 += 248;
        v15 += 248;
        v13 += 248;
        if (v11 == v12)
        {
          v11 = a2[7];
          goto LABEL_24;
        }
      }

      if (v11 != v12)
      {
        v16 = v11 + 248;
        if (v11 + 248 != v12)
        {
          do
          {
            if (*&v14[0xEF7BDEF7BDEF7BDFLL * ((v15 - a2[6]) >> 1)] != -1)
            {
              sub_C197A8(v11, v16);
              v11 += 248;
            }

            v16 += 248;
            v15 += 248;
          }

          while (v16 != v12);
          v12 = a2[7];
        }
      }
    }

LABEL_24:
    sub_C196DC((a2 + 6), v11, v12);
    v17 = a2[3];
    v18 = a2[4];
    v19 = __p;
    while (v17 != v18)
    {
      v20 = *(v17 + 72);
      for (j = *(v17 + 80); v20 != j; v20 += 4)
      {
        *v20 = v19[*v20];
      }

      v17 += 160;
    }

    if (v19)
    {
      operator delete(v19);
    }

    if (v23[0])
    {
      operator delete(v23[0]);
    }
  }
}

void sub_C29584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
    v13 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_C295C8(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v5 = v3 - v4;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = 0;
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_4;
  }

  do
  {
    v9 = *(v8 + 80);
    v10 = *(v8 + 88);
    while (v9 != v10)
    {
      v11 = *(v9 + 80);
      for (i = *(v9 + 88); v11 != i; v11 += 4)
      {
        v13 = sub_41440(&v26, *v11);
        *v13 |= v14;
      }

      v9 += 112;
    }

    v8 += 112;
  }

  while (v8 != v7);
  v6 = v26;
  v15 = v27;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v15 <= 0x3F && (v15 & 0x3F) == 0)
  {
LABEL_4:
    if (!v6)
    {
      return;
    }

    goto LABEL_5;
  }

  v23 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v25 = &v6[v15 >> 6];
  v24 = v15 & 0x3F;
  do
  {
    if (((1 << v19) & *v6) != 0)
    {
      v20 = v18;
    }

    else
    {
      v20 = -1;
    }

    if (((1 << v19) & *v6) != 0)
    {
      ++v18;
    }

    v21 = v17;
    v22 = v17 >> 2;
    if (((v17 >> 2) + 1) >> 62)
    {
      v23[1] = v17;
      v23[2] = 0;
      *v23 = 0;
      sub_1794();
    }

    if (v17 >> 2 != -1)
    {
      if (!(((v17 >> 2) + 1) >> 62))
      {
        operator new();
      }

      v23[1] = v17;
      v23[2] = 0;
      *v23 = 0;
      sub_1808();
    }

    *(4 * v22) = v20;
    v17 = 4 * v22 + 4;
    memcpy(0, 0, v21);
    v6 += v19 == 63;
    if (v19 == 63)
    {
      v19 = 0;
    }

    else
    {
      ++v19;
    }
  }

  while (v19 != v24 || v6 != v25);
  v23[1] = v17;
  v23[2] = 0;
  *v23 = 0;
  v6 = v26;
  if (v26)
  {
LABEL_5:
    operator delete(v6);
  }
}

void sub_C298D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  a10[1] = v15;
  a10[2] = a11;
  *a10 = v14;
  if (v14)
  {
    a10[1] = v14;
    operator delete(v14);
  }

  v17 = a1;
  if (__p)
  {
    operator delete(__p);
    v17 = a1;
  }

  _Unwind_Resume(v17);
}

void sub_C29924(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4 != v5)
  {
    v7 = 0;
    v8 = v4 + 160;
    while (*(*a3 - 0x3333333333333333 * (v7 >> 3)) != -1)
    {
      v8 += 160;
      v7 += 160;
      if (v4 + v7 == v5)
      {
        return;
      }
    }

    v4 += v7;
    if (v4 != v5)
    {
      v9 = v4 + 160;
      if (v4 + 160 != v5)
      {
        do
        {
          if (*(*a3 - 0x3333333333333333 * ((v8 - *(a2 + 24)) >> 3)) != -1)
          {
            *v4 = *v9;
            v13 = *(v9 + 16);
            v14 = *(v9 + 32);
            v15 = *(v9 + 48);
            *(v4 + 64) = *(v9 + 64);
            *(v4 + 32) = v14;
            *(v4 + 48) = v15;
            *(v4 + 16) = v13;
            v16 = *(v4 + 72);
            if (v16)
            {
              *(v4 + 80) = v16;
              operator delete(v16);
              *(v4 + 72) = 0;
              *(v4 + 80) = 0;
              *(v4 + 88) = 0;
            }

            *(v4 + 72) = *(v9 + 72);
            *(v4 + 88) = *(v9 + 88);
            *(v9 + 72) = 0;
            *(v9 + 80) = 0;
            *(v9 + 88) = 0;
            v10 = *(v9 + 96);
            v11 = *(v9 + 112);
            v12 = *(v9 + 128);
            *(v4 + 142) = *(v9 + 142);
            *(v4 + 112) = v11;
            *(v4 + 128) = v12;
            *(v4 + 96) = v10;
            v4 += 160;
          }

          v9 += 160;
          v8 += 160;
        }

        while (v9 != v5);
        v5 = *(a2 + 32);
      }
    }
  }

  if (v4 != v5)
  {
    while (v5 != v4)
    {
      v17 = *(v5 - 88);
      if (v17)
      {
        *(v5 - 80) = v17;
        operator delete(v17);
      }

      v5 -= 160;
    }

    *(a2 + 32) = v4;
  }
}

void sub_C29B50(void *a1@<X1>, void *a2@<X8>)
{
  v4 = a1[6];
  v3 = a1[7];
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v5 = v3 - v4;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = 0;
  v8 = a1[3];
  v7 = a1[4];
  if (v8 == v7)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_4;
  }

  do
  {
    v9 = *(v8 + 72);
    for (i = *(v8 + 80); v9 != i; v9 += 4)
    {
      v11 = sub_41440(&v23, *v9);
      *v11 |= v12;
    }

    v8 += 160;
  }

  while (v8 != v7);
  v6 = v23;
  v13 = v24;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v13 <= 0x3F && (v13 & 0x3F) == 0)
  {
LABEL_4:
    if (!v6)
    {
      return;
    }

    goto LABEL_5;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v22 = &v6[v13 >> 6];
  v21 = v13 & 0x3F;
  do
  {
    if (((1 << v17) & *v6) != 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = -1;
    }

    if (((1 << v17) & *v6) != 0)
    {
      ++v16;
    }

    v19 = v15;
    v20 = v15 >> 2;
    if (((v15 >> 2) + 1) >> 62)
    {
      a2[1] = v15;
      a2[2] = 0;
      *a2 = 0;
      sub_1794();
    }

    if (v15 >> 2 != -1)
    {
      if (!(((v15 >> 2) + 1) >> 62))
      {
        operator new();
      }

      a2[1] = v15;
      a2[2] = 0;
      *a2 = 0;
      sub_1808();
    }

    *(4 * v20) = v18;
    v15 = 4 * v20 + 4;
    memcpy(0, 0, v19);
    v6 += v17 == 63;
    if (v17 == 63)
    {
      v17 = 0;
    }

    else
    {
      ++v17;
    }
  }

  while (v17 != v21 || v6 != v22);
  a2[1] = v15;
  a2[2] = 0;
  *a2 = 0;
  v6 = v23;
  if (v23)
  {
LABEL_5:
    operator delete(v6);
  }
}

void sub_C29E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  a10[1] = v15;
  a10[2] = a11;
  *a10 = v14;
  if (v14)
  {
    a10[1] = v14;
    operator delete(v14);
  }

  v17 = a1;
  if (__p)
  {
    operator delete(__p);
    v17 = a1;
  }

  _Unwind_Resume(v17);
}

void sub_C29EA0(BOOL *a1, void *a2)
{
  v9 = 18;
  strcpy(__p, "check_nearby_stops");
  v4 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 21;
  strcpy(__p, "check_market_polygons");
  v6 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  a1[1] = v6;
  operator new();
}

void sub_C2A050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C2A0A8(uint64_t a1)
{
  v2 = sub_C2A360(a1);
  if (*a1 == 1)
  {
    sub_A82C20(&v24, *(a1 + 16), 0x1FFFFFFFDuLL);
    v3 = v25;
    v4 = 16;
    if (v29)
    {
      v4 = 32;
    }

    if (v25 >= *(&v24 + v4))
    {
LABEL_37:
      v13 = 18;
      if (*(a1 + 1) == 1)
      {
        goto LABEL_42;
      }

LABEL_38:
      v14 = 0;
      goto LABEL_45;
    }

    while (1)
    {
      sub_A7905C(v23, *(a1 + 16), __ROR8__(*v3, 32), 0, 1, 0);
      if (v23[9] < v23[10])
      {
        break;
      }

      v5 = v26;
      v3 = (v25 + 12);
      v25 = v3;
      if (v3 == v26)
      {
        v3 = v27;
        v25 = v27;
        v6 = 1;
        v29 = 1;
      }

      else
      {
        v6 = v29;
      }

      v7 = v28;
      if (v6)
      {
        v8 = v28;
      }

      else
      {
        v8 = v26;
      }

      if (*(v24 + 16) == 1 && v3 < v8)
      {
        while (1)
        {
          v10 = __ROR8__(*v3, 32);
          if (HIDWORD(v10) == 1 && (v10 + 3) < 2)
          {
            break;
          }

          if (sub_2D5204(**(v24 + 4120)))
          {
            v3 = v25;
            v5 = v26;
            v6 = v29;
            break;
          }

          v5 = v26;
          v3 = (v25 + 12);
          v25 = v3;
          if (v3 == v26)
          {
            v3 = v27;
            v25 = v27;
            v6 = 1;
            v29 = 1;
            if (v27 >= v28)
            {
              break;
            }
          }

          else
          {
            v6 = v29;
            if (v29)
            {
              v12 = 32;
            }

            else
            {
              v12 = 16;
            }

            if (v3 >= *(&v24 + v12))
            {
              break;
            }
          }
        }

        v7 = v28;
      }

      if (v6)
      {
        v5 = v7;
      }

      if (v3 >= v5)
      {
        goto LABEL_37;
      }
    }

    if (*a1)
    {
      v15 = 0;
      v14 = 0;
      v16 = v2 != 0;
      goto LABEL_52;
    }
  }

  v13 = 0;
  if (*(a1 + 1) != 1)
  {
    goto LABEL_38;
  }

LABEL_42:
  if (sub_C2A580())
  {
    v14 = 0;
  }

  else
  {
    v14 = 19;
  }

LABEL_45:
  if (v13 > v14)
  {
    v14 = v13;
  }

  v16 = v2 != 0;
  v15 = v14 != 0;
  if (v2)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (v2 <= v14)
    {
      return v14;
    }

    else
    {
      return v2;
    }
  }

LABEL_52:
  if (!v16 || v14)
  {
    v20 = !v15;
    if (v2)
    {
      v20 = 1;
    }

    if (v14 == 18)
    {
      v21 = 35;
    }

    else
    {
      v21 = 0;
    }

    if (v14 == 19)
    {
      v22 = 36;
    }

    else
    {
      v22 = v21;
    }

    if (v20)
    {
      return 0;
    }

    else
    {
      return v22;
    }
  }

  else
  {
    if (v2 == 18)
    {
      v18 = 28;
    }

    else
    {
      v18 = 0;
    }

    if (v2 == 19)
    {
      return 29;
    }

    else
    {
      return v18;
    }
  }
}

uint64_t sub_C2A360(uint64_t a1)
{
  if (*a1 != 1)
  {
    v4 = 0;
LABEL_39:
    if (*(a1 + 1) == 1)
    {
      if (sub_C2A580())
      {
        v13 = 0;
      }

      else
      {
        v13 = 19;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v4 <= v13)
    {
      return v13;
    }

    else
    {
      return v4;
    }
  }

  sub_A74644(&v16, *(a1 + 16), 0x1FFFFFFFEuLL);
  v2 = v17;
  v3 = 16;
  if (v21)
  {
    v3 = 32;
  }

  if (v17 >= *(&v16 + v3))
  {
LABEL_38:
    v4 = 18;
    goto LABEL_39;
  }

  while (1)
  {
    sub_A7905C(v15, *(a1 + 16), __ROR8__(*v2, 32), 0, 1, 0);
    if (v15[9] < v15[10])
    {
      break;
    }

    v5 = v18;
    v2 = (v17 + 12);
    v17 = v2;
    if (v2 == v18)
    {
      v2 = v19;
      v17 = v19;
      v6 = 1;
      v21 = 1;
    }

    else
    {
      v6 = v21;
    }

    v7 = v20;
    if (v6)
    {
      v8 = v20;
    }

    else
    {
      v8 = v18;
    }

    if (*(v16 + 16) == 1 && v2 < v8)
    {
      while (1)
      {
        v10 = __ROR8__(*v2, 32);
        if (HIDWORD(v10) == 1 && (v10 + 3) < 2)
        {
          break;
        }

        if (sub_2D5204(**(v16 + 4120)))
        {
          v2 = v17;
          v5 = v18;
          v6 = v21;
          break;
        }

        v5 = v18;
        v2 = (v17 + 12);
        v17 = v2;
        if (v2 == v18)
        {
          v2 = v19;
          v17 = v19;
          v6 = 1;
          v21 = 1;
          if (v19 >= v20)
          {
            break;
          }
        }

        else
        {
          v6 = v21;
          if (v21)
          {
            v12 = 32;
          }

          else
          {
            v12 = 16;
          }

          if (v2 >= *(&v16 + v12))
          {
            break;
          }
        }
      }

      v7 = v20;
    }

    if (v6)
    {
      v5 = v7;
    }

    if (v2 >= v5)
    {
      goto LABEL_38;
    }
  }

  v4 = 0;
  result = 0;
  if ((*a1 & 1) == 0)
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_C2A564(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 584) - 1) > 1)
  {
    return 0;
  }

  else
  {
    return sub_C2A360(a1);
  }
}

uint64_t sub_C2A580()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = sub_3AFDAC(*(v0 + 8));
  v4 = *(v3 + 8);
  v28 = *v3;
  v29 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memcpy(v30, (v3 + 16), sizeof(v30));
  v5 = *(v3 + 3880);
  v31 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memcpy(v32, (v3 + 3888), sizeof(v32));
  v6 = *(v3 + 7752);
  v33 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = *(v3 + 7760);
  sub_58168(*v2 >> 17, v2[1] >> 17);
  v8 = v7 | 0x40000000;
  do
  {
    v9 = v8;
    v10 = sub_BA4870(&v28, v8, 1);
    if (v10)
    {
      v11 = &v10[-*v10];
      if (*v11 >= 5u)
      {
        if (*(v11 + 2))
        {
          v12 = sub_BA4870(&v28, v9, 1);
          if (v12)
          {
            v13 = &v12[-*v12];
            if (*v13 >= 5u)
            {
              v14 = *(v13 + 2);
              if (v14)
              {
                v15 = &v12[v14 + *&v12[v14]];
                v16 = &v15[-*v15];
                if (*v16 >= 7u)
                {
                  v17 = *(v16 + 3);
                  if (v17)
                  {
                    if (*&v15[v17 + *&v15[v17]])
                    {
                      operator new();
                    }
                  }
                }
              }
            }
          }

          v18 = sub_BA4870(&v28, v9, 1);
          if (v18)
          {
            v19 = &v18[-*v18];
            if (*v19 >= 5u)
            {
              v20 = *(v19 + 2);
              if (v20)
              {
                v21 = &v18[v20 + *&v18[v20]];
                v22 = &v21[-*v21];
                if (*v22 >= 9u)
                {
                  v23 = *(v22 + 4);
                  if (v23)
                  {
                    if (*&v21[v23 + *&v21[v23]])
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

    v8 = v9 >> 2;
  }

  while (v9 > 3);
  v24 = v33;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  return 0;
}

void sub_C2AC98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BA4254(va);
  _Unwind_Resume(a1);
}

char *sub_C2AD24(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_BA4870(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
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

void sub_C2AEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_C2AF68(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v36[0] = sub_C2B148(a1, *a2);
  v36[1] = v6;
  if (!sub_32A18(v36, a3))
  {
    return 0;
  }

  sub_C2B35C(a1, *a2, &__p);
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

std::string::size_type sub_C2B148(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_BA4870(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
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

void sub_C2B2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_C2B35C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = sub_BA4870(a1, a2, 1);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 5u) || (v8 = *(v7 + 2)) == 0 || (v9 = &v6[v8 + *&v6[v8]], v10 = &v9[-*v9], *v10 < 5u) || (v11 = *(v10 + 2)) == 0 || (v12 = &v9[v11 + *&v9[v11]], *v12 <= v5))
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

void sub_C2B4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_C2B540(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v8[0] = 0x1FFFFFFFELL;
  sub_C2B640(a1, v8, &v6);
  v8[0] = 0x1FFFFFFFDLL;
  sub_C2B914(a1, v8, &__p);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_C2BBE8(v6, v7, __p, v5, a2, v8);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_C2B5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
    v16 = __p;
    if (!__p)
    {
LABEL_3:
      v17 = a12;
      if (!a12)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v16 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  v17 = a12;
  if (!a12)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v17);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_C2B640@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_A74644(&v27, *a1, *a2);
  v4 = v28;
  v5 = v29;
  if (v32)
  {
    v6 = v31;
  }

  else
  {
    v6 = v29;
  }

  if (v28 >= v6)
  {
    v7 = 0;
    v23 = 0;
    goto LABEL_53;
  }

  v7 = 0;
  do
  {
    if (*(v4 + 2))
    {
      v4 = (v4 + 12);
      v28 = v4;
      if (v4 != v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = __ROR8__(*v4, 32);
      v12 = a3[2];
      if (v7 >= v12)
      {
        v13 = v7;
        v14 = v7 >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          sub_1794();
        }

        if (v12 >> 2 > v15)
        {
          v15 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          if (!(v16 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v17 = (8 * v14);
        *v17 = v11;
        v7 = (v17 + 1);
        memcpy(0, 0, v13);
        *a3 = 0;
        a3[1] = v7;
        a3[2] = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      a3[1] = v7;
      v5 = v29;
      v4 = (v28 + 12);
      v28 = v4;
      if (v4 != v29)
      {
LABEL_14:
        v8 = v32;
        goto LABEL_29;
      }
    }

    v4 = v30;
    v28 = v30;
    v8 = 1;
    v32 = 1;
LABEL_29:
    v9 = v31;
    if (v8)
    {
      v18 = v31;
    }

    else
    {
      v18 = v5;
    }

    if (*(v27 + 16) == 1 && v4 < v18)
    {
      while (1)
      {
        v20 = __ROR8__(*v4, 32);
        if (HIDWORD(v20) == 1 && (v20 + 3) < 2)
        {
          break;
        }

        if (sub_2D5204(**(v27 + 4120)))
        {
          v4 = v28;
          v5 = v29;
          v8 = v32;
          break;
        }

        v5 = v29;
        v4 = (v28 + 12);
        v28 = v4;
        if (v4 == v29)
        {
          v4 = v30;
          v28 = v30;
          v8 = 1;
          v32 = 1;
          if (v30 >= v31)
          {
            break;
          }
        }

        else
        {
          v8 = v32;
          if (v32)
          {
            v22 = 32;
          }

          else
          {
            v22 = 16;
          }

          if (v4 >= *(&v27 + v22))
          {
            break;
          }
        }
      }

      v9 = v31;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }
  }

  while (v4 < v10);
  v23 = *a3;
LABEL_53:
  v24 = 126 - 2 * __clz((v7 - v23) >> 3);
  if (v7 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  return sub_BD71E4(v23, v7, &v27, v25, 1);
}

void sub_C2B8E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_C2B914@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_A82C20(&v27, *a1, *a2);
  v4 = v28;
  v5 = v29;
  if (v32)
  {
    v6 = v31;
  }

  else
  {
    v6 = v29;
  }

  if (v28 >= v6)
  {
    v7 = 0;
    v23 = 0;
    goto LABEL_53;
  }

  v7 = 0;
  do
  {
    if (*(v4 + 2))
    {
      v4 = (v4 + 12);
      v28 = v4;
      if (v4 != v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = __ROR8__(*v4, 32);
      v12 = a3[2];
      if (v7 >= v12)
      {
        v13 = v7;
        v14 = v7 >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          sub_1794();
        }

        if (v12 >> 2 > v15)
        {
          v15 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          if (!(v16 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v17 = (8 * v14);
        *v17 = v11;
        v7 = (v17 + 1);
        memcpy(0, 0, v13);
        *a3 = 0;
        a3[1] = v7;
        a3[2] = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      a3[1] = v7;
      v5 = v29;
      v4 = (v28 + 12);
      v28 = v4;
      if (v4 != v29)
      {
LABEL_14:
        v8 = v32;
        goto LABEL_29;
      }
    }

    v4 = v30;
    v28 = v30;
    v8 = 1;
    v32 = 1;
LABEL_29:
    v9 = v31;
    if (v8)
    {
      v18 = v31;
    }

    else
    {
      v18 = v5;
    }

    if (*(v27 + 16) == 1 && v4 < v18)
    {
      while (1)
      {
        v20 = __ROR8__(*v4, 32);
        if (HIDWORD(v20) == 1 && (v20 + 3) < 2)
        {
          break;
        }

        if (sub_2D5204(**(v27 + 4120)))
        {
          v4 = v28;
          v5 = v29;
          v8 = v32;
          break;
        }

        v5 = v29;
        v4 = (v28 + 12);
        v28 = v4;
        if (v4 == v29)
        {
          v4 = v30;
          v28 = v30;
          v8 = 1;
          v32 = 1;
          if (v30 >= v31)
          {
            break;
          }
        }

        else
        {
          v8 = v32;
          if (v32)
          {
            v22 = 32;
          }

          else
          {
            v22 = 16;
          }

          if (v4 >= *(&v27 + v22))
          {
            break;
          }
        }
      }

      v9 = v31;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }
  }

  while (v4 < v10);
  v23 = *a3;
LABEL_53:
  v24 = 126 - 2 * __clz((v7 - v23) >> 3);
  if (v7 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  return sub_BD71E4(v23, v7, &v27, v25, 1);
}

void sub_C2BBBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_C2BBE8(unsigned int *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X4>, unsigned int **a6@<X8>)
{
  if (a3 != a4)
  {
    v10 = a3;
    v11 = 0;
    while (1)
    {
      v12 = a2;
      if (a1 != a2)
      {
        v14 = *v10;
        v13 = v10[1];
        v15 = a1[1];
        v16 = v15 == v13;
        v17 = v15 < v13;
        if (v16)
        {
          v17 = *a1 < *v10;
        }

        v12 = a1;
        if (v17)
        {
          break;
        }
      }

LABEL_40:
      v33 = v12 == a1;
      if (v33 && v11)
      {
        sub_2512DC(a5, v12);
        v33 = 0;
        v12 += 2;
        v10 += 2;
      }

      if (v12 == a2)
      {
        goto LABEL_2;
      }

      v34 = a4;
      if (v10 != a4)
      {
        v36 = *v12;
        v35 = v12[1];
        v37 = v10[1];
        v16 = v37 == v35;
        v38 = v37 < v35;
        if (v16)
        {
          v38 = *v10 < *v12;
        }

        v34 = v10;
        if (v38)
        {
          v39 = (a4 - v10) >> 3;
          if (v39 >= 1)
          {
            v39 = 1;
          }

          v34 = &v10[2 * v39];
          if (v34 == a4)
          {
            v43 = v10;
            v34 = a4;
            if (!v39)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v40 = v34[1];
            v16 = v40 == v35;
            v41 = v40 < v35;
            if (v16)
            {
              v41 = *v34 < v36;
            }

            if (v41)
            {
              v42 = 1;
              while (1)
              {
                v43 = v34;
                v42 *= 2;
                v39 = (a4 - v34) >> 3;
                if (v39 <= v42)
                {
                  v44 = v42;
                }

                else
                {
                  v44 = (a4 - v34) >> 3;
                }

                if (v39 >= v42)
                {
                  v39 = v42;
                }

                if (v42 < 0)
                {
                  v39 = v44;
                }

                v34 += 2 * v39;
                if (v34 == a4)
                {
                  break;
                }

                v45 = v34[1];
                v16 = v45 == v35;
                v46 = v45 < v35;
                if (v16)
                {
                  v46 = *v34 < v36;
                }

                if (!v46)
                {
                  goto LABEL_69;
                }
              }

              v34 = a4;
              if (!v39)
              {
                goto LABEL_77;
              }
            }

            else
            {
              v43 = v10;
LABEL_69:
              if (!v39)
              {
                goto LABEL_77;
              }
            }
          }

          if (v39 != 1)
          {
            do
            {
              v47 = v39 >> 1;
              v48 = &v43[2 * (v39 >> 1)];
              v51 = *v48;
              v50 = v48[1];
              v49 = v48 + 2;
              v52 = v51 < v36;
              v16 = v50 == v35;
              v53 = v50 < v35;
              if (v16)
              {
                v53 = v52;
              }

              v39 += ~v47;
              if (v53)
              {
                v43 = v49;
              }

              else
              {
                v39 = v47;
              }
            }

            while (v39);
LABEL_77:
            v34 = v43;
          }
        }
      }

      v11 = v34 == v10;
      if (v34 != v10)
      {
        v33 = 0;
      }

      if (v33)
      {
        sub_2512DC(a5, v12);
        v11 = 0;
        v12 += 2;
        v34 += 2;
      }

      a1 = v12;
      v10 = v34;
      if (v34 == a4)
      {
        goto LABEL_2;
      }
    }

    v18 = (a2 - a1) >> 3;
    if (v18 >= 1)
    {
      v18 = 1;
    }

    v12 = &a1[2 * v18];
    if (v12 == a2)
    {
      v22 = a1;
      v12 = a2;
      if (!v18)
      {
LABEL_39:
        v12 = v22;
        goto LABEL_40;
      }
    }

    else
    {
      v19 = v12[1];
      v16 = v19 == v13;
      v20 = v19 < v13;
      if (v16)
      {
        v20 = *v12 < v14;
      }

      if (v20)
      {
        v21 = 1;
        while (1)
        {
          v22 = v12;
          v21 *= 2;
          v18 = (a2 - v12) >> 3;
          if (v18 <= v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = (a2 - v12) >> 3;
          }

          if (v18 >= v21)
          {
            v18 = v21;
          }

          if (v21 < 0)
          {
            v18 = v23;
          }

          v12 += 2 * v18;
          if (v12 == a2)
          {
            break;
          }

          v24 = v12[1];
          v16 = v24 == v13;
          v25 = v24 < v13;
          if (v16)
          {
            v25 = *v12 < v14;
          }

          if (!v25)
          {
            goto LABEL_31;
          }
        }

        v12 = a2;
        if (!v18)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v22 = a1;
LABEL_31:
        if (!v18)
        {
          goto LABEL_39;
        }
      }
    }

    if (v18 == 1)
    {
      goto LABEL_40;
    }

    do
    {
      v26 = v18 >> 1;
      v27 = &v22[2 * (v18 >> 1)];
      v30 = *v27;
      v29 = v27[1];
      v28 = v27 + 2;
      v31 = v30 < v14;
      v16 = v29 == v13;
      v32 = v29 < v13;
      if (v16)
      {
        v32 = v31;
      }

      v18 += ~v26;
      if (v32)
      {
        v22 = v28;
      }

      else
      {
        v18 = v26;
      }
    }

    while (v18);
    goto LABEL_39;
  }

LABEL_2:
  *a6 = a2;
  a6[1] = a4;
  a6[2] = a5;
}

void sub_C2BF14(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  if ((*a1 & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  sub_C2C2EC(a1, a2, v29);
  v5 = sub_3B6880(*(a1 + 8));
  HIBYTE(v20.__locale_) = 7;
  strcpy(&__p, "transit");
  sub_617F8C(v5, v29, &__p, a3);
  if (SHIBYTE(v20.__locale_) < 0)
  {
    operator delete(__p);
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&__p);
    v6 = sub_4A5C(&__p, "Determined transit regions: ", 28);
    sub_73F5C(*a3, a3[1], ", ", __dst);
    if ((v17 & 0x80u) == 0)
    {
      v7 = __dst;
    }

    else
    {
      v7 = __dst[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = __dst[1];
    }

    sub_4A5C(v6, v7, v8);
    if (v17 < 0)
    {
      operator delete(__dst[0]);
      v9 = v28;
      if ((v28 & 0x10) == 0)
      {
LABEL_13:
        if ((v9 & 8) == 0)
        {
          v10 = 0;
          v17 = 0;
LABEL_25:
          *(__dst + v10) = 0;
          sub_7E854(__dst, 2u);
          if (v17 < 0)
          {
            operator delete(__dst[0]);
          }

          if (v26 < 0)
          {
            operator delete(v25);
          }

          std::locale::~locale(&v20);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_30;
        }

        v12 = v21;
        v10 = v22 - v21;
        if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_36:
          sub_3244();
        }

LABEL_20:
        if (v10 >= 0x17)
        {
          operator new();
        }

        v17 = v10;
        if (v10)
        {
          memmove(__dst, v12, v10);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v9 = v28;
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_13;
      }
    }

    v11 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v11 = v24;
    }

    v12 = v23;
    v10 = v11 - v23;
    if (v11 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

LABEL_30:
  v13 = v30;
  if (v30)
  {
    do
    {
      v14 = *v13;
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = v29[0];
  v29[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }
}

void sub_C2C260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  sub_1A104(v16);
  sub_11BD8(v17 - 88);
  _Unwind_Resume(a1);
}

void sub_C2C2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_11BD8(v18 - 88);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xC2C2A4);
}

void sub_C2C2EC(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_C2D7F4(&__p, 0x8E38E38E38E38E39 * ((a2[8] - a2[7]) >> 5));
  v6 = a2[7];
  v7 = a2[8];
  if (v6 != v7)
  {
    v8 = v19;
    do
    {
      while (v8 >= v20)
      {
        v8 = sub_C2DA94(&__p, v6);
        v19 = v8;
        v6 += 36;
        if (v6 == v7)
        {
          goto LABEL_6;
        }
      }

      sub_93AFE8(v8, v6);
      v8 += 36;
      v19 = v8;
      v6 += 36;
    }

    while (v6 != v7);
  }

LABEL_6:
  sub_C2D5C0(a1, a3, &__p);
  v9 = __p;
  if (__p)
  {
    v10 = v19;
    v11 = __p;
    if (v19 != __p)
    {
      do
      {
        v10 = sub_93ABFC(v10 - 36);
      }

      while (v10 != v9);
      v11 = __p;
    }

    v19 = v9;
    operator delete(v11);
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_C2D7F4(&__p, 0x8E38E38E38E38E39 * ((a2[11] - a2[10]) >> 5));
  v12 = a2[10];
  v13 = a2[11];
  if (v12 != v13)
  {
    v14 = v19;
    do
    {
      while (v14 >= v20)
      {
        v14 = sub_C2DA94(&__p, v12);
        v19 = v14;
        v12 += 36;
        if (v12 == v13)
        {
          goto LABEL_16;
        }
      }

      sub_93AFE8(v14, v12);
      v14 += 36;
      v19 = v14;
      v12 += 36;
    }

    while (v12 != v13);
  }

LABEL_16:
  sub_C2D5C0(a1, a3, &__p);
  v15 = __p;
  if (__p)
  {
    v16 = v19;
    v17 = __p;
    if (v19 != __p)
    {
      do
      {
        v16 = sub_93ABFC(v16 - 36);
      }

      while (v16 != v15);
      v17 = __p;
    }

    v19 = v15;
    operator delete(v17);
  }
}

void sub_C2C4E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C2D798(va);
  sub_11BD8(v2);
  _Unwind_Resume(a1);
}

void sub_C2C534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C2D798(va);
  sub_11BD8(v2);
  _Unwind_Resume(a1);
}

void sub_C2C554(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if ((*a1 & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  sub_C2C92C(a1, a2, v29);
  v5 = sub_3B6880(*(a1 + 8));
  HIBYTE(v20.__locale_) = 7;
  strcpy(&__p, "transit");
  sub_617F8C(v5, v29, &__p, a3);
  if (SHIBYTE(v20.__locale_) < 0)
  {
    operator delete(__p);
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&__p);
    v6 = sub_4A5C(&__p, "Determined transit regions: ", 28);
    sub_73F5C(*a3, a3[1], ", ", __dst);
    if ((v17 & 0x80u) == 0)
    {
      v7 = __dst;
    }

    else
    {
      v7 = __dst[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = __dst[1];
    }

    sub_4A5C(v6, v7, v8);
    if (v17 < 0)
    {
      operator delete(__dst[0]);
      v9 = v28;
      if ((v28 & 0x10) == 0)
      {
LABEL_13:
        if ((v9 & 8) == 0)
        {
          v10 = 0;
          v17 = 0;
LABEL_25:
          *(__dst + v10) = 0;
          sub_7E854(__dst, 2u);
          if (v17 < 0)
          {
            operator delete(__dst[0]);
          }

          if (v26 < 0)
          {
            operator delete(v25);
          }

          std::locale::~locale(&v20);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_30;
        }

        v12 = v21;
        v10 = v22 - v21;
        if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_36:
          sub_3244();
        }

LABEL_20:
        if (v10 >= 0x17)
        {
          operator new();
        }

        v17 = v10;
        if (v10)
        {
          memmove(__dst, v12, v10);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v9 = v28;
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_13;
      }
    }

    v11 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v11 = v24;
    }

    v12 = v23;
    v10 = v11 - v23;
    if (v11 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

LABEL_30:
  v13 = v30;
  if (v30)
  {
    do
    {
      v14 = *v13;
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = v29[0];
  v29[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }
}

void sub_C2C8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  sub_1A104(v16);
  sub_11BD8(v17 - 88);
  _Unwind_Resume(a1);
}

void sub_C2C8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_11BD8(v18 - 88);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xC2C8E4);
}

uint64_t *sub_C2C92C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v3 = *(a2 + 1624);
  v46 = *(a2 + 1632);
  if (v3 != v46)
  {
    v4 = result;
    v45 = result;
    do
    {
      v5 = *(v3 + 584);
      v47 = v3;
      switch(v5)
      {
        case 2:
          sub_4E9DA4(&v62, v3);
          __p = 0;
          v59 = 0;
          v60 = 0;
          p_p = &__p;
          LOBYTE(v56) = 0;
          operator new();
        case 1:
          sub_93AFE8(&v62, v3);
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = &v49;
          v53 = 0;
          operator new();
        case 0:
          v6 = *(v3 + 24);
          for (i = *(v3 + 32); v6 != i; ++v6)
          {
            v8 = *v6;
            v9 = sub_3AFB1C(v4[1]);
            v57 = "stop";
            LODWORD(v52) = v8;
            LODWORD(v61) = 0;
            p_p = &v61;
            v56 = &v52;
            v10 = *(v9 + 3856) + 1;
            *(v9 + 3856) = v10;
            if (!*v9)
            {
              exception = __cxa_allocate_exception(0x40uLL);
              LODWORD(v54) = v52;
              __p = sub_7FCF0(6u);
              v59 = v31;
              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &__p, &v62);
              if ((v64 & 0x80u) == 0)
              {
                v32 = &v62;
              }

              else
              {
                v32 = v62;
              }

              if ((v64 & 0x80u) == 0)
              {
                v33 = v64;
              }

              else
              {
                v33 = v63;
              }

              v34 = sub_2D390(exception, v32, v33);
            }

            if (*(v9 + 592) == v8)
            {
              ++*(v9 + 3864);
              *(v9 + 600) = v10;
              v11 = *(v9 + 608);
              if (!v11)
              {
                goto LABEL_53;
              }
            }

            else if (*(v9 + 616) == v8)
            {
              ++*(v9 + 3864);
              *(v9 + 624) = v10;
              v11 = *(v9 + 632);
              if (!v11)
              {
                goto LABEL_53;
              }
            }

            else if (*(v9 + 640) == v8)
            {
              ++*(v9 + 3864);
              *(v9 + 648) = v10;
              v11 = *(v9 + 656);
              if (!v11)
              {
                goto LABEL_53;
              }
            }

            else if (*(v9 + 664) == v8)
            {
              ++*(v9 + 3864);
              *(v9 + 672) = v10;
              v11 = *(v9 + 680);
              if (!v11)
              {
LABEL_53:
                v35 = __cxa_allocate_exception(0x40uLL);
                LODWORD(v54) = v52;
                __p = sub_7FCF0(6u);
                v59 = v36;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &__p, &v62);
                if ((v64 & 0x80u) == 0)
                {
                  v37 = &v62;
                }

                else
                {
                  v37 = v62;
                }

                if ((v64 & 0x80u) == 0)
                {
                  v38 = v64;
                }

                else
                {
                  v38 = v63;
                }

                v39 = sub_2D390(v35, v37, v38);
              }
            }

            else
            {
              v12 = *(v9 + 648);
              v13 = *(v9 + 624);
              v14 = *(v9 + 600);
              v15 = *(v9 + 672);
              v16 = v9;
              v11 = sub_2D52A4(*v9, 6, v8, 1);
              v17 = v16;
              v4 = v45;
              if (v14 >= v10)
              {
                v18 = v10;
              }

              else
              {
                v18 = v14;
              }

              if (v14 >= v10)
              {
                v19 = 0;
              }

              else
              {
                v19 = 24;
              }

              if (v13 < v18)
              {
                v18 = v13;
                v19 = 25;
              }

              if (v12 < v18)
              {
                v19 = 26;
                v18 = v12;
              }

              v20 = v15 >= v18;
              v21 = 27;
              if (v20)
              {
                v21 = v19;
              }

              v22 = v17 + 16 + 24 * v21;
              *v22 = v52;
              *(v22 + 8) = *(v17 + 3856);
              *(v22 + 16) = v11;
              if (!v11)
              {
                sub_2C9894(&p_p);
LABEL_61:
                v40 = __cxa_allocate_exception(0x40uLL);
                LODWORD(v54) = HIDWORD(v8);
                LODWORD(p_p) = v8;
                __p = sub_7FCF0(6u);
                v59 = v41;
                sub_2C956C("Failed to acquire entity ", &v57, " in quad node ", " at position ", " on layer ", &__p, &v62);
                if ((v64 & 0x80u) == 0)
                {
                  v42 = &v62;
                }

                else
                {
                  v42 = v62;
                }

                if ((v64 & 0x80u) == 0)
                {
                  v43 = v64;
                }

                else
                {
                  v43 = v63;
                }

                v44 = sub_2D390(v40, v42, v43);
              }
            }

            v23 = (v11 + *v11);
            v24 = (v23 - *v23);
            if (*v24 < 0x1Du)
            {
              goto LABEL_61;
            }

            v25 = v24[14];
            if (!v25)
            {
              goto LABEL_61;
            }

            v26 = (v23 + v25 + *(v23 + v25));
            if (*v26 <= HIDWORD(v8))
            {
              goto LABEL_61;
            }

            v27 = (&v26[HIDWORD(v8) + 1] + v26[HIDWORD(v8) + 1]);
            v28 = v27 + *(v27 - *v27 + 6);
            v29 = *v28;
            LODWORD(v28) = *(v28 + 4);
            if (v28 >= 0xFFFFFFFE)
            {
              v28 = 4294967294;
            }

            else
            {
              v28 = v28;
            }

            v49 = (v29 | (v28 << 32));
            LODWORD(v50) = 0x7FFFFFFF;
            result = sub_C2DBE8(a3, &v49);
          }

          break;
      }

      v3 = v47 + 592;
    }

    while (v47 + 592 != v46);
  }

  return result;
}

void sub_C2D318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v43 = v41[33];
  if (v43)
  {
    v41[34] = v43;
    operator delete(v43);
  }

  v44 = v41[30];
  if (v44)
  {
    v41[31] = v44;
    operator delete(v44);
  }

  sub_49AEC0(v41);
  sub_A398F0(&a18);
  sub_93ABFC(&__p);
  sub_11BD8(a14);
  _Unwind_Resume(a1);
}

void sub_C2D5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_C2D5C0(uint64_t *result, void *a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  if (*a3 == v3)
  {
    return result;
  }

  v6 = result;
  v7 = *a3;
  do
  {
    v8 = *(v7 + 176);
    if (v8 != *(v7 + 184))
    {

      return sub_5280AC(a2, (v8 + 8));
    }

    v7 += 288;
  }

  while (v7 != v3);
  while (1)
  {
    v9 = *(v4 + 240);
    if (v9 == *(v4 + 248))
    {
      goto LABEL_6;
    }

    result = sub_3AFB1C(v6[1]);
    v10 = *v9;
    if (*v9 <= 1)
    {
      break;
    }

    switch(v10)
    {
      case 2:
        v11 = sub_93D480(result, v9[2] | (v9[1] << 32), 0, "station");
        goto LABEL_22;
      case 3:
        v11 = sub_503310(result, v9[2] | (v9[1] << 32), 0, "access point");
        v12 = *(v11 - *v11 + 14);
        goto LABEL_23;
      case 4:
        v11 = sub_503184(result, v9[2] | (v9[1] << 32), 0, "road access point");
        v12 = *(v11 - *v11 + 8);
        goto LABEL_23;
    }

LABEL_6:
    v4 += 288;
    if (v4 == v3)
    {
      return result;
    }
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = sub_93D2F4(result, v9[2] | (v9[1] << 32), 0, "hall");
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  v11 = sub_502FF8(result, v9[2] | (v9[1] << 32), 0, "stop");
LABEL_22:
  v12 = *(v11 - *v11 + 6);
LABEL_23:
  v13 = v11 + v12;
  v14 = *v13;
  LODWORD(v13) = *(v13 + 4);
  if (v13 >= 0xFFFFFFFE)
  {
    v13 = 4294967294;
  }

  else
  {
    v13 = v13;
  }

  v15 = v14 | (v13 << 32);
  v16 = 0x7FFFFFFF;
  return sub_C2DBE8(a2, &v15);
}

void **sub_C2D798(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_93ABFC(v3 - 36);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_C2D7F4(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0xE38E38E38E38E4)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_C2D8D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C2D8E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C2D8E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 288;
    sub_93ABFC((i - 288));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_C2D93C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 1);
      v8 = *(v6 + 2);
      v9 = *(v6 + 3);
      *(a4 + 63) = *(v6 + 63);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = 0;
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v6[11];
      v6[9] = 0;
      v6[10] = 0;
      v6[11] = 0;
      v10 = *(v6 + 6);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 96) = v10;
      v11 = *(v6 + 15);
      *(a4 + 136) = *(v6 + 17);
      *(a4 + 120) = v11;
      *(a4 + 152) = v6[19];
      *(a4 + 160) = *(v6 + 10);
      v6[19] = 0;
      v6[20] = 0;
      v6[21] = 0;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = *(v6 + 11);
      *(a4 + 192) = v6[24];
      v6[22] = 0;
      v6[23] = 0;
      v6[24] = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 216) = 0;
      *(a4 + 200) = *(v6 + 25);
      *(a4 + 216) = v6[27];
      v6[26] = 0;
      v6[27] = 0;
      v6[25] = 0;
      *(a4 + 224) = *(v6 + 14);
      *(a4 + 248) = 0;
      *(a4 + 256) = 0;
      *(a4 + 240) = 0;
      *(a4 + 240) = *(v6 + 15);
      *(a4 + 256) = v6[32];
      v6[30] = 0;
      v6[31] = 0;
      v6[32] = 0;
      *(a4 + 264) = 0;
      *(a4 + 272) = 0;
      *(a4 + 280) = 0;
      *(a4 + 264) = v6[33];
      *(a4 + 272) = *(v6 + 17);
      v6[33] = 0;
      v6[34] = 0;
      v6[35] = 0;
      v6 += 36;
      a4 += 288;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_93ABFC(v5) + 36;
    }
  }
}

uint64_t sub_C2DA94(uint64_t a1, void *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E3)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v5 = 0xE38E38E38E38E3;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xE38E38E38E38E3)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = (32 * ((*(a1 + 8) - *a1) >> 5));
  sub_93AFE8(v11, a2);
  v6 = 288 * v2 + 288;
  v7 = *(a1 + 8);
  v8 = v11 + *a1 - v7;
  sub_C2D93C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_C2DBD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C2D8E8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_C2DBE8(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = a2[2];
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_25:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (*(v11 + 4) == v2 && *(v11 + 20) == __PAIR64__(v5, v3))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_25;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  if (*(v11 + 4) != v2 || *(v11 + 20) != __PAIR64__(v5, v3))
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_C2E1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C2E228(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 72) = -1;
  sub_5F328(a3 + 80);
  LOBYTE(v42) = 0;
  *(&v42 + 4) = 0x8000000080000000;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  *__p = 0u;
  v48 = 0;
  *v49 = xmmword_22A85E0;
  *&v49[16] = 0;
  *&v49[20] = 0x8000000080000000;
  *&v49[28] = 0;
  *&v49[32] = xmmword_22A7450;
  *&v49[48] = -COERCE_DOUBLE(0x8000000080000000);
  *&v49[56] = -1;
  v49[60] = 1;
  v51 = 0;
  v50 = 0uLL;
  LOBYTE(v52[0]) = 1;
  *(v52 + 4) = 0x8000000080000000;
  v54 = 0;
  v53 = 0uLL;
  v5 = sub_4F96D0(*(a1 + 3) + 3896);
  v6 = v5;
  if (v5 >= *a1)
  {
    v7 = *a1;
  }

  else
  {
    v7 = v5;
  }

  sub_C9E54C(*(a1 + 3) + 3896, v7);
  sub_C2E76C(a1, a2, &v46[1]);
  sub_C9E54C(*(a1 + 3) + 3896, v6);
  sub_C2EC40(a1, &v46[1]);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (v6 >= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  sub_C9E54C(*(a1 + 3) + 3896, v8);
  sub_C2E76C(a1, a2, &v39);
  sub_C9E54C(*(a1 + 3) + 3896, v6);
  sub_C2EC40(a1, &v39);
  v38 = a1;
  v10 = v39;
  v9 = v40;
  if (v39 == v40)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(v10 + 13))
      {
        v13 = &v12[-v11];
        v14 = 0xEEEEEEEEEEEEEEEFLL * (&v12[-v11] >> 2);
        v15 = v14 + 1;
        if (v14 + 1 > 0x444444444444444)
        {
          sub_1794();
        }

        if (0xDDDDDDDDDDDDDDDELL * (-v11 >> 2) > v15)
        {
          v15 = 0xDDDDDDDDDDDDDDDELL * (-v11 >> 2);
        }

        if (0xEEEEEEEEEEEEEEEFLL * (-v11 >> 2) >= 0x222222222222222)
        {
          v16 = 0x444444444444444;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          if (v16 <= 0x444444444444444)
          {
            operator new();
          }

          sub_1808();
        }

        v17 = 60 * v14;
        v18 = *v10;
        v19 = v10[1];
        v20 = v10[2];
        *(v17 + 44) = *(v10 + 44);
        *(v17 + 16) = v19;
        *(v17 + 32) = v20;
        *v17 = v18;
        v12 = (60 * v14 + 60);
        v21 = ((v13 * 0x7777777777777777) >> 64) - v13;
        v22 = (v17 + 60 * ((v21 >> 5) + (v21 >> 63)));
        memcpy(v22, v11, v13);
        if (v11)
        {
          operator delete(v11);
        }

        v11 = v22;
      }

      v10 = (v10 + 60);
    }

    while (v10 != v9);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[0] = v11;
  __p[1] = v12;
  v48 = 0;
  sub_C2E76C(v38, a2, __p);
  v23 = v46[1];
  if (v46[1] != v46[2] || __p[0] != __p[1])
  {
    if (__p[0] != __p[1])
    {
      v23 = __p[0];
    }

    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    *&v49[45] = *(v23 + 41);
    *&v49[36] = v26;
    *&v49[20] = v25;
    *&v49[4] = v24;
    v27 = a3;
    v28 = *(a3 + 56);
    if (v28 >= *(a3 + 64))
    {
      sub_BCA180(a3 + 48, &v42);
      v27 = a3;
    }

    else
    {
      *v28 = v42;
      v29 = v43;
      v30 = v45;
      v31 = v46[0];
      *(v28 + 32) = v44;
      *(v28 + 48) = v30;
      *(v28 + 16) = v29;
      *(v28 + 64) = v31;
      *(v28 + 72) = 0;
      *(v28 + 80) = 0;
      *(v28 + 88) = 0;
      *(v28 + 72) = *&v46[1];
      v46[1] = 0;
      v46[2] = 0;
      *(v28 + 88) = v46[3];
      *(v28 + 96) = 0;
      v46[3] = 0;
      *(v28 + 104) = 0;
      *(v28 + 112) = 0;
      *(v28 + 96) = *__p;
      *(v28 + 112) = v48;
      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      v32 = *v49;
      v33 = *&v49[16];
      v34 = *&v49[32];
      *(v28 + 165) = *&v49[45];
      *(v28 + 152) = v34;
      *(v28 + 136) = v33;
      *(v28 + 120) = v32;
      *(v28 + 184) = 0;
      *(v28 + 192) = 0;
      *(v28 + 200) = 0;
      *(v28 + 184) = v50;
      *(v28 + 200) = v51;
      v50 = 0uLL;
      v51 = 0;
      v35 = v52[0];
      *(v28 + 216) = v52[1];
      *(v28 + 208) = v35;
      *(v28 + 224) = 0;
      *(v28 + 232) = 0;
      *(v28 + 240) = 0;
      *(v28 + 224) = v53;
      *(v28 + 240) = v54;
      v53 = 0uLL;
      v54 = 0;
      v36 = v28 + 248;
    }

    *(v27 + 56) = v36;
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v53)
  {
    *(&v53 + 1) = v53;
    operator delete(v53);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v46[1])
  {
    v46[2] = v46[1];
    operator delete(v46[1]);
  }
}

void sub_C2E6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!__p)
  {
    sub_BCA58C(&a15);
    sub_A4AB5C(a9);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_BCA58C(&a15);
  sub_A4AB5C(a9);
  _Unwind_Resume(a1);
}

void sub_C2E76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_C2EE40(a1, a2, &v48);
  v38 = sub_C2EF68(a1, a2);
  v37 = sub_C2F0DC(a1, a2);
  v6 = *(a1 + 16);
  if (v6 <= *(a2 + 12))
  {
    v6 = *(a2 + 12);
  }

  v42 = v6;
  v7 = v48;
  v35 = v49;
  if (v48 == v49)
  {
    goto LABEL_60;
  }

  v8 = *(a1 + 12);
  v41 = *(a1 + 4);
  v40 = *(a1 + 8);
  if (v8 <= *(a2 + 8))
  {
    v8 = *(a2 + 8);
  }

  v39 = v8;
  while (2)
  {
    v9 = *v7;
    sub_A79708(v47, *(a1 + 24), *v7, 0, 0, 0);
    v36 = v7;
    if (*(a2 + 72) == *(a2 + 80))
    {
      sub_C2F250(v47, a2 + 48, &v45);
    }

    else
    {
      sub_C2F788(v47, a2 + 48, a2 + 72, &v45);
    }

    v11 = v45;
    v10 = v46;
    if (v45 == v46)
    {
      if (v45)
      {
        goto LABEL_59;
      }

      goto LABEL_7;
    }

    do
    {
      v12 = *v11;
      v13 = v11[1];
      v14 = sub_A57920((*(a1 + 24) + 4136), v9);
      v15 = (v14 - *v14);
      v16 = *v15;
      if (v16 < 5)
      {
        v17 = 0;
        goto LABEL_20;
      }

      if (v15[2])
      {
        v17 = v14 + v15[2] + *(v14 + v15[2]);
        if (v16 < 9)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v17 = 0;
        if (v16 < 9)
        {
          goto LABEL_20;
        }
      }

      v29 = v15[4];
      if (v29)
      {
        v18 = (v14 + v29 + *(v14 + v29));
        goto LABEL_21;
      }

LABEL_20:
      v18 = 0;
LABEL_21:
      v19 = sub_A571D4(v18, v12);
      v20 = *(a2 + 104);
      v21 = *(a2 + 96);
      if (v21 == v20)
      {
        goto LABEL_26;
      }

      v22 = __ROR8__(*&v17[8 * *(v19 + 14) + 4], 32);
      while (*v21 != v22)
      {
        if (++v21 == v20)
        {
          goto LABEL_14;
        }
      }

      if (v21 != v20)
      {
LABEL_26:
        v23 = *(a1 + 24);
        v24 = sub_BD5DA0((v23 + 4136), v9, v12);
        if (HIDWORD(v24))
        {
          v25 = v24 == 0xFFFFFFFFLL;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          LODWORD(v26) = -1;
          if (*(a2 + 28) == -1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v27 = sub_BCAE50(*(v23 + 4136) + 24, v24, 0, "routing headsign");
          v28 = (v27 - *v27);
          if (*v28 >= 5u)
          {
            v26 = v28[2];
            if (v26)
            {
              LODWORD(v26) = *(v27 + v26);
            }

            if (*(a2 + 28) != -1)
            {
              goto LABEL_37;
            }

LABEL_45:
            v30 = *(a1 + 24);
            v31 = sub_BD5F34((v30 + 4136), v9, v12);
            LODWORD(v32) = -1;
            if (!HIDWORD(v31) || v31 == 0xFFFFFFFFLL)
            {
LABEL_50:
              if (*(a2 + 28) == -1)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v33 = sub_BCAC94(*(v30 + 4136) + 24, v31, 0, "routing direction name");
              v34 = (v33 - *v33);
              if (*v34 >= 5u)
              {
                v32 = v34[2];
                if (v32)
                {
                  LODWORD(v32) = *(v33 + v32);
                }

                goto LABEL_50;
              }

              LODWORD(v32) = 0;
              if (*(a2 + 28) == -1)
              {
LABEL_56:
                sub_BB8F88(*(a1 + 24), v47, v12, v13, *a2, v41, v39, v40, &__p, v42);
                sub_BB92D8(a3, *(a3 + 8), __p, v44, 0xEEEEEEEEEEEEEEEFLL * ((v44 - __p) >> 2));
                if (__p)
                {
                  v44 = __p;
                  operator delete(__p);
                }

                goto LABEL_14;
              }
            }

            if (*(a2 + 32) && (*(a2 + 120) & 1) == 0 && v32 != v37)
            {
              goto LABEL_14;
            }

            goto LABEL_56;
          }

          LODWORD(v26) = 0;
          if (*(a2 + 28) == -1)
          {
            goto LABEL_45;
          }
        }

LABEL_37:
        if (*(a2 + 32) && (*(a2 + 121) & 1) == 0 && v26 != v38)
        {
          goto LABEL_14;
        }

        goto LABEL_45;
      }

LABEL_14:
      v11 += 2;
    }

    while (v11 != v10);
    v11 = v45;
    if (v45)
    {
LABEL_59:
      v46 = v11;
      operator delete(v11);
    }

LABEL_7:
    v7 = v36 + 1;
    if (v36 + 1 != v35)
    {
      continue;
    }

    break;
  }

LABEL_60:
  sub_BB7DEC(*(a1 + 24), a3);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_C2EB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  v23 = *(v21 - 112);
  if (!v23)
  {
    _Unwind_Resume(exception_object);
  }

  *(v21 - 104) = v23;
  operator delete(v23);
  _Unwind_Resume(exception_object);
}

unint64_t sub_C2EC40(uint64_t a1, uint64_t *a2)
{
  result = sub_4F96D0(*(a1 + 24) + 3896);
  if (result >= 2)
  {
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      while (1)
      {
        v9 = *(a1 + 24);
        v10 = *(v5 + 28);
        v11 = *(v5 + 48);
        v28 = sub_A56F04((v9 + 4136), v10, v11, *(v5 + 36));
        v29 = v12;
        v13 = sub_A57920((v9 + 4136), v10);
        v14 = (v13 - *v13);
        if (*v14 >= 9u && (v15 = v14[4]) != 0)
        {
          v16 = *(sub_A571D4((v13 + v15 + *(v13 + v15)), v11) + 12);
          if (*(v5 + 40) == -1)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v16 = *(sub_A571D4(0, v11) + 12);
          if (*(v5 + 40) == -1)
          {
LABEL_9:
            v17 = (v9 + 4184);
            v18 = 0x7FFFFFFF;
            goto LABEL_12;
          }
        }

        v18 = *(v5 + 44);
        v17 = (v9 + 4184);
LABEL_12:
        *(v5 + 4) = sub_A56700(v17, &v28, v16, v18);
        *(v5 + 12) = v19;
        v20 = *(a1 + 24);
        v21 = *(v5 + 28);
        v22 = *(v5 + 52);
        v28 = sub_A56F04((v20 + 4136), v21, v22, *(v5 + 36));
        v29 = v23;
        v24 = sub_A57920((v20 + 4136), v21);
        v25 = (v24 - *v24);
        if (*v25 >= 9u && (v26 = v25[4]) != 0)
        {
          v7 = *(sub_A571D4((v24 + v26 + *(v24 + v26)), v22) + 12);
          if (*(v5 + 40) == -1)
          {
            goto LABEL_15;
          }

LABEL_5:
          result = sub_A56A5C((v20 + 4184), &v28, v7, *(v5 + 44));
          *(v5 + 16) = result;
          *(v5 + 24) = v8;
          v5 += 60;
          if (v5 == v6)
          {
            return result;
          }
        }

        else
        {
          v7 = *(sub_A571D4(0, v22) + 12);
          if (*(v5 + 40) != -1)
          {
            goto LABEL_5;
          }

LABEL_15:
          result = sub_A56A5C((v20 + 4184), &v28, v7, 0x7FFFFFFF);
          *(v5 + 16) = result;
          *(v5 + 24) = v27;
          v5 += 60;
          if (v5 == v6)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

void sub_C2EE40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_BD6C1C(*(a1 + 24), (a2 + 48), &v8);
  sub_BD6C1C(*(a1 + 24), (a2 + 72), &__p);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(a2 + 72) == *(a2 + 80))
  {
    if (&v8 != a3)
    {
      sub_31F64(a3, v8, v9, (v9 - v8) >> 3);
    }
  }

  else
  {
    sub_C2BBE8(v8, v9, __p, v7, a3, &v10);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

void sub_C2EF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
    v16 = a9;
    if (!a9)
    {
LABEL_3:
      v17 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v16 = a9;
    if (!a9)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  v17 = __p;
  if (!__p)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  operator delete(v17);
  goto LABEL_5;
}

void sub_C2EF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0xC2EF2CLL);
  }

  JUMPOUT(0xC2EF24);
}

uint64_t sub_C2EF68(uint64_t a1, _DWORD *a2)
{
  if (a2[7] == -1 || a2[8] == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 7);
  v6 = a2[10];
  v7 = sub_3A231C(*(v4 + 4184) + 24, __ROR8__(v5, 32), 0);
  v8 = &v7[-*v7];
  if (*v8 >= 5u && (v9 = *(v8 + 2)) != 0)
  {
    v10 = &v7[v9 + *&v7[v9]];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_BCA9F8(v10, v5);
  v12 = (v11 - *v11);
  v13 = *v12;
  if (v13 < 0x25)
  {
    if (v13 < 0xF)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_20;
  }

  if (!v12[18])
  {
LABEL_20:
    v16 = v12[7];
    if (v16)
    {
      v14 = *(v11 + v16);
      if (v14 != -1 && HIDWORD(v5) != 0)
      {
        goto LABEL_27;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v14 = sub_BCAB48((v11 + v12[18] + *(v11 + v12[18])), v6);
  if (v14 == -1 || HIDWORD(v5) == 0)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_27:
  v18 = sub_BCAE50(*(v4 + 4184) + 24, v5 & 0xFFFFFFFF00000000 | v14, 0, "routing headsign");
  v19 = (v18 - *v18);
  if (*v19 >= 5u && (v20 = v19[2]) != 0)
  {
    return *(v18 + v20);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C2F0DC(uint64_t a1, _DWORD *a2)
{
  if (a2[7] == -1 || a2[8] == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 7);
  v6 = a2[10];
  v7 = sub_3A231C(*(v4 + 4184) + 24, __ROR8__(v5, 32), 0);
  v8 = &v7[-*v7];
  if (*v8 >= 5u && (v9 = *(v8 + 2)) != 0)
  {
    v10 = &v7[v9 + *&v7[v9]];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_BCA9F8(v10, v5);
  v12 = (v11 - *v11);
  v13 = *v12;
  if (v13 < 0x27)
  {
    if (v13 < 0x11)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_20;
  }

  if (!v12[19])
  {
LABEL_20:
    v16 = v12[8];
    if (v16)
    {
      v14 = *(v11 + v16);
      if (v14 != -1 && HIDWORD(v5) != 0)
      {
        goto LABEL_27;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v14 = sub_BCAB48((v11 + v12[19] + *(v11 + v12[19])), v6);
  if (v14 == -1 || HIDWORD(v5) == 0)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_27:
  v18 = sub_BCAC94(*(v4 + 4184) + 24, v5 & 0xFFFFFFFF00000000 | v14, 0, "routing direction name");
  v19 = (v18 - *v18);
  if (*v19 >= 5u && (v20 = v19[2]) != 0)
  {
    return *(v18 + v20);
  }

  else
  {
    return 0;
  }
}

void sub_C2F250(void *a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a1[5];
  v6 = (v5 - 16);
  a1[4] = v5 - 16;
  if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v6 >= a1[3])
  {
    do
    {
      if (v6 >= a1[5])
      {
        break;
      }

      v7 = __ROR8__(*v6, 32);
      if (HIDWORD(v7) == 1 && (v7 + 3) < 2)
      {
        break;
      }

      v9 = sub_2D5204(**(*a1 + 4120));
      v6 = a1[4];
      if (v9)
      {
        break;
      }

      v6 -= 2;
      a1[4] = v6;
    }

    while (v6 >= a1[3]);
    v5 = a1[5];
  }

  v10 = a1[3];
  if (v6 >= v10 && v6 < v5)
  {
    v12 = 0;
    do
    {
      if (v12)
      {
        v13 = *a2;
        v14 = *(a2 + 8);
        if (*a2 != v14)
        {
          v15 = __ROR8__(*v6, 32);
          while (*v13 != v15)
          {
            if (++v13 == v14)
            {
              goto LABEL_54;
            }
          }
        }

        if (v13 != v14 && (*(v6 + 15) & 2) != 0)
        {
          v16 = a1[6];
          v17 = 0;
          if (v16)
          {
            v18 = *(v16 + 4 * ((v6 - v10) >> 4));
            v17 = 0;
            while ((*(v17 + 8) & v18) != 0)
            {
              v17 += 16;
              if (v17 == v12)
              {
                goto LABEL_54;
              }
            }
          }

          if (v17 != v12)
          {
            v24 = (v6 - v10) >> 4;
            v26 = a3[1];
            v25 = a3[2];
            if (v26 >= v25)
            {
              v29 = *a3;
              v30 = v26 - *a3;
              v31 = (v30 >> 3) + 1;
              if (v31 >> 61)
              {
                sub_1794();
              }

              v32 = v25 - v29;
              if (v32 >> 2 > v31)
              {
                v31 = v32 >> 2;
              }

              if (v32 >= 0x7FFFFFFFFFFFFFF8)
              {
                v33 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v31;
              }

              if (v33)
              {
                if (!(v33 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v34 = (8 * (v30 >> 3));
              *v34 = v24;
              v34[1] = *v17;
              v27 = v34 + 2;
              memcpy(0, v29, v30);
              *a3 = 0;
              a3[2] = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            else
            {
              *v26 = v24;
              v26[1] = *v17;
              v27 = v26 + 2;
            }

            a3[1] = v27;
            v6 = a1[4];
          }
        }

LABEL_54:
        if ((*(v6 + 15) & 1) == 0)
        {
          goto LABEL_55;
        }

        v40 = a1[6];
        if (!v40)
        {
          v44 = 16;
          while (v44 != v12)
          {
            v45 = *(v44 + 8);
            v44 += 16;
            if (!v45)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_31;
        }

        v41 = ~*(v40 + 4 * ((v6 - a1[3]) >> 4));
        if ((v41 & 0x880000002) != 0)
        {
          v42 = 16;
          while (v42 != v12)
          {
            v43 = *(v42 + 8);
            v42 += 16;
            if ((v43 & v41) == 0)
            {
              goto LABEL_55;
            }
          }

LABEL_31:
          v19 = (v6 - a1[3]) >> 4;
          v20 = a1[6];
          if (v20)
          {
            v21 = *(v20 + 4 * v19);
          }

          else
          {
            v21 = 0;
          }

          v22 = v12;
          v23 = v12 >> 4;
          if (((v12 >> 4) + 1) >> 60)
          {
            sub_1794();
          }

          if (v12 >> 4 != -1)
          {
            if (!(((v12 >> 4) + 1) >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v28 = 16 * v23;
          *v28 = v19;
          *(v28 + 8) = v21;
          v12 = 16 * v23 + 16;
          memcpy(0, 0, v22);
        }
      }

      else if (*(v6 + 15))
      {
        goto LABEL_31;
      }

LABEL_55:
      v10 = a1[3];
      v6 = (a1[4] - 16);
      a1[4] = v6;
      if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v6 >= v10 && v6 < a1[5])
      {
        do
        {
          v36 = __ROR8__(*v6, 32);
          if (HIDWORD(v36) == 1 && (v36 + 3) < 2)
          {
            break;
          }

          v38 = sub_2D5204(**(*a1 + 4120));
          v10 = a1[3];
          v6 = a1[4];
          if (v38)
          {
            break;
          }

          v6 -= 2;
          a1[4] = v6;
        }

        while (v6 >= v10 && v6 < a1[5]);
      }
    }

    while (v6 >= v10 && v6 < a1[5]);
  }
}

void sub_C2F720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
    v14 = *a12;
    if (!*a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = *a12;
    if (!*a12)
    {
      goto LABEL_3;
    }
  }

  *(a12 + 8) = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_C2F788(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = a1[3];
  a1[4] = v8;
  v60 = v7;
  if (*(*a1 + 16) != 1 || (a1[1] & 1) != 0 || v8 >= a1[5])
  {
    v9 = v8;
    if (v8 < a1[5])
    {
LABEL_22:
      v15 = 0;
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *a3;
        v19 = *(a3 + 8);
        if (*a3 != v19)
        {
          v20 = __ROR8__(*v8, 32);
          while (*v18 != v20)
          {
            if (++v18 == v19)
            {
              goto LABEL_66;
            }
          }
        }

        if (v18 == v19 || (v8[15] & 1) == 0)
        {
LABEL_66:
          v24 = v16;
          v40 = a1[4];
          v41 = *a2;
          v42 = *(a2 + 8);
          if (*a2 == v42)
          {
            goto LABEL_70;
          }

          goto LABEL_67;
        }

        v21 = (v8 - v9) >> 4;
        v22 = a1[6];
        if (v22)
        {
          v23 = *(v22 + 4 * v21);
          v24 = v15;
          if (v15 == v16)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v23 = 0;
          v24 = v15;
          if (v15 == v16)
          {
            goto LABEL_63;
          }
        }

        v61 = v17;
        v25 = -1;
        v26 = v15;
        do
        {
          if ((*(v26 + 1) & v23) == 0)
          {
            v25 = *v26;
            *v26 = -1;
          }

          v26 += 4;
        }

        while (v26 != v16);
        if (v25 != -1)
        {
          v28 = v7[1];
          v27 = v7[2];
          if (v28 >= v27)
          {
            __src = v15;
            v30 = *v7;
            v31 = v28 - *v7;
            v32 = v31 >> 3;
            v33 = (v31 >> 3) + 1;
            if (v33 >> 61)
            {
              sub_1794();
            }

            v34 = v27 - v30;
            if (v34 >> 2 > v33)
            {
              v33 = v34 >> 2;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v35 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              if (!(v35 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v36 = (8 * v32);
            *v36 = v25;
            v36[1] = v21;
            v29 = 8 * v32 + 8;
            memcpy(0, v30, v31);
            v7 = v60;
            *v60 = 0;
            v60[2] = 0;
            if (v30)
            {
              operator delete(v30);
            }

            v15 = __src;
          }

          else
          {
            *v28 = v25;
            v28[1] = v21;
            v29 = (v28 + 2);
          }

          v7[1] = v29;
        }

        v24 = v15;
        v17 = v61;
        if (v15 != v16)
        {
          v24 = v15;
          v37 = v15;
          while (1)
          {
            v38 = *v37;
            v37 += 16;
            if (v38 == -1)
            {
              break;
            }

            v24 = v37;
            if (v37 == v16)
            {
              goto LABEL_66;
            }
          }

          if (v37 != v16)
          {
            v39 = v24 + 16;
            do
            {
              if (*v39 != -1)
              {
                *v24 = *v39;
                *(v24 + 1) = *(v39 + 1);
                v24 += 16;
              }

              v39 += 4;
            }

            while (v39 != v16);
          }
        }

LABEL_63:
        if (v24 == v16)
        {
          goto LABEL_66;
        }

        v40 = a1[4];
        v41 = *a2;
        v42 = *(a2 + 8);
        if (*a2 == v42)
        {
          goto LABEL_70;
        }

LABEL_67:
        v43 = __ROR8__(*v40, 32);
        while (*v41 != v43)
        {
          if (++v41 == v42)
          {
            goto LABEL_72;
          }
        }

LABEL_70:
        if (v41 == v42 || (*(v40 + 15) & 2) == 0)
        {
LABEL_72:
          v16 = v24;
          goto LABEL_73;
        }

        v49 = (v40 - a1[3]) >> 4;
        v50 = a1[6];
        if (v50)
        {
          v51 = *(v50 + 4 * v49);
          v52 = v15;
          if (v15 != v24)
          {
            goto LABEL_97;
          }
        }

        else
        {
          v51 = 0;
          v52 = v15;
          if (v15 != v24)
          {
LABEL_97:
            v53 = v15 + 16;
            while ((v51 & ~*(v53 - 1)) != 0)
            {
              v54 = v53 == v24;
              v53 += 16;
              if (v54)
              {
                goto LABEL_110;
              }
            }

            v52 = v53 - 16;
            if (v53 - 16 != v24)
            {
              while (v53 != v24)
              {
                if ((v51 & ~*(v53 + 1)) != 0)
                {
                  *v52 = *v53;
                  *(v52 + 1) = *(v53 + 1);
                  v52 += 16;
                }

                v53 += 16;
              }
            }
          }
        }

        if (v52 == v24)
        {
LABEL_110:
          v52 = v24;
          if (v24 >= v17)
          {
LABEL_111:
            v55 = v52 - v15;
            v56 = (v52 - v15) >> 4;
            v57 = v56 + 1;
            __srca = v15;
            if ((v56 + 1) >> 60)
            {
              sub_1794();
            }

            if ((v17 - v15) >> 3 > v57)
            {
              v57 = (v17 - v15) >> 3;
            }

            if (v17 - v15 >= 0x7FFFFFFFFFFFFFF0)
            {
              v58 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v58 = v57;
            }

            if (v58)
            {
              if (!(v58 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v59 = 16 * v56;
            v17 = 0;
            *v59 = v49;
            *(v59 + 8) = v51;
            v16 = 16 * v56 + 16;
            memcpy(0, __srca, v55);
            v15 = 0;
            v7 = v60;
            goto LABEL_73;
          }
        }

        else if (v52 >= v17)
        {
          goto LABEL_111;
        }

        *v52 = v49;
        *(v52 + 1) = v51;
        v16 = (v52 + 16);
LABEL_73:
        v9 = a1[3];
        v8 = (a1[4] + 16);
        a1[4] = v8;
        if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v8 >= v9 && v8 < a1[5])
        {
          do
          {
            v45 = __ROR8__(*v8, 32);
            if (HIDWORD(v45) == 1 && (v45 + 3) < 2)
            {
              break;
            }

            v47 = sub_2D5204(**(*a1 + 4120));
            v9 = a1[3];
            v8 = a1[4];
            if (v47)
            {
              break;
            }

            v8 += 16;
            a1[4] = v8;
          }

          while (v8 >= v9 && v8 < a1[5]);
        }
      }

      while (v8 >= v9 && v8 < a1[5]);
    }
  }

  else
  {
    v9 = v8;
    do
    {
      v10 = __ROR8__(*v8, 32);
      if (HIDWORD(v10) == 1 && (v10 + 3) < 2)
      {
        break;
      }

      v12 = sub_2D5204(**(*a1 + 4120));
      v9 = a1[3];
      v8 = a1[4];
      if (v12)
      {
        break;
      }

      v8 += 16;
      a1[4] = v8;
    }

    while (v8 >= v9 && v8 < a1[5]);
    if (v8 >= v9 && v8 < a1[5])
    {
      goto LABEL_22;
    }
  }
}

void sub_C2FDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *a10;
    if (!*a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *a10;
    if (!*a10)
    {
      goto LABEL_3;
    }
  }

  *(a10 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_C2FE40(uint64_t a1, void *a2)
{
  v9 = 13;
  strcpy(__p, "max_num_trips");
  v4 = sub_353010(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 21;
  strcpy(__p, "enable_target_pruning");
  v6 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 4) = v6;
  strcpy(__p, "range_duration_minutes");
  v9 = 22;
  *(a1 + 8) = 600 * sub_352470(a2, __p);
  if (v9 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_C2FFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C30330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  sub_1F1A8(va2);
  sub_1F1A8(va3);
  sub_A8A480(v4);
  sub_A8A480(v3);
  _Unwind_Resume(a1);
}

void sub_C30390(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 112);
  if (!v5)
  {
    _Unwind_Resume(exception_object);
  }

  free(v5);
  _Unwind_Resume(exception_object);
}

double sub_C303C4@<D0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  v3 = *(a3 + 16);
  *(a1 + 272) = *a3;
  *(a1 + 288) = v3;
  *(a1 + 304) = *(a3 + 32);
  *(a1 + 312) = *(a3 + 40);
  if (*a3)
  {
    return sub_C30A78(a1, a2);
  }

  else
  {
    return sub_C303F0(a1, a2);
  }
}

double sub_C303F0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7E9A4(v64);
  *a2 = 0;
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  a2[3] = 0;
  HIBYTE(v60) = 0;
  LOBYTE(__p) = 0;
  sub_CC9264((a2 + 4), &__p);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p);
  }

  *(a2 + 184) = 0;
  *(a2 + 12) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 15) = 0u;
  a2[32] = 0;
  sub_BA93E8(a1 + 32);
  sub_BA93E8(a1 + 152);
  *(a1 + 1072) = 0;
  *(a1 + 336) = *(a1 + 8);
  *(a1 + 354) = *(a1 + 12);
  *(a1 + 360) = *(a1 + 20);
  *(a1 + 352) = 1;
  sub_C31204(a1, &v62);
  v5 = v62;
  v49 = v63;
  if (v62 != v63)
  {
    v51 = a2 + 1;
    v52 = a2;
    v48 = a1;
    while (1)
    {
      v50 = v5;
      v6 = *v5;
      v7 = *(a1 + 288);
      v65 = *(a1 + 272);
      v66 = v7;
      v67 = *(a1 + 304);
      v68 = *(a1 + 320);
      DWORD1(v65) = v6;
      sub_BB1910(a1 + 328, &v65);
      sub_BB1D70((a1 + 328), &__p);
      v8 = *(a1 + 1072);
      if (v8 <= v61)
      {
        v8 = v61;
      }

      *(a1 + 1072) = v8;
      sub_CC92D8((a2 + 4), a1 + 920, &v57);
      if (v58 < 0)
      {
        operator delete(v57);
        v56 = *(&__p + 1);
        v53 = v60;
        if (*(&__p + 1) != v60)
        {
LABEL_12:
          v9 = a2[2];
          do
          {
            v10 = a2[3];
            if (v9 >= v10)
            {
              v11 = 0x14C1BACF914C1BADLL * ((v9 - *v4) >> 3);
              v12 = v11 + 1;
              if ((v11 + 1) > 0xDD67C8A60DD67CLL)
              {
                sub_1794();
              }

              v13 = v4;
              v14 = 0x14C1BACF914C1BADLL * ((v10 - *v4) >> 3);
              if (2 * v14 > v12)
              {
                v12 = 2 * v14;
              }

              if (v14 >= 0x6EB3E45306EB3ELL)
              {
                v15 = 0xDD67C8A60DD67CLL;
              }

              else
              {
                v15 = v12;
              }

              *&v67 = v13;
              if (v15)
              {
                if (v15 <= 0xDD67C8A60DD67CLL)
                {
                  operator new();
                }

                sub_1808();
              }

              *&v65 = 0;
              *(&v65 + 1) = 296 * v11;
              v66 = (296 * v11);
              sub_A32C84(296 * v11, v56);
              v55 = v66 + 296;
              *&v66 = v66 + 296;
              v16 = a2;
              v17 = a2[2];
              v18 = v16[1];
              v54 = *(&v65 + 1) + v18 - v17;
              if (v18 != v17)
              {
                v19 = v16[1];
                v20 = *(&v65 + 1) + v18 - v17;
                do
                {
                  v21 = *v19;
                  v22 = v19[2];
                  *(v20 + 16) = v19[1];
                  *(v20 + 32) = v22;
                  *v20 = v21;
                  v23 = v19[3];
                  v24 = v19[4];
                  v25 = v19[5];
                  *(v20 + 96) = *(v19 + 12);
                  *(v20 + 64) = v24;
                  *(v20 + 80) = v25;
                  *(v20 + 48) = v23;
                  *(v20 + 104) = *(v19 + 26);
                  v26 = v19[7];
                  *(v20 + 128) = *(v19 + 16);
                  *(v20 + 112) = v26;
                  *(v19 + 15) = 0;
                  *(v19 + 16) = 0;
                  *(v19 + 14) = 0;
                  *(v20 + 136) = *(v19 + 34);
                  v27 = v19[9];
                  v28 = v19[11];
                  *(v20 + 160) = v19[10];
                  *(v20 + 176) = v28;
                  *(v20 + 144) = v27;
                  *(v20 + 192) = *(v19 + 24);
                  *(v20 + 208) = 0;
                  *(v20 + 216) = 0;
                  *(v20 + 200) = 0;
                  *(v20 + 200) = *(v19 + 200);
                  *(v20 + 216) = *(v19 + 27);
                  *(v19 + 25) = 0;
                  *(v19 + 26) = 0;
                  *(v19 + 27) = 0;
                  *(v20 + 224) = 0;
                  *(v20 + 232) = 0;
                  *(v20 + 240) = 0;
                  *(v20 + 224) = v19[14];
                  *(v20 + 240) = *(v19 + 30);
                  *(v19 + 28) = 0;
                  *(v19 + 29) = 0;
                  *(v19 + 30) = 0;
                  *(v20 + 248) = 0;
                  *(v20 + 256) = 0;
                  *(v20 + 264) = 0;
                  *(v20 + 248) = *(v19 + 248);
                  *(v20 + 264) = *(v19 + 33);
                  *(v19 + 31) = 0;
                  *(v19 + 32) = 0;
                  *(v19 + 33) = 0;
                  *(v20 + 272) = 0;
                  *(v20 + 280) = 0;
                  *(v20 + 288) = 0;
                  *(v20 + 272) = v19[17];
                  *(v20 + 288) = *(v19 + 36);
                  *(v19 + 34) = 0;
                  *(v19 + 35) = 0;
                  *(v19 + 36) = 0;
                  v19 = (v19 + 296);
                  v20 += 296;
                }

                while (v19 != v17);
                do
                {
                  v29 = *(v18 + 272);
                  if (v29)
                  {
                    *(v18 + 280) = v29;
                    operator delete(v29);
                  }

                  v30 = *(v18 + 248);
                  if (v30)
                  {
                    *(v18 + 256) = v30;
                    operator delete(v30);
                  }

                  v31 = *(v18 + 224);
                  if (v31)
                  {
                    *(v18 + 232) = v31;
                    operator delete(v31);
                  }

                  v32 = *(v18 + 200);
                  if (v32)
                  {
                    v33 = *(v18 + 208);
                    v34 = *(v18 + 200);
                    if (v33 != v32)
                    {
                      do
                      {
                        v36 = *(v33 - 5);
                        if (v36)
                        {
                          *(v33 - 4) = v36;
                          operator delete(v36);
                        }

                        v37 = v33 - 9;
                        v38 = *(v33 - 9);
                        if (v38)
                        {
                          v39 = *(v33 - 8);
                          v35 = *(v33 - 9);
                          if (v39 != v38)
                          {
                            do
                            {
                              v40 = v39 - 168;
                              v41 = *(v39 - 2);
                              if (v41 != -1)
                              {
                                (off_2672980[v41])(v69, v39 - 168);
                              }

                              *(v39 - 2) = -1;
                              v39 -= 168;
                            }

                            while (v40 != v38);
                            v35 = *v37;
                          }

                          *(v33 - 8) = v38;
                          operator delete(v35);
                        }

                        v33 -= 9;
                      }

                      while (v37 != v32);
                      v34 = *(v18 + 200);
                    }

                    *(v18 + 208) = v32;
                    operator delete(v34);
                  }

                  if (*(v18 + 135) < 0)
                  {
                    operator delete(*(v18 + 112));
                  }

                  v18 += 296;
                }

                while (v18 != v17);
              }

              a2 = v52;
              v42 = v52[1];
              v52[1] = v54;
              v52[2] = v55;
              v52[3] = *(&v66 + 1);
              if (v42)
              {
                operator delete(v42);
              }

              v4 = v51;
              v9 = v55;
            }

            else
            {
              sub_A32C84(v9, v56);
              v9 += 296;
            }

            a2[2] = v9;
            v56 = (v56 + 296);
          }

          while (v56 != v53);
        }
      }

      else
      {
        v56 = *(&__p + 1);
        v53 = v60;
        if (*(&__p + 1) != v60)
        {
          goto LABEL_12;
        }
      }

      a1 = v48;
      *(v48 + 352) = 0;
      sub_A37AFC(&__p);
      v5 = v50 + 1;
      if (v50 + 1 == v49)
      {
        v5 = v62;
        break;
      }
    }
  }

  if (v5)
  {
    v63 = v5;
    operator delete(v5);
  }

  v44 = a2[1];
  v43 = a2[2];
  if (v44 != v43)
  {
    v45 = (v43 - 296);
    if (v43 - 296 > v44)
    {
      do
      {
        sub_BCCD18(v44, v45);
        v44 += 296;
        v45 = (v45 - 296);
      }

      while (v44 < v45);
    }
  }

  *(a2 + 7) = sub_7EA60(v64);
  result = (*(a1 + 80) - *(a1 + 72));
  v47 = (*(a1 + 200) - *(a1 + 192));
  *(a2 + 20) = result;
  *(a2 + 21) = v47;
  a2[22] += *(a1 + 136) - *(a1 + 120) + *(a1 + 256) + 12 * (*(a1 + 208) + *(a1 + 88)) - *(a1 + 240) + *(a1 + 1072) + 1080;
  return result;
}

void sub_C30A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_A37AFC(&a38);
  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  sub_A37AFC(v38);
  _Unwind_Resume(a1);
}

double sub_C30A78@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7E9A4(v64);
  *a2 = 0;
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  a2[3] = 0;
  HIBYTE(v60) = 0;
  LOBYTE(__p) = 0;
  sub_CC9264((a2 + 4), &__p);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p);
  }

  *(a2 + 184) = 0;
  *(a2 + 12) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 15) = 0u;
  a2[32] = 0;
  sub_BA93E8(a1 + 32);
  sub_BA93E8(a1 + 152);
  *(a1 + 1072) = 0;
  *(a1 + 336) = *(a1 + 8);
  *(a1 + 354) = *(a1 + 12);
  *(a1 + 360) = *(a1 + 20);
  *(a1 + 352) = 1;
  sub_C32D18(a1, &v62);
  v5 = v62;
  v49 = v63;
  if (v62 != v63)
  {
    v51 = a2 + 1;
    v52 = a2;
    v48 = a1;
    while (1)
    {
      v50 = v5;
      v6 = *v5;
      v7 = *(a1 + 288);
      v65 = *(a1 + 272);
      v66 = v7;
      v67 = *(a1 + 304);
      v68 = *(a1 + 320);
      DWORD1(v65) = v6;
      sub_BAC190(a1 + 328, &v65);
      sub_BAC5F0(a1 + 328, &__p);
      v8 = *(a1 + 1072);
      if (v8 <= v61)
      {
        v8 = v61;
      }

      *(a1 + 1072) = v8;
      sub_CC92D8((a2 + 4), a1 + 920, &v57);
      if (v58 < 0)
      {
        operator delete(v57);
        v56 = *(&__p + 1);
        v53 = v60;
        if (*(&__p + 1) != v60)
        {
LABEL_12:
          v9 = a2[2];
          do
          {
            v10 = a2[3];
            if (v9 >= v10)
            {
              v11 = 0x14C1BACF914C1BADLL * ((v9 - *v4) >> 3);
              v12 = v11 + 1;
              if ((v11 + 1) > 0xDD67C8A60DD67CLL)
              {
                sub_1794();
              }

              v13 = v4;
              v14 = 0x14C1BACF914C1BADLL * ((v10 - *v4) >> 3);
              if (2 * v14 > v12)
              {
                v12 = 2 * v14;
              }

              if (v14 >= 0x6EB3E45306EB3ELL)
              {
                v15 = 0xDD67C8A60DD67CLL;
              }

              else
              {
                v15 = v12;
              }

              *&v67 = v13;
              if (v15)
              {
                if (v15 <= 0xDD67C8A60DD67CLL)
                {
                  operator new();
                }

                sub_1808();
              }

              *&v65 = 0;
              *(&v65 + 1) = 296 * v11;
              v66 = (296 * v11);
              sub_A32C84(296 * v11, v56);
              v55 = v66 + 296;
              *&v66 = v66 + 296;
              v16 = a2;
              v17 = a2[2];
              v18 = v16[1];
              v54 = *(&v65 + 1) + v18 - v17;
              if (v18 != v17)
              {
                v19 = v16[1];
                v20 = *(&v65 + 1) + v18 - v17;
                do
                {
                  v21 = *v19;
                  v22 = v19[2];
                  *(v20 + 16) = v19[1];
                  *(v20 + 32) = v22;
                  *v20 = v21;
                  v23 = v19[3];
                  v24 = v19[4];
                  v25 = v19[5];
                  *(v20 + 96) = *(v19 + 12);
                  *(v20 + 64) = v24;
                  *(v20 + 80) = v25;
                  *(v20 + 48) = v23;
                  *(v20 + 104) = *(v19 + 26);
                  v26 = v19[7];
                  *(v20 + 128) = *(v19 + 16);
                  *(v20 + 112) = v26;
                  *(v19 + 15) = 0;
                  *(v19 + 16) = 0;
                  *(v19 + 14) = 0;
                  *(v20 + 136) = *(v19 + 34);
                  v27 = v19[9];
                  v28 = v19[11];
                  *(v20 + 160) = v19[10];
                  *(v20 + 176) = v28;
                  *(v20 + 144) = v27;
                  *(v20 + 192) = *(v19 + 24);
                  *(v20 + 208) = 0;
                  *(v20 + 216) = 0;
                  *(v20 + 200) = 0;
                  *(v20 + 200) = *(v19 + 200);
                  *(v20 + 216) = *(v19 + 27);
                  *(v19 + 25) = 0;
                  *(v19 + 26) = 0;
                  *(v19 + 27) = 0;
                  *(v20 + 224) = 0;
                  *(v20 + 232) = 0;
                  *(v20 + 240) = 0;
                  *(v20 + 224) = v19[14];
                  *(v20 + 240) = *(v19 + 30);
                  *(v19 + 28) = 0;
                  *(v19 + 29) = 0;
                  *(v19 + 30) = 0;
                  *(v20 + 248) = 0;
                  *(v20 + 256) = 0;
                  *(v20 + 264) = 0;
                  *(v20 + 248) = *(v19 + 248);
                  *(v20 + 264) = *(v19 + 33);
                  *(v19 + 31) = 0;
                  *(v19 + 32) = 0;
                  *(v19 + 33) = 0;
                  *(v20 + 272) = 0;
                  *(v20 + 280) = 0;
                  *(v20 + 288) = 0;
                  *(v20 + 272) = v19[17];
                  *(v20 + 288) = *(v19 + 36);
                  *(v19 + 34) = 0;
                  *(v19 + 35) = 0;
                  *(v19 + 36) = 0;
                  v19 = (v19 + 296);
                  v20 += 296;
                }

                while (v19 != v17);
                do
                {
                  v29 = *(v18 + 272);
                  if (v29)
                  {
                    *(v18 + 280) = v29;
                    operator delete(v29);
                  }

                  v30 = *(v18 + 248);
                  if (v30)
                  {
                    *(v18 + 256) = v30;
                    operator delete(v30);
                  }

                  v31 = *(v18 + 224);
                  if (v31)
                  {
                    *(v18 + 232) = v31;
                    operator delete(v31);
                  }

                  v32 = *(v18 + 200);
                  if (v32)
                  {
                    v33 = *(v18 + 208);
                    v34 = *(v18 + 200);
                    if (v33 != v32)
                    {
                      do
                      {
                        v36 = *(v33 - 5);
                        if (v36)
                        {
                          *(v33 - 4) = v36;
                          operator delete(v36);
                        }

                        v37 = v33 - 9;
                        v38 = *(v33 - 9);
                        if (v38)
                        {
                          v39 = *(v33 - 8);
                          v35 = *(v33 - 9);
                          if (v39 != v38)
                          {
                            do
                            {
                              v40 = v39 - 168;
                              v41 = *(v39 - 2);
                              if (v41 != -1)
                              {
                                (off_2672980[v41])(v69, v39 - 168);
                              }

                              *(v39 - 2) = -1;
                              v39 -= 168;
                            }

                            while (v40 != v38);
                            v35 = *v37;
                          }

                          *(v33 - 8) = v38;
                          operator delete(v35);
                        }

                        v33 -= 9;
                      }

                      while (v37 != v32);
                      v34 = *(v18 + 200);
                    }

                    *(v18 + 208) = v32;
                    operator delete(v34);
                  }

                  if (*(v18 + 135) < 0)
                  {
                    operator delete(*(v18 + 112));
                  }

                  v18 += 296;
                }

                while (v18 != v17);
              }

              a2 = v52;
              v42 = v52[1];
              v52[1] = v54;
              v52[2] = v55;
              v52[3] = *(&v66 + 1);
              if (v42)
              {
                operator delete(v42);
              }

              v4 = v51;
              v9 = v55;
            }

            else
            {
              sub_A32C84(v9, v56);
              v9 += 296;
            }

            a2[2] = v9;
            v56 = (v56 + 296);
          }

          while (v56 != v53);
        }
      }

      else
      {
        v56 = *(&__p + 1);
        v53 = v60;
        if (*(&__p + 1) != v60)
        {
          goto LABEL_12;
        }
      }

      a1 = v48;
      *(v48 + 352) = 0;
      sub_A37AFC(&__p);
      v5 = v50 + 1;
      if (v50 + 1 == v49)
      {
        v5 = v62;
        break;
      }
    }
  }

  if (v5)
  {
    v63 = v5;
    operator delete(v5);
  }

  v44 = a2[1];
  v43 = a2[2];
  if (v44 != v43)
  {
    v45 = (v43 - 296);
    if (v43 - 296 > v44)
    {
      do
      {
        sub_BCCD18(v44, v45);
        v44 += 296;
        v45 = (v45 - 296);
      }

      while (v44 < v45);
    }
  }

  *(a2 + 7) = sub_7EA60(v64);
  result = (*(a1 + 80) - *(a1 + 72));
  v47 = (*(a1 + 200) - *(a1 + 192));
  *(a2 + 20) = result;
  *(a2 + 21) = v47;
  a2[22] += *(a1 + 136) - *(a1 + 120) + *(a1 + 256) + 12 * (*(a1 + 208) + *(a1 + 88)) - *(a1 + 240) + *(a1 + 1072) + 1080;
  return result;
}

void sub_C310A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_A37AFC(&a38);
  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  sub_A37AFC(v38);
  _Unwind_Resume(a1);
}

void *sub_C3111C(void *a1)
{
  sub_A40284((a1 + 41));
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    free(v5);
  }

  return a1;
}

void sub_C31180(void *a1)
{
  sub_A40284((a1 + 41));
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    free(v5);
  }

  operator delete();
}

uint64_t sub_C31204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_A74644(&v103, *(a1 + 24), 0x1FFFFFFFEuLL);
  v4 = v104;
  v5 = 16;
  if (v108)
  {
    v5 = 32;
  }

  v6 = 0uLL;
  if (v104 < *(&v103 + v5))
  {
    v80 = v2;
    while (1)
    {
      v10 = *(v4 + 2);
      sub_A7905C(&__dst, *(v2 + 24), __ROR8__(*v4, 32), 0, 0, 0);
      v11 = v99;
      if (v99 < v100)
      {
        break;
      }

LABEL_109:
      v7 = v105;
      v4 = (v104 + 12);
      v104 = v4;
      if (v4 == v105)
      {
        v4 = v106;
        v104 = v106;
        v8 = 1;
        v108 = 1;
      }

      else
      {
        v8 = v108;
      }

      v9 = v107;
      if (v8)
      {
        v61 = v107;
      }

      else
      {
        v61 = v105;
      }

      if (*(v103 + 16) == 1 && v4 < v61)
      {
        while (1)
        {
          v63 = __ROR8__(*v4, 32);
          if (HIDWORD(v63) == 1 && (v63 + 3) < 2)
          {
            break;
          }

          if (sub_2D5204(**(v103 + 4120)))
          {
            v4 = v104;
            v7 = v105;
            v8 = v108;
            break;
          }

          v7 = v105;
          v4 = (v104 + 12);
          v104 = v4;
          if (v4 == v105)
          {
            v4 = v106;
            v104 = v106;
            v8 = 1;
            v108 = 1;
            if (v106 >= v107)
            {
              break;
            }
          }

          else
          {
            v8 = v108;
            v65 = 32;
            if ((v108 & 1) == 0)
            {
              v65 = 16;
            }

            if (v4 >= *(&v103 + v65))
            {
              break;
            }
          }
        }

        v9 = v107;
      }

      if (v8)
      {
        v7 = v9;
      }

      if (v4 >= v7)
      {
        v6 = *a2;
        goto LABEL_134;
      }
    }

    if (v10 < 0)
    {
      v12 = -5;
    }

    else
    {
      v12 = 5;
    }

    v13 = (v12 + v10 % 10);
    v81 = v10 / 10 + (((103 * v13) >> 15) & 1) + ((103 * v13) >> 10);
    v14 = v10 / -10 + (((-103 * v13) >> 15) & 1) + ((-103 * v13) >> 10);
    while (1)
    {
      v15 = *(v2 + 276);
      v16 = *(v2 + 16);
      if (v16 < 0)
      {
        v17 = -5;
      }

      else
      {
        v17 = 5;
      }

      sub_A79708(&v82, *(v2 + 24), __ROR8__(*v11, 32), *(v11 + 4), 0, 0);
      if (v93 == 1)
      {
        v18 = sub_A7A1E8(*(v2 + 24), &v82, v81 + v15, 1u);
      }

      else
      {
        v18 = sub_A7A710(&v82, v81 + v15, 1);
      }

      if (v18)
      {
        v19 = 103 * (v17 + v16 % 10);
        v20 = v81 + v81 + v15 + v16 / 10 + ((v19 >> 15) & 1) + (v19 >> 10);
        v21 = *a2;
        while (v90 >= v89 && v90 < __p)
        {
          v24 = v93 ? &v94 : v90;
          v25 = (v84.__locale_ + *(v84.__locale_ - *v84.__locale_ + 6));
          v26 = v14 + *v24 + *(&v25[2 * v90[1] + 2 + 2 * ((v86 - v85) >> 4)] + *v25) - *(v86 + 8);
          if (v20 < v26)
          {
            break;
          }

          v28 = a2[1];
          v27 = a2[2];
          if (v28 < v27)
          {
            *v28 = v26;
            v22 = v28 + 1;
          }

          else
          {
            v29 = v28 - v21;
            v30 = (v28 - v21) >> 2;
            v31 = v30 + 1;
            if ((v30 + 1) >> 62)
            {
              *a2 = v21;
              sub_1794();
            }

            v32 = v27 - v21;
            if (v32 >> 1 > v31)
            {
              v31 = v32 >> 1;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v33 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              if (!(v33 >> 62))
              {
                operator new();
              }

              *a2 = v21;
              sub_1808();
            }

            v34 = (4 * v30);
            *v34 = v26;
            v22 = v34 + 1;
            memcpy(0, v21, v29);
            a2[1] = v22;
            a2[2] = 0;
            if (v21)
            {
              operator delete(v21);
            }

            v21 = 0;
          }

          a2[1] = v22;
          sub_A7B02C(&v82, 0);
        }

        *a2 = v21;
        v2 = v80;
      }

      v35 = v100;
      v11 = v99 + 2;
      v99 = v11;
      if (v11 == v100)
      {
        v36 = v97 + 2;
        v97 = v36;
        if (v36 >= v98)
        {
          goto LABEL_109;
        }

        while (1)
        {
          v11 = *v36;
          v35 = v36[1];
          if (*v36 != v35)
          {
            break;
          }

          v36 += 2;
          v97 = v36;
          if (v36 >= v98)
          {
            goto LABEL_109;
          }
        }

        v99 = *v36;
        v100 = v35;
        if (v11 < v35)
        {
          goto LABEL_59;
        }

LABEL_49:
        if (v11 >= v35)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v11 >= v100)
        {
          goto LABEL_49;
        }

        while (1)
        {
LABEL_59:
          if ((v102 & 1) == 0)
          {
            v37 = __dst;
            v38 = *v11;
            v39 = *(__dst + 517);
            if (sub_68312C(v39 + 3896))
            {
              if (*(v39 + 3944))
              {
                if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                {
                  v59 = sub_A57824(-85.0, 0.0);
                  sub_58168(v59 >> 17, v59 >> 49);
                  dword_27339C0 = v60 | 0x40000000;
                  __cxa_guard_release(&qword_27339C8);
                  v2 = v80;
                }

                v40 = __ROR8__(v38, 32);
                v41 = *(v37 + 517);
                if (dword_27339C0 == HIDWORD(v40))
                {
                  if (!sub_68312C(v41 + 3896) || !*(v41 + 3944))
                  {
                    exception = __cxa_allocate_exception(0x40uLL);
                    v79 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                  }
                }

                else
                {
                  v44 = *(v41 + 3944);
                  v45 = v44[1];
                  if (v45)
                  {
                    v46 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v40 ^ (v40 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v40 ^ (v40 >> 33))) >> 33));
                    v47 = v46 ^ (v46 >> 33);
                    v48 = vcnt_s8(v45);
                    v48.i16[0] = vaddlv_u8(v48);
                    if (v48.u32[0] > 1uLL)
                    {
                      v49 = v47;
                      if (v47 >= *&v45)
                      {
                        v49 = v47 % *&v45;
                      }
                    }

                    else
                    {
                      v49 = (*&v45 - 1) & v47;
                    }

                    v50 = *(*v44 + 8 * v49);
                    if (v50)
                    {
                      v51 = *v50;
                      if (v51)
                      {
                        if (v48.u32[0] < 2uLL)
                        {
                          v52 = *&v45 - 1;
                          while (1)
                          {
                            v56 = v51[1];
                            if (v47 == v56)
                            {
                              if (*(v51 + 5) == HIDWORD(v40) && *(v51 + 4) == v40)
                              {
                                goto LABEL_57;
                              }
                            }

                            else if ((v56 & v52) != v49)
                            {
                              goto LABEL_99;
                            }

                            v51 = *v51;
                            if (!v51)
                            {
                              goto LABEL_99;
                            }
                          }
                        }

                        do
                        {
                          v54 = v51[1];
                          if (v47 == v54)
                          {
                            if (*(v51 + 5) == HIDWORD(v40) && *(v51 + 4) == v40)
                            {
                              goto LABEL_57;
                            }
                          }

                          else
                          {
                            if (v54 >= *&v45)
                            {
                              v54 %= *&v45;
                            }

                            if (v54 != v49)
                            {
                              break;
                            }
                          }

                          v51 = *v51;
                        }

                        while (v51);
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_99:
          if (v101 == 1)
          {
            break;
          }

          v57 = sub_C9E544((__dst + 3896));
          v11 = v99;
          if (v57 >= *(v99 + 14))
          {
            if (v101)
            {
              goto LABEL_108;
            }

            v58 = sub_585D8(__dst + 3896);
            v11 = v99;
            if ((v58 & 1) != 0 || (*(v99 + 15) & 1) == 0)
            {
              goto LABEL_108;
            }
          }

LABEL_57:
          v11 = v99 + 2;
          v99 = v11;
          if (v11 == v100)
          {
            v42 = v97 + 2;
            v97 = v42;
            if (v42 >= v98)
            {
              goto LABEL_108;
            }

            while (1)
            {
              v11 = *v42;
              v43 = v42[1];
              if (*v42 != v43)
              {
                break;
              }

              v42 += 2;
              v97 = v42;
              if (v42 >= v98)
              {
                goto LABEL_109;
              }
            }

            v99 = *v42;
            v100 = v43;
            if (v11 >= v43)
            {
              goto LABEL_108;
            }
          }

          else if (v11 >= v100)
          {
            goto LABEL_108;
          }
        }

        v11 = v99;
LABEL_108:
        if (v11 >= v100)
        {
          goto LABEL_109;
        }
      }
    }
  }

LABEL_134:
  v66 = v6;
  v67 = 126 - 2 * __clz((*(&v6 + 1) - v6) >> 2);
  if (*(&v6 + 1) == v6)
  {
    v68 = 0;
  }

  else
  {
    v68 = v67;
  }

  sub_C31D0C(v6, *(&v6 + 1), &v82, v68, 1);
  if (*(&v66 + 1) != v66)
  {
    v69 = (v66 + 4);
    while (v69 != *(&v66 + 1))
    {
      v70 = *(v69 - 1);
      v71 = *v69++;
      if (v70 == v71)
      {
        v72 = v69 - 2;
        while (v69 != *(&v66 + 1))
        {
          v73 = v70;
          v70 = *v69;
          if (v73 != *v69)
          {
            v72[1] = v70;
            ++v72;
          }

          ++v69;
        }

        if (v72 + 1 != *(&v66 + 1))
        {
          a2[1] = v72 + 1;
        }

        break;
      }
    }
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v82);
    sub_4A5C(&v82, "Number of accumulated departure times: ", 39);
    std::ostream::operator<<();
    if ((v94 & 0x10) != 0)
    {
      v76 = v93;
      if (v93 < v89)
      {
        v93 = v89;
        v76 = v89;
      }

      v77 = v88;
      v75 = v76 - v88;
      if (v76 - v88 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_167;
      }
    }

    else
    {
      if ((v94 & 8) == 0)
      {
        v75 = 0;
        v96 = 0;
LABEL_160:
        *(&__dst + v75) = 0;
        sub_7E854(&__dst, 1u);
        if (v96 < 0)
        {
          operator delete(__dst);
        }

        if (v92 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v84);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v77 = v85;
      v75 = v87 - v85;
      if ((v87 - v85) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_167:
        sub_3244();
      }
    }

    if (v75 >= 0x17)
    {
      operator new();
    }

    v96 = v75;
    if (v75)
    {
      memmove(&__dst, v77, v75);
    }

    goto LABEL_160;
  }

  return result;
}

void sub_C31C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  __cxa_guard_abort(&qword_27339C8);
  v51 = a1;
  v52 = *v49;
  if (*v49)
  {
    *(v49 + 8) = v52;
    operator delete(v52);
    v51 = a1;
  }

  _Unwind_Resume(v51);
}

unint64_t sub_C31D0C(unint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *(a2 - 1);
      v75 = *v10;
      if (*v10 < v74)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v93 < v92)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 4) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 4);
                v94 -= 4;
              }

              while (v93 < v92);
              v91 = (v10 + v94 + 4);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 4;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v100 < v99)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v100 < v99);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_C329E0(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v13 < *v10)
      {
        if (v17 < v14)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v18 < v28)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v17 >= v14)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v13 >= *v10)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (v21 < *(v10 - 1))
      {
        goto LABEL_62;
      }

      if (*(a2 - 1) >= v21)
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (*v10 >= v21);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v56 >= v21);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v59 < v21);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v62 >= v21);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v63 < v21);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v10 >= *v12)
      {
        if (v15 < v14)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v10 < *v12)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v15 >= v14)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v16 >= v22)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v25 >= v24)
      {
        if (v24 < v26)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (v27 < *v23)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v24 >= v26)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v25 >= v29)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v33 >= v32)
      {
        if (v31 < v34)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (v35 < *v30)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v31 >= v34)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v33 >= v36)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v23 >= *v13)
      {
        if (v37 >= v39)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v38 < v39)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v37 < v39)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v38 < v39)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v21 < v43);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v21 >= v47);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v21 >= v46);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v21 < v51);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v21 >= v52);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = sub_C325F4(v10, v53);
      v10 = v53 + 1;
      result = sub_C325F4(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = sub_C31D0C(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v83 >= v80)
      {
        if (v80 < v82)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v83 < v82)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        LODWORD(v80) = v82;
        v98 = *(a2 - 1);
        if (v80 >= v98)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v80 >= v82)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v83 >= v82)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        LODWORD(v80) = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v80 >= v98)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v81;
      v102 = *v79;
      if (v102 < v101)
      {
        v10[1] = v101;
        v10[2] = v102;
        v103 = *v10;
        if (*v10 < v101)
        {
          *v10 = v101;
          v10[1] = v103;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v69 >= v66)
      {
        if (v66 >= v67)
        {
          v72 = *v10;
          LODWORD(v69) = v10[1];
          v95 = v10[3];
          if (v67 >= v95)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v69 < v67)
          {
            goto LABEL_162;
          }

          v72 = v69;
          LODWORD(v69) = v67;
          LODWORD(v67) = v66;
          v95 = v10[3];
          if (v67 >= v95)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v66 < v67)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v69 < v67)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          LODWORD(v69) = result;
          LODWORD(v67) = v73;
          v95 = v10[3];
          if (v73 < v95)
          {
            goto LABEL_163;
          }

LABEL_167:
          LODWORD(v67) = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v67 >= v104)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v96 = v10[3];
          if (v105 >= v96)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v105;
          v106 = v10[1];
          if (v106 >= v96)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v106;
          v97 = *v10;
          if (*v10 >= v96)
          {
            return result;
          }

LABEL_172:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v67 >= v95)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v69 < v95)
      {
        *v65 = v95;
        *v68 = v69;
        if (v72 < v95)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (*v10 < v77)
  {
    if (v77 >= v78)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v76 >= v107)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v77 < v78)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (*v10 < v96)
    {
      goto LABEL_172;
    }
  }

  return result;
}

BOOL sub_C325F4(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (*a1 < v17)
      {
        if (v17 >= v18)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v16 >= v47)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v17 >= v18)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (*a1 >= v33)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (*a1 >= v5)
      {
        if (v5 >= v6)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v6 < v42)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v8 >= v6)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v6 < v42)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v8 < v42)
            {
              *v4 = v42;
              *v7 = v8;
              if (v11 < v42)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v6 >= v48)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v49 >= v33)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v50 >= v33)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (*a1 >= v33)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v5 >= v6)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v8 >= v6)
        {
          v11 = v5;
          v42 = a1[3];
          if (v6 < v42)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v13 < v42)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (*a1 >= v26)
    {
      if (v26 >= v28)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v29 >= v28)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v26 >= v43)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v26 >= v28)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v29 >= v28)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v26 >= v43)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v45 >= v44)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (*a1 >= v44)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (*a1 >= v21)
    {
      if (v21 >= v19)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v21 < v19)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v22 < v19)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 12; ; i += 4)
    {
      v38 = *v35;
      v39 = *v20;
      if (v39 < *v35)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v39;
      v41 = v40 - 4;
      if (v40 == 4)
      {
        *a1 = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = *(a1 + v40 - 8);
      v40 -= 4;
    }

    while (v39 < v38);
    *(a1 + v41) = v38;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (*a1 >= v14)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

int *sub_C329E0(int *a1, int *a2, int *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v6 = (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v7 = &a1[v6];
        v8 = *v7;
        if (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2 < v3 && v7[1] < v8)
        {
          v8 = v7[1];
          ++v7;
          v6 = 2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2;
        }

        v9 = &a1[v5];
        v10 = *v9;
        if (*v9 >= v8)
        {
          while (1)
          {
            v11 = v7;
            *v9 = v8;
            if (v4 < v6)
            {
              break;
            }

            v12 = (2 * v6) | 1;
            v7 = &a1[v12];
            v6 = 2 * v6 + 2;
            v8 = *v7;
            if (v6 < v3)
            {
              if (v7[1] >= v8)
              {
                v6 = v12;
              }

              else
              {
                v8 = v7[1];
                ++v7;
              }

              v9 = v11;
              if (v10 < v8)
              {
                break;
              }
            }

            else
            {
              v6 = v12;
              v9 = v11;
              if (v10 < v8)
              {
                break;
              }
            }
          }

          *v11 = v10;
        }
      }

      v21 = v5-- <= 0;
    }

    while (!v21);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v14 = *a1;
      i = a2;
      do
      {
        v15 = *i;
        if (v14 < *i)
        {
          *i = v14;
          *a1 = v15;
          v14 = v15;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_49;
    }

    for (i = a2; i != a3; ++i)
    {
      v16 = *i;
      if (*a1 < *i)
      {
        *i = *a1;
        *a1 = v16;
        v17 = a1[1];
        if (a2 - a1 == 8)
        {
          v18 = a1 + 1;
          v19 = 1;
          if (v16 >= v17)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v20 = a1[2];
          v21 = v20 < v17;
          if (v20 >= v17)
          {
            v18 = a1 + 1;
          }

          else
          {
            v17 = a1[2];
            v18 = a1 + 2;
          }

          if (v21)
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          if (v16 >= v17)
          {
LABEL_40:
            v22 = a1;
            while (1)
            {
              v23 = v18;
              *v22 = v17;
              if (((v3 - 2) >> 1) < v19)
              {
                break;
              }

              v24 = (2 * v19) | 1;
              v18 = &a1[v24];
              v19 = 2 * v19 + 2;
              v17 = *v18;
              if (v19 < v3)
              {
                if (v18[1] >= v17)
                {
                  v19 = v24;
                }

                else
                {
                  v17 = v18[1];
                  ++v18;
                }

                v22 = v23;
                if (v16 < v17)
                {
                  break;
                }
              }

              else
              {
                v19 = v24;
                v22 = v23;
                if (v16 < v17)
                {
                  break;
                }
              }
            }

            *v23 = v16;
          }
        }
      }
    }
  }

LABEL_49:
  if (v3 >= 2)
  {
    do
    {
      v26 = 0;
      v27 = *a1;
      v28 = (v3 - 2) >> 1;
      v29 = a1;
      do
      {
        while (1)
        {
          v35 = &v29[v26];
          v34 = v35 + 1;
          v33 = v35[1];
          v36 = (2 * v26) | 1;
          v26 = 2 * v26 + 2;
          if (v26 < v3)
          {
            break;
          }

          v26 = v36;
          *v29 = v33;
          v29 = v35 + 1;
          if (v36 > v28)
          {
            goto LABEL_61;
          }
        }

        v32 = v35[2];
        v31 = v35 + 2;
        v30 = v32;
        if (v32 >= v33)
        {
          v26 = v36;
        }

        else
        {
          v33 = v30;
          v34 = v31;
        }

        *v29 = v33;
        v29 = v34;
      }

      while (v26 <= v28);
LABEL_61:
      if (v34 == --a2)
      {
        *v34 = v27;
      }

      else
      {
        *v34 = *a2;
        *a2 = v27;
        v37 = (v34 - a1 + 4) >> 2;
        v21 = v37 < 2;
        v38 = v37 - 2;
        if (!v21)
        {
          v39 = v38 >> 1;
          v40 = &a1[v39];
          v41 = *v40;
          v42 = *v34;
          if (*v34 < *v40)
          {
            do
            {
              v43 = v40;
              *v34 = v41;
              if (!v39)
              {
                break;
              }

              v39 = (v39 - 1) >> 1;
              v40 = &a1[v39];
              v41 = *v40;
              v34 = v43;
            }

            while (v42 < *v40);
            *v43 = v42;
          }
        }
      }

      v21 = v3-- <= 2;
    }

    while (!v21);
  }

  return i;
}

uint64_t sub_C32D18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_A74644(&v102, *(a1 + 24), 0x1FFFFFFFEuLL);
  v3 = v103;
  v4 = 16;
  if (v107)
  {
    v4 = 32;
  }

  v5 = 0uLL;
  if (v103 < *(&v102 + v4))
  {
    while (1)
    {
      v9 = *(v3 + 2);
      sub_A7905C(&__dst, *(a1 + 24), __ROR8__(*v3, 32), 0, 0, 0);
      v10 = v98;
      if (v98 < v99)
      {
        break;
      }

LABEL_109:
      v6 = v104;
      v3 = (v103 + 12);
      v103 = v3;
      if (v3 == v104)
      {
        v3 = v105;
        v103 = v105;
        v7 = 1;
        v107 = 1;
      }

      else
      {
        v7 = v107;
      }

      v8 = v106;
      if (v7)
      {
        v60 = v106;
      }

      else
      {
        v60 = v104;
      }

      if (*(v102 + 16) == 1 && v3 < v60)
      {
        while (1)
        {
          v62 = __ROR8__(*v3, 32);
          if (HIDWORD(v62) == 1 && (v62 + 3) < 2)
          {
            break;
          }

          if (sub_2D5204(**(v102 + 4120)))
          {
            v3 = v103;
            v6 = v104;
            v7 = v107;
            break;
          }

          v6 = v104;
          v3 = (v103 + 12);
          v103 = v3;
          if (v3 == v104)
          {
            v3 = v105;
            v103 = v105;
            v7 = 1;
            v107 = 1;
            if (v105 >= v106)
            {
              break;
            }
          }

          else
          {
            v7 = v107;
            v64 = 32;
            if ((v107 & 1) == 0)
            {
              v64 = 16;
            }

            if (v3 >= *(&v102 + v64))
            {
              break;
            }
          }
        }

        v8 = v106;
      }

      if (v7)
      {
        v6 = v8;
      }

      if (v3 >= v6)
      {
        v5 = *a2;
        goto LABEL_134;
      }
    }

    if (v9 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    v12 = (v11 + v9 % 10);
    v79 = v9 / -10 + (((-103 * v12) >> 15) & 1) + ((-103 * v12) >> 10);
    v13 = v9 / 10 + (((103 * v12) >> 15) & 1) + ((103 * v12) >> 10);
    while (1)
    {
      v14 = *(a1 + 276);
      v15 = *(a1 + 16);
      if (v15 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      sub_A79708(&v81, *(a1 + 24), __ROR8__(*v10, 32), *(v10 + 5), 0, 0);
      if (v92 == 1)
      {
        v17 = sub_A84F48(*(a1 + 24), &v81, v79 + v14, 1u);
      }

      else
      {
        v17 = sub_A8552C(&v81, v79 + v14, 1);
      }

      if (v17)
      {
        v18 = -103 * (v16 + v15 - 10 * (((1717986919 * v15) >> 34) + (1717986919 * v15 < 0)));
        v19 = v79 + v79 + v14 + v15 / -10 + ((v18 >> 15) & 1) + (v18 >> 10);
        v20 = *a2;
        while (v89 >= v88 && v89 < __p)
        {
          v23 = v92 ? &v93 : v89;
          v24 = (v83.__locale_ + *(v83.__locale_ - *v83.__locale_ + 6));
          v25 = v13 + *v23 + *(&v24[2 * v89[1] + 1 + 2 * ((v85 - v84) >> 4)] + *v24);
          if (v25 < v19)
          {
            break;
          }

          v27 = a2[1];
          v26 = a2[2];
          if (v27 < v26)
          {
            *v27 = v25;
            v21 = v27 + 1;
          }

          else
          {
            v28 = v27 - v20;
            v29 = (v27 - v20) >> 2;
            v30 = v29 + 1;
            if ((v29 + 1) >> 62)
            {
              *a2 = v20;
              sub_1794();
            }

            v31 = v26 - v20;
            if (v31 >> 1 > v30)
            {
              v30 = v31 >> 1;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v32 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              if (!(v32 >> 62))
              {
                operator new();
              }

              *a2 = v20;
              sub_1808();
            }

            v33 = (4 * v29);
            *v33 = v25;
            v21 = v33 + 1;
            memcpy(0, v20, v28);
            a2[1] = v21;
            a2[2] = 0;
            if (v20)
            {
              operator delete(v20);
            }

            v20 = 0;
          }

          a2[1] = v21;
          sub_A7B558(&v81, 0);
        }

        *a2 = v20;
      }

      v34 = v99;
      v10 = v98 + 2;
      v98 = v10;
      if (v10 == v99)
      {
        v35 = v96 + 2;
        v96 = v35;
        if (v35 >= v97)
        {
          goto LABEL_109;
        }

        while (1)
        {
          v10 = *v35;
          v34 = v35[1];
          if (*v35 != v34)
          {
            break;
          }

          v35 += 2;
          v96 = v35;
          if (v35 >= v97)
          {
            goto LABEL_109;
          }
        }

        v98 = *v35;
        v99 = v34;
        if (v10 < v34)
        {
          goto LABEL_59;
        }

LABEL_49:
        if (v10 >= v34)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v10 >= v99)
        {
          goto LABEL_49;
        }

        while (1)
        {
LABEL_59:
          if ((v101 & 1) == 0)
          {
            v36 = __dst;
            v37 = *v10;
            v38 = *(__dst + 517);
            if (sub_68312C(v38 + 3896))
            {
              if (*(v38 + 3944))
              {
                if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                {
                  v58 = sub_A57824(-85.0, 0.0);
                  sub_58168(v58 >> 17, v58 >> 49);
                  dword_27339C0 = v59 | 0x40000000;
                  __cxa_guard_release(&qword_27339C8);
                }

                v39 = __ROR8__(v37, 32);
                v40 = *(v36 + 517);
                if (dword_27339C0 == HIDWORD(v39))
                {
                  if (!sub_68312C(v40 + 3896) || !*(v40 + 3944))
                  {
                    exception = __cxa_allocate_exception(0x40uLL);
                    v78 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                  }
                }

                else
                {
                  v43 = *(v40 + 3944);
                  v44 = v43[1];
                  if (v44)
                  {
                    v45 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v39 ^ (v39 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v39 ^ (v39 >> 33))) >> 33));
                    v46 = v45 ^ (v45 >> 33);
                    v47 = vcnt_s8(v44);
                    v47.i16[0] = vaddlv_u8(v47);
                    if (v47.u32[0] > 1uLL)
                    {
                      v48 = v46;
                      if (v46 >= *&v44)
                      {
                        v48 = v46 % *&v44;
                      }
                    }

                    else
                    {
                      v48 = (*&v44 - 1) & v46;
                    }

                    v49 = *(*v43 + 8 * v48);
                    if (v49)
                    {
                      v50 = *v49;
                      if (v50)
                      {
                        if (v47.u32[0] < 2uLL)
                        {
                          v51 = *&v44 - 1;
                          while (1)
                          {
                            v55 = v50[1];
                            if (v46 == v55)
                            {
                              if (*(v50 + 5) == HIDWORD(v39) && *(v50 + 4) == v39)
                              {
                                goto LABEL_57;
                              }
                            }

                            else if ((v55 & v51) != v48)
                            {
                              goto LABEL_99;
                            }

                            v50 = *v50;
                            if (!v50)
                            {
                              goto LABEL_99;
                            }
                          }
                        }

                        do
                        {
                          v53 = v50[1];
                          if (v46 == v53)
                          {
                            if (*(v50 + 5) == HIDWORD(v39) && *(v50 + 4) == v39)
                            {
                              goto LABEL_57;
                            }
                          }

                          else
                          {
                            if (v53 >= *&v44)
                            {
                              v53 %= *&v44;
                            }

                            if (v53 != v48)
                            {
                              break;
                            }
                          }

                          v50 = *v50;
                        }

                        while (v50);
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_99:
          if (v100 == 1)
          {
            break;
          }

          v56 = sub_C9E544((__dst + 3896));
          v10 = v98;
          if (v56 >= *(v98 + 14))
          {
            if (v100)
            {
              goto LABEL_108;
            }

            v57 = sub_585D8(__dst + 3896);
            v10 = v98;
            if ((v57 & 1) != 0 || (*(v98 + 15) & 1) == 0)
            {
              goto LABEL_108;
            }
          }

LABEL_57:
          v10 = v98 + 2;
          v98 = v10;
          if (v10 == v99)
          {
            v41 = v96 + 2;
            v96 = v41;
            if (v41 >= v97)
            {
              goto LABEL_108;
            }

            while (1)
            {
              v10 = *v41;
              v42 = v41[1];
              if (*v41 != v42)
              {
                break;
              }

              v41 += 2;
              v96 = v41;
              if (v41 >= v97)
              {
                goto LABEL_109;
              }
            }

            v98 = *v41;
            v99 = v42;
            if (v10 >= v42)
            {
              goto LABEL_108;
            }
          }

          else if (v10 >= v99)
          {
            goto LABEL_108;
          }
        }

        v10 = v98;
LABEL_108:
        if (v10 >= v99)
        {
          goto LABEL_109;
        }
      }
    }
  }

LABEL_134:
  v65 = v5;
  v66 = 126 - 2 * __clz((*(&v5 + 1) - v5) >> 2);
  if (*(&v5 + 1) == v5)
  {
    v67 = 0;
  }

  else
  {
    v67 = v66;
  }

  sub_C3382C(v5, *(&v5 + 1), &v81, v67, 1);
  if (*(&v65 + 1) != v65)
  {
    v68 = (v65 + 4);
    while (v68 != *(&v65 + 1))
    {
      v69 = *(v68 - 1);
      v70 = *v68++;
      if (v69 == v70)
      {
        v71 = v68 - 2;
        while (v68 != *(&v65 + 1))
        {
          v72 = v69;
          v69 = *v68;
          if (v72 != *v68)
          {
            v71[1] = v69;
            ++v71;
          }

          ++v68;
        }

        if (v71 + 1 != *(&v65 + 1))
        {
          a2[1] = v71 + 1;
        }

        break;
      }
    }
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v81);
    sub_4A5C(&v81, "Number of accumulated departure times: ", 39);
    std::ostream::operator<<();
    if ((v93 & 0x10) != 0)
    {
      v75 = v92;
      if (v92 < v88)
      {
        v92 = v88;
        v75 = v88;
      }

      v76 = v87;
      v74 = v75 - v87;
      if (v75 - v87 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_167;
      }
    }

    else
    {
      if ((v93 & 8) == 0)
      {
        v74 = 0;
        v95 = 0;
LABEL_160:
        *(&__dst + v74) = 0;
        sub_7E854(&__dst, 1u);
        if (v95 < 0)
        {
          operator delete(__dst);
        }

        if (v91 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v83);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v76 = v84;
      v74 = v86 - v84;
      if ((v86 - v84) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_167:
        sub_3244();
      }
    }

    if (v74 >= 0x17)
    {
      operator new();
    }

    v95 = v74;
    if (v74)
    {
      memmove(&__dst, v76, v74);
    }

    goto LABEL_160;
  }

  return result;
}