uint64_t *sub_C9E948(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (!sub_A794D0(*(a1 + 24), &v5))
  {
    return &unk_22AC058;
  }

  v3 = sub_C9F594(*(a1 + 24), &v5);
  if (!v3)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  return v3 + 7;
}

uint64_t *sub_C9E9BC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
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
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_C9ED3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C9ED64(va);
  _Unwind_Resume(a1);
}

void sub_C9ED50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C9ED64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C9ED64(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[13];
      v2[13] = 0;
      if (v3)
      {
        v4 = *v3;
        if (*v3)
        {
          *(v3 + 8) = v4;
          operator delete(v4);
        }

        operator delete();
      }

      v5 = v2[10];
      if (v5)
      {
        v2[11] = v5;
        operator delete(v5);
      }

      v6 = v2[7];
      if (v6)
      {
        v2[8] = v6;
        operator delete(v6);
      }

      v7 = v2[4];
      if (v7)
      {
        v2[5] = v7;
        operator delete(v7);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_C9EE14(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 8) = 0;
  *result = v2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  if (v5 != v6)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 2) < 0xCCCCCCCCCCCCCCDLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v8 = *(a2 + 7);
  v7 = *(a2 + 8);
  if (v7 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  *(result + 80) = 0;
  return result;
}

void sub_C9F05C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[8] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = *v2;
      if (!*v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[5] = v7;
  operator delete(v7);
  v8 = *v2;
  if (!*v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[2] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_C9F0E0()
{
  if (*v0)
  {
    JUMPOUT(0xC9F0CCLL);
  }

  JUMPOUT(0xC9F0A4);
}

void sub_C9F0F0()
{
  if (!*v0)
  {
    JUMPOUT(0xC9F0B4);
  }

  JUMPOUT(0xC9F0ACLL);
}

uint64_t sub_C9F100(uint64_t a1)
{
  sub_C9F13C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_C9F13C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[13];
      v2[13] = 0;
      if (v4)
      {
        v5 = *v4;
        if (*v4)
        {
          *(v4 + 8) = v5;
          operator delete(v5);
        }

        operator delete();
      }

      v6 = v2[10];
      if (v6)
      {
        v2[11] = v6;
        operator delete(v6);
      }

      v7 = v2[7];
      if (v7)
      {
        v2[8] = v7;
        operator delete(v7);
      }

      v8 = v2[4];
      if (v8)
      {
        v2[5] = v8;
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_C9F1F0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
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
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_C9F580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C9ED64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_C9F594(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v5)
        {
          if (*(result + 5) == HIDWORD(v3) && *(result + 4) == v3)
          {
            return result;
          }
        }

        else if ((v12 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v14 = result[1];
      if (v14 == v5)
      {
        if (*(result + 5) == HIDWORD(v3) && *(result + 4) == v3)
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_C9F6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v3 = *(a1 + 8);
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v4, 0, sizeof(v4));
  sub_A30418((a1 + 32), &v5, 1, v4);
}

void sub_C9F814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  sub_506524((v9 + 32));
  sub_1F1A8(v10);
  sub_1F1A8(v9);
  _Unwind_Resume(a1);
}

void sub_C9F840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3B889C(va);
  sub_1F1A8(v5 - 48);
  sub_1F1A8(v4);
  sub_1F1A8(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_C9F870@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16))
  {
    v2 = result;
    sub_7E9A4(v10);
    sub_CA04F4(v2, &v8);
    memset(v6, 0, sizeof(v6));
    v7 = 1065353216;
    sub_CAF314(&v5, v6, &v8);
    v3 = v8;
    for (i = v9; v3 != i; v3 += 4)
    {
      v5 = *v3;
      sub_BC4980(v6, &v5);
    }

    sub_CA088C();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_CA02EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a17);
  sub_CA1E18(&a50);
  sub_CA1E18(&a56);
  sub_CA1E18(&a61);
  sub_CA1F48((v61 - 224));
  sub_11BD8(v61 - 176);
  v63 = *(v61 - 128);
  if (v63)
  {
    *(v61 - 120) = v63;
    operator delete(v63);
  }

  _Unwind_Resume(a1);
}

void sub_CA04F4(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_CA25E8(a1 + 4232, 1, &v27);
  if (!sub_7E7E4(1u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v16);
  sub_4A5C(&v16, "JourneyPlannerIncidentDataFactory read ", 39);
  v4 = std::ostream::operator<<();
  sub_4A5C(v4, " blocked entities.", 18);
  if ((v26 & 0x10) != 0)
  {
    v6 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v6 = v22;
    }

    v7 = v21;
    v5 = v6 - v21;
    if (v6 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_32:
      sub_3244();
    }

LABEL_8:
    if (v5 >= 0x17)
    {
      operator new();
    }

    v15 = v5;
    if (v5)
    {
      memmove(&__dst, v7, v5);
    }

    goto LABEL_13;
  }

  if ((v26 & 8) != 0)
  {
    v7 = v19;
    v5 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_32;
    }

    goto LABEL_8;
  }

  v5 = 0;
  v15 = 0;
LABEL_13:
  *(&__dst + v5) = 0;
  sub_7E854(&__dst, 1u);
  if (v15 < 0)
  {
    operator delete(__dst);
  }

  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  v8 = v27;
  v9 = v28;
  while (v8 != v9)
  {
    v10 = v8[2];
    if (v10 == 6)
    {
      sub_CA2AC4(a1, *v8);
    }

    else if (v10 == 3)
    {
      sub_CA2860(a1, *v8, a2);
    }

    v8 += 3;
  }

  v11 = a2[1];
  v12 = 126 - 2 * __clz((v11 - *a2) >> 5);
  if (v11 == *a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_CAFF1C(*a2, v11, &v16, v13, 1);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_CA081C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  v19 = *(v17 - 88);
  if (v19)
  {
    *(v17 - 80) = v19;
    operator delete(v19);
    v20 = *v16;
    if (!*v16)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v20 = *v16;
    if (!*v16)
    {
      goto LABEL_5;
    }
  }

  *(v16 + 8) = v20;
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_CA088C()
{
  v0 = __chkstk_darwin();
  v1 = v0[1];
  v2[0] = *v0;
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_CA3A30(v3, v2);
}

void sub_CA0960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CAAB64(va);
  _Unwind_Resume(a1);
}

void sub_CA0974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_CA0988(int *a1@<X1>, uint64_t a2@<X8>)
{
  v75 = 0u;
  v76 = 0u;
  v77 = 1065353216;
  v2 = (a1 - *a1);
  if (*v2 < 5u || (v3 = v2[2]) == 0 || (v4 = *(a1 + v3), v5 = (a1 + v3 + v4), v52 = *v5, !v52))
  {
    *a2 = 0uLL;
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 1065353216;
    goto LABEL_48;
  }

  v6 = 0;
  v51 = v5 + 1;
  v53 = a1 + v4 + v3 + 8;
  do
  {
    v7 = &v51[v6];
    v8 = *v7;
    v54 = v6;
    if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
    {
      v36 = sub_A57824(-85.0, 0.0);
      sub_58168(v36 >> 17, v36 >> 49);
      dword_27339C0 = v37 | 0x40000000;
      __cxa_guard_release(&qword_27339C8);
    }

    v9 = (v7 + v8);
    v10 = (v9 + *(v9 - *v9 + 8));
    v57 = *(v10 + *v10);
    if (v57)
    {
      v11 = 0;
      v55 = dword_27339C0;
      v56 = __ROR8__(v6 | (dword_27339C0 << 32), 32);
      v12 = v53 + v8;
      do
      {
        while (1)
        {
          v14 = sub_3C0DD4(v11);
          v15 = *(v9 - *v9 + 8);
          v58 = __ROR8__(*(v12 + v15 + *(v9 + v15)), 32);
          v65 = &v58;
          v16 = sub_CAF430(&v75, &v58);
          v17 = v16;
          v19 = v16[3];
          v18 = v16[4];
          if (v19 == v18)
          {
            break;
          }

          v20 = __ROR8__(*(v18 - 2), 32);
          v21 = HIDWORD(v20);
          if (v6 != v20 || v55 != v21)
          {
            break;
          }

          *(v18 - 3) = v14;
          ++v11;
          v12 += 16;
          if (v57 == v11)
          {
            goto LABEL_5;
          }
        }

        v23 = (v9 - *v9);
        v24 = *v23;
        if (v24 < 0xF)
        {
          v25 = 0x7FFF;
          if (v24 < 0xD)
          {
            LOBYTE(v26) = 0;
            v27 = 1;
            v28 = v16[5];
            if (v18 >= v28)
            {
              goto LABEL_33;
            }

            goto LABEL_9;
          }
        }

        else if (v23[7])
        {
          v25 = *(v9 + v23[7]);
        }

        else
        {
          v25 = 0x7FFF;
        }

        if (v23[6])
        {
          v27 = *(v9 + v23[6]);
          if (v24 < 0x13)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v27 = 1;
          if (v24 < 0x13)
          {
            goto LABEL_32;
          }
        }

        v29 = v23[9];
        if (v29)
        {
          v26 = (*(v9 + v29) >> 1) & 1;
          v28 = v16[5];
          if (v18 >= v28)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

LABEL_32:
        LOBYTE(v26) = 0;
        v28 = v16[5];
        if (v18 >= v28)
        {
LABEL_33:
          v30 = v18 - v19;
          v31 = (v18 - v19) >> 4;
          v32 = v31 + 1;
          if ((v31 + 1) >> 60)
          {
            sub_1794();
          }

          v33 = v28 - v19;
          if (v33 >> 3 > v32)
          {
            v32 = v33 >> 3;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF0)
          {
            v34 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            if (!(v34 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v35 = 16 * v31;
          *v35 = v56;
          *(v35 + 8) = v14;
          *(v35 + 10) = v14;
          *(v35 + 12) = v25;
          *(v35 + 14) = v27;
          *(v35 + 15) = v26;
          v13 = 16 * v31 + 16;
          memcpy(0, v19, v30);
          v17[3] = 0;
          v17[4] = v13;
          v17[5] = 0;
          if (v19)
          {
            operator delete(v19);
          }

          v6 = v54;
          goto LABEL_10;
        }

LABEL_9:
        *v18 = v56;
        *(v18 + 4) = v14;
        *(v18 + 5) = v14;
        *(v18 + 6) = v25;
        *(v18 + 14) = v27;
        v13 = (v18 + 2);
        *(v18 + 15) = v26;
LABEL_10:
        v17[4] = v13;
        ++v11;
        v12 += 16;
      }

      while (v57 != v11);
    }

LABEL_5:
    ++v6;
    v53 += 4;
  }

  while (v6 != v52);
  v42 = v76;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  for (*(a2 + 32) = 1065353216; v42; v42 = *v42)
  {
    v43 = v42[2];
    v65 = 0;
    v66 = 0;
    v67 = xmmword_22AC080;
    v68 = 0;
    v69 = 0;
    v70 = 0u;
    v71 = 0u;
    v72 = 1;
    v73 = 256;
    v74 = 0;
    v44 = sub_CAAD04(&v65, (v42 + 3));
    sub_C7C3D4(&v65, v44, 0, 0);
    v45 = v65;
    v46 = v66;
    if (v66 == 1)
    {
      v65 = 0;
      v66 = 0;
    }

    v47 = v68;
    v48 = v70;
    v49 = v69;
    v68 = 0;
    v69 = 0;
    *&v71 = 0;
    v70 = 0uLL;
    v58 = v43;
    v59 = v45;
    v60 = v46;
    v61 = v48;
    v62 = v47;
    v63 = *(&v48 + 1);
    v64 = v49;
    sub_CAF7AC(a2, &v58);
    if (v61)
    {
      if (!v59)
      {
        v78 = off_2672F70;
        operator delete[]();
      }

      (*(*v59 + 24))(v59);
    }

    if (v60 == 1 && v59)
    {
      (*(*v59 + 8))(v59);
    }

    sub_CA24C0(&v65);
  }

LABEL_48:
  v38 = v76;
  if (v76)
  {
    do
    {
      v40 = *v38;
      v41 = v38[3];
      if (v41)
      {
        v38[4] = v41;
        operator delete(v41);
      }

      operator delete(v38);
      v38 = v40;
    }

    while (v40);
  }

  v39 = v75;
  *&v75 = 0;
  if (v39)
  {
    operator delete(v39);
  }
}

void sub_CA0F74(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339C8);
  sub_39AFC(v1 - 144);
  _Unwind_Resume(a1);
}

void sub_CA0F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_CA23C0(&a25);
  sub_CA1F48(&a19);
  sub_CA24C0(&a32);
  sub_CA1E18(a9);
  sub_39AFC(v32 - 144);
  _Unwind_Resume(a1);
}

void sub_CA1024(int *a1@<X1>, uint64_t a2@<X8>)
{
  v61 = 0u;
  v62 = 0u;
  v63 = 1065353216;
  v2 = (a1 - *a1);
  if (*v2 >= 5u && (v3 = v2[2]) != 0 && (v4 = (a1 + v3 + *(a1 + v3)), v41 = *v4, v41))
  {
    v5 = 0;
    v40 = v4 + 1;
    do
    {
      v42 = v5;
      v6 = &v40[v5];
      v7 = *v6;
      if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
      {
        v25 = sub_A57824(-85.0, 0.0);
        sub_58168(v25 >> 17, v25 >> 49);
        dword_27339C0 = v26 | 0x40000000;
        __cxa_guard_release(&qword_27339C8);
      }

      v8 = (v6 + v7);
      v9 = (v6 + v7 + *(v6 + v7 - *(v6 + v7) + 4));
      v10 = *(v9 + *v9);
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v43 = __ROR8__(v42 | (dword_27339C0 << 32), 32);
        do
        {
          while (1)
          {
            v13 = (v8 + *(v8 - *v8 + 4));
            v44 = __ROR8__(*(v13 + (v11 & 0x7F8) + *v13 + 4), 32);
            v51 = &v44;
            v14 = sub_CAFBA0(&v61, &v44);
            v15 = v14;
            v16 = v14[4];
            v17 = v14[5];
            if (v16 >= v17)
            {
              break;
            }

            *v16 = v43;
            *(v16 + 8) = v12;
            *(v16 + 9) = 0;
            *(v16 + 11) = 0;
            v14[4] = v16 + 12;
            ++v12;
            v11 += 8;
            if (v10 == v12)
            {
              goto LABEL_5;
            }
          }

          v18 = v14[3];
          v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v18) >> 2) + 1;
          if (v19 > 0x1555555555555555)
          {
            sub_1794();
          }

          v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 2);
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0xAAAAAAAAAAAAAAALL)
          {
            v21 = 0x1555555555555555;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (v21 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v22 = 4 * ((v16 - v18) >> 2);
          *v22 = v43;
          *(v22 + 8) = v12;
          *(v22 + 9) = 0;
          *(v22 + 11) = 0;
          v23 = v22 + 12;
          v24 = (v22 - (v16 - v18));
          memcpy(v24, v18, v16 - v18);
          v15[3] = v24;
          v15[4] = v23;
          v15[5] = 0;
          if (v18)
          {
            operator delete(v18);
          }

          v15[4] = v23;
          ++v12;
          v11 += 8;
        }

        while (v10 != v12);
      }

LABEL_5:
      v5 = v42 + 1;
    }

    while (v42 + 1 != v41);
    v31 = v62;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    for (*(a2 + 32) = 1065353216; v31; v31 = *v31)
    {
      v32 = v31[2];
      v51 = 0;
      v52 = 0;
      v53 = xmmword_22AC080;
      v54 = 0;
      v55 = 0;
      v56 = 0u;
      v57 = 0u;
      v58 = 1;
      v59 = 256;
      v60 = 0;
      v33 = sub_CAAEFC(&v51, (v31 + 3));
      sub_C7C3D4(&v51, v33, 0, 0);
      v34 = v51;
      v35 = v52;
      if (v52 == 1)
      {
        v51 = 0;
        v52 = 0;
      }

      v36 = v54;
      v37 = v56;
      v38 = v55;
      v54 = 0;
      v55 = 0;
      *&v57 = 0;
      v56 = 0uLL;
      v44 = v32;
      v45 = v34;
      v46 = v35;
      v47 = v37;
      v48 = v36;
      v49 = *(&v37 + 1);
      v50 = v38;
      sub_CAF7AC(a2, &v44);
      if (v47)
      {
        if (!v45)
        {
          v64 = off_2672F70;
          operator delete[]();
        }

        (*(*v45 + 24))(v45);
      }

      if (v46 == 1 && v45)
      {
        (*(*v45 + 8))(v45);
      }

      sub_CA24C0(&v51);
    }
  }

  else
  {
    *a2 = 0uLL;
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 1065353216;
  }

  v27 = v62;
  if (v62)
  {
    do
    {
      v29 = *v27;
      v30 = v27[3];
      if (v30)
      {
        v27[4] = v30;
        operator delete(v30);
      }

      operator delete(v27);
      v27 = v29;
    }

    while (v29);
  }

  v28 = v61;
  *&v61 = 0;
  if (v28)
  {
    operator delete(v28);
  }
}

void sub_CA1534(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339C8);
  sub_39AFC(v1 - 144);
  _Unwind_Resume(a1);
}

void sub_CA1558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_CA23C0(&a21);
  sub_CA1F48(&a15);
  sub_CA24C0(&a28);
  sub_CA1E18(a9);
  sub_39AFC(v28 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_CA15D0@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v82 = 0u;
  v83 = 0u;
  v84 = 1065353216;
  v2 = (a1 - *a1);
  if (*v2 >= 5u && (v3 = v2[2]) != 0 && (v4 = (a1 + v3 + *(a1 + v3)), v56 = *v4, v56))
  {
    v55 = v4 + 1;
    v5 = 0;
    do
    {
      v57 = v5;
      v6 = &v55[v5];
      v7 = *v6;
      if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
      {
        v34 = sub_A57824(-85.0, 0.0);
        sub_58168(v34 >> 17, v34 >> 49);
        dword_27339C0 = v35 | 0x40000000;
        __cxa_guard_release(&qword_27339C8);
      }

      v8 = (v6 + v7);
      v9 = (v6 + v7 + *(v6 + v7 - *(v6 + v7) + 6));
      v59 = *(v9 + *v9);
      if (v59)
      {
        v10 = 0;
        v62 = __ROR8__(v57 | (dword_27339C0 << 32), 32);
        v58 = (v6 + v7);
        do
        {
          v11 = (v8 - *v8);
          v64 = v10;
          if (*v11 < 0x11u)
          {
            v13 = 0;
            v14 = *(v8 + v11[2] + *(v8 + v11[2]));
            v15 = v14 * v10;
          }

          else
          {
            if (v11[8])
            {
              v12 = *(v8 + v11[8]);
            }

            else
            {
              v12 = 0;
            }

            v14 = *(v8 + v11[2] + *(v8 + v11[2]));
            v15 = v12 + v14 * v10;
            v16 = v11[8];
            if (v16)
            {
              v13 = *(v8 + v16);
            }

            else
            {
              v13 = 0;
            }
          }

          v60 = v10 + 1;
          v17 = v13 + v14 * (v10 + 1);
          v18 = v15 >= v17;
          if (v15 > v17)
          {
            v17 = v15;
          }

          v63 = v17;
          if (!v18)
          {
            do
            {
              v20 = (a1 + *(a1 - *a1 + 10));
              v21 = &v20[3 * v15] + *v20;
              v72 = __ROR8__(*(v21 + 4), 32);
              v73 = *(v21 + 12);
              v65 = &v72;
              v22 = sub_C4F530(&v82, &v72);
              v23 = v22[3];
              if (v73 >= ((v22[4] - v23) >> 3))
              {
                operator new();
              }

              v24 = *(v23 + 8 * v73);
              v25 = *(v24 + 8);
              v26 = *(v24 + 16);
              if (v25 < v26)
              {
                *v25 = v62;
                *(v25 + 8) = v64;
                v19 = v25 + 12;
              }

              else
              {
                v27 = *v24;
                v28 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v24) >> 2);
                v29 = v28 + 1;
                if (v28 + 1 > 0x1555555555555555)
                {
                  sub_1794();
                }

                v30 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 2);
                if (2 * v30 > v29)
                {
                  v29 = 2 * v30;
                }

                if (v30 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v31 = 0x1555555555555555;
                }

                else
                {
                  v31 = v29;
                }

                if (v31)
                {
                  if (v31 <= 0x1555555555555555)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v32 = 4 * ((v25 - *v24) >> 2);
                *v32 = v62;
                *(v32 + 8) = v64;
                v19 = 12 * v28 + 12;
                v33 = 12 * v28 - (v25 - v27);
                memcpy((v32 - (v25 - v27)), v27, v25 - v27);
                *v24 = v33;
                *(v24 + 8) = v19;
                *(v24 + 16) = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              *(v24 + 8) = v19;
              ++v15;
            }

            while (v15 != v63);
          }

          v10 = v60;
          v8 = v58;
        }

        while (v60 != v59);
      }

      v5 = v57 + 1;
    }

    while (v57 + 1 != v56);
    v37 = v83;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    for (*(a2 + 32) = 1065353216; v37; v37 = *v37)
    {
      v38 = v37[2];
      v72 = 0;
      v74 = xmmword_22AC080;
      v75 = 0;
      v76 = 0;
      v77 = 0u;
      v78 = 0u;
      v79 = 1;
      v80 = 256;
      v81 = 0;
      v39 = v37[3];
      LOBYTE(v73) = 0;
      v65 = &v72;
      v66 = v37 + 3;
      v67 = 0;
      v40 = v37[4] - v39;
      if (v40)
      {
        v41 = sub_CAB108(&v72, v40 >> 3);
        BYTE14(v78) = 1;
        v42 = v76;
        if (v41)
        {
          if (v79 <= 3)
          {
            v79 = 4;
          }

          v43 = v76;
          v44 = -v76 & 3;
          if ((-v76 & 3) != 0)
          {
            v45 = *(&v77 + 1);
            v46 = v76;
            if (*(&v77 + 1) - v78 < v44)
            {
              sub_C7BF74(&v72, v44);
              v45 = *(&v77 + 1);
              v46 = v76;
            }

            v47 = 0;
            *(&v77 + 1) = v45 - v44;
            v76 = v46 + v44;
            do
            {
              *(*(&v77 + 1) + v47++) = 0;
            }

            while (v44 != v47);
            v43 = v76;
          }

          sub_CA58F0(&v72, 4, v43 - v41 + 4, 0);
        }
      }

      else
      {
        v42 = 0;
        BYTE14(v78) = 1;
      }

      v48 = sub_C7C16C(&v72, v42);
      sub_C7C3D4(&v72, v48, 0, 0);
      v49 = v72;
      v50 = v73;
      if (v73 == 1)
      {
        v72 = 0;
        LOBYTE(v73) = 0;
      }

      v51 = v75;
      v52 = v77;
      v53 = v76;
      v75 = 0;
      v76 = 0;
      *&v78 = 0;
      v77 = 0uLL;
      v65 = v38;
      v66 = v49;
      LOBYTE(v67) = v50;
      v68 = v52;
      v69 = v51;
      v70 = *(&v52 + 1);
      v71 = v53;
      sub_CAF7AC(a2, &v65);
      if (v68)
      {
        if (!v66)
        {
          v85 = off_2672F70;
          operator delete[]();
        }

        (*(*v66 + 24))(v66);
      }

      if (v67 == 1 && v66)
      {
        (*(*v66 + 8))(v66);
      }

      sub_CA24C0(&v72);
    }
  }

  else
  {
    *a2 = 0uLL;
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 1065353216;
  }

  return sub_C4F39C(&v82);
}

