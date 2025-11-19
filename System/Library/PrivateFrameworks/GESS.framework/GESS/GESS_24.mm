void *sub_24BE5398C(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_24BE53A18(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_24BE53A18(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_24BCAD8CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BD413CC(a1, &v10);
}

void sub_24BE53BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BE53BEC(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

__n128 sub_24BE53CD0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97470;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE53D00(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a2;
  v6 = *(a1 + 8);
  v10 = *a3;
  v5 = v10;
  v11 = v4;
  sub_24BE53850(v6, &v11, &v10);
  v7 = *(a1 + 16);
  v10 = v5;
  v11 = v4;
  v8 = *(v7 + 24);
  if (!v8)
  {
    sub_24BCA1F3C();
  }

  return (*(*v8 + 48))(v8, &v11, &v10);
}

uint64_t sub_24BE53DFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F974B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE53E28(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = v3;
  return sub_24BE53850(v4, &v7, &v6);
}

uint64_t sub_24BE53ED4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97500;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE53F00(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = v3;
  return sub_24BE53850(v4, &v7, &v6);
}

uint64_t sub_24BE53FAC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97548;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE53FD8(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = v3;
  return sub_24BE53850(v4, &v7, &v6);
}

unsigned __int8 *sub_24BE54014(unsigned __int8 *result, _BYTE *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v8 = *(result + 1);
      goto LABEL_9;
    }

    if (v3 != 6)
    {
      goto LABEL_4;
    }
  }

  else if (v3 != 4 && v3 != 5)
  {
LABEL_4:
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_24BCA6188(v2);
    sub_24BC836D4(&v9, v5);
    v6 = std::string::insert(&v9, 0, "type must be number, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v11 = v6->__r_.__value_.__r.__words[2];
    v10 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(302, &v10, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  LOBYTE(v8) = result[8];
LABEL_9:
  *a2 = v8;
  return result;
}

void sub_24BE5410C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_24BE54280(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a1 + 160) == *(a1 + 152))
  {
    return 0;
  }

  if (*(a2 + 1) < *(a2 + 2) || *(a2 + 3) < *(a2 + 4))
  {
    return 0;
  }

  v7 = *a2;
  v8 = a2[1];
  *(a3 + 32) = *(a2 + 4);
  *a3 = v7;
  *(a3 + 16) = v8;
  std::string::operator=((a3 + 40), (a2 + 40));
  v9 = *(a2 + 77);
  *(a3 + 64) = a2[4];
  *(a3 + 77) = v9;
  sub_24BE54FFC(a3 + 88, a2 + 88);
  if (!*a2)
  {
    v10 = 1;
    goto LABEL_10;
  }

  if (*a2 >= 0x1Fu)
  {
    v10 = 30;
LABEL_10:
    *a3 = v10;
  }

  if (*(a2 + 1) > 0x493E0u)
  {
    *(a3 + 4) = 300000;
  }

  if (*(a2 + 2) <= 0x3E7u)
  {
    *(a3 + 8) = 1000;
  }

  if (*(a2 + 3) > 0x2000u)
  {
    *(a3 + 12) = 0x2000;
  }

  if (*(a2 + 4) <= 0x7Fu)
  {
    *(a3 + 16) = 128;
  }

  v11 = *(a1 + 160) - *(a1 + 152);
  v12 = v11 >> 2;
  v13 = v11 >> 2;
  if (v12 < *(a2 + 2))
  {
    *a3 = 1;
    *(a3 + 4) = v13;
    *(a3 + 8) = v13;
  }

  if (v12 < *(a2 + 1))
  {
    *(a3 + 4) = v13;
  }

  return 1;
}

uint64_t sub_24BE543D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a4;
  v6 = a4[1] - *a4;
  if (v6)
  {
    v11 = v6 >> 2;
    v12 = *(a2 + 36);
    v13 = *(a2 + 16);
    v14 = *(a2 + 12);
    v15 = ((v12 * v13) / v14);
    if (v15 <= 1)
    {
      v15 = 1;
    }

    if (v12 <= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v12;
    }

    v17 = 1.0 / (*a2 - 1);
    v18 = powf(v15 / v16, v17);
    v19 = powf(v13 / v14, v17);
    v20 = (*(a1 + 160) - *(a1 + 152)) >> 2;
    v21 = *(a2 + 8);
    if (v21 >= v20)
    {
      v21 = (*(a1 + 160) - *(a1 + 152)) >> 2;
    }

    if (*(a2 + 4) >= v20)
    {
      v22 = (*(a1 + 160) - *(a1 + 152)) >> 2;
    }

    else
    {
      v22 = *(a2 + 4);
    }

    v23 = 0;
    v24 = powf(v21 / v22, v17);
    v25 = *a3;
    v26 = v19;
    v27 = v18;
    v28 = *a5;
    do
    {
      *&v29 = pow(v24, v23) * v22;
      *(v25 + 4 * v23) = *&v29;
      LODWORD(v29) = *(a2 + 12);
      v30 = v29;
      v31 = pow(v26, v23);
      *(v5 + 4 * v23) = 1 << vcvtas_u32_f32(log2f((v31 * v30)));
      v32 = (pow(v27, v23) * v16);
      if (v32 <= 1)
      {
        v32 = 1;
      }

      *(v28 + 4 * v23++) = 1 << vcvtas_u32_f32(log2f(v32));
    }

    while (v11 > v23);
  }

  return 1;
}

BOOL sub_24BE54598(uint64_t a1)
{
  v2 = sub_24BCB3A30(a1);
  v3 = 0xFFFFFFFFLL;
  v24 = -1;
  if (v2)
  {
    sub_24BC836D4(&__p, off_27F078FE8[0]);
    v4 = sub_24BD265CC(a1, &v24, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 = v24;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 80) + 16 * v3;
  v7 = *v5;
  v6 = *(v5 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v6);
  }

  v8 = (*(*v7 + 16))(v7);
  v22 = -1;
  sub_24BC836D4(&__p, off_27F078FF8);
  v9 = sub_24BD26644(a1, &v22, &__p.__r_.__value_.__l.__data_);
  v10 = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_24BC836D4(&__p, off_27F078FF8);
    sub_24BD2CC70(a1);
  }

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_13:
  v11 = *(a1 + 80) + 16 * v22;
  v13 = *v11;
  v12 = *(v11 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v12);
  }

  (*(*v13 + 32))(v13, 1);
  if (v8)
  {
    v14 = 0;
    v15 = 0;
    v16 = v13[5];
    do
    {
      v17 = (v7[5] + v14);
      if (*(v17 + 23) < 0)
      {
        sub_24BC8DE9C(&__p, *v17, *(v17 + 1));
      }

      else
      {
        v18 = *v17;
        __p.__r_.__value_.__r.__words[2] = *(v17 + 2);
        *&__p.__r_.__value_.__l.__data_ = v18;
      }

      v21 = v15;
      v25 = &v21;
      v19 = sub_24BD303B8(v16, &v21);
      std::string::operator=((v19 + 5), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v15;
      v14 += 24;
    }

    while (v8 != v15);
  }

  return v4;
}

void sub_24BE547DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE54804(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, unsigned int *a6)
{
  if (!a3[5])
  {
    v19 = *a5;
    LODWORD(__p) = 1065749138;
    HIDWORD(__p) = v19;
    LOBYTE(v23) = 1;
    v25 = *a6;
    v20 = a3[8];
    if (v20 == 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    if (!v20)
    {
      v21 = 0;
    }

    v24 = v21;
    sub_24BE4CD00(a1, &__p);
  }

  sub_24BC836D4(&__p, off_27F078FB8[0]);
  v36 = 0;
  v35 = 0;
  v12 = sub_24BCCAA0C((a2 + 56), &v35, &__p);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  sub_24BC836D4(&__p, off_27F078F78[0]);
  v35 = 0;
  v13 = sub_24BCB74D4((a2 + 80), &v35, &__p);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v14 = 1;
  if (v12 != -1 && v13 != -1)
  {
    v14 = sub_24BE4D6F4(a1, a2, a4);
  }

  result = 0;
  LODWORD(v25) = 100000;
  v32 = 257;
  LOBYTE(v24) = 0;
  v26 = 0;
  v33 = 1;
  v28 = *a5;
  v29 = 1;
  __p = a3[6];
  v23 = a3[7];
  v34 = *a6;
  v16 = a3[8];
  if (v16 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v30 = v18;
  v31 = 0;
  if (v14)
  {
    return sub_24BE4CF94(a1, &__p);
  }

  return result;
}

void sub_24BE549D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE549F0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, __int128 *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  sub_24BE58234(v59);
  if ((sub_24BE54280(a1, a5, v59) & 1) == 0)
  {
LABEL_28:
    v18 = 0;
    goto LABEL_41;
  }

  v10 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    v11 = v9 - 184;
    v12 = (v9 - 184);
    v13 = (v9 - 184);
    do
    {
      v14 = *v13;
      v13 -= 23;
      (*v14)(v12);
      v11 -= 184;
      v15 = v12 == v10;
      v12 = v13;
    }

    while (!v15);
    v16 = *a4;
    goto LABEL_8;
  }

  v16 = *a4;
  if (*a4 != a4[1])
  {
LABEL_8:
    a3[1] = v10;
    sub_24BE58390(a4, v16);
  }

  if (v62[48] == 1)
  {
    sub_24BC836D4(__p, off_27F078F98[0]);
    v36[0] = 0;
    v36[1] = 0;
    v17 = sub_24BCB6470((a1 + 8), v36, __p);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 == -1)
    {
      goto LABEL_28;
    }
  }

  sub_24BCA123C(v41, v59[0]);
  sub_24BCA123C(v40, v59[0]);
  sub_24BCA123C(v39, v59[0]);
  sub_24BE543D0(a1, v59, v41, v40, v39);
  sub_24BE1B700(a3, v59[0]);
  sub_24BE54FB8(a4, v59[0]);
  sub_24BCB35B4(v36, a1);
  v36[0] = &unk_285F941E8;
  v33 = 0.618;
  v34 = 256;
  v35 = 1065353216;
  sub_24BD29BDC(__p);
  *v53 = *v61;
  *&v53[13] = *&v61[13];
  sub_24BE54FFC(v54, v62);
  v54[1] = 1;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v18 = sub_24BD4C570(&v30);
  sub_24BD07E64(v55, v30, v31, (v31 - v30) >> 3);
  std::string::operator=(&v56, &v60);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v59[0])
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v33 = (((v38 - v37) >> 2) - *(v41[0] + v21)) / ((v38 - v37) >> 2);
      if (v18)
      {
        memset(v50, 0, sizeof(v50));
        memset(v49, 0, sizeof(v49));
        memset(v48, 0, sizeof(v48));
        v23 = sub_24BE440D8(v36, &v33, v48);
        sub_24BC9F10C(v50);
        sub_24BC9F08C(v49);
        sub_24BC9F00C(v48);
      }

      else
      {
        v23 = 0;
      }

      sub_24BCB3658((*a3 + v20), v36);
      if (v23 && sub_24BE54804((*a3 + v20), a1, v59, v55, (v40[0] + v21), (v39[0] + v21)))
      {
        v24 = sub_24BE54598(*a3 + v20);
        v54[0] = *(v40[0] + v21);
        if (v24)
        {
          v25 = *a3;
          v26 = *a4;
          memset(v42, 0, sizeof(v42));
          memset(v43, 0, sizeof(v43));
          memset(v44, 0, sizeof(v44));
          memset(v45, 0, sizeof(v45));
          memset(v46, 0, sizeof(v46));
          memset(v47, 0, sizeof(v47));
          v18 = sub_24BE6462C(a1, a2, &v25[v20 / 8], v26 + v19, __p, v42);
          sub_24BD7E968(v47);
          sub_24BD2A5FC(v46);
          sub_24BD7E8E8(v45);
          sub_24BC9F10C(v44);
          sub_24BC9F08C(v43);
          sub_24BC9F00C(v42);
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
        v54[0] = *(v40[0] + v21);
      }

      ++v22;
      v20 += 184;
      v19 += 72;
      v21 += 4;
    }

    while (v22 < v59[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v55[0])
  {
    v55[1] = v55[0];
    operator delete(v55[0]);
  }

  sub_24BD2A138(v54);
  sub_24BCD528C(v36);
  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

LABEL_41:
  sub_24BD2A138(v62);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_24BE54F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47)
{
  sub_24BD7E1C4(&STACK[0x260]);
  sub_24BCD528C(&a17);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  if (a46)
  {
    a47 = a46;
    operator delete(a46);
  }

  sub_24BE5516C(&STACK[0x4D8]);
  _Unwind_Resume(a1);
}

void sub_24BE54FB8(uint64_t *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BE58434(a1, v4);
  }

  else if (!v3)
  {
    sub_24BE58390(a1, *a1 + 72 * a2);
  }
}

uint64_t sub_24BE54FFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  std::string::operator=((a1 + 56), (a2 + 56));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  std::string::operator=((a1 + 96), (a2 + 96));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  std::string::operator=((a1 + 136), (a2 + 136));
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  std::string::operator=((a1 + 176), (a2 + 176));
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 208) = *(a2 + 208);
  std::string::operator=((a1 + 216), (a2 + 216));
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  std::string::operator=((a1 + 256), (a2 + 256));
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  std::string::operator=((a1 + 296), (a2 + 296));
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  std::string::operator=((a1 + 336), (a2 + 336));
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  std::string::operator=((a1 + 376), (a2 + 376));
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  std::string::operator=((a1 + 416), (a2 + 416));
  sub_24BE5831C((a1 + 440), a2 + 440);
  return a1;
}

uint64_t sub_24BE5516C(uint64_t a1)
{
  sub_24BD2A138(a1 + 88);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

uint64_t sub_24BE551A8(uint64_t a1, int a2, std::__fs::filesystem::path *a3, __int128 *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::__status(a3, 0);
  if (LOBYTE(__p[0]) && LOBYTE(__p[0]) != 255)
  {
    sub_24BE58234(v25);
    if (sub_24BE54280(a1, a4, v25))
    {
      if (v28[48] != 1)
      {
        goto LABEL_8;
      }

      sub_24BC836D4(__p, off_27F078F98[0]);
      v15[0] = 0;
      v15[1] = 0;
      v6 = sub_24BCB6470((a1 + 8), v15, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v6 != -1)
      {
LABEL_8:
        sub_24BCA123C(&v18, v25[0]);
        sub_24BCA123C(&v17, v25[0]);
        sub_24BCA123C(&v16, v25[0]);
        sub_24BE543D0(a1, v25, &v18, &v17, &v16);
        sub_24BCB35B4(v15, a1);
        v15[0] = &unk_285F941E8;
        v12 = 1058944319;
        v13 = 256;
        v14 = 1065353216;
        sub_24BD29BDC(__p);
        *v21 = *v27;
        *&v21[13] = *&v27[13];
        sub_24BE54FFC(v22, v28);
        v22[1] = 1;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        sub_24BD4C570(&v9);
        sub_24BD07E64(&v23, v9, v10, (v10 - v9) >> 3);
        std::string::operator=(&v24, &v26);
        if (v9)
        {
          v10 = v9;
          operator delete(v9);
        }

        sub_24BCD5258(&v9);
      }
    }

    sub_24BD2A138(v28);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE557B0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  sub_24BE5516C(&STACK[0x5F8]);
  _Unwind_Resume(a1);
}

void sub_24BE55B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BD51EAC(&a16);
  sub_24BCD528C(&a25);
  _Unwind_Resume(a1);
}

void sub_24BE55B5C()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BCA5970();
}

void sub_24BE56944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F18C((v66 + 8), a65);
  sub_24BC9F18C((v67 - 216), *(v67 - 224));
  v69 = (v67 - 120);
  v70 = -64;
  do
  {
    sub_24BC9F18C(v69, *(v69 - 8));
    v69 -= 4;
    v70 += 32;
  }

  while (v70);
  sub_24BC9F18C((v65 + 8), LOBYTE(STACK[0x200]));
  sub_24BC84B94(&a14);
  sub_24BC9F18C(&a13, a12);
  _Unwind_Resume(a1);
}

