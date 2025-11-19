uint64_t sub_24BD75B14(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1] - *a2;
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = (a1 + 104);
  if (v3 >> 4 != (v5 - v4) >> 2 || a3[1] - *a3 != v3)
  {
    return 0;
  }

  if (v5 != v4)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *a2;
      v30 = *(*a3 + 16 * v10);
      v28.i32[0] = v11;
      sub_24BCB8F94(v29, v6, &v28);
      v13 = sub_24BCB8FBC(v29);
      if (v13 != -1)
      {
        v15 = (v12 + 16 * v10);
        *&v14 = 0;
        v26 = v14;
        do
        {
          v16 = *a2 + 16 * v13;
          v17 = *a3 + 16 * v13;
          v27 = 0u;
          v28 = 0u;
          sub_24BD75330(&v30, v15, v17, v16, &v28, &v27, 0);
          v18 = vaddq_f32(v27, vmulq_n_f32(v28, *&v26));
          v19 = vmulq_f32(v18, *v15);
          v19.i32[3] = 0;
          v20 = vsubq_f32(v18, vmulq_n_f32(*v15, vaddv_f32(*&vpaddq_f32(v19, v19))));
          v21 = vmulq_f32(v20, v20);
          v21.i32[3] = 0;
          v22 = vpaddq_f32(v21, v21).u64[0];
          v22.f32[0] = sqrtf(vaddv_f32(v22));
          v23 = v26;
          if (v22.f32[0] > 0.00000001)
          {
            v20 = vdivq_f32(v20, vdupq_lane_s32(v22, 0));
          }

          *&v23 = *&v26 + 1.0;
          v25 = v20;
          v26 = v23;
          v30 = v20;
          v13 = sub_24BCB8FBC(v29);
        }

        while (v13 != -1);
        if (*&v26 > 0.0)
        {
          *(*a3 + 16 * v10) = v25;
        }
      }

      v10 = ++v11;
    }

    while (v11 < ((*(a1 + 112) - *(a1 + 104)) >> 2));
  }

  return 1;
}

uint64_t sub_24BD75CC8(uint64_t a1, uint64_t *a2, void *a3, void *a4, __n128 a5)
{
  v5 = a2[1] - *a2;
  v6 = *(a1 + 104);
  v7 = *(a1 + 112);
  v8 = (a1 + 104);
  if (v5 >> 4 != (v7 - v6) >> 2 || a4[1] - *a4 != v5)
  {
    return 0;
  }

  if (v7 != v6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      a5.n128_u32[0] = *(*a3 + 4 * v13);
      v29 = a5;
      v15 = *a2;
      v27 = *(*a4 + 16 * v13);
      v33 = v27;
      v31.i32[0] = v14;
      sub_24BCB8F94(v32, v8, &v31);
      v16 = sub_24BCB8FBC(v32);
      if (v16 != -1)
      {
        v17 = (v15 + 16 * v13);
        do
        {
          v28 = *(*a3 + 4 * v16);
          v18 = *a2 + 16 * v16;
          v19 = *a4 + 16 * v16;
          v30 = 0u;
          v31 = 0u;
          sub_24BD75330(&v33, v17, v19, v18, &v31, &v30, 0);
          v20 = vaddq_f32(vmulq_n_f32(v31, v29.n128_f32[0]), vmulq_n_f32(v30, v28));
          v21 = vmulq_f32(*v17, v20);
          v21.i32[3] = 0;
          v22 = vsubq_f32(v20, vmulq_n_f32(*v17, vaddv_f32(*&vpaddq_f32(v21, v21))));
          v23 = vmulq_f32(v22, v22);
          v23.i32[3] = 0;
          v24 = vpaddq_f32(v23, v23).u64[0];
          v24.f32[0] = sqrtf(vaddv_f32(v24));
          v25 = v29;
          if (v24.f32[0] > 0.00000001)
          {
            v22 = vdivq_f32(v22, vdupq_lane_s32(v24, 0));
          }

          v27 = v22;
          v25.n128_f32[0] = v29.n128_f32[0] + v28;
          v29 = v25;
          v33 = v22;
          v16 = sub_24BCB8FBC(v32);
        }

        while (v16 != -1);
      }

      a5 = v27;
      if (v29.n128_f32[0] > 0.0)
      {
        *(*a4 + 16 * v13) = v27;
      }

      v13 = ++v14;
    }

    while (v14 < ((*(a1 + 112) - *(a1 + 104)) >> 2));
  }

  return 1;
}

uint64_t sub_24BD75E9C(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1] - *a2;
  if (v3 >> 4 != (*(a1 + 160) - *(a1 + 152)) >> 2 || a3[1] - *a3 != v3)
  {
    return 0;
  }

  sub_24BCB7458(__p, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *a2;
      v31 = *(*a3 + 16 * v7);
      v27 = v31;
      v30.i32[0] = v8;
      sub_24BCD573C(a1, &v30, __p);
      v10 = 0;
      v11 = (v9 + 16 * v7);
      *&v12 = 0;
      v26 = v12;
      v13 = v27;
      do
      {
        v28 = v13;
        v14 = sub_24BCB9024(a1 + 104, (__p[0] + v10));
        v15 = *(sub_24BCB9024(a1 + 104, v14) + 16);
        v13 = v28;
        if (v15 != -1)
        {
          v16 = *a2 + 16 * v15;
          v17 = *a3 + 16 * v15;
          v29 = 0u;
          v30 = 0u;
          sub_24BD75330(&v31, v11, v17, v16, &v30, &v29, 0);
          v18 = vaddq_f32(v29, vmulq_n_f32(v30, *&v26));
          v19 = vmulq_f32(v18, *v11);
          v19.i32[3] = 0;
          v20 = vsubq_f32(v18, vmulq_n_f32(*v11, vaddv_f32(*&vpaddq_f32(v19, v19))));
          v21 = vmulq_f32(v20, v20);
          v21.i32[3] = 0;
          v22 = vpaddq_f32(v21, v21);
          v23 = vpaddq_f32(v22, v22);
          v13 = xmmword_24BFBD1C0;
          if (v23.f32[0] > 0.0)
          {
            v13 = vdivq_f32(v20, vsqrtq_f32(v23));
          }

          v24 = v26;
          *&v24 = *&v26 + 1.0;
          v26 = v24;
          v31 = v13;
        }

        v10 += 4;
      }

      while (v10 != 12);
      if (*&v26 > 0.0)
      {
        *(*a3 + 16 * v7) = v13;
      }

      v7 = ++v8;
    }

    while (v8 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 1;
}

void sub_24BD76098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD760B8(uint64_t a1, uint64_t *a2, void *a3, void *a4, float a5)
{
  v64[0] = a5;
  v5 = a2[1] - *a2;
  v6 = *(a1 + 104);
  v49 = (a1 + 104);
  v7 = *(a1 + 112);
  if (v5 >> 4 != (v7 - v6) >> 2 || a3[1] - *a3 != v5 || a4[1] - *a4 != v5)
  {
    return 0;
  }

  if (fabsf(a5) <= 0.00000001)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0 / a5;
  }

  v63 = v10;
  if (v7 != v6)
  {
    v13 = 0;
    v51 = 0;
    do
    {
      v14 = *a2;
      v15 = (*(a1 + 8) + 16 * *(a1 + 176));
      v17 = *v15;
      v16 = v15[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v16);
      }

      v18 = *(*a3 + 16 * v13);
      v53 = *(*(v17 + 40) + 16 * v13);
      v62 = v53;
      v50 = v13;
      v60 = *(*a4 + 16 * v13);
      v19 = vmulq_f32(v18, v18);
      v19.i32[3] = 0;
      v20 = vpaddq_f32(v19, v19);
      v21 = vpaddq_f32(v20, v20);
      v22 = xmmword_24BFBD1C0;
      if (v21.f32[0] > 0.0)
      {
        v22 = vdivq_f32(v18, vsqrtq_f32(v21));
      }

      v48 = v22;
      v61 = v22;
      v58.i32[0] = v51;
      v23 = sub_24BCB8F94(v59, v49, &v58);
      v24 = sub_24BCB8FBC(v23);
      if (v24 != -1)
      {
        v26 = v24;
        v27 = (v14 + 16 * v50);
        *&v25 = 0;
        v54 = v25;
        do
        {
          v28 = *a2;
          v29 = (*(a1 + 8) + 16 * *(a1 + 176));
          v31 = *v29;
          v30 = v29[1];
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v30);
          }

          v32 = *(*a3 + 16 * v26);
          v33 = *(v31 + 40);
          v57 = *(*a4 + 16 * v26);
          v34 = vmulq_f32(v32, v32);
          v34.i32[3] = 0;
          v35 = vpaddq_f32(v34, v34);
          v36 = vpaddq_f32(v35, v35);
          v37 = xmmword_24BFBD1C0;
          if (v36.f32[0] > 0.0)
          {
            v37 = vdivq_f32(v32, vsqrtq_f32(v36));
          }

          v58 = v37;
          v55 = 0u;
          v56 = 0u;
          sub_24BD755BC(&v62, v27, &v61, &v60, (v33 + 16 * v26), (v28 + 16 * v26), &v58, &v57, v64, &v63, &v56, &v55);
          v39 = v54;
          v38 = vaddq_f32(v55, vmulq_n_f32(v56, *&v54));
          *&v39 = *&v54 + 1.0;
          v40 = (*&v54 + 1.0);
          v54 = v39;
          if (v40 > 0.00000001)
          {
            v38 = vdivq_f32(v38, vdupq_lane_s32(*&v39, 0));
          }

          v41 = vmulq_f32(vsubq_f32(v38, v53), *v27);
          v41.i32[3] = 0;
          v52 = vsubq_f32(v38, vmulq_n_f32(*v27, vaddv_f32(*&vpaddq_f32(v41, v41))));
          v60 = v52;
          v26 = sub_24BCB8FBC(v59);
        }

        while (v26 != -1);
        if (*&v54 > 0.0)
        {
          v42 = vmlsq_f32(vmulq_f32(vuzp2q_s32(vextq_s8(v48, v48, 4uLL), v48), vzip2q_s32(vzip1q_s32(*v27, vextq_s8(*v27, *v27, 0xCuLL)), *v27)), vzip2q_s32(vzip1q_s32(v48, vextq_s8(v48, v48, 0xCuLL)), v48), vuzp2q_s32(vextq_s8(*v27, *v27, 4uLL), *v27));
          v43 = vsubq_f32(v53, v52);
          v44 = vmulq_f32(v48, v43);
          v44.i32[3] = 0;
          v45 = vmulq_f32(v43, v42);
          v45.i32[3] = 0;
          *(*a4 + 16 * v50) = vaddq_f32(vmulq_n_f32(vmulq_n_f32(v42, roundf(v10 * vaddv_f32(*&vpaddq_f32(v45, v45)))), a5), vaddq_f32(v52, vmulq_n_f32(vmulq_n_f32(v48, roundf(v10 * vaddv_f32(*&vpaddq_f32(v44, v44)))), a5)));
        }
      }

      v13 = ++v51;
    }

    while (v51 < ((*(a1 + 112) - *(a1 + 104)) >> 2));
  }

  return 1;
}

uint64_t sub_24BD76454(uint64_t a1, _DWORD *a2, unsigned int **a3, unsigned int a4)
{
  v7 = *a3;
  v8 = (*a3)[1];
  v28 = **a3;
  v9 = v7[2];
  LODWORD(v7) = v7[3];
  v26 = v9;
  v27 = v8;
  v25 = v7;
  v24 = *(sub_24BCB9024(a1 + 104, &v28) + 12);
  v23 = *(sub_24BCB9024(a1 + 104, &v26) + 12);
  LODWORD(v19) = -1;
  v22 = sub_24BCD8740(a1, &v19);
  v20 = -1;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v10 = sub_24BCB45D0(a1, 0, &v19);
  v21 = v10;
  v20 = -1;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v11 = sub_24BCB45D0(a1, 0, &v19);
  v18 = v11;
  v12 = (*(a1 + 32) + 16 * a4);
  v14 = *v12;
  v13 = v12[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v13);
    v15 = (*(a1 + 32) + 16 * a4);
    v16 = *v15;
    v13 = v15[1];
  }

  else
  {
    v16 = *v12;
  }

  *(*(v14 + 40) + ((v10 >> 3) & 0x1FFFFFF8)) |= 1 << v10;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v13);
  }

  *(*(v16 + 40) + ((v11 >> 3) & 0x1FFFFFF8)) |= 1 << v11;
  sub_24BCB9048(a1 + 104, &v21, &v28);
  sub_24BCB9048(a1 + 104, &v27, &v21);
  sub_24BCB9048(a1 + 104, &v18, &v26);
  sub_24BCB9048(a1 + 104, &v25, &v18);
  sub_24BCB9074(a1 + 104, &v21, &v18);
  sub_24BCB90A0(a1 + 104, a2, &v21);
  sub_24BCB90A0(a1 + 104, &v22, &v18);
  sub_24BCB90A0(a1 + 104, &v22, &v26);
  sub_24BCB90A0(a1 + 104, &v22, &v25);
  sub_24BCB90F0((a1 + 104), &v24, &v18);
  sub_24BCB90F0((a1 + 104), &v23, &v21);
  return 1;
}

uint64_t sub_24BD76678(uint64_t a1, _DWORD *a2, unsigned int **a3, unsigned int a4)
{
  v7 = *a3;
  v8 = **a3;
  v41 = (*a3)[1];
  v42 = v8;
  v9 = v7[2];
  v39 = v7[3];
  v40 = v9;
  v38 = v7[4];
  v37 = *(sub_24BCB9024(a1 + 104, &v42) + 12);
  v36 = *(sub_24BCB9024(a1 + 104, &v40) + 12);
  v35 = *(sub_24BCB9024(a1 + 104, &v39) + 12);
  LODWORD(v30) = -1;
  v34 = sub_24BCD8740(a1, &v30);
  LODWORD(v30) = -1;
  v33 = sub_24BCD8740(a1, &v30);
  v31 = -1;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v10 = sub_24BCB45D0(a1, 0, &v30);
  v31 = -1;
  v32 = v10;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v11 = sub_24BCB45D0(a1, 0, &v30);
  v29 = v11;
  v31 = -1;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v12 = sub_24BCB45D0(a1, 0, &v30);
  v28 = v12;
  v31 = -1;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v13 = sub_24BCB45D0(a1, 0, &v30);
  v27 = v13;
  v14 = a4;
  v15 = *(a1 + 32);
  v16 = (v15 + 16 * a4);
  v18 = *v16;
  v17 = v16[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v17);
    v15 = *(a1 + 32);
    v19 = (v15 + 16 * a4);
    v20 = *v19;
    v17 = v19[1];
  }

  else
  {
    v20 = *v16;
  }

  *(*(v18 + 40) + ((v10 >> 3) & 0x1FFFFFF8)) |= 1 << v10;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v17);
    v15 = *(a1 + 32);
  }

  *(*(v20 + 40) + ((v11 >> 3) & 0x1FFFFFF8)) |= 1 << v11;
  v21 = (v15 + 16 * v14);
  v23 = *v21;
  v22 = v21[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v22);
    v24 = (*(a1 + 32) + 16 * v14);
    v25 = *v24;
    v22 = v24[1];
  }

  else
  {
    v25 = *v21;
  }

  *(*(v23 + 40) + ((v12 >> 3) & 0x1FFFFFF8)) |= 1 << v12;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v22);
  }

  *(*(v25 + 40) + ((v13 >> 3) & 0x1FFFFFF8)) |= 1 << v13;
  sub_24BCB9048(a1 + 104, &v32, &v42);
  sub_24BCB9048(a1 + 104, &v41, &v32);
  sub_24BCB9048(a1 + 104, &v29, &v40);
  sub_24BCB9048(a1 + 104, &v40, &v28);
  sub_24BCB9048(a1 + 104, &v28, &v29);
  sub_24BCB9048(a1 + 104, &v27, &v39);
  sub_24BCB9048(a1 + 104, &v38, &v27);
  sub_24BCB9074(a1 + 104, &v32, &v29);
  sub_24BCB9074(a1 + 104, &v28, &v27);
  sub_24BCB90A0(a1 + 104, a2, &v32);
  sub_24BCB90A0(a1 + 104, &v34, &v29);
  sub_24BCB90A0(a1 + 104, &v34, &v40);
  sub_24BCB90A0(a1 + 104, &v34, &v28);
  sub_24BCB90A0(a1 + 104, &v33, &v27);
  sub_24BCB90A0(a1 + 104, &v33, &v39);
  sub_24BCB90A0(a1 + 104, &v33, &v38);
  sub_24BCB90F0((a1 + 104), &v37, &v29);
  sub_24BCB90F0((a1 + 104), &v37, &v27);
  sub_24BCB90F0((a1 + 104), &v36, &v32);
  sub_24BCB90F0((a1 + 104), &v35, &v28);
  return 1;
}

uint64_t sub_24BD76A34(uint64_t a1, _DWORD *a2, unsigned int **a3, unsigned int a4)
{
  v4 = *a3;
  v5 = a3[1] - *a3;
  if (v5 >= 0x10)
  {
    v10 = *v4;
    v33 = v4[1];
    v34 = v10;
    v32 = v4[2];
    v31 = *(v4 + v5 - 4);
    v30 = *(sub_24BCB9024(a1 + 104, &v34) + 12);
    v29 = *(sub_24BCB9024(a1 + 104, &v32) + 12);
    LODWORD(__p) = -1;
    v28 = sub_24BCD8740(a1, &__p);
    v25 = -1;
    *&__p = -1;
    *(&__p + 1) = -1;
    v11 = sub_24BCB45D0(a1, 0, &__p);
    v27 = v11;
    v25 = -1;
    *&__p = -1;
    *(&__p + 1) = -1;
    v12 = sub_24BCB45D0(a1, 0, &__p);
    v26 = v12;
    v13 = a4;
    v14 = (*(a1 + 32) + 16 * a4);
    v16 = *v14;
    v15 = v14[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v15);
      v17 = (*(a1 + 32) + 16 * a4);
      v18 = *v17;
      v15 = v17[1];
    }

    else
    {
      v18 = *v14;
    }

    *(*(v16 + 40) + ((v11 >> 3) & 0x1FFFFFF8)) |= 1 << v11;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v15);
    }

    *(*(v18 + 40) + ((v12 >> 3) & 0x1FFFFFF8)) |= 1 << v12;
    sub_24BCB9048(a1 + 104, &v27, &v34);
    sub_24BCB9048(a1 + 104, &v33, &v27);
    sub_24BCB9048(a1 + 104, &v26, &v32);
    sub_24BCB9048(a1 + 104, &v31, &v26);
    sub_24BCB9074(a1 + 104, &v27, &v26);
    sub_24BCB90A0(a1 + 104, a2, &v26);
    sub_24BCB90A0(a1 + 104, &v28, &v27);
    sub_24BCB90A0(a1 + 104, &v28, &v34);
    sub_24BCB90A0(a1 + 104, &v28, &v33);
    sub_24BCB90F0((a1 + 104), &v30, &v26);
    sub_24BCB90F0((a1 + 104), &v29, &v27);
    v19 = a3[1] - *a3;
    if (v19 >= 5)
    {
      sub_24BCB7458(&__p, v19 - 1);
      *__p = v26;
      v20 = *a3;
      if ((a3[1] - *a3) >= 9)
      {
        v21 = 3;
        v22 = 2;
        do
        {
          *(__p + 4 * (v21 - 2)) = v20[v22];
          v22 = v21;
          v20 = *a3;
          ++v21;
        }

        while (v22 < a3[1] - *a3);
      }

      sub_24BD76A34(a1, a2, &__p, v13);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }
  }

  return 1;
}

