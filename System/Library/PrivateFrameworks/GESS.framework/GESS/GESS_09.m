void sub_24BD47390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

BOOL sub_24BD473A4(uint64_t a1)
{
  v10 = -1;
  sub_24BC836D4(__p, off_27F078FE8[0]);
  v2 = sub_24BD265CC(a1, &v10, __p);
  v3 = v2;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (!v3)
    {
      return 0;
    }
  }

  else if (!v2)
  {
    return 0;
  }

  sub_24BC836D4(__p, off_27F078F78[0]);
  v11 = 0;
  v4 = sub_24BCB74D4((a1 + 80), &v11, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == -1)
  {
    return 0;
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  v12 = 0;
  v11 = 0;
  v5 = sub_24BCCAA0C((a1 + 56), &v11, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 == -1)
  {
    return 0;
  }

  sub_24BC836D4(__p, off_27F078FC8[0]);
  LOWORD(v11) = 0;
  v6 = sub_24BD274E4((a1 + 56), &v11, __p) != -1;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_24BD474F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD47518(uint64_t a1, uint64_t a2)
{
  v26 = -1;
  sub_24BC836D4(__p, off_27F078FE8[0]);
  v4 = sub_24BD265CC(a1, &v26, __p);
  v5 = v4;
  if (v25 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return 0;
    }
  }

  else if (!v4)
  {
    return 0;
  }

  v6 = (a1 + 80);
  v7 = *(*(a1 + 80) + 16 * v26 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
  }

  sub_24BC836D4(__p, off_27F078F78[0]);
  v27 = 0;
  v8 = sub_24BCB74D4((a1 + 80), &v27, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 == -1)
  {
    return 0;
  }

  v9 = *(*v6 + 16 * v8 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  v28 = 0;
  v27 = 0;
  v10 = sub_24BCCAA0C((a1 + 56), &v27, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 == -1)
  {
    return 0;
  }

  v11 = *(*(a1 + 56) + 16 * v10 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
  }

  sub_24BC836D4(__p, off_27F078FC8[0]);
  LOWORD(v27) = 0;
  v12 = sub_24BD274E4((a1 + 56), &v27, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 == -1)
  {
    return 0;
  }

  v13 = *(*(a1 + 56) + 16 * v12 + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v13);
  }

  LODWORD(v27) = -1;
  sub_24BC836D4(__p, off_27F078FF8);
  v14 = sub_24BD26644(a1, &v27, __p);
  v15 = v14;
  if (v25 < 0)
  {
    operator delete(__p[0]);
    if (v15)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v14)
  {
    return 0;
  }

LABEL_26:
  v16 = *(*v6 + 16 * v27 + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v16);
  }

  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = v18 - v17;
  if (v18 == v17)
  {
    return 0;
  }

  v20 = 0;
  v21 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
  if (v21 <= 1)
  {
    v21 = 1;
  }

  do
  {
    v22 = *v17;
    v17 += 48;
    if (v22 == 1)
    {
      if (v20)
      {
        return 0;
      }

      v20 = 1;
    }

    --v21;
  }

  while (v21);
  return v20 == 1;
}

void sub_24BD477B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD477E0(uint64_t *a1, uint64_t **a2, uint64_t *a3)
{
  v43 = -1;
  v6 = *a1;
  sub_24BC836D4(&__p, off_27F078FE8[0]);
  v7 = sub_24BD265CC(v6, &v43, &__p.__r_.__value_.__l.__data_);
  v8 = v7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_5:
    v9 = *a1;
    sub_24BC836D4(&__p, off_27F078FE8[0]);
    sub_24BD2CC04(v9);
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *(*a1 + 80) + 16 * v43;
  v12 = *v10;
  v11 = *(v10 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
  }

  (*(*v12 + 32))(v12, 1);
  MEMORY[0x24C2541D0](v12[5], "g0");
  v13 = (*(*v12 + 16))(v12);
  v42 = -1;
  v14 = *a1;
  sub_24BC836D4(&__p, off_27F078FF8);
  v15 = sub_24BD26644(v14, &v42, &__p.__r_.__value_.__l.__data_);
  v16 = v15;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *a1;
    sub_24BC836D4(&__p, off_27F078FF8);
    sub_24BD2CC70(v17);
  }

  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_13:
  v18 = *(*a1 + 80) + 16 * v42;
  v20 = *v18;
  v19 = *(v18 + 8);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v19);
  }

  (*(*v20 + 32))(v20, 1);
  if (v13)
  {
    v21 = 0;
    v22 = 0;
    v23 = v20[5];
    do
    {
      v24 = (v12[5] + v21);
      if (*(v24 + 23) < 0)
      {
        sub_24BC8DE9C(&__p, *v24, *(v24 + 1));
      }

      else
      {
        v25 = *v24;
        __p.__r_.__value_.__r.__words[2] = *(v24 + 2);
        *&__p.__r_.__value_.__l.__data_ = v25;
      }

      v41 = v22;
      v31[0] = &v41;
      v26 = sub_24BD303B8(v23, &v41);
      std::string::operator=((v26 + 5), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v22;
      v21 += 24;
    }

    while (v13 != v22);
  }

  v27 = *a2;
  sub_24BC836D4(&__p, "g0");
  v31[0] = &__p;
  *(sub_24BD47CDC((v27 + 6), &__p.__r_.__value_.__l.__data_) + 56) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_24BC836D4(&v36, "g0");
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&__p, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    v39 = 0;
    v40 = 0;
    v38 = &v39;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __p = v36;
    v39 = 0;
    v40 = 0;
    v38 = &v39;
  }

  v43 = 1;
  v31[0] = &v43;
  *(sub_24BCCFB80(&v38, &v43) + 16) = 0;
  BYTE5(v31[0]) = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  LODWORD(v31[0]) = 1;
  v29 = *a3;
  v28 = a3[1];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31[1] = v29;
  v32 = v28;
  v30 = v29 && *(v29 + 16);
  BYTE4(v31[0]) = v30;
  if (v28)
  {
    sub_24BC9EC78(v28);
  }

  sub_24BCC3CB8(*a2 + 3, v31);
  sub_24BD47C9C(*a2, &__p);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  if (v32)
  {
    sub_24BC9EC78(v32);
  }

  sub_24BCC8A84(&v38, v39);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24BD47C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD47C9C(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BD47E1C(a1, a2);
  }

  else
  {
    sub_24BD47D88(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BD47CDC(uint64_t a1, const void **a2)
{
  v2 = *sub_24BC8FDBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_24BD47D88(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = sub_24BD47F8C((v4 + 24), a2 + 24);
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_24BD47E1C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_24BCCF4C0(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  sub_24BD47F8C((v7 + 24), a2 + 24);
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_24BCCF518(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_24BCCF6A0(&v15);
  return v14;
}

void sub_24BD47F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_24BCCF6A0(va);
  _Unwind_Resume(a1);
}

void *sub_24BD47F8C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_24BD47FE4(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_24BD47FE4(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_24BD4806C(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_24BD4806C(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_24BD48104(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_24BD48104(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

float sub_24BD482AC(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = vsubq_f32(*a2, *a1);
  v5 = vsubq_f32(*a3, *a2);
  v6 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v4, vextq_s8(v4, v4, 0xCuLL)), v4), vuzp2q_s32(vextq_s8(v5, v5, 4uLL), v5)), vzip2q_s32(vzip1q_s32(v5, vextq_s8(v5, v5, 0xCuLL)), v5), vuzp2q_s32(vextq_s8(v4, v4, 4uLL), v4));
  v7 = vsubq_f32(*a1, *a2);
  v8 = vsubq_f32(*a4, *a1);
  v9 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v7, vextq_s8(v7, v7, 0xCuLL)), v7), vuzp2q_s32(vextq_s8(v8, v8, 4uLL), v8)), vzip2q_s32(vzip1q_s32(v8, vextq_s8(v8, v8, 0xCuLL)), v8), vuzp2q_s32(vextq_s8(v7, v7, 4uLL), v7));
  v10 = vmulq_f32(v6, v6);
  v10.i32[3] = 0;
  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
  v10.f32[0] = sqrtf(vaddv_f32(*v10.f32));
  v11 = vmulq_f32(v9, v9);
  v11.i32[3] = 0;
  v11.i64[0] = vpaddq_f32(v11, v11).u64[0];
  v11.f32[0] = sqrtf(vaddv_f32(*v11.f32));
  v12 = vmulq_f32(vdivq_f32(v6, vdupq_lane_s32(*v10.f32, 0)), vdivq_f32(v9, vdupq_lane_s32(*v11.f32, 0)));
  v12.i32[3] = 0;
  return acosf(vaddv_f32(*&vpaddq_f32(v12, v12))) * 180.0 / 3.14159265;
}

uint64_t sub_24BD483AC(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  sub_24BCB9454(v14, (a1 + 104), a2);
  while (1)
  {
    v5 = sub_24BCB947C(v14);
    v13 = v5;
    if (v5 == -1)
    {
      break;
    }

    v6 = sub_24BC9ECE4(a1, *(a1 + 180), v5);
    if ((v7 & *v6) == 0)
    {
      v8 = sub_24BCB9024(a1 + 104, &v13);
      v9 = sub_24BC9ECE4(a1, *(a1 + 180), *v8);
      if ((v10 & *v9) == 0)
      {
        v11 = sub_24BCB9024(a1 + 104, &v13);
        if (*(sub_24BCB9024(a1 + 104, v11) + 12) == *a3)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

float sub_24BD48474(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(*a2, *a1);
  v4 = vsubq_f32(*a3, *a2);
  v5 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v3, vextq_s8(v3, v3, 0xCuLL)), v3), vuzp2q_s32(vextq_s8(v4, v4, 4uLL), v4)), vzip2q_s32(vzip1q_s32(v4, vextq_s8(v4, v4, 0xCuLL)), v4), vuzp2q_s32(vextq_s8(v3, v3, 4uLL), v3));
  v6 = vmulq_f32(v5, v5);
  v6.i32[3] = 0;
  return sqrtf(vaddv_f32(*&vpaddq_f32(v6, v6))) * 0.5;
}

float sub_24BD484D8(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t *a5, unsigned int a6, unsigned int a7, unsigned int a8)
{
  v8 = *a5;
  v9 = a7;
  if (((*(*(*a5 + 24 * a6) + ((a7 >> 3) & 0x1FFFFFF8)) >> a7) & 1) == 0)
  {
    v11 = a8;
    if (((*(*(v8 + 24 * a7) + ((a8 >> 3) & 0x1FFFFFF8)) >> a8) & 1) == 0)
    {
      v13 = a6;
      if (((*(*(v8 + 24 * a8) + ((a6 >> 3) & 0x1FFFFFF8)) >> a6) & 1) == 0 && *(*(*a4 + 24 * a6) + 4 * a7) != -1 && *(*(*a4 + 24 * a7) + 4 * a8) != -1)
      {
        v21 = *a2;
        v22 = *(*a2 + 4 * a6);
        v23 = (*(a1 + 8) + 16 * *(a1 + 176));
        v25 = *v23;
        v24 = v23[1];
        if (a6 + 1 == a7)
        {
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            v172 = v25;
            v164 = v22;
            sub_24BC9EC78(v24);
            v21 = *a2;
            v26 = (*(a1 + 8) + 16 * *(a1 + 176));
            v25 = *v26;
            v27 = v26[1];
            v28 = *(v172 + 40);
            v29 = *(v28 + 16 * v164);
            v30 = *(*a2 + 4 * v9);
            if (v27)
            {
              v165 = *(v28 + 16 * v164);
              atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              v173 = v30;
              v157 = v25;
              sub_24BC9EC78(v27);
              v31 = (*(a1 + 8) + 16 * *(a1 + 176));
              v25 = *v31;
              v32 = v31[1];
              v33 = *(*(v157 + 40) + 16 * v173);
              v34 = *(*a2 + 4 * v11);
              if (v32)
              {
                v158 = *(*(v157 + 40) + 16 * v173);
                v153 = *(*a2 + 4 * v11);
                atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
                v174 = v25;
                sub_24BC9EC78(v32);
                v35 = (*(a1 + 8) + 16 * *(a1 + 176));
                v25 = *v35;
                v36 = v35[1];
                v37 = *(*(v174 + 40) + 16 * v153);
                v38 = *(*a3 + 4 * v13);
                if (v36)
                {
                  v154 = *v35;
                  v151 = *(*a3 + 4 * v13);
                  atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
                  v175 = v37;
                  sub_24BC9EC78(v36);
                  v38 = v151;
                  v25 = v154;
                  v37 = v175;
                }

                v33 = v158;
                v29 = v165;
                goto LABEL_22;
              }

              v29 = v165;
LABEL_21:
              v37 = *(*(v25 + 40) + 16 * v34);
              v38 = *(*a3 + 4 * v13);
LABEL_22:
              v48 = vsubq_f32(v33, v29);
              v49 = vsubq_f32(v37, v33);
              v50 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v48, vextq_s8(v48, v48, 0xCuLL)), v48), vuzp2q_s32(vextq_s8(v49, v49, 4uLL), v49)), vzip2q_s32(vzip1q_s32(v49, vextq_s8(v49, v49, 0xCuLL)), v49), vuzp2q_s32(vextq_s8(v48, v48, 4uLL), v48));
              v51 = vsubq_f32(v29, v33);
              v52 = vsubq_f32(*(*(v25 + 40) + 16 * v38), v29);
              v53 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v51, vextq_s8(v51, v51, 0xCuLL)), v51), vuzp2q_s32(vextq_s8(v52, v52, 4uLL), v52)), vzip2q_s32(vzip1q_s32(v52, vextq_s8(v52, v52, 0xCuLL)), v52), vuzp2q_s32(vextq_s8(v51, v51, 4uLL), v51));
              v54 = vmulq_f32(v50, v50);
              v54.i32[3] = 0;
              v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
              v54.f32[0] = sqrtf(vaddv_f32(*v54.f32));
              v55 = vdivq_f32(v50, vdupq_lane_s32(*v54.f32, 0));
              v56 = vmulq_f32(v53, v53);
              goto LABEL_29;
            }
          }

          else
          {
            v29 = *(*(v25 + 40) + 16 * v22);
            v30 = *(v21 + 4 * a7);
          }

          v33 = *(*(v25 + 40) + 16 * v30);
          v34 = *(v21 + 4 * v11);
          goto LABEL_21;
        }

        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v176 = v25;
          v166 = v22;
          sub_24BC9EC78(v24);
          v21 = *a2;
          v39 = (*(a1 + 8) + 16 * *(a1 + 176));
          v25 = *v39;
          v40 = v39[1];
          v167 = *(*(v176 + 40) + 16 * v166);
          v41 = *(*a2 + 4 * v9);
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            v177 = v41;
            v159 = v25;
            sub_24BC9EC78(v40);
            v21 = *a2;
            v42 = (*(a1 + 8) + 16 * *(a1 + 176));
            v25 = *v42;
            v43 = v42[1];
            v44 = *(*(v159 + 40) + 16 * v177);
            v45 = *(*a2 + 4 * v11);
            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              v178 = v25;
              v160 = v44;
              v155 = v45;
              sub_24BC9EC78(v43);
              v44 = v160;
              v25 = v178;
              v21 = *a2;
              v46 = (*(a1 + 8) + 16 * *(a1 + 176));
              v45 = v155;
              v47 = *v46;
              v43 = v46[1];
LABEL_26:
              v57 = *(*(v25 + 40) + 16 * v45);
              v179 = v13;
              v58 = *(v21 + 4 * *(*(*a4 + 24 * v13) + 4 * v9));
              if (v43)
              {
                atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
                v161 = v44;
                v156 = v47;
                v152 = v57;
                sub_24BC9EC78(v43);
                v57 = v152;
                v47 = v156;
                v44 = v161;
              }

              v59 = vsubq_f32(v44, v167);
              v60 = vsubq_f32(v57, v44);
              v61 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v59, vextq_s8(v59, v59, 0xCuLL)), v59), vuzp2q_s32(vextq_s8(v60, v60, 4uLL), v60)), vzip2q_s32(vzip1q_s32(v60, vextq_s8(v60, v60, 0xCuLL)), v60), vuzp2q_s32(vextq_s8(v59, v59, 4uLL), v59));
              v62 = vsubq_f32(v167, v44);
              v63 = vsubq_f32(*(*(v47 + 40) + 16 * v58), v167);
              v53 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v62, vextq_s8(v62, v62, 0xCuLL)), v62), vuzp2q_s32(vextq_s8(v63, v63, 4uLL), v63)), vzip2q_s32(vzip1q_s32(v63, vextq_s8(v63, v63, 0xCuLL)), v63), vuzp2q_s32(vextq_s8(v62, v62, 4uLL), v62));
              v64 = vmulq_f32(v61, v61);
              v64.i32[3] = 0;
              v64.i64[0] = vpaddq_f32(v64, v64).u64[0];
              v64.f32[0] = sqrtf(vaddv_f32(*v64.f32));
              v55 = vdivq_f32(v61, vdupq_lane_s32(*v64.f32, 0));
              v56 = vmulq_f32(v53, v53);
              v13 = v179;
