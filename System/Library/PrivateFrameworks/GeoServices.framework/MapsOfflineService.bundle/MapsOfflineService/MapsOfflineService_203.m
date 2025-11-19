uint64_t *sub_C1E15C(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = 0xFF51AFD7ED558CCDLL * (*(a2 + 16) ^ (*(a2 + 16) >> 33));
  v6 = (((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v7 = (((*(a2 + 24) + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6) + 0x388152A534) ^ 0xDEADBEEF;
  v8 = (*(a2 + 28) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  *(v4 - 1) = v8;
  result = sub_C1E2E0(a1, v8, v4);
  if (!result)
  {
    v10 = a1[1];
    v11 = *(a2 + 8);
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      if (v11 >= *&v10)
      {
        v11 %= *&v10;
      }
    }

    else
    {
      v11 &= *&v10 - 1;
    }

    v13 = *a1;
    v14 = *(*a1 + 8 * v11);
    if (v14)
    {
      *a2 = *v14;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v13 + 8 * v11) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_9;
      }

      v15 = *(*a2 + 8);
      if (v12.u32[0] > 1uLL)
      {
        if (v15 >= *&v10)
        {
          v15 %= *&v10;
        }

        v14 = (v13 + 8 * v15);
      }

      else
      {
        v14 = (v13 + 8 * (v15 & (*&v10 - 1)));
      }
    }

    *v14 = a2;
LABEL_9:
    ++a1[3];
    return a2;
  }

  return result;
}

uint64_t *sub_C1E2E0(uint64_t a1, unint64_t a2, int *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_36;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }

    else
    {
      v5 = a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (!v6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
    v6 = *(*a1 + 8 * v5);
    if (!v6)
    {
      goto LABEL_36;
    }
  }

  v7 = *v6;
  if (v7)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    if (v4.u32[0] < 2uLL)
    {
      while (1)
      {
        v12 = v7[1];
        if (v12 == a2)
        {
          v13 = *(v7 + 5) == v8 && *(v7 + 4) == v9;
          if (v13 && *(v7 + 6) == v10 && *(v7 + 7) == v11)
          {
            return v7;
          }
        }

        else if ((v12 & (v3 - 1)) != v5)
        {
          goto LABEL_36;
        }

        v7 = *v7;
        if (!v7)
        {
          goto LABEL_36;
        }
      }
    }

    do
    {
      v14 = v7[1];
      if (v14 == a2)
      {
        v15 = *(v7 + 5) == v8 && *(v7 + 4) == v9;
        if (v15 && *(v7 + 6) == v10 && *(v7 + 7) == v11)
        {
          return v7;
        }
      }

      else
      {
        if (v14 >= v3)
        {
          v14 %= v3;
        }

        if (v14 != v5)
        {
          break;
        }
      }

      v7 = *v7;
    }

    while (v7);
  }

LABEL_36:
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (v3 && (v17 * v3) >= v16)
  {
    return 0;
  }

  v18 = 1;
  if (v3 >= 3)
  {
    v18 = (v3 & (v3 - 1)) != 0;
  }

  v19 = v18 | (2 * v3);
  v20 = vcvtps_u32_f32(v16 / v17);
  if (v19 <= v20)
  {
    prime = v20;
  }

  else
  {
    prime = v19;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    v22 = a1;
    prime = std::__next_prime(prime);
    a1 = v22;
    v3 = *(v22 + 8);
  }

  if (prime <= v3)
  {
    if (prime >= v3)
    {
      return 0;
    }

    v23 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v3 < 3 || (v24 = vcnt_s8(v3), v24.i16[0] = vaddlv_u8(v24), v24.u32[0] > 1uLL))
    {
      v26 = a1;
      v27 = prime;
      v28 = std::__next_prime(v23);
      a1 = v26;
      if (v27 <= v28)
      {
        prime = v28;
      }

      else
      {
        prime = v27;
      }

      if (prime >= v3)
      {
        return 0;
      }
    }

    else
    {
      v25 = 1 << -__clz(v23 - 1);
      if (v23 >= 2)
      {
        v23 = v25;
      }

      if (prime <= v23)
      {
        prime = v23;
      }

      if (prime >= v3)
      {
        return 0;
      }
    }
  }

  sub_B07C(a1, prime);
  return 0;
}

uint64_t sub_C1E54C(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 17;
  strcpy(__p, "alternatives_type");
  v5 = sub_5F8FC(a3, __p);
  v6 = sub_BC89AC(v5);
  if (v10 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  *(a1 + 8) = a2;
  return a1;
}

void sub_C1E5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1E5F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  for (i = *(a2 + 56); v2 != i; v2 += 248)
  {
    sub_C1E640(a1, v2);
  }
}

void sub_C1E640(uint64_t a1, uint64_t a2)
{
  v2 = 96;
  if (!*a1)
  {
    v2 = 72;
  }

  v3 = (a2 + v2);
  v33 = 0;
  v4 = 0uLL;
  *__p = 0u;
  v5 = *(a2 + v2);
  v6 = *(a2 + v2 + 8);
  if (v5 != v6)
  {
    do
    {
      if (*(v5 + 40) == -1)
      {
        v8 = sub_A56F04((*(a1 + 8) + 4136), *(v5 + 28), *(v5 + 48), *(v5 + 36));
        v10 = v9;
        v11 = *(v5 + 48);
        v12 = sub_A57920((*(a1 + 8) + 4136), *(v5 + 28));
        v13 = (v12 - *v12);
        if (*v13 >= 9u && (v14 = v13[4]) != 0)
        {
          v15 = (v12 + v14 + *(v12 + v14));
        }

        else
        {
          v15 = 0;
        }

        v16 = *(sub_A571D4(v15, v11) + 12);
        v17 = *(v5 + 52) - *(v5 + 48);
        *&v34 = v5;
        *(&v34 + 1) = v8;
        v35 = v10;
        v36 = v16;
        v37 = v17;
        sub_C1E8E8(__p, &v34);
      }

      v5 += 60;
    }

    while (v5 != v6);
    v4 = *__p;
  }

  v18 = 126 - 2 * __clz((*(&v4 + 1) - v4) >> 5);
  if (*(&v4 + 1) == v4)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_C1EA08(v4, *(&v4 + 1), &v34, v19, 1);
  v20 = __p[0];
  v21 = __p[1];
  if (__p[0] != __p[1])
  {
    v22 = __p[0] + 32;
    if (__p[0] + 32 != __p[1])
    {
      do
      {
        v23 = *(v22 - 5) == v22[3] && *(v22 - 6) == v22[2];
        if (v23 && *(v22 - 4) == v22[4] && *(v22 - 3) == v22[5])
        {
          *(*v22 + 28) = 0xFFFFFFFFLL;
        }

        v22 += 8;
      }

      while (v22 != v21);
    }
  }

  v25 = *v3;
  v24 = v3[1];
  if (*v3 != v24)
  {
    v26 = v25 + 60;
    while (*(v26 - 8) != -1 && *(v26 - 7) != 0)
    {
      v23 = v26 == v24;
      v26 += 60;
      if (v23)
      {
        goto LABEL_49;
      }
    }

    v25 = v26 - 60;
    if (v26 - 60 != v24 && v26 != v24)
    {
      do
      {
        if (*(v26 + 7) != -1 && *(v26 + 8) != 0)
        {
          v29 = *v26;
          v30 = *(v26 + 1);
          v31 = *(v26 + 2);
          *(v25 + 41) = *(v26 + 41);
          *(v25 + 1) = v30;
          *(v25 + 2) = v31;
          *v25 = v29;
          v25 += 60;
        }

        v26 += 60;
      }

      while (v26 != v24);
      v24 = v3[1];
    }
  }

  if (v25 != v24)
  {
    v3[1] = v25;
  }

LABEL_49:
  if (v20)
  {
    __p[1] = v20;
    operator delete(v20);
  }
}

