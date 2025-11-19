uint64_t sub_49C304(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v6 = *(a2 + 12);
  v7 = a2[5];
  v8 = a2[3];
  v9 = (a1 + 104);
  v10 = *(a1 + 104);
  *(a1 + 64) = a2[4];
  *(a1 + 80) = v7;
  *(a1 + 96) = v6;
  *(a1 + 48) = v8;
  if (v10)
  {
    v11 = *(a1 + 112);
    v12 = v10;
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 3);
        if (v13)
        {
          *(v11 - 2) = v13;
          operator delete(v13);
        }

        v11 -= 56;
      }

      while (v11 != v10);
      v12 = *v9;
    }

    *(a1 + 112) = v10;
    operator delete(v12);
    *v9 = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  v14 = *(a1 + 128);
  if (v14)
  {
    *(a1 + 136) = v14;
    operator delete(v14);
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 128) = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v15 = *(a1 + 152);
  if (v15)
  {
    *(a1 + 160) = v15;
    operator delete(v15);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  v16 = a2[11];
  v17 = a2[12];
  v18 = *(a1 + 216);
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v17;
  *(a1 + 176) = v16;
  if (v18)
  {
    *(a1 + 224) = v18;
    operator delete(v18);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  v19 = *(a1 + 240);
  if (v19)
  {
    *(a1 + 248) = v19;
    operator delete(v19);
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
  }

  *(a1 + 240) = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  v20 = *(a2 + 264);
  v21 = *(a2 + 296);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = v21;
  *(a1 + 264) = v20;
  v22 = *(a2 + 424);
  v24 = *(a2 + 376);
  v23 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v22;
  *(a1 + 376) = v24;
  *(a1 + 392) = v23;
  v25 = *(a2 + 488);
  v27 = *(a2 + 440);
  v26 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 488) = v25;
  *(a1 + 440) = v27;
  *(a1 + 456) = v26;
  v28 = *(a2 + 312);
  v29 = *(a2 + 328);
  v30 = *(a2 + 360);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v30;
  *(a1 + 312) = v28;
  *(a1 + 328) = v29;
  v31 = *(a1 + 504);
  if (v31)
  {
    operator delete(v31);
    *(a1 + 504) = 0;
    *(a1 + 512) = 0;
    *(a1 + 520) = 0;
  }

  *(a1 + 504) = *(a2 + 63);
  *(a1 + 512) = a2[32];
  *(a2 + 63) = 0;
  *(a2 + 64) = 0;
  *(a2 + 65) = 0;
  v32 = *(a1 + 528);
  if (v32)
  {
    *(a1 + 536) = v32;
    operator delete(v32);
    *(a1 + 528) = 0;
    *(a1 + 536) = 0;
    *(a1 + 544) = 0;
  }

  *(a1 + 528) = a2[33];
  *(a1 + 544) = *(a2 + 68);
  *(a2 + 68) = 0;
  a2[33] = 0u;
  return a1;
}

uint64_t sub_49C5C0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 16) = v5;
  v9 = (a1 + 72);
  v8 = *(a1 + 72);
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = a2[11];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  v10 = *(a2 + 6);
  v11 = *(a1 + 152);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v10;
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  if (v11)
  {
    operator delete(v11);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  *(a1 + 152) = a2[19];
  *(a1 + 160) = *(a2 + 10);
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  v12 = (a1 + 176);
  v13 = *(a1 + 176);
  if (v13)
  {
    v14 = *(a1 + 184);
    v15 = *(a1 + 176);
    if (v14 != v13)
    {
      do
      {
        v17 = *(v14 - 24);
        if (v17)
        {
          v18 = *(v14 - 16);
          v16 = *(v14 - 24);
          if (v18 != v17)
          {
            do
            {
              v19 = *(v18 - 9);
              v18 -= 4;
              if (v19 < 0)
              {
                operator delete(*v18);
              }
            }

            while (v18 != v17);
            v16 = *(v14 - 24);
          }

          *(v14 - 16) = v17;
          operator delete(v16);
        }

        v14 -= 104;
      }

      while (v14 != v13);
      v15 = *v12;
    }

    *(a1 + 184) = v13;
    operator delete(v15);
    *v12 = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
  }

  *(a1 + 176) = *(a2 + 11);
  *(a1 + 192) = a2[24];
  a2[22] = 0;
  a2[23] = 0;
  a2[24] = 0;
  v20 = (a1 + 200);
  v21 = *(a1 + 200);
  if (v21)
  {
    v22 = *(a1 + 208);
    v23 = *(a1 + 200);
    if (v22 != v21)
    {
      do
      {
        v25 = *(v22 - 24);
        if (v25)
        {
          v26 = *(v22 - 16);
          v24 = *(v22 - 24);
          if (v26 != v25)
          {
            do
            {
              v27 = *(v26 - 9);
              v26 -= 4;
              if (v27 < 0)
              {
                operator delete(*v26);
              }
            }

            while (v26 != v25);
            v24 = *(v22 - 24);
          }

          *(v22 - 16) = v25;
          operator delete(v24);
        }

        v22 -= 104;
      }

      while (v22 != v21);
      v23 = *v20;
    }

    *(a1 + 208) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  *(a1 + 200) = *(a2 + 25);
  *(a1 + 216) = a2[27];
  a2[25] = 0;
  a2[26] = 0;
  a2[27] = 0;
  *(a1 + 224) = *(a2 + 14);
  return a1;
}

uint64_t sub_49C7F4(void *a1)
{
  v1 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v4 = 0x111111111111111;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    if (v4 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 240 * v1;
  __p = 0;
  v12 = v5;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  *v5 = -1;
  *(v5 + 8) = 0x7FFFFFFF;
  *(v5 + 16) = -1;
  *(v5 + 24) = -1;
  *(v5 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(v5 + 48) = -1935635296;
  *(v5 + 63) = 0;
  *(v5 + 56) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 96) = 0;
  *(v5 + 88) = 0;
  *(v5 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(v5 + 112) = 100;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = vnegq_f64(v6);
  *(v5 + 216) = 0;
  *(v5 + 200) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 224) = 1;
  *(v5 + 236) = 0;
  *(v5 + 228) = 0;
  v13 = 240 * v1 + 240;
  v14 = 0;
  sub_49C9C4(a1, &__p);
  v7 = a1[1];
  v9 = v12;
  for (i = v13; v13 != v9; i = v13)
  {
    v13 = i - 240;
    sub_49AEC0((i - 240));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_49C9B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49CB28(va);
  _Unwind_Resume(a1);
}

char *sub_49C9C4(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = *v8;
      v10 = *(v8 + 1);
      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      *(v9 + 63) = *(v8 + 63);
      *(v9 + 2) = v11;
      *(v9 + 3) = v12;
      *(v9 + 1) = v10;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0;
      *(v9 + 9) = 0;
      *(v9 + 72) = *(v8 + 72);
      *(v9 + 11) = *(v8 + 11);
      *(v8 + 9) = 0;
      *(v8 + 10) = 0;
      *(v8 + 11) = 0;
      v13 = *(v8 + 6);
      v9[112] = v8[112];
      *(v9 + 6) = v13;
      v14 = *(v8 + 120);
      *(v9 + 136) = *(v8 + 136);
      *(v9 + 120) = v14;
      *(v9 + 19) = *(v8 + 19);
      *(v9 + 10) = *(v8 + 10);
      *(v8 + 19) = 0;
      *(v8 + 20) = 0;
      *(v8 + 21) = 0;
      *(v9 + 22) = 0;
      *(v9 + 23) = 0;
      *(v9 + 24) = 0;
      *(v9 + 11) = *(v8 + 11);
      *(v9 + 24) = *(v8 + 24);
      *(v8 + 22) = 0;
      *(v8 + 23) = 0;
      *(v8 + 24) = 0;
      *(v9 + 25) = 0;
      *(v9 + 26) = 0;
      *(v9 + 27) = 0;
      *(v9 + 200) = *(v8 + 200);
      *(v9 + 27) = *(v8 + 27);
      *(v8 + 25) = 0;
      *(v8 + 26) = 0;
      *(v8 + 27) = 0;
      *(v9 + 14) = *(v8 + 14);
      v8 += 240;
      v9 += 240;
    }

    while (v8 != v5);
    do
    {
      result = (sub_49AEC0(result) + 30);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v15 = *a1;
  *a1 = v7;
  *(a1 + 8) = v15;
  a2[1] = v15;
  v16 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t sub_49CB28(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    sub_49AEC0((i - 240));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_49CB7C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, unsigned __int8 *a6)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 - *a1;
  v9 = 0x4EC4EC4EC4EC4EC5 * (v8 >> 3);
  v10 = v9 + 1;
  if ((v9 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - v6) >> 3) > v10)
  {
    v10 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - v6) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - v6) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v12 = 0x276276276276276;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = *a2;
  v14 = *a4;
  v15 = 8 * (v8 >> 3);
  v16 = *a6 | 0x100;
  v17 = *a3;
  *v15 = *a5;
  *(v15 + 8) = v17;
  *(v15 + 16) = *(a3 + 2);
  *(v15 + 24) = v14;
  *(v15 + 32) = v13;
  *(v15 + 40) = v16;
  *(v15 + 42) = 257;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 2139095039;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  v18 = v15 + 104;
  v19 = v15 - v8;
  *(v15 + 96) = 0;
  if (v6 != v7)
  {
    v20 = v6;
    v21 = v19;
    do
    {
      *v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 + 2);
      v24 = *(v20 + 3);
      *(v21 + 64) = *(v20 + 64);
      *(v21 + 32) = v23;
      *(v21 + 48) = v24;
      *(v21 + 16) = v22;
      *(v21 + 72) = *(v20 + 18);
      *(v21 + 88) = 0;
      *(v21 + 96) = 0;
      *(v21 + 80) = *(v20 + 5);
      *(v21 + 96) = v20[12];
      v20[10] = 0;
      v20[11] = 0;
      v20[12] = 0;
      v20 += 13;
      v21 += 104;
    }

    while (v20 != v7);
    do
    {
      v26 = v6[10];
      if (v26)
      {
        v27 = v6[11];
        v25 = v6[10];
        if (v27 != v26)
        {
          do
          {
            v28 = *(v27 - 9);
            v27 -= 4;
            if (v28 < 0)
            {
              operator delete(*v27);
            }
          }

          while (v27 != v26);
          v25 = v6[10];
        }

        v6[11] = v26;
        operator delete(v25);
      }

      v6 += 13;
    }

    while (v6 != v7);
    v6 = *a1;
  }

  *a1 = v19;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return 104 * v9 + 104;
}

uint64_t sub_49CDB8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_49D1B0(a1, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_49D1B0(a1 + 48, *(a2 + 48), *(a2 + 56), 0xF128CFC4A33F128DLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v6 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9 != v8)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v9 - v8) >> 4) < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  sub_49D094(a1 + 144, a2 + 144);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_49CFD8(_Unwind_Exception *a1)
{
  sub_487EC4(v2);
  sub_454784(v1);
  _Unwind_Resume(a1);
}

