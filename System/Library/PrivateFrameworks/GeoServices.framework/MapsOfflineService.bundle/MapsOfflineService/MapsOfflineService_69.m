void sub_47232C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_45B1B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_472340(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v4 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v4 = v3 + 1;
  }

  v5 = 0x2127599BF4325C37 * (v4 ^ (v3 >> 23));
  v6 = v5 ^ (v5 >> 47);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_28;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 47);
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
LABEL_28:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (__PAIR64__(*(v11 + 10), *(v11 + 4)) == __PAIR64__(WORD2(v2), v2) && *(v11 + 22) == BYTE6(v2))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_28;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_28;
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
      goto LABEL_28;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_28;
    }
  }

  if (__PAIR64__(*(v11 + 10), *(v11 + 4)) != __PAIR64__(WORD2(v2), v2) || *(v11 + 22) != BYTE6(v2))
  {
    goto LABEL_21;
  }

  return v11;
}

uint64_t *sub_4726E4(uint64_t *result, uint64_t **a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v4 = *a2;
    v5 = **a2;
    while (__PAIR64__(*(v3 + 2), *v3) != __PAIR64__(WORD2(v5), v5) || *(v3 + 6) != BYTE6(v5))
    {
      v3 += 2;
      if (v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      v6 = v3 + 2;
      if (v3 + 2 != v2)
      {
        do
        {
          if (__PAIR64__(*(v6 + 2), *v6) != __PAIR64__(WORD2(*v4), *v4) || *(v6 + 6) != BYTE6(*v4))
          {
            v7 = *v6;
            *(v3 + 3) = *(v6 + 3);
            *v3 = v7;
            v3 += 2;
          }

          v6 += 2;
        }

        while (v6 != v2);
        v2 = result[1];
      }
    }
  }

  if (v3 != v2)
  {
    result[1] = v3;
  }

  return result;
}

uint64_t *sub_4727F8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v4 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v4 = v3 + 1;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = (0x2127599BF4325C37 * (v4 ^ (v3 >> 23))) ^ ((0x2127599BF4325C37 * (v4 ^ (v3 >> 23))) >> 47);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v5)
    {
      v8 = v6 % *&v5;
    }
  }

  else
  {
    v8 = v6 & (*&v5 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = result[1];
        if (v6 == v12)
        {
          if (__PAIR64__(*(result + 10), *(result + 4)) == __PAIR64__(WORD2(v2), v2) && *(result + 22) == BYTE6(v2))
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
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
      v13 = result[1];
      if (v6 == v13)
      {
        if (__PAIR64__(*(result + 10), *(result + 4)) == __PAIR64__(WORD2(v2), v2) && *(result + 22) == BYTE6(v2))
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
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

void sub_472940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  sub_463B18(&v6, 100);
  v8 = 0u;
  v7 = 0u;
  v9 = 1065353216;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a2;
  operator new();
}

void sub_47464C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a60);
  if (a57)
  {
    operator delete(a57);
    v61 = STACK[0x290];
    v62 = a22;
    if (!STACK[0x290])
    {
LABEL_5:
      v63 = STACK[0x2B8];
      if (!STACK[0x2B8])
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v61 = STACK[0x290];
    v62 = a22;
    if (!STACK[0x290])
    {
      goto LABEL_5;
    }
  }

  STACK[0x298] = v61;
  operator delete(v61);
  v63 = STACK[0x2B8];
  if (!STACK[0x2B8])
  {
LABEL_7:
    v64 = *v62;
    if (*v62)
    {
      *(v62 + 8) = v64;
      operator delete(v64);
      v65 = STACK[0x310];
      if (!STACK[0x310])
      {
LABEL_9:
        v66 = STACK[0x350];
        if (!STACK[0x350])
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v65 = STACK[0x310];
      if (!STACK[0x310])
      {
        goto LABEL_9;
      }
    }

    STACK[0x318] = v65;
    operator delete(v65);
    v66 = STACK[0x350];
    if (!STACK[0x350])
    {
LABEL_10:
      sub_46FB2C(&STACK[0x398]);
      _Unwind_Resume(a1);
    }

LABEL_13:
    STACK[0x358] = v66;
    operator delete(v66);
    sub_46FB2C(&STACK[0x398]);
    _Unwind_Resume(a1);
  }

LABEL_6:
  STACK[0x2C0] = v63;
  operator delete(v63);
  goto LABEL_7;
}

uint64_t sub_474A60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v31);
  v8 = *a3;
  v9 = *(a3 + 8);
  if (*a3 != v9 && (((v9 - v8) >> 3) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = 0;
    v11 = *a1;
    v12 = 2;
    v13 = 1;
    while (1)
    {
      (*(*v11 + 32))(&v42, v11, &v8[v13], 0);
      v14 = HIDWORD(v42);
      if ((v46 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v45);
      v15 = v43;
      if (v43)
      {
        goto LABEL_9;
      }

LABEL_4:
      v10 += v14;
      v13 = v12;
      v8 = *a3;
      ++v12;
      if (((*(a3 + 8) - *a3) >> 3) - 1 <= v13)
      {
        goto LABEL_10;
      }
    }

    v15 = v43;
    if (!v43)
    {
      goto LABEL_4;
    }

LABEL_9:
    v44 = v15;
    operator delete(v15);
    goto LABEL_4;
  }

LABEL_10:
  sub_4A5C(&v31, "Pathlet ", 8);
  v16 = std::ostream::operator<<();
  v17 = sub_4A5C(v16, " search: ", 9);
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

  v21 = sub_4A5C(v17, v19, v20);
  sub_4A5C(v21, ": ", 2);
  if (*a3 == *(a3 + 8))
  {
    sub_4A5C(&v31, "empty pathlet", 13);
  }

  else
  {
    sub_4A5C(&v31, "pathlet (segments:", 18);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, ", distance_m:", 13);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, ")", 1);
    v24 = sub_4A5C(&v31, "start:", 6);
    v25 = sub_30E900(v24, **a3);
    v26 = sub_4A5C(v25, ", end:", 6);
    sub_30E900(v26, *(*(a3 + 8) - 8));
  }

  if ((v41 & 0x10) != 0)
  {
    v28 = v40;
    if (v40 < v37)
    {
      v40 = v37;
      v28 = v37;
    }

    v29 = v36;
    v27 = v28 - v36;
    if (v28 - v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v27 = 0;
      a4[23] = 0;
      goto LABEL_30;
    }

    v29 = v34;
    v27 = v35 - v34;
    if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_34:
      sub_3244();
    }
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  a4[23] = v27;
  if (v27)
  {
    memmove(a4, v29, v27);
  }

LABEL_30:
  a4[v27] = 0;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v33);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_474E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_474E7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

unint64_t sub_474E90(void *a1, uint64_t a2, unsigned int a3)
{
  v19 = a2;
  if (sub_4727F8((a1[8] + 40 * a3), &v19))
  {
    v6 = (a1[8] + 40 * a3);
    v20 = &v19;
    return *(sub_472340(v6, &v19) + 6);
  }

  else
  {
    v9 = a1[5];
    v8 = a1[6];
    v7 = 0x8E38E38E38E38E39 * ((v8 - v9) >> 2);
    v10 = a1[7];
    if (v8 >= v10)
    {
      if (v7 + 1 > 0x71C71C71C71C71CLL)
      {
        sub_1794();
      }

      v12 = 0x8E38E38E38E38E39 * ((v10 - v9) >> 2);
      v13 = 2 * v12;
      if (2 * v12 <= v7 + 1)
      {
        v13 = v7 + 1;
      }

      if (v12 >= 0x38E38E38E38E38ELL)
      {
        v14 = 0x71C71C71C71C71CLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        if (v14 <= 0x71C71C71C71C71CLL)
        {
          operator new();
        }

        sub_1808();
      }

      v15 = 4 * ((v8 - v9) >> 2);
      *v15 = v19;
      *(v15 + 8) = a3;
      *(v15 + 12) = -NAN;
      *(v15 + 20) = 0;
      *(v15 + 24) = 0;
      *(v15 + 28) = 0;
      *(v15 + 31) = 0;
      v11 = v15 + 36;
      v16 = (v15 - (v8 - v9));
      memcpy(v16, v9, v8 - v9);
      a1[5] = v16;
      a1[6] = v11;
      a1[7] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v8 = v19;
      *(v8 + 8) = a3;
      *(v8 + 12) = -NAN;
      *(v8 + 20) = 0;
      *(v8 + 24) = 0;
      *(v8 + 28) = 0;
      *(v8 + 31) = 0;
      v11 = v8 + 36;
    }

    a1[6] = v11;
    v17 = (a1[8] + 40 * a3);
    v20 = &v19;
    *(sub_472340(v17, &v19) + 6) = v7;
  }

  return v7;
}

uint64_t sub_4750A4(void *a1, uint64_t a2, uint64_t a3)
{
  (*(**a1 + 32))(&v11);
  v6 = *(a1[1] + 104);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = sub_475C1C(a1, &v11, a3);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return (v6 * v7 - v8 * v9);
}

void sub_475184(uint64_t *a1, uint64_t a2, __int16 a3)
{
  v40 = a2;
  (*(**a1 + 64))(*a1, &v40, a1 + 13);
  v5 = a1 + 16;
  v4 = a1[16];
  v6 = (a1[14] - a1[13]) >> 3;
  v7 = a1[17];
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 4);
  if (v6 > v8)
  {
    sub_475D68(a1 + 16, v6 - v8);
    v9 = *v5;
    if (a1[17] != *v5)
    {
      goto LABEL_14;
    }

LABEL_43:
    v13 = 0;
    if (360.0 / *(a1[1] + 232) <= 360.0)
    {
      return;
    }

LABEL_44:
    *(v9 + 80 * v13 + 74) = 0;
    return;
  }

  if (v6 >= v8)
  {
    v9 = *v5;
    if (v7 == *v5)
    {
      goto LABEL_43;
    }

    goto LABEL_14;
  }

  v10 = v4 + 80 * v6;
  while (v7 != v10)
  {
    if (*(v7 - 9) < 0)
    {
      operator delete(*(v7 - 32));
      v11 = *(v7 - 64);
      if (!v11)
      {
        goto LABEL_6;
      }

LABEL_12:
      *(v7 - 56) = v11;
      operator delete(v11);
      goto LABEL_6;
    }

    v11 = *(v7 - 64);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 -= 80;
  }

  a1[17] = v10;
  v9 = *v5;
  if (v10 == *v5)
  {
    goto LABEL_43;
  }

LABEL_14:
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 360;
  v16 = 360;
  do
  {
    v22 = (a1[13] + 8 * v14);
    v23 = (v9 + v12);
    v24 = *v22;
    *(v23 + 3) = *(v22 + 3);
    *v23 = v24;
    (*(**a1 + 32))(&v33);
    v25 = a1[16] + v12;
    v27 = (v25 + 16);
    v26 = *(v25 + 16);
    *(v25 + 8) = v33;
    if (v26)
    {
      *(v25 + 24) = v26;
      operator delete(v26);
      *v27 = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
    }

    *v27 = *__p;
    *(v25 + 32) = v35;
    __p[1] = 0;
    v35 = 0;
    __p[0] = 0;
    v28 = v36;
    *(v25 + 44) = v37;
    *(v25 + 40) = v28;
    if (*(v25 + 71) < 0)
    {
      operator delete(*(v25 + 48));
    }

    v29 = v38;
    *(v25 + 64) = v39;
    *(v25 + 48) = v29;
    HIBYTE(v39) = 0;
    LOBYTE(v38) = 0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v9 = *v5;
    v30 = *v5 + v12;
    v31 = *(v30 + 40);
    if (v31 >= 0x168)
    {
      LOWORD(v31) = sub_464198((v30 + 16), 1, a1[1]);
      *(v30 + 40) = v31;
      v9 = a1[16];
    }

    LOWORD(v17) = v31 - a3;
    if ((v31 - a3) > 180)
    {
      LOWORD(v17) = v31 - a3 - 360;
    }

    if (v17 < -179)
    {
      LOWORD(v17) = v17 + 360;
    }

    if ((v17 & 0x8000u) != 0)
    {
      v17 = -v17;
    }

    v18 = v17;
    v19 = v9 + v12;
    *(v19 + 72) = v17;
    *(v19 + 74) = 1;
    v20 = v15;
    if (v15 >= v17)
    {
      v20 = v17;
    }

    if (v16 < v17)
    {
      LOWORD(v17) = v16;
    }

    if (v16 <= v18)
    {
      v15 = v20;
    }

    else
    {
      v15 = v16;
    }

    if (v16 > v18)
    {
      v13 = v14;
    }

    ++v14;
    v21 = a1[17] - v9;
    v12 += 80;
    v16 = v17;
  }

  while (v14 < 0xCCCCCCCCCCCCCCCDLL * (v21 >> 4));
  if (v21 == 160 || v15 / *(a1[1] + 232) > v17)
  {
    goto LABEL_44;
  }
}

uint64_t *sub_4754E4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v4 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v4 = v3 + 1;
  }

  v5 = 0x2127599BF4325C37 * (v4 ^ (v3 >> 23));
  v6 = v5 ^ (v5 >> 47);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_28;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 47);
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
LABEL_28:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (__PAIR64__(*(v11 + 10), *(v11 + 4)) == __PAIR64__(WORD2(v2), v2) && *(v11 + 22) == BYTE6(v2))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_28;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v13 >= *&v7)
    {
      v13 %= *&v7;
    }

    if (v13 != v9)
    {
      goto LABEL_28;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_28;
    }
  }

  if (__PAIR64__(*(v11 + 10), *(v11 + 4)) != __PAIR64__(WORD2(v2), v2) || *(v11 + 22) != BYTE6(v2))
  {
    goto LABEL_21;
  }

  return v11;
}

void sub_475874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void sub_475888(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3) >= a2)
  {
    if (a2)
    {
      v8 = v2 + 40 * a2;
      do
      {
        *v2 = 0uLL;
        *(v2 + 16) = 0uLL;
        *(v2 + 32) = 1065353216;
        v2 += 40;
      }

      while (v2 != v8);
      v2 = v8;
    }

    a1[1] = v2;
  }

  else
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0x666666666666666)
    {
      sub_1794();
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x333333333333333)
    {
      v7 = 0x666666666666666;
    }

    else
    {
      v7 = v5;
    }

    v20 = a1;
    if (v7)
    {
      if (v7 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v9 = 40 * v4;
    __p = 0;
    v17 = 40 * v4;
    v19 = 0;
    do
    {
      *v9 = 0uLL;
      *(v9 + 16) = 0uLL;
      *(v9 + 32) = 1065353216;
      v9 += 40;
    }

    while (v9 != 40 * v4 + 40 * a2);
    v18 = 40 * v4 + 40 * a2;
    sub_475A58(a1, &__p);
    v10 = v17;
    while (1)
    {
      v11 = v18;
      if (v18 == v10)
      {
        break;
      }

      v12 = (v18 - 40);
      v18 -= 40;
      v13 = *(v11 - 24);
      if (v13)
      {
        do
        {
          v14 = *v13;
          operator delete(v13);
          v13 = v14;
        }

        while (v14);
      }

      v15 = *v12;
      *v12 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_475A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_475B9C(va);
  _Unwind_Resume(a1);
}

void sub_475A58(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = (v5 + v7);
      v10 = v6 + v7;
      v11 = *(v5 + v7);
      v12 = *(v5 + v7 + 8);
      *v9 = 0;
      *v10 = v11;
      *(v10 + 8) = v12;
      v9[1] = 0;
      v13 = *(v5 + v7 + 24);
      v14 = *(v5 + v7 + 16);
      v15 = *(v5 + v7 + 32);
      *(v6 + v7 + 16) = v14;
      *(v10 + 24) = v13;
      *(v10 + 32) = v15;
      if (v13)
      {
        v8 = *(v14 + 8);
        v16 = *(v10 + 8);
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

        *(v11 + 8 * v8) = v6 + v7 + 16;
        *(v5 + v7 + 16) = 0;
        *(v5 + v7 + 24) = 0;
      }

      v7 += 40;
    }

    while (v5 + v7 != v4);
    do
    {
      v17 = *(v5 + 16);
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

      v19 = *v5;
      *v5 = 0;
      if (v19)
      {
        operator delete(v19);
      }

      v5 += 40;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v20 = *a1;
  *a1 = v6;
  a1[1] = v20;
  a2[1] = v20;
  v21 = a1[1];
  a1[1] = a2[2];
  a2[2] = v21;
  v22 = a1[2];
  a1[2] = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
}

uint64_t sub_475B9C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 40);
    *(a1 + 16) = i - 40;
    v5 = *(i - 24);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = *v4;
    *v4 = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_475C1C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if ((*(a3 + 33) & 1) == 0 && (*(a3 + 34) & 1) == 0 && (*(a3 + 20) & ~(*(a3 + 20) >> 31)) + *(a2 + 1) < llround(*(*(a1 + 8) + 240) * (*(*(a1 + 16) + 12 * (*(a3 + 8) + 1)) - *(*(a1 + 16) + 12 * *(a3 + 8)))))
  {
    return 0;
  }

  v4 = *(a2 + 1);
  v5 = *(a1 + 8);
  v6 = *(a3 + 24);
  v7 = *(v5 + 208);
  v8 = *(v5 + 216);
  if (v8 == v7)
  {
    v15 = v4 / 100.0;
LABEL_15:
    v17 = *(v8 - 1);
    goto LABEL_17;
  }

  v9 = (v8 - v7) >> 4;
  v10 = *(v5 + 208);
  do
  {
    v11 = v9 >> 1;
    v12 = &v10[8 * (v9 >> 1)];
    v14 = *v12;
    v13 = v12 + 8;
    v9 += ~(v9 >> 1);
    if (v14 > v6)
    {
      v9 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  while (v9);
  v15 = v4 / 100.0;
  if (v8 == v10)
  {
    goto LABEL_15;
  }

  if (v7 == v10)
  {
    v17 = *(v7 + 8);
  }

  else
  {
    v16 = (v6 - *(v10 - 8)) / (*v10 - *(v10 - 8));
    v17 = *(v10 + 1) * v16 + *(v10 - 1) * (1.0 - v16);
  }

LABEL_17:
  v18 = v15 * v17;
  v19 = *a2;
  if (v19 >= 8)
  {
    v19 = 8;
  }

  return (v18 / *(v5 + 8 * v19 + 136));
}

void sub_475D68(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 80 * a2;
      do
      {
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 6) = 1;
        *(v3 + 8) = 0uLL;
        *(v3 + 24) = 0uLL;
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        *(v3 + 40) = 23593320;
        *(v3 + 44) = 1;
        *(v3 + 56) = 0;
        *(v3 + 64) = 0;
        *(v3 + 72) = 0;
        *(v3 + 74) = 1;
        v3 += 80;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x333333333333333)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x199999999999999)
    {
      v8 = 0x333333333333333;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x333333333333333)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 80 * v5;
    v11 = 80 * v5 + 80 * a2;
    v12 = 80 * v5;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 6) = 1;
      *(v12 + 8) = 0uLL;
      *(v12 + 24) = 0uLL;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 40) = 23593320;
      *(v12 + 44) = 1;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = 0;
      *(v12 + 74) = 1;
      v12 += 80;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = v10 + *a1 - v14;
      v17 = *a1;
      do
      {
        *v16 = *v17;
        *(v16 + 8) = *(v17 + 8);
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v16 + 16) = *(v17 + 16);
        *(v16 + 32) = *(v17 + 32);
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        v18 = *(v17 + 40);
        *(v16 + 44) = *(v17 + 44);
        *(v16 + 40) = v18;
        v19 = *(v17 + 48);
        *(v16 + 64) = *(v17 + 64);
        *(v16 + 48) = v19;
        *(v17 + 56) = 0;
        *(v17 + 64) = 0;
        *(v17 + 48) = 0;
        LOWORD(v18) = *(v17 + 72);
        *(v16 + 74) = *(v17 + 74);
        *(v16 + 72) = v18;
        v17 += 80;
        v16 += 80;
      }

      while (v17 != v14);
      while (*(v13 + 71) < 0)
      {
        operator delete(*(v13 + 48));
        v20 = *(v13 + 16);
        if (v20)
        {
          goto LABEL_27;
        }

LABEL_22:
        v13 += 80;
        if (v13 == v14)
        {
          v13 = *a1;
          goto LABEL_29;
        }
      }

      v20 = *(v13 + 16);
      if (!v20)
      {
        goto LABEL_22;
      }