void sub_CA1D28(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339C8);
  sub_C4F39C(v1 - 144);
  _Unwind_Resume(a1);
}

void sub_CA1D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_CA23C0(&a27);
  sub_CA1F48(&a21);
  sub_CA24C0(&a34);
  sub_CA1E18(a10);
  sub_C4F39C(v34 - 144);
  _Unwind_Resume(a1);
}

void sub_CA1DC4()
{
  v1 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v1;
    operator delete(v1);
  }

  operator delete();
}

uint64_t sub_CA1E18(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    if (v3[5])
    {
      v4 = v3[3];
      if (!v4)
      {
        operator delete[]();
      }

      (*(*v4 + 24))(v4);
    }

    if (*(v3 + 32) == 1)
    {
      v5 = v3[3];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void *sub_CA1F48(void *a1)
{
  v2 = a1 + 2;
  if (a1[2])
  {
    v3 = *a1;
    if (!*a1)
    {
      operator delete[]();
    }

    (*(*v3 + 24))(v3);
  }

  if (*(a1 + 8) == 1 && *a1)
  {
    (*(**a1 + 8))(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *v2 = 0u;
  v2[1] = 0u;
  return a1;
}

void *sub_CA2048@<X0>(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 4216);
  v7 = *(a1 + 4224);
  *(a1 + 4216) = 0u;
  v8 = *(a1 + 4240);
  *(a1 + 4232) = 0u;
  v9 = *(a1 + 4264);
  *(a1 + 4264) = 0u;
  *(a1 + 4248) = 0u;
  *(a1 + 4280) = 0;
  v10 = *(a1 + 4288);
  *(a1 + 4288) = 0;
  *(a1 + 4304) = 0;
  *(a1 + 4296) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (v9)
  {
    operator delete(v9);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v6)
  {
    if (v7 != v6)
    {
      v11 = v7 - 1;
      do
      {
        v13 = *v11;
        *v11 = 0;
        if (v13)
        {
          sub_C4D588(v11, v13);
        }
      }

      while (v11-- != v6);
    }

    operator delete(v6);
  }

  if (*(a1 + 4336))
  {
    v14 = *(a1 + 4328);
    if (v14)
    {
      do
      {
        v15 = *v14;
        operator delete(v14);
        v14 = v15;
      }

      while (v15);
    }

    *(a1 + 4328) = 0;
    v16 = *(a1 + 4320);
    if (v16)
    {
      bzero(*(a1 + 4312), 8 * v16);
    }

    *(a1 + 4336) = 0;
  }

  if (*(a1 + 4376))
  {
    v17 = *(a1 + 4368);
    if (v17)
    {
      do
      {
        v18 = *v17;
        operator delete(v17);
        v17 = v18;
      }

      while (v18);
    }

    *(a1 + 4368) = 0;
    v19 = *(a1 + 4360);
    if (v19)
    {
      bzero(*(a1 + 4352), 8 * v19);
    }

    *(a1 + 4376) = 0;
  }

  if (*(a1 + 4424))
  {
    v20 = *(a1 + 4416);
    if (v20)
    {
      do
      {
        v23 = *v20;
        v24 = v20[2];
        if (v24)
        {
          operator delete(v24);
        }

        operator delete(v20);
        v20 = v23;
      }

      while (v23);
    }

    *(a1 + 4416) = 0;
    v21 = *(a1 + 4408);
    if (v21)
    {
      bzero(*(a1 + 4400), 8 * v21);
    }

    *(a1 + 4424) = 0;
  }

  if (*a2 == a2[1])
  {

    return sub_CA3B5C(a1, a3);
  }

  else
  {
    LODWORD(v41[0]) = (*a2)[1];
    *(a1 + 4392) = sub_CA3C50(a1, v41);
    v22 = *a2;
    while (1)
    {
      v25 = a2[1];
      if (v22 == v25)
      {
        break;
      }

      v26 = v22;
      v28 = *v22;
      v27 = v22[1];
      do
      {
        if (v22[1] != v27)
        {
          break;
        }

        if (*v22 != v28)
        {
          break;
        }

        v22 += 8;
      }

      while (v22 != v25);
      v41[0] = v26;
      v41[1] = v22;
      sub_CA3DE8(a1, v41);
      if (v22 == a2[1])
      {
        break;
      }

      if (*(a1 + 4424))
      {
        v29 = *(a1 + 4416);
        if (v29)
        {
          do
          {
            v37 = *v29;
            v38 = v29[2];
            if (v38)
            {
              operator delete(v38);
            }

            operator delete(v29);
            v29 = v37;
          }

          while (v37);
        }

        *(a1 + 4416) = 0;
        v30 = *(a1 + 4408);
        if (v30)
        {
          bzero(*(a1 + 4400), 8 * v30);
        }

        *(a1 + 4424) = 0;
      }

      if (v22[1] != *(v26 + 1))
      {
        if (*(a1 + 4336))
        {
          v31 = *(a1 + 4328);
          if (v31)
          {
            do
            {
              v32 = *v31;
              operator delete(v31);
              v31 = v32;
            }

            while (v32);
          }

          *(a1 + 4328) = 0;
          v33 = *(a1 + 4320);
          if (v33)
          {
            bzero(*(a1 + 4312), 8 * v33);
          }

          *(a1 + 4336) = 0;
        }

        if (*(a1 + 4376))
        {
          v34 = *(a1 + 4368);
          if (v34)
          {
            do
            {
              v35 = *v34;
              operator delete(v34);
              v34 = v35;
            }

            while (v35);
          }

          *(a1 + 4368) = 0;
          v36 = *(a1 + 4360);
          if (v36)
          {
            bzero(*(a1 + 4352), 8 * v36);
          }

          *(a1 + 4376) = 0;
        }

        v40 = v22[1];
        *(a1 + 4392) = sub_CA3C50(a1, &v40);
      }
    }

    return sub_CA3B5C(a1, a3);
  }
}

uint64_t sub_CA23C0(uint64_t a1)
{
  v2 = (a1 + 24);
  if (*(a1 + 24))
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      operator delete[]();
    }

    (*(*v3 + 24))(v3);
  }

  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *v2 = 0u;
  v2[1] = 0u;
  return a1;
}

void *sub_CA24C0(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    sub_252664(a1[12], *(v2 + 8));
    operator delete();
  }

  if (a1[6])
  {
    v3 = *a1;
    if (!*a1)
    {
      operator delete[]();
    }

    (*(*v3 + 24))(v3);
  }

  a1[6] = 0;
  if (*(a1 + 8) == 1 && *a1)
  {
    (*(**a1 + 8))(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_CA25E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 11688);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 == v7)
  {
    v11 = 0;
  }

  else if (a2)
  {
    v9 = *(v6 + 424);
    i = *(v6 + 432);
    if (v9 != i)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v6 += 456;
      if (v6 == v7)
      {
        break;
      }

      v9 = *(v6 + 424);
      for (i = *(v6 + 432); v9 != i; v9 += 104)
      {
LABEL_6:
        v3 = v3 & 0xFFFFFFFF00000000 | *(v9 + 8);
        sub_CAB408(a1, *v9, v3, a3);
      }
    }

    v11 = a3[1];
  }

  else
  {
    v11 = 0;
    v28 = *(v5 + 16);
    do
    {
      v12 = *(v6 + 424);
      v13 = *(v6 + 432);
      while (v12 != v13)
      {
        v15 = a3[2];
        if (v11 < v15)
        {
          v14 = *v12;
          *(v11 + 8) = *(v12 + 2);
          *v11 = v14;
          v11 += 12;
        }

        else
        {
          v16 = *a3;
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 2);
          v18 = v17 + 1;
          if (v17 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 2);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0xAAAAAAAAAAAAAAALL)
          {
            v20 = 0x1555555555555555;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            if (v20 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v21 = v11;
          v22 = 4 * ((v11 - *a3) >> 2);
          v23 = *v12;
          *(v22 + 8) = *(v12 + 2);
          *v22 = v23;
          v11 = 12 * v17 + 12;
          v24 = 12 * v17 - (v21 - v16);
          memcpy((v22 - (v21 - v16)), v16, v21 - v16);
          *a3 = v24;
          a3[1] = v11;
          a3[2] = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        a3[1] = v11;
        v12 += 13;
      }

      v6 += 456;
    }

    while (v6 != v28);
  }

  v25 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 2));
  if (v11 == *a3)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  sub_CAC444(*a3, v11, &v29, v26, 1);
  return sub_CAC2F0(a3);
}

void sub_CA2834(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_CA2860(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v7 = a2;
  if (a2)
  {
    v8 = HIDWORD(a2);
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  v9 = v6 == 0xFFFFFFFF || a2 == 0;
  v10 = a2 << 32;
  if (v9)
  {
    v10 = 0;
  }

  sub_A7905C(v33, (a1 + 32), v10 | v8, 1, 1, 0);
  v11 = v36;
  if (v36 < v37)
  {
    if (!v7)
    {
      LODWORD(v6) = -1;
    }

    if (v9)
    {
      v4 = 0;
    }

    while (1)
    {
      v12 = *(v11 + 10);
      sub_A79708(&v28, a1 + 32, __ROR8__(*v11, 32), *(v11 + 8), 0, 0);
      v14 = v30;
      v13 = v31;
      while (v13 >= v14 && v13 < v32)
      {
        v16 = __ROR8__(*v13, 32);
        if (v6 == v16 && v4 == HIDWORD(v16))
        {
          sub_CA3318(a1, &v28, a3);
          v14 = v30;
          v13 = v31;
          if (((v31 - v30) >> 4) == v12)
          {
            break;
          }
        }

        v13 += 2;
        v31 = v13;
        if (*(v28 + 16) == 1 && (v29 & 1) == 0 && v13 >= v14 && v13 < v32)
        {
          do
          {
            v18 = __ROR8__(*v13, 32);
            if (HIDWORD(v18) == 1 && (v18 + 3) < 2)
            {
              break;
            }

            v20 = sub_2D5204(**(v28 + 4120));
            v14 = v30;
            v13 = v31;
            if (v20)
            {
              break;
            }

            v13 = v31 + 2;
            v31 = v13;
          }

          while (v13 >= v30 && v13 < v32);
        }
      }

      v22 = v37;
      v11 = v36 + 16;
      v36 = v11;
      if (v11 == v37)
      {
        break;
      }

LABEL_49:
      while (v11 < v22)
      {
        v24 = sub_A795E8(v33);
        v11 = v36;
        v22 = v37;
        if (!v24)
        {
          break;
        }

        v11 = v36 + 16;
        v36 = v11;
        if (v11 == v37)
        {
          v25 = i;
          while (1)
          {
            v25 += 2;
            i = v25;
            if (v25 >= v35)
            {
              goto LABEL_15;
            }

            v26 = *v25;
            v27 = v25[1];
            if (*v25 != v27)
            {
              v36 = *v25;
              v37 = v27;
              v22 = v27;
              v11 = v26;
              goto LABEL_49;
            }
          }
        }
      }

LABEL_15:
      if (v11 >= v22)
      {
        return;
      }
    }

    v23 = i + 2;
    for (i = v23; v23 < v35; i = v23)
    {
      v11 = *v23;
      v22 = v23[1];
      if (*v23 != v22)
      {
        v36 = *v23;
        v37 = v22;
        goto LABEL_49;
      }

      v23 += 2;
    }
  }
}

void sub_CA2AC4(uint64_t a1, unint64_t a2)
{
  sub_95D75C(a1 + 4232, a2, 1, 0x80000000, 2147483646, &v32);
  v19 = v33;
  v20 = v32;
  if (v32 == v33)
  {
    v16 = v32;
    if (!v32)
    {
      return;
    }

    goto LABEL_44;
  }

  if (a2)
  {
    v3 = HIDWORD(a2);
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  v4 = HIDWORD(a2) == 0xFFFFFFFF || a2 == 0;
  v5 = a2 << 32;
  if (v4)
  {
    v5 = 0;
  }

  v17 = v5;
  v18 = v3;
  do
  {
    sub_C7FB60(v27, (a1 + 32), v17 | v18, 1, 0);
    while (v30 < v31)
    {
      sub_A79708(&v22, a1 + 32, __ROR8__(*v30, 32), 0, 0, 0);
      v6 = *(v30 + 8);
      v7 = v24;
      v25 = v24;
      if (v24 < v26)
      {
        v8 = v24;
        while (1)
        {
          v9 = *(v8 + 14);
          if (v9 >= v6)
          {
            break;
          }

          v8 += 16;
          v25 = v8;
          if (*(v22 + 16) == 1 && (v23 & 1) == 0 && v8 >= v7 && v8 < v26)
          {
            do
            {
              v10 = __ROR8__(*v8, 32);
              if (HIDWORD(v10) == 1 && (v10 + 3) < 2)
              {
                break;
              }

              v12 = sub_2D5204(**(v22 + 4120));
              v7 = v24;
              v8 = v25;
              if (v12)
              {
                break;
              }

              v8 = v25 + 16;
              v25 = v8;
            }

            while (v8 >= v24 && v8 < v26);
          }

          if (v8 < v7 || v8 >= v26)
          {
            goto LABEL_13;
          }
        }

        if (v9 <= v6)
        {
          operator new();
        }
      }

LABEL_13:
      v30 += 12;
      if (v30 == v31)
      {
        v14 = v28;
        while (1)
        {
          v14 += 2;
          v28 = v14;
          if (v14 >= v29)
          {
            break;
          }

          v15 = v14[1];
          if (*v14 != v15)
          {
            v30 = *v14;
            v31 = v15;
            break;
          }
        }
      }

      sub_C7FDC4(v27);
    }

    v20 += 28;
  }

  while (v20 != v19);
  v16 = v32;
  if (v32)
  {
LABEL_44:
    v33 = v16;
    operator delete(v16);
  }
}

void sub_CA3294(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (!v3)
  {
    _Unwind_Resume(exception_object);
  }

  *(v1 - 104) = v3;
  operator delete(v3);
  _Unwind_Resume(exception_object);
}

void sub_CA3318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32) - v5;
  v79 = v6 >> 4;
  v7 = (*(a2 + 40) - v5) >> 4;
  v8 = *(a2 + 88);
  v9 = sub_A57920((a1 + 4168), v8);
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 < 5)
  {
    v12 = 0;
    goto LABEL_6;
  }

  if (!v10[2])
  {
    v12 = 0;
    if (v11 >= 9)
    {
      goto LABEL_98;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v12 = v9 + v10[2] + *(v9 + v10[2]);
  if (v11 < 9)
  {
    goto LABEL_6;
  }

LABEL_98:
  v72 = v10[4];
  if (!v72)
  {
    goto LABEL_6;
  }

  v13 = (v9 + v72 + *(v9 + v72));
LABEL_7:
  v14 = *&v12[8 * *(sub_A571D4(v13, v79) + 14) + 4];
  v77 = a3;
  if (v79)
  {
    v15 = sub_A57920((a1 + 4168), v8);
    v16 = (v15 - *v15);
    if (*v16 >= 9u && (v17 = v16[4]) != 0)
    {
      v18 = (v15 + v17 + *(v15 + v17));
    }

    else
    {
      v18 = 0;
    }

    v19 = __ROR8__(*sub_A571D4(v18, v79 - 1), 32);
    v20 = HIDWORD(v19);
    v21 = v19 << 32;
  }

  else
  {
    v20 = 0;
    v21 = 0xFFFFFFFF00000000;
  }

  v22 = __ROR8__(v14, 32);
  v23 = __ROR8__(**(a2 + 32), 32);
  if (v79 + 1 >= v7)
  {
    v28 = 0xFFFFFFFF00000000;
  }

  else
  {
    v24 = sub_A57920((a1 + 4168), v8);
    v25 = (v24 - *v24);
    if (*v25 >= 9u && (v26 = v25[4]) != 0)
    {
      v27 = (v24 + v26 + *(v24 + v26));
    }

    else
    {
      v27 = 0;
    }

    v28 = *sub_A571D4(v27, v79 + 1);
  }

  v87 = v20 | v21;
  v88 = __ROR8__(v23, 32);
  v86[0] = v88;
  v86[1] = v28;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  sub_95DCF4(a1 + 4232, v88, 1, 0x80000000, 2147483646, 1, __ROR8__(v22, 32), &v87, v86, &v89);
  v29 = v89;
  v84 = v90;
  if (v89 != v90)
  {
    v85 = (v6 >> 4);
    v30 = a1;
    v31 = v6 >> 4;
    while (1)
    {
      if ((*(v29 + 25) & 1) == 0 && (*(v29 + 24) != 1 || (*(*(a2 + 32) + 15) & 2) == 0) && (*(v29 + 23) != 1 || (*(*(a2 + 32) + 15) & 1) == 0))
      {
        goto LABEL_25;
      }

      v33 = *(v29 + 8);
      if (*(a2 + 96) == 1)
      {
        v34 = sub_CB231C(v30 + 32, a2, v85, v33);
        v36 = v35;
      }

      else
      {
        *(a2 + 32) = *(a2 + 24) + 16 * v85;
        v34 = sub_A7A710(a2, v33, 1) ? (-1431655765 * ((*(a2 + 64) - *(a2 + 56)) >> 2)) | 0xFFFFFFFF00000000 : -1;
        v36 = -1;
      }

      v37 = *(a2 + 88);
      v38 = !HIDWORD(v37) || v37 == 0xFFFFFFFFLL;
      v39 = v38 || v34 == -1;
      if (v39 || v31 == -1)
      {
        goto LABEL_25;
      }

      v80 = *(v29 + 24);
      v81 = *(v29 + 23);
      v82 = *(v29 + 25);
      v83 = *(v29 + 26);
      v41 = *(v29 + 12);
      if (*(a2 + 96) == 1)
      {
        v42 = sub_CB291C(v30 + 32, a2, v85, v41);
        v44 = v43;
        v45 = *(a2 + 88);
        if (!HIDWORD(v45))
        {
          goto LABEL_25;
        }
      }

      else
      {
        *(a2 + 32) = *(a2 + 24) + 16 * v85;
        if (sub_A8552C(a2, v41, 1))
        {
          v42 = (1 - 1431655765 * ((*(a2 + 64) - *(a2 + 56)) >> 2)) | 0xFFFFFFFF00000000;
          v44 = -1;
          v45 = *(a2 + 88);
          if (!HIDWORD(v45))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v42 = -1;
          v44 = -1;
          v45 = *(a2 + 88);
          if (!HIDWORD(v45))
          {
            goto LABEL_25;
          }
        }
      }

      if (v45 == 0xFFFFFFFFLL || v42 == -1)
      {
        goto LABEL_25;
      }

      v46 = *(v29 + 24);
      v47 = *(v29 + 23);
      v48 = *(v29 + 25);
      v49 = *(v29 + 26);
      v50 = v42 >= v34;
      if (v42 != v34)
      {
        goto LABEL_62;
      }

      v51 = HIDWORD(v34);
      v52 = HIDWORD(v42);
      if (HIDWORD(v42) != HIDWORD(v34))
      {
        if (v52 != 0xFFFFFFFF && v52 < v51)
        {
          goto LABEL_25;
        }

        goto LABEL_64;
      }

      if (v44 == v36)
      {
        goto LABEL_25;
      }

      if (v51 != 0xFFFFFFFF)
      {
        break;
      }

LABEL_64:
      v53 = v77;
      v54 = *(v77 + 8);
      v55 = *(v77 + 16);
      if (v54 >= v55)
      {
        v58 = *v77;
        v59 = v54 - *v77;
        v60 = v59 >> 5;
        v61 = (v59 >> 5) + 1;
        if (v61 >> 59)
        {
          goto LABEL_100;
        }

        v62 = v55 - v58;
        if (v62 >> 4 > v61)
        {
          v61 = v62 >> 4;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFE0)
        {
          v63 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v61;
        }

        v73 = *(v29 + 26);
        v74 = *(v29 + 24);
        v75 = *(v29 + 23);
        v76 = *(v29 + 25);
        if (v63)
        {
          if (!(v63 >> 59))
          {
            operator new();
          }

LABEL_101:
          sub_1808();
        }

        v53 = v77;
        v64 = 32 * v60;
        *v64 = v37;
        *(v64 + 8) = v34;
        *(v64 + 16) = v36;
        *(v64 + 20) = 1;
        *(v64 + 24) = v79;
        *(v64 + 28) = v80;
        v56 = 32 * v60 + 32;
        *(v64 + 29) = v81;
        *(v64 + 30) = v82;
        *(v64 + 31) = v83;
        memcpy(0, v58, v59);
        *v77 = 0;
        *(v77 + 8) = v56;
        *(v77 + 16) = 0;
        if (v58)
        {
          operator delete(v58);
        }

        v49 = v73;
        v46 = v74;
        v47 = v75;
        v48 = v76;
        *(v77 + 8) = v56;
        v57 = *(v77 + 16);
        if (v56 >= v57)
        {
LABEL_82:
          v65 = *v53;
          v66 = v56 - *v53;
          v67 = v66 >> 5;
          v68 = (v66 >> 5) + 1;
          if (v68 >> 59)
          {
LABEL_100:
            sub_1794();
          }

          v69 = v57 - v65;
          if (v69 >> 4 > v68)
          {
            v68 = v69 >> 4;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFE0)
          {
            v70 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = v68;
          }

          if (v70)
          {
            if (!(v70 >> 59))
            {
              operator new();
            }

            goto LABEL_101;
          }

          v53 = v77;
          v71 = 32 * v67;
          *v71 = v45;
          *(v71 + 8) = v42;
          *(v71 + 16) = v44;
          *(v71 + 20) = 0;
          *(v71 + 24) = v79;
          *(v71 + 28) = v46;
          v32 = 32 * v67 + 32;
          *(v71 + 29) = v47;
          *(v71 + 30) = v48;
          *(v71 + 31) = v49;
          memcpy(0, v65, v66);
          *v77 = 0;
          *(v77 + 8) = v32;
          *(v77 + 16) = 0;
          if (v65)
          {
            operator delete(v65);
          }

          goto LABEL_24;
        }
      }

      else
      {
        *v54 = v37;
        *(v54 + 8) = v34;
        *(v54 + 16) = v36;
        *(v54 + 20) = 1;
        *(v54 + 24) = v79;
        *(v54 + 28) = v80;
        *(v54 + 29) = v81;
        *(v54 + 30) = v82;
        v56 = v54 + 32;
        *(v54 + 31) = v83;
        *(v77 + 8) = v54 + 32;
        v57 = *(v77 + 16);
        if (v56 >= v57)
        {
          goto LABEL_82;
        }
      }

      *v56 = v45;
      *(v56 + 8) = v42;
      *(v56 + 16) = v44;
      *(v56 + 20) = 0;
      *(v56 + 24) = v79;
      *(v56 + 28) = v46;
      *(v56 + 29) = v47;
      *(v56 + 30) = v48;
      v32 = v56 + 32;
      *(v56 + 31) = v49;
LABEL_24:
      *(v53 + 8) = v32;
      v30 = a1;
      v31 = v79;
LABEL_25:
      v29 += 28;
      if (v29 == v84)
      {
        v29 = v89;
        goto LABEL_94;
      }
    }

    v50 = v44 >= v36;
LABEL_62:
    if (!v50)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_94:
  if (v29)
  {
    v90 = v29;
    operator delete(v29);
  }
}

void sub_CA3A08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_CA3A30(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *(a1 + 8);
  *&v4 = *a1;
  *(&v4 + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v3, 0, sizeof(v3));
  sub_A30418((a1 + 16), &v4, 1, v3);
}

void sub_CA3B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3B889C(&a9);
  sub_1F1A8(v10 - 32);
  sub_1F1A8(v9);
  _Unwind_Resume(a1);
}

void *sub_CA3B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  v10 = 0;
  v11 = xmmword_22AC080;
  v12 = 0;
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 1;
  v17 = 256;
  v18 = 0;
  v3 = sub_CA4114(&v9, (a1 + 4216));
  sub_C7C3D4(&v9, v3, 0, 0);
  v4 = v10;
  v5 = v12;
  v6 = v14;
  v7 = v13;
  *a2 = v9;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = *(&v6 + 1);
  *(a2 + 40) = v7;
  if (v4 == 1)
  {
    v9 = 0;
    v10 = 0;
  }

  v12 = 0;
  v13 = 0;
  *&v15 = 0;
  v14 = 0uLL;
  return sub_CA24C0(&v9);
}

void sub_CA3C3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CA24C0(va);
  _Unwind_Resume(a1);
}

