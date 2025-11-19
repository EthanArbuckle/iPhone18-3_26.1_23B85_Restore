uint64_t sub_10530FC(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 32);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_2674F98[v2])(&v3, v1);
  }

  *(v1 + 32) = 0;
  return result;
}

void sub_1053154(uint64_t *a1, void *a2, void *a3)
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
    (off_2674F98[v4])(&v10, v3);
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

__n128 sub_1053268(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_2674F98[v4])(&v8, v3);
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

uint64_t sub_1053300(uint64_t a1)
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
        (off_2674FC8[v10])(&v14, v9);
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
        (off_2674F98[v11])(&v15, v1);
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

__n128 sub_10534D0(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

__n128 sub_10534E4(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

uint64_t sub_10534F4(uint64_t a1, unsigned int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), a2);
  if (*(a1 + 16) - *a1 <= 0x3F7uLL)
  {
    operator new();
  }

  return a1;
}

void sub_10535A8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E2018(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10535CC(uint64_t a1, uint64_t *a2)
{
  *a1 = a2;
  *(a1 + 34) = 0;
  *(a1 + 24) = 0x3E4CCCCD3F000000;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 32;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v3 = (a1 + 72);
  *(a1 + 80) = 0;
  v4 = a1 + 80;
  *(a1 + 8) = xmmword_2267060;
  *(a1 + 32) = 0;
  v5 = sub_101E508(a2);
  sub_101EA90((a1 + 88), v5);
  *(a1 + 33) = 1;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v6 = malloc_type_malloc(8 * *(a1 + 64), 0x100004000313F17uLL);
  *(a1 + 80) = v6;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = (v6 + 8 * v7);
    v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9 < 0xF || v6 < v4 && v3 < v8)
    {
      goto LABEL_12;
    }

    v10 = v9 + 1;
    v11 = vld1q_dup_f64(v3);
    v12 = v6 + 1;
    v13 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    v6 = (v6 + 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL));
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_12:
      do
      {
        v6->f64[0] = *v3;
        v6 = (v6 + 8);
      }

      while (v6 != v8);
    }
  }

  return a1;
}

void sub_1053724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_34BE0((v11 + 88));
  if (!*v12)
  {
    _Unwind_Resume(a1);
  }

  free(*v12);
  _Unwind_Resume(a1);
}

void *sub_1053784(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8((v5 + 103), a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1053888(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10538E8(uint64_t a1, unsigned int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), a2);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) <= 0x7E)
  {
    operator new();
  }

  return a1;
}

void sub_10539AC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E2018(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10539D0(uint64_t a1, unsigned int *a2)
{
  v3 = sub_101E790(a1, *a2, 1);
  if (!v3)
  {
    return -1;
  }

  v4 = &v3[-*v3];
  if (*v4 < 9u)
  {
    return -1;
  }

  v5 = *(v4 + 4);
  if (!v5)
  {
    return -1;
  }

  v6 = sub_101E640(&v3[v5 + *&v3[v5]], a2[1]);
  v7 = (v6 - *v6);
  if (*v7 < 0xDu)
  {
    return -1;
  }

  v8 = v7[6];
  if (!v8)
  {
    return -1;
  }

  v9 = v6 + v8;
  LODWORD(v10) = *(v9 + 4);
  if (v10 >= 0xFFFFFFFE)
  {
    v10 = 4294967294;
  }

  else
  {
    v10 = v10;
  }

  v15 = *v9 | (v10 << 32);
  v16 = 0x7FFFFFFF;
  v11 = *(v9 + 8);
  LODWORD(v9) = *(v9 + 12);
  if (v9 >= 0xFFFFFFFE)
  {
    v9 = 4294967294;
  }

  else
  {
    v9 = v9;
  }

  v13 = v11 | (v9 << 32);
  v14 = 0x7FFFFFFF;
  sub_320C0(&v17, &v15, &v13);
  return v17;
}

double sub_1053AC0(uint64_t a1)
{
  LODWORD(result) = *(a1 + 16);
  v2 = 4;
  if (!vcvts_n_u32_f32(*&result, 2uLL))
  {
    do
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v2 *= 2;
    }

    while (!(*&result * v2));
  }

  if (*(a1 + 48) || v2 != *(a1 + 56))
  {

    *&result = sub_D5B9C0(a1, v2).u64[0];
  }

  return result;
}

void sub_1053B80(uint64_t a1, unint64_t *a2, int *a3)
{
  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  if (v7 != v6)
  {
    v8 = v6 - v7 - 24;
    v9 = *(a1 + 88);
    if (v8 < 0x18)
    {
      goto LABEL_52;
    }

    v10 = v8 / 0x18 + 1;
    v9 = &v7[24 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
    v11 = (v7 + 24);
    v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v13 = *v11;
      *(v11 - 2) = *(v11 - 3);
      v11[1] = v13;
      v11 += 6;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_52:
      do
      {
        *(v9 + 1) = *v9;
        v9 += 24;
      }

      while (v9 != v6);
    }
  }

  v14 = *a1;
  v15 = *a2;
  v16 = *a2 >> 16;
  v51 = 1;
  v17 = sub_101F374(*v14, HIDWORD(v15) & 0xFFFF0000FFFFFFFFLL | (v16 << 32), &v51);
  v18 = *a3;
  v19 = v18 + 1;
  v20 = sub_101E508(*a1);
  if (v18 + 1 > v20)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = v20;
  }

  if (v19 < v20)
  {
    while (1)
    {
      v23 = *a1;
      v24 = *a2;
      v25 = *a2 >> 16;
      v52 = v19;
      v26 = sub_101F854(*v23, HIDWORD(v24) & 0xFFFF0000FFFFFFFFLL | (v25 << 32), (v24 >> 1) & 1, &v52);
      if (v26 > 0xFFFFFFFEFFFFFFFFLL || v26 == 0)
      {
        goto LABEL_14;
      }

      v28 = *(a1 + 88) + 24 * v19;
      v30 = *(v28 + 8);
      v29 = *(v28 + 16);
      if (v30 < v29)
      {
        break;
      }

      v31 = *v28;
      v32 = v30 - *v28;
      v33 = v32 >> 3;
      v34 = (v32 >> 3) + 1;
      if (v34 >> 61)
      {
        goto LABEL_48;
      }

      v35 = v29 - v31;
      if (v35 >> 2 > v34)
      {
        v34 = v35 >> 2;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (!(v36 >> 61))
        {
          operator new();
        }

LABEL_49:
        sub_1808();
      }

      *(8 * v33) = v26;
      v37 = 8 * v33 + 8;
      memcpy(0, v31, v32);
      *v28 = 0;
      *(v28 + 8) = v37;
      *(v28 + 16) = 0;
      if (v31)
      {
        operator delete(v31);
      }

      *(v28 + 8) = v37;
      if (v17)
      {
        goto LABEL_34;
      }

LABEL_14:
      if (v21 == ++v19)
      {
        return;
      }
    }

    *v30 = v26;
    *(v28 + 8) = v30 + 1;
    if (!v17)
    {
      goto LABEL_14;
    }

LABEL_34:
    v38 = *(a1 + 88) + 24 * v19;
    v39 = *a1;
    v40 = *a2;
    v41 = *a2 >> 16;
    v53 = v19;
    v42 = sub_101F854(*v39, HIDWORD(v40) & 0xFFFF0000FFFFFFFFLL | (v41 << 32), (v40 & 2) == 0, &v53);
    v44 = *(v38 + 8);
    v43 = *(v38 + 16);
    if (v44 < v43)
    {
      *v44 = v42;
      v22 = (v44 + 1);
    }

    else
    {
      v45 = *v38;
      v46 = v44 - *v38;
      v47 = v46 >> 3;
      v48 = (v46 >> 3) + 1;
      if (v48 >> 61)
      {
LABEL_48:
        sub_1794();
      }

      v49 = v43 - v45;
      if (v49 >> 2 > v48)
      {
        v48 = v49 >> 2;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF8)
      {
        v50 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        if (!(v50 >> 61))
        {
          operator new();
        }

        goto LABEL_49;
      }

      *(8 * v47) = v42;
      v22 = 8 * v47 + 8;
      memcpy(0, v45, v46);
      *v38 = 0;
      *(v38 + 8) = v22;
      *(v38 + 16) = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    *(v38 + 8) = v22;
    goto LABEL_14;
  }
}

void sub_1053EDC(uint64_t **a1, void *a2)
{
  if (*a2 == a2[1])
  {
    return;
  }

  v158 = 0;
  v156 = 0x3E4CCCCD3F000000;
  v159 = 0;
  v160 = 0xFFFFFFFF00000000;
  v161 = 0;
  v162 = 0;
  v155 = xmmword_2267060;
  v157 = 256;
  v163 = 32;
  v164 = 0xFFFFFFFF00000000;
  v165 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  v2 = vdupq_n_s64(0xFFFFFFFF00000000);
  v3 = (v165 + 16);
  v4 = 32;
  do
  {
    v3[-1] = v2;
    *v3 = v2;
    v3 += 2;
    v4 -= 4;
  }

  while (v4);
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v5 = a1[12] - a1[11];
  if (!v5)
  {
    goto LABEL_219;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v148 = 0;
  v149 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v138 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  do
  {
    v147 = v11;
    __p = v9;
    if (v11 < (a2[1] - *a2) >> 2)
    {
      v140 = *(*a2 + 4 * v11);
      if (v140)
      {
        v14 = v10;
        v16 = a1[11];
        v15 = a1[12];
        v17 = &v16[3 * v11];
        if (&v152 != v17)
        {
          sub_31F64(&v152, *v17, v17[1], (v17[1] - *v17) >> 3);
          v7 = v152;
          v6 = v153;
        }

        v18 = 126 - 2 * __clz((v6 - v7) >> 3);
        if (v6 == v7)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        sub_2D31D4(v7, v6, v166, v19, 1);
        v20 = v152;
        v6 = v153;
        if (v152 != v153)
        {
          v21 = v152;
          do
          {
            v22 = v21 + 2;
            if (v21 + 2 == v153)
            {
              goto LABEL_25;
            }

            v23 = *v21;
            v24 = v21[1];
            LODWORD(v25) = v21[2];
            v26 = v21[3];
            v27 = v23 == v25 && v24 == v26;
            v21 = v22;
          }

          while (!v27);
          v28 = (v22 + 2);
          v29 = v22 - 2;
          if (v28 == v153)
          {
            v30 = (v29 + 2);
            if (v29 + 2 == v153)
            {
              goto LABEL_25;
            }

LABEL_34:
            v6 = v30;
            v153 = v30;
            if (v20 == v30)
            {
              goto LABEL_45;
            }

            goto LABEL_39;
          }

          do
          {
            if (v25 != v28->i32[0] || v29[1] != v28->i32[1])
            {
              v25 = v28->i64[0];
              *(v29 + 1) = v28->i64[0];
              v29 += 2;
            }

            v28 = (v28 + 8);
          }

          while (v28 != v6);
          v6 = v153;
          v30 = (v29 + 2);
          if (v29 + 2 != v153)
          {
            goto LABEL_34;
          }
        }

LABEL_25:
        if (v20 == v6)
        {
LABEL_45:
          v141 = 0;
          v143 = -1 - 0x5555555555555555 * (v15 - v16);
          v13 = v8;
          v10 = v14;
          while (1)
          {
            v150 = v6;
            if (v20 == v6)
            {
              goto LABEL_47;
            }

            do
            {
              while (1)
              {
                while (1)
                {
                  v34 = v13;
                  v35 = v20->i64[0];
                  v36 = **a1;
                  v167 = 1;
                  v168 = v35;
                  v166[0] = &v167;
                  v166[1] = &v168;
                  v37 = *(v36 + 3856) + 1;
                  *(v36 + 3856) = v37;
                  if (!*v36)
                  {
                    goto LABEL_211;
                  }

                  if (*(v36 + 688) == v35)
                  {
                    break;
                  }

                  if (*(v36 + 712) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 720) = v37;
                    v38 = *(v36 + 728);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 736) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 744) = v37;
                    v38 = *(v36 + 752);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 760) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 768) = v37;
                    v38 = *(v36 + 776);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  v39 = *(v36 + 744);
                  v40 = *(v36 + 720);
                  v41 = *(v36 + 696);
                  v42 = *(v36 + 768);
                  v38 = sub_2D52A4(*v36, 7, v35, 1);
                  if (v41 >= v37)
                  {
                    v43 = v37;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  v44 = 28;
                  if (v41 >= v37)
                  {
                    v44 = 0;
                  }

                  if (v40 < v43)
                  {
                    v43 = v40;
                    v44 = 29;
                  }

                  if (v39 < v43)
                  {
                    v44 = 30;
                    v43 = v39;
                  }

                  v45 = v42 >= v43;
                  v46 = 31;
                  if (v45)
                  {
                    v46 = v44;
                  }

                  v47 = v36 + 16 + 24 * v46;
                  *v47 = v168;
                  *(v47 + 8) = *(v36 + 3856);
                  *(v47 + 16) = v38;
                  if (v38)
                  {
                    goto LABEL_78;
                  }

                  sub_101E964(v166);
LABEL_211:
                  v13 = v34;
                  v20 = (v20 + 8);
                  if (v20 == v150)
                  {
                    goto LABEL_46;
                  }
                }

                ++*(v36 + 3864);
                *(v36 + 696) = v37;
                v38 = *(v36 + 704);
                if (!v38)
                {
                  goto LABEL_211;
                }

LABEL_78:
                v48 = (v38 + *v38);
                v49 = (v48 - *v48);
                if (*v49 < 9u)
                {
                  goto LABEL_211;
                }

                v50 = v49[4];
                if (!v50)
                {
                  goto LABEL_211;
                }

                v51 = sub_101E640((v48 + v50 + *(v48 + v50)), HIDWORD(v35));
                v52 = (v51 - *v51);
                if (*v52 < 9u)
                {
                  goto LABEL_211;
                }

                v53 = v52[4];
                v54 = v150;
                v13 = v34;
                if (v53)
                {
                  v55 = (v51 + v53 + *(v51 + v53));
                  v56 = *v55;
                  if (v56)
                  {
                    break;
                  }
                }

LABEL_51:
                v20 = (v20 + 8);
                if (v20 == v54)
                {
                  goto LABEL_46;
                }
              }

              v57 = 8 * v56;
              v58 = (v55 + 1);
              v59 = __p;
              v60 = __p;
              do
              {
                while (v59 < v10)
                {
                  v61 = *v58++;
                  *v59 = v61;
                  v59 += 8;
                  v57 -= 8;
                  if (!v57)
                  {
                    goto LABEL_96;
                  }
                }

                v62 = v59 - v60;
                v63 = (v59 - v60) >> 3;
                v64 = v63 + 1;
                if ((v63 + 1) >> 61)
                {
                  sub_1794();
                }

                if ((v10 - v60) >> 2 > v64)
                {
                  v64 = (v10 - v60) >> 2;
                }

                if (v10 - v60 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v65 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v65 = v64;
                }

                if (v65)
                {
                  if (!(v65 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v63) = *v58;
                v59 = (8 * v63 + 8);
                memcpy(0, v60, v62);
                v60 = 0;
                v10 = 0;
                ++v58;
                v57 -= 8;
              }

              while (v57);
LABEL_96:
              if (v60 != v59)
              {
                v66 = v60;
                __pa = v59;
                v146 = v10;
                v13 = v34;
                while (1)
                {
                  if (v162 != v161)
                  {
                    v68 = v163 - 1;
                    v69 = *v66;
                    v70 = __ROR8__(*v66, 32);
                    v71 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) >> 33));
                    v72 = (v71 ^ (v71 >> 33)) & (v163 - 1);
                    v73 = (v165 + 8 * v72);
                    v75 = *v73;
                    v74 = v73[1];
                    if (v164 != *v73 || HIDWORD(v164) != v74)
                    {
                      if (v161)
                      {
                        v77 = 1;
                        while (*&v160 == __PAIR64__(v74, v75) || __PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v77) & v68;
                          v78 = (v165 + 8 * v72);
                          v75 = *v78;
                          v74 = v78[1];
                          ++v77;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      else
                      {
                        v80 = 1;
                        while (__PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v80) & v68;
                          v81 = (v165 + 8 * v72);
                          v75 = *v81;
                          v74 = v81[1];
                          ++v80;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      if (v72 != -1 && v165 + 8 * v72 != v165 + 8 * v163)
                      {
                        goto LABEL_100;
                      }
                    }
                  }

LABEL_123:
                  if (v149 >= v148)
                  {
                    v83 = v149 - v13;
                    v84 = (v149 - v13) >> 3;
                    v85 = v84 + 1;
                    if ((v84 + 1) >> 61)
                    {
                      sub_1794();
                    }

                    if ((v148 - v13) >> 2 > v85)
                    {
                      v85 = (v148 - v13) >> 2;
                    }

                    if (v148 - v13 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v86 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v86 = v85;
                    }

                    if (v86)
                    {
                      if (!(v86 >> 61))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v87 = v13;
                    v13 = 0;
                    *(8 * v84) = *v66;
                    v148 = 0;
                    v149 = (8 * v84 + 8);
                    memcpy(0, v87, v83);
                    if (v87)
                    {
                      operator delete(v87);
                    }

                    v10 = v146;
                  }

                  else
                  {
                    v149->i64[0] = *v66;
                    v149 = (v149 + 8);
                  }

                  sub_101F9D8(&v155, 1);
                  if (sub_10550EC(&v155, v66) == -1)
                  {
                    if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(exception, "insert overflow");
                    }

                    if (v161 && (v89 = vceq_s32(v160, *(v165 + 8 * v88)), (v89.i32[0] & v89.i32[1] & 1) != 0))
                    {
                      --v161;
                    }

                    else
                    {
                      ++v162;
                    }

                    *(v165 + v88) = *v66;
                  }

                  v90 = &a1[11][3 * v147];
                  v92 = *(v90 + 8);
                  v91 = *(v90 + 16);
                  if (v92 >= v91)
                  {
                    break;
                  }

                  *v92 = *v66;
                  *(v90 + 8) = v92 + 1;
                  if (v147 != v143)
                  {
                    goto LABEL_159;
                  }

LABEL_100:
                  v66 += 8;
                  if (v66 == v59)
                  {
                    __p = v60;
                    goto LABEL_51;
                  }
                }

                v93 = *v90;
                v94 = v92 - *v90;
                v95 = (v94 >> 3) + 1;
                if (v95 >> 61)
                {
                  sub_1794();
                }

                v96 = v13;
                v97 = v91 - v93;
                if (v97 >> 2 > v95)
                {
                  v95 = v97 >> 2;
                }

                if (v97 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v98 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v98 = v95;
                }

                if (v98)
                {
                  if (!(v98 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v99 = (8 * (v94 >> 3));
                *v99 = *v66;
                v100 = v99 + 1;
                memcpy(0, v93, v94);
                *v90 = 0;
                *(v90 + 8) = v100;
                *(v90 + 16) = 0;
                if (v93)
                {
                  operator delete(v93);
                }

                v59 = __pa;
                v10 = v146;
                v13 = v96;
                *(v90 + 8) = v100;
                if (v147 == v143)
                {
                  goto LABEL_100;
                }

LABEL_159:
                v142 = v13;
                v101 = a1[11];
                v102 = *v66;
                v103 = **a1;
                if (atomic_load_explicit(&qword_2732E58, memory_order_acquire))
                {
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 == v102)
                  {
                    goto LABEL_161;
                  }

LABEL_162:
                  v105 = *(v103 + 3856) + 1;
                  *(v103 + 3856) = v105;
                  if (*v103)
                  {
                    if (*(v103 + 688) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 696) = v105;
                      v106 = *(v103 + 704);
                      if (!v106)
                      {
                        goto LABEL_193;
                      }

LABEL_188:
                      v113 = (v106 + *v106);
                      v114 = (v113 - *v113);
                      if (*v114 >= 9u)
                      {
                        v115 = v114[4];
                        if (v115)
                        {
                          v116 = sub_101E640((v113 + v115 + *(v113 + v115)), v104);
                          v117 = (v116 - *v116);
                          if (*v117 < 0xBu)
                          {
                            v120 = 0;
                            v119 = 0xFFFFFFFF00000000;
                            v54 = v150;
                          }

                          else
                          {
                            v118 = v117[5];
                            v54 = v150;
                            if (!v118)
                            {
                              goto LABEL_193;
                            }

                            v120 = *(v116 + v118);
                            v119 = v120 & 0xFFFFFFFF00000000;
                            v120 = v120;
                          }

LABEL_194:
                          v121 = &v101[3 * v147];
                          v122 = v120 | v119;
                          v124 = v121[4];
                          v123 = v121[5];
                          if (v124 < v123)
                          {
                            *v124 = v122;
                            v67 = v124 + 8;
                            v10 = v146;
                          }

                          else
                          {
                            v125 = v121[3];
                            v126 = v124 - v125;
                            v127 = (v124 - v125) >> 3;
                            v128 = v127 + 1;
                            if ((v127 + 1) >> 61)
                            {
                              sub_1794();
                            }

                            v129 = v123 - v125;
                            if (v129 >> 2 > v128)
                            {
                              v128 = v129 >> 2;
                            }

                            if (v129 >= 0x7FFFFFFFFFFFFFF8)
                            {
                              v130 = 0x1FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v130 = v128;
                            }

                            if (v130)
                            {
                              if (!(v130 >> 61))
                              {
                                operator new();
                              }

                              sub_1808();
                            }

                            v131 = (v124 - v125) >> 3;
                            v132 = (8 * v127);
                            v133 = (8 * v127 - 8 * v131);
                            *v132 = v122;
                            v67 = v132 + 1;
                            memcpy(v133, v125, v126);
                            v121[3] = v133;
                            v121[4] = v67;
                            v121[5] = 0;
                            if (v125)
                            {
                              operator delete(v125);
                            }

                            v10 = v146;
                            v54 = v150;
                          }

                          v13 = v142;
                          v121[4] = v67;
                          v59 = __pa;
                          goto LABEL_100;
                        }
                      }
                    }

                    else if (*(v103 + 712) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 720) = v105;
                      v106 = *(v103 + 728);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 736) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 744) = v105;
                      v106 = *(v103 + 752);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 760) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 768) = v105;
                      v106 = *(v103 + 776);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      v107 = *(v103 + 720);
                      v108 = *(v103 + 696);
                      v136 = *(v103 + 768);
                      v137 = *(v103 + 744);
                      v106 = sub_2D52A4(*v103, 7, v102, 1);
                      if (v108 >= v105)
                      {
                        v109 = v105;
                      }

                      else
                      {
                        v109 = v108;
                      }

                      v110 = 28;
                      if (v108 >= v105)
                      {
                        v110 = 0;
                      }

                      if (v107 < v109)
                      {
                        v109 = v107;
                        v110 = 29;
                      }

                      if (v137 < v109)
                      {
                        v110 = 30;
                        v109 = v137;
                      }

                      v45 = v136 >= v109;
                      v111 = 31;
                      if (v45)
                      {
                        v111 = v110;
                      }

                      v112 = v103 + 16 + 24 * v111;
                      *v112 = v102;
                      *(v112 + 8) = *(v103 + 3856);
                      *(v112 + 16) = v106;
                      v54 = v150;
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }
                  }
                }

                else
                {
                  sub_21E6BE8();
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 != v102)
                  {
                    goto LABEL_162;
                  }

LABEL_161:
                  if (HIDWORD(qword_2732E50) != v104)
                  {
                    goto LABEL_162;
                  }
                }

LABEL_193:
                v120 = 0;
                v119 = 0xFFFFFFFF00000000;
                goto LABEL_194;
              }

              __p = v60;
              v13 = v34;
              v20 = (v20 + 8);
            }

            while (v20 != v150);
