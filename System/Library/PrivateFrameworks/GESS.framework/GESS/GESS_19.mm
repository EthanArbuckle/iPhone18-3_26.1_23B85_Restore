void sub_24BDEBC98(float32x4_t *a1, float *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v35[1] = *MEMORY[0x277D85DE8];
  sub_24BC95764(v29, a4);
  sub_24BC95764(__p, v4);
  v33 = 0;
  v34 = 0;
  v35[0] = 0;
  v26 = 0u;
  v27 = 0u;
  sub_24BDF20F0(a1, a1 + 1, a1 + 2, &v33, &v34, v35, &v27, &v26);
  v8 = fabsf((((*&v34 - *&v33) * (*(v35 + 1) - *(&v33 + 1))) - ((*(&v34 + 1) - *(&v33 + 1)) * (*v35 - *&v33))) * 0.5);
  if (v8 >= 1.0e-16 && v4)
  {
    v9 = 0;
    v10 = v29[0];
    v11 = __p[0];
    do
    {
      v12 = 0;
      v13 = a2;
      do
      {
        *(&v30 + v12) = *v13;
        v12 += 4;
        v13 += v4;
      }

      while (v12 != 12);
      v14 = v30;
      v15 = v31;
      v16 = v32;
      v10[v9] = (((v31 * (*(v35 + 1) - *(&v33 + 1))) + (v30 * (*(&v34 + 1) - *(v35 + 1)))) + (v32 * (*(&v33 + 1) - *(&v34 + 1)))) / v8;
      v11[v9++] = (((v15 * (*&v33 - *v35)) + (v14 * (*v35 - *&v34))) + (v16 * (*&v34 - *&v33))) / v8;
      ++a2;
    }

    while (v9 != v4);
    *(a3 + 8) = 0;
    *a3 = 0;
    v17 = 0.0;
    v18 = v29[0];
    v19 = 0.0;
    v20 = 0.0;
    v21 = __p[0];
    do
    {
      v17 = v17 + (*v18 * *v18);
      *a3 = v17;
      v19 = v19 + (*v21 * *v21);
      *(a3 + 8) = v19;
      v22 = *v18++;
      v23 = v22;
      v24 = *v21++;
      v20 = v20 + (v23 * v24);
      *(a3 + 4) = v20;
      --v4;
    }

    while (v4);
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_24BDEBEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BDEBEF0(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float *a5)
{
  v5 = vsubq_f32(*a1, *a2);
  v6 = vmulq_f32(v5, *a3);
  v6.i32[3] = 0;
  *a5 = vaddv_f32(*&vpaddq_f32(v6, v6));
  v7 = vmulq_f32(v5, *a4);
  v7.i32[3] = 0;
  result = vaddv_f32(*&vpaddq_f32(v7, v7));
  a5[1] = result;
  return result;
}

float sub_24BDEBF30(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float *a6)
{
  v6 = vsubq_f32(*a1, *a3);
  v7 = vmulq_f32(v6, *a4);
  v7.i32[3] = 0;
  v8 = vmulq_f32(v6, *a5);
  v8.i32[3] = 0;
  v9 = vsubq_f32(*a2, *a3);
  v10 = vmulq_f32(*a4, v9);
  v10.i32[3] = 0;
  v11 = vmulq_f32(*a5, v9);
  v11.i32[3] = 0;
  v10.f32[0] = vaddv_f32(*&vpaddq_f32(v10, v10)) - vaddv_f32(*&vpaddq_f32(v7, v7));
  v11.f32[0] = vaddv_f32(*&vpaddq_f32(v11, v11)) - vaddv_f32(*&vpaddq_f32(v8, v8));
  return sqrtf(((v11.f32[0] * (v11.f32[0] * a6[2])) + ((v10.f32[0] * *a6) * v10.f32[0])) + ((v10.f32[0] * (a6[1] + a6[1])) * v11.f32[0]));
}

float sub_24BDEBFC0(uint64_t a1, unsigned int *a2, uint64_t *a3, unsigned int *a4)
{
  v74 = -1;
  v75 = -1;
  v8 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v9 & *v8) != 0)
  {
    v10 = 1;
  }

  else
  {
    v75 = *(sub_24BCB9024(a1 + 104, a2) + 16);
    v10 = v75 == -1;
  }

  v11 = sub_24BCB9024(a1 + 104, a2);
  v12 = sub_24BC9ECE4(a1, *(a1 + 180), *v11);
  if ((v13 & *v12) != 0)
  {
    v14 = -1;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v68 = sub_24BCB9024(a1 + 104, a2);
  v14 = *(sub_24BCB9024(a1 + 104, v68) + 16);
  v74 = v14;
  if (v10)
  {
LABEL_6:
    v75 = v14;
    v14 = -1;
    v74 = -1;
  }

LABEL_7:
  v15 = *(sub_24BCB9024(a1 + 104, a2) + 12);
  v16 = (*(a1 + 8) + 16 * *(a1 + 176));
  v18 = *v16;
  v17 = v16[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v17);
  }

  v72 = *(*(v18 + 40) + 16 * v15);
  v19 = sub_24BCB9024(a1 + 104, a2);
  v20 = *(sub_24BCB9024(a1 + 104, v19) + 12);
  v21 = (*(a1 + 8) + 16 * *(a1 + 176));
  v23 = *v21;
  v22 = v21[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v22);
  }

  v71 = *(*(v23 + 40) + 16 * v20);
  sub_24BCB2008(__p, 3uLL);
  sub_24BCD567C(a1, &v75, __p);
  v24 = *__p[0];
  v25 = (*(a1 + 8) + 16 * *(a1 + 176));
  v27 = *v25;
  v26 = v25[1];
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v26);
  }

  v28 = *(*(v27 + 40) + 16 * v24);
  v29 = v75;
  v30 = 2 * v75;
  v31 = *a3;
  v32 = (2 * v75) | 1;
  v33 = (*(a1 + 56) + 16 * *a4);
  v35 = *v33;
  v34 = v33[1];
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    v69 = v28;
    sub_24BC9EC78(v34);
    v28 = v69;
    v29 = v75;
  }

  v36 = (*(v35 + 40) + 16 * v29);
  v37 = vsubq_f32(v72, v28);
  v38 = *(v31 + 16 * v30);
  v39 = vmulq_f32(v37, v38);
  v39.i32[3] = 0;
  v40 = *(v31 + 16 * v32);
  v41 = vmulq_f32(v37, v40);
  v41.i32[3] = 0;
  v42 = vsubq_f32(v71, v28);
  v43 = vmulq_f32(v42, v38);
  v43.i32[3] = 0;
  v44 = vmulq_f32(v42, v40);
  v44.i32[3] = 0;
  v43.f32[0] = vaddv_f32(*&vpaddq_f32(v43, v43)) - vaddv_f32(*&vpaddq_f32(v39, v39));
  v41.f32[0] = vaddv_f32(*&vpaddq_f32(v44, v44)) - vaddv_f32(*&vpaddq_f32(v41, v41));
  v45 = sqrtf(((v41.f32[0] * (v41.f32[0] * v36[2])) + ((v43.f32[0] * *v36) * v43.f32[0])) + ((v43.f32[0] * (v36[1] + v36[1])) * v41.f32[0]));
  if (v14 != -1)
  {
    sub_24BCD567C(a1, &v74, __p);
    v46 = *__p[0];
    v47 = (*(a1 + 8) + 16 * *(a1 + 176));
    v49 = *v47;
    v48 = v47[1];
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v48);
    }

    v50 = *(*(v49 + 40) + 16 * v46);
    v51 = v74;
    v52 = 2 * v74;
    v53 = *a3;
    v54 = (2 * v74) | 1;
    v55 = (*(a1 + 56) + 16 * *a4);
    v57 = *v55;
    v56 = v55[1];
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      v70 = v50;
      sub_24BC9EC78(v56);
      v50 = v70;
      v51 = v74;
    }

    v58 = (*(v57 + 40) + 16 * v51);
    v59 = vsubq_f32(v72, v50);
    v60 = *(v53 + 16 * v52);
    v61 = vmulq_f32(v59, v60);
    v61.i32[3] = 0;
    v62 = *(v53 + 16 * v54);
    v63 = vmulq_f32(v59, v62);
    v63.i32[3] = 0;
    v64 = vsubq_f32(v71, v50);
    v65 = vmulq_f32(v64, v60);
    v65.i32[3] = 0;
    v66 = vmulq_f32(v64, v62);
    v66.i32[3] = 0;
    v65.f32[0] = vaddv_f32(*&vpaddq_f32(v65, v65)) - vaddv_f32(*&vpaddq_f32(v61, v61));
    v63.f32[0] = vaddv_f32(*&vpaddq_f32(v66, v66)) - vaddv_f32(*&vpaddq_f32(v63, v63));
    v45 = (v45 + sqrtf(((v63.f32[0] * (v63.f32[0] * v58[2])) + ((v65.f32[0] * *v58) * v65.f32[0])) + ((v65.f32[0] * (v58[1] + v58[1])) * v63.f32[0]))) * 0.5;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v45;
}

void sub_24BDEC3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDEC3C0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCDCCBC(result, a2);
  }

  return result;
}

void sub_24BDEC440(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDEC45C(uint64_t a1)
{
  v3 = -1;
  sub_24BC836D4(&__p, "v:index_in_root");
  sub_24BDEC5B4(a1);
}

void sub_24BDEC594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDEC6A4(void *a1, uint64_t a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22 = -1;
  sub_24BC836D4(&__p, off_27F078FE8[0]);
  v2 = sub_24BD265CC(a2, &v22, &__p.__r_.__value_.__l.__data_);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else if (v2)
  {
LABEL_6:
    v4 = (*(a2 + 80) + 16 * v22);
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v5);
    }

    (*(*v6 + 32))(v6, (a1[1] - *a1) >> 4);
    if (a1[1] != *a1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        std::to_string(&__p, v8);
        v9 = std::string::insert(&__p, 0, "g");
        v10 = v9->__r_.__value_.__r.__words[0];
        v23[0] = v9->__r_.__value_.__l.__size_;
        *(v23 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
        v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        v12 = (*(a2 + 80) + 16 * v22);
        v14 = *v12;
        v13 = v12[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v13);
        }

        v15 = *(v14 + 40) + v7;
        if (*(v15 + 23) < 0)
        {
          operator delete(*v15);
        }

        *v15 = v10;
        *(v15 + 8) = v23[0];
        *(v15 + 15) = *(v23 + 7);
        *(v15 + 23) = v11;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++v8;
        v7 += 24;
      }

      while (v8 < (a1[1] - *a1) >> 4);
    }

    sub_24BC836D4(&__p, off_27F078FC8[0]);
    LODWORD(v23[0]) = 0;
    v16 = sub_24BCCA8D0((a2 + 56), v23, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v16 != -1)
    {
      v17 = (*(a2 + 56) + 16 * v16);
      v18 = v17[1];
      *v17 = 0;
      v17[1] = 0;
      if (v18)
      {
        sub_24BC9EC78(v18);
      }
    }

    sub_24BC836D4(&__p, off_27F078FC8[0]);
    sub_24BD95714(a2);
  }

  sub_24BC836D4(&__p, off_27F078FE8[0]);
  sub_24BD2CC04(a2);
}

void sub_24BDECF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDECF64(uint64_t a1)
{
  v21 = -1;
  sub_24BC836D4(__p, off_27F078FE8[0]);
  v2 = sub_24BD265CC(a1, &v21, __p);
  v3 = v2;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_24BC836D4(__p, off_27F078FE8[0]);
    sub_24BD2CC04(a1);
  }

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = (*(a1 + 80) + 16 * v21);
  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v5);
  }

  (*(*v6 + 32))(v6, 1);
  v7 = (*(a1 + 80) + 16 * v21);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v8);
  }

  MEMORY[0x24C2541D0](*(v9 + 40), "g0");
  v11 = *(a1 + 152);
  v10 = *(a1 + 160);
  sub_24BC836D4(__p, off_27F078FC8[0]);
  v22 = 0;
  v12 = sub_24BCCA8D0((a1 + 56), &v22, __p);
  v18 = v12;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 == -1)
  {
    sub_24BC836D4(__p, off_27F078FC8[0]);
    sub_24BD95714(a1);
  }

  if (((v10 - v11) >> 2))
  {
    v13 = 0;
    v14 = 4 * ((v10 - v11) >> 2);
    do
    {
      v15 = (*(a1 + 56) + 16 * v18);
      v17 = *v15;
      v16 = v15[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v16);
      }

      *(*(v17 + 40) + v13) = 0;
      v13 += 4;
    }

    while (v14 != v13);
  }
}

void sub_24BDED15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDED184(uint64_t a1)
{
  v2 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  LOBYTE(__p) = 0;
  sub_24BC9FEFC(&v28, v2);
  v4 = *(a1 + 152);
  v3 = *(a1 + 160);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v27 = v6;
      v8 = v5 >> 6;
      v9 = 1 << v5;
      v10 = *(v28 + v8);
      if ((v10 & v9) == 0)
      {
        *(v28 + v8) = v10 | v9;
        __p = 0;
        v25 = 0;
        v26 = 0;
        sub_24BCB4670(&__p, &v27);
        v11 = 0;
        v7 = (v7 + 1);
        v12 = __p;
        do
        {
          LODWORD(v21) = v12[v11];
          v13 = *sub_24BCB9038(a1 + 104, &v21);
          v23 = v13;
          do
          {
            v23 = *(sub_24BCB9024(a1 + 104, &v23) + 4);
            v14 = sub_24BCB9024(a1 + 104, &v23);
            v15 = sub_24BC9ECE4(a1, *(a1 + 180), *v14);
            if ((*v15 & v16) == 0)
            {
              v17 = sub_24BCB9024(a1 + 104, &v23);
              v22 = *(sub_24BCB9024(a1 + 104, v17) + 16);
              if (((*(v28 + ((v22 >> 3) & 0x1FFFFFF8)) >> v22) & 1) == 0)
              {
                sub_24BCB4670(&__p, &v22);
                *(v28 + ((v22 >> 3) & 0x1FFFFFF8)) |= 1 << v22;
              }
            }
          }

          while (v23 != v13);
          ++v11;
          v12 = __p;
          v18 = v25 - __p;
        }

        while (v11 < ((v25 - __p) >> 2));
        v19 = *(a1 + 160) - *(a1 + 152);
        if (v18 < v19)
        {
          sub_24BD51FA4();
        }

        if (__p)
        {
          v25 = __p;
          operator delete(__p);
        }

        if (v18 >= v19)
        {
          goto LABEL_20;
        }

        v4 = *(a1 + 152);
        v3 = *(a1 + 160);
      }

      v5 = ++v6;
      if (v6 >= ((v3 - v4) >> 2))
      {
        goto LABEL_20;
      }
    }
  }

  v7 = 0;
LABEL_20:
  if (v28)
  {
    operator delete(v28);
  }

  return v7;
}

void sub_24BDED3CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a10)
  {
    sub_24BC9EC78(a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDED488(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v5 = a1;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_24BCB2008(&v48, (*(a1 + 112) - *(a1 + 104)) >> 2);
  memset(v47, 0, sizeof(v47));
  v44 = 0;
  v45 = 0;
  v46 = 0;
  memset(v43, 0, sizeof(v43));
  sub_24BCB2008(&v41, 3uLL);
  sub_24BCB8D20(v43, ((a2[1] - *a2) >> 1) + a2[1] - *a2);
  v6 = *a2;
  v35 = a2[1];
  v38 = v5;
  if (*a2 != v35)
  {
    do
    {
      sub_24BCD567C(v5, v6, &v41);
      v36 = v6;
      v8 = v41;
      v7 = v42;
      v37 = v42;
      if (v41 != v42)
      {
        do
        {
          v9 = *v8;
          if (*(v48 + 4 * v9) == -1)
          {
            v10 = v50;
            if (v50 >= v51)
            {
              v12 = (v50 - v49) >> 2;
              if ((v12 + 1) >> 62)
              {
                sub_24BC8E01C();
              }

              v13 = (v51 - v49) >> 1;
              if (v13 <= v12 + 1)
              {
                v13 = v12 + 1;
              }

              if (v51 - v49 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v14 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v14 = v13;
              }

              if (v14)
              {
                sub_24BC92E0C(&v49, v14);
              }

              v15 = (4 * v12);
              *v15 = v9;
              v11 = 4 * v12 + 4;
              v16 = v15 - (v50 - v49);
              memcpy(v16, v49, v50 - v49);
              v17 = v49;
              v49 = v16;
              v50 = v11;
              v51 = 0;
              if (v17)
              {
                operator delete(v17);
              }
            }

            else
            {
              *v50 = v9;
              v11 = (v10 + 4);
            }

            v50 = v11;
            v18 = ((v11 - v49) >> 2) - 1;
            *(v48 + 4 * *v8) = v18;
            v19 = *v8;
            v20 = (*(v38 + 8) + 16 * *(v38 + 176));
            v22 = *v20;
            v21 = v20[1];
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v21);
            }

            v23 = 0;
            *__p = *(*(v22 + 40) + 16 * v19);
            v24 = v45;
            do
            {
              if (v24 >= v46)
              {
                v25 = v44;
                v26 = v24 - v44;
                v27 = (v24 - v44) >> 2;
                v28 = v27 + 1;
                if ((v27 + 1) >> 62)
                {
                  sub_24BC8E01C();
                }

                v29 = v46 - v44;
                if ((v46 - v44) >> 1 > v28)
                {
                  v28 = v29 >> 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v30 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  sub_24BC92E0C(&v44, v30);
                }

                v31 = (v24 - v44) >> 2;
                v32 = (4 * v27);
                v33 = (4 * v27 - 4 * v31);
                *v32 = *(__p + v23);
                v24 = (v32 + 1);
                memcpy(v33, v25, v26);
                v34 = v44;
                v44 = v33;
                v45 = v24;
                v46 = 0;
                if (v34)
                {
                  operator delete(v34);
                }
              }

              else
              {
                *v24 = *(__p + v23);
                v24 += 4;
              }

              v45 = v24;
              v23 += 4;
            }

            while (v23 != 12);
            LODWORD(v39) = v18;
            sub_24BC97D60(v43, &v39);
            v7 = v37;
          }

          else
          {
            LODWORD(__p[0]) = *(v48 + 4 * v9);
            sub_24BC97D60(v43, __p);
          }

          ++v8;
        }

        while (v8 != v7);
      }

      sub_24BCB4670(v47, v36);
      v6 = v36 + 1;
      v5 = v38;
    }

    while (v36 + 1 != v35);
  }

  sub_24BD31B88(a3, &v44, v43);
}

void sub_24BDEE1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a40)
  {
    operator delete(a40);
  }

  v43 = *(v41 - 208);
  if (v43)
  {
    *(v41 - 200) = v43;
    operator delete(v43);
  }

  v44 = *(v41 - 184);
  if (v44)
  {
    *(v41 - 176) = v44;
    operator delete(v44);
  }

  v45 = *(v41 - 160);
  if (v45)
  {
    *(v41 - 152) = v45;
    operator delete(v45);
  }

  v46 = *(v41 - 136);
  if (v46)
  {
    *(v41 - 128) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDEE468(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = -858993459 * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(__p) = 0;
  sub_24BC9FEFC(&v33, v6);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v28 = v6;
    v29 = a2;
    do
    {
      if (((*(v33 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) != 0 || (v10 = sub_24BC9ECE4(a1, *(a1 + 180), v7), (*v10 & v11) == 0))
      {
        v9 = v8;
      }

      else
      {
        __p = 0;
        v31 = 0;
        v32 = 0;
        sub_24BCB6E2C(a2, &__p);
        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }

        LODWORD(__p) = v7;
        v12 = *(a2 + 8);
        v13 = (v12 - 24);
        v14 = v7;
        do
        {
          *(v33 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          v16 = *(v12 - 16);
          v15 = *(v12 - 8);
          if (v16 >= v15)
          {
            v18 = (v16 - *v13) >> 2;
            if ((v18 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v19 = v15 - *v13;
            v20 = v19 >> 1;
            if (v19 >> 1 <= (v18 + 1))
            {
              v20 = v18 + 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v21 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              sub_24BC92E0C(v12 - 24, v21);
            }

            *(4 * v18) = v14;
            v17 = 4 * v18 + 4;
            v22 = *(v12 - 24);
            v23 = *(v12 - 16) - v22;
            v24 = (4 * v18 - v23);
            memcpy(v24, v22, v23);
            v25 = *(v12 - 24);
            *(v12 - 24) = v24;
            *(v12 - 16) = v17;
            *(v12 - 8) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v16 = v14;
            v17 = (v16 + 1);
          }

          *(v12 - 16) = v17;
          *(*a3 + 4 * *(sub_24BCB9024(a1 + 104, &__p) + 12)) = v8;
          v14 = *(sub_24BCB9024(a1 + 104, &__p) + 8);
          LODWORD(__p) = v14;
        }

        while (v14 != -1 && v7 != v14);
        v6 = v28;
        a2 = v29;
        v9 = (v8 + 1);
      }

      ++v7;
      v8 = v9;
    }

    while (v7 != v6);
  }

  else
  {
    v9 = 0;
  }

  if (v33)
  {
    operator delete(v33);
  }

  return v9;
}

void sub_24BDEE698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_24BDEE6D0(uint64_t a1)
{
  sub_24BC836D4(__p, off_27F078F78[0]);
  v42 = 0;
  v2 = sub_24BCB74D4((a1 + 80), &v42, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2 == -1)
  {
    sub_24BC836D4(__p, off_27F078F78[0]);
    v42 = 0;
    sub_24BCDB6E4(a1 + 80);
  }

  v3 = 0;
  v4 = 0;
  v5 = v2;
  v6 = 3.4028e38;
  v7 = -3.4028e38;
  v8 = -3.4028e38;
  v9 = 3.4028e38;
  while (1)
  {
    v10 = (*(a1 + 80) + 16 * v5);
    v12 = *v10;
    v11 = v10[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v11);
    }

    if (v4 >= (*(*v12 + 16))(v12))
    {
      break;
    }

    v13 = (*(a1 + 80) + 16 * v5);
    v15 = *v13;
    v14 = v13[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v14);
    }

    v16 = (*(v15 + 40) + v3);
    v17 = v16[1];
    if (*v16 < v9)
    {
      v9 = *v16;
    }

    if (v17 < v6)
    {
      v6 = v16[1];
    }

    if (v8 < *v16)
    {
      v8 = *v16;
    }

    if (v7 < v17)
    {
      v7 = v16[1];
    }

    ++v4;
    v3 += 8;
  }

  v18 = 0;
  v19 = 0;
  v20 = v8 - v9;
  v21 = v7 - v6;
  while (1)
  {
    v22 = (*(a1 + 80) + 16 * v5);
    v24 = *v22;
    v23 = v22[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v23);
    }

    result = (*(*v24 + 16))(v24);
    if (v19 >= result)
    {
      return result;
    }

    v26 = *(a1 + 80);
    v27 = (v26 + 16 * v5);
    v29 = *v27;
    v28 = v27[1];
    if (!v28)
    {
      v33 = *(*(v29 + 40) + v18);
LABEL_30:
      *(*(v29 + 40) + v18) = (v33 - v9) / v20;
      goto LABEL_31;
    }

    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v28);
    v26 = *(a1 + 80);
    v30 = (v26 + 16 * v5);
    v32 = *v30;
    v31 = v30[1];
    v33 = *(*(v29 + 40) + v18);
    if (!v31)
    {
      v29 = *v30;
      goto LABEL_30;
    }

    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v31);
    v26 = *(a1 + 80);
    v34 = (v26 + 16 * v5);
    v29 = *v34;
    v35 = v34[1];
    *(*(v32 + 40) + v18) = (v33 - v9) / v20;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v35);
      v26 = *(a1 + 80);
    }