char *sub_CA3C50(uint64_t *a1, unsigned int *a2)
{
  v3 = sub_2D52A4(*a1, 9, *a2, 0);
  if (v4)
  {
    v5 = (v3 + *v3);
    v6 = (v5 - *v5);
    if (*v6 < 7u)
    {
LABEL_7:
      exception = __cxa_allocate_exception(0x40uLL);
      std::to_string(&v13, *a2);
      sub_23E08("Failed to acquire stop pattern quad data at quad id ", &v13, &v14);
      sub_30F54(" in transit routing layer", &v14, &v15);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v15;
      }

      else
      {
        v10 = v15.__r_.__value_.__r.__words[0];
      }

      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v15.__r_.__value_.__l.__size_;
      }

      v12 = sub_2D390(exception, v10, size);
    }
  }

  else
  {
    v5 = 0;
    v6 = (&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 7u)
    {
      goto LABEL_7;
    }
  }

  v7 = v6[3];
  if (!v7)
  {
    goto LABEL_7;
  }

  return v5 + v7 + *(v5 + v7);
}

void sub_CA3D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void sub_CA3DE8(void *a1, uint64_t **a2)
{
  v4 = **a2;
  v5 = a1[549];
  v6 = (v5 - *v5);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = v5 + v7 + *(v5 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[4 * **a2 + 4 + *&v8[4 * **a2 + 4]];
  v10 = *v9;
  v11 = &v9[*&v9[-v10 + 6]];
  v12 = *&v11[*v11];
  v13 = &v9[*&v9[-v10 + 8]];
  LODWORD(v13) = *&v13[*v13];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (v13)
  {
    operator new();
  }

  v14 = &v9[-v10];
  if (*v14 >= 0x13u && (v15 = *(v14 + 9)) != 0 && (*&v9[v15] & 1) != 0)
  {
    v16 = 0;
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = 0xFFFFFFFF00000000;
    v16 = -1;
    v38 = -1;
  }

  v36[0] = v12;
  v36[1] = v16;
  v36[2] = v16;
  __p = 0;
  v34 = 0;
  v35 = 0;
  sub_CA5A28(a1, v4, &v37, *a2 + 1, &v39, &__p);
  v18 = *a2;
  v17 = a2[1];
  if (*a2 != v17)
  {
    v19 = v18 + 4;
    do
    {
      v20 = *(v18 + 28);
      v21 = v39;
      v22 = (v39 + 16 * *(v18 + 6));
      v23 = *v22;
      if (*(v18 + 5) == 1)
      {
        *v22 = v23 + v20;
        v24 = &v21[16 * *(v18 + 6)];
        *(v24 + 1) += *(v18 + 29);
        v25 = &v21[16 * *(v18 + 6)];
        *(v25 + 2) += *(v18 + 30);
        v26 = &v21[16 * *(v18 + 6)];
        v27 = *(v26 + 3) + *(v18 + 31);
      }

      else
      {
        *v22 = v23 - v20;
        v28 = &v21[16 * *(v18 + 6)];
        *(v28 + 1) -= *(v18 + 29);
        v29 = &v21[16 * *(v18 + 6)];
        *(v29 + 2) -= *(v18 + 30);
        v26 = &v21[16 * *(v18 + 6)];
        v27 = *(v26 + 3) - *(v18 + 31);
      }

      *(v26 + 3) = v27;
      if (v17 == v19)
      {
        v30 = v36;
      }

      else
      {
        v30 = v19 + 1;
      }

      sub_CA5A28(a1, v4, v18 + 1, v30, &v39, &__p);
      v18 += 4;
      v17 = a2[1];
      v19 += 4;
    }

    while (v18 != v17);
  }

  v31 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v34 - __p) >> 2));
  if (v34 == __p)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  sub_CA7BCC(__p, v34, &v42, v32, 1);
  sub_CA5CBC(a1, v4, &__p);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_CA40D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v19 = a17;
    if (!a17)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v19 = a17;
    if (!a17)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  _Unwind_Resume(exception_object);
}

