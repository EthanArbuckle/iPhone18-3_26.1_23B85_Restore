void sub_7999C8(_Unwind_Exception *a1)
{
  sub_5936E4(v1);
  sub_53A58C((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_79A824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60)
{
  sub_1F1A8(&a10);
  sub_53A58C(&a25);
  sub_662AC8(&__p);
  sub_53A58C(&a49);
  sub_662AC8(&a60);
  sub_53A58C(&STACK[0x200]);
  sub_662AC8(&STACK[0x258]);
  sub_53A58C(&STACK[0x2C0]);
  sub_662AC8(&STACK[0x318]);
  sub_53A58C(&STACK[0x380]);
  sub_662AC8(&STACK[0x3D8]);
  sub_53A58C((v61 - 208));
  sub_5936E4(v60);
  sub_53A58C((v61 - 136));
  _Unwind_Resume(a1);
}

void sub_79A9D0(_Unwind_Exception *a1)
{
  sub_5936E4(v1);
  sub_53A58C((v2 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_79A9F0@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[291].n128_u32[0] == 1;
  v5 = a1[174].n128_u8[10];
  v6 = a1[174].n128_u8[9];
  v7 = a1[174].n128_u8[12];
  v8 = sub_67AE94(&a1[192].n128_i64[1]);
  v9 = a1[192].n128_u8[1];
  v10 = a1[192].n128_u8[2] << 40;
  v11 = 0x1000000;
  if (!v8 || !v4)
  {
    v11 = 0;
  }

  v22 = v11 | (v5 << 16) | (v6 << 8) | v7;
  v23 = (v10 | (v9 << 32)) >> 32;
  sub_7AB77C(a1, &a1[170], &v22, &v24);
  sub_6825E0(a2, &v24, 0, 0, 1);
  v12 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v27;
  if (v27)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v24;
  if (v24)
  {
    v17 = v25;
    v18 = v24;
    if (v25 != v24)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v24;
    }

    v25 = v16;
    operator delete(v18);
  }

  sub_4C516C(a2, a1[163].n128_i32[0]);
  sub_681A38(a2, a1 + 165);
  if (a1[174].n128_u8[10])
  {
    v20 = 59;
  }

  else
  {
    v20 = 60;
  }

  sub_68179C(a2, v20);
  sub_6817B4(a2, a1[162].n128_i64[1], 0, a1[162].n128_i64[1]);
  return sub_682A50(a2, a1[192].n128_i8[1]);
}

void sub_79ABC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_79ABEC(uint64_t a1)
{
  v2 = *(a1 + 4640);
  v3 = *(a1 + 4656) == 1;
  v4 = *(a1 + 2794);
  v5 = *(a1 + 2793);
  v6 = *(a1 + 2796);
  v7 = sub_67AE94(a1 + 3080);
  v8 = *(a1 + 3073);
  v9 = *(a1 + 3074) << 40;
  v10 = 0x1000000;
  if (!v7 || !v3)
  {
    v10 = 0;
  }

  v11 = v10 | (v4 << 16) | (v5 << 8) | v6;
  v12 = (v9 | (v8 << 32)) >> 32;
  sub_7AD754(a1, v2, &v11, &v13);
}

void sub_79AE50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_79AE64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_79AE80@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  sub_7AEE2C(a1, a1[174].n128_u8[12], &a1[170], &v14);
  sub_6825E0(a2, &v14, 0, 0, 1);
  v4 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v17;
  if (v17)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v14;
  if (v14)
  {
    v9 = v15;
    v10 = v14;
    if (v15 != v14)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v14;
    }

    v15 = v8;
    operator delete(v10);
  }

  sub_4C516C(a2, a1[163].n128_i32[0]);
  sub_681A38(a2, a1 + 165);
  if (a1[174].n128_u8[10])
  {
    v12 = 61;
  }

  else
  {
    v12 = 62;
  }

  sub_68179C(a2, v12);
  return sub_6817B4(a2, a1[162].n128_i64[1], 0, a1[162].n128_i64[1]);
}

void sub_79AFE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_79B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = sub_7A9FE0(a1, a3, a6 + 1);
  memcpy(v11 + 4, a4, 0x92CuLL);
  if (*(a4 + 2375) < 0)
  {
    sub_325C((a1 + 2384), *(a4 + 2352), *(a4 + 2360));
  }

  else
  {
    v12 = *(a4 + 2352);
    *(a1 + 2400) = *(a4 + 2368);
    *(a1 + 2384) = v12;
  }

  v13 = *(a4 + 2376);
  v14 = *(a4 + 2392);
  v15 = *(a4 + 2424);
  *(a1 + 2440) = *(a4 + 2408);
  *(a1 + 2456) = v15;
  *(a1 + 2408) = v13;
  *(a1 + 2424) = v14;
  v16 = *(a4 + 2440);
  v17 = *(a4 + 2456);
  v18 = *(a4 + 2488);
  *(a1 + 2504) = *(a4 + 2472);
  *(a1 + 2520) = v18;
  *(a1 + 2472) = v16;
  *(a1 + 2488) = v17;
  v19 = *(a4 + 2504);
  v20 = *(a4 + 2520);
  v21 = *(a4 + 2552);
  *(a1 + 2568) = *(a4 + 2536);
  *(a1 + 2584) = v21;
  *(a1 + 2536) = v19;
  *(a1 + 2552) = v20;
  *(a1 + 2600) = sub_4D1DB8(a5);
  *(a1 + 2608) = sub_4D26B4(a5, 0);
  *(a1 + 2616) = 0x7FFFFFFF;
  *(a1 + 2620) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2632) = 0;
  *(a1 + 2640) = 0x7FFFFFFF;
  *(a1 + 2644) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2656) = 0;
  if (*(a1 + 2409) == 1)
  {
    v22 = 0;
    if (*(a5 + 10248) != 0x7FFFFFFFFFFFFFFFLL && *(a5 + 10256) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = *(a5 + 10288) != *(a5 + 10296);
    }
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 2664) = v22;
  v23 = sub_69B1A4(a5);
  if (*(v23 + 23) < 0)
  {
    sub_325C((a1 + 2672), *v23, *(v23 + 8));
  }

  else
  {
    v24 = *v23;
    *(a1 + 2688) = *(v23 + 16);
    *(a1 + 2672) = v24;
  }

  v25 = sub_69B1B0(a5);
  if (*(v25 + 23) < 0)
  {
    sub_325C((a1 + 2696), *v25, *(v25 + 8));
  }

  else
  {
    v26 = *v25;
    *(a1 + 2712) = *(v25 + 16);
    *(a1 + 2696) = v26;
  }

  v27 = sub_69B1BC(a5);
  if (*(v27 + 23) < 0)
  {
    sub_325C((a1 + 2720), *v27, *(v27 + 8));
  }

  else
  {
    v28 = *v27;
    *(a1 + 2736) = *(v27 + 16);
    *(a1 + 2720) = v28;
  }

  v29 = sub_69B1C8(a5);
  if (*(v29 + 23) < 0)
  {
    sub_325C((a1 + 2744), *v29, *(v29 + 8));
  }

  else
  {
    v30 = *v29;
    *(a1 + 2760) = *(v29 + 16);
    *(a1 + 2744) = v30;
  }

  v31 = sub_69B1D4(a5);
  if (*(v31 + 23) < 0)
  {
    sub_325C((a1 + 2768), *v31, *(v31 + 8));
  }

  else
  {
    v32 = *v31;
    *(a1 + 2784) = *(v31 + 16);
    *(a1 + 2768) = v32;
  }

  *(a1 + 2792) = 0;
  *(a1 + 2793) = sub_69B004(a5);
  *(a1 + 2794) = sub_69B010(a5);
  *(a1 + 2795) = sub_69B01C(a5);
  *(a1 + 2796) = sub_69B0E0(a5);
  v33 = sub_4D2130(a5);
  sub_3EDBB0(a1 + 2800, v33);
  v34 = sub_73F54(a5);
  sub_3EDBB0(a1 + 2936, v34);
  v35 = *(a1 + 2936) != 0x7FFFFFFF && sub_4566B4((a1 + 2944));
  *(a1 + 3072) = v35;
  if (*(a5 + 12536) != 1 || (v36 = *(a3 + 1464), v37 = *(a3 + 1472), v36 == v37))
  {
    v39 = 0;
  }

  else
  {
    v38 = v36 + 4;
    do
    {
      v39 = *(v38 - 4) == 1;
      v40 = *(v38 - 4) == 1 || v38 == v37;
      v38 += 4;
    }

    while (!v40);
  }

  *(a1 + 3073) = v39;
  strcpy(v42, "GuidanceFeatureRegions");
  v42[23] = 22;
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, v42, __p);
  sub_795D4C();
}

void sub_79B4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_528AB4(v22 + 3080);
  sub_49A8F8((v22 + 2936));
  sub_49A8F8((v22 + 2800));
  if (*(v22 + 2791) < 0)
  {
    operator delete(*v24);
    if ((*(v22 + 2767) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v22 + 2767) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v22 + 2743) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  operator delete(*v23);
  if (*(v22 + 2743) < 0)
  {
LABEL_4:
    operator delete(*a10);
    if ((*(v22 + 2719) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((*(v22 + 2719) & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v22 + 2695) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*a11);
  if (*(v22 + 2695) < 0)
  {
LABEL_6:
    operator delete(*a12);
    if ((*(v22 + 2407) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((*(v22 + 2407) & 0x80000000) == 0)
  {
LABEL_7:
    sub_795FDC(v22);
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(*a13);
  sub_795FDC(v22);
  _Unwind_Resume(a1);
}

void *sub_79B634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 2664) == 1)
  {
    if (*(a1 + 3072) == 1)
    {
      sub_79B950(a1, v14);
    }

    else
    {
      sub_79BB34(a1, v14);
    }

    v4 = a2[1];
    if (v4 >= a2[2])
    {
      v5 = sub_7A585C(a2, v14);
    }

    else
    {
      sub_5F4D20(a2[1], v14);
      v5 = v4 + 1120;
    }

    a2[1] = v5;
    sub_5938B0(v14);
  }

  if (*(a1 + 3072) == 1)
  {
    sub_79BD14(a1, v14);
  }

  else
  {
    sub_79BEF8(a1, v14);
  }

  v6 = a2[1];
  if (v6 >= a2[2])
  {
    v7 = sub_7A585C(a2, v14);
  }

  else
  {
    sub_5F4D20(a2[1], v14);
    v7 = v6 + 1120;
  }

  a2[1] = v7;
  if (*(a1 + 3072) == 1)
  {
    v8 = *(a1 + 2976);
    if (v8 != *(a1 + 2984))
    {
      if (*v8)
      {
        sub_79C0D8(a1, 0, v13);
      }
    }

    sub_79C320(a1, v13);
  }

  if (*(a1 + 2536) == 1)
  {
    sub_79C5E4(a1, v13);
  }

  else
  {
    sub_79C70C(a1, v13);
  }

  v9 = a2[1];
  if (v9 >= a2[2])
  {
    v11 = sub_7A5C30(a2, v13);
  }

  else
  {
    sub_7A5A3C(v9, v13);
    v11 = v10 + 1120;
  }

  a2[1] = v11;
  sub_5938B0(v13);
  return sub_5938B0(v14);
}

void sub_79B8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5938B0(&a9);
  sub_5938B0(&STACK[0x460]);
  sub_5EC628(v9);
  _Unwind_Resume(a1);
}

void sub_79B920(_Unwind_Exception *a1)
{
  sub_5938B0(&STACK[0x460]);
  sub_5EC628(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_79B950@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA298(&v19, a1, a1 + 2696);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA018(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 20);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_79BADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_79BB0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_79BB34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA028(&v19);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA018(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 19);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_79BCBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_79BCEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_79BD14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA29C(a1 + 2696, &v19);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA4A0(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 21);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_79BEA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_79BED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_79BEF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA02C(a1, &v19);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA4A0(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 24);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_79C080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_79C0B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_79C0D8(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 2976);
  sub_7AA8C8(*v6, *(v6 + 1) != 0x7FFFFFFF, &v16);
  sub_809E48(a3, &v16, 0);
  v7 = *v21;
  if (*v21)
  {
    do
    {
      v8 = *v7;
      sub_55F7FC((v7 + 2));
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = __p;
  __p = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = v16;
  if (v16)
  {
    v11 = v17;
    v12 = v16;
    if (v17 != v16)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v16;
    }

    v17 = v10;
    operator delete(v12);
  }

  sub_6819B8(a3, (a1 + 2936));
  if (a2)
  {
    v14 = 23;
  }

  else
  {
    v14 = 22;
  }

  sub_68179C(a3, v14);
  sub_6817B4(a3, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a3, *(a1 + 451));
  v15 = sub_67A848((a1 + 32), *v6);
  *(&__p + 3) = 0;
  LODWORD(__p) = 0;
  v17 = 0;
  v18 = 0;
  v16 = (v15 | 0xFFFFFF00000000);
  HIBYTE(__p) = 0;
  v20 = 1;
  *v21 = -1;
  *&v21[3] = -1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26 = 0;
  memset(&v21[7], 0, 24);
  v22 = 0;
  sub_682248();
}

void sub_79C2C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_79C2F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_79C320(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA6E0(&v19);
  sub_809E48(a2, &v19, 0);
  v4 = *v24;
  if (*v24)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA4B0(*(a1 + 2503), &v19);
  sub_80A374(a2, &v19);
  v11 = *v24;
  if (*v24)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 25);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a2, *(a1 + 450));
  sub_6819B8(a2, (a1 + 2936));
  v18 = *(a1 + 2012);
  LODWORD(__p) = 0;
  *(&__p + 3) = 0;
  v20 = 0;
  v21 = 0;
  v19 = (v18 | 0xFFFFFF00000000);
  HIBYTE(__p) = 0;
  v23 = 1;
  *v24 = -1;
  *&v24[3] = -1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  memset(&v24[7], 0, 24);
  v25 = 0;
  sub_682248();
}

void sub_79C570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_79C58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_79C5BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_79C5E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AAB3C(&v12);
  sub_809E48(a2, &v12, 0);
  v4 = v15;
  if (v15)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v12;
  if (v12)
  {
    v8 = v13;
    v9 = v12;
    if (v13 != v12)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v12;
    }

    v13 = v7;
    operator delete(v9);
  }

  sub_68179C(a2, 16);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a2, *(a1 + 450));
  return sub_809E38(a2, 97);
}

void sub_79C6E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_79C70C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AAB2C(&v12);
  sub_809E48(a2, &v12, 0);
  v4 = v15;
  if (v15)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v12;
  if (v12)
  {
    v8 = v13;
    v9 = v12;
    if (v13 != v12)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v12;
    }

    v13 = v7;
    operator delete(v9);
  }

  sub_68179C(a2, 16);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a2, *(a1 + 450));
  return sub_809E38(a2, 17);
}

void sub_79C80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void *sub_79C834@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(result + 3072) == 1)
  {
    sub_79C8C8(result, v3);
    a2[1] = sub_7A5D94(a2, v3);
    return sub_5936E4(v3);
  }

  return result;
}

