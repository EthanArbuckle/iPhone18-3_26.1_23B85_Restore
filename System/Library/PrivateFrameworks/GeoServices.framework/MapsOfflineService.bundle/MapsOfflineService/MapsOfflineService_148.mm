uint64_t sub_9332D0(uint64_t a1)
{
  *a1 = &off_266D9E8;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 112))
  {
    sub_936658((a1 + 112));
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 24));
  return a1;
}

uint64_t sub_933384(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  v5 = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 36) = v5;
  v6 = *(a1 + 96);
  v7 = *(a2 + 96);
  if (v6 == -1)
  {
    if (v7 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v7 == -1)
  {
    (off_266DA38[v6])(&v12, a1 + 64);
    *(a1 + 96) = -1;
    goto LABEL_6;
  }

  v11 = a1 + 64;
  (off_266DBC0[v7])(&v11);
LABEL_6:
  *(a1 + 104) = *(a2 + 104);
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v8 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v8;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  *(a1 + 136) = *(a2 + 136);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v9 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v9;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

uint64_t sub_9334B4(uint64_t a1)
{
  *(a1 + 8) = 0x27FFFFFFFLL;
  *a1 = &off_266D810;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 40) = 0x27FFFFFFFLL;
  *(a1 + 32) = &off_266D850;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 104) = 0x27FFFFFFFLL;
  *(a1 + 96) = &off_266D880;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = -1;
  *(a1 + 240) = 0xFFFF;
  *(a1 + 248) = -1;
  *(a1 + 250) = 0;
  *(a1 + 270) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 280) = 0x7FFFFFFF;
  *(a1 + 296) = 0u;
  *(a1 + 288) = 0x7FFFFFFF;
  *(a1 + 292) = 0x7FFFFFFF7FFFFFFFLL;
  *&v2 = 0x8000000080000000;
  *(a1 + 312) = 0x8000000080000000;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 372) = 0x7FFFFFFF;
  *(a1 + 376) = 0x8000000080000000;
  *(a1 + 392) = 0;
  *(a1 + 400) = xmmword_2297C00;
  *(a1 + 416) = -1;
  *(a1 + 424) = -1;
  *(a1 + 426) = 0;
  *(a1 + 446) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 456) = 0x7FFFFFFF;
  *(a1 + 472) = 0u;
  *(a1 + 464) = 0x7FFFFFFF;
  *(a1 + 468) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 488) = 0x8000000080000000;
  *(a1 + 544) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 548) = 0x7FFFFFFF;
  *(a1 + 552) = 0x8000000080000000;
  *(a1 + 568) = 0;
  *(a1 + 576) = xmmword_2297C00;
  *(a1 + 592) = -1;
  *(a1 + 600) = 0x7FFFFFFF;
  *(a1 + 604) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 640) = 0x8000000080000000;
  *(a1 + 648) = 0x7FFFFFFF;
  *(a1 + 656) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 664) = 0x8000000080000000;
  *(a1 + 672) = 0x7FFFFFFF;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 680) = 0u;
  *(&v2 + 1) = 0x8000000080000000;
  *(a1 + 920) = v2;
  *(a1 + 936) = v2;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 1216) = 0x27FFFFFFFLL;
  *(a1 + 1208) = &off_266D8B0;
  *(a1 + 1224) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1232) = 0x7FFFFFFF;
  *(a1 + 1240) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1248) = 0x7FFFFFFFFFFFFFFFLL;
  sub_64B998(a1 + 1256);
  *(a1 + 1424) = xmmword_22A4790;
  *(a1 + 1416) = &off_266D8F8;
  *(a1 + 1440) = 0x7FFFFFFF;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = 0u;
  *(a1 + 1480) = 0x27FFFFFFFLL;
  *(a1 + 1472) = &off_266D928;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0u;
  *(a1 + 1520) = 0x27FFFFFFFLL;
  *(a1 + 1512) = &off_266D958;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = 0u;
  *(a1 + 1560) = 0x27FFFFFFFLL;
  *(a1 + 1552) = &off_266D988;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0;
  *(a1 + 1600) = 0x27FFFFFFFLL;
  *(a1 + 1592) = &off_266D9B8;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = -1;
  *(a1 + 1816) = 0x27FFFFFFFLL;
  *(a1 + 1808) = &off_266D9E8;
  *(a1 + 1824) = -1;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = -1;
  *(a1 + 1888) = 0x7FFFFFFF;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = 0;
  *(a1 + 1968) = 0x7FFFFFFF;
  *(a1 + 1972) = 0;
  *(a1 + 1984) = 0x27FFFFFFFLL;
  *(a1 + 1976) = &off_266DA18;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 1992) = 0u;
  sub_5F328(a1 + 2040);
  *(a1 + 2088) = 0x27FFFFFFFLL;
  *(a1 + 2080) = &off_266DA70;
  *(a1 + 2144) = xmmword_22983D0;
  *(a1 + 2096) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2168) = 0x27FFFFFFFLL;
  *(a1 + 2160) = &off_266DAA0;
  *(a1 + 2176) = 0;
  *(a1 + 2184) = 0u;
  *(a1 + 2208) = 0x27FFFFFFFLL;
  *(a1 + 2200) = &off_266DAD0;
  *(a1 + 2216) = 0;
  *(a1 + 2224) = 0u;
  *(a1 + 2248) = 0x27FFFFFFFLL;
  *(a1 + 2240) = &off_266DB00;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0;
  *(a1 + 2280) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2296) = 0x27FFFFFFFLL;
  *(a1 + 2288) = &off_266DB30;
  *(a1 + 2304) = -1;
  *(a1 + 2312) = -1;
  *(a1 + 2320) = 0x8000000080000000;
  *(a1 + 2328) = -29536;
  *(a1 + 2336) = 0xBFF0000000000000;
  *(a1 + 2344) = 0xFFFFFF;
  *(a1 + 2384) = 0;
  *(a1 + 2392) = -1;
  *(a1 + 2395) = -1;
  *(a1 + 2415) = 0;
  *(a1 + 2399) = 0u;
  *(a1 + 2423) = 0;
  *(a1 + 2432) = 0u;
  *(a1 + 2448) = 0;
  *(a1 + 2456) = 0;
  return a1;
}

void sub_933A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void **a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_933B68((v16 + 2016));
  sub_933BA4(v18);
  sub_9332D0(v17);
  sub_939910(v24);
  sub_932DD0(v23);
  *(v16 + 1512) = v22;
  v25 = *(v16 + 1528);
  if (v25)
  {
    *(v16 + 1536) = v25;
    operator delete(v25);
  }

  sub_932F98(v21);
  *(v16 + 1416) = v20;
  if (*(v16 + 1471) < 0)
  {
    operator delete(*a11);
  }

  *a12 = v19;
  sub_53A868(v16 + 1256);
  *a15 = a14;
  sub_3EEA68(a13);
  sub_930684(a16);
  _Unwind_Resume(a1);
}

BOOL sub_933AE4(uint64_t a1)
{
  if (*(a1 + 16) == -1 && *(a1 + 20) == -1)
  {
    return 0;
  }

  v1 = *(a1 + 55);
  if (v1 < 0)
  {
    return *(a1 + 40) != 0;
  }

  else
  {
    return v1 != 0;
  }
}

void ***sub_933B68(void ***a1)
{
  if (*a1)
  {
    sub_933C18(a1);
    operator delete(*a1);
  }

  return a1;
}

void **sub_933BA4(void **a1)
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
        v3 -= 160;
        sub_933D54(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_933C18(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        *(v3 - 3) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 7);
      if (v5)
      {
        *(v3 - 6) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 10);
      if (v6)
      {
        *(v3 - 9) = v6;
        operator delete(v6);
      }

      if (*(v3 - 105) < 0)
      {
        operator delete(*(v3 - 16));
        v7 = v3 - 19;
        if (*(v3 - 129) < 0)
        {
LABEL_14:
          operator delete(*v7);
        }
      }

      else
      {
        v7 = v3 - 19;
        if (*(v3 - 129) < 0)
        {
          goto LABEL_14;
        }
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  a1[1] = v2;
}

void sub_933CC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 120);
  if (v3)
  {
    *(a2 + 128) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 96);
  if (v4)
  {
    *(a2 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 72);
  if (v5)
  {
    *(a2 + 80) = v5;
    operator delete(v5);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a2 + 23) & 0x80000000) == 0)
  {
    return;
  }

  v6 = *a2;

  operator delete(v6);
}

void sub_933D54(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  if ((*(a1 + 127) & 0x80000000) == 0)
  {
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(*(a1 + 72));
    v3 = *(a1 + 56);
    if (v3 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  operator delete(*(a1 + 104));
  if (*(a1 + 95) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v3 = *(a1 + 56);
  if (v3 != -1)
  {
LABEL_9:
    (off_266DA38[v3])(&v4, a1 + 24);
  }

LABEL_10:
  *(a1 + 56) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_933E90(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2FE592FE592FE593 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1A6D01A6D01A6DLL)
  {
    sub_1794();
  }

  if (0x5FCB25FCB25FCB26 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5FCB25FCB25FCB26 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2FE592FE592FE593 * ((a1[2] - *a1) >> 4)) >= 0xD3680D3680D36)
  {
    v6 = 0x1A6D01A6D01A6DLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x1A6D01A6D01A6DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v16 = v7;
  *v7 = *a2;
  sub_934060(2480 * v2 + 8, a2 + 8);
  v8 = *a1;
  v9 = a1[1];
  v10 = v7 - &v9[-*a1];
  *(v7 + 2472) = *(a2 + 2472);
  if (v9 != v8)
  {
    v11 = (v8 + 8);
    v12 = v16 - 16 * ((v9 - v8) >> 4) + 8;
    do
    {
      *(v12 - 8) = *(v11 - 8);
      v13 = sub_93865C(v12, v11);
      *(v13 + 2464) = *(v11 + 2464);
      v14 = v11 + 2472;
      v11 += 2480;
      v12 = v13 + 2480;
    }

    while (v14 != v9);
    do
    {
      sub_9390FC((v8 + 8));
      v8 += 2480;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v16 + 2480;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v16 + 2480;
}

void sub_93404C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9390A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_934060(uint64_t a1, uint64_t a2)
{
  *a1 = &off_266D8E0;
  v4 = *(a2 + 8);
  *a1 = &off_266D810;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = &off_266D8E0;
  v5 = *(a2 + 40);
  *(a1 + 32) = &off_266D850;
  *(a1 + 40) = v5;
  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 48), *(a2 + 56));
    if ((*(a2 + 95) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
    if ((*(a2 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      v7 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v7;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 72), *(a2 + 72), *(a2 + 80));
LABEL_6:
  *(a1 + 96) = &off_266D8E0;
  v8 = *(a2 + 104);
  *(a1 + 96) = &off_266D880;
  *(a1 + 104) = v8;
  sub_790648(a1 + 112, a2 + 112);
  *(a1 + 1208) = &off_266D8E0;
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1208) = &off_266D8B0;
  v9 = *(a2 + 1240);
  *(a1 + 1224) = *(a2 + 1224);
  *(a1 + 1240) = v9;
  sub_55BD50(a1 + 1256, a2 + 1256);
  *(a1 + 1416) = &off_266D8E0;
  *(a1 + 1424) = *(a2 + 1424);
  *(a1 + 1416) = &off_266D8F8;
  v10 = *(a2 + 1432);
  *(a1 + 1440) = *(a2 + 1440);
  *(a1 + 1432) = v10;
  if (*(a2 + 1471) < 0)
  {
    sub_325C((a1 + 1448), *(a2 + 1448), *(a2 + 1456));
  }

  else
  {
    v11 = *(a2 + 1448);
    *(a1 + 1464) = *(a2 + 1464);
    *(a1 + 1448) = v11;
  }

  *(a1 + 1472) = &off_266D8E0;
  *(a1 + 1480) = *(a2 + 1480);
  *(a1 + 1472) = &off_266D928;
  sub_2C1C04((a1 + 1488), (a2 + 1488));
  *(a1 + 1512) = &off_266D8E0;
  *(a1 + 1520) = *(a2 + 1520);
  *(a1 + 1512) = &off_266D958;
  *(a1 + 1528) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1536) = 0;
  v12 = *(a2 + 1528);
  v13 = *(a2 + 1536);
  if (v13 != v12)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1552) = &off_266D8E0;
  *(a1 + 1560) = *(a2 + 1560);
  *(a1 + 1552) = &off_266D988;
  *(a1 + 1568) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1576) = 0;
  sub_934A24(a1 + 1568, *(a2 + 1568), *(a2 + 1576), 0x823EE08FB823EE09 * ((*(a2 + 1576) - *(a2 + 1568)) >> 3));
  sub_934BB8(a1 + 1592, a2 + 1592);
  *(a1 + 1808) = &off_266D8E0;
  *(a1 + 1816) = *(a2 + 1816);
  *(a1 + 1808) = &off_266D9E8;
  sub_936094(a1 + 1824, a2 + 1824);
  *(a1 + 1976) = &off_266D8E0;
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 1976) = &off_266DA18;
  *(a1 + 1992) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 2000) = 0;
  sub_936BC4(a1 + 1992, *(a2 + 1992), *(a2 + 2000), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 2000) - *(a2 + 1992)) >> 5));
  *(a1 + 2032) = 0;
  *(a1 + 2016) = 0u;
  sub_936E50(a1 + 2016, *(a2 + 2016), *(a2 + 2024), 0x86BCA1AF286BCA1BLL * ((*(a2 + 2024) - *(a2 + 2016)) >> 3));
  sub_5ADDC(a1 + 2040, a2 + 2040);
  *(a1 + 2080) = &off_266D8E0;
  *(a1 + 2088) = *(a2 + 2088);
  *(a1 + 2080) = &off_266DA70;
  *(a1 + 2096) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 2104) = 0;
  sub_937294(a1 + 2096, *(a2 + 2096), *(a2 + 2104), 0x6F96F96F96F96F97 * ((*(a2 + 2104) - *(a2 + 2096)) >> 3));
  *(a1 + 2136) = 0;
  *(a1 + 2120) = 0u;
  sub_937C80(a1 + 2120, *(a2 + 2120), *(a2 + 2128), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 2128) - *(a2 + 2120)) >> 4));
  *(a1 + 2144) = *(a2 + 2144);
  *(a1 + 2160) = &off_266D8E0;
  *(a1 + 2168) = *(a2 + 2168);
  *(a1 + 2160) = &off_266DAA0;
  *(a1 + 2176) = 0;
  *(a1 + 2192) = 0;
  *(a1 + 2184) = 0;
  sub_935F74(a1 + 2176, *(a2 + 2176), *(a2 + 2184), 0x86BCA1AF286BCA1BLL * ((*(a2 + 2184) - *(a2 + 2176)) >> 3));
  *(a1 + 2200) = &off_266D8E0;
  *(a1 + 2208) = *(a2 + 2208);
  *(a1 + 2200) = &off_266DAD0;
  *(a1 + 2216) = 0;
  *(a1 + 2232) = 0;
  *(a1 + 2224) = 0;
  v14 = *(a2 + 2216);
  v15 = *(a2 + 2224);
  if (v15 != v14)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 2240) = &off_266D8E0;
  *(a1 + 2248) = *(a2 + 2248);
  *(a1 + 2240) = &off_266DB00;
  *(a1 + 2256) = 0;
  *(a1 + 2272) = 0;
  *(a1 + 2264) = 0;
  sub_9380B4(a1 + 2256, *(a2 + 2256), *(a2 + 2264), 0x193D4BB7E327A977 * ((*(a2 + 2264) - *(a2 + 2256)) >> 3));
  *(a1 + 2280) = *(a2 + 2280);
  *(a1 + 2288) = &off_266D8E0;
  *(a1 + 2296) = *(a2 + 2296);
  *(a1 + 2288) = &off_266DB30;
  v16 = *(a2 + 2304);
  v17 = *(a2 + 2320);
  *(a1 + 2332) = *(a2 + 2332);
  *(a1 + 2320) = v17;
  *(a1 + 2304) = v16;
  sub_55F1E8(a1 + 2352, a2 + 2352);
  return a1;
}

