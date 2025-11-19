void sub_FCB8F0(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = 0xFCFCFCFCFCFCFCFDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 <= 0x30303030303030)
  {
    if (0xF9F9F9F9F9F9F9FALL * ((a1[2] - *a1) >> 4) > v4)
    {
      v4 = 0xF9F9F9F9F9F9F9FALL * ((a1[2] - *a1) >> 4);
    }

    if (0xFCFCFCFCFCFCFCFDLL * ((a1[2] - *a1) >> 4) >= 0x18181818181818)
    {
      v7 = 0x30303030303030;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x30303030303030)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 16 * ((a1[1] - *a1) >> 4);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_FDDF9C(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCBA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_FCB45C(&a10);
    _Unwind_Resume(a1);
  }

  sub_FCB45C(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_FCBAA0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    v2 = *a1 - *a2;
    if (v2 <= 0.0)
    {
      v2 = -v2;
    }

    if (v2 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 != v4)
  {
    v5 = v3 - v4;
    if (v5 <= 0.0)
    {
      v5 = -v5;
    }

    if (v5 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6 != v7)
  {
    v8 = v6 - v7;
    if (v8 <= 0.0)
    {
      v8 = -v8;
    }

    if (v8 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9 != v10)
  {
    v11 = v9 - v10;
    if (v11 <= 0.0)
    {
      v11 = -v11;
    }

    if (v11 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v12 = a1[4];
  v13 = a2[4];
  if (v12 != v13)
  {
    v14 = v12 - v13;
    if (v14 <= 0.0)
    {
      v14 = -v14;
    }

    if (v14 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15 != v16)
  {
    v17 = v15 - v16;
    if (v17 <= 0.0)
    {
      v17 = -v17;
    }

    if (v17 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v18 = a1[6];
  v19 = a2[6];
  if (v18 != v19)
  {
    v20 = v18 - v19;
    if (v20 <= 0.0)
    {
      v20 = -v20;
    }

    if (v20 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21 != v22)
  {
    v23 = v21 - v22;
    if (v23 <= 0.0)
    {
      v23 = -v23;
    }

    if (v23 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v24 = a1[8];
  v25 = a2[8];
  if (v24 != v25)
  {
    v26 = v24 - v25;
    if (v26 <= 0.0)
    {
      v26 = -v26;
    }

    if (v26 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27 == v28)
  {
    return 1;
  }

  v29 = v27 - v28;
  if (v29 <= 0.0)
  {
    v29 = -v29;
  }

  return v29 < 2.22044605e-16;
}

void sub_FCBC90(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = 0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 <= 0x4F88B2F392A409)
  {
    if (0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 3) > v4)
    {
      v4 = 0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 3);
    }

    if (0xDAB7EC1DD3431B57 * ((a1[2] - *a1) >> 3) >= 0x27C45979C95204)
    {
      v7 = 0x4F88B2F392A409;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x4F88B2F392A409)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 8 * ((a1[1] - *a1) >> 3);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_102B900(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCBE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_FCC1A8(&a10);
    _Unwind_Resume(a1);
  }

  sub_FCC1A8(&a10);
  _Unwind_Resume(a1);
}

void sub_FCBE80(uint64_t *a1, void *a2)
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
      *v7 = *v8;
      v9 = *(v8 + 8);
      *(v7 + 24) = *(v8 + 24);
      *(v7 + 8) = v9;
      *(v8 + 16) = 0uLL;
      *(v8 + 8) = 0;
      v10 = *(v8 + 32);
      v11 = *(v8 + 64);
      v12 = *(v8 + 80);
      *(v7 + 48) = *(v8 + 48);
      *(v7 + 64) = v11;
      *(v7 + 32) = v10;
      *(v7 + 80) = v12;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0uLL;
      *(v7 + 88) = *(v8 + 88);
      *(v7 + 104) = *(v8 + 104);
      *(v8 + 104) = 0;
      v13 = *(v8 + 112);
      v14 = *(v8 + 128);
      *(v8 + 88) = 0uLL;
      *(v7 + 112) = v13;
      *(v7 + 128) = v14;
      v15 = *(v8 + 144);
      v16 = *(v8 + 160);
      v17 = *(v8 + 192);
      *(v7 + 176) = *(v8 + 176);
      *(v7 + 192) = v17;
      *(v7 + 144) = v15;
      *(v7 + 160) = v16;
      v18 = *(v8 + 208);
      v19 = *(v8 + 224);
      v20 = *(v8 + 256);
      *(v7 + 240) = *(v8 + 240);
      *(v7 + 256) = v20;
      *(v7 + 208) = v18;
      *(v7 + 224) = v19;
      *(v7 + 288) = 0;
      *(v7 + 272) = 0uLL;
      *(v7 + 272) = *(v8 + 272);
      *(v7 + 288) = *(v8 + 288);
      *(v8 + 288) = 0;
      v21 = *(v8 + 296);
      v22 = *(v8 + 312);
      *(v8 + 272) = 0uLL;
      *(v7 + 296) = v21;
      *(v7 + 312) = v22;
      *(v7 + 320) = 0;
      *(v7 + 328) = 0uLL;
      *(v7 + 320) = *(v8 + 320);
      *(v7 + 336) = *(v8 + 336);
      *(v8 + 336) = 0;
      *(v8 + 320) = 0uLL;
      *(v7 + 360) = 0;
      *(v7 + 344) = 0uLL;
      *(v7 + 344) = *(v8 + 344);
      *(v7 + 352) = *(v8 + 352);
      *(v8 + 360) = 0;
      *(v8 + 344) = 0uLL;
      *(v7 + 384) = 0;
      *(v7 + 368) = 0uLL;
      *(v7 + 368) = *(v8 + 368);
      *(v7 + 384) = *(v8 + 384);
      *(v8 + 384) = 0;
      *(v8 + 368) = 0uLL;
      v23 = *(v8 + 392);
      *(v7 + 401) = *(v8 + 401);
      *(v7 + 424) = 0;
      *(v7 + 392) = v23;
      *(v7 + 432) = 0uLL;
      *(v7 + 424) = *(v8 + 424);
      *(v7 + 432) = *(v8 + 432);
      *(v8 + 440) = 0;
      *(v8 + 424) = 0uLL;
      v24 = *(v8 + 464);
      *(v7 + 448) = *(v8 + 448);
      *(v7 + 464) = v24;
      *(v7 + 480) = 0;
      *(v7 + 488) = 0uLL;
      *(v7 + 480) = *(v8 + 480);
      *(v7 + 496) = *(v8 + 496);
      *(v8 + 496) = 0;
      *(v8 + 480) = 0uLL;
      *(v7 + 520) = 0;
      *(v7 + 504) = 0uLL;
      *(v7 + 504) = *(v8 + 504);
      *(v7 + 512) = *(v8 + 512);
      *(v8 + 520) = 0;
      *(v8 + 504) = 0uLL;
      *(v7 + 544) = 0;
      *(v7 + 528) = 0uLL;
      *(v7 + 528) = *(v8 + 528);
      *(v7 + 544) = *(v8 + 544);
      *(v8 + 544) = 0;
      *(v8 + 528) = 0uLL;
      *(v7 + 568) = 0;
      *(v7 + 552) = 0uLL;
      *(v7 + 552) = *(v8 + 552);
      *(v7 + 560) = *(v8 + 560);
      *(v8 + 568) = 0;
      *(v8 + 552) = 0uLL;
      *(v7 + 592) = 0;
      *(v7 + 576) = 0uLL;
      *(v7 + 576) = *(v8 + 576);
      *(v7 + 592) = *(v8 + 592);
      *(v8 + 592) = 0;
      *(v8 + 576) = 0uLL;
      v25 = *(v8 + 680);
      v27 = *(v8 + 632);
      v26 = *(v8 + 648);
      *(v7 + 664) = *(v8 + 664);
      *(v7 + 680) = v25;
      *(v7 + 632) = v27;
      *(v7 + 648) = v26;
      v28 = *(v8 + 744);
      v30 = *(v8 + 696);
      v29 = *(v8 + 712);
      *(v7 + 728) = *(v8 + 728);
      *(v7 + 744) = v28;
      *(v7 + 696) = v30;
      *(v7 + 712) = v29;
      v31 = *(v8 + 808);
      v33 = *(v8 + 760);
      v32 = *(v8 + 776);
      *(v7 + 792) = *(v8 + 792);
      *(v7 + 808) = v31;
      *(v7 + 760) = v33;
      *(v7 + 776) = v32;
      v34 = *(v8 + 616);
      *(v7 + 600) = *(v8 + 600);
      *(v7 + 616) = v34;
      v8 += 824;
      v7 += 824;
    }

    while (v8 != v5);
    v35 = v4 + 4;
    do
    {
      sub_3BEF14(v35);
      if (*(v35 - 1) < 0)
      {
        operator delete(*(v35 - 3));
      }

      v36 = v35 + 99;
      v35 += 103;
    }

    while (v36 != v5);
  }

  a2[1] = v6;
  v37 = *a1;
  *a1 = v6;
  a1[1] = v37;
  a2[1] = v37;
  v38 = a1[1];
  a1[1] = a2[2];
  a2[2] = v38;
  v39 = a1[2];
  a1[2] = a2[3];
  a2[3] = v39;
  *a2 = a2[1];
}

uint64_t sub_FCC1A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 824;
    sub_3BEF14((i - 792));
    if (*(i - 793) < 0)
    {
      operator delete(*(i - 816));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_FCC220(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 816;
      do
      {
        sub_3BEF14((v5 + 24));
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v6 = (v5 - 8);
        v5 -= 824;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_FCC2A4(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = 0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 <= 0x4F88B2F392A409)
  {
    if (0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 3) > v4)
    {
      v4 = 0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 3);
    }

    if (0xDAB7EC1DD3431B57 * ((a1[2] - *a1) >> 3) >= 0x27C45979C95204)
    {
      v7 = 0x4F88B2F392A409;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x4F88B2F392A409)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 8 * ((a1[1] - *a1) >> 3);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_102B900(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCC45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_FCC1A8(&a10);
    _Unwind_Resume(a1);
  }

  sub_FCC1A8(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_FCC494(void *a1, unsigned int *a2)
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

void sub_FCC940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FCC968(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = sub_3AF6B4(a3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 54) = 0;
  *(a1 + 62) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = &unk_2290750;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = &unk_2290750;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_2290750;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = &unk_2290750;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = &unk_2290750;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = &unk_2290750;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 496) = &unk_2290750;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 544) = &unk_2290750;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 592) = &unk_2290750;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 640) = &unk_2290750;
  *(a1 + 680) = 0;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 688) = &unk_2290750;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 736) = &unk_2290750;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 784) = &unk_2290750;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 832) = &unk_2290750;
  *(a1 + 872) = 0;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 880) = &unk_2290750;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 928) = &unk_2290750;
  *(a1 + 968) = 0;
  *(a1 + 952) = 0;
  *(a1 + 936) = 0u;
  return a1;
}

