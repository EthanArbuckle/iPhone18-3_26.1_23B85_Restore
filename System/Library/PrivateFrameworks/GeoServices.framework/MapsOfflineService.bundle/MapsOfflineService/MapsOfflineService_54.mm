uint64_t sub_381F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  for (i = 0; a2 != a3; v13 += 704)
  {
    sub_381FC0(a1, v5, a2);
    a2 += 704;
    v5 = v13 + 704;
  }

  i = 1;
  v8 = v5;
  sub_38206C(v10);
  return v8;
}

uint64_t sub_381FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_382108(a2, a3);
  v5 = *(a3 + 464);
  *(a2 + 480) = *(a3 + 480);
  *(a2 + 464) = v5;
  *(a2 + 496) = 0;
  *(a2 + 504) = 0;
  *(a2 + 488) = 0;
  sub_382728(a2 + 488, *(a3 + 488), *(a3 + 496), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 496) - *(a3 + 488)) >> 4));
  return sub_382D1C(a2 + 512, a3 + 512);
}

void sub_38203C(_Unwind_Exception *a1)
{
  sub_38329C((v1 + 488));
  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_38206C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      sub_33D080(v3 - 192);
      v5 = *(v3 - 216);
      if (v5)
      {
        v6 = *(v3 - 208);
        v7 = *(v3 - 216);
        if (v6 != v5)
        {
          do
          {
            v6 = sub_33D5A0(v6 - 176);
          }

          while (v6 != v5);
          v7 = *(v3 - 216);
        }

        *(v3 - 208) = v5;
        operator delete(v7);
      }

      v3 -= 704;
      sub_2C0F28(v3);
    }
  }

  return a1;
}

uint64_t sub_382108(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 96) = *(a2 + 96);
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v9 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v9;
  }

  if (*(a2 + 151) < 0)
  {
    sub_325C((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v10 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v10;
  }

  v11 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v11;
  if (*(a2 + 199) < 0)
  {
    sub_325C((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v12 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v12;
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_353184(a1 + 200, *(a2 + 200), *(a2 + 208), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 208) - *(a2 + 200)) >> 3));
  v13 = *(a2 + 224);
  *(a1 + 240) = 0;
  *(a1 + 224) = v13;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v15 = *(a2 + 240);
  v14 = *(a2 + 248);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  sub_353184(a1 + 264, *(a2 + 264), *(a2 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 272) - *(a2 + 264)) >> 3));
  if (*(a2 + 311) < 0)
  {
    sub_325C((a1 + 288), *(a2 + 288), *(a2 + 296));
  }

  else
  {
    v16 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v16;
  }

  *(a1 + 312) = *(a2 + 312);
  v17 = *(a2 + 336);
  v18 = *(a2 + 352);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v17;
  *(a1 + 352) = v18;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  sub_3825B4(a1 + 360, *(a2 + 360), *(a2 + 368), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 368) - *(a2 + 360)) >> 3));
  *(a1 + 384) = *(a2 + 384);
  v19 = *(a2 + 400);
  v20 = *(a2 + 416);
  v21 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 416) = v20;
  *(a1 + 432) = v21;
  *(a1 + 400) = v19;
  *(a1 + 456) = *(a2 + 456);
  return a1;
}

void sub_382474(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 264));
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 248) = v6;
    operator delete(v6);
  }

  sub_1A104(v3);
  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
    if ((*(v1 + 151) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(v1 + 151) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v1 + 127) & 0x80000000) == 0)
    {
LABEL_7:
      sub_1AA90(v2);
      if (*(v1 + 71) < 0)
      {
        operator delete(*(v1 + 48));
      }

      sub_34BE0(v1);
      _Unwind_Resume(a1);
    }

LABEL_6:
    operator delete(*(v1 + 104));
    goto LABEL_7;
  }

  operator delete(*(v1 + 128));
  if ((*(v1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  goto LABEL_6;
}

void sub_3825B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_3826B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_3809D8(&a11);
  *(v11 + 8) = v12;
  sub_3826D8(&a9);
  _Unwind_Resume(a1);
}

void ***sub_3826D8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_335538(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

void sub_382728(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_382810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 176;
    v15 = -v12;
    do
    {
      v14 = sub_33D5A0(v14) - 176;
      v15 += 176;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_382CA4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_382844(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  sub_382AF0((a1 + 72), (a2 + 72));
  v9 = *(a2 + 120);
  v10 = *(a2 + 136);
  *(a1 + 144) = 0;
  *(a1 + 136) = v10;
  *(a1 + 120) = v9;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v12 = *(a2 + 144);
  v11 = *(a2 + 152);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 168) = *(a2 + 168);
  return a1;
}

void sub_382A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v9 + 56) = v10;
  sub_2C1A58(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 32) = v13;
    operator delete(v13);
  }

  sub_52FF0(v9);
  _Unwind_Resume(a1);
}

void *sub_382AF0(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_382C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v9 + 32) = v10;
  sub_2C1A58(&a9);
  sub_1AA90(v9);
  _Unwind_Resume(a1);
}

void sub_382C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v9 + 8) = v10;
  sub_2C1A58(&a9);
  _Unwind_Resume(a1);
}

void sub_382C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  sub_2C1A58(&a9);
  sub_1AA90(v9);
  _Unwind_Resume(a1);
}

void ***sub_382CA4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_33D5A0(v4 - 176);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_382D1C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_382AF0((a1 + 8), (a2 + 8));
  v4 = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 56) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  if (v8 != v7)
  {
    if (!(((v8 - v7) >> 5) >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 135) < 0)
  {
    sub_325C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v9 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v9;
  }

  *(a1 + 136) = *(a2 + 136);
  if (*(a2 + 175) < 0)
  {
    sub_325C((a1 + 152), *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v10;
  }

  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_382EE0(_Unwind_Exception *a1)
{
  if (*(v3 + 135) < 0)
  {
    operator delete(*(v3 + 112));
  }

  sub_33D164(v4);
  sub_1AA90(v2);
  sub_33D6EC(v1);
  _Unwind_Resume(a1);
}

void sub_382F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v10 + 72) = v11;
  sub_2C1A58(&a9);
  sub_33D6EC(v9);
  _Unwind_Resume(a1);
}

void sub_382F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_383198(&a9);
  sub_1AA90(v10);
  sub_33D6EC(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_382F68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *v3 = *v4;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      v5 = *(v4 + 8);
      v6 = *(v4 + 16);
      if (v6 != v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4) < 0x555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v4 += 32;
      v3 += 32;
    }

    while (v4 != a3);
  }

  *(result + 8) = v3;
  return result;
}

void sub_3830A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_2C1A58(va1);
  sub_3830D4(va);
  *(a3 + 8) = a2;
  _Unwind_Resume(a1);
}

uint64_t sub_3830D4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      if (v3 == v4)
      {
        return a1;
      }

      v6 = *(v3 - 24);
      if (v6)
      {
        break;
      }

LABEL_6:
      v3 -= 32;
    }

    v7 = *(v3 - 16);
    v5 = *(v3 - 24);
    if (v7 == v6)
    {
LABEL_5:
      *(v3 - 16) = v6;
      operator delete(v5);
      goto LABEL_6;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v8 = v7 - 6;
        if (*(v7 - 25) < 0)
        {
LABEL_16:
          operator delete(*v8);
        }
      }

      else
      {
        v8 = v7 - 6;
        if (*(v7 - 25) < 0)
        {
          goto LABEL_16;
        }
      }

      v7 = v8;
      if (v8 == v6)
      {
        v5 = *(v3 - 24);
        goto LABEL_5;
      }
    }
  }

  return a1;
}

void sub_383198(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 != v2)
  {
    while (1)
    {
      v7 = *(v4 - 3);
      if (!v7)
      {
        goto LABEL_6;
      }

      v8 = *(v4 - 2);
      v6 = *(v4 - 3);
      if (v8 != v7)
      {
        break;
      }

LABEL_5:
      *(v4 - 2) = v7;
      operator delete(v6);
LABEL_6:
      v4 -= 32;
      if (v4 == v2)
      {
        v5 = **a1;
        goto LABEL_17;
      }
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v9 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_15:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_15;
        }
      }

      v8 = v9;
      if (v9 == v7)
      {
        v6 = *(v4 - 3);
        goto LABEL_5;
      }
    }
  }

LABEL_17:
  v1[1] = v2;

  operator delete(v5);
}

void **sub_38329C(void **a1)
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
        v3 = sub_33D5A0(v3 - 176);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_3832F8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v6 = *(v3 - 3);
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = *(v3 - 2);
      v5 = *(v3 - 3);
      if (v7 != v6)
      {
        break;
      }

LABEL_5:
      *(v3 - 2) = v6;
      operator delete(v5);
LABEL_6:
      v3 -= 32;
      if (v3 == v1)
      {
        v4 = *a1;
LABEL_17:
        a1[1] = v1;
        operator delete(v4);
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        return;
      }
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v8 = v7 - 6;
        if (*(v7 - 25) < 0)
        {
LABEL_15:
          operator delete(*v8);
        }
      }

      else
      {
        v8 = v7 - 6;
        if (*(v7 - 25) < 0)
        {
          goto LABEL_15;
        }
      }

      v7 = v8;
      if (v8 == v6)
      {
        v5 = *(v3 - 3);
        goto LABEL_5;
      }
    }
  }
}

uint64_t sub_3833D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 136) = *(a2 + 136);
    goto LABEL_25;
  }

  sub_37FB44((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
  sub_37FB44((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
  *(a1 + 56) = *(a2 + 56);
  sub_37FB44((a1 + 64), *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 4));
  sub_383C00(a1 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 5);
  v4 = *(a2 + 135);
  if (*(a1 + 135) < 0)
  {
    if (v4 >= 0)
    {
      v8 = (a2 + 112);
    }

    else
    {
      v8 = *(a2 + 112);
    }

    if (v4 >= 0)
    {
      v9 = *(a2 + 135);
    }

    else
    {
      v9 = *(a2 + 120);
    }

    sub_13B38(a1 + 112, v8, v9);
    *(a1 + 136) = *(a2 + 136);
    v6 = (a2 + 152);
    v7 = *(a2 + 175);
    if (*(a1 + 175) < 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((*(a2 + 135) & 0x80) == 0)
  {
    v5 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v5;
    *(a1 + 136) = *(a2 + 136);
    v6 = (a2 + 152);
    v7 = *(a2 + 175);
    if (*(a1 + 175) < 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    if ((v7 & 0x80) != 0)
    {
      sub_13A68((a1 + 152), *(a2 + 152), *(a2 + 160));
    }

    else
    {
      v10 = *v6;
      *(a1 + 168) = v6[2];
      *(a1 + 152) = v10;
    }

    goto LABEL_25;
  }

  sub_13A68((a1 + 112), *(a2 + 112), *(a2 + 120));
  *(a1 + 136) = *(a2 + 136);
  v6 = (a2 + 152);
  v7 = *(a2 + 175);
  if ((*(a1 + 175) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  if ((v7 & 0x80u) == 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(a2 + 152);
  }

  if ((v7 & 0x80u) == 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(a2 + 160);
  }

  sub_13B38(a1 + 152, v11, v12);
LABEL_25:
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t *sub_383574(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_33D5A0(v10 - 176);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x1745D1745D1745DLL)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xBA2E8BA2E8BA2ELL)
      {
        v14 = 0x1745D1745D1745DLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x2E8BA2E8BA2E8BA3 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_383814(v8, v5);
        v5 += 176;
        v8 += 176;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 176;
      result = sub_33D5A0(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_383814(v8, v5);
        v5 += 176;
        v8 += 176;
        v16 -= 176;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_382844(v15 + v19, v17 + v19);
        v19 += 176;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_3837E8(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 176;
    v7 = -v4;
    do
    {
      v6 = sub_33D5A0(v6) - 176;
      v7 += 176;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_383814(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v5 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v5;
  }

  else
  {
    sub_383908(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    sub_30945C((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
    sub_37FB44((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 4));
    sub_37FB44((a1 + 72), *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 4));
    sub_37FB44((a1 + 96), *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 4));
    v4 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v4;
    sub_146EC((a1 + 144), *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 2);
  }

  *(a1 + 168) = *(a2 + 168);
  return a1;
}

void sub_383908(char ****a1, char ***a2, char ***a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        v12 = a1[1];
        do
        {
          v15 = *(v12 - 3);
          v12 -= 3;
          v14 = v15;
          if (v15)
          {
            v16 = *(v10 - 2);
            v13 = v14;
            if (v16 != v14)
            {
              v17 = *(v10 - 2);
              do
              {
                v19 = *(v17 - 3);
                v17 -= 24;
                v18 = v19;
                if (v19)
                {
                  *(v16 - 2) = v18;
                  operator delete(v18);
                }

                v16 = v17;
              }

              while (v17 != v14);
              v13 = *v12;
            }

            *(v10 - 2) = v14;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
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

  v20 = a1[1];
  v21 = v20 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v20 - v9) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v6 != v9)
        {
          sub_3532D0(v9, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * (v6[1] - *v6));
        }

        v6 += 3;
        v9 += 3;
      }

      while (v6 != a3);
      v20 = a1[1];
    }

    if (v20 != v9)
    {
      v27 = v20;
      do
      {
        v30 = *(v27 - 3);
        v27 -= 3;
        v29 = v30;
        if (v30)
        {
          v31 = *(v20 - 2);
          v28 = v29;
          if (v31 != v29)
          {
            v32 = *(v20 - 2);
            do
            {
              v34 = *(v32 - 3);
              v32 -= 24;
              v33 = v34;
              if (v34)
              {
                *(v31 - 2) = v33;
                operator delete(v33);
              }

              v31 = v32;
            }

            while (v32 != v29);
            v28 = *v27;
          }

          *(v20 - 2) = v29;
          operator delete(v28);
        }

        v20 = v27;
      }

      while (v27 != v9);
    }

    a1[1] = v9;
  }

  else
  {
    if (v20 != v9)
    {
      v22 = v20 - v9;
      v23 = a2;
      do
      {
        if (v23 != v9)
        {
          sub_3532D0(v9, *v23, v23[1], 0xAAAAAAAAAAAAAAABLL * (v23[1] - *v23));
        }

        v23 += 3;
        v9 += 3;
        v22 -= 24;
      }

      while (v22);
    }

    sub_3815B4(a1, (v6 + v21), a3);
  }
}

void sub_383C00(uint64_t a1, __int128 **a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    sub_3832F8(a1);
    if (!(a4 >> 59))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      v11 = v9 >= 0x7FFFFFFFFFFFFFE0;
      v12 = 0x7FFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v6;
        if (v6 != v8)
        {
          sub_37FB44(v8 + 1, v6[1], v6[2], 0xAAAAAAAAAAAAAAABLL * (v6[2] - v6[1]));
        }

        v6 += 4;
        v8 += 4;
      }

      while (v6 != a3);
      v13 = *(a1 + 8);
    }

    while (1)
    {
      if (v13 == v8)
      {
        *(a1 + 8) = v8;
        return;
      }

      v18 = *(v13 - 3);
      if (v18)
      {
        break;
      }

LABEL_24:
      v13 -= 4;
    }

    v19 = *(v13 - 2);
    v17 = *(v13 - 3);
    if (v19 == v18)
    {
LABEL_23:
      *(v13 - 2) = v18;
      operator delete(v17);
      goto LABEL_24;
    }

    while (1)
    {
      if (*(v19 - 1) < 0)
      {
        operator delete(*(v19 - 3));
        v20 = v19 - 6;
        if (*(v19 - 25) < 0)
        {
LABEL_34:
          operator delete(*v20);
        }
      }

      else
      {
        v20 = v19 - 6;
        if (*(v19 - 25) < 0)
        {
          goto LABEL_34;
        }
      }

      v19 = v20;
      if (v20 == v18)
      {
        v17 = *(v13 - 3);
        goto LABEL_23;
      }
    }
  }

  if (v13 != v8)
  {
    v15 = v13 - v8;
    v16 = a2;
    do
    {
      *v8 = *v16;
      if (v16 != v8)
      {
        sub_37FB44(v8 + 1, v16[1], v16[2], 0xAAAAAAAAAAAAAAABLL * (v16[2] - v16[1]));
      }

      v16 += 4;
      v8 += 4;
      v15 -= 32;
    }

    while (v15);
  }

  sub_382F68(a1, v6 + v14, a3);
}

char *sub_383E68(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2)) < a5)
  {
    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * ((v9 - *a1) >> 2);
    if (v11 > 0x1555555555555555)
    {
      sub_1794();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 2);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0x1555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v31 = 4 * ((__dst - v10) >> 2);
    v32 = 12 * a5;
    v33 = v31 + 12 * a5;
    v34 = v31;
    do
    {
      v35 = *v6;
      *(v34 + 8) = *(v6 + 2);
      *v34 = v35;
      v34 += 12;
      v6 += 12;
      v32 -= 12;
    }

    while (v32);
    v36 = *(a1 + 8) - __dst;
    memcpy((v31 + 12 * a5), __dst, v36);
    v37 = v33 + v36;
    *(a1 + 8) = v5;
    v38 = *a1;
    v39 = &v5[-*a1];
    v40 = v31 - v39;
    memcpy((v31 - v39), *a1, v39);
    *a1 = v40;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v38)
    {
      operator delete(v38);
    }

    return v31;
  }

  v14 = v9 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - __dst) >> 2)) >= a5)
  {
    v14 = 12 * a5;
    v27 = &__dst[12 * a5];
    v28 = v9 - 12 * a5;
    for (i = *(a1 + 8); v28 < v9; v28 += 12)
    {
      v30 = *v28;
      *(i + 8) = *(v28 + 8);
      *i = v30;
      i += 12;
    }

    *(a1 + 8) = i;
    if (v9 == v27)
    {
      goto LABEL_27;
    }

    v25 = v9 - v27;
    v26 = &__dst[12 * a5];
    goto LABEL_26;
  }

  v15 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v16 = a5;
    v17 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v17;
    a5 = v16;
  }

  v18 = (v9 + v15);
  *(a1 + 8) = v9 + v15;
  if (v14 >= 1)
  {
    v19 = &v5[12 * a5];
    v20 = v9 + v15;
    if (&v18[-12 * a5] < v9)
    {
      v21 = &v5[a4];
      v22 = &v5[a4 + -12 * a5];
      do
      {
        v23 = v21 - v6;
        v24 = *(v22 - v6);
        *(v23 + 8) = *(v22 - v6 + 8);
        *v23 = v24;
        v22 += 12;
        v21 += 12;
      }

      while (v22 - v6 < v9);
      v20 = v21 - v6;
    }

    *(a1 + 8) = v20;
    if (v18 == v19)
    {
      goto LABEL_27;
    }

    v25 = v18 - v19;
    v26 = &v5[12 * a5];
LABEL_26:
    memmove(v26, v5, v25);
LABEL_27:
    memmove(v5, v6, v14);
  }

  return v5;
}