void sub_49D008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 128) = v12;
  sub_49DF70(&a9);
  sub_34BE0(v11);
  sub_454784(v10);
  sub_454784(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_49D094(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v2 = *(a2 + 8);
    if (v2 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    *(result + 24) = 1;
  }

  return result;
}

void sub_49D178(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  if (*(v1 + 24) == 1)
  {
    v4 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_49D1B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x76B981DAE6076CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_49D298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 552;
    v15 = -v12;
    do
    {
      v14 = sub_4547F0(v14) - 552;
      v15 += 552;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_49D8D0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_49D2CC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v9 = *(a2 + 3);
    v8 = *(a2 + 4);
    v7 = v8 - v9;
    if (v8 == v9)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((0x2E8BA2E8BA2E8BA3 * (v7 >> 3)) < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

LABEL_7:
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = *(a2 + 12);
  *(a1 + 104) = 0;
  *(a1 + 96) = v13;
  *(a1 + 80) = v12;
  *(a1 + 64) = v11;
  *(a1 + 48) = v10;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v14 = *(a2 + 13);
  v15 = *(a2 + 14);
  if (v15 != v14)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 3)) <= 0x492492492492492)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v17 = *(a2 + 16);
  v16 = *(a2 + 17);
  if (v16 != v17)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v16 - v17) >> 3)) <= 0x492492492492492)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v19 = *(a2 + 19);
  v18 = *(a2 + 20);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_3EDBB0(a1 + 176, a2 + 11);
  v20 = *(a2 + 312);
  v21 = *(a2 + 328);
  v22 = *(a2 + 360);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v22;
  *(a1 + 312) = v20;
  *(a1 + 328) = v21;
  v23 = *(a2 + 376);
  v24 = *(a2 + 392);
  v25 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v25;
  *(a1 + 376) = v23;
  *(a1 + 392) = v24;
  v26 = *(a2 + 440);
  v27 = *(a2 + 456);
  v28 = *(a2 + 488);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 488) = v28;
  *(a1 + 440) = v26;
  *(a1 + 456) = v27;
  sub_81988((a1 + 504), a2 + 504);
  *(a1 + 544) = 0;
  *(a1 + 528) = 0u;
  v29 = *(a2 + 66);
  v30 = *(a2 + 67);
  if (v30 != v29)
  {
    if (((v30 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_49D608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 112) = v10;
  sub_49D84C(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 32) = v13;
    operator delete(v13);
    if (*(v9 + 23) < 0)
    {
LABEL_3:
      operator delete(*v9);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v9 + 23) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_49D6D0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      *(a4 + 32) = 0;
      *a4 = v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      v9 = *(v5 + 4);
      v8 = *(v5 + 5);
      if (v8 != v9)
      {
        if (((v8 - v9) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 = (v5 + 56);
      a4 += 56;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_49D7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  sub_49D7E8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_49D7E8(uint64_t a1)
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
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 56;
    }
  }

  return a1;
}

void ***sub_49D84C(void ***a1)
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
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v4 -= 56;
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

void ***sub_49D8D0(void ***result)
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
          v4 = sub_4547F0(v4 - 552);
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

void *sub_49D948(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_49DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_47D80(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_49DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      v10 = *(a2 + v7 + 16);
      v11 = *(a2 + v7 + 32);
      v12 = *(a2 + v7 + 48);
      *(v9 + 63) = *(a2 + v7 + 63);
      *(v9 + 32) = v11;
      *(v9 + 48) = v12;
      *(v9 + 16) = v10;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = 0;
      v14 = *(a2 + v7 + 72);
      v13 = *(a2 + v7 + 80);
      if (v13 != v14)
      {
        if (((v13 - v14) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v15 = *(v8 + 96);
      *(v9 + 112) = *(v8 + 112);
      *(v9 + 96) = v15;
      v16 = *(v8 + 120);
      *(v9 + 136) = *(v8 + 136);
      *(v9 + 120) = v16;
      sub_81988((v9 + 152), v8 + 152);
      sub_49DC18((a4 + v7 + 176), (a2 + v7 + 176));
      sub_49DC18((a4 + v7 + 200), (a2 + v7 + 200));
      *(a4 + v7 + 224) = *(v8 + 224);
      v7 += 240;
    }

    while (v8 + 240 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_49DBA8(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + v2 + 72);
  if (v4)
  {
    *(v1 + v2 + 80) = v4;
    operator delete(v4);
  }

  if (v2)
  {
    v5 = (v1 + v2 - 240);
    v6 = -v2;
    do
    {
      v5 = sub_49AEC0(v5) - 30;
      v6 += 240;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

void *sub_49DC18(void *result, void *a2)
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

void sub_49DD4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49DEB0(va);
  _Unwind_Resume(a1);
}

void sub_49DD60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  sub_49BBE8(va1);
  *(v2 + 8) = v3;
  sub_49DEB0(va);
  _Unwind_Resume(a1);
}

void *sub_49DD80(void *result, void *a2)
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

void sub_49DE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_49A814(&a11);
  *(v11 + 8) = v12;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

void ***sub_49DEB0(void ***a1)
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
          v7 = *(v4 - 3);
          if (v7)
          {
            v8 = *(v4 - 2);
            v6 = *(v4 - 3);
            if (v8 != v7)
            {
              do
              {
                v9 = *(v8 - 9);
                v8 -= 4;
                if (v9 < 0)
                {
                  operator delete(*v8);
                }
              }

              while (v8 != v7);
              v6 = *(v4 - 3);
            }

            *(v4 - 2) = v7;
            operator delete(v6);
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

void ***sub_49DF70(void ***result)
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
          v4 = sub_49AEC0(v4 - 30);
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

double sub_49DFE8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v28 = 8 * ((a1[1] - *a1) >> 3);
  *v28 = *a2;
  *(v28 + 16) = *(a2 + 16);
  *(a2 + 8) = 0u;
  *a2 = 0;
  *(v28 + 24) = *(a2 + 24);
  *(v28 + 40) = *(a2 + 40);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  *(v28 + 96) = *(a2 + 96);
  *(v28 + 64) = v7;
  *(v28 + 80) = v8;
  *(v28 + 48) = v6;
  *(v28 + 104) = *(a2 + 104);
  *(v28 + 120) = *(a2 + 120);
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  *(v28 + 128) = *(a2 + 128);
  *(v28 + 144) = *(a2 + 144);
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(v28 + 152) = *(a2 + 152);
  *(v28 + 168) = *(a2 + 168);
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  v9 = *(a2 + 176);
  v10 = *(a2 + 192);
  *(v28 + 208) = *(a2 + 208);
  *(v28 + 176) = v9;
  *(v28 + 192) = v10;
  *(v28 + 216) = *(a2 + 216);
  *(v28 + 232) = *(a2 + 232);
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(v28 + 240) = *(a2 + 240);
  *(v28 + 256) = *(a2 + 256);
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  v11 = *(a2 + 264);
  v12 = *(a2 + 296);
  *(v28 + 280) = *(a2 + 280);
  *(v28 + 296) = v12;
  *(v28 + 264) = v11;
  v13 = *(a2 + 312);
  v14 = *(a2 + 328);
  v15 = *(a2 + 360);
  *(v28 + 344) = *(a2 + 344);
  *(v28 + 360) = v15;
  *(v28 + 312) = v13;
  *(v28 + 328) = v14;
  v16 = *(a2 + 376);
  v17 = *(a2 + 392);
  v18 = *(a2 + 424);
  *(v28 + 408) = *(a2 + 408);
  *(v28 + 424) = v18;
  *(v28 + 376) = v16;
  *(v28 + 392) = v17;
  v19 = *(a2 + 440);
  v20 = *(a2 + 456);
  v21 = *(a2 + 488);
  *(v28 + 472) = *(a2 + 472);
  *(v28 + 488) = v21;
  *(v28 + 440) = v19;
  *(v28 + 456) = v20;
  *(v28 + 504) = *(a2 + 504);
  *(a2 + 504) = 0;
  v22 = *(a2 + 528);
  *(v28 + 512) = *(a2 + 512);
  *(v28 + 528) = v22;
  *(v28 + 544) = *(a2 + 544);
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0;
  v23 = a1[1];
  v24 = 552 * v2 + *a1 - v23;
  sub_49B478(a1, *a1, v23, v24);
  v25 = *a1;
  *a1 = v24;
  v26 = 552 * v2 + 552;
  *(a1 + 1) = v26;
  if (v25)
  {
    operator delete(v25);
    *&v26 = 552 * v2 + 552;
  }

  return *&v26;
}

void sub_49E264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_49E278(uint64_t *a1)
{
  v1 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v4 = 0x76B981DAE6076BLL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = 8 * ((a1[1] - *a1) >> 3);
  sub_F6BEE8(v10);
  v5 = 552 * v1 + 552;
  v6 = a1[1];
  v7 = v10 + *a1 - v6;
  sub_49B478(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  a1[1] = v5;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_49E3B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_49E3C4(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if ((0xF128CFC4A33F128DLL * ((v8 - v9) >> 3)) >= a5)
    {
      v14 = v9 - a2;
      if ((0xF128CFC4A33F128DLL * ((v9 - a2) >> 3)) >= a5)
      {
        v18 = 552 * a5;
        sub_49BF40(a1, a2, a1[1], a2 + 552 * a5);
        v19 = (v6 + v18);
        v20 = v5;
        do
        {
          sub_49C304(v20, v6);
          v6 = (v6 + 552);
          v20 += 552;
        }

        while (v6 != v19);
      }

      else
      {
        v16 = (a3 + v14);
        a1[1] = sub_49C15C(a1, (a3 + v14), a4, a1[1]);
        if (v14 >= 1)
        {
          sub_49BF40(a1, v5, v9, v5 + 552 * a5);
          v17 = v5;
          do
          {
            sub_49C304(v17, v6);
            v6 = (v6 + 552);
            v17 += 552;
          }

          while (v6 != v16);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 - 0xED7303B5CC0ED73 * ((v9 - *a1) >> 3);
      if (v11 > 0x76B981DAE6076BLL)
      {
        sub_1794();
      }

      v12 = 0xF128CFC4A33F128DLL * ((v8 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3B5CC0ED7303B5)
      {
        v13 = 0x76B981DAE6076BLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (v13 <= 0x76B981DAE6076BLL)
        {
          operator new();
        }

        sub_1808();
      }

      v21 = 8 * ((a2 - v10) >> 3);
      v28 = v21;
      v22 = 552 * a5;
      v23 = v21 + 552 * a5;
      do
      {
        sub_49B298(a1, v21, v6);
        v21 += 552;
        v6 = (v6 + 552);
        v22 -= 552;
      }

      while (v22);
      sub_49B478(a1, v5, a1[1], v23);
      v24 = *a1;
      v29 = v23 + a1[1] - v5;
      a1[1] = v5;
      v25 = v28 + v24 - v5;
      sub_49B478(a1, v24, v5, v25);
      v26 = *a1;
      *a1 = v25;
      a1[1] = v29;
      a1[2] = 0;
      if (v26)
      {
        operator delete(v26);
      }

      return v28;
    }
  }

  return v5;
}

void sub_49E650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

void sub_49E664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_49E67C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_49E958(a1, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_49E958(a1 + 48, *(a2 + 48), *(a2 + 56), 0xF128CFC4A33F128DLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v6 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9 != v8)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v9 - v8) >> 4) < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  sub_49D094(a1 + 144, a2 + 144);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_49E89C(_Unwind_Exception *a1)
{
  sub_487EC4(v2);
  sub_454784(v1);
  _Unwind_Resume(a1);
}

void sub_49E8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 128) = v12;
  sub_49DF70(&a9);
  sub_34BE0(v11);
  sub_454784(v10);
  sub_454784(v9);
  _Unwind_Resume(a1);
}

void sub_49E958(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x76B981DAE6076CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_49EA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 552;
    v15 = -v12;
    do
    {
      v14 = sub_4547F0(v14) - 552;
      v15 += 552;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_49D8D0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_49EA74(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v9 = *(a2 + 3);
    v8 = *(a2 + 4);
    v7 = v8 - v9;
    if (v8 == v9)
    {
      goto LABEL_7;
    }

LABEL_5:
    if (0xAAAAAAAAAAAAAAABLL * (v7 >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

LABEL_7:
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = *(a2 + 12);
  *(a1 + 104) = 0;
  *(a1 + 96) = v13;
  *(a1 + 80) = v12;
  *(a1 + 64) = v11;
  *(a1 + 48) = v10;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v14 = *(a2 + 13);
  v15 = *(a2 + 14);
  if (v15 != v14)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 3)) <= 0x492492492492492)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v17 = *(a2 + 16);
  v16 = *(a2 + 17);
  if (v16 != v17)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v16 - v17) >> 3)) <= 0x492492492492492)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v19 = *(a2 + 19);
  v18 = *(a2 + 20);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_3EDBB0(a1 + 176, a2 + 11);
  v20 = *(a2 + 312);
  v21 = *(a2 + 328);
  v22 = *(a2 + 360);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v22;
  *(a1 + 312) = v20;
  *(a1 + 328) = v21;
  v23 = *(a2 + 376);
  v24 = *(a2 + 392);
  v25 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v25;
  *(a1 + 376) = v23;
  *(a1 + 392) = v24;
  v26 = *(a2 + 440);
  v27 = *(a2 + 456);
  v28 = *(a2 + 488);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 488) = v28;
  *(a1 + 440) = v26;
  *(a1 + 456) = v27;
  sub_81988((a1 + 504), a2 + 504);
  *(a1 + 544) = 0;
  *(a1 + 528) = 0u;
  v29 = *(a2 + 66);
  v30 = *(a2 + 67);
  if (v30 != v29)
  {
    if (((v30 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_49EDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 112) = v10;
  sub_49D84C(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 32) = v13;
    operator delete(v13);
    if (*(v9 + 23) < 0)
    {
LABEL_3:
      operator delete(*v9);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v9 + 23) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_49EE6C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      *(a4 + 32) = 0;
      *a4 = v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      v9 = *(v5 + 4);
      v8 = *(v5 + 5);
      if (v8 != v9)
      {
        if (((v8 - v9) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 = (v5 + 56);
      a4 += 56;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_49EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  sub_49D7E8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_49EF84(uint64_t *a1)
{
  v1 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v4 = 0x76B981DAE6076BLL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = 8 * ((a1[1] - *a1) >> 3);
  sub_F6EB3C(v10);
  v5 = 552 * v1 + 552;
  v6 = a1[1];
  v7 = v10 + *a1 - v6;
  sub_49B478(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  a1[1] = v5;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_49F0BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_49F0D0(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if ((0xF128CFC4A33F128DLL * ((v8 - v9) >> 3)) >= a5)
    {
      v14 = v9 - a2;
      if ((0xF128CFC4A33F128DLL * ((v9 - a2) >> 3)) >= a5)
      {
        v18 = 552 * a5;
        sub_49BF40(a1, a2, a1[1], a2 + 552 * a5);
        v19 = (v6 + v18);
        v20 = v5;
        do
        {
          sub_49C304(v20, v6);
          v6 = (v6 + 552);
          v20 += 552;
        }

        while (v6 != v19);
      }

      else
      {
        v16 = (a3 + v14);
        a1[1] = sub_49C15C(a1, (a3 + v14), a4, a1[1]);
        if (v14 >= 1)
        {
          sub_49BF40(a1, v5, v9, v5 + 552 * a5);
          v17 = v5;
          do
          {
            sub_49C304(v17, v6);
            v6 = (v6 + 552);
            v17 += 552;
          }

          while (v6 != v16);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 - 0xED7303B5CC0ED73 * ((v9 - *a1) >> 3);
      if (v11 > 0x76B981DAE6076BLL)
      {
        sub_1794();
      }

      v12 = 0xF128CFC4A33F128DLL * ((v8 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3B5CC0ED7303B5)
      {
        v13 = 0x76B981DAE6076BLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (v13 <= 0x76B981DAE6076BLL)
        {
          operator new();
        }

        sub_1808();
      }

      v21 = 8 * ((a2 - v10) >> 3);
      v28 = v21;
      v22 = 552 * a5;
      v23 = v21 + 552 * a5;
      do
      {
        sub_49B298(a1, v21, v6);
        v21 += 552;
        v6 = (v6 + 552);
        v22 -= 552;
      }

      while (v22);
      sub_49B478(a1, v5, a1[1], v23);
      v24 = *a1;
      v29 = v23 + a1[1] - v5;
      a1[1] = v5;
      v25 = v28 + v24 - v5;
      sub_49B478(a1, v24, v5, v25);
      v26 = *a1;
      *a1 = v25;
      a1[1] = v29;
      a1[2] = 0;
      if (v26)
      {
        operator delete(v26);
      }

      return v28;
    }
  }

  return v5;
}

void sub_49F35C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

void sub_49F370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_49F388(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_49F664(a1, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_49F664(a1 + 48, *(a2 + 48), *(a2 + 56), 0xF128CFC4A33F128DLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v6 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9 != v8)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v9 - v8) >> 4) < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  sub_49D094(a1 + 144, a2 + 144);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_49F5A8(_Unwind_Exception *a1)
{
  sub_487EC4(v2);
  sub_454784(v1);
  _Unwind_Resume(a1);
}

void sub_49F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 128) = v12;
  sub_49DF70(&a9);
  sub_34BE0(v11);
  sub_454784(v10);
  sub_454784(v9);
  _Unwind_Resume(a1);
}

void sub_49F664(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x76B981DAE6076CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_49F74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 552;
    v15 = -v12;
    do
    {
      v14 = sub_4547F0(v14) - 552;
      v15 += 552;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_49D8D0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_49F780(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v9 = *(a2 + 3);
    v8 = *(a2 + 4);
    v7 = v8 - v9;
    if (v8 == v9)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((0x2E8BA2E8BA2E8BA3 * (v7 >> 3)) < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

LABEL_7:
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = *(a2 + 12);
  *(a1 + 104) = 0;
  *(a1 + 96) = v13;
  *(a1 + 80) = v12;
  *(a1 + 64) = v11;
  *(a1 + 48) = v10;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v14 = *(a2 + 13);
  v15 = *(a2 + 14);
  if (v15 != v14)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 3)) <= 0x492492492492492)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v17 = *(a2 + 16);
  v16 = *(a2 + 17);
  if (v16 != v17)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v16 - v17) >> 3)) <= 0x492492492492492)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v19 = *(a2 + 19);
  v18 = *(a2 + 20);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_3EDBB0(a1 + 176, a2 + 11);
  v20 = *(a2 + 312);
  v21 = *(a2 + 328);
  v22 = *(a2 + 360);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v22;
  *(a1 + 312) = v20;
  *(a1 + 328) = v21;
  v23 = *(a2 + 376);
  v24 = *(a2 + 392);
  v25 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v25;
  *(a1 + 376) = v23;
  *(a1 + 392) = v24;
  v26 = *(a2 + 440);
  v27 = *(a2 + 456);
  v28 = *(a2 + 488);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 488) = v28;
  *(a1 + 440) = v26;
  *(a1 + 456) = v27;
  sub_81988((a1 + 504), a2 + 504);
  *(a1 + 544) = 0;
  *(a1 + 528) = 0u;
  v29 = *(a2 + 66);
  v30 = *(a2 + 67);
  if (v30 != v29)
  {
    if (((v30 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_49FABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 112) = v10;
  sub_49D84C(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 32) = v13;
    operator delete(v13);
    if (*(v9 + 23) < 0)
    {
LABEL_3:
      operator delete(*v9);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v9 + 23) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_49FB84(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      *(a4 + 32) = 0;
      *a4 = v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      v9 = *(v5 + 4);
      v8 = *(v5 + 5);
      if (v8 != v9)
      {
        if (((v8 - v9) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 = (v5 + 56);
      a4 += 56;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_49FC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  sub_49D7E8(&a9);
  _Unwind_Resume(a1);
}

void sub_49FC9C(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != *a3 || a2[1] != a3[1] || a2[2] != a3[2] || a2[3] != a3[3])
  {
    sub_19594F8(&v10);
    v5 = sub_4A5C(&v10, " precision loss for arc ", 24);
    std::ostream::operator<<();
    v6 = sub_4A5C(v5, " -> ", 4);
    std::ostream::operator<<();
    v7 = sub_4A5C(v6, ", crossing data ", 16);
    v8 = sub_F91D6C(v7, a3);
    v9 = sub_4A5C(v8, " clamped to ", 12);
    sub_F91D6C(v9, a2);
    sub_7D6BC();
    operator new();
  }
}

void sub_4A0048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      sub_1959728(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_4A00B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4A00CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v29 = a3;
  LODWORD(__key[0]) = 1;
  *__p = 0u;
  v27 = 0u;
  v28 = 0u;
  sub_2B1DB8(__p, __key, 1uLL);
  v5 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = *(*(__p[1] + ((v28 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v28 & 0x3FF));
    *&v28 = v28 + 1;
    *(&v28 + 1) = v5 - 1;
    if (v28 >= 0x800)
    {
      operator delete(*__p[1]);
      __p[1] = __p[1] + 8;
      *&v28 = v28 - 1024;
    }

    v7 = sub_2D52A4(*a1, 39, v6, 1);
    if (v8)
    {
      v9 = (v7 + *v7);
      v10 = (v9 - *v9);
      if (*v10 >= 7u)
      {
        v11 = v10[3];
        if (v11)
        {
          v12 = (v9 + v11);
          v13 = *v12;
          __key[0] = a2;
          v14 = bsearch(__key, v12 + v13 + 4, *(v12 + v13), 0x10uLL, sub_2B2694);
          if (v14)
          {
            v15 = v14[1];
            if (HIDWORD(v15))
            {
              break;
            }
          }
        }
      }
    }

    v16 = sub_57A90(v6);
    v17 = sub_57A90(v6) >> 1;
    if (v16 <= 0x1D && v17 <= v16 >> 1)
    {
      sub_57A90(v6);
      operator new();
    }

    __key[0] = &v29;
    __key[1] = a1;
    sub_4A04C4(0, 0, __p, __key);
    v5 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      goto LABEL_21;
    }
  }

  if (sub_2D5204(*a1))
  {
    v19 = v15 & 0xFFFFFFFF00000000 | (v15 >> 4);
  }

  else
  {
LABEL_21:
    v19 = 0xFFFFFFFFLL;
  }

  v20 = __p[1];
  v21 = v27;
  *(&v28 + 1) = 0;
  v22 = (v27 - __p[1]) >> 3;
  if (v22 >= 3)
  {
    do
    {
      operator delete(*v20);
      v21 = v27;
      v20 = (__p[1] + 8);
      __p[1] = v20;
      v22 = (v27 - v20) >> 3;
    }

    while (v22 > 2);
  }

  if (v22 == 1)
  {
    v23 = 512;
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_29;
    }

    v23 = 1024;
  }

  *&v28 = v23;
LABEL_29:
  if (v20 != v21)
  {
    do
    {
      v24 = *v20++;
      operator delete(v24);
    }

    while (v20 != v21);
    if (v27 != __p[1])
    {
      *&v27 = v27 + ((__p[1] - v27 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v19;
}

void sub_4A0420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2B2E00(va);
  _Unwind_Resume(a1);
}

void sub_4A0434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (a13 == a12)
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_4A047C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    operator delete(v11);
    sub_2B2E00(&a11);
    _Unwind_Resume(a1);
  }

  sub_2B2E00(&a11);
  _Unwind_Resume(a1);
}

unsigned int *sub_4A04C4(unsigned int *a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v5 = a1;
  if (a1 != a2)
  {
    do
    {
      v8 = *v5;
      if (sub_4A05E8(*a4, *v5))
      {
        v9 = sub_2D52A4(**(a4 + 8), 39, v8, 1);
        if (v10)
        {
          v11 = (v9 + *v9);
          v12 = (v11 - *v11);
          if (*v12 >= 5u)
          {
            v13 = v12[2];
            if (v13)
            {
              if (*(v11 + v13))
              {
                v14 = a3[2];
                v15 = a3[1];
                if (v14 == v15)
                {
                  v16 = 0;
                }

                else
                {
                  v16 = ((v14 - v15) << 7) - 1;
                }

                v17 = a3[5];
                v18 = v17 + a3[4];
                if (v16 == v18)
                {
                  sub_2B2A38(a3);
                  v15 = a3[1];
                  v17 = a3[5];
                  v18 = a3[4] + v17;
                }

                *(*(v15 + ((v18 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v18 & 0x3FF)) = *v5;
                a3[5] = v17 + 1;
              }
            }
          }
        }
      }

      ++v5;
    }

    while (v5 != a2);
    return a2;
  }

  return v5;
}

uint64_t sub_4A05E8(uint64_t a1, unsigned int a2)
{
  if (a2 && (**a1 != -1 || *(*a1 + 4) != -1))
  {
    sub_7FD28(0x26u);
    sub_57A90(a2);
    operator new();
  }

  return 1;
}

void sub_4A0808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_4A084C(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 3664) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 3672) = v3;
    v4 = *(a1 + 3680);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 3688) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 3696) = v3;
    v4 = *(a1 + 3704);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 3712) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 3720) = v3;
    v4 = *(a1 + 3728);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 3736) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 3744) = v3;
    v4 = *(a1 + 3752);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 3720);
    v8 = *(a1 + 3696);
    v9 = *(a1 + 3672);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 3672);
    }

    v11 = 152;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 3696);
    }

    v13 = 153;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 3720);
    }

    v15 = *(a1 + 3744);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 154;
    }

    v18 = sub_2D52A4(*a1, 38, a2, 1);
    v19 = 155;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_4A0A20(v21);
  return 0;
}

uint64_t sub_4A0A20(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x26u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_4A0B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4A0B4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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

void sub_4A0D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  v16 = *v14;
  if (*v14)
  {
    *(v13 + 80) = v16;
    operator delete(v16);
  }

  sub_4A0D48(&a11);
  *(v11 + 8) = v12;
  sub_4A0DB8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4A0D48(uint64_t a1)
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
        operator delete(v5);
      }

      v6 = *(v3 - 104);
      if (v6)
      {
        *(v3 - 96) = v6;
        operator delete(v6);
      }

      v3 -= 176;
    }
  }

  return a1;
}

void ***sub_4A0DB8(void ***a1)
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
          v6 = *(v4 - 3);
          if (v6)
          {
            operator delete(v6);
          }

          v7 = *(v4 - 13);
          if (v7)
          {
            *(v4 - 12) = v7;
            operator delete(v7);
          }

          v4 -= 176;
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