uint64_t sub_CA4114(uint64_t a1, void *a2)
{
  v4 = a2[1] - *a2;
  if (v4)
  {
    v5 = sub_CA4504(a1, v4 >> 3);
    v7 = a2[3];
    v6 = a2[4];
    v8 = v6 - v7;
    if (v6 == v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    v7 = a2[3];
    v32 = a2[4];
    v8 = v32 - v7;
    if (v32 == v7)
    {
LABEL_3:
      v10 = a2[6];
      v9 = a2[7];
      v11 = v9 - v10;
      if (v9 != v10)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  sub_CA55DC(a1, v8 >> 2, 4uLL);
  v33 = *(a1 + 56);
  if (v33 - *(a1 + 64) < v8)
  {
    sub_C7BF74(a1, v8);
    v33 = *(a1 + 56);
  }

  *(a1 + 56) = v33 - v8;
  *(a1 + 40) += v8;
  memcpy((v33 - v8), v7, v8);
  *(a1 + 78) = 0;
  if (*(a1 + 80) <= 3uLL)
  {
    *(a1 + 80) = 4;
  }

  v34 = *(a1 + 40);
  v35 = -v34 & 3;
  if ((-v34 & 3) != 0)
  {
    v36 = *(a1 + 56);
    if (v36 - *(a1 + 64) < v35)
    {
      sub_C7BF74(a1, v35);
      v36 = *(a1 + 56);
      v34 = *(a1 + 40);
    }

    v37 = 0;
    *(a1 + 56) = v36 - v35;
    *(a1 + 40) = v34 + v35;
    do
    {
      *(*(a1 + 56) + v37++) = 0;
    }

    while (v35 != v37);
  }

  v38 = *(a1 + 56);
  if ((v38 - *(a1 + 64)) <= 3)
  {
    sub_C7BF74(a1, 4uLL);
    v38 = *(a1 + 56);
  }

  *(a1 + 40) += 4;
  *(v38 - 4) = v8 >> 3;
  *(a1 + 56) = v38 - 4;
  LODWORD(v8) = *(a1 + 40);
  v10 = a2[6];
  v39 = a2[7];
  v11 = v39 - v10;
  if (v39 != v10)
  {
LABEL_4:
    sub_CA55DC(a1, v11 >> 2, 4uLL);
    v12 = *(a1 + 56);
    if (v12 - *(a1 + 64) < v11)
    {
      sub_C7BF74(a1, v11);
      v12 = *(a1 + 56);
    }

    *(a1 + 56) = v12 - v11;
    *(a1 + 40) += v11;
    memcpy((v12 - v11), v10, v11);
    *(a1 + 78) = 0;
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 2);
    v14 = *(a1 + 40);
    v15 = -v14 & 3;
    if ((-v14 & 3) != 0)
    {
      v16 = *(a1 + 56);
      if (v16 - *(a1 + 64) < v15)
      {
        sub_C7BF74(a1, v15);
        v16 = *(a1 + 56);
        v14 = *(a1 + 40);
      }

      v17 = 0;
      *(a1 + 56) = v16 - v15;
      *(a1 + 40) = v14 + v15;
      do
      {
        *(*(a1 + 56) + v17++) = 0;
      }

      while (v15 != v17);
    }

    v18 = *(a1 + 56);
    if ((v18 - *(a1 + 64)) <= 3)
    {
      sub_C7BF74(a1, 4uLL);
      v18 = *(a1 + 56);
    }

    *(a1 + 40) += 4;
    *(v18 - 4) = v13;
    *(a1 + 56) = v18 - 4;
    v19 = *(a1 + 40);
    v22 = a2 + 9;
    v21 = a2[9];
    v20 = v22[1];
    v23 = v20 - v21;
    if (v20 != v21)
    {
      goto LABEL_16;
    }

LABEL_42:
    v31 = 0;
    return sub_CA4804(a1, v5, v8, v19, v31);
  }

LABEL_41:
  v19 = 0;
  v41 = a2 + 9;
  v21 = a2[9];
  v40 = v41[1];
  v23 = v40 - v21;
  if (v40 == v21)
  {
    goto LABEL_42;
  }

LABEL_16:
  sub_CA55DC(a1, v23 >> 2, 4uLL);
  v24 = *(a1 + 56);
  if (v24 - *(a1 + 64) < v23)
  {
    sub_C7BF74(a1, v23);
    v24 = *(a1 + 56);
  }

  *(a1 + 56) = v24 - v23;
  *(a1 + 40) += v23;
  memcpy((v24 - v23), v21, v23);
  *(a1 + 78) = 0;
  if (*(a1 + 80) <= 3uLL)
  {
    *(a1 + 80) = 4;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 2);
  v26 = *(a1 + 40);
  v27 = -v26 & 3;
  if ((-v26 & 3) != 0)
  {
    v28 = *(a1 + 56);
    if (v28 - *(a1 + 64) < v27)
    {
      sub_C7BF74(a1, v27);
      v28 = *(a1 + 56);
      v26 = *(a1 + 40);
    }

    v29 = 0;
    *(a1 + 56) = v28 - v27;
    *(a1 + 40) = v26 + v27;
    do
    {
      *(*(a1 + 56) + v29++) = 0;
    }

    while (v27 != v29);
  }

  v30 = *(a1 + 56);
  if ((v30 - *(a1 + 64)) <= 3)
  {
    sub_C7BF74(a1, 4uLL);
    v30 = *(a1 + 56);
  }

  *(a1 + 40) += 4;
  *(v30 - 4) = v25;
  *(a1 + 56) = v30 - 4;
  v31 = *(a1 + 40);
  return sub_CA4804(a1, v5, v8, v19, v31);
}

uint64_t sub_CA4504(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  sub_CA55DC(a1, 0, 4uLL);
  *(a1 + 78) = 0;
  if (*(a1 + 80) <= 3uLL)
  {
    *(a1 + 80) = 4;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = -v3 & 3;
  if ((-v3 & 3) != 0)
  {
    if (v4 - *(a1 + 64) < v5)
    {
      sub_C7BF74(a1, v5);
      v4 = *(a1 + 56);
      v3 = *(a1 + 40);
    }

    v6 = 0;
    *(a1 + 56) = v4 - v5;
    *(a1 + 40) = v3 + v5;
    do
    {
      *(*(a1 + 56) + v6++) = 0;
    }

    while (v5 != v6);
    v4 = *(a1 + 56);
  }

  if ((v4 - *(a1 + 64)) <= 3)
  {
    sub_C7BF74(a1, 4uLL);
    v4 = *(a1 + 56);
  }

  *(a1 + 40) += 4;
  *(v4 - 4) = 0;
  *(a1 + 56) = v4 - 4;
  return *(a1 + 40);
}

void sub_CA47E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CA4804(uint64_t a1, int a2, int a3, int a4, int a5)
{
  *(a1 + 78) = 1;
  v9 = *(a1 + 40);
  if (a5)
  {
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v10 = v9;
    v11 = -v9 & 3;
    if ((-v9 & 3) != 0)
    {
      v12 = *(a1 + 56);
      v13 = v9;
      if (v12 - *(a1 + 64) < v11)
      {
        v14 = a5;
        sub_C7BF74(a1, v11);
        a5 = v14;
        v12 = *(a1 + 56);
        v13 = *(a1 + 40);
      }

      v15 = 0;
      *(a1 + 56) = v12 - v11;
      *(a1 + 40) = v13 + v11;
      do
      {
        *(*(a1 + 56) + v15++) = 0;
      }

      while (v11 != v15);
      v10 = *(a1 + 40);
    }

    sub_CA58F0(a1, 10, v10 - a5 + 4, 0);
  }

  if (a4)
  {
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v16 = *(a1 + 40);
    v17 = -v16 & 3;
    if ((-v16 & 3) != 0)
    {
      v18 = *(a1 + 56);
      if (v18 - *(a1 + 64) < v17)
      {
        sub_C7BF74(a1, v17);
        v18 = *(a1 + 56);
        v16 = *(a1 + 40);
      }

      v19 = 0;
      *(a1 + 56) = v18 - v17;
      *(a1 + 40) = v16 + v17;
      do
      {
        *(*(a1 + 56) + v19++) = 0;
      }

      while (v17 != v19);
      v16 = *(a1 + 40);
    }

    sub_CA58F0(a1, 8, v16 - a4 + 4, 0);
  }

  if (a3)
  {
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v20 = *(a1 + 40);
    v21 = -v20 & 3;
    if ((-v20 & 3) != 0)
    {
      v22 = *(a1 + 56);
      if (v22 - *(a1 + 64) < v21)
      {
        sub_C7BF74(a1, v21);
        v22 = *(a1 + 56);
        v20 = *(a1 + 40);
      }

      v23 = 0;
      *(a1 + 56) = v22 - v21;
      *(a1 + 40) = v20 + v21;
      do
      {
        *(*(a1 + 56) + v23++) = 0;
      }

      while (v21 != v23);
      v20 = *(a1 + 40);
    }

    sub_CA58F0(a1, 6, v20 - a3 + 4, 0);
  }

  if (a2)
  {
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v24 = *(a1 + 40);
    v25 = -v24 & 3;
    if ((-v24 & 3) != 0)
    {
      v26 = *(a1 + 56);
      if (v26 - *(a1 + 64) < v25)
      {
        sub_C7BF74(a1, v25);
        v26 = *(a1 + 56);
        v24 = *(a1 + 40);
      }

      v27 = 0;
      *(a1 + 56) = v26 - v25;
      *(a1 + 40) = v24 + v25;
      do
      {
        *(*(a1 + 56) + v27++) = 0;
      }

      while (v25 != v27);
      v24 = *(a1 + 40);
    }

    sub_CA58F0(a1, 4, v24 - a2 + 4, 0);
  }

  return sub_C7C16C(a1, v9);
}

uint64_t sub_CA4AB8(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  if (v4 == *a2)
  {
    v47 = 0;
    v14 = *(a2 + 24);
    v27 = *(a2 + 32);
    v15 = v27 - v14;
    if (v27 != v14)
    {
      goto LABEL_14;
    }

LABEL_28:
    v23 = 0;
    v25 = *(a2 + 48);
    v28 = *(a2 + 56);
    v26 = v28 - v25;
    if (v28 == v25)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  sub_CA55DC(a1, v6 >> 2, 4uLL);
  v7 = *(a1 + 56);
  if (v7 - *(a1 + 64) < v6)
  {
    sub_C7BF74(a1, v6);
    v7 = *(a1 + 56);
  }

  *(a1 + 56) = v7 - v6;
  *(a1 + 40) += v6;
  memcpy((v7 - v6), v5, v6);
  *(a1 + 78) = 0;
  if (*(a1 + 80) <= 3uLL)
  {
    *(a1 + 80) = 4;
  }

  v8 = *(a1 + 40);
  v9 = -v8 & 3;
  if ((-v8 & 3) != 0)
  {
    v10 = *(a1 + 56);
    if (v10 - *(a1 + 64) < v9)
    {
      sub_C7BF74(a1, v9);
      v10 = *(a1 + 56);
      v8 = *(a1 + 40);
    }

    v11 = 0;
    *(a1 + 56) = v10 - v9;
    *(a1 + 40) = v8 + v9;
    do
    {
      *(*(a1 + 56) + v11++) = 0;
    }

    while (v9 != v11);
  }

  v12 = *(a1 + 56);
  if ((v12 - *(a1 + 64)) <= 3)
  {
    sub_C7BF74(a1, 4uLL);
    v12 = *(a1 + 56);
  }

  *(a1 + 40) += 4;
  *(v12 - 4) = v6 >> 3;
  *(a1 + 56) = v12 - 4;
  v47 = *(a1 + 40);
  v14 = *(a2 + 24);
  v13 = *(a2 + 32);
  v15 = v13 - v14;
  if (v13 == v14)
  {
    goto LABEL_28;
  }

LABEL_14:
  sub_CA55DC(a1, v15 >> 2, 4uLL);
  v16 = *(a1 + 56);
  if (v16 - *(a1 + 64) < v15)
  {
    sub_C7BF74(a1, v15);
    v16 = *(a1 + 56);
  }

  *(a1 + 56) = v16 - v15;
  *(a1 + 40) += v15;
  memcpy((v16 - v15), v14, v15);
  *(a1 + 78) = 0;
  if (*(a1 + 80) <= 3uLL)
  {
    *(a1 + 80) = 4;
  }

  v17 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 2);
  v18 = *(a1 + 40);
  v19 = -v18 & 3;
  if ((-v18 & 3) != 0)
  {
    v20 = *(a1 + 56);
    if (v20 - *(a1 + 64) < v19)
    {
      sub_C7BF74(a1, v19);
      v20 = *(a1 + 56);
      v18 = *(a1 + 40);
    }

    v21 = 0;
    *(a1 + 56) = v20 - v19;
    *(a1 + 40) = v18 + v19;
    do
    {
      *(*(a1 + 56) + v21++) = 0;
    }

    while (v19 != v21);
  }

  v22 = *(a1 + 56);
  if ((v22 - *(a1 + 64)) <= 3)
  {
    sub_C7BF74(a1, 4uLL);
    v22 = *(a1 + 56);
  }

  *(a1 + 40) += 4;
  *(v22 - 4) = v17;
  *(a1 + 56) = v22 - 4;
  v23 = *(a1 + 40);
  v25 = *(a2 + 48);
  v24 = *(a2 + 56);
  v26 = v24 - v25;
  if (v24 != v25)
  {
LABEL_29:
    sub_CA55DC(a1, v26 >> 2, 4uLL);
    v29 = *(a1 + 56);
    if (v29 - *(a1 + 64) < v26)
    {
      sub_C7BF74(a1, v26);
      v29 = *(a1 + 56);
    }

    *(a1 + 56) = v29 - v26;
    *(a1 + 40) += v26;
    memcpy((v29 - v26), v25, v26);
    *(a1 + 78) = 0;
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v30 = *(a1 + 40);
    v31 = -v30 & 3;
    if ((-v30 & 3) != 0)
    {
      v32 = *(a1 + 56);
      if (v32 - *(a1 + 64) < v31)
      {
        sub_C7BF74(a1, v31);
        v32 = *(a1 + 56);
        v30 = *(a1 + 40);
      }

      v33 = 0;
      *(a1 + 56) = v32 - v31;
      *(a1 + 40) = v30 + v31;
      do
      {
        *(*(a1 + 56) + v33++) = 0;
      }

      while (v31 != v33);
    }

    v34 = *(a1 + 56);
    if ((v34 - *(a1 + 64)) <= 3)
    {
      sub_C7BF74(a1, 4uLL);
      v34 = *(a1 + 56);
    }

    *(a1 + 40) += 4;
    *(v34 - 4) = v26 >> 4;
    *(a1 + 56) = v34 - 4;
    LODWORD(v26) = *(a1 + 40);
  }

LABEL_41:
  v35 = *(a2 + 72);
  v36 = *(a2 + 73);
  v37 = *(a2 + 74);
  v38 = *(a2 + 76);
  v39 = *(a2 + 80);
  v40 = *(a2 + 88);
  v41 = *(a2 + 96) - v40;
  if (!v41)
  {
    v42 = 0;
    v43 = *(a2 + 112);
    v44 = *(a2 + 120) - v43;
    if (!v44)
    {
      return sub_CA4EEC(a1, v47, v23, v26, v35, v36, v37, v38, v39, v46, v42, SHIDWORD(v42), v44, SHIDWORD(v44), *(a2 + 136));
    }

    goto LABEL_43;
  }

  v42 = sub_CA5704(a1, v40, v41 >> 2);
  v43 = *(a2 + 112);
  v44 = *(a2 + 120) - v43;
  if (v44)
  {
LABEL_43:
    v44 = sub_CA5704(a1, v43, v44 >> 2);
  }

  return sub_CA4EEC(a1, v47, v23, v26, v35, v36, v37, v38, v39, v46, v42, SHIDWORD(v42), v44, SHIDWORD(v44), *(a2 + 136));
}

uint64_t sub_CA4EEC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  *(a1 + 78) = 1;
  v62 = *(a1 + 40);
  if (a13)
  {
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v21 = v62;
    v22 = -v62 & 3;
    if ((-v62 & 3) != 0)
    {
      v23 = *(a1 + 56);
      v24 = v62;
      if (v23 - *(a1 + 64) < v22)
      {
        sub_C7BF74(a1, v22);
        v23 = *(a1 + 56);
        v24 = *(a1 + 40);
      }

      v25 = 0;
      *(a1 + 56) = v23 - v22;
      *(a1 + 40) = v24 + v22;
      do
      {
        *(*(a1 + 56) + v25++) = 0;
      }

      while (v22 != v25);
      v21 = *(a1 + 40);
    }

    sub_CA58F0(a1, 22, v21 - a13 + 4, 0);
  }

  if (a11)
  {
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v26 = *(a1 + 40);
    v27 = -v26 & 3;
    if ((-v26 & 3) != 0)
    {
      v28 = *(a1 + 56);
      if (v28 - *(a1 + 64) < v27)
      {
        sub_C7BF74(a1, v27);
        v28 = *(a1 + 56);
        v26 = *(a1 + 40);
      }

      v29 = 0;
      *(a1 + 56) = v28 - v27;
      *(a1 + 40) = v26 + v27;
      do
      {
        *(*(a1 + 56) + v29++) = 0;
      }

      while (v27 != v29);
      v26 = *(a1 + 40);
    }

    sub_CA58F0(a1, 20, v26 - a11 + 4, 0);
  }

  sub_CA58F0(a1, 18, a9, 0);
  sub_CA58F0(a1, 16, a8, 0);
  if (a4)
  {
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v30 = *(a1 + 40);
    v31 = -v30 & 3;
    if ((-v30 & 3) != 0)
    {
      v32 = *(a1 + 56);
      if (v32 - *(a1 + 64) < v31)
      {
        sub_C7BF74(a1, v31);
        v32 = *(a1 + 56);
        v30 = *(a1 + 40);
      }

      v33 = 0;
      *(a1 + 56) = v32 - v31;
      *(a1 + 40) = v30 + v31;
      do
      {
        *(*(a1 + 56) + v33++) = 0;
      }

      while (v31 != v33);
      v30 = *(a1 + 40);
    }

    sub_CA58F0(a1, 8, v30 - a4 + 4, 0);
  }

  if (a3)
  {
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v34 = *(a1 + 40);
    v35 = -v34 & 3;
    if ((-v34 & 3) != 0)
    {
      v36 = *(a1 + 56);
      if (v36 - *(a1 + 64) < v35)
      {
        sub_C7BF74(a1, v35);
        v36 = *(a1 + 56);
        v34 = *(a1 + 40);
      }

      v37 = 0;
      *(a1 + 56) = v36 - v35;
      *(a1 + 40) = v34 + v35;
      do
      {
        *(*(a1 + 56) + v37++) = 0;
      }

      while (v35 != v37);
      v34 = *(a1 + 40);
    }

    sub_CA58F0(a1, 6, v34 - a3 + 4, 0);
  }

  if (a2)
  {
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v38 = *(a1 + 40);
    v39 = -v38 & 3;
    if ((-v38 & 3) != 0)
    {
      v40 = *(a1 + 56);
      if (v40 - *(a1 + 64) < v39)
      {
        sub_C7BF74(a1, v39);
        v40 = *(a1 + 56);
        v38 = *(a1 + 40);
      }

      v41 = 0;
      *(a1 + 56) = v40 - v39;
      *(a1 + 40) = v38 + v39;
      do
      {
        *(*(a1 + 56) + v41++) = 0;
      }

      while (v39 != v41);
      v38 = *(a1 + 40);
    }

    sub_CA58F0(a1, 4, v38 - a2 + 4, 0);
  }

  if (a7 != 0x7FFF || *(a1 + 88) == 1)
  {
    if (*(a1 + 80) <= 1uLL)
    {
      *(a1 + 80) = 2;
    }

    v42 = *(a1 + 40);
    v43 = v42 & 1;
    if (v42)
    {
      v44 = *(a1 + 56);
      if (v44 - *(a1 + 64) < v43)
      {
        sub_C7BF74(a1, v42 & 1);
        v44 = *(a1 + 56);
        v42 = *(a1 + 40);
      }

      v45 = 0;
      *(a1 + 56) = v44 - v43;
      *(a1 + 40) = v42 + v43;
      do
      {
        *(*(a1 + 56) + v45++) = 0;
      }

      while (v43 != v45);
    }

    v47 = *(a1 + 56);
    v46 = *(a1 + 64);
    if ((v47 - v46) <= 1)
    {
      sub_C7BF74(a1, 2uLL);
      v47 = *(a1 + 56);
      v46 = *(a1 + 64);
    }

    *(v47 - 2) = a7;
    v48 = v47 - 2;
    *(a1 + 56) = v48;
    v49 = (*(a1 + 40) + 2);
    *(a1 + 40) = v49;
    if ((v48 - v46) <= 7)
    {
      sub_C7BF74(a1, 8uLL);
      v46 = *(a1 + 64);
    }

    *v46 = v49 | 0xE00000000;
    *(a1 + 64) += 8;
    ++*(a1 + 72);
    if (*(a1 + 76) <= 0xDu)
    {
      *(a1 + 76) = 14;
    }
  }

  if (a15 != 2 || *(a1 + 88) == 1)
  {
    if (*(a1 + 80))
    {
      v50 = *(a1 + 56);
      if (v50 != *(a1 + 64))
      {
LABEL_70:
        *(a1 + 56) = v50 - 1;
        ++*(a1 + 40);
        *(v50 - 1) = a15;
        v51 = *(a1 + 40);
        v52 = *(a1 + 64);
        if (*(a1 + 56) - v52 <= 7uLL)
        {
          sub_C7BF74(a1, 8uLL);
          v52 = *(a1 + 64);
        }

        *v52 = v51 | 0x1800000000;
        *(a1 + 64) += 8;
        ++*(a1 + 72);
        if (*(a1 + 76) <= 0x17u)
        {
          *(a1 + 76) = 24;
        }

        goto LABEL_74;
      }
    }

    else
    {
      *(a1 + 80) = 1;
      v50 = *(a1 + 56);
      if (v50 != *(a1 + 64))
      {
        goto LABEL_70;
      }
    }

    sub_C7BF74(a1, 1uLL);
    v50 = *(a1 + 56);
    goto LABEL_70;
  }

LABEL_74:
  if (a6 == 1 && *(a1 + 88) != 1)
  {
    goto LABEL_82;
  }

  if (!*(a1 + 80))
  {
    *(a1 + 80) = 1;
    v53 = *(a1 + 56);
    if (v53 != *(a1 + 64))
    {
      goto LABEL_78;
    }

LABEL_98:
    sub_C7BF74(a1, 1uLL);
    v53 = *(a1 + 56);
    goto LABEL_78;
  }

  v53 = *(a1 + 56);
  if (v53 == *(a1 + 64))
  {
    goto LABEL_98;
  }

LABEL_78:
  *(a1 + 56) = v53 - 1;
  ++*(a1 + 40);
  *(v53 - 1) = a6;
  v54 = *(a1 + 40);
  v55 = *(a1 + 64);
  if (*(a1 + 56) - v55 <= 7uLL)
  {
    sub_C7BF74(a1, 8uLL);
    v55 = *(a1 + 64);
  }

  *v55 = v54 | 0xC00000000;
  *(a1 + 64) += 8;
  ++*(a1 + 72);
  if (*(a1 + 76) <= 0xBu)
  {
    *(a1 + 76) = 12;
  }

LABEL_82:
  if (!a5 && *(a1 + 88) != 1)
  {
    goto LABEL_90;
  }

  if (!*(a1 + 80))
  {
    *(a1 + 80) = 1;
    v56 = *(a1 + 56);
    if (v56 != *(a1 + 64))
    {
      goto LABEL_86;
    }

LABEL_94:
    sub_C7BF74(a1, 1uLL);
    v56 = *(a1 + 56);
    goto LABEL_86;
  }

  v56 = *(a1 + 56);
  if (v56 == *(a1 + 64))
  {
    goto LABEL_94;
  }

LABEL_86:
  *(a1 + 56) = v56 - 1;
  ++*(a1 + 40);
  *(v56 - 1) = a5;
  v57 = *(a1 + 40);
  v58 = *(a1 + 64);
  if (*(a1 + 56) - v58 <= 7uLL)
  {
    sub_C7BF74(a1, 8uLL);
    v58 = *(a1 + 64);
  }

  *v58 = v57 | 0xA00000000;
  *(a1 + 64) += 8;
  ++*(a1 + 72);
  if (*(a1 + 76) <= 9u)
  {
    *(a1 + 76) = 10;
  }

LABEL_90:

  return sub_C7C16C(a1, v62);
}

uint64_t sub_CA55DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  *(result + 78) = 1;
  v3 = a3 * a2;
  if (a3 * a2)
  {
    v4 = result;
    v5 = *(result + 80);
    if (v5 <= 3)
    {
      v5 = 4;
      *(result + 80) = 4;
    }

    v6 = *(result + 40);
    v7 = (-v6 - v3) & 3;
    if (v7)
    {
      v8 = *(result + 56);
      if (v8 - *(result + 64) < v7)
      {
        v9 = a3;
        result = sub_C7BF74(result, (-v6 - v3) & 3);
        a3 = v9;
        v8 = *(v4 + 56);
        v6 = *(v4 + 40);
      }

      v10 = 0;
      *(v4 + 56) = v8 - v7;
      *(v4 + 40) = v6 + v7;
      do
      {
        *(*(v4 + 56) + v10++) = 0;
      }

      while (v7 != v10);
      v5 = *(v4 + 80);
    }

    if (v5 < a3)
    {
      *(v4 + 80) = a3;
    }

    v11 = *(v4 + 40);
    v12 = (a3 - 1) & -(v3 + v11);
    if (v12)
    {
      v13 = *(v4 + 56);
      if (v13 - *(v4 + 64) < v12)
      {
        result = sub_C7BF74(v4, (a3 - 1) & -(v3 + v11));
        v13 = *(v4 + 56);
        LODWORD(v11) = *(v4 + 40);
      }

      v14 = 0;
      *(v4 + 56) = v13 - v12;
      *(v4 + 40) = v11 + v12;
      do
      {
        *(*(v4 + 56) + v14++) = 0;
      }

      while (v12 != v14);
    }
  }

  return result;
}

uint64_t sub_CA5704(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  sub_CA55DC(a1, a3, 4uLL);
  if (!v3)
  {
    *(a1 + 78) = 0;
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v9 = (a1 + 40);
    v15 = *(a1 + 40);
    v10 = (a1 + 56);
    v16 = -v15 & 3;
    if ((-v15 & 3) != 0)
    {
      v17 = *(a1 + 56);
      if (v17 - *(a1 + 64) < v16)
      {
        sub_C7BF74(a1, v16);
        v17 = *(a1 + 56);
        v15 = *(a1 + 40);
      }

      v18 = 0;
      *v10 = v17 - v16;
      *v9 = v15 + v16;
      do
      {
        *(*v10 + v18++) = 0;
      }

      while (v16 != v18);
    }

    v14 = *(a1 + 56);
    if ((v14 - *(a1 + 64)) > 3)
    {
      LODWORD(v3) = 0;
      goto LABEL_26;
    }

    sub_C7BF74(a1, 4uLL);
    LODWORD(v3) = 0;
    goto LABEL_24;
  }

  v6 = 4 * v3;
  if (4 * v3)
  {
    v7 = *(a1 + 56);
    if (v7 - *(a1 + 64) < v6)
    {
      sub_C7BF74(a1, 4 * v3);
      v7 = *(a1 + 56);
    }

    *(a1 + 56) = v7 - v6;
    *(a1 + 40) += v6;
    memcpy((v7 - v6), a2, 4 * v3);
  }

  *(a1 + 78) = 0;
  if (*(a1 + 80) <= 3uLL)
  {
    *(a1 + 80) = 4;
  }

  v9 = (a1 + 40);
  v8 = *(a1 + 40);
  v10 = (a1 + 56);
  v11 = -v8 & 3;
  if ((-v8 & 3) != 0)
  {
    v12 = *(a1 + 56);
    if (v12 - *(a1 + 64) < v11)
    {
      sub_C7BF74(a1, v11);
      v12 = *(a1 + 56);
      v8 = *(a1 + 40);
    }

    v13 = 0;
    *v10 = v12 - v11;
    *v9 = v8 + v11;
    do
    {
      *(*v10 + v13++) = 0;
    }

    while (v11 != v13);
  }

  v14 = *(a1 + 56);
  if ((v14 - *(a1 + 64)) <= 3)
  {
    sub_C7BF74(a1, 4uLL);
LABEL_24:
    v14 = *(a1 + 56);
  }

LABEL_26:
  *v9 += 4;
  *(v14 - 4) = v3;
  *v10 = v14 - 4;
  return *v9;
}

uint64_t sub_CA58F0(uint64_t result, uint64_t a2, int a3, int a4)
{
  v6 = result;
  if (a3 != a4 || *(result + 88) == 1)
  {
    if (*(result + 80) <= 3uLL)
    {
      *(result + 80) = 4;
    }

    v7 = *(result + 40);
    v8 = -v7 & 3;
    if ((-v7 & 3) != 0)
    {
      v9 = *(result + 56);
      if (v9 - *(result + 64) < v8)
      {
        result = sub_C7BF74(result, v8);
        v9 = *(v6 + 56);
        v7 = *(v6 + 40);
      }

      v10 = 0;
      *(v6 + 56) = v9 - v8;
      *(v6 + 40) = v7 + v8;
      do
      {
        *(*(v6 + 56) + v10++) = 0;
      }

      while (v8 != v10);
    }

    v12 = *(v6 + 56);
    v11 = *(v6 + 64);
    if ((v12 - v11) <= 3)
    {
      result = sub_C7BF74(v6, 4uLL);
      v12 = *(v6 + 56);
      v11 = *(v6 + 64);
    }

    *(v6 + 40) += 4;
    *(v12 - 4) = a3;
    v13 = v12 - 4;
    *(v6 + 56) = v13;
    v14 = *(v6 + 40);
    if ((v13 - v11) <= 7)
    {
      result = sub_C7BF74(v6, 8uLL);
      v11 = *(v6 + 64);
    }

    *v11 = v14 | (a2 << 32);
    *(v6 + 64) += 8;
    ++*(v6 + 72);
    if (*(v6 + 76) < a2)
    {
      *(v6 + 76) = a2;
    }
  }

  return result;
}

void sub_CA5A28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  if (*a3 != *a4 || *(a3 + 1) != *(a4 + 1) || *(a3 + 2) != *(a4 + 2))
  {
    sub_CA600C(a5, &__p);
    v11 = __p;
    v12 = v32;
    if (__p != v32)
    {
      v30 = a2;
      do
      {
        while (1)
        {
          v15 = sub_CA63E0(a1, a2, v11);
          v17 = *(a6 + 8);
          v16 = *(a6 + 16);
          if (v17 >= v16)
          {
            break;
          }

          *v17 = v15;
          v13 = *a3;
          *(v17 + 12) = *(a3 + 2);
          *(v17 + 4) = v13;
          v14 = *a4;
          *(v17 + 24) = *(a4 + 2);
          *(v17 + 16) = v14;
          *(a6 + 8) = v17 + 28;
          v11 += 3;
          if (v11 == v12)
          {
            goto LABEL_20;
          }
        }

        v18 = *a6;
        v19 = 0x6DB6DB6DB6DB6DB7 * ((v17 - *a6) >> 2);
        v20 = v19 + 1;
        if ((v19 + 1) > 0x924924924924924)
        {
          sub_1794();
        }

        v21 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v18) >> 2);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x492492492492492)
        {
          v22 = 0x924924924924924;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (v22 <= 0x924924924924924)
          {
            operator new();
          }

          sub_1808();
        }

        v23 = 4 * ((v17 - *a6) >> 2);
        *v23 = v15;
        *(v23 + 4) = *a3;
        *(v23 + 12) = *(a3 + 2);
        *(v23 + 16) = *a4;
        *(v23 + 24) = *(a4 + 2);
        v24 = 28 * v19 + 28;
        v25 = 28 * v19 - (v17 - v18);
        memcpy((v23 - (v17 - v18)), v18, v17 - v18);
        *a6 = v25;
        *(a6 + 8) = v24;
        *(a6 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }

        a2 = v30;
        *(a6 + 8) = v24;
        v11 += 3;
      }

      while (v11 != v12);
LABEL_20:
      v11 = __p;
    }

    if (v11)
    {
      v26 = v32;
      v27 = v11;
      if (v32 != v11)
      {
        do
        {
          v29 = *(v26 - 3);
          v26 -= 3;
          v28 = v29;
          if (v29)
          {
            operator delete(v28);
          }
        }

        while (v26 != v11);
        v27 = __p;
      }

      v32 = v11;
      operator delete(v27);
    }
  }
}

void sub_CA5C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8191C(va);
  _Unwind_Resume(a1);
}

void sub_CA5CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8191C(va);
  _Unwind_Resume(a1);
}

void sub_CA5CBC(void *a1, unsigned int a2, uint64_t a3)
{
  v5 = a1[549];
  v6 = (v5 - *v5);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = v5 + v7 + *(v5 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[4 * a2 + 4 + *&v8[4 * a2 + 4]];
  v10 = &v9[-*v9];
  if (*v10 >= 0x13u)
  {
    v11 = *(v10 + 9);
    if (v11)
    {
      v12 = *&v9[v11] & 1;
      v13 = *a3;
      v14 = *(a3 + 8);
      if (*a3 == v14)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v12 = 0;
  v13 = *a3;
  v14 = *(a3 + 8);
  if (*a3 != v14)
  {
LABEL_10:
    if (v12)
    {
      v15 = -1;
      while (1)
      {
        v16 = *(v13 + 12);
        *v39 = *v13;
        *&v39[12] = v16;
        v17 = a1[527];
        if (*v39 >= ((a1[528] - v17) >> 3))
        {
          break;
        }

        v18 = *(v17 + 8 * *v39);
        if (v15 == -1 || v15 != *v39)
        {
          *(v18 + 76) = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((a1[537] - a1[536]) >> 2));
        }

        sub_CA9668(a1, a2, &v39[4], &v39[16], v18);
        v15 = *v39;
        v13 = (v13 + 28);
        if (v13 == v14)
        {
          return;
        }
      }

LABEL_45:
      sub_6FAB4();
    }

    v19 = -1;
    v37 = v14;
    do
    {
      v21 = *(v13 + 12);
      *v39 = *v13;
      *&v39[12] = v21;
      v20 = *v39;
      v22 = a1[527];
      if (*v39 >= ((a1[528] - v22) >> 3))
      {
        goto LABEL_45;
      }

      v38 = v13;
      v23 = *(v22 + 8 * *v39);
      if (v19 == -1 || v19 != *v39)
      {
        *(v23 + 76) = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((a1[537] - a1[536]) >> 2));
        v24 = *&v39[4];
        v25 = *&v39[16];
        if (*&v39[4] < *&v39[16])
        {
          do
          {
LABEL_30:
            v27 = sub_CA9A50(a1, a2, v24);
            v30 = *(v23 + 32);
            v29 = *(v23 + 40);
            if (v30 < v29)
            {
              *v30 = v27;
              *(v30 + 8) = v28;
              v26 = v30 + 12;
            }

            else
            {
              v31 = *(v23 + 24);
              v32 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 2) + 1;
              if (v32 > 0x1555555555555555)
              {
                sub_1794();
              }

              v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v31) >> 2);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0xAAAAAAAAAAAAAAALL)
              {
                v34 = 0x1555555555555555;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                if (v34 <= 0x1555555555555555)
                {
                  operator new();
                }

                sub_1808();
              }

              v35 = 4 * ((v30 - v31) >> 2);
              *v35 = v27;
              *(v35 + 8) = v28;
              v26 = v35 + 12;
              v36 = (v35 - (v30 - v31));
              memcpy(v36, v31, v30 - v31);
              *(v23 + 24) = v36;
              *(v23 + 32) = v26;
              *(v23 + 40) = 0;
              if (v31)
              {
                operator delete(v31);
                v25 = *&v39[16];
              }
            }

            *(v23 + 32) = v26;
            ++v24;
          }

          while (v24 < v25);
          v20 = *v39;
        }
      }

      else
      {
        v24 = *&v39[4];
        v25 = *&v39[16];
        if (*&v39[4] < *&v39[16])
        {
          goto LABEL_30;
        }
      }

      v13 = (v13 + 28);
      v19 = v20;
    }

    while ((v38 + 28) != v37);
  }
}