LABEL_29:
              v56.i32[3] = 0;
              v65 = vpaddq_f32(v56, v56).u64[0];
              v65.f32[0] = sqrtf(vaddv_f32(v65));
              v66 = vmulq_f32(v55, vdivq_f32(v53, vdupq_lane_s32(v65, 0)));
              v66.i32[3] = 0;
              v67 = acosf(vaddv_f32(*&vpaddq_f32(v66, v66))) * 180.0 / 3.14159265;
              v68 = fmaxf(v67, 0.0);
              v69 = a7 + 1;
              v70 = *a2;
              v71 = *(*a2 + 4 * v9);
              v72 = (*(a1 + 8) + 16 * *(a1 + 176));
              v74 = *v72;
              v73 = v72[1];
              if (v69 == a8)
              {
                if (v73)
                {
                  atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                  v75 = v74;
                  sub_24BC9EC78(v73);
                  v70 = *a2;
                  v76 = (*(a1 + 8) + 16 * *(a1 + 176));
                  v78 = *v76;
                  v77 = v76[1];
                  v79 = *(v75 + 40);
                  v80 = *(v79 + 16 * v71);
                  v81 = *(*a2 + 4 * v11);
                  if (v77)
                  {
                    v180 = *(v79 + 16 * v71);
                    atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v77);
                    v82 = (*(a1 + 8) + 16 * *(a1 + 176));
                    v74 = *v82;
                    v83 = v82[1];
                    v84 = *(v78 + 40);
                    v85 = *(v84 + 16 * v81);
                    v86 = *(*a2 + 4 * v13);
                    if (v83)
                    {
                      v168 = *(v84 + 16 * v81);
                      atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
                      v87 = v74;
                      sub_24BC9EC78(v83);
                      v88 = (*(a1 + 8) + 16 * *(a1 + 176));
                      v90 = *v88;
                      v89 = v88[1];
                      v91 = *(*(v87 + 40) + 16 * v86);
                      v92 = *(*a3 + 4 * v9);
                      if (v89)
                      {
                        atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
                        v162 = v91;
                        sub_24BC9EC78(v89);
                        v91 = v162;
                      }

                      v85 = v168;
                      v80 = v180;
                      goto LABEL_50;
                    }

                    v80 = v180;
LABEL_49:
                    v91 = *(*(v74 + 40) + 16 * v86);
                    v92 = *(*a3 + 4 * v9);
                    v90 = v74;
LABEL_50:
                    v105 = *(*(v90 + 40) + 16 * v92);
                    goto LABEL_51;
                  }

                  v74 = v78;
                }

                else
                {
                  v80 = *(*(v74 + 40) + 16 * v71);
                  v81 = *(v70 + 4 * v11);
                }

                v85 = *(*(v74 + 40) + 16 * v81);
                v86 = *(v70 + 4 * v13);
                goto LABEL_49;
              }

              if (v73)
              {
                atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                v93 = v74;
                sub_24BC9EC78(v73);
                v70 = *a2;
                v94 = (*(a1 + 8) + 16 * *(a1 + 176));
                v74 = *v94;
                v95 = v94[1];
                v181 = *(*(v93 + 40) + 16 * v71);
                v96 = *(*a2 + 4 * v11);
                if (v95)
                {
                  atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
                  v97 = v74;
                  sub_24BC9EC78(v95);
                  v70 = *a2;
                  v98 = (*(a1 + 8) + 16 * *(a1 + 176));
                  v74 = *v98;
                  v99 = v98[1];
                  v85 = *(*(v97 + 40) + 16 * v96);
                  v100 = *(*a2 + 4 * v13);
                  if (v99)
                  {
                    atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
                    v101 = v74;
                    v169 = v85;
                    sub_24BC9EC78(v99);
                    v85 = v169;
                    v74 = v101;
                    v70 = *a2;
                    v102 = (*(a1 + 8) + 16 * *(a1 + 176));
                    v103 = *v102;
                    v99 = v102[1];
LABEL_44:
                    v91 = *(*(v74 + 40) + 16 * v100);
                    v104 = *(v70 + 4 * *(*(*a4 + 24 * v9) + 4 * v11));
                    if (v99)
                    {
                      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
                      v163 = v91;
                      v170 = v85;
                      sub_24BC9EC78(v99);
                      v91 = v163;
                      v85 = v170;
                    }

                    v105 = *(*(v103 + 40) + 16 * v104);
                    v80 = v181;
LABEL_51:
                    v106 = vsubq_f32(v85, v80);
                    v107 = vsubq_f32(v91, v85);
                    v108 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v106, vextq_s8(v106, v106, 0xCuLL)), v106), vuzp2q_s32(vextq_s8(v107, v107, 4uLL), v107)), vzip2q_s32(vzip1q_s32(v107, vextq_s8(v107, v107, 0xCuLL)), v107), vuzp2q_s32(vextq_s8(v106, v106, 4uLL), v106));
                    v109 = vsubq_f32(v80, v85);
                    v110 = vsubq_f32(v105, v80);
                    v111 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v109, vextq_s8(v109, v109, 0xCuLL)), v109), vuzp2q_s32(vextq_s8(v110, v110, 4uLL), v110)), vzip2q_s32(vzip1q_s32(v110, vextq_s8(v110, v110, 0xCuLL)), v110), vuzp2q_s32(vextq_s8(v109, v109, 4uLL), v109));
                    v112 = vmulq_f32(v108, v108);
                    v112.i32[3] = 0;
                    v112.i64[0] = vpaddq_f32(v112, v112).u64[0];
                    v112.f32[0] = sqrtf(vaddv_f32(*v112.f32));
                    v113 = vmulq_f32(v111, v111);
                    v113.i32[3] = 0;
                    v113.i64[0] = vpaddq_f32(v113, v113).u64[0];
                    v113.f32[0] = sqrtf(vaddv_f32(*v113.f32));
                    v114 = vmulq_f32(vdivq_f32(v108, vdupq_lane_s32(*v112.f32, 0)), vdivq_f32(v111, vdupq_lane_s32(*v113.f32, 0)));
                    v114.i32[3] = 0;
                    v115 = acosf(vaddv_f32(*&vpaddq_f32(v114, v114))) * 180.0 / 3.14159265;
                    if (v68 >= v115)
                    {
                      v14 = v68;
                    }

                    else
                    {
                      v14 = v115;
                    }

                    v116 = *a2;
                    if (!a6 && ((a2[1] - v116) >> 2) - 1 == v11)
                    {
                      v117 = *(a1 + 176);
                      v118 = *(v116 + 4 * v11);
                      v119 = *(a1 + 8);
                      v120 = (v119 + 16 * v117);
                      v122 = *v120;
                      v121 = v120[1];
                      if (v121)
                      {
                        atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
                        sub_24BC9EC78(v121);
                        v116 = *a2;
                        v117 = *(a1 + 176);
                        v119 = *(a1 + 8);
                        v123 = (v119 + 16 * v117);
                        v125 = *v123;
                        v124 = v123[1];
                        v185[0] = *(*(v122 + 40) + 16 * v118);
                        v126 = *(v116 + 4 * v13);
                        if (v124)
                        {
                          atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
                          sub_24BC9EC78(v124);
                          v116 = *a2;
                          v117 = *(a1 + 176);
                          v122 = v125;
                          v119 = *(a1 + 8);
                        }

                        else
                        {
                          v122 = v125;
                        }
                      }

                      else
                      {
                        v185[0] = *(*(v122 + 40) + 16 * v118);
                        v126 = *(v116 + 4 * v13);
                      }

                      v184 = *(*(v122 + 40) + 16 * v126);
                      v127 = *(v116 + 4 * v9);
                      v128 = (v119 + 16 * v117);
                      v130 = *v128;
                      v129 = v128[1];
                      if (v129)
                      {
                        atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
                        sub_24BC9EC78(v129);
                        v117 = *(a1 + 176);
                        v119 = *(a1 + 8);
                      }

                      v183 = *(*(v130 + 40) + 16 * v127);
                      v131 = *(*a3 + 4 * v11);
                      v132 = (v119 + 16 * v117);
                      v134 = *v132;
                      v133 = v132[1];
                      if (v133)
                      {
                        atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
                        sub_24BC9EC78(v133);
                      }

                      v182 = *(*(v134 + 40) + 16 * v131);
                      v135 = sub_24BD482AC(v185, &v184, &v183, &v182);
                      if (v14 < v135)
                      {
                        v14 = v135;
                      }

                      v116 = *a2;
                    }

                    v136 = *(v116 + 4 * v13);
                    v137 = (*(a1 + 8) + 16 * *(a1 + 176));
                    v139 = *v137;
                    v138 = v137[1];
                    if (v138)
                    {
                      atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_24BC9EC78(v138);
                      v116 = *a2;
                      v140 = (*(a1 + 8) + 16 * *(a1 + 176));
                      v142 = *v140;
                      v141 = v140[1];
                      v143 = *(*(v139 + 40) + 16 * v136);
                      v144 = *(*a2 + 4 * v9);
                      if (v141)
                      {
                        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
                        sub_24BC9EC78(v141);
                        v145 = (*(a1 + 8) + 16 * *(a1 + 176));
                        v139 = *v145;
                        v146 = v145[1];
                        v147 = *(*(v142 + 40) + 16 * v144);
                        v148 = *(*a2 + 4 * v11);
                        if (v146)
                        {
                          atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
                          v171 = v147;
                          sub_24BC9EC78(v146);
                          v147 = v171;
                        }

                        goto LABEL_78;
                      }

                      v139 = *v140;
                    }

                    else
                    {
                      v149 = *(*(v139 + 40) + 16 * v136);
                      v144 = *(v116 + 4 * v9);
                    }

                    v147 = *(*(v139 + 40) + 16 * v144);
                    v148 = *(v116 + 4 * v11);
LABEL_78:
                    v150 = vsubq_f32(*(*(v139 + 40) + 16 * v148), v147);
                    return v14;
                  }

LABEL_43:
                  v103 = v74;
                  goto LABEL_44;
                }
              }

              else
              {
                v181 = *(*(v74 + 40) + 16 * v71);
                v96 = *(v70 + 4 * v11);
              }

              v99 = 0;
              v85 = *(*(v74 + 40) + 16 * v96);
              v100 = *(v70 + 4 * v13);
              goto LABEL_43;
            }

LABEL_25:
            v47 = v25;
            goto LABEL_26;
          }
        }

        else
        {
          v167 = *(*(v25 + 40) + 16 * v22);
          v41 = *(v21 + 4 * a7);
        }

        v43 = 0;
        v44 = *(*(v25 + 40) + 16 * v41);
        v45 = *(v21 + 4 * v11);
        goto LABEL_25;
      }
    }
  }

  return 180.0;
}

uint64_t sub_24BD48FBC(uint64_t a1, void *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  result = 1;
  if (a4 != -1 && a4 + 1 != a5 && a5 != -1)
  {
    v10 = *a3;
    while (1)
    {
      v11 = *(*(v10 + 24 * a4) + 4 * a5);
      if (v11 == a4 || v11 == a5 || a4 == a5 || v11 == -1)
      {
        return 1;
      }

      v15 = a4;
      if (sub_24BCB4744(a1, (*a2 + 4 * a4), (*a2 + 4 * v11), (*a2 + 4 * a5)) == -1)
      {
        break;
      }

      result = sub_24BD48FBC(a1, a2, a3, v15, *(*(*a3 + 24 * v15) + 4 * a5));
      if (result)
      {
        v10 = *a3;
        a4 = *(*(*a3 + 24 * v15) + 4 * a5);
        result = 1;
        if (a4 != -1 && a4 + 1 != a5)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24BD490C8(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  v90 = 0;
  v91 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  do
  {
    v5 = sub_24BCB9024(a1 + 104, v2);
    sub_24BCB4670(&v89, (v5 + 12));
    v6 = sub_24BCB9024(a1 + 104, v2);
    v7 = sub_24BCB9024(a1 + 104, v6);
    v8 = sub_24BCB9024(a1 + 104, (v7 + 8));
    v9 = sub_24BCB9024(a1 + 104, v8);
    sub_24BCB4670(&v86, (v9 + 12));
    ++v2;
  }

  while (v2 != v3);
  v10 = (v90 - v89) >> 2;
  if (v10)
  {
    v11 = ((v90 - v89) >> 2);
    sub_24BC95764(v85, v11);
    v12 = 0;
    v68 = v11;
    do
    {
      sub_24BCB8F94(v84, (a1 + 104), &v89[v12]);
      v13 = sub_24BCB8FBC(v84);
      if (v13 == -1)
      {
        v15 = 0.0;
      }

      else
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v16 = (*(a1 + 8) + 16 * *(a1 + 176));
          v18 = *v16;
          v17 = v16[1];
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v17);
            v19 = (*(a1 + 8) + 16 * *(a1 + 176));
            v21 = *v19;
            v20 = v19[1];
            v75 = *(*(v18 + 40) + 16 * v13);
            v22 = v89[v12];
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v20);
            }

            v18 = v21;
          }

          else
          {
            v75 = *(*(v18 + 40) + 16 * v13);
            v22 = v89[v12];
          }

          v73 = *(*(v18 + 40) + 16 * v22);
          v13 = sub_24BCB8FBC(v84);
          v23 = vsubq_f32(v75, v73);
          v24 = vmulq_f32(v23, v23);
          v24.i32[3] = 0;
          v15 = v15 + sqrtf(vaddv_f32(*&vpaddq_f32(v24, v24)));
          --v14;
        }

        while (v13 != -1);
        if (v14)
        {
          v15 = v15 / -v14;
        }

        v11 = v68;
      }

      *(v85[0] + v12++) = v15;
    }

    while (v12 != v11);
    v82[0] = 0x7F7FFFFF43340000;
    sub_24BD49854(__p, v11);
    sub_24BD498D8(v84, v11);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    LODWORD(v79) = 0;
    sub_24BCA1128(v82, v11);
    sub_24BD49A10(__p, v11);
    if (v82[0])
    {
      v82[1] = v82[0];
      operator delete(v82[0]);
    }

    if (v10 != 1)
    {
      v25 = 0;
      v26 = 8;
      do
      {
        *(*(v84[0] + v25) + v26) = 0;
        v25 += 24;
        v26 += 8;
      }

      while (24 * (v10 - 1) != v25);
    }

    LOBYTE(v78[0]) = 0;
    sub_24BC9FEFC(&v79, v11);
    sub_24BD49ACC(v82, v11);
    if (v79)
    {
      operator delete(v79);
    }

    v67 = (v10 - 1);
    if (v10 != 1)
    {
      v27 = 0;
      v28 = 1;
      do
      {
        v79 = 0;
        v80 = 0;
        v81 = 0;
        sub_24BCB9454(v78, (a1 + 104), &v89[v27]);
        for (i = sub_24BCB947C(v78); ; i = sub_24BCB947C(v78))
        {
          v77 = i;
          if (i == -1)
          {
            break;
          }

          v30 = sub_24BC9ECE4(a1, *(a1 + 180), i);
          if ((*v30 & v31) == 0)
          {
            v32 = sub_24BCB9024(a1 + 104, &v77);
            v33 = sub_24BC9ECE4(a1, *(a1 + 180), *v32);
            if ((*v33 & v34) == 0)
            {
              v35 = sub_24BCB9024(a1 + 104, &v77);
              v36 = sub_24BCB9024(a1 + 104, v35);
              sub_24BCB4670(&v79, (v36 + 12));
            }
          }
        }

        v37 = v27 + 1;
        v38 = v79;
        if (v27 + 1 < v11)
        {
          v39 = v80;
          v40 = v89;
          v41 = v82[0];
          v42 = v82[0] + 24 * v27;
          v43 = v28;
          do
          {
            if (v38 != v39)
            {
              v44 = v38;
              while (*v44 != v40[v43])
              {
                if (++v44 == v39)
                {
                  goto LABEL_44;
                }
              }

              *(*v42 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
              *(v41[3 * v43] + 8 * (v27 >> 6)) |= 1 << v27;
            }

LABEL_44:
            ++v43;
          }

          while (v43 != v10);
        }

        if (v38)
        {
          v80 = v38;
          operator delete(v38);
        }

        ++v28;
        ++v27;
      }

      while (v37 != v67);
      if (v10 >= 3)
      {
        v45 = v10 - 2;
        v70 = 1;
        v46 = 2;
        do
        {
          v47 = 0;
          v48 = 0;
          v49 = 1;
          v50 = 24;
          v69 = v45;
          do
          {
            v51 = v48 + v46;
            v71 = v48 + 1;
            v72 = v50;
            v52 = -1;
            v53 = 180.0;
            v54 = 3.4028e38;
            v55 = v70;
            v74 = v49;
            v76 = v47;
            do
            {
              v56 = *(v84[0] + 24 * v48) + v47;
              v57 = (*(v84[0] + v50) + 8 * v51);
              if (*(v56 + 8) >= *v57)
              {
                v58 = *(v56 + 8);
              }

              else
              {
                v58 = *v57;
              }

              v59 = *(v56 + 12) + v57[1];
              v60 = sub_24BD484D8(a1, &v89, &v86, __p, v82, v48, v49, v48 + v46);
              if (v58 >= v60)
              {
                v60 = v58;
              }

              v62 = v59 + v61;
              if (v60 < v53 || ((v60 - v53) < 0.00000001 ? (v63 = v62 < v54) : (v63 = 0), v63))
              {
                v53 = v60;
                v54 = v62;
                v52 = v49;
              }

              v47 += 8;
              v50 += 24;
              ++v49;
              --v55;
            }

            while (v55);
            v64 = (*(v84[0] + 24 * v48) + 8 * v51);
            *v64 = v53;
            v64[1] = v54;
            *(*(__p[0] + 3 * v48) + 4 * v51) = v52;
            v47 = v76 + 8;
            v50 = v72 + 24;
            v49 = v74 + 1;
            ++v48;
          }

          while (v71 != v69);
          ++v46;
          v45 = v69 - 1;
          ++v70;
        }

        while (v46 != v68);
      }
    }

    v65 = sub_24BD48FBC(a1, &v89, __p, 0, v67);
    v79 = v82;
    sub_24BD49C1C(&v79);
    v82[0] = __p;
    sub_24BC8EE84(v82);
    __p[0] = v84;
    sub_24BC8EE84(__p);
    if (v85[0])
    {
      v85[1] = v85[0];
      operator delete(v85[0]);
    }
  }

  else
  {
    v65 = 0;
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  return v65;
}

void sub_24BD4973C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char ***a23, uint64_t a24, uint64_t a25, char **a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  v38 = (v36 - 184);
  a23 = &a26;
  sub_24BD49C1C(&a23);
  a26 = &a29;
  sub_24BC8EE84(&a26);
  a29 = &a32;
  sub_24BC8EE84(&a29);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  v39 = *v38;
  if (*v38)
  {
    *(v36 - 176) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 160);
  if (v40)
  {
    *(v36 - 152) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void *sub_24BD49854(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BD498BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD498D8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

uint64_t sub_24BD49994(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BD499F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD49A10(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA04D4(result, a2);
  }

  return result;
}

void *sub_24BD49ACC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BD49B78(result, a2);
  }

  return result;
}

void sub_24BD49B78(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BD49BC4(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BD49BC4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BD49C1C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BD49C70(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24BD49C70(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_24BD49CB8(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v10 = a1[1];
  *&v25 = *a1;
  *(&v25 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a2[1];
  v26 = *a2;
  v27 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v23 = 0uLL;
  v24 = 0;
  sub_24BCC9984(&v23, &v25, v28, 2uLL);
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(&v25 + i);
  }

  sub_24BD1E904(&v23, v13, &v25);
  sub_24BCC97B8(&v23);
  v23 = v25;
  v24 = v26;
  v26 = 0;
  v25 = 0uLL;
  __p[0] = &v25;
  sub_24BCC961C(__p);
  BYTE4(v25) = 4;
  LODWORD(v25) = 10;
  DWORD2(v25) = 10;
  BYTE12(v25) = 4;
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v25, &v26, 2uLL);
  v14 = *a1;
  v26 = 0;
  v25 = 0uLL;
  sub_24BCC9A1C(&v25, *v14, v14[1], (v14[1] - *v14) >> 2);
  v15 = *a2;
  v28[0] = 0;
  v28[1] = 0;
  v27 = 0;
  sub_24BCC9A1C(&v27, *v15, v15[1], (v15[1] - *v15) >> 2);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_24BCE220C(&v19, &v25, v29, 2uLL);
  v16 = 0;
  while (1)
  {
    v17 = v28[v16 - 1];
    if (v17)
    {
      v28[v16] = v17;
      operator delete(v17);
    }

    v16 -= 3;
    if (v16 == -6)
    {
      memset(v18, 0, sizeof(v18));
      sub_24BCE2490(v18, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
      sub_24BF02A98(a5, a6);
      sub_24BD4B970();
    }
  }
}

void sub_24BD49FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_24BE7F218(&a27);
  a27 = v28 - 144;
  sub_24BCC961C(&a27);
  *(v28 - 144) = &a17;
  sub_24BC8EE84((v28 - 144));
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  *(v28 - 144) = &a23;
  sub_24BCC961C((v28 - 144));
  _Unwind_Resume(a1);
}

void sub_24BD4A0D4(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v3, v4);
}

void sub_24BD4A6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  v33 = *(v31 - 160);
  if (v33)
  {
    *(v31 - 152) = v33;
    operator delete(v33);
  }

  sub_24BCE1400(&a31);
  _Unwind_Resume(a1);
}

void sub_24BD4A7A8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD4A804(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BD4A0D4(a2, a3);
}

void sub_24BD4A828()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD4A964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a10);
  sub_24BCC961C(&a10);
  a10 = &a12;
  sub_24BCC961C(&a10);
  _Unwind_Resume(a1);
}

void sub_24BD4A9A0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD4AA04(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = xmmword_24BFD2A4C;
  v8 = 0;
  v3 = sub_24BD4AA8C(&v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD4AA8C(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 16; ++i)
  {
    a1[i] ^= v3;
  }

  a1[16] = 0;
  return result;
}

void sub_24BD4AAB8(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v2 = *a2;
  v3 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v2, v3);
}

void sub_24BD4B454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  v35 = *(v33 - 192);
  if (v35)
  {
    *(v33 - 184) = v35;
    operator delete(v35);
  }

  sub_24BCE1400(&a33);
  _Unwind_Resume(a1);
}

void sub_24BD4B5C8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD4B624(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BD4AAB8(a2, a3);
}

void sub_24BD4B648()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD4B6A4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD4B700()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD4B764(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  strcpy(v7, "*gCZGKZ\nHKIA]KXN ");
  v3 = sub_24BD09DEC(v7);
  v4 = strlen(v3->i8);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24BD4B7F0(void *a1)
{
  *a1 = &unk_285F95930;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BD4B840(void *a1)
{
  *a1 = &unk_285F95930;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BD4B8B0(void *a1)
{
  *a1 = &unk_285F959A8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BD4B900(void *a1)
{
  *a1 = &unk_285F959A8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BD4B9F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95A20;
  sub_24BD4BB00((a1 + 3), *a2, *(a2 + 8), a3, a4);
  return a1;
}

void sub_24BD4BA84(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95A20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD4BB00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F959A8;
  *(a1 + 8) = a2;
  *(a1 + 24) = *a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  sub_24BCC9A1C(a1 + 32, *(a4 + 8), *(a4 + 16), (*(a4 + 16) - *(a4 + 8)) >> 2);
  *(a1 + 56) = *(a4 + 32);
  *(a1 + 64) = *a5;
  return a1;
}

uint64_t sub_24BD4BB84(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 1)
  {
    v5 = a3;
    v6 = std::thread::hardware_concurrency();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 8;
    }

    if (v7 < v5)
    {
      v5 = v7;
    }

    if (v7 > 1)
    {
      sub_24BD4BD60(v9, v5);
      v9[3] = 0;
      sub_24BD4BEA0();
    }
  }

  return sub_24BD4BD08(a2, 0, a1);
}

void sub_24BD4BCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_24BD4BE1C(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD4BD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_24BCA1F3C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void *sub_24BD4BD60(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BD4BDE0(result, a2);
  }

  return result;
}

void sub_24BD4BDE0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_24BCAD8CC(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BD4BE1C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::thread::~thread(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_24BD4BF8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x24C2548B0](v2, 0x1020C40A408C0D3);
  sub_24BD4C0A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD4BFE4(uint64_t *a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  sub_24BD4BD08((v5 + 1), v5[5], v5[6]);
  sub_24BD4C054(&v5);
  return 0;
}

void sub_24BD4C040(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD4C054(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_24BD4C054(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_24BC9EF8C((v2 + 1));
    v3 = sub_24BD4C0A8(v2);
    MEMORY[0x24C2548B0](v3, 0x1020C40A408C0D3);
  }

  return a1;
}

uint64_t *sub_24BD4C0A8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x24C2544C0]();
    MEMORY[0x24C2548B0](v3, 0x20C4093837F09);
  }

  return a1;
}

void *sub_24BD4C0F0(void *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = *a2;
  *a2 = 0;
  *a1 = v8;
  sub_24BD41D5C((a1 + 1), a3);
  a1[5] = *a4;
  a1[6] = *a5;
  return a1;
}

uint64_t *sub_24BD4C15C()
{
  MEMORY[0x28223BE20]();
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F079218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079218))
  {
    memcpy(__dst, &unk_24BFD2AC0, sizeof(__dst));
    v2 = sub_24BD4C274(__dst);
    v3 = strlen(v2);
    std::string::__init(&qword_27F079200, v2, v3);
    __cxa_atexit(MEMORY[0x277D82640], &qword_27F079200, &dword_24BC7E000);
    __cxa_guard_release(&qword_27F079218);
  }

  v0 = *MEMORY[0x277D85DE8];
  return &qword_27F079200;
}

_BYTE *sub_24BD4C274(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  v5 = 39189;
  v6 = result;
  do
  {
    *v6++ ^= v3;
    --v5;
  }

  while (v5);
  a1[39190] = 0;
  return result;
}