uint64_t sub_4A0E48(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_4A0FD4(v15, a2);
  v6 = 176 * v2 + 176;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      v13 = sub_4A1BB0(v12, v11);
      v11 += 176;
      v12 = v13 + 176;
    }

    while (v11 != v8);
    do
    {
      sub_463370(v7);
      v7 += 22;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_4A0FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4A1B5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4A0FD4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = 0;
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v8 = *(a2 + 5);
  v7 = *(a2 + 6);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v10 = *(a2 + 8);
  v9 = *(a2 + 9);
  if (v9 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = *(a2 + 30);
  prime = *(a2 + 12);
  if (prime == 1)
  {
    prime = 2;
LABEL_26:
    sub_B07C(a1 + 88, prime);
    goto LABEL_27;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 12));
    v12 = *(a1 + 96);
    v13 = prime >= *&v12;
    if (prime > *&v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
    if (prime)
    {
      goto LABEL_26;
    }
  }

  if (!v13)
  {
    v14 = vcvtps_u32_f32(*(a1 + 112) / *(a1 + 120));
    if (*&v12 < 3uLL || (v15 = vcnt_s8(v12), v15.i16[0] = vaddlv_u8(v15), v15.u32[0] > 1uLL))
    {
      v14 = std::__next_prime(v14);
    }

    else
    {
      v16 = 1 << -__clz(v14 - 1);
      if (v14 >= 2)
      {
        v14 = v16;
      }
    }

    if (prime <= v14)
    {
      prime = v14;
    }

    if (prime < *&v12)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  for (i = *(a2 + 13); i; i = *i)
  {
    sub_4A1400((a1 + 88), i + 2);
  }

  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = *(a2 + 40);
  v18 = *(a2 + 17);
  if (v18 == 1)
  {
    v18 = 2;
LABEL_45:
    sub_B07C(a1 + 128, v18);
    goto LABEL_46;
  }

  if ((v18 & (v18 - 1)) != 0)
  {
    v18 = std::__next_prime(*(a2 + 17));
    v19 = *(a1 + 136);
    v20 = v18 >= *&v19;
    if (v18 > *&v19)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v19 = 0;
    v20 = 1;
    if (v18)
    {
      goto LABEL_45;
    }
  }

  if (!v20)
  {
    v21 = vcvtps_u32_f32(*(a1 + 152) / *(a1 + 160));
    if (*&v19 < 3uLL || (v22 = vcnt_s8(v19), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
    {
      v21 = std::__next_prime(v21);
    }

    else
    {
      v23 = 1 << -__clz(v21 - 1);
      if (v21 >= 2)
      {
        v21 = v23;
      }
    }

    if (v18 <= v21)
    {
      v18 = v21;
    }

    if (v18 < *&v19)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  for (j = *(a2 + 18); j; j = *j)
  {
    sub_4A1828((a1 + 128), j + 2);
  }

  *(a1 + 168) = *(a2 + 168);
  return a1;
}

void sub_4A1360(_Unwind_Exception *a1)
{
  sub_11BD8(v3);
  sub_39AFC(v2);
  v8 = *v6;
  if (*v6)
  {
    v1[9] = v8;
    operator delete(v8);
    v9 = *v5;
    if (!*v5)
    {
LABEL_3:
      v10 = *v4;
      if (!*v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v9 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  v1[6] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_4:
  v1[3] = v10;
  operator delete(v10);
  goto LABEL_5;
}

void *sub_4A1400(void *a1, unint64_t *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    sub_4A1718();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (result[2] == v2)
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

  if (result[2] != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_4A1704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void sub_4A1804(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 32) = v5;
    operator delete(v5);
  }

  sub_39EA4(v1);
  _Unwind_Resume(a1);
}

void *sub_4A1828(void *a1, unint64_t *a2)
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

uint64_t sub_4A1B5C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    sub_463370((i - 176));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_4A1BB0(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = *(a2 + 40);
  *(result + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v2 = *(a2 + 104);
  *(result + 64) = *(a2 + 64);
  v3 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(result + 104) = v2;
  v4 = *(a2 + 96);
  *(result + 88) = v3;
  *(result + 96) = v4;
  *(a2 + 96) = 0;
  v5 = *(a2 + 112);
  *(result + 112) = v5;
  *(result + 120) = *(a2 + 120);
  if (v5)
  {
    v6 = *(v2 + 8);
    v7 = *(result + 96);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v3 + 8 * v6) = result + 104;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
  }

  v8 = *(a2 + 144);
  *(result + 144) = v8;
  v9 = *(a2 + 128);
  *(result + 136) = *(a2 + 136);
  *(a2 + 128) = 0;
  *(result + 128) = v9;
  *(a2 + 136) = 0;
  v10 = *(a2 + 152);
  *(result + 152) = v10;
  *(result + 160) = *(a2 + 160);
  if (v10)
  {
    v11 = *(v8 + 8);
    v12 = *(result + 136);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v9 + 8 * v11) = result + 144;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
  }

  *(result + 168) = *(a2 + 168);
  return result;
}

uint64_t sub_4A1CF4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0x2E8BA2E8BA2E8BA3 * (v3 >> 4) + 1;
  if (v4 > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - v1) >> 4) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((*(a1 + 16) - v1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - v1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (v3 >> 4);
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 120) = 1065353216;
  *(v7 + 160) = 1065353216;
  v8 = v7 + 176;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v7 - v3;
    do
    {
      v12 = sub_4A1BB0(v11, v10);
      v10 += 176;
      v11 = v12 + 176;
    }

    while (v10 != v2);
    do
    {
      sub_463370(v1);
      v1 += 22;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

void sub_4A1E70(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_4A1F1C(&v7, a2, a1);
  v5 = *a1;
  v4 = a1[1];
  for (i = a2; v5 != v4; v5 += 48)
  {
    LOBYTE(v7) = sub_585D8((v5 + 16));
    *(&v7 + 1) = sub_585E0(v5 + 16);
    v8 = v6;
    sub_4A2024(&i, &v7);
  }
}

void sub_4A1EFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4A1F1C(uint64_t a1, void *a2, void *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) - 0x5555555555555555 * ((a3[1] - *a3) >> 4);
  if (0xAAAAAAAAAAAAAAABLL * ((a2[2] - *a2) >> 3) < v3)
  {
    if (v3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t *sub_4A2024(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v5;
    v6 = (v3 + 3);
LABEL_3:
    *(v2 + 8) = v6;
    return result;
  }

  v7 = *v2;
  v8 = v3 - *v2;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
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

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  if (v7 != v3)
  {
    v14 = v13;
    do
    {
      v15 = *v7;
      *(v14 + 16) = v7[2];
      *v14 = v15;
      v14 += 24;
      v7 += 3;
    }

    while (v7 != v3);
    v7 = *v2;
  }

  *v2 = v13;
  *(v2 + 8) = v6;
  *(v2 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  v16 = result;
  operator delete(v7);
  result = v16;
  *(v2 + 8) = v6;
  return result;
}

void sub_4A21A4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if (*(a1 + 79))
    {
      *a2 = *(a1 + 56);
      *(a2 + 16) = *(a1 + 72);
      return;
    }

    goto LABEL_8;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
LABEL_8:
    sub_1218A44(v20, 0, 0);
    v6 = *(a1 + 32);
    for (i = *(a1 + 40); v6 != i; v6 += 4)
    {
      if (v23 && v22 < *v23)
      {
        v11 = &v23[2 * v22++];
        v12 = *(v11 + 1);
      }

      else
      {
        sub_12196F4(v21);
        v12 = sub_19593CC(&v21, v13);
      }

      v14 = *v6;
      v15 = *(v12 + 16);
      *(v12 + 16) = v15 | 8;
      *(v12 + 48) = v14;
      LODWORD(v14) = *(v6 + 22);
      *(v12 + 16) = v15 | 0x48;
      *(v12 + 64) = v14;
      *(v12 + 68) = *(v6 + 23);
      *(v12 + 16) = v15 | 0xCA;
      v16 = *(v12 + 32);
      if (!v16)
      {
        v17 = *(v12 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1219600(v18);
        *(v12 + 32) = v16;
      }

      LODWORD(v5) = *(v6 + 3);
      v8 = exp(*&v5 * -6.28318531 / 4294967300.0 + 3.14159265);
      v9 = atan((v8 + -1.0 / v8) * 0.5) * 57.2957795 * 10000000.0;
      v16[4] |= 1u;
      v16[6] = llround(v9);
      *(v12 + 16) |= 2u;
      LODWORD(v9) = *(v6 + 2);
      v10 = (*&v9 * 360.0 / 4294967300.0 + -180.0) * 10000000.0;
      v16[4] |= 2u;
      v16[7] = llround(v10);
      LOWORD(v10) = *(v6 + 10);
      v5 = *&v10 / 100.0;
      *(v12 + 16) |= 0x20u;
      *(v12 + 60) = vcvtad_u64_f64(v5);
    }

    sub_1957E24(v20, a2);
    sub_1218EBC(v20);
    return;
  }

  v4 = *(a1 + 56);

  sub_325C(a2, v4, v3);
}

void sub_4A2458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1218EBC(va);
  _Unwind_Resume(a1);
}

void sub_4A246C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1218EBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4A2480(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
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

  v22 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 48);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 48) = v6;
  *(v22 + 64) = *(a2 + 64);
  v7 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v7;
  *(v22 + 72) = *(a2 + 72);
  sub_49DD80((104 * v2 + 80), (a2 + 80));
  v8 = 104 * v2 + 104;
  v9 = *a1;
  v10 = a1[1];
  v11 = v22 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v22 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(v12 + 2);
      v16 = *(v12 + 3);
      *(v13 + 64) = *(v12 + 64);
      *(v13 + 32) = v15;
      *(v13 + 48) = v16;
      *(v13 + 16) = v14;
      *(v13 + 72) = *(v12 + 18);
      *(v13 + 88) = 0;
      *(v13 + 96) = 0;
      *(v13 + 80) = 0;
      *(v13 + 80) = *(v12 + 5);
      *(v13 + 96) = v12[12];
      v12[10] = 0;
      v12[11] = 0;
      v12[12] = 0;
      v12 += 13;
      v13 += 104;
    }

    while (v12 != v10);
    do
    {
      v18 = v9[10];
      if (v18)
      {
        v19 = v9[11];
        v17 = v9[10];
        if (v19 != v18)
        {
          do
          {
            v20 = *(v19 - 9);
            v19 -= 4;
            if (v20 < 0)
            {
              operator delete(*v19);
            }
          }

          while (v19 != v18);
          v17 = v9[10];
        }

        v9[11] = v18;
        operator delete(v17);
      }

      v9 += 13;
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

void sub_4A26BC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_4A1F1C(&v7, a2, a1);
  v5 = *a1;
  v4 = a1[1];
  for (i = a2; v5 != v4; v5 += 48)
  {
    LOBYTE(v7) = sub_585D8((v5 + 16));
    *(&v7 + 1) = sub_585E0(v5 + 16);
    v8 = v6;
    sub_4A2024(&i, &v7);
  }
}

void sub_4A2748(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4A2768(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if (*(a1 + 79))
    {
      *a2 = *(a1 + 56);
      *(a2 + 16) = *(a1 + 72);
      return;
    }

    goto LABEL_8;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
LABEL_8:
    sub_1218A44(v20, 0, 0);
    v6 = *(a1 + 32);
    for (i = *(a1 + 40); v6 != i; v6 += 4)
    {
      if (v23 && v22 < *v23)
      {
        v11 = &v23[2 * v22++];
        v12 = *(v11 + 1);
      }

      else
      {
        sub_12196F4(v21);
        v12 = sub_19593CC(&v21, v13);
      }

      v14 = *v6;
      v15 = *(v12 + 16);
      *(v12 + 16) = v15 | 8;
      *(v12 + 48) = v14;
      LODWORD(v14) = *(v6 + 22);
      *(v12 + 16) = v15 | 0x48;
      *(v12 + 64) = v14;
      *(v12 + 68) = *(v6 + 23);
      *(v12 + 16) = v15 | 0xCA;
      v16 = *(v12 + 32);
      if (!v16)
      {
        v17 = *(v12 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1219600(v18);
        *(v12 + 32) = v16;
      }

      LODWORD(v5) = *(v6 + 3);
      v8 = exp(*&v5 * -6.28318531 / 4294967300.0 + 3.14159265);
      v9 = atan((v8 + -1.0 / v8) * 0.5) * 57.2957795 * 10000000.0;
      v16[4] |= 1u;
      v16[6] = llround(v9);
      *(v12 + 16) |= 2u;
      LODWORD(v9) = *(v6 + 2);
      v10 = (*&v9 * 360.0 / 4294967300.0 + -180.0) * 10000000.0;
      v16[4] |= 2u;
      v16[7] = llround(v10);
      LOWORD(v10) = *(v6 + 10);
      v5 = *&v10 / 100.0;
      *(v12 + 16) |= 0x20u;
      *(v12 + 60) = vcvtad_u64_f64(v5);
    }

    sub_1957E24(v20, a2);
    sub_1218EBC(v20);
    return;
  }

  v4 = *(a1 + 56);

  sub_325C(a2, v4, v3);
}

void sub_4A2A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1218EBC(va);
  _Unwind_Resume(a1);
}

void sub_4A2A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1218EBC(va);
  _Unwind_Resume(a1);
}

void sub_4A2A44(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_4A1F1C(&v7, a2, a1);
  v5 = *a1;
  v4 = a1[1];
  for (i = a2; v5 != v4; v5 += 48)
  {
    LOBYTE(v7) = sub_585D8((v5 + 16));
    *(&v7 + 1) = sub_585E0(v5 + 16);
    v8 = v6;
    sub_4A2024(&i, &v7);
  }
}

void sub_4A2AD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4A2AF0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if (*(a1 + 79))
    {
      *a2 = *(a1 + 56);
      *(a2 + 16) = *(a1 + 72);
      return;
    }

    goto LABEL_8;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
LABEL_8:
    sub_1218A44(v20, 0, 0);
    v6 = *(a1 + 32);
    for (i = *(a1 + 40); v6 != i; v6 += 4)
    {
      if (v23 && v22 < *v23)
      {
        v11 = &v23[2 * v22++];
        v12 = *(v11 + 1);
      }

      else
      {
        sub_12196F4(v21);
        v12 = sub_19593CC(&v21, v13);
      }

      v14 = *v6;
      v15 = *(v12 + 16);
      *(v12 + 16) = v15 | 8;
      *(v12 + 48) = v14;
      LODWORD(v14) = *(v6 + 22);
      *(v12 + 16) = v15 | 0x48;
      *(v12 + 64) = v14;
      *(v12 + 68) = *(v6 + 23);
      *(v12 + 16) = v15 | 0xCA;
      v16 = *(v12 + 32);
      if (!v16)
      {
        v17 = *(v12 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1219600(v18);
        *(v12 + 32) = v16;
      }

      LODWORD(v5) = *(v6 + 3);
      v8 = exp(*&v5 * -6.28318531 / 4294967300.0 + 3.14159265);
      v9 = atan((v8 + -1.0 / v8) * 0.5) * 57.2957795 * 10000000.0;
      v16[4] |= 1u;
      v16[6] = llround(v9);
      *(v12 + 16) |= 2u;
      LODWORD(v9) = *(v6 + 2);
      v10 = (*&v9 * 360.0 / 4294967300.0 + -180.0) * 10000000.0;
      v16[4] |= 2u;
      v16[7] = llround(v10);
      LOWORD(v10) = *(v6 + 10);
      v5 = *&v10 / 100.0;
      *(v12 + 16) |= 0x20u;
      *(v12 + 60) = vcvtad_u64_f64(v5);
    }

    sub_1957E24(v20, a2);
    sub_1218EBC(v20);
    return;
  }

  v4 = *(a1 + 56);

  sub_325C(a2, v4, v3);
}

void sub_4A2DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1218EBC(va);
  _Unwind_Resume(a1);
}

void sub_4A2DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1218EBC(va);
  _Unwind_Resume(a1);
}

void sub_4A2DCC()
{
  byte_278FFA7 = 3;
  LODWORD(qword_278FF90) = 5136193;
  byte_278FFBF = 3;
  LODWORD(qword_278FFA8) = 5136194;
  byte_278FFD7 = 3;
  LODWORD(qword_278FFC0) = 5136195;
  byte_278FFEF = 15;
  strcpy(&qword_278FFD8, "vehicle_mass_kg");
  byte_2790007 = 21;
  strcpy(&xmmword_278FFF0, "vehicle_cargo_mass_kg");
  byte_279001F = 19;
  strcpy(&qword_2790008, "vehicle_aux_power_w");
  byte_2790037 = 15;
  strcpy(&qword_2790020, "dcdc_efficiency");
  strcpy(&qword_2790038, "drive_train_efficiency");
  HIBYTE(word_279004E) = 22;
  operator new();
}

void sub_4A2FA8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_279004E) < 0)
  {
    sub_21E202C();
  }

  sub_21E2038();
  _Unwind_Resume(a1);
}

void sub_4A2FC8(uint64_t a1, void *a2)
{
  v4 = sub_3AF6B4(a2);
  *a1 = v4;
  sub_4AF100((a1 + 8), v4);
  sub_F8FE74((a1 + 24), a2);
}

void sub_4A3044(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1209E80(v56);
  sub_1209E80(v57);
  v62 = 0;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  if (!sub_4A35F4(a1, a2, v56))
  {
    sub_4E3D18(a3);
    sub_4E3D18((a3 + 48));
    *(a3 + 168) = 0;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    v6 = v61;
    if (!v61)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_4A3BB4(a1, v56, &v40);
  if (sub_F63D58(&v40))
  {
    sub_4E3D18(a3);
    sub_4E3D18((a3 + 48));
    goto LABEL_46;
  }

  if (sub_1182C2C(&v40, (a1 + 3)))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_45:
      sub_4E3D18(a3);
      sub_4E3D18((a3 + 48));
LABEL_46:
      *(a3 + 168) = 0;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0;
      *(a3 + 176) = 0;
      *(a3 + 184) = 0;
      sub_49AD08(&v40);
      v6 = v61;
      if (!v61)
      {
        goto LABEL_6;
      }

LABEL_5:
      *(&v61 + 1) = v6;
      operator delete(v6);
      goto LABEL_6;
    }

    sub_19594F8(&v30);
    sub_4A5C(&v30, "Reconstructing zilch path failed after finding a base path", 58);
    if ((v39 & 0x10) != 0)
    {
      v25 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v25 = v35;
      }

      v26 = &v34;
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v20 = 0;
        v29 = 0;
LABEL_40:
        *(&__p + v20) = 0;
        sub_7E854(&__p, 3u);
        if (v29 < 0)
        {
          operator delete(__p);
        }

        if (v37 < 0)
        {
          operator delete(v36);
        }

        std::locale::~locale(&v32);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_45;
      }

      v26 = v33;
      v25 = v33[2];
    }

    v27 = *v26;
    v20 = v25 - *v26;
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v29 = v25 - *v26;
    if (v20)
    {
      memmove(&__p, v27, v20);
    }

    goto LABEL_40;
  }

  v21 = v43;
  *(a3 + 16) = v41;
  *(a3 + 40) = v21;
  v22 = v47;
  *(a3 + 64) = v45;
  *(a3 + 88) = v22;
  v23 = v51;
  *(a3 + 112) = v49;
  *a3 = v40;
  v24 = v42;
  v41 = 0;
  *&v42 = 0;
  v40 = 0uLL;
  *(a3 + 24) = v24;
  *(&v42 + 1) = 0;
  v43 = 0;
  *(a3 + 48) = v44;
  v44 = 0uLL;
  *(a3 + 72) = v46;
  v45 = 0;
  v46 = 0uLL;
  v47 = 0;
  *(a3 + 96) = v48;
  v48 = 0uLL;
  *(a3 + 120) = v50;
  *(a3 + 136) = v23;
  v49 = 0;
  v50 = 0uLL;
  v51 = 0;
  *(a3 + 144) = 0;
  *(a3 + 168) = 0;
  if (v54 == 1)
  {
    *(a3 + 144) = v52;
    *(a3 + 160) = v53;
    v53 = 0;
    v52 = 0uLL;
    *(a3 + 168) = 1;
  }

  *(a3 + 176) = v55;
  sub_49AD08(&v40);
  v6 = v61;
  if (v61)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = *(&v59 + 1);
  if (*(&v59 + 1))
  {
    v8 = *(&v59 + 1);
    if (v60 != *(&v59 + 1))
    {
      v9 = v60 - 48;
      v10 = (v60 - 48);
      v11 = (v60 - 48);
      do
      {
        v12 = *v11;
        v11 -= 6;
        (*v12)(v10);
        v9 -= 48;
        v13 = v10 == v7;
        v10 = v11;
      }

      while (!v13);
      v8 = *(&v59 + 1);
    }

    *&v60 = v7;
    operator delete(v8);
  }

  v14 = v58;
  if (v58)
  {
    v15 = v58;
    if (*(&v58 + 1) != v58)
    {
      v16 = *(&v58 + 1) - 64;
      v17 = *(&v58 + 1) - 64;
      v18 = (*(&v58 + 1) - 64);
      do
      {
        v19 = *v18;
        v18 -= 8;
        (*v19)(v17);
        v16 -= 64;
        v13 = v17 == v14;
        v17 = v18;
      }

      while (!v13);
      v15 = v58;
    }

    *(&v58 + 1) = v14;
    operator delete(v15);
  }
}

