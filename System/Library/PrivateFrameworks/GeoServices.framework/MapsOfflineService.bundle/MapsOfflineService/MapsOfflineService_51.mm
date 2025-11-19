void *sub_360B9C(void *a1)
{
  v2 = a1[975];
  if (v2)
  {
    a1[976] = v2;
    operator delete(v2);
  }

  v3 = a1[972];
  if (v3)
  {
    v4 = a1[973];
    v5 = a1[972];
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 32);
        if (v7)
        {
          v8 = *(v4 - 24);
          v6 = *(v4 - 32);
          if (v8 != v7)
          {
            do
            {
              v9 = *(v8 - 24);
              if (v9)
              {
                *(v8 - 16) = v9;
                operator delete(v9);
              }

              v8 -= 32;
            }

            while (v8 != v7);
            v6 = *(v4 - 32);
          }

          *(v4 - 24) = v7;
          operator delete(v6);
        }

        v4 -= 48;
      }

      while (v4 != v3);
      v5 = a1[972];
    }

    a1[973] = v3;
    operator delete(v5);
  }

  v10 = a1[488];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = a1[486];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[1];
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  return a1;
}

void sub_360D6C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_360DCC(uint64_t a1)
{
  *(a1 + 224) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 304) = 1065353216;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0x8000000080000000;
  *(a1 + 368) = 0x7FFFFFFF;
  *(a1 + 372) = 0u;
  *(a1 + 388) = 0u;
  *(a1 + 404) = 0u;
  *(a1 + 420) = 0u;
  *(a1 + 436) = 0u;
  *(a1 + 452) = 0u;
  *(a1 + 468) = 0u;
  *(a1 + 484) = 0u;
  *(a1 + 500) = 0u;
  *(a1 + 516) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0x8000000080000000;
  *(a1 + 552) = 0x7FFFFFFF;
  *(a1 + 658) = 0;
  *(a1 + 660) = 0;
  *(a1 + 624) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 648) = 0x3E4CCCCD3F000000;
  *(a1 + 664) = 0xFFFFFFFF00000000;
  *(a1 + 672) = 255;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 32;
  *(a1 + 720) = 0;
  *(a1 + 632) = 16;
  *(a1 + 640) = 6;
  *(a1 + 656) = 256;
  *(a1 + 704) = 0xFFFFFFFF00000000;
  *(a1 + 712) = 255;
  *(a1 + 716) = 0x7FFFFFFF;
  v2 = malloc_type_malloc(0x200uLL, 0x100004003A0DE81uLL);
  *(a1 + 720) = v2;
  v3 = *(a1 + 696);
  if (v3)
  {
    v4 = 16 * v3;
    do
    {
      *v2++ = *(a1 + 704);
      v4 -= 16;
    }

    while (v4);
  }

  if ((atomic_load_explicit(&qword_2732E58, memory_order_acquire) & 1) == 0)
  {
    sub_21E13C0();
  }

  v6 = qword_2732E50;
  v7 = 255;
  sub_361114(a1 + 632, &v6);
  return a1;
}

void sub_360F58(_Unwind_Exception *a1)
{
  v5 = *(v1 + 720);
  if (v5)
  {
    free(v5);
    sub_3617B8((v1 + 608));
    if ((*(v1 + 607) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 583) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_3617B8((v1 + 608));
    if ((*(v1 + 607) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 584));
  if ((*(v1 + 583) & 0x80000000) == 0)
  {
LABEL_4:
    v6 = *(v1 + 520);
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  operator delete(*(v1 + 560));
  v6 = *(v1 + 520);
  if (!v6)
  {
LABEL_6:
    sub_3618B4(v1 + 496);
    sub_361A20((v1 + 424));
    sub_334D18((v1 + 360));
    sub_361BC8((v1 + 336));
    v7 = *v3;
    if (*v3)
    {
      *(v1 + 320) = v7;
      operator delete(v7);
      sub_361C60((v1 + 272));
      v8 = *(v1 + 248);
      if (!v8)
      {
LABEL_8:
        sub_361CC8(v2);
        v9 = *(v1 + 200);
        if (!v9)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }
    }

    else
    {
      sub_361C60((v1 + 272));
      v8 = *(v1 + 248);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    *(v1 + 256) = v8;
    operator delete(v8);
    sub_361CC8(v2);
    v9 = *(v1 + 200);
    if (!v9)
    {
LABEL_9:
      v10 = *(v1 + 176);
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v1 + 208) = v9;
    operator delete(v9);
    v10 = *(v1 + 176);
    if (!v10)
    {
LABEL_10:
      sub_361D90((v1 + 152));
      v11 = *(v1 + 128);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v1 + 184) = v10;
    operator delete(v10);
    sub_361D90((v1 + 152));
    v11 = *(v1 + 128);
    if (!v11)
    {
LABEL_11:
      v12 = *(v1 + 104);
      if (!v12)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v1 + 136) = v11;
    operator delete(v11);
    v12 = *(v1 + 104);
    if (!v12)
    {
LABEL_12:
      v13 = *(v1 + 80);
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v1 + 112) = v12;
    operator delete(v12);
    v13 = *(v1 + 80);
    if (!v13)
    {
LABEL_13:
      v14 = *(v1 + 56);
      if (!v14)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v1 + 88) = v13;
    operator delete(v13);
    v14 = *(v1 + 56);
    if (!v14)
    {
LABEL_14:
      v15 = *(v1 + 32);
      if (!v15)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(v1 + 64) = v14;
    operator delete(v14);
    v15 = *(v1 + 32);
    if (!v15)
    {
LABEL_15:
      v16 = *(v1 + 8);
      if (!v16)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v1 + 40) = v15;
    operator delete(v15);
    v16 = *(v1 + 8);
    if (!v16)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }

LABEL_30:
    *(v1 + 16) = v16;
    operator delete(v16);
    _Unwind_Resume(a1);
  }

LABEL_5:
  *(v1 + 528) = v6;
  operator delete(v6);
  goto LABEL_6;
}

void sub_361114(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    sub_361230(&v16, a1, 0x20uLL);
    v5 = *a1;
    v4 = *(a1 + 16);
    v6 = v17;
    *a1 = v16;
    *(a1 + 16) = v6;
    v16 = v5;
    v17 = v4;
    v24 = *(a1 + 32);
    v7 = v24;
    v25 = *(a1 + 40);
    v8 = v25;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    v18 = v7;
    v19 = v8;
    v9 = *(a1 + 48);
    *(a1 + 48) = v20;
    v20 = v9;
    v10 = *(a1 + 64);
    v11 = v21;
    *(a1 + 64) = v21;
    v21 = v10;
    v12 = *(a1 + 80);
    v13 = *(a1 + 84);
    *&v4 = *(a1 + 72);
    *(a1 + 72) = v22;
    *&v22 = v4;
    *(&v22 + 1) = __PAIR64__(v13, v12);
    v14 = *(a1 + 88);
    *(a1 + 88) = v23;
    v23 = v14;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v11)));
    *(a1 + 24) = 0;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v17, v10)));
    BYTE8(v17) = 0;
    if (v14)
    {
      free(v14);
    }
  }

  *(a1 + 26) = 1;
  v15 = *a2;
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 32) = v15;
}

float sub_361230(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_361374(a1, a2, a3);
  }

  else
  {
    v6 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 = *(a1 + 16) * v6;
      if (*(a2 + 56) - *(a2 + 48) < v7)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v6 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v6 *= 2;
      }

      while (v6 < a3);
    }

    *(a1 + 64) = v6;
    result = *(a1 + 20) * v6;
    *a1 = v7;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_361374(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 56) - *(a2 + 48);
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_3616D0(a1, v6);
  v7 = *(a2 + 64);
  if (v7)
  {
    v8 = *(a2 + 72);
    v9 = *(a2 + 76);
    v10 = *(a2 + 80);
    v11 = *(a2 + 81);
    if (*(a2 + 48))
    {
      v12 = 16 * v7;
      v13 = *(a2 + 88);
      while (v8 == *v13 && v9 == v13[1] && *(v13 + 8) == v10 && v11 == *(v13 + 9) || *(a2 + 32) == *v13 && *(a2 + 36) == v13[1] && *(v13 + 8) == *(a2 + 40) && *(a2 + 41) == *(v13 + 9))
      {
        v13 += 4;
        v12 -= 16;
        if (!v12)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v26 = 16 * v7;
      v13 = *(a2 + 88);
      while (v8 == *v13 && v9 == v13[1] && *(v13 + 8) == v10 && v11 == *(v13 + 9))
      {
        v13 += 4;
        v26 -= 16;
        if (!v26)
        {
          goto LABEL_53;
        }
      }
    }
  }

  else
  {
    v13 = *(a2 + 88);
  }

  v14 = *(a2 + 88) + 16 * v7;
  if (v13 != v14)
  {
    do
    {
      v15 = 0;
      v16 = (v13[1] + 2654435769 + (*v13 << 6) + (*v13 >> 2)) ^ *v13;
      v17 = (*(v13 + 8) + 2654435769 + (v16 << 6) + (v16 >> 2)) ^ v16;
      for (i = (*(v13 + 9) + 2654435769 + (v17 << 6) + (v17 >> 2)) ^ v17; ; i = v15 + v19)
      {
        v19 = i & (*(a1 + 64) - 1);
        v20 = *(a1 + 88) + 16 * v19;
        if (*(a1 + 72) == *v20 && *(a1 + 76) == *(v20 + 4) && *(v20 + 8) == *(a1 + 80) && *(a1 + 81) == *(v20 + 9))
        {
          break;
        }

        ++v15;
      }

      v21 = *v13;
      v13 += 4;
      *v20 = v21;
      ++*(a1 + 56);
      if (v13 != v14)
      {
        v22 = *(a2 + 72);
        v23 = *(a2 + 76);
        v24 = *(a2 + 80);
        v25 = *(a2 + 81);
        if (*(a2 + 48))
        {
          do
          {
            if ((v22 != *v13 || v23 != v13[1] || *(v13 + 8) != v24 || v25 != *(v13 + 9)) && (*(a2 + 32) != *v13 || *(a2 + 36) != v13[1] || *(v13 + 8) != *(a2 + 40) || *(a2 + 41) != *(v13 + 9)))
            {
              break;
            }

            v13 += 4;
          }

          while (v13 != v14);
        }

        else
        {
          do
          {
            if (v22 != *v13)
            {
              break;
            }

            if (v23 != v13[1])
            {
              break;
            }

            if (*(v13 + 8) != v24)
            {
              break;
            }

            if (v25 != *(v13 + 9))
            {
              break;
            }

            v13 += 4;
          }

          while (v13 != v14);
        }
      }
    }

    while (v13 != (*(a2 + 88) + 16 * *(a2 + 64)));
  }

LABEL_53:
  ++*(a1 + 28);
}

uint64x2_t sub_3616D0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    if (*(a1 + 64) == a2)
    {
      goto LABEL_7;
    }

    v5 = malloc_type_realloc(*(a1 + 88), 16 * a2, 0x100004003A0DE81uLL);
    if (!v5)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v5 = malloc_type_malloc(16 * a2, 0x100004003A0DE81uLL);
  }

  *(a1 + 88) = v5;
  v4 = v5;
LABEL_7:
  if (a2)
  {
    v6 = 16 * a2;
    do
    {
      *v4++ = *(a1 + 72);
      v6 -= 16;
    }

    while (v6);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

void ***sub_3617B8(void ***a1)
{
  if (*a1)
  {
    sub_3617F4(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_3617F4(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = *(v4 - 5);
      if (v5)
      {
        *(v4 - 4) = v5;
        operator delete(v5);
      }

      if (*(v4 - 49) < 0)
      {
        operator delete(*(v4 - 9));
        if ((*(v4 - 73) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v4 - 105) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v4 - 73) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v4 - 12));
      if ((*(v4 - 105) & 0x80000000) == 0)
      {
LABEL_9:
        v6 = v4 - 19;
        if (*(v4 - 129) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_3;
      }

LABEL_13:
      operator delete(*(v4 - 16));
      v6 = v4 - 19;
      if (*(v4 - 129) < 0)
      {
LABEL_14:
        operator delete(*v6);
      }

LABEL_3:
      v4 = v6;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_3618B4(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_361918(a1, i))
    {
      i -= 312;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_361918(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 288);
  if (v3)
  {
    *(a2 + 296) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 264);
  if (v4)
  {
    *(a2 + 272) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 240);
  if (v5)
  {
    *(a2 + 248) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 216);
  if (v6)
  {
    *(a2 + 224) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 192);
  if (v7)
  {
    *(a2 + 200) = v7;
    operator delete(v7);
  }

  v8 = *(a2 + 168);
  if (v8)
  {
    *(a2 + 176) = v8;
    operator delete(v8);
  }

  v9 = *(a2 + 144);
  if (v9)
  {
    *(a2 + 152) = v9;
    operator delete(v9);
  }

  v10 = *(a2 + 120);
  if (v10)
  {
    *(a2 + 128) = v10;
    operator delete(v10);
  }

  v11 = *(a2 + 96);
  if (v11)
  {
    *(a2 + 104) = v11;
    operator delete(v11);
  }

  v12 = *(a2 + 72);
  if (v12)
  {
    *(a2 + 80) = v12;
    operator delete(v12);
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    *(a2 + 56) = v13;
    operator delete(v13);
  }

  v14 = *(a2 + 24);
  if (v14)
  {
    *(a2 + 32) = v14;
    operator delete(v14);
  }

  if (*(a2 + 23) < 0)
  {
    v15 = *a2;

    operator delete(v15);
  }
}

void **sub_361A20(void **a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 4);
        if (v6)
        {
          v7 = *(v3 - 3);
          v5 = *(v3 - 4);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 25);
              v7 -= 6;
              if (v8 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v5 = *(v3 - 4);
          }

          *(v3 - 3) = v6;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  v9 = a1[3];
  if (v9)
  {
    v10 = a1[4];
    v11 = a1[3];
    if (v10 != v9)
    {
      do
      {
        v13 = *(v10 - 4);
        if (v13)
        {
          v14 = *(v10 - 3);
          v12 = *(v10 - 4);
          if (v14 != v13)
          {
            do
            {
              v15 = *(v14 - 25);
              v14 -= 6;
              if (v15 < 0)
              {
                operator delete(*v14);
              }
            }

            while (v14 != v13);
            v12 = *(v10 - 4);
          }

          *(v10 - 3) = v13;
          operator delete(v12);
        }

        v10 -= 40;
      }

      while (v10 != v9);
      v11 = a1[3];
    }

    a1[4] = v9;
    operator delete(v11);
  }

  v16 = *a1;
  if (*a1)
  {
    v17 = a1[1];
    v18 = *a1;
    if (v17 != v16)
    {
      do
      {
        v20 = *(v17 - 4);
        if (v20)
        {
          v21 = *(v17 - 3);
          v19 = *(v17 - 4);
          if (v21 != v20)
          {
            do
            {
              v22 = *(v21 - 25);
              v21 -= 6;
              if (v22 < 0)
              {
                operator delete(*v21);
              }
            }

            while (v21 != v20);
            v19 = *(v17 - 4);
          }

          *(v17 - 3) = v20;
          operator delete(v19);
        }

        v17 -= 40;
      }

      while (v17 != v16);
      v18 = *a1;
    }

    a1[1] = v16;
    operator delete(v18);
  }

  return a1;
}

void ***sub_361BC8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 8;
        if (*(v3 - 41) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 8;
        if (*(v3 - 41) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

void **sub_361C60(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_303C44(a1, (v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void **sub_361CC8(void **a1)
{
  if (*a1)
  {
    sub_361D04(a1);
    operator delete(*a1);
  }

  return a1;
}

void *sub_361D04(void *result)
{
  v1 = result;
  v3 = *result;
  for (i = result[1]; i != v3; result = sub_2C0F28(i))
  {
    sub_33D080(i - 192);
    v4 = *(i - 216);
    if (v4)
    {
      v5 = *(i - 208);
      v6 = *(i - 216);
      if (v5 != v4)
      {
        do
        {
          v5 = sub_33D5A0(v5 - 176);
        }

        while (v5 != v4);
        v6 = *(i - 216);
      }

      *(i - 208) = v4;
      operator delete(v6);
    }

    i -= 704;
  }

  v1[1] = v3;
  return result;
}

void **sub_361D90(void **a1)
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
        v3 = sub_2C0F28(v3 - 464);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_361DEC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 720);
  if (v2)
  {
    free(v2);
  }

  v3 = *(v1 + 608);
  if (v3)
  {
    sub_3617F4(v1 + 608, v3);
    operator delete(*(v1 + 608));
  }

  if (*(v1 + 607) < 0)
  {
    operator delete(*(v1 + 584));
    if ((*(v1 + 583) & 0x80000000) == 0)
    {
LABEL_7:
      v4 = *(v1 + 520);
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v1 + 583) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(v1 + 560));
  v4 = *(v1 + 520);
  if (v4)
  {
LABEL_8:
    *(v1 + 528) = v4;
    operator delete(v4);
  }

LABEL_9:
  v5 = *(v1 + 496);
  if (v5)
  {
    for (i = *(v1 + 504); i != v5; sub_361918(v1 + 496, i))
    {
      i -= 312;
    }

    *(v1 + 504) = v5;
    operator delete(*(v1 + 496));
  }

  sub_361A20((v1 + 424));
  v7 = *(v1 + 400);
  if (v7)
  {
    *(v1 + 408) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 376);
  if (v8)
  {
    *(v1 + 384) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 336);
  if (v9)
  {
    v10 = *(v1 + 344);
    v11 = *(v1 + 336);
    if (v10 == v9)
    {
LABEL_28:
      *(v1 + 344) = v9;
      operator delete(v11);
      goto LABEL_29;
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 8;
        if (*(v10 - 41) < 0)
        {
LABEL_26:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v10 - 8;
        if (*(v10 - 41) < 0)
        {
          goto LABEL_26;
        }
      }

      v10 = v12;
      if (v12 == v9)
      {
        v11 = *(v1 + 336);
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  v13 = *(v1 + 312);
  if (v13)
  {
    *(v1 + 320) = v13;
    operator delete(v13);
  }

  v14 = *(v1 + 288);
  if (v14)
  {
    v54 = v1;
    do
    {
      v16 = *v14;
      v17 = v14[9];
      if (v17)
      {
        v14[10] = v17;
        operator delete(v17);
      }

      v18 = v14[6];
      if (v18)
      {
        v14[7] = v18;
        operator delete(v18);
      }

      v19 = v14[3];
      if (v19)
      {
        v20 = v14[4];
        v15 = v14[3];
        if (v20 != v19)
        {
          do
          {
            v22 = *(v20 - 3);
            if (v22)
            {
              *(v20 - 2) = v22;
              operator delete(v22);
            }

            v23 = v20 - 8;
            v24 = *(v20 - 8);
            if (v24)
            {
              v25 = *(v20 - 7);
              v21 = *(v20 - 8);
              if (v25 != v24)
              {
                v26 = *(v20 - 7);
                do
                {
                  v29 = *(v26 - 3);
                  v26 -= 3;
                  v28 = v29;
                  if (v29)
                  {
                    v30 = *(v25 - 2);
                    v27 = v28;
                    if (v30 != v28)
                    {
                      v31 = *(v25 - 2);
                      do
                      {
                        v33 = *(v31 - 3);
                        v31 -= 24;
                        v32 = v33;
                        if (v33)
                        {
                          *(v30 - 2) = v32;
                          operator delete(v32);
                        }

                        v30 = v31;
                      }

                      while (v31 != v28);
                      v27 = *v26;
                    }

                    *(v25 - 2) = v28;
                    operator delete(v27);
                  }

                  v25 = v26;
                }

                while (v26 != v24);
                v21 = *v23;
              }

              *(v20 - 7) = v24;
              operator delete(v21);
            }

            v20 -= 8;
          }

          while (v23 != v19);
          v15 = v14[3];
          v1 = v54;
        }

        v14[4] = v19;
        operator delete(v15);
      }

      operator delete(v14);
      v14 = v16;
    }

    while (v16);
  }

  v34 = *(v1 + 272);
  *(v1 + 272) = 0;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = *(v1 + 248);
  if (v35)
  {
    *(v1 + 256) = v35;
    operator delete(v35);
  }

  v36 = *(v1 + 224);
  if (v36)
  {
    v37 = *(v1 + 232);
    v38 = *(v1 + 224);
    if (v37 != v36)
    {
      do
      {
        sub_33D080(v37 - 192);
        v39 = *(v37 - 216);
        if (v39)
        {
          v40 = *(v37 - 208);
          v41 = *(v37 - 216);
          if (v40 != v39)
          {
            do
            {
              v40 = sub_33D5A0(v40 - 176);
            }

            while (v40 != v39);
            v41 = *(v37 - 216);
          }

          *(v37 - 208) = v39;
          operator delete(v41);
        }

        v37 -= 704;
        sub_2C0F28(v37);
      }

      while (v37 != v36);
      v38 = *(v1 + 224);
    }

    *(v1 + 232) = v36;
    operator delete(v38);
  }

  v42 = *(v1 + 200);
  if (v42)
  {
    *(v1 + 208) = v42;
    operator delete(v42);
  }

  v43 = *(v1 + 176);
  if (v43)
  {
    *(v1 + 184) = v43;
    operator delete(v43);
  }

  v44 = *(v1 + 152);
  if (v44)
  {
    v45 = *(v1 + 160);
    v46 = *(v1 + 152);
    if (v45 != v44)
    {
      do
      {
        v45 = sub_2C0F28(v45 - 464);
      }

      while (v45 != v44);
      v46 = *(v1 + 152);
    }

    *(v1 + 160) = v44;
    operator delete(v46);
  }

  v47 = *(v1 + 128);
  if (v47)
  {
    *(v1 + 136) = v47;
    operator delete(v47);
  }

  v48 = *(v1 + 104);
  if (v48)
  {
    *(v1 + 112) = v48;
    operator delete(v48);
  }

  v49 = *(v1 + 80);
  if (v49)
  {
    *(v1 + 88) = v49;
    operator delete(v49);
  }

  v50 = *(v1 + 56);
  if (v50)
  {
    *(v1 + 64) = v50;
    operator delete(v50);
  }

  v51 = *(v1 + 32);
  if (v51)
  {
    *(v1 + 40) = v51;
    operator delete(v51);
  }

  v52 = *(v1 + 8);
  if (v52)
  {
    *(v1 + 16) = v52;
    operator delete(v52);
  }

  return v1;
}

uint64_t sub_3621EC(uint64_t *a1, __int128 *a2)
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

  v12 = a1;
  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v9 = 152 * v2;
  v11 = 0;
  sub_362338(152 * v2, a2);
  v10 = 152 * v2 + 152;
  sub_2C723C(a1, &__p);
  v6 = a1[1];
  sub_2C75A4(&__p, v9);
  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_362324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2C756C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_362338(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
LABEL_6:
  *(a1 + 48) = *(a2 + 6);
  if (*(a2 + 79) < 0)
  {
    sub_325C((a1 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_325C((a1 + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v7 = a2[5];
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 80) = v7;
  }

  v8 = *(a2 + 104);
  *(a1 + 112) = 0;
  *(a1 + 104) = v8;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v10 = *(a2 + 14);
  v9 = *(a2 + 15);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_362484(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_362538(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
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
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_3628D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3628EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3628EC(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_252664((v1 + 4), v1[5]);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_36293C(uint64_t a1)
{
  sub_252664(a1 + 72, *(a1 + 80));
  v2 = *(a1 + 32);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_252664((v2 + 4), v2[5]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

uint64_t sub_362A08(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5D1745D1745D17)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 6);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 6)) >= 0x2E8BA2E8BA2E8BLL)
  {
    v5 = 0x5D1745D1745D17;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x5D1745D1745D17)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 704 * v2;
  v16 = 0;
  sub_362BB4(704 * v2, a2);
  v15 = 704 * v2 + 704;
  sub_362E9C(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v15 -= 704;
    sub_33D080(v8 - 192);
    v9 = *(v8 - 216);
    if (v9)
    {
      v10 = *(v8 - 208);
      v11 = *(v8 - 216);
      if (v10 != v9)
      {
        do
        {
          v10 = sub_33D5A0(v10 - 176);
        }

        while (v10 != v9);
        v11 = *(v8 - 216);
      }

      *(v8 - 208) = v9;
      operator delete(v11);
    }

    sub_2C0F28(v8 - 704);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_362BA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_362F9C(va);
  _Unwind_Resume(a1);
}

__n128 sub_362BB4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  v2 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v2;
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v3;
  *(a2 + 56) = 0u;
  *(a2 + 48) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v4;
  *(a2 + 112) = 0u;
  *(a2 + 104) = 0;
  v5 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v5;
  *(a2 + 136) = 0u;
  *(a2 + 128) = 0;
  v6 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v6;
  v7 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v7;
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  *(a2 + 200) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 248) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 280) = 0;
  *(a2 + 264) = 0u;
  v8 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v8;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0u;
  *(a1 + 312) = *(a2 + 312);
  v9 = *(a2 + 336);
  v10 = *(a2 + 352);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v9;
  *(a1 + 352) = v10;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 376) = 0;
  *(a2 + 360) = 0u;
  v12 = *(a2 + 416);
  v11 = *(a2 + 432);
  v13 = *(a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 416) = v12;
  *(a1 + 432) = v11;
  *(a1 + 400) = v13;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 456) = *(a2 + 456);
  v14 = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 464) = v14;
  *(a1 + 496) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a2 + 504) = 0;
  *(a2 + 488) = 0u;
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = 0u;
  *(a1 + 520) = 0;
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
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 584) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a2 + 576) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 616) = 0;
  *(a2 + 600) = 0u;
  v15 = *(a2 + 624);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 624) = v15;
  *(a2 + 624) = 0;
  *(a2 + 640) = 0;
  *(a2 + 632) = 0;
  *(a1 + 648) = *(a2 + 648);
  v16 = *(a2 + 664);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 664) = v16;
  *(a2 + 680) = 0;
  *(a2 + 672) = 0;
  *(a2 + 664) = 0;
  result = *(a2 + 688);
  *(a1 + 688) = result;
  return result;
}

uint64_t *sub_362E9C(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 + *result - v6;
  if (v6 != *result)
  {
    v8 = v4 + *result - v6;
    v9 = v5;
    do
    {
      sub_362BB4(v8, v9);
      v9 += 704;
      v8 = v10 + 704;
    }

    while (v9 != v6);
    do
    {
      sub_33D080(v5 + 512);
      v11 = *(v5 + 488);
      if (v11)
      {
        v12 = *(v5 + 496);
        v13 = *(v5 + 488);
        if (v12 != v11)
        {
          do
          {
            v12 = sub_33D5A0(v12 - 176);
          }

          while (v12 != v11);
          v13 = *(v5 + 488);
        }

        *(v5 + 496) = v11;
        operator delete(v13);
      }

      result = sub_2C0F28(v5);
      v5 += 704;
    }

    while (v5 != v6);
  }

  a2[1] = v7;
  v14 = *v3;
  *v3 = v7;
  v3[1] = v14;
  a2[1] = v14;
  v15 = v3[1];
  v3[1] = a2[2];
  a2[2] = v15;
  v16 = v3[2];
  v3[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

void **sub_362F9C(void **a1)
{
  sub_362FD0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_362FD0(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v1)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 704;
      sub_33D080(v2 - 192);
      v4 = *(v2 - 216);
      if (v4)
      {
        v5 = *(v2 - 208);
        v6 = *(v2 - 216);
        if (v5 != v4)
        {
          do
          {
            v5 = sub_33D5A0(v5 - 176);
          }

          while (v5 != v4);
          v6 = *(v2 - 216);
        }

        *(v2 - 208) = v4;
        operator delete(v6);
      }

      result = sub_2C0F28(v2 - 704);
      v2 = *(v3 + 16);
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t sub_363070(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 6;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  v8 = (v2 << 6) + 64;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 24);
      v15 = *(v12 + 40);
      *(v13 + 56) = *(v12 + 7);
      *(v13 + 40) = v15;
      *(v12 + 6) = 0;
      *(v12 + 7) = 0;
      *(v12 + 5) = 0;
      v12 += 4;
      v13 += 64;
    }

    while (v12 != v10);
    while (1)
    {
      if (*(v9 + 63) < 0)
      {
        operator delete(*(v9 + 40));
        if (*(v9 + 23) < 0)
        {
LABEL_19:
          operator delete(*v9);
        }
      }

      else if (*(v9 + 23) < 0)
      {
        goto LABEL_19;
      }

      v9 += 64;
      if (v9 == v10)
      {
        v9 = *a1;
        break;
      }
    }
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

uint64_t sub_363214(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 312;
        sub_361918(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_36327C(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 312;
    sub_361918(v4, v3 - 312);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_3632D4(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3633C4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_3633F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *a3;
  *(a2 + 16) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = v3;
  v4 = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 48) = v4;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a2 + 96) = *(a3 + 96);
  v5 = *(a3 + 104);
  *(a2 + 120) = *(a3 + 120);
  *(a2 + 104) = v5;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 104) = 0;
  v6 = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 128) = v6;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  v7 = *(a3 + 152);
  *(a2 + 168) = *(a3 + 168);
  *(a2 + 152) = v7;
  v8 = *(a3 + 176);
  *(a2 + 192) = *(a3 + 192);
  *(a2 + 176) = v8;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = *(a3 + 200);
  *(a2 + 216) = *(a3 + 216);
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 200) = 0;
  *(a2 + 224) = *(a3 + 224);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 240) = 0;
  *(a2 + 240) = *(a3 + 240);
  *(a2 + 256) = *(a3 + 256);
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 264) = *(a3 + 264);
  *(a2 + 272) = *(a3 + 272);
  *(a3 + 264) = 0;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  v9 = *(a3 + 288);
  *(a2 + 304) = *(a3 + 304);
  *(a2 + 288) = v9;
  *(a3 + 296) = 0;
  *(a3 + 304) = 0;
  *(a3 + 288) = 0;
  *(a2 + 312) = *(a3 + 312);
  v10 = *(a3 + 336);
  v11 = *(a3 + 352);
  *(a2 + 320) = *(a3 + 320);
  *(a2 + 336) = v10;
  *(a2 + 352) = v11;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = *(a3 + 360);
  *(a2 + 368) = *(a3 + 368);
  *(a3 + 368) = 0;
  *(a3 + 376) = 0;
  *(a3 + 360) = 0;
  v13 = *(a3 + 416);
  v12 = *(a3 + 432);
  v14 = *(a3 + 400);
  *(a2 + 448) = *(a3 + 448);
  *(a2 + 416) = v13;
  *(a2 + 432) = v12;
  *(a2 + 400) = v14;
  result = *(a3 + 384);
  *(a2 + 384) = result;
  *(a2 + 456) = *(a3 + 456);
  return result;
}

uint64_t sub_3635A0(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v10 = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v9 + 24) = v10;
      v11 = *(v8 + 48);
      *(v9 + 64) = *(v8 + 64);
      *(v9 + 48) = v11;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 48) = 0;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = *(v8 + 72);
      *(v9 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v9 + 96) = *(v8 + 96);
      v12 = *(v8 + 104);
      *(v9 + 120) = *(v8 + 120);
      *(v9 + 104) = v12;
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 104) = 0;
      v13 = *(v8 + 128);
      *(v9 + 144) = *(v8 + 144);
      *(v9 + 128) = v13;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 128) = 0;
      v14 = *(v8 + 152);
      *(v9 + 168) = *(v8 + 168);
      *(v9 + 152) = v14;
      v15 = *(v8 + 176);
      *(v9 + 192) = *(v8 + 192);
      *(v9 + 176) = v15;
      *(v8 + 176) = 0;
      *(v8 + 184) = 0;
      *(v8 + 192) = 0;
      *(v9 + 200) = 0;
      *(v9 + 208) = 0;
      *(v9 + 216) = 0;
      *(v9 + 200) = *(v8 + 200);
      *(v9 + 216) = *(v8 + 216);
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      *(v8 + 200) = 0;
      *(v9 + 224) = *(v8 + 224);
      *(v9 + 248) = 0;
      *(v9 + 256) = 0;
      *(v9 + 240) = 0;
      *(v9 + 240) = *(v8 + 240);
      *(v9 + 256) = *(v8 + 256);
      *(v8 + 240) = 0;
      *(v8 + 248) = 0;
      *(v8 + 256) = 0;
      *(v9 + 264) = 0;
      *(v9 + 272) = 0;
      *(v9 + 280) = 0;
      *(v9 + 264) = *(v8 + 264);
      *(v9 + 272) = *(v8 + 272);
      *(v8 + 264) = 0;
      *(v8 + 272) = 0;
      *(v8 + 280) = 0;
      v16 = *(v8 + 288);
      *(v9 + 304) = *(v8 + 304);
      *(v9 + 288) = v16;
      *(v8 + 296) = 0;
      *(v8 + 304) = 0;
      *(v8 + 288) = 0;
      *(v9 + 312) = *(v8 + 312);
      v17 = *(v8 + 336);
      v18 = *(v8 + 352);
      *(v9 + 320) = *(v8 + 320);
      *(v9 + 336) = v17;
      *(v9 + 352) = v18;
      *(v9 + 360) = 0;
      *(v9 + 368) = 0;
      *(v9 + 376) = 0;
      *(v9 + 360) = *(v8 + 360);
      *(v9 + 368) = *(v8 + 368);
      *(v8 + 368) = 0;
      *(v8 + 376) = 0;
      *(v8 + 360) = 0;
      v20 = *(v8 + 416);
      v19 = *(v8 + 432);
      v21 = *(v8 + 400);
      *(v9 + 448) = *(v8 + 448);
      *(v9 + 416) = v20;
      *(v9 + 432) = v19;
      *(v9 + 400) = v21;
      *(v9 + 384) = *(v8 + 384);
      *(v9 + 456) = *(v8 + 456);
      v8 += 464;
      v9 += 464;
    }

    while (v8 != v5);
    do
    {
      result = sub_2C0F28(result) + 464;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v22 = *a1;
  *a1 = v7;
  a1[1] = v22;
  a2[1] = v22;
  v23 = a1[1];
  a1[1] = a2[2];
  a2[2] = v23;
  v24 = a1[2];
  a1[2] = a2[3];
  a2[3] = v24;
  *a2 = a2[1];
  return result;
}