LABEL_27:
      *(v13 + 24) = v20;
      operator delete(v20);
      goto LABEL_22;
    }

LABEL_29:
    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_476010(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  v7 = *(a2 + 8);
  *&dword_10[18 * v2] = 0;
  *(v6 + 8) = v7;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  v10 = *a1;
  v11 = a1[1];
  v12 = v6 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v6 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 8) = *(v13 + 2);
      *v14 = v15;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 16) = 0;
      *(v14 + 16) = *(v13 + 1);
      *(v14 + 32) = v13[4];
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = 0;
      v16 = *(v13 + 5);
      *(v14 + 56) = *(v13 + 7);
      *(v14 + 40) = v16;
      v13 += 9;
      v14 += 72;
    }

    while (v13 != v11);
    do
    {
      v17 = v10[2];
      if (v17)
      {
        v10[3] = v17;
        operator delete(v17);
      }

      v10 += 9;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v6 + 72;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v6 + 72;
}

void sub_476238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_47625C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_47625C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 72;
        *(a1 + 16) = v2 - 72;
        v5 = *(v2 - 56);
        if (!v5)
        {
          break;
        }

        *(v2 - 48) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 72;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_4762D4(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5 && *v4 == *a1 && v4[1] == *(a1 + 4))
  {
    return 0;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 2);
  if (v7 >= 2)
  {
    v10 = 0;
    v11 = 0;
    v6 = 1;
    v12 = 1.79769313e308;
    while (1)
    {
      v14 = &v4[v10];
      if (v4[v10 + 3] == *a1 && *(v14 + 4) == *(a1 + 4))
      {
        break;
      }

      v19 = -1;
      v20 = 0x7FFFFFFF;
      v13 = sub_47E664(v14, &v4[v10 + 3], a1, &v19);
      if (v13 < v12)
      {
        v12 = v13;
        v11 = v6;
      }

      ++v6;
      v4 = *a2;
      v10 += 3;
      if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2))
      {
        sub_47E3AC(a2, &v4[3 * v11], a1);
        return v11;
      }
    }
  }

  else
  {
    v8 = a2[2];
    if (v5 >= v8)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 2);
      if (2 * v15 <= v7 + 1)
      {
        v16 = v7 + 1;
      }

      else
      {
        v16 = 2 * v15;
      }

      if (v15 >= 0xAAAAAAAAAAAAAAALL)
      {
        v17 = 0x1555555555555555;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v9 = *a1;
    *(v5 + 8) = *(a1 + 8);
    *v5 = v9;
    a2[1] = v5 + 12;
    return 0xAAAAAAAAAAAAAAABLL * ((v5 + 12 - *a2) >> 2) - 1;
  }

  return v6;
}

unint64_t sub_476594(void *a1, int a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
  if (a3 < a2)
  {
    if (v3 != *a1)
    {
      if (!(v4 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    operator new();
  }

  return v4 - 1;
}

uint64_t *sub_476934@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v5 = *result;
  v4 = result[1];
  v6 = v4 - *result;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
  if (v7 >= 3 && *a2 != 0)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    if (v7 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_477104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_42728(&a13);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_477158(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  sub_4822C0((a1 + 2));
}

void sub_477360(_Unwind_Exception *a1)
{
  sub_4773BC(v2 + 1096);
  sub_47FADC(v1);
  _Unwind_Resume(a1);
}

void sub_47737C(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 1320) = v6;
    operator delete(v6);
  }

  operator delete(v3);
  sub_47FADC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_4773BC(uint64_t a1)
{
  sub_12118F8();
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_477404(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  sub_483434((a1 + 2));
}

void sub_47760C(_Unwind_Exception *a1)
{
  sub_4773BC(v2 + 1096);
  sub_47FF64(v1);
  _Unwind_Resume(a1);
}

void sub_477628(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 1320) = v6;
    operator delete(v6);
  }

  operator delete(v3);
  sub_47FF64(v1);
  _Unwind_Resume(a1);
}

void sub_477674(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  sub_484598((a1 + 2));
}

void sub_47787C(_Unwind_Exception *a1)
{
  sub_4773BC(v2 + 1096);
  sub_480074(v1);
  _Unwind_Resume(a1);
}

void sub_477898(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 1320) = v6;
    operator delete(v6);
  }

  operator delete(v3);
  sub_480074(v1);
  _Unwind_Resume(a1);
}

void sub_477BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_477C0C(uint64_t a1, uint64_t a2)
{
  v4[23] = 15;
  strcpy(v4, "ResponseBuilder");
  memset(v3, 0, sizeof(v3));
  v2 = sub_3AEC94(a2, v4, v3);
  sub_41D60C(v2, 2u, 0, &v5);
  sub_4778E4();
}

void sub_477D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_477DA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  memset(v62, 0, sizeof(v62));
  v61 = 0u;
  v65 = 1065353216;
  memset(v66, 0, sizeof(v66));
  v67 = 1065353216;
  v68 = 0;
  if ((*(a2 + 10120) & 1) != 0 || (a3 & 4) != 0)
  {
    v6 = sub_4D1DC0(a2);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        __p[0] = 0;
        __p[1] = 0;
        v60 = 0;
        v8 = *(a2 + 10136);
        v9 = *(a2 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3) == sub_4D1DC0(a2))
        {
          v10 = sub_69ADA0(a2, i);
          if (__p != v10)
          {
            sub_35354C(__p, *v10, v10[1], 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 2));
          }
        }

        else
        {
          v11 = a1[1];
          v12 = sub_4D1F50(a2, i);
          sub_2B7A20(v11, *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v32);
          sub_31BF20(&v32, &v57);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v57;
          v60 = v58;
          v58 = 0;
          v57 = 0uLL;
          if (v33)
          {
            v34[0] = v33;
            operator delete(v33);
          }
        }

        if ((a3 & 4) != 0)
        {
          sub_3B29DC(*a1);
          v14 = __p[0];
          for (j = __p[1]; v14 != j; v14 += 3)
          {
            *v14 = sub_2AF9EC();
            v14[2] = v15;
          }
        }

        v16 = sub_4D1F50(a2, i);
        sub_482EB8((a1 + 2), *(v16 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  if ((a3 & 8) != 0)
  {
    v17 = sub_4D1DC0(a2);
    if (v17)
    {
      v18 = 0;
      for (k = 0; k != v17; ++k)
      {
        __p[0] = k;
        v20 = *(a2 + 10128);
        if (k >= 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10136) - v20) >> 3))
        {
          break;
        }

        v21 = sub_5FC64(v20 + v18);
        v32 = __p;
        v22 = sub_480354(v66, __p);
        v23 = v21 >= 0x7FFFFFFF ? 0x7FFFFFFF : v21;
        *(v22 + 6) = v23;
        v18 += 40;
      }
    }
  }

  v32 = sub_4D1E50(a2);
  v33 = v24;
  sub_478470(&v32, v63, v25);
  sub_4D1DDC(a2, &v32);
  sub_48080C(v32, v33, v34[0], v34[1], v62);
  *&v61 = (1000000000 - sub_4D2138(a2)) / 1000000000.0;
  *(&v61 + 1) = sub_4D2140(a2) / 1000000000.0;
  if ((a3 & 4) != 0)
  {
    v68 = 2;
  }

  v26 = 172;
  if (*(a2 + 10120))
  {
    v26 = 173;
  }

  v27 = a1[v26];
  if (v27 >= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = v27;
  }

  sub_478608((a1 + 137), &v61, v28, a4);
  sub_482F20((a1 + 2));
  sub_4E02F4(a2, a1[1], a4);
  if ((a3 & 1) == 0)
  {
    sub_47A5AC(a4 + 24);
  }

  if ((a3 & 2) != 0)
  {
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v45 = 0x7D000000000;
    v37 = 0x1312D0000000000;
    v36 = 0;
    v32 = 0x4039000000000000;
    v33 = &stru_1380 + 8;
    *v34 = xmmword_2297CF0;
    v35 = xmmword_2297D00;
    v38 = 0x3FF199999999999ALL;
    v39 = 10000;
    v43 = 2;
    v44 = 0x4049000000000000;
    v46 = 0x3FF0000000000000;
    v56 = 0;
    v40 = 0x2710000003E8;
    v42 = 0x3200000064;
    v47 = 0xBB800000258;
    v48 = xmmword_2297D50;
    v41 = 10;
    *&v52 = 0x3FD999999999999ALL;
    v51 = unk_2297D80;
    v50 = xmmword_2297D70;
    v49 = unk_2297D60;
    operator new();
  }

  return sub_463370(&v61);
}

void sub_478304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1218EBC(a9);
  sub_463370(&a53);
  _Unwind_Resume(a1);
}

void sub_4783F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
    sub_463370(&a53);
    _Unwind_Resume(a1);
  }

  sub_463370(&a53);
  _Unwind_Resume(a1);
}

uint64_t *sub_478470(uint64_t *result, uint64_t *a2, double a3)
{
  v4 = result[1] - 0x5555555555555555 * ((a2[1] - *a2) >> 4);
  if (0xAAAAAAAAAAAAAAABLL * ((a2[2] - *a2) >> 4) < v4)
  {
    if (v4 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = result[1];
  if (v5)
  {
    v6 = *result;
    v7 = a2[1];
    v8 = 48 * v5;
    do
    {
      while (v7 >= a2[2])
      {
        result = sub_480694(a2, v6, a3);
        v7 = result;
        a2[1] = result;
        v6 += 48;
        v8 -= 48;
        if (!v8)
        {
          return result;
        }
      }

      *v7 = *v6;
      LODWORD(a3) = *(v6 + 8);
      *(v7 + 1) = *&a3 / 1000000000.0;
      *(v7 + 16) = sub_585D8((v6 + 16));
      result = sub_585E0(v6 + 16);
      v7[3] = result;
      v7[4] = v9;
      *(v7 + 40) = *(v6 + 40);
      v7 += 6;
      a2[1] = v7;
      a2[1] = v7;
      v6 += 48;
      v8 -= 48;
    }

    while (v8);
  }

  return result;
}

void sub_478608(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v154[0] = a3;
  sub_1218A44(a4, 0, 0);
  if (*(a2 + 16) != *(a2 + 24))
  {
    std::chrono::steady_clock::now();
    sub_47CFA4(a1, a2, 0, &v147);
    v145 = 0;
    v146 = 0uLL;
    v143 = 0;
    v142 = 0;
    v144 = 0;
    v6 = *a2;
    v7 = HIDWORD(v147);
    v140 = -1;
    v141 = 0x7FFFFFFF;
    (*(**a1 + 40))();
    if (sub_12119FC())
    {
      sub_19594F8(&v130);
      sub_4A5C(&v130, "Encoding a path with ", 21);
      v8 = std::ostream::operator<<();
      sub_4A5C(v8, " segments. Origin_fraction: ", 28);
      v9 = std::ostream::operator<<();
      sub_4A5C(v9, ", destination_fraction: ", 24);
      std::ostream::operator<<();
      operator new();
    }

    if (*(a2 + 24) != *(a2 + 16))
    {
      v10 = 0;
      v11 = 0;
      v115 = 0;
      v117 = llround(-(v6 * v7));
      v124 = vdupq_n_s64(0x416312D000000000uLL);
      v120 = a2;
      v116 = a1;
      do
      {
        sub_47CFA4(a1, a2, v10, &v130);
        v147 = v130;
        if (v148)
        {
          *(&v148 + 1) = v148;
          operator delete(v148);
        }

        v148 = v131;
        v149 = v132;
        *&v132 = 0;
        v131 = 0uLL;
        v150 = DWORD2(v132);
        v151 = BYTE12(v132);
        if (SHIBYTE(v153) < 0)
        {
          operator delete(v152);
          v152 = v133;
          v153 = v134;
          BYTE7(v134) = 0;
          LOBYTE(v133) = 0;
          if (v131)
          {
            *(&v131 + 1) = v131;
            operator delete(v131);
          }
        }

        else
        {
          v152 = v133;
          v153 = v134;
        }

        v123 = HIDWORD(v147);
        v11 += HIDWORD(v147);
        v121 = v10;
        sub_47D35C(a1, a2, v10, &v147, v115, v11, &v142);
        v127 = 0;
        v128 = 0;
        v129 = 0;
        if (*(&v148 + 1) != v148)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((*(&v148 + 1) - v148) >> 2) <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        if (v115 < 1)
        {
          v17 = 0;
          v23 = v142;
          v24 = v143;
          if (v142 == v143)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v17 = sub_4762D4(&v140, &v127);
          if (*(a1 + 256) / 100.0 * (*(a1 + 256) / 100.0) < v18 && sub_1211B74())
          {
            sub_19594F8(&v130);
            v19 = sub_4A5C(&v130, "Inserted point (", 16);
            v21 = sub_463550(v19, &v140, v20);
            sub_4A5C(v21, ") is too far (", 14);
            v22 = std::ostream::operator<<();
            sub_4A5C(v22, " m^2) from segment geometry.", 28);
            operator new();
          }

          v115 = 0;
          v23 = v142;
          v24 = v143;
          if (v142 == v143)
          {
LABEL_23:
            a2 = v120;
            if (v23 == v24)
            {
              goto LABEL_132;
            }

            goto LABEL_130;
          }
        }

        v122 = v24;
        do
        {
          while (1)
          {
            v26 = v127;
            v25 = v128;
            v27 = sub_476594(&v127, v123, *v23);
            v29 = v27;
            if (v27 >= v17)
            {
              v30 = v25 - v26;
              v31 = v127;
              v32 = v128 - v127;
              if (v27 != v17 || v30 == v32)
              {
                break;
              }
            }

            if (sub_1211AB8())
            {
              v139 = 0;
              v130 = v119;
              *(&v130 + *(v119 - 3)) = v118;
              v60 = (&v130 + *(v130 - 3));
              std::ios_base::init(v60, &v131);
              v60[1].__vftable = 0;
              v60[1].__fmtflags_ = -1;
              std::locale::locale(&v131 + 1);
              v133 = 0u;
              v134 = 0u;
              v132 = 0u;
              memset(&__p, 0, sizeof(__p));
              v137 = 16;
              p_p = &__p;
              std::string::append(&__p, 0x16uLL, 0);
              size = __p.__r_.__value_.__l.__size_;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              *(&v133 + 1) = &__p;
              *&v134 = &__p;
              *(&v134 + 1) = &__p + size;
              v62 = sub_4A5C(&v130, "Support point for segment ", 26);
              v63 = sub_30E900(v62, *(v120[2] + 8 * v121));
              sub_4A5C(v63, " could not be encoded at index ", 31);
              v64 = std::ostream::operator<<();
              sub_4A5C(v64, " since the encoding of the segment is already finalized up until index ", 71);
              std::ostream::operator<<();
              operator new();
            }

            ++v17;
            v23 += 16;
            if (v23 == v122)
            {
              goto LABEL_129;
            }
          }

          v34 = -2 - 0x5555555555555555 * (v32 >> 2);
          if (v34 >= v27)
          {
            v34 = v27;
          }

          v35 = v127 + 12 * v34;
          LODWORD(v28) = v35[4];
          v36 = 3.14159265 - v28 * 6.28318531 / 4294967300.0;
          v37 = exp(v36);
          v38 = exp(-v36);
          *&v39 = atan((v37 - v38) * 0.5);
          v40 = *&v39 * 57.2957795;
          LODWORD(v39) = v35[1];
          v41 = 3.14159265 - v39 * 6.28318531 / 4294967300.0;
          v42 = exp(v41);
          v43 = exp(-v41);
          v44 = atan((v42 - v43) * 0.5) * 57.2957795;
          v45 = cos((v40 + v44) * 0.5 * 3.14159265 / 180.0);
          LODWORD(v46) = v35[3];
          LODWORD(v47) = *v35;
          v48 = atan2((v46 * 360.0 / 4294967300.0 + -180.0 - (v47 * 360.0 / 4294967300.0 + -180.0)) * v45, v40 - v44);
          if (v48 < 0.0)
          {
            v48 = v48 + 6.28318531;
          }

            ;
          }

            ;
          }

            ;
          }

          if (*(a4 + 32) >= 1)
          {
            v50 = v146;
            v51 = v146 - v145;
            if (v146 == v145)
            {
              v52 = v17;
            }

            else
            {
              v52 = v17 + 1;
            }

            v53 = 12 * v52;
            v54 = 12 * v29 + 12;
            v55 = v54 - v53;
            if (v54 - v53 >= 1)
            {
              v56 = &v31[v53];
              if (*(&v146 + 1) - v146 >= v55)
              {
                v65 = v146;
                if (v54 != v53)
                {
                  v66 = &v31[v54];
                  v65 = v146;
                  do
                  {
                    v67 = *v56;
                    v50[2] = *(v56 + 2);
                    *v50 = v67;
                    v50 += 3;
                    v56 += 12;
                    v65 += 12;
                  }

                  while (v56 != v66);
                }

                *&v146 = v65;
              }

              else
              {
                v57 = 0xAAAAAAAAAAAAAAABLL * (v51 >> 2);
                v58 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 2) - 0x5555555555555555 * (v51 >> 2);
                if (v58 > 0x1555555555555555)
                {
                  sub_1794();
                }

                if (0x5555555555555556 * ((*(&v146 + 1) - v145) >> 2) > v58)
                {
                  v58 = 0x5555555555555556 * ((*(&v146 + 1) - v145) >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v146 + 1) - v145) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v59 = 0x1555555555555555;
                }

                else
                {
                  v59 = v58;
                }

                if (v59)
                {
                  if (v59 <= 0x1555555555555555)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v68 = 12 * v57;
                v69 = (12 * v57 + v55);
                v70 = v68;
                do
                {
                  v71 = *v56;
                  *(v70 + 8) = *(v56 + 2);
                  *v70 = v71;
                  v70 += 12;
                  v56 += 12;
                  v55 -= 12;
                }

                while (v55);
                v72 = v146 - v50;
                memcpy(v69, v50, v146 - v50);
                v73 = &v69[v72];
                *&v146 = v50;
                v74 = v145;
                memcpy((v68 - (v50 - v145)), v145, v50 - v145);
                v145 = (v68 - (v50 - v74));
                v146 = v73;
                if (v74)
                {
                  operator delete(v74);
                }
              }
            }

            sub_476934(&v145, v154, &v130);
            if (v145)
            {
              *&v146 = v145;
              operator delete(v145);
            }

            v75 = v130;
            v145 = v130;
            v146 = v131;
            if (0xAAAAAAAAAAAAAAABLL * ((v131 - v130) >> 2) < 3)
            {
LABEL_74:
              *&v146 = v75;
              goto LABEL_75;
            }

            v82 = 0;
            v83 = 1;
            while (2)
            {
              v84 = *(a4 + 40);
              if (v84 && (v85 = *(a4 + 32), v85 < *v84))
              {
                *(a4 + 32) = v85 + 1;
                v86 = *&v84[2 * v85 + 2];
              }

              else
              {
                sub_12196F4(*(a4 + 24));
                v86 = sub_19593CC(a4 + 24, v87);
                v75 = v145;
              }

              v88 = sub_121739C(&v130, 0, 0);
              HIDWORD(__p.__r_.__value_.__r.__words[1]) = 2;
              DWORD2(v131) |= 0x802u;
              v89 = *(&v132 + 1);
              if (!*(&v132 + 1))
              {
                v90 = (v131 & 0xFFFFFFFFFFFFFFFCLL);
                if (v131)
                {
                  v90 = *v90;
                }

                v89 = sub_1219600(v90);
                *(&v132 + 1) = v89;
              }

              LODWORD(v88) = *(v75 + v82 + 16);
              v91 = *&v88 * -6.28318531 / 4294967300.0 + 3.14159265;
              v92 = exp(v91);
              v93 = exp(-v91);
              v94.f64[0] = atan((v92 - v93) * 0.5) * 57.2957795;
              v95 = v89[2].i32[0];
              v89[2].i32[0] = v95 | 1;
              LODWORD(v96) = *(v75 + v82 + 12);
              v89[2].i32[0] = v95 | 3;
              v94.f64[1] = v96 * 360.0 / 4294967300.0 + -180.0;
              v89[3] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v94, v124))));
              v97 = *(v75 + v82 + 20);
              if (v97 != 0x7FFFFFFF)
              {
                DWORD2(v131) |= 0x10u;
                LODWORD(v134) = v97;
              }

              if (v86 == &v130)
              {
                goto LABEL_85;
              }

              v98 = *(v86 + 8);
              if ((v98 & 2) != 0)
              {
                v98 = 0;
                v99 = v131;
                if ((v131 & 2) == 0)
                {
                  goto LABEL_100;
                }
              }

              else if (v98)
              {
                v98 = *(v98 & 0xFFFFFFFFFFFFFFFCLL);
                v99 = v131;
                if ((v131 & 2) == 0)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                v99 = v131;
                if ((v131 & 2) == 0)
                {
LABEL_100:
                  if (v99)
                  {
                    v99 = *(v99 & 0xFFFFFFFFFFFFFFFCLL);
                  }

LABEL_104:
                  if (v98 == v99)
                  {
                    sub_12184D4(v86, &v130);
                  }

                  else
                  {
                    sub_121845C(v86, &v130);
                  }

LABEL_85:
                  sub_121764C(&v130);
                  ++v83;
                  v75 = v145;
                  v82 += 12;
                  if (v83 >= -1 - 0x5555555555555555 * ((v146 - v145) >> 2))
                  {
                    goto LABEL_74;
                  }

                  continue;
                }
              }

              break;
            }

            v99 = 0;
            goto LABEL_104;
          }

