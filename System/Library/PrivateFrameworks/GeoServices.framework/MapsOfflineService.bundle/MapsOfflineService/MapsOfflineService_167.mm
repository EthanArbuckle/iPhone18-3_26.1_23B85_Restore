void sub_A35228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A338C8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_A35240(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = result;
  if (result == a2)
  {
    v7 = *(a2 + 3);
    *(result + 16) = *(a2 + 16);
    *(result + 3) = v7;
    return result;
  }

  if (result[23] < 0)
  {
    if ((a2[23] & 0x80u) == 0)
    {
      v8 = a2[23];
    }

    else
    {
      a2 = *a2;
      v8 = *(v2 + 1);
    }

    sub_13B38(result, a2, v8);
    v5 = v2 + 24;
    v6 = v2[47];
    if (*(v3 + 47) < 0)
    {
      goto LABEL_14;
    }
  }

  else if ((a2[23] & 0x80) != 0)
  {
    sub_13A68(result, *a2, *(a2 + 1));
    v5 = v2 + 24;
    v6 = v2[47];
    if (*(v3 + 47) < 0)
    {
LABEL_14:
      if ((v6 & 0x80u) == 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = *(v2 + 3);
      }

      if ((v6 & 0x80u) == 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = *(v2 + 4);
      }

      sub_13B38(v3 + 24, v10, v11);
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *a2;
    *(result + 2) = *(a2 + 2);
    *result = v4;
    v5 = a2 + 24;
    v6 = a2[47];
    if (result[47] < 0)
    {
      goto LABEL_14;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    sub_13A68((v3 + 24), *(v2 + 3), *(v2 + 4));
  }

  else
  {
    v9 = *v5;
    *(v3 + 40) = v5[2];
    *(v3 + 24) = v9;
  }

LABEL_22:
  v12 = *(v2 + 3);
  *(v3 + 64) = *(v2 + 16);
  *(v3 + 48) = v12;
  sub_A33A78((v3 + 72), *(v2 + 9), *(v2 + 10), 0x14C1BACF914C1BADLL * ((*(v2 + 10) - *(v2 + 9)) >> 3));
  return v3;
}

uint64_t sub_A35388(uint64_t a1, __int128 *a2, char *a3, int *a4, uint64_t a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v6 = v5 + 1;
  if (v5 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v6)
  {
    v6 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v8 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = 32 * ((*(a1 + 8) - *a1) >> 5);
  sub_A354EC(v14, a2, a3, a4, a5);
  v9 = 96 * v5 + 96;
  v10 = *(a1 + 8);
  v11 = v14 + *a1 - v10;
  sub_A35604(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_A354D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A3570C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A354EC(uint64_t a1, __int128 *a2, char *__s, int *a4, uint64_t a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v14 = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
  }

  *(&__dst + v11) = 0;
  sub_C7BDA8(a1, a2, &__dst, *a4, a5);
  if (v14 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_A355E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A35604(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      *(a4 + 16) = v5[2];
      *a4 = v6;
      v5[1] = 0;
      v5[2] = 0;
      *v5 = 0;
      v7 = *(v5 + 3);
      *(a4 + 40) = v5[5];
      *(a4 + 24) = v7;
      v5[4] = 0;
      v5[5] = 0;
      v5[3] = 0;
      v8 = *(v5 + 3);
      *(a4 + 64) = *(v5 + 16);
      *(a4 + 48) = v8;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = 0;
      *(a4 + 72) = *(v5 + 9);
      *(a4 + 88) = v5[11];
      v5[9] = 0;
      v5[10] = 0;
      v5[11] = 0;
      v5 += 12;
      a4 += 96;
    }

    while (v5 != a3);
    if (a2 != a3)
    {
      v9 = a2 + 9;
      do
      {
        if (*v9)
        {
          sub_A32000(v9, *v9);
          operator delete(*v9);
        }

        if (*(v9 - 25) < 0)
        {
          operator delete(*(v9 - 6));
          if (*(v9 - 49) < 0)
          {
LABEL_13:
            operator delete(*(v9 - 9));
          }
        }

        else if (*(v9 - 49) < 0)
        {
          goto LABEL_13;
        }

        v10 = v9 + 3;
        v9 += 12;
      }

      while (v10 != a3);
    }
  }
}

void **sub_A3570C(void **a1)
{
  sub_A35740(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A35740(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 96;
    if (v4)
    {
      sub_A32000(i - 24, v4);
      operator delete(*(i - 24));
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
      if (*(i - 73) < 0)
      {
LABEL_10:
        operator delete(*(i - 96));
      }
    }

    else if (*(i - 73) < 0)
    {
      goto LABEL_10;
    }
  }
}

void sub_A35800(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26701C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A35854(uint64_t a1)
{
  v2 = a1 + 112;
  v3 = *(a1 + 136);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(a1 + 47) < 0)
  {
LABEL_7:
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

std::thread *sub_A35904(std::thread *this)
{
  v2 = this + 2;
  if (this[2].__t_)
  {
    std::thread::join(this + 2);
  }

  std::thread::~thread(v2);
  t = this[1].__t_;
  if (!t || atomic_fetch_add(&t->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return this;
  }

  (t->__on_zero_shared)(t);
  std::__shared_weak_count::__release_weak(t);
  return this;
}

void sub_A359A0(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *v3;
    if (!*v3)
    {
      sub_2D328(3u);
    }

    std::mutex::lock((v4 + 24));
    v5 = *(v4 + 136);
    if ((v5 & 2) != 0)
    {
      sub_2D328(1u);
    }

    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    *(v4 + 136) = v5 | 2;
    std::mutex::unlock((v4 + 24));
    sub_A38504(v4, a2);
    if (!atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *(*v4 + 16);

      v6(v4);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v8 = 0;
    LOBYTE(__p) = 0;
    sub_CC9264(a2 + 32, &__p);
    *(a2 + 184) = 0;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0;
    sub_CC3658(a2 + 264);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_A35AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_A37AFC(v15);
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_A36040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, std::future<void> a21)
{
  std::future<void>::~future(&a21);
  sub_A360C0(&a10);
  sub_1F1A8(&a17);
  sub_1F1A8(&a19);
  _Unwind_Resume(a1);
}

void sub_A36074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  sub_1F1A8(&a19);
  _Unwind_Resume(a1);
}

void sub_A36094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_A360A8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_A360C0(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 32);
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

void sub_A36188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  strcpy(v5, "main");
  v6 = 4;
  v7 = a1;
  sub_CC3658(&v8);
  sub_7E9A4(&v9);
  sub_A362D4(v5, a2, a3);
}

void sub_A36294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A37334(va);
  _Unwind_Resume(a1);
}

void sub_A362A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_A37CA8(v15 + 32);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A37298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A31E68(v9 - 88);
  sub_A37AFC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A37334(uint64_t a1)
{
  if (*(a1 + 1223) < 0)
  {
    operator delete(*(a1 + 1200));
    if ((*(a1 + 527) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 335) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 527) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 504));
  if ((*(a1 + 335) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 64));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 312));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*a1);
  return a1;
}

void sub_A373D8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  strcpy(v9, "merge");
  v10 = 5;
  v11 = a1;
  sub_CC3658(&v12);
  sub_7E9A4(&v21);
  sub_A37530(v9, a2, a3, a4, a5);
  if (v20 < 0)
  {
    operator delete(__p);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v9[0]);
    return;
  }

LABEL_10:
  operator delete(v13);
  if (v10 < 0)
  {
    goto LABEL_11;
  }
}

void sub_A374F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A37334(va);
  _Unwind_Resume(a1);
}

void sub_A37504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_A37CA8(v15 + 32);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A37530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a1 + 288) = *(a1 + 288) + 1.0;
  sub_A3290C(v30, a4);
  sub_CC92D8(&v31, (a3 + 4), &__p);
  v27 = a2;
  if (v29 < 0)
  {
    operator delete(__p);
    v9 = a3[24];
    v10 = a3[25];
    if (v9 == v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v9 = a3[24];
    v10 = a3[25];
    if (v9 == v10)
    {
      goto LABEL_20;
    }
  }

  v11 = v33;
  do
  {
    if (v11 < v34)
    {
      *v11 = *v9;
      v11 += 8;
    }

    else
    {
      v12 = v32;
      v13 = v11 - v32;
      v14 = (v11 - v32) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        sub_1794();
      }

      v16 = v34 - v32;
      if ((v34 - v32) >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v18 = v14;
      v19 = (8 * v14);
      v20 = &v19[-v18];
      *v19 = *v9;
      v11 = (v19 + 1);
      memcpy(v20, v12, v13);
      v32 = v20;
      v33 = v11;
      v34 = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    v33 = v11;
    ++v9;
  }

  while (v9 != v10);
LABEL_20:
  v21 = *(**(a1 + 24) + 120);
  if ((v21 - 1) >= 3)
  {
    goto LABEL_38;
  }

  if (v21 == 2)
  {
    v22 = off_2670398;
  }

  else
  {
    v22 = off_26700D8;
  }

  v39 = v38;
  v38[0] = v22;
  sub_A3FAC0(a1, a3, v30, v38);
  if (v39 != v38)
  {
    if (v39)
    {
      (*(*v39 + 40))();
    }

    v24 = a3[30];
    v23 = a3[31];
    if (v24 == v23)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  (*(*v39 + 32))(v39);
  v24 = a3[30];
  v23 = a3[31];
  if (v24 != v23)
  {
LABEL_30:
    v25 = v36;
    do
    {
      if (v25 >= v37)
      {
        v25 = sub_A39CF8(&v35, v24);
      }

      else
      {
        sub_A39E78(v25, v24);
        v25 += 96;
      }

      v36 = v25;
      v24 += 6;
    }

    while (v24 != v23);
  }

LABEL_35:
  sub_A3C19C(a1);
  if (*(**(a1 + 24) + 120) == 3)
  {
    sub_A3B270(a1, v27, v30, 1);
    v39 = v38;
    v38[0] = off_2670418;
    sub_A3AB2C(a1);
  }

  sub_A3B600(a1, v30, 3);
  sub_A3B600(a1, v30, 0);
  sub_A3B600(a1, v30, 2);
  sub_A3B600(a1, v30, 1);
  sub_A3B600(a1, v30, 4);
  sub_A3F558(a1, v30);
  sub_A3EAEC(a1);
LABEL_38:
  sub_A3290C(a5, v30);
  sub_A38068(a5 + 264, a1 + 32);
  return sub_A37AFC(v30);
}

void sub_A37A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_A31E68(v32 - 128);
  sub_A37AFC(&a32);
  _Unwind_Resume(a1);
}

void sub_A37A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_A37AFC(v32);
  sub_A37AFC(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_A37AFC(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 248);
  v4 = *(a1 + 240);
  if (v3 == v2)
  {
    goto LABEL_11;
  }

  v5 = v3 - 3;
  do
  {
    v10 = v5;
    sub_A37BE8(&v10);
    if (*(v5 - 25) < 0)
    {
      operator delete(*(v5 - 6));
      if ((*(v5 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v5 - 49) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v5 - 9));
LABEL_4:
    v6 = v5 - 9;
    v5 -= 12;
  }

  while (v6 != v2);
  v4 = *(a1 + 240);
LABEL_11:
  *(a1 + 248) = v2;
  operator delete(v4);
LABEL_12:
  v7 = *(a1 + 216);
  if (v7)
  {
    *(a1 + 224) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    *(a1 + 200) = v8;
    operator delete(v8);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v10 = (a1 + 8);
  sub_A37BE8(&v10);
  return a1;
}

void sub_A37BE8(void ***a1)
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
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 6);
        if (v7)
        {
          *(v4 - 5) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 9);
        if (v8)
        {
          *(v4 - 8) = v8;
          operator delete(v8);
        }

        v9 = (v4 - 96);
        sub_A3212C(&v9);
        if (*(v4 - 161) < 0)
        {
          operator delete(*(v4 - 23));
        }

        v4 -= 296;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_A37CA8(uint64_t a1)
{
  if (*(a1 + 1191) < 0)
  {
    operator delete(*(a1 + 1168));
    if ((*(a1 + 495) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 303) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 280));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 495) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 472));
  if (*(a1 + 303) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 32));
  return a1;
}

uint64_t sub_A37DCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate4mainEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate4mainEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate4mainEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate4mainEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A37EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate7fill_inEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate7fill_inEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate7fill_inEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate7fill_inEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A37FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate17realtime_upgradedEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate17realtime_upgradedEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate17realtime_upgradedEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate17realtime_upgradedEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A38068(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  if (*(a2 + 55) < 0)
  {
    sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v9;
  *(a1 + 104) = v8;
  *(a1 + 88) = v7;
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  v15 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = v15;
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  if (*(a2 + 303) < 0)
  {
    sub_325C((a1 + 280), *(a2 + 280), *(a2 + 288));
  }

  else
  {
    v16 = *(a2 + 280);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 280) = v16;
  }

  v17 = *(a2 + 304);
  v18 = *(a2 + 320);
  v19 = *(a2 + 352);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = v19;
  *(a1 + 304) = v17;
  *(a1 + 320) = v18;
  v20 = *(a2 + 368);
  v21 = *(a2 + 384);
  v22 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v22;
  *(a1 + 368) = v20;
  *(a1 + 384) = v21;
  v23 = *(a2 + 432);
  v24 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 432) = v23;
  *(a1 + 448) = v24;
  if (*(a2 + 495) < 0)
  {
    sub_325C((a1 + 472), *(a2 + 472), *(a2 + 480));
  }

  else
  {
    v25 = *(a2 + 472);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 472) = v25;
  }

  v26 = *(a2 + 496);
  v27 = *(a2 + 512);
  v28 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v28;
  *(a1 + 496) = v26;
  *(a1 + 512) = v27;
  v29 = *(a2 + 560);
  v30 = *(a2 + 576);
  v31 = *(a2 + 608);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = v31;
  *(a1 + 560) = v29;
  *(a1 + 576) = v30;
  memcpy((a1 + 624), (a2 + 624), 0x220uLL);
  v32 = (a1 + 1168);
  if (*(a2 + 1191) < 0)
  {
    sub_325C(v32, *(a2 + 1168), *(a2 + 1176));
  }

  else
  {
    v33 = *(a2 + 1168);
    *(a1 + 1184) = *(a2 + 1184);
    *v32 = v33;
  }

  *(a1 + 1192) = *(a2 + 1192);
  v34 = *(a2 + 1208);
  v35 = *(a2 + 1224);
  v36 = *(a2 + 1240);
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1224) = v35;
  *(a1 + 1240) = v36;
  *(a1 + 1208) = v34;
  return a1;
}

