void sub_775A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

void sub_775A34()
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
  xmmword_27A6540 = 0u;
  *algn_27A6550 = 0u;
  dword_27A6560 = 1065353216;
  sub_3A9A34(&xmmword_27A6540, v0);
  sub_3A9A34(&xmmword_27A6540, v3);
  sub_3A9A34(&xmmword_27A6540, __p);
  sub_3A9A34(&xmmword_27A6540, v9);
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
    byte_27A657F = 3;
    LODWORD(qword_27A6568) = 5136193;
    byte_27A6597 = 3;
    LODWORD(qword_27A6580) = 5136194;
    byte_27A65AF = 3;
    LODWORD(qword_27A6598) = 5136195;
    byte_27A65C7 = 15;
    strcpy(&qword_27A65B0, "vehicle_mass_kg");
    byte_27A65DF = 21;
    strcpy(&xmmword_27A65C8, "vehicle_cargo_mass_kg");
    byte_27A65F7 = 19;
    strcpy(&qword_27A65E0, "vehicle_aux_power_w");
    byte_27A660F = 15;
    strcpy(&qword_27A65F8, "dcdc_efficiency");
    strcpy(&qword_27A6610, "drive_train_efficiency");
    HIBYTE(word_27A6626) = 22;
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

void sub_775E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A6528)
  {
    qword_27A6530 = qword_27A6528;
    operator delete(qword_27A6528);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_775F40(uint64_t a1, uint64_t a2)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(a1 + 68) = -1;
  *(a1 + 76) = -1;
  *a1 = v2;
  *(a1 + 16) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  HIBYTE(v11[2]) = 16;
  strcpy(v11, "RouteCameraInput");
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = sub_3AEC94(a2, v11, &__p);
  sub_5ADDC(&v12, v3);
  v4 = __p;
  if (__p)
  {
    v5 = v9;
    v6 = __p;
    if (v9 != __p)
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
      v6 = __p;
    }

    v9 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v11[2]) < 0)
  {
    operator delete(v11[0]);
  }

  operator new();
}

void sub_776E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_6BB60(&a23);
  _Unwind_Resume(a1);
}

void sub_776F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_1A104(&a14);
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x776F7CLL);
}

void sub_776FB8(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = sub_3AF6B4(a2);
  v3 = *a1;
  v6[23] = 13;
  strcpy(v6, "RouteGuidance");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(v3, v6, v5);
  sub_41D598(v4, &v7);
  *(a1 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  sub_77CC20();
}

void sub_777EB4()
{
  v1 = *(v0 + 1648);
  *(v0 + 1648) = 0;
  if (v1)
  {
    JUMPOUT(0x777E68);
  }

  JUMPOUT(0x777E14);
}

uint64_t *sub_777EF4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 1752);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }

    sub_528AB4(v1 + 168);
    operator delete();
  }

  return result;
}

uint64_t sub_777F98(uint64_t a1)
{
  v2 = *(a1 + 4912);
  if (v2)
  {
    *(a1 + 4920) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1856);
  *(a1 + 1856) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(a1 + 1848);
  *(a1 + 1848) = 0;
  if (v4)
  {
    sub_5135D0((v4 + 1288));
    operator delete();
  }

  v5 = *(a1 + 1840);
  *(a1 + 1840) = 0;
  if (v5)
  {
    if (*(v5 + 31) < 0)
    {
      operator delete(*(v5 + 8));
    }

    operator delete();
  }

  v6 = *(a1 + 1832);
  *(a1 + 1832) = 0;
  if (v6)
  {
    sub_78C74C(a1 + 1832, v6);
  }

  v7 = *(a1 + 1824);
  *(a1 + 1824) = 0;
  if (v7)
  {
    if (*(v7 + 31) < 0)
    {
      operator delete(*(v7 + 8));
    }

    operator delete();
  }

  v8 = *(a1 + 1816);
  *(a1 + 1816) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1808);
  *(a1 + 1808) = 0;
  if (v9)
  {
    sub_528AB4(v9 + 160);
    operator delete();
  }

  v10 = *(a1 + 1800);
  *(a1 + 1800) = 0;
  if (v10)
  {
    operator delete();
  }

  v11 = *(a1 + 1792);
  *(a1 + 1792) = 0;
  if (v11)
  {
    v12 = *(v11 + 1752);
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    sub_528AB4(v11 + 168);
    operator delete();
  }

  v13 = *(a1 + 1784);
  *(a1 + 1784) = 0;
  if (v13)
  {
    operator delete();
  }

  v14 = *(a1 + 1776);
  *(a1 + 1776) = 0;
  if (v14)
  {
    operator delete();
  }

  v15 = *(a1 + 1768);
  *(a1 + 1768) = 0;
  if (v15)
  {
    sub_F26220();
    operator delete();
  }

  v16 = *(a1 + 1760);
  *(a1 + 1760) = 0;
  if (v16)
  {
    sub_78C414(v16);
    operator delete();
  }

  v17 = *(a1 + 1752);
  *(a1 + 1752) = 0;
  if (v17)
  {
    operator delete();
  }

  v18 = *(a1 + 1744);
  *(a1 + 1744) = 0;
  if (v18)
  {
    nullsub_1(v18);
    operator delete();
  }

  v19 = *(a1 + 1736);
  *(a1 + 1736) = 0;
  if (v19)
  {
    operator delete();
  }

  v20 = *(a1 + 1728);
  *(a1 + 1728) = 0;
  if (v20)
  {
    sub_6D2D60(v20);
    operator delete();
  }

  v21 = *(a1 + 1720);
  *(a1 + 1720) = 0;
  if (v21)
  {
    sub_78C26C(a1 + 1720, v21);
  }

  v22 = *(a1 + 1712);
  *(a1 + 1712) = 0;
  if (v22)
  {
    sub_5135D0((v22 + 1312));
    operator delete();
  }

  v23 = *(a1 + 1704);
  *(a1 + 1704) = 0;
  if (v23)
  {
    sub_5135D0((v23 + 4848));
    sub_5135D0((v23 + 1312));
    operator delete();
  }

  v24 = *(a1 + 1696);
  *(a1 + 1696) = 0;
  if (v24)
  {
    operator delete();
  }

  v25 = *(a1 + 1688);
  *(a1 + 1688) = 0;
  if (v25)
  {
    sub_624E38(v25);
    operator delete();
  }

  v26 = *(a1 + 1680);
  *(a1 + 1680) = 0;
  if (v26)
  {
    v27 = *(v26 + 3896);
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = *(v26 + 24);
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    operator delete();
  }

  v29 = *(a1 + 1672);
  *(a1 + 1672) = 0;
  if (v29)
  {
    v30 = *(v29 + 24);
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    operator delete();
  }

  v31 = *(a1 + 1664);
  *(a1 + 1664) = 0;
  if (v31)
  {
    sub_78BCF8(a1 + 1664, v31);
  }

  v32 = *(a1 + 1656);
  *(a1 + 1656) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 1648);
  *(a1 + 1648) = 0;
  if (v33)
  {
    sub_78BB3C(a1 + 1648, v33);
  }

  v34 = *(a1 + 1640);
  *(a1 + 1640) = 0;
  if (v34)
  {
    operator delete();
  }

  v35 = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (v35)
  {
    sub_6926D4((v35 + 3568));
    sub_5135D0((v35 + 1304));
    operator delete();
  }

  if (*(a1 + 1631) < 0)
  {
    operator delete(*(a1 + 1608));
  }

  sub_528AB4(a1 + 32);
  return a1;
}

void sub_77853C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  sub_7E9A4(&v12);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v10[1] = 0;
  v10[0] = 0;
  v11 = 0;
  sub_60BAC4(v10, 0x86BCA1AF286BCA1BLL * (v2[1] - *v2));
  sub_78C8FC(*v2, v2[1], v10);
  v6 = v10[1];
  v7 = v10[0];
  if (v10[0] != v10[1])
  {
    while (sub_4C5A80(v7) && !sub_4C49D0(v7))
    {
      v7 += 128;
      if (v7 == v6)
      {
        sub_3AF4C0(*v3);
        sub_778C38();
      }
    }

    v7 = v10[0];
  }

  if (v7)
  {
    v8 = v10[1];
    v9 = v7;
    if (v10[1] != v7)
    {
      do
      {
        v8 -= 128;
        sub_60B38C(v8);
      }

      while (v8 != v7);
      v9 = v10[0];
    }

    v10[1] = v7;
    operator delete(v9);
  }
}

void sub_778B80(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27331B0);
  if (SLOBYTE(STACK[0x306F]) < 0)
  {
    operator delete(STACK[0x3058]);
  }

  sub_7881CC(&STACK[0x3168]);
  sub_60A84C(&STACK[0x3130]);
  sub_77A2F0(v1);
  _Unwind_Resume(a1);
}

void sub_778C38()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  sub_7E9A4(v11);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  sub_77C290(v7, 0x86BCA1AF286BCA1BLL * ((v4[1] - *v4) >> 3));
  v9 = *v2;
  v8 = v2[1];
  if (*v2 != v8)
  {
    while (*(v9 + 176) != 2)
    {
      v9 += 440;
      if (v9 == v8)
      {
        goto LABEL_6;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }
    }
  }

  sub_FA06C4(v10, *v5);
}

void sub_77A1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_77A2F0(a25);
  _Unwind_Resume(a1);
}

void sub_77A1C4(_Unwind_Exception *a1)
{
  sub_60B0D4((v2 - 232));
  sub_77A2F0(v1);
  _Unwind_Resume(a1);
}

void sub_77A2CC(_Unwind_Exception *a1)
{
  sub_789448(&STACK[0x358]);
  sub_60B0D4((v2 - 232));
  sub_77A2F0(v1);
  _Unwind_Resume(a1);
}

void **sub_77A2F0(void **a1)
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
        v3 = sub_789448(v3 - 7808);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_77A358(uint64_t a1, char ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = v3 + 976;
    do
    {
      v6 = sub_68E170(v3);
      v7 = v6 != 0;
      if (v6)
      {
        break;
      }

      v3 += 976;
      v14 = v5 == v4;
      v5 += 976;
    }

    while (!v14);
    v3 = *a2;
    v4 = a2[1];
    if (*a2 != v4)
    {
      v8 = v3 + 976;
      do
      {
        v9 = sub_68DFF0(v3);
        if (v9)
        {
          break;
        }

        v3 += 976;
        v14 = v8 == v4;
        v8 += 976;
      }

      while (!v14);
      v3 = *a2;
      v4 = a2[1];
      v106 = v9 != 0;
      v107 = v7;
      if (*a2 != v4)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  v106 = 0;
  v107 = v7;
  if (v3 != v4)
  {
LABEL_12:
    v10 = v3 + 976;
    do
    {
      v11 = sub_68F328(v3);
      v12 = v11[1];
      v14 = v12 == *v11;
      v13 = v12 != *v11;
      v3 += 976;
      v14 = !v14 || v10 == v4;
      v10 += 976;
    }

    while (!v14);
    v109 = v13;
    v112 = *a2;
    v110 = a2[1];
    if (*a2 == v110)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  v109 = 0;
  v112 = v3;
  v110 = v4;
  if (v3 == v4)
  {
    return;
  }

LABEL_23:
  if (v107)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v106)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v104 = v16;
  v105 = v15;
  if (v109)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v108 = v17;
  do
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_189;
    }

    sub_690E18(v112, __p);
    sub_690D80(v112, &v120);
    v124 = 0uLL;
    v125 = 0;
    v19 = __p[0];
    v114 = __p[1];
    if (__p[0] == __p[1])
    {
      v117[0] = 0;
      v117[1] = 0;
      v36 = v105;
      v118 = 0;
    }

    else
    {
      do
      {
        v20 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v22 = v124;
          v23 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v23 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v23)
          {
            v23 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v24 = 0x3A196B1EDD80E8;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (v24 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v25 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v25 = 0u;
          *(v25 + 16) = 0u;
          *(v25 + 32) = 0u;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0u;
          *(v25 + 112) = 0u;
          *(v25 + 160) = 0;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0u;
          *(v25 + 4) = -1;
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          *(v25 + 8) = 0;
          *(v25 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v25 + 40) = -1;
          *(v25 + 48) = 0x7FFFFFFF;
          *(v25 + 56) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 113) = 0u;
          *(v25 + 140) = 0;
          *(v25 + 132) = 0;
          *(v25 + 154) = 0;
          *(v25 + 148) = 0;
          v26 = v25 - (v20 - v22);
          *(v25 + 1120) = 0;
          if (v22 != v20)
          {
            v27 = v25 - (v20 - v22);
            v28 = v22;
            do
            {
              *v27 = 0;
              *(v27 + 1120) = -1;
              v29 = v28[280];
              if (v29 != -1)
              {
                v126[0] = v27;
                (off_266C810[v29])(v126, v28);
                *(v27 + 1120) = v29;
              }

              v28 += 282;
              v27 += 1128;
            }

            while (v28 != v20);
            v26 = v25 - (v20 - v22);
            do
            {
              v30 = v22[280];
              if (v30 != -1)
              {
                (off_266C800[v30])(v126, v22);
              }

              v22[280] = -1;
              v22 += 282;
            }

            while (v22 != v20);
            v22 = v124;
          }

          v21 = v25 + 1128;
          *&v124 = v26;
          v125 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
          *(v20 + 48) = 0u;
          *(v20 + 64) = 0u;
          *(v20 + 80) = 0u;
          *(v20 + 96) = 0u;
          *(v20 + 112) = 0u;
          *(v20 + 160) = 0;
          *(v20 + 128) = 0u;
          *(v20 + 144) = 0u;
          *(v20 + 4) = -1;
          *(v20 + 16) = 0;
          *(v20 + 24) = 0;
          *(v20 + 8) = 0;
          *(v20 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v20 + 40) = -1;
          *(v20 + 48) = 0x7FFFFFFF;
          *(v20 + 56) = 0u;
          *(v20 + 72) = 0u;
          *(v20 + 88) = 0u;
          *(v20 + 104) = 0u;
          *(v20 + 113) = 0u;
          *(v20 + 140) = 0;
          *(v20 + 132) = 0;
          *(v20 + 154) = 0;
          *(v20 + 148) = 0;
          *(v20 + 1120) = 0;
          v21 = v20 + 1128;
        }

        *(&v124 + 1) = v21;
        v31 = *(v21 - 8);
        if (v31 != -1)
        {
          (off_266C800[v31])(v126, v21 - 1128);
        }

        *(v21 - 8) = -1;
        sub_52A464(v21 - 1128, v19);
        *(v21 - 8) = 0;
        v19 += 168;
      }

      while (v19 != v114);
      v32 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v107)
      {
        v33 = *(&v32 + 1);
        v34 = v32;
        if (*(&v32 + 1) == v32)
        {
          v36 = 2;
        }

        else
        {
          v35 = v32;
          do
          {
            if (sub_78ED2C(&v124, v35, 0) && (sub_78ED2C(&v124, v35, 1) & 1) != 0)
            {
              v36 = 6;
              goto LABEL_82;
            }

            v35 += 1128;
          }

          while (v35 != v33);
          v37 = v34;
          do
          {
            if (sub_78ED2C(&v124, v37, 1))
            {
              v36 = 4;
              goto LABEL_82;
            }

            v37 += 1128;
          }

          while (v37 != v33);
          while (!sub_78ED2C(&v124, v34, 0))
          {
            v34 += 1128;
            if (v34 == v33)
            {
              v36 = 7;
              goto LABEL_82;
            }
          }

          v36 = 5;
        }
      }

      else
      {
        v36 = 1;
      }
    }

LABEL_82:
    v119 = v36;
    sub_68DFA4(v112, &v119);
    v38 = v117[0];
    if (v117[0])
    {
      v39 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v40 = v39 - 1128;
          v41 = *(v39 - 2);
          if (v41 != -1)
          {
            (off_266C800[v41])(&v124, v39 - 1128);
          }

          *(v39 - 2) = -1;
          v39 -= 1128;
        }

        while (v40 != v38);
        v38 = v117[0];
      }

      operator delete(v38);
    }

    v124 = 0uLL;
    v125 = 0;
    v42 = v120;
    v115 = v121;
    if (v120 == v121)
    {
      v117[0] = 0;
      v117[1] = 0;
      v59 = v104;
      v118 = 0;
    }

    else
    {
      do
      {
        v43 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v45 = v124;
          v46 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v46 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v46)
          {
            v46 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v47 = 0x3A196B1EDD80E8;
          }

          else
          {
            v47 = v46;
          }

          if (v47)
          {
            if (v47 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v48 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v48 = 0u;
          *(v48 + 16) = 0u;
          *(v48 + 32) = 0u;
          *(v48 + 48) = 0u;
          *(v48 + 64) = 0u;
          *(v48 + 80) = 0u;
          *(v48 + 96) = 0u;
          *(v48 + 112) = 0u;
          *(v48 + 160) = 0;
          *(v48 + 128) = 0u;
          *(v48 + 144) = 0u;
          *(v48 + 4) = -1;
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          *(v48 + 8) = 0;
          *(v48 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v48 + 40) = -1;
          *(v48 + 48) = 0x7FFFFFFF;
          *(v48 + 56) = 0u;
          *(v48 + 72) = 0u;
          *(v48 + 88) = 0u;
          *(v48 + 104) = 0u;
          *(v48 + 113) = 0u;
          *(v48 + 140) = 0;
          *(v48 + 132) = 0;
          *(v48 + 154) = 0;
          *(v48 + 148) = 0;
          v49 = v48 - (v43 - v45);
          *(v48 + 1120) = 0;
          if (v45 != v43)
          {
            v50 = v48 - (v43 - v45);
            v51 = v45;
            do
            {
              *v50 = 0;
              *(v50 + 1120) = -1;
              v52 = v51[280];
              if (v52 != -1)
              {
                v126[0] = v50;
                (off_266C810[v52])(v126, v51);
                *(v50 + 1120) = v52;
              }

              v51 += 282;
              v50 += 1128;
            }

            while (v51 != v43);
            v49 = v48 - (v43 - v45);
            do
            {
              v53 = v45[280];
              if (v53 != -1)
              {
                (off_266C800[v53])(v126, v45);
              }

              v45[280] = -1;
              v45 += 282;
            }

            while (v45 != v43);
            v45 = v124;
          }

          v44 = v48 + 1128;
          *&v124 = v49;
          v125 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v43 + 16) = 0u;
          *(v43 + 32) = 0u;
          *(v43 + 48) = 0u;
          *(v43 + 64) = 0u;
          *(v43 + 80) = 0u;
          *(v43 + 96) = 0u;
          *(v43 + 112) = 0u;
          *(v43 + 160) = 0;
          *(v43 + 128) = 0u;
          *(v43 + 144) = 0u;
          *(v43 + 4) = -1;
          *(v43 + 16) = 0;
          *(v43 + 24) = 0;
          *(v43 + 8) = 0;
          *(v43 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v43 + 40) = -1;
          *(v43 + 48) = 0x7FFFFFFF;
          *(v43 + 56) = 0u;
          *(v43 + 72) = 0u;
          *(v43 + 88) = 0u;
          *(v43 + 104) = 0u;
          *(v43 + 113) = 0u;
          *(v43 + 140) = 0;
          *(v43 + 132) = 0;
          *(v43 + 154) = 0;
          *(v43 + 148) = 0;
          *(v43 + 1120) = 0;
          v44 = v43 + 1128;
        }

        *(&v124 + 1) = v44;
        v54 = *(v44 - 8);
        if (v54 != -1)
        {
          (off_266C800[v54])(v126, v44 - 1128);
        }

        *(v44 - 8) = -1;
        sub_52A464(v44 - 1128, v42);
        *(v44 - 8) = 0;
        v42 += 168;
      }

      while (v42 != v115);
      v55 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v106)
      {
        v56 = *(&v55 + 1);
        v57 = v55;
        if (*(&v55 + 1) == v55)
        {
          v59 = 2;
        }

        else
        {
          v58 = v55;
          do
          {
            if (sub_78ED2C(&v124, v58, 0) && (sub_78ED2C(&v124, v58, 1) & 1) != 0)
            {
              v59 = 6;
              goto LABEL_135;
            }

            v58 += 1128;
          }

          while (v58 != v56);
          v60 = v57;
          do
          {
            if (sub_78ED2C(&v124, v60, 1))
            {
              v59 = 4;
              goto LABEL_135;
            }

            v60 += 1128;
          }

          while (v60 != v56);
          while (!sub_78ED2C(&v124, v57, 0))
          {
            v57 += 1128;
            if (v57 == v56)
            {
              v59 = 7;
              goto LABEL_135;
            }
          }

          v59 = 5;
        }
      }

      else
      {
        v59 = 1;
      }
    }