LABEL_75:
          v76 = *(a4 + 40);
          if (v76 && (v77 = *(a4 + 32), v77 < *v76))
          {
            *(a4 + 32) = v77 + 1;
            v78 = *&v76[2 * v77 + 2];
            v79 = v121;
          }

          else
          {
            sub_12196F4(*(a4 + 24));
            v79 = v121;
            v78 = sub_19593CC(a4 + 24, v80);
          }

          sub_47DA18(v116, *v23, *(v23 + 1), v120, v79, v127 + 3 * v29, llround(i) % 360, *v23 + v117, &v130, &v147);
          if (v78 != &v130)
          {
            v81 = v78->__r_.__value_.__l.__size_;
            if ((v81 & 2) != 0)
            {
              v81 = 0;
            }

            else if (v81)
            {
              v81 = *(v81 & 0xFFFFFFFFFFFFFFFCLL);
            }

            v100 = v131;
            if ((v131 & 2) != 0)
            {
              v100 = 0;
            }

            else if (v131)
            {
              v100 = *(v131 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (v81 == v100)
            {
              sub_12184D4(v78, &v130);
            }

            else
            {
              sub_121845C(v78, &v130);
            }
          }

          sub_121764C(&v130);
          if (sub_12119FC())
          {
            v139 = 0;
            v130 = v119;
            *(&v130 + *(v119 - 3)) = v118;
            v101 = (&v130 + *(v130 - 3));
            std::ios_base::init(v101, &v131);
            v101[1].__vftable = 0;
            v101[1].__fmtflags_ = -1;
            std::locale::locale(&v131 + 1);
            v133 = 0u;
            v134 = 0u;
            v132 = 0u;
            memset(&__p, 0, sizeof(__p));
            v137 = 16;
            p_p = &__p;
            std::string::append(&__p, 0x16uLL, 0);
            v102 = __p.__r_.__value_.__l.__size_;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v102 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            *(&v133 + 1) = &__p;
            *&v134 = &__p;
            *(&v134 + 1) = &__p + v102;
            v103 = sub_4A5C(&v130, "Adding support point for segment ", 33);
            v104 = sub_30E900(v103, *(v120[2] + 8 * v121));
            v105 = sub_4A5C(v104, ": ", 2);
            sub_1957658(v78, &__dst);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v107 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v107 = __dst.__r_.__value_.__l.__size_;
            }

            sub_4A5C(v105, p_dst, v107);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            operator new();
          }

          v11 = 0;
          v17 = v29;
          v23 += 16;
        }

        while (v23 != v122);
LABEL_129:
        v24 = v143;
        a1 = v116;
        a2 = v120;
        if (v142 == v143)
        {
          goto LABEL_132;
        }

LABEL_130:
        if (*(v24 - 12) != 1 || *(v24 - 1) >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 4))
        {
LABEL_132:
          if (v145 == v146)
          {
            v108 = v17;
          }

          else
          {
            v108 = v17 + 1;
          }

          sub_318AE8(&v145, v146, v127 + 3 * v108, v128, 0xAAAAAAAAAAAAAAABLL * ((v128 - (v127 + 12 * v108)) >> 2));
          v13 = v127;
          v117 += v123;
          v16 = v121;
          if (!v127)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v12 = v123 - *(v24 - 4);
        v13 = v127;
        v14 = v127 + 12 * v17;
        v15 = *(v14 + 2);
        v140 = *v14;
        v141 = v15;
        v115 = v12;
        v117 += *(v24 - 4) - v12;
        v16 = v121;
LABEL_7:
        v128 = v13;
        operator delete(v13);
LABEL_8:
        v10 = v16 + 1;
      }

      while (v10 < (*(a2 + 24) - *(a2 + 16)) >> 3);
    }

    v109 = *(a2 + 168);
    if (*(a2 + 168))
    {
      *(a4 + 16) |= 2u;
      v110 = *(a4 + 56);
      if (!v110)
      {
        v111 = *(a4 + 8);
        v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
        if (v111)
        {
          v112 = *v112;
        }

        v110 = sub_121978C(v112);
        *(a4 + 56) = v110;
        v109 = *(a2 + 168);
      }

      if (v109 == 2)
      {
        v113 = 2;
      }

      else
      {
        v113 = v109 == 1;
      }

      *(v110 + 16) |= 1u;
      *(v110 + 24) = v113;
    }

    std::chrono::steady_clock::now();
    if (sub_12119FC())
    {
      sub_19594F8(&v130);
      sub_4A5C(&v130, "Encoded path in ", 16);
      v114 = std::ostream::operator<<();
      sub_4A5C(v114, " ms.", 4);
      operator new();
    }

    if (v142)
    {
      v143 = v142;
      operator delete(v142);
    }

    if (v145)
    {
      *&v146 = v145;
      operator delete(v145);
    }

    if (SHIBYTE(v153) < 0)
    {
      operator delete(v152);
    }

    if (v148)
    {
      *(&v148 + 1) = v148;
      operator delete(v148);
    }
  }
}

void sub_47A368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_1959728(&a53);
  v55 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v55;
    operator delete(v55);
    v56 = *(v53 - 256);
    if (!v56)
    {
LABEL_8:
      sub_45B1B8(v53 - 232);
      sub_1218EBC(a37);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v56 = *(v53 - 256);
    if (!v56)
    {
      goto LABEL_8;
    }
  }

  *(v53 - 248) = v56;
  operator delete(v56);
  goto LABEL_8;
}

std::string **sub_47A5AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  result = sub_480990(v3, &v3[*(a1 + 8)]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = result - v6;
  v8 = *(a1 + 8) - (v7 >> 3);
  if (v8 >= 1)
  {
    v9 = 8 * (v7 >> 3) + 8;
    v10 = *(a1 + 8) - (v7 >> 3);
    do
    {
      v11 = *(*(a1 + 16) + v9);
      if (v11)
      {
        v12 = *a1 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        sub_121764C(v11);
        operator delete();
      }

      v9 += 8;
      --v10;
    }

    while (v10);

    return sub_1959280(a1, v7 >> 3, v8);
  }

  return result;
}

void *sub_47A6A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  memset(v62, 0, sizeof(v62));
  v61 = 0u;
  v65 = 1065353216;
  memset(v66, 0, sizeof(v66));
  v67 = 1065353216;
  v68 = 0;
  if ((*(a2 + 10120) & 1) != 0 || (a3 & 4) != 0)
  {
    v6 = sub_4D1DC0(a2);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        __p[0] = 0;
        __p[1] = 0;
        v60 = 0;
        v8 = *(a2 + 10136);
        v9 = *(a2 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3) == sub_4D1DC0(a2))
        {
          v10 = sub_69CB14(a2, i);
          if (__p != v10)
          {
            sub_35354C(__p, *v10, v10[1], 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 2));
          }
        }

        else
        {
          v11 = a1[1];
          v12 = sub_4D1F50(a2, i);
          sub_2B7A20(v11, *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v32);
          sub_31BF20(&v32, &v57);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v57;
          v60 = v58;
          v58 = 0;
          v57 = 0uLL;
          if (v33)
          {
            v34[0] = v33;
            operator delete(v33);
          }
        }

        if ((a3 & 4) != 0)
        {
          sub_3B29DC(*a1);
          v14 = __p[0];
          for (j = __p[1]; v14 != j; v14 += 3)
          {
            *v14 = sub_2AF9EC();
            v14[2] = v15;
          }
        }

        v16 = sub_4D1F50(a2, i);
        sub_482EB8((a1 + 2), *(v16 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  if ((a3 & 8) != 0)
  {
    v17 = sub_4D1DC0(a2);
    if (v17)
    {
      v18 = 0;
      for (k = 0; k != v17; ++k)
      {
        __p[0] = k;
        v20 = *(a2 + 10128);
        if (k >= 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10136) - v20) >> 3))
        {
          break;
        }

        v21 = sub_5FC64(v20 + v18);
        v32 = __p;
        v22 = sub_480354(v66, __p);
        v23 = v21 >= 0x7FFFFFFF ? 0x7FFFFFFF : v21;
        *(v22 + 6) = v23;
        v18 += 40;
      }
    }
  }

  v32 = sub_4D1E50(a2);
  v33 = v24;
  sub_478470(&v32, v63, v25);
  sub_4D1DDC(a2, &v32);
  sub_48080C(v32, v33, v34[0], v34[1], v62);
  *&v61 = (1000000000 - sub_4D2138(a2)) / 1000000000.0;
  *(&v61 + 1) = sub_4D2140(a2) / 1000000000.0;
  if ((a3 & 4) != 0)
  {
    v68 = 2;
  }

  v26 = 172;
  if (*(a2 + 10120))
  {
    v26 = 173;
  }

  v27 = a1[v26];
  if (v27 >= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = v27;
  }

  sub_478608((a1 + 137), &v61, v28, a4);
  sub_482F20((a1 + 2));
  sub_4E1528(a2, a1[1], a4);
  if ((a3 & 1) == 0)
  {
    sub_47AD74(a4 + 24);
  }

  if ((a3 & 2) != 0)
  {
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v45 = 0x7D000000000;
    v37 = 0x1312D0000000000;
    v36 = 0;
    v32 = 0x4039000000000000;
    v33 = &stru_1380 + 8;
    *v34 = xmmword_2297CF0;
    v35 = xmmword_2297D00;
    v38 = 0x3FF199999999999ALL;
    v39 = 10000;
    v43 = 2;
    v44 = 0x4049000000000000;
    v46 = 0x3FF0000000000000;
    v56 = 0;
    v40 = 0x2710000003E8;
    v42 = 0x3200000064;
    v47 = 0xBB800000258;
    v48 = xmmword_2297D50;
    v41 = 10;
    *&v52 = 0x3FD999999999999ALL;
    v51 = unk_2297D80;
    v50 = xmmword_2297D70;
    v49 = unk_2297D60;
    operator new();
  }

  return sub_463370(&v61);
}

void sub_47AC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1218EBC(a9);
  sub_463370(&a53);
  _Unwind_Resume(a1);
}

void sub_47ACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
    sub_463370(&a53);
    _Unwind_Resume(a1);
  }

  sub_463370(&a53);
  _Unwind_Resume(a1);
}

std::string **sub_47AD74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  result = sub_480A88(v3, &v3[*(a1 + 8)]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = result - v6;
  v8 = *(a1 + 8) - (v7 >> 3);
  if (v8 >= 1)
  {
    v9 = 8 * (v7 >> 3) + 8;
    v10 = *(a1 + 8) - (v7 >> 3);
    do
    {
      v11 = *(*(a1 + 16) + v9);
      if (v11)
      {
        v12 = *a1 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        sub_121764C(v11);
        operator delete();
      }

      v9 += 8;
      --v10;
    }

    while (v10);

    return sub_1959280(a1, v7 >> 3, v8);
  }

  return result;
}

void *sub_47AE70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  memset(v62, 0, sizeof(v62));
  v61 = 0u;
  v65 = 1065353216;
  memset(v66, 0, sizeof(v66));
  v67 = 1065353216;
  v68 = 0;
  if ((*(a2 + 10120) & 1) != 0 || (a3 & 4) != 0)
  {
    v6 = sub_4D1DC0(a2);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        __p[0] = 0;
        __p[1] = 0;
        v60 = 0;
        v8 = *(a2 + 10136);
        v9 = *(a2 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3) == sub_4D1DC0(a2))
        {
          v10 = sub_69E8D8(a2, i);
          if (__p != v10)
          {
            sub_35354C(__p, *v10, v10[1], 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 2));
          }
        }

        else
        {
          v11 = a1[1];
          v12 = sub_4D1F50(a2, i);
          sub_2B7A20(v11, (((*(v12 + 36) & 0x20000000) << 19) | (*(v12 + 36) << 32) | *(v12 + 32)) ^ 0x1000000000000, &v32);
          sub_31BF20(&v32, &v57);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v57;
          v60 = v58;
          v58 = 0;
          v57 = 0uLL;
          if (v33)
          {
            v34[0] = v33;
            operator delete(v33);
          }
        }

        if ((a3 & 4) != 0)
        {
          sub_3B29DC(*a1);
          v14 = __p[0];
          for (j = __p[1]; v14 != j; v14 += 3)
          {
            *v14 = sub_2AF9EC();
            v14[2] = v15;
          }
        }

        v16 = sub_4D1F50(a2, i);
        sub_482EB8((a1 + 2), (((*(v16 + 36) & 0x20000000) << 19) | (*(v16 + 36) << 32) | *(v16 + 32)) ^ 0x1000000000000, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  if ((a3 & 8) != 0)
  {
    v17 = sub_4D1DC0(a2);
    if (v17)
    {
      v18 = 0;
      for (k = 0; k != v17; ++k)
      {
        __p[0] = k;
        v20 = *(a2 + 10128);
        if (k >= 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10136) - v20) >> 3))
        {
          break;
        }

        v21 = sub_5FC64(v20 + v18);
        v32 = __p;
        v22 = sub_480354(v66, __p);
        v23 = v21 >= 0x7FFFFFFF ? 0x7FFFFFFF : v21;
        *(v22 + 6) = v23;
        v18 += 40;
      }
    }
  }

  v32 = sub_4D1E50(a2);
  v33 = v24;
  sub_478470(&v32, v63, v25);
  sub_4D1DDC(a2, &v32);
  sub_480B80(v32, v33, v34[0], v34[1], &v62[1] + 8);
  sub_4D1DDC(a2, &v32);
  sub_480D44(v32, v33, v34[0], v34[1], v62);
  *&v61 = (1000000000 - sub_4D2138(a2)) / 1000000000.0;
  *(&v61 + 1) = sub_4D2140(a2) / 1000000000.0;
  if ((a3 & 4) != 0)
  {
    v68 = 2;
  }

  v26 = 172;
  if (*(a2 + 10120))
  {
    v26 = 173;
  }

  v27 = a1[v26];
  if (v27 >= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = v27;
  }

  sub_478608((a1 + 137), &v61, v28, a4);
  sub_482F20((a1 + 2));
  sub_4E275C(a2, a1[1], a4);
  if ((a3 & 1) == 0)
  {
    sub_47B5AC(a4 + 24);
  }

  if ((a3 & 2) != 0)
  {
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v45 = 0x7D000000000;
    v37 = 0x1312D0000000000;
    v36 = 0;
    v32 = 0x4039000000000000;
    v33 = &stru_1380 + 8;
    *v34 = xmmword_2297CF0;
    v35 = xmmword_2297D00;
    v38 = 0x3FF199999999999ALL;
    v39 = 10000;
    v43 = 2;
    v44 = 0x4049000000000000;
    v46 = 0x3FF0000000000000;
    v56 = 0;
    v40 = 0x2710000003E8;
    v42 = 0x3200000064;
    v47 = 0xBB800000258;
    v48 = xmmword_2297D50;
    v41 = 10;
    *&v52 = 0x3FD999999999999ALL;
    v51 = unk_2297D80;
    v50 = xmmword_2297D70;
    v49 = unk_2297D60;
    operator new();
  }

  return sub_463370(&v61);
}

void sub_47B418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1218EBC(a9);
  sub_463370(&a53);
  _Unwind_Resume(a1);
}