void sub_79C898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5936E4(va);
  sub_5ED1D0(v2);
  _Unwind_Resume(a1);
}

double sub_79C8C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_608080(a2);
  sub_E6F038(a1 + 4320, &v71);
  v4 = v71;
  if (v71 != v72)
  {
    while (*v4 != 10)
    {
      v4 += 2;
      if (v4 == v72)
      {
        goto LABEL_4;
      }
    }

LABEL_20:
    sub_7AA6E0(&v67);
    v61 = 0;
    v62 = 0;
    sub_680484(&v71, &v67, 1, &v61);
    sub_681A64(a2, &v71);
    v15 = v75;
    if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = v74;
    if (v74)
    {
      do
      {
        v17 = *v16;
        sub_55F7FC((v16 + 2));
        operator delete(v16);
        v16 = v17;
      }

      while (v17);
    }

    v18 = __p;
    __p = 0;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = v71;
    if (v71)
    {
      v20 = v72;
      v21 = v71;
      if (v72 != v71)
      {
        do
        {
          v22 = *(v20 - 1);
          v20 -= 3;
          if (v22 < 0)
          {
            operator delete(*v20);
          }
        }

        while (v20 != v19);
        v21 = v71;
      }

      v72 = v19;
      operator delete(v21);
    }

    v23 = v62;
    if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v24 = v70;
    if (v70)
    {
      do
      {
        v25 = *v24;
        sub_55F7FC((v24 + 2));
        operator delete(v24);
        v24 = v25;
      }

      while (v25);
    }

    v26 = v69;
    v69 = 0;
    if (v26)
    {
      operator delete(v26);
    }

    v27 = v67;
    if (v67)
    {
      v28 = v68;
      v29 = v67;
      if (v68 == v67)
      {
        goto LABEL_94;
      }

      do
      {
        v30 = *(v28 - 1);
        v28 -= 3;
        if (v30 < 0)
        {
          operator delete(*v28);
        }
      }

      while (v28 != v27);
LABEL_93:
      v29 = v67;
LABEL_94:
      v68 = v27;
      operator delete(v29);
      goto LABEL_95;
    }

    goto LABEL_95;
  }

LABEL_4:
  v5 = *(a1 + 2976);
  v6 = *(a1 + 2984);
  if (v5 != v6)
  {
    while (*v5 == 10)
    {
      v5 += 16;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_20;
  }

LABEL_7:
  sub_7AA82C(&v67);
  v65 = 0;
  v66 = 0;
  sub_680484(&v71, &v67, 1, &v65);
  sub_681A64(a2, &v71);
  v7 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v74;
  if (v74)
  {
    do
    {
      v9 = *v8;
      sub_55F7FC((v8 + 2));
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = __p;
  __p = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = v71;
  if (v71)
  {
    v12 = v72;
    v13 = v71;
    if (v72 != v71)
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
      v13 = v71;
    }

    v72 = v11;
    operator delete(v13);
  }

  v31 = v66;
  if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = v70;
  if (v70)
  {
    do
    {
      v33 = *v32;
      sub_55F7FC((v32 + 2));
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v34 = v69;
  v69 = 0;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = v67;
  if (v67)
  {
    v36 = v68;
    v37 = v67;
    if (v68 != v67)
    {
      do
      {
        v38 = *(v36 - 1);
        v36 -= 3;
        if (v38 < 0)
        {
          operator delete(*v36);
        }
      }

      while (v36 != v35);
      v37 = v67;
    }

    v68 = v35;
    operator delete(v37);
  }

  LODWORD(v71) = 19;
  sub_681B08(a2, &v71);
  sub_7AA6E0(&v67);
  v63 = 0;
  v64 = 0;
  sub_680484(&v71, &v67, 1, &v63);
  sub_681A64(a2, &v71);
  v39 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = v74;
  if (v74)
  {
    do
    {
      v41 = *v40;
      sub_55F7FC((v40 + 2));
      operator delete(v40);
      v40 = v41;
    }

    while (v41);
  }

  v42 = __p;
  __p = 0;
  if (v42)
  {
    operator delete(v42);
  }

  v43 = v71;
  if (v71)
  {
    v44 = v72;
    v45 = v71;
    if (v72 != v71)
    {
      do
      {
        v46 = *(v44 - 1);
        v44 -= 3;
        if (v46 < 0)
        {
          operator delete(*v44);
        }
      }

      while (v44 != v43);
      v45 = v71;
    }

    v72 = v43;
    operator delete(v45);
  }

  v47 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  v48 = v70;
  if (v70)
  {
    do
    {
      v49 = *v48;
      sub_55F7FC((v48 + 2));
      operator delete(v48);
      v48 = v49;
    }

    while (v49);
  }

  v50 = v69;
  v69 = 0;
  if (v50)
  {
    operator delete(v50);
  }

  v27 = v67;
  if (v67)
  {
    v51 = v68;
    v29 = v67;
    if (v68 == v67)
    {
      goto LABEL_94;
    }

    do
    {
      v52 = *(v51 - 1);
      v51 -= 3;
      if (v52 < 0)
      {
        operator delete(*v51);
      }
    }

    while (v51 != v27);
    goto LABEL_93;
  }

LABEL_95:
  sub_7AA4B0(*(a1 + 2503), &v71);
  sub_6821CC(a2, &v71);
  v53 = v74;
  if (v74)
  {
    do
    {
      v54 = *v53;
      sub_55F7FC((v53 + 2));
      operator delete(v53);
      v53 = v54;
    }

    while (v54);
  }

  v55 = __p;
  __p = 0;
  if (v55)
  {
    operator delete(v55);
  }

  v56 = v71;
  if (v71)
  {
    v57 = v72;
    v58 = v71;
    if (v72 != v71)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v71;
    }

    v72 = v56;
    operator delete(v58);
  }

  sub_68179C(a2, 89);
  *&result = sub_6819B8(a2, (a1 + 2936)).n128_u64[0];
  return result;
}

void sub_79CF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void **);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_662AC8(va2);
  sub_1F1A8(va);
  sub_53A58C(va1);
  sub_5936E4(v3);
  _Unwind_Resume(a1);
}

void sub_79D008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_53A58C(va);
  sub_5936E4(v16);
  _Unwind_Resume(a1);
}