void sub_CA600C(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v4 != *a1)
  {
    if (!*(v3 + 8) && !*(v3 + 12))
    {
      __p = 0;
      v55 = 0;
      v56 = 0;
      v7 = sub_CA6728(a2, &__p);
      v8 = __p;
      *(a2 + 8) = v7;
      if (v8)
      {
        operator delete(v8);
        v7 = *(a2 + 8);
      }

      sub_4D9168(v7 - 24, v5 >> 3, 1);
    }

    v52 = v5 >> 4;
    v9 = (v5 >> 4) - 1;
    if (v5 >> 4 != 1)
    {
      v10 = 0;
      v53 = v5 >> 3;
      v11 = 2;
      do
      {
        v12 = (*a1 + v10);
        v13 = v12[2];
        if (*(v12 + 1))
        {
          v14 = v12[6] == 0;
        }

        else
        {
          v14 = 0;
        }

        if (v14 && v12[7] == 0)
        {
          __p = 0;
          v55 = 0;
          v56 = 0;
          v16 = *(a2 + 8);
          if (v16 >= *(a2 + 16))
          {
            v17 = sub_CA6728(a2, &__p);
            v18 = __p;
            *(a2 + 8) = v17;
            if (v18)
            {
              operator delete(v18);
              v17 = *(a2 + 8);
            }
          }

          else
          {
            *v16 = 0;
            v16[1] = 0;
            v16[2] = 0;
            v17 = (v16 + 3);
            *(a2 + 8) = v16 + 3;
          }

          sub_4D9168(v17 - 24, v53, 1);
          v19 = v11 - 1;
          v13 = v12[2];
          if (v13 > 0)
          {
            v19 = v11;
          }

          v20 = v19 - 63;
          if (v19 - 63 < 0)
          {
            v20 = v19;
          }

          v21 = v20 >> 6;
          if (v19 >= 0)
          {
            v21 = v19 >> 6;
          }

          v22 = (v19 + 1) & 0x3F | ((((((v19 & 0x3F) + 1) >> 3) & 8uLL) + 8 * v21) >> 3 << 6);
          if (v22 >= 1)
          {
            v23 = *(a2 + 8);
            v24 = *(v23 - 24);
            v25 = v22 >> 6;
            if (v22 >= 0x40)
            {
              bzero(*(v23 - 24), 8 * v25);
            }

            if ((v22 & 0x3F) != 0)
            {
              *(v24 + 8 * v25) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v22 & 0x3F));
            }
          }
        }

        if (!(v13 | v12[3]))
        {
          v26 = v12[7];
          if (*(v12 + 3))
          {
            v27 = v26 < 1;
            v28 = v26 < 1;
            if (v27)
            {
              v29 = v11 + 1;
            }

            else
            {
              v29 = v11;
            }

            v30 = *(a2 + 8);
            v31 = v11 + v28;
            if (v11 + v28 - 63 >= 0)
            {
              v31 = v11 + v28 - 63;
            }

            v32 = v31 >> 6;
            if (v11 >= 0)
            {
              v32 = v11 >> 6;
            }

            v33 = v29 & 0x3F;
            v34 = (*(v30 - 16) & 0x3FLL) - v33 + (*(v30 - 16) & 0xFFFFFFFFFFFFFFC0) - (v32 << 6);
            if (v34 >= 1)
            {
              v35 = (*(v30 - 24) + 8 * v32);
              v36 = (v11 + v28) & 0x3F;
              if (v36)
              {
                v37 = (64 - v36);
                if (v37 >= v34)
                {
                  v38 = (*(v30 - 16) & 0x3FLL) - v33 + (*(v30 - 16) & 0xFFFFFFFFFFFFFFC0) - (v32 << 6);
                }

                else
                {
                  v38 = v37;
                }

                *v35++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (v37 - v38)) & (-1 << v33));
                v34 -= v38;
              }

              v39 = v34 >> 6;
              if (v34 >= 0x40)
              {
                bzero(v35, 8 * v39);
              }

              if ((v34 & 0x3F) != 0)
              {
                v35[v39] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v34 & 0x3F));
              }
            }
          }
        }

        v10 += 16;
        v11 += 2;
        --v9;
      }

      while (v9);
    }

    v40 = *(a2 + 8);
    v41 = *a2;
    if (*a2 != v40)
    {
      v42 = 0;
      v43 = *a1;
      do
      {
        v44 = (v43 + 16 * v42);
        v45 = 2 * v42;
        v46 = (2 * v42) >> 6;
        if (v44[1])
        {
          v47 = v41;
          do
          {
            v48 = *v47;
            v47 += 3;
            v48[v46] &= ~(1 << (v45 & 0x3E));
          }

          while (v47 != v40);
        }

        if (*v44)
        {
          v49 = ~(2 << (v45 & 0x3E));
          v50 = v41;
          do
          {
            v51 = *v50;
            v50 += 3;
            v51[v46] &= v49;
          }

          while (v50 != v40);
        }

        ++v42;
      }

      while (v42 != v52);
    }
  }
}

uint64_t sub_CA63E0(uint64_t a1, uint64_t a2, int8x16_t **a3)
{
  if (!sub_CA6CE4((a1 + 4400), a3))
  {
    operator new();
  }

  v5 = sub_CA78C4((a1 + 4400), a3);
  if (!v5)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  return *(v5 + 10);
}

void sub_CA6704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    sub_C4D588(&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CA6728(void ***a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
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

  v6 = 8 * (a1[1] - *a1);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      if (*v8)
      {
        operator delete(*v8);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_CA6890(int *a1, uint64_t a2)
{
  v4 = (a1 - *a1);
  if (*v4 >= 5u)
  {
    v5 = v4[2];
    if (v4[2])
    {
      v6 = a1 + v5;
      v7 = *(a1 + v5);
      v8 = *(a1 + v5 + v7);
      v9 = (*(a2 + 8) - *a2) >> 3;
      if (v8 <= v9)
      {
        if (v8 < v9)
        {
          *(a2 + 8) = *a2 + 8 * v8;
        }
      }

      else
      {
        sub_30B70(a2, v8 - v9);
        LODWORD(v8) = *&v6[v7];
      }

      if (v8)
      {
        v10 = 0;
        do
        {
          *(*a2 + 8 * v10) = *(&a1[2 * v10 + 1] + v5 + v7);
          ++v10;
        }

        while (v10 < *&v6[v7]);
      }
    }
  }

  v11 = (a1 - *a1);
  if (*v11 >= 7u)
  {
    v12 = v11[3];
    if (v11[3])
    {
      v13 = a1 + v12;
      v14 = *(a1 + v12);
      v15 = *(a2 + 24);
      v16 = *(a1 + v12 + v14);
      v17 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - v15) >> 2);
      if (v16 <= v17)
      {
        if (v16 < v17)
        {
          *(a2 + 32) = v15 + 12 * v16;
        }
      }

      else
      {
        sub_CA6FEC(a2 + 24, v16 - v17);
        LODWORD(v16) = *&v13[v14];
      }

      if (v16)
      {
        v18 = 0;
        v19 = 0;
        v20 = a1 + v12 + v14 + 4;
        do
        {
          v21 = *(a2 + 24) + v18;
          v22 = *(v20 + v18);
          *(v21 + 8) = *(v20 + v18 + 8);
          *v21 = v22;
          ++v19;
          v18 += 12;
        }

        while (v19 < *&v13[v14]);
      }
    }
  }

  v23 = (a1 - *a1);
  if (*v23 >= 9u)
  {
    v24 = v23[4];
    if (v23[4])
    {
      v25 = a1 + v24;
      v26 = *(a1 + v24);
      v27 = *(a2 + 48);
      v28 = *(a1 + v24 + v26);
      v29 = (*(a2 + 56) - v27) >> 4;
      if (v28 <= v29)
      {
        if (v28 < v29)
        {
          *(a2 + 56) = v27 + 16 * v28;
        }
      }

      else
      {
        sub_CA7194(a2 + 48, v28 - v29);
        LODWORD(v28) = *&v25[v26];
      }

      if (v28)
      {
        v30 = 0;
        v31 = 0;
        do
        {
          *(*(a2 + 48) + v30) = *(a1 + v24 + v26 + v30 + 4);
          ++v31;
          v30 += 16;
        }

        while (v31 < *&v25[v26]);
      }
    }
  }

  v32 = (a1 - *a1);
  v33 = *v32;
  if (v33 <= 0xA)
  {
    *(a2 + 72) = 0;
LABEL_36:
    *(a2 + 73) = 1;
    goto LABEL_37;
  }

  v34 = v32[5];
  if (v32[5])
  {
    LOBYTE(v34) = *(a1 + v34);
  }

  *(a2 + 72) = v34;
  if (v33 < 0xD)
  {
    goto LABEL_36;
  }

  if (!v32[6])
  {
    *(a2 + 73) = 1;
    if (v33 >= 0xF)
    {
      goto LABEL_66;
    }

LABEL_37:
    LODWORD(v35) = 0;
    *(a2 + 74) = 0x7FFF;
    goto LABEL_38;
  }

  *(a2 + 73) = *(a1 + v32[6]);
  if (v33 < 0xF)
  {
    goto LABEL_37;
  }

LABEL_66:
  if (v32[7])
  {
    *(a2 + 74) = *(a1 + v32[7]);
    if (v33 >= 0x11)
    {
      goto LABEL_68;
    }

LABEL_71:
    LODWORD(v35) = 0;
    goto LABEL_38;
  }

  *(a2 + 74) = 0x7FFF;
  if (v33 < 0x11)
  {
    goto LABEL_71;
  }

LABEL_68:
  v35 = v32[8];
  if (v35)
  {
    LODWORD(v35) = *(a1 + v35);
  }

LABEL_38:
  *(a2 + 76) = v35;
  v36 = (a1 - *a1);
  if (*v36 < 0x13u)
  {
    *(a2 + 80) = 0;
    v38 = (a1 - *a1);
    if (*v38 < 0x15u)
    {
      goto LABEL_52;
    }

    goto LABEL_44;
  }

  v37 = v36[9];
  if (v37)
  {
    LODWORD(v37) = *(a1 + v37);
  }

  *(a2 + 80) = v37;
  v38 = (a1 - *a1);
  if (*v38 >= 0x15u)
  {
LABEL_44:
    v39 = v38[10];
    if (v38[10])
    {
      v40 = a1 + v39;
      v41 = *(a1 + v39);
      v42 = *(a2 + 88);
      v43 = *(a1 + v39 + v41);
      v44 = (*(a2 + 96) - v42) >> 2;
      if (v43 <= v44)
      {
        if (v43 < v44)
        {
          *(a2 + 96) = v42 + 4 * v43;
        }
      }

      else
      {
        sub_42CC4(a2 + 88, v43 - v44);
        LODWORD(v43) = *&v40[v41];
      }

      if (v43)
      {
        v45 = 0;
        v46 = *(a2 + 88);
        do
        {
          *(v46 + 4 * v45) = *(&a1[v45 + 1] + v39 + v41);
          ++v45;
        }

        while (v45 < *&v40[v41]);
      }
    }
  }

LABEL_52:
  v47 = (a1 - *a1);
  if (*v47 >= 0x17u)
  {
    v48 = v47[11];
    if (v47[11])
    {
      v49 = a1 + v48;
      v50 = *(a1 + v48);
      v51 = *(a2 + 112);
      v52 = *(a1 + v48 + v50);
      v53 = (*(a2 + 120) - v51) >> 2;
      if (v52 <= v53)
      {
        if (v52 < v53)
        {
          *(a2 + 120) = v51 + 4 * v52;
        }
      }

      else
      {
        sub_42CC4(a2 + 112, v52 - v53);
        LODWORD(v52) = *&v49[v50];
      }

      if (v52)
      {
        v54 = 0;
        v55 = *(a2 + 112);
        do
        {
          *(v55 + 4 * v54) = *(&a1[v54 + 1] + v48 + v50);
          ++v54;
        }

        while (v54 < *&v49[v50]);
      }
    }
  }

  v56 = (a1 - *a1);
  if (*v56 >= 0x19u && (v57 = v56[12]) != 0)
  {
    *(a2 + 136) = *(a1 + v57);
  }

  else
  {
    *(a2 + 136) = 2;
  }
}

void *sub_CA6CE4(void *a1, int8x16_t **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - 64;
  if (v2 < 0x40)
  {
    v5 = 0;
    v7 = a2[1];
    v6 = *a2;
    goto LABEL_9;
  }

  if (v4 < 0xC0)
  {
    v5 = 0;
    v6 = *a2;
    v7 = a2[1];
    do
    {
LABEL_8:
      v14 = v6->i64[0];
      v6 = (v6 + 8);
      *&v5 ^= v14;
      v7 -= 64;
    }

    while (v7 > 0x3F);
    goto LABEL_9;
  }

  v8 = (v4 >> 6) + 1;
  v6 = (v3 + 8 * (v8 & 0x7FFFFFFFFFFFFFCLL));
  v7 = v2 - ((v8 & 0x7FFFFFFFFFFFFFCLL) << 6);
  v9 = v3 + 1;
  v10 = 0uLL;
  v11 = v8 & 0x7FFFFFFFFFFFFFCLL;
  v12 = 0uLL;
  do
  {
    v10 = veorq_s8(v9[-1], v10);
    v12 = veorq_s8(*v9, v12);
    v9 += 2;
    v11 -= 4;
  }

  while (v11);
  v13 = veorq_s8(v12, v10);
  v5 = veor_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFCLL))
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v7)
  {
    *&v5 ^= v6->i64[0] & (0xFFFFFFFFFFFFFFFFLL >> -v7);
  }

  v15 = a1[1];
  if (!*&v15)
  {
    return 0;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (*&v5 >= *&v15)
    {
      v17 = *&v5 % *&v15;
    }
  }

  else
  {
    v17 = (*&v15 - 1) & *&v5;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = *v18;
  if (!v19)
  {
    return 0;
  }

  v20 = v2 >> 6;
  v21 = v2 < 0x40;
  v22 = v2 & 0x3F;
  if ((v2 & 0x3F) != 0)
  {
    v21 = 0;
  }

  if (v16.u32[0] >= 2uLL)
  {
    if (v21)
    {
      while (1)
      {
        v32 = v19[1];
        if (*&v5 == v32)
        {
          if (v19[3] == v2)
          {
            return v19;
          }
        }

        else
        {
          if (v32 >= *&v15)
          {
            v32 %= *&v15;
          }

          if (v32 != v17)
          {
            return 0;
          }
        }

        result = 0;
        v19 = *v19;
        if (!v19)
        {
          return result;
        }
      }
    }

    while (1)
    {
      v33 = v19[1];
      if (*&v5 == v33)
      {
        if (v19[3] == v2)
        {
          v34 = 0;
          v35 = 0;
          v36 = v19[2];
          v37 = &v36[v20];
          v38 = v3;
          while (((*v36 >> v34) & 1) != (((*v38 >> v35) & 1) == 0))
          {
            v36 += v34 == 63;
            if (v34 == 63)
            {
              v34 = 0;
            }

            else
            {
              ++v34;
            }

            v38 += v35 == 63;
            if (v35 == 63)
            {
              v35 = 0;
            }

            else
            {
              ++v35;
            }

            if (v34 == v22 && v36 == v37)
            {
              return v19;
            }
          }
        }
      }

      else
      {
        if (v33 >= *&v15)
        {
          v33 %= *&v15;
        }

        if (v33 != v17)
        {
          return 0;
        }
      }

      result = 0;
      v19 = *v19;
      if (!v19)
      {
        return result;
      }
    }
  }

  v23 = *&v15 - 1;
  if (v21)
  {
    while (1)
    {
      v25 = v19[1];
      if (*&v5 == v25)
      {
        if (v19[3] == v2)
        {
          return v19;
        }
      }

      else if ((v25 & v23) != v17)
      {
        return 0;
      }

      result = 0;
      v19 = *v19;
      if (!v19)
      {
        return result;
      }
    }
  }

  do
  {
    v26 = v19[1];
    if (*&v5 == v26)
    {
      if (v19[3] == v2)
      {
        v27 = 0;
        v28 = 0;
        v29 = v19[2];
        v30 = &v29[v20];
        v31 = v3;
        while ((((*v29 >> v27) ^ (((*v31 >> v28) & 1) == 0)) & 1) != 0)
        {
          v29 += v27 == 63;
          if (v27 == 63)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          v31 += v28 == 63;
          if (v28 == 63)
          {
            v28 = 0;
          }

          else
          {
            ++v28;
          }

          if (v27 == v22 && v29 == v30)
          {
            return v19;
          }
        }
      }
    }

    else if ((v26 & v23) != v17)
    {
      return 0;
    }

    result = 0;
    v19 = *v19;
  }

  while (v19);
  return result;
}

void sub_CA6FEC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2) + a2;
    if (v6 > 0x1555555555555555)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x1555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = (4 * ((v4 - *a1) >> 2));
    v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_CA7194(uint64_t a1, unint64_t a2)
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

void *sub_CA72E8(void *a1, int8x16_t **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - 64;
  if (v2 < 0x40)
  {
    v5 = 0;
    v7 = a2[1];
    v6 = *a2;
  }

  else
  {
    if (v4 >= 0xC0)
    {
      v8 = (v4 >> 6) + 1;
      v6 = (v3 + 8 * (v8 & 0x7FFFFFFFFFFFFFCLL));
      v7 = v2 - ((v8 & 0x7FFFFFFFFFFFFFCLL) << 6);
      v9 = v3 + 1;
      v10 = 0uLL;
      v11 = v8 & 0x7FFFFFFFFFFFFFCLL;
      v12 = 0uLL;
      do
      {
        v10 = veorq_s8(v9[-1], v10);
        v12 = veorq_s8(*v9, v12);
        v9 += 2;
        v11 -= 4;
      }

      while (v11);
      v13 = veorq_s8(v12, v10);
      v5 = veor_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
      if (v8 == (v8 & 0x7FFFFFFFFFFFFFCLL))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = 0;
      v6 = *a2;
      v7 = a2[1];
    }

    do
    {
      v14 = v6->i64[0];
      v6 = (v6 + 8);
      *&v5 ^= v14;
      v7 -= 64;
    }

    while (v7 > 0x3F);
  }

LABEL_9:
  if (v7)
  {
    *&v5 ^= v6->i64[0] & (0xFFFFFFFFFFFFFFFFLL >> -v7);
  }

  v15 = a1[1];
  if (!*&v15)
  {
    goto LABEL_70;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (*&v5 >= *&v15)
    {
      v17 = *&v5 % *&v15;
    }
  }

  else
  {
    v17 = (*&v15 - 1) & *&v5;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    goto LABEL_70;
  }

  result = *v18;
  if (!*v18)
  {
    goto LABEL_70;
  }

  v20 = v2 >> 6;
  v21 = v2 < 0x40;
  v22 = v2 & 0x3F;
  if ((v2 & 0x3F) != 0)
  {
    v21 = 0;
  }

  if (v16.u32[0] < 2uLL)
  {
    v23 = *&v15 - 1;
    if (v21)
    {
      while (1)
      {
        v24 = result[1];
        if (v24 == *&v5)
        {
          if (result[3] == v2)
          {
            return result;
          }
        }

        else if ((v24 & v23) != v17)
        {
          goto LABEL_70;
        }

        result = *result;
        if (!result)
        {
          goto LABEL_70;
        }
      }
    }

    do
    {
      v25 = result[1];
      if (v25 == *&v5)
      {
        if (result[3] == v2)
        {
          v26 = 0;
          v27 = 0;
          v28 = result[2];
          v29 = &v28[v20];
          v30 = *a2;
          while ((((*v28 >> v26) ^ (((v30->i64[0] >> v27) & 1) == 0)) & 1) != 0)
          {
            v28 += v26 == 63;
            if (v26 == 63)
            {
              v26 = 0;
            }

            else
            {
              ++v26;
            }

            v30 = (v30 + 8 * (v27 == 63));
            if (v27 == 63)
            {
              v27 = 0;
            }

            else
            {
              ++v27;
            }

            if (v26 == v22 && v28 == v29)
            {
              return result;
            }
          }
        }
      }

      else if ((v25 & v23) != v17)
      {
        break;
      }

      result = *result;
    }

    while (result);
LABEL_70:
    operator new();
  }

  if (v21)
  {
    while (1)
    {
      v31 = result[1];
      if (v31 == *&v5)
      {
        if (result[3] == v2)
        {
          return result;
        }
      }

      else
      {
        if (v31 >= *&v15)
        {
          v31 %= *&v15;
        }

        if (v31 != v17)
        {
          goto LABEL_70;
        }
      }

      result = *result;
      if (!result)
      {
        goto LABEL_70;
      }
    }
  }

  while (1)
  {
    v32 = result[1];
    if (v32 == *&v5)
    {
      break;
    }

    if (v32 >= *&v15)
    {
      v32 %= *&v15;
    }

    if (v32 != v17)
    {
      goto LABEL_70;
    }

LABEL_54:
    result = *result;
    if (!result)
    {
      goto LABEL_70;
    }
  }

  if (result[3] != v2)
  {
    goto LABEL_54;
  }

  v33 = 0;
  v34 = 0;
  v35 = result[2];
  v36 = &v35[v20];
  v37 = *a2;
  do
  {
    if (((*v35 >> v33) & 1) == (((v37->i64[0] >> v34) & 1) == 0))
    {
      goto LABEL_54;
    }

    v35 += v33 == 63;
    if (v33 == 63)
    {
      v33 = 0;
    }

    else
    {
      ++v33;
    }

    v37 = (v37 + 8 * (v34 == 63));
    if (v34 == 63)
    {
      v34 = 0;
    }

    else
    {
      ++v34;
    }
  }

  while (v33 != v22 || v35 != v36);
  return result;
}

void sub_CA7838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CA7860(va);
  _Unwind_Resume(a1);
}

void sub_CA784C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CA7860(va);
  _Unwind_Resume(a1);
}