void sub_24BE56D40(uint64_t a1, void *a2)
{
  v41[0] = 0;
  v42 = 0;
  sub_24BC9C7E0(a2, v41);
  if (v41[0] == 1)
  {
    v3 = sub_24BCB0080(v42, "chart_options");
    if (v42 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v41, "chart_options");
      v40.__r_.__value_.__s.__data_[0] = 0;
      v40.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &v40);
      sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        sub_24BC848F0(&v40);
        *(&v40.__r_.__value_.__r + *(v40.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
        sub_24BC9C8EC(v41, "chart_options");
        sub_24BC9BD14(&v40.__r_.__value_.__r.__words[2]);
      }
    }

    if (v41[0] == 1)
    {
      v6 = sub_24BCB0080(v42, "pack_options");
      if (v42 + 8 != v6)
      {
        v7 = sub_24BC9C8EC(v41, "pack_options");
        v40.__r_.__value_.__s.__data_[0] = 0;
        v40.__r_.__value_.__l.__size_ = 0;
        v8 = sub_24BCB01B0(v7, &v40);
        sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
        if ((v8 & 1) == 0)
        {
          sub_24BC848F0(&v40);
          *(&v40.__r_.__value_.__r + *(v40.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
          sub_24BC9C8EC(v41, "pack_options");
          sub_24BC9BD14(&v40.__r_.__value_.__r.__words[2]);
        }
      }

      if (v41[0] == 1)
      {
        v9 = sub_24BCB0080(v42, "bake");
        if (v42 + 8 != v9)
        {
          v10 = sub_24BC9C8EC(v41, "bake");
          v40.__r_.__value_.__s.__data_[0] = 0;
          v40.__r_.__value_.__l.__size_ = 0;
          v11 = sub_24BCB01B0(v10, &v40);
          sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
          if ((v11 & 1) == 0)
          {
            sub_24BC848F0(&v40);
            *(&v40.__r_.__value_.__r + *(v40.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
            sub_24BC9C8EC(v41, "bake");
            sub_24BC9BD14(&v40.__r_.__value_.__r.__words[2]);
          }
        }

        if (v41[0] == 1)
        {
          v12 = sub_24BCB0080(v42, "output");
          if (v42 + 8 != v12)
          {
            v13 = sub_24BC9C8EC(v41, "output");
            v40.__r_.__value_.__s.__data_[0] = 0;
            v40.__r_.__value_.__l.__size_ = 0;
            v14 = sub_24BCB01B0(v13, &v40);
            sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
            if ((v14 & 1) == 0)
            {
              sub_24BC848F0(&v40);
              *(&v40.__r_.__value_.__r + *(v40.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
              sub_24BC9C8EC(v41, "output");
              sub_24BC9BD14(&v40.__r_.__value_.__r.__words[2]);
            }
          }

          if (v41[0] == 1)
          {
            v18 = sub_24BCB0080(v42, "num_of_levels");
            if (v42 + 8 != v18)
            {
              v19 = sub_24BC9C8EC(v41, "num_of_levels");
              v40.__r_.__value_.__s.__data_[0] = 0;
              v40.__r_.__value_.__l.__size_ = 0;
              v20 = sub_24BCB01B0(v19, &v40);
              sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
              if ((v20 & 1) == 0)
              {
                v21 = sub_24BC9C8EC(v41, "num_of_levels");
                LODWORD(v40.__r_.__value_.__l.__data_) = 0;
                sub_24BCB07E0(v21, &v40);
                *a1 = v40.__r_.__value_.__l.__data_;
                sub_24BC836D4(&v40, "num_of_levels");
                sub_24BC9CAB4(v41, &v40.__r_.__value_.__l.__data_);
                if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v40.__r_.__value_.__l.__data_);
                }
              }
            }

            if (v41[0] == 1)
            {
              v22 = sub_24BCB0080(v42, "max_face_number");
              if (v42 + 8 != v22)
              {
                v23 = sub_24BC9C8EC(v41, "max_face_number");
                v40.__r_.__value_.__s.__data_[0] = 0;
                v40.__r_.__value_.__l.__size_ = 0;
                v24 = sub_24BCB01B0(v23, &v40);
                sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
                if ((v24 & 1) == 0)
                {
                  v25 = sub_24BC9C8EC(v41, "max_face_number");
                  LODWORD(v40.__r_.__value_.__l.__data_) = 0;
                  sub_24BCB07E0(v25, &v40);
                  *(a1 + 4) = v40.__r_.__value_.__l.__data_;
                  sub_24BC836D4(&v40, "max_face_number");
                  sub_24BC9CAB4(v41, &v40.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v40.__r_.__value_.__l.__data_);
                  }
                }
              }

              if (v41[0] == 1)
              {
                v26 = sub_24BCB0080(v42, "min_face_number");
                if (v42 + 8 != v26)
                {
                  v27 = sub_24BC9C8EC(v41, "min_face_number");
                  v40.__r_.__value_.__s.__data_[0] = 0;
                  v40.__r_.__value_.__l.__size_ = 0;
                  v28 = sub_24BCB01B0(v27, &v40);
                  sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
                  if ((v28 & 1) == 0)
                  {
                    v29 = sub_24BC9C8EC(v41, "min_face_number");
                    LODWORD(v40.__r_.__value_.__l.__data_) = 0;
                    sub_24BCB07E0(v29, &v40);
                    *(a1 + 8) = v40.__r_.__value_.__l.__data_;
                    sub_24BC836D4(&v40, "min_face_number");
                    sub_24BC9CAB4(v41, &v40.__r_.__value_.__l.__data_);
                    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v40.__r_.__value_.__l.__data_);
                    }
                  }
                }

                if (v41[0] == 1)
                {
                  v30 = sub_24BCB0080(v42, "max_texture_resolution");
                  if (v42 + 8 != v30)
                  {
                    v31 = sub_24BC9C8EC(v41, "max_texture_resolution");
                    v40.__r_.__value_.__s.__data_[0] = 0;
                    v40.__r_.__value_.__l.__size_ = 0;
                    v32 = sub_24BCB01B0(v31, &v40);
                    sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
                    if ((v32 & 1) == 0)
                    {
                      v33 = sub_24BC9C8EC(v41, "max_texture_resolution");
                      LODWORD(v40.__r_.__value_.__l.__data_) = 0;
                      sub_24BCB07E0(v33, &v40);
                      *(a1 + 12) = v40.__r_.__value_.__l.__data_;
                      sub_24BC836D4(&v40, "max_texture_resolution");
                      sub_24BC9CAB4(v41, &v40.__r_.__value_.__l.__data_);
                      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v40.__r_.__value_.__l.__data_);
                      }
                    }
                  }

                  if (v41[0] == 1)
                  {
                    v34 = sub_24BCB0080(v42, "min_texture_resolution");
                    if (v42 + 8 != v34)
                    {
                      v35 = sub_24BC9C8EC(v41, "min_texture_resolution");
                      v40.__r_.__value_.__s.__data_[0] = 0;
                      v40.__r_.__value_.__l.__size_ = 0;
                      v36 = sub_24BCB01B0(v35, &v40);
                      sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
                      if ((v36 & 1) == 0)
                      {
                        v37 = sub_24BC9C8EC(v41, "min_texture_resolution");
                        LODWORD(v40.__r_.__value_.__l.__data_) = 0;
                        sub_24BCB07E0(v37, &v40);
                        *(a1 + 16) = v40.__r_.__value_.__l.__data_;
                        sub_24BC836D4(&v40, "min_texture_resolution");
                        sub_24BC9CAB4(v41, &v40.__r_.__value_.__l.__data_);
                        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v40.__r_.__value_.__l.__data_);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v15 = sub_24BC9C8EC(v41, "metal_lib_path");
  v40.__r_.__value_.__s.__data_[0] = 0;
  v40.__r_.__value_.__l.__size_ = 0;
  v16 = sub_24BCB01B0(v15, &v40);
  sub_24BC9F18C(&v40.__r_.__value_.__l.__size_, v40.__r_.__value_.__s.__data_[0]);
  if ((v16 & 1) == 0)
  {
    v17 = sub_24BC9C8EC(v41, "metal_lib_path");
    sub_24BDAEAC8(v17, &v40);
    sub_24BD82B5C((a1 + 40), &v40);
    sub_24BC836D4(__p, "metal_lib_path");
    sub_24BC9CAB4(v41, __p);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  sub_24BC848F0(&v40);
  *(&v40.__r_.__value_.__r + *(v40.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&v40.__r_.__value_.__r.__words[2]);
}

void sub_24BE57D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v20 + 8), *(v21 - 80));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE57834);
  }

  _Unwind_Resume(a1);
}

void sub_24BE57ED4(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE55B5C();
}

void sub_24BE5800C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24BD2741C(&a9, MEMORY[0x277D82810]);
  MEMORY[0x24C2547D0](v9 + 416);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE58038(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE56D40(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE581A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD6BA18(va, MEMORY[0x277D82808]);
  MEMORY[0x24C2547D0](v2 + 424);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE58234(uint64_t a1)
{
  *a1 = xmmword_24BFEDEE0;
  *(a1 + 16) = 0x100000100;
  *(a1 + 24) = 0x3DCCCCCD000000C8;
  *(a1 + 32) = 0x4100000000000001;
  sub_24BCCEE48((a1 + 40), &unk_24C0435AF);
  *(a1 + 64) = 0x200000002;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 2139095039;
  *(a1 + 84) = 1;
  sub_24BD29CAC(a1 + 88);
  *(a1 + 92) = 1;
  *(a1 + 96) = 1;
  *(a1 + 136) = 1;
  *(a1 + 176) = 0;
  *(a1 + 216) = 0;
  *(a1 + 256) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  *(a1 + 376) = 0;
  *(a1 + 416) = 0;
  *(a1 + 456) = 0;
  *(a1 + 496) = 0;
  *(a1 + 20) = 0;
  *(a1 + 32) = 2;
  return a1;
}

void sub_24BE58300(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE5831C(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_24BD7E5E8(v5, a2);
  sub_24BDAE36C(v5, a1);
  sub_24BD2A214(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24BE58390(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_24BE583E4(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

void sub_24BE583E4(uint64_t a1, uint64_t a2)
{
  sub_24BC900B8(a2 + 48, *(a2 + 56));
  v3 = (a2 + 24);
  sub_24BCCB404(&v3);
  v3 = a2;
  sub_24BCCB4E0(&v3);
}

uint64_t *sub_24BE58434(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0x8E38E38E38E38E39 * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 72 * a2;
      do
      {
        *(v4 + 64) = 0;
        *(v4 + 32) = 0uLL;
        *(v4 + 48) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 48) = v4 + 56;
        v4 += 72;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x38E38E38E38E38ELL)
    {
      sub_24BC8E01C();
    }

    v8 = 0x8E38E38E38E38E39 * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      sub_24BE585D8(result, v9);
    }

    v11 = 72 * v6;
    v17 = 0;
    v18 = 72 * v6;
    *(&v19 + 1) = 0;
    v12 = 72 * v6;
    do
    {
      *(v12 + 64) = 0;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 48) = v12 + 56;
      v12 += 72;
    }

    while (v12 != 72 * v6 + 72 * a2);
    *&v19 = v11 + 72 * a2;
    v13 = result[1];
    v14 = v11 + *result - v13;
    sub_24BE58634(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return sub_24BE587F8(&v17);
  }

  return result;
}

void sub_24BE585C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE587F8(va);
  _Unwind_Resume(a1);
}

void sub_24BE585D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BE58634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *(a2 + v7);
      v8[2] = *(a2 + v7 + 16);
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      *(v8 + 3) = *(a2 + v7 + 24);
      v8[5] = *(a2 + v7 + 40);
      v9[4] = 0;
      v9[5] = 0;
      v9[3] = 0;
      v8[6] = *(a2 + v7 + 48);
      v10 = (a2 + v7 + 56);
      v11 = *v10;
      *(a4 + v7 + 56) = *v10;
      v12 = a4 + v7 + 56;
      v13 = *(a2 + v7 + 64);
      v8[8] = v13;
      if (v13)
      {
        *(v11 + 16) = v12;
        v9[6] = v10;
        *v10 = 0;
        *(a2 + v7 + 64) = 0;
      }

      else
      {
        v8[6] = v12;
      }

      v7 += 72;
    }

    while (a2 + v7 != a3);
    v18 = a4 + v7;
    v16 = 1;
    while (v5 != a3)
    {
      sub_24BE583E4(a1, v5);
      v5 += 72;
    }
  }

  return sub_24BE5876C(v15);
}

uint64_t sub_24BE5876C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BE587A4(a1);
  }

  return a1;
}

void sub_24BE587A4(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      sub_24BE583E4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_24BE587F8(uint64_t a1)
{
  sub_24BE58830(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BE58830(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    sub_24BE583E4(v5, v4 - 72);
  }
}

vm_address_t sub_24BE58878(uint64_t a1)
{
  address = 0;
  v1 = sub_24BE109CC(4 * a1);
  v2 = vm_allocate(*MEMORY[0x277D85F48], &address, v1, 1);
  result = address;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = address == 0;
  }

  if (v4)
  {
    std::bad_alloc::bad_alloc(&v6);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x277D82918] + 16;
    __cxa_throw(exception, &unk_285F927D0, MEMORY[0x277D826E0]);
  }

  return result;
}

void sub_24BE58938(uint64_t a1, unsigned int a2)
{
  sub_24BE109CC(4 * a2);
  v2 = *MEMORY[0x277D85F48];

  JUMPOUT(0x24C2552F0);
}

uint64_t sub_24BE58984(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v5 = sub_24BE58878(a2);
  result = *(a1 + 16);
  if (a2)
  {
    v7 = v5;
    v8 = *(a1 + 16);
    do
    {
      v9 = *v8++;
      *v7++ = v9;
      --v4;
    }

    while (v4);
    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    result = MEMORY[0x24C254890](result, 0x1000C8052888210);
  }

  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_24BE58A9C(unint64_t *a1, float *a2, unint64_t *a3, void *a4)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *a4 == 1;
  if (*a4 != 1 && v5 * 0.7999 < (v4 * v4 * (*a4 - 1)))
  {
    v7 = *a4 - 2;
    do
    {
      *a4 = v7 + 1;
      v4 = *a3;
      v5 = *a1;
      v6 = v7 == 0;
      if (!v7)
      {
        break;
      }

      v8 = (v4 * v4 * v7--);
    }

    while (v5 * 0.7999 < v8);
  }

  if (v6)
  {
    v9 = *a2;
    v10 = *a2 > 0.0001 && v9 < 0.65;
    v11 = v9 / 0.65;
    if (!v10)
    {
      v11 = 1.0;
    }

    if (v4 >= 0x11)
    {
      v12 = (fmaxf(fminf(v11, 1.0), 0.1) * (3 * v5));
      if (v4 * v4 > v12)
      {
        do
        {
          v13 = v4;
          v4 >>= 1;
        }

        while (v13 >= 0x22 && v4 * v4 > v12);
        *a3 = v4;
      }
    }
  }

  return 1;
}

uint64_t sub_24BE58BAC(unint64_t *a1, float *a2, unint64_t *a3, uint64_t *a4)
{
  v8 = *a3;
  if (*a3 <= 0x4000)
  {
    if (v8 > 0xF)
    {
      goto LABEL_6;
    }

    v8 = 16;
  }

  else
  {
    v8 = 0x4000;
  }

  *a3 = v8;
LABEL_6:
  if ((v8 & (v8 - 1)) != 0)
  {
    v8 = (1 << vcvtas_u32_f32(log2f(v8)));
    *a3 = v8;
  }

  if (*a4)
  {
    sub_24BE58A9C(a1, a2, a3, a4);
    return 1;
  }

  v9 = *a1 * 0.75;
  v10 = (v8 * v8);
  if (v8 >= 0x11 && v9 <= (v10 * 0.50001))
  {
    do
    {
      v11 = v8;
      v8 >>= 1;
      v10 = (v8 * v8);
    }

    while (v11 >= 0x22 && v9 <= (v10 * 0.50001));
    *a3 = v8;
  }

  v12 = v9 / v10;
  *a4 = v12;
  if (!v12)
  {
    v13 = 1;
    goto LABEL_20;
  }

  if (v12 == 1 && v12 > 1.6)
  {
    v13 = 2;
LABEL_20:
    *a4 = v13;
  }

  return 1;
}

uint64_t sub_24BE58CE0(uint64_t *a1, float *a2, unint64_t *a3, uint64_t *a4)
{
  v19 = 0;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    goto LABEL_16;
  }

  v10 = 0;
  do
  {
    v11 = *(v5 + 32);
    if (v11)
    {
      v12 = v5 + 32;
      do
      {
        if (*(v11 + 28) >= 1)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * (*(v11 + 28) < 1));
      }

      while (v11);
      if (v12 != v5 + 32 && *(v12 + 28) <= 1)
      {
        v18 = 1;
        v13 = a1[3] + 48 * *sub_24BD250F8(v5 + 24, &v18);
        v15 = *(v13 + 8);
        v14 = *(v13 + 16);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = v19 + (v15[1] * *v15);
          v19 = v10;
          sub_24BC9EC78(v14);
        }

        else
        {
          v10 = v19 + (v15[1] * *v15);
          v19 = v10;
        }
      }
    }

    v5 += 48;
  }

  while (v5 != v6);
  if (!v10)
  {
LABEL_16:
    if (*a3 <= 0x4000)
    {
      if (*a3 > 0xF)
      {
        return 1;
      }

      v16 = 16;
    }

    else
    {
      v16 = 0x4000;
    }

    *a3 = v16;
    return 1;
  }

  sub_24BE58BAC(&v19, a2, a3, a4);
  return 1;
}