void sub_79D060(__n128 *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[174].n128_u8[8] == 1)
  {
    if (sub_67AE58(&a1[192].n128_i64[1]) && a1[281].n128_u8[4] == 1)
    {
      sub_7A0014(a1);
    }

    if (a1[174].n128_u8[9] == 1)
    {
      sub_7A02A8(a1, &v66);
    }

    else
    {
      sub_79FE18(a1, &v66);
    }
  }

  else
  {
    sub_79D66C(a1, &v66);
  }

  v4 = a2[1];
  if (v4 >= a2[2])
  {
    v5 = sub_7A5EF8(a2, &v66);
  }

  else
  {
    sub_7A6070(a2[1], &v66);
    v5 = v4 + 448;
  }

  a2[1] = v5;
  if (a1[166].n128_u8[8] == 1)
  {
    if (a1[192].n128_u8[0] == 1)
    {
      sub_79D940(a1, &v53);
    }

    else
    {
      sub_79DAA4(a1, &v53);
    }

    v6 = a2[1];
    if (v6 >= a2[2])
    {
      v7 = sub_7A5EF8(a2, &v53);
    }

    else
    {
      sub_7A6070(a2[1], &v53);
      v7 = v6 + 448;
    }

    a2[1] = v7;
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    v8 = v60;
    if (v60)
    {
      v9 = v61;
      v10 = v60;
      if (v61 != v60)
      {
        do
        {
          v9 = sub_662AC8(v9 - 13);
        }

        while (v9 != v8);
        v10 = v60;
      }

      v61 = v8;
      operator delete(v10);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    v11 = v54;
    if (v54)
    {
      v12 = v55;
      v13 = v54;
      if (v55 != v54)
      {
        do
        {
          v12 = sub_53A868(v12 - 160);
        }

        while (v12 != v11);
        v13 = v54;
      }

      v55 = v11;
      operator delete(v13);
    }
  }

  if (a1[192].n128_u8[0] == 1)
  {
    sub_79DC1C(a1, &v53);
  }

  else
  {
    sub_79DD7C(a1, &v53);
  }

  v14 = a2[1];
  if (v14 >= a2[2])
  {
    v15 = sub_7A5EF8(a2, &v53);
  }

  else
  {
    sub_7A6070(a2[1], &v53);
    v15 = v14 + 448;
  }

  a2[1] = v15;
  if (a1[192].n128_u8[0] == 1)
  {
    sub_79DEDC(a1, &v40);
    sub_798900(a2, &v40);
    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    v16 = v47;
    if (v47)
    {
      v17 = v48;
      v18 = v47;
      if (v48 != v47)
      {
        do
        {
          v17 = sub_662AC8(v17 - 13);
        }

        while (v17 != v16);
        v18 = v47;
      }

      v48 = v16;
      operator delete(v18);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    v19 = v41;
    if (v41)
    {
      v20 = v42;
      v21 = v41;
      if (v42 != v41)
      {
        do
        {
          v20 = sub_53A868(v20 - 160);
        }

        while (v20 != v19);
        v21 = v41;
      }

      v42 = v19;
      operator delete(v21);
    }
  }

  if (a1[158].n128_u8[8] == 1)
  {
    sub_79E04C(a1, &v40);
  }

  else
  {
    sub_79E1AC(a1, &v40);
  }

  sub_798900(a2, &v40);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  v22 = v47;
  if (v47)
  {
    v23 = v48;
    v24 = v47;
    if (v48 != v47)
    {
      do
      {
        v23 = sub_662AC8(v23 - 13);
      }

      while (v23 != v22);
      v24 = v47;
    }

    v48 = v22;
    operator delete(v24);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v25 = v41;
  if (v41)
  {
    v26 = v42;
    v27 = v41;
    if (v42 != v41)
    {
      do
      {
        v26 = sub_53A868(v26 - 160);
      }

      while (v26 != v25);
      v27 = v41;
    }

    v42 = v25;
    operator delete(v27);
  }

  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  v28 = v60;
  if (v60)
  {
    v29 = v61;
    v30 = v60;
    if (v61 != v60)
    {
      do
      {
        v29 = sub_662AC8(v29 - 13);
      }

      while (v29 != v28);
      v30 = v60;
    }

    v61 = v28;
    operator delete(v30);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v31 = v54;
  if (v54)
  {
    v32 = v55;
    v33 = v54;
    if (v55 != v54)
    {
      do
      {
        v32 = sub_53A868(v32 - 160);
      }

      while (v32 != v31);
      v33 = v54;
    }

    v55 = v31;
    operator delete(v33);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v34 = v72;
  if (v72)
  {
    v35 = v73;
    v36 = v72;
    if (v73 != v72)
    {
      do
      {
        v35 = sub_662AC8(v35 - 13);
      }

      while (v35 != v34);
      v36 = v72;
    }

    v73 = v34;
    operator delete(v36);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  v37 = v66.n128_u64[1];
  if (v66.n128_u64[1])
  {
    v38 = v67;
    v39 = v66.n128_u64[1];
    if (v67 != v66.n128_u64[1])
    {
      do
      {
        v38 = sub_53A868(v38 - 160);
      }

      while (v38 != v37);
      v39 = v66.n128_u64[1];
    }

    v67 = v37;
    operator delete(v39);
  }
}

void sub_79D5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_682DB0(&a65);
  sub_682DB0(&STACK[0x380]);
  sub_5EC5AC(v65);
  _Unwind_Resume(a1);
}

void sub_79D66C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 + 4096;
  if (sub_67AE28((a1 + 3080)))
  {
    v5 = *(v4 + 544);
    v6 = *(a1 + 4656) == 1;
    v7 = *(a1 + 2794);
    v8 = *(a1 + 2793);
    v9 = *(a1 + 2796);
    v10 = sub_67AE94(a1 + 3080);
    v11 = *(a1 + 3073);
    v12 = *(a1 + 3074) << 40;
    v13 = 0x1000000;
    if (!v10 || !v6)
    {
      v13 = 0;
    }

    v36 = v13 | (v7 << 16) | (v8 << 8) | v9;
    v37 = (v12 | (v11 << 32)) >> 32;
    sub_7AC3A8(a1, v5, &v36, &v38);
  }

  else
  {
    v14 = *(a1 + 4656) == 1;
    v15 = *(a1 + 2794);
    v16 = *(a1 + 2793);
    v17 = *(a1 + 2796);
    v18 = sub_67AE94(a1 + 3080);
    v19 = *(a1 + 3073);
    v20 = *(a1 + 3074) << 40;
    v21 = 0x1000000;
    if (!v18 || !v14)
    {
      v21 = 0;
    }

    v36 = v21 | (v15 << 16) | (v16 << 8) | v17;
    v37 = (v20 | (v19 << 32)) >> 32;
    sub_7AB214(a1, &v36, &v38);
  }

  sub_6825E0(a2, &v38, 0, 0, 1);
  if (sub_67AE58(a1 + 3080) && *(v4 + 404) == 1)
  {
    v22 = *(a1 + 4656);
    v23 = sub_67AE94(a1 + 3080);
    if (v22 == 1 && v23)
    {
      v25 = 63;
    }

    else
    {
      if (*(a1 + 2794))
      {
        v34 = 56;
      }

      else
      {
        v34 = 55;
      }

      if (*(a1 + 2794))
      {
        v35 = 57;
      }

      else
      {
        v35 = 58;
      }

      if (*(a1 + 2793) == 1)
      {
        v25 = v35;
      }

      else
      {
        v25 = v34;
      }
    }
  }

  else
  {
    v25 = 55;
  }

  sub_68179C(a2, v25);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_682A50(a2, *(a1 + 3073));
  sub_681D10(a2, *(a1 + 4656));
  v26 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v41;
  if (v41)
  {
    do
    {
      v28 = *v27;
      sub_55F7FC((v27 + 2));
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = __p;
  __p = 0;
  if (v29)
  {
    operator delete(v29);
  }

  v30 = v38;
  if (v38)
  {
    v31 = v39;
    v32 = v38;
    if (v39 != v38)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v38;
    }

    v39 = v30;
    operator delete(v32);
  }
}

void sub_79D910(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_79D924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_79D940@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AF7E0(a1 + 2696, &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 67);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_79DA7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_79DAA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AF1A8(a1, &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  if (sub_67AE28((a1 + 3080)))
  {
    sub_681D10(a2, *(a1 + 4656));
  }

  sub_68179C(a2, 66);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_79DBF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_79DC1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFC70(&v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 68);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_79DD54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_79DD7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFAD0(a1, &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 69);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_79DEB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

double sub_79DEDC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFDA0(*(a1 + 2504), &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 70);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  *&result = sub_6819B8(a2, (a1 + 2936)).n128_u64[0];
  return result;
}

void sub_79E024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_79E04C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7B0104(&v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 71);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_79E184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_79E1AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFFD4(&v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 71);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_79E2E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_79E30C(uint64_t a1@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  if (!a2)
  {
    if (*(a1 + 2795) != 1)
    {
      goto LABEL_3;
    }

LABEL_12:

    sub_79EED4();
  }

  if (*(a1 + 2796))
  {
    goto LABEL_12;
  }

LABEL_3:
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v140 = 0u;
  v144 = 1065353216;
  v145 = 1;
  sub_608080(a3);
  if ((a2 & 1) != 0 || *(a1 + 4660) != 1)
  {
    sub_67E710("{Destination}", v127);
    v10 = v140;
    if (v140)
    {
      v11 = *(&v140 + 1);
      v12 = v140;
      if (*(&v140 + 1) != v140)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v140;
      }

      *(&v140 + 1) = v10;
      operator delete(v12);
    }

    v140 = *v127;
    *&v141 = v128;
    v127[1] = 0;
    v128 = 0;
    v127[0] = 0;
    if (v143)
    {
      v14 = *(&v142 + 1);
      if (*(&v142 + 1))
      {
        do
        {
          v15 = *v14;
          sub_55F7FC((v14 + 2));
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      *(&v142 + 1) = 0;
      if (v142)
      {
        bzero(*(&v141 + 1), 8 * v142);
      }

      v143 = 0;
    }

    v16 = __p;
    __p = 0;
    v17 = *(&v141 + 1);
    *(&v141 + 1) = v16;
    if (v17)
    {
      operator delete(v17);
    }

    v18 = v130;
    v19 = v131;
    v130 = 0;
    *(&v142 + 1) = v131;
    v143 = v132;
    v144 = v133;
    *&v142 = v18;
    if (v132)
    {
      v20 = v131[1];
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v20 >= v18)
        {
          v20 %= v18;
        }
      }

      else
      {
        v20 &= v18 - 1;
      }

      *(*(&v141 + 1) + 8 * v20) = &v142 + 8;
      v131 = 0;
      v132 = 0;
      v145 = v134;
    }

    else
    {
      v145 = v134;
      if (v131)
      {
        do
        {
          v21 = *v19;
          sub_55F7FC((v19 + 2));
          operator delete(v19);
          v19 = v21;
        }

        while (v21);
      }
    }

    v22 = __p;
    __p = 0;
    if (v22)
    {
      operator delete(v22);
    }

    v23 = v127[0];
    if (v127[0])
    {
      v24 = v127[1];
      v25 = v127[0];
      if (v127[1] != v127[0])
      {
        do
        {
          v26 = *(v24 - 1);
          v24 -= 3;
          if (v26 < 0)
          {
            operator delete(*v24);
          }
        }

        while (v24 != v23);
        v25 = v127[0];
      }

      v127[1] = v23;
      operator delete(v25);
    }

    sub_68179C(a3, 27);
    v27 = 0;
  }

  else
  {
    sub_67E494(v127, qword_27A7EE0);
    v6 = v140;
    if (v140)
    {
      v7 = *(&v140 + 1);
      v8 = v140;
      if (*(&v140 + 1) != v140)
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
        v8 = v140;
      }

      *(&v140 + 1) = v6;
      operator delete(v8);
    }

    v140 = *v127;
    *&v141 = v128;
    v127[1] = 0;
    v128 = 0;
    v127[0] = 0;
    if (v143)
    {
      v28 = *(&v142 + 1);
      if (*(&v142 + 1))
      {
        do
        {
          v29 = *v28;
          sub_55F7FC((v28 + 2));
          operator delete(v28);
          v28 = v29;
        }

        while (v29);
      }

      *(&v142 + 1) = 0;
      if (v142)
      {
        bzero(*(&v141 + 1), 8 * v142);
      }

      v143 = 0;
    }

    v30 = __p;
    __p = 0;
    v31 = *(&v141 + 1);
    *(&v141 + 1) = v30;
    if (v31)
    {
      operator delete(v31);
    }

    v32 = v130;
    v33 = v131;
    v130 = 0;
    *(&v142 + 1) = v131;
    v143 = v132;
    v144 = v133;
    *&v142 = v32;
    if (v132)
    {
      v34 = v131[1];
      if ((v32 & (v32 - 1)) != 0)
      {
        if (v34 >= v32)
        {
          v34 %= v32;
        }
      }

      else
      {
        v34 &= v32 - 1;
      }

      *(*(&v141 + 1) + 8 * v34) = &v142 + 8;
      v131 = 0;
      v132 = 0;
      v145 = v134;
    }

    else
    {
      v145 = v134;
      if (v131)
      {
        do
        {
          v35 = *v33;
          sub_55F7FC((v33 + 2));
          operator delete(v33);
          v33 = v35;
        }

        while (v35);
      }
    }

    v36 = __p;
    __p = 0;
    if (v36)
    {
      operator delete(v36);
    }

    v37 = v127[0];
    if (v127[0])
    {
      v38 = v127[1];
      v39 = v127[0];
      if (v127[1] != v127[0])
      {
        do
        {
          v40 = *(v38 - 1);
          v38 -= 3;
          if (v40 < 0)
          {
            operator delete(*v38);
          }
        }

        while (v38 != v37);
        v39 = v127[0];
      }

      v127[1] = v37;
      operator delete(v39);
    }

    sub_68179C(a3, 29);
    v27 = 1;
  }

  sub_6821CC(a3, &v140);
  sub_681D10(a3, *(a1 + 4656) - (a2 ^ 1));
  v41 = 2793;
  if (a2)
  {
    v41 = 2794;
    v42 = 3;
  }

  else
  {
    v42 = 1;
  }

  if (*(a1 + v41))
  {
    v43 = 2;
  }

  else
  {
    v43 = v42;
  }

  sub_681D18(a3, v43);
  sub_67E710("{Destination}", &v136);
  v125 = 0;
  v126 = 0;
  sub_680484(v127, &v136, 1, &v125);
  v44 = v126;
  if (v126 && !atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  sub_681A64(a3, v127);
  if (v27 | a2) == 1 && (*(a1 + 2792))
  {
    LODWORD(v116) = 19;
    sub_681B08(a3, &v116);
    sub_67E710("{Icon1}", &v121);
    v114 = 0;
    v115 = 0;
    sub_680484(&v116, &v121, 1, &v114);
    v45 = v115;
    if (v115 && !atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    sub_681A64(a3, &v116);
    LODWORD(v105) = 18;
    sub_681B08(a3, &v105);
    if (v27)
    {
      v46 = "Charge_At_Start";
    }

    else
    {
      v46 = "Arrival_Charge_List";
    }

    sub_67E494(&v110, v46);
    v103 = 0;
    v104 = 0;
    sub_680484(&v105, &v110, 1, &v103);
    v47 = v104;
    if (v104 && !atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    sub_681A64(a3, &v105);
    v48 = 2800;
    if (a2)
    {
      v48 = 2936;
    }

    sub_6819B8(a3, (a1 + v48));
    v49 = 2640;
    if (v27)
    {
      v49 = 2616;
    }

    v50 = sub_681A38(a3, (a1 + v49));
    v51 = v109;
    if (v109 && !atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51, v50);
      std::__shared_weak_count::__release_weak(v51);
    }

    v52 = v108;
    if (v108)
    {
      do
      {
        v53 = *v52;
        sub_55F7FC((v52 + 2));
        operator delete(v52);
        v52 = v53;
      }

      while (v53);
    }

    v54 = v107;
    v107 = 0;
    if (v54)
    {
      operator delete(v54);
    }

    v55 = v105;
    if (v105)
    {
      v56 = v106;
      v57 = v105;
      if (v106 != v105)
      {
        do
        {
          v58 = *(v56 - 1);
          v56 -= 3;
          if (v58 < 0)
          {
            operator delete(*v56);
          }
        }

        while (v56 != v55);
        v57 = v105;
      }

      v106 = v55;
      operator delete(v57);
    }

    v59 = v113;
    if (v113)
    {
      do
      {
        v60 = *v59;
        sub_55F7FC((v59 + 2));
        operator delete(v59);
        v59 = v60;
      }

      while (v60);
    }

    v61 = v112;
    v112 = 0;
    if (v61)
    {
      operator delete(v61);
    }

    v62 = v110;
    if (v110)
    {
      v63 = v111;
      v64 = v110;
      if (v111 != v110)
      {
        do
        {
          v65 = *(v63 - 1);
          v63 -= 3;
          if (v65 < 0)
          {
            operator delete(*v63);
          }
        }

        while (v63 != v62);
        v64 = v110;
      }

      v111 = v62;
      operator delete(v64);
    }

    v66 = v120;
    if (v120 && !atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v66->__on_zero_shared)(v66, v50);
      std::__shared_weak_count::__release_weak(v66);
    }

    v67 = v119;
    if (v119)
    {
      do
      {
        v68 = *v67;
        sub_55F7FC((v67 + 2));
        operator delete(v67);
        v67 = v68;
      }

      while (v68);
    }

    v69 = v118;
    v118 = 0;
    if (v69)
    {
      operator delete(v69);
    }

    v70 = v116;
    if (v116)
    {
      v71 = v117;
      v72 = v116;
      if (v117 != v116)
      {
        do
        {
          v73 = *(v71 - 1);
          v71 -= 3;
          if (v73 < 0)
          {
            operator delete(*v71);
          }
        }

        while (v71 != v70);
        v72 = v116;
      }

      v117 = v70;
      operator delete(v72);
    }

    v74 = v124;
    if (v124)
    {
      do
      {
        v75 = *v74;
        sub_55F7FC((v74 + 2));
        operator delete(v74);
        v74 = v75;
      }

      while (v75);
    }

    v76 = v123;
    v123 = 0;
    if (v76)
    {
      operator delete(v76);
    }

    v77 = v121;
    if (v121)
    {
      v78 = v122;
      v79 = v121;
      if (v122 != v121)
      {
        do
        {
          v80 = *(v78 - 1);
          v78 -= 3;
          if (v80 < 0)
          {
            operator delete(*v78);
          }
        }

        while (v78 != v77);
        v79 = v121;
      }

      v122 = v77;
      operator delete(v79);
    }
  }

  v81 = v135;
  if (v135 && !atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v81->__on_zero_shared)(v81);
    std::__shared_weak_count::__release_weak(v81);
  }

  v82 = v131;
  if (v131)
  {
    do
    {
      v83 = *v82;
      sub_55F7FC((v82 + 2));
      operator delete(v82);
      v82 = v83;
    }

    while (v83);
  }

  v84 = __p;
  __p = 0;
  if (v84)
  {
    operator delete(v84);
  }

  v85 = v127[0];
  if (v127[0])
  {
    v86 = v127[1];
    v87 = v127[0];
    if (v127[1] != v127[0])
    {
      do
      {
        v88 = *(v86 - 1);
        v86 -= 3;
        if (v88 < 0)
        {
          operator delete(*v86);
        }
      }

      while (v86 != v85);
      v87 = v127[0];
    }

    v127[1] = v85;
    operator delete(v87);
  }

  v89 = v139;
  if (v139)
  {
    do
    {
      v90 = *v89;
      sub_55F7FC((v89 + 2));
      operator delete(v89);
      v89 = v90;
    }

    while (v90);
  }

  v91 = v138;
  v138 = 0;
  if (v91)
  {
    operator delete(v91);
  }

  v92 = v136;
  if (v136)
  {
    v93 = v137;
    v94 = v136;
    if (v137 != v136)
    {
      do
      {
        v95 = *(v93 - 1);
        v93 -= 3;
        if (v95 < 0)
        {
          operator delete(*v93);
        }
      }

      while (v93 != v92);
      v94 = v136;
    }

    v137 = v92;
    operator delete(v94);
  }

  v96 = *(&v142 + 1);
  if (*(&v142 + 1))
  {
    do
    {
      v97 = *v96;
      sub_55F7FC((v96 + 2));
      operator delete(v96);
      v96 = v97;
    }

    while (v97);
  }

  v98 = *(&v141 + 1);
  *(&v141 + 1) = 0;
  if (v98)
  {
    operator delete(v98);
  }

  v99 = v140;
  if (v140)
  {
    v100 = *(&v140 + 1);
    v101 = v140;
    if (*(&v140 + 1) != v140)
    {
      do
      {
        v102 = *(v100 - 1);
        v100 -= 3;
        if (v102 < 0)
        {
          operator delete(*v100);
        }
      }

      while (v100 != v99);
      v101 = v140;
    }

    *(&v140 + 1) = v99;
    operator delete(v101);
  }
}

void sub_79EDF0(_Unwind_Exception *a1)
{
  sub_5936E4(v1);
  sub_53A58C((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_79FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60)
{
  sub_1F1A8(&a10);
  sub_53A58C(&a25);
  sub_662AC8(&__p);
  sub_53A58C(&a49);
  sub_662AC8(&a60);
  sub_53A58C(&STACK[0x200]);
  sub_662AC8(&STACK[0x258]);
  sub_53A58C(&STACK[0x2C0]);
  sub_662AC8(&STACK[0x318]);
  sub_53A58C(&STACK[0x380]);
  sub_662AC8(&STACK[0x3D8]);
  sub_53A58C((v61 - 208));
  sub_5936E4(v60);
  sub_53A58C((v61 - 136));
  _Unwind_Resume(a1);
}

void sub_79FDF8(_Unwind_Exception *a1)
{
  sub_5936E4(v1);
  sub_53A58C((v2 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_79FE18@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[291].n128_u32[0] == 1;
  v5 = a1[174].n128_u8[10];
  v6 = a1[174].n128_u8[9];
  v7 = a1[174].n128_u8[12];
  v8 = sub_67AE94(&a1[192].n128_i64[1]);
  v9 = a1[192].n128_u8[1];
  v10 = a1[192].n128_u8[2] << 40;
  v11 = 0x1000000;
  if (!v8 || !v4)
  {
    v11 = 0;
  }

  v22 = v11 | (v5 << 16) | (v6 << 8) | v7;
  v23 = (v10 | (v9 << 32)) >> 32;
  sub_7AB77C(a1, &a1[170], &v22, &v24);
  sub_6825E0(a2, &v24, 0, 0, 1);
  v12 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v27;
  if (v27)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v24;
  if (v24)
  {
    v17 = v25;
    v18 = v24;
    if (v25 != v24)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v24;
    }

    v25 = v16;
    operator delete(v18);
  }

  sub_4C516C(a2, a1[163].n128_i32[0]);
  sub_681A38(a2, a1 + 165);
  if (a1[174].n128_u8[10])
  {
    v20 = 59;
  }

  else
  {
    v20 = 60;
  }

  sub_68179C(a2, v20);
  sub_6817B4(a2, a1[162].n128_i64[1], 0, a1[162].n128_i64[1]);
  return sub_682A50(a2, a1[192].n128_i8[1]);
}

void sub_79FFEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_7A0014(uint64_t a1)
{
  v2 = *(a1 + 4640);
  v3 = *(a1 + 4656) == 1;
  v4 = *(a1 + 2794);
  v5 = *(a1 + 2793);
  v6 = *(a1 + 2796);
  v7 = sub_67AE94(a1 + 3080);
  v8 = *(a1 + 3073);
  v9 = *(a1 + 3074) << 40;
  v10 = 0x1000000;
  if (!v7 || !v3)
  {
    v10 = 0;
  }

  v11 = v10 | (v4 << 16) | (v5 << 8) | v6;
  v12 = (v9 | (v8 << 32)) >> 32;
  sub_7AD754(a1, v2, &v11, &v13);
}

void sub_7A0278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_7A028C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7A02A8@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  sub_7AEE2C(a1, a1[174].n128_u8[12], &a1[170], &v14);
  sub_6825E0(a2, &v14, 0, 0, 1);
  v4 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v17;
  if (v17)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v14;
  if (v14)
  {
    v9 = v15;
    v10 = v14;
    if (v15 != v14)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v14;
    }

    v15 = v8;
    operator delete(v10);
  }

  sub_4C516C(a2, a1[163].n128_i32[0]);
  sub_681A38(a2, a1 + 165);
  if (a1[174].n128_u8[10])
  {
    v12 = 61;
  }

  else
  {
    v12 = 62;
  }

  sub_68179C(a2, v12);
  return sub_6817B4(a2, a1[162].n128_i64[1], 0, a1[162].n128_i64[1]);
}

void sub_7A040C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_7A0434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = sub_7A9FE0(a1, a3, a6 + 1);
  memcpy(v11 + 4, a4, 0x92CuLL);
  if (*(a4 + 2375) < 0)
  {
    sub_325C((a1 + 2384), *(a4 + 2352), *(a4 + 2360));
  }

  else
  {
    v12 = *(a4 + 2352);
    *(a1 + 2400) = *(a4 + 2368);
    *(a1 + 2384) = v12;
  }

  v13 = *(a4 + 2376);
  v14 = *(a4 + 2392);
  v15 = *(a4 + 2424);
  *(a1 + 2440) = *(a4 + 2408);
  *(a1 + 2456) = v15;
  *(a1 + 2408) = v13;
  *(a1 + 2424) = v14;
  v16 = *(a4 + 2440);
  v17 = *(a4 + 2456);
  v18 = *(a4 + 2488);
  *(a1 + 2504) = *(a4 + 2472);
  *(a1 + 2520) = v18;
  *(a1 + 2472) = v16;
  *(a1 + 2488) = v17;
  v19 = *(a4 + 2504);
  v20 = *(a4 + 2520);
  v21 = *(a4 + 2552);
  *(a1 + 2568) = *(a4 + 2536);
  *(a1 + 2584) = v21;
  *(a1 + 2536) = v19;
  *(a1 + 2552) = v20;
  *(a1 + 2600) = sub_4D1DB8(a5);
  *(a1 + 2608) = sub_4D26B4(a5, 0);
  *(a1 + 2616) = 0x7FFFFFFF;
  *(a1 + 2620) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2632) = 0;
  *(a1 + 2640) = 0x7FFFFFFF;
  *(a1 + 2644) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2656) = 0;
  if (*(a1 + 2409) == 1)
  {
    v22 = 0;
    if (*(a5 + 10248) != 0x7FFFFFFFFFFFFFFFLL && *(a5 + 10256) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = *(a5 + 10288) != *(a5 + 10296);
    }
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 2664) = v22;
  v23 = sub_69B1A4(a5);
  if (*(v23 + 23) < 0)
  {
    sub_325C((a1 + 2672), *v23, *(v23 + 8));
  }

  else
  {
    v24 = *v23;
    *(a1 + 2688) = *(v23 + 16);
    *(a1 + 2672) = v24;
  }

  v25 = sub_69B1B0(a5);
  if (*(v25 + 23) < 0)
  {
    sub_325C((a1 + 2696), *v25, *(v25 + 8));
  }

  else
  {
    v26 = *v25;
    *(a1 + 2712) = *(v25 + 16);
    *(a1 + 2696) = v26;
  }

  v27 = sub_69B1BC(a5);
  if (*(v27 + 23) < 0)
  {
    sub_325C((a1 + 2720), *v27, *(v27 + 8));
  }

  else
  {
    v28 = *v27;
    *(a1 + 2736) = *(v27 + 16);
    *(a1 + 2720) = v28;
  }

  v29 = sub_69B1C8(a5);
  if (*(v29 + 23) < 0)
  {
    sub_325C((a1 + 2744), *v29, *(v29 + 8));
  }

  else
  {
    v30 = *v29;
    *(a1 + 2760) = *(v29 + 16);
    *(a1 + 2744) = v30;
  }

  v31 = sub_69B1D4(a5);
  if (*(v31 + 23) < 0)
  {
    sub_325C((a1 + 2768), *v31, *(v31 + 8));
  }

  else
  {
    v32 = *v31;
    *(a1 + 2784) = *(v31 + 16);
    *(a1 + 2768) = v32;
  }

  *(a1 + 2792) = 0;
  *(a1 + 2793) = sub_69B004(a5);
  *(a1 + 2794) = sub_69B010(a5);
  *(a1 + 2795) = sub_69B01C(a5);
  *(a1 + 2796) = sub_69B0E0(a5);
  v33 = sub_4D2130(a5);
  sub_3EDBB0(a1 + 2800, v33);
  v34 = sub_73F54(a5);
  sub_3EDBB0(a1 + 2936, v34);
  v35 = *(a1 + 2936) != 0x7FFFFFFF && sub_4566B4((a1 + 2944));
  *(a1 + 3072) = v35;
  if (*(a5 + 12536) != 1 || (v36 = *(a3 + 1464), v37 = *(a3 + 1472), v36 == v37))
  {
    v39 = 0;
  }

  else
  {
    v38 = v36 + 4;
    do
    {
      v39 = *(v38 - 4) == 1;
      v40 = *(v38 - 4) == 1 || v38 == v37;
      v38 += 4;
    }

    while (!v40);
  }

  *(a1 + 3073) = v39;
  strcpy(v42, "GuidanceFeatureRegions");
  v42[23] = 22;
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, v42, __p);
  sub_795D4C();
}

