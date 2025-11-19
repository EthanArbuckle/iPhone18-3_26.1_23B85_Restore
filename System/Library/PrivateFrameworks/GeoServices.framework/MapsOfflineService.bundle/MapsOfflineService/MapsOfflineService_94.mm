uint64_t sub_5F8954(uint64_t a1, uint64_t a2)
{
  sub_5F9D98(a1, a2);
  if (a1 == a2)
  {
    *(a1 + 448) = *(a2 + 448);
  }

  else
  {
    sub_74300((a1 + 384), *(a2 + 384), *(a2 + 392), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 392) - *(a2 + 384)) >> 3));
    *(a1 + 440) = *(a2 + 440);
    sub_5FA69C(a1 + 408, *(a2 + 424), 0);
    *(a1 + 448) = *(a2 + 448);
    sub_74300((a1 + 456), *(a2 + 456), *(a2 + 464), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 464) - *(a2 + 456)) >> 3));
    *(a1 + 512) = *(a2 + 512);
    sub_5FA69C(a1 + 480, *(a2 + 496), 0);
  }

  *(a1 + 520) = *(a2 + 520);
  sub_594568(a1 + 528, a2 + 528);
  sub_594568(a1 + 688, a2 + 688);
  sub_594EF8((a1 + 848), (a2 + 848));
  return a1;
}

uint64_t *sub_5F8A38(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x3795876FF3795877 * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_5C25A8(v10 - 2616);
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

    if (a4 <= 0x190D4F120190D4)
    {
      v12 = 0x3795876FF3795877 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xC86A78900C86ALL)
      {
        v14 = 0x190D4F120190D4;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x190D4F120190D4)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x3795876FF3795877 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5F8CD8(v8, v5);
        v5 += 2616;
        v8 += 2616;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 2616;
      result = sub_5C25A8(v15);
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
        result = sub_5F8CD8(v8, v5);
        v5 += 2616;
        v8 += 2616;
        v16 -= 2616;
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
        result = sub_5EF290(v15 + v19, v17 + v19);
        v19 += 2616;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5F8CAC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 2616;
    v7 = -v4;
    do
    {
      v6 = sub_5C25A8(v6) - 2616;
      v7 += 2616;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5F8CD8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  if (a1 == a2)
  {
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 200) = *(a2 + 200);
    v19 = *(a2 + 208);
    v20 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v20;
    *(a1 + 208) = v19;
    v21 = *(a2 + 256);
    v22 = *(a2 + 272);
    v23 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v23;
    *(a1 + 256) = v21;
    *(a1 + 272) = v22;
    v24 = *(a2 + 320);
    v25 = *(a2 + 336);
    v26 = *(a2 + 352);
    *(a1 + 366) = *(a2 + 366);
    *(a1 + 336) = v25;
    *(a1 + 352) = v26;
    *(a1 + 320) = v24;
    v27 = *(a2 + 384);
    *(a1 + 386) = *(a2 + 386);
    *(a1 + 384) = v27;
  }

  else
  {
    sub_30945C((a1 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 3);
    *(a1 + 160) = *(a2 + 160);
    sub_596098((a1 + 176), *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
    *(a1 + 200) = *(a2 + 200);
    v10 = *(a2 + 208);
    v11 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v11;
    *(a1 + 208) = v10;
    v12 = *(a2 + 256);
    v13 = *(a2 + 272);
    v14 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v14;
    *(a1 + 256) = v12;
    *(a1 + 272) = v13;
    v15 = *(a2 + 320);
    v16 = *(a2 + 336);
    v17 = *(a2 + 352);
    *(a1 + 366) = *(a2 + 366);
    *(a1 + 336) = v16;
    *(a1 + 352) = v17;
    *(a1 + 320) = v15;
    v18 = *(a2 + 384);
    *(a1 + 386) = *(a2 + 386);
    *(a1 + 384) = v18;
    sub_5F9374(a1 + 392, *(a2 + 392), *(a2 + 400), 0x86BCA1AF286BCA1BLL * ((*(a2 + 400) - *(a2 + 392)) >> 3));
    sub_5F9374(a1 + 416, *(a2 + 416), *(a2 + 424), 0x86BCA1AF286BCA1BLL * ((*(a2 + 424) - *(a2 + 416)) >> 3));
    sub_5F9374(a1 + 440, *(a2 + 440), *(a2 + 448), 0x86BCA1AF286BCA1BLL * ((*(a2 + 448) - *(a2 + 440)) >> 3));
  }

  sub_52CB8C((a1 + 464), (a2 + 464));
  v28 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v28;
  v30 = *(a2 + 664);
  v29 = *(a2 + 680);
  v31 = *(a2 + 648);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 664) = v30;
  *(a1 + 680) = v29;
  *(a1 + 648) = v31;
  *(a1 + 704) = *(a2 + 704);
  if (a1 == a2)
  {
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 816) = *(a2 + 816);
  }

  else
  {
    sub_31F64((a1 + 712), *(a2 + 712), *(a2 + 720), (*(a2 + 720) - *(a2 + 712)) >> 3);
    sub_31F64((a1 + 736), *(a2 + 736), *(a2 + 744), (*(a2 + 744) - *(a2 + 736)) >> 3);
    sub_31F64((a1 + 760), *(a2 + 760), *(a2 + 768), (*(a2 + 768) - *(a2 + 760)) >> 3);
    *(a1 + 784) = *(a2 + 784);
    sub_52EE18((a1 + 792), *(a2 + 792), *(a2 + 800), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 800) - *(a2 + 792)) >> 3));
    *(a1 + 816) = *(a2 + 816);
    sub_5F9710(a1 + 824, *(a2 + 824), *(a2 + 832), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 832) - *(a2 + 824)) >> 5));
  }

  sub_52CB8C((a1 + 848), (a2 + 848));
  *(a1 + 1000) = *(a2 + 1000);
  v32 = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1008) = v32;
  sub_5F8954(a1 + 1032, a2 + 1032);
  if (a1 == a2)
  {
    v35 = *(a2 + 2056);
    *(a1 + 2058) = *(a2 + 2058);
    *(a1 + 2056) = v35;
    v36 = *(a2 + 2104);
    *(a1 + 2088) = *(a2 + 2088);
    *(a1 + 2104) = v36;
  }

  else
  {
    sub_5FDD68((a1 + 1888), *(a2 + 1888), *(a2 + 1896), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1896) - *(a2 + 1888)) >> 5));
    sub_5FE12C((a1 + 1912), *(a2 + 1912), *(a2 + 1920), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1920) - *(a2 + 1912)) >> 6));
    sub_5F99B8((a1 + 1936), *(a2 + 1936), *(a2 + 1944), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 1944) - *(a2 + 1936)) >> 6));
    sub_5FAFC4((a1 + 1960), *(a2 + 1960), *(a2 + 1968), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1968) - *(a2 + 1960)) >> 3));
    sub_5FB250((a1 + 1984), *(a2 + 1984), *(a2 + 1992), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1992) - *(a2 + 1984)) >> 3));
    sub_5FB61C((a1 + 2008), *(a2 + 2008), *(a2 + 2016), 0x4FA4FA4FA4FA4FA5 * ((*(a2 + 2016) - *(a2 + 2008)) >> 3));
    sub_5FC968((a1 + 2032), *(a2 + 2032), *(a2 + 2040), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 2040) - *(a2 + 2032)) >> 4));
    v33 = *(a2 + 2056);
    *(a1 + 2058) = *(a2 + 2058);
    *(a1 + 2056) = v33;
    sub_5FCEE0((a1 + 2064), *(a2 + 2064), *(a2 + 2072), 0x84BDA12F684BDA13 * ((*(a2 + 2072) - *(a2 + 2064)) >> 4));
    v34 = *(a2 + 2104);
    *(a1 + 2088) = *(a2 + 2088);
    *(a1 + 2104) = v34;
    sub_5FD2CC((a1 + 2120), *(a2 + 2120), *(a2 + 2128), 0xD37A6F4DE9BD37A7 * ((*(a2 + 2128) - *(a2 + 2120)) >> 3));
  }

  v37 = *(a2 + 2144);
  v38 = *(a2 + 2160);
  *(a1 + 2169) = *(a2 + 2169);
  *(a1 + 2160) = v38;
  *(a1 + 2144) = v37;
  *(a1 + 2192) = *(a2 + 2192);
  v39 = *(a2 + 2208);
  *(a1 + 2224) = *(a2 + 2224);
  *(a1 + 2208) = v39;
  sub_5F925C(a1 + 2232, a2 + 2232);
  *(a1 + 2416) = *(a2 + 2416);
  if (a1 == a2)
  {
    v42 = *(a2 + 2448);
    v43 = *(a2 + 2464);
    *(a1 + 2480) = *(a2 + 2480);
    *(a1 + 2464) = v43;
    *(a1 + 2448) = v42;
  }

  else
  {
    sub_4F3B08((a1 + 2424), *(a2 + 2424), *(a2 + 2432), (*(a2 + 2432) - *(a2 + 2424)) >> 4);
    v40 = *(a2 + 2448);
    v41 = *(a2 + 2464);
    *(a1 + 2480) = *(a2 + 2480);
    *(a1 + 2464) = v41;
    *(a1 + 2448) = v40;
    sub_4D88D0((a1 + 2488), *(a2 + 2488), *(a2 + 2496), (*(a2 + 2496) - *(a2 + 2488)) >> 4);
    sub_4D88D0((a1 + 2512), *(a2 + 2512), *(a2 + 2520), (*(a2 + 2520) - *(a2 + 2512)) >> 4);
  }

  v44 = *(a2 + 2536);
  v45 = *(a2 + 2568);
  *(a1 + 2552) = *(a2 + 2552);
  *(a1 + 2568) = v45;
  *(a1 + 2536) = v44;
  v46 = *(a2 + 2584);
  *(a1 + 2593) = *(a2 + 2593);
  *(a1 + 2584) = v46;
  return a1;
}

uint64_t sub_5F925C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v6 = *(a2 + 32);
    *(a1 + 37) = *(a2 + 37);
    *(a1 + 32) = v6;
  }

  else
  {
    v4 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v4 >= 0)
      {
        v7 = (a2 + 8);
      }

      else
      {
        v7 = *(a2 + 8);
      }

      if (v4 >= 0)
      {
        v8 = *(a2 + 31);
      }

      else
      {
        v8 = *(a2 + 16);
      }

      sub_13B38(a1 + 8, v7, v8);
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    v9 = *(a2 + 32);
    *(a1 + 37) = *(a2 + 37);
    *(a1 + 32) = v9;
    v10 = *(a2 + 79);
    if (*(a1 + 79) < 0)
    {
      if (v10 >= 0)
      {
        v12 = (a2 + 56);
      }

      else
      {
        v12 = *(a2 + 56);
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 79);
      }

      else
      {
        v13 = *(a2 + 64);
      }

      sub_13B38(a1 + 56, v12, v13);
    }

    else if ((*(a2 + 79) & 0x80) != 0)
    {
      sub_13A68((a1 + 56), *(a2 + 56), *(a2 + 64));
    }

    else
    {
      v11 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v11;
    }
  }

  v14 = *(a2 + 80);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 80) = v14;
  sub_5FD6D4(a1 + 88, a2 + 88);
  return a1;
}

void sub_5F9374(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x86BCA1AF286BCA1BLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_5ED940(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x1AF286BCA1AF286)
    {
      v10 = 0x86BCA1AF286BCA1BLL * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xD79435E50D7943)
      {
        v12 = 0x1AF286BCA1AF286;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0x86BCA1AF286BCA1BLL * (v13 - v8) >= a4)
  {
    while (v5 != a3)
    {
      sub_52CB8C(v8, v5);
      v5 = (v5 + 152);
      v8 += 19;
    }

    sub_5ED940(a1, v8);
  }

  else
  {
    v15 = (a2 + v14);
    if (v13 != v8)
    {
      do
      {
        sub_52CB8C(v8, v5);
        v5 = (v5 + 152);
        v8 += 19;
        v14 -= 152;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v17 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        sub_5139E8(v16, v15);
        v15 = (v15 + 152);
        v16 = (v17 + 19);
        v17 += 19;
      }

      while (v15 != a3);
    }

    *(a1 + 8) = v16;
  }
}

void sub_5F95D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFC4C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5F95EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFC4C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_5F9604(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 8;
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a2 + 31);
  if (*(a1 + 31) < 0)
  {
    if ((v5 & 0x80u) == 0)
    {
      v9 = (a2 + 8);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if ((v5 & 0x80u) == 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = *(a2 + 16);
    }

    sub_13B38(v3, v9, v10);
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (*(a1 + 55) < 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if ((v5 & 0x80) == 0)
  {
    v6 = *(a2 + 8);
    *(v3 + 16) = *(a2 + 24);
    *v3 = v6;
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (*(a1 + 55) < 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  sub_13A68(v3, *(a2 + 8), *(a2 + 16));
  v7 = (a2 + 32);
  v8 = *(a2 + 55);
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
LABEL_13:
    if ((v8 & 0x80) != 0)
    {
      sub_13A68((a1 + 32), *(a2 + 32), *(a2 + 40));
      return a1;
    }

    v11 = *v7;
    *(a1 + 48) = v7[2];
    *(a1 + 32) = v11;
    return a1;
  }

LABEL_17:
  if ((v8 & 0x80u) == 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(a2 + 32);
  }

  if ((v8 & 0x80u) == 0)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(a2 + 40);
  }

  sub_13B38(a1 + 32, v13, v14);
  return a1;
}

void sub_5F9710(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_5ED268(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x199999999999999)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xCCCCCCCCCCCCCCLL)
      {
        v12 = 0x199999999999999;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x199999999999999)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v8) >> 5) >= a4)
  {
    while (v5 != a3)
    {
      sub_52CB8C(v8, v5);
      v8[19] = *(v5 + 19);
      v5 += 10;
      v8 += 20;
    }

    sub_5ED268(a1, v8);
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        sub_52CB8C(v8, v5);
        v8[19] = *(v5 + 19);
        v5 += 10;
        v8 += 20;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v16 = v13;
    v15 = v13;
    if (v14 != a3)
    {
      v15 = v13;
      do
      {
        *(sub_5139E8(v15, v14) + 152) = *(v14 + 19);
        v14 += 10;
        v15 = (v16 + 20);
        v16 += 20;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v15;
  }
}

void sub_5F9988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFFF4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5F99A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFFF4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_5F99B8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *result) >> 6) < a4)
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
          v10 = sub_5C3378((v10 - 88));
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

    if (a4 <= 0x5D1745D1745D17)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 6);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2E8BA2E8BA2E8BLL)
      {
        v14 = 0x5D1745D1745D17;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x5D1745D1745D17)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x2E8BA2E8BA2E8BA3 * ((v15 - v8) >> 6) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5F9C58(v8, v5);
        v5 += 704;
        v8 += 704;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 704;
      result = sub_5C3378(v15);
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
        result = sub_5F9C58(v8, v5);
        v5 += 704;
        v8 += 704;
        v16 -= 704;
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
        result = sub_5F01C8(v15 + v19, v17 + v19);
        v19 += 704;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5F9C2C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = (v3 - 704);
    v7 = -v4;
    do
    {
      v6 = sub_5C3378(v6) - 88;
      v7 += 704;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5F9C58(uint64_t a1, uint64_t a2)
{
  sub_5F9D98(a1, a2);
  *(a1 + 380) = *(a2 + 380);
  sub_594568(a1 + 384, a2 + 384);
  if (a1 == a2)
  {
    *(a1 + 632) = *(a2 + 632);
    return a1;
  }

  else
  {
    v4 = (a1 + 544);
    v5 = *(a2 + 567);
    if (*(a1 + 567) < 0)
    {
      if (v5 >= 0)
      {
        v8 = (a2 + 544);
      }

      else
      {
        v8 = *(a2 + 544);
      }

      if (v5 >= 0)
      {
        v9 = *(a2 + 567);
      }

      else
      {
        v9 = *(a2 + 552);
      }

      sub_13B38(v4, v8, v9);
    }

    else if ((*(a2 + 567) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 544), *(a2 + 552));
    }

    else
    {
      v6 = *(a2 + 544);
      *(a1 + 560) = *(a2 + 560);
      *v4 = v6;
    }

    sub_74300((a1 + 568), *(a2 + 568), *(a2 + 576), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 576) - *(a2 + 568)) >> 3));
    *(a1 + 624) = *(a2 + 624);
    sub_5FA69C(a1 + 592, *(a2 + 608), 0);
    *(a1 + 632) = *(a2 + 632);
    *(a1 + 672) = *(a2 + 672);
    sub_5FAA80(a1 + 640, *(a2 + 656), 0);
    sub_5FAE24((a1 + 680), *(a2 + 680), *(a2 + 688), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 688) - *(a2 + 680)) >> 3));
    return a1;
  }
}

