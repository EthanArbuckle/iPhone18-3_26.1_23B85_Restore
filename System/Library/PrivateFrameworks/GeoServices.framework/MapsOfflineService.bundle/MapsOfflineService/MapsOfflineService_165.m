void sub_A18218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A182F0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == *(a1 + 56))
  {
    v1 = a1 + 72;
  }

  return *v1;
}

void sub_A18308(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v2 == v3)
  {
LABEL_4:
    v4 = a1[9];
    if (*v4 != 2)
    {
LABEL_8:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return;
    }
  }

  else
  {
    while (1)
    {
      v4 = *v2;
      if (**v2 == 2)
      {
        break;
      }

      if (++v2 == v3)
      {
        goto LABEL_4;
      }
    }
  }

  if ((v4[198] & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(v4 + 94);
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  v6 = *(a1[10] + 72) + 696 * v5;
  if (*(v6 + 559) == 1)
  {
    goto LABEL_8;
  }

  sub_9D4538(v6, a2);
}

void sub_A18380(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v2 == v3)
  {
LABEL_4:
    v4 = a1[9];
    if (*v4 != 2)
    {
LABEL_11:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return;
    }
  }

  else
  {
    while (1)
    {
      v4 = *v2;
      if (**v2 == 2)
      {
        break;
      }

      if (++v2 == v3)
      {
        goto LABEL_4;
      }
    }
  }

  if ((v4[198] & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = a1[10];
  v6 = *(v4 + 94);
  v7 = v5[9];
  if (0x66FD0EB66FD0EB67 * ((v5[10] - v7) >> 3) <= v6)
  {
    sub_6FAB4();
  }

  v8 = *(v7 + 696 * v6 + 64);
  v10 = v5 + 12;
  v9 = v5[12];
  if (0x4EC4EC4EC4EC4EC5 * ((v10[1] - v9) >> 4) <= v8)
  {
    sub_6FAB4();
  }

  sub_9D43A4((v9 + 208 * v8), a2);
}

void *sub_A18468@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = result[6];
  v4 = result[7];
  if (v3 == v4)
  {
LABEL_4:
    v5 = result[9];
    if (*v5 != 2)
    {
      return result;
    }
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (**v3 == 2)
      {
        break;
      }

      if (++v3 == v4)
      {
        goto LABEL_4;
      }
    }
  }

  if (*(v5 + 792) == 1)
  {
    v6 = *(v5 + 28);
    v7 = *(v5 + 29);
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        if (v8 < a2[2])
        {
          if (*(v6 + 23) < 0)
          {
            result = sub_325C(v8, *v6, *(v6 + 8));
          }

          else
          {
            v9 = *v6;
            v8[2] = *(v6 + 16);
            *v8 = v9;
          }

          v8 += 3;
        }

        else
        {
          result = sub_1CEE8(a2, v6);
          v8 = result;
        }

        a2[1] = v8;
        v6 += 56;
      }

      while (v6 != v7);
    }
  }

  return result;
}

void sub_A1854C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

int *sub_A18578@<X0>(int *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(*(a2 + 16) + 1444))
  {
    result = sub_A21B20(result);
    v4 = *result;
    if (*result > 3)
    {
      switch(v4)
      {
        case 4:
          sub_A1F638();
        case 5:
          sub_A1F240();
        case 6:
          sub_A1F044();
      }
    }

    else
    {
      switch(v4)
      {
        case 1:
          sub_A1EE48();
        case 2:
          sub_A1F43C();
        case 3:
          sub_A1F834();
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_A186C4(int *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v15 = *(a2 + 48);
  sub_9792D0(a1, a2, &v13);
  if (v13)
  {
    v6 = v14;
    *a3 = v13;
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_A18578(a1, a2, &v11);
    if (v11)
    {
      v7 = v12;
      *a3 = v11;
      a3[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v8 = *sub_A21B20(a1);
      if (v8 <= 4)
      {
        if (v8 <= 1)
        {
          if (v8 == 1)
          {
            sub_A1FA30();
          }
        }

        else
        {
          if (v8 == 2)
          {
            sub_A20220();
          }

          if (v8 == 4)
          {
            sub_A1FC2C();
          }
        }
      }

      else
      {
        if (v8 <= 7)
        {
          if (v8 != 5)
          {
            if (v8 != 6)
            {
              sub_A20024();
            }

            sub_A1FE28();
          }

          sub_A20618();
        }

        if (v8 == 8)
        {
          sub_A2041C();
        }

        if (v8 == 9)
        {
          sub_A20814();
        }
      }

      *a3 = 0;
      a3[1] = 0;
    }

    v9 = v12;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  v10 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_A18984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  _Unwind_Resume(a1);
}

void sub_A189C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A189D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 80);
  v4 = *(*(v3 + 24) + 144 * v2 + 104);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(v3 + 48) + 136 * v4;
  if (*(v5 + 16) == *(v5 + 24))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

BOOL sub_A18A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a2 == -1 || a3 == -1)
  {
    return v3;
  }

  v5 = *(a1 + 80);
  v6 = *v5 + 168 * a2;
  v7 = *v5 + 168 * a3;
  v8 = *(v6 + 104);
  if (v8 == -1 || (v9 = *(v5[3] + 144 * v8 + 104), v9 == -1))
  {
    v10 = 0;
    v11 = *(v7 + 104);
    if (v11 == -1)
    {
      return 0;
    }
  }

  else
  {
    v10 = (v5[6] + 136 * v9);
    if (v10[2] == v10[3])
    {
      v10 = 0;
    }

    v11 = *(v7 + 104);
    if (v11 == -1)
    {
      return 0;
    }
  }

  v12 = *(v5[3] + 144 * v11 + 104);
  if (v12 == -1)
  {
    return 0;
  }

  v3 = 0;
  v13 = (v5[6] + 136 * v12);
  if (v13[2] == v13[3])
  {
    v13 = 0;
  }

  if (!v10 || !v13)
  {
    return v3;
  }

  if (v10[11] == v13[11])
  {
    return 0;
  }

  v16 = sub_9BCCEC(v6, v5);
  sub_9D43A4(v16, v26);
  v17 = sub_9BCCEC(v7, *(a1 + 80));
  sub_9D43A4(v17, __p);
  v18 = v27;
  if ((v27 & 0x80u) == 0)
  {
    v19 = v27;
  }

  else
  {
    v19 = v26[1];
  }

  v20 = v25;
  v21 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v20 = __p[1];
  }

  if (v19 == v20)
  {
    if ((v27 & 0x80u) == 0)
    {
      v22 = v26;
    }

    else
    {
      v22 = v26[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    v3 = memcmp(v22, v23, v19) != 0;
  }

  else
  {
    v3 = 1;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
    v18 = v27;
  }

  if ((v18 & 0x80) == 0)
  {
    return v3;
  }

  operator delete(v26[0]);
  return v3;
}

void sub_A18BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A18C14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_A21730(a2, v9);
  sub_A21834(a2, 0xFFFFFFFFFFFFFFFFLL, __p);
  v6 = sub_A21B20(a2);
  sub_A18CF8(a1, v9, __p, v6, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return a1;
}

void sub_A18CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A18CF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_266FA10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = a2[1];
  if (v6 != *a2)
  {
    if (((v6 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = a3[1] - *a3;
  if (v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *a5;
  *(a1 + 72) = a4;
  *(a1 + 80) = v8;
  *(a1 + 88) = vextq_s8(*(a5 + 1), *(a5 + 1), 8uLL);
  v9 = a5[4];
  *(a1 + 104) = a5[3];
  *(a1 + 112) = a5 + 5;
  *(a1 + 120) = v9;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 132) = 2;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 252) = 0x8000000080000000;
  *(a1 + 260) = 0;
  *(a1 + 264) = xmmword_22A5CD0;
  *(a1 + 280) = 0x8000000080000000;
  *(a1 + 288) = 0;
  *(a1 + 292) = xmmword_22A5CD0;
  *(a1 + 308) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  sub_A18FC8(a1);
  return a1;
}

void sub_A18ED8(_Unwind_Exception *a1)
{
  sub_1AA90((v1 + 496));
  sub_55A03C(v1 + 472);
  sub_9354C4((v1 + 448));
  sub_9354C4((v1 + 424));
  sub_509680(v1 + 368);
  sub_9354C4((v1 + 344));
  sub_9354C4((v1 + 320));
  sub_9354C4(v3);
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
    sub_1A104(v2);
    if ((*(v1 + 159) & 0x80000000) == 0)
    {
LABEL_3:
      v8 = *v5;
      if (!*v5)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1A104(v2);
    if ((*(v1 + 159) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*v4);
  v8 = *v5;
  if (!*v5)
  {
LABEL_4:
    v9 = *v6;
    if (!*v6)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(v1 + 56) = v8;
  operator delete(v8);
  v9 = *v6;
  if (!*v6)
  {
LABEL_5:
    v10 = *(v1 + 16);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v1 + 32) = v9;
  operator delete(v9);
  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v10);
  _Unwind_Resume(a1);
}

void sub_A18FC8(uint64_t a1)
{
  v3 = (a1 + 72);
  v2 = *(a1 + 72);
  if (*(v2 + 792) != 1)
  {
    goto LABEL_49;
  }

  v4 = *(a1 + 80);
  v5 = *(v4 + 72) + 696 * *(v2 + 94);
  if ((*(v5 + 559) & 1) == 0)
  {
    v6 = (a1 + 424);
    if (a1 + 424 != v5)
    {
      sub_942014(v6, *v5, *(v5 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 8) - *v5) >> 3));
      v4 = *(a1 + 80);
    }
  }

  v7 = *(v4 + 96) + 208 * *(v5 + 64);
  *(a1 + 132) = *(v5 + 556);
  if (*(v5 + 560) == 1)
  {
    *(a1 + 217) = **v3 != 8;
    v8 = (a1 + 448);
    if (a1 + 448 == v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(a1 + 217) = 0;
  v8 = (a1 + 448);
  if (a1 + 448 != v7)
  {
LABEL_9:
    sub_942014(v8, *v7, *(v7 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v7 + 8) - *v7) >> 3));
  }

LABEL_10:
  *(a1 + 216) = *(v7 + 200);
  *(a1 + 160) = *(v2 + 158);
  v9 = (v2 + 40);
  v10 = (a1 + 136);
  if (*(v2 + 216) == 1 && v10 != v9)
  {
    v19 = *(v2 + 183);
    if (*(a1 + 159) < 0)
    {
      if (v19 >= 0)
      {
        v21 = v2 + 40;
      }

      else
      {
        v21 = *(v2 + 20);
      }

      if (v19 >= 0)
      {
        v22 = *(v2 + 183);
      }

      else
      {
        v22 = *(v2 + 21);
      }

      sub_13B38(v10, v21, v22);
    }

    else if ((*(v2 + 183) & 0x80) != 0)
    {
      sub_13A68(v10, *(v2 + 20), *(v2 + 21));
    }

    else
    {
      v20 = *v9;
      *(a1 + 152) = *(v2 + 22);
      *v10 = v20;
    }
  }

  v12 = *(v2 + 28);
  v13 = *(v2 + 29);
  if (v12 != v13)
  {
    v14 = *(a1 + 176);
    do
    {
      while (v14 >= *(a1 + 184))
      {
        v14 = sub_1CEE8(a1 + 168, v12);
        *(a1 + 176) = v14;
        v12 += 56;
        if (v12 == v13)
        {
          goto LABEL_23;
        }
      }

      if (*(v12 + 23) < 0)
      {
        sub_325C(v14, *v12, *(v12 + 8));
      }

      else
      {
        v15 = *v12;
        *(v14 + 16) = *(v12 + 16);
        *v14 = v15;
      }

      v14 += 24;
      *(a1 + 176) = v14;
      *(a1 + 176) = v14;
      v12 += 56;
    }

    while (v12 != v13);
  }

LABEL_23:
  if ((*(v5 + 561) & 1) == 0 && *(v2 + 584) == 1)
  {
    v16 = (a1 + 192);
    if ((a1 + 192) != v2 + 132)
    {
      v17 = *(v2 + 551);
      if (*(a1 + 215) < 0)
      {
        if (v17 >= 0)
        {
          v23 = v2 + 132;
        }

        else
        {
          v23 = *(v2 + 66);
        }

        if (v17 >= 0)
        {
          v24 = *(v2 + 551);
        }

        else
        {
          v24 = *(v2 + 67);
        }

        sub_13B38(v16, v23, v24);
      }

      else if ((*(v2 + 551) & 0x80) != 0)
      {
        sub_13A68(v16, *(v2 + 66), *(v2 + 67));
      }

      else
      {
        v18 = *(v2 + 33);
        *(a1 + 208) = *(v2 + 68);
        *v16 = v18;
      }
    }
  }

  *(a1 + 161) = *(v2 + 156);
  v2 = *(a1 + 72);
LABEL_49:
  if (*v2 == 7)
  {
    goto LABEL_66;
  }

  v25 = *(a1 + 48);
  if (v25 == *(a1 + 56))
  {
    v25 = v3;
  }

  v2 = *v25;
  if (**v25 == 7)
  {
LABEL_66:
    if (*(v2 + 952) == 1)
    {
      v26 = *(v2 + 107);
      if (v26 != -1)
      {
        v27 = *(*(a1 + 80) + 120) + 304 * v26 + 40;
        if (a1 + 320 != v27)
        {
          sub_942014((a1 + 320), *v27, *(v27 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v27 + 8) - *v27) >> 3));
        }

        sub_9D4608((a1 + 320), &v31);
        v28 = v31;
        v29 = v32;
        v30 = SHIBYTE(v33);
        v32 = 0;
        v33 = 0;
        v31 = 0;
        if (v35 < 0)
        {
          operator delete(__p);
          if (SHIBYTE(v33) < 0)
          {
            operator delete(v31);
          }
        }

        if (v30 < 0)
        {
          *(a1 + 163) = v29 != 0;
          operator delete(v28);
        }

        else
        {
          *(a1 + 163) = v30 != 0;
        }
      }
    }
  }

  sub_A1936C(a1, **(a1 + 72));
  sub_A19520(a1);
}

uint64_t sub_A1936C(uint64_t result, int a2)
{
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = result;
        result = sub_A16AB0(result);
        if (result && (result = sub_A16BEC(v2), result))
        {
          *(v2 + 128) = 3;
        }

        else
        {
          *(v2 + 128) = 2;
        }
      }

      else if (a2 == 3)
      {
        *(result + 128) = 11;
      }

      else
      {
        *(result + 128) = 4;
      }

      return result;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        *(result + 128) = 1;
      }

      return result;
    }

LABEL_17:
    *(result + 128) = 0;
    return result;
  }

  if (a2 <= 7)
  {
    if (a2 == 5)
    {
      v3 = result;
      result = sub_A16AB0(result);
      if (result)
      {
        result = sub_A16BEC(v3);
        if (result)
        {
          *(v3 + 128) = 5;
        }

        else
        {
          *(v3 + 128) = 6;
        }
      }

      else
      {
        *(v3 + 128) = 0;
      }
    }

    else if (a2 == 6)
    {
      *(result + 128) = 8;
    }

    else
    {
      *(result + 128) = 9;
    }

    return result;
  }

  switch(a2)
  {
    case 8:
      *(result + 128) = 7;
      return result;
    case 9:
      *(result + 128) = 10;
      return result;
    case 10:
      goto LABEL_17;
  }

  return result;
}

void sub_A19520(uint64_t a1)
{
  v3 = (a1 + 72);
  v2 = *(a1 + 72);
  v4 = *(v2 + 6);
  if (v4 != -1 || ((v4 = *(v2 + 7), v5 = *v2, v4 != -1) ? (v6 = v5 == 6) : (v6 = 0), v6))
  {
    v7 = *(a1 + 80);
    if (*v7)
    {
      v8 = *v7 + 168 * v4;
      v9 = sub_9BCCEC(v8, v7);
      if ((a1 + 344) != v9)
      {
        sub_942014((a1 + 344), *v9, v9[1], 0x6DB6DB6DB6DB6DB7 * ((v9[1] - *v9) >> 3));
      }

      *(a1 + 162) = *(v8 + 163);
      v10 = *(a1 + 72);
      if (*v10 == 6)
      {
        v11 = *(a1 + 48);
        if (v11 == *(a1 + 56))
        {
          v11 = v3;
        }

        v10 = *v11;
        if (*(*v11 + 792) == 1)
        {
          if (*(v10 + 271) < 0)
          {
            sub_325C(__p, *(v10 + 248), *(v10 + 256));
            BYTE8(v14) = *(v10 + 272);
            if (*(v10 + 303) < 0)
            {
LABEL_27:
              sub_325C(&v15, *(v10 + 280), *(v10 + 288));
              goto LABEL_28;
            }
          }

          else
          {
            *__p = *(v10 + 248);
            *&v14 = *(v10 + 264);
            BYTE8(v14) = *(v10 + 272);
            if (*(v10 + 303) < 0)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (*v10 != 2)
        {
          return;
        }

        if (*(v10 + 792) == 1)
        {
          if (*(v10 + 271) < 0)
          {
            sub_325C(__p, *(v10 + 248), *(v10 + 256));
            BYTE8(v14) = *(v10 + 272);
            if (*(v10 + 303) < 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *__p = *(v10 + 248);
            *&v14 = *(v10 + 264);
            BYTE8(v14) = *(v10 + 272);
            if (*(v10 + 303) < 0)
            {
              goto LABEL_27;
            }
          }

LABEL_26:
          v15 = *(v10 + 280);
          v16 = *(v10 + 296);
          goto LABEL_28;
        }
      }

      *__p = 0u;
      v14 = 0u;
      BYTE8(v14) = 2;
      v16 = 0;
      v15 = 0uLL;
LABEL_28:
      if (*(a1 + 391) < 0)
      {
        operator delete(*(a1 + 368));
      }

      *(a1 + 368) = *__p;
      *(a1 + 384) = v14;
      BYTE7(v14) = 0;
      LOBYTE(__p[0]) = 0;
      *(a1 + 392) = BYTE8(v14);
      if (*(a1 + 423) < 0)
      {
        operator delete(*(a1 + 400));
        v12 = SBYTE7(v14);
        *(a1 + 400) = v15;
        *(a1 + 416) = v16;
        HIBYTE(v16) = 0;
        LOBYTE(v15) = 0;
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *(a1 + 400) = v15;
        *(a1 + 416) = v16;
      }
    }
  }
}

void sub_A1978C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A197B0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 792) != 1)
  {
    *&v2 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 24) = 2;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    return *&v2;
  }

  if (*(a1 + 271) < 0)
  {
    v3 = a1;
    v4 = a2;
    sub_325C(a2, *(a1 + 248), *(a1 + 256));
    a1 = v3;
    a2 = v4;
    *(v4 + 24) = *(v3 + 272);
    if ((*(v3 + 303) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_325C((a2 + 32), *(a1 + 280), *(a1 + 288));
    return *&v2;
  }

  *a2 = *(a1 + 248);
  *(a2 + 16) = *(a1 + 264);
  *(a2 + 24) = *(a1 + 272);
  if (*(a1 + 303) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v2 = *(a1 + 280);
  *(a2 + 32) = v2;
  *(a2 + 48) = *(a1 + 296);
  return *&v2;
}

void sub_A19880(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_A1989C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 792) != 1)
  {
    return 0;
  }

  v2 = *(a2 + 271);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 256);
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 303);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 288);
  }

  return v3 != 0;
}