void sub_7A08F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_528AB4(v22 + 3080);
  sub_49A8F8((v22 + 2936));
  sub_49A8F8((v22 + 2800));
  if (*(v22 + 2791) < 0)
  {
    operator delete(*v24);
    if ((*(v22 + 2767) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v22 + 2767) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v22 + 2743) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  operator delete(*v23);
  if (*(v22 + 2743) < 0)
  {
LABEL_4:
    operator delete(*a10);
    if ((*(v22 + 2719) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((*(v22 + 2719) & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v22 + 2695) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*a11);
  if (*(v22 + 2695) < 0)
  {
LABEL_6:
    operator delete(*a12);
    if ((*(v22 + 2407) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((*(v22 + 2407) & 0x80000000) == 0)
  {
LABEL_7:
    sub_795FDC(v22);
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(*a13);
  sub_795FDC(v22);
  _Unwind_Resume(a1);
}

void *sub_7A0A5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 2664) == 1)
  {
    if (*(a1 + 3072) == 1)
    {
      sub_7A0D78(a1, v14);
    }

    else
    {
      sub_7A0F5C(a1, v14);
    }

    v4 = a2[1];
    if (v4 >= a2[2])
    {
      v5 = sub_7A585C(a2, v14);
    }

    else
    {
      sub_5F4D20(a2[1], v14);
      v5 = v4 + 1120;
    }

    a2[1] = v5;
    sub_5938B0(v14);
  }

  if (*(a1 + 3072) == 1)
  {
    sub_7A113C(a1, v14);
  }

  else
  {
    sub_7A1320(a1, v14);
  }

  v6 = a2[1];
  if (v6 >= a2[2])
  {
    v7 = sub_7A585C(a2, v14);
  }

  else
  {
    sub_5F4D20(a2[1], v14);
    v7 = v6 + 1120;
  }

  a2[1] = v7;
  if (*(a1 + 3072) == 1)
  {
    v8 = *(a1 + 2976);
    if (v8 != *(a1 + 2984))
    {
      if (*v8)
      {
        sub_7A1500(a1, 0, v13);
      }
    }

    sub_7A1748(a1, v13);
  }

  if (*(a1 + 2536) == 1)
  {
    sub_7A1A0C(a1, v13);
  }

  else
  {
    sub_7A1B34(a1, v13);
  }

  v9 = a2[1];
  if (v9 >= a2[2])
  {
    v11 = sub_7A5C30(a2, v13);
  }

  else
  {
    sub_7A5A3C(v9, v13);
    v11 = v10 + 1120;
  }

  a2[1] = v11;
  sub_5938B0(v13);
  return sub_5938B0(v14);
}

void sub_7A0CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5938B0(&a9);
  sub_5938B0(&STACK[0x460]);
  sub_5EC628(v9);
  _Unwind_Resume(a1);
}

void sub_7A0D48(_Unwind_Exception *a1)
{
  sub_5938B0(&STACK[0x460]);
  sub_5EC628(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_7A0D78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA298(&v19, a1, a1 + 2696);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA018(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 20);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_7A0F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_7A0F34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7A0F5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA028(&v19);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA018(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 19);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_7A10E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_7A1114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7A113C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA29C(a1 + 2696, &v19);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA4A0(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 21);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_7A12C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_7A12F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7A1320@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA02C(a1, &v19);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA4A0(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 24);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_7A14A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_7A14D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_7A1500(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 2976);
  sub_7AA8C8(*v6, *(v6 + 1) != 0x7FFFFFFF, &v16);
  sub_809E48(a3, &v16, 0);
  v7 = *v21;
  if (*v21)
  {
    do
    {
      v8 = *v7;
      sub_55F7FC((v7 + 2));
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = __p;
  __p = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = v16;
  if (v16)
  {
    v11 = v17;
    v12 = v16;
    if (v17 != v16)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v16;
    }

    v17 = v10;
    operator delete(v12);
  }

  sub_6819B8(a3, (a1 + 2936));
  if (a2)
  {
    v14 = 23;
  }

  else
  {
    v14 = 22;
  }

  sub_68179C(a3, v14);
  sub_6817B4(a3, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a3, *(a1 + 451));
  v15 = sub_67A848((a1 + 32), *v6);
  *(&__p + 3) = 0;
  LODWORD(__p) = 0;
  v17 = 0;
  v18 = 0;
  v16 = (v15 | 0xFFFFFF00000000);
  HIBYTE(__p) = 0;
  v20 = 1;
  *v21 = -1;
  *&v21[3] = -1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26 = 0;
  memset(&v21[7], 0, 24);
  v22 = 0;
  sub_682248();
}

void sub_7A16F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_7A1720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_7A1748(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA6E0(&v19);
  sub_809E48(a2, &v19, 0);
  v4 = *v24;
  if (*v24)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA4B0(*(a1 + 2503), &v19);
  sub_80A374(a2, &v19);
  v11 = *v24;
  if (*v24)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 25);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a2, *(a1 + 450));
  sub_6819B8(a2, (a1 + 2936));
  v18 = *(a1 + 2012);
  LODWORD(__p) = 0;
  *(&__p + 3) = 0;
  v20 = 0;
  v21 = 0;
  v19 = (v18 | 0xFFFFFF00000000);
  HIBYTE(__p) = 0;
  v23 = 1;
  *v24 = -1;
  *&v24[3] = -1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  memset(&v24[7], 0, 24);
  v25 = 0;
  sub_682248();
}

void sub_7A1998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_7A19B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_7A19E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7A1A0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AAB3C(&v12);
  sub_809E48(a2, &v12, 0);
  v4 = v15;
  if (v15)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v12;
  if (v12)
  {
    v8 = v13;
    v9 = v12;
    if (v13 != v12)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v12;
    }

    v13 = v7;
    operator delete(v9);
  }

  sub_68179C(a2, 16);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a2, *(a1 + 450));
  return sub_809E38(a2, 97);
}

void sub_7A1B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7A1B34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AAB2C(&v12);
  sub_809E48(a2, &v12, 0);
  v4 = v15;
  if (v15)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v12;
  if (v12)
  {
    v8 = v13;
    v9 = v12;
    if (v13 != v12)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v12;
    }

    v13 = v7;
    operator delete(v9);
  }

  sub_68179C(a2, 16);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a2, *(a1 + 450));
  return sub_809E38(a2, 17);
}

void sub_7A1C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void *sub_7A1C5C@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(result + 3072) == 1)
  {
    sub_7A1CF0(result, v3);
    a2[1] = sub_7A5D94(a2, v3);
    return sub_5936E4(v3);
  }

  return result;
}

void sub_7A1CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5936E4(va);
  sub_5ED1D0(v2);
  _Unwind_Resume(a1);
}

double sub_7A1CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_608080(a2);
  sub_E6F038(a1 + 4320, &v71);
  v4 = v71;
  if (v71 != v72)
  {
    while (*v4 != 10)
    {
      v4 += 2;
      if (v4 == v72)
      {
        goto LABEL_4;
      }
    }

LABEL_20:
    sub_7AA6E0(&v67);
    v61 = 0;
    v62 = 0;
    sub_680484(&v71, &v67, 1, &v61);
    sub_681A64(a2, &v71);
    v15 = v75;
    if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = v74;
    if (v74)
    {
      do
      {
        v17 = *v16;
        sub_55F7FC((v16 + 2));
        operator delete(v16);
        v16 = v17;
      }

      while (v17);
    }

    v18 = __p;
    __p = 0;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = v71;
    if (v71)
    {
      v20 = v72;
      v21 = v71;
      if (v72 != v71)
      {
        do
        {
          v22 = *(v20 - 1);
          v20 -= 3;
          if (v22 < 0)
          {
            operator delete(*v20);
          }
        }

        while (v20 != v19);
        v21 = v71;
      }

      v72 = v19;
      operator delete(v21);
    }

    v23 = v62;
    if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v24 = v70;
    if (v70)
    {
      do
      {
        v25 = *v24;
        sub_55F7FC((v24 + 2));
        operator delete(v24);
        v24 = v25;
      }

      while (v25);
    }

    v26 = v69;
    v69 = 0;
    if (v26)
    {
      operator delete(v26);
    }

    v27 = v67;
    if (v67)
    {
      v28 = v68;
      v29 = v67;
      if (v68 == v67)
      {
        goto LABEL_94;
      }

      do
      {
        v30 = *(v28 - 1);
        v28 -= 3;
        if (v30 < 0)
        {
          operator delete(*v28);
        }
      }

      while (v28 != v27);
LABEL_93:
      v29 = v67;
LABEL_94:
      v68 = v27;
      operator delete(v29);
      goto LABEL_95;
    }

    goto LABEL_95;
  }