LABEL_135:
    v119 = v59;
    sub_68DFC4(v112, &v119);
    v61 = v117[0];
    if (v117[0])
    {
      v62 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v63 = v62 - 1128;
          v64 = *(v62 - 2);
          if (v64 != -1)
          {
            (off_266C800[v64])(&v124, v62 - 1128);
          }

          *(v62 - 2) = -1;
          v62 -= 1128;
        }

        while (v63 != v61);
        v61 = v117[0];
      }

      operator delete(v61);
    }

    v65 = v120;
    if (v120)
    {
      v66 = v121;
      v67 = v120;
      if (v121 == v120)
      {
LABEL_165:
        v121 = v65;
        operator delete(v67);
        goto LABEL_166;
      }

      while (1)
      {
        if (*(v66 - 9) < 0)
        {
          operator delete(*(v66 - 4));
          v68 = *(v66 - 8);
          if (!v68)
          {
LABEL_149:
            if ((*(v66 - 65) & 0x80000000) == 0)
            {
              goto LABEL_150;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v68 = *(v66 - 8);
          if (!v68)
          {
            goto LABEL_149;
          }
        }

        v69 = *(v66 - 7);
        v70 = v68;
        if (v69 != v68)
        {
          do
          {
            v71 = *(v69 - 1);
            v69 -= 3;
            if (v71 < 0)
            {
              operator delete(*v69);
            }
          }

          while (v69 != v68);
          v70 = *(v66 - 8);
        }

        *(v66 - 7) = v68;
        operator delete(v70);
        if ((*(v66 - 65) & 0x80000000) == 0)
        {
LABEL_150:
          if ((*(v66 - 89) & 0x80000000) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_162;
        }

LABEL_161:
        operator delete(*(v66 - 11));
        if ((*(v66 - 89) & 0x80000000) == 0)
        {
LABEL_151:
          if (*(v66 - 137) < 0)
          {
            goto LABEL_163;
          }

          goto LABEL_146;
        }

LABEL_162:
        operator delete(*(v66 - 14));
        if (*(v66 - 137) < 0)
        {
LABEL_163:
          operator delete(*(v66 - 20));
        }

LABEL_146:
        v66 -= 21;
        if (v66 == v65)
        {
          v67 = v120;
          goto LABEL_165;
        }
      }
    }

LABEL_166:
    v72 = __p[0];
    if (!__p[0])
    {
      goto LABEL_189;
    }

    v73 = __p[1];
    v74 = __p[0];
    if (__p[1] != __p[0])
    {
      while (1)
      {
        if (*(v73 - 9) < 0)
        {
          operator delete(*(v73 - 4));
          v75 = *(v73 - 8);
          if (!v75)
          {
LABEL_172:
            if ((*(v73 - 65) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

            goto LABEL_184;
          }
        }

        else
        {
          v75 = *(v73 - 8);
          if (!v75)
          {
            goto LABEL_172;
          }
        }

        v76 = *(v73 - 7);
        v77 = v75;
        if (v76 != v75)
        {
          do
          {
            v78 = *(v76 - 1);
            v76 -= 3;
            if (v78 < 0)
            {
              operator delete(*v76);
            }
          }

          while (v76 != v75);
          v77 = *(v73 - 8);
        }

        *(v73 - 7) = v75;
        operator delete(v77);
        if ((*(v73 - 65) & 0x80000000) == 0)
        {
LABEL_173:
          if ((*(v73 - 89) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_185;
        }

LABEL_184:
        operator delete(*(v73 - 11));
        if ((*(v73 - 89) & 0x80000000) == 0)
        {
LABEL_174:
          if (*(v73 - 137) < 0)
          {
            goto LABEL_186;
          }

          goto LABEL_169;
        }

LABEL_185:
        operator delete(*(v73 - 14));
        if (*(v73 - 137) < 0)
        {
LABEL_186:
          operator delete(*(v73 - 20));
        }

LABEL_169:
        v73 -= 21;
        if (v73 == v72)
        {
          v74 = __p[0];
          break;
        }
      }
    }

    __p[1] = v72;
    operator delete(v74);
LABEL_189:
    v79 = sub_68F328(v112);
    v124 = 0uLL;
    v125 = 0;
    v80 = *v79;
    v116 = v79[1];
    if (*v79 == v116)
    {
      __p[0] = 0;
      __p[1] = 0;
      v99 = v108;
      v123 = 0;
      goto LABEL_235;
    }

    do
    {
      v81 = *(&v124 + 1);
      if (*(&v124 + 1) >= v125)
      {
        v85 = v124;
        v87 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
        if (v87 > 0x3A196B1EDD80E8)
        {
          sub_1794();
        }

        if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v87)
        {
          v87 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
        }

        if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
        {
          v88 = 0x3A196B1EDD80E8;
        }

        else
        {
          v88 = v87;
        }

        if (v88)
        {
          if (v88 <= 0x3A196B1EDD80E8)
          {
            operator new();
          }

          sub_1808();
        }

        v89 = 8 * ((*(&v124 + 1) - v124) >> 3);
        *v89 = 0u;
        *(v89 + 16) = 0u;
        *(v89 + 32) = 0u;
        *(v89 + 48) = 0u;
        *(v89 + 64) = 0u;
        *(v89 + 80) = 0u;
        *(v89 + 96) = 0u;
        *(v89 + 112) = 0u;
        *(v89 + 160) = 0;
        *(v89 + 128) = 0u;
        *(v89 + 144) = 0u;
        *(v89 + 4) = -1;
        *(v89 + 16) = 0;
        *(v89 + 24) = 0;
        *(v89 + 8) = 0;
        *(v89 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v89 + 40) = -1;
        *(v89 + 48) = 0x7FFFFFFF;
        *(v89 + 56) = 0u;
        *(v89 + 72) = 0u;
        *(v89 + 88) = 0u;
        *(v89 + 104) = 0u;
        *(v89 + 113) = 0u;
        *(v89 + 140) = 0;
        *(v89 + 132) = 0;
        *(v89 + 154) = 0;
        *(v89 + 148) = 0;
        v86 = v81 - v85;
        v90 = v89 - (v81 - v85);
        *(v89 + 1120) = 0;
        if (v85 != v81)
        {
          v113 = v89 - v86;
          v91 = (v89 - v86);
          v92 = v85;
          do
          {
            *v91 = 0;
            v91[280] = -1;
            v93 = v92[280];
            if (v93 != -1)
            {
              v120 = v91;
              (off_266C810[v93])(&v120, v92);
              v91[280] = v93;
            }

            v92 += 282;
            v91 += 282;
          }

          while (v92 != v81);
          do
          {
            v94 = v85[280];
            if (v94 != -1)
            {
              (off_266C800[v94])(&v120, v85);
            }

            v85[280] = -1;
            v85 += 282;
          }

          while (v85 != v81);
          v85 = v124;
          v90 = v113;
        }

        v82 = v89 + 1128;
        *&v124 = v90;
        v125 = 0;
        if (v85)
        {
          operator delete(v85);
        }

        *(&v124 + 1) = v89 + 1128;
        v83 = v89;
        v84 = *(v89 + 1120);
        if (v84 != -1)
        {
LABEL_215:
          (off_266C800[v84])(&v120, v83);
        }
      }

      else
      {
        **(&v124 + 1) = 0u;
        *(v81 + 16) = 0u;
        *(v81 + 32) = 0u;
        *(v81 + 48) = 0u;
        *(v81 + 64) = 0u;
        *(v81 + 80) = 0u;
        *(v81 + 96) = 0u;
        *(v81 + 112) = 0u;
        *(v81 + 160) = 0;
        *(v81 + 128) = 0u;
        *(v81 + 144) = 0u;
        *(v81 + 4) = -1;
        *(v81 + 16) = 0;
        *(v81 + 24) = 0;
        *(v81 + 8) = 0;
        *(v81 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v81 + 40) = -1;
        *(v81 + 48) = 0x7FFFFFFF;
        *(v81 + 56) = 0u;
        *(v81 + 72) = 0u;
        *(v81 + 88) = 0u;
        *(v81 + 104) = 0u;
        *(v81 + 113) = 0u;
        *(v81 + 140) = 0;
        *(v81 + 132) = 0;
        *(v81 + 154) = 0;
        *(v81 + 148) = 0;
        *(v81 + 1120) = 0;
        v82 = v81 + 1128;
        *(&v124 + 1) = v82;
        v83 = v82 - 1128;
        v84 = *(v82 - 8);
        if (v84 != -1)
        {
          goto LABEL_215;
        }
      }

      *(v82 - 8) = -1;
      sub_52B7D8(v83, v80);
      *(v82 - 8) = 1;
      v80 += 1120;
    }

    while (v80 != v116);
    v95 = v124;
    *__p = v124;
    v123 = v125;
    LOBYTE(v124) = 0;
    if (v109)
    {
      v96 = *(&v95 + 1);
      v97 = v95;
      if (*(&v95 + 1) == v95)
      {
        v99 = 2;
      }

      else
      {
        v98 = v95;
        do
        {
          if (sub_78ED2C(&v124, v98, 0) && (sub_78ED2C(&v124, v98, 1) & 1) != 0)
          {
            v99 = 6;
            goto LABEL_235;
          }

          v98 += 1128;
        }

        while (v98 != v96);
        v100 = v97;
        do
        {
          if (sub_78ED2C(&v124, v100, 1))
          {
            v99 = 4;
            goto LABEL_235;
          }

          v100 += 1128;
        }

        while (v100 != v96);
        while (!sub_78ED2C(&v124, v97, 0))
        {
          v97 += 1128;
          if (v97 == v96)
          {
            v99 = 7;
            goto LABEL_235;
          }
        }

        v99 = 5;
      }
    }

    else
    {
      v99 = 1;
    }

LABEL_235:
    LODWORD(v117[0]) = v99;
    sub_68DFE4(v112, v117);
    v18 = __p[0];
    if (__p[0])
    {
      v101 = __p[1];
      if (__p[1] != __p[0])
      {
        do
        {
          v102 = v101 - 1128;
          v103 = *(v101 - 2);
          if (v103 != -1)
          {
            (off_266C800[v103])(&v124, v101 - 1128);
          }

          *(v101 - 2) = -1;
          v101 -= 1128;
        }

        while (v102 != v18);
        v18 = __p[0];
      }

      operator delete(v18);
    }

    v112 += 976;
  }

  while (v112 != v110);
}

void sub_77B36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void *);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_77CB78(va);
  sub_51B6E0(va1);
  sub_51B6E0(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_77B480(uint64_t a1)
{
  v2 = *(a1 + 1784);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 1704);
  if (v3)
  {
    *(a1 + 1712) = v3;
    operator delete(v3);
  }

  if (*(a1 + 1631) < 0)
  {
    operator delete(*(a1 + 1608));
  }

  v4 = *(a1 + 1584);
  if (v4)
  {
    v5 = *(a1 + 1592);
    v6 = *(a1 + 1584);
    if (v5 != v4)
    {
      v7 = *(a1 + 1592);
      do
      {
        v10 = *(v7 - 3);
        v7 -= 3;
        v9 = v10;
        if (v10)
        {
          v11 = *(v5 - 2);
          v8 = v9;
          if (v11 != v9)
          {
            do
            {
              v12 = *(v11 - 9);
              if (v12)
              {
                *(v11 - 8) = v12;
                operator delete(v12);
              }

              v13 = *(v11 - 12);
              if (v13)
              {
                *(v11 - 11) = v13;
                operator delete(v13);
              }

              v11 -= 176;
            }

            while (v11 != v9);
            v8 = *v7;
          }

          *(v5 - 2) = v9;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(a1 + 1584);
    }

    *(a1 + 1592) = v4;
    operator delete(v6);
  }

  return sub_528AB4(a1);
}

void *sub_77B580()
{
  result = __chkstk_darwin();
  v4 = v3;
  LODWORD(v3) = *(result + 1264);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  if (v3 == 2)
  {
    v5 = v2;
    v6 = v1;
    v7 = result;
    sub_77B990(v4, *(v1 + 24));
    sub_112D984(v41, *(v7 + 1264), *v7);
    for (i = *(v6 + 16); i; i = *i)
    {
      if (!sub_4C2B90((i + 2)))
      {
        v9 = sub_4C2C3C((i + 2));
        v10 = v9;
        v11 = *(v9 + 232) ? 228 : 96;
        if (*(v9 + v11) <= *(v7 + 365) && (*(v9 + 167) != 1 || (*(v7 + 27) & 1) != 0) && (!sub_38F6F0(v9) || sub_1131728(v41, v10)))
        {
          sub_737E50((v10 + 72), (v7 + 125), __p);
          v12 = sub_4C2C84((i + 2));
          LOBYTE(v34) = v12;
          v13 = v4[1];
          if (v13 >= v4[2])
          {
            v14 = sub_7883E4(v4, v10, __p, &v34);
          }

          else
          {
            sub_658D94(v4[1], v10, __p, v12);
            v14 = v13 + 1120;
          }

          v4[1] = v14;
          if (SBYTE7(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    if (*(v7 + 28))
    {
      sub_78D4A4(*v5, v5[1], v4, __p);
      v34 = *__p;
      v35 = v37;
      v15 = v38;
      v16 = v39;
      v17 = v40;
      while (1)
      {
        v18 = v34 == v15 && *(&v34 + 1) == v16;
        if (v18 && v35 == v17)
        {
          break;
        }

        v20 = ***(&v34 + 1) + 464 * *(*(&v34 + 1) + 8);
        sub_737E50((v20 + 72), (v7 + 125), v32);
        LOBYTE(v31) = 0;
        BYTE8(v31) = 0;
        v21 = v4[1];
        if (v21 >= v4[2])
        {
          v22 = sub_788580(v4, &v31, v20, v32);
        }

        else
        {
          sub_658C94(v4[1], &v31, v20, v32);
          v22 = v21 + 1120;
        }

        v4[1] = v22;
        if (v33 < 0)
        {
          operator delete(v32[0]);
        }

        sub_77BAC0(&v34);
      }
    }

    else if (*(v7 + 29) == 1)
    {
      sub_78D4A4(*v5, v5[1], v4, __p);
      v34 = *__p;
      v35 = v37;
      v23 = v38;
      v24 = v39;
      v25 = v40;
      while (1)
      {
        v26 = v34 == v23 && *(&v34 + 1) == v24;
        if (v26 && v35 == v25)
        {
          break;
        }

        v28 = ***(&v34 + 1) + 464 * *(*(&v34 + 1) + 8);
        if (*(v28 + 352) == 1 && sub_1131728(v41, v28))
        {
          sub_737E50((v28 + 72), (v7 + 125), v32);
          LOBYTE(v31) = 0;
          BYTE8(v31) = 0;
          v29 = v4[1];
          if (v29 >= v4[2])
          {
            v30 = sub_788580(v4, &v31, v28, v32);
          }

          else
          {
            sub_658C94(v4[1], &v31, v28, v32);
            v30 = v29 + 1120;
          }

          v4[1] = v30;
          if (v33 < 0)
          {
            operator delete(v32[0]);
          }
        }

        sub_77BAC0(&v34);
      }
    }

    return sub_3E3DF0(v41);
  }

  return result;
}

void sub_77B8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_3E3DF0(&a33);
  sub_5706DC(v33);
  _Unwind_Resume(a1);
}

void *sub_77B990(void *result, unint64_t a2)
{
  if (0xAF8AF8AF8AF8AF8BLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x3A83A83A83A83BLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void *sub_77BAC0(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = v3 + 152;
  a1[1] = v3 + 152;
  if (v3 + 152 != v2)
  {
    v5 = a1[3];
    v6 = v5[1];
    if (*v5 != v6)
    {
      v7 = *v5 + 48;
      do
      {
        v8 = *(v3 + 152);
        v9 = *(v3 + 160);
        v3 = v4;
        v10 = *v8 + 464 * v9;
        if (*(v10 + 71) >= 0)
        {
          v11 = *(v10 + 71);
        }

        else
        {
          v11 = *(v10 + 56);
        }

        v12 = v7;
        if ((*(v10 + 71) & 0x80) != 0)
        {
          for (i = v7; ; i += 1120)
          {
            v19 = *(i + 23);
            v20 = v19;
            if ((v19 & 0x80u) != 0)
            {
              v19 = *(i + 8);
            }

            if (v19 == v11)
            {
              v21 = v20 >= 0 ? i : *i;
              if (!memcmp(v21, *(v10 + 48), v11))
              {
                break;
              }
            }

            v18 = i + 1072;
            if (v18 == v6)
            {
              return a1;
            }
          }
        }

        else
        {
          while (1)
          {
            v15 = *(v12 + 23);
            v16 = v15;
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v12 + 8);
            }

            if (v15 == v11)
            {
              v17 = v16 >= 0 ? v12 : *v12;
              if (!memcmp(v17, (v10 + 48), v11))
              {
                break;
              }
            }

            v14 = v12 + 1072;
            v12 += 1120;
            if (v14 == v6)
            {
              return a1;
            }
          }
        }

        v4 = v3 + 152;
        a1[1] = v3 + 152;
      }

      while (v3 + 152 != v2);
    }
  }

  return a1;
}

void *sub_77BC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 2064);
  *(a2 + 160) = *(a1 + 2048);
  *(a2 + 176) = v4;
  *(a2 + 192) = *(a1 + 2080);
  v5 = *(a1 + 2000);
  *(a2 + 96) = *(a1 + 1984);
  *(a2 + 112) = v5;
  v6 = *(a1 + 2032);
  *(a2 + 128) = *(a1 + 2016);
  *(a2 + 144) = v6;
  v7 = *(a1 + 1936);
  *(a2 + 32) = *(a1 + 1920);
  *(a2 + 48) = v7;
  v8 = *(a1 + 1968);
  *(a2 + 64) = *(a1 + 1952);
  *(a2 + 80) = v8;
  v9 = *(a1 + 1904);
  *a2 = *(a1 + 1888);
  *(a2 + 16) = v9;
  *(a2 + 202) = *(a1 + 2090);
  result = memcpy((a2 + 224), (a1 + 2112), 0xAF0uLL);
  *(a2 + 3024) = 0;
  *(a2 + 3040) = 0;
  *(a2 + 3032) = 0;
  v11 = *(a1 + 4912);
  v12 = *(a1 + 4920);
  if (v12 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_77BD1C(uint64_t a1, void *a2, double a3)
{
  v3 = a2[156];
  v4 = a2[157];
  if (v3 != v4)
  {
    v7 = a2 + 512;
    while (1)
    {
      v8 = *(v3 + 152);
      if (v8)
      {
        v9 = 0;
        for (i = 0; i != v8; ++i)
        {
          v9 += sub_4D23F8(a2, i, a3);
        }

        if (v9 > *(a1 + 16))
        {
          return;
        }
      }

      else if (*(a1 + 16) < 0)
      {
        return;
      }

      if (sub_734C10(v3))
      {
        break;
      }

      v3 += 160;
      if (v3 == v4)
      {
        return;
      }
    }

    v11 = *(v3 + 152);
    sub_5139E8(&v25, v3);
    sub_78D600(a2[138] + 392, &v25, &v35, 1uLL);
    if (v34 < 0)
    {
      operator delete(__p);
      if ((v32 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

LABEL_21:
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_22:
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_17:
      if (v11 == -1)
      {
        return;
      }

LABEL_24:
      if (v11 >= *(sub_578320(a2 + 138, 1uLL) + 24))
      {
        return;
      }

      v12 = sub_4D1F50(a2, v11);
      sub_2B7A20(*(a1 + 8), *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v25);
      sub_31BF20(&v25, &v23);
      if (*(&v25 + 1))
      {
        v26 = *(&v25 + 1);
        operator delete(*(&v25 + 1));
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 2) < 2)
      {
        goto LABEL_86;
      }

      v13 = sub_41224(&v23, 0);
      v14 = sub_41224(&v23, 1uLL);
      if (*v14 == *v13)
      {
        v15 = v13[1];
        v16 = v14[1];
        j = 0.0;
        if (v15 == v16)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v16 = v14[1];
        v15 = v13[1];
      }

      v18 = -(*v13 - *v14);
      if (*v14 - *v13 < (*v13 - *v14))
      {
        v18 = (*v14 - *v13);
      }

        ;
      }

        ;
      }

LABEL_38:
      v19 = (j + 180.0) / 45.0 + 0.5;
      if (v19 <= 0)
      {
        v20 = -(-v19 & 7);
      }

      else
      {
        v20 = v19 & 7;
      }

      v21 = v7 + 418;
      v22 = *(v7 + 3367);
      if (v20 > 3)
      {
        if (v20 <= 5)
        {
          if (v20 == 4)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 78;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 17742;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (v20 == 6)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 69;
          goto LABEL_85;
        }

        if (v20 == 7)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 17747;
          v21 += 2;
          goto LABEL_85;
        }
      }

      else
      {
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 87;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 22350;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (!v20)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 83;
          goto LABEL_85;
        }

        if (v20 == 1)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 22355;
          v21 += 2;
          goto LABEL_85;
        }
      }

      if (v22 < 0)
      {
        a2[931] = 0;
        v21 = a2[930];
      }

      else
      {
        *(v7 + 3367) = 0;
      }

LABEL_85:
      *v21 = 0;
LABEL_86:
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      return;
    }

LABEL_23:
    operator delete(v25);
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_24;
  }
}

void sub_77C234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_77C290(void *result, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((result[2] - *result) >> 7) < a2)
  {
    if (a2 < 0x864B8A7DE6D1ELL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void *sub_77C3C8(void *result, unint64_t a2)
{
  if (0x5DDB1ADCB91F64A7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x52DA224E52347)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

unint64_t sub_77C500(uint64_t a1, void *a2)
{
  result = sub_4D1DC0(a2);
  if (result)
  {
    v4 = *(sub_45AC50(a2) + 8);
    v5 = (v4 - *v4);
    if (*v5 >= 0x11u)
    {
      v6 = v5[8];
      if (v6)
      {
        v7 = (*(v4 + v6) >> 3) & 1;
        result = sub_4D1DC0(a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    v7 = 0;
    result = sub_4D1DC0(a2);
    if (result)
    {
LABEL_7:
      v8 = result;
      v9 = 0;
      for (i = 0; v8 != i; ++i)
      {
        v12 = *(sub_4D1F50(a2, i) + 8);
        v14 = (v12 - *v12);
        if (*v14 >= 0x11u && (v15 = v14[8]) != 0)
        {
          v16 = v7;
          if (v7 != ((*(v12 + v15) & 8) == 0))
          {
            v16 = (*(v12 + v15) & 8) == 0;
LABEL_16:
            v17 = a2[1548];
            v18 = a2[1549];
            if (v17 < v18)
            {
              *v17 = v9;
              *(v17 + 8) = v16;
              v11 = v17 + 16;
            }

            else
            {
              v19 = a2[1547];
              v20 = v17 - v19;
              v21 = (v17 - v19) >> 4;
              v22 = v21 + 1;
              if ((v21 + 1) >> 60)
              {
                sub_1794();
              }

              v23 = v18 - v19;
              if (v23 >> 3 > v22)
              {
                v22 = v23 >> 3;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF0)
              {
                v24 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                if (!(v24 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              v25 = 16 * v21;
              *v25 = v9;
              *(v25 + 8) = v16;
              v11 = 16 * v21 + 16;
              memcpy(0, v19, v20);
              a2[1547] = 0;
              a2[1548] = v11;
              a2[1549] = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            a2[1548] = v11;
          }
        }

        else
        {
          v16 = 1;
          if (!v7)
          {
            goto LABEL_16;
          }
        }

        result = sub_4D23F8(a2, i, v13);
        v9 += result;
        v7 = v16;
      }
    }
  }

  return result;
}

uint64_t sub_77C700(unsigned int **a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return -1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v2 - *a1);
  v37 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
  v38 = vdupq_n_s64(0x4076800000000000uLL);
  v35 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v36 = vdupq_n_s64(0xC066800000000000);
  while (1)
  {
    v10 = *a1;
    v11 = sub_41224(a1, v7);
    v13 = *v10;
    v12 = v10[1];
    if (*v10 == -1 && v12 == -1)
    {
      break;
    }

    v16 = *v11;
    v15 = v11[1];
    if (*v11 == -1 && v15 == -1)
    {
      break;
    }

    v18 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
    v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
    v20.i64[0] = v13;
    v20.i64[1] = v16;
    v21 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
    v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
    v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v20), v38), v37), v36), v35);
    v39 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
    v24 = sin((v19 - v22) * 0.5);
    v25 = v24 * v24;
    v26 = cos(v19);
    v27 = v26 * cos(v22);
    v28 = sin(0.5 * v39);
    v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
    v30 = (v29 + v29) * 6372797.56 * 100.0;
    if (v30 >= 0.0)
    {
      v31 = v30;
      if (v30 >= 4.50359963e15)
      {
        goto LABEL_21;
      }

      v32 = (v30 + v30) + 1;
    }

    else
    {
      v31 = v30;
      if (v30 <= -4.50359963e15)
      {
        goto LABEL_21;
      }

      v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
    }

    v31 = (v32 >> 1);
LABEL_21:
    if (v31 >= 9.22337204e18)
    {
      v9 = 0x7FFFFFFFFFFFFFFELL;
      if (a2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      goto LABEL_4;
    }

    if (v30 >= 0.0)
    {
      if (v30 >= 4.50359963e15)
      {
        goto LABEL_28;
      }

      v33 = (v30 + v30) + 1;
    }

    else
    {
      if (v30 <= -4.50359963e15)
      {
        goto LABEL_28;
      }

      v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
    }

    v30 = (v33 >> 1);
LABEL_28:
    v9 = v30;
    if (v30 >= a2)
    {
      break;
    }

LABEL_4:
    if (v9 > v6)
    {
      v6 = v9;
      v5 = v7;
    }

    if (v8 == ++v7)
    {
      return *sub_41224(a1, v5);
    }
  }

  v5 = v7;
  return *sub_41224(a1, v5);
}

unint64_t sub_77CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_4C35B0(a2);
  if (result - 1 == a3)
  {
    v10 = *a4;
    v11 = *(a4 + 8);
    if (*a4 != v11)
    {
      while (v10[44] != 2)
      {
        v10 += 110;
        if (v10 == v11)
        {
          goto LABEL_11;
        }
      }
    }

    if (v10 == v11)
    {
LABEL_11:
      if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }

      v10 = &unk_27337E8;
      v12 = a6;
    }

    else
    {
      v12 = a6;
    }

    return sub_69AE48(v12, v10);
  }

  return result;
}

void **sub_77CB78(void **a1)
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
        v5 = v3 - 1128;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_266C800[v6])(&v8, v3 - 1128);
        }

        *(v3 - 2) = -1;
        v3 -= 1128;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_77CEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_77CF1C(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = sub_3AF6B4(a2);
  v3 = *a1;
  v6[23] = 13;
  strcpy(v6, "RouteGuidance");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(v3, v6, v5);
  sub_41D7AC(v4, &v7);
  *(a1 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  sub_782890();
}

void sub_77DE18()
{
  v1 = *(v0 + 1648);
  *(v0 + 1648) = 0;
  if (v1)
  {
    JUMPOUT(0x77DDCCLL);
  }

  JUMPOUT(0x77DD78);
}

uint64_t sub_77DE5C(uint64_t a1)
{
  v2 = *(a1 + 4912);
  if (v2)
  {
    *(a1 + 4920) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1856);
  *(a1 + 1856) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(a1 + 1848);
  *(a1 + 1848) = 0;
  if (v4)
  {
    sub_5135D0((v4 + 1288));
    operator delete();
  }

  v5 = *(a1 + 1840);
  *(a1 + 1840) = 0;
  if (v5)
  {
    if (*(v5 + 31) < 0)
    {
      operator delete(*(v5 + 8));
    }

    operator delete();
  }

  v6 = *(a1 + 1832);
  *(a1 + 1832) = 0;
  if (v6)
  {
    sub_78C74C(a1 + 1832, v6);
  }

  v7 = *(a1 + 1824);
  *(a1 + 1824) = 0;
  if (v7)
  {
    if (*(v7 + 31) < 0)
    {
      operator delete(*(v7 + 8));
    }

    operator delete();
  }

  v8 = *(a1 + 1816);
  *(a1 + 1816) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1808);
  *(a1 + 1808) = 0;
  if (v9)
  {
    sub_528AB4(v9 + 160);
    operator delete();
  }

  v10 = *(a1 + 1800);
  *(a1 + 1800) = 0;
  if (v10)
  {
    operator delete();
  }

  v11 = *(a1 + 1792);
  *(a1 + 1792) = 0;
  if (v11)
  {
    v12 = *(v11 + 1752);
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    sub_528AB4(v11 + 168);
    operator delete();
  }

  v13 = *(a1 + 1784);
  *(a1 + 1784) = 0;
  if (v13)
  {
    operator delete();
  }

  v14 = *(a1 + 1776);
  *(a1 + 1776) = 0;
  if (v14)
  {
    sub_F4AF44(v14);
    operator delete();
  }

  v15 = *(a1 + 1768);
  *(a1 + 1768) = 0;
  if (v15)
  {
    sub_F26220();
    operator delete();
  }

  v16 = *(a1 + 1760);
  *(a1 + 1760) = 0;
  if (v16)
  {
    sub_78F100(v16);
    operator delete();
  }

  v17 = *(a1 + 1752);
  *(a1 + 1752) = 0;
  if (v17)
  {
    operator delete();
  }

  v18 = *(a1 + 1744);
  *(a1 + 1744) = 0;
  if (v18)
  {
    nullsub_1(v18);
    operator delete();
  }

  v19 = *(a1 + 1736);
  *(a1 + 1736) = 0;
  if (v19)
  {
    operator delete();
  }

  v20 = *(a1 + 1728);
  *(a1 + 1728) = 0;
  if (v20)
  {
    sub_6D2D60(v20);
    operator delete();
  }

  v21 = *(a1 + 1720);
  *(a1 + 1720) = 0;
  if (v21)
  {
    sub_78C26C(a1 + 1720, v21);
  }

  v22 = *(a1 + 1712);
  *(a1 + 1712) = 0;
  if (v22)
  {
    operator delete();
  }

  v23 = *(a1 + 1704);
  *(a1 + 1704) = 0;
  if (v23)
  {
    operator delete();
  }

  v24 = *(a1 + 1696);
  *(a1 + 1696) = 0;
  if (v24)
  {
    operator delete();
  }

  v25 = *(a1 + 1688);
  *(a1 + 1688) = 0;
  if (v25)
  {
    sub_624E38(v25);
    operator delete();
  }

  v26 = *(a1 + 1680);
  *(a1 + 1680) = 0;
  if (v26)
  {
    v27 = *(v26 + 3896);
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = *(v26 + 24);
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    operator delete();
  }

  v29 = *(a1 + 1672);
  *(a1 + 1672) = 0;
  if (v29)
  {
    v30 = *(v29 + 24);
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    operator delete();
  }

  v31 = *(a1 + 1664);
  *(a1 + 1664) = 0;
  if (v31)
  {
    sub_78BCF8(a1 + 1664, v31);
  }

  v32 = *(a1 + 1656);
  *(a1 + 1656) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 1648);
  *(a1 + 1648) = 0;
  if (v33)
  {
    sub_78BB3C(a1 + 1648, v33);
  }

  v34 = *(a1 + 1640);
  *(a1 + 1640) = 0;
  if (v34)
  {
    operator delete();
  }

  v35 = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (v35)
  {
    sub_6926D4((v35 + 3568));
    sub_5135D0((v35 + 1304));
    operator delete();
  }

  if (*(a1 + 1631) < 0)
  {
    operator delete(*(a1 + 1608));
  }

  sub_528AB4(a1 + 32);
  return a1;
}

void sub_77E3D8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  sub_7E9A4(&v12);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v10[1] = 0;
  v10[0] = 0;
  v11 = 0;
  sub_60BAC4(v10, 0x86BCA1AF286BCA1BLL * (v2[1] - *v2));
  sub_78F390(*v2, v2[1], v10);
  v6 = v10[1];
  v7 = v10[0];
  if (v10[0] != v10[1])
  {
    while (sub_4C4A30(v7) && !sub_4C49D0(v7))
    {
      v7 += 128;
      if (v7 == v6)
      {
        sub_3AF4C0(*v3);
        sub_77EAD4();
      }
    }

    v7 = v10[0];
  }

  if (v7)
  {
    v8 = v10[1];
    v9 = v7;
    if (v10[1] != v7)
    {
      do
      {
        v8 -= 128;
        sub_60B38C(v8);
      }

      while (v8 != v7);
      v9 = v10[0];
    }

    v10[1] = v7;
    operator delete(v9);
  }
}

void sub_77EA1C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27333C0);
  if (SLOBYTE(STACK[0x306F]) < 0)
  {
    operator delete(STACK[0x3058]);
  }

  sub_7881CC(&STACK[0x3168]);
  sub_60A84C(&STACK[0x3130]);
  sub_5DAA94(v1);
  _Unwind_Resume(a1);
}

void sub_77EAD4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  sub_7E9A4(v11);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  sub_781EEC(v7, 0x86BCA1AF286BCA1BLL * ((v4[1] - *v4) >> 3));
  v9 = *v2;
  v8 = v2[1];
  if (*v2 != v8)
  {
    while (*(v9 + 176) != 2)
    {
      v9 += 440;
      if (v9 == v8)
      {
        goto LABEL_6;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }
    }
  }

  sub_FA06C4(v10, *v5);
}

void sub_780004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_5DAA94(a23);
  _Unwind_Resume(a1);
}