uint64_t sub_5F9D98(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    v14 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v14;
    v15 = *(a2 + 64);
    v16 = *(a2 + 80);
    v17 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 80) = v16;
    *(a1 + 96) = v17;
    *(a1 + 64) = v15;
    v18 = *(a2 + 120);
    v19 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v19;
    *(a1 + 120) = v18;
    v20 = *(a2 + 208);
    v21 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v21;
    *(a1 + 208) = v20;
    v22 = *(a2 + 256);
    v23 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 256) = v22;
    *(a1 + 272) = v23;
    *(a1 + 320) = *(a2 + 320);
  }

  else
  {
    sub_5F9F30((a1 + 8), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 5));
    v4 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v4;
    v5 = *(a2 + 64);
    v6 = *(a2 + 80);
    v7 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 80) = v6;
    *(a1 + 96) = v7;
    *(a1 + 64) = v5;
    v8 = *(a2 + 120);
    v9 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v9;
    *(a1 + 120) = v8;
    sub_4D88D0((a1 + 160), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 4);
    sub_4D88D0((a1 + 184), *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 4);
    v10 = *(a2 + 208);
    v11 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v11;
    *(a1 + 208) = v10;
    v12 = *(a2 + 256);
    v13 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 256) = v12;
    *(a1 + 272) = v13;
    sub_5FA1C0(a1 + 296, *(a2 + 296), *(a2 + 304), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 304) - *(a2 + 296)) >> 3));
    *(a1 + 320) = *(a2 + 320);
    sub_146EC((a1 + 328), *(a2 + 328), *(a2 + 336), (*(a2 + 336) - *(a2 + 328)) >> 2);
  }

  v24 = *(a2 + 352);
  *(a1 + 361) = *(a2 + 361);
  *(a1 + 352) = v24;
  return a1;
}

uint64_t *sub_5F9F30(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 5) < a4)
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
          v10 = sub_53A868(v10 - 160);
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

    if (a4 <= 0x199999999999999)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xCCCCCCCCCCCCCCLL)
      {
        v14 = 0x199999999999999;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x199999999999999)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_594568(v8, v5);
        v5 += 160;
        v8 += 160;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 160;
      result = sub_53A868(v15);
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
        result = sub_594568(v8, v5);
        v5 += 160;
        v8 += 160;
        v16 -= 160;
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
        result = sub_55BD50(v15 + v19, v17 + v19);
        v19 += 160;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5FA194(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 160;
    v7 = -v4;
    do
    {
      v6 = sub_53A868(v6) - 160;
      v7 += 160;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_5FA1C0(uint64_t a1, void ***a2, void ***a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      for (i = *(a1 + 8); i != v8; sub_5ED0A8(a1, i))
      {
        i -= 13;
      }

      *(a1 + 8) = v8;
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x276276276276276)
    {
      v21 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x13B13B13B13B13BLL)
      {
        v23 = 0x276276276276276;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0x276276276276276)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x4EC4EC4EC4EC4EC5 * (v11 - v8) >= a4)
  {
    if (a2 != a3)
    {
      v24 = 0;
      do
      {
        v26 = &v8[v24];
        if (a2 != v8)
        {
          sub_74300(&v8[v24], a2[v24], a2[v24 + 1], 0xAAAAAAAAAAAAAAABLL * (a2[v24 + 1] - a2[v24]));
          *(v26 + 14) = a2[v24 + 7];
          sub_5FA69C((v26 + 3), a2[v24 + 5], 0);
        }

        *(v26 + 64) = a2[v24 + 8];
        *(v26 + 18) = a2[v24 + 9];
        v28 = a2[v24 + 10];
        v27 = a2[v24 + 11];
        if (v27)
        {
          atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
        }

        v26[10] = v28;
        v29 = &v8[v24];
        v30 = v8[v24 + 11];
        v8[v24 + 11] = v27;
        if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v30->__on_zero_shared)(v30);
          std::__shared_weak_count::__release_weak(v30);
        }

        v25 = a2[v24 + 12];
        *(v29 + 98) = BYTE2(a2[v24 + 12]);
        *(v29 + 48) = v25;
        v24 += 13;
      }

      while (&a2[v24] != a3);
      v11 = *(a1 + 8);
      v8 = (v8 + v24 * 8);
    }

    while (v11 != v8)
    {
      v11 -= 13;
      sub_5ED0A8(a1, v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v13 = a2 + v12;
    if (v11 != v8)
    {
      v14 = 0;
      do
      {
        v16 = &v8[v14 / 8];
        if (a2 != v8)
        {
          sub_74300(&v8[v14 / 8], a2[v14 / 8], a2[v14 / 8 + 1], 0xAAAAAAAAAAAAAAABLL * (a2[v14 / 8 + 1] - a2[v14 / 8]));
          *(v16 + 14) = a2[v14 / 8 + 7];
          sub_5FA69C((v16 + 3), a2[v14 / 8 + 5], 0);
        }

        *(v16 + 64) = a2[v14 / 8 + 8];
        *(v16 + 18) = a2[v14 / 8 + 9];
        v18 = a2[v14 / 8 + 10];
        v17 = a2[v14 / 8 + 11];
        if (v17)
        {
          atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
        }

        v16[10] = v18;
        v19 = &v8[v14 / 8];
        v20 = v8[v14 / 8 + 11];
        v8[v14 / 8 + 11] = v17;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v15 = a2[v14 / 8 + 12];
        *(v19 + 98) = BYTE2(a2[v14 / 8 + 12]);
        *(v19 + 48) = v15;
        v14 += 104;
      }

      while (v12 != v14);
      v11 = *(a1 + 8);
    }

    v35 = v11;
    v31 = v11;
    if (v13 != a3)
    {
      v31 = v11;
      do
      {
        v33 = sub_5F0850(v31, v13);
        *(v33 + 72) = *(v13 + 72);
        *(v33 + 80) = *(v13 + 80);
        v34 = *(v13 + 88);
        *(v33 + 88) = v34;
        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = *(v13 + 96);
        *(v33 + 98) = *(v13 + 98);
        *(v33 + 96) = v32;
        v13 += 104;
        v31 = (v35 + 13);
        v35 += 13;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v31;
  }
}

void sub_5FA664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F0774(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FA684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F0774(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FA69C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        if (v7 != a2)
        {
          v8 = *(a2 + 39);
          if (v7[39] < 0)
          {
            if (v8 >= 0)
            {
              v10 = a2 + 2;
            }

            else
            {
              v10 = a2[2];
            }

            if (v8 >= 0)
            {
              v11 = *(a2 + 39);
            }

            else
            {
              v11 = a2[3];
            }

            sub_13B38((v7 + 16), v10, v11);
          }

          else if ((*(a2 + 39) & 0x80) != 0)
          {
            sub_13A68(v7 + 16, a2[2], a2[3]);
          }

          else
          {
            v9 = *(a2 + 1);
            *(v7 + 4) = a2[4];
            *(v7 + 1) = v9;
          }
        }

        sub_52CB8C(v7 + 40, a2 + 5);
        v12 = *v7;
        sub_5FA81C(a1, v7);
        a2 = *a2;
        v7 = v12;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      do
      {
        v13 = *v7;
        sub_55F7FC((v7 + 16));
        operator delete(v7);
        v7 = v13;
      }

      while (v13);
    }
  }

LABEL_19:
  if (a2 != a3)
  {
    sub_5FA980();
  }
}

void sub_5FA7D8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_5ED000(v1, v2);
  __cxa_rethrow();
}

void sub_5FA808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5FA81C(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v19, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_61CC8(a1, v9, v4);
  v11 = a1[1];
  v12 = *(a2 + 8);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  if (v10)
  {
    *a2 = *v10;
    *v10 = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v14 >= *&v11)
        {
          v14 %= *&v11;
        }
      }

      else
      {
        v14 &= *&v11 - 1;
      }

      if (v14 != v12)
      {
        v17 = (*a1 + 8 * v14);
LABEL_25:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v12) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

void sub_5FAA5C(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*v3);
  }

  sub_5F0E20(v1);
  _Unwind_Resume(a1);
}

void sub_5FAA80(uint64_t a1, char *a2, char *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        if (v7 == a2)
        {
          *(v7 + 10) = *(a2 + 10);
        }

        else
        {
          v8 = a2[39];
          if (v7[39] < 0)
          {
            if (v8 >= 0)
            {
              v10 = a2 + 16;
            }

            else
            {
              v10 = *(a2 + 2);
            }

            if (v8 >= 0)
            {
              v11 = a2[39];
            }

            else
            {
              v11 = *(a2 + 3);
            }

            sub_13B38((v7 + 16), v10, v11);
          }

          else if (a2[39] < 0)
          {
            sub_13A68(v7 + 16, *(a2 + 2), *(a2 + 3));
          }

          else
          {
            v9 = *(a2 + 1);
            *(v7 + 4) = *(a2 + 4);
            *(v7 + 1) = v9;
          }

          *(v7 + 10) = *(a2 + 10);
          sub_596098(v7 + 6, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 2);
        }

        *(v7 + 18) = *(a2 + 18);
        v7[80] = a2[80];
        v12 = *v7;
        sub_5FACC0(a1, v7);
        a2 = *a2;
        v7 = v12;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      do
      {
        v13 = *v7;
        v14 = *(v7 + 6);
        if (v14)
        {
          *(v7 + 7) = v14;
          operator delete(v14);
        }

        if (v7[39] < 0)
        {
          operator delete(*(v7 + 2));
        }

        operator delete(v7);
        v7 = v13;
      }

      while (v13);
    }
  }

LABEL_19:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_5FAC64(void *a1)
{
  __cxa_begin_catch(a1);
  sub_5ED888(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_5FACC0(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v19, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_61CC8(a1, v9, v4);
  v11 = a1[1];
  v12 = *(a2 + 8);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  if (v10)
  {
    *a2 = *v10;
    *v10 = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v14 >= *&v11)
        {
          v14 %= *&v11;
        }
      }

      else
      {
        v14 &= *&v11 - 1;
      }

      if (v14 != v12)
      {
        v17 = (*a1 + 8 * v14);
LABEL_25:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v12) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

char *sub_5FAE24(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 3) >= a4)
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

void sub_5FAFC4(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 5);
          v12 -= 40;
          v13 = v14;
          if (v14)
          {
            *(v10 - 4) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
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

    if (a4 <= 0x666666666666666)
    {
      v21 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x333333333333333)
      {
        v23 = 0x666666666666666;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_31F64(v8, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 3);
        }

        v20 = *(v5 + 24);
        v8[32] = *(v5 + 32);
        *(v8 + 3) = v20;
        v5 += 40;
        v8 += 40;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v24 = v15;
    do
    {
      v26 = *(v24 - 40);
      v24 -= 40;
      v25 = v26;
      if (v26)
      {
        *(v15 - 32) = v25;
        operator delete(v25);
      }

      v15 = v24;
    }

    while (v24 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_31F64(v8, *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 3);
      }

      v19 = *(v18 + 24);
      v8[32] = *(v18 + 32);
      *(v8 + 3) = v19;
      v18 += 40;
      v8 += 40;
      v17 -= 40;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_5F1440(a1, v5 + v16, a3, v15);
}

void sub_5FB250(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
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
          v12 = *(v10 - 17);
          v10 -= 5;
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

    if (a4 <= 0x666666666666666)
    {
      v27 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v28 = 2 * v27;
      if (2 * v27 <= a4)
      {
        v28 = a4;
      }

      if (v27 >= 0x333333333333333)
      {
        v29 = 0x666666666666666;
      }

      else
      {
        v29 = v28;
      }

      if (v29 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v25 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v25 >= 0)
            {
              v23 = v5;
            }

            else
            {
              v23 = *v5;
            }

            if (v25 >= 0)
            {
              v24 = *(v5 + 23);
            }

            else
            {
              v24 = v5[1];
            }

            sub_13B38(v8, v23, v24);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
          }

          else
          {
            v26 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v26;
          }
        }

        *(v8 + 24) = *(v5 + 3);
        v5 += 5;
        v8 += 40;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v33 = *(v13 - 17);
      v13 -= 5;
      if (v33 < 0)
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
        v19 = &v16[v8];
        v20 = &v16[v5];
        if (v5 != v8)
        {
          v21 = *(v20 + 23);
          if (v19[23] < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v16[v5];
            }

            else
            {
              v17 = *&v16[v5];
            }

            if (v21 >= 0)
            {
              v18 = *(v20 + 23);
            }

            else
            {
              v18 = *&v16[v5 + 8];
            }

            sub_13B38(&v16[v8], v17, v18);
          }

          else if ((*(v20 + 23) & 0x80) != 0)
          {
            sub_13A68(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
          }

          else
          {
            v22 = *v20;
            *(v19 + 2) = v20[2];
            *v19 = v22;
          }
        }

        *(v19 + 24) = *(v20 + 3);
        v16 += 40;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v34 = v13;
    v30 = v13;
    if (v15 != a3)
    {
      v30 = v13;
      do
      {
        if (v15[23] < 0)
        {
          sub_325C(v30, *v15, *(v15 + 1));
          v32 = v34;
        }

        else
        {
          v31 = *v15;
          v30[2] = *(v15 + 2);
          *v30 = v31;
          v32 = v30;
        }

        *(v30 + 3) = *(v15 + 24);
        v15 += 40;
        v30 = v32 + 5;
        v34 = v32 + 5;
      }

      while (v15 != a3);
    }

    a1[1] = v30;
  }
}

void sub_5FB5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F1734(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FB604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F1734(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_5FB61C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4FA4FA4FA4FA4FA5 * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_5C3168(v10 - 360);
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

    if (a4 <= 0xB60B60B60B60B6)
    {
      v12 = 0x4FA4FA4FA4FA4FA5 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x5B05B05B05B05BLL)
      {
        v14 = 0xB60B60B60B60B6;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0xB60B60B60B60B6)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x4FA4FA4FA4FA4FA5 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5FB8BC(v8, v5);
        v5 += 360;
        v8 += 360;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 360;
      result = sub_5C3168(v15);
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
        result = sub_5FB8BC(v8, v5);
        v5 += 360;
        v8 += 360;
        v16 -= 360;
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
        result = sub_5F1934(v15 + v19, v17 + v19);
        v19 += 360;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5FB890(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 360;
    v7 = -v4;
    do
    {
      v6 = sub_5C3168(v6) - 360;
      v7 += 360;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5FB8BC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 160) = *(a2 + 160);
    v5 = *(a2 + 216);
    *(a1 + 223) = *(a2 + 223);
    *(a1 + 216) = v5;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
    sub_5FB9FC(a1, *(a2 + 16), 0);
    *(a1 + 72) = *(a2 + 72);
    sub_5FC0A8(a1 + 40, *(a2 + 56), 0);
    *(a1 + 112) = *(a2 + 112);
    sub_5FC2D0(a1 + 80, *(a2 + 96), 0);
    *(a1 + 152) = *(a2 + 152);
    sub_5FC2D0(a1 + 120, *(a2 + 136), 0);
    *(a1 + 160) = *(a2 + 160);
    sub_5FC404((a1 + 168), *(a2 + 168), *(a2 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 176) - *(a2 + 168)) >> 3));
    sub_5FC404((a1 + 192), *(a2 + 192), *(a2 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 3));
    v4 = *(a2 + 216);
    *(a1 + 223) = *(a2 + 223);
    *(a1 + 216) = v4;
    sub_5FC668((a1 + 232), *(a2 + 232), *(a2 + 240), (*(a2 + 240) - *(a2 + 232)) >> 6);
  }

  v6 = *(a2 + 256);
  v7 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v7;
  *(a1 + 256) = v6;
  v8 = *(a2 + 304);
  v9 = *(a2 + 320);
  v10 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v9;
  *(a1 + 336) = v10;
  *(a1 + 304) = v8;
  return a1;
}