void sub_47B530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
    sub_463370(&a53);
    _Unwind_Resume(a1);
  }

  sub_463370(&a53);
  _Unwind_Resume(a1);
}

std::string **sub_47B5AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  result = sub_480ED4(v3, &v3[*(a1 + 8)]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = result - v6;
  v8 = *(a1 + 8) - (v7 >> 3);
  if (v8 >= 1)
  {
    v9 = 8 * (v7 >> 3) + 8;
    v10 = *(a1 + 8) - (v7 >> 3);
    do
    {
      v11 = *(*(a1 + 16) + v9);
      if (v11)
      {
        v12 = *a1 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        sub_121764C(v11);
        operator delete();
      }

      v9 += 8;
      --v10;
    }

    while (v10);

    return sub_1959280(a1, v7 >> 3, v8);
  }

  return result;
}

void *sub_47B6A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  memset(v50, 0, sizeof(v50));
  v49 = 0u;
  v53 = 1065353216;
  v54 = 0u;
  v55 = 0u;
  v56 = 1065353216;
  v57 = 0;
  if ((a3 & 4) != 0)
  {
    v8 = sub_4D1DC0(a2);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        __p[0] = 0;
        __p[1] = 0;
        v48 = 0;
        v10 = *(a1 + 8);
        v11 = sub_4D1F50(a2, i);
        sub_2B7A20(v10, (((*(v11 + 36) & 0x20000000) << 19) | (*(v11 + 36) << 32) | *(v11 + 32)) ^ 0x1000000000000, &v20);
        sub_31BF20(&v20, &v45);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v45;
        v48 = v46;
        v46 = 0;
        v45 = 0uLL;
        if (v21)
        {
          v22[0] = v21;
          operator delete(v21);
        }

        sub_3B29DC(*a1);
        v12 = __p[0];
        for (j = __p[1]; v12 != j; v12 += 3)
        {
          *v12 = sub_2AF9EC();
          v12[2] = v14;
        }

        v15 = sub_4D1F50(a2, i);
        sub_482EB8(a1 + 16, (((*(v15 + 36) & 0x20000000) << 19) | (*(v15 + 36) << 32) | *(v15 + 32)) ^ 0x1000000000000, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  v20 = sub_4D1E50(a2);
  v21 = v16;
  sub_478470(&v20, v51, v17);
  sub_4D1DDC(a2, &v20);
  sub_480B80(v20, v21, v22[0], v22[1], &v50[1] + 8);
  sub_4D1DDC(a2, &v20);
  sub_480D44(v20, v21, v22[0], v22[1], v50);
  *&v49 = (1000000000 - sub_4D2138(a2)) / 1000000000.0;
  *(&v49 + 1) = sub_4D2140(a2) / 1000000000.0;
  if ((a3 & 4) != 0)
  {
    v57 = 2;
  }

  if (*(a1 + 1376) >= 0x7FFFFFFFu)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = *(a1 + 1376);
  }

  sub_478608(a1 + 1096, &v49, v18, a4);
  if ((a3 & 1) == 0)
  {
    sub_47BC54(a4 + 24);
  }

  if ((a3 & 2) != 0)
  {
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    *v40 = 0u;
    v33 = 0x7D000000000;
    v25 = 0x1312D0000000000;
    v24 = 0;
    v20 = 0x4039000000000000;
    v21 = &stru_1380 + 8;
    *v22 = xmmword_2297CF0;
    v23 = xmmword_2297D00;
    v26 = 0x3FF199999999999ALL;
    v27 = 10000;
    v31 = 2;
    v32 = 0x4049000000000000;
    v34 = 0x3FF0000000000000;
    v44 = 0;
    v28 = 0x2710000003E8;
    v30 = 0x3200000064;
    v35 = 0xBB800000258;
    v36 = xmmword_2297D50;
    v29 = 10;
    v40[0] = 0x3FD999999999999ALL;
    v39 = unk_2297D80;
    v38 = xmmword_2297D70;
    v37 = unk_2297D60;
    operator new();
  }

  return sub_463370(&v49);
}

void sub_47BAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1218EBC(v36);
  sub_463370((v37 - 256));
  _Unwind_Resume(a1);
}

void sub_47BBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
    v50 = a47;
    if (!a47)
    {
LABEL_3:
      sub_463370((v48 - 256));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v50 = a47;
    if (!a47)
    {
      goto LABEL_3;
    }
  }

  operator delete(v50);
  sub_463370((v48 - 256));
  _Unwind_Resume(a1);
}

std::string **sub_47BC54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  result = sub_480FCC(v3, &v3[*(a1 + 8)]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = result - v6;
  v8 = *(a1 + 8) - (v7 >> 3);
  if (v8 >= 1)
  {
    v9 = 8 * (v7 >> 3) + 8;
    v10 = *(a1 + 8) - (v7 >> 3);
    do
    {
      v11 = *(*(a1 + 16) + v9);
      if (v11)
      {
        v12 = *a1 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        sub_121764C(v11);
        operator delete();
      }

      v9 += 8;
      --v10;
    }

    while (v10);

    return sub_1959280(a1, v7 >> 3, v8);
  }

  return result;
}

void *sub_47BD50@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v47 = 0u;
  v50 = 1065353216;
  v51 = 0u;
  v52 = 0u;
  v53 = 1065353216;
  v54 = 0;
  if ((a3 & 4) != 0)
  {
    v8 = sub_F69D2C(a2);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        __p[0] = 0;
        __p[1] = 0;
        v46 = 0;
        v10 = *(a1 + 8);
        v11 = sub_F69DE0(a2, i);
        sub_2B7A20(v10, *(v11 + 32) & 0xFFFFFFFFFFFFFFLL, &v18);
        sub_31BF20(&v18, &v43);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v43;
        v46 = v44;
        v44 = 0;
        v43 = 0uLL;
        if (v19)
        {
          v20[0] = v19;
          operator delete(v19);
        }

        sub_3B29DC(*a1);
        v12 = __p[0];
        for (j = __p[1]; v12 != j; v12 += 3)
        {
          *v12 = sub_2AF9EC();
          v12[2] = v14;
        }

        v15 = sub_F69DE0(a2, i);
        sub_482EB8(a1 + 16, *(v15 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_F69D90(a2, &v18);
  sub_4810C4(v18, v19, v20[0], v20[1], v48);
  *&v47 = (1000000000 - sub_F6A040(a2)) / 1000000000.0;
  *(&v47 + 1) = sub_F6A054(a2) / 1000000000.0;
  if ((a3 & 4) != 0)
  {
    v54 = 2;
  }

  if (*(a1 + 1376) >= 0x7FFFFFFFu)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(a1 + 1376);
  }

  sub_478608(a1 + 1096, &v47, v16, a4);
  if ((a3 & 1) == 0)
  {
    sub_47C24C(a4 + 24);
  }

  if ((a3 & 2) != 0)
  {
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    *v38 = 0u;
    v31 = 0x7D000000000;
    v23 = 0x1312D0000000000;
    v22 = 0;
    v18 = 0x4039000000000000;
    v19 = &stru_1380 + 8;
    *v20 = xmmword_2297CF0;
    v21 = xmmword_2297D00;
    v24 = 0x3FF199999999999ALL;
    v25 = 10000;
    v29 = 2;
    v30 = 0x4049000000000000;
    v32 = 0x3FF0000000000000;
    v42 = 0;
    v26 = 0x2710000003E8;
    v28 = 0x3200000064;
    v33 = 0xBB800000258;
    v34 = xmmword_2297D50;
    v27 = 10;
    v38[0] = 0x3FD999999999999ALL;
    v37 = unk_2297D80;
    v36 = xmmword_2297D70;
    v35 = unk_2297D60;
    operator new();
  }

  return sub_463370(&v47);
}

void sub_47C134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1218EBC(v36);
  sub_463370((v37 - 256));
  _Unwind_Resume(a1);
}

void sub_47C1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
    v50 = a47;
    if (!a47)
    {
LABEL_3:
      sub_463370((v48 - 256));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v50 = a47;
    if (!a47)
    {
      goto LABEL_3;
    }
  }

  operator delete(v50);
  sub_463370((v48 - 256));
  _Unwind_Resume(a1);
}

std::string **sub_47C24C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  result = sub_481248(v3, &v3[*(a1 + 8)]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = result - v6;
  v8 = *(a1 + 8) - (v7 >> 3);
  if (v8 >= 1)
  {
    v9 = 8 * (v7 >> 3) + 8;
    v10 = *(a1 + 8) - (v7 >> 3);
    do
    {
      v11 = *(*(a1 + 16) + v9);
      if (v11)
      {
        v12 = *a1 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        sub_121764C(v11);
        operator delete();
      }

      v9 += 8;
      --v10;
    }

    while (v10);

    return sub_1959280(a1, v7 >> 3, v8);
  }

  return result;
}

void *sub_47C348@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v47 = 0u;
  v50 = 1065353216;
  v51 = 0u;
  v52 = 0u;
  v53 = 1065353216;
  v54 = 0;
  if ((a3 & 4) != 0)
  {
    v8 = sub_F6D024(a2);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        __p[0] = 0;
        __p[1] = 0;
        v46 = 0;
        v10 = *(a1 + 8);
        v11 = sub_F6D17C(a2, i);
        sub_2B7A20(v10, *(v11 + 32) & 0xFFFFFFFFFFFFFFLL, &v18);
        sub_31BF20(&v18, &v43);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v43;
        v46 = v44;
        v44 = 0;
        v43 = 0uLL;
        if (v19)
        {
          v20[0] = v19;
          operator delete(v19);
        }

        sub_3B29DC(*a1);
        v12 = __p[0];
        for (j = __p[1]; v12 != j; v12 += 3)
        {
          *v12 = sub_2AF9EC();
          v12[2] = v14;
        }

        v15 = sub_F6D17C(a2, i);
        sub_482EB8(a1 + 16, *(v15 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_F6D05C(a2, &v18);
  sub_481340(v18, v19, v20[0], v20[1], v48);
  *&v47 = (1000000000 - sub_F6A040(a2)) / 1000000000.0;
  *(&v47 + 1) = sub_F6A054(a2) / 1000000000.0;
  if ((a3 & 4) != 0)
  {
    v54 = 2;
  }

  if (*(a1 + 1376) >= 0x7FFFFFFFu)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(a1 + 1376);
  }

  sub_478608(a1 + 1096, &v47, v16, a4);
  if ((a3 & 1) == 0)
  {
    sub_47C844(a4 + 24);
  }

  if ((a3 & 2) != 0)
  {
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    *v38 = 0u;
    v31 = 0x7D000000000;
    v23 = 0x1312D0000000000;
    v22 = 0;
    v18 = 0x4039000000000000;
    v19 = &stru_1380 + 8;
    *v20 = xmmword_2297CF0;
    v21 = xmmword_2297D00;
    v24 = 0x3FF199999999999ALL;
    v25 = 10000;
    v29 = 2;
    v30 = 0x4049000000000000;
    v32 = 0x3FF0000000000000;
    v42 = 0;
    v26 = 0x2710000003E8;
    v28 = 0x3200000064;
    v33 = 0xBB800000258;
    v34 = xmmword_2297D50;
    v27 = 10;
    v38[0] = 0x3FD999999999999ALL;
    v37 = unk_2297D80;
    v36 = xmmword_2297D70;
    v35 = unk_2297D60;
    operator new();
  }

  return sub_463370(&v47);
}

void sub_47C72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1218EBC(v36);
  sub_463370((v37 - 256));
  _Unwind_Resume(a1);
}

void sub_47C7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
    v50 = a47;
    if (!a47)
    {
LABEL_3:
      sub_463370((v48 - 256));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v50 = a47;
    if (!a47)
    {
      goto LABEL_3;
    }
  }

  operator delete(v50);
  sub_463370((v48 - 256));
  _Unwind_Resume(a1);
}

std::string **sub_47C844(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  result = sub_4814C4(v3, &v3[*(a1 + 8)]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = result - v6;
  v8 = *(a1 + 8) - (v7 >> 3);
  if (v8 >= 1)
  {
    v9 = 8 * (v7 >> 3) + 8;
    v10 = *(a1 + 8) - (v7 >> 3);
    do
    {
      v11 = *(*(a1 + 16) + v9);
      if (v11)
      {
        v12 = *a1 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        sub_121764C(v11);
        operator delete();
      }

      v9 += 8;
      --v10;
    }

    while (v10);

    return sub_1959280(a1, v7 >> 3, v8);
  }

  return result;
}

void *sub_47C940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v47 = 0u;
  v50 = 1065353216;
  v51 = 0u;
  v52 = 0u;
  v53 = 1065353216;
  v54 = 0;
  if ((a3 & 4) != 0)
  {
    v8 = sub_F6FD88(a2);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        __p[0] = 0;
        __p[1] = 0;
        v46 = 0;
        v10 = *(a1 + 8);
        v11 = sub_F6FE3C(a2, i);
        sub_2B7A20(v10, (((*(v11 + 36) & 0x20000000) << 19) | (*(v11 + 36) << 32) | *(v11 + 32)) ^ 0x1000000000000, &v18);
        sub_31BF20(&v18, &v43);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v43;
        v46 = v44;
        v44 = 0;
        v43 = 0uLL;
        if (v19)
        {
          v20[0] = v19;
          operator delete(v19);
        }

        sub_3B29DC(*a1);
        v12 = __p[0];
        for (j = __p[1]; v12 != j; v12 += 3)
        {
          *v12 = sub_2AF9EC();
          v12[2] = v14;
        }

        v15 = sub_F6FE3C(a2, i);
        sub_482EB8(a1 + 16, (((*(v15 + 36) & 0x20000000) << 19) | (*(v15 + 36) << 32) | *(v15 + 32)) ^ 0x1000000000000, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_F6FDEC(a2, &v18);
  sub_4815BC(v18, v19, v20[0], v20[1], &v48[1] + 8);
  sub_F6FDEC(a2, &v18);
  sub_481780(v18, v19, v20[0], v20[1], v48);
  *&v47 = (1000000000 - sub_F6A040(a2)) / 1000000000.0;
  *(&v47 + 1) = sub_F6A054(a2) / 1000000000.0;
  if ((a3 & 4) != 0)
  {
    v54 = 2;
  }

  if (*(a1 + 1376) >= 0x7FFFFFFFu)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(a1 + 1376);
  }

  sub_478608(a1 + 1096, &v47, v16, a4);
  if ((a3 & 1) == 0)
  {
    sub_47CEA8(a4 + 24);
  }

  if ((a3 & 2) != 0)
  {
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    *v38 = 0u;
    v31 = 0x7D000000000;
    v23 = 0x1312D0000000000;
    v22 = 0;
    v18 = 0x4039000000000000;
    v19 = &stru_1380 + 8;
    *v20 = xmmword_2297CF0;
    v21 = xmmword_2297D00;
    v24 = 0x3FF199999999999ALL;
    v25 = 10000;
    v29 = 2;
    v30 = 0x4049000000000000;
    v32 = 0x3FF0000000000000;
    v42 = 0;
    v26 = 0x2710000003E8;
    v28 = 0x3200000064;
    v33 = 0xBB800000258;
    v34 = xmmword_2297D50;
    v27 = 10;
    v38[0] = 0x3FD999999999999ALL;
    v37 = unk_2297D80;
    v36 = xmmword_2297D70;
    v35 = unk_2297D60;
    operator new();
  }

  return sub_463370(&v47);
}

void sub_47CD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1218EBC(v36);
  sub_463370((v37 - 256));
  _Unwind_Resume(a1);
}

void sub_47CE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
    v50 = a47;
    if (!a47)
    {
LABEL_3:
      sub_463370((v48 - 256));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v50 = a47;
    if (!a47)
    {
      goto LABEL_3;
    }
  }

  operator delete(v50);
  sub_463370((v48 - 256));
  _Unwind_Resume(a1);
}

std::string **sub_47CEA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  result = sub_481910(v3, &v3[*(a1 + 8)]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = result - v6;
  v8 = *(a1 + 8) - (v7 >> 3);
  if (v8 >= 1)
  {
    v9 = 8 * (v7 >> 3) + 8;
    v10 = *(a1 + 8) - (v7 >> 3);
    do
    {
      v11 = *(*(a1 + 16) + v9);
      if (v11)
      {
        v12 = *a1 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        sub_121764C(v11);
        operator delete();
      }

      v9 += 8;
      --v10;
    }

    while (v10);

    return sub_1959280(a1, v7 >> 3, v8);
  }

  return result;
}

