void sub_3CBCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 81) < 0)
  {
    operator delete(*(v9 - 104));
  }

  sub_1959728(&a9);
  sub_25F00((v9 - 128));
  _Unwind_Resume(a1);
}

void sub_3CBD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_25F00((v14 - 128));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x3CBDECLL);
}

void sub_3CBDD4(_Unwind_Exception *a1)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  sub_25F00(v1 - 128);
  _Unwind_Resume(a1);
}

void sub_3CBDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1A104((v14 - 104));
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void **sub_3CBE90(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_303C44(a1, (v2 + 2));
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

uint64_t **sub_3CBEF8(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_3D21DC(v2);
    operator delete();
  }

  return a1;
}

void *sub_3CBF4C(void *a1)
{
  *a1 = off_2669A20;
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  while (v3)
  {
    v4 = v3;
    v3 = *v3;
    v5 = v4[4];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = v4;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = v6;
    }

    operator delete(v4);
  }

  v7 = a1[2];
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[1];
  a1[1] = 0;
  if (v8)
  {
    std::mutex::~mutex(v8);
    operator delete();
  }

  return a1;
}

uint64_t sub_3CC088(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = *(a1 + 24); i != v3; sub_3D2AF8(v2, i))
    {
      i -= 272;
    }

    *(a1 + 24) = v3;
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_3CC0F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 272;
        if (*(v3 - 72))
        {
          sub_3D3388(v3 - 272);
          v6 = sub_2CD8C();
          sub_2CF24(v6, *(v3 - 72));
        }

        std::mutex::~mutex((v3 - 64));
        sub_3BDA1C((v3 - 272));
        v3 -= 272;
      }

      while (v5 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_3CC188(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 272;
        if (*(v3 - 72))
        {
          sub_3BD8DC(v3 - 272);
          v6 = sub_2CD8C();
          sub_2CF24(v6, *(v3 - 72));
        }

        std::mutex::~mutex((v3 - 64));
        sub_3BDA1C((v3 - 272));
        v3 -= 272;
      }

      while (v5 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_3CC220(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = *(a1 + 24); i != v3; sub_3D39BC(v2, i))
    {
      i -= 272;
    }

    *(a1 + 24) = v3;
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_3CC288(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = *(a1 + 24); i != v3; sub_3BC338(v2, i))
    {
      i -= 272;
    }

    *(a1 + 24) = v3;
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_3CC2F0(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = *(a1 + 24); i != v3; sub_3D415C(v2, i))
    {
      i -= 272;
    }

    *(a1 + 24) = v3;
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t *sub_3CC358(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_3BEE08(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_3CC3AC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_3BEB78(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_3CC400(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_3BE838(v2);
    operator delete();
  }

  return a1;
}

void sub_3CC458(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_5F328(a1 + 16);
  sub_5F328(a1 + 56);
  sub_5F328(a1 + 96);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 850045863;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 850045863;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 850045863;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 850045863;
  *(a1 + 464) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = 850045863;
  *(a1 + 544) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 560) = 2048;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0;
  sub_3CFBE0((a1 + 552), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 592) = xmmword_22918E0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  *(a1 + 616) = 0;
  sub_3BBD10((a1 + 592), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 632) = 0;
  *(a1 + 640) = 2048;
  *(a1 + 648) = 0;
  *(a1 + 664) = 0;
  *(a1 + 656) = 0;
  sub_3D0118((a1 + 632), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 672) = xmmword_22918E0;
  *(a1 + 688) = 0;
  *(a1 + 704) = 0;
  *(a1 + 696) = 0;
  sub_3BD19C((a1 + 672), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 712) = 0;
  *(a1 + 720) = 2048;
  *(a1 + 728) = 0;
  *(a1 + 744) = 0;
  *(a1 + 736) = 0;
  sub_3BD19C((a1 + 712), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 752) = xmmword_22918E0;
  *(a1 + 768) = 0;
  *(a1 + 784) = 0;
  *(a1 + 776) = 0;
  sub_3D0650((a1 + 752), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 792) = 0;
  *(a1 + 800) = 2048;
  *(a1 + 808) = 0;
  *(a1 + 824) = 0;
  *(a1 + 816) = 0;
  sub_3D0BC8((a1 + 792), 0x800uLL, 0, 0x800uLL, 0);
  sub_3D5924(a1 + 832);
  *(a1 + 992) = off_2669A20;
  operator new();
}

void sub_3CC9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, std::mutex *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  sub_1F1A8(v25);
  sub_3CBE90((v19 + 1376));
  sub_3D21DC(v22);
  std::mutex::~mutex((v19 + 1304));
  sub_3CBEF8((v19 + 1296));
  sub_34BE0((v19 + 1272));
  sub_34BE0((v19 + 1248));
  sub_1F1A8(v19 + 1232);
  std::mutex::~mutex((v19 + 1168));
  sub_3B889C((v19 + 1088));
  sub_1F1A8(v19 + 1072);
  sub_3CBF4C(v24);
  sub_3D251C(v19 + 832);
  sub_3CC088(v19 + 792);
  sub_3CC0F0(v19 + 752);
  sub_3CC188(v19 + 712);
  sub_3CC188(v19 + 672);
  sub_3CC220(v19 + 632);
  sub_3CC288(v19 + 592);
  sub_3CC2F0(v21 + 416);
  std::mutex::~mutex((v21 + 352));
  std::mutex::~mutex((v21 + 288));
  sub_3D20F4((v19 + 400));
  std::mutex::~mutex(v23);
  sub_3D20F4((v19 + 312));
  std::mutex::~mutex(a9);
  sub_3D20F4((v19 + 224));
  std::mutex::~mutex(a10);
  sub_3CC358(a11);
  sub_3CC3AC((v21 + 8));
  sub_3CC400(v21);
  sub_5C010(v19 + 96);
  sub_5C010(v19 + 56);
  sub_5C010(v20);
  sub_1F1A8(v19);
  _Unwind_Resume(a1);
}

void sub_3CCBA4(_Unwind_Exception *a1)
{
  sub_5C010(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3CCBD8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 1424);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(v1 + 1392);
  if (v3)
  {
    v79 = v1;
    do
    {
      v5 = *v3;
      v6 = v3[9];
      if (v6)
      {
        v3[10] = v6;
        operator delete(v6);
      }

      v7 = v3[6];
      if (v7)
      {
        v3[7] = v7;
        operator delete(v7);
      }

      v8 = v3[3];
      if (v8)
      {
        v9 = v3[4];
        v4 = v3[3];
        if (v9 != v8)
        {
          do
          {
            v11 = *(v9 - 3);
            if (v11)
            {
              *(v9 - 2) = v11;
              operator delete(v11);
            }

            v12 = v9 - 8;
            v13 = *(v9 - 8);
            if (v13)
            {
              v14 = *(v9 - 7);
              v10 = *(v9 - 8);
              if (v14 != v13)
              {
                v15 = *(v9 - 7);
                do
                {
                  v18 = *(v15 - 3);
                  v15 -= 3;
                  v17 = v18;
                  if (v18)
                  {
                    v19 = *(v14 - 2);
                    v16 = v17;
                    if (v19 != v17)
                    {
                      v20 = *(v14 - 2);
                      do
                      {
                        v22 = *(v20 - 3);
                        v20 -= 24;
                        v21 = v22;
                        if (v22)
                        {
                          *(v19 - 2) = v21;
                          operator delete(v21);
                        }

                        v19 = v20;
                      }

                      while (v20 != v17);
                      v16 = *v15;
                    }

                    *(v14 - 2) = v17;
                    operator delete(v16);
                  }

                  v14 = v15;
                }

                while (v15 != v13);
                v10 = *v12;
              }

              *(v9 - 7) = v13;
              operator delete(v10);
            }

            v9 -= 8;
          }

          while (v12 != v8);
          v4 = v3[3];
          v1 = v79;
        }

        v3[4] = v8;
        operator delete(v4);
      }

      operator delete(v3);
      v3 = v5;
    }

    while (v5);
  }

  v23 = *(v1 + 1376);
  *(v1 + 1376) = 0;
  if (v23)
  {
    operator delete(v23);
  }

  sub_3D21DC((v1 + 1368));
  std::mutex::~mutex((v1 + 1304));
  v24 = *(v1 + 1296);
  *(v1 + 1296) = 0;
  if (v24)
  {
    sub_3D21DC(v24);
    operator delete();
  }

  v25 = *(v1 + 1272);
  if (v25)
  {
    v26 = *(v1 + 1280);
    v27 = *(v1 + 1272);
    if (v26 != v25)
    {
      v28 = *(v1 + 1280);
      do
      {
        v30 = *(v28 - 24);
        v28 -= 24;
        v29 = v30;
        if (v30)
        {
          *(v26 - 16) = v29;
          operator delete(v29);
        }

        v26 = v28;
      }

      while (v28 != v25);
      v27 = *(v1 + 1272);
    }

    *(v1 + 1280) = v25;
    operator delete(v27);
  }

  v31 = *(v1 + 1248);
  if (v31)
  {
    v32 = *(v1 + 1256);
    v33 = *(v1 + 1248);
    if (v32 != v31)
    {
      v34 = *(v1 + 1256);
      do
      {
        v36 = *(v34 - 24);
        v34 -= 24;
        v35 = v36;
        if (v36)
        {
          *(v32 - 16) = v35;
          operator delete(v35);
        }

        v32 = v34;
      }

      while (v34 != v31);
      v33 = *(v1 + 1248);
    }

    *(v1 + 1256) = v31;
    operator delete(v33);
  }

  v37 = *(v1 + 1240);
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  std::mutex::~mutex((v1 + 1168));
  sub_3B889C((v1 + 1088));
  v38 = *(v1 + 1080);
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
    sub_3CBF4C((v1 + 992));
    sub_3D251C(v1 + 832);
    v39 = *(v1 + 808);
    if (!v39)
    {
      goto LABEL_63;
    }
  }

  else
  {
    sub_3CBF4C((v1 + 992));
    sub_3D251C(v1 + 832);
    v39 = *(v1 + 808);
    if (!v39)
    {
      goto LABEL_63;
    }
  }

  for (i = *(v1 + 816); i != v39; sub_3D2AF8(v1 + 808, i))
  {
    i -= 272;
  }

  *(v1 + 816) = v39;
  operator delete(*(v1 + 808));
LABEL_63:
  v41 = *(v1 + 768);
  if (v41)
  {
    v42 = *(v1 + 776);
    v43 = *(v1 + 768);
    if (v42 != v41)
    {
      do
      {
        v44 = v42 - 272;
        if (*(v42 - 72))
        {
          sub_3D3388(v42 - 272);
          v45 = sub_2CD8C();
          sub_2CF24(v45, *(v42 - 72));
        }

        std::mutex::~mutex((v42 - 64));
        sub_3BDA1C((v42 - 272));
        v42 -= 272;
      }

      while (v44 != v41);
      v43 = *(v1 + 768);
    }

    *(v1 + 776) = v41;
    operator delete(v43);
  }

  v46 = *(v1 + 728);
  if (v46)
  {
    v47 = *(v1 + 736);
    v48 = *(v1 + 728);
    if (v47 != v46)
    {
      do
      {
        v49 = v47 - 272;
        if (*(v47 - 72))
        {
          sub_3BD8DC(v47 - 272);
          v50 = sub_2CD8C();
          sub_2CF24(v50, *(v47 - 72));
        }

        std::mutex::~mutex((v47 - 64));
        sub_3BDA1C((v47 - 272));
        v47 -= 272;
      }

      while (v49 != v46);
      v48 = *(v1 + 728);
    }

    *(v1 + 736) = v46;
    operator delete(v48);
  }

  v51 = *(v1 + 688);
  if (v51)
  {
    v52 = *(v1 + 696);
    v53 = *(v1 + 688);
    if (v52 != v51)
    {
      do
      {
        v54 = v52 - 272;
        if (*(v52 - 72))
        {
          sub_3BD8DC(v52 - 272);
          v55 = sub_2CD8C();
          sub_2CF24(v55, *(v52 - 72));
        }

        std::mutex::~mutex((v52 - 64));
        sub_3BDA1C((v52 - 272));
        v52 -= 272;
      }

      while (v54 != v51);
      v53 = *(v1 + 688);
    }

    *(v1 + 696) = v51;
    operator delete(v53);
  }

  v56 = *(v1 + 648);
  if (v56)
  {
    for (j = *(v1 + 656); j != v56; sub_3D39BC(v1 + 648, j))
    {
      j -= 272;
    }

    *(v1 + 656) = v56;
    operator delete(*(v1 + 648));
  }

  v58 = *(v1 + 608);
  if (v58)
  {
    for (k = *(v1 + 616); k != v58; sub_3BC338(v1 + 608, k))
    {
      k -= 272;
    }

    *(v1 + 616) = v58;
    operator delete(*(v1 + 608));
  }

  v60 = *(v1 + 568);
  if (v60)
  {
    for (m = *(v1 + 576); m != v60; sub_3D415C(v1 + 568, m))
    {
      m -= 272;
    }

    *(v1 + 576) = v60;
    operator delete(*(v1 + 568));
  }

  std::mutex::~mutex((v1 + 488));
  std::mutex::~mutex((v1 + 424));
  sub_3D20F4((v1 + 400));
  std::mutex::~mutex((v1 + 336));
  sub_3D20F4((v1 + 312));
  std::mutex::~mutex((v1 + 248));
  sub_3D20F4((v1 + 224));
  std::mutex::~mutex((v1 + 160));
  v62 = *(v1 + 152);
  *(v1 + 152) = 0;
  if (v62)
  {
    sub_3BEE08(v62);
    operator delete();
  }

  v63 = *(v1 + 144);
  *(v1 + 144) = 0;
  if (v63)
  {
    sub_3BEB78(v63);
    operator delete();
  }

  v64 = *(v1 + 136);
  *(v1 + 136) = 0;
  if (v64)
  {
    sub_3BE838(v64);
    operator delete();
  }

  v65 = *(v1 + 112);
  if (v65)
  {
    do
    {
      v66 = *v65;
      v67 = *(v65 + 12);
      if (v67 != -1)
      {
        (off_2669A40[v67])(&v80, v65 + 5);
      }

      *(v65 + 12) = -1;
      if (*(v65 + 39) < 0)
      {
        operator delete(v65[2]);
      }

      operator delete(v65);
      v65 = v66;
    }

    while (v66);
  }

  v68 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v68)
  {
    operator delete(v68);
  }

  v69 = *(v1 + 72);
  if (v69)
  {
    do
    {
      v70 = *v69;
      v71 = *(v69 + 12);
      if (v71 != -1)
      {
        (off_2669A40[v71])(&v81, v69 + 5);
      }

      *(v69 + 12) = -1;
      if (*(v69 + 39) < 0)
      {
        operator delete(v69[2]);
      }

      operator delete(v69);
      v69 = v70;
    }

    while (v70);
  }

  v72 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v72)
  {
    operator delete(v72);
  }

  v73 = *(v1 + 32);
  if (v73)
  {
    do
    {
      v74 = *v73;
      v75 = *(v73 + 12);
      if (v75 != -1)
      {
        (off_2669A40[v75])(&v82, v73 + 5);
      }

      *(v73 + 12) = -1;
      if (*(v73 + 39) < 0)
      {
        operator delete(v73[2]);
      }

      operator delete(v73);
      v73 = v74;
    }

    while (v74);
  }

  v76 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v76)
  {
    operator delete(v76);
  }

  v77 = *(v1 + 8);
  if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v77->__on_zero_shared)(v77);
    std::__shared_weak_count::__release_weak(v77);
  }

  return v1;
}