void sub_5FB9FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[16] = *(a2 + 16);
        v7[17] = *(a2 + 17);
        v8 = *v7;
        sub_5FBB3C(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_5FBAF4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

unsigned __int8 *sub_5FBB3C(uint64_t *a1, unsigned __int8 *a2)
{
  v5 = a2 + 16;
  v4 = a2[16];
  *(v5 - 1) = v4;
  v6 = sub_5FBC6C(a1, v4, v5);
  v7 = a1[1];
  v8 = *(v5 - 1);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  if (v6)
  {
    *a2 = *v6;
    *v6 = a2;
    if (*a2)
    {
      v10 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v10 >= *&v7)
        {
          v10 %= *&v7;
        }
      }

      else
      {
        v10 &= *&v7 - 1;
      }

      if (v10 != v8)
      {
        v13 = (*a1 + 8 * v10);
LABEL_19:
        *v13 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v11 = *a1;
    *(*a1 + 8 * v8) = a1 + 2;
    if (*a2)
    {
      v12 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      v13 = (v11 + 8 * v12);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t *sub_5FBC6C(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v17 = 1;
  if (v6 >= 3)
  {
    v17 = (v6 & (v6 - 1)) != 0;
  }

  v18 = v17 | (2 * v6);
  v19 = vcvtps_u32_f32(v7 / v8);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_22;
  }

  if (prime < v6)
  {
    v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
    {
      v24 = prime;
      v25 = std::__next_prime(v21);
      if (v24 <= v25)
      {
        prime = v25;
      }

      else
      {
        prime = v24;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = 1 << -__clz(v21 - 1);
      if (v21 >= 2)
      {
        v21 = v23;
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

LABEL_22:
    sub_5FBEEC(a1, prime);
  }

LABEL_38:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v16 = v10[1];
      if ((v16 & v9) != (v9 & a2))
      {
        break;
      }

      v12 = v16 == a2 && *a3 == *(v10 + 16);
      v13 = v12 != (v11 & 1);
      v14 = v11 & v13;
      v11 |= v13;
    }

    while ((v14 & 1) == 0);
    return result;
  }

LABEL_39:
  v26 = a2;
  if (v6 <= a2)
  {
    v26 = a2 % v6;
  }

  v27 = *(*a1 + 8 * v26);
  if (!v27)
  {
    return 0;
  }

  v28 = 0;
  do
  {
    result = v27;
    v27 = *v27;
    if (!v27)
    {
      break;
    }

    v32 = v27[1];
    v33 = v32;
    if (v32 >= v6)
    {
      v33 = v32 % v6;
    }

    if (v33 != v26)
    {
      break;
    }

    v29 = v32 == a2 && *a3 == *(v27 + 16);
    v30 = v29 != (v28 & 1);
    v31 = v28 & v30;
    v28 |= v30;
  }

  while (v31 != 1);
  return result;
}

void sub_5FBEEC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_5FC0A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        *(v7 + 16) = *(a2 + 16);
        if (v7 != a2)
        {
          sub_74300(v7 + 3, a2[3], a2[4], 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 3));
        }

        v8 = *v7;
        sub_5FBB3C(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      do
      {
        v10 = *v7;
        v11 = v7[3];
        if (v11)
        {
          v12 = v7[4];
          v9 = v7[3];
          if (v12 != v11)
          {
            do
            {
              v13 = *(v12 - 1);
              v12 -= 3;
              if (v13 < 0)
              {
                operator delete(*v12);
              }
            }

            while (v12 != v11);
            v9 = v7[3];
          }

          v7[4] = v11;
          operator delete(v9);
        }

        operator delete(v7);
        v7 = v10;
      }

      while (v10);
    }
  }

LABEL_18:
  if (a2 != a3)
  {
    sub_5FC204();
  }
}

void sub_5FC1D4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_5ED6AC(v1, v2);
  __cxa_rethrow();
}

void sub_5FC2A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F25B8(va);
  _Unwind_Resume(a1);
}

void sub_5FC2BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F25B8(va);
  _Unwind_Resume(a1);
}

void sub_5FC2D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[16] = *(a2 + 16);
        v8 = *v7;
        sub_5FBB3C(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_5FC3BC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_5FC404(char ***a1, char **a2, char **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_384B90(v8, *v5, v5[1], v5[1] - *v5);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_384B90(v8, *v18, v18[1], v18[1] - *v18);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_5F2988(a1, (v5 + v16), a3, v15);
}

void sub_5FC668(void **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 6)
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
            *(v10 - 2) = v12;
            operator delete(v12);
          }

          v13 = *(v10 - 6);
          if (v13)
          {
            *(v10 - 5) = v13;
            operator delete(v13);
          }

          v10 -= 8;
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

    if (!(a4 >> 58))
    {
      v18 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v18 = a4;
      }

      v19 = v7 >= 0x7FFFFFFFFFFFFFC0;
      v20 = 0x3FFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v18;
      }

      if (!(v20 >> 58))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = a1[1];
  v15 = v14 - v8;
  if (a4 <= (v14 - v8) >> 6)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        if (v5 != v8)
        {
          sub_384B90(v8 + 2, v5[2], v5[3], v5[3] - v5[2]);
          sub_384B90(v8 + 5, v5[5], v5[6], v5[6] - v5[5]);
        }

        v5 += 8;
        v8 += 8;
      }

      while (v5 != a3);
      v14 = a1[1];
    }

    while (v14 != v8)
    {
      v22 = *(v14 - 24);
      if (v22)
      {
        *(v14 - 16) = v22;
        operator delete(v22);
      }

      v23 = *(v14 - 48);
      if (v23)
      {
        *(v14 - 40) = v23;
        operator delete(v23);
      }

      v14 -= 64;
    }

    a1[1] = v8;
  }

  else
  {
    v16 = (a2 + v15);
    if (v14 != v8)
    {
      v17 = 0;
      do
      {
        *&v8[v17 / 8] = *&v5[v17 / 8];
        if (v5 != v8)
        {
          sub_384B90(&v8[v17 / 8 + 2], v5[v17 / 8 + 2], v5[v17 / 8 + 3], v5[v17 / 8 + 3] - v5[v17 / 8 + 2]);
          sub_384B90(&v8[v17 / 8 + 5], v5[v17 / 8 + 5], v5[v17 / 8 + 6], v5[v17 / 8 + 6] - v5[v17 / 8 + 5]);
        }

        v17 += 64;
      }

      while (v15 != v17);
      v14 = a1[1];
    }

    v24 = v14;
    v21 = v14;
    if (v16 != a3)
    {
      v21 = v14;
      do
      {
        sub_5F2BA0(v21, v16);
        v16 += 4;
        v21 = v24 + 64;
        v24 += 64;
      }

      while (v16 != a3);
    }

    a1[1] = v21;
  }
}

