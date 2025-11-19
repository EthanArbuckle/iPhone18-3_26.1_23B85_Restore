void sub_399D5C(_Unwind_Exception *a1)
{
  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_399DB8(void **a1, uint64_t a2)
{
  v2 = 0x823EE08FB823EE09 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x8FB823EE08FB82)
  {
    sub_1794();
  }

  if (0x47DC11F7047DC12 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x47DC11F7047DC12 * ((a1[2] - *a1) >> 3);
  }

  if (0x823EE08FB823EE09 * ((a1[2] - *a1) >> 3) >= 0x47DC11F7047DC1)
  {
    v5 = 0x8FB823EE08FB82;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x8FB823EE08FB82)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((a1[1] - *a1) >> 3);
  sub_39A0FC(v20, a2);
  v6 = 456 * v2 + 456;
  v7 = *a1;
  v8 = a1[1];
  v9 = v20 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v20 + *a1 - v8;
    do
    {
      *v11 = *v10;
      v12 = v10[1];
      *(v11 + 32) = *(v10 + 4);
      *(v11 + 16) = v12;
      *(v10 + 3) = 0;
      *(v10 + 4) = 0;
      *(v10 + 2) = 0;
      *(v11 + 40) = *(v10 + 40);
      *(v11 + 64) = 0;
      *(v11 + 72) = 0;
      *(v11 + 56) = 0;
      *(v11 + 56) = *(v10 + 56);
      *(v11 + 72) = *(v10 + 9);
      *(v10 + 7) = 0;
      *(v10 + 8) = 0;
      *(v10 + 9) = 0;
      v13 = v10[5];
      *(v11 + 96) = *(v10 + 12);
      *(v11 + 80) = v13;
      *(v10 + 11) = 0;
      *(v10 + 12) = 0;
      *(v10 + 10) = 0;
      *(v11 + 104) = *(v10 + 104);
      *(v11 + 128) = 0;
      *(v11 + 136) = 0;
      *(v11 + 120) = 0;
      *(v11 + 120) = *(v10 + 120);
      *(v11 + 136) = *(v10 + 17);
      *(v10 + 15) = 0;
      *(v10 + 16) = 0;
      *(v10 + 17) = 0;
      v14 = v10[9];
      *(v11 + 160) = *(v10 + 20);
      *(v11 + 144) = v14;
      *(v10 + 19) = 0;
      *(v10 + 20) = 0;
      *(v10 + 18) = 0;
      *(v11 + 168) = *(v10 + 168);
      *(v11 + 192) = 0;
      *(v11 + 200) = 0;
      *(v11 + 184) = 0;
      *(v11 + 184) = *(v10 + 184);
      *(v11 + 200) = *(v10 + 25);
      *(v10 + 23) = 0;
      *(v10 + 24) = 0;
      *(v10 + 25) = 0;
      v15 = v10[13];
      *(v11 + 224) = *(v10 + 28);
      *(v11 + 208) = v15;
      *(v10 + 27) = 0;
      *(v10 + 28) = 0;
      *(v10 + 26) = 0;
      *(v11 + 232) = *(v10 + 232);
      *(v11 + 256) = 0;
      *(v11 + 264) = 0;
      *(v11 + 248) = 0;
      *(v11 + 248) = *(v10 + 248);
      *(v11 + 264) = *(v10 + 33);
      *(v10 + 31) = 0;
      *(v10 + 32) = 0;
      *(v10 + 33) = 0;
      v16 = v10[17];
      *(v11 + 288) = *(v10 + 36);
      *(v11 + 272) = v16;
      *(v10 + 35) = 0;
      *(v10 + 36) = 0;
      *(v10 + 34) = 0;
      *(v11 + 296) = *(v10 + 296);
      *(v11 + 320) = 0;
      *(v11 + 328) = 0;
      *(v11 + 312) = 0;
      *(v11 + 312) = *(v10 + 39);
      *(v11 + 320) = v10[20];
      *(v10 + 39) = 0;
      *(v10 + 40) = 0;
      *(v10 + 41) = 0;
      v17 = v10[21];
      *(v11 + 352) = *(v10 + 44);
      *(v11 + 336) = v17;
      *(v10 + 43) = 0;
      *(v10 + 44) = 0;
      *(v10 + 42) = 0;
      *(v11 + 360) = *(v10 + 360);
      *(v11 + 384) = 0;
      *(v11 + 392) = 0;
      *(v11 + 376) = 0;
      *(v11 + 376) = *(v10 + 47);
      *(v11 + 384) = v10[24];
      *(v10 + 47) = 0;
      *(v10 + 48) = 0;
      *(v10 + 49) = 0;
      v18 = *(v10 + 52);
      *(v11 + 400) = v10[25];
      *(v11 + 416) = v18;
      *(v11 + 424) = 0;
      *(v11 + 432) = 0;
      *(v11 + 440) = 0;
      *(v11 + 424) = *(v10 + 53);
      *(v11 + 432) = v10[27];
      *(v10 + 53) = 0;
      *(v10 + 54) = 0;
      *(v10 + 55) = 0;
      *(v11 + 448) = *(v10 + 224);
      v10 = (v10 + 456);
      v11 += 456;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_399184(v7) + 456);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_39A0E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39A7E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_39A0FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_325C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  sub_39A3D8((a1 + 56), (a2 + 56));
  if (*(a2 + 103) < 0)
  {
    sub_325C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v5 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v5;
  }

  *(a1 + 104) = *(a2 + 104);
  sub_39A3D8((a1 + 120), (a2 + 120));
  if (*(a2 + 167) < 0)
  {
    sub_325C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v6 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v6;
  }

  *(a1 + 168) = *(a2 + 168);
  sub_39A3D8((a1 + 184), (a2 + 184));
  if (*(a2 + 231) < 0)
  {
    sub_325C((a1 + 208), *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v7 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v7;
  }

  *(a1 + 232) = *(a2 + 232);
  sub_39A3D8((a1 + 248), (a2 + 248));
  if (*(a2 + 295) < 0)
  {
    sub_325C((a1 + 272), *(a2 + 272), *(a2 + 280));
  }

  else
  {
    v8 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v8;
  }

  *(a1 + 296) = *(a2 + 296);
  sub_39A3D8((a1 + 312), (a2 + 312));
  if (*(a2 + 359) < 0)
  {
    sub_325C((a1 + 336), *(a2 + 336), *(a2 + 344));
  }

  else
  {
    v9 = *(a2 + 336);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 336) = v9;
  }

  *(a1 + 360) = *(a2 + 360);
  sub_39A3D8((a1 + 376), (a2 + 376));
  v10 = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = v10;
  sub_39A524((a1 + 424), (a2 + 424));
  *(a1 + 448) = *(a2 + 448);
  return a1;
}

void sub_39A2C8(_Unwind_Exception *a1)
{
  sub_395478(v1 + 272);
  sub_395478(v1 + 208);
  sub_395478(v1 + 144);
  sub_395478(v1 + 80);
  sub_395478(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_39A350()
{
  if (*(v0 + 295) < 0)
  {
    operator delete(*(v0 + 272));
  }

  JUMPOUT(0x39A328);
}

void sub_39A368()
{
  if (*(v0 + 231) < 0)
  {
    operator delete(*(v0 + 208));
  }

  JUMPOUT(0x39A330);
}

void sub_39A380()
{
  if (*(v0 + 167) < 0)
  {
    operator delete(*(v0 + 144));
  }

  JUMPOUT(0x39A338);
}

void sub_39A398(_Unwind_Exception *a1)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
    sub_395478(v1 + 16);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x39A340);
}

void sub_39A3BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void *sub_39A3D8(void *result, void *a2)
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

void sub_39A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_39833C(&a11);
  *(v11 + 8) = v12;
  sub_3983A0(&a9);
  _Unwind_Resume(a1);
}

void *sub_39A524(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v2 - *a2) >> 3)) < 0x276276276276277)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_39A680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_398D68(v13);
  sub_39A6A8(&a11);
  *(v11 + 8) = v12;
  sub_39A738(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_39A6A8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 8) == 1)
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 56);
        if (v6)
        {
          *(v3 - 48) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 88);
        if (v7)
        {
          *(v3 - 80) = v7;
          operator delete(v7);
        }
      }

      v3 -= 104;
    }
  }

  return a1;
}

void ***sub_39A738(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 8) == 1)
          {
            v6 = *(v4 - 4);
            if (v6)
            {
              *(v4 - 3) = v6;
              operator delete(v6);
            }

            v7 = *(v4 - 7);
            if (v7)
            {
              *(v4 - 6) = v7;
              operator delete(v7);
            }

            v8 = *(v4 - 11);
            if (v8)
            {
              *(v4 - 10) = v8;
              operator delete(v8);
            }
          }

          v4 -= 104;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_39A7E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 456;
    sub_399184(i - 456);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_39A8EC(void *a1, void *a2)
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

void sub_39AC58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_39AC6C(void *a1, void *a2)
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

void sub_39AFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_39AFEC(void *a1, void *a2)
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

void sub_39B358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_39B36C(void *a1, void *a2)
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

void sub_39B6D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_39B6EC(void *a1, void *a2)
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

void sub_39BA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_39BA6C(void *a1, void *a2)
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

void sub_39BDD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_39BDEC(void *a1, void *a2)
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

void sub_39C158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void sub_39C16C(uint64_t *a1)
{
  sub_7E9A4(v3);
  sub_2C795C(v2, a1);
  operator new();
}

uint64_t sub_39C6A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v4;
  *(a2 + 39) = 0;
  *(a2 + 16) = 0;
  v5 = (a1 + 56);
  v6 = *(a1 + 56);
  *(a1 + 40) = *(a2 + 40);
  if (v6)
  {
    v7 = *(a1 + 64);
    v8 = v6;
    if (v7 != v6)
    {
      do
      {
        if (*(v7 - 1) < 0)
        {
          operator delete(*(v7 - 3));
        }

        v7 -= 4;
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 64) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v9 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v9;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  v10 = (a1 + 120);
  v11 = *(a1 + 120);
  *(a1 + 104) = *(a2 + 104);
  if (v11)
  {
    v12 = *(a1 + 128);
    v13 = v11;
    if (v12 != v11)
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 3));
        }

        v12 -= 4;
      }

      while (v12 != v11);
      v13 = *v10;
    }

    *(a1 + 128) = v11;
    operator delete(v13);
    *v10 = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v14 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v14;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  v15 = (a1 + 184);
  v16 = *(a1 + 184);
  *(a1 + 168) = *(a2 + 168);
  if (v16)
  {
    v17 = *(a1 + 192);
    v18 = v16;
    if (v17 != v16)
    {
      do
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 3));
        }

        v17 -= 4;
      }

      while (v17 != v16);
      v18 = *v15;
    }

    *(a1 + 192) = v16;
    operator delete(v18);
    *v15 = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v19 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v19;
  *(a2 + 231) = 0;
  *(a2 + 208) = 0;
  v20 = (a1 + 248);
  v21 = *(a1 + 248);
  *(a1 + 232) = *(a2 + 232);
  if (v21)
  {
    v22 = *(a1 + 256);
    v23 = v21;
    if (v22 != v21)
    {
      do
      {
        if (*(v22 - 1) < 0)
        {
          operator delete(*(v22 - 3));
        }

        v22 -= 4;
      }

      while (v22 != v21);
      v23 = *v20;
    }

    *(a1 + 256) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v24 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v24;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  v25 = *(a1 + 312);
  if (v25)
  {
    v26 = *(a1 + 320);
    v27 = *(a1 + 312);
    if (v26 != v25)
    {
      do
      {
        if (*(v26 - 1) < 0)
        {
          operator delete(*(v26 - 24));
        }

        v26 -= 32;
      }

      while (v26 != v25);
      v27 = *(a1 + 312);
    }

    *(a1 + 320) = v25;
    operator delete(v27);
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
  }

  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v28 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 336) = v28;
  *(a2 + 359) = 0;
  *(a2 + 336) = 0;
  *(a1 + 360) = *(a2 + 360);
  v29 = *(a1 + 376);
  if (v29)
  {
    v30 = *(a1 + 384);
    v31 = *(a1 + 376);
    if (v30 != v29)
    {
      do
      {
        if (*(v30 - 1) < 0)
        {
          operator delete(*(v30 - 24));
        }

        v30 -= 32;
      }

      while (v30 != v29);
      v31 = *(a1 + 376);
    }

    *(a1 + 384) = v29;
    operator delete(v31);
    *(a1 + 376) = 0;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
  }

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 376) = 0;
  v32 = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = v32;
  v33 = *(a1 + 424);
  if (v33)
  {
    v34 = *(a1 + 432);
    v35 = *(a1 + 424);
    if (v34 != v33)
    {
      do
      {
        if (*(v34 - 8) == 1)
        {
          v36 = *(v34 - 32);
          if (v36)
          {
            *(v34 - 24) = v36;
            operator delete(v36);
          }

          v37 = *(v34 - 56);
          if (v37)
          {
            *(v34 - 48) = v37;
            operator delete(v37);
          }

          v38 = *(v34 - 88);
          if (v38)
          {
            *(v34 - 80) = v38;
            operator delete(v38);
          }
        }

        v34 -= 104;
      }

      while (v34 != v33);
      v35 = *(a1 + 424);
    }

    *(a1 + 432) = v33;
    operator delete(v35);
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
  }

  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  *(a2 + 440) = 0;
  *(a1 + 448) = *(a2 + 448);
  return a1;
}

void sub_39CB60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26695B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_39CBC0(void *a1)
{
  v2 = a1[40];
  if (v2)
  {
    do
    {
      v23 = *v2;
      v24 = v2[3];
      if (v24)
      {
        v2[4] = v24;
        operator delete(v24);
      }

      operator delete(v2);
      v2 = v23;
    }

    while (v23);
  }

  v3 = a1[38];
  a1[38] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[35];
  if (v4)
  {
    do
    {
      v25 = *v4;
      v26 = v4[3];
      if (v26)
      {
        v4[4] = v26;
        operator delete(v26);
      }

      operator delete(v4);
      v4 = v25;
    }

    while (v25);
  }

  v5 = a1[33];
  a1[33] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[30];
  if (v6)
  {
    do
    {
      v27 = *v6;
      v28 = v6[3];
      if (v28)
      {
        v6[4] = v28;
        operator delete(v28);
      }

      operator delete(v6);
      v6 = v27;
    }

    while (v27);
  }

  v7 = a1[28];
  a1[28] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[25];
  if (v8)
  {
    do
    {
      v29 = *v8;
      v30 = v8[3];
      if (v30)
      {
        v8[4] = v30;
        operator delete(v30);
      }

      operator delete(v8);
      v8 = v29;
    }

    while (v29);
  }

  v9 = a1[23];
  a1[23] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = a1[20];
  if (v10)
  {
    do
    {
      v31 = *v10;
      v32 = v10[3];
      if (v32)
      {
        v10[4] = v32;
        operator delete(v32);
      }

      operator delete(v10);
      v10 = v31;
    }

    while (v31);
  }

  v11 = a1[18];
  a1[18] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = a1[15];
  if (v12)
  {
    do
    {
      v33 = *v12;
      v34 = v12[3];
      if (v34)
      {
        v12[4] = v34;
        operator delete(v34);
      }

      operator delete(v12);
      v12 = v33;
    }

    while (v33);
  }

  v13 = a1[13];
  a1[13] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = a1[10];
  if (v14)
  {
    do
    {
      v35 = *v14;
      v36 = v14[3];
      if (v36)
      {
        v14[4] = v36;
        operator delete(v36);
      }

      operator delete(v14);
      v14 = v35;
    }

    while (v35);
  }

  v15 = a1[8];
  a1[8] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = a1[4];
  if (v16)
  {
    v17 = a1[5];
    v18 = a1[4];
    if (v17 != v16)
    {
      do
      {
        v17 = sub_399184(v17 - 456);
      }

      while (v17 != v16);
      v18 = a1[4];
    }

    a1[5] = v16;
    operator delete(v18);
  }

  v19 = a1[1];
  if (v19)
  {
    v20 = a1[2];
    v21 = a1[1];
    if (v20 != v19)
    {
      do
      {
        v20 = sub_399184(v20 - 456);
      }

      while (v20 != v19);
      v21 = a1[1];
    }

    a1[2] = v19;
    operator delete(v21);
  }

  return a1;
}