void *sub_3CD37C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result[129])
  {
    v2 = result[132];
    *a2 = result[131];
    a2[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_3CD3AC(uint64_t a1@<X0>, _DWORD **a2@<X8>)
{
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  std::mutex::lock((a1 + 1168));
  sub_3CE904(a2, (a1 + 1088));
  std::mutex::unlock((a1 + 1168));
  if (!*a2)
  {
LABEL_20:
    v13 = a2[4];
    if (!v13)
    {
      goto LABEL_76;
    }

    goto LABEL_21;
  }

  v4 = sub_3994E8(*a2);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&__t);
    sub_4A5C(&__t, "Provided transit incident snapshot with ", 40);
    v5 = std::ostream::operator<<();
    sub_4A5C(v5, " non-blocking and ", 18);
    v6 = std::ostream::operator<<();
    v7 = sub_4A5C(v6, " blocking incidents (blocking version: ", 39);
    std::ostream::operator<<();
    v8 = sub_4A5C(v7, "; snapshot age: ", 16);
    v9 = sub_72140(v8, v4);
    sub_4A5C(v9, " sec)", 5);
    if ((v57 & 0x10) != 0)
    {
      v11 = v56;
      if (v56 < v53)
      {
        v56 = v53;
        v11 = v53;
      }

      v12 = v52;
      v10 = v11 - v52;
      if (v11 - v52 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v57 & 8) == 0)
      {
        v10 = 0;
        v46 = 0;
LABEL_14:
        __p[v10] = 0;
        sub_7E854(__p, 2u);
        if (v46 < 0)
        {
          operator delete(*__p);
        }

        if (v55 < 0)
        {
          operator delete(v54);
        }

        std::locale::~locale(&v49);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_19;
      }

      v12 = v50[0];
      v10 = v51 - v50[0];
      if (v51 - v50[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_55:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v46 = v10;
    if (v10)
    {
      memmove(__p, v12, v10);
    }

    goto LABEL_14;
  }

LABEL_19:
  v46 = 11;
  strcpy(__p, "SnapshotAge");
  sub_2C0888(&__t);
  nullsub_1(14);
  sub_2C1D4C(&__t);
  if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(*__p);
  v13 = a2[4];
  if (!v13)
  {
    goto LABEL_76;
  }

LABEL_21:
  sub_3994E8(v13);
  v14 = sub_39F328(a2[4]);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_41;
  }

  sub_19594F8(&__t);
  sub_4A5C(&__t, "Provided transit realtime snapshot with ", 40);
  v15 = std::ostream::operator<<();
  sub_4A5C(v15, " trip updates (snapshot age: ", 29);
  v16 = std::ostream::operator<<();
  sub_4A5C(v16, " sec; trip updates age: ", 24);
  v17 = std::ostream::operator<<();
  sub_4A5C(v17, " sec)", 5);
  if ((v57 & 0x10) != 0)
  {
    v19 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v19 = v53;
    }

    v20 = v52;
    v18 = v19 - v52;
    if (v19 - v52 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_57:
      sub_3244();
    }

LABEL_31:
    if (v18 >= 0x17)
    {
      operator new();
    }

    v46 = v18;
    if (v18)
    {
      memmove(__p, v20, v18);
    }

    goto LABEL_36;
  }

  if ((v57 & 8) != 0)
  {
    v20 = v50[0];
    v18 = v51 - v50[0];
    if (v51 - v50[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_57;
    }

    goto LABEL_31;
  }

  v18 = 0;
  v46 = 0;
LABEL_36:
  __p[v18] = 0;
  sub_7E854(__p, 2u);
  if (v46 < 0)
  {
    operator delete(*__p);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  std::locale::~locale(&v49);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_41:
  v46 = 11;
  strcpy(__p, "SnapshotAge");
  sub_2C0888(&__t);
  nullsub_1(10);
  sub_2C1D4C(&__t);
  if (v46 < 0)
  {
    operator delete(*__p);
    if (v14 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }
  }

  else if (v14 == 0x7FFFFFFF)
  {
LABEL_46:
    v21 = a2[4];
    if (v21[1] == 0x7FFFFFFF)
    {
      goto LABEL_76;
    }

    goto LABEL_47;
  }

  v46 = 14;
  strcpy(__p, "TripUpdatesAge");
  sub_2C0888(&__t);
  nullsub_1(10);
  sub_2C1D4C(&__t);
  if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(*__p);
  v21 = a2[4];
  if (v21[1] == 0x7FFFFFFF)
  {
    goto LABEL_76;
  }

LABEL_47:
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (v21[1] >= std::chrono::system_clock::to_time_t(&__t))
  {
    goto LABEL_76;
  }

  if (!sub_7E7E4(1u))
  {
    goto LABEL_73;
  }

  sub_19594F8(&__t);
  v22 = sub_4A5C(&__t, "Transit trip updates snapshot has been expired at ", 50);
  v23 = sub_258D4(v22);
  sub_4A5C(v23, " (age: ", 7);
  v24 = std::ostream::operator<<();
  sub_4A5C(v24, " sec); discarding it", 20);
  if ((v57 & 0x10) != 0)
  {
    v26 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v26 = v53;
    }

    v27 = &v52;
    goto LABEL_62;
  }

  if ((v57 & 8) != 0)
  {
    v27 = v50;
    v26 = v51;
LABEL_62:
    v28 = *v27;
    v25 = v26 - *v27;
    if (v25 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v46 = v26 - *v27;
    if (v25)
    {
      memmove(__p, v28, v25);
    }

    goto LABEL_68;
  }

  v25 = 0;
  v46 = 0;
LABEL_68:
  __p[v25] = 0;
  sub_7E854(__p, 1u);
  if (v46 < 0)
  {
    operator delete(*__p);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  std::locale::~locale(&v49);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_73:
  v46 = 18;
  strcpy(__p, "SnapshotStaleError");
  sub_2C0888(&__t);
  nullsub_1(10);
  sub_2C1D4C(&__t);
  if (v46 < 0)
  {
    operator delete(*__p);
  }

  sub_50556C(a2);
LABEL_76:
  v29 = a2[8];
  if (!v29)
  {
    return;
  }

  sub_3994E8(v29);
  v30 = sub_39F328(a2[8]);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&__t);
    sub_4A5C(&__t, "Provided transit vehicle position snapshot with ", 48);
    v31 = std::ostream::operator<<();
    sub_4A5C(v31, " vehicle positions (snapshot age: ", 34);
    v32 = std::ostream::operator<<();
    sub_4A5C(v32, " sec; vehicle posistion age: ", 29);
    v33 = std::ostream::operator<<();
    sub_4A5C(v33, " sec)", 5);
    if ((v57 & 0x10) != 0)
    {
      v35 = v56;
      if (v56 < v53)
      {
        v56 = v53;
        v35 = v53;
      }

      v36 = v52;
      v34 = v35 - v52;
      if (v35 - v52 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_109;
      }
    }

    else
    {
      if ((v57 & 8) == 0)
      {
        v34 = 0;
        v46 = 0;
LABEL_90:
        __p[v34] = 0;
        sub_7E854(__p, 2u);
        if (v46 < 0)
        {
          operator delete(*__p);
        }

        if (v55 < 0)
        {
          operator delete(v54);
        }

        std::locale::~locale(&v49);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_95;
      }

      v36 = v50[0];
      v34 = v51 - v50[0];
      if (v51 - v50[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_109:
        sub_3244();
      }
    }

    if (v34 >= 0x17)
    {
      operator new();
    }

    v46 = v34;
    if (v34)
    {
      memmove(__p, v36, v34);
    }

    goto LABEL_90;
  }

LABEL_95:
  v46 = 11;
  strcpy(__p, "SnapshotAge");
  sub_2C0888(&__t);
  nullsub_1(20);
  sub_2C1D4C(&__t);
  if (v46 < 0)
  {
    operator delete(*__p);
    if (v30 == 0x7FFFFFFF)
    {
      goto LABEL_100;
    }
  }

  else if (v30 == 0x7FFFFFFF)
  {
    goto LABEL_100;
  }

  v46 = 18;
  strcpy(__p, "VehiclePositionAge");
  sub_2C0888(&__t);
  nullsub_1(20);
  sub_2C1D4C(&__t);
  if (v46 < 0)
  {
    operator delete(*__p);
    v37 = a2[8];
    if (v37[1] == 0x7FFFFFFF)
    {
      return;
    }

    goto LABEL_101;
  }

LABEL_100:
  v37 = a2[8];
  if (v37[1] == 0x7FFFFFFF)
  {
    return;
  }

LABEL_101:
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (v37[1] >= std::chrono::system_clock::to_time_t(&__t))
  {
    return;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&__t);
    v38 = sub_4A5C(&__t, "Transit vehicle position snapshot has been expired at ", 54);
    v39 = sub_258D4(v38);
    sub_4A5C(v39, " (age: ", 7);
    v40 = std::ostream::operator<<();
    sub_4A5C(v40, " sec); discarding it", 20);
    if ((v57 & 0x10) != 0)
    {
      v42 = v56;
      if (v56 < v53)
      {
        v56 = v53;
        v42 = v53;
      }

      v43 = &v52;
    }

    else
    {
      if ((v57 & 8) == 0)
      {
        v41 = 0;
        v46 = 0;
LABEL_120:
        __p[v41] = 0;
        sub_7E854(__p, 1u);
        if (v46 < 0)
        {
          operator delete(*__p);
        }

        if (v55 < 0)
        {
          operator delete(v54);
        }

        std::locale::~locale(&v49);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_125;
      }

      v43 = v50;
      v42 = v51;
    }

    v44 = *v43;
    v41 = v42 - *v43;
    if (v41 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v41 >= 0x17)
    {
      operator new();
    }

    v46 = v42 - *v43;
    if (v41)
    {
      memmove(__p, v44, v41);
    }

    goto LABEL_120;
  }

LABEL_125:
  v46 = 18;
  strcpy(__p, "SnapshotStaleError");
  sub_2C0888(&__t);
  nullsub_1(20);
  sub_2C1D4C(&__t);
  if (v46 < 0)
  {
    operator delete(*__p);
  }

  sub_50564C(a2);
}

void sub_3CE690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  sub_3B889C(v16);
  _Unwind_Resume(a1);
}

void *sub_3CE904(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1];
  *a1 = v5;
  a1[1] = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v8 = a2[2];
  v7 = a2[3];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a1[3];
  a1[2] = v8;
  a1[3] = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v11 = a2[4];
  v10 = a2[5];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a1[5];
  a1[4] = v11;
  a1[5] = v10;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v14 = a2[6];
  v13 = a2[7];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a1[7];
  a1[6] = v14;
  a1[7] = v13;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v17 = a2[8];
  v16 = a2[9];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a1[9];
  a1[8] = v17;
  a1[9] = v16;
  if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  return a1;
}

uint64_t sub_3CEB40(uint64_t a1, uint64_t a2)
{
  v3 = sub_3CEB78(a1);

  return sub_FC1AF0(v3, a2);
}

uint64_t sub_3CEB78(uint64_t a1)
{
  std::mutex::lock((a1 + 424));
  v2 = *(a1 + 136);
  if (!v2)
  {
    sub_74700();
    *(sub_74700() + 2) = 0;
    operator new();
  }

  std::mutex::unlock((a1 + 424));
  return v2;
}

uint64_t sub_3CED64(uint64_t a1, uint64_t a2)
{
  v3 = sub_3CED9C(a1);

  return sub_FC5328(v3, a2);
}

uint64_t sub_3CED9C(uint64_t a1)
{
  std::mutex::lock((a1 + 424));
  v2 = *(a1 + 144);
  if (!v2)
  {
    sub_74700();
    *(sub_74700() + 2) = 0;
    operator new();
  }

  std::mutex::unlock((a1 + 424));
  return v2;
}

uint64_t sub_3CEF88(uint64_t a1, uint64_t a2)
{
  v3 = sub_3CEFC0(a1);

  return sub_FC87F0(v3, a2);
}

uint64_t sub_3CEFC0(uint64_t a1)
{
  std::mutex::lock((a1 + 424));
  v2 = *(a1 + 152);
  if (!v2)
  {
    sub_74700();
    *(sub_74700() + 2) = 0;
    operator new();
  }

  std::mutex::unlock((a1 + 424));
  return v2;
}

void sub_3CFA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3CFAC0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 13;
  strcpy(v4, "timezone.IANA");
  memset(&__p, 0, sizeof(__p));
  memset(&v6, 0, sizeof(v6));
  sub_1221794(*a1, v4, &v6, &__p);
  sub_25BE0(a2, &v6);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(v4[0]);
      return;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v5 < 0)
  {
    goto LABEL_7;
  }
}

void sub_3CFB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a16);
  _Unwind_Resume(exception_object);
}

double sub_3CFBE0(unint64_t *a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{
  v50 = a3;
  a1[1] = a2;
  v9 = std::thread::hardware_concurrency();
  v10 = 3;
  if (a5)
  {
    v10 = a5;
  }

  v11 = v10 * v9;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 * v9;
  }

  v13 = a4 * v12;
  if (v13 < 4.50359963e15)
  {
    v13 = (((v13 + v13) + 1) >> 1);
  }

  v14 = v13;
  v18 = v13 > 1;
  v15 = a2;
  if (!v18)
  {
    v14 = 1;
  }

  if (a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = (v15 / v16);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v14 > a2 || v11 > v17;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  *a1 = v19;
  v20 = v15 / v19;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_26:
  if (v20 > a4)
  {
    a4 = v20;
  }

  v49 = a4;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v38);
    sub_4A5C(&v38, "PartitionedLRUCache: creating ", 30);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, " partitions, ", 13);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, " bytes each", 11);
    if ((v48 & 0x10) != 0)
    {
      v25 = v47;
      if (v47 < v44)
      {
        v47 = v44;
        v25 = v44;
      }

      v26 = v43;
      v24 = v25 - v43;
      if (v25 - v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((v48 & 8) == 0)
      {
        v24 = 0;
        v37 = 0;
LABEL_40:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 2u);
        if (v37 < 0)
        {
          operator delete(__dst);
        }

        if (v46 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v40);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_45;
      }

      v26 = v41;
      v24 = v42 - v41;
      if ((v42 - v41) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_57:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v37 = v24;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

    goto LABEL_40;
  }

LABEL_45:
  v28 = a1[2];
  for (i = a1[3]; i != v28; sub_3D415C((a1 + 2), i))
  {
    i -= 272;
  }

  a1[3] = v28;
  sub_3D83A0(a1 + 2, *a1);
  if (*a1)
  {
    v30 = 0;
    v31 = a1[3];
    do
    {
      while (v31 >= a1[4])
      {
        result = sub_3D8700(a1 + 2, &v49, &v50);
        v31 = v32;
        a1[3] = v32;
        if (++v30 >= *a1)
        {
          return result;
        }
      }

      v33 = v49;
      v34 = v50;
      *v31 = v31;
      *(v31 + 8) = v31;
      *(v31 + 16) = xmmword_22913E0;
      *(v31 + 32) = 0u;
      *(v31 + 48) = 0u;
      *(v31 + 64) = 0u;
      *(v31 + 80) = 0u;
      *(v31 + 96) = 0u;
      *(v31 + 112) = 0u;
      *(v31 + 128) = 0;
      *(v31 + 144) = 0;
      *(v31 + 152) = 0;
      *(v31 + 160) = 0;
      *(v31 + 168) = v33;
      *(v31 + 184) = 0;
      *(v31 + 192) = 0;
      *(v31 + 176) = 0;
      if (v34 == 1)
      {
        v35 = sub_2CD8C();
        sub_2CD98(v35);
      }

      *(v31 + 200) = 0;
      *(v31 + 208) = 850045863;
      result = 0.0;
      *(v31 + 216) = 0u;
      *(v31 + 232) = 0u;
      *(v31 + 248) = 0u;
      *(v31 + 264) = 0;
      v31 += 272;
      a1[3] = v31;
      a1[3] = v31;
      ++v30;
    }

    while (v30 < *a1);
  }

  return result;
}