void sub_5FC938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F2CC4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FC950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F2CC4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FC968(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 272;
          sub_513694(v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xF0F0F0F0F0F0F0)
    {
      v12 = 0xF0F0F0F0F0F0F0F1 * (v8 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x78787878787878)
      {
        v14 = 0xF0F0F0F0F0F0F0;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0xF0F0F0F0F0F0F0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  if (0xF0F0F0F0F0F0F0F1 * ((v15 - v9) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_52CB8C(v9, v6);
        v21 = *(v6 + 168);
        *(v9 + 152) = *(v6 + 152);
        *(v9 + 168) = v21;
        v22 = *(v6 + 200);
        v23 = *(v6 + 216);
        v24 = *(v6 + 228);
        *(v9 + 184) = *(v6 + 184);
        *(v9 + 228) = v24;
        *(v9 + 216) = v23;
        *(v9 + 200) = v22;
        if (v9 != v6)
        {
          sub_5FCC10(v9 + 248, *(v6 + 248), *(v6 + 256), (*(v6 + 256) - *(v6 + 248)) >> 4);
        }

        v6 += 272;
        v9 += 17;
      }

      while (v6 != a3);
      v15 = a1[1];
    }

    while (v15 != v9)
    {
      v15 -= 272;
      sub_513694(v15);
    }

    a1[1] = v9;
  }

  else
  {
    v16 = a2 + v15 - v9;
    if (v15 != v9)
    {
      do
      {
        sub_52CB8C(v9, v6);
        v17 = *(v6 + 168);
        *(v9 + 152) = *(v6 + 152);
        *(v9 + 168) = v17;
        v18 = *(v6 + 200);
        v19 = *(v6 + 216);
        v20 = *(v6 + 228);
        *(v9 + 184) = *(v6 + 184);
        *(v9 + 228) = v20;
        *(v9 + 216) = v19;
        *(v9 + 200) = v18;
        if (v9 != v6)
        {
          sub_5FCC10(v9 + 248, *(v6 + 248), *(v6 + 256), (*(v6 + 256) - *(v6 + 248)) >> 4);
        }

        v6 += 272;
        v9 += 17;
      }

      while (v6 != v16);
    }

    sub_5F2E44(a1, v16, a3);
  }
}

_OWORD *sub_5FCC10(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  result = *a1;
  if (a4 > (v5 - result) >> 4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v7 = a4;
      operator delete(result);
      a4 = v7;
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 60))
    {
      v8 = v5 >> 3;
      if (v5 >> 3 <= a4)
      {
        v8 = a4;
      }

      v9 = v5 >= 0x7FFFFFFFFFFFFFF0;
      v10 = 0xFFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = *(a1 + 8);
  if (a4 <= (v11 - result) >> 4)
  {
    if (a2 == a3)
    {
      *(a1 + 8) = result;
      return result;
    }

    v28 = a3 - a2 - 16;
    if (v28 >= 0x90 && ((v29 = (v28 & 0xFFFFFFFFFFFFFFF0) + 16, result >= (a2 + v29)) || (result + v29) <= a2))
    {
      v35 = (v28 >> 4) + 1;
      v36 = v35 & 0x1FFFFFFFFFFFFFFCLL;
      v30 = &result[v36];
      v31 = &a2[v36];
      v37 = a2 + 2;
      v38 = result + 2;
      v39 = v35 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v41 = *(v37 - 2);
        v40 = *(v37 - 1);
        v43 = *v37;
        v42 = v37[1];
        v37 += 4;
        *(v38 - 2) = v41;
        *(v38 - 1) = v40;
        *v38 = v43;
        v38[1] = v42;
        v38 += 4;
        v39 -= 4;
      }

      while (v39);
      if (v35 == (v35 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v30 = result;
      v31 = a2;
    }

    do
    {
      *v30 = *v31;
      v30[1] = *(v31++ + 1);
      v30 += 2;
    }

    while (v31 != a3);
LABEL_28:
    *(a1 + 8) = v30;
    return result;
  }

  v12 = (a2 + v11 - result);
  v13 = v11 - result;
  if (v11 != result)
  {
    v14 = v13 - 16;
    if ((v13 - 16) < 0x90 || ((v15 = (v14 & 0xFFFFFFFFFFFFFFF0) + 16, result < (a2 + v15)) ? (v16 = (result + v15) > a2) : (v16 = 0), v16))
    {
      v19 = result;
      v20 = a2;
    }

    else
    {
      v17 = (v14 >> 4) + 1;
      v18 = v17 & 0x1FFFFFFFFFFFFFFCLL;
      v19 = &result[v18];
      v20 = &a2[v18];
      v21 = a2 + 2;
      v22 = result + 2;
      v23 = v17 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v25 = *(v21 - 2);
        v24 = *(v21 - 1);
        v27 = *v21;
        v26 = v21[1];
        v21 += 4;
        *(v22 - 2) = v25;
        *(v22 - 1) = v24;
        *v22 = v27;
        v22[1] = v26;
        v22 += 4;
        v23 -= 4;
      }

      while (v23);
      if (v17 == (v17 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_31;
      }
    }

    do
    {
      *v19 = *v20;
      v19[1] = *(v20++ + 1);
      v19 += 2;
    }

    while (v20 != v12);
LABEL_31:
    v11 = *(a1 + 8);
  }

  v32 = v11;
  if (v12 != a3)
  {
    v32 = v11;
    v33 = v11;
    do
    {
      v34 = *v12++;
      *v33++ = v34;
      v32 += 16;
    }

    while (v12 != a3);
  }

  *(a1 + 8) = v32;
  return result;
}

void **sub_5FCEE0(void **result, char *a2, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x84BDA12F684BDA13 * ((v7 - *result) >> 4) < a4)
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
          v10 = sub_5941F8(v10 - 432);
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

    if (a4 <= 0x97B425ED097B42)
    {
      v12 = 0x84BDA12F684BDA13 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x4BDA12F684BDA1)
      {
        v14 = 0x97B425ED097B42;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x97B425ED097B42)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  if (0x84BDA12F684BDA13 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v25 = 0;
      do
      {
        v28 = &v8[v25];
        v29 = &a2[v25];
        *&v8[v25] = *&a2[v25];
        sub_52CB8C(&v8[v25 + 8], &a2[v25 + 8]);
        v30 = *&a2[v25 + 169];
        *(v28 + 10) = *&a2[v25 + 160];
        *(v28 + 169) = v30;
        if (v8 == a2)
        {
          v31 = *(v29 + 216);
          v32 = *(v29 + 232);
          *(v28 + 31) = *(v29 + 31);
          *(v28 + 232) = v32;
          *(v28 + 216) = v31;
        }

        else
        {
          sub_31F64(v28 + 24, *(v29 + 24), *(v29 + 25), (*(v29 + 25) - *(v29 + 24)) >> 3);
          v26 = *(v29 + 216);
          v27 = *(v29 + 232);
          *(v28 + 31) = *(v29 + 31);
          *(v28 + 232) = v27;
          *(v28 + 216) = v26;
          sub_31F64(v28 + 32, *(v29 + 32), *(v29 + 33), (*(v29 + 33) - *(v29 + 32)) >> 3);
        }

        result = sub_52CB8C(v28 + 280, v29 + 35);
        v25 += 432;
      }

      while (v29 + 432 != a3);
      v15 = v6[1];
      v8 += v25;
    }

    while (v15 != v8)
    {
      v15 -= 432;
      result = sub_5941F8(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v16 = &a2[v15 - v8];
    if (v15 != v8)
    {
      v17 = v8 + 192;
      v18 = a2 + 192;
      do
      {
        v21 = v18 - 192;
        *(v17 - 24) = *(v18 - 24);
        sub_52CB8C(v17 - 184, v18 - 23);
        v22 = *(v18 - 23);
        *(v17 - 2) = *(v18 - 2);
        *(v17 - 23) = v22;
        if (v17 == v18)
        {
          v23 = *(v18 + 24);
          v24 = *(v18 + 40);
          *(v17 + 7) = *(v18 + 7);
          *(v17 + 40) = v24;
          *(v17 + 24) = v23;
        }

        else
        {
          sub_31F64(v17, *v18, *(v18 + 1), (*(v18 + 1) - *v18) >> 3);
          v19 = *(v18 + 24);
          v20 = *(v18 + 40);
          *(v17 + 7) = *(v18 + 7);
          *(v17 + 40) = v20;
          *(v17 + 24) = v19;
          sub_31F64(v17 + 8, *(v18 + 8), *(v18 + 9), (*(v18 + 9) - *(v18 + 8)) >> 3);
        }

        result = sub_52CB8C(v17 + 88, v18 + 11);
        v17 += 432;
        v18 += 432;
      }

      while (v21 + 432 != v16);
      v15 = v6[1];
    }

    v33 = v15;
    if (v16 != a3)
    {
      v34 = 0;
      do
      {
        result = sub_5F3168(v15 + v34, &v16[v34]);
        v34 += 432;
      }

      while (&v16[v34] != a3);
      v33 = v15 + v34;
    }

    v6[1] = v33;
  }

  return result;
}

void sub_5FD2CC(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xD37A6F4DE9BD37A7 * ((v7 - *a1) >> 3) < a4)
  {
    if (!v8)
    {
      goto LABEL_37;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
      goto LABEL_36;
    }

    while (1)
    {
      if (*(v10 - 9) < 0)
      {
        operator delete(*(v10 - 4));
        if ((*(v10 - 41) & 0x80000000) == 0)
        {
LABEL_8:
          v12 = *(v10 - 20);
          if (v12 == -1)
          {
            goto LABEL_5;
          }

LABEL_12:
          (off_266BAC0[v12])(v29, v10 - 14);
          goto LABEL_5;
        }
      }

      else if ((*(v10 - 41) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v10 - 8));
      v12 = *(v10 - 20);
      if (v12 != -1)
      {
        goto LABEL_12;
      }

LABEL_5:
      *(v10 - 20) = -1;
      v10 -= 23;
      if (v10 == v8)
      {
        v11 = *a1;
LABEL_36:
        a1[1] = v8;
        operator delete(v11);
        v7 = 0;
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        a4 = v9;
LABEL_37:
        if (a4 <= 0x1642C8590B21642)
        {
          v26 = 0xD37A6F4DE9BD37A7 * (v7 >> 3);
          v27 = 2 * v26;
          if (2 * v26 <= a4)
          {
            v27 = a4;
          }

          if (v26 >= 0xB21642C8590B21)
          {
            v28 = 0x1642C8590B21642;
          }

          else
          {
            v28 = v27;
          }

          if (v28 <= 0x1642C8590B21642)
          {
            operator new();
          }
        }

        sub_1794();
      }
    }
  }

  v13 = a1[1];
  if (0xD37A6F4DE9BD37A7 * (v13 - v8) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        v22 = *(v5 + 16);
        v23 = *(v5 + 32);
        v24 = *(v5 + 48);
        *(v8 + 64) = *(v5 + 64);
        *(v8 + 2) = v23;
        *(v8 + 3) = v24;
        *(v8 + 1) = v22;
        sub_5410A0((v8 + 9), v5 + 72);
        v8 += 23;
        v5 += 184;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    if (v13 == v8)
    {
LABEL_34:
      a1[1] = v8;
      return;
    }

    while (1)
    {
      if (*(v13 - 9) < 0)
      {
        operator delete(*(v13 - 4));
        if ((*(v13 - 41) & 0x80000000) == 0)
        {
LABEL_29:
          v25 = *(v13 - 20);
          if (v25 == -1)
          {
            goto LABEL_26;
          }

LABEL_33:
          (off_266BAC0[v25])(v29, v13 - 14);
          goto LABEL_26;
        }
      }

      else if ((*(v13 - 41) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      operator delete(*(v13 - 8));
      v25 = *(v13 - 20);
      if (v25 != -1)
      {
        goto LABEL_33;
      }

LABEL_26:
      *(v13 - 20) = -1;
      v13 -= 23;
      if (v13 == v8)
      {
        goto LABEL_34;
      }
    }
  }

  v14 = a2 + v13 - v8;
  if (v13 != v8)
  {
    do
    {
      *v8 = *v5;
      v15 = *(v5 + 16);
      v16 = *(v5 + 32);
      v17 = *(v5 + 48);
      *(v8 + 64) = *(v5 + 64);
      *(v8 + 2) = v16;
      *(v8 + 3) = v17;
      *(v8 + 1) = v15;
      sub_5410A0((v8 + 9), v5 + 72);
      v5 += 184;
      v8 += 23;
    }

    while (v5 != v14);
    v13 = a1[1];
  }

  v31 = v13;
  v32 = v13;
  v29[0] = a1;
  v29[1] = &v31;
  v29[2] = &v32;
  v18 = v13;
  v30 = 0;
  if (v14 != a3)
  {
    v18 = v13;
    do
    {
      *v18 = *v14;
      v19 = *(v14 + 16);
      v20 = *(v14 + 32);
      v21 = *(v14 + 48);
      *(v18 + 64) = *(v14 + 64);
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      *(v18 + 1) = v19;
      sub_55F1E8((v18 + 9), v14 + 72);
      v14 += 184;
      v18 = v32 + 23;
      v32 += 23;
    }

    while (v14 != a3);
  }

  a1[1] = v18;
}

void sub_5FD6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F34B0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FD6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F34B0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_5FD6D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (result == a2)
  {
    *(result + 32) = *(a2 + 32);
    *(result + 64) = *(a2 + 64);
    return result;
  }

  v4 = *(a2 + 31);
  if ((*(result + 31) & 0x80000000) == 0)
  {
    if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68((result + 8), *(a2 + 8), *(a2 + 16));
      *(v3 + 32) = *(a2 + 32);
      v6 = (a2 + 40);
      v7 = *(a2 + 63);
      if (*(v3 + 63) < 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *(result + 8) = v5;
      *(result + 32) = *(a2 + 32);
      v6 = (a2 + 40);
      v7 = *(a2 + 63);
      if (*(result + 63) < 0)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    if ((v7 & 0x80) != 0)
    {
      sub_13A68((v3 + 40), *(a2 + 40), *(a2 + 48));
      *(v3 + 64) = *(a2 + 64);
      v11 = (a2 + 72);
      v12 = *(a2 + 95);
      if (*(v3 + 95) < 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v10 = *v6;
      *(v3 + 56) = v6[2];
      *(v3 + 40) = v10;
      *(v3 + 64) = *(a2 + 64);
      v11 = (a2 + 72);
      v12 = *(a2 + 95);
      if (*(v3 + 95) < 0)
      {
        goto LABEL_29;
      }
    }

LABEL_25:
    if ((v12 & 0x80) != 0)
    {
      sub_13A68((v3 + 72), *(a2 + 72), *(a2 + 80));
    }

    else
    {
      v15 = *v11;
      *(v3 + 88) = v11[2];
      *(v3 + 72) = v15;
    }

    return v3;
  }

  if (v4 >= 0)
  {
    v8 = (a2 + 8);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v4 >= 0)
  {
    v9 = *(a2 + 31);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  sub_13B38(result + 8, v8, v9);
  *(v3 + 32) = *(a2 + 32);
  v6 = (a2 + 40);
  v7 = *(a2 + 63);
  if ((*(v3 + 63) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  if ((v7 & 0x80u) == 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = *(a2 + 40);
  }

  if ((v7 & 0x80u) == 0)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(a2 + 48);
  }

  sub_13B38(v3 + 40, v13, v14);
  *(v3 + 64) = *(a2 + 64);
  v11 = (a2 + 72);
  v12 = *(a2 + 95);
  if ((*(v3 + 95) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  if ((v12 & 0x80u) == 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(a2 + 72);
  }

  if ((v12 & 0x80u) == 0)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(a2 + 80);
  }

  sub_13B38(v3 + 72, v16, v17);
  return v3;
}

void sub_5FD8A0(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_5ED268(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x199999999999999)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xCCCCCCCCCCCCCCLL)
      {
        v12 = 0x199999999999999;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x199999999999999)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v8) >> 5) >= a4)
  {
    while (v5 != a3)
    {
      sub_52CB8C(v8, v5);
      v8[19] = *(v5 + 19);
      v5 += 10;
      v8 += 20;
    }

    sub_5ED268(a1, v8);
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        sub_52CB8C(v8, v5);
        v8[19] = *(v5 + 19);
        v5 += 10;
        v8 += 20;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v16 = v13;
    v15 = v13;
    if (v14 != a3)
    {
      v15 = v13;
      do
      {
        *(sub_5139E8(v15, v14) + 152) = *(v14 + 19);
        v14 += 10;
        v15 = (v16 + 20);
        v16 += 20;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v15;
  }
}

void sub_5FDB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F4318(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FDB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F4318(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

char *sub_5FDB48(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      *(result + 1) = *(v4 + 8);
      *(result + 4) = *(v4 + 16);
      v4 += 24;
      result += 24;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        *(result + 1) = *(v4 + 8);
        *(result + 4) = *(v4 + 16);
        v4 += 24;
        result += 24;
      }

      while (v4 != v13);
      v12 = *(a1 + 8);
    }

    v14 = v12;
    if (v13 != a3)
    {
      v14 = v12;
      v15 = v12;
      do
      {
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        v15 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v14;
  }

  return result;
}

uint64_t *sub_5FDD68(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAF8AF8AF8AF8AF8BLL * ((v7 - *result) >> 5) < a4)
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
          v10 = sub_5938B0((v10 - 140));
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

    if (a4 <= 0x3A83A83A83A83ALL)
    {
      v12 = 0xAF8AF8AF8AF8AF8BLL * (v7 >> 5);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x1D41D41D41D41DLL)
      {
        v14 = 0x3A83A83A83A83ALL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x3A83A83A83A83ALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xAF8AF8AF8AF8AF8BLL * ((v15 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5FE008(v8, v5);
        v5 += 1120;
        v8 += 1120;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 1120;
      result = sub_5938B0(v15);
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
        result = sub_5FE008(v8, v5);
        v5 += 1120;
        v8 += 1120;
        v16 -= 1120;
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
        result = sub_5F4D20(v15 + v19, v17 + v19);
        v19 += 1120;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5FDFDC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = (v3 - 1120);
    v7 = -v4;
    do
    {
      v6 = sub_5938B0(v6) - 140;
      v7 += 1120;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5FE008(uint64_t a1, uint64_t a2)
{
  sub_5F8954(a1, a2);
  v4 = *(a2 + 864);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 864) = v4;
  if (a1 != a2)
  {
    sub_596098((a1 + 872), *(a2 + 872), *(a2 + 880), (*(a2 + 880) - *(a2 + 872)) >> 2);
  }

  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  sub_5F9604(a1 + 912, a2 + 912);
  if (a1 == a2)
  {
    *(a1 + 1032) = *(a2 + 1032);
    *(a1 + 1040) = *(a2 + 1040);
  }

  else
  {
    sub_74300((a1 + 968), *(a2 + 968), *(a2 + 976), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 976) - *(a2 + 968)) >> 3));
    *(a1 + 1024) = *(a2 + 1024);
    sub_5FA69C(a1 + 992, *(a2 + 1008), 0);
    *(a1 + 1032) = *(a2 + 1032);
    *(a1 + 1040) = *(a2 + 1040);
    sub_74300((a1 + 1048), *(a2 + 1048), *(a2 + 1056), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1056) - *(a2 + 1048)) >> 3));
    *(a1 + 1104) = *(a2 + 1104);
    sub_5FA69C(a1 + 1072, *(a2 + 1088), 0);
  }

  *(a1 + 1112) = *(a2 + 1112);
  return a1;
}

uint64_t *sub_5FE12C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 6) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 6);
          if (v12)
          {
            *(v10 - 5) = v12;
            operator delete(v12);
          }

          v10 -= 56;
          sub_55D550(v10);
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

    if (a4 <= 0x92492492492492)
    {
      v17 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 6);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x49249249249249)
      {
        v19 = 0x92492492492492;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x92492492492492)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = result[1];
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 6) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5F9D98(v8, v5);
        *(v8 + 380) = *(v5 + 380);
        *(v8 + 384) = *(v5 + 384);
        *(v8 + 392) = *(v5 + 392);
        if (v8 != v5)
        {
          result = sub_5FE4B8((v8 + 400), *(v5 + 400), *(v5 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 408) - *(v5 + 400)) >> 2));
        }

        v16 = *(v5 + 424);
        *(v8 + 440) = *(v5 + 440);
        *(v8 + 424) = v16;
        v5 += 448;
        v8 += 448;
      }

      while (v5 != a3);
      v13 = v6[1];
    }

    while (v13 != v8)
    {
      v20 = *(v13 - 6);
      if (v20)
      {
        *(v13 - 5) = v20;
        operator delete(v20);
      }

      v13 -= 56;
      result = sub_55D550(v13);
    }

    v6[1] = v8;
  }

  else
  {
    v14 = v13 + a2 - v8;
    if (v13 != v8)
    {
      do
      {
        sub_5F9D98(v8, v5);
        *(v8 + 380) = *(v5 + 380);
        *(v8 + 384) = *(v5 + 384);
        *(v8 + 392) = *(v5 + 392);
        if (v8 != v5)
        {
          sub_5FE4B8((v8 + 400), *(v5 + 400), *(v5 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 408) - *(v5 + 400)) >> 2));
        }

        v15 = *(v5 + 424);
        *(v8 + 440) = *(v5 + 440);
        *(v8 + 424) = v15;
        v5 += 448;
        v8 += 448;
      }

      while (v5 != v14);
      v13 = v6[1];
    }

    v21 = v13;
    result = v13;
    if (v14 != a3)
    {
      result = v13;
      do
      {
        sub_5F51E0(result, v14);
        v14 += 448;
        result = v21 + 56;
        v21 += 56;
      }

      while (v14 != a3);
    }

    v6[1] = result;
  }

  return result;
}

void sub_5FE488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F52E4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FE4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F52E4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