void sub_24BD76D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD76D24(uint64_t a1, unsigned int *a2, _OWORD *a3)
{
  v4 = a2;
  v6 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v7 & *v6) != 0 || (v8 = sub_24BCB9024(a1 + 104, v4), v9 = sub_24BC9ECE4(a1, *(a1 + 180), *v8), (v10 & *v9) != 0))
  {

    return sub_24BCD8E8C(a1, v4);
  }

  else
  {
    v68 = *(sub_24BCB9024(a1 + 104, v4) + 12);
    v12 = sub_24BCB9024(a1 + 104, v4);
    v67 = *(sub_24BCB9024(a1 + 104, v12) + 12);
    if (v68 == v67)
    {
      return 0;
    }

    v13 = sub_24BCD93B0(a1, &v68);
    v14 = sub_24BCD93B0(a1, &v67);
    if (v13 && v14)
    {
      return 0;
    }

    if (!v13)
    {
      v4 = sub_24BCB9024(a1 + 104, v4);
    }

    v66 = *v4;
    v65 = *(sub_24BCB9024(a1 + 104, &v66) + 8);
    v64 = *(sub_24BCB9024(a1 + 104, &v65) + 8);
    v63 = *sub_24BCB9024(a1 + 104, &v66);
    v62 = *(sub_24BCB9024(a1 + 104, &v63) + 8);
    v61 = *(sub_24BCB9024(a1 + 104, &v62) + 8);
    v60 = *sub_24BCB9024(a1 + 104, &v64);
    v15 = *sub_24BCB9024(a1 + 104, &v62);
    v59 = v15;
    v58 = *sub_24BCB9024(a1 + 104, &v65);
    v57 = *sub_24BCB9024(a1 + 104, &v61);
    v56 = *(sub_24BCB9024(a1 + 104, &v66) + 16);
    v55 = *(sub_24BCB9024(a1 + 104, &v63) + 16);
    v54 = *(sub_24BCB9024(a1 + 104, &v66) + 12);
    v16 = sub_24BCB9024(a1 + 104, &v66);
    v53 = *(sub_24BCB9024(a1 + 104, v16) + 12);
    v17 = *(sub_24BCB9024(a1 + 104, &v64) + 12);
    v52 = v17;
    v18 = *(sub_24BCB9024(a1 + 104, &v61) + 12);
    v51 = v18;
    v19 = sub_24BCD9434(a1, v54);
    v20 = sub_24BCD9434(a1, v53);
    if (sub_24BCD9434(a1, v17) < 3)
    {
      return 0;
    }

    v21 = sub_24BCD9434(a1, v18);
    result = 0;
    if (v21 < 3 || v20 < 3)
    {
      return result;
    }

    v22 = sub_24BC9ECE4(a1, *(a1 + 180), v60);
    if ((v23 & *v22) == 0 || (v24 = sub_24BC9ECE4(a1, *(a1 + 180), v15), (v25 & *v24) == 0))
    {
      if (v19 == 2)
      {
        return 0;
      }
    }

    result = 0;
    if (v20 + v19 < 6 || v17 == v18)
    {
      return result;
    }

    if (v17 == v54)
    {
      return 0;
    }

    result = 0;
    if (v54 != v53 && v18 != v53 && v18 != v54 && v17 != v53)
    {
      sub_24BCB8F94(v50, (a1 + 104), &v54);
      v26 = sub_24BCB8FBC(v50);
      v49 = v26;
      if (v26 != -1)
      {
        v27 = 0;
        do
        {
          if (v26 == v53)
          {
            if (v27 > 0)
            {
              return 0;
            }

            v27 = 1;
          }

          sub_24BCB8F94(&__p, (a1 + 104), &v49);
          while (1)
          {
            v28 = sub_24BCB8FBC(&__p);
            if (v28 == -1)
            {
              break;
            }

            if (v28 == v53 && v49 != v17 && v49 != v18)
            {
              return 0;
            }
          }

          v26 = sub_24BCB8FBC(v50);
          v49 = v26;
        }

        while (v26 != -1);
      }

      __p = 0;
      v47 = 0;
      v48 = 0;
      sub_24BCB9454(v45, (a1 + 104), &v53);
      for (i = sub_24BCB947C(v45); ; i = sub_24BCB947C(v45))
      {
        v44 = i;
        if (i == -1)
        {
          break;
        }

        if (i != v65 && i != v63)
        {
          sub_24BCB4670(&__p, &v44);
        }
      }

      v32 = (*(a1 + 8) + 16 * *(a1 + 176));
      v34 = *v32;
      v33 = v32[1];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v33);
      }

      *(*(v34 + 40) + 16 * v54) = *a3;
      sub_24BCB9074(a1 + 104, &v60, &v58);
      sub_24BCB9074(a1 + 104, &v59, &v57);
      v35 = __p;
      if (v47 != __p)
      {
        v36 = 0;
        v37 = 1;
        do
        {
          sub_24BCB90C8((a1 + 104), &v35[v36], &v54);
          v36 = v37;
          v35 = __p;
          ++v37;
        }

        while (v36 < (v47 - __p) >> 2);
      }

      sub_24BCB90F0((a1 + 104), &v52, &v58);
      sub_24BCB90F0((a1 + 104), &v51, &v59);
      sub_24BCB90F0((a1 + 104), &v54, &v60);
      *sub_24BCB9038(a1 + 104, &v56) = -1;
      *sub_24BCB9038(a1 + 104, &v55) = -1;
      v38 = sub_24BCB9024(a1 + 104, &v66);
      *v38 = -1;
      *(v38 + 8) = -1;
      *(v38 + 16) = -1;
      v39 = sub_24BCB9024(a1 + 104, &v65);
      *v39 = -1;
      *(v39 + 8) = -1;
      *(v39 + 16) = -1;
      v40 = sub_24BCB9024(a1 + 104, &v64);
      *v40 = -1;
      *(v40 + 8) = -1;
      *(v40 + 16) = -1;
      v41 = sub_24BCB9024(a1 + 104, &v63);
      *v41 = -1;
      *(v41 + 8) = -1;
      *(v41 + 16) = -1;
      v42 = sub_24BCB9024(a1 + 104, &v62);
      *v42 = -1;
      *(v42 + 8) = -1;
      *(v42 + 16) = -1;
      v43 = sub_24BCB9024(a1 + 104, &v61);
      *v43 = -1;
      *(v43 + 8) = -1;
      *(v43 + 16) = -1;
      *sub_24BCB9014((a1 + 104), &v53) = -1;
      if (__p)
      {
        v47 = __p;
        operator delete(__p);
      }

      return 1;
    }
  }

  return result;
}

void sub_24BD772F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD77320(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (*(sub_24BCB9024(a1 + 104, a2) + 8) != *a3)
  {
    return 0;
  }

  v6 = sub_24BCB9024(a1 + 104, a2);
  v7 = *a3;
  if (*v6 == *a3)
  {
    return 0;
  }

  v21 = *a2;
  v20 = v7;
  v19 = *sub_24BCB9024(a1 + 104, &v21);
  v18 = *sub_24BCB9024(a1 + 104, &v20);
  v17 = *(sub_24BCB9024(a1 + 104, &v18) + 4);
  v16 = *(sub_24BCB9024(a1 + 104, &v20) + 8);
  v15 = *(sub_24BCB9024(a1 + 104, &v20) + 12);
  v9 = sub_24BCB9024(a1 + 104, &v20);
  v14 = *(sub_24BCB9024(a1 + 104, v9) + 12);
  v13 = *(sub_24BCB9024(a1 + 104, &v21) + 16);
  v12 = *(sub_24BCB9024(a1 + 104, &v19) + 16);
  sub_24BCB9048(a1 + 104, &v21, &v16);
  sub_24BCB9048(a1 + 104, &v17, &v19);
  sub_24BCB90F0((a1 + 104), &v14, &v19);
  sub_24BCB90A0(a1 + 104, &v13, &v21);
  sub_24BCB90A0(a1 + 104, &v12, &v19);
  *sub_24BCB9014((a1 + 104), &v15) = -1;
  v10 = sub_24BCB9024(a1 + 104, &v18);
  *v10 = -1;
  *(v10 + 8) = -1;
  *(v10 + 16) = -1;
  v11 = sub_24BCB9024(a1 + 104, &v20);
  *v11 = -1;
  *(v11 + 8) = -1;
  *(v11 + 16) = -1;
  return 1;
}

uint64_t sub_24BD774E0(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v4 = a2;
  v123 = *MEMORY[0x277D85DE8];
  v119 = *(sub_24BCB9024(a1 + 104, a2) + 16);
  v6 = sub_24BCB9024(a1 + 104, v4);
  v118 = *(sub_24BCB9024(a1 + 104, v6) + 16);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  __p = 0;
  v113 = 0;
  v114 = 0;
  v7 = *sub_24BCB9038(a1 + 104, &v119);
  LODWORD(v99) = v7;
  do
  {
    LODWORD(v99) = *(sub_24BCB9024(a1 + 104, &v99) + 8);
    sub_24BCB4670(&v115, &v99);
  }

  while (v99 != v7);
  v8 = *sub_24BCB9038(a1 + 104, &v118);
  LODWORD(v99) = v8;
  do
  {
    LODWORD(v99) = *(sub_24BCB9024(a1 + 104, &v99) + 8);
    sub_24BCB4670(&__p, &v99);
  }

  while (v99 != v8);
  v9 = __p;
  if (((v116 - v115) >> 2) > 4 || (v10 = (v113 - __p) >> 2, v10 > 4) || v116 - v115 == 16 && v113 - __p == 16)
  {
    v11 = 0;
    if (!__p)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v116 - v115) >> 2 < v10)
  {
    v4 = sub_24BCB9024(a1 + 104, v4);
  }

  v111 = *v4;
  v110 = *sub_24BCB9024(a1 + 104, &v111);
  v109 = *(sub_24BCB9024(a1 + 104, &v111) + 16);
  v108 = *(sub_24BCB9024(a1 + 104, &v110) + 16);
  v107 = *(sub_24BCB9024(a1 + 104, &v111) + 8);
  v106 = *(sub_24BCB9024(a1 + 104, &v111) + 4);
  v105 = *(sub_24BCB9024(a1 + 104, &v110) + 8);
  v104 = *(sub_24BCB9024(a1 + 104, &v110) + 4);
  v14 = sub_24BCB9024(a1 + 104, &v111);
  v103 = *(sub_24BCB9024(a1 + 104, v14) + 12);
  v102 = *(sub_24BCB9024(a1 + 104, &v111) + 12);
  v15 = sub_24BCB9024(a1 + 104, &v107);
  if (*v15 == v104 || (v16 = sub_24BCB9024(a1 + 104, &v106), *v16 == v105))
  {
    v11 = 0;
  }

  else
  {
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    LODWORD(v92) = v111;
    do
    {
      LODWORD(v92) = *(sub_24BCB9024(a1 + 104, &v92) + 8);
      if (v92 == v111)
      {
        break;
      }

      sub_24BCB4670(&v96, &v92);
    }

    while (v92 != v111);
    v17 = sub_24BCB9024(a1 + 104, &v110);
    sub_24BCB4670(&v96, (v17 + 8));
    v18 = sub_24BCB9024(a1 + 104, &v110);
    sub_24BCB4670(&v96, (v18 + 4));
    v19 = v96;
    if (v97 != v96)
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = sub_24BCB9024(a1 + 104, &v19[v20]);
        v23 = v100;
        if (v100 >= v101)
        {
          v25 = (v100 - v99) >> 2;
          if ((v25 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v26 = (v101 - v99) >> 1;
          if (v26 <= v25 + 1)
          {
            v26 = v25 + 1;
          }

          if (v101 - v99 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v27 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v26;
          }

          if (v27)
          {
            sub_24BC92E0C(&v99, v27);
          }

          v28 = (4 * v25);
          *v28 = *(v22 + 12);
          v24 = 4 * v25 + 4;
          v29 = v28 - (v100 - v99);
          memcpy(v29, v99, v100 - v99);
          v30 = v99;
          v99 = v29;
          v100 = v24;
          v101 = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v100 = *(v22 + 12);
          v24 = (v23 + 4);
        }

        v100 = v24;
        v20 = v21;
        v19 = v96;
        ++v21;
      }

      while (v20 < (v97 - v96) >> 2);
    }

    v95 = 0;
    v120 = __PAIR64__(v108, v109);
    v93 = 0;
    v94 = 0;
    v92 = 0;
    sub_24BD7EB20(&v92, &v120, &v121, 2uLL);
    sub_24BD78100(a1, &v92, &v99, v31, &v95);
    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (v95)
    {
      goto LABEL_116;
    }

    v32 = *a3;
    if (v32 == -1)
    {
      goto LABEL_79;
    }

    v92 = 0;
    v93 = 0;
    v94 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v33 = (*(a1 + 56) + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v34);
    }

    v36 = (*(v35 + 40) + 24 * v109);
    if (&v92 != v36)
    {
      sub_24BCA2A30(&v92, *v36, v36[1], (v36[1] - *v36) >> 2);
    }

    v37 = (*(a1 + 56) + 16 * *a3);
    v39 = *v37;
    v38 = v37[1];
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v38);
    }

    v40 = (*(v39 + 40) + 24 * v108);
    if (&v120 != v40)
    {
      sub_24BCA2A30(&v120, *v40, v40[1], (v40[1] - *v40) >> 2);
    }

    v41 = v120;
    if (v121 == v120)
    {
      v50 = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = (v93 - v92) >> 2;
      while (2)
      {
        if (v93 != v92)
        {
          v45 = 0;
          v46 = 0;
          while (*(v120 + 4 * v42) != *(v92 + v45))
          {
            v45 = ++v46;
            if (v44 <= v46)
            {
              v47 = 0;
              v48 = 0;
              v49 = *(v120 + 4 * (v43 + 2 - 3 * ((21846 * (v43 + 2)) >> 16)));
              while (v49 != *(v92 + v47))
              {
                v47 = ++v48;
                if (v44 <= v48)
                {
                  goto LABEL_62;
                }
              }

              sub_24BC8CAB0(&v92, v44 + 1);
              v51 = v92;
              if ((((v93 - v92) >> 2) - 2) > v48)
              {
                v52 = v92 + 4 * (((v93 - v92) >> 2) - 2) + 4;
                v53 = (((v93 - v92) >> 2) - 2) - 1;
                v54 = v52;
                do
                {
                  v55 = *--v54;
                  *v52 = v55;
                  v56 = v48 >= v53--;
                  v52 = v54;
                }

                while (!v56);
              }

              v51[v47 + 1] = *(v120 + 4 * v42);
              v57 = (*(a1 + 56) + 16 * *a3);
              v59 = *v57;
              v58 = v57[1];
              if (v58)
              {
                atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v58);
              }

              v60 = (*(v59 + 40) + 24 * v109);
              if (v60 != &v92)
              {
                sub_24BCA2A30(v60, v92, v93, (v93 - v92) >> 2);
              }

              v50 = 1;
              goto LABEL_73;
            }
          }

          v42 = ++v43;
          if ((v121 - v120) >> 2 > v43)
          {
            continue;
          }
        }

        break;
      }

LABEL_62:
      v50 = 0;
LABEL_73:
      v41 = v120;
    }

    if (v41)
    {
      v121 = v41;
      operator delete(v41);
    }

    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (v50)
    {
LABEL_79:
      sub_24BCB9048(a1 + 104, &v106, &v105);
      sub_24BCB9048(a1 + 104, &v104, &v107);
      sub_24BCB90F0((a1 + 104), &v103, &v107);
      sub_24BCB90F0((a1 + 104), &v102, &v105);
      sub_24BCB90A0(a1 + 104, &v109, &v105);
      sub_24BCB90A0(a1 + 104, &v109, &v104);
      if (*a3 == -1)
      {
        v61 = *sub_24BCB9038(a1 + 104, &v109);
        LODWORD(v92) = v61;
        LODWORD(v120) = -1;
        v62 = -200.0;
        do
        {
          LODWORD(v92) = *(sub_24BCB9024(a1 + 104, &v92) + 8);
          sub_24BCDAEE4(a1, v92);
          if (v63 > v62)
          {
            LODWORD(v120) = v92;
            v62 = v63;
          }
        }

        while (v92 != v61);
        if (v120 != -1)
        {
          v64 = sub_24BCB9024(a1 + 104, &v120);
          if (*(v64 + 4) != *sub_24BCB9038(a1 + 104, &v109) && v62 > 120.0)
          {
            v65 = sub_24BCB9024(a1 + 104, &v120);
            sub_24BCB90A0(a1 + 104, &v109, (v65 + 4));
          }
        }

        if (*a3 == -1)
        {
          v93 = 0;
          v94 = 0;
          v92 = &v93;
          v120 = 0;
          v121 = 0;
          v122 = 0;
          sub_24BD782DC(a1, &v109, &v120, &v92);
          v66 = v92;
          v120 = 0;
          v121 = 0;
          v122 = 0;
          if (v92 == &v93)
          {
            v82 = 0;
          }

          else
          {
            v67 = 0;
            do
            {
              if ((v66[6] - v66[5]) >= 5)
              {
                LODWORD(v89) = 0;
                sub_24BD78478(a1, v66 + 5, &v89);
                v68 = v89;
                v69 = v66[5];
                v70 = v66[6];
                v71 = (v89 + 1) % ((v70 - v69) >> 2);
                if (v89 != v71)
                {
                  LOBYTE(v72) = 0;
                  while (2)
                  {
                    v73 = (v70 - v69) >> 2;
                    while ((v72 & 1) != 0)
                    {
                      v71 = (v71 + 1) % v73;
                      LOBYTE(v72) = 1;
                      if (v68 == v71)
                      {
                        goto LABEL_100;
                      }
                    }

                    v72 = sub_24BD77320(a1, (v69 + 4 * v68), (v69 + 4 * v71));
                    v69 = v66[5];
                    v70 = v66[6];
                    v71 = (v71 + 1) % ((v70 - v69) >> 2);
                    if (v68 != v71)
                    {
                      continue;
                    }

                    break;
                  }

                  if (v72)
                  {
LABEL_100:
                    sub_24BCB4670(&v120, v66 + 8);
                    ++v67;
                  }
                }
              }

              v74 = v66[1];
              if (v74)
              {
                do
                {
                  v75 = v74;
                  v74 = *v74;
                }

                while (v74);
              }

              else
              {
                do
                {
                  v75 = v66[2];
                  v76 = *v75 == v66;
                  v66 = v75;
                }

                while (!v76);
              }

              v66 = v75;
            }

            while (v75 != &v93);
            v89 = 0;
            v90 = 0;
            v91 = 0;
            if (v67)
            {
              sub_24BCB4670(&v120, &v109);
              v77 = v120;
              v78 = v121;
              while (v77 != v78)
              {
                v88 = *v77;
                v90 = v89;
                v79 = *sub_24BCB9038(a1 + 104, &v88);
                v87 = v79;
                do
                {
                  v87 = *(sub_24BCB9024(a1 + 104, &v87) + 8);
                  sub_24BCB4670(&v89, &v87);
                }

                while (v87 != v79);
                if (v90 - v89 == 8)
                {
                  v80 = sub_24BCB9024(a1 + 104, v89);
                  if (*(v80 + 8) == *(v89 + 1))
                  {
                    v81 = *v89;
                    v85 = *(v80 + 8);
                    v86 = v81;
                    sub_24BD78540(a1, &v88, &v86, &v85);
                  }
                }

                ++v77;
              }

              if (v89)
              {
                v90 = v89;
                operator delete(v89);
              }
            }

            v82 = v120;
          }

          if (v82)
          {
            v121 = v82;
            operator delete(v82);
          }

          sub_24BD21FE0(&v92, v93);
        }
      }

      v83 = sub_24BCB9024(a1 + 104, &v111);
      *v83 = -1;
      *(v83 + 8) = -1;
      *(v83 + 16) = -1;
      v84 = sub_24BCB9024(a1 + 104, &v110);
      *v84 = -1;
      *(v84 + 8) = -1;
      *(v84 + 16) = -1;
      *sub_24BCB9038(a1 + 104, &v108) = -1;
      v11 = 1;
    }

    else
    {
LABEL_116:
      v11 = 0;
    }

    if (v96)
    {
      v97 = v96;
      operator delete(v96);
    }

    if (v99)
    {
      v100 = v99;
      operator delete(v99);
    }
  }

  v9 = __p;
  if (__p)
  {
LABEL_10:
    v113 = v9;
    operator delete(v9);
  }

LABEL_11:
  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_24BD77FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 128);
  if (v33)
  {
    *(v31 - 120) = v33;
    operator delete(v33);
  }

  sub_24BD21FE0(&a15, a16);
  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  v34 = *(v31 - 160);
  if (v34)
  {
    *(v31 - 152) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BD78100(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 0;
  v7 = *a3;
  if (a3[1] != *a3)
  {
    v30 = v5;
    v31 = v6;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = &v7[v12];
      sub_24BCB9454(v29, (a1 + 104), v14);
      v28 = sub_24BCB947C(v29);
      if (v28 != -1)
      {
        break;
      }

      v12 = ++v13;
LABEL_27:
      v7 = *a3;
      if (v12 >= (a3[1] - *a3) >> 2)
      {
        return 1;
      }
    }

    v15 = v12 - 1;
    v12 = ++v13;
    while (1)
    {
      v16 = *(sub_24BCB9024(a1 + 104, &v28) + 16);
      v27 = v16;
      if (v16 != -1)
      {
        v17 = *a2;
        v18 = *(a2 + 8);
        if (*a2 != v18)
        {
          while (*v17 != v16)
          {
            if (++v17 == v18)
            {
              goto LABEL_13;
            }
          }
        }

        if (v17 == v18)
        {
          break;
        }
      }

LABEL_11:
      v28 = sub_24BCB947C(v29);
      if (v28 == -1)
      {
        goto LABEL_27;
      }
    }

LABEL_13:
    v19 = *sub_24BCB9038(a1 + 104, &v27);
    v26 = v19;
    while (1)
    {
      v26 = *(sub_24BCB9024(a1 + 104, &v26) + 8);
      v20 = *(sub_24BCB9024(a1 + 104, &v26) + 12);
      if (v20 != *v14)
      {
        v22 = *a3;
        v21 = a3[1];
        v23 = (v21 - *a3) >> 2;
        if (v20 != *(*a3 + 4 * ((v15 + v23) % v23)) && v20 != v22[v12 % v23] && v22 != v21)
        {
          break;
        }
      }

LABEL_21:
      if (v26 == v19)
      {
        goto LABEL_11;
      }
    }

    while (v20 != *v22)
    {
      if (++v22 == v21)
      {
        goto LABEL_21;
      }
    }

    *a5 = 1;
  }

  return 1;
}

BOOL sub_24BD782DC(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v8 = *sub_24BCB9038(a1 + 104, a2);
    v22 = v8;
    do
    {
      v22 = *(sub_24BCB9024(a1 + 104, &v22) + 8);
      sub_24BCB4670(&v23, &v22);
    }

    while (v22 != v8);
    v9 = v23;
    if (v24 != v23)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v21 = *&v9[4 * v10];
        v12 = sub_24BCB9024(a1 + 104, &v21);
        v13 = sub_24BC9ECE4(a1, *(a1 + 180), *v12);
        if ((*v13 & v14) == 0)
        {
          v15 = sub_24BCB9024(a1 + 104, &v21);
          v16 = sub_24BCB9024(a1 + 104, v15);
          v17 = *(v16 + 16);
          v20 = *(v16 + 16);
          if (!a3[1] || ((*(*a3 + ((v17 >> 3) & 0x1FFFFFF8)) >> v17) & 1) == 0)
          {
            v26 = &v20;
            v18 = sub_24BD7EB94(a4, &v20);
            sub_24BCB4670((v18 + 5), &v21);
          }
        }

        v10 = v11;
        v9 = v23;
        ++v11;
      }

      while (v10 < (v24 - v23) >> 2);
    }

    if (v9)
    {
      v24 = v9;
      operator delete(v9);
    }
  }

  return v4 == 0;
}

void sub_24BD78454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD78478(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3 != *a2)
  {
    v8 = 0;
    v9 = 0;
    while (v3 != v4)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        if (v9 != v11)
        {
          v12 = *(v4 + 4 * v8);
          v13 = sub_24BCB9024(a1 + 104, (v4 + 4 * v10));
          v4 = *a2;
          v3 = a2[1];
          if (v12 == *(v13 + 8))
          {
            break;
          }
        }

        v10 = ++v11;
        if (v11 >= ((v3 - v4) >> 2))
        {
          goto LABEL_11;
        }
      }

      v8 = ++v9;
      if (v9 >= ((v3 - v4) >> 2))
      {
        return 1;
      }
    }

LABEL_11:
    *a3 = v9;
  }

  return 1;
}

uint64_t sub_24BD78540(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v14 = *sub_24BCB9024(a1 + 104, a3);
  v13 = *sub_24BCB9024(a1 + 104, a4);
  v12 = *(sub_24BCB9024(a1 + 104, a3) + 12);
  v11 = *(sub_24BCB9024(a1 + 104, a4) + 12);
  sub_24BCB9074(a1 + 104, &v14, &v13);
  sub_24BCB90C8((a1 + 104), &v14, &v11);
  sub_24BCB90C8((a1 + 104), &v13, &v12);
  v8 = sub_24BCB9024(a1 + 104, a3);
  *v8 = -1;
  *(v8 + 8) = -1;
  *(v8 + 16) = -1;
  v9 = sub_24BCB9024(a1 + 104, a4);
  *v9 = -1;
  *(v9 + 8) = -1;
  *(v9 + 16) = -1;
  *sub_24BCB9038(a1 + 104, a2) = -1;
  return 1;
}