uint64_t sub_24BE58E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v52 = MEMORY[0x28223BE20]();
  v53 = v11;
  v51 = v12;
  v57 = v13;
  v15 = v14;
  v97 = *MEMORY[0x277D85DE8];
  v59 = v16;
  v50 = *(v16 + 584);
  v54.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  sub_24BCA1524(v95, a11);
  sub_24BCA2DD0(v93, a11 + 64);
  sub_24BCA2D38(v92, a11 + 32);
  v86 = -1;
  sub_24BC836D4(&__p, off_27F078FF8);
  v17 = sub_24BD26644(v15, &v86, &__p);
  if (v75 < 0)
  {
    operator delete(__p);
  }

  v58 = v15;
  v18 = (v15 + 80);
  v19 = (*(v15 + 80) + 16 * v86);
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v20);
  }

  v55 = *(v21 + 40);
  v84 = 0;
  __src = 0;
  v85 = 0;
  v81 = 0;
  v80 = 0;
  v82 = 0;
  v76 = 0uLL;
  v77 = 0;
  v22.i64[0] = 0x80000000800000;
  v22.i64[1] = 0x80000000800000;
  v78 = vnegq_f32(v22);
  v79 = v22;
  sub_24BC836D4(&v73, &unk_24C0435AF);
  sub_24BCDEC94(&__p, &v73, 0, 0);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (&__src != (v59 + 536))
  {
    sub_24BD07E64(&__src, *(v59 + 536), *(v59 + 544), (*(v59 + 544) - *(v59 + 536)) >> 3);
  }

  sub_24BD4C858(&__src);
  sub_24BD07E64(&v80, __src, v84, (v84 - __src) >> 3);
  if (v17)
  {
    v23 = sub_24BD4C570(&v80);
    v24 = 0xFFFFFFFFLL;
    v67[0] = -1;
    if (v23)
    {
      sub_24BC836D4(v60, off_27F078FE8[0]);
      v25 = sub_24BD265CC(v58, v67, v60);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }

      v24 = v67[0];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    v24 = 0xFFFFFFFFLL;
    v67[0] = -1;
  }

  v26 = (*v18 + 16 * v24);
  v28 = *v26;
  v27 = v26[1];
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v27);
  }

  v56 = (*(*v28 + 16))(v28);
  if (v94 && ((*(*v94 + 48))(v94) & 1) != 0)
  {
    goto LABEL_124;
  }

  if (v56)
  {
    v29 = 0;
    for (i = 0; i != v56; ++i)
    {
      LOWORD(v60[0]) = i;
      v31 = sub_24BD266BC(v55, v60);
      if (*(v31 + 23) < 0)
      {
        sub_24BC8DE9C(__dst, *v31, v31[1]);
      }

      else
      {
        v32 = *v31;
        *&v70 = v31[2];
        *__dst = v32;
      }

      v87[0] = __dst;
      *(sub_24BD3D084((v57 + 6), __dst) + 56) = i;
      if (SBYTE7(v70) < 0)
      {
        sub_24BC8DE9C(v71, __dst[0], __dst[1]);
      }

      else
      {
        *v71 = *__dst;
        v72 = v70;
      }

      if (SHIBYTE(v72) < 0)
      {
        sub_24BC8DE9C(v60, v71[0], v71[1]);
        v63 = 0uLL;
        v62 = &v63;
        if (SHIBYTE(v72) < 0)
        {
          operator delete(v71[0]);
        }
      }

      else
      {
        *v60 = *v71;
        v63 = 0uLL;
        v61 = v72;
        v62 = &v63;
      }

      if (*(v59 + 72) == 1)
      {
        *v90 = 1;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 1;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      if (*(v59 + 112) == 1)
      {
        *v90 = 2;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 2;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      if (*(v59 + 152) == 1)
      {
        *v90 = 7;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 7;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      if (*(v59 + 232) == 1)
      {
        *v90 = 3;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 3;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      if (*(v59 + 192) == 1)
      {
        *v90 = 4;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 4;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      if (*(v59 + 272) == 1)
      {
        *v90 = 5;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 5;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      if (*(v59 + 312) == 1)
      {
        *v90 = 6;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 6;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      if (*(v59 + 352) == 1)
      {
        *v90 = 8;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 8;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      if (*(v59 + 392) == 1)
      {
        *v90 = 11;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 11;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      if (*(v59 + 432) == 1)
      {
        *v90 = 13;
        v87[0] = v90;
        *(sub_24BCCFB80(&v62, v90) + 16) = v29;
        *&v90[4] = 0;
        memset(&v90[8], 0, 32);
        v91 = 0;
        *v90 = 13;
        sub_24BCC3CB8(v57 + 3, v90);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*&v90[24]);
        }

        if (*&v90[16])
        {
          sub_24BC9EC78(*&v90[16]);
        }

        ++v29;
      }

      sub_24BD47C9C(v57, v60);
      if (v96)
      {
        sub_24BC836D4(v90, &unk_24C0435AF);
        v33 = (i + 1) * 10.0 / v56 / 100.0;
        sub_24BC976F4(v95, v90, v33);
        if ((v90[23] & 0x80000000) != 0)
        {
          operator delete(*v90);
        }
      }

      sub_24BCC8A84(&v62, v63.i64[0]);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }

      if (SBYTE7(v70) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  v34 = v25;
  if (v94)
  {
    if ((*(*v94 + 48))(v94))
    {
      goto LABEL_124;
    }
  }

  memset(v90, 0, 32);
  v70 = 0u;
  *__dst = 0u;
  v60[1] = 0;
  v60[0] = 0;
  LODWORD(v61) = 0;
  v35.i64[0] = 0x80000000800000;
  v35.i64[1] = 0x80000000800000;
  v63 = vnegq_f32(v35);
  v64 = v35;
  if (v25)
  {
    if (sub_24BE24B50(v58, &v76))
    {
      v34 = sub_24BE24A40(v58, v90);
    }

    else
    {
      v34 = 0;
    }
  }

  if (v96)
  {
    sub_24BC836D4(v87, &unk_24C0435AF);
    sub_24BC976F4(v95, v87, 0.2);
    if (v88 < 0)
    {
      operator delete(v87[0]);
    }
  }

  if (v94 && ((*(*v94 + 48))(v94) & 1) != 0)
  {
    goto LABEL_124;
  }

  if (v34)
  {
    if (sub_24BE24B50(v52, v60))
    {
      LOBYTE(v34) = sub_24BE24A40(v52, __dst);
    }

    else
    {
      LOBYTE(v34) = 0;
    }
  }

  if (v53)
  {
    v36 = v76;
    *(v51 + 192) = v77;
    v37 = v79;
    *(v51 + 208) = v78;
    *(v51 + 224) = v37;
    v38 = *&v90[16];
    *(v51 + 144) = *v90;
    *(v51 + 160) = v38;
    *(v51 + 176) = v36;
    *(v51 + 64) = *v60;
    *(v51 + 80) = v61;
    v39 = v64;
    *(v51 + 96) = v63;
    *(v51 + 112) = v39;
    v40 = v70;
    *(v51 + 24) = *__dst;
    *(v51 + 40) = v40;
  }

  if (v96)
  {
    sub_24BC836D4(v87, &unk_24C0435AF);
    sub_24BC976F4(v95, v87, 0.3);
    if (v88 < 0)
    {
      operator delete(v87[0]);
    }
  }

  if (v94 && (((*(*v94 + 48))(v94) & 1) != 0 || v94 && ((*(*v94 + 48))(v94) & 1) != 0))
  {
LABEL_124:
    sub_24BCDED74(&__p);
  }

  else
  {
    sub_24BCDED74(&__p);
    sub_24BCDEB9C();
    v43.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (v53)
    {
      *(v51 + 296) = (v43.__d_.__rep_ - v54.__d_.__rep_) / 1000000.0 + *(v51 + 296);
    }

    std::chrono::system_clock::now();
    sub_24BE196E0(&v68, v56);
    sub_24BE19AB8(v67, v56);
    sub_24BE198CC(v66, v56);
    v44 = *(v59 + 64);
    v46 = *(v58 + 152);
    v45 = *(v58 + 160);
    sub_24BC836D4(&v65, &unk_24C0435AF);
    v47 = v44 * v44;
    v48 = ((v45 - v46) >> 1) + ((v45 - v46) >> 2);
    sub_24BCDEC94(&__p, &v65, 21 * v47 * v56 + 16 * v47 + 12 * v47 + 2 * (v45 - v46 + 4 * v48), v45 - v46 + 16 * v47 + 8 * v47 + 4 * (v45 - v46 + v47) + 4 * v48);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (v56)
    {
      v49 = v68;
      *v68 = v44;
      *(v49 + 4) = v44;
      *(v49 + 8) = 1;
      sub_24BCBF640(v49);
    }

    if (v34)
    {
      sub_24BCA2D38(v89, v92);
      sub_24BE10820(v58, &v68, v67, v66, &__src, v51, v53, v59 + 560, v89);
    }

    if (v96)
    {
      sub_24BC836D4(v60, &unk_24C0435AF);
      sub_24BC976F4(v95, v60, 0.55);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }
    }

    if (v94)
    {
      (*(*v94 + 48))(v94);
    }

    sub_24BCDED74(&__p);
    __p = v66;
    sub_24BE199F8(&__p);
    __p = v67;
    sub_24BE19B40(&__p);
    __p = &v68;
    sub_24BE1980C(&__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (__src)
  {
    v84 = __src;
    operator delete(__src);
  }

  sub_24BC9F08C(v92);
  sub_24BC9F10C(v93);
  sub_24BC9F00C(v95);
  v41 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE626D8()
{
  if (SLOBYTE(STACK[0x69F]) < 0)
  {
    operator delete(STACK[0x688]);
  }

  sub_24BC9F08C(&STACK[0xCC0]);
  __cxa_end_catch();
  JUMPOUT(0x24BE61578);
}

void sub_24BE6273C()
{
  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  JUMPOUT(0x24BE6296CLL);
}

void sub_24BE62A4C()
{
  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  sub_24BC9F08C(&STACK[0x12C0]);
  __cxa_end_catch();
  JUMPOUT(0x24BE6237CLL);
}

void sub_24BE62AB4()
{
  if (STACK[0x4D0])
  {
    STACK[0x4D8] = STACK[0x4D0];
    JUMPOUT(0x24BE62AC8);
  }

  JUMPOUT(0x24BE62ACCLL);
}

void sub_24BE62B98()
{
  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  sub_24BC9F08C(&STACK[0xC40]);
  __cxa_end_catch();
  JUMPOUT(0x24BE62BF8);
}

void sub_24BE62C04(void *a1, int a2)
{
  if (a2)
  {
    sub_24BC8DCE8(a1);
  }

  JUMPOUT(0x24BE62220);
}

void sub_24BE62C0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    MEMORY[0x24C254890](v2, 0x1000C80451B5BE8);
  }

  v3 = (*(a1 + 4) * *a1 * *(a1 + 8));
  operator new[]();
}

uint64_t *sub_24BE62C98(uint64_t *a1, unsigned int a2)
{
  *a1 = sub_24BD6A604(a2);
  a1[1] = v3;
  return a1;
}

void sub_24BE62CCC(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BE68B60(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 48 * a2;
    while (v3 != v7)
    {
      v3 -= 48;
      sub_24BCCB48C(a1, v3);
    }

    a1[1] = v7;
  }
}

double sub_24BE62D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32) * 100.0;
  if (v3 < 1.0)
  {
    v3 = 1.0;
  }

  if (v3 > 100.0)
  {
    v3 = 100.0;
  }

  *a2 = v3;
  std::operator+<char>();
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  result = *&v5;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24BE62DF8@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = sub_24BC8E2D4(a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void sub_24BE62EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v12, a8);
  sub_24BCA2DD0(v11, a8 + 64);
  sub_24BCA2D38(v10, a8 + 32);
  sub_24BD2A4E4(v9, a8 + 128);
  operator new();
}

void sub_24BE63564(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a72);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  sub_24BD2D954(&a30);
  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_24BD2D918(v75 + 16);
  sub_24BCDED74(&STACK[0x218]);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v74)
    {
      sub_24BCA2D38(&a71, v76 - 192);
      sub_24BC836D4(&STACK[0x218], &unk_24C0435AF);
      sub_24BD6B844(v73, &a71, 1, &STACK[0x218]);
      if (SLOBYTE(STACK[0x22F]) < 0)
      {
        operator delete(STACK[0x218]);
      }

      v79 = &a71;
    }

    else
    {
      LODWORD(a30) = 0;
      a31 = std::system_category();
      sub_24BCA2D38(&a69, v76 - 192);
      sub_24BC836D4(&STACK[0x218], &unk_24C0435AF);
      sub_24BD6B844(&a30, &a69, 1, &STACK[0x218]);
      if (SLOBYTE(STACK[0x22F]) < 0)
      {
        operator delete(STACK[0x218]);
      }

      v79 = &a69;
    }

    sub_24BC9F08C(v79);
    __cxa_end_catch();
    JUMPOUT(0x24BE63388);
  }

  STACK[0x218] = &a66;
  sub_24BC955F4(&STACK[0x218]);
  sub_24BD7CB4C(&STACK[0x3A0]);
  sub_24BC9F00C(v76 - 256);
  sub_24BC9EC78(v72);
  sub_24BD2A5FC(v76 - 224);
  sub_24BC9F08C(v76 - 192);
  sub_24BC9F10C(v76 - 160);
  sub_24BC9F00C(v76 - 128);
  _Unwind_Resume(a1);
}

void sub_24BE6380C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  sub_24BC9F08C(&a60);
  __cxa_end_catch();
  JUMPOUT(0x24BE636E8);
}

void sub_24BE6386C(void *a1, int a2)
{
  if (a2)
  {
    sub_24BC8DCE8(a1);
  }

  JUMPOUT(0x24BE63730);
}

uint64_t sub_24BE6387C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 1;
  v13[0] = &v12;
  v2 = sub_24BD3D1D4(a1 + 24, &v12);
  v13[0] = &unk_285F975D8;
  v14 = v13;
  sub_24BD3D410(v13, v2 + 5);
  sub_24BCC8934(v13);
  v12 = 2;
  v13[0] = &v12;
  v3 = sub_24BD3D1D4(a1 + 24, &v12);
  v13[0] = &unk_285F975D8;
  v14 = v13;
  sub_24BD3D410(v13, v3 + 5);
  sub_24BCC8934(v13);
  v12 = 3;
  v13[0] = &v12;
  v4 = sub_24BD3D1D4(a1 + 24, &v12);
  v13[0] = &unk_285F975D8;
  v14 = v13;
  sub_24BD3D410(v13, v4 + 5);
  sub_24BCC8934(v13);
  v12 = 4;
  v13[0] = &v12;
  v5 = sub_24BD3D1D4(a1 + 24, &v12);
  v13[0] = &unk_285F975D8;
  v14 = v13;
  sub_24BD3D410(v13, v5 + 5);
  sub_24BCC8934(v13);
  v12 = 5;
  v13[0] = &v12;
  v6 = sub_24BD3D1D4(a1 + 24, &v12);
  v13[0] = &unk_285F975D8;
  v14 = v13;
  sub_24BD3D410(v13, v6 + 5);
  sub_24BCC8934(v13);
  v12 = 6;
  v13[0] = &v12;
  v7 = sub_24BD3D1D4(a1 + 24, &v12);
  v13[0] = &unk_285F975D8;
  v14 = v13;
  sub_24BD3D410(v13, v7 + 5);
  sub_24BCC8934(v13);
  v12 = 7;
  v13[0] = &v12;
  v8 = sub_24BD3D1D4(a1 + 24, &v12);
  v13[0] = &unk_285F975D8;
  v14 = v13;
  sub_24BD3D410(v13, v8 + 5);
  sub_24BCC8934(v13);
  v12 = 13;
  v13[0] = &v12;
  v9 = sub_24BD3D1D4(a1 + 24, &v12);
  v13[0] = &unk_285F975D8;
  v14 = v13;
  sub_24BD3D410(v13, v9 + 5);
  result = sub_24BCC8934(v13);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BE63C0C(float *a1, uint64_t a2)
{
  v44 = 100;
  sub_24BC836D4(&v45, ".jpg");
  v4 = a1[10] * 100.0;
  if (v4 < 1.0)
  {
    v4 = 1.0;
  }

  if (v4 > 100.0)
  {
    v4 = 100.0;
  }

  v44 = v4;
  std::operator+<char>();
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v45 = v42;
  strcpy(&v42, "d");
  sub_24BC836D4(&v42.__r_.__value_.__s.__data_[8], ".jpg");
  v5 = a1[20] * 100.0;
  if (v5 < 1.0)
  {
    v5 = 1.0;
  }

  if (v5 > 100.0)
  {
    v5 = 100.0;
  }

  LOWORD(v42.__r_.__value_.__l.__data_) = v5;
  std::operator+<char>();
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__size_);
  }

  *&v42.__r_.__value_.__r.__words[1] = *v40;
  v43 = *&v40[16];
  strcpy(v40, "d");
  sub_24BC836D4(&v40[8], ".jpg");
  v6 = a1[50] * 100.0;
  if (v6 < 1.0)
  {
    v6 = 1.0;
  }

  if (v6 > 100.0)
  {
    v6 = 100.0;
  }

  *v40 = v6;
  std::operator+<char>();
  if (SHIBYTE(v41) < 0)
  {
    operator delete(*&v40[8]);
  }

  *&v40[8] = *v38;
  v41 = *&v38[16];
  strcpy(v38, "d");
  sub_24BC836D4(&v38[8], ".jpg");
  v7 = a1[40] * 100.0;
  if (v7 < 1.0)
  {
    v7 = 1.0;
  }

  if (v7 > 100.0)
  {
    v7 = 100.0;
  }

  *v38 = v7;
  std::operator+<char>();
  if (SHIBYTE(v39) < 0)
  {
    operator delete(*&v38[8]);
  }

  *&v38[8] = *v36;
  v39 = *&v36[16];
  strcpy(v36, "d");
  sub_24BC836D4(&v36[8], ".jpg");
  v8 = a1[60] * 100.0;
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  if (v8 > 100.0)
  {
    v8 = 100.0;
  }

  *v36 = v8;
  std::operator+<char>();
  if (SHIBYTE(v37) < 0)
  {
    operator delete(*&v36[8]);
  }

  *&v36[8] = *v34;
  v37 = *&v34[16];
  strcpy(v34, "d");
  sub_24BC836D4(&v34[8], ".jpg");
  v9 = a1[70] * 100.0;
  if (v9 < 1.0)
  {
    v9 = 1.0;
  }

  if (v9 > 100.0)
  {
    v9 = 100.0;
  }

  *v34 = v9;
  std::operator+<char>();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(*&v34[8]);
  }

  *&v34[8] = *__p;
  v35 = *&__p[16];
  strcpy(__p, "d");
  sub_24BC836D4(&__p[8], ".jpg");
  v10 = a1[30] * 100.0;
  if (v10 < 1.0)
  {
    v10 = 1.0;
  }

  if (v10 > 100.0)
  {
    v10 = 100.0;
  }

  *__p = v10;
  std::operator+<char>();
  if (SHIBYTE(v33) < 0)
  {
    operator delete(*&__p[8]);
  }

  *&__p[8] = *v30;
  v33 = *&v30[16];
  strcpy(v30, "d");
  sub_24BC836D4(&v30[8], ".jpg");
  v11 = a1[80] * 100.0;
  if (v11 < 1.0)
  {
    v11 = 1.0;
  }

  if (v11 > 100.0)
  {
    v11 = 100.0;
  }

  *v30 = v11;
  std::operator+<char>();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(*&v30[8]);
  }

  *&v30[8] = *v28;
  v31 = *&v28[16];
  strcpy(v28, "d");
  sub_24BC836D4(&v28[8], ".jpg");
  v12 = a1[90] * 100.0;
  if (v12 < 1.0)
  {
    v12 = 1.0;
  }

  if (v12 > 100.0)
  {
    v12 = 100.0;
  }

  *v28 = v12;
  std::operator+<char>();
  if (SHIBYTE(v29) < 0)
  {
    operator delete(*&v28[8]);
  }

  *&v28[8] = *v26;
  v29 = *&v26[16];
  strcpy(v26, "d");
  sub_24BC836D4(&v26[8], ".jpg");
  v13 = a1[100] * 100.0;
  if (v13 < 1.0)
  {
    v13 = 1.0;
  }

  if (v13 > 100.0)
  {
    v13 = 100.0;
  }

  *v26 = v13;
  std::operator+<char>();
  if (SHIBYTE(v27) < 0)
  {
    operator delete(*&v26[8]);
  }

  *&v26[8] = v46;
  v27 = v47;
  v25 = 1;
  *&v46 = &v25;
  v14 = sub_24BE68DD8(a2, &v25);
  *(v14 + 20) = v44;
  std::string::operator=(v14 + 2, &v45);
  v25 = 2;
  *&v46 = &v25;
  v15 = sub_24BE68DD8(a2, &v25);
  *(v15 + 20) = v42.__r_.__value_.__l.__data_;
  std::string::operator=(v15 + 2, &v42.__r_.__value_.__r.__words[1]);
  v25 = 3;
  *&v46 = &v25;
  v16 = sub_24BE68DD8(a2, &v25);
  *(v16 + 20) = *v40;
  std::string::operator=(v16 + 2, &v40[8]);
  v25 = 4;
  *&v46 = &v25;
  v17 = sub_24BE68DD8(a2, &v25);
  *(v17 + 20) = *v38;
  std::string::operator=(v17 + 2, &v38[8]);
  v25 = 5;
  *&v46 = &v25;
  v18 = sub_24BE68DD8(a2, &v25);
  *(v18 + 20) = *v36;
  std::string::operator=(v18 + 2, &v36[8]);
  v25 = 6;
  *&v46 = &v25;
  v19 = sub_24BE68DD8(a2, &v25);
  *(v19 + 20) = *v34;
  std::string::operator=(v19 + 2, &v34[8]);
  v25 = 7;
  *&v46 = &v25;
  v20 = sub_24BE68DD8(a2, &v25);
  *(v20 + 20) = *__p;
  std::string::operator=(v20 + 2, &__p[8]);
  v25 = 8;
  *&v46 = &v25;
  v21 = sub_24BE68DD8(a2, &v25);
  *(v21 + 20) = *v30;
  std::string::operator=(v21 + 2, &v30[8]);
  v25 = 11;
  *&v46 = &v25;
  v22 = sub_24BE68DD8(a2, &v25);
  *(v22 + 20) = *v28;
  std::string::operator=(v22 + 2, &v28[8]);
  v25 = 13;
  *&v46 = &v25;
  v23 = sub_24BE68DD8(a2, &v25);
  *(v23 + 20) = *v26;
  std::string::operator=(v23 + 2, &v26[8]);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(*&v26[8]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*&v28[8]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(*&v30[8]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(*&v34[8]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(*&v36[8]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(*&v38[8]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(*&v40[8]);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_24BE64498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(v58[1]);
  }

  if (a51 < 0)
  {
    operator delete(v58[5]);
  }

  if (a58 < 0)
  {
    operator delete(v58[9]);
  }

  if (*(v59 - 185) < 0)
  {
    operator delete(v58[13]);
  }

  if (*(v59 - 153) < 0)
  {
    operator delete(v58[17]);
  }

  if (*(v59 - 121) < 0)
  {
    operator delete(v58[21]);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE645D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = a6;
  v6 = *(a1 + 24);
  if (!v6)
  {
    sub_24BCA1F3C();
  }

  return (*(*v6 + 48))(v6, a2, a3, a4, a5, &v8);
}

uint64_t sub_24BE6462C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = std::system_category();
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v12.i64[0] = 0x80000000800000;
  v12.i64[1] = 0x80000000800000;
  v27 = vnegq_f32(v12);
  v28 = v12;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v34 = v27;
  v35 = v12;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  memset(v45, 0, sizeof(v45));
  v44 = xmmword_24BFED050;
  sub_24BD7E6FC(v46, a6);
  sub_24BCCEE48(&__p, &unk_24C0435AF);
  v14 = sub_24BE58E38(a1, a2, a3, a4, a5, &v19, 1, v13, 0, 0, v46);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_24BD7E968(v51);
  sub_24BD2A5FC(&v50);
  sub_24BD7E8E8(&v49);
  sub_24BC9F10C(&v48);
  sub_24BC9F08C(&v47);
  sub_24BC9F00C(v46);
  v15 = *(a6 + 184);
  if (v15)
  {
    (*(*v15 + 48))(v15, &v19);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_24BE647F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_24BD7CB4C(&a71);
  _Unwind_Resume(a1);
}

void sub_24BE64824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = std::system_category();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v12.i64[0] = 0x80000000800000;
  v12.i64[1] = 0x80000000800000;
  v21 = vnegq_f32(v12);
  v22 = v12;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v28 = v21;
  v29 = v12;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v34 = 0u;
  v35 = 0u;
  memset(v39, 0, sizeof(v39));
  v38 = xmmword_24BFED050;
  sub_24BD7E6FC(v40, a6);
  sub_24BE62EB4(a1, a2, a3, a4, a5, &v13, 1, v40);
}

void sub_24BE649C8()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  sub_24BC848F0(&v2);
  sub_24BDA97F4();
}

void sub_24BE64DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::locale a29)
{
  std::locale::~locale(&a29);
  sub_24BC9F18C((v29 + 8), a11);
  _Unwind_Resume(a1);
}

void sub_24BE64EF8(uint64_t a1, void *a2)
{
  v13[0] = 0;
  v14 = 0;
  sub_24BC9C7E0(a2, v13);
  if (v13[0] == 1)
  {
    v3 = sub_24BCB0080(v14, "out_of_core");
    if (v14 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v13, "out_of_core");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v13, "out_of_core");
        __p.__r_.__value_.__s.__data_[0] = 0;
        sub_24BCB0940(v6, &__p);
        *(a1 + 632) = __p.__r_.__value_.__s.__data_[0];
        sub_24BC836D4(&__p, "out_of_core");
        sub_24BC9CAB4(v13, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v13[0] == 1)
    {
      v7 = sub_24BCB0080(v14, "output_obj_path");
      if (v14 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v13, "output_obj_path");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v13, "output_obj_path");
          sub_24BDAEAC8(v10, &__p);
          v11 = (a1 + 640);
          if (*(a1 + 663) < 0)
          {
            operator delete(*v11);
          }

          *v11 = *&__p.__r_.__value_.__l.__data_;
          *(a1 + 656) = *(&__p.__r_.__value_.__l + 2);
          sub_24BC836D4(&__p, "output_obj_path");
          sub_24BC9CAB4(v13, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BE652CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE652B0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BE6535C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v21 = -1;
  sub_24BC836D4(__p, off_27F078FF8);
  v6 = sub_24BD26644(a2, &v21, __p);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(a2 + 80) + 16 * v21);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v8);
  }

  v10 = *(v9 + 40);
  v19 = -1;
  if (v6)
  {
    sub_24BC836D4(__p, off_27F078FE8[0]);
    v22 = sub_24BD265CC(a2, &v19, __p);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v19;
  }

  else
  {
    v22 = 0;
    v11 = 0xFFFFFFFFLL;
  }

  v12 = (*(a2 + 80) + 16 * v11);
  v14 = *v12;
  v13 = v12[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v13);
  }

  result = (*(*v14 + 16))(v14);
  v20 = result;
  __p[0] = &v22;
  __p[1] = &v20;
  v17 = v10;
  v18 = a3;
  if (a1[72] == 1)
  {
    result = sub_24BE655D0(__p, 1);
    a1[72] = result;
  }

  if (a1[152] == 1)
  {
    result = sub_24BE655D0(__p, 7);
    a1[152] = result;
  }

  if (a1[232] == 1)
  {
    result = sub_24BE655D0(__p, 3);
    a1[232] = result;
  }

  if (a1[192] == 1)
  {
    result = sub_24BE655D0(__p, 4);
    a1[192] = result;
  }

  if (a1[112] == 1)
  {
    result = sub_24BE655D0(__p, 2);
    a1[112] = result;
  }

  if (a1[272] == 1)
  {
    result = sub_24BE655D0(__p, 5);
    a1[272] = result;
  }

  if (a1[312] == 1)
  {
    result = sub_24BE655D0(__p, 6);
    a1[312] = result;
  }

  if (a1[392] == 1)
  {
    result = sub_24BE655D0(__p, 11);
    a1[392] = result;
  }

  if (a1[432] == 1)
  {
    result = sub_24BE655D0(__p, 13);
    a1[432] = result;
  }

  return result;
}