void sub_C1E8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1E8E8(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    sub_1794();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_C1EA08(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 8;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 5;
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        sub_C1EEEC(v10, (v10 + 32), a2 - 2);
        return;
      case 4uLL:

        sub_C1F2FC(v10, v10 + 32, v10 + 64, (a2 - 8));
        return;
      case 5uLL:

        sub_C1F598(v10, v10 + 32, v10 + 64, v10 + 96, (a2 - 8));
        return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_C1F908(v10, a2);
      }

      else
      {

        sub_C1FAD8(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_C2073C(v10, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (v10 + 32 * (v13 >> 1));
    if (v13 < 0x81)
    {
      sub_C1EEEC((v10 + 32 * (v13 >> 1)), v10, a2 - 2);
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_C1EEEC(v10, (v10 + 32 * (v13 >> 1)), a2 - 2);
      v16 = v10 + 32;
      v17 = 32 * v14;
      v18 = (32 * v14 + a1 - 32);
      sub_C1EEEC((a1 + 32), v18, a2 - 4);
      sub_C1EEEC((a1 + 64), (v16 + v17), a2 - 6);
      sub_C1EEEC(v18, v15, (v16 + v17));
      *v49 = *a1;
      *&v49[16] = *(a1 + 16);
      v19 = *v15;
      *(a1 + 12) = *(v15 + 12);
      *a1 = v19;
      *(v15 + 12) = *&v49[12];
      *v15 = *v49;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    v20 = *(a1 + 8);
    v21 = HIDWORD(v20);
    v23 = *(a1 - 24);
    v22 = *(a1 - 20);
    if (__PAIR64__(v22, v23) == v20 && *(a1 - 16) == *(a1 + 16))
    {
      v24 = *(a1 - 12);
      v25 = *(a1 + 20);
      v26 = v24 >= v25;
      if (v24 == v25)
      {
        if (*(a1 - 8) <= *(a1 + 24))
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v27 = v23 < v20;
      v39 = v22 == HIDWORD(v20);
      v28 = v22 < HIDWORD(v20);
      if (v39)
      {
        v28 = v27;
      }

      if (v28)
      {
        goto LABEL_29;
      }

      v29 = *(a1 - 24);
      v30 = v20 < v29;
      v39 = v21 == HIDWORD(v29);
      v31 = v21 < HIDWORD(v29);
      if (v39)
      {
        v31 = v30;
      }

      if (v31)
      {
LABEL_33:
        v10 = sub_C1FC50(a1, a2);
        goto LABEL_34;
      }

      v26 = *(a1 - 16) >= *(a1 + 16);
    }

    if (v26)
    {
      goto LABEL_33;
    }

LABEL_29:
    v32 = sub_C20018(a1, a2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_32;
    }

    v34 = sub_C20370(a1, v32);
    v10 = v32 + 32;
    if (sub_C20370(v32 + 32, a2))
    {
      a4 = -v12;
      a2 = v32;
      if (v34)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v34)
    {
LABEL_32:
      sub_C1EA08(a1, v32, a3, -v12, a5 & 1);
      v10 = v32 + 32;
LABEL_34:
      a5 = 0;
      a4 = -v12;
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

  v35 = *(v10 + 8);
  v36 = HIDWORD(v35);
  v38 = *(a2 - 6);
  v37 = *(a2 - 5);
  v39 = v37 == HIDWORD(v35) && v38 == v35;
  if (v39 && *(a2 - 4) == *(v10 + 16))
  {
    v40 = *(a2 - 3);
    v41 = *(v10 + 20);
    v42 = v40 >= v41;
    if (v40 == v41)
    {
      if (*(a2 - 2) <= *(v10 + 24))
      {
        return;
      }

LABEL_71:
      *v50 = *v10;
      *&v50[16] = *(v10 + 16);
      v48 = *v9;
      *(v10 + 12) = *(a2 - 5);
      *v10 = v48;
      *v9 = *v50;
      *(a2 - 5) = *&v50[12];
      return;
    }

LABEL_70:
    if (!v42)
    {
      goto LABEL_71;
    }

    return;
  }

  v43 = v38 < v35;
  v39 = v37 == HIDWORD(v35);
  v44 = v37 < HIDWORD(v35);
  if (v39)
  {
    v44 = v43;
  }

  if (v44)
  {
    goto LABEL_71;
  }

  v45 = *(a2 - 3);
  v46 = v35 < v45;
  v39 = v36 == HIDWORD(v45);
  v47 = v36 < HIDWORD(v45);
  if (v39)
  {
    v47 = v46;
  }

  if (!v47)
  {
    v42 = *(a2 - 4) >= *(v10 + 16);
    goto LABEL_70;
  }
}

uint64_t sub_C1EEEC(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 1);
  v4 = HIDWORD(v3);
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = v5 == HIDWORD(v3) && v6 == v3;
  if (!v7 || *(a2 + 4) != *(a1 + 4))
  {
    v10 = v6 < v3;
    v7 = v5 == HIDWORD(v3);
    v11 = v5 < HIDWORD(v3);
    if (v7)
    {
      v11 = v10;
    }

    if (v11)
    {
      goto LABEL_13;
    }

    v24 = *(a2 + 1);
    v25 = v3 < v24;
    v7 = v4 == HIDWORD(v24);
    v26 = v4 < HIDWORD(v24);
    if (v7)
    {
      v26 = v25;
    }

    if (!v26 && *(a2 + 4) < *(a1 + 4))
    {
      goto LABEL_13;
    }

LABEL_37:
    v30 = *(a2 + 1);
    v31 = HIDWORD(v30);
    v33 = *(a3 + 2);
    v32 = *(a3 + 3);
    if (__PAIR64__(v32, v33) == v30 && *(a3 + 4) == *(a2 + 4))
    {
      v34 = *(a3 + 5);
      v35 = *(a2 + 5);
      if (v34 == v35)
      {
        if (*(a3 + 6) <= *(a2 + 6))
        {
          return 0;
        }

        goto LABEL_45;
      }

      if (v34 >= v35)
      {
        return 0;
      }
    }

    else
    {
      v36 = v33 < v30;
      v7 = v32 == HIDWORD(v30);
      v37 = v32 < HIDWORD(v30);
      if (v7)
      {
        v37 = v36;
      }

      if (!v37)
      {
        v50 = *(a3 + 1);
        v51 = v30 < v50;
        v7 = v31 == HIDWORD(v50);
        v52 = v31 < HIDWORD(v50);
        if (v7)
        {
          v52 = v51;
        }

        if (v52)
        {
          return 0;
        }

        if (*(a3 + 4) >= *(a2 + 4))
        {
          return 0;
        }
      }
    }

LABEL_45:
    *v72 = *a2;
    v38 = *a2;
    *&v72[16] = a2[1];
    v39 = *(a3 + 12);
    *a2 = *a3;
    *(a2 + 12) = v39;
    *a3 = v38;
    *(a3 + 12) = *&v72[12];
    v40 = *(a1 + 1);
    v41 = HIDWORD(v40);
    v43 = *(a2 + 2);
    v42 = *(a2 + 3);
    if (__PAIR64__(v42, v43) == v40 && *(a2 + 4) == *(a1 + 4))
    {
      v44 = *(a2 + 5);
      v45 = *(a1 + 5);
      if (v44 == v45)
      {
        if (*(a2 + 6) <= *(a1 + 6))
        {
          return 1;
        }
      }

      else if (v44 >= v45)
      {
        return 1;
      }
    }

    else
    {
      v46 = v43 < v40;
      v7 = v42 == HIDWORD(v40);
      v47 = v42 < HIDWORD(v40);
      if (v7)
      {
        v47 = v46;
      }

      if (!v47)
      {
        v53 = *(a2 + 1);
        v54 = v40 < v53;
        v7 = v41 == HIDWORD(v53);
        v55 = v41 < HIDWORD(v53);
        if (v7)
        {
          v55 = v54;
        }

        if (v55 || *(a2 + 4) >= *(a1 + 4))
        {
          return 1;
        }
      }
    }

    *v73 = *a1;
    v48 = *a1;
    *&v73[16] = a1[1];
    v49 = *(a2 + 12);
    *a1 = *a2;
    *(a1 + 12) = v49;
    *a2 = v48;
    *(a2 + 12) = *&v73[12];
    return 1;
  }

  v8 = *(a2 + 5);
  v9 = *(a1 + 5);
  if (v8 != v9)
  {
    if (v8 < v9)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

  if (*(a2 + 6) <= *(a1 + 6))
  {
    goto LABEL_37;
  }

LABEL_13:
  v12 = *(a2 + 1);
  v13 = HIDWORD(v12);
  v15 = *(a3 + 2);
  v14 = *(a3 + 3);
  v16 = v14 == HIDWORD(v12) && v15 == v12;
  if (!v16 || *(a3 + 4) != *(a2 + 4))
  {
    v19 = v15 < v12;
    v7 = v14 == HIDWORD(v12);
    v20 = v14 < HIDWORD(v12);
    if (v7)
    {
      v20 = v19;
    }

    if (!v20)
    {
      v27 = *(a3 + 1);
      v28 = v12 < v27;
      v7 = v13 == HIDWORD(v27);
      v29 = v13 < HIDWORD(v27);
      if (v7)
      {
        v29 = v28;
      }

      if (v29 || *(a3 + 4) >= *(a2 + 4))
      {
        goto LABEL_67;
      }
    }

    goto LABEL_25;
  }

  v17 = *(a3 + 5);
  v18 = *(a2 + 5);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
      goto LABEL_67;
    }

LABEL_25:
    *v71 = *a1;
    v21 = *a1;
    *&v71[16] = a1[1];
    v22 = *(a3 + 12);
    *a1 = *a3;
    *(a1 + 12) = v22;
    *a3 = v21;
    *(a3 + 12) = *&v71[12];
    return 1;
  }

  if (*(a3 + 6) > *(a2 + 6))
  {
    goto LABEL_25;
  }

LABEL_67:
  *v74 = *a1;
  v56 = *a1;
  *&v74[16] = a1[1];
  v57 = *(a2 + 12);
  *a1 = *a2;
  *(a1 + 12) = v57;
  *a2 = v56;
  *(a2 + 12) = *&v74[12];
  v58 = *(a2 + 1);
  v59 = HIDWORD(v58);
  v61 = *(a3 + 2);
  v60 = *(a3 + 3);
  if (__PAIR64__(v60, v61) == v58 && *(a3 + 4) == *(a2 + 4))
  {
    v62 = *(a3 + 5);
    v63 = *(a2 + 5);
    if (v62 == v63)
    {
      if (*(a3 + 6) <= *(a2 + 6))
      {
        return 1;
      }
    }

    else if (v62 >= v63)
    {
      return 1;
    }
  }

  else
  {
    v64 = v61 < v58;
    v7 = v60 == HIDWORD(v58);
    v65 = v60 < HIDWORD(v58);
    if (v7)
    {
      v65 = v64;
    }

    if (!v65)
    {
      v68 = *(a3 + 1);
      v69 = v58 < v68;
      v7 = v59 == HIDWORD(v68);
      v70 = v59 < HIDWORD(v68);
      if (v7)
      {
        v70 = v69;
      }

      if (v70 || *(a3 + 4) >= *(a2 + 4))
      {
        return 1;
      }
    }
  }

  *v75 = *a2;
  v66 = *a2;
  *&v75[16] = a2[1];
  v67 = *(a3 + 12);
  *a2 = *a3;
  *(a2 + 12) = v67;
  *a3 = v66;
  *(a3 + 12) = *&v75[12];
  return 1;
}

__n128 sub_C1F2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_C1EEEC(a1, a2, a3);
  v9 = *(a3 + 8);
  v10 = HIDWORD(v9);
  v12 = *(a4 + 8);
  v11 = *(a4 + 12);
  v13 = v11 == HIDWORD(v9) && v12 == v9;
  if (v13 && *(a4 + 16) == *(a3 + 16))
  {
    v14 = *(a4 + 20);
    v15 = *(a3 + 20);
    if (v14 == v15)
    {
      if (*(a4 + 24) <= *(a3 + 24))
      {
        return result;
      }
    }

    else if (v14 >= v15)
    {
      return result;
    }
  }

  else
  {
    v16 = v12 < v9;
    v13 = v11 == HIDWORD(v9);
    v17 = v11 < HIDWORD(v9);
    if (v13)
    {
      v17 = v16;
    }

    if (!v17)
    {
      v36 = *(a4 + 8);
      v37 = v9 < v36;
      v13 = v10 == HIDWORD(v36);
      v38 = v10 < HIDWORD(v36);
      if (v13)
      {
        v38 = v37;
      }

      if (v38 || *(a4 + 16) >= *(a3 + 16))
      {
        return result;
      }
    }
  }

  *v49 = *a3;
  v18 = *a3;
  *&v49[16] = *(a3 + 16);
  v19 = *(a4 + 12);
  *a3 = *a4;
  *(a3 + 12) = v19;
  *a4 = v18;
  result = *&v49[12];
  *(a4 + 12) = *&v49[12];
  v20 = *(a2 + 8);
  v21 = HIDWORD(v20);
  v23 = *(a3 + 8);
  v22 = *(a3 + 12);
  if (__PAIR64__(v22, v23) == v20 && *(a3 + 16) == *(a2 + 16))
  {
    v24 = *(a3 + 20);
    v25 = *(a2 + 20);
    if (v24 == v25)
    {
      if (*(a3 + 24) <= *(a2 + 24))
      {
        return result;
      }
    }

    else if (v24 >= v25)
    {
      return result;
    }
  }

  else
  {
    v26 = v23 < v20;
    v13 = v22 == HIDWORD(v20);
    v27 = v22 < HIDWORD(v20);
    if (v13)
    {
      v27 = v26;
    }

    if (!v27)
    {
      v43 = *(a3 + 8);
      v44 = v20 < v43;
      v13 = v21 == HIDWORD(v43);
      v45 = v21 < HIDWORD(v43);
      if (v13)
      {
        v45 = v44;
      }

      if (v45 || *(a3 + 16) >= *(a2 + 16))
      {
        return result;
      }
    }
  }

  *v50 = *a2;
  v28 = *a2;
  *&v50[16] = *(a2 + 16);
  v29 = *(a3 + 12);
  *a2 = *a3;
  *(a2 + 12) = v29;
  *a3 = v28;
  result = *&v50[12];
  *(a3 + 12) = *&v50[12];
  v30 = *(a1 + 8);
  v31 = HIDWORD(v30);
  v33 = *(a2 + 8);
  v32 = *(a2 + 12);
  if (__PAIR64__(v32, v33) == v30 && *(a2 + 16) == *(a1 + 16))
  {
    v34 = *(a2 + 20);
    v35 = *(a1 + 20);
    if (v34 == v35)
    {
      if (*(a2 + 24) > *(a1 + 24))
      {
LABEL_34:
        *v51 = *a1;
        v41 = *a1;
        *&v51[16] = *(a1 + 16);
        v42 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v42;
        *a2 = v41;
        result = *&v51[12];
        *(a2 + 12) = *&v51[12];
      }
    }

    else if (v34 < v35)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v39 = v33 < v30;
    v13 = v32 == HIDWORD(v30);
    v40 = v32 < HIDWORD(v30);
    if (v13)
    {
      v40 = v39;
    }

    if (v40)
    {
      goto LABEL_34;
    }

    v46 = *(a2 + 8);
    v47 = v30 < v46;
    v13 = v31 == HIDWORD(v46);
    v48 = v31 < HIDWORD(v46);
    if (v13)
    {
      v48 = v47;
    }

    if (!v48 && *(a2 + 16) < *(a1 + 16))
    {
      goto LABEL_34;
    }
  }

  return result;
}

__n128 sub_C1F598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = sub_C1F2FC(a1, a2, a3, a4).n128_u64[0];
  v11 = *(a4 + 8);
  v12 = HIDWORD(v11);
  v14 = *(a5 + 8);
  v13 = *(a5 + 12);
  v15 = v13 == HIDWORD(v11) && v14 == v11;
  if (v15 && *(a5 + 16) == *(a4 + 16))
  {
    v16 = *(a5 + 20);
    v17 = *(a4 + 20);
    if (v16 == v17)
    {
      if (*(a5 + 24) <= *(a4 + 24))
      {
        return result;
      }
    }

    else if (v16 >= v17)
    {
      return result;
    }
  }

  else
  {
    v18 = v14 < v11;
    v15 = v13 == HIDWORD(v11);
    v19 = v13 < HIDWORD(v11);
    if (v15)
    {
      v19 = v18;
    }

    if (!v19)
    {
      v38 = *(a5 + 8);
      v39 = v11 < v38;
      v15 = v12 == HIDWORD(v38);
      v40 = v12 < HIDWORD(v38);
      if (v15)
      {
        v40 = v39;
      }

      if (v40 || *(a5 + 16) >= *(a4 + 16))
      {
        return result;
      }
    }
  }

  *v64 = *a4;
  v20 = *a4;
  *&v64[16] = *(a4 + 16);
  v21 = *(a5 + 12);
  *a4 = *a5;
  *(a4 + 12) = v21;
  *a5 = v20;
  result = *&v64[12];
  *(a5 + 12) = *&v64[12];
  v22 = *(a3 + 8);
  v23 = HIDWORD(v22);
  v25 = *(a4 + 8);
  v24 = *(a4 + 12);
  if (__PAIR64__(v24, v25) == v22 && *(a4 + 16) == *(a3 + 16))
  {
    v26 = *(a4 + 20);
    v27 = *(a3 + 20);
    if (v26 == v27)
    {
      if (*(a4 + 24) <= *(a3 + 24))
      {
        return result;
      }
    }

    else if (v26 >= v27)
    {
      return result;
    }
  }

  else
  {
    v28 = v25 < v22;
    v15 = v24 == HIDWORD(v22);
    v29 = v24 < HIDWORD(v22);
    if (v15)
    {
      v29 = v28;
    }

    if (!v29)
    {
      v51 = *(a4 + 8);
      v52 = v22 < v51;
      v15 = v23 == HIDWORD(v51);
      v53 = v23 < HIDWORD(v51);
      if (v15)
      {
        v53 = v52;
      }

      if (v53 || *(a4 + 16) >= *(a3 + 16))
      {
        return result;
      }
    }
  }

  *v65 = *a3;
  v30 = *a3;
  *&v65[16] = *(a3 + 16);
  v31 = *(a4 + 12);
  *a3 = *a4;
  *(a3 + 12) = v31;
  *a4 = v30;
  result = *&v65[12];
  *(a4 + 12) = *&v65[12];
  v32 = *(a2 + 8);
  v33 = HIDWORD(v32);
  v35 = *(a3 + 8);
  v34 = *(a3 + 12);
  if (__PAIR64__(v34, v35) == v32 && *(a3 + 16) == *(a2 + 16))
  {
    v36 = *(a3 + 20);
    v37 = *(a2 + 20);
    if (v36 == v37)
    {
      if (*(a3 + 24) <= *(a2 + 24))
      {
        return result;
      }
    }

    else if (v36 >= v37)
    {
      return result;
    }
  }

  else
  {
    v41 = v35 < v32;
    v15 = v34 == HIDWORD(v32);
    v42 = v34 < HIDWORD(v32);
    if (v15)
    {
      v42 = v41;
    }

    if (!v42)
    {
      v58 = *(a3 + 8);
      v59 = v32 < v58;
      v15 = v33 == HIDWORD(v58);
      v60 = v33 < HIDWORD(v58);
      if (v15)
      {
        v60 = v59;
      }

      if (v60 || *(a3 + 16) >= *(a2 + 16))
      {
        return result;
      }
    }
  }

  *v66 = *a2;
  v43 = *a2;
  *&v66[16] = *(a2 + 16);
  v44 = *(a3 + 12);
  *a2 = *a3;
  *(a2 + 12) = v44;
  *a3 = v43;
  result = *&v66[12];
  *(a3 + 12) = *&v66[12];
  v45 = *(a1 + 8);
  v46 = HIDWORD(v45);
  v48 = *(a2 + 8);
  v47 = *(a2 + 12);
  if (__PAIR64__(v47, v48) == v45 && *(a2 + 16) == *(a1 + 16))
  {
    v49 = *(a2 + 20);
    v50 = *(a1 + 20);
    if (v49 == v50)
    {
      if (*(a2 + 24) > *(a1 + 24))
      {
LABEL_47:
        *v67 = *a1;
        v56 = *a1;
        *&v67[16] = *(a1 + 16);
        v57 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v57;
        *a2 = v56;
        result = *&v67[12];
        *(a2 + 12) = *&v67[12];
      }
    }

    else if (v49 < v50)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v54 = v48 < v45;
    v15 = v47 == HIDWORD(v45);
    v55 = v47 < HIDWORD(v45);
    if (v15)
    {
      v55 = v54;
    }

    if (v55)
    {
      goto LABEL_47;
    }

    v61 = *(a2 + 8);
    v62 = v45 < v61;
    v15 = v46 == HIDWORD(v61);
    v63 = v46 < HIDWORD(v61);
    if (v15)
    {
      v63 = v62;
    }

    if (!v63 && *(a2 + 16) < *(a1 + 16))
    {
      goto LABEL_47;
    }
  }

  return result;
}

_OWORD *sub_C1F908(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = v4;
        v4 = v2;
        v7 = *(v6 + 1);
        v8 = HIDWORD(v7);
        v10 = *(v6 + 10);
        v9 = *(v6 + 11);
        v11 = v9 == HIDWORD(v7) && v10 == v7;
        if (v11 && (v12 = *(v6 + 12), v12 == *(v6 + 4)))
        {
          v13 = *(v6 + 13);
          v14 = *(v6 + 5);
          v15 = v13 >= v14;
          if (v13 != v14)
          {
            goto LABEL_24;
          }

          if (*(v6 + 14) <= *(v6 + 6))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v16 = v10 < v7;
          v11 = v9 == HIDWORD(v7);
          v17 = v9 < HIDWORD(v7);
          if (!v11)
          {
            v16 = v17;
          }

          if (!v16)
          {
            v18 = *(v6 + 5);
            v19 = v7 < v18;
            v11 = v8 == HIDWORD(v18);
            v20 = v8 < HIDWORD(v18);
            if (v11)
            {
              v20 = v19;
            }

            if (v20)
            {
              goto LABEL_6;
            }

            v12 = *(v6 + 12);
            v15 = v12 >= *(v6 + 4);
LABEL_24:
            if (v15)
            {
              goto LABEL_6;
            }

            goto LABEL_25;
          }

          v12 = *(v6 + 12);
        }

LABEL_25:
        v22 = *(v6 + 4);
        v21 = *(v6 + 5);
        v23 = *(v6 + 13);
        v24 = *(v6 + 14);
        *v4 = *v6;
        *(v4 + 12) = *(v6 + 12);
        v5 = result;
        if (v6 == result)
        {
          goto LABEL_5;
        }

        v25 = HIDWORD(v21);
        v26 = v3;
        while (1)
        {
          v27 = (result + v26);
          v28 = *(result + v26 - 24);
          v29 = HIDWORD(v28);
          v30 = v25 == HIDWORD(v28) && v21 == v28;
          if (v30 && v12 == *(v27 - 4))
          {
            break;
          }

          v32 = v21 < v28;
          if (v25 != v29)
          {
            v32 = v25 < v29;
          }

          if (!v32)
          {
            v33 = v28 < v21;
            v34 = v25 == v29 ? v33 : v29 < v25;
            if (v34 || v12 >= *(v27 - 4))
            {
LABEL_46:
              v5 = v6;
              goto LABEL_5;
            }
          }

LABEL_28:
          v6 -= 2;
          *v27 = *(v27 - 2);
          *(v27 + 12) = *(v27 - 20);
          v26 -= 32;
          if (!v26)
          {
            v5 = result;
            goto LABEL_5;
          }
        }

        v31 = *(result + v26 - 12);
        if (v23 != v31)
        {
          if (v23 >= v31)
          {
            goto LABEL_46;
          }

          goto LABEL_28;
        }

        if (v24 > *(result + v26 - 8))
        {
          goto LABEL_28;
        }

        v5 = (result + v26);
LABEL_5:
        *v5 = v22;
        *(v5 + 1) = v21;
        *(v5 + 4) = v12;
        *(v5 + 5) = v23;
        *(v5 + 6) = v24;
LABEL_6:
        v2 = v4 + 2;
        v3 += 32;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

void *sub_C1FAD8(void *result, void *a2)
{
  if (result != a2)
  {
    while (1)
    {
      while (1)
      {
LABEL_4:
        if (result + 4 == a2)
        {
          return result;
        }

        v2 = result;
        result += 4;
        v3 = v2[1];
        v4 = HIDWORD(v3);
        v6 = *(v2 + 10);
        v5 = *(v2 + 11);
        v7 = v5 == HIDWORD(v3) && v6 == v3;
        if (!v7)
        {
          break;
        }

        v8 = *(v2 + 12);
        if (v8 != *(v2 + 4))
        {
          break;
        }

        v9 = *(v2 + 13);
        v10 = *(v2 + 5);
        v11 = v9 >= v10;
        if (v9 == v10)
        {
          if (*(v2 + 14) > *(v2 + 6))
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_22:
          if (!v11)
          {
            goto LABEL_23;
          }
        }
      }

      v12 = v6 < v3;
      v7 = v5 == HIDWORD(v3);
      v13 = v5 < HIDWORD(v3);
      if (!v7)
      {
        v12 = v13;
      }

      if (v12)
      {
        v8 = *(v2 + 12);
LABEL_23:
        v17 = *result;
        v18 = v2[5];
        v19 = HIDWORD(v18);
        v21 = *(v2 + 13);
        v20 = *(v2 + 14);
        for (i = result; ; i -= 2)
        {
          *i = *(i - 2);
          *(i + 12) = *(i - 20);
          v23 = *(i - 7);
          v24 = HIDWORD(v23);
          v25 = v19 == HIDWORD(v23) && v18 == v23;
          if (v25 && v8 == *(i - 12))
          {
            v26 = *(i - 11);
            if (v21 == v26)
            {
              if (v20 <= *(i - 10))
              {
                goto LABEL_3;
              }
            }

            else if (v21 >= v26)
            {
              goto LABEL_3;
            }
          }

          else
          {
            v27 = v18 < v23;
            if (v19 != v24)
            {
              v27 = v19 < v24;
            }

            if (!v27)
            {
              v28 = v23 < v18;
              v29 = v19 == v24 ? v28 : v24 < v19;
              if (v29 || v8 >= *(i - 12))
              {
LABEL_3:
                *(i - 4) = v17;
                *(i - 3) = v18;
                *(i - 4) = v8;
                *(i - 3) = v21;
                *(i - 2) = v20;
                goto LABEL_4;
              }
            }
          }
        }
      }

      v14 = v2[5];
      v15 = v3 < v14;
      v7 = v4 == HIDWORD(v14);
      v16 = v4 < HIDWORD(v14);
      if (v7)
      {
        v16 = v15;
      }

      if (!v16)
      {
        v8 = *(v2 + 12);
        v11 = v8 >= *(v2 + 4);
        goto LABEL_22;
      }
    }
  }

  return result;
}

unint64_t sub_C1FC50(uint64_t *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = HIDWORD(v2);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v8 = *(a2 - 3);
  v9 = HIDWORD(v8);
  v10 = HIDWORD(v2) == HIDWORD(v8) && v2 == v8;
  if (v10 && v5 == *(a2 - 4))
  {
    v11 = *(a2 - 3);
    v12 = v6 >= v11;
    if (v6 == v11)
    {
      if (v7 <= *(a2 - 2))
      {
        goto LABEL_102;
      }

LABEL_19:
      for (i = (a1 + 4); ; i += 32)
      {
        v16 = *(i + 8);
        v17 = HIDWORD(v16);
        v18 = v4 == HIDWORD(v16) && v2 == v16;
        if (v18 && v5 == *(i + 16))
        {
          v19 = *(i + 20);
          if (v6 == v19)
          {
            if (v7 > *(i + 24))
            {
              goto LABEL_39;
            }
          }

          else if (v6 < v19)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v20 = v2 < v16;
          if (v4 != v17)
          {
            v20 = v4 < v17;
          }

          if (v20)
          {
            goto LABEL_39;
          }

          v21 = v16 < v2;
          v22 = v4 == v17 ? v21 : v17 < v4;
          if (!v22 && v5 < *(i + 16))
          {
            goto LABEL_39;
          }
        }
      }
    }
  }

  else
  {
    v13 = v2 < v8;
    if (v4 != v9)
    {
      v13 = v4 < v9;
    }

    if (v13)
    {
      goto LABEL_19;
    }

    if (v4 == v9)
    {
      v14 = v8 < v2;
    }

    else
    {
      v14 = v9 < v4;
    }

    if (v14)
    {
      goto LABEL_102;
    }

    v12 = v5 >= *(a2 - 4);
  }

  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_102:
  for (i = (a1 + 4); i < a2; i += 32)
  {
    v46 = *(i + 8);
    v47 = HIDWORD(v46);
    v48 = v4 == HIDWORD(v46) && v2 == v46;
    if (v48 && v5 == *(i + 16))
    {
      v49 = *(i + 20);
      if (v6 == v49)
      {
        if (v7 > *(i + 24))
        {
          break;
        }
      }

      else if (v6 < v49)
      {
        break;
      }
    }

    else
    {
      v50 = v2 < v46;
      if (v4 != v47)
      {
        v50 = v4 < v47;
      }

      if (v50)
      {
        break;
      }

      v51 = v46 < v2;
      v52 = v4 == v47 ? v51 : v47 < v4;
      if (!v52 && v5 < *(i + 16))
      {
        break;
      }
    }
  }

LABEL_39:
  if (i >= a2)
  {
    goto LABEL_98;
  }

  for (j = a2 - 4; ; j -= 8)
  {
    v24 = HIDWORD(v8);
    v25 = v4 == HIDWORD(v8) && v2 == v8;
    if (!v25 || v5 != *j)
    {
      break;
    }

    v26 = j[1];
    if (v6 == v26)
    {
      if (v7 <= j[2])
      {
        goto LABEL_59;
      }
    }

    else if (v6 >= v26)
    {
      goto LABEL_59;
    }

LABEL_42:
    v8 = *(j - 5);
  }

  v27 = v2 < v8;
  if (v4 != v24)
  {
    v27 = v4 < v24;
  }

  if (v27)
  {
    goto LABEL_42;
  }

  v28 = v8 < v2;
  if (v4 != v24)
  {
    v28 = v24 < v4;
  }

  if (!v28 && v5 < *j)
  {
    goto LABEL_42;
  }

LABEL_59:
  a2 = j - 4;
LABEL_98:
  while (i < a2)
  {
    *v53 = *i;
    *&v53[16] = *(i + 16);
    v29 = *a2;
    *(i + 12) = *(a2 + 3);
    *i = v29;
    *(a2 + 3) = *&v53[12];
    *a2 = *v53;
    do
    {
      while (1)
      {
        i += 32;
        v30 = *(i + 8);
        v31 = HIDWORD(v30);
        v32 = v4 == HIDWORD(v30) && v2 == v30;
        if (!v32 || v5 != *(i + 16))
        {
          break;
        }

        v33 = *(i + 20);
        if (v6 == v33)
        {
          if (v7 > *(i + 24))
          {
            goto LABEL_81;
          }
        }

        else if (v6 < v33)
        {
          goto LABEL_81;
        }
      }

      v34 = v2 < v30;
      if (v4 != v31)
      {
        v34 = v4 < v31;
      }

      if (v34)
      {
        break;
      }

      v35 = v30 < v2;
      v36 = v4 == v31 ? v35 : v31 < v4;
    }

    while (v36 || v5 >= *(i + 16));
    while (1)
    {
LABEL_81:
      while (1)
      {
        a2 -= 8;
        v37 = *(a2 + 1);
        v38 = HIDWORD(v37);
        v39 = v4 == HIDWORD(v37) && v2 == v37;
        if (!v39 || v5 != a2[4])
        {
          break;
        }

        v40 = a2[5];
        if (v6 == v40)
        {
          if (v7 <= a2[6])
          {
            goto LABEL_98;
          }
        }

        else if (v6 >= v40)
        {
          goto LABEL_98;
        }
      }

      v41 = v2 < v37;
      if (v4 != v38)
      {
        v41 = v4 < v38;
      }

      if (!v41)
      {
        v42 = v37 < v2;
        v43 = v4 == v38 ? v42 : v38 < v4;
        if (v43 || v5 >= a2[4])
        {
          break;
        }
      }
    }
  }

  if ((i - 32) != a1)
  {
    v44 = *(i - 32);
    *(a1 + 12) = *(i - 20);
    *a1 = v44;
  }

  *(i - 32) = v3;
  *(i - 24) = v2;
  *(i - 16) = v5;
  *(i - 12) = v6;
  *(i - 8) = v7;
  return i;
}

unint64_t sub_C20018(uint64_t *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v8 = HIDWORD(v4);
  while (1)
  {
    v9 = &a1[v2];
    v11 = a1[v2 + 5];
    v10 = HIDWORD(a1[v2 + 5]);
    v12 = v10 == HIDWORD(v4) && v11 == v4;
    if (!v12 || *(v9 + 12) != v5)
    {
      break;
    }

    v13 = HIDWORD(a1[v2 + 6]);
    if (v13 == v6)
    {
      if (LODWORD(a1[v2 + 7]) <= v7)
      {
        goto LABEL_20;
      }
    }

    else if (v13 >= v6)
    {
      goto LABEL_20;
    }

LABEL_3:
    v2 += 4;
  }

  v14 = v11 < v4;
  v12 = v10 == HIDWORD(v4);
  v15 = v10 < HIDWORD(v4);
  if (v12)
  {
    v15 = v14;
  }

  if (v15)
  {
    goto LABEL_3;
  }

  v16 = v9[5];
  v17 = v4 < v16;
  v12 = v8 == HIDWORD(v16);
  v18 = v8 < HIDWORD(v16);
  if (v12)
  {
    v18 = v17;
  }

  if (!v18 && *(v9 + 12) < v5)
  {
    goto LABEL_3;
  }

LABEL_20:
  v19 = &a1[v2 + 4];
  if (v2 * 8)
  {
    do
    {
      while (1)
      {
        a2 -= 8;
        v32 = a2[2];
        v31 = a2[3];
        v33 = v31 == HIDWORD(v4) && v32 == v4;
        if (!v33 || a2[4] != v5)
        {
          break;
        }

        v34 = a2[5];
        if (v34 == v6)
        {
          if (a2[6] > v7)
          {
            goto LABEL_67;
          }
        }

        else if (v34 < v6)
        {
          goto LABEL_67;
        }
      }

      v35 = v32 < v4;
      v12 = v31 == HIDWORD(v4);
      v36 = v31 < HIDWORD(v4);
      if (v12)
      {
        v36 = v35;
      }

      if (v36)
      {
        break;
      }

      v37 = *(a2 + 1);
      v38 = v4 < v37;
      v12 = v8 == HIDWORD(v37);
      v39 = v8 < HIDWORD(v37);
      if (v12)
      {
        v39 = v38;
      }
    }

    while (v39 || a2[4] >= v5);
  }

  else
  {
    do
    {
      if (v19 >= a2)
      {
        break;
      }

      while (1)
      {
        a2 -= 8;
        v21 = a2[2];
        v20 = a2[3];
        v22 = v20 == HIDWORD(v4) && v21 == v4;
        if (!v22 || a2[4] != v5)
        {
          break;
        }

        v23 = a2[5];
        if (v23 == v6)
        {
          if (a2[6] > v7 || v19 >= a2)
          {
            goto LABEL_67;
          }
        }

        else if (v23 < v6 || v19 >= a2)
        {
          goto LABEL_67;
        }
      }

      v26 = v21 < v4;
      v12 = v20 == HIDWORD(v4);
      v27 = v20 < HIDWORD(v4);
      if (v12)
      {
        v27 = v26;
      }

      if (v27)
      {
        break;
      }

      v28 = *(a2 + 1);
      v29 = v4 < v28;
      v12 = v8 == HIDWORD(v28);
      v30 = v8 < HIDWORD(v28);
      if (v12)
      {
        v30 = v29;
      }
    }

    while (v30 || a2[4] >= v5);
  }

LABEL_67:
  v40 = v19;
  if (v19 < a2)
  {
    v41 = a2;
    do
    {
      *v63 = *v40;
      *&v63[16] = *(v40 + 16);
      v42 = *v41;
      *(v40 + 12) = *(v41 + 3);
      *v40 = v42;
      *(v41 + 3) = *&v63[12];
      *v41 = *v63;
      while (1)
      {
        while (1)
        {
          v40 += 32;
          v43 = *(v40 + 8);
          v44 = *(v40 + 12);
          v45 = v44 == HIDWORD(v4) && v43 == v4;
          if (!v45 || *(v40 + 16) != v5)
          {
            break;
          }

          v46 = *(v40 + 20);
          if (v46 == v6)
          {
            if (*(v40 + 24) <= v7)
            {
              goto LABEL_90;
            }
          }

          else if (v46 >= v6)
          {
            goto LABEL_90;
          }
        }

        v47 = v43 < v4;
        v12 = v44 == HIDWORD(v4);
        v48 = v44 < HIDWORD(v4);
        if (v12)
        {
          v48 = v47;
        }

        if (!v48)
        {
          v49 = *(v40 + 8);
          v50 = v4 < v49;
          v12 = v8 == HIDWORD(v49);
          v51 = v8 < HIDWORD(v49);
          if (v12)
          {
            v51 = v50;
          }

          if (v51 || *(v40 + 16) >= v5)
          {
            break;
          }
        }
      }

      do
      {
LABEL_90:
        while (1)
        {
          v41 -= 8;
          v52 = v41[2];
          v53 = v41[3];
          v54 = v53 == HIDWORD(v4) && v52 == v4;
          if (!v54 || v41[4] != v5)
          {
            break;
          }

          v55 = v41[5];
          if (v55 == v6)
          {
            if (v41[6] > v7)
            {
              goto LABEL_69;
            }
          }

          else if (v55 < v6)
          {
            goto LABEL_69;
          }
        }

        v56 = v52 < v4;
        v12 = v53 == HIDWORD(v4);
        v57 = v53 < HIDWORD(v4);
        if (v12)
        {
          v57 = v56;
        }

        if (v57)
        {
          break;
        }

        v58 = *(v41 + 1);
        v59 = v4 < v58;
        v12 = v8 == HIDWORD(v58);
        v60 = v8 < HIDWORD(v58);
        if (v12)
        {
          v60 = v59;
        }
      }

      while (v60 || v41[4] >= v5);
LABEL_69:
      ;
    }

    while (v40 < v41);
  }

  if ((v40 - 32) != a1)
  {
    v61 = *(v40 - 32);
    *(a1 + 12) = *(v40 - 20);
    *a1 = v61;
  }

  *(v40 - 32) = v3;
  *(v40 - 24) = v4;
  *(v40 - 16) = v5;
  *(v40 - 12) = v6;
  *(v40 - 8) = v7;
  return v40 - 32;
}

BOOL sub_C20370(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_C1EEEC(a1, (a1 + 32), (a2 - 32));
        return 1;
      case 4:
        sub_C1F2FC(a1, a1 + 32, a1 + 64, a2 - 32);
        return 1;
      case 5:
        sub_C1F598(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32);
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
      v4 = *(a1 + 8);
      v5 = HIDWORD(v4);
      v7 = *(a2 - 24);
      v6 = *(a2 - 20);
      v8 = v6 == HIDWORD(v4) && v7 == v4;
      if (v8 && *(a2 - 16) == *(a1 + 16))
      {
        v9 = *(a2 - 12);
        v10 = *(a1 + 20);
        if (v9 == v10)
        {
          if (*(a2 - 8) <= *(a1 + 24))
          {
            return 1;
          }
        }

        else if (v9 >= v10)
        {
          return 1;
        }
      }

      else
      {
        v47 = v7 < v4;
        v8 = v6 == HIDWORD(v4);
        v48 = v6 < HIDWORD(v4);
        if (v8)
        {
          v48 = v47;
        }

        if (!v48)
        {
          v52 = *(a2 - 24);
          v53 = v4 < v52;
          v8 = v5 == HIDWORD(v52);
          v54 = v5 < HIDWORD(v52);
          if (v8)
          {
            v54 = v53;
          }

          if (v54 || *(a2 - 16) >= *(a1 + 16))
          {
            return 1;
          }
        }
      }

      v49 = (a2 - 32);
      *v55 = *a1;
      v50 = *a1;
      *&v55[16] = *(a1 + 16);
      v51 = *(a2 - 20);
      *a1 = *(a2 - 32);
      *(a1 + 12) = v51;
      *v49 = v50;
      *(v49 + 12) = *&v55[12];
      return 1;
    }
  }

  v11 = a1 + 64;
  sub_C1EEEC(a1, (a1 + 32), (a1 + 64));
  v14 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v11 + 8);
    v18 = HIDWORD(v17);
    v20 = *(v14 + 8);
    v19 = *(v14 + 12);
    if (v19 != HIDWORD(v17) || v20 != v17)
    {
      break;
    }

    v22 = *(v14 + 16);
    if (v22 != *(v11 + 16))
    {
      break;
    }

    v23 = *(v14 + 20);
    v24 = *(v11 + 20);
    v25 = v23 >= v24;
    if (v23 == v24)
    {
      if (*(v14 + 24) > *(v11 + 24))
      {
        goto LABEL_41;
      }

      goto LABEL_22;
    }

LABEL_40:
    if (!v25)
    {
      goto LABEL_41;
    }

LABEL_22:
    v11 = v14;
    v15 += 32;
    v14 += 32;
    if (v14 == a2)
    {
      return 1;
    }
  }

  v26 = v20 < v17;
  v8 = v19 == HIDWORD(v17);
  v27 = v19 < HIDWORD(v17);
  if (!v8)
  {
    v26 = v27;
  }

  if (!v26)
  {
    v28 = *(v14 + 8);
    v29 = v17 < v28;
    v8 = v18 == HIDWORD(v28);
    v30 = v18 < HIDWORD(v28);
    if (v8)
    {
      v30 = v29;
    }

    if (v30)
    {
      goto LABEL_22;
    }

    v22 = *(v14 + 16);
    v25 = v22 >= *(v11 + 16);
    goto LABEL_40;
  }

  v22 = *(v14 + 16);