char *sub_47CFA4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = (*(**a1 + 32))(a4);
  v8 = a2[17];
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = a3;
      if (*&v8 <= a3)
      {
        v10 = a3 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & a3;
    }

    v11 = a2[16];
    v12 = *(v11 + 8 * v10);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = *&v8 - 1;
        if (v9.u32[0] >= 2uLL)
        {
          while (1)
          {
            v16 = v13[1];
            if (v16 == a3)
            {
              if (v13[2] == a3)
              {
LABEL_22:
                if (v9.u32[0] > 1uLL)
                {
                  v17 = a3;
                  if (*&v8 <= a3)
                  {
                    v17 = a3 % *&v8;
                  }
                }

                else
                {
                  v17 = v14 & a3;
                }

                v18 = *(v11 + 8 * v17);
                if (!v18)
                {
                  goto LABEL_85;
                }

                v19 = *v18;
                if (!v19)
                {
                  goto LABEL_85;
                }

                if (v9.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v20 = v19[1];
                    if (v20 == a3)
                    {
                      if (v19[2] == a3)
                      {
                        goto LABEL_34;
                      }
                    }

                    else if ((v20 & v14) != v17)
                    {
                      goto LABEL_85;
                    }

                    v19 = *v19;
                    if (!v19)
                    {
                      goto LABEL_85;
                    }
                  }
                }

                while (1)
                {
                  v24 = v19[1];
                  if (v24 == a3)
                  {
                    if (v19[2] == a3)
                    {
LABEL_34:
                      *(a4 + 4) = *(v19 + 6);
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    if (v24 >= *&v8)
                    {
                      v24 %= *&v8;
                    }

                    if (v24 != v17)
                    {
                      goto LABEL_85;
                    }
                  }

                  v19 = *v19;
                  if (!v19)
                  {
                    goto LABEL_85;
                  }
                }
              }
            }

            else
            {
              if (v16 >= *&v8)
              {
                v16 %= *&v8;
              }

              if (v16 != v10)
              {
                goto LABEL_35;
              }
            }

            v13 = *v13;
            if (!v13)
            {
              goto LABEL_35;
            }
          }
        }

        do
        {
          v15 = v13[1];
          if (v15 == a3)
          {
            if (v13[2] == a3)
            {
              goto LABEL_22;
            }
          }

          else if ((v15 & v14) != v10)
          {
            break;
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

LABEL_35:
  v21 = a2[12];
  if (v21)
  {
    v22 = vcnt_s8(v21);
    v22.i16[0] = vaddlv_u8(v22);
    if (v22.u32[0] > 1uLL)
    {
      v23 = a3;
      if (*&v21 <= a3)
      {
        v23 = a3 % *&v21;
      }
    }

    else
    {
      v23 = (*&v21 - 1) & a3;
    }

    v25 = a2[11];
    v26 = *(v25 + 8 * v23);
    if (v26)
    {
      v27 = *v26;
      if (*v26)
      {
        v28 = *&v21 - 1;
        if (v22.u32[0] < 2uLL)
        {
          while (1)
          {
            v29 = v27[1];
            if (v29 == a3)
            {
              if (v27[2] == a3)
              {
                goto LABEL_63;
              }
            }

            else if ((v29 & v28) != v23)
            {
              return result;
            }

            v27 = *v27;
            if (!v27)
            {
              return result;
            }
          }
        }

        do
        {
          v30 = v27[1];
          if (v30 == a3)
          {
            if (v27[2] == a3)
            {
LABEL_63:
              if (v22.u32[0] > 1uLL)
              {
                v31 = a3;
                if (*&v21 <= a3)
                {
                  v31 = a3 % *&v21;
                }
              }

              else
              {
                v31 = v28 & a3;
              }

              v32 = *(v25 + 8 * v31);
              if (v32)
              {
                v33 = *v32;
                if (v33)
                {
                  if (v22.u32[0] < 2uLL)
                  {
                    while (1)
                    {
                      v34 = v33[1];
                      if (v34 == a3)
                      {
                        if (v33[2] == a3)
                        {
                          goto LABEL_75;
                        }
                      }

                      else if ((v34 & v28) != v31)
                      {
                        goto LABEL_85;
                      }

                      v33 = *v33;
                      if (!v33)
                      {
                        goto LABEL_85;
                      }
                    }
                  }

                  do
                  {
                    v35 = v33[1];
                    if (v35 == a3)
                    {
                      if (v33[2] == a3)
                      {
LABEL_75:
                        result = (a4 + 8);
                        if ((a4 + 8) != v33 + 3)
                        {
                          return sub_35354C(result, v33[3], v33[4], 0xAAAAAAAAAAAAAAABLL * ((v33[4] - v33[3]) >> 2));
                        }

                        return result;
                      }
                    }

                    else
                    {
                      if (v35 >= *&v21)
                      {
                        v35 %= *&v21;
                      }

                      if (v35 != v31)
                      {
                        break;
                      }
                    }

                    v33 = *v33;
                  }

                  while (v33);
                }
              }

LABEL_85:
              sub_49EC("unordered_map::at: key not found");
            }
          }

          else
          {
            if (v30 >= *&v21)
            {
              v30 %= *&v21;
            }

            if (v30 != v23)
            {
              return result;
            }
          }

          v27 = *v27;
        }

        while (v27);
      }
    }
  }

  return result;
}

void sub_47D35C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, unint64_t *a7)
{
  v8 = a4;
  v10 = *a7;
  a7[1] = *a7;
  if (a3)
  {
    goto LABEL_19;
  }

  v11 = *(a2 + 64);
  if (v11 == *(a2 + 72))
  {
    v12 = *a2;
  }

  else
  {
    v12 = *a2;
    if (!*v11)
    {
      v13 = *(v11 + 8);
      v14 = vabdd_f64(v13, v12);
      if (v13 == v12 || v14 < 2.22044605e-16)
      {
        goto LABEL_19;
      }
    }
  }

  v16 = llround(v12 * *(a4 + 4));
  v17 = a7[2];
  if (v10 >= v17)
  {
    v18 = v17 - v10;
    v19 = v18 >> 3;
    if ((v18 >> 3) <= 1)
    {
      v19 = 1;
    }

    v20 = v18 >= 0x7FFFFFFFFFFFFFF0;
    v21 = 0xFFFFFFFFFFFFFFFLL;
    if (!v20)
    {
      v21 = v19;
    }

    if (!(v21 >> 60))
    {
      operator new();
    }

    goto LABEL_100;
  }

  *v10 = v16;
  *(v10 + 4) = 0;
  *(v10 + 8) = -1;
  v10 += 16;
  a7[1] = v10;
LABEL_19:
  v23 = *(a2 + 64);
  v22 = *(a2 + 72);
  if (v22 != v23)
  {
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v27 = *(v23 + v24);
      if (v27 >= a3)
      {
        if (v27 > a3)
        {
          goto LABEL_40;
        }

        v28 = v23 + v24;
        v29 = llround(*(v23 + v24 + 8) * *(v8 + 4));
        v30 = a7[2];
        if (v10 < v30)
        {
          v26 = *(v28 + 40);
          *v10 = v29;
          *(v10 + 4) = v26;
          *(v10 + 8) = v25;
          v10 += 16;
        }

        else
        {
          v31 = *a7;
          v32 = v10 - *a7;
          v33 = v32 >> 4;
          v34 = (v32 >> 4) + 1;
          if (v34 >> 60)
          {
            goto LABEL_99;
          }

          v35 = a2;
          v36 = v30 - v31;
          if (v36 >> 3 > v34)
          {
            v34 = v36 >> 3;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF0)
          {
            v37 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v34;
          }

          if (v37)
          {
            if (!(v37 >> 60))
            {
              operator new();
            }

            goto LABEL_100;
          }

          v38 = 16 * v33;
          v39 = *(v28 + 40);
          *v38 = v29;
          *(v38 + 4) = v39;
          *(v38 + 8) = v25;
          v10 = 16 * v33 + 16;
          v40 = (v38 - 16 * (v32 >> 4));
          memcpy(v40, v31, v32);
          *a7 = v40;
          a7[1] = v10;
          a7[2] = 0;
          if (v31)
          {
            operator delete(v31);
          }

          v8 = a4;
          a2 = v35;
        }

        a7[1] = v10;
        v23 = *(a2 + 64);
        v22 = *(a2 + 72);
      }

      ++v25;
      v24 += 48;
      if (v25 >= 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 4))
      {
        goto LABEL_40;
      }
    }
  }

  v23 = *(a2 + 72);
LABEL_40:
  v41 = *(a2 + 16);
  v42 = ((*(a2 + 24) - v41) >> 3) - 1;
  if (v42 == a3)
  {
    if (v23 != v22 && *(v22 - 48) == a3)
    {
      v43 = *(v22 - 40);
      v44 = *(a2 + 8);
      v45 = vabdd_f64(v43, v44);
      if (v43 == v44 || v45 < 2.22044605e-16)
      {
        goto LABEL_82;
      }
    }

    v47 = llround(*(a2 + 8) * *(v8 + 4));
    v48 = a7[2];
    if (v10 >= v48)
    {
      v50 = *a7;
      v51 = v10 - *a7;
      v52 = v51 >> 4;
      v53 = (v51 >> 4) + 1;
      if (v53 >> 60)
      {
        goto LABEL_99;
      }

      v54 = v48 - v50;
      if (v54 >> 3 > v53)
      {
        v53 = v54 >> 3;
      }

      if (v54 >= 0x7FFFFFFFFFFFFFF0)
      {
        v55 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      if (v55)
      {
        if (!(v55 >> 60))
        {
          operator new();
        }

        goto LABEL_100;
      }

      v56 = a2;
      v57 = 16 * v52;
      *v57 = v47;
      *(v57 + 4) = 0;
      *(v57 + 8) = -1;
      v49 = 16 * v52 + 16;
      v58 = (v57 - 16 * (v51 >> 4));
      memcpy(v58, v50, v51);
      *a7 = v58;
      a7[1] = v49;
      a7[2] = 0;
      if (v50)
      {
        operator delete(v50);
      }

      v8 = a4;
      a2 = v56;
    }

    else
    {
      *v10 = v47;
      *(v10 + 4) = 0;
      *(v10 + 8) = -1;
      v49 = v10 + 16;
    }

    a7[1] = v49;
    v41 = *(a2 + 16);
    v42 = ((*(a2 + 24) - v41) >> 3) - 1;
  }

  if (v42 > a3)
  {
    v59 = v41 + 8 * a3;
    v60 = a2;
    v61 = (*(**a1 + 8))(*a1, v59);
    a2 = v60;
    if (__PAIR64__(*(v59 + 12), *(v59 + 8)) == __PAIR64__(WORD2(v61), v61) && *(v59 + 14) == BYTE6(v61))
    {
      v63 = *a7;
      v62 = a7[1];
      if (*a7 == v62 || (*(v62 - 12) & 1) == 0)
      {
        v64 = *(v8 + 4);
        v65 = a7[2];
        if (v62 >= v65)
        {
          v67 = v62 - v63;
          v68 = (v62 - v63) >> 4;
          v69 = v68 + 1;
          if ((v68 + 1) >> 60)
          {
            goto LABEL_99;
          }

          v70 = v65 - v63;
          if (v70 >> 3 > v69)
          {
            v69 = v70 >> 3;
          }

          if (v70 >= 0x7FFFFFFFFFFFFFF0)
          {
            v71 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = v69;
          }

          if (v71)
          {
            if (!(v71 >> 60))
            {
              operator new();
            }

            goto LABEL_100;
          }

          v72 = a2;
          v73 = 16 * v68;
          *v73 = v64;
          *(v73 + 4) = 1;
          *(v73 + 8) = -1;
          v66 = 16 * v68 + 16;
          memcpy(0, v63, v67);
          *a7 = 0;
          a7[1] = v66;
          a7[2] = 0;
          if (v63)
          {
            operator delete(v63);
          }

          a2 = v72;
        }

        else
        {
          *v62 = v64;
          *(v62 + 4) = 1;
          *(v62 + 8) = -1;
          v66 = v62 + 16;
        }

        a7[1] = v66;
      }
    }
  }

LABEL_82:
  if (*a7 == a7[1] && sub_47E0B4(a1, a2, a3, a6))
  {
    v74 = llround(vcvtd_n_f64_s32(*(v8 + 4) + a5, 1uLL));
    v75 = a7[1];
    v76 = a7[2];
    if (v75 < v76)
    {
      *v75 = v74;
      *(v75 + 4) = 0;
      *(v75 + 8) = -1;
      v77 = v75 + 16;
LABEL_97:
      a7[1] = v77;
      return;
    }

    v78 = *a7;
    v79 = v75 - *a7;
    v80 = v79 >> 4;
    v81 = (v79 >> 4) + 1;
    if (!(v81 >> 60))
    {
      v82 = v76 - v78;
      if (v82 >> 3 > v81)
      {
        v81 = v82 >> 3;
      }

      if (v82 >= 0x7FFFFFFFFFFFFFF0)
      {
        v83 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v83 = v81;
      }

      if (!v83)
      {
        v84 = 16 * v80;
        *v84 = v74;
        *(v84 + 4) = 0;
        *(v84 + 8) = -1;
        v77 = 16 * v80 + 16;
        v85 = (v84 - 16 * (v79 >> 4));
        memcpy(v85, v78, v79);
        *a7 = v85;
        a7[1] = v77;
        a7[2] = 0;
        if (v78)
        {
          operator delete(v78);
        }

        goto LABEL_97;
      }

      if (!(v83 >> 60))
      {
        operator new();
      }

LABEL_100:
      sub_1808();
    }

LABEL_99:
    sub_1794();
  }
}

