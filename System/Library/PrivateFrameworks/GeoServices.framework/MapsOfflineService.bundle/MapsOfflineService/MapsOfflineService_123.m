void sub_7C2338()
{
  if (*(v0 + 12344))
  {
    JUMPOUT(0x7C2324);
  }

  JUMPOUT(0x7C2084);
}

void sub_7C234C()
{
  v2 = *(v0 + v1);
  if (v2)
  {
    v0[1531] = v2;
    operator delete(v2);
  }

  sub_5ECAE4(v0 + 1501);
  if (!v0[1498])
  {
    JUMPOUT(0x7C20CCLL);
  }

  JUMPOUT(0x7C20C4);
}

void sub_7C237C()
{
  if (!*(v0 + v1))
  {
    JUMPOUT(0x7C20CCLL);
  }

  JUMPOUT(0x7C20C4);
}

void sub_7C238C()
{
  if (!*(v0 + v1))
  {
    JUMPOUT(0x7C20E0);
  }

  JUMPOUT(0x7C20D8);
}

void sub_7C239C()
{
  if (!*(v0 + v1))
  {
    JUMPOUT(0x7C2100);
  }

  JUMPOUT(0x7C20F8);
}

void sub_7C23C4()
{
  if (!*(v0 + 7392))
  {
    JUMPOUT(0x7C2258);
  }

  JUMPOUT(0x7C2250);
}

void sub_7C23D8()
{
  if (!*v0)
  {
    JUMPOUT(0x7C22CCLL);
  }

  JUMPOUT(0x7C22C4);
}

void sub_7C23E8()
{
  if (!*v0)
  {
    JUMPOUT(0x7C22E0);
  }

  JUMPOUT(0x7C22D8);
}