__int128 *sub_384128(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 6)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 6);
    if (v12 >> 58)
    {
      sub_1794();
    }

    v13 = v9 - v11;
    if (v13 >> 5 > v12)
    {
      v12 = v13 >> 5;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFC0)
    {
      v14 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v93 = a1;
    if (v14)
    {
      if (!(v14 >> 58))
      {
        operator new();
      }

      sub_1808();
    }

    v40 = 0;
    v41 = (a2 - v11) >> 6 << 6;
    __p = 0;
    v90 = v41;
    v91 = v41;
    v92 = 0;
    v42 = a5 << 6;
    v43 = v41 + (a5 << 6);
    do
    {
      v45 = v41 + v40;
      v46 = &a3[v40 / 0x10];
      if (SBYTE7(a3[v40 / 0x10 + 1]) < 0)
      {
        sub_325C(v45, *v46, *(v46 + 1));
      }

      else
      {
        v47 = *v46;
        *(v45 + 16) = *(v46 + 2);
        *v45 = v47;
      }

      v48 = v41 + v40;
      v49 = &a3[v40 / 0x10];
      *(v41 + v40 + 24) = *(&a3[v40 / 0x10 + 1] + 8);
      if (SHIBYTE(a3[v40 / 0x10 + 3]) < 0)
      {
        sub_325C((v48 + 40), *(v49 + 5), *(v49 + 6));
      }

      else
      {
        v44 = *(v49 + 40);
        *(v48 + 56) = *(v49 + 7);
        *(v48 + 40) = v44;
      }

      v40 += 64;
    }

    while (v42 != v40);
    v91 = v43;
    v5 = sub_3847AC(a1, &__p, v5);
    v50 = v90;
    while (1)
    {
      while (1)
      {
        v51 = v91;
        if (v91 == v50)
        {
          if (__p)
          {
            operator delete(__p);
          }

          return v5;
        }

        v91 -= 64;
        if ((*(v51 - 1) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(*(v51 - 24));
        if (*(v51 - 41) < 0)
        {
          goto LABEL_42;
        }
      }

      if (*(v51 - 41) < 0)
      {
LABEL_42:
        operator delete(*(v51 - 64));
      }
    }
  }

  v15 = v10 - a2;
  v16 = (v10 - a2) >> 6;
  if (v16 >= a5)
  {
    v34 = &a2[4 * a5];
    v35 = &v10[-4 * a5];
    if (v35 >= v10)
    {
      *(a1 + 8) = v10;
      if (v10 == v34)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v36 = &v10[-4 * a5];
      v37 = *(a1 + 8);
      do
      {
        v38 = *v36;
        *(v37 + 16) = *(v36 + 2);
        *v37 = v38;
        *(v36 + 1) = 0;
        *(v36 + 2) = 0;
        *v36 = 0;
        *(v37 + 24) = *(v36 + 24);
        v39 = *(v36 + 40);
        *(v37 + 56) = *(v36 + 7);
        *(v37 + 40) = v39;
        *(v36 + 6) = 0;
        *(v36 + 7) = 0;
        *(v36 + 5) = 0;
        v36 += 4;
        v37 += 64;
      }

      while (v36 < v10);
      *(a1 + 8) = v37;
      if (v10 == v34)
      {
LABEL_80:
        v75 = 0;
        v76 = &a3[4 * a5];
        do
        {
          v77 = &v5[v75];
          v78 = &a3[v75];
          if (a3 == v5)
          {
            *(v77 + 24) = *(v78 + 24);
          }

          else
          {
            v79 = *(v78 + 23);
            if (*(v77 + 23) < 0)
            {
              if (v79 >= 0)
              {
                v81 = &a3[v75];
              }

              else
              {
                v81 = *&a3[v75];
              }

              if (v79 >= 0)
              {
                v82 = *(v78 + 23);
              }

              else
              {
                v82 = *(&a3[v75] + 1);
              }

              sub_13B38(v77, v81, v82);
            }

            else if ((*(v78 + 23) & 0x80) != 0)
            {
              sub_13A68(v77, *&a3[v75], *(&a3[v75] + 1));
            }

            else
            {
              v80 = *v78;
              *(v77 + 16) = *(v78 + 2);
              *v77 = v80;
            }

            v83 = &v5[v75];
            *(&v5[v75 + 1] + 8) = *(&a3[v75 + 1] + 8);
            v84 = &a3[v75 + 2] + 1;
            v85 = HIBYTE(a3[v75 + 3]);
            if (SHIBYTE(v5[v75 + 3]) < 0)
            {
              if (v85 >= 0)
              {
                v87 = &a3[v75 + 2] + 8;
              }

              else
              {
                v87 = *v84;
              }

              if (v85 >= 0)
              {
                v88 = HIBYTE(a3[v75 + 3]);
              }

              else
              {
                v88 = *&a3[v75 + 3];
              }

              sub_13B38(v83 + 40, v87, v88);
            }

            else if ((HIBYTE(a3[v75 + 3]) & 0x80) != 0)
            {
              sub_13A68(v83 + 40, *v84, *&a3[v75 + 3]);
            }

            else
            {
              v86 = *v84;
              *(v83 + 7) = *(&a3[v75 + 3] + 1);
              *(v83 + 40) = v86;
            }
          }

          v75 += 4;
        }

        while (&a3[v75] != v76);
        return v5;
      }
    }

    v66 = 0;
    v67 = &a2[4 * a5] - v10;
    do
    {
      v70 = &v10[v66 / 0x10];
      v71 = &v10[v66 / 0x10 - 4];
      if (*(&v10[v66 / 0x10 - 2] - 9) < 0)
      {
        operator delete(*v71);
      }

      v72 = &v35[v66 / 0x10 - 4];
      v73 = *v72;
      *&v10[v66 / 0x10 - 3] = *&v35[v66 / 0x10 - 3];
      *v71 = v73;
      *(&v35[v66 / 0x10 - 2] - 9) = 0;
      *v72 = 0;
      *(v70 - 40) = *(&v35[v66 / 0x10 - 2] - 8);
      v74 = v70 - 3;
      if (*(v70 - 1) < 0)
      {
        operator delete(*v74);
      }

      v68 = &v35[v66 / 0x10];
      v69 = *(&v35[v66 / 0x10 - 1] - 8);
      *(v70 - 1) = *(&v35[v66 / 0x10 - 1] + 1);
      *v74 = v69;
      *(v68 - 1) = 0;
      *(v68 - 24) = 0;
      v66 -= 64;
    }

    while (v67 != v66);
    goto LABEL_80;
  }

  v17 = (a3 + v15);
  v18 = sub_384978(a1, (a3 + v15), a4, *(a1 + 8));
  v19 = v18;
  *(a1 + 8) = v18;
  if (v16 >= 1)
  {
    v20 = &v5[4 * a5];
    v21 = v18 - (a5 << 6);
    for (i = v18; v21 < v10; i += 64)
    {
      v23 = *v21;
      *(i + 16) = *(v21 + 16);
      *i = v23;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      *v21 = 0;
      *(i + 24) = *(v21 + 24);
      v24 = *(v21 + 40);
      *(i + 56) = *(v21 + 56);
      *(i + 40) = v24;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 40) = 0;
      v21 += 64;
    }

    *(a1 + 8) = i;
    if (v18 != v20)
    {
      v25 = 0;
      v26 = -64 * a5;
      do
      {
        v29 = v25 + v19;
        v30 = (v25 + v19 - 64);
        if (*(v25 + v19 - 41) < 0)
        {
          operator delete(*v30);
        }

        v31 = (v26 + v19 - 64);
        v32 = *v31;
        *(v25 + v19 - 48) = *(v26 + v19 - 48);
        *v30 = v32;
        *(v26 + v19 - 41) = 0;
        *v31 = 0;
        *(v29 - 40) = *(v26 + v19 - 40);
        v33 = (v29 - 24);
        if (*(v29 - 1) < 0)
        {
          operator delete(*v33);
        }

        v27 = v26 + v19;
        v28 = *(v26 + v19 - 24);
        *(v29 - 8) = *(v26 + v19 - 8);
        *v33 = v28;
        *(v27 - 1) = 0;
        *(v27 - 24) = 0;
        v25 -= 64;
        v20 += 4;
        v26 -= 64;
      }

      while (v19 != v20);
    }

    if (v10 != v5)
    {
      v53 = 0;
      do
      {
        v54 = &v5[v53];
        v55 = &a3[v53];
        if (a3 == v5)
        {
          *(v54 + 24) = *(v55 + 24);
        }

        else
        {
          v56 = *(v55 + 23);
          if (*(v54 + 23) < 0)
          {
            if (v56 >= 0)
            {
              v58 = &a3[v53];
            }

            else
            {
              v58 = *&a3[v53];
            }

            if (v56 >= 0)
            {
              v59 = *(v55 + 23);
            }

            else
            {
              v59 = *(&a3[v53] + 1);
            }

            sub_13B38(v54, v58, v59);
          }

          else if ((*(v55 + 23) & 0x80) != 0)
          {
            sub_13A68(v54, *&a3[v53], *(&a3[v53] + 1));
          }

          else
          {
            v57 = *v55;
            *(v54 + 16) = *(v55 + 2);
            *v54 = v57;
          }

          v60 = &v5[v53];
          *(&v5[v53 + 1] + 8) = *(&a3[v53 + 1] + 8);
          v61 = &a3[v53 + 2] + 1;
          v62 = HIBYTE(a3[v53 + 3]);
          if (SHIBYTE(v5[v53 + 3]) < 0)
          {
            if (v62 >= 0)
            {
              v64 = &a3[v53 + 2] + 8;
            }

            else
            {
              v64 = *v61;
            }

            if (v62 >= 0)
            {
              v65 = HIBYTE(a3[v53 + 3]);
            }

            else
            {
              v65 = *&a3[v53 + 3];
            }

            sub_13B38(v60 + 40, v64, v65);
          }

          else if ((HIBYTE(a3[v53 + 3]) & 0x80) != 0)
          {
            sub_13A68(v60 + 40, *v61, *&a3[v53 + 3]);
          }

          else
          {
            v63 = *v61;
            *(v60 + 7) = *(&a3[v53 + 3] + 1);
            *(v60 + 40) = v63;
          }
        }

        v53 += 4;
      }

      while (&a3[v53] != v17);
    }
  }

  return v5;
}

void sub_38474C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_384B0C(va);
  _Unwind_Resume(a1);
}

void sub_384760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  a12 = v13 + v12;
  sub_384B0C(&a10);
  _Unwind_Resume(a1);
}

void sub_38477C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  if (*(v13 + v12 + 23) < 0)
  {
    operator delete(*(v13 + v12));
  }

  a12 = v13 + v12;
  sub_384B0C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_3847AC(__int128 **a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 2);
      *v8 = v10;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      *(v8 + 24) = *(v9 + 24);
      v11 = *(v9 + 40);
      *(v8 + 56) = *(v9 + 7);
      *(v8 + 40) = v11;
      *(v9 + 6) = 0;
      *(v9 + 7) = 0;
      *(v9 + 5) = 0;
      v9 += 4;
      v8 += 64;
    }

    while (v9 != v7);
    for (i = a3; i != v7; i += 8)
    {
      if (*(i + 63) < 0)
      {
        operator delete(i[5]);
        if (*(i + 23) < 0)
        {
LABEL_10:
          operator delete(*i);
        }
      }

      else if (*(i + 23) < 0)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = *a1;
  v14 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v15 = (v14 + v13 - a3);
  if (v13 != a3)
  {
    v16 = v13;
    v17 = v14 + v13 - a3;
    do
    {
      v18 = *v16;
      *(v17 + 16) = *(v16 + 2);
      *v17 = v18;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      *v16 = 0;
      *(v17 + 24) = *(v16 + 24);
      v19 = *(v16 + 40);
      *(v17 + 56) = *(v16 + 7);
      *(v17 + 40) = v19;
      *(v16 + 6) = 0;
      *(v16 + 7) = 0;
      *(v16 + 5) = 0;
      v16 += 4;
      v17 += 64;
    }

    while (v16 != a3);
    do
    {
      if (*(v13 + 63) < 0)
      {
        operator delete(*(v13 + 5));
        if (*(v13 + 23) < 0)
        {
LABEL_20:
          operator delete(*v13);
        }
      }

      else if (*(v13 + 23) < 0)
      {
        goto LABEL_20;
      }

      v13 += 4;
    }

    while (v13 != a3);
  }

  a2[1] = v15;
  v20 = *a1;
  *a1 = v15;
  a1[1] = v20;
  a2[1] = v20;
  v21 = a1[1];
  a1[1] = a2[2];
  a2[2] = v21;
  v22 = a1[2];
  a1[2] = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_384978(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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

      *(v4 + 24) = *(v6 + 24);
      if (*(v6 + 63) < 0)
      {
        sub_325C((v4 + 40), *(v6 + 5), *(v6 + 6));
      }

      else
      {
        v7 = *(v6 + 40);
        *(v4 + 56) = *(v6 + 7);
        *(v4 + 40) = v7;
      }

      v6 += 4;
      v4 = v10 + 64;
      v10 += 64;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_384A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_384A80(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_384A80(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v7 = v4 - 8;
          if (*(v4 - 41) < 0)
          {
LABEL_9:
            operator delete(*v7);
          }
        }

        else
        {
          v7 = v4 - 8;
          if (*(v4 - 41) < 0)
          {
            goto LABEL_9;
          }
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

uint64_t sub_384B0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 41) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 41) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 64));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_384B90(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v13 = a3 - a2;
    if (v13)
    {
      v14 = result;
      memmove(result, a2, v13);
      result = v14;
    }

    a1[1] = &result[v13];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    a1[1] = &v9[v12];
  }

  return result;
}

void sub_384CDC(uint64_t a1, const void ***a2, const void ***a3, unint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 3) < a4)
  {
    if (v7)
    {
      v8 = a4;
      v9 = *(a1 + 8);
      v10 = *a1;
      if (v9 != v7)
      {
        do
        {
          v12 = *(v9 - 4);
          if (v12)
          {
            v13 = *(v9 - 3);
            v11 = *(v9 - 4);
            if (v13 != v12)
            {
              do
              {
                v14 = *(v13 - 25);
                v13 -= 6;
                if (v14 < 0)
                {
                  operator delete(*v13);
                }
              }

              while (v13 != v12);
              v11 = *(v9 - 4);
            }

            *(v9 - 3) = v12;
            operator delete(v11);
          }

          v9 -= 40;
        }

        while (v9 != v7);
        v10 = *a1;
      }

      *(a1 + 8) = v7;
      operator delete(v10);
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v8;
    }

    if (a4 <= 0x666666666666666)
    {
      v22 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v23 = 2 * v22;
      if (2 * v22 <= a4)
      {
        v23 = a4;
      }

      if (v22 >= 0x333333333333333)
      {
        v24 = 0x666666666666666;
      }

      else
      {
        v24 = v23;
      }

      if (v24 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = *(a1 + 8);
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v7) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v20 = a2 + 2;
      do
      {
        v21 = v20 - 2;
        *v7 = *(v20 - 2);
        if (v7 != (v20 - 2))
        {
          sub_3852CC(v7 + 1, *(v20 - 1), *v20, 0xAAAAAAAAAAAAAAABLL * ((*v20 - *(v20 - 1)) >> 4));
        }

        *(v7 + 4) = v20[2];
        v7 += 40;
        v20 += 5;
      }

      while (v21 + 5 != a3);
      v15 = *(a1 + 8);
    }

    while (v15 != v7)
    {
      v27 = *(v15 - 4);
      if (v27)
      {
        v28 = *(v15 - 3);
        v26 = *(v15 - 4);
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
          v26 = *(v15 - 4);
        }

        *(v15 - 3) = v27;
        operator delete(v26);
      }

      v15 -= 40;
    }

    *(a1 + 8) = v7;
  }

  else
  {
    v16 = (a2 + v15 - v7);
    if (v15 != v7)
    {
      v17 = (v7 + 8);
      v18 = a2 + 2;
      do
      {
        v19 = v18 - 2;
        *(v17 - 1) = *(v18 - 2);
        if (v17 - 1 != (v18 - 2))
        {
          sub_3852CC(v17, *(v18 - 1), *v18, 0xAAAAAAAAAAAAAAABLL * ((*v18 - *(v18 - 1)) >> 4));
        }

        v17[3] = v18[2];
        v17 += 5;
        v18 += 5;
      }

      while (v19 + 5 != v16);
      v15 = *(a1 + 8);
    }

    v30 = v15;
    v25 = v15;
    if (v16 != a3)
    {
      v25 = v15;
      do
      {
        *v25 = *v16;
        *(v25 + 1) = 0;
        *(v25 + 2) = 0;
        *(v25 + 3) = 0;
        sub_3850D8((v25 + 8), v16[1], v16[2], 0xAAAAAAAAAAAAAAABLL * ((v16[2] - v16[1]) >> 4));
        *(v25 + 4) = v16[4];
        v16 += 5;
        v25 = v30 + 40;
        v30 += 40;
      }

      while (v16 != a3);
    }

    *(a1 + 8) = v25;
  }
}

void sub_3850A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_38522C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_3850C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_38522C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_3850D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_38520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_A504(&a11);
  *(v11 + 8) = v12;
  sub_A480(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_38522C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 32);
      if (v6)
      {
        v7 = *(v3 - 24);
        v5 = *(v3 - 32);
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
          v5 = *(v3 - 32);
        }

        *(v3 - 24) = v6;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