void sub_47DA18(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, _DWORD *a6@<X5>, unsigned __int16 a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int16 *a10)
{
  v19 = sub_121739C(a9, 0, 0);
  *(a9 + 16) |= 0x800u;
  *(a9 + 84) = 1;
  v20 = (*(**a1 + 16))(*a1, a4[2] + 8 * a5, v19);
  v22 = *(a9 + 16);
  if (v23)
  {
    v22 |= 8u;
    *(a9 + 48) = v20;
  }

  v24 = a10[1];
  *(a9 + 64) = *a10;
  *(a9 + 68) = v24;
  *(a9 + 72) = a8;
  if ((a2 & 0x100000000) != 0)
  {
    *(a9 + 76) = 1;
    *(a9 + 16) = v22 | 0x3C2;
    v25 = *(a9 + 32);
    if (v25)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(a9 + 16) = v22 | 0x1C2;
    v25 = *(a9 + 32);
    if (v25)
    {
      goto LABEL_10;
    }
  }

  v26 = *(a9 + 8);
  v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
  if (v26)
  {
    v27 = *v27;
  }

  v25 = sub_1219600(v27);
  *(a9 + 32) = v25;
LABEL_10:
  LODWORD(v21) = a6[1];
  v28 = v21 * -6.28318531 / 4294967300.0 + 3.14159265;
  v29 = exp(v28);
  v30 = exp(-v28);
  v31 = atan((v29 - v30) * 0.5);
  HIDWORD(v32) = 1078765020;
  v33.f64[0] = v31 * 57.2957795;
  v34 = v25[2].i32[0];
  v25[2].i32[0] = v34 | 1;
  LODWORD(v32) = *a6;
  v25[2].i32[0] = v34 | 3;
  v33.f64[1] = v32 * 360.0 / 4294967300.0 + -180.0;
  v25[3] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v33, vdupq_n_s64(0x416312D000000000uLL)))));
  v35 = *(a9 + 16);
  v36 = v35 | 0x20;
  *(a9 + 16) = v35 | 0x20;
  *(a9 + 60) = a7;
  v37 = a6[2];
  if (v37 != 0x7FFFFFFF)
  {
    v36 = v35 | 0x30;
    *(a9 + 16) = v35 | 0x30;
    *(a9 + 56) = v37;
  }

  v38 = *(a10 + 63);
  if ((v38 & 0x80u) != 0)
  {
    v38 = *(a10 + 6);
  }

  if (v38)
  {
    *(a9 + 16) = v36 | 1;
    v39 = *(a9 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    sub_194EA1C((a9 + 24), (a10 + 20), v40);
  }

  v41 = a4[8];
  if (a3 < 0xAAAAAAAAAAAAAAABLL * ((a4[9] - v41) >> 4))
  {
    *(a9 + 16) |= 4u;
    v42 = *(a9 + 40);
    if (!v42)
    {
      v43 = *(a9 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      v42 = sub_1219678(v44);
      *(a9 + 40) = v42;
    }

    v45 = v41 + 48 * a3;
    if (sub_585D8((v45 + 16)))
    {
      v46 = sub_588E0(v45 + 16);
      *(v42 + 4) |= 2u;
      v42[4] = v46;
      v47 = sub_588D8(v45 + 16);
      *(v42 + 4) |= 1u;
      v42[3] = v47;
    }

    else if (sub_1211AB8())
    {
      sub_19594F8(&v51);
      sub_4A5C(&v51, "Skip encoding the UUID for anchor ", 34);
      v48 = std::ostream::operator<<();
      sub_4A5C(v48, " because it is invalid.", 23);
      operator new();
    }
  }

  v49 = a4[5];
  if (a4[6] - v49 <= a5)
  {
    v50 = 0;
  }

  else
  {
    v50 = *(v49 + a5);
    if ((v50 - 1) >= 3)
    {
      v50 = 0;
    }
  }

  *(a9 + 16) |= 0x400u;
  *(a9 + 80) = v50;
}

void sub_47E000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    sub_1959728(&a22);
    sub_121764C(v22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  sub_121764C(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_47E0B4(void *a1, void *a2, unint64_t a3, int a4)
{
  if (*(a1 + 17) <= a4)
  {
    return 1;
  }

  v7 = a3 - 1;
  v8 = *(a2[2] + 8 * (a3 - 1));
  v29 = 0;
  v30 = v8;
  __dst = 0;
  v28 = 0;
  (*(**a1 + 72))(*a1, &v30, &__dst);
  v9 = *(a2[2] + 8 * a3);
  v10 = (*(**a1 + 8))(*a1, &v30);
  v11 = v10;
  v12 = WORD2(v10);
  v13 = BYTE6(v10);
  v14 = __dst;
  if (v11 == v9 && v12 == WORD2(v9) && v13 == BYTE6(v9))
  {
    goto LABEL_38;
  }

  v17 = v28;
  if (__dst != v28)
  {
    while (*v14 != v11 || *(v14 + 2) != v12 || *(v14 + 6) != v13)
    {
      if (++v14 == v28)
      {
        goto LABEL_12;
      }
    }

    if (v14 != v28)
    {
      v21 = v14 + 1;
      if (v14 + 1 != v28)
      {
        do
        {
          if (*v21 != v11 || *(v21 + 2) != v12 || *(v21 + 6) != v13)
          {
            v23 = *v21;
            *(v14 + 3) = *(v21 + 3);
            *v14++ = v23;
          }

          ++v21;
        }

        while (v21 != v17);
        v17 = v28;
      }
    }
  }

  if (v14 != v17)
  {
    v17 = v14;
    v28 = v14;
  }

LABEL_12:
  v18 = a2[5];
  v19 = a2[6] - v18;
  if (v19 > v7)
  {
    v20 = *(v18 + v7);
    if (v19 <= a3)
    {
      goto LABEL_14;
    }

LABEL_31:
    v14 = __dst;
    if (v20 != *(v18 + a3))
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v20 = 0;
  if (v19 > a3)
  {
    goto LABEL_31;
  }

LABEL_14:
  v14 = __dst;
  if (v20)
  {
    goto LABEL_38;
  }

LABEL_32:
  if (v17 - v14 == 8)
  {
    v22 = 0;
    goto LABEL_39;
  }

  v26 = (*(**a1 + 56))(*a1, &v30);
  v31[0] = a1;
  v31[1] = &v26;
  v24 = sub_480184(__dst, v28, v31);
  v14 = __dst;
  if (__dst != v24 && v24 - __dst <= 8 && __PAIR64__(*(__dst + 2), *__dst) == __PAIR64__(WORD2(v9), v9))
  {
    v22 = *(__dst + 6) != BYTE6(v9);
    goto LABEL_39;
  }

LABEL_38:
  v22 = 1;
LABEL_39:
  if (v14)
  {
    v28 = v14;
    operator delete(v14);
  }

  return v22;
}

void sub_47E384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_47E3AC(void *a1, char *__src, uint64_t *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v9 = *a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a1] >> 2) + 1;
    if (v10 > 0x1555555555555555)
    {
      sub_1794();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 2);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0xAAAAAAAAAAAAAAALL)
    {
      v12 = 0x1555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v14 = 4 * ((__src - v9) >> 2);
    if (!(0xAAAAAAAAAAAAAAABLL * ((__src - v9) >> 2)))
    {
      if (__src - v9 < 1)
      {
        operator new();
      }

      v14 = 4 * ((__src - v9) >> 2) - 12 * ((1 - 0x5555555555555555 * ((4 * ((__src - v9) >> 2)) >> 2) + ((1 - 0x5555555555555555 * ((4 * ((__src - v9) >> 2)) >> 2)) >> 63)) >> 1);
    }

    v15 = *a3;
    *(v14 + 8) = *(a3 + 2);
    *v14 = v15;
    memcpy((v14 + 12), __src, a1[1] - __src);
    v16 = *a1;
    v17 = v14 + 12 + a1[1] - v3;
    a1[1] = v3;
    v18 = v3 - v16;
    v19 = (v14 - (v3 - v16));
    memcpy(v19, v16, v18);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v17;
    a1[2] = 0;
    if (v20)
    {
      operator delete(v20);
    }

    return v14;
  }

  else
  {
    if (__src != v5)
    {
      v22 = *a3;
      v23 = *(a3 + 2);
      v7 = __src + 12;
      if (v5 < 0xC)
      {
        a1[1] = v5;
        if (v5 == v7)
        {
LABEL_21:
          *v3 = v22;
          *(v3 + 2) = v23;
          return v3;
        }
      }

      else
      {
        v8 = *(v5 - 12);
        *(v5 + 2) = *(v5 - 1);
        *v5 = v8;
        a1[1] = v5 + 12;
        if (v5 == v7)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 12, __src, v5 - v7);
      goto LABEL_21;
    }

    v13 = *a3;
    *(v5 + 2) = *(a3 + 2);
    *v5 = v13;
    a1[1] = v5 + 12;
  }

  return v3;
}

void sub_47E64C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_47E664(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4.i64[0] = *a1;
  v4.i64[1] = HIDWORD(*a1);
  v5 = vcvtq_f64_u64(v4);
  v4.i64[0] = *a2;
  v4.i64[1] = HIDWORD(*a2);
  v6 = vsubq_f64(vcvtq_f64_u64(v4), v5);
  v7 = vmulq_f64(v6, v6);
  v8 = vaddvq_f64(v7);
  v9 = fabs(v8);
  if (v8 == 0.0 || v9 < 2.22044605e-16)
  {
    goto LABEL_6;
  }

  v13.i64[0] = *a3;
  v13.i64[1] = HIDWORD(*a3);
  v14 = vmulq_f64(v6, vsubq_f64(vcvtq_f64_u64(v13), v5));
  v15 = vdivq_f64(vaddq_f64(v14, vdupq_laneq_s64(v14, 1)), vaddq_f64(v7, vdupq_laneq_s64(v7, 1)));
  if (v15.f64[0] <= 0.0)
  {
    v11 = *a1;
    v12 = *(a1 + 2);
    goto LABEL_13;
  }

  if (v15.f64[0] >= 1.0)
  {
LABEL_6:
    v11 = *a2;
    v12 = *(a2 + 2);
LABEL_13:
    *(a4 + 8) = v12;
    *a4 = v11;
    goto LABEL_14;
  }

  *a4 = llround(vaddq_f64(vmulq_f64(v6, v15), v5).f64[0]);
  *(a4 + 4) = llround(vaddq_f64(vmulq_laneq_f64(v15, v6, 1), vdupq_laneq_s64(v5, 1)).f64[0]);
  v16 = *(a1 + 2);
  if (v16 != 0x7FFFFFFF)
  {
    v17 = *(a2 + 2);
    if (v17 != 0x7FFFFFFF)
    {
      *(a4 + 8) = (v15.f64[0] * (v17 - v16) + v16);
    }
  }

LABEL_14:
  v18.i64[0] = *a3;
  v18.i64[1] = HIDWORD(*a3);
  v19 = vcvtq_f64_u64(v18);
  v18.i64[0] = *a4;
  v18.i64[1] = HIDWORD(*a4);
  v20 = vdivq_f64(vsubq_f64(v19, vcvtq_f64_u64(v18)), vdupq_n_s64(0x4059000000000000uLL));
  v21 = *(a3 + 8);
  if (v21 == 0x7FFFFFFF)
  {
    return vaddvq_f64(vmulq_f64(v20, v20));
  }

  v22 = *(a4 + 8);
  if (v22 == 0x7FFFFFFF)
  {
    return vaddvq_f64(vmulq_f64(v20, v20));
  }

  v24 = v21 - v22;
  if (v24 < 0)
  {
    v24 = -v24;
  }

  return vaddvq_f64(vmulq_f64(v20, v20)) + v24 / 100.0 * (v24 / 100.0);
}

uint64_t sub_47E7E8(uint64_t a1, uint64_t a2)
{
  result = sub_7E7E4(2u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v12);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_4A5C(&v12, v5, v6);
  if ((v22 & 0x10) != 0)
  {
    v8 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v8 = v18;
    }

    v9 = v17;
    v7 = v8 - v17;
    if (v8 - v17 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }

LABEL_14:
    if (v7 >= 0x17)
    {
      operator new();
    }

    v11 = v7;
    if (v7)
    {
      memmove(&__p, v9, v7);
    }

    goto LABEL_19;
  }

  if ((v22 & 8) != 0)
  {
    v9 = v15;
    v7 = v16 - v15;
    if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v11 = 0;
LABEL_19:
  *(&__p + v7) = 0;
  sub_7E854(&__p, 2u);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_47EA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_47EA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_47F850(a2, a4, __p);
  (*(*a1 + 16))(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_47EB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_47EB30(uint64_t a1, uint64_t a2)
{
  result = sub_7E7E4(2u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v12);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_4A5C(&v12, v5, v6);
  if ((v22 & 0x10) != 0)
  {
    v8 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v8 = v18;
    }

    v9 = v17;
    v7 = v8 - v17;
    if (v8 - v17 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }

LABEL_14:
    if (v7 >= 0x17)
    {
      operator new();
    }

    v11 = v7;
    if (v7)
    {
      memmove(&__p, v9, v7);
    }

    goto LABEL_19;
  }

  if ((v22 & 8) != 0)
  {
    v9 = v15;
    v7 = v16 - v15;
    if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v11 = 0;
LABEL_19:
  *(&__p + v7) = 0;
  sub_7E854(&__p, 2u);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_47ED88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_47EDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_47F850(a2, a4, __p);
  (*(*a1 + 32))(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_47EE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_47EE78(uint64_t a1, uint64_t a2)
{
  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v12);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_4A5C(&v12, v5, v6);
  if ((v22 & 0x10) != 0)
  {
    v8 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v8 = v18;
    }

    v9 = v17;
    v7 = v8 - v17;
    if (v8 - v17 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }

LABEL_14:
    if (v7 >= 0x17)
    {
      operator new();
    }

    v11 = v7;
    if (v7)
    {
      memmove(&__p, v9, v7);
    }

    goto LABEL_19;
  }

  if ((v22 & 8) != 0)
  {
    v9 = v15;
    v7 = v16 - v15;
    if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v11 = 0;
LABEL_19:
  *(&__p + v7) = 0;
  sub_7E854(&__p, 1u);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_47F0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_47F11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_47F850(a2, a4, __p);
  (*(*a1 + 48))(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_47F1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_47F1C0(uint64_t a1, uint64_t a2)
{
  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v12);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_4A5C(&v12, v5, v6);
  if ((v22 & 0x10) != 0)
  {
    v8 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v8 = v18;
    }

    v9 = v17;
    v7 = v8 - v17;
    if (v8 - v17 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }

LABEL_14:
    if (v7 >= 0x17)
    {
      operator new();
    }

    v11 = v7;
    if (v7)
    {
      memmove(&__p, v9, v7);
    }

    goto LABEL_19;
  }

  if ((v22 & 8) != 0)
  {
    v9 = v15;
    v7 = v16 - v15;
    if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v11 = 0;
LABEL_19:
  *(&__p + v7) = 0;
  sub_7E854(&__p, 1u);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_47F418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_47F464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_47F850(a2, a4, __p);
  (*(*a1 + 64))(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_47F4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_47F508(uint64_t a1, uint64_t a2)
{
  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v12);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_4A5C(&v12, v5, v6);
  if ((v22 & 0x10) != 0)
  {
    v8 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v8 = v18;
    }

    v9 = v17;
    v7 = v8 - v17;
    if (v8 - v17 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }

LABEL_14:
    if (v7 >= 0x17)
    {
      operator new();
    }

    v11 = v7;
    if (v7)
    {
      memmove(&__p, v9, v7);
    }

    goto LABEL_19;
  }

  if ((v22 & 8) != 0)
  {
    v9 = v15;
    v7 = v16 - v15;
    if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v11 = 0;
LABEL_19:
  *(&__p + v7) = 0;
  sub_7E854(&__p, 3u);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_47F760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_47F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_47F850(a2, a4, __p);
  (*(*a1 + 80))(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_47F834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_47F850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  sub_19594F8(&v19);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = sub_4A5C(&v19, v7, v8);
  sub_4A5C(v9, ":", 1);
  v10 = std::ostream::operator<<();
  v11 = sub_4A5C(v10, " | ", 3);
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

  sub_4A5C(v11, v13, v14);
  if ((v29 & 0x10) != 0)
  {
    v16 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v16 = v25;
    }

    v17 = v24;
    v15 = v16 - v24;
    if (v16 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v15 = 0;
      a3[23] = 0;
      goto LABEL_24;
    }

    v17 = v22;
    v15 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a3[23] = v15;
  if (v15)
  {
    memmove(a3, v17, v15);
  }

LABEL_24:
  a3[v15] = 0;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_47FAC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void *sub_47FADC(void *a1)
{
  *a1 = off_266AB00;
  v2 = 132;
  do
  {
    v3 = &a1[v2];
    v2 -= 6;
    v4 = *(v3 - 3);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v3 - 5;
      do
      {
        if ((*(a1[v2] + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 8);
          if (v9)
          {
            *(v8 + 16) = v9;
            operator delete(v9);
            v4 = *(v3 - 3);
          }
        }

        ++v6;
        v5 += 32;
      }

      while (v6 != v4);
      operator delete(a1[v2]);
      a1[v2] = &unk_2290750;
      *(v3 - 1) = 0;
      *(v3 - 4) = 0;
      *(v3 - 3) = 0;
      *v7 = 0;
    }
  }

  while (v2 != 36);
  *a1 = &off_266AB88;
  v10 = a1[27];
  if (v10)
  {
    a1[28] = v10;
    operator delete(v10);
  }

  return a1;
}

int *sub_47FBEC(uint64_t a1, uint64_t a2, int **a3)
{
  (*(*a1 + 64))(a1);
  result = sub_47FE00(*a3, a3[1], a1);
  if (result != a3[1])
  {
    a3[1] = result;
  }

  return result;
}

uint64_t sub_47FC88(uint64_t a1)
{
  (*(*a1 + 32))(&v5);
  v2 = v7;
  if (v7 < 0x168u)
  {
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(v8);
    v3 = __p[0];
    if (!__p[0])
    {
      return v2;
    }

    goto LABEL_4;
  }

  v2 = sub_464198(__p, 1, a1 + 8);
  v7 = v2;
  if (v9 < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = __p[0];
  if (__p[0])
  {
LABEL_4:
    __p[1] = v3;
    operator delete(v3);
  }

  return v2;
}

uint64_t sub_47FD44(uint64_t a1)
{
  (*(*a1 + 32))(&v5);
  v2 = v7;
  if (v7 < 0x168u)
  {
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(v8);
    v3 = __p[0];
    if (!__p[0])
    {
      return v2;
    }

    goto LABEL_4;
  }

  v2 = sub_464198(__p, 0, a1 + 8);
  v7 = v2;
  if (v9 < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = __p[0];
  if (__p[0])
  {
LABEL_4:
    __p[1] = v3;
    operator delete(v3);
  }

  return v2;
}

int *sub_47FE00(int *a1, int *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 == a2)
  {
    return v3;
  }

  v3 = a1;
  do
  {
    (*(*a3 + 32))(&v13, a3, v3, 0);
    v6 = v16;
    if ((v18 & 0x80000000) == 0)
    {
      v7 = __p;
      if (!__p)
      {
        goto LABEL_6;
      }

LABEL_5:
      v15 = v7;
      operator delete(v7);
      goto LABEL_6;
    }

    operator delete(v17);
    v7 = __p;
    if (__p)
    {
      goto LABEL_5;
    }

LABEL_6:
    if (!v6)
    {
      goto LABEL_11;
    }

    v3 += 2;
  }

  while (v3 != a2);
  v3 = a2;
LABEL_11:
  if (v3 != a2)
  {
    for (i = v3 + 2; ; i += 2)
    {
      if (i == a2)
      {
        return v3;
      }

      (*(*a3 + 32))(&v13, a3, i, 0);
      v10 = v16;
      if ((v18 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v17);
      v11 = __p;
      if (__p)
      {
        goto LABEL_18;
      }

LABEL_19:
      if (v10)
      {
        v12 = *i;
        *(v3 + 3) = *(i + 3);
        *v3 = v12;
        v3 += 2;
      }
    }

    v11 = __p;
    if (!__p)
    {
      goto LABEL_19;
    }

LABEL_18:
    v15 = v11;
    operator delete(v11);
    goto LABEL_19;
  }

  return v3;
}

void *sub_47FF64(void *a1)
{
  *a1 = off_266AC30;
  v2 = 132;
  do
  {
    v3 = &a1[v2];
    v2 -= 6;
    v4 = *(v3 - 3);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v3 - 5;
      do
      {
        if ((*(a1[v2] + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 8);
          if (v9)
          {
            *(v8 + 16) = v9;
            operator delete(v9);
            v4 = *(v3 - 3);
          }
        }

        ++v6;
        v5 += 32;
      }

      while (v6 != v4);
      operator delete(a1[v2]);
      a1[v2] = &unk_2290750;
      *(v3 - 1) = 0;
      *(v3 - 4) = 0;
      *(v3 - 3) = 0;
      *v7 = 0;
    }
  }

  while (v2 != 36);
  *a1 = &off_266AB88;
  v10 = a1[27];
  if (v10)
  {
    a1[28] = v10;
    operator delete(v10);
  }

  return a1;
}

void *sub_480074(void *a1)
{
  *a1 = off_266ACA8;
  v2 = 132;
  do
  {
    v3 = &a1[v2];
    v2 -= 6;
    v4 = *(v3 - 3);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v3 - 5;
      do
      {
        if ((*(a1[v2] + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 8);
          if (v9)
          {
            *(v8 + 16) = v9;
            operator delete(v9);
            v4 = *(v3 - 3);
          }
        }

        ++v6;
        v5 += 32;
      }

      while (v6 != v4);
      operator delete(a1[v2]);
      a1[v2] = &unk_2290750;
      *(v3 - 1) = 0;
      *(v3 - 4) = 0;
      *(v3 - 3) = 0;
      *v7 = 0;
    }
  }

  while (v2 != 36);
  *a1 = &off_266AB88;
  v10 = a1[27];
  if (v10)
  {
    a1[28] = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t *sub_480184(uint64_t *a1, uint64_t *a2, _WORD **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while (2)
    {
      v6 = a2;
      while (1)
      {
        v7 = *a3;
        v8 = (*(***a3 + 48))(**a3, v5);
        v9 = v8 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v8 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v9) = v9 - 360;
        }

        if (v9 < -179)
        {
          LOWORD(v9) = v9 + 360;
        }

        v9 = v9;
        if ((v9 & 0x8000u) != 0)
        {
          v9 = -v9;
        }

        if (v9 >= *(v7 + 92))
        {
          break;
        }

        if (++v5 == v3)
        {
          return v3;
        }
      }

      do
      {
        if (--v3 == v5)
        {
          return v5;
        }

        v10 = *a3;
        v11 = (*(***a3 + 48))(**a3, v3);
        v12 = v11 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v11 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v12) = v12 - 360;
        }

        if (v12 < -179)
        {
          LOWORD(v12) = v12 + 360;
        }

        v12 = v12;
        if ((v12 & 0x8000u) != 0)
        {
          v12 = -v12;
        }
      }

      while (v12 >= *(v10 + 92));
      v13 = *v5;
      v14 = *v3;
      *(v5 + 3) = *(v3 + 3);
      *v5++ = v14;
      *v3 = v13;
      *(v3 + 6) = BYTE6(v13);
      *(v3 + 2) = WORD2(v13);
      a2 = v6;
      if (v3 != v5)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

void *sub_480354(void *a1, unint64_t *a2)
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

uint64_t sub_480694(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  *v7 = *a2;
  LODWORD(a3) = *(a2 + 8);
  *(v7 + 8) = *&a3 / 1000000000.0;
  *(v7 + 16) = sub_585D8((a2 + 16));
  *(v7 + 24) = sub_585E0(a2 + 16);
  *(v7 + 32) = v8;
  *(v7 + 40) = *(a2 + 40);
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = (v7 + *a1 - v10);
    do
    {
      v13 = *v9;
      v14 = v9[2];
      v12[1] = v9[1];
      v12[2] = v14;
      *v12 = v13;
      v12 += 3;
      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v7 + 48;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 48;
}

uint64_t sub_48080C(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v17 = a5;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return v17;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, a2);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return v17;
          }
        }

        v9 = *(sub_4D1F50(a1, a2) + 32);
        LODWORD(v16) = v9;
        BYTE6(v16) = BYTE6(v9);
        WORD2(v16) = WORD2(v9);
        sub_2B5858(&v17, &v16);
        ++a2;
      }
    }

    while (a2 < sub_4D1DC0(a1))
    {
      v13 = *(sub_4D1F50(a1, a2) + 32);
      LODWORD(v16) = v13;
      BYTE6(v16) = BYTE6(v13);
      WORD2(v16) = WORD2(v13);
      sub_2B5858(&v17, &v16);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_4D1DC0(a3))
    {
      v14 = *(sub_4D1F50(0, a2) + 32);
      LODWORD(v16) = v14;
      BYTE6(v16) = BYTE6(v14);
      WORD2(v16) = WORD2(v14);
      sub_2B5858(&v17, &v16);
      ++a2;
    }
  }

  return v17;
}

std::string **sub_480990(std::string **a1, std::string **a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (((*v2)->__r_.__value_.__s.__data_[17] & 8) != 0 && HIDWORD((*v2)[3].__r_.__value_.__r.__words[1]) == 1)
    {
      if (++v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = (v2 + 1); i != a2; ++i)
      {
        v6 = *i;
        if ((*(*i + 17) & 8) != 0 && *(v6 + 84) == 1)
        {
          v7 = *v2;
          if (*v2 != v6)
          {
            size = v7->__r_.__value_.__l.__size_;
            if ((size & 2) != 0)
            {
              size = 0;
            }

            else if (size)
            {
              size = *(size & 0xFFFFFFFFFFFFFFFCLL);
            }

            v9 = *(v6 + 8);
            if ((v9 & 2) != 0)
            {
              v9 = 0;
            }

            else if (v9)
            {
              v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (size == v9)
            {
              sub_12184D4(v7, v6);
            }

            else
            {
              sub_121845C(v7, v6);
            }
          }

          ++v2;
        }
      }
    }
  }

  return v2;
}

std::string **sub_480A88(std::string **a1, std::string **a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (((*v2)->__r_.__value_.__s.__data_[17] & 8) != 0 && HIDWORD((*v2)[3].__r_.__value_.__r.__words[1]) == 1)
    {
      if (++v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = (v2 + 1); i != a2; ++i)
      {
        v6 = *i;
        if ((*(*i + 17) & 8) != 0 && *(v6 + 84) == 1)
        {
          v7 = *v2;
          if (*v2 != v6)
          {
            size = v7->__r_.__value_.__l.__size_;
            if ((size & 2) != 0)
            {
              size = 0;
            }

            else if (size)
            {
              size = *(size & 0xFFFFFFFFFFFFFFFCLL);
            }

            v9 = *(v6 + 8);
            if ((v9 & 2) != 0)
            {
              v9 = 0;
            }

            else if (v9)
            {
              v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (size == v9)
            {
              sub_12184D4(v7, v6);
            }

            else
            {
              sub_121845C(v7, v6);
            }
          }

          ++v2;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_480B80(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  while (a1)
  {
    v11 = sub_4D1DC0(a1);
    v12 = v11;
    if (a3)
    {
      v13 = sub_4D1DC0(a3);
      if (a2 >= v12 || a4 >= v13)
      {
        if (a2 < v12 == a4 < v13)
        {
          return a5;
        }
      }

      else
      {
        v14 = sub_4D1F50(a1, a2);
        if (v14 == sub_4D1F50(a3, a4))
        {
          return a5;
        }
      }
    }

    else if (a2 >= v11)
    {
      return a5;
    }

LABEL_16:
    v15 = *(sub_4D1F50(a1, a2) + 36);
    if ((v15 & 0x40000000) != 0)
    {
      v16 = 3;
    }

    else
    {
      v16 = (v15 < 0) + 1;
    }

    v18 = *(a5 + 8);
    v17 = *(a5 + 16);
    if (v18 < v17)
    {
      *v18 = v16;
      v10 = v18 + 1;
    }

    else
    {
      v19 = *a5;
      v20 = &v18[-*a5];
      v21 = (v20 + 1);
      if ((v20 + 1) < 0)
      {
        sub_1794();
      }

      v22 = v17 - v19;
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        operator new();
      }

      v24 = &v18[-*a5];
      *v20 = v16;
      v10 = v20 + 1;
      memcpy(0, v19, v24);
      *a5 = 0;
      *(a5 + 8) = v20 + 1;
      *(a5 + 16) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    *(a5 + 8) = v10;
    ++a2;
  }

  if (a3 && a4 < sub_4D1DC0(a3))
  {
    goto LABEL_16;
  }

  return a5;
}

uint64_t sub_480D44(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v20 = a5;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_4D1DC0(a1);
        v12 = sub_4D1DC0(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return v20;
          }
        }

        else
        {
          v13 = sub_4D1F50(a1, a2);
          if (v13 == sub_4D1F50(a3, a4))
          {
            return v20;
          }
        }

        v9 = sub_4D1F50(a1, a2);
        v10 = *(v9 + 36);
        LODWORD(v19) = *(v9 + 32);
        WORD2(v19) = v10;
        BYTE6(v19) = (v10 & 0x20000000) == 0;
        sub_2B5858(&v20, &v19);
        ++a2;
      }
    }

    while (a2 < sub_4D1DC0(a1))
    {
      v14 = sub_4D1F50(a1, a2);
      v15 = *(v14 + 36);
      LODWORD(v19) = *(v14 + 32);
      WORD2(v19) = v15;
      BYTE6(v19) = (v15 & 0x20000000) == 0;
      sub_2B5858(&v20, &v19);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_4D1DC0(a3))
    {
      v16 = sub_4D1F50(0, a2);
      v17 = *(v16 + 36);
      LODWORD(v19) = *(v16 + 32);
      WORD2(v19) = v17;
      BYTE6(v19) = (v17 & 0x20000000) == 0;
      sub_2B5858(&v20, &v19);
      ++a2;
    }
  }

  return v20;
}

std::string **sub_480ED4(std::string **a1, std::string **a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (((*v2)->__r_.__value_.__s.__data_[17] & 8) != 0 && HIDWORD((*v2)[3].__r_.__value_.__r.__words[1]) == 1)
    {
      if (++v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = (v2 + 1); i != a2; ++i)
      {
        v6 = *i;
        if ((*(*i + 17) & 8) != 0 && *(v6 + 84) == 1)
        {
          v7 = *v2;
          if (*v2 != v6)
          {
            size = v7->__r_.__value_.__l.__size_;
            if ((size & 2) != 0)
            {
              size = 0;
            }

            else if (size)
            {
              size = *(size & 0xFFFFFFFFFFFFFFFCLL);
            }

            v9 = *(v6 + 8);
            if ((v9 & 2) != 0)
            {
              v9 = 0;
            }

            else if (v9)
            {
              v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (size == v9)
            {
              sub_12184D4(v7, v6);
            }

            else
            {
              sub_121845C(v7, v6);
            }
          }

          ++v2;
        }
      }
    }
  }

  return v2;
}

std::string **sub_480FCC(std::string **a1, std::string **a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (((*v2)->__r_.__value_.__s.__data_[17] & 8) != 0 && HIDWORD((*v2)[3].__r_.__value_.__r.__words[1]) == 1)
    {
      if (++v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = (v2 + 1); i != a2; ++i)
      {
        v6 = *i;
        if ((*(*i + 17) & 8) != 0 && *(v6 + 84) == 1)
        {
          v7 = *v2;
          if (*v2 != v6)
          {
            size = v7->__r_.__value_.__l.__size_;
            if ((size & 2) != 0)
            {
              size = 0;
            }

            else if (size)
            {
              size = *(size & 0xFFFFFFFFFFFFFFFCLL);
            }

            v9 = *(v6 + 8);
            if ((v9 & 2) != 0)
            {
              v9 = 0;
            }

            else if (v9)
            {
              v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (size == v9)
            {
              sub_12184D4(v7, v6);
            }

            else
            {
              sub_121845C(v7, v6);
            }
          }

          ++v2;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_4810C4(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v17 = a5;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_F69D2C(a1);
        v11 = sub_F69D2C(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return v17;
          }
        }

        else
        {
          v12 = sub_F69DE0(a1, a2);
          if (v12 == sub_F69DE0(a3, a4))
          {
            return v17;
          }
        }

        v9 = *(sub_F69DE0(a1, a2) + 32);
        LODWORD(v16) = v9;
        BYTE6(v16) = BYTE6(v9);
        WORD2(v16) = WORD2(v9);
        sub_2B5858(&v17, &v16);
        ++a2;
      }
    }

    while (a2 < sub_F69D2C(a1))
    {
      v13 = *(sub_F69DE0(a1, a2) + 32);
      LODWORD(v16) = v13;
      BYTE6(v16) = BYTE6(v13);
      WORD2(v16) = WORD2(v13);
      sub_2B5858(&v17, &v16);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_F69D2C(a3))
    {
      v14 = *(sub_F69DE0(0, a2) + 32);
      LODWORD(v16) = v14;
      BYTE6(v16) = BYTE6(v14);
      WORD2(v16) = WORD2(v14);
      sub_2B5858(&v17, &v16);
      ++a2;
    }
  }

  return v17;
}

std::string **sub_481248(std::string **a1, std::string **a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (((*v2)->__r_.__value_.__s.__data_[17] & 8) != 0 && HIDWORD((*v2)[3].__r_.__value_.__r.__words[1]) == 1)
    {
      if (++v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = (v2 + 1); i != a2; ++i)
      {
        v6 = *i;
        if ((*(*i + 17) & 8) != 0 && *(v6 + 84) == 1)
        {
          v7 = *v2;
          if (*v2 != v6)
          {
            size = v7->__r_.__value_.__l.__size_;
            if ((size & 2) != 0)
            {
              size = 0;
            }

            else if (size)
            {
              size = *(size & 0xFFFFFFFFFFFFFFFCLL);
            }

            v9 = *(v6 + 8);
            if ((v9 & 2) != 0)
            {
              v9 = 0;
            }

            else if (v9)
            {
              v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (size == v9)
            {
              sub_12184D4(v7, v6);
            }

            else
            {
              sub_121845C(v7, v6);
            }
          }

          ++v2;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_481340(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v17 = a5;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_F6D024(a1);
        v11 = sub_F6D024(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return v17;
          }
        }

        else
        {
          v12 = sub_F6D17C(a1, a2);
          if (v12 == sub_F6D17C(a3, a4))
          {
            return v17;
          }
        }

        v9 = *(sub_F6D17C(a1, a2) + 32);
        LODWORD(v16) = v9;
        BYTE6(v16) = BYTE6(v9);
        WORD2(v16) = WORD2(v9);
        sub_2B5858(&v17, &v16);
        ++a2;
      }
    }

    while (a2 < sub_F6D024(a1))
    {
      v13 = *(sub_F6D17C(a1, a2) + 32);
      LODWORD(v16) = v13;
      BYTE6(v16) = BYTE6(v13);
      WORD2(v16) = WORD2(v13);
      sub_2B5858(&v17, &v16);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_F6D024(a3))
    {
      v14 = *(sub_F6D17C(0, a2) + 32);
      LODWORD(v16) = v14;
      BYTE6(v16) = BYTE6(v14);
      WORD2(v16) = WORD2(v14);
      sub_2B5858(&v17, &v16);
      ++a2;
    }
  }

  return v17;
}

std::string **sub_4814C4(std::string **a1, std::string **a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (((*v2)->__r_.__value_.__s.__data_[17] & 8) != 0 && HIDWORD((*v2)[3].__r_.__value_.__r.__words[1]) == 1)
    {
      if (++v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = (v2 + 1); i != a2; ++i)
      {
        v6 = *i;
        if ((*(*i + 17) & 8) != 0 && *(v6 + 84) == 1)
        {
          v7 = *v2;
          if (*v2 != v6)
          {
            size = v7->__r_.__value_.__l.__size_;
            if ((size & 2) != 0)
            {
              size = 0;
            }

            else if (size)
            {
              size = *(size & 0xFFFFFFFFFFFFFFFCLL);
            }

            v9 = *(v6 + 8);
            if ((v9 & 2) != 0)
            {
              v9 = 0;
            }

            else if (v9)
            {
              v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (size == v9)
            {
              sub_12184D4(v7, v6);
            }

            else
            {
              sub_121845C(v7, v6);
            }
          }

          ++v2;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_4815BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  while (a1)
  {
    v11 = sub_F6FD88(a1);
    v12 = v11;
    if (a3)
    {
      v13 = sub_F6FD88(a3);
      if (a2 >= v12 || a4 >= v13)
      {
        if (a2 < v12 == a4 < v13)
        {
          return a5;
        }
      }

      else
      {
        v14 = sub_F6FE3C(a1, a2);
        if (v14 == sub_F6FE3C(a3, a4))
        {
          return a5;
        }
      }
    }

    else if (a2 >= v11)
    {
      return a5;
    }

LABEL_16:
    v15 = *(sub_F6FE3C(a1, a2) + 36);
    if ((v15 & 0x40000000) != 0)
    {
      v16 = 3;
    }

    else
    {
      v16 = (v15 < 0) + 1;
    }

    v18 = *(a5 + 8);
    v17 = *(a5 + 16);
    if (v18 < v17)
    {
      *v18 = v16;
      v10 = v18 + 1;
    }

    else
    {
      v19 = *a5;
      v20 = &v18[-*a5];
      v21 = (v20 + 1);
      if ((v20 + 1) < 0)
      {
        sub_1794();
      }

      v22 = v17 - v19;
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        operator new();
      }

      v24 = &v18[-*a5];
      *v20 = v16;
      v10 = v20 + 1;
      memcpy(0, v19, v24);
      *a5 = 0;
      *(a5 + 8) = v20 + 1;
      *(a5 + 16) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    *(a5 + 8) = v10;
    ++a2;
  }

  if (a3 && a4 < sub_F6FD88(a3))
  {
    goto LABEL_16;
  }

  return a5;
}

uint64_t sub_481780(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v20 = a5;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_F6FD88(a1);
        v12 = sub_F6FD88(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return v20;
          }
        }

        else
        {
          v13 = sub_F6FE3C(a1, a2);
          if (v13 == sub_F6FE3C(a3, a4))
          {
            return v20;
          }
        }

        v9 = sub_F6FE3C(a1, a2);
        v10 = *(v9 + 36);
        LODWORD(v19) = *(v9 + 32);
        WORD2(v19) = v10;
        BYTE6(v19) = (v10 & 0x20000000) == 0;
        sub_2B5858(&v20, &v19);
        ++a2;
      }
    }

    while (a2 < sub_F6FD88(a1))
    {
      v14 = sub_F6FE3C(a1, a2);
      v15 = *(v14 + 36);
      LODWORD(v19) = *(v14 + 32);
      WORD2(v19) = v15;
      BYTE6(v19) = (v15 & 0x20000000) == 0;
      sub_2B5858(&v20, &v19);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_F6FD88(a3))
    {
      v16 = sub_F6FE3C(0, a2);
      v17 = *(v16 + 36);
      LODWORD(v19) = *(v16 + 32);
      WORD2(v19) = v17;
      BYTE6(v19) = (v17 & 0x20000000) == 0;
      sub_2B5858(&v20, &v19);
      ++a2;
    }
  }

  return v20;
}

std::string **sub_481910(std::string **a1, std::string **a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (((*v2)->__r_.__value_.__s.__data_[17] & 8) != 0 && HIDWORD((*v2)[3].__r_.__value_.__r.__words[1]) == 1)
    {
      if (++v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = (v2 + 1); i != a2; ++i)
      {
        v6 = *i;
        if ((*(*i + 17) & 8) != 0 && *(v6 + 84) == 1)
        {
          v7 = *v2;
          if (*v2 != v6)
          {
            size = v7->__r_.__value_.__l.__size_;
            if ((size & 2) != 0)
            {
              size = 0;
            }

            else if (size)
            {
              size = *(size & 0xFFFFFFFFFFFFFFFCLL);
            }

            v9 = *(v6 + 8);
            if ((v9 & 2) != 0)
            {
              v9 = 0;
            }

            else if (v9)
            {
              v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (size == v9)
            {
              sub_12184D4(v7, v6);
            }

            else
            {
              sub_121845C(v7, v6);
            }
          }

          ++v2;
        }
      }
    }
  }

  return v2;
}

void sub_481A08()
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
  xmmword_278FF38 = 0u;
  unk_278FF48 = 0u;
  dword_278FF58 = 1065353216;
  sub_3A9A34(&xmmword_278FF38, v0);
  sub_3A9A34(&xmmword_278FF38, v3);
  sub_3A9A34(&xmmword_278FF38, __p);
  sub_3A9A34(&xmmword_278FF38, v9);
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
    qword_278FF10 = 0;
    qword_278FF18 = 0;
    qword_278FF08 = 0;
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

void sub_481C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_278FF20)
  {
    qword_278FF28 = qword_278FF20;
    operator delete(qword_278FF20);
  }

  _Unwind_Resume(exception_object);
}

void sub_481CFC(uint64_t a1)
{
  *(a1 + 24) = xmmword_2297CF0;
  *(a1 + 40) = xmmword_2297D00;
  *(a1 + 84) = 0x2710000003E8;
  *(a1 + 96) = 0x3200000064;
  *(a1 + 120) = 0x7D000000000;
  *(a1 + 136) = 0xBB800000258;
  *(a1 + 216) = 0;
  *(a1 + 160) = unk_2297E48;
  *(a1 + 176) = xmmword_2297E58;
  *(a1 + 192) = unk_2297E68;
  *a1 = &off_266AB88;
  *(a1 + 8) = 0x4039000000000000;
  *(a1 + 16) = 5000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 20000000;
  *(a1 + 72) = 0x3FF199999999999ALL;
  *(a1 + 80) = 10000;
  *(a1 + 92) = 10;
  *(a1 + 104) = 2;
  *(a1 + 112) = 0x4049000000000000;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 208) = 0x3FD999999999999ALL;
  *(a1 + 144) = xmmword_2297E38;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  operator new();
}

void sub_48217C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  sub_5C010(&a19);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_4821F8(v19 + 36);
  *v19 = v20;
  v23 = v19[27];
  if (v23)
  {
    v19[28] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void *sub_4821F8(void *a1)
{
  v2 = a1 + 96;
  do
  {
    v3 = v2 - 6;
    v4 = *(v2 - 3);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v2 - 5;
      do
      {
        if ((*(*v3 + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 8);
          if (v9)
          {
            *(v8 + 16) = v9;
            operator delete(v9);
            v4 = *(v2 - 3);
          }
        }

        ++v6;
        v5 += 32;
      }

      while (v6 != v4);
      operator delete(*(v2 - 6));
      *(v2 - 6) = &unk_2290750;
      *(v2 - 1) = 0;
      *(v2 - 4) = 0;
      *(v2 - 3) = 0;
      *v7 = 0;
    }

    v2 -= 6;
  }

  while (v3 != a1);
  return a1;
}

uint64_t sub_4822C4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 280);
  if (a2 < 0)
  {
    a2 = -a2;
  }

  v4 = sub_335D84(v3, a2);
  v5 = v4 > 0xFFFFFFFEFFFFFFFFLL;
  if (v4 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (!v4)
  {
    v5 = 1;
  }

  v7 = v2 < 1 || v5;
  v8 = 0x1000000000000;
  if (!v7)
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 & 0xFFFF00000000;
  }

  return v9 | v6 | v8;
}

uint64_t sub_482354(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v5 = (v4 - *v4);
  if (*v5 < 0x1Du)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[14];
    if (v6)
    {
      v6 = *(v4 + v6);
    }
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    return -v6;
  }

  else
  {
    return v6;
  }
}

void sub_4823F4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v6) = a2[1];
  v5 = a2[2];
  if (v6 >= 0xFFFFFFFE)
  {
    v6 = 4294967294;
  }

  else
  {
    v6 = v6;
  }

  v31 = *a2 | (v6 << 32);
  v32 = v5;
  sub_2B3C60(*(a1 + 280), &v31, 10, &v29);
  v7 = *a4;
  *(a4 + 8) = *a4;
  v8 = v29;
  v9 = v30;
  if (v29 != v30)
  {
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 12);
      v12 = *(a4 + 16);
      if (v7 >= v12)
      {
        v14 = *a4;
        v15 = v7 - *a4;
        v16 = (v15 >> 3) + 1;
        if (v16 >> 61)
        {
          sub_1794();
        }

        v17 = v12 - v14;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v19 = (8 * (v15 >> 3));
        *v19 = v10 | (v11 << 32);
        v13 = v19 + 1;
        memcpy(0, v14, v15);
        *a4 = 0;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v7 = v10 | (v11 << 32);
        v13 = v7 + 1;
      }

      *(a4 + 8) = v13;
      v20 = *(v8 + 8);
      v21 = *(v8 + 12);
      v22 = *(a4 + 16);
      if (v13 < v22)
      {
        *v13 = v20 | (v21 << 32) | 0x1000000000000;
        v7 = v13 + 1;
      }

      else
      {
        v23 = *a4;
        v24 = v13 - *a4;
        v25 = (v24 >> 3) + 1;
        if (v25 >> 61)
        {
          sub_1794();
        }

        v26 = v22 - v23;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          if (!(v27 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v28 = (8 * (v24 >> 3));
        *v28 = v20 | (v21 << 32) | 0x1000000000000;
        v7 = v28 + 1;
        memcpy(0, v23, v24);
        *a4 = 0;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      *(a4 + 8) = v7;
      v8 += 48;
    }

    while (v8 != v9);
    v8 = v29;
  }

  if (v8)
  {
    v30 = v8;
    operator delete(v8);
  }
}

void sub_482664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_48268C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  ++*(a1 + 1056);
  v8 = *(a1 + 280);
  v9 = *a2;
  v10 = sub_2B51D8(v8, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    sub_30C50C(v8 + 3896, v9, 0);
  }

  sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v11 = *v10;
  if (*(v10 - v11) < 9u)
  {
    v13 = 0;
    if (a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *(v10 - v11 + 8);
    if (*(v10 - v11 + 8))
    {
      LODWORD(v12) = *(v10 + v12);
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v13 = 0x7FFFFFFF;
    }

    else
    {
      v13 = v12;
    }

    if (a3)
    {
LABEL_10:
      sub_3079D0(a1 + 288, a2, v39);
      if (v39[0])
      {
        __p[1] = 0;
        v38 = 0;
        __p[0] = 0;
        v15 = *(v41 + 8);
        v14 = *(v41 + 16);
        if (v14 != v15)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 2) <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        v16 = *(v41 + 8);
        v17 = *(v41 + 16);
        for (i = __p; v16 != v17; v16 += 3)
        {
          LODWORD(v19) = v16[1];
          v18 = v16[2];
          if (v19 >= 0xFFFFFFFE)
          {
            v19 = 4294967294;
          }

          else
          {
            v19 = v19;
          }

          *&v35 = *v16 | (v19 << 32);
          DWORD2(v35) = v18;
          sub_30FB4(&i, &v35);
        }

        v34 = *__p;
        v20 = v38;
      }

      else
      {
        sub_2B7A20(*(a1 + 280), *a2, __p);
        i = a1;
        v36 = 0;
        v35 = 0uLL;
        v22 = sub_4850F8(__p);
        if (v22)
        {
          if (v22 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        sub_485350(__p, &v35);
        v34 = v35;
        v20 = v36;
        if (__p[1])
        {
          v38 = __p[1];
          operator delete(__p[1]);
        }
      }

      v21 = (v10 - *v10);
      if (*v21 < 0x1Bu)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  v20 = 0;
  v34 = 0u;
  v21 = (v10 - v11);
  if (*v21 < 0x1Bu)
  {
LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

LABEL_29:
  v23 = v21[13];
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = *(v10 + v23);
LABEL_32:
  v25 = sub_2B51D8(*(a1 + 280), *a2 | (*(a2 + 2) << 32));
  v26 = (v25 - *v25);
  if (*v26 >= 0x13u && (v27 = v26[9]) != 0)
  {
    v28 = *(v25 + v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_482B68(a1, *a2);
  if (*(a1 + 1072) == 1)
  {
    v30 = *(a1 + 280);
    v31 = sub_31DDCC(v30, *a2);
    sub_40C59C(v30, v31, v39);
    v32 = v40 < 0;
  }

  else
  {
    v32 = 0;
    HIBYTE(v40) = 0;
    LOBYTE(v39[0]) = 0;
  }

  *a4 = v24;
  *(a4 + 2) = v28;
  *(a4 + 4) = v13;
  *(a4 + 8) = v34;
  *(a4 + 24) = v20;
  *(a4 + 32) = 23593320;
  *(a4 + 36) = v29;
  if (v32)
  {
    sub_325C((a4 + 40), v39[0], v39[1]);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }
  }

  else
  {
    result = *v39;
    *(a4 + 40) = *v39;
    *(a4 + 56) = v40;
  }

  return result;
}

void sub_482AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t sub_482B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B51D8(*(a1 + 280), a2 & 0xFFFFFFFFFFFFLL);
  v5 = (v4 - *v4);
  v6 = *v5;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v6 >= 0x47)
    {
      v7 = v5[35];
      if (v7)
      {
        if ((*(v4 + v7) & 2) != 0)
        {
          return 1;
        }
      }
    }
  }

  else if (v6 >= 0x47)
  {
    v8 = v5[35];
    if (v8)
    {
      if (*(v4 + v8))
      {
        return 1;
      }
    }
  }

  v9 = sub_2B51D8(*(a1 + 280), a2 & 0xFFFFFFFFFFFFLL);
  v10 = (v9 - *v9);
  v11 = *v10;
  if ((a2 & 0xFF000000000000) == 0)
  {
    if (v11 >= 0x39)
    {
      v14 = v10[28];
      if (v14)
      {
        v13 = *(v9 + v14);
        if ((v13 & 1) == 0)
        {
          goto LABEL_17;
        }

        return 1;
      }
    }

    return 0;
  }

  if (v11 < 0x39)
  {
    return 0;
  }

  v12 = v10[28];
  if (!v12)
  {
    return 0;
  }

  v13 = *(v9 + v12);
  if ((v13 & 2) != 0)
  {
    return 1;
  }

LABEL_17:
  if ((v13 & 7) == 4)
  {
    return 1;
  }

  if ((v13 & 3) != 0)
  {
    return 0;
  }

  return (v13 >> 5) & 1;
}

uint64_t sub_482C88(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v4 - *v4);
  v7 = *v6;
  if ((v3 & 0xFF000000000000) != 0)
  {
    if (v7 < 0x4B || (v8 = v6[37]) == 0)
    {
LABEL_10:
      v9 = 65535.0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 < 0x49)
    {
      goto LABEL_10;
    }

    v8 = v6[36];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  LOWORD(v5) = *(v4 + v8);
  v9 = v5;
LABEL_11:
  v10 = llround(v9 / 100.0);
  return v10 - 360 * (((11651 * v10) >> 22) + ((11651 * v10) >> 31));
}

uint64_t sub_482D6C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v4 - *v4);
  v7 = *v6;
  if ((v3 & 0xFF000000000000) != 0)
  {
    if (v7 < 0x49 || (v8 = v6[36]) == 0)
    {
LABEL_10:
      v9 = 65535.0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 < 0x4B)
    {
      goto LABEL_10;
    }

    v8 = v6[37];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  LOWORD(v5) = *(v4 + v8);
  v9 = v5;
LABEL_11:
  v10 = llround(v9 / 100.0);
  return v10 - 360 * (((11651 * v10) >> 22) + ((11651 * v10) >> 31));
}

uint64_t sub_482E50(uint64_t a1, void *a2, void *a3)
{
  ++*(a1 + 1064);
  v5 = sub_2B4EDC(*(a1 + 280), *a2 & 0xFFFFFFFFFFFFLL, (*a2 & 0xFF000000000000) == 0);
  v6 = *(a1 + 280);

  return sub_2B365C(v6, v5, 0, a3);
}

char *sub_482EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  sub_308C24(a1 + 288, &v5, v6);
  result = (v7 + 8);
  if (v7 + 8 != a3)
  {
    return sub_35354C(result, *a3, *(a3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 2));
  }

  return result;
}

void sub_482F38(uint64_t a1)
{
  *(a1 + 24) = xmmword_2297CF0;
  *(a1 + 40) = xmmword_2297D00;
  *(a1 + 80) = 0x3E800002710;
  *(a1 + 96) = 0x3200000064;
  *(a1 + 120) = 0x7D000000000;
  *(a1 + 136) = 0xBB800000258;
  *(a1 + 216) = 0;
  *(a1 + 160) = unk_2297E48;
  *(a1 + 176) = xmmword_2297E58;
  *(a1 + 192) = unk_2297E68;
  *a1 = &off_266AB88;
  *(a1 + 8) = 0x4039000000000000;
  *(a1 + 16) = 5000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 20000000;
  *(a1 + 72) = 0x3FF199999999999ALL;
  *(a1 + 88) = 10000;
  *(a1 + 92) = 10;
  *(a1 + 104) = 2;
  *(a1 + 112) = 0x4049000000000000;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 208) = 0x3FD999999999999ALL;
  *(a1 + 144) = xmmword_2297E38;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  operator new();
}

void sub_4833B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  sub_5C010(&a19);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_4821F8(v19 + 36);
  *v19 = v20;
  v23 = v19[27];
  if (v23)
  {
    v19[28] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_483438(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 280);
  if (a2 < 0)
  {
    a2 = -a2;
  }

  v4 = sub_335D84(v3, a2);
  v5 = v4 > 0xFFFFFFFEFFFFFFFFLL;
  if (v4 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (!v4)
  {
    v5 = 1;
  }

  v7 = v2 < 1 || v5;
  v8 = 0x1000000000000;
  if (!v7)
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 & 0xFFFF00000000;
  }

  return v9 | v6 | v8;
}

uint64_t sub_4834C8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v5 = (v4 - *v4);
  if (*v5 < 0x1Du)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[14];
    if (v6)
    {
      v6 = *(v4 + v6);
    }
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    return -v6;
  }

  else
  {
    return v6;
  }
}