void sub_4A3528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a15);
  sub_49AD08(&a48);
  sub_4A45B8((v48 - 144));
  _Unwind_Resume(a1);
}

void sub_4A356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_454784(v45);
  sub_49AD08(&a45);
  sub_4A45B8((v46 - 144));
  _Unwind_Resume(a1);
}

void sub_4A3594(_Unwind_Exception *a1)
{
  sub_454784(v1);
  sub_4A45B8((v2 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_4A35F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_120B590(a2) < 2)
  {
    return 0;
  }

  v14 = (a1 + 8);
  LODWORD(v15) = 1;
  v16.__locale_ = 0x4031000000000000;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  LODWORD(v20) = 0;
  if (sub_120B590(a2) != 1)
  {
    sub_4A85E4();
  }

  sub_4A50F0(&v14);
  if (*(a3 + 72) == *(a3 + 80))
  {
    v14 = (a1 + 8);
    LODWORD(v15) = 2;
    v16.__locale_ = 0x4032000000000000;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    LODWORD(v20) = 0;
    if (sub_120B590(a2) != 1)
    {
      sub_4A85E4();
    }

    sub_4A50F0(&v14);
    if (*(a3 + 72) == *(a3 + 80))
    {
      v14 = (a1 + 8);
      LODWORD(v15) = 3;
      v16.__locale_ = 0x4033000000000000;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      LODWORD(v20) = 0;
      if (sub_120B590(a2) != 1)
      {
        sub_4A85E4();
      }

      sub_4A50F0(&v14);
      if (*(a3 + 72) == *(a3 + 80))
      {
        v14 = (a1 + 8);
        LODWORD(v15) = 4;
        v16.__locale_ = 0x4034000000000000;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        LODWORD(v20) = 0;
        if (sub_120B590(a2) != 1)
        {
          sub_4A85E4();
        }

        sub_4A50F0(&v14);
        if (*(a3 + 72) == *(a3 + 80))
        {
          v14 = (a1 + 8);
          LODWORD(v15) = 5;
          v16.__locale_ = 0x4035000000000000;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          LODWORD(v20) = 0;
          if (sub_120B590(a2) != 1)
          {
            sub_4A85E4();
          }

          sub_4A50F0(&v14);
        }
      }
    }
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v14);
    sub_4A5C(&v14, "zilch::PathDecoder with distance ", 33);
    v7 = std::ostream::operator<<();
    sub_4A5C(v7, " and angle ", 11);
    v8 = std::ostream::operator<<();
    sub_4A5C(v8, " returned path of size ", 23);
    std::ostream::operator<<();
    if ((v23 & 0x10) != 0)
    {
      v10 = v22;
      if (v22 < v19)
      {
        v22 = v19;
        v10 = v19;
      }

      v11 = *(&v18 + 1);
      v9 = v10 - *(&v18 + 1);
      if (v10 - *(&v18 + 1) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        v9 = 0;
        v13 = 0;
LABEL_30:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 2u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        return *(a3 + 80) != *(a3 + 72);
      }

      v11 = v17;
      v9 = v18 - v17;
      if (v18 - v17 >= 0x7FFFFFFFFFFFFFF8uLL)
      {
LABEL_37:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_30;
  }

  return *(a3 + 80) != *(a3 + 72);
}

void sub_4A3AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4A50F0(va);
  _Unwind_Resume(a1);
}

void sub_4A3B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_4A3B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4A50F0(va);
  _Unwind_Resume(a1);
}

void sub_4A3BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4A50F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4A3BB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_4E3D18(v91);
  sub_4E3D18(v92);
  v95 = 0;
  memset(v93, 0, sizeof(v93));
  v94 = 0;
  v96 = 0;
  v97 = 0;
  v5 = sub_3B4FC(v93);
  v93[1] = v5;
  sub_F6BEE8(v90);
  v77 = a3;
  v6 = *(a2 + 80) - *(a2 + 72);
  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v6 >> 4;
  v12 = 1;
  v78 = v6 >> 4;
  while (1)
  {
    v14 = (*(a2 + 72) + v7);
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(a2 + 24) + (v16 << 6);
    v18 = *(a2 + 48) + 48 * v16;
    v19 = v15 ? v18 : v17;
    if (!sub_4566A4(v19))
    {
      break;
    }

LABEL_5:
    ++v10;
    v7 += 16;
    if (v11 == v10)
    {
      if (*(a2 + 80) - *(a2 + 72) == 16)
      {
        sub_F8EC88((a1 + 3), (((v12 == 0) << 48) | (v8 << 32) | v9) ^ 0x1000000000000, __p);
        sub_F6C100(v90, (v8 << 16) | (v9 << 32) | (2 * (v12 == 0)), __p, 0);
      }

LABEL_50:
      LODWORD(__p[0]) = sub_5AAC4(a2);
      v53 = sub_120B2B8(__p, v52);
      LODWORD(v81) = sub_3F80(a2);
      v55 = sub_120B3F8(&v81, v54);
      v56 = -1;
      if (v55 <= 180.0 && fabs(v53) <= 85.0511288 && v55 >= -180.0)
      {
        v57 = sin(fmin(fmax(v53, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        LODWORD(v58) = ((log((v57 + 1.0) / (1.0 - v57)) / -12.5663706 + 0.5) * 4294967300.0);
        if (v58 >= 0xFFFFFFFE)
        {
          v58 = 4294967294;
        }

        else
        {
          v58 = v58;
        }

        v56 = ((v55 + 180.0) / 360.0 * 4294967300.0) | (v58 << 32);
      }

      v83 = v56;
      v84 = 0x7FFFFFFF;
      v59 = sub_F69654(v90);
      sub_4A5414(a1, v59, &v83, __p);
      sub_F68F20(v90, __p);
      LODWORD(__p[0]) = sub_5AAC4(a2 + 12);
      v61 = sub_120B2B8(__p, v60);
      v80 = sub_3F80((a2 + 12));
      v63 = sub_120B3F8(&v80, v62);
      v64 = -1;
      if (v63 <= 180.0 && fabs(v61) <= 85.0511288 && v63 >= -180.0)
      {
        v65 = sin(fmin(fmax(v61, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        LODWORD(v66) = ((log((v65 + 1.0) / (1.0 - v65)) / -12.5663706 + 0.5) * 4294967300.0);
        if (v66 >= 0xFFFFFFFE)
        {
          v66 = 4294967294;
        }

        else
        {
          v66 = v66;
        }

        v64 = ((v63 + 180.0) / 360.0 * 4294967300.0) | (v66 << 32);
      }

      v81 = v64;
      v82 = 0x7FFFFFFF;
      v67 = sub_F6C814(v90);
      sub_4A5414(a1, v67, &v81, __p);
      sub_F6901C(v90, __p);
      if (*(a2 + 80) - *(a2 + 72) == 16)
      {
        v68 = sub_73F1C(v90);
        if (*v68 > *sub_F69058(v90))
        {
          v69 = sub_F69058(v90);
          v70 = *(v69 + 16);
          *__p = *v69;
          v86 = v70;
          v71 = *(v69 + 32);
          v72 = *(v69 + 48);
          v73 = *(v69 + 64);
          v89 = *(v69 + 80);
          v87[1] = v72;
          v88 = v73;
          v87[0] = v71;
          v74 = sub_73F1C(v90);
          v75 = __p[0];
          if (*v74 > LODWORD(__p[0]))
          {
            v75 = *v74;
          }

          LODWORD(__p[0]) = v75;
          sub_F6901C(v90, __p);
        }
      }

      sub_F63718(__p, v90);
    }
  }

  v20 = (*(a2 + 72) + v7);
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = (*(a2 + 24) + (v22 << 6));
  v24 = *(a2 + 48) + 48 * v22;
  if (v21)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (!v26)
  {
    __cxa_bad_cast();
  }

  v27 = v26;
  v28 = v26[3];
  if (!v10)
  {
    v39 = sub_588E0(v26);
    v41 = *(v5 - 2);
    v40 = *(v5 - 1);
    if (v41 >= v40)
    {
      v43 = *(v5 - 3);
      v44 = v41 - v43;
      v45 = (v41 - v43) >> 2;
      v46 = v45 + 1;
      if ((v45 + 1) >> 62)
      {
        sub_1794();
      }

      v47 = v40 - v43;
      if (v47 >> 1 > v46)
      {
        v46 = v47 >> 1;
      }

      if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v48 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v46;
      }

      if (v48)
      {
        if (!(v48 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v45) = v39;
      v42 = 4 * v45 + 4;
      memcpy(0, v43, v44);
      *(v5 - 3) = 0;
      *(v5 - 2) = v42;
      *(v5 - 1) = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v41 = v39;
      v42 = (v41 + 4);
    }

    v9 = v28;
    v8 = WORD2(v28);
    v12 = BYTE6(v28);
    *(v5 - 2) = v42;
    v11 = v78;
    goto LABEL_5;
  }

  sub_4A52B4((a1 + 3), (v12 << 48) | (v8 << 32) | v9, v28 & 0xFFFFFFFFFFFFFFLL, __p);
  if (LODWORD(v87[0]))
  {
    if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*__p), vceqzq_s64(*(v87 + 8))), xmmword_22671F0)) & 0xF) == 0 && DWORD2(v88) != 0)
    {
      sub_F6C3B8(v90, __p, 0);
      v30 = sub_588E0(v27);
      v32 = *(v5 - 2);
      v31 = *(v5 - 1);
      if (v32 < v31)
      {
        *v32 = v30;
        v13 = v32 + 4;
      }

      else
      {
        v33 = *(v5 - 3);
        v34 = v32 - v33;
        v35 = (v32 - v33) >> 2;
        v36 = v35 + 1;
        if ((v35 + 1) >> 62)
        {
          sub_1794();
        }

        v37 = v31 - v33;
        if (v37 >> 1 > v36)
        {
          v36 = v37 >> 1;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v38 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          if (!(v38 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v49 = v35;
        v50 = (4 * v35);
        v51 = &v50[-v49];
        *v50 = v30;
        v13 = v50 + 1;
        memcpy(v51, v33, v34);
        *(v5 - 3) = v51;
        *(v5 - 2) = v13;
        *(v5 - 1) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      v11 = v78;
      *(v5 - 2) = v13;
      v9 = v28;
      v8 = WORD2(v28);
      v12 = BYTE6(v28);
      goto LABEL_5;
    }
  }

  sub_4E3D18(v77);
  sub_4E3D18((v77 + 48));
  *(v77 + 168) = 0;
  *(v77 + 96) = 0u;
  *(v77 + 112) = 0u;
  *(v77 + 128) = 0u;
  *(v77 + 144) = 0;
  *(v77 + 176) = 0;
  *(v77 + 184) = 0;
  sub_4547F0(v90);
  return sub_49AD08(v91);
}

void sub_4A44F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_454784(v32);
  sub_4547F0(&a32);
  sub_49AD08(&STACK[0x2E0]);
  _Unwind_Resume(a1);
}

void sub_4A4518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_4547F0(&a32);
  sub_49AD08(&STACK[0x2E0]);
  _Unwind_Resume(a1);
}

void *sub_4A45B8(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    v5 = a1[6];
    if (v4 != v3)
    {
      v6 = v4 - 6;
      v7 = v4 - 6;
      v8 = v4 - 6;
      do
      {
        v9 = *v8;
        v8 -= 6;
        (*v9)(v7);
        v6 -= 6;
        v10 = v7 == v3;
        v7 = v8;
      }

      while (!v10);
      v5 = a1[6];
    }

    a1[7] = v3;
    operator delete(v5);
  }

  v11 = a1[3];
  if (v11)
  {
    v12 = a1[4];
    v13 = a1[3];
    if (v12 != v11)
    {
      v14 = v12 - 8;
      v15 = v12 - 8;
      v16 = v12 - 8;
      do
      {
        v17 = *v16;
        v16 -= 8;
        (*v17)(v15);
        v14 -= 8;
        v10 = v15 == v11;
        v15 = v16;
      }

      while (!v10);
      v13 = a1[3];
    }

    a1[4] = v11;
    operator delete(v13);
  }

  return a1;
}

uint64_t sub_4A46CC@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  sub_4A4CA0(a1, a2, v44);
  if (sub_F69D6C(v44))
  {
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v33);
      sub_4A5C(&v33, "Reconstructing base path from geoIDs failed", 43);
      if ((v43 & 0x10) != 0)
      {
        v27 = v42;
        if (v42 < v39)
        {
          v42 = v39;
          v27 = v39;
        }

        v28 = v38;
        v5 = v27 - v38;
        if (v27 - v38 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((v43 & 8) == 0)
        {
          v5 = 0;
          v32 = 0;
LABEL_30:
          *(&__dst + v5) = 0;
          sub_7E854(&__dst, 3u);
          if (v32 < 0)
          {
            operator delete(__dst);
          }

          if (v41 < 0)
          {
            operator delete(v40);
          }

          std::locale::~locale(&v35);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_35;
        }

        v28 = v36;
        v5 = v37 - v36;
        if ((v37 - v36) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_27:
          sub_3244();
        }
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      v32 = v5;
      if (!v5)
      {
        goto LABEL_30;
      }

LABEL_29:
      memmove(&__dst, v28, v5);
      goto LABEL_30;
    }

LABEL_35:
    sub_F6BEE8(a3);
    return sub_4547F0(v44);
  }

  if (sub_1181990(v44, (a1 + 3)))
  {
    if (!sub_7E7E4(3u))
    {
      goto LABEL_35;
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "Reconstructing geoID path failed after finding a base path", 58);
    if ((v43 & 0x10) != 0)
    {
      v29 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v29 = v39;
      }

      v28 = v38;
      v5 = v29 - v38;
      if (v29 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v5 = 0;
        v32 = 0;
        goto LABEL_30;
      }

      v28 = v36;
      v5 = v37 - v36;
      if ((v37 - v36) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v32 = v5;
    if (!v5)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  *a3 = *v44;
  v6 = v46;
  *(a3 + 16) = *&v44[16];
  *&v44[8] = 0u;
  *(a3 + 24) = v45;
  *(a3 + 40) = v6;
  v45 = 0u;
  *v44 = 0;
  v46 = 0;
  v7 = v52;
  *(a3 + 96) = v50;
  v8 = v49;
  v9 = v47;
  *(a3 + 64) = v48;
  *(a3 + 80) = v8;
  *(a3 + 48) = v9;
  *(a3 + 104) = v51;
  *(a3 + 120) = v7;
  v51 = 0u;
  v52 = 0;
  *(a3 + 128) = v53;
  v10 = v56;
  *(a3 + 144) = v54;
  v53 = 0u;
  *(a3 + 152) = v55;
  *(a3 + 168) = v10;
  v55 = 0u;
  v54 = 0;
  v56 = 0;
  v11 = v57;
  v12 = v58;
  v13 = v61;
  *(a3 + 208) = v59;
  *(a3 + 176) = v11;
  *(a3 + 192) = v12;
  *(a3 + 216) = v60;
  *(a3 + 232) = v13;
  v60 = 0u;
  v61 = 0;
  *(a3 + 240) = v62;
  v14 = v79;
  *(a3 + 256) = v63;
  v62 = 0u;
  v15 = v64;
  v16 = v66;
  *(a3 + 280) = v65;
  *(a3 + 296) = v16;
  *(a3 + 264) = v15;
  v17 = v67;
  v18 = v68;
  v19 = v70;
  *(a3 + 344) = v69;
  *(a3 + 360) = v19;
  *(a3 + 312) = v17;
  *(a3 + 328) = v18;
  v20 = v71;
  v21 = v72;
  v22 = v74;
  *(a3 + 408) = v73;
  *(a3 + 424) = v22;
  *(a3 + 376) = v20;
  *(a3 + 392) = v21;
  v23 = v75;
  v24 = v76;
  v25 = v78;
  *(a3 + 472) = v77;
  *(a3 + 488) = v25;
  *(a3 + 440) = v23;
  *(a3 + 456) = v24;
  *(a3 + 504) = v14;
  v63 = 0;
  v79 = 0;
  v26 = v81;
  *(a3 + 512) = v80;
  *(a3 + 528) = v26;
  *(a3 + 544) = v82;
  v80 = 0u;
  v81 = 0u;
  v82 = 0;
  return sub_4547F0(v44);
}

void sub_4A4C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    sub_4547F0(&a49);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  sub_4547F0(&a49);
  _Unwind_Resume(a1);
}

uint64_t sub_4A4CA0@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  sub_F6BEE8(v53);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    LOWORD(v7) = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = *v5;
      if (*v5 >= 0)
      {
        v11 = *v5;
      }

      else
      {
        v11 = -v10;
      }

      v12 = sub_335D84(*a1, v11);
      v13 = v12;
      v14 = v12;
      if (v12 > 0xFFFFFFFEFFFFFFFFLL || v12 == 0)
      {
LABEL_19:
        sub_F6BEE8(a3);
        return sub_4547F0(v53);
      }

      if (v8)
      {
        sub_4A52B4((a1 + 3), (v7 << 32) | (v9 << 48) | v8, v12 & 0xFFFFFFFFFFFFLL | ((v10 < 1) << 48), &v45);
        if (!v48)
        {
          goto LABEL_19;
        }

        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v45), vceqzq_s64(v49)), xmmword_22671F0)) & 0xF) != 0 || LODWORD(v52[0]) == 0)
        {
          goto LABEL_19;
        }

        sub_F6C3B8(v53, &v45, 0);
      }

      v7 = HIDWORD(v13);
      v8 = v13;
      ++v5;
      v9 = v10 < 1;
    }

    while (v5 != v6);
    if (a2[1] - *a2 == 8)
    {
      sub_F8EC88((a1 + 3), (((v10 > 0) << 48) | (WORD2(v13) << 32) | v14) ^ 0x1000000000000, v45.i64);
      sub_F6C100(v53, (v14 << 32) | (WORD2(v13) << 16) | (2 * (v10 > 0)), &v45, 0);
    }
  }

  v45.i64[1] = 0;
  v46 = 0;
  LOBYTE(v48) = 0;
  v47 = 0;
  v49.i64[0] = 0x3FF0000000000000;
  v49.i8[8] = 1;
  v50 = 0;
  v51 = 0;
  v52[0] = 2359296000;
  *(v52 + 7) = 0;
  v45.i32[0] = 0;
  sub_F68F20(v53, &v45);
  v36 = 0;
  v37 = 0;
  v39 = 0;
  v38 = 0;
  v40 = 0x3FF0000000000000;
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v44[0] = 2359296000;
  *(v44 + 7) = 0;
  v35 = 1000000000;
  sub_F6901C(v53, &v35);
  *a3 = *v53;
  *(a3 + 16) = *&v53[16];
  *v53 = 0;
  *(a3 + 24) = v54;
  *(a3 + 40) = v55;
  *&v53[8] = 0u;
  v54 = 0u;
  v55 = 0;
  *(a3 + 96) = v59;
  v17 = v58;
  v18 = v56;
  *(a3 + 64) = v57;
  *(a3 + 80) = v17;
  *(a3 + 48) = v18;
  *(a3 + 104) = v60;
  *(a3 + 120) = v61;
  v60 = 0u;
  v61 = 0;
  *(a3 + 128) = v62;
  *(a3 + 144) = v63;
  v62 = 0u;
  v63 = 0;
  *(a3 + 152) = v64;
  *(a3 + 168) = v65;
  v64 = 0u;
  v65 = 0;
  v19 = v66;
  v20 = v67;
  *(a3 + 208) = v68;
  *(a3 + 176) = v19;
  *(a3 + 192) = v20;
  *(a3 + 216) = v69;
  *(a3 + 232) = v70;
  v69 = 0u;
  v70 = 0;
  *(a3 + 240) = v71;
  *(a3 + 256) = v72;
  v71 = 0u;
  v72 = 0;
  v21 = v73;
  v22 = v75;
  *(a3 + 280) = v74;
  *(a3 + 296) = v22;
  *(a3 + 264) = v21;
  v23 = v76;
  v24 = v77;
  v25 = v79;
  *(a3 + 344) = v78;
  *(a3 + 360) = v25;
  *(a3 + 312) = v23;
  *(a3 + 328) = v24;
  v26 = v80;
  v27 = v81;
  v28 = v83;
  *(a3 + 408) = v82;
  *(a3 + 424) = v28;
  *(a3 + 376) = v26;
  *(a3 + 392) = v27;
  v29 = v84;
  v30 = v85;
  v31 = v87;
  *(a3 + 472) = v86;
  *(a3 + 488) = v31;
  *(a3 + 440) = v29;
  *(a3 + 456) = v30;
  *(a3 + 504) = v88;
  v88 = 0;
  v32 = v90;
  *(a3 + 512) = v89;
  *(a3 + 528) = v32;
  *(a3 + 544) = v91;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  return sub_4547F0(v53);
}