LABEL_46:
            v20 = v152;
LABEL_47:
            v7 = v13;
            v6 = v149;
            v13 = v20;
            v152 = v7;
            v153 = v149;
            v20 = v7;
            v12 = v154;
            v154 = v148;
            v148 = v12;
            v149 = v13;
            v8 = v13;
            if (++v141 == v140)
            {
              goto LABEL_7;
            }
          }
        }

        do
        {
LABEL_39:
          sub_101F9D8(&v155, 1);
          if (sub_10550EC(&v155, v20) == -1)
          {
            if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              v135 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v135, "insert overflow");
            }

            if (v161 && (v33 = vceq_s32(v160, *(v165 + 8 * v32)), (v33.i32[0] & v33.i32[1] & 1) != 0))
            {
              --v161;
            }

            else
            {
              ++v162;
            }

            *(v165 + v32) = v20->i64[0];
          }

          v20 = (v20 + 8);
        }

        while (v20 != v6);
        v20 = v152;
        v6 = v153;
        goto LABEL_45;
      }
    }

    v12 = v148;
    v13 = v149;
LABEL_7:
    v11 = v147 + 1;
    v148 = v12;
    v149 = v13;
    v9 = __p;
  }

  while (v147 + 1 != v138);
  if (v8)
  {
    operator delete(v8);
  }

LABEL_219:
  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  if (v165)
  {
    free(v165);
  }
}

void sub_1054DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (!a36)
  {
    _Unwind_Resume(exception_object);
  }

  free(a36);
  _Unwind_Resume(exception_object);
}

int32x2_t *sub_1054E9C(int32x2_t *result)
{
  v1 = result[11];
  v2 = result[12];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *v1;
      v5 = v1[1];
      while (v4 != v5)
      {
        if (!*v4 || *(v4 + 1) == -1)
        {
          goto LABEL_7;
        }

        sub_101F9D8(&v3[1], 1);
        v6 = *&v3[8] - 1;
        v7 = *v4;
        v8 = __ROR8__(*v4, 32);
        v9 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) >> 33));
        v10 = v9 ^ (v9 >> 33);
        v11 = v3[10];
        v12 = v3[9].i32[0];
        v13 = v3[9].i32[1];
        v14 = v10 & v6;
        v15 = (*&v11 + 8 * (v10 & v6));
        result = *v15;
        v16 = v15[1];
        v17 = v3[6];
        if (v12 == result && v13 == v16)
        {
          goto LABEL_28;
        }

        if (v17)
        {
          v19 = -1;
          v20 = 1;
          do
          {
            if (v3[5].i32[0] == result && v3[5].i32[1] == v16)
            {
              if (v19 == -1)
              {
                v19 = v14;
              }
            }

            else if (__PAIR64__(v16, result) == v7)
            {
              goto LABEL_39;
            }

            v14 = (v14 + v20) & v6;
            v21 = (*&v11 + 8 * v14);
            result = *v21;
            v16 = v21[1];
            ++v20;
          }

          while (v12 != result || v13 != v16);
          if (v19 == -1)
          {
LABEL_28:
            v19 = v14;
          }

          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
            goto LABEL_41;
          }

LABEL_30:
          if (*&v17 && (v24 = vceq_s32(v3[5], *(*&v11 + 8 * v19)), (v24.i32[0] & v24.i32[1] & 1) != 0))
          {
            v3[6] = (*&v17 - 1);
          }

          else
          {
            v3[7] = (*&v23 + 1);
          }

          *(*&v11 + 8 * v19) = *v4;
          goto LABEL_7;
        }

        v25 = 1;
        while (__PAIR64__(v16, result) != v7)
        {
          v14 = (v14 + v25) & v6;
          v26 = (*&v11 + 8 * v14);
          result = *v26;
          v16 = v26[1];
          ++v25;
          if (v12 == result && v13 == v16)
          {
            goto LABEL_28;
          }
        }

LABEL_39:
        if (v14 == -1)
        {
          v19 = -1;
          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
LABEL_41:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }

          goto LABEL_30;
        }

LABEL_7:
        ++v4;
      }

      v1 += 3;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_10550EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56) - 1;
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = *(a1 + 72);
  v9 = *(a1 + 64);
  v10 = *(a1 + 68);
  result = v7 & v3;
  v12 = (v8 + 8 * (v7 & v3));
  v14 = *v12;
  v13 = v12[1];
  if (v9 == *v12 && v10 == v13)
  {
    return -1;
  }

  if (*(a1 + 40))
  {
    v17 = *(a1 + 32);
    v16 = *(a1 + 36);
    v18 = -1;
    v19 = 1;
    do
    {
      if (v17 == v14 && v16 == v13)
      {
        if (v18 == -1)
        {
          v18 = result;
        }
      }

      else if (__PAIR64__(v13, v14) == v4)
      {
        return result;
      }

      result = (result + v19) & v3;
      v20 = (v8 + 8 * result);
      v14 = *v20;
      v13 = v20[1];
      ++v19;
    }

    while (v9 != v14 || v10 != v13);
    if (v18 != -1)
    {
      return -1;
    }

    return -1;
  }

  v22 = 1;
  while (__PAIR64__(v13, v14) != v4)
  {
    result = (result + v22) & v3;
    v23 = (v8 + 8 * result);
    v14 = *v23;
    v13 = v23[1];
    ++v22;
    if (v9 == v14 && v10 == v13)
    {
      return -1;
    }
  }

  return result;
}

unint64_t sub_1055218(uint64_t a1, unsigned int *a2)
{
  if (atomic_load_explicit(&qword_2732E58, memory_order_acquire))
  {
    v3 = *a2;
    if (v3 != qword_2732E50)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = a1;
    sub_21E13C0();
    a1 = v11;
    v3 = *a2;
    if (*a2 != qword_2732E50)
    {
      goto LABEL_4;
    }
  }

  if (a2[1] == HIDWORD(qword_2732E50))
  {
LABEL_10:
    LODWORD(v6) = 0;
    return v6 | 0xFFFFFFFF00000000;
  }

LABEL_4:
  v4 = sub_101E790(a1, v3, 1);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = &v4[-*v4];
  if (*v5 < 9u)
  {
    goto LABEL_10;
  }

  v6 = *(v5 + 4);
  if (v6)
  {
    v7 = sub_101E640(&v4[v6 + *&v4[v6]], a2[1]);
    v8 = (v7 - *v7);
    if (*v8 >= 0xBu)
    {
      v9 = v8[5];
      if (v9)
      {
        return *(v7 + v9);
      }
    }

    goto LABEL_10;
  }

  return v6 | 0xFFFFFFFF00000000;
}

unint64_t sub_1055328@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (a1 + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  while (1)
  {
    v12 = v10 & v11;
    v13 = *(*v9 + v12);
    v14 = ((v13 ^ (0x101010101010101 * (v8 & 0x7F))) - 0x101010101010101) & ~(v13 ^ (0x101010101010101 * (v8 & 0x7F))) & 0x8080808080808080;
    if (v14)
    {
      break;
    }

LABEL_5:
    if ((v13 & (~v13 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_1055460(v9, v8);
      *a3 = v9;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v10 = v3 + v12;
  }

  while (1)
  {
    result = (v12 + (__clz(__rbit64(v14)) >> 3)) & v11;
    if (*(v9[1] + 32 * result) == v4)
    {
      break;
    }

    v14 &= v14 - 1;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  *a3 = v9;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_1055460(void *a1, unint64_t a2)
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
      sub_1055558(a1);
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

uint64_t sub_1055558(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_1055588();
  }

  return sub_105576C(a1);
}

uint64_t sub_105576C(uint64_t result)
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
      goto LABEL_27;
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
LABEL_27:
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
        v18 = 32 * i;
        v19 = *(*(result + 8) + 32 * i);
        v20 = ((0x2127599BF4325C37 * (v19 ^ (v19 >> 23))) ^ ~((0x2127599BF4325C37 * (v19 ^ (v19 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v19 ^ (v19 >> 23))) ^ ((0x2127599BF4325C37 * (v19 ^ (v19 >> 23))) >> 47)) << 21);
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
            v28 = (v27 + 32 * v16);
            v29 = v27 + 32 * i;
            *v28 = *v29;
            v28[1] = 0;
            v28[2] = 0;
            v28[3] = 0;
            *(v28 + 1) = *(v29 + 8);
            v28[3] = *(v29 + 24);
            *(v29 + 16) = 0;
            *(v29 + 24) = 0;
            *(v29 + 8) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v30 = (v27 + v18);
            v31 = *v30;
            v32 = v30[3];
            v33 = *(v30 + 1);
            v30[2] = 0;
            v30[3] = 0;
            v30[1] = 0;
            v34 = *(result + 8);
            v35 = (v34 + v18);
            v36 = v34 + 32 * v16;
            *v35 = *v36;
            v35[1] = 0;
            v35[2] = 0;
            v35[3] = 0;
            *(v35 + 1) = *(v36 + 8);
            v35[3] = *(v36 + 24);
            *(v36 + 16) = 0;
            *(v36 + 24) = 0;
            *(v36 + 8) = 0;
            v37 = *(result + 8) + 32 * v16;
            *v37 = v31;
            *(v37 + 8) = v33;
            *(v37 + 24) = v32;
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

    *(result + 40) = v40 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

void *sub_1055A68(void ***a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = (32 * v2);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_18[8 * v2] = a2[3];
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = (v7 + *a1 - v10);
    do
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      *v13 = *v12;
      v14 = v12[3];
      v13[2] = v12[2];
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v13[3] = v14;
      v12 += 4;
      v13 += 4;
    }

    while (v12 != v10);
    do
    {
      v15 = *v9;
      if (*v9)
      {
        v9[1] = v15;
        operator delete(v15);
      }

      v9 += 4;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = (v7 + 4);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 4;
}

void sub_1055C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_DA13F4(va);
  _Unwind_Resume(a1);
}

double *sub_1055C88(double *result, unsigned int *a2, unsigned __int16 *a3, void *a4)
{
  a4[1] = *a4;
  if (!*(result + 970))
  {
    v30[1] = v7;
    v30[2] = v6;
    v30[9] = v4;
    v30[10] = v5;
    result = sub_3BF72C((result + 1), *a2, 1);
    if (result)
    {
      v11 = (result - *result);
      if (*v11 >= 9u)
      {
        v12 = v11[4];
        if (v12)
        {
          v13 = (result + v12 + *(result + v12));
          v14 = a2[1];
          if (*v13 > v14)
          {
            v15 = (&v13[v14 + 1] + v13[v14 + 1]);
            v16 = (v15 - *v15);
            if (*v16 >= 5u)
            {
              v17 = v16[2];
              if (v17)
              {
                v18 = (v15 + v17 + *(v15 + v17));
                v19 = *a3;
                if (*v18 > v19)
                {
                  v20 = (&v18[v19 + 1] + v18[v19 + 1]);
                  v21 = (v20 - *v20);
                  if (*v21 >= 5u)
                  {
                    v22 = v21[2];
                    if (v22)
                    {
                      if (*(v20 + v22 + *(v20 + v22)) > ((a4[2] - *a4) >> 5))
                      {
                        operator new();
                      }

                      v23 = (v20 - *v20);
                      if (*v23 < 5u)
                      {
                        v24 = 0;
                      }

                      else
                      {
                        v24 = v23[2];
                        if (v24)
                        {
                          v24 = (v24 + v20 + *(v24 + v20));
                        }
                      }

                      v25 = *v24;
                      if (v25)
                      {
                        v26 = 12 * v25;
                        result = a4[1];
                        v27 = v24 + 7;
                        do
                        {
                          while (1)
                          {
                            v30[0] = v27 - 5;
                            if (result < a4[2])
                            {
                              break;
                            }

                            result = sub_10561F8(a4, v30);
                            a4[1] = result;
                            v27 += 6;
                            v26 -= 12;
                            if (!v26)
                            {
                              return result;
                            }
                          }

                          *(result + 2) = -1;
                          result[2] = -NAN;
                          result[3] = NAN;
                          *result = *(v27 - 5) | (*(v27 - 3) << 32);
                          *(result + 2) = *(v27 - 2);
                          v28 = *(v27 - 1);
                          if (v28 != 0xFFFF)
                          {
                            v29 = *v27;
                            *(result + 4) = v28;
                            *(result + 5) = v29;
                            result[3] = 0.0;
                          }

                          result += 4;
                          a4[1] = result;
                          v27 += 6;
                          v26 -= 12;
                        }

                        while (v26);
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

  return result;
}

char *sub_1055EF8(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 1744) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1752) = v3;
    v4 = *(a1 + 1760);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1768) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1776) = v3;
    v4 = *(a1 + 1784);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1792) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1800) = v3;
    v4 = *(a1 + 1808);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1816) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1824) = v3;
    v4 = *(a1 + 1832);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1800);
    v8 = *(a1 + 1776);
    v9 = *(a1 + 1752);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 1752);
    }

    v11 = 72;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1776);
    }

    v13 = 73;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 1800);
    }

    v15 = *(a1 + 1824);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 74;
    }

    v18 = sub_2D52A4(*a1, 18, a2, 1);
    v19 = 75;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_10560CC(v21);
  return 0;
}

uint64_t sub_10560CC(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x12u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_10561C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10561F8(uint64_t a1, unsigned __int16 **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  v8 = *a2;
  *v7 = 0xFFFFFFFF00000000;
  *(v7 + 8) = -1;
  *(v7 + 16) = -NAN;
  *(v7 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    *v7 = *v8 | (v8[2] << 32);
    dword_8[8 * v2] = v8[3];
    v9 = v8[4];
    if (v9 != 0xFFFF)
    {
      v10 = v8[5];
      dword_10[8 * v2] = v9;
      dword_14[8 * v2] = v10;
      *&dword_18[8 * v2] = 0;
    }
  }

  v11 = v7 + 32;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v7 - v13;
  memcpy((v7 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_1056338(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 56) + 200 * (bswap64(v7) % *(*(a1 + 16) + 40)));
  v16 = a2;
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630(*(*(a1 + 16) + 136) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 120)), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void sub_10564BC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 3));
  v6 = a1[15];
  v7 = a1[14];
  if (v7 != v6)
  {
    v8 = a1[11];
    v9 = a1[12] - v8;
    v11 = *a2;
    v10 = *(a2 + 8);
    v12 = v10 % v9;
    v13 = v9 - 1;
    while (1)
    {
      if (*(v8 + v12) == 2)
      {
        v14 = v7 + 24 * v12;
        if (*(v14 + 8) == v10 && *v14 == *v11 && *(v14 + 4) == v11[1])
        {
          v7 += 24 * v12;
          break;
        }
      }

      else if (!*(v8 + v12))
      {
        goto LABEL_21;
      }

      if (v12 == v13)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }
    }
  }

  if (v7 == v6)
  {
LABEL_21:
    ++a1[24];
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v21 = (a1 + 3);
  }

  else
  {
    ++a1[23];
    v15 = *(v7 + 16);
    if (v15 != a1)
    {
      v16 = v15[1];
      if (v16 != a1)
      {
        v17 = *v15;
        *(v17 + 8) = v16;
        *v16 = v17;
        v18 = *a1;
        *(v18 + 8) = v15;
        *v15 = v18;
        *a1 = v15;
        v15[1] = a1;
      }
    }

    v20 = v15[4];
    v19 = v15[5];
    *a3 = v20;
    *(a3 + 8) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    *(a3 + 16) = 1;
    v21 = (a1 + 3);
  }

  std::mutex::unlock(v21);
}