void sub_3D00A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void sub_3D00E4(_Unwind_Exception *a1)
{
  sub_3BC58C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

void sub_3D00FC(_Unwind_Exception *a1)
{
  sub_3BC58C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

double sub_3D0118(unint64_t *a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{
  v50 = a3;
  a1[1] = a2;
  v9 = std::thread::hardware_concurrency();
  v10 = 3;
  if (a5)
  {
    v10 = a5;
  }

  v11 = v10 * v9;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 * v9;
  }

  v13 = a4 * v12;
  if (v13 < 4.50359963e15)
  {
    v13 = (((v13 + v13) + 1) >> 1);
  }

  v14 = v13;
  v18 = v13 > 1;
  v15 = a2;
  if (!v18)
  {
    v14 = 1;
  }

  if (a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = (v15 / v16);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v14 > a2 || v11 > v17;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  *a1 = v19;
  v20 = v15 / v19;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_26:
  if (v20 > a4)
  {
    a4 = v20;
  }

  v49 = a4;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v38);
    sub_4A5C(&v38, "PartitionedLRUCache: creating ", 30);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, " partitions, ", 13);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, " bytes each", 11);
    if ((v48 & 0x10) != 0)
    {
      v25 = v47;
      if (v47 < v44)
      {
        v47 = v44;
        v25 = v44;
      }

      v26 = v43;
      v24 = v25 - v43;
      if (v25 - v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((v48 & 8) == 0)
      {
        v24 = 0;
        v37 = 0;
LABEL_40:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 2u);
        if (v37 < 0)
        {
          operator delete(__dst);
        }

        if (v46 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v40);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_45;
      }

      v26 = v41;
      v24 = v42 - v41;
      if ((v42 - v41) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_57:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v37 = v24;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

    goto LABEL_40;
  }

LABEL_45:
  v28 = a1[2];
  for (i = a1[3]; i != v28; sub_3D39BC((a1 + 2), i))
  {
    i -= 272;
  }

  a1[3] = v28;
  sub_3D891C(a1 + 2, *a1);
  if (*a1)
  {
    v30 = 0;
    v31 = a1[3];
    do
    {
      while (v31 >= a1[4])
      {
        result = sub_3D8C7C(a1 + 2, &v49, &v50);
        v31 = v32;
        a1[3] = v32;
        if (++v30 >= *a1)
        {
          return result;
        }
      }

      v33 = v49;
      v34 = v50;
      *v31 = v31;
      *(v31 + 8) = v31;
      *(v31 + 16) = xmmword_22913E0;
      *(v31 + 32) = 0u;
      *(v31 + 48) = 0u;
      *(v31 + 64) = 0u;
      *(v31 + 80) = 0u;
      *(v31 + 96) = 0u;
      *(v31 + 112) = 0u;
      *(v31 + 128) = 0;
      *(v31 + 144) = 0;
      *(v31 + 152) = 0;
      *(v31 + 160) = 0;
      *(v31 + 168) = v33;
      *(v31 + 184) = 0;
      *(v31 + 192) = 0;
      *(v31 + 176) = 0;
      if (v34 == 1)
      {
        v35 = sub_2CD8C();
        sub_2CD98(v35);
      }

      *(v31 + 200) = 0;
      *(v31 + 208) = 850045863;
      result = 0.0;
      *(v31 + 216) = 0u;
      *(v31 + 232) = 0u;
      *(v31 + 248) = 0u;
      *(v31 + 264) = 0;
      v31 += 272;
      a1[3] = v31;
      a1[3] = v31;
      ++v30;
    }

    while (v30 < *a1);
  }

  return result;
}

void sub_3D05E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void sub_3D061C(_Unwind_Exception *a1)
{
  sub_3BC58C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

void sub_3D0634(_Unwind_Exception *a1)
{
  sub_3BC58C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

double sub_3D0650(unint64_t *a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{
  v52 = a3;
  a1[1] = a2;
  v9 = std::thread::hardware_concurrency();
  v10 = 3;
  if (a5)
  {
    v10 = a5;
  }

  v11 = v10 * v9;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 * v9;
  }

  v13 = a4 * v12;
  if (v13 < 4.50359963e15)
  {
    v13 = (((v13 + v13) + 1) >> 1);
  }

  v14 = v13;
  v18 = v13 > 1;
  v15 = a2;
  if (!v18)
  {
    v14 = 1;
  }

  if (a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = (v15 / v16);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v14 > a2 || v11 > v17;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  *a1 = v19;
  v20 = v15 / v19;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_26:
  if (v20 > a4)
  {
    a4 = v20;
  }

  v51 = a4;
  if (!sub_7E7E4(2u))
  {
    v23 = a1[2];
    v24 = a1[3];
    v22 = (a1 + 2);
    if (v24 == v23)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  sub_19594F8(&v40);
  sub_4A5C(&v40, "PartitionedLRUCache: creating ", 30);
  v25 = std::ostream::operator<<();
  sub_4A5C(v25, " partitions, ", 13);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, " bytes each", 11);
  if ((v50 & 0x10) != 0)
  {
    v28 = v49;
    if (v49 < v46)
    {
      v49 = v46;
      v28 = v46;
    }

    v29 = v45;
    v27 = v28 - v45;
    if (v28 - v45 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if ((v50 & 8) == 0)
    {
      v27 = 0;
      v39 = 0;
      goto LABEL_42;
    }

    v29 = v43;
    v27 = v44 - v43;
    if ((v44 - v43) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_59:
      sub_3244();
    }
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  v39 = v27;
  if (v27)
  {
    memmove(&__dst, v29, v27);
  }

LABEL_42:
  *(&__dst + v27) = 0;
  sub_7E854(&__dst, 2u);
  if (v39 < 0)
  {
    operator delete(__dst);
  }

  if (v48 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v42);
  std::ostream::~ostream();
  std::ios::~ios();
  v23 = a1[2];
  v24 = a1[3];
  v22 = (a1 + 2);
  if (v24 != v23)
  {
    do
    {
LABEL_50:
      v33 = v24 - 272;
      if (*(v24 - 72))
      {
        sub_3D3388(v24 - 272);
        v34 = sub_2CD8C();
        sub_2CF24(v34, *(v24 - 72));
      }

      std::mutex::~mutex((v24 - 64));
      sub_3BDA1C((v24 - 272));
      v24 -= 272;
    }

    while (v33 != v23);
  }

LABEL_47:
  a1[3] = v23;
  sub_3D8E98(v22, *a1);
  if (*a1)
  {
    v31 = 0;
    v32 = a1[3];
    do
    {
      while (v32 >= a1[4])
      {
        v32 = sub_3D92A8(v22, &v51, &v52);
        a1[3] = v32;
        if (++v31 >= *a1)
        {
          return result;
        }
      }

      v35 = v51;
      v36 = v52;
      *v32 = v32;
      *(v32 + 8) = v32;
      *(v32 + 16) = xmmword_22913E0;
      *(v32 + 32) = 0u;
      *(v32 + 48) = 0u;
      *(v32 + 64) = 0u;
      *(v32 + 80) = 0u;
      *(v32 + 96) = 0u;
      *(v32 + 112) = 0u;
      *(v32 + 128) = 0;
      *(v32 + 144) = 0;
      *(v32 + 152) = 0;
      *(v32 + 160) = 0;
      *(v32 + 168) = v35;
      *(v32 + 184) = 0;
      *(v32 + 192) = 0;
      *(v32 + 176) = 0;
      if (v36 == 1)
      {
        v37 = sub_2CD8C();
        sub_2CD98(v37);
      }

      *(v32 + 200) = 0;
      *(v32 + 208) = 850045863;
      result = 0.0;
      *(v32 + 216) = 0u;
      *(v32 + 232) = 0u;
      *(v32 + 248) = 0u;
      *(v32 + 264) = 0;
      v32 += 272;
      a1[3] = v32;
      a1[3] = v32;
      ++v31;
    }

    while (v31 < *a1);
  }

  return result;
}

void sub_3D0B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void sub_3D0B94(_Unwind_Exception *a1)
{
  sub_3BDA1C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

void sub_3D0BAC(_Unwind_Exception *a1)
{
  sub_3BDA1C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

double sub_3D0BC8(unint64_t *a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{
  v50 = a3;
  a1[1] = a2;
  v9 = std::thread::hardware_concurrency();
  v10 = 3;
  if (a5)
  {
    v10 = a5;
  }

  v11 = v10 * v9;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 * v9;
  }

  v13 = a4 * v12;
  if (v13 < 4.50359963e15)
  {
    v13 = (((v13 + v13) + 1) >> 1);
  }

  v14 = v13;
  v18 = v13 > 1;
  v15 = a2;
  if (!v18)
  {
    v14 = 1;
  }

  if (a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = (v15 / v16);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v14 > a2 || v11 > v17;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  *a1 = v19;
  v20 = v15 / v19;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_26:
  if (v20 > a4)
  {
    a4 = v20;
  }

  v49 = a4;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v38);
    sub_4A5C(&v38, "PartitionedLRUCache: creating ", 30);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, " partitions, ", 13);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, " bytes each", 11);
    if ((v48 & 0x10) != 0)
    {
      v25 = v47;
      if (v47 < v44)
      {
        v47 = v44;
        v25 = v44;
      }

      v26 = v43;
      v24 = v25 - v43;
      if (v25 - v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((v48 & 8) == 0)
      {
        v24 = 0;
        v37 = 0;
LABEL_40:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 2u);
        if (v37 < 0)
        {
          operator delete(__dst);
        }

        if (v46 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v40);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_45;
      }

      v26 = v41;
      v24 = v42 - v41;
      if ((v42 - v41) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_57:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v37 = v24;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

    goto LABEL_40;
  }

LABEL_45:
  v28 = a1[2];
  for (i = a1[3]; i != v28; sub_3D2AF8((a1 + 2), i))
  {
    i -= 272;
  }

  a1[3] = v28;
  sub_3D94D0(a1 + 2, *a1);
  if (*a1)
  {
    v30 = 0;
    v31 = a1[3];
    do
    {
      while (v31 >= a1[4])
      {
        result = sub_3D9830(a1 + 2, &v49, &v50);
        v31 = v32;
        a1[3] = v32;
        if (++v30 >= *a1)
        {
          return result;
        }
      }

      v33 = v49;
      v34 = v50;
      *v31 = v31;
      *(v31 + 8) = v31;
      *(v31 + 16) = xmmword_22913E0;
      *(v31 + 32) = 0u;
      *(v31 + 48) = 0u;
      *(v31 + 64) = 0u;
      *(v31 + 80) = 0u;
      *(v31 + 96) = 0u;
      *(v31 + 112) = 0u;
      *(v31 + 128) = 0;
      *(v31 + 144) = 0;
      *(v31 + 152) = 0;
      *(v31 + 160) = 0;
      *(v31 + 168) = v33;
      *(v31 + 184) = 0;
      *(v31 + 192) = 0;
      *(v31 + 176) = 0;
      if (v34 == 1)
      {
        v35 = sub_2CD8C();
        sub_2CD98(v35);
      }

      *(v31 + 200) = 0;
      *(v31 + 208) = 850045863;
      result = 0.0;
      *(v31 + 216) = 0u;
      *(v31 + 232) = 0u;
      *(v31 + 248) = 0u;
      *(v31 + 264) = 0;
      v31 += 272;
      a1[3] = v31;
      a1[3] = v31;
      ++v30;
    }

    while (v30 < *a1);
  }

  return result;
}

void sub_3D1090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void sub_3D10CC(_Unwind_Exception *a1)
{
  sub_3D2D4C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

void sub_3D10E4(_Unwind_Exception *a1)
{
  sub_3D2D4C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

void sub_3D1570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3D15A8(uint64_t a1)
{
  if (*(a1 + 1432))
  {
    return 1;
  }

  if (*(a1 + 1416))
  {
    operator new();
  }

  return 0;
}

void sub_3D1674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_3D1690(uint64_t *a1)
{
  std::mutex::lock((a1 + 61));
  if (!sub_5FC6C((a1 + 2)))
  {
    goto LABEL_29;
  }

  v2 = *(sub_74700() + 2);
  *(sub_74700() + 2) = 0;
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  v18 = v4;
  v19 = v3;
  do
  {
    v6 = &v18 + v5;
    *(v6 + 4) = 0;
    *(v6 + 10) = 0;
    *(v6 + 3) = 0;
    *(v6 + 6) = 0;
    v5 += 48;
  }

  while (v5 != 3840);
  v21 = 0;
  v20 = 0u;
  v7 = sub_3C0014(&v18, 1u, 1);
  if (v7)
  {
    v8 = &v7[-*v7];
    if (*v8 < 0xBu)
    {
      LODWORD(v21) = 0;
      v10 = &v7[-*v7];
      if (*v10 >= 0xDu)
      {
LABEL_11:
        v11 = *(v10 + 6);
        if (v11)
        {
          LODWORD(v11) = *&v7[v11];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v9 = *(v8 + 5);
      if (v9)
      {
        LODWORD(v9) = *&v7[v9];
      }

      LODWORD(v21) = v9;
      v10 = &v7[-*v7];
      if (*v10 >= 0xDu)
      {
        goto LABEL_11;
      }
    }

    LODWORD(v11) = 0;
  }

  else
  {
    LODWORD(v11) = 0;
    LODWORD(v21) = 0;
  }

LABEL_16:
  HIDWORD(v21) = v11;
  sub_3D9A4C(&v18, v22);
  sub_6BA20((a1 + 2), v22);
  v12 = v23;
  if (v23)
  {
    do
    {
      v13 = *v12;
      v14 = *(v12 + 12);
      if (v14 != -1)
      {
        (off_2669A40[v14])(&v24, v12 + 5);
      }

      *(v12 + 12) = -1;
      if (*(v12 + 39) < 0)
      {
        operator delete(v12[2]);
      }

      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v15 = v22[0];
  v22[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  *(sub_74700() + 2) = v2;
LABEL_29:
  std::mutex::unlock((a1 + 61));
  return a1 + 2;
}

void sub_3D18B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  std::mutex::unlock((v2 + 488));
  _Unwind_Resume(a1);
}

void sub_3D18D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  std::mutex::unlock((v2 + 488));
  _Unwind_Resume(a1);
}

uint64_t *sub_3D1918(uint64_t *a1)
{
  std::mutex::lock((a1 + 61));
  if (!sub_5FC6C((a1 + 7)))
  {
    goto LABEL_29;
  }

  v2 = *(sub_74700() + 2);
  *(sub_74700() + 2) = 0;
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  v18 = v4;
  v19 = v3;
  do
  {
    v6 = &v18 + v5;
    *(v6 + 4) = 0;
    *(v6 + 10) = 0;
    *(v6 + 3) = 0;
    *(v6 + 6) = 0;
    v5 += 48;
  }

  while (v5 != 3840);
  v21 = 0;
  v20 = 0u;
  v7 = sub_3C0314(&v18, 1u, 1);
  if (v7)
  {
    v8 = &v7[-*v7];
    if (*v8 < 0xBu)
    {
      LODWORD(v21) = 0;
      v10 = &v7[-*v7];
      if (*v10 >= 0xDu)
      {
LABEL_11:
        v11 = *(v10 + 6);
        if (v11)
        {
          LODWORD(v11) = *&v7[v11];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v9 = *(v8 + 5);
      if (v9)
      {
        LODWORD(v9) = *&v7[v9];
      }

      LODWORD(v21) = v9;
      v10 = &v7[-*v7];
      if (*v10 >= 0xDu)
      {
        goto LABEL_11;
      }
    }

    LODWORD(v11) = 0;
  }

  else
  {
    LODWORD(v11) = 0;
    LODWORD(v21) = 0;
  }

LABEL_16:
  HIDWORD(v21) = v11;
  sub_3D9BF0(&v18, v22);
  sub_6BA20((a1 + 7), v22);
  v12 = v23;
  if (v23)
  {
    do
    {
      v13 = *v12;
      v14 = *(v12 + 12);
      if (v14 != -1)
      {
        (off_2669A40[v14])(&v24, v12 + 5);
      }

      *(v12 + 12) = -1;
      if (*(v12 + 39) < 0)
      {
        operator delete(v12[2]);
      }

      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v15 = v22[0];
  v22[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  *(sub_74700() + 2) = v2;
LABEL_29:
  std::mutex::unlock((a1 + 61));
  return a1 + 7;
}

void sub_3D1B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  std::mutex::unlock((v2 + 488));
  _Unwind_Resume(a1);
}

void sub_3D1B58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  std::mutex::unlock((v2 + 488));
  _Unwind_Resume(a1);
}

uint64_t *sub_3D1BA0(uint64_t *a1)
{
  std::mutex::lock((a1 + 61));
  if (!sub_5FC6C((a1 + 12)))
  {
    goto LABEL_29;
  }

  v2 = *(sub_74700() + 2);
  *(sub_74700() + 2) = 0;
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  v18 = v4;
  v19 = v3;
  do
  {
    v6 = &v18 + v5;
    *(v6 + 4) = 0;
    *(v6 + 10) = 0;
    *(v6 + 3) = 0;
    *(v6 + 6) = 0;
    v5 += 48;
  }

  while (v5 != 3840);
  v21 = 0;
  v20 = 0u;
  v7 = sub_3C0614(&v18, 1u, 1);
  if (v7)
  {
    v8 = &v7[-*v7];
    if (*v8 < 0xBu)
    {
      LODWORD(v21) = 0;
      v10 = &v7[-*v7];
      if (*v10 >= 0xDu)
      {
LABEL_11:
        v11 = *(v10 + 6);
        if (v11)
        {
          LODWORD(v11) = *&v7[v11];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v9 = *(v8 + 5);
      if (v9)
      {
        LODWORD(v9) = *&v7[v9];
      }

      LODWORD(v21) = v9;
      v10 = &v7[-*v7];
      if (*v10 >= 0xDu)
      {
        goto LABEL_11;
      }
    }

    LODWORD(v11) = 0;
  }

  else
  {
    LODWORD(v11) = 0;
    LODWORD(v21) = 0;
  }

LABEL_16:
  HIDWORD(v21) = v11;
  sub_3D9D94(&v18, v22);
  sub_6BA20((a1 + 12), v22);
  v12 = v23;
  if (v23)
  {
    do
    {
      v13 = *v12;
      v14 = *(v12 + 12);
      if (v14 != -1)
      {
        (off_2669A40[v14])(&v24, v12 + 5);
      }

      *(v12 + 12) = -1;
      if (*(v12 + 39) < 0)
      {
        operator delete(v12[2]);
      }

      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v15 = v22[0];
  v22[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  *(sub_74700() + 2) = v2;
LABEL_29:
  std::mutex::unlock((a1 + 61));
  return a1 + 12;
}

void sub_3D1DC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  std::mutex::unlock((v2 + 488));
  _Unwind_Resume(a1);
}

void sub_3D1DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  std::mutex::unlock((v2 + 488));
  _Unwind_Resume(a1);
}

uint64_t sub_3D1E28(uint64_t a1)
{
  std::mutex::lock((a1 + 1304));
  v2 = *(a1 + 1296);
  if (!v2)
  {
    sub_74700();
    *(sub_74700() + 2) = 0;
    operator new();
  }

  std::mutex::unlock((a1 + 1304));
  return v2;
}

void sub_3D206C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    std::mutex::unlock((v18 + 1304));
    _Unwind_Resume(a1);
  }

  std::mutex::unlock((v18 + 1304));
  _Unwind_Resume(a1);
}

void sub_3D20BC(void *a1)
{
  sub_3CBF4C(a1);

  operator delete();
}

void *sub_3D20F4(void *a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          do
          {
            v8 = *v5;
            v9 = *(v5 + 12);
            if (v9 != -1)
            {
              (off_2669A40[v9])(&v11, v5 + 5);
            }

            *(v5 + 12) = -1;
            if (*(v5 + 39) < 0)
            {
              operator delete(v5[2]);
            }

            operator delete(v5);
            v5 = v8;
          }

          while (v8);
        }

        v7 = *(v3 - 5);
        v3 -= 5;
        v6 = v7;
        *v3 = 0;
        if (v7)
        {
          operator delete(v6);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_3D21DC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 96);
    if (v2)
    {
      v3 = *(v1 + 104);
      v4 = *(v1 + 96);
      if (v3 != v2)
      {
        do
        {
          v3 = sub_3D21DC(v3 - 8);
        }

        while (v3 != v2);
        v4 = *(v1 + 96);
      }

      *(v1 + 104) = v2;
      operator delete(v4);
    }

    v5 = *(v1 + 72);
    if (v5)
    {
      v6 = *(v1 + 80);
      v7 = *(v1 + 72);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = *(v1 + 72);
      }

      *(v1 + 80) = v5;
      operator delete(v7);
    }

    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
      if ((*(v1 + 47) & 0x80000000) == 0)
      {
LABEL_17:
        v9 = *v1;
        if (!*v1)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }
    }

    else if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(*(v1 + 24));
    v9 = *v1;
    if (!*v1)
    {
      goto LABEL_34;
    }

LABEL_21:
    v10 = *(v1 + 8);
    v11 = v9;
    if (v10 != v9)
    {
      v12 = *(v1 + 8);
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
      v11 = *v1;
    }

    *(v1 + 8) = v9;
    operator delete(v11);
LABEL_34:
    operator delete();
  }

  return result;
}

uint64_t *sub_3D2374(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      v4 = *(v2 + 104);
      v5 = *(v2 + 96);
      if (v4 != v3)
      {
        do
        {
          v4 = sub_3D21DC(v4 - 1);
        }

        while (v4 != v3);
        v5 = *(v2 + 96);
      }

      *(v2 + 104) = v3;
      operator delete(v5);
    }

    v6 = *(v2 + 72);
    if (v6)
    {
      v7 = *(v2 + 80);
      v8 = *(v2 + 72);
      if (v7 != v6)
      {
        do
        {
          v9 = *(v7 - 1);
          v7 -= 3;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = *(v2 + 72);
      }

      *(v2 + 80) = v6;
      operator delete(v8);
    }

    if (*(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
      if ((*(v2 + 47) & 0x80000000) == 0)
      {
LABEL_18:
        v10 = *v2;
        if (!*v2)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }
    }

    else if ((*(v2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(*(v2 + 24));
    v10 = *v2;
    if (!*v2)
    {
      goto LABEL_35;
    }

LABEL_22:
    v11 = *(v2 + 8);
    v12 = v10;
    if (v11 != v10)
    {
      v13 = *(v2 + 8);
      do
      {
        v16 = *(v13 - 3);
        v13 -= 3;
        v15 = v16;
        if (v16)
        {
          v17 = *(v11 - 2);
          v14 = v15;
          if (v17 != v15)
          {
            v18 = *(v11 - 2);
            do
            {
              v20 = *(v18 - 3);
              v18 -= 24;
              v19 = v20;
              if (v20)
              {
                *(v17 - 2) = v19;
                operator delete(v19);
              }

              v17 = v18;
            }

            while (v18 != v15);
            v14 = *v13;
          }

          *(v11 - 2) = v15;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = *v2;
    }

    *(v2 + 8) = v10;
    operator delete(v12);
LABEL_35:

    operator delete();
  }

  return result;
}

uint64_t sub_3D251C(uint64_t a1)
{
  v2 = (a1 + 136);
  if (*(a1 + 136))
  {
    sub_3D26D0((a1 + 136));
    operator delete(*v2);
  }

  if (*(a1 + 96))
  {
    sub_3D26D0((a1 + 96));
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 56);
    if (v4 != v3)
    {
      do
      {
        v4 -= 25;
        sub_3D2868(v4);
      }

      while (v4 != v3);
      v5 = *(a1 + 56);
    }

    *(a1 + 64) = v3;
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 16);
    if (v7 != v6)
    {
      do
      {
        v7 -= 25;
        sub_3D2868(v7);
      }

      while (v7 != v6);
      v8 = *(a1 + 16);
    }

    *(a1 + 24) = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_3D25F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v3 -= 25;
        sub_3D2868(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_3D2654(uint64_t result)
{
  v1 = (result + 16);
  if (*(result + 16))
  {
    v2 = result;
    sub_3D26D0((result + 16));
    operator delete(*v1);
    return v2;
  }

  return result;
}

uint64_t **sub_3D2694(uint64_t **a1)
{
  if (*a1)
  {
    sub_3D26D0(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_3D26D0(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 11);
      if (v4)
      {
        *(v3 - 10) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 14);
      if (v5)
      {
        *(v3 - 13) = v5;
        operator delete(v5);
      }

      v6 = v3 - 25;
      std::mutex::~mutex((v3 - 22));
      if (*(v3 - 23))
      {
        v7 = *(v3 - 24);
        v8 = *(*(v3 - 25) + 8);
        v9 = *v7;
        *(v9 + 8) = v8;
        *v8 = v9;
        *(v3 - 23) = 0;
        if (v7 != v6)
        {
          do
          {
            v10 = v7[1];
            operator delete(v7);
            v7 = v10;
          }

          while (v10 != v6);
        }
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

void sub_3D2780(uint64_t a1, uint64_t *a2)
{
  v3 = a2[14];
  if (v3)
  {
    a2[15] = v3;
    operator delete(v3);
  }

  v4 = a2[11];
  if (v4)
  {
    a2[12] = v4;
    operator delete(v4);
  }

  std::mutex::~mutex((a2 + 3));
  if (a2[2])
  {
    v5 = a2[1];
    v6 = *(*a2 + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a2[2] = 0;
    if (v5 != a2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != a2);
    }
  }
}

void *sub_3D2804(void *a1)
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
        v3 -= 25;
        sub_3D2868(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_3D2868(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 3));
  if (a1[2])
  {
    v4 = a1[1];
    v5 = *(*a1 + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    a1[2] = 0;
    if (v4 != a1)
    {
      do
      {
        v7 = v4[1];
        v8 = v4[5];
        if (v8)
        {
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v4;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v4 = v9;
          }
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != a1);
    }
  }
}

void *sub_3D2954(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[5];
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v2;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t sub_3D2A1C(uint64_t result)
{
  v1 = *(result + 24);
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

uint64_t sub_3D2A94(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_3D2AF8(a1, i))
    {
      i -= 272;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_3D2AF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 200))
  {
    sub_3D2C0C(a2);
    v3 = sub_2CD8C();
    sub_2CF24(v3, *(a2 + 200));
  }

  std::mutex::~mutex((a2 + 208));
  v4 = *(a2 + 112);
  if (v4)
  {
    *(a2 + 120) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  std::mutex::~mutex((a2 + 24));
  if (*(a2 + 16))
  {
    v6 = *(a2 + 8);
    v7 = *(*a2 + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    *(a2 + 16) = 0;
    if (v6 != a2)
    {
      do
      {
        v9 = v6[1];
        v10 = v6[6];
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v11 = v6;
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
            v6 = v11;
          }
        }

        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a2);
    }
  }
}

void sub_3D2C0C(uint64_t a1)
{
  v9 = &v9;
  v10 = &v9;
  v11 = 0;
  std::mutex::lock((a1 + 24));
  while (1)
  {
    v2 = *(a1 + 8);
    if (v2 == a1 || !*(a1 + 160))
    {
      break;
    }

    sub_3D2F04(a1, v2, &v9);
  }

  std::mutex::unlock((a1 + 24));
  if (v11)
  {
    v3 = v10;
    v4 = *(v9 + 8);
    v5 = *v10;
    *(v5 + 8) = v4;
    *v4 = v5;
    v11 = 0;
    if (v3 != &v9)
    {
      do
      {
        v6 = v3[1];
        v7 = v3[6];
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v8 = v3;
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
            v3 = v8;
          }
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != &v9);
    }
  }
}

void sub_3D2D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3D2E3C(va);
  _Unwind_Resume(a1);
}

void sub_3D2D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 24));
  sub_3D2E3C(va);
  _Unwind_Resume(a1);
}

void *sub_3D2D4C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 3));
  if (a1[2])
  {
    v4 = a1[1];
    v5 = *(*a1 + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    a1[2] = 0;
    if (v4 != a1)
    {
      do
      {
        v7 = v4[1];
        v8 = v4[6];
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v9 = v4;
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
          v4 = v9;
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != a1);
    }
  }

  return a1;
}

void *sub_3D2E3C(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[6];
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v2;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void *sub_3D2F04(void *result, uint64_t *a2, uint64_t *a3)
{
  result[20] -= a2[7];
  v3 = result[14];
  v4 = result[15];
  if (v3 != v4)
  {
    v5 = *(a2 + 4);
    v6 = *(a2 + 10);
    v7 = *(a2 + 24);
    v8 = *(a2 + 25);
    v9 = *(a2 + 26);
    v10 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
    v11 = (v7 + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
    v12 = (v8 + (v11 << 6) + (v11 >> 2) + 2654435769u) ^ v11;
    v13 = (v9 + (v12 << 6) + (v12 >> 2) + 2654435769u) ^ v12;
    v14 = result[11];
    v15 = v13 % (result[12] - v14);
    v16 = (v4 - v3) >> 5;
    while (1)
    {
      if (*(v14 + v15) != 1)
      {
        if (!*(v14 + v15))
        {
          goto LABEL_19;
        }

        v17 = (v3 + 32 * v15);
        if (v13 == v17[2])
        {
          v18 = *v17;
          if (v5 == *v17)
          {
            v19 = v6 == WORD2(v18) && *(a2 + 22) == BYTE6(v18);
            if (v19 && v7 == *(v17 + 8) && __PAIR64__(v9, v8) == __PAIR64__(*(v17 + 10), *(v17 + 9)))
            {
              break;
            }
          }
        }
      }

      if (v15 == v16 - 1)
      {
        v15 = 0;
      }

      else
      {
        ++v15;
      }
    }

    *(v14 + v15) = 1;
    v20 = result[18] - 1;
    result[18] = v20;
    if (v16 > 8 * v20)
    {
      sub_3D30B8((result + 11));
    }
  }

LABEL_19:
  if (a3 != a2)
  {
    v21 = a2[1];
    if (v21 != a3)
    {
      v22 = *a2;
      *(v22 + 8) = v21;
      *v21 = v22;
      v23 = *a3;
      *(v23 + 8) = a2;
      *a2 = v23;
      *a3 = a2;
      a2[1] = a3;
      --result[2];
      ++a3[2];
    }
  }

  return result;
}

void sub_3D30B8(uint64_t a1)
{
  v1 = 0;
  do
  {
    ++v1;
  }

  while (3 * *(a1 + 56) > (1 << v1));
  if (v1 < 0x3B)
  {
    operator new();
  }

  sub_1794();
}

void **sub_3D3274(void **a1)
{
  if (*a1)
  {
    sub_3D32B0(a1);
    operator delete(*a1);
  }

  return a1;
}

void *sub_3D32B0(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = v3 - 272;
      if (*(v3 - 72))
      {
        sub_3D3388(v3 - 272);
        v5 = sub_2CD8C();
        sub_2CF24(v5, *(v3 - 72));
      }

      std::mutex::~mutex((v3 - 64));
      result = sub_3BDA1C((v3 - 272));
      v3 -= 272;
    }

    while (v4 != v2);
  }

  v1[1] = v2;
  return result;
}

void *sub_3D332C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 200))
  {
    sub_3D3388(a2);
    v3 = sub_2CD8C();
    sub_2CF24(v3, *(a2 + 200));
  }

  std::mutex::~mutex((a2 + 208));

  return sub_3BDA1C(a2);
}

void sub_3D3388(uint64_t a1)
{
  v9 = &v9;
  v10 = &v9;
  v11 = 0;
  std::mutex::lock((a1 + 24));
  while (1)
  {
    v2 = *(a1 + 8);
    if (v2 == a1 || !*(a1 + 160))
    {
      break;
    }

    sub_3D34C8(a1, v2, &v9);
  }

  std::mutex::unlock((a1 + 24));
  if (v11)
  {
    v3 = v10;
    v4 = *(v9 + 8);
    v5 = *v10;
    *(v5 + 8) = v4;
    *v4 = v5;
    v11 = 0;
    if (v3 != &v9)
    {
      do
      {
        v6 = v3[1];
        v7 = v3[9];
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v8 = v3;
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
            v3 = v8;
          }
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != &v9);
    }
  }
}

void sub_3D3498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

void sub_3D34AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 24));
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D34C8(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[20] -= a2[10];
  v6 = *(a2 + 2);
  v18[0] = *(a2 + 1);
  v18[1] = v6;
  v19 = *(a2 + 12);
  v7 = (DWORD1(v18[0]) + (LODWORD(v18[0]) << 6) + (LODWORD(v18[0]) >> 2) + 2654435769u) ^ LODWORD(v18[0]);
  v8 = (DWORD2(v18[0]) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (SHIDWORD(v18[0]) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (v6 + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (SDWORD1(v6) + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  v12 = (BYTE8(v6) + (v11 << 6) + (v11 >> 2) + 2654435769u) ^ v11;
  v13 = (WORD5(v6) + (v12 << 6) + (v12 >> 2) + 2654435769u) ^ v12;
  v20 = (BYTE12(v6) + (v13 << 6) + (v13 >> 2) + 2654435769u) ^ v13;
  result = sub_3D3620(a1 + 11, v18);
  if (a3 != a2)
  {
    v15 = a2[1];
    if (v15 != a3)
    {
      v16 = *a2;
      *(v16 + 8) = v15;
      *v15 = v16;
      v17 = *a3;
      *(v17 + 8) = a2;
      *a2 = v17;
      *a3 = a2;
      a2[1] = a3;
      --a1[2];
      ++a3[2];
    }
  }

  return result;
}

uint64_t sub_3D3620(uint64_t *a1, int *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2)
  {
    return 0;
  }

  v4 = *(a2 + 5);
  v5 = *a1;
  v6 = v4 % (a1[1] - *a1);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = *(a2 + 24);
  v14 = *(a2 + 13);
  v15 = *(a2 + 28);
  v16 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 3);
  while (1)
  {
    if (*(v5 + v6) != 1)
    {
      if (!*(v5 + v6))
      {
        return 0;
      }

      v17 = v3 + 56 * v6;
      if (v4 == *(v17 + 40) && v7 == *v17 && v8 == *(v17 + 4) && v9 == *(v17 + 8) && v10 == *(v17 + 12) && v11 == *(v17 + 16) && v12 == *(v17 + 20) && v13 == *(v17 + 24) && *(v17 + 26) == v14 && *(v17 + 28) == v15)
      {
        break;
      }
    }

    if (v6 == v16 - 1)
    {
      v6 = 0;
    }

    else
    {
      ++v6;
    }
  }

  *(v5 + v6) = 1;
  v18 = a1[7] - 1;
  a1[7] = v18;
  if (v16 > 8 * v18)
  {
    sub_3D3774(a1);
  }

  return 1;
}

void sub_3D3774(uint64_t a1)
{
  v1 = 0;
  do
  {
    ++v1;
  }

  while (3 * *(a1 + 56) > (1 << v1));
  if (v1 < 0x3B)
  {
    operator new();
  }

  sub_1794();
}

uint64_t sub_3D3958(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_3D39BC(a1, i))
    {
      i -= 272;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_3D39BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 200))
  {
    sub_3D3AD0(a2);
    v3 = sub_2CD8C();
    sub_2CF24(v3, *(a2 + 200));
  }

  std::mutex::~mutex((a2 + 208));
  v4 = *(a2 + 112);
  if (v4)
  {
    *(a2 + 120) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  std::mutex::~mutex((a2 + 24));
  if (*(a2 + 16))
  {
    v6 = *(a2 + 8);
    v7 = *(*a2 + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    *(a2 + 16) = 0;
    if (v6 != a2)
    {
      do
      {
        v9 = v6[1];
        v10 = v6[9];
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v11 = v6;
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
            v6 = v11;
          }
        }

        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a2);
    }
  }
}

void sub_3D3AD0(uint64_t a1)
{
  v9 = &v9;
  v10 = &v9;
  v11 = 0;
  std::mutex::lock((a1 + 24));
  while (1)
  {
    v2 = *(a1 + 8);
    if (v2 == a1 || !*(a1 + 160))
    {
      break;
    }

    sub_3D3C10(a1, v2, &v9);
  }

  std::mutex::unlock((a1 + 24));
  if (v11)
  {
    v3 = v10;
    v4 = *(v9 + 8);
    v5 = *v10;
    *(v5 + 8) = v4;
    *v4 = v5;
    v11 = 0;
    if (v3 != &v9)
    {
      do
      {
        v6 = v3[1];
        v7 = v3[9];
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v8 = v3;
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
            v3 = v8;
          }
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != &v9);
    }
  }
}

void sub_3D3BE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

void sub_3D3BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 24));
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D3C10(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[20] -= a2[10];
  v6 = *(a2 + 2);
  v20[0] = *(a2 + 1);
  v20[1] = v6;
  v7 = (DWORD1(v20[0]) + (LODWORD(v20[0]) << 6) + (LODWORD(v20[0]) >> 2) + 2654435769u) ^ LODWORD(v20[0]);
  v8 = (WORD4(v20[0]) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (WORD5(v20[0]) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (HIDWORD(v20[0]) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (v6 + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  v12 = (SDWORD1(v6) + (v11 << 6) + (v11 >> 2) + 2654435769u) ^ v11;
  v21 = *(a2 + 12);
  v13 = (SDWORD2(v6) + (v12 << 6) + (v12 >> 2) + 2654435769u) ^ v12;
  v14 = (BYTE12(v6) + (v13 << 6) + (v13 >> 2) + 2654435769u) ^ v13;
  v15 = (HIWORD(v6) + (v14 << 6) + (v14 >> 2) + 2654435769u) ^ v14;
  v22 = ((v15 << 6) + v21 + (v15 >> 2) + 2654435769u) ^ v15;
  result = sub_3D3D90(a1 + 11, v20);
  if (a3 != a2)
  {
    v17 = a2[1];
    if (v17 != a3)
    {
      v18 = *a2;
      *(v18 + 8) = v17;
      *v17 = v18;
      v19 = *a3;
      *(v19 + 8) = a2;
      *a2 = v19;
      *a3 = a2;
      a2[1] = a3;
      --a1[2];
      ++a3[2];
    }
  }

  return result;
}

uint64_t sub_3D3D90(uint64_t *a1, int *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2)
  {
    return 0;
  }

  v4 = *(a2 + 5);
  v5 = *a1;
  v6 = v4 % (a1[1] - *a1);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  v15 = *(a2 + 28);
  v16 = *(a2 + 15);
  v17 = *(a2 + 32);
  v18 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 3);
  while (1)
  {
    if (*(v5 + v6) != 1)
    {
      if (!*(v5 + v6))
      {
        return 0;
      }

      v19 = v3 + 56 * v6;
      if (v4 == *(v19 + 40) && v7 == *v19 && v8 == *(v19 + 4) && *(v19 + 8) == v9 && *(v19 + 10) == v10 && v11 == *(v19 + 12) && v12 == *(v19 + 16) && v13 == *(v19 + 20) && v14 == *(v19 + 24) && v15 == *(v19 + 28) && *(v19 + 30) == v16 && *(v19 + 32) == v17)
      {
        break;
      }
    }

    if (v6 == v18 - 1)
    {
      v6 = 0;
    }

    else
    {
      ++v6;
    }
  }

  *(v5 + v6) = 1;
  v20 = a1[7] - 1;
  a1[7] = v20;
  if (v18 > 8 * v20)
  {
    sub_3D3F10(a1);
  }

  return 1;
}

void sub_3D3F10(uint64_t a1)
{
  v1 = 0;
  do
  {
    ++v1;
  }

  while (3 * *(a1 + 56) > (1 << v1));
  if (v1 < 0x3B)
  {
    operator new();
  }

  sub_1794();
}

uint64_t sub_3D40F8(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_3D415C(a1, i))
    {
      i -= 272;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_3D415C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 200))
  {
    sub_3D4270(a2);
    v3 = sub_2CD8C();
    sub_2CF24(v3, *(a2 + 200));
  }

  std::mutex::~mutex((a2 + 208));
  v4 = *(a2 + 112);
  if (v4)
  {
    *(a2 + 120) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  std::mutex::~mutex((a2 + 24));
  if (*(a2 + 16))
  {
    v6 = *(a2 + 8);
    v7 = *(*a2 + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    *(a2 + 16) = 0;
    if (v6 != a2)
    {
      do
      {
        v9 = v6[1];
        v10 = v6[9];
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v11 = v6;
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
            v6 = v11;
          }
        }

        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a2);
    }
  }
}

void sub_3D4270(uint64_t a1)
{
  v9 = &v9;
  v10 = &v9;
  v11 = 0;
  std::mutex::lock((a1 + 24));
  while (1)
  {
    v2 = *(a1 + 8);
    if (v2 == a1 || !*(a1 + 160))
    {
      break;
    }

    sub_3D43B0(a1, v2, &v9);
  }

  std::mutex::unlock((a1 + 24));
  if (v11)
  {
    v3 = v10;
    v4 = *(v9 + 8);
    v5 = *v10;
    *(v5 + 8) = v4;
    *v4 = v5;
    v11 = 0;
    if (v3 != &v9)
    {
      do
      {
        v6 = v3[1];
        v7 = v3[9];
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v8 = v3;
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
            v3 = v8;
          }
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != &v9);
    }
  }
}

void sub_3D4380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

void sub_3D4394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 24));
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D43B0(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[20] -= a2[10];
  v6 = *(a2 + 2);
  v20[0] = *(a2 + 1);
  v20[1] = v6;
  v7 = (DWORD1(v20[0]) + (LODWORD(v20[0]) << 6) + (LODWORD(v20[0]) >> 2) + 2654435769u) ^ LODWORD(v20[0]);
  v8 = (WORD4(v20[0]) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (WORD5(v20[0]) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (HIDWORD(v20[0]) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (v6 + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  v12 = (SDWORD1(v6) + (v11 << 6) + (v11 >> 2) + 2654435769u) ^ v11;
  v21 = *(a2 + 12);
  v13 = (SDWORD2(v6) + (v12 << 6) + (v12 >> 2) + 2654435769u) ^ v12;
  v14 = (BYTE12(v6) + (v13 << 6) + (v13 >> 2) + 2654435769u) ^ v13;
  v15 = (HIWORD(v6) + (v14 << 6) + (v14 >> 2) + 2654435769u) ^ v14;
  v22 = ((v15 << 6) + v21 + (v15 >> 2) + 2654435769u) ^ v15;
  result = sub_3D4530(a1 + 11, v20);
  if (a3 != a2)
  {
    v17 = a2[1];
    if (v17 != a3)
    {
      v18 = *a2;
      *(v18 + 8) = v17;
      *v17 = v18;
      v19 = *a3;
      *(v19 + 8) = a2;
      *a2 = v19;
      *a3 = a2;
      a2[1] = a3;
      --a1[2];
      ++a3[2];
    }
  }

  return result;
}

uint64_t sub_3D4530(uint64_t *a1, int *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2)
  {
    return 0;
  }

  v4 = *(a2 + 5);
  v5 = *a1;
  v6 = v4 % (a1[1] - *a1);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  v15 = *(a2 + 28);
  v16 = *(a2 + 15);
  v17 = *(a2 + 32);
  v18 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 3);
  while (1)
  {
    if (*(v5 + v6) != 1)
    {
      if (!*(v5 + v6))
      {
        return 0;
      }

      v19 = v3 + 56 * v6;
      if (v4 == *(v19 + 40) && v7 == *v19 && v8 == *(v19 + 4) && *(v19 + 8) == v9 && *(v19 + 10) == v10 && v11 == *(v19 + 12) && v12 == *(v19 + 16) && v13 == *(v19 + 20) && v14 == *(v19 + 24) && v15 == *(v19 + 28) && *(v19 + 30) == v16 && *(v19 + 32) == v17)
      {
        break;
      }
    }

    if (v6 == v18 - 1)
    {
      v6 = 0;
    }

    else
    {
      ++v6;
    }
  }

  *(v5 + v6) = 1;
  v20 = a1[7] - 1;
  a1[7] = v20;
  if (v18 > 8 * v20)
  {
    sub_3D46B0(a1);
  }

  return 1;
}

void sub_3D46B0(uint64_t a1)
{
  v1 = 0;
  do
  {
    ++v1;
  }

  while (3 * *(a1 + 56) > (1 << v1));
  if (v1 < 0x3B)
  {
    operator new();
  }

  sub_1794();
}

uint64_t sub_3D4898(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_2669A40[v2])(&v3, v1);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_3D48F0(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      *a2 = *a3;
      *a3 = v5;
      return result;
    }

    v6 = a3;
    result = (off_2669A40[v4])(&v8, v3);
    a3 = v6;
  }

  v7 = *a3;
  *a3 = 0;
  *v3 = v7;
  *(v3 + 8) = 1;
  return result;
}

uint64_t sub_3D4984(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_2669A40[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 8) = 2;
  return result;
}

uint64_t sub_3D4A0C(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 != -1)
  {
    if (v4 == 3)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_2669A40[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 8) = 3;
  return result;
}

uint64_t sub_3D4A94(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 != -1)
  {
    if (v4 == 4)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_2669A40[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 8) = 4;
  return result;
}

uint64_t sub_3D4B1C(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 != -1)
  {
    if (v4 == 5)
    {
      v5 = *a2;
      *a2 = *a3;
      *a3 = v5;
      return result;
    }

    v6 = a3;
    result = (off_2669A40[v4])(&v8, v3);
    a3 = v6;
  }

  v7 = *a3;
  *a3 = 0;
  *v3 = v7;
  *(v3 + 8) = 5;
  return result;
}

uint64_t sub_3D4BB0(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 != -1)
  {
    if (v4 == 6)
    {
      v5 = *a2;
      *a2 = *a3;
      *a3 = v5;
      return result;
    }

    v6 = a3;
    result = (off_2669A40[v4])(&v8, v3);
    a3 = v6;
  }

  v7 = *a3;
  *a3 = 0;
  *v3 = v7;
  *(v3 + 8) = 6;
  return result;
}

uint64_t sub_3D4C44(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2 != -1)
  {
    if (v2 == 7)
    {
      return result;
    }

    result = (off_2669A40[v2])(&v3, v1);
  }

  *(v1 + 8) = 7;
  return result;
}