void *sub_4A50F0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v3 == v2)
  {
    a1[8] = 0;
    v10 = 0;
  }

  else
  {
    v4 = a1[7];
    v5 = &v2[v4 >> 8];
    v6 = *v5 + 16 * v4;
    v7 = *(v2 + (((a1[8] + v4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v4);
    if (v6 != v7)
    {
      while (1)
      {
        v8 = *(v6 + 8);
        if (v8)
        {
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v6 += 16;
        if (v6 - *v5 == 4096)
        {
          goto LABEL_8;
        }

LABEL_4:
        if (v6 == v7)
        {
          v2 = a1[4];
          v3 = a1[5];
          goto LABEL_12;
        }
      }

      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v6 += 16;
      if (v6 - *v5 != 4096)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = v5[1];
      ++v5;
      v6 = v9;
      goto LABEL_4;
    }

LABEL_12:
    a1[8] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = a1[5];
        v2 = (a1[4] + 8);
        a1[4] = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 128;
    goto LABEL_19;
  }

  if (v10 == 2)
  {
    v11 = 256;
LABEL_19:
    a1[7] = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = a1[4];
    v13 = a1[5];
    if (v13 != v14)
    {
      a1[5] = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = a1[3];
  if (v15)
  {
    operator delete(v15);
  }

  return a1;
}

void sub_4A52B4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_F90350(a1, (a2 >> 16) & 0xFFFF0000 | (a2 << 32) | (2 * ((a2 & 0xFF000000000000) == 0)), 0, &v20, 1);
  v6 = v20;
  v7 = v20;
  if (v20 != v21)
  {
    v7 = v20;
    while (1)
    {
      v8 = *(v7 + 9);
      v9 = (v8 >> 16) & 0xFFFF0000 | (v8 << 32);
      LODWORD(v8) = (v8 & 0xFF000000000000) == 0;
      v10 = 2 * v8;
      v11 = (v9 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v8 & 1))) + 4 * *(v7 + 41);
      v12 = HIDWORD(v11);
      v13 = WORD1(v11);
      v14 = v12 == a3 && v13 == WORD2(a3);
      if (v14 && (BYTE6(a3) ^ (v10 >> 1)) == 1)
      {
        break;
      }

      v7 += 6;
      if (v7 == v21)
      {
        goto LABEL_15;
      }
    }
  }

  if (v7 == v21)
  {
LABEL_15:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0x1000000000000;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0x1000000000000;
    *(a4 + 80) = 0;
    *(a4 + 84) = *(a4 + 84) & 0x8000 | 0x280;
    *(a4 + 86) = 0;
    *(a4 + 88) &= 0xE0u;
    if (!v6)
    {
      return;
    }

    goto LABEL_16;
  }

  v16 = v7[1];
  *a4 = *v7;
  *(a4 + 16) = v16;
  v17 = v7[2];
  v18 = v7[3];
  v19 = v7[5];
  *(a4 + 64) = v7[4];
  *(a4 + 80) = v19;
  *(a4 + 32) = v17;
  *(a4 + 48) = v18;
  if (v6)
  {
LABEL_16:
    v21 = v6;
    operator delete(v6);
  }
}

void sub_4A53F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4A5414(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  v6 = (a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0x3FF0000000000000;
  *(a4 + 48) = 1;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 2359296000;
  *(a4 + 79) = 0;
  sub_2B7A20(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, &v32);
  sub_31BF20(&v32, v35);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v32 = sub_4A580C(a3, v35);
  LODWORD(__p) = v7;
  sub_47190(&v32, v35);
  v9 = v8 * 1000000000.0;
  if (v9 >= 0.0)
  {
    if (v9 < 4.50359963e15)
    {
      v10 = (v9 + v9) + 1;
      goto LABEL_8;
    }
  }

  else if (v9 > -4.50359963e15)
  {
    v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
LABEL_8:
    v9 = (v10 >> 1);
  }

  *a4 = v9;
  v11 = v32;
  if (v32 == -1 || (v13 = *a3, v12 = a3[1], v13 == -1) && v12 == -1)
  {
    *v6 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = v35[0];
    if (!v35[0])
    {
      return;
    }

    goto LABEL_13;
  }

  v15 = exp(3.14159265 - HIDWORD(v32) * 6.28318531 / 4294967300.0);
  v16 = atan((v15 - 1.0 / v15) * 0.5) * 57.2957795 * 0.0174532925;
  v17.i64[0] = v11;
  v17.i64[1] = v13;
  v18 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
  v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
  v20 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v31 = vsubq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0];
  v21 = sin((v16 - v19) * 0.5);
  v22 = v21 * v21;
  v23 = cos(v16);
  v24 = v23 * cos(v19);
  v25 = sin(0.5 * v31);
  v26 = atan2(sqrt(v25 * v25 * v24 + v22), sqrt(1.0 - (v25 * v25 * v24 + v22)));
  v27 = (v26 + v26) * 6372797.56 * 100.0;
  if (v27 >= 0.0)
  {
    v28 = v27;
    if (v27 >= 4.50359963e15)
    {
      goto LABEL_21;
    }

    v29 = (v27 + v27) + 1;
  }

  else
  {
    v28 = v27;
    if (v27 <= -4.50359963e15)
    {
      goto LABEL_21;
    }

    v29 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
  }

  v28 = (v29 >> 1);
LABEL_21:
  if (v28 < 9.22337204e18)
  {
    if (v27 >= 0.0)
    {
      if (v27 >= 4.50359963e15)
      {
        goto LABEL_30;
      }

      v30 = (v27 + v27) + 1;
    }

    else
    {
      if (v27 <= -4.50359963e15)
      {
        goto LABEL_30;
      }

      v30 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
    }

    v27 = (v30 >> 1);
LABEL_30:
    *v6 = v27;
    v14 = v35[0];
    if (!v35[0])
    {
      return;
    }

    goto LABEL_13;
  }

  *v6 = 0x7FFFFFFFFFFFFFFELL;
  v14 = v35[0];
  if (v35[0])
  {
LABEL_13:
    v35[1] = v14;
    operator delete(v14);
  }
}

void sub_4A57D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4A580C(unsigned int *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return -1;
  }

  v4 = v3 - v2;
  if (v4 == 12)
  {
    return *v2;
  }

  v8 = sub_4A7FF4(a2, 0, 0xAAAAAAAAAAAAAAABLL * (v4 >> 2) - 1, a1, 0, 0x7FFFFFFFFFFFFFFFLL, 1);
  v9 = v8 < -1 - 0x5555555555555555 * ((a2[1] - *a2) >> 2);
  v10 = (*a2 + 12 * v8);
  v11 = &v10[3 * v9];
  v12.i64[0] = *v10;
  v12.i64[1] = HIDWORD(*v10);
  v13 = vcvtq_f64_u64(v12);
  v12.i64[0] = *v11;
  v12.i64[1] = HIDWORD(*v11);
  v14 = vsubq_f64(vcvtq_f64_u64(v12), v13);
  v15 = vmulq_f64(v14, v14);
  v16 = vaddvq_f64(v15);
  if (v16 == 0.0)
  {
    goto LABEL_9;
  }

  if (v16 <= 0.0)
  {
    v16 = -v16;
  }

  if (v16 < 2.22044605e-16)
  {
LABEL_9:
    v17 = 0.0;
  }

  else
  {
    v21.i64[0] = *a1;
    v21.i64[1] = HIDWORD(*a1);
    v22 = vmulq_f64(v14, vsubq_f64(vcvtq_f64_u64(v21), v13));
    *&v17 = *&vdivq_f64(vaddq_f64(v22, vdupq_laneq_s64(v22, 1)), vaddq_f64(v15, vdupq_laneq_s64(v15, 1)));
  }

  v18 = 1.0;
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  v19 = v17 < 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v20 = v18;
  }

  return sub_6EFC0(v10, v11, v20);
}

void sub_4A5960(uint64_t a1, void *a2)
{
  v4 = sub_3AF6B4(a2);
  *a1 = v4;
  sub_4AF100((a1 + 8), v4);
  sub_F8E7AC((a1 + 24), a2);
}

void sub_4A59DC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1209E80(v56);
  sub_1209E80(v57);
  v62 = 0;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  if (!sub_4A5F8C(a1, a2, v56))
  {
    sub_4E3D18(a3);
    sub_4E3D18((a3 + 48));
    *(a3 + 168) = 0;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    v6 = v61;
    if (!v61)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_4A654C(a1, v56, &v40);
  if (sub_F63D58(&v40))
  {
    sub_4E3D18(a3);
    sub_4E3D18((a3 + 48));
    goto LABEL_46;
  }

  if (sub_1182CA0(&v40, (a1 + 3)))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_45:
      sub_4E3D18(a3);
      sub_4E3D18((a3 + 48));
LABEL_46:
      *(a3 + 168) = 0;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0;
      *(a3 + 176) = 0;
      *(a3 + 184) = 0;
      sub_49AD08(&v40);
      v6 = v61;
      if (!v61)
      {
        goto LABEL_6;
      }

LABEL_5:
      *(&v61 + 1) = v6;
      operator delete(v6);
      goto LABEL_6;
    }

    sub_19594F8(&v30);
    sub_4A5C(&v30, "Reconstructing zilch path failed after finding a base path", 58);
    if ((v39 & 0x10) != 0)
    {
      v25 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v25 = v35;
      }

      v26 = &v34;
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v20 = 0;
        v29 = 0;
LABEL_40:
        *(&__p + v20) = 0;
        sub_7E854(&__p, 3u);
        if (v29 < 0)
        {
          operator delete(__p);
        }

        if (v37 < 0)
        {
          operator delete(v36);
        }

        std::locale::~locale(&v32);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_45;
      }

      v26 = v33;
      v25 = v33[2];
    }

    v27 = *v26;
    v20 = v25 - *v26;
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v29 = v25 - *v26;
    if (v20)
    {
      memmove(&__p, v27, v20);
    }

    goto LABEL_40;
  }

  v21 = v43;
  *(a3 + 16) = v41;
  *(a3 + 40) = v21;
  v22 = v47;
  *(a3 + 64) = v45;
  *(a3 + 88) = v22;
  v23 = v51;
  *(a3 + 112) = v49;
  *a3 = v40;
  v24 = v42;
  v41 = 0;
  *&v42 = 0;
  v40 = 0uLL;
  *(a3 + 24) = v24;
  *(&v42 + 1) = 0;
  v43 = 0;
  *(a3 + 48) = v44;
  v44 = 0uLL;
  *(a3 + 72) = v46;
  v45 = 0;
  v46 = 0uLL;
  v47 = 0;
  *(a3 + 96) = v48;
  v48 = 0uLL;
  *(a3 + 120) = v50;
  *(a3 + 136) = v23;
  v49 = 0;
  v50 = 0uLL;
  v51 = 0;
  *(a3 + 144) = 0;
  *(a3 + 168) = 0;
  if (v54 == 1)
  {
    *(a3 + 144) = v52;
    *(a3 + 160) = v53;
    v53 = 0;
    v52 = 0uLL;
    *(a3 + 168) = 1;
  }

  *(a3 + 176) = v55;
  sub_49AD08(&v40);
  v6 = v61;
  if (v61)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = *(&v59 + 1);
  if (*(&v59 + 1))
  {
    v8 = *(&v59 + 1);
    if (v60 != *(&v59 + 1))
    {
      v9 = v60 - 48;
      v10 = (v60 - 48);
      v11 = (v60 - 48);
      do
      {
        v12 = *v11;
        v11 -= 6;
        (*v12)(v10);
        v9 -= 48;
        v13 = v10 == v7;
        v10 = v11;
      }

      while (!v13);
      v8 = *(&v59 + 1);
    }

    *&v60 = v7;
    operator delete(v8);
  }

  v14 = v58;
  if (v58)
  {
    v15 = v58;
    if (*(&v58 + 1) != v58)
    {
      v16 = *(&v58 + 1) - 64;
      v17 = *(&v58 + 1) - 64;
      v18 = (*(&v58 + 1) - 64);
      do
      {
        v19 = *v18;
        v18 -= 8;
        (*v19)(v17);
        v16 -= 64;
        v13 = v17 == v14;
        v17 = v18;
      }

      while (!v13);
      v15 = v58;
    }

    *(&v58 + 1) = v14;
    operator delete(v15);
  }
}

void sub_4A5EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a15);
  sub_49AD08(&a48);
  sub_4A45B8((v48 - 144));
  _Unwind_Resume(a1);
}

void sub_4A5F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_454784(v45);
  sub_49AD08(&a45);
  sub_4A45B8((v46 - 144));
  _Unwind_Resume(a1);
}

void sub_4A5F2C(_Unwind_Exception *a1)
{
  sub_454784(v1);
  sub_4A45B8((v2 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_4A5F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_120B590(a2) < 2)
  {
    return 0;
  }

  v14 = (a1 + 8);
  LODWORD(v15) = 1;
  v16.__locale_ = 0x4031000000000000;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  LODWORD(v20) = 0;
  if (sub_120B590(a2) != 1)
  {
    sub_4A85E4();
  }

  sub_4A50F0(&v14);
  if (*(a3 + 72) == *(a3 + 80))
  {
    v14 = (a1 + 8);
    LODWORD(v15) = 2;
    v16.__locale_ = 0x4032000000000000;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    LODWORD(v20) = 0;
    if (sub_120B590(a2) != 1)
    {
      sub_4A85E4();
    }

    sub_4A50F0(&v14);
    if (*(a3 + 72) == *(a3 + 80))
    {
      v14 = (a1 + 8);
      LODWORD(v15) = 3;
      v16.__locale_ = 0x4033000000000000;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      LODWORD(v20) = 0;
      if (sub_120B590(a2) != 1)
      {
        sub_4A85E4();
      }

      sub_4A50F0(&v14);
      if (*(a3 + 72) == *(a3 + 80))
      {
        v14 = (a1 + 8);
        LODWORD(v15) = 4;
        v16.__locale_ = 0x4034000000000000;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        LODWORD(v20) = 0;
        if (sub_120B590(a2) != 1)
        {
          sub_4A85E4();
        }

        sub_4A50F0(&v14);
        if (*(a3 + 72) == *(a3 + 80))
        {
          v14 = (a1 + 8);
          LODWORD(v15) = 5;
          v16.__locale_ = 0x4035000000000000;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          LODWORD(v20) = 0;
          if (sub_120B590(a2) != 1)
          {
            sub_4A85E4();
          }

          sub_4A50F0(&v14);
        }
      }
    }
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v14);
    sub_4A5C(&v14, "zilch::PathDecoder with distance ", 33);
    v7 = std::ostream::operator<<();
    sub_4A5C(v7, " and angle ", 11);
    v8 = std::ostream::operator<<();
    sub_4A5C(v8, " returned path of size ", 23);
    std::ostream::operator<<();
    if ((v23 & 0x10) != 0)
    {
      v10 = v22;
      if (v22 < v19)
      {
        v22 = v19;
        v10 = v19;
      }

      v11 = *(&v18 + 1);
      v9 = v10 - *(&v18 + 1);
      if (v10 - *(&v18 + 1) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        v9 = 0;
        v13 = 0;
LABEL_30:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 2u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        return *(a3 + 80) != *(a3 + 72);
      }

      v11 = v17;
      v9 = v18 - v17;
      if (v18 - v17 >= 0x7FFFFFFFFFFFFFF8uLL)
      {
LABEL_37:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_30;
  }

  return *(a3 + 80) != *(a3 + 72);
}

void sub_4A6488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4A50F0(va);
  _Unwind_Resume(a1);
}

void sub_4A649C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_4A6524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4A50F0(va);
  _Unwind_Resume(a1);
}