void sub_A38258(_Unwind_Exception *exception_object)
{
  if (*(v1 + 495) < 0)
  {
    operator delete(*v3);
    if ((*(v1 + 303) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 303) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  if ((*(v1 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v1 + 32));
  _Unwind_Resume(exception_object);
}

uint64_t sub_A38364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate7at_riskEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate7at_riskEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate7at_riskEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate7at_riskEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A3848C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate14direct_walkingEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate14direct_walkingEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate14direct_walkingEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate14direct_walkingEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_A38504(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v35.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v35);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v34, (a1 + 16));
    v33.__ptr_ = &v34;
    std::rethrow_exception(v33);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a2 + 8) = *(a1 + 152);
    *(a2 + 24) = *(a1 + 168);
    *(a1 + 152) = 0u;
    v5 = *(a1 + 176);
    *(a1 + 168) = 0u;
    *(a2 + 32) = v5;
    *(a2 + 48) = *(a1 + 192);
    *(a1 + 184) = 0u;
    v6 = *(a1 + 200);
    v7 = *(a1 + 216);
    v8 = *(a1 + 232);
    *(a2 + 104) = *(a1 + 248);
    *(a2 + 88) = v8;
    *(a2 + 72) = v7;
    *(a2 + 56) = v6;
    v9 = *(a1 + 264);
    v10 = *(a1 + 280);
    v11 = *(a1 + 296);
    *(a2 + 168) = *(a1 + 312);
    *(a2 + 152) = v11;
    *(a2 + 136) = v10;
    *(a2 + 120) = v9;
    *(a2 + 184) = *(a1 + 328);
    *(a2 + 192) = *(a1 + 336);
    *(a2 + 208) = *(a1 + 352);
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0;
    *(a2 + 216) = *(a1 + 360);
    *(a2 + 232) = *(a1 + 376);
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0;
    *(a2 + 240) = *(a1 + 384);
    *(a2 + 256) = *(a1 + 400);
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0;
    v12 = *(a1 + 424);
    *(a2 + 264) = *(a1 + 408);
    *(a2 + 280) = v12;
    v13 = *(a1 + 440);
    *(a2 + 312) = *(a1 + 456);
    *(a2 + 296) = v13;
    *(a1 + 456) = 0;
    *(a1 + 440) = 0u;
    v14 = *(a1 + 480);
    *(a2 + 320) = *(a1 + 464);
    *(a2 + 336) = v14;
    v15 = *(a1 + 496);
    v16 = *(a1 + 512);
    v17 = *(a1 + 544);
    *(a2 + 384) = *(a1 + 528);
    *(a2 + 400) = v17;
    *(a2 + 352) = v15;
    *(a2 + 368) = v16;
    v18 = *(a1 + 560);
    v19 = *(a1 + 576);
    v20 = *(a1 + 608);
    *(a2 + 448) = *(a1 + 592);
    *(a2 + 464) = v20;
    *(a2 + 416) = v18;
    *(a2 + 432) = v19;
    v21 = *(a1 + 624);
    v22 = *(a1 + 640);
    v23 = *(a1 + 672);
    *(a2 + 512) = *(a1 + 656);
    *(a2 + 528) = v23;
    *(a2 + 480) = v21;
    *(a2 + 496) = v22;
    *(a2 + 544) = *(a1 + 688);
    *(a2 + 560) = *(a1 + 704);
    *(a1 + 688) = 0;
    *(a1 + 696) = 0u;
    v24 = *(a1 + 792);
    *(a2 + 632) = *(a1 + 776);
    *(a2 + 648) = v24;
    v25 = *(a1 + 824);
    *(a2 + 664) = *(a1 + 808);
    *(a2 + 680) = v25;
    v26 = *(a1 + 728);
    *(a2 + 568) = *(a1 + 712);
    *(a2 + 584) = v26;
    v27 = *(a1 + 760);
    *(a2 + 600) = *(a1 + 744);
    *(a2 + 616) = v27;
    v28 = *(a1 + 856);
    *(a2 + 696) = *(a1 + 840);
    *(a2 + 712) = v28;
    *(a2 + 728) = *(a1 + 872);
    *(a2 + 736) = *(a1 + 880);
    *(a2 + 752) = *(a1 + 896);
    *(a1 + 880) = 0u;
    *(a1 + 896) = 0;
    v29 = *(a1 + 952);
    *(a2 + 792) = *(a1 + 936);
    *(a2 + 808) = v29;
    v30 = *(a1 + 920);
    *(a2 + 760) = *(a1 + 904);
    *(a2 + 776) = v30;
    v31 = *(a1 + 1016);
    *(a2 + 856) = *(a1 + 1000);
    *(a2 + 872) = v31;
    v32 = *(a1 + 984);
    *(a2 + 824) = *(a1 + 968);
    *(a2 + 840) = v32;
    memcpy((a2 + 888), (a1 + 1032), 0x238uLL);
    *(a1 + 1576) = 0u;
    *(a1 + 1592) = 0;
    *(a2 + 1472) = *(a1 + 1616);
    *(a2 + 1488) = *(a1 + 1632);
    *(a2 + 1504) = *(a1 + 1648);
    *(a2 + 1520) = *(a1 + 1664);
    *(a2 + 1456) = *(a1 + 1600);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_A387D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void sub_A38820(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2670498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A38880(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_A388EC(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_A3896C(uint64_t a1)
{
  if (*(a1 + 136))
  {
    if (*(a1 + 1599) < 0)
    {
      operator delete(*(a1 + 1576));
      if ((*(a1 + 903) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a1 + 711) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a1 + 903) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 880));
    if ((*(a1 + 711) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 463) & 0x80000000) == 0)
      {
LABEL_6:
        sub_A37AFC(a1 + 144);
        goto LABEL_7;
      }

LABEL_13:
      operator delete(*(a1 + 440));
      goto LABEL_6;
    }

LABEL_12:
    operator delete(*(a1 + 688));
    if ((*(a1 + 463) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_7:
  v2 = *(*a1 + 8);

  return v2(a1);
}

uint64_t sub_A38A2C(uint64_t a1)
{
  if (*(a1 + 1455) < 0)
  {
    operator delete(*(a1 + 1432));
    if ((*(a1 + 759) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 567) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 759) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 736));
  if ((*(a1 + 567) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 319) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 544));
  if ((*(a1 + 319) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = a1;

    return sub_A37AFC(v2);
  }

LABEL_11:
  operator delete(*(a1 + 296));
  v2 = a1;

  return sub_A37AFC(v2);
}

void *sub_A38AD8(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_A38C50(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2670530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A38CB0()
{
  v0 = __chkstk_darwin();
  sub_3AC57C(*(*(v0 + 32) + 16), v18);
  v1 = *(v0 + 32);
  v2 = v1[1];
  v15[0] = *v1;
  v15[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    v1 = *(v0 + 32);
  }

  v15[2] = v18;
  sub_A393A8(v16, (v1 + 3));
  v16[501] = v16;
  v16[502] = v16;
  v16[503] = v16;
  v16[504] = v16;
  v16[505] = v16;
  v16[506] = v16;
  v16[507] = v16;
  v16[508] = v16;
  v16[509] = v16;
  v16[510] = v16;
  v16[511] = v16;
  v16[512] = v16;
  v16[513] = v16;
  v16[514] = v16;
  v16[515] = v16;
  v16[516] = v16;
  v16[517] = v16;
  v16[518] = v16;
  v16[519] = v16;
  v16[520] = v16;
  v16[521] = v16;
  v16[522] = v16;
  v16[523] = v16;
  v3 = *(v0 + 32);
  v16[525] = *(v3 + 4224);
  v16[524] = v16;
  sub_99A14(&v17, (v3 + 4232));
  sub_A394EC(v14, *(v0 + 40));
  v4 = *(v0 + 48);
  v6 = v4[1];
  v5 = v4[2];
  v7 = *v4;
  v13 = *(v4 + 6);
  v12[2] = v5;
  v12[0] = v7;
  v12[1] = v6;
  std::promise<void>::set_value(*(v0 + 72));
  strcpy(v8, "main async");
  v8[23] = 10;
  v9 = v15;
  sub_CC3658(&v10);
  sub_7E9A4(&v11);
  sub_A362D4(v8, v14, v12);
}

void sub_A390F0(void *a1)
{
  sub_A37334(&v5);
  __cxa_begin_catch(a1);
  v3 = *(v1 + 56);
  std::current_exception();
  sub_A39344(v3, v4);
  std::exception_ptr::~exception_ptr(v4);
  __cxa_end_catch();
  JUMPOUT(0xA38F38);
}

void sub_A39198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  sub_A39C84(&STACK[0xB60]);
  JUMPOUT(0xA391B8);
}

void sub_A39210(_Unwind_Exception *a1)
{
  std::exception_ptr::~exception_ptr(&STACK[0xC20]);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_A3922C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 48) = *(a2 + 48);
  *(result + 32) = v2;
  v3 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_A39270(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 64);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 64);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_A39344(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_2D328(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

uint64_t sub_A393A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 40), (a2 + 40), 0xF10uLL);
  sub_C9E484(a1 + 3896, (a2 + 3896));
  *(a1 + 3928) = *(a2 + 3928);
  v6 = *(a2 + 3936);
  *(a1 + 3936) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3944) = *(a2 + 3944);
  v7 = *(a2 + 3952);
  *(a1 + 3952) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3960) = *(a2 + 3960);
  v8 = *(a2 + 3968);
  *(a1 + 3968) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3976) = *(a2 + 3976);
  v9 = *(a2 + 3984);
  *(a1 + 3984) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3992) = *(a2 + 3992);
  v10 = *(a2 + 4000);
  *(a1 + 4000) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_A394D0(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A394EC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 48) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_A39750(a1 + 56, *(a2 + 7), *(a2 + 8), 0x8E38E38E38E38E39 * ((*(a2 + 8) - *(a2 + 7)) >> 5));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_A39750(a1 + 80, *(a2 + 10), *(a2 + 11), 0x8E38E38E38E38E39 * ((*(a2 + 11) - *(a2 + 10)) >> 5));
  v7 = *(a2 + 104);
  *(a1 + 120) = 0;
  *(a1 + 104) = v7;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 144) = *(a2 + 72);
  v10 = *(a2 + 76);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 152) = v10;
  if (*(a2 + 183) < 0)
  {
    sub_325C((a1 + 160), *(a2 + 20), *(a2 + 21));
  }

  else
  {
    v11 = a2[10];
    *(a1 + 176) = *(a2 + 22);
    *(a1 + 160) = v11;
  }

  v12 = *(a2 + 46);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 184) = v12;
  return a1;
}

void sub_A39674(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 128) = v6;
    operator delete(v6);
  }

  sub_A396C4(v3);
  sub_A396C4(v2);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(a1);
}

void *sub_A396C4(void *a1)
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
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 6);
        if (v6)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v3 -= 36;
        sub_49AEC0(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_A39750(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xE38E38E38E38E4)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A39854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_A39874(&a11);
  *(v11 + 8) = v12;
  sub_A398F0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A39874(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 3);
      if (v5)
      {
        *(v3 - 2) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 6);
      if (v6)
      {
        *(v3 - 5) = v6;
        operator delete(v6);
      }

      v3 -= 36;
      sub_49AEC0(v3);
    }
  }

  return a1;
}

void ***sub_A398F0(void ***result)
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
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 6);
          if (v7)
          {
            *(v4 - 5) = v7;
            operator delete(v7);
          }

          v4 -= 36;
          sub_49AEC0(v4);
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