void *sub_7C23F8(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_52A348(a1, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_52A348((a1 + 3), a2[3], a2[4], 0xCF3CF3CF3CF3CF3DLL * ((a2[4] - a2[3]) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_52A348((a1 + 6), a2[6], a2[7], 0xCF3CF3CF3CF3CF3DLL * ((a2[7] - a2[6]) >> 3));
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_52A348((a1 + 9), a2[9], a2[10], 0xCF3CF3CF3CF3CF3DLL * ((a2[10] - a2[9]) >> 3));
  return a1;
}

void sub_7C24C8(_Unwind_Exception *a1)
{
  sub_51B6E0(v3);
  sub_51B6E0(v2);
  sub_51B6E0(v1);
  _Unwind_Resume(a1);
}

BOOL sub_7C2508(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      do
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, a2);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, a2);
        sub_2B7A20(**a5, *(v13 + 32) & 0xFFFFFFFFFFFFFFLL, v43);
        v14 = *(a5 + 8);
        v41 = sub_31A76C(v43);
        v42 = v15;
        v20 = sub_6596D0(v14, &v41, v16, v17, v18, v19);
        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }

        ++a2;
      }

      while ((v20 & 1) != 0);
      return 1;
    }

    else
    {
      while (1)
      {
        v21 = sub_4D1DC0(a1);
        v22 = a2 >= v21;
        result = a2 < v21;
        if (v22)
        {
          break;
        }

        v24 = sub_4D1F50(a1, a2);
        sub_2B7A20(**a5, *(v24 + 32) & 0xFFFFFFFFFFFFFFLL, v43);
        v25 = *(a5 + 8);
        v41 = sub_31A76C(v43);
        v42 = v26;
        v31 = sub_6596D0(v25, &v41, v27, v28, v29, v30);
        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }

        ++a2;
        if ((v31 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v32 = sub_4D1DC0(a3);
      v22 = a4 >= v32;
      result = a4 < v32;
      if (v22)
      {
        break;
      }

      v33 = sub_4D1F50(0, a2);
      sub_2B7A20(**a5, *(v33 + 32) & 0xFFFFFFFFFFFFFFLL, v43);
      v34 = *(a5 + 8);
      v41 = sub_31A76C(v43);
      v42 = v35;
      v40 = sub_6596D0(v34, &v41, v36, v37, v38, v39);
      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }

      ++a2;
      if ((v40 & 1) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_7C2744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7C2768(uint64_t a1, uint64_t a2)
{
  v4 = sub_78CF50(a1, a2);
  *(v4 + 1096) = *(a2 + 1096);
  *(v4 + 1104) = 0;
  *(v4 + 1120) = 0;
  *(v4 + 1112) = 0;
  sub_5EF174(v4 + 1104, *(a2 + 1104), *(a2 + 1112), 0x3795876FF3795877 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3));
  *(a1 + 1144) = 0;
  *(a1 + 1128) = 0u;
  sub_5EF174(a1 + 1128, *(a2 + 1128), *(a2 + 1136), 0x3795876FF3795877 * ((*(a2 + 1136) - *(a2 + 1128)) >> 3));
  *(a1 + 1168) = 0;
  *(a1 + 1152) = 0u;
  sub_610880(a1 + 1152, *(a2 + 1152), *(a2 + 1160), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 1160) - *(a2 + 1152)) >> 4));
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  sub_610880(a1 + 1176, *(a2 + 1176), *(a2 + 1184), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 1184) - *(a2 + 1176)) >> 4));
  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  v5 = *(a2 + 1200);
  v6 = *(a2 + 1208);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1240) = 0;
  *(a1 + 1224) = 0u;
  v7 = *(a2 + 1224);
  v8 = *(a2 + 1232);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  sub_5F41F0(a1 + 1248, *(a2 + 1248), *(a2 + 1256), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1256) - *(a2 + 1248)) >> 5));
  if (*(a2 + 1295) < 0)
  {
    sub_325C((a1 + 1272), *(a2 + 1272), *(a2 + 1280));
  }

  else
  {
    v9 = *(a2 + 1272);
    *(a1 + 1288) = *(a2 + 1288);
    *(a1 + 1272) = v9;
  }

  if (*(a2 + 1319) < 0)
  {
    sub_325C((a1 + 1296), *(a2 + 1296), *(a2 + 1304));
  }

  else
  {
    v10 = *(a2 + 1296);
    *(a1 + 1312) = *(a2 + 1312);
    *(a1 + 1296) = v10;
  }

  sub_5F4380(a1 + 1320, (a2 + 1320));
  sub_5F49A4(a1 + 2408, a2 + 2408);
  *(a1 + 7224) = 0;
  *(a1 + 7208) = 0u;
  sub_353184(a1 + 7208, *(a2 + 7208), *(a2 + 7216), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7216) - *(a2 + 7208)) >> 3));
  sub_55BD50(a1 + 7232, a2 + 7232);
  *(a1 + 7408) = 0;
  *(a1 + 7392) = 0u;
  v11 = *(a2 + 7392);
  v12 = *(a2 + 7400);
  if (v12 != v11)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 7432) = 0;
  *(a1 + 7416) = 0u;
  sub_5713F4(a1 + 7416, *(a2 + 7416), *(a2 + 7424), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7424) - *(a2 + 7416)) >> 5));
  if (*(a2 + 7463) < 0)
  {
    sub_325C((a1 + 7440), *(a2 + 7440), *(a2 + 7448));
  }

  else
  {
    v13 = *(a2 + 7440);
    *(a1 + 7456) = *(a2 + 7456);
    *(a1 + 7440) = v13;
  }

  v14 = (a1 + 7464);
  if (*(a2 + 7487) < 0)
  {
    sub_325C(v14, *(a2 + 7464), *(a2 + 7472));
  }

  else
  {
    v15 = *(a2 + 7464);
    *(a1 + 7480) = *(a2 + 7480);
    *v14 = v15;
  }

  *(a1 + 7504) = 0;
  *(a1 + 7488) = 0u;
  sub_353184(a1 + 7488, *(a2 + 7488), *(a2 + 7496), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7496) - *(a2 + 7488)) >> 3));
  *(a1 + 7512) = 0u;
  *(a1 + 7528) = 0;
  sub_5F4C04(a1 + 7512, *(a2 + 7512), *(a2 + 7520), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7520) - *(a2 + 7512)) >> 5));
  *(a1 + 7552) = 0;
  *(a1 + 7536) = 0u;
  sub_5F50BC(a1 + 7536, *(a2 + 7536), *(a2 + 7544), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 7544) - *(a2 + 7536)) >> 6));
  *(a1 + 7576) = 0;
  *(a1 + 7560) = 0u;
  sub_5F53E0(a1 + 7560, *(a2 + 7560), *(a2 + 7568), 0x77A04C8F8D28AC43 * ((*(a2 + 7568) - *(a2 + 7560)) >> 3));
  sub_5F4F00(a1 + 7584, a2 + 7584);
  sub_5F4F00(a1 + 8440, a2 + 8440);
  sub_55BD50(a1 + 9296, a2 + 9296);
  sub_55BD50(a1 + 9456, a2 + 9456);
  sub_55BD50(a1 + 9616, a2 + 9616);
  sub_55BD50(a1 + 9776, a2 + 9776);
  sub_55BD50(a1 + 9936, a2 + 9936);
  *(a1 + 10112) = 0;
  *(a1 + 10096) = 0u;
  sub_5F5574(a1 + 10096, *(a2 + 10096), *(a2 + 10104), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 10104) - *(a2 + 10096)) >> 3));
  *(a1 + 10120) = *(a2 + 10120);
  *(a1 + 10128) = 0;
  *(a1 + 10144) = 0;
  *(a1 + 10136) = 0;
  sub_5F57B4(a1 + 10128, *(a2 + 10128), *(a2 + 10136), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10136) - *(a2 + 10128)) >> 3));
  *(a1 + 10168) = 0;
  *(a1 + 10152) = 0u;
  sub_5F58D4(a1 + 10152, *(a2 + 10152), *(a2 + 10160), 0x4FCACE213F2B3885 * ((*(a2 + 10160) - *(a2 + 10152)) >> 3));
  *(a1 + 10192) = 0;
  *(a1 + 10176) = 0u;
  sub_5F58D4(a1 + 10176, *(a2 + 10176), *(a2 + 10184), 0x4FCACE213F2B3885 * ((*(a2 + 10184) - *(a2 + 10176)) >> 3));
  *(a1 + 10200) = 0u;
  *(a1 + 10216) = 0;
  sub_5F58D4(a1 + 10200, *(a2 + 10200), *(a2 + 10208), 0x4FCACE213F2B3885 * ((*(a2 + 10208) - *(a2 + 10200)) >> 3));
  v16 = (a1 + 10224);
  if (*(a2 + 10247) < 0)
  {
    sub_325C(v16, *(a2 + 10224), *(a2 + 10232));
  }

  else
  {
    v17 = *(a2 + 10224);
    *(a1 + 10240) = *(a2 + 10240);
    *v16 = v17;
  }

  *(a1 + 10248) = *(a2 + 10248);
  *(a1 + 10264) = 0;
  *(a1 + 10280) = 0;
  *(a1 + 10272) = 0;
  v18 = *(a2 + 10264);
  v19 = *(a2 + 10272);
  if (v19 != v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 10304) = 0;
  *(a1 + 10288) = 0u;
  sub_7C0AEC(a1 + 10288, *(a2 + 10288), *(a2 + 10296), (*(a2 + 10296) - *(a2 + 10288)) >> 6);
  *(a1 + 10312) = *(a2 + 10312);
  sub_7C0CD4((a1 + 10320), (a2 + 10320));
  sub_5F618C(a1 + 10344, a2 + 10344);
  sub_5F618C(a1 + 11088, a2 + 11088);
  *(a1 + 11848) = 0;
  *(a1 + 11832) = 0u;
  v20 = *(a2 + 11832);
  v21 = *(a2 + 11840);
  if (v21 != v20)
  {
    if (((v21 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_7C3924((a1 + 11856), (a2 + 11856));
  *(a1 + 11968) = 0;
  *(a1 + 11952) = 0u;
  v22 = *(a2 + 11952);
  v23 = *(a2 + 11960);
  if (v23 != v22)
  {
    if (((v23 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 11976) = *(a2 + 11976);
  *(a1 + 11984) = 0;
  *(a1 + 12000) = 0;
  *(a1 + 11992) = 0;
  v24 = *(a2 + 11984);
  v25 = *(a2 + 11992);
  if (v25 != v24)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F6530(a1 + 12008, (a2 + 12008));
  *(a1 + 12256) = 0;
  *(a1 + 12240) = 0u;
  v26 = *(a2 + 12240);
  v27 = *(a2 + 12248);
  if (v27 != v26)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 12264) = *(a2 + 12264);
  *(a1 + 12272) = 0;
  *(a1 + 12288) = 0;
  *(a1 + 12280) = 0;
  sub_5F67E4(a1 + 12272, *(a2 + 12272), *(a2 + 12280), 0x4FCACE213F2B3885 * ((*(a2 + 12280) - *(a2 + 12272)) >> 3));
  sub_7C0E48((a1 + 12296), (a2 + 12296));
  if (*(a2 + 12343) < 0)
  {
    sub_325C((a1 + 12320), *(a2 + 12320), *(a2 + 12328));
  }

  else
  {
    v28 = *(a2 + 12320);
    *(a1 + 12336) = *(a2 + 12336);
    *(a1 + 12320) = v28;
  }

  *(a1 + 12360) = 0;
  *(a1 + 12344) = 0u;
  v29 = *(a2 + 12344);
  v30 = *(a2 + 12352);
  if (v30 != v29)
  {
    if (((v30 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 12368) = *(a2 + 12368);
  *(a1 + 12376) = 0;
  *(a1 + 12392) = 0;
  *(a1 + 12384) = 0;
  v31 = *(a2 + 12376);
  v32 = *(a2 + 12384);
  if (v32 != v31)
  {
    if (((v32 - v31) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F6A1C(a1 + 12400, a2 + 12400);
  *(a1 + 12464) = off_26696C8;
  if (*(a2 + 12495) < 0)
  {
    sub_325C((a1 + 12472), *(a2 + 12472), *(a2 + 12480));
  }

  else
  {
    v33 = *(a2 + 12472);
    *(a1 + 12488) = *(a2 + 12488);
    *(a1 + 12472) = v33;
  }

  *(a1 + 12464) = off_266BBB8;
  *(a1 + 12496) = *(a2 + 12496);
  *(a1 + 12504) = off_26696C8;
  v34 = (a1 + 12512);
  if (*(a2 + 12535) < 0)
  {
    sub_325C(v34, *(a2 + 12512), *(a2 + 12520));
  }

  else
  {
    v35 = *(a2 + 12512);
    *(a1 + 12528) = *(a2 + 12528);
    *v34 = v35;
  }

  *(a1 + 12504) = off_266BBF0;
  *(a1 + 12536) = *(a2 + 12536);
  sub_5F74A0(a1 + 12544, a2 + 12544);
  sub_81988((a1 + 12624), a2 + 12624);
  *(a1 + 12648) = *(a2 + 12648);
  return a1;
}

void sub_7C33D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, uint64_t a15, void **a16, void **a17, void **a18, void **a19, char *a20)
{
  *(v20 + 12464) = v23;
  if (*(v24 + 231) < 0)
  {
    operator delete(*v21);
  }

  sub_5EC808((v20 + v25));
  v28 = *(v20 + 12376);
  if (v28)
  {
    *(v20 + 12384) = v28;
    operator delete(v28);
    v29 = *(v20 + 12344);
    if (!v29)
    {
LABEL_5:
      if ((*(v24 + 79) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v29 = *(v20 + 12344);
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  *(v20 + 12352) = v29;
  operator delete(v29);
  if ((*(v24 + 79) & 0x80000000) == 0)
  {
LABEL_7:
    sub_528FAC((v20 + 12296));
    sub_5EC9F0((v20 + 12272));
    sub_5ECA54((v20 + 12008));
    v30 = *(v20 + 11984);
    if (v30)
    {
      *(v20 + 11992) = v30;
      operator delete(v30);
    }

    v31 = *(v20 + 11952);
    if (v31)
    {
      *(v20 + 11960) = v31;
      operator delete(v31);
    }

    sub_5C23C8((v20 + 11856));
    v32 = *(v20 + 11832);
    if (v32)
    {
      *(v20 + 11840) = v32;
      operator delete(v32);
    }

    sub_5EC498(v20 + 11088);
    sub_5EC498(v20 + 10344);
    sub_69A11C((v20 + 10320));
    sub_5ECD28((v20 + 10248));
    if (a20[2784] < 0)
    {
      operator delete(*a10);
    }

    sub_5EC548(v20 + 10200);
    sub_5EC548(v20 + 10176);
    sub_5EC548(v20 + 10152);
    sub_5ECEBC((v20 + 10128));
    sub_5ECF34((v20 + 10096));
    sub_53A868(v20 + 9936);
    sub_53A868(v20 + 9776);
    sub_53A868(v20 + 9616);
    sub_53A868(v20 + 9456);
    sub_53A868(v20 + 9296);
    sub_5936E4((v20 + 8440));
    sub_5936E4((v20 + 7584));
    sub_5ED1D0((v20 + 7560));
    sub_5EC5AC((v20 + 7536));
    sub_5EC628((v20 + 7512));
    sub_1A104((v20 + 7488));
    if (a20[24] < 0)
    {
      operator delete(*a11);
    }

    if (*a20 < 0)
    {
      operator delete(*a12);
    }

    sub_5706DC((v20 + 7416));
    v33 = *(v20 + 7392);
    if (v33)
    {
      *(v20 + 7400) = v33;
      operator delete(v33);
    }

    sub_53A868(v20 + 7232);
    sub_1A104((v20 + 7208));
    sub_5C1688(v20 + 2408);
    sub_559E70((v20 + 1320));
    if (*(v20 + 1319) < 0)
    {
      operator delete(*a13);
    }

    if (*(v20 + 1295) < 0)
    {
      operator delete(*a14);
    }

    *(v26 - 88) = a15;
    sub_51415C((v26 - 88));
    v34 = *a16;
    if (*a16)
    {
      *(v20 + 1232) = v34;
      operator delete(v34);
    }

    v35 = *a17;
    if (*a17)
    {
      *(v20 + 1208) = v35;
      operator delete(v35);
    }

    sub_5EBF44(a18);
    sub_5EBF44((v20 + 1152));
    sub_5EC684(a19);
    sub_5EC684((v20 + 1104));
    sub_3EEA68(v20);
    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(*v22);
  goto LABEL_7;
}

void sub_7C3864()
{
  if (*(v0 + 12344))
  {
    JUMPOUT(0x7C3850);
  }

  JUMPOUT(0x7C35B0);
}

void sub_7C3878()
{
  v2 = *(v0 + v1);
  if (v2)
  {
    v0[1531] = v2;
    operator delete(v2);
  }

  sub_5ECAE4(v0 + 1501);
  if (!v0[1498])
  {
    JUMPOUT(0x7C35F8);
  }

  JUMPOUT(0x7C35F0);
}

void sub_7C38A8()
{
  if (!*(v0 + v1))
  {
    JUMPOUT(0x7C35F8);
  }

  JUMPOUT(0x7C35F0);
}

void sub_7C38B8()
{
  if (!*(v0 + v1))
  {
    JUMPOUT(0x7C360CLL);
  }

  JUMPOUT(0x7C3604);
}

void sub_7C38C8()
{
  if (!*(v0 + v1))
  {
    JUMPOUT(0x7C362CLL);
  }

  JUMPOUT(0x7C3624);
}

void sub_7C38F0()
{
  if (!*(v0 + 7392))
  {
    JUMPOUT(0x7C3784);
  }

  JUMPOUT(0x7C377CLL);
}

void sub_7C3904()
{
  if (!*v0)
  {
    JUMPOUT(0x7C37F8);
  }

  JUMPOUT(0x7C37F0);
}

void sub_7C3914()
{
  if (!*v0)
  {
    JUMPOUT(0x7C380CLL);
  }

  JUMPOUT(0x7C3804);
}

void *sub_7C3924(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_52A348(a1, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_52A348((a1 + 3), a2[3], a2[4], 0xCF3CF3CF3CF3CF3DLL * ((a2[4] - a2[3]) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_52A348((a1 + 6), a2[6], a2[7], 0xCF3CF3CF3CF3CF3DLL * ((a2[7] - a2[6]) >> 3));
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_52A348((a1 + 9), a2[9], a2[10], 0xCF3CF3CF3CF3CF3DLL * ((a2[10] - a2[9]) >> 3));
  return a1;
}

void sub_7C39F4(_Unwind_Exception *a1)
{
  sub_51B6E0(v3);
  sub_51B6E0(v2);
  sub_51B6E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_7C3A34(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v23 = a2;
  v24 = result;
LABEL_2:
  v9 = 1 - a4;
  while (1)
  {
    v10 = v7 - v8;
    v11 = 0xAF8AF8AF8AF8AF8BLL * ((v7 - v8) >> 5);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3uLL:
          v23 = v7 - 1120;
          return sub_7C3DA0(v8, v8 + 1120, v7 - 1120);
        case 4uLL:
          v23 = v7 - 1120;
          return sub_7C3EE8(v8, v8 + 1120, v8 + 2240, v7 - 1120);
        case 5uLL:
          v23 = v7 - 1120;
          return sub_7C3FE8(v8, v8 + 1120, v8 + 2240, v8 + 3360, v7 - 1120);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v23 = v7 - 1120;
        result = sub_658FC4(v7 - 1120, v8);
        if (result)
        {
          return sub_7C3D40(&v24, &v23);
        }

        return result;
      }
    }

    if (v10 <= 26879)
    {
      if (a5)
      {
        return sub_7C4128(v8, v7);
      }

      else
      {
        return sub_7C421C(v8, v7);
      }
    }

    if (v9 == 1)
    {
      break;
    }

    v12 = v11 >> 1;
    v13 = v7 - 1120;
    if (v10 <= 0x23000)
    {
      sub_7C3DA0(v8 + 1120 * (v11 >> 1), v8, v13);
      if (a5)
      {
LABEL_18:
        v7 = v23;
        v18 = sub_7C4490(v24, v23);
        if ((v20 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }
    }

    else
    {
      sub_7C3DA0(v8, v8 + 1120 * (v11 >> 1), v13);
      v14 = 1120 * v12;
      v15 = 1120 * v12 - 1120;
      v16 = v23;
      sub_7C3DA0(v24 + 1120, v24 + v15, v23 - 2240);
      sub_7C3DA0(v24 + 2240, v24 + v14 + 1120, v16 - 3360);
      sub_7C3DA0(v24 + v15, v24 + v14, v24 + v14 + 1120);
      v22 = v24 + v14;
      sub_7C3D40(&v24, &v22);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v17 = sub_658FC4(v24 - 1120, v24);
    v7 = v23;
    if ((v17 & 1) == 0)
    {
      result = sub_7C42DC(v24, v23);
      v8 = result;
      goto LABEL_26;
    }

    v18 = sub_7C4490(v24, v23);
    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_19:
    v21 = sub_7C4650(v24, v18);
    v8 = v18 + 1120;
    result = sub_7C4650(v18 + 1120, v7);
    if (result)
    {
      if (v21)
      {
        return result;
      }

      v23 = v18;
      v8 = v24;
      v7 = v18;
      ++v9;
    }

    else
    {
      if (!v21)
      {
LABEL_24:
        result = sub_7C3A34(v24, v18, a3, -v9, a5 & 1);
        v8 = v18 + 1120;
LABEL_26:
        a5 = 0;
        v24 = v8;
        a4 = -v9;
        goto LABEL_2;
      }

      v24 = v18 + 1120;
      ++v9;
    }
  }

  if (v8 != v7)
  {
    return sub_7C487C(v8, v7, v7, a3);
  }

  return result;
}

uint64_t sub_7C3D40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_529850(v5, *a1);
  sub_52BE74(v2, v3);
  sub_52BE74(v3, v5);
  return sub_3A9518(v5);
}

uint64_t sub_7C3DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_658FC4(a2, a1);
  result = sub_658FC4(a3, a2);
  if (v6)
  {
    if (result)
    {
      sub_529850(v10, a1);
      v8 = a1;
LABEL_9:
      sub_52BE74(v8, a3);
      v9 = a3;
      goto LABEL_10;
    }

    sub_529850(v10, a1);
    sub_52BE74(a1, a2);
    sub_52BE74(a2, v10);
    sub_3A9518(v10);
    if (sub_658FC4(a3, a2))
    {
      sub_529850(v10, a2);
      v8 = a2;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_529850(v10, a2);
    sub_52BE74(a2, a3);
    sub_52BE74(a3, v10);
    sub_3A9518(v10);
    if (sub_658FC4(a2, a1))
    {
      sub_529850(v10, a1);
      sub_52BE74(a1, a2);
      v9 = a2;
LABEL_10:
      sub_52BE74(v9, v10);
      sub_3A9518(v10);
    }
  }

  return 1;
}

uint64_t sub_7C3EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_7C3DA0(a1, a2, a3);
  result = sub_658FC4(a4, a3);
  if (result)
  {
    sub_529850(v9, a3);
    sub_52BE74(a3, a4);
    sub_52BE74(a4, v9);
    sub_3A9518(v9);
    result = sub_658FC4(a3, a2);
    if (result)
    {
      sub_529850(v9, a2);
      sub_52BE74(a2, a3);
      sub_52BE74(a3, v9);
      sub_3A9518(v9);
      result = sub_658FC4(a2, a1);
      if (result)
      {
        sub_529850(v9, a1);
        sub_52BE74(a1, a2);
        sub_52BE74(a2, v9);
        return sub_3A9518(v9);
      }
    }
  }

  return result;
}

uint64_t sub_7C3FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_7C3EE8(a1, a2, a3, a4);
  result = sub_658FC4(a5, a4);
  if (result)
  {
    sub_529850(v11, a4);
    sub_52BE74(a4, a5);
    sub_52BE74(a5, v11);
    sub_3A9518(v11);
    result = sub_658FC4(a4, a3);
    if (result)
    {
      sub_529850(v11, a3);
      sub_52BE74(a3, a4);
      sub_52BE74(a4, v11);
      sub_3A9518(v11);
      result = sub_658FC4(a3, a2);
      if (result)
      {
        sub_529850(v11, a2);
        sub_52BE74(a2, a3);
        sub_52BE74(a3, v11);
        sub_3A9518(v11);
        result = sub_658FC4(a2, a1);
        if (result)
        {
          sub_529850(v11, a1);
          sub_52BE74(a1, a2);
          sub_52BE74(a2, v11);
          return sub_3A9518(v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_7C4128(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1120;
    if (result + 1120 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = v6;
        v6 = v4;
        result = sub_658FC4(v4, v8);
        if (result)
        {
          sub_529850(v11, v6);
          v9 = v5;
          do
          {
            sub_52BE74(v3 + v9 + 1120, v3 + v9);
            if (!v9)
            {
              v7 = v3;
              goto LABEL_5;
            }

            v10 = sub_658FC4(v11, v3 + v9 - 1120);
            v9 -= 1120;
          }

          while ((v10 & 1) != 0);
          v7 = v3 + v9 + 1120;
LABEL_5:
          sub_52BE74(v7, v11);
          result = sub_3A9518(v11);
        }

        v4 = v6 + 1120;
        v5 += 1120;
      }

      while (v6 + 1120 != a2);
    }
  }

  return result;
}

uint64_t sub_7C421C(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1120;
    while (v4 != a2)
    {
      v5 = v4;
      result = sub_658FC4(v4, v3);
      if (result)
      {
        sub_529850(v6, v5);
        do
        {
          sub_52BE74(v3 + 1120, v3);
          v3 -= 1120;
        }

        while ((sub_658FC4(v6, v3) & 1) != 0);
        sub_52BE74(v3 + 1120, v6);
        result = sub_3A9518(v6);
      }

      v4 = v5 + 1120;
      v3 = v5;
    }
  }

  return result;
}

unint64_t sub_7C42DC(uint64_t a1, unint64_t a2)
{
  sub_529850(v8, a1);
  if (sub_658FC4(v8, a2 - 1120))
  {
    v4 = a1;
    do
    {
      v4 += 1120;
    }

    while ((sub_658FC4(v8, v4) & 1) == 0);
  }

  else
  {
    v5 = a1 + 1120;
    do
    {
      v4 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v6 = sub_658FC4(v8, v5);
      v5 = v4 + 1120;
    }

    while (!v6);
  }

  if (v4 < a2)
  {
    do
    {
      a2 -= 1120;
    }

    while ((sub_658FC4(v8, a2) & 1) != 0);
  }

  while (v4 < a2)
  {
    sub_529850(v9, v4);
    sub_52BE74(v4, a2);
    sub_52BE74(a2, v9);
    sub_3A9518(v9);
    do
    {
      v4 += 1120;
    }

    while (!sub_658FC4(v8, v4));
    do
    {
      a2 -= 1120;
    }

    while ((sub_658FC4(v8, a2) & 1) != 0);
  }

  if (v4 - 1120 != a1)
  {
    sub_52BE74(a1, v4 - 1120);
  }

  sub_52BE74(v4 - 1120, v8);
  sub_3A9518(v8);
  return v4;
}

uint64_t sub_7C4490(uint64_t a1, unint64_t a2)
{
  sub_529850(v11, a1);
  v4 = 0;
  do
  {
    v5 = sub_658FC4(a1 + v4 + 1120, v11);
    v4 += 1120;
  }

  while ((v5 & 1) != 0);
  v6 = a1 + v4;
  if (v4 == 1120)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      a2 -= 1120;
    }

    while ((sub_658FC4(a2, v11) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 1120;
    }

    while (!sub_658FC4(a2, v11));
  }

  if (v6 >= a2)
  {
    v9 = v6 - 1120;
    if (v6 - 1120 == a1)
    {
      goto LABEL_18;
    }

LABEL_17:
    sub_52BE74(a1, v9);
    goto LABEL_18;
  }

  v7 = a1 + v4;
  v8 = a2;
  do
  {
    sub_529850(v12, v7);
    sub_52BE74(v7, v8);
    sub_52BE74(v8, v12);
    sub_3A9518(v12);
    do
    {
      v7 += 1120;
    }

    while ((sub_658FC4(v7, v11) & 1) != 0);
    do
    {
      v8 -= 1120;
    }

    while (!sub_658FC4(v8, v11));
  }

  while (v7 < v8);
  v9 = v7 - 1120;
  if (v9 != a1)
  {
    goto LABEL_17;
  }

LABEL_18:
  sub_52BE74(v9, v11);
  sub_3A9518(v11);
  return v9;
}

BOOL sub_7C4650(uint64_t a1, uint64_t a2)
{
  v4 = 0xAF8AF8AF8AF8AF8BLL * ((a2 - a1) >> 5);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = a2 - 1120;
        if (sub_658FC4(a2 - 1120, a1))
        {
          sub_529850(v13, a1);
          sub_52BE74(a1, v5);
          sub_52BE74(v5, v13);
          sub_3A9518(v13);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_7C3DA0(a1, a1 + 1120, a2 - 1120);
      return 1;
    case 4:
      sub_7C3EE8(a1, a1 + 1120, a1 + 2240, a2 - 1120);
      return 1;
    case 5:
      sub_7C3FE8(a1, a1 + 1120, a1 + 2240, a1 + 3360, a2 - 1120);
      return 1;
  }

LABEL_11:
  sub_7C3DA0(a1, a1 + 1120, a1 + 2240);
  v6 = a1 + 3360;
  if (a1 + 3360 == a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  v9 = a1 + 2240;
  while (!sub_658FC4(v6, v9))
  {
LABEL_21:
    v9 = v6;
    v7 += 1120;
    v6 += 1120;
    if (v6 == a2)
    {
      return 1;
    }
  }

  sub_529850(v13, v6);
  v10 = v7;
  while (1)
  {
    sub_52BE74(a1 + v10 + 3360, a1 + v10 + 2240);
    if (v10 == -2240)
    {
      break;
    }

    v11 = sub_658FC4(v13, a1 + v10 + 1120);
    v10 -= 1120;
    if ((v11 & 1) == 0)
    {
      sub_52BE74(a1 + v10 + 3360, v13);
      if (++v8 != 8)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  sub_52BE74(a1, v13);
  if (++v8 != 8)
  {
LABEL_20:
    sub_3A9518(v13);
    goto LABEL_21;
  }

LABEL_25:
  sub_3A9518(v13);
  return v6 + 1120 == a2;
}

uint64_t sub_7C487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAF8AF8AF8AF8AF8BLL * ((a2 - a1) >> 5);
    if (a2 - a1 >= 1121)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 1120 * v10;
      do
      {
        sub_7C49E4(a1, a4, v9, v12);
        v12 -= 1120;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (sub_658FC4(v13, a1))
        {
          sub_529850(v17, v13);
          sub_52BE74(v13, a1);
          sub_52BE74(a1, v17);
          sub_3A9518(v17);
          sub_7C49E4(a1, a4, v9, a1);
        }

        v13 += 1120;
      }

      while (v13 != a3);
    }

    if (v8 >= 1121)
    {
      v14 = 0xAF8AF8AF8AF8AF8BLL * (v8 >> 5);
      do
      {
        sub_7C4B54(a1, v6, a4, v14);
        v6 -= 1120;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_7C49E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAF8AF8AF8AF8AF8BLL * ((a4 - result) >> 5)))
    {
      v9 = (0x5F15F15F15F15F16 * ((a4 - result) >> 5)) | 1;
      v10 = result + 1120 * v9;
      v11 = 0x5F15F15F15F15F16 * ((a4 - result) >> 5) + 2;
      if (v11 < a3 && sub_658FC4(result + 1120 * v9, v10 + 1120))
      {
        v10 += 1120;
        v9 = v11;
      }

      result = sub_658FC4(v10, v5);
      if ((result & 1) == 0)
      {
        sub_529850(v14, v5);
        do
        {
          v12 = v10;
          sub_52BE74(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v13 = (2 * v9) | 1;
          v10 = v6 + 1120 * v13;
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v13;
          }

          else if (sub_658FC4(v6 + 1120 * v13, v10 + 1120))
          {
            v10 += 1120;
          }

          else
          {
            v9 = v13;
          }

          v5 = v12;
        }

        while (!sub_658FC4(v10, v14));
        sub_52BE74(v12, v14);
        return sub_3A9518(v14);
      }
    }
  }

  return result;
}

uint64_t sub_7C4B54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    sub_529850(v17, result);
    v8 = 0;
    v9 = v4 >> 1;
    v10 = v7;
    do
    {
      v11 = v10 + 1120 * v8;
      v12 = v11 + 1120;
      v13 = (2 * v8) | 1;
      v14 = 2 * v8 + 2;
      if (v14 < a4)
      {
        v15 = v11 + 2240;
        if (sub_658FC4(v11 + 1120, v11 + 2240))
        {
          v12 = v15;
          v13 = v14;
        }
      }

      sub_52BE74(v10, v12);
      v10 = v12;
      v8 = v13;
    }

    while (v13 <= v9);
    if (v12 == a2 - 1120)
    {
      sub_52BE74(v12, v17);
    }

    else
    {
      sub_52BE74(v12, a2 - 1120);
      sub_52BE74(a2 - 1120, v17);
      sub_7C4CC0(v7, v12 + 1120, a3, 0xAF8AF8AF8AF8AF8BLL * ((v12 + 1120 - v7) >> 5));
    }

    return sub_3A9518(v17);
  }

  return result;
}

void sub_7C4C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3A9518(va);
  _Unwind_Resume(a1);
}

void sub_7C4CAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3A9518(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7C4CC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = result;
    v5 = (a4 - 2) >> 1;
    v6 = result + 1120 * v5;
    v7 = a2 - 1120;
    result = sub_658FC4(v6, a2 - 1120);
    if (result)
    {
      sub_529850(v11, v7);
      v8 = v7;
      do
      {
        v9 = v6;
        sub_52BE74(v8, v6);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = v4 + 1120 * v5;
        v10 = sub_658FC4(v6, v11);
        v8 = v9;
      }

      while ((v10 & 1) != 0);
      sub_52BE74(v9, v11);
      return sub_3A9518(v11);
    }
  }

  return result;
}

uint64_t **sub_7C4D90(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_7C51A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7C51F0(va);
  _Unwind_Resume(a1);
}

void sub_7C51B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7C51F0(va);
  _Unwind_Resume(a1);
}

void sub_7C51C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_7C51F0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_7C51F0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_3A9518(v1 + 40);
      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_7C524C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  if (a2 != a1)
  {
    v6 = a3[1];
    if (*a3 == v6)
    {
      v5 = a1 + 1120 * ((a2 - a1 - 1120) / 0x460uLL) + 1120;
    }

    else
    {
      while (1)
      {
        v14 = *a3;
        if (*a3 != v6)
        {
          while (1)
          {
            v15 = *(v14 + 236);
            v16 = *(v5 + 236);
            if ((v15 > v16 || v15 == v16 && sub_658FC4(v14, v5)) && sub_659640(v5, v14))
            {
              break;
            }

            v14 += 1120;
            if (v14 == v6)
            {
              v14 = v6;
              break;
            }
          }

          v6 = a3[1];
          if (v14 != v6)
          {
            break;
          }
        }

        v5 += 1120;
        if (v5 == a2)
        {
          return a2;
        }
      }
    }
  }

  if (v5 == a2)
  {
    return a2;
  }

  v7 = v5 + 1120;
  if (v5 + 1120 == a2)
  {
    return v5;
  }

  v8 = v5;
  do
  {
    v9 = v7;
    v10 = *a3;
    v11 = a3[1];
    if (*a3 == v11)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v12 = *(v10 + 236);
      v13 = *(v5 + 1356);
      if ((v12 > v13 || v12 == v13 && sub_658FC4(v10, v9)) && sub_659640(v9, v10))
      {
        break;
      }

      v10 += 1120;
      if (v10 == v11)
      {
        v10 = v11;
        break;
      }
    }

    if (v10 == a3[1])
    {
LABEL_18:
      sub_52BE74(v8, v9);
      v8 += 1120;
    }

    v7 = v9 + 1120;
    v5 = v9;
  }

  while (v9 + 1120 != a2);
  return v8;
}

uint64_t sub_7C53F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_603684(a3, a1);
    }

    else
    {
      sub_52B7D8(a3[1], a1);
      v7 = v6 + 1120;
      a3[1] = v6 + 1120;
    }

    a3[1] = v7;
    for (i = v4 + 1120; i != a2; i += 1120)
    {
      if (!sub_65901C(v4, i))
      {
        v10 = a3[1];
        if (v10 >= a3[2])
        {
          v9 = sub_603684(a3, i);
        }

        else
        {
          sub_52B7D8(a3[1], i);
          v9 = v10 + 1120;
          a3[1] = v10 + 1120;
        }

        a3[1] = v9;
        v4 = i;
      }
    }

    return a2;
  }

  return v4;
}

char *sub_7C54E4(char *a1, char *a2, char **a3)
{
  if (a1 == a2 || *a3 == a3[1])
  {
    return a2;
  }

  v5 = a1;
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    v5 += 1120;
    v8 = a2;
    if (v5 == a2)
    {
      return v8;
    }

    v6 = *a3;
    v7 = a3[1];
  }

  while (*a3 == v7);
LABEL_6:
  while (!sub_7C56E0(v22, v5, v6))
  {
    v6 += 1120;
    if (v6 == v7)
    {
      goto LABEL_4;
    }
  }

  if (v5 == a2)
  {
    return v5;
  }

  v9 = v5 + 1120;
  if (v5 + 1120 == a2)
  {
    return v5;
  }

  v8 = v5;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    goto LABEL_16;
  }

LABEL_13:
  while (1)
  {
    sub_52BE74(v8, v9);
    v8 += 1120;
LABEL_14:
    v9 += 1120;
    if (v9 == a2)
    {
      return v8;
    }

    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      while (1)
      {
LABEL_16:
        if (sub_659640(v9, v10))
        {
          goto LABEL_14;
        }

        sub_57480(v9, v22);
        sub_57480(v10, __p);
        v12 = v23;
        if ((v23 & 0x80u) == 0)
        {
          v13 = v23;
        }

        else
        {
          v13 = v22[1];
        }

        v14 = v21;
        v15 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v14 = __p[1];
        }

        if (v13 == v14)
        {
          if ((v23 & 0x80u) == 0)
          {
            v16 = v22;
          }

          else
          {
            v16 = v22[0];
          }

          if ((v21 & 0x80u) == 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          v18 = memcmp(v16, v17, v13) == 0;
          if ((v15 & 0x80000000) == 0)
          {
LABEL_32:
            if ((v12 & 0x80) != 0)
            {
              goto LABEL_36;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v18 = 0;
          if ((v21 & 0x80000000) == 0)
          {
            goto LABEL_32;
          }
        }

        operator delete(__p[0]);
        if ((v23 & 0x80) != 0)
        {
LABEL_36:
          operator delete(v22[0]);
          if (v18)
          {
            goto LABEL_14;
          }

          goto LABEL_37;
        }

LABEL_33:
        if (v18)
        {
          goto LABEL_14;
        }

LABEL_37:
        v10 += 1120;
        if (v10 == v11)
        {
          goto LABEL_13;
        }
      }
    }
  }
}

void sub_7C56C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_7C56E0(uint64_t a1, char *a2, char *a3)
{
  if (sub_659640(a2, a3))
  {
    return 1;
  }

  sub_57480(a2, v16);
  sub_57480(a3, __p);
  v6 = v17;
  if ((v17 & 0x80u) == 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = v16[1];
  }

  v8 = v15;
  v9 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v7 == v8)
  {
    if ((v17 & 0x80u) == 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    result = memcmp(v10, v11, v7) == 0;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    result = 0;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  v12 = result;
  operator delete(__p[0]);
  result = v12;
  v6 = v17;
LABEL_20:
  if ((v6 & 0x80) != 0)
  {
    v13 = result;
    operator delete(v16[0]);
    return v13;
  }

  return result;
}

void sub_7C57E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_7C5800(uint64_t **a1, uint64_t a2)
{
  result = sub_65959C(a2);
  if (result)
  {
    v5 = **a1;
    v6 = (*a1)[1];
    if (v5 != v6)
    {
      while (1)
      {
        if (sub_6591C4(v5, a2) && sub_65959C(v5))
        {
          v7 = *(v5 + 959);
          if (v7 >= 0)
          {
            v8 = *(v5 + 959);
          }

          else
          {
            v8 = *(v5 + 944);
          }

          v9 = *(a2 + 959);
          v10 = v9;
          if ((v9 & 0x80u) != 0)
          {
            v9 = *(a2 + 944);
          }

          if (v8 == v9)
          {
            v11 = v7 >= 0 ? (v5 + 936) : *(v5 + 936);
            v12 = v10 >= 0 ? (a2 + 936) : *(a2 + 936);
            if (!memcmp(v11, v12, v8))
            {
              v13 = *(v5 + 236);
              v14 = *(a2 + 236);
              if (v13 > v14 || v13 == v14 && (sub_658FC4(v5, a2) & 1) != 0)
              {
                break;
              }
            }
          }
        }

        v5 += 1120;
        if (v5 == v6)
        {
          v5 = v6;
          break;
        }
      }

      v6 = (*a1)[1];
    }

    return v5 != v6;
  }

  return result;
}

__n128 sub_7C598C(uint64_t a1, uint64_t a2)
{
  *a2 = off_266C900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_7C59CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing20RouteIncidentMatcherINS0_8RouteLegINS0_11DrivingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing20RouteIncidentMatcherINS0_8RouteLegINS0_11DrivingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing20RouteIncidentMatcherINS0_8RouteLegINS0_11DrivingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing20RouteIncidentMatcherINS0_8RouteLegINS0_11DrivingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_7C5A44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = sub_38F51C(a2, 0);
  if (result)
  {
    result = sub_38F79C(a2, **a1);
    if (result)
    {
      v6 = 96;
      if (*(a2 + 232))
      {
        v6 = 228;
      }

      v7 = *(a2 + v6);
      if (v7 == 13 || ((result = 0, v7 != 15) ? (v8 = *(a2 + 96) > *(*(v4 + 8) + 1428)) : (v8 = 0), !v8 ? (v9 = 0) : (v9 = 1), v7 != 9 && (v9 & 1) == 0))
      {
        if (sub_38F6F0(a2))
        {
          if (sub_1131728(v4 + 3976, a2))
          {
            return 1;
          }

          v10 = *(a1 + 16);
          v11 = *v10;
          v12 = v10[1];
          if (*v10 == v12)
          {
            return 0;
          }

          if (*(a2 + 71) >= 0)
          {
            v13 = *(a2 + 71);
          }

          else
          {
            v13 = *(a2 + 56);
          }

          if ((*(a2 + 71) & 0x80) != 0)
          {
            v14 = *(a2 + 48);
            while (1)
            {
              v18 = *(v11 + 23);
              v19 = v18;
              if ((v18 & 0x80u) != 0)
              {
                v18 = *(v11 + 8);
              }

              if (v13 == v18)
              {
                v20 = v19 >= 0 ? v11 : *v11;
                if (!memcmp(v14, v20, v13))
                {
                  break;
                }
              }

              result = 0;
              v11 += 80;
              if (v11 == v12)
              {
                return result;
              }
            }
          }

          else
          {
            while (1)
            {
              v15 = *(v11 + 23);
              v16 = v15;
              if ((v15 & 0x80u) != 0)
              {
                v15 = *(v11 + 8);
              }

              if (v13 == v15)
              {
                v17 = v16 >= 0 ? v11 : *v11;
                if (!memcmp((a2 + 48), v17, v13))
                {
                  break;
                }
              }

              result = 0;
              v11 += 80;
              if (v11 == v12)
              {
                return result;
              }
            }
          }
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_7C5BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0 && *(a3 + 8) == 24)
  {
    v4 = **a3 == 0x6E65675F72657375 && *(*a3 + 8) == 0x695F646574617265;
    if (v4 && *(*a3 + 16) == 0x73746E656469636ELL)
    {

      sub_5291F4();
    }
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v16);
    v7 = sub_4A5C(&v16, "Got unhandled feature_key: ", 27);
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    sub_4A5C(v7, v9, v10);
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
        goto LABEL_38;
      }
    }

    else
    {
      if ((v26 & 8) == 0)
      {
        v11 = 0;
        v15 = 0;
LABEL_31:
        *(&__p + v11) = 0;
        sub_7E854(&__p, 3u);
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
LABEL_38:
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

    goto LABEL_31;
  }

  return result;
}

void sub_7C5EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_7C5F2C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v50 = a2 - 3;
  v51 = a2 - 2;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        return sub_7C6398(v10, v10 + 1, v9);
      case 4uLL:

        return sub_7C65CC(v10, v10 + 1, v10 + 2, v9);
      case 5uLL:

        return sub_7C677C(v10, v10 + 1, v10 + 2, v10 + 3, v9);
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_7C6994(v10, a2);
      }

      else
      {

        return sub_7C6B28(v10, a2);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return sub_7C7454(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[v13 >> 1];
    if (v13 < 0x81)
    {
      sub_7C6398(&v10[v13 >> 1], v10, v9);
      if (a5)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_7C6398(v10, &v10[v13 >> 1], v9);
      v16 = v10 + 1;
      v52 = v12;
      v17 = a2;
      v18 = a5;
      v19 = v9;
      v20 = &v8[v14];
      sub_7C6398(v8 + 1, v20 - 1, v51);
      sub_7C6398(v8 + 2, &v16[v14], v50);
      sub_7C6398(v20 - 1, v15, &v16[v14]);
      v21 = *v8;
      *v8 = *v20;
      *v20 = v21;
      v9 = v19;
      a5 = v18;
      a2 = v17;
      v12 = v52;
      if (a5)
      {
        goto LABEL_36;
      }
    }

    v22 = *(v8 - 1);
    v23 = *v8;
    v26 = *(v22 + 48);
    v24 = v22 + 48;
    v25 = v26;
    v27 = *(v24 + 23);
    if (v27 >= 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = v25;
    }

    if (v27 >= 0)
    {
      v29 = *(v24 + 23);
    }

    else
    {
      v29 = *(v24 + 8);
    }

    v32 = *(v23 + 48);
    v31 = v23 + 48;
    v30 = v32;
    v33 = *(v31 + 23);
    if (v33 >= 0)
    {
      v34 = v31;
    }

    else
    {
      v34 = v30;
    }

    if (v33 >= 0)
    {
      v35 = *(v31 + 23);
    }

    else
    {
      v35 = *(v31 + 8);
    }

    if (v35 >= v29)
    {
      v36 = v29;
    }

    else
    {
      v36 = v35;
    }

    v37 = memcmp(v28, v34, v36);
    if (v37)
    {
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v29 >= v35)
    {
LABEL_40:
      result = sub_7C6C60(v8, a2);
      v10 = result;
      goto LABEL_41;
    }

LABEL_36:
    v38 = sub_7C6F08(v8, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_39;
    }

    v40 = sub_7C7178(v8, v38);
    v10 = v38 + 1;
    result = sub_7C7178(v38 + 1, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v40)
    {
LABEL_39:
      result = sub_7C5F2C(v8, v38, a3, -v12, a5 & 1);
      v10 = v38 + 1;
LABEL_41:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v13 < 2)
  {
    return result;
  }

  if (v13 != 2)
  {
    goto LABEL_11;
  }

  v41 = *(a2 - 1);
  v42 = *v10;
  v43 = *(v41 + 71);
  if (v43 >= 0)
  {
    v44 = (v41 + 48);
  }

  else
  {
    v44 = *(v41 + 48);
  }

  if (v43 >= 0)
  {
    v45 = *(v41 + 71);
  }

  else
  {
    v45 = *(v41 + 56);
  }

  v46 = *(v42 + 71);
  if (v46 >= 0)
  {
    v47 = (v42 + 48);
  }

  else
  {
    v47 = *(v42 + 48);
  }

  if (v46 >= 0)
  {
    v48 = *(v42 + 71);
  }

  else
  {
    v48 = *(v42 + 56);
  }

  if (v48 >= v45)
  {
    v49 = v45;
  }

  else
  {
    v49 = v48;
  }

  result = memcmp(v44, v47, v49);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v45 >= v48)
  {
    return result;
  }

  *v10 = v41;
  *(a2 - 1) = v42;
  return result;
}

uint64_t sub_7C6398(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = *a1 + 48;
  v8 = *a2;
  v9 = *(*a2 + 71);
  if (v9 >= 0)
  {
    v10 = (*a2 + 48);
  }

  else
  {
    v10 = *(*a2 + 48);
  }

  if (v9 >= 0)
  {
    v11 = *(*a2 + 71);
  }

  else
  {
    v11 = *(*a2 + 56);
  }

  v12 = *(v6 + 71);
  if (v12 >= 0)
  {
    v13 = (*a1 + 48);
  }

  else
  {
    v13 = *(*a1 + 48);
  }

  if (v12 >= 0)
  {
    v14 = *(v6 + 71);
  }

  else
  {
    v14 = *(v6 + 56);
  }

  if (v14 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = memcmp(v10, v13, v15);
  if (v16)
  {
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v24 = *a3;
    v25 = *(*a3 + 71);
    if (v25 >= 0)
    {
      v26 = (*a3 + 48);
    }

    else
    {
      v26 = *(*a3 + 48);
    }

    if (v25 >= 0)
    {
      v27 = *(*a3 + 71);
    }

    else
    {
      v27 = *(*a3 + 56);
    }

    if (v11 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v11;
    }

    v29 = memcmp(v26, v10, v28);
    if (v29)
    {
      if ((v29 & 0x80000000) == 0)
      {
LABEL_42:
        *a1 = v8;
        *a2 = v6;
        v30 = *a3;
        v31 = *(*a3 + 71);
        if (v31 >= 0)
        {
          v32 = (*a3 + 48);
        }

        else
        {
          v32 = *(*a3 + 48);
        }

        if (v31 >= 0)
        {
          v33 = *(*a3 + 71);
        }

        else
        {
          v33 = *(*a3 + 56);
        }

        v34 = *(v6 + 71);
        if (v34 >= 0)
        {
          v35 = v7;
        }

        else
        {
          v35 = *(v6 + 48);
        }

        if (v34 >= 0)
        {
          v36 = *(v6 + 71);
        }

        else
        {
          v36 = *(v6 + 56);
        }

        if (v36 >= v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = v36;
        }

        v38 = memcmp(v32, v35, v37);
        if (v38)
        {
          if ((v38 & 0x80000000) == 0)
          {
            return 1;
          }
        }

        else if (v33 >= v36)
        {
          return 1;
        }

        *a2 = v30;
LABEL_83:
        *a3 = v6;
        return 1;
      }
    }

    else if (v27 >= v11)
    {
      goto LABEL_42;
    }

    *a1 = v24;
    goto LABEL_83;
  }

  if (v11 < v14)
  {
    goto LABEL_31;
  }

LABEL_18:
  v17 = *a3;
  v18 = *(*a3 + 71);
  if (v18 >= 0)
  {
    v19 = (*a3 + 48);
  }

  else
  {
    v19 = *(*a3 + 48);
  }

  if (v18 >= 0)
  {
    v20 = *(*a3 + 71);
  }

  else
  {
    v20 = *(*a3 + 56);
  }

  if (v11 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v11;
  }

  v22 = memcmp(v19, v10, v21);
  if (v22)
  {
    if ((v22 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (v20 >= v11)
  {
    return 0;
  }

  *a2 = v17;
  *a3 = v8;
  v39 = *a2;
  v40 = *a1;
  v41 = *(*a2 + 71);
  if (v41 >= 0)
  {
    v42 = (*a2 + 48);
  }

  else
  {
    v42 = *(*a2 + 48);
  }

  if (v41 >= 0)
  {
    v43 = *(*a2 + 71);
  }

  else
  {
    v43 = *(*a2 + 56);
  }

  v44 = *(v40 + 71);
  if (v44 >= 0)
  {
    v45 = (v40 + 48);
  }

  else
  {
    v45 = *(v40 + 48);
  }

  if (v44 >= 0)
  {
    v46 = *(v40 + 71);
  }

  else
  {
    v46 = *(v40 + 56);
  }

  if (v46 >= v43)
  {
    v47 = v43;
  }

  else
  {
    v47 = v46;
  }

  v48 = memcmp(v42, v45, v47);
  if (v48)
  {
    if (v48 < 0)
    {
      goto LABEL_85;
    }
  }

  else if (v43 < v46)
  {
LABEL_85:
    *a1 = v39;
    *a2 = v40;
  }

  return 1;
}

uint64_t sub_7C65CC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  sub_7C6398(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = *(*a4 + 71);
  if (v10 >= 0)
  {
    v11 = (*a4 + 48);
  }

  else
  {
    v11 = *(*a4 + 48);
  }

  if (v10 >= 0)
  {
    v12 = *(*a4 + 71);
  }

  else
  {
    v12 = *(*a4 + 56);
  }

  v13 = *(v9 + 71);
  if (v13 >= 0)
  {
    v14 = (v9 + 48);
  }

  else
  {
    v14 = *(v9 + 48);
  }

  if (v13 >= 0)
  {
    v15 = *(v9 + 71);
  }

  else
  {
    v15 = *(v9 + 56);
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  result = memcmp(v11, v14, v16);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 >= v15)
  {
    return result;
  }

  *a3 = v8;
  *a4 = v9;
  v18 = *a3;
  v19 = *a2;
  v20 = *(*a3 + 71);
  if (v20 >= 0)
  {
    v21 = (*a3 + 48);
  }

  else
  {
    v21 = *(*a3 + 48);
  }

  if (v20 >= 0)
  {
    v22 = *(*a3 + 71);
  }

  else
  {
    v22 = *(*a3 + 56);
  }

  v23 = *(v19 + 71);
  if (v23 >= 0)
  {
    v24 = (v19 + 48);
  }

  else
  {
    v24 = *(v19 + 48);
  }

  if (v23 >= 0)
  {
    v25 = *(v19 + 71);
  }

  else
  {
    v25 = *(v19 + 56);
  }

  if (v25 >= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  result = memcmp(v21, v24, v26);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v22 >= v25)
  {
    return result;
  }

  *a2 = v18;
  *a3 = v19;
  v27 = *a2;
  v28 = *a1;
  v29 = *(*a2 + 71);
  if (v29 >= 0)
  {
    v30 = (*a2 + 48);
  }

  else
  {
    v30 = *(*a2 + 48);
  }

  if (v29 >= 0)
  {
    v31 = *(*a2 + 71);
  }

  else
  {
    v31 = *(*a2 + 56);
  }

  v32 = *(v28 + 71);
  if (v32 >= 0)
  {
    v33 = (v28 + 48);
  }

  else
  {
    v33 = *(v28 + 48);
  }

  if (v32 >= 0)
  {
    v34 = *(v28 + 71);
  }

  else
  {
    v34 = *(v28 + 56);
  }

  if (v34 >= v31)
  {
    v35 = v31;
  }

  else
  {
    v35 = v34;
  }

  result = memcmp(v30, v33, v35);
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_58;
    }
  }

  else if (v31 < v34)
  {
LABEL_58:
    *a1 = v27;
    *a2 = v28;
  }

  return result;
}

uint64_t sub_7C677C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  sub_7C65CC(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = *(*a5 + 71);
  if (v12 >= 0)
  {
    v13 = (*a5 + 48);
  }

  else
  {
    v13 = *(*a5 + 48);
  }

  if (v12 >= 0)
  {
    v14 = *(*a5 + 71);
  }

  else
  {
    v14 = *(*a5 + 56);
  }

  v15 = *(v11 + 71);
  if (v15 >= 0)
  {
    v16 = (v11 + 48);
  }

  else
  {
    v16 = *(v11 + 48);
  }

  if (v15 >= 0)
  {
    v17 = *(v11 + 71);
  }

  else
  {
    v17 = *(v11 + 56);
  }

  if (v17 >= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v17;
  }

  result = memcmp(v13, v16, v18);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v14 >= v17)
  {
    return result;
  }

  *a4 = v10;
  *a5 = v11;
  v20 = *a4;
  v21 = *a3;
  v22 = *(*a4 + 71);
  if (v22 >= 0)
  {
    v23 = (*a4 + 48);
  }

  else
  {
    v23 = *(*a4 + 48);
  }

  if (v22 >= 0)
  {
    v24 = *(*a4 + 71);
  }

  else
  {
    v24 = *(*a4 + 56);
  }

  v25 = *(v21 + 71);
  if (v25 >= 0)
  {
    v26 = (v21 + 48);
  }

  else
  {
    v26 = *(v21 + 48);
  }

  if (v25 >= 0)
  {
    v27 = *(v21 + 71);
  }

  else
  {
    v27 = *(v21 + 56);
  }

  if (v27 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  result = memcmp(v23, v26, v28);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v24 >= v27)
  {
    return result;
  }

  *a3 = v20;
  *a4 = v21;
  v29 = *a3;
  v30 = *a2;
  v31 = *(*a3 + 71);
  if (v31 >= 0)
  {
    v32 = (*a3 + 48);
  }

  else
  {
    v32 = *(*a3 + 48);
  }

  if (v31 >= 0)
  {
    v33 = *(*a3 + 71);
  }

  else
  {
    v33 = *(*a3 + 56);
  }

  v34 = *(v30 + 71);
  if (v34 >= 0)
  {
    v35 = (v30 + 48);
  }

  else
  {
    v35 = *(v30 + 48);
  }

  if (v34 >= 0)
  {
    v36 = *(v30 + 71);
  }

  else
  {
    v36 = *(v30 + 56);
  }

  if (v36 >= v33)
  {
    v37 = v33;
  }

  else
  {
    v37 = v36;
  }

  result = memcmp(v32, v35, v37);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v33 >= v36)
  {
    return result;
  }

  *a2 = v29;
  *a3 = v30;
  v38 = *a2;
  v39 = *a1;
  v40 = *(*a2 + 71);
  if (v40 >= 0)
  {
    v41 = (*a2 + 48);
  }

  else
  {
    v41 = *(*a2 + 48);
  }

  if (v40 >= 0)
  {
    v42 = *(*a2 + 71);
  }

  else
  {
    v42 = *(*a2 + 56);
  }

  v43 = *(v39 + 71);
  if (v43 >= 0)
  {
    v44 = (v39 + 48);
  }

  else
  {
    v44 = *(v39 + 48);
  }

  if (v43 >= 0)
  {
    v45 = *(v39 + 71);
  }

  else
  {
    v45 = *(v39 + 56);
  }

  if (v45 >= v42)
  {
    v46 = v42;
  }

  else
  {
    v46 = v45;
  }

  result = memcmp(v41, v44, v46);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v42 >= v45)
  {
    return result;
  }

  *a1 = v38;
  *a2 = v39;
  return result;
}

void *sub_7C6994(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = a2;
    v3 = result;
    v4 = result + 1;
    if (result + 1 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = v6;
        v10 = *v6;
        v9 = v6[1];
        v6 = v4;
        v11 = *(v9 + 71);
        if (v11 >= 0)
        {
          v12 = (v9 + 48);
        }

        else
        {
          v12 = *(v9 + 48);
        }

        if (v11 >= 0)
        {
          v13 = *(v9 + 71);
        }

        else
        {
          v13 = *(v9 + 56);
        }

        v14 = *(v10 + 71);
        if (v14 >= 0)
        {
          v15 = (v10 + 48);
        }

        else
        {
          v15 = *(v10 + 48);
        }

        if (v14 >= 0)
        {
          v16 = *(v10 + 71);
        }

        else
        {
          v16 = *(v10 + 56);
        }

        if (v16 >= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = v16;
        }

        result = memcmp(v12, v15, v17);
        if (result)
        {
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_7;
          }
        }

        else if (v13 >= v16)
        {
          goto LABEL_7;
        }

        v8[1] = v10;
        v7 = v3;
        if (v8 == v3)
        {
          goto LABEL_6;
        }

        v28 = v6;
        v18 = v5;
        while (1)
        {
          v19 = *(v3 + v18 - 8);
          v20 = *(v9 + 71);
          v21 = v20 >= 0 ? (v9 + 48) : *(v9 + 48);
          v22 = v20 >= 0 ? *(v9 + 71) : *(v9 + 56);
          v23 = *(v19 + 71);
          v24 = v23 >= 0 ? (v19 + 48) : *(v19 + 48);
          v25 = v23 >= 0 ? *(v19 + 71) : *(v19 + 56);
          v26 = v25 >= v22 ? v22 : v25;
          result = memcmp(v21, v24, v26);
          if (!result)
          {
            break;
          }

          if ((result & 0x80000000) == 0)
          {
            v7 = v8;
            goto LABEL_5;
          }

LABEL_30:
          --v8;
          *(v3 + v18) = v19;
          v18 -= 8;
          if (!v18)
          {
            v7 = v3;
            goto LABEL_5;
          }
        }

        if (v22 < v25)
        {
          goto LABEL_30;
        }

        v7 = (v3 + v18);
LABEL_5:
        v2 = a2;
        v6 = v28;
LABEL_6:
        *v7 = v9;
LABEL_7:
        v4 = v6 + 1;
        v5 += 8;
      }

      while (v6 + 1 != v2);
    }
  }

  return result;
}

void *sub_7C6B28(void *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    while (v3 + 1 != a2)
    {
      v4 = v3;
      v6 = *v3;
      v5 = v3[1];
      ++v3;
      v7 = *(v5 + 71);
      if (v7 >= 0)
      {
        v8 = (v5 + 48);
      }

      else
      {
        v8 = *(v5 + 48);
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 71);
      }

      else
      {
        v9 = *(v5 + 56);
      }

      v10 = *(v6 + 71);
      if (v10 >= 0)
      {
        v11 = (v6 + 48);
      }

      else
      {
        v11 = *(v6 + 48);
      }

      if (v10 >= 0)
      {
        v12 = *(v6 + 71);
      }

      else
      {
        v12 = *(v6 + 56);
      }

      if (v12 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v12;
      }

      result = memcmp(v8, v11, v13);
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else if (v9 < v12)
      {
        do
        {
LABEL_26:
          while (1)
          {
            v14 = v4;
            v16 = *--v4;
            v15 = v16;
            v4[2] = v6;
            v6 = v16;
            v17 = *(v5 + 71);
            v18 = v17 >= 0 ? (v5 + 48) : *(v5 + 48);
            v19 = v17 >= 0 ? *(v5 + 71) : *(v5 + 56);
            v20 = *(v15 + 71);
            v21 = *(v15 + 56);
            v24 = *(v15 + 48);
            v22 = v15 + 48;
            v23 = v24;
            v25 = ((v20 & 0x80u) == 0 ? v22 : v23);
            v26 = (v20 & 0x80u) == 0 ? v20 : v21;
            v27 = v26 >= v19 ? v19 : v26;
            result = memcmp(v18, v25, v27);
            if (result)
            {
              break;
            }

            if (v19 >= v26)
            {
              goto LABEL_3;
            }
          }
        }

        while ((result & 0x80000000) != 0);
LABEL_3:
        *v14 = v5;
      }
    }
  }

  return result;
}

unint64_t sub_7C6C60(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = *(a2 - 1);
  v6 = *(*a1 + 71);
  v51 = *a1 + 48;
  if (v6 >= 0)
  {
    v7 = (*a1 + 48);
  }

  else
  {
    v7 = *(*a1 + 48);
  }

  if (v6 >= 0)
  {
    v8 = *(*a1 + 71);
  }

  else
  {
    v8 = *(*a1 + 56);
  }

  v9 = *(v5 + 71);
  v10 = *(v5 + 48);
  v11 = *(v5 + 56);
  if ((v9 & 0x80u) == 0)
  {
    v12 = (v5 + 48);
  }

  else
  {
    v12 = *(v5 + 48);
  }

  if ((v9 & 0x80u) == 0)
  {
    v13 = *(v5 + 71);
  }

  else
  {
    v13 = *(v5 + 56);
  }

  if (v13 >= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v7, v12, v14);
  v52 = a1;
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_35:
    for (i = (a1 + 1); ; i += 8)
    {
      v22 = *(*i + 71);
      if (v22 >= 0)
      {
        v23 = (*i + 48);
      }

      else
      {
        v23 = *(*i + 48);
      }

      if (v22 >= 0)
      {
        v24 = *(*i + 71);
      }

      else
      {
        v24 = *(*i + 56);
      }

      if (v24 >= v8)
      {
        v25 = v8;
      }

      else
      {
        v25 = v24;
      }

      v26 = memcmp(v7, v23, v25);
      if (v26)
      {
        if (v26 < 0)
        {
          goto LABEL_49;
        }
      }

      else if (v8 < v24)
      {
        goto LABEL_49;
      }
    }
  }

  if (v8 < v13)
  {
    goto LABEL_35;
  }

LABEL_18:
  for (i = (a1 + 1); i < v2; i += 8)
  {
    v17 = *(*i + 71);
    if (v17 >= 0)
    {
      v18 = (*i + 48);
    }

    else
    {
      v18 = *(*i + 48);
    }

    if (v17 >= 0)
    {
      v19 = *(*i + 71);
    }

    else
    {
      v19 = *(*i + 56);
    }

    if (v19 >= v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = v19;
    }

    v21 = memcmp(v7, v18, v20);
    if (v21)
    {
      if (v21 < 0)
      {
        break;
      }
    }

    else if (v8 < v19)
    {
      break;
    }
  }

LABEL_49:
  if (i < v2)
  {
    --v2;
    while (1)
    {
      if ((v9 & 0x80u) == 0)
      {
        v28 = (v5 + 48);
      }

      else
      {
        v28 = v10;
      }

      if ((v9 & 0x80u) == 0)
      {
        v11 = v9;
      }

      if (v11 >= v8)
      {
        v29 = v8;
      }

      else
      {
        v29 = v11;
      }

      v30 = memcmp(v7, v28, v29);
      if (v30)
      {
        if ((v30 & 0x80000000) == 0)
        {
          break;
        }
      }

      else if (v8 >= v11)
      {
        break;
      }

      v27 = *--v2;
      v5 = v27;
      v9 = *(v27 + 71);
      v10 = *(v27 + 48);
      v11 = *(v27 + 56);
    }
  }

  if (i < v2)
  {
    v31 = *i;
    v32 = *v2;
    do
    {
      *i = v32;
      i += 8;
      *v2 = v31;
      v33 = *(v4 + 71);
      if (v33 >= 0)
      {
        v34 = v51;
      }

      else
      {
        v34 = *(v4 + 48);
      }

      if (v33 >= 0)
      {
        v35 = *(v4 + 71);
      }

      else
      {
        v35 = *(v4 + 56);
      }

      while (1)
      {
        v31 = *i;
        v36 = *(*i + 71);
        v37 = v36 >= 0 ? (*i + 48) : *(*i + 48);
        v38 = v36 >= 0 ? *(*i + 71) : *(*i + 56);
        v39 = v38 >= v35 ? v35 : v38;
        v40 = memcmp(v34, v37, v39);
        if (v40)
        {
          break;
        }

        if (v35 < v38)
        {
          goto LABEL_87;
        }

LABEL_73:
        i += 8;
      }

      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      do
      {
LABEL_87:
        while (1)
        {
          v41 = *--v2;
          v32 = v41;
          v42 = *(v41 + 71);
          v43 = v41 + 48;
          v44 = *(v41 + 48);
          v45 = *(v41 + 56);
          v46 = ((v42 & 0x80u) == 0 ? v43 : v44);
          v47 = (v42 & 0x80u) == 0 ? v42 : v45;
          v48 = v47 >= v35 ? v35 : v47;
          v49 = memcmp(v34, v46, v48);
          if (v49)
          {
            break;
          }

          if (v35 >= v47)
          {
            goto LABEL_65;
          }
        }
      }

      while (v49 < 0);
LABEL_65:
      ;
    }

    while (i < v2);
  }

  if ((i - 8) != v52)
  {
    *v52 = *(i - 8);
  }

  *(i - 8) = v4;
  return i;
}

void *sub_7C6F08(void *a1, void *a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = *(*a1 + 71);
  v57 = *a1 + 48;
  if (v6 >= 0)
  {
    v7 = (*a1 + 48);
  }

  else
  {
    v7 = *(*a1 + 48);
  }

  if (v6 >= 0)
  {
    v8 = *(*a1 + 71);
  }

  else
  {
    v8 = *(*a1 + 56);
  }

  while (1)
  {
    v9 = a1[v4 + 1];
    v10 = *(v9 + 71);
    v11 = v10 >= 0 ? (v9 + 48) : *(v9 + 48);
    v12 = v10 >= 0 ? *(v9 + 71) : *(v9 + 56);
    v13 = v8 >= v12 ? v12 : v8;
    v14 = memcmp(v11, v7, v13);
    if (v14)
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_20;
    }

LABEL_8:
    ++v4;
  }

  if (v14 < 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  v15 = &a1[v4];
  v16 = &a1[v4 + 1];
  if (v4 * 8)
  {
    do
    {
      while (1)
      {
        v17 = *--a2;
        v18 = v17 + 48;
        v19 = *(v17 + 48);
        v20 = *(v17 + 71);
        v21 = *(v17 + 56);
        v22 = ((v20 & 0x80u) == 0 ? v18 : v19);
        v23 = (v20 & 0x80u) == 0 ? v20 : v21;
        v24 = v8 >= v23 ? v23 : v8;
        v25 = memcmp(v22, v7, v24);
        if (v25)
        {
          break;
        }

        if (v23 < v8)
        {
          goto LABEL_34;
        }
      }
    }

    while ((v25 & 0x80000000) == 0);
  }

  else
  {
    do
    {
      if (v16 >= a2)
      {
        break;
      }

      while (1)
      {
        v46 = *--a2;
        v47 = v46 + 48;
        v48 = *(v46 + 48);
        v49 = *(v46 + 71);
        v50 = *(v46 + 56);
        v51 = ((v49 & 0x80u) == 0 ? v47 : v48);
        v52 = (v49 & 0x80u) == 0 ? v49 : v50;
        v53 = v8 >= v52 ? v52 : v8;
        v54 = memcmp(v51, v7, v53);
        if (v54)
        {
          break;
        }

        if (v52 < v8 || v16 >= a2)
        {
          goto LABEL_34;
        }
      }
    }

    while ((v54 & 0x80000000) == 0);
  }

LABEL_34:
  if (v16 >= a2)
  {
    goto LABEL_89;
  }

  v26 = *a2;
  v27 = &a1[v4 + 1];
  v28 = a2;
  while (2)
  {
    *v27 = v26;
    v27 += 8;
    *v28 = v9;
    v29 = *(v5 + 71);
    if (v29 >= 0)
    {
      v30 = v57;
    }

    else
    {
      v30 = *(v5 + 48);
    }

    if (v29 >= 0)
    {
      v31 = *(v5 + 71);
    }

    else
    {
      v31 = *(v5 + 56);
    }

    while (2)
    {
      v9 = *v27;
      v32 = *(*v27 + 71);
      if (v32 >= 0)
      {
        v33 = (*v27 + 48);
      }

      else
      {
        v33 = *(*v27 + 48);
      }

      if (v32 >= 0)
      {
        v34 = *(*v27 + 71);
      }

      else
      {
        v34 = *(*v27 + 56);
      }

      if (v31 >= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v31;
      }

      v36 = memcmp(v33, v30, v35);
      if (!v36)
      {
        if (v34 >= v31)
        {
          goto LABEL_58;
        }

        goto LABEL_44;
      }

      if (v36 < 0)
      {
LABEL_44:
        v27 += 8;
        continue;
      }

      break;
    }

    do
    {
LABEL_58:
      while (1)
      {
        v37 = *--v28;
        v26 = v37;
        v38 = *(v37 + 71);
        v39 = v37 + 48;
        v40 = *(v37 + 48);
        v41 = *(v37 + 56);
        v42 = ((v38 & 0x80u) == 0 ? v39 : v40);
        v43 = (v38 & 0x80u) == 0 ? v38 : v41;
        v44 = v31 >= v43 ? v43 : v31;
        v45 = memcmp(v42, v30, v44);
        if (v45)
        {
          break;
        }

        if (v43 < v31)
        {
          goto LABEL_36;
        }
      }
    }

    while ((v45 & 0x80000000) == 0);
LABEL_36:
    if (v27 < v28)
    {
      continue;
    }

    break;
  }

  v15 = (v27 - 8);
LABEL_89:
  if (v15 != a1)
  {
    *a1 = *v15;
  }

  *v15 = v5;
  return v15;
}

BOOL sub_7C7178(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        sub_7C6398(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        sub_7C65CC(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_7C677C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = *(v5 + 71);
      if (v7 >= 0)
      {
        v8 = (v5 + 48);
      }

      else
      {
        v8 = *(v5 + 48);
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 71);
      }

      else
      {
        v9 = *(v5 + 56);
      }

      v10 = *(v6 + 71);
      if (v10 >= 0)
      {
        v11 = (v6 + 48);
      }

      else
      {
        v11 = *(v6 + 48);
      }

      if (v10 >= 0)
      {
        v12 = *(v6 + 71);
      }

      else
      {
        v12 = *(v6 + 56);
      }

      if (v12 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v12;
      }

      v14 = memcmp(v8, v11, v13);
      if (v14)
      {
        if ((v14 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v9 >= v12)
      {
        return 1;
      }

      *a1 = v5;
      *(v2 - 1) = v6;
      return 1;
    }
  }

  v15 = a1 + 2;
  sub_7C6398(a1, a1 + 1, a1 + 2);
  v16 = a1 + 3;
  if (a1 + 3 == v2)
  {
    return 1;
  }

  v17 = 0;
  v40 = 0;
  v39 = v2;
  while (2)
  {
    v18 = *v16;
    v19 = *v16 + 48;
    v20 = *v15;
    v21 = *(*v16 + 71);
    if (v21 >= 0)
    {
      v22 = (*v16 + 48);
    }

    else
    {
      v22 = *(*v16 + 48);
    }

    if (v21 >= 0)
    {
      v23 = *(*v16 + 71);
    }

    else
    {
      v23 = *(*v16 + 56);
    }

    v24 = *(v20 + 71);
    if (v24 >= 0)
    {
      v25 = (v20 + 48);
    }

    else
    {
      v25 = *(v20 + 48);
    }

    if (v24 >= 0)
    {
      v26 = *(v20 + 71);
    }

    else
    {
      v26 = *(v20 + 56);
    }

    if (v26 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v28 = memcmp(v22, v25, v27);
    if (v28)
    {
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (v23 >= v26)
    {
      goto LABEL_32;
    }

    *v16 = v20;
    v29 = v17;
    while (1)
    {
      v30 = *(a1 + v29 + 8);
      v31 = *(v18 + 71);
      if (v31 >= 0)
      {
        v32 = v19;
      }

      else
      {
        v32 = *(v18 + 48);
      }

      if (v31 >= 0)
      {
        v33 = *(v18 + 71);
      }

      else
      {
        v33 = *(v18 + 56);
      }

      v34 = *(v30 + 71);
      if (v34 >= 0)
      {
        v35 = (v30 + 48);
      }

      else
      {
        v35 = *(v30 + 48);
      }

      if (v34 >= 0)
      {
        v36 = *(v30 + 71);
      }

      else
      {
        v36 = *(v30 + 56);
      }

      if (v36 >= v33)
      {
        v37 = v33;
      }

      else
      {
        v37 = v36;
      }

      v38 = memcmp(v32, v35, v37);
      if (!v38)
      {
        if (v33 >= v36)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if ((v38 & 0x80000000) == 0)
      {
        break;
      }

LABEL_54:
      --v15;
      *(a1 + v29 + 16) = v30;
      v29 -= 8;
      if (v29 == -16)
      {
        v15 = a1;
        goto LABEL_31;
      }
    }

    v15 = (a1 + v29 + 16);
LABEL_31:
    *v15 = v18;
    ++v40;
    v2 = v39;
    if (v40 != 8)
    {
LABEL_32:
      v15 = v16;
      v17 += 8;
      if (++v16 == v2)
      {
        return 1;
      }

      continue;
    }

    return v16 + 1 == v39;
  }
}

void *sub_7C7454(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_7C76D0(v7, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; ++i)
      {
        v13 = *i;
        v14 = *v7;
        v15 = *(*i + 71);
        if (v15 >= 0)
        {
          v16 = (*i + 48);
        }

        else
        {
          v16 = *(*i + 48);
        }

        if (v15 >= 0)
        {
          v17 = *(*i + 71);
        }

        else
        {
          v17 = *(*i + 56);
        }

        v18 = *(v14 + 71);
        if (v18 >= 0)
        {
          v19 = (v14 + 48);
        }

        else
        {
          v19 = *(v14 + 48);
        }

        if (v18 >= 0)
        {
          v20 = *(v14 + 71);
        }

        else
        {
          v20 = *(v14 + 56);
        }

        if (v20 >= v17)
        {
          v21 = v17;
        }

        else
        {
          v21 = v20;
        }

        v22 = memcmp(v16, v19, v21);
        if (v22)
        {
          if ((v22 & 0x80000000) == 0)
          {
            continue;
          }
        }

        else if (v17 >= v20)
        {
          continue;
        }

        *i = v14;
        *v7 = v13;
        sub_7C76D0(v7, a4, v8, v7);
      }
    }

    if (v8 >= 2)
    {
      v48 = a4;
      v49 = v7;
      do
      {
        while (2)
        {
          v51 = v6;
          v24 = 0;
          v50 = *v7;
          v25 = v7;
          do
          {
            v26 = v25;
            v27 = &v25[v24];
            v28 = v27 + 1;
            v29 = (2 * v24) | 1;
            v24 = 2 * v24 + 2;
            if (v24 >= v8)
            {
LABEL_37:
              v25 = v28;
              v24 = v29;
              goto LABEL_38;
            }

            v31 = v27[2];
            v25 = v27 + 2;
            v30 = v31;
            v32 = *(v25 - 1);
            v35 = *(v32 + 48);
            v33 = v32 + 48;
            v34 = v35;
            v36 = *(v33 + 23);
            if (v36 >= 0)
            {
              v37 = v33;
            }

            else
            {
              v37 = v34;
            }

            if (v36 >= 0)
            {
              v38 = *(v33 + 23);
            }

            else
            {
              v38 = *(v33 + 8);
            }

            v41 = *(v30 + 48);
            v39 = v30 + 48;
            v40 = v41;
            v42 = *(v39 + 23);
            if (v42 >= 0)
            {
              v43 = v39;
            }

            else
            {
              v43 = v40;
            }

            if (v42 >= 0)
            {
              v44 = *(v39 + 23);
            }

            else
            {
              v44 = *(v39 + 8);
            }

            if (v44 >= v38)
            {
              v45 = v38;
            }

            else
            {
              v45 = v44;
            }

            v46 = memcmp(v37, v43, v45);
            if (v46)
            {
              if ((v46 & 0x80000000) == 0)
              {
                goto LABEL_37;
              }
            }

            else if (v38 >= v44)
            {
              goto LABEL_37;
            }

LABEL_38:
            *v26 = *v25;
          }

          while (v24 <= ((v8 - 2) >> 1));
          v6 = v51 - 1;
          if (v25 != v51 - 1)
          {
            *v25 = *v6;
            v7 = v49;
            *v6 = v50;
            sub_7C795C(v49, (v25 + 1), v48, (v25 - v49 + 8) >> 3);
            v23 = v8-- <= 2;
            if (v23)
            {
              return i;
            }

            continue;
          }

          break;
        }

        v7 = v49;
        *v25 = v50;
        v23 = v8-- <= 2;
      }

      while (!v23);
    }

    return i;
  }

  return a3;
}

uint64_t sub_7C76D0(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v5 = result;
  v61 = v4 >> 1;
  if ((v4 >> 1) < (a4 - result) >> 3)
  {
    return result;
  }

  v7 = (a4 - result) >> 2;
  v8 = v7 + 1;
  v9 = (result + 8 * (v7 + 1));
  v10 = v7 + 2;
  if (v7 + 2 >= a3)
  {
    goto LABEL_21;
  }

  v11 = a4;
  v13 = v9 + 1;
  v12 = v9[1];
  v14 = *(*v9 + 71);
  if (v14 >= 0)
  {
    v15 = (*v9 + 48);
  }

  else
  {
    v15 = *(*v9 + 48);
  }

  if (v14 >= 0)
  {
    v16 = *(*v9 + 71);
  }

  else
  {
    v16 = *(*v9 + 56);
  }

  v19 = *(v12 + 48);
  v18 = v12 + 48;
  v17 = v19;
  v20 = *(v18 + 23);
  if (v20 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  if (v20 >= 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = *(v18 + 8);
  }

  if (v22 >= v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = v22;
  }

  v24 = memcmp(v15, v21, v23);
  if (v24)
  {
    a4 = v11;
    if (v24 < 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  a4 = v11;
  if (v16 >= v22)
  {
LABEL_21:
    v13 = v9;
    v10 = v8;
  }

LABEL_22:
  v25 = a4;
  v26 = *a4;
  v27 = *v13;
  v28 = *(*v13 + 71);
  if (v28 >= 0)
  {
    v29 = (*v13 + 48);
  }

  else
  {
    v29 = *(*v13 + 48);
  }

  if (v28 >= 0)
  {
    v30 = *(*v13 + 71);
  }

  else
  {
    v30 = *(*v13 + 56);
  }

  v31 = *(v26 + 71);
  v60 = *a4 + 48;
  if (v31 >= 0)
  {
    v32 = (*a4 + 48);
  }

  else
  {
    v32 = *(*a4 + 48);
  }

  if (v31 >= 0)
  {
    v33 = *(v26 + 71);
  }

  else
  {
    v33 = *(v26 + 56);
  }

  if (v33 >= v30)
  {
    v34 = v30;
  }

  else
  {
    v34 = v33;
  }

  result = memcmp(v29, v32, v34);
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else if (v30 < v33)
  {
    return result;
  }

  *v25 = v27;
  if (v61 >= v10)
  {
    while (1)
    {
      v37 = (2 * v10) | 1;
      v38 = v5;
      v39 = (v5 + 8 * v37);
      v10 = 2 * v10 + 2;
      if (v10 >= a3)
      {
        goto LABEL_66;
      }

      v35 = v39 + 1;
      v40 = v39[1];
      v41 = *(*v39 + 71);
      v42 = v41 >= 0 ? (*v39 + 48) : *(*v39 + 48);
      v43 = v41 >= 0 ? *(*v39 + 71) : *(*v39 + 56);
      v46 = *(v40 + 48);
      v45 = v40 + 48;
      v44 = v46;
      v47 = *(v45 + 23);
      v48 = (v47 >= 0 ? v45 : v44);
      v49 = v47 >= 0 ? *(v45 + 23) : *(v45 + 8);
      v50 = v49 >= v43 ? v43 : v49;
      v51 = memcmp(v42, v48, v50);
      if (v51)
      {
        break;
      }

      if (v43 >= v49)
      {
        goto LABEL_66;
      }

LABEL_67:
      v52 = *v35;
      v53 = *(*v35 + 71);
      if (v53 >= 0)
      {
        v54 = (*v35 + 48);
      }

      else
      {
        v54 = *(*v35 + 48);
      }

      if (v53 >= 0)
      {
        v55 = *(*v35 + 71);
      }

      else
      {
        v55 = *(*v35 + 56);
      }

      v56 = *(v26 + 71);
      if (v56 >= 0)
      {
        v57 = v60;
      }

      else
      {
        v57 = *(v26 + 48);
      }

      if (v56 >= 0)
      {
        v58 = *(v26 + 71);
      }

      else
      {
        v58 = *(v26 + 56);
      }

      if (v58 >= v55)
      {
        v59 = v55;
      }

      else
      {
        v59 = v58;
      }

      result = memcmp(v54, v57, v59);
      if (result)
      {
        v5 = v38;
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v36 = v55 >= v58;
        v5 = v38;
        if (!v36)
        {
          goto LABEL_42;
        }
      }

      *v13 = v52;
      v13 = v35;
      if (v61 < v10)
      {
        goto LABEL_43;
      }
    }

    if (v51 < 0)
    {
      goto LABEL_67;
    }

LABEL_66:
    v35 = v39;
    v10 = v37;
    goto LABEL_67;
  }

LABEL_42:
  v35 = v13;
LABEL_43:
  *v35 = v26;
  return result;
}

uint64_t sub_7C795C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = *(a2 - 8);
    v10 = *v8;
    v11 = *(*v8 + 71);
    if (v11 >= 0)
    {
      v12 = (*v8 + 48);
    }

    else
    {
      v12 = *(*v8 + 48);
    }

    if (v11 >= 0)
    {
      v13 = *(*v8 + 71);
    }

    else
    {
      v13 = *(*v8 + 56);
    }

    v14 = *(v9 + 71);
    if (v14 >= 0)
    {
      v15 = (v9 + 48);
    }

    else
    {
      v15 = *(v9 + 48);
    }

    if (v14 >= 0)
    {
      v16 = *(v9 + 71);
    }

    else
    {
      v16 = *(v9 + 56);
    }

    if (v16 >= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v16;
    }

    result = memcmp(v12, v15, v17);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v13 >= v16)
    {
      return result;
    }

    *(a2 - 8) = v10;
    if (v4 >= 2)
    {
      while (1)
      {
        v18 = v7 - 1;
        v7 = (v7 - 1) >> 1;
        v19 = (v6 + 8 * v7);
        v20 = *v19;
        v21 = *(*v19 + 71);
        if (v21 >= 0)
        {
          v22 = (*v19 + 48);
        }

        else
        {
          v22 = *(*v19 + 48);
        }

        if (v21 >= 0)
        {
          v23 = *(*v19 + 71);
        }

        else
        {
          v23 = *(*v19 + 56);
        }

        v24 = *(v9 + 71);
        if (v24 >= 0)
        {
          v25 = (v9 + 48);
        }

        else
        {
          v25 = *(v9 + 48);
        }

        if (v24 >= 0)
        {
          v26 = *(v9 + 71);
        }

        else
        {
          v26 = *(v9 + 56);
        }

        if (v26 >= v23)
        {
          v27 = v23;
        }

        else
        {
          v27 = v26;
        }

        result = memcmp(v22, v25, v27);
        if (result)
        {
          if ((result & 0x80000000) == 0)
          {
            break;
          }
        }

        else if (v23 >= v26)
        {
          break;
        }

        *v8 = v20;
        v8 = (v6 + 8 * v7);
        if (v18 <= 1)
        {
          goto LABEL_43;
        }
      }
    }

    v19 = v8;
LABEL_43:
    *v19 = v9;
  }

  return result;
}

uint64_t *sub_7C7AA4(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      if (sub_4C2B70((v8 + 2)) && sub_4C2C84((v8 + 2)))
      {
        sub_3A9668((v8 + 2), *(*a4 + 8), v11);
        v10 = a3[1];
        if (v10 < a3[2])
        {
          v9 = sub_529850(v10, v11) + 1120;
        }

        else
        {
          v9 = sub_7C00F0(a3, v11);
        }

        a3[1] = v9;
        sub_3A9518(v11);
      }

      v8 = *v8;
    }

    while (v8 != a2);
  }

  return a3;
}

__n128 sub_7C7BF4(uint64_t a1, uint64_t a2)
{
  *a2 = off_266C980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_7C7C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11DrivingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11DrivingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11DrivingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11DrivingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_7C7D28(uint64_t a1, uint64_t a2)
{
  *a2 = off_266CA00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_7C7D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing20RouteIncidentMatcherINS0_8RouteLegINS0_11DrivingModeEEENS0_29ETAGuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing20RouteIncidentMatcherINS0_8RouteLegINS0_11DrivingModeEEENS0_29ETAGuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing20RouteIncidentMatcherINS0_8RouteLegINS0_11DrivingModeEEENS0_29ETAGuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing20RouteIncidentMatcherINS0_8RouteLegINS0_11DrivingModeEEENS0_29ETAGuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_7C7DE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = sub_38F51C(a2, 0);
  if (result)
  {
    result = sub_38F79C(a2, **a1);
    if (result)
    {
      v6 = 96;
      if (*(a2 + 232))
      {
        v6 = 228;
      }

      v7 = *(a2 + v6);
      if (v7 == 13 || ((result = 0, v7 != 15) ? (v8 = *(a2 + 96) > *(*(v4 + 8) + 100)) : (v8 = 0), !v8 ? (v9 = 0) : (v9 = 1), v7 != 9 && (v9 & 1) == 0))
      {
        if (sub_38F6F0(a2))
        {
          if (sub_1131728(v4 + 3976, a2))
          {
            return 1;
          }

          v10 = *(a1 + 16);
          v11 = *v10;
          v12 = v10[1];
          if (*v10 == v12)
          {
            return 0;
          }

          if (*(a2 + 71) >= 0)
          {
            v13 = *(a2 + 71);
          }

          else
          {
            v13 = *(a2 + 56);
          }

          if ((*(a2 + 71) & 0x80) != 0)
          {
            v14 = *(a2 + 48);
            while (1)
            {
              v18 = *(v11 + 23);
              v19 = v18;
              if ((v18 & 0x80u) != 0)
              {
                v18 = *(v11 + 8);
              }

              if (v13 == v18)
              {
                v20 = v19 >= 0 ? v11 : *v11;
                if (!memcmp(v14, v20, v13))
                {
                  break;
                }
              }

              result = 0;
              v11 += 80;
              if (v11 == v12)
              {
                return result;
              }
            }
          }

          else
          {
            while (1)
            {
              v15 = *(v11 + 23);
              v16 = v15;
              if ((v15 & 0x80u) != 0)
              {
                v15 = *(v11 + 8);
              }

              if (v13 == v15)
              {
                v17 = v16 >= 0 ? v11 : *v11;
                if (!memcmp((a2 + 48), v17, v13))
                {
                  break;
                }
              }

              result = 0;
              v11 += 80;
              if (v11 == v12)
              {
                return result;
              }
            }
          }
        }

        return 1;
      }
    }
  }

  return result;
}

__n128 sub_7C8008(uint64_t a1, uint64_t a2)
{
  *a2 = off_266CA80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_7C8048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11WalkingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11WalkingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11WalkingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11WalkingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_7C80C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = sub_38F51C(a2, 2);
  if (result)
  {
    result = sub_38F79C(a2, **a1);
    if (result)
    {
      v6 = 96;
      if (*(a2 + 232))
      {
        v6 = 228;
      }

      v7 = *(a2 + v6);
      if (v7 == 13 || ((result = 0, v7 != 15) ? (v8 = *(a2 + 96) > *(*(v4 + 8) + 1428)) : (v8 = 0), !v8 ? (v9 = 0) : (v9 = 1), v7 != 9 && (v9 & 1) == 0))
      {
        if (sub_38F6F0(a2))
        {
          if (sub_1131728(v4 + 3976, a2))
          {
            return 1;
          }

          v10 = *(a1 + 16);
          v11 = *v10;
          v12 = v10[1];
          if (*v10 == v12)
          {
            return 0;
          }

          if (*(a2 + 71) >= 0)
          {
            v13 = *(a2 + 71);
          }

          else
          {
            v13 = *(a2 + 56);
          }

          if ((*(a2 + 71) & 0x80) != 0)
          {
            v14 = *(a2 + 48);
            while (1)
            {
              v18 = *(v11 + 23);
              v19 = v18;
              if ((v18 & 0x80u) != 0)
              {
                v18 = *(v11 + 8);
              }

              if (v13 == v18)
              {
                v20 = v19 >= 0 ? v11 : *v11;
                if (!memcmp(v14, v20, v13))
                {
                  break;
                }
              }

              result = 0;
              v11 += 80;
              if (v11 == v12)
              {
                return result;
              }
            }
          }

          else
          {
            while (1)
            {
              v15 = *(v11 + 23);
              v16 = v15;
              if ((v15 & 0x80u) != 0)
              {
                v15 = *(v11 + 8);
              }

              if (v13 == v15)
              {
                v17 = v16 >= 0 ? v11 : *v11;
                if (!memcmp((a2 + 48), v17, v13))
                {
                  break;
                }
              }

              result = 0;
              v11 += 80;
              if (v11 == v12)
              {
                return result;
              }
            }
          }
        }

        return 1;
      }
    }
  }

  return result;
}

__n128 sub_7C82E8(uint64_t a1, uint64_t a2)
{
  *a2 = off_266CB00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_7C8328(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11CyclingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11CyclingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11CyclingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing20RouteIncidentMatcherINS0_14GuidedRouteLegINS0_11CyclingModeEEENS0_26GuidanceRequestInformationEE22find_traffic_incidentsERKS4_RKNS0_19SessionStateContextEEUlRKNS_4data8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_7C83A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = sub_38F51C(a2, 3);
  if (result)
  {
    result = sub_38F79C(a2, **a1);
    if (result)
    {
      v6 = 96;
      if (*(a2 + 232))
      {
        v6 = 228;
      }

      v7 = *(a2 + v6);
      if (v7 == 13 || ((result = 0, v7 != 15) ? (v8 = *(a2 + 96) > *(*(v4 + 8) + 1428)) : (v8 = 0), !v8 ? (v9 = 0) : (v9 = 1), v7 != 9 && (v9 & 1) == 0))
      {
        if (sub_38F6F0(a2))
        {
          if (sub_1131728(v4 + 3976, a2))
          {
            return 1;
          }

          v10 = *(a1 + 16);
          v11 = *v10;
          v12 = v10[1];
          if (*v10 == v12)
          {
            return 0;
          }

          if (*(a2 + 71) >= 0)
          {
            v13 = *(a2 + 71);
          }

          else
          {
            v13 = *(a2 + 56);
          }

          if ((*(a2 + 71) & 0x80) != 0)
          {
            v14 = *(a2 + 48);
            while (1)
            {
              v18 = *(v11 + 23);
              v19 = v18;
              if ((v18 & 0x80u) != 0)
              {
                v18 = *(v11 + 8);
              }

              if (v13 == v18)
              {
                v20 = v19 >= 0 ? v11 : *v11;
                if (!memcmp(v14, v20, v13))
                {
                  break;
                }
              }

              result = 0;
              v11 += 80;
              if (v11 == v12)
              {
                return result;
              }
            }
          }

          else
          {
            while (1)
            {
              v15 = *(v11 + 23);
              v16 = v15;
              if ((v15 & 0x80u) != 0)
              {
                v15 = *(v11 + 8);
              }

              if (v13 == v15)
              {
                v17 = v16 >= 0 ? v11 : *v11;
                if (!memcmp((a2 + 48), v17, v13))
                {
                  break;
                }
              }

              result = 0;
              v11 += 80;
              if (v11 == v12)
              {
                return result;
              }
            }
          }
        }

        return 1;
      }
    }
  }

  return result;
}

void sub_7C854C()
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
  xmmword_27A98D0 = 0u;
  unk_27A98E0 = 0u;
  dword_27A98F0 = 1065353216;
  sub_3A9A34(&xmmword_27A98D0, v0);
  sub_3A9A34(&xmmword_27A98D0, v3);
  sub_3A9A34(&xmmword_27A98D0, __p);
  sub_3A9A34(&xmmword_27A98D0, v9);
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
    qword_27A98A8 = 0;
    qword_27A98B0 = 0;
    qword_27A98A0 = 0;
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

void sub_7C8794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A98B8)
  {
    qword_27A98C0 = qword_27A98B8;
    operator delete(qword_27A98B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_7C8840(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  if (a1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v67 = v8;
  v9 = a1;
  while (1)
  {
    sub_4D0568();
    v12 = v11;
    v14 = v13;
    if (v5)
    {
      v15 = sub_4D1DC0(v5);
      v16 = v7 < v15;
      if (!v12)
      {
        if (v7 >= v15)
        {
          goto LABEL_75;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_75;
      }

      v16 = 0;
    }

    v17 = sub_4D1DC0(v12);
    if (v14 >= v17 || !v16)
    {
      break;
    }

    v19 = sub_4D1F50(v5, v7);
    if (v19 == sub_4D1F50(v12, v14))
    {
      goto LABEL_75;
    }

LABEL_20:
    v20 = *(sub_4D1F50(v5, v7) + 32);
    v21 = sub_4D1F50(v5, v7);
    v68 = *(v21 + 32) | (*(v21 + 36) << 32);
    if ((v20 & 0xFF000000000000) != 0)
    {
      v69 = &v68;
      v22 = sub_7CC190(a2, &v68);
      v23 = 1000000000 - sub_4D21C8(v5, v7);
      v24 = v22[4];
      v25 = v22[5];
      if (v24 >= v25)
      {
        v32 = v22[3];
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v32) >> 2) + 1;
        if (v33 > 0x1555555555555555)
        {
          sub_1794();
        }

        v34 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v32) >> 2);
        if (2 * v34 > v33)
        {
          v33 = 2 * v34;
        }

        if (v34 >= 0xAAAAAAAAAAAAAAALL)
        {
          v35 = 0x1555555555555555;
        }

        else
        {
          v35 = v33;
        }

        if (v35)
        {
          if (v35 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v40 = 4 * ((v24 - v32) >> 2);
        *v40 = v67;
        *(v40 + 4) = v23;
        *(v40 + 8) = 0;
        v26 = v40 + 12;
        v41 = (v40 - (v24 - v32));
        memcpy(v41, v32, v24 - v32);
        v22[3] = v41;
        v22[4] = v26;
        v22[5] = 0;
        if (v32)
        {
          operator delete(v32);
        }

        a1 = v9;
      }

      else
      {
        *v24 = v67;
        *(v24 + 4) = v23;
        v26 = v24 + 12;
        *(v24 + 8) = 0;
      }

      v22[4] = v26;
      v69 = &v68;
      v42 = sub_7CC190(a2, &v68);
      v43 = 1000000000 - sub_4D2148(v5, v7);
      v44 = v42[4];
      v45 = v42[5];
      if (v44 < v45)
      {
        *v44 = a1;
        *(v44 + 4) = v43;
        v10 = v44 + 12;
        *(v44 + 8) = 0;
        goto LABEL_6;
      }

      v46 = v42[3];
      v47 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v46) >> 2) + 1;
      if (v47 > 0x1555555555555555)
      {
        sub_1794();
      }

      v48 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v46) >> 2);
      if (2 * v48 > v47)
      {
        v47 = 2 * v48;
      }

      if (v48 >= 0xAAAAAAAAAAAAAAALL)
      {
        v49 = 0x1555555555555555;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        if (v49 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v50 = 4 * ((v44 - v46) >> 2);
      *v50 = v9;
      *(v50 + 4) = v43;
      *(v50 + 8) = 0;
      v10 = v50 + 12;
      v51 = (v50 - (v44 - v46));
      memcpy(v51, v46, v44 - v46);
      v42[3] = v51;
      v42[4] = v10;
      v42[5] = 0;
      if (!v46)
      {
        goto LABEL_58;
      }

LABEL_57:
      operator delete(v46);
LABEL_58:
      a1 = v9;
      goto LABEL_6;
    }

    v69 = &v68;
    v27 = sub_7CC190(a2, &v68);
    v28 = sub_4D2148(v5, v7);
    v30 = v27[4];
    v29 = v27[5];
    if (v30 >= v29)
    {
      v36 = v27[3];
      v37 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v36) >> 2) + 1;
      if (v37 > 0x1555555555555555)
      {
        sub_1794();
      }

      v38 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v36) >> 2);
      if (2 * v38 > v37)
      {
        v37 = 2 * v38;
      }

      if (v38 >= 0xAAAAAAAAAAAAAAALL)
      {
        v39 = 0x1555555555555555;
      }

      else
      {
        v39 = v37;
      }

      if (v39)
      {
        if (v39 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v52 = 4 * ((v30 - v36) >> 2);
      *v52 = 2;
      *(v52 + 4) = v28;
      *(v52 + 8) = 0;
      v31 = v52 + 12;
      v53 = (v52 - (v30 - v36));
      memcpy(v53, v36, v30 - v36);
      v27[3] = v53;
      v27[4] = v31;
      v27[5] = 0;
      if (v36)
      {
        operator delete(v36);
      }

      a1 = v9;
    }

    else
    {
      *v30 = 2;
      *(v30 + 4) = v28;
      v31 = v30 + 12;
      *(v30 + 8) = 0;
    }

    v27[4] = v31;
    v69 = &v68;
    v42 = sub_7CC190(a2, &v68);
    v54 = sub_4D21C8(v5, v7);
    v56 = v42[4];
    v55 = v42[5];
    if (v56 >= v55)
    {
      v46 = v42[3];
      v57 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v46) >> 2) + 1;
      if (v57 > 0x1555555555555555)
      {
        sub_1794();
      }

      v58 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v46) >> 2);
      if (2 * v58 > v57)
      {
        v57 = 2 * v58;
      }

      if (v58 >= 0xAAAAAAAAAAAAAAALL)
      {
        v59 = 0x1555555555555555;
      }

      else
      {
        v59 = v57;
      }

      if (v59)
      {
        if (v59 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v60 = 4 * ((v56 - v46) >> 2);
      *v60 = 0;
      *(v60 + 4) = v54;
      *(v60 + 8) = 0;
      v10 = v60 + 12;
      v61 = (v60 - (v56 - v46));
      memcpy(v61, v46, v56 - v46);
      v42[3] = v61;
      v42[4] = v10;
      v42[5] = 0;
      if (!v46)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    *v56 = 0;
    *(v56 + 4) = v54;
    v10 = v56 + 12;
    *(v56 + 8) = 0;
LABEL_6:
    v42[4] = v10;
    ++v7;
  }

  if ((v16 ^ (v14 < v17)))
  {
    goto LABEL_20;
  }

LABEL_75:
  for (i = *(a2 + 16); i; i = *i)
  {
    v63 = i[3];
    v64 = i[4];
    v65 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v64[-v63] >> 2));
    if (v64 == v63)
    {
      v66 = 0;
    }

    else
    {
      v66 = v65;
    }

    sub_7CA3B4(v63, v64, &v69, v66, 1);
  }
}

