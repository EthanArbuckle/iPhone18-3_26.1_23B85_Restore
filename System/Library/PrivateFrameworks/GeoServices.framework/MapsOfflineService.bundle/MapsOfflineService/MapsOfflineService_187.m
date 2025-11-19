void sub_B55EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

void sub_B55F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

void sub_B55F24(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 32);
    memset(v19, 0, sizeof(v19));
    v20 = 0u;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v17, 0)));
    BYTE8(v17) = 0;
    sub_B56094(&v16, 1, a1, 0x20uLL);
    v2 = *(a1 + 32);
    *(a1 + 32) = v18;
    v18 = v2;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *(a1 + 40) = v19[0];
    v6 = *a1;
    v5 = *(a1 + 16);
    v7 = v17;
    *a1 = v16;
    *(a1 + 16) = v7;
    v16 = v6;
    v17 = v5;
    v8 = *&v19[1];
    v19[0] = v3;
    v19[1] = v4;
    v9 = v19[3];
    v10 = *(a1 + 56);
    *(a1 + 48) = v8;
    *(a1 + 64) = v9;
    *&v19[2] = v10;
    *&v8 = v20;
    v11 = *(a1 + 72);
    *(a1 + 72) = v20;
    v20 = v11;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v8)));
    *(a1 + 24) = 0;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v17, v11)));
    BYTE8(v17) = 0;
    if (v4)
    {
      v12 = v10;
      v13 = v4;
      if (v10 != v4)
      {
        do
        {
          v15 = *(v12 - 2);
          v12 -= 2;
          v14 = v15;
          if (v15)
          {
            free(v14);
            *v12 = 0;
          }
        }

        while (v12 != v4);
        v13 = v19[1];
      }

      v19[2] = v4;
      free(v13);
    }
  }
}

void sub_B56094(void *a1, int a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  if (a1[5] | a1[10])
  {
    for (i = a1[6]; i != v7[7]; i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    v7[10] = 0;
  }

  v9 = v7[9];
  v10 = v7[2];
  *v7 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v10, v9)));
  *(v7 + 24) = 0;
  v7[5] = 0;
  if (a2 == 1)
  {
    v11 = *(a3 + 72);
  }

  else
  {
    v11 = 4;
    if (a4 > 4)
    {
      goto LABEL_32;
    }

    while (*(a3 + 80) - *(a3 + 40) >= (v10.f32[0] * v11))
    {
      do
      {
LABEL_32:
        if ((v11 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "resize overflow");
        }

        v11 *= 2;
      }

      while (v11 < a4);
    }
  }

  if (v11 > v9)
  {
    sub_B56654(v7 + 6, v11);
    *v7 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v7[2], v7[9])));
    *(v7 + 24) = 0;
  }

  v12 = *(a3 + 48);
  v13 = *(a3 + 56);
  if (v12 == v13)
  {
    v14 = 0;
LABEL_36:
    v16 = *(a3 + 48);
    v17 = *(a3 + 56);
    v19 = 1;
    if (v12 == v13)
    {
      goto LABEL_50;
    }

    goto LABEL_37;
  }

  v14 = *v12;
  if (*(v12 + 8))
  {
    goto LABEL_36;
  }

  v15 = v12 + 16;
  do
  {
    v16 = v15;
    if (v14)
    {
      free(v14);
      *(v16 - 16) = 0;
    }

    *(v16 - 8) = 0;
    if (v16 == v13)
    {
      break;
    }

    v14 = *v16;
    v15 = v16 + 16;
  }

  while (!*(v16 + 8));
  v17 = *(a3 + 56);
  v19 = v12 == *(a3 + 48) && v13 == v17;
  if (v16 != v17 || !v19)
  {
LABEL_37:
    if (*(a3 + 40))
    {
      do
      {
        if (*(a3 + 32) != *v14)
        {
          break;
        }

        v14 += 3;
        v21 = *v16;
        if (v14 == (*v16 + 12 * *(v16 + 8)))
        {
          v22 = v16 + 16;
          do
          {
            v16 = v22;
            if (v21)
            {
              free(v21);
              *(v16 - 16) = 0;
            }

            *(v16 - 8) = 0;
            if (v16 == v13)
            {
              break;
            }

            v14 = *v16;
            v22 = v16 + 16;
            v21 = *v16;
          }

          while (!*(v16 + 8));
        }

        v23 = v16 == v17 && v19;
      }

      while (!v23 && *(a3 + 40));
    }
  }

LABEL_50:
  v24 = *(a3 + 56);
  if (v12 != *(a3 + 48) || v13 != v24 || v16 != v24)
  {
    v72 = a3;
    v73 = v7;
    v70 = v17;
    v71 = v12;
    v69 = v19;
    while (1)
    {
      v30 = v7[9] - 1;
      v31 = v30 & *v14;
      v32 = v7[6];
      v33 = v31 / 0x30;
      v34 = (v30 & *v14) % 0x30;
      v35 = v34 >> 3;
      v36 = 1 << (v34 & 7);
      if ((v36 & *(v32 + 16 * (v31 / 0x30) + (v34 >> 3) + 10)) != 0)
      {
        v37 = 1;
        do
        {
          v31 = (v31 + v37) & v30;
          v33 = v31 / 0x30;
          v34 = v31 % 0x30;
          v35 = (v31 % 0x30) >> 3;
          v36 = 1 << ((v31 % 0x30) & 7);
          ++v37;
        }

        while ((v36 & *(v32 + 16 * (v31 / 0x30) + v35 + 10)) != 0);
      }

      v38 = v34;
      v39 = v32 + 16 * v33;
      v40 = v39 + 10;
      if (v34 >= 9)
      {
        break;
      }

      v43 = 0;
      v45 = (v39 + 10);
LABEL_79:
      v54 = *(v39 + 8);
      v55 = v43 + byte_22A7E46[~(-1 << v38) & *v45];
      if ((v36 & *(v40 + v35)) == 0)
      {
        v68 = *(v39 + 8);
        sub_B31684(v39, (v43 + byte_22A7E46[~(-1 << v38) & *v45]));
        v54 = v68;
        ++*(v39 + 8);
        *(v40 + v35) |= v36;
      }

      v56 = *v39 + 12 * v55;
      v57 = *v14;
      *(v56 + 8) = v14[2];
      *v56 = v57;
      v7 = v73;
      v73[10] = v73[10] - v54 + *(v73[6] + 16 * v33 + 8);
      v14 += 3;
      v58 = *v16;
      if (v14 == (*v16 + 12 * *(v16 + 8)))
      {
        v63 = v16 + 16;
        v60 = v71;
        v59 = v72;
        v61 = v70;
        v62 = v69;
        do
        {
          v16 = v63;
          if (v58)
          {
            free(v58);
            *(v16 - 16) = 0;
          }

          *(v16 - 8) = 0;
          if (v16 == v13)
          {
            break;
          }

          v14 = *v16;
          v63 = v16 + 16;
          v58 = *v16;
        }

        while (!*(v16 + 8));
      }

      else
      {
        v60 = v71;
        v59 = v72;
        v61 = v70;
        v62 = v69;
      }

      while (1)
      {
        v64 = v16 == v61 && v62;
        if (v64 || !*(v59 + 40) || *(v59 + 32) != *v14)
        {
          break;
        }

        v14 += 3;
        v65 = *v16;
        if (v14 == (*v16 + 12 * *(v16 + 8)))
        {
          v66 = v16 + 16;
          do
          {
            v16 = v66;
            if (v65)
            {
              free(v65);
              *(v16 - 16) = 0;
            }

            *(v16 - 8) = 0;
            if (v16 == v13)
            {
              break;
            }

            v14 = *v16;
            v66 = v16 + 16;
            v65 = *v16;
          }

          while (!*(v16 + 8));
        }
      }

      v27 = *(v59 + 56);
      if (v60 == *(v59 + 48) && v13 == v27 && v16 == v27)
      {
        goto LABEL_101;
      }
    }

    v41 = (7 - v34);
    if (v41 <= 0xFFF7)
    {
      LOWORD(v41) = -9;
    }

    v42 = v41 + v34;
    if ((v41 + v34) >= 8u)
    {
      v46 = 0;
      v47 = 0;
      v48 = (v42 >> 3) + 1;
      v38 = v34 - 8 * (((v42 >> 3) + 1) & 0x3FFE);
      v44 = (v40 + (((v42 >> 3) + 1) & 0x3FFE));
      v49 = (v39 + 11);
      v50 = v48 & 0x3FFE;
      do
      {
        v51 = *(v49 - 1);
        v52 = *v49;
        v49 += 2;
        v46 += byte_22A7E46[v51];
        v47 += byte_22A7E46[v52];
        v50 -= 2;
      }

      while (v50);
      v43 = v47 + v46;
      if ((v48 & 0x3FFE) == v48)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v43 = 0;
      v44 = (v39 + 10);
    }

    do
    {
      v53 = *v44++;
      v43 += byte_22A7E46[v53];
      v38 -= 8;
    }

    while (v38 > 8u);
LABEL_78:
    v45 = (v40 + ((v34 - 9) >> 3) + 1);
    goto LABEL_79;
  }

LABEL_101:
  ++*(v7 + 7);
}

void sub_B56654(void *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (a2)
  {
    v4 = (a2 - 1) / 0x30 + 1;
  }

  else
  {
    v4 = 0;
  }

  v42[0] = 0;
  v42[1] = 0;
  v5 = a1[1];
  v6 = (v5 - *a1) >> 4;
  if (v4 <= v6)
  {
    if (v4 < v6)
    {
      v7 = *a1 + 16 * v4;
      while (v5 != v7)
      {
        v9 = *(v5 - 2);
        v5 -= 2;
        v8 = v9;
        if (v9)
        {
          free(v8);
          *v5 = 0;
        }
      }

      v3[1] = v7;
    }
  }

  else
  {
    sub_B55B78(a1, v4 - v6, v42);
    if (v42[0])
    {
      free(v42[0]);
    }
  }

  if (v3[3] <= v2)
  {
    goto LABEL_42;
  }

  v10 = v2 % 0x30;
  v11 = v3[1];
  if (!(v2 % 0x30))
  {
    goto LABEL_34;
  }

  v39 = v3;
  v40 = v2;
  v12 = 0;
  v13 = (v11 - 16);
  v14 = v11 - 6;
  v41 = v2 - 9 - 48 * (v2 / 0x30);
  v15 = v41;
  do
  {
    v16 = v10 >> 3;
    v17 = 1 << (v10 & 7);
    if ((v17 & *(v14 + v16)) != 0)
    {
      if (v10 < 9u)
      {
        v18 = 0;
        v21 = (v11 - 6);
        LOBYTE(v19) = v10;
        if (*(v11 - 8) == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      }

      if ((v41 + v12) >= 8u)
      {
        v22 = 0;
        v23 = 0;
        v24 = ((v15 >> 3) + 1) & 0x3FFE;
        v19 = v10 - 8 * ((((v41 + v12) >> 3) + 1) & 0x3FFE);
        v20 = (v14 + ((((v41 + v12) >> 3) + 1) & 0x3FFE));
        v26 = (v11 - 6);
        do
        {
          v22 += byte_22A7E46[*v26];
          v23 += byte_22A7E46[v26[1]];
          v26 += 2;
          v24 -= 2;
        }

        while (v24);
        v18 = v23 + v22;
        v25 = ((v41 + v12) >> 3) + 1;
        if ((v25 & 0x3FFE) == v25)
        {
LABEL_29:
          v21 = (v11 - 5 + ((v10 - 9) >> 3));
          if (*(v11 - 8) == 1)
          {
LABEL_30:
            if (*v13)
            {
              free(*v13);
            }

            *v13 = 0;
            goto LABEL_17;
          }

LABEL_16:
          sub_B31564(v11 - 16, (v18 + byte_22A7E46[~(-1 << v19) & *v21]));
LABEL_17:
          --*(v11 - 8);
          *(v14 + v16) &= ~v17;
          goto LABEL_18;
        }
      }

      else
      {
        v18 = 0;
        v19 = v10;
        v20 = (v11 - 6);
      }

      do
      {
        v27 = *v20++;
        v18 += byte_22A7E46[v27];
        v19 -= 8;
      }

      while (v19 > 8u);
      goto LABEL_29;
    }

LABEL_18:
    LOWORD(v10) = v10 + 1;
    ++v12;
    ++v15;
  }

  while (v10 != 48);
  v3 = v39;
  v2 = v40;
  v11 = v39[1];
LABEL_34:
  v3[4] = 0;
  v28 = *v3;
  if (*v3 != v11)
  {
    v29 = v11 - v28 - 16;
    if (v29 < 0x10)
    {
      v30 = 0;
      v31 = *v3;
      goto LABEL_40;
    }

    v32 = 0;
    v33 = 0;
    v34 = (v29 >> 4) + 1;
    v31 = v28 + 16 * (v34 & 0x1FFFFFFFFFFFFFFELL);
    v35 = (v28 + 24);
    v36 = v34 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v37 = *(v35 - 8);
      v38 = *v35;
      v35 += 16;
      v32 += v37;
      v33 += v38;
      v36 -= 2;
    }

    while (v36);
    v30 = v33 + v32;
    if (v34 != (v34 & 0x1FFFFFFFFFFFFFFELL))
    {
      do
      {
LABEL_40:
        v30 += *(v31 + 8);
        v31 += 16;
      }

      while (v31 != v11);
    }

    v3[4] = v30;
  }

LABEL_42:
  v3[3] = v2;
}

void sub_B56980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_B56998(uint64_t a1)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  *__p = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v28 = 0;
  LOBYTE(v27) = 0;
  sub_CC9264(v12, &v27);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  BYTE8(v21) = 0;
  *v22 = 0u;
  *__p = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  sub_A98AD4(a1 + 152, v10);
  *&v27 = &v25;
  sub_A31F30(&v27);
  if (__p[1])
  {
    *&v24 = __p[1];
    operator delete(__p[1]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (SBYTE7(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v10[1])
  {
    sub_A95778(&v10[1]);
    operator delete(v10[1]);
  }

  *(a1 + 336) = *(a1 + 88);
  if (*(a1 + 456) | *(a1 + 496))
  {
    for (i = *(a1 + 464); i != *(a1 + 472); i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    *(a1 + 496) = 0;
  }

  *(a1 + 416) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 432), *(a1 + 488))));
  *(a1 + 440) = 0;
  *(a1 + 456) = 0;
  *(a1 + 512) = *(a1 + 504);
  *(a1 + 528) = 0;
  if (*(a1 + 576) | *(a1 + 616))
  {
    for (j = *(a1 + 584); j != *(a1 + 592); j += 16)
    {
      if (*j)
      {
        free(*j);
        *j = 0;
      }

      *(j + 8) = 0;
    }

    *(a1 + 616) = 0;
  }

  *(a1 + 536) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 552), *(a1 + 608))));
  *(a1 + 560) = 0;
  *(a1 + 576) = 0;
  *(a1 + 632) = *(a1 + 624);
  *(a1 + 648) = 0;
  *(a1 + 2120) = 0;
  *(a1 + 2136) = 0;
  *(a1 + 2128) = 0;
  v4 = *(a1 + 24);
  *(a1 + 1440) = v4;
  *(a1 + 1444) = *(a1 + 28);
  v5 = *(a1 + 72);
  *(a1 + 1445) = v5;
  *(a1 + 688) = v4;
  *(a1 + 706) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = v5;
  v10[0] = 0x1FFFFFFFDLL;
  v6 = sub_B34C5C(a1 + 416, v10);
  v7 = *(v6 + 8);
  if (v7 == -1)
  {
    v8 = *(a1 + 528);
    *(a1 + 528) = v8 + 1;
    *(v6 + 8) = v8;
    v9 = v6;
    sub_2512DC(a1 + 504, v10);
    *(a1 + 656) = *(v9 + 8);
  }

  else
  {
    *(a1 + 656) = v7;
  }
}

void sub_B56C20(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_A31EF4((v1 | 8));
  _Unwind_Resume(a1);
}

uint64_t sub_B56C44(uint64_t a1)
{
  v2 = *(a1 + 80);
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v34 = 0;
  v35 = 0;
  sub_B30050(&v36, v2, a1 + 416, a1 + 536, (a1 + 664), &v21, &v18, &v34);
  v3 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 16);
  v36 = *(a1 + 8);
  v38 = v6;
  v37 = *(a1 + 24);
  v39 = *(a1 + 28);
  v41 = *(a1 + 72);
  v40 = *(a1 + 144);
  sub_B35FCC(&v36, a1 + 88);
  sub_CC92D8(a1 + 184, v42, &__p);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 2120);
  v8 = *(a1 + 328);
  if (v7 > v8)
  {
    v8 = *(a1 + 2120);
  }

  *(a1 + 2120) = v8 + v7;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "Primary SPA scanned ", 20);
    v9 = std::ostream::operator<<();
    sub_4A5C(v9, " stop patterns and obtained ", 28);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " journeys in ", 13);
    v11 = std::ostream::operator<<();
    v12 = sub_4A5C(v11, " ms using ", 10);
    v13 = sub_71478(v12, v42[18]);
    sub_4A5C(v13, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v15 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v15 = v27;
      }

      v16 = v26;
      v14 = v15 - v26;
      if (v15 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v14 = 0;
        v20 = 0;
LABEL_26:
        *(&v18 + v14) = 0;
        sub_7E854(&v18, 2u);
        if (v20 < 0)
        {
          operator delete(v18);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        return sub_A40284(&v36);
      }

      v16 = v24;
      v14 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v20 = v14;
    if (v14)
    {
      memmove(&v18, v16, v14);
    }

    goto LABEL_26;
  }

  return sub_A40284(&v36);
}

void sub_B57074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A40284(&a69);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A40284(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_B57114(uint64_t a1, int a2)
{
  v120 = a2;
  *(a1 + 688) = a2;
  v3 = *(a1 + 104);
  v118[0] = *(a1 + 88);
  v118[1] = v3;
  v118[2] = *(a1 + 120);
  v119 = *(a1 + 136);
  LOBYTE(v118[0]) = 1;
  v117[0] = v118;
  v117[1] = a1;
  v117[2] = &v120;
  v4 = *(a1 + 664);
  LODWORD(v106) = (*(a1 + 656) << *v4) | (2 * a2) | 1;
  v5 = *(sub_B54B10((v4 + 2), &v106) + 4);
  v7 = (a1 + 92);
  v6 = *(a1 + 92);
  v121 = v6;
  if (*(a1 + 49) != 1)
  {
    goto LABEL_118;
  }

  v8 = 10 * (v5 - v6);
  if (v8 >= *(a1 + 52))
  {
    v9 = sub_B58EE8(v117, v5);
    LODWORD(v102) = v9;
    v6 = v121;
    if (v9 == 0x7FFFFFFF || v121 >= v9)
    {
LABEL_28:
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_27:
      v6 = v102;
      v121 = v102;
      goto LABEL_28;
    }

    sub_19594F8(&v106);
    sub_4A5C(&v106, "[", 1);
    v11 = std::ostream::operator<<();
    v12 = sub_4A5C(v11, "] Tightening only improved the journey's departure (arrival) from ", 66);
    v13 = sub_258D4(v12);
    v14 = sub_4A5C(v13, " to ", 4);
    sub_258D4(v14);
    if ((v116 & 0x10) != 0)
    {
      v16 = v115;
      if (v115 < v112)
      {
        v115 = v112;
        v16 = v112;
      }

      v17 = &v111;
    }

    else
    {
      if ((v116 & 8) == 0)
      {
        v15 = 0;
        v105 = 0;
LABEL_22:
        *(&__dst + v15) = 0;
        sub_7E854(&__dst, 2u);
        if (v105 < 0)
        {
          operator delete(__dst);
        }

        if (v114 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v108);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_27;
      }

      v17 = v109;
      v16 = v110;
    }

    v18 = *v17;
    v15 = v16 - *v17;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v105 = v16 - *v17;
    if (v15)
    {
      memmove(&__dst, v18, v15);
    }

    goto LABEL_22;
  }

LABEL_29:
  if (v8 < *(a1 + 52))
  {
    goto LABEL_117;
  }

  sub_7E9A4(&__dst);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_47;
  }

  sub_19594F8(&v106);
  sub_4A5C(&v106, "[", 1);
  v19 = std::ostream::operator<<();
  sub_4A5C(v19, "] Journey duration (", 20);
  v20 = std::ostream::operator<<();
  sub_4A5C(v20, " sec) exceeds tightening threshold; performing tightening by time shift", 71);
  if ((v116 & 0x10) != 0)
  {
    v22 = v115;
    if (v115 < v112)
    {
      v115 = v112;
      v22 = v112;
    }

    v23 = v111;
    v21 = v22 - v111;
    if (v22 - v111 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_86:
      sub_3244();
    }

LABEL_37:
    if (v21 >= 0x17)
    {
      operator new();
    }

    v103 = v21;
    if (v21)
    {
      memmove(&v102, v23, v21);
    }

    goto LABEL_42;
  }

  if ((v116 & 8) != 0)
  {
    v23 = v109[0];
    v21 = v110 - v109[0];
    if (v110 - v109[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_86;
    }

    goto LABEL_37;
  }

  v21 = 0;
  v103 = 0;
LABEL_42:
  *(&v102 + v21) = 0;
  sub_7E854(&v102, 2u);
  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v114 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v108);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_47:
  v24 = *(a1 + 60);
  if (v24 > *(a1 + 56))
  {
    v25 = v5;
    goto LABEL_116;
  }

  v101 = v5;
  while (1)
  {
    *(a1 + 296) = *(a1 + 296) + 1.0;
    if (!sub_7E7E4(2u))
    {
      v28 = v24 / 10;
      v29 = v24 % 10;
      goto LABEL_71;
    }

    sub_19594F8(&v106);
    sub_4A5C(&v106, "[", 1);
    v27 = std::ostream::operator<<();
    sub_4A5C(v27, "] Examining time shift of ", 26);
    v28 = v24 / 10;
    v29 = v24 % 10;
    v30 = std::ostream::operator<<();
    sub_4A5C(v30, " sec (exponential search)", 25);
    if ((v116 & 0x10) != 0)
    {
      v32 = v115;
      v33 = &v111;
      if (v115 < v112)
      {
        v115 = v112;
        v32 = v112;
        v33 = &v111;
      }

      goto LABEL_60;
    }

    if ((v116 & 8) != 0)
    {
      v32 = v110;
      v33 = v109;
LABEL_60:
      v34 = *v33;
      v31 = v32 - *v33;
      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v31 >= 0x17)
      {
        operator new();
      }

      v103 = v32 - *v33;
      if (v31)
      {
        memmove(&v102, v34, v31);
      }

      goto LABEL_66;
    }

    v31 = 0;
    v103 = 0;
LABEL_66:
    *(&v102 + v31) = 0;
    sub_7E854(&v102, 2u);
    if (v103 < 0)
    {
      operator delete(v102);
    }

    v106 = v100;
    *(&v106 + *(v100 - 3)) = v99;
    if (v114 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v108);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_71:
    v35 = v24 < 0 ? -5 : 5;
    v36 = v28 + (((103 * (v35 + v29)) >> 15) & 1) + ((103 * (v35 + v29)) >> 10);
    v25 = v36 + v5;
    v37 = sub_B58EE8(v117, v36 + v5);
    if (*(a1 + 64) * fabs((10 * (v37 - v121))) >= fabs((10 * v36)))
    {
      break;
    }

    v26 = v24 + v24;
    if (v26 >= 0.0)
    {
      if (v26 >= 4.50359963e15)
      {
        goto LABEL_51;
      }

      v38 = (v26 + v26) + 1;
    }

    else
    {
      if (v26 <= -4.50359963e15)
      {
        goto LABEL_51;
      }

      v38 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
    }

    v26 = (v38 >> 1);
LABEL_51:
    v24 = v26;
    if (*(a1 + 56) < v26)
    {
      v25 = v5;
      goto LABEL_116;
    }
  }

  v39 = v37;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v106);
    sub_4A5C(&v106, "[", 1);
    v40 = std::ostream::operator<<();
    sub_4A5C(v40, "] Journey duration improved from ", 33);
    v41 = std::ostream::operator<<();
    sub_4A5C(v41, " to ", 4);
    v42 = std::ostream::operator<<();
    sub_4A5C(v42, " sec for time shift of ", 23);
    v43 = std::ostream::operator<<();
    sub_4A5C(v43, " sec", 4);
    if ((v116 & 0x10) != 0)
    {
      v45 = v115;
      if (v115 < v112)
      {
        v115 = v112;
        v45 = v112;
      }

      v46 = &v111;
    }

    else
    {
      if ((v116 & 8) == 0)
      {
        v44 = 0;
        v103 = 0;
        goto LABEL_97;
      }

      v46 = v109;
      v45 = v110;
    }

    v47 = *v46;
    v44 = v45 - *v46;
    if (v44 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v44 >= 0x17)
    {
      operator new();
    }

    v103 = v45 - *v46;
    if (v44)
    {
      memmove(&v102, v47, v44);
    }

LABEL_97:
    *(&v102 + v44) = 0;
    sub_7E854(&v102, 2u);
    if (v103 < 0)
    {
      operator delete(v102);
    }

    v106 = v100;
    *(&v106 + *(v100 - 3)) = v99;
    if (v114 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v108);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  v121 = v39;
  if (v36)
  {
    v48 = vcvtd_n_f64_s32(v24, 1uLL);
    if (v48 >= 0.0)
    {
      if (v48 < 4.50359963e15)
      {
        v49 = (v48 + v48) + 1;
LABEL_108:
        v48 = (v49 >> 1);
      }
    }

    else if (v48 > -4.50359963e15)
    {
      v49 = (v48 + v48) - 1 + (((v48 + v48) - 1) >> 63);
      goto LABEL_108;
    }

    v50 = v24 * 0.25;
    if (v50 >= 0.0)
    {
      if (v50 < 4.50359963e15)
      {
        v51 = (v50 + v50) + 1;
LABEL_114:
        v50 = (v51 >> 1);
      }
    }

    else if (v50 > -4.50359963e15)
    {
      v51 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
      goto LABEL_114;
    }

    v52 = v50;
    if (*(a1 + 60) <= v50)
    {
      v74 = v48;
      while (1)
      {
        *(a1 + 296) = *(a1 + 296) + 1.0;
        v76 = v52 + v74;
        v98 = v74;
        if (!sub_7E7E4(2u))
        {
          v78 = v76 / 10;
          v79 = v76 % 10;
          goto LABEL_176;
        }

        sub_19594F8(&v106);
        sub_4A5C(&v106, "[", 1);
        v77 = std::ostream::operator<<();
        sub_4A5C(v77, "] Examining time shift of ", 26);
        v78 = v76 / 10;
        v79 = v76 % 10;
        v80 = std::ostream::operator<<();
        sub_4A5C(v80, " sec (binary refinement search)", 31);
        if ((v116 & 0x10) != 0)
        {
          break;
        }

        if ((v116 & 8) != 0)
        {
          v82 = v110;
          v83 = v109;
LABEL_164:
          v84 = *v83;
          v81 = v82 - *v83;
          if (v81 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v81 >= 0x17)
          {
            operator new();
          }

          v103 = v82 - *v83;
          if (v81)
          {
            memmove(&v102, v84, v81);
          }

          v5 = v101;
          goto LABEL_171;
        }

        v81 = 0;
        v103 = 0;
LABEL_171:
        *(&v102 + v81) = 0;
        sub_7E854(&v102, 2u);
        if (v103 < 0)
        {
          operator delete(v102);
        }

        v106 = v100;
        *(&v106 + *(v100 - 3)) = v99;
        if (v114 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v108);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_176:
        if (v76 < 0)
        {
          v85 = -5;
        }

        else
        {
          v85 = 5;
        }

        v86 = v78 + (((103 * (v85 + v79)) >> 15) & 1) + ((103 * (v85 + v79)) >> 10) + v5;
        v87 = sub_B58EE8(v117, v86);
        if (*(a1 + 64) * fabs((10 * (v121 - v87))) >= fabs((10 * (v25 - v86))))
        {
          v74 += v52;
          v75 = vcvtd_n_f64_s32(v52, 1uLL);
          if (v75 >= 0.0)
          {
            goto LABEL_203;
          }

          goto LABEL_185;
        }

        v88 = v87;
        if (sub_7E7E4(2u))
        {
          sub_19594F8(&v106);
          sub_4A5C(&v106, "[", 1);
          v89 = std::ostream::operator<<();
          sub_4A5C(v89, "] Journey duration improved from ", 33);
          v90 = std::ostream::operator<<();
          sub_4A5C(v90, " to ", 4);
          v91 = std::ostream::operator<<();
          sub_4A5C(v91, " sec for time shift of ", 23);
          v92 = std::ostream::operator<<();
          sub_4A5C(v92, " sec", 4);
          if ((v116 & 0x10) != 0)
          {
            v95 = v115;
            v96 = &v111;
            if (v115 < v112)
            {
              v115 = v112;
              v95 = v112;
              v96 = &v111;
            }
          }

          else
          {
            if ((v116 & 8) == 0)
            {
              v93 = 0;
              v103 = 0;
LABEL_197:
              *(&v102 + v93) = 0;
              sub_7E854(&v102, 2u);
              if (v103 < 0)
              {
                operator delete(v102);
              }

              v106 = v100;
              *(&v106 + *(v100 - 3)) = v99;
              if (v114 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v108);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_202;
            }

            v95 = v110;
            v96 = v109;
          }

          v97 = *v96;
          v93 = v95 - *v96;
          if (v93 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v93 >= 0x17)
          {
            operator new();
          }

          v103 = v95 - *v96;
          if (v93)
          {
            memmove(&v102, v97, v93);
          }

          v5 = v101;
          goto LABEL_197;
        }

LABEL_202:
        v121 = v88;
        v25 = v86;
        v74 = v98;
        v75 = vcvtd_n_f64_s32(v52, 1uLL);
        if (v75 >= 0.0)
        {
LABEL_203:
          if (v75 >= 4.50359963e15)
          {
            goto LABEL_155;
          }

          v94 = (v75 + v75) + 1;
          goto LABEL_154;
        }

LABEL_185:
        if (v75 <= -4.50359963e15)
        {
          goto LABEL_155;
        }

        v94 = (v75 + v75) - 1 + (((v75 + v75) - 1) >> 63);
LABEL_154:
        v75 = (v94 >> 1);
LABEL_155:
        v52 = v75;
        if (*(a1 + 60) > v75)
        {
          goto LABEL_116;
        }
      }

      v82 = v115;
      v83 = &v111;
      if (v115 < v112)
      {
        v115 = v112;
        v82 = v112;
        v83 = &v111;
      }

      goto LABEL_164;
    }
  }