uint64_t sub_24BD78640(void *a1, void *a2, void *a3)
{
  v6 = a1[13];
  v5 = a1[14];
  if ((a2[1] - *a2) >> 4 != (v5 - v6) >> 2)
  {
    return 0;
  }

  v18 = v3;
  v19 = v4;
  v10 = a1[19];
  v9 = a1[20];
  if ((a3[1] - *a3) >> 4 != (v9 - v10) >> 2)
  {
    return 0;
  }

  if (v9 != v10)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      sub_24BD3FAC8(a1, v12, (*a3 + 16 * v12));
      v12 = v13++;
    }

    while (v12 < (a1[20] - a1[19]) >> 2);
    v6 = a1[13];
    v5 = a1[14];
  }

  if (v5 != v6)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      sub_24BD3F304(a1, a3, v14, &v17);
      *(*a2 + 16 * v14) = v17;
      v14 = v15++;
    }

    while (v14 < (a1[14] - a1[13]) >> 2);
  }

  return 1;
}

BOOL sub_24BD78754(uint64_t a1, void *a2)
{
  v2 = a2[1] - *a2;
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = (a1 + 104);
  v6 = v4 - v3;
  if (v4 != v3 && v2 == v6)
  {
    v10 = 0;
    v11 = 0;
    v41 = vdupq_n_s32(0x3EAAAAABu);
    do
    {
      v45 = v11;
      sub_24BCB9454(v46, v5, &v45);
      v12 = sub_24BCB947C(v46);
      v45 = v12;
      v13 = 0.0;
      while (v12 != -1)
      {
        v14 = sub_24BC9ECE4(a1, *(a1 + 180), v12);
        if ((v15 & *v14) == 0)
        {
          v44 = *(sub_24BCB9024(v5, &v45) + 4);
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
            v43 = *(*(v18 + 40) + 16 * v10);
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v20);
            }

            v18 = v21;
          }

          else
          {
            v43 = *(*(v18 + 40) + 16 * v10);
          }

          v22 = sub_24BCB9024(v5, &v45);
          v42 = *(*(v18 + 40) + 16 * *(sub_24BCB9024(v5, v22) + 12));
          v23 = (*(a1 + 8) + 16 * *(a1 + 176));
          v25 = *v23;
          v24 = v23[1];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v24);
          }

          v26 = *(*(v25 + 40) + 16 * *(sub_24BCB9024(v5, &v44) + 12));
          v27 = vaddq_f32(v43, v42);
          v28 = vmulq_f32(vaddq_f32(v27, v26), v41);
          v29.i64[0] = 0x3F0000003F000000;
          v29.i64[1] = 0x3F0000003F000000;
          v30 = vmulq_f32(v27, v29);
          v31 = vsubq_f32(v28, v43);
          v32 = vsubq_f32(vmulq_f32(vaddq_f32(v43, v26), v29), v43);
          v33 = vzip2q_s32(vzip1q_s32(v31, vextq_s8(v31, v31, 0xCuLL)), v31);
          v34 = vuzp2q_s32(vextq_s8(v31, v31, 4uLL), v31);
          v35 = vmlsq_f32(vmulq_f32(v33, vuzp2q_s32(vextq_s8(v32, v32, 4uLL), v32)), vzip2q_s32(vzip1q_s32(v32, vextq_s8(v32, v32, 0xCuLL)), v32), v34);
          v36 = vmulq_f32(v35, v35);
          v36.i32[3] = 0;
          v37 = vsubq_f32(v30, v43);
          v38 = vmlsq_f32(vmulq_f32(vuzp2q_s32(vextq_s8(v37, v37, 4uLL), v37), v33), vzip2q_s32(vzip1q_s32(v37, vextq_s8(v37, v37, 0xCuLL)), v37), v34);
          v39 = vmulq_f32(v38, v38);
          v39.i32[3] = 0;
          v13 = v13 + (sqrtf(vaddv_f32(*&vpaddq_f32(v36, v36))) + sqrtf(vaddv_f32(*&vpaddq_f32(v39, v39)))) * 0.5;
        }

        v12 = sub_24BCB947C(v46);
        v45 = v12;
      }

      *(*a2 + 4 * v10) = v13;
      v10 = ++v11;
    }

    while (v11 < ((*(a1 + 112) - *(a1 + 104)) >> 2));
  }

  return v2 == v6;
}

uint64_t sub_24BD789F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a4[1] - *a4 <= 0x18FuLL)
  {
    sub_24BD51FA4();
  }

  v4 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BD7939C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  v42 = *(v40 - 152);
  if (v42)
  {
    *(v40 - 144) = v42;
    operator delete(v42);
  }

  if (a39)
  {
    operator delete(a39);
  }

  v43 = *(v40 - 224);
  if (v43)
  {
    operator delete(v43);
  }

  if (a32)
  {
    operator delete(a32);
  }

  v44 = *(v40 - 192);
  if (v44)
  {
    operator delete(v44);
  }

  v45 = *(v40 - 160);
  if (v45)
  {
    sub_24BC9EC78(v45);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD79520(uint64_t a1)
{
  if (!sub_24BD7CDF0(a1) || !sub_24BD7CEE8(a1))
  {
    return 0;
  }

  return sub_24BD7CFE0(a1);
}

uint64_t sub_24BD79578(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BD80648(a1, a2);
  }

  else
  {
    sub_24BD805F4(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24BD795B8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BD807CC(a1, a2);
  }

  else
  {
    sub_24BD80778(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24BD795F8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BD80950(a1, a2);
  }

  else
  {
    sub_24BD808FC(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24BD79638(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BD80AD4(a1, a2);
  }

  else
  {
    sub_24BD80A80(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24BD79678(uint64_t a1, float *a2, _BYTE *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v12 = sub_24BD74DD4(a4, a5);
  v13 = *a3;
  if (*a3)
  {
    v14 = 0;
    do
    {
      if (v12)
      {
        v12 = sub_24BD75B14(a1, a4, a5);
        v13 = *a3;
      }

      else
      {
        v12 = 0;
      }

      ++v14;
    }

    while (v14 < v13);
  }

  v15 = *(a1 + 8) + 16 * *(a1 + 176);
  v17 = *v15;
  v16 = *(v15 + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v16);
  }

  result = (v12 & 1) != 0 && sub_24BD7520C(v17, a4, a6, *a2);
  v19 = *a3;
  if (*a3)
  {
    v20 = 0;
    do
    {
      if (result)
      {
        result = sub_24BD760B8(a1, a4, a5, a6, *a2);
        v19 = *a3;
      }

      else
      {
        result = 0;
      }

      ++v20;
    }

    while (v20 < v19);
  }

  return result;
}

uint64_t sub_24BD79794(uint64_t a1, void *a2, void *a3, void *a4, float *a5, _BYTE *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = *(a1 + 112) - *(a1 + 104);
  v17 = a2[1] - *a2 == v15 && (v16 = v15 >> 2, v16 == (a8[1] - *a8) >> 4) && v16 == (a9[1] - *a9) >> 4;
  v18 = (*(a1 + 8) + 16 * *(a1 + 176));
  v19 = v18[1];
  v37 = *v18;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v19);
  }

  v36 = a6;
  v20 = *a8;
  if (a8[1] != *a8)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v23 = *(*a2 + 4 * v21);
      if (v23 == -1)
      {
        if ((v17 & 1) != 0 && sub_24BD74CCC((*a7 + 16 * v21), (v20 + 16 * v21)))
        {
          v17 = sub_24BD750E0((*(v37 + 40) + 16 * v21), (*a7 + 16 * v21), (*a9 + 16 * v21), *a5);
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v24 = *(*a3 + 16 * v23);
        v25 = *(*a7 + 16 * v21);
        v26 = vmulq_f32(v24, v25);
        v26.i32[3] = 0;
        *(v20 + 16 * v21) = vsubq_f32(v24, vmulq_n_f32(v25, vaddv_f32(*&vpaddq_f32(v26, v26))));
        v27 = *(*a4 + 16 * *(*a2 + 4 * v21));
        v28 = (*(a1 + 8) + 16 * *(a1 + 176));
        v30 = *v28;
        v29 = v28[1];
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v40 = v27;
          v41 = v25;
          sub_24BC9EC78(v29);
          v27 = v40;
          v25 = v41;
        }

        v31 = vmulq_f32(v25, vsubq_f32(v27, *(*(v30 + 40) + 16 * v21)));
        v31.i32[3] = 0;
        *(*a9 + 16 * v21) = vsubq_f32(v27, vmulq_n_f32(v25, vaddv_f32(*&vpaddq_f32(v31, v31))));
      }

      v21 = v22;
      v20 = *a8;
      ++v22;
    }

    while (v21 < (a8[1] - *a8) >> 4);
  }

  v32 = *v36;
  if (*v36)
  {
    v33 = 0;
    do
    {
      if (v17)
      {
        v17 = sub_24BD75B14(a1, a7, a8);
        v32 = *v36;
      }

      else
      {
        v17 = 0;
      }

      ++v33;
    }

    while (v33 < v32);
    if (v32)
    {
      for (i = 0; i < v32; ++i)
      {
        if (v17)
        {
          v17 = sub_24BD760B8(a1, a7, a8, a9, *a5);
          v32 = *v36;
        }

        else
        {
          v17 = 0;
        }
      }
    }
  }

  return v17 & 1;
}

uint64_t sub_24BD79A14(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_24BD74DD4(a3, a4);
  v9 = *a2;
  if (*a2)
  {
    v10 = 0;
    do
    {
      if (result)
      {
        result = sub_24BD75B14(a1, a3, a4);
        v9 = *a2;
      }

      else
      {
        result = 0;
      }

      ++v10;
    }

    while (v10 < v9);
  }

  return result;
}

uint64_t sub_24BD79A94(uint64_t a1, void *a2, void *a3, _BYTE *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = a2[1] - *a2;
  if (v12 == *(a1 + 112) - *(a1 + 104))
  {
    v13 = *a6;
    v14 = a6[1];
    v15 = (v14 - *a6) >> 4 == v12 >> 2;
  }

  else
  {
    v15 = 0;
    v13 = *a6;
    v14 = a6[1];
  }

  if (v14 != v13)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = *(*a2 + 4 * v16);
      if (v18 == -1)
      {
        if (v15)
        {
          v15 = sub_24BD74CCC((*a5 + 16 * v16), (v13 + 16 * v16));
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v19 = *(*a3 + 16 * v18);
        v20 = *(*a5 + 16 * v16);
        v21 = vmulq_f32(v19, v20);
        v21.i32[3] = 0;
        *(v13 + 16 * v16) = vsubq_f32(v19, vmulq_n_f32(v20, vaddv_f32(*&vpaddq_f32(v21, v21))));
      }

      v16 = v17;
      v13 = *a6;
      ++v17;
    }

    while (v16 < (a6[1] - *a6) >> 4);
  }

  v22 = *a4;
  if (*a4)
  {
    v23 = 0;
    do
    {
      if (v15)
      {
        v15 = sub_24BD75B14(a1, a5, a6);
        v22 = *a4;
      }

      else
      {
        v15 = 0;
      }

      ++v23;
    }

    while (v23 < v22);
  }

  return v15 & 1;
}

void sub_24BD79BD8(int32x4_t *a1@<X0>, float32x4_t *a2@<X1>, int32x4_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(*a1, vextq_s8(*a1, *a1, 0xCuLL)), *a1), vuzp2q_s32(vextq_s8(v6, v6, 4uLL), *a3)), vzip2q_s32(vzip1q_s32(*a3, vextq_s8(v6, v6, 0xCuLL)), *a3), vuzp2q_s32(vextq_s8(*a1, *a1, 4uLL), *a1));
  v19[0] = *a3;
  v19[1] = v7;
  v19[2] = vnegq_f32(v6);
  v19[3] = vnegq_f32(v7);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_24BD80C04(&v16, v19, v20, 4uLL);
  v8 = v16;
  if (v17 == v16)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = v17 - v16;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = -99.99;
    do
    {
      v13 = vmulq_f32(v16[v9], *a2);
      v13.i32[3] = 0;
      v14 = vaddv_f32(*&vpaddq_f32(v13, v13));
      if (v14 > v12)
      {
        v10 = v9;
        v12 = v14;
      }

      ++v9;
    }

    while (v11 != v9);
  }

  *a4 = v16[v10];
  v17 = v8;
  operator delete(v8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BD79D0C(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, __int128 **a6, void *a7, __int128 **a8, double a9, double a10, char a11)
{
  sub_24BCA1A48(v53, (*(a1 + 112) - *(a1 + 104)) >> 2);
  v21 = *(a1 + 112) - *(a1 + 104);
  v22 = v21 >> 2;
  if (v21)
  {
    v23 = 0;
    v24 = *a4;
    v25 = *a5;
    v26 = v53[0];
    do
    {
      v26[v23] = vabdd_f64(*(v24 + 8 * v23), *(v25 + 8 * v23));
      ++v23;
    }

    while (v22 > v23);
  }

  sub_24BC95764(__p, v22);
  v28 = *(a1 + 112) - *(a1 + 104);
  v29 = v28 >> 2;
  if (v28)
  {
    v30 = 0;
    v31 = v53[0];
    v32 = __p[0];
    do
    {
      v33 = log1p(v31[v30]);
      v27.n128_f64[0] = 1.0 / (exp(-v33) + 1.0) + -0.4;
      v27.n128_f32[0] = v27.n128_f64[0];
      v32[v30++] = v27.n128_u32[0];
    }

    while (v29 > v30);
  }

  if (a11)
  {
    sub_24BC97D30(a8, v29);
    if (*(a1 + 112) != *(a1 + 104))
    {
      v34 = 0;
      v35 = a9;
      v50 = v35;
      v36 = a10;
      v49 = v36;
      v37 = 1;
      do
      {
        sub_24BD79BD8((*a3 + 16 * v34), &(*a6)[v34], (*a7 + 16 * v34), &v51);
        v38 = log(*(v53[0] + v34) / 10.0 + 1.0);
        v39 = 1.0 / (exp(-v38) + 1.0) + -0.5;
        v40 = v39;
        *&v39 = 0.5 - v39;
        (*a8)[v34] = vaddq_f32(vmulq_n_f32(vmulq_n_f32((*a6)[v34], v40), v50), vmulq_n_f32(vmulq_n_f32(v51, *&v39), v49));
        v27 = (*a8)[v34];
        v41 = vmulq_f32(v27, v27);
        v41.i32[3] = 0;
        v42 = vpaddq_f32(v41, v41);
        v43 = vpaddq_f32(v42, v42);
        v44 = xmmword_24BFBD1C0;
        if (v43.f32[0] > 0.0)
        {
          v44 = vdivq_f32(v27, vsqrtq_f32(v43));
        }

        (*a8)[v34] = v44;
        v34 = v37++;
      }

      while (v34 < (*(a1 + 112) - *(a1 + 104)) >> 2);
    }
  }

  else if (a8 != a6)
  {
    sub_24BCA1AC0(a8, *a6, a6[1], a6[1] - *a6);
  }

  v45 = *a2;
  if (*a2)
  {
    v46 = 0;
    LOBYTE(v47) = 1;
    do
    {
      if (v47)
      {
        v47 = sub_24BD75CC8(a1, a3, __p, a8, v27);
        v45 = *a2;
      }

      else
      {
        v47 = 0;
      }

      ++v46;
    }

    while (v46 < v45);
  }

  else
  {
    v47 = 1;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }

  return v47;
}

void sub_24BD79FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
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

uint64_t sub_24BD7A028(std::string *a1, uint64_t a2, void *a3, void *a4)
{
  sub_24BCB35B4(&v63, a2);
  v63 = &unk_285F941E8;
  v62 = -1;
  sub_24BC836D4(&__p, off_27F078F90[0]);
  v60 = 0;
  v61 = 0;
  v8 = sub_24BCB6470(&v64, &v60, &__p);
  v62 = v8;
  if ((v56[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (v8 == -1)
  {
    sub_24BC836D4(&__p, off_27F078F90[0]);
    sub_24BCB346C(&v63);
  }

  sub_24BCA18B0(&v60, 4uLL);
  sub_24BCA18B0(v59, (*(a2 + 112) - *(a2 + 104)) >> 2);
  v9 = v66;
  if (v66 == v65)
  {
    v27 = (v66 - v65) >> 2;
    v26 = v66;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = vpaddq_f32(xmmword_24BFED040, xmmword_24BFED040).u64[0];
    *v12.i32 = sqrtf(vaddv_f32(v12));
    v13 = vdivq_f32(xmmword_24BFED040, vdupq_lane_s32(v12, 0));
    v14 = vzip2q_s32(vzip1q_s32(v13, vextq_s8(v13, v13, 0xCuLL)), v13);
    v15 = vnegq_f32(vuzp2q_s32(vextq_s8(v13, v13, 4uLL), v13));
    do
    {
      v16 = 0;
      v17 = *(*a3 + 16 * v10);
      v18 = *(*a4 + 16 * v10);
      v19 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v17, vextq_s8(v17, v17, 0xCuLL)), v17), vuzp2q_s32(vextq_s8(v18, v18, 4uLL), v18)), vzip2q_s32(vzip1q_s32(v18, vextq_s8(v18, v18, 0xCuLL)), v18), vuzp2q_s32(vextq_s8(v17, v17, 4uLL), v17));
      *v60 = v17;
      v20 = v60;
      *(v60 + 1) = v19;
      v20[2] = vnegq_f32(v17);
      v20[3] = vnegq_f32(v19);
      v21 = *(*a4 + 16 * v10);
      v23 = vuzp2q_s32(vextq_s8(v21, v21, 4uLL), v21);
      v22 = vmlaq_f32(vmulq_f32(v23, v14), vzip2q_s32(vzip1q_s32(v21, vextq_s8(v21, v21, 0xCuLL)), v21), v15);
      v23.i32[0] = -2.0;
      do
      {
        v24 = vmulq_f32(v22, v20[v16]);
        v24.i32[3] = 0;
        v25 = vpaddq_f32(v24, v24);
        v25.f32[0] = vaddv_f32(*v25.f32);
        v17 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, v23), 0), vmulq_n_f32(v22, v25.f32[0]), v17);
        if (v25.f32[0] > v23.f32[0])
        {
          v23.f32[0] = v25.f32[0];
        }

        ++v16;
      }

      while (v16 != 4);
      *(v59[0] + v10) = v17;
      v9 = v65;
      v26 = v66;
      v27 = (v66 - v65) >> 2;
      v10 = ++v11;
    }

    while (v27 > v11);
  }

  v28.i64[0] = 0x80000000800000;
  v28.i64[1] = 0x80000000800000;
  v29 = vnegq_f32(v28);
  if (v27)
  {
    v30 = 1;
    v31 = v59[0];
    do
    {
      v32 = *v31++;
      v29 = vminq_f32(v29, v32);
      v28 = vmaxq_f32(v28, v32);
    }

    while (v27 > v30++);
  }

  if (v26 != v9)
  {
    v34 = 0;
    v49 = vsubq_f32(v28, v29);
    v50 = v29;
    v35 = 1;
    do
    {
      v36 = *(v59[0] + v34);
      v37 = v64;
      v38 = &v64[2 * v62];
      v40 = *v38;
      v39 = v38[1];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        v51 = v36;
        sub_24BC9EC78(v39);
        v29 = v50;
        v36 = v51;
        v37 = v64;
      }

      v41 = vdivq_f32(vsubq_f32(v36, v29), v49);
      *(*(v40 + 40) + 16 * v34) = v41.i32[0];
      v42 = &v37[2 * v62];
      v44 = *v42;
      v43 = v42[1];
      v52 = v41;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v43);
        v29 = v50;
        v41 = v52;
        v37 = v64;
      }

      *(*(v44 + 40) + 16 * v34 + 4) = v41.i32[1];
      v45 = &v37[2 * v62];
      v47 = *v45;
      v46 = v45[1];
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v46);
        v29 = v50;
        v41.i32[2] = v52.i32[2];
      }

      *(*(v47 + 40) + 16 * v34 + 8) = v41.i32[2];
      v34 = v35++;
    }

    while (v34 < (v66 - v65) >> 2);
  }

  LOBYTE(__p) = 0;
  HIDWORD(__p) = 1;
  v55 = 0;
  sub_24BD3A2A0(v56);
  LOBYTE(v55) = 1;
  sub_24BCCA6F0(&v53, a1);
  sub_24BD37048(&v53, &v63, &__p);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  sub_24BCC88D8(v58, v58[1]);
  sub_24BCC89B4(v56, v57);
  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  sub_24BCD528C(&v63);
  return 1;
}

void sub_24BD7A41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_24BCD528C(&a42);
  _Unwind_Resume(a1);
}