uint64_t sub_24BD4C2A4(void *a1, uint64_t a2)
{
  v6 = a2;
  v7 = a1;
  if ((atomic_load_explicit(&qword_27F079228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079228))
  {
    v5[0] = &v7;
    v5[1] = &v6;
    qword_27F079220 = sub_24BD4C35C(v5);
    __cxa_guard_release(&qword_27F079228);
  }

  v2 = qword_27F079220;
  v3 = qword_27F079220;

  return v2;
}

void sub_24BD4C33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  __cxa_guard_abort(&qword_27F079228);

  _Unwind_Resume(a1);
}

id sub_24BD4C35C(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  sub_24BD4C15C();
  if (byte_27F079217 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v2, v3, &qword_27F079200, v4);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v2, v3, qword_27F079200, v4);
  }
  v5 = ;
  v6 = objc_opt_new();
  objc_msgSend_setLanguageVersion_(v6, v7, 131075, v8);
  v10 = objc_msgSend_newLibraryWithSource_options_error_(**a1, v9, v5, v6, **(a1 + 8));

  return v10;
}

id sub_24BD4C428(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v10 = v7;
  if (a4)
  {
    v11 = sub_24BD4C2A4(v7, a2);
  }

  else
  {
    if (*(a3 + 23) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, a3, v9);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, *a3, v9);
    }
    v12 = ;
    v15 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v13, v12, v14);
    v11 = objc_msgSend_newLibraryWithURL_error_(v10, v16, v15, a2);
  }

  return v11;
}

BOOL sub_24BD4C518(void *a1)
{
  v1 = a1;
  v5 = v1;
  v6 = v1 && objc_msgSend_code(v1, v2, v3, v4);

  return v6;
}