uint64_t sub_3D4CA4(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2 != -1)
  {
    if (v2 == 8)
    {
      return result;
    }

    result = (off_2669A40[v2])(&v3, v1);
  }

  *(v1 + 8) = 8;
  return result;
}

char *sub_3D4D04(uint64_t a1, unsigned int a2, int a3)
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

  if (*(a1 + 880) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 888) = v3;
    v4 = *(a1 + 896);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 904) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 912) = v3;
    v4 = *(a1 + 920);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 928) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 936) = v3;
    v4 = *(a1 + 944);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 952) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 960) = v3;
    v4 = *(a1 + 968);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 936);
    v8 = *(a1 + 912);
    v9 = *(a1 + 888);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 888);
    }

    v11 = 36;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 912);
    }

    v13 = 37;
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
      v14 = *(a1 + 936);
    }

    v15 = *(a1 + 960);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 38;
    }

    v18 = sub_2D52A4(*a1, 9, a2, 1);
    v19 = 39;
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
  sub_3D4ED8(v21);
  return 0;
}

uint64_t sub_3D4ED8(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(9u);
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

void sub_3D4FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3D5750(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
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

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *&dword_10[6 * v2] = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_3D5890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

void sub_3D58C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669A98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3D5924(uint64_t a1)
{
  *a1 = xmmword_22918E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_3D5A88(a1, 0x800uLL, 0, 0x400uLL, 0);
  *(a1 + 40) = xmmword_22918E0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_3D5A88((a1 + 40), 0x800uLL, 0, 0x400uLL, 0);
  *(a1 + 80) = xmmword_22918E0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_3D6E20(a1 + 80, 0x800uLL, 0, 0x400uLL, 0);
  *(a1 + 120) = xmmword_22918E0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_3D6E20(a1 + 120, 0x800uLL, 0, 0x400uLL, 0);
  return a1;
}

void sub_3D5A14(_Unwind_Exception *a1)
{
  v5 = v4;
  sub_3D2694(v5);
  sub_3D2654(v3);
  sub_3D25F0(v2);
  sub_3D25F0(v1);
  _Unwind_Resume(a1);
}

void sub_3D5A58(_Unwind_Exception *a1)
{
  sub_3D2804(v2);
  sub_3D25F0(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_3D5A88(unint64_t *a1, unint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  v46 = a3;
  a1[1] = a2;
  v9 = std::thread::hardware_concurrency();
  v10 = 3;
  if (a5)
  {
    v10 = a5;
  }

  v11 = v10 * v9;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 * v9;
  }

  v13 = a4 * v12;
  if (v13 < 4.50359963e15)
  {
    v13 = (((v13 + v13) + 1) >> 1);
  }

  v14 = v13;
  v18 = v13 > 1;
  v15 = a2;
  if (!v18)
  {
    v14 = 1;
  }

  if (a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = (v15 / v16);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v14 > a2 || v11 > v17;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  *a1 = v19;
  v20 = v15 / v19;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_26:
  if (v20 > a4)
  {
    a4 = v20;
  }

  v45 = a4;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v34);
    sub_4A5C(&v34, "PartitionedLRUCache: creating ", 30);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, " partitions, ", 13);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, " bytes each", 11);
    if ((v44 & 0x10) != 0)
    {
      v25 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v25 = v40;
      }

      v26 = v39;
      v24 = v25 - v39;
      if (v25 - v39 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v24 = 0;
        v33 = 0;
LABEL_40:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 2u);
        if (v33 < 0)
        {
          operator delete(__dst);
        }

        if (v42 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v36);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_45;
      }

      v26 = v37;
      v24 = v38 - v37;
      if ((v38 - v37) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_54:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v33 = v24;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

    goto LABEL_40;
  }

LABEL_45:
  v28 = a1[2];
  for (i = a1[3]; i != v28; sub_3D2868(i))
  {
    i -= 25;
  }

  a1[3] = v28;
  result = sub_3D5F18(a1 + 2, *a1);
  if (*a1)
  {
    v30 = 0;
    result = a1[3];
    do
    {
      while (result >= a1[4])
      {
        result = sub_3D6C00((a1 + 2), &v45);
        a1[3] = result;
        if (++v30 >= *a1)
        {
          return result;
        }
      }

      v31 = v45;
      *result = result;
      *(result + 8) = result;
      *(result + 16) = xmmword_22913E0;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0;
      *(result + 144) = 0;
      *(result + 152) = 0;
      *(result + 160) = 0;
      *(result + 168) = v31;
      *(result + 184) = 0;
      *(result + 192) = 0;
      *(result + 176) = 0;
      result += 200;
      a1[3] = result;
      ++v30;
    }

    while (v30 < *a1);
  }

  return result;
}