uint64_t sub_A198E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 == -1 || (*(a2 + 792) & 1) == 0)
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v4 = *(**(result + 80) + 168 * a3 + 162);
  if (v4 == 2)
  {
    if (*(a2 + 304) == 1)
    {
      operator new();
    }

    operator new();
  }

  if (v4 != 1)
  {
    if (!*(**(result + 80) + 168 * a3 + 162))
    {
      *(a4 + 23) = 15;
      strcpy(a4, "Notice_Platform");
      return result;
    }

    goto LABEL_7;
  }

  if (*(a2 + 304) == 1)
  {
    operator new();
  }

  *(a4 + 23) = 20;
  strcpy(a4, "Notice_Platform_Name");
  return result;
}

BOOL sub_A19AB8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 4 && a2 != 2 || *a3 != 2)
  {
    return 0;
  }

  if (*(a3 + 216) != 1)
  {
    return 1;
  }

  v3 = *(a3 + 183);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 168);
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(a3 + 215);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 200);
  }

  return v4 == 0;
}

uint64_t sub_A19B38@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 8)
  {
    if (result <= 11)
    {
      if (result == 9)
      {
        v2 = 15;
        a2[23] = 15;
        v3 = "_EXPRESS_TICKET";
      }

      else
      {
        if (result == 10)
        {
          goto LABEL_17;
        }

        v2 = 15;
        a2[23] = 15;
        v3 = "_NIGHT_DISCOUNT";
      }

      *a2 = *v3;
      *(a2 + 7) = *(v3 + 7);
      goto LABEL_43;
    }

    if ((result - 13) >= 3)
    {
      if (result == 12)
      {
        v2 = 10;
        a2[23] = 10;
        *(a2 + 4) = 21573;
        *a2 = *"_SL_TICKET";
        goto LABEL_43;
      }

      goto LABEL_23;
    }

LABEL_17:
    v4 = a2;
    result = sub_7E7E4(1u);
    if (!result)
    {
LABEL_37:
      v2 = 13;
      a2 = v4;
      v4[23] = 13;
      qmemcpy(v4, "_UNKNOWN_TYPE", 13);
      goto LABEL_43;
    }

    sub_19594F8(&v11);
    sub_4A5C(&v11, "Unexpected Surcharge Type: ", 27);
    std::ostream::operator<<();
    if ((v21 & 0x10) != 0)
    {
      v7 = v20;
      if (v20 < v17)
      {
        v20 = v17;
        v7 = v17;
      }

      v8 = v16;
      v5 = v7 - v16;
      if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if ((v21 & 8) == 0)
      {
        v5 = 0;
        v10 = 0;
LABEL_32:
        *(&__p + v5) = 0;
        sub_7E854(&__p, 1u);
        if (v10 < 0)
        {
          operator delete(__p);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }

        std::locale::~locale(&v13);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_37;
      }

      v8 = v14;
      v5 = v15 - v14;
      if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_45:
        sub_3244();
      }
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v10 = v5;
    if (v5)
    {
      memmove(&__p, v8, v5);
    }

    goto LABEL_32;
  }

  if (result > 3)
  {
    if ((result - 4) >= 2)
    {
      if (result == 6)
      {
        v2 = 13;
        a2[23] = 13;
        v6 = "_TRAIN_TICKET";
        goto LABEL_39;
      }

      if (result == 7)
      {
        v2 = 6;
        a2[23] = 6;
        *a2 = 1313426527;
        *(a2 + 2) = 21061;
        goto LABEL_43;
      }

LABEL_23:
      v2 = 13;
      a2[23] = 13;
      v6 = "_UNKNOWN_TYPE";
LABEL_39:
      *a2 = *v6;
      *(a2 + 5) = *(v6 + 5);
      goto LABEL_43;
    }

    goto LABEL_17;
  }

  if (result <= 1)
  {
    if (result == 1)
    {
      v2 = 14;
      a2[23] = 14;
      qmemcpy(a2, "_RESERVED_SEAT", 14);
      goto LABEL_43;
    }

    goto LABEL_23;
  }

  if (result == 2)
  {
    v2 = 18;
    a2[23] = 18;
    *(a2 + 8) = 21569;
    *a2 = *"_NON_RESERVED_SEAT";
  }

  else
  {
    v2 = 6;
    a2[23] = 6;
    *a2 = 1163020127;
    *(a2 + 2) = 20037;
  }

LABEL_43:
  a2[v2] = 0;
  return result;
}

void sub_A19F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_A19F9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 57) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = sub_64B998(a2 + 80);
  sub_A1A024(a1, (a2 + 80), v4, v5);
}

void sub_A19FF8(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_A1A024(uint64_t a1, void *a2, double a3, int32x4_t a4)
{
  v4 = **(a1 + 72);
  if (v4 == 8 || v4 == 2)
  {
    sub_A1AB08(a1, a2, &v21, a4);
    sub_A1AE7C(a1, a2, __p);
    v8 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v8 = v22;
    }

    if (v8)
    {
      sub_9CE41C(&v21, *(a1 + 96), a2);
    }

    v9 = v20;
    v10 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v9 = __p[1];
    }

    if (v9)
    {
      v11 = sub_9274F4(*(a1 + 96), __p);
      v12 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v12 = v22;
      }

      if (v12)
      {
        v13 = a2[7];
        if (v13 >= a2[8])
        {
          v14 = sub_1CEE8((a2 + 6), &xmmword_22A6298);
        }

        else
        {
          *(v13 + 16) = 0x100000000000000;
          *v13 = xmmword_22A6298;
          v14 = v13 + 24;
          a2[7] = v13 + 24;
        }

        a2[7] = v14;
      }

      sub_64C184(a2, v11);
      v10 = v20;
    }

    if ((v10 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    v15 = v24;
    if (!v24)
    {
      goto LABEL_34;
    }

    v16 = v25;
    v17 = v24;
    if (v25 == v24)
    {
LABEL_33:
      v25 = v15;
      operator delete(v17);
LABEL_34:
      if (v23 < 0)
      {
        operator delete(v21);
      }

      return;
    }

    while (1)
    {
      if (*(v16 - 1) < 0)
      {
        operator delete(*(v16 - 3));
        v18 = v16 - 6;
        if (*(v16 - 25) < 0)
        {
LABEL_31:
          operator delete(*v18);
        }
      }

      else
      {
        v18 = v16 - 6;
        if (*(v16 - 25) < 0)
        {
          goto LABEL_31;
        }
      }

      v16 = v18;
      if (v18 == v15)
      {
        v17 = v24;
        goto LABEL_33;
      }
    }
  }
}

void sub_A1A1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A1ADC0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_A1A21C(uint64_t result, unsigned __int8 *a2, void *a3)
{
  if (*(result + 40) == 1 && *a2 <= 1u)
  {
    sub_588850(0, v5);
    sub_64BF94(a3, "{IC_Artwork}");
  }

  return result;
}

void sub_A1A2D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A1A2EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = result;
  v8 = *(result + 56);
  v9 = *(result + 48);
  if (v9 != v8)
  {
    while (1)
    {
      result = sub_9BD0A4(*v9, a2);
      if ((result & 1) == 0)
      {
        break;
      }

      if (++v9 == v8)
      {
        strcpy(a4, "{BaseFare} cash fare");
        v10 = 20;
        goto LABEL_26;
      }
    }
  }

  if (*(v6 + 73) == 1 && *(v6 + 40) == 1)
  {
    strcpy(a4, "{BaseFare} IC fare");
    v10 = 18;
  }

  else
  {
    v12 = *(v6 + 56);
    v13 = *(v6 + 48);
    if (v13 != v12)
    {
      while ((sub_9BCFA4(*v13, a2) & 1) != 0)
      {
        if (++v13 == v12)
        {
          operator new();
        }
      }

      v14 = *(v6 + 48);
      v15 = *(v6 + 56);
      if (v14 != v15)
      {
        do
        {
          result = sub_9BD018(*v14, a2);
          if ((result & 1) == 0)
          {
            goto LABEL_25;
          }

          ++v14;
        }

        while (v14 != v15);
        v14 = *(v6 + 48);
        if (*(v6 + 56) - v14 >= 9uLL)
        {
          operator new();
        }
      }

      v16 = *v14;
      sub_508FC0(*v14, a2, v24);
      v17 = *(a3 + 24);
      v18 = "{BaseFare} {CardName} card fare";
      if ((v17 & 1) == 0 && !sub_2C8F00(a2, v16))
      {
        v18 = "{BaseFare} {CardName} fare";
      }

      v19 = strlen(v18);
      if (v19 < 0x7FFFFFFFFFFFFFF8)
      {
        v20 = v19;
        if (v19 < 0x17)
        {
          v23 = v19;
          if (v19)
          {
            memcpy(&__dst, v18, v19);
          }

          *(&__dst + v20) = 0;
          *v28 = *"{CardName}";
          v29 = 0xA00000000000000;
          if (SHIBYTE(v25) < 0)
          {
            sub_325C(v30, v24[0], v24[1]);
          }

          else
          {
            *v30 = *v24;
            v30[2] = v25;
          }

          memset(__p, 0, sizeof(__p));
          v26 = __p;
          v27 = 0;
          operator new();
        }

        operator new();
      }

      sub_3244();
    }

LABEL_25:
    strcpy(a4, "Board_Base_Fare");
    v10 = 15;
  }

LABEL_26:
  *(a4 + 23) = v10;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  return result;
}

void sub_A1A868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1AA90(&a10);
  sub_1AB28(&a27);
  if (a18 < 0)
  {
    operator delete(__p);
    if (a24 < 0)
    {
LABEL_6:
      operator delete(a19);
      _Unwind_Resume(a1);
    }
  }

  else if (a24 < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_A1AB08(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, int32x4_t a4@<Q1>)
{
  v5.i32[1] = 0;
  v5.i64[1] = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v6 = a1[9];
  if (*(v6 + 2104) != 1)
  {
    goto LABEL_3;
  }

  v7 = *(v6 + 2024);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_3;
  }

  if ((*(v6 + 2055) & 0x80000000) == 0)
  {
    if (!*(v6 + 2055))
    {
      goto LABEL_3;
    }

LABEL_20:
    if (v7)
    {
      sub_A1A970(a1, v6 + 2024, a2);
    }

    strcpy(a3, "Board_Base_Fare_Free");
    *(a3 + 23) = 20;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 24) = 0;
    return;
  }

  if (*(v6 + 2040))
  {
    goto LABEL_20;
  }

LABEL_3:
  v9 = a1[3];
  v8 = a1[4];
  if (v8 != v9)
  {
    v10 = 0;
    while (1)
    {
      v12 = *(v8 - 8);
      v8 -= 8;
      v11 = v12;
      v13 = *v12;
      if (*v12 == 8 || v13 == 2)
      {
        ++v10;
        if (*(v11 + 2104) == 1 && v11[506] != 0x7FFFFFFF)
        {
          v15 = *(v11 + 2055);
          if (v15 < 0)
          {
            v15 = *(v11 + 255);
          }

          if (v15)
          {
            break;
          }
        }
      }

      if (v8 == v9)
      {
        return;
      }
    }

    if (v11[517] > v10)
    {
      v16 = *(a1[11] + 1184);
      if (v16 < 2)
      {
        goto LABEL_25;
      }

      if (v16 == 2)
      {
        if (*(v6 + 2144) == 1)
        {
LABEL_25:
          operator new();
        }

        v5.i32[0] = 8;
        a4.i32[0] = *v6;
        v18 = vbicq_s8(xmmword_22A6020, vdupq_lane_s32(*&vceqq_s32(a4, v5), 0));
        if (*v6 == 8)
        {
          v17 = 0;
        }

        else
        {
          v17 = 0x6172545F65657246;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0uLL;
      }

      *&v19 = v17;
      *(&v19 + 1) = v18.i64[0];
      *a3 = v19;
      *(a3 + 16) = v18.i64[1];
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
    }
  }
}

void sub_A1AD7C(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_A1ADC0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A1ADC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 32) = v2;
      operator delete(v4);
      goto LABEL_12;
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
        v4 = *(a1 + 24);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A1AE7C@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(result + 72);
  if (*(v3 + 2144) != 1)
  {
    return result;
  }

  v4 = *(v3 + 2112);
  if (*(v3 + 2120) == v4)
  {
    sub_6FAB4();
  }

  v6 = *v4;
  if (*v4 == 0x7FFFFFFF)
  {
    goto LABEL_15;
  }

  v7 = *(v4 + 31);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (!v8)
    {
      return result;
    }

LABEL_15:
    sub_A19B38(v4[10], v17);
    if ((v18 & 0x80u) == 0)
    {
      v10 = v18;
    }

    else
    {
      v10 = v17[1];
    }

    if (v10 + 10 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v10 + 10 >= 0x17)
      {
        operator new();
      }

      *&v16.__r_.__value_.__r.__words[1] = 0x6567uLL;
      *(&v16.__r_.__value_.__s + 23) = v10 + 10;
      v16.__r_.__value_.__r.__words[0] = *"{Surcharge";
      if (v10)
      {
        if ((v18 & 0x80u) == 0)
        {
          v11 = v17;
        }

        else
        {
          v11 = v17[0];
        }

        memmove(&v16.__r_.__value_.__r.__words[1] + 2, v11, v10);
      }

      *(&v16.__r_.__value_.__r.__words[1] + v10 + 2) = 0;
      v12 = std::string::append(&v16, "}", 1uLL);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v15 = v12->__r_.__value_.__r.__words[2];
      *__p = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      sub_64EFAC(a2, __p);
    }

    sub_3244();
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v4 + 2) == 0;
  }

  if (v9)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_A1B2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_53E440(&__p);
  if (v33 < 0)
  {
    operator delete(*(v34 - 104));
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v32 & 0x80) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(v31);
  _Unwind_Resume(a1);
}

void sub_A1B378(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1[11] + 1444))
  {
    v2 = *(*a1 + 136);

    v2();
  }

  else
  {
    *(a2 + 320) = 0;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 160) = 0u;
    v3 = a2 + 160;
    sub_64B998(a2);
    sub_64B998(v3);
    *(a2 + 320) = 0;
  }
}

void sub_A1B440(uint64_t a1@<X8>)
{
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0u;
  v2 = a1 + 160;
  sub_64B998(a1);
  sub_64B998(v2);
  *(a1 + 320) = 0;
}

uint64_t sub_A1B4C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1[11] + 1444))
  {
    v3 = *(*a1 + 144);

    return v3();
  }

  else
  {
    (*(*a1 + 152))(v5);
    sub_55BD50(a2, v5);
    *(a2 + 160) = 0;
    return sub_53A868(v5);
  }
}

void sub_A1B58C(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_64B998(a1);
  *(v1 + 160) = 0;
}

void sub_A1B5D8(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, char a6@<W5>, char a7@<W6>, void **a8@<X8>)
{
  v9 = *a2;
  if (*a2 == 0x7FFFFFFF)
  {
LABEL_2:

    sub_64B998(a8);
    return;
  }

  v14 = a2;
  if (*(a2 + 8))
  {
    v15 = *(a2 + 9);
    if (v15 == 1)
    {
      v16 = 5;
    }

    else if (v15 == 2)
    {
      if ((a7 & 1) == 0)
      {
        goto LABEL_2;
      }

      v16 = 4;
    }

    else
    {
      v17 = a2[1];
      if (*(a2 + 9) || *(a2 + 8) != 1 || v17 == 0x7FFFFFFF || v9 / 60 != v17 / 60)
      {
        if (v17 <= v9)
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }
      }

      else
      {
        v16 = 1;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  sub_64B9C4(a8, (*(a1 + 88) + 1177));
  if (v16 & 6) == 2 && (a6)
  {
    v19 = 0;
    sub_64C770(a8, &xmmword_22A6030, &unk_22A6048, 2, &v19);
    sub_9CE3F8(a8, v16);
  }

  else
  {
    sub_64C184(a8, &xmmword_22A6030);
  }

  if (a5 && v16 && v16 != 5)
  {
    v14 += v14[1] != 0x7FFFFFFF;
  }

  v18 = *v14;
  sub_64E308(a8, &xmmword_22A6030, &v18, a3, a4);
}

void sub_A1B7F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  sub_64B9C4(a3, (*(a1 + 88) + 1177));
  if (!*(a2 + 8) || (v6 = *(a2 + 9), v6 == 1))
  {
    v10 = *(a1 + 96);
    v17 = 9;
    strcpy(__p, "Scheduled");
    v11 = sub_9274F4(v10, __p);
    sub_64C184(a3, v11);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (v6 == 2)
    {
      v7 = *(a1 + 96);
      v17 = 9;
      strcpy(__p, "Cancelled");
      v8 = sub_9274F4(v7, __p);
      v15 = 0;
      sub_64C770(a3, v8, &unk_22A62F8, 2, &v15);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = 4;
    }

    else
    {
      v12 = *(a2 + 4);
      if (*a2 == 0x7FFFFFFF || *(a2 + 9) || *(a2 + 8) != 1 || v12 == 0x7FFFFFFF || *a2 / 60 != v12 / 60)
      {
        operator new();
      }

      v13 = *(a1 + 96);
      v17 = 7;
      strcpy(__p, "On-time");
      v14 = sub_9274F4(v13, __p);
      v15 = 0;
      sub_64C770(a3, v14, "OnTime", 1, &v15);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = 1;
    }

    sub_9CE3F8(a3, v9);
  }
}

void sub_A1BAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v15);
  _Unwind_Resume(a1);
}