LABEL_4:
  v5 = *(a1 + 2976);
  v6 = *(a1 + 2984);
  if (v5 != v6)
  {
    while (*v5 == 10)
    {
      v5 += 16;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_20;
  }

LABEL_7:
  sub_7AA82C(&v67);
  v65 = 0;
  v66 = 0;
  sub_680484(&v71, &v67, 1, &v65);
  sub_681A64(a2, &v71);
  v7 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v74;
  if (v74)
  {
    do
    {
      v9 = *v8;
      sub_55F7FC((v8 + 2));
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = __p;
  __p = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = v71;
  if (v71)
  {
    v12 = v72;
    v13 = v71;
    if (v72 != v71)
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
      v13 = v71;
    }

    v72 = v11;
    operator delete(v13);
  }

  v31 = v66;
  if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = v70;
  if (v70)
  {
    do
    {
      v33 = *v32;
      sub_55F7FC((v32 + 2));
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v34 = v69;
  v69 = 0;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = v67;
  if (v67)
  {
    v36 = v68;
    v37 = v67;
    if (v68 != v67)
    {
      do
      {
        v38 = *(v36 - 1);
        v36 -= 3;
        if (v38 < 0)
        {
          operator delete(*v36);
        }
      }

      while (v36 != v35);
      v37 = v67;
    }

    v68 = v35;
    operator delete(v37);
  }

  LODWORD(v71) = 19;
  sub_681B08(a2, &v71);
  sub_7AA6E0(&v67);
  v63 = 0;
  v64 = 0;
  sub_680484(&v71, &v67, 1, &v63);
  sub_681A64(a2, &v71);
  v39 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = v74;
  if (v74)
  {
    do
    {
      v41 = *v40;
      sub_55F7FC((v40 + 2));
      operator delete(v40);
      v40 = v41;
    }

    while (v41);
  }

  v42 = __p;
  __p = 0;
  if (v42)
  {
    operator delete(v42);
  }

  v43 = v71;
  if (v71)
  {
    v44 = v72;
    v45 = v71;
    if (v72 != v71)
    {
      do
      {
        v46 = *(v44 - 1);
        v44 -= 3;
        if (v46 < 0)
        {
          operator delete(*v44);
        }
      }

      while (v44 != v43);
      v45 = v71;
    }

    v72 = v43;
    operator delete(v45);
  }

  v47 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  v48 = v70;
  if (v70)
  {
    do
    {
      v49 = *v48;
      sub_55F7FC((v48 + 2));
      operator delete(v48);
      v48 = v49;
    }

    while (v49);
  }

  v50 = v69;
  v69 = 0;
  if (v50)
  {
    operator delete(v50);
  }

  v27 = v67;
  if (v67)
  {
    v51 = v68;
    v29 = v67;
    if (v68 == v67)
    {
      goto LABEL_94;
    }

    do
    {
      v52 = *(v51 - 1);
      v51 -= 3;
      if (v52 < 0)
      {
        operator delete(*v51);
      }
    }

    while (v51 != v27);
    goto LABEL_93;
  }

LABEL_95:
  sub_7AA4B0(*(a1 + 2503), &v71);
  sub_6821CC(a2, &v71);
  v53 = v74;
  if (v74)
  {
    do
    {
      v54 = *v53;
      sub_55F7FC((v53 + 2));
      operator delete(v53);
      v53 = v54;
    }

    while (v54);
  }

  v55 = __p;
  __p = 0;
  if (v55)
  {
    operator delete(v55);
  }

  v56 = v71;
  if (v71)
  {
    v57 = v72;
    v58 = v71;
    if (v72 != v71)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v71;
    }

    v72 = v56;
    operator delete(v58);
  }

  sub_68179C(a2, 89);
  *&result = sub_6819B8(a2, (a1 + 2936)).n128_u64[0];
  return result;
}

void sub_7A2370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void **);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_662AC8(va2);
  sub_1F1A8(va);
  sub_53A58C(va1);
  sub_5936E4(v3);
  _Unwind_Resume(a1);
}

void sub_7A2430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_53A58C(va);
  sub_5936E4(v16);
  _Unwind_Resume(a1);
}