void sub_3D5ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void *sub_3D5F18(void *result, unint64_t a2)
{
  if (0x8F5C28F5C28F5C29 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x147AE147AE147AFLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_3D607C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 200;
    sub_3D2868((i - 200));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_3D60D0(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = xmmword_22913E0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  std::mutex::lock((a2 + 24));
  *(a1 + 168) = *(a2 + 168);
  v4 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v4;
  for (i = a2; ; sub_3D61B8(a1, (i + 16), i + 32, *(i + 48), 0))
  {
    i = *(i + 8);
    if (i == a2)
    {
      break;
    }
  }

  std::mutex::unlock((a2 + 24));
  return a1;
}

void sub_3D6184(_Unwind_Exception *a1)
{
  sub_21DB4B4(v1 + 88);
  std::mutex::~mutex((v1 + 24));
  sub_3D2954(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3D61B8(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, int a5)
{
  if (*(a1 + 168) < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v39);
    v7 = sub_4A5C(&v39, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, *(a1 + 168));
    sub_4A5C(v10, ")", 1);
    if ((v49 & 0x10) != 0)
    {
      v33 = v48;
      if (v48 < v45)
      {
        v48 = v45;
        v33 = v45;
      }

      v34 = v44;
      v11 = v33 - v44;
      if (v33 - v44 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if ((v49 & 8) == 0)
      {
        v11 = 0;
        HIBYTE(v38) = 0;
LABEL_42:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__dst);
        }

        if (v47 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v40);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v34 = v41;
      v11 = v43 - v41;
      if ((v43 - v41) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_49:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v38) = v11;
    if (v11)
    {
      memmove(&__dst, v34, v11);
    }

    goto LABEL_42;
  }

  __dst = &__dst;
  p_dst = &__dst;
  v38 = 0;
  std::mutex::lock((a1 + 24));
  v15 = *(a1 + 120);
  v16 = *(a1 + 112);
  if (v16 == v15)
  {
    goto LABEL_17;
  }

  v17 = *(a2 + 1);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96) - v18;
  v20 = v17 % v19;
  v21 = v19 - 1;
  while (*(v18 + v20) != 2)
  {
    if (!*(v18 + v20))
    {
      goto LABEL_20;
    }

LABEL_9:
    if (v20 == v21)
    {
      v20 = 0;
    }

    else
    {
      ++v20;
    }
  }

  v22 = v16 + 24 * v20;
  if (*(v22 + 8) != v17 || *v22 != *a2 || *(v22 + 4) != *(a2 + 1))
  {
    goto LABEL_9;
  }

  v16 += 24 * v20;
LABEL_17:
  if (v16 == v15)
  {
LABEL_20:
    ++*(a1 + 176);
    v23 = *(a1 + 8);
    if (v23 != a1)
    {
      v24 = *(a1 + 168) - a4;
      do
      {
        if (*(a1 + 160) <= v24)
        {
          break;
        }

        sub_3D6740(a1, v23, &__dst);
        v23 = *(a1 + 8);
      }

      while (v23 != a1);
    }

    v39 = *a2;
    v26 = *a3;
    v25 = *(a3 + 8);
    v40.__locale_ = v26;
    v41 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
    }

    v42 = a4;
    operator new();
  }

  if (a5)
  {
    sub_3D6740(a1, *(v16 + 16), &__dst);
    goto LABEL_20;
  }

  std::mutex::unlock((a1 + 24));
  if (v38)
  {
    v27 = p_dst;
    v28 = *(__dst + 1);
    v29 = *p_dst;
    v29[1] = v28;
    *v28 = v29;
    v38 = 0;
    if (v27 != &__dst)
    {
      do
      {
        v30 = v27[1];
        v31 = v27[5];
        if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v32 = v27;
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
          v27 = v32;
        }

        operator delete(v27);
        v27 = v30;
      }

      while (v30 != &__dst);
    }
  }

  return 0;
}

void sub_3D6698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::mutex::unlock((v16 + 24));
  sub_3D2954(&__p);
  _Unwind_Resume(a1);
}

void *sub_3D6740(void *result, uint64_t *a2, uint64_t *a3)
{
  result[20] -= a2[6];
  v3 = result[14];
  v4 = result[15];
  if (v3 != v4)
  {
    v5 = a2[2];
    v6 = __ROR8__(v5, 32);
    v7 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v6 ^ (v6 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v6 ^ (v6 >> 33))) >> 33));
    v8 = v7 ^ (v7 >> 33);
    v9 = result[11];
    v10 = v8 % (result[12] - v9);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    while (1)
    {
      if (*(v9 + v10) != 1)
      {
        if (!*(v9 + v10))
        {
          goto LABEL_12;
        }

        v12 = (v3 + 24 * v10);
        if (v8 == v12[1] && *v12 == v5)
        {
          break;
        }
      }

      if (v10 == v11 - 1)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }
    }

    *(v9 + v10) = 1;
    v13 = result[18] - 1;
    result[18] = v13;
    if (v11 > 8 * v13)
    {
      sub_3D6A50((result + 11));
    }
  }

LABEL_12:
  if (a3 != a2)
  {
    v14 = a2[1];
    if (v14 != a3)
    {
      v15 = *a2;
      *(v15 + 8) = v14;
      *v14 = v15;
      v16 = *a3;
      *(v16 + 8) = a2;
      *a2 = v16;
      *a3 = a2;
      a2[1] = a3;
      --result[2];
      ++a3[2];
    }
  }

  return result;
}

uint64_t sub_3D68B8(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = a1[4];
  v4 = a1[3];
  v5 = v4;
  if (v4 != v3)
  {
    v6 = *(a2 + 8);
    v7 = a1[1] - *a1;
    v8 = v6 % v7;
    v9 = v7 - 1;
    while (1)
    {
      if (*(*a1 + v8) == 2)
      {
        v10 = v4 + 24 * v8;
        if (*(v10 + 8) == v6 && *v10 == *a2 && *(v10 + 4) == *(a2 + 4))
        {
          v5 = v4 + 24 * v8;
          break;
        }
      }

      else if (!*(*a1 + v8))
      {
        goto LABEL_14;
      }

      if (v8 == v9)
      {
        v8 = 0;
      }

      else
      {
        ++v8;
      }
    }
  }

  if (v5 != v3)
  {
    return 0;
  }

LABEL_14:
  if (2 * a1[8] + 2 > 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3))
  {
    sub_3D6A50(a1);
  }

  v12 = *a1;
  v13 = *(a2 + 8) % (a1[1] - *a1);
  v14 = *(*a1 + v13);
  if (*(*a1 + v13))
  {
    while (v14 != 1)
    {
      if (v13 == 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3) - 1)
      {
        v13 = 0;
      }

      else
      {
        ++v13;
      }

      v14 = *(v12 + v13);
      if (!*(v12 + v13))
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    ++a1[8];
  }

  ++a1[7];
  *(v12 + v13) = 2;
  v15 = 24 * v13;
  *(a1[3] + v15) = *a2;
  *(a1[3] + v15 + 16) = *a3;
  return 1;
}

void sub_3D6A50(uint64_t a1)
{
  v1 = 0;
  do
  {
    ++v1;
  }

  while (3 * *(a1 + 56) > (1 << v1));
  if (v1 < 0x3C)
  {
    operator new();
  }

  sub_1794();
}

uint64_t sub_3D6C00(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0x8F5C28F5C28F5C29 * (v4 >> 3) + 1;
  if (v5 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x1EB851EB851EB852 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - v2) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v7 = 0x147AE147AE147AELL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * (v4 >> 3);
  v9 = *a2;
  *v8 = v8;
  *(v8 + 8) = v8;
  *(v8 + 16) = xmmword_22913E0;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = v9;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 0;
  v10 = v8 + 200;
  if (v2 != v3)
  {
    v11 = 0;
    do
    {
      sub_3D60D0(v11 * 8, &v2[v11]);
      v11 += 25;
    }

    while (&v2[v11] != v3);
    do
    {
      sub_3D2868(v2);
      v2 += 25;
    }

    while (v2 != v3);
    v2 = *a1;
    v10 = 8 * (v4 >> 3) + 200;
  }

  *a1 = v8 - v4;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v10;
}

unint64_t sub_3D6E20(uint64_t a1, unint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  v44 = a3;
  *(a1 + 8) = a2;
  v9 = std::thread::hardware_concurrency();
  v10 = 3;
  if (a5)
  {
    v10 = a5;
  }

  v11 = v10 * v9;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 * v9;
  }

  v13 = a4 * v12;
  if (v13 < 4.50359963e15)
  {
    v13 = (((v13 + v13) + 1) >> 1);
  }

  v14 = v13;
  v18 = v13 > 1;
  v15 = a2;
  if (!v18)
  {
    v14 = 1;
  }

  if (a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = (v15 / v16);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v14 > a2 || v11 > v17;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  *a1 = v19;
  v20 = v15 / v19;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_26:
  if (v20 > a4)
  {
    a4 = v20;
  }

  v43 = a4;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v32);
    sub_4A5C(&v32, "PartitionedLRUCache: creating ", 30);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, " partitions, ", 13);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, " bytes each", 11);
    if ((v42 & 0x10) != 0)
    {
      v25 = v41;
      if (v41 < v38)
      {
        v41 = v38;
        v25 = v38;
      }

      v26 = v37;
      v24 = v25 - v37;
      if (v25 - v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if ((v42 & 8) == 0)
      {
        v24 = 0;
        v31 = 0;
LABEL_40:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 2u);
        if (v31 < 0)
        {
          operator delete(__dst);
        }

        if (v40 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v34);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_45;
      }

      v26 = v35;
      v24 = v36 - v35;
      if ((v36 - v35) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_52:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v31 = v24;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

    goto LABEL_40;
  }

LABEL_45:
  sub_3D26D0((a1 + 16));
  result = sub_3D7290((a1 + 16), *a1);
  if (*a1)
  {
    v28 = 0;
    result = *(a1 + 24);
    do
    {
      while (result >= *(a1 + 32))
      {
        result = sub_3D813C(a1 + 16, &v43);
        *(a1 + 24) = result;
        if (++v28 >= *a1)
        {
          return result;
        }
      }

      v29 = v43;
      *result = result;
      *(result + 8) = result;
      *(result + 16) = xmmword_22913E0;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0;
      *(result + 144) = 0;
      *(result + 152) = 0;
      *(result + 160) = 0;
      *(result + 168) = v29;
      *(result + 184) = 0;
      *(result + 192) = 0;
      *(result + 176) = 0;
      result += 200;
      *(a1 + 24) = result;
      ++v28;
    }

    while (v28 < *a1);
  }

  return result;
}