void ***sub_CA7860(void ***a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && v2[2])
    {
      v4 = v2;
      operator delete(v2[2]);
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void *sub_CA78C4(void *a1, int8x16_t **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - 64;
  if (v2 < 0x40)
  {
    v5 = 0;
    v7 = a2[1];
    v6 = *a2;
    goto LABEL_9;
  }

  if (v4 < 0xC0)
  {
    v5 = 0;
    v6 = *a2;
    v7 = a2[1];
    do
    {
LABEL_8:
      v14 = v6->i64[0];
      v6 = (v6 + 8);
      *&v5 ^= v14;
      v7 -= 64;
    }

    while (v7 > 0x3F);
    goto LABEL_9;
  }

  v8 = (v4 >> 6) + 1;
  v6 = (v3 + 8 * (v8 & 0x7FFFFFFFFFFFFFCLL));
  v7 = v2 - ((v8 & 0x7FFFFFFFFFFFFFCLL) << 6);
  v9 = v3 + 1;
  v10 = 0uLL;
  v11 = v8 & 0x7FFFFFFFFFFFFFCLL;
  v12 = 0uLL;
  do
  {
    v10 = veorq_s8(v9[-1], v10);
    v12 = veorq_s8(*v9, v12);
    v9 += 2;
    v11 -= 4;
  }

  while (v11);
  v13 = veorq_s8(v12, v10);
  v5 = veor_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFCLL))
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v7)
  {
    *&v5 ^= v6->i64[0] & (0xFFFFFFFFFFFFFFFFLL >> -v7);
  }

  v15 = a1[1];
  if (!*&v15)
  {
    return 0;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (*&v5 >= *&v15)
    {
      v17 = *&v5 % *&v15;
    }
  }

  else
  {
    v17 = (*&v15 - 1) & *&v5;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = *v18;
  if (!v19)
  {
    return 0;
  }

  v20 = v2 >> 6;
  v21 = v2 < 0x40;
  v22 = v2 & 0x3F;
  if ((v2 & 0x3F) != 0)
  {
    v21 = 0;
  }

  if (v16.u32[0] >= 2uLL)
  {
    if (v21)
    {
      while (1)
      {
        v32 = v19[1];
        if (v32 == *&v5)
        {
          if (v19[3] == v2)
          {
            return v19;
          }
        }

        else
        {
          if (v32 >= *&v15)
          {
            v32 %= *&v15;
          }

          if (v32 != v17)
          {
            return 0;
          }
        }

        result = 0;
        v19 = *v19;
        if (!v19)
        {
          return result;
        }
      }
    }

    while (1)
    {
      v33 = v19[1];
      if (v33 == *&v5)
      {
        if (v19[3] == v2)
        {
          v34 = 0;
          v35 = 0;
          v36 = v19[2];
          v37 = &v36[v20];
          v38 = v3;
          while (((*v36 >> v34) & 1) != (((*v38 >> v35) & 1) == 0))
          {
            v36 += v34 == 63;
            if (v34 == 63)
            {
              v34 = 0;
            }

            else
            {
              ++v34;
            }

            v38 += v35 == 63;
            if (v35 == 63)
            {
              v35 = 0;
            }

            else
            {
              ++v35;
            }

            if (v34 == v22 && v36 == v37)
            {
              return v19;
            }
          }
        }
      }

      else
      {
        if (v33 >= *&v15)
        {
          v33 %= *&v15;
        }

        if (v33 != v17)
        {
          return 0;
        }
      }

      result = 0;
      v19 = *v19;
      if (!v19)
      {
        return result;
      }
    }
  }

  v23 = *&v15 - 1;
  if (v21)
  {
    while (1)
    {
      v25 = v19[1];
      if (v25 == *&v5)
      {
        if (v19[3] == v2)
        {
          return v19;
        }
      }

      else if ((v25 & v23) != v17)
      {
        return 0;
      }

      result = 0;
      v19 = *v19;
      if (!v19)
      {
        return result;
      }
    }
  }

  do
  {
    v26 = v19[1];
    if (v26 == *&v5)
    {
      if (v19[3] == v2)
      {
        v27 = 0;
        v28 = 0;
        v29 = v19[2];
        v30 = &v29[v20];
        v31 = v3;
        while ((((*v29 >> v27) ^ (((*v31 >> v28) & 1) == 0)) & 1) != 0)
        {
          v29 += v27 == 63;
          if (v27 == 63)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          v31 += v28 == 63;
          if (v28 == 63)
          {
            v28 = 0;
          }

          else
          {
            ++v28;
          }

          if (v27 == v22 && v29 == v30)
          {
            return v19;
          }
        }
      }
    }

    else if ((v26 & v23) != v17)
    {
      return 0;
    }

    result = 0;
    v19 = *v19;
  }

  while (v19);
  return result;
}

