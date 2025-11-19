void sub_1044818(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1044854(uint64_t a1, unint64_t *a2, unsigned int *a3, signed int *a4, int a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6)
  {
    v12 = a3[50];
    do
    {
      v13 = *(a1 + 8);
      v14 = *a2;
      v15 = *a2 >> 16;
      LODWORD(v23) = v6;
      if (sub_101F374(*v13, HIDWORD(v14) & 0xFFFF0000FFFFFFFFLL | (v15 << 32), &v23))
      {
        v16 = *(a1 + 8);
        v17 = *a2;
        v18 = *a2 >> 16;
        v24 = v6;
        v19 = sub_101F854(*v16, HIDWORD(v17) & 0xFFFF0000FFFFFFFFLL | (v18 << 32), (v17 >> 1) & 1, &v24);
        v23 = v19;
        if (v19)
        {
          v20 = v19 >= 0xFFFFFFFF00000000;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          v21 = *(a1 + 20);
          if (v21 != -1 && v6 == v21)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (sub_10550EC(a1 + 1064, &v23) == -1 && sub_10550EC(*(a1 + 976) + 800, &v23) == -1 && (v6 <= v12 || (sub_106177C(*a1 + 15168, v23, a3, *a4, a5) & 1) == 0))
        {
          if (*(a1 + 3048) == 1 && v6 < *(*(a1 + 3032) + 4360))
          {
            return 0;
          }

          if (*(*a1 + 31329) != 1 || !sub_106177C(*a1 + 15168, v23, a3, *a4, a5))
          {
            return v6;
          }
        }
      }

      v6 = (v6 - 1);
    }

    while (v6);
  }

  return v6;
}

void *sub_10449F8(uint64_t a1, unint64_t a2)
{
  LODWORD(v26[0]) = *(a1 + 4360);
  v28 = sub_101F854(*(a1 + 24), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 >> 1) & 1, v26);
  v4 = HIDWORD(v28);
  if (v28)
  {
    v5 = v4 == 0xFFFFFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v26[0] = 0;
  v26[1] = 0;
  v6 = sub_1059F84(*(a1 + 32), v28, 1);
  if (!v6)
  {
    return 0;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    return 0;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
    return 0;
  }

  v9 = &v6[v8 + *&v6[v8]];
  if (*v9 <= v4)
  {
    return 0;
  }

  v10 = &v9[4 * v4 + 4 + *&v9[4 * v4 + 4]];
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    return 0;
  }

  v12 = *(v11 + 5);
  if (!v12)
  {
    return 0;
  }

  v13 = &v10[v12 + *&v10[v12]];
  v16 = *v13;
  v14 = v13 + 4;
  v15 = v16;
  v17 = &v14[v16];
  v18 = v14;
  if (v16)
  {
    v18 = v14;
    do
    {
      v19 = (v18 + ((4 * v15) & 0x7FFFFFFF8));
      v21 = *v19;
      v20 = v19 + 1;
      v22 = v15 >> 1;
      v15 += ~(v15 >> 1);
      if (v21 >= a2)
      {
        v15 = v22;
      }

      else
      {
        v18 = v20;
      }
    }

    while (v15);
  }

  if (v18 == v17)
  {
    return 0;
  }

  if (*v18 != a2)
  {
    return 0;
  }

  v27 = (v18 - v14) >> 3;
  if (v27 == 0xFFFF)
  {
    return 0;
  }

  v23 = *(a1 + 8);
  v24 = (a1 + 4440);
  sub_1058664(v23, &v28, &v27, v24);
  return v24;
}

uint64_t sub_1044BA0(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 4392));
  sub_1015D8C(v7 + 40, (v7 + 4392), *(v7 + 4368), 0, &__p);
  v44 = a1;
  sub_1043884((a1 + 3), &__p, 0, &v44);
  v4 = (v6 - v5) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = v20 + 1;
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = v10 + 8;
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1052CA0((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = 0;
      *(v29 + 8) = xmmword_2297C80;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = 0;
      *(v37 + 8) = xmmword_2297C80;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_1044F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1044F78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 4385) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[HIDWORD(v17) + 1] + v20[HIDWORD(v17) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 7)
  {
    v12 = v9[3];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_105A56C(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

int *sub_10451B4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 3032);
  v6 = *a2;
  result = sub_1057E78(*(v2 + 8), &v6, (v2 + 4416));
  v4 = *(v2 + 4416);
  v5 = *(v2 + 4424);
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_104527C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 224;
  *(a1 + 16) = -1;
  sub_1045600(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_1045550(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1045600(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = &unk_2290750;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2290750;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = &unk_2290750;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = &unk_2290750;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &unk_2290750;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = &unk_2290750;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = &unk_2290750;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = &unk_2290750;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = &unk_2290750;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = &unk_2290750;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = &unk_2290750;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 552) = &unk_2290750;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 600) = &unk_2290750;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 648) = &unk_2290750;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 696) = &unk_2290750;
  *(a1 + 736) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 744) = &unk_2290750;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  sub_101E350(a1 + 792, (a2 + 224));
  return a1;
}

void sub_1045728(_Unwind_Exception *a1)
{
  sub_4821F8(v2);
  sub_39393C(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_10457EC(int32x2_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, __int32 *a5, __int8 a6, __int32 a7, unsigned int a8, unsigned int a9)
{
  v37 = a8;
  sub_1045D94(a1);
  if (*a2 == a2[1])
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_42;
    }

    sub_19594F8(&__t);
    sub_4A5C(&__t, "p2p_query called with empty origin terminal", 43);
    if ((v36 & 0x10) != 0)
    {
      v20 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v20 = v32;
      }

      v21 = v31;
      v19 = v20 - v31;
      if (v20 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v19 = 0;
        v25 = 0;
LABEL_37:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 1u);
        if (v25 < 0)
        {
          operator delete(__dst);
        }

        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_42;
      }

      v21 = v29;
      v19 = v30 - v29;
      if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_34:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v25 = v19;
    if (!v19)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*a3 == *(a3 + 8))
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&__t);
      sub_4A5C(&__t, "p2p_query called with empty destination terminal", 48);
      if ((v36 & 0x10) != 0)
      {
        v22 = v35;
        if (v35 < v32)
        {
          v35 = v32;
          v22 = v32;
        }

        v21 = v31;
        v19 = v22 - v31;
        if (v22 - v31 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v36 & 8) == 0)
        {
          v19 = 0;
          v25 = 0;
          goto LABEL_37;
        }

        v21 = v29;
        v19 = v30 - v29;
        if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_45:
          sub_3244();
        }
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      v25 = v19;
      if (!v19)
      {
        goto LABEL_37;
      }

LABEL_36:
      memmove(&__dst, v21, v19);
      goto LABEL_37;
    }

LABEL_42:
    v17 = 0x7FFFFFFF00000000;
    v18 = 0xFFFFFFFFLL;
    return v18 | v17;
  }

  v16 = *a5;
  if (*a5 == 0x7FFFFFFF)
  {
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v16 = std::chrono::system_clock::to_time_t(&__t);
  }

  a1[370].i32[0] = v16;
  a1[370].i8[4] = a6;
  a1[371] = a4;
  a1[130].i32[0] = a7;
  if (&a1[146] != a2)
  {
    sub_C70E60(&a1[146], *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  }

  a1[149] = a2[3];
  __t.__d_.__rep_ = a1;
  sub_104A234(&a1[3], a3, 1, &__t);
  a1[122] = &a1[3];
  if (!(*&a1[14] + *&a1[8] + *&a1[20] + *&a1[26] + *&a1[32] + *&a1[38] + *&a1[44] + *&a1[50] + *&a1[56] + *&a1[62] + *&a1[68] + *&a1[74] + *&a1[80] + *&a1[86] + *&a1[92] + *&a1[98]))
  {
    goto LABEL_42;
  }

  sub_10460DC(a1);
  __t.__d_.__rep_ = 0;
  rep = 0;
  v28.__locale_ = 0;
  sub_1046ABC(a1, &__t);
  if (__t.__d_.__rep_)
  {
    rep = __t.__d_.__rep_;
    operator delete(__t.__d_.__rep_);
  }

  sub_10470D0(a1);
  sub_104772C(a1, &v37, a9);
  v18 = *(*&a1[116] + 8);
  v17 = v18 & 0xFFFFFFFF00000000;
  v18 = v18;
  return v18 | v17;
}

void sub_1045D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