void sub_934880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21)
{
  *a19 = a18;
  sub_53A868(v21 + 1256);
  *a21 = a20;
  sub_3EEA68(v21 + 112);
  sub_930684(*(v22 - 88));
  _Unwind_Resume(a1);
}

void sub_934A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (!*a15)
  {
    JUMPOUT(0x9349BCLL);
  }

  JUMPOUT(0x9349B4);
}

void sub_934A24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x8FB823EE08FB83)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_934B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 456;
    v15 = -v12;
    do
    {
      v14 = sub_399184(v14) - 456;
      v15 += 456;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_934B40(&a9);
  _Unwind_Resume(a1);
}

void ***sub_934B40(void ***result)
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
          v4 = sub_399184(v4 - 456);
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

uint64_t sub_934BB8(uint64_t a1, uint64_t a2)
{
  *a1 = &off_266D8E0;
  v4 = *(a2 + 8);
  *a1 = &off_266D9B8;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_934E44(a1 + 16, *(a2 + 16), *(a2 + 24), 0x66FD0EB66FD0EB67 * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_935AB8(a1 + 40, *(a2 + 40), *(a2 + 48), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 48) - *(a2 + 40)) >> 4));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_935F74(a1 + 64, *(a2 + 64), *(a2 + 72), 0x86BCA1AF286BCA1BLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  sub_93636C((a1 + 88), (a2 + 88));
  sub_936738((a1 + 112), (a2 + 112));
  if (*(a2 + 159) < 0)
  {
    sub_325C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v5 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v5;
  }

  if (*(a2 + 183) < 0)
  {
    sub_325C((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v6 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v6;
  }

  if (*(a2 + 207) < 0)
  {
    sub_325C((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v7 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v7;
  }

  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void sub_934D64(_Unwind_Exception *a1)
{
  if (*(v2 + 183) < 0)
  {
    operator delete(*(v2 + 160));
  }

  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  sub_936A08((v2 + 112));
  sub_934E08((v2 + 88));
  sub_936AA8(v4);
  sub_936B0C(v3);
  sub_936B68(v1);
  _Unwind_Resume(a1);
}

void sub_934DD8(_Unwind_Exception *a1)
{
  sub_936B0C(v2);
  sub_936B68(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_934E08(uint64_t *a1)
{
  if (*a1)
  {
    sub_936658(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_934E44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x5E293205E29321)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_934F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 696;
    v15 = -v12;
    do
    {
      v14 = sub_9357A0(v14) - 696;
      v15 += 696;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_935A40(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_934F60(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v4 - *a2) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v7;
  *(a1 + 48) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v9 = *(a2 + 72);
  v8 = *(a2 + 80);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 96) = *(a2 + 96);
  sub_55F1E8(a1 + 104, a2 + 104);
  sub_55F1E8(a1 + 216, a2 + 216);
  sub_55F1E8(a1 + 328, a2 + 328);
  sub_55F1E8(a1 + 440, a2 + 440);
  v10 = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 552) = v10;
  *(a1 + 568) = 0;
  *(a1 + 584) = 0;
  *(a1 + 576) = 0;
  v11 = *(a2 + 568);
  v12 = *(a2 + 576);
  if (v12 != v11)
  {
    if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  v13 = *(a2 + 592);
  v14 = *(a2 + 600);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  v15 = *(a2 + 616);
  v16 = *(a2 + 624);
  if (v16 != v15)
  {
    if (((v16 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = 0;
  *(a1 + 664) = 0;
  *(a1 + 656) = 0;
  v17 = *(a2 + 648);
  v18 = *(a2 + 656);
  if (v18 != v17)
  {
    if (((v18 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  v19 = *(a2 + 672);
  v20 = *(a2 + 680);
  if (v20 != v19)
  {
    if (((v20 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_935338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v9 + 8) = v10;
  sub_9356F0(&a9);
  _Unwind_Resume(a1);
}

void sub_935350(_Unwind_Exception *a1)
{
  sub_53E440(v1 + 328);
  sub_53E440(v1 + 216);
  sub_53E440(v1 + 104);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  if ((*(v1 + 47) & 0x80000000) == 0)
  {
    sub_9354C4(v1);
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 + 24));
  sub_9354C4(v1);
  _Unwind_Resume(a1);
}

void sub_935430()
{
  if (*v0)
  {
    JUMPOUT(0x93543CLL);
  }

  JUMPOUT(0x93539CLL);
}

void sub_935450()
{
  if (*v0)
  {
    JUMPOUT(0x93545CLL);
  }

  JUMPOUT(0x9353A4);
}

void sub_935470()
{
  if (*v0)
  {
    JUMPOUT(0x93547CLL);
  }

  JUMPOUT(0x9353ACLL);
}

void sub_935490()
{
  if (!*v0)
  {
    JUMPOUT(0x9353BCLL);
  }

  JUMPOUT(0x9353B4);
}

void sub_9354A0()
{
  if (!*v0)
  {
    JUMPOUT(0x9353ECLL);
  }

  JUMPOUT(0x9353E4);
}

void ***sub_9354C4(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_93555C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      if (*(v6 + 55) < 0)
      {
        sub_325C((v4 + 32), *(v6 + 4), *(v6 + 5));
      }

      else
      {
        v7 = v6[2];
        *(v4 + 48) = *(v6 + 6);
        *(v4 + 32) = v7;
      }

      v6 = (v6 + 56);
      v4 = v10 + 56;
      v10 += 56;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_935640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_935664(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_935664(uint64_t a1)
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
          v7 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
LABEL_9:
            operator delete(*v7);
          }
        }

        else
        {
          v7 = v4 - 7;
          if (*(v4 - 33) < 0)
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

void ****sub_9356F0(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_12:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v6 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
LABEL_10:
            operator delete(*v6);
          }
        }

        else
        {
          v6 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
            goto LABEL_10;
          }
        }

        v4 = v6;
        if (v6 == v3)
        {
          v5 = **a1;
          goto LABEL_12;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_9357A0(uint64_t a1)
{
  v2 = *(a1 + 672);
  if (v2)
  {
    *(a1 + 680) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 648);
  if (v3)
  {
    *(a1 + 656) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 616);
  if (v4)
  {
    *(a1 + 624) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 592);
  if (v5)
  {
    *(a1 + 600) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 568);
  if (v6)
  {
    *(a1 + 576) = v6;
    operator delete(v6);
  }

  if ((*(a1 + 543) & 0x80000000) == 0)
  {
    if ((*(a1 + 511) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    operator delete(*(a1 + 488));
    v7 = *(a1 + 472);
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  operator delete(*(a1 + 520));
  if (*(a1 + 511) < 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v7 = *(a1 + 472);
  if (v7 != -1)
  {
LABEL_17:
    (off_266DA38[v7])(&v17, a1 + 440);
  }

LABEL_18:
  *(a1 + 472) = -1;
  if ((*(a1 + 431) & 0x80000000) == 0)
  {
    if ((*(a1 + 399) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    operator delete(*(a1 + 376));
    v8 = *(a1 + 360);
    if (v8 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  operator delete(*(a1 + 408));
  if (*(a1 + 399) < 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v8 = *(a1 + 360);
  if (v8 != -1)
  {
LABEL_24:
    (off_266DA38[v8])(&v18, a1 + 328);
  }

LABEL_25:
  *(a1 + 360) = -1;
  if ((*(a1 + 319) & 0x80000000) == 0)
  {
    if ((*(a1 + 287) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    operator delete(*(a1 + 264));
    v9 = *(a1 + 248);
    if (v9 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(*(a1 + 296));
  if (*(a1 + 287) < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  v9 = *(a1 + 248);
  if (v9 != -1)
  {
LABEL_31:
    (off_266DA38[v9])(&v19, a1 + 216);
  }

LABEL_32:
  *(a1 + 248) = -1;
  if ((*(a1 + 207) & 0x80000000) == 0)
  {
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(*(a1 + 152));
    v10 = *(a1 + 136);
    if (v10 == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  operator delete(*(a1 + 184));
  if (*(a1 + 175) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v10 = *(a1 + 136);
  if (v10 != -1)
  {
LABEL_38:
    (off_266DA38[v10])(&v20, a1 + 104);
  }

LABEL_39:
  *(a1 + 136) = -1;
  v11 = *(a1 + 72);
  if (v11)
  {
    *(a1 + 80) = v11;
    operator delete(v11);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v12 = *a1;
  if (*a1)
  {
    v13 = *(a1 + 8);
    v14 = *a1;
    if (v13 == v12)
    {
LABEL_53:
      *(a1 + 8) = v12;
      operator delete(v14);
      return a1;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v15 = v13 - 7;
        if (*(v13 - 33) < 0)
        {
LABEL_51:
          operator delete(*v15);
        }
      }

      else
      {
        v15 = v13 - 7;
        if (*(v13 - 33) < 0)
        {
          goto LABEL_51;
        }
      }

      v13 = v15;
      if (v15 == v12)
      {
        v14 = *a1;
        goto LABEL_53;
      }
    }
  }

  return a1;
}

void ***sub_935A40(void ***result)
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
          v4 = sub_9357A0(v4 - 696);
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

void sub_935AB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x13B13B13B13B13CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_935BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 208;
    v15 = -v12;
    do
    {
      v14 = sub_935DD4(v14) - 208;
      v15 += 208;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_935EFC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_935BD4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v4 - *a2) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v8 = *(a2 + 64);
  v7 = *(a2 + 72);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_55F1E8(a1 + 88, a2 + 88);
  *(a1 + 200) = *(a2 + 200);
  return a1;
}

void sub_935D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v9 + 8) = v10;
  sub_9356F0(&a9);
  _Unwind_Resume(a1);
}

void sub_935D70(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      sub_9354C4(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  sub_9354C4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_935DD4(uint64_t a1)
{
  if ((*(a1 + 191) & 0x80000000) == 0)
  {
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 136));
    v2 = *(a1 + 120);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 168));
  if (*(a1 + 159) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
LABEL_7:
    (off_266DA38[v2])(&v9, a1 + 88);
  }

LABEL_8:
  *(a1 + 120) = -1;
  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 == v4)
    {
LABEL_22:
      *(a1 + 8) = v4;
      operator delete(v6);
      return a1;
    }

    while (1)
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 3));
        v7 = v5 - 7;
        if (*(v5 - 33) < 0)
        {
LABEL_20:
          operator delete(*v7);
        }
      }

      else
      {
        v7 = v5 - 7;
        if (*(v5 - 33) < 0)
        {
          goto LABEL_20;
        }
      }

      v5 = v7;
      if (v7 == v4)
      {
        v6 = *a1;
        goto LABEL_22;
      }
    }
  }

  return a1;
}

void ***sub_935EFC(void ***result)
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
          v4 = sub_935DD4(v4 - 208);
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

void sub_935F74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1AF286BCA1AF287)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_93605C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 152;
    v15 = -v12;
    do
    {
      sub_936258(v14);
      v14 -= 152;
      v15 += 152;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_9362F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_936094(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v7;
  *(a1 + 56) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v9 = *(a2 + 72);
  v8 = *(a2 + 80);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_93636C((a1 + 96), (a2 + 96));
  if (*(a2 + 143) < 0)
  {
    sub_325C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v10 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v10;
  }

  v11 = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = v11;
  return a1;
}

void sub_9361E0(_Unwind_Exception *a1)
{
  sub_934E08((v1 + 96));
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
    if (*(v1 + 55) < 0)
    {
LABEL_3:
      operator delete(*(v1 + 32));
      if ((*(v1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (*(v1 + 55) < 0)
  {
    goto LABEL_3;
  }

  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*v2);
  _Unwind_Resume(a1);
}

void sub_936258(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 96))
  {
    sub_936658((a1 + 96));
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return;
  }

  v3 = *(a1 + 8);

  operator delete(v3);
}

void ***sub_9362F4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 152;
          sub_936258(v4);
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

void *sub_93636C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v2 - *a2) >> 4) < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9364C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_53E440(v13);
  sub_9364F8(&a11);
  *(v11 + 8) = v12;
  sub_936608(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9364F8(uint64_t a1)
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
        v4 -= 144;
        sub_936560(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_936560(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
    if ((*(a2 + 111) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a2 + 79) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 111) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 88));
  if ((*(a2 + 79) & 0x80000000) == 0)
  {
LABEL_4:
    v3 = *(a2 + 40);
    if (v3 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(a2 + 56));
  v3 = *(a2 + 40);
  if (v3 != -1)
  {
LABEL_9:
    (off_266DA38[v3])(&v4, a2 + 8);
  }

LABEL_10:
  *(a2 + 40) = -1;
}

void ***sub_936608(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_936658(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

void sub_936658(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        if ((*(v3 - 33) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(v3 - 65) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }

      else if ((*(v3 - 33) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(*(v3 - 56));
      if ((*(v3 - 65) & 0x80000000) == 0)
      {
LABEL_7:
        v4 = *(v3 - 104);
        if (v4 == -1)
        {
          goto LABEL_3;
        }

LABEL_12:
        (off_266DA38[v4])(&v5, v3 - 136);
        goto LABEL_3;
      }

LABEL_11:
      operator delete(*(v3 - 88));
      v4 = *(v3 - 104);
      if (v4 != -1)
      {
        goto LABEL_12;
      }

LABEL_3:
      *(v3 - 104) = -1;
      v3 -= 144;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void *sub_936738(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v2 - *a2) >> 3) < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_936890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_934E08((v13 + 24));
  sub_9368C0(&a11);
  *(v11 + 8) = v12;
  sub_936958(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9368C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      for (i = v2 - 48; *(i + 47) < 0; i -= 72)
      {
        operator delete(*(i + 24));
        if (*i)
        {
          goto LABEL_9;
        }

LABEL_4:
        v5 = i - 24;
        if (v5 == v3)
        {
          return a1;
        }
      }

      if (!*i)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_936658(i);
      operator delete(*i);
      goto LABEL_4;
    }
  }

  return a1;
}

void ***sub_936958(void ***a1)
{
  if (a1[1])
  {
    return a1;
  }

  v2 = *a1;
  v3 = **a1;
  if (!v3)
  {
    return a1;
  }

  v4 = v2[1];
  v5 = **a1;
  if (v4 == v3)
  {
    goto LABEL_12;
  }

  v6 = v4 - 48;
  do
  {
    if (*(v6 + 47) < 0)
    {
      operator delete(*(v6 + 24));
      if (!*v6)
      {
        goto LABEL_5;
      }

LABEL_10:
      sub_936658(v6);
      operator delete(*v6);
      goto LABEL_5;
    }

    if (*v6)
    {
      goto LABEL_10;
    }

LABEL_5:
    v7 = (v6 - 24);
    v6 -= 72;
  }

  while (v7 != v3);
  v5 = **a1;
LABEL_12:
  v2[1] = v3;
  operator delete(v5);
  return a1;
}

void **sub_936A08(void **a1)
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
    goto LABEL_11;
  }

  v5 = v3 - 48;
  do
  {
    if (*(v5 + 47) < 0)
    {
      operator delete(*(v5 + 24));
      if (!*v5)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_936658(v5);
      operator delete(*v5);
      goto LABEL_4;
    }

    if (*v5)
    {
      goto LABEL_9;
    }

LABEL_4:
    v6 = (v5 - 24);
    v5 -= 72;
  }

  while (v6 != v2);
  v4 = *a1;
LABEL_11:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

void **sub_936AA8(void **a1)
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
        v3 -= 152;
        sub_936258(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_936B0C(void **a1)
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
        v3 = sub_935DD4(v3 - 208);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_936B68(void **a1)
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
        v3 = sub_9357A0(v3 - 696);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_936BC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_936CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 160;
    v15 = -v12;
    do
    {
      sub_933D54(v14);
      v14 -= 160;
      v15 += 160;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_936DD8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_936CE0(uint64_t a1, __int128 *a2)
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

  sub_55F1E8(a1 + 24, a2 + 24);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v6 = *(a2 + 17);
  v5 = *(a2 + 18);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_936D9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_936DD8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 160;
          sub_933D54(v4);
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

void sub_936E50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1AF286BCA1AF287)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_936F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_9371DC(&a11);
  *(v11 + 8) = v12;
  sub_937244(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_936F74(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
LABEL_6:
  v6 = a2[3];
  v7 = *(a2 + 8);
  *(a1 + 72) = 0;
  *(a1 + 64) = v7;
  *(a1 + 48) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v9 = *(a2 + 9);
  v8 = *(a2 + 10);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v11 = *(a2 + 12);
  v10 = *(a2 + 13);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v13 = *(a2 + 15);
  v12 = *(a2 + 16);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

void sub_937128(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_9371DC(uint64_t a1)
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
        v4 -= 152;
        sub_933CC4(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void ***sub_937244(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_933C18(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

void sub_937294(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xD20D20D20D20D3)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_93737C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 312;
    v15 = -v12;
    do
    {
      v14 = sub_937A74(v14) - 312;
      v15 += 312;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_937C08(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9373B0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_937694(a1, *a2, *(a2 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4 != v5)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_325C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v8 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_325C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v9;
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v11 = *(a2 + 144);
  v10 = *(a2 + 152);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_55F1E8(a1 + 168, a2 + 168);
  *(a1 + 280) = *(a2 + 280);
  if (*(a2 + 311) < 0)
  {
    sub_325C((a1 + 288), *(a2 + 288), *(a2 + 296));
  }

  else
  {
    v12 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v12;
  }

  return a1;
}

void sub_9375AC(_Unwind_Exception *a1)
{
  sub_53E440(v1 + 168);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 152) = v5;
    operator delete(v5);
    if (*(v1 + 143) < 0)
    {
LABEL_3:
      operator delete(*(v1 + 120));
      if ((*(v1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (*(v1 + 143) < 0)
  {
    goto LABEL_3;
  }

  if ((*(v1 + 119) & 0x80000000) == 0)
  {
LABEL_4:
    if (*(v1 + 95) < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(v1 + 96));
  if (*(v1 + 95) < 0)
  {
LABEL_5:
    operator delete(*(v1 + 72));
    v6 = *v2;
    if (*v2)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = *v2;
  if (*v2)
  {
LABEL_6:
    *(v1 + 32) = v6;
    operator delete(v6);
    sub_9379D4(v1);
    _Unwind_Resume(a1);
  }

LABEL_11:
  sub_9379D4(v1);
  _Unwind_Resume(a1);
}

void sub_937684()
{
  if (*v0)
  {
    JUMPOUT(0x93762CLL);
  }

  JUMPOUT(0x937674);
}

void sub_937694(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_937794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_937890(&a11);
  *(v11 + 8) = v12;
  sub_937920(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9377B4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 39) < 0)
  {
    sub_325C((a1 + 16), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = a2[5];
  sub_55BD50(a1 + 48, (a2 + 6));
  *(a1 + 208) = *(a2 + 52);
  if (*(a2 + 239) < 0)
  {
    sub_325C((a1 + 216), a2[27], a2[28]);
  }

  else
  {
    v6 = *(a2 + 27);
    *(a1 + 232) = a2[29];
    *(a1 + 216) = v6;
  }

  return a1;
}

void sub_937864(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 48);
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_937890(uint64_t a1)
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

      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        sub_53A868(v3 - 192);
        if ((*(v3 - 201) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_53A868(v3 - 192);
        if ((*(v3 - 201) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      operator delete(*(v3 - 224));
LABEL_4:
      v3 -= 240;
    }
  }

  return a1;
}

void ***sub_937920(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 == v2)
      {
LABEL_12:
        v1[1] = v2;
        operator delete(v5);
        return v3;
      }

      while (1)
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          sub_53A868((v4 - 24));
          if (*(v4 - 201) < 0)
          {
LABEL_10:
            operator delete(*(v4 - 28));
          }
        }

        else
        {
          sub_53A868((v4 - 24));
          if (*(v4 - 201) < 0)
          {
            goto LABEL_10;
          }
        }

        v4 -= 30;
        if (v4 == v2)
        {
          v5 = **v3;
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

void **sub_9379D4(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        sub_53A868((v3 - 24));
        if (*(v3 - 201) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 28));
        }
      }

      else
      {
        sub_53A868((v3 - 24));
        if (*(v3 - 201) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 -= 30;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_937A74(uint64_t a1)
{
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
    if ((*(a1 + 271) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 239) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 216));
      v2 = *(a1 + 200);
      if (v2 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 271) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 248));
  if (*(a1 + 239) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v2 = *(a1 + 200);
  if (v2 != -1)
  {
LABEL_9:
    (off_266DA38[v2])(&v9, a1 + 168);
  }

LABEL_10:
  *(a1 + 200) = -1;
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_14:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_15:
    v4 = *(a1 + 24);
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_31:
  operator delete(*(a1 + 72));
  v4 = *(a1 + 24);
  if (v4)
  {
LABEL_16:
    *(a1 + 32) = v4;
    operator delete(v4);
  }

LABEL_17:
  v5 = *a1;
  if (*a1)
  {
    v6 = *(a1 + 8);
    v7 = *a1;
    if (v6 == v5)
    {
LABEL_27:
      *(a1 + 8) = v5;
      operator delete(v7);
      return a1;
    }

    while (1)
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
        sub_53A868((v6 - 24));
        if (*(v6 - 201) < 0)
        {
LABEL_25:
          operator delete(*(v6 - 28));
        }
      }

      else
      {
        sub_53A868((v6 - 24));
        if (*(v6 - 201) < 0)
        {
          goto LABEL_25;
        }
      }

      v6 -= 30;
      if (v6 == v5)
      {
        v7 = *a1;
        goto LABEL_27;
      }
    }
  }

  return a1;
}

void ***sub_937C08(void ***result)
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
          v4 = sub_937A74(v4 - 312);
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

void sub_937C80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_937D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_937EAC(&a11);
  *(v11 + 8) = v12;
  sub_937F78(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_937DA0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_93636C((a1 + 24), (a2 + 24));
  *(a1 + 48) = *(a2 + 48);
  if (*(a2 + 79) < 0)
  {
    sub_325C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  return a1;
}

void sub_937E7C(_Unwind_Exception *a1)
{
  sub_934E08((v1 + 24));
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_937EAC(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = result;
    sub_937EE0(result);
    return v1;
  }

  return result;
}

void sub_937EE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    while ((*(v3 - 1) & 0x80000000) == 0)
    {
      v5 = (v3 - 56);
      if (*(v3 - 56))
      {
        goto LABEL_6;
      }

LABEL_7:
      v6 = v3 - 80;
      v7 = *(v3 - 80);
      if (v7)
      {
        *(v3 - 72) = v7;
        operator delete(v7);
      }

      v3 -= 80;
      if (v6 == v4)
      {
        return;
      }
    }

    operator delete(*(v3 - 24));
    v5 = (v3 - 56);
    if (!*(v3 - 56))
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_936658(v5);
    operator delete(*v5);
    goto LABEL_7;
  }
}

void sub_937F78(void ***a1)
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
    while ((*(v4 - 1) & 0x80000000) == 0)
    {
      v6 = (v4 - 56);
      if (*(v4 - 7))
      {
        goto LABEL_7;
      }

LABEL_8:
      v7 = v4 - 80;
      v8 = *(v4 - 10);
      if (v8)
      {
        *(v4 - 9) = v8;
        operator delete(v8);
      }

      v4 -= 80;
      if (v7 == v2)
      {
        v5 = **a1;
        goto LABEL_13;
      }
    }

    operator delete(*(v4 - 3));
    v6 = (v4 - 56);
    if (!*(v4 - 7))
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_936658(v6);
    operator delete(*v6);
    goto LABEL_8;
  }

LABEL_13:
  v1[1] = v2;

  operator delete(v5);
}

void **sub_938058(void **a1)
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
        v3 = sub_937A74(v3 - 312);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_9380B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x73615A240E6C2CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_938238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  sub_938484(&a11);
  *(v11 + 8) = v12;
  sub_9385C4(&a9);
  _Unwind_Resume(a1);
}

void *sub_938270(void *a1, void *a2)
{
  *a1 = *a2;
  sub_55BD50((a1 + 1), (a2 + 1));
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  sub_5CEC4C((a1 + 21), a2[21], a2[22], 0xCCCCCCCCCCCCCCCDLL * ((a2[22] - a2[21]) >> 5));
  sub_55BD50((a1 + 24), (a2 + 24));
  sub_55BD50((a1 + 44), (a2 + 44));
  sub_938354(a1 + 64, a2 + 64);
  return a1;
}

void sub_938304(_Unwind_Exception *a1)
{
  sub_53A868(v3 + 352);
  sub_53A868(v3 + 192);
  sub_5C0ED8(v2);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void *sub_938354(void *result, void *a2)
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

void sub_938464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_49A814(&a11);
  *(v11 + 8) = v12;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_938484(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 568;
      do
      {
        sub_938500((v4 + 24));
        v6 = *v4;
        if (*v4)
        {
          *(v4 + 8) = v6;
          operator delete(v6);
        }

        v5 = v4 == v3;
        v4 -= 568;
      }

      while (!v5);
    }
  }

  return a1;
}

void *sub_938500(void *a1)
{
  v2 = a1[64];
  if (v2)
  {
    v3 = a1[65];
    v4 = a1[64];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[64];
    }

    a1[65] = v2;
    operator delete(v4);
  }

  sub_53A868((a1 + 44));
  sub_53A868((a1 + 24));
  v6 = a1[21];
  if (v6)
  {
    v7 = a1[22];
    v8 = a1[21];
    if (v7 != v6)
    {
      do
      {
        v7 = sub_53A868(v7 - 160);
      }

      while (v7 != v6);
      v8 = a1[21];
    }

    a1[22] = v6;
    operator delete(v8);
  }

  sub_53A868((a1 + 1));
  return a1;
}

void ***sub_9385C4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 568;
        do
        {
          sub_938500(v6 + 3);
          v8 = *v6;
          if (*v6)
          {
            *(v6 + 1) = v8;
            operator delete(v8);
          }

          v7 = v6 == v2;
          v6 -= 568;
        }

        while (!v7);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_93865C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_266D8E0;
  v4 = *(a2 + 8);
  *a1 = &off_266D810;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = &off_266D8E0;
  v5 = *(a2 + 40);
  *(a1 + 32) = &off_266D850;
  *(a1 + 40) = v5;
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *(a2 + 56) = 0u;
  *(a2 + 48) = 0;
  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  *(a2 + 80) = 0u;
  *(a2 + 72) = 0;
  *(a1 + 96) = &off_266D8E0;
  v8 = *(a2 + 104);
  *(a1 + 96) = &off_266D880;
  *(a1 + 104) = v8;
  sub_4C6AE8(a1 + 112, a2 + 112);
  *(a1 + 1208) = &off_266D8E0;
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1208) = &off_266D8B0;
  v9 = *(a2 + 1240);
  *(a1 + 1224) = *(a2 + 1224);
  *(a1 + 1240) = v9;
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1264) = *(a2 + 1264);
  *(a2 + 1272) = 0;
  *(a2 + 1256) = 0u;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1296) = 0;
  *(a2 + 1280) = 0u;
  *(a1 + 1320) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1304) = *(a2 + 1304);
  *(a1 + 1312) = *(a2 + 1312);
  *(a2 + 1320) = 0;
  *(a2 + 1304) = 0u;
  *(a1 + 1344) = 0;
  *(a1 + 1328) = 0u;
  *(a1 + 1328) = *(a2 + 1328);
  *(a1 + 1344) = *(a2 + 1344);
  *(a2 + 1344) = 0;
  *(a2 + 1328) = 0u;
  v10 = *(a2 + 1352);
  *(a2 + 1352) = 0;
  *(a1 + 1352) = v10;
  LODWORD(v10) = *(a2 + 1360);
  *(a1 + 1364) = *(a2 + 1364);
  *(a1 + 1360) = v10;
  v11 = *(a2 + 1368);
  *(a1 + 1384) = *(a2 + 1384);
  *(a1 + 1368) = v11;
  *(a2 + 1368) = 0;
  *(a2 + 1376) = 0u;
  v12 = *(a2 + 1392);
  *(a1 + 1408) = *(a2 + 1408);
  *(a1 + 1392) = v12;
  *(a2 + 1400) = 0u;
  *(a2 + 1392) = 0;
  *(a1 + 1416) = &off_266D8E0;
  *(a1 + 1424) = *(a2 + 1424);
  *(a1 + 1416) = &off_266D8F8;
  v13 = *(a2 + 1432);
  *(a1 + 1440) = *(a2 + 1440);
  *(a1 + 1432) = v13;
  v14 = *(a2 + 1448);
  *(a1 + 1464) = *(a2 + 1464);
  *(a1 + 1448) = v14;
  *(a2 + 1448) = 0;
  *(a2 + 1456) = 0u;
  *(a1 + 1472) = &off_266D8E0;
  *(a1 + 1480) = *(a2 + 1480);
  *(a1 + 1472) = &off_266D928;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0u;
  *(a1 + 1488) = *(a2 + 1488);
  *(a1 + 1504) = *(a2 + 1504);
  *(a2 + 1504) = 0;
  *(a2 + 1488) = 0u;
  *(a1 + 1512) = &off_266D8E0;
  *(a1 + 1520) = *(a2 + 1520);
  *(a1 + 1512) = &off_266D958;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = 0u;
  *(a1 + 1528) = *(a2 + 1528);
  *(a1 + 1536) = *(a2 + 1536);
  *(a2 + 1544) = 0;
  *(a2 + 1528) = 0u;
  *(a1 + 1552) = &off_266D8E0;
  *(a1 + 1560) = *(a2 + 1560);
  *(a1 + 1552) = &off_266D988;
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0u;
  *(a1 + 1568) = *(a2 + 1568);
  *(a1 + 1584) = *(a2 + 1584);
  *(a2 + 1584) = 0;
  *(a2 + 1568) = 0u;
  *(a1 + 1592) = &off_266D8E0;
  *(a1 + 1600) = *(a2 + 1600);
  *(a1 + 1592) = &off_266D9B8;
  *(a1 + 1608) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1608) = *(a2 + 1608);
  *(a1 + 1616) = *(a2 + 1616);
  *(a2 + 1624) = 0;
  *(a2 + 1608) = 0u;
  *(a1 + 1648) = 0;
  *(a1 + 1632) = 0u;
  *(a1 + 1632) = *(a2 + 1632);
  *(a1 + 1648) = *(a2 + 1648);
  *(a2 + 1648) = 0;
  *(a2 + 1632) = 0u;
  *(a1 + 1672) = 0;
  *(a1 + 1656) = 0u;
  *(a1 + 1656) = *(a2 + 1656);
  *(a1 + 1664) = *(a2 + 1664);
  *(a2 + 1672) = 0;
  *(a2 + 1656) = 0u;
  *(a1 + 1696) = 0;
  *(a1 + 1680) = 0u;
  *(a1 + 1680) = *(a2 + 1680);
  *(a1 + 1696) = *(a2 + 1696);
  *(a2 + 1696) = 0;
  *(a2 + 1680) = 0u;
  *(a1 + 1720) = 0;
  *(a1 + 1704) = 0u;
  *(a1 + 1704) = *(a2 + 1704);
  *(a1 + 1712) = *(a2 + 1712);
  *(a2 + 1720) = 0;
  *(a2 + 1704) = 0u;
  v15 = *(a2 + 1728);
  *(a1 + 1744) = *(a2 + 1744);
  *(a1 + 1728) = v15;
  *(a2 + 1728) = 0;
  *(a2 + 1736) = 0u;
  v16 = *(a2 + 1752);
  *(a1 + 1768) = *(a2 + 1768);
  *(a1 + 1752) = v16;
  *(a2 + 1760) = 0u;
  *(a2 + 1752) = 0;
  v17 = *(a2 + 1776);
  *(a1 + 1792) = *(a2 + 1792);
  *(a1 + 1776) = v17;
  *(a2 + 1792) = 0;
  *(a2 + 1776) = 0u;
  *(a1 + 1800) = *(a2 + 1800);
  *(a1 + 1808) = &off_266D8E0;
  *(a1 + 1816) = *(a2 + 1816);
  *(a1 + 1808) = &off_266D9E8;
  *(a1 + 1824) = *(a2 + 1824);
  v18 = *(a2 + 1832);
  *(a1 + 1848) = *(a2 + 1848);
  *(a1 + 1832) = v18;
  *(a2 + 1840) = 0u;
  *(a2 + 1832) = 0;
  v19 = *(a2 + 1856);
  *(a1 + 1872) = *(a2 + 1872);
  *(a1 + 1856) = v19;
  *(a2 + 1864) = 0u;
  *(a2 + 1856) = 0;
  v20 = *(a2 + 1880);
  *(a1 + 1888) = *(a2 + 1888);
  *(a1 + 1880) = v20;
  *(a1 + 1896) = 0;
  *(a1 + 1904) = 0u;
  *(a1 + 1896) = *(a2 + 1896);
  *(a1 + 1904) = *(a2 + 1904);
  *(a2 + 1912) = 0;
  *(a2 + 1896) = 0u;
  *(a1 + 1936) = 0;
  *(a1 + 1920) = 0u;
  *(a1 + 1920) = *(a2 + 1920);
  *(a1 + 1936) = *(a2 + 1936);
  *(a2 + 1936) = 0;
  *(a2 + 1920) = 0u;
  v21 = *(a2 + 1944);
  *(a1 + 1960) = *(a2 + 1960);
  *(a1 + 1944) = v21;
  *(a2 + 1944) = 0;
  *(a2 + 1952) = 0u;
  LODWORD(v20) = *(a2 + 1968);
  *(a1 + 1972) = *(a2 + 1972);
  *(a1 + 1968) = v20;
  *(a1 + 1976) = &off_266D8E0;
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 1976) = &off_266DA18;
  *(a1 + 1992) = 0;
  *(a1 + 2000) = 0u;
  *(a1 + 1992) = *(a2 + 1992);
  *(a1 + 2000) = *(a2 + 2000);
  *(a2 + 2008) = 0;
  *(a2 + 1992) = 0u;
  *(a1 + 2032) = 0;
  *(a1 + 2016) = 0u;
  *(a1 + 2016) = *(a2 + 2016);
  *(a1 + 2032) = *(a2 + 2032);
  *(a2 + 2032) = 0;
  *(a2 + 2016) = 0u;
  v22 = *(a2 + 2040);
  *(a2 + 2040) = 0;
  *(a1 + 2040) = v22;
  *(a1 + 2048) = *(a2 + 2048);
  *(a2 + 2048) = 0;
  v23 = *(a2 + 2056);
  *(a1 + 2056) = v23;
  v24 = *(a2 + 2064);
  *(a1 + 2064) = v24;
  *(a1 + 2072) = *(a2 + 2072);
  if (v24)
  {
    v25 = *(v23 + 8);
    v26 = *(a1 + 2048);
    if ((v26 & (v26 - 1)) != 0)
    {
      if (v25 >= v26)
      {
        v25 %= v26;
      }
    }

    else
    {
      v25 &= v26 - 1;
    }

    *(v22 + 8 * v25) = a1 + 2056;
    *(a2 + 2056) = 0;
    *(a2 + 2064) = 0;
  }

  *(a1 + 2080) = &off_266D8E0;
  *(a1 + 2088) = *(a2 + 2088);
  *(a1 + 2080) = &off_266DA70;
  *(a1 + 2096) = 0;
  *(a1 + 2104) = 0uLL;
  *(a1 + 2096) = *(a2 + 2096);
  *(a1 + 2112) = *(a2 + 2112);
  *(a2 + 2112) = 0;
  *(a2 + 2096) = 0uLL;
  *(a1 + 2136) = 0;
  *(a1 + 2120) = 0uLL;
  *(a1 + 2120) = *(a2 + 2120);
  *(a1 + 2128) = *(a2 + 2128);
  *(a2 + 2136) = 0;
  *(a2 + 2120) = 0uLL;
  *(a1 + 2144) = *(a2 + 2144);
  *(a1 + 2160) = &off_266D8E0;
  *(a1 + 2168) = *(a2 + 2168);
  *(a1 + 2160) = &off_266DAA0;
  *(a1 + 2176) = 0;
  *(a1 + 2184) = 0uLL;
  *(a1 + 2176) = *(a2 + 2176);
  *(a1 + 2192) = *(a2 + 2192);
  *(a2 + 2192) = 0;
  *(a2 + 2176) = 0uLL;
  *(a1 + 2200) = &off_266D8E0;
  *(a1 + 2208) = *(a2 + 2208);
  *(a1 + 2200) = &off_266DAD0;
  *(a1 + 2216) = 0;
  *(a1 + 2224) = 0uLL;
  *(a1 + 2216) = *(a2 + 2216);
  *(a1 + 2224) = *(a2 + 2224);
  *(a2 + 2232) = 0;
  *(a2 + 2216) = 0uLL;
  *(a1 + 2240) = &off_266D8E0;
  *(a1 + 2248) = *(a2 + 2248);
  *(a1 + 2240) = &off_266DB00;
  *(a1 + 2256) = 0;
  *(a1 + 2264) = 0uLL;
  *(a1 + 2256) = *(a2 + 2256);
  *(a1 + 2272) = *(a2 + 2272);
  *(a2 + 2272) = 0;
  *(a2 + 2256) = 0uLL;
  *(a1 + 2280) = *(a2 + 2280);
  *(a1 + 2288) = &off_266D8E0;
  *(a1 + 2296) = *(a2 + 2296);
  *(a1 + 2288) = &off_266DB30;
  v27 = *(a2 + 2304);
  v28 = *(a2 + 2320);
  *(a1 + 2332) = *(a2 + 2332);
  *(a1 + 2320) = v28;
  *(a1 + 2304) = v27;
  *(a1 + 2352) = 0;
  *(a1 + 2384) = -1;
  v29 = *(a2 + 2384);
  if (v29 != -1)
  {
    v33 = a1 + 2352;
    (off_266DB98[v29])(&v33, a2 + 2352);
    *(a1 + 2384) = v29;
  }

  *(a1 + 2392) = *(a2 + 2392);
  v30 = *(a2 + 2400);
  *(a1 + 2416) = *(a2 + 2416);
  *(a1 + 2400) = v30;
  *(a2 + 2416) = 0;
  *(a2 + 2408) = 0;
  *(a2 + 2400) = 0;
  *(a1 + 2424) = *(a2 + 2424);
  v31 = *(a2 + 2432);
  *(a1 + 2448) = *(a2 + 2448);
  *(a1 + 2432) = v31;
  *(a2 + 2448) = 0;
  *(a2 + 2440) = 0;
  *(a2 + 2432) = 0;
  *(a1 + 2456) = *(a2 + 2456);
  return a1;
}

uint64_t sub_9390A4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2480;
    sub_9390FC(i - 2472);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9390FC(uint64_t a1)
{
  *(a1 + 2288) = &off_266DB30;
  if ((*(a1 + 2455) & 0x80000000) == 0)
  {
    if ((*(a1 + 2423) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 2400));
    v2 = *(a1 + 2384);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 2432));
  if (*(a1 + 2423) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 2384);
  if (v2 != -1)
  {
LABEL_7:
    (off_266DA38[v2])(&v26, a1 + 2352);
  }

LABEL_8:
  *(a1 + 2384) = -1;
  *(a1 + 2240) = &off_266DB00;
  v3 = *(a1 + 2256);
  if (v3)
  {
    v4 = *(a1 + 2264);
    v5 = *(a1 + 2256);
    if (v4 != v3)
    {
      v6 = v4 - 568;
      do
      {
        sub_938500((v6 + 24));
        v8 = *v6;
        if (*v6)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v7 = v6 == v3;
        v6 -= 568;
      }

      while (!v7);
      v5 = *(a1 + 2256);
    }

    *(a1 + 2264) = v3;
    operator delete(v5);
  }

  *(a1 + 2200) = &off_266DAD0;
  v9 = *(a1 + 2216);
  if (v9)
  {
    *(a1 + 2224) = v9;
    operator delete(v9);
  }

  *(a1 + 2160) = &off_266DAA0;
  v10 = *(a1 + 2176);
  if (v10)
  {
    v11 = *(a1 + 2184);
    v12 = *(a1 + 2176);
    if (v11 != v10)
    {
      do
      {
        v11 -= 152;
        sub_936258(v11);
      }

      while (v11 != v10);
      v12 = *(a1 + 2176);
    }

    *(a1 + 2184) = v10;
    operator delete(v12);
  }

  *(a1 + 2080) = &off_266DA70;
  v27 = (a1 + 2120);
  sub_937F78(&v27);
  v13 = *(a1 + 2096);
  if (v13)
  {
    v14 = *(a1 + 2104);
    v15 = *(a1 + 2096);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_937A74(v14 - 312);
      }

      while (v14 != v13);
      v15 = *(a1 + 2096);
    }

    *(a1 + 2104) = v13;
    operator delete(v15);
  }

  sub_9395F0(a1 + 1976);
  *(a1 + 1808) = &off_266D9E8;
  if (*(a1 + 1967) < 0)
  {
    operator delete(*(a1 + 1944));
  }

  if (*(a1 + 1920))
  {
    sub_936658((a1 + 1920));
    operator delete(*(a1 + 1920));
  }

  v16 = *(a1 + 1896);
  if (v16)
  {
    *(a1 + 1904) = v16;
    operator delete(v16);
  }

  if (*(a1 + 1879) < 0)
  {
    operator delete(*(a1 + 1856));
    if ((*(a1 + 1855) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((*(a1 + 1855) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(*(a1 + 1832));
LABEL_36:
  sub_939910(a1 + 1592);
  *(a1 + 1552) = &off_266D988;
  v17 = *(a1 + 1568);
  if (v17)
  {
    v18 = *(a1 + 1576);
    v19 = *(a1 + 1568);
    if (v18 != v17)
    {
      do
      {
        v18 = sub_399184(v18 - 456);
      }

      while (v18 != v17);
      v19 = *(a1 + 1568);
    }

    *(a1 + 1576) = v17;
    operator delete(v19);
  }

  *(a1 + 1512) = &off_266D958;
  v20 = *(a1 + 1528);
  if (v20)
  {
    *(a1 + 1536) = v20;
    operator delete(v20);
  }

  *(a1 + 1472) = &off_266D928;
  v21 = *(a1 + 1488);
  if (v21)
  {
    v22 = *(a1 + 1496);
    v23 = *(a1 + 1488);
    if (v22 != v21)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = *(a1 + 1488);
    }

    *(a1 + 1496) = v21;
    operator delete(v23);
  }

  *(a1 + 1416) = &off_266D8F8;
  if (*(a1 + 1471) < 0)
  {
    operator delete(*(a1 + 1448));
  }

  *(a1 + 1208) = &off_266D8B0;
  sub_53A868(a1 + 1256);
  *(a1 + 96) = &off_266D880;
  sub_3EEA68(a1 + 112);
  *(a1 + 32) = &off_266D850;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 48));
  return a1;
}

void **sub_939588(void **a1)
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
        v5 = v3 - 2480;
        sub_9390FC((v3 - 2472));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9395F0(uint64_t a1)
{
  *a1 = &off_266DA18;
  v2 = *(a1 + 80);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_266DB50[v4])(&v10, v2 + 5);
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

  v5 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 40))
  {
    sub_933C18((a1 + 40));
    operator delete(*(a1 + 40));
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
        v7 -= 160;
        sub_933D54(v7);
      }

      while (v7 != v6);
      v8 = *(a1 + 16);
    }

    *(a1 + 24) = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_939710(uint64_t result)
{
  v1 = *(result + 72);
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

void *sub_939788(void *a1)
{
  *a1 = &off_266DAA0;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v3 -= 152;
        sub_936258(v3);
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_939808(uint64_t a1)
{
  *a1 = &off_266DA70;
  v6 = (a1 + 40);
  sub_937F78(&v6);
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_937A74(v3 - 312);
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_939898(uint64_t result)
{
  v1 = *(result + 80);
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

uint64_t sub_939910(uint64_t a1)
{
  *a1 = &off_266D9B8;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 159) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_25:
      operator delete(*(a1 + 136));
      v2 = *(a1 + 112);
      if (!v2)
      {
LABEL_5:
        v3 = (a1 + 88);
        if (!*(a1 + 88))
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a1 + 183) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 160));
  if (*(a1 + 159) < 0)
  {
    goto LABEL_25;
  }

LABEL_4:
  v2 = *(a1 + 112);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_26:
  v14 = *(a1 + 120);
  v15 = v2;
  if (v14 == v2)
  {
    goto LABEL_35;
  }

  v16 = v14 - 48;
  do
  {
    if (*(v16 + 47) < 0)
    {
      operator delete(*(v16 + 24));
      if (!*v16)
      {
        goto LABEL_28;
      }

LABEL_33:
      sub_936658(v16);
      operator delete(*v16);
      goto LABEL_28;
    }

    if (*v16)
    {
      goto LABEL_33;
    }

LABEL_28:
    v17 = (v16 - 24);
    v16 -= 72;
  }

  while (v17 != v2);
  v15 = *(a1 + 112);
LABEL_35:
  *(a1 + 120) = v2;
  operator delete(v15);
  v3 = (a1 + 88);
  if (*(a1 + 88))
  {
LABEL_6:
    sub_936658(v3);
    operator delete(*v3);
  }

LABEL_7:
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 64);
    if (v5 != v4)
    {
      do
      {
        v5 -= 152;
        sub_936258(v5);
      }

      while (v5 != v4);
      v6 = *(a1 + 64);
    }

    *(a1 + 72) = v4;
    operator delete(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    if (v8 != v7)
    {
      do
      {
        v8 = sub_935DD4(v8 - 208);
      }

      while (v8 != v7);
      v9 = *(a1 + 40);
    }

    *(a1 + 48) = v7;
    operator delete(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    if (v11 != v10)
    {
      do
      {
        v11 = sub_9357A0(v11 - 696);
      }

      while (v11 != v10);
      v12 = *(a1 + 16);
    }

    *(a1 + 24) = v10;
    operator delete(v12);
  }

  return a1;
}

uint64_t sub_939AE8(uint64_t result)
{
  v1 = *(result + 48);
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

uint64_t sub_939B60(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  v7 = *(a2 + 64);
  v8 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = (a1 + 96);
  if (*(a1 + 96))
  {
    sub_936658((a1 + 96));
    operator delete(*v9);
    *v9 = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v10 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v10;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  v11 = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = v11;
  return a1;
}

void *sub_939CA4(void *a1)
{
  *a1 = &off_266DB00;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      v5 = v3 - 568;
      do
      {
        sub_938500((v5 + 24));
        v7 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v7;
          operator delete(v7);
        }

        v6 = v5 == v2;
        v5 -= 568;
      }

      while (!v6);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_939D44(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 48) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if (*(v3 - 41) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 64));
        }
      }

      else if (*(v3 - 41) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 40);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v5 = *(a1 + 16);
  if (v5)
  {
    do
    {
      v8 = *v5;
      if (*(v5 + 79) < 0)
      {
        operator delete(v5[7]);
        if (*(v5 + 47) < 0)
        {
LABEL_21:
          operator delete(v5[3]);
        }
      }

      else if (*(v5 + 47) < 0)
      {
        goto LABEL_21;
      }

      operator delete(v5);
      v5 = v8;
    }

    while (v8);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void sub_939E30()
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
  xmmword_27B1628 = 0u;
  unk_27B1638 = 0u;
  dword_27B1648 = 1065353216;
  sub_3A9A34(&xmmword_27B1628, v0);
  sub_3A9A34(&xmmword_27B1628, v3);
  sub_3A9A34(&xmmword_27B1628, __p);
  sub_3A9A34(&xmmword_27B1628, v9);
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
    qword_27B1600 = 0;
    qword_27B1608 = 0;
    qword_27B15F8 = 0;
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

void sub_93A078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1610)
  {
    qword_27B1618 = qword_27B1610;
    operator delete(qword_27B1610);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_93A124(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, void *a5, uint64_t *a6, uint64_t *a7, void *a8, int a9, uint64_t a10, _DWORD *a11)
{
  *a1 = 0;
  *(a1 + 584) = -1;
  v18 = *(a2 + 584);
  if (v18 != -1)
  {
    v23 = a1;
    (off_266DC10[v18])(&v23);
    *(a1 + 584) = v18;
  }

  *(a1 + 592) = *a3;
  *(a1 + 596) = a4;
  sub_93B37C((a1 + 600), a5);
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  sub_93B9CC(a1 + 624, *a6, a6[1], 0xEEEEEEEEEEEEEEEFLL * ((a6[1] - *a6) >> 3));
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  v20 = *a7;
  v19 = a7[1];
  v23 = a1 + 648;
  v24 = 0;
  if (v19 != v20)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  v21 = a8[1] - *a8;
  if (v21)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 696) = a9;
  sub_5ADDC(a1 + 704, a10);
  *(a1 + 768) = 0;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 776) = *a11;
  sub_790648(a1 + 784, (a11 + 2));
  return a1;
}

void sub_93A328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 656) = v10;
  sub_93C664(&a9);
  sub_93A460((v9 + 624));
  sub_93A4BC((v9 + 600));
  sub_93A58C(v9);
  _Unwind_Resume(a1);
}

void **sub_93A3E8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 6);
        v5 -= 48;
        v6 = v7;
        if (v7)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_93A460(void **a1)
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
        v3 = sub_93C358(v3 - 15);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ***sub_93A4BC(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 4);
        v5 -= 4;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 3);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v10 = *(v9 - 3);
              if (v10)
              {
                *(v9 - 2) = v10;
                operator delete(v10);
              }

              v11 = v9 - 56;
              v12 = *(v9 - 7);
              if (v12)
              {
                *(v9 - 6) = v12;
                operator delete(v12);
              }

              v9 -= 56;
            }

            while (v11 != v7);
            v6 = *v5;
          }

          *(v3 - 3) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_93A58C(uint64_t a1)
{
  v2 = *(a1 + 584);
  if (v2 != -1)
  {
    (off_266DBE8[v2])(&v4, a1);
  }

  *(a1 + 584) = -1;
  return a1;
}

uint64_t sub_93A600(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, char a5)
{
  *a1 = 0;
  *(a1 + 584) = -1;
  v9 = *(a2 + 584);
  if (v9 != -1)
  {
    v13 = a1;
    (off_266DC10[v9])(&v13);
    *(a1 + 584) = v9;
  }

  *(a1 + 592) = *a3;
  *(a1 + 596) = 0u;
  *(a1 + 612) = 0u;
  *(a1 + 628) = 0u;
  *(a1 + 644) = 0u;
  *(a1 + 660) = 0u;
  *(a1 + 676) = 0u;
  *(a1 + 692) = 0;
  sub_5F328(a1 + 704);
  *(a1 + 760) = 0;
  *(a1 + 744) = 0u;
  v10 = a4[1] - *a4;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 768) = a5;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  *(a1 + 904) = -1;
  *(a1 + 912) = 0xFFFF;
  *(a1 + 920) = -1;
  *(a1 + 922) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 942) = 0;
  *(a1 + 952) = 0x7FFFFFFF;
  *(a1 + 968) = 0;
  *(a1 + 960) = 0x7FFFFFFF;
  *(a1 + 964) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 976) = 0;
  *&v11 = 0x8000000080000000;
  *(a1 + 984) = 0x8000000080000000;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1044) = 0x7FFFFFFF;
  *(a1 + 1048) = 0x8000000080000000;
  *(a1 + 1064) = 0;
  *(a1 + 1072) = xmmword_2297C00;
  *(a1 + 1088) = -1;
  *(a1 + 1096) = -1;
  *(a1 + 1098) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1118) = 0;
  *(a1 + 1128) = 0x7FFFFFFF;
  *(a1 + 1144) = 0u;
  *(a1 + 1136) = 0x7FFFFFFF;
  *(a1 + 1140) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1160) = 0x8000000080000000;
  *(a1 + 1216) = 0;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1220) = 0x7FFFFFFF;
  *(a1 + 1224) = 0x8000000080000000;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = xmmword_2297C00;
  *(a1 + 1264) = -1;
  *(a1 + 1272) = 0x7FFFFFFF;
  *(a1 + 1276) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = 0x8000000080000000;
  *(a1 + 1320) = 0x7FFFFFFF;
  *(a1 + 1328) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1336) = 0x8000000080000000;
  *(a1 + 1344) = 0x7FFFFFFF;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1352) = 0u;
  *(&v11 + 1) = 0x8000000080000000;
  *(a1 + 1592) = v11;
  *(a1 + 1608) = v11;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  return a1;
}

void sub_93A888(_Unwind_Exception *a1)
{
  v3 = *(v1 + 672);
  if (v3)
  {
    *(v1 + 680) = v3;
    operator delete(v3);
  }

  sub_93A3E8((v1 + 648));
  sub_93A460((v1 + 624));
  sub_93A4BC((v1 + 600));
  sub_93A58C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_93A8E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 584) = -1;
  v3 = *(a2 + 584);
  if (v3 != -1)
  {
    v6 = a1;
    (off_266DC10[v3])(&v6);
    *(a1 + 584) = v3;
  }

  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 684) = 0u;
  sub_5F328(a1 + 704);
  *(a1 + 776) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  *(a1 + 744) = 0;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 904) = -1;
  *(a1 + 912) = 0xFFFF;
  *(a1 + 920) = -1;
  *(a1 + 922) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 942) = 0;
  *(a1 + 952) = 0x7FFFFFFF;
  *(a1 + 968) = 0u;
  *(a1 + 960) = 0x7FFFFFFF;
  *(a1 + 964) = 0x7FFFFFFF7FFFFFFFLL;
  *&v4 = 0x8000000080000000;
  *(a1 + 984) = 0x8000000080000000;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1044) = 0x7FFFFFFF;
  *(a1 + 1048) = 0x8000000080000000;
  *(a1 + 1064) = 0;
  *(a1 + 1072) = xmmword_2297C00;
  *(a1 + 1088) = -1;
  *(a1 + 1096) = -1;
  *(a1 + 1098) = 0;
  *(a1 + 1118) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1128) = 0x7FFFFFFF;
  *(a1 + 1144) = 0u;
  *(a1 + 1136) = 0x7FFFFFFF;
  *(a1 + 1140) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1160) = 0x8000000080000000;
  *(a1 + 1216) = 0;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1220) = 0x7FFFFFFF;
  *(a1 + 1224) = 0x8000000080000000;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = xmmword_2297C00;
  *(a1 + 1264) = -1;
  *(a1 + 1272) = 0x7FFFFFFF;
  *(a1 + 1276) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = 0x8000000080000000;
  *(a1 + 1320) = 0x7FFFFFFF;
  *(a1 + 1328) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1336) = 0x8000000080000000;
  *(a1 + 1344) = 0x7FFFFFFF;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1352) = 0u;
  *(&v4 + 1) = 0x8000000080000000;
  *(a1 + 1592) = v4;
  *(a1 + 1608) = v4;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  return a1;
}