void sub_7C8FF8(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  if (a1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v67 = v8;
  v9 = a1;
  while (1)
  {
    sub_4D0568();
    v12 = v11;
    v14 = v13;
    if (v5)
    {
      v15 = sub_4D1DC0(v5);
      v16 = v7 < v15;
      if (!v12)
      {
        if (v7 >= v15)
        {
          goto LABEL_75;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_75;
      }

      v16 = 0;
    }

    v17 = sub_4D1DC0(v12);
    if (v14 >= v17 || !v16)
    {
      break;
    }

    v19 = sub_4D1F50(v5, v7);
    if (v19 == sub_4D1F50(v12, v14))
    {
      goto LABEL_75;
    }

LABEL_20:
    v20 = *(sub_4D1F50(v5, v7) + 32);
    v21 = sub_4D1F50(v5, v7);
    v68 = *(v21 + 32) | (*(v21 + 36) << 32);
    if ((v20 & 0xFF000000000000) != 0)
    {
      v69 = &v68;
      v22 = sub_7CC190(a2, &v68);
      v23 = 1000000000 - sub_4D21C8(v5, v7);
      v24 = v22[4];
      v25 = v22[5];
      if (v24 >= v25)
      {
        v32 = v22[3];
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v32) >> 2) + 1;
        if (v33 > 0x1555555555555555)
        {
          sub_1794();
        }

        v34 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v32) >> 2);
        if (2 * v34 > v33)
        {
          v33 = 2 * v34;
        }

        if (v34 >= 0xAAAAAAAAAAAAAAALL)
        {
          v35 = 0x1555555555555555;
        }

        else
        {
          v35 = v33;
        }

        if (v35)
        {
          if (v35 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v40 = 4 * ((v24 - v32) >> 2);
        *v40 = v67;
        *(v40 + 4) = v23;
        *(v40 + 8) = 0;
        v26 = v40 + 12;
        v41 = (v40 - (v24 - v32));
        memcpy(v41, v32, v24 - v32);
        v22[3] = v41;
        v22[4] = v26;
        v22[5] = 0;
        if (v32)
        {
          operator delete(v32);
        }

        a1 = v9;
      }

      else
      {
        *v24 = v67;
        *(v24 + 4) = v23;
        v26 = v24 + 12;
        *(v24 + 8) = 0;
      }

      v22[4] = v26;
      v69 = &v68;
      v42 = sub_7CC190(a2, &v68);
      v43 = 1000000000 - sub_4D2148(v5, v7);
      v44 = v42[4];
      v45 = v42[5];
      if (v44 < v45)
      {
        *v44 = a1;
        *(v44 + 4) = v43;
        v10 = v44 + 12;
        *(v44 + 8) = 0;
        goto LABEL_6;
      }

      v46 = v42[3];
      v47 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v46) >> 2) + 1;
      if (v47 > 0x1555555555555555)
      {
        sub_1794();
      }

      v48 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v46) >> 2);
      if (2 * v48 > v47)
      {
        v47 = 2 * v48;
      }

      if (v48 >= 0xAAAAAAAAAAAAAAALL)
      {
        v49 = 0x1555555555555555;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        if (v49 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v50 = 4 * ((v44 - v46) >> 2);
      *v50 = v9;
      *(v50 + 4) = v43;
      *(v50 + 8) = 0;
      v10 = v50 + 12;
      v51 = (v50 - (v44 - v46));
      memcpy(v51, v46, v44 - v46);
      v42[3] = v51;
      v42[4] = v10;
      v42[5] = 0;
      if (!v46)
      {
        goto LABEL_58;
      }

LABEL_57:
      operator delete(v46);
LABEL_58:
      a1 = v9;
      goto LABEL_6;
    }

    v69 = &v68;
    v27 = sub_7CC190(a2, &v68);
    v28 = sub_4D2148(v5, v7);
    v30 = v27[4];
    v29 = v27[5];
    if (v30 >= v29)
    {
      v36 = v27[3];
      v37 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v36) >> 2) + 1;
      if (v37 > 0x1555555555555555)
      {
        sub_1794();
      }

      v38 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v36) >> 2);
      if (2 * v38 > v37)
      {
        v37 = 2 * v38;
      }

      if (v38 >= 0xAAAAAAAAAAAAAAALL)
      {
        v39 = 0x1555555555555555;
      }

      else
      {
        v39 = v37;
      }

      if (v39)
      {
        if (v39 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v52 = 4 * ((v30 - v36) >> 2);
      *v52 = 2;
      *(v52 + 4) = v28;
      *(v52 + 8) = 0;
      v31 = v52 + 12;
      v53 = (v52 - (v30 - v36));
      memcpy(v53, v36, v30 - v36);
      v27[3] = v53;
      v27[4] = v31;
      v27[5] = 0;
      if (v36)
      {
        operator delete(v36);
      }

      a1 = v9;
    }

    else
    {
      *v30 = 2;
      *(v30 + 4) = v28;
      v31 = v30 + 12;
      *(v30 + 8) = 0;
    }

    v27[4] = v31;
    v69 = &v68;
    v42 = sub_7CC190(a2, &v68);
    v54 = sub_4D21C8(v5, v7);
    v56 = v42[4];
    v55 = v42[5];
    if (v56 >= v55)
    {
      v46 = v42[3];
      v57 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v46) >> 2) + 1;
      if (v57 > 0x1555555555555555)
      {
        sub_1794();
      }

      v58 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v46) >> 2);
      if (2 * v58 > v57)
      {
        v57 = 2 * v58;
      }

      if (v58 >= 0xAAAAAAAAAAAAAAALL)
      {
        v59 = 0x1555555555555555;
      }

      else
      {
        v59 = v57;
      }

      if (v59)
      {
        if (v59 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v60 = 4 * ((v56 - v46) >> 2);
      *v60 = 0;
      *(v60 + 4) = v54;
      *(v60 + 8) = 0;
      v10 = v60 + 12;
      v61 = (v60 - (v56 - v46));
      memcpy(v61, v46, v56 - v46);
      v42[3] = v61;
      v42[4] = v10;
      v42[5] = 0;
      if (!v46)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    *v56 = 0;
    *(v56 + 4) = v54;
    v10 = v56 + 12;
    *(v56 + 8) = 0;
LABEL_6:
    v42[4] = v10;
    ++v7;
  }

  if ((v16 ^ (v14 < v17)))
  {
    goto LABEL_20;
  }

LABEL_75:
  for (i = *(a2 + 16); i; i = *i)
  {
    v63 = i[3];
    v64 = i[4];
    v65 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v64[-v63] >> 2));
    if (v64 == v63)
    {
      v66 = 0;
    }

    else
    {
      v66 = v65;
    }

    sub_7CA3B4(v63, v64, &v69, v66, 1);
  }
}