uint64_t sub_3637E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 464;
    sub_2C0F28(i - 464);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_36383C(uint64_t a1, uint64_t a2)
{
  result = sub_31D994(a1, a2, 1);
  if (result)
  {
    v5 = &result[-*result];
    if (*v5 < 0xBu)
    {
      return 0;
    }

    else
    {
      if (!*(v5 + 5))
      {
        return 0;
      }

      v6 = &result[*(v5 + 5) + *&result[*(v5 + 5)]];
      if (*v6 <= WORD2(a2))
      {
        return 0;
      }

      v7 = 8 * WORD2(a2);
      v8 = &v6[v7 + 4];
      if (!*v8)
      {
        return 0;
      }

      v9 = v6[v7 + 10];
      result = sub_2B3284(a1, *v8, 1);
      if (result)
      {
        v10 = &result[-*result];
        v11 = *v10;
        if (((a2 & 0xFF000000000000) == 0x1000000000000) == (v9 & 2) >> 1)
        {
          if (v11 < 7)
          {
            return 0;
          }

          v12 = *(v10 + 3);
          if (!v12)
          {
            return 0;
          }
        }

        else
        {
          if (v11 < 5)
          {
            return 0;
          }

          v12 = *(v10 + 2);
          if (!v12)
          {
            return 0;
          }
        }

        v13 = &result[v12 + *&result[v12]];
        v14 = *(v8 + 4);
        if (*v13 > v14)
        {
          return &v13[4 * v14 + 4 + *&v13[4 * v14 + 4]];
        }

        return 0;
      }
    }
  }

  return result;
}