LABEL_41:
  v31 = *v14;
  v32 = *(v14 + 8);
  v33 = HIDWORD(v32);
  v35 = *(v14 + 20);
  v34 = *(v14 + 24);
  *v14 = *v11;
  *(v14 + 12) = *(v11 + 12);
  v36 = v15;
  while (2)
  {
    v37 = a1 + v36;
    v38 = *(a1 + v36 + 40);
    v39 = HIDWORD(v38);
    v40 = v33 == HIDWORD(v38) && v32 == v38;
    if (v40 && v22 == *(v37 + 48))
    {
      v41 = *(a1 + v36 + 52);
      if (v35 == v41)
      {
        if (v34 <= *(a1 + v36 + 56))
        {
          break;
        }
      }

      else if (v35 >= v41)
      {
        break;
      }

      goto LABEL_43;
    }

    v42 = v32 < v38;
    if (v33 != v39)
    {
      v42 = v33 < v39;
    }

    if (v42 || ((v43 = v38 < v32, v33 != v39) ? (v44 = v39 < v33) : (v44 = v43), !v44 && v22 < *(v37 + 48)))
    {
LABEL_43:
      *(v37 + 64) = *(v37 + 32);
      *(v37 + 76) = *(v37 + 44);
      v36 -= 32;
      if (v36 == -64)
      {
        *a1 = v31;
        *(a1 + 8) = v32;
        *(a1 + 16) = v22;
        *(a1 + 20) = v35;
        ++v16;
        *(a1 + 24) = v34;
        if (v16 != 8)
        {
          goto LABEL_22;
        }

        return v14 + 32 == a2;
      }

      continue;
    }

    break;
  }

  v45 = a1 + v36;
  *(v45 + 64) = v31;
  *(v45 + 72) = v32;
  v46 = (a1 + v36 + 64);
  v46[4] = v22;
  v46[5] = v35;
  ++v16;
  v46[6] = v34;
  if (v16 != 8)
  {
    goto LABEL_22;
  }

  return v14 + 32 == a2;
}