BOOL sub_24BD7A4A8(uint64_t *a1, void *a2, void *a3, int *a4)
{
  v32[19] = *MEMORY[0x277D85DE8];
  sub_24BD7A898(&v30, a1);
  v28 = *&v31[*(v30 - 24) + 24] & 5;
  if (!v28 && a2[1] != *a2)
  {
    v7 = 0;
    v8 = 1;
    v9 = MEMORY[0x277D82680];
    v10 = 1;
    do
    {
      v11 = sub_24BC95264(&v30, "v ", 2);
      v12 = sub_24BD36FE4(v11, (*a2 + 16 * v7));
      v13 = sub_24BC95264(v12, " ", 1);
      v14 = sub_24BD36FE4(v13, a4);
      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v15 = std::locale::use_facet(&v29, v9);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
      v16 = sub_24BC95264(&v30, "v ", 2);
      v17 = sub_24BD36FE4(v16, (*a3 + 16 * v7));
      v18 = sub_24BC95264(v17, " ", 1);
      v19 = sub_24BD36FE4(v18, a4);
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v20 = std::locale::use_facet(&v29, v9);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
      v21 = sub_24BC95264(&v30, "l ", 2);
      v22 = MEMORY[0x24C2543D0](v21, v8);
      v23 = sub_24BC95264(v22, " ", 1);
      v24 = MEMORY[0x24C2543D0](v23, (v8 + 1));
      std::ios_base::getloc((v24 + *(*v24 - 24)));
      v25 = std::locale::use_facet(&v29, v9);
      (v25->__vftable[2].~facet_0)(v25, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
      v7 = v10++;
      v8 = (v8 + 2);
    }

    while (v7 < (a2[1] - *a2) >> 4);
  }

  v30 = *MEMORY[0x277D82810];
  *&v31[*(v30 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C2542E0](v31);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v32);
  v26 = *MEMORY[0x277D85DE8];
  return v28 == 0;
}

uint64_t *sub_24BD7A898(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x24C2542D0](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_24BD7AA2C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD7AA64(std::string *a1, uint64_t a2, float32x4_t **a3)
{
  sub_24BCB35B4(&v38, a2);
  v38 = &unk_285F941E8;
  sub_24BC836D4(&__p, off_27F078F90[0]);
  *&v31.__r_.__value_.__l.__data_ = 0uLL;
  v5 = sub_24BCB6470(&v39, &v31, &__p);
  v37 = v5;
  if ((v34[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (v5 == -1)
  {
    sub_24BC836D4(&__p, off_27F078F90[0]);
    sub_24BCB346C(&v38);
  }

  if (v41 == v40)
  {
    v6.i64[0] = 0x80000000800000;
    v6.i64[1] = 0x80000000800000;
    v7 = vnegq_f32(v6);
  }

  else
  {
    v6.i64[0] = 0x80000000800000;
    v6.i64[1] = 0x80000000800000;
    v7 = vnegq_f32(v6);
    v8 = *a3;
    v9 = 1;
    do
    {
      v10 = *v8++;
      v7 = vminq_f32(v7, v10);
      v6 = vmaxq_f32(v6, v10);
    }

    while ((v41 - v40) >> 2 > v9++);
  }

  if (v41 != v40)
  {
    v12 = 0;
    v27 = vsubq_f32(v6, v7);
    v28 = v7;
    v13 = 1;
    do
    {
      v14 = (*a3)[v12];
      v15 = v39;
      v16 = &v39[2 * v37];
      v18 = *v16;
      v17 = v16[1];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v29 = v14;
        sub_24BC9EC78(v17);
        v7 = v28;
        v14 = v29;
        v15 = v39;
      }

      v19 = vdivq_f32(vsubq_f32(v14, v7), v27);
      *(*(v18 + 40) + 16 * v12) = v19.i32[0];
      v20 = &v15[2 * v37];
      v22 = *v20;
      v21 = v20[1];
      v30 = v19;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v21);
        v7 = v28;
        v19 = v30;
        v15 = v39;
      }

      *(*(v22 + 40) + 16 * v12 + 4) = v19.i32[1];
      v23 = &v15[2 * v37];
      v25 = *v23;
      v24 = v23[1];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v24);
        v7 = v28;
        v19.i32[2] = v30.i32[2];
      }

      *(*(v25 + 40) + 16 * v12 + 8) = v19.i32[2];
      v12 = v13++;
    }

    while (v12 < (v41 - v40) >> 2);
  }

  LOBYTE(__p) = 0;
  HIDWORD(__p) = 1;
  v33 = 0;
  sub_24BD3A2A0(v34);
  LOBYTE(v33) = 1;
  sub_24BCCA6F0(&v31, a1);
  sub_24BD37048(&v31, &v38, &__p);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  sub_24BCC88D8(v36, v36[1]);
  sub_24BCC89B4(v34, v35);
  sub_24BCD528C(&v38);
  return 0;
}