void sub_4A6538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4A50F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4A654C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_4E3D18(v91);
  sub_4E3D18(v92);
  v95 = 0;
  memset(v93, 0, sizeof(v93));
  v94 = 0;
  v96 = 0;
  v97 = 0;
  v5 = sub_3B4FC(v93);
  v93[1] = v5;
  sub_F68960(v90);
  v77 = a3;
  v6 = *(a2 + 80) - *(a2 + 72);
  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v6 >> 4;
  v12 = 1;
  v78 = v6 >> 4;
  while (1)
  {
    v14 = (*(a2 + 72) + v7);
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(a2 + 24) + (v16 << 6);
    v18 = *(a2 + 48) + 48 * v16;
    v19 = v15 ? v18 : v17;
    if (!sub_4566A4(v19))
    {
      break;
    }

LABEL_5:
    ++v10;
    v7 += 16;
    if (v11 == v10)
    {
      if (*(a2 + 80) - *(a2 + 72) == 16)
      {
        sub_F8EC88((a1 + 3), (((v12 == 0) << 48) | (v8 << 32) | v9) ^ 0x1000000000000, __p);
        sub_F69060(v90, (v8 << 16) | (v9 << 32) | (2 * (v12 == 0)), __p, 0);
      }

LABEL_50:
      LODWORD(__p[0]) = sub_5AAC4(a2);
      v53 = sub_120B2B8(__p, v52);
      LODWORD(v81) = sub_3F80(a2);
      v55 = sub_120B3F8(&v81, v54);
      v56 = -1;
      if (v55 <= 180.0 && fabs(v53) <= 85.0511288 && v55 >= -180.0)
      {
        v57 = sin(fmin(fmax(v53, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        LODWORD(v58) = ((log((v57 + 1.0) / (1.0 - v57)) / -12.5663706 + 0.5) * 4294967300.0);
        if (v58 >= 0xFFFFFFFE)
        {
          v58 = 4294967294;
        }

        else
        {
          v58 = v58;
        }

        v56 = ((v55 + 180.0) / 360.0 * 4294967300.0) | (v58 << 32);
      }

      v83 = v56;
      v84 = 0x7FFFFFFF;
      v59 = sub_F69654(v90);
      sub_4A7AC4(a1, v59, &v83, __p);
      sub_F68F20(v90, __p);
      LODWORD(__p[0]) = sub_5AAC4(a2 + 12);
      v61 = sub_120B2B8(__p, v60);
      v80 = sub_3F80((a2 + 12));
      v63 = sub_120B3F8(&v80, v62);
      v64 = -1;
      if (v63 <= 180.0 && fabs(v61) <= 85.0511288 && v63 >= -180.0)
      {
        v65 = sin(fmin(fmax(v61, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        LODWORD(v66) = ((log((v65 + 1.0) / (1.0 - v65)) / -12.5663706 + 0.5) * 4294967300.0);
        if (v66 >= 0xFFFFFFFE)
        {
          v66 = 4294967294;
        }

        else
        {
          v66 = v66;
        }

        v64 = ((v63 + 180.0) / 360.0 * 4294967300.0) | (v66 << 32);
      }

      v81 = v64;
      v82 = 0x7FFFFFFF;
      v67 = sub_F6966C(v90);
      sub_4A7AC4(a1, v67, &v81, __p);
      sub_F6901C(v90, __p);
      if (*(a2 + 80) - *(a2 + 72) == 16)
      {
        v68 = sub_73F1C(v90);
        if (*v68 > *sub_F69058(v90))
        {
          v69 = sub_F69058(v90);
          v70 = *(v69 + 16);
          *__p = *v69;
          v86 = v70;
          v71 = *(v69 + 32);
          v72 = *(v69 + 48);
          v73 = *(v69 + 64);
          v89 = *(v69 + 80);
          v87[1] = v72;
          v88 = v73;
          v87[0] = v71;
          v74 = sub_73F1C(v90);
          v75 = __p[0];
          if (*v74 > LODWORD(__p[0]))
          {
            v75 = *v74;
          }

          LODWORD(__p[0]) = v75;
          sub_F6901C(v90, __p);
        }
      }

      sub_F6516C(__p, v90);
    }
  }

  v20 = (*(a2 + 72) + v7);
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = (*(a2 + 24) + (v22 << 6));
  v24 = *(a2 + 48) + 48 * v22;
  if (v21)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (!v26)
  {
    __cxa_bad_cast();
  }

  v27 = v26;
  v28 = v26[3];
  if (!v10)
  {
    v39 = sub_588E0(v26);
    v41 = *(v5 - 2);
    v40 = *(v5 - 1);
    if (v41 >= v40)
    {
      v43 = *(v5 - 3);
      v44 = v41 - v43;
      v45 = (v41 - v43) >> 2;
      v46 = v45 + 1;
      if ((v45 + 1) >> 62)
      {
        sub_1794();
      }

      v47 = v40 - v43;
      if (v47 >> 1 > v46)
      {
        v46 = v47 >> 1;
      }

      if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v48 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v46;
      }

      if (v48)
      {
        if (!(v48 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v45) = v39;
      v42 = 4 * v45 + 4;
      memcpy(0, v43, v44);
      *(v5 - 3) = 0;
      *(v5 - 2) = v42;
      *(v5 - 1) = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v41 = v39;
      v42 = (v41 + 4);
    }

    v9 = v28;
    v8 = WORD2(v28);
    v12 = BYTE6(v28);
    *(v5 - 2) = v42;
    v11 = v78;
    goto LABEL_5;
  }

  sub_4A7974((a1 + 3), (v12 << 48) | (v8 << 32) | v9, v28 & 0xFFFFFFFFFFFFFFLL, __p);
  if (DWORD2(v88))
  {
    if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*(v87 + 8)), vceqzq_s64(*__p)), xmmword_22671F0)) & 0xF) == 0 && LODWORD(v87[0]) != 0)
    {
      sub_F692F8(v90, __p, 0);
      v30 = sub_588E0(v27);
      v32 = *(v5 - 2);
      v31 = *(v5 - 1);
      if (v32 < v31)
      {
        *v32 = v30;
        v13 = v32 + 4;
      }

      else
      {
        v33 = *(v5 - 3);
        v34 = v32 - v33;
        v35 = (v32 - v33) >> 2;
        v36 = v35 + 1;
        if ((v35 + 1) >> 62)
        {
          sub_1794();
        }

        v37 = v31 - v33;
        if (v37 >> 1 > v36)
        {
          v36 = v37 >> 1;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v38 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          if (!(v38 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v49 = v35;
        v50 = (4 * v35);
        v51 = &v50[-v49];
        *v50 = v30;
        v13 = v50 + 1;
        memcpy(v51, v33, v34);
        *(v5 - 3) = v51;
        *(v5 - 2) = v13;
        *(v5 - 1) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      v11 = v78;
      *(v5 - 2) = v13;
      v9 = v28;
      v8 = WORD2(v28);
      v12 = BYTE6(v28);
      goto LABEL_5;
    }
  }

  sub_4E3D18(v77);
  sub_4E3D18((v77 + 48));
  *(v77 + 168) = 0;
  *(v77 + 96) = 0u;
  *(v77 + 112) = 0u;
  *(v77 + 128) = 0u;
  *(v77 + 144) = 0;
  *(v77 + 176) = 0;
  *(v77 + 184) = 0;
  sub_4547F0(v90);
  return sub_49AD08(v91);
}

void sub_4A6E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_454784(v30);
  sub_4547F0(&a30);
  sub_49AD08(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

void sub_4A6EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_4547F0(&a30);
  sub_49AD08(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

uint64_t sub_4A6F50@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  sub_4A7524(a1, a2, v44);
  if (sub_F69D6C(v44))
  {
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v33);
      sub_4A5C(&v33, "Reconstructing base path from geoIDs failed", 43);
      if ((v43 & 0x10) != 0)
      {
        v27 = v42;
        if (v42 < v39)
        {
          v42 = v39;
          v27 = v39;
        }

        v28 = v38;
        v5 = v27 - v38;
        if (v27 - v38 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((v43 & 8) == 0)
        {
          v5 = 0;
          v32 = 0;
LABEL_30:
          *(&__dst + v5) = 0;
          sub_7E854(&__dst, 3u);
          if (v32 < 0)
          {
            operator delete(__dst);
          }

          if (v41 < 0)
          {
            operator delete(v40);
          }

          std::locale::~locale(&v35);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_35;
        }

        v28 = v36;
        v5 = v37 - v36;
        if ((v37 - v36) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_27:
          sub_3244();
        }
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      v32 = v5;
      if (!v5)
      {
        goto LABEL_30;
      }

LABEL_29:
      memmove(&__dst, v28, v5);
      goto LABEL_30;
    }

LABEL_35:
    sub_F68960(a3);
    return sub_4547F0(v44);
  }

  if (sub_1181FE4(v44, (a1 + 3)))
  {
    if (!sub_7E7E4(3u))
    {
      goto LABEL_35;
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "Reconstructing geoID path failed after finding a base path", 58);
    if ((v43 & 0x10) != 0)
    {
      v29 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v29 = v39;
      }

      v28 = v38;
      v5 = v29 - v38;
      if (v29 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v5 = 0;
        v32 = 0;
        goto LABEL_30;
      }

      v28 = v36;
      v5 = v37 - v36;
      if ((v37 - v36) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v32 = v5;
    if (!v5)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  *a3 = *v44;
  v6 = v46;
  *(a3 + 16) = *&v44[16];
  *&v44[8] = 0u;
  *(a3 + 24) = v45;
  *(a3 + 40) = v6;
  v45 = 0u;
  *v44 = 0;
  v46 = 0;
  v7 = v52;
  *(a3 + 96) = v50;
  v8 = v49;
  v9 = v47;
  *(a3 + 64) = v48;
  *(a3 + 80) = v8;
  *(a3 + 48) = v9;
  *(a3 + 104) = v51;
  *(a3 + 120) = v7;
  v51 = 0u;
  v52 = 0;
  *(a3 + 128) = v53;
  v10 = v56;
  *(a3 + 144) = v54;
  v53 = 0u;
  *(a3 + 152) = v55;
  *(a3 + 168) = v10;
  v55 = 0u;
  v54 = 0;
  v56 = 0;
  v11 = v57;
  v12 = v58;
  v13 = v61;
  *(a3 + 208) = v59;
  *(a3 + 176) = v11;
  *(a3 + 192) = v12;
  *(a3 + 216) = v60;
  *(a3 + 232) = v13;
  v60 = 0u;
  v61 = 0;
  *(a3 + 240) = v62;
  v14 = v79;
  *(a3 + 256) = v63;
  v62 = 0u;
  v15 = v64;
  v16 = v66;
  *(a3 + 280) = v65;
  *(a3 + 296) = v16;
  *(a3 + 264) = v15;
  v17 = v67;
  v18 = v68;
  v19 = v70;
  *(a3 + 344) = v69;
  *(a3 + 360) = v19;
  *(a3 + 312) = v17;
  *(a3 + 328) = v18;
  v20 = v71;
  v21 = v72;
  v22 = v74;
  *(a3 + 408) = v73;
  *(a3 + 424) = v22;
  *(a3 + 376) = v20;
  *(a3 + 392) = v21;
  v23 = v75;
  v24 = v76;
  v25 = v78;
  *(a3 + 472) = v77;
  *(a3 + 488) = v25;
  *(a3 + 440) = v23;
  *(a3 + 456) = v24;
  *(a3 + 504) = v14;
  v63 = 0;
  v79 = 0;
  v26 = v81;
  *(a3 + 512) = v80;
  *(a3 + 528) = v26;
  *(a3 + 544) = v82;
  v80 = 0u;
  v81 = 0u;
  v82 = 0;
  return sub_4547F0(v44);
}

void sub_4A7490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    sub_4547F0(&a49);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  sub_4547F0(&a49);
  _Unwind_Resume(a1);
}

uint64_t sub_4A7524@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  sub_F68960(v53);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    LOWORD(v7) = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = *v5;
      if (*v5 >= 0)
      {
        v11 = *v5;
      }

      else
      {
        v11 = -v10;
      }

      v12 = sub_335D84(*a1, v11);
      v13 = v12;
      v14 = v12;
      if (v12 > 0xFFFFFFFEFFFFFFFFLL || v12 == 0)
      {
LABEL_19:
        sub_F68960(a3);
        return sub_4547F0(v53);
      }

      if (v8)
      {
        sub_4A7974((a1 + 3), (v7 << 32) | (v9 << 48) | v8, v12 & 0xFFFFFFFFFFFFLL | ((v10 < 1) << 48), &v45);
        if (!LODWORD(v52[0]))
        {
          goto LABEL_19;
        }

        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v49), vceqzq_s64(v45)), xmmword_22671F0)) & 0xF) != 0 || v48 == 0)
        {
          goto LABEL_19;
        }

        sub_F692F8(v53, &v45, 0);
      }

      v7 = HIDWORD(v13);
      v8 = v13;
      ++v5;
      v9 = v10 < 1;
    }

    while (v5 != v6);
    if (a2[1] - *a2 == 8)
    {
      sub_F8EC88((a1 + 3), (((v10 > 0) << 48) | (WORD2(v13) << 32) | v14) ^ 0x1000000000000, v45.i64);
      sub_F69060(v53, (v14 << 32) | (WORD2(v13) << 16) | (2 * (v10 > 0)), &v45, 0);
    }
  }

  v45.i64[1] = 0;
  v46 = 0;
  LOBYTE(v48) = 0;
  v47 = 0;
  v49.i64[0] = 0x3FF0000000000000;
  v49.i8[8] = 1;
  v50 = 0;
  v51 = 0;
  v52[0] = 2359296000;
  *(v52 + 7) = 0;
  v45.i32[0] = 0;
  sub_F68F20(v53, &v45);
  v36 = 0;
  v37 = 0;
  v39 = 0;
  v38 = 0;
  v40 = 0x3FF0000000000000;
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v44[0] = 2359296000;
  *(v44 + 7) = 0;
  v35 = 1000000000;
  sub_F6901C(v53, &v35);
  *a3 = *v53;
  *(a3 + 16) = *&v53[16];
  *v53 = 0;
  *(a3 + 24) = v54;
  *(a3 + 40) = v55;
  *&v53[8] = 0u;
  v54 = 0u;
  v55 = 0;
  *(a3 + 96) = v59;
  v17 = v58;
  v18 = v56;
  *(a3 + 64) = v57;
  *(a3 + 80) = v17;
  *(a3 + 48) = v18;
  *(a3 + 104) = v60;
  *(a3 + 120) = v61;
  v60 = 0u;
  v61 = 0;
  *(a3 + 128) = v62;
  *(a3 + 144) = v63;
  v62 = 0u;
  v63 = 0;
  *(a3 + 152) = v64;
  *(a3 + 168) = v65;
  v64 = 0u;
  v65 = 0;
  v19 = v66;
  v20 = v67;
  *(a3 + 208) = v68;
  *(a3 + 176) = v19;
  *(a3 + 192) = v20;
  *(a3 + 216) = v69;
  *(a3 + 232) = v70;
  v69 = 0u;
  v70 = 0;
  *(a3 + 240) = v71;
  *(a3 + 256) = v72;
  v71 = 0u;
  v72 = 0;
  v21 = v73;
  v22 = v75;
  *(a3 + 280) = v74;
  *(a3 + 296) = v22;
  *(a3 + 264) = v21;
  v23 = v76;
  v24 = v77;
  v25 = v79;
  *(a3 + 344) = v78;
  *(a3 + 360) = v25;
  *(a3 + 312) = v23;
  *(a3 + 328) = v24;
  v26 = v80;
  v27 = v81;
  v28 = v83;
  *(a3 + 408) = v82;
  *(a3 + 424) = v28;
  *(a3 + 376) = v26;
  *(a3 + 392) = v27;
  v29 = v84;
  v30 = v85;
  v31 = v87;
  *(a3 + 472) = v86;
  *(a3 + 488) = v31;
  *(a3 + 440) = v29;
  *(a3 + 456) = v30;
  *(a3 + 504) = v88;
  v88 = 0;
  v32 = v90;
  *(a3 + 512) = v89;
  *(a3 + 528) = v32;
  *(a3 + 544) = v91;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  return sub_4547F0(v53);
}

void sub_4A7974(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_F8ED58(a1, (a2 >> 16) & 0xFFFF0000 | (a2 << 32) | (2 * ((a2 & 0xFF000000000000) == 0)), 0, &v20, 1);
  v6 = v20;
  v7 = v20;
  if (v20 != v21)
  {
    v7 = v20;
    while (1)
    {
      v8 = *(v7 + 9);
      v9 = (v8 >> 16) & 0xFFFF0000 | (v8 << 32);
      LODWORD(v8) = (v8 & 0xFF000000000000) == 0;
      v10 = 2 * v8;
      v11 = (v9 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v8 & 1))) + 4 * *(v7 + 41);
      v12 = HIDWORD(v11);
      v13 = WORD1(v11);
      v14 = v12 == a3 && v13 == WORD2(a3);
      if (v14 && (BYTE6(a3) ^ (v10 >> 1)) == 1)
      {
        break;
      }

      v7 = (v7 + 88);
      if (v7 == v21)
      {
        goto LABEL_15;
      }
    }
  }

  if (v7 == v21)
  {
LABEL_15:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0x1000000000000;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0x1000000000000;
    *(a4 + 80) = 0;
    *(a4 + 84) &= 0xF8u;
    if (!v6)
    {
      return;
    }

    goto LABEL_16;
  }

  v16 = v7[1];
  *a4 = *v7;
  *(a4 + 16) = v16;
  v17 = v7[2];
  v18 = v7[3];
  v19 = v7[4];
  *(a4 + 80) = *(v7 + 10);
  *(a4 + 48) = v18;
  *(a4 + 64) = v19;
  *(a4 + 32) = v17;
  if (v6)
  {
LABEL_16:
    v21 = v6;
    operator delete(v6);
  }
}

void sub_4A7AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4A7AC4(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  v6 = (a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0x3FF0000000000000;
  *(a4 + 48) = 1;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 2359296000;
  *(a4 + 79) = 0;
  sub_2B7A20(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, &v32);
  sub_31BF20(&v32, v35);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v32 = sub_4A580C(a3, v35);
  LODWORD(__p) = v7;
  sub_47190(&v32, v35);
  v9 = v8 * 1000000000.0;
  if (v9 >= 0.0)
  {
    if (v9 < 4.50359963e15)
    {
      v10 = (v9 + v9) + 1;
      goto LABEL_8;
    }
  }

  else if (v9 > -4.50359963e15)
  {
    v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
LABEL_8:
    v9 = (v10 >> 1);
  }

  *a4 = v9;
  v11 = v32;
  if (v32 == -1 || (v13 = *a3, v12 = a3[1], v13 == -1) && v12 == -1)
  {
    *v6 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = v35[0];
    if (!v35[0])
    {
      return;
    }

    goto LABEL_13;
  }

  v15 = exp(3.14159265 - HIDWORD(v32) * 6.28318531 / 4294967300.0);
  v16 = atan((v15 - 1.0 / v15) * 0.5) * 57.2957795 * 0.0174532925;
  v17.i64[0] = v11;
  v17.i64[1] = v13;
  v18 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
  v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
  v20 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v31 = vsubq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0];
  v21 = sin((v16 - v19) * 0.5);
  v22 = v21 * v21;
  v23 = cos(v16);
  v24 = v23 * cos(v19);
  v25 = sin(0.5 * v31);
  v26 = atan2(sqrt(v25 * v25 * v24 + v22), sqrt(1.0 - (v25 * v25 * v24 + v22)));
  v27 = (v26 + v26) * 6372797.56 * 100.0;
  if (v27 >= 0.0)
  {
    v28 = v27;
    if (v27 >= 4.50359963e15)
    {
      goto LABEL_21;
    }

    v29 = (v27 + v27) + 1;
  }

  else
  {
    v28 = v27;
    if (v27 <= -4.50359963e15)
    {
      goto LABEL_21;
    }

    v29 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
  }

  v28 = (v29 >> 1);
LABEL_21:
  if (v28 < 9.22337204e18)
  {
    if (v27 >= 0.0)
    {
      if (v27 >= 4.50359963e15)
      {
        goto LABEL_30;
      }

      v30 = (v27 + v27) + 1;
    }

    else
    {
      if (v27 <= -4.50359963e15)
      {
        goto LABEL_30;
      }

      v30 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
    }

    v27 = (v30 >> 1);
LABEL_30:
    *v6 = v27;
    v14 = v35[0];
    if (!v35[0])
    {
      return;
    }

    goto LABEL_13;
  }

  *v6 = 0x7FFFFFFFFFFFFFFELL;
  v14 = v35[0];
  if (v35[0])
  {
LABEL_13:
    v35[1] = v14;
    operator delete(v14);
  }
}