double sub_363970(uint64_t a1, uint64_t a2)
{
  v2 = WORD2(a2);
  v4 = a2;
  v5 = sub_2AF704(a1, a2, 1);
  result = -1.0;
  if (v5)
  {
    v7 = &v5[-*v5];
    if (*v7 >= 5u)
    {
      if (*(v7 + 2))
      {
        v8 = &v5[*(v7 + 2) + *&v5[*(v7 + 2)]];
        if (*v8 > v2)
        {
          v9 = &v8[4 * v2 + 4 + *&v8[4 * v2 + 4]];
          v10 = &v9[-*v9];
          if (*v10 >= 0x43u && (v11 = *(v10 + 33)) != 0)
          {
            v12 = v9[v11];
            v13 = sub_2B3284(a1, v4, 1);
            if (!v13)
            {
              return -1.0;
            }
          }

          else
          {
            v12 = 0;
            v13 = sub_2B3284(a1, v4, 1);
            if (!v13)
            {
              return -1.0;
            }
          }

          v14 = &v13[-*v13];
          result = -1.0;
          if (*v14 >= 0x15u)
          {
            v15 = *(v14 + 10);
            if (v15)
            {
              v16 = &v13[v15 + *&v13[v15]];
              v18 = *v16;
              v17 = (v16 + 4);
              v19 = 4 * v18;
              v20 = &v17[v19];
              if (v18)
              {
                do
                {
                  if (v12 == *v17)
                  {
                    break;
                  }

                  v17 += 4;
                  v19 -= 4;
                }

                while (v19);
              }

              if (v17 != v20)
              {
                v21 = *(v17 + 1);
                if ((v21 - 1) <= 0xFFFDu)
                {
                  return v21 / 100.0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_363ADC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = (*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32);
  v5 = (*a2 >> 61) & 2 | (*a2 >> 63) | v4;
  v6 = ((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) ^ ~((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) ^ ((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (result + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  v12 = *v9;
  v13 = 0x101010101010101 * (v8 & 0x7F);
  while (1)
  {
    v14 = v10 & v11;
    v15 = *(v12 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_5:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_8;
    }

    v3 += 8;
    v10 = v3 + v14;
  }

  while (1)
  {
    v17 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v11;
    v18 = (v9[1] + 24 * v17);
    if (((4 * v18[1]) | (*v18 << 32) | (v18[1] >> 31) | (v18[1] >> 29) & 2) == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  if (v11 == v17)
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v9;
  a3[1] = (result + 768);
  a3[2] = (v12 + v17);
  a3[3] = v18;
  a3[4] = (v12 + v11);
  return result;
}

uint64_t sub_363C44(uint64_t a1, unint64_t a2)
{
  v68 = a2;
  v4 = HIDWORD(a2);
  v5 = a1 + 16;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = sub_31D994(v5, a2, 1);
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
    if (*v9 <= (v4 & 0x3FFFFFFF))
    {
      return 0;
    }

    v10 = (&v9[(v4 & 0x3FFFFFFF) + 1] + v9[(v4 & 0x3FFFFFFF) + 1]);
    v11 = (v10 - *v10);
    v12 = *v11;
    if (v12 >= 0xB)
    {
      if (!v11[5] || (v13 = *(a1 + 3889), v13 == 254))
      {
LABEL_49:
        v42 = v11[2];
        if (v42)
        {
          v43 = (v10 + v42 + *(v10 + v42));
          v44 = *v43;
          if (v44)
          {
            v17 = 0;
            v45 = &v43[2 * v44 + 1];
            v46 = v43 + 1;
            v47 = 255;
            while (1)
            {
              v49 = sub_2AF704(a1 + 16, *v46, 1);
              v50 = &v49[-*v49];
              if (*v50 < 5u)
              {
                v51 = 0;
              }

              else
              {
                v51 = *(v50 + 2);
                if (v51)
                {
                  v51 += &v49[*&v49[v51]];
                }
              }

              v52 = v51 + 4 * *(v46 + 2);
              v53 = v52 + 4 + *(v52 + 4);
              v54 = (v53 - *v53);
              v55 = *v54;
              if (v55 < 9)
              {
                v56 = 0;
              }

              else
              {
                v56 = v54[4];
                if (v54[4])
                {
                  v56 = *(v53 + v56);
                }
              }

              v57 = a2 >> 62 == 0;
              v58 = *(v46 + 6) != 0;
              if (v57 == v58)
              {
                if (v55 < 0x9B)
                {
LABEL_74:
                  v59 = 0;
                  if (v55 < 0x2F)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_75;
                }

                v59 = v54[77];
                if (v54[77])
                {
                  if ((*(v53 + v59) & 0x200000000) != 0)
                  {
LABEL_72:
                    v59 = 256;
                    v60 = v54[23];
                    if (!v54[23])
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_76;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
                if (v55 < 0x9B)
                {
                  goto LABEL_74;
                }

                v59 = v54[77];
                if (v54[77])
                {
                  if ((*(v53 + v59) & 0x100000000) != 0)
                  {
                    goto LABEL_72;
                  }

LABEL_67:
                  v59 = 0;
                  v60 = v54[23];
                  if (!v54[23])
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_76;
                }
              }

LABEL_75:
              v60 = v54[23];
              if (!v54[23])
              {
                goto LABEL_82;
              }

LABEL_76:
              v61 = *(v53 + v60);
              v27 = v61 > 0x2D;
              v62 = (1 << v61) & 0x208040000000;
              if (!v27 && v62 != 0)
              {
                v64 = 0x10000;
                if (v55 < 0x9B)
                {
                  goto LABEL_81;
                }

                goto LABEL_83;
              }

LABEL_82:
              v64 = 0;
              if (v55 < 0x9B)
              {
LABEL_81:
                v65 = 0;
                goto LABEL_85;
              }

LABEL_83:
              v65 = v54[77];
              if (v54[77])
              {
                v65 = (*(v53 + v65) << 21) & 0x1000000;
              }

LABEL_85:
              v66 = v59 | v64 | v65 | v47;
              if (v57 != v58)
              {
                if (v55 >= 0x27)
                {
                  v67 = v54[19];
                  if (v67)
                  {
                    goto LABEL_91;
                  }
                }
              }

              else if (v55 >= 0x29)
              {
                v67 = v54[20];
                if (v67)
                {
LABEL_91:
                  LODWORD(v53) = *(v53 + v67 + *(v53 + v67));
                  if (v53)
                  {
                    if (v53 >= v47)
                    {
                      v53 = v47;
                    }

                    else
                    {
                      v53 = v53;
                    }

                    v66 = v66 & 0xFFFFFFFFFFFFFF00 | v53;
                  }
                }
              }

              v17 += v56;
              v46 += 2;
              v47 = v66;
              if (v46 == v45)
              {
                goto LABEL_97;
              }
            }
          }

          v17 = 0;
          LODWORD(v66) = 255;
LABEL_97:
          if (v66 == 0xFF)
          {
            v32 = (v66 & 0xFFFFFF00) + 1;
          }

          else
          {
            v32 = v66;
          }

          v33 = (a2 >> 30) & 0xFFFFFFFC | (a2 << 32);
          v34 = (a2 >> 61) & 2 | v33;
          goto LABEL_45;
        }

        return 0;
      }

      v14 = (v10 + v11[5] + *(v10 + v11[5]));
      v15 = *v14;
      if (!v15)
      {
        return 0;
      }

      for (i = (v14 + 1); v13 != *i; ++i)
      {
        v17 = 0;
        if (!--v15)
        {
          return v17;
        }
      }
    }

    if (v12 < 5)
    {
      return 0;
    }

    goto LABEL_49;
  }

  v18 = sub_2AF704(v5, a2, 1);
  v19 = &v18[-*v18];
  if (*v19 < 5u)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v19 + 2);
    if (v20)
    {
      v20 += &v18[*&v18[v20]];
    }
  }

  v21 = (v20 + 4 * (v4 & 0x3FFFFFFF) + 4 + *(v20 + 4 * (v4 & 0x3FFFFFFF) + 4));
  v22 = (v21 - *v21);
  v23 = *v22;
  if (v23 >= 9 && v22[4])
  {
    v17 = *(v21 + v22[4]);
    if (a2 >> 62 != 3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = 0;
    if (a2 >> 62 != 3)
    {
LABEL_21:
      if (v23 >= 0x9B)
      {
        v24 = v22[77];
        if (v22[77])
        {
          if ((*(v21 + v24) & 0x200000000) != 0)
          {
            goto LABEL_24;
          }

          goto LABEL_30;
        }

LABEL_33:
        v25 = v22[23];
        if (!v22[23])
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

LABEL_32:
      LODWORD(v24) = 0;
      if (v23 < 0x2F)
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    }
  }

  if (v23 < 0x9B)
  {
    goto LABEL_32;
  }

  v24 = v22[77];
  if (!v22[77])
  {
    goto LABEL_33;
  }

  if ((*(v21 + v24) & 0x100000000) != 0)
  {
LABEL_24:
    LODWORD(v24) = 256;
    v25 = v22[23];
    if (!v22[23])
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

LABEL_30:
  LODWORD(v24) = 0;
  v25 = v22[23];
  if (!v22[23])
  {
    goto LABEL_40;
  }

LABEL_34:
  v26 = *(v21 + v25);
  v27 = v26 > 0x2D;
  v28 = (1 << v26) & 0x208040000000;
  if (v27 || v28 == 0)
  {
LABEL_40:
    if (v23 >= 0x9B)
    {
      goto LABEL_41;
    }

LABEL_43:
    LODWORD(v31) = 0;
    goto LABEL_44;
  }

  LODWORD(v24) = v24 | 0x10000;
  if (v23 < 0x9B)
  {
    goto LABEL_43;
  }

LABEL_41:
  v30 = v22[77];
  if (!v30)
  {
    goto LABEL_43;
  }

  v31 = (*(v21 + v30) << 21) & 0x1000000;
LABEL_44:
  v32 = v24 | v31;
  v33 = (a2 >> 30) & 0xFFFFFFFC | (a2 << 32);
  v34 = (a2 >> 61) & 2 | v33 | 1;
LABEL_45:
  v35 = ((0x2127599BF4325C37 * (v34 ^ (v33 >> 23))) ^ ~((0x2127599BF4325C37 * (v34 ^ (v33 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v34 ^ (v33 >> 23))) ^ ((0x2127599BF4325C37 * (v34 ^ (v33 >> 23))) >> 47)) << 21);
  v36 = 21 * ((265 * (v35 ^ (v35 >> 24))) ^ ((265 * (v35 ^ (v35 >> 24))) >> 14));
  v37 = (a1 + 48 * (((((v36 ^ (v36 >> 28)) >> 8) ^ ((-2147483647 * (v36 ^ (v36 >> 28))) >> 16)) ^ ((-2147483647 * (v36 ^ (v36 >> 28))) >> 24)) & 0xF) + 3896);
  v38 = sub_3641BC(v37, &v68, 2147483649u * (v36 ^ (v36 >> 28)));
  if (v39)
  {
    v40 = (v37[1] + 24 * v38);
    *v40 = v68;
    v40[1] = 0;
    v40[2] = 0;
    *(v40 + 16) = -1;
  }

  v41 = v37[1] + 24 * v38;
  *(v41 + 8) = v17;
  *(v41 + 16) = v32;
  return v17;
}

unint64_t sub_3641BC(void *a1, void *a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 7;
  v5 = a1[3];
  v6 = (*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32) | (*a2 >> 63) | (*a2 >> 61) & 2;
  while (1)
  {
    v7 = v4 & v5;
    v8 = *(*a1 + (v4 & v5));
    v9 = ((v8 ^ (0x101010101010101 * (a3 & 0x7F))) - 0x101010101010101) & ~(v8 ^ (0x101010101010101 * (a3 & 0x7F))) & 0x8080808080808080;
    if (v9)
    {
      break;
    }

LABEL_5:
    if ((v8 & (~v8 << 6) & 0x8080808080808080) != 0)
    {
      return sub_3642B4(a1, a3);
    }

    v3 += 8;
    v4 = v3 + v7;
  }

  while (1)
  {
    v11 = (v7 + (__clz(__rbit64(v9)) >> 3)) & v5;
    v10 = a1[1];
    if (((4 * *(v10 + 24 * v11 + 4)) | (*(v10 + 24 * v11) << 32) | (*(v10 + 24 * v11 + 4) >> 31) | (*(v10 + 24 * v11 + 4) >> 29) & 2) == v6)
    {
      return v11;
    }

    v9 &= v9 - 1;
    if (!v9)
    {
      goto LABEL_5;
    }
  }
}

unint64_t sub_3642B4(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_3643AC(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_3643AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_3643DC();
  }

  return sub_3645D0(a1);
}

uint64_t sub_3645D0(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 24 * i);
        v19 = 0x2127599BF4325C37 * (((v18 >> 61) & 2 | (v18 >> 63) | (v18 >> 30) & 0xFFFFFFFC | (v18 << 32)) ^ (((v18 >> 30) & 0xFFFFFFFC | (v18 << 32)) >> 23));
        v20 = (v19 ^ ~(v19 >> 47)) + ((v19 ^ (v19 >> 47)) << 21);
        v21 = 21 * ((265 * (v20 ^ (v20 >> 24))) ^ ((265 * (v20 ^ (v20 >> 24))) >> 14));
        v22 = 2147483649u * (v21 ^ (v21 >> 28));
        v23 = v13 & (v22 >> 7);
        v24 = *(v17->i64 + v23) & (~*(v17->i64 + v23) << 7) & 0x8080808080808080;
        if (v24)
        {
          v15 = v13 & (v22 >> 7);
        }

        else
        {
          v25 = 8;
          v15 = v13 & (v22 >> 7);
          do
          {
            v15 = (v15 + v25) & v13;
            v25 += 8;
            v24 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v24);
        }

        v16 = (v15 + (__clz(__rbit64(v24)) >> 3)) & v13;
        if ((((v16 - v23) ^ (i - v23)) & v13) > 7)
        {
          v26 = v17->u8[v16];
          v17->i8[v16] = v22 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v22 & 0x7F;
          v27 = *(result + 8);
          if (v26 == 128)
          {
            v28 = v27 + 24 * v16;
            v29 = (v27 + 24 * i);
            v30 = *v29;
            *(v28 + 16) = *(v29 + 2);
            *v28 = v30;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v31 = (v27 + 24 * i);
            v32 = *v31;
            v33 = *(v31 + 2);
            v34 = 24 * v16;
            v35 = (v27 + 24 * v16);
            v36 = *(v35 + 2);
            *v31 = *v35;
            *(v31 + 2) = v36;
            v37 = *(result + 8) + v34;
            *v37 = v32;
            *(v37 + 16) = v33;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v22 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v22 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v38 = i - (i >> 3);
    v39 = i == 7;
    v40 = 6;
    if (!v39)
    {
      v40 = v38;
    }
  }

  else
  {
    v40 = 0;
  }

  *(result + 40) = v40 - *(result + 16);
  return result;
}

uint64_t sub_3648F0(uint64_t a1, uint64_t *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = (*(a1 + 8) - *a1) >> 5;
  v7 = v6 + 1;
  if ((v6 + 1) >> 59)
  {
    sub_1794();
  }

  v9 = *(a1 + 16) - *a1;
  if (v9 >> 4 > v7)
  {
    v7 = v9 >> 4;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFE0)
  {
    v10 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v7;
  }

  if (v10)
  {
    if (!(v10 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v11 = sub_38E3D4(32 * v6, *a2, *a3, *a4, *a5, *a6);
  v12 = v11 + 32;
  v13 = *a1;
  v14 = *(a1 + 8) - *a1;
  v15 = v11 - v14;
  memcpy((v11 - v14), *a1, v14);
  *a1 = v15;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void sub_364A0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_364A24(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 64;
  v9 = a2 - 128;
  v10 = a2 - 192;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 6;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_38E340(a2 - 8, v11))
      {
LABEL_80:
        v243 = *v11;
        v244 = *(v11 + 1);
        v245 = *(v11 + 3);
        *v293 = *(v11 + 2);
        *&v293[16] = v245;
        v291 = v243;
        v292 = v244;
        v246 = *v8;
        v247 = *(v8 + 1);
        v248 = *(v8 + 2);
        *(v11 + 43) = *(v8 + 43);
        *(v11 + 1) = v247;
        *(v11 + 2) = v248;
        *v11 = v246;
        *v8 = v291;
        *(v8 + 1) = v292;
        v218 = *v293;
        goto LABEL_81;
      }

      return;
    }

LABEL_10:
    if (v14 <= 23)
    {
      v249 = v11 + 8;
      v251 = v11 == a2 || v249 == a2;
      if (a5)
      {
        if (!v251)
        {
          v252 = 0;
          v253 = v11;
          do
          {
            v258 = v253;
            v253 = v249;
            if (sub_38E340(v249, v258))
            {
              v259 = *v253;
              v260 = *(v253 + 1);
              v261 = *(v253 + 3);
              *v293 = *(v253 + 2);
              *&v293[16] = v261;
              v291 = v259;
              v292 = v260;
              v262 = v252;
              do
              {
                v263 = (v11 + v262);
                v264 = *(v11 + v262 + 16);
                v263[4] = *(v11 + v262);
                v263[5] = v264;
                v263[6] = *(v11 + v262 + 32);
                *(v263 + 107) = *(v11 + v262 + 43);
                if (!v262)
                {
                  v254 = v11;
                  goto LABEL_95;
                }

                v262 -= 64;
              }

              while ((sub_38E340(&v291, (v11 + v262)) & 1) != 0);
              v254 = (v11 + v262 + 64);
LABEL_95:
              v255 = v291;
              v256 = v292;
              v257 = *v293;
              *(v254 + 43) = *&v293[11];
              *(v254 + 1) = v256;
              *(v254 + 2) = v257;
              *v254 = v255;
            }

            v249 = v253 + 8;
            v252 += 64;
          }

          while (v253 + 8 != a2);
        }
      }

      else if (!v251)
      {
        v279 = v11 - 8;
        do
        {
          v280 = a1;
          a1 = v249;
          if (sub_38E340(v249, v280))
          {
            v281 = *a1;
            v282 = *(a1 + 1);
            v283 = *(a1 + 3);
            *v293 = *(a1 + 2);
            *&v293[16] = v283;
            v291 = v281;
            v292 = v282;
            v284 = v279;
            do
            {
              v285 = *(v284 + 5);
              *(v284 + 8) = *(v284 + 4);
              *(v284 + 9) = v285;
              *(v284 + 10) = *(v284 + 6);
              *(v284 + 171) = *(v284 + 107);
              v286 = sub_38E340(&v291, v284);
              v284 -= 8;
            }

            while ((v286 & 1) != 0);
            v287 = v291;
            v288 = v292;
            v289 = *v293;
            *(v284 + 171) = *&v293[11];
            *(v284 + 9) = v288;
            *(v284 + 10) = v289;
            *(v284 + 8) = v287;
          }

          v249 = a1 + 8;
          v279 += 8;
        }

        while (a1 + 8 != a2);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        sub_366204(v11, a2, a2, a3);
      }

      return;
    }

    v15 = &v11[8 * (v14 >> 1)];
    if (v14 >= 0x81)
    {
      v16 = sub_38E340(&v11[8 * (v14 >> 1)], v11);
      v17 = sub_38E340(a2 - 8, v15);
      if (v16)
      {
        if (v17)
        {
          v18 = *a1;
          v19 = *(a1 + 1);
          v20 = *(a1 + 3);
          *v293 = *(a1 + 2);
          *&v293[16] = v20;
          v291 = v18;
          v292 = v19;
          v21 = *v8;
          v22 = *(a2 - 3);
          v23 = *(a2 - 2);
          *(a1 + 43) = *(a2 - 21);
          *(a1 + 1) = v22;
          *(a1 + 2) = v23;
          *a1 = v21;
          goto LABEL_28;
        }

        v62 = *a1;
        v63 = *(a1 + 1);
        v64 = *(a1 + 3);
        *v293 = *(a1 + 2);
        *&v293[16] = v64;
        v291 = v62;
        v292 = v63;
        v65 = *v15;
        v66 = *(v15 + 1);
        v67 = *(v15 + 2);
        *(a1 + 43) = *(v15 + 43);
        *(a1 + 1) = v66;
        *(a1 + 2) = v67;
        *a1 = v65;
        v68 = v291;
        v69 = v292;
        v70 = *v293;
        *(v15 + 43) = *&v293[11];
        *(v15 + 1) = v69;
        *(v15 + 2) = v70;
        *v15 = v68;
        if (sub_38E340(a2 - 8, v15))
        {
          v71 = *v15;
          v72 = *(v15 + 1);
          v73 = *(v15 + 3);
          *v293 = *(v15 + 2);
          *&v293[16] = v73;
          v291 = v71;
          v292 = v72;
          v74 = *v8;
          v75 = *(a2 - 3);
          v76 = *(a2 - 2);
          *(v15 + 43) = *(a2 - 21);
          *(v15 + 1) = v75;
          *(v15 + 2) = v76;
          *v15 = v74;
LABEL_28:
          *v8 = v291;
          *(a2 - 3) = v292;
          *(a2 - 2) = *v293;
          *(a2 - 21) = *&v293[11];
        }
      }

      else if (v17)
      {
        v32 = *v15;
        v33 = *(v15 + 1);
        v34 = *(v15 + 3);
        *v293 = *(v15 + 2);
        *&v293[16] = v34;
        v291 = v32;
        v292 = v33;
        v35 = *v8;
        v36 = *(a2 - 3);
        v37 = *(a2 - 2);
        *(v15 + 43) = *(a2 - 21);
        *(v15 + 1) = v36;
        *(v15 + 2) = v37;
        *v15 = v35;
        *v8 = v291;
        *(a2 - 3) = v292;
        *(a2 - 2) = *v293;
        *(a2 - 21) = *&v293[11];
        if (sub_38E340(v15, a1))
        {
          v38 = *a1;
          v39 = *(a1 + 1);
          v40 = *(a1 + 3);
          *v293 = *(a1 + 2);
          *&v293[16] = v40;
          v291 = v38;
          v292 = v39;
          v41 = *v15;
          v42 = *(v15 + 1);
          v43 = *(v15 + 2);
          *(a1 + 43) = *(v15 + 43);
          *(a1 + 1) = v42;
          *(a1 + 2) = v43;
          *a1 = v41;
          v44 = v291;
          v45 = v292;
          v46 = *v293;
          *(v15 + 43) = *&v293[11];
          *(v15 + 1) = v45;
          *(v15 + 2) = v46;
          *v15 = v44;
        }
      }

      v77 = v15 - 8;
      v78 = sub_38E340(v15 - 8, a1 + 8);
      v79 = sub_38E340(a2 - 16, v15 - 8);
      if (v78)
      {
        if (v79)
        {
          v80 = *(a1 + 6);
          v81 = *(a1 + 7);
          *v293 = v80;
          *&v293[16] = v81;
          v83 = *(a1 + 4);
          v82 = *(a1 + 5);
          v85 = *(a2 - 7);
          v84 = *(a2 - 6);
          v86 = *v9;
          *(a1 + 107) = *(a2 - 85);
          *(a1 + 5) = v85;
          *(a1 + 6) = v84;
          *(a1 + 4) = v86;
          *v9 = v83;
          *(a2 - 7) = v82;
          goto LABEL_42;
        }

        v116 = *(a1 + 5);
        v291 = *(a1 + 4);
        v115 = v291;
        v292 = v116;
        v117 = *(a1 + 7);
        *v293 = *(a1 + 6);
        v118 = *v293;
        *&v293[16] = v117;
        v119 = *(v15 - 21);
        v120 = *(v15 - 2);
        v121 = *v77;
        *(a1 + 5) = *(v15 - 3);
        *(a1 + 6) = v120;
        *(a1 + 107) = v119;
        *(a1 + 4) = v121;
        *(v15 - 21) = *&v293[11];
        *(v15 - 3) = v116;
        *(v15 - 2) = v118;
        *v77 = v115;
        if (sub_38E340(a2 - 16, v15 - 8))
        {
          v122 = *v77;
          v123 = *(v15 - 3);
          v124 = *(v15 - 1);
          *v293 = *(v15 - 2);
          *&v293[16] = v124;
          v291 = v122;
          v292 = v123;
          v125 = *v9;
          v126 = *(a2 - 7);
          v127 = *(a2 - 6);
          *(v15 - 21) = *(a2 - 85);
          *(v15 - 3) = v126;
          *(v15 - 2) = v127;
          *v77 = v125;
          *v9 = v291;
          *(a2 - 7) = v292;
          v80 = *v293;
LABEL_42:
          *(a2 - 6) = v80;
          *(a2 - 85) = *&v293[11];
        }
      }

      else if (v79)
      {
        v87 = *v77;
        v88 = *(v15 - 3);
        v89 = *(v15 - 1);
        *v293 = *(v15 - 2);
        *&v293[16] = v89;
        v291 = v87;
        v292 = v88;
        v90 = *v9;
        v91 = *(a2 - 7);
        v92 = *(a2 - 6);
        *(v15 - 21) = *(a2 - 85);
        *(v15 - 3) = v91;
        *(v15 - 2) = v92;
        *v77 = v90;
        *v9 = v291;
        *(a2 - 7) = v292;
        *(a2 - 6) = *v293;
        *(a2 - 85) = *&v293[11];
        if (sub_38E340(v15 - 8, a1 + 8))
        {
          v94 = *(a1 + 5);
          v291 = *(a1 + 4);
          v93 = v291;
          v292 = v94;
          v95 = *(a1 + 7);
          *v293 = *(a1 + 6);
          v96 = *v293;
          *&v293[16] = v95;
          v97 = *(v15 - 21);
          v98 = *(v15 - 2);
          v99 = *v77;
          *(a1 + 5) = *(v15 - 3);
          *(a1 + 6) = v98;
          *(a1 + 107) = v97;
          *(a1 + 4) = v99;
          *(v15 - 21) = *&v293[11];
          *(v15 - 3) = v94;
          *(v15 - 2) = v96;
          *v77 = v93;
        }
      }

      v128 = sub_38E340(v15 + 8, a1 + 16);
      v129 = sub_38E340(a2 - 24, v15 + 8);
      if (v128)
      {
        if (v129)
        {
          v130 = *(a1 + 10);
          v131 = *(a1 + 11);
          *v293 = v130;
          *&v293[16] = v131;
          v133 = *(a1 + 8);
          v132 = *(a1 + 9);
          v135 = *(a2 - 11);
          v134 = *(a2 - 10);
          v136 = *v10;
          *(a1 + 171) = *(a2 - 149);
          *(a1 + 9) = v135;
          *(a1 + 10) = v134;
          *(a1 + 8) = v136;
          *v10 = v133;
          *(a2 - 11) = v132;
          goto LABEL_51;
        }

        v151 = *(a1 + 9);
        v291 = *(a1 + 8);
        v150 = v291;
        v292 = v151;
        v152 = *(a1 + 11);
        *v293 = *(a1 + 10);
        v153 = *v293;
        *&v293[16] = v152;
        v154 = *(v15 + 107);
        v155 = *(v15 + 6);
        v156 = *(v15 + 4);
        *(a1 + 9) = *(v15 + 5);
        *(a1 + 10) = v155;
        *(a1 + 171) = v154;
        *(a1 + 8) = v156;
        *(v15 + 107) = *&v293[11];
        *(v15 + 5) = v151;
        *(v15 + 6) = v153;
        *(v15 + 4) = v150;
        if (sub_38E340(a2 - 24, v15 + 8))
        {
          v157 = *(v15 + 4);
          v158 = *(v15 + 5);
          v159 = *(v15 + 7);
          *v293 = *(v15 + 6);
          *&v293[16] = v159;
          v291 = v157;
          v292 = v158;
          v160 = *v10;
          v161 = *(a2 - 11);
          v162 = *(a2 - 10);
          *(v15 + 107) = *(a2 - 149);
          *(v15 + 5) = v161;
          *(v15 + 6) = v162;
          *(v15 + 4) = v160;
          *v10 = v291;
          *(a2 - 11) = v292;
          v130 = *v293;
LABEL_51:
          *(a2 - 10) = v130;
          *(a2 - 149) = *&v293[11];
        }
      }

      else if (v129)
      {
        v137 = *(v15 + 4);
        v138 = *(v15 + 5);
        v139 = *(v15 + 7);
        *v293 = *(v15 + 6);
        *&v293[16] = v139;
        v291 = v137;
        v292 = v138;
        v140 = *v10;
        v141 = *(a2 - 11);
        v142 = *(a2 - 10);
        *(v15 + 107) = *(a2 - 149);
        *(v15 + 5) = v141;
        *(v15 + 6) = v142;
        *(v15 + 4) = v140;
        *v10 = v291;
        *(a2 - 11) = v292;
        *(a2 - 10) = *v293;
        *(a2 - 149) = *&v293[11];
        if (sub_38E340(v15 + 8, a1 + 16))
        {
          v144 = *(a1 + 9);
          v291 = *(a1 + 8);
          v143 = v291;
          v292 = v144;
          v145 = *(a1 + 11);
          *v293 = *(a1 + 10);
          v146 = *v293;
          *&v293[16] = v145;
          v147 = *(v15 + 107);
          v148 = *(v15 + 6);
          v149 = *(v15 + 4);
          *(a1 + 9) = *(v15 + 5);
          *(a1 + 10) = v148;
          *(a1 + 171) = v147;
          *(a1 + 8) = v149;
          *(v15 + 107) = *&v293[11];
          *(v15 + 5) = v144;
          *(v15 + 6) = v146;
          *(v15 + 4) = v143;
        }
      }

      v163 = sub_38E340(v15, v15 - 8);
      v164 = sub_38E340(v15 + 8, v15);
      if (v163)
      {
        if (v164)
        {
          v165 = *v77;
          v166 = *(v15 - 3);
          v167 = *(v15 - 1);
          *v293 = *(v15 - 2);
          *&v293[16] = v167;
          v291 = v165;
          v292 = v166;
          v168 = *(v15 + 5);
          *v77 = *(v15 + 4);
          *(v15 - 3) = v168;
          *(v15 - 2) = *(v15 + 6);
          *(v15 - 21) = *(v15 + 107);
          goto LABEL_60;
        }

        v183 = *v77;
        v184 = *(v15 - 3);
        v185 = *(v15 - 1);
        *v293 = *(v15 - 2);
        *&v293[16] = v185;
        v291 = v183;
        v292 = v184;
        v186 = *(v15 + 1);
        *v77 = *v15;
        *(v15 - 3) = v186;
        *(v15 - 2) = *(v15 + 2);
        *(v15 - 21) = *(v15 + 43);
        v187 = *&v293[11];
        v188 = *v293;
        v189 = v291;
        *(v15 + 1) = v292;
        *(v15 + 2) = v188;
        *(v15 + 43) = v187;
        *v15 = v189;
        if (sub_38E340(v15 + 8, v15))
        {
          v190 = *v15;
          v191 = *(v15 + 1);
          v192 = *(v15 + 3);
          *v293 = *(v15 + 2);
          *&v293[16] = v192;
          v291 = v190;
          v292 = v191;
          v193 = *(v15 + 5);
          *v15 = *(v15 + 4);
          *(v15 + 1) = v193;
          *(v15 + 2) = *(v15 + 6);
          *(v15 + 43) = *(v15 + 107);
LABEL_60:
          v194 = *&v293[11];
          v195 = *v293;
          v196 = v291;
          *(v15 + 5) = v292;
          *(v15 + 6) = v195;
          *(v15 + 107) = v194;
          *(v15 + 4) = v196;
        }
      }

      else if (v164)
      {
        v169 = *v15;
        v170 = *(v15 + 1);
        v171 = *(v15 + 3);
        *v293 = *(v15 + 2);
        *&v293[16] = v171;
        v291 = v169;
        v292 = v170;
        v172 = *(v15 + 5);
        *v15 = *(v15 + 4);
        *(v15 + 1) = v172;
        *(v15 + 2) = *(v15 + 6);
        *(v15 + 43) = *(v15 + 107);
        v173 = *&v293[11];
        v174 = *v293;
        v175 = v291;
        *(v15 + 5) = v292;
        *(v15 + 6) = v174;
        *(v15 + 107) = v173;
        *(v15 + 4) = v175;
        if (sub_38E340(v15, v15 - 8))
        {
          v176 = *v77;
          v177 = *(v15 - 3);
          v178 = *(v15 - 1);
          *v293 = *(v15 - 2);
          *&v293[16] = v178;
          v291 = v176;
          v292 = v177;
          v179 = *(v15 + 1);
          *v77 = *v15;
          *(v15 - 3) = v179;
          *(v15 - 2) = *(v15 + 2);
          *(v15 - 21) = *(v15 + 43);
          v180 = *&v293[11];
          v181 = *v293;
          v182 = v291;
          *(v15 + 1) = v292;
          *(v15 + 2) = v181;
          *(v15 + 43) = v180;
          *v15 = v182;
        }
      }

      v197 = *a1;
      v198 = *(a1 + 1);
      v199 = *(a1 + 3);
      *v293 = *(a1 + 2);
      *&v293[16] = v199;
      v291 = v197;
      v292 = v198;
      v200 = *v15;
      v201 = *(v15 + 1);
      v202 = *(v15 + 2);
      *(a1 + 43) = *(v15 + 43);
      *(a1 + 1) = v201;
      *(a1 + 2) = v202;
      *a1 = v200;
      v203 = v291;
      v204 = v292;
      v205 = *v293;
      *(v15 + 43) = *&v293[11];
      *(v15 + 1) = v204;
      *(v15 + 2) = v205;
      *v15 = v203;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v24 = sub_38E340(v11, &v11[8 * (v14 >> 1)]);
    v25 = sub_38E340(a2 - 8, a1);
    if (v24)
    {
      if (v25)
      {
        v26 = *v15;
        v27 = *(v15 + 1);
        v28 = *(v15 + 3);
        *v293 = *(v15 + 2);
        *&v293[16] = v28;
        v291 = v26;
        v292 = v27;
        v29 = *v8;
        v30 = *(a2 - 3);
        v31 = *(a2 - 2);
        *(v15 + 43) = *(a2 - 21);
        *(v15 + 1) = v30;
        *(v15 + 2) = v31;
        *v15 = v29;
        goto LABEL_37;
      }

      v100 = *v15;
      v101 = *(v15 + 1);
      v102 = *(v15 + 3);
      *v293 = *(v15 + 2);
      *&v293[16] = v102;
      v291 = v100;
      v292 = v101;
      v103 = *a1;
      v104 = *(a1 + 1);
      v105 = *(a1 + 2);
      *(v15 + 43) = *(a1 + 43);
      *(v15 + 1) = v104;
      *(v15 + 2) = v105;
      *v15 = v103;
      v106 = v291;
      v107 = v292;
      v108 = *v293;
      *(a1 + 43) = *&v293[11];
      *(a1 + 1) = v107;
      *(a1 + 2) = v108;
      *a1 = v106;
      if (sub_38E340(a2 - 8, a1))
      {
        v109 = *a1;
        v110 = *(a1 + 1);
        v111 = *(a1 + 3);
        *v293 = *(a1 + 2);
        *&v293[16] = v111;
        v291 = v109;
        v292 = v110;
        v112 = *v8;
        v113 = *(a2 - 3);
        v114 = *(a2 - 2);
        *(a1 + 43) = *(a2 - 21);
        *(a1 + 1) = v113;
        *(a1 + 2) = v114;
        *a1 = v112;
LABEL_37:
        *v8 = v291;
        *(a2 - 3) = v292;
        *(a2 - 2) = *v293;
        *(a2 - 21) = *&v293[11];
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v25)
    {
      goto LABEL_38;
    }

    v47 = *a1;
    v48 = *(a1 + 1);
    v49 = *(a1 + 3);
    *v293 = *(a1 + 2);
    *&v293[16] = v49;
    v291 = v47;
    v292 = v48;
    v50 = *v8;
    v51 = *(a2 - 3);
    v52 = *(a2 - 2);
    *(a1 + 43) = *(a2 - 21);
    *(a1 + 1) = v51;
    *(a1 + 2) = v52;
    *a1 = v50;
    *v8 = v291;
    *(a2 - 3) = v292;
    *(a2 - 2) = *v293;
    *(a2 - 21) = *&v293[11];
    if (!sub_38E340(a1, v15))
    {
      goto LABEL_38;
    }

    v53 = *v15;
    v54 = *(v15 + 1);
    v55 = *(v15 + 3);
    *v293 = *(v15 + 2);
    *&v293[16] = v55;
    v291 = v53;
    v292 = v54;
    v56 = *a1;
    v57 = *(a1 + 1);
    v58 = *(a1 + 2);
    *(v15 + 43) = *(a1 + 43);
    *(v15 + 1) = v57;
    *(v15 + 2) = v58;
    *v15 = v56;
    v59 = v291;
    v60 = v292;
    v61 = *v293;
    *(a1 + 43) = *&v293[11];
    *(a1 + 1) = v60;
    *(a1 + 2) = v61;
    *a1 = v59;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if ((sub_38E340(a1 - 8, a1) & 1) == 0)
    {
      v11 = sub_365A10(a1, a2);
      goto LABEL_68;
    }

LABEL_63:
    v206 = sub_365B74(a1, a2);
    if ((v207 & 1) == 0)
    {
      goto LABEL_66;
    }

    v208 = sub_365CDC(a1, v206);
    v11 = (v206 + 4);
    if (sub_365CDC(v206 + 4, a2))
    {
      a4 = -v13;
      a2 = v206;
      if (v208)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v208)
    {
LABEL_66:
      sub_364A24(a1, v206, a3, -v13, a5 & 1);
      v11 = (v206 + 4);
LABEL_68:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_3657BC(v11, v11 + 4, v11 + 8, a2 - 4);
      return;
    }

    if (v14 == 5)
    {
      sub_3657BC(v11, v11 + 4, v11 + 8, v11 + 12);
      if (!sub_38E340(a2 - 8, v11 + 24))
      {
        return;
      }

      v226 = *(v11 + 15);
      *v293 = *(v11 + 14);
      v225 = *v293;
      *&v293[16] = v226;
      v228 = *(v11 + 12);
      v227 = *(v11 + 13);
      v230 = *(a2 - 3);
      v229 = *(a2 - 2);
      v231 = *v8;
      *(v11 + 235) = *(a2 - 21);
      *(v11 + 13) = v230;
      *(v11 + 14) = v229;
      *(v11 + 12) = v231;
      *v8 = v228;
      *(a2 - 3) = v227;
      *(a2 - 2) = v225;
      *(a2 - 21) = *&v293[11];
      if (!sub_38E340(v11 + 24, v11 + 16))
      {
        return;
      }

      v233 = *(v11 + 11);
      *v293 = *(v11 + 10);
      v232 = *v293;
      *&v293[16] = v233;
      v234 = *(v11 + 8);
      v235 = *(v11 + 9);
      v236 = *(v11 + 13);
      *(v11 + 8) = *(v11 + 12);
      *(v11 + 9) = v236;
      *(v11 + 10) = *(v11 + 14);
      *(v11 + 171) = *(v11 + 235);
      *(v11 + 13) = v235;
      *(v11 + 14) = v232;
      *(v11 + 12) = v234;
      *(v11 + 235) = *&v293[11];
      if (!sub_38E340(v11 + 16, v11 + 8))
      {
        return;
      }

      v238 = *(v11 + 7);
      *v293 = *(v11 + 6);
      v237 = *v293;
      *&v293[16] = v238;
      v239 = *(v11 + 4);
      v240 = *(v11 + 5);
      v241 = *(v11 + 9);
      *(v11 + 4) = *(v11 + 8);
      *(v11 + 5) = v241;
      *(v11 + 6) = *(v11 + 10);
      *(v11 + 107) = *(v11 + 171);
      *(v11 + 9) = v240;
      *(v11 + 10) = v237;
      *(v11 + 8) = v239;
      *(v11 + 171) = *&v293[11];
      goto LABEL_108;
    }

    goto LABEL_10;
  }

  v209 = sub_38E340(v11 + 8, v11);
  v210 = sub_38E340(v8, v11 + 8);
  if ((v209 & 1) == 0)
  {
    if (!v210)
    {
      return;
    }

    v266 = *(v11 + 7);
    *v293 = *(v11 + 6);
    v265 = *v293;
    *&v293[16] = v266;
    v268 = *(v11 + 4);
    v267 = *(v11 + 5);
    v270 = *(v8 + 1);
    v269 = *(v8 + 2);
    v271 = *v8;
    *(v11 + 107) = *(v8 + 43);
    *(v11 + 5) = v270;
    *(v11 + 6) = v269;
    *(v11 + 4) = v271;
    *v8 = v268;
    *(v8 + 1) = v267;
    *(v8 + 2) = v265;
    *(v8 + 43) = *&v293[11];
LABEL_108:
    if (sub_38E340(v11 + 8, v11))
    {
      v272 = *v11;
      v273 = *(v11 + 1);
      v274 = *(v11 + 3);
      *v293 = *(v11 + 2);
      *&v293[16] = v274;
      v291 = v272;
      v292 = v273;
      v275 = *(v11 + 5);
      *v11 = *(v11 + 4);
      *(v11 + 1) = v275;
      *(v11 + 2) = *(v11 + 6);
      *(v11 + 43) = *(v11 + 107);
      v276 = v291;
      v277 = v292;
      v278 = *v293;
      *(v11 + 107) = *&v293[11];
      *(v11 + 5) = v277;
      *(v11 + 6) = v278;
      *(v11 + 4) = v276;
    }

    return;
  }

  if (v210)
  {
    goto LABEL_80;
  }

  v211 = *v11;
  v212 = *(v11 + 1);
  v213 = *(v11 + 3);
  *v293 = *(v11 + 2);
  *&v293[16] = v213;
  v291 = v211;
  v292 = v212;
  v214 = *(v11 + 5);
  *v11 = *(v11 + 4);
  *(v11 + 1) = v214;
  *(v11 + 2) = *(v11 + 6);
  *(v11 + 43) = *(v11 + 107);
  v215 = v291;
  v216 = v292;
  v217 = *v293;
  *(v11 + 107) = *&v293[11];
  *(v11 + 5) = v216;
  *(v11 + 6) = v217;
  *(v11 + 4) = v215;
  if (sub_38E340(v8, v11 + 8))
  {
    v218 = *(v11 + 6);
    v219 = *(v11 + 7);
    *v293 = v218;
    *&v293[16] = v219;
    v221 = *(v11 + 4);
    v220 = *(v11 + 5);
    v223 = *(v8 + 1);
    v222 = *(v8 + 2);
    v224 = *v8;
    *(v11 + 107) = *(v8 + 43);
    *(v11 + 5) = v223;
    *(v11 + 6) = v222;
    *(v11 + 4) = v224;
    *v8 = v221;
    *(v8 + 1) = v220;
LABEL_81:
    *(v8 + 2) = v218;
    *(v8 + 43) = *&v293[11];
  }
}

__n128 sub_3657BC(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = sub_38E340(a2, a1);
  v9 = sub_38E340(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      *v56 = *(&v10 + 1);
      *&v56[8] = a1[3];
      v12 = *a1;
      v11 = a1[1];
      v14 = a3[1];
      v13 = a3[2];
      v15 = *a3;
      *(a1 + 43) = *(a3 + 43);
      a1[1] = v14;
      a1[2] = v13;
      *a1 = v15;
LABEL_9:
      *a3 = v12;
      a3[1] = v11;
      a3[2] = v10;
      *(a3 + 43) = *&v56[3];
      goto LABEL_10;
    }

    *v52 = a1[2];
    *&v52[16] = a1[3];
    v27 = *a1;
    v26 = a1[1];
    v29 = a2[1];
    v28 = a2[2];
    v30 = *a2;
    *(a1 + 43) = *(a2 + 43);
    a1[1] = v29;
    a1[2] = v28;
    *a1 = v30;
    *a2 = v27;
    a2[1] = v26;
    a2[2] = *v52;
    *(a2 + 43) = *&v52[11];
    if (sub_38E340(a3, a2))
    {
      v10 = a2[2];
      *v56 = *(&v10 + 1);
      *&v56[8] = a2[3];
      v12 = *a2;
      v11 = a2[1];
      v32 = a3[1];
      v31 = a3[2];
      v33 = *a3;
      *(a2 + 43) = *(a3 + 43);
      a2[1] = v32;
      a2[2] = v31;
      *a2 = v33;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    *v50 = a2[2];
    *&v50[16] = a2[3];
    v17 = *a2;
    v16 = a2[1];
    v19 = a3[1];
    v18 = a3[2];
    v20 = *a3;
    *(a2 + 43) = *(a3 + 43);
    a2[1] = v19;
    a2[2] = v18;
    *a2 = v20;
    *a3 = v17;
    a3[1] = v16;
    a3[2] = *v50;
    *(a3 + 43) = *&v50[11];
    if (sub_38E340(a2, a1))
    {
      *v51 = a1[2];
      *&v51[16] = a1[3];
      v22 = *a1;
      v21 = a1[1];
      v24 = a2[1];
      v23 = a2[2];
      v25 = *a2;
      *(a1 + 43) = *(a2 + 43);
      a1[1] = v24;
      a1[2] = v23;
      *a1 = v25;
      *a2 = v22;
      a2[1] = v21;
      a2[2] = *v51;
      *(a2 + 43) = *&v51[11];
    }
  }

LABEL_10:
  if (sub_38E340(a4, a3))
  {
    *v53 = a3[2];
    *&v53[16] = a3[3];
    v36 = *a3;
    v35 = a3[1];
    v38 = a4[1];
    v37 = a4[2];
    v39 = *a4;
    *(a3 + 43) = *(a4 + 43);
    a3[1] = v38;
    a3[2] = v37;
    *a3 = v39;
    *a4 = v36;
    a4[1] = v35;
    a4[2] = *v53;
    *(a4 + 43) = *&v53[11];
    if (sub_38E340(a3, a2))
    {
      *v54 = a2[2];
      *&v54[16] = a2[3];
      v41 = *a2;
      v40 = a2[1];
      v43 = a3[1];
      v42 = a3[2];
      v44 = *a3;
      *(a2 + 43) = *(a3 + 43);
      a2[1] = v43;
      a2[2] = v42;
      *a2 = v44;
      *a3 = v41;
      a3[1] = v40;
      a3[2] = *v54;
      *(a3 + 43) = *&v54[11];
      if (sub_38E340(a2, a1))
      {
        *v55 = a1[2];
        *&v55[16] = a1[3];
        v46 = *a1;
        v45 = a1[1];
        v48 = a2[1];
        v47 = a2[2];
        v49 = *a2;
        *(a1 + 43) = *(a2 + 43);
        a1[1] = v48;
        a1[2] = v47;
        *a1 = v49;
        *a2 = v46;
        a2[1] = v45;
        a2[2] = *v55;
        result = *&v55[11];
        *(a2 + 43) = *&v55[11];
      }
    }
  }

  return result;
}

uint64_t *sub_365A10(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 1);
  v26 = *a1;
  v27 = v4;
  v5 = *(a1 + 3);
  *v28 = *(a1 + 2);
  *&v28[16] = v5;
  if (sub_38E340(&v26, (a2 - 64)))
  {
    v6 = a1;
    do
    {
      v6 += 8;
    }

    while ((sub_38E340(&v26, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 8;
    do
    {
      v6 = v7;
      if (v7 >= v2)
      {
        break;
      }

      v8 = sub_38E340(&v26, v7);
      v7 = v6 + 8;
    }

    while (!v8);
  }

  if (v6 < v2)
  {
    do
    {
      v2 -= 64;
    }

    while ((sub_38E340(&v26, v2) & 1) != 0);
  }

  while (v6 < v2)
  {
    v9 = *v6;
    v10 = *(v6 + 1);
    v11 = *(v6 + 3);
    *v31 = *(v6 + 2);
    *&v31[16] = v11;
    v29 = v9;
    v30 = v10;
    v12 = *v2;
    v13 = *(v2 + 16);
    v14 = *(v2 + 32);
    *(v6 + 43) = *(v2 + 43);
    *(v6 + 1) = v13;
    *(v6 + 2) = v14;
    *v6 = v12;
    v15 = v29;
    v16 = v30;
    v17 = *v31;
    *(v2 + 43) = *&v31[11];
    *(v2 + 16) = v16;
    *(v2 + 32) = v17;
    *v2 = v15;
    do
    {
      v6 += 8;
    }

    while (!sub_38E340(&v26, v6));
    do
    {
      v2 -= 64;
    }

    while ((sub_38E340(&v26, v2) & 1) != 0);
  }

  v18 = v6 - 8;
  if (v6 - 8 != a1)
  {
    v19 = *v18;
    v20 = *(v6 - 3);
    v21 = *(v6 - 2);
    *(a1 + 43) = *(v6 - 21);
    *(a1 + 1) = v20;
    *(a1 + 2) = v21;
    *a1 = v19;
  }

  v22 = v26;
  v23 = v27;
  v24 = *v28;
  *(v6 - 21) = *&v28[11];
  *(v6 - 3) = v23;
  *(v6 - 2) = v24;
  *v18 = v22;
  return v6;
}

uint64_t *sub_365B74(uint64_t *a1, uint64_t *a2)
{
  v4 = 0;
  v5 = *(a1 + 1);
  v25 = *a1;
  v26 = v5;
  v6 = *(a1 + 3);
  *v27 = *(a1 + 2);
  *&v27[16] = v6;
  do
  {
    v4 += 8;
  }

  while ((sub_38E340(&a1[v4], &v25) & 1) != 0);
  v7 = &a1[v4];
  v8 = &a1[v4 - 8];
  if (v4 == 8)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 8;
    }

    while ((sub_38E340(a2, &v25) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 8;
    }

    while (!sub_38E340(a2, &v25));
  }

  if (v7 < a2)
  {
    v9 = &a1[v4];
    v10 = a2;
    do
    {
      v12 = *(v9 + 1);
      v28 = *v9;
      v11 = v28;
      v29 = v12;
      v13 = *(v9 + 3);
      *v30 = *(v9 + 2);
      v14 = *v30;
      *&v30[16] = v13;
      v15 = *(v10 + 43);
      v16 = *(v10 + 2);
      v17 = *v10;
      *(v9 + 1) = *(v10 + 1);
      *(v9 + 2) = v16;
      *(v9 + 43) = v15;
      *v9 = v17;
      *(v10 + 43) = *&v30[11];
      *(v10 + 1) = v12;
      *(v10 + 2) = v14;
      *v10 = v11;
      do
      {
        v9 += 8;
      }

      while ((sub_38E340(v9, &v25) & 1) != 0);
      do
      {
        v10 -= 8;
      }

      while (!sub_38E340(v10, &v25));
    }

    while (v9 < v10);
    v8 = v9 - 8;
  }

  if (v8 != a1)
  {
    v18 = *v8;
    v19 = *(v8 + 1);
    v20 = *(v8 + 2);
    *(a1 + 43) = *(v8 + 43);
    *(a1 + 1) = v19;
    *(a1 + 2) = v20;
    *a1 = v18;
  }

  v21 = v25;
  v22 = v26;
  v23 = *v27;
  *(v8 + 43) = *&v27[11];
  *(v8 + 1) = v22;
  *(v8 + 2) = v23;
  *v8 = v21;
  return v8;
}

BOOL sub_365CDC(__int128 *a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 4;
        v24 = sub_38E340(a1 + 8, a1);
        v25 = sub_38E340(v5, a1 + 8);
        if (v24)
        {
          if (!v25)
          {
            v67 = a1[3];
            *v99 = a1[2];
            v66 = *v99;
            *&v99[16] = v67;
            v68 = *a1;
            v69 = a1[1];
            v70 = a1[5];
            *a1 = a1[4];
            a1[1] = v70;
            a1[2] = a1[6];
            *(a1 + 43) = *(a1 + 107);
            a1[5] = v69;
            a1[6] = v66;
            a1[4] = v68;
            *(a1 + 107) = *&v99[11];
            if (!sub_38E340(v5, a1 + 8))
            {
              return 1;
            }

            v26 = a1[6];
            v71 = a1[7];
            *v99 = v26;
            *&v99[16] = v71;
            v29 = a1[4];
            v28 = a1[5];
            v73 = v5[1];
            v72 = v5[2];
            v74 = *v5;
            *(a1 + 107) = *(v5 + 43);
            a1[5] = v73;
            a1[6] = v72;
            a1[4] = v74;
            goto LABEL_16;
          }

LABEL_15:
          v26 = a1[2];
          v27 = a1[3];
          *v99 = v26;
          *&v99[16] = v27;
          v29 = *a1;
          v28 = a1[1];
          v31 = v5[1];
          v30 = v5[2];
          v32 = *v5;
          *(a1 + 43) = *(v5 + 43);
          a1[1] = v31;
          a1[2] = v30;
          *a1 = v32;
LABEL_16:
          *v5 = v29;
          v5[1] = v28;
          v5[2] = v26;
          *(v5 + 43) = *&v99[11];
          return 1;
        }

        if (!v25)
        {
          return 1;
        }

        v44 = a1[7];
        *v99 = a1[6];
        v43 = *v99;
        *&v99[16] = v44;
        v46 = a1[4];
        v45 = a1[5];
        v48 = v5[1];
        v47 = v5[2];
        v49 = *v5;
        *(a1 + 107) = *(v5 + 43);
        a1[5] = v48;
        a1[6] = v47;
        a1[4] = v49;
        *v5 = v46;
        v5[1] = v45;
        v5[2] = v43;
        *(v5 + 43) = *&v99[11];
        break;
      case 4:
        sub_3657BC(a1, a1 + 4, a1 + 8, a2 - 4);
        return 1;
      case 5:
        v6 = a2 - 4;
        sub_3657BC(a1, a1 + 4, a1 + 8, a1 + 12);
        if (!sub_38E340(v6, a1 + 24))
        {
          return 1;
        }

        v8 = a1[15];
        *v99 = a1[14];
        v7 = *v99;
        *&v99[16] = v8;
        v10 = a1[12];
        v9 = a1[13];
        v12 = v6[1];
        v11 = v6[2];
        v13 = *v6;
        *(a1 + 235) = *(v6 + 43);
        a1[13] = v12;
        a1[14] = v11;
        a1[12] = v13;
        *v6 = v10;
        v6[1] = v9;
        v6[2] = v7;
        *(v6 + 43) = *&v99[11];
        if (!sub_38E340(a1 + 24, a1 + 16))
        {
          return 1;
        }

        v15 = a1[11];
        *v99 = a1[10];
        v14 = *v99;
        *&v99[16] = v15;
        v16 = a1[8];
        v17 = a1[9];
        v18 = a1[13];
        a1[8] = a1[12];
        a1[9] = v18;
        a1[10] = a1[14];
        *(a1 + 171) = *(a1 + 235);
        a1[13] = v17;
        a1[14] = v14;
        a1[12] = v16;
        *(a1 + 235) = *&v99[11];
        if (!sub_38E340(a1 + 16, a1 + 8))
        {
          return 1;
        }

        v20 = a1[7];
        *v99 = a1[6];
        v19 = *v99;
        *&v99[16] = v20;
        v21 = a1[4];
        v22 = a1[5];
        v23 = a1[9];
        a1[4] = a1[8];
        a1[5] = v23;
        a1[6] = a1[10];
        *(a1 + 107) = *(a1 + 171);
        a1[9] = v22;
        a1[10] = v19;
        a1[8] = v21;
        *(a1 + 171) = *&v99[11];
        break;
      default:
        goto LABEL_17;
    }

    if (sub_38E340(a1 + 8, a1))
    {
      v51 = a1[3];
      *v99 = a1[2];
      v50 = *v99;
      *&v99[16] = v51;
      v52 = *a1;
      v53 = a1[1];
      v54 = a1[5];
      *a1 = a1[4];
      a1[1] = v54;
      a1[2] = a1[6];
      *(a1 + 43) = *(a1 + 107);
      a1[5] = v53;
      a1[6] = v50;
      a1[4] = v52;
      *(a1 + 107) = *&v99[11];
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 4;
    if (!sub_38E340(a2 - 8, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v34 = sub_38E340(a1 + 8, a1);
  v35 = a1 + 8;
  v33 = a1 + 8;
  v36 = sub_38E340(a1 + 16, a1 + 8);
  if (v34)
  {
    if (v36)
    {
      v38 = a1[3];
      *v99 = a1[2];
      v37 = *v99;
      *&v99[16] = v38;
      v39 = *a1;
      v40 = a1[1];
      v41 = (a1 + 8);
      v42 = a1[9];
      *a1 = *v33;
      a1[1] = v42;
      a1[2] = a1[10];
      *(a1 + 43) = *(a1 + 171);
      a1[9] = v40;
      a1[10] = v37;
      *v33 = v39;
      *(a1 + 171) = *&v99[11];
    }

    else
    {
      v76 = a1[3];
      *v99 = a1[2];
      v75 = *v99;
      *&v99[16] = v76;
      v77 = *a1;
      v78 = a1[1];
      v79 = a1[5];
      *a1 = a1[4];
      a1[1] = v79;
      a1[2] = a1[6];
      *(a1 + 43) = *(a1 + 107);
      a1[5] = v78;
      a1[6] = v75;
      a1[4] = v77;
      *(a1 + 107) = *&v99[11];
      v80 = sub_38E340(a1 + 16, a1 + 8);
      v41 = (a1 + 8);
      if (v80)
      {
        v82 = a1[7];
        *v99 = a1[6];
        v81 = *v99;
        *&v99[16] = v82;
        v83 = a1[4];
        v84 = a1[5];
        v85 = a1[9];
        a1[4] = *v35;
        a1[5] = v85;
        a1[6] = a1[10];
        *(a1 + 107) = *(a1 + 171);
        a1[9] = v84;
        a1[10] = v81;
        *v35 = v83;
        *(a1 + 171) = *&v99[11];
      }
    }
  }

  else
  {
    v41 = (a1 + 8);
    if (v36)
    {
      v56 = a1[7];
      *v99 = a1[6];
      v55 = *v99;
      *&v99[16] = v56;
      v57 = a1[4];
      v58 = a1[5];
      v59 = a1[9];
      a1[4] = *v35;
      a1[5] = v59;
      a1[6] = a1[10];
      *(a1 + 107) = *(a1 + 171);
      a1[9] = v58;
      a1[10] = v55;
      *v35 = v57;
      *(a1 + 171) = *&v99[11];
      v60 = sub_38E340(a1 + 8, a1);
      v41 = (a1 + 8);
      if (v60)
      {
        v62 = a1[3];
        *v99 = a1[2];
        v61 = *v99;
        *&v99[16] = v62;
        v63 = *a1;
        v64 = a1[1];
        v65 = a1[5];
        *a1 = a1[4];
        a1[1] = v65;
        a1[2] = a1[6];
        *(a1 + 43) = *(a1 + 107);
        a1[5] = v64;
        a1[6] = v61;
        a1[4] = v63;
        *(a1 + 107) = *&v99[11];
      }
    }
  }

  v86 = (a1 + 12);
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v87 = 0;
  v88 = 0;
  while (1)
  {
    if (sub_38E340(v86, v41))
    {
      v91 = *(v86 + 1);
      v97 = *v86;
      v98 = v91;
      v92 = *(v86 + 3);
      *v99 = *(v86 + 2);
      *&v99[16] = v92;
      v93 = v87;
      do
      {
        v94 = a1 + v93;
        v95 = *(a1 + v93 + 144);
        *(v94 + 192) = *(a1 + v93 + 128);
        *(v94 + 208) = v95;
        *(v94 + 224) = *(a1 + v93 + 160);
        *(v94 + 235) = *(a1 + v93 + 171);
        if (v93 == -128)
        {
          v89 = a1;
          goto LABEL_35;
        }

        v93 -= 64;
      }

      while ((sub_38E340(&v97, (v94 + 64)) & 1) != 0);
      v89 = (a1 + v93 + 192);
LABEL_35:
      v90 = v98;
      *v89 = v97;
      v89[1] = v90;
      v89[2] = *v99;
      *(v89 + 43) = *&v99[11];
      if (++v88 == 8)
      {
        return v86 + 8 == a2;
      }
    }

    v41 = v86;
    v87 += 64;
    v86 += 8;
    if (v86 == a2)
    {
      return 1;
    }
  }
}

_OWORD *sub_366204(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return a3;
  }

  v5 = a2;
  v7 = a2 - a1;
  v8 = (a2 - a1) >> 6;
  if (v8 >= 2)
  {
    v10 = (v8 - 2) >> 1;
    v11 = v10 + 1;
    v12 = (a1 + (v10 << 6));
    do
    {
      sub_366614(a1, a4, v8, v12);
      v12 -= 4;
      --v11;
    }

    while (v11);
  }

  v13 = v5;
  if (v5 != a3)
  {
    if (v8 < 2)
    {
      v13 = v5;
      do
      {
        if (sub_38E340(v13, a1))
        {
          v15 = v13[3];
          *v77 = v13[2];
          v14 = *v77;
          *&v77[16] = v15;
          v17 = *v13;
          v16 = v13[1];
          v19 = *(a1 + 16);
          v18 = *(a1 + 32);
          v20 = *a1;
          *(v13 + 43) = *(a1 + 43);
          v13[1] = v19;
          v13[2] = v18;
          *v13 = v20;
          *a1 = v17;
          *(a1 + 16) = v16;
          *(a1 + 32) = v14;
          *(a1 + 43) = *&v77[11];
        }

        v13 += 4;
      }

      while (v13 != a3);
      goto LABEL_29;
    }

    v21 = (a1 + 64);
    v13 = v5;
    v70 = v7;
    v71 = a3;
    do
    {
      if (sub_38E340(v13, a1))
      {
        v26 = v13[3];
        *v77 = v13[2];
        v25 = *v77;
        *&v77[16] = v26;
        v28 = *v13;
        v27 = v13[1];
        v30 = *(a1 + 16);
        v29 = *(a1 + 32);
        v31 = *a1;
        *(v13 + 43) = *(a1 + 43);
        v13[1] = v30;
        v13[2] = v29;
        *v13 = v31;
        *a1 = v28;
        *(a1 + 16) = v27;
        *(a1 + 32) = v25;
        *(a1 + 43) = *&v77[11];
        if (v7 == &stru_68.segname[8])
        {
          v32 = v21;
          v33 = 1;
          if ((sub_38E340(v21, a1) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v32 = (a1 + 128);
          if (sub_38E340(v21, (a1 + 128)))
          {
            v33 = 2;
          }

          else
          {
            v32 = v21;
            v33 = 1;
          }

          if ((sub_38E340(v32, a1) & 1) == 0)
          {
LABEL_22:
            v34 = *(a1 + 16);
            v75 = *a1;
            v76 = v34;
            v35 = *(a1 + 48);
            *v77 = *(a1 + 32);
            *&v77[16] = v35;
            v36 = a1;
            do
            {
              v38 = v32;
              v39 = *v32;
              v40 = *(v32 + 1);
              v41 = *(v32 + 2);
              *(v36 + 43) = *(v32 + 43);
              v36[1] = v40;
              v36[2] = v41;
              *v36 = v39;
              if (((v8 - 2) >> 1) < v33)
              {
                break;
              }

              v42 = (2 * v33) | 1;
              v32 = (a1 + (v42 << 6));
              if (2 * v33 + 2 < v8 && sub_38E340((a1 + (v42 << 6)), v32 + 8))
              {
                v32 += 8;
                v42 = 2 * v33 + 2;
              }

              v37 = sub_38E340(v32, &v75);
              v36 = v38;
              v33 = v42;
            }

            while (!v37);
            v22 = v75;
            v23 = v76;
            v24 = *v77;
            *(v38 + 43) = *&v77[11];
            *(v38 + 1) = v23;
            *(v38 + 2) = v24;
            *v38 = v22;
            v7 = v70;
            a3 = v71;
            v21 = (a1 + 64);
          }
        }
      }

      v13 += 4;
    }

    while (v13 != a3);
  }

LABEL_29:
  if (v8 >= 2)
  {
    do
    {
      v45 = 0;
      v72 = *a1;
      v73 = *(a1 + 16);
      *v74 = *(a1 + 32);
      *&v74[16] = *(a1 + 48);
      v46 = a1;
      do
      {
        v50 = &v46[4 * v45];
        v51 = v50 + 4;
        v52 = (2 * v45) | 1;
        v53 = 2 * v45 + 2;
        if (v53 < v8)
        {
          v54 = v50 + 8;
          if (sub_38E340(v50 + 8, v50 + 16))
          {
            v51 = v54;
            v52 = v53;
          }
        }

        v47 = *v51;
        v48 = v51[1];
        v49 = v51[2];
        *(v46 + 43) = *(v51 + 43);
        v46[1] = v48;
        v46[2] = v49;
        *v46 = v47;
        v46 = v51;
        v45 = v52;
      }

      while (v52 <= ((v8 - 2) >> 1));
      v5 -= 4;
      if (v51 == v5)
      {
        *(v51 + 43) = *&v74[11];
        v51[1] = v73;
        v51[2] = *v74;
        *v51 = v72;
      }

      else
      {
        v55 = *v5;
        v56 = v5[1];
        v57 = v5[2];
        *(v51 + 43) = *(v5 + 43);
        v51[1] = v56;
        v51[2] = v57;
        *v51 = v55;
        *v5 = v72;
        v5[1] = v73;
        v5[2] = *v74;
        *(v5 + 43) = *&v74[11];
        v58 = (v51 - a1 + 64) >> 6;
        v44 = v58 < 2;
        v59 = v58 - 2;
        if (!v44)
        {
          v60 = v59 >> 1;
          v61 = (a1 + (v59 >> 1 << 6));
          if (sub_38E340(v61, v51))
          {
            v62 = *v51;
            v63 = v51[1];
            v64 = v51[3];
            *v77 = v51[2];
            *&v77[16] = v64;
            v75 = v62;
            v76 = v63;
            do
            {
              v65 = v61;
              v66 = *v61;
              v67 = v61[1];
              v68 = v61[2];
              *(v51 + 43) = *(v61 + 43);
              v51[1] = v67;
              v51[2] = v68;
              *v51 = v66;
              if (!v60)
              {
                break;
              }

              v60 = (v60 - 1) >> 1;
              v61 = (a1 + (v60 << 6));
              v51 = v65;
            }

            while ((sub_38E340(v61, &v75) & 1) != 0);
            v69 = v76;
            *v65 = v75;
            v65[1] = v69;
            v65[2] = *v77;
            *(v65 + 43) = *&v77[11];
          }
        }
      }

      v44 = v8-- <= 2;
    }

    while (!v44);
  }

  return v13;
}

__n128 sub_366614(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v29 = v4;
    v30 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 6)
    {
      v11 = (a4 - a1) >> 5;
      v12 = v11 + 1;
      v13 = (a1 + ((v11 + 1) << 6));
      v14 = v11 + 2;
      if (v11 + 2 < a3 && sub_38E340((a1 + ((v11 + 1) << 6)), v13 + 8))
      {
        v13 += 4;
        v12 = v14;
      }

      if ((sub_38E340(v13, v7) & 1) == 0)
      {
        v16 = v7[1];
        v26 = *v7;
        v27 = v16;
        v17 = v7[3];
        *v28 = v7[2];
        *&v28[16] = v17;
        do
        {
          v18 = v13;
          v19 = *v13;
          v20 = v13[1];
          v21 = v13[2];
          *(v7 + 43) = *(v13 + 43);
          v7[1] = v20;
          v7[2] = v21;
          *v7 = v19;
          if (v9 < v12)
          {
            break;
          }

          v22 = (2 * v12) | 1;
          v13 = (a1 + (v22 << 6));
          v23 = 2 * v12 + 2;
          if (v23 < a3)
          {
            if (sub_38E340((a1 + (v22 << 6)), v13 + 8))
            {
              v13 += 4;
              v22 = v23;
            }
          }

          v7 = v18;
          v12 = v22;
        }

        while (!sub_38E340(v13, &v26));
        result = v26;
        v24 = v27;
        v25 = *v28;
        *(v18 + 43) = *&v28[11];
        v18[1] = v24;
        v18[2] = v25;
        *v18 = result;
      }
    }
  }

  return result;
}

uint64_t sub_366760(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = a2 - 4;
  v10 = a2 - 6;
  v11 = v7;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v7 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 3;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      result = sub_3907A8(a2 - 2, v11);
      if (result)
      {
        v78 = *v11;
        v79 = *v8;
        *(v11 + 3) = *(a2 - 5);
        *v11 = v79;
LABEL_115:
        *v8 = v78;
        *(v8 + 6) = BYTE6(v78);
        *(v8 + 2) = WORD2(v78);
        return result;
      }

      return result;
    }

LABEL_11:
    if (v14 <= 23)
    {
      v80 = (v11 + 8);
      v82 = v11 == a2 || v80 == a2;
      if (a5)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v11;
          do
          {
            v87 = v84;
            v84 = v80;
            result = sub_3907A8(v80, v87);
            if (result)
            {
              v99 = *v84;
              v88 = v83;
              do
              {
                v89 = v11 + v88;
                *(v89 + 8) = *(v11 + v88);
                *(v89 + 11) = *(v11 + v88 + 3);
                if (!v88)
                {
                  v85 = v11;
                  goto LABEL_91;
                }

                v88 -= 8;
                result = sub_3907A8(&v99, v88 + v11);
              }

              while ((result & 1) != 0);
              v85 = (v11 + v88 + 8);
LABEL_91:
              v86 = v99;
              *(v85 + 3) = *(&v99 + 3);
              *v85 = v86;
            }

            v80 = (v84 + 1);
            v83 += 8;
          }

          while (v84 + 1 != a2);
        }
      }

      else if (!v82)
      {
        v93 = (v11 - 8);
        do
        {
          v94 = v7;
          v7 = v80;
          result = sub_3907A8(v80, v94);
          if (result)
          {
            v99 = *v7;
            v95 = v93;
            do
            {
              v95[4] = v95[2];
              *(v95 + 19) = *(v95 + 11);
              result = sub_3907A8(&v99, v95);
              v95 -= 2;
            }

            while ((result & 1) != 0);
            v96 = v99;
            *(v95 + 19) = *(&v99 + 3);
            v95[4] = v96;
          }

          v80 = (v7 + 8);
          v93 += 2;
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        return sub_367B1C(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = v11 + 8 * (v14 >> 1);
    if (v14 >= 0x81)
    {
      v16 = sub_3907A8((v11 + 8 * (v14 >> 1)), v11);
      v17 = sub_3907A8(a2 - 2, v15);
      if (v16)
      {
        v18 = *v7;
        if (v17)
        {
          v19 = *v8;
          *(v7 + 3) = *(a2 - 5);
          *v7 = v19;
          *(a2 - 2) = BYTE6(v18);
          *(a2 - 2) = WORD2(v18);
          *v8 = v18;
        }

        else
        {
          v32 = *v15;
          *(v7 + 3) = *(v15 + 3);
          *v7 = v32;
          *(v15 + 6) = BYTE6(v18);
          *(v15 + 4) = WORD2(v18);
          *v15 = v18;
          if (sub_3907A8(a2 - 2, v15))
          {
            v33 = *v15;
            v34 = *v8;
            *(v15 + 3) = *(a2 - 5);
            *v15 = v34;
            *v8 = v33;
            *(a2 - 2) = BYTE6(v33);
            *(a2 - 2) = WORD2(v33);
          }
        }
      }

      else if (v17)
      {
        v24 = *v15;
        v25 = *v8;
        *(v15 + 3) = *(a2 - 5);
        *v15 = v25;
        *v8 = v24;
        *(a2 - 2) = BYTE6(v24);
        *(a2 - 2) = WORD2(v24);
        if (sub_3907A8(v15, v7))
        {
          v26 = *v7;
          v27 = *v15;
          *(v7 + 3) = *(v15 + 3);
          *v7 = v27;
          *v15 = v26;
          *(v15 + 6) = BYTE6(v26);
          *(v15 + 4) = WORD2(v26);
        }
      }

      v35 = (v15 - 8);
      v36 = sub_3907A8((v15 - 8), v7 + 8);
      v37 = sub_3907A8(a2 - 4, v15 - 8);
      if (v36)
      {
        v38 = *(v7 + 8);
        if (v37)
        {
          v39 = *v9;
          *(v7 + 11) = *(a2 - 13);
          *(v7 + 8) = v39;
          *(a2 - 10) = BYTE6(v38);
          *(a2 - 6) = WORD2(v38);
          *v9 = v38;
        }

        else
        {
          v47 = *v35;
          *(v7 + 11) = *(v15 - 5);
          *(v7 + 8) = v47;
          *(v15 - 2) = BYTE6(v38);
          *(v15 - 4) = WORD2(v38);
          *v35 = v38;
          if (sub_3907A8(a2 - 4, v15 - 8))
          {
            v48 = *v35;
            v49 = *v9;
            *(v15 - 5) = *(a2 - 13);
            *v35 = v49;
            *v9 = v48;
            *(a2 - 10) = BYTE6(v48);
            *(a2 - 6) = WORD2(v48);
          }
        }
      }

      else if (v37)
      {
        v40 = *v35;
        v41 = *v9;
        *(v15 - 5) = *(a2 - 13);
        *v35 = v41;
        *v9 = v40;
        *(a2 - 10) = BYTE6(v40);
        *(a2 - 6) = WORD2(v40);
        if (sub_3907A8((v15 - 8), v7 + 8))
        {
          v42 = *(v7 + 8);
          v43 = *v35;
          *(v7 + 11) = *(v15 - 5);
          *(v7 + 8) = v43;
          *v35 = v42;
          *(v15 - 2) = BYTE6(v42);
          *(v15 - 4) = WORD2(v42);
        }
      }

      v50 = sub_3907A8((v15 + 8), v7 + 16);
      v51 = sub_3907A8(a2 - 6, v15 + 8);
      if (v50)
      {
        v52 = *(v7 + 16);
        if (v51)
        {
          v53 = *v10;
          *(v7 + 19) = *(a2 - 21);
          *(v7 + 16) = v53;
          *(a2 - 18) = BYTE6(v52);
          *(a2 - 10) = WORD2(v52);
          *v10 = v52;
        }

        else
        {
          v58 = *(v15 + 8);
          *(v7 + 19) = *(v15 + 11);
          *(v7 + 16) = v58;
          *(v15 + 14) = BYTE6(v52);
          *(v15 + 12) = WORD2(v52);
          *(v15 + 8) = v52;
          if (sub_3907A8(a2 - 6, v15 + 8))
          {
            v59 = *(v15 + 8);
            v60 = *v10;
            *(v15 + 11) = *(a2 - 21);
            *(v15 + 8) = v60;
            *v10 = v59;
            *(a2 - 18) = BYTE6(v59);
            *(a2 - 10) = WORD2(v59);
          }
        }
      }

      else if (v51)
      {
        v54 = *(v15 + 8);
        v55 = *v10;
        *(v15 + 11) = *(a2 - 21);
        *(v15 + 8) = v55;
        *v10 = v54;
        *(a2 - 18) = BYTE6(v54);
        *(a2 - 10) = WORD2(v54);
        if (sub_3907A8((v15 + 8), v7 + 16))
        {
          v56 = *(v7 + 16);
          v57 = *(v15 + 8);
          *(v7 + 19) = *(v15 + 11);
          *(v7 + 16) = v57;
          *(v15 + 8) = v56;
          *(v15 + 14) = BYTE6(v56);
          *(v15 + 12) = WORD2(v56);
        }
      }

      v61 = sub_3907A8(v15, v15 - 8);
      v62 = sub_3907A8((v15 + 8), v15);
      if (v61)
      {
        v63 = *v35;
        if (v62)
        {
          *v35 = *(v15 + 8);
          *(v15 - 5) = *(v15 + 11);
          goto LABEL_58;
        }

        *v35 = *v15;
        *(v15 - 5) = *(v15 + 3);
        *v15 = v63;
        *(v15 + 4) = WORD2(v63);
        *(v15 + 6) = BYTE6(v63);
        if (sub_3907A8((v15 + 8), v15))
        {
          v63 = *v15;
          *v15 = *(v15 + 8);
          *(v15 + 3) = *(v15 + 11);
LABEL_58:
          *(v15 + 8) = v63;
          *(v15 + 12) = WORD2(v63);
          *(v15 + 14) = BYTE6(v63);
        }
      }

      else if (v62)
      {
        v64 = *v15;
        *v15 = *(v15 + 8);
        *(v15 + 3) = *(v15 + 11);
        *(v15 + 8) = v64;
        *(v15 + 12) = WORD2(v64);
        *(v15 + 14) = BYTE6(v64);
        if (sub_3907A8(v15, v15 - 8))
        {
          v65 = *v35;
          *v35 = *v15;
          *(v15 - 5) = *(v15 + 3);
          *v15 = v65;
          *(v15 + 4) = WORD2(v65);
          *(v15 + 6) = BYTE6(v65);
        }
      }

      v66 = *v7;
      v67 = *v15;
      *(v7 + 3) = *(v15 + 3);
      *v7 = v67;
      *v15 = v66;
      *(v15 + 6) = BYTE6(v66);
      *(v15 + 4) = WORD2(v66);
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v20 = sub_3907A8(v11, v11 + 8 * (v14 >> 1));
    v21 = sub_3907A8(a2 - 2, v7);
    if (v20)
    {
      v22 = *v15;
      if (!v21)
      {
        v44 = *v7;
        *(v15 + 3) = *(v7 + 3);
        *v15 = v44;
        *(v7 + 6) = BYTE6(v22);
        *(v7 + 4) = WORD2(v22);
        *v7 = v22;
        if (sub_3907A8(a2 - 2, v7))
        {
          v45 = *v7;
          v46 = *v8;
          *(v7 + 3) = *(a2 - 5);
          *v7 = v46;
          *v8 = v45;
          *(a2 - 2) = BYTE6(v45);
          *(a2 - 2) = WORD2(v45);
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v23 = *v8;
      *(v15 + 3) = *(a2 - 5);
      *v15 = v23;
      *(a2 - 2) = BYTE6(v22);
      *(a2 - 2) = WORD2(v22);
      *v8 = v22;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v21)
      {
        goto LABEL_38;
      }

      v28 = *v7;
      v29 = *v8;
      *(v7 + 3) = *(a2 - 5);
      *v7 = v29;
      *v8 = v28;
      *(a2 - 2) = BYTE6(v28);
      *(a2 - 2) = WORD2(v28);
      if (!sub_3907A8(v7, v15))
      {
        goto LABEL_38;
      }

      v30 = *v15;
      v31 = *v7;
      *(v15 + 3) = *(v7 + 3);
      *v15 = v31;
      *v7 = v30;
      *(v7 + 6) = BYTE6(v30);
      *(v7 + 4) = WORD2(v30);
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (!sub_3907A8((v7 - 8), v7))
    {
      result = sub_367418(v7, a2);
      v11 = result;
      goto LABEL_66;
    }

LABEL_61:
    v68 = sub_36754C(v7, a2);
    if ((v69 & 1) == 0)
    {
      goto LABEL_64;
    }

    v70 = sub_36768C(v7, v68);
    v11 = (v68 + 2);
    result = sub_36768C((v68 + 2), a2);
    if (result)
    {
      a4 = -v13;
      a2 = v68;
      if (v70)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v70)
    {
LABEL_64:
      result = sub_366760(v7, v68, a3, -v13, a5 & 1);
      v11 = (v68 + 2);
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      return sub_367220(v11, v11 + 8, v11 + 16, (a2 - 2));
    }

    if (v14 == 5)
    {
      sub_367220(v11, v11 + 8, v11 + 16, v11 + 24);
      result = sub_3907A8(a2 - 2, v11 + 24);
      if (!result)
      {
        return result;
      }

      v74 = *(v11 + 24);
      v75 = *v8;
      *(v11 + 27) = *(a2 - 5);
      *(v11 + 24) = v75;
      *v8 = v74;
      *(a2 - 2) = BYTE6(v74);
      *(a2 - 2) = WORD2(v74);
      result = sub_3907A8((v11 + 24), v11 + 16);
      if (!result)
      {
        return result;
      }

      v76 = *(v11 + 16);
      *(v11 + 16) = *(v11 + 24);
      *(v11 + 19) = *(v11 + 27);
      *(v11 + 24) = v76;
      *(v11 + 28) = WORD2(v76);
      *(v11 + 30) = BYTE6(v76);
      result = sub_3907A8((v11 + 16), v11 + 8);
      if (!result)
      {
        return result;
      }

      v77 = *(v11 + 8);
      *(v11 + 8) = *(v11 + 16);
      *(v11 + 11) = *(v11 + 19);
      *(v11 + 16) = v77;
      *(v11 + 22) = BYTE6(v77);
      *(v11 + 20) = WORD2(v77);
      goto LABEL_104;
    }

    goto LABEL_11;
  }

  v71 = sub_3907A8((v11 + 8), v11);
  result = sub_3907A8(v8, v11 + 8);
  if (!v71)
  {
    if (!result)
    {
      return result;
    }

    v90 = *(v11 + 8);
    v91 = *v8;
    *(v11 + 11) = *(v8 + 3);
    *(v11 + 8) = v91;
    *v8 = v90;
    *(v8 + 6) = BYTE6(v90);
    *(v8 + 2) = WORD2(v90);
LABEL_104:
    result = sub_3907A8((v11 + 8), v11);
    if (result)
    {
      v92 = *v11;
      *v11 = *(v11 + 8);
      *(v11 + 3) = *(v11 + 11);
      *(v11 + 8) = v92;
      *(v11 + 14) = BYTE6(v92);
      *(v11 + 12) = WORD2(v92);
    }

    return result;
  }

  v72 = *v11;
  if (result)
  {
    v73 = *v8;
    *(v11 + 3) = *(v8 + 3);
    *v11 = v73;
    *(v8 + 6) = BYTE6(v72);
    *(v8 + 2) = WORD2(v72);
    *v8 = v72;
    return result;
  }

  *v11 = *(v11 + 8);
  *(v11 + 3) = *(v11 + 11);
  *(v11 + 8) = v72;
  *(v11 + 14) = BYTE6(v72);
  *(v11 + 12) = WORD2(v72);
  result = sub_3907A8(v8, v11 + 8);
  if (result)
  {
    v78 = *(v11 + 8);
    v97 = *v8;
    *(v11 + 11) = *(v8 + 3);
    *(v11 + 8) = v97;
    goto LABEL_115;
  }

  return result;
}

BOOL sub_367220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_3907A8(a2, a1);
  v9 = sub_3907A8(a3, a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      v11 = *a3;
      *(a1 + 3) = *(a3 + 3);
      *a1 = v11;
      *(a3 + 6) = BYTE6(v10);
      *(a3 + 4) = WORD2(v10);
      *a3 = v10;
    }

    else
    {
      v16 = *a2;
      *(a1 + 3) = *(a2 + 3);
      *a1 = v16;
      *(a2 + 6) = BYTE6(v10);
      *(a2 + 4) = WORD2(v10);
      *a2 = v10;
      if (sub_3907A8(a3, a2))
      {
        v17 = *a2;
        v18 = *a3;
        *(a2 + 3) = *(a3 + 3);
        *a2 = v18;
        *a3 = v17;
        *(a3 + 6) = BYTE6(v17);
        *(a3 + 4) = WORD2(v17);
      }
    }
  }

  else if (v9)
  {
    v12 = *a2;
    v13 = *a3;
    *(a2 + 3) = *(a3 + 3);
    *a2 = v13;
    *a3 = v12;
    *(a3 + 6) = BYTE6(v12);
    *(a3 + 4) = WORD2(v12);
    if (sub_3907A8(a2, a1))
    {
      v14 = *a1;
      v15 = *a2;
      *(a1 + 3) = *(a2 + 3);
      *a1 = v15;
      *a2 = v14;
      *(a2 + 6) = BYTE6(v14);
      *(a2 + 4) = WORD2(v14);
    }
  }

  result = sub_3907A8(a4, a3);
  if (result)
  {
    v20 = *a3;
    v21 = *a4;
    *(a3 + 3) = *(a4 + 3);
    *a3 = v21;
    *a4 = v20;
    *(a4 + 6) = BYTE6(v20);
    *(a4 + 4) = WORD2(v20);
    result = sub_3907A8(a3, a2);
    if (result)
    {
      v22 = *a2;
      v23 = *a3;
      *(a2 + 3) = *(a3 + 3);
      *a2 = v23;
      *a3 = v22;
      *(a3 + 6) = BYTE6(v22);
      *(a3 + 4) = WORD2(v22);
      result = sub_3907A8(a2, a1);
      if (result)
      {
        v24 = *a1;
        v25 = *a2;
        *(a1 + 3) = *(a2 + 3);
        *a1 = v25;
        *a2 = v24;
        *(a2 + 6) = BYTE6(v24);
        *(a2 + 4) = WORD2(v24);
      }
    }
  }

  return result;
}

unint64_t sub_367418(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v13 = *a1;
  if (sub_3907A8(&v13, a2 - 8))
  {
    v4 = a1;
    do
    {
      v4 += 8;
    }

    while (!sub_3907A8(&v13, v4));
  }

  else
  {
    v5 = a1 + 8;
    do
    {
      v4 = v5;
      if (v5 >= v2)
      {
        break;
      }

      v6 = sub_3907A8(&v13, v5);
      v5 = v4 + 8;
    }

    while (!v6);
  }

  if (v4 < v2)
  {
    do
    {
      v2 -= 8;
    }

    while (sub_3907A8(&v13, v2));
  }

  while (v4 < v2)
  {
    v7 = *v4;
    v8 = *v2;
    *(v4 + 3) = *(v2 + 3);
    *v4 = v8;
    *v2 = v7;
    *(v2 + 6) = BYTE6(v7);
    *(v2 + 4) = WORD2(v7);
    do
    {
      v4 += 8;
    }

    while (!sub_3907A8(&v13, v4));
    do
    {
      v2 -= 8;
    }

    while (sub_3907A8(&v13, v2));
  }

  v9 = (v4 - 8);
  if (v4 - 8 != a1)
  {
    v10 = *v9;
    *(a1 + 3) = *(v4 - 5);
    *a1 = v10;
  }

  v11 = v13;
  *(v4 - 5) = *(&v13 + 3);
  *v9 = v11;
  return v4;
}

int *sub_36754C(int *a1, int *a2)
{
  v4 = 0;
  v14 = *a1;
  do
  {
    v4 += 2;
  }

  while (sub_3907A8(&a1[v4], &v14));
  v5 = &a1[v4];
  v6 = &a1[v4 - 2];
  if (v4 == 2)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 2;
    }

    while (!sub_3907A8(a2, &v14));
  }

  else
  {
    do
    {
      a2 -= 2;
    }

    while (!sub_3907A8(a2, &v14));
  }

  if (v5 < a2)
  {
    v7 = &a1[v4];
    v8 = a2;
    do
    {
      v9 = *v7;
      v10 = *v8;
      *(v7 + 3) = *(v8 + 3);
      *v7 = v10;
      *v8 = v9;
      *(v8 + 6) = BYTE6(v9);
      *(v8 + 2) = WORD2(v9);
      do
      {
        v7 += 2;
      }

      while (sub_3907A8(v7, &v14));
      do
      {
        v8 -= 2;
      }

      while (!sub_3907A8(v8, &v14));
    }

    while (v7 < v8);
    v6 = v7 - 2;
  }

  if (v6 != a1)
  {
    v11 = *v6;
    *(a1 + 3) = *(v6 + 3);
    *a1 = v11;
  }

  v12 = v14;
  *(v6 + 3) = *(&v14 + 3);
  *v6 = v12;
  return v6;
}

BOOL sub_36768C(uint64_t a1, int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 2;
        v13 = sub_3907A8((a1 + 8), a1);
        v14 = sub_3907A8(v5, a1 + 8);
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            v16 = *v5;
            *(a1 + 3) = *(v5 + 3);
            *a1 = v16;
            *(v5 + 6) = BYTE6(v15);
            *(v5 + 2) = WORD2(v15);
            *v5 = v15;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 3) = *(a1 + 11);
          *(a1 + 8) = v15;
          *(a1 + 14) = BYTE6(v15);
          *(a1 + 12) = WORD2(v15);
          if (!sub_3907A8(v5, a1 + 8))
          {
            return 1;
          }

          v6 = *(a1 + 8);
          v28 = *v5;
          *(a1 + 11) = *(v5 + 3);
          *(a1 + 8) = v28;
          goto LABEL_6;
        }

        if (!v14)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        v23 = *v5;
        *(a1 + 11) = *(v5 + 3);
        *(a1 + 8) = v23;
        *v5 = v22;
        *(v5 + 6) = BYTE6(v22);
        *(v5 + 2) = WORD2(v22);
        break;
      case 4:
        sub_367220(a1, a1 + 8, a1 + 16, (a2 - 2));
        return 1;
      case 5:
        v8 = a2 - 2;
        sub_367220(a1, a1 + 8, a1 + 16, a1 + 24);
        if (!sub_3907A8(v8, a1 + 24))
        {
          return 1;
        }

        v9 = *(a1 + 24);
        v10 = *v8;
        *(a1 + 27) = *(v8 + 3);
        *(a1 + 24) = v10;
        *v8 = v9;
        *(v8 + 6) = BYTE6(v9);
        *(v8 + 2) = WORD2(v9);
        if (!sub_3907A8((a1 + 24), a1 + 16))
        {
          return 1;
        }

        v11 = *(a1 + 16);
        *(a1 + 16) = *(a1 + 24);
        *(a1 + 19) = *(a1 + 27);
        *(a1 + 24) = v11;
        *(a1 + 28) = WORD2(v11);
        *(a1 + 30) = BYTE6(v11);
        if (!sub_3907A8((a1 + 16), a1 + 8))
        {
          return 1;
        }

        v12 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 16);
        *(a1 + 11) = *(a1 + 19);
        *(a1 + 16) = v12;
        *(a1 + 22) = BYTE6(v12);
        *(a1 + 20) = WORD2(v12);
        break;
      default:
        goto LABEL_17;
    }

    if (sub_3907A8((a1 + 8), a1))
    {
      v24 = *a1;
      *a1 = *(a1 + 8);
      *(a1 + 3) = *(a1 + 11);
      *(a1 + 8) = v24;
      *(a1 + 14) = BYTE6(v24);
      *(a1 + 12) = WORD2(v24);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 2;
    if (sub_3907A8(a2 - 2, a1))
    {
      v6 = *a1;
      v7 = *v5;
      *(a1 + 3) = *(v5 + 3);
      *a1 = v7;
LABEL_6:
      *v5 = v6;
      *(v5 + 6) = BYTE6(v6);
      *(v5 + 2) = WORD2(v6);
    }

    return 1;
  }

LABEL_17:
  v17 = sub_3907A8((a1 + 8), a1);
  v18 = (a1 + 16);
  v19 = sub_3907A8((a1 + 16), a1 + 8);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      v21 = a1 + 16;
      *a1 = *(a1 + 16);
      *(a1 + 3) = *(a1 + 19);
      *(a1 + 16) = v20;
      *(a1 + 22) = BYTE6(v20);
      *(a1 + 20) = WORD2(v20);
    }

    else
    {
      *a1 = *(a1 + 8);
      *(a1 + 3) = *(a1 + 11);
      *(a1 + 8) = v20;
      *(a1 + 14) = BYTE6(v20);
      *(a1 + 12) = WORD2(v20);
      v29 = sub_3907A8((a1 + 16), a1 + 8);
      v21 = a1 + 16;
      if (v29)
      {
        v30 = *(a1 + 8);
        *(a1 + 8) = *v18;
        *(a1 + 11) = *(a1 + 19);
        *v18 = v30;
        *(a1 + 20) = WORD2(v30);
        *(a1 + 22) = BYTE6(v30);
      }
    }
  }

  else
  {
    v21 = a1 + 16;
    if (v19)
    {
      v25 = *(a1 + 8);
      *(a1 + 8) = *v18;
      *(a1 + 11) = *(a1 + 19);
      *(a1 + 16) = v25;
      *(a1 + 22) = BYTE6(v25);
      *(a1 + 20) = WORD2(v25);
      v26 = sub_3907A8((a1 + 8), a1);
      v21 = a1 + 16;
      if (v26)
      {
        v27 = *a1;
        *a1 = *(a1 + 8);
        *(a1 + 3) = *(a1 + 11);
        *(a1 + 8) = v27;
        *(a1 + 14) = BYTE6(v27);
        *(a1 + 12) = WORD2(v27);
      }
    }
  }

  v31 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    if (sub_3907A8(v31, v21))
    {
      v38 = *v31;
      v35 = v32;
      do
      {
        v36 = a1 + v35;
        *(v36 + 24) = *(a1 + v35 + 16);
        *(v36 + 27) = *(a1 + v35 + 19);
        if (v35 == -16)
        {
          v34 = a1;
          goto LABEL_35;
        }

        v35 -= 8;
      }

      while (sub_3907A8(&v38, v36 + 8));
      v34 = (a1 + v35 + 24);
LABEL_35:
      *v34 = v38;
      *(v34 + 3) = *(&v38 + 3);
      if (++v33 == 8)
      {
        return v31 + 2 == a2;
      }
    }

    v21 = v31;
    v32 += 8;
    v31 += 2;
    if (v31 == a2)
    {
      return 1;
    }
  }
}

int *sub_367B1C(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return a3;
  }

  v5 = a2;
  v7 = (a2 - a1);
  v8 = (a2 - a1) >> 3;
  if (v8 >= 2)
  {
    v10 = (v8 - 2) >> 1;
    v11 = v10 + 1;
    v12 = a1 + 8 * v10;
    do
    {
      sub_367EC0(a1, a4, v8, v12);
      v12 -= 8;
      --v11;
    }

    while (v11);
  }

  v13 = v5;
  if (v5 != a3)
  {
    if (v8 < 2)
    {
      v13 = v5;
      do
      {
        if (sub_3907A8(v13, a1))
        {
          v14 = *v13;
          v15 = *a1;
          *(v13 + 3) = *(a1 + 3);
          *v13 = v15;
          *a1 = v14;
          *(a1 + 6) = BYTE6(v14);
          *(a1 + 4) = WORD2(v14);
        }

        v13 += 2;
      }

      while (v13 != a3);
      goto LABEL_29;
    }

    v16 = (a1 + 8);
    v13 = v5;
    v45 = v7;
    v46 = a3;
    do
    {
      if (sub_3907A8(v13, a1))
      {
        v18 = *v13;
        v19 = *a1;
        *(v13 + 3) = *(a1 + 3);
        *v13 = v19;
        *a1 = v18;
        *(a1 + 6) = BYTE6(v18);
        *(a1 + 4) = WORD2(v18);
        if (v7 == dword_10)
        {
          v20 = v16;
          v21 = 1;
          if (!sub_3907A8(v16, a1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v20 = (a1 + 16);
          if (sub_3907A8(v16, a1 + 16))
          {
            v21 = 2;
          }

          else
          {
            v20 = v16;
            v21 = 1;
          }

          if (!sub_3907A8(v20, a1))
          {
LABEL_22:
            v48 = *a1;
            v22 = a1;
            do
            {
              v24 = v20;
              v25 = *v20;
              *(v22 + 3) = *(v20 + 3);
              *v22 = v25;
              if (((v8 - 2) >> 1) < v21)
              {
                break;
              }

              v26 = (2 * v21) | 1;
              v20 = (a1 + 8 * v26);
              if (2 * v21 + 2 < v8 && sub_3907A8((a1 + 8 * v26), (v20 + 2)))
              {
                v20 += 2;
                v26 = 2 * v21 + 2;
              }

              v23 = sub_3907A8(v20, &v48);
              v22 = v24;
              v21 = v26;
            }

            while (!v23);
            v17 = v48;
            *(v24 + 3) = *(&v48 + 3);
            *v24 = v17;
            v7 = v45;
            a3 = v46;
            v16 = (a1 + 8);
          }
        }
      }

      v13 += 2;
    }

    while (v13 != a3);
  }

LABEL_29:
  if (v8 >= 2)
  {
    do
    {
      v47 = v5;
      v29 = 0;
      v30 = *a1;
      v31 = a1;
      do
      {
        v33 = &v31[2 * v29];
        v34 = (v33 + 2);
        v35 = (2 * v29) | 1;
        v36 = 2 * v29 + 2;
        if (v36 < v8)
        {
          v37 = (v33 + 4);
          if (sub_3907A8(v33 + 2, (v33 + 4)))
          {
            v34 = v37;
            v35 = v36;
          }
        }

        v32 = *v34;
        *(v31 + 3) = *(v34 + 3);
        *v31 = v32;
        v31 = v34;
        v29 = v35;
      }

      while (v35 <= ((v8 - 2) >> 1));
      v5 = v47 - 2;
      if (v34 == v47 - 2)
      {
        *v34 = v30;
        *(v34 + 6) = BYTE6(v30);
        *(v34 + 4) = WORD2(v30);
      }

      else
      {
        v38 = *v5;
        *(v34 + 3) = *(v47 - 5);
        *v34 = v38;
        *(v47 - 2) = BYTE6(v30);
        *(v47 - 2) = WORD2(v30);
        *v5 = v30;
        v39 = (v34 - a1 + 8) >> 3;
        v28 = v39 < 2;
        v40 = v39 - 2;
        if (!v28)
        {
          v41 = v40 >> 1;
          v42 = (a1 + 8 * (v40 >> 1));
          if (sub_3907A8(v42, v34))
          {
            v48 = *v34;
            do
            {
              v43 = v42;
              v44 = *v42;
              *(v34 + 3) = *(v42 + 3);
              *v34 = v44;
              if (!v41)
              {
                break;
              }

              v41 = (v41 - 1) >> 1;
              v42 = (a1 + 8 * v41);
              v34 = v43;
            }

            while (sub_3907A8(v42, &v48));
            *v43 = v48;
            *(v43 + 3) = *(&v48 + 3);
          }
        }
      }

      v28 = v8-- <= 2;
    }

    while (!v28);
  }

  return v13;
}

BOOL sub_367EC0(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20[9] = v4;
    v20[10] = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v11 = (a4 - result) >> 2;
      v12 = v11 + 1;
      v13 = (result + 8 * (v11 + 1));
      v14 = v11 + 2;
      if (v11 + 2 < a3 && sub_3907A8((result + 8 * (v11 + 1)), (v13 + 2)))
      {
        v13 += 2;
        v12 = v14;
      }

      result = sub_3907A8(v13, v7);
      if (!result)
      {
        v20[0] = *v7;
        do
        {
          v15 = v13;
          v16 = *v13;
          *(v7 + 3) = *(v13 + 3);
          *v7 = v16;
          if (v9 < v12)
          {
            break;
          }

          v17 = (2 * v12) | 1;
          v13 = (v8 + 8 * v17);
          v18 = 2 * v12 + 2;
          if (v18 < a3 && sub_3907A8((v8 + 8 * v17), (v13 + 2)))
          {
            v13 += 2;
            v17 = v18;
          }

          result = sub_3907A8(v13, v20);
          v7 = v15;
          v12 = v17;
        }

        while (!result);
        v19 = v20[0];
        *(v15 + 3) = *(v20 + 3);
        *v15 = v19;
      }
    }
  }

  return result;
}

__n128 sub_367FF4(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  i = a1;
  while (1)
  {
    a1 = i;
    v11 = (a2 - i) >> 5;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          result.n128_u64[0] = sub_368F64(i, i + 2, a2 - 2).n128_u64[0];
          return result;
        case 4:
          result.n128_u64[0] = sub_368F64(i, i + 2, i + 4).n128_u64[0];
          v89 = a2 - 2;
          v90 = a2[-2].n128_i64[0];
          v91 = i[4].n128_i64[0];
          v83 = v90 == v91;
          v92 = v90 < v91;
          if (v83 && (v93 = a2[-2].n128_u32[2], v94 = i[4].n128_u32[2], v92 = v93 < v94, v94 == v93) && (v95 = a2[-1].n128_i64[0], v96 = i[5].n128_i64[0], v92 = v95 < v96, v96 == v95))
          {
            if (a2[-1].n128_u64[1] >= i[5].n128_u64[1])
            {
              return result;
            }
          }

          else if (!v92)
          {
            return result;
          }

          result = i[4];
          v236 = i[5];
          v193 = a2[-1];
          i[4] = *v89;
          i[5] = v193;
          *v89 = result;
          a2[-1] = v236;
          v194 = i[4].n128_i64[0];
          v195 = i[2].n128_i64[0];
          v83 = v194 == v195;
          v196 = v194 < v195;
          if (v83 && (v197 = i[4].n128_u32[2], v198 = i[2].n128_u32[2], v196 = v197 < v198, v198 == v197) && (v199 = i[5].n128_i64[0], v200 = i[3].n128_i64[0], v196 = v199 < v200, v200 == v199))
          {
            if (i[5].n128_u64[1] >= i[3].n128_u64[1])
            {
              return result;
            }
          }

          else if (!v196)
          {
            return result;
          }

          v216 = i[2];
          result = i[3];
          v217 = i[5];
          i[2] = i[4];
          i[3] = v217;
          i[4] = v216;
          i[5] = result;
          v218 = i[2].n128_i64[0];
          v83 = v218 == i->n128_u64[0];
          v219 = v218 < i->n128_u64[0];
          if (v83 && (v220 = i[2].n128_u32[2], v221 = i->n128_u32[2], v219 = v220 < v221, v221 == v220) && (v222 = i[3].n128_i64[0], v223 = i[1].n128_i64[0], v219 = v222 < v223, v223 == v222))
          {
            if (i[3].n128_u64[1] >= i[1].n128_u64[1])
            {
              return result;
            }
          }

          else if (!v219)
          {
            return result;
          }

          v230 = *i;
          v237 = i[1];
          v224 = i[3];
          *i = i[2];
          i[1] = v224;
          result = v230;
          i[2] = v230;
          i[3] = v237;
          return result;
        case 5:

          result.n128_u64[0] = sub_369190(i, i + 2, i + 4, i + 6, a2 - 2).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v81 = a2 - 2;
        v82 = a2[-2].n128_i64[0];
        v83 = v82 == i->n128_u64[0];
        v84 = v82 < i->n128_u64[0];
        if (v83 && (v85 = a2[-2].n128_u32[2], v86 = i->n128_u32[2], v84 = v85 < v86, v86 == v85) && (v87 = a2[-1].n128_i64[0], v88 = i[1].n128_i64[0], v84 = v87 < v88, v88 == v87))
        {
          if (a2[-1].n128_u64[1] >= i[1].n128_u64[1])
          {
            return result;
          }
        }

        else if (!v84)
        {
          return result;
        }

        v229 = *i;
        v235 = i[1];
        v192 = a2[-1];
        *i = *v81;
        i[1] = v192;
        result = v229;
        *v81 = v229;
        a2[-1] = v235;
        return result;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v121 = (v11 - 2) >> 1;
      v122 = v121;
      while (2)
      {
        v124 = v122;
        if (v121 < v122)
        {
          goto LABEL_171;
        }

        v125 = (2 * v122) | 1;
        v126 = &i[2 * v125];
        if (2 * v124 + 2 < v11)
        {
          v127 = v126[2].n128_i64[0];
          v83 = v126->n128_u64[0] == v127;
          v128 = v126->n128_u64[0] < v127;
          if (v83 && (v129 = v126->n128_u32[2], v130 = v126[2].n128_u32[2], v128 = v129 < v130, v130 == v129) && (v131 = v126[1].n128_i64[0], v132 = v126[3].n128_i64[0], v128 = v131 < v132, v132 == v131))
          {
            if (v126[1].n128_u64[1] >= v126[3].n128_u64[1])
            {
              goto LABEL_182;
            }

LABEL_181:
            v126 += 2;
            v125 = 2 * v124 + 2;
          }

          else if (v128)
          {
            goto LABEL_181;
          }
        }

LABEL_182:
        v133 = &i[2 * v124];
        v134 = v133->n128_u64[0];
        v135 = v126->n128_u64[0] < v133->n128_u64[0];
        if (v126->n128_u64[0] == v133->n128_u64[0])
        {
          v136 = v126->n128_u32[2];
          v137 = v133->n128_u32[2];
          v135 = v136 < v137;
          if (v137 == v136)
          {
            v138 = v126[1].n128_i64[0];
            v139 = v133[1].n128_i64[0];
            v135 = v138 < v139;
            if (v139 == v138)
            {
              v140 = v133[1].n128_i64[1];
              if (v126[1].n128_u64[1] >= v140)
              {
                v141 = v133->n128_u32[3];
                v142 = v126[1];
                *v133 = *v126;
                v133[1] = v142;
                if (v121 >= v125)
                {
                  goto LABEL_190;
                }

                goto LABEL_169;
              }

LABEL_171:
              v122 = v124 - 1;
              if (v124)
              {
                continue;
              }

              while (2)
              {
                v157 = 0;
                v228 = *i;
                v234 = i[1];
                v158 = i;
LABEL_212:
                v160 = v158;
                v161 = &v158[2 * v157];
                v158 = v161 + 2;
                v162 = 2 * v157;
                v157 = (2 * v157) | 1;
                v163 = v162 + 2;
                if (v163 < v11)
                {
                  v164 = v161[4].n128_i64[0];
                  v165 = v161[2].n128_i64[0];
                  v83 = v165 == v164;
                  v166 = v165 < v164;
                  if (v83 && (v167 = v161[2].n128_u32[2], v168 = v161[4].n128_u32[2], v166 = v167 < v168, v168 == v167) && (v169 = v161[3].n128_i64[0], v170 = v161[5].n128_i64[0], v166 = v169 < v170, v170 == v169))
                  {
                    if (v161[3].n128_u64[1] >= v161[5].n128_u64[1])
                    {
                      goto LABEL_211;
                    }
                  }

                  else if (!v166)
                  {
                    goto LABEL_211;
                  }

                  v158 = v161 + 4;
                  v157 = v163;
                }

LABEL_211:
                v159 = v158[1];
                *v160 = *v158;
                v160[1] = v159;
                if (v157 > ((v11 - 2) >> 1))
                {
                  a2 -= 2;
                  if (v158 == a2)
                  {
                    result = v228;
                    *v158 = v228;
                    v158[1] = v234;
                  }

                  else
                  {
                    v171 = a2[1];
                    *v158 = *a2;
                    v158[1] = v171;
                    result = v228;
                    *a2 = v228;
                    a2[1] = v234;
                    v172 = (v158 - i + 32) >> 5;
                    v173 = v172 - 2;
                    if (v172 >= 2)
                    {
                      v174 = v173 >> 1;
                      v175 = &i[2 * (v173 >> 1)];
                      v176 = v158->n128_u64[0];
                      v177 = v175->n128_u64[0] < v158->n128_u64[0];
                      if (v175->n128_u64[0] == v158->n128_u64[0] && (v178 = v175->n128_u32[2], v179 = v158->n128_u32[2], v177 = v178 < v179, v179 == v178) && (v180 = v175[1].n128_i64[0], v181 = v158[1].n128_i64[0], v177 = v180 < v181, v181 == v180))
                      {
                        v182 = v158[1].n128_i64[1];
                        if (v175[1].n128_u64[1] < v182)
                        {
                          v183 = v158->n128_u32[3];
                          result = *v175;
                          v184 = v175[1];
                          *v158 = *v175;
                          v158[1] = v184;
                          if (v173 < 2)
                          {
                            goto LABEL_231;
                          }

                          do
                          {
LABEL_232:
                            v187 = v174 - 1;
                            v174 = (v174 - 1) >> 1;
                            v186 = &i[2 * v174];
                            v188 = v186->n128_u64[0] < v176;
                            if (v186->n128_u64[0] == v176 && (v189 = v186->n128_u32[2], v188 = v189 < v178, v178 == v189) && (v190 = v186[1].n128_i64[0], v188 = v190 < v180, v180 == v190))
                            {
                              if (v186[1].n128_u64[1] >= v182)
                              {
                                goto LABEL_231;
                              }
                            }

                            else if (!v188)
                            {
                              goto LABEL_231;
                            }

                            result = *v186;
                            v191 = v186[1];
                            *v175 = *v186;
                            v175[1] = v191;
                            v175 = &i[2 * v174];
                          }

                          while (v187 > 1);
                          goto LABEL_239;
                        }
                      }

                      else if (v177)
                      {
                        v178 = v158->n128_u32[2];
                        v183 = v158->n128_u32[3];
                        v180 = v158[1].n128_i64[0];
                        v182 = v158[1].n128_i64[1];
                        result = *v175;
                        v185 = v175[1];
                        *v158 = *v175;
                        v158[1] = v185;
                        if (v173 >= 2)
                        {
                          goto LABEL_232;
                        }

LABEL_231:
                        v186 = v175;
LABEL_239:
                        v186->n128_u64[0] = v176;
                        v186->n128_u32[2] = v178;
                        v186->n128_u32[3] = v183;
                        v186[1].n128_u64[0] = v180;
                        v186[1].n128_u64[1] = v182;
                      }
                    }
                  }

                  if (v11-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_212;
              }
            }
          }
        }

        break;
      }

      if (v135)
      {
        goto LABEL_171;
      }

      v136 = v133->n128_u32[2];
      v141 = v133->n128_u32[3];
      v138 = v133[1].n128_i64[0];
      v140 = v133[1].n128_i64[1];
      v143 = v126[1];
      *v133 = *v126;
      v133[1] = v143;
      if (v121 < v125)
      {
LABEL_169:
        v123 = v126;
LABEL_170:
        v123->n128_u64[0] = v134;
        v123->n128_u32[2] = v136;
        v123->n128_u32[3] = v141;
        v123[1].n128_u64[0] = v138;
        v123[1].n128_u64[1] = v140;
        goto LABEL_171;
      }

LABEL_190:
      while (2)
      {
        v144 = 2 * v125;
        v125 = (2 * v125) | 1;
        v123 = &i[2 * v125];
        v145 = v144 + 2;
        if (v145 < v11)
        {
          v146 = v123[2].n128_i64[0];
          v83 = v123->n128_u64[0] == v146;
          v147 = v123->n128_u64[0] < v146;
          if (v83 && (v148 = v123->n128_u32[2], v149 = v123[2].n128_u32[2], v147 = v148 < v149, v149 == v148) && (v150 = v123[1].n128_i64[0], v151 = v123[3].n128_i64[0], v147 = v150 < v151, v151 == v150))
          {
            if (v123[1].n128_u64[1] >= v123[3].n128_u64[1])
            {
              goto LABEL_199;
            }

LABEL_198:
            v123 += 2;
            v125 = v145;
          }

          else if (v147)
          {
            goto LABEL_198;
          }
        }

LABEL_199:
        v152 = v123->n128_u64[0] < v134;
        if (v123->n128_u64[0] == v134 && (v153 = v123->n128_u32[2], v152 = v153 < v136, v136 == v153) && (v154 = v123[1].n128_i64[0], v152 = v154 < v138, v138 == v154))
        {
          if (v123[1].n128_u64[1] < v140)
          {
            goto LABEL_169;
          }
        }

        else if (v152)
        {
          goto LABEL_169;
        }

        v155 = v123[1];
        *v126 = *v123;
        v126[1] = v155;
        v126 = v123;
        if (v121 < v125)
        {
          goto LABEL_170;
        }

        continue;
      }
    }

    v12 = v11 >> 1;
    v13 = &i[2 * (v11 >> 1)];
    if (v11 < 0x81)
    {
      result = sub_368F64(&a1[2 * (v11 >> 1)], a1, a2 - 2);
      --a3;
      v17 = a1->n128_u64[0];
      if ((a4 & 1) == 0)
      {
LABEL_15:
        v18 = a1[-2].n128_i64[0];
        v19 = v18 < v17;
        if (v18 == v17 && (v20 = a1[-2].n128_u32[2], v21 = a1->n128_u32[2], v19 = v20 < v21, v21 == v20) && (v22 = a1[-1].n128_i64[0], v23 = a1[1].n128_i64[0], v19 = v22 < v23, v23 == v22))
        {
          v24 = a1[1].n128_i64[1];
          if (a1[-1].n128_u64[1] >= v24)
          {
            goto LABEL_71;
          }
        }

        else if (!v19)
        {
          v20 = a1->n128_u32[2];
          v22 = a1[1].n128_i64[0];
          v24 = a1[1].n128_i64[1];
LABEL_71:
          v54 = v9->n128_u64[0];
          v55 = v17 < v9->n128_u64[0];
          if (v17 == v9->n128_u64[0] && (v56 = a2[-2].n128_u32[2], v55 = v20 < v56, v56 == v20) && (v57 = a2[-1].n128_i64[0], v55 = v22 < v57, v57 == v22))
          {
            if (v24 < a2[-1].n128_u64[1])
            {
              goto LABEL_110;
            }
          }

          else if (v55)
          {
LABEL_110:
            for (i = a1 + 2; ; i += 2)
            {
              v78 = v17 < i->n128_u64[0];
              if (v17 == i->n128_u64[0] && (v79 = i->n128_u32[2], v78 = v20 < v79, v79 == v20) && (v80 = i[1].n128_i64[0], v78 = v22 < v80, v80 == v22))
              {
                if (v24 < i[1].n128_u64[1])
                {
                  goto LABEL_83;
                }
              }

              else if (v78)
              {
                goto LABEL_83;
              }
            }
          }

          for (i = a1 + 2; i < a2; i += 2)
          {
            v58 = v17 < i->n128_u64[0];
            if (v17 == i->n128_u64[0] && (v59 = i->n128_u32[2], v58 = v20 < v59, v59 == v20) && (v60 = i[1].n128_i64[0], v58 = v22 < v60, v60 == v22))
            {
              if (v24 < i[1].n128_u64[1])
              {
                break;
              }
            }

            else if (v58)
            {
              break;
            }
          }

LABEL_83:
          v61 = a1->n128_u32[3];
          j = a2;
          if (i < a2)
          {
            for (j = a2 - 2; ; j -= 2)
            {
              v83 = v17 == v54;
              v64 = v17 < v54;
              if (v83 && (v65 = j->n128_u32[2], v64 = v20 < v65, v65 == v20) && (v66 = j[1].n128_i64[0], v64 = v22 < v66, v66 == v22))
              {
                if (v24 >= j[1].n128_u64[1])
                {
                  break;
                }
              }

              else if (!v64)
              {
                break;
              }

              v63 = j[-2].n128_u64[0];
              v54 = v63;
            }
          }

LABEL_105:
          while (i < j)
          {
            v227 = *i;
            v233 = i[1];
            v67 = j[1];
            *i = *j;
            i[1] = v67;
            result = v227;
            *j = v227;
            j[1] = v233;
            do
            {
              while (1)
              {
                v68 = i[2].n128_i64[0];
                i += 2;
                v69 = v17 < v68;
                if (v17 != v68)
                {
                  break;
                }

                v70 = i->n128_u32[2];
                v69 = v20 < v70;
                if (v70 != v20)
                {
                  break;
                }

                v71 = i[1].n128_i64[0];
                v69 = v22 < v71;
                if (v71 != v22)
                {
                  break;
                }

                if (v24 < i[1].n128_u64[1])
                {
                  goto LABEL_101;
                }
              }
            }

            while (!v69);
            do
            {
LABEL_101:
              while (1)
              {
                v72 = j[-2].n128_i64[0];
                j -= 2;
                v73 = v17 < v72;
                if (v17 == v72)
                {
                  v74 = j->n128_u32[2];
                  v73 = v20 < v74;
                  if (v74 == v20)
                  {
                    v75 = j[1].n128_i64[0];
                    v73 = v22 < v75;
                    if (v75 == v22)
                    {
                      break;
                    }
                  }
                }

                if (!v73)
                {
                  goto LABEL_105;
                }
              }
            }

            while (v24 < j[1].n128_u64[1]);
          }

          v76 = i - 2;
          if (&i[-2] != a1)
          {
            result = *v76;
            v77 = i[-1];
            *a1 = *v76;
            a1[1] = v77;
          }

          a4 = 0;
          i[-2].n128_u64[0] = v17;
          i[-2].n128_u32[2] = v20;
          i[-2].n128_u32[3] = v61;
          i[-1].n128_u64[0] = v22;
          i[-1].n128_u64[1] = v24;
          continue;
        }
      }
    }

    else
    {
      sub_368F64(a1, &a1[2 * (v11 >> 1)], a2 - 2);
      v14 = 2 * v12;
      v15 = &a1[2 * v12 - 2];
      sub_368F64(a1 + 2, v15, a2 - 4);
      sub_368F64(a1 + 4, &a1[v14 + 2], a2 - 6);
      sub_368F64(v15, v13, &a1[v14 + 2]);
      v225 = *a1;
      v231 = a1[1];
      v16 = v13[1];
      *a1 = *v13;
      a1[1] = v16;
      result = v225;
      *v13 = v225;
      v13[1] = v231;
      --a3;
      v17 = a1->n128_u64[0];
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v25 = 0;
    v26 = a1->n128_u64[1];
    v27 = a1[1].n128_i64[0];
    v28 = a1[1].n128_i64[1];
    while (1)
    {
      v29 = &a1[v25];
      v30 = a1[v25 + 2].n128_i64[0];
      v83 = v30 == v17;
      v31 = v30 < v17;
      if (v83)
      {
        v32 = v29[2].n128_u32[2];
        v31 = v32 < v26;
        if (v26 == v32)
        {
          v33 = v29[3].n128_i64[0];
          v31 = v33 < v27;
          if (v27 == v33)
          {
            break;
          }
        }
      }

      if (!v31)
      {
        goto LABEL_29;
      }

LABEL_23:
      v25 += 2;
    }

    if (v29[3].n128_u64[1] < v28)
    {
      goto LABEL_23;
    }

LABEL_29:
    n128_u64 = a1[v25 + 2].n128_u64;
    k = a2[-2].n128_u64;
    if (v25 * 16)
    {
      while (1)
      {
        v36 = *k < v17;
        if (*k == v17 && (v37 = *(k + 8), v36 = v37 < v26, v26 == v37) && (v38 = *(k + 16), v36 = v38 < v27, v27 == v38))
        {
          if (*(k + 24) < v28)
          {
            goto LABEL_48;
          }
        }

        else if (v36)
        {
          goto LABEL_48;
        }

        k -= 32;
      }
    }

    k = a2;
    if (n128_u64 < a2)
    {
      for (k = a2[-2].n128_u64; ; k -= 32)
      {
        v39 = *k < v17;
        if (*k == v17 && (v40 = *(k + 8), v39 = v40 < v26, v26 == v40) && (v41 = *(k + 16), v39 = v41 < v27, v27 == v41))
        {
          if (n128_u64 >= k || *(k + 24) < v28)
          {
            break;
          }
        }

        else if (n128_u64 >= k || v39)
        {
          break;
        }
      }
    }

LABEL_48:
    i = n128_u64;
    if (n128_u64 < k)
    {
      v42 = k;
      do
      {
        v226 = *i;
        v232 = i[1];
        v43 = *(v42 + 16);
        *i = *v42;
        i[1] = v43;
        *v42 = v226;
        *(v42 + 16) = v232;
        do
        {
          while (1)
          {
            v44 = i[2].n128_i64[0];
            i += 2;
            v45 = v44 < v17;
            if (v44 != v17)
            {
              break;
            }

            v46 = i->n128_u32[2];
            v45 = v46 < v26;
            if (v26 != v46)
            {
              break;
            }

            v47 = i[1].n128_i64[0];
            v45 = v47 < v27;
            if (v27 != v47)
            {
              break;
            }

            if (i[1].n128_u64[1] >= v28)
            {
              goto LABEL_59;
            }
          }
        }

        while (v45);
        do
        {
LABEL_59:
          while (1)
          {
            v48 = *(v42 - 32);
            v42 -= 32;
            v49 = v48 < v17;
            if (v48 == v17)
            {
              v50 = *(v42 + 8);
              v49 = v50 < v26;
              if (v26 == v50)
              {
                v51 = *(v42 + 16);
                v49 = v51 < v27;
                if (v27 == v51)
                {
                  break;
                }
              }
            }

            if (v49)
            {
              goto LABEL_50;
            }
          }
        }

        while (*(v42 + 24) >= v28);
LABEL_50:
        ;
      }

      while (i < v42);
    }

    if (&i[-2] != a1)
    {
      v52 = i[-1];
      *a1 = i[-2];
      a1[1] = v52;
    }

    i[-2].n128_u64[0] = v17;
    i[-2].n128_u64[1] = v26;
    i[-1].n128_u64[0] = v27;
    i[-1].n128_u64[1] = v28;
    if (n128_u64 < k)
    {
LABEL_69:
      sub_367FF4(a1, &i[-2], a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v53 = sub_3694E4(a1, i - 2);
      if (sub_3694E4(i, a2))
      {
        a2 = i - 2;
        if (v53)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v53)
      {
        goto LABEL_69;
      }
    }
  }

  v97 = i + 2;
  v99 = i == a2 || v97 == a2;
  if (a4)
  {
    if (v99)
    {
      return result;
    }

    v100 = 0;
    v101 = i;
    while (2)
    {
      v103 = v101;
      v101 = v97;
      v104 = v103[2].n128_i64[0];
      v105 = v104 < v103->n128_u64[0];
      if (v104 == v103->n128_u64[0] && (v106 = v103[2].n128_u32[2], v107 = v103->n128_u32[2], v105 = v106 < v107, v107 == v106) && (v108 = v103[3].n128_i64[0], v109 = v103[1].n128_i64[0], v105 = v108 < v109, v109 == v108))
      {
        v110 = v103[3].n128_i64[1];
        if (v110 < v103[1].n128_u64[1])
        {
          v111 = v103[2].n128_u32[3];
          result = *v103;
          v112 = v103[1];
          *v101 = *v103;
          v101[1] = v112;
          v102 = i;
          if (v103 == i)
          {
            goto LABEL_148;
          }

          goto LABEL_158;
        }
      }

      else if (v105)
      {
        v106 = v103[2].n128_u32[2];
        v111 = v103[2].n128_u32[3];
        v108 = v103[3].n128_i64[0];
        v110 = v103[3].n128_i64[1];
        result = *v103;
        v113 = v103[1];
        *v101 = *v103;
        v101[1] = v113;
        v102 = i;
        if (v103 == i)
        {
          goto LABEL_148;
        }

LABEL_158:
        v114 = v100;
        do
        {
          v115 = (i + v114);
          v116 = (i + v114 - 32);
          v117 = v104 < v116->n128_u64[0];
          if (v104 == v116->n128_u64[0] && (v118 = v115[-2].n128_u32[2], v117 = v106 < v118, v118 == v106) && (v119 = v115[-1].n128_i64[0], v117 = v108 < v119, v119 == v108))
          {
            if (v110 >= v115[-1].n128_u64[1])
            {
              v102 = (i + v114);
              goto LABEL_148;
            }
          }

          else if (!v117)
          {
            v102 = v103;
            goto LABEL_148;
          }

          v103 -= 2;
          result = *v116;
          v120 = *(i + v114 - 16);
          *v115 = *v116;
          v115[1] = v120;
          v114 -= 32;
        }

        while (v114);
        v102 = i;
LABEL_148:
        v102->n128_u64[0] = v104;
        v102->n128_u32[2] = v106;
        v102->n128_u32[3] = v111;
        v102[1].n128_u64[0] = v108;
        v102[1].n128_u64[1] = v110;
      }

      v97 = v101 + 2;
      v100 += 32;
      if (&v101[2] == a2)
      {
        return result;
      }

      continue;
    }
  }

  if (!v99)
  {
    do
    {
      v201 = a1;
      a1 = v97;
      v202 = v201[2].n128_i64[0];
      v203 = v202 < v201->n128_u64[0];
      if (v202 == v201->n128_u64[0] && (v204 = v201[2].n128_u32[2], v205 = v201->n128_u32[2], v203 = v204 < v205, v205 == v204) && (v206 = v201[3].n128_i64[0], v207 = v201[1].n128_i64[0], v203 = v206 < v207, v207 == v206))
      {
        v208 = v201[3].n128_i64[1];
        if (v208 < v201[1].n128_u64[1])
        {
          goto LABEL_260;
        }
      }

      else if (v203)
      {
        v204 = v201[2].n128_u32[2];
        v206 = v201[3].n128_i64[0];
        v208 = v201[3].n128_i64[1];
LABEL_260:
        v209 = v201[2].n128_u32[3];
        for (m = a1; ; m -= 2)
        {
          result = m[-2];
          v211 = m[-1];
          *m = result;
          m[1] = v211;
          v212 = m[-4].n128_i64[0];
          v83 = v202 == v212;
          v213 = v202 < v212;
          if (v83 && (v214 = m[-4].n128_u32[2], v213 = v204 < v214, v214 == v204) && (v215 = m[-3].n128_i64[0], v213 = v206 < v215, v215 == v206))
          {
            if (v208 >= m[-3].n128_u64[1])
            {
LABEL_251:
              m[-2].n128_u64[0] = v202;
              m[-2].n128_u32[2] = v204;
              m[-2].n128_u32[3] = v209;
              m[-1].n128_u64[0] = v206;
              m[-1].n128_u64[1] = v208;
              break;
            }
          }

          else if (!v213)
          {
            goto LABEL_251;
          }
        }
      }

      v97 = a1 + 2;
    }

    while (&a1[2] != a2);
  }

  return result;
}

__n128 sub_368F64(__n128 *a1, __n128 *a2, __n128 *a3)
{
  v3 = a2->n128_u64[0];
  v4 = a2->n128_u64[0] < a1->n128_u64[0];
  if (a2->n128_u64[0] == a1->n128_u64[0])
  {
    v5 = a2->n128_u32[2];
    v6 = a1->n128_u32[2];
    v4 = v5 < v6;
    if (v6 == v5)
    {
      v7 = a2[1].n128_i64[0];
      v8 = a1[1].n128_i64[0];
      v4 = v7 < v8;
      if (v8 == v7)
      {
        if (a2[1].n128_u64[1] >= a1[1].n128_u64[1])
        {
          goto LABEL_5;
        }

LABEL_12:
        v9 = a3->n128_u64[0] == v3;
        v15 = a3->n128_u64[0] < v3;
        if (v9 && (v16 = a3->n128_u32[2], v17 = a2->n128_u32[2], v15 = v16 < v17, v17 == v16) && (v18 = a3[1].n128_i64[0], v19 = a2[1].n128_i64[0], v15 = v18 < v19, v19 == v18))
        {
          if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
          {
LABEL_17:
            v21 = *a1;
            result = a1[1];
            v22 = a2[1];
            *a1 = *a2;
            a1[1] = v22;
            *a2 = v21;
            a2[1] = result;
            v23 = a3->n128_u64[0] < a2->n128_u64[0];
            if (a3->n128_u64[0] == a2->n128_u64[0] && (v24 = a3->n128_u32[2], v25 = a2->n128_u32[2], v23 = v24 < v25, v25 == v24) && (v26 = a3[1].n128_i64[0], v27 = a2[1].n128_i64[0], v23 = v26 < v27, v27 == v26))
            {
              if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
              {
                return result;
              }
            }

            else if (!v23)
            {
              return result;
            }

            v37 = *a2;
            result = a2[1];
            v38 = a3[1];
            *a2 = *a3;
            a2[1] = v38;
            *a3 = v37;
            a3[1] = result;
            return result;
          }
        }

        else if (!v15)
        {
          goto LABEL_17;
        }

        v35 = *a1;
        result = a1[1];
        v36 = a3[1];
        *a1 = *a3;
        a1[1] = v36;
        *a3 = v35;
        a3[1] = result;
        return result;
      }
    }
  }

  if (v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = a3->n128_u64[0] == v3;
  v10 = a3->n128_u64[0] < v3;
  if (v9 && (v11 = a3->n128_u32[2], v12 = a2->n128_u32[2], v10 = v11 < v12, v12 == v11) && (v13 = a3[1].n128_i64[0], v14 = a2[1].n128_i64[0], v10 = v13 < v14, v14 == v13))
  {
    if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
    {
      return result;
    }
  }

  else if (!v10)
  {
    return result;
  }

  v28 = *a2;
  result = a2[1];
  v29 = a3[1];
  *a2 = *a3;
  a2[1] = v29;
  *a3 = v28;
  a3[1] = result;
  v30 = a2->n128_u64[0] < a1->n128_u64[0];
  if (a2->n128_u64[0] == a1->n128_u64[0] && (v31 = a2->n128_u32[2], v32 = a1->n128_u32[2], v30 = v31 < v32, v32 == v31) && (v33 = a2[1].n128_i64[0], v34 = a1[1].n128_i64[0], v30 = v33 < v34, v34 == v33))
  {
    if (a2[1].n128_u64[1] < a1[1].n128_u64[1])
    {
      goto LABEL_33;
    }
  }

  else if (v30)
  {
LABEL_33:
    v39 = *a1;
    result = a1[1];
    v40 = a2[1];
    *a1 = *a2;
    a1[1] = v40;
    *a2 = v39;
    a2[1] = result;
  }

  return result;
}

__n128 sub_369190(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  result.n128_u64[0] = sub_368F64(a1, a2, a3).n128_u64[0];
  v11 = a4->n128_u64[0] < a3->n128_u64[0];
  if (a4->n128_u64[0] == a3->n128_u64[0] && (v12 = a4->n128_u32[2], v13 = a3->n128_u32[2], v11 = v12 < v13, v13 == v12) && (v14 = a4[1].n128_i64[0], v15 = a3[1].n128_i64[0], v11 = v14 < v15, v15 == v14))
  {
    if (a4[1].n128_u64[1] >= a3[1].n128_u64[1])
    {
      goto LABEL_20;
    }
  }

  else if (!v11)
  {
    goto LABEL_20;
  }

  v16 = *a3;
  result = a3[1];
  v17 = a4[1];
  *a3 = *a4;
  a3[1] = v17;
  *a4 = v16;
  a4[1] = result;
  v18 = a3->n128_u64[0] < a2->n128_u64[0];
  if (a3->n128_u64[0] == a2->n128_u64[0] && (v19 = a3->n128_u32[2], v20 = a2->n128_u32[2], v18 = v19 < v20, v20 == v19) && (v21 = a3[1].n128_i64[0], v22 = a2[1].n128_i64[0], v18 = v21 < v22, v22 == v21))
  {
    if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
    {
      goto LABEL_20;
    }
  }

  else if (!v18)
  {
    goto LABEL_20;
  }

  v23 = *a2;
  result = a2[1];
  v24 = a3[1];
  *a2 = *a3;
  a2[1] = v24;
  *a3 = v23;
  a3[1] = result;
  v25 = a2->n128_u64[0] < a1->n128_u64[0];
  if (a2->n128_u64[0] == a1->n128_u64[0])
  {
    v26 = a2->n128_u32[2];
    v27 = a1->n128_u32[2];
    v25 = v26 < v27;
    if (v27 == v26)
    {
      v28 = a2[1].n128_i64[0];
      v29 = a1[1].n128_i64[0];
      v25 = v28 < v29;
      if (v29 == v28)
      {
        if (a2[1].n128_u64[1] >= a1[1].n128_u64[1])
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

  if (v25)
  {
LABEL_19:
    v30 = *a1;
    result = a1[1];
    v31 = a2[1];
    *a1 = *a2;
    a1[1] = v31;
    *a2 = v30;
    a2[1] = result;
  }

LABEL_20:
  v32 = a5->n128_u64[0] < a4->n128_u64[0];
  if (a5->n128_u64[0] == a4->n128_u64[0] && (v33 = a5->n128_u32[2], v34 = a4->n128_u32[2], v32 = v33 < v34, v34 == v33) && (v35 = a5[1].n128_i64[0], v36 = a4[1].n128_i64[0], v32 = v35 < v36, v36 == v35))
  {
    if (a5[1].n128_u64[1] >= a4[1].n128_u64[1])
    {
      return result;
    }
  }

  else if (!v32)
  {
    return result;
  }

  v37 = *a4;
  result = a4[1];
  v38 = a5[1];
  *a4 = *a5;
  a4[1] = v38;
  *a5 = v37;
  a5[1] = result;
  v39 = a4->n128_u64[0] < a3->n128_u64[0];
  if (a4->n128_u64[0] == a3->n128_u64[0] && (v40 = a4->n128_u32[2], v41 = a3->n128_u32[2], v39 = v40 < v41, v41 == v40) && (v42 = a4[1].n128_i64[0], v43 = a3[1].n128_i64[0], v39 = v42 < v43, v43 == v42))
  {
    if (a4[1].n128_u64[1] >= a3[1].n128_u64[1])
    {
      return result;
    }
  }

  else if (!v39)
  {
    return result;
  }

  v44 = *a3;
  result = a3[1];
  v45 = a4[1];
  *a3 = *a4;
  a3[1] = v45;
  *a4 = v44;
  a4[1] = result;
  v46 = a3->n128_u64[0] < a2->n128_u64[0];
  if (a3->n128_u64[0] == a2->n128_u64[0] && (v47 = a3->n128_u32[2], v48 = a2->n128_u32[2], v46 = v47 < v48, v48 == v47) && (v49 = a3[1].n128_i64[0], v50 = a2[1].n128_i64[0], v46 = v49 < v50, v50 == v49))
  {
    if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
    {
      return result;
    }
  }

  else if (!v46)
  {
    return result;
  }

  v51 = *a2;
  result = a2[1];
  v52 = a3[1];
  *a2 = *a3;
  a2[1] = v52;
  *a3 = v51;
  a3[1] = result;
  v53 = a2->n128_u64[0] < a1->n128_u64[0];
  if (a2->n128_u64[0] == a1->n128_u64[0] && (v54 = a2->n128_u32[2], v55 = a1->n128_u32[2], v53 = v54 < v55, v55 == v54) && (v56 = a2[1].n128_i64[0], v57 = a1[1].n128_i64[0], v53 = v56 < v57, v57 == v56))
  {
    if (a2[1].n128_u64[1] < a1[1].n128_u64[1])
    {
      goto LABEL_44;
    }
  }

  else if (v53)
  {
LABEL_44:
    v58 = *a1;
    result = a1[1];
    v59 = a2[1];
    *a1 = *a2;
    a1[1] = v59;
    *a2 = v58;
    a2[1] = result;
  }

  return result;
}

BOOL sub_3694E4(__n128 *a1, __n128 *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_368F64(a1, a1 + 2, a2 - 2);
        return 1;
      case 4:
        sub_368F64(a1, a1 + 2, a1 + 4);
        v20 = a2 - 2;
        v21 = a2[-2].n128_i64[0];
        v22 = a1[4].n128_i64[0];
        v6 = v21 == v22;
        v23 = v21 < v22;
        if (v6 && (v24 = a2[-2].n128_u32[2], v25 = a1[4].n128_u32[2], v23 = v24 < v25, v25 == v24) && (v26 = a2[-1].n128_i64[0], v27 = a1[5].n128_i64[0], v23 = v26 < v27, v27 == v26))
        {
          if (a2[-1].n128_u64[1] >= a1[5].n128_u64[1])
          {
            return 1;
          }
        }

        else if (!v23)
        {
          return 1;
        }

        v32 = a1[4];
        v31 = a1[5];
        v33 = a2[-1];
        a1[4] = *v20;
        a1[5] = v33;
        *v20 = v32;
        a2[-1] = v31;
        v34 = a1[4].n128_i64[0];
        v35 = a1[2].n128_i64[0];
        v6 = v34 == v35;
        v36 = v34 < v35;
        if (v6 && (v37 = a1[4].n128_u32[2], v38 = a1[2].n128_u32[2], v36 = v37 < v38, v38 == v37) && (v39 = a1[5].n128_i64[0], v40 = a1[3].n128_i64[0], v36 = v39 < v40, v40 == v39))
        {
          if (a1[5].n128_u64[1] >= a1[3].n128_u64[1])
          {
            return 1;
          }
        }

        else if (!v36)
        {
          return 1;
        }

        v42 = a1[2];
        v41 = a1[3];
        v43 = a1[5];
        a1[2] = a1[4];
        a1[3] = v43;
        a1[4] = v42;
        a1[5] = v41;
        v44 = a1[2].n128_i64[0];
        v6 = v44 == a1->n128_u64[0];
        v45 = v44 < a1->n128_u64[0];
        if (v6 && (v46 = a1[2].n128_u32[2], v47 = a1->n128_u32[2], v45 = v46 < v47, v47 == v46) && (v48 = a1[3].n128_i64[0], v49 = a1[1].n128_i64[0], v45 = v48 < v49, v49 == v48))
        {
          if (a1[3].n128_u64[1] >= a1[1].n128_u64[1])
          {
            return 1;
          }
        }

        else if (!v45)
        {
          return 1;
        }

        v67 = *a1;
        v66 = a1[1];
        v68 = a1[3];
        *a1 = a1[2];
        a1[1] = v68;
        a1[2] = v67;
        a1[3] = v66;
        return 1;
      case 5:
        sub_369190(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = a2 - 2;
      v5 = a2[-2].n128_i64[0];
      v6 = v5 == a1->n128_u64[0];
      v7 = v5 < a1->n128_u64[0];
      if (v6 && (v8 = a2[-2].n128_u32[2], v9 = a1->n128_u32[2], v7 = v8 < v9, v9 == v8) && (v10 = a2[-1].n128_i64[0], v11 = a1[1].n128_i64[0], v7 = v10 < v11, v11 == v10))
      {
        if (a2[-1].n128_u64[1] >= a1[1].n128_u64[1])
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }

      v29 = *a1;
      v28 = a1[1];
      v30 = a2[-1];
      *a1 = *v4;
      a1[1] = v30;
      *v4 = v29;
      a2[-1] = v28;
      return 1;
    }
  }

  v12 = &a1[4];
  sub_368F64(a1, a1 + 2, a1 + 4);
  v15 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v50 = v15->n128_u64[0];
    v51 = v15->n128_u64[0] < *v12;
    if (v15->n128_u64[0] != *v12)
    {
      break;
    }

    v52 = v15->n128_u32[2];
    v53 = *(v12 + 8);
    v51 = v52 < v53;
    if (v53 != v52)
    {
      break;
    }

    v54 = v15[1].n128_i64[0];
    v55 = *(v12 + 16);
    v51 = v54 < v55;
    if (v55 != v54)
    {
      break;
    }

    v56 = v15[1].n128_i64[1];
    if (v56 < *(v12 + 24))
    {
      goto LABEL_49;
    }

LABEL_41:
    v12 = v15;
    v16 += 32;
    v15 += 2;
    if (v15 == a2)
    {
      return 1;
    }
  }

  if (!v51)
  {
    goto LABEL_41;
  }

  v52 = v15->n128_u32[2];
  v54 = v15[1].n128_i64[0];
  v56 = v15[1].n128_i64[1];
LABEL_49:
  v57 = v15->n128_u32[3];
  v58 = *(v12 + 16);
  *v15 = *v12;
  v15[1] = v58;
  v59 = v16;
  do
  {
    v60 = (a1 + v59);
    v61 = *(a1[2].n128_i64 + v59);
    v6 = v50 == v61;
    v62 = v50 < v61;
    if (v6 && (v63 = v60[2].n128_u32[2], v62 = v52 < v63, v63 == v52) && (v64 = v60[3].n128_i64[0], v62 = v54 < v64, v64 == v54))
    {
      if (v56 >= v60[3].n128_u64[1])
      {
        v12 = &a1[4] + v59;
        goto LABEL_40;
      }
    }

    else if (!v62)
    {
      goto LABEL_40;
    }

    v12 -= 32;
    v65 = *(a1 + v59 + 48);
    v60[4] = *(a1 + v59 + 32);
    v60[5] = v65;
    v59 -= 32;
  }

  while (v59 != -64);
  v12 = a1;
LABEL_40:
  *v12 = v50;
  *(v12 + 8) = v52;
  *(v12 + 12) = v57;
  ++v17;
  *(v12 + 16) = v54;
  *(v12 + 24) = v56;
  if (v17 != 8)
  {
    goto LABEL_41;
  }

  return &v15[2] == a2;
}

__n128 sub_36990C(void *a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 32;
  v10 = a2 - 64;
  v11 = a2 - 96;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 5;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v128 = *(a2 - 4);
        v127 = a2 - 32;
        v129 = v128 == *v12;
        v130 = v128 < *v12;
        if (v129)
        {
          v130 = *(v127 + 2) < *(v12 + 2);
        }

        if (v130)
        {
          *v190 = *v12;
          *&v190[16] = *(v12 + 1);
          v131 = *v127;
          *(v12 + 9) = *(v127 + 9);
          *v12 = v131;
          *v127 = *v190;
          result = *&v190[9];
          *(v127 + 9) = *&v190[9];
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      result.n128_u64[0] = sub_36A714(v12, v12 + 4, v12 + 4, a2 - 2, result).n128_u64[0];
      return result;
    }

    if (v15 == 5)
    {
      result.n128_u64[0] = sub_36A714(v12, v12 + 4, v12 + 4, v12 + 6, result).n128_u64[0];
      v115 = *(a2 - 4);
      v114 = a2 - 32;
      v116 = v12[12];
      v117 = v115 < v116;
      if (v115 == v116)
      {
        v117 = *(v114 + 2) < *(v12 + 26);
      }

      if (v117)
      {
        *v186 = *(v12 + 6);
        *&v186[16] = *(v12 + 7);
        v118 = *(v114 + 9);
        *(v12 + 6) = *v114;
        *(v12 + 105) = v118;
        *v114 = *v186;
        result = *&v186[9];
        *(v114 + 9) = *&v186[9];
        v119 = v12[12];
        v120 = v12[8];
        v129 = v119 == v120;
        v121 = v119 < v120;
        if (v129)
        {
          v121 = *(v12 + 26) < *(v12 + 18);
        }

        if (v121)
        {
          *v187 = *(v12 + 4);
          *&v187[16] = *(v12 + 5);
          *(v12 + 4) = *(v12 + 6);
          *(v12 + 73) = *(v12 + 105);
          *(v12 + 6) = *v187;
          result = *&v187[9];
          *(v12 + 105) = *&v187[9];
          v122 = v12[8];
          v123 = v12[4];
          v129 = v122 == v123;
          v124 = v122 < v123;
          if (v129)
          {
            v124 = *(v12 + 18) < *(v12 + 10);
          }

          if (v124)
          {
            *v188 = *(v12 + 2);
            *&v188[16] = *(v12 + 3);
            *(v12 + 2) = *(v12 + 4);
            *(v12 + 41) = *(v12 + 73);
            *(v12 + 4) = *v188;
            result = *&v188[9];
            *(v12 + 73) = *&v188[9];
            v125 = v12[4];
            v129 = v125 == *v12;
            v126 = v125 < *v12;
            if (v129)
            {
              v126 = *(v12 + 10) < *(v12 + 2);
            }

            if (v126)
            {
              *v189 = *v12;
              *&v189[16] = *(v12 + 1);
              *v12 = *(v12 + 2);
              *(v12 + 9) = *(v12 + 41);
              *(v12 + 2) = *v189;
              result = *&v189[9];
              *(v12 + 41) = *&v189[9];
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      v132 = (v12 + 4);
      v134 = v12 == a2 || v132 == a2;
      if (a5)
      {
        if (!v134)
        {
          v135 = 0;
          v136 = v12;
          do
          {
            v138 = v132;
            v139 = v136[4];
            v140 = *(v136 + 10);
            v141 = v139 < *v136;
            if (v139 == *v136)
            {
              v141 = v140 < *(v136 + 2);
            }

            if (v141)
            {
              v191 = *(v136 + 44);
              v142 = v135;
              do
              {
                v143 = v12 + v142;
                *(v143 + 2) = *(v12 + v142);
                result = *(v12 + v142 + 9);
                *(v143 + 41) = result;
                if (!v142)
                {
                  v137 = v12;
                  goto LABEL_150;
                }

                v144 = *(v143 - 4);
                v145 = v140 < *(v143 - 6);
                v129 = v139 == v144;
                v146 = v139 < v144;
                if (!v129)
                {
                  v145 = v146;
                }

                v142 -= 32;
              }

              while (v145);
              v137 = v12 + v142 + 32;
LABEL_150:
              *v137 = v139;
              *(v137 + 8) = v140;
              *(v137 + 12) = v191;
              *(v137 + 17) = *(&v191 + 5);
            }

            v132 = v138 + 32;
            v135 += 32;
            v136 = v138;
          }

          while (v138 + 32 != a2);
        }
      }

      else if (!v134)
      {
        v151 = (v12 + 44);
        do
        {
          v152 = v132;
          v153 = a1[4];
          v154 = *(a1 + 10);
          v155 = v153 < *a1;
          if (v153 == *a1)
          {
            v155 = v154 < *(a1 + 2);
          }

          if (v155)
          {
            v194 = *(a1 + 44);
            v156 = v151;
            do
            {
              *(v156 - 12) = *(v156 - 44);
              result = *(v156 - 35);
              *(v156 - 3) = result;
              v157 = *(v156 - 76);
              v129 = v153 == v157;
              v158 = v153 < v157;
              if (v129)
              {
                v158 = v154 < *(v156 - 17);
              }

              v156 -= 4;
            }

            while (v158);
            *(v156 - 12) = v153;
            *(v156 - 1) = v154;
            *(v156 + 5) = *(&v194 + 5);
            *v156 = v194;
          }

          v132 = v152 + 32;
          v151 += 4;
          a1 = v152;
        }

        while (v152 + 32 != a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_36B268(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[4 * (v15 >> 1)];
    v17 = *(a2 - 4);
    v18 = *(a2 - 6);
    if (v15 >= 0x81)
    {
      v19 = *v16;
      v20 = *(v16 + 2);
      v21 = *v16 < *v12;
      if (*v16 == *v12)
      {
        v21 = v20 < *(v12 + 2);
      }

      v22 = v18 < v20;
      v129 = v17 == v19;
      v23 = v17 < v19;
      if (v129)
      {
        v23 = v22;
      }

      if (v21)
      {
        if (v23)
        {
          *v164 = *v12;
          *&v164[16] = *(v12 + 1);
          v24 = *v9;
          *(v12 + 9) = *(a2 - 23);
          *v12 = v24;
          goto LABEL_42;
        }

        *v170 = *v12;
        *&v170[16] = *(v12 + 1);
        v37 = *v16;
        *(v12 + 9) = *(v16 + 9);
        *v12 = v37;
        *(v16 + 9) = *&v170[9];
        *v16 = *v170;
        v38 = *(a2 - 4);
        v129 = v38 == *v16;
        v39 = v38 < *v16;
        if (v129)
        {
          v39 = *(a2 - 6) < *(v16 + 2);
        }

        if (v39)
        {
          *v164 = *v16;
          *&v164[16] = *(v16 + 1);
          v40 = *v9;
          *(v16 + 9) = *(a2 - 23);
          *v16 = v40;
LABEL_42:
          *v9 = *v164;
          *(a2 - 23) = *&v164[9];
        }
      }

      else if (v23)
      {
        *v166 = *v16;
        *&v166[16] = *(v16 + 1);
        v31 = *v9;
        *(v16 + 9) = *(a2 - 23);
        *v16 = v31;
        *v9 = *v166;
        *(a2 - 23) = *&v166[9];
        v32 = *v16 < *v12;
        if (*v16 == *v12)
        {
          v32 = *(v16 + 2) < *(v12 + 2);
        }

        if (v32)
        {
          *v167 = *v12;
          *&v167[16] = *(v12 + 1);
          v33 = *v16;
          *(v12 + 9) = *(v16 + 9);
          *v12 = v33;
          *(v16 + 9) = *&v167[9];
          *v16 = *v167;
        }
      }

      v41 = (v12 + 4);
      v42 = v12[4];
      v43 = (v16 - 4);
      v44 = *(v16 - 4);
      v45 = *(v16 - 6);
      v46 = v45 < *(v12 + 10);
      v129 = v44 == v42;
      v47 = v44 < v42;
      if (!v129)
      {
        v46 = v47;
      }

      v48 = *(a2 - 8);
      v49 = *(a2 - 14) < v45;
      v129 = v48 == v44;
      v50 = v48 < v44;
      if (v129)
      {
        v50 = v49;
      }

      if (v46)
      {
        if (v50)
        {
          v51 = *v41;
          *v171 = *v41;
          *&v171[16] = *(v12 + 3);
          v52 = *(a2 - 55);
          *v41 = *v10;
          *(v12 + 41) = v52;
          goto LABEL_66;
        }

        *v175 = *v41;
        v62 = *v41;
        *&v175[16] = *(v12 + 3);
        v63 = *(v16 - 23);
        *v41 = *v43;
        *(v12 + 41) = v63;
        *(v16 - 23) = *&v175[9];
        *v43 = v62;
        v64 = *(a2 - 8);
        v129 = v64 == *v43;
        v65 = v64 < *v43;
        if (v129)
        {
          v65 = *(a2 - 14) < *(v16 - 6);
        }

        if (v65)
        {
          *v171 = *v43;
          *&v171[16] = *(v16 - 1);
          v66 = *v10;
          *(v16 - 23) = *(a2 - 55);
          *v43 = v66;
          v51 = *v171;
LABEL_66:
          *v10 = v51;
          *(a2 - 55) = *&v171[9];
        }
      }

      else if (v50)
      {
        *v172 = *v43;
        *&v172[16] = *(v16 - 1);
        v53 = *v10;
        *(v16 - 23) = *(a2 - 55);
        *v43 = v53;
        *v10 = *v172;
        *(a2 - 55) = *&v172[9];
        v54 = v12[4];
        v55 = *v43 < v54;
        if (*v43 == v54)
        {
          v55 = *(v16 - 6) < *(v12 + 10);
        }

        if (v55)
        {
          *v173 = *v41;
          v56 = *v41;
          *&v173[16] = *(v12 + 3);
          v57 = *(v16 - 23);
          *v41 = *v43;
          *(v12 + 41) = v57;
          *(v16 - 23) = *&v173[9];
          *v43 = v56;
        }
      }

      v67 = (v12 + 8);
      v68 = v12[8];
      v69 = (v16 + 4);
      v70 = v16[4];
      v71 = *(v16 + 10);
      v72 = v71 < *(v12 + 18);
      v129 = v70 == v68;
      v73 = v70 < v68;
      if (!v129)
      {
        v72 = v73;
      }

      v74 = *(a2 - 12);
      v75 = *(a2 - 22) < v71;
      v129 = v74 == v70;
      v76 = v74 < v70;
      if (v129)
      {
        v76 = v75;
      }

      if (v72)
      {
        if (v76)
        {
          v77 = *v67;
          *v176 = *v67;
          *&v176[16] = *(v12 + 5);
          v78 = *(a2 - 87);
          *v67 = *v11;
          *(v12 + 73) = v78;
          goto LABEL_83;
        }

        *v179 = *v67;
        v84 = *v67;
        *&v179[16] = *(v12 + 5);
        v85 = *(v16 + 41);
        *v67 = *v69;
        *(v12 + 73) = v85;
        *(v16 + 41) = *&v179[9];
        *v69 = v84;
        v86 = *(a2 - 12);
        v129 = v86 == *v69;
        v87 = v86 < *v69;
        if (v129)
        {
          v87 = *(a2 - 22) < *(v16 + 10);
        }

        if (v87)
        {
          *v176 = *v69;
          *&v176[16] = *(v16 + 3);
          v88 = *v11;
          *(v16 + 41) = *(a2 - 87);
          *v69 = v88;
          v77 = *v176;
LABEL_83:
          *v11 = v77;
          *(a2 - 87) = *&v176[9];
        }
      }

      else if (v76)
      {
        *v177 = *v69;
        *&v177[16] = *(v16 + 3);
        v79 = *v11;
        *(v16 + 41) = *(a2 - 87);
        *v69 = v79;
        *v11 = *v177;
        *(a2 - 87) = *&v177[9];
        v80 = v12[8];
        v81 = *v69 < v80;
        if (*v69 == v80)
        {
          v81 = *(v16 + 10) < *(v12 + 18);
        }

        if (v81)
        {
          *v178 = *v67;
          v82 = *v67;
          *&v178[16] = *(v12 + 5);
          v83 = *(v16 + 41);
          *v67 = *v69;
          *(v12 + 73) = v83;
          *(v16 + 41) = *&v178[9];
          *v69 = v82;
        }
      }

      v89 = *v16;
      v90 = *(v16 + 2);
      v91 = *v16 < *v43;
      if (*v16 == *v43)
      {
        v91 = v90 < *(v16 - 6);
      }

      v92 = *(v16 + 10) < v90;
      v129 = *v69 == v89;
      v93 = *v69 < v89;
      if (v129)
      {
        v93 = v92;
      }

      if (v91)
      {
        if (v93)
        {
          *v180 = *v43;
          *&v180[16] = *(v16 - 1);
          *v43 = *v69;
          *(v16 - 23) = *(v16 + 41);
          goto LABEL_100;
        }

        *v183 = *v43;
        *&v183[16] = *(v16 - 1);
        *v43 = *v16;
        *(v16 - 23) = *(v16 + 9);
        *(v16 + 9) = *&v183[9];
        *v16 = *v183;
        v95 = *v69 < *v16;
        if (*v69 == *v16)
        {
          v95 = *(v16 + 10) < *(v16 + 2);
        }

        if (v95)
        {
          *v180 = *v16;
          *&v180[16] = *(v16 + 1);
          *v16 = *v69;
          *(v16 + 9) = *(v16 + 41);
LABEL_100:
          *(v16 + 41) = *&v180[9];
          *v69 = *v180;
        }
      }

      else if (v93)
      {
        *v181 = *v16;
        *&v181[16] = *(v16 + 1);
        *v16 = *v69;
        *(v16 + 9) = *(v16 + 41);
        *(v16 + 41) = *&v181[9];
        *v69 = *v181;
        v94 = *v16 < *v43;
        if (*v16 == *v43)
        {
          v94 = *(v16 + 2) < *(v16 - 6);
        }

        if (v94)
        {
          *v182 = *v43;
          *&v182[16] = *(v16 - 1);
          *v43 = *v16;
          *(v16 - 23) = *(v16 + 9);
          *(v16 + 9) = *&v182[9];
          *v16 = *v182;
        }
      }

      *v184 = *v12;
      *&v184[16] = *(v12 + 1);
      v96 = *v16;
      *(v12 + 9) = *(v16 + 9);
      *v12 = v96;
      *(v16 + 9) = *&v184[9];
      *v16 = *v184;
      if (a5)
      {
        goto LABEL_105;
      }

      goto LABEL_102;
    }

    v25 = *v12;
    v26 = *(v12 + 2);
    v27 = *v12 < *v16;
    if (*v12 == *v16)
    {
      v27 = v26 < *(v16 + 2);
    }

    v28 = v18 < v26;
    v129 = v17 == v25;
    v29 = v17 < v25;
    if (v129)
    {
      v29 = v28;
    }

    if (v27)
    {
      if (v29)
      {
        *v165 = *v16;
        *&v165[16] = *(v16 + 1);
        v30 = *v9;
        *(v16 + 9) = *(a2 - 23);
        *v16 = v30;
        goto LABEL_59;
      }

      *v174 = *v16;
      *&v174[16] = *(v16 + 1);
      v58 = *v12;
      *(v16 + 9) = *(v12 + 9);
      *v16 = v58;
      *(v12 + 9) = *&v174[9];
      *v12 = *v174;
      v59 = *(a2 - 4);
      v129 = v59 == *v12;
      v60 = v59 < *v12;
      if (v129)
      {
        v60 = *(a2 - 6) < *(v12 + 2);
      }

      if (v60)
      {
        *v165 = *v12;
        *&v165[16] = *(v12 + 1);
        v61 = *v9;
        *(v12 + 9) = *(a2 - 23);
        *v12 = v61;
LABEL_59:
        *v9 = *v165;
        *(a2 - 23) = *&v165[9];
      }

LABEL_60:
      if (a5)
      {
        goto LABEL_105;
      }

      goto LABEL_102;
    }

    if (!v29)
    {
      goto LABEL_60;
    }

    *v168 = *v12;
    *&v168[16] = *(v12 + 1);
    v34 = *v9;
    *(v12 + 9) = *(a2 - 23);
    *v12 = v34;
    *v9 = *v168;
    *(a2 - 23) = *&v168[9];
    v35 = *v12 < *v16;
    if (*v12 == *v16)
    {
      v35 = *(v12 + 2) < *(v16 + 2);
    }

    if (!v35)
    {
      goto LABEL_60;
    }

    *v169 = *v16;
    *&v169[16] = *(v16 + 1);
    v36 = *v12;
    *(v16 + 9) = *(v12 + 9);
    *v16 = v36;
    *(v12 + 9) = *&v169[9];
    *v12 = *v169;
    if (a5)
    {
      goto LABEL_105;
    }

LABEL_102:
    v97 = *(v12 - 4);
    v129 = v97 == *v12;
    v98 = v97 < *v12;
    if (v129)
    {
      v98 = *(v12 - 6) < *(v12 + 2);
    }

    if (!v98)
    {
      v12 = sub_36A964(v12, a2);
      goto LABEL_110;
    }

LABEL_105:
    v99 = sub_36AADC(v12, a2);
    if ((v101 & 1) == 0)
    {
      goto LABEL_108;
    }

    v102 = sub_36AC44(v12, v99, v100);
    v12 = v99 + 2;
    if (sub_36AC44((v99 + 2), a2, v103))
    {
      a4 = -v14;
      a2 = v99;
      if (v102)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v102)
    {
LABEL_108:
      sub_36990C(a1, v99, a3, -v14, a5 & 1);
      v12 = v99 + 2;
LABEL_110:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v104 = v12 + 4;
  v105 = v12[4];
  v106 = a2 - 32;
  v107 = *(a2 - 4);
  v108 = *(v12 + 10);
  v109 = v105 < *v12;
  if (v105 == *v12)
  {
    v109 = v108 < *(v12 + 2);
  }

  v110 = *(a2 - 6) < v108;
  v129 = v107 == v105;
  v111 = v107 < v105;
  if (v129)
  {
    v111 = v110;
  }

  if (v109)
  {
    if (v111)
    {
      *v185 = *v12;
      *&v185[16] = *(v12 + 1);
      v112 = *v106;
      *(v12 + 9) = *(a2 - 23);
      *v12 = v112;
      v113 = *v185;
    }

    else
    {
      *v195 = *v12;
      *&v195[16] = *(v12 + 1);
      *v12 = *v104;
      *(v12 + 9) = *(v12 + 41);
      *v104 = *v195;
      result = *&v195[9];
      *(v12 + 41) = *&v195[9];
      v159 = *(a2 - 4);
      v160 = v12[4];
      v129 = v159 == v160;
      v161 = v159 < v160;
      if (v129)
      {
        v161 = *(a2 - 6) < *(v12 + 10);
      }

      if (!v161)
      {
        return result;
      }

      v113 = *v104;
      *v185 = *v104;
      *&v185[16] = *(v12 + 3);
      v162 = *(a2 - 23);
      *v104 = *v106;
      *(v12 + 41) = v162;
    }

    *v106 = v113;
    result = *&v185[9];
    *(a2 - 23) = *&v185[9];
    return result;
  }

  if (v111)
  {
    *v192 = *v104;
    v147 = *v104;
    *&v192[16] = *(v12 + 3);
    v148 = *(a2 - 23);
    *v104 = *v106;
    *(v12 + 41) = v148;
    *v106 = v147;
    result = *&v192[9];
    *(a2 - 23) = *&v192[9];
    v149 = v12[4];
    v129 = v149 == *v12;
    v150 = v149 < *v12;
    if (v129)
    {
      v150 = *(v12 + 10) < *(v12 + 2);
    }

    if (v150)
    {
      *v193 = *v12;
      *&v193[16] = *(v12 + 1);
      *v12 = *v104;
      *(v12 + 9) = *(v12 + 41);
      *v104 = *v193;
      result = *&v193[9];
      *(v12 + 41) = *&v193[9];
    }
  }

  return result;
}

__n128 sub_36A714(__int128 *a1, uint64_t *a2, __int128 *a3, __int128 *a4, __n128 result)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v7 = v6 < *(a1 + 2);
  }

  v8 = *(a3 + 2) < v6;
  v9 = *a3 == v5;
  v10 = *a3 < v5;
  if (v9)
  {
    v10 = v8;
  }

  if (v7)
  {
    if (v10)
    {
      v11 = *a1;
      *v31 = *a1;
      *&v31[16] = a1[1];
      v12 = *(a3 + 9);
      *a1 = *a3;
      *(a1 + 9) = v12;
LABEL_17:
      *a3 = v11;
      result = *&v31[9];
      *(a3 + 9) = *&v31[9];
      goto LABEL_18;
    }

    *v34 = *a1;
    v18 = *a1;
    *&v34[16] = a1[1];
    v19 = *(a2 + 9);
    *a1 = *a2;
    *(a1 + 9) = v19;
    *a2 = v18;
    result = *&v34[9];
    *(a2 + 9) = *&v34[9];
    v20 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v20 = *(a3 + 2) < *(a2 + 2);
    }

    if (v20)
    {
      v11 = *a2;
      *v31 = *a2;
      *&v31[16] = *(a2 + 1);
      v21 = *(a3 + 9);
      *a2 = *a3;
      *(a2 + 9) = v21;
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    *v32 = *a2;
    v13 = *a2;
    *&v32[16] = *(a2 + 1);
    v14 = *(a3 + 9);
    *a2 = *a3;
    *(a2 + 9) = v14;
    *a3 = v13;
    result = *&v32[9];
    *(a3 + 9) = *&v32[9];
    v15 = *a2 < *a1;
    if (*a2 == *a1)
    {
      v15 = *(a2 + 2) < *(a1 + 2);
    }

    if (v15)
    {
      *v33 = *a1;
      v16 = *a1;
      *&v33[16] = a1[1];
      v17 = *(a2 + 9);
      *a1 = *a2;
      *(a1 + 9) = v17;
      *a2 = v16;
      result = *&v33[9];
      *(a2 + 9) = *&v33[9];
    }
  }

LABEL_18:
  v22 = *a4 < *a3;
  if (*a4 == *a3)
  {
    v22 = *(a4 + 2) < *(a3 + 2);
  }

  if (v22)
  {
    *v35 = *a3;
    v23 = *a3;
    *&v35[16] = a3[1];
    v24 = *(a4 + 9);
    *a3 = *a4;
    *(a3 + 9) = v24;
    *a4 = v23;
    result = *&v35[9];
    *(a4 + 9) = *&v35[9];
    v25 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v25 = *(a3 + 2) < *(a2 + 2);
    }

    if (v25)
    {
      *v36 = *a2;
      v26 = *a2;
      *&v36[16] = *(a2 + 1);
      v27 = *(a3 + 9);
      *a2 = *a3;
      *(a2 + 9) = v27;
      *a3 = v26;
      result = *&v36[9];
      *(a3 + 9) = *&v36[9];
      v28 = *a2 < *a1;
      if (*a2 == *a1)
      {
        v28 = *(a2 + 2) < *(a1 + 2);
      }

      if (v28)
      {
        *v37 = *a1;
        v29 = *a1;
        *&v37[16] = a1[1];
        v30 = *(a2 + 9);
        *a1 = *a2;
        *(a1 + 9) = v30;
        *a2 = v29;
        result = *&v37[9];
        *(a2 + 9) = *&v37[9];
      }
    }
  }

  return result;
}