uint64_t sub_1056630(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5)
{
  if (*(a1 + 168) < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v34);
    v7 = sub_4A5C(&v34, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, *(a1 + 168));
    sub_4A5C(v10, ")", 1);
    if ((v44 & 0x10) != 0)
    {
      v29 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v29 = v40;
      }

      v30 = v39;
      v11 = v29 - v39;
      if (v29 - v39 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v11 = 0;
        v33 = 0;
LABEL_36:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (v33 < 0)
        {
          operator delete(__dst);
        }

        if (v42 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v36);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v30 = v37;
      v11 = v38 - v37;
      if ((v38 - v37) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_43:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v33 = v11;
    if (v11)
    {
      memmove(&__dst, v30, v11);
    }

    goto LABEL_36;
  }

  v34 = &v34;
  v35 = &v34;
  v36.__locale_ = 0;
  std::mutex::lock((a1 + 24));
  v14 = *(a1 + 120);
  v15 = *(a1 + 112);
  if (v15 == v14)
  {
    goto LABEL_16;
  }

  v16 = __ROR8__(*a2, 32);
  v17 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
  v18 = v17 ^ (v17 >> 33);
  v19 = *(a1 + 88);
  v20 = *(a1 + 96) - v19;
  v21 = v18 % v20;
  v22 = v20 - 1;
  while (*(v19 + v21) != 2)
  {
    if (!*(v19 + v21))
    {
      goto LABEL_19;
    }

LABEL_9:
    if (v21 == v22)
    {
      v21 = 0;
    }

    else
    {
      ++v21;
    }
  }

  if (*(v15 + 24 * v21 + 8) != v18 || *(v15 + 24 * v21) != *a2)
  {
    goto LABEL_9;
  }

  v15 += 24 * v21;
LABEL_16:
  if (v15 == v14)
  {
LABEL_19:
    ++*(a1 + 176);
    v23 = *(a1 + 8);
    if (v23 != a1)
    {
      v24 = *(a1 + 168) - a4;
      do
      {
        if (*(a1 + 160) <= v24)
        {
          break;
        }

        sub_3D7B5C(a1, v23, &v34);
        v23 = *(a1 + 8);
      }

      while (v23 != a1);
    }

    operator new();
  }

  if (a5)
  {
    sub_3D7B5C(a1, *(v15 + 16), &v34);
    goto LABEL_19;
  }

  std::mutex::unlock((a1 + 24));
  if (v36.__locale_)
  {
    v25 = v35;
    v26 = v34[1];
    v27 = *v35;
    v27[1] = v26;
    *v26 = v27;
    v36.__locale_ = 0;
    if (v25 != &v34)
    {
      do
      {
        v28 = v25[1];
        operator delete(v25);
        v25 = v28;
      }

      while (v28 != &v34);
    }
  }

  return 0;
}

void sub_1056B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  std::mutex::unlock((v17 + 24));
  sub_244F9C(&a17);
  _Unwind_Resume(a1);
}

void sub_1056B88(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (a2 >= ((*(a1 + 32) - v3) >> 2) || (v4 = *(v3 + 4 * a2), v4 == -1))
  {
    sub_1056D84(a1, a2, a3);
  }

  else
  {
    v5 = *a1 + 12 * v4;
    v6 = *(v5 + 4);
    v7 = *(v5 + 8);
    *(v5 + 4) = *a3;
    v8 = *(a3 + 4) < v7;
    v9 = *a3 < v6;
    if (*a3 == v6)
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v4)
      {
        v10 = *a1;
        do
        {
          v11 = v4 - 1;
          v12 = (v4 - 1) >> 2;
          v13 = (v10 + 12 * v12);
          v14 = (v10 + 12 * v4);
          v15 = v14[1];
          v16 = v13[1];
          v17 = v16 == v15;
          v18 = v16 < v15;
          if (v17)
          {
            v18 = v13[2] < v14[2];
          }

          if (v18)
          {
            break;
          }

          v19 = *v14;
          *v14 = *v13;
          *v13 = v19;
          v20 = *(v14 + 1);
          *(v14 + 1) = *(v13 + 1);
          *(v13 + 1) = v20;
          v10 = *a1;
          v21 = *(*a1 + 12 * v4);
          v22 = *(a1 + 24);
          v23 = *(*a1 + 12 * v12);
          v24 = *(v22 + 4 * v21);
          *(v22 + 4 * v21) = *(v22 + 4 * v23);
          *(v22 + 4 * v23) = v24;
          v4 = v11 >> 2;
        }

        while (v11 >= 4);
      }
    }

    else
    {
      v25 = (4 * v4) | 1;
      v26 = *(a1 + 48);
      if (v25 < v26)
      {
        v27 = 4 * v4;
        do
        {
          v28 = v27 + 5;
          if (v28 >= v26)
          {
            v29 = v26;
          }

          else
          {
            v29 = v28;
          }

          if (v28 <= v25)
          {
            break;
          }

          v30 = *a1;
          v31 = v4;
          v32 = *(*a1 + 12 * v4 + 4);
          v33 = HIDWORD(v32);
          v34 = (*a1 + 12 * v25 + 4);
          v4 = -1;
          v35 = v32;
          do
          {
            v36 = *v34 < v35;
            if (*v34 == v35)
            {
              v36 = v34[1] < v33;
            }

            if (v36)
            {
              v35 = *v34;
              LODWORD(v33) = v34[1];
              v4 = v25;
            }

            v34 += 3;
            ++v25;
          }

          while (v25 < v29);
          if (v4 >= v26)
          {
            break;
          }

          v37 = (v30 + 12 * v4);
          v38 = 12 * v31;
          v39 = (v30 + v38);
          v40 = *v37;
          *v37 = *v39;
          *v39 = v40;
          v41 = *(v37 + 1);
          *(v37 + 1) = v32;
          *(v39 + 1) = v41;
          v42 = *(*a1 + 12 * v4);
          v43 = *(a1 + 24);
          v44 = *(*a1 + v38);
          LODWORD(v39) = *(v43 + 4 * v42);
          *(v43 + 4 * v42) = *(v43 + 4 * v44);
          *(v43 + 4 * v44) = v39;
          v27 = 4 * v4;
          v25 = (4 * v4) | 1;
          v26 = *(a1 + 48);
        }

        while (v25 < v26);
      }
    }
  }
}

void sub_1056D84(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = a2;
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v7 = a1 + 24;
  v10 = v9 - v8;
  v11 = (v9 - v8) >> 2;
  if (v11 <= a2)
  {
    do
    {
      v29 = (v10 >> 1) | 1;
      if (v11 <= v10 >> 1)
      {
        sub_42CC4(v7, v29 - v11);
        v8 = *(a1 + 24);
        v9 = *(a1 + 32);
        v10 = v9 - v8;
        v30 = (v9 - v8) >> 2;
        if (v11 < v30)
        {
          goto LABEL_17;
        }
      }

      else if (v29 < v11)
      {
        v9 = v8 + 4 * v29;
        *(a1 + 32) = v9;
        v10 = 4 * v29;
        v30 = (4 * v29) >> 2;
        if (v11 < v30)
        {
LABEL_17:
          memset((v8 + 4 * v11), 255, v10 - 4 * v11);
        }
      }

      else
      {
        v10 = v9 - v8;
        v30 = (v9 - v8) >> 2;
        if (v11 < v30)
        {
          goto LABEL_17;
        }
      }

      v11 = v30;
    }

    while (v30 <= v6);
  }

  LODWORD(v31) = a2;
  v12 = *a3;
  HIDWORD(v31) = *a3;
  v32 = HIDWORD(v12);
  sub_376F0(a1, &v31);
  v13 = *(a1 + 48);
  *(*(a1 + 24) + 4 * v6) = v13;
  *(a1 + 48) = v13 + 1;
  if (v13)
  {
    v14 = *a1;
    do
    {
      v15 = v13 - 1;
      v16 = (v13 - 1) >> 2;
      v17 = (v14 + 12 * v16);
      v18 = (v14 + 12 * v13);
      v19 = v18[1];
      v20 = v17[1];
      v21 = v20 == v19;
      v22 = v20 < v19;
      if (v21)
      {
        v22 = v17[2] < v18[2];
      }

      if (v22)
      {
        break;
      }

      v23 = *v18;
      *v18 = *v17;
      *v17 = v23;
      v24 = *(v18 + 1);
      *(v18 + 1) = *(v17 + 1);
      *(v17 + 1) = v24;
      v14 = *a1;
      v25 = *(*a1 + 12 * v13);
      v26 = *(a1 + 24);
      v27 = *(*a1 + 12 * v16);
      v28 = *(v26 + 4 * v25);
      *(v26 + 4 * v25) = *(v26 + 4 * v27);
      *(v26 + 4 * v27) = v28;
      v13 = v15 >> 2;
    }

    while (v15 > 3);
  }
}

uint64_t sub_1056F4C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
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

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v12;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v10 = v3 + v14;
  }

  v17 = v9[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v11;
    if (*(v17 + 32 * v18) == v4)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  v19 = v11 == v18;
  v20 = v12 + v18;
  v21 = v12 + v11;
  v22 = result + 768;
  if (v11 == v18)
  {
    v20 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v23 = v9;
  }

  if (v19)
  {
    v24 = a3;
  }

  else
  {
    v24 = (v17 + 32 * v18);
  }

  if (v19)
  {
    v25 = 0;
  }

  else
  {
    v25 = v21;
  }

  *a3 = v23;
  a3[1] = v22;
  a3[2] = v20;
  a3[3] = v24;
  a3[4] = v25;
  return result;
}

void sub_1057090(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v5 = a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v6 = a1 + 24;
  v9 = v8 - v7;
  v10 = (v8 - v7) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v22 = (v9 >> 1) | 1;
      if (v10 <= v9 >> 1)
      {
        sub_42CC4(v6, v22 - v10);
        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      else if (v22 < v10)
      {
        v8 = v7 + 4 * v22;
        *(a1 + 32) = v8;
        v9 = 4 * v22;
        v23 = (4 * v22) >> 2;
        if (v10 < v23)
        {
LABEL_15:
          memset((v7 + 4 * v10), 255, v9 - 4 * v10);
        }
      }

      else
      {
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      v10 = v23;
    }

    while (v23 <= v5);
  }

  v24 = v5 | (*a3 << 32);
  sub_2512DC(a1, &v24);
  v11 = *(a1 + 48);
  v12 = *(a1 + 24);
  *(v12 + 4 * v5) = v11;
  *(a1 + 48) = v11 + 1;
  if (v11)
  {
    v13 = *a1;
    do
    {
      v14 = v11 - 1;
      v15 = (v13 + 8 * ((v11 - 1) >> 2));
      v16 = (v13 + 8 * v11);
      v17 = v15[1];
      v18 = v16[1];
      if (v17 > v18)
      {
        break;
      }

      v19 = *v16;
      *v16 = *v15;
      v16[1] = v17;
      *v15 = v19;
      v15[1] = v18;
      v20 = *v16;
      v21 = *(v12 + 4 * v20);
      *(v12 + 4 * v20) = *(v12 + 4 * v19);
      *(v12 + 4 * v19) = v21;
      v11 = v14 >> 2;
    }

    while (v14 > 3);
  }
}

