uint64_t sub_1DA6628(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = off_27256C8;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_1DA66B8(std::locale *a1)
{
  a1->__locale_ = off_27256C8;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_1220A18(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1DA6754(std::locale *a1)
{
  a1->__locale_ = off_27256C8;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_1220A18(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_1DA6810(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_1DA6DBC(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == sub_1DA6A0C(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &v9[24 * v14];
    v16 = v12 + 24 * v11;
    *v16 = *v15;
    *(v16 + 16) = v15[16];
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  v19 = v9;
  operator delete(v9);
}

void sub_1DA6978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1DA6998(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_1DA6DBC(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_1DA6A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_1DA6FC4(&v42, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_1DA705C((v13 - 64), *(a1 + 28), &v40);
  sub_1DA7098((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= ((a3 - a2) >> 2))
    {
      sub_17AB8();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_1DA76D8(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_1DA7758(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_1DA6FC4(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_17B10();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_1DA734C((v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_1DA7808(v36);
  return v24;
}

void sub_1DA6D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_17A74(&a11);
  a11 = v16 - 112;
  sub_1DA7808(&a11);
  _Unwind_Resume(a1);
}

char *sub_1DA6DBC(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_1DA6F20(a1, v9);
    }

    sub_1794();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_1DA6F20(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1DA6F6C(a1, a2);
  }

  sub_1794();
}

void sub_1DA6F6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1DA6FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1DA70C8(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1DA705C(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_1DA73F4(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_1DA7098(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_1DA757C(a1, a2 - v2);
  }
}

uint64_t sub_1DA70C8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1DA7240(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  sub_1DA7298(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1DA73A4(&v16);
  return v15;
}

void sub_1DA722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1DA73A4(va);
  _Unwind_Resume(a1);
}

void sub_1DA7240(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

void sub_1DA7298(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v8 = v6[10];
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 12;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1DA734C(v5);
      v5 += 12;
    }
  }
}

void sub_1DA734C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t sub_1DA73A4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_1DA734C((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1DA73F4(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1DA6F6C(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = 24 * v7 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = 24 * v7 + *a1 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = 24 * v7 + 24 * a2;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_1DA757C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1794();
    }

    v8 = v4 - *a1;
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
      sub_1DA7690(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1DA7690(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1DA76D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1DA6F20(result, a4);
  }

  return result;
}

void sub_1DA773C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DA7758(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1DA77CC(result, a4);
  }

  return result;
}

void sub_1DA77B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DA77CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1DA7690(a1, a2);
  }

  sub_1794();
}

void sub_1DA7808(void ***a1)
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
        v4 -= 12;
        sub_1DA734C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

int *sub_1DA788C(uint64_t a1, int *a2, int *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = (a2 + 1);
    if (a2 + 1 == a3)
    {
      sub_18720();
    }

    v7 = sub_1DA7CBC(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_1DA7D74(a1, v3 + 1, a3), v7 == v5))
    {
      v8 = sub_1DA7E44(a1, v3 + 1, a3, 0);
      if (v8 != v5)
      {
        return v8;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_DWORD *sub_1DA7934(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      sub_1DA90D8();
    }

    sub_1B2D8();
  }

  return a2;
}

uint64_t sub_1DA7A50(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1DA7AD8(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

int *sub_1DA7B58(uint64_t a1, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      sub_1DA8338(a1);
    }
  }

  return a2;
}

void *sub_1DA7BC4(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DA7C30(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

int *sub_1DA7CBC(uint64_t a1, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = *a2 - 48;
    if (v4 == 48)
    {
      sub_1DA8338(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((*v6 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        ++v6;
        v5 = v7 + 10 * v5 - 48;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_1DA8478(a1);
        }
      }

LABEL_13:
      sub_190B0();
    }
  }

  return a2;
}

int *sub_1DA7D74(uint64_t a1, int *a2, int *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (*a2 > 99)
  {
    if (v3 == 119)
    {
      goto LABEL_11;
    }

    if (v3 == 115)
    {
LABEL_12:
      sub_1DA90D8();
    }

    if (v3 != 100)
    {
      return a2;
    }

LABEL_10:
    sub_1DA90D8();
  }

  switch(v3)
  {
    case 'D':
      goto LABEL_10;
    case 'S':
      goto LABEL_12;
    case 'W':
LABEL_11:
      sub_1DA90D8();
  }

  return a2;
}

unsigned int *sub_1DA7E44(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = a4;
  v7 = a1;
  v8 = *a2;
  if (*a2 <= 113)
  {
    if (v8 > 101)
    {
      if (v8 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = (&dword_0 + 1);
            v5 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v22 = 12;
          goto LABEL_86;
        }
      }

      else
      {
        if (v8 != 110)
        {
          goto LABEL_68;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = (&dword_0 + 1);
            v5 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v22 = 10;
          goto LABEL_86;
        }
      }
    }

    else
    {
      if (v8 != 48)
      {
        if (v8 == 99)
        {
          v4 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_89;
          }

          v10 = *v4;
          if (*v4 < 65 || v10 >= 0x5B && v10 - 97 > 0x19)
          {
            goto LABEL_89;
          }

          v11 = *v4 & 0x1F;
          if (a4)
          {
            goto LABEL_70;
          }

LABEL_16:
          a1 = v7;
          goto LABEL_66;
        }

        if (v8 == 95)
        {
          goto LABEL_89;
        }

LABEL_68:
        if ((*(**(a1 + 8) + 24))(*(a1 + 8), 1280))
        {
          goto LABEL_89;
        }

        v11 = *v4;
        if (v5)
        {
LABEL_70:
          if (*(v5 + 23) < 0)
          {
            v5[1] = 1;
            v5 = *v5;
          }

          else
          {
            *(v5 + 23) = 1;
          }

          *v5 = v11;
          *(v5 + 1) = 0;
          return ++v4;
        }

        goto LABEL_16;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = (&dword_0 + 1);
          v5 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *v5 = 0;
        return ++v4;
      }
    }

    goto LABEL_66;
  }

  if (v8 <= 116)
  {
    if (v8 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = (&dword_0 + 1);
          v5 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v22 = 13;
        goto LABEL_86;
      }
    }

    else
    {
      if (v8 != 116)
      {
        goto LABEL_68;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = (&dword_0 + 1);
          v5 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v22 = 9;
        goto LABEL_86;
      }
    }

LABEL_66:
    sub_1DA8338(a1);
  }

  if (v8 != 117)
  {
    if (v8 != 118)
    {
      if (v8 == 120)
      {
        v9 = 0;
        goto LABEL_47;
      }

      goto LABEL_68;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = (&dword_0 + 1);
        v5 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v22 = 11;
LABEL_86:
      *v5 = v22;
      return ++v4;
    }

    goto LABEL_66;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_89;
  }

  v12 = (*(**(a1 + 8) + 104))(*(a1 + 8), a2[1], 0);
  v13 = v12;
  v14 = -48;
  if ((v12 & 0xFFFFFFF8) != 0x30 && (v12 & 0xFFFFFFFE) != 0x38)
  {
    v13 = v12 | 0x20;
    if (((v12 | 0x20) - 97) >= 6u)
    {
      goto LABEL_89;
    }

    v14 = -87;
  }

  v4 += 2;
  if (v4 == a3)
  {
    goto LABEL_89;
  }

  v15 = (*(**(v7 + 8) + 104))(*(v7 + 8), *v4, 0);
  v16 = -48;
  if ((v15 & 0xFFFFFFF8) != 0x30 && (v15 & 0xFFFFFFFE) != 0x38)
  {
    v15 |= 0x20u;
    if ((v15 - 97) >= 6u)
    {
      goto LABEL_89;
    }

    v16 = -87;
  }

  v9 = ((v14 + v13) << 8) + 16 * (v16 + v15);
LABEL_47:
  if (v4 + 1 == a3)
  {
    goto LABEL_89;
  }

  v17 = (*(**(v7 + 8) + 104))(*(v7 + 8), v4[1], 0);
  v18 = v17;
  v19 = -48;
  if ((v17 & 0xFFFFFFF8) != 0x30 && (v17 & 0xFFFFFFFE) != 0x38)
  {
    v18 = v17 | 0x20;
    if (((v17 | 0x20) - 97) >= 6u)
    {
      goto LABEL_89;
    }

    v19 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_89;
  }

  v20 = (*(**(v7 + 8) + 104))(*(v7 + 8), v4[2], 0);
  v21 = -48;
  if ((v20 & 0xFFFFFFF8) == 0x30 || (v20 & 0xFFFFFFFE) == 0x38)
  {
    goto LABEL_57;
  }

  v20 |= 0x20u;
  if ((v20 - 97) >= 6u)
  {
LABEL_89:
    sub_18720();
  }

  v21 = -87;
LABEL_57:
  if (!v5)
  {
    sub_1DA8338(v7);
  }

  if (*(v5 + 23) < 0)
  {
    v5[1] = 1;
    v5 = *v5;
  }

  else
  {
    *(v5 + 23) = 1;
  }

  *v5 = v21 + v20 + 16 * (v19 + v9 + v18);
  *(v5 + 1) = 0;
  v4 += 3;
  return v4;
}

void sub_1DA8338(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1DA8478(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_1DA85A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_2725758;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 72))(*(a2 + 8), a3);
  return a1;
}

void sub_1DA8634(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = off_27255C0;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_1DAF3D4(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_1DA8674(std::locale *a1)
{
  a1->__locale_ = off_2725758;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1DA8700(std::locale *a1)
{
  a1->__locale_ = off_2725758;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1DA87AC(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 72))(*(result + 24), *v3), result != *(v4 + 40)))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) += 4;
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_1DA8840(std::locale *a1)
{
  a1->__locale_ = off_27257A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1DA88CC(std::locale *a1)
{
  a1->__locale_ = off_27257A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1DA8978(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_1DA89C0(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DA8A2C(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1DA8AB8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_1DA8B00(std::locale *a1)
{
  a1->__locale_ = off_2725830;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1DA8B8C(std::locale *a1)
{
  a1->__locale_ = off_2725830;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1DA8C38(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 >> 2 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 72))(*(v7 + 24), *(*v3 + 4 * v8));
        result = (*(**(v7 + 24) + 72))(*(v7 + 24), *(*(a2 + 16) + 4 * v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 >> 2 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_1DA8D60(std::locale *a1)
{
  a1->__locale_ = off_2725878;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1DA8DEC(std::locale *a1)
{
  a1->__locale_ = off_2725878;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1DA8E98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = v4 >> 2;
      if (v4 >> 2 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_1DA8F24(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DA8F90(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned int *sub_1DA901C(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_190B0();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_1DA916C(uint64_t a1, int a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v3 = (a1 + 40);
    v4 = &v6;
LABEL_5:
    sub_1B01004(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = (a1 + 40);
    v4 = &v5;
    goto LABEL_5;
  }

  sub_1B01004((a1 + 40), &v7);
}

uint64_t sub_1DA9208(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_2725908;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1DA9348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_195E3E8(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_1965604(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1DA93E4(std::locale *a1)
{
  sub_1DA9BC4(a1);

  operator delete();
}

void sub_1DA941C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v27 = 0;
    v28 = *(a1 + 168);
    goto LABEL_103;
  }

  if (*(a1 + 171) != 1 || v4 + 4 == v5)
  {
    goto LABEL_46;
  }

  v6 = *(v4 + 4);
  v71.i32[0] = *v4;
  v71.i32[1] = v6;
  if (*(a1 + 169) == 1)
  {
    v71.i32[0] = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v71.i32[1] = (*(**(a1 + 24) + 72))(*(a1 + 24), v6);
  }

  sub_1DA9DD0(a1 + 16, &v71, &v72, &__p);
  if (v70 < 0)
  {
    v29 = v69;
    operator delete(__p);
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_46:
    v28 = 0;
    v27 = 1;
    goto LABEL_47;
  }

  if (!v70)
  {
    goto LABEL_46;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v10 = vceq_s32(v71, *v7);
      if (v10.i32[0] & v10.i32[1])
      {
        goto LABEL_123;
      }

      ++v7;
    }

    while (--v9);
  }

  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    sub_1DA9CAC(a1 + 16, &v71, &v72);
    v11 = *(a1 + 88);
    if (*(a1 + 96) == v11)
    {
LABEL_20:
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      while (sub_1DA9D68((v11 + v12), &__p) > 0 || sub_1DA9D68(&__p, (*(a1 + 88) + v12 + 24)) >= 1)
      {
        ++v13;
        v11 = *(a1 + 88);
        v12 += 48;
        if (v13 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v11) >> 4))
        {
          goto LABEL_20;
        }
      }

      v15 = 5;
      v14 = 1;
    }

    if (v70 < 0)
    {
      operator delete(__p);
    }

    if (v14)
    {
      goto LABEL_115;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_117;
  }

  sub_1DAA178(a1 + 16, &v71, &v72, &__p);
  v17 = *(a1 + 136);
  v16 = *(a1 + 144);
  if (v16 == v17)
  {
LABEL_43:
    v26 = 0;
    v15 = 0;
    goto LABEL_112;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = v17 + v18;
    if (v70 >= 0)
    {
      v21 = v70;
    }

    else
    {
      v21 = v69;
    }

    v22 = *(v20 + 23);
    v23 = v22;
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(v20 + 8);
    }

    if (v21 != v22)
    {
      goto LABEL_42;
    }

    if (!v21)
    {
      break;
    }

    v24 = v23 >= 0 ? (v17 + v18) : *v20;
    v25 = v70 >= 0 ? &__p : __p;
    if (!wmemcmp(v25, v24, v21))
    {
      break;
    }

    v17 = *(a1 + 136);
    v16 = *(a1 + 144);
LABEL_42:
    ++v19;
    v18 += 24;
    if (v19 >= 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3))
    {
      goto LABEL_43;
    }
  }

  v15 = 5;
  v26 = 1;
LABEL_112:
  if (v70 < 0)
  {
    operator delete(__p);
  }

  if ((v26 & 1) == 0)
  {
LABEL_117:
    v60 = v71.i32[0];
    v61 = *(a1 + 160);
    if (((*(**(a1 + 24) + 24))(*(a1 + 24), v61, v71.u32[0]) & 1) == 0 && (v60 != 95 || (v61 & 0x80) == 0) || (v62 = v71.i32[1], v63 = *(a1 + 160), ((*(**(a1 + 24) + 24))(*(a1 + 24), v63, v71.u32[1]) & 1) == 0) && (v62 != 95 || (v63 & 0x80) == 0))
    {
      v64 = v71.i32[0];
      v65 = *(a1 + 164);
      if ((*(**(a1 + 24) + 24))(*(a1 + 24), v65, v71.u32[0]) & 1) != 0 || v64 == 95 && (v65 & 0x80) != 0 || (v66 = v71.i32[1], v67 = *(a1 + 164), ((*(**(a1 + 24) + 24))(*(a1 + 24), v67, v71.u32[1])) || (v28 = 1, v66 == 95) && (v67 & 0x80) != 0)
      {
        v28 = 0;
      }

      goto LABEL_131;
    }

LABEL_123:
    v28 = 1;
LABEL_131:
    v27 = 2;
    goto LABEL_103;
  }

LABEL_115:
  v28 = 1;
  v27 = 2;
  if (v15)
  {
    goto LABEL_103;
  }

LABEL_47:
  v30 = **(a2 + 16);
  v71.i32[0] = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    v30 = (*(**(a1 + 24) + 72))(*(a1 + 24), v30);
    v71.i32[0] = v30;
  }

  v31 = *(a1 + 40);
  v32 = *(a1 + 48) - v31;
  if (v32)
  {
    v33 = v32 >> 2;
    if (v33 <= 1)
    {
      v33 = 1;
    }

    do
    {
      v34 = *v31++;
      if (v30 == v34)
      {
        goto LABEL_102;
      }

      --v33;
    }

    while (v33);
  }

  v35 = *(a1 + 164);
  if (v35 || *(a1 + 64) != *(a1 + 72))
  {
    if ((*(**(a1 + 24) + 24))(*(a1 + 24), *(a1 + 164), v30))
    {
      v36 = 1;
    }

    else
    {
      v36 = (v30 == 95) & (v35 >> 7);
    }

    v37 = *(a1 + 64);
    v38 = *(a1 + 72);
    if (v37 != v38)
    {
      while (*v37 != v30)
      {
        if (++v37 == v38)
        {
          v37 = *(a1 + 72);
          break;
        }
      }
    }

    if (((v37 == v38) & ~v36) != 0)
    {
      goto LABEL_102;
    }
  }

  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  if (v39 != v40)
  {
    if (*(a1 + 170) == 1)
    {
      sub_1DA9CAC(a1 + 16, &v71, &v71 + 4);
      v39 = *(a1 + 88);
      v40 = *(a1 + 96);
    }

    else
    {
      v70 = 1;
      __p = v30;
    }

    if (v40 == v39)
    {
LABEL_73:
      v43 = 0;
    }

    else
    {
      v41 = 0;
      v42 = 0;
      while (sub_1DA9D68((v39 + v41), &__p) > 0 || sub_1DA9D68(&__p, (*(a1 + 88) + v41 + 24)) >= 1)
      {
        ++v42;
        v39 = *(a1 + 88);
        v41 += 48;
        if (v42 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v39) >> 4))
        {
          goto LABEL_73;
        }
      }

      v43 = 1;
      v28 = 1;
    }

    if (v70 < 0)
    {
      operator delete(__p);
    }

    if (v43)
    {
      goto LABEL_103;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_101;
  }

  sub_1DAA178(a1 + 16, &v71, &v71 + 4, &__p);
  v45 = *(a1 + 136);
  v44 = *(a1 + 144);
  if (v44 == v45)
  {
LABEL_96:
    v54 = 0;
    goto LABEL_98;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = v45 + v46;
    if (v70 >= 0)
    {
      v49 = v70;
    }

    else
    {
      v49 = v69;
    }

    v50 = *(v48 + 23);
    v51 = v50;
    if ((v50 & 0x80u) != 0)
    {
      v50 = *(v48 + 8);
    }

    if (v49 != v50)
    {
LABEL_95:
      ++v47;
      v46 += 24;
      if (v47 >= 0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 3))
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  if (v49)
  {
    v52 = v51 >= 0 ? (v45 + v46) : *v48;
    v53 = v70 >= 0 ? &__p : __p;
    if (wmemcmp(v53, v52, v49))
    {
      v45 = *(a1 + 136);
      v44 = *(a1 + 144);
      goto LABEL_95;
    }
  }

  v54 = 1;
  v28 = 1;
LABEL_98:
  if (v70 < 0)
  {
    operator delete(__p);
  }

  if ((v54 & 1) == 0)
  {
LABEL_101:
    v55 = v71.i32[0];
    v56 = *(a1 + 160);
    if ((*(**(a1 + 24) + 24))(*(a1 + 24), v56, v71.u32[0]))
    {
LABEL_102:
      v28 = 1;
    }

    else
    {
      v59 = (v56 >> 7) & 1;
      if (v55 != 95)
      {
        LOBYTE(v59) = 0;
      }

      v28 |= v59;
    }
  }

LABEL_103:
  if (*(a1 + 168) == (v28 & 1))
  {
    v57 = 0;
    v58 = -993;
  }

  else
  {
    *(a2 + 16) += 4 * v27;
    v57 = *(a1 + 8);
    v58 = -995;
  }

  *a2 = v58;
  *(a2 + 80) = v57;
}

std::locale *sub_1DA9BC4(std::locale *a1)
{
  a1->__locale_ = off_2725908;
  v7 = a1 + 17;
  sub_195E3E8(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_1965604(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_1DA9CAC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_1DA48A4(__p, a2, a3, (a3 - a2) >> 2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + 4 * v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DA9D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DA9D68(uint64_t *a1, const __int32 *a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  v4 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v9[0] = v3;
  v9[1] = v2;
  v6 = sub_1DAA124(v9, a2, v5);
  if (v6 < 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void sub_1DA9DD0(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  p_p = &__p;
  sub_1DA48A4(&__p, a2, a3, (a3 - a2) >> 2);
  memset(&v18, 0, sizeof(v18));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::reserve(&v18, size);
  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!v11)
  {
LABEL_12:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      goto LABEL_27;
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    std::__get_collation_name(&v17, v13);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v18 = v17;
    v14 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v14 = v18.__r_.__value_.__l.__size_;
      if (v18.__r_.__value_.__l.__size_)
      {
        v15 = v18.__r_.__value_.__r.__words[0];
        goto LABEL_26;
      }
    }

    else if (*(&v17.__r_.__value_.__s + 23))
    {
      v15 = &v18;
LABEL_26:
      sub_1DAA058(a4, v15, v15 + v14, v14);
      goto LABEL_27;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ >= 3)
      {
        goto LABEL_27;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 3)
    {
      goto LABEL_27;
    }

    (*(**(a1 + 16) + 32))(&v17);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v17;
    v16 = *(a4 + 23);
    if (v16 < 0)
    {
      if ((*(a4 + 8) & 0xFFFFFFFFFFFFFFFDLL) != 1)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_27;
      }
    }

    else if ((v16 & 0x7D) != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_27;
    }

    std::wstring::operator=(a4, &__p);
    goto LABEL_27;
  }

  v12 = 4 * v11;
  while (p_p->__r_.__value_.__s.__data_[0] < 0x7Fu)
  {
    std::string::push_back(&v18, p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 4);
    v12 -= 4;
    if (!v12)
    {
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v10 = __p.__r_.__value_.__l.__size_;
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      goto LABEL_12;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_27:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1DAA008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DAA058(std::wstring *this, char *a2, char *a3, std::wstring::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 4)
    {
      goto LABEL_11;
    }

    v10 = 4;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::wstring::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 4);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t sub_1DAA124(uint64_t a1, const __int32 *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (a3)
  {
    result = wmemcmp(*a1, a2, a3);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 8);
  }

  v7 = v4 == v3;
  if (v4 < v3)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

void sub_1DAA178(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DA48A4(__p, a2, a3, (a3 - a2) >> 2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + 4 * v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 3)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[2] = *v10;
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DAA270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1DAA28C(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 == 93)
  {
    return v4;
  }

  v6 = a4;
  v9 = 0;
  v10 = 0;
  v29 = 0uLL;
  v30 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = sub_1DAA944(a1, a2 + 2, a3, &v29);
        v9 = HIBYTE(v30);
        v10 = *(&v29 + 1);
        break;
      case ':':
        v12 = sub_1DAA85C(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = sub_1DAA65C(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_47;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (!v10)
  {
    if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
    {
      v15 = *v4;
      if (*v4 == 92)
      {
        if (v14)
        {
          v16 = sub_1DAABB8(a1, v4 + 1, a3, &v29);
        }

        else
        {
          v16 = sub_1DAAA58(a1, v4 + 1, a3, &v29, v6);
        }

        v4 = v16;
        goto LABEL_27;
      }
    }

    else
    {
      v15 = *v4;
    }

    if ((v9 & 0x80) != 0)
    {
      v17 = v29;
      *(&v29 + 1) = 1;
    }

    else
    {
      HIBYTE(v30) = 1;
      v17 = &v29;
    }

    *v17 = v15;
    v17[1] = 0;
    ++v4;
  }

LABEL_27:
  if (v4 != a3 && *v4 != 93)
  {
    v19 = (v4 + 1);
    if (v4 + 1 != a3 && *v4 == 45 && *v19 != 93)
    {
      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      v4 += 2;
      if (v19 + 1 != a3 && *v19 == 91 && *v4 == 46)
      {
        v20 = sub_1DAA944(a1, v19 + 2, a3, v27);
LABEL_59:
        v4 = v20;
        goto LABEL_60;
      }

      if ((v14 | 0x40) == 0x40)
      {
        v22 = *v19;
        if (v22 == 92)
        {
          if (v14)
          {
            v20 = sub_1DAABB8(a1, v4, a3, v27);
          }

          else
          {
            v20 = sub_1DAAA58(a1, v4, a3, v27, v6);
          }

          goto LABEL_59;
        }
      }

      else
      {
        v22 = *v19;
      }

      HIBYTE(v28) = 1;
      v27[0] = v22;
LABEL_60:
      *v25 = v29;
      v26 = v30;
      v30 = 0;
      v29 = 0uLL;
      *__p = *v27;
      v24 = v28;
      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      sub_1DAAEAC(v6, v25, __p);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      goto LABEL_46;
    }
  }

  if (SHIBYTE(v30) < 0)
  {
    if (*(&v29 + 1))
    {
      if (*(&v29 + 1) != 1)
      {
        v18 = v29;
LABEL_45:
        sub_1DAB2AC(v6, *v18, v18[1]);
        goto LABEL_46;
      }

      v18 = v29;
      goto LABEL_36;
    }
  }

  else if (HIBYTE(v30))
  {
    v18 = &v29;
    if (HIBYTE(v30) != 1)
    {
      goto LABEL_45;
    }

LABEL_36:
    sub_1DA916C(v6, *v18);
  }

LABEL_46:
  v13 = 1;
LABEL_47:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_1DAA5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1DAA65C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v21 = 0x5D0000003DLL;
  LOBYTE(__p[0]) = 0;
  v8 = sub_1DAB370(a2, a3, &v21, &v22);
  if (v8 == a3)
  {
    sub_1B2D8();
  }

  sub_1DAB3F4(a1, a2, v8, &v18);
  v9 = v20;
  if ((v20 & 0x8000000000000000) == 0)
  {
    if (v20)
    {
      v10 = &v18;
      goto LABEL_7;
    }

LABEL_27:
    sub_1CA14();
  }

  v9 = v19;
  if (!v19)
  {
    goto LABEL_27;
  }

  v10 = v18;
LABEL_7:
  sub_1DAB67C(a1, v10, &v10[4 * v9], __p);
  v11 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v11 = __p[1];
  }

  if (v11)
  {
    sub_1DAB790((a4 + 136), __p);
  }

  else
  {
    v12 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v12 = v19;
    }

    if (v12 == 2)
    {
      v14 = &v18;
      if ((v20 & 0x80u) != 0)
      {
        v14 = v18;
      }

      sub_1DAB2AC(a4, *v14, v14[1]);
    }

    else
    {
      if (v12 != 1)
      {
        sub_1CA14();
      }

      v13 = &v18;
      if ((v20 & 0x80u) != 0)
      {
        v13 = v18;
      }

      sub_1DA916C(a4, *v13);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v18);
  }

  return v8 + 8;
}

void sub_1DAA81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1DAA85C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v12 = 0x5D0000003ALL;
  v8 = sub_1DAB370(a2, a3, &v12, &v13);
  if (v8 == a3)
  {
    sub_1B2D8();
  }

  v9 = v8;
  v10 = sub_1DABA04(a1, a2, v8, *(a1 + 24) & 1);
  if (!v10)
  {
    sub_1D0A4();
  }

  *(a4 + 160) |= v10;
  return v9 + 8;
}

_BYTE *sub_1DAA944(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v16 = 0x5D0000002ELL;
  v15 = 0;
  v8 = sub_1DAB370(a2, a3, &v16, &v17);
  if (v8 == a3)
  {
    sub_1B2D8();
  }

  v9 = v8;
  sub_1DAB3F4(a1, a2, v8, &v13);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    sub_1CA14();
  }

  return v9 + 8;
}

unsigned int *sub_1DAAA58(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_18720();
  }

  v6 = *a2;
  if (*a2 > 97)
  {
    if (v6 > 114)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return sub_1DA7E44(a1, a2, a3, a4);
        }

        *(a5 + 160) |= 0x500u;
        sub_1DA916C(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        return sub_1DA7E44(a1, a2, a3, a4);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (v6 <= 82)
  {
    if (!v6)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    return sub_1DA7E44(a1, a2, a3, a4);
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 != 87)
  {
    return sub_1DA7E44(a1, a2, a3, a4);
  }

  *(a5 + 164) |= 0x500u;
  sub_1DABB80(a5, 95);
  return a2 + 1;
}

int *sub_1DAABB8(uint64_t a1, int *a2, int *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_75:
    sub_18720();
  }

  v5 = *a2;
  if (v5 > 101)
  {
    if (v5 <= 113)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v10 = 12;
          goto LABEL_70;
        }

        goto LABEL_54;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v10 = 10;
          goto LABEL_70;
        }

        goto LABEL_54;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 13;
            goto LABEL_70;
          }

          goto LABEL_54;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 9;
            goto LABEL_70;
          }

          goto LABEL_54;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 11;
            goto LABEL_70;
          }

          goto LABEL_54;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 91)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_54;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v10 = 7;
        goto LABEL_70;
      }

LABEL_54:
      sub_1DA8338(a1);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v10 = 8;
LABEL_70:
        *a4 = v10;
        return a2 + 1;
      }

      goto LABEL_54;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_75;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 == a3)
  {
LABEL_50:
    v7 = a3;
    goto LABEL_51;
  }

  if ((*v7 & 0xFFFFFFF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 & 0xFFFFFFF8;
      if (v9 == 48)
      {
        v7 = a2 + 3;
      }

      else
      {
        v7 = a2 + 2;
      }

      if (v9 == 48)
      {
        v6 = *v8 + 8 * v6 - 48;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_51:
  if (!a4)
  {
    sub_1DA8338(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6;
  *(a4 + 1) = 0;
  return v7;
}

void sub_1DAAEAC(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = *(v4 + 23);
        v8 = v7 < 0 ? *(v4 + 1) : *(v4 + 23);
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 72))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (*(v4 + 23) < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = *(v3 + 23);
        v21 = v20 < 0 ? *(v3 + 1) : *(v3 + 23);
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 72))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (*(v3 + 23) < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = *(a2 + 23);
        v16 = v15 < 0 ? *(a2 + 1) : *(a2 + 23);
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = *(a3 + 23);
        v27 = v26 < 0 ? *(a3 + 1) : *(a3 + 23);
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = *(v4 + 23);
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_1DABD7C(a1 + 16, v4, &v4[v30]);
    v32 = *(v3 + 23);
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_1DABD7C(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_1DABC1C(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = *(a2 + 23);
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = *(a2 + 23);
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = *(a3 + 23);
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_1D778();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 72))(*(a1 + 24), *v35);
      v37 = v4;
      if (*(v4 + 23) < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (*(v3 + 23) < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 72))(*(a1 + 24), *v38);
      v40 = v3;
      if (*(v3 + 23) < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_1DABC1C(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_1DAB2AC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v6 = v5 | ((*(**(a1 + 24) + 72))(*(a1 + 24), a3) << 32);
  }

  else
  {
    v6 = a2 | (a3 << 32);
  }

  v7 = v6;
  sub_1DABE38(a1 + 112, &v7);
}

_DWORD *sub_1DAB370(_DWORD *result, uint64_t a2, char *a3, char *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    v5 = (a2 - result) >> 2;
    if (v5 < v4 >> 2)
    {
      return a2;
    }

    v6 = &result[v5 - (v4 >> 2) + 1];
    if (v6 == result)
    {
      return a2;
    }

    else
    {
      v9 = *a3;
      v7 = a3 + 4;
      v8 = v9;
      while (*result != v8)
      {
LABEL_11:
        if (++result == v6)
        {
          return a2;
        }
      }

      v10 = result + 1;
      v11 = v7;
      while (v11 != a4)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = *v11;
        v11 += 4;
        if (v12 != v14)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void sub_1DAB3F4(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  p_p = &__p;
  sub_1DA48A4(&__p, a2, a3, (a3 - a2) >> 2);
  memset(&v18, 0, sizeof(v18));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::reserve(&v18, size);
  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!v11)
  {
LABEL_12:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      goto LABEL_27;
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    std::__get_collation_name(&v17, v13);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v18 = v17;
    v14 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v14 = v18.__r_.__value_.__l.__size_;
      if (v18.__r_.__value_.__l.__size_)
      {
        v15 = v18.__r_.__value_.__r.__words[0];
        goto LABEL_26;
      }
    }

    else if (*(&v17.__r_.__value_.__s + 23))
    {
      v15 = &v18;
LABEL_26:
      sub_1DAA058(a4, v15, v15 + v14, v14);
      goto LABEL_27;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ >= 3)
      {
        goto LABEL_27;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 3)
    {
      goto LABEL_27;
    }

    (*(**(a1 + 16) + 32))(&v17);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v17;
    v16 = *(a4 + 23);
    if (v16 < 0)
    {
      if ((*(a4 + 8) & 0xFFFFFFFFFFFFFFFDLL) != 1)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_27;
      }
    }

    else if ((v16 & 0x7D) != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_27;
    }

    std::wstring::operator=(a4, &__p);
    goto LABEL_27;
  }

  v12 = 4 * v11;
  while (p_p->__r_.__value_.__s.__data_[0] < 0x7Fu)
  {
    std::string::push_back(&v18, p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 4);
    v12 -= 4;
    if (!v12)
    {
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v10 = __p.__r_.__value_.__l.__size_;
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      goto LABEL_12;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_27:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1DAB62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DAB67C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DA48A4(__p, a2, a3, (a3 - a2) >> 2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + 4 * v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 3)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[2] = *v10;
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DAB774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DAB790(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1DAB830(a1, a2);
  }

  else
  {
    sub_1DAB7D0(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_1DAB7D0(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1DAF300(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1DAB830(uint64_t a1, __int128 *a2)
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
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_195CC74(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1DAF300(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *&dword_10[6 * v2] = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1DAB970(&v17);
  return v11;
}

void sub_1DAB95C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DAB970(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1DAB970(uint64_t a1)
{
  sub_1DAB9A8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1DAB9A8(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1DABA04(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  sub_1DA48A4(&__dst, a2, a3, (a3 - a2) >> 2);
  v6 = v18;
  if ((v18 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v18 & 0x80u) != 0)
  {
    v6 = v17;
  }

  (*(**(a1 + 8) + 80))(*(a1 + 8), p_dst, p_dst + 4 * v6);
  memset(&__p, 0, sizeof(__p));
  if ((v18 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = v17;
  }

  std::string::reserve(&__p, v8);
  v9 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v10 = &__dst;
  }

  else
  {
    v10 = __dst;
  }

  if ((v18 & 0x80u) != 0)
  {
    v9 = v17;
  }

  if (v9)
  {
    v11 = 4 * v9;
    while (*v10 <= 0x7Eu)
    {
      std::string::push_back(&__p, *v10++);
      v11 -= 4;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    classname = 0;
  }

  else
  {
LABEL_18:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    classname = std::__get_classname(p_p, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__dst);
  }

  return classname;
}

void sub_1DABB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DABB80(uint64_t a1, int a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v3 = (a1 + 64);
    v4 = &v6;
LABEL_5:
    sub_1B01004(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = (a1 + 64);
    v4 = &v5;
    goto LABEL_5;
  }

  sub_1B01004((a1 + 64), &v7);
}

uint64_t sub_1DABC1C(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1794();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_1965518(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(result + 8) - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_1A9C0E4(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  v3[1] = v8;
  return result;
}

void sub_1DABD7C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_1DA48A4(__p, a2, a3, (a3 - a2) >> 2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + 4 * v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DABE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DABE38(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1794();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1232E30(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_1DABF0C(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DABF78(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1DAC004(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1DAC034(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DAC0A0(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1DAC12C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *sub_1DAC2F4(uint64_t a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  v4 = a2;
  if (a2 != a3)
  {
    v8 = (*(**(a1 + 8) + 104))(*(a1 + 8), *a2, 0);
    if ((v8 & 0xFFFFFFF8) == 0x30 || (v8 & 0xFFFFFFFE) == 0x38)
    {
      *a4 = v8 - 48;
      if (++v4 == a3)
      {
        return a3;
      }

      else
      {
        while (1)
        {
          v9 = (*(**(a1 + 8) + 104))(*(a1 + 8), *v4, 0);
          if ((v9 & 0xFFFFFFF8) != 0x30 && (v9 & 0xFFFFFFFE) != 0x38)
          {
            break;
          }

          if (*a4 >= 214748364)
          {
            sub_1DCE0();
          }

          *a4 = v9 + 10 * *a4 - 48;
          if (++v4 == a3)
          {
            return a3;
          }
        }
      }
    }
  }

  return v4;
}

void sub_1DAC41C(void *a1)
{
  sub_1DAC570(a1);

  operator delete();
}

unsigned int *sub_1DAC454(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_1DAC624(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_1DAC504(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_1DAC624(result, a3);
  }

  return result;
}

void sub_1DAC538(void *a1)
{
  sub_1DAC570(a1);

  operator delete();
}

void *sub_1DAC570(void *a1)
{
  *a1 = off_2725A40;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_27255C0;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_1DAC624(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1DAC68C(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1DAC6A4(void *a1)
{
  sub_1DAC570(a1);

  operator delete();
}

uint64_t sub_1DAC6E8(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_1DAC724(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t sub_1DAC738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a2;
    a2 = sub_1DAC784(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned int *sub_1DAC784(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = sub_1DAC820(a1, a2, a3);
  if (v6 == a2)
  {
    return a2;
  }

  return sub_1DAC92C(a1, v6, a3);
}

int *sub_1DAC820(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a3;
  v6 = sub_1DACB04(a1, a2, a3);
  v7 = v6;
  if (v6 != a2)
  {
    return v6;
  }

  if (a2 == v3 || a2 + 4 == v3 || *v6 != 92)
  {
    return a2;
  }

  v8 = *(a2 + 4);
  if (v8 == 40)
  {
    v9 = a2 + 8;
  }

  else
  {
    v9 = v6;
  }

  if (v9 != a2)
  {
    sub_1DA7A50(a1);
    v11 = sub_1DAC738(a1, v9, v3);
    if (v11 != v3)
    {
      if (v11 + 1 == v3 || *v11 != 92)
      {
        goto LABEL_23;
      }

      if (v11[1] == 41)
      {
        v3 = (v11 + 2);
      }

      else
      {
        v3 = v11;
      }
    }

    if (v3 != v11)
    {
      sub_1DA7AD8(a1);
      return v3;
    }

LABEL_23:
    sub_16ACC();
  }

  if (sub_1DACE10(a1, v8))
  {
    return (a2 + 8);
  }

  else
  {
    return v7;
  }
}

unsigned int *sub_1DAC92C(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    if (*a2 == 42)
    {
      sub_1DAC164();
    }

    v5 = a3;
    if (a2 + 1 != a3 && *a2 == 92)
    {
      v6 = a2[1] == 123 ? a2 + 2 : a2;
      if (v6 != a2)
      {
        v11 = 0;
        v7 = sub_1DAC2F4(a1, v6, a3, &v11);
        if (v7 == v6)
        {
          goto LABEL_32;
        }

        if (v7 != v5)
        {
          if (*v7 == 44)
          {
            v10 = -1;
            v8 = sub_1DAC2F4(a1, v7 + 1, v5, &v10);
            if (v8 != v5)
            {
              if (v8 + 1 == v5 || *v8 != 92)
              {
                goto LABEL_31;
              }

              if (v8[1] == 125)
              {
                v5 = v8 + 2;
              }

              else
              {
                v5 = v8;
              }
            }

            if (v5 != v8)
            {
              if (v10 == -1 || v10 >= v11)
              {
                goto LABEL_30;
              }

LABEL_32:
              sub_1DCE0();
            }
          }

          else if (v7 + 1 != v5 && *v7 == 92)
          {
            v9 = (v7[1] == 125 ? v7 + 2 : v7);
            if (v7 != v9)
            {
LABEL_30:
              sub_1DAC164();
            }
          }
        }

LABEL_31:
        sub_1DD38();
      }
    }
  }

  return a2;
}

int *sub_1DACB04(uint64_t a1, int *a2, int *a3)
{
  v6 = sub_1DACBF4(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_1DACC60(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_1DA7934(a1, a2, a3);
}

int *sub_1DACBF4(uint64_t a1, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((a2 + 1 != a3 || v4 != 36) && ((v4 - 46) > 0x2E || ((1 << (v4 - 46)) & 0x600000000001) == 0))
    {
      sub_1DA8338(a1);
    }
  }

  return a2;
}

_DWORD *sub_1DACC60(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2 != a3)
  {
    v3 = a2 + 1;
    if (a2 + 1 != a3 && *a2 == 92 && (*v3 - 36) <= 0x3A && ((1 << (*v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_1DA8338(a1);
    }
  }

  return a2;
}

void *sub_1DACCD8(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DACD44(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1DACDD0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1DACE10(uint64_t a1, uint64_t a2)
{
  v3 = (*(**(a1 + 8) + 104))(*(a1 + 8), a2, 0);
  if (((v3 & 0xFFFFFFF8) == 0x30 || (v3 & 0xFFFFFFFE) == 0x38) && (v3 - 49) <= 8)
  {
    if ((v3 - 48) <= *(a1 + 28))
    {
      sub_1DA8478(a1);
    }

    sub_190B0();
  }

  return 0;
}

int *sub_1DACEA8(uint64_t a1, int *a2, int *a3)
{
  v6 = sub_1DACF08(a1, a2, a3);
  if (v6 == a2)
  {
    sub_1E550();
  }

  do
  {
    v7 = v6;
    v6 = sub_1DACF08(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned int *sub_1DACF08(uint64_t a1, int *a2, int *a3)
{
  v6 = sub_1DAD04C(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3)
  {
    v8 = *v6;
    if (*v6 == 36)
    {
      sub_1DA5F20();
    }

    if (v8 == 40)
    {
      sub_1DA7A50(a1);
      ++*(a1 + 36);
      v9 = sub_1DA4E68(a1, v7 + 1, a3);
      if (v9 == a3 || (v10 = v9, *v9 != 41))
      {
        sub_16ACC();
      }

      sub_1DA7AD8(a1);
      --*(a1 + 36);
      v7 = (v10 + 1);
    }

    else if (v8 == 94)
    {
      sub_1DA5E9C();
    }
  }

  if (v7 == a2)
  {
    return a2;
  }

  return sub_1DA5B94(a1, v7, a3);
}

int *sub_1DAD04C(uint64_t a1, int *a2, int *a3)
{
  v6 = sub_1DAD13C(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_1DAD1C4(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_1DA7934(a1, a2, a3);
}

int *sub_1DAD13C(uint64_t a1, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v4 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v5 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }
    }

    else
    {
LABEL_8:
      if ((v4 - 123) < 2)
      {
        return a2;
      }
    }

    sub_1DA8338(a1);
  }

  return a2;
}

int *sub_1DAD1C4(uint64_t a1, int *a2, int *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
    if (!v5 || (v4 - 123) < 3)
    {
      sub_1DA8338(a1);
    }

    if ((*(a1 + 24) & 0x1F0) == 0x40)
    {
      return sub_1DAABB8(a1, v3 + 1, a3, 0);
    }

    else if (sub_1DACE10(a1, v4))
    {
      v3 += 2;
    }
  }

  return v3;
}

uint64_t sub_1DAD280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_1DA6998(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_1DAD5D0(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 4;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_1DA6DBC(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_1DAD5D0(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_1DA6DBC(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
        v11 += 4;
      }

      while (v11 != a3);
    }

    v12 = (a4 + 24);
    sub_1DA6DBC(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_1DAD5D0(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_1DAD44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_1DAF038(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_1DAD5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_1DA6A0C(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_1DADB50(a1, a2, a3, a4, a5, a6);
  }

  return sub_1DAD5F0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DAD5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v56 = 0;
  memset(&v56[8], 0, 32);
  v57 = 0uLL;
  *__p = 0uLL;
  memset(v59, 0, 21);
  sub_1DAE04C(&v60, v56);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v56[32])
  {
    *&v57 = *&v56[32];
    operator delete(*&v56[32]);
  }

  v52 = a4;
  v13 = v60.i64[1];
  v14 = *(&v62 + 1) + v62 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v60.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_1DA7098((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v55 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v62 + 1);
  v22 = v60.i64[1];
  v23 = *(&v62 + 1) + v62 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v60.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v54 = a2;
  v53 = (a3 - a2) >> 2;
  v26 = *(v22 + 8 * v24) + 32 * v25;
  *(v26 + 88) = a5;
  *(v26 + 92) = a6;
  v27 = (a3 - a2) >> 2;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v27)
    {
      sub_17AB8();
    }

    v29 = *(v60.i64[1] + 8 * ((v21 + v62 - 1) / 0x2AuLL)) + 96 * ((v21 + v62 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_1DAE1D8(&v60, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == a3;
      v35 = v32 != v54 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      v37 = v36 >> 2;
      if (v20 <= v36 >> 2)
      {
        v38 = v36 >> 2;
      }

      else
      {
        v38 = v20;
      }

      if (v55)
      {
        v20 = v38;
      }

      else
      {
        v20 = v37;
      }

      if (v20 != v53)
      {
        sub_1DAE150(&v60);
        v55 = 1;
        goto LABEL_52;
      }

      v39 = v60.i64[1];
      v40 = v61;
      if (v61 == v60.i64[1])
      {
        v40 = v60.i64[1];
      }

      else
      {
        v41 = (v60.i64[1] + 8 * (v62 / 0x2A));
        v42 = (*v41 + 96 * (v62 % 0x2A));
        v43 = *(v60.i64[1] + 8 * ((*(&v62 + 1) + v62) / 0x2AuLL)) + 96 * ((*(&v62 + 1) + v62) % 0x2AuLL);
        if (v42 != v43)
        {
          do
          {
            sub_1DA734C(v42);
            v42 += 12;
            if ((v42 - *v41) == &stru_FB8.dylib.name.offset)
            {
              v44 = v41[1];
              ++v41;
              v42 = v44;
            }
          }

          while (v42 != v43);
          v39 = v60.i64[1];
          v40 = v61;
        }
      }

      *(&v62 + 1) = 0;
      v47 = (v40 - v39) >> 3;
      if (v47 >= 3)
      {
        do
        {
          operator delete(*v39);
          v39 = (v60.i64[1] + 8);
          v60.i64[1] = v39;
          v47 = (v61 - v39) >> 3;
        }

        while (v47 > 2);
      }

      if (v47 == 1)
      {
        v48 = 21;
      }

      else
      {
        if (v47 != 2)
        {
LABEL_67:
          v55 = 1;
          v20 = v53;
          goto LABEL_52;
        }

        v48 = 42;
      }

      *&v62 = v48;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_1DAE150(&v60);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v45 = *(v29 + 16);
      *v56 = *v29;
      *&v56[16] = v45;
      v57 = 0uLL;
      *&v56[32] = 0;
      sub_1DA76D8(&v56[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v59[0] = 0;
      sub_1DA7758(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v46 = *(v29 + 80);
      *(&v59[1] + 5) = *(v29 + 85);
      v59[1] = v46;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v59[1] + 24))(v59[1], 0, v56);
      sub_1DAE04C(&v60, v56);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v56[32])
      {
        *&v57 = *&v56[32];
        operator delete(*&v56[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_17B10();
    }

LABEL_52:
    v21 = *(&v62 + 1);
  }

  while (*(&v62 + 1));
  if ((v55 & 1) == 0)
  {
LABEL_70:
    v50 = 0;
    goto LABEL_71;
  }

  v49 = *v52;
  *v49 = v54;
  *(v49 + 8) = v54 + 4 * v20;
  v50 = 1;
  *(v49 + 16) = 1;
LABEL_71:
  sub_1DAEBD8(&v60);
  return v50;
}

uint64_t sub_1DADB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  *v51 = 0;
  memset(&v51[8], 0, 32);
  v52 = 0u;
  memset(v53, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *&v49 = a3;
  *(&v49 + 1) = a3;
  v50 = 0;
  *v45 = 0;
  memset(&v45[8], 0, 32);
  v46 = 0uLL;
  *__p = 0uLL;
  memset(v48, 0, 21);
  sub_1DA6FC4(&v54, v45);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v45[32])
  {
    *&v46 = *&v45[32];
    operator delete(*&v45[32]);
  }

  v41 = a4;
  v13 = v55;
  *(v55 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_1DA705C(v13 - 8, *(a1 + 28), &v49);
  sub_1DA7098(v55 - 5, *(a1 + 32));
  v14 = 0;
  v44 = 0;
  v15 = 0;
  v42 = (a3 - a2) >> 2;
  v43 = a3;
  v16 = v55;
  *(v55 - 2) = v6;
  *(v16 - 2) = a5;
  *(v16 - 4) = a6;
  v17 = (a3 - a2) >> 2;
  do
  {
    v18 = (++v15 & 0xFFF) != 0 || (v15 >> 12) < v17;
    if (!v18)
    {
      sub_17AB8();
    }

    v20 = v16 - 2;
    v19 = *(v16 - 2);
    v21 = v16 - 12;
    if (v19)
    {
      (*(*v19 + 16))(v19, v16 - 12);
    }

    v22 = *v21;
    if (*v21 > -994)
    {
      switch(v22)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v30 = *(v16 - 5);
          *v45 = *v21;
          *&v45[16] = v30;
          v46 = 0uLL;
          *&v45[32] = 0;
          sub_1DA76D8(&v45[32], *(v16 - 8), *(v16 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v16 - 7) - *(v16 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v48[0] = 0;
          sub_1DA7758(__p, *(v16 - 5), *(v16 - 4), (*(v16 - 4) - *(v16 - 5)) >> 4);
          v31 = *v20;
          *(&v48[1] + 5) = *(v16 - 11);
          v48[1] = v31;
          (*(**v20 + 24))(*v20, 1, v16 - 12);
          (*(*v48[1] + 24))(v48[1], 0, v45);
          sub_1DA6FC4(&v54, v45);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v45[32])
          {
            *&v46 = *&v45[32];
            operator delete(*&v45[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_17B10();
      }
    }

    else
    {
      if ((v22 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v22 != -1000)
      {
        goto LABEL_53;
      }

      v23 = *(v16 - 10);
      if ((a5 & 0x20) != 0 && v23 == a2 || (a5 & 0x1000) != 0 && v23 != v43)
      {
LABEL_33:
        v29 = v55 - 12;
        sub_1DA734C(v55 - 12);
        v55 = v29;
        goto LABEL_38;
      }

      v24 = (v23 - *(v16 - 11)) >> 2;
      if ((v44 & (v14 >= v24)) == 0)
      {
        v25 = *(v16 - 5);
        *v51 = *v21;
        *&v51[16] = v25;
        if (v51 != v21)
        {
          sub_1DAED88(&v51[32], *(v16 - 8), *(v16 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v16 - 7) - *(v16 - 8)) >> 3));
          sub_1DAEF14(v53, *(v16 - 5), *(v16 - 4), (*(v16 - 4) - *(v16 - 5)) >> 4);
        }

        v26 = *v20;
        *(&v53[3] + 5) = *(v16 - 11);
        v53[3] = v26;
        v14 = v24;
      }

      v27 = v55;
      if (v14 == v42)
      {
        v28 = v54;
        while (v27 != v28)
        {
          v27 -= 12;
          sub_1DA734C(v27);
        }

        v55 = v28;
        v44 = 1;
        v14 = v42;
      }

      else
      {
        v32 = v55 - 12;
        sub_1DA734C(v55 - 12);
        v55 = v32;
        v44 = 1;
      }
    }

LABEL_38:
    v16 = v55;
  }

  while (v54 != v55);
  if ((v44 & 1) == 0)
  {
LABEL_47:
    v39 = 0;
    goto LABEL_48;
  }

  v33 = *v41;
  *v33 = a2;
  *(v33 + 8) = a2 + 4 * v14;
  *(v33 + 16) = 1;
  if (v52 != *&v51[32])
  {
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v52 - *&v51[32]) >> 3);
    v35 = (*&v51[32] + 16);
    v36 = 1;
    do
    {
      v37 = v33 + 24 * v36;
      *v37 = *(v35 - 1);
      v38 = *v35;
      v35 += 24;
      *(v37 + 16) = v38;
      v18 = v34 > v36++;
    }

    while (v18);
  }

  v39 = 1;
LABEL_48:
  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }

  if (*&v51[32])
  {
    *&v52 = *&v51[32];
    operator delete(*&v51[32]);
  }

  *v51 = &v54;
  sub_1DA7808(v51);
  return v39;
}

void sub_1DADFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_17A74(&a13);
  sub_17A74(&a29);
  a29 = v29 - 120;
  sub_1DA7808(&a29);
  _Unwind_Resume(a1);
}

__n128 sub_1DAE04C(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1DAE2CC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  result = *(a2 + 56);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 80) = v11;
  ++a1[5];
  return result;
}

uint64_t sub_1DAE150(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_1DA734C((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_1DAE910(a1, 1);
}

int64x2_t sub_1DAE1D8(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1DAE988(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_22661F0);
  a1[2] = result;
  return result;
}

void *sub_1DAE2CC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1DAE8C8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1DAE4A0(a1, &v10);
}

void sub_1DAE454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1DAE4A0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1DAE8C8(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1DAE5A8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1DAE8C8(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_1DAE6B4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1DAE8C8(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1DAE7BC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1DAE8C8(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1DAE8C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1DAE910(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

const void **sub_1DAE988(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_1DAE8C8(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_1DAE5A8(a1, v11);
}

void sub_1DAEB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1DAEBD8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_1DA734C(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1DAED38(a1);
}

uint64_t sub_1DAED38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

_BYTE *sub_1DAED88(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
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

      sub_1DA6F20(a1, v11);
    }

    sub_1794();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_1DAEF14(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1DA77CC(a1, v10);
    }

    sub_1794();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_1DAF038(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1DAF074(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_1DAF074(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DA6F6C(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t sub_1DAF1F0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v3 = (a1 + 16);
    v4 = *(a2 + 16);
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(a1 + 39) = v5;
    if (v5)
    {
      memmove(v3, v4, v5);
    }

    *(v3 + v6) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_1DAF2D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DAF300(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 4)
  {
    if (a3 < 0x3FFFFFFFFFFFFFF8)
    {
      if ((a3 | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (a3 | 1) + 1;
      }

      sub_196396C(__dst, v3);
    }

    sub_3244();
  }

  __dst[23] = a3;
  v4 = 4 * a3 + 4;

  return memmove(__dst, __src, v4);
}

void sub_1DAF39C(std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  operator delete();
}

void sub_1DAF3F8(unint64_t **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v9 = *v4;
      sub_19E26A4(v9, a2, v7);
      if (v8 == 1)
      {
        sub_1DAF4D0(a3, &v9);
        if (v8)
        {
          sub_165674C(v7);
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_1DAF49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1)
  {
    sub_165674C(&a10);
  }

  sub_19C591C(v43, *(v43 + 8));
  _Unwind_Resume(a1);
}

void *sub_1DAF4D0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1DAF594();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1DAF618()
{
  __chkstk_darwin();
  sub_3608D0(&v1245, "AW");
  sub_3608D0(&v1242, "ABW");
  v1244 = 40;
  sub_195E43C(v1247, &v1245, &v1242);
  sub_3608D0(&v1240, "AF");
  sub_3608D0(&v1237, "AFG");
  v1239 = 41;
  sub_195E43C(&v1248, &v1240, &v1237);
  sub_3608D0(&v1235, "AO");
  sub_3608D0(&v1232, "AGO");
  v1234 = 42;
  sub_195E43C(&v1249, &v1235, &v1232);
  sub_3608D0(&v1230, "AI");
  sub_3608D0(&v1227, "AIA");
  v1229 = 43;
  sub_195E43C(&v1250, &v1230, &v1227);
  sub_3608D0(&v1225, "AX");
  sub_3608D0(&v1222, "ALA");
  v1224 = 246;
  sub_195E43C(&v1251, &v1225, &v1222);
  sub_3608D0(&v1220, "AL");
  sub_3608D0(&v1217, "ALB");
  v1219 = 76;
  sub_195E43C(&v1252, &v1220, &v1217);
  sub_3608D0(&v1215, "AD");
  sub_3608D0(&v1212, "AND");
  v1214 = 78;
  sub_195E43C(&v1253, &v1215, &v1212);
  sub_3608D0(&v1210, "AN");
  sub_3608D0(&v1207, "ANT");
  v1209 = 44;
  sub_195E43C(&v1254, &v1210, &v1207);
  sub_3608D0(&v1205, "AE");
  sub_3608D0(&v1202, "ARE");
  v1204 = 2;
  sub_195E43C(&v1255, &v1205, &v1202);
  sub_3608D0(&v1200, "AR");
  sub_3608D0(&v1197, "ARG");
  v1199 = 80;
  sub_195E43C(&v1256, &v1200, &v1197);
  sub_3608D0(&v1195, "AM");
  sub_3608D0(&v1192, "ARM");
  v1194 = 45;
  sub_195E43C(&v1257, &v1195, &v1192);
  sub_3608D0(&v1190, "AS");
  sub_3608D0(&v1187, "ASM");
  v1189 = 77;
  sub_195E43C(&v1258, &v1190, &v1187);
  sub_3608D0(&v1185, "AQ");
  sub_3608D0(&v1182, "ATA");
  v1184 = 46;
  sub_195E43C(&v1259, &v1185, &v1182);
  sub_3608D0(&v1180, "TF");
  sub_3608D0(&v1177, "ATF");
  v1179 = 125;
  sub_195E43C(&v1260, &v1180, &v1177);
  sub_3608D0(&v1175, "AG");
  sub_3608D0(&v1172, "ATG");
  v1174 = 79;
  sub_195E43C(&v1261, &v1175, &v1172);
  sub_3608D0(&v1170, "AU");
  sub_3608D0(&v1167, "AUS");
  v1169 = 22;
  sub_195E43C(&v1262, &v1170, &v1167);
  sub_3608D0(&v1165, "AT");
  sub_3608D0(&v1162, "AUT");
  v1164 = 81;
  sub_195E43C(&v1263, &v1165, &v1162);
  sub_3608D0(&v1160, "AZ");
  sub_3608D0(&v1157, "AZE");
  v1159 = 82;
  sub_195E43C(&v1264, &v1160, &v1157);
  sub_3608D0(&v1155, "BI");
  sub_3608D0(&v1152, "BDI");
  v1154 = 96;
  sub_195E43C(&v1265, &v1155, &v1152);
  sub_3608D0(&v1150, "BE");
  sub_3608D0(&v1147, "BEL");
  v1149 = 87;
  sub_195E43C(&v1266, &v1150, &v1147);
  sub_3608D0(&v1145, "BJ");
  sub_3608D0(&v1142, "BEN");
  v1144 = 3;
  sub_195E43C(&v1267, &v1145, &v1142);
  sub_3608D0(&v1140, "BQ");
  sub_3608D0(&v1137, "BES");
  v1139 = 248;
  sub_195E43C(&v1268, &v1140, &v1137);
  sub_3608D0(&v1135, "BF");
  sub_3608D0(&v1132, "BFA");
  v1134 = 11;
  sub_195E43C(&v1269, &v1135, &v1132);
  sub_3608D0(&v1130, "BD");
  sub_3608D0(&v1127, "BGD");
  v1129 = 84;
  sub_195E43C(&v1270, &v1130, &v1127);
  sub_3608D0(&v1125, "BG");
  sub_3608D0(&v1122, "BGR");
  v1124 = 95;
  sub_195E43C(&v1271, &v1125, &v1122);
  sub_3608D0(&v1120, "BH");
  sub_3608D0(&v1117, "BHR");
  v1119 = 12;
  sub_195E43C(&v1272, &v1120, &v1117);
  sub_3608D0(&v1115, "BS");
  sub_3608D0(&v1112, "BHS");
  v1114 = 83;
  sub_195E43C(&v1273, &v1115, &v1112);
  sub_3608D0(&v1110, "BA");
  sub_3608D0(&v1107, "BIH");
  v1109 = 92;
  sub_195E43C(&v1274, &v1110, &v1107);
  sub_3608D0(&v1105, "BL");
  sub_3608D0(&v1102, "BLM");
  v1104 = 237;
  sub_195E43C(&v1275, &v1105, &v1102);
  sub_3608D0(&v1100, "BY");
  sub_3608D0(&v1097, "BLR");
  v1099 = 86;
  sub_195E43C(&v1276, &v1100, &v1097);
  sub_3608D0(&v1095, "BZ");
  sub_3608D0(&v1092, "BLZ");
  v1094 = 88;
  sub_195E43C(&v1277, &v1095, &v1092);
  sub_3608D0(&v1090, "BM");
  sub_3608D0(&v1087, "BMU");
  v1089 = 89;
  sub_195E43C(&v1278, &v1090, &v1087);
  sub_3608D0(&v1085, "BO");
  sub_3608D0(&v1082, "BOL");
  v1084 = 91;
  sub_195E43C(&v1279, &v1085, &v1082);
  sub_3608D0(&v1080, "BR");
  sub_3608D0(&v1077, "BRA");
  v1079 = 25;
  sub_195E43C(&v1280, &v1080, &v1077);
  sub_3608D0(&v1075, "BB");
  sub_3608D0(&v1072, "BRB");
  v1074 = 85;
  sub_195E43C(&v1281, &v1075, &v1072);
  sub_3608D0(&v1070, "BN");
  sub_3608D0(&v1067, "BRN");
  v1069 = 94;
  sub_195E43C(&v1282, &v1070, &v1067);
  sub_3608D0(&v1065, "BT");
  sub_3608D0(&v1062, "BTN");
  v1064 = 90;
  sub_195E43C(&v1283, &v1065, &v1062);
  sub_3608D0(&v1060, "BV");
  sub_3608D0(&v1057, "BVT");
  v1059 = 245;
  sub_195E43C(&v1284, &v1060, &v1057);
  sub_3608D0(&v1055, "BW");
  sub_3608D0(&v1052, "BWA");
  v1054 = 93;
  sub_195E43C(&v1285, &v1055, &v1052);
  sub_3608D0(&v1050, "CF");
  sub_3608D0(&v1047, "CAF");
  v1049 = 63;
  sub_195E43C(&v1286, &v1050, &v1047);
  sub_3608D0(&v1045, "CA");
  sub_3608D0(&v1042, "CAN");
  v1044 = 98;
  sub_195E43C(&v1287, &v1045, &v1042);
  sub_3608D0(&v1040, "CC");
  sub_3608D0(&v1037, "CCK");
  v1039 = 47;
  sub_195E43C(&v1288, &v1040, &v1037);
  sub_3608D0(&v1035, "CH");
  sub_3608D0(&v1032, "CHE");
  v1034 = 211;
  sub_195E43C(&v1289, &v1035, &v1032);
  sub_3608D0(&v1030, "CL");
  sub_3608D0(&v1027, "CHL");
  v1029 = 102;
  sub_195E43C(&v1290, &v1030, &v1027);
  sub_3608D0(&v1025, "CN");
  sub_3608D0(&v1022, "CHN");
  v1024 = 4;
  sub_195E43C(&v1291, &v1025, &v1022);
  sub_3608D0(&v1020, "CI");
  sub_3608D0(&v1017, "CIV");
  v1019 = 26;
  sub_195E43C(&v1292, &v1020, &v1017);
  sub_3608D0(&v1015, "CM");
  sub_3608D0(&v1012, "CMR");
  v1014 = 27;
  sub_195E43C(&v1293, &v1015, &v1012);
  sub_3608D0(&v1010, "CD");
  sub_3608D0(&v1007, "COD");
  v1009 = 106;
  sub_195E43C(&v1294, &v1010, &v1007);
  sub_3608D0(&v1005, "CG");
  sub_3608D0(&v1002, "COG");
  v1004 = 105;
  sub_195E43C(&v1295, &v1005, &v1002);
  sub_3608D0(&v1000, "CK");
  sub_3608D0(&v997, "COK");
  v999 = 107;
  sub_195E43C(&v1296, &v1000, &v997);
  sub_3608D0(&v995, "CO");
  sub_3608D0(&v992, "COL");
  v994 = 28;
  sub_195E43C(&v1297, &v995, &v992);
  sub_3608D0(&v990, "KM");
  sub_3608D0(&v987, "COM");
  v989 = 104;
  sub_195E43C(&v1298, &v990, &v987);
  sub_3608D0(&v985, "CV");
  sub_3608D0(&v982, "CPV");
  v984 = 99;
  sub_195E43C(&v1299, &v985, &v982);
  sub_3608D0(&v980, "CR");
  sub_3608D0(&v977, "CRI");
  v979 = 13;
  sub_195E43C(&v1300, &v980, &v977);
  sub_3608D0(&v975, "CU");
  sub_3608D0(&v972, "CUB");
  v974 = 109;
  sub_195E43C(&v1301, &v975, &v972);
  sub_3608D0(&v970, "CW");
  sub_3608D0(&v967, "CUW");
  v969 = 247;
  sub_195E43C(&v1302, &v970, &v967);
  sub_3608D0(&v965, "CX");
  sub_3608D0(&v962, "CXR");
  v964 = 103;
  sub_195E43C(&v1303, &v965, &v962);
  sub_3608D0(&v960, "KY");
  sub_3608D0(&v957, "CYM");
  v959 = 100;
  sub_195E43C(&v1304, &v960, &v957);
  sub_3608D0(&v955, "CY");
  sub_3608D0(&v952, "CYP");
  v954 = 110;
  sub_195E43C(&v1305, &v955, &v952);
  sub_3608D0(&v950, "CZ");
  sub_3608D0(&v947, "CZE");
  v949 = 111;
  sub_195E43C(&v1306, &v950, &v947);
  sub_3608D0(&v945, "DE");
  sub_3608D0(&v942, "DEU");
  v944 = 129;
  sub_195E43C(&v1307, &v945, &v942);
  sub_3608D0(&v940, "DJ");
  sub_3608D0(&v937, "DJI");
  v939 = 113;
  sub_195E43C(&v1308, &v940, &v937);
  sub_3608D0(&v935, "DM");
  sub_3608D0(&v932, "DMA");
  v934 = 114;
  sub_195E43C(&v1309, &v935, &v932);
  sub_3608D0(&v930, "DK");
  sub_3608D0(&v927, "DNK");
  v929 = 112;
  sub_195E43C(&v1310, &v930, &v927);
  sub_3608D0(&v925, "DO");
  sub_3608D0(&v922, "DOM");
  v924 = 29;
  sub_195E43C(&v1311, &v925, &v922);
  sub_3608D0(&v920, "DZ");
  sub_3608D0(&v917, "DZA");
  v919 = 0;
  sub_195E43C(&v1312, &v920, &v917);
  sub_3608D0(&v915, "EC");
  sub_3608D0(&v912, "ECU");
  v914 = 30;
  sub_195E43C(&v1313, &v915, &v912);
  sub_3608D0(&v910, "EG");
  sub_3608D0(&v907, "EGY");
  v909 = 64;
  sub_195E43C(&v1314, &v910, &v907);
  sub_3608D0(&v905, "ER");
  sub_3608D0(&v902, "ERI");
  v904 = 116;
  sub_195E43C(&v1315, &v905, &v902);
  sub_3608D0(&v900, "EH");
  sub_3608D0(&v897, "ESH");
  v899 = 65;
  sub_195E43C(&v1316, &v900, &v897);
  sub_3608D0(&v895, "ES");
  sub_3608D0(&v892, "ESP");
  v894 = 206;
  sub_195E43C(&v1317, &v895, &v892);
  sub_3608D0(&v890, "EE");
  sub_3608D0(&v887, "EST");
  v889 = 117;
  sub_195E43C(&v1318, &v890, &v887);
  sub_3608D0(&v885, "ET");
  sub_3608D0(&v882, "ETH");
  v884 = 31;
  sub_195E43C(&v1319, &v885, &v882);
  sub_3608D0(&v880, "FI");
  sub_3608D0(&v877, "FIN");
  v879 = 121;
  sub_195E43C(&v1320, &v880, &v877);
  sub_3608D0(&v875, "FJ");
  sub_3608D0(&v872, "FJI");
  v874 = 120;
  sub_195E43C(&v1321, &v875, &v872);
  sub_3608D0(&v870, "FK");
  sub_3608D0(&v867, "FLK");
  v869 = 118;
  sub_195E43C(&v1322, &v870, &v867);
  sub_3608D0(&v865, "FR");
  sub_3608D0(&v862, "FRA");
  v864 = 122;
  sub_195E43C(&v1323, &v865, &v862);
  sub_3608D0(&v860, "FO");
  sub_3608D0(&v857, "FRO");
  v859 = 119;
  sub_195E43C(&v1324, &v860, &v857);
  sub_3608D0(&v855, "FM");
  sub_3608D0(&v852, "FSM");
  v854 = 166;
  sub_195E43C(&v1325, &v855, &v852);
  sub_3608D0(&v850, "GA");
  sub_3608D0(&v847, "GAB");
  v849 = 126;
  sub_195E43C(&v1326, &v850, &v847);
  sub_3608D0(&v845, "GB");
  sub_3608D0(&v842, "GBR");
  v844 = 225;
  sub_195E43C(&v1327, &v845, &v842);
  sub_3608D0(&v840, "GE");
  sub_3608D0(&v837, "GEO");
  v839 = 128;
  sub_195E43C(&v1328, &v840, &v837);
  sub_3608D0(&v835, "GG");
  sub_3608D0(&v832, "GGY");
  v834 = 256;
  sub_195E43C(&v1329, &v835, &v832);
  sub_3608D0(&v830, "GH");
  sub_3608D0(&v827, "GHA");
  v829 = 66;
  sub_195E43C(&v1330, &v830, &v827);
  sub_3608D0(&v825, "GI");
  sub_3608D0(&v822, "GIB");
  v824 = 67;
  sub_195E43C(&v1331, &v825, &v822);
  sub_3608D0(&v820, "GN");
  sub_3608D0(&v817, "GIN");
  v819 = 135;
  sub_195E43C(&v1332, &v820, &v817);
  sub_3608D0(&v815, "GP");
  sub_3608D0(&v812, "GLP");
  v814 = 133;
  sub_195E43C(&v1333, &v815, &v812);
  sub_3608D0(&v810, "GM");
  sub_3608D0(&v807, "GMB");
  v809 = 127;
  sub_195E43C(&v1334, &v810, &v807);
  sub_3608D0(&v805, "GW");
  sub_3608D0(&v802, "GNB");
  v804 = 68;
  sub_195E43C(&v1335, &v805, &v802);
  sub_3608D0(&v800, "GQ");
  sub_3608D0(&v797, "GNQ");
  v799 = 115;
  sub_195E43C(&v1336, &v800, &v797);
  sub_3608D0(&v795, "GR");
  sub_3608D0(&v792, "GRC");
  v794 = 130;
  sub_195E43C(&v1337, &v795, &v792);
  sub_3608D0(&v790, "GD");
  sub_3608D0(&v787, "GRD");
  v789 = 132;
  sub_195E43C(&v1338, &v790, &v787);
  sub_3608D0(&v785, "GL");
  sub_3608D0(&v782, "GRL");
  v784 = 131;
  sub_195E43C(&v1339, &v785, &v782);
  sub_3608D0(&v780, "GT");
  sub_3608D0(&v777, "GTM");
  v779 = 32;
  sub_195E43C(&v1340, &v780, &v777);
  sub_3608D0(&v775, "GF");
  sub_3608D0(&v772, "GUF");
  v774 = 123;
  sub_195E43C(&v1341, &v775, &v772);
  sub_3608D0(&v770, "GU");
  sub_3608D0(&v767, "GUM");
  v769 = 134;
  sub_195E43C(&v1342, &v770, &v767);
  sub_3608D0(&v765, "GY");
  sub_3608D0(&v762, "GUY");
  v764 = 136;
  sub_195E43C(&v1343, &v765, &v762);
  sub_3608D0(&v760, "HK");
  sub_3608D0(&v757, "HKG");
  v759 = 5;
  sub_195E43C(&v1344, &v760, &v757);
  sub_3608D0(&v755, "HM");
  sub_3608D0(&v752, "HMD");
  v754 = 240;
  sub_195E43C(&v1345, &v755, &v752);
  sub_3608D0(&v750, "HN");
  sub_3608D0(&v747, "HND");
  v749 = 14;
  sub_195E43C(&v1346, &v750, &v747);
  sub_3608D0(&v745, "HR");
  sub_3608D0(&v742, "HRV");
  v744 = 108;
  sub_195E43C(&v1347, &v745, &v742);
  sub_3608D0(&v740, "HT");
  sub_3608D0(&v737, "HTI");
  v739 = 137;
  sub_195E43C(&v1348, &v740, &v737);
  sub_3608D0(&v735, "HU");
  sub_3608D0(&v732, "HUN");
  v734 = 138;
  sub_195E43C(&v1349, &v735, &v732);
  sub_3608D0(&v730, "ID");
  sub_3608D0(&v727, "IDN");
  v729 = 69;
  sub_195E43C(&v1350, &v730, &v727);
  sub_3608D0(&v725, "IM");
  sub_3608D0(&v722, "IMN");
  v724 = 255;
  sub_195E43C(&v1351, &v725, &v722);
  sub_3608D0(&v720, "IN");
  sub_3608D0(&v717, "IND");
  v719 = 140;
  sub_195E43C(&v1352, &v720, &v717);
  sub_3608D0(&v715, "IO");
  sub_3608D0(&v712, "IOT");
  v714 = 48;
  sub_195E43C(&v1353, &v715, &v712);
  sub_3608D0(&v710, "IE");
  sub_3608D0(&v707, "IRL");
  v709 = 143;
  sub_195E43C(&v1354, &v710, &v707);
  sub_3608D0(&v705, "IR");
  sub_3608D0(&v702, "IRN");
  v704 = 141;
  sub_195E43C(&v1355, &v705, &v702);
  sub_3608D0(&v700, "IQ");
  sub_3608D0(&v697, "IRQ");
  v699 = 142;
  sub_195E43C(&v1356, &v700, &v697);
  sub_3608D0(&v695, "IS");
  sub_3608D0(&v692, "ISL");
  v694 = 139;
  sub_195E43C(&v1357, &v695, &v692);
  sub_3608D0(&v690, "IL");
  sub_3608D0(&v687, "ISR");
  v689 = 75;
  sub_195E43C(&v1358, &v690, &v687);
  sub_3608D0(&v685, "IT");
  sub_3608D0(&v682, "ITA");
  v684 = 144;
  sub_195E43C(&v1359, &v685, &v682);
  sub_3608D0(&v680, "JM");
  sub_3608D0(&v677, "JAM");
  v679 = 15;
  sub_195E43C(&v1360, &v680, &v677);
  sub_3608D0(&v675, "JE");
  sub_3608D0(&v672, "JEY");
  v674 = 254;
  sub_195E43C(&v1361, &v675, &v672);
  sub_3608D0(&v670, "JO");
  sub_3608D0(&v667, "JOR");
  v669 = 33;
  sub_195E43C(&v1362, &v670, &v667);
  sub_3608D0(&v665, "JP");
  sub_3608D0(&v662, "JPN");
  v664 = 10;
  sub_195E43C(&v1363, &v665, &v662);
  sub_3608D0(&v660, "KZ");
  sub_3608D0(&v657, "KAZ");
  v659 = 145;
  sub_195E43C(&v1364, &v660, &v657);
  sub_3608D0(&v655, "KE");
  sub_3608D0(&v652, "KEN");
  v654 = 34;
  sub_195E43C(&v1365, &v655, &v652);
  sub_3608D0(&v650, "KG");
  sub_3608D0(&v647, "KGZ");
  v649 = 149;
  sub_195E43C(&v1366, &v650, &v647);
  sub_3608D0(&v645, "KH");
  sub_3608D0(&v642, "KHM");
  v644 = 97;
  sub_195E43C(&v1367, &v645, &v642);
  sub_3608D0(&v640, "KI");
  sub_3608D0(&v637, "KIR");
  v639 = 146;
  sub_195E43C(&v1368, &v640, &v637);
  sub_3608D0(&v635, "KN");
  sub_3608D0(&v632, "KNA");
  v634 = 193;
  sub_195E43C(&v1369, &v635, &v632);
  sub_3608D0(&v630, "KR");
  sub_3608D0(&v627, "KOR");
  v629 = 148;
  sub_195E43C(&v1370, &v630, &v627);
  sub_3608D0(&v625, "KW");
  sub_3608D0(&v622, "KWT");
  v624 = 16;
  sub_195E43C(&v1371, &v625, &v622);
  sub_3608D0(&v620, "LA");
  sub_3608D0(&v617, "LAO");
  v619 = 150;
  sub_195E43C(&v1372, &v620, &v617);
  sub_3608D0(&v615, "LB");
  sub_3608D0(&v612, "LBN");
  v614 = 152;
  sub_195E43C(&v1373, &v615, &v612);
  sub_3608D0(&v610, "LR");
  sub_3608D0(&v607, "LBR");
  v609 = 153;
  sub_195E43C(&v1374, &v610, &v607);
  sub_3608D0(&v605, "LY");
  sub_3608D0(&v602, "LBY");
  v604 = 154;
  sub_195E43C(&v1375, &v605, &v602);
  sub_3608D0(&v600, "LC");
  sub_3608D0(&v597, "LCA");
  v599 = 194;
  sub_195E43C(&v1376, &v600, &v597);
  sub_3608D0(&v595, "LI");
  sub_3608D0(&v592, "LIE");
  v594 = 70;
  sub_195E43C(&v1377, &v595, &v592);
  sub_3608D0(&v590, "LK");
  sub_3608D0(&v587, "LKA");
  v589 = 207;
  sub_195E43C(&v1378, &v590, &v587);
  sub_3608D0(&v585, "LS");
  sub_3608D0(&v582, "LSO");
  v584 = 49;
  sub_195E43C(&v1379, &v585, &v582);
  sub_3608D0(&v580, "LT");
  sub_3608D0(&v577, "LTU");
  v579 = 155;
  sub_195E43C(&v1380, &v580, &v577);
  sub_3608D0(&v575, "LU");
  sub_3608D0(&v572, "LUX");
  v574 = 156;
  sub_195E43C(&v1381, &v575, &v572);
  sub_3608D0(&v570, "LV");
  sub_3608D0(&v567, "LVA");
  v569 = 151;
  sub_195E43C(&v1382, &v570, &v567);
  sub_3608D0(&v565, "MO");
  sub_3608D0(&v562, "MAC");
  v564 = 157;
  sub_195E43C(&v1383, &v565, &v562);
  sub_3608D0(&v560, "MF");
  sub_3608D0(&v557, "MAF");
  v559 = 236;
  sub_195E43C(&v1384, &v560, &v557);
  sub_3608D0(&v555, "MA");
  sub_3608D0(&v552, "MAR");
  v554 = 171;
  sub_195E43C(&v1385, &v555, &v552);
  sub_3608D0(&v550, "MC");
  sub_3608D0(&v547, "MCO");
  v549 = 71;
  sub_195E43C(&v1386, &v550, &v547);
  sub_3608D0(&v545, "MD");
  sub_3608D0(&v542, "MDA");
  v544 = 167;
  sub_195E43C(&v1387, &v545, &v542);
  sub_3608D0(&v540, "MG");
  sub_3608D0(&v537, "MDG");
  v539 = 159;
  sub_195E43C(&v1388, &v540, &v537);
  sub_3608D0(&v535, "MV");
  sub_3608D0(&v532, "MDV");
  v534 = 50;
  sub_195E43C(&v1389, &v535, &v532);
  sub_3608D0(&v530, "MX");
  sub_3608D0(&v527, "MEX");
  v529 = 165;
  sub_195E43C(&v1390, &v530, &v527);
  sub_3608D0(&v525, "MH");
  sub_3608D0(&v522, "MHL");
  v524 = 51;
  sub_195E43C(&v1391, &v525, &v522);
  sub_3608D0(&v520, "MK");
  sub_3608D0(&v517, "MKD");
  v519 = 158;
  sub_195E43C(&v1392, &v520, &v517);
  sub_3608D0(&v515, "ML");
  sub_3608D0(&v512, "MLI");
  v514 = 17;
  sub_195E43C(&v1393, &v515, &v512);
  sub_3608D0(&v510, "MT");
  sub_3608D0(&v507, "MLT");
  v509 = 162;
  sub_195E43C(&v1394, &v510, &v507);
  sub_3608D0(&v505, "MM");
  sub_3608D0(&v502, "MMR");
  v504 = 173;
  sub_195E43C(&v1395, &v505, &v502);
  sub_3608D0(&v500, "ME");
  sub_3608D0(&v497, "MNE");
  v499 = 169;
  sub_195E43C(&v1396, &v500, &v497);
  sub_3608D0(&v495, "MN");
  sub_3608D0(&v492, "MNG");
  v494 = 168;
  sub_195E43C(&v1397, &v495, &v492);
  sub_3608D0(&v490, "MP");
  sub_3608D0(&v487, "MNP");
  v489 = 179;
  sub_195E43C(&v1398, &v490, &v487);
  sub_3608D0(&v485, "MZ");
  sub_3608D0(&v482, "MOZ");
  v484 = 172;
  sub_195E43C(&v1399, &v485, &v482);
  sub_3608D0(&v480, "MR");
  sub_3608D0(&v477, "MRT");
  v479 = 163;
  sub_195E43C(&v1400, &v480, &v477);
  sub_3608D0(&v475, "MS");
  sub_3608D0(&v472, "MSR");
  v474 = 170;
  sub_195E43C(&v1401, &v475, &v472);
  sub_3608D0(&v470, "MQ");
  sub_3608D0(&v467, "MTQ");
  v469 = 52;
  sub_195E43C(&v1402, &v470, &v467);
  sub_3608D0(&v465, "MU");
  sub_3608D0(&v462, "MUS");
  v464 = 164;
  sub_195E43C(&v1403, &v465, &v462);
  sub_3608D0(&v460, "MW");
  sub_3608D0(&v457, "MWI");
  v459 = 160;
  sub_195E43C(&v1404, &v460, &v457);
  sub_3608D0(&v455, "MY");
  sub_3608D0(&v452, "MYS");
  v454 = 161;
  sub_195E43C(&v1405, &v455, &v452);
  sub_3608D0(&v450, "YT");
  sub_3608D0(&v447, "MYT");
  v449 = 53;
  sub_195E43C(&v1406, &v450, &v447);
  sub_3608D0(&v445, "NA");
  sub_3608D0(&v442, "NAM");
  v444 = 174;
  sub_195E43C(&v1407, &v445, &v442);
  sub_3608D0(&v440, "NC");
  sub_3608D0(&v437, "NCL");
  v439 = 177;
  sub_195E43C(&v1408, &v440, &v437);
  sub_3608D0(&v435, "NE");
  sub_3608D0(&v432, "NER");
  v434 = 35;
  sub_195E43C(&v1409, &v435, &v432);
  sub_3608D0(&v430, "NF");
  sub_3608D0(&v427, "NFK");
  v429 = 23;
  sub_195E43C(&v1410, &v430, &v427);
  sub_3608D0(&v425, "NG");
  sub_3608D0(&v422, "NGA");
  v424 = 6;
  sub_195E43C(&v1411, &v425, &v422);
  sub_3608D0(&v420, "NI");
  sub_3608D0(&v417, "NIC");
  v419 = 18;
  sub_195E43C(&v1412, &v420, &v417);
  sub_3608D0(&v415, "NU");
  sub_3608D0(&v412, "NIU");
  v414 = 178;
  sub_195E43C(&v1413, &v415, &v412);
  sub_3608D0(&v410, "NL");
  sub_3608D0(&v407, "NLD");
  v409 = 176;
  sub_195E43C(&v1414, &v410, &v407);
  sub_3608D0(&v405, "NO");
  sub_3608D0(&v402, "NOR");
  v404 = 180;
  sub_195E43C(&v1415, &v405, &v402);
  sub_3608D0(&v400, "NP");
  sub_3608D0(&v397, "NPL");
  v399 = 175;
  sub_195E43C(&v1416, &v400, &v397);
  sub_3608D0(&v395, "NR");
  sub_3608D0(&v392, "NRU");
  v394 = 54;
  sub_195E43C(&v1417, &v395, &v392);
  sub_3608D0(&v390, "NZ");
  sub_3608D0(&v387, "NZL");
  v389 = 24;
  sub_195E43C(&v1418, &v390, &v387);
  sub_3608D0(&v385, "OM");
  sub_3608D0(&v382, "OMN");
  v384 = 7;
  sub_195E43C(&v1419, &v385, &v382);
  sub_3608D0(&v380, "PA");
  sub_3608D0(&v377, "PAN");
  v379 = 19;
  sub_195E43C(&v1420, &v380, &v377);
  sub_3608D0(&v375, "PE");
  sub_3608D0(&v372, "PER");
  v374 = 184;
  sub_195E43C(&v1421, &v375, &v372);
  sub_3608D0(&v370, "PF");
  sub_3608D0(&v367, "PYF");
  v369 = 124;
  sub_195E43C(&v1422, &v370, &v367);
  sub_3608D0(&v365, "PG");
  sub_3608D0(&v362, "PNG");
  v364 = 56;
  sub_195E43C(&v1423, &v365, &v362);
  sub_3608D0(&v360, "PH");
  sub_3608D0(&v357, "PHL");
  v359 = 185;
  sub_195E43C(&v1424, &v360, &v357);
  sub_3608D0(&v355, "PK");
  sub_3608D0(&v352, "PAK");
  v354 = 181;
  sub_195E43C(&v1425, &v355, &v352);
  sub_3608D0(&v350, "PL");
  sub_3608D0(&v347, "POL");
  v349 = 186;
  sub_195E43C(&v1426, &v350, &v347);
  sub_3608D0(&v345, "PM");
  sub_3608D0(&v342, "SPM");
  v344 = 241;
  sub_195E43C(&v1427, &v345, &v342);
  sub_3608D0(&v340, "PN");
  sub_3608D0(&v337, "PCN");
  v339 = 55;
  sub_195E43C(&v1428, &v340, &v337);
  sub_3608D0(&v335, "PR");
  sub_3608D0(&v332, "PRI");
  v334 = 253;
  sub_195E43C(&v1429, &v335, &v332);
  sub_3608D0(&v330, "PS");
  sub_3608D0(&v327, "PSE");
  v329 = 36;
  sub_195E43C(&v1430, &v330, &v327);
  sub_3608D0(&v325, "PT");
  sub_3608D0(&v322, "PRT");
  v324 = 187;
  sub_195E43C(&v1431, &v325, &v322);
  sub_3608D0(&v320, "PW");
  sub_3608D0(&v317, "PLW");
  v319 = 182;
  sub_195E43C(&v1432, &v320, &v317);
  sub_3608D0(&v315, "PY");
  sub_3608D0(&v312, "PRY");
  v314 = 183;
  sub_195E43C(&v1433, &v315, &v312);
  sub_3608D0(&v310, "QA");
  sub_3608D0(&v307, "QAT");
  v309 = 8;
  sub_195E43C(&v1434, &v310, &v307);
  sub_3608D0(&v305, "RE");
  sub_3608D0(&v302, "REU");
  v304 = 188;
  sub_195E43C(&v1435, &v305, &v302);
  sub_3608D0(&v300, "RO");
  sub_3608D0(&v297, "ROU");
  v299 = 189;
  sub_195E43C(&v1436, &v300, &v297);
  sub_3608D0(&v295, "RS");
  sub_3608D0(&v292, "SRB");
  v294 = 199;
  sub_195E43C(&v1437, &v295, &v292);
  sub_3608D0(&v290, "RU");
  sub_3608D0(&v287, "RUS");
  v289 = 190;
  sub_195E43C(&v1438, &v290, &v287);
  sub_3608D0(&v285, "RW");
  sub_3608D0(&v282, "RWA");
  v284 = 191;
  sub_195E43C(&v1439, &v285, &v282);
  sub_3608D0(&v280, "SA");
  sub_3608D0(&v277, "SAU");
  v279 = 20;
  sub_195E43C(&v1440, &v280, &v277);
  sub_3608D0(&v275, "SB");
  sub_3608D0(&v272, "SLB");
  v274 = 58;
  sub_195E43C(&v1441, &v275, &v272);
  sub_3608D0(&v270, "SC");
  sub_3608D0(&v267, "SYC");
  v269 = 200;
  sub_195E43C(&v1442, &v270, &v267);
  sub_3608D0(&v265, "SD");
  sub_3608D0(&v262, "SDN");
  v264 = 208;
  sub_195E43C(&v1443, &v265, &v262);
  sub_3608D0(&v260, "SE");
  sub_3608D0(&v257, "SWE");
  v259 = 210;
  sub_195E43C(&v1444, &v260, &v257);
  sub_3608D0(&v255, "SG");
  sub_3608D0(&v252, "SGP");
  v254 = 202;
  sub_195E43C(&v1445, &v255, &v252);
  sub_3608D0(&v250, "SH");
  sub_3608D0(&v247, "SHN");
  v249 = 192;
  sub_195E43C(&v1446, &v250, &v247);
  sub_3608D0(&v245, "SI");
  sub_3608D0(&v242, "SVN");
  v244 = 204;
  sub_195E43C(&v1447, &v245, &v242);
  sub_3608D0(&v240, "SJ");
  sub_3608D0(&v237, "SJM");
  v239 = 72;
  sub_195E43C(&v1448, &v240, &v237);
  sub_3608D0(&v235, "SK");
  sub_3608D0(&v232, "SVK");
  v234 = 203;
  sub_195E43C(&v1449, &v235, &v232);
  sub_3608D0(&v230, "SL");
  sub_3608D0(&v227, "SLE");
  v229 = 201;
  sub_195E43C(&v1450, &v230, &v227);
  sub_3608D0(&v225, "SM");
  sub_3608D0(&v222, "SMR");
  v224 = 197;
  sub_195E43C(&v1451, &v225, &v222);
  sub_3608D0(&v220, "SN");
  sub_3608D0(&v217, "SEN");
  v219 = 37;
  sub_195E43C(&v1452, &v220, &v217);
  sub_3608D0(&v215, "SO");
  sub_3608D0(&v212, "SOM");
  v214 = 205;
  sub_195E43C(&v1453, &v215, &v212);
  sub_3608D0(&v210, "SR");
  sub_3608D0(&v207, "SUR");
  v209 = 209;
  sub_195E43C(&v1454, &v210, &v207);
  sub_3608D0(&v205, "SS");
  sub_3608D0(&v202, "SSD");
  v204 = 243;
  sub_195E43C(&v1455, &v205, &v202);
  sub_3608D0(&v200, "ST");
  sub_3608D0(&v197, "STP");
  v199 = 198;
  sub_195E43C(&v1456, &v200, &v197);
  sub_3608D0(&v195, "SV");
  sub_3608D0(&v192, "SLV");
  v194 = 21;
  sub_195E43C(&v1457, &v195, &v192);
  sub_3608D0(&v190, "SX");
  sub_3608D0(&v187, "SXM");
  v189 = 234;
  sub_195E43C(&v1458, &v190, &v187);
  sub_3608D0(&v185, "SY");
  sub_3608D0(&v182, "SYR");
  v184 = 212;
  sub_195E43C(&v1459, &v185, &v182);
  sub_3608D0(&v180, "SZ");
  sub_3608D0(&v177, "SWZ");
  v179 = 59;
  sub_195E43C(&v1460, &v180, &v177);
  sub_3608D0(&v175, "TC");
  sub_3608D0(&v172, "TCA");
  v174 = 222;
  sub_195E43C(&v1461, &v175, &v172);
  sub_3608D0(&v170, "TD");
  sub_3608D0(&v167, "TCD");
  v169 = 101;
  sub_195E43C(&v1462, &v170, &v167);
  sub_3608D0(&v165, "TF");
  sub_3608D0(&v162, "ATF");
  v164 = 125;
  sub_195E43C(&v1463, &v165, &v162);
  sub_3608D0(&v160, "TG");
  sub_3608D0(&v157, "TGO");
  v159 = 216;
  sub_195E43C(&v1464, &v160, &v157);
  sub_3608D0(&v155, "TH");
  sub_3608D0(&v152, "THA");
  v154 = 214;
  sub_195E43C(&v1465, &v155, &v152);
  sub_3608D0(&v150, "TJ");
  sub_3608D0(&v147, "TJK");
  v149 = 213;
  sub_195E43C(&v1466, &v150, &v147);
  sub_3608D0(&v145, "TK");
  sub_3608D0(&v142, "TKL");
  v144 = 244;
  sub_195E43C(&v1467, &v145, &v142);
  sub_3608D0(&v140, "TL");
  sub_3608D0(&v137, "TLS");
  v139 = 215;
  sub_195E43C(&v1468, &v140, &v137);
  sub_3608D0(&v135, "TM");
  sub_3608D0(&v132, "TKM");
  v134 = 221;
  sub_195E43C(&v1469, &v135, &v132);
  sub_3608D0(&v130, "TN");
  sub_3608D0(&v127, "TUN");
  v129 = 219;
  sub_195E43C(&v1470, &v130, &v127);
  sub_3608D0(&v125, "TO");
  sub_3608D0(&v122, "TON");
  v124 = 217;
  sub_195E43C(&v1471, &v125, &v122);
  sub_3608D0(&v120, "TR");
  sub_3608D0(&v117, "TUR");
  v119 = 220;
  sub_195E43C(&v1472, &v120, &v117);
  sub_3608D0(&v115, "TT");
  sub_3608D0(&v112, "TTO");
  v114 = 218;
  sub_195E43C(&v1473, &v115, &v112);
  sub_3608D0(&v110, "TV");
  sub_3608D0(&v107, "TUV");
  v109 = 60;
  sub_195E43C(&v1474, &v110, &v107);
  sub_3608D0(&v105, "TZ");
  sub_3608D0(&v102, "TZA");
  v104 = 38;
  sub_195E43C(&v1475, &v105, &v102);
  sub_3608D0(&v100, "UA");
  sub_3608D0(&v97, "UKR");
  v99 = 224;
  sub_195E43C(&v1476, &v100, &v97);
  sub_3608D0(&v95, "UG");
  sub_3608D0(&v92, "UGA");
  v94 = 223;
  sub_195E43C(&v1477, &v95, &v92);
  sub_3608D0(&v90, "UM");
  sub_3608D0(&v87, "UMI");
  v89 = 251;
  sub_195E43C(&v1478, &v90, &v87);
  sub_3608D0(&v85, "US");
  sub_3608D0(&v82, "USA");
  v84 = 226;
  sub_195E43C(&v1479, &v85, &v82);
  sub_3608D0(&v80, "UY");
  sub_3608D0(&v77, "URY");
  v79 = 1;
  sub_195E43C(&v1480, &v80, &v77);
  sub_3608D0(&v75, "UZ");
  sub_3608D0(&v72, "UZB");
  v74 = 227;
  sub_195E43C(&v1481, &v75, &v72);
  sub_3608D0(&v70, "VA");
  sub_3608D0(&v67, "VAT");
  v69 = 74;
  sub_195E43C(&v1482, &v70, &v67);
  sub_3608D0(&v65, "VC");
  sub_3608D0(&v62, "VCT");
  v64 = 195;
  sub_195E43C(&v1483, &v65, &v62);
  sub_3608D0(&v60, "VE");
  sub_3608D0(&v57, "VEN");
  v59 = 39;
  sub_195E43C(&v1484, &v60, &v57);
  sub_3608D0(&v55, "VG");
  sub_3608D0(&v52, "VGB");
  v54 = 229;
  sub_195E43C(&v1485, &v55, &v52);
  sub_3608D0(&v50, "VI");
  sub_3608D0(&v47, "VIR");
  v49 = 242;
  sub_195E43C(&v1486, &v50, &v47);
  sub_3608D0(&v45, "VN");
  sub_3608D0(&v42, "VNM");
  v44 = 9;
  sub_195E43C(&v1487, &v45, &v42);
  sub_3608D0(&v40, "VU");
  sub_3608D0(&v37, "VUT");
  v39 = 228;
  sub_195E43C(&v1488, &v40, &v37);
  sub_3608D0(&v35, "WF");
  sub_3608D0(&v32, "WLF");
  v34 = 230;
  sub_195E43C(&v1489, &v35, &v32);
  sub_3608D0(&v30, "WS");
  sub_3608D0(&v27, "WSM");
  v29 = 196;
  sub_195E43C(&v1490, &v30, &v27);
  sub_3608D0(&v25, "YE");
  sub_3608D0(&v22, "YEM");
  v24 = 231;
  sub_195E43C(&v1491, &v25, &v22);
  sub_3608D0(&v20, "YT");
  sub_3608D0(&v17, "MYT");
  v19 = 53;
  sub_195E43C(&v1492, &v20, &v17);
  sub_3608D0(&v15, "ZA");
  sub_3608D0(v12, "ZAF");
  v14 = 62;
  sub_195E43C(&v1493, &v15, v12);
  sub_3608D0(v10, "ZM");
  sub_3608D0(v7, "ZMB");
  v9 = 232;
  sub_195E43C(&v1494, v10, v7);
  sub_3608D0(v5, "ZW");
  sub_3608D0(__p, "ZWE");
  v4 = 233;
  sub_195E43C(&v1495, v5, __p);
  sub_1966280(qword_27EF830, v1247, 249);
  v0 = &v1496;
  v1 = -13944;
  do
  {
    if (*v0 < 0)
    {
      operator delete(*(v0 - 23));
    }

    if (*(v0 - 24) < 0)
    {
      operator delete(*(v0 - 47));
    }

    v0 -= 56;
    v1 += 56;
  }

  while (v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v83 < 0)
  {
    operator delete(v82);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v88 < 0)
  {
    operator delete(v87);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v113 < 0)
  {
    operator delete(v112);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v128 < 0)
  {
    operator delete(v127);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v133 < 0)
  {
    operator delete(v132);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v138 < 0)
  {
    operator delete(v137);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v143 < 0)
  {
    operator delete(v142);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v148 < 0)
  {
    operator delete(v147);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v153 < 0)
  {
    operator delete(v152);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v158 < 0)
  {
    operator delete(v157);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v163 < 0)
  {
    operator delete(v162);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v168 < 0)
  {
    operator delete(v167);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v173 < 0)
  {
    operator delete(v172);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v178 < 0)
  {
    operator delete(v177);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v183 < 0)
  {
    operator delete(v182);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v188 < 0)
  {
    operator delete(v187);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v193 < 0)
  {
    operator delete(v192);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v198 < 0)
  {
    operator delete(v197);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v203 < 0)
  {
    operator delete(v202);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v208 < 0)
  {
    operator delete(v207);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v213 < 0)
  {
    operator delete(v212);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v218 < 0)
  {
    operator delete(v217);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v223 < 0)
  {
    operator delete(v222);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v228 < 0)
  {
    operator delete(v227);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v233 < 0)
  {
    operator delete(v232);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v243 < 0)
  {
    operator delete(v242);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v248 < 0)
  {
    operator delete(v247);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v253 < 0)
  {
    operator delete(v252);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v258 < 0)
  {
    operator delete(v257);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v263 < 0)
  {
    operator delete(v262);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v268 < 0)
  {
    operator delete(v267);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v273 < 0)
  {
    operator delete(v272);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v278 < 0)
  {
    operator delete(v277);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v283 < 0)
  {
    operator delete(v282);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v288 < 0)
  {
    operator delete(v287);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v293 < 0)
  {
    operator delete(v292);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v298 < 0)
  {
    operator delete(v297);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v303 < 0)
  {
    operator delete(v302);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v308 < 0)
  {
    operator delete(v307);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v313 < 0)
  {
    operator delete(v312);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v318 < 0)
  {
    operator delete(v317);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v323 < 0)
  {
    operator delete(v322);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v328 < 0)
  {
    operator delete(v327);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v333 < 0)
  {
    operator delete(v332);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v338 < 0)
  {
    operator delete(v337);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v343 < 0)
  {
    operator delete(v342);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v348 < 0)
  {
    operator delete(v347);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v353 < 0)
  {
    operator delete(v352);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v358 < 0)
  {
    operator delete(v357);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v363 < 0)
  {
    operator delete(v362);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v368 < 0)
  {
    operator delete(v367);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v373 < 0)
  {
    operator delete(v372);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v378 < 0)
  {
    operator delete(v377);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v383 < 0)
  {
    operator delete(v382);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v388 < 0)
  {
    operator delete(v387);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v393 < 0)
  {
    operator delete(v392);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v398 < 0)
  {
    operator delete(v397);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v403 < 0)
  {
    operator delete(v402);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v408 < 0)
  {
    operator delete(v407);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v413 < 0)
  {
    operator delete(v412);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v418 < 0)
  {
    operator delete(v417);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v423 < 0)
  {
    operator delete(v422);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v428 < 0)
  {
    operator delete(v427);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v433 < 0)
  {
    operator delete(v432);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v438 < 0)
  {
    operator delete(v437);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v443 < 0)
  {
    operator delete(v442);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v448 < 0)
  {
    operator delete(v447);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v453 < 0)
  {
    operator delete(v452);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v458 < 0)
  {
    operator delete(v457);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v463 < 0)
  {
    operator delete(v462);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v468 < 0)
  {
    operator delete(v467);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v473 < 0)
  {
    operator delete(v472);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v478 < 0)
  {
    operator delete(v477);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v483 < 0)
  {
    operator delete(v482);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v488 < 0)
  {
    operator delete(v487);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v493 < 0)
  {
    operator delete(v492);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v498 < 0)
  {
    operator delete(v497);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v503 < 0)
  {
    operator delete(v502);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v508 < 0)
  {
    operator delete(v507);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v513 < 0)
  {
    operator delete(v512);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v518 < 0)
  {
    operator delete(v517);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v523 < 0)
  {
    operator delete(v522);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v528 < 0)
  {
    operator delete(v527);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v533 < 0)
  {
    operator delete(v532);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v538 < 0)
  {
    operator delete(v537);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v543 < 0)
  {
    operator delete(v542);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v548 < 0)
  {
    operator delete(v547);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v553 < 0)
  {
    operator delete(v552);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v558 < 0)
  {
    operator delete(v557);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v563 < 0)
  {
    operator delete(v562);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v568 < 0)
  {
    operator delete(v567);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v573 < 0)
  {
    operator delete(v572);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v578 < 0)
  {
    operator delete(v577);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v583 < 0)
  {
    operator delete(v582);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v588 < 0)
  {
    operator delete(v587);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v593 < 0)
  {
    operator delete(v592);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v598 < 0)
  {
    operator delete(v597);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v603 < 0)
  {
    operator delete(v602);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v608 < 0)
  {
    operator delete(v607);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v613 < 0)
  {
    operator delete(v612);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v618 < 0)
  {
    operator delete(v617);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v623 < 0)
  {
    operator delete(v622);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v628 < 0)
  {
    operator delete(v627);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v633 < 0)
  {
    operator delete(v632);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v638 < 0)
  {
    operator delete(v637);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v643 < 0)
  {
    operator delete(v642);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v648 < 0)
  {
    operator delete(v647);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v653 < 0)
  {
    operator delete(v652);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v658 < 0)
  {
    operator delete(v657);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v663 < 0)
  {
    operator delete(v662);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v668 < 0)
  {
    operator delete(v667);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v673 < 0)
  {
    operator delete(v672);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v678 < 0)
  {
    operator delete(v677);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v683 < 0)
  {
    operator delete(v682);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v688 < 0)
  {
    operator delete(v687);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v693 < 0)
  {
    operator delete(v692);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v698 < 0)
  {
    operator delete(v697);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v703 < 0)
  {
    operator delete(v702);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v708 < 0)
  {
    operator delete(v707);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v713 < 0)
  {
    operator delete(v712);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v718 < 0)
  {
    operator delete(v717);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v723 < 0)
  {
    operator delete(v722);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v728 < 0)
  {
    operator delete(v727);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v733 < 0)
  {
    operator delete(v732);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v738 < 0)
  {
    operator delete(v737);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v743 < 0)
  {
    operator delete(v742);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v748 < 0)
  {
    operator delete(v747);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v753 < 0)
  {
    operator delete(v752);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v758 < 0)
  {
    operator delete(v757);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v763 < 0)
  {
    operator delete(v762);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v768 < 0)
  {
    operator delete(v767);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v773 < 0)
  {
    operator delete(v772);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v778 < 0)
  {
    operator delete(v777);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v783 < 0)
  {
    operator delete(v782);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v788 < 0)
  {
    operator delete(v787);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v793 < 0)
  {
    operator delete(v792);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v798 < 0)
  {
    operator delete(v797);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v803 < 0)
  {
    operator delete(v802);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v808 < 0)
  {
    operator delete(v807);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v813 < 0)
  {
    operator delete(v812);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v818 < 0)
  {
    operator delete(v817);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v823 < 0)
  {
    operator delete(v822);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v828 < 0)
  {
    operator delete(v827);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v833 < 0)
  {
    operator delete(v832);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v838 < 0)
  {
    operator delete(v837);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v843 < 0)
  {
    operator delete(v842);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v848 < 0)
  {
    operator delete(v847);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v853 < 0)
  {
    operator delete(v852);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v858 < 0)
  {
    operator delete(v857);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v863 < 0)
  {
    operator delete(v862);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v868 < 0)
  {
    operator delete(v867);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v873 < 0)
  {
    operator delete(v872);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v878 < 0)
  {
    operator delete(v877);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v883 < 0)
  {
    operator delete(v882);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v888 < 0)
  {
    operator delete(v887);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v893 < 0)
  {
    operator delete(v892);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v898 < 0)
  {
    operator delete(v897);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v903 < 0)
  {
    operator delete(v902);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v908 < 0)
  {
    operator delete(v907);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v913 < 0)
  {
    operator delete(v912);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v918 < 0)
  {
    operator delete(v917);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v923 < 0)
  {
    operator delete(v922);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v928 < 0)
  {
    operator delete(v927);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v933 < 0)
  {
    operator delete(v932);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v938 < 0)
  {
    operator delete(v937);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v943 < 0)
  {
    operator delete(v942);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v948 < 0)
  {
    operator delete(v947);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v953 < 0)
  {
    operator delete(v952);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v958 < 0)
  {
    operator delete(v957);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v963 < 0)
  {
    operator delete(v962);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v968 < 0)
  {
    operator delete(v967);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v973 < 0)
  {
    operator delete(v972);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v978 < 0)
  {
    operator delete(v977);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v983 < 0)
  {
    operator delete(v982);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v988 < 0)
  {
    operator delete(v987);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v993 < 0)
  {
    operator delete(v992);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v998 < 0)
  {
    operator delete(v997);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1003 < 0)
  {
    operator delete(v1002);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1008 < 0)
  {
    operator delete(v1007);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1013 < 0)
  {
    operator delete(v1012);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1018 < 0)
  {
    operator delete(v1017);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1023 < 0)
  {
    operator delete(v1022);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1028 < 0)
  {
    operator delete(v1027);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1033 < 0)
  {
    operator delete(v1032);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1038 < 0)
  {
    operator delete(v1037);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1043 < 0)
  {
    operator delete(v1042);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1048 < 0)
  {
    operator delete(v1047);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1053 < 0)
  {
    operator delete(v1052);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1058 < 0)
  {
    operator delete(v1057);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1063 < 0)
  {
    operator delete(v1062);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1068 < 0)
  {
    operator delete(v1067);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1073 < 0)
  {
    operator delete(v1072);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1078 < 0)
  {
    operator delete(v1077);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1083 < 0)
  {
    operator delete(v1082);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1088 < 0)
  {
    operator delete(v1087);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1093 < 0)
  {
    operator delete(v1092);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1098 < 0)
  {
    operator delete(v1097);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1103 < 0)
  {
    operator delete(v1102);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1108 < 0)
  {
    operator delete(v1107);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1113 < 0)
  {
    operator delete(v1112);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1118 < 0)
  {
    operator delete(v1117);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1123 < 0)
  {
    operator delete(v1122);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1128 < 0)
  {
    operator delete(v1127);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1133 < 0)
  {
    operator delete(v1132);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1138 < 0)
  {
    operator delete(v1137);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1143 < 0)
  {
    operator delete(v1142);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1148 < 0)
  {
    operator delete(v1147);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1153 < 0)
  {
    operator delete(v1152);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1158 < 0)
  {
    operator delete(v1157);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1163 < 0)
  {
    operator delete(v1162);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1168 < 0)
  {
    operator delete(v1167);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1173 < 0)
  {
    operator delete(v1172);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1178 < 0)
  {
    operator delete(v1177);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1183 < 0)
  {
    operator delete(v1182);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1188 < 0)
  {
    operator delete(v1187);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1193 < 0)
  {
    operator delete(v1192);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1198 < 0)
  {
    operator delete(v1197);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1203 < 0)
  {
    operator delete(v1202);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1208 < 0)
  {
    operator delete(v1207);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1213 < 0)
  {
    operator delete(v1212);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1218 < 0)
  {
    operator delete(v1217);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1223 < 0)
  {
    operator delete(v1222);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1228 < 0)
  {
    operator delete(v1227);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1233 < 0)
  {
    operator delete(v1232);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1238 < 0)
  {
    operator delete(v1237);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1243 < 0)
  {
    operator delete(v1242);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }
}