void sub_3D7244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void *sub_3D7290(void *result, unint64_t a2)
{
  if (0x8F5C28F5C28F5C29 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x147AE147AE147AFLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3D73DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3D7554(va);
  _Unwind_Resume(a1);
}

void sub_3D73F0(char **a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  v19 = v7;
  if (*a1 != v5)
  {
    v8 = v4 + v6 - v5;
    v9 = v6;
    do
    {
      sub_3D758C(v8, v9);
      v9 += 200;
      v8 = v19 + 200;
      v19 += 200;
    }

    while (v9 != v5);
    do
    {
      v10 = *(v6 + 14);
      if (v10)
      {
        *(v6 + 15) = v10;
        operator delete(v10);
      }

      v11 = *(v6 + 11);
      if (v11)
      {
        *(v6 + 12) = v11;
        operator delete(v11);
      }

      std::mutex::~mutex((v6 + 24));
      if (*(v6 + 2))
      {
        v12 = *(v6 + 1);
        v13 = *(*v6 + 8);
        v14 = *v12;
        *(v14 + 8) = v13;
        *v13 = v14;
        *(v6 + 2) = 0;
        if (v12 != v6)
        {
          do
          {
            v15 = v12[1];
            operator delete(v12);
            v12 = v15;
          }

          while (v15 != v6);
        }
      }

      v6 += 200;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v16 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
}

uint64_t sub_3D7554(uint64_t a1)
{
  sub_3D8084(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_3D758C(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = xmmword_22913E0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  std::mutex::lock((a2 + 24));
  *(a1 + 168) = *(a2 + 168);
  v4 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v4;
  for (i = a2; ; sub_3D7674(a1, (i + 16), i + 16, *(i + 32), 0))
  {
    i = *(i + 8);
    if (i == a2)
    {
      break;
    }
  }

  std::mutex::unlock((a2 + 24));
  return a1;
}

void sub_3D7640(_Unwind_Exception *a1)
{
  sub_21DB4B4(v1 + 88);
  std::mutex::~mutex((v1 + 24));
  sub_244F9C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3D7674(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, int a5)
{
  if (*(a1 + 168) < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v33);
    v7 = sub_4A5C(&v33, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, *(a1 + 168));
    sub_4A5C(v10, ")", 1);
    if ((v43 & 0x10) != 0)
    {
      v28 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v28 = v39;
      }

      v29 = v38;
      v11 = v28 - v38;
      if (v28 - v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v11 = 0;
        v32 = 0;
LABEL_37:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (v32 < 0)
        {
          operator delete(__dst);
        }

        if (v41 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v29 = v36;
      v11 = v37 - v36;
      if ((v37 - v36) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_44:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v32 = v11;
    if (v11)
    {
      memmove(&__dst, v29, v11);
    }

    goto LABEL_37;
  }

  v33 = &v33;
  v34 = &v33;
  v35.__locale_ = 0;
  std::mutex::lock((a1 + 24));
  v14 = *(a1 + 120);
  v15 = *(a1 + 112);
  if (v15 == v14)
  {
    goto LABEL_17;
  }

  v16 = *(a2 + 1);
  v17 = *(a1 + 88);
  v18 = *(a1 + 96) - v17;
  v19 = v16 % v18;
  v20 = v18 - 1;
  while (*(v17 + v19) != 2)
  {
    if (!*(v17 + v19))
    {
      goto LABEL_20;
    }

LABEL_9:
    if (v19 == v20)
    {
      v19 = 0;
    }

    else
    {
      ++v19;
    }
  }

  v21 = v15 + 24 * v19;
  if (*(v21 + 8) != v16 || *v21 != *a2 || *(v21 + 4) != *(a2 + 1))
  {
    goto LABEL_9;
  }

  v15 += 24 * v19;
LABEL_17:
  if (v15 == v14)
  {
LABEL_20:
    ++*(a1 + 176);
    v22 = *(a1 + 8);
    if (v22 != a1)
    {
      v23 = *(a1 + 168) - a4;
      do
      {
        if (*(a1 + 160) <= v23)
        {
          break;
        }

        sub_3D7B5C(a1, v22, &v33);
        v22 = *(a1 + 8);
      }

      while (v22 != a1);
    }

    __dst = *a2;
    operator new();
  }

  if (a5)
  {
    sub_3D7B5C(a1, *(v15 + 16), &v33);
    goto LABEL_20;
  }

  std::mutex::unlock((a1 + 24));
  if (v35.__locale_)
  {
    v24 = v34;
    v25 = v33[1];
    v26 = *v34;
    v26[1] = v25;
    *v25 = v26;
    v35.__locale_ = 0;
    if (v24 != &v33)
    {
      do
      {
        v27 = v24[1];
        operator delete(v24);
        v24 = v27;
      }

      while (v27 != &v33);
    }
  }

  return 0;
}

void sub_3D7AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  std::mutex::unlock((v17 + 24));
  sub_244F9C(&a17);
  _Unwind_Resume(a1);
}

void *sub_3D7B5C(void *result, uint64_t *a2, uint64_t *a3)
{
  result[20] -= a2[4];
  v3 = result[14];
  v4 = result[15];
  if (v3 != v4)
  {
    v5 = a2[2];
    v6 = __ROR8__(v5, 32);
    v7 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v6 ^ (v6 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v6 ^ (v6 >> 33))) >> 33));
    v8 = v7 ^ (v7 >> 33);
    v9 = result[11];
    v10 = v8 % (result[12] - v9);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    while (1)
    {
      if (*(v9 + v10) != 1)
      {
        if (!*(v9 + v10))
        {
          goto LABEL_12;
        }

        v12 = (v3 + 24 * v10);
        if (v8 == v12[1] && *v12 == v5)
        {
          break;
        }
      }

      if (v10 == v11 - 1)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }
    }

    *(v9 + v10) = 1;
    v13 = result[18] - 1;
    result[18] = v13;
    if (v11 > 8 * v13)
    {
      sub_3D7E6C((result + 11));
    }
  }

LABEL_12:
  if (a3 != a2)
  {
    v14 = a2[1];
    if (v14 != a3)
    {
      v15 = *a2;
      *(v15 + 8) = v14;
      *v14 = v15;
      v16 = *a3;
      *(v16 + 8) = a2;
      *a2 = v16;
      *a3 = a2;
      a2[1] = a3;
      --result[2];
      ++a3[2];
    }
  }

  return result;
}

uint64_t sub_3D7CD4(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = a1[4];
  v4 = a1[3];
  v5 = v4;
  if (v4 != v3)
  {
    v6 = *(a2 + 8);
    v7 = a1[1] - *a1;
    v8 = v6 % v7;
    v9 = v7 - 1;
    while (1)
    {
      if (*(*a1 + v8) == 2)
      {
        v10 = v4 + 24 * v8;
        if (*(v10 + 8) == v6 && *v10 == *a2 && *(v10 + 4) == *(a2 + 4))
        {
          v5 = v4 + 24 * v8;
          break;
        }
      }

      else if (!*(*a1 + v8))
      {
        goto LABEL_14;
      }

      if (v8 == v9)
      {
        v8 = 0;
      }

      else
      {
        ++v8;
      }
    }
  }

  if (v5 != v3)
  {
    return 0;
  }

LABEL_14:
  if (2 * a1[8] + 2 > 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3))
  {
    sub_3D7E6C(a1);
  }

  v12 = *a1;
  v13 = *(a2 + 8) % (a1[1] - *a1);
  v14 = *(*a1 + v13);
  if (*(*a1 + v13))
  {
    while (v14 != 1)
    {
      if (v13 == 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3) - 1)
      {
        v13 = 0;
      }

      else
      {
        ++v13;
      }

      v14 = *(v12 + v13);
      if (!*(v12 + v13))
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    ++a1[8];
  }

  ++a1[7];
  *(v12 + v13) = 2;
  v15 = 24 * v13;
  *(a1[3] + v15) = *a2;
  *(a1[3] + v15 + 16) = *a3;
  return 1;
}

void sub_3D7E6C(uint64_t a1)
{
  v1 = 0;
  do
  {
    ++v1;
  }

  while (3 * *(a1 + 56) > (1 << v1));
  if (v1 < 0x3C)
  {
    operator new();
  }

  sub_1794();
}

uint64_t sub_3D801C(uint64_t a1)
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
        v4 -= 25;
        sub_3D2780(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_3D8084(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v5 = (i - 200);
    *(a1 + 16) = i - 200;
    v6 = *(i - 88);
    if (v6)
    {
      *(i - 80) = v6;
      operator delete(v6);
    }

    v7 = *(i - 112);
    if (v7)
    {
      *(i - 104) = v7;
      operator delete(v7);
    }

    std::mutex::~mutex((i - 176));
    if (*(i - 184))
    {
      v8 = *(i - 192);
      v9 = *(*(i - 200) + 8);
      v10 = *v8;
      *(v10 + 8) = v9;
      *v9 = v10;
      *(i - 184) = 0;
      if (v8 != v5)
      {
        do
        {
          v11 = v8[1];
          operator delete(v8);
          v8 = v11;
        }

        while (v11 != v5);
      }
    }
  }
}

uint64_t sub_3D813C(uint64_t a1, uint64_t *a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v5 = 0x147AE147AE147AELL;
  }

  else
  {
    v5 = v3;
  }

  v23 = a1;
  if (v5)
  {
    if (v5 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 200 * v2;
  __p = 0;
  v20 = v6;
  v7 = *a2;
  *v6 = v6;
  *(v6 + 8) = v6;
  *(v6 + 16) = xmmword_22913E0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = v7;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  *(v6 + 192) = 0;
  v21 = 200 * v2 + 200;
  v22 = 0;
  sub_3D73F0(a1, &__p);
  v8 = *(a1 + 8);
  v9 = v20;
  while (1)
  {
    v10 = v21;
    if (v21 == v9)
    {
      break;
    }

    v11 = (v21 - 200);
    v21 -= 200;
    v12 = *(v10 - 88);
    if (v12)
    {
      *(v10 - 80) = v12;
      operator delete(v12);
    }

    v13 = *(v10 - 112);
    if (v13)
    {
      *(v10 - 104) = v13;
      operator delete(v13);
    }

    std::mutex::~mutex((v10 - 176));
    if (*(v10 - 184))
    {
      v14 = *(v10 - 192);
      v15 = *(*(v10 - 200) + 8);
      v16 = *v14;
      *(v16 + 8) = v15;
      *v15 = v16;
      *(v10 - 184) = 0;
      if (v14 != v11)
      {
        do
        {
          v17 = v14[1];
          operator delete(v14);
          v14 = v17;
        }

        while (v17 != v11);
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_3D830C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3D7554(va);
  _Unwind_Resume(a1);
}

void sub_3D8340(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669AE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_3D83A0(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3D847C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3D8490(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D8490(uint64_t a1)
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
    *(a1 + 16) = v3 - 272;
    sub_3D415C(v4, v3 - 272);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_3D84E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0uLL;
    v9 = a2;
    do
    {
      v10 = *(v9 + 168);
      *a4 = a4;
      *(a4 + 8) = a4;
      *(a4 + 16) = xmmword_22913E0;
      *(a4 + 32) = v8;
      *(a4 + 48) = v8;
      *(a4 + 64) = v8;
      *(a4 + 80) = v8;
      *(a4 + 96) = v8;
      *(a4 + 112) = v8;
      *(a4 + 128) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 168) = v10;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = 0;
      if (*(v9 + 200))
      {
        v11 = sub_2CD8C();
        sub_2CD98(v11);
      }

      *(a4 + 200) = 0;
      *(a4 + 208) = 850045863;
      v8 = 0uLL;
      *(a4 + 216) = 0u;
      *(a4 + 232) = 0u;
      *(a4 + 248) = 0u;
      *(a4 + 264) = 0;
      v9 += 272;
      a4 += 272;
    }

    while (v9 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_3D415C(a1, v6);
        v6 += 272;
      }

      while (v6 != a3);
    }
  }
}

void sub_3D8664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3D8698(va);
  _Unwind_Resume(a1);
}

void sub_3D8678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3BC58C(v3);
  sub_3D8698(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D8698(uint64_t a1)
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
        v4 -= 272;
        sub_3D415C(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

double sub_3D8700(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v5 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v14 + 1) = 0;
  v7 = *a2;
  v8 = *a3;
  *v6 = v6;
  *(v6 + 8) = v6;
  *(v6 + 16) = xmmword_22913E0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = v7;
  *(v6 + 184) = 0;
  *(v6 + 192) = 0;
  *(v6 + 176) = 0;
  if (v8 == 1)
  {
    v9 = sub_2CD8C();
    sub_2CD98(v9);
  }

  *(v6 + 200) = 0;
  *(v6 + 208) = 850045863;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0;
  *&v14 = v6 + 272;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  sub_3D84E8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  result = *&v14;
  *(a1 + 1) = v14;
  if (v12)
  {
    operator delete(v12);
    return *&v14;
  }

  return result;
}

void sub_3D88E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3BC58C(v4);
  sub_3D8490(va);
  _Unwind_Resume(a1);
}

void sub_3D8908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3D8490(va);
  _Unwind_Resume(a1);
}

void *sub_3D891C(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3D89F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3D8A0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D8A0C(uint64_t a1)
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
    *(a1 + 16) = v3 - 272;
    sub_3D39BC(v4, v3 - 272);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_3D8A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0uLL;
    v9 = a2;
    do
    {
      v10 = *(v9 + 168);
      *a4 = a4;
      *(a4 + 8) = a4;
      *(a4 + 16) = xmmword_22913E0;
      *(a4 + 32) = v8;
      *(a4 + 48) = v8;
      *(a4 + 64) = v8;
      *(a4 + 80) = v8;
      *(a4 + 96) = v8;
      *(a4 + 112) = v8;
      *(a4 + 128) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 168) = v10;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = 0;
      if (*(v9 + 200))
      {
        v11 = sub_2CD8C();
        sub_2CD98(v11);
      }

      *(a4 + 200) = 0;
      *(a4 + 208) = 850045863;
      v8 = 0uLL;
      *(a4 + 216) = 0u;
      *(a4 + 232) = 0u;
      *(a4 + 248) = 0u;
      *(a4 + 264) = 0;
      v9 += 272;
      a4 += 272;
    }

    while (v9 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_3D39BC(a1, v6);
        v6 += 272;
      }

      while (v6 != a3);
    }
  }
}

void sub_3D8BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3D8C14(va);
  _Unwind_Resume(a1);
}

void sub_3D8BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3BC58C(v3);
  sub_3D8C14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D8C14(uint64_t a1)
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
        v4 -= 272;
        sub_3D39BC(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

double sub_3D8C7C(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v5 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v14 + 1) = 0;
  v7 = *a2;
  v8 = *a3;
  *v6 = v6;
  *(v6 + 8) = v6;
  *(v6 + 16) = xmmword_22913E0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = v7;
  *(v6 + 184) = 0;
  *(v6 + 192) = 0;
  *(v6 + 176) = 0;
  if (v8 == 1)
  {
    v9 = sub_2CD8C();
    sub_2CD98(v9);
  }

  *(v6 + 200) = 0;
  *(v6 + 208) = 850045863;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0;
  *&v14 = v6 + 272;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  sub_3D8A64(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  result = *&v14;
  *(a1 + 1) = v14;
  if (v12)
  {
    operator delete(v12);
    return *&v14;
  }

  return result;
}

void sub_3D8E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3BC58C(v4);
  sub_3D8A0C(va);
  _Unwind_Resume(a1);
}

void sub_3D8E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3D8A0C(va);
  _Unwind_Resume(a1);
}

void *sub_3D8E98(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3D8F74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3D8F88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D8F88(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    if (*(i - 72))
    {
      sub_3D3388(i - 272);
      v4 = sub_2CD8C();
      sub_2CF24(v4, *(i - 72));
    }

    std::mutex::~mutex((i - 64));
    sub_3BDA1C((i - 272));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_3D9010(uint64_t a1, uint64_t a2, std::mutex *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = 0uLL;
    v7 = a2;
    do
    {
      v9 = *(v7 + 168);
      *a4 = a4;
      *(a4 + 8) = a4;
      *(a4 + 16) = xmmword_22913E0;
      *(a4 + 32) = v6;
      *(a4 + 48) = v6;
      *(a4 + 64) = v6;
      *(a4 + 80) = v6;
      *(a4 + 96) = v6;
      *(a4 + 112) = v6;
      *(a4 + 128) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 168) = v9;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = 0;
      if (*(v7 + 200))
      {
        v10 = sub_2CD8C();
        sub_2CD98(v10);
      }

      result = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = 850045863;
      v6 = 0uLL;
      *(a4 + 216) = 0u;
      *(a4 + 232) = 0u;
      *(a4 + 248) = 0u;
      *(a4 + 264) = 0;
      v7 += 272;
      a4 += 272;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v11 = (a2 + 208);
      do
      {
        if (*&v11[-1].__m_.__opaque[48])
        {
          sub_3D3388(&v11[-4].__m_.__opaque[40]);
          v13 = sub_2CD8C();
          sub_2CF24(v13, *&v11[-1].__m_.__opaque[48]);
        }

        std::mutex::~mutex(v11);
        result = sub_3BDA1C(&v11[-4].__m_.__opaque[40]);
        v12 = v11 + 1;
        v11 = (v11 + 272);
      }

      while (v12 != a3);
    }
  }

  return result;
}

void sub_3D921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3BDA1C(v3);
  sub_3D9240(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D9240(uint64_t a1)
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
        v4 -= 272;
        sub_3D332C(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_3D92A8(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v4;
  }

  v21 = a1;
  if (v6)
  {
    if (v6 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 272 * v3;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  v8 = *a2;
  v9 = *a3;
  *v7 = v7;
  *(v7 + 8) = v7;
  *(v7 + 16) = xmmword_22913E0;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = v8;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0;
  v10 = v7;
  *(v7 + 176) = 0;
  if (v9 == 1)
  {
    v11 = sub_2CD8C();
    sub_2CD98(v11);
  }

  *(v7 + 200) = 0;
  *(v7 + 208) = 850045863;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0;
  *&v20 = v7 + 272;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  sub_3D9010(a1, *a1, v12, v10 + *a1 - v12);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_3D8F88(&v18);
  return v17;
}

void sub_3D949C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3BDA1C(v4);
  sub_3D8F88(va);
  _Unwind_Resume(a1);
}

void sub_3D94BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3D8F88(va);
  _Unwind_Resume(a1);
}

void *sub_3D94D0(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3D95AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3D95C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D95C0(uint64_t a1)
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
    *(a1 + 16) = v3 - 272;
    sub_3D2AF8(v4, v3 - 272);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_3D9618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0uLL;
    v9 = a2;
    do
    {
      v10 = *(v9 + 168);
      *a4 = a4;
      *(a4 + 8) = a4;
      *(a4 + 16) = xmmword_22913E0;
      *(a4 + 32) = v8;
      *(a4 + 48) = v8;
      *(a4 + 64) = v8;
      *(a4 + 80) = v8;
      *(a4 + 96) = v8;
      *(a4 + 112) = v8;
      *(a4 + 128) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 168) = v10;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = 0;
      if (*(v9 + 200))
      {
        v11 = sub_2CD8C();
        sub_2CD98(v11);
      }

      *(a4 + 200) = 0;
      *(a4 + 208) = 850045863;
      v8 = 0uLL;
      *(a4 + 216) = 0u;
      *(a4 + 232) = 0u;
      *(a4 + 248) = 0u;
      *(a4 + 264) = 0;
      v9 += 272;
      a4 += 272;
    }

    while (v9 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_3D2AF8(a1, v6);
        v6 += 272;
      }

      while (v6 != a3);
    }
  }
}