double sub_1057208(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  v3 = a1[3];
  v4 = *(v3 + 4 * a2);
  v5 = *a1;
  v6 = *a1 + 8 * v4;
  v7 = *(v6 + 4);
  v8 = *a3;
  *(v6 + 4) = *a3;
  if (v8 <= v7)
  {
    v16 = (4 * v4) | 1;
    v17 = *(a1 + 12);
    if (v16 < v17)
    {
      v18 = 4 * v4;
      do
      {
        v19 = v18 + 5;
        if (v19 >= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        if (v19 <= v16)
        {
          break;
        }

        v21 = v4;
        v22 = *(v5 + 8 * v4 + 4);
        v23 = (v5 + 4 + 8 * v16);
        LODWORD(v4) = -1;
        v24 = v22;
        do
        {
          v26 = *v23;
          v23 += 2;
          v25 = v26;
          if (v26 > v24)
          {
            v24 = v25;
            LODWORD(v4) = v16;
          }

          ++v16;
        }

        while (v16 < v20);
        if (v4 >= v17)
        {
          break;
        }

        v27 = (v5 + 8 * v4);
        result = *v27;
        *v27 = *(v5 + 8 * v21);
        *(v27 + 1) = v22;
        *(v5 + 8 * v21) = result;
        v29 = *v27;
        v30 = *(v3 + 4 * v29);
        *(v3 + 4 * v29) = *(v3 + 4 * LODWORD(result));
        *(v3 + 4 * LODWORD(result)) = v30;
        v18 = 4 * v4;
        v16 = (4 * v4) | 1;
        v17 = *(a1 + 12);
      }

      while (v16 < v17);
    }
  }

  else if (v4)
  {
    do
    {
      v9 = v4 - 1;
      v10 = (v5 + 8 * ((v4 - 1) >> 2));
      v11 = (v5 + 8 * v4);
      v12 = v10[1];
      v13 = v11[1];
      if (v12 > v13)
      {
        break;
      }

      v14 = *v11;
      *v11 = *v10;
      v11[1] = v12;
      *v10 = v14;
      v10[1] = v13;
      v4 = *v11;
      v15 = *(v3 + 4 * v4);
      *(v3 + 4 * v4) = *(v3 + 4 * v14);
      *(v3 + 4 * v14) = v15;
      LODWORD(v4) = v9 >> 2;
    }

    while (v9 >= 4);
  }

  return result;
}

uint64_t sub_105733C(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = *a3;
  for (i = a3[1]; i != v6; i -= 104)
  {
    v9 = *(i - 24);
    if (v9)
    {
      v10 = *(i - 16);
      v8 = *(i - 24);
      if (v10 != v9)
      {
        do
        {
          v11 = *(v10 - 9);
          v10 -= 4;
          if (v11 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v8 = *(i - 24);
      }

      *(i - 16) = v9;
      operator delete(v8);
    }
  }

  a3[1] = v6;
  if (!*(a1 + 3880))
  {
    v22 = sub_3BF72C(a1 + 8, *a2, 1);
    if (v22)
    {
      v23 = &v22[-*v22];
      if (*v23 >= 7u)
      {
        v12 = *(v23 + 3);
        if (!v12)
        {
          goto LABEL_14;
        }

        v24 = &v22[v12 + *&v22[v12]];
        v25 = a2[1];
        if (*v24 > v25)
        {
          v12 = &v24[4 * v25 + 4 + *&v24[4 * v25 + 4]];
          goto LABEL_14;
        }
      }
    }
  }

  v12 = 0;
LABEL_14:
  v13 = (v12 - *v12);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
    result = sub_48C748(a3, *v15);
    v17 = *v15;
    if (!v17)
    {
      return result;
    }
  }

  else
  {
    v15 = 0;
    sub_48C748(a3, 0xFEEDFACFuLL);
    v17 = 4277009103;
  }

  v18 = 4 * v17;
  v19 = a3[1];
  v20 = v15 + 1;
  do
  {
    while (1)
    {
      v21 = (v20 + *v20);
      v26 = v21;
      if (v19 < a3[2])
      {
        break;
      }

      result = sub_1057514(a3, &v26);
      v19 = result;
      a3[1] = result;
      ++v20;
      v18 -= 4;
      if (!v18)
      {
        return result;
      }
    }

    result = sub_322264(v19, v21);
    v19 += 104;
    a3[1] = v19;
    a3[1] = v19;
    ++v20;
    v18 -= 4;
  }

  while (v18);
  return result;
}

uint64_t sub_1057514(uint64_t *a1, int **a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((a1[1] - *a1) >> 3);
  sub_322264(v20, *a2);
  v6 = 104 * v2 + 104;
  v7 = *a1;
  v8 = a1[1];
  v9 = v20 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v20 + *a1 - v8;
    do
    {
      *v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      *(v11 + 64) = *(v10 + 64);
      *(v11 + 32) = v13;
      *(v11 + 48) = v14;
      *(v11 + 16) = v12;
      *(v11 + 72) = *(v10 + 18);
      *(v11 + 88) = 0;
      *(v11 + 96) = 0;
      *(v11 + 80) = 0;
      *(v11 + 80) = *(v10 + 5);
      *(v11 + 96) = v10[12];
      v10[10] = 0;
      v10[11] = 0;
      v10[12] = 0;
      v10 += 13;
      v11 += 104;
    }

    while (v10 != v8);
    do
    {
      v16 = v7[10];
      if (v16)
      {
        v17 = v7[11];
        v15 = v7[10];
        if (v17 != v16)
        {
          do
          {
            v18 = *(v17 - 9);
            v17 -= 4;
            if (v18 < 0)
            {
              operator delete(*v17);
            }
          }

          while (v17 != v16);
          v15 = v7[10];
        }

        v7[11] = v16;
        operator delete(v15);
      }

      v7 += 13;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_1057718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49BB1C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_105772C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = (v6 ^ ~(v6 >> 33)) + ((v6 ^ (v6 >> 33)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (a1 + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  while (1)
  {
    v13 = v11 & v12;
    v14 = *(*v10 + v13);
    v15 = ((v14 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v14 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v15)
    {
      break;
    }

LABEL_8:
    if ((v14 & (~v14 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_1057888(v10, v9);
      *a3 = v10;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v11 = v3 + v13;
  }

  while (1)
  {
    result = (v13 + (__clz(__rbit64(v15)) >> 3)) & v12;
    v17 = (v10[1] + 16 * result);
    v19 = *v17;
    v18 = v17[1];
    if (v19 == v4 && v18 == HIDWORD(v4))
    {
      break;
    }

    v15 &= v15 - 1;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  *a3 = v10;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_1057888(void *a1, unint64_t a2)
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
      sub_1057980(a1);
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

uint64_t sub_1057980(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_10579B0();
  }

  return sub_1057B90(a1);
}

uint64_t sub_1057B90(uint64_t result)
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
        v18 = __ROR8__(*(*(result + 8) + 16 * i), 32);
        v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v18 ^ (v18 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v18 ^ (v18 >> 33))) >> 33));
        v20 = (v19 ^ ~(v19 >> 33)) + ((v19 ^ (v19 >> 33)) << 21);
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
            *(v27 + 16 * v16) = *(v27 + 16 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v28 = *(v27 + 16 * i);
            *(v27 + 16 * i) = *(v27 + 16 * v16);
            *(*(result + 8) + 16 * v16) = v28;
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

    v29 = i - (i >> 3);
    v30 = i == 7;
    v31 = 6;
    if (!v30)
    {
      v31 = v29;
    }
  }

  else
  {
    v31 = 0;
  }

  *(result + 40) = v31 - *(result + 16);
  return result;
}

int *sub_1057E78(int *result, _DWORD *a2, void *a3)
{
  a3[1] = *a3;
  if (!result[970])
  {
    v19[7] = v3;
    v19[8] = v4;
    result = sub_3BF72C((result + 2), a2[1], 1);
    if (result)
    {
      v7 = (result - *result);
      if (*v7 >= 0xBu)
      {
        v8 = v7[5];
        if (v8)
        {
          v9 = (result + v8 + *(result + v8));
          v10 = HIWORD(*a2);
          if (*v9 > v10)
          {
            v11 = (&v9[v10 + 1] + v9[v10 + 1]);
            v12 = (v11 - *v11);
            if (*v12 >= 5u)
            {
              v13 = v12[2];
              if (v13)
              {
                v14 = (v11 + v13 + *(v11 + v13));
                if (*v14 > ((a3[2] - *a3) >> 3))
                {
                  operator new();
                }

                v15 = *v14;
                v19[0] = a3;
                if (v15)
                {
                  v16 = 8 * v15;
                  v17 = v14 + 1;
                  do
                  {
                    v18 = v17;
                    result = sub_1057FF0(v19, &v18);
                    ++v17;
                    v16 -= 8;
                  }

                  while (v16);
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

uint64_t *sub_1057FF0(uint64_t *result, void **a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(8 * v7) = **a2;
    v12 = 8 * v7 + 8;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = **a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

unint64_t sub_105811C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*(a1 + 20) == v3 && *(a1 + 16) == v2)
  {
    LODWORD(v4) = *(a1 + 24);
    v5 = *(a1 + 8);
    goto LABEL_21;
  }

  v5 = *(a1 + 8);
  v6 = (v5 + 1);
  v7 = *v5;
  v8 = &v5[3 * v7 + 1];
  if (*v5)
  {
    v9 = (v5 + 1);
    do
    {
      v10 = v7 >> 1;
      v11 = &v9[12 * (v7 >> 1)];
      v12 = *(*a1 + 4 + 4 * *(v11 + 2));
      v14 = *v11;
      v13 = v11 + 12;
      v15 = v12 < v3;
      v16 = v14 < v2;
      if (v14 != v2)
      {
        v15 = v16;
      }

      v7 += ~v10;
      if (v15)
      {
        v9 = v13;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v7);
    if (v9 == v8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = (v5 + 1);
    if (v6 == v8)
    {
LABEL_19:
      LODWORD(v4) = -1;
      goto LABEL_21;
    }
  }

  if (*(*a1 + 4 * *(v9 + 2) + 4) != v3 || *v9 != v2)
  {
    goto LABEL_19;
  }

  v4 = (v9 - v6) / 0xCuLL;
LABEL_21:
  v18 = v5 + 1;
  v19 = HIWORD(v18[3 * v4 + 2]);
  if (v19 == 0xFFFF)
  {
    return 0;
  }

  v20 = v18[3 * v19] | (*(*a1 + 4 * LOWORD(v18[3 * v19 + 1]) + 4) << 32);
  *(a1 + 16) = v20;
  *(a1 + 24) = v19;
  return v20;
}

uint64_t sub_1058270(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = 0;
    do
    {
      if ((atomic_load_explicit(&qword_2733DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733DC0))
      {
        qword_2733DB8 = *sub_1058478() >> 3;
        __cxa_guard_release(&qword_2733DC0);
      }

      v7 = qword_2733DB8;
      if ((atomic_load_explicit(&qword_2733DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733DE0))
      {
        v14 = *sub_10583E8();
        qword_2733DD8 = v14 + (*sub_10583E8() >> 1);
        __cxa_guard_release(&qword_2733DE0);
      }

      _X8 = v3 + 8 * v7 * v6 + 8 * qword_2733DD8;
      __asm { PRFM            #0, [X8] }

      v3 = *(a1 + 24);
      v2 = *(a1 + 32);
      if (*a2 <= *(v3 + 8 * v6))
      {
        v6 = 2 * v6 + 1;
      }

      else
      {
        v6 = 2 * v6 + 2;
      }
    }

    while (v6 < v2);
    v15 = __clz(__rbit64(-2 - v6));
    if (v6 == -2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    v17 = (v6 + 1) >> v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v2 = v17 - 1;
  }

  return v3 + 8 * v2;
}

uint64_t *sub_10583E8()
{
  if ((atomic_load_explicit(&qword_2733DC0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2733DC0))
  {
    return &qword_2733DB8;
  }

  qword_2733DB8 = *sub_1058478() >> 3;
  __cxa_guard_release(&qword_2733DC0);
  return &qword_2733DB8;
}

uint64_t *sub_1058478()
{
  if ((atomic_load_explicit(&qword_2733DD0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2733DD0))
  {
    return &qword_2733DC8;
  }

  qword_2733DC8 = sub_3226F0();
  __cxa_guard_release(&qword_2733DD0);
  return &qword_2733DC8;
}

void *sub_1058500(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8((v5 + 103), a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1058604(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

double *sub_1058664(double *result, unsigned int *a2, unsigned __int16 *a3, void *a4)
{
  a4[1] = *a4;
  if (!*(result + 970))
  {
    v30[1] = v7;
    v30[2] = v6;
    v30[9] = v4;
    v30[10] = v5;
    result = sub_3BF72C((result + 1), *a2, 1);
    if (result)
    {
      v11 = (result - *result);
      if (*v11 >= 9u)
      {
        v12 = v11[4];
        if (v12)
        {
          v13 = (result + v12 + *(result + v12));
          v14 = a2[1];
          if (*v13 > v14)
          {
            v15 = (&v13[v14 + 1] + v13[v14 + 1]);
            v16 = (v15 - *v15);
            if (*v16 >= 7u)
            {
              v17 = v16[3];
              if (v17)
              {
                v18 = (v15 + v17 + *(v15 + v17));
                v19 = *a3;
                if (*v18 > v19)
                {
                  v20 = (&v18[v19 + 1] + v18[v19 + 1]);
                  v21 = (v20 - *v20);
                  if (*v21 >= 5u)
                  {
                    v22 = v21[2];
                    if (v22)
                    {
                      if (*(v20 + v22 + *(v20 + v22)) > ((a4[2] - *a4) >> 5))
                      {
                        operator new();
                      }

                      v23 = (v20 - *v20);
                      if (*v23 < 5u)
                      {
                        v24 = 0;
                      }

                      else
                      {
                        v24 = v23[2];
                        if (v24)
                        {
                          v24 = (v24 + v20 + *(v24 + v20));
                        }
                      }

                      v25 = *v24;
                      if (v25)
                      {
                        v26 = 12 * v25;
                        result = a4[1];
                        v27 = v24 + 7;
                        do
                        {
                          while (1)
                          {
                            v30[0] = v27 - 5;
                            if (result < a4[2])
                            {
                              break;
                            }

                            result = sub_10561F8(a4, v30);
                            a4[1] = result;
                            v27 += 6;
                            v26 -= 12;
                            if (!v26)
                            {
                              return result;
                            }
                          }

                          *(result + 2) = -1;
                          result[2] = -NAN;
                          result[3] = NAN;
                          *result = *(v27 - 5) | (*(v27 - 3) << 32);
                          *(result + 2) = *(v27 - 2);
                          v28 = *(v27 - 1);
                          if (v28 != 0xFFFF)
                          {
                            v29 = *v27;
                            *(result + 4) = v28;
                            *(result + 5) = v29;
                            result[3] = 0.0;
                          }

                          result += 4;
                          a4[1] = result;
                          v27 += 6;
                          v26 -= 12;
                        }

                        while (v26);
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

  return result;
}

void sub_10588D4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v16 = a2;
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 16) + 200 * (bswap64(v7) % **(a1 + 16)));
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630(*(*(a1 + 16) + 96) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 80)), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

uint64_t sub_1058A58(uint64_t a1, uint64_t *a2)
{
  *a1 = a2;
  *(a1 + 34) = 0;
  *(a1 + 24) = 0x3E4CCCCD3F000000;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 32;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v3 = (a1 + 72);
  *(a1 + 80) = 0;
  v4 = a1 + 80;
  *(a1 + 8) = xmmword_2267060;
  *(a1 + 32) = 0;
  v5 = sub_101E508(a2);
  sub_101EA90((a1 + 88), v5);
  *(a1 + 33) = 1;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v6 = malloc_type_malloc(8 * *(a1 + 64), 0x100004000313F17uLL);
  *(a1 + 80) = v6;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = (v6 + 8 * v7);
    v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9 < 0xF || v6 < v4 && v3 < v8)
    {
      goto LABEL_12;
    }

    v10 = v9 + 1;
    v11 = vld1q_dup_f64(v3);
    v12 = v6 + 1;
    v13 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    v6 = (v6 + 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL));
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_12:
      do
      {
        v6->f64[0] = *v3;
        v6 = (v6 + 8);
      }

      while (v6 != v8);
    }
  }

  return a1;
}

void sub_1058BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_34BE0((v11 + 88));
  if (!*v12)
  {
    _Unwind_Resume(a1);
  }

  free(*v12);
  _Unwind_Resume(a1);
}

void *sub_1058C10(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8((v5 + 103), a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1058D14(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void sub_1058D74(uint64_t **a1, void *a2)
{
  if (*a2 == a2[1])
  {
    return;
  }

  v158 = 0;
  v156 = 0x3E4CCCCD3F000000;
  v159 = 0;
  v160 = 0xFFFFFFFF00000000;
  v161 = 0;
  v162 = 0;
  v155 = xmmword_2267060;
  v157 = 256;
  v163 = 32;
  v164 = 0xFFFFFFFF00000000;
  v165 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  v2 = vdupq_n_s64(0xFFFFFFFF00000000);
  v3 = (v165 + 16);
  v4 = 32;
  do
  {
    v3[-1] = v2;
    *v3 = v2;
    v3 += 2;
    v4 -= 4;
  }

  while (v4);
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v5 = a1[12] - a1[11];
  if (!v5)
  {
    goto LABEL_219;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v148 = 0;
  v149 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v138 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  do
  {
    v147 = v11;
    __p = v9;
    if (v11 < (a2[1] - *a2) >> 2)
    {
      v140 = *(*a2 + 4 * v11);
      if (v140)
      {
        v14 = v10;
        v16 = a1[11];
        v15 = a1[12];
        v17 = &v16[3 * v11];
        if (&v152 != v17)
        {
          sub_31F64(&v152, *v17, v17[1], (v17[1] - *v17) >> 3);
          v7 = v152;
          v6 = v153;
        }

        v18 = 126 - 2 * __clz((v6 - v7) >> 3);
        if (v6 == v7)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        sub_2D31D4(v7, v6, v166, v19, 1);
        v20 = v152;
        v6 = v153;
        if (v152 != v153)
        {
          v21 = v152;
          do
          {
            v22 = v21 + 2;
            if (v21 + 2 == v153)
            {
              goto LABEL_25;
            }

            v23 = *v21;
            v24 = v21[1];
            LODWORD(v25) = v21[2];
            v26 = v21[3];
            v27 = v23 == v25 && v24 == v26;
            v21 = v22;
          }

          while (!v27);
          v28 = (v22 + 2);
          v29 = v22 - 2;
          if (v28 == v153)
          {
            v30 = (v29 + 2);
            if (v29 + 2 == v153)
            {
              goto LABEL_25;
            }

LABEL_34:
            v6 = v30;
            v153 = v30;
            if (v20 == v30)
            {
              goto LABEL_45;
            }

            goto LABEL_39;
          }

          do
          {
            if (v25 != v28->i32[0] || v29[1] != v28->i32[1])
            {
              v25 = v28->i64[0];
              *(v29 + 1) = v28->i64[0];
              v29 += 2;
            }

            v28 = (v28 + 8);
          }

          while (v28 != v6);
          v6 = v153;
          v30 = (v29 + 2);
          if (v29 + 2 != v153)
          {
            goto LABEL_34;
          }
        }

LABEL_25:
        if (v20 == v6)
        {
LABEL_45:
          v141 = 0;
          v143 = -1 - 0x5555555555555555 * (v15 - v16);
          v13 = v8;
          v10 = v14;
          while (1)
          {
            v150 = v6;
            if (v20 == v6)
            {
              goto LABEL_47;
            }

            do
            {
              while (1)
              {
                while (1)
                {
                  v34 = v13;
                  v35 = v20->i64[0];
                  v36 = **a1;
                  v167 = 1;
                  v168 = v35;
                  v166[0] = &v167;
                  v166[1] = &v168;
                  v37 = *(v36 + 3856) + 1;
                  *(v36 + 3856) = v37;
                  if (!*v36)
                  {
                    goto LABEL_211;
                  }

                  if (*(v36 + 688) == v35)
                  {
                    break;
                  }

                  if (*(v36 + 712) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 720) = v37;
                    v38 = *(v36 + 728);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 736) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 744) = v37;
                    v38 = *(v36 + 752);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 760) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 768) = v37;
                    v38 = *(v36 + 776);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  v39 = *(v36 + 744);
                  v40 = *(v36 + 720);
                  v41 = *(v36 + 696);
                  v42 = *(v36 + 768);
                  v38 = sub_2D52A4(*v36, 7, v35, 1);
                  if (v41 >= v37)
                  {
                    v43 = v37;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  v44 = 28;
                  if (v41 >= v37)
                  {
                    v44 = 0;
                  }

                  if (v40 < v43)
                  {
                    v43 = v40;
                    v44 = 29;
                  }

                  if (v39 < v43)
                  {
                    v44 = 30;
                    v43 = v39;
                  }

                  v45 = v42 >= v43;
                  v46 = 31;
                  if (v45)
                  {
                    v46 = v44;
                  }

                  v47 = v36 + 16 + 24 * v46;
                  *v47 = v168;
                  *(v47 + 8) = *(v36 + 3856);
                  *(v47 + 16) = v38;
                  if (v38)
                  {
                    goto LABEL_78;
                  }

                  sub_101E964(v166);
LABEL_211:
                  v13 = v34;
                  v20 = (v20 + 8);
                  if (v20 == v150)
                  {
                    goto LABEL_46;
                  }
                }

                ++*(v36 + 3864);
                *(v36 + 696) = v37;
                v38 = *(v36 + 704);
                if (!v38)
                {
                  goto LABEL_211;
                }

LABEL_78:
                v48 = (v38 + *v38);
                v49 = (v48 - *v48);
                if (*v49 < 9u)
                {
                  goto LABEL_211;
                }

                v50 = v49[4];
                if (!v50)
                {
                  goto LABEL_211;
                }

                v51 = sub_101E640((v48 + v50 + *(v48 + v50)), HIDWORD(v35));
                v52 = (v51 - *v51);
                if (*v52 < 9u)
                {
                  goto LABEL_211;
                }

                v53 = v52[4];
                v54 = v150;
                v13 = v34;
                if (v53)
                {
                  v55 = (v51 + v53 + *(v51 + v53));
                  v56 = *v55;
                  if (v56)
                  {
                    break;
                  }
                }

LABEL_51:
                v20 = (v20 + 8);
                if (v20 == v54)
                {
                  goto LABEL_46;
                }
              }

              v57 = 8 * v56;
              v58 = (v55 + 1);
              v59 = __p;
              v60 = __p;
              do
              {
                while (v59 < v10)
                {
                  v61 = *v58++;
                  *v59 = v61;
                  v59 += 8;
                  v57 -= 8;
                  if (!v57)
                  {
                    goto LABEL_96;
                  }
                }

                v62 = v59 - v60;
                v63 = (v59 - v60) >> 3;
                v64 = v63 + 1;
                if ((v63 + 1) >> 61)
                {
                  sub_1794();
                }

                if ((v10 - v60) >> 2 > v64)
                {
                  v64 = (v10 - v60) >> 2;
                }

                if (v10 - v60 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v65 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v65 = v64;
                }

                if (v65)
                {
                  if (!(v65 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v63) = *v58;
                v59 = (8 * v63 + 8);
                memcpy(0, v60, v62);
                v60 = 0;
                v10 = 0;
                ++v58;
                v57 -= 8;
              }

              while (v57);
LABEL_96:
              if (v60 != v59)
              {
                v66 = v60;
                __pa = v59;
                v146 = v10;
                v13 = v34;
                while (1)
                {
                  if (v162 != v161)
                  {
                    v68 = v163 - 1;
                    v69 = *v66;
                    v70 = __ROR8__(*v66, 32);
                    v71 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) >> 33));
                    v72 = (v71 ^ (v71 >> 33)) & (v163 - 1);
                    v73 = (v165 + 8 * v72);
                    v75 = *v73;
                    v74 = v73[1];
                    if (v164 != *v73 || HIDWORD(v164) != v74)
                    {
                      if (v161)
                      {
                        v77 = 1;
                        while (*&v160 == __PAIR64__(v74, v75) || __PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v77) & v68;
                          v78 = (v165 + 8 * v72);
                          v75 = *v78;
                          v74 = v78[1];
                          ++v77;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      else
                      {
                        v80 = 1;
                        while (__PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v80) & v68;
                          v81 = (v165 + 8 * v72);
                          v75 = *v81;
                          v74 = v81[1];
                          ++v80;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      if (v72 != -1 && v165 + 8 * v72 != v165 + 8 * v163)
                      {
                        goto LABEL_100;
                      }
                    }
                  }

LABEL_123:
                  if (v149 >= v148)
                  {
                    v83 = v149 - v13;
                    v84 = (v149 - v13) >> 3;
                    v85 = v84 + 1;
                    if ((v84 + 1) >> 61)
                    {
                      sub_1794();
                    }

                    if ((v148 - v13) >> 2 > v85)
                    {
                      v85 = (v148 - v13) >> 2;
                    }

                    if (v148 - v13 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v86 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v86 = v85;
                    }

                    if (v86)
                    {
                      if (!(v86 >> 61))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v87 = v13;
                    v13 = 0;
                    *(8 * v84) = *v66;
                    v148 = 0;
                    v149 = (8 * v84 + 8);
                    memcpy(0, v87, v83);
                    if (v87)
                    {
                      operator delete(v87);
                    }

                    v10 = v146;
                  }

                  else
                  {
                    v149->i64[0] = *v66;
                    v149 = (v149 + 8);
                  }

                  sub_101F9D8(&v155, 1);
                  if (sub_10550EC(&v155, v66) == -1)
                  {
                    if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(exception, "insert overflow");
                    }

                    if (v161 && (v89 = vceq_s32(v160, *(v165 + 8 * v88)), (v89.i32[0] & v89.i32[1] & 1) != 0))
                    {
                      --v161;
                    }

                    else
                    {
                      ++v162;
                    }

                    *(v165 + v88) = *v66;
                  }

                  v90 = &a1[11][3 * v147];
                  v92 = *(v90 + 8);
                  v91 = *(v90 + 16);
                  if (v92 >= v91)
                  {
                    break;
                  }

                  *v92 = *v66;
                  *(v90 + 8) = v92 + 1;
                  if (v147 != v143)
                  {
                    goto LABEL_159;
                  }

LABEL_100:
                  v66 += 8;
                  if (v66 == v59)
                  {
                    __p = v60;
                    goto LABEL_51;
                  }
                }

                v93 = *v90;
                v94 = v92 - *v90;
                v95 = (v94 >> 3) + 1;
                if (v95 >> 61)
                {
                  sub_1794();
                }

                v96 = v13;
                v97 = v91 - v93;
                if (v97 >> 2 > v95)
                {
                  v95 = v97 >> 2;
                }

                if (v97 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v98 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v98 = v95;
                }

                if (v98)
                {
                  if (!(v98 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v99 = (8 * (v94 >> 3));
                *v99 = *v66;
                v100 = v99 + 1;
                memcpy(0, v93, v94);
                *v90 = 0;
                *(v90 + 8) = v100;
                *(v90 + 16) = 0;
                if (v93)
                {
                  operator delete(v93);
                }

                v59 = __pa;
                v10 = v146;
                v13 = v96;
                *(v90 + 8) = v100;
                if (v147 == v143)
                {
                  goto LABEL_100;
                }

LABEL_159:
                v142 = v13;
                v101 = a1[11];
                v102 = *v66;
                v103 = **a1;
                if (atomic_load_explicit(&qword_2732E58, memory_order_acquire))
                {
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 == v102)
                  {
                    goto LABEL_161;
                  }

LABEL_162:
                  v105 = *(v103 + 3856) + 1;
                  *(v103 + 3856) = v105;
                  if (*v103)
                  {
                    if (*(v103 + 688) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 696) = v105;
                      v106 = *(v103 + 704);
                      if (!v106)
                      {
                        goto LABEL_193;
                      }

LABEL_188:
                      v113 = (v106 + *v106);
                      v114 = (v113 - *v113);
                      if (*v114 >= 9u)
                      {
                        v115 = v114[4];
                        if (v115)
                        {
                          v116 = sub_101E640((v113 + v115 + *(v113 + v115)), v104);
                          v117 = (v116 - *v116);
                          if (*v117 < 0xBu)
                          {
                            v120 = 0;
                            v119 = 0xFFFFFFFF00000000;
                            v54 = v150;
                          }

                          else
                          {
                            v118 = v117[5];
                            v54 = v150;
                            if (!v118)
                            {
                              goto LABEL_193;
                            }

                            v120 = *(v116 + v118);
                            v119 = v120 & 0xFFFFFFFF00000000;
                            v120 = v120;
                          }

LABEL_194:
                          v121 = &v101[3 * v147];
                          v122 = v120 | v119;
                          v124 = v121[4];
                          v123 = v121[5];
                          if (v124 < v123)
                          {
                            *v124 = v122;
                            v67 = v124 + 8;
                            v10 = v146;
                          }

                          else
                          {
                            v125 = v121[3];
                            v126 = v124 - v125;
                            v127 = (v124 - v125) >> 3;
                            v128 = v127 + 1;
                            if ((v127 + 1) >> 61)
                            {
                              sub_1794();
                            }

                            v129 = v123 - v125;
                            if (v129 >> 2 > v128)
                            {
                              v128 = v129 >> 2;
                            }

                            if (v129 >= 0x7FFFFFFFFFFFFFF8)
                            {
                              v130 = 0x1FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v130 = v128;
                            }

                            if (v130)
                            {
                              if (!(v130 >> 61))
                              {
                                operator new();
                              }

                              sub_1808();
                            }

                            v131 = (v124 - v125) >> 3;
                            v132 = (8 * v127);
                            v133 = (8 * v127 - 8 * v131);
                            *v132 = v122;
                            v67 = v132 + 1;
                            memcpy(v133, v125, v126);
                            v121[3] = v133;
                            v121[4] = v67;
                            v121[5] = 0;
                            if (v125)
                            {
                              operator delete(v125);
                            }

                            v10 = v146;
                            v54 = v150;
                          }

                          v13 = v142;
                          v121[4] = v67;
                          v59 = __pa;
                          goto LABEL_100;
                        }
                      }
                    }

                    else if (*(v103 + 712) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 720) = v105;
                      v106 = *(v103 + 728);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 736) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 744) = v105;
                      v106 = *(v103 + 752);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 760) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 768) = v105;
                      v106 = *(v103 + 776);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      v107 = *(v103 + 720);
                      v108 = *(v103 + 696);
                      v136 = *(v103 + 768);
                      v137 = *(v103 + 744);
                      v106 = sub_2D52A4(*v103, 7, v102, 1);
                      if (v108 >= v105)
                      {
                        v109 = v105;
                      }

                      else
                      {
                        v109 = v108;
                      }

                      v110 = 28;
                      if (v108 >= v105)
                      {
                        v110 = 0;
                      }

                      if (v107 < v109)
                      {
                        v109 = v107;
                        v110 = 29;
                      }

                      if (v137 < v109)
                      {
                        v110 = 30;
                        v109 = v137;
                      }

                      v45 = v136 >= v109;
                      v111 = 31;
                      if (v45)
                      {
                        v111 = v110;
                      }

                      v112 = v103 + 16 + 24 * v111;
                      *v112 = v102;
                      *(v112 + 8) = *(v103 + 3856);
                      *(v112 + 16) = v106;
                      v54 = v150;
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }
                  }
                }

                else
                {
                  sub_21E6BE8();
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 != v102)
                  {
                    goto LABEL_162;
                  }

LABEL_161:
                  if (HIDWORD(qword_2732E50) != v104)
                  {
                    goto LABEL_162;
                  }
                }

LABEL_193:
                v120 = 0;
                v119 = 0xFFFFFFFF00000000;
                goto LABEL_194;
              }

              __p = v60;
              v13 = v34;
              v20 = (v20 + 8);
            }

            while (v20 != v150);
LABEL_46:
            v20 = v152;
LABEL_47:
            v7 = v13;
            v6 = v149;
            v13 = v20;
            v152 = v7;
            v153 = v149;
            v20 = v7;
            v12 = v154;
            v154 = v148;
            v148 = v12;
            v149 = v13;
            v8 = v13;
            if (++v141 == v140)
            {
              goto LABEL_7;
            }
          }
        }

        do
        {
LABEL_39:
          sub_101F9D8(&v155, 1);
          if (sub_10550EC(&v155, v20) == -1)
          {
            if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              v135 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v135, "insert overflow");
            }

            if (v161 && (v33 = vceq_s32(v160, *(v165 + 8 * v32)), (v33.i32[0] & v33.i32[1] & 1) != 0))
            {
              --v161;
            }

            else
            {
              ++v162;
            }

            *(v165 + v32) = v20->i64[0];
          }

          v20 = (v20 + 8);
        }

        while (v20 != v6);
        v20 = v152;
        v6 = v153;
        goto LABEL_45;
      }
    }

    v12 = v148;
    v13 = v149;
LABEL_7:
    v11 = v147 + 1;
    v148 = v12;
    v149 = v13;
    v9 = __p;
  }

  while (v147 + 1 != v138);
  if (v8)
  {
    operator delete(v8);
  }

LABEL_219:
  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  if (v165)
  {
    free(v165);
  }
}

void sub_1059C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (!a36)
  {
    _Unwind_Resume(exception_object);
  }

  free(a36);
  _Unwind_Resume(exception_object);
}

int32x2_t *sub_1059D34(int32x2_t *result)
{
  v1 = result[11];
  v2 = result[12];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *v1;
      v5 = v1[1];
      while (v4 != v5)
      {
        if (!*v4 || *(v4 + 1) == -1)
        {
          goto LABEL_7;
        }

        sub_101F9D8(&v3[1], 1);
        v6 = *&v3[8] - 1;
        v7 = *v4;
        v8 = __ROR8__(*v4, 32);
        v9 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) >> 33));
        v10 = v9 ^ (v9 >> 33);
        v11 = v3[10];
        v12 = v3[9].i32[0];
        v13 = v3[9].i32[1];
        v14 = v10 & v6;
        v15 = (*&v11 + 8 * (v10 & v6));
        result = *v15;
        v16 = v15[1];
        v17 = v3[6];
        if (v12 == result && v13 == v16)
        {
          goto LABEL_28;
        }

        if (v17)
        {
          v19 = -1;
          v20 = 1;
          do
          {
            if (v3[5].i32[0] == result && v3[5].i32[1] == v16)
            {
              if (v19 == -1)
              {
                v19 = v14;
              }
            }

            else if (__PAIR64__(v16, result) == v7)
            {
              goto LABEL_39;
            }

            v14 = (v14 + v20) & v6;
            v21 = (*&v11 + 8 * v14);
            result = *v21;
            v16 = v21[1];
            ++v20;
          }

          while (v12 != result || v13 != v16);
          if (v19 == -1)
          {
LABEL_28:
            v19 = v14;
          }

          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
            goto LABEL_41;
          }

LABEL_30:
          if (*&v17 && (v24 = vceq_s32(v3[5], *(*&v11 + 8 * v19)), (v24.i32[0] & v24.i32[1] & 1) != 0))
          {
            v3[6] = (*&v17 - 1);
          }

          else
          {
            v3[7] = (*&v23 + 1);
          }

          *(*&v11 + 8 * v19) = *v4;
          goto LABEL_7;
        }

        v25 = 1;
        while (__PAIR64__(v16, result) != v7)
        {
          v14 = (v14 + v25) & v6;
          v26 = (*&v11 + 8 * v14);
          result = *v26;
          v16 = v26[1];
          ++v25;
          if (v12 == result && v13 == v16)
          {
            goto LABEL_28;
          }
        }

LABEL_39:
        if (v14 == -1)
        {
          v19 = -1;
          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
LABEL_41:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }

          goto LABEL_30;
        }

LABEL_7:
        ++v4;
      }

      v1 += 3;
    }

    while (v1 != v2);
  }

  return result;
}

char *sub_1059F84(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 1264) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1272) = v3;
    v4 = *(a1 + 1280);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1288) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1296) = v3;
    v4 = *(a1 + 1304);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1312) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1320) = v3;
    v4 = *(a1 + 1328);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1336) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1344) = v3;
    v4 = *(a1 + 1352);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1320);
    v8 = *(a1 + 1296);
    v9 = *(a1 + 1272);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 1272);
    }

    v11 = 52;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1296);
    }

    v13 = 53;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 1320);
    }

    v15 = *(a1 + 1344);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 54;
    }

    v18 = sub_2D52A4(*a1, 13, a2, 1);
    v19 = 55;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_105A158(v21);
  return 0;
}