BOOL sub_24BD4C570(void **a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = MTLCreateSystemDefaultDevice();
  v26[0] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v26, 1);

  v9 = objc_msgSend_count(v5, v6, v7, v8);
  v10 = v9;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v11 = *a1;
  v12 = a1[1];
  if (*a1 == v12)
  {
    __p = 0;
    if (v9)
    {
      do
      {
        sub_24BD4C778(&v23, &__p);
        __p = __p + 1;
      }

      while (__p < v10);
    }
  }

  else
  {
    do
    {
      __p = *v11;
      if (__p < v10)
      {
        sub_24BD4C778(&v23, &__p);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
  v13 = v23;
  v14 = v24;
  v15 = v23 != v24;
  if (v23 == v24)
  {
LABEL_13:
    v16 = __p;
    if (!__p)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  do
  {
    v19 = *v13;
    sub_24BD4C778(&__p, &v19);
    ++v13;
  }

  while (v13 != v14);
  v16 = __p;
  if (__p != v21)
  {
    if (&__p != a1)
    {
      sub_24BD07E64(a1, __p, v21, (v21 - __p) >> 3);
    }

    goto LABEL_13;
  }

  v15 = 0;
  if (__p)
  {
LABEL_14:
    v21 = v16;
    operator delete(v16);
  }

LABEL_15:
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_24BD4C71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_24BD4C778(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_24BC8E01C();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_24BC91F60(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_24BD4C858(void **a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = MTLCreateSystemDefaultDevice();
  v18[0] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v18, 1);

  v9 = objc_msgSend_count(v5, v6, v7, v8);
  if (v9)
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    v10 = *a1;
    v11 = a1[1];
    if (*a1 == v11)
    {
      for (i = 0; i < v9; ++i)
      {
        sub_24BD4C778(&__p, &i);
      }
    }

    else
    {
      do
      {
        i = *v10;
        if (i < v9)
        {
          sub_24BD4C778(&__p, &i);
        }

        ++v10;
      }

      while (v10 != v11);
    }

    v12 = __p;
    if (&__p != a1)
    {
      sub_24BD07E64(a1, __p, v16, (v16 - __p) >> 3);
      v12 = __p;
    }

    if (v12)
    {
      v16 = v12;
      operator delete(v12);
    }
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_24BD4C9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BD4CB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 64) = v17;
  sub_24BCC961C((v18 - 64));
  sub_24BE7F218(v18 - 56);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BD4D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va6, a5);
  va_start(va5, a5);
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  va_copy(va4, va3);
  v17 = va_arg(va4, void);
  v19 = va_arg(va4, void);
  va_copy(va5, va4);
  v20 = va_arg(va5, void);
  v22 = va_arg(va5, void);
  va_copy(va6, va5);
  v23 = va_arg(va6, void);
  v25 = va_arg(va6, void);
  for (i = 32; i != -16; i -= 16)
  {
    sub_24BE7F218(v5 + i);
  }

  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  sub_24BE7F218(va3);
  sub_24BE7F218(va4);
  sub_24BE7F218(va5);
  sub_24BE7F218(va6);
  _Unwind_Resume(a1);
}

void sub_24BD4D2C4(uint64_t **a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  v15[0] = *a2;
  v15[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v14, 0, sizeof(v14));
  sub_24BCC9984(v14, v15, &v16, 1uLL);
  v12 = a3;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v12, __p, 1uLL);
  sub_24BEBC9A8(a1, v14, __p, a4, a5, a6);
}

void sub_24BD4D3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  sub_24BCC961C(&__p);
  sub_24BE7F218(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD4D424(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

void sub_24BD4D4B0(uint64_t **a1, void *a2, uint64_t **a3, int a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  v15[0] = *a2;
  v15[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v14, 0, sizeof(v14));
  sub_24BCC9984(v14, v15, &v16, 1uLL);
  v12 = a4;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v12, __p, 1uLL);
  sub_24BEA5970(a1, v14, a3, __p, a5, a6);
}

void sub_24BD4D5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  sub_24BCC961C(&__p);
  sub_24BE7F218(&a16);
  _Unwind_Resume(a1);
}

void sub_24BD4D680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD4D6B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

std::logic_error *sub_24BD4D730(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

uint64_t sub_24BD4D76C(int *a1, double **a2, uint64_t a3, uint64_t *a4, double *a5, uint64_t a6, int a7, char a8, uint64_t a9)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a4[1] == *a4)
  {
    v14 = sub_24BDCB830(a1, *a3, *a2);
    sub_24BCA1A48(&v26, (*(a3 + 8) - *a3) >> 3);
    sub_24BDCA898(a1, a2, &v26);
    v15 = v26;
    if (*(&v26 + 1) == v26)
    {
      *a5 = 0.0;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = (*(&v26 + 1) - v26) >> 3;
      v17 = *a3;
      if (v16 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = (*(&v26 + 1) - v26) >> 3;
      }

      v19 = 0.0;
      v20 = v26;
      do
      {
        v21 = *v20++;
        v22 = v21;
        v23 = *v17++;
        v19 = v19 + vabdd_f64(v22, v23);
        --v18;
      }

      while (v18);
      *a5 = v19 / v16;
    }

LABEL_20:
    *(&v26 + 1) = v15;
    operator delete(v15);
    goto LABEL_21;
  }

  v34 = 0;
  *__p = 0u;
  memset(v33, 0, sizeof(v33));
  *v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  *v29 = 0u;
  v26 = 0u;
  *v27 = 0u;
  v36 = a7;
  v35 = a8;
  sub_24BCA1524(v37, a9);
  v14 = sub_24BD4D984(&v26, a1, a2, a3, a4, a5, v37);
  sub_24BC9F00C(v37);
  sub_24BCA102C(v33 + 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[1])
  {
    *&v31 = v30[1];
    operator delete(v30[1]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }

  v15 = v26;
  if (v26)
  {
    goto LABEL_20;
  }

LABEL_21:
  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_24BD4D940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD4D984(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, double *a6, uint64_t a7)
{
  v87 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  v85 = 0;
  sub_24BCC9A1C(&v83, *a5, a5[1], (a5[1] - *a5) >> 2);
  std::__sort<std::__less<int,int> &,int *>();
  v12 = sub_24BCA29B4(v83, v84);
  sub_24BC8CAB0(&v83, (v12 - v83));
  v80 = 0;
  v81 = 0;
  v82 = 0;
  sub_24BD4E060(a2, a3, a4, &v83, &v80);
  *__p = 0u;
  v79 = 0u;
  v76 = 0u;
  *v77 = 0u;
  *v75 = 0u;
  sub_24BDCA608(a2, v75);
  sub_24BDCBF40(v70);
  if (!sub_24BDCBFB0(v70, v75))
  {
    sub_24BDCBFAC(v70);
    goto LABEL_10;
  }

  v13 = sub_24BDCC2E0(v70, *a4, (*(a4 + 8) - *a4) >> 3, *a3, (a3[1] - *a3) >> 3);
  sub_24BDCBFAC(v70);
  if ((v13 & 1) == 0)
  {
LABEL_10:
    v26 = 0;
    goto LABEL_11;
  }

  v53 = HIDWORD(v75[0]);
  v54 = v75[0];
  v51 = v77[0];
  v52 = v75[1];
  v55 = __p[1];
  v14 = v84 - v83;
  sub_24BCA1A48(&v68, (v84 - v83));
  __src = 0;
  v57 = 0;
  v58 = 0;
  sub_24BCA39A4(&__src, *a3, a3[1], (a3[1] - *a3) >> 3);
  v15 = v14 >> 2;
  v16 = __src;
  if ((v14 >> 2) >= 1)
  {
    bzero(__src, 8 * ((v14 >> 2) & 0x7FFFFFFF));
  }

  v17 = HIDWORD(v75[0]);
  sub_24BCA1A48(&v66, (*(a4 + 8) - *a4) >> 3);
  v70[0] = __PAIR64__(v53, v54);
  v70[1] = v52;
  *&v71 = v51;
  DWORD2(v71) = 12;
  BYTE12(v71) = 1;
  *(&v71 + 13) = 0;
  HIBYTE(v71) = 0;
  v72[0] = v55;
  sub_24BD4EEB0(v70, v17, v16, SHIDWORD(v75[0]), v66);
  v18 = v66;
  if (v15 < 1)
  {
    if (!v66)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = *a4;
    v20 = v68;
    v21 = (v14 >> 2) & 0x7FFFFFFF;
    v22 = v66;
    do
    {
      v23 = *v19++;
      v24 = v23;
      v25 = *v22++;
      *v20++ = v24 - v25;
      --v21;
    }

    while (v21);
  }

  v67 = v18;
  operator delete(v18);
LABEL_24:
  if (__src)
  {
    v57 = __src;
    operator delete(__src);
  }

  *v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  *v72 = 0u;
  *v70 = 0u;
  sub_24BD4E254(a2, v70, v14 >> 2);
  sub_24BCA1A48(&v66, (v14 >> 2));
  if (v15 >= 1)
  {
    v29 = *a3;
    v30 = v66;
    v31 = (v14 >> 2) & 0x7FFFFFFF;
    do
    {
      v32 = *v29++;
      *v30++ = v32;
      --v31;
    }

    while (v31);
  }

  sub_24BCA1524(v86, a7);
  v33 = sub_24BD4EC34(v70, &v66, &v68, v86);
  sub_24BC9F00C(v86);
  if (v33)
  {
    if (&v68 != a4)
    {
      sub_24BD07E64(&v68, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
    }

    if (v15 >= 1)
    {
      v34 = 0;
      do
      {
        sub_24BD4EA08(v34, a2, a3, a4, *(v66 + v34));
        ++v34;
      }

      while (((v14 >> 2) & 0x7FFFFFFF) != v34);
    }

    if (sub_24BDCB830(a2, *a4, *a3))
    {
      v35 = *a3;
      v36 = a3[1];
      sub_24BCA1A48(&v64, (v69 - v68) >> 3);
      __src = __PAIR64__(v53, v54);
      v57 = v52;
      v58 = v51;
      v59 = 12;
      v60 = 1;
      v61 = 0;
      v62 = 0;
      v63 = v55;
      sub_24BD4EEB0(&__src, (v36 - v35) >> 3, v35, (v65 - v64) >> 3, v64);
      v37 = v64;
      if (v65 == v64)
      {
        *a6 = 0.0;
        if (!v37)
        {
LABEL_46:
          __src = 0;
          v57 = 0;
          v58 = 0;
          sub_24BCA39A4(&__src, *a3, a3[1], (a3[1] - *a3) >> 3);
          v46 = v80;
          v47 = __src;
          if (v81 != v80)
          {
            v48 = 0;
            v49 = v81 - v80;
            v50 = *a3;
            do
            {
              *&v47[8 * v48] = *(v50 + 8 * v46[v48]);
              ++v48;
            }

            while (v49 > v48);
          }

          if (&__src != a3)
          {
            sub_24BD07E64(a3, v47, v57, (v57 - v47) >> 3);
            v47 = __src;
          }

          if (v47)
          {
            v57 = v47;
            operator delete(v47);
          }

          v26 = 1;
          goto LABEL_54;
        }
      }

      else
      {
        v38 = v65 - v64;
        v39 = v68;
        if (v38 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v65 - v64;
        }

        v41 = 0.0;
        v42 = v64;
        do
        {
          v43 = *v42++;
          v44 = v43;
          v45 = *v39++;
          v41 = v41 + vabdd_f64(v44, v45);
          --v40;
        }

        while (v40);
        *a6 = v41 / v38;
      }

      v65 = v37;
      operator delete(v37);
      goto LABEL_46;
    }
  }

  v26 = 0;
LABEL_54:
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v73[1])
  {
    *&v74 = v73[1];
    operator delete(v73[1]);
  }

  if (v72[0])
  {
    v72[1] = v72[0];
    operator delete(v72[0]);
  }

  if (v70[1])
  {
    *&v71 = v70[1];
    operator delete(v70[1]);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

LABEL_11:
  if (__p[1])
  {
    *&v79 = __p[1];
    operator delete(__p[1]);
  }

  if (v77[0])
  {
    v77[1] = v77[0];
    operator delete(v77[0]);
  }

  if (v75[1])
  {
    *&v76 = v75[1];
    operator delete(v75[1]);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

void sub_24BD4DEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  sub_24BC9EE94(&a27);
  if (a24)
  {
    operator delete(a24);
  }

  sub_24BC9EE94(&a41);
  v43 = *(v41 - 176);
  if (v43)
  {
    *(v41 - 168) = v43;
    operator delete(v43);
  }

  v44 = *(v41 - 152);
  if (v44)
  {
    *(v41 - 144) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

double sub_24BD4E014(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = v3 >> 3;
  result = 0.0;
  do
  {
    v7 = fabs(*(*a1 + 8 * v4) * *(*a2 + 8 * v4));
    if (v7 >= result)
    {
      result = v7;
    }

    ++v4;
  }

  while (v5 > v4);
  return result;
}

void sub_24BD4E060(unsigned int *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  sub_24BC94F74(v36, *a1);
  v10 = *a1;
  if (*a1 >= 1)
  {
    v11 = 0;
    v12 = v36[0];
    do
    {
      v12[v11] = v11;
      ++v11;
    }

    while (v11 < *a1);
    v10 = *a1;
  }

  v13 = *a4;
  v14 = a4[1] - *a4;
  if ((v14 >> 2) >= 1)
  {
    v15 = 0;
    v16 = v36[0];
    v17 = *a2;
    v18 = (v14 >> 2) & 0x7FFFFFFF;
    v19 = *a3;
    do
    {
      v20 = *(v13 + 4 * v15);
      if (v15 != v20)
      {
        v21 = v16[v20];
        v16[v20] = v16[v15];
        v16[v15] = v21;
        *(v13 + 4 * v15) = v15;
        v22 = *(v17 + 8 * v20);
        *(v17 + 8 * v20) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v22;
        v23 = *(v19 + 8 * v20);
        *(v19 + 8 * v20) = *(v19 + 8 * v15);
        *(v19 + 8 * v15) = v23;
      }

      ++v15;
    }

    while (v18 != v15);
    v10 = *a1;
  }

  sub_24BC8CAB0(a5, v10);
  v24 = *a5;
  v25 = a5[1];
  v26 = v25 - *a5;
  if (v25 != *a5)
  {
    v27 = 0;
    v28 = v26 >> 2;
    v29 = v36[0];
    if (v28 <= 1)
    {
      v28 = 1;
    }

    do
    {
      *(v24 + 4 * v29[v27]) = v27;
      ++v27;
    }

    while (v28 != v27);
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  sub_24BDCB540(a1, &__p);
  if (v34 != __p)
  {
    v30 = (v34 - __p) >> 4;
    v31 = *a5;
    if (v30 <= 1)
    {
      v30 = 1;
    }

    v32 = __p + 4;
    do
    {
      *(v32 - 1) = *(v31 + 4 * *(v32 - 1));
      *v32 = *(v31 + 4 * *v32);
      v32 += 4;
      --v30;
    }

    while (v30);
  }

  sub_24BDCB164(&__p, *a1, a1[1], 0, a1);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }
}

void sub_24BD4E220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD4E254(void *a1, unsigned int *a2, signed int a3)
{
  __src = 0;
  v24 = 0;
  v25 = 0;
  if (a3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = a1[1];
    do
    {
      v8 = v6;
      v9 = *(v7 + 8 * v6++);
      if (v9 < *(v7 + 8 * v6))
      {
        for (i = *(a1[4] + 4 * v9); i < a3; i = *(a1[4] + 4 * v9++ + 4))
        {
          v11 = *(a1[7] + 8 * v9);
          if (v5 >= v25)
          {
            v12 = __src;
            v13 = v5 - __src;
            v14 = (v5 - __src) >> 4;
            v15 = v14 + 1;
            if ((v14 + 1) >> 60)
            {
              sub_24BC8E01C();
            }

            v16 = v25 - __src;
            if ((v25 - __src) >> 3 > v15)
            {
              v15 = v16 >> 3;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF0)
            {
              v17 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              sub_24BCA1868(&__src, v17);
            }

            v18 = v14;
            v19 = 16 * v14;
            *v19 = i;
            *(v19 + 4) = v8;
            *(v19 + 8) = v11;
            v5 = 16 * v14 + 16;
            v20 = (v19 - 16 * v18);
            memcpy(v20, v12, v13);
            v21 = __src;
            __src = v20;
            v24 = v5;
            v25 = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v5 = i;
            *(v5 + 4) = v8;
            *(v5 + 8) = v11;
            v5 += 16;
          }

          v24 = v5;
          v7 = a1[1];
          if (v9 + 1 >= *(v7 + 8 * v6))
          {
            break;
          }
        }
      }
    }

    while (v6 != a3);
  }

  sub_24BDCB164(&__src, a3, a3, 1, a2);
  if (__src)
  {
    v24 = __src;
    operator delete(__src);
  }
}

void sub_24BD4E410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD4E434(int *a1, uint64_t *a2, double **a3, uint64_t a4)
{
  v8 = (a2[1] - *a2) >> 3;
  LOBYTE(v32[0]) = 0;
  sub_24BC9FEFC(&v41, v8);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  sub_24BCA39A4(&v38, *a2, a2[1], (a2[1] - *a2) >> 3);
  v9 = a2[1];
  if ((v9 - *a2) <= 0x9C40)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = 1.0;
  }

  if (v9 == *a2)
  {
    v28 = 1;
  }

  else
  {
    LODWORD(v11) = 0;
    while (1)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v34[0] = 0;
      v34[1] = 0;
      v32[1] = 0;
      v33 = v34;
      *v32 = v10;
      v12 = v42;
      if (v42)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          if (((*(v41 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            v15 = *(v38 + v13);
            if (v15 >= 0.0)
            {
              v16 = 0.5;
            }

            else
            {
              v16 = -0.5;
            }

            sub_24BD4E7B0(v32, v14, vabdd_f64((v15 + v16), v15));
            v12 = v42;
          }

          v13 = ++v14;
        }

        while (v12 > v14);
      }

      sub_24BD4E8B8(v32, &v35);
      v17 = v35;
      if (v35 == v36)
      {
        v25 = 0;
        v24 = 2;
      }

      else
      {
        v18 = 0;
        v19 = 1;
        do
        {
          v20 = v17[v18];
          v21 = *(v38 + v20);
          if (v21 >= 0.0)
          {
            v22 = 0.5;
          }

          else
          {
            v22 = -0.5;
          }

          v23 = (v21 + v22);
          *(v38 + v20) = v23;
          *(*a2 + 8 * v20) = v23;
          sub_24BD4EA08(v20, a1, &v38, a3, v23);
          *(v41 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
          v18 = v19;
          v17 = v35;
          ++v19;
        }

        while (v18 < (v36 - v35) >> 2);
        if (sub_24BDCB830(a1, *a3, v38))
        {
          v24 = 0;
          v25 = 1;
          if (v11 && !(v11 % 0x64))
          {
            if (*(a4 + 24))
            {
              v26 = (a2[1] - *a2) >> 3;
              v31 = 0;
              LOBYTE(__p) = 0;
              v27 = (v11 * 30.0 / v26 + 60.0) / 100.0;
              sub_24BC976F4(a4, &__p, v27);
              if (v31 < 0)
              {
                operator delete(__p);
              }
            }

            v24 = 0;
          }
        }

        else
        {
          v25 = 0;
          v24 = 1;
        }
      }

      sub_24BCC8A84(&v33, v34[0]);
      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if ((v25 & 1) == 0)
      {
        break;
      }

      v11 = (v11 + 1);
      if (v11 >= (a2[1] - *a2) >> 3)
      {
        v24 = 2;
        break;
      }
    }

    v28 = v24 == 2;
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41)
  {
    operator delete(v41);
  }

  return v28;
}

void sub_24BD4E744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BCC8A84(v26 + 16, a18);
  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BD4E7B0(uint64_t a1, int a2, double a3)
{
  if (!*(a1 + 32) || (v6 = (a1 + 8), v7 = *(a1 + 8), v7 + a3 <= *a1))
  {
    v14 = a3;
    v15 = a2;
    sub_24BD4EDB4(a1 + 16, &v14);
    v6 = (a1 + 8);
    goto LABEL_10;
  }

  v8 = a1 + 24;
  v9 = *(a1 + 24);
  if (v9)
  {
    do
    {
      v10 = v9;
      v9 = *(v9 + 8);
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v8 + 16);
      v11 = *v10 == v8;
      v8 = v10;
    }

    while (v11);
  }

  v12 = *(v10 + 32);
  if (v12 > a3)
  {
    *v6 = v7 - v12;
    sub_24BCADE5C((a1 + 16), v10);
    operator delete(v10);
    v14 = a3;
    v15 = a2;
    sub_24BD4EDB4(a1 + 16, &v14);
LABEL_10:
    *v6 = *v6 + a3;
    return 1;
  }

  return 0;
}

void sub_24BD4E8B8(void *a1, void *a2)
{
  a2[1] = *a2;
  sub_24BCB8D20(a2, a1[4]);
  v4 = a1[2];
  v5 = a1 + 3;
  if (v4 != a1 + 3)
  {
    v6 = a2[1];
    do
    {
      v7 = a2[2];
      if (v6 >= v7)
      {
        v8 = *a2;
        v9 = v6 - *a2;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          sub_24BC8E01C();
        }

        v12 = v7 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_24BC92E0C(a2, v13);
        }

        *(4 * v10) = *(v4 + 10);
        v6 = (4 * v10 + 4);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6++ = *(v4 + 10);
      }

      a2[1] = v6;
      v15 = v4[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v4[2];
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v4 = v16;
    }

    while (v16 != v5);
  }
}

void sub_24BD4EA08(int a1, void *a2, void *a3, void *a4, double a5)
{
  *(*a3 + 8 * a1) = a5;
  __src = 0;
  v39 = 0;
  v40 = 0;
  sub_24BCB8D20(&__src, 0x10uLL);
  v9 = (a2[1] + 8 * a1);
  v10 = *v9;
  v11 = v9[1];
  if (*v9 < v11)
  {
    do
    {
      v12 = *(a2[4] + 4 * v10);
      v13 = a2[7];
      if (v12 == a1)
      {
        *(v13 + 8 * v10) = 0x3FF0000000000000;
        *(*a4 + 8 * a1) = a5;
      }

      else
      {
        *(*a4 + 8 * v12) = *(*a4 + 8 * v12) - *(v13 + 8 * v10) * a5;
        *(v13 + 8 * v10) = 0;
        v14 = v39;
        if (v39 >= v40)
        {
          v16 = __src;
          v17 = v39 - __src;
          v18 = (v39 - __src) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v20 = v40 - __src;
          if ((v40 - __src) >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
          v22 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v21)
          {
            v22 = v19;
          }

          if (v22)
          {
            sub_24BC92E0C(&__src, v22);
          }

          *(4 * v18) = v12;
          v15 = 4 * v18 + 4;
          memcpy(0, v16, v17);
          v23 = __src;
          __src = 0;
          v39 = v15;
          v40 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v39 = v12;
          v15 = (v14 + 4);
        }

        v39 = v15;
      }

      ++v10;
    }

    while (v11 != v10);
  }

  v24 = __src;
  if (v39 != __src)
  {
    v25 = 0;
    v26 = (v39 - __src) >> 2;
    v27 = a2[1];
    v28 = a2[4];
    v29 = a2[7];
    do
    {
      v30 = *&v24[4 * v25];
      v31 = *(v27 + 8 * v30);
      v32 = *(v27 + 8 * (v30 + 1));
      v33 = v32 <= v31;
      v34 = v32 - v31;
      if (!v33)
      {
        v35 = (v29 + 8 * v31);
        v36 = (v28 + 4 * v31);
        while (1)
        {
          v37 = *v36++;
          if (v37 == a1)
          {
            break;
          }

          ++v35;
          if (!--v34)
          {
            goto LABEL_25;
          }
        }

        *v35 = 0;
      }

LABEL_25:
      ++v25;
    }

    while (v26 > v25);
  }

  if (v24)
  {
    v39 = v24;
    operator delete(v24);
  }
}

void sub_24BD4EC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD4EC34(int *a1, uint64_t *a2, double **a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (sub_24BD4D764())
  {
    v8 = *MEMORY[0x277D85DE8];

    return sub_24BD4D764();
  }

  else
  {
    sub_24BCA1524(v12, a4);
    v10 = sub_24BD4E434(a1, a2, a3, v12);
    sub_24BC9F00C(v12);
    v11 = *MEMORY[0x277D85DE8];
    return v10;
  }
}

void sub_24BD4ED1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9F00C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD4ED38(uint64_t a1)
{
  sub_24BCA102C((a1 + 120));
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_24BD4EDB4(uint64_t a1, uint64_t a2)
{
  v2 = *sub_24BD4EE48(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_24BD4EE48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 8);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v4 + 40);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void sub_24BD4EEB0(uint64_t a1, int a2, double *a3, int a4, double *a5)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  if (*&v7)
  {
    v9 = *(a1 + 4);
  }

  else
  {
    v9 = *a1;
  }

  v10 = v9 * v8;
  if (*&v7)
  {
    v11 = *a1;
  }

  else
  {
    v11 = *(a1 + 4);
  }

  if (v11 * v8 == a2)
  {
    if (v10 == a4)
    {
      v12 = *(a1 + 26);
      A.structure.rowCount = *a1;
      A.structure.columnCount = v6;
      *&A.structure.columnStarts = *(a1 + 8);
      A.structure.attributes = v7;
      *&A.structure.blockSize = v12;
      *(&A.structure.blockSize + 2) = v8;
      *(&A.structure.blockSize + 3) = *(a1 + 29);
      HIDWORD(A.data) = *(a1 + 36);
      x.rowCount = a2;
      x.columnCount = 1;
      x.columnStride = a2;
      x.attributes = 0;
      x.data = a3;
      y.rowCount = a4;
      y.columnCount = 1;
      y.columnStride = a4;
      y.attributes = 0;
      y.data = a5;
      _SparseSpMV_Double(1.0, &A, &x, 0, &y);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24BFB8E18();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_24BFB8DA8();
  }

  _SparseTrap();
}

void sub_24BD4F008(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a1[1];
  *&v20 = *a1;
  *(&v20 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = 0uLL;
  v14 = 0;
  sub_24BCC9984(&v13, &v20, v21, 1uLL);
  sub_24BE7F218(&v20);
  sub_24BD1E904(&v13, v9, &v20);
  sub_24BCC97B8(&v13);
  v13 = v20;
  v14 = v21[0];
  v21[0] = 0;
  v20 = 0uLL;
  v18 = &v20;
  sub_24BCC961C(&v18);
  v10 = (*a1)[7];
  LODWORD(v18) = v10;
  BYTE4(v18) = BYTE4(v10);
  v21[0] = 0;
  v20 = 0uLL;
  sub_24BCE2380(&v20, &v18, v19, 1uLL);
  v11 = *a1;
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v11, v11[1], (v11[1] - *v11) >> 2);
  v18 = 0;
  v19[0] = 0;
  v19[1] = 0;
  sub_24BCE220C(&v18, &__p, &v18, 1uLL);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  memset(v12, 0, sizeof(v12));
  sub_24BCE2490(v12, v18, v19[0], 0xAAAAAAAAAAAAAAABLL * ((v19[0] - v18) >> 3));
  sub_24BF02A98(a4, a5);
  sub_24BD50644();
}

void sub_24BD4F284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char *a13, std::__shared_weak_count *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  a13 = &a16;
  sub_24BC8EE84(&a13);
  __p = (v24 - 120);
  sub_24BC8EE84(&__p);
  v26 = *(v24 - 96);
  if (v26)
  {
    *(v24 - 88) = v26;
    operator delete(v26);
  }

  *(v24 - 96) = &a19;
  sub_24BCC961C((v24 - 96));
  _Unwind_Resume(a1);
}

void sub_24BD4F334(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v9 = a1[1];
  *&v23 = *a1;
  *(&v23 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a2[1];
  v24 = *a2;
  v25 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = 0uLL;
  v17 = 0;
  sub_24BCC9984(&v16, &v23, v26, 2uLL);
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(&v23 + i);
  }

  sub_24BD1E904(&v16, v12, &v23);
  sub_24BCC97B8(&v16);
  v16 = v23;
  v17 = v24;
  v24 = 0;
  v23 = 0uLL;
  v21 = &v23;
  sub_24BCC961C(&v21);
  v13 = (*a1)[7];
  LODWORD(v21) = v13;
  BYTE4(v21) = BYTE4(v13);
  v24 = 0;
  v23 = 0uLL;
  sub_24BCE2380(&v23, &v21, v22, 1uLL);
  v14 = *a1;
  v19 = 0;
  v20 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  v21 = 0;
  v22[0] = 0;
  v22[1] = 0;
  sub_24BCE220C(&v21, &__p, &v21, 1uLL);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  memset(v15, 0, sizeof(v15));
  sub_24BCE2490(v15, v21, v22[0], 0xAAAAAAAAAAAAAAABLL * ((v22[0] - v21) >> 3));
  sub_24BF02A98(a5, a6);
  sub_24BD5084C();
}

void sub_24BD4F5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char *a13, std::__shared_weak_count *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, uint64_t a25, char a26)
{
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  a13 = &a16;
  sub_24BC8EE84(&a13);
  __p = &a26;
  sub_24BC8EE84(&__p);
  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  *(v26 - 128) = &a19;
  sub_24BCC961C((v26 - 128));
  _Unwind_Resume(a1);
}

void sub_24BD4F6A0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD4F6FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = sub_24BE7E0B8(*(*a3 + 60) * *(*a3 + 48));
  v6[0] = &off_285F93798;
  v6[1] = sub_24BE7E1F0;
  v6[3] = v6;
  sub_24BE7EE1C(a3, v5);
}

void sub_24BD4FB6C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

uint64_t sub_24BD4FBC8@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a4 != *(a4 + 8))
  {
    if (**a4 >= 1)
    {
      sub_24BE80D1C();
      sub_24BCCCD5C();
    }

    v5 = (*a3)[1];
    v6[0] = **a3;
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BD4F334(*a2, v6, result + 24, result + 48, *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BD4FCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  sub_24BCC961C(&a11);
  _Unwind_Resume(a1);
}

void sub_24BD4FD04()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD4FD68(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  strcpy(v7, ">}KMJQSkP_LGxiz4");
  v3 = sub_24BD4AA8C(v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD4FDF0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD4FE4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = sub_24BE7E0B8(*(*a3 + 60) * *(*a3 + 48));
  v6[0] = &off_285F93798;
  v6[1] = sub_24BE7E1F0;
  v6[3] = v6;
  sub_24BE7EE1C(a3, v5);
}

void sub_24BD502D0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD5032C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD50388()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD503EC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = xmmword_24BFDC49F;
  v8 = 0;
  v3 = sub_24BD4AA8C(&v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BD504C4(uint64_t a1)
{
  *a1 = &unk_285F95AC0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_24BD50514(uint64_t a1)
{
  *a1 = &unk_285F95AC0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD50584(uint64_t a1)
{
  *a1 = &unk_285F95B60;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_24BD505D4(uint64_t a1)
{
  *a1 = &unk_285F95B60;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BD506C8(void *a1, uint64_t a2, __int128 *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95BE8;
  sub_24BD507D4((a1 + 3), *a2, *(a2 + 8), a3, a4);
  return a1;
}

void sub_24BD50758(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD507D4(uint64_t a1, uint64_t a2, int a3, __int128 *a4, void *a5)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F95AC0;
  *(a1 + 8) = a2;
  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v7;
  }

  *(a1 + 48) = *a5;
  return a1;
}

void *sub_24BD508D0(void *a1, uint64_t a2, __int128 *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95C38;
  sub_24BD509DC((a1 + 3), *a2, *(a2 + 8), a3, a4);
  return a1;
}

void sub_24BD50960(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD509DC(uint64_t a1, uint64_t a2, int a3, __int128 *a4, void *a5)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F95B60;
  *(a1 + 8) = a2;
  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v7;
  }

  *(a1 + 48) = *a5;
  return a1;
}

void sub_24BD50A54()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD50AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *(**a2 + 56);
  v5 = sub_24BE7E0B8(*(*a3 + 60) * *(*a3 + 48));
  v6[0] = &off_285F93798;
  v6[1] = sub_24BE7E1F0;
  v6[3] = v6;
  sub_24BE7EE1C(a3, v5);
}

void sub_24BD50E98(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_24BD0E408(&a15, MEMORY[0x277D82828]);
  MEMORY[0x24C2547D0](va);
  _Unwind_Resume(a1);
}

void sub_24BD50F40()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD50F9C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD50FF8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD5105C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0x7B7C477960735F12;
  v9 = 0;
  v8 = 410478435;
  v3 = sub_24BD510F4(&v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD510F4(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 12; ++i)
  {
    a1[i] ^= v3;
  }

  a1[12] = 0;
  return result;
}

BOOL GESSAlgQuadricErrorMetricsSimplify(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v26 = 0;
    v28 = 1065353216;
    fixed = objc_msgSend_fixBoundary(v4, v11, v12, v13);
    objc_msgSend_strength(v4, v14, v15, v16);
    v25 = v17;
    v21 = objc_msgSend_meshImpl(v3, v18, v19, v20);
    memset(v31, 0, sizeof(v31));
    memset(v30, 0, sizeof(v30));
    memset(v29, 0, sizeof(v29));
    v22 = sub_24BE440D8(v21, &v25, v29);
    sub_24BC9F10C(v31);
    sub_24BC9F08C(v30);
    sub_24BC9F00C(v29);
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_24BD51304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BC9ED38(va);

  _Unwind_Resume(a1);
}

uint64_t sub_24BD513C8(void *a1, uint64_t *a2)
{
  v3 = a1;
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_length(v3, v4, v5, v6);
    sub_24BC97D30(a2, v8 / 0xC);
    v9 = v7;
    v13 = objc_msgSend_mutableBytes(v9, v10, v11, v12);
    if (v8 >= 0xC)
    {
      v14 = 0;
      v15 = *a2;
      do
      {
        for (i = 0; i != 12; i += 4)
        {
          *(v15 + i) = *(v13 + i);
        }

        ++v14;
        v13 += 12;
        v15 += 16;
      }

      while (v14 != v8 / 0xC);
    }
  }

  return 1;
}

id sub_24BD51488(uint64_t *a1)
{
  v1 = a1[1] - *a1;
  if (v1)
  {
    v3 = v1 >> 4;
    v4 = objc_alloc(MEMORY[0x277CBEB28]);
    v7 = objc_msgSend_initWithLength_(v4, v5, 12 * v3, v6);
    v8 = v7;
    v12 = objc_msgSend_mutableBytes(v8, v9, v10, v11);
    v13 = 0;
    v14 = *a1;
    if (v3 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v3;
    }

    do
    {
      for (i = 0; i != 12; i += 4)
      {
        *(v12 + i) = *(v14 + i);
      }

      ++v13;
      v12 += 12;
      v14 += 16;
    }

    while (v13 != v15);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t GESSAlgVertexClusterSimplify(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v22[1] = 0;
    objc_msgSend_voxelSize(v4, v11, v12, v13);
    v22[0] = v14;
    v18 = objc_msgSend_meshImpl(v3, v15, v16, v17);
    v20 = sub_24BD4659C(v18, v22, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

BOOL GESSAlgVertexClusterDownsample(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a7;
  if (objc_msgSend_length(v13, v17, v18, v19))
  {
    v28[1] = 0;
    objc_msgSend_voxelSize(v16, v20, v21, v22);
    v28[0] = v23;
    sub_24BD51F00(v27, 3uLL);
    sub_24BD51F00(v26, 3uLL);
    sub_24BD513C8(v13, v27[0]);
    sub_24BD513C8(v14, v27[0] + 3);
    sub_24BD513C8(v15, v27[0] + 6);
    v24 = sub_24BD469C0(v27, v26, v28);
    *a4 = sub_24BD51488(v26[0]);
    *a5 = sub_24BD51488(v26[0] + 3);
    *a6 = sub_24BD51488(v26[0] + 6);
    v29 = v26;
    sub_24BC8EE84(&v29);
    v26[0] = v27;
    sub_24BC8EE84(v26);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void sub_24BD51998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  sub_24BC8EE84(&a9);

  _Unwind_Resume(a1);
}

uint64_t GESSAlgModelSimplify(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ((objc_msgSend_valid(v5, v8, v9, v10) & 1) != 0 && objc_msgSend_meshType(v5, v11, v12, v13) == 1)
  {
    v17 = objc_msgSend_materialImpl(v5, v14, v15, v16);
    objc_msgSend_triangleCount(v7, v18, v19, v20);
    objc_msgSend_textureResolution(v7, v21, v22, v23);
    v27 = objc_msgSend_textureTransferOptions(v7, v24, v25, v26);
    v31 = objc_msgSend_inputTangentialSpaceType(v27, v28, v29, v30);
    sub_24BE74A64(v31);

    v35 = objc_msgSend_textureTransferOptions(v7, v32, v33, v34);
    v39 = objc_msgSend_outputTangentialSpaceType(v35, v36, v37, v38);
    sub_24BE74A64(v39);

    objc_msgSend_meshImpl(v5, v40, v41, v42);
    if (v17)
    {
      objc_msgSend_materialImpl(v5, v43, v44, v45);
    }

    sub_24BD51FA4();
  }

  return 0;
}

void sub_24BD51E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  if (a17)
  {
    sub_24BC9EC78(a17);
  }

  if (a19)
  {
    sub_24BC9EC78(a19);
  }

  sub_24BD51EAC(&a20);

  _Unwind_Resume(a1);
}

uint64_t sub_24BD51EAC(uint64_t a1)
{
  sub_24BC900B8(a1 + 48, *(a1 + 56));
  v3 = (a1 + 24);
  sub_24BCCB404(&v3);
  v3 = a1;
  sub_24BCCB4E0(&v3);
  return a1;
}

void *sub_24BD51F00(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

void sub_24BD52000(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95D10;
  sub_24BCD5258((a1 + 3));
}

void sub_24BD5207C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95D10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD520F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MTLCreateSystemDefaultDevice();
  v4 = *a1;
  *a1 = v3;

  v8 = objc_msgSend_newCommandQueue(*a1, v5, v6, v7);
  v9 = *(a1 + 8);
  *(a1 + 8) = v8;

  objc_autoreleasePoolPop(v2);
  return 1;
}

uint64_t sub_24BD52150(void **a1, uint64_t *a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  v233 = *MEMORY[0x277D85DE8];
  v196 = *a2;
  context = objc_autoreleasePoolPush();
  v13 = *a1;
  v215 = 0;
  v188 = sub_24BD4C428(v13, &v215, a6, a8);
  v189 = v215;
  if (v189)
  {
    if (a5)
    {
      sub_24BCA2D38(v232, a7);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(a4, v232, 5, &__p);
      if (SHIBYTE(v214) < 0)
      {
        operator delete(__p);
      }

      v16 = v232;
    }

    else
    {
      LODWORD(p_p) = 0;
      v206 = std::system_category();
      sub_24BCA2D38(v231, a7);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&p_p, v231, 5, &__p);
      if (SHIBYTE(v214) < 0)
      {
        operator delete(__p);
      }

      v16 = v231;
    }

    sub_24BC9F08C(v16);
    v194 = 0;
    v195 = 0;
LABEL_33:
    v184 = 0;
    v33 = 0;
    goto LABEL_34;
  }

  v17 = objc_msgSend_newFunctionWithName_(v188, v14, @"fwt", v15);
  v18 = *a1;
  v211 = 0;
  v195 = objc_msgSend_newComputePipelineStateWithFunction_error_(v18, v19, v17, &v211);
  v189 = v211;
  if (v189)
  {
    if (a5)
    {
      sub_24BCA2D38(v230, a7);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(a4, v230, 5, &__p);
      if (SHIBYTE(v214) < 0)
      {
        operator delete(__p);
      }

      v20 = v230;
    }

    else
    {
      LODWORD(p_p) = 0;
      v206 = std::system_category();
      sub_24BCA2D38(v229, a7);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&p_p, v229, 5, &__p);
      if (SHIBYTE(v214) < 0)
      {
        operator delete(__p);
      }

      v20 = v229;
    }

    sub_24BC9F08C(v20);

    v194 = 0;
    goto LABEL_33;
  }

  v23 = objc_msgSend_newFunctionWithName_(v188, v21, @"bcwt", v22);
  v24 = *a1;
  v210 = 0;
  v194 = objc_msgSend_newComputePipelineStateWithFunction_error_(v24, v25, v23, &v210);
  v189 = v210;
  if (v189)
  {
    if (a5)
    {
      sub_24BCA2D38(v228, a7);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(a4, v228, 5, &__p);
      if (SHIBYTE(v214) < 0)
      {
        operator delete(__p);
      }

      v26 = v228;
    }

    else
    {
      LODWORD(p_p) = 0;
      v206 = std::system_category();
      sub_24BCA2D38(v227, a7);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&p_p, v227, 5, &__p);
      if (SHIBYTE(v214) < 0)
      {
        operator delete(__p);
      }

      v26 = v227;
    }

    sub_24BC9F08C(v26);

    goto LABEL_33;
  }

  v29 = objc_msgSend_newFunctionWithName_(v188, v27, @"grre", v28);
  v30 = *a1;
  v209 = 0;
  v184 = objc_msgSend_newComputePipelineStateWithFunction_error_(v30, v31, v29, &v209);
  v32 = v209;
  v33 = v32 == 0;
  v189 = v32;
  if (v32)
  {
    if (a5)
    {
      sub_24BCA2D38(v226, a7);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(a4, v226, 5, &__p);
      if (SHIBYTE(v214) < 0)
      {
        operator delete(__p);
      }

      v34 = v226;
    }

    else
    {
      LODWORD(p_p) = 0;
      v206 = std::system_category();
      sub_24BCA2D38(v225, a7);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&p_p, v225, 5, &__p);
      if (SHIBYTE(v214) < 0)
      {
        operator delete(__p);
      }

      v34 = v225;
    }

    sub_24BC9F08C(v34);
  }

LABEL_34:
  v35 = v196;
  v36 = HIDWORD(v196);
  if (HIDWORD(v196) >= v196)
  {
    v37 = v196;
  }

  else
  {
    v37 = HIDWORD(v196);
  }

  v39 = log2(v37);
  v208 = v196;
  __p = 0;
  v213 = 0;
  v214 = 0;
  p_p = 0;
  v206 = 0;
  v207 = 0;
  if (!v33)
  {
LABEL_93:
    v159 = 0;
    v160 = 0;
    goto LABEL_117;
  }

  v40 = objc_msgSend_newBufferWithLength_options_(*a1, v38, (4 * *a2 * *(a2 + 1)), 0);
  if (!v40)
  {
    if (a5)
    {
      sub_24BCA2D38(v224, a7);
      sub_24BC836D4(&v202, &unk_24C0435AF);
      sub_24BD6B844(a4, v224, 2, &v202);
      if (SHIBYTE(v204) < 0)
      {
        operator delete(v202);
      }

      v157 = v224;
    }

    else
    {
      LODWORD(v199) = 0;
      v200 = std::system_category();
      sub_24BCA2D38(v223, a7);
      sub_24BC836D4(&v202, &unk_24C0435AF);
      sub_24BD6B844(&v199, v223, 2, &v202);
      if (SHIBYTE(v204) < 0)
      {
        operator delete(v202);
      }

      v157 = v223;
    }

    sub_24BC9F08C(v157);
    goto LABEL_93;
  }

  v190 = v40;
  v41 = v40;
  v45 = objc_msgSend_contents(v190, v42, v43, v44);
  v181 = (v39 + -1.0);
  if (HIDWORD(v196))
  {
    v50 = 0;
    v51 = 0;
    v52 = 2;
    do
    {
      if (v196)
      {
        v53 = 0;
        v54 = v52;
        v55 = v50;
        do
        {
          if (*(*(a3 + 16) + ((v53 + v51 * *a3) * *(a3 + 8))) == 1)
          {
            *(v45 + v55) = (*(a2[2] + 4 * (v54 - 2)) * 255.0);
            *(v45 + v55 + 1) = (*(a2[2] + 4 * (v54 - 1)) * 255.0);
            v46 = (*(a2[2] + 4 * v54) * 255.0);
            v47 = 255;
            v56 = v55;
          }

          else
          {
            v46 = 0;
            v47 = 0;
            v56 = 4 * (v51 * v196 + v53);
            *(v45 + v55) = 0;
            *(v45 + v55 + 1) = 0;
          }

          v48 = v45 + v56;
          *(v48 + 2) = v46;
          *(v48 + 3) = v47;
          ++v53;
          v55 += 4;
          v54 += 3;
        }

        while (v196 != v53);
      }

      ++v51;
      v50 += 4 * v196;
      v52 += 3 * v196;
    }

    while (v51 != HIDWORD(v196));
  }

  if (v181)
  {
    *&v49 = *a2;
    v197 = v49;
    v57 = (v39 + -1.0);
    do
    {
      *(&v58 + 1) = *(&v197 + 1);
      *&v58 = vshr_n_u32(*&v197, 1uLL);
      v197 = v58;
      v59 = objc_msgSend_newBufferWithLength_options_(*a1, v46, (4 * DWORD1(v58) * v58), 0);
      v216 = v59;
      if (!v59)
      {
        if (a5)
        {
          sub_24BCA2D38(v222, a7);
          sub_24BC836D4(&v202, &unk_24C0435AF);
          sub_24BD6B844(a4, v222, 2, &v202);
          if (SHIBYTE(v204) < 0)
          {
            operator delete(v202);
          }

          v158 = v222;
        }

        else
        {
          LODWORD(v199) = 0;
          v200 = std::system_category();
          sub_24BCA2D38(v221, a7);
          sub_24BC836D4(&v202, &unk_24C0435AF);
          sub_24BD6B844(&v199, v221, 2, &v202);
          if (SHIBYTE(v204) < 0)
          {
            operator delete(v202);
          }

          v158 = v221;
        }

        goto LABEL_115;
      }

      v202 = v197;
      v60 = v213;
      if (v213 >= v214)
      {
        v61 = sub_24BD548B8(&__p, &v216, &v202);
      }

      else
      {
        *v60 = v59;
        v60[1] = v202;
        v61 = (v60 + 2);
      }

      v213 = v61;

      --v57;
    }

    while (v57);
    v62 = (v39 + -1.0);
    while (1)
    {
      v63 = v197;
      v64 = DWORD1(v197);
      *&v63 = vadd_s32(*&v63, *&v63);
      v197 = v63;
      v65 = objc_msgSend_newBufferWithLength_options_(*a1, v46, (8 * v64 * v63), 0);
      v216 = v65;
      if (!v65)
      {
        break;
      }

      v202 = v197;
      v66 = v206;
      if (v206 >= v207)
      {
        v67 = sub_24BD548B8(&p_p, &v216, &v202);
      }

      else
      {
        v66->__vftable = v65;
        v66[1].__vftable = v202;
        v67 = &v66[2];
      }

      v206 = v67;

      if (!--v62)
      {
        goto LABEL_61;
      }
    }

    if (a5)
    {
      sub_24BCA2D38(v220, a7);
      sub_24BC836D4(&v202, &unk_24C0435AF);
      sub_24BD6B844(a4, v220, 2, &v202);
      if (SHIBYTE(v204) < 0)
      {
        operator delete(v202);
      }

      v158 = v220;
    }

    else
    {
      LODWORD(v199) = 0;
      v200 = std::system_category();
      sub_24BCA2D38(v219, a7);
      sub_24BC836D4(&v202, &unk_24C0435AF);
      sub_24BD6B844(&v199, v219, 2, &v202);
      if (SHIBYTE(v204) < 0)
      {
        operator delete(v202);
      }

      v158 = v219;
    }

LABEL_115:
    sub_24BC9F08C(v158);

    goto LABEL_116;
  }

LABEL_61:
  v198 = objc_msgSend_commandBuffer(a1[1], v46, v47, v48);
  if (v181)
  {
    v71 = 0;
    v72 = -1;
    do
    {
      v73 = __p;
      v74 = objc_msgSend_threadExecutionWidth(v195, v68, v69, v70);
      v78 = objc_msgSend_maxTotalThreadsPerThreadgroup(v195, v75, v76, v77);
      v191 = *&v73[v71 + 8];
      v82 = objc_msgSend_computeCommandEncoder(v198, v79, v80, v81);
      v84 = v82;
      v85 = v190;
      if (v71)
      {
        v85 = *(__p + v71 - 16);
      }

      objc_msgSend_setBuffer_offset_atIndex_(v82, v83, v85, 0, 0);
      if (v71)
      {
        objc_msgSend_setBytes_length_atIndex_(v84, v86, __p + 16 * v72 + 8, 8, 1);
      }

      else
      {
        objc_msgSend_setBytes_length_atIndex_(v84, v86, &v208, 8, 1);
      }

      objc_msgSend_setBytes_length_atIndex_(v84, v87, __p + v71 + 8, 8, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v84, v88, *(__p + v71), 0, 3);
      objc_msgSend_setComputePipelineState_(v84, v89, v195, v90);
      v202 = ((v74 + v191 - 1) / v74);
      v203 = (v78 / v74 + HIDWORD(v191) - 1) / (v78 / v74);
      v204 = 1;
      v199 = v74;
      v200 = v78 / v74;
      v201 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v84, v91, &v202, &v199);
      objc_msgSend_endEncoding(v84, v92, v93, v94);

      ++v72;
      v71 += 16;
    }

    while (16 * (v39 + -1.0) != v71);
    v95 = 0;
    v96 = (v181 - 1);
    v97 = (v181 - 2);
    v185 = v96;
    v179 = 16 * v96;
    v180 = 16 * v97;
    v177 = v96 - 1;
    v178 = 2 * (v96 - 1);
    do
    {
      v98 = p_p;
      v99 = objc_msgSend_threadExecutionWidth(v194, v68, v69, v70, v177);
      v103 = objc_msgSend_maxTotalThreadsPerThreadgroup(v194, v100, v101, v102);
      v192 = v98[v95 + 1];
      v107 = objc_msgSend_computeCommandEncoder(v198, v104, v105, v106);
      v109 = v107;
      if (v95 * 8)
      {
        if (2 * (v181 - 1) == v95)
        {
          objc_msgSend_setBuffer_offset_atIndex_(v107, v108, v190, 0, 0);
          objc_msgSend_setBuffer_offset_atIndex_(v109, v110, p_p[v178], 0, 1);
          objc_msgSend_setBytes_length_atIndex_(v109, v111, &v208, 8, 2);
          objc_msgSend_setBytes_length_atIndex_(v109, v112, &p_p[2 * v177 + 1], 8, 3);
          v114 = &p_p[2 * v185];
        }

        else
        {
          objc_msgSend_setBuffer_offset_atIndex_(v107, v108, *(__p + 2 * v97), 0, 0);
          objc_msgSend_setBuffer_offset_atIndex_(v109, v118, p_p[v95 - 2], 0, 1);
          objc_msgSend_setBytes_length_atIndex_(v109, v119, __p + 16 * v97 + 8, 8, 2);
          objc_msgSend_setBytes_length_atIndex_(v109, v120, &p_p[v95 - 1], 8, 3);
          v114 = &p_p[v95];
        }
      }

      else
      {
        objc_msgSend_setBuffer_offset_atIndex_(v107, v108, *(__p + v180), 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v109, v115, *(__p + v179), 0, 1);
        objc_msgSend_setBytes_length_atIndex_(v109, v116, __p + 16 * (v181 - 2) + 8, 8, 2);
        objc_msgSend_setBytes_length_atIndex_(v109, v117, __p + 16 * v185 + 8, 8, 3);
        v114 = p_p;
      }

      objc_msgSend_setBuffer_offset_atIndex_(v109, v113, *v114, 0, 4);
      objc_msgSend_setComputePipelineState_(v109, v121, v194, v122);
      v202 = ((v99 + v192 - 1) / v99);
      v203 = (v103 / v99 + HIDWORD(v192) - 1) / (v103 / v99);
      v204 = 1;
      v199 = v99;
      v200 = v103 / v99;
      v201 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v109, v123, &v202, &v199);
      objc_msgSend_endEncoding(v109, v124, v125, v126);

      LODWORD(v97) = v97 - 1;
      v95 += 2;
    }

    while (2 * v181 != v95);
  }

  v127 = objc_msgSend_threadExecutionWidth(v184, v68, v69, v70);
  v131 = objc_msgSend_maxTotalThreadsPerThreadgroup(v184, v128, v129, v130);
  v193 = v208;
  v135 = objc_msgSend_computeCommandEncoder(v198, v132, v133, v134);
  objc_msgSend_setBuffer_offset_atIndex_(v135, v136, p_p[2 * (v181 - 1)], 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v135, v137, v190, 0, 1);
  objc_msgSend_setBytes_length_atIndex_(v135, v138, &v208, 8, 2);
  objc_msgSend_setComputePipelineState_(v135, v139, v184, v140);
  v202 = ((v127 + v193 - 1) / v127);
  v203 = (v131 / v127 + HIDWORD(v193) - 1) / (v131 / v127);
  v204 = 1;
  v199 = v127;
  v200 = v131 / v127;
  v201 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v135, v141, &v202, &v199);
  objc_msgSend_endEncoding(v135, v142, v143, v144);

  sub_24BCDF83C();
  objc_msgSend_commit(v198, v145, v146, v147);
  objc_msgSend_waitUntilCompleted(v198, v148, v149, v150);
  v154 = objc_msgSend_error(v198, v151, v152, v153);
  LODWORD(v127) = sub_24BD4C518(v154);

  if (v127)
  {
    if (a5)
    {
      sub_24BCA2D38(v218, a7);
      sub_24BC836D4(&v202, &unk_24C0435AF);
      v155 = v198;
      sub_24BD6B844(a4, v218, 16, &v202);
      if (SHIBYTE(v204) < 0)
      {
        operator delete(v202);
      }

      v156 = v218;
    }

    else
    {
      LODWORD(v199) = 0;
      v200 = std::system_category();
      sub_24BCA2D38(v217, a7);
      v155 = v198;
      sub_24BC836D4(&v202, &unk_24C0435AF);
      sub_24BD6B844(&v199, v217, 16, &v202);
      if (SHIBYTE(v204) < 0)
      {
        operator delete(v202);
      }

      v156 = v217;
    }

    sub_24BC9F08C(v156);

LABEL_116:
    v159 = 0;
    v160 = v190;
    goto LABEL_117;
  }

  v161 = v190;
  v160 = v190;
  v165 = objc_msgSend_contents(v190, v162, v163, v164);
  if (v36)
  {
    v167 = 0;
    v168 = 0;
    v169 = a2[2];
    v170 = 2;
    do
    {
      if (v35)
      {
        v171 = 0;
        v172 = v170;
        do
        {
          LOBYTE(v166) = *(v165 + (v167 + v171));
          *&v173 = LODWORD(v166) / 255.0;
          *(v169 + 4 * (v172 - 2)) = *&v173;
          LOBYTE(v173) = *(v165 + (v167 + v171 + 1));
          *&v174 = v173 / 255.0;
          *(v169 + 4 * (v172 - 1)) = *&v174;
          LOBYTE(v174) = *(v165 + (v167 + v171 + 2));
          v166 = v174 / 255.0;
          *(v169 + 4 * v172) = v166;
          v171 += 4;
          v172 += 3;
        }

        while (4 * v35 != v171);
      }

      ++v168;
      v167 += 4 * v35;
      v170 += 3 * v35;
    }

    while (v168 != v36);
  }

  v159 = 1;
LABEL_117:

  v202 = &p_p;
  sub_24BD54838(&v202);
  p_p = &__p;
  sub_24BD54838(&p_p);

  objc_autoreleasePoolPop(context);
  v175 = *MEMORY[0x277D85DE8];
  return v159;
}

void sub_24BD53120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&STACK[0x240]);

  _Unwind_Resume(a1);
}

