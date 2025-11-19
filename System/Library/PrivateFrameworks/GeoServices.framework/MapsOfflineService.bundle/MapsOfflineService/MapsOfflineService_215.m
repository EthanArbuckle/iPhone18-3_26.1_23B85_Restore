void sub_CC2A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_CC2A98@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a1 = vaddq_f64(*a2, *a1);
  *(a1 + 16) = vaddq_f64(a2[1], v5);
  *(a1 + 32) = a2[2].f64[0] + *(a1 + 32);
  sub_CC92D8(a1 + 40, &a2[2].f64[1], &__p);
  if (v14 < 0)
  {
    operator delete(__p);
    v7 = *(a1 + 16);
    *a3 = *a1;
    *(a3 + 16) = v7;
    *(a3 + 32) = *(a1 + 32);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a3 + 40), *(a1 + 40), *(a1 + 48));
    goto LABEL_6;
  }

  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a3 + 40) = *(a1 + 40);
  *(a3 + 56) = *(a1 + 56);
LABEL_6:
  v8 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v8;
  v9 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v9;
  v10 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v10;
  result = *(a1 + 96);
  v12 = *(a1 + 112);
  *(a3 + 96) = result;
  *(a3 + 112) = v12;
  return result;
}

uint64_t sub_CC2B80(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC2D34(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC2D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC2D34(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC2E84(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC3038(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC3024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC3038(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC3188(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC333C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC3328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC333C(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC348C(uint64_t a1)
{
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = 0;
  LOBYTE(__p[0]) = 0;
  sub_CC9264(a1 + 280, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_CC29F4(a1 + 432);
  LODWORD(__p[0]) = 0;
  sub_CCE5F4(a1 + 624, __p);
  LODWORD(__p[0]) = 1;
  sub_CCE5F4(a1 + 760, __p);
  LODWORD(__p[0]) = 2;
  sub_CCE5F4(a1 + 896, __p);
  LODWORD(__p[0]) = 3;
  sub_CCE5F4(a1 + 1032, __p);
  v4 = 0;
  LOBYTE(__p[0]) = 0;
  sub_CC572C(a1 + 1168, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_CC3594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 495) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v15 + 303) & 0x80000000) == 0)
      {
LABEL_8:
        if (*(v15 + 55) < 0)
        {
          operator delete(*(v15 + 32));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(*(v15 + 280));
      goto LABEL_8;
    }
  }

  else if ((*(v15 + 495) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v15 + 472));
  if ((*(v15 + 303) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_CC3644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    JUMPOUT(0xCC3628);
  }

  JUMPOUT(0xCC362CLL);
}

uint64_t sub_CC365C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(a1 + 24) = *(a2 + 24) + *(a1 + 24);
  *a1 = vaddq_f64(*a2, *a1);
  *(a1 + 16) = *(a2 + 16) + v4;
  sub_CC384C(a1, a1 + 32, (a2 + 32));
  *(a1 + 56) = vaddq_f64(*(a2 + 56), *(a1 + 56));
  *(a1 + 72) = vaddq_f64(*(a2 + 72), *(a1 + 72));
  *(a1 + 88) = vaddq_f64(*(a2 + 88), *(a1 + 88));
  *(a1 + 104) = vaddq_f64(*(a2 + 104), *(a1 + 104));
  *(a1 + 120) = vaddq_f64(*(a2 + 120), *(a1 + 120));
  *(a1 + 136) = vaddq_f64(*(a2 + 136), *(a1 + 136));
  *(a1 + 152) = vaddq_f64(*(a2 + 152), *(a1 + 152));
  *(a1 + 168) = vaddq_f64(*(a2 + 168), *(a1 + 168));
  *(a1 + 184) = vaddq_f64(*(a2 + 184), *(a1 + 184));
  *(a1 + 200) = vaddq_f64(*(a2 + 200), *(a1 + 200));
  *(a1 + 216) = vaddq_f64(*(a2 + 216), *(a1 + 216));
  *(a1 + 232) = vaddq_f64(*(a2 + 232), *(a1 + 232));
  *(a1 + 248) = vaddq_f64(*(a2 + 248), *(a1 + 248));
  *(a1 + 264) = vaddq_f64(*(a2 + 264), *(a1 + 264));
  sub_CC92D8(a1 + 280, a2 + 280, &v9);
  if (v10 < 0)
  {
    operator delete(v9);
    sub_CC2A98(a1 + 432, (a2 + 432), v6);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator delete(__p);
    goto LABEL_3;
  }

  sub_CC2A98(a1 + 432, (a2 + 432), v6);
  if (v8 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_CCE624(a1 + 624, a2 + 624);
  sub_CCE624(a1 + 760, a2 + 760);
  sub_CCE624(a1 + 896, a2 + 896);
  sub_CCE624(a1 + 1032, a2 + 1032);
  sub_CC5794(a1 + 1168, a2 + 1168);
  return a1;
}

void sub_CC384C(int a1, uint64_t a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    v5 = *(a3 + 23);
    v6 = v5;
    if (v5 < 0)
    {
      v5 = a3[1];
    }

    if (v5)
    {
      if (v3 != v5 || (v4 >= 0 ? (v7 = a2) : (v7 = *a2), v6 >= 0 ? (v8 = a3) : (v8 = *a3), v9 = a2, v10 = memcmp(v7, v8, v3), a2 = v9, v10))
      {
        if (v4 < 0)
        {
          *(a2 + 8) = 7;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 7;
        }

        strcpy(a2, "various");
      }
    }
  }

  else if (a2 != a3)
  {
    v11 = *(a3 + 23);
    if (v4 < 0)
    {
      if (v11 >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      if (v11 >= 0)
      {
        v14 = *(a3 + 23);
      }

      else
      {
        v14 = a3[1];
      }

      sub_13B38(a2, v13, v14);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v16 = *a3;
      v15 = a3[1];

      sub_13A68(a2, v16, v15);
    }

    else
    {
      v12 = *a3;
      *(a2 + 16) = a3[2];
      *a2 = v12;
    }
  }
}

void sub_CC3998(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"JourneyPlannerModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 20;
  *(a2 + 16) = 1701606756;
  v4 = (a2 + 24);
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(*a1);
  v5 = sub_CC2B80((a2 + 24), "Runtime", v62, v66);
  v6 = v5;
  v7 = *(a2 + 40);
  v8 = a1[96];
  v9 = a1[79];
  *(a2 + 32) = v5;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(v9 + v8);
  if (v5 >= v7)
  {
    v10 = sub_CC468C(v4, "Runtime.InitialWalking", v62, v66);
  }

  else
  {
    sub_CC4840(v5, "Runtime.InitialWalking", v62, v66);
    v10 = v6 + 48;
  }

  *(a2 + 32) = v10;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[113]);
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_CC4990(v4, "Runtime.DirectWalking", v62, v66);
  }

  else
  {
    sub_CC4B44(v10, "Runtime.DirectWalking", v62, v66);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[1] + a1[2]);
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_CC4990(v4, "Runtime.Preprocessing", v62, v66);
  }

  else
  {
    sub_CC4B44(v11, "Runtime.Preprocessing", v62, v66);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[7]);
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_CC4C94(v4, "Runtime.JourneyPlanningAlgorithm", v62, v66);
  }

  else
  {
    sub_CC4E48(v12, "Runtime.JourneyPlanningAlgorithm", v62, v66);
    v13 = v12 + 48;
  }

  v14 = a1[30];
  v15 = a1[8] + a1[9] + a1[10] + a1[13] + a1[14] + a1[15] + a1[16] + a1[17] + a1[18] + a1[19] + a1[20] + a1[21] + a1[22] + a1[23] + a1[24] + a1[25] + a1[26] + a1[27] + a1[28] + a1[29];
  *(a2 + 32) = v13;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(v15 + v14);
  if (v13 >= *(a2 + 40))
  {
    v16 = sub_CC468C(v4, "Runtime.Postprocessing", v62, v66);
  }

  else
  {
    sub_CC4840(v13, "Runtime.Postprocessing", v62, v66);
    v16 = v13 + 48;
  }

  *(a2 + 32) = v16;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[11]);
  if (v16 >= *(a2 + 40))
  {
    v17 = sub_CC4F98(v4, "RunTime.FareCalculation", v62, v66);
  }

  else
  {
    sub_CC514C(v16, "RunTime.FareCalculation", v62, v66);
    v17 = v16 + 48;
  }

  *(a2 + 32) = v17;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[12]);
  if (v17 >= *(a2 + 40))
  {
    v18 = sub_CC4F98(v4, "RunTime.RealtimeUpdates", v62, v66);
  }

  else
  {
    sub_CC514C(v17, "RunTime.RealtimeUpdates", v62, v66);
    v18 = v17 + 48;
  }

  *(a2 + 32) = v18;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[130]);
  if (v18 >= *(a2 + 40))
  {
    v19 = sub_CC529C(v4, "Runtime.WalkingUnpacking", v62, v66);
  }

  else
  {
    sub_CC5450(v18, "Runtime.WalkingUnpacking", v62, v66);
    v19 = v18 + 48;
  }

  *(a2 + 32) = v19;
  LOBYTE(v62[0]) = 4;
  v66[0] = llround(a1[31]);
  if (v19 >= *(a2 + 40))
  {
    v20 = sub_CC3188(v4, "Iterations", v62, v66);
  }

  else
  {
    sub_CC333C(v19, "Iterations", v62, v66);
    v20 = v19 + 48;
  }

  *(a2 + 32) = v20;
  LOBYTE(v62[0]) = 4;
  v66[0] = llround(a1[34]);
  if (v20 >= *(a2 + 40))
  {
    v21 = sub_CC529C(v4, "WalkingUnpackingFailures", v62, v66);
  }

  else
  {
    sub_CC5450(v20, "WalkingUnpackingFailures", v62, v66);
    v21 = v20 + 48;
  }

  *(a2 + 32) = v21;
  v70 = v4;
  sub_CC93E4((a1 + 35), v66);
  sub_CC43AC(&v70, v66);
  sub_CCE7C4(a1 + 78, v62);
  sub_CC43AC(&v70, v62);
  sub_CCE7C4(a1 + 95, v58);
  sub_CC43AC(&v70, v58);
  sub_CCE7C4(a1 + 112, v54);
  sub_CC43AC(&v70, v54);
  sub_CCE7C4(a1 + 129, v50);
  sub_CC43AC(&v70, v50);
  sub_CC57E8(a1 + 146, v46);
  sub_CC43AC(&v70, v46);
  v22 = __p;
  if (__p)
  {
    v23 = v49;
    v24 = __p;
    if (v49 != __p)
    {
      do
      {
        v25 = *(v23 - 25);
        v23 -= 6;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = __p;
    }

    v49 = v22;
    operator delete(v24);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  v26 = v52;
  if (v52)
  {
    v27 = v53;
    v28 = v52;
    if (v53 != v52)
    {
      do
      {
        v29 = *(v27 - 25);
        v27 -= 6;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = v52;
    }

    v53 = v26;
    operator delete(v28);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  v30 = v56;
  if (v56)
  {
    v31 = v57;
    v32 = v56;
    if (v57 != v56)
    {
      do
      {
        v33 = *(v31 - 25);
        v31 -= 6;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v56;
    }

    v57 = v30;
    operator delete(v32);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  v34 = v60;
  if (v60)
  {
    v35 = v61;
    v36 = v60;
    if (v61 != v60)
    {
      do
      {
        v37 = *(v35 - 25);
        v35 -= 6;
        if (v37 < 0)
        {
          operator delete(*v35);
        }
      }

      while (v35 != v34);
      v36 = v60;
    }

    v61 = v34;
    operator delete(v36);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  v38 = v64;
  if (v64)
  {
    v39 = v65;
    v40 = v64;
    if (v65 != v64)
    {
      do
      {
        v41 = *(v39 - 25);
        v39 -= 6;
        if (v41 < 0)
        {
          operator delete(*v39);
        }
      }

      while (v39 != v38);
      v40 = v64;
    }

    v65 = v38;
    operator delete(v40);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  v42 = v68;
  if (v68)
  {
    v43 = v69;
    v44 = v68;
    if (v69 != v68)
    {
      do
      {
        v45 = *(v43 - 25);
        v43 -= 6;
        if (v45 < 0)
        {
          operator delete(*v43);
        }
      }

      while (v43 != v42);
      v44 = v68;
    }

    v69 = v42;
    operator delete(v44);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }
}

void sub_CC4144(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC4170(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC419C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC41C8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC41F4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC4220(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC424C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC4278(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC42A4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC42D0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC42E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_9DA0(&a10);
  sub_9DA0(&a16);
  sub_9DA0(&a22);
  sub_9DA0(&a28);
  sub_9DA0(v29 - 152);
  sub_9DA0(v29 - 104);
  sub_9DA0(v28);
  _Unwind_Resume(a1);
}

void sub_CC4364(_Unwind_Exception *a1)
{
  sub_9DA0(v2 - 104);
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC43AC(uint64_t **a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    sub_3608D0(v20, "");
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    if (v5 == v6)
    {
      goto LABEL_35;
    }

    goto LABEL_7;
  }

  sub_2D4D58(".", a2, v20);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5 != v6)
  {
LABEL_7:
    v7 = *a1;
    do
    {
      if ((v21 & 0x80u) == 0)
      {
        v10 = v21;
      }

      else
      {
        v10 = v20[1];
      }

      if (*(v5 + 23) >= 0)
      {
        v11 = *(v5 + 23);
      }

      else
      {
        v11 = v5[1];
      }

      if (v11 + v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v11 + v10 > 0x16)
      {
        operator new();
      }

      v27 = 0;
      v26 = 0uLL;
      HIBYTE(v27) = v11 + v10;
      if (v10)
      {
        if ((v21 & 0x80u) == 0)
        {
          v12 = v20;
        }

        else
        {
          v12 = v20[0];
        }

        memmove(&v26, v12, v10);
      }

      v13 = &v26 + v10;
      if (v11)
      {
        if (*(v5 + 23) >= 0)
        {
          v14 = v5;
        }

        else
        {
          v14 = *v5;
        }

        memmove(v13, v14, v11);
      }

      v13[v11] = 0;
      v15 = *(v5 + 24);
      if (SHIBYTE(v27) < 0)
      {
        v17 = v26;
        sub_325C(__p, v26, *(&v26 + 1));
        LOBYTE(v24) = v15;
        *(&v24 + 1) = v5[4];
        v25 = 1;
        operator delete(v17);
        v16 = v7[1];
        if (v16 >= v7[2])
        {
LABEL_33:
          v18 = sub_CC55A0(v7, __p);
          v19 = SHIBYTE(v23);
          v7[1] = v18;
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_9;
        }
      }

      else
      {
        *__p = v26;
        v23 = v27;
        LOBYTE(v24) = v15;
        *(&v24 + 1) = v5[4];
        v25 = 1;
        v16 = v7[1];
        if (v16 >= v7[2])
        {
          goto LABEL_33;
        }
      }

      v8 = *__p;
      *(v16 + 16) = v23;
      *v16 = v8;
      __p[1] = 0;
      v23 = 0;
      __p[0] = 0;
      v9 = v25;
      *(v16 + 24) = v24;
      *(v16 + 40) = v9;
      v7[1] = v16 + 48;
LABEL_9:
      v5 += 6;
    }

    while (v5 != v6);
  }

LABEL_35:
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_CC4624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v21);
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_CC468C(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC4840(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC482C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC4840(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC4990(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC4B44(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC4B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC4B44(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC4C94(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC4E48(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC4E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC4E48(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC4F98(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC514C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC5138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC514C(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC529C(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC5450(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC543C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC5450(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC55A0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 10);
      *(v12 + 24) = v14;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 48;
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

double sub_CC572C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = a1;
    sub_325C(a1, *a2, *(a2 + 1));
    a1 = v3;
  }

  else
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
  }

  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

double sub_CC5794(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = vaddq_f64(*(a2 + 24), *(a1 + 24));
  *(a1 + 40) = vaddq_f64(*(a2 + 40), *(a1 + 40));
  *(a1 + 56) = vaddq_f64(*(a2 + 56), *(a1 + 56));
  *(a1 + 72) = vaddq_f64(*(a2 + 72), *(a1 + 72));
  result = *(a2 + 88) + *(a1 + 88);
  *(a1 + 88) = result;
  return result;
}

uint64_t sub_CC57E8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v17 = 4;
  v16 = llround(a1[3]);
  v4 = sub_CC5C50((a2 + 24), "Solutions", &v17, &v16);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = a1[4];
  *(a2 + 32) = v4;
  v17 = 4;
  v16 = llround(v7);
  if (v4 >= v6)
  {
    v8 = sub_CC5F54((a2 + 24), "Journeys", &v17, &v16);
  }

  else
  {
    sub_CC6108(v4, "Journeys", &v17, &v16);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  v17 = 4;
  v16 = llround(a1[5]);
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_CC529C((a2 + 24), "JourneysWithRealtimeData", &v17, &v16);
  }

  else
  {
    sub_CC5450(v8, "JourneysWithRealtimeData", &v17, &v16);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  v17 = 4;
  v16 = llround(a1[6]);
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_CC6258((a2 + 24), "JourneysBasedOnRealtimeData", &v17, &v16);
  }

  else
  {
    sub_CC640C(v9, "JourneysBasedOnRealtimeData", &v17, &v16);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  v17 = 4;
  v16 = llround(a1[7]);
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_CC655C((a2 + 24), "JourneysAtRisk", &v17, &v16);
  }

  else
  {
    sub_CC6710(v10, "JourneysAtRisk", &v17, &v16);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  v17 = 4;
  v16 = llround(a1[8]);
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_CC6860((a2 + 24), "JourneysWithBlockingIncidents", &v17, &v16);
  }

  else
  {
    sub_CC6A14(v11, "JourneysWithBlockingIncidents", &v17, &v16);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  v17 = 4;
  v16 = llround(a1[9]);
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_CC2E84((a2 + 24), "JourneysWithFareData", &v17, &v16);
  }

  else
  {
    sub_CC3038(v12, "JourneysWithFareData", &v17, &v16);
    v13 = v12 + 48;
  }

  *(a2 + 32) = v13;
  v17 = 4;
  v16 = llround(a1[10]);
  if (v13 >= *(a2 + 40))
  {
    v14 = sub_CC6B64((a2 + 24), "JourneysFailedFareNormalisation", &v17, &v16);
  }

  else
  {
    sub_CC6D18(v13, "JourneysFailedFareNormalisation", &v17, &v16);
    v14 = v13 + 48;
  }

  *(a2 + 32) = v14;
  v17 = 4;
  v16 = llround(a1[11]);
  if (v14 >= *(a2 + 40))
  {
    result = sub_CC6258((a2 + 24), "BlockingOffjourneyIncidents", &v17, &v16);
    *(a2 + 32) = result;
  }

  else
  {
    sub_CC640C(v14, "BlockingOffjourneyIncidents", &v17, &v16);
    result = v14 + 48;
    *(a2 + 32) = v14 + 48;
  }

  return result;
}

void sub_CC5B7C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_CC5C50(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC5E04(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC5DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC5E04(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC5F54(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC6108(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC60F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC6108(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC6258(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC640C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC63F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC640C(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC655C(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC6710(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC66FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC6710(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC6860(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC6A14(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC6A00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC6A14(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC6B64(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC6D18(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC6D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC6D18(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC6E68@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"JourneyUpdaterModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 20;
  *(a2 + 16) = 1701606756;
  v13 = 4;
  v12 = llround(*a1);
  v4 = sub_CC5F54((a2 + 24), "Journeys", &v13, &v12);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = a1[1];
  *(a2 + 32) = v4;
  v13 = 4;
  v12 = llround(v7);
  if (v4 >= v6)
  {
    v8 = sub_CC655C((a2 + 24), "JourneysFailed", &v13, &v12);
  }

  else
  {
    sub_CC6710(v4, "JourneysFailed", &v13, &v12);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  v13 = 4;
  v12 = llround(a1[2]);
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_CC529C((a2 + 24), "JourneysWithRealtimeData", &v13, &v12);
  }

  else
  {
    sub_CC5450(v8, "JourneysWithRealtimeData", &v13, &v12);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  v13 = 1;
  v12 = llround(a1[3]);
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_CC2B80((a2 + 24), "Runtime", &v13, &v12);
  }

  else
  {
    sub_CC2D34(v9, "Runtime", &v13, &v12);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  v13 = 1;
  v12 = llround(a1[5]);
  if (v10 >= *(a2 + 40))
  {
    result = sub_CC4F98((a2 + 24), "RunTime.RealtimeUpdates", &v13, &v12);
    *(a2 + 32) = result;
  }

  else
  {
    sub_CC514C(v10, "RunTime.RealtimeUpdates", &v13, &v12);
    result = v10 + 48;
    *(a2 + 32) = v10 + 48;
  }

  return result;
}

void sub_CC709C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

float64x2_t sub_CC7110(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  *a1 = vaddq_f64(*a2, *a1);
  a1[1] = vaddq_f64(a2[1], v2);
  result = vaddq_f64(a2[2], a1[2]);
  a1[2] = result;
  return result;
}

uint64_t sub_CC7140@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "PaymentMethodLookupModule", 0x19uLL);
  v11 = 4;
  v10 = llround(*a1);
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_CC2E84((a2 + 24), "OutOfTransitCoverage", &v11, &v10);
  }

  else
  {
    sub_CC3038(*(a2 + 32), "OutOfTransitCoverage", &v11, &v10);
    v5 = v4 + 48;
  }

  *(a2 + 32) = v5;
  v11 = 4;
  v10 = llround(a1[1]);
  if (v5 >= *(a2 + 40))
  {
    v6 = sub_CC5C50((a2 + 24), "Solutions", &v11, &v10);
  }

  else
  {
    sub_CC5E04(v5, "Solutions", &v11, &v10);
    v6 = v5 + 48;
  }

  *(a2 + 32) = v6;
  v11 = 4;
  v10 = llround(a1[2]);
  if (v6 >= *(a2 + 40))
  {
    v7 = sub_CC2E84((a2 + 24), "PaymentMethodRegions", &v11, &v10);
  }

  else
  {
    sub_CC3038(v6, "PaymentMethodRegions", &v11, &v10);
    v7 = v6 + 48;
  }

  *(a2 + 32) = v7;
  v11 = 1;
  v10 = llround(a1[3]);
  if (v7 >= *(a2 + 40))
  {
    v8 = sub_CC2B80((a2 + 24), "Runtime", &v11, &v10);
  }

  else
  {
    sub_CC2D34(v7, "Runtime", &v11, &v10);
    v8 = v7 + 48;
  }

  *(a2 + 32) = v8;
  v11 = 1;
  v10 = llround(a1[4]);
  if (v8 >= *(a2 + 40))
  {
    result = sub_CC4990((a2 + 24), "Runtime.Preprocessing", &v11, &v10);
    *(a2 + 32) = result;
  }

  else
  {
    sub_CC4B44(v8, "Runtime.Preprocessing", &v11, &v10);
    result = v8 + 48;
    *(a2 + 32) = v8 + 48;
  }

  return result;
}

void sub_CC7398(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

_OWORD *sub_CC7424(_OWORD *a1)
{
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v4 = 4;
  sub_CCE5F4((a1 + 17), &v4);
  v3 = 5;
  sub_CCE5F4(a1 + 408, &v3);
  return a1;
}

float64x2_t *sub_CC74A0(float64x2_t *a1, float64x2_t *a2)
{
  v4 = a1[1];
  *a1 = vaddq_f64(*a2, *a1);
  a1[1] = vaddq_f64(a2[1], v4);
  v5 = a1[3];
  a1[2] = vaddq_f64(a2[2], a1[2]);
  a1[3] = vaddq_f64(a2[3], v5);
  v6 = a1[5];
  a1[4] = vaddq_f64(a2[4], a1[4]);
  a1[5] = vaddq_f64(a2[5], v6);
  v7 = a1[7];
  a1[6] = vaddq_f64(a2[6], a1[6]);
  a1[7] = vaddq_f64(a2[7], v7);
  v8 = a1[9];
  a1[8] = vaddq_f64(a2[8], a1[8]);
  a1[9] = vaddq_f64(a2[9], v8);
  v9 = a1[11];
  a1[10] = vaddq_f64(a2[10], a1[10]);
  a1[11] = vaddq_f64(a2[11], v9);
  v10 = a1[13];
  a1[12] = vaddq_f64(a2[12], a1[12]);
  a1[13] = vaddq_f64(a2[13], v10);
  v11 = a1[15];
  a1[14] = vaddq_f64(a2[14], a1[14]);
  a1[15] = vaddq_f64(a2[15], v11);
  a1[16] = vaddq_f64(a2[16], a1[16]);
  sub_CCE624(&a1[17], &a2[17]);
  sub_CCE624(&a1[25].f64[1], &a2[25].f64[1]);
  return a1;
}

void sub_CC75D0(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"ScheduleLookupModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 20;
  *(a2 + 16) = 1701606756;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(*a1);
  v4 = sub_CC4F98((a2 + 24), "UserLocationUnavailable", v34, v38);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = a1[1];
  *(a2 + 32) = v4;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(v7);
  if (v4 >= v6)
  {
    v8 = sub_CC8350((a2 + 24), "UserLocationAndOriginMatch", v34, v38);
  }

  else
  {
    sub_CC8504(v4, "UserLocationAndOriginMatch", v34, v38);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[2]);
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_CC8654((a2 + 24), "FarFromTransitStops", v34, v38);
  }

  else
  {
    sub_CC8808(v8, "FarFromTransitStops", v34, v38);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[3]);
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_CC2E84((a2 + 24), "OutOfTransitCoverage", v34, v38);
  }

  else
  {
    sub_CC3038(v9, "OutOfTransitCoverage", v34, v38);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[4]);
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_CC5C50((a2 + 24), "Solutions", v34, v38);
  }

  else
  {
    sub_CC5E04(v10, "Solutions", v34, v38);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[5]);
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_CC3188((a2 + 24), "Categories", v34, v38);
  }

  else
  {
    sub_CC333C(v11, "Categories", v34, v38);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[6]);
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_CC8958((a2 + 24), "Groups", v34, v38);
  }

  else
  {
    sub_CC8B0C(v12, "Groups", v34, v38);
    v13 = v12 + 48;
  }

  *(a2 + 32) = v13;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[7]);
  if (v13 >= *(a2 + 40))
  {
    v14 = sub_CC8C5C((a2 + 24), "Cells", v34, v38);
  }

  else
  {
    sub_CC8E10(v13, "Cells", v34, v38);
    v14 = v13 + 48;
  }

  *(a2 + 32) = v14;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[8]);
  if (v14 >= *(a2 + 40))
  {
    v15 = sub_CC5C50((a2 + 24), "Schedules", v34, v38);
  }

  else
  {
    sub_CC5E04(v14, "Schedules", v34, v38);
    v15 = v14 + 48;
  }

  *(a2 + 32) = v15;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[11]);
  if (v15 >= *(a2 + 40))
  {
    v16 = sub_CC8F60((a2 + 24), "BlockingIncidents", v34, v38);
  }

  else
  {
    sub_CC9114(v15, "BlockingIncidents", v34, v38);
    v16 = v15 + 48;
  }

  *(a2 + 32) = v16;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[12]);
  if (v16 >= *(a2 + 40))
  {
    v17 = sub_CC4F98((a2 + 24), "OriginWalkingIterations", v34, v38);
  }

  else
  {
    sub_CC514C(v16, "OriginWalkingIterations", v34, v38);
    v17 = v16 + 48;
  }

  *(a2 + 32) = v17;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[13]);
  if (v17 >= *(a2 + 40))
  {
    v18 = sub_CC2B80((a2 + 24), "Runtime", v34, v38);
  }

  else
  {
    sub_CC2D34(v17, "Runtime", v34, v38);
    v18 = v17 + 48;
  }

  *(a2 + 32) = v18;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[35] + a1[52]);
  if (v18 >= *(a2 + 40))
  {
    v19 = sub_CC468C((a2 + 24), "Runtime.InitialWalking", v34, v38);
  }

  else
  {
    sub_CC4840(v18, "Runtime.InitialWalking", v34, v38);
    v19 = v18 + 48;
  }

  *(a2 + 32) = v19;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[14] + a1[15]);
  if (v19 >= *(a2 + 40))
  {
    v20 = sub_CC4990((a2 + 24), "Runtime.Preprocessing", v34, v38);
  }

  else
  {
    sub_CC4B44(v19, "Runtime.Preprocessing", v34, v38);
    v20 = v19 + 48;
  }

  *(a2 + 32) = v20;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[16]);
  if (v20 >= *(a2 + 40))
  {
    v21 = sub_CC6B64((a2 + 24), "Runtime.ScheduleLookupAlgorithm", v34, v38);
  }

  else
  {
    sub_CC6D18(v20, "Runtime.ScheduleLookupAlgorithm", v34, v38);
    v21 = v20 + 48;
  }

  v22 = a1[30];
  v23 = a1[17] + a1[18] + a1[19] + a1[20] + a1[21] + a1[22] + a1[23] + a1[24] + a1[25] + a1[26] + a1[27] + a1[28] + a1[29];
  *(a2 + 32) = v21;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(v23 + v22 + a1[31] + a1[33]);
  if (v21 >= *(a2 + 40))
  {
    v24 = sub_CC468C((a2 + 24), "Runtime.Postprocessing", v34, v38);
  }

  else
  {
    sub_CC4840(v21, "Runtime.Postprocessing", v34, v38);
    v24 = v21 + 48;
  }

  *(a2 + 32) = v24;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[32]);
  if (v24 >= *(a2 + 40))
  {
    v25 = sub_CC529C((a2 + 24), "Runtime.WalkingUnpacking", v34, v38);
  }

  else
  {
    sub_CC5450(v24, "Runtime.WalkingUnpacking", v34, v38);
    v25 = v24 + 48;
  }

  *(a2 + 32) = v25;
  sub_CCE7C4(a1 + 34, v38);
  sub_CC80E4((a2 + 24), v38);
  sub_CCE7C4(a1 + 51, v34);
  sub_CC80E4((a2 + 24), v34);
  v26 = __p;
  if (__p)
  {
    v27 = v37;
    v28 = __p;
    if (v37 != __p)
    {
      do
      {
        v29 = *(v27 - 25);
        v27 -= 6;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = __p;
    }

    v37 = v26;
    operator delete(v28);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  v30 = v40;
  if (v40)
  {
    v31 = v41;
    v32 = v40;
    if (v41 != v40)
    {
      do
      {
        v33 = *(v31 - 25);
        v31 -= 6;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v40;
    }

    v41 = v30;
    operator delete(v32);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }
}

void sub_CC7DCC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7DF8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7E24(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7E50(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7E7C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7EA8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7ED4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7F00(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7F2C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7F58(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7F84(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7FB0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7FDC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC8008(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC8034(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC8060(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC8078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_9DA0(&a9);
  sub_9DA0(&a15);
  sub_9DA0(v15);
  _Unwind_Resume(a1);
}

void sub_CC809C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_9DA0(va);
  sub_9DA0(v7);
  _Unwind_Resume(a1);
}

void sub_CC80E4(uint64_t *a1, const void **a2)
{
  v2 = a2[3];
  v3 = a2[4];
  if (v2 != v3)
  {
    while (1)
    {
      v8 = *(a2 + 23);
      if (v8 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = a2[1];
      }

      if (v9 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v9 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v26, 0, sizeof(v26));
      *(&v26.__r_.__value_.__s + 23) = v9 + 1;
      if (v9)
      {
        if ((v8 & 0x80u) == 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = *a2;
        }

        memmove(&v26, v10, v9);
      }

      *(&v26.__r_.__value_.__l.__data_ + v9) = 46;
      v11 = *(v2 + 23);
      v12 = v11 >= 0 ? v2 : *v2;
      v13 = v11 >= 0 ? *(v2 + 23) : v2[1];
      v14 = std::string::append(&v26, v12, v13);
      v16 = v14->__r_.__value_.__r.__words[0];
      size = v14->__r_.__value_.__l.__size_;
      v27[0] = v14->__r_.__value_.__r.__words[2];
      *(v27 + 3) = *(&v14->__r_.__value_.__r.__words[2] + 3);
      v17 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v18 = *(v2 + 24);
      if (v17 < 0)
      {
        break;
      }

      __p[0] = v16;
      __p[1] = size;
      LODWORD(v23) = v27[0];
      *(&v23 + 3) = *(v27 + 3);
      HIBYTE(v23) = v17;
      LOBYTE(v24) = v18;
      *(&v24 + 1) = v2[4];
      v25 = 1;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      v19 = a1[1];
      if (v19 < a1[2])
      {
        v6 = *__p;
        *(v19 + 16) = v23;
        *v19 = v6;
        __p[1] = 0;
        v23 = 0;
        __p[0] = 0;
        v7 = v25;
        *(v19 + 24) = v24;
        *(v19 + 40) = v7;
        a1[1] = v19 + 48;
      }

      else
      {
        v20 = sub_CC55A0(a1, __p);
        v21 = SHIBYTE(v23);
        a1[1] = v20;
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v2 += 6;
      if (v2 == v3)
      {
        return;
      }
    }

    sub_325C(__p, v16, size);
    LOBYTE(v24) = v18;
    *(&v24 + 1) = v2[4];
    v25 = 1;
    operator delete(v16);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    operator delete(v26.__r_.__value_.__l.__data_);
    goto LABEL_25;
  }
}

void sub_CC8310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v23);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_CC8350(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC8504(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC84F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC8504(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC8654(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC8808(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC87F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC8808(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC8958(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC8B0C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC8AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC8B0C(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC8C5C(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC8E10(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC8DFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC8E10(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC8F60(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC9114(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC9100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC9114(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

double sub_CC9264(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = a1;
    sub_325C(a1, *a2, *(a2 + 1));
    a1 = v3;
  }

  else
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
  }

  result = 0.0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

__n128 sub_CC92D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 + 24;
  *(a1 + 24) = vaddq_f64(*(a2 + 24), *(a1 + 24));
  *(a1 + 40) = vaddq_f64(*(a2 + 40), *(a1 + 40));
  *(a1 + 56) += *(a2 + 56);
  *(a1 + 64) = vaddq_f64(*(a2 + 64), *(a1 + 64));
  *(a1 + 80) = vaddq_f64(*(a2 + 80), *(a1 + 80));
  *(a1 + 96) = vaddq_f64(*(a2 + 96), *(a1 + 96));
  *(a1 + 112) = vaddq_f64(*(a2 + 112), *(a1 + 112));
  *(a1 + 128) = vaddq_f64(*(a2 + 128), *(a1 + 128));
  *(a1 + 144) += *(a2 + 144);
  if (*(a1 + 23) < 0)
  {
    sub_325C(a3, *a1, *(a1 + 8));
  }

  else
  {
    *a3 = *a1;
    *(a3 + 16) = *(a1 + 16);
  }

  v5 = *(v4 + 80);
  *(a3 + 88) = *(v4 + 64);
  *(a3 + 104) = v5;
  v6 = *(v4 + 112);
  *(a3 + 120) = *(v4 + 96);
  *(a3 + 136) = v6;
  v7 = *(v4 + 16);
  *(a3 + 24) = *v4;
  *(a3 + 40) = v7;
  result = *(v4 + 32);
  v9 = *(v4 + 48);
  *(a3 + 56) = result;
  *(a3 + 72) = v9;
  return result;
}

uint64_t sub_CC93E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 23) = 3;
  *a2 = 20563;
  *(a2 + 2) = 65;
  v16 = 1;
  v15 = llround(*(a1 + 24));
  v4 = sub_CC2B80((a2 + 24), "Runtime", &v16, &v15);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = *(a1 + 32);
  *(a2 + 32) = v4;
  v16 = 1;
  v15 = llround(v7);
  if (v4 >= v6)
  {
    v8 = sub_CC2E84((a2 + 24), "Runtime.StopPatterns", &v16, &v15);
  }

  else
  {
    sub_CC3038(v4, "Runtime.StopPatterns", &v16, &v15);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  v16 = 1;
  v15 = llround(*(a1 + 40));
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_CC8F60((a2 + 24), "Runtime.Transfers", &v16, &v15);
  }

  else
  {
    sub_CC9114(v8, "Runtime.Transfers", &v16, &v15);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  v16 = 1;
  v15 = llround(*(a1 + 48));
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_CC8F60((a2 + 24), "Runtime.TimeShift", &v16, &v15);
  }

  else
  {
    sub_CC9114(v9, "Runtime.TimeShift", &v16, &v15);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  v16 = 4;
  v15 = llround(*(a1 + 64));
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_CC5F54((a2 + 24), "Journeys", &v16, &v15);
  }

  else
  {
    sub_CC6108(v10, "Journeys", &v16, &v15);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  v16 = 4;
  v15 = llround(*(a1 + 112));
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_CC8F60((a2 + 24), "TimeShiftAttempts", &v16, &v15);
  }

  else
  {
    sub_CC9114(v11, "TimeShiftAttempts", &v16, &v15);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  v16 = 4;
  v15 = llround(*(a1 + 120));
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_CC97E8((a2 + 24), "TimeShiftApplied", &v16, &v15);
  }

  else
  {
    sub_CC999C(v12, "TimeShiftApplied", &v16, &v15);
    v13 = v12 + 48;
  }

  *(a2 + 32) = v13;
  v16 = 2;
  v15 = *(a1 + 144);
  if (v13 >= *(a2 + 40))
  {
    result = sub_CC9AEC((a2 + 24), "MemoryFootprint", &v16, &v15);
    *(a2 + 32) = result;
  }

  else
  {
    sub_CC9CA0(v13, "MemoryFootprint", &v16, &v15);
    result = v13 + 48;
    *(a2 + 32) = v13 + 48;
  }

  return result;
}

void sub_CC972C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_CC97E8(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC999C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC9988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC999C(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC9AEC(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CC9CA0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CC9C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC9CA0(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CC9DF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v177);
  v6 = *(a2 + 160);
  if (v6 == 1)
  {
    v12 = *(a2 + 12);
    if (HIDWORD(v12) == 1)
    {
      if (v12 == -3)
      {
        v13 = 19;
        *(&v200[0].__r_.__value_.__s + 23) = 19;
        strcpy(v200, "virtual destination");
        v14 = 0x206C617574726976;
        goto LABEL_34;
      }

      if (v12 == -2)
      {
        v13 = 14;
        *(&v200[0].__r_.__value_.__s + 23) = 14;
        strcpy(v200, "virtual origin");
        v14 = 0x206C617574726976;
        goto LABEL_34;
      }
    }

    v31 = sub_502FF8(a1[515] + 24, __ROR8__(v12, 32), 0, "stop");
    v32 = (v31 - *v31);
    if (*v32 >= 9u && (v33 = v32[4]) != 0)
    {
      v34 = (v31 + v33 + *(v31 + v33));
    }

    else
    {
      v34 = 0;
    }

    sub_CCE434(v34, 2, v200);
    v13 = HIBYTE(v200[0].__r_.__value_.__r.__words[2]);
    v14 = v200[0].__r_.__value_.__r.__words[0];
LABEL_34:
    if ((v13 & 0x80u) == 0)
    {
      v39 = v200;
    }

    else
    {
      v39 = v14;
    }

    if ((v13 & 0x80u) == 0)
    {
      size = v13;
    }

    else
    {
      size = v200[0].__r_.__value_.__l.__size_;
    }

    v41 = sub_4A5C(&v178, v39, size);
    sub_4A5C(v41, " (", 2);
    sub_A4FC74(a1 + 515, *(a2 + 12));
    v42 = std::ostream::operator<<();
    v43 = sub_4A5C(v42, ") @ ", 4);
    sub_35CC(__p, *(a2 + 4));
    v176 = 8;
    strcpy(v175, "HH:mm:ss");
    sub_4564(__p, v175, &v189);
    if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v189;
    }

    else
    {
      v44 = v189.__r_.__value_.__r.__words[0];
    }

    if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = v189.__r_.__value_.__l.__size_;
    }

    v46 = sub_4A5C(v43, v44, v45);
    v47 = sub_4A5C(v46, " -> ", 4);
    v48 = *(a2 + 20);
    if (HIDWORD(v48) == 1)
    {
      if (v48 == -3)
      {
        v49 = 19;
        HIBYTE(v173[2]) = 19;
        strcpy(v173, "virtual destination");
        v50 = 0x206C617574726976;
        goto LABEL_106;
      }

      if (v48 == -2)
      {
        v49 = 14;
        HIBYTE(v173[2]) = 14;
        strcpy(v173, "virtual origin");
        v50 = 0x206C617574726976;
        goto LABEL_106;
      }
    }

    v51 = sub_502FF8(a1[515] + 24, __ROR8__(v48, 32), 0, "stop");
    v52 = (v51 - *v51);
    if (*v52 >= 9u && (v53 = v52[4]) != 0)
    {
      v54 = (v51 + v53 + *(v51 + v53));
    }

    else
    {
      v54 = 0;
    }

    sub_CCE434(v54, 2, v173);
    v49 = HIBYTE(v173[2]);
    v50 = v173[0];
LABEL_106:
    if ((v49 & 0x80u) == 0)
    {
      v84 = v173;
    }

    else
    {
      v84 = v50;
    }

    if ((v49 & 0x80u) == 0)
    {
      v85 = v49;
    }

    else
    {
      v85 = v173[1];
    }

    v86 = sub_4A5C(v47, v84, v85);
    sub_4A5C(v86, " (", 2);
    sub_A4FC74(a1 + 515, *(a2 + 20));
    v87 = std::ostream::operator<<();
    v88 = sub_4A5C(v87, ") @ ", 4);
    sub_35CC(v174, *(a2 + 8));
    v169 = 8;
    strcpy(v168, "HH:mm:ss");
    sub_4564(v174, v168, &__dst);
    if ((v172 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if ((v172 & 0x80u) == 0)
    {
      v90 = v172;
    }

    else
    {
      v90 = v171;
    }

    sub_4A5C(v88, p_dst, v90);
    if (v172 < 0)
    {
      operator delete(__dst);
      if ((v169 & 0x80000000) == 0)
      {
LABEL_120:
        sub_3874(v174);
        if ((SHIBYTE(v173[2]) & 0x80000000) == 0)
        {
          goto LABEL_121;
        }

        goto LABEL_127;
      }
    }

    else if ((v169 & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    operator delete(v168[0]);
    sub_3874(v174);
    if ((SHIBYTE(v173[2]) & 0x80000000) == 0)
    {
LABEL_121:
      if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_128;
    }

LABEL_127:
    operator delete(v173[0]);
    if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_122:
      if ((v176 & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_129;
    }

LABEL_128:
    operator delete(v189.__r_.__value_.__l.__data_);
    if ((v176 & 0x80000000) == 0)
    {
LABEL_123:
      sub_3874(__p);
      if ((SHIBYTE(v200[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_259;
      }

LABEL_130:
      operator delete(v200[0].__r_.__value_.__l.__data_);
      goto LABEL_259;
    }

LABEL_129:
    operator delete(v175[0]);
    sub_3874(__p);
    if ((SHIBYTE(v200[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_130;
  }

  if (v6)
  {
    sub_5AF20();
  }

  v7 = __ROR8__(sub_A56F04(a1 + 517, *(a2 + 32), *(a2 + 52), *(a2 + 40)), 32);
  v8 = sub_3A25A8(a1[523] + 24, v7, 0, "trip");
  v9 = (v8 - *v8);
  if (*v9 >= 7u && (v10 = v9[3]) != 0)
  {
    v11 = *(v8 + v10 + 4) | (*(v8 + v10) << 32);
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 52);
  v16 = sub_A57920(a1 + 517, *(a2 + 32));
  v17 = (v16 - *v16);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (v16 + v18 + *(v16 + v18));
  }

  else
  {
    v19 = 0;
  }

  v20 = *sub_A571D4(v19, v15);
  v21 = *(a2 + 56);
  v22 = sub_A57920(a1 + 517, *(a2 + 32));
  v23 = (v22 - *v22);
  if (*v23 >= 9u && (v24 = v23[4]) != 0)
  {
    v25 = (v22 + v24 + *(v22 + v24));
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_A571D4(v25, v21);
  v27 = __ROR8__(v20, 32);
  v28 = *v26;
  if (HIDWORD(v27) == 1)
  {
    if (v27 == -3)
    {
      v29 = 19;
      *(&v174[0].__r_.__value_.__s + 23) = 19;
      strcpy(v174, "virtual destination");
      v30 = 0x206C617574726976;
      goto LABEL_56;
    }

    if (v27 == -2)
    {
      v29 = 14;
      *(&v174[0].__r_.__value_.__s + 23) = 14;
      strcpy(v174, "virtual origin");
      v30 = 0x206C617574726976;
      goto LABEL_56;
    }
  }

  v35 = sub_502FF8(a1[515] + 24, __ROR8__(v27, 32), 0, "stop");
  v36 = (v35 - *v35);
  if (*v36 >= 9u && (v37 = v36[4]) != 0)
  {
    v38 = (v35 + v37 + *(v35 + v37));
  }

  else
  {
    v38 = 0;
  }

  sub_CCE434(v38, 2, v174);
  v29 = HIBYTE(v174[0].__r_.__value_.__r.__words[2]);
  v30 = v174[0].__r_.__value_.__r.__words[0];
LABEL_56:
  if ((v29 & 0x80u) == 0)
  {
    v55 = v174;
  }

  else
  {
    v55 = v30;
  }

  if ((v29 & 0x80u) == 0)
  {
    v56 = v29;
  }

  else
  {
    v56 = v174[0].__r_.__value_.__l.__size_;
  }

  v57 = sub_4A5C(&v178, v55, v56);
  sub_4A5C(v57, " (", 2);
  sub_A4FC74(a1 + 515, v27);
  v58 = std::ostream::operator<<();
  v59 = sub_4A5C(v58, ") @ ", 4);
  v60 = *(a2 + 16);
  v189.__r_.__value_.__r.__words[0] = *(a2 + 8);
  LODWORD(v189.__r_.__value_.__r.__words[1]) = v60;
  HIBYTE(v191.__locale_) = 8;
  strcpy(__p, "HH:mm:ss");
  sub_509AD8(&v189, __p, v200);
  if (SHIBYTE(v191.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v200[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v61 = v200;
  }

  else
  {
    v61 = v200[0].__r_.__value_.__r.__words[0];
  }

  if ((v200[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = HIBYTE(v200[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v62 = v200[0].__r_.__value_.__l.__size_;
  }

  sub_4A5C(v59, v61, v62);
  if (SHIBYTE(v200[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v174[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_72:
      if (!*(a2 + 4))
      {
        goto LABEL_96;
      }

      goto LABEL_76;
    }
  }

  else if ((SHIBYTE(v174[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(v174[0].__r_.__value_.__l.__data_);
  if (!*(a2 + 4))
  {
    goto LABEL_96;
  }

LABEL_76:
  v63 = sub_4A5C(&v178, " [check in by: ", 15);
  v64 = *(a2 + 4);
  v65 = *(a2 + 12);
  if (v65 == 0x7FFFFFFF || v64 == 0x7FFFFFFF)
  {
    v66 = v64 / -10;
    v67 = v64 % 10;
    v69 = 0x7FFFFFFF00000000;
  }

  else
  {
    v66 = v64 / -10;
    v67 = v64 % 10;
    if (v64 < 0)
    {
      v68 = -5;
    }

    else
    {
      v68 = 5;
    }

    v69 = (v65 + v66 + (((-103 * (v68 + v67)) >> 15) & 1) + ((-103 * (v68 + v67)) >> 10)) << 32;
  }

  v70 = v66 + *(a2 + 8);
  if (v64 < 0)
  {
    v71 = -5;
  }

  else
  {
    v71 = 5;
  }

  v72 = *(a2 + 16);
  v200[0].__r_.__value_.__r.__words[0] = v69 | (v70 + (((-103 * (v71 + v67)) >> 15) & 1) + ((-103 * (v71 + v67)) >> 10));
  LODWORD(v200[0].__r_.__value_.__r.__words[1]) = v72;
  HIBYTE(v191.__locale_) = 8;
  strcpy(__p, "HH:mm:ss");
  sub_509AD8(v200, __p, v174);
  if (SHIBYTE(v191.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v174[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = v174;
  }

  else
  {
    v73 = v174[0].__r_.__value_.__r.__words[0];
  }

  if ((v174[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = HIBYTE(v174[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v74 = v174[0].__r_.__value_.__l.__size_;
  }

  v75 = sub_4A5C(v63, v73, v74);
  sub_4A5C(v75, "]", 1);
  if (SHIBYTE(v174[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174[0].__r_.__value_.__l.__data_);
  }

LABEL_96:
  v76 = sub_4A5C(&v178, " -> ", 4);
  v77 = __ROR8__(v28, 32);
  if (HIDWORD(v77) == 1)
  {
    if (v77 == -3)
    {
      v78 = 19;
      *(&v174[0].__r_.__value_.__s + 23) = 19;
      strcpy(v174, "virtual destination");
      v79 = 0x206C617574726976;
      goto LABEL_132;
    }

    if (v77 == -2)
    {
      v78 = 14;
      *(&v174[0].__r_.__value_.__s + 23) = 14;
      strcpy(v174, "virtual origin");
      v79 = 0x206C617574726976;
      goto LABEL_132;
    }
  }

  v80 = sub_502FF8(a1[515] + 24, __ROR8__(v77, 32), 0, "stop");
  v81 = (v80 - *v80);
  if (*v81 >= 9u && (v82 = v81[4]) != 0)
  {
    v83 = (v80 + v82 + *(v80 + v82));
  }

  else
  {
    v83 = 0;
  }

  sub_CCE434(v83, 2, v174);
  v78 = HIBYTE(v174[0].__r_.__value_.__r.__words[2]);
  v79 = v174[0].__r_.__value_.__r.__words[0];
LABEL_132:
  if ((v78 & 0x80u) == 0)
  {
    v91 = v174;
  }

  else
  {
    v91 = v79;
  }

  if ((v78 & 0x80u) == 0)
  {
    v92 = v78;
  }

  else
  {
    v92 = v174[0].__r_.__value_.__l.__size_;
  }

  v93 = sub_4A5C(v76, v91, v92);
  sub_4A5C(v93, " (", 2);
  sub_A4FC74(a1 + 515, v77);
  v94 = std::ostream::operator<<();
  v95 = sub_4A5C(v94, ") @ ", 4);
  v96 = *(a2 + 28);
  v189.__r_.__value_.__r.__words[0] = *(a2 + 20);
  LODWORD(v189.__r_.__value_.__r.__words[1]) = v96;
  HIBYTE(v191.__locale_) = 8;
  strcpy(__p, "HH:mm:ss");
  sub_509AD8(&v189, __p, v200);
  if (SHIBYTE(v191.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v200[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v97 = v200;
  }

  else
  {
    v97 = v200[0].__r_.__value_.__r.__words[0];
  }

  if ((v200[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v98 = HIBYTE(v200[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v98 = v200[0].__r_.__value_.__l.__size_;
  }

  v99 = sub_4A5C(v95, v97, v98);
  v100 = sub_4A5C(v99, " (", 2);
  v101 = __ROR8__(v11, 32);
  v102 = sub_92FC60(a1[507] + 24, v101, 0, "line");
  v103 = a1 + 507;
  v104 = (v102 - *v102);
  if (*v104 >= 0xFu && (v105 = v104[7]) != 0)
  {
    v106 = (v102 + v105 + *(v102 + v105));
  }

  else
  {
    v106 = 0;
  }

  sub_CCE434(v106, 2, __p);
  if (SHIBYTE(v191.__locale_) >= 0)
  {
    v107 = __p;
  }

  else
  {
    v107 = __p[0];
  }

  if (SHIBYTE(v191.__locale_) >= 0)
  {
    locale_high = HIBYTE(v191.__locale_);
  }

  else
  {
    locale_high = __p[1];
  }

  v109 = sub_4A5C(v100, v107, locale_high);
  sub_4A5C(v109, "; line: ", 8);
  v110 = sub_92FC60(*v103 + 24, v101, 0, "line");
  v111 = (v110 - *v110);
  if (*v111 >= 5u && (v112 = v111[2]) != 0)
  {
    v113 = *(v110 + v112);
  }

  else
  {
    v113 = 0;
  }

  v114 = sub_2C939C(*v103 + 24, 1u, 0);
  if (!v114)
  {
    goto LABEL_278;
  }

  v115 = &v114[-*v114];
  if (*v115 < 0xDu)
  {
    goto LABEL_278;
  }

  v116 = *(v115 + 6);
  if (!v116)
  {
    goto LABEL_278;
  }

  v117 = &v114[v116 + *&v114[v116]];
  v118 = &v117[-*v117];
  if (*v118 >= 0xBu)
  {
    v119 = *(v118 + 5);
    if (v119)
    {
      if (v117[v119])
      {
        nullsub_1(v113);
      }
    }
  }

  v120 = std::ostream::operator<<();
  sub_4A5C(v120, "; trip: ", 8);
  v121 = sub_3A25A8(a1[523] + 24, v7, 0, "trip");
  v122 = (v121 - *v121);
  if (*v122 >= 5u && (v123 = v122[2]) != 0)
  {
    v124 = *(v121 + v123);
  }

  else
  {
    v124 = 0;
  }

  v125 = sub_2C939C(a1[523] + 24, 1u, 0);
  if (!v125 || (v126 = &v125[-*v125], *v126 < 0xDu) || (v127 = *(v126 + 6)) == 0)
  {
LABEL_278:
    exception = __cxa_allocate_exception(0x40uLL);
    v167 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v128 = &v125[v127 + *&v125[v127]];
  v129 = &v128[-*v128];
  if (*v129 >= 0xBu)
  {
    v130 = *(v129 + 5);
    if (v130)
    {
      if (v128[v130])
      {
        nullsub_1(v124);
      }
    }
  }

  v131 = std::ostream::operator<<();
  sub_4A5C(v131, ")", 1);
  if (SHIBYTE(v191.__locale_) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v200[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_180:
      if ((SHIBYTE(v174[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_181;
      }

LABEL_185:
      operator delete(v174[0].__r_.__value_.__l.__data_);
      v132 = *(a2 + 64);
      v133 = *(a2 + 72);
      if (v132 == v133)
      {
        goto LABEL_188;
      }

LABEL_186:
      __p[0] = 0;
      __p[1] = 0;
      v191.__locale_ = 0;
      if (!((0xEEEEEEEEEEEEEEEFLL * ((v133 - v132) >> 2)) >> 62))
      {
        operator new();
      }

      sub_1794();
    }
  }

  else if ((SHIBYTE(v200[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_180;
  }

  operator delete(v200[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(v174[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_185;
  }

LABEL_181:
  v132 = *(a2 + 64);
  v133 = *(a2 + 72);
  if (v132 != v133)
  {
    goto LABEL_186;
  }

LABEL_188:
  if (*(a2 + 88) == *(a2 + 96))
  {
    goto LABEL_259;
  }

  v134 = sub_4A5C(&v178, " [Upcoming after ", 17);
  sub_35CC(v174, *(a2 + 112));
  HIBYTE(v173[2]) = 8;
  strcpy(v173, "HH:mm:ss");
  sub_4564(v174, v173, v175);
  if (v176 >= 0)
  {
    v135 = v175;
  }

  else
  {
    v135 = v175[0];
  }

  if (v176 >= 0)
  {
    v136 = v176;
  }

  else
  {
    v136 = v175[1];
  }

  v137 = sub_4A5C(v134, v135, v136);
  v138 = sub_4A5C(v137, ": ", 2);
  v139 = *(a2 + 88);
  v140 = *(a2 + 96);
  sub_19594F8(__p);
  if (v139 != v140)
  {
    v141 = *(v139 + 12);
    v168[0] = *(v139 + 4);
    LODWORD(v168[1]) = v141;
    *(&v200[0].__r_.__value_.__s + 23) = 8;
    strcpy(v200, "HH:mm:ss");
    sub_509AD8(v168, v200, &v189);
    if (SHIBYTE(v200[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v200[0].__r_.__value_.__l.__data_);
    }

    if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v142 = &v189;
    }

    else
    {
      v142 = v189.__r_.__value_.__r.__words[0];
    }

    if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v143 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v143 = v189.__r_.__value_.__l.__size_;
    }

    sub_4A5C(__p, v142, v143);
    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v189.__r_.__value_.__l.__data_);
      v144 = v139 + 60;
      if (v139 + 60 == v140)
      {
        goto LABEL_220;
      }
    }

    else
    {
      v144 = v139 + 60;
      if (v139 + 60 == v140)
      {
        goto LABEL_220;
      }
    }

    do
    {
      sub_4A5C(__p, ", ", 2);
      v145 = *(v144 + 12);
      v168[0] = *(v144 + 4);
      LODWORD(v168[1]) = v145;
      *(&v200[0].__r_.__value_.__s + 23) = 8;
      strcpy(v200, "HH:mm:ss");
      sub_509AD8(v168, v200, &v189);
      if (SHIBYTE(v200[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v200[0].__r_.__value_.__l.__data_);
      }

      if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v146 = &v189;
      }

      else
      {
        v146 = v189.__r_.__value_.__r.__words[0];
      }

      if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v147 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v147 = v189.__r_.__value_.__l.__size_;
      }

      sub_4A5C(__p, v146, v147);
      if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v189.__r_.__value_.__l.__data_);
      }

      v144 += 60;
    }

    while (v144 != v140);
  }

LABEL_220:
  if ((v199 & 0x10) != 0)
  {
    v149 = v198;
    if (v198 < v195)
    {
      v198 = v195;
      v149 = v195;
    }

    v150 = v194;
    v148 = v149 - v194;
    if (v149 - v194 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_247;
    }
  }

  else
  {
    if ((v199 & 8) == 0)
    {
      v148 = 0;
      v172 = 0;
      goto LABEL_231;
    }

    v150 = v192;
    v148 = v193 - v192;
    if ((v193 - v192) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_247:
      sub_3244();
    }
  }

  if (v148 >= 0x17)
  {
    operator new();
  }

  v172 = v148;
  if (v148)
  {
    memmove(&__dst, v150, v148);
  }

LABEL_231:
  *(&__dst + v148) = 0;
  if (v197 < 0)
  {
    operator delete(v196);
  }

  std::locale::~locale(&v191);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v172 & 0x80u) == 0)
  {
    v151 = &__dst;
  }

  else
  {
    v151 = __dst;
  }

  if ((v172 & 0x80u) == 0)
  {
    v152 = v172;
  }

  else
  {
    v152 = v171;
  }

  v153 = sub_4A5C(v138, v151, v152);
  v154 = sub_4A5C(v153, ", ", 2);
  v155 = *(a2 + 144);
  if (v155 <= 1)
  {
    if (*(a2 + 144))
    {
      goto LABEL_245;
    }

    v156 = 6;
    HIBYTE(v191.__locale_) = 6;
    LODWORD(__p[0]) = 1952543859;
    v158 = 25449;
  }

  else
  {
    if (v155 == 2)
    {
      v156 = 12;
      HIBYTE(v191.__locale_) = 12;
      LODWORD(__p[1]) = 1701013878;
      v157 = "good_service";
      goto LABEL_249;
    }

    if (v155 != 3)
    {
      if (v155 == 4)
      {
        v156 = 10;
        HIBYTE(v191.__locale_) = 10;
        LOWORD(__p[1]) = 25955;
        v157 = "no_service";
LABEL_249:
        __p[0] = *v157;
        goto LABEL_253;
      }

LABEL_245:
      v156 = 7;
      HIBYTE(v191.__locale_) = 7;
      qmemcpy(__p, "unknown", 7);
      goto LABEL_253;
    }

    v156 = 6;
    HIBYTE(v191.__locale_) = 6;
    LODWORD(__p[0]) = 1634493796;
    v158 = 29561;
  }

  WORD2(__p[0]) = v158;
LABEL_253:
  *(__p + v156) = 0;
  v159 = sub_4A5C(v154, __p, v156);
  if (SHIBYTE(v191.__locale_) < 0)
  {
    v160 = v159;
    operator delete(__p[0]);
    v159 = v160;
  }

  sub_4A5C(v159, "]", 1);
  if ((v172 & 0x80000000) == 0)
  {
    if ((v176 & 0x80000000) == 0)
    {
      goto LABEL_257;
    }

LABEL_276:
    operator delete(v175[0]);
    if ((SHIBYTE(v173[2]) & 0x80000000) == 0)
    {
      goto LABEL_258;
    }

LABEL_277:
    operator delete(v173[0]);
    goto LABEL_258;
  }

  operator delete(__dst);
  if (v176 < 0)
  {
    goto LABEL_276;
  }

LABEL_257:
  if (SHIBYTE(v173[2]) < 0)
  {
    goto LABEL_277;
  }

LABEL_258:
  sub_3874(v174);
LABEL_259:
  if ((v188 & 0x10) != 0)
  {
    v162 = v187;
    if (v187 < v184)
    {
      v187 = v184;
      v162 = v184;
    }

    v163 = v183;
    v161 = v162 - v183;
    if (v162 - v183 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_274;
    }
  }

  else
  {
    if ((v188 & 8) == 0)
    {
      v161 = 0;
      a3[23] = 0;
      goto LABEL_270;
    }

    v163 = v181;
    v161 = v182 - v181;
    if ((v182 - v181) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_274:
      sub_3244();
    }
  }

  if (v161 >= 0x17)
  {
    operator new();
  }

  a3[23] = v161;
  if (v161)
  {
    memmove(a3, v163, v161);
  }

LABEL_270:
  a3[v161] = 0;
  v178 = v164;
  if (v186 < 0)
  {
    operator delete(v185);
  }

  std::locale::~locale(&v180);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCB4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a73 < 0)
  {
    operator delete(a72);
  }

  sub_1959728(&a74);
  if (a34 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_9:
      sub_3874(&a22);
      sub_DBE4(&a38);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(a15);
  goto LABEL_9;
}

void sub_CCB858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70)
  {
    JUMPOUT(0xCCB864);
  }

  JUMPOUT(0xCCB8B0);
}

void sub_CCB87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a73 < 0)
  {
    operator delete(__p);
  }

  if (*(v73 - 105) < 0)
  {
    operator delete(*(v73 - 128));
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_DBE4(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_CCB8C0(_BYTE *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = 126 - 2 * __clz((v5 - v4) >> 2);
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_9BD1AC(v4, v5, &v29, v7, 1);
  v28 = sub_B780(a2, 9000, 10, 1, 1);
  if (sub_B6E0(&v28))
  {
    sub_D7B0(&v29);
    v8 = nullsub_1(&v28);
    if (*v8 == *sub_B718(&v28))
    {
      sub_4A5C(&v31, "every ", 6);
      nullsub_1(&v28);
    }

    else
    {
      sub_4A5C(&v31, "every ", 6);
      nullsub_1(&v28);
      v15 = std::ostream::operator<<();
      sub_4A5C(v15, "–", 3);
      sub_B718(&v28);
    }

    v16 = std::ostream::operator<<();
    sub_4A5C(v16, " min", 4);
    if ((v44 & 0x10) != 0)
    {
      v18 = v43;
      if (v43 < v38)
      {
        v43 = v38;
        v18 = v38;
      }

      v19 = v37;
      v17 = v18 - v37;
      if ((v18 - v37) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v17 = 0;
        a1[23] = 0;
LABEL_31:
        a1[v17] = 0;
        v31.__locale_ = v20;
        if (v42 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v33);
        std::iostream::~basic_iostream();
        return std::ios::~ios();
      }

      v19 = v34;
      v17 = v36 - v34;
      if (v36 - v34 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_35:
        sub_3244();
      }
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    a1[23] = v17;
    if (v17)
    {
      memmove(a1, v19, v17);
    }

    goto LABEL_31;
  }

  v10 = *a2;
  v9 = a2[1];
  sub_19594F8(&v29);
  if (v10 != v9)
  {
    sub_35CC(v50, *v10);
    v49 = 8;
    strcpy(v48, "HH:mm:ss");
    sub_4564(v11, v48, &v45);
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    sub_3874(v50);
    if ((v47 & 0x80u) == 0)
    {
      v12 = &v45;
    }

    else
    {
      v12 = v45;
    }

    if ((v47 & 0x80u) == 0)
    {
      v13 = v47;
    }

    else
    {
      v13 = v46;
    }

    sub_4A5C(&v29, v12, v13);
    if (v47 < 0)
    {
      operator delete(v45);
      v14 = v10 + 1;
      if (v14 == v9)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v14 = v10 + 1;
      if (v14 == v9)
      {
        goto LABEL_49;
      }
    }

    do
    {
      sub_4A5C(&v29, ", ", 2);
      sub_35CC(v50, *v14);
      v49 = 8;
      strcpy(v48, "HH:mm:ss");
      sub_4564(v21, v48, &v45);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      sub_3874(v50);
      if ((v47 & 0x80u) == 0)
      {
        v22 = &v45;
      }

      else
      {
        v22 = v45;
      }

      if ((v47 & 0x80u) == 0)
      {
        v23 = v47;
      }

      else
      {
        v23 = v46;
      }

      sub_4A5C(&v29, v22, v23);
      if (v47 < 0)
      {
        operator delete(v45);
      }

      ++v14;
    }

    while (v14 != v9);
  }

LABEL_49:
  if ((v41 & 0x10) != 0)
  {
    v25 = v40;
    if (v40 < v36)
    {
      v40 = v36;
      v25 = v36;
    }

    v26 = v35;
    v24 = v25 - v35;
    if (v25 - v35 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_65:
      sub_3244();
    }

LABEL_55:
    if (v24 >= 0x17)
    {
      operator new();
    }

    a1[23] = v24;
    if (v24)
    {
      memmove(a1, v26, v24);
    }

    goto LABEL_60;
  }

  if ((v41 & 8) != 0)
  {
    v26 = v32;
    v24 = v34 - v32;
    if ((v34 - v32) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_65;
    }

    goto LABEL_55;
  }

  v24 = 0;
  a1[23] = 0;
LABEL_60:
  a1[v24] = 0;
  if (SHIBYTE(__p) < 0)
  {
    operator delete(v38);
  }

  std::locale::~locale(&v31);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_CCC008(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 137) < 0)
  {
    operator delete(*(v2 - 160));
  }

  sub_1959728(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCC094@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v28);
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v5 != *a2)
  {
    sub_4A5C(&v29, "    [", 5);
    v7 = std::ostream::operator<<();
    v8 = sub_4A5C(v7, "] ", 2);
    sub_CC9DF0(a1, *a2, &__p);
    if ((v27 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v10 = v27;
    }

    else
    {
      v10 = v26;
    }

    sub_4A5C(v8, p_p, v10);
    if (v27 < 0)
    {
      operator delete(__p);
      if (v6 == 168)
      {
        goto LABEL_12;
      }
    }

    else if (v6 == 168)
    {
      goto LABEL_12;
    }

    v17 = 0xCF3CF3CF3CF3CF3DLL * (v6 >> 3) - 1;
    v18 = 2;
    v19 = 168;
    do
    {
      sub_4A5C(&v29, "\n", 1);
      sub_4A5C(&v29, "    [", 5);
      v20 = std::ostream::operator<<();
      v21 = sub_4A5C(v20, "] ", 2);
      sub_CC9DF0(a1, *a2 + v19, &__p);
      if ((v27 & 0x80u) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v23 = v27;
      }

      else
      {
        v23 = v26;
      }

      sub_4A5C(v21, v22, v23);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      ++v18;
      v19 += 168;
      --v17;
    }

    while (v17);
  }

LABEL_12:
  if ((v39 & 0x10) != 0)
  {
    v13 = v38;
    if (v38 < v35)
    {
      v38 = v35;
      v13 = v35;
    }

    v12 = a3;
    v14 = v34;
    v11 = v13 - v34;
    if (v13 - v34 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if ((v39 & 8) == 0)
    {
      v11 = 0;
      v12 = a3;
      a3[23] = 0;
      goto LABEL_23;
    }

    v12 = a3;
    v14 = v32;
    v11 = v33 - v32;
    if ((v33 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_37:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  v12[23] = v11;
  if (v11)
  {
    memmove(v12, v14, v11);
  }

LABEL_23:
  v12[v11] = 0;
  v29 = v15;
  if (v37 < 0)
  {
    operator delete(v36);
  }

  std::locale::~locale(&v31);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCC45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_DBE4(&a16);
    _Unwind_Resume(a1);
  }

  sub_DBE4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_CCC4A8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result + 20;
  if (*(result + 20) == 0x7FFFFFFF)
  {
    a2[23] = 0;
    *a2 = 0;
    return result;
  }

  v4 = result;
  sub_D7B0(v148);
  v5 = sub_4A5C(&v149, "  Criteria:\n", 12);
  v6 = sub_4A5C(v5, "    Exp. Departure time: ", 25);
  HIBYTE(v146[2]) = 19;
  strcpy(v146, "yyyy-MM-dd HH:mm:ss");
  sub_509AD8(v3, v146, &v147);
  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v147;
  }

  else
  {
    v7 = v147.__r_.__value_.__r.__words[0];
  }

  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v147.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v147.__r_.__value_.__l.__size_;
  }

  v9 = sub_4A5C(v6, v7, size);
  v10 = sub_4A5C(v9, " (", 2);
  v144 = 0;
  LOBYTE(v143) = 0;
  sub_509AD8(v3, &v143, &v145);
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v145;
  }

  else
  {
    v11 = v145.__r_.__value_.__r.__words[0];
  }

  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v145.__r_.__value_.__l.__size_;
  }

  v13 = sub_4A5C(v10, v11, v12);
  v14 = sub_4A5C(v13, ")\n", 2);
  v15 = sub_4A5C(v14, "    Exp. Arrival time: ", 23);
  HIBYTE(v141[2]) = 19;
  strcpy(v141, "yyyy-MM-dd HH:mm:ss");
  sub_509AD8(v4 + 32, v141, &v142);
  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v142;
  }

  else
  {
    v16 = v142.__r_.__value_.__r.__words[0];
  }

  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v142.__r_.__value_.__l.__size_;
  }

  v18 = sub_4A5C(v15, v16, v17);
  v19 = sub_4A5C(v18, " (", 2);
  v139 = 0;
  LOBYTE(v138) = 0;
  sub_509AD8(v4 + 32, &v138, &v140);
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v140;
  }

  else
  {
    v20 = v140.__r_.__value_.__r.__words[0];
  }

  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v140.__r_.__value_.__l.__size_;
  }

  v22 = sub_4A5C(v19, v20, v21);
  v23 = sub_4A5C(v22, ")\n", 2);
  v24 = sub_4A5C(v23, "    Exp. Travel duration: ", 26);
  v136 = 0;
  LOBYTE(v135) = 0;
  sub_50A10C(v4 + 48, &v135, &v137);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v137;
  }

  else
  {
    v25 = v137.__r_.__value_.__r.__words[0];
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v137.__r_.__value_.__l.__size_;
  }

  v27 = sub_4A5C(v24, v25, v26);
  v28 = sub_4A5C(v27, "\n", 1);
  v29 = sub_4A5C(v28, "    Exp. Walking duration: ", 27);
  v133 = 0;
  LOBYTE(v132) = 0;
  sub_50A10C(v4 + 60, &v132, &v134);
  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v134;
  }

  else
  {
    v30 = v134.__r_.__value_.__r.__words[0];
  }

  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v134.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v134.__r_.__value_.__l.__size_;
  }

  v32 = sub_4A5C(v29, v30, v31);
  v33 = sub_4A5C(v32, "\n", 1);
  v34 = sub_4A5C(v33, "    Routing Preference Penalty: ", 32);
  std::ostream::operator<<();
  v35 = sub_4A5C(v34, "\n", 1);
  v36 = sub_4A5C(v35, "    Fare Estimate Penalty: ", 27);
  std::ostream::operator<<();
  v37 = sub_4A5C(v36, "\n", 1);
  v38 = sub_4A5C(v37, "    Price: ", 11);
  v40 = *(v4 + 104);
  if (v40 == 0x7FFFFFFF)
  {
    goto LABEL_50;
  }

  v41 = *(v4 + 135);
  if ((v41 & 0x80u) != 0)
  {
    v41 = *(v4 + 120);
  }

  if (!v41)
  {
LABEL_50:
    v50 = 0;
    v51 = 4;
    HIBYTE(v131) = 4;
    strcpy(&v130, "none");
  }

  else
  {
    v42 = v38;
    LODWORD(v39) = *(v4 + 136);
    std::to_string(&v128, v40 / v39);
    v43 = std::string::append(&v128, " ", 1uLL);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v129.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v129.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    v45 = *(v4 + 135);
    if (v45 >= 0)
    {
      v46 = (v4 + 112);
    }

    else
    {
      v46 = *(v4 + 112);
    }

    if (v45 >= 0)
    {
      v47 = *(v4 + 135);
    }

    else
    {
      v47 = *(v4 + 120);
    }

    v48 = std::string::append(&v129, v46, v47);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v131 = v48->__r_.__value_.__r.__words[2];
    v130 = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    v50 = 1;
    v51 = HIBYTE(v131);
    v38 = v42;
  }

  if ((v51 & 0x80u) == 0)
  {
    v52 = &v130;
  }

  else
  {
    v52 = v130;
  }

  if ((v51 & 0x80u) == 0)
  {
    v53 = v51;
  }

  else
  {
    v53 = *(&v130 + 1);
  }

  v54 = sub_4A5C(v38, v52, v53);
  v55 = sub_4A5C(v54, "\n", 1);
  v56 = sub_4A5C(v55, "    Normalised Monetary Cost: ", 30);
  v57 = *(v4 + 144);
  if (v57 == -1)
  {
    v58 = 4;
    *(&v127.__r_.__value_.__s + 23) = 4;
    strcpy(&v127, "none");
  }

  else
  {
    std::to_string(&v127, v57);
    v58 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
  }

  if ((v58 & 0x80u) == 0)
  {
    v59 = &v127;
  }

  else
  {
    v59 = v127.__r_.__value_.__r.__words[0];
  }

  if ((v58 & 0x80u) == 0)
  {
    v60 = v58;
  }

  else
  {
    v60 = v127.__r_.__value_.__l.__size_;
  }

  v61 = sub_4A5C(v56, v59, v60);
  v62 = sub_4A5C(v61, "\n", 1);
  v63 = sub_4A5C(v62, "    Used Transport Modes: ", 26);
  v126 = 8;
  strcpy(v125, "00000000");
  v64 = *(v4 + 96);
  if (v64)
  {
    HIBYTE(v125[0]) = 49;
    if ((v64 & 2) == 0)
    {
LABEL_68:
      if ((v64 & 4) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_92;
    }
  }

  else if ((v64 & 2) == 0)
  {
    goto LABEL_68;
  }

  BYTE6(v125[0]) = 49;
  if ((v64 & 4) == 0)
  {
LABEL_69:
    if ((v64 & 8) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_93;
  }

LABEL_92:
  BYTE5(v125[0]) = 49;
  if ((v64 & 8) == 0)
  {
LABEL_70:
    if ((v64 & 0x10) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_94;
  }

LABEL_93:
  BYTE4(v125[0]) = 49;
  if ((v64 & 0x10) == 0)
  {
LABEL_71:
    if ((v64 & 0x20) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_95;
  }

LABEL_94:
  BYTE3(v125[0]) = 49;
  if ((v64 & 0x20) == 0)
  {
LABEL_72:
    if ((v64 & 0x40) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_96;
  }

LABEL_95:
  BYTE2(v125[0]) = 49;
  if ((v64 & 0x40) == 0)
  {
LABEL_73:
    if ((v64 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_96:
  BYTE1(v125[0]) = 49;
  if ((v64 & 0x80) != 0)
  {
LABEL_74:
    LOBYTE(v125[0]) = 49;
  }

LABEL_75:
  v65 = sub_4A5C(v63, v125, 8);
  v66 = sub_4A5C(v65, "\n", 1);
  v67 = sub_4A5C(v66, "    Blocked: ", 13);
  if (*v4)
  {
    v68 = "yes";
  }

  else
  {
    v68 = "no";
  }

  if (*v4)
  {
    v69 = 3;
  }

  else
  {
    v69 = 2;
  }

  v70 = sub_4A5C(v67, v68, v69);
  v71 = sub_4A5C(v70, "\n", 1);
  v72 = sub_4A5C(v71, "    Avoids Blocking Incidents: ", 31);
  if (*(v4 + 1))
  {
    v73 = "yes";
  }

  else
  {
    v73 = "no";
  }

  if (*(v4 + 1))
  {
    v74 = 3;
  }

  else
  {
    v74 = 2;
  }

  v75 = sub_4A5C(v72, v73, v74);
  v76 = sub_4A5C(v75, "\n", 1);
  v77 = sub_4A5C(v76, "    Risk: ", 10);
  v78 = *(v4 + 2);
  if (v78 <= 1)
  {
    if (v78 == 1)
    {
      v79 = 3;
      v160 = 3;
      qmemcpy(&v159, "low", 3);
      goto LABEL_103;
    }

LABEL_101:
    v79 = 7;
    v160 = 7;
    qmemcpy(&v159, "unknown", 7);
    goto LABEL_103;
  }

  if (v78 != 2)
  {
    if (v78 == 3)
    {
      v79 = 10;
      v160 = 10;
      WORD4(v159) = 25964;
      *&v159 = *"infeasible";
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v79 = 16;
  v160 = 16;
  v159 = *"tight connection";
LABEL_103:
  *(&v159 + v79) = 0;
  v80 = sub_4A5C(v77, &v159, v79);
  if (v160 < 0)
  {
    v81 = v80;
    operator delete(v159);
    v80 = v81;
  }

  v82 = sub_4A5C(v80, "\n", 1);
  v83 = sub_4A5C(v82, "    Type: ", 10);
  if (*(v4 + 13) == 1)
  {
    v84 = 7;
    v160 = 7;
    LODWORD(v159) = 1819044198;
    v85 = 1852386668;
  }

  else
  {
    if (!*(v4 + 13))
    {
      v84 = 4;
      v160 = 4;
      LODWORD(v159) = 1852399981;
      goto LABEL_111;
    }

    v84 = 7;
    v160 = 7;
    LODWORD(v159) = 1852534389;
    v85 = 1853321070;
  }

  *(&v159 + 3) = v85;
LABEL_111:
  *(&v159 | v84) = 0;
  v86 = sub_4A5C(v83, &v159, v84);
  if (v160 < 0)
  {
    operator delete(v159);
    v87 = *(v4 + 16);
    if (v87 != -1)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v87 = *(v4 + 16);
    if (v87 != -1)
    {
LABEL_113:
      std::to_string(&v121, v87);
      v88 = std::string::insert(&v121, 0, " (group ", 8uLL);
      v89 = *&v88->__r_.__value_.__l.__data_;
      v122.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
      *&v122.__r_.__value_.__l.__data_ = v89;
      v88->__r_.__value_.__l.__size_ = 0;
      v88->__r_.__value_.__r.__words[2] = 0;
      v88->__r_.__value_.__r.__words[0] = 0;
      v90 = std::string::append(&v122, ")", 1uLL);
      v91 = *&v90->__r_.__value_.__l.__data_;
      v124 = v90->__r_.__value_.__r.__words[2];
      *__p = v91;
      v90->__r_.__value_.__l.__size_ = 0;
      v90->__r_.__value_.__r.__words[2] = 0;
      v90->__r_.__value_.__r.__words[0] = 0;
      v92 = HIBYTE(v124);
      goto LABEL_116;
    }
  }

  v92 = 0;
  HIBYTE(v124) = 0;
  LOBYTE(__p[0]) = 0;
LABEL_116:
  if ((v92 & 0x80u) == 0)
  {
    v93 = __p;
  }

  else
  {
    v93 = __p[0];
  }

  if ((v92 & 0x80u) == 0)
  {
    v94 = v92;
  }

  else
  {
    v94 = __p[1];
  }

  v95 = sub_4A5C(v86, v93, v94);
  v96 = sub_4A5C(v95, "\n", 1);
  v97 = sub_4A5C(v96, "    Realtime: ", 14);
  v98 = *(v4 + 4);
  switch(v98)
  {
    case 2:
      v99 = 12;
      v160 = 12;
      DWORD2(v159) = 1162692948;
      v100 = "ALL_REALTIME";
      goto LABEL_128;
    case 1:
      v99 = 13;
      v160 = 13;
      qmemcpy(&v159, "SOME_REALTIME", 13);
      goto LABEL_130;
    case 0:
      v99 = 10;
      v160 = 10;
      WORD4(v159) = 17225;
      v100 = "ALL_STATIC";
LABEL_128:
      *&v159 = *v100;
      goto LABEL_130;
  }

  v99 = 7;
  v160 = 7;
  qmemcpy(&v159, "UNKNOWN", 7);
LABEL_130:
  *(&v159 + v99) = 0;
  v101 = sub_4A5C(v97, &v159, v99);
  if (v160 < 0)
  {
    v102 = v101;
    operator delete(v159);
    v101 = v102;
  }

  v103 = sub_4A5C(v101, "\n", 1);
  v104 = sub_4A5C(v103, "    Realtime (Original): ", 25);
  v105 = *(v4 + 8);
  switch(v105)
  {
    case 2:
      v106 = 12;
      v160 = 12;
      DWORD2(v159) = 1162692948;
      v107 = "ALL_REALTIME";
      goto LABEL_138;
    case 1:
      v106 = 13;
      v160 = 13;
      qmemcpy(&v159, "SOME_REALTIME", 13);
      goto LABEL_140;
    case 0:
      v106 = 10;
      v160 = 10;
      WORD4(v159) = 17225;
      v107 = "ALL_STATIC";
LABEL_138:
      *&v159 = *v107;
      goto LABEL_140;
  }

  v106 = 7;
  v160 = 7;
  qmemcpy(&v159, "UNKNOWN", 7);
LABEL_140:
  *(&v159 + v106) = 0;
  v108 = sub_4A5C(v104, &v159, v106);
  if (v160 < 0)
  {
    v109 = v108;
    operator delete(v159);
    v108 = v109;
  }

  v110 = sub_4A5C(v108, "\n", 1);
  v111 = sub_4A5C(v110, "    Fulfils Avoid Types: ", 25);
  if (*(v4 + 12))
  {
    v112 = "yes";
  }

  else
  {
    v112 = "no";
  }

  if (*(v4 + 12))
  {
    v113 = 3;
  }

  else
  {
    v113 = 2;
  }

  v114 = sub_4A5C(v111, v112, v113);
  sub_4A5C(v114, "\n", 1);
  if (SHIBYTE(v124) < 0)
  {
    operator delete(__p[0]);
    if (v87 == -1)
    {
      goto LABEL_154;
    }
  }

  else if (v87 == -1)
  {
LABEL_154:
    if ((v126 & 0x80000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_161;
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_154;
    }
  }

  else if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_154;
  }

  operator delete(v121.__r_.__value_.__l.__data_);
  if ((v126 & 0x80000000) == 0)
  {
LABEL_155:
    if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_162;
  }

LABEL_161:
  operator delete(v125[0]);
  if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_156:
    if ((SHIBYTE(v131) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

LABEL_163:
    operator delete(v130);
    if (!v50)
    {
      goto LABEL_166;
    }

    goto LABEL_164;
  }

LABEL_162:
  operator delete(v127.__r_.__value_.__l.__data_);
  if (SHIBYTE(v131) < 0)
  {
    goto LABEL_163;
  }

LABEL_157:
  if (!v50)
  {
LABEL_166:
    if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_184;
  }

LABEL_164:
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_166;
    }
  }

  else if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_166;
  }

  operator delete(v128.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_167:
    if ((v133 & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_185;
  }

LABEL_184:
  operator delete(v134.__r_.__value_.__l.__data_);
  if ((v133 & 0x80000000) == 0)
  {
LABEL_168:
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_186;
  }

LABEL_185:
  operator delete(v132);
  if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_169:
    if ((v136 & 0x80000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_187;
  }

LABEL_186:
  operator delete(v137.__r_.__value_.__l.__data_);
  if ((v136 & 0x80000000) == 0)
  {
LABEL_170:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_188;
  }

LABEL_187:
  operator delete(v135);
  if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_171:
    if ((v139 & 0x80000000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_189;
  }

LABEL_188:
  operator delete(v140.__r_.__value_.__l.__data_);
  if ((v139 & 0x80000000) == 0)
  {
LABEL_172:
    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_190;
  }

LABEL_189:
  operator delete(v138);
  if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_173:
    if ((SHIBYTE(v141[2]) & 0x80000000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_191;
  }

LABEL_190:
  operator delete(v142.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v141[2]) & 0x80000000) == 0)
  {
LABEL_174:
    if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_192;
  }

LABEL_191:
  operator delete(v141[0]);
  if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_175:
    if ((v144 & 0x80000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_193;
  }

LABEL_192:
  operator delete(v145.__r_.__value_.__l.__data_);
  if ((v144 & 0x80000000) == 0)
  {
LABEL_176:
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_194;
  }

LABEL_193:
  operator delete(v143);
  if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_177:
    if ((SHIBYTE(v146[2]) & 0x80000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_195;
  }

LABEL_194:
  operator delete(v147.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v146[2]) & 0x80000000) == 0)
  {
LABEL_178:
    v115 = v158;
    if ((v158 & 0x10) == 0)
    {
      goto LABEL_179;
    }

LABEL_196:
    v118 = v157;
    if (v157 < v154)
    {
      v157 = v154;
      v118 = v154;
    }

    v117 = &v153;
    goto LABEL_199;
  }

LABEL_195:
  operator delete(v146[0]);
  v115 = v158;
  if ((v158 & 0x10) != 0)
  {
    goto LABEL_196;
  }

LABEL_179:
  if ((v115 & 8) != 0)
  {
    v117 = v152;
    v118 = v152[2];
LABEL_199:
    v119 = *v117;
    v116 = v118 - *v117;
    if (v116 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v116 >= 0x17)
    {
      operator new();
    }

    a2[23] = v116;
    if (v116)
    {
      memmove(a2, v119, v116);
    }

    goto LABEL_205;
  }

  v116 = 0;
  a2[23] = 0;
LABEL_205:
  a2[v116] = 0;
  v149 = v120;
  if (v156 < 0)
  {
    operator delete(v155);
  }

  std::locale::~locale(&v151);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCD31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a56 < 0)
  {
    operator delete(a51);
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a50 & 0x80000000) == 0)
  {
LABEL_7:
    if (a68 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  operator delete(a45);
  if (a68 < 0)
  {
LABEL_8:
    operator delete(a63);
    if ((a62 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((a62 & 0x80000000) == 0)
  {
LABEL_9:
    if (a74 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a57);
  if (a74 < 0)
  {
LABEL_10:
    operator delete(a73);
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((a72 & 0x80000000) == 0)
  {
LABEL_11:
    if (a78 < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a69);
  if (a78 < 0)
  {
LABEL_12:
    operator delete(a77);
    if ((a76 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((a76 & 0x80000000) == 0)
  {
LABEL_13:
    if (a82 < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(a75);
  if (a82 < 0)
  {
LABEL_14:
    operator delete(a81);
    if ((a80 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((a80 & 0x80000000) == 0)
  {
LABEL_15:
    if (SLOBYTE(STACK[0x217]) < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(a79);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
LABEL_16:
    operator delete(STACK[0x200]);
    if ((a84 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  if ((a84 & 0x80000000) == 0)
  {
LABEL_17:
    sub_DBE4(&STACK[0x218]);
    _Unwind_Resume(a1);
  }

LABEL_29:
  operator delete(a83);
  sub_DBE4(&STACK[0x218]);
  _Unwind_Resume(a1);
}

uint64_t sub_CCD67C@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v57);
  sub_CCC4A8(a2, &v69);
  if (v71 >= 0)
  {
    v6 = &v69;
  }

  else
  {
    v6 = v69;
  }

  if (v71 >= 0)
  {
    v7 = v71;
  }

  else
  {
    v7 = v70;
  }

  sub_4A5C(&v58, v6, v7);
  if (v71 < 0)
  {
    operator delete(v69);
    __dst = a3;
    v9 = a2[25];
    v11 = a2[26];
    v10 = v11 - v9;
    if (v11 == v9)
    {
      goto LABEL_42;
    }

LABEL_11:
    sub_4A5C(&v58, "  Bundle ", 9);
    v12 = std::ostream::operator<<();
    sub_4A5C(v12, " of ", 4);
    v13 = std::ostream::operator<<();
    v14 = sub_4A5C(v13, " [", 2);
    v15 = *(v9 + 24);
    if (v15 == 1)
    {
      v16 = "walking";
    }

    else
    {
      v16 = "public transport";
    }

    if (v15 == 1)
    {
      v17 = 7;
    }

    else
    {
      v17 = 16;
    }

    sub_4A5C(v14, v16, v17);
    if (*(v9 + 24))
    {
LABEL_32:
      v23 = sub_4A5C(&v58, "]:\n", 3);
      sub_CCC094(a1, v9, &v69);
      if (v71 >= 0)
      {
        v24 = &v69;
      }

      else
      {
        v24 = v69;
      }

      if (v71 >= 0)
      {
        v25 = v71;
      }

      else
      {
        v25 = v70;
      }

      sub_4A5C(v23, v24, v25);
      if (v71 < 0)
      {
        operator delete(v69);
        if (v10 == 72)
        {
          goto LABEL_42;
        }
      }

      else if (v10 == 72)
      {
        goto LABEL_42;
      }

      v37 = 0;
      v38 = 0x8E38E38E38E38E39 * (v10 >> 3) - 1;
      v39 = 2;
      while (1)
      {
        v40 = a2[25];
        sub_4A5C(&v58, "\n", 1);
        sub_4A5C(&v58, "  Bundle ", 9);
        v41 = std::ostream::operator<<();
        sub_4A5C(v41, " of ", 4);
        v42 = std::ostream::operator<<();
        v43 = sub_4A5C(v42, " [", 2);
        v44 = *(v40 + v37 + 96) == 1 ? "walking" : "public transport";
        v45 = *(v40 + v37 + 96) == 1 ? 7 : 16;
        sub_4A5C(v43, v44, v45);
        if (!*(v40 + v37 + 96))
        {
          break;
        }

LABEL_93:
        v50 = sub_4A5C(&v58, "]:\n", 3);
        sub_CCC094(a1, (v40 + v37 + 72), &v69);
        if (v71 >= 0)
        {
          v51 = &v69;
        }

        else
        {
          v51 = v69;
        }

        if (v71 >= 0)
        {
          v52 = v71;
        }

        else
        {
          v52 = v70;
        }

        sub_4A5C(v50, v51, v52);
        if (v71 < 0)
        {
          operator delete(v69);
        }

        ++v39;
        v37 += 72;
        if (!--v38)
        {
          goto LABEL_42;
        }
      }

      v46 = sub_4A5C(&v58, ", ", 2);
      v47 = *(v40 + v37 + 128);
      if (v47 <= 1)
      {
        if (*(v40 + v37 + 128))
        {
LABEL_86:
          v71 = 7;
          qmemcpy(&v69, "unknown", 7);
          v48 = 7;
          goto LABEL_91;
        }

        v71 = 6;
        LODWORD(v69) = 1952543859;
        v48 = 6;
        v49 = 25449;
      }

      else
      {
        if (v47 == 2)
        {
          v71 = 12;
          LODWORD(v70) = 1701013878;
          v69 = *"good_service";
          v48 = 12;
          goto LABEL_91;
        }

        if (v47 != 3)
        {
          if (v47 == 4)
          {
            v71 = 10;
            LOWORD(v70) = 25955;
            v69 = *"no_service";
            v48 = 10;
            goto LABEL_91;
          }

          goto LABEL_86;
        }

        v71 = 6;
        LODWORD(v69) = 1634493796;
        v48 = 6;
        v49 = 29561;
      }

      WORD2(v69) = v49;
LABEL_91:
      *(&v69 + v48) = 0;
      sub_4A5C(v46, &v69, v48);
      if (v71 < 0)
      {
        operator delete(v69);
      }

      goto LABEL_93;
    }

    v18 = sub_4A5C(&v58, ", ", 2);
    v19 = *(v9 + 56);
    if (v19 <= 1)
    {
      if (*(v9 + 56))
      {
        goto LABEL_24;
      }

      v20 = 6;
      v71 = 6;
      LODWORD(v69) = 1952543859;
      v22 = 25449;
    }

    else
    {
      if (v19 == 2)
      {
        v20 = 12;
        v71 = 12;
        LODWORD(v70) = 1701013878;
        v21 = "good_service";
        goto LABEL_26;
      }

      if (v19 != 3)
      {
        if (v19 == 4)
        {
          v20 = 10;
          v71 = 10;
          LOWORD(v70) = 25955;
          v21 = "no_service";
LABEL_26:
          v69 = *v21;
          goto LABEL_30;
        }

LABEL_24:
        v20 = 7;
        v71 = 7;
        qmemcpy(&v69, "unknown", 7);
        goto LABEL_30;
      }

      v20 = 6;
      v71 = 6;
      LODWORD(v69) = 1634493796;
      v22 = 29561;
    }

    WORD2(v69) = v22;
LABEL_30:
    *(&v69 + v20) = 0;
    sub_4A5C(v18, &v69, v20);
    if (v71 < 0)
    {
      operator delete(v69);
    }

    goto LABEL_32;
  }

  __dst = a3;
  v9 = a2[25];
  v8 = a2[26];
  v10 = v8 - v9;
  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_42:
  v26 = a2[29];
  v27 = a2[28];
  if (v27 != v26)
  {
    do
    {
      if (*(v27 + 4) != 0x7FFFFFFF)
      {
        operator new();
      }

      v27 += 16;
    }

    while (v27 != v26);
    v28 = sub_4A5C(&v58, "\nRuns expected ", 15);
    v55 = 0;
    v56 = 0;
    __p = 0;
    sub_CCB8C0(&v69, &__p);
    if (v71 >= 0)
    {
      v29 = &v69;
    }

    else
    {
      v29 = v69;
    }

    if (v71 >= 0)
    {
      v30 = v71;
    }

    else
    {
      v30 = v70;
    }

    sub_4A5C(v28, v29, v30);
    if (v71 < 0)
    {
      operator delete(v69);
    }

    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }
  }

  if ((v68 & 0x10) != 0)
  {
    v33 = v67;
    v31 = __dst;
    if (v67 < v64)
    {
      v67 = v64;
      v33 = v64;
    }

    v34 = v63;
    v32 = v33 - v63;
    if (v33 - v63 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v31 = __dst;
    if ((v68 & 8) == 0)
    {
      v32 = 0;
      __dst[23] = 0;
      goto LABEL_68;
    }

    v34 = v61;
    v32 = v62 - v61;
    if ((v62 - v61) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_102:
      sub_3244();
    }
  }

  if (v32 >= 0x17)
  {
    operator new();
  }

  v31[23] = v32;
  if (v32)
  {
    memmove(v31, v34, v32);
  }

LABEL_68:
  v31[v32] = 0;
  v58 = v35;
  if (v66 < 0)
  {
    operator delete(v65);
  }

  std::locale::~locale(&v60);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCDF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
    sub_DBE4(&a14);
    _Unwind_Resume(a1);
  }

  sub_DBE4(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_CCE054@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v27);
  v5 = *(a2 + 16) - *(a2 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = 0x14C1BACF914C1BADLL * (v5 >> 3);
    v8 = 1;
    do
    {
      v9 = *(a2 + 8);
      sub_4A5C(&v28, "Journey ", 8);
      v10 = std::ostream::operator<<();
      sub_4A5C(v10, " of ", 4);
      v11 = std::ostream::operator<<();
      sub_4A5C(v11, " (score ", 8);
      v12 = std::ostream::operator<<();
      v13 = sub_4A5C(v12, "%):\n", 4);
      sub_CCD67C(a1, (v9 + v6), __p);
      if ((v26 & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v15 = v26;
      }

      else
      {
        v15 = __p[1];
      }

      v16 = sub_4A5C(v13, v14, v15);
      v17 = sub_4A5C(v16, "\n", 1);
      sub_4A5C(v17, "\n", 1);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      ++v8;
      v6 += 296;
      --v7;
    }

    while (v7);
  }

  if ((v38 & 0x10) != 0)
  {
    v20 = v37;
    if (v37 < v34)
    {
      v37 = v34;
      v20 = v34;
    }

    v19 = a3;
    v21 = v33;
    v18 = v20 - v33;
    if (v20 - v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if ((v38 & 8) == 0)
    {
      v18 = 0;
      v19 = a3;
      a3[23] = 0;
      goto LABEL_23;
    }

    v19 = a3;
    v21 = v31;
    v18 = v32 - v31;
    if ((v32 - v31) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_27:
      sub_3244();
    }
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  v19[23] = v18;
  if (v18)
  {
    memmove(v19, v21, v18);
  }

LABEL_23:
  v19[v18] = 0;
  v28 = v22;
  if (v36 < 0)
  {
    operator delete(v35);
  }

  std::locale::~locale(&v30);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCE434(unsigned int *a1@<X1>, int a2@<W2>, _BYTE *a3@<X8>)
{
  if (!a1 || (v4 = *a1, !v4))
  {
    *a3 = 0x6E776F6E6B6E75;
    a3[23] = 7;
    return;
  }

  v5 = a1 + 1;
  v6 = v4;
  for (i = v6 * 4; i; i -= 4)
  {
    v8 = a1[1];
    v9 = a1 + v8 - *(a1 + v8 + 4);
    if (*(v9 + 2) < 9u || (v10 = *(v9 + 6)) == 0)
    {
      if (!a2)
      {
        break;
      }

      goto LABEL_5;
    }

    if (*(a1 + v8 + v10 + 4) == a2)
    {
      break;
    }

LABEL_5:
    ++a1;
  }

  if (a1 + 1 == &v5[v6])
  {
    v11 = (v5 + *v5);
    v14 = (v11 - *v11);
    if (*v14 >= 7u)
    {
      v13 = v14[3];
      if (v13)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v15 = 0;
  }

  else
  {
    v11 = (a1 + a1[1] + 4);
    v12 = (v11 - *v11);
    if (*v12 < 7u)
    {
      goto LABEL_17;
    }

    v13 = v12[3];
    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v15 = (v11 + v13 + *(v11 + v13));
  }

  v16 = (v15 + *(v15 - *v15 + 6));
  v17 = *v16;
  v18 = *(v16 + v17);
  if (v18 >= 0x17)
  {
    operator new();
  }

  a3[23] = v18;
  if (v18)
  {
    memcpy(a3, v16 + v17 + 4, v18);
  }

  a3[v18] = 0;
}

double sub_CCE5F4(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

float64x2_t sub_CCE624(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = vaddq_f64(*(a2 + 8), *(a1 + 8));
  *(a1 + 24) = vaddq_f64(*(a2 + 24), *(a1 + 24));
  *(a1 + 40) = vaddq_f64(*(a2 + 40), *(a1 + 40));
  *(a1 + 56) = vaddq_f64(*(a2 + 56), *(a1 + 56));
  *(a1 + 72) = vaddq_f64(*(a2 + 72), *(a1 + 72));
  *(a1 + 88) = vaddq_f64(*(a2 + 88), *(a1 + 88));
  *(a1 + 104) = vaddq_f64(*(a2 + 104), *(a1 + 104));
  result = vaddq_f64(*(a2 + 120), *(a1 + 120));
  *(a1 + 120) = result;
  return result;
}

double sub_CCE6A8(uint64_t a1, uint64_t *a2)
{
  *(a1 + 48) = vaddq_f64(*(a2 + 3), *(a1 + 48));
  *(a1 + 72) = vaddq_f64(*(a2 + 5), *(a1 + 72));
  *(a1 + 88) = vaddq_f64(*(a2 + 7), *(a1 + 88));
  v2 = a2[1];
  v3 = *a2;
  v4 = v2 - *a2;
  *(a1 + 112) = *(a1 + 112) + (0x8E38E38E38E38E39 * (v4 >> 7));
  if (v2 == v3)
  {
    result = *(a1 + 120) + 0.0;
    *(a1 + 120) = result;
    return result;
  }

  v5 = v4 - 1152;
  if (v5 >= 0x480)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5 / 0x480 + 1;
    v7 = v3 + 1152 * (v11 & 0x7FFFFFFFFFFFFELL);
    v12 = v11 & 0x7FFFFFFFFFFFFELL;
    do
    {
      v9 += *(v3 + 44);
      v10 += *(v3 + 1196);
      v3 += 2304;
      v12 -= 2;
    }

    while (v12);
    v6 = v10 + v9;
    if (v11 == (v11 & 0x7FFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v7 = v3;
  }

  do
  {
    v6 += *(v7 + 44);
    v7 += 1152;
  }

  while (v7 != v2);
LABEL_9:
  result = *(a1 + 120) + v6;
  *(a1 + 120) = result;
  return result;
}

uint64_t sub_CCE7C4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_2345C(a2, off_2673188[*a1]);
  v18 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_CCEBC0((a2 + 24), "Runtime", &v18, a1 + 1);
    *(a2 + 32) = v5;
    v17 = 1;
    if (v5 >= *(a2 + 40))
    {
LABEL_3:
      v6 = sub_CCEECC((a2 + 24), "Runtime.InStation", &v17, a1 + 2);
      *(a2 + 32) = v6;
      v16 = 1;
      if (v6 >= *(a2 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_CCED74(*(a2 + 32), "Runtime", &v18, a1 + 1);
    v5 = v4 + 48;
    *(a2 + 32) = v5;
    v17 = 1;
    if (v5 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_CCF080(v5, "Runtime.InStation", &v17, a1 + 2);
  v6 = v5 + 48;
  *(a2 + 32) = v6;
  v16 = 1;
  if (v6 >= *(a2 + 40))
  {
LABEL_4:
    v7 = sub_CCF1D8((a2 + 24), "Runtime.AccessPoint", &v16, a1 + 3);
    *(a2 + 32) = v7;
    v15 = 1;
    if (v7 >= *(a2 + 40))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_CCF38C(v6, "Runtime.AccessPoint", &v16, a1 + 3);
  v7 = v6 + 48;
  *(a2 + 32) = v7;
  v15 = 1;
  if (v7 >= *(a2 + 40))
  {
LABEL_5:
    v8 = sub_CCF4E4((a2 + 24), "Runtime.OnStreet", &v15, a1 + 4);
    *(a2 + 32) = v8;
    v14 = 4;
    if (v8 >= *(a2 + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_CCF698(v7, "Runtime.OnStreet", &v15, a1 + 4);
  v8 = v7 + 48;
  *(a2 + 32) = v8;
  v14 = 4;
  if (v8 >= *(a2 + 40))
  {
LABEL_6:
    v9 = sub_CCF7F0((a2 + 24), "NumWalkingPaths", &v14, a1 + 8);
    *(a2 + 32) = v9;
    v13 = 4;
    if (v9 >= *(a2 + 40))
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_CCFCB0(v9, "NumMissingSearchSpaces", &v13, a1 + 11);
    v10 = v9 + 48;
    *(a2 + 32) = v10;
    v12 = 4;
    if (v10 >= *(a2 + 40))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  sub_CCF9A4(v8, "NumWalkingPaths", &v14, a1 + 8);
  v9 = v8 + 48;
  *(a2 + 32) = v9;
  v13 = 4;
  if (v9 < *(a2 + 40))
  {
    goto LABEL_14;
  }

LABEL_7:
  v10 = sub_CCFAFC((a2 + 24), "NumMissingSearchSpaces", &v13, a1 + 11);
  *(a2 + 32) = v10;
  v12 = 4;
  if (v10 >= *(a2 + 40))
  {
LABEL_8:
    result = sub_CCFE08((a2 + 24), "NumMissingBucketEntries", &v12, a1 + 12);
    *(a2 + 32) = result;
    return result;
  }

LABEL_15:
  sub_CCFFBC(v10, "NumMissingBucketEntries", &v12, a1 + 12);
  result = v10 + 48;
  *(a2 + 32) = v10 + 48;
  return result;
}

void sub_CCEAF0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_CCEBC0(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CCED74(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CCED60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCED74(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CCEECC(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CCF080(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CCF06C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCF080(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CCF1D8(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CCF38C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CCF378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCF38C(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CCF4E4(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CCF698(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CCF684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCF698(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CCF7F0(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CCF9A4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CCF990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCF9A4(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CCFAFC(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CCFCB0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CCFC9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCFCB0(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_CCFE08(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_CCFFBC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_CCFFA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCFFBC(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void sub_CD0114()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  sub_7E9A4(v88);
  v3 = sub_E7A5E0(v0[2]);
  v85 = sub_EA7118(v3);
  sub_3B681C(*v0, v86);
  v4 = *(sub_3B6890(*v0) + 4);
  *__t = std::chrono::system_clock::now();
  v5 = std::chrono::system_clock::to_time_t(__t);
  sub_E7A3D0(v0[2]);
  *v2 = 1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  v84 = v2 + 8;
  sub_12C408C(v2 + 8, 0, 0);
  *(v2 + 420) = 0;
  *(v2 + 412) = 0;
  *(v2 + 404) = 0;
  *(v2 + 424) = 0;
  *(v2 + 431) = 0;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 385) = 0u;
  if (v0[13])
  {
    v6 = 1;
  }

  else
  {
    if (*v0[5] != v0[5][1])
    {
      operator new();
    }

    v6 = 0;
  }

  v7 = *(v2 + 24);
  *(v2 + 257) = v6 & 1;
  *(v2 + 24) = v7 | 0x42;
  v8 = *(v2 + 224);
  if (!v8)
  {
    v9 = *(v2 + 16);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v8 = sub_12E1948(v10);
    *(v2 + 224) = v8;
  }

  v11 = *(v8 + 4);
  *(v8 + 9) = v4;
  *(v8 + 10) = v5;
  *(v8 + 44) = *(v0 + 104);
  *(v8 + 8) = 1;
  *(v8 + 4) = v11 | 0x1F;
  v12 = v8[3];
  if (v12)
  {
    *(v12 + 4) |= 1u;
    v13 = v12[3];
    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v51 = v8[1];
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    v12 = sub_12E19C8(v52);
    v8[3] = v12;
    *(v12 + 4) |= 1u;
    v13 = v12[3];
    if (v13)
    {
LABEL_12:
      *(v13 + 16) |= 1u;
      v14 = *(v13 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_55;
    }
  }

  v53 = v12[1];
  v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
  if (v53)
  {
    v54 = *v54;
  }

  v13 = sub_12E1A44(v54);
  v12[3] = v13;
  *(v13 + 16) |= 1u;
  v55 = *(v13 + 8);
  v15 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
  if (v55)
  {
LABEL_55:
    v15 = *v15;
  }

LABEL_13:
  sub_194EA1C((v13 + 120), v86, v15);
  v16 = *(v13 + 16);
  *(v13 + 16) = v16 | 0x10;
  *(v13 + 152) = v85;
  v17 = v0[2];
  if ((v17[5] & 0x40) != 0)
  {
    v18 = v17[43];
    *(v13 + 16) = v16 | 0x12;
    v19 = *(v13 + 128);
    if (!v19)
    {
      v20 = *(v13 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_16F5BD8(v21);
      *(v13 + 128) = v19;
      v18 = v0[2][43];
    }

    if (v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = &off_277E738;
    }

    sub_16E8FA0(v19, v22);
  }

  if (v85)
  {
    if ((v0[2][5] & 0x40) != 0)
    {
      v23 = *v0[5];
      if (v0[5][1] - v23 == 24 && *v23 != v23[1] && !sub_4C49D0(v0[3]))
      {
        v24 = sub_3B6890(*v0);
        sub_3F7454(__t, (v0 + 21), v24, v0[4], v0[3], **v0[5], *v0[6], v0[18], *v0);
      }
    }
  }

  v25 = v0[7];
  if (v25)
  {
    v27 = *v25;
    v26 = v25[1];
    if (*v25 != v26)
    {
      do
      {
        sub_64E090(v84, v27);
        v27 = (v27 + 24);
      }

      while (v27 != v26);
    }
  }

  *(v2 + 24) |= 4u;
  v28 = *(v2 + 232);
  if (!v28)
  {
    v29 = *(v2 + 16);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v28 = sub_12D0DA4(v30);
    *(v2 + 232) = v28;
  }

  v31 = sub_3AF114(*v0);
  v32 = sub_73EBC(*v31);
  v33 = sub_420344(v32);
  *(v28 + 4) |= 2u;
  v28[4] = v33;
  *(v2 + 24) |= 4u;
  v34 = *(v2 + 232);
  if (!v34)
  {
    v35 = *(v2 + 16);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_12D0DA4(v36);
    *(v2 + 232) = v34;
  }

  v37 = sub_3AF144(*v0);
  v38 = sub_2BC534(v37);
  *(v34 + 4) |= 1u;
  v39 = v34[1];
  v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
  if (v39)
  {
    v40 = *v40;
  }

  sub_194EA1C(v34 + 3, v38, v40);
  v41 = *sub_3B6890(*v0);
  *(v2 + 24) |= 0x10u;
  *(v2 + 248) = v41;
  v42 = sub_74700();
  v43 = sub_73EEC(v42);
  *(v2 + 24) |= 1u;
  v44 = *(v2 + 16);
  v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
  if (v44)
  {
    v45 = *v45;
  }

  sub_194EA1C((v2 + 216), v43, v45);
  if (sub_4F8530((v0 + 19)))
  {
    v46 = v0[83] - v0[82];
    if (v46)
    {
      v47 = 0;
      v48 = 0x2E8BA2E8BA2E8BA3 * (v46 >> 4);
      while (1)
      {
        v49 = sub_CD139C(v0 + 82, v47);
        if (*(v49 + 16) == v0[19])
        {
          break;
        }

        if (v48 == ++v47)
        {
          goto LABEL_83;
        }
      }

      v56 = *(v2 + 136);
      if (v56 && (v57 = *(v2 + 128), v57 < *v56))
      {
        *(v2 + 128) = v57 + 1;
        v58 = *&v56[2 * v57 + 2];
        *(v58 + 16) |= 1u;
        v59 = *(v58 + 24);
        if (v59)
        {
          goto LABEL_64;
        }
      }

      else
      {
        sub_12D0E28(*(v2 + 120));
        v58 = sub_19593CC(v2 + 120, v60);
        *(v58 + 16) |= 1u;
        v59 = *(v58 + 24);
        if (v59)
        {
          goto LABEL_64;
        }
      }

      v61 = *(v58 + 8);
      v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
      if (v61)
      {
        v62 = *v62;
      }

      v59 = sub_16F5828(v62);
      *(v58 + 24) = v59;
LABEL_64:
      LODWORD(v50) = *(v49 + 4);
      v63 = exp(v50 * -6.28318531 / 4294967300.0 + 3.14159265);
      v64 = atan((v63 + -1.0 / v63) * 0.5) * 57.2957795;
      v65 = *(v59 + 40);
      *(v59 + 40) = v65 | 1;
      *(v59 + 48) = v64;
      LODWORD(v64) = *v49;
      *(v59 + 40) = v65 | 3;
      *(v59 + 56) = *&v64 * 360.0 / 4294967300.0 + -180.0;
      v66 = *(v49 + 112);
      *(v58 + 16) |= 4u;
      *(v58 + 40) = v66;
      v67 = nullsub_1(*(v49 + 16));
      v68 = *(v58 + 16);
      *(v58 + 32) = v67;
      *(v58 + 16) = v68 | 0xA;
      *(v58 + 44) = v47;
      if (!sub_7E7E4(1u))
      {
        goto LABEL_83;
      }

      sub_19594F8(__t);
      sub_4A5C(__t, "Micro A/B - Adding Special Access Point ", 40);
      nullsub_1(*(v49 + 16));
      std::ostream::operator<<();
      if ((v97 & 0x10) != 0)
      {
        v70 = v96;
        if (v96 < v93)
        {
          v96 = v93;
          v70 = v93;
        }

        v71 = &v92;
      }

      else
      {
        if ((v97 & 8) == 0)
        {
          v69 = 0;
          HIBYTE(v100) = 0;
LABEL_78:
          *(&__dst + v69) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v100) < 0)
          {
            operator delete(__dst);
          }

          if (v95 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&__t[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_83;
        }

        v71 = v91;
        v70 = v91[2];
      }

      v72 = *v71;
      v69 = v70 - *v71;
      if (v69 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v69 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v100) = v70 - *v71;
      if (v69)
      {
        memmove(&__dst, v72, v69);
      }

      goto LABEL_78;
    }
  }

LABEL_83:
  if (*v0[5] != v0[5][1])
  {
    sub_7E9A4(v101);
    sub_74700();
    v73 = *v0;
    v90 = 19;
    strcpy(__t, "GDFTimeDomainParser");
    __dst = 0;
    v99 = 0;
    v100 = 0;
    v74 = sub_3AEC94(v73, __t, &__dst);
    v75 = __dst;
    if (__dst)
    {
      v76 = v99;
      v77 = __dst;
      if (v99 != __dst)
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
        v77 = __dst;
      }

      v99 = v75;
      operator delete(v77);
    }

    if (v90 < 0)
    {
      operator delete(*__t);
    }

    sub_EE90(__t, v74);
  }

  v79 = sub_74700();
  if (sub_74234(v79))
  {
    v80 = *(v2 + 56);
    if (v80 == *(v2 + 60))
    {
      v81 = v80 + 1;
      sub_1958E5C((v2 + 56), v80 + 1);
      *(*(v2 + 64) + 4 * v80) = 1;
    }

    else
    {
      *(*(v2 + 64) + 4 * v80) = 1;
      v81 = v80 + 1;
    }

    *(v2 + 56) = v81;
  }

  if (sub_7423C(v79))
  {
    v82 = *(v2 + 56);
    if (v82 == *(v2 + 60))
    {
      v83 = v82 + 1;
      sub_1958E5C((v2 + 56), v82 + 1);
      *(*(v2 + 64) + 4 * v82) = 2;
    }

    else
    {
      *(*(v2 + 64) + 4 * v82) = 2;
      v83 = v82 + 1;
    }

    *(v2 + 56) = v83;
  }

  *(v2 + 344) = sub_12C5314(v84);
  *(v2 + 336) = round(sub_7EA60(v88));
  *(v2 + 400) = v85;
  *(v2 + 438) = *(v2 + 257);
  if (v87 < 0)
  {
    operator delete(v86[0]);
  }
}