_OWORD *sub_C2073C(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        sub_C20A38(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      while (1)
      {
        v15 = *(a1 + 8);
        v16 = HIDWORD(v15);
        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        v19 = v17 == HIDWORD(v15) && v18 == v15;
        if (v19 && *(v12 + 4) == *(a1 + 16))
        {
          break;
        }

        v23 = v18 < v15;
        v19 = v17 == HIDWORD(v15);
        v24 = v17 < HIDWORD(v15);
        if (v19)
        {
          v24 = v23;
        }

        if (!v24)
        {
          v25 = *(v12 + 1);
          v26 = v15 < v25;
          v19 = v16 == HIDWORD(v25);
          v27 = v16 < HIDWORD(v25);
          if (v19)
          {
            v27 = v26;
          }

          if (v27)
          {
            goto LABEL_8;
          }

          v22 = *(v12 + 4) >= *(a1 + 16);
LABEL_25:
          if (v22)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        *v51 = *v12;
        v13 = *v12;
        *&v51[16] = v12[1];
        v14 = *(a1 + 12);
        *v12 = *a1;
        *(v12 + 12) = v14;
        *a1 = v13;
        *(a1 + 12) = *&v51[12];
        sub_C20A38(a1, a4, v8, a1);
LABEL_8:
        v12 += 2;
        if (v12 == a3)
        {
          goto LABEL_28;
        }
      }

      v20 = *(v12 + 5);
      v21 = *(a1 + 20);
      v22 = v20 >= v21;
      if (v20 == v21)
      {
        if (*(v12 + 6) <= *(a1 + 24))
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_28:
    if (v8 < 2)
    {
      return v12;
    }

LABEL_31:
    v29 = 0;
    *v52 = *a1;
    *&v52[16] = *(a1 + 16);
    v30 = a1;
    while (1)
    {
      v32 = v30;
      v33 = &v30[2 * v29];
      v30 = v33 + 2;
      v34 = 2 * v29;
      v29 = (2 * v29) | 1;
      v35 = v34 + 2;
      if (v35 >= v8)
      {
        goto LABEL_33;
      }

      v36 = *(v33 + 9);
      v37 = HIDWORD(v36);
      v39 = *(v33 + 10);
      v38 = *(v33 + 11);
      v40 = v38 == HIDWORD(v36) && v39 == v36;
      if (v40 && *(v33 + 12) == *(v33 + 20))
      {
        break;
      }

      v44 = v39 < v36;
      v19 = v38 == HIDWORD(v36);
      v45 = v38 < HIDWORD(v36);
      if (v19)
      {
        v45 = v44;
      }

      if (!v45)
      {
        v46 = *(v33 + 5);
        v47 = v36 < v46;
        v19 = v37 == HIDWORD(v46);
        v48 = v37 < HIDWORD(v46);
        if (v19)
        {
          v48 = v47;
        }

        if (v48)
        {
          goto LABEL_33;
        }

        v43 = *(v33 + 12) >= *(v33 + 20);
LABEL_51:
        if (v43)
        {
          goto LABEL_33;
        }
      }

LABEL_32:
      v30 = v33 + 4;
      v29 = v35;
LABEL_33:
      v31 = *v30;
      *(v32 + 12) = *(v30 + 12);
      *v32 = v31;
      if (v29 > ((v8 - 2) >> 1))
      {
        v6 -= 2;
        if (v30 == v6)
        {
          *(v30 + 12) = *&v52[12];
          *v30 = *v52;
          v28 = v8-- <= 2;
          if (v28)
          {
            return v12;
          }

          goto LABEL_31;
        }

        v49 = *v6;
        *(v30 + 12) = *(v6 + 12);
        *v30 = v49;
        *v6 = *v52;
        *(v6 + 12) = *&v52[12];
        sub_C20D24(a1, (v30 + 2), a4, (v30 - a1 + 32) >> 5);
        v28 = v8-- <= 2;
        if (v28)
        {
          return v12;
        }

        goto LABEL_31;
      }
    }

    v41 = *(v33 + 13);
    v42 = *(v33 + 21);
    v43 = v41 >= v42;
    if (v41 == v42)
    {
      if (*(v33 + 14) <= *(v33 + 22))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_51;
  }

  return a3;
}

uint64_t sub_C20A38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 5)
  {
    return result;
  }

  v6 = v4 >> 4;
  v7 = (v4 >> 4) + 1;
  v8 = (result + 32 * v7);
  v9 = v6 + 2;
  if (v9 < a3)
  {
    v10 = *(v8 + 5);
    v11 = HIDWORD(v10);
    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    v14 = v12 == HIDWORD(v10) && v13 == v10;
    if (v14 && *(v8 + 4) == *(v8 + 12))
    {
      v15 = *(v8 + 5);
      v16 = *(v8 + 13);
      v17 = v15 >= v16;
      if (v15 == v16)
      {
        if (*(v8 + 6) <= *(v8 + 14))
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = v13 < v10;
      v14 = v12 == HIDWORD(v10);
      v19 = v12 < HIDWORD(v10);
      if (v14)
      {
        v19 = v18;
      }

      if (v19)
      {
        goto LABEL_21;
      }

      v20 = *(v8 + 1);
      v21 = v10 < v20;
      v14 = v11 == HIDWORD(v20);
      v22 = v11 < HIDWORD(v20);
      if (v14)
      {
        v22 = v21;
      }

      if (v22)
      {
        goto LABEL_22;
      }

      v17 = *(v8 + 4) >= *(v8 + 12);
    }

    if (!v17)
    {
LABEL_21:
      v8 += 2;
      v7 = v9;
    }
  }

LABEL_22:
  v23 = a4[1];
  v24 = HIDWORD(v23);
  v26 = *(v8 + 2);
  v25 = *(v8 + 3);
  if (v25 == HIDWORD(v23) && v26 == v23)
  {
    v28 = *(v8 + 4);
    if (v28 == *(a4 + 4))
    {
      v29 = *(v8 + 5);
      v30 = *(a4 + 5);
      v31 = v29 >= v30;
      if (v29 == v30)
      {
        if (*(v8 + 6) > *(a4 + 6))
        {
          return result;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }
  }

  v32 = v26 < v23;
  v14 = v25 == HIDWORD(v23);
  v33 = v25 < HIDWORD(v23);
  if (!v14)
  {
    v32 = v33;
  }

  if (!v32)
  {
    v34 = *(v8 + 1);
    v35 = v23 < v34;
    v14 = v24 == HIDWORD(v34);
    v36 = v24 < HIDWORD(v34);
    if (v14)
    {
      v36 = v35;
    }

    if (v36)
    {
      v28 = *(a4 + 4);
      goto LABEL_41;
    }

    v28 = *(a4 + 4);
    v31 = *(v8 + 4) >= v28;
LABEL_39:
    if (!v31)
    {
      return result;
    }

LABEL_41:
    v37 = *a4;
    v38 = *(a4 + 5);
    v39 = *(a4 + 6);
    v40 = *(v8 + 12);
    *a4 = *v8;
    *(a4 + 12) = v40;
    while (1)
    {
      if (v5 < v7)
      {
LABEL_81:
        *v8 = v37;
        *(v8 + 1) = v23;
        *(v8 + 4) = v28;
        *(v8 + 5) = v38;
        *(v8 + 6) = v39;
        return result;
      }

      v42 = v8;
      v43 = 2 * v7;
      v7 = (2 * v7) | 1;
      v8 = (result + 32 * v7);
      v44 = v43 + 2;
      if (v44 < a3)
      {
        v45 = *(v8 + 5);
        v46 = HIDWORD(v45);
        v48 = *(v8 + 2);
        v47 = *(v8 + 3);
        v49 = v47 == HIDWORD(v45) && v48 == v45;
        if (v49 && *(v8 + 4) == *(v8 + 12))
        {
          v50 = *(v8 + 5);
          v51 = *(v8 + 13);
          v52 = v50 >= v51;
          if (v50 != v51)
          {
            goto LABEL_62;
          }

          if (*(v8 + 6) > *(v8 + 14))
          {
            goto LABEL_63;
          }
        }

        else
        {
          v53 = v48 < v45;
          v14 = v47 == HIDWORD(v45);
          v54 = v47 < HIDWORD(v45);
          if (v14)
          {
            v54 = v53;
          }

          if (v54)
          {
            goto LABEL_63;
          }

          v55 = *(v8 + 1);
          v56 = v45 < v55;
          v14 = v46 == HIDWORD(v55);
          v57 = v46 < HIDWORD(v55);
          if (v14)
          {
            v57 = v56;
          }

          if (!v57)
          {
            v52 = *(v8 + 4) >= *(v8 + 12);
LABEL_62:
            if (v52)
            {
              goto LABEL_64;
            }

LABEL_63:
            v8 += 2;
            v7 = v44;
          }
        }
      }

LABEL_64:
      v59 = *(v8 + 2);
      v58 = *(v8 + 3);
      v60 = v58 == HIDWORD(v23) && v59 == v23;
      if (v60 && *(v8 + 4) == v28)
      {
        v61 = *(v8 + 5);
        if (v61 == v38)
        {
          if (*(v8 + 6) > v39)
          {
            goto LABEL_80;
          }
        }

        else if (v61 < v38)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v62 = v59 < v23;
        v14 = v58 == HIDWORD(v23);
        v63 = v58 < HIDWORD(v23);
        if (v14)
        {
          v63 = v62;
        }

        if (v63)
        {
          goto LABEL_80;
        }

        v64 = *(v8 + 1);
        v65 = v23 < v64;
        v14 = v24 == HIDWORD(v64);
        v66 = v24 < HIDWORD(v64);
        if (v14)
        {
          v66 = v65;
        }

        if (!v66 && *(v8 + 4) < v28)
        {
LABEL_80:
          v8 = v42;
          goto LABEL_81;
        }
      }

      v41 = *v8;
      *(v42 + 12) = *(v8 + 12);
      *v42 = v41;
    }
  }

  return result;
}

uint64_t sub_C20D24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 32 * (v4 >> 1));
  v7 = *(a2 - 24);
  v8 = HIDWORD(v7);
  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  v11 = v9 == HIDWORD(v7) && v10 == v7;
  if (v11 && (v12 = *(v6 + 4), v12 == *(a2 - 16)))
  {
    v13 = *(v6 + 5);
    v14 = *(a2 - 12);
    v15 = v13 >= v14;
    if (v13 == v14)
    {
      if (*(v6 + 6) <= *(a2 - 8))
      {
        return result;
      }

LABEL_20:
      v21 = (a2 - 32);
      v22 = *(a2 - 32);
      v23 = *(a2 - 12);
      v24 = *(a2 - 8);
      v25 = *(v6 + 12);
      *v21 = *v6;
      *(v21 + 12) = v25;
      if (v4 < 2)
      {
LABEL_21:
        *v6 = v22;
        *(v6 + 1) = v7;
        *(v6 + 4) = v12;
        *(v6 + 5) = v23;
        *(v6 + 6) = v24;
        return result;
      }

      while (1)
      {
        v27 = v6;
        v28 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v6 = (result + 32 * v5);
        v30 = *(v6 + 2);
        v29 = *(v6 + 3);
        v31 = v29 == HIDWORD(v7) && v30 == v7;
        if (v31 && *(v6 + 4) == v12)
        {
          v32 = *(v6 + 5);
          if (v32 == v23)
          {
            if (*(v6 + 6) <= v24)
            {
              goto LABEL_41;
            }
          }

          else if (v32 >= v23)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v33 = v30 < v7;
          v11 = v29 == HIDWORD(v7);
          v34 = v29 < HIDWORD(v7);
          if (v11)
          {
            v34 = v33;
          }

          if (!v34)
          {
            v35 = *(v6 + 1);
            v36 = v7 < v35;
            v11 = v8 == HIDWORD(v35);
            v37 = v8 < HIDWORD(v35);
            if (v11)
            {
              v37 = v36;
            }

            if (v37 || *(v6 + 4) >= v12)
            {
LABEL_41:
              *v27 = v22;
              *(v27 + 1) = v7;
              *(v27 + 4) = v12;
              *(v27 + 5) = v23;
              *(v27 + 6) = v24;
              return result;
            }
          }
        }

        v26 = *v6;
        *(v27 + 12) = *(v6 + 12);
        *v27 = v26;
        if (v28 < 2)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v16 = v10 < v7;
    v11 = v9 == HIDWORD(v7);
    v17 = v9 < HIDWORD(v7);
    if (!v11)
    {
      v16 = v17;
    }

    if (v16)
    {
      v12 = *(a2 - 16);
      goto LABEL_20;
    }

    v18 = *(v6 + 1);
    v19 = v7 < v18;
    v11 = v8 == HIDWORD(v18);
    v20 = v8 < HIDWORD(v18);
    if (v11)
    {
      v20 = v19;
    }

    if (v20)
    {
      return result;
    }

    v12 = *(a2 - 16);
    v15 = *(v6 + 4) >= v12;
  }

  if (!v15)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_C211B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C21230(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_C21570(a1, a2);
  sub_C21B1C(a1, a2);
  sub_C22170(a1, a2);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_C24398(v7, v8, v10, 1, v6);
  result = sub_C22410(a1, a2);
  if (0x14C1BACF914C1BADLL * ((v4 - v5) >> 3) <= (0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3)))
  {
    return result;
  }

  result = sub_7E7E4(2u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v18);
  sub_4A5C(&v18, "The journey similarity filter removed ", 38);
  v12 = std::ostream::operator<<();
  sub_4A5C(v12, " journeys", 9);
  if ((v28 & 0x10) != 0)
  {
    v14 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v14 = v24;
    }

    v15 = v23;
    v13 = v14 - v23;
    if (v14 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_24:
      sub_3244();
    }

LABEL_12:
    if (v13 >= 0x17)
    {
      operator new();
    }

    v17 = v13;
    if (v13)
    {
      memmove(&__p, v15, v13);
    }

    goto LABEL_17;
  }

  if ((v28 & 8) != 0)
  {
    v15 = v21;
    v13 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  v13 = 0;
  v17 = 0;
LABEL_17:
  *(&__p + v13) = 0;
  sub_7E854(&__p, 2u);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_C2152C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_C21570(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v39 = (a1 + 24);
  v5 = *(a1 + 32);
  if (v5 != v4)
  {
    v6 = *(a1 + 32);
    do
    {
      v9 = *(v6 - 3);
      v6 -= 3;
      v8 = v9;
      if (v9)
      {
        v10 = *(v5 - 2);
        v7 = v8;
        if (v10 != v8)
        {
          v11 = *(v5 - 2);
          do
          {
            v13 = *(v11 - 3);
            v11 -= 24;
            v12 = v13;
            if (v13)
            {
              *(v10 - 2) = v12;
              operator delete(v12);
            }

            v10 = v11;
          }

          while (v11 != v8);
          v7 = *v6;
        }

        *(v5 - 2) = v8;
        operator delete(v7);
      }

      v5 = v6;
    }

    while (v6 != v4);
  }

  *(a1 + 32) = v4;
  if (*(a1 + 1) == 1)
  {
    v15 = *(a2 + 8);
    v14 = *(a2 + 16);
    v40 = v14;
    while (v15 != v14)
    {
      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      v18 = *(v15 + 200);
      v17 = *(v15 + 208);
      v41 = v15;
      for (i = v17; v18 != v17; v18 += 72)
      {
        if (*(v18 + 24))
        {
          continue;
        }

        v28 = *(v18 + 8);
        if (v28 != *v18)
        {
          if (!((0xCF3CF3CF3CF3CF3DLL * ((v28 - *v18) >> 3)) >> 61))
          {
            operator new();
          }

          sub_1794();
        }

        sub_BD71E4(0, 0, &v45, 0, 1);
        v29 = __p[1];
        if (__p[1] < v44)
        {
          *__p[1] = 0;
          v29[1] = 0;
          v27 = v29 + 3;
          v29[2] = 0;
          v17 = i;
        }

        else
        {
          v30 = __p[0];
          v31 = __p[1] - __p[0];
          v32 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) + 1;
          if (v32 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v44 - __p[0]) >> 3) > v32)
          {
            v32 = 0x5555555555555556 * ((v44 - __p[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v44 - __p[0]) >> 3) >= 0x555555555555555)
          {
            v33 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v33 = v32;
          }

          if (v33)
          {
            if (v33 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v34 = (8 * ((__p[1] - __p[0]) >> 3));
          *v34 = 0;
          v34[1] = 0;
          v34[2] = 0;
          v35 = v34 - v31;
          if (v30 != v29)
          {
            v36 = v30;
            v37 = v35;
            v17 = i;
            do
            {
              *v37 = *v36;
              *(v37 + 2) = v36[2];
              *v36 = 0;
              v36[1] = 0;
              v36[2] = 0;
              v36 += 3;
              v37 += 24;
            }

            while (v36 != v29);
            do
            {
              v38 = *v30;
              if (*v30)
              {
                v30[1] = v38;
                operator delete(v38);
              }

              v30 += 3;
            }

            while (v30 != v29);
            v30 = __p[0];
            v27 = v34 + 3;
            __p[0] = v35;
            __p[1] = v27;
            v44 = 0;
            if (!v30)
            {
              goto LABEL_26;
            }

LABEL_52:
            operator delete(v30);
            goto LABEL_26;
          }

          v17 = i;
          v27 = v34 + 3;
          __p[0] = v35;
          __p[1] = v27;
          v44 = 0;
          if (v30)
          {
            goto LABEL_52;
          }
        }

LABEL_26:
        __p[1] = v27;
      }

      v19 = *(a1 + 32);
      if (v19 < *(a1 + 40))
      {
        *v19 = 0;
        v19[1] = 0;
        v19[2] = 0;
        *v19 = *__p;
        v19[2] = v44;
        *(a1 + 32) = v19 + 3;
        v16 = v41;
      }

      else
      {
        v20 = sub_52D94(v39, __p);
        v16 = v41;
        v21 = __p[0];
        *(a1 + 32) = v20;
        if (v21)
        {
          v22 = __p[1];
          v23 = v21;
          if (__p[1] != v21)
          {
            v24 = __p[1];
            do
            {
              v26 = *(v24 - 3);
              v24 -= 24;
              v25 = v26;
              if (v26)
              {
                *(v22 - 2) = v25;
                operator delete(v25);
              }

              v22 = v24;
            }

            while (v24 != v21);
            v23 = __p[0];
          }

          __p[1] = v21;
          operator delete(v23);
        }
      }

      v15 = v16 + 296;
      v14 = v40;
    }
  }
}

void sub_C21AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_C21AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_C21AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_C21AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  sub_34BE0(&a13);
  _Unwind_Resume(a1);
}

void sub_C21B1C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 48);
  v70 = (a1 + 48);
  v5 = *(a1 + 56);
  if (v5 != v4)
  {
    v6 = *(a1 + 56);
    do
    {
      v9 = *(v6 - 3);
      v6 -= 3;
      v8 = v9;
      if (v9)
      {
        v10 = *(v5 - 2);
        v7 = v8;
        if (v10 != v8)
        {
          v11 = *(v5 - 2);
          do
          {
            v13 = *(v11 - 3);
            v11 -= 24;
            v12 = v13;
            if (v13)
            {
              *(v10 - 2) = v12;
              operator delete(v12);
            }

            v10 = v11;
          }

          while (v11 != v8);
          v7 = *v6;
        }

        *(v5 - 2) = v8;
        operator delete(v7);
      }

      v5 = v6;
    }

    while (v6 != v4);
  }

  *(v3 + 56) = v4;
  if (*(v3 + 2) == 1)
  {
    v14 = *(a2 + 8);
    v71 = *(a2 + 16);
    if (v14 != v71)
    {
      v74 = v3;
      while (1)
      {
        __p[0] = 0;
        __p[1] = 0;
        v76 = 0;
        v16 = v14;
        v17 = *(v14 + 200);
        v18 = *(v16 + 208);
        v72 = v16;
        v73 = v18;
        if (v17 != v18)
        {
          break;
        }

LABEL_18:
        v19 = *(v3 + 56);
        if (v19 < *(v3 + 64))
        {
          *v19 = 0;
          v19[1] = 0;
          v19[2] = 0;
          *v19 = *__p;
          v19[2] = v76;
          *(v3 + 56) = v19 + 3;
          v15 = v72;
        }

        else
        {
          v20 = sub_52D94(v70, __p);
          v15 = v72;
          v21 = __p[0];
          *(v3 + 56) = v20;
          if (v21)
          {
            v22 = __p[1];
            v23 = v21;
            if (__p[1] != v21)
            {
              v24 = __p[1];
              do
              {
                v26 = *(v24 - 3);
                v24 -= 24;
                v25 = v26;
                if (v26)
                {
                  *(v22 - 2) = v25;
                  operator delete(v25);
                }

                v22 = v24;
              }

              while (v24 != v21);
              v23 = __p[0];
            }

            __p[1] = v21;
            operator delete(v23);
          }
        }

        v14 = v15 + 296;
        if (v14 == v71)
        {
          return;
        }
      }

      while (1)
      {
        if (!*(v17 + 24))
        {
          v28 = *(v17 + 8);
          if (*v17 != v28)
          {
            v29 = 0;
            v30 = 0;
            v31 = *v17 + 168;
            while (2)
            {
              if (*(v31 - 8))
              {
                sub_5AF20();
              }

              if (*(v31 - 10) != 1)
              {
                goto LABEL_64;
              }

              v32 = *(v31 - 136);
              v33 = *(v31 - 116);
              v34 = *(v31 - 128);
              v35 = sub_A5706C((*(v3 + 16) + 4136), v32);
              v36 = v35;
              v37 = &v35[-*v35];
              if (*v37 < 5u)
              {
                v38 = 0;
              }

              else
              {
                v38 = *(v37 + 2);
                if (v38)
                {
                  v38 += &v35[*&v35[v38]];
                }
              }

              v39 = (v38 + 4 * v32 + 4 + *(v38 + 4 * v32 + 4));
              v40 = (v39 - *v39);
              if (*v40 >= 9u && (v41 = v40[4]) != 0)
              {
                v42 = (v39 + v41 + *(v39 + v41));
              }

              else
              {
                v42 = 0;
              }

              v43 = sub_A571D4(v42, v33);
              v44 = (v36 - *v36);
              if (*v44 < 0xBu)
              {
                v45 = 0;
                v46 = (v39 - *v39);
                if (*v46 >= 0x11u)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                v45 = v44[5];
                if (v45)
                {
                  v45 = (v45 + v36 + *(v45 + v36));
                }

                v46 = (v39 - *v39);
                if (*v46 >= 0x11u)
                {
LABEL_45:
                  v47 = v46[8];
                  if (v46[8])
                  {
                    LODWORD(v47) = *(v39 + v47);
                  }

LABEL_49:
                  v48 = sub_A57320(v45, v47 + *(v39 + v46[2] + *(v39 + v46[2])) * v34 + *(v43 + 14));
                  if (v48)
                  {
                    v49 = __ROR8__(*v48, 32);
                    v50 = *(v48 + 8);
                  }

                  else
                  {
                    v50 = 0;
                    v49 = 0xFFFFFFFFLL;
                  }

                  v51 = v30 - v29;
                  v52 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 2);
                  v53 = v52 + 1;
                  if (v52 + 1 > 0x1555555555555555)
                  {
                    sub_1794();
                  }

                  if (0x5555555555555556 * (-v29 >> 2) > v53)
                  {
                    v53 = 0x5555555555555556 * (-v29 >> 2);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * (-v29 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                  {
                    v54 = 0x1555555555555555;
                  }

                  else
                  {
                    v54 = v53;
                  }

                  if (v54)
                  {
                    if (v54 <= 0x1555555555555555)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v55 = 12 * v52;
                  *v55 = v49;
                  *(v55 + 8) = v50;
                  v30 = (12 * v52 + 12);
                  v56 = (v55 + 12 * (v51 / -12));
                  memcpy(v56, v29, v51);
                  if (v29)
                  {
                    operator delete(v29);
                  }

                  v29 = v56;
                  v3 = v74;
LABEL_64:
                  if (*(v3 + 3))
                  {
                    goto LABEL_69;
                  }

                  v57 = v31 == v28;
                  v31 += 168;
                  if (v57)
                  {
                    goto LABEL_69;
                  }

                  continue;
                }
              }

              break;
            }

            LODWORD(v47) = 0;
            goto LABEL_49;
          }

          v30 = 0;
          v29 = 0;
LABEL_69:
          v58 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 2));
          if (v30 == v29)
          {
            v59 = 0;
          }

          else
          {
            v59 = v58;
          }

          sub_C22A9C(v29, v30, &v77, v59, 1);
          v60 = __p[1];
          if (__p[1] < v76)
          {
            *__p[1] = v29;
            v60[1] = v30;
            v27 = v60 + 3;
            v60[2] = 0;
          }

          else
          {
            v61 = __p[0];
            v62 = __p[1] - __p[0];
            v63 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) + 1;
            if (v63 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            if (0x5555555555555556 * ((v76 - __p[0]) >> 3) > v63)
            {
              v63 = 0x5555555555555556 * ((v76 - __p[0]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v76 - __p[0]) >> 3) >= 0x555555555555555)
            {
              v64 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v64 = v63;
            }

            if (v64)
            {
              if (v64 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v65 = (8 * ((__p[1] - __p[0]) >> 3));
            *v65 = v29;
            v65[1] = v30;
            v65[2] = 0;
            v66 = v65 - v62;
            if (v61 != v60)
            {
              v67 = v61;
              v68 = v66;
              do
              {
                *v68 = *v67;
                *(v68 + 2) = v67[2];
                *v67 = 0;
                v67[1] = 0;
                v67[2] = 0;
                v67 += 3;
                v68 += 24;
              }

              while (v67 != v60);
              do
              {
                v69 = *v61;
                if (*v61)
                {
                  v61[1] = v69;
                  operator delete(v69);
                }

                v61 += 3;
              }

              while (v61 != v60);
              v61 = __p[0];
            }

            v27 = v65 + 3;
            __p[0] = v66;
            __p[1] = v65 + 3;
            v76 = 0;
            if (v61)
            {
              operator delete(v61);
            }

            v3 = v74;
          }

          v18 = v73;
          __p[1] = v27;
        }

        v17 += 72;
        if (v17 == v18)
        {
          goto LABEL_18;
        }
      }
    }
  }
}

void sub_C2212C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_C22140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  sub_34BE0(&a15);
  _Unwind_Resume(a1);
}

void sub_C22170(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = *(a1 + 72);
  v2 = *(a2 + 16) - *(a2 + 8);
  if (v2)
  {
    v5 = 0;
    v21 = 0x14C1BACF914C1BADLL * (v2 >> 3);
    v24 = 504;
    v23 = 1;
    do
    {
      v6 = 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
      v22 = v5 + 1;
      if (v5 + 1 < v6)
      {
        v7 = v24;
        if (v6 <= v23)
        {
          v8 = v23;
        }

        else
        {
          v8 = 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
        }

        v9 = v5 + 1;
        do
        {
          sub_C226EC(a1, a2, v5, v9);
          if ((*a1 & 1) != 0 || (v18 = *(a2 + 8), 0x8E38E38E38E38E39 * ((*(v18 + 296 * v5 + 208) - *(v18 + 296 * v5 + 200)) >> 3) >= 3) && 0x8E38E38E38E38E39 * ((*(v18 + v7) - *(v18 + v7 - 8)) >> 3) >= 3)
          {
            if (v11 >= *(a1 + 8))
            {
              v12 = *(a1 + 80);
              v13 = *(a1 + 88);
              if (v12 < v13)
              {
                *v12 = v5;
                *(v12 + 8) = v9;
                v10 = v12 + 24;
                *(v12 + 16) = v11;
              }

              else
              {
                v14 = *(a1 + 72);
                v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3) + 1;
                if (v15 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1794();
                }

                v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
                if (2 * v16 > v15)
                {
                  v15 = 2 * v16;
                }

                if (v16 >= 0x555555555555555)
                {
                  v17 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v17 = v15;
                }

                if (v17)
                {
                  if (v17 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v19 = 8 * ((v12 - v14) >> 3);
                *v19 = v5;
                *(v19 + 8) = v9;
                *(v19 + 16) = v11;
                v10 = v19 + 24;
                v20 = (v19 - (v12 - v14));
                memcpy(v20, v14, v12 - v14);
                *(a1 + 72) = v20;
                *(a1 + 80) = v10;
                *(a1 + 88) = 0;
                if (v14)
                {
                  operator delete(v14);
                }
              }

              *(a1 + 80) = v10;
            }
          }

          ++v9;
          v7 += 296;
        }

        while (v8 != v9);
      }

      ++v5;
      ++v23;
      v24 += 296;
    }

    while (v22 != v21);
  }
}

uint64_t sub_C22410(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v3 != v2)
  {
    v42 = *(a1 + 80);
    do
    {
      v4 = *(a2 + 8);
      v5 = v4 + 296 * *v3;
      v7 = *(v5 + 200);
      v6 = *(v5 + 208);
      if (v7 == v6)
      {
        goto LABEL_5;
      }

      v8 = v4 + 296 * v3[1];
      v10 = *(v8 + 200);
      v9 = *(v8 + 208);
      if (v10 == v9)
      {
        goto LABEL_5;
      }

      v11 = *(v5 + 13);
      v12 = *(v8 + 13);
      v13 = v11 == v12;
      v14 = v11 < v12;
      if (v13 && (v15 = *(v8 + 2), v16 = *(v5 + 2), v13 = v16 == v15, v14 = v16 < v15, v13) && (v17 = *(v5 + 4), v18 = *(v8 + 4), v13 = v18 == v17, v14 = v18 < v17, v13) && (v19 = *(v5 + 8), v20 = *(v8 + 8), v13 = v20 == v19, v14 = v20 < v19, v13))
      {
        v21 = *(v5 + 1);
        v22 = *(v8 + 1);
        if (v21 != v22)
        {
          v23 = v21 & (v22 ^ 1);
        }

        else
        {
          v23 = *(v5 + 192) > *(v8 + 192);
        }

        if ((v23 & 1) == 0)
        {
          do
          {
LABEL_37:
            v32 = *(v6 - 5);
            if (v32)
            {
              *(v6 - 4) = v32;
              operator delete(v32);
            }

            v33 = v6 - 9;
            v34 = *(v6 - 9);
            if (v34)
            {
              v35 = *(v6 - 8);
              v31 = *(v6 - 9);
              if (v35 != v34)
              {
                do
                {
                  v36 = v35 - 168;
                  v37 = *(v35 - 2);
                  if (v37 != -1)
                  {
                    (off_2672928[v37])(&v45, v35 - 168);
                  }

                  *(v35 - 2) = -1;
                  v35 -= 168;
                }

                while (v36 != v34);
                v31 = *v33;
              }

              *(v6 - 8) = v34;
              operator delete(v31);
            }

            v6 -= 9;
          }

          while (v33 != v7);
          *(v5 + 208) = v7;
          goto LABEL_4;
        }
      }

      else if (!v14)
      {
        goto LABEL_37;
      }

      do
      {
        v25 = *(v9 - 5);
        if (v25)
        {
          *(v9 - 4) = v25;
          operator delete(v25);
        }

        v26 = v9 - 9;
        v27 = *(v9 - 9);
        if (v27)
        {
          v28 = *(v9 - 8);
          v24 = *(v9 - 9);
          if (v28 != v27)
          {
            do
            {
              v29 = v28 - 168;
              v30 = *(v28 - 2);
              if (v30 != -1)
              {
                (off_2672928[v30])(&v44, v28 - 168);
              }

              *(v28 - 2) = -1;
              v28 -= 168;
            }

            while (v29 != v27);
            v24 = *v26;
          }

          *(v9 - 8) = v27;
          operator delete(v24);
        }

        v9 -= 9;
      }

      while (v26 != v10);
      *(v8 + 208) = v10;
LABEL_4:
      v2 = v42;
LABEL_5:
      v3 += 3;
    }

    while (v3 != v2);
  }

  v39 = *(a2 + 8);
  v38 = *(a2 + 16);
  if (v39 != v38)
  {
    for (i = (v39 + 296); *(i - 12) != *(i - 11); i = (i + 296))
    {
      v13 = i == v38;
      if (v13)
      {
        v39 = *(a2 + 16);
        return sub_C18160(a2 + 8, v39, v38);
      }
    }

    v39 = i - 296;
    if ((i - 296) != v38 && i != v38)
    {
      do
      {
        if (*(i + 25) != *(i + 26))
        {
          sub_BA9EF8(v39, i);
          v39 += 296;
        }

        i = (i + 296);
      }

      while (i != v38);
      v38 = *(a2 + 16);
    }
  }

  return sub_C18160(a2 + 8, v39, v38);
}

void sub_C226EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = v4 + 296 * a3;
  v6 = *(v5 + 200);
  v7 = *(v5 + 208);
  if (v6 == v7)
  {
    return;
  }

  v8 = v4 + 296 * a4;
  if (v7 - v6 != *(v8 + 208) - *(v8 + 200))
  {
    return;
  }

  if (*(a1 + 4) == 1 && ((*(v5 + 15) & 1) != 0 || *(v8 + 15) == 1) && *(v5 + 20) != *(v8 + 20) && *(v5 + 32) != *(v8 + 32))
  {
    return;
  }

  if (*(a1 + 5) == 1)
  {
    v9 = *(v5 + 13) == 1 || *(v8 + 13) == 1;
    if (v9 && *(v5 + 20) != *(v8 + 20) && *(v5 + 32) != *(v8 + 32))
    {
      return;
    }
  }

  if (*(a1 + 1) != 1)
  {
    goto LABEL_39;
  }

  v10 = *(a1 + 24);
  v11 = *(v10 + 24 * a3);
  v12 = *(v10 + 24 * a3 + 8);
  v13 = 1.0;
  v14 = v12 - v11;
  if (v12 == v11)
  {
    goto LABEL_39;
  }

  v15 = 0;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
  v17 = *(v10 + 24 * a4);
  while (2)
  {
    v19 = (v11 + 24 * v15);
    v20 = *v19;
    v21 = v19[1];
    if (v20 == v21)
    {
      goto LABEL_23;
    }

    v22 = (v17 + 24 * v15);
    v23 = *v22;
    v24 = v22[1];
    if (v23 == v24)
    {
      goto LABEL_23;
    }

    v25 = 0;
    v26 = v20;
    v27 = v23;
    do
    {
      v28 = *(v26 + 1);
      v29 = HIDWORD(*v27);
      v9 = v28 == v29;
      v30 = v28 < v29;
      if (v9)
      {
        v30 = *v26 < *v27;
      }

      if (v30)
      {
        v26 += 8;
        if (v26 == v21)
        {
          break;
        }

        continue;
      }

      v31 = *v27 < *v26;
      v9 = v29 == HIDWORD(*v26);
      v32 = v29 < HIDWORD(*v26);
      if (!v9)
      {
        v31 = v32;
      }

      if (!v31)
      {
        ++v25;
        v26 += 8;
      }

      ++v27;
      if (v26 == v21)
      {
        break;
      }
    }

    while (v27 != v24);
    v18 = v25 / (v24 - v23);
    if (v25 / ((v21 - v20) >> 3) >= v18)
    {
      v18 = v25 / ((v21 - v20) >> 3);
    }

    if (v18 < v13)
    {
      v13 = v18;
    }

LABEL_23:
    if (++v15 != v16)
    {
      continue;
    }

    break;
  }

LABEL_39:
  if (*(a1 + 2) == 1)
  {
    sub_C22928(a1, (*(a1 + 48) + 24 * a3), (*(a1 + 48) + 24 * a4));
  }
}

double sub_C22928(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 == *a2)
  {
    return 1.0;
  }

  v6 = 0;
  v7 = *a3;
  result = 1.0;
  while (2)
  {
    v10 = *(v3 + 24 * v6 + 8);
    v11 = *(v3 + 24 * v6);
    if (v11 == v10)
    {
      goto LABEL_7;
    }

    v12 = *(v7 + 24 * v6 + 8);
    v13 = *(v7 + 24 * v6);
    if (v13 == v12)
    {
      goto LABEL_7;
    }

    v14 = 0;
    v15 = *(v3 + 24 * v6);
    v16 = *(v7 + 24 * v6);
    do
    {
      v17 = *v16;
      v18 = v15[1];
      v19 = HIDWORD(*v16);
      v20 = v18 == v19;
      v21 = v18 < v19;
      if (v20)
      {
        v21 = *v15 < *v16;
      }

      if (v21)
      {
LABEL_14:
        v15 += 3;
        if (v15 == v10)
        {
          break;
        }

        continue;
      }

      v22 = HIDWORD(*v15);
      v23 = v17 < *v15;
      if (v19 != v22)
      {
        v23 = v19 < v22;
      }

      if (!v23)
      {
        v24 = v15[2];
        v25 = *(v16 + 2);
        if (v24 < v25)
        {
          goto LABEL_14;
        }

        v26 = *v15 >= v17;
        if (v19 != v22)
        {
          v26 = v22 >= v19;
        }

        if (!v26 || v25 >= v24)
        {
          ++v14;
          v15 += 3;
        }
      }

      v16 = (v16 + 12);
      if (v15 == v10)
      {
        break;
      }
    }

    while (v16 != v12);
    v9 = v14 / (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 2));
    if (v14 / (0xAAAAAAAAAAAAAAABLL * (v10 - v11)) >= v9)
    {
      v9 = v14 / (0xAAAAAAAAAAAAAAABLL * (v10 - v11));
    }

    if (v9 < result)
    {
      result = v9;
    }

LABEL_7:
    if (++v6 != 0xAAAAAAAAAAAAAAABLL * (v5 >> 3))
    {
      continue;
    }

    return result;
  }
}