void sub_3D9794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3D97C8(va);
  _Unwind_Resume(a1);
}

void sub_3D97A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3D2D4C(v3);
  sub_3D97C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D97C8(uint64_t a1)
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
        v4 -= 272;
        sub_3D2AF8(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

double sub_3D9830(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v5 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v14 + 1) = 0;
  v7 = *a2;
  v8 = *a3;
  *v6 = v6;
  *(v6 + 8) = v6;
  *(v6 + 16) = xmmword_22913E0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = v7;
  *(v6 + 184) = 0;
  *(v6 + 192) = 0;
  *(v6 + 176) = 0;
  if (v8 == 1)
  {
    v9 = sub_2CD8C();
    sub_2CD98(v9);
  }

  *(v6 + 200) = 0;
  *(v6 + 208) = 850045863;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0;
  *&v14 = v6 + 272;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  sub_3D9618(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  result = *&v14;
  *(a1 + 1) = v14;
  if (v12)
  {
    operator delete(v12);
    return *&v14;
  }

  return result;
}

void sub_3D9A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3D2D4C(v4);
  sub_3D95C0(va);
  _Unwind_Resume(a1);
}

void sub_3D9A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3D95C0(va);
  _Unwind_Resume(a1);
}

void sub_3D9A4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_3C0014(a1, 1u, 1);
  if (v3)
  {
    v4 = &v3[*&v3[-*v3 + 8]];
    v5 = *v4;
    v6 = *&v4[v5];
    if (v6 >= 0x17)
    {
      operator new();
    }

    v8 = *&v4[v5];
    if (v6)
    {
      memcpy(&__p, &v4[v5 + 4], v6);
    }

    *(&__p + v6) = 0;
    sub_66E3C(&__p, &v9);
    if (v10 != 5)
    {
      sub_5AF20();
    }

    sub_5ADDC(a2, v9);
    if (v10 != -1)
    {
      (off_2669A40[v10])(&v11, &v9);
    }

    v10 = -1;
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {

    sub_5F328(a2);
  }
}

void sub_3D9BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D9BF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_3C0314(a1, 1u, 1);
  if (v3)
  {
    v4 = &v3[*&v3[-*v3 + 8]];
    v5 = *v4;
    v6 = *&v4[v5];
    if (v6 >= 0x17)
    {
      operator new();
    }

    v8 = *&v4[v5];
    if (v6)
    {
      memcpy(&__p, &v4[v5 + 4], v6);
    }

    *(&__p + v6) = 0;
    sub_66E3C(&__p, &v9);
    if (v10 != 5)
    {
      sub_5AF20();
    }

    sub_5ADDC(a2, v9);
    if (v10 != -1)
    {
      (off_2669A40[v10])(&v11, &v9);
    }

    v10 = -1;
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {

    sub_5F328(a2);
  }
}

void sub_3D9D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D9D94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_3C0614(a1, 1u, 1);
  if (v3)
  {
    v4 = &v3[*&v3[-*v3 + 8]];
    v5 = *v4;
    v6 = *&v4[v5];
    if (v6 >= 0x17)
    {
      operator new();
    }

    v8 = *&v4[v5];
    if (v6)
    {
      memcpy(&__p, &v4[v5 + 4], v6);
    }

    *(&__p + v6) = 0;
    sub_66E3C(&__p, &v9);
    if (v10 != 5)
    {
      sub_5AF20();
    }

    sub_5ADDC(a2, v9);
    if (v10 != -1)
    {
      (off_2669A40[v10])(&v11, &v9);
    }

    v10 = -1;
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {

    sub_5F328(a2);
  }
}

void sub_3D9F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D9F38(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  sub_2D79F0();
}

void sub_3DA068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_3DA1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_3DB3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30)
{
  if (__p)
  {
    STACK[0x350] = __p;
    operator delete(__p);
  }

  sub_3DB674((v30 - 192));
  sub_3DB674(&STACK[0x290]);
  sub_3DB674(&STACK[0x2E0]);
  sub_3DB6B8(&a30);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void *sub_3DB5C4(void *a1)
{
  v2 = a1[57];
  if (v2)
  {
    v3 = a1[58];
    v4 = a1[57];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = a1[57];
    }

    a1[58] = v2;
    operator delete(v4);
  }

  sub_3874((a1 + 46));
  v7 = a1[12];
  if (v7)
  {
    a1[13] = v7;
    operator delete(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    a1[7] = v8;
    operator delete(v8);
  }

  return a1;
}

void *sub_3DB674(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_3DB6B8(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_3DB71C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v8 = a2;
  v9 = a3;
  v6 = a4;
  v7 = a5;
  sub_5C0C0(v5);
}

void sub_3DB91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_3DB9A4(&a17);
    _Unwind_Resume(a1);
  }

  sub_3DB9A4(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_3DB9A4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2669B28[v4])(&v11, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    do
    {
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_2669B28[v8])(&v12, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void sub_3DBAC0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_438678(a1, a2, a3);
  sub_112D984(v6 + 40, a3, a2);
  *(a1 + 5352) = sub_3AF6B4(a2);
  v10[23] = 20;
  strcpy(v10, "DrivingRouteAnalyzer");
  __p[0] = 0;
  __p[1] = 0;
  *&v9 = 0;
  v7 = sub_3AEC94(a2, v10, __p);
  sub_118D3AC((a1 + 5360), a2, v7, a3);
}

void sub_3DC038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_3DC10C(&__p);
  sub_3DC10C(v30);
  v32 = v29[682];
  if (v32)
  {
    v29[683] = v32;
    operator delete(v32);
  }

  sub_3E3DF0(v29 + 5);
  _Unwind_Resume(a1);
}

void **sub_3DC10C(void **a1)
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
    v5 = *(v3 - 3);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 5);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 5);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 48;
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