double sub_1045D94(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F98[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_10460DC(int32x2_t *a1)
{
  v84 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v2 = *a1;
  v3 = *(*a1 + 1536);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = 8 * v3;
  v5 = *(*a1 + 1552);
  while (1)
  {
    v6 = *(v5 + 4);
    if (*(*&v2 + 1544) != *v5 || *(*&v2 + 1548) != v6)
    {
      if (!*(*&v2 + 1520))
      {
        break;
      }

      if (*(*&v2 + 1512) != *v5 || *(*&v2 + 1516) != v6)
      {
        break;
      }
    }

    v5 += 8;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  v9 = *(*a1 + 1552) + 8 * v3;
  if (v5 == v9)
  {
LABEL_14:
    v10 = *(*&v2 + 1792);
    v11 = *(*&v2 + 1696);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_87:
    v13 = v10;
    goto LABEL_88;
  }

  v15 = 0;
  v16 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v78 = _Q0;
  do
  {
    v21 = HIDWORD(*v5) & 0x40000000;
    v22 = *v5 < 0 && v21 == 0;
    v23 = (*v5 >> 33) & 0x10000000 | HIDWORD(*v5) & 0xFFFFFFF;
    if (v22)
    {
      v24 = 0x40000000;
    }

    else
    {
      v24 = 0;
    }

    LODWORD(v80) = *v5;
    HIDWORD(v80) = v23 | (v21 >> 1) | v24;
    if (v84 && ((v25 = *a1, v26 = a1[371], sub_F92868((*a1 + 8), *v5, v85), v86 = 0u, v87 = 0u, v88 = v78, v89 = 0x3FF0000000000000, v90 = 1, sub_10B9C08((*&v25 + 192), &v86, v85, 0x3B9ACA00u, v26), (v90 & 1) == 0) || (v28 = sub_F8634C(&v86, &v88, v27), v87 + v28 == -1) || DWORD1(v87) + HIDWORD(v28) == 0x7FFFFFFF || *(&v87 + 1) + v29 == 0x7FFFFFFFFFFFFFFFLL))
    {
      __src = v16;
      v30 = sub_101E508(*&a1[1]);
      if (v30 - 1 <= v84 || (v31 = *a1, v32 = a1[371], v33 = a1[370].i8[4], LODWORD(v86) = v30 - 1, v34 = sub_101F854(*(*&v31 + 224), v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) == 0, &v86), (sub_1063C18(*&v31 + 240, v34, v32, a1[370].i32[0], v33) & 1) != 0) || (LODWORD(v86) = v30 - 1, v35 = sub_101F854(*(*&v31 + 224), v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) != 0, &v86), (sub_1063C18(*&v31 + 240, v35, v32, a1[370].i32[0], v33) & 1) != 0))
      {
        sub_101F030(&a1[132], &v80, &v84);
        sub_105B98C(a1 + 132);
        LODWORD(v86) = v84 - 1;
        sub_101F030(&a1[356], &v80, &v86);
        sub_105B98C(a1 + 356);
        v36 = a1[1];
        LODWORD(v86) = v84;
        v37 = sub_101F854(*v36, v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) == 0, &v86);
        v16 = __src;
        if (__src == v15 || v15[-1].i64[1] != v37)
        {
          if (v15 >= v83)
          {
            v38 = v15 - __src;
            v39 = (v15 - __src) >> 3;
            v40 = v39 + 1;
            if ((v39 + 1) >> 61)
            {
              sub_1794();
            }

            v41 = v83 - __src;
            if ((v83 - __src) >> 2 > v40)
            {
              v40 = v41 >> 2;
            }

            if (v41 >= 0x7FFFFFFFFFFFFFF8)
            {
              v42 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v40;
            }

            if (v42)
            {
              if (!(v42 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v39) = v37;
            v15 = (8 * v39 + 8);
            memcpy(0, __src, v38);
            __p = 0;
            v82 = v15;
            v83 = 0;
            v16 = 0;
          }

          else
          {
            v15->i64[0] = v37;
            v15 = (v15 + 8);
          }

          v82 = v15;
        }

        v43 = a1[1];
        LODWORD(v86) = v84;
        v44 = sub_101F854(*v43, v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) != 0, &v86);
        if (v15[-1].i64[1] != v44)
        {
          if (v15 >= v83)
          {
            v45 = v15 - v16;
            v46 = (v15 - v16) >> 3;
            v47 = v46 + 1;
            if ((v46 + 1) >> 61)
            {
              sub_1794();
            }

            v48 = v83 - v16;
            if ((v83 - v16) >> 2 > v47)
            {
              v47 = v48 >> 2;
            }

            if (v48 >= 0x7FFFFFFFFFFFFFF8)
            {
              v49 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              if (!(v49 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v46) = v44;
            v15 = (8 * v46 + 8);
            memcpy(0, v16, v45);
            __p = 0;
            v82 = v15;
            v83 = 0;
            v16 = 0;
          }

          else
          {
            v15->i64[0] = v44;
            v15 = (v15 + 8);
          }

          v82 = v15;
        }
      }

      else
      {
        LODWORD(v86) = v30 - 2;
        sub_101F030(&a1[356], &v80, &v86);
        v16 = __src;
        sub_105B98C(a1 + 356);
      }
    }

    else
    {
      LODWORD(v86) = 0;
      sub_101F030(&a1[132], &v80, &v86);
      sub_105B98C(a1 + 132);
    }

    for (v5 += 8; v5 != v9; v5 += 8)
    {
      v50 = *(v5 + 4);
      if (*(*&v2 + 1544) != *v5 || *(*&v2 + 1548) != v50)
      {
        if (!*(*&v2 + 1520))
        {
          break;
        }

        if (*(*&v2 + 1512) != *v5 || *(*&v2 + 1516) != v50)
        {
          break;
        }
      }
    }
  }

  while (v5 != v9);
  v2 = *a1;
  v10 = *(*a1 + 1792);
  v11 = *(*a1 + 1696);
  if (!v11)
  {
    goto LABEL_87;
  }

LABEL_15:
  v12 = 88 * v11;
  v13 = v10;
  while (1)
  {
    v14 = v13[4];
    if ((*(*&v2 + 1736) != v14 || *(*&v2 + 1776) != v13[9] || ((v13[10] ^ *(*&v2 + 1784)) & 0x1FFFFFFFFFFFFFFFLL) != 0) && (!*(*&v2 + 1680) || *(*&v2 + 1624) != v14 || *(*&v2 + 1664) != v13[9] || ((v13[10] ^ *(*&v2 + 1672)) & 0x1FFFFFFFFFFFFFFFLL) != 0))
    {
      break;
    }

    v13 += 11;
    v12 -= 88;
    if (!v12)
    {
      goto LABEL_114;
    }
  }

LABEL_88:
  v53 = &v10[11 * v11];
  if (v13 != v53)
  {
    do
    {
      v54 = v13[4];
      v55 = HIDWORD(v54) & 0x40000000;
      if (v54 < 0 && v55 == 0)
      {
        v57 = 0x40000000;
      }

      else
      {
        v57 = 0;
      }

      *&v86 = v13[4] | (((v13[10] >> 25) & 0x80000000 | HIDWORD(v54) & 0xFFFFFFF | (v54 >> 33) & 0x10000000 | (v55 >> 1) | v57) << 32);
      LODWORD(v85[0]) = 0;
      sub_101F030(&a1[132], &v86, v85);
      sub_105B98C(a1 + 132);
      v58 = v13[9];
      v59 = HIDWORD(v58) & 0x40000000;
      if (v58 < 0 && v59 == 0)
      {
        v61 = 0x40000000;
      }

      else
      {
        v61 = 0;
      }

      *&v86 = v13[9] | (((v13[10] >> 26) & 0x80000000 | HIDWORD(v58) & 0xFFFFFFF | (v58 >> 33) & 0x10000000 | (v59 >> 1) | v61) << 32);
      LODWORD(v85[0]) = 0;
      sub_101F030(&a1[132], &v86, v85);
      sub_105B98C(a1 + 132);
      for (v13 += 11; v13 != v53; v13 += 11)
      {
        v62 = v13[4];
        if ((*(*&v2 + 1736) != v62 || *(*&v2 + 1776) != v13[9] || ((v13[10] ^ *(*&v2 + 1784)) & 0x1FFFFFFFFFFFFFFFLL) != 0) && (!*(*&v2 + 1680) || *(*&v2 + 1624) != v62 || *(*&v2 + 1664) != v13[9] || ((v13[10] ^ *(*&v2 + 1672)) & 0x1FFFFFFFFFFFFFFFLL) != 0))
        {
          break;
        }
      }
    }

    while (v13 != v53);
    v2 = *a1;
  }

LABEL_114:
  for (i = *(sub_F931AC(*&v2 + 8) + 16); i; i = *i)
  {
    v64 = i[2];
    v65 = HIDWORD(v64) & 0x40000000;
    if (v64 < 0 && v65 == 0)
    {
      v67 = 0x40000000;
    }

    else
    {
      v67 = 0;
    }

    LODWORD(v86) = i[2];
    DWORD1(v86) = (v64 >> 33) & 0x10000000 | HIDWORD(v64) & 0xFFFFFFF | (v65 >> 1) | v67;
    LODWORD(v85[0]) = 0;
    sub_101F030(&a1[132], &v86, v85);
    sub_105B98C(a1 + 132);
  }

  v69 = __p;
  v68 = v82;
  v70 = 126 - 2 * __clz((v82 - __p) >> 3);
  if (v82 == __p)
  {
    v71 = 0;
  }

  else
  {
    v71 = v70;
  }

  sub_2D31D4(__p, v82, &v86, v71, 1);
  if (v68 == v69)
  {
LABEL_143:
    if (v69 != v68)
    {
      v82 = v69;
    }
  }

  else
  {
    v72 = &v69[-1].i32[2];
    while (v72 + 4 != v68)
    {
      v73 = v72[2];
      v72 += 2;
      LODWORD(v74) = v72[2];
      if (v73 == v74 && v72[1] == v72[3])
      {
        v76 = (v72 + 4);
        if (v72 + 4 != v68)
        {
          do
          {
            if (v74 != v76->i32[0] || v72[1] != v76->i32[1])
            {
              v74 = v76->i64[0];
              *(v72 + 1) = v76->i64[0];
              v72 += 2;
            }

            v76 = (v76 + 8);
          }

          while (v76 != v68);
          v68 = v82;
        }

        v69 = (v72 + 2);
        goto LABEL_143;
      }
    }
  }

  sub_10625E0((*a1 + 240), &__p, *&a1[371], a1[370].i32[0], a1[370].i8[4], 4u);
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }
}

void sub_1046A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    v16 = a1;
    operator delete(__p);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_1046ABC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 1176);
  v3 = *(a1 + 1168);
  v65 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
  if (v65 >> 30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v61 = sub_2D390(exception, "The source terminal of a query cannot have more than (2^30 - 1) nodes.", 0x46uLL);
  }

  if (v2 != v3)
  {
    v5 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v67 = _Q0;
    do
    {
      v10 = (*(a1 + 1168) + 96 * v5);
      v11 = *a1;
      v12 = **a1;
      if (*(v12 + 7774) == 1)
      {
        v14 = *v10;
        v13 = v10[1];
        v15 = sub_2AF704(v12 + 3896, *v10, 1);
        if (!v15)
        {
          goto LABEL_4;
        }

        v16 = &v15[-*v15];
        if (*v16 < 5u)
        {
          goto LABEL_4;
        }

        v17 = *(v16 + 2);
        if (!v17 || *&v15[v17 + *&v15[v17]] <= (v13 & 0xFFFFFFF) || !sub_2B817C(v12, v14 & 0xF0000000FFFFFFFFLL | ((v13 & 0xFFFFFFF) << 32)))
        {
          goto LABEL_4;
        }

        v11 = *a1;
      }

      v18 = *(a1 + 2968);
      v71 = 0u;
      v72 = 0u;
      v73 = v67;
      v74 = 0x3FF0000000000000;
      LOBYTE(v75) = 1;
      sub_10B9770(v11 + 24, &v71, v10, (v10 + 2), v18, 1, 1);
      if (v75)
      {
        v20 = sub_F8634C(&v71, &v73, v19);
        v64 = v72 + v20;
        if (v72 + v20 != -1)
        {
          v63 = DWORD1(v72) + HIDWORD(v20);
          if (DWORD1(v72) + HIDWORD(v20) != 0x7FFFFFFF)
          {
            v21 = v10[2];
            sub_F92948((*a1 + 8), *v10, 0, (a1 + 2976));
            v22 = -1171354717 * ((*(a1 + 2984) - *(a1 + 2976)) >> 3);
            if (v22)
            {
              v23 = 0;
              v24 = 0;
              v66 = 1000000000 - v21;
              v25 = 88 * v22;
              while (2)
              {
                v26 = *(a1 + 2976);
                v27 = *(a1 + 2960);
                v28 = *a1;
                v29 = *(a1 + 2968);
                if (*(*a1 + 1474) == 1)
                {
                  if (sub_100A224(v28 + 195, (v26 + v23)) != -1)
                  {
                    goto LABEL_17;
                  }

                  v30 = *(v26 + v23 + 32);
                  v31 = HIDWORD(v30) & 0x40000000;
                  _ZF = v30 < 0 && v31 == 0;
                  v33 = _ZF ? 0x40000000 : 0;
                  *&v71 = v30 | ((HIDWORD(v30) & 0x6FFFFFFF | (((v33 | (v31 >> 1)) == 0x40000000) << 31)) << 32);
                  if (sub_100B6E4((v28 + 185), &v71) != -1)
                  {
                    goto LABEL_17;
                  }
                }

                v71 = 0u;
                v72 = 0u;
                v73 = v67;
                v74 = 0x3FF0000000000000;
                LOBYTE(v75) = 1;
                sub_10BC914(v28 + 24, &v71, (v26 + v23), v66, v29);
                if ((v75 & 1) == 0)
                {
                  goto LABEL_17;
                }

                v35 = sub_F8634C(&v71, &v73, v34);
                if (v72 + v35 == -1 || DWORD1(v72) + HIDWORD(v35) == 0x7FFFFFFF)
                {
                  goto LABEL_17;
                }

                v36 = v26 + v23;
                v37 = (DWORD1(v72) + HIDWORD(v35) + v63);
                v38 = *(a1 + 2964);
                *&v71 = (v72 + v35 + v64) | (v37 << 32);
                DWORD2(v71) = v27;
                BYTE12(v71) = v38;
                v39 = *(v26 + v23 + 32);
                v40 = HIDWORD(v39) & 0x40000000;
                if (v39 < 0 && v40 == 0)
                {
                  v42 = 0x40000000;
                }

                else
                {
                  v42 = 0;
                }

                *&v72 = *(v26 + v23 + 32) | (((*(v26 + v23 + 80) >> 25) & 0x80000000 | HIDWORD(v39) & 0xFFFFFFF | (v39 >> 33) & 0x10000000 | (v40 >> 1) | v42) << 32);
                v43 = *(v36 + 72);
                v44 = HIDWORD(v43) & 0x40000000;
                if (v43 < 0 && v44 == 0)
                {
                  v46 = 0x40000000;
                }

                else
                {
                  v46 = 0;
                }

                *(&v72 + 1) = *(v36 + 72) | (((*(v36 + 80) >> 26) & 0x80000000 | HIDWORD(v43) & 0xFFFFFFF | (v43 >> 33) & 0x10000000 | (v44 >> 1) | v46) << 32);
                *&v73 = *(v36 + 80);
                v75 = v24;
                v76 = 0;
                v77 = v5 | 0x80000000;
                v47 = *(v36 + 72);
                v48 = HIDWORD(v47) & 0x40000000;
                if (v47 < 0 && v48 == 0)
                {
                  v50 = 0x40000000;
                }

                else
                {
                  v50 = 0;
                }

                v68 = *(v36 + 72) | ((HIDWORD(v47) & 0xFFFFFFF | (*(v36 + 80) >> 26) & 0x80000000 | (v47 >> 33) & 0x10000000 | (v48 >> 1) | v50) << 32);
                v51 = *(a1 + 1044);
                if (v51 == 0x7FFFFFFF)
                {
LABEL_60:
                  sub_104C048(a1 + 1200, &v68, &v71);
                  v56 = *(v36 + 72);
                  v57 = HIDWORD(v56) & 0x40000000;
                  if (v56 < 0 && v57 == 0)
                  {
                    v59 = 0x40000000;
                  }

                  else
                  {
                    v59 = 0;
                  }

                  v69[0] = (*(v36 + 72) | ((HIDWORD(v56) & 0xFFFFFFF | (*(v36 + 80) >> 26) & 0x80000000 | (v56 >> 33) & 0x10000000 | (v57 >> 1) | v59) << 32));
                  LODWORD(v68) = 0;
                  sub_101F030(a1 + 1056, v69, &v68);
                  sub_105A9CC((a1 + 1056), a2);
                  sub_105B98C((a1 + 1056));
LABEL_17:
                  ++v24;
                  v23 += 88;
                  if (v25 == v23)
                  {
                    goto LABEL_4;
                  }

                  continue;
                }

                break;
              }

              sub_105A854(a1 + 1200, &v68, v69);
              if (v69[0])
              {
                sub_105A854(a1 + 1200, &v68, v69);
                v52 = *(*(a1 + 1968) + 80 * *(v70 + 8) + 8);
                if (v71 == v52)
                {
                  if (SDWORD1(v71) >= SHIDWORD(v52))
                  {
                    goto LABEL_60;
                  }
                }

                else if (v71 >= v52)
                {
                  goto LABEL_60;
                }

                sub_105A854(a1 + 1200, &v68, v69);
                v53 = *(*(a1 + 1968) + 80 * *(v70 + 8) + 12);
                v54 = *(a1 + 1044);
                if (v54 >= v53 && v37 > v51)
                {
                  v55 = -1;
LABEL_59:
                  *(a1 + 1048) += v55;
                  goto LABEL_60;
                }

                if (v54 >= v53)
                {
                  goto LABEL_60;
                }
              }

              if (v37 > v51)
              {
                goto LABEL_60;
              }

              v55 = 1;
              goto LABEL_59;
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v65);
  }
}

void sub_10470D0(uint64_t a1)
{
  v52 = -1431655765 * ((*(a1 + 1176) - *(a1 + 1168)) >> 5);
  if (v52)
  {
    v2 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v61 = _Q0;
    while (1)
    {
      v55 = v2;
      v6 = (*(a1 + 1168) + 96 * v2);
      if (*(a1 + 3048) == 1)
      {
        sub_104C2AC(a1, v6);
      }

      sub_105C338(*(a1 + 976) + 24, v6, &v63);
      if (v63)
      {
        v60 = *(v6 + 2);
        v7 = *a1;
        v8 = *(a1 + 2968);
        v63 = 0u;
        v64 = 0u;
        v65 = v61;
        v66 = 0x3FF0000000000000;
        v67 = 1;
        sub_10B9770((v7 + 192), &v63, v6, (v6 + 1), v8, 1, 1);
        if (v67)
        {
          v10 = sub_F8634C(&v63, &v65, v9);
          v54 = v64 + v10;
          if (v64 + v10 != -1)
          {
            v53 = DWORD1(v64) + HIDWORD(v10);
            if (DWORD1(v64) + HIDWORD(v10) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      v2 = v55 + 1;
      if (v55 + 1 == v52)
      {
        return;
      }
    }

    sub_105C338(*(a1 + 976) + 24, v6, &v63);
    v12 = *(*(&v64 + 1) + 8);
    v11 = *(*(&v64 + 1) + 16);
    for (i = v11; ; v11 = i)
    {
      if (v12 == v11)
      {
        goto LABEL_3;
      }

      v59 = v12;
      v13 = (**(a1 + 976) + 32 * *v12);
      v14 = -1431655765 * ((v13[1] - *v13) >> 5);
      if (v14)
      {
        break;
      }

LABEL_11:
      v12 = v59 + 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = (*v13 + 96 * v15);
      if (*v16 != *v6)
      {
        goto LABEL_15;
      }

      if (v16[1] != *(v6 + 1))
      {
        goto LABEL_15;
      }

      v17 = v16[2];
      v18 = *a1;
      v19 = *(a1 + 2968);
      v63 = 0u;
      v64 = 0u;
      v65 = v61;
      v66 = 0x3FF0000000000000;
      v67 = 1;
      sub_10B9770((v18 + 192), &v63, v16, (v16 + 2), v19, 1, 1);
      if ((v67 & 1) == 0)
      {
        goto LABEL_15;
      }

      LODWORD(v20) = v63;
      v21 = *&v65 * v20;
      if (v21 >= 0.0)
      {
        if (v21 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) + 1;
      }

      else
      {
        if (v21 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
      }

      v21 = (v22 >> 1);
LABEL_25:
      v23 = *(&v65 + 1) * SDWORD1(v63);
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v24 = (v23 + v23) + 1;
          goto LABEL_30;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
        v23 = (v24 >> 1);
      }

      if (v64 + v21 == -1 || DWORD1(v64) + v23 == 0x7FFFFFFF || v17 < v60)
      {
        goto LABEL_15;
      }

      v57 = DWORD1(v64) + v23;
      v58 = v64 + v21;
      v27 = *a1;
      v28 = *(a1 + 2968);
      if (*(*a1 + 1474) == 1)
      {
        v29 = *v6;
        v30 = *(v6 + 1) & 0xFFFFFFF | (((*(v6 + 1) >> 28) & 3) << 29) | (((*(v6 + 1) & 0x60000000) == 0x40000000) << 31);
        v31 = *(v27 + 1536) - 1;
        v32 = 0x2127599BF4325C37 * (((v30 >> 29) & 2 | (v30 >> 31) | (v30 >> 27) & 4 | (v29 << 32) | (8 * (v30 & 0xFFFFFFF))) ^ (((v29 << 32) | (8 * (v30 & 0xFFFFFFF))) >> 23));
        v33 = *(v27 + 1552);
        v34 = *(v27 + 1544);
        v35 = *(v27 + 1548);
        v36 = (v32 ^ (v32 >> 47)) & v31;
        v38 = *(v33 + 8 * v36);
        v37 = *(v33 + 8 * v36 + 4);
        if (v34 != v38 || v35 != v37)
        {
          if (*(v27 + 1520))
          {
            v40 = 1;
            while (*(v27 + 1512) == v38 && *(v27 + 1516) == v37 || v38 != v29 || v37 != v30)
            {
              v36 = (v36 + v40) & v31;
              v38 = *(v33 + 8 * v36);
              v37 = *(v33 + 8 * v36 + 4);
              ++v40;
              if (v34 == v38 && v35 == v37)
              {
                goto LABEL_63;
              }
            }
          }

          else
          {
            v42 = 1;
            while (v38 != v29 || v37 != v30)
            {
              v36 = (v36 + v42) & v31;
              v38 = *(v33 + 8 * v36);
              v37 = *(v33 + 8 * v36 + 4);
              ++v42;
              if (v34 == v38 && v35 == v37)
              {
                goto LABEL_63;
              }
            }
          }

          if (v36 != -1)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_63:
      sub_F92868((v27 + 8), *v6 | ((HIDWORD(*v6) & 0xFFFFFFF | (*v6 >> 31) & 0x60000000 | (((*v6 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v62);
      v63 = 0u;
      v64 = 0u;
      v65 = v61;
      v66 = 0x3FF0000000000000;
      v67 = 1;
      sub_10B9C08((v27 + 192), &v63, v62, v17 - v60, v28);
      if (v67)
      {
        LODWORD(v44) = v63;
        v45 = *&v65 * v44;
        if (v45 >= 0.0)
        {
          if (v45 < 4.50359963e15)
          {
            v46 = (v45 + v45) + 1;
LABEL_69:
            v45 = (v46 >> 1);
          }
        }

        else if (v45 > -4.50359963e15)
        {
          v46 = (v45 + v45) - 1 + (((v45 + v45) - 1) >> 63);
          goto LABEL_69;
        }

        v47 = *(&v65 + 1) * SDWORD1(v63);
        if (v47 >= 0.0)
        {
          if (v47 < 4.50359963e15)
          {
            v48 = (v47 + v47) + 1;
LABEL_75:
            v47 = (v48 >> 1);
          }
        }

        else if (v47 > -4.50359963e15)
        {
          v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
          goto LABEL_75;
        }

        v49 = v64 + v45;
        v50 = DWORD1(v64) + v47;
        if (v49 != -1 && v50 != 0x7FFFFFFF)
        {
          LODWORD(v63) = v58 + v54 + v49;
          DWORD1(v63) = v57 + v53 + v50;
          sub_104BD90(a1, v6, &v63, *v59, v55, v15, 1, 0);
        }
      }

LABEL_15:
      if (++v15 == v14)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_104772C(void *****a1, unsigned int *a2, unsigned int a3)
{
  if (*(*a1 + 1472) == 1 && sub_6EECC())
  {
    v6 = sub_101E508(a1[1]) - 1;
  }

  else
  {
    v6 = 0;
  }

  if (*a2 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a2;
  }

  if (*a2 != -1)
  {
    v6 = v7;
  }

  v86 = v6;
  v87 = v6;
  if (*(a1 + 518))
  {
    v81 = (a1 + 375);
    v8 = -1;
    do
    {
      if (((a1[250] - a1[249]) >> 2) >= a3)
      {
        return;
      }

      v9 = &a1[246][10 * *a1[253]];
      v96[0] = *v9;
      v10 = v9[3];
      v11 = v9[4];
      v12 = v9[2];
      v96[1] = v9[1];
      v96[3] = v10;
      v97 = v11;
      v96[2] = v12;
      sub_1032874((a1 + 150));
      v13 = **a1;
      if (*(v13 + 7774) == 1)
      {
        v14 = LODWORD(v96[0]);
        v15 = DWORD1(v96[0]);
        if ((v16 = sub_2AF704(v13 + 3896, v96[0], 1)) == 0)
        {
          continue;
        }

        v17 = &v16[-*v16];
        if (*v17 < 5u || (v18 = *(v17 + 2)) == 0 || *&v16[v18 + *&v16[v18]] <= (v15 & 0xFFFFFFFu) || !sub_2B817C(v13, v14 & 0xF0000000FFFFFFFFLL | ((v15 & 0xFFFFFFF) << 32)))
        {
          continue;
        }
      }

      if (*(a1 + 1052) != 1 || sub_2B8438(**a1, LODWORD(v96[0]) | ((DWORD1(v96[0]) & 0xFFFFFFF) << 32)))
      {
        v19 = DWORD2(v97);
        v20 = *(a1 + 260);
        if (v20 != -1 && DWORD2(v96[0]) > v20 || *(a1 + 3048) == 1 && sub_104A7B0(a1, v96 + 2))
        {
          return;
        }

        v21 = *(a1 + 261);
        if (v21 != 0x7FFFFFFF && SHIDWORD(v96[0]) <= v21)
        {
          --*(a1 + 262);
        }

        if (*(a1 + 756) == -1 || (v22 = a1[1], LODWORD(v88) = *(a1 + 756), !sub_101F374(*v22, *&v96[0] & 0xFFFFFFFFFFFFFFFLL, &v88)))
        {
          v80 = v19 & 0x7FFFFFFF;
          v85 = sub_104A9B4(a1, v96, v96 + 2, v19 & 0x7FFFFFFF);
          v23 = *(a1 + 740);
          v24 = 0x7FFFFFFF;
          if (v23 != 0x7FFFFFFF)
          {
            if (v96[0] < 0)
            {
              v25 = -5;
            }

            else
            {
              v25 = 5;
            }

            v24 = SHIDWORD(v96[0]) / 10 + v23 + (((103 * (v25 + SHIDWORD(v96[0]) % 10)) >> 15) & 1) + ((103 * (v25 + SHIDWORD(v96[0]) % 10)) >> 10);
          }

          v84 = v24;
          v26 = sub_394BD0();
          v27 = &v87;
          if (v26)
          {
            v27 = &v86;
          }

          v28 = *v27 >= v85 ? &v85 : v27;
          v29 = sub_104AD7C(a1, v96, a1[371], &v84, *(a1 + 2964), v28);
          v30 = v29;
          if (v29 != -1)
          {
            if (v29)
            {
              v53 = a1[1];
              LODWORD(v88) = v29;
              v54 = sub_101F854(*v53, *&v96[0] & 0xFFFFFFFFFFFFFFFLL, (*&v96[0] & 0x1000000000000000) == 0, &v88);
              v83 = v54;
              if (!v54)
              {
                continue;
              }

              if (v54 > 0xFFFFFFFEFFFFFFFFLL)
              {
                continue;
              }

              v79 = *(a1 + 2964);
              sub_1061D68(*a1 + 30, *&v96[0], v30, 0, a1[371], v84, v79, v81);
              if (a1[375] == a1[376])
              {
                continue;
              }

              sub_585C38((a1 + 260), &v83, &v88);
              v55 = v88;
              if (v90 == 1)
              {
                v56 = *(v88 + 8) + 12 * v89;
                *v56 = v83;
                *(v56 + 8) = 0x7FFFFFFF;
              }

              v57 = *(v55 + 8) + 12 * v89;
              v60 = *(v57 + 8);
              v58 = (v57 + 8);
              v59 = v60;
              if (v60 == 0x7FFFFFFF || SHIDWORD(v96[0]) < v59)
              {
                *v58 = HIDWORD(v96[0]);
              }

              v61 = -858993459 * ((a1[376] - a1[375]) >> 3);
              if (v61)
              {
                v62 = 0;
                v63 = 0;
                v64 = 40 * v61;
                do
                {
                  v65 = *v81 + v62;
                  v66 = *(v65 + 28);
                  v67 = v66 & 0xFFFFFFFF00000000;
                  if (v66 != -1 && v67 != 0x7FFFFFFF00000000)
                  {
                    v88 = (v67 + *(&v96[0] + 1)) & 0xFFFFFFFF00000000 | (v66 + DWORD2(v96[0]));
                    LODWORD(v89) = v84;
                    BYTE4(v89) = v79;
                    *&v91 = 0;
                    v90 = 0uLL;
                    v93 = v63;
                    v94 = v30;
                    v95 = v80;
                    v69 = *(v65 + 8);
                    v70 = *(v65 + 1);
                    v90 = *v65;
                    v91 = v70;
                    v92 = v69;
                    v82 = *(v65 + 1);
                    sub_104A674(a1, &v82, &v88);
                  }

                  ++v63;
                  v62 += 40;
                }

                while (v64 != v62);
              }
            }

            else
            {
              if ((a1[381] & 1) == 0)
              {
                sub_104AED8(a1, v96, v96 + 2, v80);
              }

              sub_F92948(*a1 + 8, *&v96[0], 0, a1 + 372);
              v31 = -1171354717 * ((a1[373] - a1[372]) >> 3);
              if (v31)
              {
                v32 = 0;
                v33 = 0;
                v34 = 88 * v31;
                do
                {
                  v35 = a1[372];
                  v36 = sub_104B508(*a1, &v35[v32 / 8], a1[371]);
                  v37 = v36 & 0xFFFFFFFF00000000;
                  if (v36 != -1 && v37 != 0x7FFFFFFF00000000)
                  {
                    v39 = &v35[v32 / 8];
                    v40 = v35[v32 / 8 + 9];
                    v41 = HIDWORD(v40) & 0x40000000;
                    if (v40 < 0 && v41 == 0)
                    {
                      v43 = 0x40000000;
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v83 = v35[v32 / 8 + 9] | ((HIDWORD(v40) & 0xFFFFFFF | (v35[v32 / 8 + 10] >> 26) & 0x80000000 | (v40 >> 33) & 0x10000000 | (v41 >> 1) | v43) << 32);
                    v44 = *(a1 + 2964);
                    v88 = (*(&v96[0] + 1) + v37) & 0xFFFFFFFF00000000 | (DWORD2(v96[0]) + v36);
                    LODWORD(v89) = v84;
                    BYTE4(v89) = v44;
                    v45 = v39[4];
                    v46 = HIDWORD(v45) & 0x40000000;
                    if (v45 < 0 && v46 == 0)
                    {
                      v48 = 0x40000000;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    *&v90 = v39[4] | (((v39[10] >> 25) & 0x80000000 | HIDWORD(v45) & 0xFFFFFFF | (v45 >> 33) & 0x10000000 | (v46 >> 1) | v48) << 32);
                    v49 = v39[9];
                    v50 = HIDWORD(v49) & 0x40000000;
                    if (v49 < 0 && v50 == 0)
                    {
                      v52 = 0x40000000;
                    }

                    else
                    {
                      v52 = 0;
                    }

                    *(&v90 + 1) = v39[9] | (((v39[10] >> 26) & 0x80000000 | HIDWORD(v49) & 0xFFFFFFF | (v49 >> 33) & 0x10000000 | (v50 >> 1) | v52) << 32);
                    *&v91 = v39[10];
                    v93 = v33;
                    v94 = 0;
                    v95 = v80;
                    sub_104A674(a1, &v83, &v88);
                  }

                  ++v33;
                  v32 += 88;
                }

                while (v34 != v32);
              }
            }

            v71 = *(a1 + 261);
            if (v71 != 0x7FFFFFFF && !*(a1 + 262) && v8 == -1)
            {
              v72 = a1[119];
              v73 = a1[120];
              if (v72 == v73)
              {
                return;
              }

              v8 = 0;
              v74 = a1[116];
              do
              {
                if (0xAAAAAAAAAAAAAAABLL * (a1[117] - v74) > *v72)
                {
                  v75 = v74[3 * *v72 + 1];
                }

                else
                {
                  v75 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v76 = HIDWORD(v75);
                if (v8 > v75)
                {
                  LODWORD(v75) = v8;
                }

                if (v71 >= v76)
                {
                  v8 = v75;
                }

                ++v72;
              }

              while (v72 != v73);
              v77 = *(a1 + 260);
              if (v77 == -1 || v8 < v77)
              {
                *(a1 + 260) = v8;
              }
            }
          }
        }
      }
    }

    while (*(a1 + 518));
  }
}

void sub_1047EB8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, _DWORD *a6, int a7, unsigned int *a8, uint64_t *a9, void *a10, unsigned int a11, int a12, int a13)
{
  sub_1045D94(a1);
  *(a1 + 2960) = *a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  if (a1 + 1168 != a2)
  {
    sub_C70E60(a1 + 1168, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = *a6;
  *(a1 + 1044) = a7;
  *(a1 + 20) = a13;
  *(a1 + 976) = a1 + 24;
  sub_10460DC(a1);
  sub_1046ABC(a1, a10);
  v21 = *a9;
  v20 = a9[1];
  if (*a9 != v20)
  {
    do
    {
      v23 = *(v21 + 8);
      sub_101F030(a1 + 1056, v21, &v23);
      sub_105A9CC((a1 + 1056), a10);
      sub_105B98C((a1 + 1056));
      v21 += 16;
    }

    while (v21 != v20);
  }

  sub_104772C(a1, a8, a11);
}

void sub_1047FF0(uint64_t *a1, uint64_t a2, uint64_t ***a3, uint64_t a4, __int32 a5, __int8 a6, __int32 a7, __int32 a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_1045D94(a1);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18)
  {
    v20 = *a3;
  }

  else
  {
    do
    {
      v24 = a1;
      sub_104A234((a1 + 3), v19, 1, &v24);
      v19 += 4;
    }

    while (v19 != v18);
    v19 = *a3;
    v20 = a3[1];
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[117] - a1[116]) >> 3);
  v22 = (v20 - v19) >> 5;
  if (v22 > v21)
  {
    sub_1052E94((a1 + 116), v22 - v21);
  }

  a1[122] = (a1 + 3);
  sub_1048100(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_1048100(int32x2_t *a1, uint64_t a2, uint64_t a3, __int32 a4, __int8 a5, __int32 a6, __int32 a7, unsigned int a8, unsigned int a9)
{
  v18 = a8;
  a1[370].i32[0] = a4;
  a1[370].i8[4] = a5;
  a1[371] = a3;
  v13 = &a1[146];
  if (v13 != a2)
  {
    sub_C70E60(v13, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  a1[149] = *(a2 + 24);
  a1[130].i32[0] = a6;
  a1[130].i32[1] = a7;
  v14 = a1[122];
  if (v14[11] + v14[5] + v14[17] + v14[23] + v14[29] + v14[35] + v14[41] + v14[47] + v14[53] + v14[59] + v14[65] + v14[71] + v14[77] + v14[83] + v14[89] + v14[95] || a1[381].i8[0] == 1)
  {
    sub_10460DC(a1);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_1046ABC(a1, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_10470D0(a1);
    sub_104772C(a1, &v18, a9);
  }
}

void sub_104825C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1048278(int32x2_t *a1, uint64_t a2, void *a3, uint64_t a4, __int32 a5, __int8 a6, __int32 a7, __int32 a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_1045D94(a1);
  v19 = 0xAAAAAAAAAAAAAAABLL * ((*&a1[117] - *&a1[116]) >> 3);
  v20 = (a3[1] - *a3) >> 5;
  if (v20 > v19)
  {
    sub_1052E94(&a1[116], v20 - v19);
  }

  a1[122] = a3;

  sub_1048100(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_1048350(int32x2_t *a1, uint64_t a2, __int32 a3, __int8 a4, __int32 a5, __int32 a6, unsigned int a7, unsigned int a8, __int32 a9, __int8 a10)
{
  if (!*&a1[379])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v24 = sub_2D390(exception, "A BucketSearchDataProvider is required for the bucket search query", 0x42uLL);
  }

  sub_1045D94(a1);
  a1[122] = &a1[3];
  a1[381].i8[0] = 1;
  a1[381].i8[1] = a10;
  a1[381].i32[1] = a9;
  a1[384] = a1[383];
  a1[382].i32[0] = 0;
  v18 = a1[379];
  if ((*(*&v18 + 224) & 1) == 0)
  {
    v25 = __cxa_allocate_exception(0x40uLL);
    v26 = sub_2D390(v25, "The bucket search cost function has to be preprocessed.", 0x37uLL);
  }

  v19 = *(*&v18 + 204);
  v20 = *(*&v18 + 216);
  if (v19 >= a7)
  {
    v21 = a7;
  }

  else
  {
    v21 = *(*&v18 + 204);
  }

  if (a7 == -1)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  sub_1048100(a1, a2, v20, a3, a4, a5, a6, v22, a8);
}

uint64_t sub_104849C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = (v2 + 24 * a2), !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v9 = sub_2D390(exception, v7, size);
  }

  return v3[5] & 0x3FFFFFFF;
}

void sub_1048570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10485C8(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = (v2 + 24 * a2), !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v9 = sub_2D390(exception, v7, size);
  }

  return v3[4];
}

void sub_1048698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10486F0(void *a1, unint64_t a2)
{
  v2 = a1[116];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[117] - v2) >> 3) <= a2 || !*(v2 + 24 * a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v9, a2);
    sub_23E08("No valid data for target id ", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return *(a1[482] + 8 * a2);
}

void sub_10487C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_104881C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  sub_10489C8(a1, 0, v3, a2);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void sub_10488E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10488F4@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  sub_10489C8(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_10489B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10489C8@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_F6EB3C(a4);
  v9 = a1[116];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[117] - v9) >> 3) > a2)
  {
    v10 = v9 + 24 * a2;
    if (*v10)
    {
      if (*(a1 + 3048) != 1 || *(a1 + 3049) == 1)
      {
        if ((*(v10 + 23) & 0x40) != 0)
        {
          v11 = *v10;
          sub_F92868((*a1 + 8), *v10 | ((HIDWORD(*v10) & 0xFFFFFFF | (*v10 >> 31) & 0x60000000 | (((*v10 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v12);
          sub_F69060(a4, v11, v12, 0);
          sub_F68F20(a4, a1[146] + 96 * (*(v10 + 20) & 0x3FFFFFFF) + 8);
        }

        else
        {
          sub_1048D60(a1, v10, a3, v12);
          sub_49C304(a4, v12);
          sub_4547F0(v12);
        }

        if ((*(v10 + 20) & 0x80000000) != 0)
        {
          sub_10493DC(v10, a1[485] + 40 * a2, v12);
          sub_F708E4(a4, v12);
          sub_4547F0(v12);
        }

        return sub_F6901C(a4, *(*a1[122] + 32 * a2) + 96 * *(v10 + 16) + 8);
      }
    }
  }

  return result;
}

void sub_1048B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4547F0(va);
  sub_4547F0(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1048C00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_1048C8C@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  sub_1048D60(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_1048D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

void sub_1048D60(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_F6EB3C(a4);
  if (!*a2)
  {
    return;
  }

  v55 = *a2;
  if (!v55)
  {
    return;
  }

  v48 = a2;
  v49 = v6;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    sub_105A854((a1 + 150), &v55, &v58);
    v9 = a1[246] + 80 * *(*(&v59 + 1) + 8);
    v10 = v8 - v7;
    v11 = 0x8E38E38E38E38E39 * ((v8 - v7) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_1794();
    }

    if (0x1C71C71C71C71C72 * (-v7 >> 3) > v12)
    {
      v12 = 0x1C71C71C71C71C72 * (-v7 >> 3);
    }

    if (0x8E38E38E38E38E39 * (-v7 >> 3) >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      if (v13 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1808();
    }

    v14 = 8 * ((v8 - v7) >> 3);
    *v14 = *(v9 + 8);
    v15 = *(v9 + 24);
    v16 = *(v9 + 40);
    v17 = *(v9 + 56);
    *(v14 + 64) = *(v9 + 72);
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    v8 = v14 + 72;
    v18 = 72 * v11 + 72 * (v10 / -72);
    memcpy((v14 + 72 * (v10 / -72)), v7, v10);
    if (v7)
    {
      operator delete(v7);
    }

    v7 = v18;
    if ((*(v9 + 72) & 0x80000000) != 0)
    {
      break;
    }

    v55 = *(v9 + 24);
    if (!v55)
    {
      v19 = v49;
      if (v18 != v8)
      {
        goto LABEL_21;
      }

LABEL_18:
      if (v8)
      {
        goto LABEL_52;
      }

      return;
    }
  }

  v55 = 0;
  v19 = v49;
  if (v18 == v8)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (!*(a3 + 24))
  {
    v20 = v8 - 72;
    if (v8 - 72 > v18)
    {
      v21 = v18 + 72;
      do
      {
        v58 = *(v21 - 72);
        v22 = *(v21 - 56);
        v23 = *(v21 - 40);
        v24 = *(v21 - 24);
        *&v62 = *(v21 - 8);
        v61 = v24;
        v59 = v22;
        v60 = v23;
        v26 = *(v20 + 32);
        v25 = *(v20 + 48);
        v27 = *(v20 + 64);
        *(v21 - 56) = *(v20 + 16);
        *(v21 - 8) = v27;
        *(v21 - 24) = v25;
        *(v21 - 40) = v26;
        *(v21 - 72) = *v20;
        v28 = v61;
        v30 = v59;
        v29 = v60;
        *(v20 + 64) = v62;
        *(v20 + 32) = v29;
        *(v20 + 48) = v28;
        *(v20 + 16) = v30;
        *v20 = v58;
        v20 -= 72;
        v31 = v21 >= v20;
        v21 += 72;
      }

      while (!v31);
    }
  }

  v54[0] = a3;
  v54[1] = v19;
  __p = 0;
  v52 = 0;
  v53 = 0;
  while (!*(v18 + 60))
  {
    if (*(a3 + 24) && !sub_F6FDC8(v19))
    {
      *&v58 = *(v18 + 24);
      v32 = *(a3 + 24);
      if (!v32)
      {
        sub_2B7420();
      }

      if ((*(*v32 + 48))(v32, &v58))
      {
        goto LABEL_39;
      }
    }

    v33 = *a1;
    sub_F92868((*a1 + 8), *(v18 + 16) | ((HIDWORD(*(v18 + 16)) & 0xFFFFFFF | (*(v18 + 16) >> 31) & 0x60000000 | (((*(v18 + 16) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v56);
    sub_F92868((v33 + 8), *(v18 + 24) | ((HIDWORD(*(v18 + 24)) & 0xFFFFFFF | (*(v18 + 24) >> 31) & 0x60000000 | (((*(v18 + 24) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), &v60 + 1);
    *&v60 = v57;
    v58 = v56[0];
    v59 = v56[1];
    v63 = *(v18 + 32);
    sub_F6F284(v19, &v58, 0);
LABEL_27:
    v18 += 72;
    if (v18 == v8)
    {
      v34 = 1;
      if (!*(a3 + 24))
      {
        goto LABEL_45;
      }

      goto LABEL_40;
    }
  }

  sub_1080924((*a1 + 336), v18 + 16, a1[371], (v18 + 8), *(v18 + 12), &__p);
  if (__p == v52)
  {
    sub_F6E9D8(v19);
    goto LABEL_49;
  }

  if ((sub_1049750(v54, &__p) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_39:
  v34 = 0;
  if (!*(a3 + 24))
  {
    goto LABEL_45;
  }

LABEL_40:
  v35 = sub_5FC64(v19);
  v36 = sub_445EF4(v19);
  if (v35 != v36)
  {
    v37 = v36 - 88;
    if (v36 - 88 > v35)
    {
      v38 = v35 + 88;
      do
      {
        v60 = *(v38 - 56);
        v61 = *(v38 - 40);
        v62 = *(v38 - 24);
        v63 = *(v38 - 8);
        v58 = *(v38 - 88);
        v59 = *(v38 - 72);
        v39 = *(v37 + 16);
        *(v38 - 88) = *v37;
        *(v38 - 72) = v39;
        v41 = *(v37 + 48);
        v40 = *(v37 + 64);
        v42 = *(v37 + 80);
        *(v38 - 56) = *(v37 + 32);
        *(v38 - 8) = v42;
        *(v38 - 24) = v40;
        *(v38 - 40) = v41;
        *v37 = v58;
        *(v37 + 80) = v63;
        *(v37 + 64) = v62;
        *(v37 + 48) = v61;
        *(v37 + 32) = v60;
        *(v37 + 16) = v59;
        v37 -= 88;
        v31 = v38 >= v37;
        v38 += 88;
      }

      while (!v31);
    }
  }

LABEL_45:
  if (v34)
  {
    sub_105A854((a1 + 150), v48, &v58);
    sub_F68F20(v19, a1[146] + 96 * (*(a1[246] + 80 * *(*(&v59 + 1) + 8) + 72) & 0x7FFFFFFF) + 8);
  }

  else
  {
    v43 = sub_73F1C(v19);
    v44 = *(v43 + 16);
    v58 = *v43;
    v59 = v44;
    v45 = *(v43 + 32);
    v46 = *(v43 + 48);
    v47 = *(v43 + 64);
    v63 = *(v43 + 80);
    v61 = v46;
    v62 = v47;
    v60 = v45;
    LODWORD(v58) = 0;
    sub_F68F20(v19, &v58);
  }

LABEL_49:
  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }

  if (v7)
  {
LABEL_52:
    operator delete(v7);
  }
}

void sub_1049364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      sub_4547F0(a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  sub_4547F0(a10);
  _Unwind_Resume(a1);
}

void sub_10493DC(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_F6EB3C(a3);
  if (*a1)
  {
    v6 = *a1;
    if (v6)
    {
      v5 = *(a2 + 32);
      if (v5 == 2)
      {
        sub_105C628(a2, &v6);
      }

      else
      {
        if (v5 != 1)
        {
          sub_5AF20();
        }

        sub_105C7AC(*a2, &v6);
      }

      operator new();
    }
  }
}

void sub_10496B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  if (!v16)
  {
LABEL_4:
    sub_4547F0(a10);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_4547F0(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1049750(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 24))
  {
    v4 = *a2;
    v3 = a2[1];
    if (v3 != *a2)
    {
      while (1)
      {
        if (!sub_F6FDC8(a1[1]))
        {
          v5 = *a1;
          v6 = *(v3 - 16);
          v7 = HIDWORD(v6) & 0x40000000;
          if (v6 < 0 && v7 == 0)
          {
            v9 = 0x40000000;
          }

          else
          {
            v9 = 0;
          }

          v20 = *(v3 - 16) | (((*(v3 - 8) >> 26) & 0x80000000 | HIDWORD(v6) & 0xFFFFFFF | (v6 >> 33) & 0x10000000 | (v7 >> 1) | v9) << 32);
          v10 = *(v5 + 24);
          if (!v10)
          {
            goto LABEL_30;
          }

          if ((*(*v10 + 48))(v10, &v20))
          {
            return 1;
          }
        }

        v3 -= 88;
        sub_F6F284(a1[1], v3, 0);
        if (v3 == v4)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v12 = *a2;
  v13 = a2[1];
  if (*a2 == v13)
  {
    return 0;
  }

  while (1)
  {
    if (*(*a1 + 24) && !sub_F6FDC8(a1[1]))
    {
      v14 = *a1;
      v15 = *(v12 + 72);
      v16 = HIDWORD(v15) & 0x40000000;
      if (v15 < 0 && v16 == 0)
      {
        v18 = 0x40000000;
      }

      else
      {
        v18 = 0;
      }

      v20 = *(v12 + 72) | (((*(v12 + 80) >> 26) & 0x80000000 | HIDWORD(v15) & 0xFFFFFFF | (v15 >> 33) & 0x10000000 | (v16 >> 1) | v18) << 32);
      v19 = *(v14 + 24);
      if (!v19)
      {
LABEL_30:
        sub_2B7420();
      }

      if ((*(*v19 + 48))(v19, &v20))
      {
        break;
      }
    }

    sub_F6F284(a1[1], v12, 0);
    v12 += 88;
    if (v12 == v13)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_10499B8(void *a1)
{
  v32.n128_u64[0] = -1;
  v32.n128_u64[1] = -1;
  v2 = a1 + 260;
  v3 = a1[260];
  v4 = a1[261];
  if (*v3 > -2)
  {
    v5 = a1[260];
    v18 = a1[263];
    v7 = &v3[v18];
    if (v3 != &v3[v18])
    {
LABEL_5:
      v8 = (a1 + 260);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[260];
    do
    {
      v6 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v5 = (v5 + v6);
      v4 = (v4 + 12 * v6);
    }

    while (*v5 < -1);
    v7 = &v3[a1[263]];
    if (v5 != v7)
    {
      goto LABEL_5;
    }
  }

  v8 = (a1 + 266);
  v19 = 6;
  v20 = a1 + 260;
  while (1)
  {
    v4 = v20[7];
    v5 = *v8;
    if (**v8 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v5 = (v5 + v21);
        v4 = (v4 + 12 * v21);
      }

      while (*v5 < -1);
    }

    v7 = &(*v8)[v20[9]];
    if (v5 != v7)
    {
      break;
    }

    v20 = &v2[v19];
    v19 += 6;
    v8 = &v2[v19];
    if (v19 == 96)
    {
      goto LABEL_26;
    }
  }

LABEL_6:
  v9 = (a1 + 356);
  do
  {
    while (1)
    {
      v10 = a1[1];
      v11 = *v4;
      v4 = (v4 + 12);
      v31.n128_u64[0] = v11;
      v31.n128_u64[0] = sub_10539D0(*v10, &v31);
      v31.n128_u64[1] = v12;
      sub_32114(&v32, &v31);
      LODWORD(v11) = *(v5 + 1);
      v5 = (v5 + 1);
      if (v11 <= -2)
      {
        do
        {
          v13 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v13);
          v4 = (v4 + 12 * v13);
        }

        while (*v5 < -1);
      }

      if (v5 == v7)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v14 = v8 + 6;
    if (v8 + 6 == v9)
    {
      break;
    }

    while (1)
    {
      v15 = v14;
      v16 = v8[6];
      v4 = v8[7];
      v5 = v16;
      if (*v16 <= -2)
      {
        do
        {
          v17 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v17);
          v4 = (v4 + 12 * v17);
        }

        while (*v5 < -1);
      }

      v7 = &v8[9][v16];
      if (v5 != v7)
      {
        break;
      }

      v14 = v15 + 6;
      v8 = v15;
      if (v15 + 6 == v9)
      {
        goto LABEL_26;
      }
    }

    v8 = v15;
  }

  while (v15);
LABEL_26:
  if (!sub_329BC(&v32))
  {
    v22 = a1[249];
    for (i = a1[250]; v22 != i; ++v22)
    {
      v24 = a1[1];
      v25 = *(a1[246] + 80 * *v22);
      v31.n128_u32[0] = 1;
      v26 = sub_101F854(*v24, v25 & 0xFFFFFFFFFFFFFFFLL, (v25 & 0x1000000000000000) != 0, &v31);
      if (v26)
      {
        v27 = HIDWORD(v26) == 0xFFFFFFFF;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = a1[1];
        v33 = v26;
        v31.n128_u64[0] = sub_10539D0(*v28, &v33);
        v31.n128_u64[1] = v29;
        sub_32114(&v32, &v31);
        operator new();
      }
    }
  }

  return v32.n128_u64[0];
}

void sub_1049DCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1049DEC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  sub_105A854(a1 + 1200, &v5, v6);
  if (!v6[0])
  {
    return 0;
  }

  sub_105A854(a1 + 1200, &v5, v6);
  v3 = *(a1 + 1968) + 80 * *(v6[3] + 2);
  if ((*(v3 + 72) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(v3 + 24);
  }
}

unint64_t sub_1049E74(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  sub_105A854(a1 + 1200, &v9, v10);
  if (!v10[0])
  {
    return 0;
  }

  sub_105A854(a1 + 1200, &v9, v10);
  v3 = *(a1 + 1968) + 80 * *(v10[3] + 2);
  if (!*(v3 + 68))
  {
    return *(v3 + 24) | (((*(v3 + 24) >> 31) & 0x60000000 | HIDWORD(*(v3 + 24)) & 0xFFFFFFF | (((*(v3 + 24) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32);
  }

  sub_1080924((*a1 + 336), v3 + 24, *(a1 + 2968), (v3 + 16), *(v3 + 20), (a1 + 2976));
  v4 = *(*(a1 + 2984) - 56);
  v5 = HIDWORD(v4) & 0x40000000;
  if (v4 < 0 && v5 == 0)
  {
    v7 = 0x40000000;
  }

  else
  {
    v7 = 0;
  }

  return *(*(a1 + 2984) - 56) | ((HIDWORD(v4) & 0x6FFFFFFF | (((v7 | (v5 >> 1)) == 0x40000000) << 31)) << 32);
}

unint64_t sub_1049F94(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2)
  {
    return 0;
  }

  v3 = v2 + 24 * a2;
  if ((*(v3 + 23) & 0x40) != 0)
  {
    return 0;
  }

  else
  {
    return sub_1049E74(a1, *v3);
  }
}

uint64_t sub_1049FFC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  sub_105A854(a1 + 1200, &v4, v5);
  if (!v5[0])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_105A854(a1 + 1200, &v4, v5);
  return *(*(a1 + 1968) + 80 * *(v5[3] + 2) + 8);
}

unint64_t sub_104A07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v15 = a2;
  sub_105A854(a1 + 1200, &v15, v16);
  v4 = v16[0];
  if (v16[0])
  {
    sub_105A854(a1 + 1200, &v14, v16);
    v4 = v16[0];
    if (v16[0])
    {
      v12 = v14;
      v13 = v15;
      sub_105A854(a1 + 1200, &v13, v16);
      v5 = *(v17 + 8);
      v6 = *(a1 + 1968);
      sub_105A854(a1 + 1200, &v12, v16);
      v7 = v13;
      if (v13)
      {
        v8 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
        v9 = v6 + 80 * v5 + 8;
        do
        {
          if (!v12)
          {
            break;
          }

          if (__PAIR64__(HIDWORD(v13), v7) == v12)
          {
            v4 = v13 & 0xFFFFFFFF00000000;
            v11 = v13;
            return v11 | v4;
          }

          if (*v8 == *v9)
          {
            if (*(v8 + 4) >= *(v9 + 4))
            {
              goto LABEL_12;
            }
          }

          else if (*v8 >= *v9)
          {
LABEL_12:
            if ((*(v8 + 64) & 0x80000000) != 0)
            {
              v12 = 0;
            }

            else
            {
              v12 = *(v8 + 16);
              if (v12)
              {
                sub_105A854(a1 + 1200, &v12, v16);
                v8 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
              }
            }

            goto LABEL_6;
          }

          if ((*(v9 + 64) & 0x80000000) != 0)
          {
            break;
          }

          v13 = *(v9 + 16);
          if (v13)
          {
            sub_105A854(a1 + 1200, &v13, v16);
            v9 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
          }

LABEL_6:
          v7 = v13;
        }

        while (v13);
      }

      v4 = 0;
    }
  }

  v11 = 0;
  return v11 | v4;
}

void *sub_104A234(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v27 = a2;
    v28 = ((v5 - *a1) >> 5);
    do
    {
      v11 = **a4;
      v29[0] = *v6 | ((HIDWORD(*v6) & 0xFFFFFFF | (*v6 >> 31) & 0x60000000 | (((*v6 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32);
      if (sub_100B6E4(v11 + 1480, v29) == -1)
      {
        if (a3)
        {
          LODWORD(v29[0]) = 0;
          sub_101F030(a1 + 792, v6, v29);
          sub_105B98C((a1 + 792));
        }

        sub_105BBDC(a1 + 24, v6, v29);
        v12 = v30;
        v14 = v30[2];
        v13 = v30[3];
        if (v14 < v13)
        {
          *v14 = v28;
          v10 = v14 + 8;
        }

        else
        {
          v15 = v30[1];
          v16 = v14 - v15;
          v17 = (v14 - v15) >> 3;
          v18 = v17 + 1;
          if ((v17 + 1) >> 61)
          {
            sub_1794();
          }

          v19 = a3;
          v20 = v13 - v15;
          if (v20 >> 2 > v18)
          {
            v18 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v18;
          }

          if (v21)
          {
            if (!(v21 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = (v14 - v15) >> 3;
          v23 = (8 * v17);
          v24 = (8 * v17 - 8 * v22);
          *v23 = v28;
          v10 = v23 + 1;
          memcpy(v24, v15, v16);
          v12[1] = v24;
          v12[2] = v10;
          v12[3] = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a3 = v19;
        }

        v12[2] = v10;
      }

      v6 += 12;
    }

    while (v6 != v7);
    v5 = *(a1 + 8);
    a2 = v27;
  }

  if (v5 >= *(a1 + 16))
  {
    result = sub_1020B2C(a1, a2);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v25 = a2[1];
    if (v25 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v25 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v5[3] = a2[3];
    result = v5 + 4;
    *(a1 + 8) = v5 + 4;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_104A4E8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

unint64_t sub_104A508(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  if (*(a1 + 1474) == 1)
  {
    *&v17 = *a2 | ((a2[1] & 0xFFFFFFF | (((a2[1] >> 28) & 3) << 29) | (((a2[1] & 0x60000000) == 0x40000000) << 31)) << 32);
    if (sub_100B6E4(a1 + 1480, &v17) != -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  sub_F92868((a1 + 8), *a2 | ((HIDWORD(*a2) & 0xFFFFFFF | (*a2 >> 31) & 0x60000000 | (((*a2 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v16);
  v17 = 0u;
  v18 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v19 = _Q0;
  v20 = 0x3FF0000000000000;
  v21 = 1;
  sub_10B9C08((a1 + 192), &v17, v16, a3, a4);
  if (v21 != 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = sub_F8634C(&v17, &v19, v13);
  return (v18 + v14) | ((DWORD1(v18) + HIDWORD(v14)) << 32);
}

uint64_t sub_104A674(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *(a1 + 1044);
  if (v5 == 0x7FFFFFFF)
  {
    return sub_104C048(a1 + 1200, a2, a3);
  }

  v6 = a3;
  v7 = *(a3 + 4);
  sub_105A854(a1 + 1200, a2, v15);
  if (!v15[0])
  {
    a3 = v6;
    if (v7 > v5)
    {
      return sub_104C048(a1 + 1200, a2, a3);
    }

    goto LABEL_19;
  }

  sub_105A854(a1 + 1200, a2, v15);
  v8 = *(*(a1 + 1968) + 80 * *(v16 + 8) + 8);
  a3 = v6;
  if (*v6 == v8)
  {
    if (v6[1] >= SHIDWORD(v8))
    {
      return sub_104C048(a1 + 1200, a2, a3);
    }
  }

  else if (*v6 >= v8)
  {
    return sub_104C048(a1 + 1200, a2, a3);
  }

  sub_105A854(a1 + 1200, a2, v15);
  v9 = *(*(a1 + 1968) + 80 * *(v16 + 8) + 12);
  v10 = *(a1 + 1044);
  if (v10 >= v9 && v7 > v5)
  {
    v13 = -1;
    a3 = v6;
LABEL_20:
    *(a1 + 1048) += v13;
    return sub_104C048(a1 + 1200, a2, a3);
  }

  v12 = v10 < v9 && v7 <= v5;
  a3 = v6;
  if (v12)
  {
LABEL_19:
    v13 = 1;
    goto LABEL_20;
  }

  return sub_104C048(a1 + 1200, a2, a3);
}

BOOL sub_104A7B0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 3056);
  v3 = *(a1 + 3072);
  v4 = *(a1 + 3064);
  v5 = *(a1 + 3052);
  if (v2 + v3 - v4 < v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3072) = 0;
    *(a1 + 3080) = 0;
    result = v2 >= v5;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  do
  {
    v7 = *(a1 + 928) + 24 * *v4;
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a2 >= v9;
    if (*a2 == v9)
    {
      if (a2[1] < *(v8 + 4))
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
LABEL_10:
      operator new();
    }

    ++*(a1 + 3056);
    ++v4;
  }

  while (v4 != v3);
  v4 = *(a1 + 3064);
  v11 = *(a1 + 3056);
  v12 = *(a1 + 3052);
  *(a1 + 3064) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3080) = 0;
  result = v11 >= v12;
  if (v4)
  {
LABEL_12:
    v13 = result;
    operator delete(v4);
    return v13;
  }

  return result;
}

void sub_104A998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_104A9B4(uint64_t a1, uint64_t *a2, int *a3, int a4)
{
  if (*(a1 + 3048) != 1)
  {
    return 4294967294;
  }

  sub_104AED8(a1, a2, a3, a4);
  result = sub_104B668(*(a1 + 3032), *a2);
  if (result)
  {
    v36 = a4;
    v9 = *result;
    v10 = *(result + 8);
    if (*result != v10)
    {
      do
      {
        v15 = *(a1 + 1040);
        if (v15 != -1)
        {
          v16 = *(v9 + 16);
          if (v16 != -1 && *(v9 + 20) != 0x7FFFFFFF && *(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && v16 + *a3 > v15)
          {
            goto LABEL_7;
          }
        }

        v17 = sub_104B730(a1, v9);
        v18 = *(v9 + 16);
        if (v18 == -1 || (v19 = *(v9 + 20), v19 == 0x7FFFFFFF) || *(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(a1 + 3904);
          v12 = v17 >> 6;
          v13 = 1 << v17;
          v14 = *(v11 + 8 * (v17 >> 6));
          if ((v14 & (1 << v17)) == 0)
          {
            v22 = *(a1 + 24) + 32 * v17;
            v23 = *v22;
            v24 = *(v22 + 8);
            if (*v22 != v24)
            {
              do
              {
                v38[0] = 0;
                sub_101F030(a1 + 816, v23, v38);
                sub_105B98C((a1 + 816));
                v23 += 12;
              }

              while (v23 != v24);
              v11 = *(a1 + 3904);
              v14 = *(v11 + 8 * v12);
            }

            *(v11 + 8 * v12) = v14 | v13;
          }

          ++*(a1 + 3936);
          goto LABEL_7;
        }

        if (*(a1 + 3049) == 1 && ((v20 = *(a1 + 1044), v20 == 0x7FFFFFFF) || v19 + a3[1] <= v20))
        {
          v21 = v17;
          if (!*(*(a1 + 3880) + 40 * v17 + 32))
          {
            v25.n128_f64[0] = sub_104BAFC(*(a1 + 3032), *v9, v38);
            v26 = v39;
            if (!v39)
            {
              v29 = *(a1 + 3904);
              v30 = v21 >> 6;
              v31 = 1 << v21;
              v32 = *(v29 + 8 * (v21 >> 6));
              if ((v32 & (1 << v21)) == 0)
              {
                v33 = *(a1 + 24) + 32 * v21;
                v35 = *v33;
                v34 = *(v33 + 8);
                if (*v33 != v34)
                {
                  do
                  {
                    LODWORD(v37) = 0;
                    sub_101F030(a1 + 816, v35, &v37);
                    sub_105B98C((a1 + 816));
                    v35 += 12;
                  }

                  while (v35 != v34);
                  v29 = *(a1 + 3904);
                  v31 = 1 << v21;
                  v30 = v21 >> 6;
                  v32 = *(v29 + 8 * (v21 >> 6));
                }

                *(v29 + 8 * v30) = v32 | v31;
              }

              ++*(a1 + 3928);
              goto LABEL_37;
            }

            v27 = *(*(a1 + 3880) + 40 * v21 + 32);
            if (v27 == -1)
            {
              if (v39 == -1)
              {
                goto LABEL_37;
              }
            }

            else if (v39 == -1)
            {
              v28 = *(a1 + 3880) + 40 * v21;
              (off_2674F98[v27])(&v37, v25.n128_f64[0]);
              *(v28 + 32) = -1;
LABEL_37:
              if (v39 != -1)
              {
                (off_2674F98[v39])(&v37, v38);
              }

              if (!v26)
              {
                goto LABEL_7;
              }

              v18 = *(v9 + 16);
              v19 = *(v9 + 20);
              goto LABEL_41;
            }

            v37 = *(a1 + 3880) + 40 * v21;
            (off_2674FB0[v39])(&v37, v25);
            goto LABEL_37;
          }
        }

        else
        {
          v21 = v17;
        }

LABEL_41:
        *v38 = (v18 + *a3) | ((v19 + a3[1]) << 32);
        sub_104BD90(a1, a2, v38, v21, v36, *(v9 + 8), 0, 1);
LABEL_7:
        v9 += 32;
      }

      while (v9 != v10);
    }

    return *(*(a1 + 3032) + 204);
  }

  return result;
}

void sub_104AD40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_104AD7C(uint64_t a1, uint64_t *a2, unsigned int *a3, int *a4, char a5, unsigned int *a6)
{
  for (i = *a6; i; i = (i - 1))
  {
    v12 = *(a1 + 8);
    v13 = *a2;
    LODWORD(v20) = i;
    if (sub_101F374(*v12, v13 & 0xFFFFFFFFFFFFFFFLL, &v20))
    {
      v14 = *(a1 + 8);
      v15 = *a2;
      v21 = i;
      v16 = sub_101F854(*v14, v15 & 0xFFFFFFFFFFFFFFFLL, (v15 & 0x1000000000000000) == 0, &v21);
      v20 = v16;
      if (v16)
      {
        v17 = v16 >= 0xFFFFFFFF00000000;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = *(a1 + 20);
        if (v18 != -1 && i == v18)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (sub_10550EC(a1 + 1064, &v20) == -1 && sub_10550EC(*(a1 + 976) + 800, &v20) == -1)
      {
        if (*(a1 + 3048) == 1 && i < *(*(a1 + 3032) + 200))
        {
          return 0;
        }

        if (*(*a1 + 1473) != 1 || !sub_1063C18(*a1 + 240, v20, a3, *a4, a5))
        {
          return i;
        }
      }
    }
  }

  return i;
}

uint64_t sub_104AED8(uint64_t a1, uint64_t *a2, int *a3, int a4)
{
  v58 = a1;
  if (*(a1 + 3048) == 1)
  {
    sub_104C2AC(a1, a2);
    a1 = v58;
  }

  result = sub_105C338(*(a1 + 976) + 24, a2, &v60);
  if (v60)
  {
    sub_105C338(*(v58 + 976) + 24, a2, &v60);
    result = v58;
    v6 = *(*(&v61 + 1) + 8);
    v54 = *(*(&v61 + 1) + 16);
    if (v6 != v54)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v57 = _Q0;
      while (1)
      {
        v56 = v6;
        v11 = (**(result + 976) + 32 * *v6);
        v12 = -1431655765 * ((v11[1] - *v11) >> 5);
        if (v12)
        {
          break;
        }

LABEL_6:
        v6 = v56 + 1;
        if (v56 + 1 == v54)
        {
          return result;
        }
      }

      v13 = 0;
      while (1)
      {
        v14 = (*v11 + 96 * v13);
        v15 = *a2;
        if (*v14 != v15)
        {
          goto LABEL_10;
        }

        v16 = v14[1];
        if (v16 != *(a2 + 1))
        {
          goto LABEL_10;
        }

        v17 = *result;
        v18 = v14[2];
        v19 = *(result + 2968);
        if (*(*result + 1474) == 1)
        {
          v20 = v16 & 0xFFFFFFF | (((v16 >> 28) & 3) << 29) | (((v16 & 0x60000000) == 0x40000000) << 31);
          v21 = *(v17 + 1536) - 1;
          v22 = 0x2127599BF4325C37 * (((v20 >> 29) & 2 | (v20 >> 31) | (v20 >> 27) & 4 | (v15 << 32) | (8 * (v20 & 0xFFFFFFF))) ^ (((v15 << 32) | (8 * (v20 & 0xFFFFFFF))) >> 23));
          v23 = *(v17 + 1552);
          v24 = *(v17 + 1544);
          v25 = *(v17 + 1548);
          v26 = (v22 ^ (v22 >> 47)) & v21;
          v28 = *(v23 + 8 * v26);
          v27 = *(v23 + 8 * v26 + 4);
          if (v24 != v28 || v25 != v27)
          {
            if (*(v17 + 1520))
            {
              v30 = 1;
              while (*(v17 + 1512) == v28 && *(v17 + 1516) == v27 || v28 != v15 || v27 != v20)
              {
                v26 = (v26 + v30) & v21;
                v28 = *(v23 + 8 * v26);
                v27 = *(v23 + 8 * v26 + 4);
                ++v30;
                if (v24 == v28 && v25 == v27)
                {
                  goto LABEL_37;
                }
              }
            }

            else
            {
              v32 = 1;
              while (v28 != v15 || v27 != v20)
              {
                v26 = (v26 + v32) & v21;
                v28 = *(v23 + 8 * v26);
                v27 = *(v23 + 8 * v26 + 4);
                ++v32;
                if (v24 == v28 && v25 == v27)
                {
                  goto LABEL_37;
                }
              }
            }

            if (v26 != -1)
            {
              goto LABEL_10;
            }
          }
        }

LABEL_37:
        sub_F92868((v17 + 8), *a2 | ((HIDWORD(*a2) & 0xFFFFFFF | (*a2 >> 31) & 0x60000000 | (((*a2 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v59);
        v60 = 0u;
        v61 = 0u;
        v62 = v57;
        v63 = 0x3FF0000000000000;
        v64 = 1;
        sub_10B9C08((v17 + 192), &v60, v59, v18, v19);
        if ((v64 & 1) == 0)
        {
          goto LABEL_9;
        }

        LODWORD(v34) = v60;
        v35 = *&v62 * v34;
        if (v35 >= 0.0)
        {
          result = v58;
          if (v35 >= 4.50359963e15)
          {
            goto LABEL_44;
          }

          v36 = (v35 + v35) + 1;
        }

        else
        {
          result = v58;
          if (v35 <= -4.50359963e15)
          {
            goto LABEL_44;
          }

          v36 = (v35 + v35) - 1 + (((v35 + v35) - 1) >> 63);
        }

        v35 = (v36 >> 1);
LABEL_44:
        v37 = *(&v62 + 1) * SDWORD1(v60);
        if (v37 >= 0.0)
        {
          if (v37 >= 4.50359963e15)
          {
            goto LABEL_50;
          }

          v38 = (v37 + v37) + 1;
        }

        else
        {
          if (v37 <= -4.50359963e15)
          {
            goto LABEL_50;
          }

          v38 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
        }

        v37 = (v38 >> 1);
LABEL_50:
        v39 = v61 + v35;
        v40 = DWORD1(v61) + v37;
        if (v39 == -1 || v40 == 0x7FFFFFFF)
        {
          goto LABEL_10;
        }

        v43 = *a3;
        v42 = a3[1];
        v44 = *result;
        v45 = *(result + 2968);
        v60 = 0u;
        v61 = 0u;
        v62 = v57;
        v63 = 0x3FF0000000000000;
        v64 = 1;
        sub_10B9770((v44 + 192), &v60, v14, (v14 + 2), v45, 1, 1);
        if (v64)
        {
          LODWORD(v46) = v60;
          v47 = *&v62 * v46;
          if (v47 >= 0.0)
          {
            result = v58;
            if (v47 < 4.50359963e15)
            {
              v48 = (v47 + v47) + 1;
LABEL_60:
              v47 = (v48 >> 1);
            }
          }

          else
          {
            result = v58;
            if (v47 > -4.50359963e15)
            {
              v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
              goto LABEL_60;
            }
          }

          v49 = *(&v62 + 1) * SDWORD1(v60);
          if (v49 >= 0.0)
          {
            if (v49 < 4.50359963e15)
            {
              v50 = (v49 + v49) + 1;
LABEL_66:
              v49 = (v50 >> 1);
            }
          }

          else if (v49 > -4.50359963e15)
          {
            v50 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
            goto LABEL_66;
          }

          v51 = v61 + v47;
          if (v51 != -1)
          {
            v52 = DWORD1(v61) + v49;
            if (v52 != 0x7FFFFFFF)
            {
              *&v60 = (v39 + v43 + v51) | ((v40 + v42 + v52) << 32);
              sub_104BD90(result, a2, &v60, *v56, a4, v13, 0, 0);
              result = v58;
            }
          }

          goto LABEL_10;
        }

LABEL_9:
        result = v58;
LABEL_10:
        if (++v13 == v12)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

unint64_t sub_104B508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1474) != 1 || sub_100A224((a1 + 1560), a2) == -1 && ((v6 = *(a2 + 32), v7 = HIDWORD(v6) & 0x40000000, v6 < 0) ? (_ZF = v7 == 0) : (_ZF = 0), !_ZF ? (v9 = 0) : (v9 = 0x40000000), *&v19 = v6 | ((HIDWORD(v6) & 0x6FFFFFFF | (((v9 | (v7 >> 1)) == 0x40000000) << 31)) << 32), sub_100B6E4(a1 + 1480, &v19) == -1))
  {
    v19 = 0u;
    v20 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v21 = _Q0;
    v22 = 0x3FF0000000000000;
    v23 = 1;
    sub_10BC914((a1 + 192), &v19, a2, 0x3B9ACA00u, a3);
    if (v23 == 1)
    {
      v17 = sub_F8634C(&v19, &v21, v16);
      v11 = (v20 + v17) | ((DWORD1(v20) + HIDWORD(v17)) << 32);
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v10 = v11 & 0xFFFFFFFF00000000;
    v11 = v11;
  }

  else
  {
    v10 = 0x7FFFFFFF00000000;
    v11 = 0xFFFFFFFFLL;
  }

  return v10 | v11;
}

void *sub_104B668(uint64_t a1, unint64_t a2)
{
  LODWORD(v9[0]) = *(a1 + 200);
  v4 = sub_101F854(*(a1 + 24), a2 & 0xFFFFFFFFFFFFFFFLL, (a2 & 0x1000000000000000) == 0, v9);
  v11 = v4;
  if (v4)
  {
    v5 = v4 > 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = sub_105BD90(*(a1 + 32), a2, v4);
  if (v10 == 0xFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = (a1 + 280);
  sub_1055C88(v6, &v11, &v10, v7);
  return v7;
}

uint64_t sub_104B730(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[4];
  v6 = a1[3];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 232));
  sub_1016868(v7 + 40, (v7 + 232), *(v7 + 208), 0, &__p);
  v44 = a1;
  sub_104A234((a1 + 3), &__p, 0, &v44);
  v4 = (v5 - v6) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = v20 + 1;
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = v10 + 8;
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1053300((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = xmmword_2297C00;
      *(v29 + 16) = 0;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = xmmword_2297C00;
      *(v37 + 16) = 0;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_104BAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_104BAFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 225) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[HIDWORD(v17) + 1] + v20[HIDWORD(v17) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 9)
  {
    v12 = v9[4];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_105C1B4(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

uint64_t sub_104BD34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_2674F98[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

void sub_104BD90(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v41 = a4;
  v8 = *(a1 + 1040);
  v9 = *a3;
  if (v8 != -1 && v9 > v8)
  {
    return;
  }

  v12 = (*(a1 + 928) + 24 * a4);
  if (*v12)
  {
    v13 = v12[2];
    v14 = v9 >= v13;
    if (v9 == v13)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v39 = a3;
  v15 = a2;
  v16 = a6;
  v17 = a8;
  v18 = a5;
  v19 = a7;
  sub_2512DC(a1 + 952, &v41);
  a2 = v15;
  a7 = v19;
  a5 = v18;
  a8 = v17;
  a6 = v16;
  if (*(a1 + 3048) == 1)
  {
    v20 = *(a1 + 3072);
    v21 = *(a1 + 3080);
    if (v20 >= v21)
    {
      v23 = *(a1 + 3064);
      v24 = v20 - v23;
      v25 = (v20 - v23) >> 2;
      v26 = v25 + 1;
      if ((v25 + 1) >> 62)
      {
        sub_1794();
      }

      v27 = v21 - v23;
      if (v27 >> 1 > v26)
      {
        v26 = v27 >> 1;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (!(v28 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      v29 = v25;
      v30 = (4 * v25);
      v31 = &v30[-v29];
      *v30 = v41;
      v22 = v30 + 1;
      memcpy(v31, v23, v24);
      *(a1 + 3064) = v31;
      *(a1 + 3072) = v22;
      *(a1 + 3080) = 0;
      if (v23)
      {
        operator delete(v23);
      }

      a6 = v16;
      a8 = v17;
      a5 = v18;
      a7 = v19;
      a2 = v15;
    }

    else
    {
      *v20 = v41;
      v22 = v20 + 4;
    }

    *(a1 + 3072) = v22;
  }

  a3 = v39;
  if (*v12)
  {
    v32 = v12[2];
    v14 = *v39 >= v32;
    if (*v39 == v32)
    {
LABEL_7:
      if (a3[1] >= v12[3])
      {
        return;
      }

      goto LABEL_28;
    }

LABEL_27:
    if (v14)
    {
      return;
    }
  }

LABEL_28:
  *(v12 + 1) = *a3;
  *v12 = *a2;
  if (a7)
  {
    v33 = 0x40000000;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 & 0xC0000000 | a5 & 0x3FFFFFFF;
  if (a8)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = 0;
  }

  v12[4] = a6;
  v12[5] = v34 | v35;
  if ((*(a1 + 3048) & 1) == 0)
  {
    v40 = *a3;
    v36 = *(a1 + 1008);
    if (v41 >= ((*(a1 + 1016) - v36) >> 2) || *(v36 + 4 * v41) == -1)
    {
      sub_1057090(a1 + 984, v41, &v40);
    }

    else
    {
      sub_1057208((a1 + 984), v41, &v40);
    }

    if ((*(*(a1 + 976) + 8) - **(a1 + 976)) >> 5 == (*(a1 + 960) - *(a1 + 952)) >> 3)
    {
      v37 = *(a1 + 1040);
      v38 = *(*(a1 + 984) + 4);
      if (v37 == -1 || v38 < v37)
      {
        *(a1 + 1040) = v38;
      }
    }
  }
}

uint64_t sub_104C048(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  sub_40F508(a1, a2, &v32);
  if (v32)
  {
    v6 = v33;
    v7 = *(a1 + 768) + 80 * *(v33 + 8);
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a3 >= v9;
    if (*a3 == v9)
    {
      if (*(a3 + 4) >= *(v8 + 4))
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    ++*(a1 + 816);
    *v8 = *a3;
    v19 = *(a3 + 16);
    v20 = *(a3 + 32);
    v21 = *(a3 + 48);
    *(v8 + 64) = *(a3 + 64);
    *(v8 + 32) = v20;
    *(v8 + 48) = v21;
    *(v8 + 16) = v19;
    v22 = *(v6 + 8);
    v23 = a1 + 824;
  }

  else
  {
    ++*(a1 + 816);
    v12 = -858993459 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40F660(a1, a2, v34);
    *(v35 + 8) = v12;
    v13 = *(a1 + 776);
    v14 = *(a1 + 784);
    if (v13 >= v14)
    {
      v24 = *(a1 + 768);
      v25 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v24) >> 4) + 1;
      if (v25 > 0x333333333333333)
      {
        sub_1794();
      }

      v26 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v24) >> 4);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x199999999999999)
      {
        v27 = 0x333333333333333;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 <= 0x333333333333333)
        {
          operator new();
        }

        sub_1808();
      }

      v28 = *a3;
      v29 = 16 * ((v13 - v24) >> 4);
      *(v29 + 24) = *(a3 + 16);
      v30 = *(a3 + 48);
      *(v29 + 40) = *(a3 + 32);
      *(v29 + 56) = v30;
      *v29 = *a2;
      *(v29 + 72) = *(a3 + 64);
      *(v29 + 8) = v28;
      v18 = v29 + 80;
      v31 = (v29 - (v13 - v24));
      memcpy(v31, v24, v13 - v24);
      *(a1 + 768) = v31;
      *(a1 + 776) = v18;
      *(a1 + 784) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v13 = *a2;
      *(v13 + 8) = *a3;
      v15 = *(a3 + 16);
      v16 = *(a3 + 32);
      v17 = *(a3 + 48);
      *(v13 + 72) = *(a3 + 64);
      *(v13 + 56) = v17;
      *(v13 + 40) = v16;
      *(v13 + 24) = v15;
      v18 = v13 + 80;
    }

    *(a1 + 776) = v18;
    v23 = a1 + 824;
    v22 = v12;
  }

  sub_1056B88(v23, v22, a3);
  return 1;
}

int *sub_104C2AC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 3032);
  v6 = *a2;
  result = sub_105C4B0(*(v2 + 8), &v6, (v2 + 256));
  v5 = *(v2 + 256);
  v4 = *(v2 + 264);
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

void sub_104C36C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 224;
  *(a1 + 16) = -1;
  sub_1045600(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_104C640(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

double sub_104C798(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F98[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_104CAE0(int32x2_t *a1)
{
  v84 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v2 = *a1;
  v3 = *(*a1 + 1536);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = 8 * v3;
  v5 = *(*a1 + 1552);
  while (1)
  {
    v6 = *(v5 + 4);
    if (*(*&v2 + 1544) != *v5 || *(*&v2 + 1548) != v6)
    {
      if (!*(*&v2 + 1520))
      {
        break;
      }

      if (*(*&v2 + 1512) != *v5 || *(*&v2 + 1516) != v6)
      {
        break;
      }
    }

    v5 += 8;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  v9 = *(*a1 + 1552) + 8 * v3;
  if (v5 == v9)
  {
LABEL_14:
    v10 = *(*&v2 + 1792);
    v11 = *(*&v2 + 1696);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_87:
    v13 = v10;
    goto LABEL_88;
  }

  v15 = 0;
  v16 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v78 = _Q0;
  do
  {
    v21 = HIDWORD(*v5) & 0x40000000;
    v22 = *v5 < 0 && v21 == 0;
    v23 = (*v5 >> 33) & 0x10000000 | HIDWORD(*v5) & 0xFFFFFFF;
    if (v22)
    {
      v24 = 0x40000000;
    }

    else
    {
      v24 = 0;
    }

    LODWORD(v80) = *v5;
    HIDWORD(v80) = v23 | (v21 >> 1) | v24;
    if (v84 && ((v25 = *a1, v26 = a1[371], sub_F92868((*a1 + 8), *v5, v85), v86 = 0u, v87 = 0u, v88 = v78, v89 = 0x3FF0000000000000, v90 = 1, sub_10B9C08((*&v25 + 192), &v86, v85, 0x3B9ACA00u, v26), (v90 & 1) == 0) || (v28 = sub_F8634C(&v86, &v88, v27), v87 + v28 == -1) || DWORD1(v87) + HIDWORD(v28) == 0x7FFFFFFF || *(&v87 + 1) + v29 == 0x7FFFFFFFFFFFFFFFLL))
    {
      __src = v16;
      v30 = sub_101E508(*&a1[1]);
      if (v30 - 1 <= v84 || (v31 = *a1, v32 = a1[371], v33 = a1[370].i8[4], LODWORD(v86) = v30 - 1, v34 = sub_101F854(*(*&v31 + 224), v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) == 0, &v86), (sub_1063C18(*&v31 + 240, v34, v32, a1[370].i32[0], v33) & 1) != 0) || (LODWORD(v86) = v30 - 1, v35 = sub_101F854(*(*&v31 + 224), v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) != 0, &v86), (sub_1063C18(*&v31 + 240, v35, v32, a1[370].i32[0], v33) & 1) != 0))
      {
        sub_101F030(&a1[132], &v80, &v84);
        sub_105B98C(a1 + 132);
        LODWORD(v86) = v84 - 1;
        sub_101F030(&a1[356], &v80, &v86);
        sub_105B98C(a1 + 356);
        v36 = a1[1];
        LODWORD(v86) = v84;
        v37 = sub_101F854(*v36, v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) == 0, &v86);
        v16 = __src;
        if (__src == v15 || v15[-1].i64[1] != v37)
        {
          if (v15 >= v83)
          {
            v38 = v15 - __src;
            v39 = (v15 - __src) >> 3;
            v40 = v39 + 1;
            if ((v39 + 1) >> 61)
            {
              sub_1794();
            }

            v41 = v83 - __src;
            if ((v83 - __src) >> 2 > v40)
            {
              v40 = v41 >> 2;
            }

            if (v41 >= 0x7FFFFFFFFFFFFFF8)
            {
              v42 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v40;
            }

            if (v42)
            {
              if (!(v42 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v39) = v37;
            v15 = (8 * v39 + 8);
            memcpy(0, __src, v38);
            __p = 0;
            v82 = v15;
            v83 = 0;
            v16 = 0;
          }

          else
          {
            v15->i64[0] = v37;
            v15 = (v15 + 8);
          }

          v82 = v15;
        }

        v43 = a1[1];
        LODWORD(v86) = v84;
        v44 = sub_101F854(*v43, v80 & 0xFFFFFFFFFFFFFFFLL, (v80 & 0x1000000000000000) != 0, &v86);
        if (v15[-1].i64[1] != v44)
        {
          if (v15 >= v83)
          {
            v45 = v15 - v16;
            v46 = (v15 - v16) >> 3;
            v47 = v46 + 1;
            if ((v46 + 1) >> 61)
            {
              sub_1794();
            }

            v48 = v83 - v16;
            if ((v83 - v16) >> 2 > v47)
            {
              v47 = v48 >> 2;
            }

            if (v48 >= 0x7FFFFFFFFFFFFFF8)
            {
              v49 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              if (!(v49 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v46) = v44;
            v15 = (8 * v46 + 8);
            memcpy(0, v16, v45);
            __p = 0;
            v82 = v15;
            v83 = 0;
            v16 = 0;
          }

          else
          {
            v15->i64[0] = v44;
            v15 = (v15 + 8);
          }

          v82 = v15;
        }
      }

      else
      {
        LODWORD(v86) = v30 - 2;
        sub_101F030(&a1[356], &v80, &v86);
        v16 = __src;
        sub_105B98C(a1 + 356);
      }
    }

    else
    {
      LODWORD(v86) = 0;
      sub_101F030(&a1[132], &v80, &v86);
      sub_105B98C(a1 + 132);
    }

    for (v5 += 8; v5 != v9; v5 += 8)
    {
      v50 = *(v5 + 4);
      if (*(*&v2 + 1544) != *v5 || *(*&v2 + 1548) != v50)
      {
        if (!*(*&v2 + 1520))
        {
          break;
        }

        if (*(*&v2 + 1512) != *v5 || *(*&v2 + 1516) != v50)
        {
          break;
        }
      }
    }
  }

  while (v5 != v9);
  v2 = *a1;
  v10 = *(*a1 + 1792);
  v11 = *(*a1 + 1696);
  if (!v11)
  {
    goto LABEL_87;
  }

LABEL_15:
  v12 = 88 * v11;
  v13 = v10;
  while (1)
  {
    v14 = v13[4];
    if ((*(*&v2 + 1736) != v14 || *(*&v2 + 1776) != v13[9] || ((v13[10] ^ *(*&v2 + 1784)) & 0x1FFFFFFFFFFFFFFFLL) != 0) && (!*(*&v2 + 1680) || *(*&v2 + 1624) != v14 || *(*&v2 + 1664) != v13[9] || ((v13[10] ^ *(*&v2 + 1672)) & 0x1FFFFFFFFFFFFFFFLL) != 0))
    {
      break;
    }

    v13 += 11;
    v12 -= 88;
    if (!v12)
    {
      goto LABEL_114;
    }
  }

LABEL_88:
  v53 = &v10[11 * v11];
  if (v13 != v53)
  {
    do
    {
      v54 = v13[4];
      v55 = HIDWORD(v54) & 0x40000000;
      if (v54 < 0 && v55 == 0)
      {
        v57 = 0x40000000;
      }

      else
      {
        v57 = 0;
      }

      *&v86 = v13[4] | (((v13[10] >> 25) & 0x80000000 | HIDWORD(v54) & 0xFFFFFFF | (v54 >> 33) & 0x10000000 | (v55 >> 1) | v57) << 32);
      LODWORD(v85[0]) = 0;
      sub_101F030(&a1[132], &v86, v85);
      sub_105B98C(a1 + 132);
      v58 = v13[9];
      v59 = HIDWORD(v58) & 0x40000000;
      if (v58 < 0 && v59 == 0)
      {
        v61 = 0x40000000;
      }

      else
      {
        v61 = 0;
      }

      *&v86 = v13[9] | (((v13[10] >> 26) & 0x80000000 | HIDWORD(v58) & 0xFFFFFFF | (v58 >> 33) & 0x10000000 | (v59 >> 1) | v61) << 32);
      LODWORD(v85[0]) = 0;
      sub_101F030(&a1[132], &v86, v85);
      sub_105B98C(a1 + 132);
      for (v13 += 11; v13 != v53; v13 += 11)
      {
        v62 = v13[4];
        if ((*(*&v2 + 1736) != v62 || *(*&v2 + 1776) != v13[9] || ((v13[10] ^ *(*&v2 + 1784)) & 0x1FFFFFFFFFFFFFFFLL) != 0) && (!*(*&v2 + 1680) || *(*&v2 + 1624) != v62 || *(*&v2 + 1664) != v13[9] || ((v13[10] ^ *(*&v2 + 1672)) & 0x1FFFFFFFFFFFFFFFLL) != 0))
        {
          break;
        }
      }
    }

    while (v13 != v53);
    v2 = *a1;
  }

LABEL_114:
  for (i = *(sub_F931AC(*&v2 + 8) + 16); i; i = *i)
  {
    v64 = i[2];
    v65 = HIDWORD(v64) & 0x40000000;
    if (v64 < 0 && v65 == 0)
    {
      v67 = 0x40000000;
    }

    else
    {
      v67 = 0;
    }

    LODWORD(v86) = i[2];
    DWORD1(v86) = (v64 >> 33) & 0x10000000 | HIDWORD(v64) & 0xFFFFFFF | (v65 >> 1) | v67;
    LODWORD(v85[0]) = 0;
    sub_101F030(&a1[132], &v86, v85);
    sub_105B98C(a1 + 132);
  }

  v69 = __p;
  v68 = v82;
  v70 = 126 - 2 * __clz((v82 - __p) >> 3);
  if (v82 == __p)
  {
    v71 = 0;
  }

  else
  {
    v71 = v70;
  }

  sub_2D31D4(__p, v82, &v86, v71, 1);
  if (v68 == v69)
  {
LABEL_143:
    if (v69 != v68)
    {
      v82 = v69;
    }
  }

  else
  {
    v72 = &v69[-1].i32[2];
    while (v72 + 4 != v68)
    {
      v73 = v72[2];
      v72 += 2;
      LODWORD(v74) = v72[2];
      if (v73 == v74 && v72[1] == v72[3])
      {
        v76 = (v72 + 4);
        if (v72 + 4 != v68)
        {
          do
          {
            if (v74 != v76->i32[0] || v72[1] != v76->i32[1])
            {
              v74 = v76->i64[0];
              *(v72 + 1) = v76->i64[0];
              v72 += 2;
            }

            v76 = (v76 + 8);
          }

          while (v76 != v68);
          v68 = v82;
        }

        v69 = (v72 + 2);
        goto LABEL_143;
      }
    }
  }

  sub_10625E0((*a1 + 240), &__p, *&a1[371], a1[370].i32[0], a1[370].i8[4], 4u);
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }
}

void sub_104D46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    v16 = a1;
    operator delete(__p);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_104D4C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 1176);
  v3 = *(a1 + 1168);
  v75 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
  if (v75 >> 30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v71 = sub_2D390(exception, "The source terminal of a query cannot have more than (2^30 - 1) nodes.", 0x46uLL);
  }

  if (v2 != v3)
  {
    v5 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v76 = _Q0;
    do
    {
      v10 = (*(a1 + 1168) + 96 * v5);
      v11 = *a1;
      v12 = **a1;
      if (*(v12 + 7774) == 1)
      {
        v14 = *v10;
        v13 = v10[1];
        v15 = sub_2AF704(v12 + 3896, *v10, 1);
        if (!v15)
        {
          goto LABEL_4;
        }

        v16 = &v15[-*v15];
        if (*v16 < 5u)
        {
          goto LABEL_4;
        }

        v17 = *(v16 + 2);
        if (!v17 || *&v15[v17 + *&v15[v17]] <= (v13 & 0xFFFFFFF) || !sub_2B817C(v12, v14 & 0xF0000000FFFFFFFFLL | ((v13 & 0xFFFFFFF) << 32)))
        {
          goto LABEL_4;
        }

        v11 = *a1;
      }

      v18 = *(a1 + 2968);
      v83 = 0u;
      v84 = 0u;
      v85 = v76;
      v86 = 0x3FF0000000000000;
      LOBYTE(v87) = 1;
      sub_10B9770(v11 + 24, &v83, v10, (v10 + 2), v18, 1, 1);
      if (v87)
      {
        v20 = sub_F8634C(&v83, &v85, v19);
        v21 = v84 + v20;
        if (v84 + v20 != -1)
        {
          v22 = DWORD1(v84) + HIDWORD(v20);
          if (DWORD1(v84) + HIDWORD(v20) != 0x7FFFFFFF)
          {
            v23 = sub_104A508(*a1, v10, v10[2], *(a1 + 2968));
            if (v23 != -1 && HIDWORD(v23) != 0x7FFFFFFF)
            {
              sub_F92948((*a1 + 8), *v10, 1, (a1 + 2976));
              v25 = -1171354717 * ((*(a1 + 2984) - *(a1 + 2976)) >> 3);
              if (v25)
              {
                v26 = 0;
                v27 = 0;
                if (v23 < 0)
                {
                  v28 = -5;
                }

                else
                {
                  v28 = 5;
                }

                v77 = SHIDWORD(v23) / 10 + (((103 * (SHIDWORD(v23) % 10 + v28)) >> 15) & 1) + ((103 * (SHIDWORD(v23) % 10 + v28)) >> 10);
                v73 = v21 + v23;
                v72 = v22 + HIDWORD(v23);
                v29 = 88 * v25;
                while (2)
                {
                  v30 = *(a1 + 2976);
                  v31 = *(a1 + 2960);
                  if (v31 == 0x7FFFFFFF)
                  {
                    v32 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v32 = v77 + v31;
                  }

                  v33 = *a1;
                  v34 = *(a1 + 2968);
                  if (*(*a1 + 1474) == 1)
                  {
                    if (sub_100A224((v33 + 1560), (v30 + v26)) != -1)
                    {
                      goto LABEL_24;
                    }

                    v35 = *(v30 + v26 + 32);
                    v36 = HIDWORD(v35) & 0x40000000;
                    v37 = v35 < 0 && v36 == 0;
                    v38 = v37 ? 0x40000000 : 0;
                    *&v83 = v35 | ((HIDWORD(v35) & 0x6FFFFFFF | (((v38 | (v36 >> 1)) == 0x40000000) << 31)) << 32);
                    if (sub_100B6E4(v33 + 1480, &v83) != -1)
                    {
                      goto LABEL_24;
                    }
                  }

                  v83 = 0u;
                  v84 = 0u;
                  v85 = v76;
                  v86 = 0x3FF0000000000000;
                  LOBYTE(v87) = 1;
                  sub_10BC914((v33 + 192), &v83, (v30 + v26), 0x3B9ACA00u, v34);
                  if ((v87 & 1) == 0)
                  {
                    goto LABEL_24;
                  }

                  v40 = sub_F8634C(&v83, &v85, v39);
                  if (v84 + v40 == -1 || DWORD1(v84) + HIDWORD(v40) == 0x7FFFFFFF)
                  {
                    goto LABEL_24;
                  }

                  v41 = (v30 + v26);
                  v42 = *(v30 + v26 + 80);
                  v43 = *(v30 + v26 + 32);
                  v44 = HIDWORD(v43) & 0x40000000;
                  if (v43 < 0 && v44 == 0)
                  {
                    v46 = 0x40000000;
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v47 = (v72 + DWORD1(v84) + HIDWORD(v40));
                  v79 = (v73 + v84 + v40) | (v47 << 32);
                  v80 = v43 | ((HIDWORD(v43) & 0xFFFFFFF | (v42 >> 25) & 0x80000000 | (v43 >> 33) & 0x10000000 | (v44 >> 1) | v46) << 32);
                  v48 = *(a1 + 2964);
                  *&v83 = v79;
                  DWORD2(v83) = v32;
                  BYTE12(v83) = v48;
                  v49 = v41[4];
                  v50 = HIDWORD(v49) & 0x40000000;
                  if (v49 < 0 && v50 == 0)
                  {
                    v52 = 0x40000000;
                  }

                  else
                  {
                    v52 = 0;
                  }

                  *&v84 = v41[4] | (((v41[10] >> 25) & 0x80000000 | HIDWORD(v49) & 0xFFFFFFF | (v49 >> 33) & 0x10000000 | (v50 >> 1) | v52) << 32);
                  v53 = v41[9];
                  v54 = HIDWORD(v53) & 0x40000000;
                  if (v53 < 0 && v54 == 0)
                  {
                    v56 = 0x40000000;
                  }

                  else
                  {
                    v56 = 0;
                  }

                  *(&v84 + 1) = v41[9] | (((v41[10] >> 26) & 0x80000000 | HIDWORD(v53) & 0xFFFFFFF | (v53 >> 33) & 0x10000000 | (v54 >> 1) | v56) << 32);
                  *&v85 = v41[10];
                  v87 = v27;
                  v88 = 0;
                  v89 = v5 | 0x80000000;
                  v57 = v41[4];
                  v58 = HIDWORD(v57) & 0x40000000;
                  if (v57 < 0 && v58 == 0)
                  {
                    v60 = 0x40000000;
                  }

                  else
                  {
                    v60 = 0;
                  }

                  v78 = v41[4] | ((HIDWORD(v57) & 0xFFFFFFF | (v41[10] >> 25) & 0x80000000 | (v57 >> 33) & 0x10000000 | (v58 >> 1) | v60) << 32);
                  v61 = *(a1 + 1044);
                  if (v61 == 0x7FFFFFFF)
                  {
LABEL_76:
                    sub_104C048(a1 + 1200, &v78, &v83);
                    v66 = v41[4];
                    v67 = HIDWORD(v66) & 0x40000000;
                    if (v66 < 0 && v67 == 0)
                    {
                      v69 = 0x40000000;
                    }

                    else
                    {
                      v69 = 0;
                    }

                    v81[0] = (v41[4] | ((HIDWORD(v66) & 0xFFFFFFF | (v41[10] >> 25) & 0x80000000 | (v66 >> 33) & 0x10000000 | (v67 >> 1) | v69) << 32));
                    LODWORD(v78) = 0;
                    sub_101F030(a1 + 1056, v81, &v78);
                    sub_105A9CC((a1 + 1056), a2);
                    sub_105B98C((a1 + 1056));
                    sub_10508D4(a1, &v80, &v79, v5);
LABEL_24:
                    ++v27;
                    v26 += 88;
                    if (v29 == v26)
                    {
                      goto LABEL_4;
                    }

                    continue;
                  }

                  break;
                }

                sub_105A854(a1 + 1200, &v78, v81);
                if (v81[0])
                {
                  sub_105A854(a1 + 1200, &v78, v81);
                  v62 = *(*(a1 + 1968) + 80 * *(v82 + 8) + 8);
                  if (v83 == v62)
                  {
                    if (SDWORD1(v83) >= SHIDWORD(v62))
                    {
                      goto LABEL_76;
                    }
                  }

                  else if (v83 >= v62)
                  {
                    goto LABEL_76;
                  }

                  sub_105A854(a1 + 1200, &v78, v81);
                  v63 = *(*(a1 + 1968) + 80 * *(v82 + 8) + 12);
                  v64 = *(a1 + 1044);
                  if (v64 >= v63 && v47 > v61)
                  {
                    v65 = -1;
LABEL_75:
                    *(a1 + 1048) += v65;
                    goto LABEL_76;
                  }

                  if (v64 >= v63)
                  {
                    goto LABEL_76;
                  }
                }

                if (v47 > v61)
                {
                  goto LABEL_76;
                }

                v65 = 1;
                goto LABEL_75;
              }
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v75);
  }
}

void sub_104DBCC(uint64_t a1)
{
  v52 = -1431655765 * ((*(a1 + 1176) - *(a1 + 1168)) >> 5);
  if (v52)
  {
    v2 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v61 = _Q0;
    while (1)
    {
      v55 = v2;
      v6 = (*(a1 + 1168) + 96 * v2);
      if (*(a1 + 3048) == 1)
      {
        sub_1051E9C(a1, v6);
      }

      sub_105C338(*(a1 + 976) + 24, v6, &v63);
      if (v63)
      {
        v60 = *(v6 + 2);
        v7 = *a1;
        v8 = *(a1 + 2968);
        v63 = 0u;
        v64 = 0u;
        v65 = v61;
        v66 = 0x3FF0000000000000;
        v67 = 1;
        sub_10B9770((v7 + 192), &v63, v6, (v6 + 1), v8, 1, 1);
        if (v67)
        {
          v10 = sub_F8634C(&v63, &v65, v9);
          v54 = v64 + v10;
          if (v64 + v10 != -1)
          {
            v53 = DWORD1(v64) + HIDWORD(v10);
            if (DWORD1(v64) + HIDWORD(v10) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      v2 = v55 + 1;
      if (v55 + 1 == v52)
      {
        return;
      }
    }

    sub_105C338(*(a1 + 976) + 24, v6, &v63);
    v12 = *(*(&v64 + 1) + 8);
    v11 = *(*(&v64 + 1) + 16);
    for (i = v11; ; v11 = i)
    {
      if (v12 == v11)
      {
        goto LABEL_3;
      }

      v59 = v12;
      v13 = (**(a1 + 976) + 32 * *v12);
      v14 = -1431655765 * ((v13[1] - *v13) >> 5);
      if (v14)
      {
        break;
      }

LABEL_11:
      v12 = v59 + 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = (*v13 + 96 * v15);
      if (*v16 != *v6)
      {
        goto LABEL_15;
      }

      if (v16[1] != *(v6 + 1))
      {
        goto LABEL_15;
      }

      v17 = v16[2];
      v18 = *a1;
      v19 = *(a1 + 2968);
      v63 = 0u;
      v64 = 0u;
      v65 = v61;
      v66 = 0x3FF0000000000000;
      v67 = 1;
      sub_10B9770((v18 + 192), &v63, v16, (v16 + 2), v19, 1, 1);
      if ((v67 & 1) == 0)
      {
        goto LABEL_15;
      }

      LODWORD(v20) = v63;
      v21 = *&v65 * v20;
      if (v21 >= 0.0)
      {
        if (v21 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) + 1;
      }

      else
      {
        if (v21 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
      }

      v21 = (v22 >> 1);
LABEL_25:
      v23 = *(&v65 + 1) * SDWORD1(v63);
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v24 = (v23 + v23) + 1;
          goto LABEL_30;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
        v23 = (v24 >> 1);
      }

      if (v64 + v21 == -1 || DWORD1(v64) + v23 == 0x7FFFFFFF || v60 < v17)
      {
        goto LABEL_15;
      }

      v57 = DWORD1(v64) + v23;
      v58 = v64 + v21;
      v27 = *a1;
      v28 = *(a1 + 2968);
      if (*(*a1 + 1474) == 1)
      {
        v29 = *v6;
        v30 = *(v6 + 1) & 0xFFFFFFF | (((*(v6 + 1) >> 28) & 3) << 29) | (((*(v6 + 1) & 0x60000000) == 0x40000000) << 31);
        v31 = *(v27 + 1536) - 1;
        v32 = 0x2127599BF4325C37 * (((v30 >> 29) & 2 | (v30 >> 31) | (v30 >> 27) & 4 | (v29 << 32) | (8 * (v30 & 0xFFFFFFF))) ^ (((v29 << 32) | (8 * (v30 & 0xFFFFFFF))) >> 23));
        v33 = *(v27 + 1552);
        v34 = *(v27 + 1544);
        v35 = *(v27 + 1548);
        v36 = (v32 ^ (v32 >> 47)) & v31;
        v38 = *(v33 + 8 * v36);
        v37 = *(v33 + 8 * v36 + 4);
        if (v34 != v38 || v35 != v37)
        {
          if (*(v27 + 1520))
          {
            v40 = 1;
            while (*(v27 + 1512) == v38 && *(v27 + 1516) == v37 || v38 != v29 || v37 != v30)
            {
              v36 = (v36 + v40) & v31;
              v38 = *(v33 + 8 * v36);
              v37 = *(v33 + 8 * v36 + 4);
              ++v40;
              if (v34 == v38 && v35 == v37)
              {
                goto LABEL_63;
              }
            }
          }

          else
          {
            v42 = 1;
            while (v38 != v29 || v37 != v30)
            {
              v36 = (v36 + v42) & v31;
              v38 = *(v33 + 8 * v36);
              v37 = *(v33 + 8 * v36 + 4);
              ++v42;
              if (v34 == v38 && v35 == v37)
              {
                goto LABEL_63;
              }
            }
          }

          if (v36 != -1)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_63:
      sub_F92868((v27 + 8), *v6 | ((HIDWORD(*v6) & 0xFFFFFFF | (*v6 >> 31) & 0x60000000 | (((*v6 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v62);
      v63 = 0u;
      v64 = 0u;
      v65 = v61;
      v66 = 0x3FF0000000000000;
      v67 = 1;
      sub_10B9C08((v27 + 192), &v63, v62, v60 - v17, v28);
      if (v67)
      {
        LODWORD(v44) = v63;
        v45 = *&v65 * v44;
        if (v45 >= 0.0)
        {
          if (v45 < 4.50359963e15)
          {
            v46 = (v45 + v45) + 1;
LABEL_69:
            v45 = (v46 >> 1);
          }
        }

        else if (v45 > -4.50359963e15)
        {
          v46 = (v45 + v45) - 1 + (((v45 + v45) - 1) >> 63);
          goto LABEL_69;
        }

        v47 = *(&v65 + 1) * SDWORD1(v63);
        if (v47 >= 0.0)
        {
          if (v47 < 4.50359963e15)
          {
            v48 = (v47 + v47) + 1;
LABEL_75:
            v47 = (v48 >> 1);
          }
        }

        else if (v47 > -4.50359963e15)
        {
          v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
          goto LABEL_75;
        }

        v49 = v64 + v45;
        v50 = DWORD1(v64) + v47;
        if (v49 != -1 && v50 != 0x7FFFFFFF)
        {
          LODWORD(v63) = v58 + v54 + v49;
          DWORD1(v63) = v57 + v53 + v50;
          sub_104BD90(a1, v6, &v63, *v59, v55, v15, 1, 0);
        }
      }

LABEL_15:
      if (++v15 == v14)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_104E228(void *****a1, unsigned int *a2, unsigned int a3)
{
  if (*(*a1 + 1472) == 1 && sub_6EECC())
  {
    v6 = sub_101E508(a1[1]) - 1;
  }

  else
  {
    v6 = 0;
  }

  if (*a2 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a2;
  }

  if (*a2 != -1)
  {
    v6 = v7;
  }

  v86 = v6;
  v87 = v6;
  if (*(a1 + 518))
  {
    v80 = (a1 + 375);
    v8 = -1;
    do
    {
      if (((a1[250] - a1[249]) >> 2) >= a3)
      {
        return;
      }

      v9 = &a1[246][10 * *a1[253]];
      v96[0] = *v9;
      v10 = v9[3];
      v11 = v9[4];
      v12 = v9[2];
      v96[1] = v9[1];
      v96[3] = v10;
      v97 = v11;
      v96[2] = v12;
      sub_1032874((a1 + 150));
      v13 = **a1;
      if (*(v13 + 7774) == 1)
      {
        v14 = LODWORD(v96[0]);
        v15 = DWORD1(v96[0]);
        if ((v16 = sub_2AF704(v13 + 3896, v96[0], 1)) == 0)
        {
          continue;
        }

        v17 = &v16[-*v16];
        if (*v17 < 5u || (v18 = *(v17 + 2)) == 0 || *&v16[v18 + *&v16[v18]] <= (v15 & 0xFFFFFFFu) || !sub_2B817C(v13, v14 & 0xF0000000FFFFFFFFLL | ((v15 & 0xFFFFFFF) << 32)))
        {
          continue;
        }
      }

      if (*(a1 + 1052) != 1 || sub_2B8438(**a1, LODWORD(v96[0]) | ((DWORD1(v96[0]) & 0xFFFFFFF) << 32)))
      {
        v19 = DWORD2(v97);
        v20 = *(a1 + 260);
        if (v20 != -1 && DWORD2(v96[0]) > v20 || *(a1 + 3048) == 1 && sub_10510B0(a1, v96 + 2))
        {
          return;
        }

        v21 = *(a1 + 261);
        if (v21 != 0x7FFFFFFF && SHIDWORD(v96[0]) <= v21)
        {
          --*(a1 + 262);
        }

        if (*(a1 + 756) == -1 || (v22 = a1[1], LODWORD(v88) = *(a1 + 756), !sub_101F374(*v22, *&v96[0] & 0xFFFFFFFFFFFFFFFLL, &v88)))
        {
          v81 = v19 & 0x7FFFFFFF;
          v85 = sub_10512B4(a1, v96, v96 + 2, v19 & 0x7FFFFFFF);
          v23 = *(a1 + 740);
          v24 = 0x7FFFFFFF;
          if (v23 != 0x7FFFFFFF)
          {
            if (v96[0] < 0)
            {
              v25 = -5;
            }

            else
            {
              v25 = 5;
            }

            v24 = SHIDWORD(v96[0]) / -10 + v23 + (((-103 * (v25 + SHIDWORD(v96[0]) % 10)) >> 15) & 1) + ((-103 * (v25 + SHIDWORD(v96[0]) % 10)) >> 10);
          }

          v84 = v24;
          v26 = sub_394BD0();
          v27 = &v87;
          if (v26)
          {
            v27 = &v86;
          }

          v28 = *v27 >= v85 ? &v85 : v27;
          v29 = sub_105167C(a1, v96, a1[371], &v84, *(a1 + 2964), v28);
          v30 = v29;
          if (v29 != -1)
          {
            if (v29)
            {
              v53 = a1[1];
              LODWORD(v88) = v29;
              v54 = sub_101F854(*v53, *&v96[0] & 0xFFFFFFFFFFFFFFFLL, (*&v96[0] & 0x1000000000000000) != 0, &v88);
              v83 = v54;
              if (!v54)
              {
                continue;
              }

              if (v54 > 0xFFFFFFFEFFFFFFFFLL)
              {
                continue;
              }

              v79 = *(a1 + 2964);
              sub_1061D68(*a1 + 30, *&v96[0], v30, 1, a1[371], v84, v79, v80);
              if (a1[375] == a1[376])
              {
                continue;
              }

              sub_585C38((a1 + 260), &v83, &v88);
              v55 = v88;
              if (v90 == 1)
              {
                v56 = *(v88 + 8) + 12 * v89;
                *v56 = v83;
                *(v56 + 8) = 0x7FFFFFFF;
              }

              v57 = *(v55 + 8) + 12 * v89;
              v60 = *(v57 + 8);
              v58 = (v57 + 8);
              v59 = v60;
              if (v60 == 0x7FFFFFFF || SHIDWORD(v96[0]) < v59)
              {
                *v58 = HIDWORD(v96[0]);
              }

              v61 = -858993459 * ((a1[376] - a1[375]) >> 3);
              if (v61)
              {
                v62 = 0;
                v63 = 0;
                v64 = 40 * v61;
                do
                {
                  v65 = *v80 + v62;
                  v66 = *(v65 + 28);
                  v67 = v66 & 0xFFFFFFFF00000000;
                  if (v66 != -1 && v67 != 0x7FFFFFFF00000000)
                  {
                    v88 = (v67 + *(&v96[0] + 1)) & 0xFFFFFFFF00000000 | (v66 + DWORD2(v96[0]));
                    LODWORD(v89) = v84;
                    BYTE4(v89) = v79;
                    *&v91 = 0;
                    v90 = 0uLL;
                    v93 = v63;
                    v94 = v30;
                    v95 = v81;
                    v69 = *(v65 + 8);
                    v70 = *(v65 + 1);
                    v90 = *v65;
                    v91 = v70;
                    v92 = v69;
                    v82 = *v65;
                    sub_104A674(a1, &v82, &v88);
                  }

                  ++v63;
                  v62 += 40;
                }

                while (v64 != v62);
              }
            }

            else
            {
              if ((a1[381] & 1) == 0)
              {
                sub_10508D4(a1, v96, v96 + 2, v81);
              }

              sub_F92948(*a1 + 8, *&v96[0], 1, a1 + 372);
              v31 = -1171354717 * ((a1[373] - a1[372]) >> 3);
              if (v31)
              {
                v32 = 0;
                v33 = 0;
                v34 = 88 * v31;
                do
                {
                  v35 = a1[372];
                  v36 = sub_104B508(*a1, &v35[v32 / 8], a1[371]);
                  v37 = v36 & 0xFFFFFFFF00000000;
                  if (v36 != -1 && v37 != 0x7FFFFFFF00000000)
                  {
                    v39 = &v35[v32 / 8];
                    v40 = v35[v32 / 8 + 4];
                    v41 = HIDWORD(v40) & 0x40000000;
                    if (v40 < 0 && v41 == 0)
                    {
                      v43 = 0x40000000;
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v83 = v35[v32 / 8 + 4] | ((HIDWORD(v40) & 0xFFFFFFF | (v35[v32 / 8 + 10] >> 25) & 0x80000000 | (v40 >> 33) & 0x10000000 | (v41 >> 1) | v43) << 32);
                    v82 = (*(&v96[0] + 1) + v37) & 0xFFFFFFFF00000000 | (DWORD2(v96[0]) + v36);
                    v44 = *(a1 + 2964);
                    v88 = v82;
                    LODWORD(v89) = v84;
                    BYTE4(v89) = v44;
                    v45 = v39[4];
                    v46 = HIDWORD(v45) & 0x40000000;
                    if (v45 < 0 && v46 == 0)
                    {
                      v48 = 0x40000000;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    *&v90 = v39[4] | (((v39[10] >> 25) & 0x80000000 | HIDWORD(v45) & 0xFFFFFFF | (v45 >> 33) & 0x10000000 | (v46 >> 1) | v48) << 32);
                    v49 = v39[9];
                    v50 = HIDWORD(v49) & 0x40000000;
                    if (v49 < 0 && v50 == 0)
                    {
                      v52 = 0x40000000;
                    }

                    else
                    {
                      v52 = 0;
                    }

                    *(&v90 + 1) = v39[9] | (((v39[10] >> 26) & 0x80000000 | HIDWORD(v49) & 0xFFFFFFF | (v49 >> 33) & 0x10000000 | (v50 >> 1) | v52) << 32);
                    *&v91 = v39[10];
                    v93 = v33;
                    v94 = 0;
                    v95 = v81;
                    sub_104A674(a1, &v83, &v88);
                    sub_10508D4(a1, &v83, &v82, v81);
                  }

                  ++v33;
                  v32 += 88;
                }

                while (v34 != v32);
              }
            }

            v71 = *(a1 + 261);
            if (v71 != 0x7FFFFFFF && !*(a1 + 262) && v8 == -1)
            {
              v72 = a1[119];
              v73 = a1[120];
              if (v72 == v73)
              {
                return;
              }

              v8 = 0;
              v74 = a1[116];
              do
              {
                if (0xAAAAAAAAAAAAAAABLL * (a1[117] - v74) > *v72)
                {
                  v75 = v74[3 * *v72 + 1];
                }

                else
                {
                  v75 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v76 = HIDWORD(v75);
                if (v8 > v75)
                {
                  LODWORD(v75) = v8;
                }

                if (v71 >= v76)
                {
                  v8 = v75;
                }

                ++v72;
              }

              while (v72 != v73);
              v77 = *(a1 + 260);
              if (v77 == -1 || v8 < v77)
              {
                *(a1 + 260) = v8;
              }
            }
          }
        }
      }
    }

    while (*(a1 + 518));
  }
}

void sub_104E9E8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, _DWORD *a6, int a7, unsigned int *a8, uint64_t *a9, void *a10, unsigned int a11, int a12, int a13)
{
  sub_104C798(a1);
  *(a1 + 2960) = *a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  if (a1 + 1168 != a2)
  {
    sub_C70E60(a1 + 1168, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = *a6;
  *(a1 + 1044) = a7;
  *(a1 + 20) = a13;
  *(a1 + 976) = a1 + 24;
  sub_104CAE0(a1);
  sub_104D4C0(a1, a10);
  v21 = *a9;
  v20 = a9[1];
  if (*a9 != v20)
  {
    do
    {
      v23 = *(v21 + 8);
      sub_101F030(a1 + 1056, v21, &v23);
      sub_105A9CC((a1 + 1056), a10);
      sub_105B98C((a1 + 1056));
      v21 += 16;
    }

    while (v21 != v20);
  }

  sub_104E228(a1, a8, a11);
}

void sub_104EB20(uint64_t *a1, uint64_t a2, uint64_t ***a3, uint64_t a4, __int32 a5, __int8 a6, __int32 a7, __int32 a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_104C798(a1);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18)
  {
    v20 = *a3;
  }

  else
  {
    do
    {
      v24 = a1;
      sub_1050600((a1 + 3), v19, 1, &v24);
      v19 += 4;
    }

    while (v19 != v18);
    v19 = *a3;
    v20 = a3[1];
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[117] - a1[116]) >> 3);
  v22 = (v20 - v19) >> 5;
  if (v22 > v21)
  {
    sub_1052E94((a1 + 116), v22 - v21);
  }

  a1[122] = (a1 + 3);
  sub_104EC30(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_104EC30(int32x2_t *a1, uint64_t a2, uint64_t a3, __int32 a4, __int8 a5, __int32 a6, __int32 a7, unsigned int a8, unsigned int a9)
{
  v18 = a8;
  a1[370].i32[0] = a4;
  a1[370].i8[4] = a5;
  a1[371] = a3;
  v13 = &a1[146];
  if (v13 != a2)
  {
    sub_C70E60(v13, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  a1[149] = *(a2 + 24);
  a1[130].i32[0] = a6;
  a1[130].i32[1] = a7;
  v14 = a1[122];
  if (v14[11] + v14[5] + v14[17] + v14[23] + v14[29] + v14[35] + v14[41] + v14[47] + v14[53] + v14[59] + v14[65] + v14[71] + v14[77] + v14[83] + v14[89] + v14[95] || a1[381].i8[0] == 1)
  {
    sub_104CAE0(a1);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_104D4C0(a1, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_104DBCC(a1);
    sub_104E228(a1, &v18, a9);
  }
}

void sub_104ED8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_104EDA8(int32x2_t *a1, uint64_t a2, __int32 a3, __int8 a4, __int32 a5, __int32 a6, unsigned int a7, unsigned int a8, __int32 a9, __int8 a10)
{
  if (!*&a1[379])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v24 = sub_2D390(exception, "A BucketSearchDataProvider is required for the bucket search query", 0x42uLL);
  }

  sub_104C798(a1);
  a1[122] = &a1[3];
  a1[381].i8[0] = 1;
  a1[381].i8[1] = a10;
  a1[381].i32[1] = a9;
  a1[384] = a1[383];
  a1[382].i32[0] = 0;
  v18 = a1[379];
  if ((*(*&v18 + 224) & 1) == 0)
  {
    v25 = __cxa_allocate_exception(0x40uLL);
    v26 = sub_2D390(v25, "The bucket search cost function has to be preprocessed.", 0x37uLL);
  }

  v19 = *(*&v18 + 204);
  v20 = *(*&v18 + 216);
  if (v19 >= a7)
  {
    v21 = a7;
  }

  else
  {
    v21 = *(*&v18 + 204);
  }

  if (a7 == -1)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  sub_104EC30(a1, a2, v20, a3, a4, a5, a6, v22, a8);
}

uint64_t sub_104EEF4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = (v2 + 24 * a2), !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v9 = sub_2D390(exception, v7, size);
  }

  return v3[5] & 0x3FFFFFFF;
}

void sub_104EFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_104F020(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = (v2 + 24 * a2), !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v9 = sub_2D390(exception, v7, size);
  }

  return v3[4];
}

void sub_104F0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_104F148(void *a1, unint64_t a2)
{
  v2 = a1[116];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[117] - v2) >> 3) <= a2 || !*(v2 + 24 * a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v9, a2);
    sub_23E08("No valid data for target id ", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return *(a1[482] + 8 * a2);
}

void sub_104F21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_104F274@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = 0;
  sub_104F348(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_104F334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_104F348@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = sub_F6EB3C(a4);
  v9 = a1[116];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[117] - v9) >> 3) > a2)
  {
    v10 = v9 + 24 * a2;
    if (*v10)
    {
      if (*(a1 + 3048) != 1 || *(a1 + 3049) == 1)
      {
        if ((*(v10 + 23) & 0x40) != 0)
        {
          v11 = *v10;
          sub_F92868((*a1 + 8), *v10 | ((HIDWORD(*v10) & 0xFFFFFFF | (*v10 >> 31) & 0x60000000 | (((*v10 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v12);
          sub_F69060(a4, v11, v12, 0);
          sub_F6901C(a4, a1[146] + 96 * (*(v10 + 20) & 0x3FFFFFFF) + 8);
        }

        else
        {
          sub_104F654(a1, v10, a3, v12);
          sub_49C304(a4, v12);
          sub_4547F0(v12);
        }

        if ((*(v10 + 20) & 0x80000000) != 0)
        {
          sub_104FBE4(v10, a1[485] + 40 * a2, v12);
          sub_F70C60(a4, v12);
          sub_4547F0(v12);
        }

        return sub_F68F20(a4, *(*a1[122] + 32 * a2) + 96 * *(v10 + 16) + 8);
      }
    }
  }

  return result;
}

void sub_104F500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4547F0(va);
  sub_4547F0(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_104F580@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  sub_104F654(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_104F640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1048C00(va);
  _Unwind_Resume(a1);
}

void sub_104F654(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_F6EB3C(a4);
  if (*a2)
  {
    v43 = *a2;
    if (v43)
    {
      v35 = a2;
      __src = 0;
      v8 = 0;
      while (1)
      {
        sub_105A854((a1 + 150), &v43, &v37);
        v9 = a1[246] + 80 * *(*(&v38 + 1) + 8);
        v10 = v8 - __src;
        v11 = 0x8E38E38E38E38E39 * ((v8 - __src) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        if (0x1C71C71C71C71C72 * (-__src >> 3) > v12)
        {
          v12 = 0x1C71C71C71C71C72 * (-__src >> 3);
        }

        if (0x8E38E38E38E38E39 * (-__src >> 3) >= 0x1C71C71C71C71C7)
        {
          v13 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          if (v13 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v14 = 8 * ((v8 - __src) >> 3);
        *v14 = *(v9 + 8);
        v15 = *(v9 + 24);
        v16 = *(v9 + 40);
        v17 = *(v9 + 56);
        *(v14 + 64) = *(v9 + 72);
        *(v14 + 32) = v16;
        *(v14 + 48) = v17;
        *(v14 + 16) = v15;
        v8 = v14 + 72;
        v18 = 72 * v11 + 72 * (v10 / -72);
        memcpy((v14 + 72 * (v10 / -72)), __src, v10);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v18;
        if ((*(v9 + 72) & 0x80000000) != 0)
        {
          break;
        }

        v43 = *(v9 + 32);
        if (!v43)
        {
          v19 = v18;
          if (v18 != v8)
          {
            goto LABEL_21;
          }

LABEL_18:
          if (!v8)
          {
            return;
          }

LABEL_46:
          operator delete(v19);
          return;
        }
      }

      v43 = 0;
      v19 = v18;
      if (v18 == v8)
      {
        goto LABEL_18;
      }

LABEL_21:
      __p[0] = 0;
      __p[1] = 0;
      v20 = v19;
      v42 = 0;
      while (!*(v20 + 15))
      {
        if (*(a3 + 24) && !sub_F6FDC8(a4))
        {
          *&v37 = *(v20 + 2);
          v28 = *(a3 + 24);
          if (!v28)
          {
            sub_2B7420();
          }

          if ((*(*v28 + 48))(v28, &v37))
          {
            goto LABEL_42;
          }
        }

        v29 = *a1;
        sub_F92868((*a1 + 8), *(v20 + 2) | ((HIDWORD(*(v20 + 2)) & 0xFFFFFFF | (*(v20 + 2) >> 31) & 0x60000000 | (((*(v20 + 2) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v44);
        sub_F92868((v29 + 8), *(v20 + 3) | ((HIDWORD(*(v20 + 3)) & 0xFFFFFFF | (*(v20 + 3) >> 31) & 0x60000000 | (((*(v20 + 3) & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v39 + 1);
        *&v39[0] = v45;
        v37 = v44[0];
        v38 = v44[1];
        v40 = *(v20 + 4);
        sub_F6F284(a4, &v37, 0);
LABEL_22:
        v20 += 72;
        if (v20 == v8)
        {
          sub_105A854((a1 + 150), v35, &v37);
          sub_F6901C(a4, a1[146] + 96 * (*(a1[246] + 80 * *(*(&v38 + 1) + 8) + 72) & 0x7FFFFFFF) + 8);
          goto LABEL_43;
        }
      }

      sub_1080924((*a1 + 336), (v20 + 16), a1[371], v20 + 2, v20[12], __p);
      v21 = __p[1];
      v22 = __p[0];
      if (__p[0] != __p[1])
      {
        while (1)
        {
          if (*(a3 + 24) && !sub_F6FDC8(a4))
          {
            v23 = v22[4];
            v24 = HIDWORD(v23) & 0x40000000;
            if (v23 < 0 && v24 == 0)
            {
              v26 = 0x40000000;
            }

            else
            {
              v26 = 0;
            }

            *&v37 = v22[4] | (((v22[10] >> 25) & 0x80000000 | HIDWORD(v23) & 0xFFFFFFF | (v23 >> 33) & 0x10000000 | (v24 >> 1) | v26) << 32);
            v27 = *(a3 + 24);
            if (!v27)
            {
              sub_2B7420();
            }

            if ((*(*v27 + 48))(v27, &v37))
            {
              break;
            }
          }

          sub_F6F284(a4, v22, 0);
          v22 += 11;
          if (v22 == v21)
          {
            goto LABEL_22;
          }
        }

LABEL_42:
        v30 = sub_F69058(a4);
        v31 = *(v30 + 16);
        v37 = *v30;
        v38 = v31;
        v32 = *(v30 + 32);
        v33 = *(v30 + 48);
        v34 = *(v30 + 64);
        v40 = *(v30 + 80);
        v39[1] = v33;
        v39[2] = v34;
        v39[0] = v32;
        LODWORD(v37) = 1000000000;
        sub_F6901C(a4, &v37);
        goto LABEL_43;
      }

      sub_F6E9D8(a4);
LABEL_43:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v19)
      {
        goto LABEL_46;
      }
    }
  }
}

void sub_104FB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    if (!a10)
    {
LABEL_3:
      sub_4547F0(v24);
      _Unwind_Resume(a1);
    }
  }

  else if (!a10)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  sub_4547F0(v24);
  _Unwind_Resume(a1);
}

void sub_104FBE4(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_F6EB3C(a3);
  if (*a1)
  {
    v6 = *a1;
    if (v6)
    {
      v5 = *(a2 + 32);
      if (v5 == 2)
      {
        sub_105C628(a2, &v6);
      }

      else
      {
        if (v5 != 1)
        {
          sub_5AF20();
        }

        sub_105C7AC(*a2, &v6);
      }

      operator new();
    }
  }
}

void sub_104FEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  if (!v16)
  {
LABEL_4:
    sub_4547F0(a10);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_4547F0(a10);
  _Unwind_Resume(a1);
}

unint64_t sub_104FF94(void *a1)
{
  v32.n128_u64[0] = -1;
  v32.n128_u64[1] = -1;
  v2 = a1 + 260;
  v3 = a1[260];
  v4 = a1[261];
  if (*v3 > -2)
  {
    v5 = a1[260];
    v18 = a1[263];
    v7 = &v3[v18];
    if (v3 != &v3[v18])
    {
LABEL_5:
      v8 = (a1 + 260);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[260];
    do
    {
      v6 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v5 = (v5 + v6);
      v4 = (v4 + 12 * v6);
    }

    while (*v5 < -1);
    v7 = &v3[a1[263]];
    if (v5 != v7)
    {
      goto LABEL_5;
    }
  }

  v8 = (a1 + 266);
  v19 = 6;
  v20 = a1 + 260;
  while (1)
  {
    v4 = v20[7];
    v5 = *v8;
    if (**v8 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v5 = (v5 + v21);
        v4 = (v4 + 12 * v21);
      }

      while (*v5 < -1);
    }

    v7 = &(*v8)[v20[9]];
    if (v5 != v7)
    {
      break;
    }

    v20 = &v2[v19];
    v19 += 6;
    v8 = &v2[v19];
    if (v19 == 96)
    {
      goto LABEL_26;
    }
  }

LABEL_6:
  v9 = (a1 + 356);
  do
  {
    while (1)
    {
      v10 = a1[1];
      v11 = *v4;
      v4 = (v4 + 12);
      v31.n128_u64[0] = v11;
      v31.n128_u64[0] = sub_10539D0(*v10, &v31);
      v31.n128_u64[1] = v12;
      sub_32114(&v32, &v31);
      LODWORD(v11) = *(v5 + 1);
      v5 = (v5 + 1);
      if (v11 <= -2)
      {
        do
        {
          v13 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v13);
          v4 = (v4 + 12 * v13);
        }

        while (*v5 < -1);
      }

      if (v5 == v7)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v14 = v8 + 6;
    if (v8 + 6 == v9)
    {
      break;
    }

    while (1)
    {
      v15 = v14;
      v16 = v8[6];
      v4 = v8[7];
      v5 = v16;
      if (*v16 <= -2)
      {
        do
        {
          v17 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v17);
          v4 = (v4 + 12 * v17);
        }

        while (*v5 < -1);
      }

      v7 = &v8[9][v16];
      if (v5 != v7)
      {
        break;
      }

      v14 = v15 + 6;
      v8 = v15;
      if (v15 + 6 == v9)
      {
        goto LABEL_26;
      }
    }

    v8 = v15;
  }

  while (v15);
LABEL_26:
  if (!sub_329BC(&v32))
  {
    v22 = a1[249];
    for (i = a1[250]; v22 != i; ++v22)
    {
      v24 = a1[1];
      v25 = *(a1[246] + 80 * *v22);
      v31.n128_u32[0] = 1;
      v26 = sub_101F854(*v24, v25 & 0xFFFFFFFFFFFFFFFLL, (v25 & 0x1000000000000000) != 0, &v31);
      if (v26)
      {
        v27 = HIDWORD(v26) == 0xFFFFFFFF;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = a1[1];
        v33 = v26;
        v31.n128_u64[0] = sub_10539D0(*v28, &v33);
        v31.n128_u64[1] = v29;
        sub_32114(&v32, &v31);
        operator new();
      }
    }
  }

  return v32.n128_u64[0];
}

void sub_10503A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10503C8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  sub_105A854(a1 + 1200, &v5, v6);
  if (!v6[0])
  {
    return 0;
  }

  sub_105A854(a1 + 1200, &v5, v6);
  v3 = *(a1 + 1968) + 80 * *(v6[3] + 2);
  if ((*(v3 + 72) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(v3 + 32);
  }
}

unint64_t sub_1050450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v15 = a2;
  sub_105A854(a1 + 1200, &v15, v16);
  v4 = v16[0];
  if (v16[0])
  {
    sub_105A854(a1 + 1200, &v14, v16);
    v4 = v16[0];
    if (v16[0])
    {
      v12 = v14;
      v13 = v15;
      sub_105A854(a1 + 1200, &v13, v16);
      v5 = *(v17 + 8);
      v6 = *(a1 + 1968);
      sub_105A854(a1 + 1200, &v12, v16);
      v7 = v13;
      if (v13)
      {
        v8 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
        v9 = v6 + 80 * v5 + 8;
        do
        {
          if (!v12)
          {
            break;
          }

          if (__PAIR64__(HIDWORD(v13), v7) == v12)
          {
            v4 = v13 & 0xFFFFFFFF00000000;
            v11 = v13;
            return v11 | v4;
          }

          if (*v8 == *v9)
          {
            if (*(v8 + 4) >= *(v9 + 4))
            {
              goto LABEL_12;
            }
          }

          else if (*v8 >= *v9)
          {
LABEL_12:
            if ((*(v8 + 64) & 0x80000000) != 0)
            {
              v12 = 0;
            }

            else
            {
              v12 = *(v8 + 24);
              if (v12)
              {
                sub_105A854(a1 + 1200, &v12, v16);
                v8 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
              }
            }

            goto LABEL_6;
          }

          if ((*(v9 + 64) & 0x80000000) != 0)
          {
            break;
          }

          v13 = *(v9 + 24);
          if (v13)
          {
            sub_105A854(a1 + 1200, &v13, v16);
            v9 = *(a1 + 1968) + 80 * *(v17 + 8) + 8;
          }

LABEL_6:
          v7 = v13;
        }

        while (v13);
      }

      v4 = 0;
    }
  }

  v11 = 0;
  return v11 | v4;
}

void *sub_1050600(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v27 = a2;
    v28 = ((v5 - *a1) >> 5);
    do
    {
      v11 = **a4;
      v29[0] = *v6 | ((HIDWORD(*v6) & 0xFFFFFFF | (*v6 >> 31) & 0x60000000 | (((*v6 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32);
      if (sub_100B6E4(v11 + 1480, v29) == -1)
      {
        if (a3)
        {
          LODWORD(v29[0]) = 0;
          sub_101F030(a1 + 792, v6, v29);
          sub_105B98C((a1 + 792));
        }

        sub_105BBDC(a1 + 24, v6, v29);
        v12 = v30;
        v14 = v30[2];
        v13 = v30[3];
        if (v14 < v13)
        {
          *v14 = v28;
          v10 = v14 + 8;
        }

        else
        {
          v15 = v30[1];
          v16 = v14 - v15;
          v17 = (v14 - v15) >> 3;
          v18 = v17 + 1;
          if ((v17 + 1) >> 61)
          {
            sub_1794();
          }

          v19 = a3;
          v20 = v13 - v15;
          if (v20 >> 2 > v18)
          {
            v18 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v18;
          }

          if (v21)
          {
            if (!(v21 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = (v14 - v15) >> 3;
          v23 = (8 * v17);
          v24 = (8 * v17 - 8 * v22);
          *v23 = v28;
          v10 = v23 + 1;
          memcpy(v24, v15, v16);
          v12[1] = v24;
          v12[2] = v10;
          v12[3] = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a3 = v19;
        }

        v12[2] = v10;
      }

      v6 += 12;
    }

    while (v6 != v7);
    v5 = *(a1 + 8);
    a2 = v27;
  }

  if (v5 >= *(a1 + 16))
  {
    result = sub_1020B2C(a1, a2);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v25 = a2[1];
    if (v25 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v25 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v5[3] = a2[3];
    result = v5 + 4;
    *(a1 + 8) = v5 + 4;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_10508B4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_10508D4(uint64_t a1, uint64_t *a2, _DWORD *a3, int a4)
{
  if (*(a1 + 3048) == 1)
  {
    sub_1051E9C(a1, a2);
  }

  sub_105C338(*(a1 + 976) + 24, a2, &v79);
  if (v79)
  {
    sub_105C338(*(a1 + 976) + 24, a2, &v79);
    v6 = *(*(&v80 + 1) + 8);
    v72 = *(*(&v80 + 1) + 16);
    if (v6 != v72)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v77 = _Q0;
      while (1)
      {
        v74 = v6;
        v10 = (**(a1 + 976) + 32 * *v6);
        v11 = -1431655765 * ((v10[1] - *v10) >> 5);
        if (v11)
        {
          break;
        }

LABEL_6:
        v6 = v74 + 1;
        if (v74 + 1 == v72)
        {
          return;
        }
      }

      v12 = 0;
      while (1)
      {
        v13 = (*v10 + 96 * v12);
        v14 = *a2;
        if (*v13 != v14)
        {
          goto LABEL_9;
        }

        v15 = v13[1];
        if (v15 != *(a2 + 1))
        {
          goto LABEL_9;
        }

        v16 = *a1;
        v17 = *(a1 + 2968);
        if (*(*a1 + 1474) == 1)
        {
          v18 = v15 & 0xFFFFFFF | (((v15 >> 28) & 3) << 29) | (((v15 & 0x60000000) == 0x40000000) << 31);
          v19 = *(v16 + 1536) - 1;
          v20 = 0x2127599BF4325C37 * (((v18 >> 29) & 2 | (v18 >> 31) | (v18 >> 27) & 4 | (v14 << 32) | (8 * (v18 & 0xFFFFFFF))) ^ (((v14 << 32) | (8 * (v18 & 0xFFFFFFF))) >> 23));
          v21 = *(v16 + 1552);
          v22 = *(v16 + 1544);
          v23 = *(v16 + 1548);
          v24 = (v20 ^ (v20 >> 47)) & v19;
          v26 = *(v21 + 8 * v24);
          v25 = *(v21 + 8 * v24 + 4);
          if (v22 != v26 || v23 != v25)
          {
            if (*(v16 + 1520))
            {
              v28 = 1;
              while (*(v16 + 1512) == v26 && *(v16 + 1516) == v25 || v26 != v14 || v25 != v18)
              {
                v24 = (v24 + v28) & v19;
                v26 = *(v21 + 8 * v24);
                v25 = *(v21 + 8 * v24 + 4);
                ++v28;
                if (v22 == v26 && v23 == v25)
                {
                  goto LABEL_36;
                }
              }
            }

            else
            {
              v30 = 1;
              while (v26 != v14 || v25 != v18)
              {
                v24 = (v24 + v30) & v19;
                v26 = *(v21 + 8 * v24);
                v25 = *(v21 + 8 * v24 + 4);
                ++v30;
                if (v22 == v26 && v23 == v25)
                {
                  goto LABEL_36;
                }
              }
            }

            if (v24 != -1)
            {
              goto LABEL_9;
            }
          }
        }

LABEL_36:
        sub_F92868((v16 + 8), *a2 | ((HIDWORD(*a2) & 0xFFFFFFF | (*a2 >> 31) & 0x60000000 | (((*a2 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v78);
        v79 = 0u;
        v80 = 0u;
        v81 = v77;
        v82 = 0x3FF0000000000000;
        v83 = 1;
        sub_10B9C08((v16 + 192), &v79, v78, 0x3B9ACA00u, v17);
        if ((v83 & 1) == 0)
        {
          goto LABEL_9;
        }

        LODWORD(v32) = v79;
        v33 = *&v81 * v32;
        if (v33 >= 0.0)
        {
          if (v33 >= 4.50359963e15)
          {
            goto LABEL_43;
          }

          v34 = (v33 + v33) + 1;
        }

        else
        {
          if (v33 <= -4.50359963e15)
          {
            goto LABEL_43;
          }

          v34 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
        }

        v33 = (v34 >> 1);
LABEL_43:
        v35 = *(&v81 + 1) * SDWORD1(v79);
        if (v35 >= 0.0)
        {
          if (v35 >= 4.50359963e15)
          {
            goto LABEL_49;
          }

          v36 = (v35 + v35) + 1;
        }

        else
        {
          if (v35 <= -4.50359963e15)
          {
            goto LABEL_49;
          }

          v36 = (v35 + v35) - 1 + (((v35 + v35) - 1) >> 63);
        }

        v35 = (v36 >> 1);
LABEL_49:
        v37 = v80 + v33;
        v38 = DWORD1(v80) + v35;
        if (v37 == -1 || v38 == 0x7FFFFFFF)
        {
          goto LABEL_9;
        }

        v40 = *a1;
        v41 = *(a1 + 2968);
        if (*(*a1 + 1474) != 1)
        {
          goto LABEL_81;
        }

        v42 = *a2;
        v43 = *(a2 + 1) & 0xFFFFFFF | (((*(a2 + 1) >> 28) & 3) << 29) | (((*(a2 + 1) & 0x60000000) == 0x40000000) << 31);
        v44 = *(v40 + 1536) - 1;
        v45 = 0x2127599BF4325C37 * (((v43 >> 29) & 2 | (v43 >> 31) | (v43 >> 27) & 4 | (v42 << 32) | (8 * (v43 & 0xFFFFFFF))) ^ (((v42 << 32) | (8 * (v43 & 0xFFFFFFF))) >> 23));
        v46 = *(v40 + 1552);
        v47 = *(v40 + 1544);
        v48 = *(v40 + 1548);
        v49 = (v45 ^ (v45 >> 47)) & v44;
        v51 = *(v46 + 8 * v49);
        v50 = *(v46 + 8 * v49 + 4);
        if (v47 == v51 && v48 == v50)
        {
          goto LABEL_81;
        }

        if (*(v40 + 1520))
        {
          v53 = 1;
          while (*(v40 + 1512) == v51 && *(v40 + 1516) == v50 || v51 != v42 || v50 != v43)
          {
            v49 = (v49 + v53) & v44;
            v51 = *(v46 + 8 * v49);
            v50 = *(v46 + 8 * v49 + 4);
            ++v53;
            if (v47 == v51 && v48 == v50)
            {
              goto LABEL_81;
            }
          }
        }

        else
        {
          v55 = 1;
          while (v51 != v42 || v50 != v43)
          {
            v49 = (v49 + v55) & v44;
            v51 = *(v46 + 8 * v49);
            v50 = *(v46 + 8 * v49 + 4);
            ++v55;
            if (v47 == v51 && v48 == v50)
            {
              goto LABEL_81;
            }
          }
        }

        if (v49 == -1)
        {
LABEL_81:
          v75 = DWORD1(v80) + v35;
          v76 = v80 + v33;
          v61 = 1000000000 - v13[2];
          sub_F92868((v40 + 8), *a2 | ((HIDWORD(*a2) & 0xFFFFFFF | (*a2 >> 31) & 0x60000000 | (((*a2 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32), v78);
          v79 = 0u;
          v80 = 0u;
          v81 = v77;
          v82 = 0x3FF0000000000000;
          v83 = 1;
          sub_10B9C08((v40 + 192), &v79, v78, v61, v41);
          if (v83 == 1)
          {
            v63 = sub_F8634C(&v79, &v81, v62);
            v64 = (v80 + v63) | ((DWORD1(v80) + HIDWORD(v63)) << 32);
          }

          else
          {
            v64 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v57 = a3;
          v58 = v76 - v64;
          v59 = v75 - HIDWORD(v64);
          _CF = *a3 >= (v76 - v64);
          if (*a3 != v76 - v64)
          {
LABEL_78:
            if (_CF)
            {
              goto LABEL_86;
            }

            goto LABEL_9;
          }
        }

        else
        {
          v57 = a3;
          v58 = v37 + 1;
          v59 = v38 - 0x7FFFFFFF;
          _CF = *a3 >= (v37 + 1);
          if (*a3 != v37 + 1)
          {
            goto LABEL_78;
          }
        }

        if (v57[1] >= v59)
        {
LABEL_86:
          v66 = *a3;
          v65 = a3[1];
          v67 = *a1;
          v68 = *(a1 + 2968);
          v79 = 0u;
          v80 = 0u;
          v81 = v77;
          v82 = 0x3FF0000000000000;
          v83 = 1;
          sub_10B9770((v67 + 192), &v79, v13, (v13 + 2), v68, 1, 1);
          if (v83)
          {
            v70 = sub_F8634C(&v79, &v81, v69);
            if (v80 + v70 != -1 && DWORD1(v80) + HIDWORD(v70) != 0x7FFFFFFF)
            {
              *&v79 = (v66 - v58 + v80 + v70) | ((v65 - v59 + DWORD1(v80) + HIDWORD(v70)) << 32);
              sub_104BD90(a1, a2, &v79, *v74, a4, v12, 0, 0);
            }
          }
        }

LABEL_9:
        if (++v12 == v11)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

BOOL sub_10510B0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 3056);
  v3 = *(a1 + 3072);
  v4 = *(a1 + 3064);
  v5 = *(a1 + 3052);
  if (v2 + v3 - v4 < v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3072) = 0;
    *(a1 + 3080) = 0;
    result = v2 >= v5;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  do
  {
    v7 = *(a1 + 928) + 24 * *v4;
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a2 >= v9;
    if (*a2 == v9)
    {
      if (a2[1] < *(v8 + 4))
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
LABEL_10:
      operator new();
    }

    ++*(a1 + 3056);
    ++v4;
  }

  while (v4 != v3);
  v4 = *(a1 + 3064);
  v11 = *(a1 + 3056);
  v12 = *(a1 + 3052);
  *(a1 + 3064) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3080) = 0;
  result = v11 >= v12;
  if (v4)
  {
LABEL_12:
    v13 = result;
    operator delete(v4);
    return v13;
  }

  return result;
}

void sub_1051298(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10512B4(uint64_t a1, uint64_t *a2, _DWORD *a3, int a4)
{
  if (*(a1 + 3048) != 1)
  {
    return 4294967294;
  }

  sub_10508D4(a1, a2, a3, a4);
  result = sub_10517D4(*(a1 + 3032), *a2);
  if (result)
  {
    v36 = a4;
    v9 = *result;
    v10 = *(result + 8);
    if (*result != v10)
    {
      do
      {
        v15 = *(a1 + 1040);
        if (v15 != -1)
        {
          v16 = *(v9 + 16);
          if (v16 != -1 && *(v9 + 20) != 0x7FFFFFFF && *(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && v16 + *a3 > v15)
          {
            goto LABEL_7;
          }
        }

        v17 = sub_1051898(a1, v9);
        v18 = *(v9 + 16);
        if (v18 == -1 || (v19 = *(v9 + 20), v19 == 0x7FFFFFFF) || *(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(a1 + 3904);
          v12 = v17 >> 6;
          v13 = 1 << v17;
          v14 = *(v11 + 8 * (v17 >> 6));
          if ((v14 & (1 << v17)) == 0)
          {
            v22 = *(a1 + 24) + 32 * v17;
            v23 = *v22;
            v24 = *(v22 + 8);
            if (*v22 != v24)
            {
              do
              {
                v38[0] = 0;
                sub_101F030(a1 + 816, v23, v38);
                sub_105B98C((a1 + 816));
                v23 += 12;
              }

              while (v23 != v24);
              v11 = *(a1 + 3904);
              v14 = *(v11 + 8 * v12);
            }

            *(v11 + 8 * v12) = v14 | v13;
          }

          ++*(a1 + 3936);
          goto LABEL_7;
        }

        if (*(a1 + 3049) == 1 && ((v20 = *(a1 + 1044), v20 == 0x7FFFFFFF) || v19 + a3[1] <= v20))
        {
          v21 = v17;
          if (!*(*(a1 + 3880) + 40 * v17 + 32))
          {
            v25.n128_f64[0] = sub_1051C64(*(a1 + 3032), *v9, v38);
            v26 = v39;
            if (!v39)
            {
              v29 = *(a1 + 3904);
              v30 = v21 >> 6;
              v31 = 1 << v21;
              v32 = *(v29 + 8 * (v21 >> 6));
              if ((v32 & (1 << v21)) == 0)
              {
                v33 = *(a1 + 24) + 32 * v21;
                v35 = *v33;
                v34 = *(v33 + 8);
                if (*v33 != v34)
                {
                  do
                  {
                    LODWORD(v37) = 0;
                    sub_101F030(a1 + 816, v35, &v37);
                    sub_105B98C((a1 + 816));
                    v35 += 12;
                  }

                  while (v35 != v34);
                  v29 = *(a1 + 3904);
                  v31 = 1 << v21;
                  v30 = v21 >> 6;
                  v32 = *(v29 + 8 * (v21 >> 6));
                }

                *(v29 + 8 * v30) = v32 | v31;
              }

              ++*(a1 + 3928);
              goto LABEL_37;
            }

            v27 = *(*(a1 + 3880) + 40 * v21 + 32);
            if (v27 == -1)
            {
              if (v39 == -1)
              {
                goto LABEL_37;
              }
            }

            else if (v39 == -1)
            {
              v28 = *(a1 + 3880) + 40 * v21;
              (off_2674F98[v27])(&v37, v25.n128_f64[0]);
              *(v28 + 32) = -1;
LABEL_37:
              if (v39 != -1)
              {
                (off_2674F98[v39])(&v37, v38);
              }

              if (!v26)
              {
                goto LABEL_7;
              }

              v18 = *(v9 + 16);
              v19 = *(v9 + 20);
              goto LABEL_41;
            }

            v37 = *(a1 + 3880) + 40 * v21;
            (off_2674FB0[v39])(&v37, v25);
            goto LABEL_37;
          }
        }

        else
        {
          v21 = v17;
        }

LABEL_41:
        *v38 = (v18 + *a3) | ((v19 + a3[1]) << 32);
        sub_104BD90(a1, a2, v38, v21, v36, *(v9 + 8), 0, 1);
LABEL_7:
        v9 += 32;
      }

      while (v9 != v10);
    }

    return *(*(a1 + 3032) + 204);
  }

  return result;
}

void sub_1051640(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_105167C(uint64_t a1, uint64_t *a2, unsigned int *a3, int *a4, char a5, unsigned int *a6)
{
  for (i = *a6; i; i = (i - 1))
  {
    v12 = *(a1 + 8);
    v13 = *a2;
    LODWORD(v20) = i;
    if (sub_101F374(*v12, v13 & 0xFFFFFFFFFFFFFFFLL, &v20))
    {
      v14 = *(a1 + 8);
      v15 = *a2;
      v21 = i;
      v16 = sub_101F854(*v14, v15 & 0xFFFFFFFFFFFFFFFLL, (v15 & 0x1000000000000000) != 0, &v21);
      v20 = v16;
      if (v16)
      {
        v17 = v16 >= 0xFFFFFFFF00000000;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = *(a1 + 20);
        if (v18 != -1 && i == v18)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (sub_10550EC(a1 + 1064, &v20) == -1 && sub_10550EC(*(a1 + 976) + 800, &v20) == -1)
      {
        if (*(a1 + 3048) == 1 && i < *(*(a1 + 3032) + 200))
        {
          return 0;
        }

        if (*(*a1 + 1473) != 1 || !sub_1063C18(*a1 + 240, v20, a3, *a4, a5))
        {
          return i;
        }
      }
    }
  }

  return i;
}

void *sub_10517D4(uint64_t a1, unint64_t a2)
{
  LODWORD(v9[0]) = *(a1 + 200);
  v4 = sub_101F854(*(a1 + 24), a2 & 0xFFFFFFFFFFFFFFFLL, (a2 & 0x1000000000000000) != 0, v9);
  v11 = v4;
  if (v4)
  {
    v5 = v4 > 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = sub_105CC98(*(a1 + 32), a2, v4);
  if (v10 == 0xFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = (a1 + 280);
  sub_1058664(v6, &v11, &v10, v7);
  return v7;
}

uint64_t sub_1051898(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[4];
  v6 = a1[3];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 232));
  sub_1016868(v7 + 40, (v7 + 232), *(v7 + 208), 0, &__p);
  v44 = a1;
  sub_1050600((a1 + 3), &__p, 0, &v44);
  v4 = (v5 - v6) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = v20 + 1;
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = v10 + 8;
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1053300((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = xmmword_2297C00;
      *(v29 + 16) = 0;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = xmmword_2297C00;
      *(v37 + 16) = 0;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_1051C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1051C64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 225) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[HIDWORD(v17) + 1] + v20[HIDWORD(v17) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 7)
  {
    v12 = v9[3];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_105CDBC(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

int *sub_1051E9C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 3032);
  v6 = *a2;
  result = sub_105C4B0(*(v2 + 8), &v6, (v2 + 256));
  v5 = *(v2 + 256);
  v4 = *(v2 + 264);
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

void *sub_1051F5C(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

void sub_1052908(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = xmmword_2297C80;
        v3 += 24;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v10 = 24 * v5;
    v11 = 24 * v5 + 24 * a2;
    v12 = 24 * v5;
    do
    {
      *v12 = 0;
      *(v12 + 8) = xmmword_2297C80;
      v12 += 24;
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

uint64_t sub_1052A9C(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 32);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_2674F50[v2])(&v3, v1);
  }

  *(v1 + 32) = 0;
  return result;
}

void sub_1052AF4(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v6 = *a3;
      v5 = a3[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = a2[1];
      *a2 = v6;
      a2[1] = v5;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }

      return;
    }

    v8 = a3;
    (off_2674F50[v4])(&v10, v3);
    a3 = v8;
  }

  *(v3 + 32) = -1;
  v9 = a3[1];
  *v3 = *a3;
  *(v3 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 32) = 1;
}

__n128 sub_1052C08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      result = *a3;
      *(a2 + 12) = *(a3 + 12);
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_2674F50[v4])(&v8, v3);
    a3 = v6;
  }

  *(v3 + 32) = -1;
  result = *a3;
  v7 = *(a3 + 16);
  *v3 = *a3;
  *(v3 + 16) = v7;
  *(v3 + 32) = 2;
  return result;
}

uint64_t sub_1052CA0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3) + 1;
  if (v4 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((*(a1 + 16) - v1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (v3 >> 3);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v7 - v3;
  if (v1 != v2)
  {
    v13 = v7 - v3;
    v9 = v1;
    do
    {
      *v8 = 0;
      *(v8 + 32) = -1;
      v10 = v9[8];
      if (v10 != -1)
      {
        v14 = v8;
        (off_2674F80[v10])(&v14, v9);
        *(v8 + 32) = v10;
      }

      v9 += 10;
      v8 += 40;
    }

    while (v9 != v2);
    do
    {
      v11 = v1[8];
      if (v11 != -1)
      {
        (off_2674F50[v11])(&v15, v1);
      }

      v1[8] = -1;
      v1 += 10;
    }

    while (v1 != v2);
    v1 = *a1;
    v8 = v13;
  }

  *a1 = v8;
  *(a1 + 8) = v7 + 40;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v7 + 40;
}

__n128 sub_1052E70(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

__n128 sub_1052E84(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

void sub_1052E94(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2 - 24;
      if (v10 < 0x18)
      {
        goto LABEL_33;
      }

      v11 = v10 / 0x18 + 1;
      v12 = v3 + 24 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v13 = (v3 + 32);
      v14 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_2297C00;
        *(v13 - 2) = 0;
        *(v13 - 1) = 0;
        *v13 = xmmword_2297C80;
        v13 += 3;
        v14 -= 2;
      }

      while (v14);
      v3 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_33:
        do
        {
          *v3 = xmmword_2297C00;
          *(v3 + 16) = 0;
          v3 += 24;
        }

        while (v3 != v9);
      }

      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v15 = 24 * v5;
    v16 = 24 * v5 + 24 * a2;
    v17 = 24 * a2 - 24;
    v18 = 24 * v5;
    if (v17 < 0x18)
    {
      goto LABEL_34;
    }

    v19 = v17 / 0x18 + 1;
    v18 = v15 + 24 * (v19 & 0x1FFFFFFFFFFFFFFELL);
    v20 = (24 * v5 + 32);
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = xmmword_2297C00;
      *(v20 - 2) = 0;
      *(v20 - 1) = 0;
      *v20 = xmmword_2297C80;
      v20 += 3;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_34:
      do
      {
        *v18 = xmmword_2297C00;
        *(v18 + 16) = 0;
        v18 += 24;
      }

      while (v18 != v16);
    }

    v22 = *a1;
    v23 = *(a1 + 8) - *a1;
    v24 = v15 - v23;
    memcpy((v15 - v23), *a1, v23);
    *a1 = v24;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}