void sub_93AAFC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 672);
  if (v3)
  {
    *(v1 + 680) = v3;
    operator delete(v3);
  }

  sub_93A3E8((v1 + 648));
  sub_93A460((v1 + 624));
  sub_93A4BC((v1 + 600));
  sub_93A58C(v1);
  _Unwind_Resume(a1);
}

void sub_93AB3C(uint64_t a1, void *a2)
{
  v3 = a2[12];
  if (v3)
  {
    a2[13] = v3;
    operator delete(v3);
  }

  v4 = a2[9];
  if (v4)
  {
    a2[10] = v4;
    operator delete(v4);
  }

  v5 = a2[3];
  if (v5)
  {
    a2[4] = v5;

    operator delete(v5);
  }
}

void *sub_93ABA4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 576) == 1)
  {
    sub_93ABFC((a2 + 288));
  }

  return sub_93ABFC(a2);
}

void *sub_93ABFC(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    v5 = a1[26];
    v6 = a1[25];
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 24);
        if (v8)
        {
          v9 = *(v5 - 16);
          v7 = *(v5 - 24);
          if (v9 != v8)
          {
            do
            {
              v10 = *(v9 - 9);
              v9 -= 4;
              if (v10 < 0)
              {
                operator delete(*v9);
              }
            }

            while (v9 != v8);
            v7 = *(v5 - 24);
          }

          *(v5 - 16) = v8;
          operator delete(v7);
        }

        v5 -= 104;
      }

      while (v5 != v4);
      v6 = a1[25];
    }

    a1[26] = v4;
    operator delete(v6);
  }

  v11 = a1[22];
  if (v11)
  {
    v12 = a1[23];
    v13 = a1[22];
    if (v12 != v11)
    {
      do
      {
        v15 = *(v12 - 24);
        if (v15)
        {
          v16 = *(v12 - 16);
          v14 = *(v12 - 24);
          if (v16 != v15)
          {
            do
            {
              v17 = *(v16 - 9);
              v16 -= 4;
              if (v17 < 0)
              {
                operator delete(*v16);
              }
            }

            while (v16 != v15);
            v14 = *(v12 - 24);
          }

          *(v12 - 16) = v15;
          operator delete(v14);
        }

        v12 -= 104;
      }

      while (v12 != v11);
      v13 = a1[22];
    }

    a1[23] = v11;
    operator delete(v13);
  }

  v18 = a1[19];
  if (v18)
  {
    operator delete(v18);
  }

  v19 = a1[9];
  if (v19)
  {
    a1[10] = v19;
    operator delete(v19);
  }

  return a1;
}