char *sub_5FE4B8(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 3);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 3);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 3);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t *sub_5FE64C(uint64_t *result, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x77A04C8F8D28AC43 * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_5936E4(v10 - 107);
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

    if (a4 <= 0x4C8F8D28AC42FDLL)
    {
      v12 = 0x77A04C8F8D28AC43 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2647C69456217ELL)
      {
        v14 = 0x4C8F8D28AC42FDLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x4C8F8D28AC42FDLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x77A04C8F8D28AC43 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5F8954(v8, v5);
        v5 += 856;
        v8 += 856;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 107;
      result = sub_5936E4(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_5F8954(v8, v5);
        v5 += 856;
        v8 += 856;
        v16 -= 856;
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
        result = sub_5F4F00(&v15[v19], &v17[v19 * 8]);
        v19 += 107;
      }

      while (&v17[v19 * 8] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5FE8C0(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = (v3 - 856);
    v7 = -v4;
    do
    {
      v6 = sub_5936E4(v6) - 107;
      v7 += 856;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_5FE8EC(void **a1, char *a2, char *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xEF7BDEF7BDEF7BDFLL * ((v7 - *a1) >> 3) < a4)
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
          v12 = *(v10 - 26);
          if (v12)
          {
            *(v10 - 25) = v12;
            operator delete(v12);
          }

          v13 = v10 - 248;
          v14 = *(v10 - 31);
          if (v14)
          {
            *(v10 - 30) = v14;
            operator delete(v14);
          }

          v10 -= 248;
        }

        while (v13 != v8);
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

    if (a4 <= 0x108421084210842)
    {
      v40 = 0xEF7BDEF7BDEF7BDFLL * (v7 >> 3);
      v41 = 2 * v40;
      if (2 * v40 <= a4)
      {
        v41 = a4;
      }

      if (v40 >= 0x84210842108421)
      {
        v42 = 0x108421084210842;
      }

      else
      {
        v42 = v41;
      }

      if (v42 <= 0x108421084210842)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xEF7BDEF7BDEF7BDFLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v29 = 0;
      do
      {
        v39 = &v8[v29];
        if (a2 == v8)
        {
          *(v39 + 24) = *&a2[v29 + 24];
        }

        else
        {
          sub_30945C(&v8[v29], *&a2[v29], *&a2[v29 + 8], (*&a2[v29 + 8] - *&a2[v29]) >> 3);
          *(v39 + 24) = *&a2[v29 + 24];
          sub_596098(v39 + 5, *&a2[v29 + 40], *&a2[v29 + 48], (*&a2[v29 + 48] - *&a2[v29 + 40]) >> 2);
        }

        v30 = &v8[v29];
        *(v30 + 16) = *&a2[v29 + 64];
        v31 = *&a2[v29 + 72];
        v32 = *&a2[v29 + 88];
        *(v30 + 104) = *&a2[v29 + 104];
        *(v30 + 88) = v32;
        *(v30 + 72) = v31;
        v33 = *&a2[v29 + 120];
        v34 = *&a2[v29 + 136];
        v35 = *&a2[v29 + 152];
        *(v30 + 168) = *&a2[v29 + 168];
        *(v30 + 152) = v35;
        *(v30 + 136) = v34;
        *(v30 + 120) = v33;
        v36 = *&a2[v29 + 184];
        v37 = *&a2[v29 + 200];
        v38 = *&a2[v29 + 216];
        *(v30 + 230) = *&a2[v29 + 230];
        *(v30 + 216) = v38;
        *(v30 + 200) = v37;
        *(v30 + 184) = v36;
        v29 += 248;
      }

      while (&a2[v29] != a3);
      v15 = a1[1];
      v8 += v29;
    }

    if (v15 != v8)
    {
      do
      {
        v44 = *(v15 - 208);
        if (v44)
        {
          *(v15 - 200) = v44;
          operator delete(v44);
        }

        v45 = (v15 - 248);
        v46 = *(v15 - 248);
        if (v46)
        {
          *(v15 - 240) = v46;
          operator delete(v46);
        }

        v15 -= 248;
      }

      while (v45 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = &a2[v16];
    if (v15 != v8)
    {
      v18 = 0;
      do
      {
        v28 = &v8[v18];
        if (a2 == v8)
        {
          *(v28 + 24) = *&a2[v18 + 24];
        }

        else
        {
          sub_30945C(&v8[v18], *&a2[v18], *&a2[v18 + 8], (*&a2[v18 + 8] - *&a2[v18]) >> 3);
          *(v28 + 24) = *&a2[v18 + 24];
          sub_596098(v28 + 5, *&a2[v18 + 40], *&a2[v18 + 48], (*&a2[v18 + 48] - *&a2[v18 + 40]) >> 2);
        }

        v19 = &v8[v18];
        *(v19 + 16) = *&a2[v18 + 64];
        v20 = *&a2[v18 + 72];
        v21 = *&a2[v18 + 88];
        *(v19 + 104) = *&a2[v18 + 104];
        *(v19 + 88) = v21;
        *(v19 + 72) = v20;
        v22 = *&a2[v18 + 120];
        v23 = *&a2[v18 + 136];
        v24 = *&a2[v18 + 152];
        *(v19 + 168) = *&a2[v18 + 168];
        *(v19 + 152) = v24;
        *(v19 + 136) = v23;
        *(v19 + 120) = v22;
        v25 = *&a2[v18 + 184];
        v26 = *&a2[v18 + 200];
        v27 = *&a2[v18 + 216];
        *(v19 + 230) = *&a2[v18 + 230];
        *(v19 + 216) = v27;
        *(v19 + 200) = v26;
        *(v19 + 184) = v25;
        v18 += 248;
      }

      while (v16 != v18);
      v15 = a1[1];
    }

    v47 = v15;
    v43 = v15;
    if (v17 != a3)
    {
      v43 = v15;
      do
      {
        sub_5EF9A8(v43, v17);
        v17 += 248;
        v43 = v47 + 248;
        v47 += 248;
      }

      while (v17 != a3);
    }

    a1[1] = v43;
  }
}

void sub_5FED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F5698(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F5698(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FED44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = *(a1 + 8);
        do
        {
          v14 = *(v12 - 5);
          v12 -= 5;
          v13 = v14;
          if (v14)
          {
            *(v10 - 4) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v22 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
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
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v15 - v8) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_F54940(v8, v5);
        v5 += 40;
        v8 += 5;
      }

      while (v5 != a3);
      v15 = *(a1 + 8);
    }

    if (v15 != v8)
    {
      v19 = v15;
      do
      {
        v21 = *(v19 - 5);
        v19 -= 5;
        v20 = v21;
        if (v21)
        {
          *(v15 - 4) = v20;
          operator delete(v20);
        }

        v15 = v19;
      }

      while (v19 != v8);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        sub_F54940(v8, v5);
        v5 += 40;
        v8 += 5;
        v16 -= 40;
      }

      while (v16);
      v15 = *(a1 + 8);
    }

    v25 = v15;
    v18 = v15;
    if (v17 != a3)
    {
      v18 = v15;
      do
      {
        sub_F548B4(v18, v17);
        v17 += 40;
        v18 = (v25 + 5);
        v25 += 5;
      }

      while (v17 != a3);
    }

    *(a1 + 8) = v18;
  }
}

void sub_5FEFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4E6B1C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FEFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4E6B1C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FF000(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *a1;
  if (0x4FCACE213F2B3885 * ((v6 - *a1) >> 3) < a4)
  {
    if (v7)
    {
      v8 = a4;
      for (i = *(a1 + 8); i != v7; sub_5ECDEC(a1, i))
      {
        i -= 616;
      }

      *(a1 + 8) = v7;
      operator delete(*a1);
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v8;
    }

    if (a4 <= 0x6A63BD81A98EF6)
    {
      v14 = 0x4FCACE213F2B3885 * (v6 >> 3);
      v15 = 2 * v14;
      if (2 * v14 <= a4)
      {
        v15 = a4;
      }

      if (v14 >= 0x3531DEC0D4C77BLL)
      {
        v16 = 0x6A63BD81A98EF6;
      }

      else
      {
        v16 = v15;
      }

      if (v16 <= 0x6A63BD81A98EF6)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v10 = *(a1 + 8) - v7;
  if (0x4FCACE213F2B3885 * (v10 >> 3) >= a4)
  {
    sub_5FF27C(a2, a3, v7);
    v18 = v17;
    for (j = *(a1 + 8); j != v18; sub_5ECDEC(a1, j))
    {
      j -= 616;
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v11 = (a2 + v10);
    sub_5FF27C(a2, (a2 + v10), v7);
    v12 = *(a1 + 8);
    v20 = v12;
    if (v11 != a3)
    {
      v13 = *(a1 + 8);
      do
      {
        sub_571154(v13, v11);
        v11 = (v11 + 616);
        v13 = v20 + 616;
        v20 += 616;
      }

      while (v11 != a3);
      v12 = v13;
    }

    *(a1 + 8) = v12;
  }
}

void sub_5FF244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F59F8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FF264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F59F8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

__int128 *sub_5FF27C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v4 = a2;
  do
  {
    v7 = a3;
    v8 = *v3;
    v9 = v3[1];
    v10 = v3[2];
    *(a3 + 48) = *(v3 + 6);
    *(a3 + 16) = v9;
    *(a3 + 32) = v10;
    *a3 = v8;
    if (a3 != v3)
    {
      sub_31F64((a3 + 56), *(v3 + 7), *(v3 + 8), (*(v3 + 8) - *(v3 + 7)) >> 3);
    }

    v11 = *(v3 + 10);
    *(v7 + 88) = *(v3 + 22);
    *(v7 + 80) = v11;
    sub_594568(v7 + 96, (v3 + 6));
    sub_594568(v7 + 256, (v3 + 16));
    v12 = v3 + 26;
    sub_5410A0(v7 + 416, (v3 + 26));
    if (v7 != v3)
    {
      sub_31F64((v7 + 528), *(v3 + 66), *(v3 + 67), (*(v3 + 67) - *(v3 + 66)) >> 3);
      sub_5D8AE8((v7 + 552), *(v3 + 69), *(v3 + 70), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 70) - *(v3 + 69)) >> 3));
    }

    v5 = v3[36];
    v6 = v3[37];
    *(v7 + 608) = *(v3 + 76);
    *(v7 + 576) = v5;
    *(v7 + 592) = v6;
    v3 = (v3 + 616);
    a3 = v7 + 616;
  }

  while ((v12 + 200) != v4);
  return v4;
}

char *sub_5FF3AC(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
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

void sub_5FF53C(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 6)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v12 = *(v9 - 6);
          if (v12)
          {
            v13 = *(v9 - 5);
            v11 = *(v9 - 6);
            if (v13 != v12)
            {
              v14 = *(v9 - 5);
              do
              {
                v16 = *(v14 - 3);
                v14 -= 3;
                v15 = v16;
                if (v16)
                {
                  *(v13 - 2) = v15;
                  operator delete(v15);
                }

                v13 = v14;
              }

              while (v14 != v12);
              v11 = *(v9 - 6);
            }

            *(v9 - 5) = v12;
            operator delete(v11);
          }

          v9 -= 8;
        }

        while (v9 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 58))
    {
      v24 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v24 = a4;
      }

      v25 = v7 >= 0x7FFFFFFFFFFFFFC0;
      v26 = 0x3FFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v26 = v24;
      }

      if (!(v26 >> 58))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v17 = a1[1];
  if (a4 <= (v17 - v8) >> 6)
  {
    if (a2 != a3)
    {
      v22 = a2 + 24;
      do
      {
        v23 = v22 - 24;
        *v8 = *(v22 - 24);
        if (v8 != (v22 - 24))
        {
          sub_3532D0(v8 + 2, *(v22 - 8), *v22, 0xAAAAAAAAAAAAAAABLL * ((*v22 - *(v22 - 8)) >> 3));
        }

        *(v8 + 10) = *(v22 + 16);
        *(v8 + 3) = *(v22 + 24);
        v8 += 8;
        v22 += 64;
      }

      while (v23 + 64 != a3);
      v17 = a1[1];
    }

    while (v17 != v8)
    {
      v28 = *(v17 - 6);
      if (v28)
      {
        v29 = *(v17 - 5);
        v27 = *(v17 - 6);
        if (v29 != v28)
        {
          v30 = *(v17 - 5);
          do
          {
            v32 = *(v30 - 3);
            v30 -= 3;
            v31 = v32;
            if (v32)
            {
              *(v29 - 2) = v31;
              operator delete(v31);
            }

            v29 = v30;
          }

          while (v30 != v28);
          v27 = *(v17 - 6);
        }

        *(v17 - 5) = v28;
        operator delete(v27);
      }

      v17 -= 8;
    }

    a1[1] = v8;
  }

  else
  {
    v18 = a2 + v17 - v8;
    if (v17 != v8)
    {
      v19 = (v8 + 2);
      v20 = a2 + 24;
      do
      {
        v21 = v20 - 24;
        *(v19 - 1) = *(v20 - 24);
        if (v19 - 16 != (v20 - 24))
        {
          sub_3532D0(v19, *(v20 - 8), *v20, 0xAAAAAAAAAAAAAAABLL * ((*v20 - *(v20 - 8)) >> 3));
        }

        *(v19 + 6) = *(v20 + 16);
        *(v19 + 2) = *(v20 + 24);
        v19 += 64;
        v20 += 64;
      }

      while (v21 + 64 != v18);
    }

    sub_5F5C3C(a1, v18, a3);
  }
}

void sub_5FF834(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((v6 - *a1) >> 3) < a4)
  {
    if (v7)
    {
      v8 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v7)
      {
        do
        {
          v11 = v9 - 104;
          v32[0] = (v9 - 72);
          sub_5ECC44(v32);
          v9 = v11;
        }

        while (v11 != v7);
        v10 = *a1;
      }

      a1[1] = v7;
      operator delete(v10);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v8;
    }

    if (a4 <= 0x276276276276276)
    {
      v12 = 0x4EC4EC4EC4EC4EC5 * (v6 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x13B13B13B13B13BLL)
      {
        v14 = 0x276276276276276;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x276276276276276)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  if (0x4EC4EC4EC4EC4EC5 * ((v15 - v7) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v23 = a2 + 40;
      do
      {
        v26 = v23 - 40;
        v27 = *(v23 - 24);
        *v7 = *(v23 - 40);
        *(v7 + 1) = v27;
        if (v7 != (v23 - 40))
        {
          sub_5FD2CC(v7 + 4, *(v23 - 8), *v23, 0xD37A6F4DE9BD37A7 * ((*v23 - *(v23 - 8)) >> 3));
        }

        v24 = *(v23 + 16);
        v25 = *(v23 + 32);
        *(v7 + 81) = *(v23 + 41);
        *(v7 + 72) = v25;
        *(v7 + 56) = v24;
        v7 += 104;
        v23 += 104;
      }

      while (v26 + 104 != a3);
      v15 = a1[1];
    }

    for (; v15 != v7; v15 -= 104)
    {
      v32[0] = (v15 - 72);
      sub_5ECC44(v32);
    }

    a1[1] = v7;
  }

  else
  {
    v16 = a2 + v15 - v7;
    if (v15 != v7)
    {
      v17 = v7 + 32;
      v18 = a2 + 40;
      do
      {
        v21 = v18 - 40;
        v22 = *(v18 - 24);
        *(v17 - 2) = *(v18 - 40);
        *(v17 - 1) = v22;
        if (v17 - 32 != (v18 - 40))
        {
          sub_5FD2CC(v17, *(v18 - 8), *v18, 0xD37A6F4DE9BD37A7 * ((*v18 - *(v18 - 8)) >> 3));
        }

        v19 = *(v18 + 16);
        v20 = *(v18 + 32);
        *(v17 + 49) = *(v18 + 41);
        *(v17 + 40) = v20;
        *(v17 + 24) = v19;
        v17 += 104;
        v18 += 104;
      }

      while (v21 + 104 != v16);
      v15 = a1[1];
    }

    v34 = v15;
    v35 = v15;
    v32[0] = a1;
    v32[1] = &v34;
    v32[2] = &v35;
    v28 = v15;
    v33 = 0;
    if (v16 != a3)
    {
      v28 = v15;
      do
      {
        v29 = *(v16 + 16);
        *v28 = *v16;
        *(v28 + 1) = v29;
        *(v28 + 4) = 0;
        *(v28 + 5) = 0;
        *(v28 + 6) = 0;
        sub_5F3370((v28 + 32), *(v16 + 32), *(v16 + 40), 0xD37A6F4DE9BD37A7 * ((*(v16 + 40) - *(v16 + 32)) >> 3));
        v30 = *(v16 + 56);
        v31 = *(v16 + 72);
        *(v28 + 81) = *(v16 + 81);
        *(v28 + 72) = v31;
        *(v28 + 56) = v30;
        v16 += 104;
        v28 = v35 + 104;
        v35 += 104;
      }

      while (v16 != a3);
    }

    a1[1] = v28;
  }
}