void sub_A39990(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v44.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v44), v4))
  {
    sub_2D328(2u);
  }

  *(a1 + 144) = *a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 152) = *(a2 + 8);
  *(a1 + 168) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  v5 = *(a2 + 32);
  *(a1 + 192) = *(a2 + 48);
  *(a1 + 176) = v5;
  *(a2 + 40) = 0u;
  *(a2 + 32) = 0;
  v6 = *(a2 + 136);
  v7 = *(a2 + 152);
  v8 = *(a2 + 120);
  *(a1 + 312) = *(a2 + 168);
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  *(a1 + 248) = *(a2 + 104);
  *(a1 + 232) = v11;
  *(a1 + 216) = v10;
  *(a1 + 200) = v9;
  *(a1 + 280) = v6;
  *(a1 + 296) = v7;
  *(a1 + 264) = v8;
  *(a1 + 328) = *(a2 + 184);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 336) = *(a2 + 192);
  *(a1 + 352) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a2 + 192) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 360) = *(a2 + 216);
  *(a1 + 376) = *(a2 + 232);
  *(a2 + 232) = 0;
  *(a2 + 216) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = *(a2 + 240);
  *(a1 + 400) = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  v12 = *(a2 + 280);
  *(a1 + 408) = *(a2 + 264);
  *(a1 + 424) = v12;
  v13 = *(a2 + 296);
  *(a1 + 456) = *(a2 + 312);
  *(a1 + 440) = v13;
  *(a2 + 304) = 0u;
  *(a2 + 296) = 0;
  v15 = *(a2 + 480);
  v14 = *(a2 + 496);
  v16 = *(a2 + 512);
  *(a1 + 672) = *(a2 + 528);
  v17 = *(a2 + 400);
  v19 = *(a2 + 352);
  v18 = *(a2 + 368);
  *(a1 + 528) = *(a2 + 384);
  *(a1 + 544) = v17;
  *(a1 + 496) = v19;
  *(a1 + 512) = v18;
  v20 = *(a2 + 464);
  v22 = *(a2 + 416);
  v21 = *(a2 + 432);
  *(a1 + 592) = *(a2 + 448);
  *(a1 + 608) = v20;
  *(a1 + 560) = v22;
  *(a1 + 576) = v21;
  v23 = *(a2 + 336);
  *(a1 + 464) = *(a2 + 320);
  *(a1 + 480) = v23;
  *(a1 + 640) = v14;
  *(a1 + 656) = v16;
  *(a1 + 624) = v15;
  v24 = *(a2 + 544);
  *(a1 + 704) = *(a2 + 560);
  *(a1 + 688) = v24;
  *(a2 + 552) = 0u;
  *(a2 + 544) = 0;
  v26 = *(a2 + 632);
  v25 = *(a2 + 648);
  v27 = *(a2 + 664);
  *(a1 + 824) = *(a2 + 680);
  v28 = *(a2 + 568);
  v29 = *(a2 + 584);
  v30 = *(a2 + 616);
  *(a1 + 744) = *(a2 + 600);
  *(a1 + 760) = v30;
  *(a1 + 712) = v28;
  *(a1 + 728) = v29;
  *(a1 + 792) = v25;
  *(a1 + 808) = v27;
  *(a1 + 776) = v26;
  v31 = *(a2 + 696);
  v32 = *(a2 + 712);
  *(a1 + 872) = *(a2 + 728);
  *(a1 + 840) = v31;
  *(a1 + 856) = v32;
  v33 = *(a2 + 736);
  *(a1 + 896) = *(a2 + 752);
  *(a1 + 880) = v33;
  *(a2 + 752) = 0;
  *(a2 + 736) = 0u;
  v34 = *(a2 + 872);
  v36 = *(a2 + 824);
  v35 = *(a2 + 840);
  *(a1 + 1000) = *(a2 + 856);
  *(a1 + 1016) = v34;
  *(a1 + 968) = v36;
  *(a1 + 984) = v35;
  v37 = *(a2 + 760);
  v38 = *(a2 + 776);
  v39 = *(a2 + 808);
  *(a1 + 936) = *(a2 + 792);
  *(a1 + 952) = v39;
  *(a1 + 904) = v37;
  *(a1 + 920) = v38;
  memcpy((a1 + 1032), (a2 + 888), 0x220uLL);
  v40 = *(a2 + 1432);
  *(a1 + 1592) = *(a2 + 1448);
  *(a1 + 1576) = v40;
  *(a2 + 1448) = 0;
  *(a2 + 1440) = 0;
  *(a2 + 1432) = 0;
  v41 = *(a2 + 1520);
  v42 = *(a2 + 1504);
  v43 = *(a2 + 1488);
  *(a1 + 1616) = *(a2 + 1472);
  *(a1 + 1632) = v43;
  *(a1 + 1648) = v42;
  *(a1 + 1664) = v41;
  *(a1 + 1600) = *(a2 + 1456);
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t sub_A39C84(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  sub_A396C4((a1 + 80));
  sub_A396C4((a1 + 56));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_A39CF8(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 96 * v2;
  v13 = 0;
  sub_A39E78(96 * v2, a2);
  v12 = 96 * v2 + 96;
  sub_A39F80(a1, &__p);
  v6 = a1[1];
  v7 = v11;
  while (1)
  {
    v8 = v12;
    if (v12 == v7)
    {
      break;
    }

    v12 -= 96;
    v15 = (v8 - 24);
    sub_A37BE8(&v15);
    if (*(v8 - 49) < 0)
    {
      operator delete(*(v8 - 72));
      if (*(v8 - 73) < 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v8 - 73) < 0)
    {
LABEL_16:
      operator delete(*(v8 - 96));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

uint64_t sub_A39E78(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
    goto LABEL_6;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
LABEL_6:
  v6 = a2[3];
  v7 = *(a2 + 16);
  *(a1 + 72) = 0;
  *(a1 + 64) = v7;
  *(a1 + 48) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_A32B60(a1 + 72, *(a2 + 9), *(a2 + 10), 0x14C1BACF914C1BADLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  return a1;
}

void sub_A39F34(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_A39F80(uint64_t *a1, void *a2)
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
      v9 = *v7;
      *(v8 + 16) = *(v7 + 2);
      *v8 = v9;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 5);
      *(v8 + 24) = v10;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 3) = 0;
      v11 = v7[3];
      *(v8 + 64) = *(v7 + 16);
      *(v8 + 48) = v11;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 72) = 0;
      *(v8 + 72) = *(v7 + 72);
      *(v8 + 88) = *(v7 + 11);
      *(v7 + 9) = 0;
      *(v7 + 10) = 0;
      *(v7 + 11) = 0;
      v7 += 6;
      v8 += 96;
    }

    while (v7 != v4);
    do
    {
      v15 = (v5 + 72);
      sub_A37BE8(&v15);
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
        if (*(v5 + 23) < 0)
        {
LABEL_10:
          operator delete(*v5);
        }
      }

      else if (*(v5 + 23) < 0)
      {
        goto LABEL_10;
      }

      v5 += 96;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

void sub_A3A0D4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_7E974(a1 + 1296);
  v5 = *(a3 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 1);
  }

  if (v5)
  {
    if ((v6 & 0x80) == 0)
    {
LABEL_5:
      v7 = *a3;
      v9 = *(a3 + 2);
      v8 = v7;
      goto LABEL_8;
    }
  }

  else
  {
    a3 = **(a1 + 24);
    if ((*(a3 + 23) & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_325C(&v8, *a3, *(a3 + 1));
LABEL_8:
  sub_A7CDD8(*(a1 + 24) + 24, *(*(a1 + 24) + 16), &v8);
}

void sub_A3A438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_A37AFC(v21);
  v25 = *(v23 - 88);
  *(v23 - 88) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
    if (*(v23 - 57) < 0)
    {
LABEL_7:
      operator delete(*(v23 - 80));
      _Unwind_Resume(a1);
    }
  }

  else if (*(v23 - 57) < 0)
  {
    goto LABEL_7;
  }

  _Unwind_Resume(a1);
}

void sub_A3A4F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 34) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_501CE8(&v12, *(a1 + 24) + 24);
    sub_BD58E0(&v12, a2, a3);
    *(a1 + 96) = sub_7EA60(a1 + 1296) + *(a1 + 96);
    v11 = 18;
    strcpy(__p, "Journey Tightening");
    v6 = *(a1 + 24);
    if (*(*v6 + 125) == 1)
    {
      v7 = sub_4F96D0(v6 + 3920);
      v13 = v7;
      v8 = a2[31];
      if (v8 >= a2[32])
      {
        v9 = sub_A40650(a2 + 30, __p, a1, &v13, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v7, a2);
        v9 = v8 + 96;
        a2[31] = v8 + 96;
      }

      a2[31] = v9;
      if (v11 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_A3A630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3A658(uint64_t a1, uint64_t *a2)
{
  if (*(**(a1 + 24) + 35) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_501CE8(&v10, *(a1 + 24) + 24);
    sub_C15444(&v10, a2);
    *(a1 + 104) = sub_7EA60(a1 + 1296) + *(a1 + 104);
    v9 = 20;
    strcpy(__p, "Transfer Preferences");
    v4 = *(a1 + 24);
    if (*(*v4 + 125) == 1)
    {
      v5 = sub_4F96D0(v4 + 3920);
      v11 = v5;
      v6 = a2[31];
      if (v6 >= a2[32])
      {
        v7 = sub_A40650(a2 + 30, __p, a1, &v11, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v5, a2);
        v7 = v6 + 96;
        a2[31] = v6 + 96;
      }

      a2[31] = v7;
      if (v9 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_A3A790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3A7B8(uint64_t a1, uint64_t *a2)
{
  if (*(**(a1 + 24) + 72) == 1)
  {
    sub_7E974(a1 + 1296);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_C18EB4(&v10, a2);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    v9 = 18;
    strcpy(__p, "Double Trip Filter");
    v4 = *(a1 + 24);
    if (*(*v4 + 125) == 1)
    {
      v5 = sub_4F96D0(v4 + 3920);
      v13 = v5;
      v6 = a2[31];
      if (v6 >= a2[32])
      {
        v7 = sub_A40650(a2 + 30, __p, a1, &v13, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v5, a2);
        v7 = v6 + 96;
        a2[31] = v6 + 96;
      }

      a2[31] = v7;
      if (v9 < 0)
      {
        operator delete(*__p);
      }
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }
}

void sub_A3A8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  *(v17 + 248) = v18;
  if (a14 < 0)
  {
    operator delete(__p);
    v20 = a16;
    if (!a16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A3A938(uint64_t result)
{
  if (*(**(result + 24) + 30) == 1)
  {
    operator new();
  }

  return result;
}

void sub_A3AB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A3FCA4(va);
  _Unwind_Resume(a1);
}

void sub_A3AD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3AD38(uint64_t result)
{
  if (*(**(result + 24) + 32) == 1)
  {
    v1 = result;
    sub_7E974(result + 1296);
    sub_681624(v2, *(*(v1 + 24) + 16), *(v1 + 24) + 24, *(*(v1 + 24) + 4224));
    sub_BC7C6C();
  }

  return result;
}

void sub_A3AE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3AEC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(**(result + 24) + 33) == 1 && *(a2 + 184) != 0)
  {
    v5 = result;
    sub_7E974(result + 1296);
    sub_501CE8(&v6, *(v5 + 24) + 24);
    sub_BD9AA4(&v6, a3);
    *(v5 + 128) = sub_7EA60(v5 + 1296) + *(v5 + 128);
    operator new();
  }

  return result;
}

void sub_A3B020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3B048(uint64_t result)
{
  if (*(**(result + 24) + 36) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3B21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A3FD8C(&a16);
  _Unwind_Resume(a1);
}

void sub_A3B254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3B270(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(**(result + 24) + 31) == 1)
  {
    sub_BA7534(&v4, a2, a3, a4);
    operator new();
  }

  return result;
}

void sub_A3B394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3B3BC(uint64_t result)
{
  if (*(**(result + 24) + 36) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3B5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A3FD8C(&a16);
  _Unwind_Resume(a1);
}

void sub_A3B5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3B600(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = **(a1 + 24);
  if (!a3 && (v6[39] & 1) != 0 || a3 == 1 && (v6[37] & 1) != 0 || a3 == 2 && (v6[38] & 1) != 0 || a3 == 3 && (v6[66] & 1) != 0 || a3 == 4 && (v6[67] & 1) != 0)
  {
    sub_7E974(a1 + 1296);
    v7 = sub_B6D0(&v20, a3);
    sub_BD287C(v7, a2);
    *(a1 + 144) = sub_7EA60(a1 + 1296) + *(a1 + 144);
    sub_BD2D2C(a3, &v16);
    v8 = std::string::insert(&v16, 0, "Journey Ordering (", 0x12uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v17, ")", 1uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v19 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = *(a1 + 24);
    if (*(*v12 + 125) == 1)
    {
      v13 = sub_4F96D0(v12 + 3920);
      v21 = v13;
      v14 = a2[31];
      if (v14 >= a2[32])
      {
        v15 = sub_A40650(a2 + 30, __p, a1, &v21, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v13, a2);
        v15 = v14 + 96;
        a2[31] = v14 + 96;
      }

      a2[31] = v15;
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

LABEL_22:
        operator delete(v16.__r_.__value_.__l.__data_);
        return;
      }
    }

    else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v17.__r_.__value_.__l.__data_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }
  }
}

void sub_A3B7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  *(v28 + 248) = v29;
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A3B864(uint64_t result)
{
  if (*(**(result + 24) + 76) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3BA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3BA38(uint64_t result, uint64_t a2)
{
  if (*(a2 + 145) == 1 && *(**(result + 24) + 40) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3BC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(&a16);
  _Unwind_Resume(a1);
}

void sub_A3BCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3BCCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(**(result + 24) + 42) == 1)
  {
    v4 = result;
    sub_7E974(result + 1296);
    sub_BBEA9C(v6, *(v4 + 24) + 24, a3);
    sub_BBEB64(v6, a2);
    *(v4 + 200) = sub_7EA60(v4 + 1296) + *(v4 + 200);
    operator new();
  }

  return result;
}

void sub_A3BEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
    sub_A31E68(&a16);
    _Unwind_Resume(a1);
  }

  sub_A31E68(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_A3BF0C(uint64_t result)
{
  if (*(**(result + 24) + 41) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3C148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(&a16);
  _Unwind_Resume(a1);
}

void sub_A3C180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3C19C(uint64_t result)
{
  if (*(**(result + 24) + 73) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3C360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  *(v15 + 248) = v16;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A3FF40(&a15);
  _Unwind_Resume(a1);
}

void sub_A3C39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3C3B8(uint64_t result, uint64_t a2)
{
  if (*(**(result + 24) + 68) == 1)
  {
    v3 = result;
    sub_7E974(result + 1296);
    nullsub_1(&v4);
    sub_C198F4(&v4, a2);
    *(v3 + 152) = sub_7EA60(v3 + 1296) + *(v3 + 152);
    operator new();
  }

  return result;
}

void sub_A3C504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3C52C(uint64_t a1, uint64_t *a2)
{
  if (*(**(a1 + 24) + 71) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_C18314(&v16, *(a1 + 24) + 24);
    sub_C18338(&v16, a2);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    v15 = 21;
    strcpy(__p, "Double Station Filter");
    v4 = *(a1 + 24);
    if (*(*v4 + 125) == 1)
    {
      v5 = sub_4F96D0(v4 + 3920);
      v21 = v5;
      v6 = a2[31];
      if (v6 >= a2[32])
      {
        v7 = sub_A40650(a2 + 30, __p, a1, &v21, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v5, a2);
        v7 = v6 + 96;
        a2[31] = v6 + 96;
      }

      a2[31] = v7;
      if (v15 < 0)
      {
        operator delete(*__p);
      }
    }

    v8 = v20;
    if (v20)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    v10 = v19;
    v19 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = v18;
    if (v18)
    {
      do
      {
        v12 = *v11;
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    v13 = v17;
    v17 = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }
}

void sub_A3C69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
    sub_A4008C(&a16);
    _Unwind_Resume(a1);
  }

  sub_A4008C(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_A3C6E0(uint64_t result)
{
  if (*(**(result + 24) + 44) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3C950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  *(v17 + 248) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(&a17);
  _Unwind_Resume(a1);
}

void sub_A3C98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3C9A8(uint64_t result)
{
  if (*(**(result + 24) + 45) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3CC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3CC68(uint64_t result)
{
  if (*(**(result + 24) + 46) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  *(v17 + 248) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(&a17);
  _Unwind_Resume(a1);
}

void sub_A3CF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3CF38(uint64_t result)
{
  if (*(**(result + 24) + 47) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3D128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3D154(uint64_t result)
{
  if (*(**(result + 24) + 48) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3D334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3D360(uint64_t result, uint64_t a2)
{
  v2 = **(result + 24);
  if (*(v2 + 49) == 1)
  {
    if (*(v2 + 52))
    {
      v3 = *(a2 + 184) == 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      sub_7E974(result + 1296);
      operator new();
    }
  }

  return result;
}

void sub_A3D548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 248) = v21;
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3D594(uint64_t result)
{
  if (*(**(result + 24) + 56) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3D76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3D798(uint64_t result)
{
  if (*(**(result + 24) + 58) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3D974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3D9A0(uint64_t result)
{
  if (*(**(result + 24) + 59) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3DB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3DBA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(**(result + 24) + 60) == 1)
  {
    v4 = result;
    sub_7E974(result + 1296);
    sub_C283C8(&__p, a2, a3);
    *(v4 + 152) = sub_7EA60(v4 + 1296) + *(v4 + 152);
    operator new();
  }

  return result;
}

void sub_A3DCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3DD14(uint64_t result)
{
  if (*(**(result + 24) + 61) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3DEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 248) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3DF3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(**(result + 24) + 62) == 1)
  {
    v4 = result;
    sub_7E974(result + 1296);
    nullsub_1(&__p);
    sub_C1A170(&__p, a2, a3);
    *(v4 + 152) = sub_7EA60(v4 + 1296) + *(v4 + 152);
    operator new();
  }

  return result;
}

void sub_A3E088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3E0B0(uint64_t result, uint64_t a2)
{
  if (*(**(result + 24) + 57) == 1 && *(a2 + 184) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3E290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3E2BC(uint64_t result)
{
  if (*(**(result + 24) + 63) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3E518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3E570(uint64_t result)
{
  if (*(**(result + 24) + 43) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3E750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3E77C(uint64_t result, uint64_t a2)
{
  if (*(**(result + 24) + 70) == 1)
  {
    v3 = result;
    sub_7E974(result + 1296);
    v4[0] = xmmword_22A7120;
    v4[1] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    sub_C17D78(v4, a2);
    *(v3 + 152) = sub_7EA60(v3 + 1296) + *(v3 + 152);
    operator new();
  }

  return result;
}

void sub_A3E8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3E8FC(uint64_t result)
{
  if (*(**(result + 24) + 74) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3EAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3EAEC(uint64_t result)
{
  if (*(**(result + 24) + 75) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3ECA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3ECD0(uint64_t result)
{
  if (*(**(result + 24) + 64) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3EF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 + 248) = v24;
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3EF84(uint64_t result)
{
  if (*(**(result + 24) + 65) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3F18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  *(v39 + 248) = v40;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_A404BC(&a39);
  _Unwind_Resume(a1);
}

uint64_t sub_A3F1E4(uint64_t result, uint64_t a2, void *a3)
{
  v3 = **(result + 24);
  if (*(v3 + 27) == 1 && *(a2 + 188) == 1 && *(v3 + 28) == 1)
  {
    v5 = result;
    sub_7E974(result + 1296);
    sub_BA538C(v6, *(*(v5 + 24) + 16), *(v5 + 24) + 24);
    sub_BA53C0(v6, a3);
    *(v5 + 248) = sub_7EA60(v5 + 1296) + *(v5 + 248);
    operator new();
  }

  return result;
}

void sub_A3F340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3F368(uint64_t result)
{
  if (*(**(result + 24) + 77) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3F52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3F558(uint64_t a1, uint64_t *a2)
{
  if (*(**(a1 + 24) + 78) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_C27310(__p, a2);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    v9 = 20;
    strcpy(__p, "Risky Journey Filter");
    v4 = *(a1 + 24);
    if (*(*v4 + 125) == 1)
    {
      v5 = sub_4F96D0(v4 + 3920);
      v10 = v5;
      v6 = a2[31];
      if (v6 >= a2[32])
      {
        v7 = sub_A40650(a2 + 30, __p, a1, &v10, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v5, a2);
        v7 = v6 + 96;
        a2[31] = v6 + 96;
      }

      a2[31] = v7;
      if (v9 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_A3F680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3F6A8(uint64_t result)
{
  if (*(**(result + 24) + 79) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3F85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3F888(uint64_t result)
{
  if (*(**(result + 24) + 80) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3FA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3FAC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_7E974(a1 + 1296);
  sub_BBE5B0(__p, a4);
  sub_BBE66C(__p, a2, a3);
  if (v15 == __p)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  *(a1 + 264) = sub_7EA60(a1 + 1296) + *(a1 + 264);
  v14 = 16;
  strcpy(__p, "Journey Blending");
  v8 = *(a1 + 24);
  if (*(*v8 + 125) == 1)
  {
    v9 = sub_4F96D0(v8 + 3920);
    v12 = v9;
    v10 = a3[31];
    if (v10 >= a3[32])
    {
      v11 = sub_A40650(a3 + 30, __p, a1, &v12, a3);
    }

    else
    {
      sub_C7BDA8(a3[31], __p, a1, v9, a3);
      v11 = v10 + 96;
      a3[31] = v10 + 96;
    }

    a3[31] = v11;
    if (v14 < 0)
    {
      operator delete(*__p);
    }
  }
}

void sub_A3FC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 248) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A3FCA4(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    do
    {
      v7 = *v3;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v7;
    }

    while (v7);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5 == a1)
  {
    (*(*v5 + 32))(v5);
    return a1;
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    return a1;
  }
}

void *sub_A3FD8C(void *a1)
{
  v2 = a1[8];
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = a1[9];
  v4 = a1[8];
  if (v3 == v2)
  {
    goto LABEL_15;
  }

  v5 = 0;
  do
  {
    v6 = *(v3 + v5 - 8);
    if (v3 + v5 - 32 == v6)
    {
      (*(*v6 + 32))(v6);
      v7 = *(v3 + v5 - 40);
      if (v3 + v5 - 64 == v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      v7 = *(v3 + v5 - 40);
      if (v3 + v5 - 64 == v7)
      {
LABEL_4:
        (*(*v7 + 32))(v7);
        goto LABEL_5;
      }
    }

    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

LABEL_5:
    v5 -= 72;
  }

  while (v3 + v5 != v2);
  v4 = a1[8];
LABEL_15:
  a1[9] = v2;
  operator delete(v4);
LABEL_16:
  v8 = a1[5];
  if (v8 == a1 + 2)
  {
    (*(*v8 + 32))(v8);
    return a1;
  }

  else
  {
    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    return a1;
  }
}

void *sub_A3FF40(void *a1)
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
      v6 = a1[7];
      do
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            v11 = *(v4 - 2);
            do
            {
              v13 = *(v11 - 3);
              v11 -= 24;
              v12 = v13;
              if (v13)
              {
                *(v10 - 2) = v12;
                operator delete(v12);
              }

              v10 = v11;
            }

            while (v11 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[6];
    }

    a1[7] = v3;
    operator delete(v5);
  }

  v14 = a1[3];
  if (v14)
  {
    v15 = a1[4];
    v16 = a1[3];
    if (v15 != v14)
    {
      v17 = a1[4];
      do
      {
        v20 = *(v17 - 3);
        v17 -= 3;
        v19 = v20;
        if (v20)
        {
          v21 = *(v15 - 2);
          v18 = v19;
          if (v21 != v19)
          {
            v22 = *(v15 - 2);
            do
            {
              v24 = *(v22 - 3);
              v22 -= 24;
              v23 = v24;
              if (v24)
              {
                *(v21 - 2) = v23;
                operator delete(v23);
              }

              v21 = v22;
            }

            while (v22 != v19);
            v18 = *v17;
          }

          *(v15 - 2) = v19;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v14);
      v16 = a1[3];
    }

    a1[4] = v14;
    operator delete(v16);
  }

  return a1;
}

void *sub_A4008C(void *a1)
{
  v2 = a1[8];
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

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

void *sub_A40100(void *a1)
{
  sub_A40284((a1 + 44));
  v2 = a1[43];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[41];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[35];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[33];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[28];
  if (v6)
  {
    a1[29] = v6;
    operator delete(v6);
  }

  v7 = a1[27];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    a1[14] = v8;
    operator delete(v8);
  }

  v9 = a1[12];
  if (v9)
  {
    free(v9);
  }

  return a1;
}

uint64_t sub_A40284(uint64_t a1)
{
  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
  }

  v2 = *(a1 + 560);
  if (v2)
  {
    *(a1 + 568) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 536);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 512);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 464);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 432);
  if (v6)
  {
    *(a1 + 440) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 408);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 384);
  if (v8)
  {
    *(a1 + 392) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 360);
  if (v9)
  {
    *(a1 + 368) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 336);
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(a1 + 312);
  if (v11)
  {
    *(a1 + 320) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 288);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 264);
  if (v13)
  {
    *(a1 + 272) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 240);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(a1 + 216);
  if (v15)
  {
    *(a1 + 224) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 192);
  if (v16)
  {
    *(a1 + 200) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 184);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(a1 + 104);
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(a1 + 88);
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(a1 + 72);
  if (!v20 || atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  return a1;
}

uint64_t sub_A404BC(uint64_t a1)
{
  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  sub_A40284(a1 + 376);
  v2 = *(a1 + 368);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 352);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 304);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 288);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    *(a1 + 256) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 240);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    *(a1 + 136) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    free(v9);
  }

  return a1;
}

uint64_t sub_A40650(uint64_t *a1, __int128 *a2, __int128 *a3, int *a4, uint64_t a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v6 = v5 + 1;
  if (v5 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v8 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v6;
  }

  v17 = a1;
  if (v8)
  {
    if (v8 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 96 * v5;
  v15 = 96 * v5;
  v16 = 0;
  sub_C7BDA8(96 * v5, a2, a3, *a4, a5);
  v15 = 96 * v5 + 96;
  sub_A39F80(a1, &__p);
  v9 = a1[1];
  v10 = v14;
  while (1)
  {
    v11 = v15;
    if (v15 == v10)
    {
      break;
    }

    v15 -= 96;
    sub_A31EF4((v11 - 24));
    if (*(v11 - 49) < 0)
    {
      operator delete(*(v11 - 72));
      if (*(v11 - 73) < 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v11 - 73) < 0)
    {
LABEL_16:
      operator delete(*(v11 - 96));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_A407DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A3570C(va);
  _Unwind_Resume(a1);
}

void sub_A42510(_Unwind_Exception *a1)
{
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
    if ((*(v2 - 65) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v2 - 65) & 0x80000000) == 0)
  {
LABEL_3:
    if ((*(v2 - 89) & 0x80000000) == 0)
    {
LABEL_8:
      sub_A31E68(v1 + 88);
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(*(v2 - 112));
    goto LABEL_8;
  }

  operator delete(*(v2 - 88));
  if ((*(v2 - 89) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_A42ACC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 23);
  if ((*(result + 23) & 0x80000000) == 0)
  {
    if (*(result + 23) > 6u)
    {
      goto LABEL_7;
    }

    if (v2 != 3)
    {
      if (v2 != 4)
      {
        goto LABEL_54;
      }

      if (*result != 1852399981)
      {
        if (*result != 1701736302)
        {
LABEL_7:
          if (v2 != 7)
          {
            v3 = result;
            if (v2 != 8)
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (*result != 1819044198 || *(result + 3) != 1852399468)
          {
LABEL_54:
            exception = __cxa_allocate_exception(0x40uLL);
            std::operator+<char>();
            sub_30F54("", &v15, &v16);
            if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v12 = &v16;
            }

            else
            {
              v12 = v16.__r_.__value_.__r.__words[0];
            }

            if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v16.__r_.__value_.__l.__size_;
            }

            v14 = sub_2D390(exception, v12, size);
          }

LABEL_37:
          a2[3] = a2;
          *a2 = off_2670298;
          return result;
        }

LABEL_49:
        a2[3] = a2;
        *a2 = off_26705B0;
        return result;
      }

      goto LABEL_50;
    }

    if (*result != 28257 || *(result + 2) != 121)
    {
      if (*result != 28532 || *(result + 2) != 112)
      {
        goto LABEL_54;
      }

LABEL_47:
      a2[3] = a2;
      *a2 = off_2670630;
      return result;
    }

LABEL_48:
    a2[3] = a2;
    *a2 = off_26700D8;
    return result;
  }

  if (*(result + 8) == 3 && **result == 28257 && *(*result + 2) == 121)
  {
    goto LABEL_48;
  }

  if (*(result + 8) == 4 && **result == 1701736302)
  {
    goto LABEL_49;
  }

  if (*(result + 8) == 4 && **result == 1852399981)
  {
LABEL_50:
    a2[3] = a2;
    *a2 = off_2670218;
    return result;
  }

  if (*(result + 8) == 3)
  {
    if (**result == 28532 && *(*result + 2) == 112)
    {
      goto LABEL_47;
    }

    if ((v2 & 0x80) == 0)
    {
      goto LABEL_54;
    }
  }

  v6 = *(result + 8);
  if (v6 != 8)
  {
    if (v6 != 7)
    {
      goto LABEL_54;
    }

    if (**result != 1819044198 || *(*result + 3) != 1852399468)
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v3 = *result;
LABEL_52:
  if (*v3 != 0x656D69746C616572)
  {
    goto LABEL_54;
  }

  a2[3] = a2;
  *a2 = off_26706B0;
  return result;
}

void sub_A42E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_A42F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate4noneEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate4noneEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate4noneEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate4noneEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A43050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate3topEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate3topEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate3topEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate3topEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A43160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate8realtimeEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate8realtimeEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate8realtimeEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate8realtimeEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_A43740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A439A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3B889C(va);
  sub_1F1A8(v2 - 72);
  _Unwind_Resume(a1);
}

void sub_A439E8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A43A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v24);
  if (sub_C7E5D0(a2))
  {
    *(a1 + 4320) = 0;
    *(a1 + 4304) = 0u;
    *(a1 + 4288) = 0u;
    *(a1 + 4272) = 0u;
    *(a1 + 4256) = 0u;
    *(a1 + 4240) = 0u;
    *(a1 + 4224) = 0u;
    sub_C9E4D8(a1 + 3920);
    if (*a1)
    {
      v6 = *(a2 + 60);
    }

    else
    {
      v6 = 0;
    }

    sub_C9E54C(a1 + 3920, v6);
    sub_A4495C(a1);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v13);
    sub_4A5C(&v13, "Inconsistent request provided to journey updater; failing request.", 66);
    if ((v23 & 0x10) != 0)
    {
      v9 = v22;
      if (v22 < v19)
      {
        v22 = v19;
        v9 = v19;
      }

      v10 = v18;
      v8 = v9 - v18;
      if (v9 - v18 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        v8 = 0;
        v12 = 0;
LABEL_18:
        *(&__dst + v8) = 0;
        sub_7E854(&__dst, 3u);
        if (v12 < 0)
        {
          operator delete(__dst);
        }

        if (v21 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v15);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_23;
      }

      v10 = v16;
      v8 = v17 - v16;
      if ((v17 - v16) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_25:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v12 = v8;
    if (v8)
    {
      memmove(&__dst, v10, v8);
    }

    goto LABEL_18;
  }

LABEL_23:
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = &off_2669FE0;
  return result;
}

void sub_A446A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a38);
  sub_A448F4(&a16);
  sub_A325C4(&a33);
  sub_A37AFC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_A44814(uint64_t a1)
{
  sub_A44AC8(a1);
  sub_A44D28(a1);
  sub_A44F00(a1);
}

void **sub_A448F4(void **a1)
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
        v5 = v3 - 240;
        sub_A30978((v3 - 232));
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

void sub_A44A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A44A68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E974(a1 + 4352);
  sub_A74AD4((a1 + 24), a2, a3);
  result = sub_7EA60(a1 + 4352) + *(a1 + 4256);
  *(a1 + 4256) = result;
  return result;
}

uint64_t sub_A44AC8(uint64_t result)
{
  if (*(result + 3) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A44CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A44CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_A31E68(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A44D28(uint64_t result)
{
  if (*(result + 2) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A44ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A44EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A45160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_A3FCA4(va);
  _Unwind_Resume(a1);
}

void sub_A45174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_A31E68(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A451A0(uint64_t result)
{
  if (*(result + 4) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A45344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A45358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A45374(uint64_t result)
{
  if (*(result + 5) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A45518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A4552C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A45548(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 6) == 1)
  {
    sub_7E974(a1 + 4352);
    v7 = v6;
    v6[0] = off_26700D8;
    sub_C283C8(&v5, a2, v6);
    if (v7 == v6)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))();
    }

    result = sub_7EA60(a1 + 4352) + *(a1 + 4312);
    *(a1 + 4312) = result;
  }

  return result;
}

void sub_A45668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A4567C(uint64_t result)
{
  if (*(result + 7) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A4582C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_A31E68(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_A45864(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_7E974(a1 + 4352);
    nullsub_1(&v5);
    v7 = v6;
    v6[0] = off_26700D8;
    sub_C1A170(&v5, a2, v6);
    if (v7 == v6)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))();
    }

    result = sub_7EA60(a1 + 4352) + *(a1 + 4312);
    *(a1 + 4312) = result;
  }

  return result;
}

void sub_A4598C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

double sub_A459A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1) == 1 && *(a2 + 56) != 0)
  {
    v9[5] = v3;
    v9[6] = v4;
    sub_7E974(a1 + 4352);
    sub_501CE8(v9, a1 + 24);
    sub_BD9AA4(v9, a3);
    result = sub_7EA60(a1 + 4352) + *(a1 + 4264);
    *(a1 + 4264) = result;
  }

  return result;
}

uint64_t sub_A45A28(uint64_t result)
{
  if (*(result + 9) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A45C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A45C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_A31E68(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A45C94(uint64_t result)
{
  if (*(result + 10) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A45E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A45E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A45E70(uint64_t result)
{
  if (*(result + 11) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A46018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A4602C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A46048(uint64_t result)
{
  if (*(result + 12) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A461FC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(exception_object);
}

double sub_A46218@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_7E974(a1 + 4352);
  sub_A4FDCC(a1 + 24, a2, a3, a4, a5);
  result = sub_7EA60(a1 + 4352) + *(a1 + 4320);
  *(a1 + 4320) = result;
  return result;
}

void sub_A46290(uint64_t a1, void *a2, void *a3)
{
  HIBYTE(v25[2]) = 21;
  strcpy(v25, "enable_coverage_check");
  v5 = sub_5F9D0(a3, v25);
  if (SHIBYTE(v25[2]) < 0)
  {
    v6 = v5;
    operator delete(v25[0]);
    v5 = v6;
  }

  *a1 = v5;
  *(a1 + 8) = a2;
  v7 = sub_3AF114(a2);
  v8 = v7[1];
  *&v24 = *v7;
  *(&v24 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = sub_3AF234(*(a1 + 8));
  v10 = v9[1];
  *&v15 = *v9;
  *(&v15 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v9[3];
  v16 = v9[2];
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v9[5];
  v18 = v9[4];
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v9[7];
  v20 = v9[6];
  v21 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v9[9];
  v22 = v9[8];
  v23 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  sub_A30418((a1 + 16), &v24, 1, &v15);
}

void sub_A4647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_3B889C(&a9);
  sub_1F1A8(&a19);
  _Unwind_Resume(a1);
}

void sub_A46498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_A464AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_A464CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v36);
  if (!sub_C803CC(a2))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_32:
      *a3 = 0;
      *(a3 + 8) = 1;
      *(a3 + 16) = &off_2669FE0;
      return;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "Inconsistent request provided to payment method lookup module; failing request.", 79);
    if ((v35 & 0x10) != 0)
    {
      v14 = v34;
      if (v34 < v31)
      {
        v34 = v31;
        v14 = v31;
      }

      v15 = v30;
      v12 = v14 - v30;
      if (v14 - v30 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v35 & 8) == 0)
      {
        v12 = 0;
        BYTE7(__dst[1]) = 0;
LABEL_27:
        *(__dst + v12) = 0;
        sub_7E854(__dst, 3u);
        if (SBYTE7(__dst[1]) < 0)
        {
          operator delete(*&__dst[0]);
        }

        if (v33 < 0)
        {
          operator delete(v32);
        }

        std::locale::~locale(&__p[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_32;
      }

      v15 = v27;
      v12 = v29 - v27;
      if ((v29 - v27) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_34:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    BYTE7(__dst[1]) = v12;
    if (v12)
    {
      memmove(__dst, v15, v12);
    }

    goto LABEL_27;
  }

  sub_C9E53C(a1 + 3912, *(a2 + 5));
  v6 = sub_3B0454(*(a1 + 8));
  sub_64AEEC((a1 + 3912), v6);
  memset(__dst, 0, 72);
  v7 = *(a2 + 1624);
  for (i = *(a2 + 1632); v7 != i; v7 += 592)
  {
    if (*(v7 + 584) != 2)
    {
      sub_5AF20();
    }

    sub_A46C14(a1, v7, &v25);
    v9 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) >= *&__dst[1])
    {
      *(&__dst[0] + 1) = sub_A47260(__dst, &v25);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      **(&__dst[0] + 1) = v25;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = 0;
      *(v9 + 8) = *__p;
      *(v9 + 24) = v27;
      __p[0] = 0;
      __p[1] = 0;
      v27 = 0;
      *(v9 + 32) = v28;
      *(&__dst[0] + 1) = v9 + 40;
    }

    sub_CC7110((&__dst[1] + 8), (a1 + 4216));
    *&__dst[2] = *&__dst[2] + 1.0;
  }

  if (sub_C806C4(a2, __dst))
  {
    *&__dst[3] = sub_7EA60(v36);
    *a3 = 1;
    *(a3 + 8) = __dst[0];
    *(a3 + 24) = *&__dst[1];
    v10 = *(&__dst[3] + 8);
    v11 = *(&__dst[2] + 8);
    *(a3 + 32) = *(&__dst[1] + 8);
    *(a3 + 48) = v11;
    *(a3 + 64) = v10;
    return;
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_48;
  }

  sub_19594F8(&v25);
  sub_4A5C(&v25, "Inconsistent response computed whilst processing payment method lookup; failing solution.", 89);
  if ((v35 & 0x10) != 0)
  {
    v16 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v16 = v31;
    }

    v17 = v30;
    v13 = v16 - v30;
    if (v16 - v30 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_58:
      sub_3244();
    }

LABEL_38:
    if (v13 >= 0x17)
    {
      operator new();
    }

    v23 = v13;
    if (v13)
    {
      memmove(&v22, v17, v13);
    }

    goto LABEL_43;
  }

  if ((v35 & 8) != 0)
  {
    v17 = v27;
    v13 = v29 - v27;
    if ((v29 - v27) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_58;
    }

    goto LABEL_38;
  }

  v13 = 0;
  v23 = 0;
LABEL_43:
  *(&v22 + v13) = 0;
  sub_7E854(&v22, 3u);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::locale::~locale(&__p[1]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_48:
  *a3 = 0;
  *(a3 + 8) = 3;
  *(a3 + 16) = &off_2669FE0;
  v18 = *&__dst[0];
  if (*&__dst[0])
  {
    v19 = *(&__dst[0] + 1);
    v20 = *&__dst[0];
    if (*(&__dst[0] + 1) != *&__dst[0])
    {
      do
      {
        v21 = *(v19 - 32);
        if (v21)
        {
          *(v19 - 24) = v21;
          operator delete(v21);
        }

        v19 -= 40;
      }

      while (v19 != v18);
      v20 = *&__dst[0];
    }

    *(&__dst[0] + 1) = v18;
    operator delete(v20);
  }
}

void sub_A46B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a26);
    sub_A473F0(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a26);
  sub_A473F0(&a16);
  _Unwind_Resume(a1);
}

void sub_A46B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a26);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a26);
  _Unwind_Resume(a1);
}

void sub_A46BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
    sub_A473F0(&a13);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xA46C04);
}

void sub_A46C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A473F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A46C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a1 + 4232) = 0u;
  *(a1 + 4248) = 0u;
  *(a1 + 4216) = 0u;
  if (sub_C80120(a2))
  {
    sub_A47464(a1);
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v11);
    sub_4A5C(&v11, "Inconsistent nearby payment method lookup parameters provided to payment method lookup module; failing solution.", 112);
    if ((v21 & 0x10) != 0)
    {
      v6 = v20;
      if (v20 < v17)
      {
        v20 = v17;
        v6 = v17;
      }

      v7 = v16;
      v5 = v6 - v16;
      if (v6 - v16 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v21 & 8) == 0)
      {
        v5 = 0;
        HIBYTE(v10) = 0;
LABEL_15:
        *(&__dst + v5) = 0;
        sub_7E854(&__dst, 3u);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__dst);
        }

        if (v19 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v13);
        std::ostream::~ostream();
        std::ios::~ios();
        return sub_D4F488(1, a3);
      }

      v7 = v14;
      v5 = v15 - v14;
      if ((v15 - v14) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v10) = v5;
    if (v5)
    {
      memmove(&__dst, v7, v5);
    }

    goto LABEL_15;
  }

  return sub_D4F488(1, a3);
}

void sub_A471AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a21);
  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A47260(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v6 + 32) = *(a2 + 32);
  v7 = 40 * v2 + 40;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = *(v11 + 1);
      *(v12 + 24) = v11[3];
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = 0;
      *(v12 + 32) = *(v11 + 32);
      v11 += 5;
      v12 += 40;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[1];
      if (v13)
      {
        v8[2] = v13;
        operator delete(v13);
      }

      v8 += 5;
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

void **sub_A473F0(void **a1)
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
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
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

void sub_A47594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A475B0(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_7E974((a1 + 4264));
    operator new();
  }

  return 0;
}

void sub_A4773C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A47758(uint64_t a1)
{
  v2 = *(a1 + 584);
  if (v2 != -1)
  {
    (off_2670740[v2])(&v4, a1);
  }

  *(a1 + 584) = -1;
  return a1;
}

void sub_A4841C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_A4863C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3B889C(&a9);
  sub_1F1A8(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_A48684(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v45);
  if (!sub_C83E0C(a2))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_36:
      *a3 = 0;
      *(a3 + 8) = 1;
      *(a3 + 16) = &off_2669FE0;
      return;
    }

    sub_19594F8(v42);
    sub_4A5C(v42, "Inconsistent request provided to schedule lookup module; failing request.", 73);
    if ((LOBYTE(v44[5].f64[0]) & 0x10) != 0)
    {
      v18 = v44[4].f64[1];
      if (*&v44[4].f64[1] < *&v44[2].f64[0])
      {
        v44[4].f64[1] = v44[2].f64[0];
        v18 = v44[2].f64[0];
      }

      v19 = v44[1].f64[1];
      v16 = *&v18 - *&v44[1].f64[1];
      if (*&v18 - *&v44[1].f64[1] > 0x7FFFFFFFFFFFFFF7uLL)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((LOBYTE(v44[5].f64[0]) & 8) == 0)
      {
        v16 = 0;
        HIBYTE(v28) = 0;
LABEL_31:
        *(&__dst + v16) = 0;
        sub_7E854(&__dst, 3u);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v44[4].f64[0]) < 0)
        {
          operator delete(*&v44[3].f64[0]);
        }

        std::locale::~locale(&v43);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_36;
      }

      v19 = v44[0].f64[0];
      v16 = *&v44[1].f64[0] - *&v44[0].f64[0];
      if (*&v44[1].f64[0] - *&v44[0].f64[0] > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v28) = v16;
    if (v16)
    {
      memmove(&__dst, *&v19, v16);
    }

    goto LABEL_31;
  }

  v42[0] = 0;
  v42[1] = 0;
  v43.__locale_ = 0;
  sub_CC7424(v44);
  v6 = *(a2 + 1624);
  for (i = *(a2 + 1632); v6 != i; v6 += 592)
  {
    sub_A48E58(a1, a2, v6, &__dst);
    v8 = v42[1];
    if (v42[1] >= v43.__locale_)
    {
      v15 = sub_A4A51C(v42, &__dst);
    }

    else
    {
      v9 = __dst;
      *(v42[1] + 3) = 0;
      *(v8 + 4) = 0;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = v9;
      *(v8 + 8) = v28;
      *(v8 + 3) = v29;
      v28 = 0uLL;
      *(v8 + 5) = 0;
      *(v8 + 6) = 0;
      *(v8 + 2) = v30;
      *(v8 + 6) = v31;
      *(v8 + 7) = 0;
      v29 = 0;
      v30 = 0uLL;
      v31 = 0;
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v8 + 56) = v32;
      v32 = 0uLL;
      *(v8 + 9) = v33;
      *(v8 + 10) = 0;
      *(v8 + 11) = 0;
      *(v8 + 12) = 0;
      *(v8 + 5) = v34;
      *(v8 + 12) = v35;
      v33 = 0;
      v34 = 0uLL;
      v35 = 0;
      *(v8 + 26) = v36;
      v10 = v37;
      v37 = 0;
      *(v8 + 14) = v10;
      *(v8 + 15) = v38;
      v38 = 0;
      v11 = v39;
      *(v8 + 16) = v39;
      v12 = v40;
      *(v8 + 17) = v40;
      *(v8 + 36) = v41;
      if (v12)
      {
        v13 = *(v11 + 8);
        v14 = *(v8 + 15);
        if ((v14 & (v14 - 1)) != 0)
        {
          if (v13 >= v14)
          {
            v13 %= v14;
          }
        }

        else
        {
          v13 &= v14 - 1;
        }

        *(v10 + 8 * v13) = v8 + 128;
        v39 = 0;
        v40 = 0;
      }

      v15 = v8 + 152;
    }

    v42[1] = v15;
    sub_A4A778(&__dst);
    *(a1 + 4272) = 0x3FF0000000000000;
    sub_CC74A0(v44, (a1 + 4240));
  }

  if (sub_C871E8(a2, v42))
  {
    v44[6].f64[1] = sub_7EA60(v45);
    *a3 = 1;
    *(a3 + 8) = *v42;
    *(a3 + 24) = v43;
    memcpy((a3 + 32), v44, 0x220uLL);
    return;
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_52;
  }

  sub_19594F8(&__dst);
  sub_4A5C(&__dst, "Inconsistent response computed whilst processing schedule lookup; failing solution.", 83);
  if ((v36 & 0x10) != 0)
  {
    v20 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v20 = v32;
    }

    v21 = v31;
    v17 = v20 - v31;
    if (v20 - v31 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_59:
      sub_3244();
    }

LABEL_42:
    if (v17 >= 0x17)
    {
      operator new();
    }

    v26 = v17;
    if (v17)
    {
      memmove(&v25, v21, v17);
    }

    goto LABEL_47;
  }

  if ((v36 & 8) != 0)
  {
    v21 = v29;
    v17 = *(&v30 + 1) - v29;
    if (*(&v30 + 1) - v29 > 0x7FFFFFFFFFFFFFF7uLL)
    {
      goto LABEL_59;
    }

    goto LABEL_42;
  }

  v17 = 0;
  v26 = 0;
LABEL_47:
  *(&v25 + v17) = 0;
  sub_7E854(&v25, 3u);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  std::locale::~locale(&v28 + 1);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_52:
  *a3 = 0;
  *(a3 + 8) = 3;
  *(a3 + 16) = &off_2669FE0;
  v22 = v42[0];
  if (v42[0])
  {
    v23 = v42[1];
    v24 = v42[0];
    if (v42[1] != v42[0])
    {
      do
      {
        v23 = sub_A4A778(v23 - 19);
      }

      while (v23 != v22);
      v24 = v42[0];
    }

    v42[1] = v22;
    operator delete(v24);
  }
}

void sub_A48D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A4A4C0(&a48);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A4A4C0(&a48);
  _Unwind_Resume(a1);
}

void sub_A48DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a48);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a48);
  _Unwind_Resume(a1);
}

void sub_A48E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  sub_A4A778(&a12);
  sub_A4A4C0(&a45);
  _Unwind_Resume(a1);
}

void sub_A48E58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_CC7424(__src);
  memcpy((a1 + 4240), __src, 0x220uLL);
  v8 = *(a3 + 584);
  if (v8 < 2)
  {
    if (v8)
    {
      if (*(a1 + 1))
      {
        goto LABEL_4;
      }
    }

    else if (*a1)
    {
LABEL_4:
      sub_C8751C(__src, *(a1 + 32));
      if (sub_C8756C(__src, a3))
      {
        if (*(a2 + 20))
        {
          operator new();
        }

        if (!sub_7E7E4(2u))
        {
          goto LABEL_84;
        }

        sub_19594F8(__src);
        sub_4A5C(__src, "Schedule component not requested; skipping solution in schedule lookup module.", 78);
        if ((BYTE8(__src[6]) & 0x10) != 0)
        {
          v22 = *&__src[6];
          if (*&__src[6] < *(&__src[3] + 1))
          {
            *&__src[6] = *(&__src[3] + 1);
            v22 = *(&__src[3] + 1);
          }

          v23 = &__src[3];
        }

        else
        {
          if ((BYTE8(__src[6]) & 8) == 0)
          {
            v16 = 0;
            v26 = 0;
LABEL_79:
            *(&__p + v16) = 0;
            sub_7E854(&__p, 2u);
            if (v26 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(__src[5]) < 0)
            {
              operator delete(*(&__src[4] + 1));
            }

            std::locale::~locale(&__src[1]);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_84:
            v14 = a4;
            v15 = 0;
            goto LABEL_68;
          }

          v23 = &__src[1] + 1;
          v22 = *(&__src[2] + 1);
        }

        v24 = *v23;
        v16 = v22 - *v23;
        if (v16 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v16 >= 0x17)
        {
          operator new();
        }

        v26 = v22 - *v23;
        if (v16)
        {
          memmove(&__p, v24, v16);
        }

        goto LABEL_79;
      }

      if (!sub_7E7E4(1u))
      {
        goto LABEL_67;
      }

      sub_19594F8(__src);
      sub_4A5C(__src, "Place request parameters do not conform to partial data requirements; failing solution.", 87);
      if ((BYTE8(__src[6]) & 0x10) != 0)
      {
        v19 = *&__src[6];
        if (*&__src[6] < *(&__src[3] + 1))
        {
          *&__src[6] = *(&__src[3] + 1);
          v19 = *(&__src[3] + 1);
        }

        v20 = &__src[3];
      }

      else
      {
        if ((BYTE8(__src[6]) & 8) == 0)
        {
          v11 = 0;
          v26 = 0;
LABEL_61:
          *(&__p + v11) = 0;
          sub_7E854(&__p, 1u);
          goto LABEL_62;
        }

        v20 = &__src[1] + 1;
        v19 = *(&__src[2] + 1);
      }

      v21 = *v20;
      v11 = v19 - *v20;
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      v26 = v19 - *v20;
      if (v11)
      {
        memmove(&__p, v21, v11);
      }

      goto LABEL_61;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_67:
      v14 = a4;
      v15 = 17;
      goto LABEL_68;
    }

    sub_19594F8(__src);
    sub_4A5C(__src, "Request disabled in schedule lookup configuration; skipping solution in schedule lookup module.", 95);
    if ((BYTE8(__src[6]) & 0x10) != 0)
    {
      v17 = *&__src[6];
      if (*&__src[6] < *(&__src[3] + 1))
      {
        *&__src[6] = *(&__src[3] + 1);
        v17 = *(&__src[3] + 1);
      }

      v18 = *&__src[3];
      v10 = v17 - *&__src[3];
      if ((v17 - *&__src[3]) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if ((BYTE8(__src[6]) & 8) == 0)
      {
        v10 = 0;
        v26 = 0;
LABEL_48:
        *(&__p + v10) = 0;
        sub_7E854(&__p, 2u);
LABEL_62:
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(__src[5]) < 0)
        {
          operator delete(*(&__src[4] + 1));
        }

        std::locale::~locale(&__src[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_67;
      }

      v18 = *(&__src[1] + 1);
      v10 = *(&__src[2] + 1) - *(&__src[1] + 1);
      if (*(&__src[2] + 1) - *(&__src[1] + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_50:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v26 = v10;
    if (v10)
    {
      memmove(&__p, v18, v10);
    }

    goto LABEL_48;
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(__src);
    sub_4A5C(__src, "Unknown type of place request parameters provided; skipping solution in schedule lookup module.", 95);
    if ((BYTE8(__src[6]) & 0x10) != 0)
    {
      v12 = *&__src[6];
      if (*&__src[6] < *(&__src[3] + 1))
      {
        *&__src[6] = *(&__src[3] + 1);
        v12 = *(&__src[3] + 1);
      }

      v13 = *&__src[3];
      v9 = v12 - *&__src[3];
      if ((v12 - *&__src[3]) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if ((BYTE8(__src[6]) & 8) == 0)
      {
        v9 = 0;
        v26 = 0;
LABEL_28:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 2u);
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(__src[5]) < 0)
        {
          operator delete(*(&__src[4] + 1));
        }

        std::locale::~locale(&__src[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v13 = *(&__src[1] + 1);
      v9 = *(&__src[2] + 1) - *(&__src[1] + 1);
      if (*(&__src[2] + 1) - *(&__src[1] + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_39:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v26 = v9;
    if (v9)
    {
      memmove(&__p, v13, v9);
    }

    goto LABEL_28;
  }

LABEL_33:
  v14 = a4;
  v15 = 1;
LABEL_68:
  sub_D50D4C(v15, v14);
}

void sub_A499E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a49);
  sub_A4A778(&a15);
  sub_A4AB5C(&a34);
  sub_A4AD48(&STACK[0x230]);
  sub_A4ADAC(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

void **sub_A4A4C0(void **a1)
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
        v3 = sub_A4A778(v3 - 19);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A4A51C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_A4A680(v6, a2);
  v7 = 152 * v2 + 152;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      sub_A4A680(v12, v11);
      v11 += 152;
      v12 += 152;
    }

    while (v11 != v9);
    do
    {
      sub_A4A778(v8);
      v8 += 19;
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

uint64_t sub_A4A680(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = *(a2 + 32);
  *(result + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = *(a2 + 56);
  *(result + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  v4 = *(a2 + 128);
  v2 = a2 + 128;
  v3 = v4;
  *(result + 80) = *(v2 - 48);
  *(result + 96) = *(v2 - 32);
  *(v2 - 40) = 0;
  *(v2 - 32) = 0;
  *(v2 - 48) = 0;
  *(result + 128) = v4;
  *(result + 104) = *(v2 - 24);
  v5 = *(v2 - 16);
  *(result + 120) = *(v2 - 8);
  *(v2 - 16) = 0;
  *(result + 112) = v5;
  *(v2 - 8) = 0;
  v6 = *(v2 + 8);
  *(result + 136) = v6;
  *(result + 144) = *(v2 + 16);
  if (v6)
  {
    v7 = *(v3 + 8);
    v8 = *(result + 120);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v7 %= v8;
      }
    }

    else
    {
      v7 &= v8 - 1;
    }

    *(v5 + 8 * v7) = result + 128;
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  return result;
}

void *sub_A4A778(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2670768[v4])(&v28, v2 + 5);
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

  v5 = a1[14];
  a1[14] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    a1[11] = v6;
    operator delete(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = a1[8];
    v9 = a1[7];
    if (v8 != v7)
    {
      do
      {
        v8 = sub_93C358(v8 - 15);
      }

      while (v8 != v7);
      v9 = a1[7];
    }

    a1[8] = v7;
    operator delete(v9);
  }

  v10 = a1[4];
  if (v10)
  {
    v11 = a1[5];
    v12 = a1[4];
    if (v11 != v10)
    {
      v13 = a1[5];
      do
      {
        v15 = *(v13 - 48);
        v13 -= 48;
        v14 = v15;
        if (v15)
        {
          *(v11 - 40) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = a1[4];
    }

    a1[5] = v10;
    operator delete(v12);
  }

  v16 = a1[1];
  if (v16)
  {
    v17 = a1[2];
    v18 = a1[1];
    if (v17 != v16)
    {
      v19 = a1[2];
      do
      {
        v22 = *(v19 - 4);
        v19 -= 4;
        v21 = v22;
        if (v22)
        {
          v23 = *(v17 - 3);
          v20 = v21;
          if (v23 != v21)
          {
            do
            {
              v24 = *(v23 - 3);
              if (v24)
              {
                *(v23 - 2) = v24;
                operator delete(v24);
              }

              v25 = v23 - 56;
              v26 = *(v23 - 7);
              if (v26)
              {
                *(v23 - 6) = v26;
                operator delete(v26);
              }

              v23 -= 56;
            }

            while (v25 != v21);
            v20 = *v19;
          }

          *(v17 - 3) = v21;
          operator delete(v20);
        }

        v17 = v19;
      }

      while (v19 != v16);
      v18 = a1[1];
    }

    a1[2] = v16;
    operator delete(v18);
  }

  return a1;
}

uint64_t sub_A4A958(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_93B37C((a1 + 8), (a2 + 8));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_93B9CC(a1 + 56, *(a2 + 56), *(a2 + 64), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v7 = *(a2 + 80);
  v6 = *(a2 + 88);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 104) = *(a2 + 104);
  sub_5ADDC(a1 + 112, a2 + 112);
  return a1;
}

void sub_A4AAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v10 + 40) = v11;
  sub_93C664(&a9);
  sub_93A4BC(v9);
  _Unwind_Resume(a1);
}

void sub_A4AB00(_Unwind_Exception *a1)
{
  v7 = *v5;
  if (*v5)
  {
    *(v3 + 88) = v7;
    operator delete(v7);
  }

  sub_93A460(v4);
  sub_93A3E8(v2);
  sub_93A4BC(v1);
  _Unwind_Resume(a1);
}

void sub_A4AB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_93C664(&a9);
  sub_93A4BC(v9);
  _Unwind_Resume(a1);
}

void **sub_A4AB5C(void **a1)
{
  v2 = a1[12];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2670768[v4])(&v25, v2 + 5);
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

  v5 = a1[10];
  a1[10] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = a1[7];
    v8 = a1[6];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 3);
        if (v9)
        {
          *(v7 - 2) = v9;
          operator delete(v9);
        }

        v10 = *(v7 - 8);
        if (v10)
        {
          *(v7 - 7) = v10;
          operator delete(v10);
        }

        v11 = *(v7 - 19);
        if (v11)
        {
          *(v7 - 18) = v11;
          operator delete(v11);
        }

        v12 = *(v7 - 22);
        if (v12)
        {
          *(v7 - 21) = v12;
          operator delete(v12);
        }

        v7 -= 248;
      }

      while (v7 != v6);
      v8 = a1[6];
    }

    a1[7] = v6;
    operator delete(v8);
  }

  v13 = a1[3];
  if (v13)
  {
    v14 = a1[4];
    v15 = a1[3];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 11);
        if (v16)
        {
          *(v14 - 10) = v16;
          operator delete(v16);
        }

        v14 -= 160;
      }

      while (v14 != v13);
      v15 = a1[3];
    }

    a1[4] = v13;
    operator delete(v15);
  }

  v17 = *a1;
  if (*a1)
  {
    v18 = a1[1];
    v19 = *a1;
    if (v18 != v17)
    {
      do
      {
        v21 = *(v18 - 4);
        if (v21)
        {
          v22 = *(v18 - 3);
          v20 = *(v18 - 4);
          if (v22 != v21)
          {
            do
            {
              v23 = *(v22 - 32);
              if (v23)
              {
                *(v22 - 24) = v23;
                operator delete(v23);
              }

              v22 -= 112;
            }

            while (v22 != v21);
            v20 = *(v18 - 4);
          }

          *(v18 - 3) = v21;
          operator delete(v20);
        }

        v18 -= 112;
      }

      while (v18 != v17);
      v19 = *a1;
    }

    a1[1] = v17;
    operator delete(v19);
  }

  return a1;
}

void *sub_A4AD48(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_A4ADAC(uint64_t a1)
{
  sub_A325C4(a1 + 1624);
  v2 = *(a1 + 1600);
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

  v4 = *(a1 + 1584);
  *(a1 + 1584) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  if (*(a1 + 1576) == 1)
  {
    sub_A327E4((a1 + 1464));
    sub_A327E4((a1 + 1352));
    if ((*(a1 + 1055) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 1031) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_A327E4((a1 + 1352));
    if ((*(a1 + 1055) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(*(a1 + 1032));
  if ((*(a1 + 1031) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 399) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a1 + 1008));
  if ((*(a1 + 399) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(a1 + 375) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    operator delete(*(a1 + 352));
    v5 = *a1;
    if (!*a1)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_16:
  operator delete(*(a1 + 376));
  if (*(a1 + 375) < 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v5 = *a1;
  if (*a1)
  {
LABEL_11:
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

double sub_A4AEA0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF27A0(v11, a2, a3, a4);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4AF34(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF2EF0(v11, a2, a3, a4);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4AFC8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 27) == 1)
  {
    v12[7] = v4;
    v12[8] = v5;
    sub_7E974(a1 + 4784);
    sub_501CE8(v12, a1 + 40);
    sub_BF37B8(v12, v10, a2, a3, a4);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4B05C(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF3B90(v11, a2, a3, a4);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4B0F0(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF4124(v11, a2, a3, a4);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4B184(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF44D4(v11, a2, a3, a4);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

void sub_A4B308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4B324(uint64_t a1)
{
  if (*(a1 + 2) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }

  return 0;
}

void sub_A4B45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4B56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4B588(uint64_t result)
{
  if (*(result + 5) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4B680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4B69C(uint64_t result)
{
  if (*(result + 6) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4B794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A4B7B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 7) == 1)
  {
    v10[5] = v3;
    v10[6] = v4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v10, a1 + 40);
    sub_BC9028(v10, a2, a3, v8);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4376);
    *(a1 + 4376) = result;
  }

  return result;
}

uint64_t sub_A4B834(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4B93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4B958(uint64_t result)
{
  if (*(result + 9) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4BA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4BA7C(uint64_t result)
{
  if (*(result + 10) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4BB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4BBA0(uint64_t result)
{
  if (*(result + 11) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4BCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4BCC4(uint64_t result)
{
  if (*(result + 12) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4BDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4BDDC(uint64_t result)
{
  if (*(result + 13) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4BEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4BEF8(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4BFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4C004(uint64_t result)
{
  if (*(result + 17) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4C100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4C130(uint64_t result)
{
  if (*(result + 14) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4C230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A4C24C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 18) == 1)
  {
    v8 = v2;
    v9 = v3;
    sub_7E974(a1 + 4784);
    nullsub_1(&v7);
    sub_C1A4A8(&v7, a2);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4384);
    *(a1 + 4384) = result;
  }

  return result;
}

uint64_t sub_A4C2C4(uint64_t result)
{
  if (*(result + 15) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4C3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4C3CC(uint64_t result)
{
  if (*(result + 19) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4C4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4C4E4(uint64_t result)
{
  if (*(result + 20) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4C5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4C604(uint64_t result)
{
  if (*(result + 21) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4C704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4C720(uint64_t result)
{
  if (*(result + 22) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4C848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_A4D340(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A4C874(uint64_t result)
{
  if (*(result + 23) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4C960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4C97C(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4CA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A4CA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 25) == 1)
  {
    v9[5] = v3;
    v9[6] = v4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v9, a1 + 40);
    sub_BC7F54(v9, a2, a3);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4432);
    *(a1 + 4432) = result;
  }

  return result;
}

double sub_A4CB08(uint64_t a1, uint64_t a2)
{
  sub_7E974(a1 + 4784);
  sub_BD9EC0(&v5, a2);
  result = sub_7EA60(a1 + 4784) + *(a1 + 4440);
  *(a1 + 4440) = result;
  return result;
}

uint64_t sub_A4CB68(uint64_t result)
{
  if (*(result + 26) == 1)
  {
    operator new();
  }

  return result;
}

uint64_t sub_A4CEA4(uint64_t result)
{
  if (*(result + 28) == 1)
  {
    sub_7E974(result + 4784);
    operator new();
  }

  return result;
}

void sub_A4D120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_A31E68(&a22);
  sub_A31E68(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_A4D164(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3) == 1)
  {
    v7[6] = v2;
    v7[7] = v3;
    sub_7E974(a1 + 4784);
    sub_BA538C(v7, *(a1 + 32), a1 + 40);
    sub_BA54BC(v7, a2);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4480);
    *(a1 + 4480) = result;
  }

  return result;
}

double sub_A4D1E4(uint64_t a1, int *a2, uint64_t a3)
{
  if (*(a1 + 29) == 1)
  {
    v9[5] = v3;
    v9[6] = v4;
    sub_7E974(a1 + 4784);
    sub_C17B84(v9, *(a1 + 32));
    sub_C17BB4(v9, a2, a3);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4384);
    *(a1 + 4384) = result;
  }

  return result;
}

uint64_t sub_A4D268(uint64_t result, uint64_t *a2)
{
  if (*(result + 30) == 1)
  {
    sub_7E974(result + 4784);
    sub_BDE76C(a2);
  }

  return result;
}

void sub_A4D2CC(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_7E9A4(v10);
  sub_A50170((a1 + 40), a2, a3, a4, a5);
  *(a1 + 4504) = sub_7EA60(v10);
}

uint64_t sub_A4D340(uint64_t a1)
{
  v2 = *(a1 + 128);
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

  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A4D38C(uint64_t a1)
{
  v2 = *(a1 + 56);
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

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_A4D3D8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X6>, uint64_t a6@<X8>)
{
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  sub_5F328(a6 + 96);
  *(a6 + 20) = *(a3 + 12);
  if (*(a4 + 192) != *(a4 + 200))
  {
    operator new();
  }

  v24 = *(a6 + 48);
  if (v24)
  {
    *(a6 + 56) = v24;
    operator delete(v24);
  }

  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  v9 = a2;
  v10 = *(a4 + 8);
  for (i = *(a4 + 16); v10 != i; v10 += 296)
  {
    v41[0] = 0;
    sub_A4D898(&v28, a1, v9, v10, v41, a5);
    if (v40 == 1)
    {
      v12 = *(a6 + 32);
      if (v12 >= *(a6 + 40))
      {
        v13 = sub_A5AE5C((a6 + 24), &v28);
      }

      else
      {
        sub_A31084(*(a6 + 32), &v28);
        v13 = v12 + 232;
      }

      *(a6 + 32) = v13;
      if (v40)
      {
        v14 = __p;
        if (__p)
        {
          v15 = v39;
          v16 = __p;
          if (v39 != __p)
          {
            do
            {
              v17 = *(v15 - 3);
              if (v17)
              {
                v18 = *(v15 - 2);
                v19 = *(v15 - 3);
                if (v18 != v17)
                {
                  do
                  {
                    v20 = v18 - 32;
                    v21 = *(v18 - 2);
                    if (v21 != -1)
                    {
                      (off_26708A8[v21])(v41, v18 - 32);
                    }

                    *(v18 - 2) = -1;
                    v18 -= 32;
                  }

                  while (v20 != v17);
                  v19 = *(v15 - 3);
                }

                *(v15 - 2) = v17;
                operator delete(v19);
              }

              v22 = *(v15 - 8);
              if (v22 != -1)
              {
                (off_26708A8[v22])(v41, v15 - 7);
              }

              v23 = v15 - 10;
              *(v15 - 8) = -1;
              if (*(v15 - 57) < 0)
              {
                operator delete(*v23);
              }

              v15 -= 10;
            }

            while (v23 != v14);
            v16 = __p;
          }

          v39 = v14;
          operator delete(v16);
          v9 = a2;
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        if (v34)
        {
          v35 = v34;
          operator delete(v34);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        v41[0] = &v29;
        sub_A30A34(v41);
      }
    }
  }

  if (a6 + 72 != a4 + 216)
  {
    sub_31F64((a6 + 72), *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 3);
  }

  sub_A5D870();
}

void sub_A4D898(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, void *a6)
{
  if (*(a4 + 200) == *(a4 + 208))
  {
    *a1 = 0;
    a1[232] = 0;
    return;
  }

  v8 = a4;
  v249 = 0x8000000080000000;
  v250 = 0;
  v251 = 0x8000000080000000;
  v252 = 0;
  v253 = 0u;
  *__src = 0u;
  v255 = 0u;
  *v256 = 0u;
  *v257 = 0u;
  v258 = 0u;
  v259 = 0;
  v260 = -1;
  v261 = 0;
  v263 = 0;
  v262 = 0;
  v265 = 0;
  v264 = 0;
  v267 = 0;
  v266 = 0;
  v268 = 0x3FF0000000000000;
  v269[0] = 0;
  v270 = 0;
  v269[1] = 0;
  v244 = 0;
  v245 = sub_A51E58(a4, 1);
  v246 = v10;
  v247 = sub_A520DC(v8);
  v248 = v11;
  v12 = *a5;
  if (*a5)
  {
    v13 = *(v12 + 24);
    v250 = *(v12 + 32);
    v249 = v13;
    v14 = (v12 + 36);
  }

  else
  {
    v14 = &v247;
    v249 = v245;
    v250 = v246;
  }

  v15 = *v14;
  v252 = *(v14 + 4);
  v251 = v15;
  v16 = v8[25];
  v17 = *v16;
  if (*(*v16 + 160) != 1)
  {
    sub_5AF20();
  }

  v210 = v8;
  v214 = a2;
  if (*(v17 + 8) != *(v17 + 4) || (v18 = v8[26], v18 - v16 == 72))
  {
    sub_A521F8(&v226, a2, a3, v17, a6);
    if ((v229 & 1) == 0)
    {
      *a1 = 0;
      a1[232] = 0;
      goto LABEL_316;
    }

    memset(v242, 0, sizeof(v242));
    *v241 = 0u;
    v243[0] = 1;
    *&v243[4] = 0x8000000080000000;
    *&v243[12] = 0;
    v239 = 0;
    __p = 0u;
    memset(v237, 0, sizeof(v237));
    v236 = 0u;
    memset(v235, 0, sizeof(v235));
    *v234 = 0u;
    v240[0] = 1;
    *&v240[4] = 0x8000000080000000;
    v240[12] = 0;
    LODWORD(v233) = 0;
    sub_A55288(v234, 0, v226, v227, 0x193D4BB7E327A977 * ((v227 - v226) >> 4));
    v19 = v241[1];
    if (v241[1] >= v242[0])
    {
      v21 = sub_A55ECC(v241, &v233);
    }

    else
    {
      *v241[1] = v233;
      v19[3] = 0;
      v19[4] = 0;
      v19[1] = 0;
      v19[2] = 0;
      *(v19 + 1) = *v234;
      v19[3] = v235[0];
      *v234 = 0uLL;
      v235[0] = 0;
      v19[5] = 0;
      v19[6] = 0;
      *(v19 + 2) = *&v235[1];
      v235[1] = 0;
      v235[2] = 0;
      v19[6] = v235[3];
      v19[7] = 0;
      v19[8] = 0;
      v19[9] = 0;
      *(v19 + 7) = v236;
      v19[9] = v237[0];
      v19[10] = 0;
      v235[3] = 0;
      v236 = 0uLL;
      v237[0] = 0;
      v19[11] = 0;
      v19[12] = 0;
      *(v19 + 5) = *&v237[1];
      v237[1] = 0;
      v237[2] = 0;
      v19[12] = v237[3];
      v19[13] = 0;
      v19[14] = 0;
      v19[15] = 0;
      *(v19 + 13) = __p;
      v19[15] = v239;
      v237[3] = 0;
      __p = 0uLL;
      v239 = 0;
      v20 = *v240;
      *(v19 + 133) = *&v240[5];
      v19[16] = v20;
      v21 = v19 + 18;
    }

    v241[1] = v21;
    v22 = *(&v253 + 1);
    if (*(&v253 + 1) >= __src[0])
    {
      v24 = sub_A5624C(&v253, v241);
    }

    else
    {
      *(*(&v253 + 1) + 16) = 0;
      *(v22 + 24) = 0;
      *v22 = 0;
      *(v22 + 8) = 0;
      *v22 = *v241;
      *(v22 + 16) = v242[0];
      v241[0] = 0;
      v241[1] = 0;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0;
      *(v22 + 24) = *&v242[1];
      *(v22 + 40) = v242[3];
      memset(v242, 0, sizeof(v242));
      v23 = *v243;
      *(v22 + 54) = *&v243[6];
      *(v22 + 48) = v23;
      v24 = v22 + 64;
    }

    *(&v253 + 1) = v24;
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v237[1])
    {
      v237[2] = v237[1];
      operator delete(v237[1]);
    }

    if (v236)
    {
      *(&v236 + 1) = v236;
      operator delete(v236);
    }

    if (v235[1])
    {
      v235[2] = v235[1];
      operator delete(v235[1]);
    }

    v25 = v234[0];
    if (v234[0])
    {
      v26 = v234[1];
      v27 = v234[0];
      if (v234[1] != v234[0])
      {
        do
        {
          v28 = v26 - 1136;
          v29 = *(v26 - 2);
          if (v29 != -1)
          {
            (off_26707C0[v29])(v222, v26 - 1136);
          }

          *(v26 - 2) = -1;
          v26 -= 1136;
        }

        while (v28 != v25);
        v27 = v234[0];
      }

      v234[1] = v25;
      operator delete(v27);
    }

    if (v242[1])
    {
      v242[2] = v242[1];
      operator delete(v242[1]);
    }

    v30 = v241[0];
    if (v241[0])
    {
      v31 = v241[1];
      v32 = v241[0];
      if (v241[1] != v241[0])
      {
        do
        {
          v31 = sub_9FFEB4(v31 - 18);
        }

        while (v31 != v30);
        v32 = v241[0];
      }

      v241[1] = v30;
      operator delete(v32);
    }

    if (v229)
    {
      v33 = v226;
      if (v226)
      {
        v34 = v227;
        v35 = v226;
        if (v227 != v226)
        {
          do
          {
            v36 = v34 - 1136;
            v37 = *(v34 - 2);
            if (v37 != -1)
            {
              (off_26707C0[v37])(&v233, v34 - 1136);
            }

            *(v34 - 2) = -1;
            v34 -= 1136;
          }

          while (v36 != v33);
          v35 = v226;
        }

        v227 = v33;
        operator delete(v35);
      }
    }

    v16 = v8[25];
    v18 = v8[26];
  }

  v38 = v16 + 9;
  v209 = a1;
  if (v18 == v16 + 9)
  {
    goto LABEL_248;
  }

  while (2)
  {
    if (*(v38 + 24) == 1)
    {
      goto LABEL_52;
    }

    memset(v242, 0, sizeof(v242));
    *v241 = 0u;
    *&v243[4] = 0x8000000080000000;
    *&v243[12] = 0;
    v243[0] = *(v38 + 56);
    *&v243[4] = *(v38 + 60);
    v243[12] = *(v38 + 68);
    v243[13] = *(v38 + 70);
    v40 = v38[4];
    v39 = v38[5];
    v212 = v38;
    if (v40 != v39)
    {
      v41 = 0;
      v217 = v39;
      do
      {
        while (1)
        {
          v42 = *v40;
          v43 = *(v40 + 4);
          v45 = *(v40 + 8);
          v44 = *(v40 + 12);
          v46 = *(v40 + 16);
          v47 = *(v40 + 24);
          v48 = *(v40 + 32);
          if (v41 >= v242[3])
          {
            break;
          }

          *v41 = v42;
          v41[1] = v43;
          v41[2] = v45;
          v41[3] = v44;
          v41[4] = v46;
          *(v41 + 3) = v47;
          *(v41 + 32) = v48;
          *(v41 + 33) = v233;
          v41[9] = *(&v233 + 3);
          v41 += 10;
          v242[2] = v41;
          v40 += 40;
          if (v40 == v39)
          {
            goto LABEL_70;
          }
        }

        v49 = v242[1];
        v50 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - v242[1]) >> 3);
        v51 = v50 + 1;
        if (v50 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        if (0x999999999999999ALL * ((v242[3] - v242[1]) >> 3) > v51)
        {
          v51 = 0x999999999999999ALL * ((v242[3] - v242[1]) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v242[3] - v242[1]) >> 3) >= 0x333333333333333)
        {
          v52 = 0x666666666666666;
        }

        else
        {
          v52 = v51;
        }

        if (v52)
        {
          if (v52 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v53 = v41;
        v54 = 8 * ((v41 - v242[1]) >> 3);
        *v54 = v42;
        *(v54 + 4) = v43;
        *(v54 + 8) = v45;
        *(v54 + 12) = v44;
        *(v54 + 16) = v46;
        *(v54 + 24) = v47;
        *(v54 + 32) = v48;
        v41 = (40 * v50 + 40);
        v55 = (40 * v50 - (v53 - v49));
        memcpy((v54 - (v53 - v49)), v49, v53 - v49);
        v242[1] = v55;
        *&v242[2] = v41;
        if (v49)
        {
          operator delete(v49);
        }

        v39 = v217;
        v242[2] = v41;
        v40 += 40;
      }

      while (v40 != v217);
    }

LABEL_70:
    v56 = *v212;
    v57 = v214;
    if (*v212 == v212[1])
    {
LABEL_208:
      v140 = *(&v253 + 1);
      if (*(&v253 + 1) >= __src[0])
      {
        v38 = v212;
        v8 = v210;
        *(&v253 + 1) = sub_A5B49C(&v253, v241);
        v141 = 1;
        v142 = v242[1];
        if (!v242[1])
        {
          goto LABEL_213;
        }
      }

      else
      {
        sub_A314BC(*(&v253 + 1), v241);
        v38 = v212;
        v8 = v210;
        *(&v253 + 1) = v140 + 64;
        v141 = 1;
        v142 = v242[1];
        if (!v242[1])
        {
          goto LABEL_213;
        }
      }

      goto LABEL_212;
    }

    v211 = v212 + 9;
    while (2)
    {
      if (*(v56 + 160))
      {
        sub_5AF20();
      }

      v239 = 0;
      __p = 0u;
      memset(v237, 0, sizeof(v237));
      v236 = 0u;
      memset(v235, 0, sizeof(v235));
      *v234 = 0u;
      v240[0] = 1;
      *&v240[4] = 0x8000000080000000;
      v240[12] = 0;
      LODWORD(v233) = v56 != *v212;
      v226 = 0;
      v227 = 0;
      v228 = 0;
      v215 = v56;
      sub_A81424(v57, v56, v222);
      v60 = v222[0];
      v59 = v222[1];
      v213 = v222[1];
      if (v222[0] == v222[1])
      {
        if (!v222[0])
        {
          goto LABEL_79;
        }

LABEL_78:
        v222[1] = v60;
        operator delete(v60);
        goto LABEL_79;
      }

      do
      {
        while (1)
        {
          v64 = v244++;
          v216 = *v60;
          v65 = v60[3];
          v218 = v60[2];
          v66 = v215[11];
          v221 = v60[4];
          if (v66 != -1)
          {
            break;
          }

          v75 = v60[3];
          v67 = sub_A56700(v57 + 523, v60, v65, 0x7FFFFFFF);
          v77 = v76;
          v70 = sub_A56A5C(v57 + 523, v60, v60[4], 0x7FFFFFFF);
          LOWORD(v69) = HIBYTE(v77);
          v68 = v77;
          v71 = v78;
          LOWORD(v72) = v79;
          v65 = v75;
          v74 = v227;
          v73 = v228;
          if (v227 >= v228)
          {
            goto LABEL_87;
          }

LABEL_82:
          *v74 = v64;
          *(v74 + 1) = v216;
          v74[3] = v218;
          v74[4] = v65;
          v74[5] = v221;
          *(v74 + 3) = v67;
          *(v74 + 16) = v68 | (v69 << 8);
          *(v74 + 9) = v70;
          *(v74 + 22) = v71 | (v72 << 8);
          v74[12] = v66;
          *(v74 + 26) = 0;
          *(v74 + 56) = 0;
          *(v74 + 60) = 0;
          v74[282] = 0;
          v57 = v214;
          v227 = v74 + 284;
          v60 += 5;
          if (v60 == v59)
          {
            goto LABEL_109;
          }
        }

        v67 = *(v215 + 1);
        v68 = *(v215 + 8);
        v69 = HIBYTE(*(v215 + 8));
        v70 = *(v215 + 5);
        v71 = *(v215 + 14);
        v72 = HIBYTE(*(v215 + 14));
        v74 = v227;
        v73 = v228;
        if (v227 < v228)
        {
          goto LABEL_82;
        }

LABEL_87:
        v80 = v226;
        v81 = v74 - v226;
        v82 = 0x193D4BB7E327A977 * ((v74 - v226) >> 4) + 1;
        if (v82 > 0x39B0AD12073615)
        {
          sub_1794();
        }

        v83 = 0x193D4BB7E327A977 * ((v73 - v226) >> 4);
        if (2 * v83 > v82)
        {
          v82 = 2 * v83;
        }

        if (v83 >= 0x1CD85689039B0ALL)
        {
          v84 = 0x39B0AD12073615;
        }

        else
        {
          v84 = v82;
        }

        if (v84)
        {
          if (v84 <= 0x39B0AD12073615)
          {
            operator new();
          }

          sub_1808();
        }

        v85 = 16 * ((v74 - v226) >> 4);
        *v85 = v64;
        *(v85 + 4) = v216;
        *(v85 + 12) = v218;
        *(v85 + 16) = v65;
        *(v85 + 20) = v221;
        *(v85 + 24) = v67;
        *(v85 + 32) = v68 | (v69 << 8);
        *(v85 + 36) = v70;
        *(v85 + 44) = v71 | (v72 << 8);
        *(v85 + 48) = v66;
        *(v85 + 52) = 0;
        *(v85 + 56) = 0;
        *(v85 + 60) = 0;
        v86 = (v85 - v81);
        *(v85 + 1128) = 0;
        if (v80 != v74)
        {
          v87 = v85 - v81;
          v88 = v80;
          do
          {
            *v87 = 0;
            *(v87 + 1128) = -1;
            v89 = v88[282];
            if (v89 != -1)
            {
              v271[0] = v87;
              (off_26707E8[v89])(v271, v88);
              *(v87 + 1128) = v89;
            }

            v88 += 284;
            v87 += 1136;
          }

          while (v88 != v74);
          do
          {
            v90 = v80[282];
            if (v90 != -1)
            {
              (off_26707C0[v90])(v271, v80);
            }

            v80[282] = -1;
            v80 += 284;
          }

          while (v80 != v74);
          v80 = v226;
        }

        v226 = v86;
        v227 = (v85 + 1136);
        v228 = 0;
        if (v80)
        {
          operator delete(v80);
        }

        v57 = v214;
        v59 = v213;
        v227 = (v85 + 1136);
        v60 += 5;
      }

      while (v60 != v213);
LABEL_109:
      v60 = v222[0];
      if (v222[0])
      {
        goto LABEL_78;
      }

LABEL_79:
      v61 = v226;
      v62 = v227;
      if (v226 == v227)
      {
        LOBYTE(v231[0]) = 0;
        v232 = 0;
        v63 = v209;
        if (v226)
        {
LABEL_112:
          if (v62 == v61)
          {
            v227 = v61;
            operator delete(v61);
            if (v232)
            {
              goto LABEL_119;
            }
          }

          else
          {
            do
            {
              v91 = v62 - 1136;
              v92 = *(v62 - 2);
              if (v92 != -1)
              {
                (off_26707C0[v92])(v222, v62 - 1136);
              }

              *(v62 - 2) = -1;
              v62 -= 1136;
            }

            while (v91 != v61);
            v227 = v61;
            operator delete(v226);
            if (v232)
            {
              goto LABEL_119;
            }
          }
        }

        *v63 = 0;
        v63[232] = 0;
        v8 = v210;
        v38 = v212;
        goto LABEL_221;
      }

      sub_93BED8(v231, &v226);
      v63 = v209;
      v232 = 1;
      v61 = v226;
      if (v226)
      {
        v62 = v227;
        goto LABEL_112;
      }

LABEL_119:
      v93 = v231[1];
      v94 = v231[0];
      if (v231[0] != v231[1])
      {
        v95 = *(v215 + 156);
        v96 = *(v215 + 159);
        v97 = v231[0];
        do
        {
          if (v97[282])
          {
            sub_5AF20();
          }

          *(v97 + 52) = v95;
          *(v97 + 53) = v96;
          v97 += 284;
        }

        while (v97 != v93);
      }

      sub_A55288(v234, v234[1], v94, v93, 0x193D4BB7E327A977 * ((v93 - v94) >> 4));
      if (v210[26] <= v211)
      {
LABEL_157:
        sub_A52CD0(&v226, v57, v215, 0);
        sub_9FFF9C(&v236, v226, v227, 0x6DB6DB6DB6DB6DB7 * ((v227 - v226) >> 2));
        sub_9FFF9C(&v235[1], v229, v230, 0x6DB6DB6DB6DB6DB7 * ((v230 - v229) >> 2));
        sub_A52CD0(v222, v57, v215, 1);
        if (v237[1])
        {
          v237[2] = v237[1];
          operator delete(v237[1]);
        }

        *&v237[1] = *v222;
        v237[3] = v223;
        v222[1] = 0;
        v223 = 0;
        v222[0] = 0;
        if (v224)
        {
          v225 = v224;
          operator delete(v224);
          if (v222[0])
          {
            v222[1] = v222[0];
            operator delete(v222[0]);
          }
        }

        v113 = *(v215 + 15);
        v112 = *(v215 + 16);
        if (v113 != v112)
        {
          v114 = *(&__p + 1);
          v219 = *(v215 + 16);
          do
          {
            while (1)
            {
              v115 = *v113;
              v116 = v113[1];
              v118 = v113[2];
              v117 = v113[3];
              v119 = v113[4];
              v120 = *(v113 + 3);
              v121 = *(v113 + 32);
              if (v114 >= v239)
              {
                break;
              }

              *v114 = v115;
              *(v114 + 4) = v116;
              *(v114 + 8) = v118;
              *(v114 + 12) = v117;
              *(v114 + 16) = v119;
              *(v114 + 24) = v120;
              *(v114 + 32) = v121;
              *(v114 + 33) = v222[0];
              *(v114 + 36) = *(v222 + 3);
              v114 += 40;
              *(&__p + 1) = v114;
              v113 += 10;
              if (v113 == v112)
              {
                goto LABEL_178;
              }
            }

            v122 = __p;
            v123 = 0xCCCCCCCCCCCCCCCDLL * ((v114 - __p) >> 3);
            v124 = v123 + 1;
            if (v123 + 1 > 0x666666666666666)
            {
              sub_1794();
            }

            if (0x999999999999999ALL * ((v239 - __p) >> 3) > v124)
            {
              v124 = 0x999999999999999ALL * ((v239 - __p) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v239 - __p) >> 3) >= 0x333333333333333)
            {
              v125 = 0x666666666666666;
            }

            else
            {
              v125 = v124;
            }

            if (v125)
            {
              if (v125 <= 0x666666666666666)
              {
                operator new();
              }

              sub_1808();
            }

            v126 = v114;
            v127 = 8 * ((v114 - __p) >> 3);
            *v127 = v115;
            *(v127 + 4) = v116;
            *(v127 + 8) = v118;
            *(v127 + 12) = v117;
            *(v127 + 16) = v119;
            *(v127 + 24) = v120;
            *(v127 + 32) = v121;
            v114 = 40 * v123 + 40;
            v128 = 40 * v123 - (v126 - v122);
            memcpy((v127 - (v126 - v122)), v122, v126 - v122);
            *&__p = v128;
            *(&__p + 1) = v114;
            v239 = 0;
            if (v122)
            {
              operator delete(v122);
            }

            v112 = v219;
            *(&__p + 1) = v114;
            v113 += 10;
          }

          while (v113 != v219);
        }

LABEL_178:
        v240[0] = *(v215 + 144);
        *&v240[4] = *(v215 + 37);
        v240[12] = *(v215 + 157);
        v129 = v241[1];
        if (v241[1] >= v242[0])
        {
          v130 = sub_A5B338(v241, &v233);
          v57 = v214;
        }

        else
        {
          sub_A316EC(v241[1], &v233);
          v57 = v214;
          v130 = v129 + 144;
        }

        v241[1] = v130;
        if (v229)
        {
          v230 = v229;
          operator delete(v229);
        }

        if (v226)
        {
          v227 = v226;
          operator delete(v226);
        }

        if (v232 == 1)
        {
          v131 = v231[0];
          if (v231[0])
          {
            v132 = v231[1];
            v133 = v231[0];
            if (v231[1] != v231[0])
            {
              do
              {
                v134 = v132 - 1136;
                v135 = *(v132 - 2);
                if (v135 != -1)
                {
                  (off_26707C0[v135])(&v226, v132 - 1136);
                }

                *(v132 - 2) = -1;
                v132 -= 1136;
              }

              while (v134 != v131);
              v133 = v231[0];
            }

            v231[1] = v131;
            operator delete(v133);
          }
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (v237[1])
        {
          v237[2] = v237[1];
          operator delete(v237[1]);
        }

        if (v236)
        {
          *(&v236 + 1) = v236;
          operator delete(v236);
        }

        if (v235[1])
        {
          v235[2] = v235[1];
          operator delete(v235[1]);
        }

        v136 = v234[0];
        if (v234[0])
        {
          v137 = v234[1];
          v58 = v234[0];
          if (v234[1] != v234[0])
          {
            do
            {
              v138 = v137 - 1136;
              v139 = *(v137 - 2);
              if (v139 != -1)
              {
                (off_26707C0[v139])(&v226, v137 - 1136);
              }

              *(v137 - 2) = -1;
              v137 -= 1136;
            }

            while (v138 != v136);
            v58 = v234[0];
          }

          v234[1] = v136;
          operator delete(v58);
        }

        v56 = (v215 + 42);
        if (v215 + 42 == v212[1])
        {
          goto LABEL_208;
        }

        continue;
      }

      break;
    }

    v98 = *v211 + 168 * *v215;
    if (*(v98 + 160) != 1)
    {
      sub_5AF20();
    }

    v99 = *(v98 + 20);
    v100 = HIDWORD(v99);
    if (*(v98 + 16) == HIDWORD(v99))
    {
      v101 = *(v98 + 12) == v99;
      v104 = v100 == 1 && v99 == -3 && *(v98 + 8) <= *(v98 + 4);
      if (v101)
      {
        goto LABEL_157;
      }
    }

    else
    {
      v104 = v100 == 1 && v99 == -3 && *(v98 + 8) <= *(v98 + 4);
    }

    if (v104)
    {
      goto LABEL_157;
    }

    sub_A521F8(&v226, v57, a3, v98, a6);
    if (v229)
    {
      sub_A55288(v234, v234[1], v226, v227, 0x193D4BB7E327A977 * ((v227 - v226) >> 4));
      if (v229)
      {
        v107 = v226;
        if (v226)
        {
          v108 = v227;
          if (v227 == v226)
          {
            v109 = v226;
          }

          else
          {
            do
            {
              v110 = v108 - 1136;
              v111 = *(v108 - 2);
              if (v111 != -1)
              {
                (off_26707C0[v111])(v222, v108 - 1136);
              }

              *(v108 - 2) = -1;
              v108 -= 1136;
            }

            while (v110 != v107);
            v109 = v226;
            v227 = v107;
          }

          operator delete(v109);
        }
      }

      goto LABEL_157;
    }

    *v63 = 0;
    v63[232] = 0;
    v8 = v210;
    v38 = v212;
    if (v232)
    {
      v151 = v231[0];
      if (v231[0])
      {
        v152 = v231[1];
        v153 = v231[0];
        if (v231[1] != v231[0])
        {
          do
          {
            v154 = v152 - 1136;
            v155 = *(v152 - 2);
            if (v155 != -1)
            {
              (off_26707C0[v155])(&v226, v152 - 1136);
            }

            *(v152 - 2) = -1;
            v152 -= 1136;
          }

          while (v154 != v151);
          v153 = v231[0];
        }

        v231[1] = v151;
        operator delete(v153);
      }
    }

LABEL_221:
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v237[1])
    {
      v237[2] = v237[1];
      operator delete(v237[1]);
    }

    if (v236)
    {
      *(&v236 + 1) = v236;
      operator delete(v236);
    }

    if (v235[1])
    {
      v235[2] = v235[1];
      operator delete(v235[1]);
    }

    v146 = v234[0];
    if (v234[0])
    {
      v147 = v234[1];
      v148 = v234[0];
      if (v234[1] != v234[0])
      {
        do
        {
          v149 = v147 - 1136;
          v150 = *(v147 - 2);
          if (v150 != -1)
          {
            (off_26707C0[v150])(&v226, v147 - 1136);
          }

          *(v147 - 2) = -1;
          v147 -= 1136;
        }

        while (v149 != v146);
        v148 = v234[0];
      }

      v234[1] = v146;
      operator delete(v148);
    }

    v141 = 0;
    v142 = v242[1];
    if (v242[1])
    {
LABEL_212:
      v242[2] = v142;
      operator delete(v142);
    }

LABEL_213:
    v143 = v241[0];
    if (v241[0])
    {
      v144 = v241[1];
      v145 = v241[0];
      if (v241[1] != v241[0])
      {
        do
        {
          v144 = sub_9FFEB4(v144 - 18);
        }

        while (v144 != v143);
        v145 = v241[0];
      }

      v241[1] = v143;
      operator delete(v145);
    }

    if (v141)
    {
      v18 = v8[26];
LABEL_52:
      v38 += 9;
      if (v38 != v18)
      {
        continue;
      }

LABEL_248:
      v156 = v8[28];
      v157 = v8[29];
      if (v156 == v157)
      {
LABEL_283:
        v178 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v256[1] - v256[0]) >> 2));
        if (v256[1] == v256[0])
        {
          v179 = 0;
        }

        else
        {
          v179 = v178;
        }

        sub_A5811C(v256[0], v256[1], v179, 1);
        v180 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v255 - __src[1]) >> 2));
        if (v255 == __src[1])
        {
          v181 = 0;
        }

        else
        {
          v181 = v180;
        }

        sub_A597BC(__src[1], v255, v181, 1);
        v182 = v8;
        v183 = v8[31];
        v184 = v182[32];
        if (v183 != v184)
        {
          v185 = v258;
          v220 = v182[32];
          do
          {
            while (1)
            {
              v186 = *v183;
              v187 = v183[1];
              v189 = v183[2];
              v188 = v183[3];
              v190 = v183[4];
              v191 = *(v183 + 3);
              v192 = *(v183 + 32);
              if (v185 >= *(&v258 + 1))
              {
                break;
              }

              *v185 = v186;
              *(v185 + 4) = v187;
              *(v185 + 8) = v189;
              *(v185 + 12) = v188;
              *(v185 + 16) = v190;
              *(v185 + 24) = v191;
              *(v185 + 32) = v192;
              *(v185 + 33) = v233;
              *(v185 + 36) = *(&v233 + 3);
              v185 += 40;
              *&v258 = v185;
              v183 += 10;
              if (v183 == v184)
              {
                goto LABEL_305;
              }
            }

            v193 = v257[1];
            v194 = 0xCCCCCCCCCCCCCCCDLL * ((v185 - v257[1]) >> 3);
            v195 = v194 + 1;
            if (v194 + 1 > 0x666666666666666)
            {
              sub_1794();
            }

            if (0x999999999999999ALL * ((*(&v258 + 1) - v257[1]) >> 3) > v195)
            {
              v195 = 0x999999999999999ALL * ((*(&v258 + 1) - v257[1]) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*(&v258 + 1) - v257[1]) >> 3) >= 0x333333333333333)
            {
              v196 = 0x666666666666666;
            }

            else
            {
              v196 = v195;
            }

            if (v196)
            {
              if (v196 <= 0x666666666666666)
              {
                operator new();
              }

              sub_1808();
            }

            v197 = v185;
            v198 = 8 * ((v185 - v257[1]) >> 3);
            *v198 = v186;
            *(v198 + 4) = v187;
            *(v198 + 8) = v189;
            *(v198 + 12) = v188;
            *(v198 + 16) = v190;
            *(v198 + 24) = v191;
            *(v198 + 32) = v192;
            v185 = 40 * v194 + 40;
            v199 = (40 * v194 - (v197 - v193));
            memcpy((v198 - (v197 - v193)), v193, v197 - v193);
            v257[1] = v199;
            v258 = v185;
            if (v193)
            {
              operator delete(v193);
            }

            v184 = v220;
            *&v258 = v185;
            v183 += 10;
          }

          while (v183 != v220);
        }

LABEL_305:
        if (*(v210 + 4) != -1)
        {
          v260 = *(v210 + 4);
        }

        v259 = *(v210 + 13);
        v262 = *(v210 + 4);
        v261 = *(v210 + 14);
        v263 = *(v210 + 2);
        v200 = v210[34];
        v201 = v210[35];
        if (v200 != v201)
        {
          operator new();
        }

        if (v264)
        {
          v265 = v264;
          operator delete(v264);
        }

        v264 = 0;
        v265 = 0;
        v266 = 0;
        if (*(v210 + 26) == 0x7FFFFFFF)
        {
          v202 = 0;
        }

        else
        {
          v203 = *(v210 + 135);
          if ((v203 & 0x80u) != 0)
          {
            v203 = v210[15];
          }

          v202 = v203 != 0;
        }

        v267 = v202;
        v268 = v210[24];
        sub_A85864(v210, &v233);
      }

      while (1)
      {
        if (*v156 >= sub_A51E58(v8, 1))
        {
          if (*v156 > sub_A51E58(v8, 1))
          {
            v165 = v256[1];
            if (v256[1] >= v257[0])
            {
              v168 = v256[0];
              v169 = 0xAAAAAAAAAAAAAAABLL * ((v256[1] - v256[0]) >> 2);
              v170 = v169 + 1;
              if (v169 + 1 > 0x1555555555555555)
              {
LABEL_342:
                sub_1794();
              }

              if (0x5555555555555556 * ((v257[0] - v256[0]) >> 2) > v170)
              {
                v170 = 0x5555555555555556 * ((v257[0] - v256[0]) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v257[0] - v256[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v171 = 0x1555555555555555;
              }

              else
              {
                v171 = v170;
              }

              if (v171)
              {
                if (v171 <= 0x1555555555555555)
                {
                  operator new();
                }

LABEL_344:
                sub_1808();
              }

              v175 = 4 * ((v256[1] - v256[0]) >> 2);
              v176 = *v156;
              *(v175 + 8) = *(v156 + 2);
              *v175 = v176;
              v167 = (12 * v169 + 12);
              v177 = (12 * v169 - (v165 - v168));
              memcpy((v175 - (v165 - v168)), v168, v165 - v168);
              v256[0] = v177;
              v256[1] = v167;
              v257[0] = 0;
              if (v168)
              {
                operator delete(v168);
              }

              v8 = v210;
            }

            else
            {
              v166 = *v156;
              *(v256[1] + 2) = *(v156 + 2);
              *v165 = v166;
              v167 = v165 + 12;
            }

            v256[1] = v167;
          }
        }

        else
        {
          v160 = v255;
          if (v255 < *(&v255 + 1))
          {
            v158 = *v156;
            *(v255 + 8) = *(v156 + 2);
            *v160 = v158;
            v159 = (v160 + 12);
          }

          else
          {
            v161 = __src[1];
            v162 = 0xAAAAAAAAAAAAAAABLL * ((v255 - __src[1]) >> 2);
            v163 = v162 + 1;
            if (v162 + 1 > 0x1555555555555555)
            {
              goto LABEL_342;
            }

            if (0x5555555555555556 * ((*(&v255 + 1) - __src[1]) >> 2) > v163)
            {
              v163 = 0x5555555555555556 * ((*(&v255 + 1) - __src[1]) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(&v255 + 1) - __src[1]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v164 = 0x1555555555555555;
            }

            else
            {
              v164 = v163;
            }

            if (v164)
            {
              if (v164 <= 0x1555555555555555)
              {
                operator new();
              }

              goto LABEL_344;
            }

            v172 = 4 * ((v255 - __src[1]) >> 2);
            v173 = *v156;
            *(v172 + 8) = *(v156 + 2);
            *v172 = v173;
            v159 = 12 * v162 + 12;
            v174 = (12 * v162 - (v160 - v161));
            memcpy((v172 - (v160 - v161)), v161, v160 - v161);
            __src[1] = v174;
            v255 = v159;
            if (v161)
            {
              operator delete(v161);
            }

            v8 = v210;
          }

          *&v255 = v159;
        }

        v156 += 2;
        if (v156 == v157)
        {
          goto LABEL_283;
        }
      }
    }

    break;
  }

LABEL_316:
  v204 = v269[0];
  if (v269[0])
  {
    v205 = v269[1];
    v206 = v269[0];
    if (v269[1] != v269[0])
    {
      do
      {
        v205 -= 80;
        sub_3ED230(v205);
      }

      while (v205 != v204);
      v206 = v269[0];
    }

    v269[1] = v204;
    operator delete(v206);
  }

  if (v264)
  {
    v265 = v264;
    operator delete(v264);
  }

  if (v257[1])
  {
    *&v258 = v257[1];
    operator delete(v257[1]);
  }

  if (v256[0])
  {
    v256[1] = v256[0];
    operator delete(v256[0]);
  }

  if (__src[1])
  {
    *&v255 = __src[1];
    operator delete(__src[1]);
  }

  v233 = &v253;
  sub_A30A34(&v233);
}

void sub_A4F304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_9FFEB4(&a41);
  sub_9FFE48(&a59);
  sub_A52C1C(&a31);
  sub_A30978(&a69);
  _Unwind_Resume(a1);
}

void sub_A4F388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x218] = v69;
  sub_9FFE48(&a59);
  sub_A30978(&a69);
  _Unwind_Resume(a1);
}

void sub_A4F528(uint64_t a1@<X0>, uint64_t **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a3;
  if (*a2 == a2[1])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v37 = sub_2D390(exception, "Cannot generate self-transfer solution from an empty set of stop refs", 0x45uLL);
  }

  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  sub_5F328(a6 + 96);
  v97 = 0x7FFFFFFF;
  v96 = xmmword_22A7440;
  *(&v96 + 4) = **a2;
  HIDWORD(v96) = v98;
  v97 = v98;
  v92 = 0;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v93 = 1;
  v94 = 0x8000000080000000;
  v95 = 0;
  v84 = 0;
  *(&v85 + 1) = sub_A5B144(&v85, &v96);
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  v81 = 1;
  v82 = 0x8000000080000000;
  v83 = 0;
  *(&v78 + 1) = sub_A5B338(&v78, &v84);
  v51 = 0x8000000080000000;
  v52 = 0;
  v53 = 0x8000000080000000;
  v54 = 0;
  v55 = 0x8000000080000000;
  v56 = 0;
  v57 = 0x8000000080000000;
  v58 = 0;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0;
  v66 = -1;
  v67 = 0;
  v69 = 0;
  v68 = 0;
  v70 = 0;
  v71 = 0;
  v73 = 0;
  v72 = 0;
  v74 = 0x3FF0000000000000;
  __p = 0;
  v77 = 0;
  v76 = 0;
  v11 = sub_A5B49C(&v59, &v78);
  v13 = *(a6 + 32);
  v12 = *(a6 + 40);
  *(&v59 + 1) = v11;
  v51 = v98 | (v98 << 32);
  v52 = 0;
  v53 = v51;
  v54 = 0;
  v55 = v51;
  v56 = 0;
  v57 = v51;
  v58 = 0;
  v73 = 0;
  v74 = 0x3FF0000000000000;
  if (v13 >= v12)
  {
    v14 = sub_A5B5C8((a6 + 24), &v51);
  }

  else
  {
    sub_A31084(v13, &v51);
    v14 = v13 + 232;
  }

  *(a6 + 32) = v14;
  *a6 = a4;
  *(a6 + 8) = a5;
  *(a6 + 16) = 0;
  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v40);
    v15 = sub_4A5C(&v40, "Generated self-transfer solution at stop ", 41);
    v16 = sub_2FF718(v15, **a2);
    sub_4A5C(v16, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), **a2);
    v17 = std::ostream::operator<<();
    v18 = sub_4A5C(v17, ") and departure time ", 21);
    v19 = sub_258D4(v18);
    sub_4A5C(v19, " (solution origin index: ", 25);
    v20 = std::ostream::operator<<();
    sub_4A5C(v20, "; destination index: ", 21);
    v21 = std::ostream::operator<<();
    sub_4A5C(v21, ")", 1);
    if ((v50 & 0x10) != 0)
    {
      v23 = v49;
      if (v49 < v46)
      {
        v49 = v46;
        v23 = v46;
      }

      v24 = v45;
      v22 = v23 - v45;
      if (v23 - v45 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if ((v50 & 8) == 0)
      {
        v22 = 0;
        v39 = 0;
LABEL_17:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 1u);
        if (v39 < 0)
        {
          operator delete(__dst);
        }

        if (v48 < 0)
        {
          operator delete(v47);
        }

        std::locale::~locale(&v42);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_22;
      }

      v24 = v43;
      v22 = v44 - v43;
      if ((v44 - v43) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_60:
        sub_3244();
      }
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v39 = v22;
    if (v22)
    {
      memmove(&__dst, v24, v22);
    }

    goto LABEL_17;
  }

LABEL_22:
  v25 = __p;
  if (__p)
  {
    v26 = v76;
    v27 = __p;
    if (v76 != __p)
    {
      do
      {
        v26 -= 80;
        sub_3ED230(v26);
      }

      while (v26 != v25);
      v27 = __p;
    }

    v76 = v25;
    operator delete(v27);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (*(&v63 + 1))
  {
    *&v64 = *(&v63 + 1);
    operator delete(*(&v63 + 1));
  }

  if (v62)
  {
    *(&v62 + 1) = v62;
    operator delete(v62);
  }

  if (*(&v60 + 1))
  {
    *&v61 = *(&v60 + 1);
    operator delete(*(&v60 + 1));
  }

  v40 = &v59;
  sub_A30A34(&v40);
  if (*(&v79 + 1))
  {
    *&v80 = *(&v79 + 1);
    operator delete(*(&v79 + 1));
  }

  v28 = v78;
  if (v78)
  {
    v29 = *(&v78 + 1);
    v30 = v78;
    if (*(&v78 + 1) != v78)
    {
      do
      {
        v29 = sub_9FFEB4(v29 - 18);
      }

      while (v29 != v28);
      v30 = v78;
    }

    *(&v78 + 1) = v28;
    operator delete(v30);
  }

  if (v91)
  {
    *(&v91 + 1) = v91;
    operator delete(v91);
  }

  if (*(&v89 + 1))
  {
    *&v90 = *(&v89 + 1);
    operator delete(*(&v89 + 1));
  }

  if (v88)
  {
    *(&v88 + 1) = v88;
    operator delete(v88);
  }

  if (*(&v86 + 1))
  {
    *&v87 = *(&v86 + 1);
    operator delete(*(&v86 + 1));
  }

  v31 = v85;
  if (v85)
  {
    v32 = *(&v85 + 1);
    v33 = v85;
    if (*(&v85 + 1) != v85)
    {
      do
      {
        v34 = v32 - 1136;
        v35 = *(v32 - 8);
        if (v35 != -1)
        {
          (off_26707C0[v35])(&v40, v32 - 1136);
        }

        *(v32 - 8) = -1;
        v32 -= 1136;
      }

      while (v34 != v31);
      v33 = v85;
    }

    *(&v85 + 1) = v31;
    operator delete(v33);
  }
}