void *sub_93AD6C(void **a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_93AFE8(*a1, a2);
  *(v3 + 288) = 0;
  *(v3 + 576) = 0;
  if (*(a2 + 576) == 1)
  {
    result = sub_93AFE8((v3 + 288), (a2 + 288));
    *(v3 + 576) = 1;
  }

  return result;
}

void sub_93ADC0(_Unwind_Exception *a1)
{
  if (*(v1 + 576) == 1)
  {
    sub_93ABFC((v1 + 288));
  }

  sub_93ABFC(v1);
  _Unwind_Resume(a1);
}

__n128 sub_93ADF0(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 sub_93AE00(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t sub_93AE10(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 24) = 0;
  *result = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = a2[3];
  v6 = *(a2 + 16);
  *(result + 72) = 0;
  *(result + 64) = v6;
  *(result + 48) = v5;
  *(result + 80) = 0;
  *(result + 88) = 0;
  v8 = *(a2 + 9);
  v7 = *(a2 + 10);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  v10 = *(a2 + 12);
  v9 = *(a2 + 13);
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

void sub_93AF78(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    v1[13] = v6;
    operator delete(v6);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      v8 = *v3;
      if (!*v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[10] = v7;
  operator delete(v7);
  v8 = *v3;
  if (!*v3)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[4] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_93AFD8()
{
  if (!*v0)
  {
    JUMPOUT(0x93AF9CLL);
  }

  JUMPOUT(0x93AF94);
}

void *sub_93AFE8(void *a1, void *a2)
{
  v4 = sub_93B0DC(a1, a2);
  sub_93B168((v4 + 240), a2 + 30);
  a1[33] = 0;
  a1[34] = 0;
  a1[35] = 0;
  v6 = a2[33];
  v5 = a2[34];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_93B090(_Unwind_Exception *a1)
{
  v3 = v1[33];
  if (v3)
  {
    v1[34] = v3;
    operator delete(v3);
    v4 = v1[30];
    if (!v4)
    {
LABEL_3:
      sub_49AEC0(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[30];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[31] = v4;
  operator delete(v4);
  sub_49AEC0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_93B0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_93B224(a1, a2);
  sub_49DC18((v4 + 176), (a2 + 176));
  sub_49DC18((a1 + 200), (a2 + 200));
  *(a1 + 224) = *(a2 + 224);
  return a1;
}

void sub_93B138(_Unwind_Exception *a1)
{
  sub_48C8F4((v1 + 176));
  sub_44D36C(v1);
  _Unwind_Resume(a1);
}

void *sub_93B168(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_93B208(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_93B224(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 72) = 0;
  *(a1 + 16) = v3;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v8;
  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v9;
  sub_81988((a1 + 152), a2 + 152);
  return a1;
}

void sub_93B300(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_93B320(uint64_t a1)
{
  v2 = *(a1 + 584);
  if (v2 != -1)
  {
    (off_266DBE8[v2])(&v4, a1);
  }

  *(a1 + 584) = -1;
  return a1;
}

void *sub_93B37C(void *result, void *a2)
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

void sub_93B48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_93B80C(&a11);
  *(v11 + 8) = v12;
  sub_93B8D4(&a9);
  _Unwind_Resume(a1);
}

void sub_93B4AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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

void sub_93B5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_93B6F0(&a11);
  *(v11 + 8) = v12;
  sub_93B76C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_93B5D0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = *(a2 + 24);
  *(result + 32) = 0;
  *(result + 24) = v3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_93B6BC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_93B6F0(uint64_t a1)
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
        v7 = *(v4 - 24);
        if (v7)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v8 = v4 - 56;
        v9 = *(v4 - 56);
        if (v9)
        {
          *(v4 - 48) = v9;
          operator delete(v9);
        }

        v4 -= 56;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

void ***sub_93B76C(void ***a1)
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

          v7 = v4 - 56;
          v8 = *(v4 - 7);
          if (v8)
          {
            *(v4 - 6) = v8;
            operator delete(v8);
          }

          v4 -= 56;
        }

        while (v7 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_93B80C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *v2;
      do
      {
        v9 = *(v6 - 4);
        v6 -= 4;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 3);
          v7 = v8;
          if (v10 != v8)
          {
            do
            {
              v11 = *(v10 - 3);
              if (v11)
              {
                *(v10 - 2) = v11;
                operator delete(v11);
              }

              v12 = v10 - 56;
              v13 = *(v10 - 7);
              if (v13)
              {
                *(v10 - 6) = v13;
                operator delete(v13);
              }

              v10 -= 56;
            }

            while (v12 != v8);
            v7 = *v6;
          }

          *(v4 - 3) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void sub_93B8D4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v9 = *(v6 - 4);
        v6 -= 4;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 3);
          v7 = v8;
          if (v10 != v8)
          {
            do
            {
              v11 = *(v10 - 3);
              if (v11)
              {
                *(v10 - 2) = v11;
                operator delete(v11);
              }

              v12 = v10 - 56;
              v13 = *(v10 - 7);
              if (v13)
              {
                *(v10 - 6) = v13;
                operator delete(v13);
              }

              v10 -= 56;
            }

            while (v12 != v8);
            v7 = *v6;
          }

          *(v4 - 3) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_93B9CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x222222222222223)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_93BAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = (v11 - 120);
    v15 = -v12;
    do
    {
      v14 = sub_93C358(v14) - 15;
      v15 += 120;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_93C45C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_93BAE4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *a1 = v4;
  sub_93BBF8((a1 + 24), a2 + 3);
  v5 = *(a2 + 12);
  *(a1 + 56) = 0;
  *(a1 + 48) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *(a2 + 10);
  *(a1 + 88) = *(a2 + 22);
  *(a1 + 80) = v8;
  sub_93BED8((a1 + 96), a2 + 12);
  return a1;
}

void sub_93BBD0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  sub_39393C((v1 + 24));
  _Unwind_Resume(a1);
}

void *sub_93BBF8(void *result, void *a2)
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

void sub_93BC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_93BE50(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_93BCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v6 = *(v5 + 8);
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      *(a4 + 24) = *(v5 + 24);
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_93BDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_93BDE0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_93BDE0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 32);
        v4 -= 32;
        v5 = v6;
        if (v6)
        {
          *(v2 - 24) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void ***sub_93BE50(void ***a1)
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
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 4);
          v6 -= 32;
          v7 = v8;
          if (v8)
          {
            *(v4 - 3) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_93BED8(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x193D4BB7E327A977 * ((v2 - *a2) >> 4)) < 0x39B0AD12073616)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_93C010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_93C298(va);
  _Unwind_Resume(a1);
}

void sub_93C024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_93C19C(v4);
  sub_93C1F8(va1);
  *(v2 + 8) = v3;
  sub_93C298(va);
  _Unwind_Resume(a1);
}

void sub_93C050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    *(a2 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_93C074(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 48) = v5;
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

uint64_t *sub_93C08C(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = a2[1];
  *(v2 + 28) = *(a2 + 28);
  *(v2 + 48) = 0;
  *v2 = v3;
  *(v2 + 16) = v4;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(v2 + 72) = *(a2 + 72);
  return result;
}

void sub_93C130(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_93C14C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u32[0] = a2[1].n128_u32[0];
  *v2 = result;
  return result;
}

uint64_t sub_93C164(_OWORD **a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 12) = *(a2 + 12);
  *v2 = v3;
  return sub_790648((v2 + 2), (a2 + 2));
}

__n128 sub_93C184(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u32[0] = a2[1].n128_u32[0];
  *v2 = result;
  return result;
}

uint64_t sub_93C19C(uint64_t a1)
{
  v2 = *(a1 + 1128);
  if (v2 != -1)
  {
    (off_266DC38[v2])(&v4, a1);
  }

  *(a1 + 1128) = -1;
  return a1;
}

uint64_t sub_93C1F8(uint64_t a1)
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
        v6 = v4 - 1136;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_266DC38[v7])(&v9, v4 - 1136);
        }

        *(v4 - 8) = -1;
        v4 -= 1136;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void ***sub_93C298(void ***a1)
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
          v6 = v4 - 1136;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_266DC38[v7])(&v9, v4 - 1136);
          }

          *(v4 - 2) = -1;
          v4 -= 1136;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_93C358(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    v3 = a1[13];
    v4 = a1[12];
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 1136;
        v6 = *(v3 - 8);
        if (v6 != -1)
        {
          (off_266DC38[v6])(&v15, v3 - 1136);
        }

        *(v3 - 8) = -1;
        v3 -= 1136;
      }

      while (v5 != v2);
      v4 = a1[12];
    }

    a1[13] = v2;
    operator delete(v4);
  }

  v7 = a1[7];
  if (v7)
  {
    a1[8] = v7;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      v11 = a1[4];
      do
      {
        v13 = *(v11 - 32);
        v11 -= 32;
        v12 = v13;
        if (v13)
        {
          *(v9 - 24) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  return a1;
}

void ***sub_93C45C(void ***result)
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
          v4 = sub_93C358(v4 - 15);
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

uint64_t sub_93C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v7 = *(v5 + 8);
      if (v7 != *v5)
      {
        if (((v7 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v6 = *(v5 + 24);
      *(a4 + 38) = *(v5 + 38);
      *(a4 + 24) = v6;
      v5 += 48;
      a4 += 48;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_93C5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_93C5F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_93C5F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 48);
        v4 -= 48;
        v5 = v6;
        if (v6)
        {
          *(v2 - 40) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void ***sub_93C664(void ***a1)
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
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 6);
          v6 -= 48;
          v7 = v8;
          if (v8)
          {
            *(v4 - 5) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_93C6EC(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 584) = -1;
  v2 = *(a2 + 584);
  if (v2 != -1)
  {
    v3 = result;
    v4 = result;
    (off_266DC88[v2])(&v4);
    result = v3;
    *(v3 + 584) = v2;
  }

  return result;
}

uint64_t sub_93C760(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 584);
  if (v3 > 1)
  {
    switch(v3)
    {
      case 2:
        return sub_E67BDC(a1);
      case 3:
        if (*a1)
        {
          v4 = *(a1 + 4);
          goto LABEL_14;
        }

        break;
      case 4:
        if (*(a1 + 8))
        {
          v4 = *(a1 + 12);
LABEL_14:
          v5 = v4 == -1;
          return !v5;
        }

        break;
      default:
        return result;
    }

    return 0;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    if (*(a1 + 240) != *(a1 + 248))
    {
      return 1;
    }

    if (*(a1 + 264) != *(a1 + 272))
    {
      return 1;
    }

    v5 = *(a1 + 176) == *(a1 + 184);
  }

  else
  {
    v5 = *(a1 + 64) == 0;
  }

  return !v5;
}

uint64_t sub_93C810(uint64_t result)
{
  v1 = *(result + 584);
  if (v1 == 3)
  {
    if (*result && *(result + 4) != -1)
    {
      return *result;
    }
  }

  else if (!v1)
  {
    return *(result + 56);
  }

  return result;
}

_DWORD *sub_93C858(_DWORD *result)
{
  if (result[146])
  {
    return &unk_22A4950;
  }

  return result;
}

uint64_t sub_93C870(_DWORD *a1)
{
  if (a1[146])
  {
    v1 = &unk_22A4950;
  }

  else
  {
    v1 = a1;
  }

  return *v1;
}

void sub_93C9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_93CA38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &off_266D8F8;
  *(a3 + 8) = xmmword_22A4790;
  *(a3 + 24) = 0x7FFFFFFF;
  *(a3 + 32) = 0;
  v6 = (a3 + 32);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  v7 = sub_93C810(a2);
  v9 = v8;
  v10 = sub_3AFB1C(*(a1 + 8));
  v11 = v10;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v19 = sub_502FF8(v10, v7, 0, "stop");
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_26;
        }

        v19 = sub_93D2F4(v10, v7, 0, "hall");
      }

      goto LABEL_21;
    }

LABEL_18:
    *(a3 + 16) = -1;
LABEL_25:
    *(a3 + 24) = 0x7FFFFFFF;
    goto LABEL_26;
  }

  if (v9 > 4)
  {
    if (v9 != 5 && v9 != 6)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (v9 == 3)
  {
    v19 = sub_93D480(v10, v7, 0, "station");
LABEL_21:
    v20 = v19 + *(v19 - *v19 + 6);
    v21 = *v20;
    LODWORD(v20) = *(v20 + 4);
    if (v20 >= 0xFFFFFFFE)
    {
      v20 = 4294967294;
    }

    else
    {
      v20 = v20;
    }

    *(a3 + 16) = v21 | (v20 << 32);
    goto LABEL_25;
  }

  v12 = sub_503310(v10, v7, 0, "access point");
  v13 = (v12 - *v12);
  if (*v13 >= 0x11u)
  {
    v14 = v13[8];
    if (v14)
    {
      v15 = (v12 + v14 + *(v12 + v14));
      v16 = *v15;
      if (v16)
      {
        v17 = 8 * v16;
        v18 = v15 + 1;
        do
        {
          if (*(v11 + 3888) != 1 || sub_2D5204(*(v11 + 3872)))
          {
            operator new();
          }

          v18 += 2;
          v17 -= 8;
        }

        while (v17);
        v6 = (a3 + 32);
      }
    }
  }

LABEL_26:
  *(a3 + 8) = *a1;
  if (*(a2 + 584))
  {
    return;
  }

  v22 = *(a2 + 24);
  if (v22 == *(a2 + 32))
  {
    return;
  }

  v23 = *v22;
  v24 = sub_502FF8(v11, *v22, 0, "stop");
  v25 = (v24 - *v24);
  if (*v25 < 0x2Bu || (v26 = v25[21]) == 0)
  {
    HIBYTE(v50.__locale_) = 0;
    LOBYTE(__dst) = 0;
    if ((*(a3 + 55) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v27 = (v24 + v26);
  v28 = *v27;
  v29 = *(v27 + v28);
  if (v29 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v50.__locale_) = *(v27 + v28);
  if (v29)
  {
    memcpy(&__dst, v27 + v28 + 4, v29);
  }

  *(&__dst + v29) = 0;
  if (*(a3 + 55) < 0)
  {
LABEL_35:
    operator delete(v6->__locale_);
  }

LABEL_36:
  *&v6->__locale_ = __dst;
  v6[2].__locale_ = v50.__locale_;
  v30 = *(a3 + 55);
  if ((v30 & 0x80u) != 0)
  {
    v30 = *(a3 + 40);
  }

  if (!v30)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_74:
      if (*(a3 + 55) < 0)
      {
        *(a3 + 40) = 3;
        v6 = *(a3 + 32);
      }

      else
      {
        *(a3 + 55) = 3;
      }

      LODWORD(v6->__locale_) = 4412501;
      return;
    }

    sub_19594F8(&__dst);
    sub_4A5C(&__dst, "Could not resolve time zone for stop ", 37);
    v31 = sub_502FF8(v11, v23, 0, "stop");
    v32 = (v31 - *v31);
    if (*v32 >= 5u && (v33 = v32[2]) != 0)
    {
      v34 = *(v31 + v33);
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_2C939C(v11, 1u, 0);
    if (!v35 || (v36 = &v35[-*v35], *v36 < 0xDu) || (v37 = *(v36 + 6)) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v46 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v38 = &v35[v37 + *&v35[v37]];
    v39 = &v38[-*v38];
    if (*v39 >= 0xBu)
    {
      v40 = *(v39 + 5);
      if (v40)
      {
        if (v38[v40])
        {
          nullsub_1(v34);
        }
      }
    }

    std::ostream::operator<<();
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
        v48 = 0;
LABEL_69:
        *(&__p + v41) = 0;
        sub_7E854(&__p, 1u);
        if (v48 < 0)
        {
          operator delete(__p);
        }

        if (v55 < 0)
        {
          operator delete(v54);
        }

        std::locale::~locale(&v50);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_74;
      }

      v43 = v51;
      v42 = v51[2];
    }

    v44 = *v43;
    v41 = v42 - *v43;
    if (v41 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v41 >= 0x17)
    {
      operator new();
    }

    v48 = v42 - *v43;
    if (v41)
    {
      memmove(&__p, v44, v41);
    }

    goto LABEL_69;
  }
}

void sub_93D1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  operator delete(v21);
  *v20 = a13;
  if ((*(v20 + 55) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*a12);
  _Unwind_Resume(a1);
}

uint64_t sub_93D2A4(uint64_t a1, unint64_t *a2)
{
  v2 = sub_93D480(a1, *a2, 0, "station");
  v3 = v2 + *(v2 - *v2 + 6);
  v4 = *v3;
  LODWORD(v3) = *(v3 + 4);
  if (v3 >= 0xFFFFFFFE)
  {
    v3 = 4294967294;
  }

  else
  {
    v3 = v3;
  }

  return v4 | (v3 << 32);
}

uint64_t sub_93D2F4(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0xBu)
  {
    v9 = *(v8 + 5);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_93D450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_93D480(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x19u)
  {
    v9 = *(v8 + 12);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_93D5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_93D60C()
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
  xmmword_27B1680 = 0u;
  *algn_27B1690 = 0u;
  dword_27B16A0 = 1065353216;
  sub_3A9A34(&xmmword_27B1680, v0);
  sub_3A9A34(&xmmword_27B1680, v3);
  sub_3A9A34(&xmmword_27B1680, __p);
  sub_3A9A34(&xmmword_27B1680, v9);
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
    qword_27B1658 = 0;
    qword_27B1660 = 0;
    qword_27B1650 = 0;
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

void sub_93D854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1668)
  {
    qword_27B1670 = qword_27B1668;
    operator delete(qword_27B1668);
  }

  _Unwind_Resume(exception_object);
}

void sub_93DA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_93DAD0(_DWORD *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &off_266D928;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 8) = *a1;
  *(a3 + 12) = 2;
  sub_93DBEC(a1, a2, v12);
  sub_93DDC4(v12, &v10);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(a3 + 24);
    v7 = *v4;
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
      v7 = *v4;
    }

    *(a3 + 24) = v5;
    operator delete(v7);
  }

  *(a3 + 16) = v10;
  v9 = v12[0];
  *(a3 + 32) = v11;
  if (v9)
  {
    v12[1] = v9;
    operator delete(v9);
  }
}