void sub_A1BB1C(uint64_t a1@<X0>, unsigned int a2@<W1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_6DEFC(a2, *(*(a1 + 88) + 968));
  if (v6 > 1)
  {
    switch(v6)
    {
      case 2:
        if (*(a3 + 23) >= 0)
        {
          v7 = *(a3 + 23);
        }

        else
        {
          v7 = a3[1];
        }

        if (v7 + 3 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v7 + 3 >= 0x17)
          {
            operator new();
          }

          v18.__r_.__value_.__r.__words[2] = 0;
          *&v18.__r_.__value_.__l.__data_ = 0x776546uLL;
          *(&v18.__r_.__value_.__s + 23) = v7 + 3;
          v10 = &v18.__r_.__value_.__s.__data_[3];
          if (v7)
          {
            if (*(a3 + 23) >= 0)
            {
              v11 = a3;
            }

            else
            {
              v11 = *a3;
            }

            memmove(v18.__r_.__value_.__r.__words + 3, v11, v7);
          }

          goto LABEL_67;
        }

        goto LABEL_70;
      case 3:
        if (*(a3 + 23) >= 0)
        {
          v7 = *(a3 + 23);
        }

        else
        {
          v7 = a3[1];
        }

        if (v7 + 4 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v7 + 4 >= 0x17)
          {
            operator new();
          }

          *&v18.__r_.__value_.__r.__words[1] = 0uLL;
          *(&v18.__r_.__value_.__s + 23) = v7 + 4;
          v10 = &v18.__r_.__value_.__s.__data_[4];
          v18.__r_.__value_.__r.__words[0] = 2037277005;
          if (v7)
          {
            if (*(a3 + 23) >= 0)
            {
              v12 = a3;
            }

            else
            {
              v12 = *a3;
            }

            memmove(v18.__r_.__value_.__r.__words + 4, v12, v7);
          }

          goto LABEL_67;
        }

LABEL_70:
        sub_3244();
      case 4:
        if (*(a3 + 23) >= 0)
        {
          v7 = *(a3 + 23);
        }

        else
        {
          v7 = a3[1];
        }

        if (v7 + 5 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v7 + 5 >= 0x17)
          {
            operator new();
          }

          HIDWORD(v18.__r_.__value_.__r.__words[1]) = 0;
          v18.__r_.__value_.__r.__words[2] = 0;
          *(&v18.__r_.__value_.__s + 23) = v7 + 5;
          *(v18.__r_.__value_.__r.__words + 4) = 114;
          v10 = &v18.__r_.__value_.__s.__data_[5];
          LODWORD(v18.__r_.__value_.__l.__data_) = 1701344335;
          if (v7)
          {
            if (*(a3 + 23) >= 0)
            {
              v15 = a3;
            }

            else
            {
              v15 = *a3;
            }

            memmove(v18.__r_.__value_.__r.__words + 5, v15, v7);
          }

LABEL_67:
          v10[v7] = 0;
          v17 = std::string::append(&v18, "s", 1uLL);
          *a4 = *v17;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v18.__r_.__value_.__l.__data_);
          }

          return;
        }

        goto LABEL_70;
    }

LABEL_37:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      if (*(a3 + 23) >= 0)
      {
        v7 = *(a3 + 23);
      }

      else
      {
        v7 = a3[1];
      }

      if (v7 + 3 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 + 3 >= 0x17)
        {
          operator new();
        }

        v18.__r_.__value_.__r.__words[2] = 0;
        *&v18.__r_.__value_.__l.__data_ = 0x6F7754uLL;
        *(&v18.__r_.__value_.__s + 23) = v7 + 3;
        v10 = &v18.__r_.__value_.__s.__data_[3];
        if (v7)
        {
          if (*(a3 + 23) >= 0)
          {
            v16 = a3;
          }

          else
          {
            v16 = *a3;
          }

          memmove(v18.__r_.__value_.__r.__words + 3, v16, v7);
        }

        goto LABEL_67;
      }

      goto LABEL_70;
    }

    goto LABEL_37;
  }

  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  v9 = v8 + 3;
  if (v8 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_70;
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 23) = v9;
  *(a4 + 2) = 101;
  v13 = (a4 + 3);
  *a4 = 28239;
  if (v8)
  {
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    memmove(v13, v14, v8);
  }

  *(v13 + v8) = 0;
}

void sub_A1C004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A1C02C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *v65 = 0u;
  *v66 = 0u;
  v67 = *(a3 + 32);
  prime = *(a3 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v65, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a3 + 8));
    v9 = v65[1];
    v10 = prime >= v65[1];
    if (prime > v65[1])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v10)
  {
    v11 = vcvtps_u32_f32(v66[1] / v67);
    if (v9 < 3 || (v12 = vcnt_s8(v9), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
    {
      v11 = std::__next_prime(v11);
    }

    else
    {
      v13 = 1 << -__clz(v11 - 1);
      if (v11 >= 2)
      {
        v11 = v13;
      }
    }

    if (prime <= v11)
    {
      prime = v11;
    }

    if (prime < v9)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a3 + 16); i; i = *i)
  {
    sub_2C7D4(v65, (i + 2));
  }

  v15 = a1[59];
  v16 = a1[60];
  if (v15 != v16)
  {
    while (1)
    {
      v17 = sub_3536DC(v65, v15);
      if (!v17)
      {
        goto LABEL_23;
      }

      v18 = v65[1];
      v19 = v17[1];
      v20 = vcnt_s8(v65[1]);
      v20.i16[0] = vaddlv_u8(v20);
      if (v20.u32[0] > 1uLL)
      {
        if (v19 >= v65[1])
        {
          v19 %= v65[1];
        }
      }

      else
      {
        v19 &= v65[1] - 1;
      }

      v21 = *v17;
      v22 = v65[0];
      v23 = *(v65[0] + v19);
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23 != v17);
      if (v24 != v66)
      {
        v25 = v24[1];
        if (v20.u32[0] > 1uLL)
        {
          if (v25 >= v65[1])
          {
            v25 %= v65[1];
          }
        }

        else
        {
          v25 &= v65[1] - 1;
        }

        if (v25 == v19)
        {
          goto LABEL_44;
        }
      }

      if (!v21)
      {
        break;
      }

      v26 = v21[1];
      if (v20.u32[0] > 1uLL)
      {
        if (v26 >= v65[1])
        {
          v26 %= v65[1];
        }
      }

      else
      {
        v26 &= v65[1] - 1;
      }

      if (v26 != v19)
      {
        break;
      }

LABEL_45:
      v27 = v21[1];
      if (v20.u32[0] > 1uLL)
      {
        if (v27 >= v18)
        {
          v27 %= v18;
        }
      }

      else
      {
        v27 &= v18 - 1;
      }

      if (v27 != v19)
      {
        v22[v27] = v24;
        v21 = *v17;
      }

LABEL_51:
      *v24 = v21;
      *v17 = 0;
      --v66[1];
      if (*(v17 + 63) < 0)
      {
        v28 = v17;
        operator delete(v17[5]);
        v17 = v28;
        if (*(v28 + 39) < 0)
        {
LABEL_55:
          v29 = v17;
          operator delete(v17[2]);
          v17 = v29;
        }
      }

      else if (*(v17 + 39) < 0)
      {
        goto LABEL_55;
      }

      operator delete(v17);
LABEL_23:
      v15 += 144;
      if (v15 == v16)
      {
        goto LABEL_56;
      }
    }

    *(v65[0] + v19) = 0;
    v21 = *v17;
LABEL_44:
    if (!v21)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_56:
  *v62 = 0u;
  *v63 = 0u;
  v64 = 1065353216;
  v30 = a1[62];
  v31 = a1[63];
  if (v30 != v31)
  {
    v32 = (v30 + 24);
    do
    {
      v36 = sub_3536DC(v65, (v32 - 3));
      v37 = v36;
      if (v36)
      {
        v38 = (v36 + 5);
        sub_977A7C(v62, (v36 + 2));
        if (v32 != v38)
        {
          v39 = *(v32 + 23);
          if (*(v37 + 63) < 0)
          {
            if (v39 >= 0)
            {
              v33 = v32;
            }

            else
            {
              v33 = *v32;
            }

            if (v39 >= 0)
            {
              v34 = *(v32 + 23);
            }

            else
            {
              v34 = v32[1];
            }

            sub_13B38((v37 + 5), v33, v34);
          }

          else if ((*(v32 + 23) & 0x80) != 0)
          {
            sub_13A68(v37 + 40, *v32, v32[1]);
          }

          else
          {
            v40 = *v32;
            v37[7] = v32[2];
            *v38 = v40;
          }
        }
      }

      v35 = v32 + 3;
      v32 += 6;
    }

    while (v35 != v31);
  }

  sub_6A5584(a2, v65, a1[12], 0, __p);
  sub_6A56A4(__p, v62);
  sub_64C184(a4, __p);
  v41 = a1[59];
  for (j = a1[60]; v41 != j; v41 += 144)
  {
    v43 = v61;
    if ((v61 & 0x80u) == 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = __p[0];
    }

    if ((v61 & 0x80u) != 0)
    {
      v43 = __p[1];
    }

    v45 = v41[23];
    if (v45 >= 0)
    {
      v46 = v41;
    }

    else
    {
      v46 = *v41;
    }

    if (v45 >= 0)
    {
      v47 = v41[23];
    }

    else
    {
      v47 = *(v41 + 1);
    }

    if (v47)
    {
      if (v43 >= v47)
      {
        v48 = v44 + v43;
        v49 = *v46;
        v50 = v44;
        do
        {
          v51 = v43 - v47;
          if (v51 == -1)
          {
            break;
          }

          v52 = memchr(v50, v49, v51 + 1);
          if (!v52)
          {
            break;
          }

          v53 = v52;
          if (!memcmp(v52, v46, v47))
          {
            if (v53 != v48 && v53 - v44 != -1)
            {
              goto LABEL_74;
            }

            break;
          }

          v50 = (v53 + 1);
          v43 = v48 - (v53 + 1);
        }

        while (v43 >= v47);
      }
    }

    else
    {
LABEL_74:
      sub_64BF34(a4, v41);
    }
  }

  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  v54 = v63[0];
  if (v63[0])
  {
    do
    {
      v58 = *v54;
      if (*(v54 + 63) < 0)
      {
        operator delete(v54[5]);
        if (*(v54 + 39) < 0)
        {
LABEL_112:
          operator delete(v54[2]);
        }
      }

      else if (*(v54 + 39) < 0)
      {
        goto LABEL_112;
      }

      operator delete(v54);
      v54 = v58;
    }

    while (v58);
  }

  v55 = v62[0];
  v62[0] = 0;
  if (v55)
  {
    operator delete(v55);
  }

  v56 = v66[0];
  if (v66[0])
  {
    do
    {
      v59 = *v56;
      if (*(v56 + 63) < 0)
      {
        operator delete(v56[5]);
        if (*(v56 + 39) < 0)
        {
LABEL_118:
          operator delete(v56[2]);
        }
      }

      else if (*(v56 + 39) < 0)
      {
        goto LABEL_118;
      }

      operator delete(v56);
      v56 = v59;
    }

    while (v59);
  }

  v57 = v65[0];
  v65[0] = 0;
  if (v57)
  {
    operator delete(v57);
  }
}

void sub_A1C584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_2CD04(va);
  sub_2CD04(va1);
  _Unwind_Resume(a1);
}

void sub_A1C5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_A1C5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_2CD04(&a16);
    sub_2CD04(&a22);
    _Unwind_Resume(a1);
  }

  sub_2CD04(&a16);
  sub_2CD04(&a22);
  _Unwind_Resume(a1);
}

void sub_A1C628(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    sub_A16654(a1, a2, a3, a4, v14);
    if (*(a2 + 23) < 0)
    {
      sub_325C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v13 = *(a2 + 16);
    }

    v7 = (*(*a1 + 112))(a1);
    v8 = (*(*a1 + 120))(a1);
    sub_9CD974(v14, v7, v8, *(a1 + 160), a1[12], a2);
    sub_A1C02C(a1, a2, v14, (a2 + 80));
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = v15;
    if (!v15)
    {
LABEL_10:
      v10 = v14[0];
      v14[0] = 0;
      if (v10)
      {
        operator delete(v10);
      }

      return;
    }

    while (1)
    {
      v11 = *v9;
      if (*(v9 + 63) < 0)
      {
        operator delete(v9[5]);
        if (*(v9 + 39) < 0)
        {
LABEL_18:
          operator delete(v9[2]);
        }
      }

      else if (*(v9 + 39) < 0)
      {
        goto LABEL_18;
      }

      operator delete(v9);
      v9 = v11;
      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }
}

void sub_A1C794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_A1C7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a15);
  _Unwind_Resume(a1);
}

void sub_A1C7CC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v37 = 0uLL;
  v38 = 0;
  if (*(a2 + 24) == *(a2 + 32))
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  sub_A16654(a1, a2, a3, a4, v35);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  while (v8 != v9)
  {
    if (*(v8 + 23) < 0)
    {
      sub_325C(__len, *v8, *(v8 + 1));
    }

    else
    {
      v10 = *v8;
      v33 = *(v8 + 2);
      *__len = v10;
    }

    v11 = *(v8 + 24);
    v34 = *(v8 + 24);
    v12 = HIBYTE(v33);
    v13 = HIBYTE(v33);
    if (v33 < 0)
    {
      v12 = __len[1];
    }

    if (v12)
    {
      __p[0] = 0;
      __p[1] = 0;
      v31 = 0;
      if (v11)
      {
        v14 = (*(*a1 + 112))(a1);
        v15 = (*(*a1 + 120))(a1);
        sub_9CD974(v35, v14, v15, *(a1 + 160), *(a1 + 96), __len);
        sub_6A5584(__len, v35, *(a1 + 96), 0, &v28);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v28;
        v31 = v29;
      }

      else if (SHIBYTE(v33) < 0)
      {
        sub_13A68(__p, __len[0], __len[1]);
      }

      else
      {
        *__p = *__len;
        v31 = v33;
      }

      v16 = HIBYTE(v31);
      v17 = HIBYTE(v31);
      if (v31 < 0)
      {
        v16 = __p[1];
      }

      if (v16)
      {
        v18 = *(&v37 + 1);
        if (*(&v37 + 1) >= v38)
        {
          v20 = sub_1CEE8(&v37, __p);
        }

        else
        {
          if (SHIBYTE(v31) < 0)
          {
            sub_325C(*(&v37 + 1), __p[0], __p[1]);
          }

          else
          {
            v19 = *__p;
            *(*(&v37 + 1) + 16) = v31;
            *v18 = v19;
          }

          v20 = v18 + 24;
        }

        *(&v37 + 1) = v20;
        v17 = HIBYTE(v31);
      }

      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = HIBYTE(v33);
    }

    if (v13 < 0)
    {
      operator delete(__len[0]);
    }

    v8 += 2;
  }

  *a5 = v37;
  a5[2] = v38;
  v38 = 0;
  v37 = 0uLL;
  v21 = v36;
  if (v36)
  {
    while (1)
    {
      v22 = *v21;
      if (v21[63] < 0)
      {
        operator delete(*(v21 + 5));
        if ((v21[39] & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_39:
        operator delete(*(v21 + 2));
        operator delete(v21);
        v21 = v22;
        if (!v22)
        {
          break;
        }
      }

      else
      {
        if (v21[39] < 0)
        {
          goto LABEL_39;
        }

LABEL_36:
        operator delete(v21);
        v21 = v22;
        if (!v22)
        {
          break;
        }
      }
    }
  }

  v23 = v35[0];
  v35[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = v37;
  if (v37)
  {
    v25 = *(&v37 + 1);
    v26 = v37;
    if (*(&v37 + 1) != v37)
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
      v26 = v37;
    }

    *(&v37 + 1) = v24;
    operator delete(v26);
  }
}

void sub_A1CAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v29 - 72) = v28;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_2CD04(&a28);
  sub_1A104((v29 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_A1CB48@<X0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  (*(*a1 + 96))(&v55);
  v8 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v8 = v56;
  }

  if (!v8 && sub_4D1F6C(v63) && v58 == v59)
  {
    sub_64B998(a4);
    return sub_9721FC(&v55);
  }

  v9 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v9 = v56;
  }

  if (v9)
  {
    sub_A1C628(a1, &v55, a2, a3);
    goto LABEL_10;
  }

  if (v58 == v59)
  {
    goto LABEL_10;
  }

  sub_A1C7CC(a1, &v55, a2, a3, &v53);
  if ((v62 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v11 = v53;
    v12 = v54;
    if (v54 == v53)
    {
LABEL_77:
      sub_64C184(v63, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v11)
        {
          goto LABEL_87;
        }

        goto LABEL_10;
      }

LABEL_78:
      if (!v11)
      {
        goto LABEL_10;
      }

      goto LABEL_87;
    }

    v32 = 0;
    v33 = 0;
    v34 = 0xAAAAAAAAAAAAAAABLL * (v54 - v53);
    v35 = v53;
    while (1)
    {
      v36 = *(v35 + 23);
      v37 = v36 >= 0 ? v35 : *v35;
      v38 = v36 >= 0 ? *(v35 + 23) : v35[1];
      std::string::append(&__p, v37, v38);
      if (v33 < 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3))
      {
        break;
      }

LABEL_48:
      ++v33;
      v35 += 3;
      v32 += 24;
      if (v34 == v33)
      {
        goto LABEL_77;
      }
    }

    v39 = (v60 + v32);
    v40 = *(v60 + v32 + 23);
    v41 = v40;
    v42 = *(v60 + v32 + 8);
    if (v40 < 0)
    {
      v40 = v39[1];
    }

    if (v40 == (&dword_0 + 1) && ((v43 = *v39, v41 >= 0) ? (v44 = (v60 + v32)) : (v44 = *v39), *v44 == 32))
    {
      if (v41 < 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v45 = sub_9274F4(a1[12], v60 + v32);
      v39 = v45;
      if (*(v45 + 23) < 0)
      {
        v43 = *v45;
        v42 = v45[1];
LABEL_68:
        sub_325C(v50, v43, v42);
LABEL_69:
        if (SHIBYTE(v51) >= 0)
        {
          v47 = v50;
        }

        else
        {
          v47 = v50[0];
        }

        if (SHIBYTE(v51) >= 0)
        {
          v48 = HIBYTE(v51);
        }

        else
        {
          v48 = v50[1];
        }

        std::string::append(&__p, v47, v48);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        goto LABEL_48;
      }
    }

    v46 = *v39;
    v51 = v39[2];
    *v50 = v46;
    goto LABEL_69;
  }

  v11 = v53;
  v12 = v54;
  sub_74300(v63, v53, v54, 0xAAAAAAAAAAAAAAABLL * (v54 - v53));
  v13 = v60;
  v14 = v61;
  if (v60 == v61)
  {
    goto LABEL_78;
  }

  do
  {
    v17 = *(v13 + 23);
    v18 = v17;
    v19 = *(v13 + 8);
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(v13 + 8);
    }

    if (v17 == 1 && ((v20 = *v13, v18 >= 0) ? (v21 = v13) : (v21 = *v13), *v21 == 32))
    {
      v22 = v13;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = sub_9274F4(a1[12], v13);
      if ((*(v22 + 23) & 0x80000000) == 0)
      {
LABEL_29:
        v23 = *v22;
        __p.__r_.__value_.__r.__words[2] = v22[2];
        *&__p.__r_.__value_.__l.__data_ = v23;
        goto LABEL_32;
      }

      v20 = *v22;
      v19 = v22[1];
    }

    sub_325C(&__p, v20, v19);