void sub_7C97B0(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  if (a1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v67 = v8;
  v9 = a1;
  while (1)
  {
    sub_4D0568();
    v12 = v11;
    v14 = v13;
    if (v5)
    {
      v15 = sub_4D1DC0(v5);
      v16 = v7 < v15;
      if (!v12)
      {
        if (v7 >= v15)
        {
          goto LABEL_75;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_75;
      }

      v16 = 0;
    }

    v17 = sub_4D1DC0(v12);
    if (v14 >= v17 || !v16)
    {
      break;
    }

    v19 = sub_4D1F50(v5, v7);
    if (v19 == sub_4D1F50(v12, v14))
    {
      goto LABEL_75;
    }

LABEL_20:
    v20 = *(sub_4D1F50(v5, v7) + 36);
    v21 = sub_4D1F50(v5, v7);
    v68 = *(v21 + 32) | ((*(v21 + 36) & 0x1FFFFFFF) << 32);
    if ((v20 & 0x20000000) != 0)
    {
      v69 = &v68;
      v27 = sub_7CC190(a2, &v68);
      v28 = sub_4D2148(v5, v7);
      v30 = v27[4];
      v29 = v27[5];
      if (v30 >= v29)
      {
        v36 = v27[3];
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v36) >> 2) + 1;
        if (v37 > 0x1555555555555555)
        {
          sub_1794();
        }

        v38 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v36) >> 2);
        if (2 * v38 > v37)
        {
          v37 = 2 * v38;
        }

        if (v38 >= 0xAAAAAAAAAAAAAAALL)
        {
          v39 = 0x1555555555555555;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          if (v39 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v50 = 4 * ((v30 - v36) >> 2);
        *v50 = 2;
        *(v50 + 4) = v28;
        *(v50 + 8) = 0;
        v31 = v50 + 12;
        v51 = (v50 - (v30 - v36));
        memcpy(v51, v36, v30 - v36);
        v27[3] = v51;
        v27[4] = v31;
        v27[5] = 0;
        if (v36)
        {
          operator delete(v36);
        }

        a1 = v9;
      }

      else
      {
        *v30 = 2;
        *(v30 + 4) = v28;
        v31 = v30 + 12;
        *(v30 + 8) = 0;
      }

      v27[4] = v31;
      v69 = &v68;
      v42 = sub_7CC190(a2, &v68);
      v52 = sub_4D21C8(v5, v7);
      v54 = v42[4];
      v53 = v42[5];
      if (v54 < v53)
      {
        *v54 = 0;
        *(v54 + 4) = v52;
        v10 = v54 + 12;
        *(v54 + 8) = 0;
        goto LABEL_6;
      }

      v46 = v42[3];
      v55 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v46) >> 2) + 1;
      if (v55 > 0x1555555555555555)
      {
        sub_1794();
      }

      v56 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v46) >> 2);
      if (2 * v56 > v55)
      {
        v55 = 2 * v56;
      }

      if (v56 >= 0xAAAAAAAAAAAAAAALL)
      {
        v57 = 0x1555555555555555;
      }

      else
      {
        v57 = v55;
      }

      if (v57)
      {
        if (v57 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v60 = 4 * ((v54 - v46) >> 2);
      *v60 = 0;
      *(v60 + 4) = v52;
      *(v60 + 8) = 0;
      v10 = v60 + 12;
      v61 = (v60 - (v54 - v46));
      memcpy(v61, v46, v54 - v46);
      v42[3] = v61;
      v42[4] = v10;
      v42[5] = 0;
      if (!v46)
      {
        goto LABEL_74;
      }

LABEL_73:
      operator delete(v46);
      goto LABEL_74;
    }

    v69 = &v68;
    v22 = sub_7CC190(a2, &v68);
    v23 = 1000000000 - sub_4D21C8(v5, v7);
    v24 = v22[4];
    v25 = v22[5];
    if (v24 >= v25)
    {
      v32 = v22[3];
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v32) >> 2) + 1;
      if (v33 > 0x1555555555555555)
      {
        sub_1794();
      }

      v34 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v32) >> 2);
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0xAAAAAAAAAAAAAAALL)
      {
        v35 = 0x1555555555555555;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        if (v35 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v40 = 4 * ((v24 - v32) >> 2);
      *v40 = v67;
      *(v40 + 4) = v23;
      *(v40 + 8) = 0;
      v26 = v40 + 12;
      v41 = (v40 - (v24 - v32));
      memcpy(v41, v32, v24 - v32);
      v22[3] = v41;
      v22[4] = v26;
      v22[5] = 0;
      if (v32)
      {
        operator delete(v32);
      }

      a1 = v9;
    }

    else
    {
      *v24 = v67;
      *(v24 + 4) = v23;
      v26 = v24 + 12;
      *(v24 + 8) = 0;
    }

    v22[4] = v26;
    v69 = &v68;
    v42 = sub_7CC190(a2, &v68);
    v43 = 1000000000 - sub_4D2148(v5, v7);
    v44 = v42[4];
    v45 = v42[5];
    if (v44 < v45)
    {
      *v44 = a1;
      *(v44 + 4) = v43;
      v10 = v44 + 12;
      *(v44 + 8) = 0;
      goto LABEL_6;
    }

    v46 = v42[3];
    v47 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v46) >> 2) + 1;
    if (v47 > 0x1555555555555555)
    {
      sub_1794();
    }

    v48 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v46) >> 2);
    if (2 * v48 > v47)
    {
      v47 = 2 * v48;
    }

    if (v48 >= 0xAAAAAAAAAAAAAAALL)
    {
      v49 = 0x1555555555555555;
    }

    else
    {
      v49 = v47;
    }

    if (v49)
    {
      if (v49 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v58 = 4 * ((v44 - v46) >> 2);
    *v58 = v9;
    *(v58 + 4) = v43;
    *(v58 + 8) = 0;
    v10 = v58 + 12;
    v59 = (v58 - (v44 - v46));
    memcpy(v59, v46, v44 - v46);
    v42[3] = v59;
    v42[4] = v10;
    v42[5] = 0;
    if (v46)
    {
      goto LABEL_73;
    }

LABEL_74:
    a1 = v9;
LABEL_6:
    v42[4] = v10;
    ++v7;
  }

  if ((v16 ^ (v14 < v17)))
  {
    goto LABEL_20;
  }

LABEL_75:
  for (i = *(a2 + 16); i; i = *i)
  {
    v63 = i[3];
    v64 = i[4];
    v65 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v64[-v63] >> 2));
    if (v64 == v63)
    {
      v66 = 0;
    }

    else
    {
      v66 = v65;
    }

    sub_7CA3B4(v63, v64, &v69, v66, 1);
  }
}