LABEL_116:
  *(a1 + 232) = sub_7EA60(&__dst);
  v6 = v121;
  v5 = v25;
LABEL_117:
  v7 = (a1 + 92);
LABEL_118:
  if (v6 != *v7)
  {
    if (sub_7E7E4(2u))
    {
      sub_19594F8(&v106);
      sub_4A5C(&v106, "[", 1);
      v53 = std::ostream::operator<<();
      v54 = sub_4A5C(v53, "] Shifting ", 11);
      v55 = sub_4A5C(v54, "departure", 9);
      v56 = sub_4A5C(v55, " time from ", 11);
      v57 = sub_258D4(v56);
      v58 = sub_4A5C(v57, " to ", 4);
      sub_258D4(v58);
      if ((v116 & 0x10) != 0)
      {
        v60 = v115;
        if (v115 < v112)
        {
          v115 = v112;
          v60 = v112;
        }

        v61 = v111;
        v59 = v60 - v111;
        if (v60 - v111 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if ((v116 & 8) == 0)
        {
          v59 = 0;
          v105 = 0;
          goto LABEL_131;
        }

        v61 = v109[0];
        v59 = v110 - v109[0];
        if (v110 - v109[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_152:
          sub_3244();
        }
      }

      if (v59 >= 0x17)
      {
        operator new();
      }

      v105 = v59;
      if (v59)
      {
        memmove(&__dst, v61, v59);
      }

LABEL_131:
      *(&__dst + v59) = 0;
      sub_7E854(&__dst, 2u);
      if (v105 < 0)
      {
        operator delete(__dst);
      }

      if (v114 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v108);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    *(a1 + 304) = 0x3FF0000000000000;
  }

  v62 = v120;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_144;
  }

  v63 = v120 + 1;
  v64 = *(a1 + 24);
  if (v120 + 1 <= (v64 + 1))
  {
    v63 = v64 + 1;
  }

  if (v120 + 1 < (v64 + 1))
  {
    v65 = v63 - 1;
    v66 = 2 * v120 + 3;
    v67 = v120;
    while (1)
    {
      v68 = *(a1 + 664);
      LODWORD(v106) = (*(a1 + 656) << *v68) | v66;
      if (*(sub_B54B10((v68 + 2), &v106) + 4) != 0x7FFFFFFF)
      {
        break;
      }

      ++v67;
      v66 += 2;
      if (v65 == v67)
      {
        goto LABEL_144;
      }
    }
  }

  else
  {
LABEL_144:
    if (*(a1 + 24) >= (*(a1 + 148) + v62))
    {
      v67 = *(a1 + 148) + v62;
    }

    else
    {
      v67 = *(a1 + 24);
    }
  }

  *(a1 + 688) = v67;
  v69 = *(a1 + 144);
  v70 = v69 / 10;
  v71 = v69 % 10;
  if (v69 < 0)
  {
    v72 = -5;
  }

  else
  {
    v72 = 5;
  }

  sub_B58EE8(v117, v70 + v5 + (((103 * (v72 + v71)) >> 15) & 1) + ((103 * (v72 + v71)) >> 10));
  return v121;
}

void sub_B58884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1959728(&a31);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a31);
  _Unwind_Resume(a1);
}

void sub_B58A24(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 48) != 1)
  {
    goto LABEL_8;
  }

  v6 = a2 + 1;
  v7 = *(a1 + 24);
  if (a2 + 1 <= (v7 + 1))
  {
    v6 = v7 + 1;
  }

  if (a2 + 1 < (v7 + 1))
  {
    v8 = v6 - 1;
    v9 = 2 * a2 + 3;
    v10 = a2;
    while (1)
    {
      v11 = *(a1 + 664);
      v39 = (*(a1 + 656) << *v11) | v9;
      if (*(sub_B54B10((v11 + 2), &v39) + 4) != 0x7FFFFFFF)
      {
        break;
      }

      ++v10;
      v9 += 2;
      if (v8 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (*(a1 + 24) >= (*(a1 + 148) + a2))
    {
      v10 = *(a1 + 148) + a2;
    }

    else
    {
      v10 = *(a1 + 24);
    }
  }

  v12 = *(a1 + 104);
  v47[0] = *(a1 + 88);
  v47[1] = v12;
  v47[2] = *(a1 + 120);
  v48 = *(a1 + 136);
  DWORD1(v47[0]) = a3;
  *(a1 + 1440) = v10;
  sub_B59288(a1 + 1424, v47);
  sub_B59570(a1 + 1424, a2, &v39);
  sub_CC92D8(a1 + 184, a1 + 1968, &__p);
  if (v38 < 0)
  {
    operator delete(__p);
  }

  v13 = *(a1 + 2112);
  *(a1 + 328) -= v13;
  v14 = *(a1 + 2136);
  if (v14 <= v13)
  {
    v14 = v13;
  }

  *(a1 + 2136) = v14;
  sub_AA9EA4(v40[0], v40[1], a1 + 160);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v26);
    sub_4A5C(&v26, "[", 1);
    v15 = std::ostream::operator<<();
    sub_4A5C(v15, "] McSPA scanned ", 16);
    v16 = std::ostream::operator<<();
    sub_4A5C(v16, " stop patterns and obtained ", 28);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " journeys in ", 13);
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, " ms using ", 10);
    v20 = sub_71478(v19, *(a1 + 2112));
    sub_4A5C(v20, " of memory", 10);
    if ((v36 & 0x10) != 0)
    {
      v22 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v22 = v32;
      }

      v23 = v31;
      v21 = v22 - v31;
      if (v22 - v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v21 = 0;
        v25 = 0;
LABEL_27:
        *(&v24 + v21) = 0;
        sub_7E854(&v24, 2u);
        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_32;
      }

      v23 = v29;
      v21 = v30 - v29;
      if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_42:
        sub_3244();
      }
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v25 = v21;
    if (v21)
    {
      memmove(&v24, v23, v21);
    }

    goto LABEL_27;
  }

LABEL_32:
  v26 = &v46;
  sub_A31F30(&v26);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40[3]);
  }

  if (v40[0])
  {
    sub_A95778(v40);
    operator delete(v40[0]);
  }
}

void sub_B58E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A300F8(&a67);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A300F8(&a67);
  _Unwind_Resume(a1);
}

uint64_t sub_B58EE8(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(v2 + 4) = a2;
  sub_B3B538(v3 + 680, v2);
  sub_CC92D8(v3 + 184, v3 + 1272, &v32);
  if (v33 < 0)
  {
    operator delete(v32);
  }

  v4 = *(v3 + 1416);
  *(v3 + 328) -= v4;
  v5 = *(v3 + 2128);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  *(v3 + 2128) = v5;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "[", 1);
    v6 = std::ostream::operator<<();
    sub_4A5C(v6, "] Secondary SPA scanned ", 24);
    v7 = std::ostream::operator<<();
    sub_4A5C(v7, " stop patterns and obtained ", 28);
    v8 = std::ostream::operator<<();
    sub_4A5C(v8, " journeys in ", 13);
    v9 = std::ostream::operator<<();
    v10 = sub_4A5C(v9, " ms using ", 10);
    v11 = sub_71478(v10, *(v3 + 1416));
    sub_4A5C(v11, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v13 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v13 = v27;
      }

      v14 = v26;
      v12 = v13 - v26;
      if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v12 = 0;
        v20 = 0;
LABEL_17:
        *(&__dst + v12) = 0;
        sub_7E854(&__dst, 2u);
        if (v20 < 0)
        {
          operator delete(__dst);
        }

        if (v29 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_22;
      }

      v14 = v24;
      v12 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_26:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__dst, v14, v12);
    }

    goto LABEL_17;
  }

LABEL_22:
  v15 = *(v3 + 1136);
  v16 = *(v3 + 896);
  v17 = (*(v3 + 904) - v16) >> 2;
  if (v17 <= v15)
  {
    sub_617214(v3 + 896, v15 - v17 + 1);
    v16 = *(v3 + 896);
  }

  return *(v16 + 4 * v15);
}

void sub_B5923C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
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

void sub_B59288(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v41);
  v4 = *(a2 + 16);
  *(a1 + 64) = *a2;
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 32);
  *(a1 + 104) = *(a2 + 40);
  sub_B5BD08(a1);
  v5 = *(a1 + 32);
  v42[0] = 0x1FFFFFFFDLL;
  v6 = sub_B34C5C(v5, v42);
  v7 = *(v6 + 8);
  if (v7 == -1)
  {
    v8 = *(v5 + 112);
    *(v5 + 112) = v8 + 1;
    *(v6 + 8) = v8;
    v9 = v6;
    sub_2512DC(v5 + 88, v42);
    v7 = *(v9 + 8);
  }

  *(a1 + 440) = v7;
  sub_B5BF48(a1);
  v10 = 1.0;
  if (*(a1 + 124) >= 2u)
  {
    v11 = 1;
    while (1)
    {
      if (v11)
      {
        v22 = *(a1 + 344);
        v23 = *(a1 + 352);
        if (v22 != v23)
        {
          v24 = *(a1 + 320);
          v25 = *(a1 + 344);
          do
          {
            v26 = *v25++;
            *(v24 + ((v26 >> 3) & 0x1FFFFFF8)) &= ~(1 << v26);
          }

          while (v25 != v23);
        }

        *(a1 + 352) = v22;
        sub_B5C1FC(a1, v11);
        sub_B5C558(a1, v11);
        v21 = *(a1 + 344);
        if (v21 == *(a1 + 352))
        {
LABEL_22:
          v10 = v11;
          break;
        }

        v20 = *(a1 + 296);
      }

      else
      {
        v12 = *(a1 + 296);
        v13 = *(a1 + 304);
        if (v12 != v13)
        {
          v14 = *(a1 + 272);
          v15 = *(a1 + 296);
          do
          {
            v16 = *v15++;
            *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
          }

          while (v15 != v13);
        }

        *(a1 + 304) = v12;
        sub_B5DA2C(a1);
        sub_7E9A4(v42);
        v17 = *(a1 + 416);
        v18 = *(a1 + 424);
        while (v17 != v18)
        {
          v19 = *v17++;
          sub_B61B30(a1, v11, v19);
        }

        *(a1 + 576) = sub_7EA60(v42) + *(a1 + 576);
        v20 = *(a1 + 296);
        if (v20 == *(a1 + 304))
        {
          goto LABEL_22;
        }

        v21 = *(a1 + 344);
      }

      v39 = *(a1 + 232);
      v40 = *(a1 + 200);
      v37 = 8 * (*(a1 + 256) & 0x3FFFFFFFFFFFFFFLL);
      v38 = *(a1 + 216);
      v27 = *(a1 + 312);
      v35 = 8 * (*(a1 + 336) & 0x3FFFFFFFFFFFFFFLL);
      v36 = 8 * (*(a1 + 288) & 0x3FFFFFFFFFFFFFFLL);
      v28 = *(a1 + 384);
      v29 = *(a1 + 360);
      v33 = *(a1 + 416);
      v34 = *(a1 + 368);
      v30 = 8 * (*(a1 + 408) & 0x3FFFFFFFFFFFFFFLL);
      v31 = *(a1 + 432);
      v32 = v39 + 12 * v40 - v38 + v37 + v27 + v36 - v20 + v29 + v35 + v28 - (v21 + v34) + v30 + v31 - v33 + sub_C439D4((a1 + 448)) + 696;
      if (*(a1 + 688) > v32)
      {
        v32 = *(a1 + 688);
      }

      *(a1 + 688) = v32;
      if ((sub_B5ED84(a1) & 1) == 0 && ++v11 < *(a1 + 124))
      {
        continue;
      }

      goto LABEL_22;
    }
  }

  sub_B5F2B0(a1);
  *(a1 + 616) = v10;
  *(a1 + 568) = sub_7EA60(v41);
}

__n128 sub_B59570@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v6 = (a3 + 8);
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  HIBYTE(v371) = 0;
  LOBYTE(__p) = 0;
  v332 = (a3 + 32);
  v345 = (a3 + 8);
  sub_CC9264(a3 + 32, &__p);
  if (SHIBYTE(v371) < 0)
  {
    operator delete(__p);
  }

  v337 = a3;
  *(a3 + 192) = 0u;
  v7 = a3 + 192;
  *(v7 + 64) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 16) = 0u;
  *(v7 - 8) = *(a1 + 64);
  v8 = (2 * a2) | 1;
  v9 = *(a1 + 124);
  if (v8 > v9)
  {
    v10 = 2 * a2 + 1;
  }

  else
  {
    v10 = *(a1 + 124);
  }

  v333 = v10;
  v334 = (2 * a2) | 1;
  if (v8 < v9)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v335 = _Q0;
    v344 = a1;
    while (1)
    {
      *v357 = 0;
      v14 = *(a1 + 216);
      v15 = a1;
      v16 = *(sub_B5FB1C(a1 + 128, v357) + 4);
      *v357 = 0;
      v17 = *(a1 + 216);
      v18 = sub_B5FB1C(v15 + 128, v357);
      sub_B5F764(v15 + 128, 0, (v14 + (v16 << 6)), (v17 + (*(v18 + 8) << 6)));
      sub_B619E0((v15 + 128), v334 + *(v15 + 120) + *(v15 + 120) * *(v15 + 440) + 2, 0);
      *v357 = 0;
      v19 = *(v15 + 216);
      v20 = *(sub_B5FB1C(v15 + 128, v357) + 4);
      *v357 = 0;
      v21 = *(v15 + 216);
      v338 = (v19 + (v20 << 6));
      v336 = (v21 + (*(sub_B5FB1C(v15 + 128, v357) + 8) << 6));
      a1 = v15;
      if (v338 != v336)
      {
        break;
      }

LABEL_8:
      if (++v334 == v333)
      {
        goto LABEL_398;
      }
    }

    while (1)
    {
      LOWORD(__p) = 0;
      BYTE2(__p) = 0;
      *(&__p + 4) = 0;
      HIDWORD(__p) = 0;
      v371 = -NAN;
      v372 = 0x7FFFFFFF;
      v373 = 0;
      v374 = 0x8000000080000000;
      v375 = 0;
      v376 = 0x8000000080000000;
      v377 = 0x7FFFFFFF;
      v378 = 0;
      v379 = 0x8000000080000000;
      v380 = 0;
      v381 = 0x8000000080000000;
      v382 = 0;
      v383 = 0xFFFFFFFF00000000;
      v384 = -1;
      v385 = 0;
      v387 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0x7FFFFFFF;
      v390 = 100;
      v391 = -1;
      v392 = v335;
      v393 = v335;
      v394 = v335;
      v395 = 0u;
      v396 = 0u;
      v397 = 0u;
      v398 = 0u;
      v399 = 0u;
      v400 = 0u;
      v22 = *(a1 + 24);
      if (sub_68312C(v22 + 3896) && *(v22 + 3944))
      {
        v23 = 1;
      }

      else
      {
        v24 = *(a1 + 24);
        v23 = sub_4C2B90(v24 + 3896) && *(v24 + 3960) != 0;
      }

      BYTE1(__p) = v23;
      v25 = *(a1 + 24);
      v26 = sub_4C2B90(v25 + 3896) ? 2 * (*(v25 + 3960) != 0) : 0;
      DWORD2(__p) = v26;
      DWORD1(__p) = v26;
      if (*v338 != -1)
      {
        break;
      }

LABEL_346:
      v289 = v395;
      if (v395 != *(&v395 + 1))
      {
        v290 = *(&v395 + 1) - 72;
        if (*(&v395 + 1) - 72 > v395)
        {
          do
          {
            v339 = *v289;
            v294 = *(v289 + 16);
            *(v289 + 8) = 0;
            *(v289 + 16) = 0;
            *v289 = 0;
            v295 = *(v289 + 24);
            v343 = *(v289 + 32);
            v341 = *(v289 + 48);
            *(v289 + 32) = 0;
            *(v289 + 40) = 0;
            *(v289 + 48) = 0;
            *v357 = *(v289 + 56);
            *&v357[7] = *(v289 + 63);
            v296 = *(v290 + 24);
            v297 = *(v290 + 16);
            *v289 = *v290;
            *(v289 + 16) = v297;
            *(v290 + 8) = 0;
            *(v290 + 16) = 0;
            *v290 = 0;
            *(v289 + 24) = v296;
            v298 = *(v289 + 32);
            if (v298)
            {
              *(v289 + 40) = v298;
              operator delete(v298);
              *(v289 + 32) = 0;
              *(v289 + 40) = 0;
              *(v289 + 48) = 0;
            }

            *(v289 + 32) = *(v290 + 32);
            *(v289 + 48) = *(v290 + 48);
            *(v290 + 32) = 0;
            *(v290 + 40) = 0;
            *(v290 + 48) = 0;
            v299 = *(v290 + 56);
            *(v289 + 63) = *(v290 + 63);
            *(v289 + 56) = v299;
            v300 = *v290;
            if (*v290)
            {
              v301 = *(v290 + 8);
              v302 = *v290;
              if (v301 != v300)
              {
                do
                {
                  v303 = v301 - 168;
                  v304 = *(v301 - 8);
                  if (v304 != -1)
                  {
                    (off_2670F08[v304])(&v403, v301 - 168);
                  }

                  *(v301 - 8) = -1;
                  v301 -= 168;
                }

                while (v303 != v300);
                v302 = *v290;
              }

              *(v290 + 8) = v300;
              operator delete(v302);
            }

            *v290 = v339;
            *(v290 + 16) = v294;
            *(v290 + 24) = v295;
            v305 = *(v290 + 32);
            v6 = v345;
            if (v305)
            {
              *(v290 + 40) = v305;
              operator delete(v305);
            }

            *(v290 + 32) = v343;
            *(v290 + 48) = v341;
            *(v290 + 56) = *v357;
            *(v290 + 63) = *&v357[7];
            v289 += 72;
            v290 -= 72;
          }

          while (v289 < v290);
        }
      }

      sub_A83920(&__p);
      v292 = *(v337 + 16);
      v291 = *(v337 + 24);
      if (v292 >= v291)
      {
        v306 = 0x14C1BACF914C1BADLL * ((v292 - *v6) >> 3);
        v307 = v306 + 1;
        if ((v306 + 1) > 0xDD67C8A60DD67CLL)
        {
          sub_1794();
        }

        v308 = 0x14C1BACF914C1BADLL * ((v291 - *v6) >> 3);
        if (2 * v308 > v307)
        {
          v307 = 2 * v308;
        }

        if (v308 >= 0x6EB3E45306EB3ELL)
        {
          v309 = 0xDD67C8A60DD67CLL;
        }

        else
        {
          v309 = v307;
        }

        *v358 = v6;
        if (v309)
        {
          if (v309 <= 0xDD67C8A60DD67CLL)
          {
            operator new();
          }

          sub_1808();
        }

        *v357 = 0;
        *&v357[8] = 296 * v306;
        *&v357[16] = (296 * v306);
        sub_A32C84(296 * v306, &__p);
        *&v357[16] += 296;
        v293 = *&v357[16];
        v310 = *(v337 + 8);
        v311 = *(v337 + 16);
        v312 = *&v357[8] + v310 - v311;
        sub_A7CAB8(v6, v310, v311, v312);
        v313 = *(v337 + 8);
        *(v337 + 8) = v312;
        *(v337 + 16) = v293;
        *(v337 + 24) = *&v357[24];
        if (v313)
        {
          operator delete(v313);
        }
      }

      else
      {
        sub_A32C84(*(v337 + 16), &__p);
        v293 = v292 + 296;
      }

      *(v337 + 16) = v293;
      if (*(&v399 + 1))
      {
        *&v400 = *(&v399 + 1);
        operator delete(*(&v399 + 1));
      }

      if (v398)
      {
        *(&v398 + 1) = v398;
        operator delete(v398);
      }

      if (*(&v396 + 1))
      {
        *&v397 = *(&v396 + 1);
        operator delete(*(&v396 + 1));
      }

      v314 = v395;
      if (v395)
      {
        v315 = *(&v395 + 1);
        v316 = v395;
        if (*(&v395 + 1) != v395)
        {
          do
          {
            v318 = *(v315 - 40);
            if (v318)
            {
              *(v315 - 32) = v318;
              operator delete(v318);
            }

            v319 = (v315 - 72);
            v320 = *(v315 - 72);
            if (v320)
            {
              v321 = *(v315 - 64);
              v317 = *(v315 - 72);
              if (v321 != v320)
              {
                do
                {
                  v322 = v321 - 168;
                  v323 = *(v321 - 8);
                  if (v323 != -1)
                  {
                    (off_2670F08[v323])(v357, v321 - 168);
                  }

                  *(v321 - 8) = -1;
                  v321 -= 168;
                }

                while (v322 != v320);
                v317 = *v319;
              }

              *(v315 - 64) = v320;
              operator delete(v317);
              v6 = v345;
            }

            v315 -= 72;
          }

          while (v319 != v314);
          v316 = v395;
        }

        *(&v395 + 1) = v314;
        operator delete(v316);
      }

      if (SHIBYTE(v389) < 0)
      {
        operator delete(v387);
      }

      v338 += 16;
      a1 = v344;
      if (v338 == v336)
      {
        goto LABEL_8;
      }
    }

    v342 = *(v344 + 440);
    v27 = v338;
    v340 = v334;