LABEL_32:
    v24 = v65;
    if (v65 < v66)
    {
      v15 = *&__p.__r_.__value_.__l.__data_;
      *(v65 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v24 = v15;
      v16 = v24 + 24;
LABEL_17:
      v65 = v16;
      goto LABEL_18;
    }

    v25 = v64;
    v26 = v65 - v64;
    v27 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3);
    v28 = v27 + 1;
    if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    if (0x5555555555555556 * ((v66 - v64) >> 3) > v28)
    {
      v28 = 0x5555555555555556 * ((v66 - v64) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v66 - v64) >> 3) >= 0x555555555555555)
    {
      v29 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      if (v29 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v30 = (8 * ((v65 - v64) >> 3));
    *v30 = __p;
    memset(&__p, 0, sizeof(__p));
    v16 = 24 * v27 + 24;
    v31 = 24 * v27 - v26;
    memcpy(v30 - v26, v25, v26);
    v64 = v31;
    v65 = v16;
    v66 = 0;
    if (!v25)
    {
      goto LABEL_17;
    }

    operator delete(v25);
    v65 = v16;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_18:
    v13 += 24;
  }

  while (v13 != v14);
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_87:
  while (v12 != v11)
  {
    v49 = *(v12 - 1);
    v12 -= 3;
    if (v49 < 0)
    {
      operator delete(*v12);
    }
  }

  operator delete(v11);
LABEL_10:
  sub_55BD50(a4, v63);
  return sub_9721FC(&v55);
}

void sub_A1D008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a23 < 0)
  {
    operator delete(__p);
    sub_1A104(&a25);
    sub_9721FC(&a28);
    _Unwind_Resume(a1);
  }

  sub_1A104(&a25);
  sub_9721FC(&a28);
  _Unwind_Resume(a1);
}

void sub_A1D0C0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  sub_64B9C4(a3, (*(a1 + 88) + 1177));
  memset(&__p, 0, sizeof(__p));
  if (a2 > 599)
  {
    *(&__p.__r_.__value_.__s + 23) = 15;
    strcpy(&__p, "Walk {WalkTime}");
    v7 = a2 & 0x7FFFFFFF;
    v6 = "{WalkTime}";
  }

  else
  {
    sub_195A048(&__p, "Walk less than {OneMinute}", 0x1AuLL);
    v6 = "{OneMinute}";
    v7 = 600;
  }

  sub_64E914(a3, v6, v7);
  v8 = sub_9274F4(*(a1 + 96), &__p);
  sub_64C184(a3, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_A1D1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v15);
  _Unwind_Resume(a1);
}

void sub_A1D1DC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B9C4(a3, (*(a1 + 88) + 1177));
  v6 = sub_9BCE28(*(a1 + 80), a2);
  v7 = sub_9BCBDC(*(a1 + 80), a2);
  v8 = *(a1 + 96);
  sub_9CC800(v7, v6, __p);
  v9 = sub_9274F4(v8, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  LOBYTE(__p[0]) = 0;
  sub_64C770(a3, v9, &unk_22A62F8, 2, __p);
  *(a3 + 104) = 5;
}

void sub_A1D2E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B9C4(a2, (*(a1 + 88) + 1177));
  sub_9CBE3C(*(a1 + 132), v10);
  if ((v11 & 0x80u) == 0)
  {
    v4 = v11;
  }

  else
  {
    v4 = v10[1];
  }

  if (v4 + 10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  HIBYTE(v9) = v4 + 10;
  if (v4)
  {
    if ((v11 & 0x80u) == 0)
    {
      v5 = v10;
    }

    else
    {
      v5 = v10[0];
    }

    memmove(__p, v5, v4);
  }

  strcpy(__p + v4, " cancelled");
  v6 = sub_9274F4(*(a1 + 96), __p);
  v7 = 0;
  sub_64C770(a2, v6, &unk_22A62F8, 2, &v7);
  *(a2 + 104) = 4;
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(v10[0]);
    return;
  }

  operator delete(__p[0]);
  if (v11 < 0)
  {
    goto LABEL_16;
  }
}

void sub_A1D474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      sub_53A868(v22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  sub_53A868(v22);
  _Unwind_Resume(a1);
}