void sub_7A2488(__n128 *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[174].n128_u8[8] == 1)
  {
    if (sub_67AE58(&a1[192].n128_i64[1]) && a1[281].n128_u8[4] == 1)
    {
      sub_7A543C(a1);
    }

    if (a1[174].n128_u8[9] == 1)
    {
      sub_7A56D0(a1, &v66);
    }

    else
    {
      sub_7A5240(a1, &v66);
    }
  }

  else
  {
    sub_7A2A94(a1, &v66);
  }

  v4 = a2[1];
  if (v4 >= a2[2])
  {
    v5 = sub_7A5EF8(a2, &v66);
  }

  else
  {
    sub_7A6070(a2[1], &v66);
    v5 = v4 + 448;
  }

  a2[1] = v5;
  if (a1[166].n128_u8[8] == 1)
  {
    if (a1[192].n128_u8[0] == 1)
    {
      sub_7A2D68(a1, &v53);
    }

    else
    {
      sub_7A2ECC(a1, &v53);
    }

    v6 = a2[1];
    if (v6 >= a2[2])
    {
      v7 = sub_7A5EF8(a2, &v53);
    }

    else
    {
      sub_7A6070(a2[1], &v53);
      v7 = v6 + 448;
    }

    a2[1] = v7;
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    v8 = v60;
    if (v60)
    {
      v9 = v61;
      v10 = v60;
      if (v61 != v60)
      {
        do
        {
          v9 = sub_662AC8(v9 - 13);
        }

        while (v9 != v8);
        v10 = v60;
      }

      v61 = v8;
      operator delete(v10);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    v11 = v54;
    if (v54)
    {
      v12 = v55;
      v13 = v54;
      if (v55 != v54)
      {
        do
        {
          v12 = sub_53A868(v12 - 160);
        }

        while (v12 != v11);
        v13 = v54;
      }

      v55 = v11;
      operator delete(v13);
    }
  }

  if (a1[192].n128_u8[0] == 1)
  {
    sub_7A3044(a1, &v53);
  }

  else
  {
    sub_7A31A4(a1, &v53);
  }

  v14 = a2[1];
  if (v14 >= a2[2])
  {
    v15 = sub_7A5EF8(a2, &v53);
  }

  else
  {
    sub_7A6070(a2[1], &v53);
    v15 = v14 + 448;
  }

  a2[1] = v15;
  if (a1[192].n128_u8[0] == 1)
  {
    sub_7A3304(a1, &v40);
    sub_798900(a2, &v40);
    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    v16 = v47;
    if (v47)
    {
      v17 = v48;
      v18 = v47;
      if (v48 != v47)
      {
        do
        {
          v17 = sub_662AC8(v17 - 13);
        }

        while (v17 != v16);
        v18 = v47;
      }

      v48 = v16;
      operator delete(v18);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    v19 = v41;
    if (v41)
    {
      v20 = v42;
      v21 = v41;
      if (v42 != v41)
      {
        do
        {
          v20 = sub_53A868(v20 - 160);
        }

        while (v20 != v19);
        v21 = v41;
      }

      v42 = v19;
      operator delete(v21);
    }
  }

  if (a1[158].n128_u8[8] == 1)
  {
    sub_7A3474(a1, &v40);
  }

  else
  {
    sub_7A35D4(a1, &v40);
  }

  sub_798900(a2, &v40);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  v22 = v47;
  if (v47)
  {
    v23 = v48;
    v24 = v47;
    if (v48 != v47)
    {
      do
      {
        v23 = sub_662AC8(v23 - 13);
      }

      while (v23 != v22);
      v24 = v47;
    }

    v48 = v22;
    operator delete(v24);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v25 = v41;
  if (v41)
  {
    v26 = v42;
    v27 = v41;
    if (v42 != v41)
    {
      do
      {
        v26 = sub_53A868(v26 - 160);
      }

      while (v26 != v25);
      v27 = v41;
    }

    v42 = v25;
    operator delete(v27);
  }

  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  v28 = v60;
  if (v60)
  {
    v29 = v61;
    v30 = v60;
    if (v61 != v60)
    {
      do
      {
        v29 = sub_662AC8(v29 - 13);
      }

      while (v29 != v28);
      v30 = v60;
    }

    v61 = v28;
    operator delete(v30);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v31 = v54;
  if (v54)
  {
    v32 = v55;
    v33 = v54;
    if (v55 != v54)
    {
      do
      {
        v32 = sub_53A868(v32 - 160);
      }

      while (v32 != v31);
      v33 = v54;
    }

    v55 = v31;
    operator delete(v33);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v34 = v72;
  if (v72)
  {
    v35 = v73;
    v36 = v72;
    if (v73 != v72)
    {
      do
      {
        v35 = sub_662AC8(v35 - 13);
      }

      while (v35 != v34);
      v36 = v72;
    }

    v73 = v34;
    operator delete(v36);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  v37 = v66.n128_u64[1];
  if (v66.n128_u64[1])
  {
    v38 = v67;
    v39 = v66.n128_u64[1];
    if (v67 != v66.n128_u64[1])
    {
      do
      {
        v38 = sub_53A868(v38 - 160);
      }

      while (v38 != v37);
      v39 = v66.n128_u64[1];
    }

    v67 = v37;
    operator delete(v39);
  }
}

void sub_7A29E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_682DB0(&a65);
  sub_682DB0(&STACK[0x380]);
  sub_5EC5AC(v65);
  _Unwind_Resume(a1);
}

void sub_7A2A94(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 + 4096;
  if (sub_67AE28((a1 + 3080)))
  {
    v5 = *(v4 + 544);
    v6 = *(a1 + 4656) == 1;
    v7 = *(a1 + 2794);
    v8 = *(a1 + 2793);
    v9 = *(a1 + 2796);
    v10 = sub_67AE94(a1 + 3080);
    v11 = *(a1 + 3073);
    v12 = *(a1 + 3074) << 40;
    v13 = 0x1000000;
    if (!v10 || !v6)
    {
      v13 = 0;
    }

    v36 = v13 | (v7 << 16) | (v8 << 8) | v9;
    v37 = (v12 | (v11 << 32)) >> 32;
    sub_7AC3A8(a1, v5, &v36, &v38);
  }

  else
  {
    v14 = *(a1 + 4656) == 1;
    v15 = *(a1 + 2794);
    v16 = *(a1 + 2793);
    v17 = *(a1 + 2796);
    v18 = sub_67AE94(a1 + 3080);
    v19 = *(a1 + 3073);
    v20 = *(a1 + 3074) << 40;
    v21 = 0x1000000;
    if (!v18 || !v14)
    {
      v21 = 0;
    }

    v36 = v21 | (v15 << 16) | (v16 << 8) | v17;
    v37 = (v20 | (v19 << 32)) >> 32;
    sub_7AB214(a1, &v36, &v38);
  }

  sub_6825E0(a2, &v38, 0, 0, 1);
  if (sub_67AE58(a1 + 3080) && *(v4 + 404) == 1)
  {
    v22 = *(a1 + 4656);
    v23 = sub_67AE94(a1 + 3080);
    if (v22 == 1 && v23)
    {
      v25 = 63;
    }

    else
    {
      if (*(a1 + 2794))
      {
        v34 = 56;
      }

      else
      {
        v34 = 55;
      }

      if (*(a1 + 2794))
      {
        v35 = 57;
      }

      else
      {
        v35 = 58;
      }

      if (*(a1 + 2793) == 1)
      {
        v25 = v35;
      }

      else
      {
        v25 = v34;
      }
    }
  }

  else
  {
    v25 = 55;
  }

  sub_68179C(a2, v25);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_682A50(a2, *(a1 + 3073));
  sub_681D10(a2, *(a1 + 4656));
  v26 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v41;
  if (v41)
  {
    do
    {
      v28 = *v27;
      sub_55F7FC((v27 + 2));
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = __p;
  __p = 0;
  if (v29)
  {
    operator delete(v29);
  }

  v30 = v38;
  if (v38)
  {
    v31 = v39;
    v32 = v38;
    if (v39 != v38)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v38;
    }

    v39 = v30;
    operator delete(v32);
  }
}

void sub_7A2D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_7A2D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7A2D68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AF7E0(a1 + 2696, &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 67);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_7A2EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7A2ECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AF1A8(a1, &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  if (sub_67AE28((a1 + 3080)))
  {
    sub_681D10(a2, *(a1 + 4656));
  }

  sub_68179C(a2, 66);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_7A301C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7A3044@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFC70(&v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 68);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_7A317C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7A31A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFAD0(a1, &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 69);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_7A32DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

double sub_7A3304@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFDA0(*(a1 + 2504), &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 70);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  *&result = sub_6819B8(a2, (a1 + 2936)).n128_u64[0];
  return result;
}

void sub_7A344C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7A3474@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7B0104(&v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 71);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_7A35AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7A35D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFFD4(&v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 71);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_7A370C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_7A3734(uint64_t a1@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  if (!a2)
  {
    if (*(a1 + 2795) != 1)
    {
      goto LABEL_3;
    }

LABEL_12:

    sub_7A42FC();
  }

  if (*(a1 + 2796))
  {
    goto LABEL_12;
  }

LABEL_3:
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v140 = 0u;
  v144 = 1065353216;
  v145 = 1;
  sub_608080(a3);
  if ((a2 & 1) != 0 || *(a1 + 4660) != 1)
  {
    sub_67E710("{Destination}", v127);
    v10 = v140;
    if (v140)
    {
      v11 = *(&v140 + 1);
      v12 = v140;
      if (*(&v140 + 1) != v140)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v140;
      }

      *(&v140 + 1) = v10;
      operator delete(v12);
    }

    v140 = *v127;
    *&v141 = v128;
    v127[1] = 0;
    v128 = 0;
    v127[0] = 0;
    if (v143)
    {
      v14 = *(&v142 + 1);
      if (*(&v142 + 1))
      {
        do
        {
          v15 = *v14;
          sub_55F7FC((v14 + 2));
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      *(&v142 + 1) = 0;
      if (v142)
      {
        bzero(*(&v141 + 1), 8 * v142);
      }

      v143 = 0;
    }

    v16 = __p;
    __p = 0;
    v17 = *(&v141 + 1);
    *(&v141 + 1) = v16;
    if (v17)
    {
      operator delete(v17);
    }

    v18 = v130;
    v19 = v131;
    v130 = 0;
    *(&v142 + 1) = v131;
    v143 = v132;
    v144 = v133;
    *&v142 = v18;
    if (v132)
    {
      v20 = v131[1];
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v20 >= v18)
        {
          v20 %= v18;
        }
      }

      else
      {
        v20 &= v18 - 1;
      }

      *(*(&v141 + 1) + 8 * v20) = &v142 + 8;
      v131 = 0;
      v132 = 0;
      v145 = v134;
    }

    else
    {
      v145 = v134;
      if (v131)
      {
        do
        {
          v21 = *v19;
          sub_55F7FC((v19 + 2));
          operator delete(v19);
          v19 = v21;
        }

        while (v21);
      }
    }

    v22 = __p;
    __p = 0;
    if (v22)
    {
      operator delete(v22);
    }

    v23 = v127[0];
    if (v127[0])
    {
      v24 = v127[1];
      v25 = v127[0];
      if (v127[1] != v127[0])
      {
        do
        {
          v26 = *(v24 - 1);
          v24 -= 3;
          if (v26 < 0)
          {
            operator delete(*v24);
          }
        }

        while (v24 != v23);
        v25 = v127[0];
      }

      v127[1] = v23;
      operator delete(v25);
    }

    sub_68179C(a3, 27);
    v27 = 0;
  }

  else
  {
    sub_67E494(v127, qword_27A7EE0);
    v6 = v140;
    if (v140)
    {
      v7 = *(&v140 + 1);
      v8 = v140;
      if (*(&v140 + 1) != v140)
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
        v8 = v140;
      }

      *(&v140 + 1) = v6;
      operator delete(v8);
    }

    v140 = *v127;
    *&v141 = v128;
    v127[1] = 0;
    v128 = 0;
    v127[0] = 0;
    if (v143)
    {
      v28 = *(&v142 + 1);
      if (*(&v142 + 1))
      {
        do
        {
          v29 = *v28;
          sub_55F7FC((v28 + 2));
          operator delete(v28);
          v28 = v29;
        }

        while (v29);
      }

      *(&v142 + 1) = 0;
      if (v142)
      {
        bzero(*(&v141 + 1), 8 * v142);
      }

      v143 = 0;
    }

    v30 = __p;
    __p = 0;
    v31 = *(&v141 + 1);
    *(&v141 + 1) = v30;
    if (v31)
    {
      operator delete(v31);
    }

    v32 = v130;
    v33 = v131;
    v130 = 0;
    *(&v142 + 1) = v131;
    v143 = v132;
    v144 = v133;
    *&v142 = v32;
    if (v132)
    {
      v34 = v131[1];
      if ((v32 & (v32 - 1)) != 0)
      {
        if (v34 >= v32)
        {
          v34 %= v32;
        }
      }

      else
      {
        v34 &= v32 - 1;
      }

      *(*(&v141 + 1) + 8 * v34) = &v142 + 8;
      v131 = 0;
      v132 = 0;
      v145 = v134;
    }

    else
    {
      v145 = v134;
      if (v131)
      {
        do
        {
          v35 = *v33;
          sub_55F7FC((v33 + 2));
          operator delete(v33);
          v33 = v35;
        }

        while (v35);
      }
    }

    v36 = __p;
    __p = 0;
    if (v36)
    {
      operator delete(v36);
    }

    v37 = v127[0];
    if (v127[0])
    {
      v38 = v127[1];
      v39 = v127[0];
      if (v127[1] != v127[0])
      {
        do
        {
          v40 = *(v38 - 1);
          v38 -= 3;
          if (v40 < 0)
          {
            operator delete(*v38);
          }
        }

        while (v38 != v37);
        v39 = v127[0];
      }

      v127[1] = v37;
      operator delete(v39);
    }

    sub_68179C(a3, 29);
    v27 = 1;
  }

  sub_6821CC(a3, &v140);
  sub_681D10(a3, *(a1 + 4656) - (a2 ^ 1));
  v41 = 2793;
  if (a2)
  {
    v41 = 2794;
    v42 = 3;
  }

  else
  {
    v42 = 1;
  }

  if (*(a1 + v41))
  {
    v43 = 2;
  }

  else
  {
    v43 = v42;
  }

  sub_681D18(a3, v43);
  sub_67E710("{Destination}", &v136);
  v125 = 0;
  v126 = 0;
  sub_680484(v127, &v136, 1, &v125);
  v44 = v126;
  if (v126 && !atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  sub_681A64(a3, v127);
  if (v27 | a2) == 1 && (*(a1 + 2792))
  {
    LODWORD(v116) = 19;
    sub_681B08(a3, &v116);
    sub_67E710("{Icon1}", &v121);
    v114 = 0;
    v115 = 0;
    sub_680484(&v116, &v121, 1, &v114);
    v45 = v115;
    if (v115 && !atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    sub_681A64(a3, &v116);
    LODWORD(v105) = 18;
    sub_681B08(a3, &v105);
    if (v27)
    {
      v46 = "Charge_At_Start";
    }

    else
    {
      v46 = "Arrival_Charge_List";
    }

    sub_67E494(&v110, v46);
    v103 = 0;
    v104 = 0;
    sub_680484(&v105, &v110, 1, &v103);
    v47 = v104;
    if (v104 && !atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    sub_681A64(a3, &v105);
    v48 = 2800;
    if (a2)
    {
      v48 = 2936;
    }

    sub_6819B8(a3, (a1 + v48));
    v49 = 2640;
    if (v27)
    {
      v49 = 2616;
    }

    v50 = sub_681A38(a3, (a1 + v49));
    v51 = v109;
    if (v109 && !atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51, v50);
      std::__shared_weak_count::__release_weak(v51);
    }

    v52 = v108;
    if (v108)
    {
      do
      {
        v53 = *v52;
        sub_55F7FC((v52 + 2));
        operator delete(v52);
        v52 = v53;
      }

      while (v53);
    }

    v54 = v107;
    v107 = 0;
    if (v54)
    {
      operator delete(v54);
    }

    v55 = v105;
    if (v105)
    {
      v56 = v106;
      v57 = v105;
      if (v106 != v105)
      {
        do
        {
          v58 = *(v56 - 1);
          v56 -= 3;
          if (v58 < 0)
          {
            operator delete(*v56);
          }
        }

        while (v56 != v55);
        v57 = v105;
      }

      v106 = v55;
      operator delete(v57);
    }

    v59 = v113;
    if (v113)
    {
      do
      {
        v60 = *v59;
        sub_55F7FC((v59 + 2));
        operator delete(v59);
        v59 = v60;
      }

      while (v60);
    }

    v61 = v112;
    v112 = 0;
    if (v61)
    {
      operator delete(v61);
    }

    v62 = v110;
    if (v110)
    {
      v63 = v111;
      v64 = v110;
      if (v111 != v110)
      {
        do
        {
          v65 = *(v63 - 1);
          v63 -= 3;
          if (v65 < 0)
          {
            operator delete(*v63);
          }
        }

        while (v63 != v62);
        v64 = v110;
      }

      v111 = v62;
      operator delete(v64);
    }

    v66 = v120;
    if (v120 && !atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v66->__on_zero_shared)(v66, v50);
      std::__shared_weak_count::__release_weak(v66);
    }

    v67 = v119;
    if (v119)
    {
      do
      {
        v68 = *v67;
        sub_55F7FC((v67 + 2));
        operator delete(v67);
        v67 = v68;
      }

      while (v68);
    }

    v69 = v118;
    v118 = 0;
    if (v69)
    {
      operator delete(v69);
    }

    v70 = v116;
    if (v116)
    {
      v71 = v117;
      v72 = v116;
      if (v117 != v116)
      {
        do
        {
          v73 = *(v71 - 1);
          v71 -= 3;
          if (v73 < 0)
          {
            operator delete(*v71);
          }
        }

        while (v71 != v70);
        v72 = v116;
      }

      v117 = v70;
      operator delete(v72);
    }

    v74 = v124;
    if (v124)
    {
      do
      {
        v75 = *v74;
        sub_55F7FC((v74 + 2));
        operator delete(v74);
        v74 = v75;
      }

      while (v75);
    }

    v76 = v123;
    v123 = 0;
    if (v76)
    {
      operator delete(v76);
    }

    v77 = v121;
    if (v121)
    {
      v78 = v122;
      v79 = v121;
      if (v122 != v121)
      {
        do
        {
          v80 = *(v78 - 1);
          v78 -= 3;
          if (v80 < 0)
          {
            operator delete(*v78);
          }
        }

        while (v78 != v77);
        v79 = v121;
      }

      v122 = v77;
      operator delete(v79);
    }
  }

  v81 = v135;
  if (v135 && !atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v81->__on_zero_shared)(v81);
    std::__shared_weak_count::__release_weak(v81);
  }

  v82 = v131;
  if (v131)
  {
    do
    {
      v83 = *v82;
      sub_55F7FC((v82 + 2));
      operator delete(v82);
      v82 = v83;
    }

    while (v83);
  }

  v84 = __p;
  __p = 0;
  if (v84)
  {
    operator delete(v84);
  }

  v85 = v127[0];
  if (v127[0])
  {
    v86 = v127[1];
    v87 = v127[0];
    if (v127[1] != v127[0])
    {
      do
      {
        v88 = *(v86 - 1);
        v86 -= 3;
        if (v88 < 0)
        {
          operator delete(*v86);
        }
      }

      while (v86 != v85);
      v87 = v127[0];
    }

    v127[1] = v85;
    operator delete(v87);
  }

  v89 = v139;
  if (v139)
  {
    do
    {
      v90 = *v89;
      sub_55F7FC((v89 + 2));
      operator delete(v89);
      v89 = v90;
    }

    while (v90);
  }

  v91 = v138;
  v138 = 0;
  if (v91)
  {
    operator delete(v91);
  }

  v92 = v136;
  if (v136)
  {
    v93 = v137;
    v94 = v136;
    if (v137 != v136)
    {
      do
      {
        v95 = *(v93 - 1);
        v93 -= 3;
        if (v95 < 0)
        {
          operator delete(*v93);
        }
      }

      while (v93 != v92);
      v94 = v136;
    }

    v137 = v92;
    operator delete(v94);
  }

  v96 = *(&v142 + 1);
  if (*(&v142 + 1))
  {
    do
    {
      v97 = *v96;
      sub_55F7FC((v96 + 2));
      operator delete(v96);
      v96 = v97;
    }

    while (v97);
  }

  v98 = *(&v141 + 1);
  *(&v141 + 1) = 0;
  if (v98)
  {
    operator delete(v98);
  }

  v99 = v140;
  if (v140)
  {
    v100 = *(&v140 + 1);
    v101 = v140;
    if (*(&v140 + 1) != v140)
    {
      do
      {
        v102 = *(v100 - 1);
        v100 -= 3;
        if (v102 < 0)
        {
          operator delete(*v100);
        }
      }

      while (v100 != v99);
      v101 = v140;
    }

    *(&v140 + 1) = v99;
    operator delete(v101);
  }
}

void sub_7A4218(_Unwind_Exception *a1)
{
  sub_5936E4(v1);
  sub_53A58C((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_7A5074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60)
{
  sub_1F1A8(&a10);
  sub_53A58C(&a25);
  sub_662AC8(&__p);
  sub_53A58C(&a49);
  sub_662AC8(&a60);
  sub_53A58C(&STACK[0x200]);
  sub_662AC8(&STACK[0x258]);
  sub_53A58C(&STACK[0x2C0]);
  sub_662AC8(&STACK[0x318]);
  sub_53A58C(&STACK[0x380]);
  sub_662AC8(&STACK[0x3D8]);
  sub_53A58C((v61 - 208));
  sub_5936E4(v60);
  sub_53A58C((v61 - 136));
  _Unwind_Resume(a1);
}

void sub_7A5220(_Unwind_Exception *a1)
{
  sub_5936E4(v1);
  sub_53A58C((v2 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_7A5240@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[291].n128_u32[0] == 1;
  v5 = a1[174].n128_u8[10];
  v6 = a1[174].n128_u8[9];
  v7 = a1[174].n128_u8[12];
  v8 = sub_67AE94(&a1[192].n128_i64[1]);
  v9 = a1[192].n128_u8[1];
  v10 = a1[192].n128_u8[2] << 40;
  v11 = 0x1000000;
  if (!v8 || !v4)
  {
    v11 = 0;
  }

  v22 = v11 | (v5 << 16) | (v6 << 8) | v7;
  v23 = (v10 | (v9 << 32)) >> 32;
  sub_7AB77C(a1, &a1[170], &v22, &v24);
  sub_6825E0(a2, &v24, 0, 0, 1);
  v12 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v27;
  if (v27)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v24;
  if (v24)
  {
    v17 = v25;
    v18 = v24;
    if (v25 != v24)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v24;
    }

    v25 = v16;
    operator delete(v18);
  }

  sub_4C516C(a2, a1[163].n128_i32[0]);
  sub_681A38(a2, a1 + 165);
  if (a1[174].n128_u8[10])
  {
    v20 = 59;
  }

  else
  {
    v20 = 60;
  }

  sub_68179C(a2, v20);
  sub_6817B4(a2, a1[162].n128_i64[1], 0, a1[162].n128_i64[1]);
  return sub_682A50(a2, a1[192].n128_i8[1]);
}

void sub_7A5414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_7A543C(uint64_t a1)
{
  v2 = *(a1 + 4640);
  v3 = *(a1 + 4656) == 1;
  v4 = *(a1 + 2794);
  v5 = *(a1 + 2793);
  v6 = *(a1 + 2796);
  v7 = sub_67AE94(a1 + 3080);
  v8 = *(a1 + 3073);
  v9 = *(a1 + 3074) << 40;
  v10 = 0x1000000;
  if (!v7 || !v3)
  {
    v10 = 0;
  }

  v11 = v10 | (v4 << 16) | (v5 << 8) | v6;
  v12 = (v9 | (v8 << 32)) >> 32;
  sub_7AD754(a1, v2, &v11, &v13);
}

void sub_7A56A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_7A56B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7A56D0@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  sub_7AEE2C(a1, a1[174].n128_u8[12], &a1[170], &v14);
  sub_6825E0(a2, &v14, 0, 0, 1);
  v4 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v17;
  if (v17)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v14;
  if (v14)
  {
    v9 = v15;
    v10 = v14;
    if (v15 != v14)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v14;
    }

    v15 = v8;
    operator delete(v10);
  }

  sub_4C516C(a2, a1[163].n128_i32[0]);
  sub_681A38(a2, a1 + 165);
  if (a1[174].n128_u8[10])
  {
    v12 = 61;
  }

  else
  {
    v12 = 62;
  }

  sub_68179C(a2, v12);
  return sub_6817B4(a2, a1[162].n128_i64[1], 0, a1[162].n128_i64[1]);
}

void sub_7A5834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7A585C(uint64_t *a1, uint64_t a2)
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

  v15 = 32 * ((a1[1] - *a1) >> 5);
  sub_5F4D20(v15, a2);
  v6 = 1120 * v2 + 1120;
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
      sub_7A5A3C(v12, v11);
      v11 += 1120;
      v12 = v13 + 1120;
    }

    while (v11 != v8);
    do
    {
      sub_5938B0(v7);
      v7 += 1120;
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

void sub_7A59D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7A59E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7A59E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1120;
    sub_5938B0(i - 1120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_7A5A3C(uint64_t a1, uint64_t a2)
{
  sub_608B98(a1, a2);
  v4 = *(a2 + 856);
  *(v3 + 864) = *(a2 + 864);
  *(v3 + 856) = v4;
  *(v3 + 872) = 0;
  *(v3 + 880) = 0u;
  *(v3 + 872) = *(a2 + 872);
  *(v3 + 880) = *(a2 + 880);
  *(a2 + 888) = 0;
  *(a2 + 872) = 0u;
  *(v3 + 896) = *(a2 + 896);
  *(v3 + 904) = *(a2 + 904);
  *(v3 + 912) = *(a2 + 912);
  v5 = *(a2 + 920);
  *(v3 + 936) = *(a2 + 936);
  *(v3 + 920) = v5;
  *(a2 + 928) = 0u;
  *(a2 + 920) = 0;
  v6 = *(a2 + 944);
  *(v3 + 960) = *(a2 + 960);
  *(v3 + 944) = v6;
  *(a2 + 952) = 0u;
  *(a2 + 944) = 0;
  *(v3 + 984) = 0;
  *(v3 + 968) = 0u;
  *(v3 + 968) = *(a2 + 968);
  *(v3 + 976) = *(a2 + 976);
  *(a2 + 984) = 0;
  *(a2 + 968) = 0u;
  v7 = *(a2 + 992);
  *(a2 + 992) = 0;
  *(v3 + 992) = v7;
  *(v3 + 1000) = *(a2 + 1000);
  *(a2 + 1000) = 0;
  v8 = *(a2 + 1008);
  *(v3 + 1008) = v8;
  v9 = *(a2 + 1016);
  *(v3 + 1016) = v9;
  *(v3 + 1024) = *(a2 + 1024);
  if (v9)
  {
    v10 = *(v8 + 8);
    v11 = *(v3 + 1000);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v10 %= v11;
      }
    }

    else
    {
      v10 &= v11 - 1;
    }

    *(v7 + 8 * v10) = v3 + 1008;
    *(a2 + 1008) = 0;
    *(a2 + 1016) = 0;
  }

  *(v3 + 1032) = *(a2 + 1032);
  *(v3 + 1040) = *(a2 + 1040);
  *(v3 + 1056) = 0uLL;
  *(v3 + 1048) = 0;
  *(v3 + 1048) = *(a2 + 1048);
  *(v3 + 1056) = *(a2 + 1056);
  *(a2 + 1064) = 0;
  *(a2 + 1048) = 0uLL;
  v12 = *(a2 + 1072);
  *(a2 + 1072) = 0;
  *(v3 + 1072) = v12;
  *(v3 + 1080) = *(a2 + 1080);
  *(a2 + 1080) = 0;
  v13 = *(a2 + 1088);
  *(v3 + 1088) = v13;
  v14 = *(a2 + 1096);
  *(v3 + 1096) = v14;
  *(v3 + 1104) = *(a2 + 1104);
  if (v14)
  {
    v15 = *(v13 + 8);
    v16 = *(v3 + 1080);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v15 >= v16)
      {
        v15 %= v16;
      }
    }

    else
    {
      v15 &= v16 - 1;
    }

    *(v12 + 8 * v15) = v3 + 1088;
    *(a2 + 1088) = 0;
    *(a2 + 1096) = 0;
  }

  *(v3 + 1112) = *(a2 + 1112);
}

uint64_t sub_7A5C30(uint64_t *a1, uint64_t a2)
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

  v6 = 32 * ((a1[1] - *a1) >> 5);
  sub_7A5A3C(v6, a2);
  v7 = 1120 * v2 + 1120;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      sub_7A5A3C(v12, v11);
      v11 += 1120;
      v12 = v13 + 1120;
    }

    while (v11 != v9);
    do
    {
      sub_5938B0(v8);
      v8 += 1120;
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

uint64_t sub_7A5D94(uint64_t *a1, uint64_t a2)
{
  v2 = 0x77A04C8F8D28AC43 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x4C8F8D28AC42FDLL)
  {
    sub_1794();
  }

  if (0xEF40991F1A515886 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xEF40991F1A515886 * ((a1[2] - *a1) >> 3);
  }

  if ((0x77A04C8F8D28AC43 * ((a1[2] - *a1) >> 3)) >= 0x2647C69456217ELL)
  {
    v5 = 0x4C8F8D28AC42FDLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x4C8F8D28AC42FDLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_608B98(v6, a2);
  v7 = 856 * v2 + 856;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      sub_608B98(v12, v11);
      v11 += 856;
      v12 = v13 + 856;
    }

    while (v11 != v9);
    do
    {
      sub_5936E4(v8);
      v8 += 107;
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

uint64_t sub_7A5EF8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x92492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 6);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 6)) >= 0x49249249249249)
  {
    v5 = 0x92492492492492;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0x92492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v13 = 448 * v2;
  v15 = 0;
  sub_7A6070(448 * v2, a2);
  v14 = 448 * v2 + 448;
  sub_7A6174(a1, &__p);
  v6 = a1[1];
  v7 = v13;
  while (1)
  {
    v8 = v14;
    if (v14 == v7)
    {
      break;
    }

    v9 = (v14 - 448);
    v14 -= 448;
    v10 = *(v8 - 48);
    if (v10)
    {
      *(v8 - 40) = v10;
      operator delete(v10);
    }

    sub_55D550(v9);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_7A605C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7A639C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7A6070(uint64_t a1, uint64_t a2)
{
  v4 = sub_5F046C(a1, a2);
  v5 = *(a2 + 380);
  *(v4 + 396) = *(a2 + 396);
  *(v4 + 380) = v5;
  *(v4 + 408) = 0;
  *(v4 + 416) = 0;
  *(v4 + 400) = 0;
  v7 = *(a2 + 400);
  v6 = *(a2 + 408);
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *(a2 + 424);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 424) = v8;
  return a1;
}

void sub_7A6150(_Unwind_Exception *a1)
{
  v3 = v1[50];
  if (v3)
  {
    v1[51] = v3;
    operator delete(v3);
  }

  sub_55D550(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_7A6174(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = a2[1] + *result - v5;
    v8 = *result;
    do
    {
      *v7 = *v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(v7 + 8) = *(v8 + 8);
      *(v7 + 24) = *(v8 + 24);
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      v10 = *(v8 + 80);
      v9 = *(v8 + 96);
      v11 = *(v8 + 64);
      *(v7 + 112) = *(v8 + 112);
      *(v7 + 80) = v10;
      *(v7 + 96) = v9;
      *(v7 + 64) = v11;
      v12 = *(v8 + 48);
      *(v7 + 32) = *(v8 + 32);
      *(v7 + 48) = v12;
      v13 = *(v8 + 120);
      v14 = *(v8 + 152);
      *(v7 + 136) = *(v8 + 136);
      *(v7 + 120) = v13;
      *(v7 + 152) = v14;
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(v7 + 160) = *(v8 + 160);
      *(v7 + 176) = *(v8 + 176);
      *(v8 + 160) = 0;
      *(v8 + 168) = 0;
      *(v8 + 176) = 0;
      *(v7 + 184) = 0;
      *(v7 + 192) = 0;
      *(v7 + 200) = 0;
      *(v7 + 184) = *(v8 + 184);
      *(v7 + 200) = *(v8 + 200);
      *(v8 + 184) = 0;
      *(v8 + 192) = 0;
      *(v8 + 200) = 0;
      v15 = *(v8 + 208);
      v16 = *(v8 + 240);
      *(v7 + 224) = *(v8 + 224);
      *(v7 + 240) = v16;
      *(v7 + 208) = v15;
      v17 = *(v8 + 272);
      v18 = *(v8 + 288);
      *(v7 + 256) = *(v8 + 256);
      *(v7 + 272) = v17;
      *(v7 + 288) = v18;
      *(v7 + 296) = 0;
      *(v7 + 304) = 0;
      *(v7 + 312) = 0;
      *(v7 + 296) = *(v8 + 296);
      *(v7 + 304) = *(v8 + 304);
      *(v8 + 304) = 0;
      *(v8 + 312) = 0;
      *(v8 + 296) = 0;
      *(v7 + 320) = *(v8 + 320);
      *(v7 + 336) = 0;
      *(v7 + 344) = 0;
      *(v7 + 328) = 0;
      *(v7 + 328) = *(v8 + 328);
      *(v7 + 336) = *(v8 + 336);
      *(v8 + 328) = 0;
      *(v8 + 336) = 0;
      *(v8 + 344) = 0;
      v19 = *(v8 + 352);
      *(v7 + 361) = *(v8 + 361);
      *(v7 + 352) = v19;
      v20 = *(v8 + 380);
      *(v7 + 396) = *(v8 + 396);
      *(v7 + 380) = v20;
      *(v7 + 408) = 0;
      *(v7 + 416) = 0;
      *(v7 + 400) = 0;
      *(v7 + 400) = *(v8 + 400);
      *(v7 + 416) = *(v8 + 416);
      *(v8 + 400) = 0;
      *(v8 + 408) = 0;
      *(v8 + 416) = 0;
      v21 = *(v8 + 424);
      *(v7 + 440) = *(v8 + 440);
      *(v7 + 424) = v21;
      v8 += 448;
      v7 += 448;
    }

    while (v8 != v5);
    do
    {
      v22 = v4[50];
      if (v22)
      {
        v4[51] = v22;
        operator delete(v22);
      }

      result = sub_55D550(v4);
      v4 += 56;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v23 = *v3;
  *v3 = v6;
  v3[1] = v23;
  a2[1] = v23;
  v24 = v3[1];
  v3[1] = a2[2];
  a2[2] = v24;
  v25 = v3[2];
  v3[2] = a2[3];
  a2[3] = v25;
  *a2 = a2[1];
  return result;
}

uint64_t sub_7A639C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 448);
    *(a1 + 16) = i - 448;
    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    sub_55D550(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_7A640C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x92492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 6);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 6)) >= 0x49249249249249)
  {
    v5 = 0x92492492492492;
  }

  else
  {
    v5 = v3;
  }

  v27 = a1;
  if (v5)
  {
    if (v5 <= 0x92492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 448 * v2;
  *v6 = *a2;
  __p = 0;
  v24 = 448 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 80);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = *(a2 + 112);
  v8 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v8;
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  *(v6 + 152) = *(a2 + 152);
  *(v6 + 160) = *(a2 + 160);
  *(v6 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(v6 + 184) = *(a2 + 184);
  *(v6 + 200) = *(a2 + 200);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v9 = *(a2 + 224);
  *(v6 + 208) = *(a2 + 208);
  *(v6 + 224) = v9;
  v10 = *(a2 + 240);
  v11 = *(a2 + 272);
  *(v6 + 256) = *(a2 + 256);
  *(v6 + 272) = v11;
  *(v6 + 240) = v10;
  v12 = *(a2 + 296);
  *(v6 + 288) = *(a2 + 288);
  *(v6 + 296) = v12;
  *(v6 + 304) = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(v6 + 320) = *(a2 + 320);
  *(v6 + 328) = *(a2 + 328);
  v13 = *(a2 + 336);
  v14 = *(a2 + 352);
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 328) = 0;
  *(v6 + 361) = *(a2 + 361);
  *(v6 + 336) = v13;
  *(v6 + 352) = v14;
  v15 = *(a2 + 380);
  *(v6 + 396) = *(a2 + 396);
  *(v6 + 380) = v15;
  *(v6 + 400) = *(a2 + 400);
  *(v6 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  v16 = *(a2 + 424);
  *(v6 + 440) = *(a2 + 440);
  *(v6 + 424) = v16;
  v25 = 448 * v2 + 448;
  v26 = 0;
  sub_7A6174(a1, &__p);
  v17 = a1[1];
  v18 = v24;
  while (1)
  {
    v19 = v25;
    if (v25 == v18)
    {
      break;
    }

    v20 = (v25 - 448);
    v25 -= 448;
    v21 = *(v19 - 48);
    if (v21)
    {
      *(v19 - 40) = v21;
      operator delete(v21);
    }

    sub_55D550(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v17;
}

void sub_7A6688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7A639C(va);
  _Unwind_Resume(a1);
}

void sub_7A669C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  LODWORD(v2) = 0;
  HIBYTE(v4[0]) = 14;
  strcpy(v3, "ROUTES_THROUGH");
  LODWORD(v4[1]) = 1;
  v6 = 9;
  strcpy(v5, "ROUTES_TO");
  LODWORD(v7) = 3;
  v9 = 11;
  strcpy(__p, "ROUTES_FROM");
  LODWORD(v10) = 2;
  xmmword_27A8840 = 0u;
  *algn_27A8850 = 0u;
  dword_27A8860 = 1065353216;
  sub_3A9A34(&xmmword_27A8840, v0);
  sub_3A9A34(&xmmword_27A8840, v3);
  sub_3A9A34(&xmmword_27A8840, v5);
  sub_3A9A34(&xmmword_27A8840, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v5[0]);
  if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
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

void sub_7A98D0(_Unwind_Exception *a1)
{
  if (qword_27A8828)
  {
    qword_27A8830 = qword_27A8828;
    operator delete(qword_27A8828);
  }

  _Unwind_Resume(a1);
}

void sub_7A9B68(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = *(*a1 + 1096);
  v5 = *(*a1 + 1104);
  v6 = *(*a1 + 1112);
  if (v5 == v6)
  {
    v8 = 0;
    v9 = 0;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (v4 != 1)
    {
      goto LABEL_7;
    }

LABEL_11:
    v12 = a3 + 1;
LABEL_12:
    v10 = sub_1CEE8(a3, "Work");
    goto LABEL_13;
  }

  if (a2 == 0xFFFFFFFFLL || a2 >= ((v6 - v5) >> 2))
  {
    v7 = (v6 - 4);
  }

  else
  {
    v7 = sub_7B0234((*a1 + 1104), a2);
  }

  v8 = HIBYTE(*v7) & 1;
  v9 = (*v7 >> 8) & 1;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (v4 == 1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = 0;
  if (v4)
  {
    goto LABEL_14;
  }

  v11 = sub_1CEE8(a3, &v26);
  a3[1] = v11;
  v12 = a3 + 1;
  if (v11 >= a3[2])
  {
    goto LABEL_12;
  }

  *(v11 + 16) = 0x400000000000000;
  *v11 = *"Work";
  v10 = v11 + 24;
  *v12 = v10;
LABEL_13:
  *v12 = v10;
LABEL_14:
  if ((v4 | 2) == 2)
  {
    if (v10 >= a3[2])
    {
      v10 = sub_1CEE8(a3, "Home");
    }

    else
    {
      *(v10 + 16) = 0x400000000000000;
      *v10 = *"Home";
      v10 += 24;
    }

    a3[1] = v10;
  }

  if (v4 == 3 || v4 == 0)
  {
    if (v10 >= a3[2])
    {
      v10 = sub_1CEE8(a3, "ContactWork");
    }

    else
    {
      *v10 = *"ContactWork";
      *(v10 + 16) = 0xB00000000000000;
      v10 += 24;
    }

    a3[1] = v10;
  }

  if ((v4 | 4) == 4)
  {
    if (v10 >= a3[2])
    {
      v10 = sub_1CEE8(a3, "ContactHome");
    }

    else
    {
      *v10 = *"ContactHome";
      *(v10 + 16) = 0xB00000000000000;
      v10 += 24;
    }

    a3[1] = v10;
  }

  if (v4 == 5 || v4 == 0)
  {
    if (v10 >= a3[2])
    {
      v10 = sub_1CEE8(a3, "Other_Contact");
    }

    else
    {
      *v10 = *"Other_Contact";
      *(v10 + 16) = 0xD00000000000000;
      v10 += 24;
    }

    a3[1] = v10;
  }

  if (v4)
  {
    if (v4 == 7)
    {
      goto LABEL_65;
    }

    if (v4 != 6)
    {
      return;
    }
  }

  v15 = &v26;
  if (v8)
  {
    v15 = "Address";
  }

  if (v9)
  {
    v15 = "Business";
  }

  if (((v9 | v8) & 1) != 0 || (SHIBYTE(v28) & 0x80000000) == 0)
  {
    *__p = *v15;
    v25 = *(v15 + 2);
    if (v10 >= a3[2])
    {
LABEL_55:
      v17 = sub_1CEE8(a3, __p);
      goto LABEL_59;
    }
  }

  else
  {
    if (v8)
    {
      v16 = 0;
    }

    else
    {
      v16 = v27;
    }

    sub_325C(__p, *v15, v16);
    v10 = a3[1];
    if (v10 >= a3[2])
    {
      goto LABEL_55;
    }
  }

  if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    v18 = *__p;
    *(v10 + 16) = v25;
    *v10 = v18;
    v17 = v10 + 24;
LABEL_59:
    a3[1] = v17;
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v19 = v10;
  sub_325C(v10, __p[0], __p[1]);
  a3[1] = v19 + 24;
  if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
LABEL_60:
    if (v4)
    {
      return;
    }

    goto LABEL_65;
  }

LABEL_63:
  operator delete(__p[0]);
  if (v4)
  {
    return;
  }

LABEL_65:
  v20 = &v26;
  if (v9)
  {
    v20 = "Business";
  }

  if (v8)
  {
    v20 = "Address";
  }

  if (((v8 | v9) & 1) != 0 || (SHIBYTE(v28) & 0x80000000) == 0)
  {
    *__p = *v20;
    v25 = *(v20 + 2);
    v22 = a3[1];
    if (v22 < a3[2])
    {
      goto LABEL_75;
    }

LABEL_79:
    a3[1] = sub_1CEE8(a3, __p);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_80;
  }

  if (v9)
  {
    v21 = 0;
  }

  else
  {
    v21 = v27;
  }

  sub_325C(__p, *v20, v21);
  v22 = a3[1];
  if (v22 >= a3[2])
  {
    goto LABEL_79;
  }

LABEL_75:
  if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    v23 = *__p;
    *(v22 + 16) = v25;
    *v22 = v23;
    a3[1] = v22 + 24;
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_80;
  }

  sub_325C(v22, __p[0], __p[1]);
  a3[1] = v22 + 24;
  if (SHIBYTE(v25) < 0)
  {
LABEL_80:
    operator delete(__p[0]);
  }
}

void sub_7A9F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1A104(v14);
    _Unwind_Resume(a1);
  }

  sub_1A104(v14);
  _Unwind_Resume(a1);
}