uint64_t sub_7C9F64(int *a1, void *a2, unint64_t a3)
{
  v6 = *(sub_4D1F50(a2, a3) + 32);
  v7 = sub_4D1F50(a2, a3);
  v9 = (*v7 - **v7);
  v10 = 0.0;
  if (*v9 >= 9u)
  {
    v11 = v9[4];
    if (v11)
    {
      LODWORD(v8) = *(*v7 + v11);
      v10 = v8;
    }
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    v12 = 1000000000 - a1[1];
  }

  else
  {
    v12 = *a1;
  }

  v13 = v10 * ((v12 - sub_4D2148(a2, a3)) / 1000000000.0);
  if (v13 >= 0.0)
  {
    if (v13 < 4.50359963e15)
    {
      v14 = (v13 + v13) + 1;
      return (v14 >> 1);
    }
  }

  else if (v13 > -4.50359963e15)
  {
    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
    return (v14 >> 1);
  }

  return v13;
}

uint64_t sub_7CA078(int *a1, void *a2, unint64_t a3)
{
  v6 = *(sub_4D1F50(a2, a3) + 36);
  v7 = sub_4D1F50(a2, a3);
  v9 = (*v7 - **v7);
  v10 = 0.0;
  if (*v9 >= 9u)
  {
    v11 = v9[4];
    if (v11)
    {
      LODWORD(v8) = *(*v7 + v11);
      v10 = v8;
    }
  }

  if ((v6 & 0x20000000) != 0)
  {
    v12 = *a1;
  }

  else
  {
    v12 = 1000000000 - a1[1];
  }

  v13 = v10 * ((v12 - sub_4D2148(a2, a3)) / 1000000000.0);
  if (v13 >= 0.0)
  {
    if (v13 < 4.50359963e15)
    {
      v14 = (v13 + v13) + 1;
      return (v14 >> 1);
    }
  }

  else if (v13 > -4.50359963e15)
  {
    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
    return (v14 >> 1);
  }

  return v13;
}