void sub_5FFC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F6090(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FFC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F6090(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_5FFC40(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  if (a1 != a2)
  {
    sub_146EC((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  }

  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v7;
  v8 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v8;
  sub_3E428((a1 + 152), a2 + 152);
  v9 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v9;
  if (a1 != a2)
  {
    v10 = *(a2 + 215);
    if (*(a1 + 215) < 0)
    {
      if (v10 >= 0)
      {
        v15 = (a2 + 192);
      }

      else
      {
        v15 = *(a2 + 192);
      }

      if (v10 >= 0)
      {
        v16 = *(a2 + 215);
      }

      else
      {
        v16 = *(a2 + 200);
      }

      sub_13B38(a1 + 192, v15, v16);
      v12 = (a2 + 216);
      v13 = *(a2 + 239);
      if (*(a1 + 239) < 0)
      {
LABEL_20:
        if ((v13 & 0x80u) == 0)
        {
          v20 = v12;
        }

        else
        {
          v20 = *(a2 + 216);
        }

        if ((v13 & 0x80u) == 0)
        {
          v21 = v13;
        }

        else
        {
          v21 = *(a2 + 224);
        }

        sub_13B38(a1 + 216, v20, v21);
        v18 = (a2 + 240);
        v19 = *(a2 + 263);
        if ((*(a1 + 263) & 0x80000000) == 0)
        {
LABEL_27:
          if ((v19 & 0x80) != 0)
          {
            sub_13A68((a1 + 240), *(a2 + 240), *(a2 + 248));
            v23 = a1 + 264;
            v24 = (a2 + 264);
            v25 = *(a2 + 287);
            if (*(a1 + 287) < 0)
            {
LABEL_41:
              if ((v25 & 0x80u) == 0)
              {
                v29 = v24;
              }

              else
              {
                v29 = *(a2 + 264);
              }

              if ((v25 & 0x80u) == 0)
              {
                v30 = v25;
              }

              else
              {
                v30 = *(a2 + 272);
              }

              sub_13B38(v23, v29, v30);
              goto LABEL_49;
            }
          }

          else
          {
            v22 = *v18;
            *(a1 + 256) = v18[2];
            *(a1 + 240) = v22;
            v23 = a1 + 264;
            v24 = (a2 + 264);
            v25 = *(a2 + 287);
            if (*(a1 + 287) < 0)
            {
              goto LABEL_41;
            }
          }

LABEL_38:
          if ((v25 & 0x80) != 0)
          {
            sub_13A68(v23, *(a2 + 264), *(a2 + 272));
          }

          else
          {
            v28 = *v24;
            *(v23 + 16) = v24[2];
            *v23 = v28;
          }

LABEL_49:
          *(a1 + 288) = *(a2 + 288);
          v31 = *(a2 + 304);
          *(a1 + 296) = *(a2 + 296);
          *(a1 + 304) = v31;
          sub_5FFF64((a1 + 312), *(a2 + 312), *(a2 + 320), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 320) - *(a2 + 312)) >> 4));
          sub_4D8010((a1 + 336), *(a2 + 336), *(a2 + 344), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 344) - *(a2 + 336)) >> 3));
          sub_516FFC((a1 + 360), *(a2 + 360), *(a2 + 368), 0x8E38E38E38E38E39 * ((*(a2 + 368) - *(a2 + 360)) >> 3));
          *(a1 + 384) = *(a2 + 384);
          sub_3532D0((a1 + 400), *(a2 + 400), *(a2 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 408) - *(a2 + 400)) >> 3));
          goto LABEL_50;
        }

LABEL_31:
        if ((v19 & 0x80u) == 0)
        {
          v26 = v18;
        }

        else
        {
          v26 = *(a2 + 240);
        }

        if ((v19 & 0x80u) == 0)
        {
          v27 = v19;
        }

        else
        {
          v27 = *(a2 + 248);
        }

        sub_13B38(a1 + 240, v26, v27);
        v23 = a1 + 264;
        v24 = (a2 + 264);
        v25 = *(a2 + 287);
        if (*(a1 + 287) < 0)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }
    }

    else if ((*(a2 + 215) & 0x80) != 0)
    {
      sub_13A68((a1 + 192), *(a2 + 192), *(a2 + 200));
      v12 = (a2 + 216);
      v13 = *(a2 + 239);
      if (*(a1 + 239) < 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 192) = v11;
      v12 = (a2 + 216);
      v13 = *(a2 + 239);
      if (*(a1 + 239) < 0)
      {
        goto LABEL_20;
      }
    }

    if ((v13 & 0x80) != 0)
    {
      sub_13A68((a1 + 216), *(a2 + 216), *(a2 + 224));
      v18 = (a2 + 240);
      v19 = *(a2 + 263);
      if ((*(a1 + 263) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *v12;
      *(a1 + 232) = v12[2];
      *(a1 + 216) = v17;
      v18 = (a2 + 240);
      v19 = *(a2 + 263);
      if ((*(a1 + 263) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_31;
  }

  *(a1 + 288) = *(a2 + 288);
  v14 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v14;
  *(a1 + 384) = *(a2 + 384);
LABEL_50:
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  return a1;
}

void sub_5FFF64(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 3);
          if (v11)
          {
            operator delete(v11);
          }

          v12 = *(v9 - 13);
          if (v12)
          {
            *(v9 - 12) = v12;
            operator delete(v12);
          }

          v9 -= 176;
        }

        while (v9 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1745D1745D1745DLL)
    {
      v30 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 4);
      v31 = 2 * v30;
      if (2 * v30 <= a4)
      {
        v31 = a4;
      }

      if (v30 >= 0xBA2E8BA2E8BA2ELL)
      {
        v32 = 0x1745D1745D1745DLL;
      }

      else
      {
        v32 = v31;
      }

      if (v32 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  if (0x2E8BA2E8BA2E8BA3 * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v23 = a2 + 80;
      do
      {
        v26 = v23 - 80;
        *v8 = *(v23 - 80);
        v27 = *(v23 - 64);
        v28 = *(v23 - 48);
        v29 = *(v23 - 32);
        *(v8 + 63) = *(v23 - 17);
        *(v8 + 2) = v28;
        *(v8 + 3) = v29;
        *(v8 + 1) = v27;
        if (v8 != (v23 - 80))
        {
          sub_146EC(v8 + 9, *(v23 - 8), *v23, (*v23 - *(v23 - 8)) >> 2);
        }

        v24 = *(v23 + 16);
        v8[112] = *(v23 + 32);
        *(v8 + 6) = v24;
        v25 = *(v23 + 40);
        *(v8 + 136) = *(v23 + 56);
        *(v8 + 120) = v25;
        sub_3E428(v8 + 19, v23 + 72);
        v8 += 176;
        v23 += 176;
      }

      while (v26 + 176 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v33 = *(v13 - 3);
      if (v33)
      {
        operator delete(v33);
      }

      v34 = *(v13 - 13);
      if (v34)
      {
        *(v13 - 12) = v34;
        operator delete(v34);
      }

      v13 -= 176;
    }

    a1[1] = v8;
  }

  else
  {
    v14 = a2 + v13 - v8;
    if (v13 != v8)
    {
      v15 = v8 + 72;
      v16 = a2 + 80;
      do
      {
        v19 = v16 - 80;
        *(v15 - 72) = *(v16 - 80);
        v20 = *(v16 - 64);
        v21 = *(v16 - 48);
        v22 = *(v16 - 32);
        *(v15 - 9) = *(v16 - 17);
        *(v15 - 24) = v22;
        *(v15 - 40) = v21;
        *(v15 - 56) = v20;
        if (v15 - 72 != (v16 - 80))
        {
          sub_146EC(v15, *(v16 - 8), *v16, (*v16 - *(v16 - 8)) >> 2);
        }

        v17 = *(v16 + 16);
        v15[40] = *(v16 + 32);
        *(v15 + 24) = v17;
        v18 = *(v16 + 40);
        *(v15 + 4) = *(v16 + 56);
        *(v15 + 3) = v18;
        sub_3E428(v15 + 10, v16 + 72);
        v15 += 176;
        v16 += 176;
      }

      while (v19 + 176 != v14);
    }

    sub_5F62A0(a1, v14, a3);
  }
}

uint64_t sub_6002A4(uint64_t result, _OWORD *a2, _OWORD *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = *(result + 16);
  v8 = *result;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(result + 8);
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = v10 - 176;
          sub_53A868((v10 - 160));
          v10 = v12;
        }

        while (v12 != v8);
        v11 = *v6;
      }

      *(v6 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x1745D1745D1745DLL)
    {
      v13 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 4);
      v14 = 2 * v13;
      if (2 * v13 <= a4)
      {
        v14 = a4;
      }

      if (v13 >= 0xBA2E8BA2E8BA2ELL)
      {
        v15 = 0x1745D1745D1745DLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v16 = *(result + 8);
  if (0x2E8BA2E8BA2E8BA3 * ((v16 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        result = sub_594568((v8 + 16), (v5 + 1));
        v8 += 176;
        v5 += 11;
      }

      while (v5 != a3);
      v16 = *(v6 + 8);
    }

    for (; v16 != v8; v16 -= 176)
    {
      result = sub_53A868((v16 - 160));
    }

    *(v6 + 8) = v8;
  }

  else
  {
    v17 = (a2 + v16 - v8);
    if (v16 != v8)
    {
      do
      {
        *v8 = *v5;
        result = sub_594568((v8 + 16), (v5 + 1));
        v5 += 11;
        v8 += 176;
      }

      while (v5 != v17);
      v16 = *(v6 + 8);
    }

    v18 = v16;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        *&v16[v19 * 16] = v17[v19];
        result = sub_55BD50(&v16[v19 * 16 + 16], &v17[v19 + 1]);
        v19 += 11;
      }

      while (&v17[v19] != a3);
      v18 = &v16[v19 * 16];
    }

    *(v6 + 8) = v18;
  }

  return result;
}

void sub_60054C(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v6 = -v3;
    v7 = v4 - 160;
    do
    {
      v7 = sub_53A868(v7) - 176;
      v6 += 176;
    }

    while (v6);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

char *sub_600578(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 4) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 4);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_60070C(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x4FCACE213F2B3885 * ((v7 - *a1) >> 3) < a4)
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
          v10 -= 616;
          sub_5C2320(v10);
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

    if (a4 <= 0x6A63BD81A98EF6)
    {
      v12 = 0x4FCACE213F2B3885 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x3531DEC0D4C77BLL)
      {
        v14 = 0x6A63BD81A98EF6;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x6A63BD81A98EF6)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  if (0x4FCACE213F2B3885 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        sub_5410A0((v8 + 16), v5 + 16);
        *(v8 + 32) = *(v5 + 128);
        sub_594568((v8 + 136), v5 + 136);
        sub_594568((v8 + 296), v5 + 296);
        sub_594568((v8 + 456), v5 + 456);
        v8 += 616;
        v5 += 616;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 -= 616;
      sub_5C2320(v15);
    }

    a1[1] = v8;
  }

  else
  {
    v16 = a2 + v15 - v8;
    if (v15 != v8)
    {
      do
      {
        *v8 = *v5;
        sub_5410A0((v8 + 16), v5 + 16);
        *(v8 + 32) = *(v5 + 128);
        sub_594568((v8 + 136), v5 + 136);
        sub_594568((v8 + 296), v5 + 296);
        sub_594568((v8 + 456), v5 + 456);
        v5 += 616;
        v8 += 616;
      }

      while (v5 != v16);
      v15 = a1[1];
    }

    v17 = v15;
    if (v16 != a3)
    {
      v18 = 0;
      do
      {
        sub_5F6904(v15 + v18, v16 + v18);
        v18 += 616;
      }

      while (v16 + v18 != a3);
      v17 = v15 + v18;
    }

    a1[1] = v17;
  }
}

_BYTE *sub_600A2C(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
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

  v12 = *(a1 + 8);
  if (a4 <= (v12 - result) >> 4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      result[8] = *(v4 + 8);
      v4 += 16;
      result += 16;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        result[8] = *(v4 + 8);
        v4 += 16;
        result += 16;
      }

      while (v4 != v13);
      v12 = *(a1 + 8);
    }

    v14 = v12;
    if (v13 != a3)
    {
      v14 = v12;
      v15 = v12;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v14;
  }

  return result;
}

void sub_600BE8(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) < a4)
  {
    if (v7)
    {
      v8 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v7)
      {
        do
        {
          v11 = *(v9 - 5);
          if (v11)
          {
            *(v9 - 4) = v11;
            operator delete(v11);
          }

          v9 -= 6;
        }

        while (v9 != v7);
        v10 = *a1;
      }

      a1[1] = v7;
      operator delete(v10);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v8;
    }

    if (a4 <= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x2AAAAAAAAAAAAAALL)
      {
        v23 = 0x555555555555555;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v7) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v18 = a2 + 16;
      do
      {
        v20 = v18 - 16;
        *v7 = *(v18 - 16);
        if (v7 != (v18 - 16))
        {
          sub_35354C(v7 + 1, *(v18 - 8), *v18, 0xAAAAAAAAAAAAAAABLL * ((*v18 - *(v18 - 8)) >> 2));
        }

        v19 = *(v18 + 16);
        *(v7 + 10) = *(v18 + 24);
        v7[4] = v19;
        v7 += 6;
        v18 += 48;
      }

      while (v20 + 48 != a3);
      v12 = a1[1];
    }

    while (v12 != v7)
    {
      v24 = *(v12 - 40);
      if (v24)
      {
        *(v12 - 32) = v24;
        operator delete(v24);
      }

      v12 -= 48;
    }

    a1[1] = v7;
  }

  else
  {
    v13 = a2 + v12 - v7;
    if (v12 != v7)
    {
      v14 = (v7 + 1);
      v15 = a2 + 16;
      do
      {
        v17 = v15 - 16;
        *(v14 - 2) = *(v15 - 16);
        if (v14 - 8 != (v15 - 16))
        {
          sub_35354C(v14, *(v15 - 8), *v15, 0xAAAAAAAAAAAAAAABLL * ((*v15 - *(v15 - 8)) >> 2));
        }

        v16 = *(v15 + 16);
        *(v14 + 8) = *(v15 + 24);
        *(v14 + 3) = v16;
        v14 += 48;
        v15 += 48;
      }

      while (v17 + 48 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_5F6C24(a1, v13, a3, v12);
  }
}

void sub_600EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        *(v7 + 4) = *(a2 + 4);
        *(v7 + 6) = *(a2 + 6);
        if (v7 != a2)
        {
          sub_35354C(v7 + 4, a2[4], a2[5], 0xAAAAAAAAAAAAAAABLL * ((a2[5] - a2[4]) >> 2));
        }

        v8 = a2[7];
        *(v7 + 16) = *(a2 + 16);
        v7[7] = v8;
        v9 = *v7;
        sub_601004(a1, v7);
        a2 = *a2;
        v7 = v9;
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      do
      {
        v10 = *v7;
        v11 = v7[4];
        if (v11)
        {
          v7[5] = v11;
          operator delete(v11);
        }

        operator delete(v7);
        v7 = v10;
      }

      while (v10);
    }
  }

LABEL_12:
  if (a2 != a3)
  {
    sub_601134();
  }
}

void sub_600FC0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_5EC928(v1, v2);
  __cxa_rethrow();
}