void sub_483568(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v6) = a2[1];
  v5 = a2[2];
  if (v6 >= 0xFFFFFFFE)
  {
    v6 = 4294967294;
  }

  else
  {
    v6 = v6;
  }

  v31 = *a2 | (v6 << 32);
  v32 = v5;
  sub_2B3C60(*(a1 + 280), &v31, 10, &v29);
  v7 = *a4;
  *(a4 + 8) = *a4;
  v8 = v29;
  v9 = v30;
  if (v29 != v30)
  {
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 12);
      v12 = *(a4 + 16);
      if (v7 >= v12)
      {
        v14 = *a4;
        v15 = v7 - *a4;
        v16 = (v15 >> 3) + 1;
        if (v16 >> 61)
        {
          sub_1794();
        }

        v17 = v12 - v14;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v19 = (8 * (v15 >> 3));
        *v19 = v10 | (v11 << 32);
        v13 = v19 + 1;
        memcpy(0, v14, v15);
        *a4 = 0;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v7 = v10 | (v11 << 32);
        v13 = v7 + 1;
      }

      *(a4 + 8) = v13;
      v20 = *(v8 + 8);
      v21 = *(v8 + 12);
      v22 = *(a4 + 16);
      if (v13 < v22)
      {
        *v13 = v20 | (v21 << 32) | 0x1000000000000;
        v7 = v13 + 1;
      }

      else
      {
        v23 = *a4;
        v24 = v13 - *a4;
        v25 = (v24 >> 3) + 1;
        if (v25 >> 61)
        {
          sub_1794();
        }

        v26 = v22 - v23;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          if (!(v27 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v28 = (8 * (v24 >> 3));
        *v28 = v20 | (v21 << 32) | 0x1000000000000;
        v7 = v28 + 1;
        memcpy(0, v23, v24);
        *a4 = 0;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      *(a4 + 8) = v7;
      v8 += 48;
    }

    while (v8 != v9);
    v8 = v29;
  }

  if (v8)
  {
    v30 = v8;
    operator delete(v8);
  }
}