LABEL_31:
    v36 = *(*(v29 + 40) + v18 + 4);
    v37 = (v26 + 16 * v5);
    v39 = *v37;
    v38 = v37[1];
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v38);
    }

    *(*(v39 + 40) + v18 + 4) = (v36 - v6) / v21;
    ++v19;
    v18 += 8;
  }
}

void sub_24BDEE9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_24BDEE9C0(uint64_t a1)
{
  sub_24BC836D4(__p, off_27F078F78[0]);
  v40 = 0;
  v2 = sub_24BCB74D4((a1 + 80), &v40, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  LODWORD(v41) = 0;
  v40 = 0;
  v3 = sub_24BCCAA0C((a1 + 56), &v40, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, "f:imt");
  v40 = 0;
  v41 = 0;
  v4 = sub_24BCB6470((a1 + 56), &v40, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a1 + 80) + 16 * v2;
  v7 = *v5;
  v6 = *(v5 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v6);
  }

  if (*(a1 + 160) == *(a1 + 152))
  {
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = (*(a1 + 56) + 16 * v3);
      v15 = *v13;
      v14 = v13[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v14);
      }

      v16 = (*(v15 + 40) + v9);
      v17 = v7[5];
      v18 = (v17 + 8 * *v16);
      v19 = (v17 + 8 * v16[1]);
      v20 = (v17 + 8 * v16[2]);
      v21 = *v19;
      v22 = v19[1];
      v23 = *v18;
      v24 = v18[1];
      v26 = *v20;
      v25 = v20[1];
      LODWORD(__p[0]) = v10;
      v36 = sub_24BC96B00(a1, __p);
      v27 = (*(a1 + 56) + 16 * v4);
      v29 = *v27;
      v28 = v27[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v28);
      }

      v11 = v11 + fabsf((((v21 - v23) * (v25 - v24)) - ((v22 - v24) * (v26 - v23))) * 0.5);
      v12 = v12 + (v36 * powf(*(*(v29 + 40) + v8), 0.25));
      ++v10;
      v9 += 12;
      v8 += 16;
    }

    while (v10 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  v30 = v12 / v11;
  if (v11 <= 0.00000001)
  {
    v30 = 1.0;
  }

  v37 = v30;
  result = (*(*v7 + 16))(v7);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v33 = (*(a1 + 80) + 16 * v2);
      v35 = *v33;
      v34 = v33[1];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v34);
      }

      *(*(v35 + 40) + 8 * i) = vmul_n_f32(*(*(v35 + 40) + 8 * i), v37);
      result = (*(*v7 + 16))(v7);
    }
  }

  return result;
}

void sub_24BDEECC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDEECE4(uint64_t a1)
{
  sub_24BC836D4(__p, off_27F078FB8[0]);
  v15 = 0;
  v14 = 0;
  v2 = sub_24BCCAA0C((a1 + 56), &v14, __p);
  v13 = v2;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2 == -1)
  {
    sub_24BC836D4(__p, off_27F078FB8[0]);
    sub_24BCD5A78(a1);
  }

  sub_24BCB2008(__p, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      LODWORD(v14) = v4;
      sub_24BCD567C(a1, &v14, __p);
      v5 = *__p[0];
      v6 = *(__p[0] + 2);
      v7 = (*(a1 + 56) + 16 * v13);
      v9 = *v7;
      v8 = v7[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v8);
      }

      v10 = *(v9 + 40) + v3;
      *v10 = v5;
      *(v10 + 8) = v6;
      ++v4;
      v3 += 12;
    }

    while (v4 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BDEEE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_24BDEEE6C(uint64_t a1)
{
  sub_24BC836D4(__p, off_27F078F78[0]);
  v18 = 0;
  v2 = sub_24BCB74D4((a1 + 80), &v18, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = 0;
  v4 = 0;
  v5 = v2;
  while (1)
  {
    v6 = (*(a1 + 80) + 16 * v5);
    v8 = *v6;
    v7 = v6[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v7);
    }

    result = (*(*v8 + 16))(v8);
    if (v4 >= result)
    {
      break;
    }

    v10 = (*(a1 + 80) + 16 * v5);
    v12 = *v10;
    v11 = v10[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v11);
      v13 = (*(a1 + 80) + 16 * v5);
      v15 = *v13;
      v14 = v13[1];
      *(*(v12 + 40) + v3) = 0;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v14);
      }

      v12 = v15;
    }

    else
    {
      *(*(v12 + 40) + v3) = 0;
    }

    *(*(v12 + 40) + v3 + 4) = 0;
    ++v4;
    v3 += 8;
  }

  return result;
}

void sub_24BDEEFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDEEFC8(uint64_t a1)
{
  sub_24BDD4E90(&__p, 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2));
  if (*(a1 + 136) == *(a1 + 128))
  {
    goto LABEL_18;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = sub_24BC9ECE4(a1, *(a1 + 180), v2);
    if ((*v4 & v5) != 0)
    {
      *(__p + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v2);
    }

    v7 = *(a1 + 128);
    v6 = *(a1 + 136);
    v2 = v3;
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 2) > v3++);
  if (v6 == v7)
  {
LABEL_18:
    v11 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = sub_24BC9ECE4(a1, *(a1 + 180), v9);
      if ((*v12 & v13) != 0 && ((*(__p + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        v11 = (v11 + 1);
        v17 = v10;
        v14 = v10;
        do
        {
          *(__p + ((v14 >> 3) & 0x1FFFFFF8)) |= 1 << v14;
          v14 = *(sub_24BCB9024(a1 + 104, &v17) + 8);
          v17 = v14;
        }

        while (v14 != -1 && v14 != v10);
      }

      v9 = ++v10;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2) > v10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_24BDEF168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDEF1D8(uint64_t a1, float *a2, float *a3, void *a4)
{
  *a4 = 0;
  *a2 = -3.4028e38;
  *a3 = 0.0;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v5 - *a1;
  if (v5 == *a1)
  {
    return 0;
  }

  v7 = 0;
  v8 = v6 >> 2;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = 0.0;
  do
  {
    v10 = *v4;
    if (*v4 < 3.4028e38)
    {
      if (*a2 < v10)
      {
        *a2 = v10;
        v10 = *v4;
        v9 = *a3;
      }

      v9 = v10 + v9;
      *a3 = v9;
      *a4 = ++v7;
    }

    ++v4;
    --v8;
  }

  while (v8);
  if (!v7)
  {
    return 0;
  }

  *a3 = v9 / v7;
  return 1;
}

float sub_24BDEF270(uint64_t a1)
{
  v3 = *(a1 + 152);
  v2 = *(a1 + 160);
  sub_24BC836D4(__p, "f:area");
  v16 = 0;
  v4 = sub_24BDBA62C((a1 + 56), &v16, __p);
  v15 = v4;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == -1)
  {
    sub_24BC836D4(__p, "f:area");
    sub_24BDEE3F4(a1);
  }

  if (v2 == v3)
  {
    return 0.0;
  }

  v5 = 0;
  if (((v2 - v3) >> 2) <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = (v2 - v3) >> 2;
  }

  v7 = 0.0;
  do
  {
    LODWORD(__p[0]) = v5;
    v8 = sub_24BC96B00(a1, __p);
    v9 = (*(a1 + 56) + 16 * v15);
    v11 = *v9;
    v10 = v9[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v10);
    }

    *(*(v11 + 40) + 4 * v5) = v8;
    v7 = v7 + v8;
    ++v5;
  }

  while (v6 != v5);
  return v7;
}

void sub_24BDEF3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDEF3C4(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = *(a1 + 136);
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 2);
  LOBYTE(__p[0]) = 0;
  sub_24BC9FEFC(&v34, v4);
  sub_24BC836D4(__p, "h:length");
  v35 = 0;
  v5 = sub_24BDBA62C((a1 + 32), &v35, __p);
  v33 = v5;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 == -1)
  {
    sub_24BC836D4(__p, "h:length");
    sub_24BDEE380(a1);
  }

  v6 = v34;
  if (v2 == v3)
  {
    if (!v34)
    {
      return;
    }
  }

  else
  {
    v7 = 0;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      if ((v6[v7 >> 6] & (1 << v7)) == 0)
      {
        LODWORD(__p[0]) = v7;
        v8 = *sub_24BCB9024(a1 + 104, __p);
        LODWORD(__p[0]) = v7;
        v9 = sub_24BCB9024(a1 + 104, __p);
        v10 = *(sub_24BCB9024(a1 + 104, v9) + 12);
        v11 = (*(a1 + 8) + 16 * *(a1 + 176));
        v13 = *v11;
        v12 = v11[1];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v12);
        }

        v30 = *(*(v13 + 40) + 16 * v10);
        v14 = *(sub_24BCB9024(a1 + 104, __p) + 12);
        v15 = (*(a1 + 8) + 16 * *(a1 + 176));
        v17 = *v15;
        v16 = v15[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v16);
        }

        v18 = *(*(v17 + 40) + 16 * v14);
        v19 = *(a1 + 32);
        v20 = (v19 + 16 * v33);
        v22 = *v20;
        v21 = v20[1];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          v29 = v18;
          sub_24BC9EC78(v21);
          v18 = v29;
          v19 = *(a1 + 32);
        }

        v23 = vsubq_f32(v30, v18);
        v24 = vmulq_f32(v23, v23);
        v24.i32[3] = 0;
        v25 = sqrtf(vaddv_f32(*&vpaddq_f32(v24, v24)));
        *(*(v22 + 40) + 4 * v7) = v25;
        v26 = (v19 + 16 * v33);
        v28 = *v26;
        v27 = v26[1];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v27);
        }

        *(*(v28 + 40) + 4 * v8) = v25;
        v6 = v34;
        *(v34 + (v7 >> 6)) |= 1 << v7;
        *(v6 + ((v8 >> 3) & 0x1FFFFFF8)) |= 1 << v8;
      }

      ++v7;
    }

    while (v4 != v7);
  }

  operator delete(v6);
}

void sub_24BDEF630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDEF670(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v24 = a3;
  v6 = *(a1 + 128);
  v5 = *(a1 + 136);
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 2);
  LOBYTE(__p[0]) = 0;
  sub_24BC9FEFC(&v23, v7);
  sub_24BC836D4(__p, "h:signal_length");
  v25 = 0;
  v8 = sub_24BDBA62C((a1 + 32), &v25, __p);
  v22 = v8;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 == -1)
  {
    sub_24BC836D4(__p, "h:signal_length");
    sub_24BDEE380(a1);
  }

  v9 = v23;
  if (v5 == v6)
  {
    if (!v23)
    {
      return;
    }
  }

  else
  {
    v10 = 0;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      if ((v9[v10 >> 6] & (1 << v10)) == 0)
      {
        LODWORD(__p[0]) = v10;
        v11 = *sub_24BCB9024(a1 + 104, __p);
        LODWORD(__p[0]) = v10;
        v12 = sub_24BDEBFC0(a1, __p, a2, &v24);
        v13 = *(a1 + 32);
        v14 = (v13 + 16 * v22);
        v16 = *v14;
        v15 = v14[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v15);
          v13 = *(a1 + 32);
        }

        *(*(v16 + 40) + 4 * v10) = v12;
        v17 = (v13 + 16 * v22);
        v19 = *v17;
        v18 = v17[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v18);
        }

        *(*(v19 + 40) + 4 * v11) = v12;
        v9 = v23;
        *(v23 + (v10 >> 6)) |= 1 << v10;
        *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) |= 1 << v11;
      }

      ++v10;
    }

    while (v7 != v10);
  }

  operator delete(v9);
}

void sub_24BDEF858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BDEF898(uint64_t a1, void *a2)
{
  v2 = *(a1 + 160) - *(a1 + 152);
  if (!v2)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = v2 >> 2;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = 0.0;
  do
  {
    if (*(*a2 + 4 * v5) >= 3.4028e38)
    {
      v10 = v5;
      v8 = v8 + sub_24BC96B00(a1, &v10);
    }

    ++v5;
  }

  while (v7 != v5);
  return v8;
}

void sub_24BDEF938(void *a1, unsigned int a2, void *a3)
{
  v7 = a1[19];
  v6 = a1[20];
  sub_24BCB2008(__p, 3uLL);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    v9 = 0;
    v10 = v8 >> 2;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = 0.0;
    v13 = 0.0;
    while (1)
    {
      v28 = v9;
      sub_24BCD567C(a1, &v28, __p);
      v14 = (a1[10] + 16 * a2);
      v16 = *v14;
      v15 = v14[1];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v15);
        v17 = (a1[10] + 16 * a2);
        v19 = *v17;
        v18 = v17[1];
        v20 = __p[0];
        v21 = (*(v16 + 40) + 8 * *__p[0]);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v18);
          v20 = __p[0];
          v22 = (a1[10] + 16 * a2);
          v16 = *v22;
          v23 = v22[1];
          v24 = (*(v19 + 40) + 8 * *(__p[0] + 1));
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v23);
            v20 = __p[0];
          }

          goto LABEL_13;
        }

        v16 = v19;
      }

      else
      {
        v20 = __p[0];
        v21 = (*(v16 + 40) + 8 * *__p[0]);
      }

      v24 = (*(v16 + 40) + 8 * v20[1]);
LABEL_13:
      v25 = (*(v16 + 40) + 8 * v20[2]);
      v26 = fabsf((((*v24 - *v21) * (v25[1] - v21[1])) - ((v24[1] - v21[1]) * (*v25 - *v21))) * 0.5);
      v12 = v12 + v26;
      v27 = v13 + v26;
      if (*(*a3 + 4 * v9) >= 3.4028e38)
      {
        v13 = v27;
      }

      if (v11 == ++v9)
      {
        goto LABEL_18;
      }
    }
  }

  v20 = __p[0];
  if (__p[0])
  {
LABEL_18:
    __p[1] = v20;
    operator delete(v20);
  }
}

void sub_24BDEFB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BDEFB3C(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v5 = 0;
  v6 = 0;
  sub_24BE2618C(a1, &v10, &v7, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  v1 = v10;
  v2 = v11;
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v1 == v2;
}

void sub_24BDEFBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_24BFB8EF0(&__p, &a13, v13 - 40);
  _Unwind_Resume(a1);
}

void sub_24BDEFBF0(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5, float *a6, float *a7, float *a8)
{
  if (fabsf(*a7) >= 1.0e-16)
  {
    v8 = *a8;
    if (*a8 >= 0.0)
    {
      v9 = fabsf(v8);
      if (v9 >= 0.00000001 || v8 >= (*a7 * 0.5))
      {
        v28 = 0u;
        v29 = 0u;
        if (v9 > 1.0e-16)
        {
          sub_24BC95764(__p, 3uLL);
          v18 = 0;
          v19 = __p[0];
          v20 = v8 + v8;
          do
          {
            v21 = *(a1 + v18);
            *v19 = v21;
            v22 = *(a2 + v18);
            v19[1] = v22;
            v23 = *(a3 + v18);
            v19[2] = v23;
            v24 = *a6;
            v25 = *a5;
            v26 = *a4;
            *(&__p[-1] + v18) = (((v22 * (a6[1] - a4[1])) + (v21 * (a5[1] - a6[1]))) + (v23 * (a4[1] - a5[1]))) / v20;
            *(&v28 + v18) = (((v22 * (v26 - v24)) + (v21 * (v24 - v25))) + (v23 * (v25 - v26))) / v20;
            v18 += 4;
          }

          while (v18 != 12);
          __p[1] = v19;
          operator delete(v19);
          v27 = *a7;
        }
      }
    }
  }
}

void sub_24BDEFD94(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9)
{
  v13 = *a7;
  if (*a7 > 0.0)
  {
    __p[3] = v12;
    __p[4] = v11;
    __p[13] = v9;
    __p[14] = v10;
    v14 = *a8;
    if (*a8 >= 0.0 && (v14 >= 1.0e-16 || v13 * 0.5 <= v14))
    {
      v22 = fabsf(v14);
      if (fabsf(v13) >= 1.0e-16 || v22 >= 1.0e-16)
      {
        v23 = 0uLL;
        v44 = 0u;
        v45 = 0u;
        v24 = 0uLL;
        if (v22 > 1.0e-16)
        {
          sub_24BC95764(__p, 3uLL);
          v25 = 0;
          v26 = __p[0];
          v27 = v14 + v14;
          do
          {
            v28 = *(a1 + v25 * 4);
            *v26 = v28;
            v29 = *(a2 + v25 * 4);
            v26[1] = v29;
            v30 = *(a3 + v25 * 4);
            v26[2] = v30;
            v31 = *a6;
            v32 = *a5;
            v33 = *a4;
            v45.f32[v25] = (((v29 * (a6[1] - a4[1])) + (v28 * (a5[1] - a6[1]))) + (v30 * (a4[1] - a5[1]))) / v27;
            v44.f32[v25++] = (((v29 * (v33 - v31)) + (v28 * (v31 - v32))) + (v30 * (v32 - v33))) / v27;
          }

          while (v25 != 3);
          __p[1] = v26;
          operator delete(v26);
          v23 = v44;
          v24 = v45;
        }

        v34 = vmulq_f32(v24, v24);
        v34.i32[3] = 0;
        v34.f32[0] = vaddv_f32(*&vpaddq_f32(v34, v34));
        v35 = vmulq_f32(v23, v23);
        v35.i32[3] = 0;
        v35.f32[0] = vaddv_f32(*&vpaddq_f32(v35, v35));
        v36 = vmulq_f32(v24, v23);
        v36.i32[3] = 0;
        v36.f32[0] = vaddv_f32(*&vpaddq_f32(v36, v36));
        v36.f32[0] = (v36.f32[0] * (v36.f32[0] * 4.0)) + ((v34.f32[0] - v35.f32[0]) * (v34.f32[0] - v35.f32[0]));
        v37 = v34.f32[0] + v35.f32[0];
        v38 = sqrtf(v36.f32[0]);
        v39 = v36.f32[0] < 0.0;
        v40 = 0.0;
        if (v39)
        {
          v38 = 0.0;
        }

        v41 = (v37 + v38) * 0.5;
        v42 = sqrtf(v41);
        if (v41 >= 0.0)
        {
          v40 = v42;
        }

        v43 = *a9 * v40;
      }
    }
  }
}

float sub_24BDEFF84(float *a1, float *a2, float *a3, float *a4, float *a5, uint64_t a6, float *a7)
{
  result = 0.0;
  if (fabsf(*a4) >= 1.0e-16)
  {
    v10 = *a5;
    if (*a5 >= 0.0 && fabsf(v10) >= 1.0e-16)
    {
      v15 = v7;
      v16 = v8;
      __b = 0;
      v14 = 0;
      sub_24BDF004C(a1, a2, a3, &__b, a6, a6 + 8, a6 + 16, a7, v10, v12);
      return (*&__b + *&v14) * 0.5 * *a4;
    }

    else
    {
      return 3.4028e38;
    }
  }

  return result;
}