uint64_t sub_24BD5355C(uint64_t *a1, _DWORD *a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*a1 == *a2 && (v10 = *(a1 + 1), v10 == a2[1]) && (v11 = vceqz_s32(vand_s8(__PAIR64__(*a1, v10), vadd_s32(__PAIR64__(*a1, v10), -1))), (v11.i32[1] & v11.i32[0] & 1) != 0))
  {
    v17 = objc_autoreleasePoolPush();
    v21 = 0;
    v22 = 0;
    sub_24BD520F8(&v21);
    sub_24BCA2D38(v23, a7);
    v18 = sub_24BD52150(&v21, a1, a2, a4, a5, a6, v23, a8);
    sub_24BC9F08C(v23);

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_24BD5369C(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, ...)
{
  va_start(va, a4);
  sub_24BC9F08C(va);

  _Unwind_Resume(a1);
}

BOOL sub_24BD536D0(unsigned int *a1, uint32x2_t *a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v81 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v77 = 0;
  v78 = 0;
  sub_24BD520F8(&v77);
  sub_24BC94EB0(v76, a1[1] * *a1 * a1[2]);
  v67 = a5;
  v14 = *a1;
  if (vmul_lane_s32(v14, v14, 1).u32[0] * a1[2])
  {
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 2) + 4 * v15) * 255.0;
      if (v16 > 255.0)
      {
        v16 = 255.0;
      }

      if (v16 < 0.0)
      {
        v16 = 0.0;
      }

      *(v76[0] + v15++) = v16;
      v14 = *a1;
    }

    while (v15 < vmul_lane_s32(v14, v14, 1).u32[0] * a1[2]);
  }

  v70 = v14;
  v71 = *a2;
  v17 = v78;
  v18 = objc_msgSend_commandBuffer(v78, v11, v12, v13);
  v20 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x277CD7220], v19, 1, *a1, a1[1], a1[2]);
  v65 = a4;
  v66 = a6;
  v68 = v17;
  objc_msgSend_setStorageMode_(v20, v21, 0, v22);
  v23 = objc_alloc(MEMORY[0x277CD7218]);
  v24 = v77;
  v26 = objc_msgSend_initWithDevice_imageDescriptor_(v23, v25, v77, v20);
  objc_msgSend_writeBytes_dataLayout_imageIndex_(v26, v27, v76[0], 0, 0);
  v29 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x277CD7220], v28, 1, v71.u32[0], v71.u32[1], a1[2]);
  objc_msgSend_setStorageMode_(v29, v30, 0, v31);
  v32 = objc_alloc(MEMORY[0x277CD7218]);
  v34 = objc_msgSend_initWithDevice_imageDescriptor_(v32, v33, v24, v29);
  v35 = objc_alloc(MEMORY[0x277CD74E0]);
  v38 = objc_msgSend_initWithDevice_(v35, v36, v24, v37);
  v75[0] = vcvtq_f64_f32(vdiv_f32(vcvt_f32_u32(v71), vcvt_f32_u32(v70)));
  objc_msgSend_setScaleTransform_(v38, v39, v75, v40);
  objc_msgSend_encodeToCommandBuffer_sourceImage_destinationImage_(v38, v41, v18, v26, v34);
  objc_msgSend_synchronizeOnCommandBuffer_(v34, v42, v18, v43);
  sub_24BCDF83C();
  objc_msgSend_commit(v18, v44, v45, v46);
  objc_msgSend_waitUntilCompleted(v18, v47, v48, v49);
  v53 = objc_msgSend_error(v18, v50, v51, v52);
  v54 = sub_24BD4C518(v53);

  if (v54)
  {
    if (v67)
    {
      sub_24BCA2D38(v80, v66);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(v65, v80, 16, __p);
      if (v74 < 0)
      {
        operator delete(__p[0]);
      }

      v55 = v80;
    }

    else
    {
      LODWORD(v72[0]) = 0;
      v72[1] = std::system_category();
      sub_24BCA2D38(v79, v66);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(v72, v79, 16, __p);
      if (v74 < 0)
      {
        operator delete(__p[0]);
      }

      v55 = v79;
    }

    sub_24BC9F08C(v55);
  }

  v56 = (a2->i32[1] * a2->i32[0] * a2[1].i32[0]);
  LOBYTE(v72[0]) = 0;
  sub_24BD54AD8(__p, v56);
  objc_msgSend_readBytes_dataLayout_imageIndex_(v34, v57, __p[0], 0, 0);
  v58 = (a2->i32[1] * a2->i32[0] * a2[1].i32[0]);
  v59 = __p[0];
  if (v58)
  {
    v60 = a2[2];
    v61 = __p[0];
    do
    {
      v62 = *v61++;
      *v60++ = v62 / 255.0;
      --v58;
    }

    while (v58);
  }

  else if (!__p[0])
  {
    goto LABEL_23;
  }

  __p[1] = v59;
  operator delete(v59);
LABEL_23:

  if (v76[0])
  {
    v76[1] = v76[0];
    operator delete(v76[0]);
  }

  objc_autoreleasePoolPop(context);
  v63 = *MEMORY[0x277D85DE8];
  return !v54;
}