void sub_93DBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    sub_932F98(v13);
    _Unwind_Resume(a1);
  }

  sub_932F98(v13);
  _Unwind_Resume(a1);
}

void sub_93DBEC(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_93C870(a2);
  if (v6 <= 0xFFFFFFFEFFFFFFFFLL && v6)
  {
    sub_3A25A8(*(a1 + 24), v6, 0, "trip");
    operator new();
  }

  sub_959CC0(a2, 0, *(a1 + 16), *(a1 + 24), v9);
  v7 = v9[0];
  v8 = v9[1];
  *a3 = 0;
  a3[2] = 0;
  a3[1] = 0;
  if (v8 != v7)
  {
    if ((v8 - v7) >= 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_2CAA68(a3);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_93DD80(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *v3 = v5;
    operator delete(v5);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_93DDC4(void *a1@<X1>, void *a2@<X8>)
{
  nullsub_1(&v5);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1[1];
  if (v4 != *a1)
  {
    if (((v4 - *a1) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a2;
  sub_93524(a2);
}

void sub_93DFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_395478(va);
  sub_1A104(v15);
  _Unwind_Resume(a1);
}

void sub_93E014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1A104(v16);
    _Unwind_Resume(a1);
  }

  sub_1A104(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_93E04C(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x1Fu)
  {
    v9 = *(v8 + 15);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_93E1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_93E1D8()
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
  xmmword_27B16D8 = 0u;
  unk_27B16E8 = 0u;
  dword_27B16F8 = 1065353216;
  sub_3A9A34(&xmmword_27B16D8, v0);
  sub_3A9A34(&xmmword_27B16D8, v3);
  sub_3A9A34(&xmmword_27B16D8, __p);
  sub_3A9A34(&xmmword_27B16D8, v9);
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
    qword_27B16B0 = 0;
    qword_27B16B8 = 0;
    qword_27B16A8 = 0;
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

void sub_93E420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B16C0)
  {
    qword_27B16C8 = qword_27B16C0;
    operator delete(qword_27B16C0);
  }

  _Unwind_Resume(exception_object);
}

void sub_93E4CC(_DWORD *a1, void *a2)
{
  v3 = 11;
  strcpy(__p, "ttl_seconds");
  *a1 = 10 * sub_352470(a2, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_93E5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_93E734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_93E760(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0x27FFFFFFFLL;
  *a3 = &off_266D988;
  a3[2] = 0;
  v5 = (a3 + 2);
  a3[3] = 0;
  a3[4] = 0;
  if (*(*(a1 + 8) + 11688))
  {
    sub_93E844(a1, a2, &v9);
    v6 = *v5;
    if (*v5)
    {
      v7 = a3[3];
      v8 = *v5;
      if (v7 != v6)
      {
        do
        {
          v7 = sub_399184(v7 - 456);
        }

        while (v7 != v6);
        v8 = *v5;
      }

      a3[3] = v6;
      operator delete(v8);
    }

    *(a3 + 1) = v9;
    a3[4] = v10;
  }

  *(a3 + 2) = *a1;
}

void sub_93E844(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_95B8C4(v14, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v6 = sub_95B900(v14, (a2 + 672));
  v7 = sub_64AEEC(v6, *(a1 + 4));
  sub_95D748(v7, *(a1 + 40));
  v8 = sub_93C858(a2);
  if (*v8 && v8[1] != -1 && v8[3] != -1)
  {
    sub_3A25A8(*(a1 + 24), *v8, 0, "trip");
    operator new();
  }

  sub_93C810(a2);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 48);
  }

  if (v9 == 5)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 48);
  }

  sub_959A2C(a2, v10, *(a1 + 24), &__p);
  sub_95B980(v14, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  sub_959CC0(a2, v11, *(a1 + 16), *(a1 + 24), &__p);
  sub_95B940(v14, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  sub_95BD68(v14, a3);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_93EA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    sub_93EA94(&a13);
    _Unwind_Resume(a1);
  }

  sub_93EA94(&a13);
  _Unwind_Resume(a1);
}

void *sub_93EA94(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_93EB08()
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
  xmmword_27B1730 = 0u;
  unk_27B1740 = 0u;
  dword_27B1750 = 1065353216;
  sub_3A9A34(&xmmword_27B1730, v0);
  sub_3A9A34(&xmmword_27B1730, v3);
  sub_3A9A34(&xmmword_27B1730, __p);
  sub_3A9A34(&xmmword_27B1730, v9);
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
    qword_27B1708 = 0;
    qword_27B1710 = 0;
    qword_27B1700 = 0;
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

void sub_93ED50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1718)
  {
    qword_27B1720 = qword_27B1718;
    operator delete(qword_27B1718);
  }

  _Unwind_Resume(exception_object);
}

void sub_93EFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_93F11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_93F144(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_93F4DC(a1, (a2 + 624), a2, a3);
  v6 = sub_93C858(a2);
  if (*v6)
  {
    v7 = v6[1] == -1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    sub_3AFEE8(*(a1 + 24));
    v14 = sub_3AFC64(*(a1 + 24));
    sub_3A25A8(v14, *v6, 0, "trip");
    sub_948248();
  }

  v20 = sub_93C810(a2);
  v21 = v8;
  sub_93FB44();
  v9 = *(a3 + 112);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = *(a3 + 120);
  v11 = *(a3 + 112);
  if (v10 == v9)
  {
    goto LABEL_16;
  }

  v12 = v10 - 48;
  do
  {
    if (*(v12 + 47) < 0)
    {
      operator delete(*(v12 + 24));
      if (!*v12)
      {
        goto LABEL_9;
      }

LABEL_14:
      sub_936658(v12);
      operator delete(*v12);
      goto LABEL_9;
    }

    if (*v12)
    {
      goto LABEL_14;
    }

LABEL_9:
    v13 = v12 - 24;
    v12 -= 72;
  }

  while (v13 != v9);
  v11 = *(a3 + 112);
LABEL_16:
  *(a3 + 120) = v9;
  operator delete(v11);
LABEL_17:
  *(a3 + 112) = *v16;
  *(a3 + 128) = v17;
  sub_9483C8(&v20, *(a1 + 32), *(a1 + 24), *(a1 + 8), v16);
  if (*(a3 + 88))
  {
    sub_936658((a3 + 88));
    operator delete(*(a3 + 88));
  }

  *(a3 + 88) = *v16;
  *(a3 + 104) = v17;
  v15 = sub_3AFB1C(*(a1 + 24));
  sub_9592FC(a2, v15, *(a1 + 32), v16);
  if (*(a3 + 207) < 0)
  {
    operator delete(*(a3 + 184));
  }

  *(a3 + 184) = *v16;
  *(a3 + 200) = v17;
  HIBYTE(v17) = 0;
  LOBYTE(v16[0]) = 0;
  if (v19 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }
  }

  *(a3 + 8) = *(a1 + 20);
}

double sub_93F4DC@<D0>(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_940794(a2, a3, *(a1 + 24), &v72);
  v8 = v72;
  v9 = v73;
  if (v72 == v73)
  {
    *(a4 + 8) = 0x27FFFFFFFLL;
    *a4 = &off_266D9B8;
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = -1;
    if (v8)
    {
      goto LABEL_54;
    }

    return result;
  }

  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v68 = 0u;
  v69 = 0u;
  memset(v67, 0, sizeof(v67));
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  __p = 0;
  v47 = 0uLL;
  sub_9B0188(v75, 1, v10, v11, v67, &__p);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  v12 = v8;
  do
  {
    v13 = v12 + 8;
    sub_9B2B2C(v75, v12, v12 + 1);
    v12 = v13 + 8;
  }

  while (v13 + 8 != v9);
  v14 = sub_3AFB1C(*(a1 + 24));
  v15 = sub_3AFC64(*(a1 + 24));
  v16 = sub_3AFEE8(*(a1 + 24));
  sub_A28C5C(v66, v14, v15, v16);
  v45 = a3;
  sub_501CE8(&v65, v66);
  sub_A23E54(&v65, v67);
  *(a4 + 8) = 0x27FFFFFFFLL;
  *a4 = &off_266D9B8;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 208) = -1;
  if ((a4 + 16) != (&v68 + 8))
  {
    sub_941BB4((a4 + 16), *(&v68 + 1), v69, 0x66FD0EB66FD0EB67 * ((v69 - *(&v68 + 1)) >> 3));
  }

  if ((a4 + 40) != v70)
  {
    sub_942718((a4 + 40), *&v70[0], *(&v70[0] + 1), 0x4EC4EC4EC4EC4EC5 * ((*(&v70[0] + 1) - *&v70[0]) >> 4));
  }

  *v62 = 0u;
  *v63 = 0u;
  v64 = 1065353216;
  v17 = *a2;
  v18 = a2[1];
  if (v17 == v18)
  {
    goto LABEL_49;
  }

  while (2)
  {
    v19 = sub_3AFC64(*(a1 + 24));
    v20 = *v17;
    v21 = v17[3];
    v22 = sub_3A231C(v19, v17[1] | (v20 << 32), 0);
    v23 = &v22[-*v22];
    if (*v23 < 5u)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(v23 + 2);
      if (*(v23 + 2))
      {
        v24 += &v22[*&v22[v24]];
      }
    }

    v25 = (v24 + 4 * v20 + 4 + *(v24 + 4 * v20 + 4));
    v26 = (v25 - *v25);
    if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
    {
      v28 = *(v25 + v27);
    }

    else
    {
      v28 = -1;
    }

    v61 = *&v22[24 * v28 + 4 + 24 * v21 + *(v23 + 3) + *&v22[*(v23 + 3)]];
    if (sub_3A8760(v62, &v61))
    {
      goto LABEL_13;
    }

    sub_944524(v62, &v61);
    sub_941220(a1, v17, &__p);
    v29 = *(a4 + 72);
    if (v29 >= *(a4 + 80))
    {
      v35 = sub_942AA0((a4 + 64), &__p);
      v36 = SHIBYTE(v58);
      *(a4 + 72) = v35;
      if (v36 < 0)
      {
        operator delete(v57);
        v34 = v55[0];
        if (!v55[0])
        {
          goto LABEL_42;
        }
      }

      else
      {
        v34 = v55[0];
        if (!v55[0])
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      *v29 = __p;
      v30 = v47;
      *(v29 + 24) = v48;
      *(v29 + 8) = v30;
      v47 = 0uLL;
      v31 = v50;
      *(v29 + 32) = v49;
      *(v29 + 48) = v31;
      v48 = 0;
      v49 = 0uLL;
      v50 = 0;
      v32 = v51;
      *(v29 + 64) = v52;
      *(v29 + 56) = v32;
      *(v29 + 72) = 0;
      *(v29 + 80) = 0;
      *(v29 + 88) = 0;
      *(v29 + 96) = 0;
      *(v29 + 72) = *v53;
      *(v29 + 88) = v54;
      v53[0] = 0;
      v53[1] = 0;
      *(v29 + 104) = 0;
      *(v29 + 112) = 0;
      *(v29 + 96) = *v55;
      *(v29 + 112) = v56;
      v54 = 0;
      v55[0] = 0;
      v55[1] = 0;
      v56 = 0;
      v33 = v57;
      *(v29 + 136) = v58;
      *(v29 + 120) = v33;
      v58 = 0;
      v57 = 0uLL;
      LODWORD(v32) = v59;
      *(v29 + 148) = v60;
      *(v29 + 144) = v32;
      *(a4 + 72) = v29 + 152;
      v34 = v55[0];
      if (!v55[0])
      {
        goto LABEL_42;
      }
    }

    v37 = v34;
    if (v55[1] == v34)
    {
      goto LABEL_41;
    }

    v38 = v55[1] - 65;
    do
    {
      if (v38[64] < 0)
      {
        operator delete(*(v38 + 41));
        if ((v38[32] & 0x80000000) == 0)
        {
LABEL_33:
          if (*v38 < 0)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }
      }

      else if ((v38[32] & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(*(v38 + 9));
      if (*v38 < 0)
      {
LABEL_38:
        operator delete(*(v38 - 23));
        v40 = *(v38 - 39);
        if (v40 == -1)
        {
          goto LABEL_30;
        }

LABEL_39:
        (off_266DCB0[v40])(&v74, v38 - 71);
        goto LABEL_30;
      }

LABEL_34:
      v40 = *(v38 - 39);
      if (v40 != -1)
      {
        goto LABEL_39;
      }

LABEL_30:
      *(v38 - 39) = -1;
      v39 = v38 - 79;
      v38 -= 144;
    }

    while (v39 != v34);
    v37 = v55[0];
LABEL_41:
    v55[1] = v34;
    operator delete(v37);
LABEL_42:
    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
      if (SHIBYTE(v48) < 0)
      {
        goto LABEL_46;
      }
    }

    else if (SHIBYTE(v48) < 0)
    {
LABEL_46:
      operator delete(v47);
    }

LABEL_13:
    v17 += 30;
    if (v17 != v18)
    {
      continue;
    }

    break;
  }

LABEL_49:
  *(a4 + 208) = sub_941658(a1, v45);
  v41 = v63[0];
  if (v63[0])
  {
    do
    {
      v42 = *v41;
      operator delete(v41);
      v41 = v42;
    }

    while (v42);
  }

  v43 = v62[0];
  v62[0] = 0;
  if (v43)
  {
    operator delete(v43);
  }

  sub_942D1C(v75);
  sub_942F5C(v67);
  v8 = v72;
  if (v72)
  {
LABEL_54:
    operator delete(v8);
  }

  return result;
}

void sub_93FA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  sub_11BD8(&a31);
  sub_939910(v41);
  sub_942D1C(&STACK[0x230]);
  v43 = STACK[0x210];
  sub_942F5C(&a41);
  if (v43)
  {
    operator delete(v43);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_93FB44()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v93 = 0uLL;
  v94 = 0;
  v6 = sub_3AFB1C(*(v0 + 24));
  v7 = *(v6 + 8);
  v88 = *v6;
  v89 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memcpy(v90, (v6 + 16), sizeof(v90));
  v8 = *(v6 + 3880);
  v91 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v92 = *(v6 + 3888);
  v9 = *(v2 + 8);
  if (v9 > 2)
  {
    if (v9 == 4)
    {
      v19 = sub_503310(&v88, *v2, 0, "access point");
      v20 = (v19 - *v19);
      if (*v20 >= 0x11u)
      {
        v21 = v20[8];
        if (v21)
        {
          v22 = (v19 + v21 + *(v19 + v21));
          v23 = *v22;
          if (v23)
          {
            v24 = 8 * v23;
            v25 = v22 + 1;
            do
            {
              if (v92 != 1 || sub_2D5204(v90[482]))
              {
                operator new();
              }

              v25 += 2;
              v24 -= 8;
            }

            while (v24);
          }
        }
      }
    }

    else if (v9 == 3)
    {
      sub_9419FC(&v88, *v2, &v85);
      if (v93)
      {
        *(&v93 + 1) = v93;
        operator delete(v93);
      }

      v93 = v85;
      v94 = v86;
    }
  }

  else
  {
    if (v9 == 1)
    {
      v15 = sub_502FF8(&v88, *v2, 0, "stop");
      v11 = *(v15 + *(v15 - *v15 + 12));
      if (v11 > 0xFFFFFFFEFFFFFFFFLL || v11 == 0)
      {
        goto LABEL_46;
      }

      v17 = v93;
      if (v94 == v93)
      {
        if (v94)
        {
          *(&v93 + 1) = v93;
          operator delete(v93);
          v93 = 0uLL;
          v94 = 0;
        }

        operator new();
      }

      v18 = *(&v93 + 1);
      if (*(&v93 + 1) == v93)
      {
        **(&v93 + 1) = v11;
        *(&v93 + 1) = v18 - v17 + v18 + 8;
      }

      else
      {
        *v93 = v11;
        *(&v93 + 1) = v17 + 8;
      }
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_46;
      }

      v10 = sub_93D2F4(&v88, *v2, 0, "hall");
      v11 = *(v10 + *(v10 - *v10 + 10));
      if (v11 > 0xFFFFFFFEFFFFFFFFLL || v11 == 0)
      {
        goto LABEL_46;
      }

      v13 = v93;
      if (v94 == v93)
      {
        if (v94)
        {
          *(&v93 + 1) = v93;
          operator delete(v93);
          v93 = 0uLL;
          v94 = 0;
        }

        operator new();
      }

      v14 = *(&v93 + 1);
      if (*(&v93 + 1) == v93)
      {
        **(&v93 + 1) = v11;
        *(&v93 + 1) = v14 - v13 + v14 + 8;
      }

      else
      {
        *v93 = v11;
        *(&v93 + 1) = v13 + 8;
      }
    }

    sub_9419FC(&v88, v11, &v85);
    sub_2CE7AC(&v93, *(&v93 + 1), v85, *(&v85 + 1), (*(&v85 + 1) - v85) >> 3);
    if (v85)
    {
      *(&v85 + 1) = v85;
      operator delete(v85);
    }
  }

LABEL_46:
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v75 = *(&v93 + 1);
  for (i = v93; i != v75; ++i)
  {
    v28 = *i;
    *&v85 = -1;
    *(&v85 + 1) = -1;
    LODWORD(v86) = 0x7FFFFFFF;
    memset(__p, 0, sizeof(__p));
    *&v95 = v28;
    DWORD2(v95) = 3;
    sub_9483C8(&v95, *(v3 + 32), *(v3 + 24), *(v3 + 8), v81);
    v29 = __p[0];
    if (!__p[0])
    {
      goto LABEL_66;
    }

    v30 = __p[0];
    if (__p[1] == __p[0])
    {
      goto LABEL_65;
    }

    v31 = __p[1] - 65;
    do
    {
      if (v31[64] < 0)
      {
        operator delete(*(v31 + 41));
        if ((v31[32] & 0x80000000) == 0)
        {
LABEL_57:
          if (*v31 < 0)
          {
            goto LABEL_62;
          }

          goto LABEL_58;
        }
      }

      else if ((v31[32] & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      operator delete(*(v31 + 9));
      if (*v31 < 0)
      {
LABEL_62:
        operator delete(*(v31 - 23));
        v33 = *(v31 - 39);
        if (v33 == -1)
        {
          goto LABEL_54;
        }

LABEL_63:
        (off_266DCB0[v33])(&v79, v31 - 71);
        goto LABEL_54;
      }

LABEL_58:
      v33 = *(v31 - 39);
      if (v33 != -1)
      {
        goto LABEL_63;
      }

LABEL_54:
      *(v31 - 39) = -1;
      v32 = v31 - 79;
      v31 -= 144;
    }

    while (v32 != v29);
    v30 = __p[0];
LABEL_65:
    __p[1] = v29;
    operator delete(v30);
LABEL_66:
    *__p = *v81;
    __p[2] = v82;
    v34 = sub_93D480(&v88, v28, 0, "station");
    v35 = (v34 - *v34);
    if (*v35 >= 5u && (v36 = v35[2]) != 0)
    {
      v37 = *(v34 + v36);
    }

    else
    {
      v37 = 0;
    }

    v38 = sub_2C939C(&v88, 1u, 0);
    if (!v38 || (v39 = &v38[-*v38], *v39 < 0xDu) || (v40 = *(v39 + 6)) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v74 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v41 = &v38[v40 + *&v38[v40]];
    v42 = &v41[-*v41];
    if (*v42 >= 0xBu)
    {
      v43 = *(v42 + 5);
      if (v43)
      {
        if (v41[v43])
        {
          v37 = nullsub_1(v37);
        }
      }
    }

    *&v85 = v37;
    v44 = sub_93D480(&v88, v28, 0, "station");
    v45 = v44 + *(v44 - *v44 + 6);
    v46 = *v45;
    LODWORD(v45) = *(v45 + 4);
    if (v45 >= 0xFFFFFFFE)
    {
      v45 = 4294967294;
    }

    else
    {
      v45 = v45;
    }

    *(&v85 + 1) = v46 | (v45 << 32);
    LODWORD(v86) = 0x7FFFFFFF;
    nullsub_1(&v78);
    v47 = sub_93D480(&v88, v28, 0, "station");
    v48 = (v47 - *v47);
    if (*v48 >= 9u && (v49 = v48[4]) != 0)
    {
      v50 = (v47 + v49 + *(v47 + v49));
      v95 = 0uLL;
      v96 = 0;
      sub_943AEC(&v95, *v50);
      v98 = v50 + 1;
      v97 = &v50[*v50 + 1];
      sub_943E24(&v98, &v97, &v95, sub_509164);
      v51 = v95;
      v52 = v96;
    }

    else
    {
      v52 = 0;
      v51 = 0uLL;
    }

    *v76 = v51;
    v77 = v52;
    sub_9D6590(v76, *(v3 + 32) + 968, &v79);
    sub_9D45F0(&v79, v81);
    if (SHIBYTE(__p[5]) < 0)
    {
      operator delete(__p[3]);
    }

    *&__p[3] = *v81;
    __p[5] = v82;
    HIBYTE(v82) = 0;
    LOBYTE(v81[0]) = 0;
    if (v84 < 0)
    {
      operator delete(v83);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81[0]);
        v53 = v79;
        if (!v79)
        {
          goto LABEL_98;
        }

LABEL_89:
        v54 = v80;
        v55 = v53;
        if (v80 == v53)
        {
LABEL_97:
          v80 = v53;
          operator delete(v55);
          goto LABEL_98;
        }

        while (1)
        {
          if (*(v54 - 1) < 0)
          {
            operator delete(*(v54 - 3));
            v56 = v54 - 7;
            if ((*(v54 - 33) & 0x80000000) == 0)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v56 = v54 - 7;
            if ((*(v54 - 33) & 0x80000000) == 0)
            {
LABEL_92:
              v54 = v56;
              if (v56 == v53)
              {
                goto LABEL_96;
              }

              continue;
            }
          }

          operator delete(*v56);
          v54 = v56;
          if (v56 == v53)
          {
LABEL_96:
            v55 = v79;
            goto LABEL_97;
          }
        }
      }
    }

    v53 = v79;
    if (v79)
    {
      goto LABEL_89;
    }

LABEL_98:
    v57 = v76[0];
    if (v76[0])
    {
      v58 = v76[1];
      v59 = v76[0];
      if (v76[1] != v76[0])
      {
        do
        {
          v60 = *(v58 - 3);
          if (v60)
          {
            v61 = *(v58 - 2);
            v62 = *(v58 - 3);
            if (v61 != v60)
            {
              do
              {
                if (*(v61 - 1) < 0)
                {
                  operator delete(*(v61 - 24));
                }

                v61 -= 32;
              }

              while (v61 != v60);
              v62 = *(v58 - 3);
            }

            *(v58 - 2) = v60;
            operator delete(v62);
          }

          v63 = (v58 - 64);
          if (*(v58 - 41) < 0)
          {
            operator delete(*v63);
          }

          v58 -= 64;
        }

        while (v63 != v57);
        v59 = v76[0];
      }

      v76[1] = v57;
      operator delete(v59);
    }

    v64 = v5[1];
    if (v64 >= v5[2])
    {
      v5[1] = sub_944130(v5, &v85);
      if ((SHIBYTE(__p[5]) & 0x80000000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_117;
    }

    v65 = v85;
    *(v64 + 16) = v86;
    *v64 = v65;
    sub_93636C((v64 + 24), __p);
    if (SHIBYTE(__p[5]) < 0)
    {
      sub_325C((v64 + 48), __p[3], __p[4]);
      v5[1] = v64 + 72;
      if ((SHIBYTE(__p[5]) & 0x80000000) == 0)
      {
        goto LABEL_120;
      }

LABEL_117:
      operator delete(__p[3]);
      v67 = __p[0];
      if (__p[0])
      {
        goto LABEL_121;
      }

      continue;
    }

    v66 = *&__p[3];
    *(v64 + 64) = __p[5];
    *(v64 + 48) = v66;
    v5[1] = v64 + 72;
    if (SHIBYTE(__p[5]) < 0)
    {
      goto LABEL_117;
    }

LABEL_120:
    v67 = __p[0];
    if (__p[0])
    {
LABEL_121:
      v27 = v67;
      if (__p[1] != v67)
      {
        v68 = __p[1] - 65;
        while (1)
        {
          if (v68[64] < 0)
          {
            operator delete(*(v68 + 41));
            if ((v68[32] & 0x80000000) == 0)
            {
LABEL_126:
              if ((*v68 & 0x80000000) == 0)
              {
                goto LABEL_127;
              }

              goto LABEL_131;
            }
          }

          else if ((v68[32] & 0x80000000) == 0)
          {
            goto LABEL_126;
          }

          operator delete(*(v68 + 9));
          if ((*v68 & 0x80000000) == 0)
          {
LABEL_127:
            v70 = *(v68 - 39);
            if (v70 == -1)
            {
              goto LABEL_123;
            }

LABEL_132:
            (off_266DCB0[v70])(v81, v68 - 71);
            goto LABEL_123;
          }

LABEL_131:
          operator delete(*(v68 - 23));
          v70 = *(v68 - 39);
          if (v70 != -1)
          {
            goto LABEL_132;
          }

LABEL_123:
          *(v68 - 39) = -1;
          v69 = v68 - 79;
          v68 -= 144;
          if (v69 == v67)
          {
            v27 = __p[0];
            break;
          }
        }
      }

      __p[1] = v67;
      operator delete(v27);
    }
  }

  v71 = v91;
  if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v71->__on_zero_shared)(v71);
    std::__shared_weak_count::__release_weak(v71);
  }

  v72 = v89;
  if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v72->__on_zero_shared)(v72);
    std::__shared_weak_count::__release_weak(v72);
  }

  if (v93)
  {
    *(&v93 + 1) = v93;
    operator delete(v93);
  }
}

void sub_940674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  operator delete(v36);
  sub_3A0ED4(&a36);
  v39 = *(v37 - 176);
  if (v39)
  {
    *(v37 - 168) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void sub_940794(unsigned int **a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v77 = sub_3AFB1C(a3);
  v76 = sub_3AFC64(a3);
  v7 = sub_93C858(a2);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (*v7)
  {
    v8 = v7[1] == -1;
  }

  else
  {
    v8 = 1;
  }

  v73 = v7;
  if (!v8)
  {
    goto LABEL_9;
  }

  sub_93C810(a2);
  if (v9 == 5)
  {
    operator new();
  }

  if (*(a2 + 584) || (v14 = *(a2 + 24), v72 = *(a2 + 32), v14 == v72))
  {
LABEL_9:
    v10 = 0;
    v12 = *a1;
    v11 = a1[1];
    if (*a1 != v11)
    {
      goto LABEL_40;
    }

    goto LABEL_10;
  }

  do
  {
    v15 = *v14;
    v16 = sub_502FF8(v77, *v14, 0, "stop");
    v17 = *(v16 + *(v16 - *v16 + 12));
    v18 = v17 > 0xFFFFFFFEFFFFFFFFLL || v17 == 0;
    v75 = v14;
    if (v18)
    {
      v19 = sub_502FF8(v77, v15, 0, "stop");
      v20 = (v19 - *v19);
      if (*v20 >= 0xFu)
      {
        v21 = v20[7];
        if (v21)
        {
          v22 = (v19 + v21 + *(v19 + v21));
          v23 = *v22;
          if (v23)
          {
            v24 = 8 * v23;
            v25 = v22 + 1;
            do
            {
              if (*(v77 + 3888) != 1 || sub_2D5204(*(v77 + 3872)))
              {
                operator new();
              }

              v25 += 2;
              v24 -= 8;
            }

            while (v24);
          }
        }
      }
    }

    else
    {
      v26 = sub_93D480(v77, v17, 0, "station");
      v27 = (v26 - *v26);
      if (*v27 >= 0xFu)
      {
        v28 = v27[7];
        if (v28)
        {
          v29 = (v26 + v28 + *(v26 + v28));
          v30 = *v29;
          if (v30)
          {
            v31 = 8 * v30;
            v32 = v29 + 1;
            do
            {
              if (*(v77 + 3888) != 1 || sub_2D5204(*(v77 + 3872)))
              {
                operator new();
              }

              v32 += 2;
              v31 -= 8;
            }

            while (v31);
          }
        }
      }
    }

    v14 = v75 + 1;
  }

  while (v75 + 1 != v72);
  v10 = *a4;
  v12 = *a1;
  v11 = a1[1];
  if (*a1 == v11)
  {
LABEL_10:
    v13 = a4[1];
    goto LABEL_61;
  }

  do
  {
    while (1)
    {
LABEL_40:
      v33 = *v12;
      v34 = v12[3];
      v35 = v12[1] | (v33 << 32);
      v36 = sub_3A25A8(v76, v35, 0, "trip");
      v37 = *(v36 + *(v36 - *v36 + 6));
      v38 = sub_3A231C(v76, v35, 0);
      v39 = &v38[-*v38];
      if (*v39 < 5u)
      {
        v40 = 0;
      }

      else
      {
        v40 = *(v39 + 2);
        if (*(v39 + 2))
        {
          v40 += &v38[*&v38[v40]];
        }
      }

      v41 = (v40 + 4 * v33 + 4 + *(v40 + 4 * v33 + 4));
      v42 = (v41 - *v41);
      if (*v42 >= 0xDu && (v43 = v42[6]) != 0)
      {
        v44 = *(v41 + v43);
      }

      else
      {
        v44 = -1;
      }

      v45 = sub_502FF8(v77, *&v38[24 * v44 + 4 + 24 * v34 + *(v39 + 3) + *&v38[*(v39 + 3)]], 0, "stop");
      v46 = *(v45 + *(v45 - *v45 + 12));
      v48 = a4[1];
      v47 = a4[2];
      if (v48 >= v47)
      {
        break;
      }

      *v48 = v37;
      v48[1] = v46;
      v13 = v48 + 2;
      a4[1] = v48 + 2;
      v12 += 30;
      if (v12 == v11)
      {
        goto LABEL_61;
      }
    }

    v49 = v48 - v10;
    v50 = (v48 - v10) >> 4;
    v51 = v50 + 1;
    if ((v50 + 1) >> 60)
    {
      *a4 = v10;
      sub_1794();
    }

    v52 = v47 - v10;
    if (v52 >> 3 > v51)
    {
      v51 = v52 >> 3;
    }

    if (v52 >= 0x7FFFFFFFFFFFFFF0)
    {
      v53 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v53 = v51;
    }

    if (v53)
    {
      if (!(v53 >> 60))
      {
        operator new();
      }

      *a4 = v10;
      sub_1808();
    }

    v54 = (16 * v50);
    *v54 = v37;
    v54[1] = v46;
    v13 = (16 * v50 + 16);
    memcpy(0, v10, v49);
    a4[1] = v13;
    a4[2] = 0;
    if (v10)
    {
      operator delete(v10);
    }

    v10 = 0;
    a4[1] = v13;
    v12 += 30;
  }

  while (v12 != v11);
LABEL_61:
  *a4 = v10;
  if (v10 == v13)
  {
    if (*v73)
    {
      if (v73[1] != -1)
      {
        v55 = v73[3];
        if (v55 != -1)
        {
          v56 = *v73;
          v57 = sub_3A25A8(v76, *v73, 0, "trip");
          v58 = *(v57 + *(v57 - *v57 + 6));
          v59 = sub_3A231C(v76, v56, 0);
          v60 = &v59[-*v59];
          if (*v60 < 5u)
          {
            v61 = 0;
          }

          else
          {
            v61 = *(v60 + 2);
            if (*(v60 + 2))
            {
              v61 += &v59[*&v59[v61]];
            }
          }

          v62 = (v61 + 4 * HIDWORD(v56) + 4 + *(v61 + 4 * HIDWORD(v56) + 4));
          v63 = (v62 - *v62);
          if (*v63 >= 0xDu && (v64 = v63[6]) != 0)
          {
            v65 = *(v62 + v64);
          }

          else
          {
            v65 = -1;
          }

          v66 = sub_502FF8(v77, *&v59[24 * (v65 + v55) + 4 + *(v60 + 3) + *&v59[*(v60 + 3)]], 0, "stop");
          v67 = *(v66 + *(v66 - *v66 + 12));
          v68 = a4[2];
          if (v13 >= v68)
          {
            v69 = v68 - v13;
            v70 = v69 >> 3;
            if ((v69 >> 3) <= 1)
            {
              v70 = 1;
            }

            if (v69 >= 0x7FFFFFFFFFFFFFF0)
            {
              v71 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v71 = v70;
            }

            if (!(v71 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          *v13 = v58;
          v13[1] = v67;
          a4[1] = v13 + 2;
        }
      }
    }
  }
}

void sub_9411AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_941220@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = -1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = -1;
  *(a3 + 64) = 0x7FFFFFFF;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0x7FFFFFFF;
  *(a3 + 148) = 0;
  v6 = sub_3AFB1C(*(a1 + 3));
  v7 = sub_3AFC64(*(a1 + 3));
  v8 = *a2;
  v9 = *(a2 + 3);
  v10 = sub_3A231C(v7, *(a2 + 1) | (v8 << 32), 0);
  v11 = &v10[-*v10];
  if (*v11 < 5u)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 2);
    if (*(v11 + 2))
    {
      v12 += &v10[*&v10[v12]];
    }
  }

  v13 = (v12 + 4 * v8 + 4 + *(v12 + 4 * v8 + 4));
  v14 = (v13 - *v13);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = *(v13 + v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = *&v10[24 * v16 + 4 + 24 * v9 + *(v11 + 3) + *&v10[*(v11 + 3)]];
  v18 = sub_502FF8(v6, v17, 0, "stop");
  v19 = (v18 - *v18);
  if (*v19 >= 5u && (v20 = v19[2]) != 0)
  {
    v21 = *(v18 + v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2C939C(v6, 1u, 0);
  if (!v22 || (v23 = &v22[-*v22], *v23 < 0xDu) || (v24 = *(v23 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v37 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v25 = &v22[v24 + *&v22[v24]];
  v26 = &v25[-*v25];
  if (*v26 >= 0xBu)
  {
    v27 = *(v26 + 5);
    if (v27)
    {
      if (v25[v27])
      {
        v21 = nullsub_1(v21);
      }
    }
  }

  *a3 = v21;
  v28 = sub_502FF8(v6, v17, 0, "stop");
  v29 = (v28 - *v28);
  if (*v29 >= 0x2Bu && (v30 = v29[21]) != 0)
  {
    v31 = (v28 + v30);
    v32 = *v31;
    v33 = *(v31 + v32);
    if (v33 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v39) = *(v31 + v32);
    if (v33)
    {
      memcpy(&__dst, v31 + v32 + 4, v33);
      *(&__dst + v33) = 0;
      if ((*(a3 + 55) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    *(&__dst + v33) = 0;
    if (*(a3 + 55) < 0)
    {
LABEL_27:
      operator delete(*(a3 + 32));
    }
  }

  else
  {
    HIBYTE(v39) = 0;
    LOBYTE(__dst) = 0;
    if (*(a3 + 55) < 0)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  *(a3 + 32) = __dst;
  *(a3 + 48) = v39;
  result = sub_95A454(a2 + 12, v6, *a1);
  *(a3 + 144) = v35;
  return result;
}