void sub_4A7E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_4A7EBC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 48;
      v6 = v3 - 48;
      v7 = v3 - 48;
      do
      {
        v8 = *v7;
        v7 -= 48;
        (*v8)(v6);
        v5 -= 48;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_4A7F58(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 64;
      v6 = v3 - 64;
      v7 = v3 - 64;
      do
      {
        v8 = *v7;
        v7 -= 64;
        (*v8)(v6);
        v5 -= 64;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_4A7FF4(void *a1, unint64_t a2, unint64_t a3, unsigned int *a4, int a5, uint64_t a6, int a7)
{
  v9 = a2;
  v11 = 0;
  if (a7)
  {
    v12 = a2;
  }

  else
  {
    v12 = a3 - 1;
  }

  if (a2 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2;
  }

  v72 = v13;
  v14 = 1.79769313e308;
  v76 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
  v77 = vdupq_n_s64(0x4076800000000000uLL);
  v74 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v75 = vdupq_n_s64(0xC066800000000000);
  while (1)
  {
    if (a7)
    {
      if (v12 >= a3)
      {
        return v9;
      }
    }

    else if (v12 < v72)
    {
      return v9;
    }

    v15 = (*a1 + 12 * v12);
    v16 = *(v15 + 3);
    v17.i64[0] = *v15;
    v17.i64[1] = HIDWORD(*v15);
    v18 = vcvtq_f64_u64(v17);
    v17.i64[0] = v16;
    v17.i64[1] = HIDWORD(v16);
    v19 = vsubq_f64(vcvtq_f64_u64(v17), v18);
    v20 = vmulq_f64(v19, v19);
    v21 = vaddvq_f64(v20);
    if (v21 == 0.0)
    {
      goto LABEL_19;
    }

    if (v21 <= 0.0)
    {
      v21 = -v21;
    }

    if (v21 < 2.22044605e-16)
    {
LABEL_19:
      v22 = 0.0;
    }

    else
    {
      v69.i64[0] = *a4;
      v69.i64[1] = HIDWORD(*a4);
      v70 = vmulq_f64(v19, vsubq_f64(vcvtq_f64_u64(v69), v18));
      *&v22 = *&vdivq_f64(vaddq_f64(v70, vdupq_laneq_s64(v70, 1)), vaddq_f64(v20, vdupq_laneq_s64(v20, 1)));
    }

    v23 = v12 + 1;
    v24 = 1.0;
    if (v22 <= 1.0)
    {
      v24 = v22;
    }

    v25 = v22 >= 0.0 ? v24 : 0.0;
    v26 = sub_6EFC0(v15, v15 + 3, v25);
    v28 = v26;
    v29 = HIDWORD(v26);
    if (a5)
    {
      v30 = sqrt(((*a4 - v26) * (*a4 - v26) + (a4[1] - v29) * (a4[1] - v29))) / 100.0;
      if (v30 < v14)
      {
        v9 = v12;
        v14 = v30;
      }

      if (a6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }

      v31 = (*a1 + 12 * v23);
      v32 = (*a1 + 12 * v12);
      v33 = *v32;
      v34 = v32[1] - v31[1];
      v35 = sqrt(((v33 - *v31) * (v33 - *v31) + v34 * v34)) / 100.0 * 100.0;
      if (v35 < 0.0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      LODWORD(v27) = a4[1];
      v83 = v14;
      v37 = exp(3.14159265 - v27 * 6.28318531 / 4294967300.0);
      v38 = atan((v37 - 1.0 / v37) * 0.5) * 57.2957795 * 0.0174532925;
      v78 = *a4;
      v39 = exp(3.14159265 - v29 * 6.28318531 / 4294967300.0);
      v40 = atan((v39 - 1.0 / v39) * 0.5) * 57.2957795 * 0.0174532925;
      v41.i64[0] = v78;
      v41.i64[1] = v28;
      v42 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v41), v77), v76), v75), v74);
      v79 = vsubq_f64(v42, vdupq_laneq_s64(v42, 1)).f64[0];
      v43 = sin((v38 - v40) * 0.5);
      v44 = v43 * v43;
      v45 = cos(v38);
      v46 = v40;
      v14 = v83;
      v47 = cos(v46) * v45;
      v48 = sin(0.5 * v79);
      v49 = atan2(sqrt(v48 * v48 * v47 + v44), sqrt(1.0 - (v48 * v48 * v47 + v44)));
      v50 = (v49 + v49) * 6372797.56;
      if (v50 < v83)
      {
        v9 = v12;
        v14 = v50;
      }

      if (a6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }

      v51 = (*a1 + 12 * v23);
      v52 = (*a1 + 12 * v12);
      LODWORD(v50) = v52[1];
      v84 = v14;
      v53 = exp(3.14159265 - *&v50 * 6.28318531 / 4294967300.0);
      *&v54 = atan((v53 - 1.0 / v53) * 0.5) * 57.2957795;
      LODWORD(v55) = *v52;
      HIDWORD(v55) = *v51;
      v80 = v55;
      v56 = *&v54 * 0.0174532925;
      LODWORD(v54) = v51[1];
      v57 = exp(3.14159265 - v54 * 6.28318531 / 4294967300.0);
      v58 = atan((v57 - 1.0 / v57) * 0.5) * 57.2957795 * 0.0174532925;
      v59.i64[0] = v80;
      v59.i64[1] = HIDWORD(v80);
      v60 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v59), v77), v76), v75), v74);
      v81 = vsubq_f64(v60, vdupq_laneq_s64(v60, 1)).f64[0];
      v61 = sin((v56 - v58) * 0.5);
      v62 = v61 * v61;
      v63 = cos(v56);
      v64 = v58;
      v14 = v84;
      v65 = v63 * cos(v64);
      v66 = sin(0.5 * v81);
      v67 = atan2(sqrt(v66 * v66 * v65 + v62), sqrt(1.0 - (v66 * v66 * v65 + v62)));
      v35 = (v67 + v67) * 6372797.56 * 100.0;
      if (v35 < 0.0)
      {
LABEL_30:
        if (v35 > -4.50359963e15)
        {
          v36 = (((v35 + v35) - 1) / 2);
        }

        else
        {
          v36 = v35;
        }

        goto LABEL_39;
      }
    }

    v36 = v35;
    if (v35 < 4.50359963e15)
    {
      v36 = (((v35 + v35) + 1) >> 1);
    }

LABEL_39:
    if (v36 < 9.22337204e18)
    {
      break;
    }

    v11 += 0x7FFFFFFFFFFFFFFELL;
    if (v11 > a6)
    {
      return v9;
    }

LABEL_8:
    if (a7)
    {
      ++v12;
    }

    else
    {
      --v12;
    }
  }

  if (v35 >= 0.0)
  {
    if (v35 < 4.50359963e15)
    {
      v68 = (v35 + v35) + 1;
LABEL_48:
      v35 = (v68 >> 1);
    }
  }

  else if (v35 > -4.50359963e15)
  {
    v68 = (v35 + v35) - 1 + (((v35 + v35) - 1) >> 63);
    goto LABEL_48;
  }

  v11 += v35;
  if (v11 <= a6)
  {
    goto LABEL_8;
  }

  return v9;
}

uint64_t sub_4A8748(uint64_t a1, void **a2, uint64_t a3)
{
  if (!sub_120B590(a2))
  {
    return 1;
  }

  v6 = *(a1 + 64);
  if (!v6)
  {
    return 1;
  }

  v28 = 0uLL;
  v7 = *(a1 + 72);
  *(a1 + 72) = v7 + 1;
  if (v7 > 74999)
  {
    goto LABEL_19;
  }

  v8 = v6 + *(a1 + 56) - 1;
  v9 = *(*(a1 + 32) + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8));
  v10 = *(v9 + 16 * v8);
  v11 = *(v9 + 16 * v8 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = v10;
  v12 = *(a1 + 64) + *(a1 + 56) - 1;
  v13 = *(*(*(a1 + 32) + ((v12 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v12 + 8);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = v14 - v15;
  v17 = v14 == v15;
  v19 = *(a1 + 56);
  v18 = *(a1 + 64);
  *(a1 + 64) = v18 - 1;
  v20 = 32 * v16 - 1;
  if (v17)
  {
    v20 = 0;
  }

  if ((v20 - (v18 + v19) + 1) >= 0x200)
  {
    operator delete(*(v14 - 8));
    *(a1 + 40) -= 8;
  }

  v21 = *(v28 + 320);
  if (v21 + 1 >= sub_120B590(a2))
  {
    goto LABEL_19;
  }

  v22 = sub_120B57C(a2, v21 + 1);
  v23 = sub_4AE1C0(v28, v22);
  v24 = sub_120B590(a2);
  result = 0;
  v26 = v24 - 2;
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      if (v23 == 3)
      {
        operator new();
      }

      goto LABEL_20;
    }

    sub_4AA6D4(v28, *a1);
  }

  else if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_20;
    }

    sub_4A8BD4(v28, *a1, v22, (a1 + 24), v26 == v21, 1);
    if (v26 == v21)
    {
      sub_4AE2B4(a3, (v28 + 32));
LABEL_19:
      result = 1;
      goto LABEL_20;
    }
  }

  else
  {
    if (!sub_570C5C(v22))
    {
      operator new();
    }

    sub_4A8BD4(v28, *a1, v22, (a1 + 24), v26 == v21, 0);
  }

  result = 0;
LABEL_20:
  if (*(&v28 + 1))
  {
    if (!atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v27 = result;
      (*(**(&v28 + 1) + 16))(*(&v28 + 1));
      std::__shared_weak_count::__release_weak(*(&v28 + 1));
      return v27;
    }
  }

  return result;
}

void sub_4A8B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1F1A8(&a9);
  sub_1F1A8(&a11);
  _Unwind_Resume(a1);
}