void sub_24BD53AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(v40 - 160);

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BD53BB4(void **a1, uint64_t *a2, void *a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v166 = *MEMORY[0x277D85DE8];
  v137 = *a2;
  context = objc_autoreleasePoolPush();
  v13 = *a1;
  v155 = 0;
  v145 = sub_24BD4C428(v13, &v155, a5, a7);
  v14 = v155;
  if (v14)
  {
    v17 = v14;
    if (a4)
    {
      sub_24BCA2D38(v165, a6);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(a3, v165, 5, &__p);
      if (SHIBYTE(v154) < 0)
      {
        operator delete(__p);
      }

      v18 = v165;
    }

    else
    {
      LODWORD(v146) = 0;
      v147 = std::system_category();
      sub_24BCA2D38(v164, a6);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&v146, v164, 5, &__p);
      if (SHIBYTE(v154) < 0)
      {
        operator delete(__p);
      }

      v18 = v164;
    }

    sub_24BC9F08C(v18);
    v26 = 0;
    v143 = 0;
    v144 = 0;
    goto LABEL_15;
  }

  v19 = objc_msgSend_newFunctionWithName_(v145, v15, @"gausmoth", v16);
  v20 = *a1;
  v151 = 0;
  v144 = objc_msgSend_newComputePipelineStateWithFunction_error_(v20, v21, v19, &v151);
  v24 = v151;
  if (v24)
  {
    if (a4)
    {
      sub_24BCA2D38(v163, a6);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(a3, v163, 5, &__p);
      if (SHIBYTE(v154) < 0)
      {
        operator delete(__p);
      }

      v25 = v163;
    }

    else
    {
      LODWORD(v146) = 0;
      v147 = std::system_category();
      sub_24BCA2D38(v162, a6);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&v146, v162, 5, &__p);
      if (SHIBYTE(v154) < 0)
      {
        operator delete(__p);
      }

      v25 = v162;
    }

    sub_24BC9F08C(v25);
  }

  v29 = objc_msgSend_newFunctionWithName_(v145, v22, @"variva", v23);
  v30 = *a1;
  v150 = v24;
  v143 = objc_msgSend_newComputePipelineStateWithFunction_error_(v30, v31, v29, &v150);
  v32 = v150;

  if (!v32)
  {

    if (v24)
    {
      v26 = 0;
      v17 = 0;
LABEL_15:
      v27 = 0;
      v28 = 0;
      goto LABEL_31;
    }

    v37 = (3 * v137 * HIDWORD(v137));
    v28 = objc_msgSend_newBufferWithLength_options_(*a1, v34, 4 * v37, 0);
    v39 = objc_msgSend_newBufferWithLength_options_(*a1, v38, 4 * v37, 0);
    v27 = v39;
    if (v28 && v39)
    {
      v40 = v28;
      v44 = objc_msgSend_contents(v28, v41, v42, v43);
      if (v37)
      {
        v48 = a2[2];
        v49 = (3 * v137 * HIDWORD(v137));
        do
        {
          v50 = *v48++;
          *v44++ = v50;
          --v49;
        }

        while (v49);
      }

      v51 = objc_msgSend_commandBuffer(a1[1], v45, v46, v47);
      v149 = v137;
      v55 = objc_msgSend_threadExecutionWidth(v144, v52, v53, v54);
      v59 = objc_msgSend_maxTotalThreadsPerThreadgroup(v144, v56, v57, v58);
      v138 = v149;
      v63 = objc_msgSend_computeCommandEncoder(v51, v60, v61, v62);
      objc_msgSend_setBuffer_offset_atIndex_(v63, v64, v28, 0, 0);
      objc_msgSend_setBytes_length_atIndex_(v63, v65, &v149, 8, 1);
      objc_msgSend_setBytes_length_atIndex_(v63, v66, &v149, 8, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v63, v67, v27, 0, 3);
      objc_msgSend_setComputePipelineState_(v63, v68, v144, v69);
      __p = (v138 / v55);
      v153 = HIDWORD(v138) / (v59 / v55);
      v154 = 1;
      v146 = v55;
      v147 = v59 / v55;
      v148 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v63, v70, &__p, &v146);
      objc_msgSend_endEncoding(v63, v71, v72, v73);

      v77 = objc_msgSend_threadExecutionWidth(v143, v74, v75, v76);
      v139 = objc_msgSend_maxTotalThreadsPerThreadgroup(v143, v78, v79, v80);
      v136 = v149;
      v84 = objc_msgSend_computeCommandEncoder(v51, v81, v82, v83);
      objc_msgSend_setBuffer_offset_atIndex_(v84, v85, v27, 0, 0);
      objc_msgSend_setBytes_length_atIndex_(v84, v86, &v149, 8, 1);
      objc_msgSend_setBytes_length_atIndex_(v84, v87, &v149, 8, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v84, v88, v28, 0, 3);
      objc_msgSend_setComputePipelineState_(v84, v89, v143, v90);
      __p = (v136 / v77);
      v153 = HIDWORD(v136) / (v139 / v77);
      v154 = 1;
      v146 = v77;
      v147 = v139 / v77;
      v148 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v84, v91, &__p, &v146);
      objc_msgSend_endEncoding(v84, v92, v93, v94);

      v98 = objc_msgSend_threadExecutionWidth(v144, v95, v96, v97);
      v102 = objc_msgSend_maxTotalThreadsPerThreadgroup(v144, v99, v100, v101);
      v140 = v149;
      v106 = objc_msgSend_computeCommandEncoder(v51, v103, v104, v105);
      objc_msgSend_setBuffer_offset_atIndex_(v106, v107, v28, 0, 0);
      objc_msgSend_setBytes_length_atIndex_(v106, v108, &v149, 8, 1);
      objc_msgSend_setBytes_length_atIndex_(v106, v109, &v149, 8, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v106, v110, v27, 0, 3);
      objc_msgSend_setComputePipelineState_(v106, v111, v144, v112);
      __p = (v140 / v98);
      v153 = HIDWORD(v140) / (v102 / v98);
      v154 = 1;
      v146 = v98;
      v147 = v102 / v98;
      v148 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v106, v113, &__p, &v146);
      objc_msgSend_endEncoding(v106, v114, v115, v116);

      sub_24BCDF83C();
      objc_msgSend_commit(v51, v117, v118, v119);
      objc_msgSend_waitUntilCompleted(v51, v120, v121, v122);
      v126 = objc_msgSend_error(v51, v123, v124, v125);
      LODWORD(v98) = sub_24BD4C518(v126);

      if (!v98)
      {

        v129 = v27;
        v133 = objc_msgSend_contents(v27, v130, v131, v132);
        if (!v37)
        {
          v17 = 0;
          v26 = 1;
          goto LABEL_31;
        }

        v134 = a2[2];
        v26 = 1;
        do
        {
          v135 = *v133++;
          *v134++ = v135;
          --v37;
        }

        while (v37);
        goto LABEL_59;
      }

      if (a4)
      {
        sub_24BCA2D38(v157, a6);
        sub_24BC836D4(&__p, &unk_24C0435AF);
        sub_24BD6B844(a3, v157, 16, &__p);
        if (SHIBYTE(v154) < 0)
        {
          operator delete(__p);
        }

        v127 = v157;
      }

      else
      {
        LODWORD(v146) = 0;
        v147 = std::system_category();
        sub_24BCA2D38(v156, a6);
        sub_24BC836D4(&__p, &unk_24C0435AF);
        sub_24BD6B844(&v146, v156, 16, &__p);
        if (SHIBYTE(v154) < 0)
        {
          operator delete(__p);
        }

        v127 = v156;
      }

      sub_24BC9F08C(v127);
    }

    else
    {
      if (a4)
      {
        sub_24BCA2D38(v159, a6);
        sub_24BC836D4(&__p, &unk_24C0435AF);
        sub_24BD6B844(a3, v159, 2, &__p);
        if (SHIBYTE(v154) < 0)
        {
          operator delete(__p);
        }

        v128 = v159;
      }

      else
      {
        LODWORD(v146) = 0;
        v147 = std::system_category();
        sub_24BCA2D38(v158, a6);
        sub_24BC836D4(&__p, &unk_24C0435AF);
        sub_24BD6B844(&v146, v158, 2, &__p);
        if (SHIBYTE(v154) < 0)
        {
          operator delete(__p);
        }

        v128 = v158;
      }

      sub_24BC9F08C(v128);
    }

    v26 = 0;
LABEL_59:
    v17 = 0;
    goto LABEL_31;
  }

  if (a4)
  {
    sub_24BCA2D38(v161, a6);
    sub_24BC836D4(&__p, &unk_24C0435AF);
    sub_24BD6B844(a3, v161, 5, &__p);
    if (SHIBYTE(v154) < 0)
    {
      operator delete(__p);
    }

    v33 = v161;
  }

  else
  {
    LODWORD(v146) = 0;
    v147 = std::system_category();
    sub_24BCA2D38(v160, a6);
    sub_24BC836D4(&__p, &unk_24C0435AF);
    sub_24BD6B844(&v146, v160, 5, &__p);
    if (SHIBYTE(v154) < 0)
    {
      operator delete(__p);
    }

    v33 = v160;
  }

  sub_24BC9F08C(v33);

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v17 = v32;
LABEL_31:

  objc_autoreleasePoolPop(context);
  v35 = *MEMORY[0x277D85DE8];
  return v26;
}

void sub_24BD5445C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a32);

  _Unwind_Resume(a1);
}

uint64_t sub_24BD546F4(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*a1 & (*a1 - 1)) != 0 || (*(a1 + 4) & (*(a1 + 4) - 1)) != 0)
  {
    v14 = 0;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v17 = 0;
    v18 = 0;
    sub_24BD520F8(&v17);
    sub_24BCA2D38(v19, a6);
    v14 = sub_24BD53BB4(&v17, a1, a3, a4, a5, v19, a7);
    sub_24BC9F08C(v19);

    objc_autoreleasePoolPop(v13);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_24BD54804(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, ...)
{
  va_start(va, a4);
  sub_24BC9F08C(va);

  _Unwind_Resume(a1);
}

void sub_24BD54838(void ***a1)
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
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_24BD548B8(uint64_t a1, id *a2, void **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 3 > v4)
  {
    v4 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v20 = a1;
  if (v9)
  {
    sub_24BD549D0(a1, v9);
  }

  v10 = (16 * v3);
  v17 = 0;
  v18 = v10;
  *(&v19 + 1) = 0;
  *v10 = *a2;
  v10[1] = *a3;
  *&v19 = v10 + 2;
  v11 = *(a1 + 8);
  v12 = (v10 + *a1 - v11);
  sub_24BD54A18(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_24BD54A84(&v17);
  return v16;
}

void sub_24BD549BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BD54A84(va);
  _Unwind_Resume(a1);
}

void sub_24BD549D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BD54A18(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      a4[1] = v6[1];
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 2;
    }
  }
}

uint64_t sub_24BD54A84(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_24BD54AD8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94F24(result, a2);
  }

  return result;
}

void sub_24BD54B3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GESSAlgIsometricParameterize(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(GESSAlgIsometricParameterizeExtended);
  objc_msgSend_setOptions_(v5, v6, v4, v7);
  v10 = objc_msgSend_run_(v5, v8, v3, v9);

  return v10;
}

void sub_24BD55584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(*v41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BD5561C(uint64_t a1)
{
  sub_24BD55A9C(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

uint64_t GESSAlgRepackUV(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_valid(v3, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    if (objc_msgSend_packingMethod(v4, v15, v16, v17) == 1)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    v33 = objc_msgSend_textureResolution(v4, v18, v19, v20);
    v32 = objc_msgSend_numOfTextures(v4, v22, v23, v24);
    objc_msgSend_gutter(v4, v25, v26, v27);
    v31 = v28;
    v29 = sub_24BE4DC88(v14, v21, &v33, &v32, &v31);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

uint64_t sub_24BD55A04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BD55A9C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BD55B8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95D48;
  a2[1] = v2;
  return result;
}

__n128 sub_24BD55BB8(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8) + 48;
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  v5 = *(a2 + 48);
  result = *(a2 + 64);
  v6 = *(a2 + 32);
  *(v2 + 76) = *(a2 + 76);
  *(v2 + 48) = v5;
  *(v2 + 64) = result;
  *(v2 + 32) = v6;
  return result;
}

void *sub_24BD55BF0(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD55E48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

std::string *sub_24BD55E54@<X0>(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v7 = 0;
    while (memchr(" \n\r\t\f\v", v4->__r_.__value_.__s.__data_[v7], 6uLL))
    {
      if (size == ++v7)
      {
        goto LABEL_14;
      }
    }

    if (v7 != -1)
    {
      return std::string::basic_string(a2, a1, v7, 0xFFFFFFFFFFFFFFFFLL, &v9);
    }
  }

LABEL_14:

  return sub_24BC836D4(a2, &unk_24C0435AF);
}

std::string *sub_24BD55F30@<X0>(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = ~size;
  v7 = v5 + size - 1;
  while (v6 != -1)
  {
    v8 = *v7--;
    ++v6;
    if (!memchr(" \n\r\t\f\v", v8, 6uLL))
    {
      if (v6)
      {
        return std::string::basic_string(a2, a1, 0, -v6, &v10);
      }

      break;
    }
  }

  return sub_24BC836D4(a2, &unk_24C0435AF);
}

void sub_24BD56008(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  sub_24BD55E54(a1, &__p);
  sub_24BD55F30(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24BD56054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BD56070@<X0>(int a1@<W0>, _BYTE *a2@<X8>, double a3@<D0>, uint8x8_t a4@<D1>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0x81B12191509135ALL;
      v10 = 0;
      v9 = 2318;
      v5 = sub_24BD1F27C(&v8);
    }

    else
    {
      if (a1 == 2)
      {
        WORD2(v8) = 113;
        LODWORD(v8) = 1785429822;
      }

      else
      {
        WORD2(v8) = 30;
        LODWORD(v8) = 84152401;
      }

      v5 = sub_24BD0A284(&v8, a3, a4);
    }
  }

  else
  {
    WORD2(v8) = 70;
    LODWORD(v8) = 1095980050;
    v5 = sub_24BD0A284(&v8, a3, a4);
  }

  result = sub_24BC836D4(a2, v5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD5616C@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a1 == 2)
    {
      v6 = 0x4161B03160F57;
      v3 = sub_24BCBBD58(&v6);
    }

    else
    {
      if (a1 == 1)
      {
        v6 = 0x7963787E6F7E2ALL;
      }

      else
      {
        v6 = 0x544E5553425307;
      }

      v3 = sub_24BCBBD58(&v6);
    }
  }

  else
  {
    v6 = 0x181012031D1A1153;
    v7 = 0;
    v3 = sub_24BD09B90(&v6);
  }

  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD56260@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a1 == 1)
    {
      *&v6 = 0x627E7865757C7F2ALL;
      BYTE14(v6) = 0;
      WORD6(v6) = 26219;
      DWORD2(v6) = 1684368741;
      v3 = sub_24BCBCD64(&v6);
    }

    else
    {
      if (a1 == 2)
      {
        v6 = xmmword_24BFDC5A0;
      }

      else
      {
        v6 = xmmword_24BFDC5B0;
      }

      v3 = sub_24BCBBD2C(&v6);
    }
  }

  else
  {
    *&v6 = 0xE0C020902041447;
    WORD4(v6) = 19;
    v3 = sub_24BD56360(&v6);
  }

  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

int8x8_t *sub_24BD56360(int8x8_t *a1)
{
  v1 = a1;
  v2 = vld1_dup_s8(v1);
  v1 = (v1 + 1);
  *v1 = veor_s8(v2, *v1);
  a1[1].i8[1] = 0;
  return v1;
}

_BYTE *sub_24BD56380@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (a1 == 2)
  {
    v3 = sub_24BD1F27C(v6);
  }

  else if (a1 == 1)
  {
    v6[0] = 0x796D7467677E682BLL;
    LODWORD(v6[1]) = 8349028;
    v3 = sub_24BD0E030(v6);
  }

  else
  {
    if (a1)
    {
      v6[0] = 0x41405142425B4D0ELL;
      strcpy(&v6[1], "@K");
    }

    else
    {
      v6[0] = 0x14150417170E185BLL;
      BYTE2(v6[1]) = 0;
      LOWORD(v6[1]) = 7701;
    }

    v3 = sub_24BD1F27C(v6);
  }

  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BD564A0(const std::string *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  strcpy(&v24, "l-98#");
  v3 = sub_24BD0A284(&v24, v1, v2);
  v4 = strlen(v3);
  v5 = v4;
  v6 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v4 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v4 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, v3, v5))
  {
LABEL_8:
    v24 = 0x46555C575B475D14;
    strcpy(v25, "@G");
    v8 = sub_24BD1F27C(&v24);
    v9 = strlen(v8);
    v12 = v9;
    v13 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v9 != __s1.__r_.__value_.__l.__size_)
      {
        goto LABEL_15;
      }

      if (v9 == -1)
      {
        sub_24BD2237C();
      }

      v14 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v9 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_15;
      }

      v14 = &__s1;
    }

    if (!memcmp(v14, v8, v12))
    {
      v20 = 1;
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    strcpy(&v24, "e#$61");
    v15 = sub_24BD0A284(&v24, v10, v11);
    v16 = strlen(v15);
    v17 = v16;
    v18 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v16 == __s1.__r_.__value_.__l.__size_)
      {
        if (v16 == -1)
        {
          sub_24BD2237C();
        }

        v19 = __s1.__r_.__value_.__r.__words[0];
LABEL_21:
        v20 = 2 * (memcmp(v19, v15, v17) != 0);
        if (v18 < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    else if (v16 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      v19 = &__s1;
      goto LABEL_21;
    }

    v20 = 2;
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v20 = 2;
  if (v6 < 0)
  {
LABEL_26:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_24BD56684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD566C8(const std::string *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  v20 = 0x11B0006170652;
  v1 = sub_24BCBBD58(&v20);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (!memcmp(p_s1, v1, v3))
  {
    v16 = 1;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_8:
  v20 = 0x474F4D5C42454E0CLL;
  v21 = 0;
  v6 = sub_24BD09B90(&v20);
  v7 = strlen(v6);
  v8 = v7;
  v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v7 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_15;
    }

    if (v7 == -1)
    {
      sub_24BD2237C();
    }

    v10 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_15;
    }

    v10 = &__s1;
  }

  if (!memcmp(v10, v6, v8))
  {
    v16 = 0;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_15:
  v20 = 0x697B766E7B623ALL;
  v11 = sub_24BCBBD58(&v20);
  v12 = strlen(v11);
  v13 = v12;
  v14 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v12 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      v15 = &__s1;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (v12 != __s1.__r_.__value_.__l.__size_)
  {
LABEL_26:
    v16 = 1;
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    operator delete(__s1.__r_.__value_.__l.__data_);
    goto LABEL_30;
  }

  if (v12 == -1)
  {
    sub_24BD2237C();
  }

  v15 = __s1.__r_.__value_.__r.__words[0];
LABEL_21:
  if (!memcmp(v15, v11, v13))
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v14 < 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24BD568A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD568E8(const std::string *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  v20 = xmmword_24BFDC5C0;
  v1 = sub_24BCBBD2C(&v20);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, v1, v3))
  {
LABEL_8:
    *&v20 = 0x814120F1F161540;
    BYTE14(v20) = 0;
    WORD6(v20) = 3073;
    DWORD2(v20) = 235865871;
    v6 = sub_24BCBCD64(&v20);
    v7 = strlen(v6);
    v8 = v7;
    v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v7 != __s1.__r_.__value_.__l.__size_)
      {
        goto LABEL_15;
      }

      if (v7 == -1)
      {
        sub_24BD2237C();
      }

      v10 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_15;
      }

      v10 = &__s1;
    }

    if (!memcmp(v10, v6, v8))
    {
      v16 = 1;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    strcpy(&v20, "g4$),.3");
    v11 = sub_24BD56360(&v20);
    v12 = strlen(v11);
    v13 = v12;
    v14 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v12 == __s1.__r_.__value_.__l.__size_)
      {
        if (v12 == -1)
        {
          sub_24BD2237C();
        }

        v15 = __s1.__r_.__value_.__r.__words[0];
LABEL_21:
        v16 = 2 * (memcmp(v15, v11, v13) != 0);
        if (v14 < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    else if (v12 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      v15 = &__s1;
      goto LABEL_21;
    }

    v16 = 2;
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v16 = 2;
  if (v4 < 0)
  {
LABEL_26:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24BD56AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD56B1C(const std::string *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  strcpy(v20, "|?)00#2329");
  v1 = sub_24BD1F27C(v20);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, v1, v3))
  {
LABEL_8:
    v20[0] = 0x4F5B425151485E1DLL;
    strcpy(&v20[1], "RSI");
    v6 = sub_24BD0E030(v20);
    v7 = strlen(v6);
    v8 = v7;
    v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v7 != __s1.__r_.__value_.__l.__size_)
      {
        goto LABEL_15;
      }

      if (v7 == -1)
      {
        sub_24BD2237C();
      }

      v10 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_15;
      }

      v10 = &__s1;
    }

    if (!memcmp(v10, v6, v8))
    {
      v16 = 1;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    strcpy(v20, "y:,55&;8:2");
    v11 = sub_24BD1F27C(v20);
    v12 = strlen(v11);
    v13 = v12;
    v14 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v12 == __s1.__r_.__value_.__l.__size_)
      {
        if (v12 == -1)
        {
          sub_24BD2237C();
        }

        v15 = __s1.__r_.__value_.__r.__words[0];
LABEL_21:
        v16 = 2 * (memcmp(v15, v11, v13) == 0);
        if (v14 < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    else if (v12 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      v15 = &__s1;
      goto LABEL_21;
    }

    v16 = 0;
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v16 = 0;
  if (v4 < 0)
  {
LABEL_26:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24BD56D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD56D5C(uint64_t a1)
{
  sub_24BC836D4(__p, off_27F078F98[0]);
  v10 = 0;
  v11 = 0;
  v2 = sub_24BCB6470((a1 + 8), &v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2 == -1)
  {
    sub_24BCB3A30(a1);
  }

  sub_24BC836D4(__p, off_27F078F98[0]);
  v10 = 0;
  v11 = 0;
  v3 = sub_24BCB6470((a1 + 8), &v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = (*(a1 + 8) + 16 * v3);
  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v5);
  }

  return v6;
}

void sub_24BD56E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD56E80(unsigned int a1, unsigned int a2)
{
  if (a2)
  {
    LOBYTE(v2) = a1;
    if (a2 != 255)
    {
      v3 = floorf((255.0 / a2) * a1);
      if (v3 > 255.0)
      {
        v3 = 255.0;
      }

      v2 = v3;
      v4 = byte_24BFDC628[v2 | (a2 << 8)];
      if (v4 != a1)
      {
        if (v2 == 255 || v4 >= a1)
        {
          if (v2)
          {
            v6 = v4 > a1;
          }

          else
          {
            v6 = 0;
          }

          v7 = v6;
          LOBYTE(v2) = v2 - v7;
        }

        else
        {
          LOBYTE(v2) = v2 + 1;
        }
      }
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

float sub_24BD56F08(float a1)
{
  v2 = a1;
  if (v2 <= 0.0031308)
  {
    if (v2 >= -0.0031308)
    {
      return v2 * 12.92;
    }

    v3 = pow(-a1, 0.416666667);
    v4 = 0.055;
    v5 = -1.055;
  }

  else
  {
    v3 = pow(v2, 0.416666667);
    v4 = -0.055;
    v5 = 1.055;
  }

  return v4 + v3 * v5;
}

float sub_24BD56FA0(float a1)
{
  v1 = a1;
  if (fabs(v1) <= 0.04045)
  {
    return v1 / 12.92;
  }

  if (v1 > 0.04045)
  {
    return pow((v1 + 0.055) / 1.055, 2.4);
  }

  v4 = pow((0.055 - v1) / 1.055, 2.4);
  return -v4;
}

double sub_24BD57038(const __CFDictionary *a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberCGFloatType, &valuePtr);
    v6 = valuePtr;
  }

  else
  {
    v6 = 0.0;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

void sub_24BD570B4(const __CFDictionary *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v6 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CStringPtr = CFStringGetCStringPtr(Value, 0);
    v9 = strlen(CStringPtr);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_24BC8DF40();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v9;
    if (v9)
    {
      memmove(a3, CStringPtr, v9);
    }

    *(a3 + v10) = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  objc_autoreleasePoolPop(v6);
}

BOOL sub_24BD571A8(const __CFDictionary *a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  value = 0;
  v6 = CFDictionaryGetValueIfPresent(a1, a2, &value) && (v5 = CFGetTypeID(value), v5 == CFBooleanGetTypeID()) && CFBooleanGetValue(value) != 0;
  objc_autoreleasePoolPop(v4);
  return v6;
}

CFStringRef sub_24BD57238(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a1, *(a1 + 8));
  }

  else
  {
    *__dst = *a1;
    v13 = *(a1 + 16);
  }

  if (v13 >= 0)
  {
    v1 = (__dst + HIBYTE(v13));
  }

  else
  {
    v1 = (__dst[0] + __dst[1]);
  }

  if (v13 >= 0)
  {
    v2 = __dst;
  }

  else
  {
    v2 = __dst[0];
  }

  while (v2 != v1)
  {
    *v2 = __tolower(*v2);
    v2 = (v2 + 1);
  }

  std::operator+<char>();
  if (SHIBYTE(v13) < 0)
  {
    if (__dst[1] == 4 && *__dst[0] == 1735420462)
    {
      goto LABEL_31;
    }

    if (__dst[1] == 5 && *__dst[0] == 1701866030 && *(__dst[0] + 4) == 103)
    {
      goto LABEL_31;
    }

    if (__dst[1] != 4)
    {
      goto LABEL_36;
    }

    v5 = __dst[0];
    goto LABEL_33;
  }

  if (HIBYTE(v13) == 4)
  {
    if (LODWORD(__dst[0]) == 1735420462)
    {
LABEL_31:
      v6 = "public.jpeg";
LABEL_35:
      MEMORY[0x24C2541D0](__p, v6);
      goto LABEL_36;
    }

    v5 = __dst;
LABEL_33:
    if (*v5 != 1920492846)
    {
      goto LABEL_36;
    }

    v6 = "com.ilm.openexr-image";
    goto LABEL_35;
  }

  if (HIBYTE(v13) == 5 && LODWORD(__dst[0]) == 1701866030 && BYTE4(__dst[0]) == 103)
  {
    goto LABEL_31;
  }

LABEL_36:
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v7, 0x8000100u);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  return v8;
}

void sub_24BD57414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CGImageRef sub_24BD5744C(unsigned int *a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  v8 = v7 * v6;
  if (v6 == 1)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceRGB();
  }

  v11 = DeviceGray;
  v12 = a1[2];
  if (a2)
  {
    v13 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v10, *(a1 + 2), v8 * v5);
    v14 = CGDataProviderCreateWithCFData(v13);
  }

  else
  {
    v14 = CGDataProviderCreateWithData(0, *(a1 + 2), v8 * v5, 0);
  }

  if (v12 == 4)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  v16 = CGImageCreate(v7, v5, 8uLL, 8 * v6, v7 * v6, v11, v15, v14, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v14);
  objc_autoreleasePoolPop(v4);
  return v16;
}