void sub_3852CC(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
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
          v12 = *(v10 - 25);
          v10 -= 6;
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

    if (a4 <= 0x555555555555555)
    {
      v29 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v30 = 2 * v29;
      if (2 * v29 <= a4)
      {
        v30 = a4;
      }

      if (v29 >= 0x2AAAAAAAAAAAAAALL)
      {
        v31 = 0x555555555555555;
      }

      else
      {
        v31 = v30;
      }

      if (v31 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v27 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v27 >= 0)
            {
              v24 = v5;
            }

            else
            {
              v24 = *v5;
            }

            if (v27 >= 0)
            {
              v25 = *(v5 + 23);
            }

            else
            {
              v25 = v5[1];
            }

            sub_13B38(v8, v24, v25);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
          }

          else
          {
            v28 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v28;
          }
        }

        v26 = *(v5 + 3);
        *(v8 + 40) = *(v5 + 10);
        *(v8 + 24) = v26;
        v5 += 6;
        v8 += 48;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v36 = *(v13 - 25);
      v13 -= 6;
      if (v36 < 0)
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
      v16 = 0;
      do
      {
        v20 = &v16[v8];
        v21 = &v16[v5];
        if (v5 != v8)
        {
          v22 = *(v21 + 23);
          if (v20[23] < 0)
          {
            if (v22 >= 0)
            {
              v17 = &v16[v5];
            }

            else
            {
              v17 = *&v16[v5];
            }

            if (v22 >= 0)
            {
              v18 = *(v21 + 23);
            }

            else
            {
              v18 = *&v16[v5 + 8];
            }

            sub_13B38(&v16[v8], v17, v18);
          }

          else if ((*(v21 + 23) & 0x80) != 0)
          {
            sub_13A68(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
          }

          else
          {
            v23 = *v21;
            *(v20 + 2) = v21[2];
            *v20 = v23;
          }
        }

        v19 = *(v21 + 3);
        *(v20 + 10) = *(v21 + 10);
        *(v20 + 24) = v19;
        v16 += 48;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v37 = v13;
    v32 = v13;
    if (v15 != a3)
    {
      v32 = v13;
      do
      {
        if (v15[23] < 0)
        {
          sub_325C(v32, *v15, *(v15 + 1));
          v34 = v37;
        }

        else
        {
          v33 = *v15;
          v32[2] = *(v15 + 2);
          *v32 = v33;
          v34 = v32;
        }

        v35 = *(v15 + 24);
        *(v32 + 10) = *(v15 + 10);
        *(v32 + 3) = v35;
        v15 += 48;
        v32 = v34 + 6;
        v37 = v34 + 6;
      }

      while (v15 != a3);
    }

    a1[1] = v32;
  }
}

void sub_385688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A504(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_3856A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A504(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_3856B8(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  sub_38585C((a1 + 24), a2 + 3);
  sub_38585C((a1 + 144), a2 + 18);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  v6 = *(a2 + 33);
  v5 = *(a2 + 34);
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  v8 = *(a2 + 36);
  v7 = *(a2 + 37);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_3857F8(_Unwind_Exception *a1)
{
  sub_54774(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *sub_38585C(void *result, void *a2)
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

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  v6 = a2[6];
  v5 = a2[7];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  v8 = a2[9];
  v7 = a2[10];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  v10 = a2[12];
  v9 = a2[13];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_385A50(_Unwind_Exception *exception_object)
{
  v7 = *v2;
  if (*v2)
  {
    *(v1 + 104) = v7;
    operator delete(v7);
    v8 = *v5;
    if (!*v5)
    {
LABEL_3:
      v9 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 80) = v8;
  operator delete(v8);
  v9 = *v4;
  if (!*v4)
  {
LABEL_4:
    v10 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v1 + 56) = v9;
  operator delete(v9);
  v10 = *v3;
  if (!*v3)
  {
LABEL_5:
    v11 = *v1;
    if (!*v1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(v1 + 32) = v10;
  operator delete(v10);
  v11 = *v1;
  if (!*v1)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  *(v1 + 8) = v11;
  operator delete(v11);
  goto LABEL_7;
}

void sub_385B00()
{
  if (!*v0)
  {
    JUMPOUT(0x385A84);
  }

  JUMPOUT(0x385A7CLL);
}

void sub_385B10(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = a2[1] + *a1 - v5;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 16) = *(v8 + 16);
      *v7 = v9;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = *(v8 + 24);
      *(v7 + 40) = *(v8 + 40);
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = *(v8 + 48);
      *(v7 + 64) = *(v8 + 64);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 72) = *(v8 + 72);
      *(v7 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(v7 + 96) = *(v8 + 96);
      *(v7 + 112) = *(v8 + 112);
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 120) = *(v8 + 120);
      *(v7 + 136) = *(v8 + 136);
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      *(v7 + 144) = *(v8 + 144);
      *(v7 + 160) = *(v8 + 160);
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(v7 + 184) = 0;
      *(v7 + 168) = *(v8 + 168);
      *(v7 + 184) = *(v8 + 184);
      *(v8 + 168) = 0;
      *(v8 + 176) = 0;
      *(v8 + 184) = 0;
      *(v7 + 192) = 0;
      *(v7 + 200) = 0;
      *(v7 + 208) = 0;
      *(v7 + 192) = *(v8 + 192);
      *(v7 + 208) = *(v8 + 208);
      *(v8 + 192) = 0;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v7 + 216) = 0;
      *(v7 + 224) = 0;
      *(v7 + 232) = 0;
      *(v7 + 216) = *(v8 + 216);
      *(v7 + 232) = *(v8 + 232);
      *(v8 + 216) = 0;
      *(v8 + 224) = 0;
      *(v8 + 232) = 0;
      *(v7 + 240) = 0;
      *(v7 + 248) = 0;
      *(v7 + 256) = 0;
      *(v7 + 240) = *(v8 + 240);
      *(v7 + 256) = *(v8 + 256);
      *(v8 + 240) = 0;
      *(v8 + 248) = 0;
      *(v8 + 256) = 0;
      *(v7 + 264) = 0;
      *(v7 + 272) = 0;
      *(v7 + 280) = 0;
      *(v7 + 264) = *(v8 + 264);
      *(v7 + 272) = *(v8 + 272);
      *(v8 + 264) = 0;
      *(v8 + 272) = 0;
      *(v8 + 280) = 0;
      *(v7 + 288) = 0;
      *(v7 + 296) = 0;
      *(v7 + 304) = 0;
      *(v7 + 288) = *(v8 + 288);
      *(v7 + 304) = *(v8 + 304);
      *(v8 + 288) = 0;
      *(v8 + 296) = 0;
      *(v8 + 304) = 0;
      v8 += 312;
      v7 += 312;
    }

    while (v8 != v5);
    do
    {
      sub_361918(a1, v4);
      v4 += 312;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t sub_385DA0(uint64_t *a1, uint64_t a2, char *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0x86BCA1AF286BCA1BLL * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0x86BCA1AF286BCA1BLL * ((v10 - a2) >> 3)) >= a5)
      {
        v28 = (v10 - 152 * a5);
        for (i = a1[1]; v28 < v10; i += 152)
        {
          v30 = *v28;
          *(i + 16) = *(v28 + 2);
          *i = v30;
          *(v28 + 1) = 0;
          *(v28 + 2) = 0;
          *v28 = 0;
          v31 = *(v28 + 24);
          *(i + 40) = *(v28 + 5);
          *(i + 24) = v31;
          *(v28 + 4) = 0;
          *(v28 + 5) = 0;
          *(v28 + 3) = 0;
          *(i + 48) = *(v28 + 6);
          v32 = *(v28 + 56);
          *(i + 72) = *(v28 + 9);
          *(i + 56) = v32;
          *(v28 + 8) = 0;
          *(v28 + 9) = 0;
          *(v28 + 7) = 0;
          v33 = v28[5];
          *(i + 96) = *(v28 + 12);
          *(i + 80) = v33;
          *(v28 + 11) = 0;
          *(v28 + 12) = 0;
          *(v28 + 10) = 0;
          *(i + 104) = *(v28 + 104);
          *(i + 120) = 0;
          *(i + 128) = 0;
          *(i + 112) = 0;
          *(i + 112) = v28[7];
          *(i + 128) = *(v28 + 16);
          *(v28 + 14) = 0;
          *(v28 + 15) = 0;
          *(v28 + 16) = 0;
          *(i + 136) = *(v28 + 136);
          v28 = (v28 + 152);
        }

        a1[1] = i;
        if (v10 != a2 + 152 * a5)
        {
          v34 = v10 - 152;
          v35 = a2 + 152 * a5 - v10;
          v36 = (v10 - 152 - 152 * a5);
          do
          {
            sub_3766B8(v34, v36);
            v34 -= 152;
            v36 = (v36 - 152);
            v35 += 152;
          }

          while (v35);
        }

        v37 = &v7[152 * a5];
        v38 = v5;
        do
        {
          sub_3863AC(v38, v7);
          v7 += 152;
          v38 += 152;
        }

        while (v7 != v37);
      }

      else
      {
        v16 = &a3[v15];
        v17 = sub_38623C(a1, &a3[v15], a4, a1[1]);
        a1[1] = v17;
        if (v15 >= 1)
        {
          v18 = v17 - 152 * a5;
          for (j = v17; v18 < v10; j += 152)
          {
            v20 = *v18;
            *(j + 16) = *(v18 + 16);
            *j = v20;
            *(v18 + 8) = 0;
            *(v18 + 16) = 0;
            *v18 = 0;
            v21 = *(v18 + 24);
            *(j + 40) = *(v18 + 40);
            *(j + 24) = v21;
            *(v18 + 32) = 0;
            *(v18 + 40) = 0;
            *(v18 + 24) = 0;
            *(j + 48) = *(v18 + 48);
            v22 = *(v18 + 56);
            *(j + 72) = *(v18 + 72);
            *(j + 56) = v22;
            *(v18 + 64) = 0;
            *(v18 + 72) = 0;
            *(v18 + 56) = 0;
            v23 = *(v18 + 80);
            *(j + 96) = *(v18 + 96);
            *(j + 80) = v23;
            *(v18 + 88) = 0;
            *(v18 + 96) = 0;
            *(v18 + 80) = 0;
            *(j + 104) = *(v18 + 104);
            *(j + 120) = 0;
            *(j + 128) = 0;
            *(j + 112) = 0;
            *(j + 112) = *(v18 + 112);
            *(j + 128) = *(v18 + 128);
            *(v18 + 112) = 0;
            *(v18 + 120) = 0;
            *(v18 + 128) = 0;
            *(j + 136) = *(v18 + 136);
            v18 += 152;
          }

          a1[1] = j;
          if (v17 != v5 + 152 * a5)
          {
            v24 = v17 - 152;
            v25 = v5 + 152 * a5 - v17;
            v26 = (v17 - 152 - 152 * a5);
            do
            {
              sub_3766B8(v24, v26);
              v24 -= 152;
              v26 = (v26 - 152);
              v25 += 152;
            }

            while (v25);
          }

          v27 = v5;
          do
          {
            sub_3863AC(v27, v7);
            v7 += 152;
            v27 += 152;
          }

          while (v7 != v16);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x79435E50D79435E5 * ((v10 - *a1) >> 3);
      if (v12 > 0x1AF286BCA1AF286)
      {
        sub_1794();
      }

      v13 = 0x86BCA1AF286BCA1BLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0xD79435E50D7943)
      {
        v14 = 0x1AF286BCA1AF286;
      }

      else
      {
        v14 = v12;
      }

      v52 = a1;
      if (v14)
      {
        if (v14 <= 0x1AF286BCA1AF286)
        {
          operator new();
        }

        sub_1808();
      }

      v39 = 8 * ((a2 - v11) >> 3);
      __p = 0;
      v50 = v39;
      v51 = v39;
      v40 = 152 * a5;
      v41 = v39 + 152 * a5;
      do
      {
        sub_362338(v39, v7);
        v39 += 152;
        v7 += 152;
        v40 -= 152;
      }

      while (v40);
      *&v51 = v41;
      v42 = v50;
      sub_38673C(a1, v5, a1[1], v41);
      v43 = *a1;
      v44 = v50;
      *&v51 = v41 + a1[1] - v5;
      a1[1] = v5;
      v45 = v44 + v43 - v5;
      sub_38673C(a1, v43, v5, v45);
      v46 = *a1;
      *a1 = v45;
      v47 = a1[2];
      *(a1 + 1) = v51;
      *&v51 = v46;
      *(&v51 + 1) = v47;
      __p = v46;
      v50 = v46;
      sub_2C75A4(&__p, v46);
      if (__p)
      {
        operator delete(__p);
      }

      return v42;
    }
  }

  return v5;
}

void sub_386210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2C756C(va);
  _Unwind_Resume(a1);
}

void sub_386224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2C756C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_38623C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a4;
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_362338(v5, v7);
      v7 = (v7 + 152);
      v5 = v13 + 152;
      v13 += 152;
    }

    while (v7 != a3);
  }

  v11 = 1;
  v8 = v5;
  sub_3862E0(v10);
  return v8;
}