void sub_CA7BCC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v9 = (a2 - 28);
  v10 = a1;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = (v13 >> 2) * v8;
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3uLL:
          sub_CA8368(a1, a1 + 28, v9);
          return;
        case 4uLL:
          sub_CA8564(a1, a1 + 28, (a1 + 56), v9);
          return;
        case 5uLL:
          sub_CA86D8(a1, a1 + 28, (a1 + 56), (a1 + 84), v9);
          return;
      }
    }

    else
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        *v83 = v9;
        *&v83[8] = a2 - 24;
        *&v83[16] = a2 - 12;
        v84 = a1;
        v85 = a1 + 4;
        v86 = a1 + 16;
        if ((sub_CA9104(v83, &v84) & 0x80) != 0)
        {
          v28 = *a1;
          *&v83[12] = *(a1 + 12);
          *v83 = v28;
          v29 = *v9;
          *(a1 + 12) = *(v9 + 12);
          *a1 = v29;
          *v9 = *v83;
          *(v9 + 12) = *&v83[12];
        }

        return;
      }
    }

    if (v13 <= 671)
    {
      break;
    }

    if (v11 == 1)
    {
      if (a1 != a2)
      {
        v33 = (v14 - 2) >> 1;
        v34 = v33 + 1;
        v35 = (a1 + 28 * v33);
        do
        {
          sub_CA9238(a1, a3, (v13 >> 2) * v8, v35);
          v35 -= 7;
          --v34;
        }

        while (v34);
        v36 = (v13 >> 2) * v8;
        do
        {
          sub_CA943C(a1, a2, a3, v36);
          a2 = (a2 - 28);
        }

        while (v36-- > 2);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = (a1 + 28 * (v14 >> 1));
    if (v13 < 0xE01)
    {
      sub_CA8368(v16, a1, v9);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_CA8368(a1, v16, v9);
      v17 = v9;
      v18 = v8;
      v19 = 28 * v15;
      v20 = 28 * v15 + a1 - 28;
      sub_CA8368(a1 + 28, v20, (a2 - 56));
      sub_CA8368(a1 + 56, a1 + 28 + v19, (a2 - 84));
      v21 = (a1 + 28 + v19);
      v8 = v18;
      v9 = v17;
      sub_CA8368(v20, v16, v21);
      v22 = *a1;
      *&v83[12] = *(a1 + 12);
      *v83 = v22;
      v23 = *v16;
      *(a1 + 12) = *(v16 + 12);
      *a1 = v23;
      v24 = *v83;
      *(v16 + 12) = *&v83[12];
      *v16 = v24;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    *v83 = a1 - 28;
    *&v83[8] = a1 - 24;
    *&v83[16] = a1 - 12;
    v84 = a1;
    v85 = a1 + 4;
    v86 = a1 + 16;
    if ((sub_CA9104(v83, &v84) & 0x80) == 0)
    {
      v10 = sub_CA8898(a1, a2);
      goto LABEL_23;
    }

LABEL_18:
    v25 = sub_CA8B98(a1, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_21;
    }

    v27 = sub_CA8E94(a1, v25);
    v10 = (v25 + 28);
    if (sub_CA8E94((v25 + 28), a2))
    {
      a4 = -v12;
      a2 = v25;
      if (v27)
      {
        return;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v27)
    {
LABEL_21:
      sub_CA7BCC(a1, v25, a3, -v12, a5 & 1);
      v10 = (v25 + 28);
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v60 = (a1 + 28);
    while (1)
    {
      if (v60 == a2)
      {
        return;
      }

      v61 = v60;
      *v83 = v60;
      *&v83[8] = a1 + 32;
      *&v83[16] = a1 + 44;
      v84 = a1;
      v85 = a1 + 4;
      v86 = a1 + 16;
      if ((sub_CA9104(v83, &v84) & 0x80) == 0)
      {
        goto LABEL_85;
      }

      v62 = *v61;
      v63 = v61[1];
      v64 = v61[2];
      v65 = v61[3];
      v66 = v61[4];
      v67 = v61[5];
      v68 = v61[6];
      if (v64 != -1)
      {
        break;
      }

      while (1)
      {
        while (1)
        {
          v69 = a1;
          *(a1 + 28) = *a1;
          *(a1 + 40) = *(a1 + 12);
          v70 = *(a1 - 28);
          a1 -= 28;
          v71 = v62 >= v70;
          if (v62 == v70)
          {
            break;
          }

          if (v71)
          {
            goto LABEL_84;
          }
        }

        v72 = *(v69 - 6);
        if (v63 >= v72)
        {
          if (v72 < v63)
          {
            break;
          }

          if (*(v69 - 5) != -1)
          {
            break;
          }

          v73 = *(v69 - 3);
          if (v66 >= v73)
          {
            if (v66 != v73)
            {
              break;
            }

            if (v67 == -1)
            {
              break;
            }

            v74 = *(v69 - 2);
            if (v67 >= v74 && (v67 != v74 || v68 >= *(v69 - 1)))
            {
              break;
            }
          }
        }
      }

LABEL_84:
      *v69 = v62;
      v69[1] = v63;
      v69[2] = v64;
      v69[3] = v65;
      v69[4] = v66;
      v69[5] = v67;
      v69[6] = v68;
LABEL_85:
      v60 = v61 + 7;
      a1 = v61;
    }

    while (1)
    {
      while (1)
      {
        v69 = a1;
        *(a1 + 28) = *a1;
        *(a1 + 40) = *(a1 + 12);
        v76 = *(a1 - 28);
        a1 -= 28;
        v75 = v62 >= v76;
        if (v62 == v76)
        {
          break;
        }

LABEL_104:
        if (v75)
        {
          goto LABEL_84;
        }
      }

      v77 = *(v69 - 6);
      if (v63 >= v77)
      {
        if (v63 != v77 || (v78 = *(v69 - 5), v64 >= v78) && (v64 != v78 || v65 >= *(v69 - 4)))
        {
          if (v77 < v63)
          {
            goto LABEL_84;
          }

          v79 = *(v69 - 5);
          if (v79 != -1 && (v79 < v64 || v79 == v64 && *(v69 - 4) < v65))
          {
            goto LABEL_84;
          }

          v80 = *(v69 - 3);
          if (v66 >= v80)
          {
            if (v66 != v80 || v67 == -1)
            {
              goto LABEL_84;
            }

            v81 = *(v69 - 2);
            if (v67 >= v81)
            {
              if (v67 != v81)
              {
                goto LABEL_84;
              }

              v75 = v68 >= *(v69 - 1);
              goto LABEL_104;
            }
          }
        }
      }
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v30 = a1 + 28;
  if ((a1 + 28) == a2)
  {
    return;
  }

  v31 = 0;
  v32 = a1;
  while (2)
  {
    v39 = v30;
    *v83 = v30;
    *&v83[8] = v32 + 32;
    *&v83[16] = v32 + 44;
    v84 = v32;
    v85 = v32 + 4;
    v86 = v32 + 16;
    if ((sub_CA9104(v83, &v84) & 0x80) == 0)
    {
      goto LABEL_43;
    }

    v40 = *(v32 + 28);
    v41 = *(v39 + 4);
    v42 = *(v39 + 8);
    v43 = *(v39 + 12);
    v44 = *(v39 + 16);
    v45 = *(v39 + 20);
    v46 = *(v39 + 24);
    *v39 = *v32;
    v38 = a1;
    *(v39 + 12) = *(v32 + 12);
    if (v32 == a1)
    {
      goto LABEL_42;
    }

    v47 = v31;
    if (v42 == -1)
    {
      while (1)
      {
        v55 = (a1 + v47);
        v56 = *(a1 + v47 - 28);
        if (v40 == v56)
        {
          v57 = *(v55 - 6);
          if (v41 >= v57)
          {
            if (v57 < v41 || *(a1 + v47 - 20) != -1)
            {
              goto LABEL_80;
            }

            v58 = *(v55 - 3);
            if (v44 >= v58)
            {
              if (v44 != v58 || v45 == -1)
              {
                goto LABEL_81;
              }

              v59 = *(a1 + v47 - 8);
              if (v45 >= v59 && (v45 != v59 || v46 >= *(a1 + v47 - 4)))
              {
                goto LABEL_80;
              }
            }
          }
        }

        else if (v40 >= v56)
        {
          goto LABEL_80;
        }

        v32 -= 28;
        *v55 = *(a1 + v47 - 28);
        *(v55 + 12) = *(a1 + v47 - 16);
        v47 -= 28;
        if (!v47)
        {
          goto LABEL_41;
        }
      }
    }

    while (2)
    {
      v48 = (a1 + v47);
      v49 = *(a1 + v47 - 28);
      if (v40 == v49)
      {
        v50 = *(v48 - 6);
        if (v41 >= v50)
        {
          if (v41 != v50 || (v51 = *(a1 + v47 - 20), v42 >= v51) && (v42 != v51 || v43 >= *(a1 + v47 - 16)))
          {
            if (v50 < v41 || (v52 = *(a1 + v47 - 20), v52 != -1) && (v52 < v42 || v52 == v42 && *(a1 + v47 - 16) < v43) || (v53 = *(v48 - 3), v44 >= v53) && (v44 != v53 || v45 == -1 || (v54 = *(a1 + v47 - 8), v45 >= v54) && (v45 != v54 || v46 >= *(a1 + v47 - 4))))
            {
LABEL_80:
              v38 = v32;
              goto LABEL_42;
            }
          }
        }

        goto LABEL_49;
      }

      if (v40 < v49)
      {
LABEL_49:
        v32 -= 28;
        *v48 = *(a1 + v47 - 28);
        *(v48 + 12) = *(a1 + v47 - 16);
        v47 -= 28;
        if (!v47)
        {
LABEL_41:
          v38 = a1;
          goto LABEL_42;
        }

        continue;
      }

      break;
    }

LABEL_81:
    v38 = (a1 + v47);
LABEL_42:
    *v38 = v40;
    v38[1] = v41;
    v38[2] = v42;
    v38[3] = v43;
    v38[4] = v44;
    v38[5] = v45;
    v38[6] = v46;
LABEL_43:
    v30 = v39 + 28;
    v31 += 28;
    v32 = v39;
    if ((v39 + 28) != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_CA8368(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a2 + 4;
  *v19 = a2;
  *&v19[8] = a2 + 4;
  v7 = a2 + 16;
  *&v19[16] = a2 + 16;
  v8 = a1 + 4;
  v9 = a1 + 16;
  v16 = a1;
  v17 = a1 + 4;
  v18 = a1 + 16;
  if ((sub_CA9104(v19, &v16) & 0x80) != 0)
  {
    *v19 = a3;
    *&v19[8] = a3 + 4;
    *&v19[16] = a3 + 1;
    v16 = a2;
    v17 = v6;
    v18 = v7;
    if ((sub_CA9104(v19, &v16) & 0x80) != 0)
    {
      *v19 = *a1;
      *&v19[12] = *(a1 + 12);
      v15 = *(a3 + 12);
      *a1 = *a3;
      *(a1 + 12) = v15;
    }

    else
    {
      *v19 = *a1;
      *&v19[12] = *(a1 + 12);
      v11 = *(a2 + 12);
      *a1 = *a2;
      *(a1 + 12) = v11;
      *(a2 + 12) = *&v19[12];
      *a2 = *v19;
      *v19 = a3;
      *&v19[8] = a3 + 4;
      *&v19[16] = a3 + 1;
      v16 = a2;
      v17 = v6;
      v18 = v7;
      if ((sub_CA9104(v19, &v16) & 0x80) == 0)
      {
        return 1;
      }

      *v19 = *a2;
      *&v19[12] = *(a2 + 12);
      v12 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v12;
    }

    *(a3 + 12) = *&v19[12];
    *a3 = *v19;
    return 1;
  }

  *v19 = a3;
  *&v19[8] = a3 + 4;
  *&v19[16] = a3 + 1;
  v16 = a2;
  v17 = v6;
  v18 = v7;
  if ((sub_CA9104(v19, &v16) & 0x80) == 0)
  {
    return 0;
  }

  *v19 = *a2;
  *&v19[12] = *(a2 + 12);
  v13 = *(a3 + 12);
  *a2 = *a3;
  *(a2 + 12) = v13;
  *(a3 + 12) = *&v19[12];
  *a3 = *v19;
  *v19 = a2;
  *&v19[8] = v6;
  *&v19[16] = v7;
  v16 = a1;
  v17 = v8;
  v18 = v9;
  if ((sub_CA9104(v19, &v16) & 0x80) != 0)
  {
    *v19 = *a1;
    *&v19[12] = *(a1 + 12);
    v14 = *(a2 + 12);
    *a1 = *a2;
    *(a1 + 12) = v14;
    *(a2 + 12) = *&v19[12];
    *a2 = *v19;
  }

  return 1;
}

double sub_CA8564(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  sub_CA8368(a1, a2, a3);
  *v15 = a4;
  *&v15[8] = a4 + 4;
  *&v15[16] = a4 + 1;
  v12 = a3;
  v13 = a3 + 4;
  v14 = a3 + 1;
  if ((sub_CA9104(v15, &v12) & 0x80) != 0)
  {
    *v15 = *a3;
    *&v15[12] = *(a3 + 12);
    v9 = *(a4 + 12);
    *a3 = *a4;
    *(a3 + 12) = v9;
    *(a4 + 12) = *&v15[12];
    *a4 = *v15;
    *v15 = a3;
    *&v15[8] = a3 + 4;
    *&v15[16] = a3 + 1;
    v12 = a2;
    v13 = (a2 + 4);
    v14 = (a2 + 16);
    if ((sub_CA9104(v15, &v12) & 0x80) != 0)
    {
      *v15 = *a2;
      *&v15[12] = *(a2 + 12);
      v10 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v10;
      *(a3 + 12) = *&v15[12];
      *a3 = *v15;
      *v15 = a2;
      *&v15[8] = a2 + 4;
      *&v15[16] = a2 + 16;
      v12 = a1;
      v13 = (a1 + 4);
      v14 = (a1 + 16);
      if ((sub_CA9104(v15, &v12) & 0x80) != 0)
      {
        *v15 = *a1;
        *&v15[12] = *(a1 + 12);
        v11 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v11;
        *(a2 + 12) = *&v15[12];
        result = *v15;
        *a2 = *v15;
      }
    }
  }

  return result;
}

double sub_CA86D8(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  sub_CA8564(a1, a2, a3, a4);
  *v18 = a5;
  *&v18[8] = a5 + 4;
  *&v18[16] = a5 + 1;
  v15 = a4;
  v16 = a4 + 4;
  v17 = a4 + 1;
  if ((sub_CA9104(v18, &v15) & 0x80) != 0)
  {
    *v18 = *a4;
    *&v18[12] = *(a4 + 12);
    v11 = *(a5 + 12);
    *a4 = *a5;
    *(a4 + 12) = v11;
    *(a5 + 12) = *&v18[12];
    *a5 = *v18;
    *v18 = a4;
    *&v18[8] = a4 + 4;
    *&v18[16] = a4 + 1;
    v15 = a3;
    v16 = a3 + 4;
    v17 = a3 + 1;
    if ((sub_CA9104(v18, &v15) & 0x80) != 0)
    {
      *v18 = *a3;
      *&v18[12] = *(a3 + 12);
      v12 = *(a4 + 12);
      *a3 = *a4;
      *(a3 + 12) = v12;
      *(a4 + 12) = *&v18[12];
      *a4 = *v18;
      *v18 = a3;
      *&v18[8] = a3 + 4;
      *&v18[16] = a3 + 1;
      v15 = a2;
      v16 = (a2 + 4);
      v17 = (a2 + 16);
      if ((sub_CA9104(v18, &v15) & 0x80) != 0)
      {
        *v18 = *a2;
        *&v18[12] = *(a2 + 12);
        v13 = *(a3 + 12);
        *a2 = *a3;
        *(a2 + 12) = v13;
        *(a3 + 12) = *&v18[12];
        *a3 = *v18;
        *v18 = a2;
        *&v18[8] = a2 + 4;
        *&v18[16] = a2 + 16;
        v15 = a1;
        v16 = (a1 + 4);
        v17 = (a1 + 16);
        if ((sub_CA9104(v18, &v15) & 0x80) != 0)
        {
          *v18 = *a1;
          *&v18[12] = *(a1 + 12);
          v14 = *(a2 + 12);
          *a1 = *a2;
          *(a1 + 12) = v14;
          *(a2 + 12) = *&v18[12];
          result = *v18;
          *a2 = *v18;
        }
      }
    }
  }

  return result;
}

unint64_t sub_CA8898(_OWORD *a1, unint64_t a2)
{
  v2 = a2;
  *v32 = *a1;
  *&v32[12] = *(a1 + 12);
  *v36 = v32;
  *&v36[8] = &v32[4];
  *&v36[16] = &v32[16];
  v33 = (a2 - 28);
  v34 = a2 - 24;
  v35 = a2 - 12;
  if ((sub_CA9104(v36, &v33) & 0x80) != 0)
  {
    v6 = a1;
    do
    {
      v5 = v6 + 28;
      *v36 = v32;
      *&v36[8] = &v32[4];
      *&v36[16] = &v32[16];
      v33 = v6 + 28;
      v34 = (v6 + 2);
      v35 = v6 + 44;
      v7 = sub_CA9104(v36, &v33);
      v6 = v5;
    }

    while ((v7 & 0x80) == 0);
  }

  else
  {
    v4 = a1 + 44;
    do
    {
      v5 = (v4 - 16);
      if ((v4 - 16) >= v2)
      {
        break;
      }

      *v36 = v32;
      *&v36[8] = &v32[4];
      *&v36[16] = &v32[16];
      v33 = v4 - 16;
      v34 = (v4 - 12);
      v35 = v4;
      v4 += 28;
    }

    while ((sub_CA9104(v36, &v33) & 0x80) == 0);
  }

  if (v5 >= v2)
  {
    v8 = v2;
  }

  else
  {
    do
    {
      v8 = v2 - 28;
      *v36 = v32;
      *&v36[8] = &v32[4];
      *&v36[16] = &v32[16];
      v33 = (v2 - 28);
      v34 = v2 - 24;
      v35 = v2 - 12;
      v2 -= 28;
    }

    while ((sub_CA9104(v36, &v33) & 0x80) != 0);
  }

LABEL_12:
  if (v5 < v8)
  {
    v9 = *v5;
    *&v36[12] = *(v5 + 12);
    *v36 = v9;
    v10 = *v8;
    *(v5 + 12) = *(v8 + 12);
    *v5 = v10;
    v11 = *v36;
    *(v8 + 12) = *&v36[12];
    *v8 = v11;
    while (1)
    {
      while (1)
      {
        v12 = *(v5 + 28);
        v5 += 28;
        v13 = *v32 >= v12;
        if (*v32 == v12)
        {
          break;
        }

LABEL_14:
        if (!v13)
        {
          goto LABEL_39;
        }
      }

      v14 = *(v5 + 4);
      if (*&v32[4] < v14)
      {
        break;
      }

      if (*&v32[4] == v14 && *&v32[8] != -1)
      {
        v16 = *(v5 + 8);
        if (*&v32[8] < v16 || *&v32[8] == v16 && *&v32[12] < *(v5 + 12))
        {
          break;
        }
      }

      if (v14 >= *&v32[4])
      {
        v17 = *(v5 + 8);
        if (v17 == -1 || v17 >= *&v32[8] && (v17 != *&v32[8] || *(v5 + 12) >= *&v32[12]))
        {
          v18 = *(v5 + 16);
          if (*&v32[16] < v18)
          {
            goto LABEL_39;
          }

          if (*&v32[16] == v18 && *&v32[20] != -1)
          {
            v19 = *(v5 + 20);
            if (*&v32[20] < v19)
            {
              goto LABEL_39;
            }

            if (*&v32[20] == v19)
            {
              v13 = *&v32[24] >= *(v5 + 24);
              goto LABEL_14;
            }
          }
        }
      }
    }

    while (1)
    {
LABEL_39:
      while (1)
      {
        v21 = *(v8 - 28);
        v8 -= 28;
        v20 = *v32 >= v21;
        if (*v32 == v21)
        {
          break;
        }

LABEL_38:
        if (v20)
        {
          goto LABEL_12;
        }
      }

      v22 = *(v8 + 4);
      if (*&v32[4] >= v22)
      {
        v23 = *&v32[4] != v22 || *&v32[8] == -1;
        if (v23 || (v27 = *(v8 + 8), *&v32[8] >= v27) && (*&v32[8] != v27 || *&v32[12] >= *(v8 + 12)))
        {
          if (v22 < *&v32[4])
          {
            goto LABEL_12;
          }

          v24 = *(v8 + 8);
          if (v24 != -1 && (v24 < *&v32[8] || v24 == *&v32[8] && *(v8 + 12) < *&v32[12]))
          {
            goto LABEL_12;
          }

          v25 = *(v8 + 16);
          if (*&v32[16] >= v25)
          {
            if (*&v32[16] != v25 || *&v32[20] == -1)
            {
              goto LABEL_12;
            }

            v26 = *(v8 + 20);
            if (*&v32[20] >= v26)
            {
              if (*&v32[20] != v26)
              {
                goto LABEL_12;
              }

              v20 = *&v32[24] >= *(v8 + 24);
              goto LABEL_38;
            }
          }
        }
      }
    }
  }

  v28 = (v5 - 28);
  if ((v5 - 28) != a1)
  {
    v29 = *v28;
    *(a1 + 12) = *(v5 - 16);
    *a1 = v29;
  }

  v30 = *v32;
  *(v5 - 16) = *&v32[12];
  *v28 = v30;
  return v5;
}

char *sub_CA8B98(char *a1, unint64_t a2)
{
  v4 = 0;
  *v30 = *a1;
  *&v30[12] = *(a1 + 12);
  do
  {
    *v34 = &a1[v4 + 28];
    *&v34[8] = &a1[v4 + 32];
    *&v34[16] = &a1[v4 + 44];
    v31 = v30;
    v32 = &v30[4];
    v33 = &v30[16];
    v4 += 28;
  }

  while ((sub_CA9104(v34, &v31) & 0x80) != 0);
  v5 = &a1[v4];
  v6 = &a1[v4 - 28];
  if (v4 == 28)
  {
    while (v5 < a2)
    {
      v7 = a2 - 28;
      *v34 = a2 - 28;
      *&v34[8] = a2 - 24;
      *&v34[16] = a2 - 12;
      v31 = v30;
      v32 = &v30[4];
      v33 = &v30[16];
      a2 -= 28;
      if ((sub_CA9104(v34, &v31) & 0x80) != 0)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 28;
      *v34 = a2 - 28;
      *&v34[8] = a2 - 24;
      *&v34[16] = a2 - 12;
      v31 = v30;
      v32 = &v30[4];
      v33 = &v30[16];
      a2 -= 28;
    }

    while ((sub_CA9104(v34, &v31) & 0x80) == 0);
  }

LABEL_9:
  if (v5 >= v7)
  {
    goto LABEL_53;
  }

  v8 = v5;
  v9 = v7;
  while (2)
  {
    v10 = *v8;
    *&v34[12] = *(v8 + 12);
    *v34 = v10;
    v11 = *v9;
    *(v8 + 12) = *(v9 + 12);
    *v8 = v11;
    v12 = *v34;
    *(v9 + 12) = *&v34[12];
    *v9 = v12;
    while (1)
    {
      while (1)
      {
        v13 = *(v8 + 7);
        v8 += 28;
        v14 = v13 >= *v30;
        if (v13 != *v30)
        {
          goto LABEL_13;
        }

        v15 = *(v8 + 1);
        if (v15 >= *&v30[4])
        {
          if (v15 != *&v30[4])
          {
            break;
          }

          v16 = *(v8 + 2);
          if (v16 == -1 || v16 >= *&v30[8] && (v16 != *&v30[8] || *(v8 + 3) >= *&v30[12]))
          {
            break;
          }
        }
      }

      if (*&v30[4] < v15)
      {
        break;
      }

      if (*&v30[8] != -1)
      {
        v17 = *(v8 + 2);
        if (*&v30[8] < v17 || *&v30[8] == v17 && *&v30[12] < *(v8 + 3))
        {
          break;
        }
      }

      v18 = *(v8 + 4);
      if (v18 >= *&v30[16])
      {
        if (v18 != *&v30[16])
        {
          goto LABEL_34;
        }

        v19 = *(v8 + 5);
        if (v19 == -1)
        {
          goto LABEL_34;
        }

        if (v19 >= *&v30[20])
        {
          if (v19 != *&v30[20])
          {
            goto LABEL_34;
          }

          v14 = *(v8 + 6) >= *&v30[24];
LABEL_13:
          if (v14)
          {
            goto LABEL_34;
          }
        }
      }
    }

    while (1)
    {
LABEL_34:
      v20 = *(v9 - 7);
      v9 = (v9 - 28);
      v21 = v20 >= *v30;
      if (v20 != *v30)
      {
        goto LABEL_32;
      }

      v22 = *(v9 + 1);
      if (v22 < *&v30[4])
      {
        break;
      }

      if (v22 == *&v30[4])
      {
        v23 = *(v9 + 2);
        if (v23 != -1 && (v23 < *&v30[8] || v23 == *&v30[8] && *(v9 + 3) < *&v30[12]))
        {
          break;
        }
      }

      if (*&v30[4] >= v22)
      {
        if (*&v30[8] == -1 || (v24 = *(v9 + 2), *&v30[8] >= v24) && (*&v30[8] != v24 || *&v30[12] >= *(v9 + 3)))
        {
          v25 = *(v9 + 4);
          if (v25 < *&v30[16])
          {
            break;
          }

          if (v25 == *&v30[16])
          {
            v26 = *(v9 + 5);
            if (v26 != -1)
            {
              if (v26 < *&v30[20])
              {
                break;
              }

              if (v26 == *&v30[20])
              {
                v21 = *(v9 + 6) >= *&v30[24];
LABEL_32:
                if (!v21)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

    if (v8 < v9)
    {
      continue;
    }

    break;
  }

  v6 = v8 - 28;
LABEL_53:
  if (v6 != a1)
  {
    v27 = *v6;
    *(a1 + 12) = *(v6 + 12);
    *a1 = v27;
  }

  v28 = *v30;
  *(v6 + 12) = *&v30[12];
  *v6 = v28;
  return v6;
}

BOOL sub_CA8E94(uint64_t a1, _OWORD *a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 2);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 28);
        *v15 = a2 - 28;
        *&v15[8] = a2 - 24;
        *&v15[16] = a2 - 12;
        v17 = a1;
        v18 = (a1 + 4);
        v19 = (a1 + 16);
        if ((sub_CA9104(v15, &v17) & 0x80) != 0)
        {
          *v15 = *a1;
          *&v15[12] = *(a1 + 12);
          v6 = *(a2 - 1);
          *a1 = *v5;
          *(a1 + 12) = v6;
          *(a2 - 1) = *&v15[12];
          *v5 = *v15;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_CA8368(a1, a1 + 28, (a2 - 28));
      return 1;
    case 4:
      sub_CA8564(a1, a1 + 28, (a1 + 56), (a2 - 28));
      return 1;
    case 5:
      sub_CA86D8(a1, a1 + 28, (a1 + 56), (a1 + 84), (a2 - 28));
      return 1;
  }

LABEL_11:
  v7 = (a1 + 56);
  sub_CA8368(a1, a1 + 28, (a1 + 56));
  v8 = (a1 + 84);
  if ((a1 + 84) == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    *v15 = v8;
    *&v15[8] = v8 + 4;
    *&v15[16] = v8 + 1;
    v17 = v7;
    v18 = v7 + 1;
    v19 = v7 + 4;
    if ((sub_CA9104(v15, &v17) & 0x80) != 0)
    {
      *v15 = *v8;
      *&v15[12] = *(v8 + 12);
      v12 = v9;
      do
      {
        v13 = a1 + v12;
        *(v13 + 84) = *(a1 + v12 + 56);
        *(v13 + 96) = *(a1 + v12 + 68);
        if (v12 == -56)
        {
          v11 = a1;
          goto LABEL_14;
        }

        v17 = v15;
        v18 = &v15[4];
        v19 = &v15[16];
        v16[0] = (v13 + 28);
        v16[1] = (v13 + 32);
        v16[2] = (v13 + 44);
        v12 -= 28;
      }

      while ((sub_CA9104(&v17, v16) & 0x80) != 0);
      v11 = (a1 + v12 + 84);
LABEL_14:
      *v11 = *v15;
      *(v11 + 12) = *&v15[12];
      if (++v10 == 8)
      {
        return (v8 + 28) == a2;
      }
    }

    v7 = v8;
    v9 += 28;
    v8 = (v8 + 28);
    if (v8 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_CA9104(unsigned int **a1, unsigned int **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (!v4)
  {
    return v5;
  }

  v6 = a1[1];
  v7 = a2[1];
  v8 = *v7;
  v9 = *v6;
  if (*v6 < *v7)
  {
    return 255;
  }

  if (v9 == v8)
  {
    v11 = v6[1];
    if (v11 != -1)
    {
      v12 = v7[1];
      if (v11 < v12 || v11 == v12 && v6[2] < v7[2])
      {
        return 255;
      }
    }
  }

  if (v8 < v9)
  {
    return 1;
  }

  v13 = v7[1];
  if (v13 != -1)
  {
    v14 = v6[1];
    if (v13 < v14 || v13 == v14 && v7[2] < v6[2])
    {
      return 1;
    }
  }

  v15 = a1[2];
  v16 = a2[2];
  v17 = *v16;
  v18 = *v15;
  if (*v15 < *v16)
  {
    return 255;
  }

  if (v18 == v17)
  {
    v19 = v15[1];
    if (v19 != -1)
    {
      v20 = v16[1];
      if (v19 < v20 || v19 == v20 && v15[2] < v16[2])
      {
        return 255;
      }
    }
  }

  if (v17 < v18)
  {
    return 1;
  }

  v21 = v16[1];
  if (v21 != -1)
  {
    v22 = v15[1];
    if (v21 < v22 || v21 == v22 && v16[2] < v15[2])
    {
      return 1;
    }
  }

  return 0;
}

__n128 sub_CA9238(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v30 = v4;
    v31 = v5;
    v8 = v6 >> 1;
    if ((v6 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - a1) >> 2))
    {
      v10 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 2)) | 1;
      v11 = (a1 + 28 * v10);
      v12 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 2) + 2;
      if (v12 < a3)
      {
        *v23 = a1 + 28 * v10;
        *&v23[8] = v11 + 4;
        *&v23[16] = v11 + 1;
        v27 = v11 + 7;
        v28 = (v11 + 2);
        v29 = v11 + 11;
        v13 = a4;
        v14 = sub_CA9104(v23, &v27);
        a4 = v13;
        if (v14 < 0)
        {
          v11 = (v11 + 28);
          v10 = v12;
        }
      }

      *v23 = v11;
      *&v23[8] = v11 + 4;
      *&v23[16] = v11 + 1;
      v27 = a4;
      v28 = a4 + 1;
      v29 = a4 + 4;
      v15 = a4;
      if ((sub_CA9104(v23, &v27) & 0x80) == 0)
      {
        v17 = v15;
        *v23 = *v15;
        *&v23[12] = *(v15 + 3);
        do
        {
          v19 = v11;
          v20 = *v11;
          *(v17 + 3) = *(v11 + 12);
          *v17 = v20;
          if (v8 < v10)
          {
            break;
          }

          v21 = (2 * v10) | 1;
          v11 = (a1 + 28 * v21);
          v22 = 2 * v10 + 2;
          if (v22 < a3)
          {
            v27 = (a1 + 28 * v21);
            v28 = v11 + 1;
            v29 = (v11 + 1);
            v24 = v11 + 7;
            v25 = v11 + 2;
            v26 = v11 + 44;
            if ((sub_CA9104(&v27, &v24) & 0x80u) != 0)
            {
              v11 = (v11 + 28);
              v21 = v22;
            }
          }

          v27 = v11;
          v28 = v11 + 1;
          v29 = (v11 + 1);
          v24 = v23;
          v25 = &v23[4];
          v26 = &v23[16];
          v18 = sub_CA9104(&v27, &v24);
          v17 = v19;
          v10 = v21;
        }

        while ((v18 & 0x80) == 0);
        result = *v23;
        *(v19 + 12) = *&v23[12];
        *v19 = result;
      }
    }
  }

  return result;
}

__n128 sub_CA943C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v32 = v4;
    v33 = v5;
    v9 = 0;
    *v26 = *a1;
    *&v26[12] = *(a1 + 12);
    v10 = (a4 - 2) >> 1;
    v11 = a1;
    do
    {
      v13 = v11 + 28 * v9;
      v14 = v13 + 28;
      v15 = (2 * v9) | 1;
      v16 = 2 * v9 + 2;
      if (v16 < a4)
      {
        v17 = v13 + 56;
        *v27 = v13 + 28;
        *&v27[8] = v13 + 32;
        *&v27[16] = v13 + 44;
        v29 = (v13 + 56);
        v30 = v13 + 60;
        v31 = v13 + 72;
        if ((sub_CA9104(v27, &v29) & 0x80u) != 0)
        {
          v14 = v17;
          v15 = v16;
        }
      }

      v12 = *v14;
      *(v11 + 12) = *(v14 + 12);
      *v11 = v12;
      v11 = v14;
      v9 = v15;
    }

    while (v15 <= v10);
    v18 = (a2 - 28);
    if (v14 == (a2 - 28))
    {
      result = *v26;
      *(v14 + 12) = *&v26[12];
      *v14 = *v26;
    }

    else
    {
      v19 = *v18;
      *(v14 + 12) = *(a2 - 16);
      *v14 = v19;
      *v18 = *v26;
      result = *&v26[12];
      *(a2 - 16) = *&v26[12];
      v21 = v14 - a1 + 28;
      if (v21 >= 29)
      {
        v22 = (0x6DB6DB6DB6DB6DB7 * (v21 >> 2) - 2) >> 1;
        v23 = (a1 + 28 * v22);
        *v27 = v23;
        *&v27[8] = v23 + 4;
        *&v27[16] = v23 + 1;
        v29 = v14;
        v30 = v14 + 4;
        v31 = (v14 + 1);
        if ((sub_CA9104(v27, &v29) & 0x80) != 0)
        {
          v24 = *v14;
          *&v27[12] = *(v14 + 12);
          *v27 = v24;
          do
          {
            v25 = v23;
            result = *v23;
            *(v14 + 12) = *(v23 + 12);
            *v14 = result;
            if (!v22)
            {
              break;
            }

            v22 = (v22 - 1) >> 1;
            v23 = (a1 + 28 * v22);
            v29 = v23;
            v30 = v23 + 4;
            v31 = (v23 + 1);
            v28[0] = v27;
            v28[1] = &v27[4];
            v28[2] = &v27[16];
            v14 = v25;
          }

          while ((sub_CA9104(&v29, v28) & 0x80) != 0);
          *v25 = *v27;
          result.n128_u64[0] = *&v27[12];
          *(v25 + 12) = *&v27[12];
        }
      }
    }
  }

  return result;
}

void sub_CA9668(void *a1, unsigned int a2, unsigned int *a3, unsigned int *a4, void *a5)
{
  v10 = *a3;
  LODWORD(v11) = *a4;
  if (v10 != *a4)
  {
    if (v10 >= v11)
    {
LABEL_24:
      if (!*(a4 + 1))
      {
        return;
      }

      v39 = sub_CA9A50(a1, a2, v11);
      v40 = v31;
      sub_CAA088(a1, a2, *a4, 0, *a4, a4[2], &v39);
      v13 = a5[4];
      v14 = a5[5];
      if (v13 < v14)
      {
        goto LABEL_3;
      }

LABEL_26:
      v32 = a5[3];
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v32) >> 2) + 1;
      if (v33 > 0x1555555555555555)
      {
LABEL_39:
        sub_1794();
      }

      v34 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v32) >> 2);
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0xAAAAAAAAAAAAAAALL)
      {
        v35 = 0x1555555555555555;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        if (v35 <= 0x1555555555555555)
        {
          operator new();
        }

        goto LABEL_40;
      }

      v36 = 4 * ((v13 - v32) >> 2);
      *v36 = v39;
      *(v36 + 8) = v40;
      v16 = v36 + 12;
      v37 = (v36 - (v13 - v32));
      memcpy(v37, v32, v13 - v32);
      a5[3] = v37;
      a5[4] = v16;
      a5[5] = 0;
      if (v32)
      {
        operator delete(v32);
      }

      goto LABEL_37;
    }

    v38 = a2;
    while (1)
    {
      while (1)
      {
        v39 = sub_CA9A50(a1, a2, v10);
        v40 = v18;
        if (v10 != *a3 || !*(a3 + 1))
        {
          break;
        }

        v21 = (a1[549] + *(a1[549] - *a1[549] + 4));
        v22 = (&v21[v38 + 1] + *v21 + *(&v21[v38 + 1] + *v21));
        v23 = (v22 + *(v22 - *v22 + 6));
        sub_CAA088(a1, a2, *a3, a3[2], *a3 | (*(&v23[3 * *a3 + 3] + *v23) << 32), 0, &v39);
        v19 = a5[4];
        v20 = a5[5];
        if (v19 >= v20)
        {
          goto LABEL_12;
        }

LABEL_6:
        v17 = v39;
        *(v19 + 8) = v40;
        *v19 = v17;
        a5[4] = v19 + 12;
        ++v10;
        v11 = *a4;
        if (v10 >= v11)
        {
          goto LABEL_24;
        }
      }

      sub_CAA378(a1, a2, v10, &v39);
      v19 = a5[4];
      v20 = a5[5];
      if (v19 < v20)
      {
        goto LABEL_6;
      }

LABEL_12:
      v24 = a5[3];
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v24) >> 2) + 1;
      if (v25 > 0x1555555555555555)
      {
        goto LABEL_39;
      }

      v26 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v24) >> 2);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0xAAAAAAAAAAAAAAALL)
      {
        v27 = 0x1555555555555555;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 <= 0x1555555555555555)
        {
          operator new();
        }

LABEL_40:
        sub_1808();
      }

      v28 = 4 * ((v19 - v24) >> 2);
      *v28 = v39;
      *(v28 + 8) = v40;
      v29 = v28 + 12;
      v30 = (v28 - (v19 - v24));
      memcpy(v30, v24, v19 - v24);
      a5[3] = v30;
      a5[4] = v29;
      a5[5] = 0;
      if (v24)
      {
        operator delete(v24);
      }

      a5[4] = v29;
      ++v10;
      v11 = *a4;
      if (v10 >= v11)
      {
        goto LABEL_24;
      }
    }
  }

  v39 = sub_CA9A50(a1, a2, *a3);
  v40 = v12;
  sub_CAA088(a1, a2, *a3, a3[2], *a4, a4[2], &v39);
  v13 = a5[4];
  v14 = a5[5];
  if (v13 >= v14)
  {
    goto LABEL_26;
  }

LABEL_3:
  v15 = v39;
  *(v13 + 8) = v40;
  *v13 = v15;
  v16 = v13 + 12;
LABEL_37:
  a5[4] = v16;
}