uint64_t sub_24BD57570(CGImage *a1, _DWORD *a2, unsigned __int8 a3)
{
  v6 = objc_autoreleasePoolPush();
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  ByteOrderInfo = CGImageGetByteOrderInfo(a1);
  if ((BitsPerComponent != 8 || ByteOrderInfo) && (BitsPerComponent != 8 || ByteOrderInfo != kCGImageByteOrder32Little) && (BitsPerComponent != 16 || ByteOrderInfo != kCGImageByteOrder16Little))
  {
    v18 = BitsPerComponent == 16 && ByteOrderInfo == kCGImageByteOrder16Big;
    v19 = v18;
    v20 = ByteOrderInfo == kCGImageByteOrder32Big || ByteOrderInfo == kCGImageByteOrder32Little;
    v21 = v20 && BitsPerComponent == 32;
    if (!v21 && !v19)
    {
      goto LABEL_36;
    }
  }

  if (CGImageGetPixelFormatInfo(a1))
  {
    goto LABEL_36;
  }

  ColorSpace = CGImageGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  v11 = Model;
  v12 = BitsPerComponent == 8 && Model == kCGColorSpaceModelIndexed;
  v13 = v12;
  if (Model >= kCGColorSpaceModelCMYK && !v13)
  {
    goto LABEL_36;
  }

  v33 = a3;
  AlphaInfo = CGImageGetAlphaInfo(a1);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  if (AlphaInfo > kCGImageAlphaLast)
  {
    if (AlphaInfo != kCGImageAlphaFirst)
    {
      v17 = NumberOfComponents;
      if (AlphaInfo != kCGImageAlphaNoneSkipLast && AlphaInfo != kCGImageAlphaNoneSkipFirst)
      {
        goto LABEL_36;
      }

      if (BitsPerComponent == 8 && NumberOfComponents == 3 && BitsPerPixel == 32)
      {
        goto LABEL_106;
      }

      if (NumberOfComponents == 3 && BitsPerComponent == 16 && BitsPerPixel == 64)
      {
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    v17 = NumberOfComponents;
    if (BitsPerComponent != 8)
    {
LABEL_70:
      if (v17 == 3 && BitsPerComponent == 16 && BitsPerPixel == 64)
      {
        goto LABEL_87;
      }

      if (v17 == 3 && BitsPerComponent == 32 && BitsPerPixel == 128)
      {
LABEL_76:
        if ((BitmapInfo & 0xF00) != 0)
        {
          goto LABEL_87;
        }
      }

LABEL_77:
      if (v17 != 1 || BitsPerComponent != 32)
      {
        goto LABEL_36;
      }

LABEL_85:
      if (BitsPerPixel != 64)
      {
        goto LABEL_36;
      }

LABEL_86:
      if ((BitmapInfo & 0xF00) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_87;
    }

LABEL_68:
    if (v17 == 3 && BitsPerPixel == 32)
    {
      goto LABEL_106;
    }

    goto LABEL_70;
  }

  if (AlphaInfo)
  {
    v17 = NumberOfComponents;
    if (AlphaInfo == kCGImageAlphaPremultipliedLast)
    {
      if (BitsPerComponent == 8 && NumberOfComponents == 3 && BitsPerPixel == 32)
      {
        goto LABEL_106;
      }

      if (NumberOfComponents != 3 || BitsPerComponent != 16)
      {
        goto LABEL_36;
      }

      goto LABEL_85;
    }

    if (AlphaInfo != kCGImageAlphaLast)
    {
      goto LABEL_36;
    }

    if (BitsPerComponent != 8)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  v17 = NumberOfComponents;
  if (BitsPerComponent == 8 && NumberOfComponents == 1 && BitsPerPixel == 8)
  {
    goto LABEL_106;
  }

  if ((NumberOfComponents != 1 || BitsPerComponent != 16 || BitsPerPixel != 16) && (NumberOfComponents != 1 || BitsPerComponent != 32 || BitsPerPixel != 32 || (BitmapInfo & 0xF00) == 0))
  {
    if (BitsPerComponent == 8 && NumberOfComponents == 3 && BitsPerPixel == 24)
    {
      goto LABEL_106;
    }

    if (NumberOfComponents != 3 || BitsPerComponent != 16 || BitsPerPixel != 48)
    {
      if (NumberOfComponents != 3 || BitsPerComponent != 32 || BitsPerPixel != 96)
      {
        goto LABEL_36;
      }

      goto LABEL_86;
    }
  }

LABEL_87:
  v24 = BitsPerPixel == 48 || BitsPerPixel == 64;
  if (v17 == 3 && BitsPerComponent == 16 && v24 || (v17 == 1 ? (v25 = BitsPerComponent == 16) : (v25 = 0), v25 ? (v26 = BitsPerPixel == 16) : (v26 = 0), v26 ? (v27 = 1) : (v27 = v13), v27 == 1))
  {
LABEL_106:
    if (ColorSpace != CGColorSpaceCreateWithName(*MEMORY[0x277CBF490]) && ColorSpace != CGColorSpaceCreateWithName(*MEMORY[0x277CBF498]))
    {
      v28 = ColorSpace == CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
    }

    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    if (v11 == kCGColorSpaceModelIndexed)
    {
      CGColorSpaceGetColorTableCount(ColorSpace);
      operator new[]();
    }

    DataProvider = CGImageGetDataProvider(a1);
    v31 = CGDataProviderCopyData(DataProvider);
    CFDataGetBytePtr(v31);
    *a2 = Width;
    a2[1] = Height;
    if (((NumberOfComponents == 1) & v33) != 0)
    {
      v32 = 1;
    }

    else
    {
      v32 = 3;
    }

    a2[2] = v32;
    sub_24BCBBE1C(a2);
  }

LABEL_36:
  objc_autoreleasePoolPop(v6);
  return 0;
}

BOOL sub_24BD57F04(uint64_t a1, _DWORD *a2)
{
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, a1, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, *a1, v5);
  }
  v7 = ;
  v10 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v8, v7, v9);
  v11 = CGImageSourceCreateWithURL(v10, 0);
  Status = CGImageSourceGetStatus(v11);
  if (Status)
  {
    CFRelease(v10);
    CFRelease(v11);
    goto LABEL_36;
  }

  v32 = v7;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0);
  v14 = CGImageSourceCopyPropertiesAtIndex(v11, 0, 0);
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(ImageAtIndex);
  BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
  v31 = Height;
  v17 = sub_24BD57038(v14, *MEMORY[0x277CD2F38]);
  v18 = v6;
  v19 = Width;
  p_p = &__p;
  v21 = v14;
  sub_24BD570B4(v14, *MEMORY[0x277CD2E40], &__p);
  v22 = v35;
  if ((v35 & 0x80u) == 0)
  {
    v23 = &__p + v35;
  }

  else
  {
    v23 = __p + v34;
  }

  if ((v35 & 0x80u) != 0)
  {
    p_p = __p;
  }

  if (p_p != v23)
  {
    do
    {
      *p_p = __tolower(*p_p);
      ++p_p;
    }

    while (p_p != v23);
    v22 = v35;
  }

  v24 = v19;
  v6 = v18;
  if ((v22 & 0x80) == 0)
  {
    v7 = v32;
    if (v22 != 3)
    {
      if (v22 == 4)
      {
        v25 = &__p;
        goto LABEL_25;
      }

      goto LABEL_31;
    }

    if (__p != 26482 || BYTE2(__p) != 98)
    {
      goto LABEL_31;
    }

LABEL_37:
    v27 = 3;
    goto LABEL_34;
  }

  v7 = v32;
  if (v34 == 3 && *__p == 26482 && *(__p + 2) == 98)
  {
    goto LABEL_37;
  }

  if (v34 == 4)
  {
    v25 = __p;
LABEL_25:
    if (*v25 == 2036429415)
    {
      v27 = 1;
      goto LABEL_34;
    }
  }

LABEL_31:
  if ((BitsPerPixel >> 3) / (v17 >> 3) == 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = 3;
  }

LABEL_34:
  *a2 = v24;
  a2[1] = v31;
  a2[2] = v27;
  CFRelease(v10);
  CFRelease(v11);
  CGImageRelease(ImageAtIndex);
  CFRelease(v21);
  if (v35 < 0)
  {
    operator delete(__p);
  }

LABEL_36:

  objc_autoreleasePoolPop(v6);
  return Status == kCGImageStatusComplete;
}

BOOL sub_24BD58210(uint64_t a1, _DWORD *a2)
{
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, a1, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, *a1, v5);
  }
  v7 = ;
  v10 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v8, v7, v9);
  v11 = CGImageSourceCreateWithURL(v10, 0);
  Status = CGImageSourceGetStatus(v11);
  if (Status == kCGImageStatusComplete)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0);
    v29 = CGImageSourceCopyPropertiesAtIndex(v11, 0, 0);
    DataProvider = CGImageGetDataProvider(ImageAtIndex);
    v28 = CGDataProviderCopyData(DataProvider);
    CFDataGetBytePtr(v28);
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
    sub_24BD571A8(v29, *MEMORY[0x277CD3398]);
    v18 = sub_24BD57038(v29, *MEMORY[0x277CD2F38]);
    p_p = &__p;
    sub_24BD570B4(v29, *MEMORY[0x277CD2E40], &__p);
    v20 = v32;
    if ((v32 & 0x80u) == 0)
    {
      v21 = &__p + v32;
    }

    else
    {
      v21 = __p + v31;
    }

    if ((v32 & 0x80u) != 0)
    {
      p_p = __p;
    }

    if (p_p != v21)
    {
      do
      {
        *p_p = __tolower(*p_p);
        ++p_p;
      }

      while (p_p != v21);
      v20 = v32;
    }

    if ((v20 & 0x80) != 0)
    {
      if (v31 != 3 || (*__p == 26482 ? (v23 = *(__p + 2) == 98) : (v23 = 0), !v23))
      {
        if (v31 == 4)
        {
          v22 = __p;
LABEL_25:
          if (*v22 == 2036429415)
          {
            v24 = 1;
            goto LABEL_32;
          }
        }

LABEL_31:
        v24 = (BitsPerPixel >> 3) / (v18 >> 3);
        goto LABEL_32;
      }
    }

    else
    {
      if (v20 != 3)
      {
        if (v20 == 4)
        {
          v22 = &__p;
          goto LABEL_25;
        }

        goto LABEL_31;
      }

      if (__p != 26482 || BYTE2(__p) != 98)
      {
        goto LABEL_31;
      }
    }

    v24 = 3;
LABEL_32:
    *a2 = Width;
    a2[1] = Height;
    if (v24 == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = 3;
    }

    a2[2] = v26;
    sub_24BCBF640(a2);
  }

  CFRelease(v10);
  CFRelease(v11);

  objc_autoreleasePoolPop(v6);
  return Status == kCGImageStatusComplete;
}

void sub_24BD58730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BD587A4(uint64_t a1, unsigned int *a2, int a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  if (*(a1 + 23) < 0)
  {
    sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
  }

  else
  {
    __dst = *a1;
  }

  sub_24BCC0E30(&__dst, __p);
  if (SHIBYTE(v33) < 0)
  {
    sub_24BC8DE9C(v34, __p[0], __p[1]);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v34 = *__p;
    v35 = v33;
  }

  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, a1, v10);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, *a1, v10);
  }
  v11 = ;
  v14 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v12, v11, v13);
  if (SHIBYTE(v35) < 0)
  {
    sub_24BC8DE9C(v30, v34[0], v34[1]);
  }

  else
  {
    *v30 = *v34;
    v31 = v35;
  }

  v15 = sub_24BD57238(v30);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  v16 = CGImageDestinationCreateWithURL(v14, v15, 1uLL, 0);
  if (v16)
  {
    v20 = sub_24BD5744C(a2, 0);
    if (a4)
    {
      v21 = a3 & ~(a3 >> 31);
      if (v21 >= 100)
      {
        v21 = 100;
      }

      v22 = MEMORY[0x277CBEAC0];
      v23 = v21 / 100.0;
      *&v23 = v23;
      v24 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v17, v18, v19, v23);
      v27 = objc_msgSend_dictionaryWithObjectsAndKeys_(v22, v25, v24, v26, *MEMORY[0x277CD2D48], 0);

      CGImageDestinationAddImage(v16, v20, v27);
    }

    else
    {
      CGImageDestinationAddImage(v16, v20, 0);
    }

    v28 = CGImageDestinationFinalize(v16);
    CFRelease(v15);
    CFRelease(v14);
    CFRelease(v16);
    CGImageRelease(v20);
  }

  else
  {
    CFRelease(v14);
    CFRelease(v15);
    v28 = 0;
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v8);
  return v28;
}

void sub_24BD58A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BD58AAC(uint64_t a1, _DWORD *a2)
{
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, a1, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, *a1, v5);
  }
  v7 = ;
  v10 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v8, v7, v9);
  v11 = CGImageSourceCreateWithURL(v10, 0);
  Status = CGImageSourceGetStatus(v11);
  if (Status == kCGImageStatusComplete)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0);
    v29 = CGImageSourceCopyPropertiesAtIndex(v11, 0, 0);
    DataProvider = CGImageGetDataProvider(ImageAtIndex);
    v28 = CGDataProviderCopyData(DataProvider);
    CFDataGetBytePtr(v28);
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
    sub_24BD571A8(v29, *MEMORY[0x277CD3398]);
    v18 = sub_24BD57038(v29, *MEMORY[0x277CD2F38]);
    p_p = &__p;
    sub_24BD570B4(v29, *MEMORY[0x277CD2E40], &__p);
    v20 = v32;
    if ((v32 & 0x80u) == 0)
    {
      v21 = &__p + v32;
    }

    else
    {
      v21 = __p + v31;
    }

    if ((v32 & 0x80u) != 0)
    {
      p_p = __p;
    }

    if (p_p != v21)
    {
      do
      {
        *p_p = __tolower(*p_p);
        ++p_p;
      }

      while (p_p != v21);
      v20 = v32;
    }

    if ((v20 & 0x80) != 0)
    {
      if (v31 != 3 || (*__p == 26482 ? (v23 = *(__p + 2) == 98) : (v23 = 0), !v23))
      {
        if (v31 == 4)
        {
          v22 = __p;
LABEL_25:
          if (*v22 == 2036429415)
          {
            v24 = 1;
            goto LABEL_32;
          }
        }

LABEL_31:
        v24 = (BitsPerPixel >> 3) / (v18 >> 3);
        goto LABEL_32;
      }
    }

    else
    {
      if (v20 != 3)
      {
        if (v20 == 4)
        {
          v22 = &__p;
          goto LABEL_25;
        }

        goto LABEL_31;
      }

      if (__p != 26482 || BYTE2(__p) != 98)
      {
        goto LABEL_31;
      }
    }

    v24 = 3;
LABEL_32:
    *a2 = Width;
    a2[1] = Height;
    if (v24 == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = 3;
    }

    a2[2] = v26;
    sub_24BCBBE1C(a2);
  }

  CFRelease(v10);
  CFRelease(v11);

  objc_autoreleasePoolPop(v6);
  return Status == kCGImageStatusComplete;
}

void sub_24BD58FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BD59034(uint64_t a1, _DWORD *a2)
{
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, a1, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, *a1, v5);
  }
  v7 = ;
  cf = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v8, v7, v9);
  v10 = CGImageSourceCreateWithURL(cf, 0);
  Status = CGImageSourceGetStatus(v10);
  if (Status == kCGImageStatusComplete)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
    v28 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
    DataProvider = CGImageGetDataProvider(ImageAtIndex);
    v27 = CGDataProviderCopyData(DataProvider);
    CFDataGetBytePtr(v27);
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
    v17 = sub_24BD57038(v28, *MEMORY[0x277CD2F38]);
    p_p = &__p;
    sub_24BD570B4(v28, *MEMORY[0x277CD2E40], &__p);
    v19 = v32;
    if ((v32 & 0x80u) == 0)
    {
      v20 = &__p + v32;
    }

    else
    {
      v20 = __p + v31;
    }

    if ((v32 & 0x80u) != 0)
    {
      p_p = __p;
    }

    if (p_p != v20)
    {
      do
      {
        *p_p = __tolower(*p_p);
        ++p_p;
      }

      while (p_p != v20);
      v19 = v32;
    }

    v21 = BitsPerPixel >> 3;
    if ((v19 & 0x80) != 0)
    {
      if (v31 != 3 || (*__p == 26482 ? (v23 = *(__p + 2) == 98) : (v23 = 0), !v23))
      {
        if (v31 == 4)
        {
          v22 = __p;
LABEL_25:
          if (*v22 == 2036429415)
          {
            *a2 = Width;
            a2[1] = Height;
LABEL_32:
            v25 = 1;
            goto LABEL_36;
          }
        }

LABEL_31:
        *a2 = Width;
        a2[1] = Height;
        if (v21 / (v17 >> 3) == 1)
        {
          goto LABEL_32;
        }

LABEL_35:
        v25 = 3;
LABEL_36:
        a2[2] = v25;
        sub_24BCBBE1C(a2);
      }
    }

    else
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {
          v22 = &__p;
          goto LABEL_25;
        }

        goto LABEL_31;
      }

      if (__p != 26482 || BYTE2(__p) != 98)
      {
        goto LABEL_31;
      }
    }

    *a2 = Width;
    a2[1] = Height;
    goto LABEL_35;
  }

  CFRelease(cf);
  CFRelease(v10);

  objc_autoreleasePoolPop(v6);
  return Status == kCGImageStatusComplete;
}

void sub_24BD59498(void *a1, void *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = *a2;
  sub_24BE80D1C();
  sub_24BCCCD5C();
}

void sub_24BD59820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(v21 + 104);
  sub_24BE7F218(v21 + 88);
  sub_24BE7F218(v21 + 72);
  sub_24BE7F218(v21 + 56);
  sub_24BE7F218(v21 + 40);
  sub_24BE7F218(v21 + 24);
  sub_24BE7F218(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD59904(uint64_t a1)
{
  sub_24BE7F218(a1 + 104);
  sub_24BE7F218(a1 + 88);
  sub_24BE7F218(a1 + 72);
  sub_24BE7F218(a1 + 56);
  sub_24BE7F218(a1 + 40);
  sub_24BE7F218(a1 + 24);
  sub_24BE7F218(a1 + 8);
  return a1;
}

void sub_24BD59C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 - 136) = v27;
  sub_24BCC961C((v28 - 136));
  for (i = 32; i != -16; i -= 16)
  {
    sub_24BE7F218(v28 - 128 + i);
  }

  v31 = *(v28 - 80);
  if (v31)
  {
    *(v28 - 72) = v31;
    operator delete(v31);
  }

  sub_24BE7F218(&a15);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a27);
  _Unwind_Resume(a1);
}