float sub_24BDF004C(float *a1, float *a2, float *a3, float *__b, uint64_t a5, uint64_t a6, uint64_t a7, float *a8, float a9, float *a10)
{
  v12 = fabsf(a9);
  if (v12 >= 1.0e-16)
  {
    v39 = 0;
    v40 = 0;
    v15 = 0.0;
    v16 = v12 > 1.0e-16;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    if (v16)
    {
      sub_24BC95764(__p, 3uLL);
      v26 = 0;
      v27 = __p[0];
      v28 = a9 + a9;
      v29 = &v40 + 1;
      v30 = &v39 + 1;
      v31 = 1;
      do
      {
        v32 = *(a5 + 4 * v26);
        *v27 = v32;
        v33 = *(a6 + 4 * v26);
        v27[1] = v33;
        v34 = *(a7 + 4 * v26);
        v27[2] = v34;
        v35 = *a3;
        v36 = *a2;
        v37 = *a1;
        v38 = v31;
        *v29 = (((v33 * (a3[1] - a1[1])) + (v32 * (a2[1] - a3[1]))) + (v34 * (a1[1] - a2[1]))) / v28;
        *v30 = (((v33 * (v37 - v35)) + (v32 * (v35 - v36))) + (v34 * (v36 - v37))) / v28;
        v29 = &v40;
        v30 = &v39;
        v26 = 1;
        v31 = 0;
      }

      while ((v38 & 1) != 0);
      __p[1] = v27;
      operator delete(v27);
      v19 = *(&v40 + 1);
      v18 = *&v40;
      v17 = *(&v39 + 1);
      v15 = *&v39;
    }

    *a10 = (v18 * v18) + (v19 * v19);
    a10[1] = (v18 * v15) + (v19 * v17);
    a10[2] = (v15 * v15) + (v17 * v17);
    *__b = (((v18 * v18) * a8[2]) + ((v19 * v19) * *a8)) + (((v19 + v19) * v18) * a8[1]);
    __b[2] = (((v15 * v15) * a8[2]) + ((v17 * v17) * *a8)) + (((v17 + v17) * v15) * a8[1]);
    result = (((v18 * v15) * a8[2]) + ((v19 * v17) * *a8)) + (((v18 * v17) + (v19 * v15)) * a8[1]);
    __b[1] = result;
  }

  else
  {

    memset_pattern16(__b, &unk_24BFED000, 0xCuLL);
  }

  return result;
}

BOOL sub_24BDF027C(uint64_t a1, float *a2, float *a3, uint64_t *a4, void *a5)
{
  if (*(a1 + 160) == *(a1 + 152))
  {
    return 0;
  }

  sub_24BC836D4(__p, off_27F078F78[0]);
  *v66 = 0;
  v6 = sub_24BCB74D4((a1 + 80), v66, __p);
  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  v66[2] = 0;
  *v66 = 0;
  v7 = sub_24BCCAA0C((a1 + 56), v66, __p);
  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = 0;
  if (v6 != -1 && v7 != -1)
  {
    *a3 = 0.0;
    *a2 = 0.0;
    sub_24BCB2008(__p, 3uLL);
    a4[1] = *a4;
    sub_24BDAF1BC(a4, (*(a1 + 160) - *(a1 + 152)) >> 2);
    if (*(a1 + 160) != *(a1 + 152))
    {
      v9 = 0;
      v10 = 0;
      v61 = v7;
      v11 = v6;
      while (1)
      {
        v66[0] = v10;
        v12 = sub_24BC96B00(a1, v66);
        v68 = v12;
        v66[0] = v10;
        sub_24BCD567C(a1, v66, __p);
        v13 = (*(a1 + 56) + 16 * v61);
        v15 = *v13;
        v14 = v13[1];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v14);
        }

        v16 = *(v15 + 40);
        v17 = (*(a1 + 80) + 16 * v11);
        v19 = *v17;
        v18 = v17[1];
        if (!v18)
        {
          break;
        }

        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v18);
        v20 = (*(a1 + 80) + 16 * v11);
        v22 = *v20;
        v21 = v20[1];
        v23 = (*(v19 + 40) + 8 * *(v16 + v9));
        if (!v21)
        {
          v19 = *v20;
          goto LABEL_18;
        }

        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v21);
        v24 = (*(a1 + 80) + 16 * v11);
        v19 = *v24;
        v25 = v24[1];
        v26 = (v16 + 12 * v10 + 4);
        v27 = (*(v22 + 40) + 8 * *(v16 + v9 + 4));
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v25);
        }

LABEL_19:
        v28 = v16 + v9;
        v29 = (*(v19 + 40) + 8 * *(v16 + v9 + 8));
        v67 = fabsf((((*v27 - *v23) * (v29[1] - v23[1])) - ((v27[1] - v23[1]) * (*v29 - *v23))) * 0.5);
        v30 = __p[0];
        v31 = *(a1 + 176);
        v32 = *__p[0];
        v33 = *(a1 + 8);
        v34 = (v33 + 16 * v31);
        v36 = *v34;
        v35 = v34[1];
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v35);
          v30 = __p[0];
          v31 = *(a1 + 176);
          v33 = *(a1 + 8);
          v37 = (v33 + 16 * v31);
          v39 = *v37;
          v38 = v37[1];
          *v66 = *(*(v36 + 40) + 16 * v32);
          v40 = *(__p[0] + 1);
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v38);
            v30 = __p[0];
            v31 = *(a1 + 176);
            v36 = v39;
            v33 = *(a1 + 8);
          }

          else
          {
            v36 = v39;
          }

          v28 = v16 + v9;
        }

        else
        {
          *v66 = *(*(v36 + 40) + 16 * v32);
          v40 = *(__p[0] + 1);
        }

        v65 = *(*(v36 + 40) + 16 * v40);
        v41 = v30[2];
        v42 = (v33 + 16 * v31);
        v44 = *v42;
        v43 = v42[1];
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v43);
        }

        v64 = *(*(v44 + 40) + 16 * v41);
        v45 = (*(a1 + 80) + 16 * v11);
        v47 = *v45;
        v46 = v45[1];
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v46);
          v48 = (*(a1 + 80) + 16 * v11);
          v50 = *v48;
          v49 = v48[1];
          v51 = (*(v47 + 40) + 8 * *(v16 + v9));
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v49);
            v52 = (*(a1 + 80) + 16 * v11);
            v47 = *v52;
            v53 = v52[1];
            v54 = (*(v50 + 40) + 8 * *v26);
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v53);
            }

            goto LABEL_34;
          }

          v47 = *v48;
        }

        else
        {
          v51 = (*(v47 + 40) + 8 * *(v16 + v9));
        }

        v54 = (*(v47 + 40) + 8 * *v26);
LABEL_34:
        sub_24BDEFBF0(v66, &v65, &v64, v51, v54, (*(v47 + 40) + 8 * *(v28 + 8)), &v68, &v67);
        v56 = v55;
        if (v55 >= 3.4028e38)
        {
          *a3 = v12 + *a3;
        }

        else
        {
          *v66 = __PAIR64__(LODWORD(v12), LODWORD(v55));
          sub_24BCCD48C(a4, v66);
        }

        *a2 = v12 + *a2;
        *(*a5 + 4 * v10++) = v56;
        v9 += 12;
        if (v10 >= (*(a1 + 160) - *(a1 + 152)) >> 2)
        {
          goto LABEL_38;
        }
      }

      v23 = (*(v19 + 40) + 8 * *(v16 + v9));
LABEL_18:
      v26 = (v16 + v9 + 4);
      v27 = (*(v19 + 40) + 8 * *v26);
      goto LABEL_19;
    }

LABEL_38:
    v57 = a4[1];
    v8 = v57 != *a4;
    if (v57 != *a4)
    {
      sub_24BDF3B04(*a4, v57, 126 - 2 * __clz((v57 - *a4) >> 3), 1);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return v8;
}

void sub_24BDF075C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BDF07A0(uint64_t a1, float *a2, float *a3, _DWORD *a4, float *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_24BC95764(__p, (*(a1 + 160) - *(a1 + 152)) >> 2);
  v29 = 0.0;
  v28 = 0.0;
  v10 = sub_24BDF027C(a1, &v29, &v28, &v25, __p);
  if (v10)
  {
    v11 = v25;
    v12 = (v26 - v25) >> 3;
    v13 = v12 - v12 / 0x1388;
    *a2 = *(v25 + 2 * v13 - 2);
    v14 = v12 / 0x1388;
    *a4 = *&v11[(4 * v13) & 0xFFFFFFFFFFFFFFF8];
    *a3 = 0.0;
    if (v12 / 0x1388 < v13)
    {
      v15 = v12 - 2 * v14;
      v16 = &v11[8 * v14 + 4];
      v17 = 0.0;
      v18 = 0.0;
      do
      {
        v18 = v18 + (*(v16 - 1) * *v16);
        *a3 = v18;
        v19 = *v16;
        v16 += 2;
        v17 = v17 + v19;
        --v15;
      }

      while (v15);
      if (v17 > 0.0)
      {
        *a3 = v18 / v17;
      }
    }

    v20 = v29;
    v21 = v29 * 0.01;
    v22 = *a2 / v21;
    *a2 = v22;
    *&v21 = *a3 / v21;
    *a3 = *&v21;
    *a5 = v28 / v20;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return v10;
}

void sub_24BDF0928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDF095C(uint64_t a1, uint64_t *a2, void *a3, float *a4)
{
  if (*(a1 + 160) == *(a1 + 152))
  {
    return 0;
  }

  v4 = a1;
  sub_24BC836D4(v86, off_27F078F78[0]);
  v84 = 0;
  v5 = sub_24BCB74D4((v4 + 80), &v84, v86);
  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  sub_24BC836D4(v86, off_27F078FB8[0]);
  LODWORD(v85) = 0;
  v84 = 0;
  v6 = sub_24BCCAA0C((v4 + 56), &v84, v86);
  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  if (v5 == -1)
  {
    return 0;
  }

  sub_24BC95764(v86, (*(v4 + 160) - *(v4 + 152)) >> 2);
  sub_24BC95764(&v84, (*(v4 + 160) - *(v4 + 152)) >> 2);
  sub_24BCB2008(__p, 3uLL);
  if (*(v4 + 160) == *(v4 + 152))
  {
    goto LABEL_54;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = 0.0;
  v79 = v6;
  v11 = v5;
  v76 = v4;
  do
  {
    if (v6 == -1)
    {
      LODWORD(v82) = v8;
      sub_24BCD567C(v4, &v82, __p);
      v15 = __p[0];
    }

    else
    {
      v12 = (*(v4 + 56) + 16 * v79);
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v13);
      }

      v15 = (*(v14 + 40) + v7);
    }

    v17 = v15[1];
    v16 = v15[2];
    v18 = *v15;
    v19 = (*(v4 + 80) + 16 * v11);
    v21 = *v19;
    v20 = v19[1];
    if (!v20)
    {
      v26 = (*(v21 + 40) + 8 * v18);
LABEL_21:
      v29 = (*(v21 + 40) + 8 * v17);
      goto LABEL_22;
    }

    v22 = v6;
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v20);
    v23 = (*(v4 + 80) + 16 * v11);
    v25 = *v23;
    v24 = v23[1];
    v26 = (*(v21 + 40) + 8 * v18);
    if (!v24)
    {
      v21 = *v23;
      v6 = v22;
      goto LABEL_21;
    }

    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v24);
    v27 = (*(v4 + 80) + 16 * v11);
    v21 = *v27;
    v28 = v27[1];
    v29 = (*(v25 + 40) + 8 * v17);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v28);
    }

    v6 = v22;
    v4 = v76;
LABEL_22:
    *(v86[0] + v8) = fabsf((((*v29 - *v26) * (*(*(v21 + 40) + 8 * v16 + 4) - v26[1])) - ((v29[1] - v26[1]) * (*(*(v21 + 40) + 8 * v16) - *v26))) * 0.5);
    LODWORD(v82) = v8;
    v30 = sub_24BC96B00(v4, &v82);
    v31 = v84;
    *(v84 + v8) = v30;
    v9 = v9 + v31[v8];
    v10 = v10 + *(v86[0] + v8++);
    v33 = *(v4 + 152);
    v32 = *(v4 + 160);
    v7 += 12;
  }

  while (v8 < (v32 - v33) >> 2);
  if (v9 >= 1.0e-16)
  {
    v34 = sqrtf(v10 / v9);
    v35 = 0.0;
    if ((v10 / v9) >= 0.0)
    {
      v35 = v34;
    }

    *a4 = v35;
    if (v32 != v33)
    {
      v36 = 0;
      v74 = v6;
      do
      {
        LODWORD(v82) = v36;
        sub_24BCD567C(v4, &v82, __p);
        if (v6 == -1)
        {
          LODWORD(v82) = v36;
          sub_24BCD567C(v4, &v82, __p);
          v41 = __p[0];
          v40 = __p[0];
        }

        else
        {
          v37 = (*(v4 + 56) + 16 * v79);
          v39 = *v37;
          v38 = v37[1];
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v38);
          }

          v40 = (*(v39 + 40) + 12 * v36);
          v41 = __p[0];
        }

        v43 = v40[1];
        v42 = v40[2];
        v44 = *v40;
        v45 = *(v4 + 176);
        v46 = *v41;
        v47 = *(v4 + 8);
        v48 = (v47 + 16 * v45);
        v50 = *v48;
        v49 = v48[1];
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v49);
          v41 = __p[0];
          v45 = *(v4 + 176);
          v47 = *(v4 + 8);
          v51 = (v47 + 16 * v45);
          v53 = *v51;
          v52 = v51[1];
          v82 = *(*(v50 + 40) + 16 * v46);
          v54 = *(__p[0] + 1);
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v52);
            v41 = __p[0];
            v45 = *(v4 + 176);
            v50 = v53;
            v47 = *(v4 + 8);
          }

          else
          {
            v50 = v53;
          }

          LODWORD(v6) = v74;
        }

        else
        {
          v82 = *(*(v50 + 40) + 16 * v46);
          v54 = v41[1];
        }

        v81 = *(*(v50 + 40) + 16 * v54);
        v55 = v41[2];
        v56 = (v47 + 16 * v45);
        v58 = *v56;
        v57 = v56[1];
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v57);
        }

        v80 = *(*(v58 + 40) + 16 * v55);
        v59 = (*(v4 + 80) + 16 * v11);
        v61 = *v59;
        v60 = v59[1];
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v60);
          v62 = (*(v4 + 80) + 16 * v11);
          v64 = *v62;
          v63 = v62[1];
          v65 = (*(v61 + 40) + 8 * v44);
          if (v63)
          {
            atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v63);
            v66 = (*(v4 + 80) + 16 * v11);
            v61 = *v66;
            v67 = v66[1];
            v68 = (*(v64 + 40) + 8 * v43);
            if (v67)
            {
              atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v67);
            }

            goto LABEL_48;
          }

          v61 = *v62;
        }

        else
        {
          v65 = (*(v61 + 40) + 8 * v44);
        }

        v68 = (*(v61 + 40) + 8 * v43);
LABEL_48:
        sub_24BDEFD94(&v82, &v81, &v80, v65, v68, (*(v61 + 40) + 8 * v42), v84 + v36, v86[0] + v36, a4);
        v70 = v69;
        if (v69 < 3.4028e38)
        {
          *&v82 = v69;
          DWORD1(v82) = *(v84 + v36);
          sub_24BCCD48C(a2, &v82);
        }

        *(*a3 + 4 * v36++) = v70;
      }

      while (v36 < (*(v4 + 160) - *(v4 + 152)) >> 2);
    }

    v71 = a2[1];
    if (v71 != *a2)
    {
      v72 = 1;
      sub_24BDF3B04(*a2, v71, 126 - 2 * __clz((v71 - *a2) >> 3), 1);
      goto LABEL_55;
    }
  }

LABEL_54:
  v72 = 0;
LABEL_55:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v86[0])
  {
    v86[1] = v86[0];
    operator delete(v86[0]);
  }

  return v72;
}

void sub_24BDF0F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 144);
  if (v29)
  {
    *(v27 - 136) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDF0FB4(uint64_t a1, float *a2, _DWORD *a3)
{
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  sub_24BC95764(v38, (*(a1 + 160) - *(a1 + 152)) >> 2);
  v37 = 0;
  if (!*a3)
  {
    if (sub_24BDF027C(a1, &v42 + 1, &v42, &v39, v38))
    {
      goto LABEL_3;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_35;
  }

  if (!sub_24BDF095C(a1, &v39, v38, &v37))
  {
    goto LABEL_19;
  }

LABEL_3:
  v6 = *(v39 + 2 * (((v40 - v39) >> 3) - ((v40 - v39) >> 3) / 0x1388uLL) - 2);
  v7 = (*(a1 + 112) - *(a1 + 104)) >> 2;
  LODWORD(v33) = 0;
  sub_24BCDEA88(&v35, v7);
  sub_24BCB2008(&v33, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v8 = 0;
    do
    {
      if (*(v38[0] + v8) <= v6)
      {
        LODWORD(__p[0]) = v8;
        sub_24BCD567C(a1, __p, &v33);
        v9 = v33;
        v10 = v34;
        if (v33 != v34)
        {
          v11 = v38[0];
          v12 = v35;
          do
          {
            v13 = *v9++;
            v12[v13] = v11[v8] + v12[v13];
          }

          while (v9 != v10);
        }
      }

      ++v8;
    }

    while (v8 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  v14 = v35;
  if (v35 == v36)
  {
    v16 = 3.4028e38;
    v15 = -3.4028e38;
  }

  else
  {
    v15 = -3.4028e38;
    v16 = 3.4028e38;
    do
    {
      v17 = *v14++;
      v18 = v17;
      if (v15 < v17)
      {
        v15 = v18;
      }

      if (v16 > v18)
      {
        v16 = v18;
      }
    }

    while (v14 != v36);
  }

  sub_24BC836D4(__p, off_27F078F90[0]);
  v43[0] = 0;
  v43[1] = 0;
  v20 = sub_24BCB6470((a1 + 8), v43, __p);
  v32 = v20;
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 == -1)
  {
    sub_24BC836D4(__p, off_27F078F90[0]);
    sub_24BCB346C(a1);
  }

  if (*(a1 + 112) != *(a1 + 104))
  {
    v21 = 0;
    v22 = v15 - v16;
    do
    {
      v23 = powf((*(v35 + v21) - v16) / v22, *a2);
      v24 = (*(a1 + 8) + 16 * v32);
      v26 = *v24;
      v25 = v24[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v29 = v23;
        sub_24BC9EC78(v25);
        v23 = v29;
      }

      HIDWORD(v27) = 0;
      *&v27 = LODWORD(v23);
      *(&v27 + 2) = 1.0 - v23;
      *(*(v26 + 40) + 16 * v21++) = v27;
    }

    while (v21 < (*(a1 + 112) - *(a1 + 104)) >> 2);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  v19 = 1;
LABEL_35:
  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return v19;
}

void sub_24BDF12C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BDF1354(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_24BC95764(&__p, (*(a1 + 160) - *(a1 + 152)) >> 2);
  v8 = 0.0;
  if (sub_24BDF095C(a1, &v11, &__p, &v8))
  {
    if (__p == v10)
    {
      v5 = 0.0;
    }

    else
    {
      v2 = 0;
      v3 = __p;
      do
      {
        v4 = *v3++;
        if (v4 > (v8 * 200000000.0))
        {
          ++v2;
        }
      }

      while (v3 != v10);
      v5 = v2;
    }

    v6 = (((*(a1 + 160) - *(a1 + 152)) >> 2) * 0.01) > v5;
    if (__p)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if (__p)
    {
LABEL_12:
      v10 = __p;
      operator delete(__p);
    }
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v6;
}

void sub_24BDF1450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

unint64_t sub_24BDF1484(uint64_t a1, void *a2, unint64_t a3, float *a4)
{
  result = (*(*a2 + 16))(a2);
  if (result)
  {
    result = (*(*a2 + 16))(a2);
    if (result)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0.0;
      do
      {
        v12 = (a2[5] + v9);
        v13 = *(a1 + 40);
        v14 = (v13 + 8 * *v12);
        v15 = (v13 + 8 * v12[1]);
        v16 = (v13 + 8 * v12[2]);
        v11 = v11 + fabsf((((*v15 - *v14) * (v16[1] - v14[1])) - ((v15[1] - v14[1]) * (*v16 - *v14))) * 0.5);
        ++v10;
        result = (*(*a2 + 16))(a2);
        v9 += 12;
      }

      while (v10 < result);
    }

    else
    {
      v11 = 0.0;
    }

    *a4 = v11 / a3;
  }

  return result;
}

unint64_t sub_24BDF15CC(unint64_t result, float *a2)
{
  if (*(result + 160) != *(result + 152))
  {
    v3 = result;
    v18 = -1;
    sub_24BC836D4(__p, off_27F078F78[0]);
    v19 = 0;
    v4 = sub_24BCB74D4((v3 + 80), &v19, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    sub_24BC836D4(__p, off_27F078FB8[0]);
    v20 = 0;
    v19 = 0;
    v5 = sub_24BCCAA0C((v3 + 56), &v19, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    sub_24BC836D4(__p, off_27F078FE8[0]);
    sub_24BD265CC(v3, &v18, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = (*(v3 + 80) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v7);
    }

    v9 = *(v3 + 56) + 16 * v5;
    v11 = *v9;
    v10 = *(v9 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v10);
    }

    v12 = (*(v3 + 80) + 16 * v18);
    v14 = *v12;
    v13 = v12[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v13);
    }

    v15 = (*(*v14 + 16))(v14);
    return sub_24BDF1484(v8, v11, v15, a2);
  }

  return result;
}

void sub_24BDF1764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float32x4_t sub_24BDF1788(uint64_t a1, void *a2)
{
  sub_24BC97D30(a2, (*(a1 + 112) - *(a1 + 104)) >> 2);
  if (*(a1 + 112) != *(a1 + 104))
  {
    v5 = 0;
    result.i64[0] = 0x80000000800000;
    result.i64[1] = 0x80000000800000;
    v30 = vnegq_f32(result);
    do
    {
      v28 = result;
      v6 = (*(a1 + 8) + 16 * *(a1 + 176));
      v8 = *v6;
      v7 = v6[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v7);
      }

      *(*a2 + 16 * v5) = *(*(v8 + 40) + 16 * v5);
      v9 = (*(a1 + 8) + 16 * *(a1 + 176));
      v11 = *v9;
      v10 = v9[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v10);
      }

      v12 = *(*(v11 + 40) + 16 * v5);
      v30 = vminq_f32(v30, v12);
      result = vmaxq_f32(v28, v12);
      ++v5;
      v14 = *(a1 + 104);
      v13 = *(a1 + 112);
    }

    while (v5 < (v13 - v14) >> 2);
    if (v13 != v14)
    {
      v15 = 0;
      v16.i64[0] = 0x3F0000003F000000;
      v16.i64[1] = 0x3F0000003F000000;
      v17 = vmulq_f32(vaddq_f32(v30, result), v16);
      v18 = vsubq_f32(result, v30);
      v19 = v18.f32[1];
      if (v18.f32[0] >= v18.f32[1])
      {
        v19 = v18.f32[0];
      }

      v18.i32[0] = v18.i32[2];
      if (v19 >= v18.f32[2])
      {
        v18.f32[0] = v19;
      }

      if (v18.f32[0] <= 0.0)
      {
        v20 = 2.0;
      }

      else
      {
        v20 = 2.0 / v18.f32[0];
      }

      v29 = v17;
      v31 = v20;
      do
      {
        v21 = (*(a1 + 8) + 16 * *(a1 + 176));
        v23 = *v21;
        v22 = v21[1];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v22);
        }

        *(*(v23 + 40) + 16 * v15) = vsubq_f32(*(*(v23 + 40) + 16 * v15), v29);
        v24 = (*(a1 + 8) + 16 * *(a1 + 176));
        v26 = *v24;
        v25 = v24[1];
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v25);
        }

        v27 = *(v26 + 40);
        result = vmulq_n_f32(*(v27 + 16 * v15), v31);
        *(v27 + 16 * v15++) = result;
      }

      while (v15 < (*(a1 + 112) - *(a1 + 104)) >> 2);
    }
  }

  return result;
}