void sub_24BE655B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE655D0(uint64_t a1, int a2)
{
  v39 = a2;
  if (**a1 == 1 && **(a1 + 8))
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = *(a1 + 16);
      v6 = *(v5 + 8);
      if (!v6)
      {
        break;
      }

      v7 = v5 + 8;
      do
      {
        v8 = *(v6 + 32);
        v9 = v8 >= v3;
        v10 = v8 < v3;
        if (v9)
        {
          v7 = v6;
        }

        v6 = *(v6 + 8 * v10);
      }

      while (v6);
      if (v7 == v5 + 8 || *(v7 + 32) > v3)
      {
        break;
      }

      LOWORD(v31) = v3;
      v11 = sub_24BD266BC(v5, &v31);
      if (*(v11 + 23) < 0)
      {
        sub_24BC8DE9C(__p, *v11, v11[1]);
      }

      else
      {
        v12 = *v11;
        v38 = v11[2];
        *__p = v12;
      }

      v13 = sub_24BD27974(*(a1 + 24) + 48, __p);
      v14 = *(a1 + 24);
      if (v14 + 56 == v13 || (v15 = *sub_24BD26714(v14 + 48, __p), v16 = **(a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 24) + 8) - v16) >> 4) <= v15))
      {
        v28 = 0;
      }

      else
      {
        v17 = v16 + 48 * v15;
        v20 = *(v17 + 32);
        v18 = v17 + 32;
        v19 = v20;
        if (!v20)
        {
          goto LABEL_30;
        }

        v21 = v18;
        do
        {
          if (*(v19 + 28) >= v39)
          {
            v21 = v19;
          }

          v19 = *(v19 + 8 * (*(v19 + 28) < v39));
        }

        while (v19);
        if (v21 == v18 || v39 < *(v21 + 28) || (v22 = *sub_24BD250F8(v18 - 8, &v39), v23 = *(*(a1 + 24) + 24), 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 24) + 32) - v23) >> 4) <= v22))
        {
LABEL_30:
          v29 = 0;
        }

        else
        {
          v24 = (v23 + 48 * v22);
          v25 = *v24;
          v32 = *(v24 + 2);
          v31 = v25;
          v33 = *(v24 + 1);
          v26 = *(v24 + 2);
          v34 = v26;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(v24 + 47) < 0)
          {
            sub_24BC8DE9C(&v35, *(v24 + 3), *(v24 + 4));
          }

          else
          {
            v27 = *(v24 + 6);
            v36 = *(v24 + 5);
            v35 = v27;
          }

          v29 = (v32 & 1) != 0 || HIBYTE(v32) == 1;
          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35);
          }

          if (v34)
          {
            sub_24BC9EC78(v34);
          }
        }

        v4 &= v29;
        v28 = 1;
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v28 & 1) == 0)
      {
        break;
      }

      if (++v3 >= **(a1 + 8))
      {
        return v4 & 1;
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

void sub_24BE6585C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    sub_24BC9EC78(a11);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE65894(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v122 = *MEMORY[0x277D85DE8];
  sub_24BE6884C(v100, a5);
  sub_24BCA1524(v99, a6);
  sub_24BCA2DD0(v98, a6 + 64);
  sub_24BCA2D38(v97, a6 + 32);
  sub_24BD7E850(v96, a6 + 160);
  LODWORD(v68[0]) = 0;
  v68[1] = std::system_category();
  v73 = 0;
  v74 = 0;
  v69 = 0u;
  v70 = 0u;
  v72 = 0;
  v71 = 0;
  v12.i64[0] = 0x80000000800000;
  v12.i64[1] = 0x80000000800000;
  v75 = vnegq_f32(v12);
  v76 = v12;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0;
  v82 = v75;
  v83 = v12;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  memset(v91, 0, 28);
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v91[2] = xmmword_24BFED050;
  memset(&v91[3], 0, 32);
  v67 = -1;
  sub_24BC836D4(&__p, off_27F078FF8);
  v13 = sub_24BD26644(a3, &v67, &__p);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p);
  }

  v14 = (*(a3 + 80) + 16 * v67);
  v16 = *v14;
  v15 = v14[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v15);
  }

  v43 = *(v16 + 40);
  v66 = 0;
  v17 = 0xFFFFFFFFLL;
  LODWORD(v53[0]) = -1;
  if (v13)
  {
    sub_24BC836D4(&__p, off_27F078FE8[0]);
    LOBYTE(v13) = sub_24BD265CC(a3, v53, &__p);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }

    v17 = LODWORD(v53[0]);
  }

  v18 = (*(a3 + 80) + 16 * v17);
  v20 = *v18;
  v19 = v18[1];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v19);
  }

  v66 = (*(*v20 + 16))(v20);
  if (v13)
  {
    v64 = 0;
    v63 = 0;
    v65 = 0;
    v61 = 0;
    v60 = 0;
    v62 = 0;
    sub_24BD07E64(&v63, __src, v114, (v114 - __src) >> 3);
    sub_24BD4C858(&v63);
    sub_24BD07E64(&v60, v63, v64, (v64 - v63) >> 3);
    if (sub_24BD4C570(&v60))
    {
      if (v66)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          LOWORD(__p) = v21;
          v23 = sub_24BD266BC(v43, &__p);
          if (*(v23 + 23) < 0)
          {
            sub_24BC8DE9C(__dst, *v23, v23[1]);
          }

          else
          {
            v24 = *v23;
            v59 = v23[2];
            *__dst = v24;
          }

          v53[0] = __dst;
          *(sub_24BD3D084((a4 + 6), __dst) + 56) = v21;
          if (SHIBYTE(v59) < 0)
          {
            sub_24BC8DE9C(v51, __dst[0], __dst[1]);
          }

          else
          {
            *v51 = *__dst;
            v52 = v59;
          }

          if (SHIBYTE(v52) < 0)
          {
            sub_24BC8DE9C(v53, v51[0], v51[1]);
            v56 = 0;
            v57 = 0;
            v55 = &v56;
            if (SHIBYTE(v52) < 0)
            {
              operator delete(v51[0]);
            }
          }

          else
          {
            *v53 = *v51;
            v56 = 0;
            v57 = 0;
            v54 = v52;
            v55 = &v56;
          }

          if (v103 == 1)
          {
            v48[0] = v103;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          if (v104 == 1)
          {
            v48[0] = 2;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          if (v105 == 1)
          {
            v48[0] = 7;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          if (v107 == 1)
          {
            v48[0] = 3;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          if (v106 == 1)
          {
            v48[0] = 4;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          if (v108 == 1)
          {
            v48[0] = 5;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          if (v109 == 1)
          {
            v48[0] = 6;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          if (v110 == 1)
          {
            v48[0] = 8;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          if (v111 == 1)
          {
            v48[0] = 11;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          if (v112 == 1)
          {
            v48[0] = 13;
            *v50 = v48;
            *(sub_24BCCFB80(&v55, v48) + 16) = v22;
            WORD2(__p) = 0;
            v45 = 0u;
            v46 = 0u;
            v47 = 0;
            LODWORD(__p) = v48[0];
            sub_24BCC3CB8(a4 + 3, &__p);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }

            if (*(&v45 + 1))
            {
              sub_24BC9EC78(*(&v45 + 1));
            }

            ++v22;
          }

          sub_24BD47C9C(a4, v53);
          sub_24BCC8A84(&v55, v56);
          if (SHIBYTE(v54) < 0)
          {
            operator delete(v53[0]);
          }

          if (SHIBYTE(v59) < 0)
          {
            operator delete(__dst[0]);
          }

          ++v21;
        }

        while (v21 < v66);
      }

      LODWORD(__dst[0]) = 0;
      v25 = v101;
      __p = v101;
      v53[0] = v102;
      v50[0] = 1;
      v26 = sub_24BE24BE0(a1, a2, __dst, v50);
      v27 = v26;
      if (v26)
      {
        sub_24BE58CE0(a2, __dst, &__p, v53);
        v25 = __p;
      }

      if (v121 == 1)
      {
        v28 = v53[0];
      }

      else
      {
        if (v25 <= *(a5 + 64))
        {
          v29 = *(a5 + 64);
        }

        else
        {
          v29 = v25;
        }

        __p = v29;
        v30 = *a2;
        v31 = a2[1];
        if (*a2 == v31)
        {
          v32 = 0;
        }

        else
        {
          v32 = 0;
          do
          {
            v33 = *(v30 + 32);
            if (v33)
            {
              v34 = v30 + 32;
              do
              {
                if (*(v33 + 28) >= 1)
                {
                  v34 = v33;
                }

                v33 = *(v33 + 8 * (*(v33 + 28) < 1));
              }

              while (v33);
              if (v34 != v30 + 32 && *(v34 + 28) <= 1)
              {
                v50[0] = 1;
                v35 = a2[3] + 48 * *sub_24BD250F8(v30 + 24, v50);
                v37 = *(v35 + 8);
                v36 = *(v35 + 16);
                if (v36)
                {
                  atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
                  v32 += (v37[1] * *v37);
                  sub_24BC9EC78(v36);
                }

                else
                {
                  v32 += (v37[1] * *v37);
                }
              }
            }

            v30 += 48;
          }

          while (v30 != v31);
          v29 = __p;
        }

        v28 = v53[0];
        do
        {
          LODWORD(v25) = v29;
          if (v29 > 0x1000)
          {
            break;
          }

          v38 = v29 * v29 * v53[0];
          v29 *= 2;
        }

        while (v38 < v32);
      }

      v101 = v25;
      v102 = v28;
      std::chrono::system_clock::now();
      sub_24BE196E0(v53, v66);
      sub_24BE19AB8(__dst, v66);
      sub_24BE198CC(v50, v66);
      v49 = v101;
      if (v66)
      {
        v39 = v49;
        v40 = v53[0];
        *v53[0] = v49;
        v40[1] = v39;
        v40[2] = 1;
        sub_24BCBF640(v40);
      }

      if (v27)
      {
        v93 = 0;
        sub_24BE10820(a3, v53, __dst, v50, &v63, 0, 0, &v115, v92);
      }

      __p = v50;
      sub_24BE199F8(&__p);
      __p = __dst;
      sub_24BE19B40(&__p);
      __p = v53;
      sub_24BE1980C(&__p);
    }

    else
    {
      sub_24BCA2D38(v94, v97);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(v68, v94, 202, &__p);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p);
      }

      sub_24BC9F08C(v94);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }
  }

  else
  {
    sub_24BCA2D38(v95, v97);
    sub_24BC836D4(&__p, &unk_24C0435AF);
    sub_24BD6B844(v68, v95, 201, &__p);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }

    sub_24BC9F08C(v95);
  }

  sub_24BD7E968(v96);
  sub_24BC9F08C(v97);
  sub_24BC9F10C(v98);
  sub_24BC9F00C(v99);
  if (v120 < 0)
  {
    operator delete(v119);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  sub_24BD2A138(&v101);
  v41 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE67DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (a67 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&STACK[0x5D0]);
  __cxa_end_catch();
  JUMPOUT(0x24BE679E4);
}

void sub_24BE67EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (a67 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&STACK[0x5F0]);
  __cxa_end_catch();
  JUMPOUT(0x24BE67BE0);
}

void sub_24BE67ED8(void *a1, int a2)
{
  if (a2)
  {
    sub_24BC8DCE8(a1);
  }

  JUMPOUT(0x24BE67C28);
}

uint64_t sub_24BE67EE8(uint64_t *a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (*a1[1])
  {
    v4 = a1[3];
    v5 = *a1[2];
    v6 = a1[4];
    v13 = 0;
    v12 = sub_24BD266BC(v6, &v13);
    v7 = *(sub_24BD3D084((v4 + 6), v12) + 56);
    v8 = *v4;
    v9 = *a1;
    operator new[]();
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BE68208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_24BC9F08C(&a32);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v36 = *(v32 + 88);
    sub_24BCA2D38(&a28, *(v32 + 96));
    sub_24BC836D4(&__p, &unk_24C0435AF);
    sub_24BD6B844(v36, &a28, 203, &__p);
    if (a25 < 0)
    {
      operator delete(__p);
    }

    sub_24BC9F08C(&a28);
    __cxa_end_catch();
    sub_24BC9EC78(v33);
    JUMPOUT(0x24BE681C8);
  }

  sub_24BC9EC78(v33);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE68388(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, std::string *a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v36 = 100;
  sub_24BC836D4(&__p, ".jpg");
  v10 = *(a2 + 32) * 100.0;
  if (v10 < 1.0)
  {
    v10 = 1.0;
  }

  if (v10 > 100.0)
  {
    v10 = 100.0;
  }

  v36 = v10;
  std::operator+<char>();
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  __p = __dst;
  v38 = v40;
  sub_24BD25030(*a1, v34);
  if (SHIBYTE(v35) < 0)
  {
    sub_24BC8DE9C(&__dst, v34[0], v34[1]);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }
  }

  else
  {
    __dst = *v34;
    v40 = v35;
  }

  sub_24BD25150(a5, v34);
  if (v40 >= 0)
  {
    v11 = HIBYTE(v40);
  }

  else
  {
    v11 = *(&__dst + 1);
  }

  v12 = &v30;
  sub_24BC8E2D4(&v30, v11 + 1);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v30.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    if (v40 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    memmove(v12, p_dst, v11);
  }

  *(&v12->__r_.__value_.__l.__data_ + v11) = 95;
  if (v35 >= 0)
  {
    v14 = v34;
  }

  else
  {
    v14 = v34[0];
  }

  if (v35 >= 0)
  {
    v15 = HIBYTE(v35);
  }

  else
  {
    v15 = v34[1];
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v29, a4);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v29;
  }

  else
  {
    v18 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v31, v18, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v38 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v38 >= 0)
  {
    v23 = HIBYTE(v38);
  }

  else
  {
    v23 = *(&__p + 1);
  }

  v24 = std::string::append(&v32, p_p, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  sub_24BD25314(*a1, &v31);
  sub_24BCCA6F0(&v30, &v33);
  sub_24BCBBCB8(&v30, &v31, &v32);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v42 = 0;
  v26 = sub_24BE03974(&v32, a3, &v36, v41, 1);
  sub_24BD7E8E8(v41);
  sub_24BE39E78(*(a1 + 8), &v32);
  sub_24BD3C17C(a5, &v32);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

void sub_24BE68718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE6884C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  v5 = *(a2 + 20);
  v6 = *(a2 + 36);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 36) = v6;
  *(a1 + 20) = v5;
  *(a1 + 4) = v4;
  sub_24BD7E220(a1 + 64, a2 + 64);
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  sub_24BD7E680(a1 + 536, *(a2 + 536), *(a2 + 544), (*(a2 + 544) - *(a2 + 536)) >> 3);
  v7 = (a1 + 560);
  if (*(a2 + 583) < 0)
  {
    sub_24BC8DE9C(v7, *(a2 + 560), *(a2 + 568));
  }

  else
  {
    v8 = *(a2 + 560);
    *(a1 + 576) = *(a2 + 576);
    *v7 = v8;
  }

  *(a1 + 584) = *(a2 + 584);
  v9 = (a1 + 592);
  if (*(a2 + 615) < 0)
  {
    sub_24BC8DE9C(v9, *(a2 + 592), *(a2 + 600));
  }

  else
  {
    v10 = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    *v9 = v10;
  }

  v11 = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 616) = v11;
  *(a1 + 632) = *(a2 + 632);
  v12 = (a1 + 640);
  if (*(a2 + 663) < 0)
  {
    sub_24BC8DE9C(v12, *(a2 + 640), *(a2 + 648));
  }

  else
  {
    v13 = *(a2 + 640);
    *(a1 + 656) = *(a2 + 656);
    *v12 = v13;
  }

  *(a1 + 664) = *(a2 + 664);
  return a1;
}

void *sub_24BE689D4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BE19954(result, a2);
  }

  return result;
}

void sub_24BE68A5C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BE68AB0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_24BE68AB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 24)
  {
    result = *(i - 8);
    if (result)
    {
      result = MEMORY[0x24C254890](result, 0x1000C80451B5BE8);
      *(i - 8) = 0;
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_24BE68B1C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = sub_24BCDEF60(a1, a2);
  }

  else
  {
    sub_24BCDEEA8(a1, a2);
    v4 = v3 + 184;
  }

  *(a1 + 8) = v4;
  return v4 - 184;
}

uint64_t *sub_24BE68B60(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 48 * a2;
      v11 = 48 * a2;
      v12 = v5 + 8;
      do
      {
        *(v12 - 4) = 0;
        *v12 = 0uLL;
        *(v12 + 16) = 0uLL;
        *(v12 + 32) = 0;
        v12 += 48;
        v11 -= 48;
      }

      while (v11);
    }

    else
    {
      v10 = result[1];
    }

    result[1] = v10;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v23 = result;
    if (v9)
    {
      sub_24BCCF94C(result, v9);
    }

    v13 = 48 * v6;
    v20 = 0;
    v21 = 48 * v6;
    *(&v22 + 1) = 0;
    v14 = 48 * a2;
    v15 = 48 * v6 + 8;
    do
    {
      *(v15 - 4) = 0;
      *v15 = 0uLL;
      *(v15 + 16) = 0uLL;
      *(v15 + 32) = 0;
      v15 += 48;
      v14 -= 48;
    }

    while (v14);
    *&v22 = v13 + 48 * a2;
    v16 = result[1];
    v17 = v13 + *result - v16;
    sub_24BCCF9A4(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return sub_24BCCFB04(&v20);
  }

  return result;
}

void sub_24BE68CE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCFB04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE68D64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97590;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE68D90(uint64_t a1, float *a2, uint64_t a3)
{
  result = *(a1 + 8);
  if (*(result + 24))
  {
    v4 = *a2 / 100.0 * 95.0;
    return sub_24BC976F4(result, a3, v4 / 100.0);
  }

  return result;
}

uint64_t *sub_24BE68DD8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_24BE68E94();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

void sub_24BE68F30(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BD30678(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE68FD4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_24BE691C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, id *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BD6EA50(&a14);
  _Unwind_Resume(a1);
}

void sub_24BE69210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  LODWORD(v11[0]) = 0;
  v11[1] = std::system_category();
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v10.i64[0] = 0x80000000800000;
  v10.i64[1] = 0x80000000800000;
  v18 = vnegq_f32(v10);
  v19 = v10;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25 = v18;
  v26 = v10;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v31 = 0u;
  v32 = 0u;
  memset(v36, 0, sizeof(v36));
  v35 = xmmword_24BFED050;
  sub_24BD7E6FC(v37, a5);
  sub_24BE12C20(a1, a2, a3, a4, 1, v11, 1, v37);
}