void sub_24BD7ACE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_24BCD528C(&a34);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD7AD48(uint64_t *a1, void **a2, void **a3)
{
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v6 = a2[1] - *a2;
  v8 = *a1;
  v7 = a1[1];
  v29 = v6 >> 4;
  v30 = sub_24BD7B1E8(a1, v6 >> 4, &v49, &v46);
  if (v30)
  {
    v9 = v7 - v8;
    v10 = (v9 >> 4);
    v43 = 0u;
    v44 = 0u;
    v45 = 1065353216;
    sub_24BCA3EB4(&v43, v10);
    v11 = v9 >> 4;
    for (LODWORD(v41[0]) = 0; LODWORD(v41[0]) < v11; ++LODWORD(v41[0]))
    {
      sub_24BD46ED0(&v43, v41);
    }

    v42 = 0u;
    memset(v41, 0, sizeof(v41));
    memset(v39, 0, sizeof(v39));
    v40 = 1065353216;
    sub_24BCA3EB4(v39, (v6 >> 4));
    sub_24BD80C78(v37, v10);
    sub_24BCA18B0(v35, (v6 >> 4));
    sub_24BCA18B0(__p, (v6 >> 4));
    if (*(&v44 + 1))
    {
      v12 = 0;
      v13 = 0;
      v14 = *(&v42 + 1);
      do
      {
        if (v14 || (v15 = v44, sub_24BCA09A8(v41, (v44 + 16)), sub_24BD80CF0(&v43, v15), (v14 = *(&v42 + 1)) != 0))
        {
          do
          {
            v16 = *(*(v41[1] + ((v42 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v42 & 0x3FF));
            *&v42 = v42 + 1;
            *(&v42 + 1) = v14 - 1;
            if (v42 >= 0x800)
            {
              operator delete(*v41[1]);
              v41[1] += 8;
              *&v42 = v42 - 1024;
            }

            v17 = 16 * v12;
            v31 = v12 + 1;
            v18 = 4 * (4 * v16);
            v19 = 16 * v16;
            v20 = 4;
            v21 = v13;
            do
            {
              v32 = *(*a1 + v19);
              v22 = sub_24BD80E70(v39, &v32);
              if (v22)
              {
                v13 = v21;
                LODWORD(v21) = *(v22 + 5);
              }

              else
              {
                v52[0] = &v32;
                v13 = (v21 + 1);
                *(sub_24BD80F24(v39, &v32) + 5) = v21;
                v23 = v32;
                *(v35[0] + v21) = *(*a2 + v32);
                *(__p[0] + v21) = *(*a3 + v23);
              }

              *(v37[0] + v17) = v21;
              v24 = *&v46[v18];
              if (v24 != -1)
              {
                LODWORD(v52[0]) = v24 >> 2;
                if (sub_24BD80E70(&v43, v52))
                {
                  sub_24BCA09A8(v41, v52);
                  sub_24BD81158(&v43, v52);
                }
              }

              v18 += 4;
              v17 += 4;
              v19 += 4;
              v21 = v13;
              --v20;
            }

            while (v20);
            v14 = *(&v42 + 1);
            v12 = v31;
          }

          while (*(&v42 + 1));
        }

        v14 = 0;
      }

      while (*(&v44 + 1));
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v25 = *a1;
    if (*a1)
    {
      a1[1] = v25;
      operator delete(v25);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *v37;
    a1[2] = v38;
    v37[1] = 0;
    v38 = 0;
    v37[0] = 0;
    v26 = *a2;
    if (*a2)
    {
      a2[1] = v26;
      operator delete(v26);
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    *a2 = *v35;
    a2[2] = v36;
    v35[1] = 0;
    v36 = 0;
    v35[0] = 0;
    v27 = *a3;
    if (*a3)
    {
      a3[1] = v27;
      operator delete(v27);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    *a3 = *__p;
    a3[2] = v34;
    __p[1] = 0;
    v34 = 0;
    __p[0] = 0;
    if (v13 != v29)
    {
      sub_24BC97D30(a2, v13);
      sub_24BC97D30(a3, v13);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    if (v35[0])
    {
      v35[1] = v35[0];
      operator delete(v35[0]);
    }

    if (v37[0])
    {
      v37[1] = v37[0];
      operator delete(v37[0]);
    }

    sub_24BCA3B84(v39);
    sub_24BCA102C(v41);
    sub_24BCA3B84(&v43);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  return v30;
}

void sub_24BD7B138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a21)
  {
    operator delete(a21);
  }

  sub_24BCA3B84(&a25);
  sub_24BCA102C(&a31);
  sub_24BCA3B84(v32 - 208);
  v34 = v31[12];
  if (v34)
  {
    v31[13] = v34;
    operator delete(v34);
  }

  v35 = v31[15];
  if (v35)
  {
    v31[16] = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BD7B1E8(uint64_t *a1, unsigned int a2, void *a3, void *a4)
{
  a3[1] = *a3;
  sub_24BD7B3FC(a3, a2, &dword_24BFED064);
  sub_24BD278FC(__p, (a1[1] - *a1) >> 2);
  v8 = *a1;
  v9 = a1[1] - *a1;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    while (2)
    {
      v12 = 0;
      v13 = __p[0];
      v14 = *a3;
      v15 = v8 + 16 * v10;
      do
      {
        v16 = *(v15 + 4 * v12);
        v17 = v12 + 1;
        v18 = *(v15 + 4 * ((v12 + 1) & 3));
        if (v16 >= a2 || v18 >= a2)
        {
          v44 = 0;
          goto LABEL_32;
        }

        if (v16 != v18)
        {
          v20 = v12 + 4 * v11;
          v21 = &v13[8 * v20];
          *v21 = v18;
          v21[1] = -1;
          v22 = (v14 + 4 * v16);
          for (i = *v22; i != -1; i = v25)
          {
            v24 = &v13[8 * i];
            v25 = *(v24 + 1);
            v22 = v24 + 4;
          }

          *v22 = v20;
        }

        v12 = v17;
      }

      while (v17 != 4);
      v10 = ++v11;
      if (v9 >> 4 > v11)
      {
        continue;
      }

      break;
    }
  }

  a4[1] = *a4;
  sub_24BD7B3FC(a4, v9 >> 2, &dword_24BFED064);
  v26 = *a1;
  v27 = a1[1];
  v28 = v27 - *a1;
  if (v27 != *a1)
  {
    v29 = 0;
    v30 = v28 >> 4;
    do
    {
      v31 = 0;
      v32 = *a3;
      v33 = __p[0];
      v34 = *a4;
      v35 = v26 + 16 * v29;
      do
      {
        v36 = *(v35 + 4 * v31);
        v37 = v31 + 1;
        v38 = *(v35 + 4 * ((v31 + 1) & 3));
        if (v36 != v38)
        {
          v39 = *(v32 + 4 * v38);
          if (v39 != -1)
          {
            v40 = v31 + 4 * (v29 & 0x3FFFFFFF);
            v41 = 0xFFFFFFFFLL;
            while (1)
            {
              v42 = &v33[8 * v39];
              if (*v42 == v36)
              {
                v43 = v41 == 0xFFFFFFFF;
                v41 = v39;
                if (!v43)
                {
                  break;
                }
              }

              v39 = *(v42 + 1);
              if (v39 == -1)
              {
                if (v41 != 0xFFFFFFFF && v40 < v41)
                {
                  *(v34 + 4 * v40) = v41;
                  *(v34 + 4 * v41) = v40;
                }

                break;
              }
            }
          }
        }

        v31 = v37;
      }

      while (v37 != 4);
      ++v29;
    }

    while (v30 > v29);
  }

  v44 = 1;
LABEL_32:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v44;
}

void sub_24BD7B3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD7B3FC(void *a1, unint64_t a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_24BD81190(a1, a2 - v3, a3);
  }
}

uint64_t sub_24BD7B42C(uint64_t *a1, unsigned int ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = xmmword_24BFBD1C0;
    do
    {
      v6 = *v2;
      v7 = v2[1] - *v2;
      v8 = v7 >> 2;
      if ((v7 >> 2))
      {
        v9 = 0;
        v10 = 0;
        v11 = *a1;
        v12 = (v7 >> 2);
        v13 = 3.4028e38;
        do
        {
          if (v12 - 1 == v9)
          {
            v14 = 0;
          }

          else
          {
            v14 = v9 + 1;
          }

          v15 = *(v11 + 16 * v6[v9]);
          v16 = vsubq_f32(*(v11 + 16 * v6[(v8 - 1 + v9) % v8]), v15);
          v17 = vmulq_f32(v16, v16);
          v17.i32[3] = 0;
          v18 = vpaddq_f32(v17, v17);
          v19 = vpaddq_f32(v18, v18);
          v20 = v5;
          if (v19.f32[0] > 0.0)
          {
            v20 = vdivq_f32(v16, vsqrtq_f32(v19));
          }

          v21 = vsubq_f32(*(v11 + 16 * v6[v14]), v15);
          v22 = vmulq_f32(v21, v21);
          v22.i32[3] = 0;
          v23 = vpaddq_f32(v22, v22);
          v24 = vpaddq_f32(v23, v23);
          v25 = v5;
          if (v24.f32[0] > 0.0)
          {
            v25 = vdivq_f32(v21, vsqrtq_f32(v24));
          }

          v26 = vmulq_f32(v20, v25);
          v26.i32[3] = 0;
          v27 = vaddv_f32(*&vpaddq_f32(v26, v26));
          if (v13 > v27)
          {
            v10 = v9;
          }

          v28 = v9 + 1;
          if (v13 > v27)
          {
            v13 = v27;
          }

          ++v9;
        }

        while (v12 != v28);
        sub_24BCA123C(&v34, v12);
        v29 = *v2;
        v30 = v34;
        do
        {
          *v30++ = v29[v10 % v8];
          ++v10;
          --v12;
        }

        while (v12);
      }

      else
      {
        sub_24BCA123C(&v34, 0);
      }

      v31 = *v2;
      *v2 = v34;
      v2[1] = v35;
      v32 = v2[2];
      v2[2] = v36;
      v34 = v31;
      v36 = v32;
      if (v31)
      {
        v35 = v31;
        operator delete(v31);
      }

      v2 += 3;
      v5 = xmmword_24BFBD1C0;
    }

    while (v2 != v3);
  }

  return 1;
}

BOOL sub_24BD7B5DC(uint64_t *a1, void *a2, uint64_t *a3)
{
  a2[1] = *a2;
  sub_24BC8EED8(a3);
  v44[0] = 0;
  v44[1] = 0;
  v43 = v44;
  v5 = *a1;
  if (a1[1] == *a1)
  {
    v7 = 0;
LABEL_44:
    v34 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) == v7;
    goto LABEL_45;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = (v5 + 16 * v6);
    if (v9[2] == v9[3])
    {
      __src = v9 + 2;
      v10 = sub_24BD81438(&v43, v9 + 2);
      *(v10 + 10) = v8;
      v11 = (*a1 + 16 * v6);
      v12 = v11[1];
      __src = v11;
      ++v7;
      *(sub_24BD8151C((v10 + 6), v11) + 8) = v12;
    }

    else
    {
      sub_24BD7B90C(a2, v9);
    }

    v5 = *a1;
    v6 = ++v8;
  }

  while (v8 < ((a1[1] - *a1) >> 4));
  v13 = v43;
  if (v43 == v44)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = *(v13[6] + 28);
    __src = 0;
    v41 = 0;
    v42 = 0;
    v17 = v13 + 7;
    v18 = v16;
    while (1)
    {
      if (v14 >= v42)
      {
        v19 = __src;
        v20 = v14 - __src;
        v21 = (v14 - __src) >> 2;
        v22 = v21 + 1;
        if ((v21 + 1) >> 62)
        {
          sub_24BC8E01C();
        }

        v23 = v42 - __src;
        if ((v42 - __src) >> 1 > v22)
        {
          v22 = v23 >> 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v24 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          sub_24BC92E0C(&__src, v24);
        }

        v25 = (v14 - __src) >> 2;
        v26 = (4 * v21);
        v27 = (4 * v21 - 4 * v25);
        *v26 = v18;
        v14 = (v26 + 1);
        memcpy(v27, v19, v20);
        v28 = __src;
        __src = v27;
        v41 = v14;
        v42 = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v14 = v18;
        v14 += 4;
      }

      v41 = v14;
      v29 = *v17;
      if (!*v17)
      {
        break;
      }

      v30 = v13 + 7;
      do
      {
        v31 = *(v29 + 28);
        v32 = v31 >= v18;
        v33 = v31 < v18;
        if (v32)
        {
          v30 = v29;
        }

        v29 = *(v29 + 8 * v33);
      }

      while (v29);
      if (v30 == v17 || v18 < *(v30 + 7))
      {
        break;
      }

      v18 = *(v30 + 8);
      if (v18 != v16)
      {
        v15 = (v15 + 1);
        if (v13[8] != v15)
        {
          continue;
        }
      }

      sub_24BD3CAF0(a3, &__src);
      v34 = 1;
      goto LABEL_33;
    }

    v34 = 0;
LABEL_33:
    if (__src)
    {
      v41 = __src;
      operator delete(__src);
    }

    if (!v34)
    {
      break;
    }

    v35 = v13[1];
    if (v35)
    {
      do
      {
        v36 = v35;
        v35 = *v35;
      }

      while (v35);
    }

    else
    {
      do
      {
        v36 = v13[2];
        v37 = *v36 == v13;
        v13 = v36;
      }

      while (!v37);
    }

    v13 = v36;
    if (v36 == v44)
    {
      goto LABEL_44;
    }
  }

LABEL_45:
  sub_24BD813D8(&v43, v44[0]);
  return v34;
}

void sub_24BD7B8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BD813D8(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD7B90C(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BD815EC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    v3[3] = a2[3];
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

BOOL sub_24BD7B96C(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v34[19] = *MEMORY[0x277D85DE8];
  sub_24BD7A898(&v32, a1);
  v30 = *&v33[*(v32 - 24) + 24] & 5;
  if (!v30)
  {
    if (a4[1] != *a4)
    {
      v7 = 0;
      v8 = 1;
      v9 = MEMORY[0x277D82680];
      do
      {
        v10 = sub_24BC95264(&v32, "v ", 2);
        v11 = sub_24BD36FE4(v10, (*a4 + 16 * v7));
        std::ios_base::getloc((v11 + *(*v11 - 24)));
        v12 = std::locale::use_facet(&v31, v9);
        (v12->__vftable[2].~facet_0)(v12, 10);
        std::locale::~locale(&v31);
        std::ostream::put();
        std::ostream::flush();
        v7 = v8++;
      }

      while (v7 < (a4[1] - *a4) >> 4);
    }

    if (a2[1] != *a2)
    {
      LODWORD(v13) = 0;
      v14 = MEMORY[0x277D82680];
      do
      {
        sub_24BC95264(&v32, "f ", 2);
        v15 = 16 * v13;
        v16 = 4;
        do
        {
          v17 = MEMORY[0x24C2543D0](&v32, (*(*a2 + v15) + 1));
          sub_24BC95264(v17, " ", 1);
          v15 += 4;
          --v16;
        }

        while (v16);
        std::ios_base::getloc(&v33[*(v32 - 24) - 8]);
        v18 = std::locale::use_facet(&v31, v14);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(&v31);
        std::ostream::put();
        std::ostream::flush();
        v13 = (v13 + 1);
      }

      while (v13 < (a2[1] - *a2) >> 4);
    }

    if (a3[1] != *a3)
    {
      v19 = 0;
      v20 = 0;
      v21 = MEMORY[0x277D82680];
      do
      {
        sub_24BC95264(&v32, "f ", 2);
        v22 = (*a3 + 24 * v19);
        v23 = *v22;
        if (v22[1] != *v22)
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = MEMORY[0x24C2543D0](&v32, (*(v23 + 4 * v24) + 1));
            sub_24BC95264(v26, " ", 1);
            v24 = v25;
            v23 = *(*a3 + 24 * v19);
            ++v25;
          }

          while (v24 < (*(*a3 + 24 * v19 + 8) - v23) >> 2);
        }

        std::ios_base::getloc(&v33[*(v32 - 24) - 8]);
        v27 = std::locale::use_facet(&v31, v21);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(&v31);
        std::ostream::put();
        std::ostream::flush();
        v19 = ++v20;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v20);
    }
  }

  v32 = *MEMORY[0x277D82810];
  *&v33[*(v32 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C2542E0](v33);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v34);
  v28 = *MEMORY[0x277D85DE8];
  return v30 == 0;
}

void sub_24BD7BE2C()
{
  v0 = *MEMORY[0x277D85DE8];
  std::system_category();
  sub_24BD51FA4();
}

void sub_24BD7C8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (*(v27 - 113) < 0)
  {
    operator delete(v26[41]);
  }

  sub_24BCBBEE8(&STACK[0x370]);
  if (SLOBYTE(STACK[0x627]) < 0)
  {
    operator delete(*v26);
  }

  if (a24)
  {
    sub_24BC9EC78(a24);
  }

  if (a26)
  {
    sub_24BC9EC78(a26);
  }

  _Unwind_Resume(a1);
}

void *sub_24BD7CAD8(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_24BD2A4E4(v5, a2);
  sub_24BD828F8(v5, a1);
  sub_24BD2A5FC(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_24BD7CB4C(uint64_t a1)
{
  sub_24BD7E968(a1 + 160);
  sub_24BD2A5FC(a1 + 128);
  sub_24BD7E8E8(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

void sub_24BD7CBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *MEMORY[0x277D85DE8];
  sub_24BD7E6FC(v7, a7);
  sub_24BD7BE2C();
}

void sub_24BD7CC94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD7CB4C(va);
  _Unwind_Resume(a1);
}

void sub_24BD7CCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_24BC836D4(&__p, &unk_24C0435AF);
  sub_24BD7E6FC(v8, a6);
  sub_24BD7BE2C();
}

void sub_24BD7CDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_24BD7CB4C(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BD7CDF0(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_285F95F30;
  v6[1] = a1;
  v6[3] = v6;
  v2 = sub_24BD7D0D8(a1, (a1 + 128), v6);
  sub_24BC9EF8C(v6);
  if (v2)
  {
    v3 = (*(*a1 + 24))(a1);
    sub_24BCB514C(*(a1 + 32), *(a1 + 40), v3);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL sub_24BD7CEE8(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_285F95F78;
  v6[1] = a1;
  v6[3] = v6;
  v2 = sub_24BD7D700(a1, (a1 + 104), v6);
  sub_24BC9EF8C(v6);
  if (v2)
  {
    v3 = (*(*a1 + 16))(a1);
    sub_24BCB514C(*(a1 + 8), *(a1 + 16), v3);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL sub_24BD7CFE0(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_285F95FC0;
  v6[1] = a1;
  v6[3] = v6;
  v2 = sub_24BD7DBA8(a1, (a1 + 152), v6);
  sub_24BC9EF8C(v6);
  if (v2)
  {
    v3 = (*(*a1 + 32))(a1);
    sub_24BCB514C(*(a1 + 56), *(a1 + 64), v3);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL sub_24BD7D0D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1] - *a2;
  if (!v5)
  {
    return 1;
  }

  v31 = v3;
  v32 = v4;
  v9 = 0;
  v10 = 0;
  v29 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 2);
  v11 = v29 - 1;
  while (1)
  {
    if (v11 > v10)
    {
      v12 = 20 * v11;
      while (1)
      {
        v30 = -858993459 * ((v12 + *a2 - *(a1 + 128)) >> 2);
        if (*(sub_24BCB9024(a1 + 104, &v30) + 12) != -1)
        {
          break;
        }

        --v11;
        v12 -= 20;
        if (v11 <= v10)
        {
          v11 = v10;
          break;
        }
      }
    }

    if (v10 < v11)
    {
      v13 = a3;
      v14 = 20 * v10;
      v15 = v9;
      v16 = v10;
      while (1)
      {
        v30 = -858993459 * ((v14 + *a2 - *(a1 + 128)) >> 2);
        if (*(sub_24BCB9024(a1 + 104, &v30) + 12) == -1)
        {
          break;
        }

        ++v16;
        ++v15;
        v14 += 20;
        if (v11 == v16)
        {
          v9 = v11 + v9 - v10;
          goto LABEL_20;
        }
      }

      v10 = v16;
      v9 = v15;
      a3 = v13;
    }

    if (v10 == v11)
    {
      break;
    }

    v30 = -858993459 * ((*a2 + 20 * v10 - *(a1 + 128)) >> 2);
    if (*(sub_24BCB9024(a1 + 104, &v30) + 12) != -1)
    {
      return 0;
    }

    v30 = -858993459 * ((*a2 + 20 * v11 - *(a1 + 128)) >> 2);
    if (*(sub_24BCB9024(a1 + 104, &v30) + 12) == -1)
    {
      return 0;
    }

    sub_24BD4BD08(a3, v11, v10);
    v17 = *a2 + 20 * v10;
    v18 = *(v17 + 16);
    v19 = *v17;
    v20 = *a2 + 20 * v11;
    v21 = *v20;
    *(v17 + 16) = *(v20 + 16);
    *v17 = v21;
    v22 = *a2 + 20 * v11;
    *v22 = v19;
    *(v22 + 16) = v18;
    ++v10;
    ++v9;
    if (v10 > v11)
    {
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

LABEL_20:
  v30 = -858993459 * ((*a2 + 20 * v11 - *(a1 + 128)) >> 2);
  if (*(sub_24BCB9024(a1 + 104, &v30) + 12) != -1)
  {
    ++v9;
  }

  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_23:
  v30 = -858993459 * ((*a2 + 20 * v9 - *(a1 + 128) - 20) >> 2);
  if (*(sub_24BCB9024(a1 + 104, &v30) + 12) == -1)
  {
    v24 = 0;
    v23 = v29;
    goto LABEL_29;
  }

LABEL_24:
  v23 = v29;
  if (v9 == v29)
  {
    v24 = 1;
  }

  else
  {
    v30 = -858993459 * ((*a2 + 20 * v9 - *(a1 + 128)) >> 2);
    v24 = *(sub_24BCB9024(a1 + 104, &v30) + 12) == -1;
  }

LABEL_29:
  v26 = 0;
  v27 = 0;
  if (v23 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v23;
  }

  do
  {
    if (v27 >= v9)
    {
      if (v24)
      {
        v30 = -858993459 * ((v26 + *a2 - *(a1 + 128)) >> 2);
        v24 = *(sub_24BCB9024(a1 + 104, &v30) + 12) == -1;
        goto LABEL_38;
      }
    }

    else if (v24)
    {
      v30 = -858993459 * ((v26 + *a2 - *(a1 + 128)) >> 2);
      v24 = *(sub_24BCB9024(a1 + 104, &v30) + 12) != -1;
      goto LABEL_38;
    }

    v24 = 0;
LABEL_38:
    ++v27;
    v26 += 20;
  }

  while (v28 != v27);
  if (v24)
  {
    sub_24BCB9410(a2, v9);
    return 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2) == v9;
  }

  return 0;
}

uint64_t sub_24BD7D550(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95F30;
  a2[1] = v2;
  return result;
}

_DWORD *sub_24BD7D58C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v17 = a2;
  v6 = sub_24BCB9024((v5 + 13), &v17);
  v7 = sub_24BCB9014(v5 + 13, (v6 + 12));
  if (*v7 == v17)
  {
    v8 = sub_24BCB9024((v5 + 13), &v17);
    *sub_24BCB9014(v5 + 13, (v8 + 12)) = a3;
  }

  v16 = *(sub_24BCB9024((v5 + 13), &v17) + 16);
  if (v16 != -1)
  {
    v9 = sub_24BCB9038((v5 + 13), &v16);
    if (*v9 == v17)
    {
      *sub_24BCB9038((v5 + 13), &v16) = a3;
    }
  }

  v10 = sub_24BCB9024((v5 + 13), &v17);
  *sub_24BCB9024((v5 + 13), v10) = a3;
  v11 = sub_24BCB9024((v5 + 13), &v17);
  *(sub_24BCB9024((v5 + 13), (v11 + 8)) + 4) = a3;
  v12 = sub_24BCB9024((v5 + 13), &v17);
  result = sub_24BCB9024((v5 + 13), (v12 + 4));
  result[2] = a3;
  v15 = v5[4];
  v14 = v5[5];
  while (v15 != v14)
  {
    result = *v15;
    if (*v15)
    {
      result = (*(*result + 56))(result, a2, a3);
    }

    v15 += 2;
  }

  return result;
}

BOOL sub_24BD7D700(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1] - *a2;
  if (!v5)
  {
    return 1;
  }

  v24 = v3;
  v25 = v4;
  v9 = 0;
  v10 = 0;
  v11 = v5 >> 2;
  v12 = (v5 >> 2) - 1;
  while (1)
  {
    if (v12 > v10)
    {
      v13 = 4 * v12;
      while (1)
      {
        v23 = (v13 + *a2 - *(a1 + 104)) >> 2;
        if (*sub_24BCB9014((a1 + 104), &v23) != -1)
        {
          break;
        }

        --v12;
        v13 -= 4;
        if (v12 <= v10)
        {
          v12 = v10;
          break;
        }
      }
    }

    if (v10 < v12)
    {
      v14 = 4 * v10;
      v15 = v9;
      v16 = v10;
      while (1)
      {
        v23 = (v14 + *a2 - *(a1 + 104)) >> 2;
        if (*sub_24BCB9014((a1 + 104), &v23) == -1)
        {
          break;
        }

        ++v16;
        ++v15;
        v14 += 4;
        if (v12 == v16)
        {
          v9 = v12 + v9 - v10;
          goto LABEL_20;
        }
      }

      v10 = v16;
      v9 = v15;
    }

    if (v10 == v12)
    {
      break;
    }

    v23 = (*a2 + 4 * v10 - *(a1 + 104)) >> 2;
    if (*sub_24BCB9014((a1 + 104), &v23) != -1)
    {
      return 0;
    }

    v23 = (*a2 + 4 * v12 - *(a1 + 104)) >> 2;
    if (*sub_24BCB9014((a1 + 104), &v23) == -1)
    {
      return 0;
    }

    sub_24BD4BD08(a3, v12, v10);
    v17 = *(*a2 + 4 * v10);
    *(*a2 + 4 * v10) = *(*a2 + 4 * v12);
    *(*a2 + 4 * v12) = v17;
    ++v10;
    ++v9;
    if (v10 > v12)
    {
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

LABEL_20:
  v23 = (*a2 + 4 * v12 - *(a1 + 104)) >> 2;
  if (*sub_24BCB9014((a1 + 104), &v23) != -1)
  {
    ++v9;
  }

  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_23:
  v23 = (*a2 + 4 * v9 - *(a1 + 104) - 4) >> 2;
  if (*sub_24BCB9014((a1 + 104), &v23) == -1)
  {
    v18 = 0;
    goto LABEL_29;
  }

LABEL_24:
  if (v9 == v11)
  {
    v18 = 1;
  }

  else
  {
    v23 = (*a2 + 4 * v9 - *(a1 + 104)) >> 2;
    v18 = *sub_24BCB9014((a1 + 104), &v23) == -1;
  }

LABEL_29:
  v20 = 0;
  v21 = 0;
  if (v11 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v11;
  }

  do
  {
    if (v21 >= v9)
    {
      if (v18)
      {
        v23 = (v20 + *a2 - *(a1 + 104)) >> 2;
        v18 = *sub_24BCB9014((a1 + 104), &v23) == -1;
        goto LABEL_38;
      }
    }

    else if (v18)
    {
      v23 = (v20 + *a2 - *(a1 + 104)) >> 2;
      v18 = *sub_24BCB9014((a1 + 104), &v23) != -1;
      goto LABEL_38;
    }

    v18 = 0;
LABEL_38:
    ++v21;
    v20 += 4;
  }

  while (v22 != v21);
  if (v18)
  {
    sub_24BC9A554(a2, v9);
    return v9 == (a2[1] - *a2) >> 2;
  }

  return 0;
}

uint64_t sub_24BD7DAC0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95F78;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BD7DAEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v9 = *a2;
  sub_24BCB9454(v10, v5 + 13, &v9);
  while (1)
  {
    result = sub_24BCB947C(v10);
    v9 = result;
    if (result == -1)
    {
      break;
    }

    *(sub_24BCB9024((v5 + 13), &v9) + 12) = v4;
  }

  v8 = v5[1];
  v7 = v5[2];
  while (v8 != v7)
  {
    result = *v8;
    if (*v8)
    {
      result = (*(*result + 56))(result, v3, v4);
    }

    v8 += 2;
  }

  return result;
}

BOOL sub_24BD7DBA8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1] - *a2;
  if (!v5)
  {
    return 1;
  }

  v24 = v3;
  v25 = v4;
  v9 = 0;
  v10 = 0;
  v11 = v5 >> 2;
  v12 = (v5 >> 2) - 1;
  while (1)
  {
    if (v12 > v10)
    {
      v13 = 4 * v12;
      while (1)
      {
        v23 = (v13 + *a2 - *(a1 + 152)) >> 2;
        if (*sub_24BCB9038(a1 + 104, &v23) != -1)
        {
          break;
        }

        --v12;
        v13 -= 4;
        if (v12 <= v10)
        {
          v12 = v10;
          break;
        }
      }
    }

    if (v10 < v12)
    {
      v14 = 4 * v10;
      v15 = v9;
      v16 = v10;
      while (1)
      {
        v23 = (v14 + *a2 - *(a1 + 152)) >> 2;
        if (*sub_24BCB9038(a1 + 104, &v23) == -1)
        {
          break;
        }

        ++v16;
        ++v15;
        v14 += 4;
        if (v12 == v16)
        {
          v9 = v12 + v9 - v10;
          goto LABEL_20;
        }
      }

      v10 = v16;
      v9 = v15;
    }

    if (v10 == v12)
    {
      break;
    }

    v23 = (*a2 + 4 * v10 - *(a1 + 152)) >> 2;
    if (*sub_24BCB9038(a1 + 104, &v23) != -1)
    {
      return 0;
    }

    v23 = (*a2 + 4 * v12 - *(a1 + 152)) >> 2;
    if (*sub_24BCB9038(a1 + 104, &v23) == -1)
    {
      return 0;
    }

    sub_24BD4BD08(a3, v12, v10);
    v17 = *(*a2 + 4 * v10);
    *(*a2 + 4 * v10) = *(*a2 + 4 * v12);
    *(*a2 + 4 * v12) = v17;
    ++v10;
    ++v9;
    if (v10 > v12)
    {
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

LABEL_20:
  v23 = (*a2 + 4 * v12 - *(a1 + 152)) >> 2;
  if (*sub_24BCB9038(a1 + 104, &v23) != -1)
  {
    ++v9;
  }

  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_23:
  v23 = (*a2 + 4 * v9 - *(a1 + 152) - 4) >> 2;
  if (*sub_24BCB9038(a1 + 104, &v23) == -1)
  {
    v18 = 0;
    goto LABEL_29;
  }

LABEL_24:
  if (v9 == v11)
  {
    v18 = 1;
  }

  else
  {
    v23 = (*a2 + 4 * v9 - *(a1 + 152)) >> 2;
    v18 = *sub_24BCB9038(a1 + 104, &v23) == -1;
  }

LABEL_29:
  v20 = 0;
  v21 = 0;
  if (v11 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v11;
  }

  do
  {
    if (v21 >= v9)
    {
      if (v18)
      {
        v23 = (v20 + *a2 - *(a1 + 152)) >> 2;
        v18 = *sub_24BCB9038(a1 + 104, &v23) == -1;
        goto LABEL_38;
      }
    }

    else if (v18)
    {
      v23 = (v20 + *a2 - *(a1 + 152)) >> 2;
      v18 = *sub_24BCB9038(a1 + 104, &v23) != -1;
      goto LABEL_38;
    }

    v18 = 0;
LABEL_38:
    ++v21;
    v20 += 4;
  }

  while (v22 != v21);
  if (v18)
  {
    sub_24BC9A554(a2, v9);
    return v9 == (a2[1] - *a2) >> 2;
  }

  return 0;
}

uint64_t sub_24BD7DF68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95FC0;
  a2[1] = v2;
  return result;
}

_DWORD *sub_24BD7DF94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v13 = *a2;
  v6 = *sub_24BCB9038(v5 + 104, &v13);
  v12 = v6;
  do
  {
    *(sub_24BCB9024(v5 + 104, &v12) + 16) = v4;
    result = sub_24BCB9024(v5 + 104, &v12);
    v8 = result[2];
    v12 = v8;
  }

  while (v8 != -1 && v8 != v6);
  v11 = *(v5 + 56);
  v10 = *(v5 + 64);
  while (v11 != v10)
  {
    result = *v11;
    if (*v11)
    {
      result = (*(*result + 56))(result, v3, v4);
    }

    v11 += 2;
  }

  return result;
}

uint64_t sub_24BD7E05C(uint64_t a1, uint64_t a2)
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
  *(a1 + 632) = 1;
  sub_24BCCEE48((a1 + 640), &unk_24C0435AF);
  *(a1 + 664) = 1;
  return a1;
}

void sub_24BD7E178(_Unwind_Exception *a1)
{
  sub_24BD2A0F4(v2);
  sub_24BD2A138(v1 + 64);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD7E1C4(uint64_t a1)
{
  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
  }

  if (*(a1 + 583) < 0)
  {
    operator delete(*(a1 + 560));
  }

  v2 = *(a1 + 536);
  if (v2)
  {
    *(a1 + 544) = v2;
    operator delete(v2);
  }

  sub_24BD2A138(a1 + 64);
  return a1;
}

uint64_t sub_24BD7E220(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_24BC8DE9C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  if (*(a2 + 79) < 0)
  {
    sub_24BC8DE9C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  if (*(a2 + 119) < 0)
  {
    sub_24BC8DE9C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  if (*(a2 + 159) < 0)
  {
    sub_24BC8DE9C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v7 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v7;
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  if (*(a2 + 199) < 0)
  {
    sub_24BC8DE9C((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v8 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v8;
  }

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 208) = *(a2 + 208);
  if (*(a2 + 239) < 0)
  {
    sub_24BC8DE9C((a1 + 216), *(a2 + 216), *(a2 + 224));
  }

  else
  {
    v9 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v9;
  }

  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  if (*(a2 + 279) < 0)
  {
    sub_24BC8DE9C((a1 + 256), *(a2 + 256), *(a2 + 264));
  }

  else
  {
    v10 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v10;
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  if (*(a2 + 319) < 0)
  {
    sub_24BC8DE9C((a1 + 296), *(a2 + 296), *(a2 + 304));
  }

  else
  {
    v11 = *(a2 + 296);
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 296) = v11;
  }

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (*(a2 + 359) < 0)
  {
    sub_24BC8DE9C((a1 + 336), *(a2 + 336), *(a2 + 344));
  }

  else
  {
    v12 = *(a2 + 336);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 336) = v12;
  }

  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  if (*(a2 + 399) < 0)
  {
    sub_24BC8DE9C((a1 + 376), *(a2 + 376), *(a2 + 384));
  }

  else
  {
    v13 = *(a2 + 376);
    *(a1 + 392) = *(a2 + 392);
    *(a1 + 376) = v13;
  }

  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  if (*(a2 + 439) < 0)
  {
    sub_24BC8DE9C((a1 + 416), *(a2 + 416), *(a2 + 424));
  }

  else
  {
    v14 = *(a2 + 416);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 416) = v14;
  }

  sub_24BD7E5E8(a1 + 440, a2 + 440);
  return a1;
}

void sub_24BD7E4DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 399) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 359) < 0)
  {
    operator delete(*(v1 + 336));
  }

  if (*(v1 + 319) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 279) < 0)
  {
    operator delete(*(v1 + 256));
  }

  if (*(v1 + 239) < 0)
  {
    operator delete(*(v1 + 216));
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD7E5E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BD7E680(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BD7E6E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD7E6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24BCA1524(a1, a2);
  sub_24BCA2D38(v4 + 32, a2 + 32);
  sub_24BCA2DD0(a1 + 64, a2 + 64);
  sub_24BD7E7B8(a1 + 96, a2 + 96);
  sub_24BD2A4E4(a1 + 128, a2 + 128);
  sub_24BD7E850(a1 + 160, a2 + 160);
  return a1;
}

void sub_24BD7E764(_Unwind_Exception *a1)
{
  sub_24BD2A5FC(v1 + 128);
  sub_24BD7E8E8(v1 + 96);
  sub_24BC9ED38(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD7E7B8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BD7E850(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BD7E8E8(uint64_t a1)
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

uint64_t sub_24BD7E968(uint64_t a1)
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

uint64_t sub_24BD7E9E8(uint64_t a1)
{
  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
  }

  if (*(a1 + 583) < 0)
  {
    operator delete(*(a1 + 560));
  }

  v2 = *(a1 + 536);
  if (v2)
  {
    *(a1 + 544) = v2;
    operator delete(v2);
  }

  sub_24BD2A138(a1 + 64);
  return a1;
}

uint64_t sub_24BD7EA54(uint64_t a1)
{
  sub_24BD7EAA0(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

uint64_t sub_24BD7EAA0(uint64_t a1)
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

uint64_t sub_24BD7EB20(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BD7EB78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD7EB94(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
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

uint64_t sub_24BD7EC6C(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 1) <= v8[1])
        {
          return result;
        }

        v64 = *v8;
LABEL_111:
        *v8 = *(a2 - 1);
LABEL_112:
        *(a2 - 1) = v64;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v67 = v8[3];
      v68 = v8[1];
      v69 = v8[5];
      if (v67 <= v68)
      {
        if (v69 > v67)
        {
          v113 = *(v8 + 1);
          v112 = *(v8 + 2);
          *(v8 + 1) = v112;
          *(v8 + 2) = v113;
          v69 = *(&v113 + 1);
          if (v68 < *(&v112 + 1))
          {
            v114 = *v8;
            *v8 = v112;
            *(v8 + 1) = v114;
          }
        }
      }

      else
      {
        v70 = *v8;
        LODWORD(v71) = HIDWORD(*v8);
        if (v69 > v67)
        {
          *v8 = *(v8 + 2);
          goto LABEL_184;
        }

        *v8 = *(v8 + 1);
        *(v8 + 1) = v70;
        if (v69 > v71)
        {
          *(v8 + 1) = *(v8 + 2);
LABEL_184:
          *(v8 + 2) = v70;
          v69 = v71;
        }
      }

      if (*(a2 - 1) > v69)
      {
        v120 = *(v8 + 2);
        *(v8 + 2) = *(a2 - 1);
        *(a2 - 1) = v120;
        if (v8[5] > v8[3])
        {
          v122 = *(v8 + 1);
          v121 = *(v8 + 2);
          *(v8 + 1) = v121;
          *(v8 + 2) = v122;
          if (v8[1] < *(&v121 + 1))
          {
            v123 = *v8;
            *v8 = v121;
            *(v8 + 1) = v123;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_24BD7F68C(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v72 = v8 + 2;
      v74 = v8 == a2 || v72 == a2;
      if (a4)
      {
        if (!v74)
        {
          v75 = 0;
          v76 = v8;
          do
          {
            v77 = v76[3];
            v78 = v76[1];
            v76 = v72;
            if (v77 > v78)
            {
              v79 = *v72;
              v80 = v75;
              while (1)
              {
                *(v8 + v80 + 8) = *(v8 + v80);
                if (!v80)
                {
                  break;
                }

                v81 = *(v8 + v80 - 4);
                v80 -= 8;
                if (v81 >= v77)
                {
                  v82 = v8 + v80 + 8;
                  goto LABEL_131;
                }
              }

              v82 = v8;
LABEL_131:
              *v82 = v79;
              *(v82 + 4) = v77;
            }

            v72 = v76 + 2;
            v75 += 8;
          }

          while (v76 + 2 != a2);
        }
      }

      else if (!v74)
      {
        do
        {
          v115 = *(v7 + 12);
          v116 = *(v7 + 4);
          v7 = v72;
          if (v115 > v116)
          {
            v117 = *v72;
            do
            {
              v118 = v72;
              v119 = *(v72 - 1);
              v72 -= 2;
              *v118 = v119;
            }

            while (*(v118 - 3) < v115);
            *v72 = v117;
            v72[1] = v115;
          }

          v72 = (v7 + 8);
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v83 = (v9 - 2) >> 1;
        v84 = v83;
        do
        {
          v85 = v84;
          if (v83 >= v84)
          {
            v86 = (2 * v84) | 1;
            v87 = &v8[2 * v86];
            if (2 * v85 + 2 < v9 && v87[1] > v87[3])
            {
              v87 += 2;
              v86 = 2 * v85 + 2;
            }

            v88 = &v8[2 * v85];
            v89 = v88[1];
            if (v87[1] <= v89)
            {
              v90 = *v88;
              do
              {
                v91 = v88;
                v88 = v87;
                *v91 = *v87;
                if (v83 < v86)
                {
                  break;
                }

                v92 = 2 * v86;
                v86 = (2 * v86) | 1;
                v87 = &v8[2 * v86];
                v93 = v92 + 2;
                if (v93 < v9 && v87[1] > v87[3])
                {
                  v87 += 2;
                  v86 = v93;
                }
              }

              while (v87[1] <= v89);
              *v88 = v90;
              v88[1] = v89;
            }
          }

          v84 = v85 - 1;
        }

        while (v85);
        do
        {
          v94 = 0;
          v95 = *v8;
          v96 = v8;
          do
          {
            v97 = &v96[2 * v94];
            v98 = v97 + 2;
            v99 = (2 * v94) | 1;
            v94 = 2 * v94 + 2;
            if (v94 >= v9)
            {
              v94 = v99;
            }

            else
            {
              v100 = v97[3];
              v101 = v97[5];
              v102 = v97 + 4;
              if (v100 <= v101)
              {
                v94 = v99;
              }

              else
              {
                v98 = v102;
              }
            }

            *v96 = *v98;
            v96 = v98;
          }

          while (v94 <= ((v9 - 2) >> 1));
          a2 -= 2;
          if (v98 == a2)
          {
            *v98 = v95;
          }

          else
          {
            *v98 = *a2;
            *a2 = v95;
            v103 = (v98 - v8 + 8) >> 3;
            v104 = v103 < 2;
            v105 = v103 - 2;
            if (!v104)
            {
              v106 = v105 >> 1;
              v107 = &v8[2 * v106];
              v108 = v98[1];
              if (v107[1] > v108)
              {
                v109 = *v98;
                do
                {
                  v110 = v98;
                  v98 = v107;
                  *v110 = *v107;
                  if (!v106)
                  {
                    break;
                  }

                  v106 = (v106 - 1) >> 1;
                  v107 = &v8[2 * v106];
                }

                while (v107[1] > v108);
                *v98 = v109;
                v98[1] = v108;
              }
            }
          }

          v104 = v9-- <= 2;
        }

        while (!v104);
      }

      return result;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      if (v12 <= v8[1])
      {
        if (v11 > v12)
        {
          v16 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v16;
          if (v10[1] > v8[1])
          {
            v17 = *v8;
            *v8 = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        v13 = *v8;
        if (v11 > v12)
        {
          *v8 = *(a2 - 1);
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v13;
        if (*(a2 - 1) > *(&v13 + 1))
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v20 = v10 - 2;
      v21 = *(v10 - 1);
      v22 = *(a2 - 3);
      if (v21 <= v8[3])
      {
        if (v22 > v21)
        {
          v24 = *v20;
          *v20 = *(a2 - 2);
          *(a2 - 2) = v24;
          if (*(v10 - 1) > v8[3])
          {
            v25 = *(v8 + 1);
            *(v8 + 1) = *v20;
            *v20 = v25;
          }
        }
      }

      else
      {
        v23 = *(v8 + 1);
        if (v22 > v21)
        {
          *(v8 + 1) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v8 + 1) = *v20;
        *v20 = v23;
        if (*(a2 - 3) > *(&v23 + 1))
        {
          *v20 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v23;
        }
      }

      v26 = (v10 + 2);
      v27 = v10[3];
      v28 = *(a2 - 5);
      if (v27 <= v8[5])
      {
        if (v28 > v27)
        {
          v30 = *v26;
          *v26 = *(a2 - 3);
          *(a2 - 3) = v30;
          if (v10[3] > v8[5])
          {
            v31 = *(v8 + 2);
            *(v8 + 2) = *v26;
            *v26 = v31;
          }
        }
      }

      else
      {
        v29 = *(v8 + 2);
        if (v28 > v27)
        {
          *(v8 + 2) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v8 + 2) = *v26;
        *v26 = v29;
        if (*(a2 - 5) > *(&v29 + 1))
        {
          *v26 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v29;
        }
      }

      v32 = v10[1];
      v33 = *(v10 - 1);
      v34 = v10[3];
      if (v32 <= v33)
      {
        v35 = *v10;
        if (v34 > v32)
        {
          v36 = *v26;
          *v10 = *v26;
          *v26 = v35;
          if (v33 >= *(&v36 + 1))
          {
            v35 = v36;
          }

          else
          {
            v35 = *v20;
            *v20 = v36;
            *v10 = v35;
          }
        }
      }

      else
      {
        v35 = *v20;
        if (v34 <= v32)
        {
          *v20 = *v10;
          *v10 = v35;
          if (v34 > *(&v35 + 1))
          {
            v37 = *v26;
            *v10 = *v26;
            *v26 = v35;
            v35 = v37;
          }
        }

        else
        {
          *v20 = *v26;
          *v26 = v35;
          v35 = *v10;
        }
      }

      v38 = *v8;
      *v8 = v35;
      *v10 = v38;
      goto LABEL_59;
    }

    v14 = v8[1];
    if (v14 <= v10[1])
    {
      if (v11 > v14)
      {
        v18 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v18;
        if (v8[1] > v10[1])
        {
          v19 = *v10;
          *v10 = *v8;
          *v8 = v19;
        }
      }

      goto LABEL_59;
    }

    v15 = *v10;
    if (v11 > v14)
    {
      *v10 = *(a2 - 1);
LABEL_36:
      *(a2 - 1) = v15;
      goto LABEL_59;
    }

    *v10 = *v8;
    *v8 = v15;
    if (*(a2 - 1) > *(&v15 + 1))
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v39 = *v8;
      v40 = v8[1];
LABEL_62:
      v41 = 0;
      do
      {
        v42 = v8[v41 + 3];
        v41 += 2;
      }

      while (v42 > v40);
      v43 = &v8[v41];
      v44 = a2;
      if (v41 == 2)
      {
        v47 = a2;
        while (v43 < v47)
        {
          v45 = v47 - 2;
          v48 = *(v47 - 1);
          v47 -= 2;
          if (v48 > v40)
          {
            goto LABEL_72;
          }
        }

        v45 = v47;
      }

      else
      {
        do
        {
          v45 = v44 - 2;
          v46 = *(v44 - 1);
          v44 -= 2;
        }

        while (v46 <= v40);
      }

LABEL_72:
      v8 = v43;
      if (v43 < v45)
      {
        v49 = v45;
        do
        {
          v50 = *v8;
          *v8 = *v49;
          *v49 = v50;
          do
          {
            v51 = v8[3];
            v8 += 2;
          }

          while (v51 > v40);
          do
          {
            v52 = *(v49 - 1);
            v49 -= 2;
          }

          while (v52 <= v40);
        }

        while (v8 < v49);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 1);
      }

      *(v8 - 2) = v39;
      *(v8 - 1) = v40;
      if (v43 < v45)
      {
        goto LABEL_83;
      }

      v53 = sub_24BD7F818(v7, (v8 - 2));
      result = sub_24BD7F818(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (!v53)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v53)
      {
LABEL_83:
        result = sub_24BD7EC6C(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v40 = v8[1];
      v39 = *v8;
      if (*(v8 - 1) > v40)
      {
        goto LABEL_62;
      }

      if (*(a2 - 1) >= v40)
      {
        v56 = v8 + 2;
        do
        {
          v8 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v57 = v56[1];
          v56 += 2;
        }

        while (v57 >= v40);
      }

      else
      {
        v54 = v8;
        do
        {
          v8 = v54 + 2;
          v55 = v54[3];
          v54 += 2;
        }

        while (v55 >= v40);
      }

      v58 = a2;
      if (v8 < a2)
      {
        v59 = a2;
        do
        {
          v58 = v59 - 2;
          v60 = *(v59 - 1);
          v59 -= 2;
        }

        while (v60 < v40);
      }

      while (v8 < v58)
      {
        v61 = *v8;
        *v8 = *v58;
        *v58 = v61;
        do
        {
          v62 = v8[3];
          v8 += 2;
        }

        while (v62 >= v40);
        do
        {
          v63 = *(v58 - 1);
          v58 -= 2;
        }

        while (v63 < v40);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v39;
      *(v8 - 1) = v40;
    }
  }

  v65 = v8[3];
  v66 = *(a2 - 1);
  if (v65 <= v8[1])
  {
    if (v66 > v65)
    {
      v111 = *(v8 + 1);
      *(v8 + 1) = *(a2 - 1);
      *(a2 - 1) = v111;
      if (v8[3] > v8[1])
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v64 = *v8;
    if (v66 > v65)
    {
      goto LABEL_111;
    }

    *v8 = *(v8 + 1);
    *(v8 + 1) = v64;
    if (*(a2 - 1) > *(&v64 + 1))
    {
      *(v8 + 1) = *(a2 - 1);
      goto LABEL_112;
    }
  }

  return result;
}

float *sub_24BD7F68C(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[1];
  v6 = a3[1];
  if (v5 <= result[1])
  {
    if (v6 > v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (a2[1] <= result[1])
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = a3[1];
    }
  }

  else
  {
    v7 = *result;
    if (v6 > v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *(&v7 + 1);
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = a3[1];
    if (v6 > *(&v7 + 1))
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *(&v7 + 1);
    }
  }

LABEL_10:
  if (a4[1] > v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (a3[1] > a2[1])
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (a2[1] > result[1])
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (a5[1] > a4[1])
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (a4[1] > a3[1])
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (a3[1] > a2[1])
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (a2[1] > result[1])
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BD7F818(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 12);
      v5 = *(a2 - 4);
      if (v4 <= *(a1 + 4))
      {
        if (v5 > v4)
        {
          v15 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v15;
          if (*(a1 + 12) > *(a1 + 4))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 <= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 4) <= *(&v3 + 1))
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_24BD7F68C(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v10 = *(a1 + 12);
    v11 = *(a1 + 4);
    v12 = *(a1 + 20);
    if (v10 <= v11)
    {
      if (v12 > v10)
      {
        v20 = *(a1 + 8);
        v19 = *(a1 + 16);
        *(a1 + 8) = v19;
        *(a1 + 16) = v20;
        v12 = *(&v20 + 1);
        if (v11 < *(&v19 + 1))
        {
          v21 = *a1;
          *a1 = v19;
          *(a1 + 8) = v21;
        }
      }

      goto LABEL_48;
    }

    v13 = *a1;
    LODWORD(v14) = HIDWORD(*a1);
    if (v12 <= v10)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v13;
      if (v12 <= v14)
      {
LABEL_48:
        if (*(a2 - 4) > v12)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 20) > *(a1 + 12))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*(a1 + 4) < *(&v32 + 1))
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v13;
    v12 = v14;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 4) > *(a1 + 4))
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = *(a1 + 12);
  v7 = *(a1 + 4);
  v8 = *(a1 + 20);
  if (v6 <= v7)
  {
    if (v8 > v6)
    {
      v17 = *(a1 + 8);
      v16 = *(a1 + 16);
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      if (v7 < *(&v16 + 1))
      {
        v18 = *a1;
        *a1 = v16;
        *(a1 + 8) = v18;
      }
    }
  }

  else
  {
    v9 = *a1;
    if (v8 <= v6)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v9;
      if (v8 <= *(&v9 + 1))
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v9;
  }

LABEL_34:
  v22 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 16;
  while (1)
  {
    v26 = *(v22 + 4);
    if (v26 > *(v25 + 4))
    {
      v27 = *v22;
      v28 = v23;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 12);
        v28 -= 8;
        if (v29 >= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v27;
      *(v30 + 4) = v26;
      if (++v24 == 8)
      {
        return v22 + 8 == a2;
      }
    }

    v25 = v22;
    v23 += 8;
    v22 += 8;
    if (v22 == a2)
    {
      return 1;
    }
  }
}

void sub_24BD7FB1C(uint64_t a1)
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

  sub_24BD7FC10();
}

void sub_24BD7FBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD7FC84(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F96008;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F96040;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BD7FD24(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96008;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD7FDA4(void *a1)
{
  sub_24BD7FF2C(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD7FDFC(void *a1)
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

uint64_t sub_24BD7FE18(void *a1)
{
  v4 = 0;
  v2 = a1[6];
  if (v2 >= a1[7])
  {
    result = sub_24BD80258(a1 + 5, &v4);
  }

  else
  {
    *v2 = 0;
    result = (v2 + 1);
  }

  a1[6] = result;
  return result;
}

double sub_24BD7FE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  result = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = result;
  return result;
}

double sub_24BD7FE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  result = *(v3 + 8 * a2);
  *(v3 + 8 * a3) = result;
  return result;
}

uint64_t sub_24BD7FF2C(void *a1)
{
  *a1 = &unk_285F96040;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BD7FF8C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BC91F60(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BD8002C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD80064(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_24BD800E0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_24BD80110(a1, a2 - v2);
  }
}

void sub_24BD80110(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_24BC8E01C();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_24BC91F60(a1, v10);
    }

    __p = 0;
    v12 = 8 * v8;
    v14 = 0;
    bzero((8 * v8), 8 * a2);
    v13 = 8 * v8 + 8 * a2;
    sub_24BD80064(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BD80220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD80258(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_24BC8E01C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_24BC91F60(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  v14 = 0;
  sub_24BD80064(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BD80348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD80380(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F96040;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BD803F4((v4 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
  return a1;
}

uint64_t sub_24BD803F4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BD8045C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD804E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD804FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD80534(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_24BD8057C(void *result, unint64_t a2)
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

void sub_24BD805D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD805F4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_24BD07D84(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_24BD80648(uint64_t a1, uint64_t *a2)
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
    sub_24BCA394C(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_24BD07D84(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_24BC91E14(&v14);
  return v8;
}

void sub_24BD80764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD80778(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_24BCA17B8(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_24BD807CC(uint64_t a1, uint64_t *a2)
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
    sub_24BC8F4C8(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_24BCA17B8(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_24BC91E14(&v14);
  return v8;
}

void sub_24BD808E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD808FC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_24BCB7960(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_24BD80950(uint64_t a1, uint64_t *a2)
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
    sub_24BC91DBC(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_24BCB7960(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_24BC91E14(&v14);
  return v8;
}

void sub_24BD80A6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD80A80(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_24BD803F4(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_24BD80AD4(uint64_t a1, uint64_t *a2)
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
    sub_24BC8F4C8(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_24BD803F4(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_24BC91E14(&v14);
  return v8;
}

void sub_24BD80BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD80C04(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA182C(result, a4);
  }

  return result;
}

void sub_24BD80C5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD80C78(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA182C(result, a2);
  }

  return result;
}

void sub_24BD80CD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD80CF0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_24BD80D34(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_24BD80D34@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *sub_24BD80E70(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_24BD80F24(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_24BD81158(void *a1, unsigned int *a2)
{
  result = sub_24BD80E70(a1, a2);
  if (result)
  {
    sub_24BD80CF0(a1, result);
    return 1;
  }

  return result;
}

void sub_24BD81190(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 4 * a2;
      v17 = *a3;
      v18 = v14 + 4;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_24BFBC5B0)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_24BFBC5E0)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_24BC8E01C();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_24BC92E0C(a1, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = 4 * v9 + 4 * a2;
    v25 = *a3;
    v26 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_24BFBC5E0)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = *(a1 + 8) - *a1;
    v33 = v23 - v32;
    memcpy((v23 - v32), *a1, v32);
    v34 = *a1;
    *a1 = v33;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

void sub_24BD813D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_24BD813D8(a1, *a2);
    sub_24BD813D8(a1, a2[1]);
    sub_24BCC8A84((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

uint64_t *sub_24BD81438(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
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

uint64_t *sub_24BD8151C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
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

uint64_t sub_24BD815EC(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_24BCA1868(a1, v7);
  }

  v8 = (16 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v8[2] = a2[2];
  v8[3] = a2[3];
  v13 = 16 * v2 + 16;
  v14 = 0;
  sub_24BD81724(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BD816EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD81724(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v6[3] = v5[3];
      v5 += 4;
      v6 += 4;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_24BD817B0(uint64_t a1)
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

  sub_24BD818A4();
}

void sub_24BD8188C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD81918(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F960E8;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F96120;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BD819B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F960E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD81A38(void *a1)
{
  sub_24BD81BEC(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD81A98(void *a1)
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

uint64_t sub_24BD81AB4(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  return sub_24BD82064((a1 + 40), &v2);
}

uint64_t sub_24BD81AE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = (v3 + 3 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = (v3 + 3 * a3);
  *v4 = *v8;
  v4[1] = v8[1];
  v4[2] = v8[2];
  *v8 = v5;
  v8[1] = v6;
  v8[2] = v7;
  return result;
}

uint64_t sub_24BD81B2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = v3 + 3 * a2;
  v5 = v3 + 3 * a3;
  *v5 = *v4;
  *(v5 + 1) = *(v4 + 1);
  return result;
}

uint64_t sub_24BD81BEC(void *a1)
{
  *a1 = &unk_285F96120;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BD81C4C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * (result[2] - *result) < a2)
  {
    if (a2 < 0x5555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BD81DF8(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BD81D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD81D74(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void sub_24BD81DF8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5555555555555556)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BD81E48(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BD81E80(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 3 * a2;
  }
}

void sub_24BD81E80(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * (v4 - v5) >= a2)
  {
    if (a2)
    {
      v10 = 3 * ((3 * a2 - 3) / 3) + 3;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 - *a1);
    v7 = v6 + a2;
    if (v6 + a2 >= 0x5555555555555556)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a1);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      sub_24BD81DF8(a1, v9);
    }

    __p = 0;
    v13 = 3 * v6;
    v15 = 0;
    v11 = 3 * ((3 * a2 - 3) / 3) + 3;
    bzero((3 * v6), v11);
    v14 = 3 * v6 + v11;
    sub_24BD81D74(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 3) % 3 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BD82010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD82064(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BD820BC(a1, a2);
  }

  else
  {
    for (i = 0; i != 3; ++i)
    {
      *(v3 + i) = *(a2 + i);
    }

    result = v3 + 3;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BD820BC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 >= 0x5555555555555556)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAAALL)
  {
    v6 = 0x5555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_24BD81DF8(a1, v6);
  }

  v7 = 0;
  v8 = 3 * v2;
  __p = 0;
  v12 = 3 * v2;
  v14 = 0;
  do
  {
    *(v8 + v7) = *(a2 + v7);
    ++v7;
  }

  while (v7 != 3);
  v13 = v8 + 3;
  sub_24BD81D74(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 3) % 3uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BD821F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD82248(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F96120;
  v4[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  sub_24BD822C4((v4 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * (*(a2 + 48) - *(a2 + 40)));
  return a1;
}

uint64_t sub_24BD822C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BD82350(result, a4);
  }

  return result;
}

void sub_24BD82334(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD82350(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5555555555555556)
  {
    sub_24BD81DF8(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BD82400(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD8241C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD82454(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_24BD8250C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F961C8;
  a2[1] = v2;
  return result;
}

__n128 sub_24BD82538(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  result = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(v2 + 76) = *(a2 + 76);
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  *(v2 + 32) = result;
  return result;
}

uint64_t sub_24BD825D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96210;
  a2[1] = v2;
  return result;
}

__n128 sub_24BD825FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *v2 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  v5 = *(a2 + 64);
  *(v2 + 80) = *(a2 + 80);
  *(v2 + 64) = v5;
  *(v2 + 96) = *(a2 + 96);
  *(v2 + 112) = *(a2 + 112);
  v6 = *(a2 + 128);
  v7 = *(a2 + 160);
  *(v2 + 144) = *(a2 + 144);
  *(v2 + 160) = v7;
  *(v2 + 128) = v6;
  v8 = *(a2 + 176);
  *(v2 + 192) = *(a2 + 192);
  *(v2 + 176) = v8;
  *(v2 + 208) = *(a2 + 208);
  *(v2 + 224) = *(a2 + 224);
  v9 = *(a2 + 256);
  *(v2 + 240) = *(a2 + 240);
  *(v2 + 256) = v9;
  v10 = *(a2 + 272);
  v11 = *(a2 + 288);
  v12 = *(a2 + 320);
  *(v2 + 304) = *(a2 + 304);
  *(v2 + 320) = v12;
  *(v2 + 272) = v10;
  *(v2 + 288) = v11;
  result = *(a2 + 336);
  v14 = *(a2 + 352);
  v15 = *(a2 + 384);
  *(v2 + 368) = *(a2 + 368);
  *(v2 + 384) = v15;
  *(v2 + 336) = result;
  *(v2 + 352) = v14;
  return result;
}

void *sub_24BD82694(void *result, void *a2)
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

void sub_24BD828EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

void *sub_24BD828F8(void *result, void *a2)
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

void sub_24BD82B50(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

std::string *sub_24BD82B5C(std::string *this, std::string *a2)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  sub_24BCCA758(this, a2, (a2 + v3));
  return this;
}

uint64_t sub_24BD82BC4(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = vsubq_f32(*a2, *a1);
  v5 = vsubq_f32(*a3, *a1);
  v6 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v4, vextq_s8(v4, v4, 0xCuLL)), v4), vuzp2q_s32(vextq_s8(v5, v5, 4uLL), v5)), vzip2q_s32(vzip1q_s32(v5, vextq_s8(v5, v5, 0xCuLL)), v5), vuzp2q_s32(vextq_s8(v4, v4, 4uLL), v4));
  v7 = vmulq_f32(v6, v6);
  v7.i32[3] = 0;
  v8 = vpaddq_f32(v7, v7).u64[0];
  v8.f32[0] = sqrtf(vaddv_f32(v8));
  if (v8.f32[0] <= 0.0)
  {
    v9 = xmmword_24BFBD1C0;
  }

  else
  {
    v9 = vdivq_f32(v6, vdupq_lane_s32(v8, 0));
  }

  *a4 = v9;
  return 1;
}

uint64_t sub_24BD82C44(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, const float *a5, unsigned int *a6, uint64_t *a7, void *a8, void *a9, _DWORD *a10, _DWORD *a11)
{
  v14 = a1;
  *a10 = 0;
  *a11 = 0;
  v459[0] = 1.0;
  if (*a5 > 0.00000001)
  {
    v459[0] = 1.0 / *a5;
  }

  v15 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(v453) = 0;
  sub_24BC9FEFC(&v458, v15);
  v456 = 0;
  v457 = 0uLL;
  v16 = v14 + 104;
  v17 = (((*(v14 + 112) - *(v14 + 104)) >> 2) * 2.5);
  v425 = a7;
  if (v17)
  {
    sub_24BD866F4(&v453, v17, 0, &v456);
    v18 = &v454[-(v457.n128_u64[0] - v456)];
    memcpy(v18, v456, v457.n128_u64[0] - v456);
    v19 = v456;
    v20 = v457.n128_u64[1];
    v456 = v18;
    v457 = v455;
    v455.n128_u64[0] = v19;
    v455.n128_u64[1] = v20;
    v453 = v19;
    v454 = v19;
    if (v19)
    {
      operator delete(v19);
    }
  }

  sub_24BC8EED8(a7);
  sub_24BCB6C18(a7, (*(v14 + 112) - *(v14 + 104)) >> 2);
  v419 = a6;
  v23 = *(v14 + 128);
  v22 = *(v14 + 136);
  v431 = a2;
  v434 = v14;
  if (v22 != v23)
  {
    v24 = 0;
    v25 = 1;
    v420 = v14 + 104;
    while (1)
    {
      v26 = v24 >> 6;
      v27 = 1 << v24;
      v28 = v458[v24 >> 6];
      if ((v28 & v27) == 0)
      {
        break;
      }

LABEL_34:
      v24 = v25;
      v62 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v23) >> 2) > v25++;
      if (!v62)
      {
        goto LABEL_50;
      }
    }

    v458[v26] = v28 | v27;
    LODWORD(v453) = v25 - 1;
    v29 = sub_24BCB9024(v16, &v453);
    *(v458 + ((*v29 >> 3) & 0x1FFFFFF8)) |= 1 << *v29;
    LODWORD(v453) = v25 - 1;
    v428 = v27;
    v30 = *(sub_24BCB9024(v16, &v453) + 12);
    LODWORD(v453) = v25 - 1;
    v31 = sub_24BCB9024(v16, &v453);
    v32 = *(sub_24BCB9024(v16, v31) + 12);
    if (v30 <= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = v30;
    }

    if (v30 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v30;
    }

    *v452 = 0u;
    v35 = *a3;
    v36 = *a3 + 16 * v34;
    v37 = *a2;
    v38 = *a2 + 16 * v34;
    *v451 = 0u;
    v448 = 0;
    v447[0] = 0;
    sub_24BD75330(v36, v38, v35 + 16 * v33, v37 + 16 * v33, v452, v451, 0);
    LODWORD(v446[0]) = 0;
    v39 = (*(v14 + 8) + 16 * *(v14 + 176));
    v41 = *v39;
    v40 = v39[1];
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v40);
      v42 = (*(v14 + 8) + 16 * *(v14 + 176));
      v44 = *v42;
      v43 = v42[1];
      v45 = *(v41 + 40);
      v46 = *v431;
      v47 = *a4;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v43);
        v48 = *v431;
        v49 = *a4;
        v14 = v434;
        v41 = v44;
        goto LABEL_21;
      }

      v41 = *v42;
    }

    else
    {
      v45 = *(v41 + 40);
      v46 = *v431;
      v47 = *a4;
    }

    v49 = v47;
    v48 = v46;
LABEL_21:
    sub_24BD75894((v45 + 16 * v34), (v46 + 16 * v34), v452, (v47 + 16 * v34), (*(v41 + 40) + 16 * v33), (v48 + 16 * v33), v451, (v49 + 16 * v33), a5, v459, v446, &v448, v447);
    v21.n128_u64[0] = vabd_s32(v448, v447[0]);
    v50 = v21.n128_u32[1];
    v51 = vceq_s32(v21.n128_u64[0], 0x100000001);
    v52 = v21.n128_u32[0];
    if (v21.n128_u32[0] <= v21.n128_u32[1])
    {
      v53 = v21.n128_u32[1];
    }

    else
    {
      v53 = v21.n128_u32[0];
    }

    v21.n128_u64[0] = vand_s8(v51, vdup_lane_s32(v51, 1));
    a2 = v431;
    v16 = v420;
    if (v53 <= 1)
    {
      if ((v21.n128_u8[0] & 1) == 0)
      {
        if (v52 + v50)
        {
          v66 = *v425 + 24 * v34;
          LODWORD(v453) = v33;
          WORD2(v453) = 0;
          sub_24BD84D00(v66, &v453);
          v67 = *v425 + 24 * v33;
          LODWORD(v453) = v34;
          WORD2(v453) = 0;
          sub_24BD84D00(v67, &v453);
        }

        else
        {
          LODWORD(__p[0]) = v25 - 1;
          HIDWORD(__p[0]) = -1;
          v63 = *sub_24BCB9024(v420, __p);
          LODWORD(v439) = v446[0];
          HIDWORD(__p[0]) = v63;
          __p[1] = __PAIR64__(v33, v34);
          v64 = v457.n128_u64[0];
          if (v457.n128_u64[0] >= v457.n128_u64[1])
          {
            v68 = 0xCCCCCCCCCCCCCCCDLL * ((v457.n128_u64[0] - v456) >> 2);
            v69 = v68 + 1;
            if ((v68 + 1) > 0xCCCCCCCCCCCCCCCLL)
            {
              sub_24BC8E01C();
            }

            if (0x999999999999999ALL * ((v457.n128_u64[1] - v456) >> 2) > v69)
            {
              v69 = 0x999999999999999ALL * ((v457.n128_u64[1] - v456) >> 2);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v457.n128_u64[1] - v456) >> 2) >= 0x666666666666666)
            {
              v70 = 0xCCCCCCCCCCCCCCCLL;
            }

            else
            {
              v70 = v69;
            }

            sub_24BD866F4(&v453, v70, v68, &v456);
            v71 = v455.n128_u64[0];
            v72 = *__p;
            *(v455.n128_u64[0] + 16) = v439;
            *v71 = v72;
            v455.n128_u64[0] += 20;
            v73 = &v454[-(v457.n128_u64[0] - v456)];
            memcpy(v73, v456, v457.n128_u64[0] - v456);
            v74 = v456;
            v75 = v457.n128_u64[1];
            v456 = v73;
            v21 = v455;
            v457 = v455;
            v455.n128_u64[0] = v74;
            v455.n128_u64[1] = v75;
            v453 = v74;
            v454 = v74;
            if (v74)
            {
              v433 = v21;
              operator delete(v74);
              v21 = v433;
            }

            v65 = v21.n128_u64[0];
          }

          else
          {
            v21 = *__p;
            *(v457.n128_u64[0] + 16) = v439;
            *v64 = v21;
            v65 = &v64[1].n128_i8[4];
          }

          v457.n128_u64[0] = v65;
        }

        goto LABEL_33;
      }
    }

    else if ((v21.n128_u8[0] & 1) == 0)
    {
LABEL_33:
      v23 = *(v14 + 128);
      v22 = *(v14 + 136);
      goto LABEL_34;
    }

    v54 = *(v14 + 32);
    v55 = (v54 + 16 * *v419);
    v57 = *v55;
    v56 = v55[1];
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v56);
      v54 = *(v14 + 32);
    }

    *(*(v57 + 40) + 8 * v26) |= v428;
    v58 = (v54 + 16 * *v419);
    v60 = *v58;
    v59 = v58[1];
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v59);
    }

    LODWORD(v453) = v25 - 1;
    v61 = sub_24BCB9024(v420, &v453);
    *(*(v60 + 40) + ((*v61 >> 3) & 0x1FFFFFF8)) |= 1 << *v61;
    goto LABEL_33;
  }

LABEL_50:
  v76 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v457.n128_u64[0] - v456) >> 2));
  if (v457.n128_u64[0] == v456)
  {
    v77 = 0;
  }

  else
  {
    v77 = v76;
  }

  sub_24BD867C4(v456, v457.n128_u64[0], v77, 1, v21);
  sub_24BD87E30(&v453, (*(v14 + 112) - *(v14 + 104)) >> 2);
  v78 = (*(v14 + 112) - *(v14 + 104)) >> 2;
  LODWORD(__p[0]) = 0;
  sub_24BCA1128(v452, v78);
  __p[1] = 0;
  v439 = 0;
  __p[0] = &__p[1];
  v80 = v456;
  v79 = v457.n128_u64[0];
  if (v457.n128_u64[0] == v456)
  {
    v114 = 0;
  }

  else
  {
    v81 = 0;
    v82 = 0;
    do
    {
      v83 = &v80[20 * v81];
      v84 = v453;
      v85 = *(v83 + 2);
      do
      {
        v86 = v85;
        v85 = *&v453[4 * v85];
      }

      while (v86 != v85);
      *&v453[4 * *(v83 + 2)] = v86;
      *(v83 + 2) = v86;
      v87 = *(v83 + 3);
      do
      {
        v88 = v87;
        v87 = *(v84 + 4 * v87);
      }

      while (v88 != v87);
      *(v84 + 4 * *(v83 + 3)) = v88;
      *(v83 + 3) = v88;
      v89 = *(v83 + 2);
      if (v89 != v88)
      {
        v90 = *v425 + 24 * v89;
        v91 = *v90;
        v92 = *(v90 + 8);
        while (v91 != v92)
        {
          v93 = *v91;
          do
          {
            v94 = v93;
            v93 = *(v84 + 4 * v93);
          }

          while (v94 != v93);
          *(v84 + 4 * *v91) = v94;
          if (v94 == *(v83 + 3))
          {
            goto LABEL_87;
          }

          v91 += 2;
        }

        sub_24BCC8A84(__p, __p[1]);
        __p[1] = 0;
        v439 = 0;
        __p[0] = &__p[1];
        v95 = *v425;
        v96 = *v425 + 24 * *(v83 + 2);
        v97 = *v96;
        v98 = *(v96 + 8);
        if (*v96 != v98)
        {
          do
          {
            v99 = *v97;
            do
            {
              v100 = v99;
              v99 = *&v453[4 * v99];
            }

            while (v100 != v99);
            *&v453[4 * *v97] = v100;
            LODWORD(v451[0]) = v100;
            sub_24BD87EB8(__p, v451);
            v97 += 2;
          }

          while (v97 != v98);
          v95 = *v425;
        }

        v101 = *(v83 + 3);
        v102 = (v95 + 24 * v101);
        v104 = *v102;
        v103 = v102[1];
        if (*v102 != v103)
        {
          do
          {
            v105 = *v104;
            do
            {
              v106 = v105;
              v105 = *&v453[4 * v105];
            }

            while (v106 != v105);
            *&v453[4 * *v104] = v106;
            LODWORD(v451[0]) = v106;
            sub_24BD87EB8(__p, v451);
            v104 += 2;
          }

          while (v104 != v103);
          v101 = *(v83 + 3);
          v95 = *v425;
          v104 = *(*v425 + 24 * v101);
        }

        v107 = *(v83 + 2);
        if (v107 >= v101)
        {
          v108 = v101;
        }

        else
        {
          v108 = v107;
        }

        *(v95 + 24 * v107 + 8) = *(v95 + 24 * v107);
        *(v95 + 24 * v101 + 8) = v104;
        sub_24BD84DD4((v95 + 24 * v108), v439);
        v109 = __p[0];
        if (__p[0] != &__p[1])
        {
          do
          {
            v110 = *v425 + 24 * v108;
            LODWORD(v451[0]) = *(v109 + 7);
            WORD2(v451[0]) = 0;
            sub_24BD84D00(v110, v451);
            v111 = v109[1];
            if (v111)
            {
              do
              {
                v112 = v111;
                v111 = *v111;
              }

              while (v111);
            }

            else
            {
              do
              {
                v112 = v109[2];
                v113 = *v112 == v109;
                v109 = v112;
              }

              while (!v113);
            }

            v109 = v112;
          }

          while (v112 != &__p[1]);
        }

        *(v452[0] + v108) = *(v452[0] + *(v83 + 2)) + *(v452[0] + *(v83 + 3)) + 1;
        sub_24BD84E74((*v425 + 24 * *(v83 + 2)));
        sub_24BD84E74((*v425 + 24 * *(v83 + 3)));
        sub_24BD84F48(&v453, *(v83 + 2), *(v83 + 3));
        v80 = v456;
        v79 = v457.n128_u64[0];
        v14 = v434;
      }

LABEL_87:
      v81 = ++v82;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v79 - v80) >> 2) > v82);
    v114 = __p[1];
  }

  sub_24BCC8A84(__p, v114);
  v115 = 0xAAAAAAAAAAAAAAABLL * ((v425[1] - *v425) >> 3);
  LODWORD(__p[0]) = -1;
  sub_24BCA1128(v451, v115);
  v116 = *v425;
  v117 = v425[1];
  if (v117 == *v425)
  {
    v119 = 0;
    v120 = 0.0;
  }

  else
  {
    v118 = 0;
    v119 = 0;
    v120 = 0.0;
    v121 = 1;
    do
    {
      v122 = (v116 + 24 * v118);
      v123 = v122[1];
      if (*v122 != v123)
      {
        if (v121 - 1 == v119)
        {
          v124 = v452[0];
          v125 = v119;
        }

        else
        {
          v125 = v119;
          v126 = (v116 + 24 * v119);
          v127 = *v126;
          *v126 = *v122;
          *(v126 + 1) = v123;
          *v122 = v127;
          v128 = *(v126 + 2);
          *(v126 + 2) = v122[2];
          v122[2] = v128;
          v124 = v452[0];
          LODWORD(v126) = *(v452[0] + v119);
          *(v452[0] + v119) = *(v452[0] + v118);
          v124[v118] = v126;
          v116 = *v425;
          v117 = v425[1];
        }

        v120 = v120 + v124[v125];
        *(v451[0] + v118) = v119++;
      }

      v118 = v121;
      v62 = 0xAAAAAAAAAAAAAAABLL * ((v117 - v116) >> 3) > v121++;
    }

    while (v62);
  }

  v129 = v119;
  sub_24BCB6C18(v425, v119);
  sub_24BD84FBC(v425);
  v130 = v129;
  v416 = v129;
  if (v129)
  {
    v131 = 0;
    v120 = v120 / v130;
    v449 = 0;
    v450 = 0;
    v448 = &v449;
    do
    {
      sub_24BCC8A84(&v448, v449);
      v449 = 0;
      v450 = 0;
      v448 = &v449;
      v132 = *v425 + 24 * v131;
      v133 = *v132;
      v134 = *(v132 + 8);
      if (*v132 == v134)
      {
        v137 = 0;
      }

      else
      {
        do
        {
          v135 = *v133;
          do
          {
            v136 = v135;
            v135 = *&v453[4 * v135];
          }

          while (v136 != v135);
          *&v453[4 * *v133] = v136;
          sub_24BD87EB8(&v448, v451[0] + v136);
          v133 += 2;
        }

        while (v133 != v134);
        v137 = v450;
      }

      __p[0] = 0;
      __p[1] = 0;
      v439 = 0;
      sub_24BD84DD4(__p, v137);
      v138 = v448;
      if (v448 != &v449)
      {
        do
        {
          LODWORD(v447[0]) = *(*&v138 + 28);
          WORD2(v447[0]) = 0;
          sub_24BD84D00(__p, v447);
          v139 = *(*&v138 + 8);
          if (v139)
          {
            do
            {
              v140 = v139;
              v139 = *v139;
            }

            while (v139);
          }

          else
          {
            do
            {
              v140 = *(*&v138 + 16);
              v113 = *v140 == *&v138;
              v138 = v140;
            }

            while (!v113);
          }

          v138 = v140;
        }

        while (v140 != &v449);
      }

      v141 = *v425 + 24 * v131;
      v142 = *v141;
      if (*v141)
      {
        *(v141 + 8) = v142;
        operator delete(v142);
        *v141 = 0;
        *(v141 + 8) = 0;
        *(v141 + 16) = 0;
      }

      *v141 = *__p;
      *(v141 + 16) = v439;
      ++v131;
    }

    while (v131 != v416);
  }

  else
  {
    v449 = 0;
    v450 = 0;
    v448 = &v449;
  }

  v143 = *v425;
  v144 = v425[1];
  if (v144 != *v425)
  {
    v145 = 0;
    v146 = 0;
    v147 = v120;
    v148 = v120 * 0.1;
    do
    {
      LODWORD(v147) = *(v452[0] + v145);
      v147 = *&v147;
      if (v148 >= v147)
      {
        v149 = (v143 + 24 * v145);
        v150 = *v149;
        v151 = v149[1];
        if (*v149 != v151)
        {
          do
          {
            v152 = (*v425 + 24 * *v150);
            v154 = *v152;
            v153 = v152[1];
            if (*v152 != v153)
            {
              while (*v154 != v146)
              {
                v154 += 8;
                if (v154 == v153)
                {
                  goto LABEL_136;
                }
              }

              if (v154 != v153)
              {
                v155 = (v154 + 8);
                if ((v154 + 8) != v153)
                {
                  do
                  {
                    if (*v155 != v146)
                    {
                      v156 = *v155;
                      *(v154 + 4) = *(v155 + 2);
                      *v154 = v156;
                      v154 += 8;
                    }

                    v155 += 2;
                  }

                  while (v155 != v153);
                  v153 = v152[1];
                }
              }
            }

            if (v154 != v153)
            {
              v152[1] = v154;
            }

LABEL_136:
            v150 += 2;
          }

          while (v150 != v151);
          v143 = *v425;
          v144 = v425[1];
          v150 = *(*v425 + 24 * v145);
        }

        *(v143 + 24 * v145 + 8) = v150;
        v14 = v434;
      }

      v145 = ++v146;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v144 - v143) >> 3) > v146);
  }

  sub_24BCA18B0(v447, (*(v14 + 112) - *(v14 + 104)) >> 2);
  if (*(v14 + 112) != *(v14 + 104))
  {
    v157 = 0;
    v158 = 1;
    do
    {
      v159 = (*(v14 + 8) + 16 * *(v14 + 176));
      v161 = *v159;
      v160 = v159[1];
      if (v160)
      {
        atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v160);
      }

      *(v447[0] + v157) = *(*(v161 + 40) + 16 * v157);
      v157 = v158++;
    }

    while (v157 < (*(v14 + 112) - *(v14 + 104)) >> 2);
  }

  a9[1] = *a9;
  __p[0] = 0;
  __p[1] = 0;
  sub_24BD850B8(a9, v416, __p);
  a8[1] = *a8;
  __p[0] = 0;
  __p[1] = 0;
  sub_24BD850B8(a8, v416, __p);
  LODWORD(__p[0]) = 0;
  sub_24BCDEA88(v446, v416);
  v163 = *(v14 + 112) - *(v14 + 104);
  if (v163)
  {
    v164 = 0;
    v165 = v163 >> 2;
    v166 = v453;
    v167 = v451[0];
    v168 = *a4;
    v435 = v447[0];
    v429 = *a9;
    v169 = *a8;
    v170 = *v431;
    v171 = v446[0];
    v172 = *a4;
    do
    {
      v173 = v164;
      do
      {
        v174 = v173;
        v173 = *(v166 + 4 * v173);
      }

      while (v174 != v173);
      *(v166 + 4 * v164) = v174;
      v175 = v167[v174];
      if (v175 != -1)
      {
        v176 = vsubq_f32(*(v168 + 16 * v164), v435[v164]);
        v177 = vmulq_f32(v176, v176);
        v177.i32[3] = 0;
        v178 = expf((v459[0] * (v459[0] * vaddv_f32(*&vpaddq_f32(v177, v177)))) * -9.0);
        for (i = 0; i != 12; i += 4)
        {
          *(v429 + 16 * v175 + i) = *(v429 + 16 * v175 + i) + (*(v172 + i) * v178);
          *(v169 + 16 * v175 + i) = *(v169 + 16 * v175 + i) + (*(v170 + i) * v178);
        }

        v171[v175] = v178 + v171[v175];
      }

      ++v164;
      v172 += 16;
      v170 += 16;
    }

    while (v165 > v164);
  }

  v180 = v425;
  v181 = a9;
  if (v416)
  {
    for (j = 0; j != v416; ++j)
    {
      v162.i32[0] = *(v446[0] + j);
      if (v162.f32[0] >= 0.00000001)
      {
        *(*a9 + 16 * j) = vdivq_f32(*(*a9 + 16 * j), vdupq_lane_s32(*v162.f32, 0));
        v162 = *(*a8 + 16 * j);
        v183 = vmulq_f32(v162, v162);
        v183.i32[3] = 0;
        v184 = vpaddq_f32(v183, v183);
        v185 = vpaddq_f32(v184, v184);
        v186 = xmmword_24BFBD1C0;
        if (v185.f32[0] > 0.0)
        {
          v186 = vdivq_f32(v162, vsqrtq_f32(v185));
        }

        *(*a8 + 16 * j) = v186;
      }
    }
  }

  v424 = 0;
  v417 = 0;
  do
  {
    v421 = 0;
    do
    {
      v187 = *a5 * 0.3;
      __p[0] = 0;
      __p[1] = 0;
      v439 = 0;
      v189 = *v180;
      v188 = v180[1];
      if (v188 == *v180)
      {
        v190 = 0;
        v230 = 0;
      }

      else
      {
        v190 = 0;
        v191 = 0;
        v192 = 0;
        do
        {
          v427 = &v189[3 * v191];
          v194 = *v427;
          v193 = v427[1];
          if (v193 != *v427)
          {
            v195 = 0;
            v196 = 0;
            v197 = *v181;
            v198 = v191 << 32;
            v430 = v191 << 32;
            v432 = v191;
            do
            {
              v436 = v196;
              v199 = v194[2 * v195];
              v200 = &(*v180)[3 * v199];
              v202 = *v200;
              v201 = v200[1];
              if (v201 != *v200)
              {
                v203 = 0;
                v204 = *v181;
                v205 = 1;
                do
                {
                  v206 = v202[2 * v203];
                  if (v206 != v192)
                  {
                    v207 = *(*v181 + 16 * v206);
                    v208 = *(v204 + 16 * v199);
                    v209 = vsubq_f32(v208, v207);
                    v210 = vmulq_f32(v209, v209);
                    v210.i32[3] = 0;
                    v211 = *(v197 + 16 * v191);
                    v212 = sqrtf(vaddv_f32(*&vpaddq_f32(v210, v210)));
                    v213 = vsubq_f32(v211, v208);
                    v214 = vmulq_f32(v213, v213);
                    v214.i32[3] = 0;
                    v215 = sqrtf(vaddv_f32(*&vpaddq_f32(v214, v214)));
                    v216 = vsubq_f32(v211, v207);
                    v217 = vmulq_f32(v216, v216);
                    v217.i32[3] = 0;
                    v218 = sqrtf(vaddv_f32(*&vpaddq_f32(v217, v217)));
                    v219 = v215 >= v218 ? v215 : v218;
                    if (v212 > v219)
                    {
                      v220 = sqrtf(((((v212 + v215) + v218) * 0.5) - v218) * (((((v212 + v215) + v218) * 0.5) - v215) * ((((v212 + v215) + v218) * 0.5) * ((((v212 + v215) + v218) * 0.5) - v212))));
                      v221 = (v220 + v220) / v212;
                      if (v221 < v187)
                      {
                        v222 = v198 | LODWORD(v221);
                        v223 = v199 | (v206 << 32);
                        if (v190 >= v439)
                        {
                          v224 = (v190 - __p[0]) >> 4;
                          if ((v224 + 1) >> 60)
                          {
                            sub_24BC8E01C();
                          }

                          v225 = (v439 - __p[0]) >> 3;
                          if (v225 <= v224 + 1)
                          {
                            v225 = v224 + 1;
                          }

                          if ((v439 - __p[0]) >= 0x7FFFFFFFFFFFFFF0)
                          {
                            v226 = 0xFFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v226 = v225;
                          }

                          if (v226)
                          {
                            sub_24BCA1868(__p, v226);
                          }

                          v227 = (16 * v224);
                          *v227 = v222;
                          v227[1] = v223;
                          v190 = (16 * v224 + 16);
                          v228 = v227 - (__p[1] - __p[0]);
                          memcpy(v228, __p[0], __p[1] - __p[0]);
                          v229 = __p[0];
                          __p[0] = v228;
                          __p[1] = v190;
                          v439 = 0;
                          if (v229)
                          {
                            operator delete(v229);
                          }

                          v191 = v432;
                          v181 = a9;
                          v198 = v430;
                        }

                        else
                        {
                          *v190 = v222;
                          *(v190 + 1) = v223;
                          v190 += 16;
                        }

                        __p[1] = v190;
                        v202 = *v200;
                        v201 = v200[1];
                      }
                    }
                  }

                  v203 = v205++;
                }

                while (v203 < (v201 - v202) >> 3);
                v180 = v425;
                v194 = *v427;
                v193 = v427[1];
              }

              v195 = (v436 + 1);
              v196 = v436 + 1;
            }

            while (v195 < (v193 - v194) >> 3);
            v189 = *v180;
            v188 = v180[1];
          }

          v191 = ++v192;
        }

        while (0xAAAAAAAAAAAAAAABLL * (v188 - v189) > v192);
        v230 = __p[0];
      }

      v231 = 126 - 2 * __clz((v190 - v230) >> 4);
      if (v190 == v230)
      {
        v232 = 0;
      }

      else
      {
        v232 = v231;
      }

      sub_24BD880E4(v230, v190, v232, 1);
      v233 = __p[0];
      v437 = __p[1];
      if (__p[0] == __p[1])
      {
        v234 = 0;
        if (__p[0])
        {
          goto LABEL_280;
        }
      }

      else
      {
        v234 = 0;
        do
        {
          v235 = *v233;
          v236 = *(v233 + 1);
          v237 = *(v233 + 2);
          v238 = *(v233 + 3);
          LODWORD(v441) = v236;
          v239 = *v180;
          v240 = &(*v180)[3 * v236];
          v241 = *v240;
          v242 = *(v240 + 8);
          if (v241 != v242)
          {
            while (*v241 != v237)
            {
              v241 += 2;
              if (v241 == v242)
              {
                v241 = v242;
                break;
              }
            }
          }

          v243 = &v239[3 * v237];
          v244 = *v243;
          v245 = v243[1];
          if (v244 != v245)
          {
            while (*v244 != v238)
            {
              v244 += 2;
              if (v244 == v245)
              {
                v244 = v245;
                break;
              }
            }
          }

          v246 = &v239[3 * v238];
          v248 = *v246;
          v247 = v246[1];
          if (*v246 != v247)
          {
            while (*v248 != v236)
            {
              v248 += 2;
              if (v248 == v247)
              {
                v248 = v246[1];
                break;
              }
            }
          }

          if (v241 != v242 && v244 != v245)
          {
            v249 = *a9;
            v250 = *(*a9 + 16 * v238);
            v251 = *(*a9 + 16 * v237);
            v252 = vsubq_f32(v251, v250);
            v253 = vmulq_f32(v252, v252);
            v253.i32[3] = 0;
            v254 = sqrtf(vaddv_f32(*&vpaddq_f32(v253, v253)));
            v255 = *(*a9 + 16 * v236);
            v256 = vsubq_f32(v255, v251);
            v257 = vmulq_f32(v256, v256);
            v257.i32[3] = 0;
            v258 = vsubq_f32(v255, v250);
            v259 = vmulq_f32(v258, v258);
            v259.i32[3] = 0;
            v260 = sqrtf(vaddv_f32(*&vpaddq_f32(v257, v257)));
            v261 = sqrtf(vaddv_f32(*&vpaddq_f32(v259, v259)));
            v262 = sqrtf(((((v254 + v260) + v261) * 0.5) - v261) * (((((v254 + v260) + v261) * 0.5) - v260) * ((((v254 + v260) + v261) * 0.5) * ((((v254 + v260) + v261) * 0.5) - v254))));
            if (vabds_f32((v262 + v262) / v254, v235) <= 0.00000001)
            {
              if (v260 < v187 || v261 < v187)
              {
                if (v260 >= v187)
                {
                  v264 = v238;
                }

                else
                {
                  v264 = v237;
                }

                v265.i64[0] = 0x3F0000003F000000;
                v265.i64[1] = 0x3F0000003F000000;
                *(v249 + 16 * v236) = vmulq_f32(vaddq_f32(v255, *(v249 + 16 * v264)), v265);
                v445 = v264;
                *(*a8 + 16 * v236) = vmulq_f32(vaddq_f32(*(*a8 + 16 * v264), *(*a8 + 16 * v236)), v265);
                v443[1] = 0;
                v444 = 0;
                v443[0] = &v443[1];
                v266 = *v180;
                v267 = &(*v180)[3 * v264];
                v269 = *v267;
                v268 = *(v267 + 8);
                if (*v267 != v268)
                {
                  do
                  {
                    if (*v269 != v441)
                    {
                      sub_24BD87EB8(v443, v269);
                      v266 = *v180;
                      v270 = &(*v180)[3 * *v269];
                      v271 = *v270;
                      v272 = *(v270 + 8);
                      while (v271 != v272)
                      {
                        if (*v271 == v445)
                        {
                          *v271 = v441;
                        }

                        v271 += 2;
                      }
                    }

                    v269 += 2;
                  }

                  while (v269 != v268);
                  LODWORD(v236) = v441;
                }

                v285 = &v266[3 * v236];
                v287 = *v285;
                v286 = v285[1];
                while (v287 != v286)
                {
                  sub_24BD87EB8(v443, v287);
                  v287 += 2;
                }

                sub_24BD88F98(v443, &v441);
                sub_24BD88F98(v443, &v445);
                v288 = *v180;
                (*v180)[3 * v445 + 1] = (*v180)[3 * v445];
                v288[3 * v441 + 1] = v288[3 * v441];
                v289 = v443[0];
                if (v443[0] != &v443[1])
                {
                  do
                  {
                    v290 = &(*v180)[3 * v441];
                    v442.i32[0] = *(v289 + 7);
                    v442.i16[2] = 0;
                    sub_24BD84D00(v290, &v442);
                    v291 = v289[1];
                    if (v291)
                    {
                      do
                      {
                        v292 = v291;
                        v291 = *v291;
                      }

                      while (v291);
                    }

                    else
                    {
                      do
                      {
                        v292 = v289[2];
                        v113 = *v292 == v289;
                        v289 = v292;
                      }

                      while (!v113);
                    }

                    v289 = v292;
                  }

                  while (v292 != &v443[1]);
                }

                sub_24BCC8A84(v443, v443[1]);
              }

              else
              {
                v273 = *a8;
                v274 = vaddq_f32(v250, v251);
                v275.i64[0] = 0x3F0000003F000000;
                v275.i64[1] = 0x3F0000003F000000;
                *(v249 + 16 * v236) = vmulq_f32(v274, v275);
                v276 = vaddq_f32(*(v273 + 16 * v238), *(v273 + 16 * v237));
                v277 = vmulq_f32(v276, v276);
                v277.i32[3] = 0;
                v278 = vpaddq_f32(v277, v277);
                v279 = vpaddq_f32(v278, v278);
                v280 = xmmword_24BFBD1C0;
                if (v279.f32[0] > 0.0)
                {
                  v280 = vdivq_f32(v276, vsqrtq_f32(v279));
                }

                *(*a8 + 16 * v236) = v280;
                v281 = *v180;
                v282 = &(*v180)[3 * v237];
                v284 = *v282;
                v283 = *(v282 + 8);
                if (*v282 != v283)
                {
                  while (*v284 != v238)
                  {
                    v284 += 2;
                    if (v284 == v283)
                    {
                      v284 = *(v282 + 8);
                      goto LABEL_257;
                    }
                  }

                  if (v284 != v283)
                  {
                    v293 = (v284 + 2);
                    if (v284 + 2 != v283)
                    {
                      do
                      {
                        if (*v293 != v238)
                        {
                          v294 = *v293;
                          *(v284 + 2) = *(v293 + 2);
                          *v284 = v294;
                          v284 += 2;
                        }

                        v293 += 8;
                      }

                      while (v293 != v283);
                      v281 = *v180;
                    }
                  }
                }

LABEL_257:
                if (v284 != v281[3 * v237 + 1])
                {
                  v295 = v281[3 * v237 + 1];
                  v296 = *(v282 + 8);
                  v297 = v296 - v295;
                  if (v296 != v295)
                  {
                    memmove(v284, v295, v297 - 2);
                    v281 = *v180;
                  }

                  *(v282 + 8) = v284 + v297;
                }

                v298 = &v281[3 * v238];
                v300 = *v298;
                v299 = v298[1];
                if (*v298 != v299)
                {
                  while (*v300 != v237)
                  {
                    v300 += 2;
                    if (v300 == v299)
                    {
                      v300 = v298[1];
                      goto LABEL_271;
                    }
                  }

                  if (v300 != v299)
                  {
                    v301 = (v300 + 2);
                    if (v300 + 2 != v299)
                    {
                      do
                      {
                        if (*v301 != v237)
                        {
                          v302 = *v301;
                          *(v300 + 2) = *(v301 + 2);
                          *v300 = v302;
                          v300 += 2;
                        }

                        v301 += 8;
                      }

                      while (v301 != v299);
                      v281 = *v180;
                    }
                  }
                }

LABEL_271:
                v303 = v281[3 * v238 + 1];
                if (v300 != v303)
                {
                  v304 = v303;
                  v305 = v298[1];
                  v306 = v305 - v304;
                  if (v305 != v304)
                  {
                    memmove(v300, v304, v306 - 2);
                  }

                  v298[1] = (v300 + v306);
                }

                if (v248 == v247)
                {
                  v307 = &(*v180)[3 * v441];
                  LODWORD(v443[0]) = v238;
                  WORD2(v443[0]) = 0;
                  sub_24BD84D00(v307, v443);
                  v308 = &(*v180)[3 * v238];
                  LODWORD(v443[0]) = v441;
                  WORD2(v443[0]) = 0;
                  sub_24BD84D00(v308, v443);
                }
              }

              ++v424;
              v234 = 1;
              v421 = 1;
            }
          }

          v233 += 4;
        }

        while (v233 != v437);
        v233 = __p[0];
        v181 = a9;
        if (__p[0])
        {
LABEL_280:
          __p[1] = v233;
          operator delete(v233);
        }
      }
    }

    while ((v234 & 1) != 0);
    __p[0] = 0;
    __p[1] = 0;
    v439 = 0;
    v310 = *v180;
    v309 = v180[1];
    if (v309 == *v180)
    {
      v311 = 0;
      v349 = 0;
    }

    else
    {
      v311 = 0;
      v312 = 0;
      do
      {
        v313 = &v310[3 * v312];
        v315 = *v313;
        v314 = v313[1];
        if (v314 != *v313)
        {
          v316 = 0;
          v317 = 0;
          v318 = *a9;
          v319 = (v314 - *v313) >> 3;
          do
          {
            v320 = 0;
            v321 = 0;
            v322 = 0;
            v323 = v315[2 * v316];
            v324 = *a9;
            v325 = &(*v180)[3 * v323];
            v326 = 0.0;
            do
            {
              v327 = v315[2 * v320];
              if (v327 != v323)
              {
                v328 = *v325;
                v329 = *(v325 + 8);
                if (*v325 != v329)
                {
                  while (*v328 != v327)
                  {
                    v328 += 2;
                    if (v328 == v329)
                    {
                      goto LABEL_297;
                    }
                  }
                }

                if (v328 != v329)
                {
                  ++v321;
                  v330 = *(v324 + 16 * v327);
                  v331 = vsubq_f32(v330, *(v318 + 16 * v312));
                  v332 = vmulq_f32(v331, v331);
                  v332.i32[3] = 0;
                  v333 = vsubq_f32(v330, *(v324 + 16 * v323));
                  v334 = vmulq_f32(v333, v333);
                  v334.i32[3] = 0;
                  v326 = v326 + (sqrtf(vaddv_f32(*&vpaddq_f32(v332, v332))) + sqrtf(vaddv_f32(*&vpaddq_f32(v334, v334))));
                }
              }

LABEL_297:
              v320 = ++v322;
            }

            while (v319 > v322);
            if (v321 == 2)
            {
              v335 = (v326 * 0.25) * 1.4142;
              v336 = vsubq_f32(*(v318 + 16 * v312), *(v324 + 16 * v323));
              v337 = vmulq_f32(v336, v336);
              v337.i32[3] = 0;
              v338 = sqrtf(vaddv_f32(*&vpaddq_f32(v337, v337)));
              v339 = v338 - v335;
              if (v335 >= v338)
              {
                v335 = v338;
              }

              v340 = fabsf(v339 / v335);
              if (v311 >= v439)
              {
                v341 = __p[0];
                v342 = v311 - __p[0];
                v343 = 0xAAAAAAAAAAAAAAABLL * ((v311 - __p[0]) >> 2);
                v344 = v343 + 1;
                if (v343 + 1 > 0x1555555555555555)
                {
                  sub_24BC8E01C();
                }

                if (0x5555555555555556 * ((v439 - __p[0]) >> 2) > v344)
                {
                  v344 = 0x5555555555555556 * ((v439 - __p[0]) >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v439 - __p[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v345 = 0x1555555555555555;
                }

                else
                {
                  v345 = v344;
                }

                if (v345)
                {
                  sub_24BCDC764(__p, v345);
                }

                v346 = 4 * ((v311 - __p[0]) >> 2);
                *v346 = v340;
                *(v346 + 4) = v312;
                *(v346 + 8) = v323;
                v311 = (12 * v343 + 12);
                v347 = (12 * v343 - v342);
                memcpy(v347, v341, v342);
                v348 = __p[0];
                __p[0] = v347;
                __p[1] = v311;
                v439 = 0;
                if (v348)
                {
                  operator delete(v348);
                }
              }

              else
              {
                *v311 = v340;
                *(v311 + 1) = v312;
                *(v311 + 2) = v323;
                v311 += 3;
              }

              __p[1] = v311;
              v315 = *v313;
              v314 = v313[1];
            }

            v319 = (v314 - v315) >> 3;
            v316 = ++v317;
          }

          while (v319 > v317);
          v310 = *v180;
          v309 = v180[1];
        }

        ++v312;
      }

      while (v312 < 0xAAAAAAAAAAAAAAABLL * (v309 - v310));
      v349 = __p[0];
    }

    v350 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v311 - v349));
    if (v311 == v349)
    {
      v351 = 0;
    }

    else
    {
      v351 = v350;
    }

    sub_24BD8901C(v349, v311, v351, 1);
    v353 = __p[0];
    v352 = __p[1];
    if (__p[0] != __p[1])
    {
      do
      {
        v354 = v353[1];
        v355 = *v180;
        v356 = &(*v180)[3 * v354];
        v357 = v356[1];
        if (v357 != *v356)
        {
          v358 = 0;
          v359 = 0;
          v360 = v353[2];
          v361 = &v355[3 * v360];
          v362 = *v361;
          v363 = v361[1];
          do
          {
            v364 = v362;
            if (v362 != v363)
            {
              v364 = v362;
              while (*v364 != *(*v356 + 8 * v358))
              {
                v364 += 2;
                if (v364 == v363)
                {
                  v364 = v363;
                  break;
                }
              }
            }

            if (v364 != v363)
            {
              ++v359;
            }

            ++v358;
          }

          while (&v357[-*v356] >> 3 > v358);
          if (v359 == 2)
          {
            v365 = *v356;
            while (*v365 != v360)
            {
              v365 += 8;
              if (v365 == v357)
              {
                goto LABEL_345;
              }
            }

            if (v365 != v357)
            {
              v366 = v365 + 8;
              if (v365 + 8 != v357)
              {
                do
                {
                  if (*v366 != v360)
                  {
                    v367 = *v366;
                    *(v365 + 2) = *(v366 + 2);
                    *v365 = v367;
                    v365 += 8;
                  }

                  v366 += 8;
                }

                while (v366 != v357);
                v355 = *v180;
                v368 = *v356;
              }
            }

            v357 = v365;
LABEL_345:
            v369 = v355[3 * v354 + 1];
            if (v357 != v369)
            {
              v370 = v357;
              v371 = v356[1];
              v372 = v371 - v369;
              if (v371 != v369)
              {
                memmove(v370, v355[3 * v354 + 1], v372 - 2);
                v355 = *v180;
              }

              v356[1] = &v370[v372];
            }

            v373 = &v355[3 * v360];
            v375 = *v373;
            v374 = v373[1];
            if (*v373 != v374)
            {
              while (*v375 != v354)
              {
                v375 += 2;
                if (v375 == v374)
                {
                  v375 = v373[1];
                  goto LABEL_359;
                }
              }

              if (v375 != v374)
              {
                v376 = (v375 + 2);
                if (v375 + 2 != v374)
                {
                  do
                  {
                    if (*v376 != v354)
                    {
                      v377 = *v376;
                      *(v375 + 2) = *(v376 + 2);
                      *v375 = v377;
                      v375 += 2;
                    }

                    v376 += 8;
                  }

                  while (v376 != v374);
                  v355 = *v180;
                }
              }
            }

LABEL_359:
            v378 = v355[3 * v360 + 1];
            if (v375 != v378)
            {
              v379 = v378;
              v380 = v373[1];
              v381 = v380 - v379;
              if (v380 != v379)
              {
                memmove(v375, v379, v381 - 2);
              }

              v373[1] = (v375 + v381);
            }

            ++v417;
            v421 = 1;
          }
        }

        v353 += 3;
      }

      while (v353 != v352);
      v353 = __p[0];
    }

    if (v353)
    {
      __p[1] = v353;
      operator delete(v353);
    }

    v181 = a9;
  }

  while ((v421 & 1) != 0);
  *a10 = v417;
  *a11 = v424;
  v382 = *v180;
  v383 = v180[1];
  if (*v180 != v383)
  {
    do
    {
      __p[1] = 0;
      v439 = 0;
      __p[0] = &__p[1];
      v443[1] = 0;
      v444 = 0;
      v443[0] = 0;
      sub_24BD84DD4(v443, (v382[1] - *v382) >> 3);
      v384 = *v382;
      v385 = v382[1];
      while (v384 != v385)
      {
        sub_24BD87EB8(__p, v384);
        if (v386)
        {
          v387 = v443[1];
          if (v443[1] >= v444)
          {
            v389 = (v443[1] - v443[0]) >> 3;
            if ((v389 + 1) >> 61)
            {
              sub_24BC8E01C();
            }

            v390 = (v444 - v443[0]) >> 2;
            if (v390 <= v389 + 1)
            {
              v390 = v389 + 1;
            }

            if ((v444 - v443[0]) >= 0x7FFFFFFFFFFFFFF8)
            {
              v391 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v391 = v390;
            }

            if (v391)
            {
              sub_24BD8677C(v443, v391);
            }

            *(8 * v389) = *v384;
            v388 = (8 * v389 + 8);
            v392 = (8 * v389 - (v443[1] - v443[0]));
            memcpy(v392, v443[0], v443[1] - v443[0]);
            v393 = v443[0];
            v443[0] = v392;
            v443[1] = v388;
            v444 = 0;
            if (v393)
            {
              operator delete(v393);
            }

            v180 = v425;
          }

          else
          {
            *v443[1] = *v384;
            v388 = v387 + 8;
          }

          v443[1] = v388;
        }

        v384 += 2;
      }

      sub_24BD84E74(v443);
      v394 = *v382;
      *v382 = v443[0];
      v382[1] = v443[1];
      v395 = v382[2];
      v382[2] = v444;
      v443[0] = v394;
      v444 = v395;
      v181 = a9;
      if (v394)
      {
        v443[1] = v394;
        operator delete(v394);
      }

      sub_24BCC8A84(__p, __p[1]);
      v382 += 3;
    }

    while (v382 != v383);
  }

  if (v416)
  {
    v396 = v181;
    v397 = 0;
    v398 = 1;
    do
    {
      v442 = 0u;
      *v443 = 0u;
      v441 = *(*v396 + v397);
      v399 = (*a8 + v397);
      v400 = *v399;
      v401 = v399[1];
      v402 = v399[2];
      v403 = v402 * v402;
      if (fabsf(*v399) <= fabsf(v401))
      {
        v408 = 1.0 / sqrtf(v403 + (v401 * v401));
        *&v409 = v402 * v408;
        v406 = -(v401 * v408);
        v407.i32[0] = 0;
        v407.i32[3] = 0;
        v407.i32[1] = v409;
      }

      else
      {
        v404 = 1.0 / sqrtf(v403 + (v400 * v400));
        *&v405 = v402 * v404;
        v406 = -(v400 * v404);
        v407.i32[3] = 0;
        v407.i64[0] = v405;
      }

      *&v407.i32[2] = v406;
      v442 = v407;
      *v443 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v407, vextq_s8(v407, v407, 0xCuLL)), v407), vuzp2q_s32(vextq_s8(*v399, *v399, 4uLL), *v399)), vzip2q_s32(vzip1q_s32(*v399, vextq_s8(*v399, *v399, 0xCuLL)), *v399), vuzp2q_s32(vextq_s8(v407, v407, 4uLL), v407));
      v410 = &(*v180)[v398];
      v411 = *(v410 - 1);
      v412 = *v410;
      v413 = 126 - 2 * __clz((*v410 - v411) >> 3);
      __p[0] = &v442;
      __p[1] = v443;
      v396 = a9;
      v439 = &v441;
      v440 = a9;
      if (v412 == v411)
      {
        v414 = 0;
      }

      else
      {
        v414 = v413;
      }

      sub_24BD8A2EC(v411, v412, __p, v414, 1);
      v397 += 16;
      v398 += 3;
    }

    while (16 * v416 != v397);
  }

  if (v446[0])
  {
    v446[1] = v446[0];
    operator delete(v446[0]);
  }

  if (v447[0])
  {
    v447[1] = v447[0];
    operator delete(v447[0]);
  }

  sub_24BCC8A84(&v448, v449);
  if (v451[0])
  {
    v451[1] = v451[0];
    operator delete(v451[0]);
  }

  if (v452[0])
  {
    v452[1] = v452[0];
    operator delete(v452[0]);
  }

  sub_24BD866B0(&v453);
  if (v456)
  {
    v457.n128_u64[0] = v456;
    operator delete(v456);
  }

  if (v458)
  {
    operator delete(v458);
  }

  return 1;
}