uint64_t sub_3862E0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 5);
        if (v7)
        {
          *(v4 - 4) = v7;
          operator delete(v7);
        }

        if (*(v4 - 49) < 0)
        {
          operator delete(*(v4 - 9));
          if ((*(v4 - 73) & 0x80000000) == 0)
          {
LABEL_9:
            if ((*(v4 - 105) & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_14;
          }
        }

        else if ((*(v4 - 73) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        operator delete(*(v4 - 12));
        if ((*(v4 - 105) & 0x80000000) == 0)
        {
LABEL_10:
          v8 = v4 - 19;
          if (*(v4 - 129) < 0)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

LABEL_14:
        operator delete(*(v4 - 16));
        v8 = v4 - 19;
        if (*(v4 - 129) < 0)
        {
LABEL_15:
          operator delete(*v8);
        }

LABEL_4:
        v4 = v8;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

char *sub_3863AC(char *result, char *a2)
{
  v2 = a2;
  v3 = result;
  if (result == a2)
  {
    *(result + 6) = *(a2 + 6);
    result[104] = a2[104];
    *(result + 136) = *(a2 + 136);
    return result;
  }

  if ((result[23] & 0x80000000) == 0)
  {
    if (a2[23] < 0)
    {
      sub_13A68(result, *a2, *(a2 + 1));
      v5 = v2 + 24;
      v6 = v2[47];
      if (*(v3 + 47) < 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v4;
      v5 = a2 + 24;
      v6 = a2[47];
      if (result[47] < 0)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    if ((v6 & 0x80) != 0)
    {
      sub_13A68((v3 + 24), *(v2 + 3), *(v2 + 4));
      *(v3 + 48) = *(v2 + 6);
      v9 = v2 + 56;
      v10 = v2[79];
      if ((*(v3 + 79) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v8 = *v5;
      *(v3 + 40) = *(v5 + 2);
      *(v3 + 24) = v8;
      *(v3 + 48) = *(v2 + 6);
      v9 = v2 + 56;
      v10 = v2[79];
      if ((*(v3 + 79) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    if ((v10 & 0x80u) == 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = *(v2 + 7);
    }

    if ((v10 & 0x80u) == 0)
    {
      v17 = v10;
    }

    else
    {
      v17 = *(v2 + 8);
    }

    sub_13B38(v3 + 56, v16, v17);
    v14 = v2 + 80;
    v15 = v2[103];
    if (*(v3 + 103) < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if (a2[23] >= 0)
  {
    v7 = a2[23];
  }

  else
  {
    a2 = *a2;
    v7 = *(v2 + 1);
  }

  sub_13B38(result, a2, v7);
  v5 = v2 + 24;
  v6 = v2[47];
  if ((*(v3 + 47) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  if ((v6 & 0x80u) == 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = *(v2 + 3);
  }

  if ((v6 & 0x80u) == 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v2 + 4);
  }

  sub_13B38(v3 + 24, v11, v12);
  *(v3 + 48) = *(v2 + 6);
  v9 = v2 + 56;
  v10 = v2[79];
  if (*(v3 + 79) < 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((v10 & 0x80) != 0)
  {
    sub_13A68((v3 + 56), *(v2 + 7), *(v2 + 8));
    v14 = v2 + 80;
    v15 = v2[103];
    if (*(v3 + 103) < 0)
    {
LABEL_36:
      if ((v15 & 0x80u) == 0)
      {
        v19 = v14;
      }

      else
      {
        v19 = *(v2 + 10);
      }

      if ((v15 & 0x80u) == 0)
      {
        v20 = v15;
      }

      else
      {
        v20 = *(v2 + 11);
      }

      sub_13B38(v3 + 80, v19, v20);
      goto LABEL_44;
    }
  }

  else
  {
    v13 = *v9;
    *(v3 + 72) = v9[2];
    *(v3 + 56) = v13;
    v14 = v2 + 80;
    v15 = v2[103];
    if (*(v3 + 103) < 0)
    {
      goto LABEL_36;
    }
  }

LABEL_33:
  if ((v15 & 0x80) != 0)
  {
    sub_13A68((v3 + 80), *(v2 + 10), *(v2 + 11));
  }

  else
  {
    v18 = *v14;
    *(v3 + 96) = v14[2];
    *(v3 + 80) = v18;
  }

LABEL_44:
  *(v3 + 104) = v2[104];
  sub_3865E0((v3 + 112), *(v2 + 14), *(v2 + 15), (*(v2 + 15) - *(v2 + 14)) >> 4);
  *(v3 + 136) = *(v2 + 136);
  return v3;
}

char *sub_3865E0(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_38673C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *(a4 + 16) = *(v4 + 16);
      *a4 = v5;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *v4 = 0;
      v6 = *(v4 + 24);
      *(a4 + 40) = *(v4 + 40);
      *(a4 + 24) = v6;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 24) = 0;
      *(a4 + 48) = *(v4 + 48);
      v7 = *(v4 + 56);
      *(a4 + 72) = *(v4 + 72);
      *(a4 + 56) = v7;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 56) = 0;
      v8 = *(v4 + 80);
      *(a4 + 96) = *(v4 + 96);
      *(a4 + 80) = v8;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 80) = 0;
      *(a4 + 104) = *(v4 + 104);
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 112) = 0;
      *(a4 + 112) = *(v4 + 112);
      *(a4 + 128) = *(v4 + 128);
      *(v4 + 112) = 0;
      *(v4 + 120) = 0;
      *(v4 + 128) = 0;
      *(a4 + 136) = *(v4 + 136);
      v4 += 152;
      a4 += 152;
    }

    while (v4 != a3);
    v13 = a4;
  }

  v11 = 1;
  sub_2C73B4(a1, a2, a3);
  return sub_3862E0(v10);
}

int32x4_t sub_386858(int32x4_t *a1, int32x4_t *a2)
{
  v2 = a1[1];
  *a1 = vaddq_s32(*a1, *a2);
  a1[1] = vaddq_s32(v2, a2[1]);
  v3 = a1[3];
  a1[2] = vaddq_s32(a1[2], a2[2]);
  a1[3] = vaddq_s32(v3, a2[3]);
  result = vaddq_s32(a1[4], a2[4]);
  a1[4] = result;
  a1[5].i32[0] += a2[5].i32[0];
  return result;
}

void sub_3868B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 850045863;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1018212795;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = a3;
  *(a1 + 232) = a3;
  *(a1 + 240) = 0;
  sub_13E0();
  v5 = *(v4 + 24);
  if (v5)
  {
    sub_13E0();
    v5 = *(*(v6 + 24) + 248) + 1;
  }

  *(a1 + 248) = v5;
  operator new();
}

void sub_386B18(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::mutex::~mutex(v2);
  sub_2C1818(v1 + 3);
  sub_37E150(v1);
  _Unwind_Resume(a1);
}

void sub_386B64(int a1, int a2, uint64_t **a3)
{
  sub_13E0();
  v7 = v6;
  v17 = 0;
  v18 = 0;
  v16[0] = v6;
  v16[1] = &v17;
  sub_13E0();
  v9 = *(v8 + 24);
  std::mutex::lock((v9 + 48));
  sub_387118(v16);
  std::mutex::unlock((v9 + 48));
  add_explicit = atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  if (a1 != a2)
  {
    v12 = (~a1 + a2);
    if (v12 >= add_explicit)
    {
      v13 = 0;
      do
      {
        v14 = v13;
        v13 = add_explicit;
        a1 += (add_explicit - v14) & ~((add_explicit - v14) >> 63);
        v10 = sub_386CE8(a3, a1, v10);
        add_explicit = atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
      }

      while (v12 >= add_explicit);
    }
  }

  ++*(v7 + 16);
  v15 = v18;
  if (v18)
  {
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }
}

void sub_386CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::mutex::unlock((v3 + 48));
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_386CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_386CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

double sub_386CE8(uint64_t **a1, uint64_t a2, double result)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_387D14(a1[3], a1[4], &v49);
        v29 = **a1;
        v30 = v29[4];
        if (v30)
        {
          v29[5] = v30;
          operator delete(v30);
        }

        result = *&v49;
        *(v29 + 2) = v49;
        v29[6] = v50;
      }
    }

    else
    {
      sub_387584(a1[1], a1[2], &v49);
      v47 = **a1;
      v48 = v47[1];
      if (v48)
      {
        v47[2] = v48;
        operator delete(v48);
        v47[2] = 0;
        v47[3] = 0;
      }

      result = *&v49;
      *(v47 + 1) = v49;
      v47[3] = v50;
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          v4 = **a1;
          v5 = *(v4 + 200);
          v6 = *(v4 + 208);
          v7 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 3));
          if (v6 == v5)
          {
            v8 = 0;
          }

          else
          {
            v8 = v7;
          }

          sub_36B94C(v5, v6, &v49, v8, 1);
          v10 = **a1;
          v11 = *(v10 + 104);
          v12 = *(v10 + 112);
          v13 = 126 - 2 * __clz((v12 - v11) >> 5);
          if (v12 == v11)
          {
            v14 = 0;
          }

          else
          {
            v14 = v13;
          }

          sub_36990C(v11, v12, &v49, v14, 1, v9);
          v15 = **a1;
          v16 = *(v15 + 248);
          v17 = *(v15 + 256);
          v18 = v15 + 248;
          v19 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 2));
          if (v17 == v16)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19;
          }

          sub_36F804(v16, v17, &v49, v20, 1);
          sub_36F6AC(v18);
          sub_35AB08((**a1 + 312));
          v21 = **a1;
          v22 = *(v21 + 336);
          v23 = *(v21 + 344);
          v24 = 126 - 2 * __clz((v23 - v22) >> 6);
          if (v23 == v22)
          {
            v25 = 0;
          }

          else
          {
            v25 = v24;
          }

          sub_36DA30(v22, v23, &v49, v25, 1);
          v26 = sub_36F574(*(v21 + 336), *(v21 + 344));
          sub_36F428((v21 + 336), v26, *(v21 + 344));
          sub_388968(a1[7], a1[8], &v49);
          v27 = **a1;
          v28 = v27[16];
          if (v28)
          {
            v27[17] = v28;
            operator delete(v28);
          }

          *(v27 + 8) = v49;
          v27[18] = v50;
          sub_387334(a1[9]);
        }

        return result;
      }

      v33 = **a1;
      v34 = *(v33 + 176);
      v35 = *(v33 + 184);
      v36 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3));
      if (v35 == v34)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36;
      }

      sub_2C4DAC(v34, v35, &v49, v37, 1);
      v39 = *(v33 + 176);
      v38 = *(v33 + 184);
      if (v39 != v38)
      {
        if (v39 + 6 == v38)
        {
          goto LABEL_53;
        }

        v40 = 0;
        LODWORD(v41) = *v39;
        while (1)
        {
          v42 = v41;
          v43 = &v39[v40];
          v41 = *&v39[v40 + 6];
          if (v42 == v41 && *(v43 + 2) == WORD2(v41) && *(v43 + 6) == BYTE6(v41) && v43[2] == v43[8] && *(v43 + 2) == *(v43 + 5))
          {
            break;
          }

          v40 += 6;
          if (&v39[v40 + 6] == v38)
          {
            goto LABEL_53;
          }
        }

        v44 = &v39[v40];
        if (v44 == v38)
        {
          goto LABEL_53;
        }

        v45 = v44 + 12;
        if (v44 + 12 != v38)
        {
          do
          {
            if (__PAIR64__(*(v44 + 2), *v44) != __PAIR64__(WORD2(*v45), *v45) || *(v44 + 6) != BYTE6(*v45) || v44[2] != v45[2] || *(v44 + 2) != *(v45 + 2))
            {
              v46 = *v45;
              *(v44 + 5) = *(v45 + 2);
              *(v44 + 6) = v46;
              v44 += 6;
            }

            v45 += 6;
          }

          while (v45 != v38);
          v38 = *(v33 + 184);
        }

        v39 = v44 + 6;
      }

      if (v39 != v38)
      {
        *(v33 + 184) = v39;
      }

LABEL_53:
      sub_35AC6C((**a1 + 520));
      return result;
    }

    sub_38832C(a1[5], a1[6], &v49);
    v31 = **a1;
    v32 = v31[7];
    if (v32)
    {
      v31[8] = v32;
      operator delete(v32);
    }

    result = *&v49;
    *(v31 + 7) = v49;
    v31[9] = v50;
  }

  return result;
}

void sub_387118(void *a1)
{
  v1 = *(*a1 + 16);
  v2 = *(*(*a1 + 24) + 24);
  if (v1 >= (*(*(*a1 + 24) + 32) - v2) >> 4)
  {
    operator new();
  }

  v3 = a1[1];
  v4 = *(v2 + 16 * v1);
  v5 = *(v2 + 16 * v1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 8);
  *v3 = v4;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_387334(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    LODWORD(__p[0]) = 0;
    v24 = 0uLL;
    __p[1] = &v24;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    *(&v33 + 1) = 0;
    *&v34 = 0;
    LODWORD(v33) = 0;
    DWORD2(v34) = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v3 = (a1 + 80);
    v2 = *(a1 + 80);
    v4 = (a1 + 72);
    *(a1 + 64) = 0;
    v5 = a1 + 64;
    sub_252664(a1 + 72, v2);
    v6 = v24;
    *(v3 - 1) = __p[1];
    *v3 = v6;
    v7 = *(&v24 + 1);
    v3[1] = *(&v24 + 1);
    if (v7)
    {
      v6[2] = v3;
      __p[1] = &v24;
      v24 = 0uLL;
      v6 = 0;
    }

    else
    {
      *v4 = v3;
    }

    v8 = v36;
    *(a1 + 256) = v35;
    *(a1 + 272) = v8;
    *(a1 + 288) = v37;
    v9 = v32;
    *(a1 + 192) = v31;
    *(a1 + 208) = v9;
    v10 = v34;
    *(a1 + 224) = v33;
    *(a1 + 240) = v10;
    v11 = v28;
    *(a1 + 128) = v27;
    *(a1 + 144) = v11;
    v12 = v30;
    *(a1 + 160) = v29;
    *(a1 + 176) = v12;
    v13 = v26;
    *(a1 + 96) = v25;
    *(a1 + 112) = v13;
    sub_252664(&__p[1], v6);
    *__p = 0u;
    v24 = 0u;
    LODWORD(v25) = 1065353216;
    for (i = *(a1 + 32); i; i = *i)
    {
      sub_37E2A0(v5, (i + 3));
      v15 = *(i + 4);
      if (v15)
      {
        do
        {
          v16 = v15 & -v15;
          v22 = v16;
          v38 = &v22;
          v17 = sub_389008(__p, &v22);
          sub_37E2A0((v17 + 3), (i + 3));
          v22 = v16;
          v38 = &v22;
          *(sub_389008(__p, &v22) + 6) = v16;
          v18 = v16 == v15;
          v15 ^= v16;
        }

        while (!v18);
      }
    }

    sub_37E1AC(a1 + 16, __p);
    *(a1 + 64) = 0;
    *(a1 + 56) = 1;
    v19 = v24;
    if (v24)
    {
      do
      {
        v20 = *v19;
        sub_252664((v19 + 4), v19[5]);
        operator delete(v19);
        v19 = v20;
      }

      while (v20);
    }

    v21 = __p[0];
    __p[0] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }
}

void sub_387548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_388FA4(va);
  _Unwind_Resume(a1);
}

void sub_38755C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_388FA4(va);
  _Unwind_Resume(a1);
}

void sub_387570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_388FA4(va);
  _Unwind_Resume(a1);
}

int64x2_t **sub_387584@<X0>(int64x2_t **result@<X0>, int64x2_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = result[1] - *result;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5 >> 3;
  v7 = *a2;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v6 <= 3)
  {
    v9 = 0;
    v10 = 0;
LABEL_10:
    v16 = v8 - v10;
    v17 = v10;
    v18 = &v4->i64[v17];
    v19 = &v7->i64[v17];
    do
    {
      v21 = *v18++;
      v20 = v21;
      v22 = *v19++;
      v9 += (v22 - v20) >> 4;
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = v4 + 1;
  v12 = v7 + 1;
  v13 = 0uLL;
  v14 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = 0uLL;
  do
  {
    v13 = vsraq_n_s64(v13, vsubq_s64(v12[-1], v11[-1]), 4uLL);
    v15 = vsraq_n_s64(v15, vsubq_s64(*v12, *v11), 4uLL);
    v11 += 2;
    v12 += 2;
    v14 -= 4;
  }

  while (v14);
  v9 = vaddvq_s64(vaddq_s64(v15, v13));
  if (v6 != v10)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v9)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1794();
  }