void sub_780028(_Unwind_Exception *a1)
{
  sub_60B0D4((v2 - 232));
  sub_5DAA94(v1);
  _Unwind_Resume(a1);
}

void sub_780130(_Unwind_Exception *a1)
{
  sub_5C1158(&STACK[0x348]);
  sub_60B0D4((v2 - 232));
  sub_5DAA94(v1);
  _Unwind_Resume(a1);
}

void sub_780154(uint64_t a1, char ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = v3 + 976;
    do
    {
      v6 = sub_68E170(v3);
      v7 = v6 != 0;
      if (v6)
      {
        break;
      }

      v3 += 976;
      v14 = v5 == v4;
      v5 += 976;
    }

    while (!v14);
    v3 = *a2;
    v4 = a2[1];
    if (*a2 != v4)
    {
      v8 = v3 + 976;
      do
      {
        v9 = sub_68DFF0(v3);
        if (v9)
        {
          break;
        }

        v3 += 976;
        v14 = v8 == v4;
        v8 += 976;
      }

      while (!v14);
      v3 = *a2;
      v4 = a2[1];
      v106 = v9 != 0;
      v107 = v7;
      if (*a2 != v4)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  v106 = 0;
  v107 = v7;
  if (v3 != v4)
  {
LABEL_12:
    v10 = v3 + 976;
    do
    {
      v11 = sub_68F328(v3);
      v12 = v11[1];
      v14 = v12 == *v11;
      v13 = v12 != *v11;
      v3 += 976;
      v14 = !v14 || v10 == v4;
      v10 += 976;
    }

    while (!v14);
    v109 = v13;
    v112 = *a2;
    v110 = a2[1];
    if (*a2 == v110)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  v109 = 0;
  v112 = v3;
  v110 = v4;
  if (v3 == v4)
  {
    return;
  }

LABEL_23:
  if (v107)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v106)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v104 = v16;
  v105 = v15;
  if (v109)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v108 = v17;
  do
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_189;
    }

    sub_68E258(v112, __p);
    sub_68E0D8(v112, &v120);
    v124 = 0uLL;
    v125 = 0;
    v19 = __p[0];
    v114 = __p[1];
    if (__p[0] == __p[1])
    {
      v117[0] = 0;
      v117[1] = 0;
      v36 = v105;
      v118 = 0;
    }

    else
    {
      do
      {
        v20 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v22 = v124;
          v23 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v23 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v23)
          {
            v23 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v24 = 0x3A196B1EDD80E8;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (v24 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v25 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v25 = 0u;
          *(v25 + 16) = 0u;
          *(v25 + 32) = 0u;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0u;
          *(v25 + 112) = 0u;
          *(v25 + 160) = 0;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0u;
          *(v25 + 4) = -1;
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          *(v25 + 8) = 0;
          *(v25 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v25 + 40) = -1;
          *(v25 + 48) = 0x7FFFFFFF;
          *(v25 + 56) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 113) = 0u;
          *(v25 + 140) = 0;
          *(v25 + 132) = 0;
          *(v25 + 154) = 0;
          *(v25 + 148) = 0;
          v26 = v25 - (v20 - v22);
          *(v25 + 1120) = 0;
          if (v22 != v20)
          {
            v27 = v25 - (v20 - v22);
            v28 = v22;
            do
            {
              *v27 = 0;
              *(v27 + 1120) = -1;
              v29 = v28[280];
              if (v29 != -1)
              {
                v126[0] = v27;
                (off_266C810[v29])(v126, v28);
                *(v27 + 1120) = v29;
              }

              v28 += 282;
              v27 += 1128;
            }

            while (v28 != v20);
            v26 = v25 - (v20 - v22);
            do
            {
              v30 = v22[280];
              if (v30 != -1)
              {
                (off_266C800[v30])(v126, v22);
              }

              v22[280] = -1;
              v22 += 282;
            }

            while (v22 != v20);
            v22 = v124;
          }

          v21 = v25 + 1128;
          *&v124 = v26;
          v125 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
          *(v20 + 48) = 0u;
          *(v20 + 64) = 0u;
          *(v20 + 80) = 0u;
          *(v20 + 96) = 0u;
          *(v20 + 112) = 0u;
          *(v20 + 160) = 0;
          *(v20 + 128) = 0u;
          *(v20 + 144) = 0u;
          *(v20 + 4) = -1;
          *(v20 + 16) = 0;
          *(v20 + 24) = 0;
          *(v20 + 8) = 0;
          *(v20 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v20 + 40) = -1;
          *(v20 + 48) = 0x7FFFFFFF;
          *(v20 + 56) = 0u;
          *(v20 + 72) = 0u;
          *(v20 + 88) = 0u;
          *(v20 + 104) = 0u;
          *(v20 + 113) = 0u;
          *(v20 + 140) = 0;
          *(v20 + 132) = 0;
          *(v20 + 154) = 0;
          *(v20 + 148) = 0;
          *(v20 + 1120) = 0;
          v21 = v20 + 1128;
        }

        *(&v124 + 1) = v21;
        v31 = *(v21 - 8);
        if (v31 != -1)
        {
          (off_266C800[v31])(v126, v21 - 1128);
        }

        *(v21 - 8) = -1;
        sub_52A464(v21 - 1128, v19);
        *(v21 - 8) = 0;
        v19 += 168;
      }

      while (v19 != v114);
      v32 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v107)
      {
        v33 = *(&v32 + 1);
        v34 = v32;
        if (*(&v32 + 1) == v32)
        {
          v36 = 2;
        }

        else
        {
          v35 = v32;
          do
          {
            if (sub_78F9E4(&v124, v35, 0) && (sub_78F9E4(&v124, v35, 1) & 1) != 0)
            {
              v36 = 6;
              goto LABEL_82;
            }

            v35 += 1128;
          }

          while (v35 != v33);
          v37 = v34;
          do
          {
            if (sub_78F9E4(&v124, v37, 1))
            {
              v36 = 4;
              goto LABEL_82;
            }

            v37 += 1128;
          }

          while (v37 != v33);
          while (!sub_78F9E4(&v124, v34, 0))
          {
            v34 += 1128;
            if (v34 == v33)
            {
              v36 = 7;
              goto LABEL_82;
            }
          }

          v36 = 5;
        }
      }

      else
      {
        v36 = 1;
      }
    }