LABEL_26:
    v364 = 0;
    v363 = 0u;
    v365 = 1;
    v367 = 0;
    v368 = 0;
    v366 = 0;
    v369[0] = 1;
    *&v369[4] = 0x8000000080000000;
    *&v369[12] = 0;
    v369[14] = 0;
    *v357 = 0;
    *&v357[16] = 0u;
    *v358 = 0xFFFFFFFFLL;
    *&v358[16] = 0u;
    *v362 = 1;
    *&v357[4] = 0x8000000080000000;
    *&v357[12] = 0x7FFFFFFF;
    *&v357[20] = 0x8000000080000000;
    *&v358[8] = xmmword_2266560;
    *&v358[24] = -1;
    *__dst = 0u;
    memset(v360, 0, sizeof(v360));
    v361[0] = 0x7FFFFFFFuLL;
    v361[1] = 0uLL;
    *&v362[4] = xmmword_22A7500;
    if (v27[4] == -1)
    {
      goto LABEL_223;
    }

    v346 = xmmword_2297BF0;
    LOWORD(v347) = 0;
    *(&v347 + 4) = 0x8000000080000000;
    WORD6(v347) = 0;
    *v348 = xmmword_22A7450;
    *&v348[16] = -COERCE_DOUBLE(0x8000000080000000);
    v349 = 0uLL;
    v350 = 0uLL;
    v351 = 0uLL;
    *&v348[24] = -1;
    v352 = 0x7FFFFFFF;
    v354 = 0;
    v355 = 0;
    v353 = 0;
    LOBYTE(v356) = 1;
    *(&v356 + 4) = 0x8000000080000000;
    HIDWORD(v356) = 0;
    v365 = 0;
    v29 = *sub_A9C5E0((*(v344 + 40) + 88), v27[4]);
    *v348 = v29;
    v30 = *(v27 + 1);
    *&v348[16] = v27[3];
    *&v348[8] = v30;
    *&v348[20] = *v27;
    v31 = *&v348[20];
    v32 = *(v344 + 24);
    v401 = *sub_A9C5E0((*(v344 + 32) + 88), v342);
    sub_A79708(&v403, v32, v29, v31, 0, 0);
    v410 = (v409 + 12 * *&v348[8]);
    if (v413[0] == 1)
    {
      *&v413[4] = *&v348[12];
    }

    if (v408)
    {
      v33 = *(v408 + 4 * ((v406 - v405) >> 4));
    }

    else
    {
      v33 = 0;
    }

    sub_AA98A0(&v403, &v401, v33);
    _CF = v406 < v407 && v406 >= v405;
    v35 = (v406 - v405) >> 4;
    if (!_CF)
    {
      LODWORD(v35) = -1;
    }

    *&v348[24] = v35;
    v36 = *(v344 + 32);
    v37 = *&v348[20];
    v38 = sub_A57920((*(v344 + 24) + 4136), *v348);
    v39 = (v38 - *v38);
    if (*v39 >= 9u && (v40 = v39[4]) != 0)
    {
      v41 = (v38 + v40 + *(v38 + v40));
    }

    else
    {
      v41 = 0;
    }

    v42 = sub_A571D4(v41, v37);
    v43 = 0;
    v44 = __ROR8__(*v42, 32);
    v45 = *(v36 + 72) - 1;
    v46 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v44 ^ (v44 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v44 ^ (v44 >> 33))) >> 33));
    v47 = v46 ^ (v46 >> 33);
    v48 = *(v36 + 48);
    v49 = v48 + 11;
    v50 = -1;
    for (i = v47; ; i = v43 + v52)
    {
      v52 = i & v45;
      v53 = (i & v45) / 0x30;
      v54 = (i & v45) % 0x30;
      v55 = (v48 + 16 * v53);
      if (((*(v55 + (v54 >> 3) + 10) >> (v54 & 7)) & 1) == 0)
      {
        if (v50 == -1)
        {
          v91 = v52;
        }

        else
        {
          v91 = v50;
        }

        goto LABEL_83;
      }

      v56 = *v55;
      if (!*(v36 + 40))
      {
        goto LABEL_62;
      }

      v57 = v55 + 10;
      if (v54 < 9)
      {
        v59 = 0;
        LOBYTE(v60) = v54;
        goto LABEL_58;
      }

      v58 = (48 * v53 - v52 + 7);
      if (v58 <= 0xFFF7)
      {
        LOWORD(v58) = -9;
      }

      if ((v58 + v52 - 48 * v53) >= 8u)
      {
        v62 = 0;
        v63 = 0;
        v64 = ((v58 + v52 - 48 * v53) >> 3) + 1;
        v60 = v54 - 8 * ((((v58 + v52 - 48 * v53) >> 3) + 1) & 0x3FFE);
        v61 = &v57[(((v58 + v52 - 48 * v53) >> 3) + 1) & 0x3FFE];
        v65 = (v49 + 16 * v53);
        v66 = v64 & 0x3FFE;
        do
        {
          v67 = *(v65 - 1);
          v68 = *v65;
          v65 += 2;
          v62 += byte_22A7D46[v67];
          v63 += byte_22A7D46[v68];
          v66 -= 2;
        }

        while (v66);
        v59 = v63 + v62;
        if ((v64 & 0x3FFE) == v64)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v59 = 0;
        v60 = v54;
        v61 = v55 + 10;
      }

      do
      {
        v69 = *v61++;
        v59 += byte_22A7D46[v69];
        v60 -= 8;
      }

      while (v60 > 8u);
LABEL_57:
      v57 += ((v54 - 9) >> 3) + 1;
LABEL_58:
      v70 = (v56 + 12 * (v59 + byte_22A7D46[~(-1 << v60) & *v57]));
      if (*(v36 + 36) == v70[1] && *(v36 + 32) == *v70)
      {
        if (v50 == -1)
        {
          v50 = v52;
        }

        goto LABEL_44;
      }

LABEL_62:
      v72 = v55 + 10;
      if (v54 < 9)
      {
        v74 = 0;
        LOBYTE(v75) = v54;
        goto LABEL_73;
      }

      v73 = (48 * v53 - v52 + 7);
      if (v73 <= 0xFFF7)
      {
        LOWORD(v73) = -9;
      }

      if ((v73 + v52 - 48 * v53) >= 8u)
      {
        v77 = 0;
        v78 = 0;
        v79 = ((v73 + v52 - 48 * v53) >> 3) + 1;
        v75 = v54 - 8 * ((((v73 + v52 - 48 * v53) >> 3) + 1) & 0x3FFE);
        v76 = &v72[(((v73 + v52 - 48 * v53) >> 3) + 1) & 0x3FFE];
        v80 = (v49 + 16 * v53);
        v81 = v79 & 0x3FFE;
        do
        {
          v82 = *(v80 - 1);
          v83 = *v80;
          v80 += 2;
          v77 += byte_22A7D46[v82];
          v78 += byte_22A7D46[v83];
          v81 -= 2;
        }

        while (v81);
        v74 = v78 + v77;
        if ((v79 & 0x3FFE) == v79)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v74 = 0;
        v75 = v54;
        v76 = v55 + 10;
      }

      do
      {
        v84 = *v76++;
        v74 += byte_22A7D46[v84];
        v75 -= 8;
      }

      while (v75 > 8u);
LABEL_72:
      v72 += ((v54 - 9) >> 3) + 1;
LABEL_73:
      if (v44 == *(v56 + 12 * (v74 + byte_22A7D46[~(-1 << v75) & *v72])))
      {
        if (v52 != -1)
        {
          v85 = v55 + 10;
          if (v54 < 9)
          {
            v88 = 0;
          }

          else
          {
            v86 = (48 * v53 - v52 + 7);
            if (v86 <= 0xFFF7)
            {
              LOWORD(v86) = -9;
            }

            v87 = v86 + v52 - 48 * v53;
            if (v87 < 8u)
            {
              v88 = 0;
              v89 = v54;
              v90 = v55 + 10;
              goto LABEL_306;
            }

            v265 = 0;
            v266 = 0;
            v267 = (v87 >> 3) + 1;
            v89 = v54 - 8 * (((v87 >> 3) + 1) & 0x3FFE);
            v90 = &v85[v267 & 0x3FFE];
            v268 = v55 + 11;
            v269 = v267 & 0x3FFE;
            do
            {
              v270 = *(v268 - 1);
              v271 = *v268;
              v268 += 2;
              v265 += byte_22A7D46[v270];
              v266 += byte_22A7D46[v271];
              v269 -= 2;
            }

            while (v269);
            v88 = v266 + v265;
            if ((v267 & 0x3FFE) != v267)
            {
              do
              {
LABEL_306:
                v272 = *v90++;
                v88 += byte_22A7D46[v272];
                v89 -= 8;
              }

              while (v89 > 8u);
            }

            v85 += ((v54 - 9) >> 3) + 1;
            LOBYTE(v54) = v89;
          }

          v273 = *(v36 + 56);
          v138 = (v56 + 12 * (v88 + byte_22A7D46[~(-1 << v54) & *v85]));
          if ((*v55 + 12 * *(v55 + 4)) == v138 && v55 + 2 != v273)
          {
            v275 = v55 + 4;
            do
            {
              if (*(v275 - 4))
              {
                v276 = 1;
              }

              else
              {
                v276 = v275 == v273;
              }

              v275 += 2;
            }

            while (!v276);
            v138 = *(v275 - 4);
          }

          goto LABEL_129;
        }

        v91 = -1;
LABEL_83:
        if (!sub_B35190(v36, 1))
        {
          v401 = v44;
          v402 = -1;
          sub_B356C0(v36, &v401, v91, &v403);
LABEL_128:
          v138 = v406;
          goto LABEL_129;
        }

        v92 = 0;
        v401 = v44;
        v402 = -1;
        v93 = *(v36 + 72) - 1;
        v94 = *(v36 + 48);
        v95 = v94 + 11;
        v96 = -1;
        while (2)
        {
          v97 = v47 & v93;
          v98 = (v47 & v93) / 0x30;
          v99 = (v47 & v93) % 0x30;
          v100 = v94 + 16 * v98;
          if (((*(v100 + (v99 >> 3) + 10) >> (v99 & 7)) & 1) == 0)
          {
            if (v96 == -1)
            {
              v137 = v47 & v93;
            }

            else
            {
              v137 = v96;
            }

            goto LABEL_127;
          }

          v101 = *(v36 + 40);
          v102 = *v100;
          if (v101)
          {
            v103 = (v100 + 10);
            if (v99 < 9)
            {
              v105 = 0;
              v106 = (v47 & v93) % 0x30;
            }

            else
            {
              v104 = (48 * v98 - v97 + 7);
              if (v104 <= 0xFFF7)
              {
                LOWORD(v104) = -9;
              }

              if ((v104 + v97 - 48 * v98) < 8u)
              {
                v105 = 0;
                v106 = (v47 & v93) % 0x30;
                v107 = (v100 + 10);
                goto LABEL_99;
              }

              v108 = 0;
              v109 = 0;
              v110 = ((v104 + v97 - 48 * v98) >> 3) + 1;
              LOWORD(v106) = v99 - 8 * ((((v104 + v97 - 48 * v98) >> 3) + 1) & 0x3FFE);
              v107 = &v103[(((v104 + v97 - 48 * v98) >> 3) + 1) & 0x3FFE];
              v111 = (v95 + 16 * v98);
              v112 = v110 & 0x3FFE;
              do
              {
                v113 = *(v111 - 1);
                v114 = *v111;
                v111 += 2;
                v108 += byte_22A7D46[v113];
                v109 += byte_22A7D46[v114];
                v112 -= 2;
              }

              while (v112);
              v105 = v109 + v108;
              if ((v110 & 0x3FFE) != v110)
              {
                do
                {
LABEL_99:
                  v115 = *v107++;
                  v105 += byte_22A7D46[v115];
                  LOWORD(v106) = v106 - 8;
                }

                while (v106 > 8u);
              }

              v103 += ((v99 - 9) >> 3) + 1;
            }

            v116 = v102 + 3 * (v105 + byte_22A7D46[~(-1 << v106) & *v103]);
            if (*(v36 + 36) == v116[1] && *(v36 + 32) == *v116)
            {
              if (v96 == -1)
              {
                v96 = v47 & v93;
              }

LABEL_87:
              v47 = ++v92 + v97;
              continue;
            }
          }

          break;
        }

        v118 = (v100 + 10);
        if (v99 < 9)
        {
          v120 = 0;
          v121 = (v47 & v93) % 0x30;
        }

        else
        {
          v119 = (48 * v98 - v97 + 7);
          if (v119 <= 0xFFF7)
          {
            LOWORD(v119) = -9;
          }

          if ((v119 + v97 - 48 * v98) < 8u)
          {
            v120 = 0;
            v121 = (v47 & v93) % 0x30;
            v122 = (v100 + 10);
            goto LABEL_114;
          }

          v123 = 0;
          v124 = 0;
          v125 = ((v119 + v97 - 48 * v98) >> 3) + 1;
          LOWORD(v121) = v99 - 8 * ((((v119 + v97 - 48 * v98) >> 3) + 1) & 0x3FFE);
          v122 = &v118[(((v119 + v97 - 48 * v98) >> 3) + 1) & 0x3FFE];
          v126 = (v95 + 16 * v98);
          v127 = v125 & 0x3FFE;
          do
          {
            v128 = *(v126 - 1);
            v129 = *v126;
            v126 += 2;
            v123 += byte_22A7D46[v128];
            v124 += byte_22A7D46[v129];
            v127 -= 2;
          }

          while (v127);
          v120 = v124 + v123;
          if ((v125 & 0x3FFE) != v125)
          {
            do
            {
LABEL_114:
              v130 = *v122++;
              v120 += byte_22A7D46[v130];
              LOWORD(v121) = v121 - 8;
            }

            while (v121 > 8u);
          }

          v118 += ((v99 - 9) >> 3) + 1;
        }

        if (v44 != *(v102 + 12 * (v120 + byte_22A7D46[~(-1 << v121) & *v118])))
        {
          goto LABEL_87;
        }

        if (v97 == -1)
        {
          v137 = -1;
LABEL_127:
          sub_B356C0(v36, &v401, v137, &v403);
          goto LABEL_128;
        }

        v131 = (v100 + 10);
        if (v99 < 9)
        {
          v134 = 0;
        }

        else
        {
          v132 = (48 * v98 - v97 + 7);
          if (v132 <= 0xFFF7)
          {
            LOWORD(v132) = -9;
          }

          v133 = v132 + v97 - 48 * v98;
          if (v133 < 8u)
          {
            v134 = 0;
            v135 = (v47 & v93) % 0x30;
            v136 = (v100 + 10);
            goto LABEL_324;
          }

          v277 = 0;
          v278 = 0;
          v279 = (v133 >> 3) + 1;
          v135 = v99 - 8 * (((v133 >> 3) + 1) & 0x3FFE);
          v136 = &v131[v279 & 0x3FFE];
          v280 = (v100 + 11);
          v281 = v279 & 0x3FFE;
          do
          {
            v282 = *(v280 - 1);
            v283 = *v280;
            v280 += 2;
            v277 += byte_22A7D46[v282];
            v278 += byte_22A7D46[v283];
            v281 -= 2;
          }

          while (v281);
          v134 = v278 + v277;
          if ((v279 & 0x3FFE) != v279)
          {
            do
            {
LABEL_324:
              v284 = *v136++;
              v134 += byte_22A7D46[v284];
              v135 -= 8;
            }

            while (v135 > 8u);
          }

          v131 += ((v99 - 9) >> 3) + 1;
          LOBYTE(v99) = v135;
        }

        v285 = *(v36 + 56);
        v138 = (v102 + 12 * (v134 + byte_22A7D46[~(-1 << v99) & *v131]));
        if ((*v100 + 12 * *(v100 + 8)) == v138)
        {
          v100 += 16;
          if (v100 != v285)
          {
            do
            {
              v286 = v100;
              if (*(v100 + 8))
              {
                break;
              }

              v100 += 16;
            }

            while (v286 + 2 != v285);
            v138 = *v286;
          }
        }

        if (v100 != v285 && v101)
        {
          do
          {
            if (*(v36 + 36) != *(v138 + 1) || *(v36 + 32) != *v138)
            {
              break;
            }

            v138 = (v138 + 12);
            if (v138 == (*v100 + 12 * *(v100 + 8)))
            {
              v100 += 16;
              if (v100 != v285)
              {
                do
                {
                  v288 = v100;
                  if (*(v100 + 8))
                  {
                    break;
                  }

                  v100 += 16;
                }

                while (v288 + 2 != v285);
                v138 = *v288;
              }
            }
          }

          while (v100 != v285);
        }

LABEL_129:
        v342 = *(v138 + 2);
        if (v342 == -1)
        {
          v139 = *(v36 + 112);
          *(v36 + 112) = v139 + 1;
          *(v138 + 2) = v139;
          v141 = *(v36 + 96);
          v140 = *(v36 + 104);
          if (v141 >= v140)
          {
            v143 = *(v36 + 88);
            v144 = v141 - v143;
            v145 = (v141 - v143) >> 3;
            v146 = v145 + 1;
            if ((v145 + 1) >> 61)
            {
              sub_1794();
            }

            v147 = v140 - v143;
            if (v147 >> 2 > v146)
            {
              v146 = v147 >> 2;
            }

            if (v147 >= 0x7FFFFFFFFFFFFFF8)
            {
              v148 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v148 = v146;
            }

            if (v148)
            {
              if (!(v148 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v149 = v145;
            v150 = (8 * v145);
            v151 = &v150[-v149];
            *v150 = v44;
            v142 = v150 + 1;
            memcpy(v151, v143, v144);
            *(v36 + 88) = v151;
            *(v36 + 96) = v142;
            *(v36 + 104) = 0;
            if (v143)
            {
              operator delete(v143);
            }
          }

          else
          {
            *v141 = v44;
            v142 = v141 + 1;
          }

          *(v36 + 96) = v142;
          v342 = *(v138 + 2);
        }

        v152 = *&v348[20];
        v153 = sub_A57920((*(v344 + 24) + 4136), *v348);
        v154 = (v153 - *v153);
        if (*v154 >= 9u && (v155 = v154[4]) != 0)
        {
          v156 = (v153 + v155 + *(v153 + v155));
        }

        else
        {
          v156 = 0;
        }

        DWORD1(v346) = 10 * *(sub_A571D4(v156, v152) + 8);
        v157 = *(v344 + 24);
        v158 = *v348;
        v159 = *&v348[20];
        v160 = *&v348[8];
        v161 = sub_A5706C((v157 + 4136), *v348);
        v162 = v161;
        v163 = &v161[-*v161];
        if (*v163 < 5u)
        {
          v164 = 0;
        }

        else
        {
          v164 = *(v163 + 2);
          if (v164)
          {
            v164 += &v161[*&v161[v164]];
          }
        }

        v165 = (v164 + 4 * v158 + 4 + *(v164 + 4 * v158 + 4));
        v166 = (v165 - *v165);
        if (*v166 >= 9u && (v167 = v166[4]) != 0)
        {
          v168 = (v165 + v167 + *(v165 + v167));
        }

        else
        {
          v168 = 0;
        }

        v169 = sub_A571D4(v168, v159);
        v170 = (v162 - *v162);
        if (*v170 < 0xBu)
        {
          v171 = 0;
          v172 = (v165 - *v165);
          if (*v172 >= 0x11u)
          {
            goto LABEL_162;
          }

LABEL_165:
          LODWORD(v173) = 0;
          goto LABEL_166;
        }

        v171 = v170[5];
        if (v171)
        {
          v171 = (v171 + v162 + *(v171 + v162));
        }

        v172 = (v165 - *v165);
        if (*v172 < 0x11u)
        {
          goto LABEL_165;
        }

LABEL_162:
        v173 = v172[8];
        if (v172[8])
        {
          LODWORD(v173) = *(v165 + v173);
        }

LABEL_166:
        v174 = sub_A57320(v171, v173 + *(v165 + v172[2] + *(v165 + v172[2])) * v160 + *(v169 + 14));
        if (v174)
        {
          v175 = __ROR8__(*v174, 32);
          v176 = *(v174 + 8);
        }

        else
        {
          v176 = 0;
          v175 = 0xFFFFFFFFLL;
        }

        *&v403 = v175;
        DWORD2(v403) = v176;
        v177 = sub_A57920((v157 + 4136), v158);
        v178 = (v177 - *v177);
        if (*v178 >= 9u && (v179 = v178[4]) != 0)
        {
          v180 = (v177 + v179 + *(v177 + v179));
        }

        else
        {
          v180 = 0;
        }

        v181 = *(sub_A571D4(v180, v159) + 12);
        if (*&v348[12] == -1)
        {
          v182 = 0x7FFFFFFF;
        }

        else
        {
          v182 = *&v348[16];
        }

        *(&v346 + 1) = sub_A56700((v157 + 4184), &v403, v181, v182);
        LOWORD(v347) = v183;
        v184 = *(v344 + 24);
        v185 = *v348;
        v186 = *&v348[24];
        v187 = *&v348[8];
        v188 = sub_A5706C((v184 + 4136), *v348);
        v189 = v188;
        v190 = &v188[-*v188];
        if (*v190 < 5u)
        {
          v191 = 0;
        }

        else
        {
          v191 = *(v190 + 2);
          if (v191)
          {
            v191 += &v188[*&v188[v191]];
          }
        }

        v192 = (v191 + 4 * v185 + 4 + *(v191 + 4 * v185 + 4));
        v193 = (v192 - *v192);
        if (*v193 >= 9u && (v194 = v193[4]) != 0)
        {
          v195 = (v192 + v194 + *(v192 + v194));
        }

        else
        {
          v195 = 0;
        }

        v196 = sub_A571D4(v195, v186);
        v197 = (v189 - *v189);
        if (*v197 < 0xBu)
        {
          v198 = 0;
          v199 = (v192 - *v192);
          if (*v199 >= 0x11u)
          {
            goto LABEL_188;
          }

LABEL_191:
          LODWORD(v200) = 0;
          goto LABEL_192;
        }

        v198 = v197[5];
        if (v198)
        {
          v198 = (v198 + v189 + *(v198 + v189));
        }

        v199 = (v192 - *v192);
        if (*v199 < 0x11u)
        {
          goto LABEL_191;
        }

LABEL_188:
        v200 = v199[8];
        if (v199[8])
        {
          LODWORD(v200) = *(v192 + v200);
        }

LABEL_192:
        v201 = sub_A57320(v198, v200 + *(v192 + v199[2] + *(v192 + v199[2])) * v187 + *(v196 + 14));
        if (v201)
        {
          v202 = __ROR8__(*v201, 32);
          v203 = *(v201 + 8);
        }

        else
        {
          v203 = 0;
          v202 = 0xFFFFFFFFLL;
        }

        *&v403 = v202;
        DWORD2(v403) = v203;
        v204 = sub_A57920((v184 + 4136), v185);
        v205 = (v204 - *v204);
        if (*v205 >= 9u && (v206 = v205[4]) != 0)
        {
          v207 = (v204 + v206 + *(v204 + v206));
        }

        else
        {
          v207 = 0;
        }

        v208 = *(sub_A571D4(v207, v186) + 12);
        if (*&v348[12] == -1)
        {
          v209 = 0x7FFFFFFF;
        }

        else
        {
          v209 = *&v348[16];
        }

        *(&v347 + 4) = sub_A56A5C((v184 + 4184), &v403, v208, v209);
        WORD6(v347) = v210;
        if (*&v362[16])
        {
          sub_A332F8(&v403, &v346);
          sub_A34B68(v357, &v403);
          if (v414)
          {
            v415 = v414;
            operator delete(v414);
          }

          if (v412)
          {
            *v413 = v412;
            operator delete(v412);
          }

          if (v410)
          {
            v411 = v410;
            operator delete(v410);
          }

          v211 = v353;
          if (v353)
          {
            goto LABEL_210;
          }
        }

        else
        {
          *v357 = v346;
          *&v357[16] = v347;
          *v358 = *v348;
          *&v358[12] = *&v348[12];
          v224 = v349;
          v225 = *(&v349 + 1) - v349;
          v226 = *&v360[0];
          v227 = __dst[0];
          if (*&v360[0] - __dst[0] < *(&v349 + 1) - v349)
          {
            if (__dst[0])
            {
              __dst[1] = __dst[0];
              operator delete(__dst[0]);
              v226 = 0;
              __dst[0] = 0;
              __dst[1] = 0;
              *&v360[0] = 0;
            }

            v228 = 0xEEEEEEEEEEEEEEEFLL * (v225 >> 2);
            if (v228 <= 0x444444444444444)
            {
              v229 = 0xEEEEEEEEEEEEEEEFLL * (v226 >> 2);
              if (2 * v229 > v228)
              {
                v228 = 2 * v229;
              }

              if (v229 >= 0x222222222222222)
              {
                v230 = 0x444444444444444;
              }

              else
              {
                v230 = v228;
              }

              if (v230 <= 0x444444444444444)
              {
                operator new();
              }
            }

            sub_1794();
          }

          v260 = __dst[1];
          v261 = __dst[1] - __dst[0];
          if ((__dst[1] - __dst[0]) >= v225)
          {
            if (*(&v349 + 1) != v349)
            {
              v264 = __dst[0];
              memmove(__dst[0], v349, v225 - 3);
              v227 = v264;
            }

            v263 = &v227[v225];
          }

          else
          {
            if (__dst[1] != __dst[0])
            {
              memmove(__dst[0], v349, v261 - 3);
              v260 = __dst[1];
            }

            v262 = *(&v224 + 1) - (v224 + v261);
            if (v262)
            {
              memmove(v260, (v224 + v261), v262 - 3);
            }

            v263 = &v260[v262];
          }

          __dst[1] = v263;
          sub_A349D4(v360 + 1, *(&v350 + 1), v351, 0xEEEEEEEEEEEEEEEFLL * ((v351 - *(&v350 + 1)) >> 2));
          LODWORD(v361[0]) = v352;
          sub_956400(v361 + 1, v353, v354, 0xCCCCCCCCCCCCCCCDLL * ((v354 - v353) >> 3));
          *v362 = v356;
          v211 = v353;
          if (v353)
          {
LABEL_210:
            v354 = v211;
            operator delete(v211);
          }
        }

        v6 = v345;
        if (*(&v350 + 1))
        {
          *&v351 = *(&v350 + 1);
          operator delete(*(&v350 + 1));
        }

        if (v349)
        {
          *(&v349 + 1) = v349;
          operator delete(v349);
        }

        if (v27[4] != -1)
        {
          v212 = *(&v363 + 1);
          if (*(&v363 + 1) < v364)
          {
            goto LABEL_217;
          }

LABEL_244:
          v214 = sub_AA9AE0(&v363, v357);
          *(&v363 + 1) = v214;
          v215 = *(&v395 + 1);
          v216 = v396;
          if (*(&v395 + 1) >= v396)
          {
            goto LABEL_245;
          }

LABEL_220:
          *v215 = 0;
          *(v215 + 8) = 0;
          *(v215 + 16) = 0;
          if (*(&v363 + 1) != v363)
          {
            if (0xCF3CF3CF3CF3CF3DLL * ((*(&v363 + 1) - v363) >> 3) <= 0x186186186186186)
            {
              operator new();
            }

            sub_1794();
          }

          v221 = v365;
          *(v215 + 32) = 0;
          *(v215 + 24) = v221;
          *(v215 + 40) = 0;
          *(v215 + 48) = 0;
          if (v367 != v366)
          {
            if (0xCCCCCCCCCCCCCCCDLL * ((v367 - v366) >> 3) <= 0x666666666666666)
            {
              operator new();
            }

            sub_1794();
          }

          v222 = *v369;
          *(v215 + 63) = *&v369[7];
          *(v215 + 56) = v222;
          v223 = v215 + 72;
          goto LABEL_277;
        }

LABEL_223:
        v365 = 1;
        v217 = v27[3];
        v218 = v27[7];
        v219 = *sub_A9C5E0((*(v344 + 32) + 88), *v27);
        v220 = *sub_A9C5E0((*(v344 + 32) + 88), v342);
        if (*&v362[16] == -1)
        {
          goto LABEL_242;
        }

        if (*&v362[16] != 1)
        {
          (off_2670F08[*&v362[16]])(&v403, v357);
LABEL_242:
          *v357 = 0;
          *&v357[4] = v217;
          *&v357[12] = v219;
          *&v357[20] = v220;
          *&v357[8] = v218;
          *&v362[16] = 1;
          goto LABEL_243;
        }

        *v357 = 0;
        *&v357[4] = v217;
        *&v357[8] = v218;
        *&v357[12] = v219;
        *&v357[20] = v220;
LABEL_243:
        v342 = *v27;
        v212 = *(&v363 + 1);
        if (*(&v363 + 1) >= v364)
        {
          goto LABEL_244;
        }

LABEL_217:
        *v212 = 0;
        *(v212 + 160) = -1;
        v213 = *&v362[16];
        if (*&v362[16] != -1)
        {
          *&v403 = v212;
          (off_2670F18[*&v362[16]])(&v403, v357);
          *(v212 + 160) = v213;
        }

        v214 = v212 + 168;
        *(&v363 + 1) = v212 + 168;
        v215 = *(&v395 + 1);
        v216 = v396;
        if (*(&v395 + 1) < v396)
        {
          goto LABEL_220;
        }

LABEL_245:
        v231 = 0x8E38E38E38E38E39 * ((v215 - v395) >> 3);
        v232 = v231 + 1;
        if (v231 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        v233 = 0x8E38E38E38E38E39 * ((v216 - v395) >> 3);
        if (2 * v233 > v232)
        {
          v232 = 2 * v233;
        }

        if (v233 >= 0x1C71C71C71C71C7)
        {
          v234 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v234 = v232;
        }

        v406 = &v395;
        if (v234)
        {
          if (v234 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v235 = 72 * v231;
        *&v403 = 0;
        *(&v403 + 1) = v235;
        v404 = v235;
        v405 = 0;
        *(v235 + 8) = 0;
        *(v235 + 16) = 0;
        *v235 = 0;
        if (v214 != v363)
        {
          if (0xCF3CF3CF3CF3CF3DLL * ((v214 - v363) >> 3) <= 0x186186186186186)
          {
            operator new();
          }

          sub_1794();
        }

        v236 = v365;
        *(v235 + 32) = 0;
        *(v235 + 24) = v236;
        *(v235 + 40) = 0;
        *(v235 + 48) = 0;
        if (v367 != v366)
        {
          if (0xCCCCCCCCCCCCCCCDLL * ((v367 - v366) >> 3) <= 0x666666666666666)
          {
            operator new();
          }

          sub_1794();
        }

        *(v235 + 56) = *v369;
        *(v235 + 63) = *&v369[7];
        v223 = v404 + 72;
        v404 += 72;
        v237 = *(&v395 + 1);
        v238 = v395;
        v239 = *(&v403 + 1) + v395 - *(&v395 + 1);
        if (v395 != *(&v395 + 1))
        {
          v240 = v395;
          v241 = *(&v403 + 1) + v395 - *(&v395 + 1);
          do
          {
            *v241 = 0;
            *(v241 + 8) = 0;
            *(v241 + 16) = 0;
            *v241 = *v240;
            *(v241 + 16) = *(v240 + 16);
            *(v240 + 8) = 0;
            *(v240 + 16) = 0;
            *v240 = 0;
            *(v241 + 24) = *(v240 + 24);
            *(v241 + 40) = 0;
            *(v241 + 48) = 0;
            *(v241 + 32) = 0;
            *(v241 + 32) = *(v240 + 32);
            *(v241 + 48) = *(v240 + 48);
            *(v240 + 32) = 0;
            *(v240 + 40) = 0;
            *(v240 + 48) = 0;
            v242 = *(v240 + 56);
            *(v241 + 63) = *(v240 + 63);
            *(v241 + 56) = v242;
            v240 += 72;
            v241 += 72;
          }

          while (v240 != v237);
          do
          {
            v244 = v238[4];
            if (v244)
            {
              v238[5] = v244;
              operator delete(v244);
            }

            v245 = *v238;
            if (*v238)
            {
              v246 = v238[1];
              v243 = *v238;
              if (v246 != v245)
              {
                do
                {
                  v247 = v246 - 168;
                  v248 = *(v246 - 2);
                  if (v248 != -1)
                  {
                    (off_2670F08[v248])(&v346, v246 - 168);
                  }

                  *(v246 - 2) = -1;
                  v246 -= 168;
                }

                while (v247 != v245);
                v243 = *v238;
              }

              v238[1] = v245;
              operator delete(v243);
              v6 = v345;
            }

            v238 += 9;
          }

          while (v238 != v237);
        }

        v249 = v395;
        *&v395 = v239;
        *(&v395 + 1) = v223;
        *&v396 = v405;
        if (v249)
        {
          operator delete(v249);
        }

LABEL_277:
        *(&v395 + 1) = v223;
        v251 = v27[5];
        LODWORD(v403) = v340 + *(v344 + 120) + *(v344 + 120) * v342 + 1;
        v250 = v403;
        v252 = *(v344 + 216);
        v253 = *(sub_B5FB1C(v344 + 128, &v403) + 4);
        LODWORD(v403) = v250;
        v254 = *(v344 + 216);
        v27 = (v252 + (v253 << 6));
        v255 = (v254 + (*(sub_B5FB1C(v344 + 128, &v403) + 8) << 6));
        if (v27 == v255)
        {
          v27 = 0;
        }

        else
        {
          while (v27[6] != v251)
          {
            v27 += 16;
            if (v27 == v255)
            {
              v27 = 0;
              break;
            }
          }
        }

        if (*&v362[16] != -1)
        {
          (off_2670F08[*&v362[16]])(&v403, v357);
        }

        if (v366)
        {
          v367 = v366;
          operator delete(v366);
        }

        v256 = v363;
        if (v363)
        {
          v257 = *(&v363 + 1);
          v28 = v363;
          if (*(&v363 + 1) != v363)
          {
            do
            {
              v258 = v257 - 168;
              v259 = *(v257 - 8);
              if (v259 != -1)
              {
                (off_2670F08[v259])(v357, v257 - 168);
              }

              *(v257 - 8) = -1;
              v257 -= 168;
            }

            while (v258 != v256);
            v28 = v363;
          }

          *(&v363 + 1) = v256;
          operator delete(v28);
        }

        --v340;
        if (*v27 == -1)
        {
          goto LABEL_346;
        }

        goto LABEL_26;
      }

LABEL_44:
      ++v43;
    }
  }

LABEL_398:
  if (v332 != (a1 + 544))
  {
    v324 = *(a1 + 567);
    if (*(v337 + 55) < 0)
    {
      if (v324 >= 0)
      {
        v325 = (a1 + 544);
      }

      else
      {
        v325 = *(a1 + 544);
      }

      if (v324 >= 0)
      {
        v326 = *(a1 + 567);
      }

      else
      {
        v326 = *(a1 + 552);
      }

      sub_13B38(v332, v325, v326);
    }

    else if ((*(a1 + 567) & 0x80) != 0)
    {
      sub_13A68(v332, *(a1 + 544), *(a1 + 552));
    }

    else
    {
      *v332 = *(a1 + 544);
      v332[2] = *(a1 + 560);
    }
  }

  v327 = *(a1 + 648);
  *(v337 + 120) = *(a1 + 632);
  *(v337 + 136) = v327;
  v328 = *(a1 + 680);
  *(v337 + 152) = *(a1 + 664);
  *(v337 + 168) = v328;
  v329 = *(a1 + 584);
  *(v337 + 56) = *(a1 + 568);
  *(v337 + 72) = v329;
  result = *(a1 + 600);
  v331 = *(a1 + 616);
  *(v337 + 88) = result;
  *(v337 + 104) = v331;
  return result;
}

void sub_B5B768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  STACK[0x270] = v11 + 240;
  sub_A31F30(&STACK[0x270]);
  v14 = *(v11 + 216);
  if (v14)
  {
    *(v11 + 224) = v14;
    operator delete(v14);
    v15 = *a10;
    if (*a10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *a10;
    if (*a10)
    {
LABEL_3:
      *(v11 + 200) = v15;
      operator delete(v15);
      if ((*(v11 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  if ((*(v11 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    if (!*v12)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*a11);
  if (!*v12)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_A95778(v12);
  operator delete(*v12);
  _Unwind_Resume(a1);
}

double sub_B5BD08(uint64_t a1)
{
  *(a1 + 264) = 0;
  if (*(a1 + 168) | *(a1 + 208))
  {
    for (i = *(a1 + 176); i != *(a1 + 184); i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    *(a1 + 208) = 0;
  }

  *(a1 + 128) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 144), *(a1 + 200))));
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 224) = *(a1 + 216);
  *(a1 + 248) = 0;
  v3 = *(a1 + 296);
  v4 = *(a1 + 304);
  if (v3 != v4)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 296);
    do
    {
      v7 = *v6++;
      *(v5 + ((v7 >> 3) & 0x1FFFFFF8)) &= ~(1 << v7);
    }

    while (v6 != v4);
  }

  *(a1 + 304) = v3;
  v8 = *(a1 + 344);
  v9 = *(a1 + 352);
  if (v8 != v9)
  {
    v10 = *(a1 + 320);
    v11 = *(a1 + 344);
    do
    {
      v12 = *v11++;
      *(v10 + ((v12 >> 3) & 0x1FFFFFF8)) &= ~(1 << v12);
    }

    while (v11 != v9);
  }

  *(a1 + 352) = v8;
  v13 = *(a1 + 416);
  v14 = *(a1 + 424);
  if (v13 != v14)
  {
    v15 = *(a1 + 392);
    v16 = *(a1 + 368);
    v17 = *(a1 + 416);
    do
    {
      v18 = *v17++;
      *(v15 + ((v18 >> 3) & 0x1FFFFFF8)) &= ~(1 << v18);
      *(v16 + 4 * v18) = -1;
    }

    while (v17 != v14);
  }

  *(a1 + 424) = v13;
  sub_C4306C((a1 + 448));
  v27 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v28, &__p);
  v19 = (a1 + 544);
  if (*(a1 + 567) < 0)
  {
    operator delete(*v19);
  }

  *v19 = v28;
  *(a1 + 560) = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28) = 0;
  v20 = v35;
  *(a1 + 632) = v34;
  *(a1 + 648) = v20;
  v21 = v37;
  *(a1 + 664) = v36;
  *(a1 + 680) = v21;
  v22 = v31;
  *(a1 + 568) = v30;
  *(a1 + 584) = v22;
  v23 = v33;
  *(a1 + 600) = v32;
  *(a1 + 616) = v23;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v24 = COERCE_DOUBLE(vadd_s32(vdup_n_s32(2 * *(a1 + 16)), 0x200000004));
  *(a1 + 120) = v24;
  return sub_C430C8((a1 + 448), *(a1 + 8), v24);
}

void sub_B5BF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B5BF48(uint64_t a1)
{
  if (sub_A822FC(*(a1 + 24)))
  {
    v2 = *(a1 + 68);
    v3 = *(a1 + 264);
    *(a1 + 264) = v3 + 1;
    v4 = *(a1 + 32);
    v39[0] = 0x1FFFFFFFELL;
    v5 = sub_B34C5C(v4, v39);
    v6 = *(v5 + 8);
    if (v6 == -1)
    {
      v7 = *(v4 + 112);
      *(v4 + 112) = v7 + 1;
      *(v5 + 8) = v7;
      v8 = v5;
      sub_2512DC(v4 + 88, v39);
      v6 = *(v8 + 8);
    }

    v29 = v6;
    LODWORD(v39[0]) = 0;
    v9 = *(a1 + 216);
    v10 = (v9 + (*(sub_B5FB1C(a1 + 128, v39) + 4) << 6));
    LODWORD(v39[0]) = 0;
    v11 = *(a1 + 216);
    v12 = sub_B5FB1C(a1 + 128, v39);
    sub_B5F764(a1 + 128, 0, v10, (v11 + (*(v12 + 8) << 6)));
    v20 = xmmword_229B660;
    v21 = -1;
    v22 = v3;
    v23 = v2;
    v24 = 0;
    v25 = 10 * v2;
    v26 = 0;
    v27 = -1;
    v28 = 0x7FFFFFFF;
    v43 = 0;
    sub_B61684((a1 + 128), &v43, v39);
    v13 = *(a1 + 176);
    v14 = *(a1 + 184);
    v30 = a1 + 128;
    v31 = v13;
    v32 = v14;
    v33 = v14;
    v34 = 0;
    v35 = v13;
    v36 = v14;
    v37 = v14;
    v38 = 0;
    sub_B47094(&v30);
    if (v39[1] == v31 && v40 == v32 && v41 == v33 && (v41 == v40 || v42 == v34) || *(v42 + 8) == *(v42 + 4))
    {
      sub_B60E40((a1 + 128), 0, &v20);
    }

    else if ((sub_B612F4(a1 + 128, &v20, 0, 0, 1) & 0x100) != 0)
    {
      sub_B61574(a1 + 128, 0);
    }

    v15 = v29;
    v16 = v29 + 1;
    v17 = *(a1 + 120);
    v18 = v17 * v16;
    v19 = v17 * v16 + 2;
    if (*(a1 + 20) == 1)
    {
      if (!sub_B5F3E4((a1 + 128), 0, v19, v18, v17 + v17 * *(a1 + 440), 2147483646))
      {
        return;
      }
    }

    else if (!sub_B5F3E4((a1 + 128), 0, v19, v18, -1, 2147483646))
    {
      return;
    }

    if (*(a1 + 280) <= v15)
    {
      sub_4D9168(a1 + 272, v16, 0);
    }

    if (((*(*(a1 + 272) + ((v15 >> 3) & 0x1FFFFFF8)) >> v15) & 1) == 0)
    {
      sub_DD38(a1 + 296, &v29);
      *(*(a1 + 272) + ((v29 >> 3) & 0x1FFFFFF8)) |= 1 << v29;
    }
  }
}

double sub_B5C1FC(uint64_t a1, int a2)
{
  sub_7E9A4(v39);
  v4 = *(a1 + 296);
  v5 = *(a1 + 304);
  if (v4 != v5)
  {
    while (1)
    {
      v38 = *v4;
      v6 = *sub_A9C5E0((*(a1 + 32) + 88), v38);
      if (HIDWORD(v6) == 1 && (v6 + 3) < 2)
      {
LABEL_12:
        v12 = 0;
        goto LABEL_17;
      }

      v8 = *(*(a1 + 24) + 4120);
      if (*(v8 + 17) == 1)
      {
        break;
      }

      v9 = sub_502FF8(v8 + 24, __ROR8__(v6, 32), 0, "stop");
      v13 = (v9 - *v9);
      if (*v13 >= 0x15u)
      {
        v11 = v13[10];
        if (v11)
        {
          goto LABEL_15;
        }
      }

      v12 = 30;
LABEL_17:
      v40 = 0;
      v14 = *(a1 + 216);
      v15 = (v14 + (*(sub_B5FB1C(a1 + 128, &v40) + 4) << 6));
      v40 = 0;
      v16 = *(a1 + 216);
      v17 = sub_B5FB1C(a1 + 128, &v40);
      sub_B5F764(a1 + 128, 0, v15, (v16 + (*(v17 + 8) << 6)));
      sub_B619E0((a1 + 128), a2 + 1 + *(a1 + 120) + *(a1 + 120) * v38, 0);
      v40 = 0;
      v18 = *(a1 + 216);
      v19 = (v18 + (*(sub_B5FB1C(a1 + 128, &v40) + 4) << 6));
      v40 = 0;
      v20 = *(a1 + 216);
      v21 = (v20 + (*(sub_B5FB1C(a1 + 128, &v40) + 8) << 6));
      if (v19 == v21)
      {
        goto LABEL_24;
      }

      v22 = v38;
      v23 = v21 - v19 - 64;
      if (v23 <= 0x3F)
      {
        v24 = v19;
        do
        {
LABEL_23:
          *v24 = v22;
          v30 = v24[7];
          v24[3] = v30;
          v24[4] = -1;
          v24[7] = v30 + v12;
          v24 += 16;
        }

        while (v24 != v21);
        goto LABEL_24;
      }

      v25 = (v23 >> 6) + 1;
      v24 = &v19[16 * (v25 & 0x7FFFFFFFFFFFFFELL)];
      v26 = (v19 + 23);
      v27 = v25 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *(v26 - 23) = v22;
        *(v26 - 7) = v22;
        v28 = *(v26 - 16);
        v29 = *v26;
        *(v26 - 20) = v28;
        *(v26 - 19) = -1;
        *(v26 - 4) = v29;
        *(v26 - 3) = -1;
        *(v26 - 16) = v28 + v12;
        *v26 = v29 + v12;
        v26 += 32;
        v27 -= 2;
      }

      while (v27);
      if (v25 != (v25 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_23;
      }

LABEL_24:
      v31 = v38;
      v32 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v33 = v32 + v32 * *(a1 + 440) + 1;
        v34 = *(a1 + 48);
        if (!v34)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v33 = -1;
        v34 = *(a1 + 48);
        if (!v34)
        {
LABEL_28:
          v35 = 2147483646;
          goto LABEL_29;
        }
      }

      v35 = sub_B394F8(v34, v38, *(a1 + 124) + ~a2);
LABEL_29:
      if (sub_B5F3E4((a1 + 128), 0, a2 + 2 + v32 + v32 * v31, v32 + v32 * v31 + 1, v33, v35))
      {
        v36 = v38;
        if (*(a1 + 328) <= v38)
        {
          sub_4D9168(a1 + 320, v38 + 1, 0);
          v36 = v38;
        }

        if (((*(*(a1 + 320) + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
        {
          sub_DD38(a1 + 344, &v38);
          *(*(a1 + 320) + ((v38 >> 3) & 0x1FFFFFF8)) |= 1 << v38;
        }
      }

      if (++v4 == v5)
      {
        goto LABEL_34;
      }
    }

    v9 = sub_A74944(v8 + 24, v6, 0, "transfers at stop");
    v10 = (v9 - *v9);
    if (*v10 < 5u)
    {
      goto LABEL_12;
    }

    v11 = v10[2];
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_15:
    v12 = *(v9 + v11);
    goto LABEL_17;
  }

LABEL_34:
  result = sub_7EA60(v39) + *(a1 + 584);
  *(a1 + 584) = result;
  return result;
}

double sub_B5C558(uint64_t a1, int a2)
{
  sub_7E9A4(v270);
  v4 = *(a1 + 296);
  v257 = *(a1 + 304);
  if (v4 != v257)
  {
    v259 = a1;
    while (1)
    {
      v258 = v4;
      v5 = *v4;
      v6 = sub_A9C5E0((*(a1 + 32) + 88), *v4);
      sub_A74644(&v264, *(a1 + 24), *v6);
      v7 = v265;
      v8 = 16;
      if (v269)
      {
        v8 = 32;
      }

      if (v265 < *(&v264 + v8))
      {
        break;
      }

LABEL_3:
      v4 = v258 + 1;
      if (v258 + 1 == v257)
      {
        goto LABEL_309;
      }
    }

    v260 = v5 + 1;
    v263 = v5;
LABEL_13:
    v12 = 0;
    v13 = __ROR8__(*v7, 32);
    v14 = *(a1 + 32);
    v15 = *(v14 + 72) - 1;
    v16 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) >> 33));
    v17 = v16 ^ (v16 >> 33);
    v18 = *(v14 + 48);
    v19 = v18 + 11;
    v20 = -1;
    for (i = v17; ; i = v12 + v22)
    {
      v22 = i & v15;
      v23 = (i & v15) / 0x30;
      v24 = (i & v15) % 0x30;
      v25 = (v18 + 16 * v23);
      if (((*(v25 + (v24 >> 3) + 10) >> (v24 & 7)) & 1) == 0)
      {
        if (v20 == -1)
        {
          v61 = v22;
        }

        else
        {
          v61 = v20;
        }

        if (!sub_B35190(*(a1 + 32), 1))
        {
          goto LABEL_100;
        }

        goto LABEL_56;
      }

      v26 = *v25;
      if (!*(v14 + 40))
      {
        goto LABEL_34;
      }

      v27 = v25 + 10;
      if (v24 < 9)
      {
        v29 = 0;
        LOBYTE(v30) = v24;
        goto LABEL_30;
      }

      v28 = (48 * v23 - v22 + 7);
      if (v28 <= 0xFFF7)
      {
        LOWORD(v28) = -9;
      }

      if ((v28 + v22 - 48 * v23) >= 8u)
      {
        v32 = 0;
        v33 = 0;
        v34 = ((v28 + v22 - 48 * v23) >> 3) + 1;
        v30 = v24 - 8 * ((((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
        v31 = &v27[(((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
        v35 = (v19 + 16 * v23);
        v36 = v34 & 0x3FFE;
        do
        {
          v37 = *(v35 - 1);
          v38 = *v35;
          v35 += 2;
          v32 += byte_22A7D46[v37];
          v33 += byte_22A7D46[v38];
          v36 -= 2;
        }

        while (v36);
        v29 = v33 + v32;
        if ((v34 & 0x3FFE) == v34)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v29 = 0;
        v30 = v24;
        v31 = v25 + 10;
      }

      do
      {
        v39 = *v31++;
        v29 += byte_22A7D46[v39];
        v30 -= 8;
      }

      while (v30 > 8u);
LABEL_29:
      v27 += ((v24 - 9) >> 3) + 1;
LABEL_30:
      v40 = (v26 + 12 * (v29 + byte_22A7D46[~(-1 << v30) & *v27]));
      if (*(v14 + 36) == v40[1] && *(v14 + 32) == *v40)
      {
        if (v20 == -1)
        {
          v20 = v22;
        }

        goto LABEL_16;
      }

LABEL_34:
      v42 = v25 + 10;
      if (v24 < 9)
      {
        v44 = 0;
        LOBYTE(v45) = v24;
        goto LABEL_45;
      }

      v43 = (48 * v23 - v22 + 7);
      if (v43 <= 0xFFF7)
      {
        LOWORD(v43) = -9;
      }

      if ((v43 + v22 - 48 * v23) >= 8u)
      {
        v47 = 0;
        v48 = 0;
        v49 = ((v43 + v22 - 48 * v23) >> 3) + 1;
        v45 = v24 - 8 * ((((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
        v46 = &v42[(((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
        v50 = (v19 + 16 * v23);
        v51 = v49 & 0x3FFE;
        do
        {
          v52 = *(v50 - 1);
          v53 = *v50;
          v50 += 2;
          v47 += byte_22A7D46[v52];
          v48 += byte_22A7D46[v53];
          v51 -= 2;
        }

        while (v51);
        v44 = v48 + v47;
        if ((v49 & 0x3FFE) == v49)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v44 = 0;
        v45 = v24;
        v46 = v25 + 10;
      }

      do
      {
        v54 = *v46++;
        v44 += byte_22A7D46[v54];
        v45 -= 8;
      }

      while (v45 > 8u);
LABEL_44:
      v42 += ((v24 - 9) >> 3) + 1;
LABEL_45:
      if (v13 == *(v26 + 12 * (v44 + byte_22A7D46[~(-1 << v45) & *v42])))
      {
        if (v22 != -1)
        {
          v55 = v25 + 10;
          if (v24 < 9)
          {
            v58 = 0;
          }

          else
          {
            v56 = (48 * v23 - v22 + 7);
            if (v56 <= 0xFFF7)
            {
              LOWORD(v56) = -9;
            }

            v57 = v56 + v22 - 48 * v23;
            if (v57 < 8u)
            {
              v58 = 0;
              v59 = v24;
              v60 = v25 + 10;
              goto LABEL_131;
            }

            v139 = 0;
            v140 = 0;
            v141 = (v57 >> 3) + 1;
            v59 = v24 - 8 * (((v57 >> 3) + 1) & 0x3FFE);
            v60 = &v55[v141 & 0x3FFE];
            v142 = v25 + 11;
            v143 = v141 & 0x3FFE;
            do
            {
              v144 = *(v142 - 1);
              v145 = *v142;
              v142 += 2;
              v139 += byte_22A7D46[v144];
              v140 += byte_22A7D46[v145];
              v143 -= 2;
            }

            while (v143);
            v58 = v140 + v139;
            if ((v141 & 0x3FFE) != v141)
            {
              do
              {
LABEL_131:
                v146 = *v60++;
                v58 += byte_22A7D46[v146];
                v59 -= 8;
              }

              while (v59 > 8u);
            }

            v55 += ((v24 - 9) >> 3) + 1;
            LOBYTE(v24) = v59;
          }

          v147 = *(v14 + 56);
          v109 = (v26 + 12 * (v58 + byte_22A7D46[~(-1 << v24) & *v55]));
          if ((*v25 + 12 * *(v25 + 4)) == v109 && v25 + 2 != v147)
          {
            v149 = v25 + 4;
            do
            {
              if (*(v149 - 4))
              {
                v150 = 1;
              }

              else
              {
                v150 = v149 == v147;
              }

              v149 += 2;
            }

            while (!v150);
            v109 = *(v149 - 4);
          }

          goto LABEL_102;
        }

        v61 = -1;
        if (!sub_B35190(*(a1 + 32), 1))
        {
LABEL_100:
          v271 = v13;
          v272 = -1;
          v108 = v14;
          v107 = v61;
LABEL_101:
          sub_B356C0(v108, &v271, v107, v273);
          v109 = v274;
          goto LABEL_102;
        }

LABEL_56:
        v62 = 0;
        v271 = v13;
        v272 = -1;
        v63 = *(v14 + 72) - 1;
        v64 = *(v14 + 48);
        v65 = v64 + 11;
        v66 = -1;
        while (2)
        {
          v67 = v17 & v63;
          v68 = (v17 & v63) / 0x30;
          v69 = (v17 & v63) % 0x30;
          v70 = v64 + 16 * v68;
          if (((*(v70 + (v69 >> 3) + 10) >> (v69 & 7)) & 1) == 0)
          {
            if (v66 == -1)
            {
              v107 = v17 & v63;
            }

            else
            {
              v107 = v66;
            }

            goto LABEL_98;
          }

          v71 = *(v14 + 40);
          v72 = *v70;
          if (v71)
          {
            v73 = (v70 + 10);
            if (v69 < 9)
            {
              v75 = 0;
              LOBYTE(v76) = (v17 & v63) % 0x30;
            }

            else
            {
              v74 = (48 * v68 - v67 + 7);
              if (v74 <= 0xFFF7)
              {
                LOWORD(v74) = -9;
              }

              if ((v74 + v67 - 48 * v68) < 8u)
              {
                v75 = 0;
                v76 = (v17 & v63) % 0x30;
                v77 = (v70 + 10);
                goto LABEL_71;
              }

              v78 = 0;
              v79 = 0;
              v80 = ((v74 + v67 - 48 * v68) >> 3) + 1;
              v76 = v69 - 8 * ((((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
              v77 = &v73[(((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
              v81 = (v65 + 16 * v68);
              v82 = v80 & 0x3FFE;
              do
              {
                v83 = *(v81 - 1);
                v84 = *v81;
                v81 += 2;
                v78 += byte_22A7D46[v83];
                v79 += byte_22A7D46[v84];
                v82 -= 2;
              }

              while (v82);
              v75 = v79 + v78;
              if ((v80 & 0x3FFE) != v80)
              {
                do
                {
LABEL_71:
                  v85 = *v77++;
                  v75 += byte_22A7D46[v85];
                  v76 -= 8;
                }

                while (v76 > 8u);
              }

              v73 += ((v69 - 9) >> 3) + 1;
            }

            v86 = &v72[3 * (v75 + byte_22A7D46[~(-1 << v76) & *v73])];
            if (*(v14 + 36) == v86[1] && *(v14 + 32) == *v86)
            {
              if (v66 == -1)
              {
                v66 = v17 & v63;
              }

LABEL_59:
              v17 = ++v62 + v67;
              continue;
            }
          }

          break;
        }

        v88 = (v70 + 10);
        if (v69 < 9)
        {
          v90 = 0;
          LOBYTE(v91) = (v17 & v63) % 0x30;
        }

        else
        {
          v89 = (48 * v68 - v67 + 7);
          if (v89 <= 0xFFF7)
          {
            LOWORD(v89) = -9;
          }

          if ((v89 + v67 - 48 * v68) < 8u)
          {
            v90 = 0;
            v91 = (v17 & v63) % 0x30;
            v92 = (v70 + 10);
            goto LABEL_86;
          }

          v93 = 0;
          v94 = 0;
          v95 = ((v89 + v67 - 48 * v68) >> 3) + 1;
          v91 = v69 - 8 * ((((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
          v92 = &v88[(((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
          v96 = (v65 + 16 * v68);
          v97 = v95 & 0x3FFE;
          do
          {
            v98 = *(v96 - 1);
            v99 = *v96;
            v96 += 2;
            v93 += byte_22A7D46[v98];
            v94 += byte_22A7D46[v99];
            v97 -= 2;
          }

          while (v97);
          v90 = v94 + v93;
          if ((v95 & 0x3FFE) != v95)
          {
            do
            {
LABEL_86:
              v100 = *v92++;
              v90 += byte_22A7D46[v100];
              v91 -= 8;
            }

            while (v91 > 8u);
          }

          v88 += ((v69 - 9) >> 3) + 1;
        }

        if (v13 != *&v72[3 * (v90 + byte_22A7D46[~(-1 << v91) & *v88])])
        {
          goto LABEL_59;
        }

        if (v67 == -1)
        {
          v107 = -1;
LABEL_98:
          v108 = v14;
          goto LABEL_101;
        }

        v101 = (v70 + 10);
        if (v69 < 9)
        {
          v104 = 0;
        }

        else
        {
          v102 = (48 * v68 - v67 + 7);
          if (v102 <= 0xFFF7)
          {
            LOWORD(v102) = -9;
          }

          v103 = v102 + v67 - 48 * v68;
          if (v103 < 8u)
          {
            v104 = 0;
            v105 = (v17 & v63) % 0x30;
            v106 = (v70 + 10);
            goto LABEL_159;
          }

          v161 = 0;
          v162 = 0;
          v163 = (v103 >> 3) + 1;
          v105 = v69 - 8 * (((v103 >> 3) + 1) & 0x3FFE);
          v106 = &v101[v163 & 0x3FFE];
          v164 = (v70 + 11);
          v165 = v163 & 0x3FFE;
          do
          {
            v166 = *(v164 - 1);
            v167 = *v164;
            v164 += 2;
            v161 += byte_22A7D46[v166];
            v162 += byte_22A7D46[v167];
            v165 -= 2;
          }

          while (v165);
          v104 = v162 + v161;
          if ((v163 & 0x3FFE) != v163)
          {
            do
            {
LABEL_159:
              v168 = *v106++;
              v104 += byte_22A7D46[v168];
              v105 -= 8;
            }

            while (v105 > 8u);
          }

          v101 += ((v69 - 9) >> 3) + 1;
          LOBYTE(v69) = v105;
        }

        v169 = *(v14 + 56);
        v109 = &v72[3 * (v104 + byte_22A7D46[~(-1 << v69) & *v101])];
        if ((*v70 + 12 * *(v70 + 8)) == v109)
        {
          v70 += 16;
          if (v70 != v169)
          {
            do
            {
              v170 = v70;
              if (*(v70 + 8))
              {
                break;
              }

              v70 += 16;
            }

            while (v170 + 2 != v169);
            v109 = *v170;
          }
        }

        if (v70 != v169 && v71)
        {
          do
          {
            if (*(v14 + 36) != v109[1] || *(v14 + 32) != *v109)
            {
              break;
            }

            v109 += 3;
            if (v109 == (*v70 + 12 * *(v70 + 8)))
            {
              v70 += 16;
              if (v70 != v169)
              {
                do
                {
                  v251 = v70;
                  if (*(v70 + 8))
                  {
                    break;
                  }

                  v70 += 16;
                }

                while (v251 + 2 != v169);
                v109 = *v251;
              }
            }
          }

          while (v70 != v169);
        }

LABEL_102:
        v110 = v109[2];
        if (v110 == -1)
        {
          v111 = *(v14 + 112);
          *(v14 + 112) = v111 + 1;
          v109[2] = v111;
          v113 = *(v14 + 96);
          v112 = *(v14 + 104);
          if (v113 < v112)
          {
            *v113 = v13;
            v114 = v113 + 1;
            goto LABEL_119;
          }

          v115 = *(v14 + 88);
          v116 = v113 - v115;
          v117 = (v113 - v115) >> 3;
          v118 = v117 + 1;
          if ((v117 + 1) >> 61)
          {
            sub_1794();
          }

          v119 = v112 - v115;
          if (v119 >> 2 > v118)
          {
            v118 = v119 >> 2;
          }

          if (v119 >= 0x7FFFFFFFFFFFFFF8)
          {
            v120 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v120 = v118;
          }

          if (!v120)
          {
            v121 = (v113 - v115) >> 3;
            v122 = (8 * v117);
            v123 = (8 * v117 - 8 * v121);
            *v122 = v13;
            v114 = v122 + 1;
            memcpy(v123, v115, v116);
            *(v14 + 88) = v123;
            *(v14 + 96) = v114;
            *(v14 + 104) = 0;
            if (v115)
            {
              operator delete(v115);
            }

LABEL_119:
            *(v14 + 96) = v114;
            v110 = v109[2];
            a1 = v259;
            *(v259 + 640) = *(v259 + 640) + 1.0;
            if (v263 == v110)
            {
              goto LABEL_246;
            }

            goto LABEL_120;
          }

          if (!(v120 >> 61))
          {
            operator new();
          }

LABEL_311:
          sub_1808();
        }

        *(a1 + 640) = *(a1 + 640) + 1.0;
        if (v263 == v110)
        {
          goto LABEL_246;
        }

LABEL_120:
        LODWORD(v273[0]) = 0;
        v124 = *(a1 + 216);
        v125 = (v124 + (*(sub_B5FB1C(a1 + 128, v273) + 4) << 6));
        LODWORD(v273[0]) = 0;
        v126 = *(a1 + 216);
        v127 = sub_B5FB1C(a1 + 128, v273);
        sub_B5F764(a1 + 128, 0, v125, (v126 + (*(v127 + 8) << 6)));
        v128 = a2 + 1 + *(a1 + 120) * v260;
        LODWORD(v273[0]) = v128;
        if (*(a1 + 208) != *(a1 + 168))
        {
          v129 = sub_B5FD88(a1 + 128, v273);
          if (v129 != -1)
          {
            v130 = *(a1 + 176) + 16 * (v129 / 0x30);
            v131 = (v130 + 10);
            v132 = v129 % 0x30;
            if (v129 % 0x30 < 9)
            {
              v136 = 0;
            }

            else
            {
              v133 = 48 * (v129 / 0x30);
              v134 = (v133 - v129 + 7);
              if (v134 <= 0xFFF7)
              {
                LOWORD(v134) = -9;
              }

              v135 = v134 + v129 - v133;
              v136 = 0;
              if (v135 < 8u)
              {
                v137 = v129 % 0x30;
                v138 = (v130 + 10);
                goto LABEL_149;
              }

              v151 = 0;
              v152 = (v135 >> 3) + 1;
              LOWORD(v137) = v132 - 8 * (((v135 >> 3) + 1) & 0x3FFE);
              v138 = &v131[v152 & 0x3FFE];
              v153 = (v130 + 11);
              v154 = v152 & 0x3FFE;
              do
              {
                v155 = *(v153 - 1);
                v156 = *v153;
                v153 += 2;
                v136 += byte_22A7E46[v155];
                v151 += byte_22A7E46[v156];
                v154 -= 2;
              }

              while (v154);
              v136 += v151;
              if ((v152 & 0x3FFE) != v152)
              {
                do
                {
LABEL_149:
                  v157 = *v138++;
                  v136 += byte_22A7E46[v157];
                  LOWORD(v137) = v137 - 8;
                }

                while (v137 > 8u);
              }

              v131 += ((v132 - 9) >> 3) + 1;
              LOBYTE(v132) = v137;
            }

            v158 = *(a1 + 184);
            v159 = (*v130 + 12 * (v136 + byte_22A7E46[~(-1 << v132) & *v131]));
            if ((*v130 + 12 * *(v130 + 8)) == v159)
            {
              v130 += 16;
              if (v130 != v158)
              {
                do
                {
                  v160 = v130;
                  if (*(v130 + 8))
                  {
                    break;
                  }

                  v130 += 16;
                }

                while (v160 + 2 != v158);
                v159 = *v160;
              }
            }

            if (v130 != v158)
            {
              if (*(a1 + 168))
              {
                v171 = v130;
                do
                {
                  if (*(a1 + 160) != *v159)
                  {
                    break;
                  }

                  v159 += 3;
                  if (v159 == (*v130 + 12 * *(v130 + 8)))
                  {
                    v130 += 16;
                    v171 = *(a1 + 184);
                    if (v130 != v158)
                    {
                      do
                      {
                        v172 = v130;
                        if (*(v130 + 8))
                        {
                          v171 = v130;
                          goto LABEL_171;
                        }

                        v130 += 16;
                      }

                      while (v172 + 2 != v158);
                      v171 = *(a1 + 184);
LABEL_171:
                      v159 = *v172;
                    }
                  }
                }

                while (v130 != v158);
              }

              else
              {
                v171 = v130;
              }

              if (v171 != v158)
              {
                v175 = v159 + 1;
                v174 = v159[1];
                v173 = v175[1];
                v176 = v173 - v174;
                if (v173 != v174)
                {
                  v177 = 0;
                  v178 = 0;
                  do
                  {
                    v179 = sub_B61880((a1 + 128), v128, v178);
                    v180 = v179[2];
                    v181 = v179[3];
                    v182 = v179[1];
                    v273[0] = *v179;
                    v274 = v180;
                    v275 = v181;
                    v273[1] = v182;
                    v177 |= sub_B612F4(a1 + 128, v273, 0, 0, 1);
                    ++v178;
                  }

                  while (v176 != v178);
                  if ((v177 & 0x100) != 0)
                  {
                    LODWORD(v273[0]) = 0;
                    v183 = *(a1 + 216);
                    v184 = (v183 + (*(sub_B5FB1C(a1 + 128, v273) + 4) << 6));
                    LODWORD(v273[0]) = 0;
                    v185 = *(a1 + 216);
                    v186 = sub_B5FB1C(a1 + 128, v273);
                    v187 = (v185 + (*(v186 + 8) << 6));
                    v188 = v187;
                    if (v184 != v187)
                    {
                      v188 = v184;
                      while (*(v188 + 7) != 0x7FFFFFFF)
                      {
                        v188 += 4;
                        if (v188 == v187)
                        {
                          v188 = (v185 + (*(v186 + 8) << 6));
                          break;
                        }
                      }

                      if (v187 != v188)
                      {
                        for (j = v188 + 4; j != v187; j += 4)
                        {
                          if (*(j + 7) != 0x7FFFFFFF)
                          {
                            v253 = *j;
                            v254 = j[1];
                            v255 = j[3];
                            v188[2] = j[2];
                            v188[3] = v255;
                            *v188 = v253;
                            v188[1] = v254;
                            v188 += 4;
                          }
                        }
                      }
                    }

                    LODWORD(v273[0]) = 0;
                    v189 = *(a1 + 216);
                    v190 = sub_B5FB1C(a1 + 128, v273);
                    sub_B5F764(a1 + 128, 0, v188, (v189 + (*(v190 + 8) << 6)));
                  }
                }
              }
            }
          }
        }

        LODWORD(v273[0]) = 0;
        v191 = *(a1 + 216);
        v192 = v191 + (*(sub_B5FB1C(a1 + 128, v273) + 4) << 6);
        LODWORD(v273[0]) = 0;
        v193 = *(a1 + 216);
        v194 = v193 + (*(sub_B5FB1C(a1 + 128, v273) + 8) << 6);
        if (v192 != v194)
        {
          v195 = v265;
          do
          {
            *v192 = v263;
            *(v192 + 16) = -1;
            v196 = *(v192 + 28);
            *(v192 + 12) = v196.i32[0];
            v197 = *(v195 + 2);
            v198 = v197 / 10;
            v199 = v197 % 10;
            if (v197 < 0)
            {
              v200 = -5;
            }

            else
            {
              v200 = 5;
            }

            *(v192 + 28) = vadd_s32(vdup_n_s32(v198 + (((103 * (v200 + v199)) >> 15) & 1) + ((103 * (v200 + v199)) >> 10)), v196);
            v192 += 64;
          }

          while (v192 != v194);
        }

        v201 = *(a1 + 120);
        if (*(a1 + 20) == 1)
        {
          v202 = v201 + v201 * *(a1 + 440) + 1;
          v203 = *(a1 + 48);
          if (v203)
          {
            goto LABEL_195;
          }

LABEL_241:
          v206 = 2147483646;
          goto LABEL_242;
        }

        v202 = -1;
        v203 = *(a1 + 48);
        if (!v203)
        {
          goto LABEL_241;
        }

LABEL_195:
        v261 = *(a1 + 120);
        v262 = v202;
        v204 = 0;
        v205 = *(a1 + 124) + ~a2;
        while (2)
        {
          while (2)
          {
            LODWORD(v273[0]) = (v110 << *v203) | (v205 - v204);
            if (*(v203 + 88) == *(v203 + 48))
            {
              goto LABEL_196;
            }

            v208 = sub_B397F8(v203 + 8, v273);
            if (v208 == -1)
            {
              goto LABEL_196;
            }

            v209 = *(v203 + 56) + 16 * (v208 / 0x30);
            v210 = (v209 + 10);
            v211 = v208 % 0x30;
            if (v208 % 0x30 < 9)
            {
              v215 = 0;
            }

            else
            {
              v212 = 48 * (v208 / 0x30);
              v213 = (v212 - v208 + 7);
              if (v213 <= 0xFFF7)
              {
                LOWORD(v213) = -9;
              }

              v214 = v213 + v208 - v212;
              if (v214 < 8u)
              {
                v215 = 0;
                v216 = v208 % 0x30;
                v217 = (v209 + 10);
                goto LABEL_211;
              }

              v218 = 0;
              v219 = 0;
              v220 = (v214 >> 3) + 1;
              LOWORD(v216) = v211 - 8 * (((v214 >> 3) + 1) & 0x3FFE);
              v217 = &v210[v220 & 0x3FFE];
              v221 = (v209 + 11);
              v222 = v220 & 0x3FFE;
              do
              {
                v223 = *(v221 - 1);
                v224 = *v221;
                v221 += 2;
                v218 += byte_22A7B46[v223];
                v219 += byte_22A7B46[v224];
                v222 -= 2;
              }

              while (v222);
              v215 = v219 + v218;
              if ((v220 & 0x3FFE) != v220)
              {
                do
                {
LABEL_211:
                  v225 = *v217++;
                  v215 += byte_22A7B46[v225];
                  LOWORD(v216) = v216 - 8;
                }

                while (v216 > 8u);
              }

              v210 += ((v211 - 9) >> 3) + 1;
              LOBYTE(v211) = v216;
            }

            v226 = *(v203 + 64);
            v227 = (*v209 + 8 * (v215 + byte_22A7B46[~(-1 << v211) & *v210]));
            if ((*v209 + 8 * *(v209 + 8)) == v227)
            {
              v209 += 16;
              if (v209 != v226)
              {
                do
                {
                  v228 = v209;
                  if (*(v209 + 8))
                  {
                    break;
                  }

                  v209 += 16;
                }

                while (v228 + 2 != v226);
                v227 = *v228;
              }
            }

            if (v209 == v226)
            {
LABEL_196:
              v206 = *(v203 + 4);
              v204 += 2;
              if (v206 != 0x7FFFFFFF || v204 > v205)
              {
                goto LABEL_239;
              }

              continue;
            }

            break;
          }

          if (*(v203 + 48))
          {
            v229 = v209;
            do
            {
              if (*(v203 + 40) != *v227)
              {
                break;
              }

              v227 += 2;
              if (v227 == (*v209 + 8 * *(v209 + 8)))
              {
                v209 += 16;
                v229 = *(v203 + 64);
                if (v209 != v226)
                {
                  do
                  {
                    v230 = v209;
                    if (*(v209 + 8))
                    {
                      v229 = v209;
                      goto LABEL_222;
                    }

                    v209 += 16;
                  }

                  while (v230 + 2 != v226);
                  v229 = *(v203 + 64);
LABEL_222:
                  v227 = *v230;
                }
              }
            }

            while (v209 != v226);
          }

          else
          {
            v229 = v209;
          }

          if (v229 == v226)
          {
            v231 = v203;
          }

          else
          {
            v231 = v227;
          }

          v206 = v231[1];
          v204 += 2;
          if (v206 == 0x7FFFFFFF && v204 <= v205)
          {
            continue;
          }

          break;
        }

LABEL_239:
        v202 = v262;
        v201 = v261;
LABEL_242:
        if ((sub_B5F3E4((a1 + 128), 0, a2 + 2 + v201 * (v110 + 1), v201 * (v110 + 1) + 1, v202, v206) & 1) == 0)
        {
          goto LABEL_246;
        }

        if (*(a1 + 328) <= v110)
        {
          sub_4D9168(a1 + 320, v110 + 1, 0);
        }

        v233 = v110 >> 6;
        if ((*(*(a1 + 320) + 8 * v233) & (1 << v110)) != 0)
        {
LABEL_246:
          v9 = v266;
          v7 = (v265 + 12);
          v265 = v7;
          if (v7 != v266)
          {
            goto LABEL_247;
          }

LABEL_261:
          v7 = v267;
          v265 = v267;
          v10 = 1;
          v269 = 1;
          goto LABEL_262;
        }

        v235 = *(a1 + 352);
        v234 = *(a1 + 360);
        if (v235 >= v234)
        {
          v237 = *(a1 + 344);
          v238 = v235 - v237;
          v239 = (v235 - v237) >> 2;
          v240 = v239 + 1;
          if ((v239 + 1) >> 62)
          {
            sub_1794();
          }

          v241 = v234 - v237;
          if (v241 >> 1 > v240)
          {
            v240 = v241 >> 1;
          }

          if (v241 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v240 = 0x3FFFFFFFFFFFFFFFLL;
          }

          if (!v240)
          {
            v242 = (v235 - v237) >> 2;
            v243 = (4 * v239);
            v244 = (4 * v239 - 4 * v242);
            *v243 = v110;
            v236 = v243 + 1;
            memcpy(v244, v237, v238);
            *(a1 + 344) = v244;
            *(a1 + 352) = v236;
            *(a1 + 360) = 0;
            if (v237)
            {
              operator delete(v237);
            }

            goto LABEL_260;
          }

          if (!(v240 >> 62))
          {
            operator new();
          }

          goto LABEL_311;
        }

        *v235 = v110;
        v236 = v235 + 4;
LABEL_260:
        *(a1 + 352) = v236;
        *(*(a1 + 320) + 8 * v233) |= 1 << v110;
        v9 = v266;
        v7 = (v265 + 12);
        v265 = v7;
        if (v7 == v266)
        {
          goto LABEL_261;
        }

LABEL_247:
        v10 = v269;
LABEL_262:
        v11 = v268;
        if (v10)
        {
          v245 = v268;
        }

        else
        {
          v245 = v9;
        }

        if (*(v264 + 16) == 1 && v7 < v245)
        {
          while (1)
          {
            v247 = __ROR8__(*v7, 32);
            if (HIDWORD(v247) == 1 && (v247 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(**(v264 + 4120)))
            {
              v7 = v265;
              v9 = v266;
              v10 = v269;
              break;
            }

            v9 = v266;
            v7 = (v265 + 12);
            v265 = v7;
            if (v7 == v266)
            {
              v7 = v267;
              v265 = v267;
              v10 = 1;
              v269 = 1;
              if (v267 >= v268)
              {
                break;
              }
            }

            else
            {
              v10 = v269;
              v249 = 16;
              if (v269)
              {
                v249 = 32;
              }

              if (v7 >= *(&v264 + v249))
              {
                break;
              }
            }
          }

          v11 = v268;
        }

        if (v10)
        {
          v9 = v11;
        }

        if (v7 >= v9)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

LABEL_16:
      ++v12;
    }
  }

LABEL_309:
  result = sub_7EA60(v270) + *(a1 + 584);
  *(a1 + 584) = result;
  return result;
}

void sub_B5DA2C(void *a1)
{
  v1 = a1;
  v2 = a1[52];
  v3 = a1[53];
  if (v2 != v3)
  {
    v4 = a1[49];
    v5 = a1[46];
    v6 = a1[52];
    do
    {
      v7 = *v6++;
      *(v4 + ((v7 >> 3) & 0x1FFFFFF8)) &= ~(1 << v7);
      *(v5 + 4 * v7) = -1;
    }

    while (v6 != v3);
  }

  a1[53] = v2;
  v8 = a1[43];
  v230 = a1[44];
  if (v8 == v230)
  {
    return;
  }

  while (2)
  {
    v234 = v8;
    v9 = sub_A9C5E0((v1[4] + 88), *v8);
    sub_A7905C(v235, v1[3], *v9, 0, 0, 0);
    v10 = v238;
    v11 = v239;
LABEL_8:
    if (v10 < v11)
    {
      v12 = 0;
      v13 = __ROR8__(*v10, 32);
      v14 = v1[5];
      v15 = *(v14 + 72) - 1;
      v16 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) >> 33));
      v17 = v16 ^ (v16 >> 33);
      v18 = *(v14 + 48);
      v19 = v18 + 11;
      v20 = -1;
      for (i = v17; ; i = v12 + v22)
      {
        v22 = i & v15;
        v23 = (i & v15) / 0x30;
        v24 = (i & v15) % 0x30;
        v25 = (v18 + 16 * v23);
        if (((*(v25 + (v24 >> 3) + 10) >> (v24 & 7)) & 1) == 0)
        {
          if (v20 == -1)
          {
            v61 = v22;
          }

          else
          {
            v61 = v20;
          }

          if (!sub_B35190(v1[5], 1))
          {
            goto LABEL_96;
          }

          goto LABEL_52;
        }

        v26 = *v25;
        if (!*(v14 + 40))
        {
          goto LABEL_30;
        }

        v27 = v25 + 10;
        if (v24 < 9)
        {
          v29 = 0;
          LOBYTE(v30) = v24;
          goto LABEL_26;
        }

        v28 = (48 * v23 - v22 + 7);
        if (v28 <= 0xFFF7)
        {
          LOWORD(v28) = -9;
        }

        if ((v28 + v22 - 48 * v23) >= 8u)
        {
          v32 = 0;
          v33 = 0;
          v34 = ((v28 + v22 - 48 * v23) >> 3) + 1;
          v30 = v24 - 8 * ((((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
          v31 = &v27[(((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
          v35 = (v19 + 16 * v23);
          v36 = v34 & 0x3FFE;
          do
          {
            v37 = *(v35 - 1);
            v38 = *v35;
            v35 += 2;
            v32 += byte_22A7D46[v37];
            v33 += byte_22A7D46[v38];
            v36 -= 2;
          }

          while (v36);
          v29 = v33 + v32;
          if ((v34 & 0x3FFE) == v34)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v29 = 0;
          v30 = v24;
          v31 = v25 + 10;
        }

        do
        {
          v39 = *v31++;
          v29 += byte_22A7D46[v39];
          v30 -= 8;
        }

        while (v30 > 8u);
LABEL_25:
        v27 += ((v24 - 9) >> 3) + 1;
LABEL_26:
        v40 = (v26 + 12 * (v29 + byte_22A7D46[~(-1 << v30) & *v27]));
        if (*(v14 + 36) == v40[1] && *(v14 + 32) == *v40)
        {
          if (v20 == -1)
          {
            v20 = v22;
          }

          goto LABEL_12;
        }

LABEL_30:
        v42 = v25 + 10;
        if (v24 < 9)
        {
          v44 = 0;
          LOBYTE(v45) = v24;
          goto LABEL_41;
        }

        v43 = (48 * v23 - v22 + 7);
        if (v43 <= 0xFFF7)
        {
          LOWORD(v43) = -9;
        }

        if ((v43 + v22 - 48 * v23) >= 8u)
        {
          v47 = 0;
          v48 = 0;
          v49 = ((v43 + v22 - 48 * v23) >> 3) + 1;
          v45 = v24 - 8 * ((((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
          v46 = &v42[(((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
          v50 = (v19 + 16 * v23);
          v51 = v49 & 0x3FFE;
          do
          {
            v52 = *(v50 - 1);
            v53 = *v50;
            v50 += 2;
            v47 += byte_22A7D46[v52];
            v48 += byte_22A7D46[v53];
            v51 -= 2;
          }

          while (v51);
          v44 = v48 + v47;
          if ((v49 & 0x3FFE) == v49)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v44 = 0;
          v45 = v24;
          v46 = v25 + 10;
        }

        do
        {
          v54 = *v46++;
          v44 += byte_22A7D46[v54];
          v45 -= 8;
        }

        while (v45 > 8u);
LABEL_40:
        v42 += ((v24 - 9) >> 3) + 1;
LABEL_41:
        if (v13 == *(v26 + 12 * (v44 + byte_22A7D46[~(-1 << v45) & *v42])))
        {
          if (v22 != -1)
          {
            v55 = v25 + 10;
            if (v24 < 9)
            {
              v58 = 0;
            }

            else
            {
              v56 = (48 * v23 - v22 + 7);
              if (v56 <= 0xFFF7)
              {
                LOWORD(v56) = -9;
              }

              v57 = v56 + v22 - 48 * v23;
              if (v57 < 8u)
              {
                v58 = 0;
                v59 = v24;
                v60 = v25 + 10;
                goto LABEL_138;
              }

              v140 = 0;
              v141 = 0;
              v142 = (v57 >> 3) + 1;
              v59 = v24 - 8 * (((v57 >> 3) + 1) & 0x3FFE);
              v60 = &v55[v142 & 0x3FFE];
              v143 = v25 + 11;
              v144 = v142 & 0x3FFE;
              do
              {
                v145 = *(v143 - 1);
                v146 = *v143;
                v143 += 2;
                v140 += byte_22A7D46[v145];
                v141 += byte_22A7D46[v146];
                v144 -= 2;
              }

              while (v144);
              v58 = v141 + v140;
              if ((v142 & 0x3FFE) != v142)
              {
                do
                {
LABEL_138:
                  v147 = *v60++;
                  v58 += byte_22A7D46[v147];
                  v59 -= 8;
                }

                while (v59 > 8u);
              }

              v55 += ((v24 - 9) >> 3) + 1;
              LOBYTE(v24) = v59;
            }

            v148 = *(v14 + 56);
            v109 = (v26 + 12 * (v58 + byte_22A7D46[~(-1 << v24) & *v55]));
            if ((*v25 + 12 * *(v25 + 4)) == v109 && v25 + 2 != v148)
            {
              v150 = v25 + 4;
              do
              {
                if (*(v150 - 4))
                {
                  v151 = 1;
                }

                else
                {
                  v151 = v150 == v148;
                }

                v150 += 2;
              }

              while (!v151);
              v109 = *(v150 - 4);
            }

            goto LABEL_98;
          }

          v61 = -1;
          if (!sub_B35190(v1[5], 1))
          {
LABEL_96:
            v242 = v13;
            v243 = -1;
            v108 = v14;
            v107 = v61;
LABEL_97:
            sub_B356C0(v108, &v242, v107, v244);
            v109 = v244[4];
            goto LABEL_98;
          }

LABEL_52:
          v62 = 0;
          v242 = v13;
          v243 = -1;
          v63 = *(v14 + 72) - 1;
          v64 = *(v14 + 48);
          v65 = v64 + 11;
          v66 = -1;
          while (2)
          {
            v67 = v17 & v63;
            v68 = (v17 & v63) / 0x30;
            v69 = (v17 & v63) % 0x30;
            v70 = v64 + 16 * v68;
            if (((*(v70 + (v69 >> 3) + 10) >> (v69 & 7)) & 1) == 0)
            {
              if (v66 == -1)
              {
                v107 = v17 & v63;
              }

              else
              {
                v107 = v66;
              }

              goto LABEL_94;
            }

            v71 = *(v14 + 40);
            v72 = *v70;
            if (v71)
            {
              v73 = (v70 + 10);
              if (v69 < 9)
              {
                v75 = 0;
                LOBYTE(v76) = (v17 & v63) % 0x30;
              }

              else
              {
                v74 = (48 * v68 - v67 + 7);
                if (v74 <= 0xFFF7)
                {
                  LOWORD(v74) = -9;
                }

                if ((v74 + v67 - 48 * v68) < 8u)
                {
                  v75 = 0;
                  v76 = (v17 & v63) % 0x30;
                  v77 = (v70 + 10);
                  goto LABEL_67;
                }

                v78 = 0;
                v79 = 0;
                v80 = ((v74 + v67 - 48 * v68) >> 3) + 1;
                v76 = v69 - 8 * ((((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
                v77 = &v73[(((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
                v81 = (v65 + 16 * v68);
                v82 = v80 & 0x3FFE;
                do
                {
                  v83 = *(v81 - 1);
                  v84 = *v81;
                  v81 += 2;
                  v78 += byte_22A7D46[v83];
                  v79 += byte_22A7D46[v84];
                  v82 -= 2;
                }

                while (v82);
                v75 = v79 + v78;
                if ((v80 & 0x3FFE) != v80)
                {
                  do
                  {
LABEL_67:
                    v85 = *v77++;
                    v75 += byte_22A7D46[v85];
                    v76 -= 8;
                  }

                  while (v76 > 8u);
                }

                v73 += ((v69 - 9) >> 3) + 1;
              }

              v86 = &v72[3 * (v75 + byte_22A7D46[~(-1 << v76) & *v73])];
              if (*(v14 + 36) == v86[1] && *(v14 + 32) == *v86)
              {
                if (v66 == -1)
                {
                  v66 = v67;
                }

LABEL_55:
                v17 = ++v62 + v67;
                continue;
              }
            }

            break;
          }

          v88 = (v70 + 10);
          if (v69 < 9)
          {
            v90 = 0;
            LOBYTE(v91) = v69;
          }

          else
          {
            v89 = (48 * v68 - v67 + 7);
            if (v89 <= 0xFFF7)
            {
              LOWORD(v89) = -9;
            }

            if ((v89 + v67 - 48 * v68) < 8u)
            {
              v90 = 0;
              v91 = v69;
              v92 = (v70 + 10);
              goto LABEL_82;
            }

            v93 = 0;
            v94 = 0;
            v95 = ((v89 + v67 - 48 * v68) >> 3) + 1;
            v91 = v69 - 8 * ((((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
            v92 = &v88[(((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
            v96 = (v65 + 16 * v68);
            v97 = v95 & 0x3FFE;
            do
            {
              v98 = *(v96 - 1);
              v99 = *v96;
              v96 += 2;
              v93 += byte_22A7D46[v98];
              v94 += byte_22A7D46[v99];
              v97 -= 2;
            }

            while (v97);
            v90 = v94 + v93;
            if ((v95 & 0x3FFE) != v95)
            {
              do
              {
LABEL_82:
                v100 = *v92++;
                v90 += byte_22A7D46[v100];
                v91 -= 8;
              }

              while (v91 > 8u);
            }

            v88 += ((v69 - 9) >> 3) + 1;
          }

          if (v13 != *&v72[3 * (v90 + byte_22A7D46[~(-1 << v91) & *v88])])
          {
            goto LABEL_55;
          }

          if (v67 == -1)
          {
            v107 = -1;
LABEL_94:
            v108 = v14;
            goto LABEL_97;
          }

          v101 = (v70 + 10);
          if (v69 < 9)
          {
            v104 = 0;
          }

          else
          {
            v102 = (48 * v68 - v67 + 7);
            if (v102 <= 0xFFF7)
            {
              LOWORD(v102) = -9;
            }

            v103 = v102 + v67 - 48 * v68;
            if (v103 < 8u)
            {
              v104 = 0;
              v105 = v69;
              v106 = (v70 + 10);
              goto LABEL_169;
            }

            v162 = 0;
            v163 = 0;
            v164 = (v103 >> 3) + 1;
            v105 = v69 - 8 * (((v103 >> 3) + 1) & 0x3FFE);
            v106 = &v101[v164 & 0x3FFE];
            v165 = (v70 + 11);
            v166 = v164 & 0x3FFE;
            do
            {
              v167 = *(v165 - 1);
              v168 = *v165;
              v165 += 2;
              v162 += byte_22A7D46[v167];
              v163 += byte_22A7D46[v168];
              v166 -= 2;
            }

            while (v166);
            v104 = v163 + v162;
            if ((v164 & 0x3FFE) != v164)
            {
              do
              {
LABEL_169:
                v169 = *v106++;
                v104 += byte_22A7D46[v169];
                v105 -= 8;
              }

              while (v105 > 8u);
            }

            v101 += ((v69 - 9) >> 3) + 1;
            LOBYTE(v69) = v105;
          }

          v170 = *(v14 + 56);
          v109 = &v72[3 * (v104 + byte_22A7D46[~(-1 << v69) & *v101])];
          if ((*v70 + 12 * *(v70 + 8)) == v109)
          {
            v70 += 16;
            if (v70 != v170)
            {
              do
              {
                v171 = v70;
                if (*(v70 + 8))
                {
                  break;
                }

                v70 += 16;
              }

              while (v171 + 2 != v170);
              v109 = *v171;
            }
          }

          if (v70 != v170 && v71)
          {
            do
            {
              if (*(v14 + 36) != v109[1] || *(v14 + 32) != *v109)
              {
                break;
              }

              v109 += 3;
              if (v109 == (*v70 + 12 * *(v70 + 8)))
              {
                v70 += 16;
                if (v70 != v170)
                {
                  do
                  {
                    v226 = v70;
                    if (*(v70 + 8))
                    {
                      break;
                    }

                    v70 += 16;
                  }

                  while (v226 + 2 != v170);
                  v109 = *v226;
                }
              }
            }

            while (v70 != v170);
          }

LABEL_98:
          v110 = v109[2];
          if (v110 == -1)
          {
            v111 = *(v14 + 112);
            *(v14 + 112) = v111 + 1;
            v109[2] = v111;
            v113 = *(v14 + 96);
            v112 = *(v14 + 104);
            if (v113 < v112)
            {
              *v113 = v13;
              v114 = v113 + 1;
              goto LABEL_114;
            }

            v115 = *(v14 + 88);
            v116 = v113 - v115;
            v117 = (v113 - v115) >> 3;
            v118 = v117 + 1;
            if ((v117 + 1) >> 61)
            {
              sub_1794();
            }

            v119 = v112 - v115;
            if (v119 >> 2 > v118)
            {
              v118 = v119 >> 2;
            }

            if (v119 >= 0x7FFFFFFFFFFFFFF8)
            {
              v120 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v120 = v118;
            }

            if (v120)
            {
              if (!(v120 >> 61))
              {
                operator new();
              }

LABEL_285:
              sub_1808();
            }

            v121 = v117;
            v122 = (8 * v117);
            v123 = &v122[-v121];
            *v122 = v13;
            v114 = v122 + 1;
            memcpy(v123, v115, v116);
            *(v14 + 88) = v123;
            *(v14 + 96) = v114;
            *(v14 + 104) = 0;
            if (v115)
            {
              operator delete(v115);
            }

            v1 = a1;
LABEL_114:
            *(v14 + 96) = v114;
            v110 = v109[2];
          }

          v124 = *(v238 + 4);
          v125 = v110;
          v126 = v110 >> 6;
          if (v1[50] <= v110)
          {
            v130 = v1[46];
            goto LABEL_180;
          }

          v233 = *(v238 + 4);
          v127 = v1[49];
          v128 = *(v127 + 8 * v126);
          v129 = 1 << v110;
          v130 = v1[46];
          if ((v128 & (1 << v110)) == 0)
          {
            v124 = *(v238 + 4);
            goto LABEL_180;
          }

          v131 = v1[47];
          v132 = &v131[-v130] >> 2;
          if (v132 <= v110)
          {
            v133 = v110 + 1;
            v134 = v133 - v132;
            if (v133 <= v132)
            {
              v1 = a1;
              if (v133 < v132)
              {
                a1[47] = v130 + 4 * v133;
              }
            }

            else
            {
              v135 = a1[48];
              if (v134 > (v135 - v131) >> 2)
              {
                v136 = v135 - v130;
                v137 = v136 >> 1;
                if (v136 >> 1 <= v133)
                {
                  v137 = v110 + 1;
                }

                v138 = v136 >= 0x7FFFFFFFFFFFFFFCLL;
                v139 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v138)
                {
                  v139 = v137;
                }

                if (!(v139 >> 62))
                {
                  operator new();
                }

                goto LABEL_285;
              }

              v152 = 4 * v134;
              memset(v131, 255, v152);
              a1[47] = &v131[v152];
              v1 = a1;
            }

            sub_4D9168((v1 + 49), v110 + 1, 0);
            v127 = v1[49];
            v126 = v110 >> 6;
            v128 = *(v127 + 8 * v126);
            if ((v128 & v129) == 0)
            {
              goto LABEL_155;
            }

LABEL_119:
            v130 = v1[46];
            v124 = v233;
            if (*(v130 + 4 * v110) > v233)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if ((v128 & v129) != 0)
            {
              goto LABEL_119;
            }

LABEL_155:
            *(v127 + 8 * v126) = v128 | v129;
            v154 = v1[53];
            v153 = v1[54];
            if (v154 < v153)
            {
              *v154 = v110;
              v155 = v154 + 4;
              goto LABEL_179;
            }

            v156 = v1[52];
            v157 = v154 - v156;
            v158 = (v154 - v156) >> 2;
            v159 = v158 + 1;
            if ((v158 + 1) >> 62)
            {
              goto LABEL_287;
            }

            v231 = v110;
            v160 = v153 - v156;
            if (v160 >> 1 > v159)
            {
              v159 = v160 >> 1;
            }

            if (v160 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v161 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v161 = v159;
            }

            if (v161)
            {
              if (!(v161 >> 62))
              {
                operator new();
              }

              goto LABEL_285;
            }

            v172 = v126;
            v173 = (v154 - v156) >> 2;
            v174 = (4 * v158);
            v175 = (4 * v158 - 4 * v173);
            *v174 = v231;
            v155 = v174 + 1;
            memcpy(v175, v156, v157);
            a1[52] = v175;
            a1[53] = v155;
            a1[54] = 0;
            v1 = a1;
            if (v156)
            {
              operator delete(v156);
            }

            v126 = v172;
            v110 = v231;
LABEL_179:
            v1[53] = v155;
            v130 = v1[46];
            v124 = v233;
            if (*(v130 + 4 * v125) > v233)
            {
LABEL_180:
              v176 = v1[47];
              v177 = &v176[-v130] >> 2;
              if (v177 <= v125)
              {
                v178 = v110 + 1;
                v179 = v178 - v177;
                v232 = v110;
                if (v178 <= v177)
                {
                  v184 = v126;
                  if (v178 < v177)
                  {
                    v185 = (v130 + 4 * v178);
                    goto LABEL_192;
                  }
                }

                else
                {
                  v180 = v1[48];
                  if (v179 > (v180 - v176) >> 2)
                  {
                    v181 = v180 - v130;
                    v182 = v181 >> 1;
                    if (v181 >> 1 <= v178)
                    {
                      v182 = v110 + 1;
                    }

                    v138 = v181 >= 0x7FFFFFFFFFFFFFFCLL;
                    v183 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v138)
                    {
                      v183 = v182;
                    }

                    if (!(v183 >> 62))
                    {
                      operator new();
                    }

                    goto LABEL_285;
                  }

                  v184 = v126;
                  memset(v176, 255, 4 * v179);
                  v185 = &v176[4 * v179];
                  v1 = a1;
LABEL_192:
                  v1[47] = v185;
                }

                sub_4D9168((v1 + 49), v178, 0);
                v126 = v184;
                v110 = v232;
              }

              v186 = v1[49];
              v187 = *(v186 + 8 * v126);
              if ((v187 & (1 << v125)) != 0)
              {
                goto LABEL_209;
              }

              *(v186 + 8 * v126) = v187 | (1 << v125);
              v189 = v1[53];
              v188 = v1[54];
              if (v189 < v188)
              {
                *v189 = v110;
                v190 = v189 + 4;
                goto LABEL_208;
              }

              v191 = v1[52];
              v192 = v189 - v191;
              v193 = (v189 - v191) >> 2;
              v194 = v193 + 1;
              if ((v193 + 1) >> 62)
              {
LABEL_287:
                sub_1794();
              }

              v195 = v188 - v191;
              if (v195 >> 1 > v194)
              {
                v194 = v195 >> 1;
              }

              if (v195 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v196 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v196 = v194;
              }

              if (v196)
              {
                if (!(v196 >> 62))
                {
                  operator new();
                }

                goto LABEL_285;
              }

              v197 = v193;
              v198 = (4 * v193);
              v199 = &v198[-v197];
              *v198 = v110;
              v190 = v198 + 1;
              memcpy(v199, v191, v192);
              v1[52] = v199;
              v1[53] = v190;
              v1[54] = 0;
              if (v191)
              {
                operator delete(v191);
              }

LABEL_208:
              v1[53] = v190;
LABEL_209:
              *(v1[46] + 4 * v125) = v124;
              v11 = v239;
              v10 = v238 + 2;
              v238 = v10;
              if (v10 == v239)
              {
LABEL_210:
                v200 = v236 + 2;
                v236 = v200;
                if (v200 >= v237)
                {
                  break;
                }

                while (1)
                {
                  v10 = *v200;
                  v11 = v200[1];
                  if (*v200 != v11)
                  {
                    break;
                  }

                  v200 += 2;
                  v236 = v200;
                  if (v200 >= v237)
                  {
                    goto LABEL_6;
                  }
                }

                v238 = *v200;
                v239 = v11;
                if (v10 < v11)
                {
                  goto LABEL_218;
                }

                goto LABEL_8;
              }

LABEL_121:
              if (v10 < v11)
              {
                while (1)
                {
LABEL_218:
                  if ((v241 & 1) == 0)
                  {
                    v201 = v235[0];
                    v202 = *v10;
                    v203 = *(v235[0] + 4136);
                    if (sub_68312C(v203 + 3896))
                    {
                      if (*(v203 + 3944))
                      {
                        if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                        {
                          v223 = sub_A57824(-85.0, 0.0);
                          sub_58168(v223 >> 17, v223 >> 49);
                          dword_27339C0 = v224 | 0x40000000;
                          __cxa_guard_release(&qword_27339C8);
                          v1 = a1;
                        }

                        v204 = __ROR8__(v202, 32);
                        v205 = *(v201 + 4136);
                        if (dword_27339C0 == HIDWORD(v204))
                        {
                          if (!sub_68312C(v205 + 3896) || !*(v205 + 3944))
                          {
                            exception = __cxa_allocate_exception(0x40uLL);
                            v228 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                          }
                        }

                        else
                        {
                          v208 = *(v205 + 3944);
                          v209 = v208[1];
                          if (v209)
                          {
                            v210 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v204 ^ (v204 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v204 ^ (v204 >> 33))) >> 33));
                            v211 = v210 ^ (v210 >> 33);
                            v212 = vcnt_s8(v209);
                            v212.i16[0] = vaddlv_u8(v212);
                            if (v212.u32[0] > 1uLL)
                            {
                              v213 = v211;
                              if (v211 >= *&v209)
                              {
                                v213 = v211 % *&v209;
                              }
                            }

                            else
                            {
                              v213 = (*&v209 - 1) & v211;
                            }

                            v214 = *(*v208 + 8 * v213);
                            if (v214)
                            {
                              v215 = *v214;
                              if (v215)
                              {
                                if (v212.u32[0] < 2uLL)
                                {
                                  v216 = *&v209 - 1;
                                  while (1)
                                  {
                                    v220 = v215[1];
                                    if (v211 == v220)
                                    {
                                      if (*(v215 + 5) == HIDWORD(v204) && *(v215 + 4) == v204)
                                      {
                                        goto LABEL_216;
                                      }
                                    }

                                    else if ((v220 & v216) != v213)
                                    {
                                      goto LABEL_258;
                                    }

                                    v215 = *v215;
                                    if (!v215)
                                    {
                                      goto LABEL_258;
                                    }
                                  }
                                }

                                do
                                {
                                  v218 = v215[1];
                                  if (v211 == v218)
                                  {
                                    if (*(v215 + 5) == HIDWORD(v204) && *(v215 + 4) == v204)
                                    {
                                      goto LABEL_216;
                                    }
                                  }

                                  else
                                  {
                                    if (v218 >= *&v209)
                                    {
                                      v218 %= *&v209;
                                    }

                                    if (v218 != v213)
                                    {
                                      break;
                                    }
                                  }

                                  v215 = *v215;
                                }

                                while (v215);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_258:
                  if (v240 == 1)
                  {
                    break;
                  }

                  v221 = sub_C9E544(v235[0] + 3896);
                  v10 = v238;
                  if (v221 >= *(v238 + 14))
                  {
                    if (v240)
                    {
                      goto LABEL_267;
                    }

                    v222 = sub_585D8((v235[0] + 3896));
                    v10 = v238;
                    if ((v222 & 1) != 0 || (*(v238 + 15) & 1) == 0)
                    {
                      goto LABEL_267;
                    }
                  }

LABEL_216:
                  v10 = v238 + 2;
                  v238 = v10;
                  if (v10 == v239)
                  {
                    v206 = v236 + 2;
                    v236 = v206;
                    if (v206 >= v237)
                    {
                      goto LABEL_267;
                    }

                    while (1)
                    {
                      v10 = *v206;
                      v207 = v206[1];
                      if (*v206 != v207)
                      {
                        break;
                      }

                      v206 += 2;
                      v236 = v206;
                      if (v206 >= v237)
                      {
                        goto LABEL_6;
                      }
                    }

                    v238 = *v206;
                    v239 = v207;
                    if (v10 >= v207)
                    {
                      goto LABEL_267;
                    }
                  }

                  else if (v10 >= v239)
                  {
                    goto LABEL_267;
                  }
                }

                v10 = v238;
LABEL_267:
                v11 = v239;
              }

              goto LABEL_8;
            }
          }

          v11 = v239;
          v10 = v238 + 2;
          v238 = v10;
          if (v10 == v239)
          {
            goto LABEL_210;
          }

          goto LABEL_121;
        }

LABEL_12:
        ++v12;
      }
    }

LABEL_6:
    v8 = v234 + 1;
    if (v234 + 1 != v230)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_B5ED84(uint64_t a1)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v2 = 3 * *(a1 + 200);
  v35 = *(a1 + 216);
  v36 = *(a1 + 232);
  v3 = *(a1 + 256);
  v4 = *(a1 + 288);
  v32 = *(a1 + 312);
  v33 = *(a1 + 296);
  v5 = *(a1 + 336);
  v34 = *(a1 + 344);
  v6 = *(a1 + 360);
  v30 = *(a1 + 368);
  v31 = *(a1 + 384);
  v7 = *(a1 + 408);
  v28 = *(a1 + 416);
  v29 = *(a1 + 432);
  v8 = sub_C439D4((a1 + 448));
  v9 = *(*(a1 + 32) + 104) - *(*(a1 + 32) + 88) + *(*(a1 + 40) + 104) + 12 * (*(*(a1 + 40) + 72) + *(*(a1 + 32) + 72)) - *(*(a1 + 40) + 88);
  v10 = *(a1 + 48);
  if (v10)
  {
    v9 += 8 * *(v10 + 80);
  }

  v11 = 8 * (v5 & 0x3FFFFFFFFFFFFFFLL);
  sub_2D577C(**(a1 + 24));
  if (v50 != 1)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v12 = sub_32AD80(&v39) * 1048576.0;
  if (v12 >= 0.0)
  {
    v13 = v12;
    if (v12 >= 4.50359963e15)
    {
      goto LABEL_12;
    }

    v14 = (v12 + v12) + 1;
  }

  else
  {
    v13 = v12;
    if (v12 <= -4.50359963e15)
    {
      goto LABEL_12;
    }

    v14 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
  }

  v13 = (v14 >> 1);
LABEL_12:
  if (v13 >= 1.84467441e19)
  {
    v15 = -2;
    goto LABEL_21;
  }

  if (v12 >= 0.0)
  {
    if (v12 < 4.50359963e15)
    {
      v16 = (v12 + v12) + 1;
      goto LABEL_19;
    }
  }

  else if (v12 > -4.50359963e15)
  {
    v16 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
LABEL_19:
    v12 = (v16 >> 1);
  }

  v15 = v12;
LABEL_21:
  v17 = 4 * v2 + v36 - v35 + 8 * (v3 & 0x3FFFFFFFFFFFFFFLL) + v32 + 8 * (v4 & 0x3FFFFFFFFFFFFFFLL) - v33 + v6 + v11 + v31 - (v34 + v30) + 8 * (v7 & 0x3FFFFFFFFFFFFFFLL) + v29 - v28 + v8 + v9 + v15;
  if (v17 <= *a1)
  {
    return 0;
  }

  v18 = sub_7E7E4(1u);
  result = 1;
  if (!v18)
  {
    return result;
  }

  sub_19594F8(&v39);
  v20 = sub_4A5C(&v39, "Exceeded memory limit of ", 25);
  v21 = sub_71478(v20, *a1);
  v22 = sub_4A5C(v21, " in directional McSPA (", 23);
  v23 = sub_71478(v22, v17);
  v24 = sub_4A5C(v23, ") in round ", 11);
  std::ostream::operator<<();
  sub_4A5C(v24, "; terminating algorithm.", 24);
  if ((v49 & 0x10) != 0)
  {
    v26 = v48;
    if (v48 < v45)
    {
      v48 = v45;
      v26 = v45;
    }

    v27 = v44;
    v25 = v26 - v44;
    if (v26 - v44 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_42:
      sub_3244();
    }

LABEL_31:
    if (v25 >= 0x17)
    {
      operator new();
    }

    v38 = v25;
    if (v25)
    {
      memmove(&__dst, v27, v25);
    }

    goto LABEL_36;
  }

  if ((v49 & 8) != 0)
  {
    v27 = v42;
    v25 = v43 - v42;
    if ((v43 - v42) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  v25 = 0;
  v38 = 0;
LABEL_36:
  *(&__dst + v25) = 0;
  sub_7E854(&__dst, 1u);
  if (v38 < 0)
  {
    operator delete(__dst);
  }

  if (v47 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v41);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_B5F264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1959728(&a25);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_B5F2B0(uint64_t result)
{
  v1 = *(result + 124);
  if (v1)
  {
    v2 = result;
    for (i = 0; i != v1; ++i)
    {
      v14 = 0;
      v4 = *(v2 + 216);
      v5 = (v4 + (*(sub_B5FB1C(v2 + 128, &v14) + 4) << 6));
      v14 = 0;
      v6 = *(v2 + 216);
      v7 = sub_B5FB1C(v2 + 128, &v14);
      sub_B5F764(v2 + 128, 0, v5, (v6 + (*(v7 + 8) << 6)));
      sub_B619E0((v2 + 128), i + *(v2 + 120) + *(v2 + 120) * *(v2 + 440) + 2, 0);
      v14 = 0;
      v8 = *(v2 + 216);
      v9 = v8 + (*(sub_B5FB1C(v2 + 128, &v14) + 4) << 6);
      v14 = 0;
      v10 = *(v2 + 216);
      result = sub_B5FB1C(v2 + 128, &v14);
      v11 = v10 + (*(result + 8) << 6);
      if (v9 != v11)
      {
        v12 = *(v2 + 608);
        v13 = *(v2 + 600);
        do
        {
          v12 = v12 + 1.0;
          v13 += *(v9 + 28);
          v9 += 64;
        }

        while (v9 != v11);
        *(v2 + 608) = v12;
        *(v2 + 600) = v13;
      }
    }
  }

  return result;
}

uint64_t sub_B5F3E4(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v55[0] = a2;
  sub_B61684(a1, v55, v52);
  v12 = a1[6];
  v13 = a1[7];
  v44 = a1;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  v46 = v13;
  v47 = 0;
  v48 = v12;
  v49 = v13;
  v50 = v13;
  v51 = 0;
  sub_B47094(&v44);
  if (*&v52[8] == v45 && *&v52[24] == v46 && (*&v52[24] == *&v52[16] || v53 == v47))
  {
    goto LABEL_7;
  }

  v14 = *(v53 + 4);
  v15 = *(v53 + 8);
  v16 = v15 - v14;
  if (v15 == v14)
  {
    goto LABEL_7;
  }

  if (a6 == 0x7FFFFFFF)
  {
    v17 = 0;
    do
    {
      sub_B61880(a1, a2, v17++);
    }

    while (v16 != v17);
LABEL_7:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

  v43 = a4;
  if (a5 == -1)
  {
    v18 = 0;
    v20 = 0;
    do
    {
      v21 = sub_B61880(a1, a2, v20);
      v22 = v21[2];
      v23 = v21[3];
      v24 = v21[1];
      *v52 = *v21;
      *&v52[16] = v24;
      v53 = v22;
      v54 = v23;
      if (SHIDWORD(v24) <= a6)
      {
        v25 = sub_B612F4(a1, v52, a4, 0, 1);
        if (v25)
        {
          sub_B612F4(a1, v52, a3, 1, 1);
          *(v26 + 52) = -1;
          *(v26 + 60) = 0x7FFFFFFF;
        }

        v18 = v25 | v18 | (v25 | v18) & 0xFF00;
      }

      ++v20;
    }

    while (v16 != v20);
  }

  else
  {
    v18 = 0;
    v27 = 0;
    do
    {
      v30 = sub_B61880(a1, a2, v27);
      v31 = v30[2];
      v32 = v30[3];
      v33 = v30[1];
      *v52 = *v30;
      *&v52[16] = v33;
      v53 = v31;
      v54 = v32;
      if (SHIDWORD(v33) <= a6)
      {
        LODWORD(v44) = a5;
        v34 = a1[11];
        v35 = v34 + (*(sub_B5FB1C(a1, &v44) + 4) << 6);
        LODWORD(v44) = a5;
        v36 = a1[11];
        v37 = v36 + (*(sub_B5FB1C(a1, &v44) + 8) << 6);
        if (v35 == v37)
        {
LABEL_22:
          v38 = sub_B612F4(a1, v52, v43, 0, 1);
          v28 = v38;
          v29 = v38 >> 8;
          if (v38)
          {
            sub_B612F4(a1, v52, a3, 1, 1);
            *(v39 + 52) = -1;
            *(v39 + 60) = 0x7FFFFFFF;
          }
        }

        else
        {
          while (1)
          {
            v40 = *(v35 + 28);
            if (v40 != 0x7FFFFFFF && v40 <= *&v52[28] && *(v35 + 32) <= v53)
            {
              v42 = *(v35 + 36);
              if (v42 <= DWORD1(v53) && (v42 != DWORD1(v53) || v40 != *&v52[28] || 10 * v40 - *(v35 + 44) <= 10 * *&v52[28] - HIDWORD(v53)) && (*(v35 + 48) & ~v54) == 0)
              {
                break;
              }
            }

            v35 += 64;
            if (v35 == v37)
            {
              goto LABEL_22;
            }
          }

          v28 = 0;
          LOWORD(v29) = 0;
        }

        v18 = v28 | v18 | v18 & 0xFF00 | (v29 << 8);
      }

      ++v27;
    }

    while (v27 != v16);
  }

  if ((v18 & 0x100) != 0)
  {
    sub_B61574(a1, a3);
    sub_B61574(a1, v43);
  }

  return v18 & 1;
}

char *sub_B5F764(uint64_t a1, unsigned int a2, char *a3, _BYTE *a4)
{
  v49 = a2;
  v7 = sub_B5FB1C(a1, &v49);
  v50 = v49;
  v8 = *(a1 + 88);
  if ((v8 + (*(sub_B5FB1C(a1, &v50) + 8) << 6)) == a4)
  {
    v9 = *(a1 + 88);
    v10 = &a3[-v9] >> 6;
    if (v10 < 0)
    {
      v11 = -((63 - v10) >> 6);
    }

    else
    {
      v11 = v10 >> 6;
    }

    v12 = &a4[-v9] >> 6;
    if (v12 < 0)
    {
      v13 = -((63 - v12) >> 6);
    }

    else
    {
      v13 = v12 >> 6;
    }

    v14 = (v12 & 0x3F) - (v10 & 0x3F) + ((v13 - v11) << 6);
    if (v14 >= 1)
    {
      v15 = (*(a1 + 112) + 8 * v11);
      if ((v10 & 0x3F) != 0)
      {
        if (64 - (v10 & 0x3F) >= v14)
        {
          v16 = (v12 & 0x3F) - (v10 & 0x3F) + ((v13 - v11) << 6);
        }

        else
        {
          v16 = 64 - (v10 & 0x3F);
        }

        *v15++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v10 & 0x3Fu) - v16)) & (-1 << (v10 & 0x3F)));
        v14 -= v16;
      }

      v17 = v14 >> 6;
      if (v14 >= 0x40)
      {
        bzero(v15, 8 * v17);
      }

      if ((v14 & 0x3F) != 0)
      {
        v15[v17] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F));
      }
    }

    *(v7 + 8) = v10;
  }

  else
  {
    v50 = v49;
    v18 = *(a1 + 88);
    if ((v18 + (*(sub_B5FB1C(a1, &v50) + 4) << 6)) == a3)
    {
      v19 = *(a1 + 88);
      v20 = &a3[-v19] >> 6;
      if (v20 < 0)
      {
        v21 = -((63 - v20) >> 6);
      }

      else
      {
        v21 = v20 >> 6;
      }

      v22 = &a4[-v19] >> 6;
      if (v22 < 0)
      {
        v23 = -((63 - v22) >> 6);
      }

      else
      {
        v23 = v22 >> 6;
      }

      v24 = v23 - v21;
      v25 = v20 & 0x3F;
      v26 = (v22 & 0x3F) - (v20 & 0x3F) + (v24 << 6);
      if (v26 >= 1)
      {
        v27 = (*(a1 + 112) + 8 * v21);
        v28 = v20 & 0x3F;
        if (v28)
        {
          v29 = (64 - v28);
          if (v29 >= v26)
          {
            v30 = v26;
          }

          else
          {
            v30 = v29;
          }

          *v27++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (v29 - v30)) & (-1 << v25));
          v26 -= v30;
        }

        v31 = v26 >> 6;
        if (v26 >= 0x40)
        {
          bzero(v27, 8 * v31);
        }

        if ((v26 & 0x3F) != 0)
        {
          v27[v31] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v26 & 0x3F));
        }
      }

      *(v7 + 4) = v22;
      return a4;
    }

    else
    {
      v50 = v49;
      v32 = *(a1 + 88);
      v33 = (v32 + (*(sub_B5FB1C(a1, &v50) + 8) << 6));
      v34 = v33 - a4;
      if (v33 != a4)
      {
        memmove(a3, a4, v33 - a4);
      }

      v35 = &a3[v34];
      v36 = *(a1 + 112);
      v37 = *(a1 + 88);
      v38 = &v35[-v37] >> 6;
      if (v38 < 0)
      {
        v39 = -((63 - v38) >> 6);
      }

      else
      {
        v39 = v38 >> 6;
      }

      v50 = v49;
      v40 = sub_B5FB1C(a1, &v50);
      v41 = *(a1 + 88);
      v42 = (v37 + (*(v40 + 8) << 6) - v41) >> 6;
      if (v42 < 0)
      {
        v43 = -((63 - v42) >> 6);
      }

      else
      {
        v43 = v42 >> 6;
      }

      v44 = (((v37 + (*(v40 + 8) << 6) - v41) >> 6) & 0x3F) - ((&v35[-v37] >> 6) & 0x3F) + ((v43 - v39) << 6);
      if (v44 >= 1)
      {
        v45 = (v36 + 8 * v39);
        if ((v38 & 0x3F) != 0)
        {
          if (64 - (v38 & 0x3F) >= v44)
          {
            v46 = (v42 & 0x3F) - (v38 & 0x3F) + ((v43 - v39) << 6);
          }

          else
          {
            v46 = 64 - (v38 & 0x3F);
          }

          *v45++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v38 & 0x3Fu) - v46)) & (-1 << (v38 & 0x3F)));
          v44 -= v46;
        }

        v47 = v44 >> 6;
        if (v44 >= 0x40)
        {
          bzero(v45, 8 * v47);
        }

        if ((v44 & 0x3F) != 0)
        {
          v45[v47] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v44 & 0x3F));
        }
      }

      *(v7 + 8) = &v35[-v41] >> 6;
    }
  }

  return a3;
}

uint64_t sub_B5FB1C(uint64_t a1, unsigned int *a2)
{
  v4 = sub_B5FD88(a1, a2);
  if (v4 == -1)
  {
    v19 = v5;
    if (sub_B601D8(a1, 1))
    {
      *v32 = *a2;
      *&v32[4] = 0;
      v34 = *v32;
      v35 = 0;
      sub_B604E8(a1, &v34, v32);
    }

    else
    {
      *v32 = *a2;
      *&v32[4] = 0;
      v34 = *v32;
      v35 = 0;
      sub_B60718(a1, &v34, v19, v32);
    }

    return v33;
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = 16 * (v4 / 0x30);
  v9 = v8 + v7;
  v11 = (v8 + v7 + 10);
  v10 = *(v8 + v7);
  v12 = v4 % 0x30;
  if (v4 % 0x30 < 9)
  {
    v16 = 0;
    goto LABEL_18;
  }

  v13 = 48 * (v4 / 0x30);
  v14 = (v13 - v4 + 7);
  if (v14 <= 0xFFF7)
  {
    LOWORD(v14) = -9;
  }

  v15 = v14 + v4 - v13;
  if (v15 >= 8u)
  {
    v21 = 0;
    v22 = 0;
    v23 = (v15 >> 3) + 1;
    LOWORD(v17) = v12 - 8 * (((v15 >> 3) + 1) & 0x3FFE);
    v18 = &v11[v23 & 0x3FFE];
    v24 = (v8 + v7 + 11);
    v25 = v23 & 0x3FFE;
    do
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v24 += 2;
      v21 += byte_22A7E46[v26];
      v22 += byte_22A7E46[v27];
      v25 -= 2;
    }

    while (v25);
    v16 = v22 + v21;
    if ((v23 & 0x3FFE) == v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v17 = v4 % 0x30;
    v18 = v11;
  }

  do
  {
    v28 = *v18++;
    v16 += byte_22A7E46[v28];
    LOWORD(v17) = v17 - 8;
  }

  while (v17 > 8u);
LABEL_17:
  v11 += ((v12 - 9) >> 3) + 1;
  LOBYTE(v12) = v17;
LABEL_18:
  result = v10 + 12 * (v16 + byte_22A7E46[~(-1 << v12) & *v11]);
  if (*v9 + 12 * *(v9 + 8) == result && v9 + 16 != v6)
  {
    v30 = v9 + 32;
    do
    {
      if (*(v30 - 8))
      {
        v31 = 1;
      }

      else
      {
        v31 = v30 == v6;
      }

      v30 += 16;
    }

    while (!v31);
    return *(v30 - 32);
  }

  return result;
}

unint64_t sub_B5FD88(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 72) - 1;
  v4 = *a2;
  result = v3 & v4;
  v6 = *(a1 + 48);
  v7 = (v3 & v4) / 0x30uLL;
  v8 = (v3 & v4) % 0x30;
  if ((*(v6 + 16 * v7 + (v8 >> 3) + 10) >> (v8 & 7)))
  {
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = v6 + 11;
      v11 = *(a1 + 32);
      v12 = -1;
      LODWORD(v13) = (v3 & v4) % 0x30;
      while (1)
      {
        v14 = (v6 + 16 * v7);
        v17 = *v14;
        v16 = v14 + 10;
        v15 = v17;
        if (v8 < 9)
        {
          v20 = 0;
          v23 = v16;
          LOBYTE(v21) = v13;
          goto LABEL_18;
        }

        v18 = (7 - v13);
        if (v18 <= 0xFFF7)
        {
          LOWORD(v18) = -9;
        }

        v19 = v18 + v13;
        if (v19 >= 8u)
        {
          v24 = 0;
          v25 = 0;
          v26 = (v19 >> 3) + 1;
          v21 = v13 - 8 * (((v19 >> 3) + 1) & 0x3FFE);
          v22 = &v16[v26 & 0x3FFE];
          v27 = (v10 + 16 * v7);
          v28 = v26 & 0x3FFE;
          do
          {
            v29 = *(v27 - 1);
            v30 = *v27;
            v27 += 2;
            v24 += byte_22A7E46[v29];
            v25 += byte_22A7E46[v30];
            v28 -= 2;
          }

          while (v28);
          v20 = v25 + v24;
          if ((v26 & 0x3FFE) == v26)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v20 = 0;
          v21 = v13;
          v22 = v16;
        }

        do
        {
          v31 = *v22++;
          v20 += byte_22A7E46[v31];
          v21 -= 8;
        }

        while (v21 > 8u);
LABEL_17:
        v23 = &v16[((v8 - 9) >> 3) + 1];
LABEL_18:
        if (v11 == *(v15 + 12 * (v20 + byte_22A7E46[~(-1 << v21) & *v23])))
        {
          if (v12 == -1)
          {
            v12 = result;
          }

          goto LABEL_6;
        }

        if (v8 < 9)
        {
          v33 = 0;
          goto LABEL_30;
        }

        v32 = (7 - v13);
        if (v32 <= 0xFFF7)
        {
          LOWORD(v32) = -9;
        }

        if ((v32 + v13) >= 8u)
        {
          v35 = 0;
          v36 = 0;
          v37 = ((v32 + v13) >> 3) + 1;
          LOWORD(v13) = v13 - 8 * ((((v32 + v13) >> 3) + 1) & 0x3FFE);
          v34 = &v16[v37 & 0x3FFE];
          v38 = (v10 + 16 * v7);
          v39 = v37 & 0x3FFE;
          do
          {
            v40 = *(v38 - 1);
            v41 = *v38;
            v38 += 2;
            v35 += byte_22A7E46[v40];
            v36 += byte_22A7E46[v41];
            v39 -= 2;
          }

          while (v39);
          v33 = v36 + v35;
          if ((v37 & 0x3FFE) == v37)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v33 = 0;
          v34 = v16;
        }

        do
        {
          v42 = *v34++;
          v33 += byte_22A7E46[v42];
          LOWORD(v13) = v13 - 8;
        }

        while (v13 > 8u);
LABEL_29:
        v16 += ((v8 - 9) >> 3) + 1;
LABEL_30:
        if (v4 == *(v15 + 12 * (v33 + byte_22A7E46[~(-1 << v13) & *v16])))
        {
          return result;
        }

LABEL_6:
        result = (++v9 + result) & v3;
        v7 = result / 0x30;
        v8 = result % 0x30;
        v13 = result % 0x30;
        if (((*(v6 + 16 * (result / 0x30) + (v8 >> 3) + 10) >> (v8 & 7)) & 1) == 0)
        {
          return -1;
        }
      }
    }

    v43 = 0;
    LODWORD(v44) = (v3 & v4) % 0x30;
    while (1)
    {
      v45 = (v6 + 16 * v7);
      v48 = *v45;
      v47 = v45 + 10;
      v46 = v48;
      if (v8 >= 9)
      {
        break;
      }

      v51 = 0;
LABEL_45:
      if (v4 == *(v46 + 12 * (v51 + byte_22A7E46[~(-1 << v44) & *v47])))
      {
        return result;
      }

      result = (++v43 + result) & v3;
      v7 = result / 0x30;
      v8 = result % 0x30;
      v44 = result % 0x30;
      if (((*(v6 + 16 * (result / 0x30) + (v8 >> 3) + 10) >> (v8 & 7)) & 1) == 0)
      {
        return -1;
      }
    }

    v49 = (7 - v44);
    if (v49 <= 0xFFF7)
    {
      LOWORD(v49) = -9;
    }

    v50 = v49 + v44;
    if (v50 >= 8u)
    {
      v53 = 0;
      v54 = 0;
      v55 = (v50 >> 3) + 1;
      LOWORD(v44) = v44 - 8 * (((v50 >> 3) + 1) & 0x3FFE);
      v52 = &v47[((v50 >> 3) + 1) & 0x3FFE];
      v56 = (v6 + 11 + 16 * v7);
      v57 = v55 & 0x3FFE;
      do
      {
        v58 = *(v56 - 1);
        v59 = *v56;
        v56 += 2;
        v53 += byte_22A7E46[v58];
        v54 += byte_22A7E46[v59];
        v57 -= 2;
      }

      while (v57);
      v51 = v54 + v53;
      if ((v55 & 0x3FFE) == v55)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v51 = 0;
      v52 = v47;
    }

    do
    {
      v60 = *v52++;
      v51 += byte_22A7E46[v60];
      LOWORD(v44) = v44 - 8;
    }

    while (v44 > 8u);
LABEL_44:
    v47 += ((v8 - 9) >> 3) + 1;
    goto LABEL_45;
  }

  return -1;
}

uint64_t sub_B601D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_B60C60(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= ~a2)
  {
    goto LABEL_32;
  }

  v6 = *(a1 + 72);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    if (v7 >= vcvts_n_u32_f32(v8, 2uLL))
    {
      v9 = 4;
      while ((v9 & 0x8000000000000000) == 0)
      {
        v9 *= 2;
        if (v7 < (v8 * v9))
        {
          goto LABEL_12;
        }
      }

LABEL_32:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

    v9 = 4;
LABEL_12:
    if (v9 > v6)
    {
      v10 = v5 - *(a1 + 40) + a2;
      v11 = 4;
      if (v6 > 4)
      {
        goto LABEL_15;
      }

LABEL_14:
      if (v10 >= (v8 * v11))
      {
LABEL_15:
        while ((v11 & 0x8000000000000000) == 0)
        {
          v11 *= 2;
          if (v11 >= v6)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_32;
      }

      if (v11 < v9 && v11 <= 0x7FFFFFFFFFFFFFFELL && v10 >= (*(a1 + 20) * (2 * v11)))
      {
        v11 *= 2;
      }

      v28 = *(a1 + 16);
      v29 = *(a1 + 32);
      memset(v30, 0, sizeof(v30));
      v31 = 0u;
      v27 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v28, 0)));
      BYTE8(v28) = 0;
      sub_B56094(&v27, 0, a1, v11);
      v12 = *(a1 + 32);
      *(a1 + 32) = v29;
      v29 = v12;
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      *(a1 + 40) = v30[0];
      v16 = *a1;
      v15 = *(a1 + 16);
      v17 = v28;
      *a1 = v27;
      *(a1 + 16) = v17;
      v27 = v16;
      v28 = v15;
      v18 = *&v30[1];
      v30[0] = v13;
      v30[1] = v14;
      v19 = v30[3];
      v20 = *(a1 + 56);
      *(a1 + 48) = v18;
      *(a1 + 64) = v19;
      *&v30[2] = v20;
      *&v18 = v31;
      v21 = *(a1 + 72);
      *(a1 + 72) = v31;
      v31 = v21;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v18)));
      *(a1 + 24) = 0;
      v27 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v28, v21)));
      BYTE8(v28) = 0;
      if (v14)
      {
        v22 = v20;
        v23 = v14;
        if (v20 != v14)
        {
          do
          {
            v25 = *(v22 - 2);
            v22 -= 2;
            v24 = v25;
            if (v25)
            {
              free(v24);
              *v22 = 0;
            }
          }

          while (v22 != v14);
          v23 = v30[1];
        }

        v30[2] = v14;
        free(v23);
      }

      return 1;
    }
  }

  return result;
}

__n128 sub_B604E8@<Q0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_B5FD88(a1, a2);
  if (v6 == -1)
  {
    sub_B60718(a1, a2, v7, a3);
    *(a3 + 72) = 1;
    return result;
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = 16 * (v6 / 0x30);
  v11 = v10 + v9;
  v13 = (v10 + v9 + 10);
  v12 = *(v10 + v9);
  v14 = v6 % 0x30;
  if (v6 % 0x30 < 9)
  {
    v18 = 0;
    goto LABEL_14;
  }

  v15 = 48 * (v6 / 0x30);
  v16 = (v15 - v6 + 7);
  if (v16 <= 0xFFF7)
  {
    LOWORD(v16) = -9;
  }

  v17 = v16 + v6 - v15;
  if (v17 >= 8u)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v17 >> 3) + 1;
    LOWORD(v19) = v14 - 8 * (((v17 >> 3) + 1) & 0x3FFE);
    v20 = &v13[v24 & 0x3FFE];
    v25 = (v10 + v9 + 11);
    v26 = v24 & 0x3FFE;
    do
    {
      v27 = *(v25 - 1);
      v28 = *v25;
      v25 += 2;
      v22 += byte_22A7E46[v27];
      v23 += byte_22A7E46[v28];
      v26 -= 2;
    }

    while (v26);
    v18 = v23 + v22;
    if ((v24 & 0x3FFE) == v24)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    v19 = v6 % 0x30;
    v20 = (v10 + v9 + 10);
  }

  do
  {
    v29 = *v20++;
    v18 += byte_22A7E46[v29];
    LOWORD(v19) = v19 - 8;
  }

  while (v19 > 8u);
LABEL_13:
  v13 += ((v14 - 9) >> 3) + 1;
  LOBYTE(v14) = v19;
LABEL_14:
  v30 = v12 + 12 * (v18 + byte_22A7E46[~(-1 << v14) & *v13]);
  if (*v11 + 12 * *(v11 + 8) == v30)
  {
    v11 += 16;
    if (v11 != v8)
    {
      do
      {
        v31 = v11;
        if (*(v11 + 8))
        {
          break;
        }

        v11 += 16;
      }

      while (v31 + 2 != v8);
      v30 = *v31;
    }
  }

  *&v33 = a1;
  *(&v33 + 1) = v9;
  v34.n128_u64[0] = v8;
  v34.n128_u64[1] = v11;
  *&v35 = v30;
  *(&v35 + 1) = v9;
  *&v36 = v8;
  *(&v36 + 1) = v8;
  v37 = 0;
  sub_B47094(&v33);
  v32 = v36;
  *(a3 + 32) = v35;
  *(a3 + 48) = v32;
  *(a3 + 64) = v37;
  result = v34;
  *a3 = v33;
  *(a3 + 16) = result;
  *(a3 + 72) = 0;
  return result;
}

void *sub_B60718@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a1 + 40);
  if ((*(a1 + 80) - v4) >= 0x1555555555555555)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v5 = a3 / 0x30;
  v6 = a3 % 0x30;
  if (!v4)
  {
    v7 = *(a1 + 48);
    goto LABEL_18;
  }

  v7 = *(a1 + 48);
  v8 = (v7 + 16 * v5);
  if (((*(v8 + (v6 >> 3) + 10) >> (v6 & 7)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = v8 + 10;
  v9 = *v8;
  if (v6 < 9)
  {
    v13 = 0;
    v14 = a3 % 0x30;
    goto LABEL_16;
  }

  v11 = (48 * v5 - a3 + 7);
  if (v11 <= 0xFFF7)
  {
    LOWORD(v11) = -9;
  }

  v12 = v11 + a3 - 48 * v5;
  if (v12 >= 8u)
  {
    v16 = 0;
    v17 = 0;
    v18 = (v12 >> 3) + 1;
    LOWORD(v14) = v6 - 8 * (((v12 >> 3) + 1) & 0x3FFE);
    v15 = &v10[v18 & 0x3FFE];
    v19 = v8 + 11;
    v20 = v18 & 0x3FFE;
    do
    {
      v21 = *(v19 - 1);
      v22 = *v19;
      v19 += 2;
      v16 += byte_22A7E46[v21];
      v17 += byte_22A7E46[v22];
      v20 -= 2;
    }

    while (v20);
    v13 = v17 + v16;
    if ((v18 & 0x3FFE) == v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    v14 = a3 % 0x30;
    v15 = v8 + 10;
  }

  do
  {
    v23 = *v15++;
    v13 += byte_22A7E46[v23];
    LOWORD(v14) = v14 - 8;
  }

  while (v14 > 8u);
LABEL_15:
  v10 += ((v6 - 9) >> 3) + 1;
LABEL_16:
  if (*(a1 + 32) == *(v9 + 12 * (v13 + byte_22A7E46[~(-1 << v14) & *v10])))
  {
    *(a1 + 40) = v4 - 1;
  }

LABEL_18:
  v24 = v7 + 16 * v5;
  v25 = *(v24 + 8);
  v26 = v24 + 10;
  if (v6 < 9)
  {
    v29 = 0;
    v32 = (v24 + 10);
    v30 = a3 % 0x30;
    goto LABEL_29;
  }

  v27 = (48 * (a3 / 0x30) - a3 + 7);
  if (v27 <= 0xFFF7)
  {
    LOWORD(v27) = -9;
  }

  v28 = v27 + a3 - 48 * (a3 / 0x30);
  if (v28 >= 8u)
  {
    v33 = 0;
    v34 = 0;
    v35 = (v28 >> 3) + 1;
    LOWORD(v30) = v6 - 8 * (((v28 >> 3) + 1) & 0x3FFE);
    v31 = (v26 + (v35 & 0x3FFE));
    v36 = (v24 + 11);
    v37 = v35 & 0x3FFE;
    do
    {
      v38 = *(v36 - 1);
      v39 = *v36;
      v36 += 2;
      v33 += byte_22A7E46[v38];
      v34 += byte_22A7E46[v39];
      v37 -= 2;
    }

    while (v37);
    v29 = v34 + v33;
    if ((v35 & 0x3FFE) == v35)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v29 = 0;
    v30 = a3 % 0x30;
    v31 = (v24 + 10);
  }

  do
  {
    v40 = *v31++;
    v29 += byte_22A7E46[v40];
    LOWORD(v30) = v30 - 8;
  }

  while (v30 > 8u);
LABEL_28:
  v32 = (v26 + ((v6 - 9) >> 3) + 1);
LABEL_29:
  v41 = v6 >> 3;
  v42 = v29 + byte_22A7E46[~(-1 << v30) & *v32];
  v43 = 1 << (v6 & 7);
  if ((v43 & *(v26 + (v6 >> 3))) == 0)
  {
    v71 = a2;
    v72 = a3 / 0x30;
    v44 = a1;
    v45 = a4;
    v70 = a3 % 0x30;
    v46 = a3;
    sub_B31684(v24, (v29 + byte_22A7E46[~(-1 << v30) & *v32]));
    LOWORD(a3) = v46;
    v6 = v70;
    a2 = v71;
    a1 = v44;
    a4 = v45;
    v5 = v72;
    ++*(v24 + 8);
    *(v26 + v41) |= v43;
  }

  v47 = *v24 + 12 * v42;
  v48 = *a2;
  *(v47 + 8) = *(a2 + 2);
  *v47 = v48;
  v49 = *(a1 + 48);
  v50 = *(a1 + 56);
  v51 = v49 + 16 * v5;
  *(a1 + 80) = *(a1 + 80) - v25 + *(v51 + 8);
  v52 = (v51 + 10);
  if (v6 >= 9)
  {
    v53 = (48 * v5 - a3 + 7);
    if (v53 <= 0xFFF7)
    {
      LOWORD(v53) = -9;
    }

    v54 = v53 + a3 - 48 * v5;
    if (v54 >= 8u)
    {
      v58 = 0;
      v59 = 0;
      v60 = (v54 >> 3) + 1;
      v56 = v6 - 8 * (((v54 >> 3) + 1) & 0x3FFE);
      v57 = &v52[v60 & 0x3FFE];
      v61 = (16 * v5 + v49 + 11);
      v62 = v60 & 0x3FFE;
      do
      {
        v63 = *(v61 - 1);
        v64 = *v61;
        v61 += 2;
        v58 += byte_22A7E46[v63];
        v59 += byte_22A7E46[v64];
        v62 -= 2;
      }

      while (v62);
      v55 = v59 + v58;
      if ((v60 & 0x3FFE) == v60)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v55 = 0;
      v56 = v6;
      v57 = (v51 + 10);
    }

    do
    {
      v65 = *v57++;
      v55 += byte_22A7E46[v65];
      v56 -= 8;
    }

    while (v56 > 8u);
LABEL_41:
    v52 += ((v6 - 9) >> 3) + 1;
    LOBYTE(v6) = v56;
    goto LABEL_42;
  }

  v55 = 0;
LABEL_42:
  v66 = *v51 + 12 * (v55 + byte_22A7E46[~(-1 << v6) & *v52]);
  if (*v51 + 12 * *(v51 + 8) == v66)
  {
    v51 += 16;
    if (v51 != v50)
    {
      do
      {
        v67 = v51;
        if (*(v51 + 8))
        {
          break;
        }

        v51 += 16;
      }

      while (v67 + 2 != v50);
      v66 = *v67;
    }
  }

  *a4 = a1;
  a4[1] = v49;
  a4[2] = v50;
  a4[3] = v51;
  a4[4] = v66;
  a4[5] = v49;
  a4[6] = v50;
  a4[7] = v50;
  a4[8] = 0;

  return sub_B47094(a4);
}

uint64_t sub_B60C60(uint64_t a1)
{
  v2 = *(a1 + 80) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 72), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    do
    {
      v6 = v5;
      v5 >>= 1;
    }

    while (v6 >= 0x42 && v2 < (*(a1 + 20) * v5));
    v23 = *(a1 + 16);
    v24 = *(a1 + 32);
    memset(v25, 0, sizeof(v25));
    v26 = 0u;
    v22 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v23, 0)));
    BYTE8(v23) = 0;
    sub_B56094(&v22, 0, a1, v5);
    v7 = *(a1 + 32);
    *(a1 + 32) = v24;
    v24 = v7;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *(a1 + 40) = v25[0];
    v11 = *a1;
    v10 = *(a1 + 16);
    v12 = v23;
    *a1 = v22;
    *(a1 + 16) = v12;
    v22 = v11;
    v23 = v10;
    v13 = *&v25[1];
    v25[0] = v8;
    v25[1] = v9;
    v14 = v25[3];
    v15 = *(a1 + 56);
    *(a1 + 48) = v13;
    *(a1 + 64) = v14;
    *&v25[2] = v15;
    *&v13 = v26;
    v16 = *(a1 + 72);
    *(a1 + 72) = v26;
    v26 = v16;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v13)));
    *(a1 + 24) = 0;
    v22 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v23, v16)));
    BYTE8(v23) = 0;
    if (v9)
    {
      v17 = v15;
      v18 = v9;
      if (v15 != v9)
      {
        do
        {
          v20 = *(v17 - 2);
          v17 -= 2;
          v19 = v20;
          if (v20)
          {
            free(v19);
            *v17 = 0;
          }
        }

        while (v17 != v9);
        v18 = v25[1];
      }

      v25[2] = v9;
      free(v18);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_B60E40(void *a1, unsigned int a2, __int128 *a3)
{
  v59 = a2;
  v5 = sub_B5FB1C(a1, &v59);
  v6 = v5;
  v7 = *(v5 + 4);
  if (v7 && (v8 = (v7 - 1), ((*(a1[14] + ((v8 >> 3) & 0x1FFFFFF8)) >> v8) & 1) == 0))
  {
    *(v5 + 4) = v8;
    v48 = (a1[11] + (v8 << 6));
    v49 = *a3;
    v50 = a3[1];
    v51 = a3[3];
    v48[2] = a3[2];
    v48[3] = v51;
    *v48 = v49;
    v48[1] = v50;
    v46 = *(v5 + 4);
    *(a1[14] + ((v46 >> 3) & 0x1FFFFFF8)) |= 1 << v46;
    v47 = a1[11];
  }

  else
  {
    v9 = *(v5 + 8);
    v10 = a1[11];
    v11 = a1 + 11;
    v12 = a1[12] - v10;
    if (v12 >> 6 <= (v9 + 1) || ((*(a1[14] + ((v9 >> 3) & 0x1FFFFFF8)) >> v9) & 1) != 0)
    {
      v74[0] = v59;
      sub_B61684(a1, v74, &v69);
      v13 = a1[6];
      v14 = a1[7];
      v60 = a1;
      v61 = v13;
      v62 = v14;
      v63 = v14;
      v64 = 0;
      v65 = v13;
      v66 = v14;
      v67 = v14;
      v68 = 0;
      sub_B47094(&v60);
      v57 = v12 >> 6;
      if (v70 == v61 && v71 == v62 && v72 == v63 && (v72 == v71 || v73 == v64))
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v73 + 8) - *(v73 + 4);
      }

      v16 = (a1[12] - a1[11]) >> 6;
      v74[0] = v59;
      sub_B61684(a1, v74, &v69);
      v17 = a1[6];
      v18 = a1[7];
      v60 = a1;
      v61 = v17;
      v62 = v18;
      v63 = v18;
      v64 = 0;
      v65 = v17;
      v66 = v18;
      v67 = v18;
      v68 = 0;
      sub_B47094(&v60);
      if (v70 == v61 && v71 == v62 && v72 == v63 && (v72 == v71 || v73 == v64))
      {
        v19 = 2;
      }

      else
      {
        v19 = (2 * (*(v73 + 8) - *(v73 + 4)) + 2);
      }

      v58 = v12 >> 6;
      v20 = v19 + v16;
      v22 = a1[11];
      v21 = a1[12];
      v23 = (v21 - v22) >> 6;
      if (v20 <= v23)
      {
        if (v20 < v23)
        {
          v21 = v22 + (v20 << 6);
          a1[12] = v21;
        }
      }

      else
      {
        sub_AFA3D8((a1 + 11), v20 - v23);
        v22 = a1[11];
        v21 = a1[12];
      }

      sub_4D9168((a1 + 14), (v21 - v22) >> 6, 0);
      v24 = *(v6 + 4);
      v25 = *(v6 + 8);
      v26 = v12;
      if (v25 << 6 != v24 << 6)
      {
        memmove(((v12 & 0x3FFFFFFFC0) + a1[11]), ((v24 << 6) + a1[11]), (v25 << 6) - (v24 << 6));
        LODWORD(v24) = *(v6 + 4);
        LODWORD(v25) = *(v6 + 8);
      }

      v27 = v12 >> 6;
      v28 = (v15 + v58);
      v29 = a1[14];
      v30 = (v24 >> 3) & 0x1FFFFFF8;
      v31 = v24 & 0x3F;
      v32 = (v25 & 0x3F) - v31 + 8 * (((v25 >> 3) & 0x1FFFFFF8) - v30);
      if (v32 >= 1)
      {
        v33 = (v29 + v30);
        if (v31)
        {
          if ((64 - v31) >= v32)
          {
            v34 = (v25 & 0x3F) - v31 + 8 * (((v25 >> 3) & 0x1FFFFFF8) - v30);
          }

          else
          {
            v34 = (64 - v31);
          }

          *v33++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v31 - v34)) & (-1 << v31));
          v32 -= v34;
        }

        v35 = v32 >> 6;
        if (v32 >= 0x40)
        {
          bzero(v33, 8 * v35);
          LODWORD(v27) = v58;
        }

        if ((v32 & 0x3F) != 0)
        {
          v33[v35] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v32 & 0x3F));
        }
      }

      v36 = (v57 >> 3) & 0x1FFFFFF8;
      v37 = (v26 >> 6) & 0x3F;
      v38 = (v28 & 0xFFFFFFC0) - 8 * v36 - v37 + (v28 & 0x3F);
      if (v38 >= 1)
      {
        v39 = (v29 + v36);
        if ((v27 & 0x3F) != 0)
        {
          if (64 - (v27 & 0x3F) >= v38)
          {
            v40 = (v28 & 0xFFFFFFC0) - 8 * v36 - v37 + (v28 & 0x3F);
          }

          else
          {
            v40 = 64 - (v27 & 0x3F);
          }

          *v39++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - (v27 & 0x3Fu) - v40)) & (-1 << v37);
          v38 -= v40;
        }

        v41 = v38 >> 6;
        if (v38 >= 0x40)
        {
          memset(v39, 255, 8 * v41);
          LODWORD(v27) = v58;
        }

        if ((v38 & 0x3F) != 0)
        {
          v39[v41] |= 0xFFFFFFFFFFFFFFFFLL >> -(v38 & 0x3F);
        }
      }

      *(v6 + 4) = v27;
      *(v6 + 8) = v28;
      v42 = (*v11 + (v28 << 6));
      v43 = *a3;
      v44 = a3[1];
      v45 = a3[3];
      v42[2] = a3[2];
      v42[3] = v45;
      *v42 = v43;
      v42[1] = v44;
      v46 = *(v6 + 8);
      *(a1[14] + ((v46 >> 3) & 0x1FFFFFF8)) |= 1 << v46;
      v47 = *v11;
    }

    else
    {
      v53 = (v10 + (v9 << 6));
      v54 = *a3;
      v55 = a3[1];
      v56 = a3[3];
      v53[2] = a3[2];
      v53[3] = v56;
      *v53 = v54;
      v53[1] = v55;
      v46 = *(v5 + 8);
      *(a1[14] + ((v46 >> 3) & 0x1FFFFFF8)) |= 1 << v46;
      v47 = a1[11];
    }

    *(v6 + 8) = v46 + 1;
  }

  return v47 + (v46 << 6);
}

unint64_t sub_B612F4(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v41 = a3;
  sub_B61684(a1, &v41, v37);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v28 = a1;
  v29 = v10;
  v30 = v11;
  v31 = v11;
  v32 = 0;
  v33 = v10;
  v34 = v11;
  v35 = v11;
  v36 = 0;
  sub_B47094(&v28);
  if ((v37[1] != v29 || v38 != v30 || v39 != v31 || v39 != v38 && v40 != v32) && *(v40 + 8) != *(v40 + 4))
  {
    LODWORD(v37[0]) = a3;
    v12 = *(a1 + 88);
    v13 = v12 + (*(sub_B5FB1C(a1, v37) + 4) << 6);
    LODWORD(v37[0]) = a3;
    v14 = *(a1 + 88);
    v15 = v14 + (*(sub_B5FB1C(a1, v37) + 8) << 6);
    if (v13 != v15)
    {
      v16 = 0;
      v21 = *(a2 + 48);
      while (1)
      {
        v22 = *(v13 + 28);
        if (v22 != 0x7FFFFFFF)
        {
          v23 = *(a2 + 28);
          if (v22 <= v23 && *(v13 + 32) <= *(a2 + 32))
          {
            v24 = *(a2 + 36);
            v25 = *(v13 + 36);
            if (v25 <= v24 && (v25 != v24 || v22 != v23 || 10 * v22 - *(v13 + 44) <= 10 * v23 - *(a2 + 44)) && (*(v13 + 48) & ~*(a2 + 48)) == 0)
            {
              v19 = 0;
              return v19 & 0xFFFFFFFFFFFF00FFLL | (v16 << 8);
            }
          }

          if (v23 <= v22 && *(a2 + 32) <= *(v13 + 32))
          {
            v26 = *(v13 + 36);
            v27 = *(a2 + 36);
            if (v27 <= v26 && (v27 != v26 || v23 != v22 || 10 * v23 - *(a2 + 44) <= 10 * v22 - *(v13 + 44)) && (v21 & ~*(v13 + 48)) == 0)
            {
              *(v13 + 28) = 0x7FFFFFFF;
              v16 = 1;
            }
          }
        }

        v13 += 64;
        if (v13 == v15)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v16 = 0;
LABEL_7:
  v17 = sub_B60E40(a1, a3, a2);
  if (a5)
  {
    *(v17 + 52) = -1;
    *(v17 + 60) = 0x7FFFFFFF;
  }

  if (a4)
  {
    v18 = *(a1 + 136);
    *(a1 + 136) = v18 + 1;
    *(v17 + 24) = v18;
    *(v17 + 20) = *(a2 + 24);
  }

  v19 = 1;
  return v19 & 0xFFFFFFFFFFFF00FFLL | (v16 << 8);
}

char *sub_B61574(uint64_t a1, unsigned int a2)
{
  v17 = a2;
  v4 = *(a1 + 88);
  v5 = (v4 + (*(sub_B5FB1C(a1, &v17) + 4) << 6));
  v18 = a2;
  v6 = *(a1 + 88);
  v7 = (v6 + (*(sub_B5FB1C(a1, &v18) + 8) << 6));
  v8 = v7;
  if (v5 != v7)
  {
    v8 = v5;
    while (*(v8 + 7) != 0x7FFFFFFF)
    {
      v8 += 4;
      if (v8 == v7)
      {
        v8 = v7;
        break;
      }
    }

    if (v7 != v8)
    {
      for (i = v8 + 4; i != v7; i += 4)
      {
        if (*(i + 7) != 0x7FFFFFFF)
        {
          v14 = *i;
          v15 = i[1];
          v16 = i[3];
          v8[2] = i[2];
          v8[3] = v16;
          *v8 = v14;
          v8[1] = v15;
          v8 += 4;
        }
      }
    }
  }

  v9 = a2;
  v19 = a2;
  v10 = *(a1 + 88);
  v11 = sub_B5FB1C(a1, &v19);
  return sub_B5F764(a1, v9, v8, (v10 + (*(v11 + 8) << 6)));
}

void *sub_B61684@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  if (a1[10] == a1[5] || (v5 = sub_B5FD88(a1, a2), v5 == -1))
  {
    v19 = 0;
    v6 = a1[6];
    v7 = a1[7];
    *a3 = a1;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v7;
    goto LABEL_21;
  }

  v6 = a1[6];
  v7 = a1[7];
  v8 = 16 * (v5 / 0x30);
  v9 = v8 + v6;
  v11 = (v8 + v6 + 10);
  v10 = *(v8 + v6);
  v12 = v5 % 0x30;
  if (v5 % 0x30 < 9)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v13 = 48 * (v5 / 0x30);
  v14 = (v13 - v5 + 7);
  if (v14 <= 0xFFF7)
  {
    LOWORD(v14) = -9;
  }

  v15 = v14 + v5 - v13;
  if (v15 >= 8u)
  {
    v20 = 0;
    v21 = 0;
    v22 = (v15 >> 3) + 1;
    LOWORD(v17) = v12 - 8 * (((v15 >> 3) + 1) & 0x3FFE);
    v18 = &v11[v22 & 0x3FFE];
    v23 = (v8 + v6 + 11);
    v24 = v22 & 0x3FFE;
    do
    {
      v25 = *(v23 - 1);
      v26 = *v23;
      v23 += 2;
      v20 += byte_22A7E46[v25];
      v21 += byte_22A7E46[v26];
      v24 -= 2;
    }

    while (v24);
    v16 = v21 + v20;
    if ((v22 & 0x3FFE) == v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v17 = v5 % 0x30;
    v18 = (v8 + v6 + 10);
  }

  do
  {
    v27 = *v18++;
    v16 += byte_22A7E46[v27];
    LOWORD(v17) = v17 - 8;
  }

  while (v17 > 8u);
LABEL_14:
  v11 += ((v12 - 9) >> 3) + 1;
  LOBYTE(v12) = v17;
LABEL_15:
  v19 = v10 + 12 * (v16 + byte_22A7E46[~(-1 << v12) & *v11]);
  if (*v9 + 12 * *(v9 + 8) == v19)
  {
    v9 += 16;
    if (v9 != v7)
    {
      do
      {
        v28 = v9;
        if (*(v9 + 8))
        {
          break;
        }

        v9 += 16;
      }

      while (v28 + 2 != v7);
      v19 = *v28;
    }
  }

  *a3 = a1;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v9;
LABEL_21:
  a3[4] = v19;
  a3[5] = v6;
  a3[6] = v7;
  a3[7] = v7;
  a3[8] = 0;

  return sub_B47094(a3);
}

uint64_t sub_B61880(void *a1, unsigned int a2, unsigned int a3)
{
  v11 = a2;
  v25 = a2;
  sub_B61684(a1, &v25, v21);
  v5 = a1[6];
  v6 = a1[7];
  v12 = a1;
  v13 = v5;
  v14 = v6;
  v15 = v6;
  v16 = 0;
  v17 = v5;
  v18 = v6;
  v19 = v6;
  v20 = 0;
  sub_B47094(&v12);
  if (v21[1] == v13 && v22 == v14 && v23 == v15 && (v23 == v22 || v24 == v16) || *(v24 + 8) - *(v24 + 4) <= a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A2D8(exception, "key does not exist and cannot be added");
    goto LABEL_11;
  }

  v7 = *(sub_B5FB1C(a1, &v11) + 4) + a3;
  v8 = a1[11];
  if (v7 >= (a1[12] - v8) >> 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A2D8(exception, "index out of range");
LABEL_11:
  }

  return v8 + (v7 << 6);
}

uint64_t sub_B619E0(void *a1, unsigned int a2, unsigned int a3)
{
  v31 = a2;
  sub_B61684(a1, &v31, v28);
  v6 = a1[6];
  v7 = a1[7];
  v20 = a1;
  *&v21 = v6;
  *(&v21 + 1) = v7;
  v22 = v7;
  v23 = 0;
  v24 = v6;
  v25 = v7;
  v26 = v7;
  v27 = 0;
  sub_B47094(&v20);
  if (*&v28[8] == v21 && *&v28[24] == v22 && (*&v28[24] == *&v28[16] || v29 == v23))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v8 = *(v29 + 4);
    v9 = *(v29 + 8);
    v10 = 0;
    v11 = v9 - v8;
    if (v9 != v8)
    {
      v12 = 0;
      do
      {
        v13 = sub_B61880(a1, a2, v12);
        v14 = v13[3];
        v16 = *v13;
        v15 = v13[1];
        v29 = v13[2];
        v30 = v14;
        *v28 = v16;
        *&v28[16] = v15;
        v17 = sub_B612F4(a1, v28, a3, 0, 1);
        v18 = v17 | v10;
        v10 = v17 | v10 | (v17 | v10) & 0xFF00;
        ++v12;
      }

      while (v11 != v12);
      if ((v18 & 0x100) != 0)
      {
        sub_B61574(a1, a3);
      }
    }
  }

  return v10 & 1;
}

unint64_t sub_B61B30(uint64_t a1, int a2, unsigned int a3)
{
  v5 = a1;
  v343 = a3;
  *(a1 + 624) = *(a1 + 624) + 1.0;
  v6 = a3;
  v324 = *sub_A9C5E0((*(a1 + 40) + 88), a3);
  v7 = *(v5 + 368);
  v8 = (*(v5 + 376) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(v5 + 376) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(v5 + 368, v9 - v8);
    }

    sub_4D9168(v5 + 392, a3 + 1, 0);
  }

  v10 = *(v5 + 392);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(v5 + 416, &v343);
    v6 = v343;
  }

  v317 = *(*(v5 + 368) + 4 * v6);
  result = sub_A9D53C(&v341, *(v5 + 24), v324);
  v13 = v341;
  if (v341 < v342)
  {
    v315 = ~a2;
    v316 = a2 + 2;
    v318 = a2 + 1;
    v14 = 0xFF51AFD7ED558CCDLL;
    do
    {
      *(v5 + 632) = *(v5 + 632) + 1.0;
      v325 = *v13;
      LODWORD(v329) = 0;
      v15 = *(v5 + 216);
      v16 = (v15 + (*(sub_B5FB1C(v5 + 128, &v329) + 4) << 6));
      LODWORD(v329) = 0;
      v17 = *(v5 + 216);
      v18 = sub_B5FB1C(v5 + 128, &v329);
      sub_B5F764(v5 + 128, 0, v16, (v17 + (*(v18 + 8) << 6)));
      result = sub_A79708(&v329, *(v5 + 24), v324, v317, 0, 1);
      v20 = v332;
      v19 = v333;
      while (v19 >= v20 && v19 < v334)
      {
        v21 = 0;
        v22 = __ROR8__(*v19, 32);
        v23 = *(v5 + 32);
        v24 = *(v23 + 72) - 1;
        v25 = 0xC4CEB9FE1A85EC53 * (((v22 ^ (v22 >> 33)) * v14) ^ (((v22 ^ (v22 >> 33)) * v14) >> 33));
        v26 = v25 ^ (v25 >> 33);
        v27 = *(v23 + 48);
        v28 = v27 + 11;
        v29 = -1;
        for (i = v26; ; i = v21 + v31)
        {
          v31 = i & v24;
          v32 = (i & v24) / 0x30;
          v33 = (i & v24) % 0x30;
          v34 = (v27 + 16 * v32);
          if (((*(v34 + (v33 >> 3) + 10) >> (v33 & 7)) & 1) == 0)
          {
            if (v29 == -1)
            {
              v70 = v31;
            }

            else
            {
              v70 = v29;
            }

            if (!sub_B35190(*(v5 + 32), 1))
            {
              goto LABEL_102;
            }

            goto LABEL_58;
          }

          v35 = *v34;
          if (!*(v23 + 40))
          {
            break;
          }

          v36 = v34 + 10;
          if (v33 < 9)
          {
            v38 = 0;
            LOBYTE(v39) = v33;
            goto LABEL_32;
          }

          v37 = (48 * v32 - v31 + 7);
          if (v37 <= 0xFFF7)
          {
            LOWORD(v37) = -9;
          }

          if ((v37 + v31 - 48 * v32) >= 8u)
          {
            v41 = 0;
            v42 = 0;
            v43 = ((v37 + v31 - 48 * v32) >> 3) + 1;
            v39 = v33 - 8 * ((((v37 + v31 - 48 * v32) >> 3) + 1) & 0x3FFE);
            v40 = &v36[(((v37 + v31 - 48 * v32) >> 3) + 1) & 0x3FFE];
            v44 = (v28 + 16 * v32);
            v45 = v43 & 0x3FFE;
            do
            {
              v46 = *(v44 - 1);
              v47 = *v44;
              v44 += 2;
              v41 += byte_22A7D46[v46];
              v42 += byte_22A7D46[v47];
              v45 -= 2;
            }

            while (v45);
            v38 = v42 + v41;
            if ((v43 & 0x3FFE) == v43)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v38 = 0;
            v39 = v33;
            v40 = v34 + 10;
          }

          do
          {
            v48 = *v40++;
            v38 += byte_22A7D46[v48];
            v39 -= 8;
          }

          while (v39 > 8u);
LABEL_31:
          v36 += ((v33 - 9) >> 3) + 1;
LABEL_32:
          v49 = (v35 + 12 * (v38 + byte_22A7D46[~(-1 << v39) & *v36]));
          if (*(v23 + 36) != v49[1] || *(v23 + 32) != *v49)
          {
            break;
          }

          if (v29 == -1)
          {
            v29 = v31;
          }

LABEL_18:
          ++v21;
        }

        v51 = v34 + 10;
        if (v33 < 9)
        {
          v53 = 0;
          LOBYTE(v54) = v33;
        }

        else
        {
          v52 = (48 * v32 - v31 + 7);
          if (v52 <= 0xFFF7)
          {
            LOWORD(v52) = -9;
          }

          if ((v52 + v31 - 48 * v32) < 8u)
          {
            v53 = 0;
            v54 = v33;
            v55 = v34 + 10;
            goto LABEL_45;
          }

          v56 = 0;
          v57 = 0;
          v58 = ((v52 + v31 - 48 * v32) >> 3) + 1;
          v54 = v33 - 8 * ((((v52 + v31 - 48 * v32) >> 3) + 1) & 0x3FFE);
          v55 = &v51[(((v52 + v31 - 48 * v32) >> 3) + 1) & 0x3FFE];
          v59 = (v28 + 16 * v32);
          v60 = v58 & 0x3FFE;
          do
          {
            v61 = *(v59 - 1);
            v62 = *v59;
            v59 += 2;
            v56 += byte_22A7D46[v61];
            v57 += byte_22A7D46[v62];
            v60 -= 2;
          }

          while (v60);
          v53 = v57 + v56;
          if ((v58 & 0x3FFE) != v58)
          {
            do
            {
LABEL_45:
              v63 = *v55++;
              v53 += byte_22A7D46[v63];
              v54 -= 8;
            }

            while (v54 > 8u);
          }

          v51 += ((v33 - 9) >> 3) + 1;
        }

        if (v22 != *(v35 + 12 * (v53 + byte_22A7D46[~(-1 << v54) & *v51])))
        {
          goto LABEL_18;
        }

        if (v31 != -1)
        {
          v64 = v34 + 10;
          if (v33 < 9)
          {
            v67 = 0;
          }

          else
          {
            v65 = (48 * v32 - v31 + 7);
            if (v65 <= 0xFFF7)
            {
              LOWORD(v65) = -9;
            }

            v66 = v65 + v31 - 48 * v32;
            v67 = 0;
            if (v66 < 8u)
            {
              v68 = v33;
              v69 = v34 + 10;
              goto LABEL_107;
            }

            v118 = 0;
            v119 = (v66 >> 3) + 1;
            v68 = v33 - 8 * (((v66 >> 3) + 1) & 0x3FFE);
            v69 = &v64[v119 & 0x3FFE];
            v120 = v34 + 11;
            v121 = v119 & 0x3FFE;
            do
            {
              v122 = *(v120 - 1);
              v123 = *v120;
              v120 += 2;
              v67 += byte_22A7D46[v122];
              v118 += byte_22A7D46[v123];
              v121 -= 2;
            }

            while (v121);
            v67 += v118;
            if ((v119 & 0x3FFE) != v119)
            {
              do
              {
LABEL_107:
                v124 = *v69++;
                v67 += byte_22A7D46[v124];
                v68 -= 8;
              }

              while (v68 > 8u);
            }

            v64 += ((v33 - 9) >> 3) + 1;
            LOBYTE(v33) = v68;
          }

          v125 = *(v23 + 56);
          v117 = (v35 + 12 * (v67 + byte_22A7D46[~(-1 << v33) & *v64]));
          if ((*v34 + 12 * *(v34 + 4)) == v117 && v34 + 2 != v125)
          {
            v127 = v34 + 4;
            do
            {
              if (*(v127 - 4))
              {
                v128 = 1;
              }

              else
              {
                v128 = v127 == v125;
              }

              v127 += 2;
            }

            while (!v128);
            v117 = *(v127 - 4);
          }

          goto LABEL_120;
        }

        v70 = -1;
        if (!sub_B35190(*(v5 + 32), 1))
        {
LABEL_102:
          v344 = v22;
          v345 = -1;
          sub_B356C0(v23, &v344, v70, &v346);
          v117 = v350;
          goto LABEL_120;
        }

LABEL_58:
        v71 = 0;
        v344 = v22;
        v345 = -1;
        v72 = *(v23 + 72) - 1;
        v73 = *(v23 + 48);
        v74 = v73 + 11;
        v75 = -1;
        while (2)
        {
          v76 = v26 & v72;
          v77 = (v26 & v72) / 0x30;
          v78 = (v26 & v72) % 0x30;
          v79 = v73 + 16 * v77;
          if (((*(v79 + (v78 >> 3) + 10) >> (v78 & 7)) & 1) == 0)
          {
            if (v75 == -1)
            {
              v116 = v26 & v72;
            }

            else
            {
              v116 = v75;
            }

            goto LABEL_100;
          }

          v80 = *(v23 + 40);
          v81 = *v79;
          if (v80)
          {
            v82 = (v79 + 10);
            if (v78 < 9)
            {
              v84 = 0;
              v85 = (v26 & v72) % 0x30;
            }

            else
            {
              v83 = (48 * v77 - v76 + 7);
              if (v83 <= 0xFFF7)
              {
                LOWORD(v83) = -9;
              }

              if ((v83 + v76 - 48 * v77) < 8u)
              {
                v84 = 0;
                v85 = (v26 & v72) % 0x30;
                v86 = (v79 + 10);
                goto LABEL_73;
              }

              v87 = 0;
              v88 = 0;
              v89 = ((v83 + v76 - 48 * v77) >> 3) + 1;
              LOWORD(v85) = v78 - 8 * ((((v83 + v76 - 48 * v77) >> 3) + 1) & 0x3FFE);
              v86 = &v82[(((v83 + v76 - 48 * v77) >> 3) + 1) & 0x3FFE];
              v90 = (v74 + 16 * v77);
              v91 = v89 & 0x3FFE;
              do
              {
                v92 = *(v90 - 1);
                v93 = *v90;
                v90 += 2;
                v87 += byte_22A7D46[v92];
                v88 += byte_22A7D46[v93];
                v91 -= 2;
              }

              while (v91);
              v84 = v88 + v87;
              if ((v89 & 0x3FFE) != v89)
              {
                do
                {
LABEL_73:
                  v94 = *v86++;
                  v84 += byte_22A7D46[v94];
                  LOWORD(v85) = v85 - 8;
                }

                while (v85 > 8u);
              }

              v82 += ((v78 - 9) >> 3) + 1;
            }

            v95 = &v81[3 * (v84 + byte_22A7D46[~(-1 << v85) & *v82])];
            if (*(v23 + 36) == v95[1] && *(v23 + 32) == *v95)
            {
              if (v75 == -1)
              {
                v75 = v26 & v72;
              }

LABEL_61:
              v26 = ++v71 + v76;
              continue;
            }
          }

          break;
        }

        v97 = (v79 + 10);
        if (v78 < 9)
        {
          v99 = 0;
          v100 = (v26 & v72) % 0x30;
        }

        else
        {
          v98 = (48 * v77 - v76 + 7);
          if (v98 <= 0xFFF7)
          {
            LOWORD(v98) = -9;
          }

          if ((v98 + v76 - 48 * v77) < 8u)
          {
            v99 = 0;
            v100 = (v26 & v72) % 0x30;
            v101 = (v79 + 10);
            goto LABEL_88;
          }

          v102 = 0;
          v103 = 0;
          v104 = ((v98 + v76 - 48 * v77) >> 3) + 1;
          LOWORD(v100) = v78 - 8 * ((((v98 + v76 - 48 * v77) >> 3) + 1) & 0x3FFE);
          v101 = &v97[(((v98 + v76 - 48 * v77) >> 3) + 1) & 0x3FFE];
          v105 = (v74 + 16 * v77);
          v106 = v104 & 0x3FFE;
          do
          {
            v107 = *(v105 - 1);
            v108 = *v105;
            v105 += 2;
            v102 += byte_22A7D46[v107];
            v103 += byte_22A7D46[v108];
            v106 -= 2;
          }

          while (v106);
          v99 = v103 + v102;
          if ((v104 & 0x3FFE) != v104)
          {
            do
            {
LABEL_88:
              v109 = *v101++;
              v99 += byte_22A7D46[v109];
              LOWORD(v100) = v100 - 8;
            }

            while (v100 > 8u);
          }

          v97 += ((v78 - 9) >> 3) + 1;
        }

        if (v22 != *&v81[3 * (v99 + byte_22A7D46[~(-1 << v100) & *v97])])
        {
          goto LABEL_61;
        }

        if (v76 == -1)
        {
          v116 = -1;
LABEL_100:
          sub_B356C0(v23, &v344, v116, &v346);
          v117 = v350;
          goto LABEL_120;
        }

        v110 = (v79 + 10);
        if (v78 < 9)
        {
          v113 = 0;
        }

        else
        {
          v111 = (48 * v77 - v76 + 7);
          if (v111 <= 0xFFF7)
          {
            LOWORD(v111) = -9;
          }

          v112 = v111 + v76 - 48 * v77;
          if (v112 < 8u)
          {
            v113 = 0;
            v114 = (v26 & v72) % 0x30;
            v115 = (v79 + 10);
            goto LABEL_162;
          }

          v168 = 0;
          v169 = 0;
          v170 = (v112 >> 3) + 1;
          v114 = v78 - 8 * (((v112 >> 3) + 1) & 0x3FFE);
          v115 = &v110[v170 & 0x3FFE];
          v171 = (v79 + 11);
          v172 = v170 & 0x3FFE;
          do
          {
            v173 = *(v171 - 1);
            v174 = *v171;
            v171 += 2;
            v168 += byte_22A7D46[v173];
            v169 += byte_22A7D46[v174];
            v172 -= 2;
          }

          while (v172);
          v113 = v169 + v168;
          if ((v170 & 0x3FFE) != v170)
          {
            do
            {
LABEL_162:
              v175 = *v115++;
              v113 += byte_22A7D46[v175];
              v114 -= 8;
            }

            while (v114 > 8u);
          }

          v110 += ((v78 - 9) >> 3) + 1;
          LOBYTE(v78) = v114;
        }

        v176 = *(v23 + 56);
        v117 = &v81[3 * (v113 + byte_22A7D46[~(-1 << v78) & *v110])];
        if ((*v79 + 12 * *(v79 + 8)) == v117)
        {
          v79 += 16;
          if (v79 != v176)
          {
            do
            {
              v177 = v79;
              if (*(v79 + 8))
              {
                break;
              }

              v79 += 16;
            }

            while (v177 + 2 != v176);
            v117 = *v177;
          }
        }

        if (v79 != v176 && v80)
        {
          do
          {
            if (*(v23 + 36) != v117[1] || *(v23 + 32) != *v117)
            {
              break;
            }

            v117 += 3;
            if (v117 == (*v79 + 12 * *(v79 + 8)))
            {
              v79 += 16;
              if (v79 != v176)
              {
                do
                {
                  v192 = v79;
                  if (*(v79 + 8))
                  {
                    break;
                  }

                  v79 += 16;
                }

                while (v192 + 2 != v176);
                v117 = *v192;
              }
            }
          }

          while (v79 != v176);
        }

LABEL_120:
        v129 = v117[2];
        if (v129 == -1)
        {
          v130 = *(v23 + 112);
          *(v23 + 112) = v130 + 1;
          v117[2] = v130;
          v132 = *(v23 + 96);
          v131 = *(v23 + 104);
          if (v132 >= v131)
          {
            v134 = *(v23 + 88);
            v135 = v132 - v134;
            v136 = (v132 - v134) >> 3;
            v137 = v136 + 1;
            if ((v136 + 1) >> 61)
            {
              sub_1794();
            }

            v138 = v14;
            v139 = v5;
            v140 = v131 - v134;
            if (v140 >> 2 > v137)
            {
              v137 = v140 >> 2;
            }

            if (v140 >= 0x7FFFFFFFFFFFFFF8)
            {
              v141 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v141 = v137;
            }

            if (v141)
            {
              if (!(v141 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v142 = (v132 - v134) >> 3;
            v143 = (8 * v136);
            v144 = (8 * v136 - 8 * v142);
            *v143 = v22;
            v133 = v143 + 1;
            memcpy(v144, v134, v135);
            *(v23 + 88) = v144;
            *(v23 + 96) = v133;
            *(v23 + 104) = 0;
            if (v134)
            {
              operator delete(v134);
            }

            v5 = v139;
            v14 = v138;
          }

          else
          {
            *v132 = v22;
            v133 = v132 + 1;
          }

          *(v23 + 96) = v133;
          v129 = v117[2];
        }

        v328 = v129;
        result = sub_C435EC((v5 + 448), v129, v22);
        if ((result & 1) == 0)
        {
          if ((*(v5 + 21) & 1) == 0)
          {
            LODWORD(v346) = 0;
            v154 = *(v5 + 216);
            v155 = (v154 + (*(sub_B5FB1C(v5 + 128, &v346) + 4) << 6));
            LODWORD(v346) = 0;
            v156 = *(v5 + 216);
            v157 = sub_B5FB1C(v5 + 128, &v346);
            result = sub_B5F764(v5 + 128, 0, v155, (v156 + (*(v157 + 8) << 6)));
          }

          goto LABEL_268;
        }

        LODWORD(v346) = 0;
        if (*(v5 + 208) != *(v5 + 168))
        {
          result = sub_B5FD88(v5 + 128, &v346);
          if (result != -1)
          {
            v145 = *(v5 + 176) + 16 * (result / 0x30);
            v146 = (v145 + 10);
            v147 = result % 0x30;
            if (result % 0x30 < 9)
            {
              v151 = 0;
            }

            else
            {
              v148 = 48 * (result / 0x30);
              v149 = (v148 - result + 7);
              if (v149 <= 0xFFF7)
              {
                LOWORD(v149) = -9;
              }

              v150 = v149 + result - v148;
              if (v150 < 8u)
              {
                v151 = 0;
                v152 = result % 0x30;
                v153 = (v145 + 10);
                goto LABEL_152;
              }

              v158 = 0;
              v159 = 0;
              v160 = (v150 >> 3) + 1;
              LOWORD(v152) = v147 - 8 * (((v150 >> 3) + 1) & 0x3FFE);
              v153 = &v146[v160 & 0x3FFE];
              result = v145 + 11;
              v161 = v160 & 0x3FFE;
              do
              {
                v162 = *(result - 1);
                v163 = *result;
                result += 2;
                v158 += byte_22A7E46[v162];
                v159 += byte_22A7E46[v163];
                v161 -= 2;
              }

              while (v161);
              v151 = v159 + v158;
              if ((v160 & 0x3FFE) != v160)
              {
                do
                {
LABEL_152:
                  v164 = *v153++;
                  v151 += byte_22A7E46[v164];
                  LOWORD(v152) = v152 - 8;
                }

                while (v152 > 8u);
              }

              v146 += ((v147 - 9) >> 3) + 1;
              LOBYTE(v147) = v152;
            }

            v165 = *(v5 + 184);
            v166 = (*v145 + 12 * (v151 + byte_22A7E46[~(-1 << v147) & *v146]));
            if ((*v145 + 12 * *(v145 + 8)) == v166)
            {
              v145 += 16;
              if (v145 != v165)
              {
                do
                {
                  v167 = v145;
                  if (*(v145 + 8))
                  {
                    break;
                  }

                  v145 += 16;
                }

                while (v167 + 2 != v165);
                v166 = *v167;
              }
            }

            if (v145 != v165)
            {
              if (*(v5 + 168))
              {
                v178 = v145;
                do
                {
                  if (*(v5 + 160) != *v166)
                  {
                    break;
                  }

                  v166 += 3;
                  if (v166 == (*v145 + 12 * *(v145 + 8)))
                  {
                    v145 += 16;
                    v178 = *(v5 + 184);
                    if (v145 != v165)
                    {
                      do
                      {
                        v179 = v145;
                        if (*(v145 + 8))
                        {
                          v178 = v145;
                          goto LABEL_174;
                        }

                        v145 += 16;
                      }

                      while (v179 + 2 != v165);
                      v178 = *(v5 + 184);
LABEL_174:
                      v166 = *v179;
                    }
                  }
                }

                while (v145 != v165);
              }

              else
              {
                v178 = v145;
              }

              if (v178 != v165 && v166[2] != v166[1])
              {
                LODWORD(v346) = 0;
                v180 = *(v5 + 216);
                v181 = (v180 + (*(sub_B5FB1C(v5 + 128, &v346) + 4) << 6));
                LODWORD(v346) = 0;
                v182 = *(v5 + 216);
                v183 = (v182 + (*(sub_B5FB1C(v5 + 128, &v346) + 8) << 6));
                if (v181 != v183)
                {
                  v184 = v338;
                  v185 = v336;
                  v186 = v331;
                  v187 = (v333 - v332) >> 4;
                  do
                  {
                    v190 = (v185 + 12 * v181[13]);
                    if (v184)
                    {
                      v339 = v181[14];
                      v188 = v181[15];
                      v340 = v188;
                    }

                    else
                    {
                      v188 = *v190;
                    }

                    v189 = (v186 + *(v186 - *v186 + 6));
                    v181[7] = *(&v189[2 * (v190[1] + v187) + 1] + *v189) + v188;
                    v181 += 16;
                  }

                  while (v181 != v183);
                  v337 = v190;
                }

                sub_B6364C((v5 + 128), 0);
                if ((*(v333 + 15) & 1) != 0 && (!v335 || (*(v335 + 4 * ((v333 - v332) >> 4)) & v325) == 0))
                {
                  v193 = *(v5 + 120);
                  if (*(v5 + 20) == 1)
                  {
                    v194 = v193 + v193 * *(v5 + 440);
                    v195 = v328;
                    v196 = *(v5 + 48);
                    if (v196)
                    {
                      goto LABEL_214;
                    }

LABEL_216:
                    v197 = 2147483646;
                  }

                  else
                  {
                    v194 = -1;
                    v195 = v328;
                    v196 = *(v5 + 48);
                    if (!v196)
                    {
                      goto LABEL_216;
                    }

LABEL_214:
                    v197 = sub_B394F8(v196, v195, *(v5 + 124) + v315);
                  }

                  if (sub_B638C4((v5 + 128), 0, v316 + v193 + v193 * v195, v193 + v193 * v195, v194, v197))
                  {
                    v198 = v328;
                    if (*(v5 + 280) <= v328)
                    {
                      sub_4D9168(v5 + 272, v328 + 1, 0);
                      v198 = v328;
                    }

                    if (((*(*(v5 + 272) + ((v198 >> 3) & 0x1FFFFFF8)) >> v198) & 1) == 0)
                    {
                      sub_DD38(v5 + 296, &v328);
                      *(*(v5 + 272) + ((v328 >> 3) & 0x1FFFFFF8)) |= 1 << v328;
                    }
                  }
                }

                LODWORD(v346) = 0;
                v199 = *(v5 + 216);
                v200 = (v199 + (*(sub_B5FB1C(v5 + 128, &v346) + 4) << 6));
                LODWORD(v346) = 0;
                v201 = *(v5 + 216);
                v202 = (v201 + (*(sub_B5FB1C(v5 + 128, &v346) + 8) << 6));
                if (v200 != v202)
                {
                  v203 = v338;
                  v204 = v336;
                  v205 = v331;
                  v206 = (v333 - v332) >> 4;
                  do
                  {
                    v209 = (v204 + 12 * v200[13]);
                    if (v203)
                    {
                      v339 = v200[14];
                      v207 = v200[15];
                      v340 = v207;
                    }

                    else
                    {
                      v207 = *v209;
                    }

                    v208 = (v205 + *(v205 - *v205 + 6));
                    v200[7] = *(&v208[2 * (v209[1] + v206) + 2] + *v208) + v207;
                    v200 += 16;
                  }

                  while (v200 != v202);
                  v337 = v209;
                }

                result = sub_B6364C((v5 + 128), 0);
              }
            }
          }
        }

        if ((*(v333 + 15) & 2) != 0)
        {
          if (v335)
          {
            if (*(v335 + 4 * ((v333 - v332) >> 4)) != v325)
            {
              goto LABEL_268;
            }
          }

          else if (v325)
          {
            goto LABEL_268;
          }

          v210 = v318 + *(v5 + 120) + *(v5 + 120) * v328;
          LODWORD(v346) = v210;
          if (*(v5 + 208) == *(v5 + 168))
          {
            goto LABEL_268;
          }

          result = sub_B5FD88(v5 + 128, &v346);
          if (result == -1)
          {
            goto LABEL_268;
          }

          v211 = *(v5 + 176) + 16 * (result / 0x30);
          v212 = (v211 + 10);
          v213 = result % 0x30;
          if (result % 0x30 < 9)
          {
            v217 = 0;
          }

          else
          {
            v214 = 48 * (result / 0x30);
            v215 = (v214 - result + 7);
            if (v215 <= 0xFFF7)
            {
              LOWORD(v215) = -9;
            }

            v216 = v215 + result - v214;
            if (v216 < 8u)
            {
              v217 = 0;
              v218 = result % 0x30;
              v219 = (v211 + 10);
              goto LABEL_246;
            }

            v220 = 0;
            v221 = 0;
            v222 = (v216 >> 3) + 1;
            LOWORD(v218) = v213 - 8 * (((v216 >> 3) + 1) & 0x3FFE);
            v219 = &v212[v222 & 0x3FFE];
            result = v211 + 11;
            v223 = v222 & 0x3FFE;
            do
            {
              v224 = *(result - 1);
              v225 = *result;
              result += 2;
              v220 += byte_22A7E46[v224];
              v221 += byte_22A7E46[v225];
              v223 -= 2;
            }

            while (v223);
            v217 = v221 + v220;
            if ((v222 & 0x3FFE) != v222)
            {
              do
              {
LABEL_246:
                v226 = *v219++;
                v217 += byte_22A7E46[v226];
                LOWORD(v218) = v218 - 8;
              }

              while (v218 > 8u);
            }

            v212 += ((v213 - 9) >> 3) + 1;
            LOBYTE(v213) = v218;
          }

          v227 = *(v5 + 184);
          v228 = (*v211 + 12 * (v217 + byte_22A7E46[~(-1 << v213) & *v212]));
          if ((*v211 + 12 * *(v211 + 8)) == v228)
          {
            v211 += 16;
            if (v211 != v227)
            {
              do
              {
                v229 = v211;
                if (*(v211 + 8))
                {
                  break;
                }

                v211 += 16;
              }

              while (v229 + 2 != v227);
              v228 = *v229;
            }
          }

          if (v211 != v227)
          {
            if (*(v5 + 168))
            {
              v230 = v211;
              do
              {
                if (*(v5 + 160) != *v228)
                {
                  break;
                }

                v228 += 3;
                if (v228 == (*v211 + 12 * *(v211 + 8)))
                {
                  v211 += 16;
                  v230 = *(v5 + 184);
                  if (v211 != v227)
                  {
                    do
                    {
                      v231 = v211;
                      if (*(v211 + 8))
                      {
                        v230 = v211;
                        goto LABEL_257;
                      }

                      v211 += 16;
                    }

                    while (v231 + 2 != v227);
                    v230 = *(v5 + 184);
LABEL_257:
                    v228 = *v231;
                  }
                }
              }

              while (v211 != v227);
            }

            else
            {
              v230 = v211;
            }

            if (v230 != v227)
            {
              v234 = v228 + 1;
              v233 = v228[1];
              v232 = v234[1];
              v235 = v232 - v233;
              if (v232 != v233)
              {
                v239 = 0;
                v320 = v210;
                v319 = v232 - v233;
                do
                {
                  v240 = sub_B61880((v5 + 128), v210, v239);
                  v241 = *(v333 + 2) + *(v240 + 28);
                  if (v338 == 1)
                  {
                    result = sub_A7A1E8(*(v5 + 24), &v329, v241, 1u);
                    if ((result & 1) == 0)
                    {
                      goto LABEL_286;
                    }
                  }

                  else
                  {
                    result = sub_A7A710(&v329, v241, 1);
                    if (!result)
                    {
                      goto LABEL_286;
                    }
                  }

                  v242 = *(v240 + 20);
                  v243 = *(v240 + 32);
                  v244 = *(v240 + 40);
                  v322 = *(v240 + 36);
                  v323 = *(v240 + 44);
                  v321 = *(v240 + 48);
                  v326 = *(v240 + 49);
                  v327 = *(v240 + 51);
                  v245 = *(v5 + 24);
                  v246 = sub_A57920((v245 + 4136), v324);
                  v247 = v246;
                  v248 = (v246 - *v246);
                  if (*v248 >= 0xFu && (v249 = v248[7]) != 0)
                  {
                    v250 = *(v245 + 4136);
                    v251 = sub_4FC268(*(v246 + v249));
                    if (sub_C9E594(v250 + 3896, v251))
                    {
                      goto LABEL_298;
                    }
                  }

                  else
                  {
                    v255 = *(v245 + 4136);
                    v256 = sub_4FC268(0x7FFF);
                    if (sub_C9E594(v255 + 3896, v256))
                    {
LABEL_298:
                      v257 = 128;
                      goto LABEL_301;
                    }
                  }

                  v252 = (v247 - *v247);
                  if (*v252 >= 0xBu && (v253 = v252[5]) != 0)
                  {
                    v254 = *(v247 + v253);
                  }

                  else
                  {
                    v254 = 0;
                  }

                  v257 = sub_A882D4(v254);
LABEL_301:
                  v258 = sub_A57920((v245 + 4136), v324);
                  v259 = (v258 - *v258);
                  if (*v259 < 0xFu)
                  {
                    v261 = 3;
LABEL_310:
                    v264 = v322;
                    v263 = v323;
                    v265 = v321;
                    goto LABEL_311;
                  }

                  v260 = v259[7];
                  if (!v259[7])
                  {
                    goto LABEL_309;
                  }

                  v261 = 0;
                  v262 = *(v258 + v260);
                  if (v262 > 4)
                  {
                    if ((v262 - 5) < 3)
                    {
LABEL_309:
                      v261 = 3;
                      goto LABEL_310;
                    }

                    v264 = v322;
                    v263 = v323;
                    v265 = v321;
                    if (v262 != 12 && v262 != 900)
                    {
                      v300 = ((5243 * (v262 >> 2)) >> 17) - 1;
                      if (v300 > 0xB)
                      {
                        v261 = 3;
                      }

                      else
                      {
                        v261 = byte_22A8146[v300];
                      }
                    }
                  }

                  else
                  {
                    v264 = v322;
                    v263 = v323;
                    v265 = v321;
                    if (v262 >= 3)
                    {
                      if (v262 == 3)
                      {
                        v261 = 1;
                      }

                      else
                      {
                        v261 = 2;
                      }
                    }
                  }

LABEL_311:
                  v266 = v257 + v264;
                  v267 = (1 << v261) | v265;
                  v268 = v340;
                  v269 = 0xFFFFFFFF00000000;
                  if (v338)
                  {
                    v269 = v339 << 32;
                  }

                  v270 = (-1431655765 * ((v337 - v336) >> 2)) | v269;
                  if (!v338)
                  {
                    v268 = 0x7FFFFFFF;
                  }

                  v271 = (v331 + *(v331 - *v331 + 6));
                  v272 = v271 + *v271;
                  v273 = &v340;
                  if (!v338)
                  {
                    v273 = v337;
                  }

                  v274 = *v273;
                  v275 = (v333 - v332) >> 4;
                  v276 = *&v272[8 * (v337[1] + v275) + 4];
                  v277 = *&v272[8 * (v337[1] + v275) + 8] + v274;
                  v278 = 10 * (v274 - *(v240 + 28) + v276);
                  *(&v346 + 4) = v270;
                  LODWORD(v346) = v275;
                  HIDWORD(v346) = v268;
                  v347 = v343;
                  v348 = v242;
                  v349 = v277;
                  v350 = __PAIR64__(v266, v243);
                  v351 = v244;
                  v352 = (v278 & ~(v278 >> 31)) + v263;
                  v353 = v267;
                  v354 = v326;
                  v355 = v327;
                  v356 = v270;
                  v357 = v268;
                  LODWORD(v344) = 0;
                  v235 = v319;
                  v14 = 0xFF51AFD7ED558CCDLL;
                  if (*(v5 + 208) != *(v5 + 168))
                  {
                    v279 = sub_B5FD88(v5 + 128, &v344);
                    if (v279 != -1)
                    {
                      v280 = *(v5 + 176) + 16 * (v279 / 0x30);
                      v281 = (v280 + 10);
                      v282 = v279 % 0x30;
                      if (v279 % 0x30 < 9)
                      {
                        v286 = 0;
                      }

                      else
                      {
                        v283 = 48 * (v279 / 0x30);
                        v284 = (v283 - v279 + 7);
                        if (v284 <= 0xFFF7)
                        {
                          LOWORD(v284) = -9;
                        }

                        v285 = v284 + v279 - v283;
                        if (v285 < 8u)
                        {
                          v286 = 0;
                          v287 = v279 % 0x30;
                          v288 = (v280 + 10);
                          goto LABEL_328;
                        }

                        v289 = 0;
                        v290 = 0;
                        v291 = (v285 >> 3) + 1;
                        LOWORD(v287) = v282 - 8 * (((v285 >> 3) + 1) & 0x3FFE);
                        v288 = &v281[v291 & 0x3FFE];
                        v292 = (v280 + 11);
                        v293 = v291 & 0x3FFE;
                        do
                        {
                          v294 = *(v292 - 1);
                          v295 = *v292;
                          v292 += 2;
                          v289 += byte_22A7E46[v294];
                          v290 += byte_22A7E46[v295];
                          v293 -= 2;
                        }

                        while (v293);
                        v286 = v290 + v289;
                        if ((v291 & 0x3FFE) != v291)
                        {
                          do
                          {
LABEL_328:
                            v296 = *v288++;
                            v286 += byte_22A7E46[v296];
                            LOWORD(v287) = v287 - 8;
                          }

                          while (v287 > 8u);
                        }

                        v281 += ((v282 - 9) >> 3) + 1;
                        LOBYTE(v282) = v287;
                      }

                      v297 = *(v5 + 184);
                      v298 = (*v280 + 12 * (v286 + byte_22A7E46[~(-1 << v282) & *v281]));
                      if ((*v280 + 12 * *(v280 + 8)) == v298)
                      {
                        v280 += 16;
                        if (v280 != v297)
                        {
                          do
                          {
                            v299 = v280;
                            if (*(v280 + 8))
                            {
                              break;
                            }

                            v280 += 16;
                          }

                          while (v299 + 2 != v297);
                          v298 = *v299;
                        }
                      }

                      if (v280 != v297)
                      {
                        if (*(v5 + 168))
                        {
                          v301 = v280;
                          do
                          {
                            if (*(v5 + 160) != *v298)
                            {
                              break;
                            }

                            v298 += 3;
                            if (v298 == (*v280 + 12 * *(v280 + 8)))
                            {
                              v280 += 16;
                              v301 = *(v5 + 184);
                              if (v280 != v297)
                              {
                                do
                                {
                                  v302 = v280;
                                  if (*(v280 + 8))
                                  {
                                    v301 = v280;
                                    goto LABEL_344;
                                  }

                                  v280 += 16;
                                }

                                while (v302 + 2 != v297);
                                v301 = *(v5 + 184);
LABEL_344:
                                v298 = *v302;
                              }
                            }
                          }

                          while (v280 != v297);
                        }

                        else
                        {
                          v301 = v280;
                        }

                        if (v301 != v297 && v298[2] != v298[1])
                        {
                          result = sub_B612F4(v5 + 128, &v346, 0, 0, 0);
                          v210 = v320;
                          if ((result & 0x100) != 0)
                          {
                            LODWORD(v344) = 0;
                            v303 = *(v5 + 216);
                            v304 = (v303 + (*(sub_B5FB1C(v5 + 128, &v344) + 4) << 6));
                            LODWORD(v344) = 0;
                            v305 = *(v5 + 216);
                            v306 = sub_B5FB1C(v5 + 128, &v344);
                            v307 = (v305 + (*(v306 + 8) << 6));
                            v308 = v307;
                            if (v304 != v307)
                            {
                              v308 = v304;
                              while (*(v308 + 7) != 0x7FFFFFFF)
                              {
                                v308 += 4;
                                if (v308 == v307)
                                {
                                  v308 = (v305 + (*(v306 + 8) << 6));
                                  break;
                                }
                              }

                              if (v307 != v308)
                              {
                                for (j = v308 + 4; j != v307; j += 4)
                                {
                                  if (*(j + 7) != 0x7FFFFFFF)
                                  {
                                    v312 = *j;
                                    v313 = j[1];
                                    v314 = j[3];
                                    v308[2] = j[2];
                                    v308[3] = v314;
                                    *v308 = v312;
                                    v308[1] = v313;
                                    v308 += 4;
                                  }
                                }
                              }
                            }

                            LODWORD(v344) = 0;
                            v309 = *(v5 + 216);
                            v310 = sub_B5FB1C(v5 + 128, &v344);
                            result = sub_B5F764(v5 + 128, 0, v308, (v309 + (*(v310 + 8) << 6)));
                          }

                          goto LABEL_286;
                        }
                      }
                    }
                  }

                  result = sub_B60E40((v5 + 128), 0, &v346);
                  v210 = v320;
LABEL_286:
                  ++v239;
                }

                while (v239 != v235);
              }
            }
          }
        }

LABEL_268:
        v20 = v332;
        v19 = v333 + 2;
        v333 += 2;
        if (*(v329 + 16) == 1 && (v330 & 1) == 0 && v19 >= v332 && v19 < v334)
        {
          do
          {
            v236 = __ROR8__(*v19, 32);
            if (HIDWORD(v236) == 1 && (v236 + 3) < 2)
            {
              break;
            }

            result = sub_2D5204(**(v329 + 4120));
            v20 = v332;
            v19 = v333;
            if (result)
            {
              break;
            }

            v19 = v333 + 2;
            v333 = v19;
          }

          while (v19 >= v332 && v19 < v334);
        }
      }

      v13 = v341 + 4;
      v341 = v13;
    }

    while (v13 < v342);
  }

  return result;
}