LABEL_15:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_387744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_3877A0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1] - *a1;
  v47 = 0;
  memset(v48, 0, 13);
  __p = 0;
  if (!(v7 >> 3))
  {
    goto LABEL_5;
  }

  if ((v7 >> 3) == 1)
  {
    *&v50 = 0;
    *(&v50 + 1) = 0xFFFFLL;
    v8 = 1;
    goto LABEL_8;
  }

  v9 = (v7 >> 3) - 1;
  *&v50 = 0;
  *(&v50 + 1) = 0xFFFFLL;
  if (v9 >> 15)
  {
LABEL_5:
    v10 = 0;
    v8 = 0;
    LOWORD(v48[1]) = 0;
    v11 = (v7 >> 3);
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v8 = (1 << -__clz(v9));
LABEL_8:
  sub_387BC0(&__p, 2 * v8, &v50);
  v6 = *a1;
  v10 = __p;
  v12 = a1[1] - *a1;
  LOWORD(v48[1]) = v8;
  v11 = (v12 >> 3);
  if (v11)
  {
LABEL_9:
    v13 = 0;
    v14 = *a2;
    v15 = v10;
    do
    {
      v16 = *(v6 + 8 * v13);
      if (v16 == *(v14 + 8 * v13))
      {
        v16 = 0;
      }

      v17 = &v15[16 * LOWORD(v48[1])];
      *v17 = v16;
      *(v17 + 4) = v13++;
      v15 += 16;
    }

    while (v11 != v13);
    v8 = LOWORD(v48[1]);
  }

LABEL_14:
  v18 = (v47 - v10) >> 4;
  while (v8 < v18)
  {
    v19 = v18 - 1;
    v20 = __p + 16 * v19;
    *(v20 + 4) = v18 - 1 - v8;
    v21 = WORD1(v48[1]);
    if (*v20)
    {
      v21 = WORD1(v48[1]) + 1;
    }

    WORD1(v48[1]) = v21;
    v50 = *v20;
    if (v18 != 1)
    {
      while (1)
      {
        v25 = v19 >> 1;
        v26 = __p + 16 * v25;
        v49 = *v26;
        if (SWORD4(v49) == -1)
        {
          *v26 = v50;
          *(v26 + 4) = WORD4(v50);
          goto LABEL_16;
        }

        if (v50)
        {
          if (!v49)
          {
            goto LABEL_30;
          }

          v27 = sub_38E4A8(v50, v49);
          v26 = __p + 16 * v25;
          if (v27)
          {
            break;
          }
        }

        *v26 = v50;
        *(v26 + 4) = WORD4(v50);
        v22 = &v49;
LABEL_23:
        v23 = *v22;
        WORD4(v50) = *(v22 + 4);
        *&v50 = v23;
        v24 = v19 > 1;
        v19 >>= 1;
        if (!v24)
        {
          goto LABEL_16;
        }
      }

      *v26 = v49;
      *(v26 + 4) = WORD4(v49);
LABEL_30:
      v22 = &v50;
      goto LABEL_23;
    }

LABEL_16:
    LOWORD(v18) = v18 - 1;
    v8 = LOWORD(v48[1]);
  }

  BYTE4(v48[1]) = 1;
  if (WORD1(v48[1]))
  {
    v28 = *(__p + 4);
    sub_377AEC(a3, *(*a1 + 8 * v28));
    if (WORD1(v48[1]))
    {
      v29 = *(*a1 + 8 * v28);
      while (1)
      {
        v30 = *(__p + 4);
        if (!sub_38E4D4(*(*a1 + 8 * v30), v29))
        {
          v29 = *(*a1 + 8 * v30);
          sub_377AEC(a3, v29);
        }

        v31 = *(*a1 + 8 * v30);
        if (v31 == *(*a2 + 8 * v30))
        {
          v34 = *(*a1 + 8 * v30);
        }

        else
        {
          while (1)
          {
            v32 = sub_38E4D4(v31, v29);
            v33 = *a2;
            v34 = *(*a1 + 8 * v30);
            if (!v32)
            {
              break;
            }

            v31 = v34 + 16;
            *(*a1 + 8 * v30) = v34 + 16;
            v34 = v31;
            if (v31 == *(v33 + 8 * v30))
            {
              goto LABEL_43;
            }
          }

          v31 = *(v33 + 8 * v30);
        }

LABEL_43:
        v35 = v34 == v31 ? 0 : v34;
        v36 = __p;
        v37 = LOWORD(v48[1]) + v30;
        v38 = __p + 16 * v37;
        v39 = v35 || *v38 == 0;
        v40 = !v39;
        WORD1(v48[1]) -= v40;
        *__p = 0;
        *v38 = v35;
        *(v38 + 4) = v30;
        v50 = *v38;
        if (v37)
        {
          break;
        }

LABEL_34:
        *v36 = v50;
        v36[4] = WORD4(v50);
        if (!WORD1(v48[1]))
        {
          goto LABEL_62;
        }
      }

      while (1)
      {
        v43 = v37 >> 1;
        v44 = __p + 16 * v43;
        v49 = *v44;
        if (v50)
        {
          if (!v49)
          {
            goto LABEL_61;
          }

          v45 = sub_38E4A8(v50, v49);
          v44 = __p + 16 * v43;
          if (v45)
          {
            break;
          }
        }

        *v44 = v50;
        *(v44 + 4) = WORD4(v50);
        v41 = &v49;
LABEL_55:
        v42 = *v41;
        WORD4(v50) = *(v41 + 4);
        *&v50 = v42;
        v24 = v37 > 1;
        v37 >>= 1;
        if (!v24)
        {
          v36 = __p;
          goto LABEL_34;
        }
      }

      *v44 = v49;
      *(v44 + 4) = WORD4(v49);
LABEL_61:
      v41 = &v50;
      goto LABEL_55;
    }
  }

LABEL_62:
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_387B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_387BC0(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      v11 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v10 -= 16;
      }

      while (v10);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
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

    v12 = 16 * v6;
    v13 = 16 * a2;
    v14 = 16 * v6 + 16 * a2;
    v15 = (16 * v6);
    do
    {
      *v15++ = *a3;
      v13 -= 16;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

int64x2_t **sub_387D14@<X0>(int64x2_t **result@<X0>, int64x2_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = result[1] - *result;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5 >> 3;
  v7 = *a2;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v6 <= 3)
  {
    v9 = 0;
    v10 = 0;
LABEL_10:
    v16 = v8 - v10;
    v17 = v10;
    v18 = &v4->i64[v17];
    v19 = &v7->i64[v17];
    do
    {
      v21 = *v18++;
      v20 = v21;
      v22 = *v19++;
      v9 += (v22 - v20) >> 6;
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = v4 + 1;
  v12 = v7 + 1;
  v13 = 0uLL;
  v14 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = 0uLL;
  do
  {
    v13 = vsraq_n_s64(v13, vsubq_s64(v12[-1], v11[-1]), 6uLL);
    v15 = vsraq_n_s64(v15, vsubq_s64(*v12, *v11), 6uLL);
    v11 += 2;
    v12 += 2;
    v14 -= 4;
  }

  while (v14);
  v9 = vaddvq_s64(vaddq_s64(v15, v13));
  if (v6 != v10)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v9)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!(v9 >> 58))
    {
      operator new();
    }

    sub_1794();
  }

LABEL_15:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_387ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_387F30(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1] - *a1;
  v47 = 0;
  memset(v48, 0, 13);
  __p = 0;
  if (!(v7 >> 3))
  {
    goto LABEL_5;
  }

  if ((v7 >> 3) == 1)
  {
    *&v50 = 0;
    *(&v50 + 1) = 0xFFFFLL;
    v8 = 1;
    goto LABEL_8;
  }

  v9 = (v7 >> 3) - 1;
  *&v50 = 0;
  *(&v50 + 1) = 0xFFFFLL;
  if (v9 >> 15)
  {
LABEL_5:
    v10 = 0;
    v8 = 0;
    LOWORD(v48[1]) = 0;
    v11 = (v7 >> 3);
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v8 = (1 << -__clz(v9));
LABEL_8:
  sub_387BC0(&__p, 2 * v8, &v50);
  v6 = *a1;
  v10 = __p;
  v12 = a1[1] - *a1;
  LOWORD(v48[1]) = v8;
  v11 = (v12 >> 3);
  if (v11)
  {
LABEL_9:
    v13 = 0;
    v14 = *a2;
    v15 = v10;
    do
    {
      v16 = *(v6 + 8 * v13);
      if (v16 == *(v14 + 8 * v13))
      {
        v16 = 0;
      }

      v17 = &v15[16 * LOWORD(v48[1])];
      *v17 = v16;
      *(v17 + 4) = v13++;
      v15 += 16;
    }

    while (v11 != v13);
    v8 = LOWORD(v48[1]);
  }

LABEL_14:
  v18 = (v47 - v10) >> 4;
  while (v8 < v18)
  {
    v19 = v18 - 1;
    v20 = __p + 16 * v19;
    *(v20 + 4) = v18 - 1 - v8;
    v21 = WORD1(v48[1]);
    if (*v20)
    {
      v21 = WORD1(v48[1]) + 1;
    }

    WORD1(v48[1]) = v21;
    v50 = *v20;
    if (v18 != 1)
    {
      while (1)
      {
        v25 = v19 >> 1;
        v26 = __p + 16 * v25;
        v49 = *v26;
        if (SWORD4(v49) == -1)
        {
          *v26 = v50;
          *(v26 + 4) = WORD4(v50);
          goto LABEL_16;
        }

        if (v50)
        {
          if (!v49)
          {
            goto LABEL_30;
          }

          v27 = sub_38E340(v50, v49);
          v26 = __p + 16 * v25;
          if (v27)
          {
            break;
          }
        }

        *v26 = v50;
        *(v26 + 4) = WORD4(v50);
        v22 = &v49;
LABEL_23:
        v23 = *v22;
        WORD4(v50) = *(v22 + 4);
        *&v50 = v23;
        v24 = v19 > 1;
        v19 >>= 1;
        if (!v24)
        {
          goto LABEL_16;
        }
      }

      *v26 = v49;
      *(v26 + 4) = WORD4(v49);
LABEL_30:
      v22 = &v50;
      goto LABEL_23;
    }

LABEL_16:
    LOWORD(v18) = v18 - 1;
    v8 = LOWORD(v48[1]);
  }

  BYTE4(v48[1]) = 1;
  if (WORD1(v48[1]))
  {
    v28 = *(__p + 4);
    sub_35C2EC(a3, *(*a1 + 8 * v28));
    if (WORD1(v48[1]))
    {
      v29 = *(*a1 + 8 * v28);
      while (1)
      {
        v30 = *(__p + 4);
        if (!sub_38E27C(*(*a1 + 8 * v30), v29))
        {
          v29 = *(*a1 + 8 * v30);
          sub_35C2EC(a3, v29);
        }

        v31 = *(*a1 + 8 * v30);
        if (v31 == *(*a2 + 8 * v30))
        {
          v34 = *(*a1 + 8 * v30);
        }

        else
        {
          while (1)
          {
            v32 = sub_38E27C(v31, v29);
            v33 = *a2;
            v34 = *(*a1 + 8 * v30);
            if (!v32)
            {
              break;
            }

            v31 = v34 + 64;
            *(*a1 + 8 * v30) = v34 + 64;
            v34 = v31;
            if (v31 == *(v33 + 8 * v30))
            {
              goto LABEL_43;
            }
          }

          v31 = *(v33 + 8 * v30);
        }

LABEL_43:
        v35 = v34 == v31 ? 0 : v34;
        v36 = __p;
        v37 = LOWORD(v48[1]) + v30;
        v38 = __p + 16 * v37;
        v39 = v35 || *v38 == 0;
        v40 = !v39;
        WORD1(v48[1]) -= v40;
        *__p = 0;
        *v38 = v35;
        *(v38 + 4) = v30;
        v50 = *v38;
        if (v37)
        {
          break;
        }

LABEL_34:
        *v36 = v50;
        v36[4] = WORD4(v50);
        if (!WORD1(v48[1]))
        {
          goto LABEL_62;
        }
      }

      while (1)
      {
        v43 = v37 >> 1;
        v44 = __p + 16 * v43;
        v49 = *v44;
        if (v50)
        {
          if (!v49)
          {
            goto LABEL_61;
          }

          v45 = sub_38E340(v50, v49);
          v44 = __p + 16 * v43;
          if (v45)
          {
            break;
          }
        }

        *v44 = v50;
        *(v44 + 4) = WORD4(v50);
        v41 = &v49;
LABEL_55:
        v42 = *v41;
        WORD4(v50) = *(v41 + 4);
        *&v50 = v42;
        v24 = v37 > 1;
        v37 >>= 1;
        if (!v24)
        {
          v36 = __p;
          goto LABEL_34;
        }
      }

      *v44 = v49;
      *(v44 + 4) = WORD4(v49);
LABEL_61:
      v41 = &v50;
      goto LABEL_55;
    }
  }

LABEL_62:
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_388308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t **sub_38832C@<X0>(int64x2_t **result@<X0>, int64x2_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = result[1] - *result;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5 >> 3;
  v7 = *a2;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v6 <= 3)
  {
    v9 = 0;
    v10 = 0;
LABEL_10:
    v16 = v8 - v10;
    v17 = v10;
    v18 = &v4->i64[v17];
    v19 = &v7->i64[v17];
    do
    {
      v21 = *v18++;
      v20 = v21;
      v22 = *v19++;
      v9 += (v22 - v20) >> 5;
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = v4 + 1;
  v12 = v7 + 1;
  v13 = 0uLL;
  v14 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = 0uLL;
  do
  {
    v13 = vsraq_n_s64(v13, vsubq_s64(v12[-1], v11[-1]), 5uLL);
    v15 = vsraq_n_s64(v15, vsubq_s64(*v12, *v11), 5uLL);
    v11 += 2;
    v12 += 2;
    v14 -= 4;
  }

  while (v14);
  v9 = vaddvq_s64(vaddq_s64(v15, v13));
  if (v6 != v10)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v9)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!(v9 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

LABEL_15:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_3884EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_388548(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1] - *a1;
  v47 = 0;
  memset(v48, 0, 13);
  __p = 0;
  if (!(v7 >> 3))
  {
    goto LABEL_5;
  }

  if ((v7 >> 3) == 1)
  {
    *&v50 = 0;
    *(&v50 + 1) = 0xFFFFLL;
    v8 = 1;
    goto LABEL_8;
  }

  v9 = (v7 >> 3) - 1;
  *&v50 = 0;
  *(&v50 + 1) = 0xFFFFLL;
  if (v9 >> 15)
  {
LABEL_5:
    v10 = 0;
    v8 = 0;
    LOWORD(v48[1]) = 0;
    v11 = (v7 >> 3);
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v8 = (1 << -__clz(v9));
LABEL_8:
  sub_387BC0(&__p, 2 * v8, &v50);
  v6 = *a1;
  v10 = __p;
  v12 = a1[1] - *a1;
  LOWORD(v48[1]) = v8;
  v11 = (v12 >> 3);
  if (v11)
  {
LABEL_9:
    v13 = 0;
    v14 = *a2;
    v15 = v10;
    do
    {
      v16 = *(v6 + 8 * v13);
      if (v16 == *(v14 + 8 * v13))
      {
        v16 = 0;
      }

      v17 = &v15[16 * LOWORD(v48[1])];
      *v17 = v16;
      *(v17 + 4) = v13++;
      v15 += 16;
    }

    while (v11 != v13);
    v8 = LOWORD(v48[1]);
  }

LABEL_14:
  v18 = (v47 - v10) >> 4;
  while (v8 < v18)
  {
    v19 = v18 - 1;
    v20 = __p + 16 * v19;
    *(v20 + 4) = v18 - 1 - v8;
    v21 = WORD1(v48[1]);
    if (*v20)
    {
      v21 = WORD1(v48[1]) + 1;
    }

    WORD1(v48[1]) = v21;
    v50 = *v20;
    if (v18 != 1)
    {
      while (1)
      {
        v25 = v19 >> 1;
        v26 = __p + 16 * v25;
        v49 = *v26;
        if (SWORD4(v49) == -1)
        {
          *v26 = v50;
          *(v26 + 4) = WORD4(v50);
          goto LABEL_16;
        }

        if (v50)
        {
          if (!v49)
          {
            goto LABEL_30;
          }

          v27 = sub_38E440(v50, v49);
          v26 = __p + 16 * v25;
          if (v27)
          {
            break;
          }
        }

        *v26 = v50;
        *(v26 + 4) = WORD4(v50);
        v22 = &v49;
LABEL_23:
        v23 = *v22;
        WORD4(v50) = *(v22 + 4);
        *&v50 = v23;
        v24 = v19 > 1;
        v19 >>= 1;
        if (!v24)
        {
          goto LABEL_16;
        }
      }

      *v26 = v49;
      *(v26 + 4) = WORD4(v49);
LABEL_30:
      v22 = &v50;
      goto LABEL_23;
    }

LABEL_16:
    LOWORD(v18) = v18 - 1;
    v8 = LOWORD(v48[1]);
  }

  BYTE4(v48[1]) = 1;
  if (WORD1(v48[1]))
  {
    v28 = *(__p + 4);
    sub_2C3744(a3, *(*a1 + 8 * v28));
    if (WORD1(v48[1]))
    {
      v29 = *(*a1 + 8 * v28);
      while (1)
      {
        v30 = *(__p + 4);
        if (!sub_38E3E4(*(*a1 + 8 * v30), v29))
        {
          v29 = *(*a1 + 8 * v30);
          sub_2C3744(a3, v29);
        }

        v31 = *(*a1 + 8 * v30);
        if (v31 == *(*a2 + 8 * v30))
        {
          v34 = *(*a1 + 8 * v30);
        }

        else
        {
          while (1)
          {
            v32 = sub_38E3E4(v31, v29);
            v33 = *a2;
            v34 = *(*a1 + 8 * v30);
            if (!v32)
            {
              break;
            }

            v31 = v34 + 32;
            *(*a1 + 8 * v30) = v34 + 32;
            v34 = v31;
            if (v31 == *(v33 + 8 * v30))
            {
              goto LABEL_43;
            }
          }

          v31 = *(v33 + 8 * v30);
        }

LABEL_43:
        v35 = v34 == v31 ? 0 : v34;
        v36 = __p;
        v37 = LOWORD(v48[1]) + v30;
        v38 = __p + 16 * v37;
        v39 = v35 || *v38 == 0;
        v40 = !v39;
        WORD1(v48[1]) -= v40;
        *__p = 0;
        *v38 = v35;
        *(v38 + 4) = v30;
        v50 = *v38;
        if (v37)
        {
          break;
        }

LABEL_34:
        *v36 = v50;
        v36[4] = WORD4(v50);
        if (!WORD1(v48[1]))
        {
          goto LABEL_62;
        }
      }

      while (1)
      {
        v43 = v37 >> 1;
        v44 = __p + 16 * v43;
        v49 = *v44;
        if (v50)
        {
          if (!v49)
          {
            goto LABEL_61;
          }

          v45 = sub_38E440(v50, v49);
          v44 = __p + 16 * v43;
          if (v45)
          {
            break;
          }
        }

        *v44 = v50;
        *(v44 + 4) = WORD4(v50);
        v41 = &v49;
LABEL_55:
        v42 = *v41;
        WORD4(v50) = *(v41 + 4);
        *&v50 = v42;
        v24 = v37 > 1;
        v37 >>= 1;
        if (!v24)
        {
          v36 = __p;
          goto LABEL_34;
        }
      }

      *v44 = v49;
      *(v44 + 4) = WORD4(v49);
LABEL_61:
      v41 = &v50;
      goto LABEL_55;
    }
  }

LABEL_62:
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_388920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t **sub_388968@<X0>(int64x2_t **result@<X0>, int64x2_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = result[1] - *result;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5 >> 3;
  v7 = *a2;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v6 <= 3)
  {
    v9 = 0;
    v10 = 0;
LABEL_10:
    v16 = v8 - v10;
    v17 = v10;
    v18 = &v4->i64[v17];
    v19 = &v7->i64[v17];
    do
    {
      v21 = *v18++;
      v20 = v21;
      v22 = *v19++;
      v9 += (v22 - v20) >> 3;
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = v4 + 1;
  v12 = v7 + 1;
  v13 = 0uLL;
  v14 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = 0uLL;
  do
  {
    v13 = vsraq_n_s64(v13, vsubq_s64(v12[-1], v11[-1]), 3uLL);
    v15 = vsraq_n_s64(v15, vsubq_s64(*v12, *v11), 3uLL);
    v11 += 2;
    v12 += 2;
    v14 -= 4;
  }

  while (v14);
  v9 = vaddvq_s64(vaddq_s64(v15, v13));
  if (v6 != v10)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v9)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

LABEL_15:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_388B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_388B84(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1] - *a1;
  v47 = 0;
  memset(v48, 0, 13);
  __p = 0;
  if (!(v7 >> 3))
  {
    goto LABEL_5;
  }

  if ((v7 >> 3) == 1)
  {
    *&v50 = 0;
    *(&v50 + 1) = 0xFFFFLL;
    v8 = 1;
    goto LABEL_8;
  }

  v9 = (v7 >> 3) - 1;
  *&v50 = 0;
  *(&v50 + 1) = 0xFFFFLL;
  if (v9 >> 15)
  {
LABEL_5:
    v10 = 0;
    v8 = 0;
    LOWORD(v48[1]) = 0;
    v11 = (v7 >> 3);
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v8 = (1 << -__clz(v9));
LABEL_8:
  sub_387BC0(&__p, 2 * v8, &v50);
  v6 = *a1;
  v10 = __p;
  v12 = a1[1] - *a1;
  LOWORD(v48[1]) = v8;
  v11 = (v12 >> 3);
  if (v11)
  {
LABEL_9:
    v13 = 0;
    v14 = *a2;
    v15 = v10;
    do
    {
      v16 = *(v6 + 8 * v13);
      if (v16 == *(v14 + 8 * v13))
      {
        v16 = 0;
      }

      v17 = &v15[16 * LOWORD(v48[1])];
      *v17 = v16;
      *(v17 + 4) = v13++;
      v15 += 16;
    }

    while (v11 != v13);
    v8 = LOWORD(v48[1]);
  }

LABEL_14:
  v18 = (v47 - v10) >> 4;
  while (v8 < v18)
  {
    v19 = v18 - 1;
    v20 = __p + 16 * v19;
    *(v20 + 4) = v18 - 1 - v8;
    v21 = WORD1(v48[1]);
    if (*v20)
    {
      v21 = WORD1(v48[1]) + 1;
    }

    WORD1(v48[1]) = v21;
    v50 = *v20;
    if (v18 != 1)
    {
      while (1)
      {
        v25 = v19 >> 1;
        v26 = __p + 16 * v25;
        v49 = *v26;
        if (SWORD4(v49) == -1)
        {
          *v26 = v50;
          *(v26 + 4) = WORD4(v50);
          goto LABEL_16;
        }

        if (v50)
        {
          if (!v49)
          {
            goto LABEL_30;
          }

          v27 = sub_3907A8(v50, v49);
          v26 = __p + 16 * v25;
          if (v27)
          {
            break;
          }
        }

        *v26 = v50;
        *(v26 + 4) = WORD4(v50);
        v22 = &v49;
LABEL_23:
        v23 = *v22;
        WORD4(v50) = *(v22 + 4);
        *&v50 = v23;
        v24 = v19 > 1;
        v19 >>= 1;
        if (!v24)
        {
          goto LABEL_16;
        }
      }

      *v26 = v49;
      *(v26 + 4) = WORD4(v49);
LABEL_30:
      v22 = &v50;
      goto LABEL_23;
    }

LABEL_16:
    LOWORD(v18) = v18 - 1;
    v8 = LOWORD(v48[1]);
  }

  BYTE4(v48[1]) = 1;
  if (WORD1(v48[1]))
  {
    v28 = *(__p + 4);
    sub_2B5AD0(a3, *(*a1 + 8 * v28));
    if (WORD1(v48[1]))
    {
      v29 = *(*a1 + 8 * v28);
      while (1)
      {
        v30 = *(__p + 4);
        if (!sub_39077C(*(*a1 + 8 * v30), v29))
        {
          v29 = *(*a1 + 8 * v30);
          sub_2B5AD0(a3, v29);
        }

        v31 = *(*a1 + 8 * v30);
        if (v31 == *(*a2 + 8 * v30))
        {
          v34 = *(*a1 + 8 * v30);
        }

        else
        {
          while (1)
          {
            v32 = sub_39077C(v31, v29);
            v33 = *a2;
            v34 = *(*a1 + 8 * v30);
            if (!v32)
            {
              break;
            }

            v31 = v34 + 8;
            *(*a1 + 8 * v30) = v34 + 8;
            v34 = v31;
            if (v31 == *(v33 + 8 * v30))
            {
              goto LABEL_43;
            }
          }

          v31 = *(v33 + 8 * v30);
        }

LABEL_43:
        v35 = v34 == v31 ? 0 : v34;
        v36 = __p;
        v37 = LOWORD(v48[1]) + v30;
        v38 = __p + 16 * v37;
        v39 = v35 || *v38 == 0;
        v40 = !v39;
        WORD1(v48[1]) -= v40;
        *__p = 0;
        *v38 = v35;
        *(v38 + 4) = v30;
        v50 = *v38;
        if (v37)
        {
          break;
        }

LABEL_34:
        *v36 = v50;
        v36[4] = WORD4(v50);
        if (!WORD1(v48[1]))
        {
          goto LABEL_62;
        }
      }

      while (1)
      {
        v43 = v37 >> 1;
        v44 = __p + 16 * v43;
        v49 = *v44;
        if (v50)
        {
          if (!v49)
          {
            goto LABEL_61;
          }

          v45 = sub_3907A8(v50, v49);
          v44 = __p + 16 * v43;
          if (v45)
          {
            break;
          }
        }

        *v44 = v50;
        *(v44 + 4) = WORD4(v50);
        v41 = &v49;
LABEL_55:
        v42 = *v41;
        WORD4(v50) = *(v41 + 4);
        *&v50 = v42;
        v24 = v37 > 1;
        v37 >>= 1;
        if (!v24)
        {
          v36 = __p;
          goto LABEL_34;
        }
      }

      *v44 = v49;
      *(v44 + 4) = WORD4(v49);
LABEL_61:
      v41 = &v50;
      goto LABEL_55;
    }
  }

LABEL_62:
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_388F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_388FA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_252664((v2 + 4), v2[5]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_389008(void *a1, unsigned int *a2)
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

void sub_3893A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3628EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3893BC(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_389570(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_38955C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_389570(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3896C0(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_389874(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_389860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_389874(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3899C4(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_389B78(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_389B64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_389B78(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_389CC8(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_389E7C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_389E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_389E7C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void *sub_389FCC(uint64_t a1)
{
  v2 = a1 + 20480;
  if (*(a1 + 21135) < 0)
  {
    operator delete(*(a1 + 21112));
  }

  v3 = *(a1 + 21016);
  if (v3)
  {
    *(a1 + 21024) = v3;
    operator delete(v3);
  }

  if (*(v2 + 527) < 0)
  {
    operator delete(*(a1 + 20984));
  }

  v4 = *(a1 + 20960);
  if (v4)
  {
    v5 = *(a1 + 20968);
    v6 = *(a1 + 20960);
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
      v6 = *(a1 + 20960);
    }

    *(a1 + 20968) = v4;
    operator delete(v6);
  }

  v8 = *(a1 + 20928);
  if (v8)
  {
    *(a1 + 20936) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 20904);
  if (v9)
  {
    do
    {
      v10 = *v9;
      sub_253B4((v9 + 2));
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = *(a1 + 20888);
  *(a1 + 20888) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  sub_3874(a1 + 20424);
  v12 = *(a1 + 20280);
  if (v12)
  {
    *(a1 + 20288) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 0x4000);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(a1 + 12496);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  sub_360988(a1 + 11720);
  v15 = *(a1 + 7848);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(a1 + 7832);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = a1;
  }

  else
  {
    v17 = a1;
  }

  return sub_360B9C(v17);
}

uint64_t sub_38A234(uint64_t a1, __int128 *a2)
{
  *(a1 + 25) = 1;
  sub_37E06C(a1 + 80);
  if (*(a2 + 23) < 0)
  {
    sub_325C((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v4;
  }

  sub_38A2F8(a1 + 104, a2 + 24);
  v5 = malloc_type_malloc(328 * *(a1 + 72), 0x10B2040DA43EAA9uLL);
  *(a1 + 408) = v5;
  v6 = v5 + 328 * *(a1 + 72);

  return sub_38AB48(v5, v6, (a1 + 80));
}

void sub_38A2DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_38A2F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = *(a2 + 48);
  prime = *(a2 + 24);
  if (prime == 1)
  {
    prime = 2;
LABEL_19:
    sub_B07C(a1 + 16, prime);
    goto LABEL_20;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 24));
    v6 = *(a1 + 24);
    v7 = prime >= *&v6;
    if (prime > *&v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
    if (prime)
    {
      goto LABEL_19;
    }
  }

  if (!v7)
  {
    v8 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 48));
    if (*&v6 < 3uLL || (v9 = vcnt_s8(v6), v9.i16[0] = vaddlv_u8(v9), v9.u32[0] > 1uLL))
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

    if (prime < *&v6)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  for (i = *(a2 + 32); i; i = *i)
  {
    sub_38A628((a1 + 16), i + 4);
  }

  *(a1 + 56) = *(a2 + 56);
  sub_38A488(a1 + 64, a2 + 64);
  return a1;
}

void sub_38A44C(_Unwind_Exception *a1)
{
  sub_388FA4(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_38A468(_Unwind_Exception *a1)
{
  sub_388FA4(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_38A488(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = a1 + 16;
  v5 = (a1 + 8);
  *(a1 + 24) = 0;
  v6 = *(a2 + 8);
  v7 = (a2 + 16);
  if (v6 != (a2 + 16))
  {
    do
    {
      if (!*sub_38A998(v5, v4, &v22, &v21, v6 + 28))
      {
        operator new();
      }

      v8 = *(v6 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v6 + 2);
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  *(a1 + 32) = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  v13 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v13;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  v16 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v16;
  *(a1 + 112) = v14;
  *(a1 + 128) = v15;
  v17 = *(a2 + 176);
  v18 = *(a2 + 192);
  v19 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v19;
  *(a1 + 176) = v17;
  *(a1 + 192) = v18;
  return a1;
}

uint64_t *sub_38A628(void *a1, unsigned int *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_38A970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3628EC(va);
  _Unwind_Resume(a1);
}

void sub_38A984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3628EC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_38A998(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 28), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 28) < v16)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 28);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 28))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 28);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

uint64_t sub_38AB48(uint64_t result, uint64_t a2, __int128 *a3)
{
  if (result != a2)
  {
    v5 = 0;
    v6 = result;
    do
    {
      if (*(a3 + 23) < 0)
      {
        sub_325C(v6, *a3, *(a3 + 1));
      }

      else
      {
        v7 = *a3;
        *(v6 + 16) = *(a3 + 2);
        *v6 = v7;
      }

      sub_38A2F8(v6 + 24, a3 + 24);
      v6 += 328;
      v5 -= 328;
    }

    while (v6 != a2);
    return v6;
  }

  return result;
}

void sub_38ABF4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_37E06C(v1);
      v1 += 328;
      v3 -= 328;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void sub_38AC50(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *a2 = v3;
  a2[1] = v2;
  v5 = *(a1 + 4);
  *&v12 = *(a1 + 5);
  *(&v12 + 7) = *(a1 + 47);
  v6 = *(a1 + 55);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 4) = 0;
  v7 = *(a2 + 6);
  a1[2] = a2[2];
  *(a1 + 6) = v7;
  *(a2 + 47) = *(&v12 + 7);
  v8 = v12;
  *(a2 + 4) = v5;
  *(a2 + 5) = v8;
  *(a2 + 55) = v6;
  v9 = *(a1 + 7);
  *(a1 + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 9);
  *(a1 + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = 0uLL;
  v13 = 0;
  operator new();
}

void sub_38AEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 103) < 0)
  {
    operator delete(*(v18 + 80));
    sub_37E06C(&__p);
    _Unwind_Resume(a1);
  }

  sub_37E06C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_38AF90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  if (*(a2 + 55) < 0)
  {
    sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if ((*(a2 + 103) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if ((*(a2 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      v8 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v8;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 80), *(a2 + 80), *(a2 + 88));
LABEL_6:
  sub_38A2F8(a1 + 104, a2 + 104);
  *(a1 + 408) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
    *(a1 + 24) = 0;
    sub_38B1B0(a1, a2, a3);
    return a1;
  }

  else
  {
    v10 = 4;
    if (a3 > 4)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v11 = *(a1 + 16) * v10;
      if (*(a2 + 64) - *(a2 + 56) < v11)
      {
        break;
      }

      do
      {
LABEL_10:
        if ((v10 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v10 *= 2;
      }

      while (v10 < a3);
    }

    *(a1 + 72) = v10;
    v12 = *(a1 + 20) * v10;
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 24) = 0;
    return a1;
  }
}

void sub_38B13C(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 55) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v1 + 32));
  _Unwind_Resume(exception_object);
}

void sub_38B1B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 64) - *(a2 + 56);
  v6 = 4;
  if (a3 <= 4)
  {
    goto LABEL_4;
  }

  do
  {
    do
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
LABEL_4:
    ;
  }

  while (v5 >= (*(a1 + 16) * v6));
  sub_38B644(a1, v6);
  v7 = *(v3 + 72);
  v58 = v3;
  if (v7)
  {
    v8 = *(v3 + 103);
    if (v8 >= 0)
    {
      v9 = *(v3 + 103);
    }

    else
    {
      v9 = *(v3 + 88);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 80);
    }

    else
    {
      v10 = *(v3 + 80);
    }

    v11 = *(v3 + 55);
    if (v11 >= 0)
    {
      v12 = *(v3 + 55);
    }

    else
    {
      v12 = *(v3 + 40);
    }

    if (v11 >= 0)
    {
      v13 = (v3 + 32);
    }

    else
    {
      v13 = *(v3 + 32);
    }

    if (*(v3 + 56))
    {
      v14 = 328 * v7;
      v59 = *(v3 + 408);
      v15 = v59;
      while (1)
      {
        v16 = *(v15 + 23);
        v17 = v16 >= 0 ? *(v15 + 23) : *(v15 + 1);
        if (v9 != v17 || (v16 >= 0 ? (v18 = v15) : (v18 = *v15), memcmp(v10, v18, v9)))
        {
          if (v12 != v17)
          {
            break;
          }

          v19 = v16 >= 0 ? v15 : *v15;
          if (memcmp(v13, v19, v12))
          {
            break;
          }
        }

        v15 = (v15 + 328);
        v14 -= 328;
        if (!v14)
        {
          goto LABEL_110;
        }
      }

      v3 = v58;
      v60 = (v59 + 328 * v7);
      if (v15 == v60)
      {
        goto LABEL_110;
      }

LABEL_48:
      v56 = (v3 + 32);
      v57 = (v3 + 80);
      do
      {
        v25 = *(a1 + 72);
        v26 = *(v15 + 23);
        if (v26 >= 0)
        {
          v27 = v15;
        }

        else
        {
          v27 = *v15;
        }

        if (v26 >= 0)
        {
          v28 = *(v15 + 23);
        }

        else
        {
          v28 = *(v15 + 1);
        }

        v29 = sub_AAD8(&v61, v27, v28);
        v30 = v25 - 1;
        v31 = *(a1 + 408);
        if (*(a1 + 103) >= 0)
        {
          v32 = *(a1 + 103);
        }

        else
        {
          v32 = *(a1 + 88);
        }

        v33 = 0;
        if ((*(a1 + 103) & 0x80) != 0)
        {
          while (1)
          {
            v39 = v29 & v30;
            v35 = v31 + 328 * (v29 & v30);
            v40 = *(v35 + 23);
            v41 = v40;
            if ((v40 & 0x80u) != 0)
            {
              v40 = *(v35 + 8);
            }

            if (v32 == v40)
            {
              v42 = v41 >= 0 ? (v31 + 328 * (v29 & v30)) : *v35;
              if (!memcmp(*(a1 + 80), v42, v32))
              {
                break;
              }
            }

            v29 = ++v33 + v39;
          }
        }

        else
        {
          while (1)
          {
            v34 = v29 & v30;
            v35 = v31 + 328 * (v29 & v30);
            v36 = *(v35 + 23);
            v37 = v36;
            if ((v36 & 0x80u) != 0)
            {
              v36 = *(v35 + 8);
            }

            if (v32 == v36)
            {
              v38 = v37 >= 0 ? (v31 + 328 * (v29 & v30)) : *v35;
              if (!memcmp((a1 + 80), v38, v32))
              {
                break;
              }
            }

            v29 = ++v33 + v34;
          }
        }

        sub_37E06C(v35);
        if (*(v15 + 23) < 0)
        {
          sub_325C(v35, *v15, *(v15 + 1));
        }

        else
        {
          v43 = *v15;
          *(v35 + 16) = *(v15 + 2);
          *v35 = v43;
        }

        sub_38A2F8(v35 + 24, v15 + 24);
        ++*(a1 + 64);
        v15 = (v15 + 328);
        if (v15 != v60)
        {
          v44 = *(v3 + 103);
          if (v44 >= 0)
          {
            v45 = *(v3 + 103);
          }

          else
          {
            v45 = *(v3 + 88);
          }

          if (v44 >= 0)
          {
            v46 = v57;
          }

          else
          {
            v46 = *(v3 + 80);
          }

          v47 = *(v3 + 56);
          v48 = *(v3 + 55);
          if (v48 >= 0)
          {
            v49 = *(v3 + 55);
          }

          else
          {
            v49 = *(v3 + 40);
          }

          if (v48 >= 0)
          {
            v50 = v56;
          }

          else
          {
            v50 = *(v3 + 32);
          }

          do
          {
            v51 = *(v15 + 23);
            if (v51 >= 0)
            {
              v52 = *(v15 + 23);
            }

            else
            {
              v52 = *(v15 + 1);
            }

            if (v45 != v52 || (v51 >= 0 ? (v53 = v15) : (v53 = *v15), memcmp(v46, v53, v45)))
            {
              if (!v47 || v49 != v52)
              {
                break;
              }

              v54 = v51 >= 0 ? v15 : *v15;
              if (memcmp(v50, v54, v49))
              {
                break;
              }
            }

            v15 = (v15 + 328);
          }

          while (v15 != v60);
        }

        v3 = v58;
      }

      while (v15 != (*(v58 + 408) + 328 * *(v58 + 72)));
      goto LABEL_110;
    }

    v20 = 328 * v7;
    v21 = *(v3 + 408);
    v15 = v21;
    while (1)
    {
      v22 = *(v15 + 23);
      v23 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v15 + 1);
      }

      if (v9 != v22)
      {
        break;
      }

      v24 = v23 >= 0 ? v15 : *v15;
      if (memcmp(v10, v24, v9))
      {
        break;
      }

      v15 = (v15 + 328);
      v20 -= 328;
      if (!v20)
      {
        goto LABEL_110;
      }
    }

    v60 = (v21 + 328 * v7);
    if (v15 != v60)
    {
      goto LABEL_48;
    }
  }

LABEL_110:
  ++*(a1 + 28);
}

void sub_38B614(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64x2_t sub_38B644(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 408);
  if (!v4)
  {
    v4 = malloc_type_malloc(328 * a2, 0x10B2040DA43EAA9uLL);
LABEL_10:
    *(a1 + 408) = v4;
    goto LABEL_11;
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = 0;
  do
  {
    sub_37E06C(*(a1 + 408) + v6);
    v6 += 328;
    --v5;
  }

  while (v5);
  v4 = *(a1 + 408);
  if (*(a1 + 72) != a2)
  {
LABEL_9:
    v7 = v4;
    v4 = malloc_type_realloc(v4, 328 * a2, 0x10B2040DA43EAA9uLL);
    if (!v4)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v7);
      exit(1);
    }

    goto LABEL_10;
  }

LABEL_11:
  sub_38AB48(v4, v4 + 328 * a2, (a1 + 80));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_38B764(uint64_t a1)
{
  v2 = *(a1 + 64) - *(a1 + 56);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(a1 + 72);
    if (v5 >= 0x21)
    {
      v6 = v2;
      do
      {
        v7 = v5;
        v5 >>= 1;
      }

      while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
      sub_38AF90(v9, a1, v5);
      sub_38AC50(a1, v9);
    }
  }

  result = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_38B880(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_38B764(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 64);
  if (v5 >= ~a2)
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 72);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_25:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 56);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 < (v8 * v13))
      {
        v14 = v7 - (v11 >> 2);
        v15 = 4;
        if (v14 < v9)
        {
LABEL_19:
          if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
          {
            v13 *= 2;
          }

          sub_38AF90(v17, a1, v13);
          sub_38AC50(a1, v17);
        }

        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }
      }

      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_38BB2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_38BC68(a1, a2);
  if (v3 == -1)
  {
    if (sub_38B880(a1, 1))
    {
      sub_38BE2C();
    }

    sub_38BE2C();
  }

  return *(a1 + 408) + 328 * v3;
}

uint64_t sub_38BC68(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 72);
  v5 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v31, a2, v6);
  v8 = 0;
  v30 = v4 - 1;
  v9 = *(a1 + 408);
  v29 = *(a1 + 103);
  if (v29 >= 0)
  {
    v10 = *(a1 + 103);
  }

  else
  {
    v10 = *(a1 + 88);
  }

  v11 = *(v2 + 23);
  if (v11 >= 0)
  {
    v12 = *(v2 + 23);
  }

  else
  {
    v12 = *(v2 + 8);
  }

  if (v11 >= 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = *v2;
  }

  __s1 = v13;
  v27 = -1;
  while (1)
  {
    v15 = v7 & v30;
    v16 = (v9 + 328 * (v7 & v30));
    v17 = *(v16 + 23);
    v18 = v17 >= 0 ? *(v16 + 23) : v16[1];
    if (v10 == v18)
    {
      v19 = v29 >= 0 ? (a1 + 80) : *(a1 + 80);
      v20 = v17 >= 0 ? v16 : *v16;
      if (!memcmp(v19, v20, v10))
      {
        return -1;
      }
    }

    if (!*(a1 + 56))
    {
      goto LABEL_50;
    }

    v21 = *(a1 + 55);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a1 + 40);
    }

    if (v21 == v18 && (v22 >= 0 ? (v23 = (a1 + 32)) : (v23 = *(a1 + 32)), v17 >= 0 ? (v24 = v16) : (v24 = *v16), !memcmp(v23, v24, v18)))
    {
      v14 = v27;
      if (v27 == -1)
      {
        v14 = v15;
      }

      v27 = v14;
    }

    else
    {
LABEL_50:
      if (v12 == v18)
      {
        v25 = v17 >= 0 ? v16 : *v16;
        if (!memcmp(__s1, v25, v12))
        {
          return v15;
        }
      }
    }

    v7 = ++v8 + v15;
  }
}

void sub_38C1E0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_38C1F8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  if ((v5 - v6) >= 0xC7CE0C7CE0C7CELL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v10 = *(a1 + 408);
  if (v6)
  {
    v11 = v10 + 328 * a3;
    v12 = *(a1 + 55);
    if (v12 >= 0)
    {
      v13 = *(a1 + 55);
    }

    else
    {
      v13 = *(a1 + 40);
    }

    v14 = *(v11 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 8);
    }

    if (v13 == v14)
    {
      v16 = v12 >= 0 ? (a1 + 32) : *(a1 + 32);
      v17 = v15 >= 0 ? (v10 + 328 * a3) : *v11;
      if (!memcmp(v16, v17, v13))
      {
        *(a1 + 56) = v6 - 1;
        v18 = v10 + 328 * a3;
        sub_37E06C(v18);
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_19:
        sub_325C(v18, *a2, *(a2 + 1));
        goto LABEL_20;
      }
    }
  }

  *(a1 + 64) = v5 + 1;
  v18 = v10 + 328 * a3;
  sub_37E06C(v18);
  if (*(a2 + 23) < 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v19 = *a2;
  *(v18 + 16) = *(a2 + 2);
  *v18 = v19;
LABEL_20:
  result = sub_38A2F8(v18 + 24, a2 + 24);
  v21 = *(a1 + 408);
  v22 = v21 + 328 * a3;
  v23 = v21 + 328 * *(a1 + 72);
  *a4 = a1;
  a4[1] = v22;
  a4[2] = v23;
  return result;
}

void sub_38C394(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_38C3B0(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1 & 0xFFFFFFFFFFFFLL;
  v10 = 0;
  v11 = 0;
  v12 = ((a1 & 0xFF000000000000) == 0) << 61;
  v30[4] = (v12 | a1 & 0xFFFFFFFFFFFFLL | 0x4000000000000000);
  v31[0] = sub_2B51D8(a4, a1 & 0xFFFFFFFFFFFFLL);
  v28 = 0xFFFE000000000000;
  v23 = &v25;
  memset(&v31[1], 0, 24);
  v32 = a1;
  v30[0] = v31[0];
  memset(&v30[1], 0, 24);
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v29 = 0;
  v24 = 0;
  if ((a3 & 8) != 0)
  {
    v11 = sub_30F984(&v23, v31) | 1;
    v10 = 1;
  }

  if (a3)
  {
    if (v24 != 1 || (v17 = sub_2BC10C(v23, v32 & 0xFFFFFFFFFFFFFFLL, 0), (v18 & 1) == 0))
    {
      v17 = sub_30F8F8(&v23, v31);
    }

    v14 = v17 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v13 = 1;
    if ((a3 & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if ((a3 & 4) == 0)
    {
LABEL_5:
      v15 = 0;
      v16 = 0;
      goto LABEL_14;
    }
  }

  if (v24 != 1 || (v19 = sub_2BC294(v23, (v9 | (v12 >> 13)) ^ 0x1000000000000, 0), (v20 & 1) == 0))
  {
    v19 = sub_30FA10(&v23, v30);
  }

  v16 = v19 & 0xFFFFFFFFFFFFFFFCLL | 1;
  v15 = 1;
LABEL_14:
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v11;
  *(a5 + 24) = v10;
  *(a5 + 32) = v14;
  *(a5 + 40) = v13;
  *(a5 + 48) = v16;
  *(a5 + 56) = v15;
  v21 = *(&v26 + 1);
  if (*(&v26 + 1) && !atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    if (!atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

void sub_38C5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_38C904(va);
  _Unwind_Resume(a1);
}

void sub_38C5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_38C904(va);
  _Unwind_Resume(a1);
}

void sub_38C5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_38C904(va);
  _Unwind_Resume(a1);
}

void sub_38C5FC(uint64_t a1, void *a2)
{
  v2 = *a2;
  __dst = 0;
  v29 = 0;
  v30 = 0;
  v3 = -1171354717 * ((*(a1 + 496) - *(a1 + 488)) >> 4);
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      v29 = __dst;
      v7 = *(a1 + 488) + 176 * v5;
      v8 = *(v7 + 168);
      if (v8 != 1)
      {
        goto LABEL_9;
      }

      if (*v7 != *(v7 + 8))
      {
        break;
      }

LABEL_5:
      if (++v5 == v3)
      {
        if (__dst)
        {
          v29 = __dst;
          operator delete(__dst);
        }

        return;
      }
    }

    LODWORD(v25) = -1171354717 * ((v2[29] - v2[28]) >> 6);
    sub_2FFBE0(&__dst, __dst, &v25, &v25 + 4, 4);
    LODWORD(v25) = v5;
    sub_2FFBE0(&__dst, v29, &v25, &v25 + 4, 4);
    sub_300970(v2 + 34, v7, &__dst);
    v8 = *(v7 + 168);
LABEL_9:
    if (v8 == 2 && sub_329BC(v7 + 128))
    {
      LODWORD(v25) = -1171354717 * ((v2[29] - v2[28]) >> 6);
      sub_2FFBE0(&__dst, v29, &v25, &v25 + 4, 4);
      LODWORD(v25) = v5;
      sub_2FFBE0(&__dst, v29, &v25, &v25 + 4, 4);
      sub_345A0((v7 + 128), &__p);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      sub_38C9CC(&v25, &__p, &v33, 1uLL);
      sub_300970(v2 + 34, &v25, &__dst);
      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          v12 = v26;
          do
          {
            v15 = *(v12 - 3);
            v12 -= 3;
            v14 = v15;
            if (v15)
            {
              v16 = *(v10 - 2);
              v13 = v14;
              if (v16 != v14)
              {
                v17 = *(v10 - 2);
                do
                {
                  v19 = *(v17 - 3);
                  v17 -= 24;
                  v18 = v19;
                  if (v19)
                  {
                    *(v16 - 2) = v18;
                    operator delete(v18);
                  }

                  v16 = v17;
                }

                while (v17 != v14);
                v13 = *v12;
              }

              *(v10 - 2) = v14;
              operator delete(v13);
            }

            v10 = v12;
          }

          while (v12 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v32;
        v6 = __p;
        if (v32 != __p)
        {
          v22 = v32;
          do
          {
            v24 = *(v22 - 3);
            v22 -= 24;
            v23 = v24;
            if (v24)
            {
              *(v21 - 2) = v23;
              operator delete(v23);
            }

            v21 = v22;
          }

          while (v22 != v20);
          v6 = __p;
        }

        v32 = v20;
        operator delete(v6);
      }
    }

    goto LABEL_5;
  }
}

void sub_38C8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_38C904(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_38C9CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_38CB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53524(va);
  _Unwind_Resume(a1);
}

void sub_38CB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void ***);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_35390(va2);
  sub_52F40(va1);
  *(a3 + 8) = a2;
  sub_53524(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_38CB98(uint64_t *a1, _BYTE *a2)
{
  __p = 0uLL;
  v15 = 0;
  v4 = sub_58218(a1, &__p);
  if ((*(v4 + *(*v4 - 24) + 32) & 5) == 0)
  {
    if (SHIBYTE(v15) < 0)
    {
      if (*(&__p + 1) != 7 || (*__p == 1095124292 ? (v6 = *(__p + 3) == 1414288705) : (v6 = 0), !v6))
      {
        if (*(&__p + 1) == 15 && *__p == 0x47414E414D5F4E49 && *(__p + 7) == 0x454E414C5F444547)
        {
LABEL_40:
          *a2 = 1;
          goto LABEL_36;
        }

        if (*(&__p + 1) != 12)
        {
LABEL_35:
          std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
          goto LABEL_36;
        }

        p_p = __p;
LABEL_25:
        v9 = *p_p;
        v10 = *(p_p + 2);
        if (v9 == 0x454548575F4F5754 && v10 == 1397900620)
        {
          *a2 = 2;
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (HIBYTE(v15) != 7)
      {
        if (HIBYTE(v15) != 12)
        {
          if (HIBYTE(v15) != 15)
          {
            goto LABEL_35;
          }

          if (__p != 0x47414E414D5F4E49 || *(&__p + 7) != 0x454E414C5F444547)
          {
            goto LABEL_35;
          }

          goto LABEL_40;
        }

        p_p = &__p;
        goto LABEL_25;
      }

      if (__p != 1095124292 || *(&__p + 3) != 1414288705)
      {
        goto LABEL_35;
      }
    }

    *a2 = 0;
  }

LABEL_36:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_38CDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_38CDC0(void *a1, int a2)
{
  switch(a2)
  {
    case 2:
      v3 = "TWO_WHEELERS";
      v4 = 12;
      goto LABEL_7;
    case 1:
      v3 = "IN_MANAGED_LANE";
      v4 = 15;
      goto LABEL_7;
    case 0:
      v3 = "DEFAULT";
      v4 = 7;
LABEL_7:
      sub_4A5C(a1, v3, v4);
      break;
  }

  return a1;
}

unint64_t sub_38CE34(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = a2;
  v12 = &a1[1][*a1];
  v214 = *a1;
  v215 = v12;
  v216 = 0x2C700000000;
  if (!sub_32BB58(&v214))
  {
    goto LABEL_9;
  }

  while (v216 != 1)
  {
    sub_32BC3C(&v214);
    if (!sub_32BB58(&v214))
    {
      goto LABEL_9;
    }
  }

  v13 = sub_32BDF0(&v214, v215);
  v14 = v214;
  v15 = &v214[v13];
  v214 = v15;
  if (v15 > v215)
  {
LABEL_411:
    exception = __cxa_allocate_exception(0x40uLL);
    v197 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
  }

  v211 = v14;
  v212 = v15;
  v213 = 0x2C700000000;
  if (!sub_32BB58(&v211))
  {
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  while (v213 != 9)
  {
    sub_32BC3C(&v211);
    if (!sub_32BB58(&v211))
    {
      goto LABEL_9;
    }
  }

  v177 = sub_32BDF0(&v211, v212);
  v178 = v177;
  v179 = v211;
  v211 += v177;
  if (v211 > v212)
  {
    goto LABEL_411;
  }

  if (v177 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v210) = v177;
  if (v177)
  {
    memmove(&__dst, v179, v177);
  }

  v16 = 0;
  *(&__dst + v178) = 0;
  v180 = HIBYTE(v210);
  v181 = SHIBYTE(v210);
  v182 = __dst;
  if (v210 < 0)
  {
    v180 = v209;
  }

  v183 = a5[23];
  v184 = v183;
  if ((v183 & 0x80u) != 0)
  {
    v183 = *(a5 + 1);
  }

  v10 = a2;
  if (v180 == v183)
  {
    if (v184 >= 0)
    {
      v185 = a5;
    }

    else
    {
      v185 = *a5;
    }

    if (v180)
    {
      v201 = a3;
      if (v210 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v187 = v180 - 1;
      do
      {
        v188 = *p_dst;
        v189 = __toupper(*v185);
        v190 = __toupper(v188);
        v16 = v189 == v190;
        v191 = v189 != v190 || v187-- == 0;
        ++v185;
        p_dst = (p_dst + 1);
      }

      while (!v191);
      v10 = a2;
      a3 = v201;
    }

    else
    {
      v16 = 1;
    }
  }

  if (v181 < 0)
  {
    operator delete(v182);
  }

LABEL_10:
  v17 = &a1[1][*a1];
  v211 = *a1;
  v212 = v17;
  v213 = 0x2C700000000;
  if (sub_32BB58(&v211))
  {
    v200 = a3;
    v202 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v203 = 0;
    v204 = 0;
    do
    {
      v22 = v213;
      while (v22 != 2)
      {
        sub_32BC3C(&v211);
        if (v211 >= v212)
        {
          goto LABEL_126;
        }

        v23 = sub_32BDF0(&v211, v212);
        v22 = v23 >> 3;
        LODWORD(v213) = v23 >> 3;
        if (v23 < 8 || (v23 - 152000) >> 6 <= 0x7C)
        {
          goto LABEL_409;
        }

        HIDWORD(v213) = v23 & 7;
        if (HIDWORD(v213) >= 3 && (v23 & 7) != 5)
        {
          goto LABEL_410;
        }
      }

      v25 = sub_32BDF0(&v211, v212);
      v26 = v211;
      v27 = &v211[v25];
      v211 = v27;
      if (v27 > v212)
      {
        goto LABEL_411;
      }

      __dst = v26;
      v209 = v27;
      v210 = 0x2C700000000;
      if (sub_32BB58(&__dst))
      {
        v28 = v210;
        while (v28 != 1)
        {
          sub_32BC3C(&__dst);
          if (__dst >= v209)
          {
            goto LABEL_14;
          }

          v29 = sub_32BDF0(&__dst, v209);
          v28 = v29 >> 3;
          LODWORD(v210) = v29 >> 3;
          if (v29 < 8 || (v29 - 152000) >> 6 <= 0x7C)
          {
            goto LABEL_409;
          }

          HIDWORD(v210) = v29 & 7;
          if (HIDWORD(v210) >= 3 && (v29 & 7) != 5)
          {
            goto LABEL_410;
          }
        }

        v31 = sub_32BDF0(&__dst, v209);
        v32 = __dst;
        v33 = &__dst[v31];
        __dst = v33;
        if (v33 > v209)
        {
          goto LABEL_411;
        }

        *&v206 = v32;
        *(&v206 + 1) = v33;
        v207 = 0x2C700000000;
        if (sub_32CCA4(&v206, 2))
        {
          if (v16)
          {
            v34 = 1;
          }

          else
          {
            v214 = v32;
            v215 = v33;
            v216 = 0x2C700000000;
            v199 = a4;
            if (sub_32BB58(&v214))
            {
              while (v216 != 2)
              {
                sub_32BC3C(&v214);
                if (!sub_32BB58(&v214))
                {
                  goto LABEL_44;
                }
              }

              LOBYTE(v35) = 1;
              while (1)
              {
                v40 = sub_32C014(&v214, v215);
                v41 = *(a2 + 3880);
                if (v41)
                {
                  v42 = v40 >= 0 ? v40 : -v40;
                  v43 = sub_2D54A0(v41, 0, v42);
                  v45 = !HIDWORD(v43) || v43 == 0xFFFFFFFFLL;
                  if (!v45 && v44 == 0)
                  {
                    if (*(a2 + 7774) != 1)
                    {
                      goto LABEL_96;
                    }

                    v198 = v43;
                    v50 = sub_2AF704(a2 + 3896, HIDWORD(v43), 1);
                    if (v50)
                    {
                      v51 = &v50[-*v50];
                      if (*v51 >= 5u)
                      {
                        v52 = *(v51 + 2);
                        if (!v52)
                        {
                          v35 = 0;
                          v47 = v215;
                          if (v214 < v215)
                          {
                            goto LABEL_80;
                          }

                          goto LABEL_45;
                        }

                        if (*&v50[v52 + *&v50[v52]] > v198)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                v35 = 0;
                v47 = v215;
                if (v214 >= v215)
                {
                  goto LABEL_45;
                }

                while (1)
                {
LABEL_80:
                  v48 = sub_32BDF0(&v214, v47);
                  LODWORD(v216) = v48 >> 3;
                  if (v48 < 8 || (v48 - 152000) >> 6 <= 0x7C)
                  {
                    goto LABEL_409;
                  }

                  HIDWORD(v216) = v48 & 7;
                  if (HIDWORD(v216) >= 3 && (v48 & 7) != 5)
                  {
                    goto LABEL_410;
                  }

                  if (v48 >> 3 == 2)
                  {
                    break;
                  }

                  sub_32BC3C(&v214);
                  v47 = v215;
                  if (v214 >= v215)
                  {
                    goto LABEL_45;
                  }
                }
              }

              v53 = sub_2B817C(a2, __ROR8__(v198, 32));
              v43 = v198;
              if (!v53)
              {
                v35 = 0;
                v47 = v215;
                if (v214 < v215)
                {
                  goto LABEL_80;
                }

                goto LABEL_45;
              }

LABEL_96:
              v35 = v35 & (v43 << 32 != 0xFFFFFFFF00000000);
              v47 = v215;
              if (v214 < v215)
              {
                goto LABEL_80;
              }
            }

            else
            {
LABEL_44:
              v35 = 1;
            }

LABEL_45:
            v34 = v35;
            a4 = v199;
          }

          v203 += v34;
          ++v204;
        }

        if (sub_32CCA4(&v206, 6))
        {
          if (!sub_32BB58(&v206))
          {
            goto LABEL_62;
          }

          v36 = v207;
          while (v36 != 7)
          {
            sub_32BC3C(&v206);
            if (v206 >= *(&v206 + 1))
            {
              goto LABEL_62;
            }

            v37 = sub_32BDF0(&v206, *(&v206 + 1));
            v36 = v37 >> 3;
            LODWORD(v207) = v37 >> 3;
            if (v37 < 8 || (v37 - 152000) >> 6 <= 0x7C)
            {
              goto LABEL_409;
            }

            HIDWORD(v207) = v37 & 7;
            if (HIDWORD(v207) >= 3 && (v37 & 7) != 5)
            {
              goto LABEL_410;
            }
          }

          if (sub_3360D8(&v206))
          {
            if (v16)
            {
              v39 = 1;
            }

            else
            {
              v214 = v32;
              v215 = v33;
              v216 = 0x2C700000000;
              if (sub_32BB58(&v214))
              {
                v55 = 0;
                v56 = 0;
                do
                {
                  if (v216 == 7)
                  {
                    v55 = sub_3360D8(&v214);
                  }

                  else if (v216 == 6)
                  {
                    v57 = sub_32C014(&v214, v215);
                    v56 = v57 != 0x7FFFFFFFFFFFFFFFLL && (v57 >= 0 ? (v58 = v57) : (v58 = -v57), sub_2D54A0(*v200, 22, v58) >> 32) && v59 == 0;
                  }

                  else
                  {
                    sub_32BC3C(&v214);
                  }
                }

                while (sub_32BB58(&v214));
                v39 = v56 && v55;
              }

              else
              {
                v39 = 0;
              }
            }

            ++v18;
            v202 += v39;
          }

          else
          {
LABEL_62:
            if (v16)
            {
              v21 = 1;
            }

            else
            {
              v214 = v32;
              v215 = v33;
              v216 = 0x2C700000000;
              if (!sub_32BB58(&v214))
              {
                goto LABEL_103;
              }

              while (v216 != 6)
              {
                sub_32BC3C(&v214);
                if (!sub_32BB58(&v214))
                {
                  goto LABEL_103;
                }
              }

              v54 = sub_32C014(&v214, v215);
              if (v54 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v54 >= 0)
                {
                  v60 = v54;
                }

                else
                {
                  v60 = -v54;
                }

                v21 = sub_2D54A0(*v200, 22, v60) >> 32;
                if (v21)
                {
                  v21 = v61 == 0;
                }
              }

              else
              {
LABEL_103:
                v21 = 0;
              }
            }

            ++v20;
            v19 += v21;
          }
        }
      }

LABEL_14:
      ;
    }

    while (sub_32BB58(&v211));
LABEL_126:
    if (v204)
    {
      v62 = *(a6 + 144) & 0xFFFFFFFFFFFFFFFELL;
      if (100 * v203 / v204 >= a4)
      {
        ++v62;
      }

      *(a6 + 136) |= 1uLL;
      *(a6 + 144) = v62;
    }

    if (v20)
    {
      v63 = *(a6 + 144) & 0xFFFFFFFFFFFFFFFDLL | (2 * (100 * v19 / v20 >= a4));
      *(a6 + 136) |= 2uLL;
      *(a6 + 144) = v63;
    }

    v10 = a2;
    if (v18)
    {
      v64 = *(a6 + 144) & 0xFFFFFFFFFFFFFFFBLL | (4 * (100 * v202 / v18 >= a4));
      *(a6 + 136) |= 4uLL;
      *(a6 + 144) = v64;
    }
  }

  v65 = &a1[1][*a1];
  v211 = *a1;
  v212 = v65;
  v213 = 0x2C700000000;
  if (!sub_32BB58(&v211))
  {
    goto LABEL_228;
  }

  if (v16)
  {
    v66 = 0;
    while (1)
    {
      v67 = v213;
      while (v67 != 4)
      {
        sub_32BC3C(&v211);
        if (v211 >= v212)
        {
          v71 = v66;
          goto LABEL_226;
        }

        v68 = sub_32BDF0(&v211, v212);
        v67 = v68 >> 3;
        LODWORD(v213) = v68 >> 3;
        if (v68 < 8 || (v68 - 152000) >> 6 < 0x7D)
        {
          goto LABEL_409;
        }

        HIDWORD(v213) = v68 & 7;
        if (HIDWORD(v213) >= 3 && (v68 & 7) != 5)
        {
          goto LABEL_410;
        }
      }

      v70 = sub_32BDF0(&v211, v212);
      v211 += v70;
      if (v211 > v212)
      {
        goto LABEL_411;
      }

      v71 = ++v66;
      if (!sub_32BB58(&v211))
      {
        goto LABEL_226;
      }
    }
  }

  v71 = 0;
  v66 = 0;
LABEL_151:
  v72 = v213;
  while (1)
  {
    if (v72 == 4)
    {
      v75 = sub_32BDF0(&v211, v212);
      v76 = v211;
      v77 = &v211[v75];
      v211 = v77;
      if (v77 > v212)
      {
        goto LABEL_411;
      }

      __dst = v76;
      v209 = v77;
      v210 = 0x2C700000000;
      if (sub_32BB58(&__dst))
      {
        v78 = v210;
        while (v78 != 1)
        {
          sub_32BC3C(&__dst);
          if (__dst >= v209)
          {
            goto LABEL_173;
          }

          v79 = sub_32BDF0(&__dst, v209);
          v78 = v79 >> 3;
          LODWORD(v210) = v79 >> 3;
          if (v79 < 8 || (v79 - 152000) >> 6 <= 0x7C)
          {
            goto LABEL_409;
          }

          HIDWORD(v210) = v79 & 7;
          if (HIDWORD(v210) >= 3 && (v79 & 7) != 5)
          {
            goto LABEL_410;
          }
        }

        v81 = sub_32BDF0(&__dst, v209);
        v82 = __dst;
        v83 = &__dst[v81];
        __dst = v83;
        if (v83 > v209)
        {
          goto LABEL_411;
        }

        v214 = v82;
        v215 = v83;
        v216 = 0x2C700000000;
        if (sub_32BB58(&v214))
        {
          v84 = v216;
          while (v84 != 2)
          {
            sub_32BC3C(&v214);
            if (v214 >= v215)
            {
              goto LABEL_187;
            }

            v85 = sub_32BDF0(&v214, v215);
            v84 = v85 >> 3;
            LODWORD(v216) = v85 >> 3;
            if (v85 < 8 || (v85 - 152000) >> 6 <= 0x7C)
            {
              goto LABEL_409;
            }

            HIDWORD(v216) = v85 & 7;
            if (HIDWORD(v216) >= 3 && (v85 & 7) != 5)
            {
              goto LABEL_410;
            }
          }

          v87 = a4;
          LOBYTE(a4) = 1;
LABEL_191:
          v89 = sub_32C014(&v214, v215);
          v90 = *(v10 + 3880);
          if (!v90 || (v89 >= 0 ? (v91 = v89) : (v91 = -v89), (v92 = sub_2D54A0(v90, 0, v91), HIDWORD(v92)) ? (v94 = v92 == 0xFFFFFFFFLL) : (v94 = 1), !v94 ? (v95 = v93 == 0) : (v95 = 0), !v95))
          {
            LODWORD(a4) = 0;
            v96 = v215;
            if (v214 < v215)
            {
              while (1)
              {
LABEL_203:
                v97 = sub_32BDF0(&v214, v96);
                LODWORD(v216) = v97 >> 3;
                if (v97 < 8 || (v97 - 152000) >> 6 <= 0x7C)
                {
                  goto LABEL_409;
                }

                HIDWORD(v216) = v97 & 7;
                if (HIDWORD(v216) >= 3 && (v97 & 7) != 5)
                {
                  break;
                }

                if (v97 >> 3 == 2)
                {
                  goto LABEL_191;
                }

                sub_32BC3C(&v214);
                v96 = v215;
                if (v214 >= v215)
                {
                  goto LABEL_188;
                }
              }

LABEL_410:
              v194 = __cxa_allocate_exception(0x40uLL);
              v195 = sub_2D390(v194, "Unknown wire type.", 0x12uLL);
            }

            goto LABEL_188;
          }

          if (*(v10 + 7774) == 1)
          {
            v99 = v10;
            v100 = v92;
            v101 = sub_2AF704(v99 + 3896, HIDWORD(v92), 1);
            if (v101 && (v102 = &v101[-*v101], *v102 >= 5u) && (v103 = *(v102 + 2)) != 0 && *&v101[v103 + *&v101[v103]] > v100)
            {
              v104 = sub_2B817C(a2, __ROR8__(v100, 32));
              v92 = v100;
              v10 = a2;
              if (v104)
              {
                goto LABEL_219;
              }

              LODWORD(a4) = 0;
              v96 = v215;
              if (v214 < v215)
              {
                goto LABEL_203;
              }
            }

            else
            {
              v10 = a2;
              LODWORD(a4) = 0;
              v96 = v215;
              if (v214 < v215)
              {
                goto LABEL_203;
              }
            }
          }

          else
          {
LABEL_219:
            LODWORD(a4) = a4 & (v92 << 32 != 0xFFFFFFFF00000000);
            v96 = v215;
            if (v214 < v215)
            {
              goto LABEL_203;
            }
          }
        }

        else
        {
LABEL_187:
          v87 = a4;
          LODWORD(a4) = 1;
        }

LABEL_188:
        v88 = a4;
        a4 = v87;
        ++v66;
        v71 += v88;
        if (!sub_32BB58(&v211))
        {
          break;
        }

        goto LABEL_151;
      }

LABEL_173:
      ++v66;
      if (!sub_32BB58(&v211))
      {
        break;
      }

      goto LABEL_151;
    }

    sub_32BC3C(&v211);
    if (v211 >= v212)
    {
      break;
    }

    v73 = sub_32BDF0(&v211, v212);
    v72 = v73 >> 3;
    LODWORD(v213) = v73 >> 3;
    if (v73 < 8 || (v73 - 152000) >> 6 <= 0x7C)
    {
      goto LABEL_409;
    }

    HIDWORD(v213) = v73 & 7;
    if (HIDWORD(v213) >= 3 && (v73 & 7) != 5)
    {
      goto LABEL_410;
    }
  }

LABEL_226:
  if (v66)
  {
    v105 = *(a6 + 144) & 0xFFFFFFFFFFFFFFEFLL | (16 * (100 * v71 / v66 >= a4));
    *(a6 + 136) |= 0x10uLL;
    *(a6 + 144) = v105;
  }

LABEL_228:
  v106 = &a1[1][*a1];
  *&v206 = *a1;
  *(&v206 + 1) = v106;
  v207 = 0x2C700000000;
  if (!sub_32BB58(&v206))
  {
    goto LABEL_301;
  }

  v107 = 0;
  v108 = 0;
  while (2)
  {
    if (v207 == 6)
    {
      v115 = sub_32BDF0(&v206, *(&v206 + 1));
      v116 = v206;
      v117 = (v206 + v115);
      *&v206 = v117;
      if (v117 > *(&v206 + 1))
      {
        goto LABEL_411;
      }

      v211 = v116;
      v212 = v117;
      v213 = 0x2C700000000;
      if (v16)
      {
        goto LABEL_254;
      }

      if (!sub_32BB58(&v211))
      {
        goto LABEL_258;
      }

      while (v213 != 3)
      {
        sub_32BC3C(&v211);
        if (!sub_32BB58(&v211))
        {
          goto LABEL_258;
        }
      }

      v122 = sub_32BDF0(&v211, v212);
      v123 = v211;
      v124 = &v211[v122];
      v211 = v124;
      if (v124 > v212)
      {
        goto LABEL_411;
      }

      v214 = v123;
      v215 = v124;
      v216 = 0x2C700000000;
      if (!sub_32BB58(&v214))
      {
        goto LABEL_268;
      }

      while (v216 != 2)
      {
        sub_32BC3C(&v214);
        if (!sub_32BB58(&v214))
        {
          goto LABEL_268;
        }
      }

      v128 = 1;
      while (1)
      {
        v129 = sub_32C014(&v214, v215);
        v130 = v129 >= 0 ? v129 : -v129;
        v131 = sub_335D84(v10, v130);
        v132 = v131 >= 0xFFFFFFFF00000000 || v131 == 0;
        v133 = !v132;
        v128 &= v133;
        if (!sub_32BB58(&v214))
        {
          break;
        }

        while (v216 != 2)
        {
          sub_32BC3C(&v214);
          if (!sub_32BB58(&v214))
          {
            goto LABEL_269;
          }
        }
      }

LABEL_269:
      v121 = v128;
LABEL_270:
      ++v107;
      v108 += v121;
    }

    else if (v207 == 2)
    {
      v109 = sub_32BDF0(&v206, *(&v206 + 1));
      v110 = v206;
      v111 = (v206 + v109);
      *&v206 = v111;
      if (v111 > *(&v206 + 1))
      {
        goto LABEL_411;
      }

      __dst = v110;
      v209 = v111;
      v210 = 0x2C700000000;
      if (sub_32BB58(&__dst))
      {
        v112 = v210;
        while (v112 != 7)
        {
          sub_32BC3C(&__dst);
          if (__dst >= v209)
          {
            goto LABEL_231;
          }

          v113 = sub_32BDF0(&__dst, v209);
          v112 = v113 >> 3;
          LODWORD(v210) = v113 >> 3;
          if (v113 < 8 || (v113 - 152000) >> 6 <= 0x7C)
          {
            goto LABEL_409;
          }

          HIDWORD(v210) = v113 & 7;
          if (HIDWORD(v210) >= 3 && (v113 & 7) != 5)
          {
            goto LABEL_410;
          }
        }

        v118 = sub_32BDF0(&__dst, v209);
        v119 = __dst;
        v120 = &__dst[v118];
        __dst = v120;
        if (v120 > v209)
        {
          goto LABEL_411;
        }

        v211 = v119;
        v212 = v120;
        v213 = 0x2C700000000;
        if (v16)
        {
LABEL_254:
          v121 = 1;
          goto LABEL_270;
        }

        if (sub_32BB58(&v211))
        {
          while (v213 != 3)
          {
            sub_32BC3C(&v211);
            if (!sub_32BB58(&v211))
            {
              goto LABEL_258;
            }
          }

          v125 = sub_32BDF0(&v211, v212);
          v126 = v211;
          v127 = &v211[v125];
          v211 = v127;
          if (v127 > v212)
          {
            goto LABEL_411;
          }

          v214 = v126;
          v215 = v127;
          v216 = 0x2C700000000;
          if (sub_32BB58(&v214))
          {
            while (v216 != 2)
            {
              sub_32BC3C(&v214);
              if (!sub_32BB58(&v214))
              {
                goto LABEL_268;
              }
            }

            v128 = 1;
            while (1)
            {
              v134 = sub_32C014(&v214, v215);
              v135 = v134 >= 0 ? v134 : -v134;
              v136 = sub_335D84(v10, v135);
              v137 = v136 >= 0xFFFFFFFF00000000 || v136 == 0;
              v138 = !v137;
              v128 &= v138;
              if (!sub_32BB58(&v214))
              {
                goto LABEL_269;
              }

              while (v216 != 2)
              {
                sub_32BC3C(&v214);
                if (!sub_32BB58(&v214))
                {
                  goto LABEL_269;
                }
              }
            }
          }

LABEL_268:
          v128 = 1;
          goto LABEL_269;
        }

LABEL_258:
        v121 = 0;
        goto LABEL_270;
      }
    }

    else
    {
      sub_32BC3C(&v206);
    }

LABEL_231:
    if (sub_32BB58(&v206))
    {
      continue;
    }

    break;
  }

  if (v107)
  {
    v139 = *(a6 + 144) & 0xFFFFFFFFFFFFFFDFLL | (32 * (100 * v108 / v107 >= a4));
    *(a6 + 136) |= 0x20uLL;
    *(a6 + 144) = v139;
  }

LABEL_301:
  v140 = &a1[1][*a1];
  v211 = *a1;
  v212 = v140;
  v213 = 0x2C700000000;
  result = sub_32BB58(&v211);
  if (!result)
  {
    return result;
  }

  v142 = 0;
  v143 = 0;
  while (2)
  {
    v145 = v213;
    while (v145 != 3)
    {
      result = sub_32BC3C(&v211);
      if (v211 >= v212)
      {
        goto LABEL_378;
      }

      v146 = sub_32BDF0(&v211, v212);
      v145 = v146 >> 3;
      LODWORD(v213) = v146 >> 3;
      if (v146 < 8 || (v146 - 152000) >> 6 <= 0x7C)
      {
        goto LABEL_409;
      }

      HIDWORD(v213) = v146 & 7;
      if (HIDWORD(v213) >= 3 && (v146 & 7) != 5)
      {
        goto LABEL_410;
      }
    }

    v148 = sub_32BDF0(&v211, v212);
    v149 = v211;
    v150 = &v211[v148];
    v211 = v150;
    if (v150 > v212)
    {
      goto LABEL_411;
    }

    __dst = v149;
    v209 = v150;
    v210 = 0x2C700000000;
    if (sub_32BB58(&__dst))
    {
      v151 = v210;
      while (v151 != 1)
      {
        sub_32BC3C(&__dst);
        if (__dst >= v209)
        {
          goto LABEL_305;
        }

        v152 = sub_32BDF0(&__dst, v209);
        v151 = v152 >> 3;
        LODWORD(v210) = v152 >> 3;
        if (v152 < 8 || (v152 - 152000) >> 6 <= 0x7C)
        {
          goto LABEL_409;
        }

        HIDWORD(v210) = v152 & 7;
        if (HIDWORD(v210) >= 3 && (v152 & 7) != 5)
        {
          goto LABEL_410;
        }
      }

      if (v16)
      {
        v144 = 1;
      }

      else
      {
        v154 = sub_32BDF0(&__dst, v209);
        v155 = __dst;
        v156 = &__dst[v154];
        __dst = v156;
        if (v156 > v209)
        {
          goto LABEL_411;
        }

        v214 = v155;
        v215 = v156;
        v216 = 0x2C700000000;
        if (!sub_32BB58(&v214))
        {
LABEL_341:
          v160 = 1;
          goto LABEL_342;
        }

        v157 = v216;
        while (v157 != 2)
        {
          sub_32BC3C(&v214);
          if (v214 >= v215)
          {
            goto LABEL_341;
          }

          v158 = sub_32BDF0(&v214, v215);
          v157 = v158 >> 3;
          LODWORD(v216) = v158 >> 3;
          if (v158 < 8 || (v158 - 152000) >> 6 <= 0x7C)
          {
            goto LABEL_409;
          }

          HIDWORD(v216) = v158 & 7;
          if (HIDWORD(v216) >= 3 && (v158 & 7) != 5)
          {
            goto LABEL_410;
          }
        }

        LOBYTE(v160) = 1;
LABEL_344:
        v161 = sub_32C014(&v214, v215);
        v162 = *(a2 + 3880);
        if (v162 && (v161 >= 0 ? (v163 = v161) : (v163 = -v161), (v164 = sub_2D54A0(v162, 0, v163), HIDWORD(v164)) ? (v166 = v164 == 0xFFFFFFFFLL) : (v166 = 1), !v166 ? (v167 = v165 == 0) : (v167 = 0), v167))
        {
          if (*(a2 + 7774) == 1)
          {
            v171 = v164;
            v172 = sub_2AF704(a2 + 3896, HIDWORD(v164), 1);
            if (!v172 || (v173 = &v172[-*v172], *v173 < 5u) || (v174 = *(v173 + 2)) == 0 || *&v172[v174 + *&v172[v174]] <= v171)
            {
              v160 = 0;
              v168 = v215;
              if (v214 < v215)
              {
                goto LABEL_356;
              }

              goto LABEL_342;
            }

            v175 = sub_2B817C(a2, __ROR8__(v171, 32));
            v164 = v171;
            if (!v175)
            {
              v160 = 0;
              v168 = v215;
              if (v214 < v215)
              {
                goto LABEL_356;
              }

              goto LABEL_342;
            }
          }

          v160 = v160 & (v164 << 32 != 0xFFFFFFFF00000000);
          v168 = v215;
          if (v214 < v215)
          {
            goto LABEL_356;
          }
        }

        else
        {
          v160 = 0;
          v168 = v215;
          if (v214 < v215)
          {
LABEL_356:
            while (1)
            {
              v169 = sub_32BDF0(&v214, v168);
              LODWORD(v216) = v169 >> 3;
              if (v169 < 8 || (v169 - 152000) >> 6 <= 0x7C)
              {
                break;
              }

              HIDWORD(v216) = v169 & 7;
              if (HIDWORD(v216) >= 3 && (v169 & 7) != 5)
              {
                goto LABEL_410;
              }

              if (v169 >> 3 == 2)
              {
                goto LABEL_344;
              }

              sub_32BC3C(&v214);
              v168 = v215;
              if (v214 >= v215)
              {
                goto LABEL_342;
              }
            }

LABEL_409:
            v192 = __cxa_allocate_exception(0x40uLL);
            v193 = sub_2D390(v192, "Parsed invalid tag.", 0x13uLL);
          }
        }

LABEL_342:
        v144 = v160;
      }

      ++v143;
      v142 += v144;
    }

LABEL_305:
    result = sub_32BB58(&v211);
    if (result)
    {
      continue;
    }

    break;
  }

LABEL_378:
  if (v143)
  {
    v176 = *(a6 + 144) & 0xFFFFFFFFFFFFFFF7 | (8 * (100 * v142 / v143 >= a4));
    *(a6 + 136) |= 8uLL;
    *(a6 + 144) = v176;
  }

  return result;
}