void sub_FCCAFC(void *a1)
{
  v3 = 15;
  strcpy(__p, "forbidden_turns");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 13;
  strcpy(__p, "traffic_signs");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 18;
  strcpy(__p, "less_important_frc");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 16;
  strcpy(__p, "oncoming_traffic");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 17;
  strcpy(__p, "same_road_traffic");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_FCCD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_FCCD60(uint64_t *a1, void **a2, uint64_t a3)
{
  v32 = a3;
  v6 = *(sub_4D1F50(*a2, a2[1]) + 32);
  v7 = *(sub_4D1F50(a2[2], a2[3]) + 32) & 0xFFFFFFFFFFFFFFLL;
  v31[0] = v6 & 0xFFFFFFFFFFFFFFLL;
  v31[1] = v7;
  v31[2] = a3;
  sub_FCCF08((a1 + 26), v31, v30);
  if (!v30[0])
  {
    v29[1] = 0;
    v9 = sub_4D1F50(*a2, a2[1]);
    v10 = 0;
    if ((a3 & 2) != 0)
    {
      v10 = sub_4BF020(a1[3], *(v9 + 32) & 0xFFFFFFFFFFFFFFLL, *a1, 1);
    }

    v29[0] = v10;
    v11 = *(sub_4D1F50(*a2, a2[1]) + 32);
    v26 = v11;
    v28 = BYTE6(v11);
    v27 = WORD2(v11);
    v12 = a1[3];
    v13 = sub_2B51D8(v12, v11 & 0xFFFFFFFFFFFFLL);
    v14 = (v13 - *v13);
    if (*v14 >= 0x1Fu)
    {
      v15 = v14[15];
      if (!v15)
      {
LABEL_10:
        v18 = 0xFFFFFFFF00000000;
        goto LABEL_11;
      }

      v16 = *(v13 + v15);
      if (v16 != -1)
      {
        v17 = sub_31DF78(v12, v11);
        v18 = v16 << 32;
        v15 = v17;
LABEL_11:
        v24[2] = a1;
        v25 = v18 | v15;
        v24[0] = &v26;
        v24[1] = &v25;
        sub_FCE570((a1 + 26), v31, v33);
        v19 = *a2;
        v20 = a2[1];
        v21 = a2[2];
        v22 = a2[3];
        v33[0] = a1;
        v33[1] = v29;
        v33[2] = v24;
        v34 += 3;
        v8 = v34;
        v35 = a2;
        v36 = &v32;
        sub_FCD09C(v19, v20, v21, v22 + 1, v33);
        v33[0] = v8;
        sub_FCD2BC(v8, v33);
        return v8;
      }
    }

    v15 = 0;
    goto LABEL_10;
  }

  return v30[3] + 3;
}

uint64_t sub_FCCF08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = a2[1];
  v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v7 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = (((0x2127599BF4325C37 * (v7 ^ (v6 >> 23))) ^ ((0x2127599BF4325C37 * (v7 ^ (v6 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
  v9 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
  if ((v5 & 0xFF000000000000) != 0)
  {
    v10 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = (((0x2127599BF4325C37 * (v10 ^ (v9 >> 23))) ^ ((0x2127599BF4325C37 * (v10 ^ (v9 >> 23))) >> 47)) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v12 = a2[2] + (v11 << 6) + (v11 >> 2) + 2654435769u;
  v13 = (v12 ^ ~v11) + ((v12 ^ v11) << 21);
  v14 = 21 * ((265 * (v13 ^ (v13 >> 24))) ^ ((265 * (v13 ^ (v13 >> 24))) >> 14));
  v15 = (a1 + 48 * (((((v14 ^ (v14 >> 28)) >> 8) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 16)) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 24)) & 0xF));
  v20 = 0;
  result = sub_FCE460(v15, a2, 2147483649u * (v14 ^ (v14 >> 28)), &v20);
  if (!result || (v17 = (*v15 + v20), v18 = v15[1] + 48 * v20, v19 = *v15 + v15[3], v19 == v17))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
  }

  else
  {
    *a3 = v15;
    a3[1] = (a1 + 768);
    a3[2] = v17;
    a3[3] = v18;
    a3[4] = v19;
  }

  return result;
}

void *sub_FCD09C(void *result, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = result;
  if (result)
  {
    result = sub_4D1DC0(result);
    v10 = result;
    if (a3)
    {
      result = sub_4D1DC0(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 != a4 < result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = sub_4D1F50(v9, a2);
        result = sub_4D1F50(a3, a4);
        if (v11 != result)
        {
          while (1)
          {
LABEL_20:
            v20 = a2 + 1;
            v21 = sub_4D1DC0(v9);
            result = sub_4D1DC0(a3);
            if (a2 + 1 >= v21 || a4 >= result)
            {
              if (v20 < v21 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v22 = sub_4D1F50(v9, a2 + 1);
              result = sub_4D1F50(a3, a4);
              if (v22 == result)
              {
                return result;
              }
            }

            v18 = sub_4D1F50(v9, a2);
            v19 = sub_4D1F50(v9, v20);
            sub_FCEF90(a5, v18, v19);
            a2 = v20;
          }
        }
      }
    }

    else if (a2 < result)
    {
      result = sub_4D1DC0(v9);
      if (a2 + 1 < result)
      {
        do
        {
          v15 = sub_4D1F50(v9, a2);
          v16 = sub_4D1F50(v9, a2 + 1);
          sub_FCEF90(a5, v15, v16);
          result = sub_4D1DC0(v9);
          v17 = a2 + 2;
          ++a2;
        }

        while (v17 < result);
      }
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
      for (result = sub_4D1DC0(a3); a4 < result; a2 = v12)
      {
        v12 = a2 + 1;
        v13 = sub_4D1F50(0, a2);
        v14 = sub_4D1F50(0, v12);
        sub_FCEF90(a5, v13, v14);
        result = sub_4D1DC0(a3);
      }
    }
  }

  return result;
}

void sub_FCD2BC(uint64_t a1, uint64_t **a2)
{
  v3 = sub_FCF954(*a1, *(a1 + 8), *a2);
  v4 = *(a1 + 8);
  if (v3 != v4)
  {
    v5 = v3;
    while (v4 != v5)
    {
      v6 = *(v4 - 3);
      if (v6)
      {
        *(v4 - 2) = v6;
        operator delete(v6);
      }

      v4 -= 8;
    }

    *(a1 + 8) = v5;
  }
}

void sub_FCD3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, void *a5)
{
  v5 = a1;
  v7 = *a4;
  v6 = a4[1];
  v8 = *a4;
  if (*a4 == v6)
  {
    v9 = *a4;
  }

  else
  {
    v9 = *a4;
    while (*v9 != a2 || *(v9 + 2) != WORD2(a2) || *(v9 + 6) != BYTE6(a2))
    {
      if (++v9 == v6)
      {
        v9 = a4[1];
        break;
      }
    }

    while (*v8 != a3 || *(v8 + 2) != WORD2(a3) || *(v8 + 6) != BYTE6(a3))
    {
      if (++v8 == v6)
      {
        v8 = a4[1];
        break;
      }
    }
  }

  a5[1] = *a5;
  a5[4] = a5[3];
  v10 = v6 - 1;
  if (v9 == v6 - 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 != v9)
  {
    v12 = v8 + 1;
    if (v8 == v10)
    {
      v12 = v7;
    }

    v30 = v12;
    v13 = 1;
    do
    {
      v14 = &a5[3 * v13];
      while (v11 != v8)
      {
        v16 = *v11;
        v17 = sub_2B51D8(*(v5 + 24), *v11 & 0xFFFFFFFFFFFFLL);
        v18 = (v17 - *v17);
        v19 = *v18;
        if ((v16 & 0xFF000000000000) != 0)
        {
          if (v19 >= 0x9B)
          {
            v20 = v18[77];
            if (v20)
            {
              if ((*(v17 + v20) & 2) != 0)
              {
                goto LABEL_39;
              }
            }
          }
        }

        else if (v19 >= 0x9B)
        {
          v21 = v18[77];
          if (v21)
          {
            if (*(v17 + v21))
            {
LABEL_39:
              v23 = v14[1];
              v22 = v14[2];
              if (v23 < v22)
              {
                *v23 = *v11;
                v15 = (v23 + 8);
              }

              else
              {
                v24 = *v14;
                v25 = v23 - *v14;
                v26 = v25 >> 3;
                v27 = (v25 >> 3) + 1;
                if (v27 >> 61)
                {
                  sub_1794();
                }

                v28 = v22 - v24;
                if (v28 >> 2 > v27)
                {
                  v27 = v28 >> 2;
                }

                if (v28 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v29 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v29 = v27;
                }

                if (v29)
                {
                  if (!(v29 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v26) = *v11;
                v15 = 8 * v26 + 8;
                memcpy(0, v24, v25);
                *v14 = 0;
                v14[1] = v15;
                v14[2] = 0;
                if (v24)
                {
                  operator delete(v24);
                }

                v5 = a1;
              }

              v14[1] = v15;
            }
          }
        }

        if (v11 == v10)
        {
          v11 = v7;
        }

        else
        {
          ++v11;
        }

        if (v11 == v9)
        {
          return;
        }
      }

      v13 = 0;
      v11 = v30;
    }

    while (v30 != v9);
  }
}

void sub_FCD648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, int a5, void **a6)
{
  v59 = a3;
  v60 = a2;
  v12 = sub_2B51D8(*(a1 + 24), a2 & 0xFFFFFFFFFFFFLL);
  v13 = (v12 - *v12);
  if (*v13 >= 0x9Bu && (v14 = v13[77]) != 0)
  {
    v15 = (*(v12 + v14) >> 15) & 1;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  sub_FCD3A4(a1, a2, a3, a4, a6);
  if (a5)
  {
    v16 = &v59;
    if ((a2 & 0xFFFFFFFFFFFFLL) == (a3 & 0xFFFFFFFFFFFFLL))
    {
      return;
    }

    goto LABEL_44;
  }

  v17 = sub_2B51D8(*(a1 + 24), a3 & 0xFFFFFFFFFFFFLL);
  v18 = (v17 - *v17);
  v19 = *v18;
  if ((a3 & 0xFF000000000000) != 0)
  {
    if (v19 < 0x9B)
    {
      goto LABEL_43;
    }

    v20 = v18[77];
    if (!v20 || (*(v17 + v20) & 2) == 0)
    {
      goto LABEL_43;
    }

LABEL_16:
    v23 = a6[1];
    v22 = a6[2];
    if (v23 >= v22)
    {
      v25 = *a6;
      v26 = v23 - *a6;
      v27 = v26 >> 3;
      v28 = (v26 >> 3) + 1;
      if (v28 >> 61)
      {
        goto LABEL_67;
      }

      v29 = v22 - v25;
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

        goto LABEL_68;
      }

      *(8 * v27) = a3;
      v24 = 8 * v27 + 8;
      memcpy(0, v25, v26);
      *a6 = 0;
      a6[1] = v24;
      a6[2] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v23 = a3;
      v24 = (v23 + 1);
    }

    a6[1] = v24;
    v32 = a6[4];
    v31 = a6[5];
    if (v32 >= v31)
    {
      v34 = a6[3];
      v35 = v32 - v34;
      v36 = (v32 - v34) >> 3;
      v37 = v36 + 1;
      if ((v36 + 1) >> 61)
      {
        goto LABEL_67;
      }

      v38 = v31 - v34;
      if (v38 >> 2 > v37)
      {
        v37 = v38 >> 2;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      if (v39)
      {
        if (!(v39 >> 61))
        {
          operator new();
        }

        goto LABEL_68;
      }

      v40 = (v32 - v34) >> 3;
      v41 = (8 * v36);
      v42 = (8 * v36 - 8 * v40);
      *v41 = a3;
      v33 = v41 + 1;
      memcpy(v42, v34, v35);
      a6[3] = v42;
      a6[4] = v33;
      a6[5] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v32 = a3;
      v33 = v32 + 1;
    }

    a6[4] = v33;
    goto LABEL_43;
  }

  if (v19 >= 0x9B)
  {
    v21 = v18[77];
    if (v21)
    {
      if (*(v17 + v21))
      {
        goto LABEL_16;
      }
    }
  }

LABEL_43:
  v16 = &v60;
  if ((a2 & 0xFFFFFFFFFFFFLL) == (a3 & 0xFFFFFFFFFFFFLL))
  {
    return;
  }

LABEL_44:
  v43 = *v16;
  v44 = sub_2B51D8(*(a1 + 24), *v16 & 0xFFFFFFFFFFFFLL);
  v45 = (v44 - *v44);
  v46 = *v45;
  if ((v43 & 0xFF000000000000) != 0)
  {
    if (v46 < 0x9B)
    {
      return;
    }

    v47 = v45[77];
    if (!v47 || (*(v44 + v47) & 2) == 0)
    {
      return;
    }

LABEL_52:
    v49 = &a6[3 * v15];
    v51 = v49[1];
    v50 = v49[2];
    if (v51 < v50)
    {
      *v51 = v43;
      v52 = (v51 + 8);
LABEL_65:
      v49[1] = v52;
      return;
    }

    v53 = *v49;
    v54 = v51 - *v49;
    v55 = v54 >> 3;
    v56 = (v54 >> 3) + 1;
    if (!(v56 >> 61))
    {
      v57 = v50 - v53;
      if (v57 >> 2 > v56)
      {
        v56 = v57 >> 2;
      }

      if (v57 >= 0x7FFFFFFFFFFFFFF8)
      {
        v58 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v58 = v56;
      }

      if (!v58)
      {
        *(8 * v55) = v43;
        v52 = 8 * v55 + 8;
        memcpy(0, v53, v54);
        *v49 = 0;
        v49[1] = v52;
        v49[2] = 0;
        if (v53)
        {
          operator delete(v53);
        }

        goto LABEL_65;
      }

      if (!(v58 >> 61))
      {
        operator new();
      }

LABEL_68:
      sub_1808();
    }

LABEL_67:
    sub_1794();
  }

  if (v46 >= 0x9B)
  {
    v48 = v45[77];
    if (v48)
    {
      if (*(v44 + v48))
      {
        goto LABEL_52;
      }
    }
  }
}

BOOL sub_FCDA30(uint64_t a1, int **a2, __int16 a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if ((a7 & 0x20) != 0 && a4 == a5 && ((a5 ^ a4) & 0xFFFF00000000) == 0 || (a7 & 1) != 0 && (sub_31F6E0(a4, a5, 0, *(a1 + 24), a1 + 56) & 1) != 0 || (a7 & 0x10) != 0 && (a6 & 1) == 0 && (a6 & 0x100) != 0)
  {
    return 0;
  }

  v13 = a2[4];
  v14 = sub_F31D60(*(a1 + 24), v13 & 0xFFFFFFFFFFFFLL);
  v15 = (v14 - *v14);
  v16 = *v15;
  if ((v13 & 0xFF000000000000) == 0)
  {
    if (v16 < 9)
    {
      goto LABEL_17;
    }

    v17 = v15[4];
    if (!v17)
    {
      goto LABEL_17;
    }

LABEL_16:
    v18 = *(v14 + v17);
    goto LABEL_18;
  }

  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v17)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v18 = 0;
LABEL_18:
  v19 = sub_F31D60(*(a1 + 24), a4 & 0xFFFFFFFFFFFFLL);
  v20 = (v19 - *v19);
  v21 = *v20;
  if ((a4 & 0xFF000000000000) == 0)
  {
    if (v21 >= 9)
    {
      v22 = v20[4];
      if (!v22)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  if (v21 < 5)
  {
    goto LABEL_25;
  }

  v22 = v20[2];
  if (v22)
  {
LABEL_24:
    v22 = *(v19 + v22);
  }

LABEL_26:
  v23 = v18 + 18000;
  if (((v18 + 18000) >> 5) >= 0x465u)
  {
    v23 = v18 - 18000;
  }

  v24 = v22 - v23;
  if (v24 > 18000)
  {
    v24 -= 36000;
  }

  if (v24 < -17999)
  {
    v24 += 36000;
  }

  if (a7 & 8) != 0 && ((a3 & 0x100) == 0 || ((a6 >> 8)) && (a6 & 1) == 0 && fabs(v24 / 100.0) < *(a1 + 16))
  {
    return 0;
  }

  if ((a7 & 2) != 0)
  {
    if (a3)
    {
      return 1;
    }

    if (sub_4BF020(*(a1 + 24), a4, *a1, 1))
    {
      return 0;
    }
  }

  v25 = (*a2 - **a2);
  if (*v25 >= 0x1Bu && (v26 = v25[13]) != 0)
  {
    v27 = *(*a2 + v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_2B51D8(*(a1 + 24), a4 & 0xFFFFFFFFFFFFLL);
  v29 = (v28 - *v28);
  if (*v29 < 0x1Bu)
  {
    LODWORD(v30) = 0;
    if ((a7 & 4) == 0)
    {
      return 1;
    }
  }

  else
  {
    v30 = v29[13];
    if (v30)
    {
      LODWORD(v30) = *(v28 + v30);
    }

    if ((a7 & 4) == 0)
    {
      return 1;
    }
  }

  return *(a1 + 8) + v27 >= v30;
}

void sub_FCDE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FCDE34(void *a1)
{
  v3 = 15;
  strcpy(__p, "forbidden_turns");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 13;
  strcpy(__p, "traffic_signs");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 18;
  strcpy(__p, "less_important_frc");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 16;
  strcpy(__p, "oncoming_traffic");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 17;
  strcpy(__p, "same_road_traffic");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_FCE068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_FCE098(uint64_t *a1, void **a2, uint64_t a3)
{
  v32 = a3;
  v6 = *(sub_F6D17C(*a2, a2[1]) + 32);
  v7 = *(sub_F6D17C(a2[2], a2[3]) + 32) & 0xFFFFFFFFFFFFFFLL;
  v31[0] = v6 & 0xFFFFFFFFFFFFFFLL;
  v31[1] = v7;
  v31[2] = a3;
  sub_FCCF08((a1 + 26), v31, v30);
  if (!v30[0])
  {
    v29[1] = 0;
    v9 = sub_F6D17C(*a2, a2[1]);
    v10 = 0;
    if ((a3 & 2) != 0)
    {
      v10 = sub_4BF020(a1[3], *(v9 + 32) & 0xFFFFFFFFFFFFFFLL, *a1, 1);
    }

    v29[0] = v10;
    v11 = *(sub_F6D17C(*a2, a2[1]) + 32);
    v26 = v11;
    v28 = BYTE6(v11);
    v27 = WORD2(v11);
    v12 = a1[3];
    v13 = sub_2B51D8(v12, v11 & 0xFFFFFFFFFFFFLL);
    v14 = (v13 - *v13);
    if (*v14 >= 0x1Fu)
    {
      v15 = v14[15];
      if (!v15)
      {
LABEL_10:
        v18 = 0xFFFFFFFF00000000;
        goto LABEL_11;
      }

      v16 = *(v13 + v15);
      if (v16 != -1)
      {
        v17 = sub_31DF78(v12, v11);
        v18 = v16 << 32;
        v15 = v17;
LABEL_11:
        v24[2] = a1;
        v25 = v18 | v15;
        v24[0] = &v26;
        v24[1] = &v25;
        sub_FCE570((a1 + 26), v31, v33);
        v19 = *a2;
        v20 = a2[1];
        v21 = a2[2];
        v22 = a2[3];
        v33[0] = a1;
        v33[1] = v29;
        v33[2] = v24;
        v34 += 3;
        v8 = v34;
        v35 = a2;
        v36 = &v32;
        sub_FCE240(v19, v20, v21, v22 + 1, v33);
        v33[0] = v8;
        sub_FCD2BC(v8, v33);
        return v8;
      }
    }

    v15 = 0;
    goto LABEL_10;
  }

  return v30[3] + 3;
}

void *sub_FCE240(void *result, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = result;
  if (result)
  {
    result = sub_F6D024(result);
    v10 = result;
    if (a3)
    {
      result = sub_F6D024(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 != a4 < result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = sub_F6D17C(v9, a2);
        result = sub_F6D17C(a3, a4);
        if (v11 != result)
        {
          while (1)
          {
LABEL_20:
            v20 = a2 + 1;
            v21 = sub_F6D024(v9);
            result = sub_F6D024(a3);
            if (a2 + 1 >= v21 || a4 >= result)
            {
              if (v20 < v21 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v22 = sub_F6D17C(v9, a2 + 1);
              result = sub_F6D17C(a3, a4);
              if (v22 == result)
              {
                return result;
              }
            }

            v18 = sub_F6D17C(v9, a2);
            v19 = sub_F6D17C(v9, v20);
            sub_FCFB04(a5, v18, v19);
            a2 = v20;
          }
        }
      }
    }

    else if (a2 < result)
    {
      result = sub_F6D024(v9);
      if (a2 + 1 < result)
      {
        do
        {
          v15 = sub_F6D17C(v9, a2);
          v16 = sub_F6D17C(v9, a2 + 1);
          sub_FCFB04(a5, v15, v16);
          result = sub_F6D024(v9);
          v17 = a2 + 2;
          ++a2;
        }

        while (v17 < result);
      }
    }
  }

  else if (a3)
  {
    result = sub_F6D024(a3);
    if (a4 < result)
    {
      for (result = sub_F6D024(a3); a4 < result; a2 = v12)
      {
        v12 = a2 + 1;
        v13 = sub_F6D17C(0, a2);
        v14 = sub_F6D17C(0, v12);
        sub_FCFB04(a5, v13, v14);
        result = sub_F6D024(a3);
      }
    }
  }

  return result;
}

uint64_t sub_FCE460(uint64_t *a1, void *a2, unint64_t a3, unint64_t *a4)
{
  v4 = 0;
  v5 = a3 >> 7;
  v6 = a1[3];
  v7 = *a1;
  v8 = 0x101010101010101 * (a3 & 0x7F);
  while (1)
  {
    v9 = v5 & v6;
    v10 = *(v7 + v9);
    v11 = ((v10 ^ v8) - 0x101010101010101) & ~(v10 ^ v8) & 0x8080808080808080;
    if (v11)
    {
      break;
    }

LABEL_11:
    if ((v10 & (~v10 << 6) & 0x8080808080808080) != 0)
    {
      return 0;
    }

    v4 += 8;
    v5 = v4 + v9;
  }

  v12 = a1[1];
  v13 = a2[2];
  while (1)
  {
    v14 = (v9 + (__clz(__rbit64(v11)) >> 3)) & v6;
    *a4 = v14;
    v15 = v12 + 48 * v14;
    if (__PAIR64__(*(v15 + 4), *v15) == __PAIR64__(WORD2(*a2), *a2) && *(v15 + 6) == BYTE6(*a2))
    {
      v16 = a2[1];
      if (__PAIR64__(*(v15 + 12), *(v15 + 8)) == __PAIR64__(WORD2(v16), v16) && *(v15 + 14) == BYTE6(v16) && *(v15 + 16) == v13)
      {
        return 1;
      }
    }

    v11 &= v11 - 1;
    if (!v11)
    {
      goto LABEL_11;
    }
  }
}

unint64_t sub_FCE570@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[1];
  v7 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v8 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = (((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) ^ ((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
  v10 = (v6 >> 16) & 0xFFFF0000 | (v6 << 32);
  if ((v6 & 0xFF000000000000) != 0)
  {
    v11 = (v6 >> 16) & 0xFFFF0000 | (v6 << 32);
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = (((0x2127599BF4325C37 * (v11 ^ (v10 >> 23))) ^ ((0x2127599BF4325C37 * (v11 ^ (v10 >> 23))) >> 47)) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v13 = a2[2] + (v12 << 6) + (v12 >> 2) + 2654435769u;
  v14 = (v13 ^ ~v12) + ((v13 ^ v12) << 21);
  v15 = 21 * ((265 * (v14 ^ (v14 >> 24))) ^ ((265 * (v14 ^ (v14 >> 24))) >> 14));
  v16 = (a1 + 48 * (((((v15 ^ (v15 >> 28)) >> 8) ^ ((-2147483647 * (v15 ^ (v15 >> 28))) >> 16)) ^ ((-2147483647 * (v15 ^ (v15 >> 28))) >> 24)) & 0xF));
  result = sub_FCE6D4(v16, a2, 2147483649u * (v15 ^ (v15 >> 28)));
  if (v18)
  {
    v19 = v16[1] + 48 * result;
    v20 = a2[2];
    *v19 = *a2;
    *(v19 + 16) = v20;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0;
  }

  v21 = *v16 + result;
  v22 = v16[1] + 48 * result;
  v23 = *v16 + v16[3];
  *a3 = v16;
  *(a3 + 8) = a1 + 768;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 32) = v23;
  *(a3 + 48) = v18;
  return result;
}

unint64_t sub_FCE6D4(void *a1, uint64_t *a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 7;
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = BYTE6(*a2);
  v9 = WORD2(*a2);
  v10 = a2[2];
  while (1)
  {
    v11 = v4 & v5;
    v12 = *(*a1 + (v4 & v5));
    v13 = ((v12 ^ (0x101010101010101 * (a3 & 0x7F))) - 0x101010101010101) & ~(v12 ^ (0x101010101010101 * (a3 & 0x7F))) & 0x8080808080808080;
    if (v13)
    {
      break;
    }

LABEL_17:
    if ((v12 & (~v12 << 6) & 0x8080808080808080) != 0)
    {
      return sub_FCE810(a1, a3);
    }

    v3 += 8;
    v4 = v3 + v11;
  }

  while (1)
  {
    v14 = (v11 + (__clz(__rbit64(v13)) >> 3)) & v5;
    v15 = a1[1] + 48 * v14;
    if (*v15 == v6)
    {
      v16 = *(v15 + 4) == v9 && *(v15 + 6) == v8;
      if (v16 && *(v15 + 8) == v7)
      {
        v17 = *(v15 + 12) == WORD2(v7) && *(v15 + 14) == BYTE6(v7);
        if (v17 && *(v15 + 16) == v10)
        {
          return v14;
        }
      }
    }

    v13 &= v13 - 1;
    if (!v13)
    {
      goto LABEL_17;
    }
  }
}

unint64_t sub_FCE810(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_FCE908(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_FCE908(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_FCE938();
  }

  return sub_FCEBA8(a1);
}

uint64_t sub_FCEBA8(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_34;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = (*(result + 8) + 48 * i);
        v19 = v18[1];
        v20 = (*v18 >> 16) & 0xFFFF0000 | (*v18 << 32);
        if ((*v18 & 0xFF000000000000) != 0)
        {
          v21 = (*v18 >> 16) & 0xFFFF0000 | (*v18 << 32);
        }

        else
        {
          v21 = v20 + 1;
        }

        v22 = (((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) ^ ((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
        v23 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
        if ((v19 & 0xFF000000000000) != 0)
        {
          v24 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
        }

        else
        {
          v24 = v23 + 1;
        }

        v25 = (((0x2127599BF4325C37 * (v24 ^ (v23 >> 23))) ^ ((0x2127599BF4325C37 * (v24 ^ (v23 >> 23))) >> 47)) + 2654435769u + (v22 << 6) + (v22 >> 2)) ^ v22;
        v26 = v18[2] + 2654435769 + (v25 << 6) + (v25 >> 2);
        v27 = (v26 ^ ~v25) + ((v26 ^ v25) << 21);
        v28 = 21 * ((265 * (v27 ^ (v27 >> 24))) ^ ((265 * (v27 ^ (v27 >> 24))) >> 14));
        v29 = 2147483649u * (v28 ^ (v28 >> 28));
        v30 = v13 & (v29 >> 7);
        v31 = *(v17->i64 + v30) & (~*(v17->i64 + v30) << 7) & 0x8080808080808080;
        if (v31)
        {
          v15 = v13 & (v29 >> 7);
        }

        else
        {
          v32 = 8;
          v15 = v13 & (v29 >> 7);
          do
          {
            v15 = (v15 + v32) & v13;
            v32 += 8;
            v31 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v31);
        }

        v16 = (v15 + (__clz(__rbit64(v31)) >> 3)) & v13;
        if ((((v16 - v30) ^ (i - v30)) & v13) > 7)
        {
          v33 = v17->u8[v16];
          v17->i8[v16] = v29 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v29 & 0x7F;
          v34 = *(result + 8);
          if (v33 == 128)
          {
            v35 = v34 + 48 * v16;
            v36 = v34 + 48 * i;
            v37 = *(v36 + 16);
            *v35 = *v36;
            *(v35 + 16) = v37;
            *(v35 + 24) = 0;
            *(v35 + 32) = 0;
            *(v35 + 40) = 0;
            *(v35 + 24) = *(v36 + 24);
            *(v35 + 40) = *(v36 + 40);
            *(v36 + 32) = 0;
            *(v36 + 40) = 0;
            *(v36 + 24) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v38 = (v34 + 48 * i);
            v50 = *v38;
            v51 = *(v38 + 2);
            v39 = *(v38 + 5);
            v40 = *(v38 + 24);
            *(v38 + 4) = 0;
            *(v38 + 5) = 0;
            *(v38 + 3) = 0;
            v41 = *(result + 8);
            v42 = v41 + 48 * i;
            v43 = 48 * v16;
            v44 = v41 + 48 * v16;
            v45 = *(v44 + 16);
            *v42 = *v44;
            *(v42 + 16) = v45;
            *(v42 + 24) = 0;
            *(v42 + 32) = 0;
            *(v42 + 40) = 0;
            *(v42 + 24) = *(v44 + 24);
            *(v42 + 40) = *(v44 + 40);
            *(v44 + 32) = 0;
            *(v44 + 40) = 0;
            *(v44 + 24) = 0;
            v46 = *(result + 8) + v43;
            *(v46 + 16) = v51;
            *v46 = v50;
            *(v46 + 24) = v40;
            *(v46 + 40) = v39;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v29 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v29 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v47 = i - (i >> 3);
    v48 = i == 7;
    v49 = 6;
    if (!v48)
    {
      v49 = v47;
    }
  }

  else
  {
    v49 = 0;
  }

  *(result + 40) = v49 - *(result + 16);
  return result;
}

void sub_FCEF90(uint64_t a1, int **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = sub_3116D0(a2);
  v8 = a2[4];
  v9 = *(a3 + 32);
  v10 = (*a2 - **a2);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v12 = v7;
    v13 = *(*a2 + v11 + 1) >> 7;
  }

  else
  {
    v12 = v7;
    v13 = 0;
  }

  v14 = sub_2B51D8(*(v6 + 24), v8 & 0xFFFFFFFFFFFFLL);
  v15 = (v14 - *v14);
  v16 = *v15;
  if ((v8 & 0xFF000000000000) != 0)
  {
    if (v16 < 0x9B)
    {
      return;
    }

    v17 = v15[77];
    if (!v17 || (*(v14 + v17) & 2) == 0)
    {
      return;
    }
  }

  else
  {
    if (v16 < 0x9B)
    {
      return;
    }

    v18 = v15[77];
    if (!v18 || (*(v14 + v18) & 1) == 0)
    {
      return;
    }
  }

  sub_2B365C(*(v6 + 24), v12, 0, (v6 + 32));
  sub_FCD648(v6, v8 & 0xFFFFFFFFFFFFLL | (((v8 & 0xFF000000000000) == 0) << 48), v9 & 0xFFFFFFFFFFFFFFLL, (v6 + 32), 0, (v6 + 160));
  v20 = *(v6 + 32);
  v19 = *(v6 + 40);
  if (v20 != v19)
  {
    v21 = v19 - v20 - 8;
    v22 = *(v6 + 32);
    if (v21 < 8)
    {
      goto LABEL_29;
    }

    v23 = (v21 >> 3) + 1;
    v22 = v20 + 8 * (v23 & 0x3FFFFFFFFFFFFFFELL);
    v24 = (v20 + 14);
    v25 = v23 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v26 = !*v24;
      *(v24 - 8) = !*(v24 - 8);
      *v24 = v26;
      v24 += 16;
      v25 -= 2;
    }

    while (v25);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_29:
      do
      {
        *(v22 + 6) = *(v22 + 6) == 0;
        v22 += 8;
      }

      while (v22 != v19);
    }
  }

  v27 = 1;
  sub_FCD648(v6, v8 & 0xFFFFFFFFFFFFFFLL, v9 & 0xFFFFFFFFFFFFLL | (((v9 & 0xFF000000000000) == 0) << 48), (v6 + 32), 1, (v6 + 112));
  if ((sub_FCF25C((v6 + 112), *(a1 + 16)) & 1) == 0)
  {
    v27 = sub_FCF25C((v6 + 136), *(a1 + 16));
  }

  v28 = *(a1 + 8);
  *(v28 + 1) |= v27;
  v39 = v6;
  v40 = *(a1 + 16);
  v29 = *(a1 + 40);
  v41 = *(a1 + 32);
  v42 = v28;
  v43 = v29;
  sub_FCF390(&v39, v13 ^ 1, v13, 1u);
  sub_FCF390(&v39, v13, v13 ^ 1, 0);
  if (v8 == v9 && ((v9 ^ v8) & 0xFFFF00000000) == 0)
  {
    v30 = *(a1 + 24);
    v31 = *v30;
    v32 = v30[1];
    if (v31 != v32)
    {
      v38 = 1;
      v33 = v32 - 32;
      if (!v13)
      {
        v31 = v33;
      }

      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      v36[0] = v6;
      v36[1] = v34;
      v36[2] = *(a1 + 8);
      v36[3] = v31;
      v36[4] = &v38;
      v36[5] = v35;
      sub_FCF814(*(v6 + 136), *(v6 + 144), v31 + 8, &v37, v36);
    }
  }
}

uint64_t sub_FCF25C(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  while (1)
  {
    v7 = *v2;
    v8 = *(v4 + 4) == WORD2(*v2) && *v4 == v7;
    if (v8 || !*v5 || v5[1] == -1)
    {
      goto LABEL_4;
    }

    v9 = *(v6 + 24);
    v10 = sub_2B51D8(v9, v7 & 0xFFFFFFFFFFFFLL);
    v11 = (v10 - *v10);
    if (*v11 >= 0x1Fu && (v12 = v11[15]) != 0)
    {
      v13 = *(v10 + v12);
      if (v13 == -1)
      {
        if (*v5)
        {
          goto LABEL_4;
        }
      }

      else if (sub_31DF78(v9, v7) != *v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = -1;
      if (*v5)
      {
        goto LABEL_4;
      }
    }

    if (v13 == v5[1])
    {
      return 1;
    }

LABEL_4:
    if (++v2 == v3)
    {
      return 0;
    }
  }
}

void sub_FCF390(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *a1;
  v5 = *a1 + 24 * a2;
  v6 = *(v5 + 112);
  v51 = *(v5 + 120);
  if (v6 != v51)
  {
    v7 = a1;
    v50 = v4 + 24 * a3;
    v8 = a4;
    while (1)
    {
      v52 = v6;
      v9 = *v6;
      v56 = v9;
      v10 = v7[1];
      if (*(*v10 + 4) == WORD2(v9) && **v10 == v9)
      {
        break;
      }

      v12 = v10[1];
      if (!*v12 || v12[1] == -1)
      {
        break;
      }

      v13 = *(v10[2] + 24);
      v14 = sub_2B51D8(v13, v9 & 0xFFFFFFFFFFFFLL);
      v15 = (v14 - *v14);
      if (*v15 >= 0x1Fu && (v16 = v15[15]) != 0)
      {
        v17 = *(v14 + v16);
        if (v17 == -1)
        {
          v19 = v10[1];
          if (*v19)
          {
            break;
          }
        }

        else
        {
          v18 = sub_31DF78(v13, v9);
          v19 = v10[1];
          if (v18 != *v19)
          {
            break;
          }
        }
      }

      else
      {
        v17 = -1;
        v19 = v10[1];
        if (*v19)
        {
          break;
        }
      }

      v20 = (v17 == v19[1]) << 8;
      v21 = v7[2];
      v22 = *(v21 + 8);
      if (v22 >= *(v21 + 16))
      {
LABEL_19:
        v23 = sub_FCF6C0(v21, &v56);
        goto LABEL_20;
      }

LABEL_16:
      *v22 = v56;
      v22[1] = 0;
      v22[2] = 0;
      v22[3] = 0;
      v23 = (v22 + 4);
LABEL_20:
      *(v21 + 8) = v23;
      v24 = v7[2];
      v25 = *(v24 + 8);
      v26 = *(v50 + 160);
      v27 = *(v50 + 168);
      if (v26 != v27)
      {
        v28 = v7[3];
        v29 = v7[5];
        v30 = v7[4];
        v53 = v30;
        v54 = *(v50 + 168);
        v55 = v29;
        do
        {
          v32 = *v26;
          v33 = sub_4D1F50(*v28, *(v28 + 8));
          if (sub_FCDA30(v4, v33, *v30, v56, v32, v20 | v8, *v29))
          {
            v35 = *(v25 - 16);
            v34 = *(v25 - 8);
            if (v35 < v34)
            {
              *v35 = *v26;
              v31 = v35 + 1;
            }

            else
            {
              v36 = *(v25 - 24);
              v37 = v35 - v36;
              v38 = (v35 - v36) >> 3;
              v39 = v38 + 1;
              if ((v38 + 1) >> 61)
              {
                sub_1794();
              }

              v40 = v20;
              v41 = v8;
              v42 = v4;
              v43 = v34 - v36;
              if (v43 >> 2 > v39)
              {
                v39 = v43 >> 2;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFF8)
              {
                v44 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v39;
              }

              if (v44)
              {
                if (!(v44 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v45 = (v35 - v36) >> 3;
              v46 = (8 * v38);
              v47 = (8 * v38 - 8 * v45);
              *v46 = *v26;
              v31 = v46 + 1;
              memcpy(v47, v36, v37);
              *(v25 - 24) = v47;
              *(v25 - 16) = v31;
              *(v25 - 8) = 0;
              if (v36)
              {
                operator delete(v36);
              }

              v4 = v42;
              v8 = v41;
              v20 = v40;
              v30 = v53;
              v27 = v54;
            }

            *(v25 - 16) = v31;
            v29 = v55;
          }

          ++v26;
        }

        while (v26 != v27);
        v7 = a1;
        v24 = a1[2];
        v25 = *(v24 + 8);
      }

      v48 = *(v25 - 24);
      if (v48 == *(v25 - 16))
      {
        if (v48)
        {
          *(v25 - 16) = v48;
          operator delete(v48);
        }

        *(v24 + 8) = v25 - 32;
      }

      v6 = v52 + 1;
      if (v52 + 1 == v51)
      {
        return;
      }
    }

    v20 = 0;
    v21 = v7[2];
    v22 = *(v21 + 8);
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }
}

uint64_t sub_FCF6C0(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_1794();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = (v3 - *a1) >> 5;
  v10 = (32 * v4);
  *v10 = *a2;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v11 = 32 * v4 - 32 * v9;
  if (v2 != v3)
  {
    v12 = &v10[-4 * v9];
    v13 = v2;
    do
    {
      *v12 = *v13;
      v12[2] = 0;
      v12[3] = 0;
      *(v12 + 1) = *(v13 + 1);
      v12[3] = v13[3];
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0;
      v13 += 4;
      v12 += 4;
    }

    while (v13 != v3);
    do
    {
      v14 = v2[1];
      if (v14)
      {
        v2[2] = v14;
        operator delete(v14);
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = 32 * v4 + 32;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 32 * v4 + 32;
}

uint64_t sub_FCF814(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; ++i)
    {
      v10 = *a5;
      v11 = *i & 0xFF000000000000;
      v12 = *i & 0xFFFFFFFFFFFFLL;
      v13 = sub_2B51D8(*(*a5 + 24), v12);
      v14 = (v13 - *v13);
      v15 = *v14;
      if (v11)
      {
        if (v15 >= 0x9B)
        {
          v16 = v14[77];
          if (v16)
          {
            if (*(v13 + v16))
            {
              goto LABEL_13;
            }
          }
        }
      }

      else if (v15 >= 0x9B)
      {
        v17 = v14[77];
        if (v17)
        {
          if ((*(v13 + v17) & 2) != 0)
          {
LABEL_13:
            v18 = sub_4D1F50(**(a5 + 8), *(*(a5 + 8) + 8));
            if (sub_FCDA30(v10, v18, **(a5 + 16), **(a5 + 24), v12 | ((v11 == 0) << 48), **(a5 + 32), **(a5 + 40)))
            {
              v19 = *i;
              v20 = (*i & 0xFF000000000000) == 0;
              LODWORD(v21) = *i;
              WORD2(v21) = WORD2(v19);
              BYTE6(v21) = v20;
              sub_2B5AD0(a3, &v21);
            }
          }
        }
      }
    }
  }

  return a3;
}

int *sub_FCF954(char *a1, int *a2, uint64_t *a3)
{
  v5 = a1;
  if (a2 != a1)
  {
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      while (2)
      {
        v8 = *a3;
        v9 = *(v6 + 8);
        v10 = *(v6 + 16);
        if (v9 != v10)
        {
          goto LABEL_6;
        }

LABEL_4:
        while (1)
        {
          v8 += 32;
          if (v8 == v7)
          {
            break;
          }

          v9 = *(v8 + 8);
          v10 = *(v8 + 16);
          if (v9 != v10)
          {
LABEL_6:
            while ((*v9 & 0xFFFFFFFFFFFFFFLL) != (*v5 & 0xFFFFFFFFFFFFFFLL))
            {
              if (++v9 == v10)
              {
                goto LABEL_4;
              }
            }

            goto LABEL_12;
          }
        }

        v5 += 32;
        v11 = a2;
        if (v5 != a2)
        {
          continue;
        }

        return v11;
      }
    }

    v5 = &a1[(a2 - a1) & 0xFFFFFFFFFFFFFFE0];
  }

LABEL_12:
  if (v5 == a2)
  {
    return a2;
  }

  v12 = (v5 + 32);
  if (v5 + 32 != a2)
  {
    v11 = v5;
    do
    {
      v13 = v12;
      v14 = *a3;
      v15 = a3[1];
      if (*a3 != v15)
      {
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        if (v16 != v17)
        {
          goto LABEL_21;
        }

LABEL_19:
        while (1)
        {
          v14 += 32;
          if (v14 == v15)
          {
            break;
          }

          v16 = *(v14 + 8);
          v17 = *(v14 + 16);
          if (v16 != v17)
          {
LABEL_21:
            while ((*v16 & 0xFFFFFFFFFFFFFFLL) != (*v13 & 0xFFFFFFFFFFFFFFLL))
            {
              if (++v16 == v17)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_16;
          }
        }
      }

      v18 = *v13;
      *(v11 + 3) = *(v13 + 3);
      *v11 = v18;
      v19 = *(v11 + 1);
      if (v19)
      {
        *(v11 + 2) = v19;
        operator delete(v19);
        *(v11 + 1) = 0;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
      }

      *(v11 + 2) = *(v5 + 40);
      *(v11 + 3) = *(v5 + 7);
      *(v5 + 5) = 0;
      *(v5 + 6) = 0;
      *(v5 + 7) = 0;
      v11 += 8;
LABEL_16:
      v12 = v13 + 8;
      v5 = v13;
    }

    while (v13 + 8 != a2);
    return v11;
  }

  return v5;
}

void sub_FCFB04(uint64_t a1, int **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = sub_3116D0(a2);
  v8 = a2[4];
  v9 = *(a3 + 32);
  v10 = (*a2 - **a2);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v12 = v7;
    v13 = *(*a2 + v11 + 1) >> 7;
  }

  else
  {
    v12 = v7;
    v13 = 0;
  }

  v14 = sub_2B51D8(*(v6 + 24), v8 & 0xFFFFFFFFFFFFLL);
  v15 = (v14 - *v14);
  v16 = *v15;
  if ((v8 & 0xFF000000000000) != 0)
  {
    if (v16 < 0x9B)
    {
      return;
    }

    v17 = v15[77];
    if (!v17 || (*(v14 + v17) & 2) == 0)
    {
      return;
    }
  }

  else
  {
    if (v16 < 0x9B)
    {
      return;
    }

    v18 = v15[77];
    if (!v18 || (*(v14 + v18) & 1) == 0)
    {
      return;
    }
  }

  sub_2B365C(*(v6 + 24), v12, 0, (v6 + 32));
  sub_FCD648(v6, v8 & 0xFFFFFFFFFFFFLL | (((v8 & 0xFF000000000000) == 0) << 48), v9 & 0xFFFFFFFFFFFFFFLL, (v6 + 32), 0, (v6 + 160));
  v20 = *(v6 + 32);
  v19 = *(v6 + 40);
  if (v20 != v19)
  {
    v21 = v19 - v20 - 8;
    v22 = *(v6 + 32);
    if (v21 < 8)
    {
      goto LABEL_29;
    }

    v23 = (v21 >> 3) + 1;
    v22 = v20 + 8 * (v23 & 0x3FFFFFFFFFFFFFFELL);
    v24 = (v20 + 14);
    v25 = v23 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v26 = !*v24;
      *(v24 - 8) = !*(v24 - 8);
      *v24 = v26;
      v24 += 16;
      v25 -= 2;
    }

    while (v25);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_29:
      do
      {
        *(v22 + 6) = *(v22 + 6) == 0;
        v22 += 8;
      }

      while (v22 != v19);
    }
  }

  v27 = 1;
  sub_FCD648(v6, v8 & 0xFFFFFFFFFFFFFFLL, v9 & 0xFFFFFFFFFFFFLL | (((v9 & 0xFF000000000000) == 0) << 48), (v6 + 32), 1, (v6 + 112));
  if ((sub_FCF25C((v6 + 112), *(a1 + 16)) & 1) == 0)
  {
    v27 = sub_FCF25C((v6 + 136), *(a1 + 16));
  }

  v28 = *(a1 + 8);
  *(v28 + 1) |= v27;
  v39 = v6;
  v40 = *(a1 + 16);
  v29 = *(a1 + 40);
  v41 = *(a1 + 32);
  v42 = v28;
  v43 = v29;
  sub_FCFDD0(&v39, v13 ^ 1, v13, 1u);
  sub_FCFDD0(&v39, v13, v13 ^ 1, 0);
  if (v8 == v9 && ((v9 ^ v8) & 0xFFFF00000000) == 0)
  {
    v30 = *(a1 + 24);
    v31 = *v30;
    v32 = v30[1];
    if (v31 != v32)
    {
      v38 = 1;
      v33 = v32 - 32;
      if (!v13)
      {
        v31 = v33;
      }

      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      v36[0] = v6;
      v36[1] = v34;
      v36[2] = *(a1 + 8);
      v36[3] = v31;
      v36[4] = &v38;
      v36[5] = v35;
      sub_FD0100(*(v6 + 136), *(v6 + 144), v31 + 8, &v37, v36);
    }
  }
}

void sub_FCFDD0(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *a1;
  v5 = *a1 + 24 * a2;
  v6 = *(v5 + 112);
  v51 = *(v5 + 120);
  if (v6 != v51)
  {
    v7 = a1;
    v50 = v4 + 24 * a3;
    v8 = a4;
    while (1)
    {
      v52 = v6;
      v9 = *v6;
      v56 = v9;
      v10 = v7[1];
      if (*(*v10 + 4) == WORD2(v9) && **v10 == v9)
      {
        break;
      }

      v12 = v10[1];
      if (!*v12 || v12[1] == -1)
      {
        break;
      }

      v13 = *(v10[2] + 24);
      v14 = sub_2B51D8(v13, v9 & 0xFFFFFFFFFFFFLL);
      v15 = (v14 - *v14);
      if (*v15 >= 0x1Fu && (v16 = v15[15]) != 0)
      {
        v17 = *(v14 + v16);
        if (v17 == -1)
        {
          v19 = v10[1];
          if (*v19)
          {
            break;
          }
        }

        else
        {
          v18 = sub_31DF78(v13, v9);
          v19 = v10[1];
          if (v18 != *v19)
          {
            break;
          }
        }
      }

      else
      {
        v17 = -1;
        v19 = v10[1];
        if (*v19)
        {
          break;
        }
      }

      v20 = (v17 == v19[1]) << 8;
      v21 = v7[2];
      v22 = *(v21 + 8);
      if (v22 >= *(v21 + 16))
      {
LABEL_19:
        v23 = sub_FCF6C0(v21, &v56);
        goto LABEL_20;
      }

LABEL_16:
      *v22 = v56;
      v22[1] = 0;
      v22[2] = 0;
      v22[3] = 0;
      v23 = (v22 + 4);
LABEL_20:
      *(v21 + 8) = v23;
      v24 = v7[2];
      v25 = *(v24 + 8);
      v26 = *(v50 + 160);
      v27 = *(v50 + 168);
      if (v26 != v27)
      {
        v28 = v7[3];
        v29 = v7[5];
        v30 = v7[4];
        v53 = v30;
        v54 = *(v50 + 168);
        v55 = v29;
        do
        {
          v32 = *v26;
          v33 = sub_F6D17C(*v28, *(v28 + 8));
          if (sub_FCDA30(v4, v33, *v30, v56, v32, v20 | v8, *v29))
          {
            v35 = *(v25 - 16);
            v34 = *(v25 - 8);
            if (v35 < v34)
            {
              *v35 = *v26;
              v31 = v35 + 1;
            }

            else
            {
              v36 = *(v25 - 24);
              v37 = v35 - v36;
              v38 = (v35 - v36) >> 3;
              v39 = v38 + 1;
              if ((v38 + 1) >> 61)
              {
                sub_1794();
              }

              v40 = v20;
              v41 = v8;
              v42 = v4;
              v43 = v34 - v36;
              if (v43 >> 2 > v39)
              {
                v39 = v43 >> 2;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFF8)
              {
                v44 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v39;
              }

              if (v44)
              {
                if (!(v44 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v45 = (v35 - v36) >> 3;
              v46 = (8 * v38);
              v47 = (8 * v38 - 8 * v45);
              *v46 = *v26;
              v31 = v46 + 1;
              memcpy(v47, v36, v37);
              *(v25 - 24) = v47;
              *(v25 - 16) = v31;
              *(v25 - 8) = 0;
              if (v36)
              {
                operator delete(v36);
              }

              v4 = v42;
              v8 = v41;
              v20 = v40;
              v30 = v53;
              v27 = v54;
            }

            *(v25 - 16) = v31;
            v29 = v55;
          }

          ++v26;
        }

        while (v26 != v27);
        v7 = a1;
        v24 = a1[2];
        v25 = *(v24 + 8);
      }

      v48 = *(v25 - 24);
      if (v48 == *(v25 - 16))
      {
        if (v48)
        {
          *(v25 - 16) = v48;
          operator delete(v48);
        }

        *(v24 + 8) = v25 - 32;
      }

      v6 = v52 + 1;
      if (v52 + 1 == v51)
      {
        return;
      }
    }

    v20 = 0;
    v21 = v7[2];
    v22 = *(v21 + 8);
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }
}

uint64_t sub_FD0100(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; ++i)
    {
      v10 = *a5;
      v11 = *i & 0xFF000000000000;
      v12 = *i & 0xFFFFFFFFFFFFLL;
      v13 = sub_2B51D8(*(*a5 + 24), v12);
      v14 = (v13 - *v13);
      v15 = *v14;
      if (v11)
      {
        if (v15 >= 0x9B)
        {
          v16 = v14[77];
          if (v16)
          {
            if (*(v13 + v16))
            {
              goto LABEL_13;
            }
          }
        }
      }

      else if (v15 >= 0x9B)
      {
        v17 = v14[77];
        if (v17)
        {
          if ((*(v13 + v17) & 2) != 0)
          {
LABEL_13:
            v18 = sub_F6D17C(**(a5 + 8), *(*(a5 + 8) + 8));
            if (sub_FCDA30(v10, v18, **(a5 + 16), **(a5 + 24), v12 | ((v11 == 0) << 48), **(a5 + 32), **(a5 + 40)))
            {
              v19 = *i;
              v20 = (*i & 0xFF000000000000) == 0;
              LODWORD(v21) = *i;
              WORD2(v21) = WORD2(v19);
              BYTE6(v21) = v20;
              sub_2B5AD0(a3, &v21);
            }
          }
        }
      }
    }
  }

  return a3;
}

void sub_FD0240(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v4 = *a3;
  *&v6 = a3[1];
  *(&v6 + 7) = *(a3 + 15);
  v5 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *a1 = a4;
  *(a1 + 23) = *(&v6 + 7);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 31) = v5;
  sub_FD068C(a1 + 32);
}

void sub_FD031C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_FD0350(_BYTE *a1, const void **a2)
{
  if ((atomic_load_explicit(&qword_27C0388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C0388))
  {
    sub_3608D0(&qword_27C03A8, "penalize_sidewalks_by_car_traffic");
    __cxa_guard_release(&qword_27C0388);
  }

  if ((atomic_load_explicit(&qword_27C0390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C0390))
  {
    sub_3608D0(&qword_27C03C0, "penalize_sidewalk_name_changes");
    __cxa_guard_release(&qword_27C0390);
  }

  if ((atomic_load_explicit(&qword_27C0398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C0398))
  {
    sub_3608D0(&qword_27C03D8, "check_sidewalk_cyclability_first");
    __cxa_guard_release(&qword_27C0398);
  }

  if ((atomic_load_explicit(&qword_27C03A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C03A0))
  {
    sub_3608D0(&qword_27C03F0, "detect_calm_road_crosswalk_transitions");
    __cxa_guard_release(&qword_27C03A0);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = qword_27C03B0;
  if (byte_27C03BF >= 0)
  {
    v6 = byte_27C03BF;
  }

  if (v5 == v6)
  {
    v7 = v4 >= 0 ? a2 : *a2;
    v8 = byte_27C03BF >= 0 ? &qword_27C03A8 : qword_27C03A8;
    if (!memcmp(v7, v8, v5))
    {
      goto LABEL_50;
    }
  }

  v9 = qword_27C03C8;
  if (byte_27C03D7 >= 0)
  {
    v9 = byte_27C03D7;
  }

  if (v5 == v9)
  {
    v10 = v4 >= 0 ? a2 : *a2;
    v11 = byte_27C03D7 >= 0 ? &qword_27C03C0 : qword_27C03C0;
    if (!memcmp(v10, v11, v5))
    {
      ++a1;
LABEL_50:
      *a1 = 1;
      return;
    }
  }

  v12 = qword_27C03E0;
  if (byte_27C03EF >= 0)
  {
    v12 = byte_27C03EF;
  }

  if (v5 == v12 && (v4 >= 0 ? (v13 = a2) : (v13 = *a2), byte_27C03EF >= 0 ? (v14 = &qword_27C03D8) : (v14 = qword_27C03D8), !memcmp(v13, v14, v5)))
  {
    a1[2] = 1;
  }

  else
  {
    v15 = qword_27C03F8;
    if (byte_27C0407 >= 0)
    {
      v15 = byte_27C0407;
    }

    if (v5 == v15)
    {
      if (v4 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      if (byte_27C0407 >= 0)
      {
        v17 = &qword_27C03F0;
      }

      else
      {
        v17 = qword_27C03F0;
      }

      if (!memcmp(v16, v17, v5))
      {
        a1[3] = 1;
      }
    }
  }
}

void sub_FD068C(uint64_t a1)
{
  *a1 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_22AEA60;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 40) = _Q0;
  *(a1 + 56) = _Q0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 224) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  operator new();
}

void sub_FD40E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20)
{
  v25 = *(v23 - 128);
  if (v25)
  {
    *(v23 - 120) = v25;
    operator delete(v25);
  }

  v26 = *a16;
  if (*a16)
  {
    v20[197] = v26;
    operator delete(v26);
  }

  v27 = *a17;
  if (*a17)
  {
    v20[194] = v27;
    operator delete(v27);
  }

  sub_21DB4B4(v22);
  v28 = *a14;
  if (*a14)
  {
    v20[185] = v28;
    operator delete(v28);
  }

  sub_FD5AC4(v20 + 169);
  v29 = *(v21 + 464);
  if (v29)
  {
    v20[166] = v29;
    operator delete(v29);
  }

  v30 = *a15;
  if (*a15)
  {
    v20[163] = v30;
    operator delete(v30);
  }

  sub_FD5B28(v20 + 132);
  v31 = *a19;
  if (*a19)
  {
    v20[120] = v31;
    operator delete(v31);
    v32 = *a20;
    if (!*a20)
    {
LABEL_15:
      v33 = *v21;
      if (!*v21)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v32 = *a20;
    if (!*a20)
    {
      goto LABEL_15;
    }
  }

  v20[111] = v32;
  operator delete(v32);
  v33 = *v21;
  if (!*v21)
  {
LABEL_16:
    v34 = *a18;
    if (!*a18)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v20[108] = v33;
  operator delete(v33);
  v34 = *a18;
  if (!*a18)
  {
LABEL_17:
    v35 = v20[53];
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v20[105] = v34;
  operator delete(v34);
  v35 = v20[53];
  if (!v35)
  {
LABEL_18:
    v36 = v20[50];
    if (!v36)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20[54] = v35;
  operator delete(v35);
  v36 = v20[50];
  if (!v36)
  {
LABEL_19:
    v37 = v20[47];
    if (!v37)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  v20[51] = v36;
  operator delete(v36);
  v37 = v20[47];
  if (!v37)
  {
LABEL_20:
    v38 = v20[44];
    if (!v38)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  v20[48] = v37;
  operator delete(v37);
  v38 = v20[44];
  if (!v38)
  {
LABEL_21:
    v39 = v20[41];
    if (!v39)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  v20[45] = v38;
  operator delete(v38);
  v39 = v20[41];
  if (!v39)
  {
LABEL_22:
    v40 = v20[34];
    if (!v40)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20[42] = v39;
  operator delete(v39);
  v40 = v20[34];
  if (!v40)
  {
LABEL_23:
    v41 = v20[31];
    if (!v41)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20[35] = v40;
  operator delete(v40);
  v41 = v20[31];
  if (!v41)
  {
LABEL_24:
    v42 = *a10;
    if (!*a10)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  v20[32] = v41;
  operator delete(v41);
  v42 = *a10;
  if (!*a10)
  {
LABEL_25:
    _Unwind_Resume(a1);
  }

LABEL_37:
  v20[29] = v42;
  operator delete(v42);
  _Unwind_Resume(a1);
}

void sub_FD4D64(void *a1, uint64_t a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v13 = *v7;
        v19 = 5;
        strcpy(__p, "index");
        v14 = sub_63FDC(v13, __p);
        v15 = v14;
        if (v19 < 0)
        {
          operator delete(__p[0]);
          v16 = *a3;
          v17 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
          if (v15 >= v17)
          {
LABEL_11:
            if (v15 + 1 > v17)
            {
              sub_FD5EAC(a3, v15 + 1 - v17);
            }

            else if (v15 + 1 < v17)
            {
              a3[1] = v16 + 24 * (v15 + 1);
            }
          }
        }

        else
        {
          v16 = *a3;
          v17 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
          if (v14 >= v17)
          {
            goto LABEL_11;
          }
        }

        v9 = sub_FD5B6C(v13);
        v10 = *a3 + 24 * v15;
        *v10 = v9;
        *(v10 + 8) = v11;
        *(v10 + 16) = v12;
        v7 += 16;
      }

      while (v7 != v8);
    }
  }
}

void sub_FD4EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD52D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_FD5304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a19);
  _Unwind_Resume(a1);
}

void sub_FD5328(uint64_t *a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *&v41 = a3;
  *(&v41 + 1) = a4;
  v5 = *a1;
  v6 = a1[1];
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if (v5 != v6)
  {
    v8 = *(v6 - 24);
    if (v8 == -1)
    {
      v9 = HIDWORD(a3);
      if (v5 == v6)
      {
        return;
      }
    }

    else
    {
      v11 = a5;
      sub_FD6874(a5, (v8 + 1), &v41);
      LODWORD(a3) = v41;
      LODWORD(v9) = DWORD1(v41);
      a4 = *(&v41 + 1);
      v5 = *a1;
      v6 = a1[1];
      a5 = v11;
      if (*a1 == v6)
      {
        return;
      }
    }

    v13 = *a5;
    v12 = a5[1];
    if (a2)
    {
      LODWORD(v14) = 0;
      while (1)
      {
        v15 = v14 ? v14 - 1 : 0;
        v16 = *v5;
        v17 = *(v5 + 8);
        v18 = *(v5 + 12);
        v19 = *(v5 + 16);
        v20 = v14;
        if (v14 < ((v12 - v13) >> 4) && v14 <= v16)
        {
          break;
        }

LABEL_8:
        v5 += 24;
        a4 = v19;
        LODWORD(v9) = v18;
        LODWORD(a3) = v17;
        if (v5 == v6)
        {
          return;
        }
      }

      v22 = (v17 - a3);
      v23 = (v18 - v9);
      v24 = v14 != 0;
      while (1)
      {
        v25 = 1.0;
        if (v16 > v15)
        {
          v25 = v24 / (v16 - v15);
        }

        v26 = v25 * v22;
        if (v25 * v22 >= 0.0)
        {
          if (v26 >= 4.50359963e15)
          {
            goto LABEL_25;
          }

          v27 = (v26 + v26) + 1;
        }

        else
        {
          if (v26 <= -4.50359963e15)
          {
            goto LABEL_25;
          }

          v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
        }

        v26 = (v27 >> 1);
LABEL_25:
        v28 = v25 * v23;
        if (v25 * v23 >= 0.0)
        {
          if (v28 >= 4.50359963e15)
          {
            goto LABEL_31;
          }

          v29 = (v28 + v28) + 1;
        }

        else
        {
          if (v28 <= -4.50359963e15)
          {
            goto LABEL_31;
          }

          v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
        }

        v28 = (v29 >> 1);
LABEL_31:
        v30 = v25 * (v19 - a4);
        if (v30 >= 0.0)
        {
          if (v30 >= 4.50359963e15)
          {
            goto LABEL_37;
          }

          v31 = (v30 + v30) + 1;
        }

        else
        {
          if (v30 <= -4.50359963e15)
          {
            goto LABEL_37;
          }

          v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
        }

        v30 = (v31 >> 1);
LABEL_37:
        v14 = (v14 + 1);
        v32 = (v13 + 16 * v20);
        *v32 = (a3 + v26) | ((v9 + v28) << 32);
        v32[1] = a4 + v30;
        v13 = *a5;
        v12 = a5[1];
        if (v14 < (v12 - *a5) >> 4)
        {
          ++v24;
          v20 = v14;
          if (v14 <= v16)
          {
            continue;
          }
        }

        goto LABEL_8;
      }
    }

    LODWORD(v33) = 0;
    do
    {
      v34 = *v5;
      v35 = v33;
      if (v33 < ((v12 - v13) >> 4) && v33 <= v34)
      {
        v37 = *(v5 + 8);
        v38 = *(v5 + 16);
        do
        {
          v33 = (v33 + 1);
          v39 = (v13 + 16 * v35);
          *v39 = v37;
          v39[1] = v38;
          v13 = *a5;
          v12 = a5[1];
          v40 = v33 >= (v12 - *a5) >> 4 || v33 > v34;
          v35 = v33;
        }

        while (!v40);
      }

      v5 += 24;
    }

    while (v5 != v6);
  }
}

void sub_FD55DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FD55F8(void *a1, uint64_t a2, void *a3)
{
  result = sub_5FC3C(a1, a2);
  if (result)
  {
    a3[1] = *a3;
    result = sub_5F680(a1, a2);
    v7 = *result;
    v8 = *(result + 8);
    if (*result != v8)
    {
      do
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v11 = *v7;
        v17 = 5;
        strcpy(__p, "index");
        v12 = sub_63FDC(v11, __p);
        v13 = v12;
        if (v17 < 0)
        {
          operator delete(__p[0]);
          v14 = *a3;
          v15 = (a3[1] - *a3) >> 4;
          if (v13 >= v15)
          {
LABEL_11:
            if (v13 + 1 > v15)
            {
              sub_FD6BFC(a3, v13 + 1 - v15);
            }

            else if (v13 + 1 < v15)
            {
              a3[1] = v14 + 16 * (v13 + 1);
            }
          }
        }

        else
        {
          v14 = *a3;
          v15 = (a3[1] - *a3) >> 4;
          if (v12 >= v15)
          {
            goto LABEL_11;
          }
        }

        result = sub_F8DD60(v11);
        v9 = (*a3 + 16 * v13);
        *v9 = result;
        v9[1] = v10;
        v7 += 16;
      }

      while (v7 != v8);
    }
  }

  return result;
}

void sub_FD572C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FD5748(uint64_t *a1, _BYTE *a2, void *a3)
{
  if (*a2 == 1)
  {
    if (a2[1])
    {
      operator new();
    }

    v9 = 19;
    strcpy(__p, "avoid_busy_roads_cf");
    v6 = sub_5F8FC(a3, __p);
    result = sub_3AF23C(a1, v6);
  }

  else
  {
    if (a2[1])
    {
      v9 = 14;
      strcpy(__p, "avoid_hills_cf");
    }

    else
    {
      v9 = 13;
      strcpy(__p, "cost_function");
    }

    v4 = sub_5F8FC(a3, __p);
    result = sub_3AF23C(a1, v4);
  }

  if (v9 < 0)
  {
    v7 = result;
    operator delete(*__p);
    return v7;
  }

  return result;
}

void sub_FD58D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD5900(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *a1 = 0;
  *(a1 + 5) = 0;
  operator new();
}

void sub_FD5A28(_Unwind_Exception *exception_object)
{
  v6 = v2;
  v8 = *v6;
  if (*v6)
  {
    v1[12] = v8;
    operator delete(v8);
    v9 = *v5;
    if (!*v5)
    {
LABEL_3:
      v10 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
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

  v1[9] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_4:
    v11 = *v3;
    if (!*v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  v1[6] = v10;
  operator delete(v10);
  v11 = *v3;
  if (!*v3)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  v1[3] = v11;
  operator delete(v11);
  goto LABEL_6;
}

void sub_FD5AB4()
{
  if (!*v0)
  {
    JUMPOUT(0xFD5A58);
  }

  JUMPOUT(0xFD5A50);
}

void *sub_FD5AC4(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

void *sub_FD5B28(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

double sub_FD5B6C(void *a1)
{
  v9 = 4;
  strcpy(__p, "cost");
  v2 = sub_63D34(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 4;
  strcpy(__p, "time");
  v3 = sub_63D34(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 6;
  strcpy(__p, "length");
  v4 = sub_63D34(a1, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  if (fmin(fmin(v2, v3), v4) >= 0.0)
  {
    return v2;
  }

  else
  {
    return 1.0;
  }
}

void sub_FD5C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD5C98(void *a1, uint64_t a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v10 = *v7;
        v25 = 9;
        strcpy(__p, "threshold");
        v11 = sub_63D34(v10, __p);
        if (v25 < 0)
        {
          operator delete(__p[0]);
          v12 = sub_FD5B6C(v10);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
LABEL_11:
            v17 = *a3;
            v18 = v15 - *a3;
            v19 = v18 >> 5;
            v20 = (v18 >> 5) + 1;
            if (v20 >> 59)
            {
              sub_1794();
            }

            v21 = v16 - v17;
            if (v21 >> 4 > v20)
            {
              v20 = v21 >> 4;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFE0)
            {
              v22 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              if (!(v22 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v23 = 32 * v19;
            *v23 = v11;
            *(v23 + 8) = v12;
            *(v23 + 16) = v13;
            *(v23 + 24) = v14;
            v9 = 32 * v19 + 32;
            memcpy(0, v17, v18);
            *a3 = 0;
            a3[1] = v9;
            a3[2] = 0;
            if (v17)
            {
              operator delete(v17);
            }

            goto LABEL_5;
          }
        }

        else
        {
          v12 = sub_FD5B6C(v10);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
            goto LABEL_11;
          }
        }

        *v15 = v11;
        *(v15 + 8) = v12;
        v9 = v15 + 32;
        *(v15 + 16) = v13;
        *(v15 + 24) = v14;
LABEL_5:
        a3[1] = v9;
        v7 += 16;
      }

      while (v7 != v8);
    }
  }
}

void sub_FD5E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD5EAC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      memset_pattern16(*(a1 + 8), &unk_22AEAE0, v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + a2;
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = (8 * ((v4 - *a1) >> 3));
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    memset_pattern16(v10, &unk_22AEAE0, v11);
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

void sub_FD6064(void *a1, uint64_t a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v10 = *v7;
        v26 = 9;
        strcpy(__p, "threshold");
        v11 = sub_353010(v10, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
          v12 = sub_FD5B6C(v10);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
LABEL_11:
            v17 = *a3;
            v18 = v15 - *a3;
            v19 = v18 >> 5;
            v20 = (v18 >> 5) + 1;
            if (v20 >> 59)
            {
              sub_1794();
            }

            v21 = v16 - v17;
            if (v21 >> 4 > v20)
            {
              v20 = v21 >> 4;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFE0)
            {
              v22 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              if (!(v22 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v23 = 32 * v19;
            *v23 = v11;
            *(v23 + 8) = v12;
            *(v23 + 16) = v13;
            *(v23 + 24) = v14;
            v9 = 32 * v19 + 32;
            v24 = (v23 - 32 * (v18 >> 5));
            memcpy(v24, v17, v18);
            *a3 = v24;
            a3[1] = v9;
            a3[2] = 0;
            if (v17)
            {
              operator delete(v17);
            }

            goto LABEL_5;
          }
        }

        else
        {
          v12 = sub_FD5B6C(v10);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
            goto LABEL_11;
          }
        }

        *v15 = v11;
        *(v15 + 8) = v12;
        *(v15 + 16) = v13;
        v9 = v15 + 32;
        *(v15 + 24) = v14;
LABEL_5:
        a3[1] = v9;
        v7 += 16;
      }

      while (v7 != v8);
    }
  }
}

void sub_FD6264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD6280(void *a1, uint64_t a2, uint64_t *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v24 = 9;
        strcpy(__p, "threshold");
        v10 = sub_63D34(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          v11 = sub_F8DD60(v9);
          v14 = a3[1];
          v13 = a3[2];
          if (v14 < v13)
          {
            goto LABEL_4;
          }

LABEL_10:
          v15 = *a3;
          v16 = 0xAAAAAAAAAAAAAAABLL * (&v14[-*a3] >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v15) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x555555555555555)
          {
            v19 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (v19 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v20 = (8 * (&v14[-*a3] >> 3));
          *v20 = v10;
          *(v20 + 1) = v11;
          *(v20 + 2) = v12;
          v21 = 24 * v16 + 24;
          v22 = 24 * v16 - (v14 - v15);
          memcpy(v20 - (v14 - v15), v15, v14 - v15);
          *a3 = v22;
          a3[1] = v21;
          a3[2] = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a3[1] = v21;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v11 = sub_F8DD60(v9);
          v14 = a3[1];
          v13 = a3[2];
          if (v14 >= v13)
          {
            goto LABEL_10;
          }

LABEL_4:
          *v14 = v10;
          *(v14 + 1) = v11;
          *(v14 + 2) = v12;
          a3[1] = (v14 + 24);
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_FD649C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD64B8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v9 = *a3;
  v8 = a3[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v8 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_5FC3C(a1, a2))
  {
    v10 = sub_5F5AC(a1, a2);
    v11 = a3[1] - *a3;
    if (v11)
    {
      v12 = v10;
      v13 = 0;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
      do
      {
        v15 = *a3;
        if (sub_5FC3C(v12, *a3 + v13))
        {
          v16 = sub_5F5AC(v12, v15 + v13);
          *v13 = sub_FD5B6C(v16);
          *(v13 + 8) = v17;
          *(v13 + 16) = v18;
        }

        v13 += 24;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_FD6618(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD663C(void *a1, uint64_t a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v24 = 9;
        strcpy(__p, "threshold");
        v10 = sub_353010(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          v11 = sub_F8DD60(v9);
          v14 = a3[1];
          v13 = a3[2];
          if (v14 < v13)
          {
            goto LABEL_4;
          }

LABEL_10:
          v15 = *a3;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v15) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x555555555555555)
          {
            v19 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (v19 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v20 = 8 * ((v14 - *a3) >> 3);
          *v20 = v10;
          *(v20 + 8) = v11;
          *(v20 + 16) = v12;
          v21 = 24 * v16 + 24;
          v22 = (v20 - (v14 - v15));
          memcpy(v22, v15, v14 - v15);
          *a3 = v22;
          a3[1] = v21;
          a3[2] = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a3[1] = v21;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v11 = sub_F8DD60(v9);
          v14 = a3[1];
          v13 = a3[2];
          if (v14 >= v13)
          {
            goto LABEL_10;
          }

LABEL_4:
          *v14 = v10;
          *(v14 + 8) = v11;
          *(v14 + 16) = v12;
          a3[1] = v14 + 24;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_FD6858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD6874(uint64_t a1, unint64_t a2, _OWORD *a3)
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

void sub_FD69C8(void *a1, uint64_t a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v24 = 9;
        strcpy(__p, "threshold");
        v10 = sub_353010(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v24 = 5;
        strcpy(__p, "value");
        v11 = sub_63D34(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          v13 = a3[1];
          v12 = a3[2];
          if (v13 < v12)
          {
            goto LABEL_4;
          }

LABEL_12:
          v14 = *a3;
          v15 = v13 - *a3;
          v16 = v15 >> 4;
          v17 = (v15 >> 4) + 1;
          if (v17 >> 60)
          {
            sub_1794();
          }

          v18 = v12 - v14;
          if (v18 >> 3 > v17)
          {
            v17 = v18 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (!(v19 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v20 = 16 * v16;
          *v20 = v10;
          *(v20 + 8) = v11;
          v21 = 16 * v16 + 16;
          v22 = (v20 - 16 * (v15 >> 4));
          memcpy(v22, v14, v15);
          *a3 = v22;
          a3[1] = v21;
          a3[2] = 0;
          if (v14)
          {
            operator delete(v14);
          }

          a3[1] = v21;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v13 = a3[1];
          v12 = a3[2];
          if (v13 >= v12)
          {
            goto LABEL_12;
          }

LABEL_4:
          *v13 = v10;
          *(v13 + 8) = v11;
          a3[1] = v13 + 16;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_FD6BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD6BFC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 > (v3 - v4) >> 4)
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      sub_1794();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v21 = 16 * v5;
    v22 = 16 * v5 + 16 * a2;
    v23 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v23)
    {
      v9 = v23 + 1;
      v10 = (v23 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = v21 + 16 * v10;
      v12 = v21 + 16;
      v13 = -NAN;
      v14 = v10;
      do
      {
        *(v12 - 16) = v13;
        *v12 = v13;
        *(v12 - 8) = 0x7FFFFFFFFFFFFFFFLL;
        *(v12 + 8) = 0x7FFFFFFFFFFFFFFFLL;
        v12 += 32;
        v14 -= 2;
      }

      while (v14);
      if (v9 == v10)
      {
LABEL_26:
        v24 = *a1;
        v25 = *(a1 + 8) - *a1;
        v26 = v21 - v25;
        memcpy((v21 - v25), *a1, v25);
        *a1 = v26;
        *(a1 + 8) = v22;
        *(a1 + 16) = 0;
        if (v24)
        {

          operator delete(v24);
        }

        return;
      }
    }

    else
    {
      v11 = 16 * v5;
    }

    do
    {
      *v11 = -NAN;
      *(v11 + 8) = 0x7FFFFFFFFFFFFFFFLL;
      v11 += 16;
    }

    while (v11 != v22);
    goto LABEL_26;
  }

  if (a2)
  {
    v15 = v4 + 16 * a2;
    if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_35;
    }

    v16 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v17 = v4 + 16 * (v16 & 0x1FFFFFFFFFFFFFFELL);
    v18 = v4 + 16;
    v19 = -NAN;
    v20 = v16 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v18 - 16) = v19;
      *v18 = v19;
      *(v18 - 8) = 0x7FFFFFFFFFFFFFFFLL;
      *(v18 + 8) = 0x7FFFFFFFFFFFFFFFLL;
      v18 += 32;
      v20 -= 2;
    }

    while (v20);
    v4 = v17;
    if (v16 != (v16 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_35:
      do
      {
        *v4 = -NAN;
        *(v4 + 8) = 0x7FFFFFFFFFFFFFFFLL;
        v4 += 16;
      }

      while (v4 != v15);
    }

    v4 = v15;
  }

  *(a1 + 8) = v4;
}

void sub_FD6E80(BOOL *a1, uint64_t a2)
{
  strcpy(v5, "DecisionPointDetection");
  v5[23] = 22;
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  sub_FD7980(a1, v3);
}

void sub_FD6F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_FD6FA8@<D0>(_BYTE *a1@<X0>, void *a2@<X1>, double *a3@<X2>, void *a4@<X8>, double result@<D0>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a1 == 1)
  {
    sub_FD7078(a1, a2, a4);
    sub_FD72F8(a1, a2, a4);
    sub_FD771C(a1, a2, a3, a4);
    v10 = a4[1];
    v11 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v10[-*a4] >> 3));
    if (v10 == *a4)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    *&result = sub_FD82B0(*a4, v10, &v13, v12, 1, v9).n128_u64[0];
  }

  return result;
}

void sub_FD705C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD7078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 1)
  {
    v6 = sub_F6D008(a2);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      for (i = 0; v7 != i; ++i)
      {
        v8 += sub_F6D254(a2, i);
        v12 = sub_F6C648(a2, i);
        v13 = *v12;
        v14 = &(*v12)[-**v12];
        if (*v14 >= 0x2Fu)
        {
          v15 = *(v14 + 23);
          if (v15)
          {
            if (!v13[v15])
            {
              v30 = v12[5];
              v31 = (v30 - *v30);
              if (*v31 < 0x2Fu || (v32 = v31[23]) == 0 || *(v30 + v32))
              {
                v33 = *(a1 + 24);
                v27 = __OFSUB__(v8, v33);
                v34 = v8 - v33;
                if ((v34 < 0) ^ v27 | (v34 == 0))
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v34;
                }

                if (v29 >= *(a1 + 32))
                {
                  goto LABEL_33;
                }

                continue;
              }
            }

            v16 = v13[v15];
            v17 = v16 > 0x1A;
            v18 = (1 << v16) & 0x4810001;
            if (!v17 && v18 != 0)
            {
              continue;
            }
          }
        }

        v20 = v12[5];
        v21 = (v20 - *v20);
        if (*v21 >= 0x2Fu)
        {
          v22 = v21[23];
          if (v22)
          {
            v23 = *(v20 + v22);
            v17 = v23 > 0x1A;
            v24 = (1 << v23) & 0x4810001;
            if (!v17 && v24 != 0)
            {
              v26 = *(a1 + 16);
              v27 = __OFSUB__(v8, v26);
              v28 = v8 - v26;
              v29 = ((v28 < 0) ^ v27) | (v28 == 0) ? 0 : v28;
              if (v29 >= *(a1 + 32))
              {
LABEL_33:
                v35 = *(a3 + 8);
                v36 = *(a3 + 16);
                if (v35 < v36)
                {
                  v10 = *(a1 + 40);
                  *v35 = v8;
                  *(v35 + 8) = v29;
                  *(v35 + 16) = v10;
                  v11 = v35 + 24;
                }

                else
                {
                  v37 = *a3;
                  v38 = 0xAAAAAAAAAAAAAAABLL * ((v35 - *a3) >> 3);
                  v39 = v38 + 1;
                  if (v38 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_1794();
                  }

                  v40 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v37) >> 3);
                  if (2 * v40 > v39)
                  {
                    v39 = 2 * v40;
                  }

                  if (v40 >= 0x555555555555555)
                  {
                    v41 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v41 = v39;
                  }

                  if (v41)
                  {
                    if (v41 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v42 = 8 * ((v35 - *a3) >> 3);
                  v43 = *(a1 + 40);
                  *v42 = v8;
                  *(v42 + 8) = v29;
                  *(v42 + 16) = v43;
                  v11 = 24 * v38 + 24;
                  v44 = (v42 - (v35 - v37));
                  memcpy(v44, v37, v35 - v37);
                  *a3 = v44;
                  *(a3 + 8) = v11;
                  *(a3 + 16) = 0;
                  if (v37)
                  {
                    operator delete(v37);
                  }
                }

                *(a3 + 8) = v11;
              }
            }
          }
        }
      }
    }
  }
}

void sub_FD72F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_F6E3D4(a2);
  if (*(a1 + 48) != 1 || v6 < *(a1 + 56))
  {
    return;
  }

  v58 = v6;
  sub_F6D0EC(a2, &v59);
  v8 = v60;
  v7 = v61;
  v9 = v62;
  v10 = v63;
  if (v60)
  {
    for (i = 0; ; i += sub_F6D254(v8, v7))
    {
      v12 = sub_F6D024(v8);
      v13 = v12;
      if (v9)
      {
        v14 = sub_F6D024(v9);
        if (v7 >= v13 || v10 >= v14)
        {
          if (v7 < v13 == v10 < v14)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v15 = sub_F6D17C(v8, v7);
          if (v15 == sub_F6D17C(v9, v10))
          {
            goto LABEL_53;
          }
        }
      }

      else if (v7 >= v12)
      {
        goto LABEL_53;
      }

      v16 = sub_F6D17C(v8, --v7);
      v17 = *v16;
      v18 = (*v16 - **v16);
      v19 = *v18;
      if (*(v16 + 38))
      {
        if (v19 < 0x9B)
        {
          continue;
        }

        v20 = v18[77];
        if (!v20 || (*&v17[v20] & 2) == 0)
        {
          continue;
        }
      }

      else
      {
        if (v19 < 0x9B)
        {
          continue;
        }

        v21 = v18[77];
        if (!v21 || (*&v17[v21] & 1) == 0)
        {
          continue;
        }
      }

      if (*(a1 + 49) != 1)
      {
        goto LABEL_53;
      }

      v22 = sub_F6D17C(v8, v7);
      v23 = (*v22 - **v22);
      if (*v23 < 0x2Fu)
      {
        goto LABEL_53;
      }

      v24 = v23[23];
      if (!v24)
      {
        goto LABEL_53;
      }

      v25 = *(*v22 + v24);
      v26 = v25 > 0x2F;
      v27 = (1 << v25) & 0xE2E040048000;
      if (v26 || v27 == 0)
      {
        goto LABEL_53;
      }
    }
  }

  if (!v62)
  {
    i = 0;
LABEL_53:
    v42 = *(a1 + 64);
    v43 = v58;
    if (v58 < v42 + i)
    {
      return;
    }

LABEL_54:
    v44 = v43 - i;
    v45 = v43 - i - v42;
    v46 = *(a3 + 8);
    v47 = *(a3 + 16);
    if (v46 >= v47)
    {
      v50 = *a3;
      v51 = 0xAAAAAAAAAAAAAAABLL * ((v46 - *a3) >> 3);
      v52 = v51 + 1;
      if (v51 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v53 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v50) >> 3);
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      if (v53 >= 0x555555555555555)
      {
        v54 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        if (v54 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v55 = 8 * ((v46 - *a3) >> 3);
      v56 = *(a1 + 72);
      *v55 = v44;
      *(v55 + 8) = v45;
      *(v55 + 16) = v56;
      v49 = 24 * v51 + 24;
      v57 = (24 * v51 - (v46 - v50));
      memcpy(v57, v50, v46 - v50);
      *a3 = v57;
      *(a3 + 8) = v49;
      *(a3 + 16) = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      v48 = *(a1 + 72);
      *v46 = v44;
      *(v46 + 8) = v45;
      *(v46 + 16) = v48;
      v49 = v46 + 24;
    }

    *(a3 + 8) = v49;
    return;
  }

  if (v10 < sub_F6D024(v62))
  {
    i = 0;
    v29 = v7 - 1;
    while (1)
    {
      v30 = sub_F6D17C(0, v29);
      v31 = *v30;
      v32 = (*v30 - **v30);
      v33 = *v32;
      if (*(v30 + 38))
      {
        if (v33 < 0x9B)
        {
          goto LABEL_34;
        }

        v34 = v32[77];
        if (!v34 || (*&v31[v34] & 2) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v33 < 0x9B)
        {
          goto LABEL_34;
        }

        v35 = v32[77];
        if (!v35 || (*&v31[v35] & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (*(a1 + 49) != 1)
      {
        goto LABEL_53;
      }

      v36 = sub_F6D17C(0, v29);
      v37 = (*v36 - **v36);
      if (*v37 < 0x2Fu)
      {
        goto LABEL_53;
      }

      v38 = v37[23];
      if (!v38)
      {
        goto LABEL_53;
      }

      v39 = *(*v36 + v38);
      v26 = v39 > 0x2F;
      v40 = (1 << v39) & 0xE2E040048000;
      if (v26 || v40 == 0)
      {
        goto LABEL_53;
      }

LABEL_34:
      i += sub_F6D254(0, v29--);
      if (v10 >= sub_F6D024(v9))
      {
        goto LABEL_53;
      }
    }
  }

  i = 0;
  v42 = *(a1 + 64);
  v43 = v58;
  if (v58 >= v42)
  {
    goto LABEL_54;
  }
}

uint64_t sub_FD771C(uint64_t result, uint64_t a2, double *a3, uint64_t a4)
{
  if (*(result + 108) != 12)
  {
    return result;
  }

  v29[7] = v4;
  v29[8] = v5;
  v9 = result;
  result = sub_F6E3D4(a2);
  if (*(v9 + 80) != 1)
  {
    return result;
  }

  v10 = result;
  v11 = (v9 + 88);
  if (result < *(v9 + 88))
  {
    return result;
  }

  result = sub_1181948(a2, *(v9 + 104));
  if (!result)
  {
    return result;
  }

  result = sub_1181948(a2, *(v9 + 104));
  if ((result & 1) == 0 || ((v12 = *a3, v13 = *a3 & 0x7FFFFFFFFFFFFFFFLL, *a3 > -1) ? (v14 = (v13 - 0x10000000000000) >> 53 >= 0x3FF) : (v14 = 1), v14 ? (v15 = (*a3 - 1) >= 0xFFFFFFFFFFFFFLL) : (v15 = 0), v15 ? (v16 = v13 == 0) : (v16 = 1), !v16 || v12 <= 0.0))
  {
    v29[0] = 0x7FFFFFFFFFFFFFFFLL;
    v20 = (v9 + 112);
    goto LABEL_22;
  }

  v17 = v12 * (*(v9 + 96) / 36000.0) * 100000.0;
  if (v17 >= 0.0)
  {
    v18 = v17;
    if (v17 >= 4.50359963e15)
    {
      goto LABEL_31;
    }

    v19 = (v17 + v17) + 1;
  }

  else
  {
    v18 = v17;
    if (v17 <= -4.50359963e15)
    {
      goto LABEL_31;
    }

    v19 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
  }

  v18 = (v19 >> 1);
LABEL_31:
  if (v18 < 9.22337204e18)
  {
    if (v17 >= 0.0)
    {
      if (v17 >= 4.50359963e15)
      {
        goto LABEL_39;
      }

      v25 = (v17 + v17) + 1;
    }

    else
    {
      if (v17 <= -4.50359963e15)
      {
        goto LABEL_39;
      }

      v25 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
    }

    v17 = (v25 >> 1);
LABEL_39:
    v26 = v17;
    v29[0] = v17;
    v20 = (v9 + 112);
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  v26 = 0x7FFFFFFFFFFFFFFELL;
  v29[0] = 0x7FFFFFFFFFFFFFFELL;
  v20 = (v9 + 112);
LABEL_40:
  if (*v11 >= v26)
  {
    v27 = v29;
  }

  else
  {
    v27 = (v9 + 88);
  }

  if (*v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v29;
  }

  else
  {
    v11 = v27;
  }

LABEL_22:
  v21 = *v20;
  v22 = *v11 + *v20;
  v28 = v22;
  if (v22 < v10)
  {
    v23 = *(a4 + 8);
    if (v23 >= *(a4 + 16))
    {
      result = sub_FD8188(a4, v20, &v28, (v9 + 100));
    }

    else
    {
      v24 = *(v9 + 100);
      *v23 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = v24;
      result = v23 + 24;
    }

    *(a4 + 8) = result;
  }

  return result;
}

void sub_FD7980(BOOL *a1, void *a2)
{
  v6 = 6;
  strcpy(__p, "enable");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_FD7B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD7B5C(BOOL *a1, void *a2)
{
  v6 = 6;
  strcpy(__p, "enable");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_FD7D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD7D94(BOOL *a1, void *a2)
{
  v6[7] = 6;
  strcpy(__p, "enable");
  v3 = sub_5F9D0(a2, __p);
  if ((v6[7] & 0x80000000) != 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_FD7F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD7FB4(BOOL *a1, void *a2)
{
  v6 = 6;
  strcpy(__p, "enable");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_FD8160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FD8188(uint64_t a1, void *a2, uint64_t *a3, int *a4)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v7 = v6 + 1;
  if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v5) >> 3) > v7)
  {
    v7 = 0x5555555555555556 * ((*(a1 + 16) - v5) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v5) >> 3) >= 0x555555555555555)
  {
    v9 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = 8 * ((v4 - *a1) >> 3);
  v11 = *a3;
  v12 = *a4;
  *v10 = *a2;
  *(v10 + 8) = v11;
  *(v10 + 16) = v12;
  v13 = (24 * v6 - (v4 - v5));
  memcpy(v13, v5, v4 - v5);
  *a1 = v13;
  *(a1 + 8) = 24 * v6 + 24;
  *(a1 + 16) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return 24 * v6 + 24;
}

__n128 sub_FD82B0(void *n128_u64, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
  while (2)
  {
    v11 = (a2 - 24);
    v127 = a2 - 48;
    v12 = a2 - 72;
    v13 = n128_u64;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          n128_u64 = v13;
          v14 = &a2[-v13];
          v15 = 0xAAAAAAAAAAAAAAABLL * (&a2[-v13] >> 3);
          if (v15 <= 2)
          {
            if (v15 < 2)
            {
              return result;
            }

            if (v15 == 2)
            {
              if (*(a2 - 2) < *(v13 + 8))
              {
                v173 = *(v13 + 16);
                v147 = *v13;
                v92 = *(a2 - 24);
                *(v13 + 16) = *(a2 - 2);
                *v13 = v92;
                result = v147;
                *(a2 - 2) = v173;
                *(a2 - 24) = v147;
              }

              return result;
            }

            goto LABEL_9;
          }

          switch(v15)
          {
            case 3uLL:
              v93 = *(v13 + 32);
              v94 = *(a2 - 2);
              if (v93 < *(v13 + 8))
              {
                if (v94 >= v93)
                {
                  v177 = *(v13 + 16);
                  v151 = *v13;
                  *v13 = *(v13 + 24);
                  *(v13 + 16) = *(v13 + 40);
                  result = v151;
                  *(v13 + 24) = v151;
                  *(v13 + 40) = v177;
                  if (*(a2 - 2) < *(v13 + 32))
                  {
                    result = *(v13 + 24);
                    v120 = *(v13 + 40);
                    v121 = *(a2 - 2);
                    *(v13 + 24) = *v11;
                    *(v13 + 40) = v121;
                    *(a2 - 2) = v120;
                    *v11 = result;
                  }
                }

                else
                {
                  v174 = *(v13 + 16);
                  v148 = *v13;
                  v95 = *v11;
                  *(v13 + 16) = *(a2 - 2);
                  *v13 = v95;
                  result = v148;
                  *(a2 - 2) = v174;
                  *v11 = v148;
                }

                return result;
              }

              if (v94 >= v93)
              {
                return result;
              }

              result = *(v13 + 24);
              v110 = *(v13 + 40);
              v111 = *(a2 - 2);
              *(v13 + 24) = *v11;
              *(v13 + 40) = v111;
              *(a2 - 2) = v110;
              *v11 = result;
              if (*(v13 + 32) >= *(v13 + 8))
              {
                return result;
              }

LABEL_155:
              v179 = *(v13 + 16);
              v153 = *v13;
              *v13 = *(v13 + 24);
              *(v13 + 16) = *(v13 + 40);
              result = v153;
              *(v13 + 24) = v153;
              *(v13 + 40) = v179;
              return result;
            case 4uLL:
              v96 = *(v13 + 32);
              v97 = *(v13 + 56);
              if (v96 >= *(v13 + 8))
              {
                if (v97 < v96)
                {
                  result = *(v13 + 24);
                  *(v13 + 24) = *(v13 + 48);
                  v113 = *(v13 + 32);
                  v112 = *(v13 + 40);
                  *(v13 + 40) = *(v13 + 64);
                  *(v13 + 48) = result;
                  *(v13 + 64) = v112;
                  if (v113 < *(v13 + 8))
                  {
                    v176 = *(v13 + 16);
                    v150 = *v13;
                    *v13 = *(v13 + 24);
                    *(v13 + 16) = *(v13 + 40);
                    result = v150;
                    *(v13 + 24) = v150;
                    *(v13 + 40) = v176;
                  }
                }
              }

              else if (v97 >= v96)
              {
                v178 = *(v13 + 16);
                v152 = *v13;
                *v13 = *(v13 + 24);
                *(v13 + 16) = *(v13 + 40);
                result = v152;
                *(v13 + 24) = v152;
                *(v13 + 40) = v178;
                if (v97 < *(v13 + 32))
                {
                  v122 = *(v13 + 40);
                  result = *(v13 + 24);
                  *(v13 + 24) = *(v13 + 48);
                  *(v13 + 40) = *(v13 + 64);
                  *(v13 + 48) = result;
                  *(v13 + 64) = v122;
                }
              }

              else
              {
                v175 = *(v13 + 16);
                v149 = *v13;
                *v13 = *(v13 + 48);
                *(v13 + 16) = *(v13 + 64);
                result = v149;
                *(v13 + 48) = v149;
                *(v13 + 64) = v175;
              }

              if (*(a2 - 2) >= *(v13 + 56))
              {
                return result;
              }

              result = *(v13 + 48);
              v123 = *(v13 + 64);
              v124 = *(a2 - 2);
              *(v13 + 48) = *v11;
              *(v13 + 64) = v124;
              *(a2 - 2) = v123;
              *v11 = result;
              if (*(v13 + 56) >= *(v13 + 32))
              {
                return result;
              }

              result = *(v13 + 24);
              *(v13 + 24) = *(v13 + 48);
              v126 = *(v13 + 32);
              v125 = *(v13 + 40);
              *(v13 + 40) = *(v13 + 64);
              *(v13 + 48) = result;
              *(v13 + 64) = v125;
              if (v126 >= *(v13 + 8))
              {
                return result;
              }

              goto LABEL_155;
            case 5uLL:

              result.n128_u64[0] = sub_FD90B8(v13, (v13 + 24), (v13 + 48), (v13 + 72), (a2 - 24), result).n128_u64[0];
              return result;
          }

LABEL_9:
          if (v14 <= 575)
          {
            v98 = (v13 + 24);
            v100 = v13 == a2 || v98 == a2;
            if (a5)
            {
              if (!v100)
              {
                v101 = 0;
                v102 = v13;
                do
                {
                  v104 = v98;
                  v105 = v102[4];
                  if (v105 < v102[1])
                  {
                    v106 = *v104;
                    v107 = *(v102 + 10);
                    v108 = v101;
                    do
                    {
                      v109 = v13 + v108;
                      result = *(v13 + v108);
                      *(v109 + 24) = result;
                      *(v109 + 40) = *(v13 + v108 + 16);
                      if (!v108)
                      {
                        v103 = v13;
                        goto LABEL_124;
                      }

                      v108 -= 24;
                    }

                    while (v105 < *(v109 - 16));
                    v103 = v13 + v108 + 24;
LABEL_124:
                    *v103 = v106;
                    *(v103 + 8) = v105;
                    *(v103 + 16) = v107;
                  }

                  v98 = v104 + 24;
                  v101 += 24;
                  v102 = v104;
                }

                while (v104 + 24 != a2);
              }
            }

            else if (!v100)
            {
              do
              {
                v114 = v98;
                v115 = n128_u64[4];
                if (v115 < n128_u64[1])
                {
                  v116 = *v98;
                  v117 = n128_u64[5];
                  v118 = v114;
                  do
                  {
                    result = *(v118 - 24);
                    *v118 = result;
                    v118[1].n128_u32[0] = v118[-1].n128_u32[2];
                    v119 = v118[-3].n128_i64[1];
                    v118 = (v118 - 24);
                  }

                  while (v115 < v119);
                  v118->n128_u64[0] = v116;
                  v118->n128_u64[1] = v115;
                  v118[1].n128_u32[0] = v117;
                }

                v98 = &v114[1].n128_i8[8];
                n128_u64 = v114->n128_u64;
              }

              while (&v114[1].n128_i8[8] != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v13 != a2)
            {

              sub_FD97C0(v13, a2, a2);
            }

            return result;
          }

          v16 = v15 >> 1;
          v17 = (v13 + 24 * (v15 >> 1));
          v18 = *(a2 - 2);
          if (v14 >= 0xC01)
          {
            break;
          }

          v21 = *(v13 + 8);
          if (v21 < v17->n128_u64[1])
          {
            if (v18 >= v21)
            {
              v162 = v17[1].n128_u64[0];
              v136 = *v17;
              v40 = *v13;
              v17[1].n128_u32[0] = *(v13 + 16);
              *v17 = v40;
              result = v136;
              *(v13 + 16) = v162;
              *v13 = v136;
              if (*(a2 - 2) >= *(v13 + 8))
              {
                goto LABEL_37;
              }

              v155 = *(v13 + 16);
              v129 = *v13;
              v41 = *v11;
              *(v13 + 16) = *(a2 - 2);
              *v13 = v41;
            }

            else
            {
              v155 = v17[1].n128_u64[0];
              v129 = *v17;
              v22 = *v11;
              v17[1].n128_u32[0] = *(a2 - 2);
              *v17 = v22;
            }

            result = v129;
            *(a2 - 2) = v155;
            *v11 = v129;
LABEL_37:
            --a4;
            if ((a5 & 1) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_38;
          }

          if (v18 >= v21)
          {
            goto LABEL_37;
          }

          v158 = *(v13 + 16);
          v132 = *v13;
          v25 = *v11;
          *(v13 + 16) = *(a2 - 2);
          *v13 = v25;
          result = v132;
          *(a2 - 2) = v158;
          *v11 = v132;
          if (*(v13 + 8) >= v17->n128_u64[1])
          {
            goto LABEL_37;
          }

          v159 = v17[1].n128_u64[0];
          v133 = *v17;
          v26 = *v13;
          v17[1].n128_u32[0] = *(v13 + 16);
          *v17 = v26;
          result = v133;
          *(v13 + 16) = v159;
          *v13 = v133;
          --a4;
          if (a5)
          {
            goto LABEL_38;
          }

LABEL_60:
          v42 = *(v13 + 8);
          if (*(v13 - 16) < v42)
          {
            goto LABEL_61;
          }

          if (v42 >= *(a2 - 2))
          {
            v82 = v13 + 24;
            do
            {
              v13 = v82;
              if (v82 >= a2)
              {
                break;
              }

              v83 = *(v82 + 8);
              v82 += 24;
            }

            while (v42 >= v83);
          }

          else
          {
            v80 = v13;
            do
            {
              v13 = v80 + 24;
              v81 = *(v80 + 32);
              v80 += 24;
            }

            while (v42 >= v81);
          }

          v84 = a2;
          if (v13 < a2)
          {
            v85 = a2;
            do
            {
              v84 = v85 - 24;
              v86 = *(v85 - 2);
              v85 -= 24;
            }

            while (v42 < v86);
          }

          v87 = *n128_u64;
          v88 = n128_u64[2];
          while (v13 < v84)
          {
            v172 = *(v13 + 16);
            v146 = *v13;
            v89 = *v84;
            *(v13 + 16) = *(v84 + 4);
            *v13 = v89;
            result = v146;
            *(v84 + 4) = v172;
            *v84 = v146;
            do
            {
              v90 = *(v13 + 32);
              v13 += 24;
            }

            while (v42 >= v90);
            do
            {
              v91 = *(v84 - 2);
              v84 -= 24;
            }

            while (v42 < v91);
          }

          if ((v13 - 24) != n128_u64)
          {
            result = *(v13 - 24);
            *(n128_u64 + 4) = *(v13 - 8);
            *n128_u64 = result;
          }

          a5 = 0;
          *(v13 - 24) = v87;
          *(v13 - 16) = v42;
          *(v13 - 8) = v88;
        }

        v19 = v17->n128_i64[1];
        if (v19 >= *(v13 + 8))
        {
          if (v18 < v19)
          {
            v156 = v17[1].n128_u64[0];
            v130 = *v17;
            v23 = *v11;
            v17[1].n128_u32[0] = *(a2 - 2);
            *v17 = v23;
            *(a2 - 2) = v156;
            *v11 = v130;
            if (v17->n128_u64[1] < *(v13 + 8))
            {
              v157 = *(v13 + 16);
              v131 = *v13;
              v24 = *v17;
              *(v13 + 16) = v17[1].n128_u32[0];
              *v13 = v24;
              v17[1].n128_u32[0] = v157;
              *v17 = v131;
            }
          }
        }

        else
        {
          if (v18 >= v19)
          {
            v160 = *(v13 + 16);
            v134 = *v13;
            v27 = *v17;
            *(v13 + 16) = v17[1].n128_u32[0];
            *v13 = v27;
            v17[1].n128_u32[0] = v160;
            *v17 = v134;
            if (*(a2 - 2) >= v17->n128_u64[1])
            {
              goto LABEL_28;
            }

            v154 = v17[1].n128_u64[0];
            v128 = *v17;
            v28 = *v11;
            v17[1].n128_u32[0] = *(a2 - 2);
            *v17 = v28;
          }

          else
          {
            v154 = *(v13 + 16);
            v128 = *v13;
            v20 = *v11;
            *(v13 + 16) = *(a2 - 2);
            *v13 = v20;
          }

          *(a2 - 2) = v154;
          *v11 = v128;
        }

LABEL_28:
        v29 = v13 + 24 * v16;
        v30 = (v29 - 24);
        v31 = *(v29 - 16);
        v32 = *(a2 - 5);
        if (v31 >= *(v13 + 32))
        {
          if (v32 < v31)
          {
            v161 = v30[1].n128_i64[0];
            v135 = *v30;
            v36 = *v127;
            v30[1].n128_u32[0] = *(a2 - 8);
            *v30 = v36;
            *(a2 - 8) = v161;
            *v127 = v135;
            if (v30->n128_u64[1] < *(v13 + 32))
            {
              v37 = *(v13 + 24);
              v38 = *(v13 + 40);
              v39 = v30[1].n128_i32[0];
              *(v13 + 24) = *v30;
              *(v13 + 40) = v39;
              v30[1].n128_u32[0] = v38;
              *v30 = v37;
            }
          }
        }

        else if (v32 >= v31)
        {
          v43 = *(v13 + 24);
          v44 = *(v13 + 40);
          v45 = v30[1].n128_i32[0];
          *(v13 + 24) = *v30;
          *(v13 + 40) = v45;
          v30[1].n128_u32[0] = v44;
          *v30 = v43;
          if (*(a2 - 5) < v30->n128_u64[1])
          {
            v163 = v30[1].n128_i64[0];
            v137 = *v30;
            v46 = *v127;
            v30[1].n128_u32[0] = *(a2 - 8);
            *v30 = v46;
            *(a2 - 8) = v163;
            *v127 = v137;
          }
        }

        else
        {
          v33 = *(v13 + 24);
          v34 = *(v13 + 40);
          v35 = *(a2 - 8);
          *(v13 + 24) = *v127;
          *(v13 + 40) = v35;
          *(a2 - 8) = v34;
          *v127 = v33;
        }

        v47 = v13 + 24 * v16;
        v48 = *(v47 + 32);
        v49 = *(a2 - 8);
        if (v48 >= *(v13 + 56))
        {
          if (v49 < v48)
          {
            v164 = *(v47 + 40);
            v138 = *(v47 + 24);
            v53 = *v12;
            *(v47 + 40) = *(a2 - 14);
            *(v47 + 24) = v53;
            *(a2 - 14) = v164;
            *v12 = v138;
            if (*(v47 + 32) < *(v13 + 56))
            {
              v54 = *(v13 + 48);
              v55 = *(v13 + 64);
              v56 = *(v47 + 40);
              *(v13 + 48) = *(v47 + 24);
              *(v13 + 64) = v56;
              *(v47 + 40) = v55;
              *(v47 + 24) = v54;
            }
          }
        }

        else
        {
          if (v49 >= v48)
          {
            v57 = *(v13 + 48);
            v58 = *(v13 + 64);
            v59 = *(v47 + 40);
            *(v13 + 48) = *(v47 + 24);
            *(v13 + 64) = v59;
            *(v47 + 40) = v58;
            *(v47 + 24) = v57;
            if (*(a2 - 8) >= *(v47 + 32))
            {
              goto LABEL_50;
            }

            v165 = *(v47 + 40);
            v139 = *(v47 + 24);
            v60 = *v12;
            *(v47 + 40) = *(a2 - 14);
            *(v47 + 24) = v60;
            v50 = v139;
            *(a2 - 14) = v165;
          }

          else
          {
            v50 = *(v13 + 48);
            v51 = *(v13 + 64);
            v52 = *(a2 - 14);
            *(v13 + 48) = *v12;
            *(v13 + 64) = v52;
            *(a2 - 14) = v51;
          }

          *v12 = v50;
        }

LABEL_50:
        v61 = v17->n128_i64[1];
        v62 = *(v47 + 32);
        if (v61 >= v30->n128_u64[1])
        {
          if (v62 < v61)
          {
            v167 = v17[1].n128_u64[0];
            v141 = *v17;
            *v17 = *(v47 + 24);
            v17[1].n128_u32[0] = *(v47 + 40);
            *(v47 + 40) = v167;
            *(v47 + 24) = v141;
            if (v17->n128_u64[1] < v30->n128_u64[1])
            {
              v168 = v30[1].n128_i64[0];
              v142 = *v30;
              *v30 = *v17;
              v30[1].n128_u32[0] = v17[1].n128_u32[0];
              v17[1].n128_u32[0] = v168;
              *v17 = v142;
            }
          }
        }

        else
        {
          if (v62 >= v61)
          {
            v169 = v30[1].n128_i64[0];
            v143 = *v30;
            *v30 = *v17;
            v30[1].n128_u32[0] = v17[1].n128_u32[0];
            v17[1].n128_u32[0] = v169;
            *v17 = v143;
            if (*(v47 + 32) >= v17->n128_u64[1])
            {
              goto LABEL_59;
            }

            v166 = v17[1].n128_u64[0];
            v140 = *v17;
            *v17 = *(v47 + 24);
            v17[1].n128_u32[0] = *(v47 + 40);
          }

          else
          {
            v166 = v30[1].n128_u64[0];
            v140 = *v30;
            *v30 = *(v47 + 24);
            v30[1].n128_u32[0] = *(v47 + 40);
          }

          *(v47 + 40) = v166;
          *(v47 + 24) = v140;
        }

LABEL_59:
        v170 = *(v13 + 16);
        v144 = *v13;
        v63 = *v17;
        *(v13 + 16) = v17[1].n128_u32[0];
        *v13 = v63;
        result = v144;
        v17[1].n128_u32[0] = v170;
        *v17 = v144;
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_38:
        v42 = *(v13 + 8);
LABEL_61:
        v64 = 0;
        v65 = *v13;
        v66 = *(v13 + 16);
        do
        {
          v67 = *(v13 + v64 + 32);
          v64 += 24;
        }

        while (v67 < v42);
        v68 = v13 + v64;
        v69 = a2;
        if (v64 == 24)
        {
          v72 = a2;
          while (v68 < v72)
          {
            v70 = v72 - 24;
            v73 = *(v72 - 2);
            v72 -= 24;
            if (v73 < v42)
            {
              goto LABEL_69;
            }
          }

          v70 = v72;
          v13 = v68;
        }

        else
        {
          do
          {
            v70 = v69 - 24;
            v71 = *(v69 - 2);
            v69 -= 24;
          }

          while (v71 >= v42);
LABEL_69:
          v13 = v68;
          if (v68 < v70)
          {
            v74 = v70;
            do
            {
              v171 = *(v13 + 16);
              v145 = *v13;
              v75 = *v74;
              *(v13 + 16) = *(v74 + 16);
              *v13 = v75;
              result = v145;
              *(v74 + 16) = v171;
              *v74 = v145;
              do
              {
                v76 = *(v13 + 32);
                v13 += 24;
              }

              while (v76 < v42);
              do
              {
                v77 = *(v74 - 16);
                v74 -= 24;
              }

              while (v77 >= v42);
            }

            while (v13 < v74);
          }
        }

        if ((v13 - 24) != n128_u64)
        {
          result = *(v13 - 24);
          *(n128_u64 + 4) = *(v13 - 8);
          *n128_u64 = result;
        }

        *(v13 - 24) = v65;
        *(v13 - 16) = v42;
        *(v13 - 8) = v66;
        if (v68 >= v70)
        {
          break;
        }

LABEL_80:
        sub_FD82B0(n128_u64, v13 - 24, a3, a4, a5 & 1);
        a5 = 0;
      }

      v78 = sub_FD9300(n128_u64, (v13 - 24), result);
      if (sub_FD9300(v13, a2, v79))
      {
        break;
      }

      if (!v78)
      {
        goto LABEL_80;
      }
    }

    a2 = (v13 - 24);
    if (!v78)
    {
      continue;
    }

    return result;
  }
}

__n128 sub_FD90B8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i64[1];
  v7 = a3->n128_i64[1];
  if (v6 >= a1->n128_u64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      v10 = a2[1].n128_u64[0];
      v11 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v11;
      a3[1].n128_u32[0] = v10;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        v12 = a1[1].n128_u64[0];
        v13 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v13;
        a2[1].n128_u32[0] = v12;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = a1[1].n128_u64[0];
      v9 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v9;
LABEL_9:
      a3[1].n128_u32[0] = v8;
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    v14 = a1[1].n128_u64[0];
    v15 = a2[1].n128_u32[0];
    *a1 = *a2;
    a1[1].n128_u32[0] = v15;
    a2[1].n128_u32[0] = v14;
    *a2 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      v8 = a2[1].n128_u64[0];
      v16 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[1] < a3->n128_u64[1])
  {
    result = *a3;
    v17 = a3[1].n128_u64[0];
    v18 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v18;
    a4[1].n128_u32[0] = v17;
    *a4 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      v19 = a2[1].n128_u64[0];
      v20 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v20;
      a3[1].n128_u32[0] = v19;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v22;
        a2[1].n128_u32[0] = v21;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u64[1] < a4->n128_u64[1])
  {
    result = *a4;
    v23 = a4[1].n128_i64[0];
    v24 = a5[1].n128_u32[0];
    *a4 = *a5;
    a4[1].n128_u32[0] = v24;
    a5[1].n128_u32[0] = v23;
    *a5 = result;
    if (a4->n128_u64[1] < a3->n128_u64[1])
    {
      result = *a3;
      v25 = a3[1].n128_u64[0];
      v26 = a4[1].n128_u32[0];
      *a3 = *a4;
      a3[1].n128_u32[0] = v26;
      a4[1].n128_u32[0] = v25;
      *a4 = result;
      if (a3->n128_u64[1] < a2->n128_u64[1])
      {
        result = *a2;
        v27 = a2[1].n128_u64[0];
        v28 = a3[1].n128_u32[0];
        *a2 = *a3;
        a2[1].n128_u32[0] = v28;
        a3[1].n128_u32[0] = v27;
        *a3 = result;
        if (a2->n128_u64[1] < a1->n128_u64[1])
        {
          result = *a1;
          v29 = a1[1].n128_u64[0];
          v30 = a2[1].n128_u32[0];
          *a1 = *a2;
          a1[1].n128_u32[0] = v30;
          a2[1].n128_u32[0] = v29;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_FD9300(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = (a2 - 3);
      v9 = *(a1 + 32);
      v10 = *(a2 - 2);
      if (v9 < *(a1 + 8))
      {
        if (v10 >= v9)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (*(a2 - 2) >= *(a1 + 32))
          {
            return 1;
          }

          v11 = *(a1 + 24);
          v12 = *(a1 + 40);
          v40 = *(a2 - 2);
          *(a1 + 24) = *v8;
          *(a1 + 40) = v40;
        }

        else
        {
          v11 = *a1;
          v12 = *(a1 + 16);
          v13 = *(a2 - 2);
          *a1 = *v8;
          *(a1 + 16) = v13;
        }

        *(a2 - 2) = v12;
        *v8 = v11;
        return 1;
      }

      if (v10 >= v9)
      {
        return 1;
      }

      v25 = *(a1 + 24);
      v26 = *(a1 + 40);
      v27 = *(a2 - 2);
      *(a1 + 24) = *v8;
      *(a1 + 40) = v27;
      *(a2 - 2) = v26;
      *v8 = v25;
      if (*(a1 + 32) >= *(a1 + 8))
      {
        return 1;
      }

LABEL_51:
      v61 = *(a1 + 16);
      v62 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v62;
      *(a1 + 40) = v61;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_FD90B8(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 3), a3);
        return 1;
      }

      goto LABEL_13;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 8);
    v22 = *(a1 + 56);
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v33 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        v35 = *(a1 + 32);
        v34 = *(a1 + 40);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v33;
        *(a1 + 64) = v34;
        if (v35 < v21)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }
    }

    else
    {
      if (v22 < v20)
      {
        v23 = *(a1 + 16);
        v24 = *a1;
        *a1 = *(a1 + 48);
        *(a1 + 16) = *(a1 + 64);
LABEL_47:
        *(a1 + 48) = v24;
        *(a1 + 64) = v23;
        goto LABEL_48;
      }

      v52 = *(a1 + 16);
      v53 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v53;
      *(a1 + 40) = v52;
      if (v22 < *(a1 + 32))
      {
        v23 = *(a1 + 40);
        v24 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        goto LABEL_47;
      }
    }

LABEL_48:
    if (*(a2 - 2) >= *(a1 + 56))
    {
      return 1;
    }

    v54 = a2 - 3;
    v55 = *(a1 + 48);
    v56 = *(a1 + 64);
    v57 = *(a2 - 2);
    *(a1 + 48) = *(a2 - 3);
    *(a1 + 64) = v57;
    *(v54 + 4) = v56;
    *v54 = v55;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v58 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    v60 = *(a1 + 32);
    v59 = *(a1 + 40);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v58;
    *(a1 + 64) = v59;
    if (v60 >= *(a1 + 8))
    {
      return 1;
    }

    goto LABEL_51;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 2) < *(a1 + 8))
    {
      v4 = *a1;
      v5 = *(a1 + 16);
      v6 = *(a2 - 2);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v6;
      *(a2 - 2) = v5;
      *(a2 - 3) = v4;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v14 = (a1 + 48);
  v15 = *(a1 + 32);
  v16 = *(a1 + 8);
  v17 = *(a1 + 56);
  if (v15 >= v16)
  {
    if (v17 < v15)
    {
      v28 = *(a1 + 24);
      *(a1 + 24) = *v14;
      v30 = *(a1 + 32);
      v29 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 64);
      *v14 = v28;
      *(a1 + 64) = v29;
      if (v30 < v16)
      {
        v31 = *(a1 + 16);
        v32 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
      }
    }
  }

  else
  {
    if (v17 >= v15)
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (v17 >= *(a1 + 32))
      {
        goto LABEL_34;
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

LABEL_34:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = v43[1];
    if (v46 < v14[1])
    {
      break;
    }

LABEL_43:
    v14 = v43;
    v44 += 24;
    v43 += 3;
    if (v43 == a2)
    {
      return 1;
    }
  }

  v47 = *v43;
  v48 = *(v43 + 4);
  v49 = v44;
  do
  {
    v50 = a1 + v49;
    *(v50 + 72) = *(a1 + v49 + 48);
    *(v50 + 88) = *(a1 + v49 + 64);
    if (v49 == -48)
    {
      *a1 = v47;
      *(a1 + 8) = v46;
      *(a1 + 16) = v48;
      if (++v45 != 8)
      {
        goto LABEL_43;
      }

      return v43 + 3 == a2;
    }

    v49 -= 24;
  }

  while (v46 < *(v50 + 32));
  v51 = a1 + v49;
  *(v51 + 72) = v47;
  *(v51 + 80) = v46;
  *(v51 + 88) = v48;
  if (++v45 != 8)
  {
    goto LABEL_43;
  }

  return v43 + 3 == a2;
}

__int128 *sub_FD97C0(char *a1, char *a2, __int128 *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 >= 25 && v3 >= 0x30)
  {
    v50 = (v4 - 2) >> 1;
    v51 = v50;
    do
    {
      if (v50 >= v51)
      {
        v52 = (2 * (v51 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v53 = &a1[24 * v52];
        if (2 * v51 + 2 < v4)
        {
          v54 = v53[1];
          v55 = v53[4];
          v56 = v54 < v55;
          v57 = v54 >= v55 ? 0 : 24;
          v53 = (v53 + v57);
          if (v56)
          {
            v52 = 2 * v51 + 2;
          }
        }

        v58 = &a1[24 * v51];
        v59 = v58[1];
        if (v53[1] >= v59)
        {
          v60 = *v58;
          v61 = *(v58 + 4);
          do
          {
            v62 = v58;
            v58 = v53;
            v63 = *v53;
            *(v62 + 4) = *(v53 + 4);
            *v62 = v63;
            if (v50 < v52)
            {
              break;
            }

            v64 = (2 * v52) | 1;
            v53 = &a1[24 * v64];
            v65 = 2 * v52 + 2;
            if (v65 < v4)
            {
              v66 = v53[1];
              v67 = v53[4];
              v68 = v66 < v67;
              v69 = v66 >= v67 ? 0 : 24;
              v53 = (v53 + v69);
              if (v68)
              {
                v64 = v65;
              }
            }

            v52 = v64;
          }

          while (v53[1] >= v59);
          *v58 = v60;
          v58[1] = v59;
          *(v58 + 4) = v61;
        }
      }

      v14 = v51-- <= 0;
    }

    while (!v14);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 48)
    {
      i = a2;
      do
      {
        if (*(i + 1) < *(a1 + 1))
        {
          v6 = *i;
          v7 = *(i + 2);
          v8 = *(a1 + 4);
          *i = *a1;
          *(i + 4) = v8;
          *(a1 + 4) = v7;
          *a1 = v6;
        }

        i = (i + 24);
      }

      while (i != a3);
      goto LABEL_34;
    }

    for (i = a2; i != a3; i = (i + 24))
    {
      if (*(i + 1) < *(a1 + 1))
      {
        v9 = *i;
        v10 = *(i + 2);
        v11 = *(a1 + 4);
        *i = *a1;
        *(i + 4) = v11;
        *(a1 + 4) = v10;
        *a1 = v9;
        if (v4 < 3)
        {
          v16 = (a1 + 24);
          v17 = 1;
          v18 = *(a1 + 1);
          if (*(a1 + 4) >= v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v12 = *(a1 + 4);
          v13 = *(a1 + 7);
          v14 = v12 < v13;
          if (v12 >= v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = 24;
          }

          v16 = &a1[v15 + 24];
          if (v14)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          v18 = *(a1 + 1);
          if (*(v16 + 8) >= v18)
          {
LABEL_24:
            v19 = *a1;
            v20 = *(a1 + 4);
            v21 = a1;
            do
            {
              v22 = v21;
              v21 = v16;
              v23 = *v16;
              *(v22 + 16) = *(v16 + 16);
              *v22 = v23;
              if (((v4 - 2) >> 1) < v17)
              {
                break;
              }

              v24 = (2 * v17) | 1;
              v16 = &a1[24 * v24];
              v25 = 2 * v17 + 2;
              if (v25 < v4)
              {
                v26 = *(v16 + 8);
                v27 = *(v16 + 32);
                v28 = v26 < v27;
                v29 = v26 >= v27 ? 0 : 24;
                v16 += v29;
                if (v28)
                {
                  v24 = v25;
                }
              }

              v17 = v24;
            }

            while (*(v16 + 8) >= v18);
            *v21 = v19;
            *(v21 + 8) = v18;
            *(v21 + 16) = v20;
          }
        }
      }
    }
  }

LABEL_34:
  if (v3 >= 25)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v31 = 0;
      v70 = *a1;
      v71 = *(a1 + 2);
      v32 = a1;
      do
      {
        v38 = &v32[24 * v31];
        v36 = (v38 + 24);
        v39 = (2 * v31) | 1;
        v31 = 2 * v31 + 2;
        if (v31 < v30)
        {
          v33 = *(v38 + 4);
          v34 = *(v38 + 7);
          v35 = (v38 + 48);
          if (v33 >= v34)
          {
            v31 = v39;
          }

          else
          {
            v36 = v35;
          }
        }

        else
        {
          v31 = v39;
        }

        v37 = *v36;
        *(v32 + 4) = *(v36 + 4);
        *v32 = v37;
        v32 = v36;
      }

      while (v31 <= ((v30 - 2) >> 1));
      a2 -= 24;
      if (v36 == a2)
      {
        *(v36 + 4) = v71;
        *v36 = v70;
      }

      else
      {
        v40 = *a2;
        *(v36 + 4) = *(a2 + 4);
        *v36 = v40;
        *a2 = v70;
        *(a2 + 4) = v71;
        v41 = v36 - a1 + 24;
        if (v41 >= 25)
        {
          v42 = (-2 - 0x5555555555555555 * (v41 >> 3)) >> 1;
          v43 = &a1[24 * v42];
          v44 = *(v36 + 1);
          if (v43[1] < v44)
          {
            v45 = *v36;
            v46 = *(v36 + 4);
            do
            {
              v47 = v36;
              v36 = v43;
              v48 = *v43;
              *(v47 + 4) = *(v43 + 4);
              *v47 = v48;
              if (!v42)
              {
                break;
              }

              v42 = (v42 - 1) >> 1;
              v43 = &a1[24 * v42];
            }

            while (v43[1] < v44);
            *v36 = v45;
            *(v36 + 1) = v44;
            *(v36 + 4) = v46;
          }
        }
      }

      v14 = v30-- <= 2;
    }

    while (!v14);
  }

  return i;
}

void sub_FD9BE0()
{
  byte_27C044F = 3;
  LODWORD(qword_27C0438) = 5136193;
  byte_27C0467 = 3;
  LODWORD(qword_27C0450) = 5136194;
  byte_27C047F = 3;
  LODWORD(qword_27C0468) = 5136195;
  byte_27C0497 = 15;
  strcpy(&qword_27C0480, "vehicle_mass_kg");
  byte_27C04AF = 21;
  strcpy(&xmmword_27C0498, "vehicle_cargo_mass_kg");
  byte_27C04C7 = 19;
  strcpy(&qword_27C04B0, "vehicle_aux_power_w");
  byte_27C04DF = 15;
  strcpy(&qword_27C04C8, "dcdc_efficiency");
  strcpy(&qword_27C04E0, "drive_train_efficiency");
  HIBYTE(word_27C04F6) = 22;
  operator new();
}

void sub_FD9DBC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C04F6) < 0)
  {
    sub_21E5FC0();
  }

  sub_21E5FCC();
  _Unwind_Resume(a1);
}

void sub_FD9DDC(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v4 = *a3;
  *&v6 = a3[1];
  *(&v6 + 7) = *(a3 + 15);
  v5 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *a1 = a4;
  *(a1 + 23) = *(&v6 + 7);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 31) = v5;
  sub_FDE1AC(a1 + 32);
}

void sub_FD9EE0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 1336);
  if (v4)
  {
    *(v1 + 1344) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 1320) = v5;
    operator delete(v5);
  }

  sub_3BECA4((v1 + 32));
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_FD9F3C(uint64_t a1, void *a2)
{
  HIBYTE(v6[2]) = 13;
  strcpy(v6, "walking_speed");
  v3 = sub_62A70(a2, v6);
  v4 = 4.7;
  if (v3)
  {
    v5 = *(v3 + 12);
    switch(v5)
    {
      case 4:
        *(a1 + 56) = v3[5];
        if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
        {
LABEL_10:
          operator new();
        }

LABEL_9:
        operator delete(v6[0]);
        goto LABEL_10;
      case 3:
        v4 = v3[5];
        break;
      case 2:
        *(a1 + 56) = v3[5];
        if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
    }
  }

  *(a1 + 56) = v4;
  if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_FDD898(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  sub_6BC10((v1 - 192));
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 144);
  if (v4)
  {
    *(v1 - 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_FDDF84()
{
  if (*(v0 - 145) < 0)
  {
    operator delete(*(v0 - 168));
  }

  JUMPOUT(0xFDDF6CLL);
}

void sub_FDDFA4(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *&v46 = a4;
  *(&v46 + 1) = a5;
  v47 = a6;
  v6 = *a1;
  v7 = a1[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v6 != v7)
  {
    v9 = *(v7 - 32);
    if (v9 != -1)
    {
      v11 = a3;
      sub_F9B6DC(a3, (v9 + 1), &v46);
      a5 = *(&v46 + 1);
      a4 = *&v46;
      a6 = v47;
      v6 = *a1;
      v7 = a1[1];
      a3 = v11;
    }

    if (v6 != v7)
    {
      v13 = a3;
      v12 = *a3;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v13[1] - v12) >> 3);
      if (a2)
      {
        v15 = 0;
        do
        {
          v17 = a4;
          v18 = a5;
          v19 = a6;
          if (v15)
          {
            v20 = v15 - 1;
          }

          else
          {
            v20 = 0;
          }

          v21 = *v6;
          a4 = *(v6 + 8);
          a5 = *(v6 + 16);
          a6 = *(v6 + 24);
          v16 = v15;
          if (v14 <= v15 || v15 > v21)
          {
            v16 = v15;
          }

          else
          {
            v23 = a4 - v17;
            v24 = a5 - v18;
            v25 = a6 - v19;
            v26 = v21 >= v20;
            v27 = v21 - v20;
            if (v27 != 0 && v26)
            {
              v28 = v27;
              v29 = v15 != 0;
              do
              {
                v30 = v29 / v28;
                v31 = (v12 + 24 * v16);
                v16 = (v15 + 1);
                *v31 = v17 + v23 * v30;
                v31[1] = v18 + v24 * v30;
                v31[2] = v19 + v25 * v30;
                if (v14 <= v16)
                {
                  break;
                }

                ++v29;
                LODWORD(v15) = v15 + 1;
              }

              while (v16 <= v21);
            }

            else
            {
              v32 = v17 + v23;
              v33 = v18 + v24;
              v34 = v19 + v25;
              v35 = v15;
              do
              {
                v15 = (v15 + 1);
                v36 = (v12 + 24 * v35);
                *v36 = v32;
                v36[1] = v33;
                v36[2] = v34;
                v37 = v14 <= v15 || v15 > v21;
                v16 = v15;
                v35 = v15;
              }

              while (!v37);
            }
          }

          v6 += 32;
          v15 = v16;
        }

        while (v6 != v7);
      }

      else
      {
        LODWORD(v38) = 0;
        do
        {
          v39 = *v6;
          v40 = v38;
          if (v14 > v38 && v38 <= v39)
          {
            v42 = *(v6 + 8);
            v43 = *(v6 + 24);
            do
            {
              v38 = (v38 + 1);
              v44 = v12 + 24 * v40;
              *v44 = v42;
              *(v44 + 16) = v43;
              v45 = v14 <= v38 || v38 > v39;
              v40 = v38;
            }

            while (!v45);
          }

          v6 += 32;
        }

        while (v6 != v7);
      }
    }
  }
}

void sub_FDE190(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_FDE1AC(uint64_t a1)
{
  *(a1 + 8) = xmmword_22AEA50;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 56) = unk_22AEB60;
  *(a1 + 72) = xmmword_22AEB70;
  *(a1 + 88) = unk_22AEB80;
  *(a1 + 104) = xmmword_22AEB90;
  *a1 = 1;
  *(a1 + 2) = 0;
  *(a1 + 40) = xmmword_22AEB50;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x4034000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 184) = 0;
  *(a1 + 152) = 0x3FF0000000000000;
  *(a1 + 160) = 0x700000002;
  *(a1 + 168) = 7;
  *(a1 + 172) = 0;
  *(a1 + 174) = 1;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  operator new();
}

void sub_FDE61C(_Unwind_Exception *exception_object)
{
  v9 = v2;
  v11 = *v9;
  if (*v9)
  {
    v1[89] = v11;
    operator delete(v11);
    v12 = *v8;
    if (!*v8)
    {
LABEL_3:
      v13 = v1[82];
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v12 = *v8;
    if (!*v8)
    {
      goto LABEL_3;
    }
  }

  v1[86] = v12;
  operator delete(v12);
  v13 = v1[82];
  if (!v13)
  {
LABEL_4:
    v14 = *v7;
    if (!*v7)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v1[83] = v13;
  operator delete(v13);
  v14 = *v7;
  if (!*v7)
  {
LABEL_5:
    v15 = v1[70];
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v1[78] = v14;
  operator delete(v14);
  v15 = v1[70];
  if (!v15)
  {
LABEL_6:
    v16 = *v6;
    if (!*v6)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v1[71] = v15;
  operator delete(v15);
  v16 = *v6;
  if (!*v6)
  {
LABEL_7:
    v17 = v1[62];
    if (!v17)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v1[66] = v16;
  operator delete(v16);
  v17 = v1[62];
  if (!v17)
  {
LABEL_8:
    v18 = v1[59];
    if (!v18)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v1[63] = v17;
  operator delete(v17);
  v18 = v1[59];
  if (!v18)
  {
LABEL_9:
    v19 = v1[56];
    if (!v19)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v1[60] = v18;
  operator delete(v18);
  v19 = v1[56];
  if (!v19)
  {
LABEL_10:
    v20 = *v5;
    if (!*v5)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v1[57] = v19;
  operator delete(v19);
  v20 = *v5;
  if (!*v5)
  {
LABEL_11:
    v21 = *v4;
    if (!*v4)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v1[30] = v20;
  operator delete(v20);
  v21 = *v4;
  if (!*v4)
  {
LABEL_12:
    v22 = *v3;
    if (!*v3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  v1[27] = v21;
  operator delete(v21);
  v22 = *v3;
  if (!*v3)
  {
LABEL_14:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  v1[24] = v22;
  operator delete(v22);
  goto LABEL_14;
}

void sub_FDE7C8()
{
  if (*v0)
  {
    JUMPOUT(0xFDE7B4);
  }

  JUMPOUT(0xFDE67CLL);
}

void sub_FDE7D8()
{
  if (!*v0)
  {
    JUMPOUT(0xFDE68CLL);
  }

  JUMPOUT(0xFDE684);
}

uint64_t sub_FDE7E8(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  v9 = a2[8];
  v10 = a2[9];
  v11 = a2[10];
  *(a1 + 176) = *(a2 + 44);
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  *(a1 + 184) = 0;
  *(a1 + 128) = v9;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v13 = *(a2 + 23);
  v12 = *(a2 + 24);
  if (v12 != v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v15 = *(a2 + 26);
  v14 = *(a2 + 27);
  if (v14 != v15)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v17 = *(a2 + 29);
  v16 = *(a2 + 30);
  if (v16 != v17)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v18 = a2[16];
  v19 = a2[17];
  v20 = a2[19];
  *(a1 + 288) = a2[18];
  *(a1 + 304) = v20;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  v21 = a2[20];
  v22 = a2[21];
  v23 = a2[23];
  *(a1 + 352) = a2[22];
  *(a1 + 368) = v23;
  *(a1 + 320) = v21;
  *(a1 + 336) = v22;
  v24 = a2[24];
  v25 = a2[25];
  v26 = a2[27];
  *(a1 + 416) = a2[26];
  *(a1 + 432) = v26;
  *(a1 + 384) = v24;
  *(a1 + 400) = v25;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0;
  v28 = *(a2 + 56);
  v27 = *(a2 + 57);
  if (v27 != v28)
  {
    if (((v27 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v30 = *(a2 + 59);
  v29 = *(a2 + 60);
  if (v29 != v30)
  {
    if (((v29 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  v32 = *(a2 + 62);
  v31 = *(a2 + 63);
  if (v31 != v32)
  {
    if (((v31 - v32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  v33 = *(a2 + 65);
  v34 = *(a2 + 66);
  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 544) = a2[34];
  *(a1 + 560) = 0;
  *(a1 + 576) = 0;
  *(a1 + 568) = 0;
  v35 = *(a2 + 70);
  v36 = *(a2 + 71);
  if (v36 != v35)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v37 = *(a2 + 600);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = v37;
  *(a1 + 616) = 0;
  *(a1 + 632) = 0;
  *(a1 + 624) = 0;
  v38 = *(a2 + 77);
  v39 = *(a2 + 78);
  if (v39 != v38)
  {
    if (((v39 - v38) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 640) = a2[40];
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  v40 = *(a2 + 82);
  v41 = *(a2 + 83);
  if (v41 != v40)
  {
    if (((v41 - v40) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  v42 = *(a2 + 85);
  v43 = *(a2 + 86);
  if (v43 != v42)
  {
    if (((v43 - v42) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  v44 = *(a2 + 88);
  v45 = *(a2 + 89);
  if (v45 != v44)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  memcpy((a1 + 728), a2 + 728, 0x228uLL);
  return a1;
}

void sub_FDEDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  v20 = *v17;
  if (*v17)
  {
    v12[89] = v20;
    operator delete(v20);
    v21 = *v13;
    if (!*v13)
    {
LABEL_3:
      v22 = *v14;
      if (!*v14)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_3;
    }
  }

  v12[86] = v21;
  operator delete(v21);
  v22 = *v14;
  if (!*v14)
  {
LABEL_4:
    v23 = *a10;
    if (!*a10)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12[83] = v22;
  operator delete(v22);
  v23 = *a10;
  if (!*a10)
  {
LABEL_5:
    v24 = *a11;
    if (!*a11)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12[78] = v23;
  operator delete(v23);
  v24 = *a11;
  if (!*a11)
  {
LABEL_6:
    v25 = *v18;
    if (!*v18)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12[71] = v24;
  operator delete(v24);
  v25 = *v18;
  if (!*v18)
  {
LABEL_7:
    v26 = v12[62];
    if (!v26)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12[66] = v25;
  operator delete(v25);
  v26 = v12[62];
  if (!v26)
  {
LABEL_8:
    v27 = v12[59];
    if (!v27)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12[63] = v26;
  operator delete(v26);
  v27 = v12[59];
  if (!v27)
  {
LABEL_9:
    v28 = v12[56];
    if (!v28)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12[60] = v27;
  operator delete(v27);
  v28 = v12[56];
  if (!v28)
  {
LABEL_10:
    v29 = *v16;
    if (!*v16)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12[57] = v28;
  operator delete(v28);
  v29 = *v16;
  if (!*v16)
  {
LABEL_11:
    v30 = *v15;
    if (!*v15)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12[30] = v29;
  operator delete(v29);
  v30 = *v15;
  if (!*v15)
  {
LABEL_12:
    v31 = *a12;
    if (!*a12)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  v12[27] = v30;
  operator delete(v30);
  v31 = *a12;
  if (!*a12)
  {
LABEL_14:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  v12[24] = v31;
  operator delete(v31);
  goto LABEL_14;
}

void sub_FDEF9C()
{
  if (*v0)
  {
    JUMPOUT(0xFDEF74);
  }

  JUMPOUT(0xFDEE30);
}

void sub_FDEFAC()
{
  if (*v0)
  {
    JUMPOUT(0xFDEF84);
  }

  JUMPOUT(0xFDEE38);
}

void sub_FDEFBC()
{
  if (!*v0)
  {
    JUMPOUT(0xFDEE4CLL);
  }

  JUMPOUT(0xFDEE44);
}

void sub_FDF034(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a2;
  v4[23] = 18;
  strcpy(v4, "DrivingPathFinding");
  memset(v3, 0, sizeof(v3));
  sub_3AEC94(a3, v4, v3);
  operator new();
}

void sub_FDF370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a17);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_1324F78(v25 + v29);
  sub_CF3C94(v25 + v28);
  sub_6BB60(v25 + v27);
  sub_616CD4(v26);
  sub_CEC00C(v25 + 24);
  _Unwind_Resume(a1);
}

void sub_FDF3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a17);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_FDF430()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  *(v0 + 61512) = -1;
  *(v0 + 61520) = -1;
  *(v0 + 61064) = 0u;
  *(v0 + 61080) = 0u;
  *(v0 + 61096) = 0u;
  *(v0 + 61112) = 0u;
  v3 = v0 + 61440;
  *(v0 + 61128) = 0u;
  *(v0 + 61144) = 0u;
  *(v0 + 61160) = 0u;
  *(v0 + 61176) = 0u;
  *(v0 + 61192) = 0u;
  *(v0 + 61208) = 0u;
  *(v0 + 61224) = 0u;
  *(v0 + 61240) = 0u;
  *(v0 + 61256) = 0u;
  *(v0 + 61272) = 0u;
  *(v0 + 61288) = 0u;
  *(v0 + 61304) = 0u;
  *(v0 + 61320) = 0u;
  *(v0 + 61336) = 0u;
  *(v0 + 61352) = 0u;
  *(v0 + 61368) = 0u;
  *(v0 + 61384) = 0u;
  *(v0 + 61400) = 0u;
  *(v0 + 61416) = 0u;
  v5 = *(v0 + 61544);
  for (i = *(v0 + 61552); i != v5; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  *(v3 + 112) = v5;
  sub_44F320(v2);
  sub_FE54DC();
}

void sub_FDF798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_FE90B8(va);
  sub_FDF810((v5 - 152));
  sub_FE0750((v5 - 128));
  _Unwind_Resume(a1);
}

void **sub_FDF810(void **a1)
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
        v3 = sub_4547F0(v3 - 560);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

BOOL sub_FDF86C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = *v6;
  result = sub_10E304C(*v6);
  if (!result)
  {
    v9 = sub_3B1D8C(*v3);
    v33[0].n128_u64[0] = sub_445A60(v2 + 160);
    v33[0].n128_u64[1] = v10;
    v11 = sub_45AC50(v33);
    sub_2AB9C8(v9, *v11, 2, &v35);
    sub_E6F038(v2, v33);
    v12 = sub_99078(v33);
    v13 = 0;
    if (v39 && v40 != -1)
    {
      v14 = v37;
      if (v37 == v38)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v15 = *(v14 + 4);
        v16.i64[0] = v15;
        v16.i64[1] = HIDWORD(v15);
        v17 = v16;
        v17.i32[3] = *(v14 + 3);
        v17.i32[1] = v16.i32[0];
        if ((vmaxv_u16(vmovn_s32(vceqq_s32(v17, xmmword_2290150))) & 1) == 0 && v14[16] && (!v12 || ((1 << *v14) & v12) != 0))
        {
          break;
        }

        v14 += 48;
        if (v14 == v38)
        {
          goto LABEL_20;
        }
      }

      if (v35 == v36)
      {
LABEL_20:
        v13 = 0;
      }

      else
      {
        v18 = v35 + 48;
        do
        {
          v19 = *(v18 - 31);
          v13 = v19 < 3;
          v20 = v19 < 3 || v18 == v36;
          v18 += 48;
        }

        while (!v20);
      }
    }

    sub_445EF4(v2 + 160);
    if (*(v11 + 8))
    {
      v21 = *(v11 + 12) == -1;
    }

    else
    {
      v21 = 1;
    }

    v22 = !v21;
    v23 = sub_681D7C(v7);
    v24 = *v23;
    v25 = v23[1];
    if (*v23 != v25)
    {
      do
      {
        v26 = nullsub_1(v24);
        v27 = sub_F695B8(*v26);
        v24 += 48;
        v28 = v24 == v25 || v27;
      }

      while (v28 != 1);
    }

    if (v22)
    {
      v29 = 2;
    }

    else
    {
      v29 = 3;
    }

    sub_449C98(v29, v2, v33);
    sub_3F80(v33);
    v30 = nullsub_1(v2);
    v34 = sub_4566AC(v30);
    if (!v13)
    {
      v31 = nullsub_1(v2);
      sub_3F80(v31);
      v32 = nullsub_1(v2);
      sub_456698(v32);
    }

    sub_10BEF0C();
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  return result;
}

void sub_FE0404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void ***a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_49A8F8((v28 - 256));
  sub_CDCD6C(a17);
  sub_FEA1DC(&a28);
  sub_2ADCE0(&STACK[0x1650]);
  _Unwind_Resume(a1);
}

void sub_FE05C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v17 = 15;
  strcpy(&__p, "post_processing");
  v11 = sub_5F680(a5, &__p);
  LOBYTE(v15) = 1;
  sub_10DB748(a1 + 24, v11, a2, a3, 0, 0, *(a1 + 8) + 4, *(*(a1 + 8) + 16), v15, a7[1] - 2464);
  if (v17 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  __p.n128_u64[0] = sub_10DDD78(a1 + 24);
  __p.n128_u64[1] = v12;
  sub_32114((a1 + 61512), &__p);
  v13 = sub_10DE49C(a1 + 24);
  if (a1 + 61432 != v13)
  {
    *(a1 + 61464) = *(v13 + 32);
    sub_D59EF4(a1 + 61432, *(v13 + 16), 0);
  }

  v14 = sub_10DE4A8(a1 + 24);
  memcpy((a1 + 61064), v14, 0x170uLL);
  sub_681D7C(*a7);
  sub_FE4AF4();
}

void sub_FE0734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_FE0750(void **a1)
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
        v3 = sub_FE90B8(v3 - 308);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_FE07AC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  *(v0 + 61512) = -1;
  *(v0 + 61520) = -1;
  v6 = v0 + 61064;
  *(v0 + 61064) = 0u;
  *(v0 + 61080) = 0u;
  *(v0 + 61096) = 0u;
  *(v0 + 61112) = 0u;
  *(v0 + 61128) = 0u;
  *(v0 + 61144) = 0u;
  *(v0 + 61160) = 0u;
  *(v0 + 61176) = 0u;
  *(v0 + 61192) = 0u;
  *(v0 + 61208) = 0u;
  *(v0 + 61224) = 0u;
  *(v0 + 61240) = 0u;
  *(v0 + 61256) = 0u;
  *(v0 + 61272) = 0u;
  *(v0 + 61288) = 0u;
  *(v0 + 61304) = 0u;
  *(v0 + 61320) = 0u;
  *(v0 + 61336) = 0u;
  *(v0 + 61352) = 0u;
  *(v0 + 61368) = 0u;
  *(v0 + 61384) = 0u;
  *(v0 + 61400) = 0u;
  *(v0 + 61416) = 0u;
  v7 = *(v0 + 61544);
  for (i = *(v0 + 61552); i != v7; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  *(v6 + 488) = v7;
  v10 = *v2;
  v9 = v2[1];
  __p[1] = 0;
  __p[0] = 0;
  v17 = 0;
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v11 = v9 - v10;
  if (v11)
  {
    if ((v11 >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = *v3;
  sub_FEEBFC((*(v3 + 8) + 17), __p);
  v13 = sub_3AF2A4(v12, __p);
  if (SHIBYTE(v17) < 0)
  {
    v14 = v13;
    operator delete(__p[0]);
    v13 = v14;
  }

  v15 = *v3;
  sub_1013BE8(v13, *(*(v3 + 8) + 16));
  sub_FEA7D0(__p, v15);
}

void sub_FE10C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  sub_CDE49C(&a36);
  sub_CDC3D4(&a57);
  sub_CDE540(&STACK[0x33F0]);
  sub_CEC20C(&STACK[0x4748]);
  STACK[0x4748] = v57;
  sub_DC1694(&STACK[0x4748]);
  _Unwind_Resume(a1);
}

void sub_FE1268()
{
  v0 = __chkstk_darwin();
  *(v0 + 61512) = -1;
  *(v0 + 61520) = -1;
  *(v0 + 61064) = 0u;
  *(v0 + 61080) = 0u;
  *(v0 + 61096) = 0u;
  *(v0 + 61112) = 0u;
  *(v0 + 61128) = 0u;
  *(v0 + 61144) = 0u;
  *(v0 + 61160) = 0u;
  *(v0 + 61176) = 0u;
  *(v0 + 61192) = 0u;
  *(v0 + 61208) = 0u;
  *(v0 + 61224) = 0u;
  *(v0 + 61240) = 0u;
  *(v0 + 61256) = 0u;
  *(v0 + 61272) = 0u;
  *(v0 + 61288) = 0u;
  *(v0 + 61304) = 0u;
  *(v0 + 61320) = 0u;
  *(v0 + 61336) = 0u;
  *(v0 + 61352) = 0u;
  *(v0 + 61368) = 0u;
  *(v0 + 61384) = 0u;
  *(v0 + 61400) = 0u;
  *(v0 + 61416) = 0u;
  v1 = *(v0 + 61544);
  for (i = *(v0 + 61552); i != v1; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  *(v0 + 61552) = v1;
  memset(&v11[4132], 0, 48);
  v3 = *v0;
  HIBYTE(v11[2]) = 18;
  strcpy(v11, "DrivingPathFinding");
  __p[1] = 0;
  __p[0] = 0;
  v10 = 0;
  v8 = sub_3AEC94(v3, v11, __p);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v11[2]) < 0)
  {
    operator delete(v11[0]);
  }

  HIBYTE(v11[2]) = 21;
  strcpy(v11, "waypoint_path_finding");
  sub_5F5AC(v8, v11);
  if (SHIBYTE(v11[2]) < 0)
  {
    operator delete(v11[0]);
  }

  operator new();
}

void sub_FE32EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void ***a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  sub_CDCD6C(a15);
  sub_FE0750(&a59);
  if (LOBYTE(STACK[0x16B8]) == 1)
  {
    sub_3E3DF0(&a72);
  }

  sub_CDCD6C(&STACK[0x16E8]);
  sub_CDE3CC(&STACK[0x1700]);
  sub_2AE54C(&STACK[0x1770]);
  sub_CDE49C(&STACK[0x1788]);
  sub_CDC3D4(&STACK[0x1830]);
  sub_CDE540(&STACK[0x4A98]);
  sub_CEC20C(&STACK[0x5DF0]);
  sub_FE9C4C(&STACK[0xD9A8]);
  if (SLOBYTE(STACK[0xDF0F]) < 0)
  {
    operator delete(STACK[0xDEF8]);
  }

  sub_CDCD6C(&STACK[0xDF10]);
  sub_487EC4(&STACK[0xDF28]);
  _Unwind_Resume(a1);
}

void sub_FE3724(unsigned __int8 **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 5);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_FEAC38(v2, v3, &v9, v5, 1);
  v6 = sub_FED600(*a1, a1[1]);
  v7 = a1[1];
  if (v6 != v7)
  {
    v8 = v6;
    while (v7 != v8)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
      }

      v7 -= 32;
    }

    a1[1] = v8;
  }
}

void sub_FE3820()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_4D1F6C(v4);
  sub_3B1D8C(*v3);
  sub_10C0678(&v7, *v3);
  v6 = 15;
  strcpy(__p, "post_processing");
  sub_5F680(v2, __p);
  sub_10C06C0();
}

void sub_FE450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_CDE540(va);
  sub_404134(&STACK[0x1410]);
  sub_11BD8(&STACK[0x24F0]);
  sub_CDCD6C(&STACK[0x2518]);
  sub_FEA784(&STACK[0x2530]);
  _Unwind_Resume(a1);
}

void **sub_FE4744(void **result, _BYTE *a2, char a3, char a4, uint64_t a5)
{
  if (a2[12872] == 1)
  {
    v5 = a5;
    v7 = a2;
    v8 = result;
    v9 = sub_45AC50(a5);
    result = sub_588D8(v5);
    if (v9 != result)
    {
      if (a3)
      {
        v10 = v8 + 7679;
        v37 = v7;
        v38 = v5;
        while (1)
        {
          sub_116EED0(v7, v9);
          sub_116DE4C(v7, v9, __p);
          v15 = v40;
          if (!v40)
          {
            goto LABEL_50;
          }

          do
          {
            if (sub_4C2B70((v15 + 4)))
            {
              v16 = sub_4C2BA0(v15 + 4);
            }

            else
            {
              if (!sub_4C2B80((v15 + 4)))
              {
                if (sub_4C2B90((v15 + 4)))
                {
                  v21 = *(sub_4C2C1C((v15 + 4)) + 8);
                }

                else
                {
                  v21 = 0;
                }

                goto LABEL_22;
              }

              v16 = sub_4C2BC4(v15 + 4);
            }

            v18 = 0x9DDFEA08EB382D69 * ((8 * (v16 & 0x1FFFFFFF) + 8) ^ HIDWORD(v16));
            v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v18 >> 47) ^ v18);
            v20 = (0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
            v21 = (v17 + 2654435769 + (v20 << 6) + (v20 >> 2)) ^ v20;
LABEL_22:
            v22 = v10[1];
            if (v22)
            {
              v23 = vcnt_s8(v22);
              v23.i16[0] = vaddlv_u8(v23);
              if (v23.u32[0] >= 2uLL)
              {
                v24 = v21;
                if (v21 >= *&v22)
                {
                  v24 = v21 % *&v22;
                }
              }

              else
              {
                v24 = (*&v22 - 1) & v21;
              }

              v25 = *(*v10 + 8 * v24);
              if (v25)
              {
                v26 = *v25;
                if (*v25)
                {
                  if (v23.u32[0] < 2uLL)
                  {
                    v27 = *&v22 - 1;
                    while (1)
                    {
                      v29 = v26[1];
                      if (v29 == v21)
                      {
                        if (sub_4C2D38((v26 + 2), (v15 + 4)))
                        {
                          goto LABEL_42;
                        }
                      }

                      else if ((v29 & v27) != v24)
                      {
                        goto LABEL_43;
                      }

                      v26 = *v26;
                      if (!v26)
                      {
                        goto LABEL_43;
                      }
                    }
                  }

                  do
                  {
                    v28 = v26[1];
                    if (v28 == v21)
                    {
                      if (sub_4C2D38((v26 + 2), (v15 + 4)))
                      {
LABEL_42:
                        sub_4C2D98(v26 + 2, (v15 + 4));
                        goto LABEL_44;
                      }
                    }

                    else
                    {
                      if (v28 >= *&v22)
                      {
                        v28 %= *&v22;
                      }

                      if (v28 != v24)
                      {
                        break;
                      }
                    }

                    v26 = *v26;
                  }

                  while (v26);
                }
              }
            }

LABEL_43:
            sub_D3B9CC(v10, v15 + 4);
LABEL_44:
            v15 = *v15;
          }

          while (v15);
          v30 = v40;
          if (v40)
          {
            do
            {
              v32 = *v30;
              v33 = v30[8];
              if (v33)
              {
                do
                {
                  v34 = *v33;
                  operator delete(v33);
                  v33 = v34;
                }

                while (v34);
              }

              v35 = v30[6];
              v30[6] = 0;
              if (v35)
              {
                operator delete(v35);
              }

              operator delete(v30);
              v30 = v32;
            }

            while (v32);
          }

LABEL_50:
          v31 = __p[0];
          __p[0] = 0;
          if (v31)
          {
            operator delete(v31);
          }

          v9 += 6;
          v5 = v38;
          result = sub_588D8(v38);
          v7 = v37;
          if (v9 == result)
          {
            goto LABEL_6;
          }
        }
      }

      do
      {
        sub_116EED0(v7, v9);
        v9 += 6;
        result = sub_588D8(v5);
      }

      while (v9 != result);
    }

LABEL_6:
    if (a4)
    {
      v11 = nullsub_1(v5);
      v12 = *v11;
      v13 = *(v11 + 8);
      if (*v11 != v13)
      {
        v14 = v11;
        while (!sub_F63D58(v12))
        {
          v12 += 6;
          if (v12 == v13)
          {
            v12 = v13;
            goto LABEL_12;
          }
        }

        sub_21E609C(v12, v13, __p);
        v12 = __p[0];
LABEL_12:
        v11 = v14;
      }

      return sub_F73E94(v11, v12, *(v11 + 8));
    }
  }

  return result;
}

void sub_FE4AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_616CD4(va);
  _Unwind_Resume(a1);
}

void sub_FE4ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_616CD4(va);
  _Unwind_Resume(a1);
}

void sub_FE4AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_616CD4(va);
  _Unwind_Resume(a1);
}

void sub_FE5210(_Unwind_Exception *a1)
{
  sub_FEA108(&STACK[0x2F88]);
  sub_CDCD6C(v1);
  sub_FE565C(&STACK[0x2FA0]);
  sub_FE9D94(&STACK[0x3070]);
  sub_FEA164(&STACK[0x5EF8]);
  _Unwind_Resume(a1);
}

void sub_FE5330(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 61440;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = *(a1 + 61464);
  prime = *(a1 + 61440);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a2, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a1 + 61440));
    v5 = *(a2 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(v3 + 8); i; i = *i)
  {
    sub_D3B9CC(a2, i + 4);
  }
}