LABEL_82:
    v119 = v36;
    sub_68DFA4(v112, &v119);
    v38 = v117[0];
    if (v117[0])
    {
      v39 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v40 = v39 - 1128;
          v41 = *(v39 - 2);
          if (v41 != -1)
          {
            (off_266C800[v41])(&v124, v39 - 1128);
          }

          *(v39 - 2) = -1;
          v39 -= 1128;
        }

        while (v40 != v38);
        v38 = v117[0];
      }

      operator delete(v38);
    }

    v124 = 0uLL;
    v125 = 0;
    v42 = v120;
    v115 = v121;
    if (v120 == v121)
    {
      v117[0] = 0;
      v117[1] = 0;
      v59 = v104;
      v118 = 0;
    }

    else
    {
      do
      {
        v43 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v45 = v124;
          v46 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v46 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v46)
          {
            v46 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v47 = 0x3A196B1EDD80E8;
          }

          else
          {
            v47 = v46;
          }

          if (v47)
          {
            if (v47 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v48 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v48 = 0u;
          *(v48 + 16) = 0u;
          *(v48 + 32) = 0u;
          *(v48 + 48) = 0u;
          *(v48 + 64) = 0u;
          *(v48 + 80) = 0u;
          *(v48 + 96) = 0u;
          *(v48 + 112) = 0u;
          *(v48 + 160) = 0;
          *(v48 + 128) = 0u;
          *(v48 + 144) = 0u;
          *(v48 + 4) = -1;
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          *(v48 + 8) = 0;
          *(v48 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v48 + 40) = -1;
          *(v48 + 48) = 0x7FFFFFFF;
          *(v48 + 56) = 0u;
          *(v48 + 72) = 0u;
          *(v48 + 88) = 0u;
          *(v48 + 104) = 0u;
          *(v48 + 113) = 0u;
          *(v48 + 140) = 0;
          *(v48 + 132) = 0;
          *(v48 + 154) = 0;
          *(v48 + 148) = 0;
          v49 = v48 - (v43 - v45);
          *(v48 + 1120) = 0;
          if (v45 != v43)
          {
            v50 = v48 - (v43 - v45);
            v51 = v45;
            do
            {
              *v50 = 0;
              *(v50 + 1120) = -1;
              v52 = v51[280];
              if (v52 != -1)
              {
                v126[0] = v50;
                (off_266C810[v52])(v126, v51);
                *(v50 + 1120) = v52;
              }

              v51 += 282;
              v50 += 1128;
            }

            while (v51 != v43);
            v49 = v48 - (v43 - v45);
            do
            {
              v53 = v45[280];
              if (v53 != -1)
              {
                (off_266C800[v53])(v126, v45);
              }

              v45[280] = -1;
              v45 += 282;
            }

            while (v45 != v43);
            v45 = v124;
          }

          v44 = v48 + 1128;
          *&v124 = v49;
          v125 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v43 + 16) = 0u;
          *(v43 + 32) = 0u;
          *(v43 + 48) = 0u;
          *(v43 + 64) = 0u;
          *(v43 + 80) = 0u;
          *(v43 + 96) = 0u;
          *(v43 + 112) = 0u;
          *(v43 + 160) = 0;
          *(v43 + 128) = 0u;
          *(v43 + 144) = 0u;
          *(v43 + 4) = -1;
          *(v43 + 16) = 0;
          *(v43 + 24) = 0;
          *(v43 + 8) = 0;
          *(v43 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v43 + 40) = -1;
          *(v43 + 48) = 0x7FFFFFFF;
          *(v43 + 56) = 0u;
          *(v43 + 72) = 0u;
          *(v43 + 88) = 0u;
          *(v43 + 104) = 0u;
          *(v43 + 113) = 0u;
          *(v43 + 140) = 0;
          *(v43 + 132) = 0;
          *(v43 + 154) = 0;
          *(v43 + 148) = 0;
          *(v43 + 1120) = 0;
          v44 = v43 + 1128;
        }

        *(&v124 + 1) = v44;
        v54 = *(v44 - 8);
        if (v54 != -1)
        {
          (off_266C800[v54])(v126, v44 - 1128);
        }

        *(v44 - 8) = -1;
        sub_52A464(v44 - 1128, v42);
        *(v44 - 8) = 0;
        v42 += 168;
      }

      while (v42 != v115);
      v55 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v106)
      {
        v56 = *(&v55 + 1);
        v57 = v55;
        if (*(&v55 + 1) == v55)
        {
          v59 = 2;
        }

        else
        {
          v58 = v55;
          do
          {
            if (sub_78F9E4(&v124, v58, 0) && (sub_78F9E4(&v124, v58, 1) & 1) != 0)
            {
              v59 = 6;
              goto LABEL_135;
            }

            v58 += 1128;
          }

          while (v58 != v56);
          v60 = v57;
          do
          {
            if (sub_78F9E4(&v124, v60, 1))
            {
              v59 = 4;
              goto LABEL_135;
            }

            v60 += 1128;
          }

          while (v60 != v56);
          while (!sub_78F9E4(&v124, v57, 0))
          {
            v57 += 1128;
            if (v57 == v56)
            {
              v59 = 7;
              goto LABEL_135;
            }
          }

          v59 = 5;
        }
      }

      else
      {
        v59 = 1;
      }
    }

LABEL_135:
    v119 = v59;
    sub_68DFC4(v112, &v119);
    v61 = v117[0];
    if (v117[0])
    {
      v62 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v63 = v62 - 1128;
          v64 = *(v62 - 2);
          if (v64 != -1)
          {
            (off_266C800[v64])(&v124, v62 - 1128);
          }

          *(v62 - 2) = -1;
          v62 -= 1128;
        }

        while (v63 != v61);
        v61 = v117[0];
      }

      operator delete(v61);
    }

    v65 = v120;
    if (v120)
    {
      v66 = v121;
      v67 = v120;
      if (v121 == v120)
      {
LABEL_165:
        v121 = v65;
        operator delete(v67);
        goto LABEL_166;
      }

      while (1)
      {
        if (*(v66 - 9) < 0)
        {
          operator delete(*(v66 - 4));
          v68 = *(v66 - 8);
          if (!v68)
          {
LABEL_149:
            if ((*(v66 - 65) & 0x80000000) == 0)
            {
              goto LABEL_150;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v68 = *(v66 - 8);
          if (!v68)
          {
            goto LABEL_149;
          }
        }

        v69 = *(v66 - 7);
        v70 = v68;
        if (v69 != v68)
        {
          do
          {
            v71 = *(v69 - 1);
            v69 -= 3;
            if (v71 < 0)
            {
              operator delete(*v69);
            }
          }

          while (v69 != v68);
          v70 = *(v66 - 8);
        }

        *(v66 - 7) = v68;
        operator delete(v70);
        if ((*(v66 - 65) & 0x80000000) == 0)
        {
LABEL_150:
          if ((*(v66 - 89) & 0x80000000) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_162;
        }

LABEL_161:
        operator delete(*(v66 - 11));
        if ((*(v66 - 89) & 0x80000000) == 0)
        {
LABEL_151:
          if (*(v66 - 137) < 0)
          {
            goto LABEL_163;
          }

          goto LABEL_146;
        }

LABEL_162:
        operator delete(*(v66 - 14));
        if (*(v66 - 137) < 0)
        {
LABEL_163:
          operator delete(*(v66 - 20));
        }

LABEL_146:
        v66 -= 21;
        if (v66 == v65)
        {
          v67 = v120;
          goto LABEL_165;
        }
      }
    }

LABEL_166:
    v72 = __p[0];
    if (!__p[0])
    {
      goto LABEL_189;
    }

    v73 = __p[1];
    v74 = __p[0];
    if (__p[1] != __p[0])
    {
      while (1)
      {
        if (*(v73 - 9) < 0)
        {
          operator delete(*(v73 - 4));
          v75 = *(v73 - 8);
          if (!v75)
          {
LABEL_172:
            if ((*(v73 - 65) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

            goto LABEL_184;
          }
        }

        else
        {
          v75 = *(v73 - 8);
          if (!v75)
          {
            goto LABEL_172;
          }
        }

        v76 = *(v73 - 7);
        v77 = v75;
        if (v76 != v75)
        {
          do
          {
            v78 = *(v76 - 1);
            v76 -= 3;
            if (v78 < 0)
            {
              operator delete(*v76);
            }
          }

          while (v76 != v75);
          v77 = *(v73 - 8);
        }

        *(v73 - 7) = v75;
        operator delete(v77);
        if ((*(v73 - 65) & 0x80000000) == 0)
        {
LABEL_173:
          if ((*(v73 - 89) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_185;
        }

LABEL_184:
        operator delete(*(v73 - 11));
        if ((*(v73 - 89) & 0x80000000) == 0)
        {
LABEL_174:
          if (*(v73 - 137) < 0)
          {
            goto LABEL_186;
          }

          goto LABEL_169;
        }

LABEL_185:
        operator delete(*(v73 - 14));
        if (*(v73 - 137) < 0)
        {
LABEL_186:
          operator delete(*(v73 - 20));
        }

LABEL_169:
        v73 -= 21;
        if (v73 == v72)
        {
          v74 = __p[0];
          break;
        }
      }
    }

    __p[1] = v72;
    operator delete(v74);
LABEL_189:
    v79 = sub_68F328(v112);
    v124 = 0uLL;
    v125 = 0;
    v80 = *v79;
    v116 = v79[1];
    if (*v79 == v116)
    {
      __p[0] = 0;
      __p[1] = 0;
      v99 = v108;
      v123 = 0;
      goto LABEL_235;
    }

    do
    {
      v81 = *(&v124 + 1);
      if (*(&v124 + 1) >= v125)
      {
        v85 = v124;
        v87 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
        if (v87 > 0x3A196B1EDD80E8)
        {
          sub_1794();
        }

        if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v87)
        {
          v87 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
        }

        if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
        {
          v88 = 0x3A196B1EDD80E8;
        }

        else
        {
          v88 = v87;
        }

        if (v88)
        {
          if (v88 <= 0x3A196B1EDD80E8)
          {
            operator new();
          }

          sub_1808();
        }

        v89 = 8 * ((*(&v124 + 1) - v124) >> 3);
        *v89 = 0u;
        *(v89 + 16) = 0u;
        *(v89 + 32) = 0u;
        *(v89 + 48) = 0u;
        *(v89 + 64) = 0u;
        *(v89 + 80) = 0u;
        *(v89 + 96) = 0u;
        *(v89 + 112) = 0u;
        *(v89 + 160) = 0;
        *(v89 + 128) = 0u;
        *(v89 + 144) = 0u;
        *(v89 + 4) = -1;
        *(v89 + 16) = 0;
        *(v89 + 24) = 0;
        *(v89 + 8) = 0;
        *(v89 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v89 + 40) = -1;
        *(v89 + 48) = 0x7FFFFFFF;
        *(v89 + 56) = 0u;
        *(v89 + 72) = 0u;
        *(v89 + 88) = 0u;
        *(v89 + 104) = 0u;
        *(v89 + 113) = 0u;
        *(v89 + 140) = 0;
        *(v89 + 132) = 0;
        *(v89 + 154) = 0;
        *(v89 + 148) = 0;
        v86 = v81 - v85;
        v90 = v89 - (v81 - v85);
        *(v89 + 1120) = 0;
        if (v85 != v81)
        {
          v113 = v89 - v86;
          v91 = (v89 - v86);
          v92 = v85;
          do
          {
            *v91 = 0;
            v91[280] = -1;
            v93 = v92[280];
            if (v93 != -1)
            {
              v120 = v91;
              (off_266C810[v93])(&v120, v92);
              v91[280] = v93;
            }

            v92 += 282;
            v91 += 282;
          }

          while (v92 != v81);
          do
          {
            v94 = v85[280];
            if (v94 != -1)
            {
              (off_266C800[v94])(&v120, v85);
            }

            v85[280] = -1;
            v85 += 282;
          }

          while (v85 != v81);
          v85 = v124;
          v90 = v113;
        }

        v82 = v89 + 1128;
        *&v124 = v90;
        v125 = 0;
        if (v85)
        {
          operator delete(v85);
        }

        *(&v124 + 1) = v89 + 1128;
        v83 = v89;
        v84 = *(v89 + 1120);
        if (v84 != -1)
        {
LABEL_215:
          (off_266C800[v84])(&v120, v83);
        }
      }

      else
      {
        **(&v124 + 1) = 0u;
        *(v81 + 16) = 0u;
        *(v81 + 32) = 0u;
        *(v81 + 48) = 0u;
        *(v81 + 64) = 0u;
        *(v81 + 80) = 0u;
        *(v81 + 96) = 0u;
        *(v81 + 112) = 0u;
        *(v81 + 160) = 0;
        *(v81 + 128) = 0u;
        *(v81 + 144) = 0u;
        *(v81 + 4) = -1;
        *(v81 + 16) = 0;
        *(v81 + 24) = 0;
        *(v81 + 8) = 0;
        *(v81 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v81 + 40) = -1;
        *(v81 + 48) = 0x7FFFFFFF;
        *(v81 + 56) = 0u;
        *(v81 + 72) = 0u;
        *(v81 + 88) = 0u;
        *(v81 + 104) = 0u;
        *(v81 + 113) = 0u;
        *(v81 + 140) = 0;
        *(v81 + 132) = 0;
        *(v81 + 154) = 0;
        *(v81 + 148) = 0;
        *(v81 + 1120) = 0;
        v82 = v81 + 1128;
        *(&v124 + 1) = v82;
        v83 = v82 - 1128;
        v84 = *(v82 - 8);
        if (v84 != -1)
        {
          goto LABEL_215;
        }
      }

      *(v82 - 8) = -1;
      sub_52B7D8(v83, v80);
      *(v82 - 8) = 1;
      v80 += 1120;
    }

    while (v80 != v116);
    v95 = v124;
    *__p = v124;
    v123 = v125;
    LOBYTE(v124) = 0;
    if (v109)
    {
      v96 = *(&v95 + 1);
      v97 = v95;
      if (*(&v95 + 1) == v95)
      {
        v99 = 2;
      }

      else
      {
        v98 = v95;
        do
        {
          if (sub_78F9E4(&v124, v98, 0) && (sub_78F9E4(&v124, v98, 1) & 1) != 0)
          {
            v99 = 6;
            goto LABEL_235;
          }

          v98 += 1128;
        }

        while (v98 != v96);
        v100 = v97;
        do
        {
          if (sub_78F9E4(&v124, v100, 1))
          {
            v99 = 4;
            goto LABEL_235;
          }

          v100 += 1128;
        }

        while (v100 != v96);
        while (!sub_78F9E4(&v124, v97, 0))
        {
          v97 += 1128;
          if (v97 == v96)
          {
            v99 = 7;
            goto LABEL_235;
          }
        }

        v99 = 5;
      }
    }

    else
    {
      v99 = 1;
    }

LABEL_235:
    LODWORD(v117[0]) = v99;
    sub_68DFE4(v112, v117);
    v18 = __p[0];
    if (__p[0])
    {
      v101 = __p[1];
      if (__p[1] != __p[0])
      {
        do
        {
          v102 = v101 - 1128;
          v103 = *(v101 - 2);
          if (v103 != -1)
          {
            (off_266C800[v103])(&v124, v101 - 1128);
          }

          *(v101 - 2) = -1;
          v101 -= 1128;
        }

        while (v102 != v18);
        v18 = __p[0];
      }

      operator delete(v18);
    }

    v112 += 976;
  }

  while (v112 != v110);
}

void sub_781168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void *);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_77CB78(va);
  sub_51B6E0(va1);
  sub_51B6E0(va2);
  _Unwind_Resume(a1);
}

void sub_78127C()
{
  v0 = __chkstk_darwin();
  v1 = sub_3AF4C0(*v0);
  sub_51E828(v2, *v0, v1, (v0 + 4));
}

void sub_781340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7881CC(va);
  _Unwind_Resume(a1);
}

void *sub_781358()
{
  result = __chkstk_darwin();
  v4 = v3;
  LODWORD(v3) = *(result + 1264);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  if (v3 == 2)
  {
    v5 = v2;
    v6 = v1;
    v7 = result;
    sub_77B990(v4, *(v1 + 24));
    sub_112D984(v41, *(v7 + 1264), *v7);
    for (i = *(v6 + 16); i; i = *i)
    {
      if (!sub_4C2B90((i + 2)))
      {
        v9 = sub_4C2C3C((i + 2));
        v10 = v9;
        v11 = *(v9 + 232) ? 228 : 96;
        if (*(v9 + v11) <= *(v7 + 365) && (*(v9 + 167) != 1 || (*(v7 + 27) & 1) != 0) && (!sub_38F6F0(v9) || sub_1131728(v41, v10)))
        {
          sub_73B5F8((v10 + 72), (v7 + 125), __p);
          v12 = sub_4C2C84((i + 2));
          LOBYTE(v34) = v12;
          v13 = v4[1];
          if (v13 >= v4[2])
          {
            v14 = sub_7883E4(v4, v10, __p, &v34);
          }

          else
          {
            sub_658D94(v4[1], v10, __p, v12);
            v14 = v13 + 1120;
          }

          v4[1] = v14;
          if (SBYTE7(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    if (*(v7 + 28))
    {
      sub_78D4A4(*v5, v5[1], v4, __p);
      v34 = *__p;
      v35 = v37;
      v15 = v38;
      v16 = v39;
      v17 = v40;
      while (1)
      {
        v18 = v34 == v15 && *(&v34 + 1) == v16;
        if (v18 && v35 == v17)
        {
          break;
        }

        v20 = ***(&v34 + 1) + 464 * *(*(&v34 + 1) + 8);
        sub_73B5F8((v20 + 72), (v7 + 125), v32);
        LOBYTE(v31) = 0;
        BYTE8(v31) = 0;
        v21 = v4[1];
        if (v21 >= v4[2])
        {
          v22 = sub_788580(v4, &v31, v20, v32);
        }

        else
        {
          sub_658C94(v4[1], &v31, v20, v32);
          v22 = v21 + 1120;
        }

        v4[1] = v22;
        if (v33 < 0)
        {
          operator delete(v32[0]);
        }

        sub_77BAC0(&v34);
      }
    }

    else if (*(v7 + 29) == 1)
    {
      sub_78D4A4(*v5, v5[1], v4, __p);
      v34 = *__p;
      v35 = v37;
      v23 = v38;
      v24 = v39;
      v25 = v40;
      while (1)
      {
        v26 = v34 == v23 && *(&v34 + 1) == v24;
        if (v26 && v35 == v25)
        {
          break;
        }

        v28 = ***(&v34 + 1) + 464 * *(*(&v34 + 1) + 8);
        if (*(v28 + 352) == 1 && sub_1131728(v41, v28))
        {
          sub_73B5F8((v28 + 72), (v7 + 125), v32);
          LOBYTE(v31) = 0;
          BYTE8(v31) = 0;
          v29 = v4[1];
          if (v29 >= v4[2])
          {
            v30 = sub_788580(v4, &v31, v28, v32);
          }

          else
          {
            sub_658C94(v4[1], &v31, v28, v32);
            v30 = v29 + 1120;
          }

          v4[1] = v30;
          if (v33 < 0)
          {
            operator delete(v32[0]);
          }
        }

        sub_77BAC0(&v34);
      }
    }

    return sub_3E3DF0(v41);
  }

  return result;
}

void sub_7816A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_3E3DF0(&a33);
  sub_5706DC(v33);
  _Unwind_Resume(a1);
}

void sub_781924(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27335D0);
  if (*(v1 + 2375) < 0)
  {
    operator delete(STACK[0x3058]);
  }

  _Unwind_Resume(a1);
}

void sub_781978(uint64_t a1, void *a2, double a3)
{
  v3 = a2[156];
  v4 = a2[157];
  if (v3 != v4)
  {
    v7 = a2 + 512;
    while (1)
    {
      v8 = *(v3 + 152);
      if (v8)
      {
        v9 = 0;
        for (i = 0; i != v8; ++i)
        {
          v9 += sub_4D23F8(a2, i, a3);
        }

        if (v9 > *(a1 + 16))
        {
          return;
        }
      }

      else if (*(a1 + 16) < 0)
      {
        return;
      }

      if (sub_734C10(v3))
      {
        break;
      }

      v3 += 160;
      if (v3 == v4)
      {
        return;
      }
    }

    v11 = *(v3 + 152);
    sub_5139E8(&v25, v3);
    sub_78D600(a2[138] + 392, &v25, &v35, 1uLL);
    if (v34 < 0)
    {
      operator delete(__p);
      if ((v32 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

LABEL_21:
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_22:
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_17:
      if (v11 == -1)
      {
        return;
      }

LABEL_24:
      if (v11 >= *(sub_578320(a2 + 138, 1uLL) + 24))
      {
        return;
      }

      v12 = sub_4D1F50(a2, v11);
      sub_2B7A20(*(a1 + 8), *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v25);
      sub_31BF20(&v25, &v23);
      if (*(&v25 + 1))
      {
        v26 = *(&v25 + 1);
        operator delete(*(&v25 + 1));
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 2) < 2)
      {
        goto LABEL_86;
      }

      v13 = sub_41224(&v23, 0);
      v14 = sub_41224(&v23, 1uLL);
      if (*v14 == *v13)
      {
        v15 = v13[1];
        v16 = v14[1];
        j = 0.0;
        if (v15 == v16)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v16 = v14[1];
        v15 = v13[1];
      }

      v18 = -(*v13 - *v14);
      if (*v14 - *v13 < (*v13 - *v14))
      {
        v18 = (*v14 - *v13);
      }

        ;
      }

        ;
      }

LABEL_38:
      v19 = (j + 180.0) / 45.0 + 0.5;
      if (v19 <= 0)
      {
        v20 = -(-v19 & 7);
      }

      else
      {
        v20 = v19 & 7;
      }

      v21 = v7 + 418;
      v22 = *(v7 + 3367);
      if (v20 > 3)
      {
        if (v20 <= 5)
        {
          if (v20 == 4)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 78;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 17742;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (v20 == 6)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 69;
          goto LABEL_85;
        }

        if (v20 == 7)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 17747;
          v21 += 2;
          goto LABEL_85;
        }
      }

      else
      {
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 87;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 22350;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (!v20)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 83;
          goto LABEL_85;
        }

        if (v20 == 1)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 22355;
          v21 += 2;
          goto LABEL_85;
        }
      }

      if (v22 < 0)
      {
        a2[931] = 0;
        v21 = a2[930];
      }

      else
      {
        *(v7 + 3367) = 0;
      }

LABEL_85:
      *v21 = 0;
LABEL_86:
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      return;
    }

LABEL_23:
    operator delete(v25);
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_24;
  }
}