uint64_t sub_CA9A50(void *a1, int a2, unsigned int a3)
{
  v5 = a1[549];
  v6 = (v5 - *v5);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = v5 + v7 + *(v5 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[4 * a2 + 4 + *&v8[4 * a2 + 4]];
  v10 = &v9[-*v9];
  if (*v10 < 7u)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 3);
    if (v11)
    {
      v11 += &v9[*&v9[v11]];
    }
  }

  v12 = v11 + 12 * a3;
  v14 = *(v12 + 4);
  v13 = v12 + 4;
  v79 = v14;
  v15 = a1[540];
  if (!*&v15)
  {
    goto LABEL_29;
  }

  v16 = *(v13 + 4);
  v17 = vcnt_s8(v15);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = *(v13 + 4);
    if (*&v15 <= v16)
    {
      v18 = v16 % v15.i32[0];
    }
  }

  else
  {
    v18 = (v15.i32[0] - 1) & v16;
  }

  v19 = *(a1[539] + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_29:
    v24 = sub_2FEF94((a1[531] - a1[530]) >> 3);
    v80 = *(v13 + 4);
    v81 = &v80;
    *(sub_CAA828(a1 + 539, &v80) + 5) = v24;
    LODWORD(v16) = *(v13 + 4);
    v25 = &v9[*&v9[-*v9 + 8]];
    v26 = *&v25[*v25] + v16;
    if (v16 <= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = *(v13 + 4);
    }

    if (v16 >= v26)
    {
      goto LABEL_53;
    }

    v77 = v9;
    while (1)
    {
      v29 = a1[549];
      v30 = (v29 - *v29);
      if (*v30 >= 7u && (v31 = v30[3]) != 0)
      {
        v32 = v29 + v31 + *(v29 + v31) + 4;
        v33 = a1[531];
        v34 = a1[532];
        if (v33 >= v34)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v32 = 4;
        v33 = a1[531];
        v34 = a1[532];
        if (v33 >= v34)
        {
LABEL_41:
          v35 = a1[530];
          v36 = v33 - v35;
          v37 = (v33 - v35) >> 3;
          v38 = v37 + 1;
          if ((v37 + 1) >> 61)
          {
            sub_1794();
          }

          v39 = v34 - v35;
          if (v39 >> 2 > v38)
          {
            v38 = v39 >> 2;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFF8)
          {
            v40 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v38;
          }

          if (v40)
          {
            if (!(v40 >> 61))
            {
              operator new();
            }

            goto LABEL_106;
          }

          v41 = v37;
          v42 = (8 * v37);
          v43 = *(v32 + 8 * v16);
          v44 = &v42[-v41];
          *v42 = v43;
          v28 = v42 + 1;
          memcpy(v44, v35, v36);
          a1[530] = v44;
          a1[531] = v28;
          a1[532] = 0;
          if (v35)
          {
            operator delete(v35);
          }

          goto LABEL_35;
        }
      }

      *v33 = *(v32 + 8 * v16);
      v28 = v33 + 8;
LABEL_35:
      a1[531] = v28;
      LODWORD(v16) = v16 + 1;
      if (v27 == v16)
      {
        LODWORD(v16) = *(v13 + 4);
        v9 = v77;
        goto LABEL_53;
      }
    }
  }

  if (v17.u32[0] < 2uLL)
  {
    v21 = *&v15 - 1;
    while (1)
    {
      v23 = v20[1];
      if (v23 == v16)
      {
        if (*(v20 + 4) == v16)
        {
          goto LABEL_53;
        }
      }

      else if ((v23 & v21) != v18)
      {
        goto LABEL_29;
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v22 = v20[1];
    if (v22 == v16)
    {
      break;
    }

    if (v22 >= *&v15)
    {
      v22 %= *&v15;
    }

    if (v22 != v18)
    {
      goto LABEL_29;
    }

LABEL_19:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_29;
    }
  }

  if (*(v20 + 4) != v16)
  {
    goto LABEL_19;
  }

LABEL_53:
  v45 = a1[540];
  if (!v45)
  {
    goto LABEL_105;
  }

  v46 = vcnt_s8(v45);
  v46.i16[0] = vaddlv_u8(v46);
  if (v46.u32[0] > 1uLL)
  {
    v47 = v16;
    if (v45 <= v16)
    {
      v47 = v16 % v45;
    }
  }

  else
  {
    v47 = (v45 - 1) & v16;
  }

  v48 = *(a1[539] + 8 * v47);
  if (!v48 || (v49 = *v48) == 0)
  {
LABEL_105:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v46.u32[0] < 2uLL)
  {
    v50 = v45 - 1;
    while (1)
    {
      v51 = v49[1];
      if (v51 == v16)
      {
        if (*(v49 + 4) == v16)
        {
          goto LABEL_66;
        }
      }

      else if ((v51 & v50) != v47)
      {
        goto LABEL_105;
      }

      v49 = *v49;
      if (!v49)
      {
        goto LABEL_105;
      }
    }
  }

  while (2)
  {
    v54 = v49[1];
    if (v54 != v16)
    {
      if (v54 >= v45)
      {
        v54 %= v45;
      }

      if (v54 != v47)
      {
        goto LABEL_105;
      }

      goto LABEL_70;
    }

    if (*(v49 + 4) != v16)
    {
LABEL_70:
      v49 = *v49;
      if (!v49)
      {
        goto LABEL_105;
      }

      continue;
    }

    break;
  }

LABEL_66:
  v52 = &v9[-*v9];
  if (*v52 < 0x11u)
  {
    v55 = 0;
    v56 = *&v9[*(v52 + 2) + *&v9[*(v52 + 2)]];
    v57 = v56 * a3;
  }

  else
  {
    if (*(v52 + 8))
    {
      v53 = *&v9[*(v52 + 8)];
    }

    else
    {
      v53 = 0;
    }

    v56 = *&v9[*(v52 + 2) + *&v9[*(v52 + 2)]];
    v57 = v53 + v56 * a3;
    v58 = *(v52 + 8);
    if (v58)
    {
      v55 = *&v9[v58];
    }

    else
    {
      v55 = 0;
    }
  }

  v78 = *(v49 + 5);
  v59 = v56 + v56 * a3 + v55;
  if (v57 <= v59)
  {
    v60 = v56 + v56 * a3 + v55;
  }

  else
  {
    v60 = v57;
  }

  if (v57 < v59)
  {
    do
    {
      v63 = a1[549];
      v64 = (v63 - *v63);
      if (*v64 >= 0xBu && (v65 = v64[5]) != 0)
      {
        v66 = &v63[3 * v57] + v65 + *(v63 + v65);
        v67 = a1[537];
        v68 = a1[538];
        if (v67 < v68)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v66 = 12 * v57;
        v67 = a1[537];
        v68 = a1[538];
        if (v67 < v68)
        {
LABEL_86:
          v61 = *(v66 + 4);
          *(v67 + 8) = *(v66 + 12);
          *v67 = v61;
          v62 = v67 + 12;
          goto LABEL_87;
        }
      }

      v69 = a1[536];
      v70 = 0xAAAAAAAAAAAAAAABLL * ((v67 - v69) >> 2) + 1;
      if (v70 > 0x1555555555555555)
      {
        sub_1794();
      }

      v71 = 0xAAAAAAAAAAAAAAABLL * ((v68 - v69) >> 2);
      if (2 * v71 > v70)
      {
        v70 = 2 * v71;
      }

      if (v71 >= 0xAAAAAAAAAAAAAAALL)
      {
        v72 = 0x1555555555555555;
      }

      else
      {
        v72 = v70;
      }

      if (v72)
      {
        if (v72 <= 0x1555555555555555)
        {
          operator new();
        }

LABEL_106:
        sub_1808();
      }

      v73 = 4 * ((v67 - v69) >> 2);
      v74 = *(v66 + 4);
      *(v73 + 8) = *(v66 + 12);
      *v73 = v74;
      v62 = v73 + 12;
      v75 = (v73 - (v67 - v69));
      memcpy(v75, v69, v67 - v69);
      a1[536] = v75;
      a1[537] = v62;
      a1[538] = 0;
      if (v69)
      {
        operator delete(v69);
      }

LABEL_87:
      a1[537] = v62;
      ++v57;
    }

    while (v60 != v57);
  }

  return v79 | (v78 << 32);
}

void sub_CAA088(void *a1, int a2, unint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = HIDWORD(a3);
  v9 = a1[549];
  v10 = (v9 - *v9);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v12 = v9 + v11 + *(v9 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = &v12[4 * a2 + 4 + *&v12[4 * a2 + 4]];
  v14 = &v13[-*v13];
  if (*v14 >= 7u && (v15 = *(v14 + 3)) != 0)
  {
    v16 = &v13[v15 + *&v13[v15]];
  }

  else
  {
    v16 = 0;
  }

  v17 = &v16[12 * a3];
  if (a6)
  {
    v18 = HIDWORD(a5) + 1;
  }

  else
  {
    v18 = HIDWORD(a5);
  }

  *(a7 + 8) = (v18 - BYTE4(a3)) | (sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((a1[534] - a1[533]) >> 2)) << 8);
  v19 = *(v17 + 3) >> 8;
  v20 = v19 + v8;
  v21 = v19 + v18;
  if (v20 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (v20 < v21)
  {
    do
    {
      v25 = a1[549];
      v26 = (v25 - *v25);
      if (*v26 >= 9u && (v27 = v26[4]) != 0)
      {
        v28 = &v25[3 * v20] + v27 + *(v25 + v27);
        v29 = a1[534];
        v30 = a1[535];
        if (v29 >= v30)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v28 = 12 * v20;
        v29 = a1[534];
        v30 = a1[535];
        if (v29 >= v30)
        {
LABEL_24:
          v31 = a1[533];
          v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v31) >> 2) + 1;
          if (v32 > 0x1555555555555555)
          {
            sub_1794();
          }

          v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 2);
          if (2 * v33 > v32)
          {
            v32 = 2 * v33;
          }

          if (v33 >= 0xAAAAAAAAAAAAAAALL)
          {
            v34 = 0x1555555555555555;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            if (v34 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v35 = 4 * ((v29 - v31) >> 2);
          v36 = *(v28 + 4);
          *(v35 + 8) = *(v28 + 12);
          *v35 = v36;
          v24 = v35 + 12;
          v37 = (v35 - (v29 - v31));
          memcpy(v37, v31, v29 - v31);
          a1[533] = v37;
          a1[534] = v24;
          a1[535] = 0;
          if (v31)
          {
            operator delete(v31);
          }

          goto LABEL_18;
        }
      }

      v23 = *(v28 + 4);
      *(v29 + 8) = *(v28 + 12);
      *v29 = v23;
      v24 = v29 + 12;
LABEL_18:
      a1[534] = v24;
      ++v20;
    }

    while (v22 != v20);
  }

  if (a6)
  {
    *(a1[534] - 4) = *(a1[534] - 8) + *(a1[534] - 12) * a6;
  }

  if (a4)
  {
    v38 = *(a7 + 8) >> 8;
    v39 = a1[533];
    if (0xAAAAAAAAAAAAAAABLL * ((a1[534] - v39) >> 2) <= v38)
    {
      sub_6FAB4();
    }

    *(v39 + 12 * v38 + 4) += *(v39 + 12 * v38) * a4;
  }
}

void sub_CAA378(void *a1, int a2, unsigned int a3, uint64_t a4)
{
  v6 = a1[549];
  v7 = (v6 - *v6);
  if (*v7 >= 5u && (v8 = v7[2]) != 0)
  {
    v9 = v6 + v8 + *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * a2 + 4 + *&v9[4 * a2 + 4]];
  v11 = &v10[-*v10];
  if (*v11 >= 7u)
  {
    v12 = *(v11 + 3);
    if (v12)
    {
      v13 = &v10[12 * a3 + v12 + *&v10[v12]];
      v14 = a1[545];
      if (!*&v14)
      {
        goto LABEL_29;
      }

LABEL_10:
      v15 = *(v13 + 12) >> 8;
      v16 = vcnt_s8(v14);
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.u32[0] > 1uLL)
      {
        v17 = *(v13 + 12) >> 8;
        if (*&v14 <= v15)
        {
          v17 = v15 % v14.i32[0];
        }
      }

      else
      {
        v17 = (v14.i32[0] - 1) & v15;
      }

      v18 = *(a1[544] + 8 * v17);
      if (v18)
      {
        v19 = *v18;
        if (v19)
        {
          if (v16.u32[0] < 2uLL)
          {
            v20 = *&v14 - 1;
            while (1)
            {
              v22 = v19[1];
              if (v22 == v15)
              {
                if (*(v19 + 4) == v15)
                {
                  goto LABEL_50;
                }
              }

              else if ((v22 & v20) != v17)
              {
                goto LABEL_29;
              }

              v19 = *v19;
              if (!v19)
              {
                goto LABEL_29;
              }
            }
          }

          while (1)
          {
            v21 = v19[1];
            if (v21 == v15)
            {
              if (*(v19 + 4) == v15)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v21 >= *&v14)
              {
                v21 %= *&v14;
              }

              if (v21 != v17)
              {
                goto LABEL_29;
              }
            }

            v19 = *v19;
            if (!v19)
            {
              goto LABEL_29;
            }
          }
        }
      }

      goto LABEL_29;
    }
  }

  v13 = 12 * a3;
  v14 = a1[545];
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_29:
  v23 = sub_2FEF94(0xAAAAAAAAAAAAAAABLL * ((a1[534] - a1[533]) >> 2));
  v52 = *(v13 + 12) >> 8;
  v53 = &v52;
  *(sub_CAA828(a1 + 544, &v52) + 5) = v23;
  v15 = *(v13 + 12) >> 8;
  if (!*(v13 + 12))
  {
    v41 = a1[545];
    if (!v41)
    {
      goto LABEL_73;
    }

    goto LABEL_53;
  }

  v50 = v13;
  v51 = a4;
  v24 = 12 * v15 + 4;
  v25 = v15 + *(v13 + 12) - v15;
  do
  {
    v28 = a1[549];
    v29 = (v28 - *v28);
    if (*v29 >= 9u && (v30 = v29[4]) != 0)
    {
      v31 = v28 + v30 + *(v28 + v30) + v24;
      v32 = a1[534];
      v33 = a1[535];
      if (v32 < v33)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v31 = v24;
      v32 = a1[534];
      v33 = a1[535];
      if (v32 < v33)
      {
LABEL_31:
        v26 = *v31;
        *(v32 + 8) = *(v31 + 2);
        *v32 = v26;
        v27 = v32 + 12;
        goto LABEL_32;
      }
    }

    v34 = a1[533];
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v34) >> 2) + 1;
    if (v35 > 0x1555555555555555)
    {
      sub_1794();
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v34) >> 2);
    if (2 * v36 > v35)
    {
      v35 = 2 * v36;
    }

    if (v36 >= 0xAAAAAAAAAAAAAAALL)
    {
      v37 = 0x1555555555555555;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      if (v37 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v38 = 4 * ((v32 - v34) >> 2);
    v39 = *v31;
    *(v38 + 8) = *(v31 + 2);
    *v38 = v39;
    v27 = v38 + 12;
    v40 = (v38 - (v32 - v34));
    memcpy(v40, v34, v32 - v34);
    a1[533] = v40;
    a1[534] = v27;
    a1[535] = 0;
    if (v34)
    {
      operator delete(v34);
    }

LABEL_32:
    a1[534] = v27;
    v24 += 12;
    --v25;
  }

  while (v25);
  v13 = v50;
  a4 = v51;
  LODWORD(v15) = *(v50 + 12) >> 8;
LABEL_50:
  v41 = a1[545];
  if (!v41)
  {
LABEL_73:
    sub_49EC("unordered_map::at: key not found");
  }

LABEL_53:
  v42 = vcnt_s8(v41);
  v42.i16[0] = vaddlv_u8(v42);
  if (v42.u32[0] > 1uLL)
  {
    v43 = v15;
    if (v41 <= v15)
    {
      v43 = v15 % v41;
    }
  }

  else
  {
    v43 = (v41 - 1) & v15;
  }

  v44 = *(a1[544] + 8 * v43);
  if (!v44)
  {
    goto LABEL_73;
  }

  v45 = *v44;
  if (!v45)
  {
    goto LABEL_73;
  }

  if (v42.u32[0] < 2uLL)
  {
    v46 = v41 - 1;
    while (1)
    {
      v48 = v45[1];
      if (v48 == v15)
      {
        if (*(v45 + 4) == v15)
        {
          goto LABEL_72;
        }
      }

      else if ((v48 & v46) != v43)
      {
        goto LABEL_73;
      }

      v45 = *v45;
      if (!v45)
      {
        goto LABEL_73;
      }
    }
  }

  while (2)
  {
    v47 = v45[1];
    if (v47 != v15)
    {
      if (v47 >= v41)
      {
        v47 %= v41;
      }

      if (v47 != v43)
      {
        goto LABEL_73;
      }

      goto LABEL_62;
    }

    if (*(v45 + 4) != v15)
    {
LABEL_62:
      v45 = *v45;
      if (!v45)
      {
        goto LABEL_73;
      }

      continue;
    }

    break;
  }

LABEL_72:
  v49 = *(v45 + 5);
  *(a4 + 8) = *(a4 + 8) | (v49 << 8);
  *(a4 + 8) = *(v13 + 12) | (v49 << 8);
}

uint64_t *sub_CAA828(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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
        if (*(v7 + 4) == v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void *sub_CAAB64(void *a1)
{
  v2 = a1[552];
  if (v2)
  {
    do
    {
      v17 = *v2;
      v18 = v2[2];
      if (v18)
      {
        operator delete(v18);
      }

      operator delete(v2);
      v2 = v17;
    }

    while (v17);
  }

  v3 = a1[550];
  a1[550] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[546];
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = a1[544];
  a1[544] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[541];
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a1[539];
  a1[539] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = a1[536];
  if (v10)
  {
    a1[537] = v10;
    operator delete(v10);
  }

  v11 = a1[533];
  if (v11)
  {
    a1[534] = v11;
    operator delete(v11);
  }

  v12 = a1[530];
  if (v12)
  {
    a1[531] = v12;
    operator delete(v12);
  }

  v13 = a1[527];
  if (v13)
  {
    v14 = a1[528];
    v15 = a1[527];
    if (v14 != v13)
    {
      v16 = v14 - 1;
      do
      {
        v20 = *v16;
        *v16 = 0;
        if (v20)
        {
          sub_C4D588(v16, v20);
        }
      }

      while (v16-- != v13);
      v15 = a1[527];
    }

    a1[528] = v13;
    operator delete(v15);
  }

  sub_506524(a1 + 2);
  v21 = a1[1];
  if (!v21 || atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  return a1;
}

uint64_t sub_CAAD04(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 == *a2)
  {
    *(a1 + 78) = 1;
    v13 = *(a1 + 40);
  }

  else
  {
    sub_CA55DC(a1, v5 >> 2, 4uLL);
    v6 = *(a1 + 56);
    if (v6 - *(a1 + 64) < v5)
    {
      sub_C7BF74(a1, v5);
      v6 = *(a1 + 56);
    }

    *(a1 + 56) = v6 - v5;
    *(a1 + 40) += v5;
    memcpy((v6 - v5), v4, v5);
    *(a1 + 78) = 0;
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v7 = *(a1 + 40);
    v8 = -v7 & 3;
    if ((-v7 & 3) != 0)
    {
      v9 = *(a1 + 56);
      if (v9 - *(a1 + 64) < v8)
      {
        sub_C7BF74(a1, v8);
        v9 = *(a1 + 56);
        v7 = *(a1 + 40);
      }

      v10 = 0;
      *(a1 + 56) = v9 - v8;
      *(a1 + 40) = v7 + v8;
      do
      {
        *(*(a1 + 56) + v10++) = 0;
      }

      while (v8 != v10);
    }

    v11 = *(a1 + 56);
    if ((v11 - *(a1 + 64)) <= 3)
    {
      sub_C7BF74(a1, 4uLL);
      v11 = *(a1 + 56);
    }

    *(a1 + 40) += 4;
    *(v11 - 4) = v5 >> 4;
    v12 = v11 - 4;
    *(a1 + 56) = v12;
    v13 = *(a1 + 40);
    *(a1 + 78) = 1;
    if (v13)
    {
      v14 = -v13;
      if (*(a1 + 80) <= 3uLL)
      {
        *(a1 + 80) = 4;
      }

      v15 = v13;
      v16 = v14 & 3;
      if ((v14 & 3) != 0)
      {
        v17 = v13;
        if (v12 - *(a1 + 64) < v16)
        {
          sub_C7BF74(a1, v16);
          v12 = *(a1 + 56);
          v17 = *(a1 + 40);
        }

        v18 = 0;
        *(a1 + 56) = v12 - v16;
        *(a1 + 40) = v17 + v16;
        do
        {
          *(*(a1 + 56) + v18++) = 0;
        }

        while (v16 != v18);
        v15 = *(a1 + 40);
      }

      sub_CA58F0(a1, 4, v15 - v13 + 4, 0);
    }
  }

  return sub_C7C16C(a1, v13);
}

uint64_t sub_CAAEFC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 == *a2)
  {
    *(a1 + 78) = 1;
    v14 = *(a1 + 40);
  }

  else
  {
    sub_CA55DC(a1, v5 >> 2, 4uLL);
    v6 = *(a1 + 56);
    if (v6 - *(a1 + 64) < v5)
    {
      sub_C7BF74(a1, v5);
      v6 = *(a1 + 56);
    }

    *(a1 + 56) = v6 - v5;
    *(a1 + 40) += v5;
    memcpy((v6 - v5), v4, v5);
    *(a1 + 78) = 0;
    if (*(a1 + 80) <= 3uLL)
    {
      *(a1 + 80) = 4;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 2);
    v8 = *(a1 + 40);
    v9 = -v8 & 3;
    if ((-v8 & 3) != 0)
    {
      v10 = *(a1 + 56);
      if (v10 - *(a1 + 64) < v9)
      {
        sub_C7BF74(a1, v9);
        v10 = *(a1 + 56);
        v8 = *(a1 + 40);
      }

      v11 = 0;
      *(a1 + 56) = v10 - v9;
      *(a1 + 40) = v8 + v9;
      do
      {
        *(*(a1 + 56) + v11++) = 0;
      }

      while (v9 != v11);
    }

    v12 = *(a1 + 56);
    if ((v12 - *(a1 + 64)) <= 3)
    {
      sub_C7BF74(a1, 4uLL);
      v12 = *(a1 + 56);
    }

    *(a1 + 40) += 4;
    *(v12 - 4) = v7;
    v13 = v12 - 4;
    *(a1 + 56) = v13;
    v14 = *(a1 + 40);
    *(a1 + 78) = 1;
    if (v14)
    {
      v15 = -v14;
      if (*(a1 + 80) <= 3uLL)
      {
        *(a1 + 80) = 4;
      }

      v16 = v14;
      v17 = v15 & 3;
      if ((v15 & 3) != 0)
      {
        v18 = v14;
        if (v13 - *(a1 + 64) < v17)
        {
          sub_C7BF74(a1, v17);
          v13 = *(a1 + 56);
          v18 = *(a1 + 40);
        }

        v19 = 0;
        *(a1 + 56) = v13 - v17;
        *(a1 + 40) = v18 + v17;
        do
        {
          *(*(a1 + 56) + v19++) = 0;
        }

        while (v17 != v19);
        v16 = *(a1 + 40);
      }

      sub_CA58F0(a1, 4, v16 - v14 + 4, 0);
    }
  }

  return sub_C7C16C(a1, v14);
}