uint64_t sub_7CA18C(_DWORD *a1, void *a2, unint64_t a3)
{
  v6 = *(sub_4D1F50(a2, a3) + 32);
  v7 = sub_4D1F50(a2, a3);
  v9 = (*v7 - **v7);
  v10 = 0.0;
  if (*v9 >= 9u)
  {
    v11 = v9[4];
    if (v11)
    {
      LODWORD(v8) = *(*v7 + v11);
      v10 = v8;
    }
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    v12 = 1000000000 - *a1;
  }

  else
  {
    v12 = a1[1];
  }

  v13 = v10 * ((v12 - sub_4D2148(a2, a3)) / 1000000000.0);
  if (v13 >= 0.0)
  {
    if (v13 < 4.50359963e15)
    {
      v14 = (v13 + v13) + 1;
      return (v14 >> 1);
    }
  }

  else if (v13 > -4.50359963e15)
  {
    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
    return (v14 >> 1);
  }

  return v13;
}

uint64_t sub_7CA2A0(_DWORD *a1, void *a2, unint64_t a3)
{
  v6 = *(sub_4D1F50(a2, a3) + 36);
  v7 = sub_4D1F50(a2, a3);
  v9 = (*v7 - **v7);
  v10 = 0.0;
  if (*v9 >= 9u)
  {
    v11 = v9[4];
    if (v11)
    {
      LODWORD(v8) = *(*v7 + v11);
      v10 = v8;
    }
  }

  if ((v6 & 0x20000000) != 0)
  {
    v12 = a1[1];
  }

  else
  {
    v12 = 1000000000 - *a1;
  }

  v13 = v10 * ((v12 - sub_4D2148(a2, a3)) / 1000000000.0);
  if (v13 >= 0.0)
  {
    if (v13 < 4.50359963e15)
    {
      v14 = (v13 + v13) + 1;
      return (v14 >> 1);
    }
  }

  else if (v13 > -4.50359963e15)
  {
    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
    return (v14 >> 1);
  }

  return v13;
}

uint64_t sub_7CA3B4(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 12;
  v9 = a2 - 24;
  v10 = a2 - 36;
  v11 = v7;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v7 = v11;
    v13 = v12;
    v14 = &a2[-v11];
    v15 = 0xAAAAAAAAAAAAAAABLL * (&a2[-v11] >> 2);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v84 = *(v11 + 4);
        v85 = *(a2 - 2);
        if (v85 >= v84 && (v85 != v84 || *v8 >= *v11))
        {
          return result;
        }

LABEL_147:
        v186 = *(v11 + 8);
        v162 = *v11;
        v89 = *v8;
        *(v11 + 8) = *(a2 - 4);
        *v11 = v89;
        *v8 = v162;
        *(a2 - 4) = v186;
        return result;
      }

      goto LABEL_11;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      return sub_7CB28C(v11, (v11 + 12), (v11 + 24), (a2 - 12));
    }

    if (v15 == 5)
    {
      result = sub_7CB28C(v11, (v11 + 12), (v11 + 24), (v11 + 36));
      v90 = *(v11 + 40);
      v91 = *(a2 - 2);
      if (v91 >= v90 && (v91 != v90 || *v8 >= *(v11 + 36)))
      {
        return result;
      }

      v92 = *(v11 + 44);
      v93 = *(v11 + 36);
      v94 = *(a2 - 4);
      *(v11 + 36) = *v8;
      *(v11 + 44) = v94;
      *v8 = v93;
      *(a2 - 4) = v92;
      v95 = *(v11 + 28);
      v96 = *(v11 + 40);
      if (v96 >= v95 && (v96 != v95 || *(v11 + 36) >= *(v11 + 24)))
      {
        return result;
      }

      v97 = *(v11 + 32);
      v98 = *(v11 + 24);
      *(v11 + 24) = *(v11 + 36);
      *(v11 + 32) = *(v11 + 44);
      *(v11 + 36) = v98;
      *(v11 + 44) = v97;
      v99 = *(v11 + 16);
      v100 = *(v11 + 28);
      if (v100 >= v99 && (v100 != v99 || *(v11 + 24) >= *(v11 + 12)))
      {
        return result;
      }

      v101 = *(v11 + 20);
      v102 = *(v11 + 12);
      *(v11 + 12) = *(v11 + 24);
      *(v11 + 20) = *(v11 + 32);
      *(v11 + 24) = v102;
      *(v11 + 32) = v101;
      v103 = *(v11 + 4);
      LODWORD(v102) = *(v11 + 16);
      v104 = v102 == v103;
      if (v102 < v103)
      {
LABEL_191:
        v187 = *(v11 + 8);
        v163 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v163;
        *(v11 + 20) = v187;
        return result;
      }

LABEL_188:
      if (!v104 || *(v11 + 12) >= *v11)
      {
        return result;
      }

      goto LABEL_191;
    }