void sub_24BDF194C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5)
{
  v71 = *MEMORY[0x277D85DE8];
  sub_24BC836D4(v69, off_27F078F78[0]);
  __p = 0;
  v65 = sub_24BCB74D4((a1 + 80), &__p, v69);
  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  v68 = -1;
  sub_24BC836D4(v69, off_27F078FE8[0]);
  sub_24BD265CC(a1, &v68, v69);
  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  sub_24BC836D4(v69, off_27F078FB8[0]);
  LODWORD(v67) = 0;
  __p = 0;
  v62 = sub_24BCCAA0C((a1 + 56), &__p, v69);
  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  sub_24BC836D4(v69, off_27F078FC8[0]);
  LOWORD(__p) = 0;
  v7 = sub_24BD274E4((a1 + 56), &__p, v69);
  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  v8 = (*(a1 + 80) + 16 * v68);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  v11 = (*(*v10 + 16))(v10);
  sub_24BDF4B70(v69, v11);
  if (v11)
  {
    operator new[]();
  }

  v12 = a1;
  if (*(a1 + 160) != *(a1 + 152))
  {
    v13 = 0;
    v14 = 0;
    v60 = v7;
    v15 = a5;
    v16 = 0xFFFFFFFFLL;
    v59 = v62;
    v58 = a5;
    do
    {
      v17 = *(v12 + 56);
      v18 = (v17 + 16 * v60);
      v20 = *v18;
      v19 = v18[1];
      v21 = v12;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v19);
        v17 = *(v21 + 56);
      }

      if (v16 < *(*(v20 + 40) + 2 * v14))
      {
        v22 = (v17 + 16 * v60);
        v24 = *v22;
        v23 = v22[1];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v23);
          v17 = *(v21 + 56);
        }

        v16 = *(*(v24 + 40) + 2 * v14);
      }

      v25 = (v17 + 16 * v59);
      v27 = *v25;
      v26 = v25[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v26);
      }

      v63 = v16;
      v28 = *(v27 + 40);
      sub_24BDF4BF0(&__p, 3uLL);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v61 = v13;
      v32 = (v28 + v13);
      v33 = -1;
      v34 = -1;
      v35 = v65;
      do
      {
        v36 = (*(a1 + 80) + 16 * v35);
        v38 = *v36;
        v37 = v36[1];
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v37);
          v35 = v65;
          v39 = (*(a1 + 80) + 16 * v65);
          v40 = *v39;
          v37 = v39[1];
        }

        else
        {
          v40 = *v36;
        }

        v41 = *v32;
        v42 = *(*(v38 + 40) + 8 * v41);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v37);
          v35 = v65;
          v41 = *v32;
        }

        v43 = (v42 * v15);
        v44 = (*(*(v40 + 40) + 8 * v41 + 4) * v15);
        v45 = __p;
        v46 = (__p + v29);
        *v46 = v43;
        v46[1] = v44;
        if (v43 < v34)
        {
          v34 = (v42 * v15);
        }

        if (v44 < v33)
        {
          v33 = v44;
        }

        if (v31 <= v43)
        {
          v31 = (v42 * v15);
        }

        if (v30 <= v44)
        {
          v30 = v44;
        }

        v29 += 8;
        ++v32;
      }

      while (v29 != 24);
      v16 = v63;
      if (v31 <= v34)
      {
        goto LABEL_50;
      }

      v47 = (v30 - v33) * (v31 - v34);
      do
      {
        v48 = v33;
        if (v30 > v33)
        {
          do
          {
            v49 = 0;
            v50 = __p + 4;
            v51 = -3;
            do
            {
              v52 = *(v50 - 1) - v34;
              v53 = v48 - *v50;
              v54 = v51 + 4;
              if (__CFADD__(v51++, 1))
              {
                v54 = 0;
              }

              v50 += 2;
              v49 += fabs(((*(__p + 2 * v54) - v34) * v53 + (*(__p + 2 * v54 + 1) - v48) * v52));
            }

            while (v51);
            if (v49 <= v47)
            {
              v56 = (*(*(v69[0] + 2 * v63) + 16) + (v34 + **(v69[0] + 2 * v63) * (~v48 + v58)) * *(*(v69[0] + 2 * v63) + 8));
              *v56 = (*(*a4 + 16 * v14) * 255.999);
              v56[1] = (*(*a4 + 16 * v14 + 4) * 255.999);
              v56[2] = (*(*a4 + 16 * v14 + 8) * 255.999);
            }

            ++v48;
          }

          while (v48 != v30);
        }

        ++v34;
      }

      while (v34 != v31);
      v45 = __p;
      if (__p)
      {
LABEL_50:
        v67 = v45;
        operator delete(v45);
      }

      ++v14;
      v12 = a1;
      v13 = v61 + 12;
    }

    while (v14 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  __p = v69;
  sub_24BCB7FC8(&__p);
  v57 = *MEMORY[0x277D85DE8];
}

void sub_24BDF2044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 153) < 0)
  {
    operator delete(*(v45 - 176));
  }

  _Unwind_Resume(exception_object);
}

float32x4_t *sub_24BDF20F0(float32x4_t *result, float32x4_t *a2, float32x4_t *a3, void *a4, uint64_t a5, float *a6, int32x4_t *a7, float32x4_t *a8)
{
  *a7 = vsubq_f32(*a2, *result);
  v8 = vsubq_f32(*a3, *result);
  *a8 = v8;
  v9 = *a7;
  v10 = vmlsq_f32(vmulq_f32(vuzp2q_s32(vextq_s8(v8, v8, 4uLL), v8), vzip2q_s32(vzip1q_s32(*a7, vextq_s8(v9, v9, 0xCuLL)), *a7)), vzip2q_s32(vzip1q_s32(v8, vextq_s8(v8, v8, 0xCuLL)), v8), vuzp2q_s32(vextq_s8(v9, v9, 4uLL), *a7));
  v11 = vmulq_f32(v10, v10);
  v11.i32[3] = 0;
  v12 = vpaddq_f32(v11, v11);
  v13 = vpaddq_f32(v12, v12);
  v14 = xmmword_24BFBD1C0;
  v15 = xmmword_24BFBD1C0;
  if (v13.f32[0] > 0.0)
  {
    v15 = vdivq_f32(v10, vsqrtq_f32(v13));
  }

  v16 = vmulq_f32(v9, v9);
  v16.i32[3] = 0;
  v17 = vpaddq_f32(v16, v16);
  v18 = vpaddq_f32(v17, v17);
  v19 = xmmword_24BFBD1C0;
  if (v18.f32[0] > 0.0)
  {
    v19 = vdivq_f32(v9, vsqrtq_f32(v18));
  }

  *a7 = v19;
  v20 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v15, vextq_s8(v15, v15, 0xCuLL)), v15), vuzp2q_s32(vextq_s8(v19, v19, 4uLL), v19)), vzip2q_s32(vzip1q_s32(v19, vextq_s8(v19, v19, 0xCuLL)), v19), vuzp2q_s32(vextq_s8(v15, v15, 4uLL), v15));
  v21 = vmulq_f32(v20, v20);
  v21.i32[3] = 0;
  v22 = vpaddq_f32(v21, v21);
  v23 = vpaddq_f32(v22, v22);
  if (v23.f32[0] > 0.0)
  {
    v14 = vdivq_f32(v20, vsqrtq_f32(v23));
  }

  *a8 = v14;
  *a4 = 0;
  v24 = vmulq_f32(vsubq_f32(*a2, *result), *a7);
  v24.i32[3] = 0;
  *a5 = vaddv_f32(*&vpaddq_f32(v24, v24));
  *(a5 + 4) = 0;
  v25 = vsubq_f32(*a3, *result);
  v26 = vmulq_f32(v25, *a7);
  v26.i32[3] = 0;
  v27 = vmulq_f32(v25, *a8);
  v27.i32[3] = 0;
  *a6 = vaddv_f32(*&vpaddq_f32(v26, v26));
  a6[1] = vaddv_f32(*&vpaddq_f32(v27, v27));
  v28 = vsubq_f32(*a3, *a2);
  v29 = vmulq_f32(v28, v28);
  v29.i32[3] = 0;
  if (vaddv_f32(*&vpaddq_f32(v29, v29)) < 1.0e-16)
  {
    a6[1] = 0.0;
  }

  return result;
}

uint64_t sub_24BDF2288(uint64_t a1)
{
  sub_24BC836D4(&__p, off_27F078FB8[0]);
  LODWORD(v57) = 0;
  v56 = 0;
  v2 = sub_24BCCAA0C((a1 + 56), &v56, &__p);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  if (v2 == -1)
  {
    return 0;
  }

  sub_24BC836D4(&__p, off_27F078FC8[0]);
  LODWORD(v56) = 0;
  v3 = sub_24BCCA8D0((a1 + 56), &v56, &__p);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  v59 = -1;
  if (v3 == -1)
  {
    return 0;
  }

  sub_24BC836D4(&__p, off_27F078FE8[0]);
  v4 = sub_24BD265CC(a1, &v59, &__p);
  v5 = v4;
  if (v62 < 0)
  {
    operator delete(__p);
    if (!v5)
    {
      return 0;
    }
  }

  else if (!v4)
  {
    return 0;
  }

  sub_24BC836D4(&__p, off_27F078F78[0]);
  v56 = 0;
  v6 = sub_24BCB74D4((a1 + 80), &v56, &__p);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  if (v6 == -1)
  {
    return 0;
  }

  v58[0] = v59;
  v58[1] = v3;
  v58[2] = v2;
  v58[3] = v6;
  v7 = (*(a1 + 80) + 16 * v59);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v8);
  }

  v10 = (*(*v9 + 16))(v9);
  sub_24BCA123C(&__p, v10);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (*(a1 + 56) + 16 * v3);
      v16 = *v14;
      v15 = v14[1];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v15);
      }

      if (v13 == *(*(v16 + 40) + 4 * v11))
      {
        *(__p + v13++) = v12;
      }

      v11 = ++v12;
    }

    while (v12 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
  }

  v17 = __p;
  if (v61 != __p)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = (v61 - __p) >> 2;
    do
    {
      v22 = v17[v18];
      LODWORD(v54[0]) = v22;
      if (v21 - 1 <= v18)
      {
        v23 = (*(a1 + 160) - *(a1 + 152)) >> 2;
      }

      else
      {
        LODWORD(v23) = v17[v19 + 1];
      }

      sub_24BDC0F0C(&v56, (v23 - v22));
      v24 = v54[0];
      if (LODWORD(v54[0]) < v23)
      {
        do
        {
          *(v56 + (v24 - LODWORD(v54[0]))) = v24;
          ++v24;
        }

        while (v23 != v24);
      }

      v25 = sub_24BD96498(a1, &v56, v58);
      if (v25)
      {
        v55 = v23 - 1;
        sub_24BE4E7FC(a1, v54, &v55);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      v20 |= v25;
      v17 = __p;
      v21 = (v61 - __p) >> 2;
      v18 = ++v19;
    }

    while (v21 > v19);
    if (v20)
    {
      v26 = (*(a1 + 80) + 16 * v58[0]);
      v28 = *v26;
      v27 = v26[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v27);
      }

      v29 = (*(*v28 + 16))(v28);
      sub_24BCA123C(&v56, v29);
      if (*(a1 + 160) != *(a1 + 152))
      {
        v30 = 0;
        v31 = 0;
        v32 = -1;
        v33 = 1;
        do
        {
          v34 = (*(a1 + 56) + 16 * v3);
          v36 = *v34;
          v35 = v34[1];
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v35);
          }

          if (v32 != *(*(v36 + 40) + 4 * v30))
          {
            v37 = (*(a1 + 56) + 16 * v3);
            v39 = *v37;
            v38 = v37[1];
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v38);
            }

            v32 = *(*(v39 + 40) + 4 * v30);
            *(v56 + v31++) = v32;
          }

          v30 = v33++;
        }

        while (v30 < (*(a1 + 160) - *(a1 + 152)) >> 2);
      }

      sub_24BCA123C(v54, v29);
      if (v29)
      {
        v40 = 0;
        v41 = v56;
        v42 = v54[0];
        do
        {
          v42[v41[v40]] = v40;
          ++v40;
        }

        while (v29 != v40);
      }

      if (*(a1 + 160) != *(a1 + 152))
      {
        v43 = 0;
        v44 = 1;
        do
        {
          v45 = (*(a1 + 56) + 16 * v3);
          v47 = *v45;
          v46 = v45[1];
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v46);
          }

          v48 = *(*(v47 + 40) + 4 * v43);
          v49 = *(v54[0] + v48);
          if (v49 != v48)
          {
            v50 = (*(a1 + 56) + 16 * v3);
            v52 = *v50;
            v51 = v50[1];
            if (v51)
            {
              atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v51);
            }

            *(*(v52 + 40) + 4 * v43) = v49;
          }

          v43 = v44++;
        }

        while (v43 < (*(a1 + 160) - *(a1 + 152)) >> 2);
      }

      if (v54[0])
      {
        v54[1] = v54[0];
        operator delete(v54[0]);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      v17 = __p;
    }
  }

  if (v17)
  {
    v61 = v17;
    operator delete(v17);
  }

  return 1;
}

void sub_24BDF2788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDF27EC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BDF28E0();
}