void sub_781E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_781EEC(void *result, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((result[2] - *result) >> 7) < a2)
  {
    if (a2 < 0x864B8A7DE6D1ELL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void *sub_782024(void *result, unint64_t a2)
{
  if (0x5DDB1ADCB91F64A7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x52DA224E52347)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_78215C(uint64_t a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  v10 = sub_3B1D8C(*a1);
  sub_2AD1B4(v10, a2, a3, v38);
  *a5 = v44;
  *(a5 + 8) = v45;
  v11 = (a5 + 192);
  if ((a5 + 192) != v38)
  {
    if (*(a5 + 215) < 0)
    {
      if (v39 >= 0)
      {
        v12 = v38;
      }

      else
      {
        v12 = v38[0];
      }

      if (v39 >= 0)
      {
        v13 = HIBYTE(v39);
      }

      else
      {
        v13 = v38[1];
      }

      sub_13B38(v11, v12, v13);
    }

    else if (v39 < 0)
    {
      sub_13A68(v11, v38[0], v38[1]);
    }

    else
    {
      *v11 = *v38;
      *(a5 + 208) = v39;
    }
  }

  v14 = (a5 + 240);
  if ((a5 + 240) != &v40)
  {
    if (*(a5 + 263) < 0)
    {
      if (v41 >= 0)
      {
        v15 = &v40;
      }

      else
      {
        v15 = v40;
      }

      if (v41 >= 0)
      {
        v16 = HIBYTE(v41);
      }

      else
      {
        v16 = *(&v40 + 1);
      }

      sub_13B38(v14, v15, v16);
    }

    else if (v41 < 0)
    {
      sub_13A68(v14, v40, *(&v40 + 1));
    }

    else
    {
      *v14 = v40;
      *(a5 + 256) = v41;
    }
  }

  v17 = (a5 + 216);
  if ((a5 + 216) != &v42)
  {
    if (*(a5 + 239) < 0)
    {
      if (v43 >= 0)
      {
        v18 = &v42;
      }

      else
      {
        v18 = v42;
      }

      if (v43 >= 0)
      {
        v19 = HIBYTE(v43);
      }

      else
      {
        v19 = *(&v42 + 1);
      }

      sub_13B38(v17, v18, v19);
    }

    else if (v43 < 0)
    {
      sub_13A68(v17, v42, *(&v42 + 1));
    }

    else
    {
      *v17 = v42;
      *(a5 + 232) = v43;
    }
  }

  *(a5 + 466) = sub_2ADAD0(v10, a2, a3);
  if ((a4 & 1) == 0)
  {
    sub_2ACDFC(v10, a2, a3, &v36);
    v20 = v36;
    v21 = v37;
    if (v36 == v37)
    {
      if (!v36)
      {
        goto LABEL_58;
      }

      goto LABEL_51;
    }

    do
    {
      if (*(v20 + 16) == 1)
      {
        sub_2B79D0(*(a1 + 8), *v20, &v32);
        sub_31BF20(&v32, v35);
        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        v32 = sub_77C700(v35, v20[1]);
        LODWORD(__p) = v22;
        v23 = *(a5 + 320);
        if (v23 >= *(a5 + 328))
        {
          v24 = sub_78996C((a5 + 312), &v32, v20 + 3);
        }

        else
        {
          sub_E67B74(*(a5 + 320), &v32, v20 + 3);
          v24 = v23 + 176;
          *(a5 + 320) = v23 + 176;
        }

        *(a5 + 320) = v24;
        if (v35[0])
        {
          v35[1] = v35[0];
          operator delete(v35[0]);
        }
      }

      v20 += 6;
    }

    while (v20 != v21);
    v20 = v36;
    if (v36)
    {
LABEL_51:
      v25 = v37;
      v26 = v20;
      if (v37 != v20)
      {
        do
        {
          v27 = *(v25 - 3);
          if (v27)
          {
            *(v25 - 2) = v27;
            operator delete(v27);
          }

          v25 -= 6;
        }

        while (v25 != v20);
        v26 = v36;
      }

      v37 = v20;
      operator delete(v26);
    }
  }

LABEL_58:
  sub_99F0C(&v48);
  v28 = v46;
  if (v46)
  {
    v29 = v47;
    v30 = v46;
    if (v47 != v46)
    {
      do
      {
        v31 = *(v29 - 1);
        v29 -= 3;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = v46;
    }

    v47 = v28;
    operator delete(v30);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
LABEL_68:
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        return;
      }

LABEL_72:
      operator delete(v38[0]);
      return;
    }
  }

  else if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

  operator delete(v40);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_72;
  }
}

void sub_7824B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2AE47C(va);
  _Unwind_Resume(a1);
}

void sub_7824C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v21 + 320) = v22;
  if (__p)
  {
    operator delete(__p);
  }

  sub_2ABB28(&a18);
  sub_2AE47C(&a21);
  _Unwind_Resume(a1);
}

std::chrono::steady_clock::time_point sub_782530(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v12 = (a6 + 0x2000);
  v13 = sub_4C35B0(a2) - 1;
  v14 = sub_4C4B30(a2);
  v15 = v13 != a3 && v14;
  if (a3)
  {
    v16 = 1;
  }

  else
  {
    v16 = (a5 & 0xFFFFFFFD) == 9;
  }

  v17 = v16;
  sub_69CBCC(a6, v17);
  sub_69CBD8(a6, v15);
  v18 = sub_4C49C0(a2, a3);
  v19 = sub_3EB950(v18);
  sub_69D1D4(a6, *v19 & 0xFFFFFF);
  v20 = sub_4D1DB0(v18);
  sub_69D1E4(a6, *v20 & 0xFFFFFF);
  v21 = sub_4D1F60(a6);
  v22 = (*v21 - **v21);
  v23 = *v22;
  if (*(v21 + 38))
  {
    if (v23 >= 0x9B)
    {
      v24 = v22[77];
      if (v24)
      {
        v25 = 2;
        goto LABEL_17;
      }
    }
  }

  else if (v23 >= 0x9B)
  {
    v24 = v22[77];
    if (v24)
    {
      v25 = 1;
LABEL_17:
      v12[3360] = (*(*v21 + v24) & v25) != 0;
      sub_7E974(a1 + 1864);
      v27 = *a4;
      v26 = a4[1];
      if (*a4 != v26)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  v12[3360] = 0;
  sub_7E974(a1 + 1864);
  v27 = *a4;
  v26 = a4[1];
  if (*a4 != v26)
  {
LABEL_20:
    while (v27[44] != 1)
    {
      v27 += 110;
      if (v27 == v26)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_23:
  if (v27 == v26)
  {
LABEL_24:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v27 = &unk_27337E8;
  }

  v28 = sub_4D2130(a6);
  v29 = v28;
  if (*(v28 + 112))
  {
    sub_78215C(a1, *(v28 + 104), *(v28 + 112), 1, a6 + 10344);
  }

  v30 = *v19;
  if (v30 != 0xFFFF)
  {
    v31 = v30 - 1;
    if (*(a1 + 1248) == 2)
    {
      v31 = *v19;
    }

    if (v31 != 0xFFFF)
    {
      v32 = sub_E6309C(a4, v31);
      sub_69CBE4(a6, v32);
    }
  }

  if (!a3 && !*(v29 + 112))
  {
    sub_69CBE4(a6, v27);
  }

  v33 = -1;
  if (*(v19 + 2) == 3 && *v19 == 0xFFFF)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  v12[2619] = v35;
  v36 = sub_73F54(a6);
  if (*(v36 + 112))
  {
    sub_78215C(a1, *(v36 + 104), *(v36 + 112), 0, a6 + 11088);
  }

  v37 = *v20;
  if (v37 != 0xFFFF)
  {
    v33 = *v20;
    v38 = *(a1 + 1248) == 2 ? *v20 : v37 - 1;
    if (v38 != 0xFFFF)
    {
      v39 = sub_E6309C(a4, v38);
      sub_69AE48(a6, v39);
      v33 = *v20;
    }
  }

  if (*(v20 + 2) == 3 && ~v33 == 0)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  v12[3363] = v41;
  *(a1 + 1896) = (round(sub_7EA60(a1 + 1864)) + *(a1 + 1896));

  return sub_7E9E0(a1 + 1864);
}

void sub_782B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_782B8C(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = sub_3AF6B4(a2);
  v3 = *a1;
  v6[23] = 13;
  strcpy(v6, "RouteGuidance");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(v3, v6, v5);
  sub_41D820(v4, &v7);
  *(a1 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  sub_787824();
}

void sub_783A54()
{
  v1 = *(v0 + 1648);
  *(v0 + 1648) = 0;
  if (v1)
  {
    JUMPOUT(0x783A08);
  }

  JUMPOUT(0x7839B4);
}

uint64_t sub_783A98(uint64_t a1)
{
  v2 = *(a1 + 4912);
  if (v2)
  {
    *(a1 + 4920) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1856);
  *(a1 + 1856) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(a1 + 1848);
  *(a1 + 1848) = 0;
  if (v4)
  {
    sub_5135D0((v4 + 1288));
    operator delete();
  }

  v5 = *(a1 + 1840);
  *(a1 + 1840) = 0;
  if (v5)
  {
    if (*(v5 + 31) < 0)
    {
      operator delete(*(v5 + 8));
    }

    operator delete();
  }

  v6 = *(a1 + 1832);
  *(a1 + 1832) = 0;
  if (v6)
  {
    sub_78C74C(a1 + 1832, v6);
  }

  v7 = *(a1 + 1824);
  *(a1 + 1824) = 0;
  if (v7)
  {
    if (*(v7 + 31) < 0)
    {
      operator delete(*(v7 + 8));
    }

    operator delete();
  }

  v8 = *(a1 + 1816);
  *(a1 + 1816) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1808);
  *(a1 + 1808) = 0;
  if (v9)
  {
    sub_528AB4(v9 + 160);
    operator delete();
  }

  v10 = *(a1 + 1800);
  *(a1 + 1800) = 0;
  if (v10)
  {
    operator delete();
  }

  v11 = *(a1 + 1792);
  *(a1 + 1792) = 0;
  if (v11)
  {
    v12 = *(v11 + 1752);
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    sub_528AB4(v11 + 168);
    operator delete();
  }

  v13 = *(a1 + 1784);
  *(a1 + 1784) = 0;
  if (v13)
  {
    operator delete();
  }

  v14 = *(a1 + 1776);
  *(a1 + 1776) = 0;
  if (v14)
  {
    sub_F4AF44(v14);
    operator delete();
  }

  v15 = *(a1 + 1768);
  *(a1 + 1768) = 0;
  if (v15)
  {
    sub_F26220();
    operator delete();
  }

  v16 = *(a1 + 1760);
  *(a1 + 1760) = 0;
  if (v16)
  {
    sub_78FDB8(v16);
    operator delete();
  }

  v17 = *(a1 + 1752);
  *(a1 + 1752) = 0;
  if (v17)
  {
    operator delete();
  }

  v18 = *(a1 + 1744);
  *(a1 + 1744) = 0;
  if (v18)
  {
    nullsub_1(v18);
    operator delete();
  }

  v19 = *(a1 + 1736);
  *(a1 + 1736) = 0;
  if (v19)
  {
    operator delete();
  }

  v20 = *(a1 + 1728);
  *(a1 + 1728) = 0;
  if (v20)
  {
    sub_6D2D60(v20);
    operator delete();
  }

  v21 = *(a1 + 1720);
  *(a1 + 1720) = 0;
  if (v21)
  {
    sub_78C26C(a1 + 1720, v21);
  }

  v22 = *(a1 + 1712);
  *(a1 + 1712) = 0;
  if (v22)
  {
    sub_5135D0((v22 + 1312));
    operator delete();
  }

  v23 = *(a1 + 1704);
  *(a1 + 1704) = 0;
  if (v23)
  {
    operator delete();
  }

  v24 = *(a1 + 1696);
  *(a1 + 1696) = 0;
  if (v24)
  {
    operator delete();
  }

  v25 = *(a1 + 1688);
  *(a1 + 1688) = 0;
  if (v25)
  {
    sub_624E38(v25);
    operator delete();
  }

  v26 = *(a1 + 1680);
  *(a1 + 1680) = 0;
  if (v26)
  {
    v27 = *(v26 + 3896);
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = *(v26 + 24);
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    operator delete();
  }

  v29 = *(a1 + 1672);
  *(a1 + 1672) = 0;
  if (v29)
  {
    v30 = *(v29 + 24);
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    operator delete();
  }

  v31 = *(a1 + 1664);
  *(a1 + 1664) = 0;
  if (v31)
  {
    sub_78BCF8(a1 + 1664, v31);
  }

  v32 = *(a1 + 1656);
  *(a1 + 1656) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 1648);
  *(a1 + 1648) = 0;
  if (v33)
  {
    sub_78BB3C(a1 + 1648, v33);
  }

  v34 = *(a1 + 1640);
  *(a1 + 1640) = 0;
  if (v34)
  {
    operator delete();
  }

  v35 = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (v35)
  {
    sub_6926D4((v35 + 3568));
    sub_5135D0((v35 + 1304));
    operator delete();
  }

  if (*(a1 + 1631) < 0)
  {
    operator delete(*(a1 + 1608));
  }

  sub_528AB4(a1 + 32);
  return a1;
}

void sub_78402C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  sub_7E9A4(&v12);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v10[1] = 0;
  v10[0] = 0;
  v11 = 0;
  sub_60BAC4(v10, 0x86BCA1AF286BCA1BLL * (v2[1] - *v2));
  sub_78FFF4(*v2, v2[1], v10);
  v6 = v10[1];
  v7 = v10[0];
  if (v10[0] != v10[1])
  {
    while (sub_4C6700(v7) && !sub_4C49D0(v7))
    {
      v7 += 128;
      if (v7 == v6)
      {
        sub_3AF4C0(*v3);
        sub_784728();
      }
    }

    v7 = v10[0];
  }

  if (v7)
  {
    v8 = v10[1];
    v9 = v7;
    if (v10[1] != v7)
    {
      do
      {
        v8 -= 128;
        sub_60B38C(v8);
      }

      while (v8 != v7);
      v9 = v10[0];
    }

    v10[1] = v7;
    operator delete(v9);
  }
}

void sub_784670(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27337E0);
  if (SLOBYTE(STACK[0x306F]) < 0)
  {
    operator delete(STACK[0x3058]);
  }

  sub_7881CC(&STACK[0x3168]);
  sub_60A84C(&STACK[0x3130]);
  sub_785D84(v1);
  _Unwind_Resume(a1);
}

void sub_784728()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  sub_7E9A4(v11);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  sub_78749C(v7, 0x86BCA1AF286BCA1BLL * ((v4[1] - *v4) >> 3));
  v9 = *v2;
  v8 = v2[1];
  if (*v2 != v8)
  {
    while (*(v9 + 176) != 2)
    {
      v9 += 440;
      if (v9 == v8)
      {
        goto LABEL_6;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }
    }
  }

  sub_FA06C4(v10, *v5);
}

void sub_785C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_785D84(a25);
  _Unwind_Resume(a1);
}

void sub_785C58(_Unwind_Exception *a1)
{
  sub_60B0D4((v2 - 232));
  sub_785D84(v1);
  _Unwind_Resume(a1);
}

void sub_785D60(_Unwind_Exception *a1)
{
  sub_78B5C0(&STACK[0x358]);
  sub_60B0D4((v2 - 232));
  sub_785D84(v1);
  _Unwind_Resume(a1);
}

void **sub_785D84(void **a1)
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
        v3 = sub_78B5C0(v3 - 7808);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_785DEC(uint64_t a1, char ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = v3 + 976;
    do
    {
      v6 = sub_68E170(v3);
      v7 = v6 != 0;
      if (v6)
      {
        break;
      }

      v3 += 976;
      v14 = v5 == v4;
      v5 += 976;
    }

    while (!v14);
    v3 = *a2;
    v4 = a2[1];
    if (*a2 != v4)
    {
      v8 = v3 + 976;
      do
      {
        v9 = sub_68DFF0(v3);
        if (v9)
        {
          break;
        }

        v3 += 976;
        v14 = v8 == v4;
        v8 += 976;
      }

      while (!v14);
      v3 = *a2;
      v4 = a2[1];
      v106 = v9 != 0;
      v107 = v7;
      if (*a2 != v4)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  v106 = 0;
  v107 = v7;
  if (v3 != v4)
  {
LABEL_12:
    v10 = v3 + 976;
    do
    {
      v11 = sub_68F328(v3);
      v12 = v11[1];
      v14 = v12 == *v11;
      v13 = v12 != *v11;
      v3 += 976;
      v14 = !v14 || v10 == v4;
      v10 += 976;
    }

    while (!v14);
    v109 = v13;
    v112 = *a2;
    v110 = a2[1];
    if (*a2 == v110)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  v109 = 0;
  v112 = v3;
  v110 = v4;
  if (v3 == v4)
  {
    return;
  }

LABEL_23:
  if (v107)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v106)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v104 = v16;
  v105 = v15;
  if (v109)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v108 = v17;
  do
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_189;
    }

    sub_69250C(v112, __p);
    sub_692474(v112, &v120);
    v124 = 0uLL;
    v125 = 0;
    v19 = __p[0];
    v114 = __p[1];
    if (__p[0] == __p[1])
    {
      v117[0] = 0;
      v117[1] = 0;
      v36 = v105;
      v118 = 0;
    }

    else
    {
      do
      {
        v20 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v22 = v124;
          v23 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v23 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v23)
          {
            v23 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v24 = 0x3A196B1EDD80E8;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (v24 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v25 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v25 = 0u;
          *(v25 + 16) = 0u;
          *(v25 + 32) = 0u;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0u;
          *(v25 + 112) = 0u;
          *(v25 + 160) = 0;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0u;
          *(v25 + 4) = -1;
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          *(v25 + 8) = 0;
          *(v25 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v25 + 40) = -1;
          *(v25 + 48) = 0x7FFFFFFF;
          *(v25 + 56) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 113) = 0u;
          *(v25 + 140) = 0;
          *(v25 + 132) = 0;
          *(v25 + 154) = 0;
          *(v25 + 148) = 0;
          v26 = v25 - (v20 - v22);
          *(v25 + 1120) = 0;
          if (v22 != v20)
          {
            v27 = v25 - (v20 - v22);
            v28 = v22;
            do
            {
              *v27 = 0;
              *(v27 + 1120) = -1;
              v29 = v28[280];
              if (v29 != -1)
              {
                v126[0] = v27;
                (off_266C810[v29])(v126, v28);
                *(v27 + 1120) = v29;
              }

              v28 += 282;
              v27 += 1128;
            }

            while (v28 != v20);
            v26 = v25 - (v20 - v22);
            do
            {
              v30 = v22[280];
              if (v30 != -1)
              {
                (off_266C800[v30])(v126, v22);
              }

              v22[280] = -1;
              v22 += 282;
            }

            while (v22 != v20);
            v22 = v124;
          }

          v21 = v25 + 1128;
          *&v124 = v26;
          v125 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
          *(v20 + 48) = 0u;
          *(v20 + 64) = 0u;
          *(v20 + 80) = 0u;
          *(v20 + 96) = 0u;
          *(v20 + 112) = 0u;
          *(v20 + 160) = 0;
          *(v20 + 128) = 0u;
          *(v20 + 144) = 0u;
          *(v20 + 4) = -1;
          *(v20 + 16) = 0;
          *(v20 + 24) = 0;
          *(v20 + 8) = 0;
          *(v20 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v20 + 40) = -1;
          *(v20 + 48) = 0x7FFFFFFF;
          *(v20 + 56) = 0u;
          *(v20 + 72) = 0u;
          *(v20 + 88) = 0u;
          *(v20 + 104) = 0u;
          *(v20 + 113) = 0u;
          *(v20 + 140) = 0;
          *(v20 + 132) = 0;
          *(v20 + 154) = 0;
          *(v20 + 148) = 0;
          *(v20 + 1120) = 0;
          v21 = v20 + 1128;
        }

        *(&v124 + 1) = v21;
        v31 = *(v21 - 8);
        if (v31 != -1)
        {
          (off_266C800[v31])(v126, v21 - 1128);
        }

        *(v21 - 8) = -1;
        sub_52A464(v21 - 1128, v19);
        *(v21 - 8) = 0;
        v19 += 168;
      }

      while (v19 != v114);
      v32 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v107)
      {
        v33 = *(&v32 + 1);
        v34 = v32;
        if (*(&v32 + 1) == v32)
        {
          v36 = 2;
        }

        else
        {
          v35 = v32;
          do
          {
            if (sub_79208C(&v124, v35, 0) && (sub_79208C(&v124, v35, 1) & 1) != 0)
            {
              v36 = 6;
              goto LABEL_82;
            }

            v35 += 1128;
          }

          while (v35 != v33);
          v37 = v34;
          do
          {
            if (sub_79208C(&v124, v37, 1))
            {
              v36 = 4;
              goto LABEL_82;
            }

            v37 += 1128;
          }

          while (v37 != v33);
          while (!sub_79208C(&v124, v34, 0))
          {
            v34 += 1128;
            if (v34 == v33)
            {
              v36 = 7;
              goto LABEL_82;
            }
          }

          v36 = 5;
        }
      }

      else
      {
        v36 = 1;
      }
    }