uint64_t sub_24BE693B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v54[4] = *MEMORY[0x277D85DE8];
  v48[0] = a3;
  v48[1] = a4;
  v21 = 0;
  v22 = std::system_category();
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v14.i64[0] = 0x80000000800000;
  v14.i64[1] = 0x80000000800000;
  v29 = vnegq_f32(v14);
  v30 = v14;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v36 = v29;
  v37 = v14;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v42 = 0u;
  v43 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = xmmword_24BFED050;
  sub_24BE695A8(v20, v48);
  sub_24BD7E6FC(v49, a8);
  v16 = sub_24BE14E14(a1, a2, v20, a5, a6, a7, 1, v15, &v21, 1, v49);
  sub_24BD7E968(v54);
  sub_24BD2A5FC(&v53);
  sub_24BD7E8E8(&v52);
  sub_24BC9F10C(&v51);
  sub_24BC9F08C(&v50);
  sub_24BC9F00C(v49);
  if (v20[184] == 1)
  {
    sub_24BCD528C(v20);
  }

  v17 = *(a8 + 184);
  if (v17)
  {
    (*(*v17 + 48))(v17, &v21);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24BE69570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_24BD7CB4C(&STACK[0x288]);
  if (a36 == 1)
  {
    sub_24BCD528C(&a13);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_24BE695A8(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[184] = 0;
  if (*(a2 + 8) == 1)
  {
    sub_24BCB35B4(a1, *a2);
    *a1 = &unk_285F941E8;
    a1[184] = 1;
  }

  return a1;
}

void sub_24BE69610(_Unwind_Exception *exception_object)
{
  if (*(v1 + 184) == 1)
  {
    sub_24BCD528C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE69630(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  a3[152] = 0;
  a3[232] = 0;
  a3[352] = 0;
  a3[392] = 0;
  a3[432] = 0;
  a3[472] = 0;
  a3[72] = 1;
  a3[272] = 1;
  a3[312] = 1;
  a3[192] = 1;
  a3[112] = 1;
  return sub_24BE6535C(a3, a1, a2);
}

void sub_24BE69674(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 >= 0x64u)
  {
    v4 = 100;
  }

  else
  {
    v4 = *a1;
  }

  *(a2 + 4) = 0;
  *(a2 + 8) = v4;
  *(a2 + 12) = v3;
  *(a2 + 16) = 0xA00000001;
  *(a2 + 24) = 0x13F800000;
  *(a2 + 32) = 1082130432;
  *(a2 + 36) = *(a1 + 8);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 68) = 1;
  *(a2 + 152) = 0;
  *(a2 + 232) = 0;
  *(a2 + 352) = 0;
  *(a2 + 392) = 0;
  *(a2 + 432) = 0;
  *(a2 + 472) = 0;
  *(a2 + 584) = 1;
  *(a2 + 72) = 1;
  MEMORY[0x24C2541D0](a2 + 80, "png");
  *(a2 + 272) = 1;
  MEMORY[0x24C2541D0](a2 + 280, "png");
  *(a2 + 312) = 1;
  MEMORY[0x24C2541D0](a2 + 320, "png");
  *(a2 + 192) = 1;
  MEMORY[0x24C2541D0](a2 + 200, "png");
  *(a2 + 112) = 1;

  JUMPOUT(0x24C2541D0);
}

void sub_24BE69768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_24BD29BDC(v8);
  sub_24BE69674(a3, v8);
  sub_24BCCEE48(&__p, &unk_24C0435AF);
  memset(v7, 0, sizeof(v7));
  sub_24BE12C20(a1, &__p, a2, v8, 0, 0, 0, v7);
}

void sub_24BE698C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_24BD7CB4C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BD7E1C4(&a40);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE69904(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  sub_24BD29BDC(v31);
  sub_24BE69674(a5, v31);
  if (sub_24BCD277C(a2))
  {
    v17[0] = 0;
    v18 = 0;
    memset(v25, 0, sizeof(v25));
    memset(v26, 0, sizeof(v26));
    memset(v27, 0, sizeof(v27));
    memset(v28, 0, sizeof(v28));
    memset(v29, 0, sizeof(v29));
    memset(v30, 0, sizeof(v30));
    v11 = sub_24BE168CC(a1, v17, a3, v31, 0, 0, v25);
    sub_24BD7E968(v30);
    sub_24BD2A5FC(v29);
    sub_24BD7E8E8(v28);
    sub_24BC9F10C(v27);
    sub_24BC9F08C(v26);
    sub_24BC9F00C(v25);
    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }

    v12 = v17;
  }

  else
  {
    v15[0] = 0;
    v16 = 0;
    memset(v19, 0, sizeof(v19));
    memset(v20, 0, sizeof(v20));
    memset(v21, 0, sizeof(v21));
    memset(v22, 0, sizeof(v22));
    memset(v23, 0, sizeof(v23));
    memset(v24, 0, sizeof(v24));
    v11 = sub_24BE14E14(a1, a2, v15, a3, a4, v31, 0, v10, 0, 0, v19);
    sub_24BD7E968(v24);
    sub_24BD2A5FC(v23);
    sub_24BD7E8E8(v22);
    sub_24BC9F10C(v21);
    sub_24BC9F08C(v20);
    sub_24BC9F00C(v19);
    if ((v16 & 1) == 0)
    {
      goto LABEL_7;
    }

    v12 = v15;
  }

  sub_24BCD528C(v12);
LABEL_7:
  if (v38 < 0)
  {
    operator delete(__p);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  sub_24BD2A138(&v32);
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_24BE69AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_24BD7CB4C(&a61);
  if (a36 == 1)
  {
    sub_24BCD528C(&a13);
  }

  sub_24BD7E1C4(&STACK[0x320]);
  _Unwind_Resume(a1);
}

void sub_24BE69B58()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BCB0AC8();
}

void sub_24BE69FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, unsigned __int8 a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  sub_24BC9F18C((v50 + 8), a22);
  v54 = (v52 - 96);
  v55 = -128;
  do
  {
    sub_24BC9F18C(v54, *(v54 - 8));
    v54 -= 4;
    v55 += 32;
  }

  while (v55);
  v56 = &a31;
  v57 = -64;
  do
  {
    sub_24BC9F18C(v56, *(v56 - 8));
    v56 -= 4;
    v57 += 32;
  }

  while (v57);
  v58 = &a39;
  v59 = -64;
  do
  {
    sub_24BC9F18C(v58, *(v58 - 8));
    v58 -= 4;
    v59 += 32;
  }

  while (v59);
  v60 = &a47;
  v61 = -64;
  do
  {
    sub_24BC9F18C(v60, *(v60 - 8));
    v60 -= 4;
    v61 += 32;
  }

  while (v61);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a50 + i + 40), *(&a50 + i + 32));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_24BC9F18C((v51 + 8), a24);
  _Unwind_Resume(a1);
}

void sub_24BE6A184(_DWORD *a1, void *a2)
{
  v18[0] = 0;
  v19 = 0;
  sub_24BC9C7E0(a2, v18);
  v3 = sub_24BC9C8EC(v18, "in_tangential_spec");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v18, "in_tangential_spec");
    sub_24BDAEAC8(v5, &__p);
    a1[2] = sub_24BD568E8(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "in_tangential_spec");
    sub_24BC9CAB4(v18, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v6 = sub_24BC9C8EC(v18, "out_tangential_spec");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v7 = sub_24BCB01B0(v6, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v7 & 1) == 0)
  {
    v8 = sub_24BC9C8EC(v18, "out_tangential_spec");
    sub_24BDAEAC8(v8, &__p);
    a1[3] = sub_24BD568E8(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "out_tangential_spec");
    sub_24BC9CAB4(v18, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v18[0] == 1)
  {
    v9 = sub_24BCB0080(v19, "triangle_count");
    if (v19 + 8 != v9)
    {
      v10 = sub_24BC9C8EC(v18, "triangle_count");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v11 = sub_24BCB01B0(v10, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v11 & 1) == 0)
      {
        v12 = sub_24BC9C8EC(v18, "triangle_count");
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        sub_24BCB07E0(v12, &__p);
        *a1 = __p.__r_.__value_.__l.__data_;
        sub_24BC836D4(&__p, "triangle_count");
        sub_24BC9CAB4(v18, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v18[0] == 1)
    {
      v13 = sub_24BCB0080(v19, "texture_resolution");
      if (v19 + 8 != v13)
      {
        v14 = sub_24BC9C8EC(v18, "texture_resolution");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v15 = sub_24BCB01B0(v14, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v15 & 1) == 0)
        {
          v16 = sub_24BC9C8EC(v18, "texture_resolution");
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          sub_24BCB07E0(v16, &__p);
          a1[1] = __p.__r_.__value_.__l.__data_;
          sub_24BC836D4(&__p, "texture_resolution");
          sub_24BC9CAB4(v18, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BE6A674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE6A658);
  }

  _Unwind_Resume(a1);
}

void sub_24BE6A738(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE69B58();
}

void sub_24BE6A86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24BD2741C(&a9, MEMORY[0x277D82810]);
  MEMORY[0x24C2547D0](v9 + 416);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE6A898(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE6A184(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE6AA08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD6BA18(va, MEMORY[0x277D82808]);
  MEMORY[0x24C2547D0](v2 + 424);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE6AA94(uint64_t a1, double a2, double a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 128);
  v6 = *(a1 + 136);
  sub_24BC836D4(__p, "h:remesh_fixed");
  LOBYTE(v55) = 0;
  v8 = sub_24BCDCDF8((a1 + 32), &v55, __p);
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 2);
  if (v59 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = -858993459 * ((v6 - v7) >> 2);
  LOBYTE(v55) = 0;
  sub_24BC9FEFC(__p, v9);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  sub_24BCB8D20(&v55, (v9 * 0.1));
  if (v9)
  {
    v11 = 0;
    v52 = 0;
    v12 = a2 * a2;
    v13 = a3 * a3 * v12;
    do
    {
      v14 = v11 >> 6;
      v15 = 1 << v11;
      if ((*(__p[0] + (v11 >> 6)) & (1 << v11)) == 0)
      {
        if (v8 == -1)
        {
          goto LABEL_16;
        }

        v16 = (*(a1 + 32) + 16 * v8);
        v18 = *v16;
        v17 = v16[1];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v17);
        }

        if ((*(*(v18 + 40) + 8 * v14) & v15) == 0)
        {
          v60 = v11;
          if (*sub_24BCB9024(a1 + 104, &v60) == -1)
          {
            goto LABEL_16;
          }

          v19 = (*(a1 + 32) + 16 * v8);
          v21 = *v19;
          v20 = v19[1];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v20);
          }

          v63[0] = v11;
          v22 = sub_24BCB9024(a1 + 104, v63);
          if (((*(*(v21 + 40) + ((*v22 >> 3) & 0x1FFFFFF8)) >> *v22) & 1) == 0)
          {
LABEL_16:
            v60 = v11;
            *(__p[0] + v14) |= v15;
            v23 = sub_24BCB9024(a1 + 104, &v60);
            *(__p[0] + ((*v23 >> 3) & 0x1FFFFFF8)) |= 1 << *v23;
            v24 = sub_24BC9ECE4(a1, *(a1 + 180), v60);
            if ((*v24 & v25) == 0)
            {
              v26 = sub_24BCB9024(a1 + 104, &v60);
              v27 = sub_24BC9ECE4(a1, *(a1 + 180), *v26);
              if ((*v27 & v28) == 0)
              {
                v29 = sub_24BCB9024(a1 + 104, &v60);
                v30 = *(sub_24BCB9024(a1 + 104, v29) + 12);
                v31 = (*(a1 + 8) + 16 * *(a1 + 176));
                v33 = *v31;
                v32 = v31[1];
                if (v32)
                {
                  atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v32);
                }

                v53 = *(*(v33 + 40) + 16 * v30);
                v34 = *(sub_24BCB9024(a1 + 104, &v60) + 12);
                v35 = (*(a1 + 8) + 16 * *(a1 + 176));
                v37 = *v35;
                v36 = v35[1];
                if (v36)
                {
                  atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v36);
                }

                v38 = vsubq_f32(v53, *(*(v37 + 40) + 16 * v34));
                v39 = vmulq_f32(v38, v38);
                v39.i32[3] = 0;
                if (v13 < vaddv_f32(*&vpaddq_f32(v39, v39)))
                {
                  sub_24BCB4670(&v55, &v60);
                  ++v52;
                }
              }
            }
          }
        }
      }

      ++v11;
    }

    while (v9 != v11);
  }

  else
  {
    v52 = 0;
  }

  v40 = v56 - v55;
  v41 = (v56 - v55) >> 2;
  v42 = (*(a1 + 112) - *(a1 + 104)) >> 2;
  v44 = *(a1 + 152);
  v43 = *(a1 + 160);
  sub_24BCB38F8(a1, (v42 + v41));
  v45 = (v43 - v44) >> 2;
  sub_24BCB39C8(a1, v45 + (v40 >> 1));
  sub_24BCB3960(a1, (v9 + 6 * v41));
  if (v9 + 6 * v41 > v9)
  {
    v46 = 6 * v41;
    do
    {
      v47 = sub_24BC9ECE4(a1, *(a1 + 180), v10);
      *v47 &= ~v48;
      ++v10;
      --v46;
    }

    while (v46);
  }

  if (v41)
  {
    v49 = 0;
    do
    {
      v63[0] = v45;
      v63[1] = v45 + 1;
      v60 = v9;
      v61 = vaddq_s32(vdupq_n_s32(v9), xmmword_24BFEE100);
      v62 = v9 + 5;
      v54 = v42;
      sub_24BCD73E8(a1, (v55 + v49), &v54, v63, &v60, 0, 1);
      v49 += 4;
      LODWORD(v42) = v42 + 1;
      LODWORD(v9) = v9 + 6;
      LODWORD(v45) = v45 + 2;
    }

    while ((v40 & 0x3FFFFFFFCLL) != v49);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v52;
}

void sub_24BE6AEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE6AF64(uint64_t a1, double a2, double a3, uint64_t a4, int a5, int a6)
{
  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  sub_24BC836D4(__p, "h:remesh_fixed");
  LOBYTE(v51) = 0;
  v12 = sub_24BCDCDF8((a1 + 32), &v51, __p);
  v13 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 2);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v13;
  LOBYTE(v51) = 0;
  sub_24BC9FEFC(__p, v13);
  if (v13)
  {
    v15 = 0;
    v47 = 0;
    v16 = a2 * a2;
    v17 = a3 * a3 * v16;
    do
    {
      v18 = v15 >> 6;
      v19 = 1 << v15;
      if ((*(__p[0] + (v15 >> 6)) & (1 << v15)) == 0)
      {
        if (v12 == -1)
        {
          goto LABEL_16;
        }

        v20 = (*(a1 + 32) + 16 * v12);
        v22 = *v20;
        v21 = v20[1];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v21);
        }

        if ((*(*(v22 + 40) + 8 * v18) & v19) == 0)
        {
          v51 = v15;
          if (*sub_24BCB9024(a1 + 104, &v51) == -1)
          {
            goto LABEL_16;
          }

          v23 = (*(a1 + 32) + 16 * v12);
          v25 = *v23;
          v24 = v23[1];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v24);
          }

          v48 = v15;
          v26 = sub_24BCB9024(a1 + 104, &v48);
          if (((*(*(v25 + 40) + ((*v26 >> 3) & 0x1FFFFFF8)) >> *v26) & 1) == 0)
          {
LABEL_16:
            v48 = v15;
            *(__p[0] + v18) |= v19;
            v51 = v15;
            if (*(sub_24BCB9024(a1 + 104, &v51) + 12) != -1)
            {
              v27 = sub_24BCB9024(a1 + 104, &v48);
              *(__p[0] + ((*v27 >> 3) & 0x1FFFFFF8)) |= 1 << *v27;
              if ((a5 & 1) != 0 || (v39 = sub_24BC9ECE4(a1, *(a1 + 180), v48), (*v39 & v40) == 0) && (v41 = sub_24BCB9024(a1 + 104, &v48), v42 = sub_24BC9ECE4(a1, *(a1 + 180), *v41), (*v42 & v43) == 0))
              {
                v28 = sub_24BCB9024(a1 + 104, &v48);
                v29 = *(sub_24BCB9024(a1 + 104, v28) + 12);
                v30 = (*(a1 + 8) + 16 * *(a1 + 176));
                v32 = *v30;
                v31 = v30[1];
                if (v31)
                {
                  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v31);
                }

                v46 = *(*(v32 + 40) + 16 * v29);
                v33 = *(sub_24BCB9024(a1 + 104, &v48) + 12);
                v34 = (*(a1 + 8) + 16 * *(a1 + 176));
                v36 = *v34;
                v35 = v34[1];
                if (v35)
                {
                  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v35);
                }

                v37 = vsubq_f32(v46, *(*(v36 + 40) + 16 * v33));
                v38 = vmulq_f32(v37, v37);
                v38.i32[3] = 0;
                if (v17 > vaddv_f32(*&vpaddq_f32(v38, v38)))
                {
                  v47 += sub_24BCD87D0(a1, &v48, a5, a6);
                }
              }
            }
          }
        }
      }

      ++v15;
    }

    while (v14 != v15);
  }

  else
  {
    v47 = 0;
  }

  sub_24BD79520(a1);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v47;
}

void sub_24BE6B2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE6B2E8(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = *(a1 + 136);
  sub_24BC836D4(__p, "h:remesh_fixed");
  LOBYTE(v37) = 0;
  v4 = sub_24BCDCDF8((a1 + 32), &v37, __p);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 2);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    if (v4 == -1)
    {
      goto LABEL_13;
    }

    v9 = (*(a1 + 32) + 16 * v4);
    v11 = *v9;
    v10 = v9[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v10);
    }

    if (((*(*(v11 + 40) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      LODWORD(__p[0]) = v7;
      if (*sub_24BCB9024(a1 + 104, __p) == -1)
      {
        goto LABEL_13;
      }

      v12 = (*(a1 + 32) + 16 * v4);
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v13);
      }

      v37 = v7;
      v15 = sub_24BCB9024(a1 + 104, &v37);
      if (((*(*(v14 + 40) + ((*v15 >> 3) & 0x1FFFFFF8)) >> *v15) & 1) == 0)
      {
LABEL_13:
        LODWORD(__p[0]) = v7;
        v16 = sub_24BC9ECE4(a1, *(a1 + 180), v7);
        if ((v17 & *v16) == 0)
        {
          v18 = sub_24BCB9024(a1 + 104, __p);
          v19 = sub_24BC9ECE4(a1, *(a1 + 180), *v18);
          if ((v20 & *v19) == 0)
          {
            v21 = v8;
            v22 = *(sub_24BCB9024(a1 + 104, __p) + 12);
            v23 = sub_24BCB9024(a1 + 104, __p);
            v24 = *(sub_24BCB9024(a1 + 104, v23) + 12);
            v25 = sub_24BCB9024(a1 + 104, __p);
            v26 = sub_24BCB9024(a1 + 104, (v25 + 8));
            v27 = *(sub_24BCB9024(a1 + 104, v26) + 12);
            v28 = sub_24BCB9024(a1 + 104, __p);
            v29 = sub_24BCB9024(a1 + 104, v28);
            v30 = sub_24BCB9024(a1 + 104, (v29 + 8));
            v31 = *(sub_24BCB9024(a1 + 104, v30) + 12);
            v32 = sub_24BCD9434(a1, v22);
            v33 = sub_24BCD9434(a1, v24);
            v34 = sub_24BCD9434(a1, v27);
            v35 = vadd_s32(vadd_s32(vadd_s32(vabs_s32(vadd_s32(vdup_n_s32(v33), 0xFFFFFFF9FFFFFFFALL)), vabs_s32(vadd_s32(vdup_n_s32(v32), 0xFFFFFFF9FFFFFFFALL))), vabs_s32(vadd_s32(vdup_n_s32(v34), 0xFFFFFFFBFFFFFFFALL))), vabs_s32(vadd_s32(vdup_n_s32(sub_24BCD9434(a1, v31)), 0xFFFFFFFBFFFFFFFALL)));
            if (vcgt_u32(v35, vdup_lane_s32(v35, 1)).u32[0])
            {
              v37 = -1;
              v8 = v21 + sub_24BCD5DD0(a1, __p, 1, &v37);
            }

            else
            {
              v8 = v21;
            }
          }
        }
      }
    }

    ++v7;
  }

  while (v6 != v7);
  return v8;
}