void *sub_7A9FE0(void *a1, uint64_t a2, unsigned int a3)
{
  *a1 = a2;
  sub_7A9B68(a1, a3, a1 + 1);
  return a1;
}

void sub_7AA02C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); v3 != i; v3 = (v3 + 24))
  {
    if (*(v3 + 23) < 0)
    {
      sub_325C(__p, *v3, *(v3 + 1));
    }

    else
    {
      v5 = *v3;
      v12 = *(v3 + 2);
      *__p = v5;
    }

    v6 = SHIBYTE(v12);
    if ((SHIBYTE(v12) & 0x8000000000000000) != 0)
    {
      v6 = __p[1];
      if (__p[1])
      {
        v7 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v7 - __p[1] < 5)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v12 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v7 + 5)
          {
            sub_3244();
          }

LABEL_14:
          operator new();
        }

        v8 = __p[0];
        goto LABEL_17;
      }
    }

    else if (HIBYTE(v12))
    {
      if ((SHIBYTE(v12) - 18) < 5)
      {
        goto LABEL_14;
      }

      v8 = __p;
LABEL_17:
      v9 = v6 + v8;
      v9[4] = 110;
      *v9 = 1734955871;
      v10 = v6 + 5;
      if (SHIBYTE(v12) < 0)
      {
        __p[1] = v6 + 5;
      }

      else
      {
        HIBYTE(v12) = v10 & 0x7F;
      }

      v10[v8] = 0;
    }

    sub_67E77C(a2, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_7AA25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(v14);
  _Unwind_Resume(a1);
}