uint64_t sub_105A158(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0xDu);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_105A254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_105A284(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 56) + 200 * (bswap64(v7) % *(*(a1 + 16) + 40)));
  v16 = a2;
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630(*(*(a1 + 16) + 136) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 120)), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void *sub_105A408(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8((v5 + 103), a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_105A50C(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void sub_105A56C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v16 = a2;
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 16) + 200 * (bswap64(v7) % **(a1 + 16)));
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630(*(*(a1 + 16) + 96) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 80)), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void *sub_105A6F0(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40E98C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8((v5 + 103), a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_105A7F4(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_105A854@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v12;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v18 = v10[1];
    v20 = (v18 + 16 * v19);
    if (*v20 == v4 && v20[1] == v5)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v22 = v12 == v19;
  v23 = (v13 + v19);
  v24 = (v12 + v13);
  v25 = (result + 768);
  if (v12 == v19)
  {
    v23 = 0;
    v25 = 0;
    v10 = 0;
    v26 = a3;
  }

  else
  {
    v26 = (v18 + 16 * v19);
  }

  if (v22)
  {
    v24 = 0;
  }

  *a3 = v10;
  a3[1] = v25;
  a3[2] = v23;
  a3[3] = v26;
  a3[4] = v24;
  return result;
}

void sub_105A9CC(uint64_t **a1, void *a2)
{
  if (*a2 == a2[1])
  {
    return;
  }

  v158 = 0;
  v156 = 0x3E4CCCCD3F000000;
  v159 = 0;
  v160 = 0xFFFFFFFF00000000;
  v161 = 0;
  v162 = 0;
  v155 = xmmword_2267060;
  v157 = 256;
  v163 = 32;
  v164 = 0xFFFFFFFF00000000;
  v165 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  v2 = vdupq_n_s64(0xFFFFFFFF00000000);
  v3 = (v165 + 16);
  v4 = 32;
  do
  {
    v3[-1] = v2;
    *v3 = v2;
    v3 += 2;
    v4 -= 4;
  }

  while (v4);
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v5 = a1[12] - a1[11];
  if (!v5)
  {
    goto LABEL_219;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v148 = 0;
  v149 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v138 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  do
  {
    v147 = v11;
    __p = v9;
    if (v11 < (a2[1] - *a2) >> 2)
    {
      v140 = *(*a2 + 4 * v11);
      if (v140)
      {
        v14 = v10;
        v16 = a1[11];
        v15 = a1[12];
        v17 = &v16[3 * v11];
        if (&v152 != v17)
        {
          sub_31F64(&v152, *v17, v17[1], (v17[1] - *v17) >> 3);
          v7 = v152;
          v6 = v153;
        }

        v18 = 126 - 2 * __clz((v6 - v7) >> 3);
        if (v6 == v7)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        sub_2D31D4(v7, v6, v166, v19, 1);
        v20 = v152;
        v6 = v153;
        if (v152 != v153)
        {
          v21 = v152;
          do
          {
            v22 = v21 + 2;
            if (v21 + 2 == v153)
            {
              goto LABEL_25;
            }

            v23 = *v21;
            v24 = v21[1];
            LODWORD(v25) = v21[2];
            v26 = v21[3];
            v27 = v23 == v25 && v24 == v26;
            v21 = v22;
          }

          while (!v27);
          v28 = (v22 + 2);
          v29 = v22 - 2;
          if (v28 == v153)
          {
            v30 = (v29 + 2);
            if (v29 + 2 == v153)
            {
              goto LABEL_25;
            }

LABEL_34:
            v6 = v30;
            v153 = v30;
            if (v20 == v30)
            {
              goto LABEL_45;
            }

            goto LABEL_39;
          }

          do
          {
            if (v25 != v28->i32[0] || v29[1] != v28->i32[1])
            {
              v25 = v28->i64[0];
              *(v29 + 1) = v28->i64[0];
              v29 += 2;
            }

            v28 = (v28 + 8);
          }

          while (v28 != v6);
          v6 = v153;
          v30 = (v29 + 2);
          if (v29 + 2 != v153)
          {
            goto LABEL_34;
          }
        }

LABEL_25:
        if (v20 == v6)
        {
LABEL_45:
          v141 = 0;
          v143 = -1 - 0x5555555555555555 * (v15 - v16);
          v13 = v8;
          v10 = v14;
          while (1)
          {
            v150 = v6;
            if (v20 == v6)
            {
              goto LABEL_47;
            }

            do
            {
              while (1)
              {
                while (1)
                {
                  v34 = v13;
                  v35 = v20->i64[0];
                  v36 = **a1;
                  v167 = 1;
                  v168 = v35;
                  v166[0] = &v167;
                  v166[1] = &v168;
                  v37 = *(v36 + 3856) + 1;
                  *(v36 + 3856) = v37;
                  if (!*v36)
                  {
                    goto LABEL_211;
                  }

                  if (*(v36 + 688) == v35)
                  {
                    break;
                  }

                  if (*(v36 + 712) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 720) = v37;
                    v38 = *(v36 + 728);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 736) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 744) = v37;
                    v38 = *(v36 + 752);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 760) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 768) = v37;
                    v38 = *(v36 + 776);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  v39 = *(v36 + 744);
                  v40 = *(v36 + 720);
                  v41 = *(v36 + 696);
                  v42 = *(v36 + 768);
                  v38 = sub_2D52A4(*v36, 7, v35, 1);
                  if (v41 >= v37)
                  {
                    v43 = v37;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  v44 = 28;
                  if (v41 >= v37)
                  {
                    v44 = 0;
                  }

                  if (v40 < v43)
                  {
                    v43 = v40;
                    v44 = 29;
                  }

                  if (v39 < v43)
                  {
                    v44 = 30;
                    v43 = v39;
                  }

                  v45 = v42 >= v43;
                  v46 = 31;
                  if (v45)
                  {
                    v46 = v44;
                  }

                  v47 = v36 + 16 + 24 * v46;
                  *v47 = v168;
                  *(v47 + 8) = *(v36 + 3856);
                  *(v47 + 16) = v38;
                  if (v38)
                  {
                    goto LABEL_78;
                  }

                  sub_101E964(v166);
LABEL_211:
                  v13 = v34;
                  v20 = (v20 + 8);
                  if (v20 == v150)
                  {
                    goto LABEL_46;
                  }
                }

                ++*(v36 + 3864);
                *(v36 + 696) = v37;
                v38 = *(v36 + 704);
                if (!v38)
                {
                  goto LABEL_211;
                }

LABEL_78:
                v48 = (v38 + *v38);
                v49 = (v48 - *v48);
                if (*v49 < 9u)
                {
                  goto LABEL_211;
                }

                v50 = v49[4];
                if (!v50)
                {
                  goto LABEL_211;
                }

                v51 = sub_101E640((v48 + v50 + *(v48 + v50)), HIDWORD(v35));
                v52 = (v51 - *v51);
                if (*v52 < 9u)
                {
                  goto LABEL_211;
                }

                v53 = v52[4];
                v54 = v150;
                v13 = v34;
                if (v53)
                {
                  v55 = (v51 + v53 + *(v51 + v53));
                  v56 = *v55;
                  if (v56)
                  {
                    break;
                  }
                }

LABEL_51:
                v20 = (v20 + 8);
                if (v20 == v54)
                {
                  goto LABEL_46;
                }
              }

              v57 = 8 * v56;
              v58 = (v55 + 1);
              v59 = __p;
              v60 = __p;
              do
              {
                while (v59 < v10)
                {
                  v61 = *v58++;
                  *v59 = v61;
                  v59 += 8;
                  v57 -= 8;
                  if (!v57)
                  {
                    goto LABEL_96;
                  }
                }

                v62 = v59 - v60;
                v63 = (v59 - v60) >> 3;
                v64 = v63 + 1;
                if ((v63 + 1) >> 61)
                {
                  sub_1794();
                }

                if ((v10 - v60) >> 2 > v64)
                {
                  v64 = (v10 - v60) >> 2;
                }

                if (v10 - v60 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v65 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v65 = v64;
                }

                if (v65)
                {
                  if (!(v65 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v63) = *v58;
                v59 = (8 * v63 + 8);
                memcpy(0, v60, v62);
                v60 = 0;
                v10 = 0;
                ++v58;
                v57 -= 8;
              }

              while (v57);
LABEL_96:
              if (v60 != v59)
              {
                v66 = v60;
                __pa = v59;
                v146 = v10;
                v13 = v34;
                while (1)
                {
                  if (v162 != v161)
                  {
                    v68 = v163 - 1;
                    v69 = *v66;
                    v70 = __ROR8__(*v66, 32);
                    v71 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) >> 33));
                    v72 = (v71 ^ (v71 >> 33)) & (v163 - 1);
                    v73 = (v165 + 8 * v72);
                    v75 = *v73;
                    v74 = v73[1];
                    if (v164 != *v73 || HIDWORD(v164) != v74)
                    {
                      if (v161)
                      {
                        v77 = 1;
                        while (*&v160 == __PAIR64__(v74, v75) || __PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v77) & v68;
                          v78 = (v165 + 8 * v72);
                          v75 = *v78;
                          v74 = v78[1];
                          ++v77;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      else
                      {
                        v80 = 1;
                        while (__PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v80) & v68;
                          v81 = (v165 + 8 * v72);
                          v75 = *v81;
                          v74 = v81[1];
                          ++v80;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      if (v72 != -1 && v165 + 8 * v72 != v165 + 8 * v163)
                      {
                        goto LABEL_100;
                      }
                    }
                  }

LABEL_123:
                  if (v149 >= v148)
                  {
                    v83 = v149 - v13;
                    v84 = (v149 - v13) >> 3;
                    v85 = v84 + 1;
                    if ((v84 + 1) >> 61)
                    {
                      sub_1794();
                    }

                    if ((v148 - v13) >> 2 > v85)
                    {
                      v85 = (v148 - v13) >> 2;
                    }

                    if (v148 - v13 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v86 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v86 = v85;
                    }

                    if (v86)
                    {
                      if (!(v86 >> 61))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v87 = v13;
                    v13 = 0;
                    *(8 * v84) = *v66;
                    v148 = 0;
                    v149 = (8 * v84 + 8);
                    memcpy(0, v87, v83);
                    if (v87)
                    {
                      operator delete(v87);
                    }

                    v10 = v146;
                  }

                  else
                  {
                    v149->i64[0] = *v66;
                    v149 = (v149 + 8);
                  }

                  sub_101F9D8(&v155, 1);
                  if (sub_10550EC(&v155, v66) == -1)
                  {
                    if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(exception, "insert overflow");
                    }

                    if (v161 && (v89 = vceq_s32(v160, *(v165 + 8 * v88)), (v89.i32[0] & v89.i32[1] & 1) != 0))
                    {
                      --v161;
                    }

                    else
                    {
                      ++v162;
                    }

                    *(v165 + v88) = *v66;
                  }

                  v90 = &a1[11][3 * v147];
                  v92 = *(v90 + 8);
                  v91 = *(v90 + 16);
                  if (v92 >= v91)
                  {
                    break;
                  }

                  *v92 = *v66;
                  *(v90 + 8) = v92 + 1;
                  if (v147 != v143)
                  {
                    goto LABEL_159;
                  }

LABEL_100:
                  v66 += 8;
                  if (v66 == v59)
                  {
                    __p = v60;
                    goto LABEL_51;
                  }
                }

                v93 = *v90;
                v94 = v92 - *v90;
                v95 = (v94 >> 3) + 1;
                if (v95 >> 61)
                {
                  sub_1794();
                }

                v96 = v13;
                v97 = v91 - v93;
                if (v97 >> 2 > v95)
                {
                  v95 = v97 >> 2;
                }

                if (v97 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v98 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v98 = v95;
                }

                if (v98)
                {
                  if (!(v98 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v99 = (8 * (v94 >> 3));
                *v99 = *v66;
                v100 = v99 + 1;
                memcpy(0, v93, v94);
                *v90 = 0;
                *(v90 + 8) = v100;
                *(v90 + 16) = 0;
                if (v93)
                {
                  operator delete(v93);
                }

                v59 = __pa;
                v10 = v146;
                v13 = v96;
                *(v90 + 8) = v100;
                if (v147 == v143)
                {
                  goto LABEL_100;
                }

LABEL_159:
                v142 = v13;
                v101 = a1[11];
                v102 = *v66;
                v103 = **a1;
                if (atomic_load_explicit(&qword_2732E58, memory_order_acquire))
                {
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 == v102)
                  {
                    goto LABEL_161;
                  }

LABEL_162:
                  v105 = *(v103 + 3856) + 1;
                  *(v103 + 3856) = v105;
                  if (*v103)
                  {
                    if (*(v103 + 688) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 696) = v105;
                      v106 = *(v103 + 704);
                      if (!v106)
                      {
                        goto LABEL_193;
                      }

LABEL_188:
                      v113 = (v106 + *v106);
                      v114 = (v113 - *v113);
                      if (*v114 >= 9u)
                      {
                        v115 = v114[4];
                        if (v115)
                        {
                          v116 = sub_101E640((v113 + v115 + *(v113 + v115)), v104);
                          v117 = (v116 - *v116);
                          if (*v117 < 0xBu)
                          {
                            v120 = 0;
                            v119 = 0xFFFFFFFF00000000;
                            v54 = v150;
                          }

                          else
                          {
                            v118 = v117[5];
                            v54 = v150;
                            if (!v118)
                            {
                              goto LABEL_193;
                            }

                            v120 = *(v116 + v118);
                            v119 = v120 & 0xFFFFFFFF00000000;
                            v120 = v120;
                          }

LABEL_194:
                          v121 = &v101[3 * v147];
                          v122 = v120 | v119;
                          v124 = v121[4];
                          v123 = v121[5];
                          if (v124 < v123)
                          {
                            *v124 = v122;
                            v67 = v124 + 8;
                            v10 = v146;
                          }

                          else
                          {
                            v125 = v121[3];
                            v126 = v124 - v125;
                            v127 = (v124 - v125) >> 3;
                            v128 = v127 + 1;
                            if ((v127 + 1) >> 61)
                            {
                              sub_1794();
                            }

                            v129 = v123 - v125;
                            if (v129 >> 2 > v128)
                            {
                              v128 = v129 >> 2;
                            }

                            if (v129 >= 0x7FFFFFFFFFFFFFF8)
                            {
                              v130 = 0x1FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v130 = v128;
                            }

                            if (v130)
                            {
                              if (!(v130 >> 61))
                              {
                                operator new();
                              }

                              sub_1808();
                            }

                            v131 = (v124 - v125) >> 3;
                            v132 = (8 * v127);
                            v133 = (8 * v127 - 8 * v131);
                            *v132 = v122;
                            v67 = v132 + 1;
                            memcpy(v133, v125, v126);
                            v121[3] = v133;
                            v121[4] = v67;
                            v121[5] = 0;
                            if (v125)
                            {
                              operator delete(v125);
                            }

                            v10 = v146;
                            v54 = v150;
                          }

                          v13 = v142;
                          v121[4] = v67;
                          v59 = __pa;
                          goto LABEL_100;
                        }
                      }
                    }

                    else if (*(v103 + 712) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 720) = v105;
                      v106 = *(v103 + 728);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 736) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 744) = v105;
                      v106 = *(v103 + 752);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 760) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 768) = v105;
                      v106 = *(v103 + 776);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      v107 = *(v103 + 720);
                      v108 = *(v103 + 696);
                      v136 = *(v103 + 768);
                      v137 = *(v103 + 744);
                      v106 = sub_2D52A4(*v103, 7, v102, 1);
                      if (v108 >= v105)
                      {
                        v109 = v105;
                      }

                      else
                      {
                        v109 = v108;
                      }

                      v110 = 28;
                      if (v108 >= v105)
                      {
                        v110 = 0;
                      }

                      if (v107 < v109)
                      {
                        v109 = v107;
                        v110 = 29;
                      }

                      if (v137 < v109)
                      {
                        v110 = 30;
                        v109 = v137;
                      }

                      v45 = v136 >= v109;
                      v111 = 31;
                      if (v45)
                      {
                        v111 = v110;
                      }

                      v112 = v103 + 16 + 24 * v111;
                      *v112 = v102;
                      *(v112 + 8) = *(v103 + 3856);
                      *(v112 + 16) = v106;
                      v54 = v150;
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }
                  }
                }

                else
                {
                  sub_21E6BE8();
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 != v102)
                  {
                    goto LABEL_162;
                  }

LABEL_161:
                  if (HIDWORD(qword_2732E50) != v104)
                  {
                    goto LABEL_162;
                  }
                }

LABEL_193:
                v120 = 0;
                v119 = 0xFFFFFFFF00000000;
                goto LABEL_194;
              }

              __p = v60;
              v13 = v34;
              v20 = (v20 + 8);
            }

            while (v20 != v150);
LABEL_46:
            v20 = v152;
LABEL_47:
            v7 = v13;
            v6 = v149;
            v13 = v20;
            v152 = v7;
            v153 = v149;
            v20 = v7;
            v12 = v154;
            v154 = v148;
            v148 = v12;
            v149 = v13;
            v8 = v13;
            if (++v141 == v140)
            {
              goto LABEL_7;
            }
          }
        }

        do
        {
LABEL_39:
          sub_101F9D8(&v155, 1);
          if (sub_10550EC(&v155, v20) == -1)
          {
            if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              v135 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v135, "insert overflow");
            }

            if (v161 && (v33 = vceq_s32(v160, *(v165 + 8 * v32)), (v33.i32[0] & v33.i32[1] & 1) != 0))
            {
              --v161;
            }

            else
            {
              ++v162;
            }

            *(v165 + v32) = v20->i64[0];
          }

          v20 = (v20 + 8);
        }

        while (v20 != v6);
        v20 = v152;
        v6 = v153;
        goto LABEL_45;
      }
    }

    v12 = v148;
    v13 = v149;