void sub_3DC214(uint64_t a1, uint64_t *a2, __int128 **a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, uint64_t *a8)
{
  *(a1 + 6084) = 0;
  *(a1 + 6068) = 0u;
  if (*(a1 + 6064) != 1)
  {
    return;
  }

  v218 = (a1 + 4096);
  *v246 = 0uLL;
  v247 = 0uLL;
  v248 = 1065353216;
  v11 = *(a6 + 8);
  v12 = *(a6 + 16);
  while (v11 != v12)
  {
    v13 = *v11;
    v14 = v11[1];
    while (v13 != v14)
    {
      if (*(v13 + 23) < 0)
      {
        sub_325C(v251, *v13, *(v13 + 1));
      }

      else
      {
        v15 = *v13;
        v252 = *(v13 + 2);
        *v251 = v15;
      }

      *__p = *v251;
      v16 = v252;
      v251[1] = 0;
      v251[0] = 0;
      *&v253 = v13;
      v252 = 0;
      *v262 = v16;
      *&v262[8] = v13;
      sub_3E5A34(v246, __p);
      if ((v262[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v252) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      else if ((SHIBYTE(v252) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(v251[0]);
LABEL_7:
      v13 += 5;
    }

    v11 += 9;
  }

  *v243 = 0u;
  v244 = 0u;
  v245 = 1065353216;
  v18 = *a3;
  v17 = a3[1];
  if (v18 != v17)
  {
    while (1)
    {
      v19 = **v18 + 464 * *(v18 + 1);
      if (*(v19 + 71) < 0)
      {
        sub_325C(v251, *(v19 + 48), *(v19 + 56));
      }

      else
      {
        v20 = *(v19 + 48);
        v252 = *(v19 + 64);
        *v251 = v20;
      }

      v21 = *v18;
      *v254 = v18[1];
      v253 = v21;
      v22 = v18[2];
      v23 = v18[3];
      v24 = v18[4];
      v257 = v18[5];
      v256 = v24;
      v255 = v23;
      *&v254[16] = v22;
      v25 = v18[6];
      v26 = v18[7];
      v27 = v18[8];
      v260 = *(v18 + 18);
      *&v259[16] = v27;
      *v259 = v26;
      v258 = v25;
      *v262 = v252;
      *__p = *v251;
      v252 = 0;
      v251[0] = 0;
      v251[1] = 0;
      v28 = *v18;
      *&v262[24] = v18[1];
      *&v262[8] = v28;
      v29 = v18[2];
      v30 = v18[3];
      v31 = v18[4];
      v265 = v18[5];
      v264 = v31;
      v263 = v30;
      *&v262[40] = v29;
      v32 = v18[6];
      v33 = v18[7];
      v34 = v18[8];
      v269 = *(v18 + 18);
      v268 = v34;
      v267 = v33;
      v266 = v32;
      sub_3E5E64(v243, __p);
      if ((v262[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v252) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_24:
        operator delete(v251[0]);
        v18 = (v18 + 152);
        if (v18 == v17)
        {
          break;
        }
      }

      else
      {
        if (SHIBYTE(v252) < 0)
        {
          goto LABEL_24;
        }

LABEL_18:
        v18 = (v18 + 152);
        if (v18 == v17)
        {
          break;
        }
      }
    }
  }

  v35 = *a2;
  v223 = a2[1];
  v227 = a8;
  if (*a2 != v223)
  {
    if (a7)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = -1.0;
    }

    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v225 = vnegq_f64(v37);
    v226 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v224 = a6;
    while (1)
    {
      v39 = sub_4C5154(v35);
      v40 = v39;
      v42 = a8[35];
      v41 = a8[36];
      if (v42 != v41)
      {
        while (*v42 != v39)
        {
          v42 += 32;
          if (v42 == v41)
          {
            goto LABEL_38;
          }
        }
      }

      if (v42 == v41)
      {
LABEL_38:
        if (v41 >= a8[37])
        {
          sub_3E441C(a8 + 35);
          v43 = v44;
        }

        else
        {
          *v41 = -1;
          *(v41 + 16) = 0;
          *(v41 + 24) = 0;
          v43 = v41 + 32;
          *(v41 + 8) = 0;
        }

        a8[36] = v43;
        *(v43 - 32) = v40;
        v42 = v43 - 32;
      }

      v45 = sub_4C35B0(v35);
      v46 = *(v42 + 8);
      v47 = *(v42 + 16);
      v48 = 0x8E38E38E38E38E39 * ((v47 - v46) >> 3);
      if (v45 > v48)
      {
        sub_3E4818((v42 + 8), v45 - v48);
        goto LABEL_47;
      }

      if (v45 < v48)
      {
        break;
      }

LABEL_47:
      sub_11903E0(a1 + 5360, v35, &v241);
      v230 = v42;
      v50 = v241;
      v228 = v242;
      v232 = v35;
      if (v241 != v242)
      {
        do
        {
          v55 = **v50 + 464 * *(v50 + 1);
          v56 = sub_112F704(a1 + 40, v55);
          __p[1] = 0;
          __p[0] = 0;
          *v262 = 0;
          memset(&v262[16], 0, 32);
          *&v262[8] = 0;
          *&v262[48] = 0x7FFFFFFF;
          v57 = (v55 + 48);
          *&v263 = 0x7FFFFFFFFFFFFFFFLL;
          if (__p != (v55 + 48))
          {
            if (*(v55 + 71) < 0)
            {
              sub_13A68(__p, *(v55 + 48), *(v55 + 56));
            }

            else
            {
              v58 = *v57;
              *v262 = *(v55 + 64);
              *__p = v58;
            }
          }

          v59 = *(v55 + 71);
          if (v59 >= 0)
          {
            v60 = (v55 + 48);
          }

          else
          {
            v60 = *(v55 + 48);
          }

          if (v59 >= 0)
          {
            v61 = *(v55 + 71);
          }

          else
          {
            v61 = *(v55 + 56);
          }

          v62 = sub_AAD8(v251, v60, v61);
          v63 = v246[1];
          if (!v246[1])
          {
            goto LABEL_112;
          }

          v64 = v62;
          v65 = vcnt_s8(v246[1]);
          v65.i16[0] = vaddlv_u8(v65);
          if (v65.u32[0] > 1uLL)
          {
            v66 = v62;
            if (v62 >= v246[1])
            {
              v66 = v62 % v246[1];
            }
          }

          else
          {
            v66 = (v246[1] - 1) & v62;
          }

          v67 = *(v246[0] + v66);
          if (!v67 || (v68 = *v67) == 0)
          {
LABEL_112:
            if (v56 < 0)
            {
              v88 = -5;
            }

            else
            {
              v88 = 5;
            }

            *&v262[8] = v56 / 10 + (((103 * (v88 + v56 % 10)) >> 15) & 1) + ((103 * (v88 + v56 % 10)) >> 10);
            v89 = v36;
            goto LABEL_116;
          }

          v69 = *(v55 + 71);
          if (v69 >= 0)
          {
            v70 = *(v55 + 71);
          }

          else
          {
            v70 = *(v55 + 56);
          }

          if (v69 >= 0)
          {
            v71 = (v55 + 48);
          }

          else
          {
            v71 = *(v55 + 48);
          }

          if (v65.u32[0] < 2uLL)
          {
            v72 = v246[1] - 1;
            while (1)
            {
              v77 = v68[1];
              if (v77 == v64)
              {
                v78 = *(v68 + 39);
                v79 = v78;
                if (v78 < 0)
                {
                  v78 = v68[3];
                }

                if (v78 == v70)
                {
                  v80 = v79 >= 0 ? (v68 + 2) : v68[2];
                  if (!memcmp(v80, v71, v70))
                  {
                    goto LABEL_101;
                  }
                }
              }

              else if ((v77 & v72) != v66)
              {
                goto LABEL_112;
              }

              v68 = *v68;
              if (!v68)
              {
                goto LABEL_112;
              }
            }
          }

          while (1)
          {
            v73 = v68[1];
            if (v73 == v64)
            {
              break;
            }

            if (v73 >= v63)
            {
              v73 %= v63;
            }

            if (v73 != v66)
            {
              goto LABEL_112;
            }

LABEL_79:
            v68 = *v68;
            if (!v68)
            {
              goto LABEL_112;
            }
          }

          v74 = *(v68 + 39);
          v75 = v74;
          if (v74 < 0)
          {
            v74 = v68[3];
          }

          if (v74 != v70)
          {
            goto LABEL_79;
          }

          v76 = v75 >= 0 ? (v68 + 2) : v68[2];
          if (memcmp(v76, v71, v70))
          {
            goto LABEL_79;
          }

LABEL_101:
          v81 = v68[5];
          if (v56 < 0)
          {
            v82 = -5;
          }

          else
          {
            v82 = 5;
          }

          v83 = v56 / 10 + (((103 * (v82 + v56 % 10)) >> 15) & 1) + ((103 * (v82 + v56 % 10)) >> 10);
          if (*(v81 + 6) > v83)
          {
            v83 = *(v81 + 6);
          }

          *&v262[8] = v83;
          if (__p != v81)
          {
            v84 = v81[4];
            v85 = v81[5];
            v86 = v85 - v84;
            v87 = *&v262[16];
            if (*&v262[32] - *&v262[16] < (v85 - v84))
            {
              if (*&v262[16])
              {
                *&v262[24] = *&v262[16];
                operator delete(*&v262[16]);
                memset(&v262[16], 0, 24);
              }

              if ((v86 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1794();
            }

            v124 = *&v262[24];
            v125 = *&v262[24] - *&v262[16];
            if (*&v262[24] - *&v262[16] >= v86)
            {
              if (v85 != v84)
              {
                v129 = *&v262[16];
                memmove(*&v262[16], v84, v86 - 1);
                v87 = v129;
              }

              v128 = (v87 + v86);
            }

            else
            {
              if (*&v262[24] != *&v262[16])
              {
                memmove(*&v262[16], v84, v125 - 1);
                v124 = *&v262[24];
              }

              v126 = &v84[v125];
              v127 = v85 - &v84[v125];
              if (v127)
              {
                memmove(v124, v126, v127 - 1);
              }

              v128 = &v124[v127];
            }

            *&v262[24] = v128;
          }

          v89 = *(v68[5] + 7);
LABEL_116:
          v90 = *(v230 + 8) + 72 * *(v50 + 4);
          v91 = *(v90 + 8);
          if (v91 >= *(v90 + 16))
          {
            v93 = sub_3E4A68((*(v230 + 8) + 72 * *(v50 + 4)), __p);
            a8 = v227;
          }

          else
          {
            if ((v262[7] & 0x80000000) != 0)
            {
              sub_325C(*(v90 + 8), __p[0], __p[1]);
            }

            else
            {
              v92 = *__p;
              *(v91 + 16) = *v262;
              *v91 = v92;
            }

            v94 = *&v262[8];
            *(v91 + 32) = 0;
            *(v91 + 24) = v94;
            *(v91 + 40) = 0;
            *(v91 + 48) = 0;
            if (*&v262[24] != *&v262[16])
            {
              if (((*&v262[24] - *&v262[16]) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1794();
            }

            v95 = *&v262[40];
            *(v91 + 72) = v263;
            *(v91 + 56) = v95;
            v93 = v91 + 80;
            *(v90 + 8) = v91 + 80;
            a8 = v227;
          }

          *(v90 + 8) = v93;
          v96 = *(v55 + 71);
          if (v96 >= 0)
          {
            v97 = (v55 + 48);
          }

          else
          {
            v97 = *(v55 + 48);
          }

          if (v96 >= 0)
          {
            v98 = *(v55 + 71);
          }

          else
          {
            v98 = *(v55 + 56);
          }

          v99 = sub_AAD8(v251, v97, v98);
          v100 = v243[1];
          if (!v243[1])
          {
            goto LABEL_176;
          }

          v101 = v99;
          v102 = vcnt_s8(v243[1]);
          v102.i16[0] = vaddlv_u8(v102);
          if (v102.u32[0] > 1uLL)
          {
            v103 = v99;
            if (v99 >= v243[1])
            {
              v103 = v99 % v243[1];
            }
          }

          else
          {
            v103 = (v243[1] - 1) & v99;
          }

          v104 = *(v243[0] + v103);
          if (!v104 || (v105 = *v104) == 0)
          {
LABEL_176:
            *v251 = *v50;
            v35 = v232;
            if (sub_4C4AC8(v232) == 4)
            {
              if (sub_4C5074(v232, 3) & 1) != 0 || (sub_4C50D8(v232, 9) & 1) != 0 || (sub_4C5074(v232, 1) & 1) != 0 || (sub_4C50D8(v232, 12))
              {
                v118 = 1;
              }

              else
              {
                v118 = sub_4C50D8(v232, 8);
              }
            }

            else
            {
              v118 = 0;
            }

            v119 = sub_4C4AC8(v232);
            *&v233 = v57;
            v120 = sub_3E62E0(v243, v57);
            v121 = v119 <= 1 || v119 == 4;
            v122 = !v121;
            *(v120 + 5) = *v251;
            *(v120 + 56) = 1;
            *(v120 + 57) = v118;
            *(v120 + 58) = v122;
            *(v120 + 59) = 0;
            *(v120 + 61) = 0;
            *(v120 + 8) = v89;
            *(v120 + 9) = v226;
            *(v120 + 22) = 0x7FFFFFFF;
            v120[12] = 0x7FFFFFFFFFFFFFFFLL;
            *(v120 + 26) = 0x7FFFFFFF;
            v120[14] = 0x7FFFFFFFFFFFFFFFLL;
            *(v120 + 30) = 0x7FFFFFFF;
            v120[16] = 0x7FFFFFFFFFFFFFFFLL;
            *(v120 + 34) = 0x7FFFFFFF;
            v120[18] = 0x7FFFFFFFFFFFFFFFLL;
            *(v120 + 38) = 0x7FFFFFFF;
            *(v120 + 10) = v225;
            *(v120 + 44) = 0x7FFFFFFF;
            v120[23] = 0x7FFFFFFFFFFFFFFFLL;
            v123 = *&v262[16];
            if (!*&v262[16])
            {
              goto LABEL_191;
            }

LABEL_190:
            *&v262[24] = v123;
            operator delete(v123);
            goto LABEL_191;
          }

          v106 = *(v55 + 71);
          v107 = *(v55 + 48);
          if (v106 >= 0)
          {
            v108 = *(v55 + 71);
          }

          else
          {
            v108 = *(v55 + 56);
          }

          if (v106 >= 0)
          {
            v109 = v57;
          }

          else
          {
            v109 = v107;
          }

          if (v102.u32[0] < 2uLL)
          {
            while (1)
            {
              v114 = v105[1];
              if (v101 == v114)
              {
                v115 = *(v105 + 39);
                v116 = v115;
                if (v115 < 0)
                {
                  v115 = v105[3];
                }

                if (v115 == v108)
                {
                  v117 = v116 >= 0 ? (v105 + 2) : v105[2];
                  if (!memcmp(v117, v109, v108))
                  {
                    goto LABEL_169;
                  }
                }
              }

              else if ((v114 & (v100 - 1)) != v103)
              {
                goto LABEL_176;
              }

              v105 = *v105;
              if (!v105)
              {
                goto LABEL_176;
              }
            }
          }

          while (2)
          {
            v110 = v105[1];
            if (v101 != v110)
            {
              if (v110 >= v100)
              {
                v110 %= v100;
              }

              if (v110 != v103)
              {
                goto LABEL_176;
              }

LABEL_147:
              v105 = *v105;
              if (!v105)
              {
                goto LABEL_176;
              }

              continue;
            }

            break;
          }

          v111 = *(v105 + 39);
          v112 = v111;
          if (v111 < 0)
          {
            v111 = v105[3];
          }

          if (v111 != v108)
          {
            goto LABEL_147;
          }

          v113 = v112 >= 0 ? (v105 + 2) : v105[2];
          if (memcmp(v113, v109, v108))
          {
            goto LABEL_147;
          }

LABEL_169:
          v251[0] = v57;
          *(sub_3E62E0(v243, v57) + 57) = 0;
          if (sub_4C4AAC(v232))
          {
            v251[0] = v57;
            *(sub_3E62E0(v243, v57) + 58) = 0;
            v251[0] = v57;
            if (*(sub_3E62E0(v243, v57) + 44) == 0x7FFFFFFF)
            {
              sub_4C35F8(v232, &v233);
              v249 = v233;
              v250 = v234;
              if (v236 != v235)
              {
                if (((v236 - v235) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1794();
              }

              v130 = v239 - v238;
              if (v239 != v238)
              {
                if ((v130 & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1794();
              }

              *v251 = v249;
              v252 = v250;
              v253 = 0uLL;
              *v254 = 0;
              *&v254[8] = 0;
              *&v254[16] = v239 - v238;
              *&v254[24] = v239 - v238;
              if (v238)
              {
                v239 = v238;
                operator delete(v238);
              }

              if (v235)
              {
                v236 = v235;
                operator delete(v235);
              }

              v249 = *(v50 + 1);
              v131 = *(v50 + 5);
              v250 = *(v50 + 4);
              v132 = *(v50 + 6);
              if (v132 != v131)
              {
                if (((v132 - v131) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1794();
              }

              v134 = *(v50 + 8);
              v133 = *(v50 + 9);
              if (v133 != v134)
              {
                if (((v133 - v134) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1794();
              }

              v233 = v249;
              v234 = v250;
              v235 = 0;
              v236 = 0;
              v237 = 0;
              v238 = 0;
              v239 = 0;
              v240 = 0;
              if (v130)
              {
                if ((v130 & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1794();
              }

              *&v249 = v57;
              *(sub_3E62E0(v243, v57) + 44) = 0;
              a8 = v227;
              *&v249 = v57;
              sub_3E62E0(v243, v57)[23] = 0;
            }
          }

          if (sub_4C4AC8(v232) == 4)
          {
            v251[0] = v57;
            *(sub_3E62E0(v243, v57) + 58) = 0;
            if (sub_4C5074(v232, 3) & 1) != 0 || (sub_4C50D8(v232, 9) & 1) != 0 || (sub_4C5074(v232, 1) & 1) != 0 || (sub_4C50D8(v232, 12))
            {
              v135 = 0;
            }

            else
            {
              v135 = sub_4C50D8(v232, 8) ^ 1;
            }

            v251[0] = v57;
            *(sub_3E62E0(v243, v57) + 57) = v135;
          }

          v251[0] = v57;
          v136 = *(sub_3E62E0(v243, v57) + 8);
          v251[0] = v57;
          v137 = sub_3E62E0(v243, v57);
          if (v136 >= v89)
          {
            v138 = v136;
          }

          else
          {
            v138 = v89;
          }

          *(v137 + 8) = v138;
          v35 = v232;
          v123 = *&v262[16];
          if (*&v262[16])
          {
            goto LABEL_190;
          }

LABEL_191:
          if ((v262[7] & 0x80000000) != 0)
          {
            operator delete(__p[0]);
          }

          v50 += 160;
        }

        while (v50 != v228);
      }

      if (*(v224 + 8) != *(v224 + 16) && sub_4C4AC8(v35) != 4)
      {
        v51 = *(v224 + 8);
        v52 = *v51;
        v53 = v51[1];
        if (*v51 != v53)
        {
          v54 = *(v230 + 8);
          do
          {
            v147 = *(v52 + 23);
            if (v147 >= 0)
            {
              v148 = v52;
            }

            else
            {
              v148 = *v52;
            }

            if (v147 >= 0)
            {
              v149 = *(v52 + 23);
            }

            else
            {
              v149 = *(v52 + 8);
            }

            v150 = sub_AAD8(__p, v148, v149);
            v151 = v243[1];
            if (v243[1])
            {
              v152 = v150;
              v153 = vcnt_s8(v243[1]);
              v153.i16[0] = vaddlv_u8(v153);
              if (v153.u32[0] > 1uLL)
              {
                v154 = v150;
                if (v150 >= v243[1])
                {
                  v154 = v150 % v243[1];
                }
              }

              else
              {
                v154 = (v243[1] - 1) & v150;
              }

              v165 = *(v243[0] + v154);
              if (v165)
              {
                v166 = *v165;
                if (*v165)
                {
                  v167 = *(v52 + 23);
                  if (v167 >= 0)
                  {
                    v168 = *(v52 + 23);
                  }

                  else
                  {
                    v168 = *(v52 + 8);
                  }

                  if (v167 >= 0)
                  {
                    v169 = v52;
                  }

                  else
                  {
                    v169 = *v52;
                  }

                  if (v153.u32[0] < 2uLL)
                  {
                    v170 = v243[1] - 1;
                    while (1)
                    {
                      v175 = v166[1];
                      if (v152 == v175)
                      {
                        v176 = *(v166 + 39);
                        v177 = v176;
                        if (v176 < 0)
                        {
                          v176 = v166[3];
                        }

                        if (v176 == v168)
                        {
                          v178 = v177 >= 0 ? (v166 + 2) : v166[2];
                          if (!memcmp(v178, v169, v168))
                          {
                            goto LABEL_319;
                          }
                        }
                      }

                      else if ((v175 & v170) != v154)
                      {
                        goto LABEL_249;
                      }

                      v166 = *v166;
                      if (!v166)
                      {
                        goto LABEL_249;
                      }
                    }
                  }

                  do
                  {
                    v171 = v166[1];
                    if (v152 == v171)
                    {
                      v172 = *(v166 + 39);
                      v173 = v172;
                      if (v172 < 0)
                      {
                        v172 = v166[3];
                      }

                      if (v172 == v168)
                      {
                        v174 = v173 >= 0 ? (v166 + 2) : v166[2];
                        if (!memcmp(v174, v169, v168))
                        {
LABEL_319:
                          v179 = *(v52 + 56);
                          __p[0] = v52;
                          v180 = *(sub_3E62E0(v243, v52) + 8);
                          __p[0] = v52;
                          v181 = sub_3E62E0(v243, v52);
                          if (a7)
                          {
                            v182 = v179;
                          }

                          else
                          {
                            v182 = -1.0;
                          }

                          if (v180 >= v182)
                          {
                            v182 = v180;
                          }

                          *(v181 + 8) = v182;
                          __p[0] = v52;
                          *(sub_3E62E0(v243, v52) + 22) = *(v52 + 64);
                          __p[0] = v52;
                          sub_3E62E0(v243, v52)[12] = *(v52 + 72);
                          break;
                        }
                      }
                    }

                    else
                    {
                      if (v171 >= v151)
                      {
                        v171 %= v151;
                      }

                      if (v171 != v154)
                      {
                        break;
                      }
                    }

                    v166 = *v166;
                  }

                  while (v166);
                }
              }
            }

LABEL_249:
            v35 = v232;
            if (*(v52 + 56) != 0.0)
            {
              v155 = *v54;
              v156 = v54[1];
              if (*v54 == v156)
              {
LABEL_325:
                __p[0] = (*(v52 + 40) - *(v52 + 32));
                if (v156 >= v54[2])
                {
                  v183 = sub_3E4F2C(v54, v52, (v52 + 24), __p);
                }

                else
                {
                  sub_3E5118(v156, v52, (v52 + 24), __p);
                  v183 = v156 + 80;
                  v54[1] = v156 + 80;
                }

                v54[1] = v183;
              }

              else
              {
                if (*(v52 + 23) >= 0)
                {
                  v157 = *(v52 + 23);
                }

                else
                {
                  v157 = *(v52 + 8);
                }

                if ((*(v52 + 23) & 0x80) != 0)
                {
                  v158 = *v52;
                  while (1)
                  {
                    v162 = *(v155 + 23);
                    v163 = v162;
                    if ((v162 & 0x80u) != 0)
                    {
                      v162 = *(v155 + 8);
                    }

                    if (v157 == v162)
                    {
                      v164 = v163 >= 0 ? v155 : *v155;
                      if (!memcmp(v158, v164, v157))
                      {
                        break;
                      }
                    }

                    v155 += 80;
                    if (v155 == v156)
                    {
                      goto LABEL_325;
                    }
                  }
                }

                else
                {
                  while (1)
                  {
                    v159 = *(v155 + 23);
                    v160 = v159;
                    if ((v159 & 0x80u) != 0)
                    {
                      v159 = *(v155 + 8);
                    }

                    if (v157 == v159)
                    {
                      v161 = v160 >= 0 ? v155 : *v155;
                      if (!memcmp(v52, v161, v157))
                      {
                        break;
                      }
                    }

                    v155 += 80;
                    if (v155 == v156)
                    {
                      goto LABEL_325;
                    }
                  }
                }
              }
            }

            v52 += 80;
          }

          while (v52 != v53);
        }
      }

      v184 = v241;
      if (v241)
      {
        v185 = v242;
        v38 = v241;
        if (v242 != v241)
        {
          do
          {
            v186 = *(v185 - 3);
            if (v186)
            {
              *(v185 - 2) = v186;
              operator delete(v186);
            }

            v187 = *(v185 - 6);
            if (v187)
            {
              *(v185 - 5) = v187;
              operator delete(v187);
            }

            v188 = *(v185 - 12);
            if (v188)
            {
              *(v185 - 11) = v188;
              operator delete(v188);
            }

            v189 = *(v185 - 15);
            if (v189)
            {
              *(v185 - 14) = v189;
              operator delete(v189);
            }

            v185 -= 160;
          }

          while (v185 != v184);
          v38 = v241;
        }

        v242 = v184;
        operator delete(v38);
      }

      v35 += 128;
      if (v35 == v223)
      {
        goto LABEL_341;
      }
    }

    v49 = (v46 + 72 * v45);
    if (v47 == v49)
    {
LABEL_46:
      *(v42 + 16) = v49;
      goto LABEL_47;
    }

    while ((*(v47 - 1) & 0x80000000) == 0)
    {
      v140 = v42;
      v141 = *(v47 - 6);
      if (v141)
      {
        goto LABEL_238;
      }

LABEL_239:
      v142 = v47 - 9;
      v143 = *(v47 - 9);
      if (v143)
      {
        v144 = *(v47 - 8);
        v139 = *(v47 - 9);
        if (v144 != v143)
        {
          do
          {
            v145 = *(v144 - 6);
            if (v145)
            {
              *(v144 - 5) = v145;
              operator delete(v145);
            }

            v146 = v144 - 10;
            if (*(v144 - 57) < 0)
            {
              operator delete(*v146);
            }

            v144 -= 10;
          }

          while (v146 != v143);
          v139 = *v142;
        }

        *(v47 - 8) = v143;
        operator delete(v139);
      }

      v47 -= 9;
      v121 = v142 == v49;
      v42 = v140;
      if (v121)
      {
        goto LABEL_46;
      }
    }

    operator delete(*(v47 - 3));
    v140 = v42;
    v141 = *(v47 - 6);
    if (!v141)
    {
      goto LABEL_239;
    }

LABEL_238:
    *(v47 - 5) = v141;
    operator delete(v141);
    goto LABEL_239;
  }

LABEL_341:
  v190 = *(a4 + 16);
  if (v190)
  {
    v191.f64[0] = NAN;
    v191.f64[1] = NAN;
    v229 = vnegq_f64(v191);
    do
    {
      if (sub_4C2B70((v190 + 2)))
      {
        v192 = sub_4C2BA0(v190 + 4);
        v194 = v193;
        v195 = *(*v192 + 464 * v193 + 312);
        v196 = sub_4C2C3C((v190 + 2));
        if (*(v196 + 71) < 0)
        {
          sub_325C(v251, *(v196 + 48), *(v196 + 56));
        }

        else
        {
          *v251 = *(v196 + 48);
          v252 = *(v196 + 64);
        }

        *(&v253 + 1) = v194;
        v254[0] = v195;
        *&v254[1] = 257;
        v254[5] = 0;
        *&v254[8] = xmmword_22919C0;
        *&v254[24] = 0x7FEFFFFFFFFFFFFFLL;
        LODWORD(v255) = 0x7FFFFFFF;
        *(&v255 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v256) = 0x7FFFFFFF;
        *(&v256 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v257) = 0x7FFFFFFF;
        *(&v257 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v258) = 0x7FFFFFFF;
        *(&v258 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        *v259 = 0x7FFFFFFF;
        *&v259[8] = v229;
        *&v259[24] = 0x7FFFFFFF;
        v260 = 0x7FFFFFFFFFFFFFFFLL;
        *v262 = v252;
        *__p = *v251;
        v251[1] = 0;
        v251[0] = 0;
        *&v253 = v192;
        v252 = 0;
        v269 = 0x7FFFFFFFFFFFFFFFLL;
        v268 = *&v259[16];
        v267 = *v259;
        v266 = v258;
        *&v262[24] = *v254;
        *&v262[8] = v253;
        v265 = v257;
        v264 = v256;
        v263 = v255;
        *&v262[40] = *&v254[16];
        sub_3E5E64(v243, __p);
        if ((v262[7] & 0x80000000) != 0)
        {
          operator delete(__p[0]);
          if (SHIBYTE(v252) < 0)
          {
            goto LABEL_351;
          }
        }

        else if (SHIBYTE(v252) < 0)
        {
LABEL_351:
          operator delete(v251[0]);
        }
      }

      v190 = *v190;
    }

    while (v190);
  }

  v198 = *a5;
  v197 = a5[1];
  if (*a5 != v197)
  {
    while (*(v198 + 224) != 1)
    {
      v198 += 240;
      if (v198 == v197)
      {
        v198 = a5[1];
        break;
      }
    }

    v199 = *(v198 + 176);
    if (v199 != *(v198 + 184))
    {
      sub_3E2AD8(a1, v199);
    }

    v200 = *(v198 + 200);
    if (v200 != *(v198 + 208))
    {
      sub_3E2AD8(a1, v200);
    }
  }

  sub_3DE3C0(a1, a2);
  if (v218[1969] == 1)
  {
    v201 = sub_3DF080(a1, a2);
  }

  else
  {
    v201 = 0;
  }

  v218[1988] = v201;
  *__p = 0u;
  *v262 = 0u;
  *&v262[16] = 1065353216;
  sub_3E0A48(v201, a2, __p);
  v202 = v218[1971];
  if (!*&v262[8])
  {
    v202 = 0;
  }

  v218[1988] |= v202;
  for (i = v244; i; i = *i)
  {
    v204 = -1.0;
    if (a7)
    {
      v204 = 0.0;
      if (*(i + 8) >= 0.0)
      {
        v204 = *(i + 8);
      }
    }

    *(i + 8) = v204;
    sub_3E0ED0(a1, i + 5, v227);
  }

  v205 = *v262;
  if (*v262)
  {
    do
    {
      sub_3E2370(a1, v205[5], v227);
      v205 = *v205;
    }

    while (v205);
    v206 = *v262;
    if (*v262)
    {
      do
      {
        v216 = *v206;
        if (*(v206 + 39) < 0)
        {
          v217 = v206;
          operator delete(v206[2]);
          v206 = v217;
        }

        operator delete(v206);
        v206 = v216;
      }

      while (v216);
    }
  }

  v207 = __p[0];
  __p[0] = 0;
  if (v207)
  {
    operator delete(v207);
  }

  v208 = v244;
  if (v244)
  {
    do
    {
      v212 = *v208;
      if (*(v208 + 39) < 0)
      {
        v213 = v208;
        operator delete(v208[2]);
        v208 = v213;
      }

      operator delete(v208);
      v208 = v212;
    }

    while (v212);
  }

  v209 = v243[0];
  v243[0] = 0;
  if (v209)
  {
    operator delete(v209);
  }

  v210 = v247;
  if (v247)
  {
    do
    {
      v214 = *v210;
      if (*(v210 + 39) < 0)
      {
        v215 = v210;
        operator delete(v210[2]);
        v210 = v215;
      }

      operator delete(v210);
      v210 = v214;
    }

    while (v214);
  }

  v211 = v246[0];
  v246[0] = 0;
  if (v211)
  {
    operator delete(v211);
  }
}