_BYTE *sub_7AA29C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    operator new();
  }

  if (byte_27A8E1F >= 0)
  {
    v4 = byte_27A8E1F;
  }

  else
  {
    v4 = qword_27A8E10;
  }

  if (v4 + 5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 + 5 >= 0x17)
  {
    operator new();
  }

  v9 = 0uLL;
  __p = 0;
  HIBYTE(v9) = v4 + 5;
  if (v4)
  {
    if (byte_27A8E1F >= 0)
    {
      v6 = &qword_27A8E08;
    }

    else
    {
      v6 = qword_27A8E08;
    }

    memmove(&__p, v6, v4);
  }

  strcpy(&__p + v4, "_Sign");
  sub_67E494(a2, &__p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  return sub_67ECF8(a2, "{ChargeStationName}", a1);
}

void sub_7AA46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7AA4B0(int a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (byte_27A8DEF >= 0)
    {
      v3 = byte_27A8DEF;
    }

    else
    {
      v3 = qword_27A8DE0;
    }

    if (v3 + 5 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v3 + 5 >= 0x17)
    {
      operator new();
    }

    v7 = 0;
    v8 = 0;
    __p = 0;
    HIBYTE(v8) = v3 + 5;
    if (v3)
    {
      if (byte_27A8DEF >= 0)
      {
        v4 = &qword_27A8DD8;
      }

      else
      {
        v4 = qword_27A8DD8;
      }

      memmove(&__p, v4, v3);
    }
  }

  else
  {
    if (xmmword_27A8DC8 >= 0)
    {
      v3 = HIBYTE(xmmword_27A8DC8);
    }

    else
    {
      v3 = xmmword_27A8DC8;
    }

    if (v3 + 5 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v3 + 5 >= 0x17)
    {
      operator new();
    }

    v7 = 0;
    v8 = 0;
    __p = 0;
    HIBYTE(v8) = v3 + 5;
    if (v3)
    {
      if (xmmword_27A8DC8 >= 0)
      {
        v5 = &qword_27A8DC0;
      }

      else
      {
        v5 = qword_27A8DC0;
      }

      memmove(&__p, v5, v3);
    }
  }

  strcpy(&__p + v3, "_Sign");
  sub_67E494(a2, &__p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_7AA6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7AA6E0(uint64_t a1@<X8>)
{
  if (xmmword_27A8DF8 >= 0)
  {
    v2 = HIBYTE(xmmword_27A8DF8);
  }

  else
  {
    v2 = xmmword_27A8DF8;
  }

  if (v2 + 5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v2 + 5 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v5 = 0;
  __p[0] = 0;
  HIBYTE(v5) = v2 + 5;
  if (v2)
  {
    if (xmmword_27A8DF8 >= 0)
    {
      v3 = &qword_27A8DF0;
    }

    else
    {
      v3 = qword_27A8DF0;
    }

    memmove(__p, v3, v2);
  }

  strcpy(__p + v2, "_Sign");
  sub_67E494(a1, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_7AA810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7AA82C(uint64_t a1@<X8>)
{
  v2 = 5376;
  strcpy(__p, "Use_NACS_Adapter_Sign");
  sub_67E494(a1, __p);
  if (SHIBYTE(v2) < 0)
  {
    operator delete(*__p);
  }
}

void sub_7AA8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7AA8C8(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = 183;
  if (a2)
  {
    v5 = 186;
  }

  v6 = &qword_27A8E38;
  if (!a2)
  {
    v6 = &qword_27A8E20;
  }

  v7 = &xmmword_27A8E28 + 15;
  if (a2)
  {
    v7 = &unk_27A8E4F;
  }

  if (*v7 < 0)
  {
    v8 = qword_27A8868[v5];
    v9 = 183;
    if (a2)
    {
      v9 = 186;
    }

    sub_325C(v14, v8, qword_27A8868[v9 + 1]);
  }

  else
  {
    *v14 = *v6;
    v15 = v6[2];
  }

  if (v15 >= 0)
  {
    v10 = HIBYTE(v15);
  }

  else
  {
    v10 = v14[1];
  }

  if (v10 + 5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v10 + 5 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v13 = 0;
  __p[0] = 0;
  HIBYTE(v13) = v10 + 5;
  if (v10)
  {
    if (v15 >= 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = v14[0];
    }

    memmove(__p, v11, v10);
  }

  strcpy(__p + v10, "_Sign");
  sub_67E494(a3, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  sub_994EC(a1, __p);
  sub_67ECF8(a3, "{ConnectorType}", __p);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      return;
    }

LABEL_29:
    operator delete(v14[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_29;
  }
}

void sub_7AAAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(v21);
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  _Unwind_Resume(a1);
}

void sub_7AAB4C(uint64_t a1, int a2, uint64_t a3)
{
  strcpy(&v13, "Discoverability_Prompt");
  *(&v13.__r_.__value_.__s + 23) = unk_22A0657;
  if (*(*a1 + 1520) == 1)
  {
    v11 = 0x600000000000000;
    *__s = *"_Crash";
    v5 = 6;
  }

  else
  {
    v5 = 0;
    HIBYTE(v11) = 0;
    __s[0] = 0;
  }

  std::string::append(&v13, __s, v5);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*__s);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
LABEL_6:
    v6 = 0;
    HIBYTE(v11) = 0;
    __s[0] = 0;
    goto LABEL_9;
  }

  v11 = 0x800000000000000;
  *__s = *"_No_Siri";
  v6 = 8;
LABEL_9:
  std::string::append(&v13, __s, v6);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*__s);
  }

  sub_67E494(&v12, &v13);
  v8 = 0;
  v9 = 0;
  sub_680484(__s, &v12, 1, &v8);
  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (sub_681188(a3))
  {
    operator new();
  }

  sub_680670(a3, 14);
  operator new();
}

void sub_7AB120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_1F1A8(&a9);
  sub_1F1A8(&a13);
  sub_662AC8(&__p);
  sub_53A58C((v24 - 136));
  if ((*(v24 - 41) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*(v24 - 64));
  _Unwind_Resume(a1);
}

void sub_7AB214(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = 0;
  *v31 = 0u;
  v32 = 0u;
  *v30 = 0u;
  v34 = 1065353216;
  v35 = 1;
  memset(&__p, 0, sizeof(__p));
  p_p = &__p;
  v4 = 8;
  if (*(*a1 + 1176) == 2)
  {
    p_p = &__p.__r_.__value_.__r.__words[1];
    __p.__r_.__value_.__r.__words[0] = 0x5F676E696B6C6157;
    *(&__p.__r_.__value_.__s + 23) = 8;
    v4 = 16;
  }

  p_p->__r_.__value_.__r.__words[0] = 0x676E697472617453;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = v4;
    __p.__r_.__value_.__s.__data_[v4] = 0;
    v5 = a1[1];
    v6 = a1[2];
    v23 = a1;
    if (v5 == v6)
    {
      goto LABEL_35;
    }

    while (1)
    {
LABEL_9:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_325C(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v28 = __p;
      }

      if ((*(v5 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v5 + 8))
        {
LABEL_16:
          size = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            size = v28.__r_.__value_.__l.__size_;
            v9 = (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v9 == v28.__r_.__value_.__l.__size_)
            {
              if ((v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

LABEL_21:
              operator new();
            }

            v8 = v28.__r_.__value_.__r.__words[0];
          }

          else
          {
            v8 = &v28;
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) == 22)
            {
              goto LABEL_21;
            }
          }

          v8->__r_.__value_.__s.__data_[size] = 95;
          v10 = size + 1;
          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            v28.__r_.__value_.__l.__size_ = v10;
          }

          else
          {
            *(&v28.__r_.__value_.__s + 23) = v10 & 0x7F;
          }

          v8->__r_.__value_.__s.__data_[v10] = 0;
          v11 = *(v5 + 23);
          if (v11 >= 0)
          {
            v12 = v5;
          }

          else
          {
            v12 = *v5;
          }

          if (v11 >= 0)
          {
            v13 = *(v5 + 23);
          }

          else
          {
            v13 = *(v5 + 8);
          }

          std::string::append(&v28, v12, v13);
        }
      }

      else if (*(v5 + 23))
      {
        goto LABEL_16;
      }

      sub_67E77C(v30, &v28);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v5 += 24;
      if (v5 == v6)
      {
        goto LABEL_35;
      }
    }
  }

  *(&__p.__r_.__value_.__s + 23) = v4;
  __p.__r_.__value_.__s.__data_[v4] = 0;
  v5 = a1[1];
  v6 = a1[2];
  v23 = a1;
  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_35:
  v26 = 0;
  v27 = 0;
  sub_680484(a3, v30, 1, &v26);
  v14 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = a2;
    if (*(a2 + 4) == 1)
    {
LABEL_38:
      sub_7AAB4C(v23, *(v15 + 5), a3);
    }
  }

  else
  {
    v15 = a2;
    if (*(a2 + 4) == 1)
    {
      goto LABEL_38;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    do
    {
      v17 = *v16;
      sub_55F7FC((v16 + 2));
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = v31[1];
  v31[1] = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = v30[0];
  if (v30[0])
  {
    v20 = v30[1];
    v21 = v30[0];
    if (v30[1] != v30[0])
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = v30[0];
    }

    v30[1] = v19;
    operator delete(v21);
  }
}

void sub_7AB5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void **a27)
{
  sub_662AC8(v27);
  if ((a26 & 0x80000000) == 0)
  {
    sub_53A58C(&a27);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_53A58C(&a27);
  _Unwind_Resume(a1);
}

void sub_7AB760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7AB77C(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_7AB214(a1, a3, &v44);
  v8 = nullsub_1(&v44);
  sub_5F0850(&v49, v8);
  v9 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v47;
  if (v47)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = __p;
  __p = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v44;
  if (v44)
  {
    v14 = v45;
    v15 = v44;
    if (v45 != v44)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v44;
    }

    v45 = v13;
    operator delete(v15);
  }

  sub_7ABB34(a3[2], a2, 1, &v44);
  v17 = nullsub_1(&v44);
  sub_5F0850(&v40, v17);
  v18 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = v47;
  if (v47)
  {
    do
    {
      v20 = *v19;
      sub_55F7FC((v19 + 2));
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = __p;
  __p = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = v44;
  if (v44)
  {
    v23 = v45;
    v24 = v44;
    if (v45 != v44)
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = v44;
    }

    v45 = v22;
    operator delete(v24);
  }

  sub_680994(a4, &v49, 14, &v40, 1);
  if (a3[4] == 1)
  {
    sub_7AAB4C(a1, a3[5], a4);
  }

  v26 = v43;
  if (v43)
  {
    do
    {
      v27 = *v26;
      sub_55F7FC((v26 + 2));
      operator delete(v26);
      v26 = v27;
    }

    while (v27);
  }

  v28 = v42;
  v42 = 0;
  if (v28)
  {
    operator delete(v28);
  }

  v29 = v40;
  if (v40)
  {
    v30 = v41;
    v31 = v40;
    if (v41 != v40)
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
      v31 = v40;
    }

    v41 = v29;
    operator delete(v31);
  }

  v33 = v52;
  if (v52)
  {
    do
    {
      v34 = *v33;
      sub_55F7FC((v33 + 2));
      operator delete(v33);
      v33 = v34;
    }

    while (v34);
  }

  v35 = v51;
  v51 = 0;
  if (v35)
  {
    operator delete(v35);
  }

  v36 = v49;
  if (v49)
  {
    v37 = v50;
    v38 = v49;
    if (v50 != v49)
    {
      do
      {
        v39 = *(v37 - 1);
        v37 -= 3;
        if (v39 < 0)
        {
          operator delete(*v37);
        }
      }

      while (v37 != v36);
      v38 = v49;
    }

    v50 = v36;
    operator delete(v38);
  }
}