LABEL_82:
    v119 = v36;
    sub_68DFA4(v112, &v119);
    v38 = v117[0];
    if (v117[0])
    {
      v39 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v40 = v39 - 1128;
          v41 = *(v39 - 2);
          if (v41 != -1)
          {
            (off_266C800[v41])(&v124, v39 - 1128);
          }

          *(v39 - 2) = -1;
          v39 -= 1128;
        }

        while (v40 != v38);
        v38 = v117[0];
      }

      operator delete(v38);
    }

    v124 = 0uLL;
    v125 = 0;
    v42 = v120;
    v115 = v121;
    if (v120 == v121)
    {
      v117[0] = 0;
      v117[1] = 0;
      v59 = v104;
      v118 = 0;
    }

    else
    {
      do
      {
        v43 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v45 = v124;
          v46 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v46 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v46)
          {
            v46 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v47 = 0x3A196B1EDD80E8;
          }

          else
          {
            v47 = v46;
          }

          if (v47)
          {
            if (v47 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v48 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v48 = 0u;
          *(v48 + 16) = 0u;
          *(v48 + 32) = 0u;
          *(v48 + 48) = 0u;
          *(v48 + 64) = 0u;
          *(v48 + 80) = 0u;
          *(v48 + 96) = 0u;
          *(v48 + 112) = 0u;
          *(v48 + 160) = 0;
          *(v48 + 128) = 0u;
          *(v48 + 144) = 0u;
          *(v48 + 4) = -1;
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          *(v48 + 8) = 0;
          *(v48 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v48 + 40) = -1;
          *(v48 + 48) = 0x7FFFFFFF;
          *(v48 + 56) = 0u;
          *(v48 + 72) = 0u;
          *(v48 + 88) = 0u;
          *(v48 + 104) = 0u;
          *(v48 + 113) = 0u;
          *(v48 + 140) = 0;
          *(v48 + 132) = 0;
          *(v48 + 154) = 0;
          *(v48 + 148) = 0;
          v49 = v48 - (v43 - v45);
          *(v48 + 1120) = 0;
          if (v45 != v43)
          {
            v50 = v48 - (v43 - v45);
            v51 = v45;
            do
            {
              *v50 = 0;
              *(v50 + 1120) = -1;
              v52 = v51[280];
              if (v52 != -1)
              {
                v126[0] = v50;
                (off_266C810[v52])(v126, v51);
                *(v50 + 1120) = v52;
              }

              v51 += 282;
              v50 += 1128;
            }

            while (v51 != v43);
            v49 = v48 - (v43 - v45);
            do
            {
              v53 = v45[280];
              if (v53 != -1)
              {
                (off_266C800[v53])(v126, v45);
              }

              v45[280] = -1;
              v45 += 282;
            }

            while (v45 != v43);
            v45 = v124;
          }

          v44 = v48 + 1128;
          *&v124 = v49;
          v125 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v43 + 16) = 0u;
          *(v43 + 32) = 0u;
          *(v43 + 48) = 0u;
          *(v43 + 64) = 0u;
          *(v43 + 80) = 0u;
          *(v43 + 96) = 0u;
          *(v43 + 112) = 0u;
          *(v43 + 160) = 0;
          *(v43 + 128) = 0u;
          *(v43 + 144) = 0u;
          *(v43 + 4) = -1;
          *(v43 + 16) = 0;
          *(v43 + 24) = 0;
          *(v43 + 8) = 0;
          *(v43 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v43 + 40) = -1;
          *(v43 + 48) = 0x7FFFFFFF;
          *(v43 + 56) = 0u;
          *(v43 + 72) = 0u;
          *(v43 + 88) = 0u;
          *(v43 + 104) = 0u;
          *(v43 + 113) = 0u;
          *(v43 + 140) = 0;
          *(v43 + 132) = 0;
          *(v43 + 154) = 0;
          *(v43 + 148) = 0;
          *(v43 + 1120) = 0;
          v44 = v43 + 1128;
        }

        *(&v124 + 1) = v44;
        v54 = *(v44 - 8);
        if (v54 != -1)
        {
          (off_266C800[v54])(v126, v44 - 1128);
        }

        *(v44 - 8) = -1;
        sub_52A464(v44 - 1128, v42);
        *(v44 - 8) = 0;
        v42 += 168;
      }

      while (v42 != v115);
      v55 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v106)
      {
        v56 = *(&v55 + 1);
        v57 = v55;
        if (*(&v55 + 1) == v55)
        {
          v59 = 2;
        }

        else
        {
          v58 = v55;
          do
          {
            if (sub_79208C(&v124, v58, 0) && (sub_79208C(&v124, v58, 1) & 1) != 0)
            {
              v59 = 6;
              goto LABEL_135;
            }

            v58 += 1128;
          }

          while (v58 != v56);
          v60 = v57;
          do
          {
            if (sub_79208C(&v124, v60, 1))
            {
              v59 = 4;
              goto LABEL_135;
            }

            v60 += 1128;
          }

          while (v60 != v56);
          while (!sub_79208C(&v124, v57, 0))
          {
            v57 += 1128;
            if (v57 == v56)
            {
              v59 = 7;
              goto LABEL_135;
            }
          }

          v59 = 5;
        }
      }

      else
      {
        v59 = 1;
      }
    }

LABEL_135:
    v119 = v59;
    sub_68DFC4(v112, &v119);
    v61 = v117[0];
    if (v117[0])
    {
      v62 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v63 = v62 - 1128;
          v64 = *(v62 - 2);
          if (v64 != -1)
          {
            (off_266C800[v64])(&v124, v62 - 1128);
          }

          *(v62 - 2) = -1;
          v62 -= 1128;
        }

        while (v63 != v61);
        v61 = v117[0];
      }

      operator delete(v61);
    }

    v65 = v120;
    if (v120)
    {
      v66 = v121;
      v67 = v120;
      if (v121 == v120)
      {
LABEL_165:
        v121 = v65;
        operator delete(v67);
        goto LABEL_166;
      }

      while (1)
      {
        if (*(v66 - 9) < 0)
        {
          operator delete(*(v66 - 4));
          v68 = *(v66 - 8);
          if (!v68)
          {
LABEL_149:
            if ((*(v66 - 65) & 0x80000000) == 0)
            {
              goto LABEL_150;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v68 = *(v66 - 8);
          if (!v68)
          {
            goto LABEL_149;
          }
        }

        v69 = *(v66 - 7);
        v70 = v68;
        if (v69 != v68)
        {
          do
          {
            v71 = *(v69 - 1);
            v69 -= 3;
            if (v71 < 0)
            {
              operator delete(*v69);
            }
          }

          while (v69 != v68);
          v70 = *(v66 - 8);
        }

        *(v66 - 7) = v68;
        operator delete(v70);
        if ((*(v66 - 65) & 0x80000000) == 0)
        {
LABEL_150:
          if ((*(v66 - 89) & 0x80000000) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_162;
        }

LABEL_161:
        operator delete(*(v66 - 11));
        if ((*(v66 - 89) & 0x80000000) == 0)
        {
LABEL_151:
          if (*(v66 - 137) < 0)
          {
            goto LABEL_163;
          }

          goto LABEL_146;
        }

LABEL_162:
        operator delete(*(v66 - 14));
        if (*(v66 - 137) < 0)
        {
LABEL_163:
          operator delete(*(v66 - 20));
        }

LABEL_146:
        v66 -= 21;
        if (v66 == v65)
        {
          v67 = v120;
          goto LABEL_165;
        }
      }
    }

LABEL_166:
    v72 = __p[0];
    if (!__p[0])
    {
      goto LABEL_189;
    }

    v73 = __p[1];
    v74 = __p[0];
    if (__p[1] != __p[0])
    {
      while (1)
      {
        if (*(v73 - 9) < 0)
        {
          operator delete(*(v73 - 4));
          v75 = *(v73 - 8);
          if (!v75)
          {
LABEL_172:
            if ((*(v73 - 65) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

            goto LABEL_184;
          }
        }

        else
        {
          v75 = *(v73 - 8);
          if (!v75)
          {
            goto LABEL_172;
          }
        }

        v76 = *(v73 - 7);
        v77 = v75;
        if (v76 != v75)
        {
          do
          {
            v78 = *(v76 - 1);
            v76 -= 3;
            if (v78 < 0)
            {
              operator delete(*v76);
            }
          }

          while (v76 != v75);
          v77 = *(v73 - 8);
        }

        *(v73 - 7) = v75;
        operator delete(v77);
        if ((*(v73 - 65) & 0x80000000) == 0)
        {
LABEL_173:
          if ((*(v73 - 89) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_185;
        }

LABEL_184:
        operator delete(*(v73 - 11));
        if ((*(v73 - 89) & 0x80000000) == 0)
        {
LABEL_174:
          if (*(v73 - 137) < 0)
          {
            goto LABEL_186;
          }

          goto LABEL_169;
        }

LABEL_185:
        operator delete(*(v73 - 14));
        if (*(v73 - 137) < 0)
        {
LABEL_186:
          operator delete(*(v73 - 20));
        }

LABEL_169:
        v73 -= 21;
        if (v73 == v72)
        {
          v74 = __p[0];
          break;
        }
      }
    }

    __p[1] = v72;
    operator delete(v74);
LABEL_189:
    v79 = sub_68F328(v112);
    v124 = 0uLL;
    v125 = 0;
    v80 = *v79;
    v116 = v79[1];
    if (*v79 == v116)
    {
      __p[0] = 0;
      __p[1] = 0;
      v99 = v108;
      v123 = 0;
      goto LABEL_235;
    }

    do
    {
      v81 = *(&v124 + 1);
      if (*(&v124 + 1) >= v125)
      {
        v85 = v124;
        v87 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
        if (v87 > 0x3A196B1EDD80E8)
        {
          sub_1794();
        }

        if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v87)
        {
          v87 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
        }

        if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
        {
          v88 = 0x3A196B1EDD80E8;
        }

        else
        {
          v88 = v87;
        }

        if (v88)
        {
          if (v88 <= 0x3A196B1EDD80E8)
          {
            operator new();
          }

          sub_1808();
        }

        v89 = 8 * ((*(&v124 + 1) - v124) >> 3);
        *v89 = 0u;
        *(v89 + 16) = 0u;
        *(v89 + 32) = 0u;
        *(v89 + 48) = 0u;
        *(v89 + 64) = 0u;
        *(v89 + 80) = 0u;
        *(v89 + 96) = 0u;
        *(v89 + 112) = 0u;
        *(v89 + 160) = 0;
        *(v89 + 128) = 0u;
        *(v89 + 144) = 0u;
        *(v89 + 4) = -1;
        *(v89 + 16) = 0;
        *(v89 + 24) = 0;
        *(v89 + 8) = 0;
        *(v89 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v89 + 40) = -1;
        *(v89 + 48) = 0x7FFFFFFF;
        *(v89 + 56) = 0u;
        *(v89 + 72) = 0u;
        *(v89 + 88) = 0u;
        *(v89 + 104) = 0u;
        *(v89 + 113) = 0u;
        *(v89 + 140) = 0;
        *(v89 + 132) = 0;
        *(v89 + 154) = 0;
        *(v89 + 148) = 0;
        v86 = v81 - v85;
        v90 = v89 - (v81 - v85);
        *(v89 + 1120) = 0;
        if (v85 != v81)
        {
          v113 = v89 - v86;
          v91 = (v89 - v86);
          v92 = v85;
          do
          {
            *v91 = 0;
            v91[280] = -1;
            v93 = v92[280];
            if (v93 != -1)
            {
              v120 = v91;
              (off_266C810[v93])(&v120, v92);
              v91[280] = v93;
            }

            v92 += 282;
            v91 += 282;
          }

          while (v92 != v81);
          do
          {
            v94 = v85[280];
            if (v94 != -1)
            {
              (off_266C800[v94])(&v120, v85);
            }

            v85[280] = -1;
            v85 += 282;
          }

          while (v85 != v81);
          v85 = v124;
          v90 = v113;
        }

        v82 = v89 + 1128;
        *&v124 = v90;
        v125 = 0;
        if (v85)
        {
          operator delete(v85);
        }

        *(&v124 + 1) = v89 + 1128;
        v83 = v89;
        v84 = *(v89 + 1120);
        if (v84 != -1)
        {
LABEL_215:
          (off_266C800[v84])(&v120, v83);
        }
      }

      else
      {
        **(&v124 + 1) = 0u;
        *(v81 + 16) = 0u;
        *(v81 + 32) = 0u;
        *(v81 + 48) = 0u;
        *(v81 + 64) = 0u;
        *(v81 + 80) = 0u;
        *(v81 + 96) = 0u;
        *(v81 + 112) = 0u;
        *(v81 + 160) = 0;
        *(v81 + 128) = 0u;
        *(v81 + 144) = 0u;
        *(v81 + 4) = -1;
        *(v81 + 16) = 0;
        *(v81 + 24) = 0;
        *(v81 + 8) = 0;
        *(v81 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v81 + 40) = -1;
        *(v81 + 48) = 0x7FFFFFFF;
        *(v81 + 56) = 0u;
        *(v81 + 72) = 0u;
        *(v81 + 88) = 0u;
        *(v81 + 104) = 0u;
        *(v81 + 113) = 0u;
        *(v81 + 140) = 0;
        *(v81 + 132) = 0;
        *(v81 + 154) = 0;
        *(v81 + 148) = 0;
        *(v81 + 1120) = 0;
        v82 = v81 + 1128;
        *(&v124 + 1) = v82;
        v83 = v82 - 1128;
        v84 = *(v82 - 8);
        if (v84 != -1)
        {
          goto LABEL_215;
        }
      }

      *(v82 - 8) = -1;
      sub_52B7D8(v83, v80);
      *(v82 - 8) = 1;
      v80 += 1120;
    }

    while (v80 != v116);
    v95 = v124;
    *__p = v124;
    v123 = v125;
    LOBYTE(v124) = 0;
    if (v109)
    {
      v96 = *(&v95 + 1);
      v97 = v95;
      if (*(&v95 + 1) == v95)
      {
        v99 = 2;
      }

      else
      {
        v98 = v95;
        do
        {
          if (sub_79208C(&v124, v98, 0) && (sub_79208C(&v124, v98, 1) & 1) != 0)
          {
            v99 = 6;
            goto LABEL_235;
          }

          v98 += 1128;
        }

        while (v98 != v96);
        v100 = v97;
        do
        {
          if (sub_79208C(&v124, v100, 1))
          {
            v99 = 4;
            goto LABEL_235;
          }

          v100 += 1128;
        }

        while (v100 != v96);
        while (!sub_79208C(&v124, v97, 0))
        {
          v97 += 1128;
          if (v97 == v96)
          {
            v99 = 7;
            goto LABEL_235;
          }
        }

        v99 = 5;
      }
    }

    else
    {
      v99 = 1;
    }

LABEL_235:
    LODWORD(v117[0]) = v99;
    sub_68DFE4(v112, v117);
    v18 = __p[0];
    if (__p[0])
    {
      v101 = __p[1];
      if (__p[1] != __p[0])
      {
        do
        {
          v102 = v101 - 1128;
          v103 = *(v101 - 2);
          if (v103 != -1)
          {
            (off_266C800[v103])(&v124, v101 - 1128);
          }

          *(v101 - 2) = -1;
          v101 -= 1128;
        }

        while (v102 != v18);
        v18 = __p[0];
      }

      operator delete(v18);
    }

    v112 += 976;
  }

  while (v112 != v110);
}

void sub_786E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void *);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_77CB78(va);
  sub_51B6E0(va1);
  sub_51B6E0(va2);
  _Unwind_Resume(a1);
}

void sub_786F14(uint64_t a1, void *a2, double a3)
{
  v3 = a2[156];
  v4 = a2[157];
  if (v3 != v4)
  {
    v7 = a2 + 512;
    while (1)
    {
      v8 = *(v3 + 152);
      if (v8)
      {
        v9 = 0;
        for (i = 0; i != v8; ++i)
        {
          v9 += sub_4D23F8(a2, i, a3);
        }

        if (v9 > *(a1 + 16))
        {
          return;
        }
      }

      else if (*(a1 + 16) < 0)
      {
        return;
      }

      if (sub_734C10(v3))
      {
        break;
      }

      v3 += 160;
      if (v3 == v4)
      {
        return;
      }
    }

    v11 = *(v3 + 152);
    sub_5139E8(&v25, v3);
    sub_78D600(a2[138] + 392, &v25, &v35, 1uLL);
    if (v34 < 0)
    {
      operator delete(__p);
      if ((v32 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

LABEL_21:
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_22:
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_17:
      if (v11 == -1)
      {
        return;
      }

LABEL_24:
      if (v11 >= *(sub_578320(a2 + 138, 1uLL) + 24))
      {
        return;
      }

      v12 = sub_4D1F50(a2, v11);
      sub_2B7A20(*(a1 + 8), (((*(v12 + 36) & 0x20000000) << 19) | (*(v12 + 36) << 32) | *(v12 + 32)) ^ 0x1000000000000, &v25);
      sub_31BF20(&v25, &v23);
      if (*(&v25 + 1))
      {
        v26 = *(&v25 + 1);
        operator delete(*(&v25 + 1));
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 2) < 2)
      {
        goto LABEL_86;
      }

      v13 = sub_41224(&v23, 0);
      v14 = sub_41224(&v23, 1uLL);
      if (*v14 == *v13)
      {
        v15 = v13[1];
        v16 = v14[1];
        j = 0.0;
        if (v15 == v16)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v16 = v14[1];
        v15 = v13[1];
      }

      v18 = -(*v13 - *v14);
      if (*v14 - *v13 < (*v13 - *v14))
      {
        v18 = (*v14 - *v13);
      }

        ;
      }

        ;
      }

LABEL_38:
      v19 = (j + 180.0) / 45.0 + 0.5;
      if (v19 <= 0)
      {
        v20 = -(-v19 & 7);
      }

      else
      {
        v20 = v19 & 7;
      }

      v21 = v7 + 418;
      v22 = *(v7 + 3367);
      if (v20 > 3)
      {
        if (v20 <= 5)
        {
          if (v20 == 4)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 78;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 17742;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (v20 == 6)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 69;
          goto LABEL_85;
        }

        if (v20 == 7)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 17747;
          v21 += 2;
          goto LABEL_85;
        }
      }

      else
      {
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 87;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 22350;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (!v20)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 83;
          goto LABEL_85;
        }

        if (v20 == 1)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 22355;
          v21 += 2;
          goto LABEL_85;
        }
      }

      if (v22 < 0)
      {
        a2[931] = 0;
        v21 = a2[930];
      }

      else
      {
        *(v7 + 3367) = 0;
      }

LABEL_85:
      *v21 = 0;
LABEL_86:
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      return;
    }

LABEL_23:
    operator delete(v25);
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_24;
  }
}