void sub_24BD5A2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35)
{
  sub_24BE7F218(v35 - 136);
  sub_24BE7F218(&a31);
  sub_24BE7F218(&a33);
  _Unwind_Resume(a1);
}

void sub_24BD5A410(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_24BE7F218(v31 - 136);
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a31);
  if (a28)
  {
    operator delete(a28);
  }

  JUMPOUT(0x24BD5A3FCLL);
}

void sub_24BD5A470(uint64_t a1, int a2)
{
  v22 = a1;
  sub_24BC94F74(&v20, a2);
  v3 = v20;
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = xmmword_24BFBC5E0;
    v7 = xmmword_24BFBC5B0;
    v8 = v20 + 8;
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 2) = v4;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = v4 + 2;
        v8[1] = v4 + 3;
      }

      v4 += 4;
      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFC) != v4);
  }

  v11 = v21;
  v23 = &v22;
  v12 = v21 - v3;
  if (v12 < 129)
  {
    v18 = 0;
    v14 = 0;
  }

  else
  {
    v13 = MEMORY[0x277D826F0];
    v14 = v21 - v3;
    while (1)
    {
      v15 = operator new(4 * v14, v13);
      if (v15)
      {
        break;
      }

      v16 = v14 >> 1;
      v17 = v14 > 1;
      v14 >>= 1;
      if (!v17)
      {
        v18 = 0;
        v14 = v16;
        goto LABEL_17;
      }
    }

    v18 = v15;
  }

LABEL_17:
  sub_24BD663A0(v3, v11, &v23, v12, v18, v14);
  if (v18)
  {
    operator delete(v18);
  }

  LODWORD(v23) = a2;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v23, &v23 + 4, 1uLL);
  sub_24BCCAB48();
}

void sub_24BD5A664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD5A6A8(uint64_t a1, int a2)
{
  v21 = a1;
  sub_24BC95028(&v19, a2);
  v3 = v19;
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = xmmword_24BFBC5B0;
    v7 = v19 + 8;
    v8 = vdupq_n_s64(2uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v5, v6));
      if (v9.i8[0])
      {
        *(v7 - 1) = v4;
      }

      if (v9.i8[4])
      {
        *v7 = v4 + 1;
      }

      v4 += 2;
      v6 = vaddq_s64(v6, v8);
      v7 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFE) != v4);
  }

  v10 = v20;
  v22 = &v21;
  v11 = v20 - v3;
  if (v11 < 129)
  {
    v17 = 0;
    v13 = 0;
  }

  else
  {
    v12 = MEMORY[0x277D826F0];
    v13 = v20 - v3;
    while (1)
    {
      v14 = operator new(8 * v13, v12);
      if (v14)
      {
        break;
      }

      v15 = v13 >> 1;
      v16 = v13 > 1;
      v13 >>= 1;
      if (!v16)
      {
        v17 = 0;
        v13 = v15;
        goto LABEL_15;
      }
    }

    v17 = v14;
  }

LABEL_15:
  sub_24BD66D24(v3, v10, &v22, v11, v17, v13);
  if (v17)
  {
    operator delete(v17);
  }

  LODWORD(v22) = a2;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v22, &v22 + 4, 1uLL);
  sub_24BD676A8();
}

void sub_24BD5A854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD5A898(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a1 + 14);
  if (v3 != 8)
  {
    if (v3 == 7)
    {
      sub_24BECCF78(a1, 0, a2, a3);
    }

    sub_24BEB5080(a1, a2, a3);
  }

  sub_24BECCF78(a1, 0, a2, a3);
}

void sub_24BD5AABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a15);
  sub_24BE7F218(&a17);
  sub_24BE7F218(v17 - 48);
  _Unwind_Resume(a1);
}

void sub_24BD5AB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD5AC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD5AEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  sub_24BE7F218(va3);
  _Unwind_Resume(a1);
}

void sub_24BD5B008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD5B01C(void *a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  v53[1] = *MEMORY[0x277D85DE8];
  if (!*(*a2 + 152))
  {
    sub_24BCBF56C(a2);
  }

  if (!*(*a1 + 152))
  {
    sub_24BCBF56C(a1);
  }

  v7 = *(*a2 + 48);
  if (v7)
  {
    v8 = *(*a1 + 48);
    if (v8)
    {
      __src = 0;
      v49 = 0;
      v50 = 0;
      sub_24BCB8D20(&__src, v8);
      __p = 0;
      v46 = 0;
      v47 = 0;
      v39 = a4;
      if (a4)
      {
        sub_24BCB8D20(&__p, *(*a1 + 48));
      }

      v41 = v8 / v7;
      if (*(*a2 + 48))
      {
        v9 = 0;
        v42 = *(*a2 + 152);
        v40 = *(*a1 + 152);
        do
        {
          if (*(v42 + v9) == 1)
          {
            if (v41 >= 1)
            {
              v10 = 0;
              v11 = v40 + 4 * v9 * v41;
              v12 = v49;
              do
              {
                if (v12 >= v50)
                {
                  v13 = __src;
                  v14 = v12 - __src;
                  v15 = (v12 - __src) >> 2;
                  v16 = v15 + 1;
                  if ((v15 + 1) >> 62)
                  {
                    sub_24BC8E01C();
                  }

                  v17 = v50 - __src;
                  if ((v50 - __src) >> 1 > v16)
                  {
                    v16 = v17 >> 1;
                  }

                  if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v18 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v18 = v16;
                  }

                  if (v18)
                  {
                    sub_24BC92E0C(&__src, v18);
                  }

                  v19 = (v12 - __src) >> 2;
                  v20 = (4 * v15);
                  v21 = (4 * v15 - 4 * v19);
                  *v20 = *(v11 + 4 * v10);
                  v12 = (v20 + 1);
                  memcpy(v21, v13, v14);
                  v22 = __src;
                  __src = v21;
                  v49 = v12;
                  v50 = 0;
                  if (v22)
                  {
                    operator delete(v22);
                  }
                }

                else
                {
                  *v12 = *(v11 + 4 * v10);
                  v12 += 4;
                }

                v49 = v12;
                ++v10;
              }

              while (v10 < v41);
            }
          }

          else if (((v41 > 0) & v39) != 0)
          {
            v23 = 0;
            v24 = v40 + 4 * v9 * v41;
            v25 = v46;
            do
            {
              if (v25 >= v47)
              {
                v26 = __p;
                v27 = v25 - __p;
                v28 = (v25 - __p) >> 2;
                v29 = v28 + 1;
                if ((v28 + 1) >> 62)
                {
                  sub_24BC8E01C();
                }

                v30 = v47 - __p;
                if ((v47 - __p) >> 1 > v29)
                {
                  v29 = v30 >> 1;
                }

                if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v31 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v29;
                }

                if (v31)
                {
                  sub_24BC92E0C(&__p, v31);
                }

                v32 = (v25 - __p) >> 2;
                v33 = (4 * v28);
                v34 = (4 * v28 - 4 * v32);
                *v33 = *(v24 + 4 * v23);
                v25 = (v33 + 1);
                memcpy(v34, v26, v27);
                v35 = __p;
                __p = v34;
                v46 = v25;
                v47 = 0;
                if (v35)
                {
                  operator delete(v35);
                }
              }

              else
              {
                *v25 = *(v24 + 4 * v23);
                v25 += 4;
              }

              v46 = v25;
              ++v23;
            }

            while (v23 < v41);
          }

          ++v9;
        }

        while (v9 < *(*a2 + 48));
      }

      if (v39)
      {
        v51[0] = ((v46 - __p) >> 2) / v41;
        v51[1] = v41;
        memset(v44, 0, sizeof(v44));
        sub_24BCC9910(v44, v51, v52, 2uLL);
        v36 = *(*a1 + 56);
        sub_24BCCAB48();
      }

      v52[0] = ((v49 - __src) >> 2) / v41;
      v52[1] = v41;
      memset(v43, 0, sizeof(v43));
      sub_24BCC9910(v43, v52, v53, 2uLL);
      v37 = *(*a1 + 56);
      sub_24BCCAB48();
    }
  }

  LODWORD(__p) = 0;
  v49 = 0;
  v50 = 0;
  __src = 0;
  sub_24BCC9910(&__src, &__p, &__p + 4, 1uLL);
  v38 = *(*a1 + 56) & 0xFFFFFFFFFFLL;
  sub_24BEA51FC(&__src);
}

void sub_24BD5B4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD5B528(const void ***a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v18 = 0x100000000;
  v19 = 0;
  memset(v11, 0, sizeof(v11));
  sub_24BCC9910(v11, &v18, &v20, 3uLL);
  v2 = **a1;
  if ((*a1)[1] != v2)
  {
    v16 = *v2;
    v17 = 0x100000002;
    memset(v10, 0, sizeof(v10));
    sub_24BCC9910(v10, &v16, &v18, 3uLL);
    sub_24BEA8020(a1, v11, v10, v3, 0, v21);
    v14 = 0;
    v15 = 0;
    memset(v8, 0, sizeof(v8));
    sub_24BCC9910(v8, &v14, &v16, 3uLL);
    v4 = **a1;
    if ((*a1)[1] != v4)
    {
      v12 = *v4;
      v13 = 0x100000001;
      memset(__p, 0, sizeof(__p));
      sub_24BCC9910(__p, &v12, &v14, 3uLL);
      sub_24BEA8020(a1, v8, __p, v5, 0, v9);
      sub_24BEB711C(v9, v6);
    }

    sub_24BC923C0();
  }

  sub_24BC923C0();
}

void sub_24BD5B7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28)
{
  sub_24BE7F218(&a15);
  sub_24BE7F218(v28 - 88);
  sub_24BE7F218(&a23);
  sub_24BE7F218(&a26);
  _Unwind_Resume(a1);
}

void sub_24BD5B920(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v6[0] = *a2;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BD5A898(v6, a4, a5);
}

void sub_24BD5BE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a9);
  sub_24BE7F218(&__p);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a15);
  sub_24BE7F218(v25 - 72);
  sub_24BE7F218(&a17);
  sub_24BE7F218(&a23);
  sub_24BE7F218(&a25);
  sub_24BE7F218(v25 - 128);
  sub_24BE7F218(v25 - 112);
  _Unwind_Resume(a1);
}

void sub_24BD5C8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, char a45, uint64_t a46, char a47, uint64_t a48, char a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, char a61, uint64_t a62, char a63)
{
  sub_24BE7F218(v72 - 192);
  sub_24BE7F218(&a17);
  sub_24BE7F218(&a19);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a23);
  sub_24BE7F218(v72 - 160);
  sub_24BE7F218(v72 - 144);
  sub_24BE7F218(&a43);
  sub_24BE7F218(&a45);
  sub_24BE7F218(&a47);
  sub_24BE7F218(&a49);
  sub_24BCC96F4(v72 - 128);
  sub_24BE7F218(&a51);
  sub_24BE7F218(&a59);
  sub_24BE7F218(&a61);
  sub_24BE7F218(&a63);
  sub_24BE7F218(&a72);
  sub_24BE7F218(v72 - 248);
  sub_24BE7F218(v72 - 208);
  _Unwind_Resume(a1);
}

void sub_24BD5D208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(v27 - 144);
  sub_24BE7F218(&a21);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  v29 = *v26;
  if (*v26)
  {
    *(v26 + 8) = v29;
    operator delete(v29);
  }

  sub_24BCC8A84(v27 - 128, *(v26 + 112));
  v30 = *(v26 + 24);
  if (v30)
  {
    *(v26 + 32) = v30;
    operator delete(v30);
  }

  sub_24BE7F218(v27 - 160);
  _Unwind_Resume(a1);
}

void sub_24BD5D338(uint64_t a1, uint64_t **a2)
{
  if (sub_24BCB9A3C(a1))
  {

    sub_24BD5BFA8(a2, (a1 + 104), a1, v5);
  }

  sub_24BD5CBC4(a2, (a1 + 104), v4, v5);
}

void sub_24BD5D9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32)
{
  for (i = 48; i != -16; i -= 16)
  {
    sub_24BE7F218(v32 + i);
  }

  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a15);
  sub_24BE7F218(&a17);
  sub_24BE7F218(&a19);
  sub_24BE7F218(&a21);
  sub_24BE7F218(v33 - 56);
  sub_24BE7F218(&a29);
  sub_24BE7F218(v33 - 192);
  sub_24BE7F218(v33 - 176);
  sub_24BE7F218(v33 - 160);
  sub_24BCC96F4(&a31);
  sub_24BE7F218(v33 - 144);
  _Unwind_Resume(a1);
}

void sub_24BD5DC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD5DC1C()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 8;
  v3 = 0;
  __src = 0uLL;
  sub_24BCC9910(&__src, &v0, &v1, 1uLL);
  sub_24BEA5334(&__src);
}

void sub_24BD5F478(_Unwind_Exception *a1)
{
  sub_24BE7F218(&STACK[0x4C0]);
  sub_24BE7F218(&STACK[0x4D0]);
  sub_24BE7F218(&STACK[0x460]);
  sub_24BE7F218(v2 - 176);
  sub_24BE7F218(&STACK[0x4E0]);
  sub_24BE7F218(&STACK[0x4F8]);
  sub_24BE7F218(&STACK[0x508]);
  sub_24BE7F218(v2 - 248);
  sub_24BE7F218(v2 - 232);
  sub_24BE7F218(v2 - 216);
  sub_24BE7F218(&STACK[0x2D0]);
  v4 = *(v2 - 200);
  if (v4)
  {
    *(v2 - 192) = v4;
    operator delete(v4);
  }

  *(v2 - 176) = v2 - 128;
  sub_24BCC961C((v2 - 176));
  sub_24BE7F218(&STACK[0x370]);
  sub_24BE7F218(&STACK[0x3A0]);
  sub_24BE7F218(&STACK[0x3B0]);
  sub_24BE7F218(&STACK[0x3C0]);
  sub_24BE7F218(&STACK[0x400]);
  sub_24BE7F218(&STACK[0x410]);
  sub_24BE7F218(v1);
  sub_24BE7F218(&STACK[0x420]);
  sub_24BE7F218(&STACK[0x450]);
  _Unwind_Resume(a1);
}

void sub_24BD5FAAC()
{
  sub_24BE7F218(v0 - 176);
  v1 = STACK[0x3D0];
  if (STACK[0x3D0])
  {
    STACK[0x3D8] = v1;
    operator delete(v1);
  }

  v2 = STACK[0x3E8];
  if (STACK[0x3E8])
  {
    STACK[0x3F0] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24BD5FA6CLL);
}

void sub_24BD5FAFC()
{
  sub_24BE7F218(&STACK[0x460]);
  v1 = *(v0 - 128);
  if (v1)
  {
    *(v0 - 120) = v1;
    operator delete(v1);
  }

  sub_24BE7F218(v0 - 200);
  v2 = *(v0 - 176);
  if (v2)
  {
    *(v0 - 168) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24BD5FA84);
}

void sub_24BD5FB6C()
{
  sub_24BE7F218(&STACK[0x460]);
  sub_24BE7F218(v0 - 128);
  sub_24BE7F218(v0 - 200);
  v1 = *(v0 - 176);
  if (v1)
  {
    *(v0 - 168) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x24BD5FA8CLL);
}

void sub_24BD5FDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD5FDD4(const void ***a1, const void ***a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = (*a2)[6];
  v17 = __PAIR64__((*a1)[6] / v4, v4);
  v14 = 0;
  v15 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v17, v18, 2uLL);
  sub_24BEA4500(a1, &__p, v5, 0, &v16);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v8 = v4;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_24BCC9910(&v10, &v8, &v9, 1uLL);
  sub_24BEA4500(a2, &v10, v6, 0, &v17);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  sub_24BEA3560(0x400000007, v7, 0, &v8, v4);
}

void sub_24BD5FF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_24BE7F218(&a11);
  sub_24BE7F218(v15 - 56);
  sub_24BE7F218(v15 - 72);
  _Unwind_Resume(a1);
}

void sub_24BD5FFE4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BD5FFDCLL);
}

void sub_24BD60074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD60414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_24BE7F218(&a19);
  sub_24BE7F218(v28 - 96);
  sub_24BE7F218(&a22);
  sub_24BE7F218(&a25);
  sub_24BE7F218(&a28);
  sub_24BE7F218(v28 - 136);
  _Unwind_Resume(a1);
}

void sub_24BD61CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  for (i = 48; i != -16; i -= 16)
  {
    sub_24BE7F218(v71 + i);
  }

  sub_24BE7F218(&a41);
  sub_24BE7F218(&STACK[0x490]);
  sub_24BE7F218(&STACK[0x4A0]);
  sub_24BE7F218(&a49);
  sub_24BE7F218(&a54);
  sub_24BE7F218(&STACK[0x4B0]);
  sub_24BE7F218(&a71);
  sub_24BE7F218(&STACK[0x4C0]);
  sub_24BE7F218(v72 - 256);
  sub_24BE7F218(v72 - 240);
  sub_24BE7F218(v72 - 224);
  sub_24BE7F218(&STACK[0x220]);
  sub_24BE7F218(v72 - 208);
  sub_24BE7F218(v72 - 192);
  sub_24BE7F218(v72 - 176);
  sub_24BE7F218(v72 - 160);
  sub_24BE7F218(&STACK[0x2B0]);
  sub_24BE7F218(&STACK[0x2C0]);
  sub_24BE7F218(&STACK[0x2D0]);
  sub_24BE7F218(&STACK[0x2E8]);
  STACK[0x450] = &STACK[0x2F8];
  sub_24BCC961C(&STACK[0x450]);
  STACK[0x450] = &STACK[0x310];
  sub_24BCC961C(&STACK[0x450]);
  STACK[0x450] = &STACK[0x328];
  sub_24BCC961C(&STACK[0x450]);
  STACK[0x450] = &STACK[0x340];
  sub_24BCC961C(&STACK[0x450]);
  STACK[0x450] = &STACK[0x358];
  sub_24BCC961C(&STACK[0x450]);
  sub_24BCC8A84(v72 - 144, *(v72 - 136));
  sub_24BE7F218(&STACK[0x370]);
  sub_24BE7F218(&STACK[0x398]);
  sub_24BE7F218(&STACK[0x3A8]);
  sub_24BE7F218(&STACK[0x3D0]);
  sub_24BE7F218(&STACK[0x400]);
  sub_24BE7F218(&STACK[0x418]);
  sub_24BE7F218(&STACK[0x440]);
  _Unwind_Resume(a1);
}

void sub_24BD623F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD63EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  for (i = 48; i != -16; i -= 16)
  {
    sub_24BE7F218(v51 + i);
  }

  sub_24BE7F218(&a15);
  sub_24BE7F218(&a20);
  sub_24BE7F218(&a25);
  sub_24BE7F218(&a27);
  sub_24BE7F218(&a29);
  sub_24BE7F218(&a31);
  sub_24BE7F218(&a39);
  sub_24BE7F218(&a41);
  sub_24BE7F218(&a43);
  sub_24BE7F218(&a51);
  sub_24BE7F218(&STACK[0x610]);
  sub_24BE7F218(&STACK[0x620]);
  sub_24BE7F218(&STACK[0x630]);
  sub_24BE7F218(&STACK[0x640]);
  sub_24BE7F218(&STACK[0x650]);
  sub_24BE7F218(&STACK[0x2F8]);
  sub_24BE7F218(&STACK[0x320]);
  sub_24BE7F218(&STACK[0x330]);
  sub_24BE7F218(&STACK[0x340]);
  sub_24BE7F218(&STACK[0x380]);
  sub_24BE7F218(&STACK[0x3C0]);
  sub_24BE7F218(&STACK[0x400]);
  sub_24BE7F218(&STACK[0x440]);
  sub_24BE7F218(&STACK[0x450]);
  sub_24BE7F218(&STACK[0x460]);
  sub_24BE7F218(v52 - 160);
  sub_24BE7F218(&STACK[0x4A8]);
  sub_24BE7F218(&STACK[0x4D0]);
  sub_24BE7F218(v52 - 144);
  sub_24BE7F218(&STACK[0x530]);
  sub_24BE7F218(&STACK[0x560]);
  sub_24BE7F218(&STACK[0x578]);
  sub_24BE7F218(&STACK[0x588]);
  sub_24BE7F218(&STACK[0x598]);
  sub_24BE7F218(&STACK[0x5A8]);
  sub_24BE7F218(&STACK[0x5D0]);
  sub_24BE7F218(&STACK[0x5E8]);
  sub_24BE7F218(&STACK[0x5F8]);
  _Unwind_Resume(a1);
}

void sub_24BD640EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_24BCC961C(va);
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(v16 - 256 + i);
  }

  JUMPOUT(0x24BD63FCCLL);
}

void sub_24BD64124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_24BE7F218(v29 - 256);
  sub_24BE7F218(&a29);
  JUMPOUT(0x24BD63FD8);
}

void sub_24BD641C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, void *a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a48)
  {
    operator delete(a48);
  }

  JUMPOUT(0x24BD63FFCLL);
}

void sub_24BD6437C()
{
  sub_24BE7F218(v0 - 184);
  v1 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v1;
    operator delete(v1);
  }

  v2 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v2;
    operator delete(v2);
  }

  sub_24BE7F218(v0 - 256);
  v3 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x24BD64024);
}