LABEL_7:
    v11 = v147 + 1;
    v148 = v12;
    v149 = v13;
    v9 = __p;
  }

  while (v147 + 1 != v138);
  if (v8)
  {
    operator delete(v8);
  }

LABEL_219:
  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  if (v165)
  {
    free(v165);
  }
}

void sub_105B8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (!a36)
  {
    _Unwind_Resume(exception_object);
  }

  free(a36);
  _Unwind_Resume(exception_object);
}

int32x2_t *sub_105B98C(int32x2_t *result)
{
  v1 = result[11];
  v2 = result[12];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *v1;
      v5 = v1[1];
      while (v4 != v5)
      {
        if (!*v4 || *(v4 + 1) == -1)
        {
          goto LABEL_7;
        }

        sub_101F9D8(&v3[1], 1);
        v6 = *&v3[8] - 1;
        v7 = *v4;
        v8 = __ROR8__(*v4, 32);
        v9 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) >> 33));
        v10 = v9 ^ (v9 >> 33);
        v11 = v3[10];
        v12 = v3[9].i32[0];
        v13 = v3[9].i32[1];
        v14 = v10 & v6;
        v15 = (*&v11 + 8 * (v10 & v6));
        result = *v15;
        v16 = v15[1];
        v17 = v3[6];
        if (v12 == result && v13 == v16)
        {
          goto LABEL_28;
        }

        if (v17)
        {
          v19 = -1;
          v20 = 1;
          do
          {
            if (v3[5].i32[0] == result && v3[5].i32[1] == v16)
            {
              if (v19 == -1)
              {
                v19 = v14;
              }
            }

            else if (__PAIR64__(v16, result) == v7)
            {
              goto LABEL_39;
            }

            v14 = (v14 + v20) & v6;
            v21 = (*&v11 + 8 * v14);
            result = *v21;
            v16 = v21[1];
            ++v20;
          }

          while (v12 != result || v13 != v16);
          if (v19 == -1)
          {
LABEL_28:
            v19 = v14;
          }

          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
            goto LABEL_41;
          }

LABEL_30:
          if (*&v17 && (v24 = vceq_s32(v3[5], *(*&v11 + 8 * v19)), (v24.i32[0] & v24.i32[1] & 1) != 0))
          {
            v3[6] = (*&v17 - 1);
          }

          else
          {
            v3[7] = (*&v23 + 1);
          }

          *(*&v11 + 8 * v19) = *v4;
          goto LABEL_7;
        }

        v25 = 1;
        while (__PAIR64__(v16, result) != v7)
        {
          v14 = (v14 + v25) & v6;
          v26 = (*&v11 + 8 * v14);
          result = *v26;
          v16 = v26[1];
          ++v25;
          if (v12 == result && v13 == v16)
          {
            goto LABEL_28;
          }
        }

LABEL_39:
        if (v14 == -1)
        {
          v19 = -1;
          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
LABEL_41:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }

          goto LABEL_30;
        }

LABEL_7:
        ++v4;
      }

      v1 += 3;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_105BBDC@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v13 + (v11 & v12));
    v16 = ((v15 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_9:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      v24 = result;
      v26 = a3;
      v27 = sub_10204B8((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v26;
      v18 = v27;
      result = v24;
      v28 = (v10[1] + 32 * v18);
      *v28 = *a2;
      v28[1] = 0;
      v28[2] = 0;
      v28[3] = 0;
      v13 = *v10;
      v17 = v10[1];
      v12 = v10[3];
      v23 = 1;
      goto LABEL_13;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    v19 = (v17 + 32 * v18);
    v21 = *v19;
    v20 = v19[1];
    if (v21 == v4 && v20 == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
LABEL_13:
  *a3 = v10;
  *(a3 + 8) = result + 768;
  *(a3 + 16) = v13 + v18;
  *(a3 + 24) = v17 + 32 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v23;
  return result;
}

uint64_t sub_105BD90(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_105BEB4(a1, a3, 1);
  if (!v5)
  {
    return 0xFFFFLL;
  }

  v6 = &v5[-*v5];
  if (*v6 < 5u)
  {
    return 0xFFFFLL;
  }

  if (!*(v6 + 2))
  {
    return 0xFFFFLL;
  }

  v7 = &v5[*(v6 + 2) + *&v5[*(v6 + 2)]];
  if (*v7 <= HIDWORD(a3))
  {
    return 0xFFFFLL;
  }

  v8 = &v7[4 * HIDWORD(a3) + 4 + *&v7[4 * HIDWORD(a3) + 4]];
  v9 = &v8[-*v8];
  if (*v9 < 9u)
  {
    return 0xFFFFLL;
  }

  v10 = *(v9 + 4);
  if (!v10)
  {
    return 0xFFFFLL;
  }

  v11 = &v8[v10 + *&v8[v10]];
  v14 = *v11;
  v12 = v11 + 4;
  v13 = v14;
  v15 = &v12[8 * v14];
  v16 = (((a2 >> 28) & 0xFFFFFFFFFFFFFFF0) + (a2 << 32)) & 0xFFFFFFFFFFFFFFF0 | (a2 >> 57) & 8 | (a2 >> 59) & 4 | (a2 >> 61) & 2 | (a2 >> 63);
  v17 = v12;
  while (v13)
  {
    v18 = &v17[(4 * v13) & 0x7FFFFFFF8];
    v20 = *v18;
    v19 = (v18 + 1);
    v21 = v13 >> 1;
    v13 += ~(v13 >> 1);
    if (v20 >= v16)
    {
      v13 = v21;
    }

    else
    {
      v17 = v19;
    }
  }

  if (v17 != v15 && *v17 == v16)
  {
    return (v17 - v12) >> 3;
  }

  else
  {
    return 0xFFFFLL;
  }
}

char *sub_105BEB4(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 1360) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1368) = v3;
    v4 = *(a1 + 1376);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1384) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1392) = v3;
    v4 = *(a1 + 1400);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1408) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1416) = v3;
    v4 = *(a1 + 1424);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1432) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1440) = v3;
    v4 = *(a1 + 1448);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1416);
    v8 = *(a1 + 1392);
    v9 = *(a1 + 1368);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 1368);
    }

    v11 = 56;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1392);
    }

    v13 = 57;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 1416);
    }

    v15 = *(a1 + 1440);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 58;
    }

    v18 = sub_2D52A4(*a1, 14, a2, 1);
    v19 = 59;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_105C088(v21);
  return 0;
}

uint64_t sub_105C088(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0xEu);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_105C184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_105C1B4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 56) + 200 * (bswap64(v7) % *(*(a1 + 16) + 40)));
  v16 = a2;
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630(*(*(a1 + 16) + 136) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 120)), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

uint64_t sub_105C338@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v12;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v18 = v10[1];
    v20 = (v18 + 32 * v19);
    if (*v20 == v4 && v20[1] == v5)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v22 = v12 == v19;
  v23 = (v13 + v19);
  v24 = (v12 + v13);
  v25 = (result + 768);
  if (v12 == v19)
  {
    v23 = 0;
    v25 = 0;
    v10 = 0;
    v26 = a3;
  }

  else
  {
    v26 = (v18 + 32 * v19);
  }

  if (v22)
  {
    v24 = 0;
  }

  *a3 = v10;
  a3[1] = v25;
  a3[2] = v23;
  a3[3] = v26;
  a3[4] = v24;
  return result;
}