void sub_600FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_601004(uint64_t *a1, unsigned __int8 *a2)
{
  v5 = a2 + 16;
  v4 = a2[16];
  *(v5 - 1) = v4;
  v6 = sub_13EC4(a1, v4, v5);
  v7 = a1[1];
  v8 = *(v5 - 1);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  if (v6)
  {
    *a2 = *v6;
    *v6 = a2;
    if (*a2)
    {
      v10 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v10 >= *&v7)
        {
          v10 %= *&v7;
        }
      }

      else
      {
        v10 &= *&v7 - 1;
      }

      if (v10 != v8)
      {
        v13 = (*a1 + 8 * v10);
LABEL_19:
        *v13 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v11 = *a1;
    *(*a1 + 8 * v8) = a1 + 2;
    if (*a2)
    {
      v12 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      v13 = (v11 + 8 * v12);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

void sub_601240(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v5;
    operator delete(v5);
  }

  sub_5F72B0(v1);
  _Unwind_Resume(a1);
}

void sub_601264(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[2] = a2[2];
        *(v7 + 6) = *(a2 + 6);
        v8 = *v7;
        sub_6013A4(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_60135C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_6013A4(uint64_t *a1, void *a2)
{
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = sub_6014D4(a1, v4, v5);
  v7 = a1[1];
  v8 = *(v5 - 1);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  if (v6)
  {
    *a2 = *v6;
    *v6 = a2;
    if (*a2)
    {
      v10 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v10 >= *&v7)
        {
          v10 %= *&v7;
        }
      }

      else
      {
        v10 &= *&v7 - 1;
      }

      if (v10 != v8)
      {
        v13 = (*a1 + 8 * v10);
LABEL_19:
        *v13 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v11 = *a1;
    *(*a1 + 8 * v8) = a1 + 2;
    if (*a2)
    {
      v12 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      v13 = (v11 + 8 * v12);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

void *sub_6014D4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v17 = 1;
  if (v6 >= 3)
  {
    v17 = (v6 & (v6 - 1)) != 0;
  }

  v18 = v17 | (2 * v6);
  v19 = vcvtps_u32_f32(v7 / v8);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_22;
  }

  if (prime < v6)
  {
    v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
    {
      v24 = prime;
      v25 = std::__next_prime(v21);
      if (v24 <= v25)
      {
        prime = v25;
      }

      else
      {
        prime = v24;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = 1 << -__clz(v21 - 1);
      if (v21 >= 2)
      {
        v21 = v23;
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

LABEL_22:
    sub_601754(a1, prime);
  }

LABEL_38:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v16 = v10[1];
      if ((v16 & v9) != (v9 & a2))
      {
        break;
      }

      v12 = v16 == a2 && v10[2] == *a3;
      v13 = v12 != (v11 & 1);
      v14 = v11 & v13;
      v11 |= v13;
    }

    while ((v14 & 1) == 0);
    return result;
  }

LABEL_39:
  v26 = a2;
  if (v6 <= a2)
  {
    v26 = a2 % v6;
  }

  v27 = *(*a1 + 8 * v26);
  if (!v27)
  {
    return 0;
  }

  v28 = 0;
  do
  {
    result = v27;
    v27 = *v27;
    if (!v27)
    {
      break;
    }

    v32 = v27[1];
    v33 = v32;
    if (v32 >= v6)
    {
      v33 = v32 % v6;
    }

    if (v33 != v26)
    {
      break;
    }

    v29 = v32 == a2 && v27[2] == *a3;
    v30 = v29 != (v28 & 1);
    v31 = v28 & v30;
    v28 |= v30;
  }

  while (v31 != 1);
  return result;
}

void sub_601754(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_601910(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[2] = a2[2];
        *(v7 + 6) = *(a2 + 6);
        v8 = *v7;
        sub_6013A4(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_601A08(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_601A50(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 176;
          sub_5C17B4(v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1745D1745D1745DLL)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 4);
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

  v15 = a1[1];
  v16 = v15 - v9;
  if (0x2E8BA2E8BA2E8BA3 * ((v15 - v9) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_52CB8C(v9, v6);
        if (v6 != v9)
        {
          sub_3865E0(v9 + 19, *(v6 + 152), *(v6 + 160), (*(v6 + 160) - *(v6 + 152)) >> 4);
        }

        v6 += 176;
        v9 += 22;
      }

      while (v6 != a3);
      v15 = a1[1];
    }

    while (v15 != v9)
    {
      v15 -= 176;
      sub_5C17B4(v15);
    }

    a1[1] = v9;
  }

  else
  {
    if (v15 != v9)
    {
      v17 = v15 - v9;
      v18 = a2;
      do
      {
        sub_52CB8C(v9, v18);
        if (v18 != v9)
        {
          sub_3865E0(v9 + 19, *(v18 + 152), *(v18 + 160), (*(v18 + 160) - *(v18 + 152)) >> 4);
        }

        v18 += 176;
        v9 += 22;
        v17 -= 176;
      }

      while (v17);
    }

    sub_5F4034(a1, v6 + v16, a3);
  }
}

void sub_601CBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x7E3F1F8FC7E3F1F9 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      for (i = *(a1 + 8); i != v8; sub_5EC268(a1, i))
      {
        i -= 1168;
      }

      *(a1 + 8) = v8;
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x381C0E070381C0)
    {
      v19 = 0x7E3F1F8FC7E3F1F9 * (v7 >> 4);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x1C0E070381C0E0)
      {
        v21 = 0x381C0E070381C0;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0x381C0E070381C0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = *(a1 + 8) - v8;
  if (0x7E3F1F8FC7E3F1F9 * (v11 >> 4) >= a4)
  {
    sub_602078(a2, a3, v8);
    v23 = v22;
    for (j = *(a1 + 8); j != v23; sub_5EC268(a1, j))
    {
      j -= 1168;
    }

    *(a1 + 8) = v23;
  }

  else
  {
    v12 = a2 + v11;
    sub_602078(a2, a2 + v11, v8);
    v13 = *(a1 + 8);
    v25 = v13;
    if (v12 != a3)
    {
      v14 = v11 + a2 + 16;
      v15 = *(a1 + 8);
      do
      {
        v17 = v14 - 16;
        *v15 = *(v14 - 16);
        *(v15 + 8) = *(v14 - 8);
        *(v15 + 16) = 0;
        *(v15 + 1136) = 0;
        v18 = v15;
        if (*(v14 + 1120) == 1)
        {
          sub_52B7D8(v15 + 16, v14);
          *(v15 + 1136) = 1;
          v18 = v25;
        }

        v16 = *(v14 + 1128);
        *(v15 + 1159) = *(v14 + 1143);
        *(v15 + 1144) = v16;
        v15 = v18 + 1168;
        v25 = v18 + 1168;
        v14 += 1168;
      }

      while (v17 + 1168 != a3);
      v13 = v18 + 1168;
    }

    *(a1 + 8) = v13;
  }
}

void sub_601FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EC394(v10);
  sub_602010(&a9);
  *(v9 + 8) = v11;
  _Unwind_Resume(a1);
}

void sub_601FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EC394(v11);
  sub_602010(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_602010(uint64_t a1)
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
        v4 -= 1168;
        sub_5EC268(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_602078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a2;
    for (i = 0; ; i += 1168)
    {
      v9 = a1 + i;
      v10 = a3 + i;
      *v10 = *(a1 + i);
      *(v10 + 8) = *(a1 + i + 8);
      if (*(a3 + i + 1136) == *(a1 + i + 1136))
      {
        if (*(a3 + i + 1136))
        {
          sub_52C990(v10 + 16, v9 + 16);
        }

        goto LABEL_4;
      }

      if (!*(a3 + i + 1136))
      {
        sub_52B7D8(v10 + 16, v9 + 16);
        *(v10 + 1136) = 1;
        goto LABEL_4;
      }

      v11 = a3 + i;
      sub_529324(a3 + i + 760);
      *(a3 + i + 720) = off_26696C8;
      if (*(a3 + i + 751) < 0)
      {
        operator delete(*(v11 + 728));
        if ((*(v11 + 671) & 0x80000000) == 0)
        {
LABEL_11:
          v12 = a3 + i;
          if ((*(a3 + i + 639) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_20;
        }
      }

      else if ((*(v11 + 671) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(*(a3 + i + 648));
      v12 = a3 + i;
      if ((*(a3 + i + 639) & 0x80000000) == 0)
      {
LABEL_12:
        if ((*(v12 + 615) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }

LABEL_20:
      operator delete(*(v12 + 616));
      if ((*(v12 + 615) & 0x80000000) == 0)
      {
LABEL_13:
        v13 = a3 + i;
        if ((*(a3 + i + 575) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_22;
      }

LABEL_21:
      operator delete(*(a3 + i + 592));
      v13 = a3 + i;
      if ((*(a3 + i + 575) & 0x80000000) == 0)
      {
LABEL_14:
        if ((*(v13 + 543) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(*(v13 + 552));
      if ((*(v13 + 543) & 0x80000000) == 0)
      {
LABEL_15:
        v14 = a3 + i;
        if (*(a3 + i + 519) < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_3;
      }

LABEL_23:
      operator delete(*(v11 + 520));
      v14 = a3 + i;
      if (*(a3 + i + 519) < 0)
      {
LABEL_24:
        operator delete(*(v14 + 496));
      }

LABEL_3:
      sub_2C0F28(v10 + 16);
      *(v10 + 1136) = 0;
LABEL_4:
      v7 = a3 + i + 1144;
      v8 = *(v9 + 1144);
      *(v7 + 15) = *(v9 + 1159);
      *v7 = v8;
      if (v9 + 1168 == v5)
      {
        return v5;
      }
    }
  }

  return a1;
}

uint64_t sub_60226C(uint64_t a1, uint64_t a2)
{
  sub_594568(a1, a2);
  *(a1 + 160) = *(a2 + 160);
  if (a1 == a2)
  {
    sub_594568(a1 + 192, a2 + 192);
    sub_5410A0(a1 + 352, a2 + 352);
  }

  else
  {
    sub_6025E0((a1 + 168), *(a2 + 168), *(a2 + 176), 0x8F5C28F5C28F5C29 * ((*(a2 + 176) - *(a2 + 168)) >> 5));
    sub_594568(a1 + 192, a2 + 192);
    sub_5410A0(a1 + 352, a2 + 352);
    sub_74300((a1 + 464), *(a2 + 464), *(a2 + 472), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 472) - *(a2 + 464)) >> 3));
  }

  *(a1 + 488) = *(a2 + 488);
  return a1;
}

uint64_t *sub_602340(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xEF7BDEF7BDEF7BDFLL * ((v7 - *result) >> 4) < a4)
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
          v10 = sub_55A8B4(v10 - 496);
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

    if (a4 <= 0x84210842108421)
    {
      v12 = 0xEF7BDEF7BDEF7BDFLL * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x42108421084210)
      {
        v14 = 0x84210842108421;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x84210842108421)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xEF7BDEF7BDEF7BDFLL * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_60226C(v8, v5);
        v5 += 496;
        v8 += 496;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 496;
      result = sub_55A8B4(v15);
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
        result = sub_60226C(v8, v5);
        v5 += 496;
        v8 += 496;
        v16 -= 496;
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
        result = sub_5F4668((v15 + v19), v17 + v19);
        v19 += 496;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_6025B4(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 496;
    v7 = -v4;
    do
    {
      v6 = sub_55A8B4(v6) - 496;
      v7 += 496;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_6025E0(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x8F5C28F5C28F5C29 * ((v7 - *a1) >> 5) < a4)
  {
    if (v8)
    {
      v35 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 3);
          if (v11)
          {
            v12 = *(v9 - 2);
            v13 = *(v9 - 3);
            if (v12 != v11)
            {
              do
              {
                v14 = *(v12 - 1);
                v12 -= 3;
                if (v14 < 0)
                {
                  operator delete(*v12);
                }
              }

              while (v12 != v11);
              v13 = *(v9 - 3);
            }

            *(v9 - 2) = v11;
            operator delete(v13);
          }

          v15 = v9 - 100;
          v16 = *(v9 - 8);
          if (v16 != -1)
          {
            (off_266BAF8[v16])(&v36, v9 - 100);
          }

          *(v9 - 8) = -1;
          v9 -= 100;
        }

        while (v15 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v35;
    }

    if (a4 <= 0x51EB851EB851EBLL)
    {
      v26 = 0x8F5C28F5C28F5C29 * (v7 >> 5);
      v27 = 2 * v26;
      if (2 * v26 <= a4)
      {
        v27 = a4;
      }

      if (v26 >= 0x28F5C28F5C28F5)
      {
        v28 = 0x51EB851EB851EBLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28 <= 0x51EB851EB851EBLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v17 = a1[1];
  v18 = v17 - v8;
  if (0x8F5C28F5C28F5C29 * ((v17 - v8) >> 5) >= a4)
  {
    if (a2 == a3)
    {
LABEL_50:
      if (v17 != v8)
      {
        do
        {
          v29 = *(v17 - 24);
          if (v29)
          {
            v30 = *(v17 - 16);
            v31 = *(v17 - 24);
            if (v30 != v29)
            {
              do
              {
                v32 = *(v30 - 1);
                v30 -= 3;
                if (v32 < 0)
                {
                  operator delete(*v30);
                }
              }

              while (v30 != v29);
              v31 = *(v17 - 24);
            }

            *(v17 - 16) = v29;
            operator delete(v31);
          }

          v33 = v17 - 800;
          v34 = *(v17 - 32);
          if (v34 != -1)
          {
            (off_266BAF8[v34])(&v36, v17 - 800);
          }

          *(v17 - 32) = -1;
          v17 -= 800;
        }

        while (v33 != v8);
      }

      a1[1] = v8;
      return;
    }

    v23 = v8 + 97;
    while (1)
    {
      v24 = *(v23 - 2);
      v25 = *(v5 + 768);
      if (v24 == -1)
      {
        if (v25 != -1)
        {
LABEL_34:
          v36 = v23 - 97;
          (off_266BC18[v25])(&v36, v23 - 97, v5);
        }
      }

      else
      {
        if (v25 != -1)
        {
          goto LABEL_34;
        }

        (off_266BAF8[v24])(&v36, v23 - 97);
        *(v23 - 2) = -1;
      }

      if (v5 != v23 - 97)
      {
        sub_74300(v23, *(v5 + 776), *(v5 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 784) - *(v5 + 776)) >> 3));
      }

      v5 += 800;
      v23 += 100;
      if (v5 == a3)
      {
        v17 = a1[1];
        v8 = v23 - 97;
        goto LABEL_50;
      }
    }
  }

  if (v17 == v8)
  {
    goto LABEL_48;
  }

  v19 = 0;
  do
  {
    v20 = &v8[v19 / 8];
    v21 = LODWORD(v8[v19 / 8 + 96]);
    v22 = *(v5 + v19 + 768);
    if (v21 == -1)
    {
      if (v22 == -1)
      {
        goto LABEL_25;
      }
    }

    else if (v22 == -1)
    {
      (off_266BAF8[v21])(&v36, &v8[v19 / 8]);
      *(v20 + 192) = -1;
      goto LABEL_25;
    }

    v36 = &v8[v19 / 8];
    (off_266BC18[v22])(&v36, &v8[v19 / 8], v5 + v19);
LABEL_25:
    if ((v5 + v19) != v20)
    {
      sub_74300(&v8[v19 / 8 + 97], *(v5 + v19 + 776), *(v5 + v19 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + v19 + 784) - *(v5 + v19 + 776)) >> 3));
    }

    v19 += 800;
  }

  while (v18 != v19);
  v17 = a1[1];
LABEL_48:
  a1[1] = sub_5F4818(a1, v5 + v18, a3, v17);
}

uint64_t sub_602A1C(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 768);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_266BAF8[v2])(&v3, v1);
  }

  *(v1 + 768) = 0;
  return result;
}

uint64_t sub_602A84(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 768);
  if (v4 != -1)
  {
    if (v4 == 3)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266BAF8[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 768) = 3;
  return result;
}

_BYTE *sub_602B0C(_BYTE *result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 192);
  if (v3 != 1)
  {
    v6 = result;
    if (*(a3 + 23) < 0)
    {
      result = sub_325C(&v11, *a3, *(a3 + 1));
      v3 = *(v6 + 768);
      if (v3 == -1)
      {
LABEL_12:
        *v6 = v11;
        *(v6 + 16) = v12;
        *(v6 + 768) = 1;
        return result;
      }
    }

    else
    {
      v11 = *a3;
      v12 = *(a3 + 2);
      if (v3 == -1)
      {
        goto LABEL_12;
      }
    }

    result = (off_266BAF8[v3])(&v13, v6);
    goto LABEL_12;
  }

  if (a2 != a3)
  {
    v4 = *(a3 + 23);
    if (*(a2 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      if (v4 >= 0)
      {
        v8 = *(a3 + 23);
      }

      else
      {
        v8 = *(a3 + 1);
      }

      return sub_13B38(a2, v7, v8);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v10 = *a3;
      v9 = *(a3 + 1);

      return sub_13A68(a2, v10, v9);
    }

    else
    {
      v5 = *a3;
      *(a2 + 16) = *(a3 + 2);
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_602C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 768) == 2)
  {
    sub_594568(a2, a3);
    sub_594568(a2 + 160, a3 + 160);
    sub_5410A0(a2 + 320, a3 + 320);
    sub_594568(a2 + 432, a3 + 432);
    result = sub_594568(a2 + 592, a3 + 592);
    *(a2 + 752) = *(a3 + 752);
    return result;
  }

  sub_55BC9C(v9, a3);
  v7 = *(a1 + 768);
  if (v7 != -1)
  {
    (off_266BAF8[v7])(&v19, a1);
  }

  *(a1 + 768) = -1;
  sub_55B2F8(a1, v9);
  *(a1 + 768) = 2;
  sub_53A868(&v18);
  sub_53A868(&v17);
  if (v16 < 0)
  {
    operator delete(__p);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_7:
      v8 = v12;
      if (v12 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v13);
  v8 = v12;
  if (v12 != -1)
  {
LABEL_11:
    (off_266BAC0[v8])(&v19, &v11);
  }

LABEL_12:
  v12 = -1;
  sub_53A868(&v10);
  return sub_53A868(v9);
}

char *sub_602DCC(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v6 >> 4;
      if (v6 >> 4 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v11 = 0x7FFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 5)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 4);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void **sub_602F2C(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x70913F8BCD29C245 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = v10 - 282;
          v13 = *(v10 - 2);
          if (v13 != -1)
          {
            (off_266BAE8[v13])(v30, v10 - 282);
          }

          *(v10 - 2) = -1;
          v10 -= 282;
        }

        while (v12 != v8);
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

    if (a4 <= 0x3A196B1EDD80E8)
    {
      v27 = 0x70913F8BCD29C245 * (v7 >> 3);
      v28 = 2 * v27;
      if (2 * v27 <= a4)
      {
        v28 = a4;
      }

      if (v27 >= 0x1D0CB58F6EC074)
      {
        v29 = 0x3A196B1EDD80E8;
      }

      else
      {
        v29 = v28;
      }

      if (v29 <= 0x3A196B1EDD80E8)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (0x70913F8BCD29C245 * ((v14 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
LABEL_32:
      if (v14 != v8)
      {
        do
        {
          v25 = v14 - 282;
          v26 = *(v14 - 2);
          if (v26 != -1)
          {
            result = (off_266BAE8[v26])(v30, v14 - 282);
          }

          *(v14 - 2) = -1;
          v14 -= 282;
        }

        while (v25 != v8);
      }

      v6[1] = v8;
      return result;
    }

    while (1)
    {
      while (1)
      {
        v23 = v8[280];
        v24 = *(v5 + 1120);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_26;
        }

LABEL_27:
        v5 += 1128;
        v8 += 282;
        if (v5 == a3)
        {
          goto LABEL_31;
        }
      }

      if (v24 != -1)
      {
LABEL_26:
        v30[0] = v8;
        result = (off_266BC48[v24])(v30, v8, v5);
        goto LABEL_27;
      }

      result = (off_266BAE8[v23])(v30, v8);
      v8[280] = -1;
      v5 += 1128;
      v8 += 282;
      if (v5 == a3)
      {
LABEL_31:
        v14 = v6[1];
        goto LABEL_32;
      }
    }
  }

  if (v14 == v8)
  {
    goto LABEL_18;
  }

  v16 = v14 - v8;
  v17 = a2;
  do
  {
    while (1)
    {
      v18 = v8[280];
      v19 = *(v17 + 1120);
      if (v18 != -1)
      {
        break;
      }

      if (v19 != -1)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 += 1128;
      v8 += 282;
      v16 -= 1128;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    if (v19 != -1)
    {
LABEL_12:
      v30[0] = v8;
      result = (off_266BC48[v19])(v30, v8, v17);
      goto LABEL_13;
    }

    result = (off_266BAE8[v18])(v30, v8);
    v8[280] = -1;
    v17 += 1128;
    v8 += 282;
    v16 -= 1128;
  }

  while (v16);
LABEL_17:
  v14 = v6[1];
LABEL_18:
  v20 = v5 + v15;
  v32 = v14;
  v33 = v14;
  v30[0] = v6;
  v30[1] = &v32;
  v30[2] = &v33;
  v21 = v14;
  v31 = 0;
  if (v20 != a3)
  {
    v21 = v14;
    do
    {
      *v21 = 0;
      v21[280] = -1;
      v22 = *(v20 + 1120);
      if (v22 != -1)
      {
        v34 = v21;
        result = (off_266BC38[v22])(&v34, v20);
        v21[280] = v22;
        v21 = v33;
      }

      v20 += 1128;
      v21 += 282;
      v33 = v21;
    }

    while (v20 != a3);
  }

  v6[1] = v21;
  return result;
}

void sub_603350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5EBFA8(v3);
  sub_6033B4(va);
  *(v2 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_603374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5EBFA8(v4);
  sub_6033B4(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t *sub_60339C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  return result;
}

uint64_t sub_6033B4(uint64_t a1)
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
        v6 = v4 - 1128;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_266BAE8[v7])(&v9, v4 - 1128);
        }

        *(v4 - 8) = -1;
        v4 -= 1128;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

uint64_t sub_60345C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 1120);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v5 = *a3;
      *(a2 + 8) = *(a3 + 8);
      *a2 = v5;
      return result;
    }

    v6 = a3;
    result = (off_266BAE8[v4])(&v8, v3);
    a3 = v6;
  }

  *(v3 + 1120) = -1;
  v7 = *a3;
  *(v3 + 8) = *(a3 + 2);
  *v3 = v7;
  *(v3 + 1120) = 1;
  return result;
}

uint64_t sub_6034FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1120))
  {
    sub_52B7D8(v6, a3);
    v4 = *(a1 + 1120);
    if (v4 != -1)
    {
      (off_266BAE8[v4])(&v23, a1);
    }

    *(a1 + 1120) = -1;
    sub_529850(a1, v6);
    *(a1 + 1120) = 0;
    sub_529324(&v22);
    v19 = off_26696C8;
    if (v21 < 0)
    {
      operator delete(__p);
      if ((v18 & 0x80000000) == 0)
      {
LABEL_6:
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(v17);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_7:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    operator delete(v15);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_8:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    operator delete(v13);
    if ((v12 & 0x80000000) == 0)
    {
LABEL_9:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    operator delete(v11);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_10:
      if ((v8 & 0x80000000) == 0)
      {
        return sub_2C0F28(v6);
      }

LABEL_21:
      operator delete(v7);
      return sub_2C0F28(v6);
    }

LABEL_20:
    operator delete(v9);
    if ((v8 & 0x80000000) == 0)
    {
      return sub_2C0F28(v6);
    }

    goto LABEL_21;
  }

  return sub_52C990(a2, a3);
}

uint64_t sub_603684(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x3A83A83A83A83ALL)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) >= 0x1D41D41D41D41DLL)
  {
    v5 = 0x3A83A83A83A83ALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x3A83A83A83A83ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 32 * ((a1[1] - *a1) >> 5);
  sub_52B7D8(v13, a2);
  v6 = 1120 * v2 + 1120;
  v7 = *a1;
  v8 = a1[1];
  v9 = v13 + *a1 - v8;
  v14 = v9;
  if (*a1 != v8)
  {
    v10 = v13 + v7 - v8;
    v11 = *a1;
    do
    {
      sub_529850(v10, v11);
      v11 += 1120;
      v10 = v14 + 1120;
      v14 += 1120;
    }

    while (v11 != v8);
    do
    {
      sub_5EBD80(a1, v7);
      v7 += 1120;
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

void sub_603830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_603860(va);
  _Unwind_Resume(a1);
}

void sub_603844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_5F4B9C(va1);
  sub_603860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_603860(uint64_t a1)
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
    *(a1 + 16) = v3 - 1120;
    sub_5EBD80(v4, v3 - 1120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_6038B8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xFAFAFAFAFAFAFAFBLL * ((v7 - *result) >> 4) < a4)
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
          v10 = sub_5C0F34(v10 - 816);
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

    if (a4 <= 0x50505050505050)
    {
      v12 = 0xFAFAFAFAFAFAFAFBLL * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x28282828282828)
      {
        v14 = 0x50505050505050;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x50505050505050)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xFAFAFAFAFAFAFAFBLL * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_603B58(v8, v5);
        v5 += 816;
        v8 += 816;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 816;
      result = sub_5C0F34(v15);
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
        result = sub_603B58(v8, v5);
        v5 += 816;
        v8 += 816;
        v16 -= 816;
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
        result = sub_5DAD70(v15 + v19, v17 + v19);
        v19 += 816;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_603B2C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 816;
    v7 = -v4;
    do
    {
      v6 = sub_5C0F34(v6) - 816;
      v7 += 816;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_603B58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 != a2)
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v9 = (a2 + 8);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      if (v5 >= 0)
      {
        v10 = *(a2 + 31);
      }

      else
      {
        v10 = *(a2 + 16);
      }

      sub_13B38(v4, v9, v10);
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 8), *(a2 + 16));
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
LABEL_16:
        if ((v8 & 0x80u) == 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = *(a2 + 32);
        }

        if ((v8 & 0x80u) == 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = *(a2 + 40);
        }

        sub_13B38(a1 + 32, v12, v13);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 16) = *(a2 + 24);
      *v4 = v6;
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    if ((v8 & 0x80) != 0)
    {
      sub_13A68((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v11 = *v7;
      *(a1 + 48) = v7[2];
      *(a1 + 32) = v11;
    }

LABEL_24:
    *(a1 + 88) = *(a2 + 88);
    sub_5CE3D0(a1 + 56, *(a2 + 72), 0);
    sub_31F64((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    sub_5F9F30((a1 + 120), *(a2 + 120), *(a2 + 128), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 128) - *(a2 + 120)) >> 5));
    sub_5F9F30((a1 + 144), *(a2 + 144), *(a2 + 152), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 152) - *(a2 + 144)) >> 5));
  }

  sub_594568(a1 + 168, a2 + 168);
  sub_594568(a1 + 328, a2 + 328);
  v15 = *(a2 + 504);
  v14 = *(a2 + 520);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 504) = v15;
  *(a1 + 520) = v14;
  v17 = *(a2 + 552);
  v16 = *(a2 + 568);
  v18 = *(a2 + 536);
  *(a1 + 580) = *(a2 + 580);
  *(a1 + 552) = v17;
  *(a1 + 568) = v16;
  *(a1 + 536) = v18;
  sub_5410A0(a1 + 600, a2 + 600);
  if (a1 == a2)
  {
    v25 = *(a2 + 736);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 736) = v25;
    v26 = *(a2 + 784);
    *(a1 + 788) = *(a2 + 788);
    *(a1 + 784) = v26;
    return a1;
  }

  else
  {
    sub_603E24((a1 + 712), *(a2 + 712), *(a2 + 720), (*(a2 + 720) - *(a2 + 712)) >> 6);
    v19 = *(a2 + 736);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 736) = v19;
    sub_6041FC((a1 + 760), *(a2 + 760), *(a2 + 768), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 768) - *(a2 + 760)) >> 3));
    v20 = *(a2 + 784);
    *(a1 + 788) = *(a2 + 788);
    *(a1 + 784) = v20;
    v21 = (a1 + 792);
    v22 = *(a2 + 815);
    if (*(a1 + 815) < 0)
    {
      if (v22 >= 0)
      {
        v27 = (a2 + 792);
      }

      else
      {
        v27 = *(a2 + 792);
      }

      if (v22 >= 0)
      {
        v28 = *(a2 + 815);
      }

      else
      {
        v28 = *(a2 + 800);
      }

      sub_13B38(v21, v27, v28);
      return a1;
    }

    else
    {
      if ((*(a2 + 815) & 0x80) != 0)
      {
        sub_13A68(v21, *(a2 + 792), *(a2 + 800));
      }

      else
      {
        v23 = *(a2 + 792);
        *(a1 + 808) = *(a2 + 808);
        *v21 = v23;
      }

      return a1;
    }
  }
}