void sub_39CE1C(void *a1)
{
  v2 = a1[1];
  v3 = (v2 - *a1);
  if (v2 != *a1)
  {
    if (!((0x823EE08FB823EE09 * (v3 >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v4 = 126 - 2 * __clz(v3 >> 3);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  sub_39D090(0, v3, v5, 1);
  if (v3)
  {
    v6 = 8;
    if (v3 != dword_8)
    {
      do
      {
        if (*(*v6 + 8) == *(*(v6 - 8) + 8))
        {
          **v6 = -1;
        }

        v6 += 8;
      }

      while (v6 != v3);
    }
  }

  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    while (*v7 != -1)
    {
      v7 += 57;
      if (v7 == v8)
      {
        return;
      }
    }

    if (v7 != v8)
    {
      v9 = v7 + 57;
      if (v7 + 57 != v8)
      {
        do
        {
          if (*v9 != -1)
          {
            sub_39C6A4(v7, v9);
            v7 += 57;
          }

          v9 += 57;
        }

        while (v9 != v8);
        v8 = a1[1];
      }
    }
  }

  if (v7 != v8)
  {
    while (v8 != v7)
    {
      v8 -= 456;
      sub_399184(v8);
    }

    a1[1] = v7;
  }
}

unint64_t sub_39D090(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      break;
    }

    switch(v10)
    {
      case 3:
        v127 = *v9;
        v128 = v9[1];
        v129 = *(v128 + 8);
        v130 = *(*v9 + 8);
        if (v130 == v129)
        {
          if (*(v128 + 404) >= *(v127 + 404))
          {
            goto LABEL_219;
          }
        }

        else if (v129 >= v130)
        {
LABEL_219:
          v131 = *(a2 - 1);
          v132 = *(v131 + 8);
          if (v129 == v132)
          {
            if (*(v131 + 404) >= *(v128 + 404))
            {
              return result;
            }
          }

          else if (v132 >= v129)
          {
            return result;
          }

          v9[1] = v131;
          *(a2 - 1) = v128;
          v213 = *v9;
          v192 = v9[1];
          v214 = *(v192 + 8);
          v215 = *(*v9 + 8);
          if (v215 != v214)
          {
            goto LABEL_340;
          }

          goto LABEL_334;
        }

        v196 = *(a2 - 1);
        v197 = *(v196 + 8);
        if (v129 == v197)
        {
          if (*(v196 + 404) >= *(v128 + 404))
          {
            goto LABEL_312;
          }

LABEL_337:
          *v9 = v196;
        }

        else
        {
          if (v197 < v129)
          {
            goto LABEL_337;
          }

LABEL_312:
          *v9 = v128;
          v9[1] = v127;
          v198 = *(a2 - 1);
          v199 = *(v198 + 8);
          v200 = *(v127 + 8);
          if (v200 == v199)
          {
            if (*(v198 + 404) >= *(v127 + 404))
            {
              return result;
            }
          }

          else if (v199 >= v200)
          {
            return result;
          }

          v9[1] = v198;
        }

        *(a2 - 1) = v127;
        return result;
      case 4:

        return sub_39E130(v9, v9 + 1, v9 + 2, a2 - 1);
      case 5:
        result = sub_39E130(v9, v9 + 1, v9 + 2, v9 + 3);
        v119 = *(a2 - 1);
        v120 = v9[3];
        v121 = *(v119 + 8);
        v122 = *(v120 + 8);
        if (v122 == v121)
        {
          if (*(v119 + 404) >= *(v120 + 404))
          {
            return result;
          }
        }

        else if (v121 >= v122)
        {
          return result;
        }

        v9[3] = v119;
        *(a2 - 1) = v120;
        v193 = v9[2];
        v192 = v9[3];
        v194 = *(v192 + 8);
        v195 = *(v193 + 8);
        if (v195 == v194)
        {
          if (*(v192 + 404) >= *(v193 + 404))
          {
            return result;
          }
        }

        else if (v194 >= v195)
        {
          return result;
        }

        v9[2] = v192;
        v9[3] = v193;
        v210 = v9[1];
        v211 = *(v192 + 8);
        v212 = *(v210 + 8);
        if (v212 == v211)
        {
          if (*(v192 + 404) >= *(v210 + 404))
          {
            return result;
          }
        }

        else if (v211 >= v212)
        {
          return result;
        }

        v9[1] = v192;
        v9[2] = v210;
        v213 = *v9;
        v214 = *(v192 + 8);
        v215 = *(*v9 + 8);
        if (v215 != v214)
        {
LABEL_340:
          if (v214 >= v215)
          {
            return result;
          }

          goto LABEL_341;
        }

LABEL_334:
        if (*(v192 + 404) >= *(v213 + 404))
        {
          return result;
        }

LABEL_341:
        *v9 = v192;
        v9[1] = v213;
        return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v133 = v9 + 1;
      v135 = v9 == a2 || v133 == a2;
      if (a4)
      {
        if (v135)
        {
          return result;
        }

        v136 = 0;
        v137 = v9;
LABEL_237:
        v139 = v137;
        v137 = v133;
        v141 = *v139;
        v140 = v139[1];
        v142 = *(v140 + 8);
        v143 = *(*v139 + 8);
        if (v143 == v142)
        {
          if (*(v140 + 404) >= *(v141 + 404))
          {
            goto LABEL_236;
          }
        }

        else if (v142 >= v143)
        {
          goto LABEL_236;
        }

        v139[1] = v141;
        v138 = v9;
        if (v139 == v9)
        {
          goto LABEL_235;
        }

        v144 = v136;
        while (1)
        {
          v145 = *(v9 + v144 - 8);
          v146 = *(v140 + 8);
          v147 = *(v145 + 8);
          if (v147 == v146)
          {
            if (*(v140 + 404) >= *(v145 + 404))
            {
              v138 = (v9 + v144);
LABEL_235:
              *v138 = v140;
LABEL_236:
              v133 = v137 + 1;
              v136 += 8;
              if (v137 + 1 == a2)
              {
                return result;
              }

              goto LABEL_237;
            }
          }

          else if (v146 >= v147)
          {
            v138 = v139;
            goto LABEL_235;
          }

          --v139;
          *(v9 + v144) = v145;
          v144 -= 8;
          if (!v144)
          {
            v138 = v9;
            goto LABEL_235;
          }
        }
      }

      if (!v135)
      {
        do
        {
          v201 = v7;
          v7 = v133;
          v203 = *v201;
          v202 = v201[1];
          v204 = *(v202 + 8);
          v205 = *(*v201 + 8);
          if (v205 == v204)
          {
            if (*(v202 + 404) < *(v203 + 404))
            {
              goto LABEL_325;
            }
          }

          else if (v204 < v205)
          {
            do
            {
LABEL_325:
              while (1)
              {
                v206 = v201;
                v207 = *--v201;
                v201[2] = v203;
                v203 = v207;
                v208 = *(v202 + 8);
                v209 = *(v207 + 8);
                if (v209 == v208)
                {
                  break;
                }

                if (v208 >= v209)
                {
                  goto LABEL_317;
                }
              }
            }

            while (*(v202 + 404) < *(v203 + 404));
LABEL_317:
            *v206 = v202;
          }

          v133 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v148 = (v10 - 2) >> 1;
      v149 = v148;
      while (2)
      {
        v151 = v149;
        if (v148 < v149)
        {
          goto LABEL_253;
        }

        v152 = (2 * v149) | 1;
        v153 = &v9[v152];
        if (2 * v151 + 2 >= v10)
        {
          goto LABEL_261;
        }

        v154 = v153[1];
        v155 = *(*v153 + 8);
        result = *(v154 + 8);
        if (result == v155)
        {
          if (*(*v153 + 404) >= *(v154 + 404))
          {
LABEL_261:
            v156 = *v153;
            v157 = v9[v151];
            v158 = *(*v153 + 8);
            v159 = *(v157 + 8);
            if (v159 == v158)
            {
              if (*(v156 + 404) < *(v157 + 404))
              {
                goto LABEL_253;
              }

LABEL_265:
              v9[v151] = v156;
              if (v148 < v152)
              {
LABEL_251:
                v150 = v153;
LABEL_252:
                *v150 = v157;
                goto LABEL_253;
              }

              while (2)
              {
                v160 = 2 * v152;
                v152 = (2 * v152) | 1;
                v150 = &v9[v152];
                v161 = v160 + 2;
                if (v161 < v10)
                {
                  v162 = v150[1];
                  result = *v150;
                  v163 = *(*v150 + 8);
                  v164 = *(v162 + 8);
                  if (v164 == v163)
                  {
                    result = *(result + 404);
                    if (result >= *(v162 + 404))
                    {
                      goto LABEL_275;
                    }

LABEL_274:
                    ++v150;
                    v152 = v161;
                  }

                  else if (v163 < v164)
                  {
                    goto LABEL_274;
                  }
                }

LABEL_275:
                v165 = *v150;
                v166 = *(*v150 + 8);
                v167 = *(v157 + 8);
                if (v167 == v166)
                {
                  if (*(v165 + 404) < *(v157 + 404))
                  {
                    goto LABEL_251;
                  }
                }

                else if (v166 < v167)
                {
                  goto LABEL_251;
                }

                *v153 = v165;
                v153 = v150;
                if (v148 < v152)
                {
                  goto LABEL_252;
                }

                continue;
              }
            }

            if (v158 >= v159)
            {
              goto LABEL_265;
            }

LABEL_253:
            v149 = v151 - 1;
            if (v151)
            {
              continue;
            }

            while (2)
            {
              v170 = 0;
              v171 = *v9;
              v168 = v9;
LABEL_284:
              v172 = v168;
              v173 = &v168[v170];
              v168 = v173 + 1;
              v174 = 2 * v170;
              v170 = (2 * v170) | 1;
              v175 = v174 + 2;
              if (v175 < v10)
              {
                v178 = v173[2];
                v176 = v173 + 2;
                v177 = v178;
                v179 = *(v176 - 1);
                result = *(v179 + 8);
                v180 = *(v178 + 8);
                if (v180 == result)
                {
                  if (*(v179 + 404) >= *(v177 + 404))
                  {
                    goto LABEL_283;
                  }
                }

                else if (result >= v180)
                {
                  goto LABEL_283;
                }

                v168 = v176;
                v170 = v175;
              }

LABEL_283:
              *v172 = *v168;
              if (v170 > ((v10 - 2) >> 1))
              {
                if (v168 == --a2)
                {
                  goto LABEL_279;
                }

                *v168 = *a2;
                *a2 = v171;
                v181 = (v168 - v9 + 8) >> 3;
                v182 = v181 - 2;
                if (v181 >= 2)
                {
                  v183 = v182 >> 1;
                  v184 = &v9[v182 >> 1];
                  v185 = *v184;
                  v171 = *v168;
                  v186 = *(*v184 + 8);
                  v187 = *(*v168 + 8);
                  if (v187 == v186)
                  {
                    if (*(v185 + 404) < *(v171 + 404))
                    {
LABEL_296:
                      *v168 = v185;
                      if (v182 >= 2)
                      {
                        while (1)
                        {
                          v188 = v183 - 1;
                          v183 = (v183 - 1) >> 1;
                          v168 = &v9[v183];
                          v189 = *v168;
                          v190 = *(*v168 + 8);
                          v191 = *(v171 + 8);
                          if (v191 == v190)
                          {
                            if (*(v189 + 404) >= *(v171 + 404))
                            {
                              break;
                            }
                          }

                          else if (v190 >= v191)
                          {
                            break;
                          }

                          *v184 = v189;
                          v184 = &v9[v183];
                          if (v188 <= 1)
                          {
                            goto LABEL_279;
                          }
                        }
                      }

                      v168 = v184;
LABEL_279:
                      *v168 = v171;
                    }
                  }

                  else if (v186 < v187)
                  {
                    goto LABEL_296;
                  }
                }

                if (v10-- <= 2)
                {
                  return result;
                }

                continue;
              }

              goto LABEL_284;
            }
          }
        }

        else if (v155 >= result)
        {
          goto LABEL_261;
        }

        break;
      }

      ++v153;
      v152 = 2 * v151 + 2;
      goto LABEL_261;
    }

    v11 = v10 >> 1;
    if (v10 < 0x81)
    {
      v18 = *v9;
      v19 = v9[v11];
      v20 = *(*v9 + 8);
      v21 = *(v19 + 8);
      if (v21 == v20)
      {
        if (*(v18 + 404) >= *(v19 + 404))
        {
          goto LABEL_20;
        }

LABEL_30:
        v29 = *v8;
        v30 = *(*v8 + 8);
        if (v20 == v30)
        {
          if (*(v29 + 404) < *(v18 + 404))
          {
            goto LABEL_46;
          }
        }

        else if (v30 < v20)
        {
LABEL_46:
          v9[v11] = v29;
          *v8 = v19;
          --a3;
          if (a4)
          {
            goto LABEL_76;
          }

          goto LABEL_127;
        }

        v9[v11] = v18;
        *v9 = v19;
        v31 = *v8;
        v32 = *(*v8 + 8);
        v33 = *(v19 + 8);
        if (v33 == v32)
        {
          if (*(v31 + 404) < *(v19 + 404))
          {
            goto LABEL_52;
          }
        }

        else if (v32 < v33)
        {
LABEL_52:
          *v9 = v31;
          *v8 = v19;
          --a3;
          if (a4)
          {
            goto LABEL_76;
          }

          goto LABEL_127;
        }

LABEL_75:
        --a3;
        if (a4)
        {
          goto LABEL_76;
        }

        goto LABEL_127;
      }

      if (v20 < v21)
      {
        goto LABEL_30;
      }

LABEL_20:
      v22 = *v8;
      v23 = *(*v8 + 8);
      if (v20 == v23)
      {
        if (*(v22 + 404) >= *(v18 + 404))
        {
          goto LABEL_75;
        }
      }

      else if (v23 >= v20)
      {
        goto LABEL_75;
      }

      *v9 = v22;
      *v8 = v18;
      v38 = *v9;
      v39 = v9[v11];
      v40 = *(*v9 + 8);
      v41 = *(v39 + 8);
      if (v41 == v40)
      {
        if (*(v38 + 404) >= *(v39 + 404))
        {
          goto LABEL_75;
        }
      }

      else if (v40 >= v41)
      {
        goto LABEL_75;
      }

      v9[v11] = v38;
      *v9 = v39;
      goto LABEL_75;
    }

    v12 = v9[v11];
    v13 = *v9;
    v14 = *(v12 + 8);
    v15 = *(*v9 + 8);
    if (v15 != v14)
    {
      if (v14 >= v15)
      {
        goto LABEL_15;
      }

LABEL_24:
      v24 = *v8;
      v25 = *(*v8 + 8);
      if (v14 == v25)
      {
        if (*(v24 + 404) < *(v12 + 404))
        {
          goto LABEL_44;
        }

LABEL_26:
        *v9 = v12;
        v9[v11] = v13;
        v26 = *v8;
        v27 = *(*v8 + 8);
        v28 = *(v13 + 8);
        if (v28 == v27)
        {
          if (*(v26 + 404) < *(v13 + 404))
          {
            goto LABEL_49;
          }

          goto LABEL_56;
        }

        if (v27 >= v28)
        {
          goto LABEL_56;
        }

LABEL_49:
        v9[v11] = v26;
      }

      else
      {
        if (v25 >= v14)
        {
          goto LABEL_26;
        }

LABEL_44:
        *v9 = v24;
      }

      *v8 = v13;
      goto LABEL_56;
    }

    if (*(v12 + 404) < *(v13 + 404))
    {
      goto LABEL_24;
    }

LABEL_15:
    v16 = *v8;
    v17 = *(*v8 + 8);
    if (v14 == v17)
    {
      if (*(v16 + 404) >= *(v12 + 404))
      {
        goto LABEL_56;
      }
    }

    else if (v17 >= v14)
    {
      goto LABEL_56;
    }

    v9[v11] = v16;
    *v8 = v12;
    v34 = v9[v11];
    v35 = *v9;
    v36 = *(v34 + 8);
    v37 = *(*v9 + 8);
    if (v37 != v36)
    {
      if (v36 >= v37)
      {
        goto LABEL_56;
      }

LABEL_55:
      *v9 = v34;
      v9[v11] = v35;
      goto LABEL_56;
    }

    if (*(v34 + 404) < *(v35 + 404))
    {
      goto LABEL_55;
    }

LABEL_56:
    v42 = v11 - 1;
    v43 = v9[v11 - 1];
    v44 = v9[1];
    v45 = *(v43 + 8);
    v46 = *(v44 + 8);
    if (v46 != v45)
    {
      if (v45 >= v46)
      {
        goto LABEL_58;
      }

LABEL_62:
      v49 = *(a2 - 2);
      v50 = *(v49 + 8);
      if (v45 == v50)
      {
        if (*(v49 + 404) < *(v43 + 404))
        {
          goto LABEL_72;
        }
      }

      else if (v50 < v45)
      {
LABEL_72:
        v9[1] = v49;
        goto LABEL_79;
      }

      v9[1] = v43;
      v9[v42] = v44;
      v51 = *(a2 - 2);
      v52 = *(v51 + 8);
      v53 = *(v44 + 8);
      if (v53 == v52)
      {
        if (*(v51 + 404) < *(v44 + 404))
        {
          goto LABEL_78;
        }

        goto LABEL_82;
      }

      if (v52 >= v53)
      {
        goto LABEL_82;
      }

LABEL_78:
      v9[v42] = v51;
LABEL_79:
      *(a2 - 2) = v44;
      goto LABEL_82;
    }

    if (*(v43 + 404) < *(v44 + 404))
    {
      goto LABEL_62;
    }

LABEL_58:
    v47 = *(a2 - 2);
    v48 = *(v47 + 8);
    if (v45 == v48)
    {
      if (*(v47 + 404) >= *(v43 + 404))
      {
        goto LABEL_82;
      }
    }

    else if (v48 >= v45)
    {
      goto LABEL_82;
    }

    v9[v42] = v47;
    *(a2 - 2) = v43;
    v54 = v9[v42];
    v55 = v9[1];
    v56 = *(v54 + 8);
    v57 = *(v55 + 8);
    if (v57 != v56)
    {
      if (v56 >= v57)
      {
        goto LABEL_82;
      }

LABEL_81:
      v9[1] = v54;
      v9[v42] = v55;
      goto LABEL_82;
    }

    if (*(v54 + 404) < *(v55 + 404))
    {
      goto LABEL_81;
    }

LABEL_82:
    v60 = v11 + 1;
    v61 = v9[v11 + 1];
    v62 = v9[2];
    v63 = *(v61 + 8);
    v64 = *(v62 + 8);
    if (v64 != v63)
    {
      if (v63 >= v64)
      {
        goto LABEL_84;
      }

LABEL_88:
      v67 = *(a2 - 3);
      v68 = *(v67 + 8);
      if (v63 == v68)
      {
        if (*(v67 + 404) < *(v61 + 404))
        {
          goto LABEL_98;
        }
      }

      else if (v68 < v63)
      {
LABEL_98:
        v9[2] = v67;
        goto LABEL_101;
      }

      v9[2] = v61;
      v9[v60] = v62;
      v69 = *(a2 - 3);
      v70 = *(v69 + 8);
      v71 = *(v62 + 8);
      if (v71 == v70)
      {
        if (*(v69 + 404) < *(v62 + 404))
        {
          goto LABEL_100;
        }

        goto LABEL_104;
      }

      if (v70 >= v71)
      {
        goto LABEL_104;
      }

LABEL_100:
      v9[v60] = v69;
LABEL_101:
      *(a2 - 3) = v62;
      goto LABEL_104;
    }

    if (*(v61 + 404) < *(v62 + 404))
    {
      goto LABEL_88;
    }

LABEL_84:
    v65 = *(a2 - 3);
    v66 = *(v65 + 8);
    if (v63 == v66)
    {
      if (*(v65 + 404) >= *(v61 + 404))
      {
        goto LABEL_104;
      }
    }

    else if (v66 >= v63)
    {
      goto LABEL_104;
    }

    v9[v60] = v65;
    *(a2 - 3) = v61;
    v72 = v9[v60];
    v73 = v9[2];
    v74 = *(v72 + 8);
    v75 = *(v73 + 8);
    if (v75 != v74)
    {
      if (v74 >= v75)
      {
        goto LABEL_104;
      }

LABEL_103:
      v9[2] = v72;
      v9[v60] = v73;
      goto LABEL_104;
    }

    if (*(v72 + 404) < *(v73 + 404))
    {
      goto LABEL_103;
    }

LABEL_104:
    v76 = v9[v11];
    v77 = v9[v42];
    v78 = *(v76 + 8);
    v79 = *(v77 + 8);
    if (v79 == v78)
    {
      if (*(v76 + 404) >= *(v77 + 404))
      {
        goto LABEL_106;
      }
    }

    else if (v78 >= v79)
    {
LABEL_106:
      v80 = v9[v60];
      v81 = *(v80 + 8);
      if (v78 == v81)
      {
        if (*(v80 + 404) >= *(v76 + 404))
        {
          goto LABEL_108;
        }
      }

      else if (v81 >= v78)
      {
LABEL_108:
        v77 = v9[v11];
        goto LABEL_126;
      }

      v9[v11] = v80;
      v9[v60] = v76;
      v85 = *(v80 + 8);
      v86 = *(v77 + 8);
      if (v86 == v85)
      {
        if (*(v80 + 404) < *(v77 + 404))
        {
          goto LABEL_124;
        }
      }

      else if (v85 < v86)
      {
LABEL_124:
        v9[v42] = v80;
        v9[v11] = v77;
        goto LABEL_126;
      }

      goto LABEL_125;
    }

    v80 = v9[v60];
    v82 = *(v80 + 8);
    if (v78 == v82)
    {
      if (*(v80 + 404) < *(v76 + 404))
      {
        goto LABEL_120;
      }
    }

    else if (v82 < v78)
    {
LABEL_120:
      v9[v42] = v80;
      v9[v60] = v77;
      v77 = v76;
      goto LABEL_126;
    }

    v9[v42] = v76;
    v9[v11] = v77;
    v83 = *(v80 + 8);
    v84 = *(v77 + 8);
    if (v84 != v83)
    {
      if (v83 >= v84)
      {
        goto LABEL_126;
      }

LABEL_122:
      v9[v11] = v80;
      v9[v60] = v77;
LABEL_125:
      v77 = v80;
      goto LABEL_126;
    }

    if (*(v80 + 404) < *(v77 + 404))
    {
      goto LABEL_122;
    }

LABEL_126:
    v87 = *v9;
    *v9 = v77;
    v9[v11] = v87;
    --a3;
    if (a4)
    {
LABEL_76:
      v58 = *v9;
      v59 = *(*v9 + 8);
      goto LABEL_132;
    }

LABEL_127:
    v88 = *(v9 - 1);
    v58 = *v9;
    v59 = *(v88 + 8);
    v89 = *(*v9 + 8);
    if (v89 != v59)
    {
      if (v59 >= v89)
      {
        goto LABEL_172;
      }

      v59 = *(*v9 + 8);
      goto LABEL_132;
    }

    if (*(v88 + 404) < *(v58 + 404))
    {
LABEL_132:
      for (i = 0; ; ++i)
      {
        v91 = v9[i + 1];
        v92 = *(v91 + 8);
        if (v59 == v92)
        {
          break;
        }

        if (v92 >= v59)
        {
          goto LABEL_137;
        }

LABEL_134:
        ;
      }

      if (*(v91 + 404) < *(v58 + 404))
      {
        goto LABEL_134;
      }

LABEL_137:
      v93 = &v9[i];
      v94 = &v9[i + 1];
      j = a2 - 1;
      if (i * 8)
      {
        while (1)
        {
          v96 = *(*j + 8);
          if (v59 == v96)
          {
            if (*(*j + 404) < *(v58 + 404))
            {
              goto LABEL_144;
            }
          }

          else if (v96 < v59)
          {
            goto LABEL_144;
          }

          --j;
        }
      }

      j = a2;
      if (v94 < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v104 = *(*j + 8);
          if (v59 == v104)
          {
            if (v94 >= j || *(*j + 404) < *(v58 + 404))
            {
              break;
            }
          }

          else if (v94 >= j || v104 < v59)
          {
            break;
          }
        }
      }

LABEL_144:
      if (v94 >= j)
      {
        goto LABEL_166;
      }

      v97 = *j;
      v98 = &v9[i + 1];
      v99 = j;
      while (2)
      {
        *v98 = v97;
        v98 += 8;
        *v99 = v91;
        v100 = *(v58 + 8);
        while (2)
        {
          v91 = *v98;
          v101 = *(*v98 + 8);
          if (v100 != v101)
          {
            if (v101 >= v100)
            {
              goto LABEL_154;
            }

LABEL_149:
            v98 += 8;
            continue;
          }

          break;
        }

        if (*(v91 + 404) < *(v58 + 404))
        {
          goto LABEL_149;
        }

        do
        {
LABEL_154:
          while (1)
          {
            v102 = *--v99;
            v97 = v102;
            v103 = *(v102 + 8);
            if (v100 == v103)
            {
              break;
            }

            if (v103 < v100)
            {
              goto LABEL_146;
            }
          }
        }

        while (*(v97 + 404) >= *(v58 + 404));
LABEL_146:
        if (v98 < v99)
        {
          continue;
        }

        break;
      }

      v93 = (v98 - 8);
LABEL_166:
      if (v93 != v9)
      {
        *v9 = *v93;
      }

      *v93 = v58;
      if (v94 < j)
      {
LABEL_171:
        result = sub_39D090(v7, v93, a3, a4 & 1);
        a4 = 0;
        v9 = v93 + 1;
      }

      else
      {
        v105 = sub_39E300(v9, v93);
        v9 = v93 + 1;
        result = sub_39E300(v93 + 1, a2);
        if (result)
        {
          a2 = v93;
          if (v105)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v105)
        {
          goto LABEL_171;
        }
      }
    }

    else
    {
LABEL_172:
      v106 = *v8;
      v107 = *(*v8 + 8);
      if (v107 == v89)
      {
        if (*(v58 + 404) < *(v106 + 404))
        {
          goto LABEL_182;
        }
      }

      else if (v89 < v107)
      {
LABEL_182:
        for (++v9; ; ++v9)
        {
          v109 = *(*v9 + 8);
          if (v109 == v89)
          {
            if (*(v58 + 404) < *(*v9 + 404))
            {
              goto LABEL_187;
            }
          }

          else if (v89 < v109)
          {
            goto LABEL_187;
          }
        }
      }

      for (++v9; v9 < a2; ++v9)
      {
        v108 = *(*v9 + 8);
        if (v108 == v89)
        {
          if (*(v58 + 404) < *(*v9 + 404))
          {
            break;
          }
        }

        else if (v89 < v108)
        {
          break;
        }
      }

LABEL_187:
      k = a2;
      if (v9 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          if (v107 == v89)
          {
            if (*(v58 + 404) >= *(v106 + 404))
            {
              break;
            }
          }

          else if (v89 >= v107)
          {
            break;
          }

          v111 = *(k - 1);
          v106 = v111;
          v107 = *(v111 + 8);
        }
      }

      if (v9 < k)
      {
        v112 = *v9;
        v113 = *k;
        do
        {
          *v9++ = v113;
          *k = v112;
          v114 = *(v58 + 8);
          while (1)
          {
            v112 = *v9;
            v115 = *(*v9 + 8);
            if (v115 == v114)
            {
              break;
            }

            if (v114 < v115)
            {
              goto LABEL_203;
            }

LABEL_198:
            ++v9;
          }

          if (*(v58 + 404) >= *(v112 + 404))
          {
            goto LABEL_198;
          }

          do
          {
LABEL_203:
            while (1)
            {
              v116 = *--k;
              v113 = v116;
              v117 = *(v116 + 8);
              if (v117 == v114)
              {
                break;
              }

              if (v114 >= v117)
              {
                goto LABEL_195;
              }
            }
          }

          while (*(v58 + 404) < *(v113 + 404));
LABEL_195:
          ;
        }

        while (v9 < k);
      }

      v118 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v118;
      }

      a4 = 0;
      *v118 = v58;
    }
  }

  if (v10 < 2)
  {
    return result;
  }

  if (v10 != 2)
  {
    goto LABEL_10;
  }

  v123 = *(a2 - 1);
  v124 = *v9;
  v125 = *(v123 + 8);
  v126 = *(*v9 + 8);
  if (v126 == v125)
  {
    if (*(v123 + 404) >= *(v124 + 404))
    {
      return result;
    }
  }

  else if (v125 >= v126)
  {
    return result;
  }

  *v9 = v123;
  *(a2 - 1) = v124;
  return result;
}

uint64_t *sub_39E130(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 8);
  v7 = *(*result + 8);
  if (v7 == v6)
  {
    if (*(v4 + 404) >= *(v5 + 404))
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = *a3;
    v10 = *(*a3 + 8);
    if (v6 == v10)
    {
      if (*(v9 + 404) >= *(v4 + 404))
      {
LABEL_9:
        *result = v4;
        *a2 = v5;
        v4 = *a3;
        v11 = *(*a3 + 8);
        v12 = *(v5 + 8);
        if (v12 == v11)
        {
          if (*(v4 + 404) >= *(v5 + 404))
          {
            goto LABEL_22;
          }
        }

        else if (v11 >= v12)
        {
          goto LABEL_22;
        }

        *a2 = v4;
        goto LABEL_20;
      }
    }

    else if (v10 >= v6)
    {
      goto LABEL_9;
    }

    *result = v9;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v6 < v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *a3;
  v8 = *(*a3 + 8);
  if (v6 == v8)
  {
    if (*(v5 + 404) >= *(v4 + 404))
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v8 >= v6)
  {
LABEL_21:
    v4 = v5;
    goto LABEL_22;
  }

LABEL_13:
  *a2 = v5;
  *a3 = v4;
  v13 = *a2;
  v14 = *result;
  v15 = *(*a2 + 8);
  v16 = *(*result + 8);
  if (v16 == v15)
  {
    if (*(v13 + 404) >= *(v14 + 404))
    {
      goto LABEL_22;
    }
  }

  else if (v15 >= v16)
  {
    goto LABEL_22;
  }

  *result = v13;
  *a2 = v14;
  v4 = *a3;
LABEL_22:
  v17 = *a4;
  v18 = *(*a4 + 8);
  v19 = *(v4 + 8);
  if (v19 == v18)
  {
    if (*(v17 + 404) >= *(v4 + 404))
    {
      return result;
    }
  }

  else if (v18 >= v19)
  {
    return result;
  }

  *a3 = v17;
  *a4 = v4;
  v20 = *a3;
  v21 = *a2;
  v22 = *(*a3 + 8);
  v23 = *(*a2 + 8);
  if (v23 == v22)
  {
    if (*(v20 + 404) >= *(v21 + 404))
    {
      return result;
    }
  }

  else if (v22 >= v23)
  {
    return result;
  }

  *a2 = v20;
  *a3 = v21;
  v24 = *a2;
  v25 = *result;
  v26 = *(*a2 + 8);
  v27 = *(*result + 8);
  if (v27 == v26)
  {
    if (*(v24 + 404) < *(v25 + 404))
    {
      goto LABEL_36;
    }
  }

  else if (v26 < v27)
  {
LABEL_36:
    *result = v24;
    *a2 = v25;
  }

  return result;
}

BOOL sub_39E300(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v10 = *(a2 - 1);
      v11 = *a1;
      v12 = *(v10 + 8);
      v13 = *(*a1 + 8);
      if (v13 == v12)
      {
        if (*(v10 + 404) >= *(v11 + 404))
        {
          return 1;
        }
      }

      else if (v12 >= v13)
      {
        return 1;
      }

      *a1 = v10;
      *(a2 - 1) = v11;
      return 1;
    }

    goto LABEL_19;
  }

  switch(v2)
  {
    case 3:
      v14 = *a1;
      v15 = a1[1];
      v16 = *(v15 + 8);
      v17 = *(*a1 + 8);
      if (v17 == v16)
      {
        if (*(v15 + 404) >= *(v14 + 404))
        {
          goto LABEL_16;
        }
      }

      else if (v16 >= v17)
      {
LABEL_16:
        v18 = *(a2 - 1);
        v19 = *(v18 + 8);
        if (v16 == v19)
        {
          if (*(v18 + 404) >= *(v15 + 404))
          {
            return 1;
          }
        }

        else if (v19 >= v16)
        {
          return 1;
        }

        a1[1] = v18;
        *(a2 - 1) = v15;
        v42 = *a1;
        v41 = a1[1];
        v43 = *(v41 + 8);
        v44 = *(*a1 + 8);
        if (v44 == v43)
        {
          if (*(v41 + 404) >= *(v42 + 404))
          {
            return 1;
          }
        }

        else if (v43 >= v44)
        {
          return 1;
        }

        *a1 = v41;
        a1[1] = v42;
        return 1;
      }

      v28 = *(a2 - 1);
      v29 = *(v28 + 8);
      if (v16 == v29)
      {
        if (*(v28 + 404) >= *(v15 + 404))
        {
          goto LABEL_28;
        }
      }

      else if (v29 >= v16)
      {
LABEL_28:
        *a1 = v15;
        a1[1] = v14;
        v30 = *(a2 - 1);
        v31 = *(v30 + 8);
        v32 = *(v14 + 8);
        if (v32 == v31)
        {
          if (*(v30 + 404) >= *(v14 + 404))
          {
            return 1;
          }
        }

        else if (v31 >= v32)
        {
          return 1;
        }

        a1[1] = v30;
        *(a2 - 1) = v14;
        return 1;
      }

      *a1 = v28;
      *(a2 - 1) = v14;
      return 1;
    case 4:
      sub_39E130(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      sub_39E130(a1, a1 + 1, a1 + 2, a1 + 3);
      v6 = *(a2 - 1);
      v7 = a1[3];
      v8 = *(v6 + 8);
      v9 = *(v7 + 8);
      if (v9 == v8)
      {
        if (*(v6 + 404) >= *(v7 + 404))
        {
          return 1;
        }
      }

      else if (v8 >= v9)
      {
        return 1;
      }

      a1[3] = v6;
      *(a2 - 1) = v7;
      v38 = a1[2];
      v37 = a1[3];
      v39 = *(v37 + 8);
      v40 = *(v38 + 8);
      if (v40 == v39)
      {
        if (*(v37 + 404) >= *(v38 + 404))
        {
          return 1;
        }
      }

      else if (v39 >= v40)
      {
        return 1;
      }

      a1[2] = v37;
      a1[3] = v38;
      v47 = a1[1];
      v48 = *(v37 + 8);
      v49 = *(v47 + 8);
      if (v49 == v48)
      {
        if (*(v37 + 404) >= *(v47 + 404))
        {
          return 1;
        }
      }

      else if (v48 >= v49)
      {
        return 1;
      }

      a1[1] = v37;
      a1[2] = v47;
      v61 = *a1;
      v62 = *(v37 + 8);
      v63 = *(*a1 + 8);
      if (v63 == v62)
      {
        if (*(v37 + 404) >= *(v61 + 404))
        {
          return 1;
        }
      }

      else if (v62 >= v63)
      {
        return 1;
      }

      *a1 = v37;
      a1[1] = v61;
      return 1;
  }

LABEL_19:
  v20 = (a1 + 2);
  v21 = *a1;
  v22 = a1 + 1;
  v23 = a1[1];
  v24 = *(v23 + 8);
  v25 = *(*a1 + 8);
  if (v25 == v24)
  {
    if (*(v23 + 404) >= *(v21 + 404))
    {
      goto LABEL_21;
    }

LABEL_32:
    v33 = *v20;
    v34 = *(*v20 + 8);
    if (v24 == v34)
    {
      if (*(v33 + 404) >= *(v23 + 404))
      {
LABEL_34:
        *a1 = v23;
        a1[1] = v21;
        v35 = *(v33 + 8);
        v36 = *(v21 + 8);
        if (v36 == v35)
        {
          if (*(v33 + 404) >= *(v21 + 404))
          {
            goto LABEL_69;
          }
        }

        else if (v35 >= v36)
        {
          goto LABEL_69;
        }

        *v22 = v33;
LABEL_65:
        v22 = a1 + 2;
LABEL_68:
        *v22 = v21;
        goto LABEL_69;
      }
    }

    else if (v34 >= v24)
    {
      goto LABEL_34;
    }

    *a1 = v33;
    goto LABEL_65;
  }

  if (v24 < v25)
  {
    goto LABEL_32;
  }

LABEL_21:
  v26 = *v20;
  v27 = *(*v20 + 8);
  if (v24 == v27)
  {
    if (*(v26 + 404) >= *(v23 + 404))
    {
      goto LABEL_69;
    }
  }

  else if (v27 >= v24)
  {
    goto LABEL_69;
  }

  *v22 = v26;
  *v20 = v23;
  v45 = *(v26 + 8);
  v46 = *(v21 + 8);
  if (v46 == v45)
  {
    if (*(v26 + 404) >= *(v21 + 404))
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  if (v45 < v46)
  {
LABEL_67:
    *a1 = v26;
    goto LABEL_68;
  }

LABEL_69:
  v50 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v51 = 0;
  v52 = 0;
  while (2)
  {
    v53 = *v50;
    v54 = *v20;
    v55 = *(*v50 + 8);
    v56 = *(*v20 + 8);
    if (v56 == v55)
    {
      if (*(v53 + 404) >= *(v54 + 404))
      {
        goto LABEL_73;
      }
    }

    else if (v55 >= v56)
    {
      goto LABEL_73;
    }

    *v50 = v54;
    v57 = v51;
    while (1)
    {
      v58 = *(a1 + v57 + 8);
      v59 = *(v53 + 8);
      v60 = *(v58 + 8);
      if (v60 != v59)
      {
        if (v59 >= v60)
        {
          goto LABEL_72;
        }

        goto LABEL_80;
      }

      if (*(v53 + 404) >= *(v58 + 404))
      {
        break;
      }

LABEL_80:
      v20 -= 8;
      *(a1 + v57 + 16) = v58;
      v57 -= 8;
      if (v57 == -16)
      {
        v20 = a1;
        goto LABEL_72;
      }
    }

    v20 = a1 + v57 + 16;
LABEL_72:
    *v20 = v53;
    if (++v52 != 8)
    {
LABEL_73:
      v20 = v50;
      v51 += 8;
      if (++v50 == a2)
      {
        return 1;
      }

      continue;
    }

    return v50 + 1 == a2;
  }
}

uint64_t sub_39E7EC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (*(a1 + 96) != 1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    while (*v1 <= 0xFFFFFFFEFFFFFFFFLL && *v1 != 0)
    {
      if (++v1 == v2)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  if ((*(a1 + 40) & 1) == 0 && (*(a1 + 41) & 1) == 0 && *(a1 + 42) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  for (i = *(a1 + 56); v4 != i; v4 += 4)
  {
    v6 = !*v4 || v4[1] == -1;
    v7 = v6 || v4[2] == 0;
    if (v7 || v4[3] == -1)
    {
      return 0;
    }
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  result = 1;
  if (v8 != v9)
  {
    while (1)
    {
      v11 = !*v8 || v8[1] == -1;
      v12 = v11 || v8[2] == 0;
      if (v12 || v8[3] == -1)
      {
        break;
      }

      v8 += 4;
      if (v8 == v9)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_39E8DC(uint64_t a1)
{
  if (*a1 == -1 || *(a1 + 400) > 1u)
  {
    return 0;
  }

  if (*(a1 + 404) == 0x7FFFFFFF)
  {
    return 0;
  }

  v2 = *(a1 + 408);
  v3.i64[0] = 0x8000000080000000;
  v3.i32[2] = 0x80000000;
  v3.i32[3] = *(a1 + 404);
  v2.i32[2] = *(a1 + 416);
  v2.i32[3] = *(a1 + 408);
  v4 = vmovn_s32(vmvnq_s8(vceqq_s32(v3, v2)));
  v4.i16[3] = vmovn_s32(vcgeq_s32(v2, v3)).i16[3];
  if ((vminv_u16(v4) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 424);
  v7 = *(a1 + 432);
  if (v6 == v7)
  {
    return 0;
  }

  do
  {
    result = sub_39E7EC(v6);
    if (!result)
    {
      break;
    }

    v6 += 104;
  }

  while (v6 != v7);
  return result;
}

uint64_t sub_39E9A0(uint64_t a1)
{
  v2 = *(a1 + 23);
  v3 = v2;
  v4 = *(a1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v5 == 7)
  {
    if ((v2 & 0x80u) == 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    v7 = *v6;
    v8 = __toupper(85);
    if (v8 == __toupper(v7))
    {
      v9 = v6[1];
      v10 = __toupper(78);
      if (v10 == __toupper(v9))
      {
        v11 = v6[2];
        v12 = __toupper(75);
        if (v12 == __toupper(v11))
        {
          v13 = v6[3];
          v14 = __toupper(78);
          if (v14 == __toupper(v13))
          {
            v15 = v6[4];
            v16 = __toupper(79);
            if (v16 == __toupper(v15))
            {
              v17 = v6[5];
              v18 = __toupper(87);
              if (v18 == __toupper(v17))
              {
                v19 = v6[6];
                v20 = __toupper(78);
                if (v20 == __toupper(v19))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }

    v2 = *(a1 + 23);
    v4 = *(a1 + 8);
    v3 = *(a1 + 23);
  }

  if (v3 >= 0)
  {
    v22 = v2;
  }

  else
  {
    v22 = v4;
  }

  if (v22 == 9)
  {
    if (v3 >= 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = *a1;
    }

    v24 = *v23;
    v25 = __toupper(67);
    if (v25 == __toupper(v24))
    {
      v26 = v23[1];
      v27 = __toupper(79);
      if (v27 == __toupper(v26))
      {
        v28 = v23[2];
        v29 = __toupper(85);
        if (v29 == __toupper(v28))
        {
          v30 = v23[3];
          v31 = __toupper(78);
          if (v31 == __toupper(v30))
          {
            v32 = v23[4];
            v33 = __toupper(84);
            if (v33 == __toupper(v32))
            {
              v34 = v23[5];
              v35 = __toupper(68);
              if (v35 == __toupper(v34))
              {
                v36 = v23[6];
                v37 = __toupper(79);
                if (v37 == __toupper(v36))
                {
                  v38 = v23[7];
                  v39 = __toupper(87);
                  if (v39 == __toupper(v38))
                  {
                    v40 = v23[8];
                    v41 = __toupper(78);
                    if (v41 == __toupper(v40))
                    {
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v2 = *(a1 + 23);
    v4 = *(a1 + 8);
    v3 = *(a1 + 23);
  }

  if (v3 >= 0)
  {
    v42 = v2;
  }

  else
  {
    v42 = v4;
  }

  if (v42 == 5)
  {
    if (v3 >= 0)
    {
      v43 = a1;
    }

    else
    {
      v43 = *a1;
    }

    v44 = *v43;
    v45 = __toupper(83);
    if (v45 == __toupper(v44))
    {
      v46 = v43[1];
      v47 = __toupper(84);
      if (v47 == __toupper(v46))
      {
        v48 = v43[2];
        v49 = __toupper(65);
        if (v49 == __toupper(v48))
        {
          v50 = v43[3];
          v51 = __toupper(77);
          if (v51 == __toupper(v50))
          {
            v52 = v43[4];
            v53 = __toupper(80);
            if (v53 == __toupper(v52))
            {
              return 2;
            }
          }
        }
      }
    }

    v2 = *(a1 + 23);
    v4 = *(a1 + 8);
    v3 = *(a1 + 23);
  }

  if (v3 >= 0)
  {
    v54 = v2;
  }

  else
  {
    v54 = v4;
  }

  if (v54 == 10)
  {
    if (v3 >= 0)
    {
      v55 = a1;
    }

    else
    {
      v55 = *a1;
    }

    v56 = *v55;
    v57 = __toupper(83);
    if (v57 == __toupper(v56))
    {
      v58 = v55[1];
      v59 = __toupper(84);
      if (v59 == __toupper(v58))
      {
        v60 = v55[2];
        v61 = __toupper(65);
        if (v61 == __toupper(v60))
        {
          v62 = v55[3];
          v63 = __toupper(77);
          if (v63 == __toupper(v62))
          {
            v64 = v55[4];
            v65 = __toupper(80);
            if (v65 == __toupper(v64))
            {
              v66 = v55[5];
              v67 = __toupper(95);
              if (v67 == __toupper(v66))
              {
                v68 = v55[6];
                v69 = __toupper(76);
                if (v69 == __toupper(v68))
                {
                  v70 = v55[7];
                  v71 = __toupper(73);
                  if (v71 == __toupper(v70))
                  {
                    v72 = v55[8];
                    v73 = __toupper(83);
                    if (v73 == __toupper(v72))
                    {
                      v74 = v55[9];
                      v75 = __toupper(84);
                      if (v75 == __toupper(v74))
                      {
                        return 3;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v2 = *(a1 + 23);
    v4 = *(a1 + 8);
    v3 = *(a1 + 23);
  }

  if (v3 >= 0)
  {
    v76 = v2;
  }

  else
  {
    v76 = v4;
  }

  if (v76 == 15)
  {
    if (v3 >= 0)
    {
      v77 = a1;
    }

    else
    {
      v77 = *a1;
    }

    v78 = *v77;
    v79 = __toupper(79);
    if (v79 == __toupper(v78))
    {
      v80 = v77[1];
      v81 = __toupper(80);
      if (v81 == __toupper(v80))
      {
        v82 = v77[2];
        v83 = __toupper(69);
        if (v83 == __toupper(v82))
        {
          v84 = v77[3];
          v85 = __toupper(82);
          if (v85 == __toupper(v84))
          {
            v86 = v77[4];
            v87 = __toupper(65);
            if (v87 == __toupper(v86))
            {
              v88 = v77[5];
              v89 = __toupper(84);
              if (v89 == __toupper(v88))
              {
                v90 = v77[6];
                v91 = __toupper(73);
                if (v91 == __toupper(v90))
                {
                  v92 = v77[7];
                  v93 = __toupper(78);
                  if (v93 == __toupper(v92))
                  {
                    v94 = v77[8];
                    v95 = __toupper(71);
                    if (v95 == __toupper(v94))
                    {
                      v96 = v77[9];
                      v97 = __toupper(95);
                      if (v97 == __toupper(v96))
                      {
                        v98 = v77[10];
                        v99 = __toupper(72);
                        if (v99 == __toupper(v98))
                        {
                          v100 = v77[11];
                          v101 = __toupper(79);
                          if (v101 == __toupper(v100))
                          {
                            v102 = v77[12];
                            v103 = __toupper(85);
                            if (v103 == __toupper(v102))
                            {
                              v104 = v77[13];
                              v105 = __toupper(82);
                              if (v105 == __toupper(v104))
                              {
                                v106 = v77[14];
                                v107 = __toupper(83);
                                if (v107 == __toupper(v106))
                                {
                                  return 5;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v2 = *(a1 + 23);
    v4 = *(a1 + 8);
    v3 = *(a1 + 23);
  }

  if (v3 < 0)
  {
    v2 = v4;
  }

  if (v2 != 6 || (v3 >= 0 ? (v108 = a1) : (v108 = *a1), (v109 = *v108, v110 = __toupper(72), v110 != __toupper(v109)) || (v111 = v108[1], v112 = __toupper(73), v112 != __toupper(v111)) || (v113 = v108[2], v114 = __toupper(68), v114 != __toupper(v113)) || (v115 = v108[3], v116 = __toupper(68), v116 != __toupper(v115)) || (v117 = v108[4], v118 = __toupper(69), v118 != __toupper(v117)) || (v119 = v108[5], v120 = __toupper(78), v120 != __toupper(v119))))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    v122 = std::string::append(&v127, " provided", 0xAuLL);
    v123 = *&v122->__r_.__value_.__l.__data_;
    v129 = v122->__r_.__value_.__r.__words[2];
    v128 = v123;
    v122->__r_.__value_.__l.__size_ = 0;
    v122->__r_.__value_.__r.__words[2] = 0;
    v122->__r_.__value_.__r.__words[0] = 0;
    if (v129 >= 0)
    {
      v124 = &v128;
    }

    else
    {
      v124 = v128;
    }

    if (v129 >= 0)
    {
      v125 = HIBYTE(v129);
    }

    else
    {
      v125 = *(&v128 + 1);
    }

    v126 = sub_2D390(exception, v124, v125);
  }

  return 4;
}

void sub_39F260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_39F2D0(uint64_t a1)
{
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  *a1 = std::chrono::system_clock::to_time_t(&__t);
  *(a1 + 4) = 0x8000000080000000;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  return a1;
}

uint64_t sub_39F328(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = 0x7FFFFFFFLL;
  if (v2 != 0x7FFFFFFF)
  {
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    return 10 * (std::chrono::system_clock::to_time_t(&__t) - *(a1 + 8));
  }

  return result;
}

uint64_t sub_39F380(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 6);
  if (v3 == 0x7FFFFFFF || v3 < v4)
  {
    *(a1 + 8) = v4;
  }

  v6 = *(a2 + 4);
  v13 = a2[1];
  v14 = v6;
  v7 = sub_39FC80((a1 + 16), &v13);
  if (v8)
  {
    return 1;
  }

  if (*(v7 + 14) < *(a2 + 6))
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    *(v7 + 32) = *(a2 + 16);
    *(v7 + 2) = v9;
    *(v7 + 3) = v10;
    if (v7 + 4 != a2)
    {
      v11 = v7;
      sub_39F510(v7 + 9, a2[5], a2[6], 0xCCCCCCCCCCCCCCCDLL * ((a2[6] - a2[5]) >> 2));
      sub_39F6A4(v11 + 12, a2[8], a2[9], 0x8E38E38E38E38E39 * ((a2[9] - a2[8]) >> 3));
    }

    return 1;
  }

  return 0;
}

uint64_t *sub_39F47C(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v9 = a2;
  v10 = a3;
  result = sub_3A045C((a1 + 16), &v9);
  if (result)
  {
    if ((a4 & 1) == 0)
    {
      v7 = sub_3A045C((a1 + 16), &v9);
      if (!v7)
      {
        goto LABEL_9;
      }

      if (*(v7 + 65))
      {
        return 0;
      }
    }

    v8 = sub_3A045C((a1 + 16), &v9);
    if (v8)
    {
      return v8 + 4;
    }

LABEL_9:
    sub_49EC("unordered_map::at: key not found");
  }

  return result;
}

char *sub_39F510(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 2) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 1);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 1);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 1);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_39F6A4(void **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 3) < a4)
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
          v12 = *(v10 - 3);
          if (v12)
          {
            v13 = *(v10 - 2);
            v14 = *(v10 - 3);
            if (v13 != v12)
            {
              do
              {
                if (*(v13 - 1) < 0)
                {
                  operator delete(*(v13 - 24));
                }

                v13 -= 32;
              }

              while (v13 != v12);
              v14 = *(v10 - 3);
            }

            *(v10 - 2) = v12;
            operator delete(v14);
          }

          if (*(v10 - 41) < 0)
          {
            operator delete(*(v10 - 8));
          }

          v10 -= 72;
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

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v37 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v38 = 2 * v37;
      if (2 * v37 <= a4)
      {
        v38 = a4;
      }

      if (v37 >= 0x1C71C71C71C71C7)
      {
        v39 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v39 = v38;
      }

      if (v39 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0x8E38E38E38E38E39 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v27 = 0;
      do
      {
        while (1)
        {
          v30 = &v8[v27];
          v31 = &a2[v27];
          v32 = &a2[v27 + 8];
          *&v8[v27] = *&a2[v27];
          v33 = &v8[v27 + 8];
          if (a2 != v8)
          {
            break;
          }

          *(v30 + 2) = *(v31 + 2);
          v27 += 72;
          if (&a2[v27] == a3)
          {
            goto LABEL_63;
          }
        }

        v34 = v30[31];
        v35 = v31[31];
        if (v34 < 0)
        {
          if (v35 >= 0)
          {
            v28 = &a2[v27 + 8];
          }

          else
          {
            v28 = *v32;
          }

          if (v35 >= 0)
          {
            v29 = v31[31];
          }

          else
          {
            v29 = *&a2[v27 + 16];
          }

          sub_13B38(v33, v28, v29);
        }

        else if (v31[31] < 0)
        {
          sub_13A68(v33, *v32, *&a2[v27 + 16]);
        }

        else
        {
          v36 = *v32;
          *&v8[v27 + 24] = *&a2[v27 + 24];
          *v33 = v36;
        }

        *&v8[v27 + 32] = *&a2[v27 + 32];
        sub_398424(&v8[v27 + 48], *&a2[v27 + 48], *&a2[v27 + 56], (*&a2[v27 + 56] - *&a2[v27 + 48]) >> 5);
        v27 += 72;
      }

      while (&a2[v27] != a3);
LABEL_63:
      v15 = a1[1];
      v8 += v27;
    }

    while (v15 != v8)
    {
      v40 = *(v15 - 24);
      if (v40)
      {
        v41 = *(v15 - 16);
        v42 = *(v15 - 24);
        if (v41 != v40)
        {
          do
          {
            if (*(v41 - 1) < 0)
            {
              operator delete(*(v41 - 24));
            }

            v41 -= 32;
          }

          while (v41 != v40);
          v42 = *(v15 - 24);
        }

        *(v15 - 16) = v40;
        operator delete(v42);
      }

      if (*(v15 - 41) < 0)
      {
        operator delete(*(v15 - 64));
      }

      v15 -= 72;
    }

    a1[1] = v8;
  }

  else
  {
    if (v15 != v8)
    {
      v17 = 0;
      do
      {
        while (1)
        {
          v20 = &v8[v17];
          v21 = &a2[v17];
          v22 = &a2[v17 + 8];
          *&v8[v17] = *&a2[v17];
          v23 = &v8[v17 + 8];
          if (a2 != v8)
          {
            break;
          }

          *(v20 + 2) = *(v21 + 2);
          v17 += 72;
          if (v16 == v17)
          {
            goto LABEL_61;
          }
        }

        v24 = v20[31];
        v25 = v21[31];
        if (v24 < 0)
        {
          if (v25 >= 0)
          {
            v18 = &a2[v17 + 8];
          }

          else
          {
            v18 = *v22;
          }

          if (v25 >= 0)
          {
            v19 = v21[31];
          }

          else
          {
            v19 = *&a2[v17 + 16];
          }

          sub_13B38(v23, v18, v19);
        }

        else if (v21[31] < 0)
        {
          sub_13A68(v23, *v22, *&a2[v17 + 16]);
        }

        else
        {
          v26 = *v22;
          *&v8[v17 + 24] = *&a2[v17 + 24];
          *v23 = v26;
        }

        *&v8[v17 + 32] = *&a2[v17 + 32];
        sub_398424(&v8[v17 + 48], *&a2[v17 + 48], *&a2[v17 + 56], (*&a2[v17 + 56] - *&a2[v17 + 48]) >> 5);
        v17 += 72;
      }

      while (v16 != v17);
LABEL_61:
      v15 = a1[1];
    }

    a1[1] = sub_39FAB8(a1, &a2[v16], a3, v15);
  }
}

uint64_t sub_39FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 8), *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *(v4 + 8) = v8;
      }

      v9 = *(v6 + 24);
      *(v4 + 48) = 0;
      *(v4 + 32) = v9;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      sub_3981E4(v4 + 48, *(v6 + 5), *(v6 + 6), (*(v6 + 6) - *(v6 + 5)) >> 5);
      v4 = v11 + 72;
      v11 += 72;
      v6 = (v6 + 72);
    }

    while (v7 + 72 != a3);
  }

  return v4;
}

void sub_39FBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_39FBCC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_39FBCC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        v6 = *(v3 - 16);
        v7 = *(v3 - 24);
        if (v6 != v5)
        {
          do
          {
            if (*(v6 - 1) < 0)
            {
              operator delete(*(v6 - 24));
            }

            v6 -= 32;
          }

          while (v6 != v5);
          v7 = *(v3 - 24);
        }

        *(v3 - 16) = v5;
        operator delete(v7);
      }

      if (*(v3 - 41) < 0)
      {
        operator delete(*(v3 - 64));
      }

      v3 -= 72;
    }
  }

  return a1;
}

uint64_t *sub_39FC80(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = ((v4 ^ (v4 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v6 = *(a2 + 2);
  v7 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_25;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (result = *v11) == 0)
  {
LABEL_25:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = result[1];
      if (v13 == v7)
      {
        if (*(result + 4) == v2 && *(result + 20) == __PAIR64__(v6, HIDWORD(v2)))
        {
          return result;
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_25;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v14 = result[1];
    if (v14 == v7)
    {
      break;
    }

    if (v14 >= *&v8)
    {
      v14 %= *&v8;
    }

    if (v14 != v10)
    {
      goto LABEL_25;
    }

LABEL_18:
    result = *result;
    if (!result)
    {
      goto LABEL_25;
    }
  }

  if (*(result + 4) != v2 || *(result + 20) != __PAIR64__(v6, HIDWORD(v2)))
  {
    goto LABEL_18;
  }

  return result;
}

void sub_3A0074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3A009C(va);
  _Unwind_Resume(a1);
}

void sub_3A0088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3A009C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3A009C(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_3A036C(v1 + 2);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_3A00E8(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(result + 32) = *(a2 + 16);
  *(result + 40) = 0;
  *result = v2;
  *(result + 16) = v3;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v5 = *(a2 + 5);
  v4 = *(a2 + 6);
  if (v4 != v5)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 2) < 0xCCCCCCCCCCCCCCDLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v7 = *(a2 + 8);
  v6 = *(a2 + 9);
  if (v6 != v7)
  {
    if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3A024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 72) = v10;
  sub_3A0284(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 48) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_3A0284(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          v7 = *(v4 - 2);
          v8 = *(v4 - 3);
          if (v7 != v6)
          {
            do
            {
              if (*(v7 - 1) < 0)
              {
                operator delete(*(v7 - 24));
              }

              v7 -= 32;
            }

            while (v7 != v6);
            v8 = *(v4 - 3);
          }

          *(v4 - 2) = v6;
          operator delete(v8);
        }

        if (*(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
        }

        v4 -= 72;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_3A036C(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          v6 = *(v3 - 16);
          v7 = *(v3 - 24);
          if (v6 != v5)
          {
            do
            {
              if (*(v6 - 1) < 0)
              {
                operator delete(*(v6 - 24));
              }

              v6 -= 32;
            }

            while (v6 != v5);
            v7 = *(v3 - 24);
          }

          *(v3 - 16) = v5;
          operator delete(v7);
        }

        if (*(v3 - 41) < 0)
        {
          operator delete(*(v3 - 64));
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = a1[10];
    }

    a1[11] = v2;
    operator delete(v4);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;

    operator delete(v8);
  }
}

uint64_t *sub_3A045C(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = ((v5 ^ (v5 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v7 = *(a2 + 2);
  v8 = (v7 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v9 = vcnt_s8(v2);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v8;
    if (v8 >= *&v2)
    {
      v10 = v8 % *&v2;
    }
  }

  else
  {
    v10 = v8 & (*&v2 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  result = *v11;
  if (*v11)
  {
    if (v9.u32[0] < 2uLL)
    {
      v13 = *&v2 - 1;
      while (1)
      {
        v14 = result[1];
        if (v8 == v14)
        {
          if (*(result + 4) == v3 && *(result + 20) == __PAIR64__(v7, HIDWORD(v3)))
          {
            return result;
          }
        }

        else if ((v14 & v13) != v10)
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
      v15 = result[1];
      if (v8 == v15)
      {
        if (*(result + 4) == v3 && *(result + 20) == __PAIR64__(v7, HIDWORD(v3)))
        {
          return result;
        }
      }

      else
      {
        if (v15 >= *&v2)
        {
          v15 %= *&v2;
        }

        if (v15 != v10)
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

void sub_3A05E0()
{
  v0 = __chkstk_darwin();
  sub_7E9A4(v24);
  v2 = *v0;
  v1 = v0[1];
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = 0;
  v19[0] = v2;
  v19[1] = v1;
  do
  {
    v4 = &v19[v3];
    *(v4 + 4) = 0;
    *(v4 + 10) = 0;
    v4[3] = 0;
    v4[6] = 0;
    v3 += 6;
  }

  while (v3 != 480);
  v20 = 0u;
  v5 = *v0;
  v6 = v0[1];
  v21 = *v0;
  v22 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *v0;
  }

  if (v5)
  {
    LOBYTE(v5) = sub_2D5658(v5);
  }

  v23 = v5;
  sub_2C795C(&v18, v0);
  v8 = *v0;
  v7 = v0[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  v13[0] = v8;
  v13[1] = v7;
  do
  {
    v10 = &v13[v9];
    *(v10 + 4) = 0;
    *(v10 + 10) = 0;
    v10[3] = 0;
    v10[6] = 0;
    v9 += 6;
  }

  while (v9 != 480);
  v14 = 0u;
  v11 = *v0;
  v12 = v0[1];
  v15 = *v0;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v11 = *v0;
  }

  if (v11)
  {
    LOBYTE(v11) = sub_2D5658(v11);
  }

  v17 = v11;
  operator new();
}

void sub_3A0D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_1F1A8(a11);
  sub_3A0ED4(&a52);
  sub_1F1A8(&STACK[0x1070]);
  sub_3A0ED4(&STACK[0x1088]);
  _Unwind_Resume(a1);
}

void *sub_3A0E00(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          v6 = *(v3 - 16);
          v7 = *(v3 - 24);
          if (v6 != v5)
          {
            do
            {
              if (*(v6 - 1) < 0)
              {
                operator delete(*(v6 - 24));
              }

              v6 -= 32;
            }

            while (v6 != v5);
            v7 = *(v3 - 24);
          }

          *(v3 - 16) = v5;
          operator delete(v7);
        }

        if (*(v3 - 41) < 0)
        {
          operator delete(*(v3 - 64));
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v8 = a1[5];
  if (v8)
  {
    a1[6] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_3A0ED4(uint64_t result)
{
  v1 = *(result + 3880);
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

void sub_3A0FBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3A1010(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_3A036C(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_3A108C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 80);
  v135 = -1;
  LODWORD(v136) = 0x7FFFFFFF;
  v8 = sub_2C7D8C(a1, v7, &v135);
  v9 = v8;
  if (v8 > 0xFFFFFFFEFFFFFFFFLL || v8 == 0)
  {
    goto LABEL_160;
  }

  v11 = *(a3 + 72);
  if (!v11)
  {
    v11 = &off_2779AC8;
  }

  LODWORD(v135) = (*(v11 + 13) << 16) | (*(v11 + 14) << 24) | *(v11 + 24);
  v12 = sub_3A2090(a2, v8, &v135);
  if (v12 == -1)
  {
    goto LABEL_160;
  }

  v13 = v12;
  v14 = sub_3A25A8(a2, v9, 0, "trip");
  v15 = (v14 - *v14);
  if (*v15 >= 0x13u)
  {
    v16 = v15[9];
    if (v16)
    {
      if (*(v14 + v16 + *(v14 + v16)))
      {
        if (!sub_7E7E4(1u))
        {
LABEL_160:
          *a4 = -1;
          *(a4 + 8) = xmmword_2291330;
          *(a4 + 24) = 0x8000000080000000;
          *(a4 + 32) = 0;
          *(a4 + 40) = 0u;
          *(a4 + 56) = 0u;
          *(a4 + 72) = 0u;
          return;
        }

        sub_19594F8(&v135);
        sub_4A5C(&v135, "Trip update for muid ", 21);
        v17 = std::ostream::operator<<();
        sub_4A5C(v17, " refers to a frequency (unscheduled) trip; ignoring it", 54);
        if ((v144 & 0x10) != 0)
        {
          v126 = v143;
          if (v143 < v139[1])
          {
            v143 = v139[1];
            v126 = v139[1];
          }

          v127 = v139;
        }

        else
        {
          if ((v144 & 8) == 0)
          {
            v18 = 0;
            HIBYTE(v146) = 0;
LABEL_155:
            *(&__dst + v18) = 0;
            sub_7E854(&__dst, 1u);
            if (SHIBYTE(v146) < 0)
            {
              operator delete(__dst);
            }

            if (v142 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v136 + 1);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_160;
          }

          v127 = &v137;
          v126 = *(&v138 + 1);
        }

        v128 = *v127;
        v18 = v126 - *v127;
        if (v18 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v18 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v146) = v126 - *v127;
        if (v18)
        {
          memmove(&__dst, v128, v18);
        }

        goto LABEL_155;
      }
    }
  }

  *(a4 + 20) = 0x8000000080000000;
  *(a4 + 28) = 0x7FFFFFFF;
  *(a4 + 40) = 0u;
  v19 = (a4 + 40);
  *(a4 + 32) = 0;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = v13;
  v131 = a4;
  v20 = sub_3A231C(a2, v9, 0);
  v21 = &v20[-*v20];
  if (*v21 < 5u)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v21 + 2);
    if (v22)
    {
      v22 += &v20[*&v20[v22]];
    }
  }

  v134 = (v9 >> 30) & 0x3FFFFFFFCLL;
  v23 = (v22 + v134 + 4 + *(v22 + v134 + 4));
  v24 = (v23 - *v23);
  if (*v24 >= 0xBu && (v25 = v24[5]) != 0)
  {
    v26 = 10 * *(v23 + v25);
  }

  else
  {
    v26 = -10;
  }

  *(a4 + 20) = v26;
  v27 = *(a3 + 88);
  if (v27 <= 0x1F3FFFFFC17)
  {
    if (v27 >= 0xFFFFFE0BFFFFFC19)
    {
      v28 = sub_3A2760(v27 / 1000);
    }

    else
    {
      v28 = 0x80000000;
    }
  }

  else
  {
    v28 = 2147483646;
  }

  *(a4 + 24) = v28;
  v29 = *(a3 + 96);
  if (v29 <= 0x1F3FFFFFC17)
  {
    if (v29 >= 0xFFFFFE0BFFFFFC19)
    {
      v30 = sub_3A2760(v29 / 1000);
    }

    else
    {
      v30 = 0x80000000;
    }
  }

  else
  {
    v30 = 2147483646;
  }

  *(a4 + 28) = v30;
  *(a4 + 32) = *(a3 + 104);
  *(a4 + 33) = *(a3 + 108);
  v31 = sub_3A25A8(a2, v9, 0, "trip");
  v32 = (v31 - *v31);
  if (*v32 >= 9u && (v33 = v32[4]) != 0)
  {
    v34 = *(v31 + v33);
    v35 = (a4 + 48);
    v36 = *(a4 + 40);
    v37 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 48) - v36) >> 2);
    if (v34 > v37)
    {
      sub_3A289C(a4 + 40, v34 - v37);
      goto LABEL_40;
    }
  }

  else
  {
    v34 = 0;
    v35 = (a4 + 48);
    v36 = *(a4 + 40);
    v37 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 48) - v36) >> 2);
  }

  if (v37 > v34)
  {
    *v35 = v36 + 20 * v34;
  }

LABEL_40:
  v38 = *(a3 + 40);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  v40 = *(a3 + 32);
  v132 = v35;
  v133 = (a4 + 40);
  if (v40)
  {
    v41 = &v39[v40];
    do
    {
      v42 = *v39;
      v43 = *(*v39 + 40);
      if (0xCCCCCCCCCCCCCCCDLL * ((*v35 - *v19) >> 2) <= v43)
      {
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&v135);
          sub_4A5C(&v135, "Trip update for muid ", 21);
          v58 = std::ostream::operator<<();
          sub_4A5C(v58, " with ", 6);
          v59 = std::ostream::operator<<();
          sub_4A5C(v59, " stops has a sequence number of ", 32);
          v60 = std::ostream::operator<<();
          sub_4A5C(v60, "; ignoring it", 13);
          if ((v144 & 0x10) != 0)
          {
            v66 = v143;
            v67 = v139;
            if (v143 < v139[1])
            {
              v143 = v139[1];
              v66 = v139[1];
              v67 = v139;
            }
          }

          else
          {
            if ((v144 & 8) == 0)
            {
              v61 = 0;
              HIBYTE(v146) = 0;
LABEL_78:
              *(&__dst + v61) = 0;
              sub_7E854(&__dst, 1u);
              a4 = v131;
              v35 = v132;
              if (SHIBYTE(v146) < 0)
              {
                operator delete(__dst);
              }

              v135 = v130;
              *(&v135 + *(v130 - 3)) = v129;
              if (v142 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v136 + 1);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_46;
            }

            v66 = *(&v138 + 1);
            v67 = &v137;
          }

          v68 = *v67;
          v61 = v66 - *v67;
          if (v61 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v61 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v146) = v66 - *v67;
          if (v61)
          {
            memmove(&__dst, v68, v61);
          }

          v19 = v133;
          goto LABEL_78;
        }
      }

      else
      {
        v44 = *(v42 + 16);
        if (v44)
        {
          v45 = *(v42 + 24);
          v46 = (a4 + 20);
          v47 = *(v45 + 112);
          v48 = *(v45 + 116);
          v49 = *(v45 + 120);
          v50 = *v19 + 20 * v43;
          v51 = vld1_dup_f32(v46);
          v52 = vmla_s32(vneg_s32(v51), *(v45 + 124), 0xA0000000ALL);
          *v50 = *(v42 + 44);
          *(v50 + 4) = v43;
          *(v50 + 8) = v52;
          *(v50 + 16) = v47;
          *(v50 + 17) = v48;
          *(v50 + 18) = v49;
          v44 = *(v42 + 16);
        }

        if ((v44 & 2) != 0)
        {
          LODWORD(v135) = -1;
          v137 = 0;
          v136 = 0uLL;
          LOBYTE(v138) = 2;
          *(&v138 + 1) = sub_12331FC();
          v139[1] = 0;
          v140 = 0;
          v139[0] = 0;
          LODWORD(v135) = *(v42 + 40);
          v53 = *(v42 + 32);
          if (!v53)
          {
            v53 = &off_2779BB0;
          }

          v54 = v53[3];
          if (v54)
          {
            v55 = v54;
          }

          else
          {
            v55 = &off_2779950;
          }

          sub_394F30(v55, &__dst);
          v136 = __dst;
          v137 = v146;
          v138 = v147;
          *v139 = v148;
          v140 = v149;
          v56 = *(a4 + 72);
          if (v56 >= *(a4 + 80))
          {
            v62 = sub_3A2A50((a4 + 64), &v135);
            v63 = v139[0];
            *(a4 + 72) = v62;
            if (v63)
            {
              v64 = v139[1];
              v65 = v63;
              if (v139[1] != v63)
              {
                do
                {
                  if (*(v64 - 1) < 0)
                  {
                    operator delete(*(v64 - 3));
                  }

                  v64 -= 4;
                }

                while (v64 != v63);
                v65 = v139[0];
              }

              v139[1] = v63;
              operator delete(v65);
              v19 = v133;
            }
          }

          else
          {
            *v56 = v135;
            v57 = v136;
            *(v56 + 24) = v137;
            *(v56 + 8) = v57;
            v137 = 0;
            v136 = 0uLL;
            *(v56 + 32) = v138;
            *(v56 + 56) = 0;
            *(v56 + 64) = 0;
            *(v56 + 48) = 0;
            *(v56 + 48) = *v139;
            *(v56 + 64) = v140;
            v139[0] = 0;
            v139[1] = 0;
            v140 = 0;
            *(a4 + 72) = v56 + 72;
          }

          if (SHIBYTE(v137) < 0)
          {
            operator delete(v136);
          }
        }
      }

LABEL_46:
      ++v39;
    }

    while (v39 != v41);
  }

  v69 = *v35;
  v70 = *v19;
  if (*v35 != *v19)
  {
    v71 = a2;
    v72 = 0;
    v73 = 0;
    v74 = (v134 + 4);
    while (*(v70 + 20 * v72 + 4) != -1)
    {
LABEL_90:
      v72 = ++v73;
      if (0xCCCCCCCCCCCCCCCDLL * ((v69 - v70) >> 2) <= v73)
      {
        goto LABEL_141;
      }
    }

    v78 = sub_3A231C(v71, v9, 0);
    v79 = &v78[-*v78];
    v80 = *v79;
    if (v80 <= 4)
    {
      v84 = 0;
      v82 = (v74 + *v74);
      v85 = (v82 - *v82);
      if (*v85 < 0xDu)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v81 = *(v79 + 2);
      if (*(v79 + 2))
      {
        v81 += &v78[*&v78[v81]];
      }

      v82 = (v81 + v134 + 4 + *(v81 + v134 + 4));
      if (v80 >= 7 && (v83 = *(v79 + 3)) != 0)
      {
        v84 = &v78[v83 + *&v78[v83]];
        v85 = (v82 - *v82);
        if (*v85 < 0xDu)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v84 = 0;
        v85 = (v82 - *v82);
        if (*v85 < 0xDu)
        {
          goto LABEL_104;
        }
      }
    }

    v86 = v85[6];
    if (v86)
    {
      v87 = *(v82 + v86);
      goto LABEL_105;
    }

LABEL_104:
    v87 = -1;
LABEL_105:
    v88 = *(sub_3A2E6C(v84, v87 + v73) + 8);
    v89 = sub_3A231C(a2, v9, 0);
    v90 = &v89[-*v89];
    v91 = *v90;
    if (v91 <= 4)
    {
      v95 = 0;
      v93 = (v74 + *v74);
      v96 = (v93 - *v93);
      if (*v96 < 0xDu)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v92 = *(v90 + 2);
      if (*(v90 + 2))
      {
        v92 += &v89[*&v89[v92]];
      }

      v93 = (v92 + v134 + 4 + *(v92 + v134 + 4));
      if (v91 >= 7 && (v94 = *(v90 + 3)) != 0)
      {
        v95 = &v89[v94 + *&v89[v94]];
        v96 = (v93 - *v93);
        if (*v96 < 0xDu)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v95 = 0;
        v96 = (v93 - *v93);
        if (*v96 < 0xDu)
        {
          goto LABEL_117;
        }
      }
    }

    v97 = v96[6];
    if (v97)
    {
      v98 = *(v93 + v97);
LABEL_118:
      v99 = *(sub_3A2E6C(v95, v98 + v73) + 12);
      v100 = sub_3A231C(a2, v9, 0);
      v101 = &v100[-*v100];
      if (*v101 < 5u)
      {
        v102 = 0;
      }

      else
      {
        v102 = *(v101 + 2);
        if (*(v101 + 2))
        {
          v102 += &v100[*&v100[v102]];
        }
      }

      v103 = (v102 + v134 + 4 + *(v102 + v134 + 4));
      v104 = (v103 - *v103);
      if (*v104 >= 0xDu && (v105 = v104[6]) != 0)
      {
        v106 = *(v103 + v105);
      }

      else
      {
        v106 = -1;
      }

      v107 = v100[24 * v106 + 20 + 24 * v73 + *(v101 + 3) + *&v100[*(v101 + 3)]];
      v108 = sub_3A231C(a2, v9, 0);
      v109 = &v108[-*v108];
      if (*v109 < 5u)
      {
        v110 = 0;
      }

      else
      {
        v110 = *(v109 + 2);
        if (*(v109 + 2))
        {
          v110 += &v108[*&v108[v110]];
        }
      }

      v111 = (v110 + v134 + 4 + *(v110 + v134 + 4));
      v112 = (v111 - *v111);
      if (*v112 >= 0xDu && (v113 = v112[6]) != 0)
      {
        v114 = *(v111 + v113);
      }

      else
      {
        v114 = -1;
      }

      v115 = v108[24 * v114 + 21 + 24 * v73 + *(v109 + 3) + *&v108[*(v109 + 3)]];
      v116 = sub_3A231C(a2, v9, 0);
      v117 = &v116[-*v116];
      if (*v117 < 5u)
      {
        v118 = 0;
      }

      else
      {
        v118 = *(v117 + 2);
        if (*(v117 + 2))
        {
          v118 += &v116[*&v116[v118]];
        }
      }

      v119 = (v118 + v134 + 4 + *(v118 + v134 + 4));
      v120 = (v119 - *v119);
      if (*v120 >= 0xDu && (v121 = v120[6]) != 0)
      {
        v75 = *(v119 + v121);
      }

      else
      {
        v75 = -1;
      }

      v76 = v116[24 * v75 + 22 + 24 * v73 + *(v117 + 3) + *&v116[*(v117 + 3)]] != 0;
      v77 = *v133 + 20 * v72;
      *v77 = -1;
      *(v77 + 4) = v73;
      *(v77 + 8) = 10 * v88;
      *(v77 + 12) = 10 * v99;
      *(v77 + 16) = v107;
      *(v77 + 17) = v115;
      *(v77 + 18) = v76;
      v69 = *v132;
      v70 = *v133;
      v71 = a2;
      goto LABEL_90;
    }

LABEL_117:
    v98 = -1;
    goto LABEL_118;
  }

LABEL_141:
  v122 = *(v131 + 64);
  v123 = *(v131 + 72);
  v124 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v123 - v122) >> 3));
  if (v123 == v122)
  {
    v125 = 0;
  }

  else
  {
    v125 = v124;
  }

  sub_3A2FBC(v122, v123, v125, 1);
}

void sub_3A1F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 145) < 0)
  {
    operator delete(*(v9 - 168));
    sub_1959728(va);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_3A1FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1959728(va);
  sub_3A0E00(a6);
  _Unwind_Resume(a1);
}

uint64_t sub_3A2090(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  v5 = sub_3A231C(a1, a2, 0);
  v6 = &v5[-*v5];
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v8 += &v5[*&v5[v8]];
    }
  }

  v9 = (v8 + 4 * HIDWORD(a2) + 4 + *(v8 + 4 * HIDWORD(a2) + 4));
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 < 0x15)
  {
    return 0xFFFFFFFFLL;
  }

  if (v10[10])
  {
    v12 = *(v9 + v10[10]);
    if (v11 >= 0x17)
    {
      goto LABEL_8;
    }

    return 0xFFFFFFFFLL;
  }

  v12 = -1;
  if (v11 < 0x17)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_8:
  v13 = v10[11];
  if (v10[11])
  {
    LODWORD(v13) = *(v9 + v13);
  }

  v14 = v13 + v12;
  v15 = v12 >= v14;
  if (v12 > v14)
  {
    v14 = v12;
  }

  if (v15)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = *a3;
  v17 = *(a3 + 2);
  v18 = *(a3 + 3);
  if (v7 <= 0xC)
  {
    while (*((8 * v12) | 4) != v16 || *(&dword_0 + ((8 * v12) | 4) + 2) != v17 || *(&dword_0 + ((8 * v12) | 4) + 3) != v18)
    {
      if (v14 == ++v12)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v19 = *(v6 + 6);
    if (v19)
    {
      v20 = &v5[v19 + 4 + *&v5[v19]];
      while (1)
      {
        v21 = (v20 + 8 * v12);
        if (*v21 == v16 && *(v21 + 2) == v17 && *(v21 + 3) == v18)
        {
          break;
        }

        if (v14 == ++v12)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      while (*((8 * v12) | 4) != v16 || *(&dword_0 + ((8 * v12) | 4) + 2) != v17 || *(&dword_0 + ((8 * v12) | 4) + 3) != v18)
      {
        if (v14 == ++v12)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  v22 = v10[10];
  if (v22)
  {
    return v12 - *(v9 + v22);
  }

  else
  {
    return v12 + 1;
  }
}

uint64_t sub_3A2284(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

char *sub_3A231C(uint64_t a1, unint64_t a2, int a3)
{
  result = sub_2C939C(a1, a2, a3);
  if (result)
  {
    v6 = HIDWORD(a2);
    v7 = &result[-*result];
    v8 = *v7;
    if (v8 >= 0x2B)
    {
      v9 = *(v7 + 21);
      if (*(v7 + 21))
      {
        v10 = &result[v9 + *&result[v9]];
        v11 = &v10[-*v10];
        if (*v11 >= 5u)
        {
          v12 = *(v11 + 2);
          if (v12)
          {
            if (*&v10[v12 + *&v10[v12]] > HIDWORD(a2))
            {
              goto LABEL_11;
            }
          }
        }
      }
    }

    if (a3 == 1)
    {
      return 0;
    }

    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = a2;
      v15 = exception;
      std::to_string(&v24, v14);
      sub_23E08("Failed to acquire trip in quad node ", &v24, &v25);
      sub_30F54(" and position ", &v25, &v26);
      std::to_string(&v23, v6);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v23;
      }

      else
      {
        v16 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v26, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v28 = v18->__r_.__value_.__r.__words[2];
      v27 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (v28 >= 0)
      {
        v20 = &v27;
      }

      else
      {
        v20 = v27;
      }

      if (v28 >= 0)
      {
        v21 = HIBYTE(v28);
      }

      else
      {
        v21 = *(&v27 + 1);
      }

      v22 = sub_2D390(v15, v20, v21);
    }

    if (v8 >= 0x2B && (LODWORD(v9) = *(v7 + 21), *(v7 + 21)))
    {
LABEL_11:
      result += v9 + *&result[v9];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_3A24C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
    if (a32 < 0)
    {
LABEL_7:
      operator delete(a27);
      if (a26 < 0)
      {
LABEL_10:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

LABEL_12:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_14:
        _Unwind_Resume(a1);
      }

LABEL_13:
      operator delete(a15);
      goto LABEL_14;
    }
  }

  else if (a32 < 0)
  {
    goto LABEL_7;
  }

  if (a26 < 0)
  {
    goto LABEL_10;
  }

  goto LABEL_12;
}

uint64_t sub_3A25A8(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v24 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = &v7[-*v7];
  if (*v8 < 0x2Bu)
  {
    goto LABEL_10;
  }

  v9 = *(v8 + 21);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = (v9 + v7 + *(v9 + v7));
  v11 = (v10 - *v10);
  if (*v11 < 5u)
  {
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v12 = v11[2];
  if (!v12)
  {
LABEL_10:
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v20 = v6;
      v21 = v5;
      v19[0] = sub_7FCF0(6u);
      v19[1] = v15;
      sub_2C956C("Failed to acquire entity ", &v24, " in quad node ", " at position ", " on layer ", v19, v22);
      if ((v23 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v17 = v23;
      }

      else
      {
        v17 = v22[1];
      }

      v18 = sub_2D390(exception, v16, v17);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  v9 = (v10 + v12 + *(v10 + v12));
  if (*v9 > v6)
  {
    return &v9[v6 + 1] + v9[v6 + 1];
  }

LABEL_7:
  if (a3 != 1)
  {
    goto LABEL_8;
  }

  return 0;
}

void sub_3A2730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3A2760(uint64_t result)
{
  if (result != result)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_3A281C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void sub_3A289C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 20 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *v3 = -1;
        *(v3 + 4) = -NAN;
        *(v3 + 12) = 0x7FFFFFFFLL;
        v3 += 20;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x666666666666666)
    {
      v8 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 20 * v5;
    v11 = 20 * v5 + 20 * a2;
    v12 = 20 * v5;
    do
    {
      *v12 = 0;
      *(v12 + 8) = 0;
      *v12 = -1;
      *(v12 + 4) = -NAN;
      *(v12 + 12) = 0x7FFFFFFFLL;
      v12 += 20;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v10 - v14;
    memcpy((v10 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_3A2A50(uint64_t *a1, uint64_t a2)
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

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 72 * v2;
  *v6 = *a2;
  __p = 0;
  v16 = 72 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v17 = 72 * v2 + 72;
  v18 = 0;
  sub_3A2C30(a1, &__p);
  v8 = a1[1];
  v9 = v16;
  while (1)
  {
    v10 = v17;
    if (v17 == v9)
    {
      break;
    }

    v17 -= 72;
    v11 = *(v10 - 24);
    if (v11)
    {
      v12 = *(v10 - 16);
      v13 = *(v10 - 24);
      if (v12 != v11)
      {
        do
        {
          if (*(v12 - 1) < 0)
          {
            operator delete(*(v12 - 24));
          }

          v12 -= 32;
        }

        while (v12 != v11);
        v13 = *(v10 - 24);
      }

      *(v10 - 16) = v11;
      operator delete(v13);
    }

    if (*(v10 - 41) < 0)
    {
      operator delete(*(v10 - 64));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_3A2C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3A2D88(va);
  _Unwind_Resume(a1);
}

void sub_3A2C30(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = *v7;
      v9 = *(v7 + 8);
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 8) = v9;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(v8 + 32) = *(v7 + 32);
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 48) = 0;
      *(v8 + 48) = *(v7 + 48);
      *(v8 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v7 += 72;
      v8 += 72;
    }

    while (v7 != v4);
    do
    {
      v10 = *(v5 + 48);
      if (v10)
      {
        v11 = *(v5 + 56);
        v12 = *(v5 + 48);
        if (v11 != v10)
        {
          do
          {
            if (*(v11 - 1) < 0)
            {
              operator delete(*(v11 - 24));
            }

            v11 -= 32;
          }

          while (v11 != v10);
          v12 = *(v5 + 48);
        }

        *(v5 + 56) = v10;
        operator delete(v12);
      }

      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 72;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

void **sub_3A2D88(void **a1)
{
  sub_3A2DBC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_3A2DBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }
}

uint64_t sub_3A2E6C(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[6 * a2 + 1];
}

void sub_3A2F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

double sub_3A2FBC(int *a1, int *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2 - 18;
  v193 = a2 - 54;
  v194 = a2 - 36;
  v8 = a1;
  v222 = a2;
  v196 = a2 - 18;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0x8E38E38E38E38E39 * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v87 = a1[18];
          v89 = *(a2 - 18);
          v85 = a2 - 18;
          v88 = v89;
          if (v87 >= *a1)
          {
            if (v88 >= v87)
            {
              return result;
            }

            *&result = sub_3A4B74(a1 + 18, v85).n128_u64[0];
            if (a1[18] >= *a1)
            {
              return result;
            }

            v84 = a1;
            v83 = a1 + 18;
          }

          else
          {
            if (v88 < v87)
            {
              goto LABEL_150;
            }

            *&result = sub_3A4B74(a1, a1 + 18).n128_u64[0];
            if (*v85 >= a1[18])
            {
              return result;
            }

            v84 = a1 + 18;
LABEL_151:
            v83 = v85;
          }

          goto LABEL_152;
        case 4:

          return sub_3A45C4(a1, a1 + 18, a1 + 36, v7);
        case 5:
          result = sub_3A45C4(a1, a1 + 18, a1 + 36, a1 + 54);
          v82 = *(a2 - 18);
          v81 = a2 - 18;
          if (v82 >= a1[54])
          {
            return result;
          }

          *&result = sub_3A4B74(a1 + 54, v81).n128_u64[0];
          if (a1[54] >= a1[36])
          {
            return result;
          }

          *&result = sub_3A4B74(a1 + 36, a1 + 54).n128_u64[0];
          if (a1[36] >= a1[18])
          {
            return result;
          }

          *&result = sub_3A4B74(a1 + 18, a1 + 36).n128_u64[0];
          if (a1[18] >= *a1)
          {
            return result;
          }

          v83 = a1 + 18;
          v84 = a1;
LABEL_152:

          *&result = sub_3A4B74(v84, v83).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v86 = *(a2 - 18);
        v85 = a2 - 18;
        if (v86 >= *a1)
        {
          return result;
        }

LABEL_150:
        v84 = a1;
        goto LABEL_151;
      }
    }

    if (v9 <= 1727)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return result;
      }

      v197 = v9;
      v110 = v11 >> 1;
      v111 = v11 >> 1;
      while (2)
      {
        v113 = v111;
        if (v110 >= v111)
        {
          v114 = (2 * v111) | 1;
          v115 = &a1[18 * v114];
          if (2 * v113 + 2 >= v10)
          {
            v118 = &a1[18 * v113];
            v119 = *v118;
            if (*v115 >= *v118)
            {
LABEL_210:
              v218 = v113;
              v203 = *(v118 + 1);
              *&v234[7] = *(v118 + 23);
              *v234 = *(v118 + 2);
              v200 = *(v118 + 31);
              *(v118 + 1) = 0;
              *(v118 + 2) = 0;
              *(v118 + 3) = 0;
              v228 = *(v118 + 2);
              v212 = *(v118 + 3);
              v206 = *(v118 + 8);
              *(v118 + 6) = 0;
              *(v118 + 7) = 0;
              *(v118 + 8) = 0;
              v120 = *v115;
              while (1)
              {
                v122 = v115;
                *v118 = v120;
                if (*(v118 + 31) < 0)
                {
                  operator delete(*(v118 + 1));
                }

                v123 = *(v122 + 2);
                *(v118 + 3) = *(v122 + 3);
                *(v118 + 2) = v123;
                *(v122 + 31) = 0;
                *(v122 + 8) = 0;
                v125 = (v118 + 12);
                v124 = *(v118 + 6);
                *(v118 + 2) = *(v122 + 2);
                if (v124)
                {
                  v126 = *(v118 + 7);
                  v127 = v124;
                  if (v126 != v124)
                  {
                    do
                    {
                      if (*(v126 - 1) < 0)
                      {
                        operator delete(*(v126 - 3));
                      }

                      v126 -= 4;
                    }

                    while (v126 != v124);
                    v127 = *v125;
                  }

                  *(v118 + 7) = v124;
                  operator delete(v127);
                  *v125 = 0;
                  *(v118 + 7) = 0;
                  *(v118 + 8) = 0;
                }

                v128 = (v122 + 12);
                *(v118 + 3) = *(v122 + 3);
                *(v118 + 8) = *(v122 + 8);
                *(v122 + 6) = 0;
                *(v122 + 7) = 0;
                *(v122 + 8) = 0;
                if (v110 < v114)
                {
                  break;
                }

                v115 = &a1[18 * ((2 * v114) | 1)];
                if (2 * v114 + 2 < v10)
                {
                  v120 = *v115;
                  v121 = v115[18];
                  if (*v115 <= v121)
                  {
                    v120 = v115[18];
                  }

                  if (*v115 >= v121)
                  {
                    v114 = (2 * v114) | 1;
                  }

                  else
                  {
                    v115 += 18;
                    v114 = 2 * v114 + 2;
                  }

                  v118 = v122;
                  if (v120 < v119)
                  {
                    break;
                  }
                }

                else
                {
                  v120 = *v115;
                  v114 = (2 * v114) | 1;
                  v118 = v122;
                  if (*v115 < v119)
                  {
                    break;
                  }
                }
              }

              *v122 = v119;
              if (*(v122 + 31) < 0)
              {
                operator delete(*(v122 + 1));
                v129 = *v128;
              }

              else
              {
                v129 = 0;
              }

              *(v122 + 1) = v203;
              *(v122 + 2) = *v234;
              *(v122 + 23) = *&v234[7];
              *(v122 + 31) = v200;
              *(v122 + 2) = v228;
              if (v129)
              {
                v130 = *(v122 + 7);
                v112 = v129;
                if (v130 != v129)
                {
                  do
                  {
                    if (*(v130 - 1) < 0)
                    {
                      operator delete(*(v130 - 3));
                    }

                    v130 -= 4;
                  }

                  while (v130 != v129);
                  v112 = *v128;
                }

                *(v122 + 7) = v129;
                operator delete(v112);
              }

              *(v122 + 3) = v212;
              *(v122 + 8) = v206;
              a2 = v222;
              v113 = v218;
            }
          }

          else
          {
            v116 = *v115;
            v117 = v115[18];
            if (*v115 <= v117)
            {
              v116 = v115[18];
            }

            if (*v115 < v117)
            {
              v115 += 18;
              v114 = 2 * v113 + 2;
            }

            v118 = &a1[18 * v113];
            v119 = *v118;
            if (v116 >= *v118)
            {
              goto LABEL_210;
            }
          }
        }

        v111 = v113 - 1;
        if (v113)
        {
          continue;
        }

        break;
      }

      v131 = 0x8E38E38E38E38E39 * (v197 >> 3);
      while (2)
      {
        v223 = a2;
        v134 = 0;
        v198 = *a1;
        v201 = *(a1 + 1);
        *&v237[7] = *(a1 + 23);
        *v237 = *(a1 + 2);
        v204 = *(a1 + 31);
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *(a1 + 3) = 0;
        v235 = *(a1 + 2);
        v219 = *(a1 + 6);
        v207 = *(a1 + 8);
        v213 = *(a1 + 7);
        *(a1 + 6) = 0;
        *(a1 + 7) = 0;
        v135 = a1;
        *(a1 + 8) = 0;
LABEL_248:
        v138 = &v135[18 * v134];
        v139 = v138 + 18;
        if (2 * v134 + 2 >= v131)
        {
          v134 = (2 * v134) | 1;
          *v135 = *v139;
          if (*(v135 + 31) < 0)
          {
            goto LABEL_257;
          }
        }

        else
        {
          v142 = v138[36];
          v141 = v138 + 36;
          v140 = v142;
          v143 = *(v141 - 18);
          v144 = v143 >= v142;
          if (v143 > v142)
          {
            v140 = *(v141 - 18);
          }

          if (v144)
          {
            v134 = (2 * v134) | 1;
          }

          else
          {
            v139 = v141;
            v134 = 2 * v134 + 2;
          }

          *v135 = v140;
          if (*(v135 + 31) < 0)
          {
LABEL_257:
            operator delete(*(v135 + 1));
          }
        }

        v145 = *(v139 + 2);
        *(v135 + 3) = *(v139 + 3);
        *(v135 + 2) = v145;
        *(v139 + 31) = 0;
        *(v139 + 8) = 0;
        v147 = (v135 + 12);
        v146 = *(v135 + 6);
        *(v135 + 2) = *(v139 + 2);
        if (v146)
        {
          v148 = *(v135 + 7);
          v136 = v146;
          if (v148 != v146)
          {
            do
            {
              if (*(v148 - 1) < 0)
              {
                operator delete(*(v148 - 3));
              }

              v148 -= 4;
            }

            while (v148 != v146);
            v136 = *v147;
          }

          *(v135 + 7) = v146;
          operator delete(v136);
          *v147 = 0;
          *(v135 + 7) = 0;
          *(v135 + 8) = 0;
        }

        v137 = (v139 + 12);
        *(v135 + 3) = *(v139 + 3);
        *(v135 + 8) = *(v139 + 8);
        *(v139 + 6) = 0;
        *(v139 + 7) = 0;
        *(v139 + 8) = 0;
        v135 = v139;
        if (v134 > ((v131 - 2) >> 1))
        {
          v149 = v223 - 18;
          if (v139 == v223 - 18)
          {
            *v139 = v198;
            if (*(v139 + 31) < 0)
            {
              operator delete(*(v139 + 1));
              v154 = *v137;
            }

            else
            {
              v154 = 0;
            }

            *(v139 + 1) = v201;
            *(v139 + 2) = *v237;
            *(v139 + 23) = *&v237[7];
            *(v139 + 31) = v204;
            result = *&v235;
            *(v139 + 2) = v235;
            if (v154)
            {
              v174 = *(v139 + 7);
              v132 = v154;
              if (v174 != v154)
              {
                do
                {
                  if (*(v174 - 1) < 0)
                  {
                    operator delete(*(v174 - 3));
                  }

                  v174 -= 4;
                }

                while (v174 != v154);
                v132 = *v137;
              }

              *(v139 + 7) = v154;
              operator delete(v132);
            }

            *(v139 + 6) = v219;
            *(v139 + 7) = v213;
            *(v139 + 8) = v207;
          }

          else
          {
            v195 = v223 - 18;
            *v139 = *(v223 - 18);
            if (*(v139 + 31) < 0)
            {
              operator delete(*(v139 + 1));
            }

            v150 = *(v223 - 4);
            *(v139 + 3) = *(v223 - 6);
            *(v139 + 2) = v150;
            *(v223 - 41) = 0;
            *(v223 - 64) = 0;
            *(v139 + 2) = *(v223 - 10);
            v151 = *v137;
            if (*v137)
            {
              v152 = *(v139 + 7);
              v153 = *v137;
              if (v152 != v151)
              {
                do
                {
                  if (*(v152 - 1) < 0)
                  {
                    operator delete(*(v152 - 3));
                  }

                  v152 -= 4;
                }

                while (v152 != v151);
                v153 = *v137;
              }

              *(v139 + 7) = v151;
              operator delete(v153);
              *v137 = 0;
              *(v139 + 7) = 0;
              *(v139 + 8) = 0;
            }

            v155 = 0;
            v156 = v223;
            v157 = (v223 - 6);
            *(v139 + 3) = *(v223 - 6);
            *(v139 + 8) = *(v223 - 1);
            *v157 = 0;
            v157[1] = 0;
            v157[2] = 0;
            *(v223 - 18) = v198;
            if (*(v223 - 41) < 0)
            {
              operator delete(*(v223 - 8));
              v155 = *v157;
            }

            *(v223 - 8) = v201;
            *(v223 - 49) = *&v237[7];
            *(v223 - 7) = *v237;
            *(v223 - 41) = v204;
            result = *&v235;
            *(v223 - 10) = v235;
            if (v155)
            {
              v158 = *(v223 - 2);
              v159 = v155;
              if (v158 != v155)
              {
                do
                {
                  if (*(v158 - 1) < 0)
                  {
                    operator delete(*(v158 - 3));
                  }

                  v158 -= 4;
                }

                while (v158 != v155);
                v159 = *v157;
              }

              v156 = v223;
              *(v223 - 2) = v155;
              operator delete(v159);
            }

            *(v156 - 3) = v219;
            *(v156 - 2) = v213;
            *(v156 - 1) = v207;
            v160 = (v139 + 18) - a1;
            v149 = v223 - 18;
            if (v160 >= 73)
            {
              v161 = (-2 - 0x71C71C71C71C71C7 * (v160 >> 3)) >> 1;
              v162 = &a1[18 * v161];
              v163 = *v139;
              if (*v162 < *v139)
              {
                v164 = *(v139 + 2);
                v214 = *(v139 + 1);
                *&v238[7] = *(v139 + 23);
                *(v139 + 1) = 0;
                *(v139 + 2) = 0;
                v224 = *(v139 + 3);
                v229 = *(v139 + 2);
                *v238 = v164;
                v208 = *(v139 + 31);
                *(v139 + 3) = 0;
                v220 = *(v139 + 8);
                *(v139 + 7) = 0;
                *(v139 + 8) = 0;
                *v137 = 0;
                v165 = *v162;
                do
                {
                  v166 = v162;
                  *v139 = v165;
                  if (*(v139 + 31) < 0)
                  {
                    operator delete(*(v139 + 1));
                  }

                  v167 = *(v166 + 2);
                  *(v139 + 3) = *(v166 + 3);
                  *(v139 + 2) = v167;
                  *(v166 + 31) = 0;
                  *(v166 + 8) = 0;
                  v168 = (v139 + 12);
                  v169 = *(v139 + 6);
                  *(v139 + 2) = *(v166 + 2);
                  if (v169)
                  {
                    v170 = *(v139 + 7);
                    v171 = v169;
                    if (v170 != v169)
                    {
                      do
                      {
                        if (*(v170 - 1) < 0)
                        {
                          operator delete(*(v170 - 3));
                        }

                        v170 -= 4;
                      }

                      while (v170 != v169);
                      v171 = *v168;
                    }

                    *(v139 + 7) = v169;
                    operator delete(v171);
                    *v168 = 0;
                    *(v139 + 7) = 0;
                    *(v139 + 8) = 0;
                  }

                  v172 = (v166 + 12);
                  *(v139 + 3) = *(v166 + 3);
                  *(v139 + 8) = *(v166 + 8);
                  *(v166 + 6) = 0;
                  *(v166 + 7) = 0;
                  *(v166 + 8) = 0;
                  if (!v161)
                  {
                    break;
                  }

                  v161 = (v161 - 1) >> 1;
                  v162 = &a1[18 * v161];
                  v165 = *v162;
                  v139 = v166;
                }

                while (*v162 < v163);
                *v166 = v163;
                if (*(v166 + 31) < 0)
                {
                  operator delete(*(v166 + 1));
                  v173 = *v172;
                }

                else
                {
                  v173 = 0;
                }

                v149 = v195;
                *(v166 + 1) = v214;
                *(v166 + 2) = *v238;
                *(v166 + 23) = *&v238[7];
                *(v166 + 31) = v208;
                *(v166 + 2) = v229;
                if (v173)
                {
                  v175 = *(v166 + 7);
                  v176 = v173;
                  if (v175 != v173)
                  {
                    do
                    {
                      if (*(v175 - 1) < 0)
                      {
                        operator delete(*(v175 - 3));
                      }

                      v175 -= 4;
                    }

                    while (v175 != v173);
                    v176 = *v172;
                  }

                  *(v166 + 7) = v173;
                  operator delete(v176);
                }

                result = *&v224;
                *(v166 + 3) = v224;
                *(v166 + 8) = v220;
              }
            }
          }

          a2 = v149;
          if (v131-- <= 2)
          {
            return result;
          }

          continue;
        }

        goto LABEL_248;
      }
    }

    v12 = v10 >> 1;
    v13 = &a1[18 * (v10 >> 1)];
    v14 = *v7;
    if (v9 >= 0x2401)
    {
      v15 = *v13;
      if (*v13 >= *a1)
      {
        if (v14 < v15)
        {
          sub_3A4B74(v13, v7);
          if (*v13 < *a1)
          {
            v16 = a1;
            v17 = v13;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = a1;
        if (v14 < v15)
        {
          goto LABEL_16;
        }

        sub_3A4B74(a1, v13);
        if (*v7 < *v13)
        {
          v16 = v13;
LABEL_16:
          v17 = v7;
LABEL_25:
          sub_3A4B74(v16, v17);
        }
      }

      v21 = &a1[18 * v12];
      v24 = *(v21 - 18);
      v23 = v21 - 18;
      v22 = v24;
      v25 = *v194;
      if (v24 >= a1[18])
      {
        if (v25 < v22)
        {
          sub_3A4B74(v23, v194);
          if (*v23 < a1[18])
          {
            v26 = a1 + 18;
            v27 = v23;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v26 = a1 + 18;
        if (v25 < v22)
        {
          goto LABEL_30;
        }

        sub_3A4B74(v26, v23);
        if (*v194 < *v23)
        {
          v26 = v23;
LABEL_30:
          v27 = v194;
LABEL_37:
          sub_3A4B74(v26, v27);
        }
      }

      v28 = &a1[18 * v12];
      v31 = v28[18];
      v30 = v28 + 18;
      v29 = v31;
      v32 = *v193;
      if (v31 >= a1[36])
      {
        if (v32 < v29)
        {
          sub_3A4B74(v30, v193);
          if (*v30 < a1[36])
          {
            v33 = a1 + 36;
            v34 = v30;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v33 = a1 + 36;
        if (v32 < v29)
        {
          goto LABEL_42;
        }

        sub_3A4B74(v33, v30);
        if (*v193 < *v30)
        {
          v33 = v30;
LABEL_42:
          v34 = v193;
LABEL_46:
          sub_3A4B74(v33, v34);
        }
      }

      v35 = *v13;
      v36 = *v30;
      if (*v13 >= *v23)
      {
        if (v36 < v35)
        {
          sub_3A4B74(v13, v30);
          if (*v13 < *v23)
          {
            v37 = v23;
            v38 = v13;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v37 = v23;
        if (v36 < v35)
        {
          goto LABEL_51;
        }

        sub_3A4B74(v23, v13);
        if (*v30 < *v13)
        {
          v37 = v13;
LABEL_51:
          v38 = v30;
LABEL_55:
          sub_3A4B74(v37, v38);
        }
      }

      v19 = a1;
      v20 = v13;
      goto LABEL_57;
    }

    v18 = *a1;
    if (*a1 >= *v13)
    {
      if (v14 >= v18)
      {
        goto LABEL_58;
      }

      sub_3A4B74(a1, v7);
      if (*a1 >= *v13)
      {
        goto LABEL_58;
      }

      v19 = v13;
      v20 = a1;
    }

    else
    {
      v19 = v13;
      if (v14 >= v18)
      {
        sub_3A4B74(v13, a1);
        if (*v7 >= *a1)
        {
          goto LABEL_58;
        }

        v19 = a1;
      }

      v20 = v7;
    }

LABEL_57:
    sub_3A4B74(v19, v20);
LABEL_58:
    v39 = a3 - 1;
    v40 = *a1;
    if ((a4 & 1) != 0 || *(a1 - 18) < v40)
    {
      v215 = v39;
      v41 = 0;
      v43 = (a1 + 2);
      v42 = *(a1 + 1);
      *&v231[7] = *(a1 + 23);
      *v231 = *(a1 + 2);
      v44 = *(a1 + 31);
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      v225 = *(a1 + 2);
      v45 = (a1 + 12);
      v209 = *(a1 + 3);
      v202 = v42;
      v205 = *(a1 + 8);
      *(a1 + 6) = 0;
      *(a1 + 7) = 0;
      *(a1 + 8) = 0;
      do
      {
        v46 = a1[v41 + 18];
        v41 += 18;
      }

      while (v46 < v40);
      v47 = &a1[v41];
      v48 = a2;
      if (v41 == 18)
      {
        v48 = a2;
        do
        {
          if (v47 >= v48)
          {
            break;
          }

          v50 = *(v48 - 18);
          v48 -= 18;
        }

        while (v50 >= v40);
      }

      else
      {
        do
        {
          v49 = *(v48 - 18);
          v48 -= 18;
        }

        while (v49 >= v40);
      }

      v8 = &a1[v41];
      if (v47 < v48)
      {
        v51 = v48;
        do
        {
          sub_3A4B74(v8, v51);
          do
          {
            v52 = v8[18];
            v8 += 18;
          }

          while (v52 < v40);
          do
          {
            v53 = *(v51 - 18);
            v51 -= 18;
          }

          while (v53 >= v40);
        }

        while (v8 < v51);
      }

      if (v8 - 18 != a1)
      {
        *a1 = *(v8 - 18);
        if (*(a1 + 31) < 0)
        {
          operator delete(*v43);
        }

        v54 = *(v8 - 4);
        *(a1 + 3) = *(v8 - 6);
        *v43 = v54;
        *(v8 - 41) = 0;
        *(v8 - 64) = 0;
        *(a1 + 2) = *(v8 - 10);
        v55 = *v45;
        if (*v45)
        {
          v56 = *(a1 + 7);
          v57 = *v45;
          if (v56 != v55)
          {
            do
            {
              if (*(v56 - 1) < 0)
              {
                operator delete(*(v56 - 3));
              }

              v56 -= 4;
            }

            while (v56 != v55);
            v57 = *v45;
          }

          *(a1 + 7) = v55;
          operator delete(v57);
          *v45 = 0;
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          a2 = v222;
        }

        *(a1 + 3) = *(v8 - 6);
        *(a1 + 8) = *(v8 - 1);
        *(v8 - 3) = 0;
        *(v8 - 2) = 0;
        *(v8 - 1) = 0;
      }

      *(v8 - 18) = v40;
      if (*(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
      }

      *(v8 - 8) = v202;
      *(v8 - 49) = *&v231[7];
      *(v8 - 7) = *v231;
      *(v8 - 41) = v44;
      *(v8 - 10) = v225;
      v58 = *(v8 - 3);
      if (v58)
      {
        v59 = *(v8 - 2);
        v60 = *(v8 - 3);
        if (v59 != v58)
        {
          do
          {
            if (*(v59 - 1) < 0)
            {
              operator delete(*(v59 - 24));
            }

            v59 -= 32;
          }

          while (v59 != v58);
          v60 = *(v8 - 3);
        }

        *(v8 - 2) = v58;
        operator delete(v60);
      }

      *(v8 - 6) = v209;
      *(v8 - 1) = v205;
      v144 = v47 >= v48;
      a3 = v215;
      v7 = v196;
      if (!v144)
      {
        goto LABEL_100;
      }

      v61 = sub_3A46DC(a1, v8 - 18);
      if (sub_3A46DC(v8, a2))
      {
        a2 = v8 - 18;
        if (v61)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v61)
      {
LABEL_100:
        sub_3A2FBC(a1, v8 - 18, v215, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v63 = v39;
      v65 = (a1 + 2);
      v64 = *(a1 + 1);
      *&v232[7] = *(a1 + 23);
      *v232 = *(a1 + 2);
      v66 = v7;
      v67 = *(a1 + 31);
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      v226 = *(a1 + 2);
      v68 = (a1 + 12);
      v216 = *(a1 + 3);
      v210 = *(a1 + 8);
      *(a1 + 6) = 0;
      *(a1 + 7) = 0;
      *(a1 + 8) = 0;
      if (v40 >= *v66)
      {
        v70 = a1 + 18;
        do
        {
          v8 = v70;
          if (v70 >= a2)
          {
            break;
          }

          v70 += 18;
        }

        while (v40 >= *v8);
      }

      else
      {
        v8 = a1;
        do
        {
          v69 = v8[18];
          v8 += 18;
        }

        while (v40 >= v69);
      }

      if (v8 < a2)
      {
        a2 = v222;
        do
        {
          v71 = *(a2 - 18);
          a2 -= 18;
        }

        while (v40 < v71);
      }

      while (v8 < a2)
      {
        sub_3A4B74(v8, a2);
        do
        {
          v72 = v8[18];
          v8 += 18;
        }

        while (v40 >= v72);
        do
        {
          v73 = *(a2 - 18);
          a2 -= 18;
        }

        while (v40 < v73);
      }

      a2 = v222;
      if (v8 - 18 != a1)
      {
        *a1 = *(v8 - 18);
        if (*(a1 + 31) < 0)
        {
          operator delete(*v65);
        }

        v74 = *(v8 - 4);
        *(a1 + 3) = *(v8 - 6);
        *v65 = v74;
        *(v8 - 41) = 0;
        *(v8 - 64) = 0;
        *(a1 + 2) = *(v8 - 10);
        v75 = *v68;
        if (*v68)
        {
          v76 = *(a1 + 7);
          v77 = *v68;
          if (v76 != v75)
          {
            do
            {
              if (*(v76 - 1) < 0)
              {
                operator delete(*(v76 - 3));
              }

              v76 -= 4;
            }

            while (v76 != v75);
            v77 = *v68;
          }

          *(a1 + 7) = v75;
          operator delete(v77);
          *v68 = 0;
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
        }

        *(a1 + 3) = *(v8 - 6);
        *(a1 + 8) = *(v8 - 1);
        *(v8 - 3) = 0;
        *(v8 - 2) = 0;
        *(v8 - 1) = 0;
      }

      *(v8 - 18) = v40;
      if (*(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
      }

      *(v8 - 8) = v64;
      *(v8 - 49) = *&v232[7];
      *(v8 - 7) = *v232;
      *(v8 - 41) = v67;
      *(v8 - 10) = v226;
      v78 = *(v8 - 3);
      a3 = v63;
      v7 = v196;
      if (v78)
      {
        v79 = *(v8 - 2);
        v80 = *(v8 - 3);
        if (v79 != v78)
        {
          do
          {
            if (*(v79 - 1) < 0)
            {
              operator delete(*(v79 - 24));
            }

            v79 -= 32;
          }

          while (v79 != v78);
          v80 = *(v8 - 3);
        }

        *(v8 - 2) = v78;
        operator delete(v80);
      }

      a4 = 0;
      result = *&v216;
      *(v8 - 6) = v216;
      *(v8 - 1) = v210;
    }
  }

  v90 = a1 + 18;
  v92 = a1 == a2 || v90 == a2;
  if (a4)
  {
    if (!v92)
    {
      v93 = a1;
      do
      {
        v95 = v90;
        v96 = v93[18];
        if (v96 < *v93)
        {
          *&v233[7] = *(v93 + 95);
          v97 = *(v93 + 10);
          *v233 = *(v93 + 11);
          v98 = *(v93 + 103);
          *(v93 + 11) = 0;
          *(v93 + 12) = 0;
          *(v93 + 10) = 0;
          v227 = *(v93 + 26);
          v217 = *(v93 + 15);
          v211 = *(v93 + 8);
          *(v93 + 15) = 0;
          *(v93 + 16) = 0;
          *(v93 + 17) = 0;
          v99 = v90;
          v100 = *v93;
          do
          {
            v101 = v93;
            *v99 = v100;
            if (*(v99 + 31) < 0)
            {
              operator delete(*(v99 + 1));
            }

            *(v99 + 2) = *(v101 + 2);
            *(v99 + 3) = *(v101 + 3);
            *(v101 + 31) = 0;
            *(v101 + 8) = 0;
            *(v99 + 2) = *(v101 + 2);
            v102 = *(v99 + 6);
            if (v102)
            {
              v104 = v99 + 14;
              v103 = *(v99 + 7);
              v105 = *(v99 + 6);
              if (v103 != v102)
              {
                do
                {
                  if (*(v103 - 1) < 0)
                  {
                    operator delete(*(v103 - 24));
                  }

                  v103 -= 32;
                }

                while (v103 != v102);
                v105 = *(v99 + 6);
              }

              *v104 = v102;
              operator delete(v105);
              *v104 = 0;
              *(v99 + 8) = 0;
            }

            v106 = (v101 + 12);
            *(v99 + 3) = *(v101 + 3);
            *(v99 + 8) = *(v101 + 8);
            *(v101 + 6) = 0;
            *(v101 + 7) = 0;
            *(v101 + 8) = 0;
            if (v101 == a1)
            {
              v107 = a1;
              *a1 = v96;
              if (*(a1 + 31) < 0)
              {
                goto LABEL_186;
              }

              goto LABEL_188;
            }

            v93 = v101 - 18;
            v100 = *(v101 - 18);
            v99 = v101;
          }

          while (v96 < v100);
          v107 = v101;
          *v101 = v96;
          if (*(v101 + 31) < 0)
          {
LABEL_186:
            operator delete(*(v101 + 1));
            v108 = *v106;
            goto LABEL_189;
          }

LABEL_188:
          v108 = 0;
LABEL_189:
          *(v101 + 1) = v97;
          *(v101 + 2) = *v233;
          *(v101 + 23) = *&v233[7];
          *(v101 + 31) = v98;
          *(v101 + 2) = v227;
          if (v108)
          {
            v109 = *(v107 + 7);
            v94 = v108;
            if (v109 != v108)
            {
              do
              {
                if (*(v109 - 1) < 0)
                {
                  operator delete(*(v109 - 3));
                }

                v109 -= 4;
              }

              while (v109 != v108);
              v94 = *v106;
            }

            *(v107 + 7) = v108;
            operator delete(v94);
            *(v101 + 7) = 0;
            *(v101 + 8) = 0;
          }

          *v106 = v217;
          result = *&v211;
          *(v107 + 14) = v211;
          a2 = v222;
        }

        v90 = v95 + 18;
        v93 = v95;
      }

      while (v95 + 18 != a2);
    }
  }

  else if (!v92)
  {
    do
    {
      v178 = v90;
      v179 = a1[18];
      if (v179 < *a1)
      {
        *&v236[7] = *(a1 + 95);
        v180 = *(a1 + 10);
        *v236 = *(a1 + 11);
        v181 = *(a1 + 103);
        *(a1 + 11) = 0;
        *(a1 + 12) = 0;
        *(a1 + 10) = 0;
        v230 = *(a1 + 26);
        v221 = *(a1 + 30);
        v182 = *(a1 + 17);
        *(a1 + 15) = 0;
        *(a1 + 16) = 0;
        *(a1 + 17) = 0;
        v183 = v90;
        v184 = *a1;
        do
        {
          v187 = a1;
          *v183 = v184;
          if (*(v183 + 31) < 0)
          {
            operator delete(*(v183 + 1));
          }

          *(v183 + 2) = *(a1 + 2);
          *(v183 + 3) = *(a1 + 3);
          *(a1 + 31) = 0;
          *(a1 + 8) = 0;
          *(v183 + 2) = *(a1 + 2);
          v188 = *(v183 + 6);
          if (v188)
          {
            v189 = v183 + 14;
            v190 = *(v183 + 7);
            v185 = *(v183 + 6);
            if (v190 != v188)
            {
              do
              {
                if (*(v190 - 1) < 0)
                {
                  operator delete(*(v190 - 24));
                }

                v190 -= 32;
              }

              while (v190 != v188);
              v185 = *(v183 + 6);
            }

            *v189 = v188;
            operator delete(v185);
            *v189 = 0;
            *(v183 + 8) = 0;
          }

          v186 = (v187 + 12);
          *(v183 + 3) = *(v187 + 3);
          *(v183 + 8) = *(v187 + 8);
          *(v187 + 6) = 0;
          *(v187 + 7) = 0;
          *(v187 + 8) = 0;
          a1 = v187 - 18;
          v184 = *(v187 - 18);
          v183 = v187;
        }

        while (v179 < v184);
        *v187 = v179;
        if (*(v187 + 31) < 0)
        {
          operator delete(*(v187 + 1));
          v191 = *v186;
        }

        else
        {
          v191 = 0;
        }

        a2 = v222;
        *(v187 + 1) = v180;
        *(v187 + 2) = *v236;
        *(v187 + 23) = *&v236[7];
        *(v187 + 31) = v181;
        *(v187 + 2) = v230;
        if (v191)
        {
          v192 = *(v187 + 7);
          v177 = v191;
          if (v192 != v191)
          {
            do
            {
              if (*(v192 - 1) < 0)
              {
                operator delete(*(v192 - 3));
              }

              v192 -= 4;
            }

            while (v192 != v191);
            v177 = *v186;
          }

          *(v187 + 7) = v191;
          operator delete(v177);
        }

        result = *&v221;
        *(v187 + 3) = v221;
        *(v187 + 8) = v182;
      }

      v90 = v178 + 18;
      a1 = v178;
    }

    while (v178 + 18 != a2);
  }

  return result;
}

double sub_3A45C4(int *a1, int *a2, int *a3, int *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      *&result = sub_3A4B74(a2, a3).n128_u64[0];
      if (*a2 < *v7)
      {
        a1 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      *&result = sub_3A4B74(a1, v11).n128_u64[0];
      goto LABEL_10;
    }

    *&result = sub_3A4B74(a1, a2).n128_u64[0];
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    *&result = sub_3A4B74(a3, a4).n128_u64[0];
    if (*a3 < *a2)
    {
      *&result = sub_3A4B74(a2, a3).n128_u64[0];
      if (*a2 < *v7)
      {

        *&result = sub_3A4B74(v7, a2).n128_u64[0];
      }
    }
  }

  return result;
}

BOOL sub_3A46DC(int *a1, int *a2)
{
  v3 = a1;
  v4 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = a1[18];
        v5 = a2 - 18;
        v10 = *(a2 - 18);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          sub_3A4B74(a1 + 18, v5);
          if (v3[18] >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = v3 + 18;
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          sub_3A4B74(a1, a1 + 18);
          if (*v5 >= v3[18])
          {
            return 1;
          }

          a1 = v3 + 18;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        sub_3A4B74(a1, v8);
        return 1;
      case 4:
        sub_3A45C4(a1, a1 + 18, a1 + 36, a2 - 18);
        return 1;
      case 5:
        sub_3A45C4(a1, a1 + 18, a1 + 36, a1 + 54);
        v7 = *(a2 - 18);
        v6 = a2 - 18;
        if (v7 >= v3[54])
        {
          return 1;
        }

        sub_3A4B74(v3 + 54, v6);
        if (v3[54] >= v3[36])
        {
          return 1;
        }

        sub_3A4B74(v3 + 36, v3 + 54);
        if (v3[36] >= v3[18])
        {
          return 1;
        }

        sub_3A4B74(v3 + 18, v3 + 36);
        if (v3[18] >= *v3)
        {
          return 1;
        }

        v8 = v3 + 18;
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 18;
      if (*(a2 - 18) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = a1 + 36;
  v11 = a1[36];
  v13 = a1[18];
  if (v13 < *a1)
  {
    if (v11 >= v13)
    {
      sub_3A4B74(a1, a1 + 18);
      if (v3[36] >= v3[18])
      {
        goto LABEL_31;
      }

      a1 = v3 + 18;
    }

    v14 = v3 + 36;
    goto LABEL_30;
  }

  if (v11 < v13)
  {
    sub_3A4B74(a1 + 18, a1 + 36);
    if (v3[18] < *v3)
    {
      a1 = v3;
      v14 = v3 + 18;
LABEL_30:
      sub_3A4B74(a1, v14);
    }
  }

LABEL_31:
  v15 = v3 + 54;
  if (v3 + 54 == a2)
  {
    return 1;
  }

  v16 = 0;
  while (1)
  {
    v18 = *v15;
    if (*v15 < *v12)
    {
      v32 = *(v15 + 1);
      *v36 = *(v15 + 2);
      *&v36[7] = *(v15 + 23);
      v31 = *(v15 + 31);
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = 0;
      v35 = *(v15 + 2);
      v34 = *(v15 + 6);
      v33 = *(v15 + 14);
      *(v15 + 6) = 0;
      *(v15 + 7) = 0;
      *(v15 + 8) = 0;
      v19 = v15;
      v20 = *v12;
      do
      {
        v21 = v12;
        *v19 = v20;
        if (*(v19 + 31) < 0)
        {
          operator delete(*(v19 + 1));
        }

        *(v19 + 2) = *(v12 + 2);
        *(v19 + 3) = *(v12 + 3);
        *(v12 + 31) = 0;
        *(v12 + 8) = 0;
        *(v19 + 2) = *(v12 + 2);
        v22 = *(v19 + 6);
        if (v22)
        {
          v23 = v19 + 14;
          v24 = *(v19 + 7);
          v25 = *(v19 + 6);
          if (v24 != v22)
          {
            do
            {
              if (*(v24 - 1) < 0)
              {
                operator delete(*(v24 - 24));
              }

              v24 -= 32;
            }

            while (v24 != v22);
            v25 = *(v19 + 6);
          }

          *v23 = v22;
          operator delete(v25);
          *v23 = 0;
          *(v19 + 8) = 0;
        }

        v26 = (v21 + 12);
        *(v19 + 3) = *(v21 + 3);
        *(v19 + 8) = *(v21 + 8);
        *(v21 + 6) = 0;
        *(v21 + 7) = 0;
        *(v21 + 8) = 0;
        if (v21 == v3)
        {
          v27 = v3;
          *v3 = v18;
          if (*(v3 + 31) < 0)
          {
            goto LABEL_52;
          }

          goto LABEL_54;
        }

        v12 = v21 - 18;
        v20 = *(v21 - 18);
        v19 = v21;
      }

      while (v18 < v20);
      v27 = v21;
      *v21 = v18;
      if (*(v21 + 31) < 0)
      {
LABEL_52:
        operator delete(*(v21 + 1));
        v28 = *v26;
        goto LABEL_55;
      }

LABEL_54:
      v28 = 0;
LABEL_55:
      *(v21 + 1) = v32;
      *(v21 + 2) = *v36;
      *(v21 + 23) = *&v36[7];
      *(v21 + 31) = v31;
      *(v21 + 2) = v35;
      if (v28)
      {
        v29 = *(v27 + 7);
        v17 = v28;
        if (v29 != v28)
        {
          do
          {
            if (*(v29 - 1) < 0)
            {
              operator delete(*(v29 - 3));
            }

            v29 -= 4;
          }

          while (v29 != v28);
          v17 = *v26;
        }

        *(v27 + 7) = v28;
        operator delete(v17);
        *(v21 + 7) = 0;
        *(v21 + 8) = 0;
      }

      *v26 = v34;
      *(v27 + 14) = v33;
      if (++v16 == 8)
      {
        return v15 + 18 == a2;
      }
    }

    v12 = v15;
    v15 += 18;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_3A4B74(int *a1, int *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  *v20 = *(a1 + 2);
  *&v20[7] = *(a1 + 23);
  v6 = *(a1 + 31);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 1) = 0;
  v7 = a1 + 12;
  v18 = *(a1 + 3);
  v19 = *(a1 + 2);
  v8 = *(a1 + 8);
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  *(a1 + 6) = 0;
  *a1 = *a2;
  v9 = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 2) = v9;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 2) = *(a2 + 2);
  v10 = *(a1 + 6);
  if (v10)
  {
    v11 = *(a1 + 7);
    v12 = *(a1 + 6);
    if (v11 != v10)
    {
      do
      {
        if (*(v11 - 1) < 0)
        {
          operator delete(*(v11 - 24));
        }

        v11 -= 32;
      }

      while (v11 != v10);
      v12 = *v7;
    }

    *(a1 + 7) = v10;
    operator delete(v12);
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
  }

  v13 = 0;
  v14 = (a2 + 12);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *a2 = v4;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 1));
    v13 = *v14;
  }

  *(a2 + 1) = v5;
  *(a2 + 2) = *v20;
  *(a2 + 23) = *&v20[7];
  *(a2 + 31) = v6;
  *(a2 + 2) = v19;
  if (v13)
  {
    v15 = *(a2 + 7);
    v16 = v13;
    if (v15 != v13)
    {
      do
      {
        if (*(v15 - 1) < 0)
        {
          operator delete(*(v15 - 3));
        }

        v15 -= 4;
      }

      while (v15 != v13);
      v16 = *v14;
    }

    *(a2 + 7) = v13;
    operator delete(v16);
  }

  result = v18;
  *(a2 + 3) = v18;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_3A4D44(uint64_t a1, int a2)
{
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (*(a1 + 24) <= (std::chrono::system_clock::to_time_t(&__t) + 60) || !sub_7E7E4(1u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&__t);
  sub_4A5C(&__t, "(Non-fatal) Trip update for muid ", 33);
  v4 = std::ostream::operator<<();
  v5 = sub_4A5C(v4, " has creation timestamp of ", 27);
  v6 = sub_258D4(v5);
  v7 = sub_4A5C(v6, " which is more than one minutes in the future (now: ", 52);
  __dst.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  LODWORD(v147[0]) = std::chrono::system_clock::to_time_t(&__dst);
  v8 = sub_258D4(v7);
  sub_4A5C(v8, ")", 1);
  if ((v162 & 0x10) != 0)
  {
    v10 = v161;
    if (v161 < v158)
    {
      v161 = v158;
      v10 = v158;
    }

    v11 = v157;
    v9 = v10 - v157;
    if (v10 - v157 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_28:
      sub_3244();
    }

LABEL_9:
    if (v9 >= 0x17)
    {
      operator new();
    }

    v151 = v9;
    if (v9)
    {
      memmove(&__dst, v11, v9);
    }

    goto LABEL_14;
  }

  if ((v162 & 8) != 0)
  {
    v11 = v155[0];
    v9 = v156 - v155[0];
    if (v156 - v155[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_28;
    }

    goto LABEL_9;
  }

  v9 = 0;
  v151 = 0;
LABEL_14:
  *(&__dst.__d_.__rep_ + v9) = 0;
  sub_7E854(&__dst.__d_.__rep_, 1u);
  if (v151 < 0)
  {
    operator delete(__dst.__d_.__rep_);
  }

  if (v160 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v154);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_19:
  if (!a2 || (__t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_, *(a1 + 28) >= (std::chrono::system_clock::to_time_t(&__t) - 60)))
  {
    v18 = 1;
    v19 = (a1 + 32);
    if (*(a1 + 32))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&__t);
    sub_4A5C(&__t, "Trip update for muid ", 21);
    v12 = std::ostream::operator<<();
    v13 = sub_4A5C(v12, " has expiration timestamp of ", 29);
    v14 = sub_258D4(v13);
    v15 = sub_4A5C(v14, " which is more than one minute in the past (now: ", 49);
    __dst.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    LODWORD(v147[0]) = std::chrono::system_clock::to_time_t(&__dst);
    v16 = sub_258D4(v15);
    sub_4A5C(v16, ")", 1);
    if ((v162 & 0x10) != 0)
    {
      v20 = v161;
      if (v161 < v158)
      {
        v161 = v158;
        v20 = v158;
      }

      v21 = v157;
      v17 = v20 - v157;
      if (v20 - v157 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_211;
      }
    }

    else
    {
      if ((v162 & 8) == 0)
      {
        v17 = 0;
        v151 = 0;
LABEL_37:
        *(&__dst.__d_.__rep_ + v17) = 0;
        sub_7E854(&__dst.__d_.__rep_, 1u);
        if (v151 < 0)
        {
          operator delete(__dst.__d_.__rep_);
        }

        if (v160 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v154);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_42;
      }

      v21 = v155[0];
      v17 = v156 - v155[0];
      if (v156 - v155[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_211:
        sub_3244();
      }
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v151 = v17;
    if (v17)
    {
      memmove(&__dst, v21, v17);
    }

    goto LABEL_37;
  }

LABEL_42:
  v18 = 0;
  v19 = (a1 + 32);
  if (*(a1 + 32))
  {
    goto LABEL_44;
  }

LABEL_43:
  if (*(a1 + 40) == *(a1 + 48))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_224;
    }

    sub_19594F8(&__t);
    sub_4A5C(&__t, "Trip update for muid ", 21);
    v103 = std::ostream::operator<<();
    v104 = sub_4A5C(v103, " is of type ", 12);
    sub_3A7264(v19, &__dst);
    if ((v151 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__d_.__rep_;
    }

    if ((v151 & 0x80u) == 0)
    {
      v106 = v151;
    }

    else
    {
      v106 = v150;
    }

    v107 = sub_4A5C(v104, p_dst, v106);
    sub_4A5C(v107, " but has no associated stop time updates", 40);
    if (v151 < 0)
    {
      operator delete(__dst.__d_.__rep_);
    }

    if ((v162 & 0x10) != 0)
    {
      v109 = v161;
      if (v161 < v158)
      {
        v161 = v158;
        v109 = v158;
      }

      v110 = &v157;
    }

    else
    {
      if ((v162 & 8) == 0)
      {
        v108 = 0;
        v151 = 0;
LABEL_219:
        *(&__dst.__d_.__rep_ + v108) = 0;
        sub_7E854(&__dst.__d_.__rep_, 1u);
        if (v151 < 0)
        {
          operator delete(__dst.__d_.__rep_);
        }

        if (v160 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v154);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_224:
        v18 = 0;
        v22 = *(a1 + 40);
        if (*(a1 + 48) != v22)
        {
          goto LABEL_45;
        }

        goto LABEL_225;
      }

      v110 = v155;
      v109 = v156;
    }

    v111 = *v110;
    v108 = v109 - *v110;
    if (v108 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v108 >= 0x17)
    {
      operator new();
    }

    v151 = v109 - *v110;
    if (v108)
    {
      memmove(&__dst, v111, v108);
    }

    goto LABEL_219;
  }

LABEL_44:
  v22 = *(a1 + 40);
  if (*(a1 + 48) != v22)
  {
LABEL_45:
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v26 = v22 + 20 * v23;
      if (v24 == *(v26 + 4))
      {
        goto LABEL_77;
      }

      if (sub_7E7E4(1u))
      {
        break;
      }

LABEL_76:
      v18 = 0;
LABEL_77:
      if (*(v26 + 12) >= *(v26 + 8))
      {
        goto LABEL_105;
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(&__t);
        sub_4A5C(&__t, "Trip update for muid ", 21);
        v39 = std::ostream::operator<<();
        v40 = sub_4A5C(v39, " at index ", 10);
        std::ostream::operator<<();
        v41 = sub_4A5C(v40, " [", 2);
        sub_3A716C(v26, &__dst);
        if ((v151 & 0x80u) == 0)
        {
          rep = &__dst;
        }

        else
        {
          rep = __dst.__d_.__rep_;
        }

        if ((v151 & 0x80u) == 0)
        {
          v43 = v151;
        }

        else
        {
          v43 = v150;
        }

        v44 = sub_4A5C(v41, rep, v43);
        v45 = sub_4A5C(v44, "] has departure time at ", 24);
        v46 = sub_72140(v45, *(v26 + 12) + *(a1 + 20));
        v47 = sub_4A5C(v46, " before the arrival time at ", 28);
        sub_72140(v47, *(v26 + 8) + *(a1 + 20));
        if (v151 < 0)
        {
          operator delete(__dst.__d_.__rep_);
          v48 = v162;
          if ((v162 & 0x10) != 0)
          {
            goto LABEL_90;
          }

LABEL_87:
          if ((v48 & 8) != 0)
          {
            v50 = v156;
            v51 = v155;
            goto LABEL_93;
          }

          v49 = 0;
          v151 = 0;
        }

        else
        {
          v48 = v162;
          if ((v162 & 0x10) == 0)
          {
            goto LABEL_87;
          }

LABEL_90:
          v50 = v161;
          v51 = &v157;
          if (v161 < v158)
          {
            v161 = v158;
            v50 = v158;
            v51 = &v157;
          }

LABEL_93:
          v52 = *v51;
          v49 = v50 - *v51;
          if (v49 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v49 >= 0x17)
          {
            operator new();
          }

          v151 = v50 - *v51;
          if (v49)
          {
            memmove(&__dst, v52, v49);
          }
        }

        *(&__dst.__d_.__rep_ + v49) = 0;
        sub_7E854(&__dst.__d_.__rep_, 1u);
        if (v151 < 0)
        {
          operator delete(__dst.__d_.__rep_);
        }

        __t.__d_.__rep_ = v144;
        *(&__t.__d_.__rep_ + *(v144 - 24)) = v141;
        if (v160 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v154);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      v18 = 0;
LABEL_105:
      if (v24)
      {
        v53 = *(a1 + 40) + 20 * (v24 - 1);
        if (*(v26 + 8) < *(v53 + 12))
        {
          if (!sub_7E7E4(1u))
          {
            goto LABEL_165;
          }

          sub_19594F8(&__t);
          sub_4A5C(&__t, "Trip update for muid ", 21);
          v54 = std::ostream::operator<<();
          v55 = sub_4A5C(v54, " travels into the past; departure time at index ", 48);
          std::ostream::operator<<();
          v56 = sub_4A5C(v55, " [", 2);
          sub_3A716C(v53, &__dst);
          if ((v151 & 0x80u) == 0)
          {
            v57 = &__dst;
          }

          else
          {
            v57 = __dst.__d_.__rep_;
          }

          if ((v151 & 0x80u) == 0)
          {
            v58 = v151;
          }

          else
          {
            v58 = v150;
          }

          v59 = sub_4A5C(v56, v57, v58);
          v60 = sub_4A5C(v59, "] is ", 5);
          v61 = sub_72140(v60, *(v53 + 12) + *(a1 + 20));
          v62 = sub_4A5C(v61, "; arrival time at index ", 24);
          std::ostream::operator<<();
          v63 = sub_4A5C(v62, " [", 2);
          sub_3A716C(v26, v147);
          if ((v148 & 0x80u) == 0)
          {
            v64 = v147;
          }

          else
          {
            v64 = v147[0];
          }

          if ((v148 & 0x80u) == 0)
          {
            v65 = v148;
          }

          else
          {
            v65 = v147[1];
          }

          v66 = sub_4A5C(v63, v64, v65);
          v67 = sub_4A5C(v66, "] is ", 5);
          sub_72140(v67, *(v26 + 8) + *(a1 + 20));
          if (v148 < 0)
          {
            operator delete(v147[0]);
            if (v151 < 0)
            {
              goto LABEL_140;
            }

LABEL_122:
            v68 = v162;
            if ((v162 & 0x10) == 0)
            {
              goto LABEL_123;
            }

LABEL_141:
            v82 = v161;
            v83 = &v157;
            if (v161 < v158)
            {
              v161 = v158;
              v82 = v158;
              v83 = &v157;
            }
          }

          else
          {
            if ((v151 & 0x80000000) == 0)
            {
              goto LABEL_122;
            }

LABEL_140:
            operator delete(__dst.__d_.__rep_);
            v68 = v162;
            if ((v162 & 0x10) != 0)
            {
              goto LABEL_141;
            }

LABEL_123:
            if ((v68 & 8) == 0)
            {
              v69 = 0;
              v151 = 0;
              goto LABEL_160;
            }

            v82 = v156;
            v83 = v155;
          }

          v84 = *v83;
          v69 = v82 - *v83;
          if (v69 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v69 >= 0x17)
          {
            operator new();
          }

          v151 = v82 - *v83;
          if (!v69)
          {
            goto LABEL_160;
          }

          goto LABEL_159;
        }
      }

      else if (*(v26 + 17) != 1)
      {
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&__t);
          sub_4A5C(&__t, "Trip update for muid ", 21);
          v70 = std::ostream::operator<<();
          v71 = sub_4A5C(v70, " at the first index ", 20);
          std::ostream::operator<<();
          v72 = sub_4A5C(v71, " [", 2);
          sub_3A716C(v26, &__dst);
          if ((v151 & 0x80u) == 0)
          {
            v73 = &__dst;
          }

          else
          {
            v73 = __dst.__d_.__rep_;
          }

          if ((v151 & 0x80u) == 0)
          {
            v74 = v151;
          }

          else
          {
            v74 = v150;
          }

          v75 = sub_4A5C(v72, v73, v74);
          v76 = sub_4A5C(v75, "] has dropoff type of ", 22);
          v77 = *(v26 + 17);
          v78 = "";
          if (v77 <= 3)
          {
            v78 = off_2669640[v77];
          }

          v79 = strlen(v78);
          v80 = sub_4A5C(v76, v78, v79);
          sub_4A5C(v80, " which is prohibited", 20);
          if ((v151 & 0x80000000) == 0)
          {
            v81 = v162;
            if ((v162 & 0x10) == 0)
            {
              goto LABEL_137;
            }

LABEL_151:
            v85 = v161;
            v86 = &v157;
            if (v161 < v158)
            {
              v161 = v158;
              v85 = v158;
              v86 = &v157;
            }

LABEL_154:
            v84 = *v86;
            v69 = v85 - *v86;
            if (v69 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v69 >= 0x17)
            {
              operator new();
            }

            v151 = v85 - *v86;
            if (!v69)
            {
              goto LABEL_160;
            }

LABEL_159:
            memmove(&__dst, v84, v69);
            goto LABEL_160;
          }

          operator delete(__dst.__d_.__rep_);
          v81 = v162;
          if ((v162 & 0x10) != 0)
          {
            goto LABEL_151;
          }

LABEL_137:
          if ((v81 & 8) != 0)
          {
            v85 = v156;
            v86 = v155;
            goto LABEL_154;
          }

          v69 = 0;
          v151 = 0;
LABEL_160:
          *(&__dst.__d_.__rep_ + v69) = 0;
          sub_7E854(&__dst.__d_.__rep_, 1u);
          if (v151 < 0)
          {
            operator delete(__dst.__d_.__rep_);
          }

          __t.__d_.__rep_ = v144;
          *(&__t.__d_.__rep_ + *(v144 - 24)) = v141;
          if (v160 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v154);
          std::ostream::~ostream();
          std::ios::~ios();
        }

LABEL_165:
        v18 = 0;
      }

      v23 = (v24 + 1);
      v22 = *(a1 + 40);
      v25 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 48) - v22) >> 2);
      if (v25 != v23 || *(v26 + 16) == 1)
      {
        goto LABEL_48;
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(&__t);
        sub_4A5C(&__t, "Trip update for muid ", 21);
        v87 = std::ostream::operator<<();
        v88 = sub_4A5C(v87, " at the last index ", 19);
        std::ostream::operator<<();
        v89 = sub_4A5C(v88, " [", 2);
        sub_3A716C(v26, &__dst);
        if ((v151 & 0x80u) == 0)
        {
          v90 = &__dst;
        }

        else
        {
          v90 = __dst.__d_.__rep_;
        }

        if ((v151 & 0x80u) == 0)
        {
          v91 = v151;
        }

        else
        {
          v91 = v150;
        }

        v92 = sub_4A5C(v89, v90, v91);
        v93 = sub_4A5C(v92, "] has pickup type of ", 21);
        v94 = *(v26 + 16);
        v95 = "";
        if (v94 <= 3)
        {
          v95 = off_2669640[v94];
        }

        v96 = strlen(v95);
        v97 = sub_4A5C(v93, v95, v96);
        sub_4A5C(v97, " which is prohibited", 20);
        if (v151 < 0)
        {
          operator delete(__dst.__d_.__rep_);
          v98 = v162;
          if ((v162 & 0x10) != 0)
          {
            goto LABEL_182;
          }

LABEL_179:
          if ((v98 & 8) != 0)
          {
            v100 = v156;
            v101 = v155;
            goto LABEL_185;
          }

          v99 = 0;
          v151 = 0;
        }

        else
        {
          v98 = v162;
          if ((v162 & 0x10) == 0)
          {
            goto LABEL_179;
          }

LABEL_182:
          v100 = v161;
          v101 = &v157;
          if (v161 < v158)
          {
            v161 = v158;
            v100 = v158;
            v101 = &v157;
          }

LABEL_185:
          v102 = *v101;
          v99 = v100 - *v101;
          if (v99 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v99 >= 0x17)
          {
            operator new();
          }

          v151 = v100 - *v101;
          if (v99)
          {
            memmove(&__dst, v102, v99);
          }
        }

        *(&__dst.__d_.__rep_ + v99) = 0;
        sub_7E854(&__dst.__d_.__rep_, 1u);
        if (v151 < 0)
        {
          operator delete(__dst.__d_.__rep_);
        }

        __t.__d_.__rep_ = v144;
        *(&__t.__d_.__rep_ + *(v144 - 24)) = v141;
        if (v160 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v154);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      v18 = 0;
      v22 = *(a1 + 40);
      v25 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 48) - v22) >> 2);
LABEL_48:
      v24 = v23;
      if (v25 <= v23)
      {
        goto LABEL_225;
      }
    }

    sub_19594F8(&__t);
    sub_4A5C(&__t, "Trip update for muid ", 21);
    v27 = std::ostream::operator<<();
    v28 = sub_4A5C(v27, " at index ", 10);
    std::ostream::operator<<();
    v29 = sub_4A5C(v28, " [", 2);
    sub_3A716C(v26, &__dst);
    if ((v151 & 0x80u) == 0)
    {
      v30 = &__dst;
    }

    else
    {
      v30 = __dst.__d_.__rep_;
    }

    if ((v151 & 0x80u) == 0)
    {
      v31 = v151;
    }

    else
    {
      v31 = v150;
    }

    v32 = sub_4A5C(v29, v30, v31);
    v33 = sub_4A5C(v32, "] has a stop index of ", 22);
    std::ostream::operator<<();
    sub_4A5C(v33, " but its position in the stop time updates array is ", 52);
    std::ostream::operator<<();
    if (v151 < 0)
    {
      operator delete(__dst.__d_.__rep_);
      v34 = v162;
      if ((v162 & 0x10) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v34 = v162;
      if ((v162 & 0x10) == 0)
      {
LABEL_59:
        if ((v34 & 8) == 0)
        {
          v35 = 0;
          v151 = 0;
LABEL_71:
          *(&__dst.__d_.__rep_ + v35) = 0;
          sub_7E854(&__dst.__d_.__rep_, 1u);
          if (v151 < 0)
          {
            operator delete(__dst.__d_.__rep_);
          }

          __t.__d_.__rep_ = v144;
          *(&__t.__d_.__rep_ + *(v144 - 24)) = v141;
          if (v160 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v154);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_76;
        }

        v36 = v156;
        v37 = v155;
LABEL_65:
        v38 = *v37;
        v35 = v36 - *v37;
        if (v35 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v35 >= 0x17)
        {
          operator new();
        }

        v151 = v36 - *v37;
        if (v35)
        {
          memmove(&__dst, v38, v35);
        }

        goto LABEL_71;
      }
    }

    v36 = v161;
    v37 = &v157;
    if (v161 < v158)
    {
      v161 = v158;
      v36 = v158;
      v37 = &v157;
    }

    goto LABEL_65;
  }

LABEL_225:
  v113 = *(a1 + 64);
  v112 = *(a1 + 72);
  if (v113 != v112)
  {
    while (*v113 != -1)
    {
      v114 = *(v113 + 31);
      if ((v114 & 0x80u) != 0)
      {
        v114 = *(v113 + 16);
      }

      if (!v114)
      {
        goto LABEL_257;
      }

LABEL_256:
      __t.__d_.__rep_ = sub_12331FC();
      if (sub_1232EE0(v113 + 40, &__t))
      {
        goto LABEL_229;
      }

LABEL_257:
      if (sub_7E7E4(1u))
      {
        sub_19594F8(&__t);
        sub_4A5C(&__t, "Trip update for muid ", 21);
        v121 = std::ostream::operator<<();
        v122 = sub_4A5C(v121, " has a platform assignment update for stop index ", 49);
        std::ostream::operator<<();
        sub_4A5C(v122, " with an invalid secondary text entry", 37);
        if ((v162 & 0x10) != 0)
        {
          v124 = v161;
          v125 = &v157;
          if (v161 < v158)
          {
            v161 = v158;
            v124 = v158;
            v125 = &v157;
          }
        }

        else
        {
          if ((v162 & 8) == 0)
          {
            v123 = 0;
            v151 = 0;
LABEL_270:
            *(&__dst.__d_.__rep_ + v123) = 0;
            sub_7E854(&__dst.__d_.__rep_, 1u);
            if (v151 < 0)
            {
              operator delete(__dst.__d_.__rep_);
            }

            __t.__d_.__rep_ = v145;
            *(&__t.__d_.__rep_ + *(v145 - 24)) = v142;
            if (v160 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v154);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_228;
          }

          v124 = v156;
          v125 = v155;
        }

        v126 = *v125;
        v123 = v124 - *v125;
        if (v123 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v123 >= 0x17)
        {
          operator new();
        }

        v151 = v124 - *v125;
        if (v123)
        {
          memmove(&__dst, v126, v123);
        }

        goto LABEL_270;
      }

LABEL_228:
      v18 = 0;
LABEL_229:
      v113 += 72;
      if (v113 == v112)
      {
        v113 = *(a1 + 64);
        v112 = *(a1 + 72);
        goto LABEL_275;
      }
    }

    if (!sub_7E7E4(1u))
    {
LABEL_253:
      v18 = 0;
      v120 = *(v113 + 31);
      if ((v120 & 0x80u) != 0)
      {
        v120 = *(v113 + 16);
      }

      if (!v120)
      {
        goto LABEL_257;
      }

      goto LABEL_256;
    }

    sub_19594F8(&__t);
    sub_4A5C(&__t, "Trip update for muid ", 21);
    v115 = std::ostream::operator<<();
    sub_4A5C(v115, " has a platform assignment update with an invalid stop index", 60);
    if ((v162 & 0x10) != 0)
    {
      v117 = v161;
      v118 = &v157;
      if (v161 < v158)
      {
        v161 = v158;
        v117 = v158;
        v118 = &v157;
      }
    }

    else
    {
      if ((v162 & 8) == 0)
      {
        v116 = 0;
        v151 = 0;
LABEL_248:
        *(&__dst.__d_.__rep_ + v116) = 0;
        sub_7E854(&__dst.__d_.__rep_, 1u);
        if (v151 < 0)
        {
          operator delete(__dst.__d_.__rep_);
        }

        __t.__d_.__rep_ = v145;
        *(&__t.__d_.__rep_ + *(v145 - 24)) = v142;
        if (v160 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v154);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_253;
      }

      v117 = v156;
      v118 = v155;
    }

    v119 = *v118;
    v116 = v117 - *v118;
    if (v116 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v116 >= 0x17)
    {
      operator new();
    }

    v151 = v117 - *v118;
    if (v116)
    {
      memmove(&__dst, v119, v116);
    }

    goto LABEL_248;
  }

LABEL_275:
  if (v113 != v112)
  {
    v127 = (v113 + 72);
    if ((v113 + 72) != v112)
    {
      while (1)
      {
        v128 = *(v127 - 18);
        v129 = *v127;
        if (v128 != *v127)
        {
          goto LABEL_301;
        }

        if (sub_7E7E4(1u))
        {
          break;
        }

LABEL_300:
        v18 = 0;
        v128 = *(v127 - 18);
        v129 = *v127;
LABEL_301:
        if (v128 <= v129)
        {
          goto LABEL_280;
        }

        if (sub_7E7E4(1u))
        {
          sub_19594F8(&__t);
          sub_4A5C(&__t, "Trip update for muid ", 21);
          v135 = std::ostream::operator<<();
          sub_4A5C(v135, " has platform assignment updates that are not sorted by stop index", 66);
          if ((v162 & 0x10) != 0)
          {
            v137 = v161;
            v138 = &v157;
            if (v161 < v158)
            {
              v161 = v158;
              v137 = v158;
              v138 = &v157;
            }
          }

          else
          {
            if ((v162 & 8) == 0)
            {
              v136 = 0;
              v151 = 0;
LABEL_315:
              *(&__dst.__d_.__rep_ + v136) = 0;
              sub_7E854(&__dst.__d_.__rep_, 1u);
              if (v151 < 0)
              {
                operator delete(__dst.__d_.__rep_);
              }

              __t.__d_.__rep_ = v146;
              *(&__t.__d_.__rep_ + *(v146 - 24)) = v143;
              if (v160 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v154);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_279;
            }

            v137 = v156;
            v138 = v155;
          }

          v139 = *v138;
          v136 = v137 - *v138;
          if (v136 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v136 >= 0x17)
          {
            operator new();
          }

          v151 = v137 - *v138;
          if (v136)
          {
            memmove(&__dst, v139, v136);
          }

          goto LABEL_315;
        }

LABEL_279:
        v18 = 0;
LABEL_280:
        v127 += 18;
        if (v127 == v112)
        {
          return v18 & 1;
        }
      }

      sub_19594F8(&__t);
      sub_4A5C(&__t, "Trip update for muid ", 21);
      v130 = std::ostream::operator<<();
      sub_4A5C(v130, " has multiple platform assignment updates for the stop at index ", 64);
      std::ostream::operator<<();
      if ((v162 & 0x10) != 0)
      {
        v132 = v161;
        v133 = &v157;
        if (v161 < v158)
        {
          v161 = v158;
          v132 = v158;
          v133 = &v157;
        }
      }

      else
      {
        if ((v162 & 8) == 0)
        {
          v131 = 0;
          v151 = 0;
LABEL_295:
          *(&__dst.__d_.__rep_ + v131) = 0;
          sub_7E854(&__dst.__d_.__rep_, 1u);
          if (v151 < 0)
          {
            operator delete(__dst.__d_.__rep_);
          }

          __t.__d_.__rep_ = v146;
          *(&__t.__d_.__rep_ + *(v146 - 24)) = v143;
          if (v160 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v154);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_300;
        }

        v132 = v156;
        v133 = v155;
      }

      v134 = *v133;
      v131 = v132 - *v133;
      if (v131 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v131 >= 0x17)
      {
        operator new();
      }

      v151 = v132 - *v133;
      if (v131)
      {
        memmove(&__dst, v134, v131);
      }

      goto LABEL_295;
    }
  }

  return v18 & 1;
}