void sub_24BE6B5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE6B614(uint64_t a1, uint64_t a2)
{
  sub_24BE40B64(__p, a2, *(a2 + 24), *(a2 + 28), 1);
  v3 = sub_24BE407D0(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v3;
}

void sub_24BE6B674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE6B690(uint64_t a1, int a2, char a3, double a4)
{
  v7 = a4;
  v15 = v7;
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_24BDB6E64(&__p, &v15, &v16, 1uLL);
  v13 = a2;
  v14 = a3;
  v8 = sub_24BE6B614(a1, &__p);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_24BE6B71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE6B738(uint64_t a1, int a2, char a3, float a4)
{
  v8 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  sub_24BDB6E64(a1, &v8, &v9, 1uLL);
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  return a1;
}

uint64_t sub_24BE6B79C(uint64_t a1, uint64_t *a2, int a3, char a4)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_24BD07D84(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  v12 = a3;
  v13 = a4;
  v7 = sub_24BE6B614(a1, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v7;
}

void sub_24BE6B820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE6B83C(uint64_t a1, uint64_t *a2, int a3, char a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_24BD07D84(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  return a1;
}

uint64_t sub_24BE6B894(uint64_t a1, int a2, int a3, double a4, double a5, double a6)
{
  v7 = a2;
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = a3;
  sub_24BE6B8CC(a1, &v7);
  return 1;
}

uint64_t sub_24BE6B8CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 <= v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &unk_24C0435AF);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *a2;
  sub_24BE243D0(a1);
  v9 = v8;
  sub_24BE6B690(a1, v6, 1, v5);
  if (v7 >= 1)
  {
    v10 = v9;
    do
    {
      v11 = sub_24BE6AA94(a1, v10, v2);
      v12 = sub_24BE6AF64(a1, v10, v3, 0, 0, 4);
      v13 = v12 | v11 | sub_24BE6B2E8(a1);
      sub_24BE6B690(a1, v6, 1, v5);
      if (v13)
      {
        v14 = v7 > 1;
      }

      else
      {
        v14 = 0;
      }

      --v7;
    }

    while (v14);
  }

  return 1;
}

uint64_t sub_24BE6BA0C(uint64_t a1, unsigned int **a2, int a3, int a4, double a5, double a6, double a7)
{
  LODWORD(v8[0]) = a3;
  v8[1] = a5;
  v8[2] = a6;
  v8[3] = a7;
  v9 = a4;
  sub_24BE6BA44(a1, a2, v8);
  return 1;
}

uint64_t sub_24BE6BA44(uint64_t a1, unsigned int **a2, double *a3)
{
  v3 = a3[1];
  v4 = a3[2];
  if (v3 <= v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &unk_24C0435AF);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v7 = *a3;
  v8 = a3[3];
  v9 = *(a3 + 8);
  v76 = -1;
  sub_24BC836D4(&__p, "h:remesh_fixed");
  LOBYTE(v71[0]) = 0;
  v10 = sub_24BCDCDF8((a1 + 32), v71, &__p);
  v76 = v10;
  if (v75 < 0)
  {
    operator delete(__p);
  }

  if (v10 == -1)
  {
    sub_24BC836D4(&__p, "h:remesh_fixed");
    sub_24BCB34E0(a1);
  }

  for (i = 0; ; ++i)
  {
    v12 = (*(a1 + 32) + 16 * v76);
    v14 = *v12;
    v13 = v12[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v13);
    }

    if (i >= (*(*v14 + 16))(v14))
    {
      break;
    }

    v15 = (*(a1 + 32) + 16 * v76);
    v17 = *v15;
    v16 = v15[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v16);
    }

    *(*(v17 + 40) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << i);
  }

  v72 = -1;
  sub_24BC836D4(&__p, "v:remesh_fixed");
  LOBYTE(v71[0]) = 0;
  v18 = sub_24BCDCDF8((a1 + 8), v71, &__p);
  v72 = v18;
  if (v75 < 0)
  {
    operator delete(__p);
  }

  if (v18 == -1)
  {
    sub_24BC836D4(&__p, "v:remesh_fixed");
    sub_24BE1E090(a1);
  }

  for (j = 0; ; ++j)
  {
    v20 = (*(a1 + 8) + 16 * v72);
    v22 = *v20;
    v21 = v20[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v21);
    }

    if (j >= (*(*v22 + 16))(v22))
    {
      break;
    }

    v23 = (*(a1 + 8) + 16 * v72);
    v25 = *v23;
    v24 = v23[1];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v24);
    }

    *(*(v25 + 40) + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << j);
  }

  v26 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  LOBYTE(v71[0]) = 0;
  sub_24BC9FEFC(&__p, v26);
  v27 = *a2;
  v28 = a2[1];
  if (*a2 != v28)
  {
    v29 = __p;
    do
    {
      v30 = *v27++;
      *&v29[(v30 >> 3) & 0x1FFFFFF8] |= 1 << v30;
    }

    while (v27 != v28);
  }

  sub_24BCB7458(v71, 3uLL);
  v31 = v74;
  if (v74)
  {
    v32 = 0;
    do
    {
      if (((*(__p + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        LODWORD(v70[0]) = v32;
        sub_24BCD573C(a1, v70, v71);
        for (k = 0; k != 12; k += 4)
        {
          v34 = (*(a1 + 32) + 16 * v76);
          v36 = *v34;
          v35 = v34[1];
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v35);
            v37 = (*(a1 + 32) + 16 * v76);
            v38 = *v37;
            v35 = v37[1];
          }

          else
          {
            v38 = *v34;
          }

          v39 = v71[0];
          *(*(v36 + 40) + ((*(v71[0] + k) >> 3) & 0x1FFFFFF8)) |= 1 << *(v71[0] + k);
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v35);
            v39 = v71[0];
          }

          v40 = sub_24BCB9024(a1 + 104, &v39[k]);
          *(*(v38 + 40) + ((*v40 >> 3) & 0x1FFFFFF8)) |= 1 << *v40;
          v41 = (*(a1 + 8) + 16 * v72);
          v43 = *v41;
          v42 = v41[1];
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v42);
          }

          v44 = sub_24BCB9024(a1 + 104, (v71[0] + k));
          *(*(v43 + 40) + ((*(v44 + 12) >> 3) & 0x1FFFFFF8)) |= 1 << *(v44 + 12);
        }

        v31 = v74;
      }

      ++v32;
    }

    while (v32 < v31);
  }

  sub_24BE243D0(a1);
  v46 = v45;
  sub_24BC95764(v70, (*(a1 + 112) - *(a1 + 104)) >> 2);
  if (*(a1 + 112) != *(a1 + 104))
  {
    v47 = 0;
    v49 = 1;
    do
    {
      v50 = (*(a1 + 8) + 16 * v72);
      v52 = *v50;
      v51 = v50[1];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v51);
      }

      if ((*(*(v52 + 40) + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47))
      {
        v53 = 0.0;
      }

      else
      {
        v48 = v8;
        v53 = v48;
      }

      *(v70[0] + v47) = v53;
      v47 = v49++;
    }

    while (v47 < (*(a1 + 112) - *(a1 + 104)) >> 2);
  }

  sub_24BE6B79C(a1, v70, v9, 1);
  v54 = v46;
  v55 = v8;
  v56 = v7 + 1;
  v57 = 1;
  while (v57)
  {
    if (--v56 < 1)
    {
      break;
    }

    v58 = sub_24BE6AA94(a1, v54, v3);
    v59 = sub_24BE6AF64(a1, v54, v4, 0, 0, 4);
    v60 = sub_24BE6B2E8(a1);
    v61 = (*(a1 + 112) - *(a1 + 104)) >> 2;
    v69 = v55;
    sub_24BE6C134(v70, v61, &v69, v62);
    v57 = (v59 | v58 | v60) != 0;
    sub_24BE6B79C(a1, v70, v9, 1);
  }

  if (v76 != -1)
  {
    v63 = (*(a1 + 32) + 16 * v76);
    v64 = v63[1];
    *v63 = 0;
    v63[1] = 0;
    if (v64)
    {
      sub_24BC9EC78(v64);
    }
  }

  v76 = -1;
  if (v72 != -1)
  {
    v65 = (*(a1 + 8) + 16 * v72);
    v66 = v65[1];
    *v65 = 0;
    v65[1] = 0;
    if (v66)
    {
      sub_24BC9EC78(v66);
    }
  }

  v72 = -1;
  if (v70[0])
  {
    v70[1] = v70[0];
    operator delete(v70[0]);
  }

  if (v71[0])
  {
    v71[1] = v71[0];
    operator delete(v71[0]);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_24BE6C0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE6C134(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_24BE709B4(a1, a2 - v4, a3, a4);
  }
}

uint64_t sub_24BE6C164(uint64_t a1, int a2, int a3, uint64_t a4, double a5, double a6)
{
  v121 = *MEMORY[0x277D85DE8];
  v117 = -1;
  sub_24BC836D4(__p, "h:remesh_fixed");
  LOBYTE(v114[0]) = 0;
  v9 = sub_24BCDCDF8((a1 + 32), v114, __p);
  v117 = v9;
  if (v116 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 == -1)
  {
    sub_24BC836D4(__p, "h:remesh_fixed");
    sub_24BCB34E0(a1);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10 != v11)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = (*(a1 + 32) + 16 * v117);
      v16 = *v14;
      v15 = v14[1];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v15);
        v11 = *(a1 + 128);
        v10 = *(a1 + 136);
      }

      *(*(v16 + 40) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v12);
      v12 = v13;
      v17 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 2) > v13++;
    }

    while (v17);
  }

  v18 = a1 + 104;
  v19 = (*(a1 + 112) - *(a1 + 104)) >> 2;
  v20 = a6;
  *v114 = v20;
  sub_24BCDEA88(__p, v19);
  v21 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(v112[0]) = 0;
  sub_24BC9FEFC(v114, v21);
  if (*(a1 + 136) != *(a1 + 128))
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = v22 >> 6;
      v25 = 1 << v22;
      v26 = *(v114[0] + (v22 >> 6));
      if ((v26 & (1 << v22)) == 0)
      {
        *(v114[0] + v24) = v26 | v25;
        LODWORD(v112[0]) = v23 - 1;
        v27 = sub_24BCB9024(a1 + 104, v112);
        *(v114[0] + ((*v27 >> 3) & 0x1FFFFFF8)) |= 1 << *v27;
        LODWORD(v112[0]) = v23 - 1;
        v28 = sub_24BC9ECE4(a1, *(a1 + 180), v22);
        if ((*v28 & v29) != 0 || (v30 = sub_24BCB9024(a1 + 104, v112), v31 = sub_24BC9ECE4(a1, *(a1 + 180), *v30), (*v31 & v32) != 0))
        {
          LODWORD(v112[0]) = v23 - 1;
          v33 = sub_24BCB9024(a1 + 104, v112);
          *(__p[0] + *(v33 + 12)) = 0;
          LODWORD(v112[0]) = v23 - 1;
          v34 = sub_24BCB9024(a1 + 104, v112);
          v35 = sub_24BCB9024(a1 + 104, v34);
          *(__p[0] + *(v35 + 12)) = 0;
          v36 = (*(a1 + 32) + 16 * v117);
          v38 = *v36;
          v37 = v36[1];
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v37);
            v39 = (*(a1 + 32) + 16 * v117);
            v41 = *v39;
            v40 = v39[1];
            *(*(v38 + 40) + 8 * v24) |= v25;
            if (v40)
            {
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v40);
            }

            v38 = v41;
          }

          else
          {
            *(*(v38 + 40) + 8 * v24) |= v25;
          }

          LODWORD(v112[0]) = v23 - 1;
          v42 = sub_24BCB9024(a1 + 104, v112);
        }

        else
        {
          LODWORD(v112[0]) = 0;
          LODWORD(v109) = v23 - 1;
          sub_24BD3FD70(a1, &v109, v112);
          if (*v112 <= 0.523598776)
          {
            goto LABEL_22;
          }

          LODWORD(v109) = v23 - 1;
          v43 = sub_24BCB9024(a1 + 104, &v109);
          *(__p[0] + *(v43 + 12)) = 0;
          LODWORD(v109) = v23 - 1;
          v44 = sub_24BCB9024(a1 + 104, &v109);
          v45 = sub_24BCB9024(a1 + 104, v44);
          *(__p[0] + *(v45 + 12)) = 0;
          v46 = (*(a1 + 32) + 16 * v117);
          v38 = *v46;
          v47 = v46[1];
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v47);
            v48 = (*(a1 + 32) + 16 * v117);
            v50 = *v48;
            v49 = v48[1];
            *(*(v38 + 40) + 8 * v24) |= v25;
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v49);
            }

            v38 = v50;
          }

          else
          {
            *(*(v38 + 40) + 8 * v24) |= v25;
          }

          LODWORD(v109) = v23 - 1;
          v42 = sub_24BCB9024(a1 + 104, &v109);
        }

        *(*(v38 + 40) + ((*v42 >> 3) & 0x1FFFFFF8)) |= 1 << *v42;
      }

LABEL_22:
      v22 = v23;
      v17 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2) > v23++;
    }

    while (v17);
  }

  sub_24BE243D0(a1);
  if (a2 >= 1)
  {
    v52 = 0;
    v53 = a5 * a5 * (v51 * v51);
    do
    {
      v54 = -858993459 * ((*(a1 + 136) - *(a1 + 128)) >> 2);
      v55 = v54;
      LOBYTE(v109) = 0;
      sub_24BC9FEFC(v112, v54);
      v109 = 0;
      v110 = 0;
      v111 = 0;
      sub_24BCB8D20(&v109, (v54 * 0.1));
      if (v54)
      {
        for (i = 0; i != v54; ++i)
        {
          v57 = *(v112[0] + (i >> 6));
          if ((v57 & (1 << i)) == 0)
          {
            *v118 = i;
            *(v112[0] + (i >> 6)) = v57 | (1 << i);
            v58 = sub_24BCB9024(v18, v118);
            *(v112[0] + ((*v58 >> 3) & 0x1FFFFFF8)) |= 1 << *v58;
            v59 = sub_24BC9ECE4(a1, *(a1 + 180), *v118);
            if ((*v59 & v60) == 0)
            {
              v61 = sub_24BCB9024(v18, v118);
              v62 = sub_24BC9ECE4(a1, *(a1 + 180), *v61);
              if ((*v62 & v63) == 0)
              {
                v64 = sub_24BCB9024(v18, v118);
                v65 = *(sub_24BCB9024(v18, v64) + 12);
                v66 = (*(a1 + 8) + 16 * *(a1 + 176));
                v68 = *v66;
                v67 = v66[1];
                if (v67)
                {
                  atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v67);
                }

                v106 = *(*(v68 + 40) + 16 * v65);
                v69 = *(sub_24BCB9024(v18, v118) + 12);
                v70 = (*(a1 + 8) + 16 * *(a1 + 176));
                v72 = *v70;
                v71 = v70[1];
                if (v71)
                {
                  atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v71);
                }

                v73 = vsubq_f32(v106, *(*(v72 + 40) + 16 * v69));
                v74 = vmulq_f32(v73, v73);
                v74.i32[3] = 0;
                if (v53 < vaddv_f32(*&vpaddq_f32(v74, v74)))
                {
                  sub_24BCB4670(&v109, v118);
                }
              }
            }
          }
        }
      }

      v107 = v52;
      v75 = v110 - v109;
      v76 = (v110 - v109) >> 2;
      v77 = (*(a1 + 112) - *(a1 + 104)) >> 2;
      v79 = *(a1 + 152);
      v78 = *(a1 + 160);
      sub_24BCB38F8(a1, (v77 + v76));
      v80 = (v78 - v79) >> 2;
      sub_24BCB39C8(a1, v80 + (v75 >> 1));
      sub_24BCB3960(a1, v54 + 6 * v76);
      if (v54 + 6 * v76 > v54)
      {
        v82 = 6 * v76;
        do
        {
          v83 = sub_24BC9ECE4(a1, *(a1 + 180), v55);
          *v83 &= ~v84;
          ++v55;
          --v82;
        }

        while (v82);
      }

      v85 = (*(a1 + 112) - *(a1 + 104)) >> 2;
      *v118 = v20;
      sub_24BE6C134(__p, v85, v118, v81);
      sub_24BCB29DC(v114, 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2), 0);
      if (v76)
      {
        v86 = 0;
        v87 = v75 & 0x3FFFFFFFCLL;
        do
        {
          v120[0] = v80;
          v120[1] = v80 + 1;
          *v118 = v54;
          *&v118[4] = vaddq_s32(vdupq_n_s32(v54), xmmword_24BFEE100);
          v119 = v54 + 5;
          v108 = v77;
          if (sub_24BCD73E8(a1, (v109 + v86), &v108, v120, v118, 0, 1))
          {
            v88 = (*(a1 + 32) + 16 * v117);
            v90 = *v88;
            v89 = v88[1];
            if (v89)
            {
              atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v89);
            }

            if ((*(*(v90 + 40) + ((*(v109 + v86) >> 3) & 0x1FFFFFF8)) >> *(v109 + v86)))
            {
              *(__p[0] + v108) = 0;
              v91 = (*(a1 + 32) + 16 * v117);
              v93 = *v91;
              v92 = v91[1];
              if (v92)
              {
                atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v92);
                v94 = (*(a1 + 32) + 16 * v117);
                v95 = *v94;
                v92 = v94[1];
              }

              else
              {
                v95 = *v91;
              }

              *(*(v93 + 40) + ((*&v118[16] >> 3) & 0x1FFFFFF8)) |= 1 << v118[16];
              if (v92)
              {
                atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v92);
              }

              *(*(v95 + 40) + ((v119 >> 3) & 0x1FFFFFF8)) |= 1 << v119;
            }
          }

          v86 += 4;
          LODWORD(v77) = v77 + 1;
          v54 += 6;
          LODWORD(v80) = v80 + 2;
        }

        while (v87 != v86);
      }

      sub_24BE6B79C(a1, __p, a3, 1);
      sub_24BE6B2E8(a1);
      v18 = a1 + 104;
      if (*(a4 + 24))
      {
        sub_24BC836D4(v118, &unk_24C0435AF);
        sub_24BC976F4(a4, v118, (v107 / a2) * 100.0);
        if (SHIBYTE(v119) < 0)
        {
          operator delete(*v118);
        }
      }

      if (v109)
      {
        v110 = v109;
        operator delete(v109);
      }

      if (v112[0])
      {
        operator delete(v112[0]);
      }

      v52 = v107 + 1;
    }

    while (v107 + 1 != a2);
  }

  sub_24BC836D4(v112, off_27F078F98[0]);
  v109 = 0;
  v110 = 0;
  v96 = sub_24BCB6470((a1 + 8), &v109, v112);
  if (v113 < 0)
  {
    operator delete(v112[0]);
  }

  if (v96 != -1)
  {
    v97 = sub_24BCB3A30(a1);
LABEL_84:
    v100 = v97;
    goto LABEL_85;
  }

  sub_24BC836D4(v112, off_27F078FD0[0]);
  v109 = 0;
  v110 = 0;
  v98 = sub_24BCB6470((a1 + 56), &v109, v112);
  if (v113 < 0)
  {
    operator delete(v112[0]);
  }

  if (v98 != -1)
  {
    v97 = sub_24BCB3B5C(a1);
    goto LABEL_84;
  }

  sub_24BC836D4(v112, off_27F078FE0[0]);
  v109 = 0;
  v110 = 0;
  if (sub_24BCB6470((a1 + 80), &v109, v112) == -1)
  {
    v99 = 0;
  }

  else
  {
    sub_24BC836D4(&v109, off_27F078FC0[0]);
    *&v118[4] = 0;
    *v118 = 0;
    v99 = sub_24BCCAA0C((a1 + 56), v118, &v109) != -1;
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }
  }

  if (v113 < 0)
  {
    operator delete(v112[0]);
    if (v99)
    {
      goto LABEL_83;
    }
  }

  else if (v99)
  {
LABEL_83:
    LODWORD(v112[0]) = 1091567616;
    v97 = sub_24BCDA638(a1, v112);
    goto LABEL_84;
  }

  v100 = 1;