int *sub_105C4B0(int *result, unsigned int *a2, void *a3)
{
  a3[1] = *a3;
  if (!result[970])
  {
    v19[7] = v3;
    v19[8] = v4;
    result = sub_3BF72C((result + 2), *a2, 1);
    if (result)
    {
      v7 = (result - *result);
      if (*v7 >= 0xBu)
      {
        v8 = v7[5];
        if (v8)
        {
          v9 = (result + v8 + *(result + v8));
          v10 = a2[1] & 0xFFFFFFF;
          if (*v9 > v10)
          {
            v11 = (&v9[v10 + 1] + v9[v10 + 1]);
            v12 = (v11 - *v11);
            if (*v12 >= 5u)
            {
              v13 = v12[2];
              if (v13)
              {
                v14 = (v11 + v13 + *(v11 + v13));
                if (*v14 > ((a3[2] - *a3) >> 3))
                {
                  operator new();
                }

                v15 = *v14;
                v19[0] = a3;
                if (v15)
                {
                  v16 = 8 * v15;
                  v17 = v14 + 1;
                  do
                  {
                    v18 = v17;
                    result = sub_1057FF0(v19, &v18);
                    ++v17;
                    v16 -= 8;
                  }

                  while (v16);
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

unint64_t sub_105C628(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = (16 * a2[1]) | (a2[1] >> 25) & 8 | (a2[1] >> 27) & 4 | (a2[1] >> 29) & 2 | (a2[1] >> 31);
  if (*(a1 + 20) == *a2 && *(a1 + 16) == v3)
  {
    LODWORD(v4) = *(a1 + 24);
    v5 = *(a1 + 8);
    goto LABEL_21;
  }

  v5 = *(a1 + 8);
  v6 = (v5 + 1);
  v7 = *v5;
  v8 = &v5[3 * v7 + 1];
  if (*v5)
  {
    v9 = (v5 + 1);
    do
    {
      v10 = v7 >> 1;
      v11 = &v9[12 * (v7 >> 1)];
      v12 = *(*a1 + 4 + 4 * *(v11 + 2));
      v14 = *v11;
      v13 = (v11 + 3);
      v15 = v12 < v2;
      v16 = v14 < v3;
      if (v14 != v3)
      {
        v15 = v16;
      }

      v7 += ~v10;
      if (v15)
      {
        v9 = v13;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v7);
    if (v9 == v8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = (v5 + 1);
    if (v6 == v8)
    {
LABEL_19:
      LODWORD(v4) = -1;
      goto LABEL_21;
    }
  }

  if (*(*a1 + 4 * *(v9 + 2) + 4) != v2 || *v9 != v3)
  {
    goto LABEL_19;
  }

  v4 = (v9 - v6) / 0xCuLL;
LABEL_21:
  v18 = HIWORD(v5[3 * v4 + 3]);
  if (v18 == 0xFFFF)
  {
    return 0;
  }

  v19 = &v5[3 * v18 + 1];
  v20 = *(*a1 + 4 * *(v19 + 2) + 4);
  v21 = *v19;
  *(a1 + 16) = v21 | (v20 << 32);
  *(a1 + 24) = v18;
  return v20 | (((v21 >> 4) & 0x8FFFFFFF | (v21 << 31) | (((v21 >> 3) & 1) << 28) & 0x9FFFFFFF | (((v21 >> 2) & 1) << 29) & 0xBFFFFFFF | (((v21 >> 1) & 1) << 30)) << 32);
}

uint64_t sub_105C7AC(void *a1, unsigned int *a2)
{
  v3 = a2[1];
  v13 = ((*a2 << 32) + 16 * v3) | (v3 >> 25) & 8 | (v3 >> 27) & 4 | (v3 >> 29) & 2 | (v3 >> 31);
  v4 = sub_105C8A4(a1, &v13);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (v5 + 8 * v6);
  if (v4 == v7 || *v4 != v13)
  {
    v8 = a1[6];
    v9 = v8 + 16 * v6;
  }

  else
  {
    v8 = a1[6];
    v9 = v8 + 2 * (v4 - v5);
    if (v4 != v7)
    {
      return v9;
    }
  }

  if (v9 == v8 + 16 * v6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Key not found.", 0xEuLL);
  }

  return v9;
}

uint64_t sub_105C8A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = 0;
    do
    {
      if ((atomic_load_explicit(&qword_2733DF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733DF0))
      {
        qword_2733DE8 = *sub_105CAAC() >> 3;
        __cxa_guard_release(&qword_2733DF0);
      }

      v7 = qword_2733DE8;
      if ((atomic_load_explicit(&qword_2733E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733E10))
      {
        v14 = *sub_105CA1C();
        qword_2733E08 = v14 + (*sub_105CA1C() >> 1);
        __cxa_guard_release(&qword_2733E10);
      }

      _X8 = v3 + 8 * v7 * v6 + 8 * qword_2733E08;
      __asm { PRFM            #0, [X8] }

      v3 = *(a1 + 24);
      v2 = *(a1 + 32);
      if (*a2 <= *(v3 + 8 * v6))
      {
        v6 = 2 * v6 + 1;
      }

      else
      {
        v6 = 2 * v6 + 2;
      }
    }

    while (v6 < v2);
    v15 = __clz(__rbit64(-2 - v6));
    if (v6 == -2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    v17 = (v6 + 1) >> v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v2 = v17 - 1;
  }

  return v3 + 8 * v2;
}

uint64_t *sub_105CA1C()
{
  if ((atomic_load_explicit(&qword_2733DF0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2733DF0))
  {
    return &qword_2733DE8;
  }

  qword_2733DE8 = *sub_105CAAC() >> 3;
  __cxa_guard_release(&qword_2733DF0);
  return &qword_2733DE8;
}

uint64_t *sub_105CAAC()
{
  if ((atomic_load_explicit(&qword_2733E00, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2733E00))
  {
    return &qword_2733DF8;
  }

  qword_2733DF8 = sub_3226F0();
  __cxa_guard_release(&qword_2733E00);
  return &qword_2733DF8;
}

void *sub_105CB34(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40E98C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8((v5 + 103), a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_105CC38(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_105CC98(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_105BEB4(a1, a3, 1);
  if (!v5)
  {
    return 0xFFFFLL;
  }

  v6 = &v5[-*v5];
  if (*v6 < 5u)
  {
    return 0xFFFFLL;
  }

  if (!*(v6 + 2))
  {
    return 0xFFFFLL;
  }

  v7 = &v5[*(v6 + 2) + *&v5[*(v6 + 2)]];
  if (*v7 <= HIDWORD(a3))
  {
    return 0xFFFFLL;
  }

  v8 = &v7[4 * HIDWORD(a3) + 4 + *&v7[4 * HIDWORD(a3) + 4]];
  v9 = &v8[-*v8];
  if (*v9 < 0xBu)
  {
    return 0xFFFFLL;
  }

  v10 = *(v9 + 5);
  if (!v10)
  {
    return 0xFFFFLL;
  }

  v11 = &v8[v10 + *&v8[v10]];
  v14 = *v11;
  v12 = v11 + 4;
  v13 = v14;
  v15 = &v12[8 * v14];
  v16 = (((a2 >> 28) & 0xFFFFFFFFFFFFFFF0) + (a2 << 32)) & 0xFFFFFFFFFFFFFFF0 | (a2 >> 57) & 8 | (a2 >> 59) & 4 | (a2 >> 61) & 2 | (a2 >> 63);
  v17 = v12;
  while (v13)
  {
    v18 = &v17[(4 * v13) & 0x7FFFFFFF8];
    v20 = *v18;
    v19 = (v18 + 1);
    v21 = v13 >> 1;
    v13 += ~(v13 >> 1);
    if (v20 >= v16)
    {
      v13 = v21;
    }

    else
    {
      v17 = v19;
    }
  }

  if (v17 != v15 && *v17 == v16)
  {
    return (v17 - v12) >> 3;
  }

  else
  {
    return 0xFFFFLL;
  }
}

void sub_105CDBC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v16 = a2;
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 16) + 200 * (bswap64(v7) % **(a1 + 16)));
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630(*(*(a1 + 16) + 96) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 80)), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void sub_105CF40()
{
  *(v0 - 8) = 0;
  *(v0 - 48) = v1;
  *(v0 - 40) = 0;
  *(v0 - 32) = 0;
  *(v0 - 24) = 0;
}

void sub_105CF50()
{
  byte_27C11D7 = 3;
  LODWORD(qword_27C11C0) = 5136193;
  byte_27C11EF = 3;
  LODWORD(qword_27C11D8) = 5136194;
  byte_27C1207 = 3;
  LODWORD(qword_27C11F0) = 5136195;
  byte_27C121F = 15;
  strcpy(&qword_27C1208, "vehicle_mass_kg");
  byte_27C1237 = 21;
  strcpy(&xmmword_27C1220, "vehicle_cargo_mass_kg");
  byte_27C124F = 19;
  strcpy(&qword_27C1238, "vehicle_aux_power_w");
  byte_27C1267 = 15;
  strcpy(&qword_27C1250, "dcdc_efficiency");
  strcpy(&qword_27C1268, "drive_train_efficiency");
  HIBYTE(word_27C127E) = 22;
  operator new();
}

void sub_105D12C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C127E) < 0)
  {
    sub_21E6C80();
  }

  sub_21E6C8C();
  _Unwind_Resume(a1);
}

void **sub_105D14C(void **a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3B0834(a2);
  v4 = sub_3AF144(*a1);
  v5 = sub_2BDE28(v4);
  if (v5)
  {
    v6 = sub_3AF144(*a1);
    LOBYTE(v5) = sub_2BDE20(v6);
  }

  *(a1 + 16) = v5;
  *(a1 + 9) = *(sub_3B1768(*a1) + 3872);
  v7 = sub_3B0708(a2);
  v8 = a1[1];
  a1[3] = v7;
  a1[4] = v8;
  sub_10AC4E0((a1 + 5), a2);
  a1[14] = sub_3AF374(a2);
  a1[15] = sub_3AF458(a2);
  a1[16] = sub_57478(a2);
  return a1;
}

void sub_105D200(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 88);
  if (v3)
  {
    *(v1 + 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_105D220(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, char a5)
{
  if (!*(a2 + 16))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v9 = *a2;
  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_14;
  }

  v11 = a1;
  v12 = sub_101E790(*(a1 + 24), v10, 1);
  v13 = v12;
  if (v12)
  {
    v14 = &v12[-*v12];
    a1 = v11;
    if (*v14 >= 9u && (v15 = *(v14 + 4)) != 0)
    {
      v16 = sub_101E640(&v13[v15 + *&v13[v15]], HIDWORD(v10));
      v17 = (v16 - *v16);
      if (*v17 >= 5u)
      {
        v18 = v17[2];
        a1 = v11;
        if (v18)
        {
          v19 = *(v16 + v18);
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v19 = 0;
      a1 = v11;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
    a1 = v11;
  }

LABEL_14:
  sub_105D3DC(a1, v9, v19, 0, a3, a4, a5, &v26);
  v21 = v26;
  if (v26 != v27)
  {
    v22 = *(a2 + 8);
    v23 = 0xFFFFFFFFLL;
    v21 = v26;
    while (v21[1] != v22)
    {
      v21 += 5;
      if (v21 == v27)
      {
        v24 = 0x7FFFFFFF00000000;
        if (v26)
        {
          goto LABEL_22;
        }

        return v24 | v23;
      }
    }
  }

  if (v21 == v27)
  {
    v24 = 0x7FFFFFFF00000000;
    v23 = 0xFFFFFFFFLL;
    if (!v26)
    {
      return v24 | v23;
    }

    goto LABEL_22;
  }

  v25 = *(v21 + 28);
  v24 = v25 & 0xFFFFFFFF00000000;
  v23 = v25;
  if (v26)
  {
LABEL_22:
    v27 = v26;
    operator delete(v26);
  }

  return v24 | v23;
}

void sub_105D3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_105D3DC(void **a1, unint64_t a2, int a3, int a4, unsigned int *a5, int a6, char a7, void *a8)
{
  a8[1] = *a8;
  if (a3)
  {
    LODWORD(__p) = a3;
    v15 = sub_101F854(a1[3], HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 >> 1) & 1 ^ (a4 == 0), &__p);
    v16 = v15;
    v17 = v15;
    if (v15 <= 0xFFFFFFFEFFFFFFFFLL && v15 != 0)
    {
      __p = 0uLL;
      v19 = sub_1055EF8(a1[4], v15, 1);
      if (v19)
      {
        v20 = &v19[-*v19];
        if (*v20 >= 5u)
        {
          v21 = *(v20 + 2);
          if (v21)
          {
            v22 = HIDWORD(v16);
            v23 = &v19[v21 + *&v19[v21]];
            if (*v23 > HIDWORD(v16))
            {
              v24 = &v23[4 * v22 + 4 + *&v23[4 * v22 + 4]];
              v25 = &v24[-*v24];
              if (*v25 >= 9u)
              {
                v26 = *(v25 + 4);
                if (v26)
                {
                  if (*&v24[v26 + *&v24[v26]])
                  {
                    v81 = 0;
                    v82 = 0;
                    v27 = sub_1055EF8(a1[4], v17, 1);
                    if (v27)
                    {
                      v28 = &v27[-*v27];
                      if (*v28 >= 5u)
                      {
                        v29 = *(v28 + 2);
                        if (v29)
                        {
                          v30 = &v27[v29 + *&v27[v29]];
                          if (*v30 > HIDWORD(v16))
                          {
                            v31 = &v30[4 * v22 + 4 + *&v30[4 * v22 + 4]];
                            v32 = &v31[-*v31];
                            if (*v32 >= 0xBu)
                            {
                              v33 = *(v32 + 5);
                              if (v33)
                              {
                                if (*&v31[v33 + *&v31[v33]])
                                {
                                  v65 = *(a1 + 16);
                                  v66 = *(a1 + 9);
                                  v67 = a1[1];
                                  v68 = a1[14];
                                  v69 = a6;
                                  v64 = sub_10AC56C();
                                  if (sub_394BD0())
                                  {
                                    v34 = a6;
                                  }

                                  else
                                  {
                                    v34 = 0x7FFFFFFF;
                                  }

                                  v63 = v34;
                                  v35 = sub_394BD0();
                                  v36 = *a5;
                                  if (v35)
                                  {
                                    v37 = a6;
                                  }

                                  else
                                  {
                                    v37 = 0x7FFFFFFF;
                                  }

                                  *&__p = v16;
                                  *(&__p + 1) = __PAIR64__(v64, v36);
                                  v71 = v63;
                                  v72 = v37;
                                  v73 = a7;
                                  v74 = v66;
                                  v75 = v65;
                                  v76 = 0;
                                  v77 = 0x7FFFFFFF;
                                  sub_1064990(&__p, v68, v67, &v81);
                                  v38 = a1[1];
                                  v39 = sub_FC1BE4(a1[14], v82);
                                  if (v85)
                                  {
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    v40 = v39;
                                  }

                                  if (v40 && (v41 = v81, v42 = v82, v43 = v86, (v44 = sub_3C0014(v38, v81, 1)) != 0) && (v45 = &v44[-*v44], *v45 >= 0xFu) && *(v45 + 7) && (v46 = &v44[*(v45 + 7) + *&v44[*(v45 + 7)]], *v46 > HIDWORD(v41)) && (v47 = &v46[4 * HIDWORD(v41) + 4 + *&v46[4 * HIDWORD(v41) + 4]], v48 = &v47[-*v47], *v48 >= 5u) && (v49 = *(v48 + 2)) != 0 && (v50 = &v47[v49 + *&v47[v49]], v51 = v42 + *(v38 + 3872) * v43, v51 < *v50) && *&v50[4 * v51 + 4] != -1)
                                  {
                                    v52 = a1[1];
                                    if (a4)
                                    {
                                      sub_10650FC(v52, v16, a2, v82, v86, a8);
                                    }

                                    else
                                    {
                                      sub_1064CA0(v52, v16, a2, v82, v86, a8);
                                    }
                                  }

                                  else if ((sub_3B8508(*a1) & 1) == 0)
                                  {
                                    v53 = (HIDWORD(v81) + (v81 << 6) + (v81 >> 2) + 2654435769u) ^ v81;
                                    v54 = (v82 + (v53 << 6) + (v53 >> 2) + 2654435769u) ^ v53;
                                    v55 = (SHIDWORD(v82) + (v54 << 6) + (v54 >> 2) + 2654435769u) ^ v54;
                                    v56 = (v83 + (v55 << 6) + (v55 >> 2) + 2654435769u) ^ v55;
                                    v57 = (v84 + (v56 << 6) + (v56 >> 2) + 2654435769u) ^ v56;
                                    v58 = (v85 + (v57 << 6) + (v57 >> 2) + 2654435769u) ^ v57;
                                    v59 = (v86 + (v58 << 6) + (v58 >> 2) + 2654435769u) ^ v58;
                                    v60 = (v87 + (v59 << 6) + (v59 >> 2) + 2654435769u) ^ v59;
                                    v61 = (a1[15][2] + 272 * (bswap64(v60) % *a1[15]));
                                    *&__p = &v81;
                                    *(&__p + 1) = v60;
                                    sub_106557C(v61, &__p, &v78);
                                    if ((v80 & 1) == 0)
                                    {
                                      v88[0] = v16;
                                      sub_105DF50(&__p, v88, 1uLL);
                                      sub_105DC54(a1, &__p, a5, v69, v85, 4u);
                                      if (__p)
                                      {
                                        *(&__p + 1) = __p;
                                        operator delete(__p);
                                      }

                                      sub_105DB6C(a1[15], &v81, &__p);
                                      sub_105E004(&v78, &__p);
                                      sub_1F1A8(&__p);
                                    }

                                    if (!v78 || *v78 == v78[1])
                                    {
                                      if (sub_7E7E4(3u))
                                      {
                                        sub_19594F8(&__p);
                                        sub_4A5C(&__p, "Costs are not available from cache (after computing them). LRUCache issue or differing keys.", 92);
                                        sub_1959680(&__p, v88);
                                        sub_7E854(v88, 3u);
                                        if (v89 < 0)
                                        {
                                          operator delete(v88[0]);
                                        }

                                        sub_1959728(&__p);
                                      }

                                      operator new();
                                    }

                                    if (a4)
                                    {
                                      sub_105E4E4(a1, v16, &v78, a2, a8);
                                    }

                                    else
                                    {
                                      sub_105E0A8(a1, v16, &v78, a2, a8);
                                    }

                                    v62 = v79;
                                    if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                    {
                                      (v62->__on_zero_shared)(v62);
                                      std::__shared_weak_count::__release_weak(v62);
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
            }
          }
        }
      }
    }
  }
}

void sub_105DA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (*(v10 - 97) < 0)
  {
    operator delete(*(v10 - 120));
    sub_1959728(va);
    sub_1F1A8(v10 - 184);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  sub_1F1A8(v10 - 184);
  _Unwind_Resume(a1);
}

void sub_105DB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1F1A8(v10 - 160);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_105DB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_105DB6C(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v4 = (a2[2] + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v5 = (a2[3] + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v6 = (a2[4] + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v7 = (a2[5] + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = (*(a2 + 24) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (*(a2 + 13) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (*(a2 + 28) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (a1[2] + 272 * (bswap64(v10) % *a1));
  v12[0] = a2;
  v12[1] = v10;
  sub_106557C(v11, v12, a3);
}

void sub_105DC54(void **a1, void ***a2, unsigned int *a3, int a4, char a5, unsigned int a6)
{
  if ((sub_3B8508(*a1) & 1) == 0)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      v14 = 0;
      do
      {
        v14 |= sub_105E918(a1, *v12++, a3, a4, a5, &v37);
      }

      while (v12 != v13);
      v15 = v37;
      if (v14)
      {
        __p = 0;
        v48 = 0;
        v49 = 0;
        sub_101EA90(&v35, 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 3));
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        if (v38 != v37)
        {
          v16 = 0;
          v17 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 3);
          do
          {
            v18 = v37 + 40 * v16;
            v19 = *(v18 + 2);
            if (v19)
            {
              v20 = 0;
              v21 = *(v18 + 2);
              do
              {
                ++v20;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              v20 = 0;
            }

            sub_1063F90(v35 + 24 * v16, *(v35 + 3 * v16 + 1), v19, 0, v20);
            ++v16;
          }

          while (v16 != v17);
        }

        atomic_fetch_add(sub_102DC44(), 1u);
        v46 = a4;
        v45 = a5;
        if ((sub_3B8508(*a1) & 1) == 0)
        {
          v22 = sub_2D2E8();
          v40 = a1;
          v41 = &v35;
          v42 = a3;
          v43 = &v46;
          v44 = &v45;
          sub_1065884(&__p, v22, a6);
        }

        atomic_fetch_add(sub_102DC44(), 0xFFFFFFFF);
        v23 = v35;
        if (v35)
        {
          v24 = v36;
          v25 = v35;
          if (v36 != v35)
          {
            v26 = v36;
            do
            {
              v28 = *(v26 - 3);
              v26 -= 24;
              v27 = v28;
              if (v28)
              {
                *(v24 - 2) = v27;
                operator delete(v27);
              }

              v24 = v26;
            }

            while (v26 != v23);
            v25 = v35;
          }

          v36 = v23;
          operator delete(v25);
        }

        v15 = v37;
      }

      if (v15)
      {
        v29 = v38;
        v30 = v15;
        if (v38 != v15)
        {
          do
          {
            v31 = *(v29 - 3);
            if (v31)
            {
              do
              {
                v32 = *v31;
                operator delete(v31);
                v31 = v32;
              }

              while (v32);
            }

            v34 = *(v29 - 5);
            v29 -= 5;
            v33 = v34;
            *v29 = 0;
            if (v34)
            {
              operator delete(v33);
            }
          }

          while (v29 != v15);
          v30 = v37;
        }

        v38 = v15;
        operator delete(v30);
      }
    }
  }
}

void sub_105DEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
    sub_105F2B4(&a13);
    _Unwind_Resume(a1);
  }

  sub_105F2B4(&a13);
  _Unwind_Resume(a1);
}

void *sub_105DF50(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_105DFE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_105E004(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
    *(v4 + 16) = *(a2 + 16);
  }

  else
  {
    *(result + 16) = *(a2 + 16);
  }

  return result;
}

void sub_105E0A8(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a2;
  if (*a3 && (v10 = *(*a3 + 24)) != 0)
  {
    v11 = (*(v10 + 32) - *(v10 + 24)) >> 3;
    __p = 0;
    v70 = 0;
    v71 = 0;
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1055EF8(*(a1 + 32), a2, 1);
    if (v13 && (v14 = &v13[-*v13], *v14 >= 5u) && *(v14 + 2) && (v15 = &v13[*(v14 + 2) + *&v13[*(v14 + 2)]], *v15 > HIDWORD(a2)) && (v16 = &v15[4 * HIDWORD(a2) + 4 + *&v15[4 * HIDWORD(a2) + 4]], v17 = &v16[-*v16], *v17 >= 0xBu) && (v18 = *(v17 + 5)) != 0)
    {
      LODWORD(v11) = *&v16[v18 + *&v16[v18]];
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *(v12 + 24);
  if (v19)
  {
    v20 = *v19;
    v21 = v19[1];
    v22 = (v21 - v20) >> 3;
    if (v22 < 1)
    {
      v41 = v20;
      if (v21 == v20)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v21 - v20 == 8)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20;
        do
        {
          v42 = (2 * v22) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v23 + v42;
          __asm { PRFM            #0, [X14] }

          v49 = &v23[v22 >> 1];
          _X13 = v49 + v42;
          __asm { PRFM            #0, [X13] }

          if (*v49 >= a4)
          {
            v52 = 0;
          }

          else
          {
            v52 = v22 >> 1;
          }

          v23 += v52;
          v22 -= v22 >> 1;
        }

        while (v22 > 1);
      }

      v41 = &v23[*v23 < a4];
      if (v21 == v41)
      {
        goto LABEL_59;
      }
    }

    if (*v41 != a4)
    {
      goto LABEL_59;
    }

    v40 = v41 - v20;
    goto LABEL_42;
  }

LABEL_18:
  v24 = sub_1055EF8(*(a1 + 32), a2, 1);
  if (v24)
  {
    v25 = &v24[-*v24];
    if (*v25 >= 5u)
    {
      if (*(v25 + 2))
      {
        v26 = &v24[*(v25 + 2) + *&v24[*(v25 + 2)]];
        if (*v26 > HIDWORD(a2))
        {
          v27 = &v26[4 * HIDWORD(a2) + 4 + *&v26[4 * HIDWORD(a2) + 4]];
          v28 = &v27[-*v27];
          if (*v28 >= 9u)
          {
            v29 = *(v28 + 4);
            if (v29)
            {
              v30 = &v27[v29 + *&v27[v29]];
              v33 = *v30;
              v31 = v30 + 4;
              v32 = v33;
              v34 = &v31[8 * v33];
              v35 = v31;
              while (v32)
              {
                v36 = &v35[(4 * v32) & 0x7FFFFFFF8];
                v38 = *v36;
                v37 = v36 + 8;
                v39 = v32 >> 1;
                v32 += ~(v32 >> 1);
                if (v38 >= a4)
                {
                  v32 = v39;
                }

                else
                {
                  v35 = v37;
                }
              }

              if (v35 != v34 && *v35 == a4)
              {
                v40 = v35 - v31;
LABEL_42:
                v68 = v40 >> 3;
                if (v68 != -1)
                {
                  if (*a3 && (v53 = *(*a3 + 24)) != 0)
                  {
                    if ((v53 + 24) != &__p)
                    {
                      sub_31F64(&__p, *(v53 + 24), *(v53 + 32), (*(v53 + 32) - *(v53 + 24)) >> 3);
                    }
                  }

                  else
                  {
                    v54 = *(a1 + 32);
                    v70 = __p;
                    v55 = sub_1055EF8(v54, a2, 1);
                    if (v55)
                    {
                      v56 = &v55[-*v55];
                      if (*v56 >= 5u)
                      {
                        if (*(v56 + 2))
                        {
                          v57 = &v55[*(v56 + 2) + *&v55[*(v56 + 2)]];
                          if (*v57 > HIDWORD(a2))
                          {
                            v58 = &v57[4 * HIDWORD(a2) + 4 + *&v57[4 * HIDWORD(a2) + 4]];
                            v59 = &v58[-*v58];
                            if (*v59 >= 0xBu)
                            {
                              v60 = *(v59 + 5);
                              if (v60)
                              {
                                v61 = &v58[v60 + *&v58[v60]];
                                v62 = *v61;
                                p_p = &__p;
                                if (v62)
                                {
                                  v63 = 8 * v62;
                                  v64 = (v61 + 4);
                                  do
                                  {
                                    v74 = *v64;
                                    sub_A2324(&p_p, &v74);
                                    ++v64;
                                    v63 -= 8;
                                  }

                                  while (v63);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  LOWORD(p_p) = 0;
                  v65 = __p;
                  v66 = v70;
                  if (__p != v70)
                  {
                    v67 = v11 * (v40 >> 3);
                    do
                    {
                      sub_105F6B4(a5, &v72, v65, &v73, &v68, &p_p, (**a3 + 8 * v67++));
                      LOWORD(p_p) = p_p + 1;
                      ++v65;
                    }

                    while (v65 != v66);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }
}

void sub_105E4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_105E4E4(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a2;
  if (*a3 && (v10 = *(*a3 + 24)) != 0)
  {
    v11 = (*(v10 + 32) - *(v10 + 24)) >> 3;
    __p = 0;
    v70 = 0;
    v71 = 0;
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1055EF8(*(a1 + 32), a2, 1);
    if (v13 && (v14 = &v13[-*v13], *v14 >= 5u) && *(v14 + 2) && (v15 = &v13[*(v14 + 2) + *&v13[*(v14 + 2)]], *v15 > HIDWORD(a2)) && (v16 = &v15[4 * HIDWORD(a2) + 4 + *&v15[4 * HIDWORD(a2) + 4]], v17 = &v16[-*v16], *v17 >= 0xBu) && (v18 = *(v17 + 5)) != 0)
    {
      LODWORD(v11) = *&v16[v18 + *&v16[v18]];
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *(v12 + 24);
  if (v19)
  {
    v20 = *(v19 + 24);
    v21 = *(v19 + 32);
    v22 = (v21 - v20) >> 3;
    if (v22 < 1)
    {
      v41 = v20;
      if (v21 == v20)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v21 - v20 == 8)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20;
        do
        {
          v42 = (2 * v22) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v23 + v42;
          __asm { PRFM            #0, [X14] }

          v49 = &v23[v22 >> 1];
          _X13 = v49 + v42;
          __asm { PRFM            #0, [X13] }

          if (*v49 >= a4)
          {
            v52 = 0;
          }

          else
          {
            v52 = v22 >> 1;
          }

          v23 += v52;
          v22 -= v22 >> 1;
        }

        while (v22 > 1);
      }

      v41 = &v23[*v23 < a4];
      if (v21 == v41)
      {
        goto LABEL_59;
      }
    }

    if (*v41 != a4)
    {
      goto LABEL_59;
    }

    v40 = v41 - v20;
    goto LABEL_42;
  }

LABEL_18:
  v24 = sub_1055EF8(*(a1 + 32), a2, 1);
  if (v24)
  {
    v25 = &v24[-*v24];
    if (*v25 >= 5u)
    {
      if (*(v25 + 2))
      {
        v26 = &v24[*(v25 + 2) + *&v24[*(v25 + 2)]];
        if (*v26 > HIDWORD(a2))
        {
          v27 = &v26[4 * HIDWORD(a2) + 4 + *&v26[4 * HIDWORD(a2) + 4]];
          v28 = &v27[-*v27];
          if (*v28 >= 0xBu)
          {
            v29 = *(v28 + 5);
            if (v29)
            {
              v30 = &v27[v29 + *&v27[v29]];
              v33 = *v30;
              v31 = v30 + 4;
              v32 = v33;
              v34 = &v31[8 * v33];
              v35 = v31;
              while (v32)
              {
                v36 = &v35[(4 * v32) & 0x7FFFFFFF8];
                v38 = *v36;
                v37 = (v36 + 1);
                v39 = v32 >> 1;
                v32 += ~(v32 >> 1);
                if (v38 >= a4)
                {
                  v32 = v39;
                }

                else
                {
                  v35 = v37;
                }
              }

              if (v35 != v34 && *v35 == a4)
              {
                v40 = v35 - v31;
LABEL_42:
                v68 = v40 >> 3;
                if (v68 != -1)
                {
                  if (*a3 && (v53 = *(*a3 + 24)) != 0)
                  {
                    if (v53 != &__p)
                    {
                      sub_31F64(&__p, *v53, *(v53 + 8), (*(v53 + 8) - *v53) >> 3);
                    }
                  }

                  else
                  {
                    v54 = *(a1 + 32);
                    v70 = __p;
                    v55 = sub_1055EF8(v54, a2, 1);
                    if (v55)
                    {
                      v56 = &v55[-*v55];
                      if (*v56 >= 5u)
                      {
                        if (*(v56 + 2))
                        {
                          v57 = &v55[*(v56 + 2) + *&v55[*(v56 + 2)]];
                          if (*v57 > HIDWORD(a2))
                          {
                            v58 = &v57[4 * HIDWORD(a2) + 4 + *&v57[4 * HIDWORD(a2) + 4]];
                            v59 = &v58[-*v58];
                            if (*v59 >= 9u)
                            {
                              v60 = *(v59 + 4);
                              if (v60)
                              {
                                v61 = &v58[v60 + *&v58[v60]];
                                v62 = *v61;
                                p_p = &__p;
                                if (v62)
                                {
                                  v63 = 8 * v62;
                                  v64 = (v61 + 4);
                                  do
                                  {
                                    v74 = *v64;
                                    sub_A2324(&p_p, &v74);
                                    ++v64;
                                    v63 -= 8;
                                  }

                                  while (v63);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  LOWORD(p_p) = 0;
                  v65 = __p;
                  v66 = v70;
                  if (__p != v70)
                  {
                    v67 = (v40 >> 3);
                    do
                    {
                      sub_105F6B4(a5, v65, &v72, &v73, &p_p, &v68, (**a3 + 8 * v67));
                      v67 += v11;
                      LOWORD(p_p) = p_p + 1;
                      ++v65;
                    }

                    while (v65 != v66);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }
}

void sub_105E8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_105E918(uint64_t a1, void *a2, unsigned int *a3, int a4, char a5, uint64_t *a6)
{
  v104 = *(a1 + 18);
  v11 = *(a1 + 16);
  v110 = *(a1 + 112);
  v107 = *(a1 + 8);
  v12 = sub_10AC56C();
  if (sub_394BD0())
  {
    v13 = a4;
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = a2;
  v15 = sub_394BD0();
  v112 = a3;
  v16 = *a3;
  v109 = a4;
  if (v15)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  v127[0] = a2;
  v127[1] = __PAIR64__(v12, v16);
  *&v128 = __PAIR64__(v17, v13);
  v113 = a5;
  BYTE8(v128) = a5;
  WORD5(v128) = v104;
  WORD6(v128) = v11;
  LODWORD(v129) = 0x7FFFFFFF;
  sub_1064990(v127, v110, v107, &v130);
  v18 = *(a1 + 8);
  if (sub_FC1BE4(*(a1 + 112), v131) && !v135)
  {
    v19 = v130;
    v20 = v131;
    v21 = v136;
    v22 = sub_3C0014(v18, v130, 1);
    if (v22)
    {
      v23 = &v22[-*v22];
      if (*v23 >= 0xFu)
      {
        if (*(v23 + 7))
        {
          v24 = &v22[*(v23 + 7) + *&v22[*(v23 + 7)]];
          if (*v24 > HIDWORD(v19))
          {
            v25 = &v24[4 * HIDWORD(v19) + 4 + *&v24[4 * HIDWORD(v19) + 4]];
            v26 = &v25[-*v25];
            if (*v26 >= 5u)
            {
              v27 = *(v26 + 2);
              if (v27)
              {
                v28 = &v25[v27 + *&v25[v27]];
                v29 = v20 + *(v18 + 3872) * v21;
                if (v29 < *v28 && v28[v29 + 1] != -1)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  if (!v14)
  {
    goto LABEL_26;
  }

  v31 = sub_101E790(*(a1 + 24), v14, 1);
  if (!v31 || (v32 = &v31[-*v31], *v32 < 9u) || (v33 = *(v32 + 4)) == 0)
  {
    v37 = -1;
    goto LABEL_27;
  }

  v34 = sub_101E640(&v31[v33 + *&v31[v33]], HIDWORD(v14));
  v35 = (v34 - *v34);
  if (*v35 < 5u || (v36 = v35[2]) == 0)
  {
LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  v37 = *(v34 + v36);
LABEL_27:
  v38 = 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 3);
  v39 = (v37 + 1);
  if (v39 > v38)
  {
    sub_1064374(a6, v39 - v38);
  }

  v40 = (HIDWORD(v130) + (v130 << 6) + (v130 >> 2) + 2654435769u) ^ v130;
  v41 = (v131 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
  v42 = (v132 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
  v43 = (v133 + (v42 << 6) + (v42 >> 2) + 2654435769u) ^ v42;
  v44 = (v134 + (v43 << 6) + (v43 >> 2) + 2654435769u) ^ v43;
  v45 = (v135 + (v44 << 6) + (v44 >> 2) + 2654435769u) ^ v44;
  v46 = (v136 + (v45 << 6) + (v45 >> 2) + 2654435769u) ^ v45;
  v47 = (v137 + (v46 << 6) + (v46 >> 2) + 2654435769u) ^ v46;
  v48 = (*(*(a1 + 120) + 16) + 272 * (bswap64(v47) % **(a1 + 120)));
  v138 = &v130;
  v139 = v47;
  sub_106557C(v48, &v138, v127);
  v49 = v128;
  v50 = v127[1];
  if (v127[1] && !atomic_fetch_add(v127[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
    if (v49)
    {
      return v49 ^ 1u;
    }
  }

  else if (v49)
  {
    return v49 ^ 1u;
  }

  v128 = 0u;
  v129 = 0u;
  *v127 = 0u;
  sub_1064544(v127);
  v51 = ((*(&v129 + 1) + v129) * 0x8060180601806019) >> 64;
  v52 = (v51 + ((*(&v129 + 1) + v129 - v51) >> 1)) >> 8;
  v53 = *(v127[1] + v52) + 12 * (*(&v129 + 1) + v129 - 341 * v52);
  *v53 = v14;
  *(v53 + 8) = v37;
  __p = 0;
  v125 = 0;
  v126 = 0;
  v54 = __CFADD__(*(&v129 + 1), 1);
  v55 = ++*(&v129 + 1);
  if (v54)
  {
    goto LABEL_73;
  }

  v105 = v49;
  do
  {
    v56 = *(v127[1] + v129 / 0x155) + 12 * (v129 % 0x155);
    v57 = *(v56 + 8);
    v122 = *v56;
    v123 = v57;
    *&v129 = v129 + 1;
    *(&v129 + 1) = v55 - 1;
    if (v129 >= 0x2AA)
    {
      operator delete(*v127[1]);
      v127[1] = v127[1] + 8;
      *&v129 = v129 - 341;
    }

    v58 = v123;
    if (!sub_3A8760((*a6 + 40 * v123), &v122))
    {
      sub_10664DC((*a6 + 40 * v58), &v122);
      if (v58 != 1)
      {
        v138 = v122;
        sub_1066854(*(a1 + 24), &v138, &__p);
        v59 = __p;
        v111 = v125;
        if (__p != v125)
        {
          v108 = v58 - 1;
          do
          {
            v61 = *(a1 + 18);
            v62 = *(a1 + 16);
            v63 = *(a1 + 112);
            v64 = *(a1 + 8);
            v65 = sub_10AC56C();
            v66 = sub_394BD0();
            v67 = sub_394BD0();
            if (v66)
            {
              v68 = v109;
            }

            else
            {
              v68 = 0x7FFFFFFF;
            }

            v69 = *v112;
            if (v67)
            {
              v70 = v109;
            }

            else
            {
              v70 = 0x7FFFFFFF;
            }

            v138 = *v59;
            v139 = __PAIR64__(v65, v69);
            v140 = v68;
            v141 = v70;
            v142 = v113;
            v143 = v61;
            v144 = v62;
            v145 = 0;
            v146 = 0x7FFFFFFF;
            sub_1064990(&v138, v63, v64, &v114);
            v71 = *(a1 + 8);
            v72 = sub_FC1BE4(*(a1 + 112), v115);
            if (v119)
            {
              v73 = 0;
            }

            else
            {
              v73 = v72;
            }

            if (!v73 || (v74 = v114, v75 = v115, v76 = v120, (v77 = sub_3C0014(v71, v114, 1)) == 0) || (v78 = &v77[-*v77], *v78 < 0xFu) || !*(v78 + 7) || (v79 = &v77[*(v78 + 7) + *&v77[*(v78 + 7)]], *v79 <= HIDWORD(v74)) || (v80 = &v79[4 * HIDWORD(v74) + 4 + *&v79[4 * HIDWORD(v74) + 4]], v81 = &v80[-*v80], *v81 < 5u) || (v82 = *(v81 + 2)) == 0 || (v83 = &v80[v82 + *&v80[v82]], v84 = v75 + *(v71 + 3872) * v76, v84 >= *v83) || v83[v84 + 1] == -1)
            {
              v85 = (HIDWORD(v114) + 2654435769 + (v114 << 6) + (v114 >> 2)) ^ v114;
              v86 = (v115 + 2654435769 + (v85 << 6) + (v85 >> 2)) ^ v85;
              v87 = (v116 + 2654435769 + (v86 << 6) + (v86 >> 2)) ^ v86;
              v88 = (v117 + 2654435769 + (v87 << 6) + (v87 >> 2)) ^ v87;
              v89 = (v118 + 2654435769 + (v88 << 6) + (v88 >> 2)) ^ v88;
              v90 = (v119 + 2654435769 + (v89 << 6) + (v89 >> 2)) ^ v89;
              v91 = (v120 + 2654435769 + (v90 << 6) + (v90 >> 2)) ^ v90;
              v92 = (v121 + 2654435769 + (v91 << 6) + (v91 >> 2)) ^ v91;
              v93 = (*(*(a1 + 120) + 16) + 272 * (bswap64(v92) % **(a1 + 120)));
              v147[0] = &v114;
              v147[1] = v92;
              sub_106557C(v93, v147, &v138);
              v94 = v140;
              v95 = v139;
              if (v139 && !atomic_fetch_add((v139 + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v95->__on_zero_shared)(v95);
                std::__shared_weak_count::__release_weak(v95);
                if ((v94 & 1) == 0)
                {
LABEL_64:
                  v96 = v127[1];
                  if (v128 == v127[1])
                  {
                    v97 = 0;
                  }

                  else
                  {
                    v97 = 341 * ((v128 - v127[1]) >> 3) - 1;
                  }

                  v98 = *(&v129 + 1) + v129;
                  if (v97 == *(&v129 + 1) + v129)
                  {
                    sub_1064544(v127);
                    v96 = v127[1];
                    v98 = *(&v129 + 1) + v129;
                  }

                  v60 = v96[v98 / 0x155] + 12 * (v98 % 0x155);
                  *v60 = *v59;
                  *(v60 + 8) = v108;
                  ++*(&v129 + 1);
                }
              }

              else if ((v94 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            ++v59;
          }

          while (v59 != v111);
        }
      }
    }

    v55 = *(&v129 + 1);
  }

  while (*(&v129 + 1));
  v49 = v105;
  if (__p)
  {
    v125 = __p;
    operator delete(__p);
  }

LABEL_73:
  v99 = v127[1];
  v100 = v128;
  *(&v129 + 1) = 0;
  v101 = (v128 - v127[1]) >> 3;
  if (v101 >= 3)
  {
    do
    {
      operator delete(*v99);
      v100 = v128;
      v99 = (v127[1] + 8);
      v127[1] = v99;
      v101 = (v128 - v99) >> 3;
    }

    while (v101 > 2);
  }

  if (v101 == 1)
  {
    v102 = 170;
LABEL_81:
    *&v129 = v102;
  }

  else if (v101 == 2)
  {
    v102 = 341;
    goto LABEL_81;
  }

  if (v99 != v100)
  {
    do
    {
      v103 = *v99++;
      operator delete(v103);
    }

    while (v99 != v100);
    if (v128 != v127[1])
    {
      *&v128 = v128 + ((v127[1] - v128 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v127[0])
  {
    operator delete(v127[0]);
  }

  return v49 ^ 1u;
}