void sub_A1D550(uint64_t a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = a2[275];
  v8 = a2[276];
  if (v7 == v8)
  {
    sub_A1D87C(v17, a1, a2[94], 0, 0, a3);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v15 = a4;
    v16 = 0;
    operator new();
  }

  v9 = 0;
  v10 = 0;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v11 = (v8 - v7) >> 4;
  do
  {
    sub_A1D87C(v17, a1, *(a2[275] + v9), v10, 1, 1);
    v12 = a4[1];
    if (v12 >= a4[2])
    {
      v13 = sub_A1E90C(a4, v17);
    }

    else
    {
      sub_A1E838(a4[1], v17);
      v13 = v12 + 160;
    }

    a4[1] = v13;
    if (v26 < 0)
    {
      operator delete(__p);
      if (v24 < 0)
      {
LABEL_12:
        operator delete(v23);
        v14 = v22;
        if (v22 == -1)
        {
          goto LABEL_14;
        }

LABEL_13:
        (off_266FAE8[v14])(&v15, &v21);
        goto LABEL_14;
      }
    }

    else if (v24 < 0)
    {
      goto LABEL_12;
    }

    v14 = v22;
    if (v22 != -1)
    {
      goto LABEL_13;
    }

LABEL_14:
    v22 = -1;
    if (v20 < 0)
    {
      operator delete(v19);
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_3;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    operator delete(v17[0]);
LABEL_3:
    ++v10;
    v9 += 16;
  }

  while (v11 != v10);
}

void sub_A1D7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A1D87C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6)
{
  v6 = *(*(a2 + 80) + 72);
  if (0x66FD0EB66FD0EB67 * ((*(*(a2 + 80) + 80) - v6) >> 3) <= a3)
  {
    sub_6FAB4();
  }

  v11 = v6 + 696 * a3;
  if (*(v11 + 559) == 1)
  {
    v33 = 0uLL;
    v34 = 0;
    if (!a6)
    {
      goto LABEL_15;
    }
  }

  else if (a5)
  {
    sub_9D45C0(v11, v23);
    v33 = *v23;
    v34 = v24;
    v23[1] = 0;
    *&v24 = 0;
    v23[0] = 0;
    if (SLOBYTE(__p_15[1]) < 0)
    {
      operator delete(__p);
      if (SBYTE7(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (!a6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_9D4538(v11, &v33);
    if (!a6)
    {
      goto LABEL_15;
    }
  }

  if (*(*(a2 + 112) + 8) == 1)
  {
    v12 = *(v11 + 616);
    if (*(v11 + 624) - v12 == 1 && *v12 == 1)
    {
      sub_55F1E8(v23, v11 + 104);
      goto LABEL_16;
    }
  }

LABEL_15:
  __p = 0;
  v32 = 0u;
  *v23 = 0u;
  v24 = 0u;
  memset(__p_8, 255, sizeof(__p_8));
  *__p_15 = 0uLL;
  v28 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v31 = 0;
  *&v32 = 0;
  BYTE8(v32) = 0;
LABEL_16:
  std::to_string(&v20, a4);
  v13 = std::string::insert(&v20, 0, "{Line", 5uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v21, "}", 1uLL);
  v16 = v15->__r_.__value_.__r.__words[0];
  size = v15->__r_.__value_.__l.__size_;
  v22[0] = v15->__r_.__value_.__r.__words[2];
  *(v22 + 3) = *(&v15->__r_.__value_.__r.__words[2] + 3);
  v18 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v18 & 0x80000000) == 0)
  {
LABEL_19:
    *a1 = v16;
    *(a1 + 8) = size;
    *(a1 + 16) = v22[0];
    *(a1 + 19) = *(v22 + 3);
    *(a1 + 23) = v18;
    goto LABEL_23;
  }

LABEL_22:
  sub_325C(a1, v16, size);
LABEL_23:
  if (SHIBYTE(v34) < 0)
  {
    sub_325C((a1 + 24), v33, *(&v33 + 1));
  }

  else
  {
    *(a1 + 24) = v33;
    *(a1 + 40) = v34;
  }

  sub_55F1E8(a1 + 48, v23);
  if (v18 < 0)
  {
    operator delete(v16);
    if ((SBYTE7(v32) & 0x80000000) == 0)
    {
LABEL_28:
      if ((v29[0] & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_33:
      operator delete(*(__p_15 + 1));
      v19 = __p;
      if (__p == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((SBYTE7(v32) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v30);
  if ((v29[0] & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  v19 = __p;
  if (__p != -1)
  {
LABEL_34:
    (off_266FAE8[v19])(&v21, v23);
  }

LABEL_35:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }
}

void sub_A1DB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A1DC30(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    v2 = *(a1 + 80);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
LABEL_7:
    (off_266FAE8[v2])(&v4, a1 + 48);
  }

LABEL_8:
  *(a1 + 80) = -1;
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

BOOL sub_A1DD00(uint64_t a1, uint64_t *a2)
{
  if (*(*(a1 + 112) + 8))
  {
    v2 = *a2;
    if (*(*(a1 + 88) + 1177) >= 0xBu)
    {
      v3 = a2[1];
      if (v2 != v3)
      {
        v4 = *a2;
        while (1)
        {
          v6 = *(v4 + 80);
          if (v6 > 2)
          {
            if (v6 != 3 && v6 != 4)
            {
              goto LABEL_25;
            }

            v5 = *(v4 + 71);
            if ((v5 & 0x80u) != 0)
            {
              v5 = *(v4 + 56);
            }

            if (!v5)
            {
              goto LABEL_25;
            }
          }

          else if (v6 == 1)
          {
            if (*(v4 + 48) == -1)
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v6 != 2)
            {
              goto LABEL_25;
            }

            v7 = *(v4 + 52) == -1 && *(v4 + 48) == -1;
            if (v7 && *(v4 + 56) == *(v4 + 64))
            {
              goto LABEL_25;
            }
          }

          v4 += 160;
          if (v4 == v3)
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  else
  {
    v2 = *a2;
  }

LABEL_25:
  v8 = a2[1];
  if (v2 == v8)
  {
    return 0;
  }

  v9 = v2 + 160;
  do
  {
    v10 = *(v9 - 128);
    if (*(v9 - 113) >= 0)
    {
      v10 = *(v9 - 113);
    }

    result = v10 == 0;
    if (v10)
    {
      v12 = v9 == v8;
    }

    else
    {
      v12 = 1;
    }

    v9 += 160;
  }

  while (!v12);
  return result;
}

BOOL sub_A1DE00(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 0;
  }

  v3 = *a2 + 160;
  do
  {
    v4 = *(v3 - 128);
    if (*(v3 - 113) >= 0)
    {
      v4 = *(v3 - 113);
    }

    result = v4 == 0;
    if (v4)
    {
      v6 = v3 == v2;
    }

    else
    {
      v6 = 1;
    }

    v3 += 160;
  }

  while (!v6);
  return result;
}

void sub_A1DE44(void *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  sub_64B9C4(a7, (a1[11] + 1177));
  sub_9CBE3C(a5, v73);
  v14 = sub_A1DD00(a1, a3);
  if (*(a4 + 23) >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 1);
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v60 = v14;
  if (!a6 || v16)
  {
    if ((v74 & 0x80u) == 0)
    {
      v20 = v74;
    }

    else
    {
      v20 = v73[1];
    }

    if (v20 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v20 + 1 >= 0x17)
    {
      operator new();
    }

    v71 = 0;
    v72 = 0;
    HIBYTE(v72) = v20 + 1;
    v70 = &stru_20;
    if (v20)
    {
      if ((v74 & 0x80u) == 0)
      {
        v46 = v73;
      }

      else
      {
        v46 = v73[0];
      }

      memmove(&v70 + 1, v46, v20);
    }

    *(&v70 + v20 + 1) = 0;
    v17 = v60;
    if (v15)
    {
      v47 = 9;
    }

    else
    {
      v47 = 0;
    }

    v69 = v47;
    v19 = &v67;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = v14;
    HIBYTE(v72) = 0;
    LOBYTE(v70) = 0;
    if (v15)
    {
      v18 = 9;
    }

    else
    {
      v18 = 0;
    }

    v69 = v18;
    v19 = &v67;
    if (v15)
    {
LABEL_13:
      v19 = (&v68 + 1);
      LOBYTE(v68) = 125;
      v67 = *" {System}";
    }
  }

  *v19 = 0;
  if (v17)
  {
    HIBYTE(v66) = 0;
    LOBYTE(v65[0]) = 0;
    goto LABEL_24;
  }

  std::to_string(v61, 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 5));
  v21 = std::string::insert(v61, 0, " {MultipleLine", 0xEuLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v75, "}", 1uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v66 = v23->__r_.__value_.__r.__words[2];
  *v65 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
    if ((v61[23] & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v61[23] & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(*v61);
LABEL_24:
  if (*(a2 + 23) >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = a2[1];
  }

  v26 = v69;
  if (v69 >= 0)
  {
    v27 = v69;
  }

  else
  {
    v27 = v68;
  }

  if (v27 + v25 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v27 + v25 > 0x16)
  {
    operator new();
  }

  memset(v61, 0, 24);
  v61[23] = v27 + v25;
  if (v25)
  {
    if (*(a2 + 23) >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    memmove(v61, v28, v25);
  }

  if (v27)
  {
    if (v26 >= 0)
    {
      v29 = &v67;
    }

    else
    {
      v29 = v67;
    }

    memmove(&v61[v25], v29, v27);
  }

  v61[v25 + v27] = 0;
  if (v66 >= 0)
  {
    v30 = v65;
  }

  else
  {
    v30 = v65[0];
  }

  if (v66 >= 0)
  {
    v31 = HIBYTE(v66);
  }

  else
  {
    v31 = v65[1];
  }

  v32 = std::string::append(v61, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (v72 >= 0)
  {
    v34 = &v70;
  }

  else
  {
    v34 = v70;
  }

  if (v72 >= 0)
  {
    v35 = HIBYTE(v72);
  }

  else
  {
    v35 = v71;
  }

  v36 = std::string::append(&v75, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v64 = v36->__r_.__value_.__r.__words[2];
  *__p = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
    if ((v61[23] & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else if ((v61[23] & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(*v61);
LABEL_57:
  *&v75.__r_.__value_.__l.__data_ = *"{System}";
  v75.__r_.__value_.__r.__words[2] = 0x800000000000000;
  if (*(a4 + 23) < 0)
  {
    sub_325C(&v76, *a4, *(a4 + 1));
  }

  else
  {
    v76 = *a4;
    v77 = *(a4 + 2);
  }

  memset(v61, 0, sizeof(v61));
  v62 = 1065353216;
  sub_2C7D4(v61, &v75);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_64:
      if (*(a1[14] + 8))
      {
        goto LABEL_65;
      }

LABEL_90:
      v44 = 0;
      v38 = *a3;
      v45 = a3[1];
      if (*a3 == v45)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }
  }

  else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  operator delete(v75.__r_.__value_.__l.__data_);
  if ((*(a1[14] + 8) & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_65:
  v38 = *a3;
  if (*(a1[11] + 1177) < 0xBu)
  {
LABEL_86:
    v44 = 0;
    v45 = a3[1];
    if (v38 == v45)
    {
      goto LABEL_108;
    }

    goto LABEL_105;
  }

  v39 = a3[1];
  if (v38 != v39)
  {
    for (i = *a3; i != v39; i += 160)
    {
      v42 = *(i + 80);
      if (v42 > 2)
      {
        if (v42 != 3 && v42 != 4)
        {
          goto LABEL_86;
        }

        v41 = *(i + 71);
        if ((v41 & 0x80u) != 0)
        {
          v41 = *(i + 56);
        }

        if (!v41)
        {
          goto LABEL_86;
        }
      }

      else if (v42 == 1)
      {
        if (*(i + 48) == -1)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v42 != 2)
        {
          goto LABEL_86;
        }

        v43 = *(i + 52) == -1 && *(i + 48) == -1;
        if (v43 && *(i + 56) == *(i + 64))
        {
          goto LABEL_86;
        }
      }
    }
  }

  v44 = 1;
  v45 = a3[1];
  if (v38 != v45)
  {
LABEL_105:
    if (v44)
    {
      sub_64BF94(a7, v38);
    }

    if (!v60)
    {
      v51 = v38 + 3;
      do
      {
        v75.__r_.__value_.__r.__words[0] = (v51 - 3);
        v55 = sub_353894(v61, (v51 - 3));
        v56 = (v55 + 5);
        if (v51 != (v55 + 5))
        {
          v57 = *(v55 + 63);
          v58 = *(v51 + 23);
          if (v57 < 0)
          {
            if (v58 >= 0)
            {
              v52 = v51;
            }

            else
            {
              v52 = *v51;
            }

            if (v58 >= 0)
            {
              v53 = *(v51 + 23);
            }

            else
            {
              v53 = v51[1];
            }

            sub_13B38(v56, v52, v53);
          }

          else if ((*(v51 + 23) & 0x80) != 0)
          {
            sub_13A68(v56, *v51, v51[1]);
          }

          else
          {
            v59 = *v51;
            *(v56 + 16) = v51[2];
            *v56 = v59;
          }
        }

        v54 = (v51 + 17);
        v51 += 20;
      }

      while (v54 != v45);
    }
  }

LABEL_108:
  sub_6A5584(__p, v61, a1[12], 0, &v75);
  sub_64C184(a7, &v75);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  v48 = *&v61[16];
  if (*&v61[16])
  {
    while (1)
    {
      v49 = *v48;
      if (v48[63] < 0)
      {
        operator delete(*(v48 + 5));
        if ((v48[39] & 0x80000000) == 0)
        {
          goto LABEL_113;
        }

LABEL_116:
        operator delete(*(v48 + 2));
        operator delete(v48);
        v48 = v49;
        if (!v49)
        {
          break;
        }
      }

      else
      {
        if (v48[39] < 0)
        {
          goto LABEL_116;
        }

LABEL_113:
        operator delete(v48);
        v48 = v49;
        if (!v49)
        {
          break;
        }
      }
    }
  }

  v50 = *v61;
  *v61 = 0;
  if (v50)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
LABEL_121:
      if ((v69 & 0x80000000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_127;
    }
  }

  else if ((SHIBYTE(v66) & 0x80000000) == 0)
  {
    goto LABEL_121;
  }

  operator delete(v65[0]);
  if ((v69 & 0x80000000) == 0)
  {
LABEL_122:
    if ((SHIBYTE(v72) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_128;
  }

LABEL_127:
  operator delete(v67);
  if ((SHIBYTE(v72) & 0x80000000) == 0)
  {
LABEL_123:
    if ((v74 & 0x80000000) == 0)
    {
      return;
    }

LABEL_129:
    operator delete(v73[0]);
    return;
  }

LABEL_128:
  operator delete(v70);
  if (v74 < 0)
  {
    goto LABEL_129;
  }
}

void sub_A1E618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (*(v52 - 121) < 0)
  {
    operator delete(*(v52 - 144));
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((a45 & 0x80000000) == 0)
  {
LABEL_9:
    if (a51 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  operator delete(a40);
  if (a51 < 0)
  {
LABEL_10:
    operator delete(a46);
    sub_53A868(v51);
    _Unwind_Resume(a1);
  }

LABEL_13:
  sub_53A868(v51);
  _Unwind_Resume(a1);
}

void sub_A1E784(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

double sub_A1E7BC@<D0>(_OWORD *a1@<X8>)
{
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  a1[5] = 0u;
  return sub_64B998((a1 + 5));
}

void sub_A1E80C(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A1E838(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
    goto LABEL_6;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
LABEL_6:
  sub_55F1E8(a1 + 48, (a2 + 3));
  return a1;
}

void sub_A1E8C0(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A1E90C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 160 * v2;
  v13 = 0;
  sub_A1E838(160 * v2, a2);
  v12 = 160 * v2 + 160;
  sub_A1EA58(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 160;
    sub_97EDE0(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_A1EA44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A1EBE4(va);
  _Unwind_Resume(a1);
}

void sub_A1EA58(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v10 = v4 + v7;
      v11 = v6 + v7;
      v12 = *(v4 + v7);
      *(v11 + 16) = *(v4 + v7 + 16);
      *v11 = v12;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 0;
      v13 = *(v4 + v7 + 24);
      *(v11 + 40) = *(v4 + v7 + 40);
      *(v11 + 24) = v13;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      *(v10 + 24) = 0;
      *(v6 + v7 + 48) = 0;
      *(v11 + 80) = -1;
      v14 = *(v4 + v7 + 80);
      if (v14 != -1)
      {
        v18 = v6 + v7 + 48;
        (off_266FB10[v14])(&v18, v10 + 48);
        *(v11 + 80) = v14;
      }

      *(v11 + 88) = *(v10 + 88);
      v8 = *(v10 + 96);
      *(v11 + 112) = *(v10 + 112);
      *(v11 + 96) = v8;
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *(v10 + 96) = 0;
      *(v11 + 120) = *(v10 + 120);
      v9 = *(v10 + 128);
      *(v11 + 144) = *(v10 + 144);
      *(v11 + 128) = v9;
      *(v10 + 136) = 0;
      *(v10 + 144) = 0;
      *(v10 + 128) = 0;
      *(v11 + 152) = *(v10 + 152);
      v7 += 160;
    }

    while (v10 + 160 != v5);
    do
    {
      sub_97EDE0(v4);
      v4 += 160;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  a1[1] = v15;
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t sub_A1EBE4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    sub_97EDE0(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A1ED94(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1EDCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1EF90(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1EFC8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F18C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F1C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FBE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F388(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F3C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F584(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F5BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FC88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F780(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F7B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FCD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F97C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F9B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FD28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1FB78(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1FBB0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FD78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1FD74(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1FDAC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FDC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1FF70(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1FFA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A2016C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A201A4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FE68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A20368(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A203A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FEB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A20564(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A2059C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FF08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A20760(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A20798(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FF58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A20970(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A209A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FFA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_A20A24(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v8;
      }

      if (*(v6 + 47) < 0)
      {
        sub_325C((v4 + 24), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        *(v4 + 40) = *(v6 + 5);
        *(v4 + 24) = v7;
      }

      v6 += 3;
      v4 = v10 + 48;
      v10 += 48;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_A20B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2C19CC(&a9);
  _Unwind_Resume(a1);
}

void sub_A20B24()
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
  xmmword_27B3B28 = 0u;
  unk_27B3B38 = 0u;
  dword_27B3B48 = 1065353216;
  sub_3A9A34(&xmmword_27B3B28, v0);
  sub_3A9A34(&xmmword_27B3B28, v3);
  sub_3A9A34(&xmmword_27B3B28, __p);
  sub_3A9A34(&xmmword_27B3B28, v9);
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
    qword_27B3AD0 = 0;
    qword_27B3AD8 = 0;
    qword_27B3AC8 = 0;
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

void sub_A20DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3AE0)
  {
    qword_27B3AE8 = qword_27B3AE0;
    operator delete(qword_27B3AE0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A20EC0(uint64_t result, void *a2)
{
  v2 = result;
  *result = a2;
  *(result + 56) = 0u;
  v3 = (result + 56);
  *(result + 72) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *(result + 96) = 0u;
  v4 = (result + 96);
  *(result + 88) = 1065353216;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  if (*a2 == a2[1])
  {
    sub_A20EC0(&v16);
    *&v17 = -1;
    *(&v17 + 1) = -1;
    *(&v16 + 1) = -1;
    v5 = v17;
    *v2 = v16;
    *(v2 + 16) = v5;
    v6 = *(v2 + 32);
    if (v6)
    {
      *(v2 + 40) = v6;
      operator delete(v6);
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      *(v2 + 48) = 0;
    }

    *(v2 + 32) = v18;
    *(v2 + 48) = v19;
    v19 = 0;
    v18 = 0uLL;
    if (*(v2 + 80))
    {
      v7 = *(v2 + 72);
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

      *(v2 + 72) = 0;
      v9 = *(v2 + 64);
      if (v9)
      {
        bzero(*v3, 8 * v9);
      }

      *(v2 + 80) = 0;
    }

    v10 = v20;
    v20 = 0;
    v11 = *v3;
    *v3 = v10;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = v21;
    v13 = v22;
    *(v2 + 72) = v22;
    *(v2 + 64) = v12;
    v21 = 0;
    v14 = v23;
    *(v2 + 80) = v23;
    *(v2 + 88) = v24;
    if (v14)
    {
      v15 = *(v13 + 8);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v15 >= v12)
        {
          v15 %= v12;
        }
      }

      else
      {
        v15 &= v12 - 1;
      }

      *(*v3 + v15) = v2 + 72;
      v22 = 0;
      v23 = 0;
    }

    sub_A21D64(v4, &v25);
    sub_98ED24(&v16);
    return v2;
  }

  return result;
}

void sub_A21060(_Unwind_Exception *a1)
{
  sub_A22284(v3);
  sub_11BD8(v2);
  v5 = *(v1 + 32);
  if (v5)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_A2108C(char **a1)
{
  sub_A20EC0(__p, *a1);
  *&v64 = -1;
  *(&v64 + 1) = -1;
  __p[1] = -1;
  if (*a1 == __p[0] && a1[1] == -1 && a1[2] == -1)
  {
    v59 = a1[3];
    sub_98ED24(__p);
    if (v59 == -1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v61 = sub_2D390(exception, "Iterated past end", 0x11uLL);
    }
  }

  else
  {
    sub_98ED24(__p);
  }

  v2 = (a1 + 3);
  v3 = (**a1 + 32 * a1[3]);
  v4 = a1[2];
  v5 = *v3;
  v6 = (*v3 + 104 * v4);
  v8 = a1 + 1;
  v7 = a1[1];
  if (v7 < 0xBC7FD20AC579B779 * ((v6[2] - v6[1]) >> 3) - 1)
  {
    *v8 = v7 + 1;
    return;
  }

  if (v6[7] != -1)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v64 = 0;
    v10 = a1[4];
    v9 = a1[5];
    if (v9 != v10)
    {
      if (((v9 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v11 = 0;
    v13 = v6[1];
    for (i = v6[2]; v13 != i; v13 += 5704)
    {
      if (v11 < v64)
      {
        *v11 = v13;
        v11 += 8;
      }

      else
      {
        v14 = __p[0];
        v15 = v11 - __p[0];
        v16 = (v11 - __p[0]) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          sub_1794();
        }

        v18 = v64 - __p[0];
        if ((v64 - __p[0]) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v20 = (v11 - __p[0]) >> 3;
        v21 = (8 * v16);
        v22 = (8 * v16 - 8 * v20);
        *v21 = v13;
        v11 = (v21 + 1);
        memcpy(v22, v14, v15);
        __p[0] = v22;
        __p[1] = v11;
        *&v64 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      __p[1] = v11;
    }

    v62 = v6[7];
    sub_A222FC(a1 + 12, __p, &v62);
    v8 = a1 + 1;
    v2 = (a1 + 3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v4 = a1[2];
    v5 = *v3;
  }

  if (v4 < 0x4EC4EC4EC4EC4EC5 * ((v3[1] - v5) >> 3) - 1)
  {
    a1[1] = 0;
    a1[2] = (v4 + 1);
    return;
  }

  v23 = a1[17];
  if (!v23)
  {
    goto LABEL_62;
  }

  do
  {
    v24 = a1[16];
    v25 = v23 - 1;
    v26 = &v23[v24 - 1];
    v27 = a1[13];
    v28 = v26 >> 7;
    v29 = v26 & 0x7F;
    v30 = *&v27[8 * (v26 >> 7)] + 32 * v29;
    v31 = *(v30 + 24);
    v32 = a1[8];
    if (!*&v32)
    {
      goto LABEL_75;
    }

    v33 = vcnt_s8(v32);
    v33.i16[0] = vaddlv_u8(v33);
    if (v33.u32[0] > 1uLL)
    {
      v34 = *(v30 + 24);
      if (v31 >= *&v32)
      {
        v34 = v31 % *&v32;
      }
    }

    else
    {
      v34 = (*&v32 - 1) & v31;
    }

    v35 = *&a1[7][8 * v34];
    if (!v35 || (v36 = *v35) == 0)
    {
LABEL_75:
      if (a1 + 4 != v30)
      {
        sub_61532C(a1 + 4, *v30, *(v30 + 8), (*(v30 + 8) - *v30) >> 3);
        v31 = *(v30 + 24);
        v24 = a1[16];
        v23 = a1[17];
        v27 = a1[13];
        v25 = v23 - 1;
        v54 = &v24[(v23 - 1)];
        v28 = v54 >> 7;
        v29 = v54 & 0x7F;
      }

      *v2 = v31;
      v55 = *&v27[8 * v28] + 32 * v29;
      v56 = *v55;
      if (*v55)
      {
        *(v55 + 8) = v56;
        operator delete(v56);
        v27 = a1[13];
        v24 = a1[16];
        v23 = a1[17];
        v25 = v23 - 1;
      }

      v57 = a1[14];
      a1[17] = v25;
      if (v57 == v27)
      {
        v58 = 0;
      }

      else
      {
        v58 = 16 * (v57 - v27) - 1;
      }

      if (v58 - &v23[v24] + 1 >= 0x100)
      {
        operator delete(*(v57 - 1));
        a1[14] -= 8;
      }

      sub_7E6F6C(a1 + 7, v2);
      *v8 = 0;
      v8[1] = 0;
      return;
    }

    if (v33.u32[0] < 2uLL)
    {
      v37 = *&v32 - 1;
      while (1)
      {
        v39 = v36[1];
        if (v31 == v39)
        {
          if (v36[2] == v31)
          {
            goto LABEL_54;
          }
        }

        else if ((v39 & v37) != v34)
        {
          goto LABEL_75;
        }

        v36 = *v36;
        if (!v36)
        {
          goto LABEL_75;
        }
      }
    }

    while (1)
    {
      v38 = v36[1];
      if (v31 == v38)
      {
        break;
      }

      if (v38 >= *&v32)
      {
        v38 %= *&v32;
      }

      if (v38 != v34)
      {
        goto LABEL_75;
      }

LABEL_43:
      v36 = *v36;
      if (!v36)
      {
        goto LABEL_75;
      }
    }

    if (v36[2] != v31)
    {
      goto LABEL_43;
    }

LABEL_54:
    v40 = *v30;
    if (*v30)
    {
      *(v30 + 8) = v40;
      operator delete(v40);
      v27 = a1[13];
      v24 = a1[16];
      v23 = a1[17];
      v25 = v23 - 1;
    }

    v41 = a1[14];
    a1[17] = v25;
    if (v41 == v27)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 * (v41 - v27) - 1;
    }

    if (v42 - &v23[v24] + 1 >= 0x100)
    {
      operator delete(*(v41 - 1));
      a1[14] -= 8;
      v25 = a1[17];
    }

    v23 = v25;
  }

  while (v25);
LABEL_62:
  sub_A20EC0(__p, *a1);
  *&v64 = -1;
  *(&v64 + 1) = -1;
  __p[1] = -1;
  v43 = v64;
  *a1 = *__p;
  *(a1 + 1) = v43;
  v44 = a1[4];
  if (v44)
  {
    a1[5] = v44;
    operator delete(v44);
    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
  }

  *(a1 + 2) = v65;
  a1[6] = v66;
  v66 = 0;
  v65 = 0uLL;
  if (a1[10])
  {
    v45 = a1[9];
    if (v45)
    {
      do
      {
        v46 = *v45;
        operator delete(v45);
        v45 = v46;
      }

      while (v46);
    }

    a1[9] = 0;
    v47 = a1[8];
    if (v47)
    {
      bzero(a1[7], 8 * v47);
    }

    a1[10] = 0;
  }

  v48 = v67;
  v67 = 0;
  v49 = a1[7];
  a1[7] = v48;
  if (v49)
  {
    operator delete(v49);
  }

  v50 = v68;
  v51 = v69;
  a1[9] = v69;
  a1[8] = v50;
  v68 = 0;
  v52 = v70;
  a1[10] = v70;
  *(a1 + 22) = v71;
  if (v52)
  {
    v53 = *(v51 + 1);
    if ((v50 & (v50 - 1)) != 0)
    {
      if (v53 >= v50)
      {
        v53 %= v50;
      }
    }

    else
    {
      v53 &= (v50 - 1);
    }

    *&a1[7][8 * v53] = a1 + 9;
    v69 = 0;
    v70 = 0;
  }

  sub_A21D64(a1 + 12, &v72);
  sub_98ED24(__p);
}

void sub_A216E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A21730(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    v8 = *(**a1 + 32 * *(a1 + 24)) + 104 * *(a1 + 16);
    do
    {
      v9 = *(v8 + 8) + v6;
      sub_4C7358(a2, &v9);
      ++v7;
      v6 += 5704;
    }

    while (v7 < *(a1 + 8));
  }
}

void sub_A21818(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_A21834(uint64_t a1@<X0>, unint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 8);
  v6 = (*(**a1 + 32 * *(a1 + 24)) + 104 * *(a1 + 16));
  v7 = v5 + 1;
  v8 = v6[1];
  if (v5 + 1 < 0xBC7FD20AC579B779 * ((v6[2] - v8) >> 3))
  {
    v9 = 5704 * v5 + 5704;
    do
    {
      if (a2 <= (a3[1] - *a3) >> 3)
      {
        break;
      }

      v34 = v8 + v9;
      sub_4C7358(a3, &v34);
      ++v7;
      v8 = v6[1];
      v9 += 5704;
    }

    while (v7 < 0xBC7FD20AC579B779 * ((v6[2] - v8) >> 3));
  }

  v10 = v6[7];
  if (v10 != -1)
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = *a3;
    do
    {
      if (a2 <= (v12 - v13) >> 3)
      {
        break;
      }

      v14 = (**a1 + 32 * v10);
      v15 = *v14;
      v16 = v14[1];
      if (*v14 == v16)
      {
        goto LABEL_40;
      }

      v17 = v16 - v15;
      if (v16 - v15 == 104)
      {
        v18 = 0;
      }

      else
      {
        v19 = 0;
        v20 = v15;
        while (*v20)
        {
          v20 += 104;
          v19 -= 104;
          if (v20 == v16)
          {
            v21 = v16 - v15;
            goto LABEL_18;
          }
        }

        v21 = -v19;
LABEL_18:
        v18 = 0x4EC4EC4EC4EC4EC5 * (v21 >> 3);
      }

      if (0x4EC4EC4EC4EC4EC5 * (v17 >> 3) <= v18)
      {
LABEL_40:
        sub_6FAB4();
      }

      v22 = &v15[104 * v18];
      v23 = *(v22 + 1);
      v24 = *(v22 + 2);
      if (v23 != v24)
      {
        while (1)
        {
          v25 = a3[2];
          if (v12 >= v25)
          {
            v26 = v12 - v13;
            v27 = (v12 - v13) >> 3;
            v28 = v27 + 1;
            if ((v27 + 1) >> 61)
            {
              sub_1794();
            }

            v29 = v25 - v13;
            if (v29 >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              if (!(v30 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v31 = (v12 - v13) >> 3;
            v32 = (8 * v27);
            v11 = (8 * v27 - 8 * v31);
            *v32 = v23;
            v12 = (v32 + 1);
            memcpy(v11, v13, v26);
            *a3 = v11;
            a3[1] = v12;
            a3[2] = 0;
            if (v13)
            {
              operator delete(v13);
              v11 = *a3;
            }
          }

          else
          {
            *v12 = v23;
            v12 += 8;
          }

          a3[1] = v12;
          if (a2 <= (v12 - v11) >> 3)
          {
            break;
          }

          v23 += 5704;
          v13 = v11;
          if (v23 == v24)
          {
            goto LABEL_8;
          }
        }

        v13 = v11;
      }

LABEL_8:
      v10 = *(v22 + 7);
    }

    while (v10 != -1);
  }
}

void sub_A21AF4(_Unwind_Exception *a1)
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

void *sub_A21B98(char **a1, int a2)
{
  sub_A2108C(a1);
  while (1)
  {
    sub_A20EC0(v8, *a1);
    memset(&v8[1], 255, 24);
    if (*a1 != v8[0])
    {
      v4 = a1[1];
      v5 = a1[2];
      goto LABEL_9;
    }

    v4 = a1[1];
    v5 = a1[2];
    if (v4 == -1)
    {
      break;
    }

LABEL_9:
    v6 = *(*(*(**a1 + 32 * a1[3]) + 104 * v5 + 8) + 5704 * v4);
    result = sub_98ED24(v8);
    if (v6 == a2)
    {
      return result;
    }

    sub_A2108C(a1);
  }

  if (v5 != -1)
  {
    v4 = -1;
    goto LABEL_9;
  }

  if (a1[3] != -1)
  {
    v4 = -1;
    v5 = -1;
    goto LABEL_9;
  }

  return sub_98ED24(v8);
}

uint64_t sub_A21C90(uint64_t a1, void *a2)
{
  result = sub_A20EC0(a1, a2);
  *(result + 144) = a2;
  return result;
}

uint64_t sub_A21CE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_A20EC0(a2, v3);
  a2[18] = v3;
  a2[1] = -1;
  a2[2] = -1;
  a2[3] = -1;
  return result;
}

uint64_t sub_A21D2C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_A20EC0(a2, *a1);
  a2[2] = -1;
  a2[3] = -1;
  a2[1] = -1;
  return result;
}

double sub_A21D64(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    a1[5] = 0;
    v13 = 0;
  }

  else
  {
    v6 = a1[4];
    v7 = &v4[v6 >> 7];
    v8 = *v7;
    v9 = *v7 + 32 * (v6 & 0x7F);
    v10 = *(v4 + (((a1[5] + v6) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v6) & 0x7F);
    if (v9 != v10)
    {
      do
      {
        v11 = *v9;
        if (*v9)
        {
          *(v9 + 8) = v11;
          operator delete(v11);
          v8 = *v7;
        }

        v9 += 32;
        if (v9 - v8 == 4096)
        {
          v12 = v7[1];
          ++v7;
          v8 = v12;
          v9 = v12;
        }
      }

      while (v9 != v10);
      v4 = a1[1];
      v5 = a1[2];
    }

    a1[5] = 0;
    v13 = v5 - v4;
    if (v13 >= 3)
    {
      do
      {
        operator delete(*v4);
        v14 = a1[2];
        v4 = (a1[1] + 8);
        a1[1] = v4;
        v13 = (v14 - v4) >> 3;
      }

      while (v13 > 2);
    }
  }

  if (v13 == 1)
  {
    v15 = 64;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_18;
    }

    v15 = 128;
  }

  a1[4] = v15;
LABEL_18:
  sub_A22020(a1);
  v17 = a1[1];
  v16 = a1[2];
  if (v16 != v17)
  {
    a1[2] = v16 + ((v17 - v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_A22114(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_A21EF4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v10 = v3 - v2;
    if (v10 < 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = a1[4];
  v5 = &v2[v4 >> 7];
  v6 = *v5 + 32 * (v4 & 0x7F);
  v7 = *(v2 + (((a1[5] + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v4) & 0x7F);
  if (v6 != v7)
  {
    do
    {
      v8 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v8;
        operator delete(v8);
      }

      v6 += 32;
      if (v6 - *v5 == 4096)
      {
        v9 = v5[1];
        ++v5;
        v6 = v9;
      }
    }

    while (v6 != v7);
    v2 = a1[1];
    v3 = a1[2];
  }

  a1[5] = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
LABEL_11:
      operator delete(*v2);
      v11 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

LABEL_12:
  if (v10 == 1)
  {
    v12 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 128;
  }

  a1[4] = v12;
}

void sub_A22020(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0x80)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 128;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 16 * (v5 - v4) - 1;
    }

    if (v6 - (v2 + v3) >= 0x80)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  sub_A22114(v7);
}

void sub_A22114(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 8);
      v10 = (*(a1 + 16) - v9);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = (v10 - 1);
      if ((v10 - 1) < 0x18)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (-v9 >= 0x20)
        {
          v14 = (v12 >> 3) + 1;
          v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
          v15 = (v13 + v9);
          v16 = (v9 + 16);
          v17 = dword_10;
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          v9 = v15;
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v11;
            *(a1 + 24) = 8 * v8;
            if (v4)
            {

              operator delete(v4);
            }

            return;
          }
        }
      }

      do
      {
        v20 = *v9;
        v9 += 8;
        *v13++ = v20;
      }

      while (v13 != v11);
      goto LABEL_16;
    }
  }
}

void **sub_A22284(void **a1)
{
  sub_A21EF4(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A222FC(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 16 * (v7 - v6) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a1[5] + a1[4])
  {
    sub_A2247C(a1);
    v6 = a1[1];
    v7 = a1[2];
  }

  if (v7 == v6)
  {
    v10 = 0;
    *&dword_0 = 0;
    *dword_8 = 0;
    *dword_10 = 0;
    v11 = a2[1] - *a2;
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_9:
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = a1[5] + a1[4];
  v10 = (*(v6 + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  v11 = a2[1] - *a2;
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_11:
  v10[3] = *a3;
  v12 = a1[4];
  v13 = a1[5] + 1;
  a1[5] = v13;
  v14 = v12 + v13;
  v15 = a1[1];
  v16 = (v15 + 8 * (v14 >> 7));
  v17 = *v16 + 32 * (v14 & 0x7F);
  if (a1[2] == v15)
  {
    v17 = 0;
  }

  if (v17 == *v16)
  {
    return *(v16 - 1) + 4064;
  }

  else
  {
    return v17 - 32;
  }
}

void sub_A22460(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A2247C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_A227EC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_A229C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void *sub_A22A28(void *result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    v5 = result;
    do
    {
      result = sub_A22A7C(v5, v2, (a2 + 24));
      v2 += 412;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_A22A7C(void **a1, void *a2, void *a3)
{
  sub_A21C90(v11, a2);
  while (1)
  {
    sub_A21CE8(v11, &v9);
    v5 = sub_A21B4C(v11, &v9);
    sub_98ED24(&v9);
    if (!v5)
    {
      break;
    }

    if (*sub_A21CB8(v11) == 2)
    {
      v6 = sub_A21CB8(v11);
      sub_A22BD0(a1, v11, a3, &v9);
      v7 = v6[710];
      if (v7)
      {
        v6[711] = v7;
        operator delete(v7);
        v6[710] = 0;
        v6[711] = 0;
        v6[712] = 0;
      }

      *(v6 + 355) = v9;
      v6[712] = v10;
    }

    sub_A21708(v11);
  }

  return sub_98ED24(v11);
}

void sub_A22BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

void sub_A22BD0(void **a1@<X0>, char **a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(sub_A21CB8(a2) + 752);
  v9 = a3[9];
  if (0x66FD0EB66FD0EB67 * ((a3[10] - v9) >> 3) <= v8)
  {
    sub_6FAB4();
  }

  v10 = *(sub_A21CB8(a2) + 48);
  sub_A21B98(a2, 4);
  v11 = *(sub_A21CB8(a2) + 48);
  v12 = sub_3AFC64(*a1);
  v13 = sub_92FC60(v12, *(v9 + 696 * v8 + 56), 0, "line");
  v14 = (v13 - *v13);
  if (*v14 >= 0x51u && (v15 = v14[40]) != 0)
  {
    v16 = (v13 + v15 + *(v13 + v15));
    *(a4 + 16) = 0;
    v17 = 0uLL;
    *a4 = 0u;
    v18 = *v16;
    if (v18)
    {
      v19 = 8 * v18;
      v20 = (v16 + 1);
      do
      {
        if (*(v12 + 3888) != 1 || sub_2D5204(*(v12 + 3872)))
        {
          v35[0] = *v20;
          sub_2512DC(a4, v35);
        }

        ++v20;
        v19 -= 8;
      }

      while (v19);
      v17 = *a4;
    }
  }

  else
  {
    *(a4 + 16) = 0;
    v17 = 0uLL;
    *a4 = 0u;
  }

  v21 = 126 - 2 * __clz((*(&v17 + 1) - v17) >> 3);
  if (*(&v17 + 1) == v17)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  sub_2D31D4(v17, *(&v17 + 1), v35, v22, 1);
  sub_A22F00(a1, v10, a3, &v33);
  v23 = 126 - 2 * __clz((v34 - v33) >> 3);
  if (v34 == v33)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  sub_2D31D4(v33, v34, v35, v24, 1);
  v31 = 0uLL;
  v32 = 0;
  sub_2CEBBC(*a4, *(a4 + 8), v33, v34, &v31, v35);
  v25 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v25;
    operator delete(v25);
  }

  *a4 = v31;
  v26 = v33;
  *(a4 + 16) = v32;
  if (v26)
  {
    v34 = v26;
    operator delete(v26);
  }

  sub_A22F00(a1, v11, a3, &v33);
  v27 = 126 - 2 * __clz((v34 - v33) >> 3);
  if (v34 == v33)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  sub_2D31D4(v33, v34, v35, v28, 1);
  v31 = 0uLL;
  v32 = 0;
  sub_2CEBBC(*a4, *(a4 + 8), v33, v34, &v31, v35);
  v29 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v29;
    operator delete(v29);
  }

  *a4 = v31;
  v30 = v33;
  *(a4 + 16) = v32;
  if (v30)
  {
    v34 = v30;
    operator delete(v30);
  }
}

void sub_A22E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void sub_A22F00(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void **a4@<X8>)
{
  v8 = sub_3AFB1C(*a1);
  if (0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3) <= a2)
  {
    sub_6FAB4();
  }

  v9 = v8;
  v10 = *a3 + 168 * a2;
  v11 = sub_502FF8(v8, *(v10 + 96), 0, "stop");
  v12 = (v11 - *v11);
  if (*v12 >= 0x43u && (v13 = v12[33]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v15 = *v14;
    if (v15)
    {
      v16 = 8 * v15;
      v17 = (v14 + 1);
      do
      {
        if (*(v9 + 3888) != 1 || sub_2D5204(*(v9 + 3872)))
        {
          v39 = *v17;
          sub_2512DC(a4, &v39);
        }

        ++v17;
        v16 -= 8;
      }

      while (v16);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  if (*(a1 + 8) == 1 && *a4 == a4[1])
  {
    v18 = *(v10 + 104);
    if (v18 != -1)
    {
      v19 = a3[3];
      if (0x8E38E38E38E38E39 * ((a3[4] - v19) >> 4) <= v18)
      {
        sub_6FAB4();
      }

      v20 = v19 + 144 * v18;
      v21 = sub_93D2F4(v9, *(v20 + 96), 0, "hall");
      v22 = (v21 - *v21);
      if (*v22 >= 0x2Du)
      {
        v23 = v22[22];
        if (v23)
        {
          v24 = (v21 + v23 + *(v21 + v23));
          v25 = *v24;
          if (v25)
          {
            v26 = 8 * v25;
            v27 = v24 + 1;
            do
            {
              if (*(v9 + 3888) != 1 || sub_2D5204(*(v9 + 3872)))
              {
                operator new();
              }

              v27 += 2;
              v26 -= 8;
            }

            while (v26);
          }
        }
      }

      v28 = *a4;
      if (*a4)
      {
        a4[1] = v28;
        operator delete(v28);
      }

      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v29 = *(v20 + 104);
      if (v29 != -1)
      {
        v30 = a3[6];
        if (0xF0F0F0F0F0F0F0F1 * ((a3[7] - v30) >> 3) <= v29)
        {
          sub_6FAB4();
        }

        v31 = sub_93D480(v9, *(v30 + 136 * v29 + 96), 0, "station");
        v32 = (v31 - *v31);
        if (*v32 >= 0x39u)
        {
          v33 = v32[28];
          if (v33)
          {
            v34 = (v31 + v33 + *(v31 + v33));
            v35 = *v34;
            if (v35)
            {
              v36 = 8 * v35;
              v37 = v34 + 1;
              do
              {
                if (*(v9 + 3888) != 1 || sub_2D5204(*(v9 + 3872)))
                {
                  operator new();
                }

                v37 += 2;
                v36 -= 8;
              }

              while (v36);
            }
          }
        }

        v38 = *a4;
        if (*a4)
        {
          a4[1] = v38;
          operator delete(v38);
        }

        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
      }
    }
  }
}

void sub_A233B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_A2340C()
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
  xmmword_27B3B80 = 0u;
  *algn_27B3B90 = 0u;
  dword_27B3BA0 = 1065353216;
  sub_3A9A34(&xmmword_27B3B80, v0);
  sub_3A9A34(&xmmword_27B3B80, v3);
  sub_3A9A34(&xmmword_27B3B80, __p);
  sub_3A9A34(&xmmword_27B3B80, v9);
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
    qword_27B3B58 = 0;
    qword_27B3B60 = 0;
    qword_27B3B50 = 0;
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

void sub_A23654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3B68)
  {
    qword_27B3B70 = qword_27B3B68;
    operator delete(qword_27B3B68);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_A23700(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    do
    {
      result = sub_A2373C();
      v1 += 3296;
    }

    while (v1 != v2);
  }

  return result;
}

void *sub_A2373C()
{
  v0 = __chkstk_darwin();
  sub_A21C90(v21, v0);
  while (1)
  {
    sub_A21CE8(v21, &v19);
    v1 = sub_A21B4C(v21, &v19);
    sub_98ED24(&v19);
    if (!v1)
    {
      return sub_98ED24(v21);
    }

    v2 = 0;
    v3 = *sub_A21CB8(v21);
    if (v3 <= 3)
    {
      if (v3 <= 1)
      {
        if (!v3)
        {
          v2 = 4;
          goto LABEL_59;
        }

        if (v3 != 1)
        {
          goto LABEL_59;
        }

LABEL_35:
        sub_A21834(v21, 1uLL, &v19);
        v7 = *v19;
        v20 = v19;
        operator delete(v19);
        if (*v7 == 9)
        {
          v2 = 5;
        }

        else
        {
          v2 = 2;
        }

        goto LABEL_59;
      }

      if (v3 != 2)
      {
        sub_A21834(v21, 0xFFFFFFFFFFFFFFFFLL, &v19);
        v4 = v19;
        if (**v19 == 4)
        {
          v2 = 2;
          goto LABEL_58;
        }

        if (v19 == v20)
        {
LABEL_49:
          v2 = 0;
          goto LABEL_58;
        }

        v9 = 0;
        v10 = v19;
        while (1)
        {
          v11 = **v10;
          if (v11 == 3)
          {
            v13 = *(*v10 + 157);
            v12 = v13 ^ 1 | v9;
            if ((v13 & 1) == 0 && ((v9 ^ 1) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (v11 == 4)
            {
              v2 = v9 & 1;
              goto LABEL_58;
            }

            v12 = v9;
          }

          ++v10;
          v9 = v12;
          if (v10 == v20)
          {
            goto LABEL_49;
          }
        }
      }

      v2 = 3;
    }

    else if (v3 <= 5)
    {
      if (v3 == 4)
      {
        goto LABEL_35;
      }

      sub_A21834(v21, 2uLL, &v19);
      v4 = v19;
      if (**v19 == 9)
      {
        v2 = 5;
      }

      else
      {
        v14 = v19;
        if (v19 != v20)
        {
          v14 = v19;
          while (**v14 != 2)
          {
            if (++v14 == v20)
            {
              v14 = v20;
              break;
            }
          }
        }

        if (v14 == v20)
        {
          v2 = 0;
        }

        else
        {
          v2 = 3;
        }
      }

LABEL_58:
      v20 = v4;
      operator delete(v4);
    }

    else
    {
      switch(v3)
      {
        case 6:
          sub_A21834(v21, 1uLL, __p);
          sub_9722E4(&v19, *__p[0]);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          sub_A21730(v21, &v16);
          sub_9722E4(__p, *(v17 - 1));
          if (v16)
          {
            v17 = v16;
            operator delete(v16);
          }

          if (LODWORD(__p[0]) == 5)
          {
            v5 = 0;
          }

          else
          {
            v5 = 3;
          }

          if (v19 == 9)
          {
            v6 = 5;
          }

          else
          {
            v6 = 0;
          }

          if (v19 == 2)
          {
            v2 = v5;
          }

          else
          {
            v2 = v6;
          }

          sub_9750F8(__p);
          sub_9750F8(&v19);
          break;
        case 7:
          sub_A21834(v21, 1uLL, &v19);
          v8 = *v19;
          v20 = v19;
          operator delete(v19);
          if (*v8 == 1)
          {
            v2 = 3;
          }

          else
          {
            v2 = 0;
          }

          break;
        case 9:
          v2 = 5;
          break;
      }
    }

LABEL_59:
    *(sub_A21CB8(v21) + 1976) = v2;
    sub_A21708(v21);
  }
}

void sub_A23B58()
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
  xmmword_27B3BD8 = 0u;
  unk_27B3BE8 = 0u;
  dword_27B3BF8 = 1065353216;
  sub_3A9A34(&xmmword_27B3BD8, v0);
  sub_3A9A34(&xmmword_27B3BD8, v3);
  sub_3A9A34(&xmmword_27B3BD8, __p);
  sub_3A9A34(&xmmword_27B3BD8, v9);
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
    qword_27B3BB0 = 0;
    qword_27B3BB8 = 0;
    qword_27B3BA8 = 0;
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

void sub_A23DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3BC0)
  {
    qword_27B3BC8 = qword_27B3BC0;
    operator delete(qword_27B3BC0);
  }

  _Unwind_Resume(exception_object);
}

void sub_A23E54(void *(****a1)(void **__return_ptr), uint64_t *a2)
{
  v97 = 0;
  v98 = 0;
  v99 = 0;
  *v94 = 0u;
  *v95 = 0u;
  v96 = 1.0;
  v4 = (0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3) - 0x71C71C71C71C71C7 * ((a2[4] - a2[3]) >> 4) + 0x66FD0EB66FD0EB67 * ((a2[10] - a2[9]) >> 3) + 0x4EC4EC4EC4EC4EC5 * ((a2[13] - a2[12]) >> 4));
  prime = v4;
  if (v4 == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v94, prime);
    goto LABEL_18;
  }

  if ((prime & (v4 - 1)) != 0)
  {
    prime = std::__next_prime(v4);
    v6 = v94[1];
    v7 = prime >= v94[1];
    if (prime > v94[1])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v7)
  {
    v8 = vcvtps_u32_f32(v95[1] / v96);
    if (v6 < 3 || (v9 = vcnt_s8(v6), v9.i16[0] = vaddlv_u8(v9), v9.u32[0] > 1uLL))
    {
      v8 = std::__next_prime(v8);
    }

    else
    {
      v10 = 1 << -__clz(v8 - 1);
      if (v8 >= 2)
      {
        v8 = v10;
      }
    }

    if (prime <= v8)
    {
      prime = v8;
    }

    if (prime < v6)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v91 = a1;
  v11 = a2[1] - *a2;
  if (v11)
  {
    v12 = 0;
    v13 = 0xCF3CF3CF3CF3CF3DLL * (v11 >> 3);
    v14 = 88;
    do
    {
      v15 = *a2;
      v16 = v98;
      if (v98 >= v99)
      {
        v18 = v97;
        v19 = v98 - v97;
        v20 = (v98 - v97) >> 5;
        v21 = v20 + 1;
        if ((v20 + 1) >> 59)
        {
          sub_1794();
        }

        v22 = v99 - v97;
        if ((v99 - v97) >> 4 > v21)
        {
          v21 = v22 >> 4;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFE0)
        {
          v23 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (!(v23 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v24 = (32 * v20);
        *v24 = *(v15 + v14);
        v24[1] = xmmword_22A68B0;
        v17 = 32 * v20 + 32;
        memcpy(0, v18, v19);
        v97 = 0;
        v99 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v98 = *(v15 + v14);
        *(v16 + 1) = xmmword_22A68B0;
        v17 = (v16 + 32);
      }

      v98 = v17;
      __p = v12;
      LODWORD(v93) = 0;
      sub_A24900(v94, (v15 + v14));
      ++v12;
      v14 += 168;
    }

    while (v13 != v12);
  }

  v25 = a2[4] - a2[3];
  if (v25)
  {
    v26 = 0;
    v27 = 0x8E38E38E38E38E39 * (v25 >> 4);
    v28 = 88;
    do
    {
      v29 = a2[3];
      v30 = v98;
      if (v98 >= v99)
      {
        v32 = v97;
        v33 = v98 - v97;
        v34 = (v98 - v97) >> 5;
        v35 = v34 + 1;
        if ((v34 + 1) >> 59)
        {
          sub_1794();
        }

        v36 = v99 - v97;
        if ((v99 - v97) >> 4 > v35)
        {
          v35 = v36 >> 4;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFE0)
        {
          v37 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        if (v37)
        {
          if (!(v37 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v38 = (v98 - v97) >> 5;
        v39 = (32 * v34);
        *v39 = *(v29 + v28);
        v39[1] = xmmword_22A68C0;
        v31 = 32 * v34 + 32;
        v40 = (32 * v34 - 32 * v38);
        memcpy(&v39[-2 * v38], v32, v33);
        v97 = v40;
        v99 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v98 = *(v29 + v28);
        *(v30 + 1) = xmmword_22A68C0;
        v31 = (v30 + 32);
      }

      v98 = v31;
      __p = v26;
      LODWORD(v93) = 1;
      sub_A24900(v94, (v29 + v28));
      ++v26;
      v28 += 144;
    }

    while (v27 != v26);
  }

  v41 = a2[10] - a2[9];
  if (v41)
  {
    v42 = 0;
    v43 = 0x66FD0EB66FD0EB67 * (v41 >> 3);
    v44 = 48;
    do
    {
      v45 = a2[9];
      v46 = v98;
      if (v98 >= v99)
      {
        v48 = v97;
        v49 = v98 - v97;
        v50 = (v98 - v97) >> 5;
        v51 = v50 + 1;
        if ((v50 + 1) >> 59)
        {
          sub_1794();
        }

        v52 = v99 - v97;
        if ((v99 - v97) >> 4 > v51)
        {
          v51 = v52 >> 4;
        }

        if (v52 >= 0x7FFFFFFFFFFFFFE0)
        {
          v53 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          if (!(v53 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v54 = (v98 - v97) >> 5;
        v55 = (32 * v50);
        *v55 = *(v45 + v44);
        v55[1] = xmmword_22A68D0;
        v47 = 32 * v50 + 32;
        v56 = (32 * v50 - 32 * v54);
        memcpy(&v55[-2 * v54], v48, v49);
        v97 = v56;
        v99 = 0;
        if (v48)
        {
          operator delete(v48);
        }
      }

      else
      {
        *v98 = *(v45 + v44);
        *(v46 + 1) = xmmword_22A68D0;
        v47 = (v46 + 32);
      }

      v98 = v47;
      __p = v42;
      LODWORD(v93) = 2;
      sub_A24900(v94, (v45 + v44));
      ++v42;
      v44 += 696;
    }

    while (v43 != v42);
  }

  v57 = a2[13] - a2[12];
  if (v57)
  {
    v58 = 0;
    v59 = 0x4EC4EC4EC4EC4EC5 * (v57 >> 4);
    v60 = 48;
    do
    {
      v61 = a2[12];
      v62 = v98;
      if (v98 >= v99)
      {
        v64 = v97;
        v65 = v98 - v97;
        v66 = (v98 - v97) >> 5;
        v67 = v66 + 1;
        if ((v66 + 1) >> 59)
        {
          sub_1794();
        }

        v68 = v99 - v97;
        if ((v99 - v97) >> 4 > v67)
        {
          v67 = v68 >> 4;
        }

        if (v68 >= 0x7FFFFFFFFFFFFFE0)
        {
          v69 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v69 = v67;
        }

        if (v69)
        {
          if (!(v69 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v70 = (v98 - v97) >> 5;
        v71 = (32 * v66);
        *v71 = *(v61 + v60);
        v71[1] = xmmword_22A68E0;
        v63 = 32 * v66 + 32;
        v72 = (32 * v66 - 32 * v70);
        memcpy(&v71[-2 * v70], v64, v65);
        v97 = v72;
        v99 = 0;
        if (v64)
        {
          operator delete(v64);
        }
      }

      else
      {
        *v98 = *(v61 + v60);
        *(v62 + 1) = xmmword_22A68E0;
        v63 = (v62 + 32);
      }

      v98 = v63;
      __p = v58;
      LODWORD(v93) = 3;
      sub_A24900(v94, (v61 + v60));
      ++v58;
      v60 += 208;
    }

    while (v59 != v58);
  }

  v73 = (***v91)(&__p);
  v74 = __p;
  v75 = v93;
  if (__p != v93)
  {
    v76 = v94[1];
    if (v94[1])
    {
LABEL_84:
      v77 = *v74;
      v78 = vcnt_s8(v76);
      v78.i16[0] = vaddlv_u8(v78);
      if (v78.u32[0] > 1uLL)
      {
        v79 = *v74;
        if (v77 >= *&v76)
        {
          v79 = v77 % *&v76;
        }
      }

      else
      {
        v79 = (*&v76 - 1) & v77;
      }

      v80 = *(v94[0] + v79);
      if (v80)
      {
        v81 = *v80;
        if (v81)
        {
          if (v78.u32[0] < 2uLL)
          {
            v82 = *&v76 - 1;
            while (1)
            {
              v83 = v81[1];
              if (v83 == v77)
              {
                if (v81[2] == v77)
                {
                  goto LABEL_104;
                }
              }

              else if ((v83 & v82) != v79)
              {
                goto LABEL_105;
              }

              v81 = *v81;
              if (!v81)
              {
                goto LABEL_105;
              }
            }
          }

          do
          {
            v84 = v81[1];
            if (v84 == v77)
            {
              if (v81[2] == v77)
              {
LABEL_104:
                sub_A24750(v73, v74, (v81 + 3), a2);
                break;
              }
            }

            else
            {
              if (v84 >= *&v76)
              {
                v84 %= *&v76;
              }

              if (v84 != v79)
              {
                break;
              }
            }

            v81 = *v81;
          }

          while (v81);
        }
      }

LABEL_105:
      while (1)
      {
        v74 += 4;
        if (v74 == v75)
        {
          break;
        }

        v76 = v94[1];
        if (v94[1])
        {
          goto LABEL_84;
        }
      }

      v74 = __p;
    }
  }

  if (v74)
  {
    v85 = v93;
    v86 = v74;
    if (v93 != v74)
    {
      do
      {
        v87 = *(v85 - 3);
        if (v87)
        {
          *(v85 - 2) = v87;
          operator delete(v87);
        }

        v85 -= 4;
      }

      while (v85 != v74);
      v86 = __p;
    }

    v93 = v74;
    operator delete(v86);
  }

  v88 = v95[0];
  if (v95[0])
  {
    do
    {
      v89 = *v88;
      operator delete(v88);
      v88 = v89;
    }

    while (v89);
  }

  v90 = v94[0];
  v94[0] = 0;
  if (v90)
  {
    operator delete(v90);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

void sub_A246E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_37484(&a14);
  sub_11BD8(&a17);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A24750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 8);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        return;
      }

      v8 = (a4[12] + 208 * *a3 + 64);
      if (v8 == (a2 + 8))
      {
        return;
      }

      v9 = *(a2 + 16);
      v10 = (v9 - *(a2 + 8)) >> 3;
      v11 = *(a2 + 8);

LABEL_16:
      sub_31F64(v8, v11, v9, v10);
      return;
    }

    v5 = a4[9] + 696 * *a3 + 72;
    if (v5 != a2 + 8)
    {
      sub_31F64(v5, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    }

    v6 = &qword_27B3C60;
    if (v5 == &qword_27B3C60 || *v5 != *(v5 + 8))
    {
      return;
    }

LABEL_24:
    v11 = *v6;
    v9 = v6[1];
    v10 = (v9 - *v6) >> 3;
    v8 = v5;

    goto LABEL_16;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = a4[3] + 144 * *a3 + 120;
    if (v5 != a2 + 8)
    {
      sub_31F64(v5, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    }

    v6 = &qword_27B3C48;
    if (v5 == &qword_27B3C48 || *v5 != *(v5 + 8))
    {
      return;
    }

    goto LABEL_24;
  }

  v5 = *a4 + 168 * *a3 + 112;
  if (v5 != a2 + 8)
  {
    sub_31F64(v5, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  v6 = &qword_27B3C30;
  if (v5 != &qword_27B3C30 && *v5 == *(v5 + 8))
  {
    goto LABEL_24;
  }
}

void *sub_A24900(void *a1, unint64_t *a2)
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

void sub_A24C34()
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
  xmmword_27B3C78 = 0u;
  unk_27B3C88 = 0u;
  dword_27B3C98 = 1065353216;
  sub_3A9A34(&xmmword_27B3C78, v0);
  sub_3A9A34(&xmmword_27B3C78, v3);
  sub_3A9A34(&xmmword_27B3C78, __p);
  sub_3A9A34(&xmmword_27B3C78, v9);
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
    qword_27B3C08 = 0;
    qword_27B3C10 = 0;
    qword_27B3C00 = 0;
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

void sub_A24F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (qword_27B3C60)
  {
    qword_27B3C68 = qword_27B3C60;
    operator delete(qword_27B3C60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A25044(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AFEE8(a2);
  *(a1 + 8) = sub_3AFC64(a2);
  *(a1 + 16) = a3;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  return a1;
}

void sub_A250A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 1439) == 1)
  {
    v6 = *(a2 + 120);
    v7 = *(a2 + 128);
    if (v6 == v7)
    {
LABEL_8:
      v10 = *(a2 + 96);
      v11 = *(a2 + 104);
      if (v10 == v11)
      {
        return;
      }

      while (1)
      {
        v12 = sub_92FC60(*(a1 + 8), *(v10 + 56), 0, "line");
        v13 = (v12 - *v12);
        if (*v13 >= 0x55u)
        {
          if (v13[42])
          {
            break;
          }
        }

        v10 += 696;
        if (v10 == v11)
        {
          return;
        }
      }
    }

    else
    {
      while (1)
      {
        v8 = sub_93E04C(*a1, *(v6 + 56), 0, "system");
        v9 = (v8 - *v8);
        if (*v9 >= 0x17u)
        {
          if (v9[11])
          {
            break;
          }
        }

        v6 += 208;
        if (v6 == v7)
        {
          goto LABEL_8;
        }
      }
    }

    v14 = *a2;
    v15 = *(a2 + 8);
    while (v14 != v15)
    {
      sub_A25200(a1, v14, (a2 + 24), a3);
      if (*(a1 + 48))
      {
        v16 = *(a1 + 40);
        if (v16)
        {
          do
          {
            v17 = *v16;
            operator delete(v16);
            v16 = v17;
          }

          while (v17);
        }

        *(a1 + 40) = 0;
        v18 = *(a1 + 32);
        if (v18)
        {
          bzero(*(a1 + 24), 8 * v18);
        }

        *(a1 + 48) = 0;
      }

      v14 += 412;
    }
  }
}

void sub_A25200(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2[1] - *a2;
  if (v4)
  {
    v9 = 0;
    v10 = v4 >> 5;
    do
    {
      v11 = a1[4];
      if (v11)
      {
        v12 = vcnt_s8(v11);
        v12.i16[0] = vaddlv_u8(v12);
        if (v12.u32[0] > 1uLL)
        {
          v13 = v9;
          if (v9 >= *&v11)
          {
            v13 = v9 % *&v11;
          }
        }

        else
        {
          v13 = (*&v11 - 1) & v9;
        }

        v14 = *(a1[3] + 8 * v13);
        if (v14)
        {
          v15 = *v14;
          if (v15)
          {
            if (v12.u32[0] < 2uLL)
            {
              v16 = *&v11 - 1;
              while (1)
              {
                v18 = v15[1];
                if (v18 == v9)
                {
                  if (v15[2] == v9)
                  {
                    goto LABEL_3;
                  }
                }

                else if ((v18 & v16) != v13)
                {
                  goto LABEL_24;
                }

                v15 = *v15;
                if (!v15)
                {
                  goto LABEL_24;
                }
              }
            }

            do
            {
              v17 = v15[1];
              if (v17 == v9)
              {
                if (v15[2] == v9)
                {
                  goto LABEL_3;
                }
              }

              else
              {
                if (v17 >= *&v11)
                {
                  v17 %= *&v11;
                }

                if (v17 != v13)
                {
                  break;
                }
              }

              v15 = *v15;
            }

            while (v15);
          }
        }
      }

LABEL_24:
      v19 = *a2 + 32 * v9;
      v20 = *v19;
      v21 = *(v19 + 8);
      if (*v19 != v21)
      {
        do
        {
          sub_A25374(a1, v20, a2, a3, a4);
          v20 += 13;
        }

        while (v20 != v21);
      }

LABEL_3:
      ++v9;
    }

    while (v9 != v10);
  }
}

void sub_A25374(uint64_t *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2[2];
  v6 = a2[1];
  if (v6 != v5 && *(v5 - 5704) == 4)
  {
    while (*v6 != 2)
    {
      v6 += 5704;
      if (v6 == v5)
      {
        v6 = a2[2];
        break;
      }
    }

    if ((*(v6 + 792) & 1) == 0)
    {
      sub_4F0F0C();
    }

    if (*(v6 + 116) != 0x7FFFFFFF)
    {
      v10 = *(v6 + 752);
      v11 = a4[9];
      if (0x66FD0EB66FD0EB67 * ((a4[10] - v11) >> 3) <= v10)
      {
        sub_6FAB4();
      }

      v12 = v11 + 696 * v10;
      v13 = *(v12 + 64);
      v14 = a4[12];
      if (0x4EC4EC4EC4EC4EC5 * ((a4[13] - v14) >> 4) <= v13)
      {
        sub_6FAB4();
      }

      if (sub_A25B74(a1, a4, *(v6 + 752)))
      {
        sub_A25C84(a1, a4, *(v6 + 752), &v64);
        v17 = *(v6 + 56);
        if (0xCF3CF3CF3CF3CF3DLL * ((a4[1] - *a4) >> 3) <= v17)
        {
          sub_6FAB4();
        }

        v42 = *(v6 + 116);
        v41 = *a4 + 168 * v17;
        sub_9BCD50(v41, a4, v62);
        sub_A25DEC(a1[1], (v6 + 768), *(v6 + 780), v60);
        v18 = v63;
        if ((v63 & 0x80u) != 0)
        {
          v18 = v62[1];
        }

        if (!v18)
        {
          goto LABEL_68;
        }

        v19 = v61;
        if ((v61 & 0x80u) != 0)
        {
          v19 = v60[1];
        }

        if (!v19)
        {
          goto LABEL_68;
        }

        v58 = 0;
        v57 = 0u;
        v56 = 0u;
        v55 = 0u;
        v54 = 0u;
        v59 = 0x7FFFFFFF;
        v53 = 0uLL;
        v52 = 0;
        v20 = sub_92FC60(a1[1], *(v12 + 56), 0, "line");
        v21 = v14 + 208 * v13;
        v22 = (v20 - *v20);
        if ((*v22 >= 0x57u && (v23 = v22[43]) != 0 && (v24 = a4, v25 = a3, *(v20 + v23)) || (v26 = sub_A26074(*a1, (v21 + 56)), v24 = a4, v25 = a3, v26)) && (v27 = sub_A260D0(a1, a2, v25, v24), v24 = a4, v27))
        {
          sub_A26570(a2, a3, &v47);
          v28 = v47;
          v52 = v47;
          v53 = v48;
          if (v47 == v48)
          {
            sub_A26300(a1, a2, a4, &v47);
          }

          else
          {
            v29 = *(v48 - 8);
            if (v29 >= (a3[1] - *a3) >> 5)
            {
              sub_6FAB4();
            }

            v30 = sub_A26804((*a3 + 32 * v29));
            sub_A26300(a1, v30, a4, &v47);
          }

          sub_A264C8(&v54, &v47);
          sub_2C13CC(&v47);
        }

        else
        {
          sub_A26300(a1, a2, v24, &v47);
          sub_A264C8(&v54, &v47);
          sub_2C13CC(&v47);
          v28 = 0;
        }

        v31 = HIBYTE(v56);
        if (v56 < 0)
        {
          v31 = v56;
        }

        if (v31)
        {
          v32 = BYTE7(v55);
          if (SBYTE7(v55) < 0)
          {
            v32 = *(&v54 + 1);
          }

          if (v32)
          {
            v33 = v66;
            if (v66 == v67)
            {
LABEL_38:
              v34 = 0;
            }

            else
            {
              while (v33[24] != 4)
              {
                v33 += 80;
                if (v33 == v67)
                {
                  goto LABEL_38;
                }
              }

              if (v59 == 0x7FFFFFFF)
              {
                goto LABEL_63;
              }

              v34 = 1;
            }

            sub_9924B0(v51, &v64);
            sub_992654(v51, v60);
            sub_9926AC(v51, &v54);
            sub_9927B4(v51, *(a5 + 968));
            sub_992704(v51, v42, (v41 + 136));
            if (v34)
            {
              sub_99275C(v51, v59, &v57);
            }

            sub_993224(v51, v49);
            v35 = v50;
            if ((v50 & 0x80u) != 0)
            {
              v35 = v49[1];
            }

            if (v35)
            {
              sub_A26898(v62, &v55 + 8, __p);
              v37 = v46;
              if ((v46 & 0x80u) != 0)
              {
                v37 = __p[1];
              }

              if (v37)
              {
                sub_A26B5C(v36, a2, v49, __p, &v52);
              }

              else if (sub_7E7E4(1u))
              {
                sub_19594F8(&v47);
                sub_4A5C(&v47, "Failed to generate a ticketing segment display text for system ", 63);
                std::ostream::operator<<();
                sub_1959680(&v47, v43);
                sub_7E854(v43, 1u);
                if (v44 < 0)
                {
                  operator delete(v43[0]);
                }

                sub_1959728(&v47);
              }

              if (v46 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else if (sub_7E7E4(1u))
            {
              sub_19594F8(&v47);
              sub_4A5C(&v47, "Failed to format ticketing URL for system ", 42);
              std::ostream::operator<<();
              sub_1959680(&v47, __p);
              sub_7E854(__p, 1u);
              if (v46 < 0)
              {
                operator delete(__p[0]);
              }

              sub_1959728(&v47);
            }

            if (v50 < 0)
            {
              operator delete(v49[0]);
            }

            sub_992650(v51);
          }
        }

LABEL_63:
        if (v28)
        {
          operator delete(v28);
        }

        if (SHIBYTE(v58) < 0)
        {
          operator delete(v57);
          if ((SHIBYTE(v56) & 0x80000000) == 0)
          {
LABEL_67:
            if ((SBYTE7(v55) & 0x80000000) == 0)
            {
              goto LABEL_68;
            }

LABEL_74:
            operator delete(v54);
            if ((v61 & 0x80000000) == 0)
            {
LABEL_69:
              if ((v63 & 0x80000000) == 0)
              {
                goto LABEL_70;
              }

              goto LABEL_76;
            }

LABEL_75:
            operator delete(v60[0]);
            if ((v63 & 0x80000000) == 0)
            {
LABEL_70:
              v38 = v66;
              if (!v66)
              {
LABEL_81:
                if (v65 < 0)
                {
                  operator delete(v64);
                }

                return;
              }

LABEL_77:
              v39 = v67;
              v40 = v38;
              if (v67 != v38)
              {
                do
                {
                  v39 -= 80;
                  sub_993AF8(v39);
                }

                while (v39 != v38);
                v40 = v66;
              }

              v67 = v38;
              operator delete(v40);
              goto LABEL_81;
            }

LABEL_76:
            operator delete(v62[0]);
            v38 = v66;
            if (!v66)
            {
              goto LABEL_81;
            }

            goto LABEL_77;
          }
        }

        else if ((SHIBYTE(v56) & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        operator delete(*(&v55 + 1));
        if (SBYTE7(v55) < 0)
        {
          goto LABEL_74;
        }

LABEL_68:
        if ((v61 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_75;
      }
    }
  }
}

void sub_A259B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  sub_992650(&a63);
  if (v63)
  {
    STACK[0x210] = v63;
    operator delete(v63);
    sub_2C13CC(&STACK[0x220]);
    if (*(v64 - 169) < 0)
    {
LABEL_9:
      operator delete(*(v64 - 192));
      if ((*(v64 - 145) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_2C13CC(&STACK[0x220]);
    if (*(v64 - 169) < 0)
    {
      goto LABEL_9;
    }
  }

  if ((*(v64 - 145) & 0x80000000) == 0)
  {
LABEL_10:
    sub_9D8E70(v64 - 144);
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(*(v64 - 168));
  sub_9D8E70(v64 - 144);
  _Unwind_Resume(a1);
}

void sub_A25B3C()
{
  if (*(v0 - 145) < 0)
  {
    JUMPOUT(0xA25B24);
  }

  JUMPOUT(0xA25AD8);
}

BOOL sub_A25B74(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a2[9];
  if (0x66FD0EB66FD0EB67 * ((a2[10] - v3) >> 3) <= a3)
  {
    sub_6FAB4();
  }

  v4 = v3 + 696 * a3;
  v5 = *(v4 + 64);
  v6 = a2[12];
  if (0x4EC4EC4EC4EC4EC5 * ((a2[13] - v6) >> 4) <= v5)
  {
    sub_6FAB4();
  }

  v8 = sub_93E04C(*a1, *(v6 + 208 * v5 + 56), 0, "system");
  v9 = (v8 - *v8);
  if (*v9 >= 0x17u && v9[11])
  {
    return 1;
  }

  v11 = sub_92FC60(a1[1], *(v4 + 56), 0, "line");
  result = 0;
  v12 = (v11 - *v11);
  if (*v12 >= 0x55u)
  {
    return v12[42] != 0;
  }

  return result;
}

void sub_A25C84(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2[9];
  if (0x66FD0EB66FD0EB67 * ((a2[10] - v5) >> 3) <= a3)
  {
    sub_6FAB4();
  }

  v6 = v5 + 696 * a3;
  v7 = *(v6 + 64);
  v8 = a2[12];
  if (0x4EC4EC4EC4EC4EC5 * ((a2[13] - v8) >> 4) <= v7)
  {
    sub_6FAB4();
  }

  v10 = sub_92FC60(a1[1], *(v6 + 56), 0, "line");
  v11 = (v10 - *v10);
  if (*v11 < 0x55u || !v11[42])
  {
    v12 = sub_93E04C(*a1, *(v8 + 208 * v7 + 56), 0, "system");
    v15 = (v12 - *v12);
    if (*v15 < 0x17u)
    {
      goto LABEL_11;
    }

    v14 = v15[11];
    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = (v12 + v14 + *(v12 + v14));
    goto LABEL_12;
  }

  v12 = sub_92FC60(a1[1], *(v6 + 56), 0, "line");
  v13 = (v12 - *v12);
  if (*v13 >= 0x55u)
  {
    v14 = v13[42];
    if (v14)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  sub_9E22EC(v16, a4);
}

int *sub_A25DEC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v8 = *a2;
  result = sub_3A231C(a1, *a2, 0);
  v10 = (result - *result);
  v11 = *v10;
  if (v11 < 5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10[2];
    if (v10[2])
    {
      v12 += result + *(result + v12);
    }
  }

  v13 = (v12 + 4 * HIDWORD(v8) + 4 + *(v12 + 4 * HIDWORD(v8) + 4));
  v14 = (v13 - *v13);
  if (*v14 < 0x29u)
  {
    goto LABEL_28;
  }

  v15 = v14[20];
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = *(&v13[a3 + 1] + v15 + *(v13 + v15));
  if (v16 == -1)
  {
    goto LABEL_28;
  }

  if (v11 < 0x15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10[10];
    if (v17)
    {
      v17 += result + *(result + v17);
    }
  }

  v18 = v17 + 4 * v16;
  v21 = *(v18 + 4);
  v19 = v18 + 4;
  v20 = v21;
  v22 = *a2;
  v23 = sub_3A231C(a1, v22, 0);
  v24 = &v23[-*v23];
  if (*v24 < 5u)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 += &v23[*&v23[v25]];
    }
  }

  v26 = (v25 + 4 * HIDWORD(v22) + 4 + *(v25 + 4 * HIDWORD(v22) + 4));
  v27 = (v26 - *v26);
  if (*v27 >= 0xDu && (v28 = v27[6]) != 0)
  {
    v29 = *(v26 + v28);
  }

  else
  {
    v29 = -1;
  }

  result = sub_502FF8(a1, *&v23[24 * (v29 + a3) + 4 + *(v24 + 3) + *&v23[*(v24 + 3)]], 0, "stop");
  v30 = (result - *result);
  if (*v30 >= 0x33u && (v31 = v30[25]) != 0 && (v32 = (v19 + v20 - *(v19 + v20)), *v32 >= 5u) && (v33 = v32[2]) != 0 && (v34 = *(v19 + v20 + v33), v35 = (result + v31 + *(result + v31)), v34 < *v35))
  {
    v36 = (&v35[v34 + 1] + v35[v34 + 1]);
    v39 = *v36;
    v38 = v36 + 1;
    v37 = v39;
    if (v39 >= 0x17)
    {
      operator new();
    }

    *(a4 + 23) = v37;
    if (v37)
    {
      result = memcpy(a4, v38, v37);
    }

    *(a4 + v37) = 0;
  }

  else
  {
LABEL_28:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

BOOL sub_A26074(uint64_t a1, unint64_t *a2)
{
  v2 = sub_93E04C(a1, *a2, 0, "system");
  v3 = (v2 - *v2);
  return *v3 >= 0x1Bu && (v4 = v3[13]) != 0 && *(v2 + v4) != 0;
}

BOOL sub_A260D0(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v4 = a2[7];
  if (v4 == -1)
  {
    return 0;
  }

  if (v4 >= (a3[1] - *a3) >> 5)
  {
    sub_6FAB4();
  }

  v5 = (*a3 + 32 * v4);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    goto LABEL_42;
  }

  v8 = v7 - v6;
  if (v7 - v6 == 104)
  {
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v6;
    while (*v11)
    {
      v11 += 104;
      v10 -= 104;
      if (v11 == v7)
      {
        v12 = v7 - v6;
        goto LABEL_11;
      }
    }

    v12 = -v10;
LABEL_11:
    v9 = 0x4EC4EC4EC4EC4EC5 * (v12 >> 3);
  }

  if (0x4EC4EC4EC4EC4EC5 * (v8 >> 3) <= v9)
  {
LABEL_42:
    sub_6FAB4();
  }

  v13 = &v6[104 * v9];
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  if (v14 == v15)
  {
    return 0;
  }

  while ((*v14 - 5) < 2)
  {
    v14 += 5704;
    if (v14 == v15)
    {
      return 0;
    }
  }

  if (*v14 != 2)
  {
    return 0;
  }

  v16 = *(v14 + 752);
  v17 = a2[1];
  v18 = a2[2];
  if (v17 != v18)
  {
    while (*v17 != 2)
    {
      v17 += 5704;
      if (v17 == v18)
      {
        v17 = a2[2];
        break;
      }
    }
  }

  sub_A26D28(a1, a4, *(v17 + 752), v32);
  sub_A26D28(a1, a4, v16, __p);
  v21 = v33;
  if ((v33 & 0x80u) == 0)
  {
    v22 = v33;
  }

  else
  {
    v22 = v32[1];
  }

  v23 = v31;
  v24 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v23 = __p[1];
  }

  if (v22 == v23)
  {
    if ((v33 & 0x80u) == 0)
    {
      v25 = v32;
    }

    else
    {
      v25 = v32[0];
    }

    if ((v31 & 0x80u) == 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    result = memcmp(v25, v26, v22) == 0;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    result = 0;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  v28 = result;
  operator delete(__p[0]);
  result = v28;
LABEL_40:
  if (v21 < 0)
  {
    v29 = result;
    operator delete(v32[0]);
    return v29;
  }

  return result;
}

void sub_A262E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_A26300@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 5616);
  if (v6 == 0x7FFFFFFF)
  {
    result.n128_u64[0] = 0;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 72) = 0x7FFFFFFF;
  }

  else
  {
    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 72) = v6;
    v8 = *(v5 - 5656);
    if (0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3) <= v8)
    {
      sub_6FAB4();
    }

    v10 = *a3 + 168 * v8;
    sub_9BCD50(v10, a3, &v15);
    if (*(a4 + 47) < 0)
    {
      operator delete(*(a4 + 24));
    }

    *(a4 + 24) = v15;
    *(a4 + 40) = v16;
    sub_A25DEC(*(a1 + 8), (v5 - 4936), *(v5 - 4924), &v15);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    result.n128_u64[0] = v15;
    *a4 = v15;
    *(a4 + 16) = v16;
    v11 = (a4 + 48);
    if (a4 + 48 != v10 + 136)
    {
      v12 = *(v10 + 159);
      if (*(a4 + 71) < 0)
      {
        if (v12 >= 0)
        {
          v13 = (v10 + 136);
        }

        else
        {
          v13 = *(v10 + 136);
        }

        if (v12 >= 0)
        {
          v14 = *(v10 + 159);
        }

        else
        {
          v14 = *(v10 + 144);
        }

        sub_13B38(v11, v13, v14);
      }

      else if ((*(v10 + 159) & 0x80) != 0)
      {
        sub_13A68(v11, *(v10 + 136), *(v10 + 144));
      }

      else
      {
        result = *(v10 + 136);
        *(a4 + 64) = *(v10 + 152);
        *v11 = result;
      }
    }
  }

  return result;
}