void sub_603E24(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 6)
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
          v12 = *(v10 - 41);
          v10 -= 8;
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

    if (!(a4 >> 58))
    {
      v31 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v31 = a4;
      }

      v32 = v7 >= 0x7FFFFFFFFFFFFFC0;
      v33 = 0x3FFFFFFFFFFFFFFLL;
      if (!v32)
      {
        v33 = v31;
      }

      if (!(v33 >> 58))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (a4 <= (v13 - v8) >> 6)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v29 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v29 >= 0)
            {
              v25 = v5;
            }

            else
            {
              v25 = *v5;
            }

            if (v29 >= 0)
            {
              v26 = *(v5 + 23);
            }

            else
            {
              v26 = v5[1];
            }

            sub_13B38(v8, v25, v26);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
          }

          else
          {
            v30 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v30;
          }
        }

        v27 = *(v5 + 3);
        v28 = *(v5 + 5);
        *(v8 + 56) = *(v5 + 14);
        *(v8 + 40) = v28;
        *(v8 + 24) = v27;
        v5 += 8;
        v8 += 64;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v39 = *(v13 - 41);
      v13 -= 8;
      if (v39 < 0)
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
        v21 = &v16[v8];
        v22 = &v16[v5];
        if (v5 != v8)
        {
          v23 = *(v22 + 23);
          if (v21[23] < 0)
          {
            if (v23 >= 0)
            {
              v17 = &v16[v5];
            }

            else
            {
              v17 = *&v16[v5];
            }

            if (v23 >= 0)
            {
              v18 = *(v22 + 23);
            }

            else
            {
              v18 = *&v16[v5 + 8];
            }

            sub_13B38(&v16[v8], v17, v18);
          }

          else if ((*(v22 + 23) & 0x80) != 0)
          {
            sub_13A68(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
          }

          else
          {
            v24 = *v22;
            *(v21 + 2) = v22[2];
            *v21 = v24;
          }
        }

        v19 = *(v22 + 3);
        v20 = *(v22 + 5);
        *(v21 + 14) = *(v22 + 14);
        *(v21 + 40) = v20;
        *(v21 + 24) = v19;
        v16 += 64;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v40 = v13;
    v34 = v13;
    if (v15 != a3)
    {
      v34 = v13;
      do
      {
        if (v15[23] < 0)
        {
          sub_325C(v34, *v15, *(v15 + 1));
          v36 = v40;
        }

        else
        {
          v35 = *v15;
          v34[2] = *(v15 + 2);
          *v34 = v35;
          v36 = v34;
        }

        v37 = *(v15 + 24);
        v38 = *(v15 + 40);
        *(v34 + 14) = *(v15 + 14);
        *(v34 + 5) = v38;
        *(v34 + 3) = v37;
        v15 += 64;
        v34 = v36 + 8;
        v40 = v36 + 8;
      }

      while (v15 != a3);
    }

    a1[1] = v34;
  }
}

void sub_6041CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5DB33C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_6041E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5DB33C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_6041FC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCF3CF3CF3CF3CF3DLL * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_53A868(v10 - 168);
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

    if (a4 <= 0x186186186186186)
    {
      v12 = 0xCF3CF3CF3CF3CF3DLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xC30C30C30C30C3)
      {
        v14 = 0x186186186186186;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x186186186186186)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  if (0xCF3CF3CF3CF3CF3DLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_594568(v8, v5);
        *(v8 + 160) = *(v5 + 160);
        v5 += 168;
        v8 += 168;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 168;
      result = sub_53A868(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v16 = a2 + v15 - v8;
    if (v15 != v8)
    {
      do
      {
        result = sub_594568(v8, v5);
        *(v8 + 160) = *(v5 + 160);
        v5 += 168;
        v8 += 168;
      }

      while (v5 != v16);
      v15 = v6[1];
    }

    v17 = v15;
    if (v16 != a3)
    {
      v18 = 0;
      do
      {
        result = sub_55BD50(v15 + v18, v16 + v18);
        *(v15 + v18 + 160) = *(v16 + v18 + 160);
        v18 += 168;
      }

      while (v16 + v18 != a3);
      v17 = v15 + v18;
    }

    v6[1] = v17;
  }

  return result;
}