void sub_24BDF28C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDF2954(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F965B8;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F965F0;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BDF29F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F965B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BDF2A74(void *a1)
{
  sub_24BDF2C7C(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BDF2ACC(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void sub_24BDF2AE8(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 >= v2)
  {
    v5 = a1[5];
    v6 = (v3 - v5) >> 2;
    if ((v6 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v7 = v2 - v5;
    v8 = v7 >> 1;
    if (v7 >> 1 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_24BC92E0C((a1 + 5), v9);
    }

    *(4 * v6) = -1;
    v4 = 4 * v6 + 4;
    v10 = a1[5];
    v11 = a1[6] - v10;
    v12 = (4 * v6 - v11);
    memcpy(v12, v10, v11);
    v13 = a1[5];
    a1[5] = v12;
    a1[6] = v4;
    a1[7] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = -1;
    v4 = (v3 + 1);
  }

  a1[6] = v4;
}

uint64_t sub_24BDF2BB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = *(v3 + 4 * a3);
  *(*(result + 40) + 4 * a3) = v4;
  return result;
}

uint64_t sub_24BDF2C7C(void *a1)
{
  *a1 = &unk_285F965F0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BDF2CDC(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F965F0;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BD41EB0((v4 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  return a1;
}

void sub_24BDF2DB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDF2DD4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BDF2E0C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24BDF2E40(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BDF2F34();
}

void sub_24BDF2F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDF2FA8(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F96698;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F966D0;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BDF3048(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BDF30C8(void *a1)
{
  sub_24BDF32D0(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BDF3120(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void sub_24BDF313C(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 >= v2)
  {
    v5 = a1[5];
    v6 = (v3 - v5) >> 2;
    if ((v6 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v7 = v2 - v5;
    v8 = v7 >> 1;
    if (v7 >> 1 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_24BC92E0C((a1 + 5), v9);
    }

    *(4 * v6) = -1;
    v4 = 4 * v6 + 4;
    v10 = a1[5];
    v11 = a1[6] - v10;
    v12 = (4 * v6 - v11);
    memcpy(v12, v10, v11);
    v13 = a1[5];
    a1[5] = v12;
    a1[6] = v4;
    a1[7] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = -1;
    v4 = (v3 + 1);
  }

  a1[6] = v4;
}

uint64_t sub_24BDF320C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = *(v3 + 4 * a3);
  *(*(result + 40) + 4 * a3) = v4;
  return result;
}

uint64_t sub_24BDF32D0(void *a1)
{
  *a1 = &unk_285F966D0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BDF3330(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F966D0;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BDC1044((v4 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  return a1;
}

void sub_24BDF340C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDF3428(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BDF3460(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24BDF3494(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BDF3588();
}

void sub_24BDF3570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDF35FC(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F96778;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F967B0;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BDF369C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BDF371C(void *a1)
{
  sub_24BDF3940(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BDF3774(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void sub_24BDF3790(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 >= v2)
  {
    v5 = a1[5];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 2;
    v8 = v7 + 1;
    if ((v7 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v9 = v2 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    v10 = v9 >= 0x7FFFFFFFFFFFFFFCLL;
    v11 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_24BC92E0C((a1 + 5), v11);
    }

    v12 = (v3 - v5) >> 2;
    v13 = (4 * v7);
    v14 = (4 * v7 - 4 * v12);
    *v13 = 0;
    v4 = v13 + 1;
    memcpy(v14, v5, v6);
    v15 = a1[5];
    a1[5] = v14;
    a1[6] = v4;
    a1[7] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 4;
  }

  a1[6] = v4;
}

float sub_24BDF3864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  result = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = *(v3 + 4 * a3);
  *(v3 + 4 * a3) = result;
  return result;
}

float sub_24BDF387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  result = *(v3 + 4 * a2);
  *(v3 + 4 * a3) = result;
  return result;
}

float sub_24BDF388C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  result = (*(v3 + 4 * a2) + *(v3 + 4 * a3)) * 0.5;
  *(v3 + 4 * a2) = result;
  return result;
}

uint64_t sub_24BDF3940(void *a1)
{
  *a1 = &unk_285F967B0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BDF39A0(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F967B0;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BD07D84((v4 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  return a1;
}

void sub_24BDF3A7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDF3A98(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BDF3AD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24BDF3B04(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = (a2 - 4);
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v96 = *(v9 + 8);
                v97 = *v9;
                v98 = *(a2 - 8);
                if (v96 >= *v9)
                {
                  if (v98 >= v96)
                  {
                    return;
                  }

                  *(v9 + 8) = v98;
                  *(a2 - 8) = v96;
                  v8 = (v9 + 12);
                  v148 = *(v9 + 12);
                  *(v9 + 12) = *(a2 - 4);
                  *(a2 - 4) = v148;
                  v149 = *(v9 + 8);
                  v150 = *v9;
                  if (v149 >= *v9)
                  {
                    return;
                  }

                  *v9 = v149;
                  *(v9 + 8) = v150;
                  v99 = (v9 + 4);
                }

                else
                {
                  if (v98 >= v96)
                  {
                    v99 = (v9 + 12);
                    v162 = *(v9 + 12);
                    v163 = *(v9 + 4);
                    *v9 = v96;
                    *(v9 + 4) = v162;
                    *(v9 + 8) = v97;
                    *(v9 + 12) = v163;
                    v164 = *(a2 - 8);
                    if (v164 >= v97)
                    {
                      return;
                    }

                    *(v9 + 8) = v164;
                  }

                  else
                  {
                    v99 = (v9 + 4);
                    *v9 = v98;
                  }

                  *(a2 - 8) = v97;
                }

                v165 = *v99;
                *v99 = *v8;
                *v8 = v165;
                return;
              case 4:
                v100 = *(v9 + 8);
                v101 = *v9;
                v102 = *(v9 + 16);
                if (v100 >= *v9)
                {
                  if (v102 < v100)
                  {
                    v151 = (v9 + 12);
                    v152 = *(v9 + 12);
                    v153 = *(v9 + 20);
                    *(v9 + 8) = v102;
                    *(v9 + 12) = v153;
                    *(v9 + 16) = v100;
                    *(v9 + 20) = v152;
                    if (v102 < v101)
                    {
                      *v9 = v102;
                      *(v9 + 8) = v101;
                      v103 = (v9 + 4);
                      goto LABEL_191;
                    }

LABEL_193:
                    v169 = *(a2 - 8);
                    if (v169 < v100)
                    {
                      *(v9 + 16) = v169;
                      *(a2 - 8) = v100;
                      v170 = *(v9 + 20);
                      *(v9 + 20) = *(a2 - 4);
                      *(a2 - 4) = v170;
                      v171 = *(v9 + 16);
                      v172 = *(v9 + 8);
                      if (v171 < v172)
                      {
                        v173 = *(v9 + 12);
                        v174 = *(v9 + 20);
                        *(v9 + 8) = v171;
                        *(v9 + 12) = v174;
                        *(v9 + 16) = v172;
                        *(v9 + 20) = v173;
                        v175 = *v9;
                        if (v171 < *v9)
                        {
                          v176 = *(v9 + 4);
                          *v9 = v171;
                          *(v9 + 4) = v174;
                          *(v9 + 8) = v175;
                          *(v9 + 12) = v176;
                        }
                      }
                    }

                    return;
                  }
                }

                else
                {
                  if (v102 < v100)
                  {
                    v103 = (v9 + 4);
                    *v9 = v102;
                    goto LABEL_190;
                  }

                  v103 = (v9 + 12);
                  v166 = *(v9 + 12);
                  v167 = *(v9 + 4);
                  *v9 = v100;
                  *(v9 + 4) = v166;
                  *(v9 + 8) = v101;
                  *(v9 + 12) = v167;
                  if (v102 < v101)
                  {
                    *(v9 + 8) = v102;
LABEL_190:
                    *(v9 + 16) = v101;
                    v151 = (v9 + 20);
LABEL_191:
                    v168 = *v103;
                    *v103 = *v151;
                    *v151 = v168;
                    v100 = *(v9 + 16);
                    goto LABEL_193;
                  }
                }

                v100 = v102;
                goto LABEL_193;
              case 5:

                sub_24BDF4624(v9, v9 + 8, v9 + 16, (v9 + 24), a2 - 8);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              v93 = *(a2 - 8);
              v94 = *v9;
              if (v93 < *v9)
              {
                *v9 = v93;
                *(a2 - 8) = v94;
                v95 = *(v9 + 4);
                *(v9 + 4) = *(a2 - 4);
                *(a2 - 4) = v95;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v104 = v9 + 8;
            v106 = v9 == a2 || v104 == a2;
            if (a4)
            {
              if (!v106)
              {
                v107 = 0;
                v108 = v9;
                do
                {
                  v109 = v104;
                  v110 = *(v108 + 8);
                  v111 = *v108;
                  if (v110 < *v108)
                  {
                    v112 = *(v108 + 12);
                    v113 = v107;
                    while (1)
                    {
                      v114 = v9 + v113;
                      v115 = *(v9 + v113 + 4);
                      *(v114 + 8) = v111;
                      *(v114 + 12) = v115;
                      if (!v113)
                      {
                        break;
                      }

                      v111 = *(v114 - 8);
                      v113 -= 8;
                      if (v110 >= v111)
                      {
                        v116 = v9 + v113 + 8;
                        goto LABEL_136;
                      }
                    }

                    v116 = v9;
LABEL_136:
                    *v116 = v110;
                    *(v116 + 4) = v112;
                  }

                  v104 = v109 + 8;
                  v107 += 8;
                  v108 = v109;
                }

                while (v109 + 8 != a2);
              }
            }

            else if (!v106)
            {
              v154 = (v9 + 12);
              do
              {
                v155 = v104;
                v156 = *(a1 + 8);
                v157 = *a1;
                if (v156 < *a1)
                {
                  v158 = *(a1 + 12);
                  v159 = v154;
                  do
                  {
                    v160 = v159;
                    v161 = *(v159 - 2);
                    v159 -= 2;
                    *(v160 - 1) = v157;
                    *v160 = v161;
                    v157 = *(v160 - 5);
                  }

                  while (v156 < v157);
                  *(v159 - 1) = v156;
                  *v159 = v158;
                }

                v104 = v155 + 8;
                v154 += 2;
                a1 = v155;
              }

              while (v155 + 8 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v117 = (v10 - 2) >> 1;
              v118 = v117;
              do
              {
                v119 = v118;
                if (v117 >= v118)
                {
                  v120 = (2 * v118) | 1;
                  v121 = v9 + 8 * v120;
                  if (2 * v119 + 2 < v10 && *v121 < *(v121 + 8))
                  {
                    v121 += 8;
                    v120 = 2 * v119 + 2;
                  }

                  v122 = v9 + 8 * v119;
                  v123 = *v121;
                  v124 = *v122;
                  if (*v121 >= *v122)
                  {
                    v125 = *(v122 + 4);
                    do
                    {
                      v126 = v122;
                      v122 = v121;
                      *v126 = v123;
                      v126[1] = *(v121 + 4);
                      if (v117 < v120)
                      {
                        break;
                      }

                      v127 = 2 * v120;
                      v120 = (2 * v120) | 1;
                      v121 = v9 + 8 * v120;
                      v128 = v127 + 2;
                      if (v128 < v10 && *v121 < *(v121 + 8))
                      {
                        v121 += 8;
                        v120 = v128;
                      }

                      v123 = *v121;
                    }

                    while (*v121 >= v124);
                    *v122 = v124;
                    *(v122 + 4) = v125;
                  }
                }

                v118 = v119 - 1;
              }

              while (v119);
              do
              {
                v129 = 0;
                v131 = *v9;
                v130 = *(v9 + 4);
                v132 = v9;
                do
                {
                  v133 = v132;
                  v134 = &v132[2 * v129];
                  v132 = v134 + 2;
                  v135 = 2 * v129;
                  v129 = (2 * v129) | 1;
                  v136 = v135 + 2;
                  if (v136 < v10)
                  {
                    v138 = *(v134 + 4);
                    v137 = v134 + 4;
                    if (*(v137 - 2) < v138)
                    {
                      v132 = v137;
                      v129 = v136;
                    }
                  }

                  *v133 = *v132;
                  v133[1] = v132[1];
                }

                while (v129 <= ((v10 - 2) >> 1));
                if (v132 == (a2 - 8))
                {
                  *v132 = v131;
                  v132[1] = v130;
                }

                else
                {
                  *v132 = *(a2 - 8);
                  v132[1] = *(a2 - 4);
                  *(a2 - 8) = v131;
                  *(a2 - 4) = v130;
                  v139 = (v132 - v9 + 8) >> 3;
                  v140 = v139 < 2;
                  v141 = v139 - 2;
                  if (!v140)
                  {
                    v142 = v141 >> 1;
                    v143 = (v9 + 8 * v142);
                    v144 = *v143;
                    v145 = *v132;
                    if (*v143 < *v132)
                    {
                      v146 = v132[1];
                      do
                      {
                        v147 = v132;
                        v132 = v143;
                        *v147 = v144;
                        v147[1] = *(v143 + 1);
                        if (!v142)
                        {
                          break;
                        }

                        v142 = (v142 - 1) >> 1;
                        v143 = (v9 + 8 * v142);
                        v144 = *v143;
                      }

                      while (*v143 < v145);
                      *v132 = v145;
                      v132[1] = v146;
                    }
                  }
                }

                a2 -= 8;
                v140 = v10-- <= 2;
              }

              while (!v140);
            }

            return;
          }

          v11 = v9 + 8 * (v10 >> 1);
          v12 = v11;
          v13 = *(a2 - 8);
          if (v10 >= 0x81)
          {
            v14 = *v11;
            v15 = *v9;
            if (*v11 >= *v9)
            {
              if (v13 >= v14 || (*v11 = v13, *(a2 - 8) = v14, v20 = (v11 + 4), v21 = *(v11 + 4), *(v11 + 4) = *(a2 - 4), *(a2 - 4) = v21, v22 = *v9, *v11 >= *v9))
              {
LABEL_28:
                v30 = v11 - 8;
                v31 = *(v11 - 8);
                v32 = *(v9 + 8);
                v33 = *(a2 - 16);
                if (v31 >= v32)
                {
                  if (v33 >= v31 || (*v30 = v33, *(a2 - 16) = v31, v35 = (v11 - 4), v36 = *(v11 - 4), *(v11 - 4) = *(a2 - 12), *(a2 - 12) = v36, v37 = *(v9 + 8), *v30 >= v37))
                  {
LABEL_41:
                    v46 = *(v11 + 8);
                    v45 = v11 + 8;
                    v47 = v46;
                    v48 = *(v9 + 16);
                    v49 = *(a2 - 24);
                    if (v46 >= v48)
                    {
                      if (v49 < v47)
                      {
                        *v45 = v49;
                        *(a2 - 24) = v47;
                        v51 = (v45 + 4);
                        v52 = *(v45 + 4);
                        *(v45 + 4) = *(a2 - 20);
                        *(a2 - 20) = v52;
                        v47 = *v45;
                        v53 = *(v9 + 16);
                        if (*v45 < v53)
                        {
                          *(v9 + 16) = v47;
                          *v45 = v53;
                          v50 = (v9 + 20);
LABEL_50:
                          v57 = *v50;
                          *v50 = *v51;
                          *v51 = v57;
                          v47 = *v45;
                        }
                      }
                    }

                    else
                    {
                      if (v49 < v47)
                      {
                        v50 = (v9 + 20);
                        *(v9 + 16) = v49;
LABEL_49:
                        *(a2 - 24) = v48;
                        v51 = (a2 - 20);
                        goto LABEL_50;
                      }

                      v50 = (v45 + 4);
                      v54 = *(v45 + 4);
                      v55 = *(v9 + 20);
                      *(v9 + 16) = v47;
                      *(v9 + 20) = v54;
                      *v45 = v48;
                      *(v45 + 4) = v55;
                      v56 = *(a2 - 24);
                      if (v56 < v48)
                      {
                        *v45 = v56;
                        goto LABEL_49;
                      }

                      v47 = v48;
                    }

                    v58 = *v12;
                    v59 = *v30;
                    if (*v12 >= *v30)
                    {
                      if (v47 >= v58)
                      {
LABEL_61:
                        v67 = *v9;
                        *v9 = v58;
                        v19 = (v9 + 4);
                        *v12 = v67;
                        v25 = (v12 + 4);
                        goto LABEL_62;
                      }

                      v62 = (v12 + 4);
                      v63 = *(v12 + 4);
                      *v12 = v47;
                      *(v12 + 4) = *(v45 + 4);
                      *v45 = v58;
                      *(v45 + 4) = v63;
                      if (v47 >= v59)
                      {
                        v58 = v47;
                        goto LABEL_61;
                      }

                      *v30 = v47;
                      v60 = (v30 + 4);
                      *v12 = v59;
                    }

                    else
                    {
                      if (v47 >= v58)
                      {
                        v64 = *(v12 + 4);
                        *v12 = v59;
                        v65 = *(v30 + 4);
                        *v30 = v58;
                        *(v30 + 4) = v64;
                        *(v12 + 4) = v65;
                        if (v47 >= v59)
                        {
                          v58 = v59;
                          goto LABEL_61;
                        }

                        *v12 = v47;
                        *v45 = v59;
                        v61 = (v45 + 4);
                        v60 = (v12 + 4);
                      }

                      else
                      {
                        *v30 = v47;
                        v60 = (v30 + 4);
                        *v45 = v59;
                        v61 = (v45 + 4);
                      }

                      v62 = v61;
                    }

                    v66 = *v60;
                    *v60 = *v62;
                    *v62 = v66;
                    v58 = *v12;
                    goto LABEL_61;
                  }

                  *(v9 + 8) = *v30;
                  *v30 = v37;
                  v34 = (v9 + 12);
                }

                else
                {
                  if (v33 >= v31)
                  {
                    v34 = (v11 - 4);
                    v41 = *(v11 - 4);
                    v42 = *(v9 + 12);
                    *(v9 + 8) = v31;
                    *(v9 + 12) = v41;
                    *v30 = v32;
                    *(v11 - 4) = v42;
                    v43 = *(a2 - 16);
                    if (v43 >= v32)
                    {
                      goto LABEL_41;
                    }

                    *v30 = v43;
                  }

                  else
                  {
                    v34 = (v9 + 12);
                    *(v9 + 8) = v33;
                  }

                  *(a2 - 16) = v32;
                  v35 = (a2 - 12);
                }

                v44 = *v34;
                *v34 = *v35;
                *v35 = v44;
                goto LABEL_41;
              }

              *v9 = *v11;
              v16 = (v9 + 4);
              *v11 = v22;
            }

            else
            {
              if (v13 >= v14)
              {
                v16 = (v11 + 4);
                v26 = *(v11 + 4);
                v27 = *(v9 + 4);
                *v9 = v14;
                *(v9 + 4) = v26;
                *v11 = v15;
                *(v11 + 4) = v27;
                v28 = *(a2 - 8);
                if (v28 >= v15)
                {
                  goto LABEL_28;
                }

                *v11 = v28;
              }

              else
              {
                v16 = (v9 + 4);
                *v9 = v13;
              }

              *(a2 - 8) = v15;
              v20 = (a2 - 4);
            }

            v29 = *v16;
            *v16 = *v20;
            *v20 = v29;
            goto LABEL_28;
          }

          v17 = *v9;
          v18 = *v11;
          if (*v9 >= *v11)
          {
            if (v13 < v17)
            {
              *v9 = v13;
              *(a2 - 8) = v17;
              v23 = *(v9 + 4);
              *(v9 + 4) = *(a2 - 4);
              *(a2 - 4) = v23;
              v24 = *v11;
              if (*v9 < *v11)
              {
                *v11 = *v9;
                *v9 = v24;
                v19 = (v11 + 4);
                v25 = (v9 + 4);
LABEL_62:
                v68 = *v19;
                *v19 = *v25;
                *v25 = v68;
              }
            }
          }

          else
          {
            if (v13 < v17)
            {
              v19 = (v11 + 4);
              *v12 = v13;
LABEL_36:
              *(a2 - 8) = v18;
              v25 = (a2 - 4);
              goto LABEL_62;
            }

            v19 = (v9 + 4);
            v38 = *(v9 + 4);
            v39 = *(v12 + 4);
            *v12 = v17;
            *(v12 + 4) = v38;
            *v9 = v18;
            *(v9 + 4) = v39;
            v40 = *(a2 - 8);
            if (v40 < v18)
            {
              *v9 = v40;
              goto LABEL_36;
            }
          }

          --a3;
          v69 = *v9;
          if ((a4 & 1) != 0 || *(v9 - 8) < v69)
          {
            break;
          }

          if (v69 >= *(a2 - 8))
          {
            v84 = v9 + 8;
            do
            {
              v9 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 8;
            }

            while (v69 >= *v9);
          }

          else
          {
            do
            {
              v83 = *(v9 + 8);
              v9 += 8;
            }

            while (v69 >= v83);
          }

          v85 = a2;
          if (v9 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 2;
            }

            while (v69 < v86);
          }

          v87 = *(a1 + 4);
          if (v9 < v85)
          {
            v88 = *v9;
            v89 = *v85;
            do
            {
              *v9 = v89;
              *v85 = v88;
              v90 = *(v9 + 4);
              *(v9 + 4) = v85[1];
              *(v85 + 1) = v90;
              do
              {
                v91 = *(v9 + 8);
                v9 += 8;
                v88 = v91;
              }

              while (v69 >= v91);
              do
              {
                v92 = *(v85 - 2);
                v85 -= 2;
                v89 = v92;
              }

              while (v69 < v92);
            }

            while (v9 < v85);
          }

          if (v9 - 8 != a1)
          {
            *a1 = *(v9 - 8);
            *(a1 + 4) = *(v9 - 4);
          }

          a4 = 0;
          *(v9 - 8) = v69;
          *(v9 - 4) = v87;
        }

        v70 = 0;
        v71 = *(v9 + 4);
        do
        {
          v72 = *(v9 + v70 + 8);
          v70 += 8;
        }

        while (v72 < v69);
        v73 = v9 + v70;
        v74 = a2;
        if (v70 == 8)
        {
          v74 = a2;
          do
          {
            if (v73 >= v74)
            {
              break;
            }

            v76 = *(v74 - 2);
            v74 -= 2;
          }

          while (v76 >= v69);
        }

        else
        {
          do
          {
            v75 = *(v74 - 2);
            v74 -= 2;
          }

          while (v75 >= v69);
        }

        if (v73 >= v74)
        {
          v9 += v70;
        }

        else
        {
          v77 = *v74;
          v9 += v70;
          v78 = v74;
          do
          {
            *v9 = v77;
            *v78 = v72;
            v79 = *(v9 + 4);
            *(v9 + 4) = v78[1];
            *(v78 + 1) = v79;
            do
            {
              v80 = *(v9 + 8);
              v9 += 8;
              v72 = v80;
            }

            while (v80 < v69);
            do
            {
              v81 = *(v78 - 2);
              v78 -= 2;
              v77 = v81;
            }

            while (v81 >= v69);
          }

          while (v9 < v78);
        }

        if (v9 - 8 != a1)
        {
          *a1 = *(v9 - 8);
          *(a1 + 4) = *(v9 - 4);
        }

        *(v9 - 8) = v69;
        *(v9 - 4) = v71;
        if (v73 >= v74)
        {
          break;
        }

LABEL_86:
        sub_24BDF3B04(a1, v9 - 8, a3, a4 & 1);
        a4 = 0;
      }

      v82 = sub_24BDF47FC(a1, v9 - 8);
      if (sub_24BDF47FC(v9, a2))
      {
        break;
      }

      if (!v82)
      {
        goto LABEL_86;
      }
    }

    a2 = v9 - 8;
    if (!v82)
    {
      continue;
    }

    break;
  }
}

float sub_24BDF4624(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a1;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v9 = (a2 + 4);
      v10 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v10;
      v11 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        v8 = a1 + 1;
        *a2 = v11;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = a1 + 1;
      *a1 = v7;
      *a3 = v6;
      v9 = (a3 + 4);
LABEL_9:
      v14 = *v8;
      *v8 = *v9;
      *v9 = v14;
      goto LABEL_10;
    }

    *a1 = v5;
    *a2 = v6;
    v8 = (a2 + 4);
    v12 = a1[1];
    a1[1] = *(a2 + 4);
    *(a2 + 4) = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v13;
      v9 = (a3 + 4);
      goto LABEL_9;
    }
  }

LABEL_10:
  v15 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = *(a3 + 4);
    *(a3 + 4) = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v18;
      v19 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v19;
        v20 = a1[1];
        a1[1] = *(a2 + 4);
        *(a2 + 4) = v20;
      }
    }
  }

  result = *a5;
  v22 = *a4;
  if (*a5 < *a4)
  {
    *a4 = result;
    *a5 = v22;
    v23 = a4[1];
    a4[1] = *(a5 + 4);
    *(a5 + 4) = v23;
    result = *a4;
    v24 = *a3;
    if (*a4 < *a3)
    {
      *a3 = result;
      *a4 = v24;
      v25 = *(a3 + 4);
      *(a3 + 4) = a4[1];
      a4[1] = v25;
      result = *a3;
      v26 = *a2;
      if (*a3 < *a2)
      {
        *a2 = result;
        *a3 = v26;
        v27 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v27;
        result = *a2;
        v28 = *a1;
        if (*a2 < *a1)
        {
          *a1 = result;
          *a2 = v28;
          result = *(a1 + 1);
          a1[1] = *(a2 + 4);
          *(a2 + 4) = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BDF47FC(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 8);
      v7 = *a1;
      v8 = *(a2 - 8);
      if (v6 >= *a1)
      {
        if (v8 >= v6)
        {
          return 1;
        }

        *(a1 + 8) = v8;
        *(a2 - 8) = v6;
        v19 = (a1 + 12);
        v20 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 4);
        *(a2 - 4) = v20;
        v21 = *(a1 + 8);
        v22 = *a1;
        if (v21 >= *a1)
        {
          return 1;
        }

        *a1 = v21;
        *(a1 + 8) = v22;
        v9 = (a1 + 4);
      }

      else
      {
        if (v8 >= v6)
        {
          v9 = (a1 + 12);
          v29 = *(a1 + 12);
          v30 = *(a1 + 4);
          *a1 = v6;
          *(a1 + 4) = v29;
          *(a1 + 8) = v7;
          *(a1 + 12) = v30;
          v31 = *(a2 - 8);
          if (v31 >= v7)
          {
            return 1;
          }

          *(a1 + 8) = v31;
        }

        else
        {
          v9 = (a1 + 4);
          *a1 = v8;
        }

        *(a2 - 8) = v7;
        v19 = (a2 - 4);
      }

      v32 = *v9;
      *v9 = *v19;
      *v19 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_24BDF4624(a1, a1 + 8, a1 + 16, (a1 + 24), a2 - 8);
      return 1;
    }

    v15 = *(a1 + 8);
    v16 = *a1;
    v17 = *(a1 + 16);
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        v26 = (a1 + 12);
        v27 = *(a1 + 12);
        v28 = *(a1 + 20);
        *(a1 + 8) = v17;
        *(a1 + 12) = v28;
        *(a1 + 16) = v15;
        *(a1 + 20) = v27;
        if (v17 >= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        *(a1 + 8) = v16;
        v18 = (a1 + 4);
LABEL_50:
        v48 = *v18;
        *v18 = *v26;
        *v26 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = (a1 + 4);
        *a1 = v17;
LABEL_49:
        *(a1 + 16) = v16;
        v26 = (a1 + 20);
        v15 = v16;
        goto LABEL_50;
      }

      v18 = (a1 + 12);
      v46 = *(a1 + 12);
      v47 = *(a1 + 4);
      *a1 = v15;
      *(a1 + 4) = v46;
      *(a1 + 8) = v16;
      *(a1 + 12) = v47;
      if (v17 < v16)
      {
        *(a1 + 8) = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 8);
    if (v49 < v17)
    {
      *(a1 + 16) = v49;
      *(a2 - 8) = v17;
      v50 = *(a1 + 20);
      *(a1 + 20) = *(a2 - 4);
      *(a2 - 4) = v50;
      v51 = *(a1 + 16);
      v52 = *(a1 + 8);
      if (v51 < v52)
      {
        v53 = *(a1 + 12);
        v54 = *(a1 + 20);
        *(a1 + 8) = v51;
        *(a1 + 12) = v54;
        *(a1 + 16) = v52;
        *(a1 + 20) = v53;
        v55 = *a1;
        if (v51 < *a1)
        {
          v56 = *(a1 + 4);
          *a1 = v51;
          *(a1 + 4) = v54;
          *(a1 + 8) = v55;
          *(a1 + 12) = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 8);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 8) = v4;
      v5 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 4);
      *(a2 - 4) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 16);
  v11 = *(a1 + 16);
  v12 = *(a1 + 8);
  v13 = *a1;
  if (v12 < *a1)
  {
    if (v11 >= v12)
    {
      v14 = (a1 + 12);
      v33 = *(a1 + 12);
      v34 = *(a1 + 4);
      *a1 = v12;
      *(a1 + 4) = v33;
      *(a1 + 8) = v13;
      *(a1 + 12) = v34;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      *(a1 + 8) = v11;
    }

    else
    {
      v14 = (a1 + 4);
      *a1 = v11;
    }

    *(a1 + 16) = v13;
    v23 = (a1 + 20);
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    v23 = (a1 + 12);
    v24 = *(a1 + 12);
    v25 = *(a1 + 20);
    *(a1 + 8) = v11;
    *(a1 + 12) = v25;
    *(a1 + 16) = v12;
    *(a1 + 20) = v24;
    if (v11 < v13)
    {
      *a1 = v11;
      *(a1 + 8) = v13;
      v14 = (a1 + 4);
LABEL_35:
      v35 = *v14;
      *v14 = *v23;
      *v23 = v35;
    }
  }

LABEL_36:
  v36 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v36;
    v40 = *v10;
    if (*v36 < *v10)
    {
      v41 = *(v36 + 4);
      v42 = v37;
      while (1)
      {
        v43 = a1 + v42;
        v44 = *(a1 + v42 + 20);
        *(v43 + 24) = v40;
        *(v43 + 28) = v44;
        if (v42 == -16)
        {
          break;
        }

        v40 = *(v43 + 8);
        v42 -= 8;
        if (v39 >= v40)
        {
          v45 = a1 + v42 + 24;
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v39;
      *(v45 + 4) = v41;
      if (++v38 == 8)
      {
        return v36 + 8 == a2;
      }
    }

    v10 = v36;
    v37 += 8;
    v36 += 8;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void *sub_24BDF4B70(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCC95E0(result, a2);
  }

  return result;
}

void *sub_24BDF4BF0(void *result, unint64_t a2)
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

void sub_24BDF4C4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDF4C68(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v47 = *MEMORY[0x277D85DE8];
  v45 = a7;
  v11 = *a1;
  v12 = a1[1];
  v13 = (v12 - *a1) >> 4;
  if (v13 >= 5)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    sub_24BDF8C50(&v42, v11, v12, v13);
    v19 = *(a3 + 152);
    v18 = *(a3 + 160);
    sub_24BDF8DDC(&v40, (a1[1] - *a1) >> 4);
    if (v43 != v42)
    {
      v20 = *v42;
      sub_24BDF8E5C();
    }

    v21 = (v18 - v19) >> 2;
    sub_24BDF4F78(&v40, a3, v21);
    v22 = *(a6 + 24);
    if (!v22 || ((*(*v22 + 48))(v22) & 1) == 0)
    {
      sub_24BCB801C(a1);
      sub_24BCA2DD0(v46, a6);
      sub_24BDF5140(&v40, &v42, a2, v21, a4, a5, v46, v45, a8);
      sub_24BC9F10C(v46);
      v23 = *(a6 + 24);
      if (!v23 || ((*(*v23 + 48))(v23) & 1) == 0)
      {
        v24 = v40;
        v25 = 0;
        if (v41 != v40)
        {
          v26 = (v41 - v40) >> 4;
          if (v26 <= 1)
          {
            v26 = 1;
          }

          do
          {
            v27 = *v24;
            v24 += 2;
            if (v27)
            {
              ++v25;
            }

            --v26;
          }

          while (v26);
        }

        sub_24BDF6150(a1, v25);
        v29 = v42;
        v28 = v43;
        if (v43 != v42)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          do
          {
            v33 = *&v29[v30];
            if (v33)
            {
              v34 = *a1;
              v35 = *&v29[v30 + 8];
              if (v35)
              {
                atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
              }

              v36 = (v34 + 16 * v32);
              v37 = v36[1];
              *v36 = v33;
              v36[1] = v35;
              if (v37)
              {
                sub_24BC9EC78(v37);
              }

              ++v32;
              v29 = v42;
              v28 = v43;
            }

            ++v31;
            v30 += 16;
          }

          while (v31 < (v28 - v29) >> 4);
        }
      }
    }

    *&v39 = &v40;
    sub_24BCB7FC8(&v39);
    v40 = &v42;
    sub_24BCB7FC8(&v40);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_24BDF4F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a11 = &a13;
  sub_24BCB7FC8(&a11);
  a13 = &a16;
  sub_24BCB7FC8(&a13);
  _Unwind_Resume(a1);
}

void sub_24BDF4F78(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_24BCA123C(v21, a3);
  v5 = *a1;
  v6 = a1[1];
  if (v6 != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v7;
      v10 = *(*(v5 + 16 * v7) + 40);
      sub_24BC836D4(__p, "f:index_in_root");
      v22 = -1;
      v11 = sub_24BDBAF64((v10 + 56), &v22, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      v5 = *a1;
      v12 = *(*(*a1 + v9) + 40);
      if (v12[20] != v12[19])
      {
        v13 = 0;
        do
        {
          v14 = (v12[7] + 16 * v11);
          v16 = *v14;
          v15 = v14[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v15);
            v5 = *a1;
          }

          *(v21[0] + *(*(v16 + 40) + 4 * v13++)) = v8;
          v12 = *(*(v5 + v9) + 40);
        }

        while (v13 < (v12[20] - v12[19]) >> 2);
      }

      v6 = a1[1];
      v7 = ++v8;
    }

    while (v8 < ((v6 - v5) >> 4));
  }

  if (v6 != v5)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      sub_24BDF61E0(*(v5 + 16 * v17), v18, v21, a2);
      v5 = *a1;
      v17 = ++v18;
    }

    while (v18 < ((a1[1] - *a1) >> 4));
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }
}

void sub_24BDF5108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDF5140(uint64_t *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v119 = *MEMORY[0x277D85DE8];
  v108 = a4;
  v107 = a8;
  v106 = 0;
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  v103 = 0x7FFFFFFF;
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 - *a1;
  v13 = v12 >> 4;
  if (a3 && v13 > a3)
  {
    v103 = (v12 >> 4) - a3;
  }

  sub_24BDF63C0(v104, v13);
  v14 = *(a7 + 24);
  if (!v14 || ((*(*v14 + 48))(v14) & 1) == 0)
  {
    sub_24BDF9184(v102, v13);
    sub_24BCA18B0(v101, v13);
    LOBYTE(v113.__m_.__sig) = 1;
    sub_24BC9FEFC(v100, v13);
    if (v10 != v11)
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = (*a1 + 16 * v16);
        sub_24BDF63EC(*v18, v101[0] + v16);
        if (*(*v18 + 232) != *(*v18 + 240) && *(*(*v18 + 40) + 160) != *(*(*v18 + 40) + 152))
        {
          operator new();
        }

        v16 = v17;
      }

      while (v13 > v17++);
    }

    v20 = *(a7 + 24);
    if (!v20 || ((*(*v20 + 48))(v20) & 1) == 0)
    {
      v21 = 0uLL;
      memset(v113.__m_.__opaque, 0, sizeof(v113.__m_.__opaque));
      v113.__m_.__sig = 850045863;
      if (a9)
      {
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        memset(v112.__m_.__opaque, 0, sizeof(v112.__m_.__opaque));
        v112.__m_.__sig = 850045863;
        if (v106)
        {
          v22 = *(a7 + 24);
          if (!v22 || ((*(*v22 + 48))(v22) & 1) == 0)
          {
            v23 = std::thread::hardware_concurrency();
            if (v23 <= 2)
            {
              v25 = 2;
            }

            else
            {
              v25 = v23;
            }

            v94 = v93;
            v91 = v90;
            while (1)
            {
              v26 = v91;
              if (v25 < (v91 - v90) >> 4 || v106 == 0)
              {
                goto LABEL_74;
              }

              sub_24BDB9EE0(v104, 0, &v109, v24);
              v28 = *(v109 + 4);
              v29 = *(*a1 + 16 * v28);
              if (!v29)
              {
                goto LABEL_70;
              }

              v30 = v94;
              if (v93 == v94)
              {
LABEL_38:
                if (v94 >= v95)
                {
                  v45 = (v94 - v93) >> 4;
                  v46 = v45 + 1;
                  if ((v45 + 1) >> 60)
                  {
LABEL_141:
                    sub_24BC8E01C();
                  }

                  v47 = v95 - v93;
                  if ((v95 - v93) >> 3 > v46)
                  {
                    v46 = v47 >> 3;
                  }

                  if (v47 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v48 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  v118 = &v93;
                  if (v48)
                  {
                    sub_24BCB53E8(&v93, v48);
                  }

                  v54 = (16 * v45);
                  *v54 = v109;
                  v55 = v110;
                  v54[1] = v110;
                  if (v55)
                  {
                    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v37 = (v54 + 2);
                  v56 = v54 - (v94 - v93);
                  memcpy(v56, v93, v94 - v93);
                  v57 = v93;
                  v58 = v95;
                  v93 = v56;
                  v94 = v37;
                  v95 = 0;
                  v116 = v57;
                  v117 = v58;
                  context = v57;
                  v115 = v57;
                  sub_24BCB5430(&context);
                }

                else
                {
                  *v94 = v109;
                  v36 = v110;
                  *(v30 + 1) = v110;
                  if (v36)
                  {
                    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v37 = v30 + 16;
                }

                v94 = v37;
                goto LABEL_70;
              }

              v31 = v93;
              while (1)
              {
                v32 = *(*a1 + 16 * *(*v31 + 4));
                v33 = *(v32 + 232);
                v34 = *(v32 + 240);
LABEL_30:
                if (v33 != v34)
                {
                  break;
                }

                v31 += 16;
                if (v31 == v94)
                {
                  goto LABEL_38;
                }
              }

              if (*v33 != v28)
              {
                for (i = *(v29 + 232); i != *(v29 + 240); ++i)
                {
                  if (*v33 == *i)
                  {
                    goto LABEL_42;
                  }
                }

                ++v33;
                goto LABEL_30;
              }

LABEL_42:
              v38 = v91;
              if (v91 < v92)
              {
                *v91 = v109;
                v39 = v110;
                *(v38 + 1) = v110;
                if (v39)
                {
                  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v40 = v38 + 16;
                goto LABEL_65;
              }

              v41 = (v91 - v90) >> 4;
              v42 = v41 + 1;
              if ((v41 + 1) >> 60)
              {
                goto LABEL_141;
              }

              v43 = v92 - v90;
              if ((v92 - v90) >> 3 > v42)
              {
                v42 = v43 >> 3;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFF0)
              {
                v44 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v42;
              }

              v118 = &v90;
              if (v44)
              {
                sub_24BCB53E8(&v90, v44);
              }

              v49 = (16 * v41);
              *v49 = v109;
              v50 = v110;
              v49[1] = v110;
              if (v50)
              {
                atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v40 = (v49 + 2);
              v51 = v49 - (v91 - v90);
              memcpy(v51, v90, v91 - v90);
              v52 = v90;
              v53 = v92;
              v90 = v51;
              v91 = v40;
              v92 = 0;
              v116 = v52;
              v117 = v53;
              context = v52;
              v115 = v52;
              sub_24BCB5430(&context);
LABEL_65:
              v91 = v40;
LABEL_70:
              if (v110)
              {
                sub_24BC9EC78(v110);
              }

              if (v25 <= (v94 - v93) >> 4)
              {
                v26 = v91;
LABEL_74:
                for (j = v90; j != v26; j += 16)
                {
                  v60 = *(j + 1);
                  *&v89 = *j;
                  *(&v89 + 1) = v60;
                  if (v60)
                  {
                    atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_24BDF6494(v104, &v89);
                  if (*(&v89 + 1))
                  {
                    sub_24BC9EC78(*(&v89 + 1));
                  }
                }

                v62 = v96;
                  ;
                }

                v97 = v62;
                v111 = 0;
                operator new();
              }
            }
          }
        }

        std::mutex::~mutex(&v112);
        v112.__m_.__sig = &v90;
        sub_24BCB7FC8(&v112);
        v112.__m_.__sig = &v93;
        sub_24BCB7FC8(&v112);
        v112.__m_.__sig = &v96;
        sub_24BD4BE1C(&v112);
      }

      else if (v106)
      {
        v63 = v13;
        do
        {
          v64 = *(a7 + 24);
          if (v64 && ((*(*v64 + 48))(v64) & 1) != 0)
          {
            break;
          }

          sub_24BDB9EE0(v104, 0, &v112, v21);
          v65 = *(v112.__m_.__sig + 4);
          if (!*(*a1 + 16 * v65))
          {
            goto LABEL_125;
          }

          LOBYTE(v96) = 0;
          LODWORD(v109) = 0;
          sub_24BDF6548(a1, a2, v65, v108, v100, v101, &v96, &v109, &v113, a5, a6, v107);
          if (v96 != 1)
          {
            goto LABEL_125;
          }

          v66 = *a1 + 16 * v65;
          v67 = *v66;
          v68 = *(*v66 + 232);
          if (*(*v66 + 240) != v68)
          {
            v69 = 0;
            v70 = 0;
            do
            {
              v71 = (*a1 + 16 * *(v68 + 4 * v69));
              v73 = *v71;
              v72 = v71[1];
              if (v72)
              {
                atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v73)
              {
                v74 = *(v73 + 232);
                v75 = *(v73 + 240);
                v76 = v74;
                if (v74 != v75)
                {
                  v77 = v109;
                  v76 = *(v73 + 232);
                  while (*v76 != v109)
                  {
                    if (++v76 == v75)
                    {
                      goto LABEL_110;
                    }
                  }

                  if (v76 != v75)
                  {
                    for (m = v76 + 1; m != v75; ++m)
                    {
                      if (*m != v77)
                      {
                        *v76++ = *m;
                      }
                    }
                  }
                }

                if (v76 != v75)
                {
                  v75 = v76;
                  *(v73 + 240) = v76;
                }

LABEL_110:
                LODWORD(context) = v65;
                while (v74 != v75)
                {
                  if (*v74 == v65)
                  {
                    if (v74 != v75)
                    {
                      goto LABEL_116;
                    }

                    break;
                  }

                  ++v74;
                }

                sub_24BC97D60((v73 + 232), &context);
              }

LABEL_116:
              if (v72)
              {
                sub_24BC9EC78(v72);
              }

              v68 = *(*v66 + 232);
              v69 = ++v70;
            }

            while (v70 < ((*(*v66 + 240) - v68) >> 2));
            v67 = *(*a1 + 16 * v65);
          }

          v79 = -((v65 / v63) + ((*(*(v67 + 40) + 160) - *(*(v67 + 40) + 152)) >> 2));
          sig = v112.__m_.__sig;
          *v112.__m_.__sig = v79;
          v99 = __PAIR128__(*v112.__m_.__opaque, sig);
          if (*v112.__m_.__opaque)
          {
            atomic_fetch_add_explicit((*v112.__m_.__opaque + 8), 1uLL, memory_order_relaxed);
          }

          sub_24BDF6494(v104, &v99);
          if (*(&v99 + 1))
          {
            sub_24BC9EC78(*(&v99 + 1));
          }

          if (!--v103)
          {
            v81 = 1;
          }

          else
          {
LABEL_125:
            v81 = 0;
          }

          if (*v112.__m_.__opaque)
          {
            sub_24BC9EC78(*v112.__m_.__opaque);
          }

          v82 = v106 ? v81 : 1;
        }

        while ((v82 & 1) == 0);
      }

      std::mutex::~mutex(&v113);
    }

    if (v100[0])
    {
      operator delete(v100[0]);
    }

    if (v101[0])
    {
      v101[1] = v101[0];
      operator delete(v101[0]);
    }

    v113.__m_.__sig = v102;
    sub_24BCB7FC8(&v113);
  }

  result = sub_24BDF90D4(v104, v15);
  v84 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BDF5FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__pa, uint64_t a41, char a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, std::mutex *a57)
{
  if (__pa)
  {
    operator delete(__pa);
  }

  if (a43)
  {
    operator delete(a43);
  }

  *(v57 - 224) = &a46;
  sub_24BCB7FC8((v57 - 224));
  sub_24BDF90D4(&a50, v59);
  _Unwind_Resume(a1);
}

void sub_24BDF6150(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          sub_24BC9EC78(v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_24BDF8FC8(a1, v5);
  }
}

void sub_24BDF61E0(void *a1, int a2, void *a3, uint64_t a4)
{
  v8 = (a1 + 29);
  a1[30] = a1[29];
  v9 = a1[5];
  sub_24BC836D4(__p, "f:index_in_root");
  v29 = -1;
  v10 = sub_24BDBAF64((v9 + 56), &v29, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = a1[5];
  v12 = (v11[7] + 16 * v10);
  v14 = *v12;
  v13 = v12[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v13);
    v11 = a1[5];
  }

  v16 = v11[19];
  v15 = v11[20];
  sub_24BCB7458(__p, 3uLL);
  v17 = v15 - v16;
  if (v15 != v16)
  {
    v18 = 0;
    v19 = v17 >> 2;
    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    do
    {
      sub_24BCD573C(a4, (*(v14 + 40) + 4 * v18), __p);
      for (i = 0; i != 3; ++i)
      {
        v22 = sub_24BCB9024(a4 + 104, __p[0] + i);
        v23 = *(sub_24BCB9024(a4 + 104, v22) + 16);
        if (v23 != -1)
        {
          v24 = *(*a3 + 4 * v23);
          if (v24 != a2)
          {
            v29 = *(*a3 + 4 * v23);
            v25 = a1[29];
            v26 = a1[30];
            if (v25 != v26)
            {
              while (*v25 != v24)
              {
                if (++v25 == v26)
                {
                  goto LABEL_17;
                }
              }
            }

            if (v25 == v26)
            {
LABEL_17:
              sub_24BC97D60(v8, &v29);
            }
          }
        }
      }

      ++v18;
    }

    while (v18 != v20);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BDF6388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDF63DC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BDF63D4);
}

float32x4_t sub_24BDF63EC(uint64_t a1, float32x4_t *a2)
{
  v3 = *(*(a1 + 40) + 160) - *(*(a1 + 40) + 152);
  if (v3)
  {
    v5 = 0;
    v6 = v3 >> 2;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0uLL;
    do
    {
      v11 = v8;
      sub_24BD3FD60(*(a1 + 40), v5, &v12);
      v8 = vaddq_f32(v11, v12);
      ++v5;
    }

    while (v7 != v5);
  }

  else
  {
    v8 = 0uLL;
  }

  v9 = vmulq_f32(v8, v8);
  v9.i32[3] = 0;
  v9.i64[0] = vpaddq_f32(v9, v9).u64[0];
  v9.f32[0] = sqrtf(vaddv_f32(*v9.f32));
  result = vdivq_f32(v8, vdupq_lane_s32(*v9.f32, 0));
  *a2 = result;
  return result;
}

uint64_t sub_24BDF6494(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (v5 >= (*(a1 + 8) - *a1) >> 4)
  {
    sub_24BCB820C(a1, a2);
  }

  else
  {
    v6 = (*a1 + 16 * v5);
    v7 = *(a2 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v6[1];
    *v6 = v2;
    v6[1] = v7;
    if (v8)
    {
      sub_24BC9EC78(v8);
    }
  }

  v10 = *(a1 + 32);
  *(*a2 + 8) = v10;
  *(a1 + 32) = v10 + 1;
  sub_24BDBA07C(a1, v10);
  return 1;
}

void sub_24BDF6538(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BDF6528);
}

void sub_24BDF6548(uint64_t *a1, void *a2, unsigned int a3, unint64_t a4, void *a5, uint64_t *a6, _BYTE *a7, _DWORD *a8, std::mutex *a9, uint64_t a10, uint64_t a11, char a12)
{
  *a7 = 0;
  v12 = *a1;
  v13 = *a1 + 16 * a3;
  v14 = *v13;
  v15 = *(*v13 + 232);
  v16 = *(*v13 + 240) - v15;
  if (!v16)
  {
    return;
  }

  v19 = a3;
  v20 = v16 >> 2;
  if (v20 != 1)
  {
    v21 = 0;
    v22 = (v15 + 4);
    v23 = v20 - 1;
    do
    {
      v24 = v21 + 1;
      if (*(v12 + 16 * *(v15 + 4 * v21)))
      {
        v25 = v24 >= v20;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v26 = *a6;
        v27 = v22;
        v28 = v23;
        do
        {
          v29 = *v27;
          if (*(v12 + 16 * *v27))
          {
            v30 = *(v15 + 4 * v21);
            v31 = *(v26 + 16 * v19);
            v32 = vmulq_f32(v31, *(v26 + 16 * v30));
            v32.i32[3] = 0;
            v33 = vmulq_f32(v31, *(v26 + 16 * v29));
            v33.i32[3] = 0;
            if (vaddv_f32(*&vpaddq_f32(v32, v32)) < vaddv_f32(*&vpaddq_f32(v33, v33)))
            {
              *(v15 + 4 * v21) = v29;
              *v27 = v30;
            }
          }

          ++v27;
          --v28;
        }

        while (v28);
      }

      --v23;
      ++v22;
      ++v21;
    }

    while (v24 != v20 - 1);
  }

  v64 = v13;
  v34 = 0;
  v35 = 0;
  *a8 = -1;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v36 = a4 * 0.7;
  if (v36 <= 0x2BC)
  {
    v37 = 700;
  }

  else
  {
    v37 = v36;
  }

  if (v20 <= 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = v20;
  }

  while (1)
  {
    v39 = *(*(v14 + 232) + 4 * v35);
    if ((*(*a5 + ((v39 >> 3) & 0x1FFFFFF8)) >> v39))
    {
      break;
    }

LABEL_35:
    if (v38 == ++v35)
    {
      std::mutex::lock(a9);
      *(*a5 + ((v19 >> 3) & 0x1FFFFFF8)) &= ~(1 << v19);
      *a7 = 0;
      std::mutex::unlock(a9);
      v41 = v34;
      if (!v34)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  v40 = *(*a1 + 16 * v39);
  v41 = *(*a1 + 16 * v39 + 8);
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v67 = v40;
  if (v34)
  {
    v65 = v40;
    sub_24BC9EC78(v34);
    *&v40 = v65;
  }

  if (!v40 || (v42 = *(*(v40 + 40) + 160) - *(*(v40 + 40) + 152)) == 0 || ((*(*(*v64 + 40) + 160) - *(*(*v64 + 40) + 152)) >> 2) + (v42 >> 2) > v37 || (sub_24BDF694C(a1, v64, &v67, &v70, &v68, a10, a11, a12), (v43 = v70) == 0))
  {
LABEL_34:
    v34 = v41;
    goto LABEL_35;
  }

  v66 = 0;
  sub_24BDF6CE0(v70, &v66);
  if (!v66)
  {
    v44 = v71;
    v70 = 0;
    v71 = 0;
    if (v44)
    {
      sub_24BC9EC78(v44);
    }

    v45 = v69;
    v68 = 0;
    v69 = 0;
    if (v45)
    {
      sub_24BC9EC78(v45);
    }

    goto LABEL_34;
  }

  *a8 = v39;
  v46 = (*a1 + 16 * v39);
  v47 = v46[1];
  *v46 = 0;
  v46[1] = 0;
  if (v47)
  {
    sub_24BC9EC78(v47);
  }

  v48 = (*a1 + 16 * v19);
  v49 = v48[1];
  *v48 = 0;
  v48[1] = 0;
  if (v49)
  {
    sub_24BC9EC78(v49);
  }

  v50 = (*a2 + 16 * *a8);
  v51 = v50[1];
  *v50 = 0;
  v50[1] = 0;
  if (v51)
  {
    sub_24BC9EC78(v51);
  }

  v52 = (*a2 + 16 * v19);
  v53 = v52[1];
  *v52 = 0;
  v52[1] = 0;
  if (v53)
  {
    sub_24BC9EC78(v53);
  }

  v54 = (*a1 + 16 * v19);
  v55 = v71;
  if (v71)
  {
    atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v56 = v54[1];
  *v54 = v43;
  v54[1] = v55;
  if (v56)
  {
    sub_24BC9EC78(v56);
  }

  v57 = (*a2 + 16 * v19);
  v59 = v68;
  v58 = v69;
  if (v69)
  {
    atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v60 = v57[1];
  *v57 = v59;
  v57[1] = v58;
  if (v60)
  {
    sub_24BC9EC78(v60);
  }

  *a7 = 1;
  if (v41)
  {
LABEL_37:
    sub_24BC9EC78(v41);
  }

LABEL_38:
  if (v69)
  {
    sub_24BC9EC78(v69);
  }

  if (v71)
  {
    sub_24BC9EC78(v71);
  }
}

void sub_24BDF690C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (v24)
  {
    sub_24BC9EC78(v24);
  }

  if (a24)
  {
    sub_24BC9EC78(a24);
  }

  v27 = *(v25 - 104);
  if (v27)
  {
    sub_24BC9EC78(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDF694C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v13 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  sub_24BCA123C(v26, (*(*(*a2 + 40) + 112) - *(*(*a2 + 40) + 104)) >> 2);
  sub_24BDD4E90(v25, (*(*(*a2 + 40) + 112) - *(*(*a2 + 40) + 104)) >> 2);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  sub_24BDF6E70(a2, a3, v26, v25, &v22, &__p, &v18);
  if (v18)
  {
    v14 = (v23 - v22) >> 2;
    if (v14 >= 2)
    {
      v17 = 0;
      sub_24BDF722C(&v22, *(*a2 + 40), &v17);
      if (v17)
      {
        sub_24BDF722C(&__p, *(*a3 + 40), &v17);
        if (v17 == 1)
        {
          v16[0] = 0;
          v16[1] = 0;
          v15[0] = 0;
          v15[1] = 0;
          sub_24BDF73EC(a2, a3, v26, v25, v14, v16, v15, a6, a7, a8);
        }
      }
    }
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25[0])
  {
    operator delete(v25[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

void sub_24BDF6C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  v24 = *(v22 - 112);
  if (v24)
  {
    *(v22 - 104) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDF6CE0(void *a1, BOOL *a2)
{
  *a2 = 0;
  result = sub_24BDFABF4(a1);
  if (result)
  {
    v5 = a1[4];
    if (!v5 || (result = (*(*v5 + 48))(v5), (result & 1) == 0))
    {
      v10 = 256;
      v11 = 1;
      v12 = vdupq_n_s64(0xAuLL);
      v13 = 20;
      v14 = xmmword_24BFED210;
      v15 = -2.84809454e-306;
      v16 = -1;
      memset(v17, 0, sizeof(v17));
      v18 = 0;
      memset(v19, 0, sizeof(v19));
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = 0;
      v23 = 0;
      v8 = 0;
      *a2 = sub_24BE01604(a1, &v10, &v9 + 1, &v9, &v23, &v8, 0);
      v6 = a1[4];
      if (v6)
      {
        (*(*v6 + 48))(v6);
      }

      if (*(&v21 + 1))
      {
        *&v22 = *(&v21 + 1);
        operator delete(*(&v21 + 1));
      }

      if (v20)
      {
        *(&v20 + 1) = v20;
        operator delete(v20);
      }

      v23 = v19 + 1;
      sub_24BCB7FC8(&v23);
      return sub_24BDB9E30(v17, v7);
    }
  }

  return result;
}

void sub_24BDF6E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BDB8814(va);
  _Unwind_Resume(a1);
}

void sub_24BDF6E70(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, _BYTE *a7)
{
  *a7 = 0;
  v11 = *(*a1 + 40);
  sub_24BC836D4(__p, "v:index_in_root");
  v47 = -1;
  v12 = sub_24BDE2788((v11 + 8), &v47, __p);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *(*a2 + 40);
  sub_24BC836D4(__p, "v:index_in_root");
  v47 = -1;
  v14 = sub_24BDE2788((v13 + 8), &v47, __p);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = (*(*(*a1 + 40) + 8) + 16 * v12);
  v17 = *v15;
  v16 = v15[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v16);
  }

  v18 = *(*a2 + 40);
  v19 = (v18[1] + 16 * v14);
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v20);
    v18 = *(*a2 + 40);
  }

  v22 = (v18[14] - v18[13]) >> 2;
  sub_24BDD4E90(__p, v22);
  v23 = *(*a2 + 40);
  if (*(v23 + 112) != *(v23 + 104))
  {
    v24 = 0;
    do
    {
      v47 = v24;
      v25 = sub_24BCD93B0(v23, &v47);
      v26 = v24 >> 6;
      v27 = 1 << v24;
      if (v25)
      {
        v28 = *(__p[0] + v26) | v27;
      }

      else
      {
        v28 = *(__p[0] + v26) & ~v27;
      }

      *(__p[0] + v26) = v28;
      ++v24;
      v23 = *(*a2 + 40);
    }

    while (v24 < (*(v23 + 112) - *(v23 + 104)) >> 2);
  }

  v29 = *(*a1 + 40);
  if (*(v29 + 112) != *(v29 + 104))
  {
    for (i = 0; i < (*(v29 + 112) - *(v29 + 104)) >> 2; ++i)
    {
      v47 = i;
      *(*a4 + 8 * (i >> 6)) |= 1 << i;
      if (sub_24BCD93B0(v29, &v47))
      {
        v31 = *(*(*a2 + 40) + 112) - *(*(*a2 + 40) + 104);
        if (v31)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = v31 >> 2;
          v36 = 1;
          v37 = -1;
          while (2)
          {
            v38 = v33;
            while (((*(__p[0] + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0 || *(*(v17 + 40) + 4 * v47) != *(*(v21 + 40) + 4 * v32))
            {
              v32 = ++v38;
              if (v35 <= v38)
              {
                v38 = v37;
                if ((v34 & 1) == 0)
                {
                  goto LABEL_34;
                }

                goto LABEL_30;
              }
            }

            if ((v36 & 1) == 0)
            {
              goto LABEL_39;
            }

            v36 = 0;
            v32 = v38 + 1;
            v34 = 1;
            v33 = v38 + 1;
            v37 = v38;
            if (v35 > v32)
            {
              continue;
            }

            break;
          }

LABEL_30:
          v39 = *a6;
          v40 = a6[1];
          if (*a6 != v40)
          {
            while (*v39 != v38)
            {
              if (++v39 == v40)
              {
                goto LABEL_36;
              }
            }
          }

          if (v39 != v40)
          {
            goto LABEL_39;
          }

LABEL_36:
          v44 = v38;
          sub_24BCB4670(a6, &v44);
          sub_24BCB4670(a5, &v47);
          *(*a3 + 4 * i) = v38;
          *(*a4 + 8 * (i >> 6)) &= ~(1 << i);
        }

        else
        {
LABEL_34:
          *(*a3 + 4 * i) = v22++;
        }
      }

      else
      {
        *(*a3 + 4 * i) = v22++;
      }

      v29 = *(*a1 + 40);
    }
  }

  *a7 = 1;
LABEL_39:
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_24BDF71F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDF722C(unsigned int **a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v24 = **a1;
  sub_24BCB4670(&v25, &v24);
  v7 = *a1;
  v6 = a1[1];
  v8 = *a1 + 1;
  v9 = v6 - v8;
  if (v6 != v8)
  {
    memmove(*a1, v8, v6 - v8);
  }

  v10 = (v7 + v9);
  a1[1] = (v7 + v9);
  v12 = v25;
  v11 = v26;
  if (v25 != v26)
  {
    do
    {
      v24 = *v12;
      v13 = v11 - (v12 + 1);
      if (v11 != v12 + 1)
      {
        memmove(v12, v12 + 1, v11 - (v12 + 1));
      }

      v26 = (v12 + v13);
      sub_24BCB8F94(v23, (a2 + 104), &v24);
      for (i = sub_24BCB8FBC(v23); i != -1; i = sub_24BCB8FBC(v23))
      {
        v15 = *a1;
        v16 = a1[1] - *a1;
        if (v16)
        {
          v17 = 0;
          v18 = v16 >> 2;
          if (v18 <= 1)
          {
            v18 = 1;
          }

          while (v15[v17] != i)
          {
            ++v17;
            if (!--v18)
            {
              goto LABEL_17;
            }
          }

          sub_24BCB4670(&v25, &v15[v17]);
          v19 = a1[1];
          v20 = &(*a1)[v17];
          v21 = v19 - *a1 - v17 * 4;
          v22 = v21 - 4;
          if (v20 + 1 != v19)
          {
            memmove(v20, v20 + 1, v21 - 4);
          }

          a1[1] = (v20 + v22);
        }

LABEL_17:
        ;
      }

      v12 = v25;
      v11 = v26;
    }

    while (v25 != v26);
    v10 = a1[1];
  }

  if (*a1 == v10)
  {
    *a3 = 1;
  }

  if (v12)
  {
    v26 = v12;
    operator delete(v12);
  }
}

void sub_24BDF73C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDF8938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  v34 = v32 - 144;
  if (a31)
  {
    operator delete(a31);
    v34 = v32 - 144;
  }

  v35 = *v34;
  if (*v34)
  {
    *(v34 + 8) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDF8ABC(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BDF8B54(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_24BDF8ABC(v8, a1);
  v4 = *(**(a1 + 32) + 16 * a2);
  v7 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (!v9)
  {
    sub_24BCA1F3C();
  }

  (*(*v9 + 48))(v9, &v7);
  if (*(&v7 + 1))
  {
    sub_24BC9EC78(*(&v7 + 1));
  }

  result = sub_24BDF959C(v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BDF8C50(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCC95E0(result, a4);
  }

  return result;
}

void sub_24BDF8CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BCB7FC8(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BDF8CD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_24BDF8D60(v7);
  return v4;
}

uint64_t sub_24BDF8D60(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BDF8D98(a1);
  }

  return a1;
}

void sub_24BDF8D98(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_24BC9EC78(v3);
    }

    v1 -= 16;
  }
}

void *sub_24BDF8DDC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCC95E0(result, a2);
  }

  return result;
}

void *sub_24BDF8EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F96858;
  sub_24BDFABF0(a1 + 3, a2, a3, a4, *a5);
  return a1;
}

void sub_24BDF8F68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BDF8FC8(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_24BC8E01C();
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

    v16[4] = a1;
    if (v9)
    {
      sub_24BCB53E8(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    sub_24BCB5430(v16);
  }
}

uint64_t sub_24BDF90D4(uint64_t a1, __n128 a2)
{
  if (*(a1 + 24) == 1)
  {
    while (*(a1 + 32))
    {
      sub_24BDF9130(a1, a2);
    }
  }

  v4 = a1;
  sub_24BCB7FC8(&v4);
  return a1;
}

uint64_t sub_24BDF9130(uint64_t *a1, __n128 a2)
{
  sub_24BDB9EE0(a1, 0, &v4, a2);
  if (v4)
  {
    v2 = *(v4 + 4);
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    sub_24BC9EC78(v5);
  }

  return v2;
}

void *sub_24BDF9184(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCC95E0(result, a2);
  }

  return result;
}

void sub_24BDF9224(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BDF931C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F968C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void sub_24BDF9374(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v27 = 0;
  v26 = 0;
  sub_24BDF6548(*(a1 + 8), *(a1 + 16), *(v4 + 4), **(a1 + 24), *(a1 + 32), *(a1 + 40), &v27, &v26, *(a1 + 80), *(a1 + 48), *(a1 + 56), **(a1 + 88));
  if (v27 == 1)
  {
    v5 = *(a1 + 80);
    std::mutex::lock(v5);
    v6 = *(a1 + 96);
    v7 = *(v4 + 4) | (v26 << 32);
    v9 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v9 >= v8)
    {
      v11 = (v9 - *v6) >> 3;
      if ((v11 + 1) >> 61)
      {
        sub_24BC8E01C();
      }

      v12 = v8 - *v6;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        sub_24BC91F60(*(a1 + 96), v14);
      }

      v15 = (8 * v11);
      *v15 = v7;
      v10 = 8 * v11 + 8;
      v16 = *(v6 + 8) - *v6;
      v17 = v15 - v16;
      memcpy(v15 - v16, *v6, v16);
      v18 = *v6;
      *v6 = v17;
      *(v6 + 8) = v10;
      *(v6 + 16) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v9 = v7;
      v10 = (v9 + 1);
    }

    v19 = *(a1 + 8);
    v20 = *(v4 + 4);
    v22 = *v19;
    v21 = v19[1];
    v23 = (*(*(*(v22 + 16 * v20) + 40) + 160) - *(*(*(v22 + 16 * v20) + 40) + 152)) >> 2;
    *(v6 + 8) = v10;
    *v4 = -((v20 / ((v21 - v22) >> 4)) + v23);
    v24 = *(a1 + 64);
    *&v25 = v4;
    *(&v25 + 1) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_24BDF6494(v24, &v25);
    if (*(&v25 + 1))
    {
      sub_24BC9EC78(*(&v25 + 1));
    }

    --**(a1 + 72);
    std::mutex::unlock(v5);
  }

  if (v3)
  {
    sub_24BC9EC78(v3);
  }
}

void sub_24BDF9560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  std::mutex::unlock(v16);
  if (v15)
  {
    sub_24BC9EC78(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BDF959C(uint64_t a1)
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

int *sub_24BDF961C(int *result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 4;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v95 = v9[2];
                v96 = *v9;
                v97 = *(a2 - 2);
                if (v95 >= *v9)
                {
                  if (v97 >= v95)
                  {
                    return result;
                  }

                  v9[2] = v97;
                  *(a2 - 2) = v95;
                  v8 = (v9 + 3);
                  v149 = v9[3];
                  v9[3] = *(a2 - 1);
                  *(a2 - 1) = v149;
                  v150 = v9[2];
                  v151 = *v9;
                  if (v150 >= *v9)
                  {
                    return result;
                  }

                  *v9 = v150;
                  v9[2] = v151;
                  v98 = (v9 + 1);
                }

                else
                {
                  if (v97 >= v95)
                  {
                    v98 = (v9 + 3);
                    v162 = v9[3];
                    v163 = v9[1];
                    *v9 = v95;
                    v9[1] = v162;
                    v9[2] = v96;
                    v9[3] = v163;
                    v164 = *(a2 - 2);
                    if (v164 >= v96)
                    {
                      return result;
                    }

                    v9[2] = v164;
                  }

                  else
                  {
                    v98 = (v9 + 1);
                    *v9 = v97;
                  }

                  *(a2 - 2) = v96;
                }

                v165 = *v98;
                *v98 = *v8;
                *v8 = v165;
                return result;
              case 4:
                v99 = v9[2];
                v100 = *v9;
                v101 = v9[4];
                if (v99 >= *v9)
                {
                  if (v101 < v99)
                  {
                    v152 = (v9 + 3);
                    v153 = v9[3];
                    v154 = v9[5];
                    v9[2] = v101;
                    v9[3] = v154;
                    v9[4] = v99;
                    v9[5] = v153;
                    if (v101 < v100)
                    {
                      *v9 = v101;
                      v9[2] = v100;
                      v102 = (v9 + 1);
                      goto LABEL_204;
                    }

LABEL_206:
                    v169 = *(a2 - 2);
                    if (v169 < v99)
                    {
                      v9[4] = v169;
                      *(a2 - 2) = v99;
                      v170 = v9[5];
                      v9[5] = *(a2 - 1);
                      *(a2 - 1) = v170;
                      v171 = v9[4];
                      v172 = v9[2];
                      if (v171 < v172)
                      {
                        v173 = v9[3];
                        v174 = v9[5];
                        v9[2] = v171;
                        v9[3] = v174;
                        v9[4] = v172;
                        v9[5] = v173;
                        v175 = *v9;
                        if (v171 < *v9)
                        {
                          v176 = v9[1];
                          *v9 = v171;
                          v9[1] = v174;
                          v9[2] = v175;
                          v9[3] = v176;
                        }
                      }
                    }

                    return result;
                  }
                }

                else
                {
                  if (v101 < v99)
                  {
                    v102 = (v9 + 1);
                    *v9 = v101;
                    goto LABEL_203;
                  }

                  v102 = (v9 + 3);
                  v166 = v9[3];
                  v167 = v9[1];
                  *v9 = v99;
                  v9[1] = v166;
                  v9[2] = v100;
                  v9[3] = v167;
                  if (v101 < v100)
                  {
                    v9[2] = v101;
LABEL_203:
                    v9[4] = v100;
                    v152 = (v9 + 5);
LABEL_204:
                    v168 = *v102;
                    *v102 = *v152;
                    *v152 = v168;
                    v99 = v9[4];
                    goto LABEL_206;
                  }
                }

                v99 = v101;
                goto LABEL_206;
              case 5:

                return sub_24BDFA150(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v92 = *(a2 - 2);
              v93 = *v9;
              if (v92 < *v9)
              {
                *v9 = v92;
                *(a2 - 2) = v93;
                v94 = v9[1];
                v9[1] = *(a2 - 1);
                *(a2 - 1) = v94;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v103 = (v9 + 2);
            v105 = v9 == a2 || v103 == a2;
            if (a4)
            {
              if (!v105)
              {
                v106 = 0;
                v107 = v9;
                do
                {
                  v108 = v107[2];
                  v109 = *v107;
                  v107 = v103;
                  if (v108 < v109)
                  {
                    v111 = *v103;
                    v110 = *(v103 + 1);
                    v112 = v106;
                    while (1)
                    {
                      v113 = v9 + v112;
                      v114 = *(v9 + v112 + 4);
                      *(v113 + 2) = v109;
                      *(v113 + 3) = v114;
                      if (!v112)
                      {
                        break;
                      }

                      v109 = *(v113 - 2);
                      v112 -= 8;
                      if (v109 <= v111)
                      {
                        v115 = (v9 + v112 + 8);
                        goto LABEL_137;
                      }
                    }

                    v115 = v9;
LABEL_137:
                    *v115 = v111;
                    v115[1] = v110;
                  }

                  v103 = (v107 + 2);
                  v106 += 8;
                }

                while (v107 + 2 != a2);
              }
            }

            else if (!v105)
            {
              v155 = v9 + 3;
              do
              {
                v156 = v7[2];
                v157 = *v7;
                v7 = v103;
                if (v156 < v157)
                {
                  v158 = *v103;
                  v159 = v155;
                  do
                  {
                    v160 = v159;
                    v161 = *(v159 - 2);
                    v159 -= 2;
                    *(v160 - 1) = v157;
                    *v160 = v161;
                    v157 = *(v160 - 5);
                  }

                  while (v157 > v158);
                  *(v159 - 1) = v158;
                }

                v103 = (v7 + 2);
                v155 += 2;
              }

              while (v7 + 2 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v116 = (v10 - 2) >> 1;
              v117 = v116;
              do
              {
                v118 = v117;
                if (v116 >= v117)
                {
                  v119 = (2 * v117) | 1;
                  v120 = &v9[2 * v119];
                  if (2 * v118 + 2 >= v10)
                  {
                    v121 = *v120;
                  }

                  else
                  {
                    v121 = *v120;
                    v122 = v120[2];
                    if (*v120 <= v122)
                    {
                      v121 = v120[2];
                    }

                    if (*v120 < v122)
                    {
                      v120 += 2;
                      v119 = 2 * v118 + 2;
                    }
                  }

                  v123 = &v9[2 * v118];
                  if (v121 >= *v123)
                  {
                    v124 = *v123;
                    v125 = v123[1];
                    do
                    {
                      v126 = v123;
                      v123 = v120;
                      *v126 = v121;
                      v126[1] = v120[1];
                      if (v116 < v119)
                      {
                        break;
                      }

                      v127 = (2 * v119) | 1;
                      v120 = &v9[2 * v127];
                      v119 = 2 * v119 + 2;
                      if (v119 >= v10)
                      {
                        v121 = *v120;
                        v119 = v127;
                      }

                      else
                      {
                        v121 = *v120;
                        result = (v120 + 2);
                        v128 = v120[2];
                        if (*v120 <= v128)
                        {
                          v121 = v120[2];
                        }

                        if (*v120 >= v128)
                        {
                          v119 = v127;
                        }

                        else
                        {
                          v120 += 2;
                        }
                      }
                    }

                    while (v121 >= v124);
                    *v123 = v124;
                    v123[1] = v125;
                  }
                }

                v117 = v118 - 1;
              }

              while (v118);
              do
              {
                v129 = 0;
                v130 = *v9;
                v131 = v9;
                do
                {
                  v132 = &v131[2 * v129];
                  v133 = (v132 + 2);
                  v134 = (2 * v129) | 1;
                  v129 = 2 * v129 + 2;
                  if (v129 >= v10)
                  {
                    v135 = *v133;
                    v129 = v134;
                  }

                  else
                  {
                    v137 = v132[4];
                    v136 = (v132 + 4);
                    v135 = v137;
                    v138 = *(v136 - 2);
                    v139 = v138 >= v137;
                    if (v138 > v137)
                    {
                      v135 = *(v136 - 2);
                    }

                    if (v139)
                    {
                      v129 = v134;
                    }

                    else
                    {
                      v133 = v136;
                    }
                  }

                  *v131 = v135;
                  v131[1] = *(v133 + 1);
                  v131 = v133;
                }

                while (v129 <= ((v10 - 2) >> 1));
                if (v133 == a2 - 8)
                {
                  *v133 = v130;
                }

                else
                {
                  *v133 = *(a2 - 2);
                  *(v133 + 1) = *(a2 - 1);
                  *(a2 - 1) = v130;
                  v140 = (v133 - v9 + 8) >> 3;
                  v141 = v140 < 2;
                  v142 = v140 - 2;
                  if (!v141)
                  {
                    v143 = v142 >> 1;
                    v144 = &v9[2 * v143];
                    v145 = *v144;
                    if (*v144 < *v133)
                    {
                      v146 = *v133;
                      v147 = *(v133 + 1);
                      do
                      {
                        v148 = v133;
                        v133 = v144;
                        *v148 = v145;
                        *(v148 + 1) = *(v144 + 1);
                        if (!v143)
                        {
                          break;
                        }

                        v143 = (v143 - 1) >> 1;
                        v144 = &v9[2 * v143];
                        v145 = *v144;
                      }

                      while (*v144 < v146);
                      *v133 = v146;
                      *(v133 + 1) = v147;
                    }
                  }
                }

                a2 -= 8;
                v141 = v10-- <= 2;
              }

              while (!v141);
            }

            return result;
          }

          v11 = &v9[2 * (v10 >> 1)];
          v12 = v11;
          v13 = *(a2 - 2);
          if (v10 >= 0x81)
          {
            v14 = *v11;
            v15 = *v9;
            if (*v11 >= *v9)
            {
              if (v13 >= v14 || (*v11 = v13, *(a2 - 2) = v14, v21 = (v11 + 1), v20 = v11[1], v11[1] = *(a2 - 1), *(a2 - 1) = v20, v22 = *v9, *v11 >= *v9))
              {
LABEL_29:
                v30 = v11 - 2;
                v31 = *(v11 - 2);
                v32 = v9[2];
                v33 = *(a2 - 4);
                if (v31 >= v32)
                {
                  if (v33 >= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = (v11 - 1), v35 = *(v11 - 1), *(v11 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v9[2], *v30 >= v37))
                  {
LABEL_42:
                    v47 = v11[2];
                    v45 = v11 + 2;
                    v46 = v47;
                    v48 = v9[4];
                    v49 = *(a2 - 6);
                    if (v47 >= v48)
                    {
                      if (v49 < v46)
                      {
                        *v45 = v49;
                        *(a2 - 6) = v46;
                        v52 = (v45 + 1);
                        v51 = v45[1];
                        v45[1] = *(a2 - 5);
                        *(a2 - 5) = v51;
                        v46 = *v45;
                        v53 = v9[4];
                        if (*v45 < v53)
                        {
                          v9[4] = v46;
                          *v45 = v53;
                          v50 = (v9 + 5);
LABEL_51:
                          v57 = *v50;
                          *v50 = *v52;
                          *v52 = v57;
                          v46 = *v45;
                        }
                      }
                    }

                    else
                    {
                      if (v49 < v46)
                      {
                        v50 = (v9 + 5);
                        v9[4] = v49;
LABEL_50:
                        *(a2 - 6) = v48;
                        v52 = a2 - 20;
                        goto LABEL_51;
                      }

                      v50 = (v45 + 1);
                      v54 = v45[1];
                      v55 = v9[5];
                      v9[4] = v46;
                      v9[5] = v54;
                      *v45 = v48;
                      v45[1] = v55;
                      v56 = *(a2 - 6);
                      if (v56 < v48)
                      {
                        *v45 = v56;
                        goto LABEL_50;
                      }

                      v46 = v48;
                    }

                    v58 = *v12;
                    v59 = *v30;
                    if (*v12 >= *v30)
                    {
                      if (v46 >= v58)
                      {
LABEL_62:
                        v67 = *v9;
                        *v9 = v58;
                        v19 = (v9 + 1);
                        *v12 = v67;
                        v25 = (v12 + 1);
                        goto LABEL_63;
                      }

                      v62 = (v12 + 1);
                      v63 = v12[1];
                      *v12 = v46;
                      v12[1] = v45[1];
                      *v45 = v58;
                      v45[1] = v63;
                      if (v46 >= v59)
                      {
                        v58 = v46;
                        goto LABEL_62;
                      }

                      *v30 = v46;
                      v60 = (v30 + 1);
                      *v12 = v59;
                    }

                    else
                    {
                      if (v46 >= v58)
                      {
                        v64 = v12[1];
                        *v12 = v59;
                        v65 = v30[1];
                        *v30 = v58;
                        v30[1] = v64;
                        v12[1] = v65;
                        if (v46 >= v59)
                        {
                          v58 = v59;
                          goto LABEL_62;
                        }

                        *v12 = v46;
                        *v45 = v59;
                        v61 = (v45 + 1);
                        v60 = (v12 + 1);
                      }

                      else
                      {
                        *v30 = v46;
                        v60 = (v30 + 1);
                        *v45 = v59;
                        v61 = (v45 + 1);
                      }

                      v62 = v61;
                    }

                    v66 = *v60;
                    *v60 = *v62;
                    *v62 = v66;
                    v58 = *v12;
                    goto LABEL_62;
                  }

                  v9[2] = *v30;
                  *v30 = v37;
                  v34 = v9 + 3;
                }

                else
                {
                  if (v33 >= v31)
                  {
                    v34 = v11 - 1;
                    v41 = *(v11 - 1);
                    v42 = v9[3];
                    v9[2] = v31;
                    v9[3] = v41;
                    *v30 = v32;
                    *(v11 - 1) = v42;
                    v43 = *(a2 - 4);
                    if (v43 >= v32)
                    {
                      goto LABEL_42;
                    }

                    *v30 = v43;
                  }

                  else
                  {
                    v34 = v9 + 3;
                    v9[2] = v33;
                  }

                  *(a2 - 4) = v32;
                  v36 = a2 - 12;
                }

                v44 = *v34;
                *v34 = *v36;
                *v36 = v44;
                goto LABEL_42;
              }

              *v9 = *v11;
              v16 = (v9 + 1);
              *v11 = v22;
            }

            else
            {
              if (v13 >= v14)
              {
                v16 = (v11 + 1);
                v26 = v11[1];
                v27 = v9[1];
                *v9 = v14;
                v9[1] = v26;
                *v11 = v15;
                v11[1] = v27;
                v28 = *(a2 - 2);
                if (v28 >= v15)
                {
                  goto LABEL_29;
                }

                *v11 = v28;
              }

              else
              {
                v16 = (v9 + 1);
                *v9 = v13;
              }

              *(a2 - 2) = v15;
              v21 = a2 - 4;
            }

            v29 = *v16;
            *v16 = *v21;
            *v21 = v29;
            goto LABEL_29;
          }

          v17 = *v9;
          v18 = *v11;
          if (*v9 >= *v11)
          {
            if (v13 < v17)
            {
              *v9 = v13;
              *(a2 - 2) = v17;
              v23 = v9[1];
              v9[1] = *(a2 - 1);
              *(a2 - 1) = v23;
              v24 = *v12;
              if (*v9 < *v12)
              {
                *v12 = *v9;
                *v9 = v24;
                v19 = (v12 + 1);
                v25 = (v9 + 1);
LABEL_63:
                v68 = *v19;
                *v19 = *v25;
                *v25 = v68;
              }
            }
          }

          else
          {
            if (v13 < v17)
            {
              v19 = (v11 + 1);
              *v12 = v13;
LABEL_37:
              *(a2 - 2) = v18;
              v25 = a2 - 4;
              goto LABEL_63;
            }

            v19 = (v9 + 1);
            v38 = v9[1];
            v39 = v12[1];
            *v12 = v17;
            v12[1] = v38;
            *v9 = v18;
            v9[1] = v39;
            v40 = *(a2 - 2);
            if (v40 < v18)
            {
              *v9 = v40;
              goto LABEL_37;
            }
          }

          --a3;
          if ((a4 & 1) != 0 || *(v9 - 2) < *v9)
          {
            break;
          }

          v82 = *v9;
          if (*(a2 - 2) <= *v9)
          {
            v84 = v9 + 2;
            do
            {
              v9 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 2;
            }

            while (*v9 <= v82);
          }

          else
          {
            do
            {
              v83 = v9[2];
              v9 += 2;
            }

            while (v83 <= v82);
          }

          v85 = a2;
          if (v9 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 2;
            }

            while (v86 > v82);
          }

          if (v9 < v85)
          {
            v87 = *v9;
            v88 = *v85;
            do
            {
              *v9 = v88;
              *v85 = v87;
              v89 = v9[1];
              v9[1] = v85[1];
              v85[1] = v89;
              do
              {
                v90 = v9[2];
                v9 += 2;
                v87 = v90;
              }

              while (v90 <= v82);
              do
              {
                v91 = *(v85 - 2);
                v85 -= 2;
                v88 = v91;
              }

              while (v91 > v82);
            }

            while (v9 < v85);
          }

          if (v9 - 2 != v7)
          {
            *v7 = *(v9 - 2);
            v7[1] = *(v9 - 1);
          }

          a4 = 0;
          *(v9 - 1) = v82;
        }

        v69 = 0;
        v70 = *v9;
        do
        {
          v71 = v9[v69 + 2];
          v69 += 2;
        }

        while (v71 < v70);
        v72 = &v9[v69];
        v73 = a2;
        if (v69 == 2)
        {
          v73 = a2;
          do
          {
            if (v72 >= v73)
            {
              break;
            }

            v75 = *(v73 - 2);
            v73 -= 8;
          }

          while (v75 >= v70);
        }

        else
        {
          do
          {
            v74 = *(v73 - 2);
            v73 -= 8;
          }

          while (v74 >= v70);
        }

        if (v72 >= v73)
        {
          v9 = (v9 + v69 * 4);
        }

        else
        {
          v76 = *v73;
          v9 = (v9 + v69 * 4);
          v77 = v73;
          do
          {
            *v9 = v76;
            *v77 = v71;
            v78 = v9[1];
            v9[1] = v77[1];
            v77[1] = v78;
            do
            {
              v79 = v9[2];
              v9 += 2;
              v71 = v79;
            }

            while (v79 < v70);
            do
            {
              v80 = *(v77 - 2);
              v77 -= 2;
              v76 = v80;
            }

            while (v80 >= v70);
          }

          while (v9 < v77);
        }

        if (v9 - 2 != v7)
        {
          *v7 = *(v9 - 2);
          v7[1] = *(v9 - 1);
        }

        *(v9 - 1) = v70;
        if (v72 >= v73)
        {
          break;
        }

LABEL_87:
        result = sub_24BDF961C(v7, v9 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v81 = sub_24BDFA320(v7, v9 - 8);
      result = sub_24BDFA320(v9, a2);
      if (result)
      {
        break;
      }

      if (!v81)
      {
        goto LABEL_87;
      }
    }

    a2 = (v9 - 2);
    if (!v81)
    {
      continue;
    }

    return result;
  }
}

int *sub_24BDFA150(int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = (a2 + 1);
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = (a3 + 1);
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BDFA320(unsigned int *a1, char *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 >= v6)
        {
          return 1;
        }

        a1[2] = v8;
        *(a2 - 2) = v6;
        v20 = (a1 + 3);
        v19 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v19;
        v21 = a1[2];
        v22 = *a1;
        if (v21 >= *a1)
        {
          return 1;
        }

        *a1 = v21;
        a1[2] = v22;
        v9 = (a1 + 1);
      }

      else
      {
        if (v8 >= v6)
        {
          v9 = (a1 + 3);
          v29 = a1[3];
          v30 = a1[1];
          *a1 = v6;
          a1[1] = v29;
          a1[2] = v7;
          a1[3] = v30;
          v31 = *(a2 - 2);
          if (v31 >= v7)
          {
            return 1;
          }

          a1[2] = v31;
        }

        else
        {
          v9 = (a1 + 1);
          *a1 = v8;
        }

        *(a2 - 2) = v7;
        v20 = a2 - 4;
      }

      v32 = *v9;
      *v9 = *v20;
      *v20 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_24BDFA150(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v15 = a1[2];
    v16 = *a1;
    v17 = a1[4];
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        v27 = (a1 + 3);
        v26 = a1[3];
        v28 = a1[5];
        a1[2] = v17;
        a1[3] = v28;
        a1[4] = v15;
        a1[5] = v26;
        if (v17 >= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        a1[2] = v16;
        v18 = (a1 + 1);
LABEL_50:
        v48 = *v18;
        *v18 = *v27;
        *v27 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = (a1 + 1);
        *a1 = v17;
LABEL_49:
        a1[4] = v16;
        v27 = (a1 + 5);
        v15 = v16;
        goto LABEL_50;
      }

      v18 = (a1 + 3);
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v15;
      a1[1] = v46;
      a1[2] = v16;
      a1[3] = v47;
      if (v17 < v16)
      {
        a1[2] = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 2);
    if (v49 < v17)
    {
      a1[4] = v49;
      *(a2 - 2) = v17;
      v50 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v50;
      v51 = a1[4];
      v52 = a1[2];
      if (v51 < v52)
      {
        v53 = a1[3];
        v54 = a1[5];
        a1[2] = v51;
        a1[3] = v54;
        a1[4] = v52;
        a1[5] = v53;
        v55 = *a1;
        if (v51 < *a1)
        {
          v56 = a1[1];
          *a1 = v51;
          a1[1] = v54;
          a1[2] = v55;
          a1[3] = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v5 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 4);
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 < *a1)
  {
    if (v11 >= v12)
    {
      v14 = (a1 + 3);
      v33 = a1[3];
      v34 = a1[1];
      *a1 = v12;
      a1[1] = v33;
      a1[2] = v13;
      a1[3] = v34;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      a1[2] = v11;
    }

    else
    {
      v14 = (a1 + 1);
      *a1 = v11;
    }

    a1[4] = v13;
    v24 = (a1 + 5);
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    v24 = (a1 + 3);
    v23 = a1[3];
    v25 = a1[5];
    a1[2] = v11;
    a1[3] = v25;
    a1[4] = v12;
    a1[5] = v23;
    if (v11 < v13)
    {
      *a1 = v11;
      a1[2] = v13;
      v14 = (a1 + 1);
LABEL_35:
      v35 = *v14;
      *v14 = *v24;
      *v24 = v35;
    }
  }

LABEL_36:
  v36 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v10;
    if (*v36 < *v10)
    {
      v41 = *v36;
      v40 = *(v36 + 1);
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 20);
        v43[6] = v39;
        v43[7] = v44;
        if (v42 == -16)
        {
          break;
        }

        v39 = v43[2];
        v42 -= 8;
        if (v39 <= v41)
        {
          v45 = (a1 + v42 + 24);
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v41;
      v45[1] = v40;
      if (++v38 == 8)
      {
        return v36 + 8 == a2;
      }
    }

    v10 = v36;
    v37 += 8;
    v36 += 8;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void *sub_24BDFA720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F96858;
  sub_24BDFABF0(a1 + 3, a2, a3, a4, *a5);
  return a1;
}

uint64_t sub_24BDFA780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 68) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  sub_24BDDE488((a1 + 120));
  *(a1 + 192) = -1;
  *(a1 + 184) = 0;
  *(a1 + 200) = -1;
  *(a1 + 208) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  v6 = *(a1 + 40);
  sub_24BC836D4(__p, off_27F078F78[0]);
  v27[0] = 0;
  v7 = sub_24BCB74D4((v6 + 80), v27, __p);
  *(a1 + 192) = v7;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 == -1)
  {
    v8 = *(a1 + 40);
    sub_24BC836D4(__p, off_27F078F78[0]);
    v27[0] = 0;
    sub_24BCDB6E4(v8 + 80);
  }

  v9 = *(a1 + 40);
  v10 = (v9[10] + 16 * *(a1 + 192));
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
    v9 = *(a1 + 40);
  }

  (*(*v12 + 32))(v12, (v9[14] - v9[13]) >> 2);
  v13 = *(a1 + 40);
  sub_24BC836D4(__p, "f:area");
  LODWORD(v27[0]) = 0;
  v14 = sub_24BDBA62C((v13 + 56), v27, __p);
  *(a1 + 196) = v14;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 == -1)
  {
    v15 = *(a1 + 40);
    sub_24BC836D4(__p, "f:area");
    sub_24BDEE3F4(v15);
  }

  v16 = *(a1 + 40);
  sub_24BC836D4(__p, "h:length");
  LODWORD(v27[0]) = 0;
  v17 = sub_24BDBA62C((v16 + 32), v27, __p);
  *(a1 + 200) = v17;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 == -1)
  {
    v18 = *(a1 + 40);
    sub_24BC836D4(__p, "h:length");
    sub_24BDEE380(v18);
  }

  v19 = *(a1 + 40);
  sub_24BC836D4(__p, "h:signal_length");
  LODWORD(v27[0]) = 0;
  v20 = sub_24BDBA62C((v19 + 32), v27, __p);
  *(a1 + 204) = v20;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 == -1)
  {
    v21 = *(a1 + 40);
    sub_24BC836D4(__p, "h:signal_length");
    sub_24BDEE380(v21);
  }

  if (*(a1 + 64) == 1)
  {
    v22 = *(a1 + 40);
    sub_24BC836D4(__p, "f:imt");
    v27[0] = 0;
    v27[1] = 0;
    v23 = sub_24BCB6470((v22 + 56), v27, __p);
    *(a1 + 68) = v23;
    if (v26 < 0)
    {
      operator delete(__p[0]);
      v23 = *(a1 + 68);
    }

    if (v23 == -1)
    {
      *(a1 + 64) = 0;
    }
  }

  return a1;
}

void sub_24BDFAAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v21 = v15[42];
  if (v21)
  {
    v15[43] = v21;
    operator delete(v21);
  }

  v22 = v15[39];
  if (v22)
  {
    v15[40] = v22;
    operator delete(v22);
  }

  v23 = v15[36];
  if (v23)
  {
    v15[37] = v23;
    operator delete(v23);
  }

  sub_24BCB7FC8(&__p);
  v24 = v15[29];
  if (v24)
  {
    v15[30] = v24;
    operator delete(v24);
  }

  if (*v19)
  {
    operator delete(*v19);
  }

  sub_24BDDE49C((v15 + 15));
  sub_24BCC8A84(v16, *v18);
  v25 = *v17;
  if (*v17)
  {
    v15[10] = v25;
    operator delete(v25);
  }

  sub_24BC9F10C((v15 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_24BDFABF4(void *a1)
{
  sub_24BDE9A84(a1[5], word_24BFED790, a1 + 9);
  v2 = (a1[10] - a1[9]) >> 2;
  if (v2 < 2)
  {
    return 0;
  }

  v3 = (*(a1[5] + 112) - *(a1[5] + 104)) >> 2;
  a1[27] = 0;
  sub_24BCB29DC((a1 + 26), v3, 0);
  v4 = 0;
  v5 = a1[9];
  v6 = a1[26];
  do
  {
    *(v6 + ((*(v5 + 4 * v4) >> 3) & 0x1FFFFFF8)) |= 1 << *(v5 + 4 * v4);
    ++v4;
  }

  while (v2 != v4);
  a1[40] = a1[39];
  sub_24BC8CAB0(a1 + 39, v3 * v2);
  sub_24BDFAE60(a1, a1 + 9, a1[39]);
  v7 = a1[4];
  if (v7)
  {
    if ((*(*v7 + 48))(v7))
    {
      return 0;
    }
  }

  sub_24BC95764(&__p, v2 * v2);
  sub_24BDFB0FC(a1, &__p);
  v15 = 0;
  sub_24BDDE53C(a1 + 15, v2, __p);
  if (v2 >= 0x19)
  {
    v9 = 25;
  }

  else
  {
    v9 = v2;
  }

  sub_24BDDE780((a1 + 15), v9, &v15);
  v17 = __p;
  v10 = a1[4];
  if (v10 && ((*(*v10 + 48))(v10) & 1) != 0 || (sub_24BDDF3E8(a1 + 15, a1 + 23, 0.9), (v11 = a1[4]) != 0) && ((*(*v11 + 48))(v11) & 1) != 0 || (v12 = a1[23]) == 0)
  {
    v8 = 0;
  }

  else
  {
    if (v12 <= 2 && v15 >= 3)
    {
      v12 = 3;
      a1[23] = 3;
    }

    v13 = a1[42];
    if (v13 != a1[43])
    {
      a1[43] = v13;
    }

    sub_24BC8CAB0(a1 + 42, v12 * v3);
    sub_24BDFB170(a1);
    v8 = 1;
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v8;
}