unint64_t sub_C22A9C(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          return sub_C23118(v8, (v8 + 12), a2 - 3);
        case 4uLL:

          return sub_C23384(v8, (v8 + 12), (v8 + 24), a2 - 3);
        case 5uLL:

          return sub_C23534(v8, (v8 + 12), (v8 + 24), (v8 + 36), a2 - 3);
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v29 = *(a2 - 2);
        v28 = (a2 - 12);
        v30 = HIDWORD(*v8);
        v31 = *(a2 - 3) < *v8;
        v32 = v29 == v30;
        v33 = v29 < v30;
        if (!v32)
        {
          v31 = v33;
        }

        if (v31)
        {
          goto LABEL_35;
        }

        v61 = *v8 < *v28;
        v32 = v30 == HIDWORD(*v28);
        v62 = v30 < HIDWORD(*v28);
        if (!v32)
        {
          v61 = v62;
        }

        if (!v61 && *(a2 - 1) < *(v8 + 8))
        {
LABEL_35:
          v83 = *(v8 + 8);
          v81 = *v8;
          v34 = *v28;
          *(v8 + 8) = *(a2 - 1);
          *v8 = v34;
          *v28 = v81;
          *(a2 - 1) = v83;
        }

        return result;
      }
    }

    if (v12 <= 287)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {
        v56 = (v13 - 2) >> 1;
        v57 = v56 + 1;
        v58 = (v8 + 12 * v56);
        do
        {
          sub_C23F50(v8, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 2), v58);
          v58 = (v58 - 12);
          --v57;
        }

        while (v57);
        v59 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          result = sub_C2415C(v8, a2, a3, v59);
          a2 = (a2 - 12);
        }

        while (v59-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v8 + 12 * (v13 >> 1);
    if (v12 < 0x601)
    {
      sub_C23118(v15, v8, a2 - 3);
      if (a5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_C23118(v8, v15, a2 - 3);
      v16 = 12 * v14;
      v17 = (12 * v14 + v8 - 12);
      sub_C23118((v8 + 12), v17, a2 - 6);
      sub_C23118((v8 + 24), (v8 + 12 + v16), a2 - 9);
      sub_C23118(v17, v15, (v8 + 12 + v16));
      v82 = *(v8 + 8);
      v80 = *v8;
      v18 = *v15;
      *(v8 + 8) = *(v15 + 8);
      *v8 = v18;
      *(v15 + 8) = v82;
      *v15 = v80;
      if (a5)
      {
        goto LABEL_24;
      }
    }

    v19 = *(v8 - 8);
    v20 = HIDWORD(*v8);
    v32 = v19 == v20;
    v21 = v19 < v20;
    if (v32)
    {
      v21 = *(v8 - 12) < *v8;
    }

    if (!v21)
    {
      v22 = *(v8 - 12);
      v23 = *v8 < v22;
      v32 = v20 == HIDWORD(v22);
      v24 = v20 < HIDWORD(v22);
      if (!v32)
      {
        v23 = v24;
      }

      if (v23 || *(v8 - 4) >= *(v8 + 8))
      {
        result = sub_C23768(v8, a2);
        v9 = result;
        goto LABEL_29;
      }
    }

LABEL_24:
    v25 = sub_C239F0(v8, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_27;
    }

    v27 = sub_C23C64(v8, v25);
    v9 = (v25 + 12);
    result = sub_C23C64(v25 + 12, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v25;
      if (v27)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v27)
    {
LABEL_27:
      result = sub_C22A9C(v8, v25, a3, -v11, a5 & 1);
      v9 = (v25 + 12);
LABEL_29:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v35 = (v8 + 12);
  v37 = v8 == a2 || v35 == a2;
  if (a5)
  {
    if (v37)
    {
      return result;
    }

    v38 = 0;
    v39 = v8;
LABEL_57:
    v41 = v39;
    v39 = v35;
    v42 = *(v41 + 16);
    v43 = HIDWORD(*v41);
    v32 = v42 == v43;
    v44 = v42 < v43;
    if (v32)
    {
      v45 = *(v41 + 12) < *v41;
    }

    else
    {
      v45 = v44;
    }

    v46 = *(v41 + 12);
    v47 = HIDWORD(v46);
    if (v45)
    {
      v48 = *(v41 + 20);
    }

    else
    {
      v54 = *v41 < v46;
      v32 = v43 == v47;
      v55 = v43 < v47;
      if (!v32)
      {
        v54 = v55;
      }

      if (v54)
      {
        goto LABEL_56;
      }

      v48 = *(v41 + 20);
      if (v48 >= *(v41 + 8))
      {
        goto LABEL_56;
      }
    }

    *v39 = *v41;
    *(v39 + 8) = *(v41 + 8);
    v40 = v8;
    if (v41 == v8)
    {
      goto LABEL_55;
    }

    v49 = v38;
    while (1)
    {
      v50 = v8 + v49;
      v51 = *(v8 + v49 - 12);
      result = HIDWORD(v51);
      v52 = v46 < v51;
      if (v47 != HIDWORD(v51))
      {
        v52 = v47 < HIDWORD(v51);
      }

      if (!v52)
      {
        v53 = v46 > v51;
        if (v47 != result)
        {
          v53 = result < v47;
        }

        if (v53)
        {
          v40 = v8 + v49;
LABEL_55:
          *v40 = v46;
          *(v40 + 8) = v48;
LABEL_56:
          v35 = (v39 + 12);
          v38 += 12;
          if ((v39 + 12) == a2)
          {
            return result;
          }

          goto LABEL_57;
        }

        if (v48 >= *(v50 - 4))
        {
          v40 = v41;
          goto LABEL_55;
        }
      }

      v41 -= 12;
      *v50 = *(v8 + v49 - 12);
      *(v50 + 8) = *(v8 + v49 - 4);
      v49 -= 12;
      if (!v49)
      {
        v40 = v8;
        goto LABEL_55;
      }
    }
  }

  if (!v37)
  {
    do
    {
      v63 = v8;
      v8 = v35;
      v64 = *(v63 + 16);
      v65 = HIDWORD(*v63);
      v32 = v64 == v65;
      v66 = v64 < v65;
      if (v32)
      {
        v67 = *(v63 + 12) < *v63;
      }

      else
      {
        v67 = v66;
      }

      v68 = *(v63 + 12);
      v69 = HIDWORD(v68);
      if (v67)
      {
        v70 = *(v63 + 20);
      }

      else
      {
        v78 = *v63 < v68;
        v32 = v65 == v69;
        v79 = v65 < v69;
        if (!v32)
        {
          v78 = v79;
        }

        if (v78)
        {
          goto LABEL_93;
        }

        v70 = *(v63 + 20);
        if (v70 >= *(v63 + 8))
        {
          goto LABEL_93;
        }
      }

      while (1)
      {
        v71 = v63;
        *(v63 + 12) = *v63;
        *(v63 + 20) = *(v63 + 8);
        v73 = *(v63 - 12);
        v63 -= 12;
        v72 = v73;
        v74 = HIDWORD(v73);
        v75 = v68 < v73;
        v76 = v69 < HIDWORD(v73);
        if (v69 != HIDWORD(v73))
        {
          v75 = v76;
        }

        if (!v75)
        {
          v77 = v68 > v72;
          if (v69 != v74)
          {
            v77 = v74 < v69;
          }

          if (v77 || v70 >= *(v71 - 4))
          {
            break;
          }
        }
      }

      *v71 = v68;
      *(v71 + 8) = v70;
LABEL_93:
      v35 = (v8 + 12);
    }

    while ((v8 + 12) != a2);
  }

  return result;
}

uint64_t sub_C23118(uint64_t *a1, _DWORD *a2, unsigned int *a3)
{
  v3 = a2[1];
  v4 = HIDWORD(*a1);
  v5 = v3 == v4;
  v6 = v3 < v4;
  if (v5)
  {
    v7 = *a2 < *a1;
  }

  else
  {
    v7 = v6;
  }

  v8 = *a2;
  v9 = HIDWORD(*a2);
  if (v7)
  {
    goto LABEL_5;
  }

  v16 = *a1 < v8;
  v5 = v4 == v9;
  v17 = v4 < v9;
  if (!v5)
  {
    v16 = v17;
  }

  if (!v16 && a2[2] < *(a1 + 2))
  {
LABEL_5:
    v10 = a3[1];
    v5 = v10 == v9;
    v11 = v10 < v9;
    if (v5)
    {
      v11 = *a3 < v8;
    }

    if (v11)
    {
      goto LABEL_8;
    }

    v29 = v8 < *a3;
    v5 = v9 == HIDWORD(*a3);
    v30 = v9 < HIDWORD(*a3);
    if (v5)
    {
      v30 = v29;
    }

    if (!v30 && a3[2] < a2[2])
    {
LABEL_8:
      v12 = *(a1 + 2);
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      *(a1 + 2) = v14;
      *a3 = v13;
      a3[2] = v12;
      return 1;
    }

    v31 = *(a1 + 2);
    v32 = *a1;
    v33 = a2[2];
    *a1 = *a2;
    *(a1 + 2) = v33;
    *a2 = v32;
    a2[2] = v31;
    v34 = v32;
    v35 = a3[1];
    v36 = HIDWORD(v32);
    v5 = v35 == v36;
    v37 = v35 < v36;
    if (v5)
    {
      v37 = *a3 < v34;
    }

    if (!v37)
    {
      v45 = v34 < *a3;
      v5 = v36 == HIDWORD(*a3);
      v46 = v36 < HIDWORD(*a3);
      if (!v5)
      {
        v45 = v46;
      }

      if (v45 || a3[2] >= a2[2])
      {
        return 1;
      }
    }

    v38 = a2[2];
    v39 = *a2;
    v40 = a3[2];
    *a2 = *a3;
    a2[2] = v40;
    *a3 = v39;
    a3[2] = v38;
    return 1;
  }

  else
  {
    v18 = a3[1];
    v5 = v18 == v9;
    v19 = v18 < v9;
    if (v5)
    {
      v19 = *a3 < v8;
    }

    if (v19)
    {
      goto LABEL_16;
    }

    v41 = v8 < *a3;
    v5 = v9 == HIDWORD(*a3);
    v42 = v9 < HIDWORD(*a3);
    if (v5)
    {
      v42 = v41;
    }

    if (v42)
    {
      return 0;
    }

    else
    {
      if (a3[2] < a2[2])
      {
LABEL_16:
        v20 = a2[2];
        v21 = *a2;
        v22 = a3[2];
        *a2 = *a3;
        a2[2] = v22;
        *a3 = v21;
        a3[2] = v20;
        v23 = a2[1];
        v24 = HIDWORD(*a1);
        v5 = v23 == v24;
        v25 = v23 < v24;
        if (v5)
        {
          v25 = *a2 < *a1;
        }

        if (v25)
        {
          goto LABEL_19;
        }

        v43 = *a1 < *a2;
        v5 = v24 == HIDWORD(*a2);
        v44 = v24 < HIDWORD(*a2);
        if (!v5)
        {
          v43 = v44;
        }

        if (!v43 && a2[2] < *(a1 + 2))
        {
LABEL_19:
          v26 = *(a1 + 2);
          v27 = *a1;
          v28 = a2[2];
          *a1 = *a2;
          *(a1 + 2) = v28;
          *a2 = v27;
          a2[2] = v26;
        }

        return 1;
      }

      return 0;
    }
  }
}

uint64_t sub_C23384(uint64_t a1, _DWORD *a2, unsigned int *a3, _DWORD *a4)
{
  result = sub_C23118(a1, a2, a3);
  v9 = a4[1];
  v10 = HIDWORD(*a3);
  v11 = v9 == v10;
  v12 = v9 < v10;
  if (v11)
  {
    v12 = *a4 < *a3;
  }

  if (v12)
  {
    goto LABEL_4;
  }

  v28 = *a3 < *a4;
  v11 = v10 == HIDWORD(*a4);
  v29 = v10 < HIDWORD(*a4);
  if (!v11)
  {
    v28 = v29;
  }

  if (!v28 && a4[2] < a3[2])
  {
LABEL_4:
    v13 = a3[2];
    v14 = *a3;
    v15 = a4[2];
    *a3 = *a4;
    a3[2] = v15;
    *a4 = v14;
    a4[2] = v13;
    v16 = a3[1];
    v17 = HIDWORD(*a2);
    v11 = v16 == v17;
    v18 = v16 < v17;
    if (v11)
    {
      v18 = *a3 < *a2;
    }

    if (v18)
    {
      goto LABEL_7;
    }

    v30 = *a2 < *a3;
    v11 = v17 == HIDWORD(*a3);
    v31 = v17 < HIDWORD(*a3);
    if (!v11)
    {
      v30 = v31;
    }

    if (!v30 && a3[2] < a2[2])
    {
LABEL_7:
      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
      *a3 = v20;
      a3[2] = v19;
      v22 = a2[1];
      v23 = HIDWORD(*a1);
      v11 = v22 == v23;
      v24 = v22 < v23;
      if (v11)
      {
        v24 = *a2 < *a1;
      }

      if (v24)
      {
        goto LABEL_10;
      }

      v32 = *a1 < *a2;
      v11 = v23 == HIDWORD(*a2);
      v33 = v23 < HIDWORD(*a2);
      if (!v11)
      {
        v32 = v33;
      }

      if (!v32 && a2[2] < *(a1 + 8))
      {
LABEL_10:
        v25 = *(a1 + 8);
        v26 = *a1;
        v27 = a2[2];
        *a1 = *a2;
        *(a1 + 8) = v27;
        *a2 = v26;
        a2[2] = v25;
      }
    }
  }

  return result;
}

uint64_t sub_C23534(uint64_t a1, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  result = sub_C23384(a1, a2, a3, a4);
  v11 = a5[1];
  v12 = HIDWORD(*a4);
  v13 = v11 == v12;
  v14 = v11 < v12;
  if (v13)
  {
    v14 = *a5 < *a4;
  }

  if (v14)
  {
    goto LABEL_4;
  }

  v36 = *a4 < *a5;
  v13 = v12 == HIDWORD(*a5);
  v37 = v12 < HIDWORD(*a5);
  if (!v13)
  {
    v36 = v37;
  }

  if (!v36 && a5[2] < a4[2])
  {
LABEL_4:
    v15 = a4[2];
    v16 = *a4;
    v17 = a5[2];
    *a4 = *a5;
    a4[2] = v17;
    *a5 = v16;
    a5[2] = v15;
    v18 = a4[1];
    v19 = HIDWORD(*a3);
    v13 = v18 == v19;
    v20 = v18 < v19;
    if (v13)
    {
      v20 = *a4 < *a3;
    }

    if (v20)
    {
      goto LABEL_7;
    }

    v38 = *a3 < *a4;
    v13 = v19 == HIDWORD(*a4);
    v39 = v19 < HIDWORD(*a4);
    if (!v13)
    {
      v38 = v39;
    }

    if (!v38 && a4[2] < a3[2])
    {
LABEL_7:
      v21 = a3[2];
      v22 = *a3;
      v23 = a4[2];
      *a3 = *a4;
      a3[2] = v23;
      *a4 = v22;
      a4[2] = v21;
      v24 = a3[1];
      v25 = HIDWORD(*a2);
      v13 = v24 == v25;
      v26 = v24 < v25;
      if (v13)
      {
        v26 = *a3 < *a2;
      }

      if (v26)
      {
        goto LABEL_10;
      }

      v40 = *a2 < *a3;
      v13 = v25 == HIDWORD(*a3);
      v41 = v25 < HIDWORD(*a3);
      if (!v13)
      {
        v40 = v41;
      }

      if (!v40 && a3[2] < a2[2])
      {
LABEL_10:
        v27 = a2[2];
        v28 = *a2;
        v29 = a3[2];
        *a2 = *a3;
        a2[2] = v29;
        *a3 = v28;
        a3[2] = v27;
        v30 = a2[1];
        v31 = HIDWORD(*a1);
        v13 = v30 == v31;
        v32 = v30 < v31;
        if (v13)
        {
          v32 = *a2 < *a1;
        }

        if (v32)
        {
          goto LABEL_13;
        }

        v42 = *a1 < *a2;
        v13 = v31 == HIDWORD(*a2);
        v43 = v31 < HIDWORD(*a2);
        if (!v13)
        {
          v42 = v43;
        }

        if (!v42 && a2[2] < *(a1 + 8))
        {
LABEL_13:
          v33 = *(a1 + 8);
          v34 = *a1;
          v35 = a2[2];
          *a1 = *a2;
          *(a1 + 8) = v35;
          *a2 = v34;
          a2[2] = v33;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_C23768(uint64_t *a1, uint64_t *k)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  v4 = *(a1 + 2);
  v5 = *(k - 12);
  v6 = HIDWORD(v5);
  v7 = *a1 < v5;
  if (v3 != HIDWORD(v5))
  {
    v7 = v3 < HIDWORD(v5);
  }

  if (v7 || (v3 != v6 ? (v16 = v6 < v3) : (v16 = v5 < v2), !v16 && v4 < *(k - 1)))
  {
    j = (a1 + 12);
    v9 = *(a1 + 12);
    for (i = HIDWORD(v9); ; i = HIDWORD(v11))
    {
      v12 = v2 < v9;
      if (v3 != i)
      {
        v12 = v3 < i;
      }

      if (v12)
      {
        break;
      }

      v13 = v9 < v2;
      v14 = i == v3;
      v15 = i < v3;
      if (!v14)
      {
        v13 = v15;
      }

      if (!v13 && v4 < *(j + 2))
      {
        break;
      }

      v11 = *(j + 12);
      j = (j + 12);
      LODWORD(v9) = v11;
    }
  }

  else
  {
    for (j = (a1 + 12); j < k; j = (j + 12))
    {
      v17 = HIDWORD(*j);
      v18 = v2 < *j;
      if (v3 != v17)
      {
        v18 = v3 < v17;
      }

      if (v18)
      {
        break;
      }

      v19 = *j < v2;
      if (v3 != v17)
      {
        v19 = v17 < v3;
      }

      if (!v19 && v4 < *(j + 2))
      {
        break;
      }
    }
  }

  if (j < k)
  {
    for (k = (k - 12); ; k = (k - 12))
    {
      v21 = HIDWORD(v5);
      v22 = v2 < v5;
      if (v3 != HIDWORD(v5))
      {
        v22 = v3 < HIDWORD(v5);
      }

      if (!v22)
      {
        v23 = v5 < v2;
        if (v3 != v21)
        {
          v23 = v21 < v3;
        }

        if (v23 || v4 >= *(k + 2))
        {
          break;
        }
      }

      v20 = *(k - 12);
      v5 = v20;
    }
  }

  while (j < k)
  {
    v44 = *(j + 2);
    v43 = *j;
    v24 = *k;
    *(j + 2) = *(k + 2);
    *j = v24;
    *(k + 2) = v44;
    *k = v43;
    v26 = *(j + 12);
    j = (j + 12);
    v25 = v26;
    v27 = HIDWORD(v26);
    v28 = v2 < v26;
    v29 = v3 < HIDWORD(v26);
    if (v3 != HIDWORD(v26))
    {
      v28 = v29;
    }

    if (!v28)
    {
      do
      {
        v33 = v25 < v2;
        v14 = v27 == v3;
        v34 = v27 < v3;
        if (!v14)
        {
          v33 = v34;
        }

        if (!v33 && v4 < *(j + 2))
        {
          break;
        }

        v30 = *(j + 12);
        j = (j + 12);
        v25 = v30;
        v27 = HIDWORD(v30);
        v31 = v2 < v30;
        v32 = v3 < HIDWORD(v30);
        if (v3 != HIDWORD(v30))
        {
          v31 = v32;
        }
      }

      while (!v31);
    }

    while (1)
    {
      v36 = *(k - 12);
      k = (k - 12);
      v35 = v36;
      v37 = HIDWORD(v36);
      v38 = v2 < v36;
      v39 = v3 < HIDWORD(v36);
      if (v3 != HIDWORD(v36))
      {
        v38 = v39;
      }

      if (!v38)
      {
        v40 = v35 < v2;
        if (v3 != v37)
        {
          v40 = v37 < v3;
        }

        if (v40 || v4 >= *(k + 2))
        {
          break;
        }
      }
    }
  }

  if ((j - 12) != a1)
  {
    v41 = *(j - 12);
    *(a1 + 2) = *(j - 1);
    *a1 = v41;
  }

  *(j - 12) = v2;
  *(j - 1) = v4;
  return j;
}

unint64_t sub_C239F0(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = HIDWORD(*a1);
  while (1)
  {
    v6 = a1 + v2;
    v7 = *(a1 + v2 + 16);
    v8 = v7 == v5;
    v9 = v7 < v5;
    if (v8)
    {
      v9 = *(a1 + v2 + 12) < v3;
    }

    if (!v9)
    {
      v10 = *(v6 + 12);
      v11 = v3 < v10;
      v8 = v5 == HIDWORD(v10);
      v12 = v5 < HIDWORD(v10);
      if (v8)
      {
        v12 = v11;
      }

      if (v12 || *(v6 + 20) >= v4)
      {
        break;
      }
    }

    v2 += 12;
  }

  v13 = a1 + v2 + 12;
  if (v2)
  {
    v14 = *(a2 - 12);
    v15 = *(a2 - 8);
    a2 -= 12;
    v16 = v14 < v3;
    v8 = v15 == v5;
    v17 = v15 < v5;
    if (!v8)
    {
      v16 = v17;
    }

    if (!v16)
    {
      do
      {
        v22 = v5 < HIDWORD(*a2);
        if (v5 == HIDWORD(*a2))
        {
          v22 = v3 < *a2;
        }

        if (!v22 && *(a2 + 8) < v4)
        {
          break;
        }

        v18 = *(a2 - 12);
        v19 = *(a2 - 8);
        a2 -= 12;
        v20 = v18 < v3;
        v8 = v19 == v5;
        v21 = v19 < v5;
        if (!v8)
        {
          v20 = v21;
        }
      }

      while (!v20);
    }
  }

  else
  {
LABEL_35:
    if (v13 < a2)
    {
      do
      {
        v23 = *(a2 - 12);
        v24 = *(a2 - 8);
        a2 -= 12;
        v25 = v23 < v3;
        v8 = v24 == v5;
        v26 = v24 < v5;
        if (!v8)
        {
          v25 = v26;
        }

        if (v25)
        {
          break;
        }

        v27 = v5 < HIDWORD(*a2);
        if (v5 == HIDWORD(*a2))
        {
          v27 = v3 < *a2;
        }

        if (v27)
        {
          goto LABEL_35;
        }
      }

      while (*(a2 + 8) >= v4 && v13 < a2);
    }
  }

  v29 = v13;
  if (v13 < a2)
  {
    v30 = a2;
    do
    {
      v49 = *(v29 + 8);
      v48 = *v29;
      v31 = *v30;
      *(v29 + 8) = *(v30 + 8);
      *v29 = v31;
      *(v30 + 8) = v49;
      *v30 = v48;
      v32 = v29 + 12;
      while (1)
      {
        v29 = v32;
        v33 = *(v32 + 4);
        v34 = *v29 < v3;
        v8 = v33 == v5;
        v35 = v33 < v5;
        if (!v8)
        {
          v34 = v35;
        }

        v32 = v29 + 12;
        if (!v34)
        {
          v36 = v5 < HIDWORD(*v29);
          if (v5 == HIDWORD(*v29))
          {
            v36 = v3 < *v29;
          }

          if (v36 || *(v29 + 8) >= v4)
          {
            break;
          }
        }
      }

      v37 = *(v30 - 12);
      v38 = *(v30 - 8);
      v30 -= 12;
      v39 = v37 < v3;
      v8 = v38 == v5;
      v40 = v38 < v5;
      if (!v8)
      {
        v39 = v40;
      }

      if (!v39)
      {
        do
        {
          v45 = v5 < HIDWORD(*v30);
          if (v5 == HIDWORD(*v30))
          {
            v45 = v3 < *v30;
          }

          if (!v45 && *(v30 + 8) < v4)
          {
            break;
          }

          v41 = *(v30 - 12);
          v42 = *(v30 - 8);
          v30 -= 12;
          v43 = v41 < v3;
          v8 = v42 == v5;
          v44 = v42 < v5;
          if (!v8)
          {
            v43 = v44;
          }
        }

        while (!v43);
      }
    }

    while (v29 < v30);
  }

  if ((v29 - 12) != a1)
  {
    v46 = *(v29 - 12);
    *(a1 + 2) = *(v29 - 4);
    *a1 = v46;
  }

  *(v29 - 12) = v3;
  *(v29 - 4) = v4;
  return v29 - 12;
}

BOOL sub_C23C64(uint64_t a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_C23118(a1, (a1 + 12), a2 - 3);
        return 1;
      case 4:
        sub_C23384(a1, (a1 + 12), (a1 + 24), a2 - 3);
        return 1;
      case 5:
        sub_C23534(a1, (a1 + 12), (a1 + 24), (a1 + 36), a2 - 3);
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
      v4 = *(a2 - 2);
      v3 = (a2 - 3);
      v5 = HIDWORD(*a1);
      v6 = *(a2 - 3) < *a1;
      v7 = v4 == v5;
      v8 = v4 < v5;
      if (!v7)
      {
        v6 = v8;
      }

      if (v6)
      {
        goto LABEL_7;
      }

      v34 = *a1 < *v3;
      v7 = v5 == HIDWORD(*v3);
      v35 = v5 < HIDWORD(*v3);
      if (!v7)
      {
        v34 = v35;
      }

      if (!v34 && *(a2 - 1) < *(a1 + 8))
      {
LABEL_7:
        v9 = *(a1 + 8);
        v10 = *a1;
        v11 = *(a2 - 1);
        *a1 = *v3;
        *(a1 + 8) = v11;
        *v3 = v10;
        *(a2 - 1) = v9;
        return 1;
      }

      return 1;
    }
  }

  v13 = a1 + 24;
  sub_C23118(a1, (a1 + 12), (a1 + 24));
  v16 = (a1 + 36);
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (2)
  {
    v19 = v16[1];
    v20 = HIDWORD(*v13);
    v7 = v19 == v20;
    v21 = v19 < v20;
    if (v7)
    {
      v22 = *v16 < *v13;
    }

    else
    {
      v22 = v21;
    }

    v23 = *v16;
    v24 = HIDWORD(*v16);
    if (v22)
    {
      v25 = v16[2];
    }

    else
    {
      v32 = *v13 < v23;
      v7 = v20 == v24;
      v33 = v20 < v24;
      if (!v7)
      {
        v32 = v33;
      }

      if (v32)
      {
        goto LABEL_17;
      }

      v25 = v16[2];
      if (v25 >= *(v13 + 8))
      {
        goto LABEL_17;
      }
    }

    *v16 = *v13;
    v16[2] = *(v13 + 8);
    v26 = v17;
    while (1)
    {
      v27 = a1 + v26;
      v28 = *(a1 + v26 + 12);
      v29 = HIDWORD(v28);
      v30 = v23 < v28;
      if (v24 != HIDWORD(v28))
      {
        v30 = v24 < HIDWORD(v28);
      }

      if (!v30)
      {
        break;
      }

LABEL_24:
      v13 -= 12;
      *(v27 + 24) = *(a1 + v26 + 12);
      *(v27 + 32) = *(a1 + v26 + 20);
      v26 -= 12;
      if (v26 == -24)
      {
        v13 = a1;
        goto LABEL_16;
      }
    }

    v31 = v23 > v28;
    if (v24 != v29)
    {
      v31 = v29 < v24;
    }

    if (!v31)
    {
      if (v25 >= *(v27 + 20))
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    v13 = a1 + v26 + 24;
LABEL_16:
    *v13 = v23;
    *(v13 + 8) = v25;
    if (++v18 != 8)
    {
LABEL_17:
      v13 = v16;
      v17 += 12;
      v16 += 3;
      if (v16 == a2)
      {
        return 1;
      }

      continue;
    }

    return v16 + 3 == a2;
  }
}

uint64_t sub_C23F50(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 2)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 2)) | 1;
      v6 = (result + 12 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 2) + 2 < a3)
      {
        v7 = *(v6 + 12);
        v8 = *(v6 + 1);
        v9 = HIDWORD(v7);
        v10 = v8 == HIDWORD(v7);
        v11 = v8 < HIDWORD(v7);
        if (v10)
        {
          v11 = *v6 < v7;
        }

        if (v11)
        {
          goto LABEL_7;
        }

        v12 = v7 < *v6;
        v10 = v9 == HIDWORD(*v6);
        v13 = v9 < HIDWORD(*v6);
        if (!v10)
        {
          v12 = v13;
        }

        if (!v12 && *(v6 + 2) < *(v6 + 5))
        {
LABEL_7:
          v6 = (v6 + 12);
          v5 = 0x5555555555555556 * ((a4 - result) >> 2) + 2;
        }
      }

      v14 = *a4;
      v15 = *(v6 + 1);
      v16 = HIDWORD(*a4);
      v10 = v15 == v16;
      v17 = v15 < v16;
      if (v10)
      {
        v17 = *v6 < *a4;
      }

      if (!v17)
      {
        v18 = v14 < *v6;
        if (v16 != HIDWORD(*v6))
        {
          v18 = v16 < HIDWORD(*v6);
        }

        v19 = *(a4 + 2);
        if (v18 || *(v6 + 2) >= v19)
        {
          v20 = *v6;
          *(a4 + 2) = *(v6 + 2);
          *a4 = v20;
          if (v4 >= v5)
          {
            while (1)
            {
              v23 = 2 * v5;
              v5 = (2 * v5) | 1;
              v21 = (result + 12 * v5);
              v24 = v23 + 2;
              if (v24 < a3)
              {
                v25 = *(v21 + 12);
                v26 = *(v21 + 1);
                v27 = HIDWORD(v25);
                v10 = v26 == HIDWORD(v25);
                v28 = v26 < HIDWORD(v25);
                if (v10)
                {
                  v28 = *v21 < v25;
                }

                if (v28)
                {
                  goto LABEL_29;
                }

                v29 = v25 < *v21;
                v10 = v27 == HIDWORD(*v21);
                v30 = v27 < HIDWORD(*v21);
                if (!v10)
                {
                  v29 = v30;
                }

                if (!v29 && *(v21 + 2) < *(v21 + 5))
                {
LABEL_29:
                  v21 = (v21 + 12);
                  v5 = v24;
                }
              }

              v31 = *(v21 + 1);
              v10 = v31 == v16;
              v32 = v31 < v16;
              if (v10)
              {
                v32 = *v21 < v14;
              }

              if (v32)
              {
                break;
              }

              v33 = v16 < HIDWORD(*v21);
              if (v16 == HIDWORD(*v21))
              {
                v33 = v14 < *v21;
              }

              if (!v33 && *(v21 + 2) < v19)
              {
                break;
              }

              v22 = *v21;
              *(v6 + 2) = *(v21 + 2);
              *v6 = v22;
              v6 = v21;
              if (v4 < v5)
              {
                goto LABEL_21;
              }
            }
          }

          v21 = v6;
LABEL_21:
          *v21 = v14;
          *(v21 + 2) = v19;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_C2415C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v4 = 0;
  v37 = *result;
  v38 = *(result + 2);
  v5 = result;
  do
  {
    v7 = v5;
    v8 = v5 + 12 * v4;
    v5 = (v8 + 12);
    v9 = 2 * v4;
    v4 = (2 * v4) | 1;
    v10 = v9 + 2;
    if (v10 < a4)
    {
      v11 = *(v8 + 24);
      v12 = *(v8 + 16);
      v13 = HIDWORD(v11);
      v14 = v12 == HIDWORD(v11);
      v15 = v12 < HIDWORD(v11);
      if (v14)
      {
        v15 = *(v8 + 12) < v11;
      }

      if (v15)
      {
        goto LABEL_3;
      }

      v16 = v11 < *v5;
      v14 = v13 == HIDWORD(*v5);
      v17 = v13 < HIDWORD(*v5);
      if (!v14)
      {
        v16 = v17;
      }

      if (!v16 && *(v8 + 20) < *(v8 + 32))
      {
LABEL_3:
        v5 = (v8 + 24);
        v4 = v10;
      }
    }

    v6 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v6;
  }

  while (v4 <= ((a4 - 2) >> 1));
  v18 = (a2 - 12);
  if (v5 == (a2 - 12))
  {
    *(v5 + 2) = v38;
    *v5 = v37;
    return result;
  }

  v19 = *v18;
  *(v5 + 2) = *(a2 - 4);
  *v5 = v19;
  *v18 = v37;
  *(a2 - 4) = v38;
  v20 = v5 - result + 12;
  if (v20 < 13)
  {
    return result;
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 2) - 2;
  v22 = v21 >> 1;
  v23 = result + 3 * (v21 >> 1);
  v24 = *v5;
  v25 = v23[1];
  v26 = HIDWORD(*v5);
  v14 = v25 == v26;
  v27 = v25 < v26;
  if (v14)
  {
    v27 = *v23 < *v5;
  }

  if (v27)
  {
    v28 = *(v5 + 2);
  }

  else
  {
    v31 = v26 < HIDWORD(*v23);
    if (v26 == HIDWORD(*v23))
    {
      v31 = v24 < *v23;
    }

    if (v31)
    {
      return result;
    }

    v28 = *(v5 + 2);
    if (v23[2] >= v28)
    {
      return result;
    }
  }

  v29 = *v23;
  *(v5 + 2) = v23[2];
  *v5 = v29;
  if (v21 >= 2)
  {
    while (1)
    {
      v33 = v22 - 1;
      v22 = (v22 - 1) >> 1;
      v30 = result + 3 * v22;
      v34 = v30[1];
      v14 = v34 == v26;
      v35 = v34 < v26;
      if (v14)
      {
        v35 = *v30 < v24;
      }

      if (!v35)
      {
        v36 = v26 < HIDWORD(*v30);
        if (v26 == HIDWORD(*v30))
        {
          v36 = v24 < *v30;
        }

        if (v36 || v30[2] >= v28)
        {
          break;
        }
      }

      v32 = *v30;
      v23[2] = v30[2];
      *v23 = v32;
      v23 = result + 3 * v22;
      if (v33 <= 1)
      {
        goto LABEL_22;
      }
    }
  }

  v30 = v23;
LABEL_22:
  *v30 = v24;
  v30[2] = v28;
  return result;
}

__n128 sub_C24398(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
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
      result.n128_u64[0] = *(a2 - 8);
      if (result.n128_f64[0] > *(v12 + 16))
      {
        v191 = *(v12 + 16);
        v161 = *v12;
        v86 = *(a2 - 24);
        *(v12 + 16) = *(a2 - 8);
        *v12 = v86;
        result = v161;
        *(a2 - 8) = v191;
        *(a2 - 24) = v161;
      }

      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v93 = (v12 + 24);
      v95 = v12 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v12;
          do
          {
            result.n128_u64[0] = *(v97 + 5);
            v99 = *(v97 + 2);
            v97 = v93;
            if (result.n128_f64[0] > v99)
            {
              v164 = *v93;
              v100 = v96;
              do
              {
                v101 = v12 + v100;
                *(v101 + 24) = *(v12 + v100);
                *(v101 + 40) = *(v12 + v100 + 16);
                if (!v100)
                {
                  v98 = v12;
                  goto LABEL_124;
                }

                v100 -= 24;
              }

              while (result.n128_f64[0] > *(v101 - 8));
              v98 = v12 + v100 + 24;
LABEL_124:
              *v98 = v164;
              *(v98 + 16) = result.n128_u64[0];
            }

            v93 = (v97 + 24);
            v96 += 24;
          }

          while ((v97 + 24) != a2);
        }
      }

      else if (!v95)
      {
        do
        {
          result.n128_u64[0] = *(a1 + 40);
          v132 = *(a1 + 16);
          a1 = v93;
          if (result.n128_f64[0] > v132)
          {
            v168 = *v93;
            v133 = v93;
            do
            {
              *v133 = *(v133 - 24);
              *(v133 + 2) = *(v133 - 1);
              v134 = *(v133 - 4);
              v133 = (v133 - 24);
            }

            while (result.n128_f64[0] > v134);
            *v133 = v168;
            *(v133 + 2) = result.n128_u64[0];
          }

          v93 = (v93 + 24);
        }

        while (a1 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v102 = (v14 - 2) >> 1;
        v103 = v102;
        do
        {
          if (v102 >= v103)
          {
            v105 = (2 * (v103 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v106 = v12 + 24 * v105;
            if (2 * v103 + 2 < v14 && *(v106 + 16) > *(v106 + 40))
            {
              v106 += 24;
              v105 = 2 * v103 + 2;
            }

            v107 = v12 + 24 * v103;
            v108 = *(v107 + 16);
            if (*(v106 + 16) <= v108)
            {
              v165 = *v107;
              do
              {
                v109 = v107;
                v107 = v106;
                v110 = *v106;
                *(v109 + 16) = *(v106 + 16);
                *v109 = v110;
                if (v102 < v105)
                {
                  break;
                }

                v111 = 2 * v105;
                v105 = (2 * v105) | 1;
                v106 = v12 + 24 * v105;
                v112 = v111 + 2;
                if (v112 < v14 && *(v106 + 16) > *(v106 + 40))
                {
                  v106 += 24;
                  v105 = v112;
                }
              }

              while (*(v106 + 16) <= v108);
              *v107 = v165;
              *(v107 + 16) = v108;
            }
          }

          v104 = v103-- <= 0;
        }

        while (!v104);
        v113 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v114 = 0;
          v194 = *(v12 + 16);
          v166 = *v12;
          v115 = v12;
          do
          {
            v121 = v115 + 24 * v114;
            v119 = (v121 + 24);
            v122 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 < v113)
            {
              v116 = *(v121 + 40);
              v117 = *(v121 + 64);
              v118 = (v121 + 48);
              if (v116 <= v117)
              {
                v114 = v122;
              }

              else
              {
                v119 = v118;
              }
            }

            else
            {
              v114 = v122;
            }

            v120 = *v119;
            *(v115 + 16) = v119[1].n128_u64[0];
            *v115 = v120;
            v115 = v119;
          }

          while (v114 <= ((v113 - 2) >> 1));
          a2 -= 24;
          if (v119 == a2)
          {
            result = v166;
            v119[1].n128_u64[0] = v194;
            *v119 = v166;
          }

          else
          {
            v123 = *a2;
            v119[1].n128_u64[0] = *(a2 + 16);
            *v119 = v123;
            result = v166;
            *(a2 + 16) = v194;
            *a2 = v166;
            v124 = &v119[1].n128_i64[1] - v12;
            if (v124 >= 25)
            {
              v125 = (-2 - 0x5555555555555555 * (v124 >> 3)) >> 1;
              v126 = v12 + 24 * v125;
              result.n128_u64[0] = v119[1].n128_u64[0];
              if (*(v126 + 16) > result.n128_f64[0])
              {
                v141 = *v119;
                do
                {
                  v127 = v119;
                  v119 = v126;
                  v128 = *v126;
                  v127[1].n128_u64[0] = *(v126 + 16);
                  *v127 = v128;
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = v12 + 24 * v125;
                }

                while (*(v126 + 16) > result.n128_f64[0]);
                *v119 = v141;
                v119[1].n128_u64[0] = result.n128_u64[0];
              }
            }
          }

          v104 = v113-- <= 2;
        }

        while (!v104);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *(a2 - 8);
    if (v13 < 0xC01)
    {
      v20 = *(v12 + 16);
      if (v20 > v16[1].n128_f64[0])
      {
        if (v17 > v20)
        {
          v173 = v16[1].n128_u64[0];
          v143 = *v16;
          v21 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v21;
          goto LABEL_36;
        }

        v180 = v16[1].n128_u64[0];
        v150 = *v16;
        result = *v12;
        v16[1].n128_u64[0] = *(v12 + 16);
        *v16 = result;
        result.n128_u64[1] = v150.n128_u64[1];
        *(v12 + 16) = v180;
        *v12 = v150;
        if (*(a2 - 8) > *(v12 + 16))
        {
          v173 = *(v12 + 16);
          v143 = *v12;
          v37 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v37;
LABEL_36:
          result.n128_u64[1] = v143.n128_u64[1];
          *(a2 - 8) = v173;
          *v9 = v143;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v17 <= v20)
      {
        goto LABEL_37;
      }

      v176 = *(v12 + 16);
      v146 = *v12;
      result = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = result;
      result.n128_u64[1] = v146.n128_u64[1];
      *(a2 - 8) = v176;
      *v9 = v146;
      if (*(v12 + 16) <= v16[1].n128_f64[0])
      {
        goto LABEL_37;
      }

      v177 = v16[1].n128_u64[0];
      v147 = *v16;
      result = *v12;
      v16[1].n128_u64[0] = *(v12 + 16);
      *v16 = result;
      result.n128_u64[1] = v147.n128_u64[1];
      *(v12 + 16) = v177;
      *v12 = v147;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      result.n128_u64[0] = *(v12 + 16);
      if (*(v12 - 8) > result.n128_f64[0])
      {
        goto LABEL_62;
      }

      result = *v12;
      v140 = *v12;
      result.n128_u64[0] = *(v12 + 16);
      if (result.n128_f64[0] <= *(a2 - 8))
      {
        v76 = v12 + 24;
        do
        {
          v12 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v77 = *(v76 + 16);
          v76 += 24;
        }

        while (result.n128_f64[0] <= v77);
      }

      else
      {
        v74 = v12;
        do
        {
          v12 = v74 + 24;
          v75 = *(v74 + 40);
          v74 += 24;
        }

        while (result.n128_f64[0] <= v75);
      }

      v78 = a2;
      if (v12 < a2)
      {
        v79 = a2;
        do
        {
          v78 = v79 - 24;
          v80 = *(v79 - 8);
          v79 -= 24;
        }

        while (result.n128_f64[0] > v80);
      }

      while (v12 < v78)
      {
        v190 = *(v12 + 16);
        v160 = *v12;
        v81 = *v78;
        *(v12 + 16) = *(v78 + 16);
        *v12 = v81;
        *(v78 + 16) = v190;
        *v78 = v160;
        do
        {
          v82 = *(v12 + 40);
          v12 += 24;
        }

        while (result.n128_f64[0] <= v82);
        do
        {
          v83 = *(v78 - 8);
          v78 -= 24;
        }

        while (result.n128_f64[0] > v83);
      }

      v84 = (v12 - 24);
      if (v12 - 24 != a1)
      {
        v85 = *v84;
        *(a1 + 16) = *(v12 - 8);
        *a1 = v85;
      }

      a4 = 0;
      *v84 = v140;
      *(v12 - 8) = result.n128_u64[0];
    }

    else
    {
      v18 = v16[1].n128_f64[0];
      if (v18 <= *(v12 + 16))
      {
        if (v17 > v18)
        {
          v174 = v16[1].n128_u64[0];
          v144 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v174;
          *v9 = v144;
          if (v16[1].n128_f64[0] > *(v12 + 16))
          {
            v175 = *(v12 + 16);
            v145 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v175;
            *v16 = v145;
          }
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v178 = *(v12 + 16);
          v148 = *v12;
          v24 = *v16;
          *(v12 + 16) = v16[1].n128_u64[0];
          *v12 = v24;
          v16[1].n128_u64[0] = v178;
          *v16 = v148;
          if (*(a2 - 8) <= v16[1].n128_f64[0])
          {
            goto LABEL_28;
          }

          v172 = v16[1].n128_u64[0];
          v142 = *v16;
          v25 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v25;
        }

        else
        {
          v172 = *(v12 + 16);
          v142 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
        }

        *(a2 - 8) = v172;
        *v9 = v142;
      }

LABEL_28:
      v26 = v12 + 24 * v15;
      v27 = (v26 - 24);
      v28 = *(v26 - 8);
      v29 = *(a2 - 32);
      if (v28 <= *(v12 + 40))
      {
        if (v29 > v28)
        {
          v179 = *(v26 - 8);
          v149 = *v27;
          v33 = *v10;
          *(v26 - 8) = *(a2 - 32);
          *v27 = v33;
          *(a2 - 32) = v179;
          *v10 = v149;
          if (*(v26 - 8) > *(v12 + 40))
          {
            v34 = *(v12 + 24);
            v35 = *(v12 + 40);
            v36 = v27[1].n128_i64[0];
            *(v12 + 24) = *v27;
            *(v12 + 40) = v36;
            v27[1].n128_u64[0] = v35;
            *v27 = v34;
          }
        }
      }

      else
      {
        if (v29 <= v28)
        {
          v38 = *(v12 + 24);
          v39 = *(v12 + 40);
          v40 = v27[1].n128_i64[0];
          *(v12 + 24) = *v27;
          *(v12 + 40) = v40;
          v27[1].n128_u64[0] = v39;
          *v27 = v38;
          if (*(a2 - 32) <= v27[1].n128_f64[0])
          {
            goto LABEL_42;
          }

          v181 = v27[1].n128_i64[0];
          v151 = *v27;
          v41 = *v10;
          v27[1].n128_u64[0] = *(a2 - 32);
          *v27 = v41;
          v30 = v151;
          v31 = v181;
        }

        else
        {
          v30 = *(v12 + 24);
          v31 = *(v12 + 40);
          v32 = *(a2 - 32);
          *(v12 + 24) = *v10;
          *(v12 + 40) = v32;
        }

        *(a2 - 32) = v31;
        *v10 = v30;
      }

LABEL_42:
      v42 = v12 + 24 * v15;
      v43 = *(v42 + 40);
      v44 = *(a2 - 56);
      if (v43 <= *(v12 + 64))
      {
        if (v44 > v43)
        {
          v182 = *(v42 + 40);
          v152 = *(v42 + 24);
          v48 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 24) = v48;
          *(a2 - 56) = v182;
          *v11 = v152;
          if (*(v42 + 40) > *(v12 + 64))
          {
            v49 = *(v12 + 48);
            v50 = *(v12 + 64);
            v51 = *(v42 + 40);
            *(v12 + 48) = *(v42 + 24);
            *(v12 + 64) = v51;
            *(v42 + 40) = v50;
            *(v42 + 24) = v49;
          }
        }
      }

      else
      {
        if (v44 <= v43)
        {
          v52 = *(v12 + 48);
          v53 = *(v12 + 64);
          v54 = *(v42 + 40);
          *(v12 + 48) = *(v42 + 24);
          *(v12 + 64) = v54;
          *(v42 + 40) = v53;
          *(v42 + 24) = v52;
          if (*(a2 - 56) <= *(v42 + 40))
          {
            goto LABEL_51;
          }

          v183 = *(v42 + 40);
          v153 = *(v42 + 24);
          v55 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 24) = v55;
          v45 = v153;
          v46 = v183;
        }

        else
        {
          v45 = *(v12 + 48);
          v46 = *(v12 + 64);
          v47 = *(a2 - 56);
          *(v12 + 48) = *v11;
          *(v12 + 64) = v47;
        }

        *(a2 - 56) = v46;
        *v11 = v45;
      }

LABEL_51:
      v56 = v16[1].n128_f64[0];
      v57 = *(v42 + 40);
      if (v56 <= v27[1].n128_f64[0])
      {
        if (v57 > v56)
        {
          v185 = v16[1].n128_u64[0];
          v155 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u64[0] = *(v42 + 40);
          *(v42 + 40) = v185;
          *(v42 + 24) = v155;
          if (v16[1].n128_f64[0] > v27[1].n128_f64[0])
          {
            v186 = v27[1].n128_u64[0];
            v156 = *v27;
            *v27 = *v16;
            v27[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v186;
            *v16 = v156;
          }
        }
      }

      else
      {
        if (v57 <= v56)
        {
          v187 = v27[1].n128_u64[0];
          v157 = *v27;
          *v27 = *v16;
          v27[1].n128_u64[0] = v16[1].n128_u64[0];
          v16[1].n128_u64[0] = v187;
          *v16 = v157;
          if (*(v42 + 40) <= v16[1].n128_f64[0])
          {
            goto LABEL_60;
          }

          v184 = v16[1].n128_u64[0];
          v154 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u64[0] = *(v42 + 40);
        }

        else
        {
          v184 = v27[1].n128_u64[0];
          v154 = *v27;
          *v27 = *(v42 + 24);
          v27[1].n128_u64[0] = *(v42 + 40);
        }

        *(v42 + 40) = v184;
        *(v42 + 24) = v154;
      }

LABEL_60:
      v188 = *(v12 + 16);
      v158 = *v12;
      result = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = result;
      result.n128_u64[1] = v158.n128_u64[1];
      v16[1].n128_u64[0] = v188;
      *v16 = v158;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      result.n128_u64[0] = *(v12 + 16);
LABEL_62:
      v58 = 0;
      v139 = *v12;
      do
      {
        v59 = *(v12 + v58 + 40);
        v58 += 24;
      }

      while (v59 > result.n128_f64[0]);
      v60 = v12 + v58;
      v61 = a2;
      if (v58 == 24)
      {
        v64 = a2;
        while (v60 < v64)
        {
          v62 = v64 - 24;
          v65 = *(v64 - 8);
          v64 -= 24;
          if (v65 > result.n128_f64[0])
          {
            goto LABEL_70;
          }
        }

        v62 = v64;
        v12 = v60;
      }

      else
      {
        do
        {
          v62 = v61 - 24;
          v63 = *(v61 - 8);
          v61 -= 24;
        }

        while (v63 <= result.n128_f64[0]);
LABEL_70:
        v12 = v60;
        if (v60 < v62)
        {
          v66 = v62;
          do
          {
            v189 = *(v12 + 16);
            v159 = *v12;
            v67 = *v66;
            *(v12 + 16) = *(v66 + 16);
            *v12 = v67;
            *(v66 + 16) = v189;
            *v66 = v159;
            do
            {
              v68 = *(v12 + 40);
              v12 += 24;
            }

            while (v68 > result.n128_f64[0]);
            do
            {
              v69 = *(v66 - 8);
              v66 -= 24;
            }

            while (v69 <= result.n128_f64[0]);
          }

          while (v12 < v66);
        }
      }

      v70 = (v12 - 24);
      if (v12 - 24 != a1)
      {
        v71 = *v70;
        *(a1 + 16) = *(v12 - 8);
        *a1 = v71;
      }

      *v70 = v139;
      *(v12 - 8) = result.n128_u64[0];
      if (v60 < v62)
      {
        goto LABEL_81;
      }

      v72 = sub_C255C8(a1, (v12 - 24), result);
      if (sub_C255C8(v12, a2, v73))
      {
        a2 = v12 - 24;
        if (!v72)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v72)
      {
LABEL_81:
        sub_C24398(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v90 = *(v12 + 40);
      v91 = *(v12 + 64);
      if (v90 <= *(v12 + 16))
      {
        if (v91 > v90)
        {
          v131 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
          *(v12 + 64) = v131;
          if (*(v12 + 40) > *(v12 + 16))
          {
            v195 = *(v12 + 16);
            v167 = *v12;
            *v12 = *(v12 + 24);
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v167.n128_u64[1];
            *(v12 + 24) = v167;
            *(v12 + 40) = v195;
          }
        }
      }

      else
      {
        if (v91 > v90)
        {
          v193 = *(v12 + 16);
          v163 = *v12;
          *v12 = *(v12 + 48);
          *(v12 + 16) = *(v12 + 64);
          result.n128_u64[1] = v163.n128_u64[1];
          *(v12 + 48) = v163;
          v92 = v193;
          goto LABEL_180;
        }

        v197 = *(v12 + 16);
        v170 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        result.n128_u64[1] = v170.n128_u64[1];
        *(v12 + 24) = v170;
        *(v12 + 40) = v197;
        if (*(v12 + 64) > *(v12 + 40))
        {
          v92 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
LABEL_180:
          *(v12 + 64) = v92;
        }
      }

      result.n128_u64[0] = *(a2 - 8);
      if (result.n128_f64[0] <= *(v12 + 64))
      {
        return result;
      }

      result = *(v12 + 48);
      v136 = *(v12 + 64);
      v137 = *(a2 - 8);
      *(v12 + 48) = *v9;
      *(v12 + 64) = v137;
      *(a2 - 8) = v136;
      *v9 = result;
      result.n128_u64[0] = *(v12 + 64);
      if (result.n128_f64[0] <= *(v12 + 40))
      {
        return result;
      }

      v138 = *(v12 + 40);
      result = *(v12 + 24);
      *(v12 + 24) = *(v12 + 48);
      *(v12 + 40) = *(v12 + 64);
      *(v12 + 48) = result;
      *(v12 + 64) = v138;
LABEL_184:
      result.n128_u64[0] = *(v12 + 40);
      if (result.n128_f64[0] > *(v12 + 16))
      {
        v198 = *(v12 + 16);
        v171 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        result = v171;
        *(v12 + 24) = v171;
        *(v12 + 40) = v198;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_C25380(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  result.n128_u64[0] = *(v12 + 40);
  v87 = *(a2 - 8);
  if (result.n128_f64[0] <= *(v12 + 16))
  {
    if (v87 <= result.n128_f64[0])
    {
      return result;
    }

    result = *(v12 + 24);
    v129 = *(v12 + 40);
    v130 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v130;
    *(a2 - 8) = v129;
    *v9 = result;
    goto LABEL_184;
  }

  if (v87 <= result.n128_f64[0])
  {
    v196 = *(v12 + 16);
    v169 = *v12;
    *v12 = *(v12 + 24);
    *(v12 + 16) = *(v12 + 40);
    result.n128_u64[1] = v169.n128_u64[1];
    *(v12 + 24) = v169;
    *(v12 + 40) = v196;
    result.n128_u64[0] = *(a2 - 8);
    if (result.n128_f64[0] <= *(v12 + 40))
    {
      return result;
    }

    result = *(v12 + 24);
    v89 = *(v12 + 40);
    v135 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v135;
  }

  else
  {
    v192 = *(v12 + 16);
    v162 = *v12;
    v88 = *v9;
    *(v12 + 16) = *(a2 - 8);
    *v12 = v88;
    result = v162;
    v89 = v192;
  }

  *(a2 - 8) = v89;
  *v9 = result;
  return result;
}

__n128 sub_C25380(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2[1].n128_f64[0];
  v7 = a3[1].n128_f64[0];
  if (v6 <= a1[1].n128_f64[0])
  {
    if (v7 > v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2[1].n128_f64[0] > a1[1].n128_f64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3[1].n128_f64[0] > a2[1].n128_f64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1].n128_f64[0] > a3[1].n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3[1].n128_f64[0] > a2[1].n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2[1].n128_f64[0] > a1[1].n128_f64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u64[0] = a5[1].n128_u64[0];
  if (result.n128_f64[0] > a4[1].n128_f64[0])
  {
    v23 = a4[1].n128_i64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    result.n128_u64[0] = a4[1].n128_u64[0];
    if (result.n128_f64[0] > a3[1].n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3[1].n128_u64[0];
      if (result.n128_f64[0] > a2[1].n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2[1].n128_u64[0];
        if (result.n128_f64[0] > a1[1].n128_f64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_C255C8(uint64_t a1, __int128 *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = (a2 - 24);
      v9 = *(a1 + 40);
      v10 = *(a2 - 1);
      if (v9 > *(a1 + 16))
      {
        if (v10 <= v9)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
          if (*(a2 - 1) <= *(a1 + 40))
          {
            return 1;
          }

          v11 = *(a1 + 40);
          v12 = *(a1 + 24);
          v38 = *(a2 - 1);
          *(a1 + 24) = *v8;
          *(a1 + 40) = v38;
        }

        else
        {
          v11 = *(a1 + 16);
          v12 = *a1;
          v13 = *(a2 - 1);
          *a1 = *v8;
          *(a1 + 16) = v13;
        }

        *v8 = v12;
        *(a2 - 1) = v11;
        return 1;
      }

      if (v10 <= v9)
      {
        return 1;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      v27 = *(a2 - 1);
      *(a1 + 24) = *v8;
      *(a1 + 40) = v27;
      *v8 = v26;
      *(a2 - 1) = v25;
LABEL_50:
      if (*(a1 + 40) > *(a1 + 16))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_C25380(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
        return 1;
      }

      goto LABEL_13;
    }

    v20 = *(a1 + 40);
    v21 = *(a1 + 16);
    v22 = *(a1 + 64);
    if (v20 <= v21)
    {
      if (v22 > v20)
      {
        v32 = *(a1 + 40);
        v33 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v33;
        *(a1 + 64) = v32;
        if (*(a1 + 40) > v21)
        {
          v34 = *(a1 + 16);
          v35 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v35;
          *(a1 + 40) = v34;
        }
      }

      goto LABEL_47;
    }

    if (v22 <= v20)
    {
      v48 = *(a1 + 16);
      v49 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v49;
      *(a1 + 40) = v48;
      if (v22 <= *(a1 + 40))
      {
        goto LABEL_47;
      }

      v23 = *(a1 + 40);
      v24 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v23 = *(a1 + 16);
      v24 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v24;
    *(a1 + 64) = v23;
LABEL_47:
    if (*(a2 - 1) <= *(a1 + 64))
    {
      return 1;
    }

    v50 = a2 - 24;
    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = *(a2 - 1);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 64) = v53;
    *v50 = v52;
    *(v50 + 16) = v51;
    if (*(a1 + 64) <= *(a1 + 40))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 1) > *(a1 + 16))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 1);
      *a1 = *(a2 - 24);
      *(a1 + 16) = v6;
      *(a2 - 24) = v5;
      *(a2 - 1) = v4;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v14 = (a1 + 48);
  v15 = *(a1 + 40);
  v16 = *(a1 + 16);
  v17 = *(a1 + 64);
  if (v15 <= v16)
  {
    if (v17 > v15)
    {
      v28 = *(a1 + 40);
      v29 = *(a1 + 24);
      *(a1 + 24) = *v14;
      *(a1 + 40) = *(a1 + 64);
      *v14 = v29;
      *(a1 + 64) = v28;
      if (*(a1 + 40) > v16)
      {
        v30 = *(a1 + 16);
        v31 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v31;
        *(a1 + 40) = v30;
      }
    }
  }

  else
  {
    if (v17 <= v15)
    {
      v39 = *(a1 + 16);
      v40 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v40;
      *(a1 + 40) = v39;
      if (v17 <= *(a1 + 40))
      {
        goto LABEL_33;
      }

      v18 = *(a1 + 40);
      v19 = *(a1 + 24);
      *(a1 + 24) = *v14;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v18 = *(a1 + 16);
      v19 = *a1;
      *a1 = *v14;
      *(a1 + 16) = *(a1 + 64);
    }

    *v14 = v19;
    *(a1 + 64) = v18;
  }

LABEL_33:
  v41 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v42 = 0;
  v43 = 0;
  while (1)
  {
    v44 = *(v41 + 2);
    if (v44 > v14[2])
    {
      break;
    }

LABEL_42:
    v14 = v41;
    v42 += 24;
    v41 = (v41 + 24);
    if (v41 == a2)
    {
      return 1;
    }
  }

  v58 = *v41;
  v45 = v42;
  do
  {
    v46 = a1 + v45;
    *(v46 + 72) = *(a1 + v45 + 48);
    *(v46 + 88) = *(a1 + v45 + 64);
    if (v45 == -48)
    {
      *a1 = v58;
      *(a1 + 16) = v44;
      if (++v43 != 8)
      {
        goto LABEL_42;
      }

      return (v41 + 24) == a2;
    }

    v45 -= 24;
  }

  while (v44 > *(v46 + 40));
  v47 = a1 + v45;
  *(v47 + 72) = v58;
  *(v47 + 88) = v44;
  if (++v43 != 8)
  {
    goto LABEL_42;
  }

  return (v41 + 24) == a2;
}

void sub_C25B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C25B58(void *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v3 = a2 + 8;
  v32 = 0u;
  v33 = 0u;
  v34 = 1065353216;
  v6 = v4 - v5;
  if (v4 != v5)
  {
    do
    {
      if (*(v5 + 16) != -1)
      {
        v21 = (v5 + 16);
        v8 = sub_C2600C(&v32, (v5 + 16));
        ++v8[3];
        v21 = (v5 + 16);
        if (sub_C2600C(&v32, (v5 + 16))[3] > (*a1 + 1))
        {
          *(v5 + 192) = 0xBFF0000000000000;
        }
      }

      v5 += 296;
    }

    while (v5 != v4);
    v5 = *(a2 + 8);
    v4 = *(a2 + 16);
  }

  if (v5 == v4)
  {
LABEL_13:
    v11 = v4;
  }

  else
  {
    v9 = (v5 + 296);
    while (*(v9 - 13) != -1.0)
    {
      v10 = v9 == v4;
      v9 = (v9 + 296);
      if (v10)
      {
        goto LABEL_13;
      }
    }

    v11 = v9 - 296;
    if ((v9 - 296) != v4 && v9 != v4)
    {
      do
      {
        if (*(v9 + 24) != -1.0)
        {
          sub_BA9EF8(v11, v9);
          v11 += 296;
        }

        v9 = (v9 + 296);
      }

      while (v9 != v4);
      v4 = *(a2 + 16);
    }
  }

  sub_C18160(v3, v11, v4);
  if (0x14C1BACF914C1BADLL * (v6 >> 3) > (0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3)) && sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "The number of fill-in journeys filter removed ", 46);
    v12 = std::ostream::operator<<();
    sub_4A5C(v12, " journeys", 9);
    if ((v31 & 0x10) != 0)
    {
      v14 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v14 = v27;
      }

      v15 = v26;
      v13 = v14 - v26;
      if (v14 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v13 = 0;
        v20 = 0;
LABEL_34:
        *(&__p + v13) = 0;
        sub_7E854(&__p, 2u);
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_39;
      }

      v15 = v24;
      v13 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_45:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v20 = v13;
    if (v13)
    {
      memmove(&__p, v15, v13);
    }

    goto LABEL_34;
  }

LABEL_39:
  v16 = v33;
  if (v33)
  {
    do
    {
      v17 = *v16;
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = v32;
  *&v32 = 0;
  if (v18)
  {
    operator delete(v18);
  }
}

void sub_C25F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_11BD8(v15 - 144);
  _Unwind_Resume(a1);
}

uint64_t *sub_C2600C(void *a1, unsigned int *a2)
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

unint64_t *sub_C2634C(unint64_t *a1, void *a2)
{
  v7 = 16;
  strcpy(__p, "max_num_journeys");
  v3 = sub_63FDC(a2, __p);
  if (v7 < 0)
  {
    v5 = v3;
    operator delete(*__p);
    *a1 = v5;
  }

  else
  {
    *a1 = v3;
  }

  return a1;
}

void sub_C263D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C263F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  v6 = a3 + 8;
  v8 = 0x14C1BACF914C1BADLL * ((v7 - v5) >> 3);
  if (v8 > *a1)
  {
    v9 = v5 + 296 * *a1;
    while (v7 != v9)
    {
      v7 -= 296;
      sub_A320A4(v6, v7);
    }

    *(a3 + 16) = v9;
    v5 = *(a3 + 8);
    v8 = 0x14C1BACF914C1BADLL * ((v9 - v5) >> 3);
    v7 = v9;
  }

  v10 = *(a2 + 24);
  if (v8 > v10)
  {
    v11 = v5 + 296 * v10;
    while (v7 != v11)
    {
      v7 -= 296;
      sub_A320A4(v6, v7);
    }

    *(a3 + 16) = v11;
  }
}

void sub_C26580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C2659C(uint64_t result, uint64_t a2)
{
  if (*(*(result + 8) + 16) != 1)
  {
    return result;
  }

  v2 = result;
  v3 = *(a2 + 8);
  v49 = *(a2 + 16);
  v50 = v49;
  v45 = v49 - v3;
  v46 = a2 + 8;
  v47 = v3;
  if (v49 == v3)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v5 = v3[25];
    v4 = v3[26];
    if (v5 != v4)
    {
      break;
    }

LABEL_40:
    v3 += 37;
    if (v3 == v49)
    {
      goto LABEL_86;
    }
  }

LABEL_4:
  v6 = *v5;
  v7 = *(v5 + 8);
  while (1)
  {
    if (v6 == v7)
    {
      v5 += 72;
      if (v5 != v4)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }

    if (*(v5 + 24) != 1)
    {
      break;
    }

    if (*(v6 + 160) != 1)
    {
      goto LABEL_129;
    }

    if (sub_C26E1C(v2, v6))
    {
      goto LABEL_42;
    }

LABEL_5:
    v6 += 168;
  }

  if (*(v5 + 24))
  {
    goto LABEL_5;
  }

  if (*(v6 + 160))
  {
LABEL_129:
    sub_5AF20();
  }

  v9 = *(v6 + 52);
  v8 = *(v6 + 56);
  v53 = v2;
  v54 = v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= v8 + 1)
  {
LABEL_16:
    v11 = *(v6 + 64);
    v12 = *(v6 + 72);
    while (v11 != v12)
    {
      v13 = v11[12];
      if (v13 <= v13 + 1)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v11[12];
      }

      v53 = v2;
      v54 = v11;
      if (v13 != -1)
      {
        while ((sub_C27190(&v53, v13) & 1) == 0)
        {
          if (v14 == ++v13)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_42;
      }

LABEL_17:
      v11 += 15;
    }

    v15 = *(v6 + 88);
    v16 = *(v6 + 96);
    while (1)
    {
      if (v15 == v16)
      {
        goto LABEL_5;
      }

      v17 = v15[12];
      v18 = v17 <= v17 + 1 ? v17 + 1 : v15[12];
      v53 = v2;
      v54 = v15;
      if (v17 != -1)
      {
        break;
      }

LABEL_30:
      v15 += 15;
    }

    while (!sub_C27190(&v53, v17))
    {
      if (v18 == ++v17)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    while (!sub_C27010(&v53, v9))
    {
      if (v10 == ++v9)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_42:
  if (v3 == v49)
  {
    goto LABEL_86;
  }

  if (v3 + 37 == v49)
  {
    v49 = v3;
    goto LABEL_86;
  }

  v49 = v3;
  v20 = v3[62];
  v19 = v3[63];
  v21 = (v3 + 37);
  if (v20 == v19)
  {
LABEL_45:
    sub_BA9EF8(v49, v21);
    v49 += 296;
    goto LABEL_46;
  }

  while (2)
  {
    while (2)
    {
      v22 = *v20;
      v23 = *(v20 + 8);
LABEL_50:
      if (v22 == v23)
      {
        v20 += 72;
        if (v20 == v19)
        {
          goto LABEL_45;
        }

        continue;
      }

      break;
    }

    if (*(v20 + 24) == 1)
    {
      if (*(v22 + 160) != 1)
      {
        goto LABEL_129;
      }

      if (sub_C26E1C(v2, v22))
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

    if (*(v20 + 24))
    {
LABEL_49:
      v22 += 168;
      goto LABEL_50;
    }

    if (*(v22 + 160))
    {
      goto LABEL_129;
    }

    v25 = *(v22 + 52);
    v24 = *(v22 + 56);
    v53 = v2;
    v54 = v22;
    if (v25 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v25;
    }

    if (v25 >= v24 + 1)
    {
LABEL_60:
      v27 = *(v22 + 64);
      v28 = *(v22 + 72);
      while (v27 != v28)
      {
        v29 = v27[12];
        if (v29 <= v29 + 1)
        {
          v30 = v29 + 1;
        }

        else
        {
          v30 = v27[12];
        }

        v53 = v2;
        v54 = v27;
        if (v29 != -1)
        {
          while ((sub_C27190(&v53, v29) & 1) == 0)
          {
            if (v30 == ++v29)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_46;
        }

LABEL_61:
        v27 += 15;
      }

      v31 = *(v22 + 88);
      v32 = *(v22 + 96);
      while (1)
      {
        if (v31 == v32)
        {
          goto LABEL_49;
        }

        v33 = v31[12];
        v34 = v33 <= v33 + 1 ? v33 + 1 : v31[12];
        v53 = v2;
        v54 = v31;
        if (v33 != -1)
        {
          break;
        }

LABEL_74:
        v31 += 15;
      }

      while (!sub_C27190(&v53, v33))
      {
        if (v34 == ++v33)
        {
          goto LABEL_74;
        }
      }
    }

    else
    {
      while (!sub_C27010(&v53, v25))
      {
        if (v26 == ++v25)
        {
          goto LABEL_60;
        }
      }
    }

LABEL_46:
    if ((v21 + 296) != v50)
    {
      v20 = *(v21 + 62);
      v19 = *(v21 + 63);
      v21 = (v21 + 296);
      if (v20 == v19)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

LABEL_86:
  result = sub_C18160(v46, v49, *(a2 + 16));
  v36 = *(a2 + 8);
  v35 = *(a2 + 16);
  if (v50 == v47 || v35 != v36)
  {
    if (0x14C1BACF914C1BADLL * (v45 >> 3) <= (0x14C1BACF914C1BADLL * ((v35 - v36) >> 3)))
    {
      return result;
    }

    result = sub_7E7E4(2u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v53);
    sub_4A5C(&v53, "The partial data filter removed ", 32);
    v38 = std::ostream::operator<<();
    sub_4A5C(v38, " journeys", 9);
    if ((v63 & 0x10) != 0)
    {
      v42 = v62;
      if (v62 < v59)
      {
        v62 = v59;
        v42 = v59;
      }

      v43 = &v58;
    }

    else
    {
      if ((v63 & 8) == 0)
      {
        v39 = 0;
        v52 = 0;
LABEL_124:
        *(&__dst + v39) = 0;
        sub_7E854(&__dst, 2u);
        if (v52 < 0)
        {
          operator delete(__dst);
        }

        if (v61 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v55);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v43 = &v56;
      v42 = v57;
    }

    v44 = *v43;
    v39 = v42 - *v43;
    if (v39 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v39 >= 0x17)
    {
      operator new();
    }

    v52 = v42 - *v43;
    if (v39)
    {
      memmove(&__dst, v44, v39);
    }

    goto LABEL_124;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v53);
    sub_4A5C(&v53, "The partial data filter removed all journeys from the response", 62);
    if ((v63 & 0x10) != 0)
    {
      v40 = v62;
      if (v62 < v59)
      {
        v62 = v59;
        v40 = v59;
      }

      v41 = v58;
      v37 = v40 - v58;
      if (v40 - v58 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if ((v63 & 8) == 0)
      {
        v37 = 0;
        v52 = 0;
        goto LABEL_105;
      }

      v41 = v56;
      v37 = v57 - v56;
      if (v57 - v56 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_113:
        sub_3244();
      }
    }

    if (v37 >= 0x17)
    {
      operator new();
    }

    v52 = v37;
    if (v37)
    {
      memmove(&__dst, v41, v37);
    }

LABEL_105:
    *(&__dst + v37) = 0;
    sub_7E854(&__dst, 1u);
    if (v52 < 0)
    {
      operator delete(__dst);
    }

    if (v61 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v55);
    std::ostream::~ostream();
    result = std::ios::~ios();
  }

  *a2 = 24;
  return result;
}

void sub_C26DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_C26E1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (HIDWORD(v4) != 1 || (v4 + 3) >= 2)
  {
    if (!sub_2D5204(**(*(a1 + 8) + 4120)))
    {
      return 1;
    }

    v4 = *(a2 + 12);
  }

  if (*a1 == 1)
  {
    v6 = v4 + 3;
    if ((v4 & 0xFFFFFFFF00000000) != 0x100000000 || v6 >= 2)
    {
      if ((v4 & 0xFFFFFFFF00000000) != 0x100000000 || v6 >= 2)
      {
        v9 = sub_502FF8(*(*(a1 + 8) + 4120) + 24, __ROR8__(v4, 32), 0, "stop");
        v10 = v9 + *(v9 - *v9 + 6);
        v11 = *v10;
        LODWORD(v10) = *(v10 + 4);
        v10 = v10 >= 0xFFFFFFFE ? 4294967294 : v10;
        v12 = v11 | (v10 << 32);
      }

      else
      {
        v12 = -1;
      }

      v21 = v12;
      v22 = 0x7FFFFFFF;
      if (!sub_7FDC0(*(a1 + 8), &v21))
      {
        return 1;
      }
    }
  }

  v13 = *(a2 + 20);
  if (HIDWORD(v13) != 1 || (v13 + 3) >= 2)
  {
    if (sub_2D5204(**(*(a1 + 8) + 4120)))
    {
      v13 = *(a2 + 20);
      goto LABEL_31;
    }

    return 1;
  }

LABEL_31:
  if (*a1 != 1)
  {
    return 0;
  }

  v15 = v13 + 3;
  if ((v13 & 0xFFFFFFFF00000000) == 0x100000000 && v15 < 2)
  {
    return 0;
  }

  if ((v13 & 0xFFFFFFFF00000000) == 0x100000000 && v15 < 2)
  {
    v17 = -1;
  }

  else
  {
    v18 = sub_502FF8(*(*(a1 + 8) + 4120) + 24, __ROR8__(v13, 32), 0, "stop");
    v19 = v18 + *(v18 - *v18 + 6);
    v20 = *v19;
    LODWORD(v19) = *(v19 + 4);
    if (v19 >= 0xFFFFFFFE)
    {
      v19 = 4294967294;
    }

    else
    {
      v19 = v19;
    }

    v17 = v20 | (v19 << 32);
  }

  v21 = v17;
  v22 = 0x7FFFFFFF;
  return sub_7FDC0(*(a1 + 8), &v21) ^ 1;
}

uint64_t sub_C27010(void *a1, unsigned int a2)
{
  v4 = *a1;
  v6 = sub_A57920((*(*a1 + 8) + 4136), *(a1[1] + 32));
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = __ROR8__(*sub_A571D4(v9, a2), 32);
  sub_A56F04((*(v4 + 8) + 4136), *(a1[1] + 32), a2, *(a1[1] + 40));
  if (HIDWORD(v10) == 1 && (v10 + 1) > 0xFFFFFFFD)
  {
    return sub_2D5204(**(*(v4 + 8) + 4184)) ^ 1;
  }

  if (sub_2D5204(**(*(v4 + 8) + 4120)) && (*v4 != 1 || ((v12 = sub_502FF8(*(*(v4 + 8) + 4120) + 24, __ROR8__(v10, 32), 0, "stop"), LODWORD(v13) = *(v12 + *(v12 - *v12 + 6) + 4), v13 >= 0xFFFFFFFE) ? (v13 = 4294967294) : (v13 = v13), v15 = *(v12 + *(v12 - *v12 + 6)) | (v13 << 32), v16 = 0x7FFFFFFF, sub_7FDC0(*(v4 + 8), &v15))))
  {
    return sub_2D5204(**(*(v4 + 8) + 4184)) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_C27190(void *a1, unsigned int a2)
{
  v4 = *a1;
  v6 = sub_A57920((*(*a1 + 8) + 4136), *(a1[1] + 28));
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = __ROR8__(*sub_A571D4(v9, a2), 32);
  sub_A56F04((*(v4 + 8) + 4136), *(a1[1] + 28), a2, *(a1[1] + 36));
  if (HIDWORD(v10) == 1 && (v10 + 1) > 0xFFFFFFFD)
  {
    return sub_2D5204(**(*(v4 + 8) + 4184)) ^ 1;
  }

  if (sub_2D5204(**(*(v4 + 8) + 4120)) && (*v4 != 1 || ((v12 = sub_502FF8(*(*(v4 + 8) + 4120) + 24, __ROR8__(v10, 32), 0, "stop"), LODWORD(v13) = *(v12 + *(v12 - *v12 + 6) + 4), v13 >= 0xFFFFFFFE) ? (v13 = 4294967294) : (v13 = v13), v15 = *(v12 + *(v12 - *v12 + 6)) | (v13 << 32), v16 = 0x7FFFFFFF, sub_7FDC0(*(v4 + 8), &v15))))
  {
    return sub_2D5204(**(*(v4 + 8) + 4184)) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_C27310(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v3 = a2 + 8;
  v6 = 0x14C1BACF914C1BADLL * ((v4 - v5) >> 3);
  if (v4 == v5)
  {
LABEL_4:
    v7 = *(a2 + 16);
  }

  else
  {
    while (*(v5 + 2) <= 1u)
    {
      v5 += 296;
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    if (v5 == v4 || (v8 = v5 + 296, v5 + 296 == v4))
    {
      v7 = *(a2 + 16);
    }

    else
    {
      do
      {
        if (*(v8 + 2) <= 1u)
        {
          sub_BA9EF8(v5, v8);
          v5 += 296;
        }

        v8 += 296;
      }

      while (v8 != v4);
      v7 = *(a2 + 16);
    }

    v4 = v5;
  }

  result = sub_C18160(v3, v4, v7);
  if (v6 > 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3))
  {
    result = sub_7E7E4(2u);
    if (result)
    {
      sub_19594F8(&v16);
      sub_4A5C(&v16, "The risky journey filter removed ", 33);
      v10 = std::ostream::operator<<();
      sub_4A5C(v10, " journeys", 9);
      if ((v26 & 0x10) != 0)
      {
        v12 = v25;
        if (v25 < v22)
        {
          v25 = v22;
          v12 = v22;
        }

        v13 = v21;
        v11 = v12 - v21;
        if (v12 - v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if ((v26 & 8) == 0)
        {
          v11 = 0;
          v15 = 0;
LABEL_26:
          *(&__p + v11) = 0;
          sub_7E854(&__p, 2u);
          if (v15 < 0)
          {
            operator delete(__p);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }

          std::locale::~locale(&v18);
          std::ostream::~ostream();
          return std::ios::~ios();
        }

        v13 = v19;
        v11 = v20 - v19;
        if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_33:
          sub_3244();
        }
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      v15 = v11;
      if (v11)
      {
        memmove(&__p, v13, v11);
      }

      goto LABEL_26;
    }
  }

  return result;
}

void sub_C27638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

double *sub_C2767C(double *a1, void *a2)
{
  v7 = 15;
  strcpy(__p, "score_threshold");
  v3 = sub_63D34(a2, __p);
  if (v7 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  return a1;
}

void sub_C27700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C2771C(double *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = a2 + 8;
  v6 = 0x14C1BACF914C1BADLL * ((v5 - v3) >> 3);
  if (v5 == v3)
  {
LABEL_6:
    v10 = *(a2 + 16);
  }

  else
  {
    v8 = v3 + 296;
    while (*(v8 - 104) >= *a1)
    {
      v9 = v8 == v5;
      v8 += 296;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    v11 = v8 - 296;
    if (v8 - 296 == v5 || v8 == v5)
    {
      v10 = *(a2 + 16);
    }

    else
    {
      do
      {
        if (*(v8 + 192) >= *a1)
        {
          sub_BA9EF8(v11, v8);
          v11 += 296;
        }

        v8 += 296;
      }

      while (v8 != v5);
      v10 = *(a2 + 16);
    }

    v5 = v11;
  }

  result = sub_C18160(v4, v5, v10);
  if (v6 > 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3))
  {
    result = sub_7E7E4(2u);
    if (result)
    {
      sub_19594F8(&v19);
      sub_4A5C(&v19, "The score threshold filter removed ", 35);
      v13 = std::ostream::operator<<();
      sub_4A5C(v13, " journeys", 9);
      if ((v29 & 0x10) != 0)
      {
        v15 = v28;
        if (v28 < v25)
        {
          v28 = v25;
          v15 = v25;
        }

        v16 = v24;
        v14 = v15 - v24;
        if (v15 - v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if ((v29 & 8) == 0)
        {
          v14 = 0;
          v18 = 0;
LABEL_28:
          *(&__p + v14) = 0;
          sub_7E854(&__p, 2u);
          if (v18 < 0)
          {
            operator delete(__p);
          }

          if (v27 < 0)
          {
            operator delete(v26);
          }

          std::locale::~locale(&v21);
          std::ostream::~ostream();
          return std::ios::~ios();
        }

        v16 = v22;
        v14 = v23 - v22;
        if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_35:
          sub_3244();
        }
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      v18 = v14;
      if (v14)
      {
        memmove(&__p, v16, v14);
      }

      goto LABEL_28;
    }
  }

  return result;
}

void sub_C27A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_C27CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_C27D40(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      result = (*(*v7 + 48))(v7, v3);
      if (result)
      {
        result = sub_C27DD0(v6, v3);
      }

      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t sub_C27DD0(uint64_t a1, uint64_t a2)
{
  result = sub_A51E58(a2, 1);
  v5 = HIDWORD(result);
  if (HIDWORD(result) == 0x7FFFFFFF)
  {
    LODWORD(v5) = result;
  }

  if (v5 != 0x7FFFFFFFLL)
  {
    result = sub_C28118(a1, (a2 + 248), v5);
  }

  v6 = *(a2 + 200);
  v28 = *(a2 + 208);
  if (v6 != v28)
  {
    while (1)
    {
      if (!*(v6 + 24))
      {
        v7 = *v6;
        if (*v6 != v6[1])
        {
          if (*(v7 + 160))
          {
            goto LABEL_51;
          }

          v29 = v6;
          sub_C28118(a1, v6 + 4, *(v7 + 4 * (*(v7 + 12) != 0x7FFFFFFF) + 8));
          v6 = v29;
          v9 = *v29;
          v8 = v29[1];
          result = 0xCCCCCCCCCCCCCCCDLL;
          if (*v29 != v8)
          {
            break;
          }
        }
      }

LABEL_7:
      v6 += 9;
      if (v6 == v28)
      {
        return result;
      }
    }

    while (!*(v9 + 160))
    {
      v11 = *(v9 + 120);
      v10 = *(v9 + 128);
      if (v11 == v10)
      {
        v22 = *(v9 + 120);
      }

      else
      {
        v12 = 0;
        v13 = *(v9 + 4 * (*(v9 + 12) != 0x7FFFFFFF) + 8);
        v14 = *(v9 + 120);
        do
        {
          if (*a1 < 0)
          {
            v15 = -5;
          }

          else
          {
            v15 = 5;
          }

          if (*v14 > (*a1 / 10 + v13 + (((103 * (v15 + *a1 % 10)) >> 15) & 1) + ((103 * (v15 + *a1 % 10)) >> 10)))
          {
            if (v12 >= *(a1 + 8))
            {
              *(v14 + 4) = 0x7FFFFFFF;
            }

            ++v12;
          }

          v14 += 40;
        }

        while (v14 != v10);
        v16 = 0;
        v17 = v10;
        do
        {
          v18 = *(a1 + 4);
          v19 = v18 / -10;
          v20 = v18 % 10;
          if (v18 < 0)
          {
            v21 = -5;
          }

          else
          {
            v21 = 5;
          }

          if (*(v17 - 9) < (v19 + v13 + (((-103 * (v21 + v20)) >> 15) & 1) + ((-103 * (v21 + v20)) >> 10)))
          {
            if (v16 >= *(a1 + 16))
            {
              *(v17 - 6) = 0x7FFFFFFF;
            }

            ++v16;
          }

          v17 -= 40;
        }

        while (v17 != v11);
        v22 = v11;
        while (*(v22 + 4) != 0x7FFFFFFF)
        {
          v22 += 40;
          if (v22 == v10)
          {
            goto LABEL_48;
          }
        }

        if (v22 != v10)
        {
          v23 = (v22 + 40);
          if (v22 + 40 != v10)
          {
            do
            {
              if (*(v23 + 4) != 0x7FFFFFFF)
              {
                v24 = *v23;
                v25 = v23[1];
                v22[32] = *(v23 + 32);
                *v22 = v24;
                *(v22 + 1) = v25;
                v22 += 40;
              }

              v23 = (v23 + 40);
            }

            while (v23 != v10);
            v11 = *(v9 + 120);
            v10 = *(v9 + 128);
          }
        }
      }

      if (v22 != v10)
      {
        v10 = v22;
        *(v9 + 128) = v22;
      }

LABEL_48:
      v26 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3);
      v27 = *(a1 + 24);
      if (v26 > v27)
      {
        *(v9 + 128) = &v11[40 * v27];
      }

      v9 += 168;
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_51:
    sub_5AF20();
  }

  return result;
}

uint64_t sub_C28118(uint64_t result, char **a2, int a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    v14 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      if (*result < 0)
      {
        v7 = -5;
      }

      else
      {
        v7 = 5;
      }

      if (*v6 > (*result / 10 + a3 + (((103 * (v7 + *result % 10)) >> 15) & 1) + ((103 * (v7 + *result % 10)) >> 10)))
      {
        if (v5 >= *(result + 8))
        {
          *(v6 + 4) = 0x7FFFFFFF;
        }

        ++v5;
      }

      v6 += 40;
    }

    while (v6 != v3);
    v8 = 0;
    v9 = v3;
    do
    {
      v10 = *(result + 4);
      v11 = v10 / -10;
      v12 = v10 % 10;
      if (v10 < 0)
      {
        v13 = -5;
      }

      else
      {
        v13 = 5;
      }

      if (*(v9 - 9) < (v11 + a3 + (((-103 * (v13 + v12)) >> 15) & 1) + ((-103 * (v13 + v12)) >> 10)))
      {
        if (v8 >= *(result + 16))
        {
          *(v9 - 6) = 0x7FFFFFFF;
        }

        ++v8;
      }

      v9 -= 40;
    }

    while (v9 != v4);
    v14 = v4;
    while (*(v14 + 4) != 0x7FFFFFFF)
    {
      v14 += 40;
      if (v14 == v3)
      {
        goto LABEL_34;
      }
    }

    if (v14 != v3)
    {
      v15 = v14 + 40;
      if (v14 + 40 != v3)
      {
        do
        {
          if (*(v15 + 4) != 0x7FFFFFFF)
          {
            v16 = *v15;
            v17 = *(v15 + 1);
            v14[32] = v15[32];
            *v14 = v16;
            *(v14 + 1) = v17;
            v14 += 40;
          }

          v15 += 40;
        }

        while (v15 != v3);
        v4 = *a2;
        v3 = a2[1];
      }
    }
  }

  if (v14 != v3)
  {
    v3 = v14;
    a2[1] = v14;
  }

LABEL_34:
  v18 = *(result + 24);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3) > v18)
  {
    a2[1] = &v4[40 * v18];
  }

  return result;
}