LABEL_85:
  if (v114[0])
  {
    operator delete(v114[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v101 = *MEMORY[0x277D85DE8];
  return v100;
}

void sub_24BE6CBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE6CD24(uint64_t a1)
{
  v2 = (*(a1 + 136) - *(a1 + 128)) >> 2;
  LOBYTE(v5) = 0;
  sub_24BC9FEFC(&v6, (-858993459 * v2));
  sub_24BC836D4(&v5, "th:isnew_subdiv");
  sub_24BC836D4(&v4, "tv:isnew_subdiv");
  v3 = -1;
  sub_24BCB34E0(a1);
}

void sub_24BE6D254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE6D2D8(uint64_t a1)
{
  v2 = (*(a1 + 136) - *(a1 + 128)) >> 2;
  LOBYTE(v5) = 0;
  sub_24BC9FEFC(&v6, (-858993459 * v2));
  sub_24BC836D4(&v5, "th:isnew_subdiv");
  sub_24BC836D4(&v4, "tv:isnew_subdiv");
  v3 = -1;
  sub_24BCB34E0(a1);
}

void sub_24BE6D89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE6D968(uint64_t a1, uint64_t a2, float *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v5 = sub_24BD56D5C(a1);
    sub_24BE243D0(a1);
    v7 = v6;
    v8 = *a3;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_24BE6DC60(&v20, (*(a1 + 112) - *(a1 + 104)) >> 1);
    memset(__p, 0, sizeof(__p));
    v9 = (*(a1 + 8) + 16 * *(a1 + 176));
    v11 = *v9;
    v10 = v9[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v10);
    }

    if (*(a1 + 112) != *(a1 + 104))
    {
      v12 = 0;
      v13 = v7 * v8;
      do
      {
        v14 = 16 * v12;
        v18 = *(*(v5 + 40) + v14);
        v26[0] = *(*(v11 + 40) + v14);
        v17 = v26[0];
        v26[1] = v18;
        v27 = 0;
        v28 = v13;
        sub_24BE6DD88(&v20, v26);
        v23[0] = v17;
        v23[1] = vnegq_f32(v18);
        v24 = 0;
        v25 = v13;
        sub_24BE6DD88(&v20, v23);
        ++v12;
      }

      while (v12 < (*(a1 + 112) - *(a1 + 104)) >> 2);
    }

    sub_24BE48710(__p, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 4));
    sub_24BE485E4();
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BE6DC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE6DC60(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BE07554(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BE6DD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE6DD88(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BE70BFC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void sub_24BE6DDE0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  LOBYTE(v2.__locale_) = 3;
  sub_24BDAE740();
}

void sub_24BE6DFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_24BC9F18C((v19 + 8), a10);
  sub_24BC9F18C((v21 - 64), *(v21 - 72));
  v23 = &a19;
  v24 = -64;
  do
  {
    sub_24BC9F18C(v23, *(v23 - 8));
    v23 -= 4;
    v24 += 32;
  }

  while (v24);
  sub_24BC9F18C((v20 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE6E058(_DWORD *a1, void *a2)
{
  v11[0] = 0;
  v12 = 0;
  sub_24BC9C7E0(a2, v11);
  if (v11[0] == 1)
  {
    v3 = sub_24BCB0080(v12, "intersect_range");
    if (v12 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v11, "intersect_range");
      LOBYTE(__p) = 0;
      v9 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v9, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v11, "intersect_range");
        LODWORD(__p) = 0;
        sub_24BCB0594(v6, &__p, v7);
        *a1 = __p;
        sub_24BC836D4(&__p, "intersect_range");
        sub_24BC9CAB4(v11, &__p);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v11 + 8 * *(v10 - 24) + 272) = 2;
  sub_24BC9BD14(&v10);
}

void sub_24BE6E364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE6E348);
  }

  _Unwind_Resume(a1);
}

void sub_24BE6E3EC(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE6DDE0();
}

uint64_t sub_24BE6E53C(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE6E058(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE6E6A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE6E724()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BCB0A6C();
}

void sub_24BE6EB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_24BC9F18C((v46 + 8), a10);
  v50 = (v48 - 96);
  v51 = -160;
  do
  {
    sub_24BC9F18C(v50, *(v50 - 8));
    v50 -= 4;
    v51 += 32;
  }

  while (v51);
  v52 = &a19;
  v53 = -64;
  do
  {
    sub_24BC9F18C(v52, *(v52 - 8));
    v52 -= 4;
    v53 += 32;
  }

  while (v53);
  v54 = &a27;
  v55 = -64;
  do
  {
    sub_24BC9F18C(v54, *(v54 - 8));
    v54 -= 4;
    v55 += 32;
  }

  while (v55);
  v56 = &a35;
  v57 = -64;
  do
  {
    sub_24BC9F18C(v56, *(v56 - 8));
    v56 -= 4;
    v57 += 32;
  }

  while (v57);
  v58 = &a43;
  v59 = -64;
  do
  {
    sub_24BC9F18C(v58, *(v58 - 8));
    v58 -= 4;
    v59 += 32;
  }

  while (v59);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a46 + i + 40), *(&a46 + i + 32));
  }

  sub_24BC9F18C((v47 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE6ED00(uint64_t a1, void *a2)
{
  v26[0] = 0;
  v27 = 0;
  sub_24BC9C7E0(a2, v26);
  if (v26[0] == 1)
  {
    v3 = sub_24BCB0080(v27, "iterations");
    if (v27 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v26, "iterations");
      LOBYTE(__p) = 0;
      v24 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v24, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v26, "iterations");
        LODWORD(__p) = 0;
        sub_24BD6C094(v6, &__p);
        *a1 = __p;
        sub_24BC836D4(&__p, "iterations");
        sub_24BC9CAB4(v26, &__p);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v26[0] == 1)
    {
      v7 = sub_24BCB0080(v27, "split_ratio");
      if (v27 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v26, "split_ratio");
        LOBYTE(__p) = 0;
        v24 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v24, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v26, "split_ratio");
          __p = 0;
          sub_24BCB0BDC(v10, &__p);
          *(a1 + 8) = __p;
          sub_24BC836D4(&__p, "split_ratio");
          sub_24BC9CAB4(v26, &__p);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v26[0] == 1)
      {
        v11 = sub_24BCB0080(v27, "collapse_ratio");
        if (v27 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v26, "collapse_ratio");
          LOBYTE(__p) = 0;
          v24 = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&v24, __p);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v26, "collapse_ratio");
            __p = 0;
            sub_24BCB0BDC(v14, &__p);
            *(a1 + 16) = __p;
            sub_24BC836D4(&__p, "collapse_ratio");
            sub_24BC9CAB4(v26, &__p);
            if (SHIBYTE(v25) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v26[0] == 1)
        {
          v15 = sub_24BCB0080(v27, "smooth_lambda");
          if (v27 + 8 != v15)
          {
            v16 = sub_24BC9C8EC(v26, "smooth_lambda");
            LOBYTE(__p) = 0;
            v24 = 0;
            v17 = sub_24BCB01B0(v16, &__p);
            sub_24BC9F18C(&v24, __p);
            if ((v17 & 1) == 0)
            {
              v18 = sub_24BC9C8EC(v26, "smooth_lambda");
              __p = 0;
              sub_24BCB0BDC(v18, &__p);
              *(a1 + 24) = __p;
              sub_24BC836D4(&__p, "smooth_lambda");
              sub_24BC9CAB4(v26, &__p);
              if (SHIBYTE(v25) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v26[0] == 1)
          {
            v19 = sub_24BCB0080(v27, "smooth_iterations");
            if (v27 + 8 != v19)
            {
              v20 = sub_24BC9C8EC(v26, "smooth_iterations");
              LOBYTE(__p) = 0;
              v24 = 0;
              v21 = sub_24BCB01B0(v20, &__p);
              sub_24BC9F18C(&v24, __p);
              if ((v21 & 1) == 0)
              {
                v22 = sub_24BC9C8EC(v26, "smooth_iterations");
                LODWORD(__p) = 0;
                sub_24BD6C094(v22, &__p);
                *(a1 + 32) = __p;
                sub_24BC836D4(&__p, "smooth_iterations");
                sub_24BC9CAB4(v26, &__p);
                if (SHIBYTE(v25) < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v26 + 8 * *(v25 - 24) + 272) = 2;
  sub_24BC9BD14(&v25);
}

void sub_24BE6F2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE6F2C0);
  }

  _Unwind_Resume(a1);
}

void sub_24BE6F384(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE6E724();
}

uint64_t sub_24BE6F4D4(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE6ED00(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE6F640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE6F6BC()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE62C();
}

void sub_24BE6F9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_24BC9F18C((v30 + 8), a10);
  v34 = (v32 - 96);
  v35 = -96;
  do
  {
    sub_24BC9F18C(v34, *(v34 - 8));
    v34 -= 4;
    v35 += 32;
  }

  while (v35);
  v36 = &a19;
  v37 = -64;
  do
  {
    sub_24BC9F18C(v36, *(v36 - 8));
    v36 -= 4;
    v37 += 32;
  }

  while (v37);
  v38 = &a27;
  v39 = -64;
  do
  {
    sub_24BC9F18C(v38, *(v38 - 8));
    v38 -= 4;
    v39 += 32;
  }

  while (v39);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a30 + i + 40), *(&a30 + i + 32));
  }

  sub_24BC9F18C((v31 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE6FB40(uint64_t a1, void *a2)
{
  v19[0] = 0;
  v20 = 0;
  sub_24BC9C7E0(a2, v19);
  v3 = sub_24BC9C8EC(v19, "lambda_weights");
  LOBYTE(__p) = 0;
  v15 = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&v15, __p);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v19, "lambda_weights");
    sub_24BE41B74(v5, &__p);
    if (&__p != a1)
    {
      sub_24BCA2A30(a1, __p, v15, (v15 - __p) >> 2);
    }

    sub_24BC836D4(&v17, "lambda_weights");
    sub_24BC9CAB4(v19, &v17.__locale_);
    if (v18 < 0)
    {
      operator delete(v17.__locale_);
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  if (v19[0] == 1)
  {
    v6 = sub_24BCB0080(v20, "iterations");
    if (v20 + 8 != v6)
    {
      v7 = sub_24BC9C8EC(v19, "iterations");
      LOBYTE(__p) = 0;
      v15 = 0;
      v8 = sub_24BCB01B0(v7, &__p);
      sub_24BC9F18C(&v15, __p);
      if ((v8 & 1) == 0)
      {
        v9 = sub_24BC9C8EC(v19, "iterations");
        LODWORD(__p) = 0;
        sub_24BCB07E0(v9, &__p);
        *(a1 + 24) = __p;
        sub_24BC836D4(&__p, "iterations");
        sub_24BC9CAB4(v19, &__p);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v19[0] == 1)
    {
      v10 = sub_24BCB0080(v20, "fix_boundary");
      if (v20 + 8 != v10)
      {
        v11 = sub_24BC9C8EC(v19, "fix_boundary");
        LOBYTE(__p) = 0;
        v15 = 0;
        v12 = sub_24BCB01B0(v11, &__p);
        sub_24BC9F18C(&v15, __p);
        if ((v12 & 1) == 0)
        {
          v13 = sub_24BC9C8EC(v19, "fix_boundary");
          LOBYTE(__p) = 0;
          sub_24BCB0940(v13, &__p);
          *(a1 + 28) = __p;
          sub_24BC836D4(&__p, "fix_boundary");
          sub_24BC9CAB4(v19, &__p);
          if (SHIBYTE(v16) < 0)
          {
            operator delete(__p);
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&v16 + *(v16 - 24) + 24) = 2;
  sub_24BC9BD14(&v16);
}

void sub_24BE6FFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 64));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE6FF90);
  }

  _Unwind_Resume(a1);
}

void sub_24BE70078(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE6F6BC();
}

uint64_t sub_24BE701C8(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE6FB40(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE70334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE703B0(void *a1)
{
  v62 = -1;
  sub_24BC836D4(&__p, off_27F078FB8[0]);
  sub_24BCB1F74(a1, &v62, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v60 = 0;
  v61 = 0;
  if (((a1[20] - a1[19]) & 0x3FFFFFFFCLL) == 0)
  {
    return 1;
  }

  v2 = 0;
  while (1)
  {
    LODWORD(v57) = v2;
    sub_24BCB1D48(a1, &v57, &__p);
    v3 = __p;
    v4 = (v60 - __p) >> 2;
    if (v4 >= 5)
    {
      break;
    }

LABEL_43:
    v60 = v3;
    if (++v2 >= ((a1[20] - a1[19]) >> 2))
    {
      v42 = 1;
      if (!v3)
      {
        return v42;
      }

      goto LABEL_48;
    }
  }

  sub_24BC95764(&v57, v4);
  v5 = __p;
  if (v60 == __p)
  {
    v11 = 0;
    v10 = 0;
    v7 = v57;
  }

  else
  {
    v6 = 0;
    do
    {
      sub_24BCDAEE4(a1, v5[v6]);
      v7 = v57;
      *(v57 + v6++) = v8;
      v5 = __p;
      v9 = v60 - __p;
    }

    while (v6 < (v60 - __p) >> 2);
    v10 = v9 >> 2;
    v11 = v9 == 24;
  }

  v12 = v7 + 1;
  v13 = v7 == v58 || v12 == v58;
  v14 = v7;
  if (!v13)
  {
    v15 = *v7;
    v14 = v7;
    v16 = v7 + 1;
    do
    {
      v17 = *v16++;
      v18 = v17;
      if (v15 < v17)
      {
        v15 = v18;
        v14 = v12;
      }

      v12 = v16;
    }

    while (v16 != v58);
  }

  v19 = v14 - v7;
  v20 = (v19 + 3) % v10;
  if (v11)
  {
    goto LABEL_25;
  }

  v21 = v10 + v19 - 3;
  v22 = v7[v20];
  v23 = v21 % v10;
  v24 = v7[v21 % v10];
  if (v22 <= v24)
  {
    v25 = v21 % v10;
  }

  else
  {
    v25 = (v19 + 3) % v10;
  }

  if (v25 != 0xFFFFFFFF)
  {
    if (v22 <= v24)
    {
LABEL_26:
      v55 = -1;
      v56 = -1;
      v56 = *(sub_24BCB9024((a1 + 13), &v5[v23]) + 12);
      v55 = *(sub_24BCB9024((a1 + 13), __p + v19) + 12);
      LODWORD(v45) = -1;
      *&v44 = -1;
      *(&v44 + 1) = -1;
      v54 = sub_24BCB45D0(a1, 0, &v44);
      LODWORD(v45) = -1;
      *&v44 = -1;
      *(&v44 + 1) = -1;
      v53 = sub_24BCB45D0(a1, 0, &v44);
      LODWORD(v44) = -1;
      v26 = sub_24BCB9320(a1 + 13, &v44);
      sub_24BCB389C(a1);
      v51 = v2;
      v52 = v26;
      v50 = *(__p + v23);
      v27 = (v60 - __p) >> 2;
      v49 = *(__p + (v23 + 1) % v27);
      v48 = *(__p + (v23 + 2) % v27);
      v47 = *(__p + (v23 + 3) % v27);
      v46 = *(__p + (v23 + v27 - 1) % v27);
      sub_24BCB9048((a1 + 13), &v54, &v50);
      sub_24BCB9048((a1 + 13), &v48, &v54);
      sub_24BCB9048((a1 + 13), &v53, &v47);
      sub_24BCB9048((a1 + 13), &v46, &v53);
      sub_24BCB9074((a1 + 13), &v54, &v53);
      sub_24BCB90A0((a1 + 13), &v51, &v50);
      sub_24BCB90A0((a1 + 13), &v51, &v49);
      sub_24BCB90A0((a1 + 13), &v51, &v48);
      v28 = __p;
      v29 = (v23 + 3) % ((v60 - __p) >> 2);
      v30 = v29;
      for (i = v29; i != v23; i = (i + 1) % ((v60 - __p) >> 2))
      {
        sub_24BCB90A0((a1 + 13), &v52, &v28[i]);
        v28 = __p;
      }

      sub_24BCB90A0((a1 + 13), &v51, &v54);
      sub_24BCB90A0((a1 + 13), &v52, &v53);
      sub_24BCB90C8(a1 + 13, &v53, &v56);
      sub_24BCB90C8(a1 + 13, &v54, &v55);
      if (v62 != -1)
      {
        v32 = (a1[7] + 16 * v62);
        v34 = *v32;
        v33 = v32[1];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v33);
          v35 = (a1[7] + 16 * v62);
          v37 = *v35;
          v36 = v35[1];
          v38 = (*(v34 + 40) + 24 * v51);
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v36);
          }

          v34 = v37;
        }

        else
        {
          v38 = (*(v34 + 40) + 24 * v51);
        }

        v39 = (*(v34 + 40) + 24 * v52);
        v44 = 0uLL;
        v45 = 0;
        if (v29 != v23)
        {
          do
          {
            sub_24BC97D60(v39, *v38 + v30);
            v30 = (v30 + 1) % ((v60 - __p) >> 2);
          }

          while (v30 != v23);
        }

        sub_24BC97D60(v39, *v38 + v23);
        for (; v23 != v29; v23 = (v23 + 1) % ((v60 - __p) >> 2))
        {
          sub_24BC97D60(&v44, *v38 + v23);
        }

        sub_24BC97D60(&v44, *v38 + v29);
        v40 = *v38;
        *v38 = v44;
        v41 = v38[2];
        v38[2] = v45;
        *&v44 = v40;
        v45 = v41;
        if (v40)
        {
          *(&v44 + 1) = v40;
          operator delete(v40);
        }
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      v3 = __p;
      goto LABEL_43;
    }

LABEL_25:
    v23 = v14 - v7;
    v19 = v20;
    goto LABEL_26;
  }

  v58 = v7;
  operator delete(v7);
  v42 = 0;
  v3 = __p;
  if (!__p)
  {
    return v42;
  }

LABEL_48:
  v60 = v3;
  operator delete(v3);
  return v42;
}

void sub_24BE7092C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE709B4(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_24BFBC5B0)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_24BFBC5E0)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      sub_24BC8E01C();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_24BC92E0C(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_24BFBC5E0)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

uint64_t sub_24BE70BFC(uint64_t *a1, uint64_t a2)
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

  v14 = a1;
  if (v6)
  {
    sub_24BE07554(a1, v6);
  }

  v7 = 48 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  v12 = 48 * v2 + 48;
  sub_24BE1A350(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 48) % 0x30uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_24BE70D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TestGESSAlgPrepareInverseRenderDataExample(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (GESSEnvMLXAvailable_0())
  {
    v8 = objc_msgSend_path(v3, v5, v6, v7);
    v9 = v8;
    v13 = objc_msgSend_UTF8String(v9, v10, v11, v12);
    sub_24BC836D4(&v30, v13);

    v17 = objc_msgSend_path(v4, v14, v15, v16);
    v18 = v17;
    v22 = objc_msgSend_UTF8String(v18, v19, v20, v21);
    sub_24BC836D4(&v29, v22);

    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_24BCCA6F0(&v25, &v30);
    sub_24BCCA6F0(&__p, &v29);
    sub_24BCBAEC8(&v25, &__p);
  }

  return 0;
}

uint64_t GESSAlgInverseRenderOutOfCore(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ((GESSEnvMLXAvailable_0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = objc_msgSend_count(v10, v14, v15, v16);
  if (v17 != objc_msgSend_count(v11, v18, v19, v20))
  {
    goto LABEL_27;
  }

  v24 = objc_msgSend_path(v9, v21, v22, v23);
  v25 = v24;
  v29 = objc_msgSend_UTF8String(v25, v26, v27, v28);
  sub_24BC836D4(&v90, v29);

  v33 = objc_msgSend_path(v12, v30, v31, v32);
  v34 = v33;
  v38 = objc_msgSend_UTF8String(v34, v35, v36, v37);
  sub_24BC836D4(&v89, v38);

  v42 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  while (1)
  {
    v46 = objc_msgSend_count(v10, v39, v40, v41);
    if (v46 <= v42)
    {
      break;
    }

    v47 = objc_msgSend_objectAtIndex_(v11, v43, v42, v45);
    v51 = objc_msgSend_path(v47, v48, v49, v50);
    v52 = v51;
    v56 = objc_msgSend_UTF8String(v52, v53, v54, v55);
    sub_24BC836D4(&v82, v56);

    sub_24BCCA6F0(__p, &v82);
    v59 = v84;
    if (v84 >= v85)
    {
      v84 = sub_24BE73D80(&v83, __p);
      if (SBYTE7(v79) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v60 = *__p;
      *(v84 + 16) = v79;
      *v59 = v60;
      v84 = v59 + 24;
    }

    v61 = objc_msgSend_objectAtIndex_(v10, v57, v42, v58);
    if (objc_msgSend_length(v61, v62, v63, v64) <= 0x3F)
    {

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      v76 = 1;
      goto LABEL_20;
    }

    v65 = v61;
    v69 = objc_msgSend_bytes(v65, v66, v67, v68);
    *__p = xmmword_24BFEE578;
    v79 = unk_24BFEE588;
    v80 = xmmword_24BFEE598;
    v81 = unk_24BFEE5A8;
    v70 = *v69;
    LODWORD(v79) = v69[1];
    LODWORD(v80) = v69[2];
    LODWORD(v81) = v69[3];
    v71 = v69[5];
    __p[0] = __PAIR64__(v69[4], v70);
    DWORD1(v80) = v69[6];
    DWORD1(v81) = v69[7];
    v72 = v69[8];
    *(&v79 + 4) = __PAIR64__(v69[9], v71);
    v73 = v69[10];
    DWORD2(v81) = v69[11];
    v74 = v69[13];
    __p[1] = __PAIR64__(v69[12], v72);
    HIDWORD(v79) = v74;
    v75 = v69[15];
    *(&v80 + 1) = __PAIR64__(v69[14], v73);
    HIDWORD(v81) = v75;
    sub_24BCBAE58(&v86, __p);

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    ++v42;
  }

  objc_msgSend_iterations(v13, v43, v44, v45);
  sub_24BCCA6F0(__p, &v90);
  sub_24BCCA6F0(&v82, &v89);
  v76 = sub_24BCBBF24(__p, &v86, &v83);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v79) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  __p[0] = &v83;
  sub_24BC955F4(__p);
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (v46 > v42)
  {
LABEL_27:
    v76 = 0;
  }

  return v76;
}

void sub_24BE715D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  a11 = &a28;
  sub_24BC955F4(&a11);
  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  if (*(v32 - 113) < 0)
  {
    operator delete(*(v32 - 136));
  }

  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BE71598);
}

void sub_24BE7170C(void **a1, int a2)
{
  v3 = 1;
  v2[0] = 1.0472;
  LODWORD(v2[1]) = a2;
  v4 = 0x4080000000000002;
  sub_24BE4CD00(*a1, v2);
}