LABEL_11:
    if (v14 <= 287)
    {
      v105 = (v11 + 12);
      v107 = v11 == a2 || v105 == a2;
      if (a5)
      {
        if (v107)
        {
          return result;
        }

        v108 = 0;
        v109 = v11;
        while (2)
        {
          v111 = v109;
          v109 = v105;
          v112 = *(v111 + 4);
          v113 = *(v111 + 16);
          if (v113 < v112)
          {
            v114 = *v109;
            goto LABEL_167;
          }

          if (v113 == v112)
          {
            v114 = *v109;
            if (*v109 < *v111)
            {
LABEL_167:
              v115 = *(v111 + 20);
              *v109 = *v111;
              *(v109 + 8) = *(v111 + 8);
              v110 = v11;
              if (v111 != v11)
              {
                v116 = v108;
                while (1)
                {
                  v117 = v11 + v116;
                  v118 = (v11 + v116 - 12);
                  v119 = *(v11 + v116 - 8);
                  if (v113 >= v119)
                  {
                    if (v113 != v119)
                    {
                      v110 = v11 + v116;
                      goto LABEL_163;
                    }

                    if (v114 >= *v118)
                    {
                      break;
                    }
                  }

                  v111 -= 12;
                  *v117 = *v118;
                  *(v117 + 8) = *(v11 + v116 - 4);
                  v116 -= 12;
                  if (!v116)
                  {
                    v110 = v11;
                    goto LABEL_163;
                  }
                }

                v110 = v111;
              }

LABEL_163:
              *v110 = v114;
              *(v110 + 4) = v113;
              *(v110 + 8) = v115;
            }
          }

          v105 = (v109 + 12);
          v108 += 12;
          if ((v109 + 12) == a2)
          {
            return result;
          }

          continue;
        }
      }

      if (v107)
      {
        return result;
      }

      while (2)
      {
        v128 = v7;
        v7 = v105;
        v129 = v128[1];
        v130 = v128[4];
        if (v130 >= v129)
        {
          if (v130 == v129)
          {
            v131 = *v7;
            if (*v7 < *v128)
            {
              goto LABEL_201;
            }
          }
        }

        else
        {
          v131 = *v7;
LABEL_201:
          v132 = v128[5];
          do
          {
            do
            {
              v133 = v128;
              *(v128 + 3) = *v128;
              *(v128 + 20) = *(v128 + 8);
              v128 -= 3;
              v134 = *(v133 - 2);
            }

            while (v130 < v134);
          }

          while (v130 == v134 && v131 < *v128);
          *v133 = v131;
          v133[1] = v130;
          *(v133 + 8) = v132;
        }

        v105 = (v7 + 3);
        if (v7 + 3 == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (v12 == 1)
    {
      if (v11 != a2)
      {
        v120 = (v15 - 2) >> 1;
        v121 = v120 + 1;
        v122 = (v11 + 12 * v120);
        do
        {
          sub_7CBE5C(v11, a3, 0xAAAAAAAAAAAAAAABLL * (&a2[-v11] >> 2), v122);
          v122 -= 3;
          --v121;
        }

        while (v121);

        return sub_7CBFB8(v11, a2);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = v11 + 12 * (v15 >> 1);
    if (v14 >= 0x601)
    {
      v18 = *(v11 + 4);
      v19 = *(v17 + 4);
      if (v19 < v18 || v19 == v18 && *v17 < *v11)
      {
        v20 = *(a2 - 2);
        if (v20 < v19 || v20 == v19 && *v8 < *v17)
        {
          v165 = *(v11 + 8);
          v141 = *v11;
          v21 = *v8;
          *(v11 + 8) = *(a2 - 4);
          *v11 = v21;
        }

        else
        {
          v171 = *(v11 + 8);
          v147 = *v11;
          v36 = *v17;
          *(v11 + 8) = *(v17 + 8);
          *v11 = v36;
          *(v17 + 8) = v171;
          *v17 = v147;
          v37 = *(a2 - 2);
          if (v37 >= HIDWORD(v147) && (v37 != HIDWORD(v147) || *v8 >= *v17))
          {
            goto LABEL_35;
          }

          v165 = *(v17 + 8);
          v141 = *v17;
          v38 = *v8;
          *(v17 + 8) = *(a2 - 4);
          *v17 = v38;
        }

        *v8 = v141;
        *(a2 - 4) = v165;
        goto LABEL_35;
      }

      v26 = *(a2 - 2);
      if (v26 < v19 || v26 == v19 && *v8 < *v17)
      {
        v167 = *(v17 + 8);
        v143 = *v17;
        v27 = *v8;
        *(v17 + 8) = *(a2 - 4);
        *v17 = v27;
        *v8 = v143;
        *(a2 - 4) = v167;
        v28 = *(v11 + 4);
        v29 = *(v17 + 4);
        if (v29 < v28 || v29 == v28 && *v17 < *v11)
        {
          v168 = *(v11 + 8);
          v144 = *v11;
          v30 = *v17;
          *(v11 + 8) = *(v17 + 8);
          *v11 = v30;
          *(v17 + 8) = v168;
          *v17 = v144;
        }
      }

LABEL_35:
      v39 = v11 + 12 * v16;
      v40 = v39 - 12;
      v41 = *(v11 + 16);
      v42 = *(v39 - 8);
      if (v42 < v41 || v42 == v41 && *v40 < *(v11 + 12))
      {
        v43 = *(a2 - 5);
        if (v43 < v42 || v43 == v42 && *v9 < *v40)
        {
          LODWORD(v44) = *(v11 + 20);
          v45 = *(v11 + 12);
          v46 = *(a2 - 16);
          *(v11 + 12) = *v9;
          *(v11 + 20) = v46;
          *v9 = v45;
        }

        else
        {
          v151 = *(v11 + 12);
          v175 = *(v11 + 20);
          v55 = *(v40 + 8);
          *(v11 + 12) = *v40;
          *(v11 + 20) = v55;
          *(v40 + 8) = v175;
          *v40 = v151;
          v56 = *(a2 - 5);
          if (v56 >= HIDWORD(v151) && (v56 != HIDWORD(v151) || *v9 >= *v40))
          {
            goto LABEL_53;
          }

          v176 = *(v40 + 8);
          v152 = *v40;
          v44 = *v9;
          *(v40 + 8) = *(a2 - 16);
          *v40 = v44;
          *v9 = v152;
          LOBYTE(v44) = v176;
        }

        *(a2 - 16) = v44;
        goto LABEL_53;
      }

      v47 = *(a2 - 5);
      if (v47 < v42 || v47 == v42 && *v9 < *v40)
      {
        v172 = *(v40 + 8);
        v148 = *v40;
        v48 = *v9;
        *(v40 + 8) = *(a2 - 16);
        *v40 = v48;
        *v9 = v148;
        *(a2 - 16) = v172;
        v49 = *(v11 + 16);
        v50 = *(v40 + 4);
        if (v50 < v49 || v50 == v49 && *v40 < *(v11 + 12))
        {
          v149 = *(v11 + 12);
          v173 = *(v11 + 20);
          v51 = *(v40 + 8);
          *(v11 + 12) = *v40;
          *(v11 + 20) = v51;
          *(v40 + 8) = v173;
          *v40 = v149;
        }
      }

LABEL_53:
      v57 = v11 + 12 * v16;
      v58 = *(v11 + 28);
      v59 = *(v57 + 16);
      if (v59 < v58 || v59 == v58 && *(v57 + 12) < *(v11 + 24))
      {
        v60 = *(a2 - 8);
        if (v60 < v59 || v60 == v59 && *v10 < *(v57 + 12))
        {
          LODWORD(v61) = *(v11 + 32);
          v62 = *(v11 + 24);
          v63 = *(a2 - 28);
          *(v11 + 24) = *v10;
          *(v11 + 32) = v63;
          *v10 = v62;
        }

        else
        {
          v155 = *(v11 + 24);
          v179 = *(v11 + 32);
          v69 = *(v57 + 20);
          *(v11 + 24) = *(v57 + 12);
          *(v11 + 32) = v69;
          *(v57 + 20) = v179;
          *(v57 + 12) = v155;
          v70 = *(a2 - 8);
          if (v70 >= HIDWORD(v155) && (v70 != HIDWORD(v155) || *v10 >= *(v57 + 12)))
          {
            goto LABEL_66;
          }

          v180 = *(v57 + 20);
          v156 = *(v57 + 12);
          v61 = *v10;
          *(v57 + 20) = *(a2 - 28);
          *(v57 + 12) = v61;
          *v10 = v156;
          LOBYTE(v61) = v180;
        }

        *(a2 - 28) = v61;
        goto LABEL_66;
      }

      v64 = *(a2 - 8);
      if (v64 < v59 || v64 == v59 && *v10 < *(v57 + 12))
      {
        v177 = *(v57 + 20);
        v153 = *(v57 + 12);
        v65 = *v10;
        *(v57 + 20) = *(a2 - 28);
        *(v57 + 12) = v65;
        *v10 = v153;
        *(a2 - 28) = v177;
        v66 = *(v11 + 28);
        v67 = *(v57 + 16);
        if (v67 < v66 || v67 == v66 && *(v57 + 12) < *(v11 + 24))
        {
          v154 = *(v11 + 24);
          v178 = *(v11 + 32);
          v68 = *(v57 + 20);
          *(v11 + 24) = *(v57 + 12);
          *(v11 + 32) = v68;
          *(v57 + 20) = v178;
          *(v57 + 12) = v154;
        }
      }

LABEL_66:
      v71 = *(v40 + 4);
      v72 = *(v17 + 4);
      if (v72 >= v71 && (v72 != v71 || *v17 >= *v40))
      {
        v74 = *(v57 + 16);
        if (v74 < v72 || v74 == v72 && *(v57 + 12) < *v17)
        {
          v182 = *(v17 + 8);
          v158 = *v17;
          *v17 = *(v57 + 12);
          *(v17 + 8) = *(v57 + 20);
          *(v57 + 20) = v182;
          *(v57 + 12) = v158;
          v75 = *(v40 + 4);
          v76 = *(v17 + 4);
          if (v76 < v75 || v76 == v75 && *v17 < *v40)
          {
            v183 = *(v40 + 8);
            v159 = *v40;
            *v40 = *v17;
            *(v40 + 8) = *(v17 + 8);
            *(v17 + 8) = v183;
            *v17 = v159;
          }
        }

        goto LABEL_79;
      }

      v73 = *(v57 + 16);
      if (v73 < v72 || v73 == v72 && *(v57 + 12) < *v17)
      {
        v181 = *(v40 + 8);
        v157 = *v40;
        *v40 = *(v57 + 12);
        *(v40 + 8) = *(v57 + 20);
      }

      else
      {
        v184 = *(v40 + 8);
        v160 = *v40;
        *v40 = *v17;
        *(v40 + 8) = *(v17 + 8);
        *(v17 + 8) = v184;
        *v17 = v160;
        v77 = *(v57 + 16);
        if (v77 >= HIDWORD(v160) && (v77 != HIDWORD(v160) || *(v57 + 12) >= *v17))
        {
          goto LABEL_79;
        }

        v181 = *(v17 + 8);
        v157 = *v17;
        *v17 = *(v57 + 12);
        *(v17 + 8) = *(v57 + 20);
      }

      *(v57 + 20) = v181;
      *(v57 + 12) = v157;
LABEL_79:
      v185 = *(v11 + 8);
      v161 = *v11;
      v78 = *v17;
      *(v11 + 8) = *(v17 + 8);
      *v11 = v78;
      *(v17 + 8) = v185;
      *v17 = v161;
      goto LABEL_80;
    }

    v22 = *(v17 + 4);
    v23 = *(v11 + 4);
    if (v23 < v22 || v23 == v22 && *v11 < *v17)
    {
      v24 = *(a2 - 2);
      if (v24 < v23 || v24 == v23 && *v8 < *v11)
      {
        v166 = *(v17 + 8);
        v142 = *v17;
        v25 = *v8;
        *(v17 + 8) = *(a2 - 4);
        *v17 = v25;
LABEL_47:
        *v8 = v142;
        *(a2 - 4) = v166;
        goto LABEL_80;
      }

      v174 = *(v17 + 8);
      v150 = *v17;
      v52 = *v11;
      *(v17 + 8) = *(v11 + 8);
      *v17 = v52;
      *(v11 + 8) = v174;
      *v11 = v150;
      v53 = *(a2 - 2);
      if (v53 < HIDWORD(v150) || v53 == HIDWORD(v150) && *v8 < *v11)
      {
        v166 = *(v11 + 8);
        v142 = *v11;
        v54 = *v8;
        *(v11 + 8) = *(a2 - 4);
        *v11 = v54;
        goto LABEL_47;
      }
    }

    else
    {
      v31 = *(a2 - 2);
      if (v31 < v23 || v31 == v23 && *v8 < *v11)
      {
        v169 = *(v11 + 8);
        v145 = *v11;
        v32 = *v8;
        *(v11 + 8) = *(a2 - 4);
        *v11 = v32;
        *v8 = v145;
        *(a2 - 4) = v169;
        v33 = *(v17 + 4);
        v34 = *(v11 + 4);
        if (v34 < v33 || v34 == v33 && *v11 < *v17)
        {
          v170 = *(v17 + 8);
          v146 = *v17;
          v35 = *v11;
          *(v17 + 8) = *(v11 + 8);
          *v17 = v35;
          *(v11 + 8) = v170;
          *v11 = v146;
        }
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v79 = *(v11 + 4);
      v80 = *(v11 - 8);
      if (v80 >= v79 && (v80 != v79 || *(v11 - 12) >= *v11))
      {
        result = sub_7CB4CC(v11, a2);
        v11 = result;
        goto LABEL_135;
      }
    }

    v81 = sub_7CB66C(v11, a2);
    if ((v82 & 1) == 0)
    {
      goto LABEL_133;
    }

    v83 = sub_7CB868(v11, v81);
    v11 = (v81 + 12);
    result = sub_7CB868((v81 + 12), a2);
    if (result)
    {
      a4 = -v13;
      a2 = v81;
      if (v83)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v83)
    {
LABEL_133:
      result = sub_7CA3B4(v7, v81, a3, -v13, a5 & 1);
      v11 = (v81 + 12);
LABEL_135:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  v86 = *(v11 + 4);
  v87 = *(v11 + 16);
  if (v87 >= v86 && (v87 != v86 || *(v11 + 12) >= *v11))
  {
    v123 = *(a2 - 2);
    if (v123 >= v87 && (v123 != v87 || *v8 >= *(v11 + 12)))
    {
      return result;
    }

    v124 = *(v11 + 20);
    v125 = *(v11 + 12);
    v126 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v126;
    *v8 = v125;
    *(a2 - 4) = v124;
    v127 = *(v11 + 4);
    LODWORD(v125) = *(v11 + 16);
    v104 = v125 == v127;
    if (v125 < v127)
    {
      goto LABEL_191;
    }

    goto LABEL_188;
  }

  v88 = *(a2 - 2);
  if (v88 < v87 || v88 == v87 && *v8 < *(v11 + 12))
  {
    goto LABEL_147;
  }

  v188 = *(v11 + 8);
  v164 = *v11;
  *v11 = *(v11 + 12);
  *(v11 + 8) = *(v11 + 20);
  *(v11 + 12) = v164;
  *(v11 + 20) = v188;
  v135 = *(v11 + 16);
  v136 = *(a2 - 2);
  if (v136 < v135 || v136 == v135 && *v8 < *(v11 + 12))
  {
    v137 = *(v11 + 20);
    v138 = *(v11 + 12);
    v139 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v139;
    *v8 = v138;
    *(a2 - 4) = v137;
  }

  return result;
}

unint64_t *sub_7CB28C(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *(result + 1);
  v5 = *(a2 + 1);
  if (v5 < v4 || v5 == v4 && *a2 < *result)
  {
    v6 = *(a3 + 1);
    if (v6 < v5 || v6 == v5 && *a3 < *a2)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 8);
      *result = *a3;
      *(result + 8) = v9;
    }

    else
    {
      v19 = *(result + 2);
      v20 = *result;
      v21 = *(a2 + 8);
      *result = *a2;
      *(result + 8) = v21;
      *a2 = v20;
      *(a2 + 8) = v19;
      v22 = HIDWORD(v20);
      v23 = *(a3 + 1);
      if (v23 >= v22 && (v23 != v22 || *a3 >= *a2))
      {
        goto LABEL_14;
      }

      v7 = *(a2 + 2);
      v8 = *a2;
      v24 = *(a3 + 8);
      *a2 = *a3;
      *(a2 + 8) = v24;
    }

    *a3 = v8;
    *(a3 + 8) = v7;
  }

  else
  {
    v10 = *(a3 + 1);
    if (v10 < v5 || v10 == v5 && *a3 < *a2)
    {
      v11 = *(a2 + 2);
      v12 = *a2;
      v13 = *(a3 + 8);
      *a2 = *a3;
      *(a2 + 8) = v13;
      *a3 = v12;
      *(a3 + 8) = v11;
      v14 = *(result + 1);
      v15 = *(a2 + 1);
      if (v15 < v14 || v15 == v14 && *a2 < *result)
      {
        v16 = *(result + 2);
        v17 = *result;
        v18 = *(a2 + 8);
        *result = *a2;
        *(result + 8) = v18;
        *a2 = v17;
        *(a2 + 8) = v16;
      }
    }
  }

LABEL_14:
  v25 = *(a3 + 1);
  v26 = *(a4 + 1);
  if (v26 < v25 || v26 == v25 && *a4 < *a3)
  {
    v27 = *(a3 + 2);
    v28 = *a3;
    v29 = *(a4 + 8);
    *a3 = *a4;
    *(a3 + 8) = v29;
    *a4 = v28;
    *(a4 + 8) = v27;
    v30 = *(a2 + 1);
    v31 = *(a3 + 1);
    if (v31 < v30 || v31 == v30 && *a3 < *a2)
    {
      v32 = *(a2 + 2);
      v33 = *a2;
      v34 = *(a3 + 8);
      *a2 = *a3;
      *(a2 + 8) = v34;
      *a3 = v33;
      *(a3 + 8) = v32;
      v35 = *(result + 1);
      v36 = *(a2 + 1);
      if (v36 < v35 || v36 == v35 && *a2 < *result)
      {
        v37 = *(result + 2);
        v38 = *result;
        v39 = *(a2 + 8);
        *result = *a2;
        *(result + 8) = v39;
        *a2 = v38;
        *(a2 + 8) = v37;
      }
    }
  }

  return result;
}

unsigned int *sub_7CB4CC(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  if (v3 < v4 || v3 == v4 && v2 < *(a2 - 3))
  {
    v5 = a1[4];
    if (v3 >= v5)
    {
      v8 = a1 + 7;
      do
      {
        if (v3 == v5 && v2 < *(v8 - 4))
        {
          break;
        }

        v9 = *v8;
        v8 += 3;
        v5 = v9;
      }

      while (v3 >= v9);
      i = v8 - 4;
    }

    else
    {
      i = a1 + 3;
    }
  }

  else
  {
    for (i = a1 + 3; i < a2; i += 3)
    {
      v7 = i[1];
      if (v3 < v7 || v3 == v7 && v2 < *i)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    for (j = a2 - 5; v3 < v4 || v3 == v4 && v2 < j[2]; j -= 3)
    {
      v11 = *j;
      v4 = v11;
    }

    a2 = j + 2;
  }

  v12 = a1[2];
  while (i < a2)
  {
    v22 = i[2];
    v21 = *i;
    v13 = *a2;
    *(i + 8) = *(a2 + 8);
    *i = v13;
    *(a2 + 8) = v22;
    *a2 = v21;
    v14 = i[4];
    if (v3 >= v14)
    {
      v15 = i + 7;
      do
      {
        if (v3 == v14 && v2 < *(v15 - 4))
        {
          break;
        }

        v16 = *v15;
        v15 += 3;
        v14 = v16;
      }

      while (v3 >= v16);
      i = v15 - 4;
    }

    else
    {
      i += 3;
    }

    v17 = a2 - 3;
    do
    {
      do
      {
        a2 = v17;
        v18 = v17[1];
        v17 -= 3;
      }

      while (v3 < v18);
    }

    while (v3 == v18 && v2 < *a2);
  }

  if (i - 3 != a1)
  {
    v19 = *(i - 3);
    *(a1 + 8) = *(i - 4);
    *a1 = v19;
  }

  *(i - 3) = v2;
  *(i - 2) = v3;
  *(i - 4) = v12;
  return i;
}

unint64_t sub_7CB66C(_DWORD *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  while (1)
  {
    v6 = a1[v2 + 4];
    if (v6 >= v4 && (v6 != v4 || a1[v2 + 3] >= v3))
    {
      break;
    }

    v2 += 3;
  }

  v7 = &a1[v2 + 3];
  if (v2 * 4)
  {
    v8 = *(a2 - 2);
    if (v8 < v4)
    {
      a2 -= 3;
      v9 = &a1[v2 + 3];
      if (v7 >= a2)
      {
        goto LABEL_40;
      }

LABEL_28:
      v18 = a2;
      do
      {
        while (1)
        {
          v28 = *(v9 + 8);
          v27 = *v9;
          v19 = *v18;
          *(v9 + 8) = *(v18 + 8);
          *v9 = v19;
          *(v18 + 8) = v28;
          *v18 = v27;
          v20 = v9 + 12;
          do
          {
            do
            {
              v9 = v20;
              v21 = *(v20 + 4);
              v20 += 12;
            }

            while (v21 < v4);
          }

          while (v21 == v4 && *v9 < v3);
          v22 = *(v18 - 2);
          if (v22 >= v4)
          {
            break;
          }

          v18 -= 3;
          if (v9 >= v18)
          {
            goto LABEL_40;
          }
        }

        v23 = v18 - 5;
        do
        {
          if (v22 == v4 && v23[2] < v3)
          {
            break;
          }

          v24 = *v23;
          v23 -= 3;
          v22 = v24;
        }

        while (v24 >= v4);
        v18 = v23 + 2;
      }

      while (v9 < v18);
      goto LABEL_40;
    }

    v16 = a2 - 5;
    do
    {
      if (v8 == v4 && v16[2] < v3)
      {
        break;
      }

      v17 = *v16;
      v16 -= 3;
      v8 = v17;
    }

    while (v17 >= v4);
    a2 = v16 + 2;
LABEL_27:
    v9 = v7;
    if (v7 >= a2)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v10 = (a2 - 3);
  v11 = *(a2 - 2);
  if (v11 < v4)
  {
LABEL_20:
    a2 = v10;
    v9 = v7;
    if (v7 >= v10)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  v12 = a2 - 5;
  do
  {
    v15 = v12 + 2;
    if (v11 != v4)
    {
      if (v7 >= v15)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (*v15 < v3 || v7 >= v15)
    {
      break;
    }

LABEL_17:
    v10 -= 12;
    v14 = *v12;
    v12 -= 3;
    v11 = v14;
  }

  while (v14 >= v4);
  a2 = v12 + 2;
  v9 = v7;
  if (v7 < a2)
  {
    goto LABEL_28;
  }

LABEL_40:
  if ((v9 - 12) != a1)
  {
    v25 = *(v9 - 12);
    *(a1 + 8) = *(v9 - 4);
    *a1 = v25;
  }

  *(v9 - 12) = v3;
  *(v9 - 8) = v4;
  *(v9 - 4) = v5;
  return v9 - 12;
}

BOOL sub_7CB868(uint64_t a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = a2 - 3;
        v27 = *(a1 + 4);
        v28 = *(a1 + 16);
        if (v28 >= v27 && (v28 != v27 || *(a1 + 12) >= *a1))
        {
          v39 = *(a2 - 2);
          if (v39 < v28 || v39 == v28 && *v3 < *(a1 + 12))
          {
            v40 = *(a1 + 20);
            v41 = *(a1 + 12);
            v42 = *(a2 - 4);
            *(a1 + 12) = *v3;
            *(a1 + 20) = v42;
            *v3 = v41;
            *(a2 - 4) = v40;
            v43 = *(a1 + 4);
            v44 = *(a1 + 16);
            if (v44 < v43 || v44 == v43 && *(a1 + 12) < *a1)
            {
              v45 = *(a1 + 8);
              v46 = *a1;
              *a1 = *(a1 + 12);
              *(a1 + 8) = *(a1 + 20);
              *(a1 + 12) = v46;
              *(a1 + 20) = v45;
              return 1;
            }
          }

          return 1;
        }

        v29 = *(a2 - 2);
        if (v29 >= v28 && (v29 != v28 || *v3 >= *(a1 + 12)))
        {
          v53 = *(a1 + 8);
          v54 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v54;
          *(a1 + 20) = v53;
          v55 = *(a1 + 16);
          v56 = *(a2 - 2);
          if (v56 >= v55 && (v56 != v55 || *v3 >= *(a1 + 12)))
          {
            return 1;
          }

          v30 = *(a1 + 20);
          v31 = *(a1 + 12);
          v57 = *(a2 - 4);
          *(a1 + 12) = *v3;
          *(a1 + 20) = v57;
LABEL_19:
          *v3 = v31;
          *(v3 + 8) = v30;
          return 1;
        }

LABEL_18:
        v30 = *(a1 + 8);
        v31 = *a1;
        v32 = *(v3 + 8);
        *a1 = *v3;
        *(a1 + 8) = v32;
        goto LABEL_19;
      case 4:
        sub_7CB28C(a1, (a1 + 12), (a1 + 24), (a2 - 3));
        return 1;
      case 5:
        v6 = a2 - 3;
        sub_7CB28C(a1, (a1 + 12), (a1 + 24), (a1 + 36));
        v9 = *(a1 + 40);
        v10 = *(a2 - 2);
        if (v10 < v9 || v10 == v9 && *v6 < *(a1 + 36))
        {
          v11 = *(a1 + 44);
          v12 = *(a1 + 36);
          v13 = *(v6 + 8);
          *(a1 + 36) = *v6;
          *(a1 + 44) = v13;
          *v6 = v12;
          *(v6 + 8) = v11;
          v14 = *(a1 + 28);
          v15 = *(a1 + 40);
          if (v15 < v14 || v15 == v14 && *(a1 + 36) < *(a1 + 24))
          {
            v16 = *(a1 + 32);
            v17 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 36);
            *(a1 + 32) = *(a1 + 44);
            *(a1 + 36) = v17;
            *(a1 + 44) = v16;
            v18 = *(a1 + 16);
            v19 = *(a1 + 28);
            if (v19 < v18 || v19 == v18 && *(a1 + 24) < *(a1 + 12))
            {
              v20 = *(a1 + 20);
              v21 = *(a1 + 12);
              *(a1 + 12) = *(a1 + 24);
              *(a1 + 20) = *(a1 + 32);
              *(a1 + 24) = v21;
              *(a1 + 32) = v20;
              v22 = *(a1 + 4);
              v23 = *(a1 + 16);
              if (v23 < v22 || v23 == v22 && *(a1 + 12) < *a1)
              {
                v24 = *(a1 + 8);
                v25 = *a1;
                *a1 = *(a1 + 12);
                *(a1 + 8) = *(a1 + 20);
                *(a1 + 12) = v25;
                *(a1 + 20) = v24;
                return 1;
              }
            }
          }
        }

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
      v3 = a2 - 3;
      v4 = *(a1 + 4);
      v5 = *(a2 - 2);
      if (v5 >= v4 && (v5 != v4 || *v3 >= *a1))
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

  v33 = a1 + 24;
  v34 = *(a1 + 4);
  v35 = *(a1 + 16);
  if (v35 < v34 || v35 == v34 && *(a1 + 12) < *a1)
  {
    v36 = *(a1 + 28);
    if (v36 < v35 || v36 == v35 && *v33 < *(a1 + 12))
    {
      v37 = *(a1 + 8);
      v38 = *a1;
      *a1 = *v33;
      *(a1 + 8) = *(a1 + 32);
    }

    else
    {
      v58 = *(a1 + 8);
      v59 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v59;
      *(a1 + 20) = v58;
      v60 = *(a1 + 16);
      if (v36 >= v60 && (v36 != v60 || *v33 >= *(a1 + 12)))
      {
        goto LABEL_46;
      }

      v37 = *(a1 + 20);
      v38 = *(a1 + 12);
      *(a1 + 12) = *v33;
      *(a1 + 20) = *(a1 + 32);
    }

    *v33 = v38;
    *(a1 + 32) = v37;
    goto LABEL_46;
  }

  v47 = *(a1 + 28);
  if (v47 < v35 || v47 == v35 && *v33 < *(a1 + 12))
  {
    v48 = *(a1 + 20);
    v49 = *(a1 + 12);
    *(a1 + 12) = *v33;
    *(a1 + 20) = *(a1 + 32);
    *v33 = v49;
    *(a1 + 32) = v48;
    v50 = *(a1 + 16);
    if (v50 < v34 || v50 == v34 && *(a1 + 12) < *a1)
    {
      v51 = *(a1 + 8);
      v52 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v52;
      *(a1 + 20) = v51;
    }
  }

LABEL_46:
  v61 = (a1 + 36);
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v62 = 0;
  v63 = 0;
  while (2)
  {
    v64 = *(v33 + 4);
    v65 = v61[1];
    if (v65 >= v64)
    {
      if (v65 != v64)
      {
        goto LABEL_50;
      }

      v66 = *v61;
      if (*v61 >= *v33)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v66 = *v61;
    }

    v67 = v61[2];
    *v61 = *v33;
    *(v61 + 8) = *(v33 + 8);
    v68 = v62;
    while (1)
    {
      v69 = a1 + v68;
      v70 = *(a1 + v68 + 16);
      if (v65 >= v70)
      {
        break;
      }

LABEL_54:
      v33 -= 12;
      *(v69 + 24) = *(v69 + 12);
      *(v69 + 32) = *(v69 + 20);
      v68 -= 12;
      if (v68 == -24)
      {
        v33 = a1;
        goto LABEL_49;
      }
    }

    if (v65 == v70)
    {
      if (v66 >= *(v69 + 12))
      {
        goto LABEL_49;
      }

      goto LABEL_54;
    }

    v33 = a1 + v68 + 24;
LABEL_49:
    *v33 = v66;
    *(v33 + 4) = v65;
    *(v33 + 8) = v67;
    if (++v63 != 8)
    {
LABEL_50:
      v33 = v61;
      v62 += 12;
      v61 += 3;
      if (v61 == a2)
      {
        return 1;
      }

      continue;
    }

    return v61 + 3 == a2;
  }
}

uint64_t sub_7CBE5C(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
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
        v7 = *(v6 + 4);
        v8 = *(v6 + 1);
        if (v8 < v7 || v8 == v7 && *v6 < *(v6 + 3))
        {
          v6 = (v6 + 12);
          v5 = 0x5555555555555556 * ((a4 - result) >> 2) + 2;
        }
      }

      v9 = a4[1];
      v10 = *(v6 + 1);
      v11 = v10 == v9;
      if (v10 >= v9)
      {
        v12 = *a4;
        if (!v11 || *v6 >= v12)
        {
          v13 = a4[2];
          v14 = *(v6 + 8);
          *a4 = *v6;
          *(a4 + 8) = v14;
          if (v4 >= v5)
          {
            while (1)
            {
              v17 = 2 * v5;
              v5 = (2 * v5) | 1;
              v15 = (result + 12 * v5);
              v18 = v17 + 2;
              if (v18 < a3)
              {
                v19 = *(v15 + 4);
                v20 = *(v15 + 1);
                if (v20 < v19 || v20 == v19 && *v15 < *(v15 + 3))
                {
                  v15 = (v15 + 12);
                  v5 = v18;
                }
              }

              v21 = *(v15 + 1);
              if (v21 < v9 || v21 == v9 && *v15 < v12)
              {
                break;
              }

              v16 = *v15;
              *(v6 + 8) = *(v15 + 8);
              *v6 = v16;
              v6 = v15;
              if (v4 < v5)
              {
                goto LABEL_14;
              }
            }
          }

          v15 = v6;
LABEL_14:
          *v15 = v12;
          *(v15 + 1) = v9;
          *(v15 + 8) = v13;
        }
      }
    }
  }

  return result;
}

char *sub_7CBFB8(char *result, char *a2)
{
  if (a2 - result >= 13)
  {
    v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 2);
    do
    {
      v4 = 0;
      v28 = *result;
      v29 = *(result + 2);
      v5 = result;
      do
      {
        v7 = v5;
        v8 = &v5[12 * v4];
        v5 = v8 + 12;
        v9 = 2 * v4;
        v4 = (2 * v4) | 1;
        v10 = v9 + 2;
        if (v10 < v2)
        {
          v11 = v8 + 24;
          v12 = *(v8 + 7);
          v13 = *(v8 + 4);
          if (v13 < v12 || v13 == v12 && *v5 < *v11)
          {
            v5 = v11;
            v4 = v10;
          }
        }

        v6 = *v5;
        v7[8] = v5[8];
        *v7 = v6;
      }

      while (v4 <= ((v2 - 2) >> 1));
      a2 -= 12;
      if (v5 == a2)
      {
        v5[8] = v29;
        *v5 = v28;
      }

      else
      {
        v14 = *a2;
        v5[8] = a2[8];
        *v5 = v14;
        *a2 = v28;
        a2[8] = v29;
        v15 = v5 - result + 12;
        if (v15 >= 13)
        {
          v16 = -2 - 0x5555555555555555 * (v15 >> 2);
          v17 = v16 >> 1;
          v18 = &result[12 * (v16 >> 1)];
          v19 = *(v5 + 1);
          v20 = *(v18 + 1);
          if (v20 < v19)
          {
            v21 = *v5;
LABEL_17:
            v22 = *(v5 + 2);
            v23 = v18[8];
            *v5 = *v18;
            v5[8] = v23;
            if (v16 >= 2)
            {
              while (1)
              {
                v26 = v17 - 1;
                v17 = (v17 - 1) >> 1;
                v24 = &result[12 * v17];
                v27 = *(v24 + 1);
                if (v27 >= v19 && (v27 != v19 || *v24 >= v21))
                {
                  break;
                }

                v25 = *v24;
                v18[8] = v24[8];
                *v18 = v25;
                v18 = &result[12 * v17];
                if (v26 <= 1)
                {
                  goto LABEL_19;
                }
              }
            }

            v24 = v18;
LABEL_19:
            *v24 = v21;
            *(v24 + 1) = v19;
            v24[8] = v22;
            continue;
          }

          if (v20 == v19)
          {
            v21 = *v5;
            if (*v18 < *v5)
            {
              goto LABEL_17;
            }
          }
        }
      }
    }

    while (v2-- > 2);
  }

  return result;
}

uint64_t *sub_7CC190(void *a1, void *a2)
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

void sub_7CC4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void sub_7CC510()
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
  xmmword_27A9928 = 0u;
  unk_27A9938 = 0u;
  dword_27A9948 = 1065353216;
  sub_3A9A34(&xmmword_27A9928, v0);
  sub_3A9A34(&xmmword_27A9928, v3);
  sub_3A9A34(&xmmword_27A9928, __p);
  sub_3A9A34(&xmmword_27A9928, v9);
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
    qword_27A9900 = 0;
    qword_27A9908 = 0;
    qword_27A98F8 = 0;
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

void sub_7CC758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A9910)
  {
    qword_27A9918 = qword_27A9910;
    operator delete(qword_27A9910);
  }

  _Unwind_Resume(exception_object);
}

void sub_7CC804(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    do
    {
      v3 = nullsub_1(v1);
      v4 = *v3;
      v5 = v3[1];
      while (v4 != v5)
      {
        sub_7CC9EC(v4, &__p);
        v6 = v13;
        if (v13)
        {
          v7 = *(v4 + 1160);
          do
          {
            if (v7 >= *(v4 + 1168))
            {
              v7 = sub_7CDCD4((v4 + 1152), v6 + 1, v6 + 21);
            }

            else
            {
              sub_7CDF18(v7, v6 + 1, v6 + 21);
              v7 += 22;
              *(v4 + 1160) = v7;
            }

            *(v4 + 1160) = v7;
            v6 = *v6;
          }

          while (v6);
          v8 = v13;
          if (v13)
          {
            do
            {
              v10 = *v8;
              v11 = *(v8 + 21);
              if (v11)
              {
                *(v8 + 22) = v11;
                operator delete(v11);
              }

              if (v8[167] < 0)
              {
                operator delete(*(v8 + 18));
                if ((v8[135] & 0x80000000) == 0)
                {
LABEL_21:
                  if ((v8[111] & 0x80000000) == 0)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_27;
                }
              }

              else if ((v8[135] & 0x80000000) == 0)
              {
                goto LABEL_21;
              }

              operator delete(*(v8 + 14));
              if ((v8[111] & 0x80000000) == 0)
              {
LABEL_22:
                if ((v8[71] & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_28;
              }

LABEL_27:
              operator delete(*(v8 + 11));
              if ((v8[71] & 0x80000000) == 0)
              {
LABEL_23:
                if (v8[39] < 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_16;
              }

LABEL_28:
              operator delete(*(v8 + 6));
              if (v8[39] < 0)
              {
LABEL_29:
                operator delete(*(v8 + 2));
              }

LABEL_16:
              operator delete(v8);
              v8 = v10;
            }

            while (v10);
          }
        }

        v9 = __p;
        __p = 0;
        if (v9)
        {
          operator delete(v9);
        }

        v4 += 12656;
      }

      v1 += 7808;
    }

    while (v1 != v2);
  }
}

void sub_7CC9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12)
{
  v13 = a12;
  if (a12)
  {
    do
    {
      v14 = *v13;
      sub_5C17B4((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7CC9EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  sub_7C8840(0, v59);
  sub_7CE0E4(a1, v58);
  sub_4D0560();
  v4 = v3;
  v6 = v5;
  v44 = 0;
LABEL_2:
  sub_4D0568();
  v8 = v7;
  v10 = v9;
  if (v4)
  {
    v11 = sub_4D1DC0(v4);
    v12 = v6 < v11;
    if (!v8)
    {
      if (v6 >= v11)
      {
        goto LABEL_52;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_52;
    }

    v12 = 0;
  }

  v13 = sub_4D1DC0(v8);
  if (v10 >= v13 || !v12)
  {
    if (((v12 ^ (v10 < v13)) & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_15;
  }

  v15 = sub_4D1F50(v4, v6);
  if (v15 != sub_4D1F50(v8, v10))
  {
LABEL_15:
    v16 = sub_4D1F50(v4, v6);
    v57 = *(v16 + 32) | (*(v16 + 36) << 32);
    if (!sub_3A8760(v58, &v57))
    {
      goto LABEL_19;
    }

    v45[0] = &v57;
    v18 = sub_7CC190(v59, &v57);
    sub_7CE2EC(v4, v6, v18 + 3, &v55);
    v19 = v55;
    v43 = v56;
    if (v55 == v56)
    {
      if (!v55)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    while (1)
    {
      v61 = &v57;
      v20 = sub_7CEE40(v58, &v57);
      sub_5139E8(v45, (v20 + 3));
      v61 = v45;
      v21 = sub_7CF1EC(a2, v45);
      v22 = sub_7C9F64(v19, v4, v6);
      v23 = sub_7CA18C(v19, v4, v6);
      v24 = v22 + v44;
      v25 = v23 + v44;
      v26 = v21[21];
      v27 = v21[22];
      if (v26 != v27 && *(v27 - 8) == v24)
      {
        break;
      }

      v28 = v21[23];
      if (v27 < v28)
      {
        sub_3320D0(v21[22], v24, v25);
        v21[22] = v27 + 16;
        v21[22] = v27 + 16;
        if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      v29 = (v27 - v26) >> 4;
      if ((v29 + 1) >> 60)
      {
        sub_1794();
      }

      v30 = v28 - v26;
      v31 = v30 >> 3;
      if (v30 >> 3 <= (v29 + 1))
      {
        v31 = v29 + 1;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v32 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      if (v32)
      {
        if (!(v32 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v33 = sub_3320D0((16 * v29), v24, v25);
      v34 = v33 + 2;
      v35 = v21[21];
      v36 = v21[22] - v35;
      v37 = v33 - v36;
      memcpy(v33 - v36, v35, v36);
      v21[21] = v37;
      v21[22] = v34;
      v21[23] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      v21[22] = v34;
      if (v54 < 0)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v52 < 0)
      {
        operator delete(v51);
        if ((v50 & 0x80000000) == 0)
        {
LABEL_30:
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_35;
        }
      }

      else if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v49);
      if ((v48 & 0x80000000) == 0)
      {
LABEL_31:
        if (v46 < 0)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }

LABEL_35:
      operator delete(v47);
      if (v46 < 0)
      {
LABEL_36:
        operator delete(v45[0]);
      }

LABEL_20:
      v19 += 2;
      if (v19 == v43)
      {
        v19 = v55;
        if (!v55)
        {
LABEL_19:
          v44 += sub_4D23F8(v4, v6++, v17);
          goto LABEL_2;
        }

LABEL_18:
        v56 = v19;
        operator delete(v19);
        goto LABEL_19;
      }
    }

    *(v27 - 8) = v25;
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    operator delete(__p);
    goto LABEL_28;
  }

LABEL_52:
  sub_7CE6CC(v58);
  v38 = v60;
  if (v60)
  {
    do
    {
      v40 = *v38;
      v41 = v38[3];
      if (v41)
      {
        v38[4] = v41;
        operator delete(v41);
      }

      operator delete(v38);
      v38 = v40;
    }

    while (v40);
  }

  v39 = v59[0];
  v59[0] = 0;
  if (v39)
  {
    operator delete(v39);
  }
}

void sub_7CCE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  sub_7CE6CC(v33 - 184);
  sub_39AFC(v33 - 144);
  sub_7CCED4(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_7CCED4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_5C17B4((v2 + 2));
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

void sub_7CCF34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    do
    {
      v3 = nullsub_1(v1);
      v4 = *v3;
      v5 = v3[1];
      while (v4 != v5)
      {
        sub_7CD11C(v4, &__p);
        v6 = v13;
        if (v13)
        {
          v7 = *(v4 + 1160);
          do
          {
            if (v7 >= *(v4 + 1168))
            {
              v7 = sub_7CDCD4((v4 + 1152), v6 + 1, v6 + 21);
            }

            else
            {
              sub_7CDF18(v7, v6 + 1, v6 + 21);
              v7 += 22;
              *(v4 + 1160) = v7;
            }

            *(v4 + 1160) = v7;
            v6 = *v6;
          }

          while (v6);
          v8 = v13;
          if (v13)
          {
            do
            {
              v10 = *v8;
              v11 = *(v8 + 21);
              if (v11)
              {
                *(v8 + 22) = v11;
                operator delete(v11);
              }

              if (v8[167] < 0)
              {
                operator delete(*(v8 + 18));
                if ((v8[135] & 0x80000000) == 0)
                {
LABEL_21:
                  if ((v8[111] & 0x80000000) == 0)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_27;
                }
              }

              else if ((v8[135] & 0x80000000) == 0)
              {
                goto LABEL_21;
              }

              operator delete(*(v8 + 14));
              if ((v8[111] & 0x80000000) == 0)
              {
LABEL_22:
                if ((v8[71] & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_28;
              }

LABEL_27:
              operator delete(*(v8 + 11));
              if ((v8[71] & 0x80000000) == 0)
              {
LABEL_23:
                if (v8[39] < 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_16;
              }

LABEL_28:
              operator delete(*(v8 + 6));
              if (v8[39] < 0)
              {
LABEL_29:
                operator delete(*(v8 + 2));
              }

LABEL_16:
              operator delete(v8);
              v8 = v10;
            }

            while (v10);
          }
        }

        v9 = __p;
        __p = 0;
        if (v9)
        {
          operator delete(v9);
        }

        v4 += 12656;
      }

      v1 += 7808;
    }

    while (v1 != v2);
  }
}