void sub_4837D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_483800@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  ++*(a1 + 1056);
  v8 = *(a1 + 280);
  v9 = *a2;
  v10 = sub_2B51D8(v8, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    sub_30C50C(v8 + 3896, v9, 0);
  }

  sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v11 = *v10;
  if (*(v10 - v11) < 9u)
  {
    v13 = 0;
    if (a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *(v10 - v11 + 8);
    if (*(v10 - v11 + 8))
    {
      LODWORD(v12) = *(v10 + v12);
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v13 = 0x7FFFFFFF;
    }

    else
    {
      v13 = v12;
    }

    if (a3)
    {
LABEL_10:
      sub_3079D0(a1 + 288, a2, v39);
      if (v39[0])
      {
        __p[1] = 0;
        v38 = 0;
        __p[0] = 0;
        v15 = *(v41 + 8);
        v14 = *(v41 + 16);
        if (v14 != v15)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 2) <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        v16 = *(v41 + 8);
        v17 = *(v41 + 16);
        for (i = __p; v16 != v17; v16 += 3)
        {
          LODWORD(v19) = v16[1];
          v18 = v16[2];
          if (v19 >= 0xFFFFFFFE)
          {
            v19 = 4294967294;
          }

          else
          {
            v19 = v19;
          }

          *&v35 = *v16 | (v19 << 32);
          DWORD2(v35) = v18;
          sub_30FB4(&i, &v35);
        }

        v34 = *__p;
        v20 = v38;
      }

      else
      {
        sub_2B7A20(*(a1 + 280), *a2, __p);
        i = a1;
        v36 = 0;
        v35 = 0uLL;
        v22 = sub_4850F8(__p);
        if (v22)
        {
          if (v22 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        sub_485350(__p, &v35);
        v34 = v35;
        v20 = v36;
        if (__p[1])
        {
          v38 = __p[1];
          operator delete(__p[1]);
        }
      }

      v21 = (v10 - *v10);
      if (*v21 < 0x1Bu)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  v20 = 0;
  v34 = 0u;
  v21 = (v10 - v11);
  if (*v21 < 0x1Bu)
  {
LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

LABEL_29:
  v23 = v21[13];
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = *(v10 + v23);
LABEL_32:
  v25 = sub_2B51D8(*(a1 + 280), *a2 | (*(a2 + 2) << 32));
  v26 = (v25 - *v25);
  if (*v26 >= 0x13u && (v27 = v26[9]) != 0)
  {
    v28 = *(v25 + v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_483CDC(a1, *a2);
  if (*(a1 + 1072) == 1)
  {
    v30 = *(a1 + 280);
    v31 = sub_31DDCC(v30, *a2);
    sub_40C59C(v30, v31, v39);
    v32 = v40 < 0;
  }

  else
  {
    v32 = 0;
    HIBYTE(v40) = 0;
    LOBYTE(v39[0]) = 0;
  }

  *a4 = v24;
  *(a4 + 2) = v28;
  *(a4 + 4) = v13;
  *(a4 + 8) = v34;
  *(a4 + 24) = v20;
  *(a4 + 32) = 23593320;
  *(a4 + 36) = v29;
  if (v32)
  {
    sub_325C((a4 + 40), v39[0], v39[1]);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }
  }

  else
  {
    result = *v39;
    *(a4 + 40) = *v39;
    *(a4 + 56) = v40;
  }

  return result;
}

void sub_483C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t sub_483CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B51D8(*(a1 + 280), a2 & 0xFFFFFFFFFFFFLL);
  v5 = (v4 - *v4);
  v6 = *v5;
  v7 = a2 & 0xFF000000000000;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v6 >= 0x9B)
    {
      v8 = v5[77];
      if (v8)
      {
        if ((*(v4 + v8) & 2) != 0)
        {
          return 1;
        }
      }
    }
  }

  else if (v6 >= 0x9B)
  {
    v9 = v5[77];
    if (v9)
    {
      if (*(v4 + v9))
      {
        return 1;
      }
    }
  }

  v10 = sub_2B51D8(*(a1 + 280), a2 & 0xFFFFFFFFFFFFLL);
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v7)
  {
    if (v12 < 0x9B)
    {
      goto LABEL_18;
    }

    v13 = v11[77];
    if (!v13 || (*(v10 + v13) & 1) == 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v12 >= 0x9B)
  {
    v14 = v11[77];
    if (v14)
    {
      if ((*(v10 + v14) & 2) != 0)
      {
        return 0;
      }
    }
  }

LABEL_18:
  v16 = sub_2B51D8(*(a1 + 280), a2 & 0xFFFFFFFFFFFFLL);
  v17 = (v16 - *v16);
  v18 = *v17;
  if (!v7)
  {
    if (v18 >= 0x39)
    {
      v21 = v17[28];
      if (v21)
      {
        v20 = *(v16 + v21);
        if ((v20 & 1) == 0)
        {
          goto LABEL_26;
        }

        return 1;
      }
    }

    return 0;
  }

  if (v18 < 0x39)
  {
    return 0;
  }

  v19 = v17[28];
  if (!v19)
  {
    return 0;
  }

  v20 = *(v16 + v19);
  if ((v20 & 2) != 0)
  {
    return 1;
  }

LABEL_26:
  if ((v20 & 7) == 4)
  {
    return 1;
  }

  if ((v20 & 3) != 0)
  {
    return 0;
  }

  return (v20 >> 5) & 1;
}

uint64_t sub_483E6C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v4 - *v4);
  v7 = *v6;
  if ((v3 & 0xFF000000000000) != 0)
  {
    if (v7 < 0x4B || (v8 = v6[37]) == 0)
    {
LABEL_10:
      v9 = 65535.0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 < 0x49)
    {
      goto LABEL_10;
    }

    v8 = v6[36];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  LOWORD(v5) = *(v4 + v8);
  v9 = v5;
LABEL_11:
  v10 = llround(v9 / 100.0);
  return v10 - 360 * (((11651 * v10) >> 22) + ((11651 * v10) >> 31));
}

uint64_t sub_483F50(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v4 - *v4);
  v7 = *v6;
  if ((v3 & 0xFF000000000000) != 0)
  {
    if (v7 < 0x49 || (v8 = v6[36]) == 0)
    {
LABEL_10:
      v9 = 65535.0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 < 0x4B)
    {
      goto LABEL_10;
    }

    v8 = v6[37];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  LOWORD(v5) = *(v4 + v8);
  v9 = v5;
LABEL_11:
  v10 = llround(v9 / 100.0);
  return v10 - 360 * (((11651 * v10) >> 22) + ((11651 * v10) >> 31));
}

uint64_t sub_484034(uint64_t a1, void *a2, void *a3)
{
  ++*(a1 + 1064);
  v5 = sub_2B4EDC(*(a1 + 280), *a2 & 0xFFFFFFFFFFFFLL, (*a2 & 0xFF000000000000) == 0);
  v6 = *(a1 + 280);

  return sub_2B365C(v6, v5, 0, a3);
}

void sub_48409C(uint64_t a1)
{
  *(a1 + 24) = xmmword_2297CF0;
  *(a1 + 40) = xmmword_2297D00;
  *(a1 + 80) = 0x3E800002710;
  *(a1 + 96) = 0x3200000064;
  *(a1 + 120) = 0x7D000000000;
  *(a1 + 136) = 0xBB800000258;
  *(a1 + 216) = 0;
  *(a1 + 160) = unk_2297E48;
  *(a1 + 176) = xmmword_2297E58;
  *(a1 + 192) = unk_2297E68;
  *a1 = &off_266AB88;
  *(a1 + 8) = 0x4039000000000000;
  *(a1 + 16) = 5000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 20000000;
  *(a1 + 72) = 0x3FF199999999999ALL;
  *(a1 + 88) = 10000;
  *(a1 + 92) = 10;
  *(a1 + 104) = 2;
  *(a1 + 112) = 0x4049000000000000;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 208) = 0x3FD999999999999ALL;
  *(a1 + 144) = xmmword_2297E38;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  operator new();
}

void sub_48451C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  sub_5C010(&a19);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_4821F8(v19 + 36);
  *v19 = v20;
  v23 = v19[27];
  if (v23)
  {
    v19[28] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_48459C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 280);
  if (a2 < 0)
  {
    a2 = -a2;
  }

  v4 = sub_335D84(v3, a2);
  v5 = v4 > 0xFFFFFFFEFFFFFFFFLL;
  if (v4 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (!v4)
  {
    v5 = 1;
  }

  v7 = v2 < 1 || v5;
  v8 = 0x1000000000000;
  if (!v7)
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 & 0xFFFF00000000;
  }

  return v9 | v6 | v8;
}

uint64_t sub_48462C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v5 = (v4 - *v4);
  if (*v5 < 0x1Du)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[14];
    if (v6)
    {
      v6 = *(v4 + v6);
    }
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    return -v6;
  }

  else
  {
    return v6;
  }
}