void sub_787440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_78749C(void *result, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((result[2] - *result) >> 7) < a2)
  {
    if (a2 < 0x864B8A7DE6D1ELL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void *sub_7875D4(void *result, unint64_t a2)
{
  if (0x5DDB1ADCB91F64A7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x52DA224E52347)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

unint64_t sub_78770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_4C35B0(a2);
  if (result - 1 == a3)
  {
    v10 = *a4;
    v11 = *(a4 + 8);
    if (*a4 != v11)
    {
      while (v10[44] != 2)
      {
        v10 += 110;
        if (v10 == v11)
        {
          goto LABEL_11;
        }
      }
    }

    if (v10 == v11)
    {
LABEL_11:
      if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }

      v10 = &unk_27337E8;
      v12 = a6;
    }

    else
    {
      v12 = a6;
    }

    return sub_69AE48(v12, v10);
  }

  return result;
}

void sub_787AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_787B20(uint64_t a1)
{
  result = 0.0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  *(a1 + 16) = v3;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = v3;
  *(a1 + 112) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v3;
  *(a1 + 152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = v3;
  *(a1 + 192) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = v3;
  *(a1 + 232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = v3;
  *(a1 + 272) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 304) = v3;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = v3;
  *(a1 + 352) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 384) = v3;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = v3;
  *(a1 + 432) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 464) = v3;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = v3;
  *(a1 + 512) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 544) = v3;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = v3;
  *(a1 + 592) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 624) = v3;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = v3;
  *(a1 + 672) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 704) = v3;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = v3;
  *(a1 + 752) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 784) = v3;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  *(a1 + 816) = v3;
  *(a1 + 832) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 864) = v3;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = v3;
  *(a1 + 912) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 920) = 0;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 944) = v3;
  *(a1 + 960) = 0;
  *(a1 + 968) = 0;
  *(a1 + 976) = v3;
  *(a1 + 992) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1024) = v3;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = v3;
  *(a1 + 1072) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1104) = v3;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = v3;
  *(a1 + 1152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1160) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1184) = v3;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = v3;
  *(a1 + 1232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1256) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1264) = v3;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = v3;
  *(a1 + 1312) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1344) = v3;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = v3;
  *(a1 + 1392) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1400) = 0;
  *(a1 + 1408) = 0;
  *(a1 + 1416) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1424) = v3;
  *(a1 + 1440) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = v3;
  *(a1 + 1472) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1504) = v3;
  *(a1 + 1520) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = v3;
  *(a1 + 1552) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1560) = 0;
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1584) = v3;
  *(a1 + 1600) = 0;
  *(a1 + 1608) = 0;
  *(a1 + 1616) = v3;
  *(a1 + 1632) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1640) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1656) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1664) = v3;
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1696) = v3;
  *(a1 + 1712) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1736) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1744) = v3;
  *(a1 + 1760) = 0;
  *(a1 + 1768) = 0;
  *(a1 + 1776) = v3;
  *(a1 + 1792) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 1816) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1824) = v3;
  *(a1 + 1840) = 0;
  *(a1 + 1848) = 0;
  *(a1 + 1856) = v3;
  *(a1 + 1872) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1880) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1896) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1904) = v3;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 0;
  *(a1 + 1936) = v3;
  *(a1 + 1952) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1960) = 0;
  *(a1 + 1968) = 0;
  *(a1 + 1976) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1984) = v3;
  *(a1 + 2000) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 2016) = v3;
  *(a1 + 2032) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2040) = 0;
  *(a1 + 2048) = 0;
  *(a1 + 2056) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2064) = v3;
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2096) = v3;
  *(a1 + 2112) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2120) = 0;
  *(a1 + 2128) = 0;
  *(a1 + 2136) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2144) = v3;
  *(a1 + 2160) = 0;
  *(a1 + 2168) = 0;
  *(a1 + 2176) = v3;
  *(a1 + 2192) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2200) = 0;
  *(a1 + 2208) = 0;
  *(a1 + 2216) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2224) = v3;
  *(a1 + 2240) = 0;
  *(a1 + 2248) = 0;
  *(a1 + 2256) = v3;
  *(a1 + 2272) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2280) = 0;
  *(a1 + 2288) = 0;
  *(a1 + 2296) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2304) = v3;
  *(a1 + 2320) = 0;
  *(a1 + 2328) = 0;
  *(a1 + 2336) = v3;
  *(a1 + 2352) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2360) = 0;
  *(a1 + 2368) = 0;
  *(a1 + 2376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2384) = v3;
  *(a1 + 2400) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2416) = v3;
  *(a1 + 2432) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0;
  *(a1 + 2456) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2464) = v3;
  *(a1 + 2480) = 0;
  *(a1 + 2488) = 0;
  *(a1 + 2496) = v3;
  *(a1 + 2512) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2520) = 0;
  *(a1 + 2528) = 0;
  *(a1 + 2536) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2544) = v3;
  *(a1 + 2560) = 0;
  *(a1 + 2568) = 0;
  *(a1 + 2576) = v3;
  *(a1 + 2592) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2600) = 0;
  *(a1 + 2608) = 0;
  *(a1 + 2616) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2624) = v3;
  *(a1 + 2640) = 0;
  *(a1 + 2648) = 0;
  *(a1 + 2656) = v3;
  *(a1 + 2672) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2680) = 0;
  *(a1 + 2688) = 0;
  *(a1 + 2696) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2704) = v3;
  *(a1 + 2720) = 0;
  *(a1 + 2728) = 0;
  *(a1 + 2752) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2776) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2736) = v3;
  *(a1 + 2760) = 0;
  *(a1 + 2768) = 0;
  *(a1 + 2784) = v3;
  *(a1 + 2816) = 0;
  *(a1 + 2800) = 0u;
  return result;
}

void sub_787F9C(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *a1 = 0x7FFFFFFF;
  *(a1 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  sub_5F328(a1 + 56);
  *(a1 + 96) = 0;
  sub_5F328(a1 + 104);
  *(a1 + 156) = 0u;
  *(a1 + 144) = 0x8000000080000000;
  *(a1 + 152) = -1;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 196) = -1;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 320) = 0x7FFFFFFF;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 324) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 344) = 0x7FFFFFFF;
  *(a1 + 348) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 368) = 0x7FFFFFFF;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 372) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 392) = 0x7FFFFFFF;
  *(a1 + 396) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 416) = 0x7FFFFFFF;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 420) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 440) = -1;
  v3 = 16;
  strcpy(__p, "EVRequestContext");
  sub_44F3E4(a1 + 448, __p);
}

void sub_788140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_44CCC4(v19);
  sub_44C974((v15 + 8));
  sub_44C624(v15);
  sub_44C028(v18);
  v21 = *v17;
  *v17 = 0;
  if (v21)
  {
    sub_44FF58(v17, v21);
  }

  sub_44FBAC(v16);
  sub_44FA80(v14);
  _Unwind_Resume(a1);
}

void sub_7881A0(_Unwind_Exception *a1)
{
  sub_5C010(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7881CC(uint64_t a1)
{
  v2 = a1 + 4096;
  if ((*(a1 + 0x1FFF) & 0x80000000) == 0)
  {
    if ((*(a1 + 8167) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 8144));
    v3 = *(a1 + 8128);
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 8168));
  if (*(v2 + 4071) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *(a1 + 8128);
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_9:
  sub_559B98(a1 + 5416);
  sub_6E3B8((a1 + 5400));
  sub_528AB4(a1 + 3824);
  sub_528AB4(a1 + 2248);
  v4 = *(a1 + 2192);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 2064);
  if (v5)
  {
    v6 = *(a1 + 2072);
    v7 = *(a1 + 2064);
    if (v6 == v5)
    {
LABEL_22:
      *(a1 + 2072) = v5;
      operator delete(v7);
      goto LABEL_23;
    }

    while (1)
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
        v8 = v6 - 6;
        if (*(v6 - 25) < 0)
        {
LABEL_20:
          operator delete(*v8);
        }
      }

      else
      {
        v8 = v6 - 6;
        if (*(v6 - 25) < 0)
        {
          goto LABEL_20;
        }
      }

      v6 = v8;
      if (v8 == v5)
      {
        v7 = *(a1 + 2064);
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  v9 = *(a1 + 2024);
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

  v11 = *(a1 + 2008);
  *(a1 + 2008) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  sub_528AB4(a1 + 16);
  return a1;
}

uint64_t sub_788390(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1120;
    sub_3A9518(i - 1120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_7883E4(uint64_t *a1, uint64_t a2, __int128 *a3, char *a4)
{
  v4 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5);
  v5 = v4 + 1;
  if (v4 + 1 > 0x3A83A83A83A83ALL)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5) > v5)
  {
    v5 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) >= 0x1D41D41D41D41DLL)
  {
    v7 = 0x3A83A83A83A83ALL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x3A83A83A83A83ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 32 * ((a1[1] - *a1) >> 5);
  sub_658D94(v17, a2, a3, *a4);
  v8 = 1120 * v4 + 1120;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 - v10;
  v12 = v17 + v11;
  if (v10 != *a1)
  {
    v13 = *a1;
    v14 = v17 + v11;
    do
    {
      v15 = sub_529850(v14, v13);
      v13 += 1120;
      v14 = v15 + 1120;
    }

    while (v13 != v10);
    do
    {
      sub_3A9518(v9);
      v9 += 1120;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_78856C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_788390(va);
  _Unwind_Resume(a1);
}

uint64_t sub_788580(uint64_t *a1, _OWORD *a2, uint64_t a3, __int128 *a4)
{
  v4 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5);
  v5 = v4 + 1;
  if (v4 + 1 > 0x3A83A83A83A83ALL)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5) > v5)
  {
    v5 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) >= 0x1D41D41D41D41DLL)
  {
    v7 = 0x3A83A83A83A83ALL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x3A83A83A83A83ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 32 * ((a1[1] - *a1) >> 5);
  sub_658C94(v17, a2, a3, a4);
  v8 = 1120 * v4 + 1120;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 - v10;
  v12 = v17 + v11;
  if (v10 != *a1)
  {
    v13 = *a1;
    v14 = v17 + v11;
    do
    {
      v15 = sub_529850(v14, v13);
      v13 += 1120;
      v14 = v15 + 1120;
    }

    while (v13 != v10);
    do
    {
      sub_3A9518(v9);
      v9 += 1120;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_788708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_788390(va);
  _Unwind_Resume(a1);
}

uint64_t sub_78871C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 136) = 0u;
  v8 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v8;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  *(a2 + 200) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a2 + 224) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0u;
  v9 = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a1 + 272) = v9;
  LODWORD(v9) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 280) = v9;
  v10 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v10;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0u;
  v11 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v11;
  *(a2 + 320) = 0u;
  *(a2 + 312) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 336) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 376) = 0;
  *(a2 + 360) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 384) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 408) = 0u;
  v12 = *(a2 + 432);
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  *(a1 + 432) = v12;
  LODWORD(v12) = *(a2 + 440);
  *(a1 + 444) = *(a2 + 444);
  *(a1 + 440) = v12;
  v13 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 448) = v13;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0u;
  v14 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 472) = v14;
  *(a2 + 480) = 0u;
  *(a2 + 472) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 512) = 0;
  *(a2 + 496) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  v15 = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 592) = v15;
  LODWORD(v15) = *(a2 + 600);
  *(a1 + 604) = *(a2 + 604);
  *(a1 + 600) = v15;
  v16 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 608) = v16;
  *(a2 + 608) = 0;
  *(a2 + 616) = 0u;
  v17 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 632) = v17;
  *(a2 + 640) = 0u;
  *(a2 + 632) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  *(a2 + 656) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  v18 = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a1 + 752) = v18;
  LODWORD(v18) = *(a2 + 760);
  *(a1 + 764) = *(a2 + 764);
  *(a1 + 760) = v18;
  v19 = *(a2 + 768);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 768) = v19;
  *(a2 + 768) = 0;
  *(a2 + 776) = 0u;
  v20 = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 792) = v20;
  *(a2 + 800) = 0u;
  *(a2 + 792) = 0;
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 832) = 0;
  *(a2 + 816) = 0u;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 848) = *(a2 + 848);
  *(a2 + 856) = 0;
  *(a2 + 840) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 880) = 0;
  *(a2 + 864) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 904) = 0;
  *(a2 + 888) = 0u;
  v21 = *(a2 + 912);
  *(a2 + 912) = 0;
  *(a1 + 912) = v21;
  LODWORD(v21) = *(a2 + 920);
  *(a1 + 924) = *(a2 + 924);
  *(a1 + 920) = v21;
  v22 = *(a2 + 928);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 928) = v22;
  *(a2 + 928) = 0;
  *(a2 + 936) = 0u;
  v23 = *(a2 + 952);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 952) = v23;
  *(a2 + 960) = 0u;
  *(a2 + 952) = 0;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0;
  *(a2 + 976) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1016) = 0;
  *(a2 + 1000) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1040) = 0;
  *(a2 + 1024) = 0u;
  *(a1 + 1064) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1064) = 0;
  *(a2 + 1048) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = 0;
  *(a2 + 1072) = 0u;
  v24 = *(a2 + 1096);
  *(a2 + 1096) = 0;
  *(a1 + 1096) = v24;
  LODWORD(v24) = *(a2 + 1104);
  *(a1 + 1108) = *(a2 + 1108);
  *(a1 + 1104) = v24;
  v25 = *(a2 + 1112);
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1112) = v25;
  *(a2 + 1112) = 0;
  *(a2 + 1128) = 0;
  *(a2 + 1120) = 0;
  v26 = *(a2 + 1136);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v26;
  *(a2 + 1152) = 0;
  *(a2 + 1144) = 0;
  *(a2 + 1136) = 0;
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1168) = 0;
  *(a1 + 1200) = -1;
  v27 = *(a2 + 1200);
  if (v27 != -1)
  {
    v44 = a1 + 1168;
    (off_266C7C8[v27])(&v44, a2 + 1168);
    *(a1 + 1200) = v27;
  }

  *(a1 + 1208) = *(a2 + 1208);
  v28 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v28;
  *(a2 + 1224) = 0u;
  *(a2 + 1216) = 0;
  *(a1 + 1240) = *(a2 + 1240);
  v29 = *(a2 + 1248);
  *(a1 + 1264) = *(a2 + 1264);
  *(a1 + 1248) = v29;
  *(a2 + 1256) = 0u;
  *(a2 + 1248) = 0;
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1296) = 0u;
  *(a1 + 1288) = 0;
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1304) = 0;
  *(a2 + 1288) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1312) = *(a2 + 1312);
  *(a1 + 1328) = *(a2 + 1328);
  *(a2 + 1328) = 0;
  *(a2 + 1312) = 0u;
  sub_55A4D0(a1 + 1336, a2 + 1336);
  sub_55A4D0(a1 + 1832, a2 + 1832);
  *(a1 + 2344) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2328) = *(a2 + 2328);
  *(a1 + 2336) = *(a2 + 2336);
  *(a2 + 2344) = 0;
  *(a2 + 2328) = 0u;
  *(a1 + 2368) = 0;
  *(a1 + 2352) = 0u;
  *(a1 + 2352) = *(a2 + 2352);
  *(a1 + 2368) = *(a2 + 2368);
  *(a2 + 2368) = 0;
  *(a2 + 2352) = 0u;
  sub_61009C(a1 + 2376, a2 + 2376);
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0;
  *(a1 + 7176) = *(a2 + 7176);
  *(a1 + 7184) = *(a2 + 7184);
  *(a2 + 7176) = 0u;
  *(a2 + 7192) = 0;
  v30 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v30;
  v31 = *(a2 + 7216);
  *(a1 + 7232) = *(a2 + 7232);
  *(a1 + 7216) = v31;
  *(a2 + 7232) = 0;
  *(a2 + 7224) = 0;
  v32 = *(a2 + 7240);
  *(a2 + 7216) = 0;
  v33 = *(a2 + 7256);
  *(a1 + 7240) = v32;
  *(a1 + 7256) = v33;
  *(a2 + 7256) = 0;
  *(a2 + 7248) = 0;
  *(a2 + 7240) = 0;
  *(a1 + 7264) = 0;
  *(a1 + 7296) = -1;
  v34 = *(a2 + 7296);
  if (v34 != -1)
  {
    v44 = a1 + 7264;
    (off_266C7C8[v34])(&v44, a2 + 7264);
    *(a1 + 7296) = v34;
  }

  *(a1 + 7304) = *(a2 + 7304);
  v35 = *(a2 + 7312);
  *(a1 + 7328) = *(a2 + 7328);
  *(a1 + 7312) = v35;
  *(a2 + 7320) = 0u;
  *(a2 + 7312) = 0;
  *(a1 + 7336) = *(a2 + 7336);
  v36 = *(a2 + 7344);
  *(a1 + 7360) = *(a2 + 7360);
  *(a1 + 7344) = v36;
  *(a2 + 7352) = 0u;
  *(a2 + 7344) = 0;
  *(a1 + 7368) = *(a2 + 7368);
  *(a1 + 7384) = 0u;
  *(a1 + 7376) = 0;
  *(a1 + 7376) = *(a2 + 7376);
  *(a1 + 7392) = *(a2 + 7392);
  *(a2 + 7392) = 0;
  *(a2 + 7376) = 0u;
  *(a1 + 7400) = 0u;
  *(a1 + 7416) = 0;
  *(a1 + 7400) = *(a2 + 7400);
  *(a1 + 7408) = *(a2 + 7408);
  *(a2 + 7400) = 0u;
  *(a2 + 7416) = 0;
  v37 = *(a2 + 7424);
  *(a1 + 7440) = *(a2 + 7440);
  *(a1 + 7424) = v37;
  *(a2 + 7424) = 0;
  *(a2 + 7432) = 0u;
  v38 = *(a2 + 7464);
  *(a1 + 7448) = *(a2 + 7448);
  *(a1 + 7464) = v38;
  *(a2 + 7456) = 0u;
  *(a2 + 7448) = 0;
  v39 = *(a2 + 7472);
  *(a1 + 7488) = *(a2 + 7488);
  *(a1 + 7472) = v39;
  *(a2 + 7488) = 0;
  *(a2 + 7472) = 0u;
  *(a1 + 7496) = 0u;
  *(a1 + 7512) = 0;
  *(a1 + 7496) = *(a2 + 7496);
  *(a1 + 7504) = *(a2 + 7504);
  *(a2 + 7496) = 0u;
  *(a2 + 7512) = 0;
  *(a1 + 7536) = 0;
  *(a1 + 7520) = 0u;
  *(a1 + 7520) = *(a2 + 7520);
  *(a1 + 7536) = *(a2 + 7536);
  *(a2 + 7536) = 0;
  *(a2 + 7520) = 0u;
  *(a1 + 7544) = 0u;
  *(a1 + 7560) = 0;
  *(a1 + 7544) = *(a2 + 7544);
  *(a1 + 7552) = *(a2 + 7552);
  *(a2 + 7544) = 0u;
  *(a2 + 7560) = 0;
  *(a1 + 7584) = 0;
  *(a1 + 7568) = 0u;
  *(a1 + 7568) = *(a2 + 7568);
  *(a1 + 7584) = *(a2 + 7584);
  *(a2 + 7584) = 0;
  *(a2 + 7568) = 0u;
  *(a1 + 7592) = 0u;
  *(a1 + 7608) = 0;
  *(a1 + 7592) = *(a2 + 7592);
  *(a1 + 7600) = *(a2 + 7600);
  *(a2 + 7592) = 0u;
  *(a2 + 7608) = 0;
  *(a1 + 7616) = *(a2 + 7616);
  *(a1 + 7632) = 0u;
  *(a1 + 7624) = 0;
  *(a1 + 7624) = *(a2 + 7624);
  *(a1 + 7632) = *(a2 + 7632);
  *(a2 + 7624) = 0u;
  *(a2 + 7640) = 0;
  *(a1 + 7664) = 0;
  *(a1 + 7648) = 0u;
  *(a1 + 7648) = *(a2 + 7648);
  *(a1 + 7664) = *(a2 + 7664);
  *(a2 + 7664) = 0;
  *(a2 + 7648) = 0u;
  *(a1 + 7672) = 0u;
  *(a1 + 7688) = 0;
  *(a1 + 7672) = *(a2 + 7672);
  *(a1 + 7680) = *(a2 + 7680);
  *(a2 + 7672) = 0u;
  *(a2 + 7688) = 0;
  *(a1 + 7712) = 0;
  *(a1 + 7696) = 0u;
  *(a1 + 7696) = *(a2 + 7696);
  *(a1 + 7712) = *(a2 + 7712);
  *(a2 + 7712) = 0;
  *(a2 + 7696) = 0u;
  v40 = *(a2 + 7720);
  *(a2 + 7720) = 0;
  *(a1 + 7720) = v40;
  LODWORD(v40) = *(a2 + 7728);
  *(a1 + 7732) = *(a2 + 7732);
  *(a1 + 7728) = v40;
  v41 = *(a2 + 7752);
  *(a1 + 7736) = *(a2 + 7736);
  *(a1 + 7752) = v41;
  *(a2 + 7736) = 0;
  *(a2 + 7744) = 0u;
  v42 = *(a2 + 7760);
  *(a1 + 7776) = *(a2 + 7776);
  *(a1 + 7760) = v42;
  *(a2 + 7768) = 0u;
  *(a2 + 7760) = 0;
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  *(a1 + 7784) = *(a2 + 7784);
  *(a1 + 7792) = *(a2 + 7792);
  *(a2 + 7784) = 0u;
  *(a2 + 7800) = 0;
  return a1;
}

double sub_78922C(uint64_t a1)
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *a1 = -1;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1935635296;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 100;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = vnegq_f64(v1);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = -1;
  *(a1 + 392) = -1;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = 0;
  *(a1 + 436) = 0;
  return result;
}