void sub_4A8B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_4A8B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_4A8BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_4A8BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_4A8BD4(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, int a5, int a6)
{
  if (*(a1 + 312) <= 1)
  {
    ++*(a1 + 320);
    if (sub_570C5C(a3))
    {
      v13 = *a1;
      v12 = *(a1 + 8);
      *&v83 = *a1;
      if (v12)
      {
        v14 = std::__shared_weak_count::lock(v12);
        *(&v83 + 1) = v14;
        if (v14)
        {
          v15 = v14;
          v16 = a4[2];
          v17 = a4[1];
          if (v16 == v17)
          {
            v18 = 0;
          }

          else
          {
            v18 = 32 * (v16 - v17) - 1;
          }

          v19 = a4[5];
          v20 = v19 + a4[4];
          if (v18 != v20)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      goto LABEL_69;
    }

    v21 = *(a1 + 328);
    *(a1 + 328) = 0;
    if (*(a1 + 104) == *(a1 + 112))
    {
      v27 = sub_B718(a3);
      v28 = *(v27 + 8);
      *(a1 + 32) = *v27;
      *(a1 + 40) = v28;
      if (a5)
      {
        goto LABEL_12;
      }
    }

    else if (a5)
    {
LABEL_12:
      sub_4AA288(a1 + 32, a3);
      v13 = *a1;
      v22 = *(a1 + 8);
      *&v83 = *a1;
      if (v22)
      {
        v23 = std::__shared_weak_count::lock(v22);
        *(&v83 + 1) = v23;
        if (v23)
        {
          v15 = v23;
          v24 = a4[2];
          v17 = a4[1];
          if (v24 == v17)
          {
            v25 = 0;
          }

          else
          {
            v25 = 32 * (v24 - v17) - 1;
          }

          v19 = a4[5];
          v20 = v19 + a4[4];
          if (v25 != v20)
          {
            goto LABEL_19;
          }

LABEL_18:
          sub_4AAC04(a4);
          v17 = a4[1];
          v19 = a4[5];
          v20 = v19 + a4[4];
LABEL_19:
          v26 = (*(v17 + ((v20 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v20);
          *v26 = v13;
          v26[1] = v15;
          a4[5] = v19 + 1;
          return;
        }
      }

LABEL_69:
      sub_3294D0();
    }

    v78 = a2;
    if (*(a1 + 104) == *(a1 + 112))
    {
      v43 = *(a1 + 248);
      if (*(a1 + 256) != v43)
      {
        *(a1 + 256) = v43;
      }

      v87[0] = sub_1209C58(a3);
      v44 = sub_B718(a3);
      (**a2)(a2, v44, *(a1 + 16), a1 + 248);
      v45 = *(a1 + 248);
      if (*(a1 + 256) != v45)
      {
        v46 = 0;
        do
        {
          v47 = *(v45 + 8 * v46);
          sub_120ADE8(&v83);
          sub_B6D0(&v84, 0);
          sub_B6D0(&v85, 9);
          v86 = -1;
          (*(*a2 + 8))(a2, v47, &v83);
          sub_120A8D8(&v83, v82);
          v48 = sub_B718(a3);
          sub_120AA04(v82, v48, v87);
          LOWORD(v47) = sub_120A500(v82);
          v49 = sub_1209C58(a3);
          v50 = sub_4F96D8(a3);
          v51 = sub_1209C60(a3);
          v81 = sub_4AB4D4(a1, v49, v50, v51, v47, v84, v85);
          v79 = COERCE_DOUBLE(sub_120A4F0(v82));
          LODWORD(v80) = v52;
          v53 = sub_B718(a3);
          v54 = sub_120A090(&v79, v53);
          sub_120D138(&v79, 0.1);
          if (sub_120D168(&v81, v79))
          {
            sub_120D138(&v79, v54 * 0.05);
            sub_120D184(&v81, v79);
            operator new();
          }

          v55 = *(&v83 + 1);
          if (*(&v83 + 1) && !atomic_fetch_add((*(&v83 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v55->__on_zero_shared)(v55);
            std::__shared_weak_count::__release_weak(v55);
          }

          ++v46;
          v45 = *(a1 + 248);
        }

        while (v46 < (*(a1 + 256) - v45) >> 3);
      }
    }

    else if (a6 == 1)
    {
      v76 = v21;
      if (*(a1 + 208) == *(a1 + 200))
      {
        v77 = 0;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v77 = 0;
        do
        {
          v32 = *(a1 + 224);
          v33 = sub_1209C58(a3);
          v34 = sub_4F96D8(a3);
          v35 = sub_1209C60(a3);
          v36 = sub_120B084(v32 + v30);
          *&v83 = sub_4AB4D4(a1, v33, v34, v35, v36, *(v32 + v30 + 24), *(v32 + v30 + 28));
          v37 = *(a1 + 200);
          v38 = (*(*v78 + 24))(v78, *(a1 + 136));
          if (__PAIR64__(*(v37 + v29 + 4), *(v37 + v29)) == __PAIR64__(WORD2(v38), v38) && *(v37 + v29 + 6) == BYTE6(v38))
          {
            sub_120D138(v82[0].n128_f64, 0.9);
            *&v83 = sub_120D178(&v83, v82[0].n128_f64[0]);
          }

          sub_120D138(v82[0].n128_f64, 0.1);
          if (sub_120D168(&v83, v82[0].n128_f64[0]))
          {
            v39 = v83;
            v40 = v77;
            v41 = v77 >> 4;
            if (((v77 >> 4) + 1) >> 60)
            {
              sub_1794();
            }

            if (v77 >> 4 != -1)
            {
              if (!(((v77 >> 4) + 1) >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v42 = (16 * v41);
            *v42 = v31;
            v42[1] = v39;
            v77 = 16 * v41 + 16;
            memcpy(0, 0, v40);
          }

          ++v31;
          v30 += 40;
          v29 += 8;
        }

        while (v31 < (*(a1 + 208) - *(a1 + 200)) >> 3);
      }

      v61 = v77;
      v62 = v77 >> 4;
      if ((v77 >> 4) > 1)
      {
        sub_4AB634(0, v77);
        v61 = v77;
      }

      if (v61)
      {
        v63 = v62 - 1;
        if (v62 <= 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = v77 >> 4;
        }

        v65 = dword_8;
        do
        {
          if (v63)
          {
            operator new();
          }

          sub_4AC92C(a1, *(*(a1 + 200) + 8 * *(v65 - 1)), (*(a1 + 224) + 40 * *(v65 - 1)), (*(a1 + 224) + 40 * *(v65 - 1)), v78, *v65);
          v68 = *a1;
          v67 = *(a1 + 8);
          *&v83 = *a1;
          if (!v67 || (v69 = std::__shared_weak_count::lock(v67), (*(&v83 + 1) = v69) == 0))
          {
            sub_3294D0();
          }

          v70 = v69;
          v71 = a4[2];
          v72 = a4[1];
          if (v71 == v72)
          {
            v73 = 0;
          }

          else
          {
            v73 = 32 * (v71 - v72) - 1;
          }

          v74 = a4[5];
          v75 = v74 + a4[4];
          if (v73 == v75)
          {
            sub_4AAC04(a4);
            v72 = a4[1];
            v74 = a4[5];
            v75 = v74 + a4[4];
          }

          v66 = (*(v72 + ((v75 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v75);
          *v66 = v68;
          v66[1] = v70;
          a4[5] = v74 + 1;
          v63 = -1;
          v65 += 2;
          --v64;
        }

        while (v64);
        operator delete(0);
      }

      else
      {
        --*(a1 + 320);
        *(a1 + 328) = v76;
        sub_4AA6D4(a1, v78);
      }
    }

    else
    {
      sub_120A8D8(a1 + 144, &v83);
      LOWORD(v81) = sub_1209C58(a3);
      v56 = sub_B718(a3);
      sub_120AA04(&v83, v56, &v81);
      v57 = sub_120A500(&v83);
      v58 = sub_1209C58(a3);
      v59 = sub_4F96D8(a3);
      v60 = sub_1209C60(a3);
      v79 = sub_4AB4D4(a1, v58, v59, v60, v57, *(a1 + 168), *(a1 + 172));
      sub_120D138(v82[0].n128_f64, 0.1);
      if (sub_120D168(&v79, v82[0].n128_f64[0]))
      {
        sub_4AAFCC(v82, a1);
        sub_4AAB74(a4, v82);
        sub_1F1A8(v82);
      }
    }
  }
}

void sub_4A99F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_4A9A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (!v29)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t sub_4A9BF0(uint64_t a1, int a2, double a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1209E80((a1 + 32));
  sub_1209E80((a1 + 44));
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 128) = sub_120D140();
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 142) = 1;
  sub_120ADE8(a1 + 144);
  sub_B6D0((a1 + 168), 0);
  sub_B6D0((a1 + 172), 9);
  *(a1 + 176) = -1;
  sub_1209E80((a1 + 184));
  *(a1 + 296) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 304) = 1065353216;
  *(a1 + 312) = 0;
  *(a1 + 320) = xmmword_2291230;
  return a1;
}

void sub_4A9CC8(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 144);
  sub_4A45B8((v1 + 32));
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_4A9E5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4AA234(va);
  _Unwind_Resume(a1);
}

void sub_4A9E74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_4A9EAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_4A9F50(result);

    operator delete();
  }

  return result;
}

uint64_t sub_4A9EF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN5zilch14PathHypothesisIN3msl4data21DirectedRoadSegmentIdEEEE27__shared_ptr_default_deleteIS6_S6_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN5zilch14PathHypothesisIN3msl4data21DirectedRoadSegmentIdEEEE27__shared_ptr_default_deleteIS6_S6_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN5zilch14PathHypothesisIN3msl4data21DirectedRoadSegmentIdEEEE27__shared_ptr_default_deleteIS6_S6_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN5zilch14PathHypothesisIN3msl4data21DirectedRoadSegmentIdEEEE27__shared_ptr_default_deleteIS6_S6_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_4A9F50(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[34];
  a1[34] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[31];
  if (v5)
  {
    a1[32] = v5;
    operator delete(v5);
  }

  v6 = a1[28];
  if (v6)
  {
    v7 = a1[29];
    v8 = a1[28];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 32);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v7 -= 40;
      }

      while (v7 != v6);
      v8 = a1[28];
    }

    a1[29] = v6;
    operator delete(v8);
  }

  v10 = a1[25];
  if (v10)
  {
    a1[26] = v10;
    operator delete(v10);
  }

  v11 = a1[19];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[13];
  if (v12)
  {
    a1[14] = v12;
    operator delete(v12);
  }

  v13 = a1[10];
  if (v13)
  {
    v14 = a1[11];
    v15 = a1[10];
    if (v14 != v13)
    {
      v16 = v14 - 6;
      v17 = v14 - 6;
      v18 = v14 - 6;
      do
      {
        v19 = *v18;
        v18 -= 6;
        (*v19)(v17);
        v16 -= 6;
        v20 = v17 == v13;
        v17 = v18;
      }

      while (!v20);
      v15 = a1[10];
    }

    a1[11] = v13;
    operator delete(v15);
  }

  v21 = a1[7];
  if (v21)
  {
    v22 = a1[8];
    v23 = a1[7];
    if (v22 != v21)
    {
      v24 = v22 - 8;
      v25 = v22 - 8;
      v26 = v22 - 8;
      do
      {
        v27 = *v26;
        v26 -= 8;
        (*v27)(v25);
        v24 -= 8;
        v20 = v25 == v21;
        v25 = v26;
      }

      while (!v20);
      v23 = a1[7];
    }

    a1[8] = v21;
    operator delete(v23);
  }

  v28 = a1[1];
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  return a1;
}

void **sub_4AA180(void **a1)
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
        v5 = *(v3 - 4);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_4AA234(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_4A9F50(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_4AA288(uint64_t a1, uint64_t a2)
{
  result = sub_B718(a2);
  v5 = *(result + 8);
  *(a1 + 12) = *result;
  *(a1 + 20) = v5;
  v6 = *(a1 + 80);
  if (*(a1 + 72) != v6 && !*(v6 - 16))
  {
    sub_120A8D8(*(a1 + 32) - 32, v9);
    v8 = sub_1209C58(a2);
    v7 = sub_B718(a2);
    result = sub_120AA04(v9, v7, &v8);
    if (result)
    {
      result = sub_120A4BC(v9);
      if ((result & 1) == 0)
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_4AA64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  _Unwind_Resume(a1);
}

void sub_4AA668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_4AA690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_4AA6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  _Unwind_Resume(a1);
}

void sub_4AA6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_4AA6D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) != *(a1 + 112) && *(a1 + 312) <= 1)
  {
    v3 = *(a1 + 328) + *(a1 + 180);
    *(a1 + 328) = v3;
    if (v3 <= 0x5DC0)
    {
      v4 = *(a1 + 200);
      if (*(a1 + 208) != v4)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          if (sub_4ADBB8(a1, *(v4 + 8 * v6), *(a1 + 224) + v5, a2, v6))
          {
            v7 = sub_394BD0();
            v8 = *(a1 + 168);
            v9 = *(a1 + 172);
            v10 = sub_394BD0();
            sub_4AB4D4(a1, v7, v8, v9, v10, *(*(a1 + 224) + v5 + 24), *(*(a1 + 224) + v5 + 28));
            operator new();
          }

          ++v6;
          v4 = *(a1 + 200);
          v5 += 40;
        }

        while (v6 < (*(a1 + 208) - v4) >> 3);
      }
    }
  }
}

void sub_4AAAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_4AAB74(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_4AAC04(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++a1[5];
  return result;
}

void *sub_4AAC04(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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

void sub_4AAF74(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_4AAFCC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_3294D0();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_4AB014(void *a1)
{
  *a1 = off_266AE28;
  v1 = a1[5];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_4AB0BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v15);
  sub_30E900(&v16, *(a1 + 24));
  v4 = sub_588E0(a1);
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
    if (v6 - v21 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v5 = 0;
      v14 = 0;
      goto LABEL_12;
    }

    v7 = v19;
    v5 = v20 - v19;
    if ((v20 - v19) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v14 = v5;
  if (v5)
  {
    memmove(&__dst, v7, v5);
  }

LABEL_12:
  *(&__dst + v5) = 0;
  p_dst = &__dst;
  if (v14 < 0)
  {
    p_dst = __dst;
  }

  snprintf(__str, 0x400uLL, "%lu: RPE(%s)", v4, p_dst);
  if (v14 < 0)
  {
    operator delete(__dst);
  }

  v9 = strlen(__str);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memcpy(a2, __str, v9);
  }

  a2[v10] = 0;
  v16 = v11;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_4AB418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_4AB42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void *sub_4AB440(void *result)
{
  *result = off_266AE28;
  v1 = result[5];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

double sub_4AB4D4(uint64_t a1, __int16 a2, int a3, unsigned int a4, unsigned __int16 a5, int a6, unsigned int a7)
{
  v19 = a2;
  v17 = a4;
  v18 = a3;
  v15 = a7;
  v16 = a6;
  v20 = sub_120D140();
  v9 = sub_1209A0C(&v19, a5, v20);
  sub_120D138(&v14, fmax(v9 / *(a1 + 24) * (v9 / *(a1 + 24)) * -0.9 + 1.0, 0.0));
  sub_120D148(&v20, v14);
  sub_B6D0(&v14, 0);
  if (sub_1209DC0(&v18, SLODWORD(v14)))
  {
    sub_B6D0(&v14, 0);
    if (sub_1209DC0(&v16, SLODWORD(v14)) && sub_1209DC0(&v18, v16))
    {
      sub_120D138(&v14, 0.5);
      sub_120D148(&v20, v14);
    }
  }

  sub_B6D0(&v14, 9);
  if (sub_1209DC0(&v17, SLODWORD(v14)))
  {
    sub_B6D0(&v14, 9);
    if (sub_1209DC0(&v15, SLODWORD(v14)))
    {
      v10 = sub_3F80(&v17);
      v11 = v10 - sub_3F80(&v15);
      if (v11 < 0)
      {
        v11 = -v11;
      }

      v12 = exp2(-v11);
      sub_120D138(&v14, v12);
      sub_120D148(&v20, v14);
    }
  }

  return v20;
}

void sub_4AB634(__n128 *a1, __n128 *a2)
{
  v2 = 126 - 2 * __clz(a2 - a1);
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  sub_4AB678(a1, a2, &v4, v3, 1);
}

void sub_4AB678(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = &a2[-1].n128_f64[1];
  v68 = &a2[-2].n128_f64[1];
  v69 = a2 - 1;
  v65 = a2 - 3;
  v66 = a2 - 2;
  v67 = &a2[-3].n128_f64[1];
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (sub_120D158(&a2[-1].n128_f64[1], v10->n128_f64[1]))
        {
          v70 = *v10;
          *v10 = a2[-1];
          a2[-1] = v70;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_4ABF0C(v10, v10 + 1, v10 + 2, v69);
      return;
    }

    if (v13 == 5)
    {
      sub_4ABF0C(v10, v10 + 1, v10 + 2, v10 + 3);
      if (!sub_120D158(&a2[-1].n128_f64[1], v10[3].n128_f64[1]))
      {
        return;
      }

      v44 = v10[3];
      v10[3] = a2[-1];
      a2[-1] = v44;
      if (!sub_120D158(&v10[3].n128_f64[1], v10[2].n128_f64[1]))
      {
        return;
      }

      v45 = v10[2];
      v10[2] = v10[3];
      v10[3] = v45;
      if (!sub_120D158(&v10[2].n128_f64[1], v10[1].n128_f64[1]))
      {
        return;
      }

      v46 = v10[1];
      v10[1] = v10[2];
      v10[2] = v46;
      v47 = v10->n128_f64[1];
      v48 = &v10[1].n128_f64[1];
      goto LABEL_101;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v50 = v10 + 1;
          if (&v10[1] != a2)
          {
            v51 = 0;
            v52 = v10;
            do
            {
              v54 = v52;
              v52 = v50;
              if (sub_120D158(&v54[1].n128_f64[1], v54->n128_f64[1]))
              {
                v70 = *v52;
                v55 = v51;
                do
                {
                  v56 = (v10->n128_f64 + v55);
                  *(v10 + v55 + 16) = *(v10 + v55);
                  if (!v55)
                  {
                    v53 = v10;
                    goto LABEL_88;
                  }

                  v55 -= 16;
                }

                while (sub_120D158(&v70.n128_f64[1], *(v56 - 1)));
                v53 = (v10 + v55 + 16);
LABEL_88:
                *v53 = v70;
              }

              v50 = v52 + 1;
              v51 += 16;
            }

            while (&v52[1] != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v59 = v10 + 1;
        if (&v10[1] != a2)
        {
          do
          {
            v60 = a1;
            a1 = v59;
            if (sub_120D158(&v60[1].n128_f64[1], v60->n128_f64[1]))
            {
              v70 = *a1;
              v61 = a1;
              do
              {
                v62 = v61 - 2;
                *v61 = *(v61 - 1);
                v63 = sub_120D158(&v70.n128_f64[1], *(v61 - 3));
                v61 = v62;
              }

              while (v63);
              *v62 = v70;
            }

            v59 = a1 + 1;
          }

          while (&a1[1] != a2);
        }
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_4AC5C8(v10, a2->n128_f64, a2->n128_f64, a3);
      }

      return;
    }

    v14 = &v10[v13 >> 1];
    if (v13 >= 0x81)
    {
      v15 = sub_120D158(&v14->n128_f64[1], a1->n128_f64[1]);
      v16 = sub_120D158(&a2[-1].n128_f64[1], v14->n128_f64[1]);
      if (v15)
      {
        if (v16)
        {
          v70 = *a1;
          v17 = a2 - 1;
          *a1 = *v69;
          goto LABEL_28;
        }

        v70 = *a1;
        *a1 = *v14;
        *v14 = v70;
        if (sub_120D158(&a2[-1].n128_f64[1], v14->n128_f64[1]))
        {
          v70 = *v14;
          v17 = a2 - 1;
          *v14 = *v69;
LABEL_28:
          *v17 = v70;
        }
      }

      else if (v16)
      {
        v70 = *v14;
        *v14 = *v69;
        *v69 = v70;
        if (sub_120D158(&v14->n128_f64[1], a1->n128_f64[1]))
        {
          v70 = *a1;
          *a1 = *v14;
          *v14 = v70;
        }
      }

      v21 = v14 - 1;
      v22 = &v14[-1].n128_f64[1];
      v23 = sub_120D158(&v14[-1].n128_f64[1], a1[1].n128_f64[1]);
      v24 = sub_120D158(v68, v14[-1].n128_f64[1]);
      if (v23)
      {
        if (v24)
        {
          v25 = a1[1];
          v26 = a2 - 2;
          a1[1] = *v66;
          goto LABEL_42;
        }

        v70 = a1[1];
        v28 = v70;
        a1[1] = *v21;
        *v21 = v28;
        if (sub_120D158(v68, v14[-1].n128_f64[1]))
        {
          v70 = *v21;
          v26 = a2 - 2;
          *v21 = *v66;
          v25 = v70;
LABEL_42:
          *v26 = v25;
        }
      }

      else if (v24)
      {
        v70 = *v21;
        *v21 = *v66;
        *v66 = v70;
        if (sub_120D158(&v14[-1].n128_f64[1], a1[1].n128_f64[1]))
        {
          v70 = a1[1];
          v27 = v70;
          a1[1] = *v21;
          *v21 = v27;
        }
      }

      v29 = sub_120D158(&v14[1].n128_f64[1], a1[2].n128_f64[1]);
      v30 = sub_120D158(v67, v14[1].n128_f64[1]);
      if (v29)
      {
        if (v30)
        {
          v31 = a1[2];
          v32 = a2 - 3;
          a1[2] = *v65;
          goto LABEL_51;
        }

        v70 = a1[2];
        v34 = v70;
        a1[2] = v14[1];
        v14[1] = v34;
        if (sub_120D158(v67, v14[1].n128_f64[1]))
        {
          v70 = v14[1];
          v32 = a2 - 3;
          v14[1] = *v65;
          v31 = v70;
LABEL_51:
          *v32 = v31;
        }
      }

      else if (v30)
      {
        v70 = v14[1];
        v14[1] = *v65;
        *v65 = v70;
        if (sub_120D158(&v14[1].n128_f64[1], a1[2].n128_f64[1]))
        {
          v70 = a1[2];
          v33 = v70;
          a1[2] = v14[1];
          v14[1] = v33;
        }
      }

      v35 = sub_120D158(&v14->n128_f64[1], *v22);
      v36 = sub_120D158(&v14[1].n128_f64[1], v14->n128_f64[1]);
      if (v35)
      {
        if (v36)
        {
          v70 = *v21;
          *v21 = v14[1];
          goto LABEL_60;
        }

        v70 = *v21;
        *v21 = *v14;
        *v14 = v70;
        if (sub_120D158(&v14[1].n128_f64[1], v14->n128_f64[1]))
        {
          v70 = *v14;
          *v14 = v14[1];
LABEL_60:
          v14[1] = v70;
        }
      }

      else if (v36)
      {
        v70 = *v14;
        *v14 = v14[1];
        v14[1] = v70;
        if (sub_120D158(&v14->n128_f64[1], *v22))
        {
          v70 = *v21;
          *v21 = *v14;
          *v14 = v70;
        }
      }

      v70 = *a1;
      *a1 = *v14;
      *v14 = v70;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v18 = sub_120D158(&a1->n128_f64[1], v14->n128_f64[1]);
    v19 = sub_120D158(&a2[-1].n128_f64[1], a1->n128_f64[1]);
    if (v18)
    {
      if (v19)
      {
        v70 = *v14;
        v20 = a2 - 1;
        *v14 = *v69;
        goto LABEL_37;
      }

      v70 = *v14;
      *v14 = *a1;
      *a1 = v70;
      if (sub_120D158(&a2[-1].n128_f64[1], a1->n128_f64[1]))
      {
        v70 = *a1;
        v20 = a2 - 1;
        *a1 = *v69;
LABEL_37:
        *v20 = v70;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v19)
    {
      goto LABEL_38;
    }

    v70 = *a1;
    *a1 = *v69;
    *v69 = v70;
    if (!sub_120D158(&a1->n128_f64[1], v14->n128_f64[1]))
    {
      goto LABEL_38;
    }

    v70 = *v14;
    *v14 = *a1;
    *a1 = v70;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (!sub_120D158(&a1[-1].n128_f64[1], a1->n128_f64[1]))
    {
      v10 = sub_4AC04C(a1->n128_f64, a2->n128_f64);
      goto LABEL_68;
    }

LABEL_63:
    v37 = sub_4AC17C(a1->n128_f64, a2->n128_f64);
    if ((v38 & 1) == 0)
    {
      goto LABEL_66;
    }

    v39 = sub_4AC2AC(a1, v37);
    v10 = v37 + 1;
    if (sub_4AC2AC(v37 + 1, a2))
    {
      a4 = -v12;
      a2 = v37;
      if (v39)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v39)
    {
LABEL_66:
      sub_4AB678(a1, v37, a3, -v12, a5 & 1);
      v10 = v37 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v40 = sub_120D158(&v10[1].n128_f64[1], v10->n128_f64[1]);
  v41 = sub_120D158(v9, v10[1].n128_f64[1]);
  if (!v40)
  {
    if (!v41)
    {
      return;
    }

    v57 = v10[1];
    v10[1] = *v69;
    *v69 = v57;
    v47 = v10->n128_f64[1];
    v48 = &v10[1].n128_f64[1];
LABEL_101:
    if (sub_120D158(v48, v47))
    {
      v58 = v10[1];
      v70 = *v10;
      *v10 = v58;
      v10[1] = v70;
    }

    return;
  }

  if (v41)
  {
    v70 = *v10;
    v42 = v69;
    *v10 = *v69;
    v43 = v70;
  }

  else
  {
    v64 = v10[1];
    v70 = *v10;
    *v10 = v64;
    v10[1] = v70;
    if (!sub_120D158(v9, v10[1].n128_f64[1]))
    {
      return;
    }

    v43 = v10[1];
    v42 = v69;
    v10[1] = *v69;
  }

  *v42 = v43;
}

__n128 sub_4ABF0C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v8 = sub_120D158(&a2->n128_f64[1], a1->n128_f64[1]);
  v9 = sub_120D158(&a3->n128_f64[1], a2->n128_f64[1]);
  if (v8)
  {
    if (v9)
    {
      v10 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v10;
      goto LABEL_10;
    }

    v13 = *a1;
    *a1 = *a2;
    *a2 = v13;
    if (sub_120D158(&a3->n128_f64[1], a2->n128_f64[1]))
    {
      v10 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (sub_120D158(&a2->n128_f64[1], a1->n128_f64[1]))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

LABEL_10:
  if (sub_120D158(&a4->n128_f64[1], a3->n128_f64[1]))
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    if (sub_120D158(&a3->n128_f64[1], a2->n128_f64[1]))
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      if (sub_120D158(&a2->n128_f64[1], a1->n128_f64[1]))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

unint64_t sub_4AC04C(double *a1, double *a2)
{
  v2 = a2;
  v15 = *a1;
  if (sub_120D158(&v15 + 1, *(a2 - 1)))
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 2);
      v6 = sub_120D158(&v15 + 1, v4[3]);
      v4 = v5;
    }

    while (!v6);
  }

  else
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= v2)
      {
        break;
      }

      v8 = sub_120D158(&v15 + 1, v7[1]);
      v7 = (v5 + 16);
    }

    while (!v8);
  }

  if (v5 >= v2)
  {
    v9 = v2;
  }

  else
  {
    do
    {
      v9 = v2 - 2;
      v10 = sub_120D158(&v15 + 1, *(v2 - 1));
      v2 -= 2;
    }

    while (v10);
  }

  while (v5 < v9)
  {
    v16 = *v5;
    *v5 = *v9;
    *v9 = v16;
    do
    {
      v11 = *(v5 + 24);
      v5 += 16;
    }

    while (!sub_120D158(&v15 + 1, v11));
    do
    {
      v12 = *(v9 - 1);
      v9 -= 2;
    }

    while (sub_120D158(&v15 + 1, v12));
  }

  v13 = (v5 - 16);
  if ((v5 - 16) != a1)
  {
    *a1 = *v13;
  }

  *v13 = v15;
  return v5;
}

double *sub_4AC17C(double *a1, double *a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = a1[1];
  do
  {
    v7 = sub_120D158(&a1[v4 + 3], v6);
    v4 += 2;
  }

  while (v7);
  v8 = &a1[v4];
  if (v4 == 2)
  {
    while (v8 < a2)
    {
      v9 = a2 - 2;
      v11 = sub_120D158(a2 - 1, v6);
      a2 -= 2;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 2;
      v10 = sub_120D158(a2 - 1, v6);
      a2 -= 2;
    }

    while (!v10);
  }

LABEL_9:
  v12 = v8;
  if (v8 < v9)
  {
    v13 = v9;
    do
    {
      v14 = *v12;
      *v12 = *v13;
      *v13 = v14;
      do
      {
        v15 = v12;
        v12 += 2;
      }

      while (sub_120D158(v15 + 3, v6));
      do
      {
        v16 = v13 - 1;
        v13 -= 2;
      }

      while (!sub_120D158(v16, v6));
    }

    while (v12 < v13);
  }

  result = v12 - 2;
  if (v12 - 2 != a1)
  {
    *a1 = *result;
  }

  *(v12 - 2) = v5;
  *(v12 - 1) = v6;
  return result;
}