uint64_t sub_24BE71754(CGImage *a1, _DWORD *a2, _DWORD *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  if (CGImageGetPixelFormatInfo(a1) || (ColorSpace = CGImageGetColorSpace(a1), CGColorSpaceGetModel(ColorSpace) >= kCGColorSpaceModelCMYK) || ((NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace), BitsPerComponent = CGImageGetBitsPerComponent(a1), BitsPerPixel = CGImageGetBitsPerPixel(a1), v11 = BitsPerPixel, BitsPerPixel != 24) ? (v12 = BitsPerPixel == 32) : (v12 = 1), !v12 ? (v13 = 0) : (v13 = 1), (NumberOfComponents != 3 || BitsPerComponent != 8 || (v13 & 1) == 0) && (NumberOfComponents != 1 || BitsPerComponent != 8 || BitsPerPixel != 8)))
  {
    sub_24BCB9878(&v41);
    goto LABEL_18;
  }

  AlphaInfo = CGImageGetAlphaInfo(a1);
  v15 = CGImageGetBitmapInfo(a1) & 0xF00;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  *a2 = Width;
  *a3 = Height;
  DataProvider = CGImageGetDataProvider(a1);
  v19 = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(v19);
  if (v15)
  {
    CFRelease(v19);
    sub_24BCB9878(&v41);
    goto LABEL_18;
  }

  v23 = BytePtr;
  v24 = v11 >> 3;
  v25 = Height * Width;
  if (NumberOfComponents == 1)
  {
    sub_24BC94EB0(v40, Height * Width);
    if (v25)
    {
      for (i = 0; i != v25; ++i)
      {
        *(v40[0] + i) = *v23;
        v23 += v24;
      }
    }

    CFRelease(v19);
    v42 = Height;
    v43 = Width;
    v44 = 1;
    v38 = 0;
    v39 = 0;
    __p = 0;
    sub_24BCC9910(&__p, &v42, &v45, 3uLL);
    sub_24BCB9958();
  }

  sub_24BC94EB0(v40, 3 * v25);
  v36 = Width;
  if (AlphaInfo <= kCGImageAlphaNoneSkipLast && ((1 << AlphaInfo) & 0x29) != 0)
  {
    if (v25)
    {
      v27 = 0;
      v28 = v23 + 2;
      do
      {
        *(v40[0] + v27) = *(v28 - 2);
        *(v40[0] + v27 + 1) = *(v28 - 1);
        *(v40[0] + v27 + 2) = *v28;
        v27 += 3;
        v28 += v24;
        --v25;
      }

      while (v25);
    }

    goto LABEL_30;
  }

  if ((AlphaInfo & 0xFFFFFFFD) == 4)
  {
    if (v25)
    {
      v29 = 0;
      v30 = v23 + 3;
      do
      {
        *(v40[0] + v29) = *(v30 - 2);
        *(v40[0] + v29 + 1) = *(v30 - 1);
        *(v40[0] + v29 + 2) = *v30;
        v29 += 3;
        v30 += v24;
        --v25;
      }

      while (v25);
    }

    goto LABEL_30;
  }

  if (AlphaInfo == kCGImageAlphaPremultipliedLast)
  {
    if (v25)
    {
      v31 = 0;
      v32 = (v23 + 3);
      do
      {
        v33 = *(v32 - 2);
        v34 = *(v32 - 1);
        v35 = *v32;
        *(v40[0] + v31) = sub_24BD56E80(*(v32 - 3), v35);
        *(v40[0] + v31 + 1) = sub_24BD56E80(v33, v35);
        v32 += v24;
        *(v40[0] + v31 + 2) = sub_24BD56E80(v34, v35);
        v31 += 3;
        --v25;
      }

      while (v25);
    }

LABEL_30:
    CFRelease(v19);
    v42 = Height;
    v43 = v36;
    v44 = 3;
    v38 = 0;
    v39 = 0;
    __p = 0;
    sub_24BCC9910(&__p, &v42, &v45, 3uLL);
    sub_24BCB9958();
  }

  CFRelease(v19);
  sub_24BCB9878(&v41);
  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

LABEL_18:
  objc_autoreleasePoolPop(v6);
  result = v41;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BE71B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE72554(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, std::__shared_weak_count *a46, uint64_t a47, std::__shared_weak_count *a48, void *a49, std::__shared_weak_count *a50)
{
  if (a2)
  {
    if (a50)
    {
      sub_24BC9EC78(a50);
    }

    sub_24BC9EC78(a16);
    if (a44)
    {
      sub_24BC9EC78(a44);
    }

    sub_24BC9EC78(a17);
    if (a46)
    {
      sub_24BC9EC78(a46);
    }

    sub_24BE4A5A0(v50 - 160);
    if (a48)
    {
      sub_24BC9EC78(a48);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE72510);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BE727B8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_24BE7335C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    sub_24BE739BC(a1 + 24, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 4));
    sub_24BCCEEA4((a1 + 48), *(a2 + 48), (a2 + 56));
  }

  return a1;
}

uint64_t GESSAlgInverseRender(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc_init(GESSAlgInverseRenderExtended);
  objc_msgSend_setOptions_(v15, v16, v13, v17);
  v19 = objc_msgSend_run_mvps_imageSets_outputMesh_(v15, v18, v9, v10, v11, v12);

  objc_autoreleasePoolPop(v14);
  return v19;
}

void sub_24BE730EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (a2)
  {
    if (a17)
    {
      sub_24BC9EC78(a17);
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (a22)
    {
      sub_24BC9EC78(a22);
    }

    sub_24BE4A5A0(v38 - 128);
    if (a25)
    {
      operator delete(a25);
    }

    if (a28)
    {
      operator delete(a28);
    }

    if (a31)
    {
      operator delete(a31);
    }

    if (a34)
    {
      operator delete(a34);
    }

    if (a37)
    {
      operator delete(a37);
    }

    v40 = *(v38 - 232);
    if (v40)
    {
      *(v38 - 224) = v40;
      operator delete(v40);
    }

    v41 = *(v38 - 200);
    if (v41)
    {
      sub_24BC9EC78(v41);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x24BE72DACLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GESSAlgAdaptiveCubeInference(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_alloc_init(GESSAlgAdaptiveCubeInferenceExtended);
  objc_msgSend_setOptions_(v14, v15, v13, v16);
  v18 = objc_msgSend_run_deform_weight_outputMesh_(v14, v17, v9, v10, v11, v12);

  return v18;
}

void sub_24BE7335C(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_24BE734CC(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_24BE73538(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_24BE73668(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_24BCCB568(a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_24BE73668(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_24BE73584(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_24BE734CC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_24BCCB568(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_24BE73538(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_24BCCF4C0(a1, a2);
  }

  sub_24BC8E01C();
}

void *sub_24BE73584(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_24BC8DE9C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
      }

      sub_24BD47F8C(v4 + 3, v6 + 24);
      v6 += 3;
      v4 = v12 + 48;
      v12 += 48;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_24BCCF614(v9);
  return v4;
}

std::string *sub_24BE73668(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    p_size = &__str[1].__r_.__value_.__l.__size_;
    do
    {
      std::string::operator=(this, v5);
      if (v5 != this)
      {
        sub_24BE736E8(&this[1], v5[1].__r_.__value_.__l.__data_, p_size);
      }

      v5 += 2;
      this += 2;
      p_size += 6;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t **sub_24BE736E8(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_24BCCF0F8(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 16) = *(v9 + 16);
          sub_24BE73854(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_24BCCF0F8(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_24BE738C4(&v12);
  }

  if (a2 != a3)
  {
    sub_24BE7391C();
  }

  return result;
}

void sub_24BE73840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE738C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE73854(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_24BC8FEC4(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_24BE738C4(uint64_t a1)
{
  sub_24BCC8A84(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_24BCC8A84(*a1, v2);
  }

  return a1;
}

void sub_24BE739BC(uint64_t a1, int *a2, int *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_24BE73B2C(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_24BE73B98(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_24BE73CE8(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_24BCCB48C(a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_24BE73CE8(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = sub_24BE73BE4(a1, a2 + v11, a3, *(a1 + 8));
  }
}

void sub_24BE73B2C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_24BCCB48C(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_24BE73B98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_24BCCF94C(a1, a2);
  }

  sub_24BC8E01C();
}

uint64_t sub_24BE73BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 24);
    do
    {
      v8 = v6 - 24;
      v7 = *(v6 - 6);
      *(v4 + 4) = *(v6 - 10);
      *v4 = v7;
      v9 = *(v6 - 1);
      *(v4 + 8) = *(v6 - 2);
      *(v4 + 16) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      if (*(v6 + 23) < 0)
      {
        sub_24BC8DE9C((v4 + 24), *v6, *(v6 + 1));
        v4 = v15;
      }

      else
      {
        v10 = *v6;
        *(v4 + 40) = *(v6 + 2);
        *(v4 + 24) = v10;
      }

      v4 += 48;
      v15 = v4;
      v6 += 3;
    }

    while (v8 + 48 != a3);
  }

  v13 = 1;
  sub_24BCCFA78(v12);
  return v4;
}

void sub_24BE73CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 16);
  if (v11)
  {
    sub_24BC9EC78(v11);
  }

  sub_24BCCFA78(&a9);
  _Unwind_Resume(a1);
}

int *sub_24BE73CE8(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *v5;
    *(a4 + 4) = *(v5 + 2);
    *a4 = v7;
    v9 = *(v5 + 1);
    v8 = *(v5 + 2);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(a4 + 16);
    *(a4 + 8) = v9;
    *(a4 + 16) = v8;
    if (v10)
    {
      sub_24BC9EC78(v10);
    }

    std::string::operator=((a4 + 24), v5 + 1);
    a4 += 48;
    v5 += 12;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_24BE73D80(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
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

  v18 = a1;
  if (v6)
  {
    sub_24BC8E034(a1, v6);
  }

  v7 = 24 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *&v17 = 24 * v2 + 24;
  v9 = *(a1 + 8);
  v10 = 24 * v2 + *a1 - v9;
  sub_24BE3D5DC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_24BC8E08C(&v15);
  return v14;
}

void sub_24BE73EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC8E08C(va);
  _Unwind_Resume(a1);
}

void *sub_24BE73F24(void *a1, char **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F97620;
  sub_24BE74064(&v4, a1 + 3, a2);
  return a1;
}

void sub_24BE73FB4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F97620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BE74008(uint64_t a1)
{
  sub_24BE4A5A4(a1 + 56);

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void sub_24BE74064(uint64_t a1, void *a2, char **a3)
{
  sub_24BC836D4(&__p, *a3);
  sub_24BE4A2AC(a2);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BE740B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE74140(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97658;
  a2[1] = v2;
  return result;
}

void sub_24BE7416C(uint64_t a1)
{
  v2 = sub_24BE4A2B0(**(a1 + 8));
  v3 = sub_24BE4A2B8(**(a1 + 8), "Parameterization");
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_24BC7E000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Parameterization", &unk_24C0CF52B, v4, 2u);
  }
}

uint64_t sub_24BE74290(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F976A0;
  a2[1] = v2;
  return result;
}

void sub_24BE742BC(uint64_t a1)
{
  v2 = sub_24BE4A2B0(**(a1 + 8));
  v3 = sub_24BE4A2B8(**(a1 + 8), "Parameterization");
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_24BC7E000, v2, OS_SIGNPOST_INTERVAL_END, v3, "Parameterization", &unk_24C0CF52B, v4, 2u);
  }
}

uint64_t sub_24BE743E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F976E8;
  a2[1] = v2;
  return result;
}

void sub_24BE7440C(uint64_t a1)
{
  v2 = sub_24BE4A2B0(**(a1 + 8));
  v3 = sub_24BE4A2B8(**(a1 + 8), "DataConversion");
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_24BC7E000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "DataConversion", &unk_24C0CF52B, v4, 2u);
  }
}

uint64_t sub_24BE74530(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97730;
  a2[1] = v2;
  return result;
}

void sub_24BE7455C(uint64_t a1)
{
  v2 = sub_24BE4A2B0(**(a1 + 8));
  v3 = sub_24BE4A2B8(**(a1 + 8), "DataConversion");
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_24BC7E000, v2, OS_SIGNPOST_INTERVAL_END, v3, "DataConversion", &unk_24C0CF52B, v4, 2u);
  }
}

void *sub_24BE74610(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BE746A0(result, a2);
  }

  return result;
}

void sub_24BE74678(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE746A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_24BDBD3F4(a1, a2);
  }

  sub_24BC8E01C();
}

uint64_t sub_24BE7474C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97778;
  a2[1] = v2;
  return result;
}

void sub_24BE74778(uint64_t a1)
{
  v2 = sub_24BE4A2B0(**(a1 + 8));
  v3 = sub_24BE4A2B8(**(a1 + 8), "PostProcessing");
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_24BC7E000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PostProcessing", &unk_24C0CF52B, v4, 2u);
  }
}

uint64_t sub_24BE7489C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F977C0;
  a2[1] = v2;
  return result;
}

void sub_24BE748C8(uint64_t a1)
{
  v2 = sub_24BE4A2B0(**(a1 + 8));
  v3 = sub_24BE4A2B8(**(a1 + 8), "PostProcessing");
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_24BC7E000, v2, OS_SIGNPOST_INTERVAL_END, v3, "PostProcessing", &unk_24C0CF52B, v4, 2u);
  }
}

BOOL sub_24BE74A74(void *a1, uint64_t a2)
{
  v118 = *MEMORY[0x277D85DE8];
  v112[0] = 0;
  v112[1] = 0;
  v111 = v112;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v95 = a1;
  v6 = objc_msgSend_subMaterialNameToIndex(v95, v3, v4, v5);
  v94 = a2;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v107, v117, 16);
  if (v8)
  {
    v9 = *v108;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v108 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v107 + 1) + 8 * i);
        v12 = v11;
        v16 = objc_msgSend_UTF8String(v11, v13, v14, v15);
        sub_24BC836D4(&__p, v16);
        v20 = objc_msgSend_subMaterialNameToIndex(v95, v17, v18, v19);
        v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v11, v22);
        LOWORD(v11) = objc_msgSend_unsignedIntegerValue(v23, v24, v25, v26);

        *&v115[0] = &__p;
        *(sub_24BD3D084(&v111, &__p) + 56) = v11;
        if (SHIBYTE(v100) < 0)
        {
          operator delete(__p);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v27, &v107, v117, 16);
    }

    while (v8);
  }

  v115[0] = xmmword_24BFBC5B0;
  v115[1] = xmmword_24BFBC5E0;
  v116 = 4;
  v113 = xmmword_24BFEE5B8;
  v114 = 2;
  v31 = objc_msgSend_materialParameterData(v95, v28, v29, v30);
  v35 = objc_msgSend_count(v31, v32, v33, v34);

  v104 = 0;
  v105 = 0;
  v106 = 0;
  LOBYTE(__p) = 0;
  sub_24BC9FEFC(&v103, v35);
  for (j = 0; ; j = v44 + 1)
  {
    v40 = objc_msgSend_subMaterials(v95, v36, v37, v38);
    v44 = j;
    v45 = j < objc_msgSend_count(v40, v41, v42, v43);

    if (!v45)
    {
      break;
    }

    __p = 0;
    v100 = 0uLL;
    *(&v101 + 1) = 0;
    v102 = 0;
    *&v101 = &v101 + 8;
    v49 = objc_msgSend_subMaterials(v95, v46, v47, v48);
    v52 = objc_msgSend_objectAtIndex_(v49, v50, v44, v51);

    v55 = 0;
    v56 = &v113;
    do
    {
      v57 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v53, *(v115 + v55), v54);
      v61 = objc_msgSend_parameterToIndex(v52, v58, v59, v60);
      v64 = objc_msgSend_objectForKey_(v61, v62, v57, v63);

      if (v64)
      {
        v68 = objc_msgSend_unsignedIntegerValue(v64, v65, v66, v67);
        if (v68 < v35)
        {
          v96 = v56;
          *(sub_24BCCFB80(&v101, v56) + 16) = v68;
          if (*v56 == 1)
          {
            *(v103 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
          }
        }
      }

      v55 += 8;
      ++v56;
    }

    while (v55 != 40);
    sub_24BD47C9C(&v104, &__p);

    sub_24BCC8A84(&v101, *(&v101 + 1));
    if (SHIBYTE(v100) < 0)
    {
      operator delete(__p);
    }
  }

  v69 = v111;
  if (v111 == v112)
  {
LABEL_29:
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v73 = objc_msgSend_materialParameterData(v95, v46, v47, v48);
    v77 = objc_msgSend_count(v73, v74, v75, v76) == 0;

    if (v77)
    {
      v85 = v104;
      v86 = v105;
      if (v104 != v105)
      {
        v87 = v96;
        v88 = 0xAAAAAAAAAAAAAAABLL * ((v97 - v96) >> 4);
        do
        {
          data = v85[1].__r_.__value_.__l.__data_;
          if (data != &v85[1].__r_.__value_.__r.__words[1])
          {
            do
            {
              if (v88 > *(data + 16))
              {
                *&v87[48 * *(data + 16)] = *(data + 7);
              }

              v90 = *(data + 1);
              if (v90)
              {
                do
                {
                  v91 = v90;
                  v90 = *v90;
                }

                while (v90);
              }

              else
              {
                do
                {
                  v91 = *(data + 2);
                  v72 = *v91 == data;
                  data = v91;
                }

                while (!v72);
              }

              data = v91;
            }

            while (v91 != &v85[1].__r_.__value_.__r.__words[1]);
          }

          v85 += 2;
        }

        while (v85 != v86);
      }

      if ((v94 + 48) != &v111)
      {
        sub_24BCCEEA4((v94 + 48), v111, v112);
      }

      if (&v104 != v94)
      {
        sub_24BE7335C(v94, v104, v105, 0xAAAAAAAAAAAAAAABLL * ((v105 - v104) >> 4));
      }

      if ((v94 + 24) != &v96)
      {
        sub_24BE739BC(v94 + 24, v96, v97, 0xAAAAAAAAAAAAAAABLL * ((v97 - v96) >> 4));
      }
    }

    else
    {
      WORD2(__p) = 0;
      v100 = 0u;
      v101 = 0u;
      v102 = 0;
      v81 = objc_msgSend_materialParameterData(v95, v78, v79, v80);
      v84 = objc_msgSend_objectAtIndex_(v81, v82, 0, v83);

      if (v84)
      {
        operator new();
      }

      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (*(&v100 + 1))
      {
        sub_24BC9EC78(*(&v100 + 1));
      }
    }

    __p = &v96;
    sub_24BCCB404(&__p);
  }

  else
  {
    while (0xAAAAAAAAAAAAAAABLL * ((v105 - v104) >> 4) > *(v69 + 28))
    {
      std::string::operator=(&v104[2 * *(v69 + 28)], (v69 + 32));
      v70 = *(v69 + 1);
      if (v70)
      {
        do
        {
          v71 = v70;
          v70 = *v70;
        }

        while (v70);
      }

      else
      {
        do
        {
          v71 = *(v69 + 2);
          v72 = *v71 == v69;
          v69 = v71;
        }

        while (!v72);
      }

      v69 = v71;
      if (v71 == v112)
      {
        goto LABEL_29;
      }
    }

    v77 = 0;
  }

  if (v103)
  {
    operator delete(v103);
  }

  __p = &v104;
  sub_24BCCB4E0(&__p);
  sub_24BC900B8(&v111, v112[0]);

  v92 = *MEMORY[0x277D85DE8];
  return v77;
}

void sub_24BE75184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, char *a41)
{
  a17 = &a14;
  sub_24BCCB404(&a17);
  if (__p)
  {
    operator delete(__p);
  }

  a17 = &a29;
  sub_24BCCB4E0(&a17);
  sub_24BC900B8(&a40, a41);

  _Unwind_Resume(a1);
}

uint64_t sub_24BE752F4(void *a1, void *a2, void *a3, void *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v53 = a2;
  v52 = a3;
  v51 = a4;
  v9 = a1[6];
  v54 = a1;
  v10 = a1 + 7;
  if (v9 != v10)
  {
    do
    {
      v11 = v9 + 4;
      if (*(v9 + 55) < 0)
      {
        v11 = *v11;
      }

      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v11, v8, v51);
      v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, *(v9 + 28), v14);
      objc_msgSend_setObject_forKeyedSubscript_(v53, v16, v15, v12);

      v17 = v9[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v9[2];
          v19 = *v18 == v9;
          v9 = v18;
        }

        while (!v19);
      }

      v9 = v18;
    }

    while (v18 != v10);
  }

  v57[0] = xmmword_24BFBC5B0;
  v57[1] = xmmword_24BFBC5E0;
  v58 = 4;
  v55 = xmmword_24BFEE5B8;
  v56 = 2;
  if (v54[1] != *v54)
  {
    v20 = 0;
    do
    {
      v21 = objc_alloc_init(GESSSubMaterial);
      v25 = objc_msgSend_parameterToIndex(v21, v22, v23, v24);
      v29 = objc_msgSend_mutableCopy(v25, v26, v27, v28);

      v32 = 0;
      v33 = *v54 + 48 * v20;
      v34 = (v33 + 32);
      do
      {
        v35 = *v34;
        if (*v34)
        {
          v36 = *(&v55 + v32);
          v37 = v33 + 32;
          do
          {
            if (*(v35 + 28) >= v36)
            {
              v37 = v35;
            }

            v35 = *(v35 + 8 * (*(v35 + 28) < v36));
          }

          while (v35);
          if (v37 != v34 && v36 >= *(v37 + 28))
          {
            v38 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v30, *(v57 + v32), v31);
            v39 = sub_24BD250F8(v33 + 24, &v55 + v32);
            v42 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v40, *v39, v41);
            objc_msgSend_setObject_forKeyedSubscript_(v29, v43, v42, v38);
          }
        }

        ++v32;
      }

      while (v32 != 5);
      objc_msgSend_setParameterToIndex_(v21, v30, v29, v31);
      objc_msgSend_addObject_(v52, v44, v21, v45);

      ++v20;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v54[1] - *v54) >> 4));
  }

  v46 = v54[3];
  v47 = 1;
  if (v54[4] != v46)
  {
    if ((*(v46 + 4) & 1) != 0 || *(v46 + 5) == 1)
    {
      v48 = objc_alloc_init(GESSMaterialParameterData);
      operator new();
    }

    v47 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v47;
}