uint64_t sub_7892DC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x864B8A7DE6D1DLL)
  {
    sub_1794();
  }

  if (0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7);
  }

  if ((0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7)) >= 0x4325C53EF368ELL)
  {
    v5 = 0x864B8A7DE6D1DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x864B8A7DE6D1DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (a1[1] - *a1) >> 7 << 7;
  sub_78871C(v6, a2);
  v7 = 7808 * v2 + 7808;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_78871C(v12, v11);
      v11 += 7808;
      v12 = v13 + 7808;
    }

    while (v11 != v9);
    do
    {
      sub_789448(v8);
      v8 += 7808;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_789448(uint64_t a1)
{
  v2 = *(a1 + 7784);
  if (v2)
  {
    v3 = *(a1 + 7792);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = *(a1 + 7784);
    }

    *(a1 + 7792) = v2;
    operator delete(v4);
  }

  sub_53A868(a1 + 7624);
  v5 = *(a1 + 7592);
  if (v5)
  {
    v6 = *(a1 + 7600);
    v7 = *(a1 + 7592);
    if (v6 != v5)
    {
      do
      {
        v8 = v6 - 1128;
        v9 = *(v6 - 8);
        if (v9 != -1)
        {
          (off_266C7F0[v9])(&v45, v6 - 1128);
        }

        *(v6 - 8) = -1;
        v6 -= 1128;
      }

      while (v8 != v5);
      v7 = *(a1 + 7592);
    }

    *(a1 + 7600) = v5;
    operator delete(v7);
  }

  v10 = *(a1 + 7568);
  if (v10)
  {
    v11 = *(a1 + 7576);
    v12 = *(a1 + 7568);
    if (v11 != v10)
    {
      do
      {
        v13 = v11 - 1128;
        v14 = *(v11 - 8);
        if (v14 != -1)
        {
          (off_266C7F0[v14])(&v46, v11 - 1128);
        }

        *(v11 - 8) = -1;
        v11 -= 1128;
      }

      while (v13 != v10);
      v12 = *(a1 + 7568);
    }

    *(a1 + 7576) = v10;
    operator delete(v12);
  }

  v15 = *(a1 + 7544);
  if (v15)
  {
    v16 = *(a1 + 7552);
    v17 = *(a1 + 7544);
    if (v16 != v15)
    {
      do
      {
        v16 = sub_3A9518(v16 - 1120);
      }

      while (v16 != v15);
      v17 = *(a1 + 7544);
    }

    *(a1 + 7552) = v15;
    operator delete(v17);
  }

  v18 = *(a1 + 7520);
  if (v18)
  {
    v19 = *(a1 + 7528);
    v20 = *(a1 + 7520);
    if (v19 != v18)
    {
      do
      {
        v19 = sub_3A9518(v19 - 1120);
      }

      while (v19 != v18);
      v20 = *(a1 + 7520);
    }

    *(a1 + 7528) = v18;
    operator delete(v20);
  }

  v21 = *(a1 + 7496);
  if (v21)
  {
    *(a1 + 7504) = v21;
    operator delete(v21);
  }

  if (*(a1 + 7495) < 0)
  {
    operator delete(*(a1 + 7472));
    if ((*(a1 + 7471) & 0x80000000) == 0)
    {
LABEL_36:
      if ((*(a1 + 7447) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_45;
    }
  }

  else if ((*(a1 + 7471) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(*(a1 + 7448));
  if ((*(a1 + 7447) & 0x80000000) == 0)
  {
LABEL_37:
    v22 = *(a1 + 7400);
    if (!v22)
    {
      goto LABEL_38;
    }

LABEL_46:
    v25 = *(a1 + 7408);
    if (v25 == v22)
    {
      *(a1 + 7408) = v22;
      operator delete(v22);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

    else
    {
      do
      {
        if (*(v25 - 1) < 0)
        {
          operator delete(*(v25 - 3));
        }

        v25 -= 5;
      }

      while (v25 != v22);
      v26 = *(a1 + 7400);
      *(a1 + 7408) = v22;
      operator delete(v26);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

LABEL_39:
    if ((*(a1 + 7367) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_45:
  operator delete(*(a1 + 7424));
  v22 = *(a1 + 7400);
  if (v22)
  {
    goto LABEL_46;
  }

LABEL_38:
  v23 = *(a1 + 7376);
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_53:
  v27 = *(a1 + 7384);
  v28 = v23;
  if (v27 != v23)
  {
    do
    {
      v27 = sub_5C0F34(v27 - 816);
    }

    while (v27 != v23);
    v28 = *(a1 + 7376);
  }

  *(a1 + 7384) = v23;
  operator delete(v28);
  if ((*(a1 + 7367) & 0x80000000) == 0)
  {
LABEL_40:
    if ((*(a1 + 7335) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_58:
    operator delete(*(a1 + 7312));
    v24 = *(a1 + 7296);
    if (v24 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_57:
  operator delete(*(a1 + 7344));
  if (*(a1 + 7335) < 0)
  {
    goto LABEL_58;
  }

LABEL_41:
  v24 = *(a1 + 7296);
  if (v24 != -1)
  {
LABEL_59:
    (off_266C7A0[v24])(&v47, a1 + 7264);
  }

LABEL_60:
  *(a1 + 7296) = -1;
  if (*(a1 + 7263) < 0)
  {
    operator delete(*(a1 + 7240));
    if ((*(a1 + 7239) & 0x80000000) == 0)
    {
LABEL_62:
      v29 = *(a1 + 7176);
      if (!v29)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  else if ((*(a1 + 7239) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(*(a1 + 7216));
  v29 = *(a1 + 7176);
  if (v29)
  {
LABEL_63:
    *(a1 + 7184) = v29;
    operator delete(v29);
  }

LABEL_64:
  sub_5C1688(a1 + 2376);
  sub_559E70((a1 + 1288));
  if ((*(a1 + 1271) & 0x80000000) == 0)
  {
    if ((*(a1 + 1239) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_72:
    operator delete(*(a1 + 1216));
    v30 = *(a1 + 1200);
    if (v30 == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  operator delete(*(a1 + 1248));
  if (*(a1 + 1239) < 0)
  {
    goto LABEL_72;
  }

LABEL_66:
  v30 = *(a1 + 1200);
  if (v30 != -1)
  {
LABEL_73:
    (off_266C7A0[v30])(&v48, a1 + 1168);
  }

LABEL_74:
  *(a1 + 1200) = -1;
  sub_53A868(a1 + 1000);
  v31 = *(a1 + 976);
  if (v31)
  {
    v32 = *(a1 + 984);
    v33 = *(a1 + 976);
    if (v32 != v31)
    {
      do
      {
        v34 = *(v32 - 1);
        v32 -= 3;
        if (v34 < 0)
        {
          operator delete(*v32);
        }
      }

      while (v32 != v31);
      v33 = *(a1 + 976);
    }

    *(a1 + 984) = v31;
    operator delete(v33);
  }

  sub_53A868(a1 + 816);
  sub_53A868(a1 + 656);
  sub_53A868(a1 + 496);
  sub_53A868(a1 + 336);
  sub_53A868(a1 + 176);
  v35 = *(a1 + 136);
  if (v35)
  {
    v36 = *(a1 + 144);
    v37 = *(a1 + 136);
    if (v36 != v35)
    {
      do
      {
        if (*(v36 - 32) == 1)
        {
          sub_3A9518(v36 - 1152);
        }

        v36 -= 1168;
      }

      while (v36 != v35);
      v37 = *(a1 + 136);
    }

    *(a1 + 144) = v35;
    operator delete(v37);
  }

  v38 = *(a1 + 24);
  if (v38)
  {
    v39 = *(a1 + 32);
    v40 = *(a1 + 24);
    if (v39 != v38)
    {
      do
      {
        v39 -= 176;
        sub_5C17B4(v39);
      }

      while (v39 != v38);
      v40 = *(a1 + 24);
    }

    *(a1 + 32) = v38;
    operator delete(v40);
  }

  v41 = *a1;
  if (*a1)
  {
    v42 = *(a1 + 8);
    v43 = *a1;
    if (v42 != v41)
    {
      do
      {
        v42 = sub_693598(v42 - 12656);
      }

      while (v42 != v41);
      v43 = *a1;
    }

    *(a1 + 8) = v41;
    operator delete(v43);
  }

  return a1;
}

uint64_t sub_78996C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
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

  v21 = 16 * ((a1[1] - *a1) >> 4);
  sub_E67B74(v21, a2, a3);
  v7 = 176 * v3 + 176;
  v8 = *a1;
  v9 = a1[1];
  v10 = v21 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v21 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      v15 = *(v11 + 3);
      *(v12 + 63) = *(v11 + 63);
      *(v12 + 32) = v14;
      *(v12 + 48) = v15;
      *(v12 + 16) = v13;
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *(v12 + 72) = 0;
      *(v12 + 72) = *(v11 + 9);
      *(v12 + 88) = v11[11];
      v11[9] = 0;
      v11[10] = 0;
      v11[11] = 0;
      v16 = *(v11 + 6);
      *(v12 + 112) = *(v11 + 112);
      *(v12 + 96) = v16;
      v17 = *(v11 + 15);
      *(v12 + 136) = *(v11 + 17);
      *(v12 + 120) = v17;
      *(v12 + 152) = v11[19];
      *(v12 + 160) = *(v11 + 10);
      v11[19] = 0;
      v11[20] = 0;
      v11[21] = 0;
      v11 += 22;
      v12 += 176;
    }

    while (v11 != v9);
    do
    {
      v18 = v8[19];
      if (v18)
      {
        operator delete(v18);
      }

      v19 = v8[9];
      if (v19)
      {
        v8[10] = v19;
        operator delete(v19);
      }

      v8 += 22;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_789B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_789B8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_789B8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    v4 = *(i - 24);
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *(i - 104);
    if (v5)
    {
      *(i - 96) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_789C10(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 8);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v4 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 32) = v4;
  v5 = *(a2 + 56);
  *(v2 + 72) = *(a2 + 72);
  *(v2 + 56) = v5;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v6 = *(a2 + 80);
  *(v2 + 96) = *(a2 + 96);
  *(v2 + 80) = v6;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 104) = *(a2 + 104);
  *(v2 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(v2 + 128) = *(a2 + 128);
  result = *(a2 + 136);
  *(v2 + 152) = *(a2 + 152);
  *(v2 + 136) = result;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(v2 + 160) = *(a2 + 160);
  return result;
}

uint64_t sub_789CC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 136) = 0u;
  v8 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v8;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  *(a2 + 200) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a2 + 224) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0u;
  v9 = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a1 + 272) = v9;
  LODWORD(v9) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 280) = v9;
  v10 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v10;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0u;
  v11 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v11;
  *(a2 + 320) = 0u;
  *(a2 + 312) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 336) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 376) = 0;
  *(a2 + 360) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 384) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 408) = 0u;
  v12 = *(a2 + 432);
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  *(a1 + 432) = v12;
  LODWORD(v12) = *(a2 + 440);
  *(a1 + 444) = *(a2 + 444);
  *(a1 + 440) = v12;
  v13 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 448) = v13;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0u;
  v14 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 472) = v14;
  *(a2 + 480) = 0u;
  *(a2 + 472) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 512) = 0;
  *(a2 + 496) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  v15 = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 592) = v15;
  LODWORD(v15) = *(a2 + 600);
  *(a1 + 604) = *(a2 + 604);
  *(a1 + 600) = v15;
  v16 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 608) = v16;
  *(a2 + 608) = 0;
  *(a2 + 616) = 0u;
  v17 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 632) = v17;
  *(a2 + 640) = 0u;
  *(a2 + 632) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  *(a2 + 656) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  v18 = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a1 + 752) = v18;
  LODWORD(v18) = *(a2 + 760);
  *(a1 + 764) = *(a2 + 764);
  *(a1 + 760) = v18;
  v19 = *(a2 + 768);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 768) = v19;
  *(a2 + 768) = 0;
  *(a2 + 776) = 0u;
  v20 = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 792) = v20;
  *(a2 + 800) = 0u;
  *(a2 + 792) = 0;
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 832) = 0;
  *(a2 + 816) = 0u;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 848) = *(a2 + 848);
  *(a2 + 856) = 0;
  *(a2 + 840) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 880) = 0;
  *(a2 + 864) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 904) = 0;
  *(a2 + 888) = 0u;
  v21 = *(a2 + 912);
  *(a2 + 912) = 0;
  *(a1 + 912) = v21;
  LODWORD(v21) = *(a2 + 920);
  *(a1 + 924) = *(a2 + 924);
  *(a1 + 920) = v21;
  v22 = *(a2 + 928);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 928) = v22;
  *(a2 + 928) = 0;
  *(a2 + 936) = 0u;
  v23 = *(a2 + 952);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 952) = v23;
  *(a2 + 960) = 0u;
  *(a2 + 952) = 0;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0;
  *(a2 + 976) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1016) = 0;
  *(a2 + 1000) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1040) = 0;
  *(a2 + 1024) = 0u;
  *(a1 + 1064) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1064) = 0;
  *(a2 + 1048) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = 0;
  *(a2 + 1072) = 0u;
  v24 = *(a2 + 1096);
  *(a2 + 1096) = 0;
  *(a1 + 1096) = v24;
  LODWORD(v24) = *(a2 + 1104);
  *(a1 + 1108) = *(a2 + 1108);
  *(a1 + 1104) = v24;
  v25 = *(a2 + 1112);
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1112) = v25;
  *(a2 + 1112) = 0;
  *(a2 + 1128) = 0;
  *(a2 + 1120) = 0;
  v26 = *(a2 + 1136);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v26;
  *(a2 + 1152) = 0;
  *(a2 + 1144) = 0;
  *(a2 + 1136) = 0;
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1168) = 0;
  *(a1 + 1200) = -1;
  v27 = *(a2 + 1200);
  if (v27 != -1)
  {
    v44 = a1 + 1168;
    (off_266C7C8[v27])(&v44, a2 + 1168);
    *(a1 + 1200) = v27;
  }

  *(a1 + 1208) = *(a2 + 1208);
  v28 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v28;
  *(a2 + 1224) = 0u;
  *(a2 + 1216) = 0;
  *(a1 + 1240) = *(a2 + 1240);
  v29 = *(a2 + 1248);
  *(a1 + 1264) = *(a2 + 1264);
  *(a1 + 1248) = v29;
  *(a2 + 1256) = 0u;
  *(a2 + 1248) = 0;
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1296) = 0u;
  *(a1 + 1288) = 0;
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1304) = 0;
  *(a2 + 1288) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1312) = *(a2 + 1312);
  *(a1 + 1328) = *(a2 + 1328);
  *(a2 + 1328) = 0;
  *(a2 + 1312) = 0u;
  sub_55A4D0(a1 + 1336, a2 + 1336);
  sub_55A4D0(a1 + 1832, a2 + 1832);
  *(a1 + 2344) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2328) = *(a2 + 2328);
  *(a1 + 2336) = *(a2 + 2336);
  *(a2 + 2344) = 0;
  *(a2 + 2328) = 0u;
  *(a1 + 2368) = 0;
  *(a1 + 2352) = 0u;
  *(a1 + 2352) = *(a2 + 2352);
  *(a1 + 2368) = *(a2 + 2368);
  *(a2 + 2368) = 0;
  *(a2 + 2352) = 0u;
  sub_61009C(a1 + 2376, a2 + 2376);
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0;
  *(a1 + 7176) = *(a2 + 7176);
  *(a1 + 7184) = *(a2 + 7184);
  *(a2 + 7176) = 0u;
  *(a2 + 7192) = 0;
  v30 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v30;
  v31 = *(a2 + 7216);
  *(a1 + 7232) = *(a2 + 7232);
  *(a1 + 7216) = v31;
  *(a2 + 7232) = 0;
  *(a2 + 7224) = 0;
  v32 = *(a2 + 7240);
  *(a2 + 7216) = 0;
  v33 = *(a2 + 7256);
  *(a1 + 7240) = v32;
  *(a1 + 7256) = v33;
  *(a2 + 7256) = 0;
  *(a2 + 7248) = 0;
  *(a2 + 7240) = 0;
  *(a1 + 7264) = 0;
  *(a1 + 7296) = -1;
  v34 = *(a2 + 7296);
  if (v34 != -1)
  {
    v44 = a1 + 7264;
    (off_266C7C8[v34])(&v44, a2 + 7264);
    *(a1 + 7296) = v34;
  }

  *(a1 + 7304) = *(a2 + 7304);
  v35 = *(a2 + 7312);
  *(a1 + 7328) = *(a2 + 7328);
  *(a1 + 7312) = v35;
  *(a2 + 7320) = 0u;
  *(a2 + 7312) = 0;
  *(a1 + 7336) = *(a2 + 7336);
  v36 = *(a2 + 7344);
  *(a1 + 7360) = *(a2 + 7360);
  *(a1 + 7344) = v36;
  *(a2 + 7352) = 0u;
  *(a2 + 7344) = 0;
  *(a1 + 7368) = *(a2 + 7368);
  *(a1 + 7384) = 0u;
  *(a1 + 7376) = 0;
  *(a1 + 7376) = *(a2 + 7376);
  *(a1 + 7392) = *(a2 + 7392);
  *(a2 + 7392) = 0;
  *(a2 + 7376) = 0u;
  *(a1 + 7400) = 0u;
  *(a1 + 7416) = 0;
  *(a1 + 7400) = *(a2 + 7400);
  *(a1 + 7408) = *(a2 + 7408);
  *(a2 + 7400) = 0u;
  *(a2 + 7416) = 0;
  v37 = *(a2 + 7424);
  *(a1 + 7440) = *(a2 + 7440);
  *(a1 + 7424) = v37;
  *(a2 + 7424) = 0;
  *(a2 + 7432) = 0u;
  v38 = *(a2 + 7464);
  *(a1 + 7448) = *(a2 + 7448);
  *(a1 + 7464) = v38;
  *(a2 + 7456) = 0u;
  *(a2 + 7448) = 0;
  v39 = *(a2 + 7472);
  *(a1 + 7488) = *(a2 + 7488);
  *(a1 + 7472) = v39;
  *(a2 + 7488) = 0;
  *(a2 + 7472) = 0u;
  *(a1 + 7496) = 0u;
  *(a1 + 7512) = 0;
  *(a1 + 7496) = *(a2 + 7496);
  *(a1 + 7504) = *(a2 + 7504);
  *(a2 + 7496) = 0u;
  *(a2 + 7512) = 0;
  *(a1 + 7536) = 0;
  *(a1 + 7520) = 0u;
  *(a1 + 7520) = *(a2 + 7520);
  *(a1 + 7536) = *(a2 + 7536);
  *(a2 + 7536) = 0;
  *(a2 + 7520) = 0u;
  *(a1 + 7544) = 0u;
  *(a1 + 7560) = 0;
  *(a1 + 7544) = *(a2 + 7544);
  *(a1 + 7552) = *(a2 + 7552);
  *(a2 + 7544) = 0u;
  *(a2 + 7560) = 0;
  *(a1 + 7584) = 0;
  *(a1 + 7568) = 0u;
  *(a1 + 7568) = *(a2 + 7568);
  *(a1 + 7584) = *(a2 + 7584);
  *(a2 + 7584) = 0;
  *(a2 + 7568) = 0u;
  *(a1 + 7592) = 0u;
  *(a1 + 7608) = 0;
  *(a1 + 7592) = *(a2 + 7592);
  *(a1 + 7600) = *(a2 + 7600);
  *(a2 + 7592) = 0u;
  *(a2 + 7608) = 0;
  *(a1 + 7616) = *(a2 + 7616);
  *(a1 + 7632) = 0u;
  *(a1 + 7624) = 0;
  *(a1 + 7624) = *(a2 + 7624);
  *(a1 + 7632) = *(a2 + 7632);
  *(a2 + 7624) = 0u;
  *(a2 + 7640) = 0;
  *(a1 + 7664) = 0;
  *(a1 + 7648) = 0u;
  *(a1 + 7648) = *(a2 + 7648);
  *(a1 + 7664) = *(a2 + 7664);
  *(a2 + 7664) = 0;
  *(a2 + 7648) = 0u;
  *(a1 + 7672) = 0u;
  *(a1 + 7688) = 0;
  *(a1 + 7672) = *(a2 + 7672);
  *(a1 + 7680) = *(a2 + 7680);
  *(a2 + 7672) = 0u;
  *(a2 + 7688) = 0;
  *(a1 + 7712) = 0;
  *(a1 + 7696) = 0u;
  *(a1 + 7696) = *(a2 + 7696);
  *(a1 + 7712) = *(a2 + 7712);
  *(a2 + 7712) = 0;
  *(a2 + 7696) = 0u;
  v40 = *(a2 + 7720);
  *(a2 + 7720) = 0;
  *(a1 + 7720) = v40;
  LODWORD(v40) = *(a2 + 7728);
  *(a1 + 7732) = *(a2 + 7732);
  *(a1 + 7728) = v40;
  v41 = *(a2 + 7752);
  *(a1 + 7736) = *(a2 + 7736);
  *(a1 + 7752) = v41;
  *(a2 + 7736) = 0;
  *(a2 + 7744) = 0u;
  v42 = *(a2 + 7760);
  *(a1 + 7776) = *(a2 + 7776);
  *(a1 + 7760) = v42;
  *(a2 + 7768) = 0u;
  *(a2 + 7760) = 0;
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  *(a1 + 7784) = *(a2 + 7784);
  *(a1 + 7792) = *(a2 + 7792);
  *(a2 + 7784) = 0u;
  *(a2 + 7800) = 0;
  return a1;
}